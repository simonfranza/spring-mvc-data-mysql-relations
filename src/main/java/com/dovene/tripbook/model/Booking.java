package com.dovene.tripbook.model;

import javax.persistence.*;

@Entity
public class Booking {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int idBooking;
    private String customerFullName;


    @ManyToOne
    @JoinColumn(name="tripCity")
    private Trip trip;

    public Booking() {
    }

    public int getIdBooking() {
        return idBooking;
    }

    public void setIdBooking(int idBooking) {
        this.idBooking = idBooking;
    }

    public String getCustomerFullName() {
        return customerFullName;
    }

    public void setCustomerFullName(String customerFullName) {
        this.customerFullName = customerFullName;
    }

    public Trip getTrip() {
        return trip;
    }

    public void setTrip(Trip trip) {
        this.trip = trip;
    }
}
