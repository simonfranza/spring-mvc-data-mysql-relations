package com.dovene.tripbook.controller;

import com.dovene.tripbook.model.Trip;
import com.dovene.tripbook.repository.BookingRepository;
import com.dovene.tripbook.repository.TripRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.beans.PropertyEditorSupport;

@Component
public class BookingEditor extends PropertyEditorSupport {

    private @Autowired
    TripRepository tripRepository;


    // Converts a String to a Country (when submitting form)
    @Override
    public void setAsText(String city) {
        Trip trip = tripRepository.getOne(city);
        this.setValue(trip);
    }

}