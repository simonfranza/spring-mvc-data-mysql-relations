package com.dovene.tripbook.repository;

import com.dovene.tripbook.model.Trip;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TripRepository extends JpaRepository<Trip, String> {
}
