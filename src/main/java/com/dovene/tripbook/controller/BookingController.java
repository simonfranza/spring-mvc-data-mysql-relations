package com.dovene.tripbook.controller;

import com.dovene.tripbook.model.Booking;
import com.dovene.tripbook.model.Trip;
import com.dovene.tripbook.repository.BookingRepository;
import com.dovene.tripbook.repository.TripRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/bookings")
public class BookingController {

    @Autowired
    BookingRepository bookingRepository;

    @Autowired
    TripRepository tripRepository;

    @GetMapping
    public String list(HttpSession session, Model model) {
        if (session.getAttribute("user") == null) {
            return "redirect:/accessDenied";
        }
        model.addAttribute("bookings", bookingRepository.findAll());
        return "booking/bookings";
    }

    @GetMapping("/trip/{city}")
    public String list(HttpSession session, Model model, @PathVariable("city") String city) {
        model.addAttribute("bookings", tripRepository.findTripWithBookings(city).getBookings());
        return "booking/bookings";
    }

    // Add a new trip
    @GetMapping("/create")
    public String add(Model model) {
        model.addAttribute("booking", new Booking());
        model.addAttribute("trips", tripRepository.findAll());
        return "booking/addBooking";
    }

    @PostMapping("/create")
    public String addSave(@ModelAttribute Booking booking) {
        bookingRepository.save(booking);
        return "redirect:/bookings";
    }

    @GetMapping
    @RequestMapping("/delete")
    public String delete(@RequestParam("id") Integer id) {
        bookingRepository.delete(id);
        return "redirect:/bookings";
    }

    // Edit a trip
    @GetMapping
    @RequestMapping("/edit/{id}")
    public String edit(Model model, @PathVariable("id") Integer id) {
        model.addAttribute("booking", bookingRepository.findOne(id));
        model.addAttribute("trips", tripRepository.findAll());
        return "booking/editBooking";
    }

    @PostMapping("edit/{id}")
    public String editSave(@ModelAttribute Booking booking) {
        bookingRepository.save(booking);
        return "redirect:/booking";
    }
}
