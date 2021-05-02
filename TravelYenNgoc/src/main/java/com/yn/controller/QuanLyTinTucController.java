/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.service.TinTucService;
import com.yn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author ASUS
 */
@Controller
public class QuanLyTinTucController {
    @Autowired
    private TinTucService tinhTinTucService;
    @RequestMapping("/admin/quanlytintuc")
    public String quanLyTinTuc(Model model) {
        model.addAttribute("tintuc", this.tinhTinTucService.getTinTucs());
        return "quanlytintuc";
    }

}
