package com.dovene.tripbook.controller;

import com.dovene.tripbook.model.Neighbor;
import com.dovene.tripbook.model.Service;
import com.dovene.tripbook.model.ServiceProposition;
import com.dovene.tripbook.model.ServiceRequest;
import com.dovene.tripbook.repository.NeighborRepository;
import com.dovene.tripbook.repository.ServiceRepository;
import com.dovene.tripbook.repository.ServiceRequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/services")
public class ServiceController {
	private static String VIEW_DIRECTORY = "service";

	@Autowired
	ServiceRepository serviceRepository;

	@Autowired
	NeighborRepository neighborRepository;

	@Autowired
	ServiceRequestRepository serviceRequestRepository;

	@GetMapping
	public String list(HttpSession session, Model model) {
		if (session.getAttribute("user") == null) {
			return "redirect:/accessDenied";
		}
		model.addAttribute("services", serviceRepository.findAll());

		return String.format("%s/serviceList", VIEW_DIRECTORY);
	}

	// Add a new service
	@GetMapping("/create")
	public String add(Model model) {
		model.addAttribute("service", new Service());

		return String.format("%s/addService", VIEW_DIRECTORY);
	}

	@PostMapping("/create")
	public String addSave(@ModelAttribute Service service) {
		serviceRepository.save(service);

		return "redirect:/services";
	}

	// Edit an existing service
	@GetMapping
	@RequestMapping("/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer serviceId) {
		model.addAttribute("service", serviceRepository.findOne(serviceId));
		model.addAttribute("neighbors", neighborRepository.findAll());

		return String.format("%s/editService", VIEW_DIRECTORY);
	}

	@PostMapping("edit/{id}")
	public String editSave(@ModelAttribute Service service) {
		serviceRepository.save(service);

		return "redirect:/services";
	}

	// Propose a service
	@GetMapping("/propose")
	public String propose(Model model) {
		model.addAttribute("serviceProposition", new ServiceProposition());
		model.addAttribute("services", serviceRepository.findAll());
		model.addAttribute("neighbors", neighborRepository.findAll());

		return String.format("%s/proposeService", VIEW_DIRECTORY);
	}

	@PostMapping("/propose")
	public String addSave(@ModelAttribute ServiceProposition serviceProposition) {
		Service service = serviceRepository.findOne(serviceProposition.getService().getId());
		Neighbor neighbor = neighborRepository.findOne(serviceProposition.getNeighbor().getId());

		neighbor.getProposedServices().add(service);
		neighborRepository.save(neighbor);

		return "redirect:/services";
	}

	// Propose a service
	@RequestMapping("/request/{id}")
	public String requestService(Model model, @PathVariable("id") Integer serviceId) {
		ServiceRequest serviceRequest = new ServiceRequest();
		serviceRequest.setService(serviceRepository.findOne(serviceId));

		model.addAttribute("serviceRequest", serviceRequest);
		model.addAttribute("neighbors", neighborRepository.findAll());

		return String.format("%s/requestService", VIEW_DIRECTORY);
	}

	@PostMapping("request/{id}")
	public String requestService(@ModelAttribute ServiceRequest serviceRequest) {
		serviceRequestRepository.save(serviceRequest);

		return "redirect:/services";
	}

	@GetMapping
	@RequestMapping("/delete/request/{id}")
	public String deleteRequest(@PathVariable("id") Integer requestId) {
		serviceRequestRepository.delete(requestId);

		return "redirect:/services";
	}

	@GetMapping
	@RequestMapping("/delete/proposition")
	public String deleteRequest(@RequestParam("neighborId") Integer neighborId, @RequestParam("serviceId") Integer serviceId) {
		Neighbor neighbor = neighborRepository.findOne(neighborId);
		neighbor.getProposedServices().removeIf(service -> service.getId() == serviceId);

		neighborRepository.save(neighbor);

		return "redirect:/services";
	}

	@GetMapping
	@RequestMapping("/delete")
	public String delete(@RequestParam("id") Integer id) {
		serviceRepository.delete(id);

		return "redirect:/services";
	}
}
