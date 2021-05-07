/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.utils;

import com.yn.pojo.Booking;
import com.yn.pojo.Tour;
import java.math.BigDecimal;
import java.util.Map;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
public class Utils {
    public static BigDecimal getPrice(){
        BigDecimal totalAmount = new BigDecimal(0);
        BigDecimal totalAmountGG = new BigDecimal(0);
        Booking b = new Booking();
        Tour t = new Tour();
        
        totalAmountGG = totalAmountGG.add(t.getGia().multiply(new BigDecimal(0.5)).multiply(new BigDecimal(b.getSoNguoiNhoDi())));
        
        totalAmount = totalAmount.add(t.getGia().multiply(new BigDecimal(b.getSoNguoiLonDi())).multiply(totalAmountGG));
        
        return totalAmount;
    }
}
