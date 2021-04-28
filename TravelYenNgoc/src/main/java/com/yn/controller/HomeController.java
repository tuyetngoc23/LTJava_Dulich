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
 * @author Huynh Thi Tuyet Ngoc
 */
@Controller
public class HomeController {
    
    @RequestMapping("/")
    public String index(Model model){
        return "index";
    }
//     @RequestMapping("/admin")
//    public String adindex(Model model){
//       //model.addAttribute("user", this.userService.getUser());
//        return "admin";
//    }
    
}
