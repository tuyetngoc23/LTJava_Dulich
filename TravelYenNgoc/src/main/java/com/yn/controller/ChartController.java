/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.pojo.Tour;
import com.yn.service.LoaiTourService;
import com.yn.service.TinhThanhService;

import com.yn.service.TourSevice;
import java.io.File;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author ASUS
 */
@Controller
public class ChartController {

    @Autowired
    private TourSevice tourService;
    @Autowired
    private TinhThanhService tinhThanhService;
    @Autowired
    private LoaiTourService loaiTourService;

    @RequestMapping("/admin/chart")
    public String adchart(Model model) {
        int[] myNum = {105,124,78,91,62,56,86,24,12,23,21,12,60};
        model.addAttribute("doanhthu", myNum);
        return "chart";
    }


}
