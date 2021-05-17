/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.service.BookingService;
import com.yn.service.CustormerSevice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author ASUS
 */
@Controller
public class HomeAdminController {

    @Autowired
    private CustormerSevice custormerSevice;
    
    @Autowired
    private BookingService bookingService;

    @GetMapping("/admin")
    public String adindex(Model model) {
        model.addAttribute("customer", this.custormerSevice.getCustormers());
        return "admin";
    }

}
