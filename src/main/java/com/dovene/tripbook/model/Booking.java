package com.dovene.tripbook.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Booking {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int idBooking;
    private String customerFullName;


    @ManyToOne
    @JoinColumn(name="tripCity")
    private Trip trip;
}
