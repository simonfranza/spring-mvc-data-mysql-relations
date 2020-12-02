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
public class Neighbor {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int id;

	private String firstName;
	private String lastName;
	private String address;
	private String phone;
	private String email;

	@ManyToMany
	@JoinTable(
			name = "NeighborService",
			joinColumns = @JoinColumn(name = "neighbor_id"),
			inverseJoinColumns = @JoinColumn(name = "service_id"))
	// @ManyToMany(mappedBy = "neighbors")
	private Set<Service> proposedServices;

	@OneToMany(mappedBy="neighbor")
	private List<ServiceRequest> requests = new ArrayList<>() ;
}
