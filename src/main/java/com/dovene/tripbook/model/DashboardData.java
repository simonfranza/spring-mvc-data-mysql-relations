package com.dovene.tripbook.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
public class DashboardData {
    private String tripCity;
    private Date tripDate;
    private int numberOfPassengers;
    private float totalAmount;

    public DashboardData(String tripCity, Date tripDate, int numberOfPassengers, float totalAmount) {
        this.tripCity = tripCity;
        this.tripDate = tripDate;
        this.numberOfPassengers = numberOfPassengers;
        this.totalAmount = totalAmount;
    }
}
