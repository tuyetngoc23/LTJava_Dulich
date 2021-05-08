/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.pojo.User;
import com.yn.service.UserService;
import java.io.IOException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
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
    
//    @PostMapping("/login")
//    public String loginProcess(Model model,
//            @ModelAttribute(name = "user")User user
//            ) {
////        if (result.hasErrors()) {
////            return "login";
////        }
////        UserDetails userLogin = userService.checklogin(user.getUsername(),user.getPassWord());
////        System.err.println("hello");
////        if(userLogin==null){
////            model.addAttribute("errlogin","Tên đăng nhập hoặc mật khẩu không đúng" );
////            return "login";
////        }
//////        if(userLogin.getUserrole().equals(User.Role.Customer))
//////            return "redirect:/";
//////        else
//////            return "redirect:/admin";
////       return null;
//    //}
//    }
}
