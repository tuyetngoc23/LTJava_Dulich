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
public class QuanlyTourController {

    @Autowired
    private TourSevice tourService;
    @Autowired
    private TinhThanhService tinhThanhService;
    @Autowired
    private LoaiTourService loaiTourService;

    @RequestMapping("/admin")
    public String adindex(Model model) {
        //model.addAttribute("user", this.userService.getUser());
        return "admin";
    }

    @RequestMapping("/admin/quanlytour")
    public String quanLyTour(Model model,@RequestParam(name = "kw", required = false, defaultValue = "") String kw) {
       
        model.addAttribute("tours", this.tourService.getTour(kw));
        return "quanlytour";
    }

    @GetMapping("/admin/quanlytour/themtour")
    public String index(Model model, @RequestParam(name = "tourId", defaultValue = "0") int tourId) {
        if (tourId > 0) // cập nhật
        {
            model.addAttribute("tour", this.tourService.getTourById(tourId));
        } else // thêm
        {
            model.addAttribute("tour", new Tour());
        }

        model.addAttribute("tinhthanh", this.tinhThanhService.getTinhThanh());
        model.addAttribute("loaitour", this.loaiTourService.getLoaiTour());
        return "themtour";
    }

    @PostMapping("/admin/quanlytour/themtour")
    public String themtour(Model model,
            @ModelAttribute(value = "tour") @Valid Tour tour,
            BindingResult err, HttpServletRequest request) throws IOException {
        System.out.println(tour.getId());
        if (err.hasErrors()) {
            // model.addAttribute("tour", new Tour());
            model.addAttribute("tinhthanh", this.tinhThanhService.getTinhThanh());
            model.addAttribute("loaitour", this.loaiTourService.getLoaiTour());
            return "themtour";
        }
        MultipartFile multipartFile = tour.getImgUploadFile();
        String rootPath = request.getSession().getServletContext().getRealPath("/");
            try {
                multipartFile.transferTo(new File(rootPath + "resource/assets/anhadmin/" + multipartFile.getOriginalFilename()));
            } catch (Exception e) {
                e.printStackTrace();
            }
            String img = "/admin/anhadmin/" + multipartFile.getOriginalFilename();
            tour.setImage(img);
        if (!this.tourService.addOrUpdateTour(tour)) {
            model.addAttribute("errMsg", "Hệ thóng đang có lỗi! Vui lòng quay lại sau!");
            return "themtour";
        }
        return "redirect:/admin/quanlytour";
    }

}
