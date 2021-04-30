/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.service.impl;

import com.yn.pojo.LoaiTour;
import com.yn.pojo.TinhThanh;
import com.yn.pojo.Tour;
import com.yn.repository.LoaiTourRepository;
import com.yn.repository.TinhThanhReponsitory;
import com.yn.repository.TourRepository;
import com.yn.service.LoaiTourService;
import com.yn.service.TinhThanhService;
import com.yn.service.TourSevice;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ASUS
 */
@Service
public class LoaiTourServiceImpl implements LoaiTourService{
    @Autowired
    private LoaiTourRepository loaiTourRepository;
    @Override
    public List<LoaiTour> getLoaiTour() {
         return this.loaiTourRepository.getLoaiTour();
    }
    
}
