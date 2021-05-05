/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.service.impl;

import com.yn.pojo.Booking;
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
    
}
