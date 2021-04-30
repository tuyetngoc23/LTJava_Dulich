/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.pojo.User;
import com.yn.service.UserService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Controller
public class LoginController {
    @Autowired
    private UserService userService;
    
    @GetMapping("/login")
    public String loginView(){
        return "login";
    }
    
    @PostMapping("/login")
    public String login(Model model, @ModelAttribute(name = "user") @Valid User user,
            BindingResult result){
        if(result.hasErrors())
            return "login";
        userService.loadUserByUsername(user.getUsername());
        return "redirect:/admin";
    }
}
