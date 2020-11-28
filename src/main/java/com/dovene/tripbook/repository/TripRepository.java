package com.dovene.tripbook.repository;

import com.dovene.tripbook.model.Booking;
import com.dovene.tripbook.model.Trip;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TripRepository extends JpaRepository<Trip, String> {
    @Query("SELECT t FROM Trip t JOIN FETCH t.bookings WHERE t.city = (:city)")
    Trip findTripWithBookings(@Param("city") String city);
}
