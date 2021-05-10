/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;


import com.yn.service.BookingService;

import com.yn.service.TinhThanhService;

import com.yn.service.TourSevice;
import java.math.BigDecimal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


/**
 *
 * @author ASUS
 */
@Controller
public class ChartController {

    @Autowired
    private TourSevice tourService;
    @Autowired
    private TinhThanhService tinhThanhService;
    @Autowired
    private BookingService bookingService;

    @RequestMapping("/admin/chart")
    public String adchart(Model model ,@RequestParam(name = "nam", required = false, defaultValue = "2020") int nam ){
        BigDecimal[] myNum = new BigDecimal[13];
        int i;
        for (i = 0; i < myNum.length; i++)
            myNum[i] = this.bookingService.getDoanhThu(i, nam);
  
        Long[] sotour = new Long[13];
        for (i = 0; i < sotour.length; i++){
            sotour[i] = this.bookingService.getTourDaDat(i, nam);
            System.out.println(sotour[i]);
        }
        model.addAttribute("doanhthu", myNum);
        model.addAttribute("sotour", sotour);
        return "chart";
    }


}
