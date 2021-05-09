/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.pojo.User;
import com.yn.service.UserService;
import com.yn.validator.WebAppValidator;
import java.io.IOException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Controller
public class DangKiController {

    @Autowired
    private UserService userService;

    @Autowired
    private WebAppValidator userValidator;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.setValidator(userValidator);
    }

    @GetMapping("/dangki")
    public String dangkiView(Model model) {
        model.addAttribute("user", new User());
        return "dangki";
    }
    @PostMapping(value = "/dangki")
    public String registerProcess(Model model,
            @ModelAttribute(name = "user") @Valid User user,
            BindingResult result)throws IOException {
        if (result.hasErrors()) {
            return "dangki";
        }
        if(userService.checkUsername(user.getUsername())){
            model.addAttribute("mesusername","Đã tồn tại tên đăng nhập này!" );
            return "dangki";
        }
        System.out.println("hello");
        userService.addUser(user);
        return "redirect:/login";
    }
    
    @GetMapping("/andmin/quanlynhanvien/themnv")
    public String dangkiNvView(Model model) {
        model.addAttribute("user", new User());
        return "themnhanvien";
    }
    @PostMapping(value = "/andmin/quanlynhanvien/themnv")
    public String registerNvProcess(Model model,
            @ModelAttribute(name = "user") @Valid User user,
            BindingResult result)throws IOException {
        if (result.hasErrors()) {
            return "themnhanvien";
        }
        if(userService.checkUsername(user.getUsername())){
            model.addAttribute("mesusername","Đã tồn tại tên đăng nhập này!" );
            return "themnhanvien";
        }
        userService.addUserNV(user);
        return "redirect:/admin/quanlynhanvien";
    }
}
