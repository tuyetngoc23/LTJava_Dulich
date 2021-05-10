/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.pojo.Booking;
import com.yn.pojo.Tour;
import com.yn.service.BookingService;
import com.yn.service.TourSevice;
import java.math.BigDecimal;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Controller
public class BookingController {

    @Autowired
    private TourSevice tourSevice;

    @Autowired
    private BookingService bookingService;

    @GetMapping("/booking")
    public String bookingView(Model model, @RequestParam(name = "tourId", defaultValue = "0") int tourid) {
        model.addAttribute("booking", new Booking());
        if (tourid > 0) // cập nhật
        {
              model.addAttribute("thanhcong", "ok");
            model.addAttribute("tour", this.tourSevice.getTourById(tourid));
        }
        return "booking";
    }
    @GetMapping("/booking/thanhcong")
    public String bookingokView(){
       
        return "bookingoke";
    }

    @PostMapping("/booking")
    public String booking(Model model,
            @ModelAttribute(value = "booking") @Valid Booking booking,
            BindingResult err, @RequestParam(name = "tourId", defaultValue = "0") int touri) {
        Tour tourdangco = this.tourSevice.getTourById(touri);
          model.addAttribute("thanhcong", "ok");
        booking.setTour(tourdangco);
        if (err.hasErrors()) {
            model.addAttribute("tour", this.tourSevice.getTourById(touri));
            System.out.println(err);
            return "booking";
        }
        int tongsonguoidi = booking.getSoNguoiLonDi() + booking.getSoNguoiNhoDi();
        long songuoidukiendat = (long) tongsonguoidi + this.bookingService.getSoLuongTourDatDat(touri);
        
        if (songuoidukiendat >= (long) tourdangco.getGioiHanNDi()) {
            model.addAttribute("loisoluong", "Xin lỗi bạn đã đặt quá số lượng ngườ!!");
             return "booking";
        }
        BigDecimal songuoinho= new BigDecimal(booking.getSoNguoiNhoDi());
        BigDecimal songuoilon =  new BigDecimal(booking.getSoNguoiLonDi());
        BigDecimal giamgia =  new BigDecimal(0.5);
        BigDecimal tienguoinhoGiamGia= tourdangco.getGia().multiply(giamgia);
        BigDecimal tienguoinho = tienguoinhoGiamGia.multiply(songuoinho);
        BigDecimal tienguoilon = tourdangco.getGia().multiply(songuoilon);
        BigDecimal tong = tienguoinho.add(tienguoilon);
        booking.setTotalMoney(tong);
        this.bookingService.addBooking(booking);
     
        return "redirect:/booking/thanhcong";
    }
}
