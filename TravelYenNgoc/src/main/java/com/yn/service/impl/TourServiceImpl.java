/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.service.impl;

import com.yn.pojo.Tour;
import com.yn.repository.TourRepository;
import com.yn.service.TourSevice;
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
    public List<Tour> getTour() {
         return this.tourRepository.getTour();
    }
    
}
