/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.pojo.TinhThanh;
import com.yn.service.TinhThanhService;
import com.yn.service.TourSevice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Controller
public class HomeController {
    @Autowired
    private TourSevice tourSevice;
    @Autowired
    private TinhThanhService tinhThanhService;
    
    @RequestMapping("/")
    public String index(Model model){
        model.addAttribute("tinhthanh", this.tinhThanhService.getTinhThanh());
//        model.addAttribute("tinhthanh", this.tourSevice.getTour(t));
        model.addAttribute("tour", this.tourSevice.getTour());
        return "index";
    }
    @RequestMapping("/tourdetails")
    public String tourDetails(Model model,
            @RequestParam(name = "kw", required = false, defaultValue = "") String kw){
        model.addAttribute("tour", this.tourSevice.getTour(kw));
        return "tourdetails";
    }
    
    @RequestMapping("/booking")
    public String booking(Model model){
        return "booking";
    }
    @RequestMapping("/news")
    public String news(Model model){
        return "news";
    }

    
}
