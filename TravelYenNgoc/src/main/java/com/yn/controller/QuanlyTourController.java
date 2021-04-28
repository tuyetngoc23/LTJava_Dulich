/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.repository.UserRepository;
import com.yn.service.TourSevice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author ASUS
 */
@Controller
public class QuanlyTourController {
    @Autowired
    private TourSevice tourService;
    @RequestMapping("/admin")
    public String adindex(Model model){
       //model.addAttribute("user", this.userService.getUser());
        return "admin";
    }
    
    @RequestMapping("/admin/quanlytour")
    public String quanLyTour(Model model){
        model.addAttribute("tours", this.tourService.getTour());
        return "quanlytour";
    }
    @RequestMapping("/admin/themtour")
    public String themtour(Model model){
        model.addAttribute("tours", this.tourService.getTour());
        return "themtour";
    }
}
