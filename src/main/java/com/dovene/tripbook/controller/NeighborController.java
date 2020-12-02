package com.dovene.tripbook.controller;

import com.dovene.tripbook.model.Neighbor;
import com.dovene.tripbook.repository.NeighborRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/neighbors")
public class NeighborController {
	private static String VIEW_DIRECTORY = "neighbor";
	@Autowired
	NeighborRepository neighborRepository;

	@GetMapping
	public String list(HttpSession session, Model model) {
		if (session.getAttribute("user") == null) {
			return "redirect:/accessDenied";
		}
		model.addAttribute("neighbors", neighborRepository.findAll());

		return String.format("%s/neighborList", VIEW_DIRECTORY);
	}


	// Add a new neighbor
	@GetMapping("/create")
	public String add(Model model) {
		model.addAttribute("neighbor", new Neighbor());

		return String.format("%s/addNeighbor", VIEW_DIRECTORY);
	}

	@PostMapping("/create")
	public String addSave(@ModelAttribute Neighbor neighbor) {
		neighborRepository.save(neighbor);

		return "redirect:/neighbors";
	}

	// Edit an existing neighbor
	@GetMapping
	@RequestMapping("/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer neighborId) {
		model.addAttribute("neighbor", neighborRepository.findOne(neighborId));

		return String.format("%s/editNeighbor", VIEW_DIRECTORY);
	}

	@PostMapping("edit/{id}")
	public String editSave(@ModelAttribute Neighbor neighbor) {
		neighborRepository.save(neighbor);

		return "redirect:/neighbors";
	}

	@GetMapping
	@RequestMapping("/delete")
	public String delete(@RequestParam("id") Integer id) {
		neighborRepository.delete(id);

		return "redirect:/neighbors";
	}

}