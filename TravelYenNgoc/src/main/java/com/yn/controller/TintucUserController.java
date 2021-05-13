/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.pojo.BinhLuan;
import com.yn.pojo.Booking;
import com.yn.pojo.Customer;
import com.yn.pojo.Thich;
import com.yn.pojo.TinTuc;
import com.yn.pojo.TinhThanh;
import com.yn.pojo.Tour;
import com.yn.pojo.User;
import com.yn.repository.BookingRepository;
import com.yn.service.BookingService;
import com.yn.service.TinTucService;
import com.yn.service.TinhThanhService;
import com.yn.service.TourSevice;
import com.yn.service.UserService;
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

@Controller
public class TintucUserController {

    @Autowired
    private TinTucService tinTucService;


    @RequestMapping("/news")
    public String news(Model model, @RequestParam(name = "kw", required = false, defaultValue = "") String kw) {
        model.addAttribute("tintuc", this.tinTucService.getTinTucs(kw));

        return "news";
    }

    @GetMapping("/news/newsdetails/")
    public String index(Model model, @RequestParam(name = "tintucId", defaultValue = "0") int tintucId) {
        if (tintucId > 0) // cập nhật
        {
            model.addAttribute("tintuc", this.tinTucService.getTinTucById(tintucId));
            model.addAttribute("binhluan", this.tinTucService.getBinhLuans(tintucId));
            Thich thich = this.tinTucService.getthich(tintucId);
            model.addAttribute("thich", thich);
            model.addAttribute("binhluanuser", new BinhLuan());
        } else // thêm
        {

        }

        return "newsdetails";
    }

    @PostMapping("/news/newsdetails/")
    public String themtour(Model model,
            @ModelAttribute(value = "binhluanuser") @Valid BinhLuan binhLuan,
            BindingResult err, HttpServletRequest request, @RequestParam(name = "tintucId", defaultValue = "0") int tintucId) throws IOException {
        if (err.hasErrors()) {

            return "newsdetails";
        }
        Thich thich = this.tinTucService.getthich(tintucId);
        model.addAttribute("thich", thich);
        model.addAttribute("binhluanuser", new BinhLuan());
        TinTuc tindangco = this.tinTucService.getTinTucById(tintucId);
        binhLuan.setTintuc(tindangco);
        this.tinTucService.addBinhLuan(binhLuan);
        model.addAttribute("tintuc", this.tinTucService.getTinTucById(tintucId));
        model.addAttribute("binhluan", this.tinTucService.getBinhLuans(tintucId));
        model.addAttribute("binhluanuser", new BinhLuan());
        return "newsdetails";
    }

}
