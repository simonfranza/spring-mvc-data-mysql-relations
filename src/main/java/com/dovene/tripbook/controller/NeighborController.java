package com.dovene.tripbook.controller;

import com.dovene.tripbook.repository.NeighborRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/neighbors")
public class NeighborController {
	@Autowired
	NeighborRepository neighborRepository;

	@GetMapping
	public String list(HttpSession session, Model model) {
		if (session.getAttribute("user") == null) {
			return "redirect:/accessDenied";
		}
		model.addAttribute("neighbors", neighborRepository.findAll());
		return "neighbor/neighborList";
	}

}