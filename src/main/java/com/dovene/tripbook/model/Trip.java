package com.dovene.tripbook.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import java.util.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Trip {

    @Id
    private String city;
    private Float price;
    private Date date;

    @OneToMany(mappedBy="trip")
    private List<Booking> bookings = new ArrayList<>() ;
}
