/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.service.TinhThanhService;
import com.yn.service.TourSevice;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Controller
public class HomeController {

    @Autowired
    private TourSevice tourSevice;
    @Autowired
    private TinhThanhService tinhThanhService;

//    @Autowired
//    private TinTucService tinTucService;

    @RequestMapping("/")
     public String index(Model model, @RequestParam(name = "ditu", required = false, defaultValue = "0") String ditu,
            @RequestParam(name = "diden", required = false, defaultValue = "0") String diden, @RequestParam(name = "ngaydi", required = false, defaultValue = "2000-1-1") String ngaydi,
            @RequestParam(name = "ngayve", required = false, defaultValue = "2000-1-1") String ngayve,
            @RequestParam(name = "timgiatu", required = false, defaultValue = "0") int giatu, @RequestParam(name = "timgiaden", required = false, defaultValue = "0") int giaden)
             throws ParseException {
        SimpleDateFormat format1 = new SimpleDateFormat("MM/dd/yyyy");
        SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
        if (!diden.equals("0")) {
            int dituid = Integer.parseInt(ditu);
            int didenid = Integer.parseInt(diden);
            if (!ngaydi.equals("2000-1-1") || !ngayve.equals("2000-1-1")) {
                String ngaydiDate = format2.format(format1.parse(ngaydi));
                String ngayveDate = format2.format(format1.parse(ngayve));
                model.addAttribute("tour", this.tourSevice.findTour(dituid, didenid, ngaydiDate, ngayveDate));
            }
             model.addAttribute("tour", this.tourSevice.findTour(dituid, didenid, ngaydi, ngayve));
        }else{
           model.addAttribute("tour", this.tourSevice.getTour());
        }
       
        if(giatu!=0||giaden!=0){
            BigDecimal giatusql = new BigDecimal(giatu);
            BigDecimal giadensql = new BigDecimal(giaden);
            model.addAttribute("tour", this.tourSevice.getTourBygias(giatusql, giadensql));
        
        }
     
        model.addAttribute("tinhthanhs", this.tinhThanhService.getTinhThanh());
        return "index";
    }

    @RequestMapping("/tourdetails")
    public String tourDetails(Model model,
           @RequestParam(name = "tourId", defaultValue = "0") int tourId) {
        model.addAttribute("tour", this.tourSevice.getTourById(tourId));
        return "tourdetails";
    }
    
    @RequestMapping("/dstour")
    public String tourDs(Model model) {
        model.addAttribute("tour", this.tourSevice.getTour());
        return "dstour";
    }

    
}
