/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.service.TourSevice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Controller
public class HomeController {
    @Autowired
    private TourSevice tourSevice;
    
    @RequestMapping("/")
    public String index(Model model){
        model.addAttribute("tinhthanh", this.tourSevice.getTinhThanh());
        return "index";
    }
    @RequestMapping("/tourdetails")
    public String tourDetails(Model model){
        model.addAttribute("tour", this.tourSevice.getTour());
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
    
//     @RequestMapping("/admin")
//    public String adindex(Model model){
//       //model.addAttribute("user", this.userService.getUser());
//        return "admin";
//    }
    
}
