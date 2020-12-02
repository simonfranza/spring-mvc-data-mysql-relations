package com.dovene.tripbook.repository;

import com.dovene.tripbook.model.Neighbor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NeighborRepository extends JpaRepository<Neighbor, Integer> {
}
