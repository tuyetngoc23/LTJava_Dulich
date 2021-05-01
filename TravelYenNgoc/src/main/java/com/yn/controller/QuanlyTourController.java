/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.pojo.MyFile;
import com.yn.pojo.Tour;
import com.yn.repository.UserRepository;
import com.yn.service.LoaiTourService;
import com.yn.service.TinhThanhService;

import com.yn.service.TourSevice;
import java.io.File;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
    public String quanLyTour(Model model) {
        model.addAttribute("tours", this.tourService.getTour());
        return "quanlytour";
    }

    @RequestMapping("/admin/quanlytour/themtour")
    public String index(Model model) {
        model.addAttribute("myFile", new MyFile());
        model.addAttribute("tour", new Tour());
        model.addAttribute("tinhthanh", this.tinhThanhService.getTinhThanh());
        model.addAttribute("loaitour", this.loaiTourService.getLoaiTour());
        return "themtour";
    }
//
//    @RequestMapping(value = "/admin/themtour", method = RequestMethod.POST)
//    public String themtour(Model model, MyFile myFile, HttpServletRequest request) {
//        try {
//            MultipartFile multipartFile = myFile.getMultipartFile();
//            String s1 = request.getSession().getServletContext().getRealPath("/");
//            int index1 = s1.indexOf("\\target\\SpringMVCUploadFile-0.0.1-SNAPSHOT");
//            String current = s1.substring(0, index1) + "\\src\\main\\webapp\\resources\\update\\";
//            File upload = new File(current, multipartFile.getOriginalFilename());
//            multipartFile.transferTo(upload);
//            System.out.println(current);
//        } catch (Exception e) {
//            e.printStackTrace();
//            return "themtour";
//        }
//        return "themtour";
//    }

    @PostMapping("/admin/quanlytour/themtour")
    public String themtour(Model model,
            @ModelAttribute(value = "tour") @Valid Tour tour, @ModelAttribute(value = "myFile") @Valid MyFile myFile,
            BindingResult err, HttpServletRequest request) throws IOException {
        System.out.println("helllo1");
        if (err.hasErrors()) {
            return "themtour";
        }
        MultipartFile multipartFile = tour.getImgUploadFile();
        String rootPath = request.getSession().getServletContext().getRealPath("/");
   
        try {
            multipartFile.transferTo(new File(rootPath + "resource/assets/anhadmin/"+ tour.getId()+ ".png"));
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
        String img = "/admin/anhadmin/" +tour.getId()+ ".png";
        tour.setImage(img);
        if (!this.tourService.addOrUpdateTour(tour)) {
            model.addAttribute("errMsg", "Hệ thóng đang có lỗi! Vui lòng quay lại sau!");
            return "themtour";
        }

        return "redirect:/admin/quanlytour";
    }

}
