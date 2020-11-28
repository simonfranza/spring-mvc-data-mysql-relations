package com.dovene.tripbook.service;

import com.dovene.tripbook.model.DashboardData;
import com.dovene.tripbook.model.Trip;
import com.dovene.tripbook.repository.TripRepository;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

@Service
@Transactional
public class DashboardService {

    @Autowired
    TripRepository tripRepository;

    public List<DashboardData> getTripsReportData() {
        List<Trip> trips = tripRepository.findAll();
        List<DashboardData> dashboardDataList = trips.stream().map(trip -> {
            DashboardData dashboardData = new DashboardData();
            dashboardData.setTripCity(trip.getCity());
            dashboardData.setTripDate(trip.getDate());
            dashboardData.setNumberOfPassengers(tripRepository.findTripWithBookings(trip.getCity()).getBookings().size());
            dashboardData.setTotalAmount(tripRepository.findTripWithBookings(trip.getCity()).getBookings().size() * trip.getPrice());
            return dashboardData;
        }).collect(Collectors.toList());
        return dashboardDataList;
    }

}
