/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.service.impl;


import com.yn.pojo.TinhThanh;
import com.yn.pojo.Tour;
import com.yn.repository.TourRepository;
import com.yn.service.TourSevice;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ASUS
 */
@Service
public class TourServiceImpl implements TourSevice{
    @Autowired
    private TourRepository tourRepository;
    @Override
    public List<Tour> getTour(String kw) {
         return this.tourRepository.getTour(kw);
    }
    public boolean addOrUpdateTour(Tour tour) {
         return this.tourRepository.addOrUpdateTour(tour);
    }

    @Override
    public Tour getTourById(int i) {
        return  this.tourRepository.getTourById(i);
    }

    @Override
    public boolean deleteTour(int i) {
        return  this.tourRepository.deleteTour(i);
    }

    @Override
    public List<Tour> getTour() {
        return this.tourRepository.getTour();
    }



    @Override
     public List<Tour> findTour(int ditu, int diden, String ngaydiDate, String ngayve) {
        return this.tourRepository.findTour(ditu,diden,ngaydiDate,ngayve);
    }

    @Override
    public List<Tour> getTourBygias(BigDecimal bd, BigDecimal bd1) {
        return this.tourRepository.getTourBygias(bd, bd1);
    }

}
