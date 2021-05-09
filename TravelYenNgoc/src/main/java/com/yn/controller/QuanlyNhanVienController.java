/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.service.CustormerSevice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QuanlyNhanVienController {

    @Autowired
    private CustormerSevice custormerSevice;

    @RequestMapping("/admin/quanlynhanvien")
    public String quanLyKhangHang(Model model) {
        model.addAttribute("nhanvien", this.custormerSevice.getEmloEmployees());
        return "quanlynhanvien";
    }

}
