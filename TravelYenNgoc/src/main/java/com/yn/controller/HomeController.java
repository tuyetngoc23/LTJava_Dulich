/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.pojo.BinhLuan;
import com.yn.pojo.Booking;
import com.yn.pojo.TinTuc;
import com.yn.pojo.TinhThanh;
import com.yn.pojo.Tour;
import com.yn.repository.BookingRepository;
import com.yn.service.BookingService;
import com.yn.service.TinTucService;
import com.yn.service.TinhThanhService;
import com.yn.service.TourSevice;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
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

    @Autowired
    private TinTucService tinTucService;

    @RequestMapping("/")
<<<<<<< .mine
    public String index(Model model, @RequestParam(name = "tt",required = false) String t,
            @RequestParam(name = "n",required = false) String n){
        List<Tour> tours;
        tours = t == null || t.length() == 0 ? tourSevice.getTour():tourSevice.findTour(Integer.parseInt(t));

























=======
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
        
        }else{
            model.addAttribute("tour", this.tourSevice.getTour());
        }
     
>>>>>>> .theirs
        model.addAttribute("tinhthanhs", this.tinhThanhService.getTinhThanh());
<<<<<<< .mine
        model.addAttribute("tour", tours);
=======

>>>>>>> .theirs
        return "index";
    }

    @RequestMapping("/tourdetails")
    public String tourDetails(Model model,
            @RequestParam(name = "kw", required = false, defaultValue = "") String kw) {
        model.addAttribute("tour", this.tourSevice.getTour(kw));
        return "tourdetails";
    }

    @RequestMapping("/news")
    public String news(Model model, @RequestParam(name = "kw", required = false, defaultValue = "") String kw) {
        model.addAttribute("tintuc", this.tinTucService.getTinTucs(kw));
        return "news";
    }

    @GetMapping("/news/newsdetails")
    public String newDetails(Model model, @RequestParam(name = "tintucId", defaultValue = "0") int tintucId) {
        if (tintucId > 0) // cập nhật
        {
            model.addAttribute("tintuc", this.tinTucService.getTinTucById(tintucId));
//            model.addAttribute("binhluan", this.tinTucService.getBinhLuans(tintucId));
        } else {

        }

        return "newsdetails";
    }
    

}
