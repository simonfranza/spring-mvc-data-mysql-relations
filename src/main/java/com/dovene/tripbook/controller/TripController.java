package com.dovene.tripbook.controller;


import com.dovene.tripbook.model.Trip;
import com.dovene.tripbook.repository.TripRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/trips")
public class TripController {

    @Autowired
    TripRepository tripRepository;

    @GetMapping
    public String list(HttpSession session, Model model) {
        if (session.getAttribute("user") == null) {
            return "redirect:/accessDenied";
        }
        model.addAttribute("trips", tripRepository.findAll());
        return "trips/trips";
    }

    // Add a new trip
    @GetMapping("/create")
    public String add(Model model) {
        model.addAttribute("trip", new Trip());
        return "trips/addTrip";
    }

    @PostMapping("/create")
    public String addSave(@ModelAttribute Trip trip) {
        tripRepository.save(trip);
        return "redirect:/trips";
    }

    // Edit a trip
    @GetMapping
    @RequestMapping("/edit/{city}")
    public String edit(Model model, @PathVariable("city") String city) {
        model.addAttribute("trip", tripRepository.findOne(city));
        return "trips/editTrip";
    }

    @PostMapping("edit/{city}")
    public String editSave(@ModelAttribute Trip trip) {
        tripRepository.save(trip);
        return "redirect:/trips";
    }

    // Delete a  trip
    @GetMapping
    @RequestMapping("/delete")
    public String delete(Model model, @RequestParam("city") String city) {
        tripRepository.delete(city);
        return "redirect:/trips";
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        sdf.setLenient(true);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
    }
}
