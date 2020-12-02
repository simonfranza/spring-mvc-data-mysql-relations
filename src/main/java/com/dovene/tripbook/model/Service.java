package com.dovene.tripbook.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Service {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String label;

	@ManyToMany(mappedBy = "proposedServices")
	private Set<Neighbor> neighbors;

	@OneToMany(mappedBy="service")
	private List<ServiceRequest> requests = new ArrayList<>() ;
}
