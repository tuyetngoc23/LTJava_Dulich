/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author ASUS
 */
@Controller
public class QuanlyTourController {
    @RequestMapping("/admin/quanlytour")
    public String quanLyTour(Model model){
       //model.addAttribute("user", this.userService.getUser());
        return "quanlytour";
    }
}
