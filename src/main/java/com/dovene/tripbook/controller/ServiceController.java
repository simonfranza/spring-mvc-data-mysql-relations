package com.dovene.tripbook.controller;

import com.dovene.tripbook.model.Neighbor;
import com.dovene.tripbook.model.Service;
import com.dovene.tripbook.repository.ServiceRepository;
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

	@GetMapping
	public String list(HttpSession session, Model model) {
		if (session.getAttribute("user") == null) {
			return "redirect:/accessDenied";
		}
		model.addAttribute("services", serviceRepository.findAll());

		return String.format("%s/serviceList", VIEW_DIRECTORY);
	}

	// Add a new neighbor
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

	// Edit an existing neighbor
	@GetMapping
	@RequestMapping("/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer serviceId) {
		model.addAttribute("service", serviceRepository.findOne(serviceId));

		return String.format("%s/editService", VIEW_DIRECTORY);
	}

	@PostMapping("edit/{id}")
	public String editSave(@ModelAttribute Service service) {
		serviceRepository.save(service);

		return "redirect:/services";
	}

	@GetMapping
	@RequestMapping("/delete")
	public String delete(@RequestParam("id") Integer id) {
		serviceRepository.delete(id);

		return "redirect:/services";
	}
}
