package com.dovene.tripbook.model;

import java.util.Date;

public class DashboardData {
    private String tripCity;
    private Date tripDate;
    private int numberOfPassengers;
    private float totalAmount;

    public DashboardData() {
    }

    public DashboardData(String tripCity, Date tripDate, int numberOfPassengers, float totalAmount) {
        this.tripCity = tripCity;
        this.tripDate = tripDate;
        this.numberOfPassengers = numberOfPassengers;
        this.totalAmount = totalAmount;
    }

    public String getTripCity() {
        return tripCity;
    }

    public void setTripCity(String tripCity) {
        this.tripCity = tripCity;
    }

    public Date getTripDate() {
        return tripDate;
    }

    public void setTripDate(Date tripDate) {
        this.tripDate = tripDate;
    }

    public int getNumberOfPassengers() {
        return numberOfPassengers;
    }

    public void setNumberOfPassengers(int numberOfPassengers) {
        this.numberOfPassengers = numberOfPassengers;
    }

    public float getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(float totalAmount) {
        this.totalAmount = totalAmount;
    }
}
