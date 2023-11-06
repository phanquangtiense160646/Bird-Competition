/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.location;

/**
 *
 * @author admin
 */
public class LocationDTO {
    private int locationId;
    private String location;
    private String linkMap;

    public LocationDTO() {
    }

    public int getLocationId() {
        return locationId;
    }

    public void setLocationId(int locationId) {
        this.locationId = locationId;
    }

    public LocationDTO(String location, String linkMap) {
        this.location = location;
        this.linkMap = linkMap;
    }

    public LocationDTO(String location) {
        this.location = location;
    }

    public LocationDTO(int locationId, String location, String linkMap) {
        this.locationId = locationId;
        this.location = location;
        this.linkMap = linkMap;
    }
    
 

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getLinkMap() {
        return linkMap;
    }

    public void setLinkMap(String linkMap) {
        this.linkMap = linkMap;
    }
    
    
}
