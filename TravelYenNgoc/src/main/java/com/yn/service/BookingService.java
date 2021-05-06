/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.service;

import com.yn.pojo.Booking;
import java.math.BigDecimal;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
public interface BookingService {
    void addBooking(Booking b);
    BigDecimal getDoanhThu(int thang, int nam);
}
