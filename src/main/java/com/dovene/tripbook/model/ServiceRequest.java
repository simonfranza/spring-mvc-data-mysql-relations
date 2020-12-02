package com.dovene.tripbook.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class ServiceRequest {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@ManyToOne
	@JoinColumn(name="requestedServices")
	private Neighbor neighbor;

	@ManyToOne
	@JoinColumn(name="requests")
	private Service service;

	private Date date;

}
