/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.service.impl;

import com.yn.pojo.Booking;
import com.yn.pojo.Tour;
import com.yn.repository.BookingRepository;
import com.yn.repository.LoaiTourRepository;
import com.yn.service.BookingService;
import java.math.BigDecimal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Service
public class BookingServiceImpl implements BookingService{
    
    @Autowired
    private BookingRepository bookingRepository;
    
    @Override
    @Transactional
    public void addBooking(Booking b) {
        this.bookingRepository.addBooking(b);
    }

    @Override
    @Transactional
    public BigDecimal getDoanhThu(int thang, int nam) {
        return this.bookingRepository.getDoanhThu(thang, nam);
        
    }

    @Override
    @Transactional
    public BigDecimal getPrice(Tour tour, Booking bkng) {
        return this.bookingRepository.getPrice(tour, bkng); 
//??? viết gì đây sao lạp gọi lặp lại;ok chưa//sorry, hơi ngáo
//để chạy thử coi soakook
    }

    @Override
    @Transactional
    public Long getTourDaDat(int i, int i1) {
        return this.bookingRepository.getTourDaDat(i, i1);
    }
    
    
 
    
}
