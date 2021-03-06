package com.dovene.tripbook.repository;

import com.dovene.tripbook.model.Booking;
import com.dovene.tripbook.model.Trip;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Integer> {
}
