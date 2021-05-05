/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.pojo.TinhThanh;
import com.yn.pojo.Tour;
import com.yn.service.TinhThanhService;
import com.yn.service.TourSevice;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
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
    public String index(Model model, @RequestParam(name = "tt",required = false) String t,
            @RequestParam(name = "n",required = false) String n){
        List<Tour> tours;
//        List<Tour> tours1;
        tours = t == null || t.length() == 0 ? tourSevice.getTour():tourSevice.findTour(Integer.parseInt(t));
//        tours1 = n == null || n.length() == 0 ? tourSevice.getTour():tourSevice.findTourForDate(n);

//        System.out.println("kw: " + t);
        model.addAttribute("tinhthanhs", this.tinhThanhService.getTinhThanh());
        model.addAttribute("tour", tours);//chỗ này get all hả alo
//        model.addAttribute("tour", tours1);
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
        model.addAttribute("tour", this.tourSevice.getTour());
        return "booking";
    }
    @RequestMapping("/news")
    public String news(Model model){
        return "news";
    }

    
}
