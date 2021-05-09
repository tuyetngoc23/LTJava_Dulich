/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.pojo.BinhLuan;
import com.yn.pojo.Booking;
import com.yn.pojo.TinhThanh;
import com.yn.pojo.Tour;
import com.yn.repository.BookingRepository;
import com.yn.service.BookingService;
import com.yn.service.TinTucService;
import com.yn.service.TinhThanhService;
import com.yn.service.TourSevice;
import com.yn.utils.Utils;
import java.util.Arrays;
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
    private BookingService bookingService;
    @Autowired
    private TinTucService tinTucService;
    
    @RequestMapping("/")
    public String index(Model model, @RequestParam(name = "tt",required = false) String t,
            @RequestParam(name = "n",required = false) String n){
        List<Tour> tours;
//        List<Tour> tours1;
        tours = t == null || t.length() == 0 ? tourSevice.getTour():tourSevice.findTour(Integer.parseInt(t));
//        tours1 = n == null || n.length() == 0 ? tourSevice.getTour():tourSevice.findTourForDate(n);

//        System.out.println("kw: " + t);
        model.addAttribute("tinhthanhs", this.tinhThanhService.getTinhThanh());
        model.addAttribute("tour", tours);//chỗ này get all hả alo
//        model.addAttribute("tour", tours1);
        return "index";
    }
    @RequestMapping("/tourdetails") 
    public String tourDetails(Model model,
            @RequestParam(name = "kw", required = false, defaultValue = "") String kw){
        model.addAttribute("tour", this.tourSevice.getTour(kw));
        return "tourdetails";
    }
    @GetMapping("/booking")
    public String bookingView(Model model){
        model.addAttribute("tour", this.tourSevice.getTour());
        model.addAttribute("booking", new Booking());
        return "booking";
    }
   
    @PostMapping("/booking")
    public String booking(Model model, @ModelAttribute(value = "booking")
    @Valid Booking booking, BindingResult err){
        if(err.hasErrors()){
            model.addAttribute("errMsg", "Hệ thóng đang có lỗi! Vui lòng quay lại sau!");
        }else{
            
            bookingService.addBooking(booking);
        }
        return "booking";
    }
    
    
    @RequestMapping("/news")
    public String news(Model model,@RequestParam(name = "kw", required = false, defaultValue = "") String kw) {
        //alu viết lại hàm lấy tín đr á tức hả 
        model.addAttribute("tintuc", this.tinTucService.getTinTucs(kw));
        return "news";
    }
    
    @GetMapping("/news/newsdetails")
    public String newDetails(Model model, @RequestParam(name = "tintucId", defaultValue = "0") int tintucId) {
//        model.addAttribute("binhluan", new BinhLuan());
        if (tintucId > 0) // cập nhật
        {
            model.addAttribute("tintuc", this.tinTucService.getTinTucById(tintucId));
            model.addAttribute("binhluan", this.tinTucService.getBinhLuans(tintucId));
        } else // thêm
        {
//            model.addAttribute("tintuc", new TinTuc());
        }

        return "newsdetails";
    }

}
