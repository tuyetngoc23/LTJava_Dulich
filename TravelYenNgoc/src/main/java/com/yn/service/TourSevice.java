/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.service;
import com.yn.pojo.Tour;
import java.util.List;

/**
 *
 * @author ASUS
 */
public interface TourSevice {
    List<Tour> getTour();
    boolean addOrUpdateTour(Tour tour);
    Tour getTourById(int tourId);
   boolean deleteTour(int tourId);
}
