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
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Controller
public class TintucUserController {

    @Autowired
    private TourSevice tourSevice;
    @Autowired
    private TinhThanhService tinhThanhService;

    @Autowired
    private TinTucService tinTucService;

    @RequestMapping("/news")
    public String news(Model model, @RequestParam(name = "kw", required = false, defaultValue = "") String kw) {
        model.addAttribute("tintuc", this.tinTucService.getTinTucs(kw));
        return "news";
    }

//    @ResponseStatus(HttpStatus.OK)
//    @RequestMapping("/news/newsdetails/")
//    public String thembinhluan(Model model, @RequestParam(name = "tintucId", required = false, defaultValue = "0") int tintucId,
//            @RequestParam(name = "nd", required = false, defaultValue = "") String noidung) {
//        if (tintucId > 0) // cập nhật
//        {
//            model.addAttribute("tintuc", this.tinTucService.getTinTucById(tintucId));
//            model.addAttribute("binhluan", this.tinTucService.getBinhLuans(tintucId));
//            BinhLuan binhLuan = new BinhLuan();
//            binhLuan.setNoiDung(noidung);
//            TinTuc tindangco = this.tinTucService.getTinTucById(tintucId);
//            binhLuan.setTintucId(tindangco);
//            this.tinTucService.addBinhLuan(binhLuan);
//
//        }
//        return "newsdetails";
//    }
    @GetMapping("/news/newsdetails/")
    public String index(Model model, @RequestParam(name = "tintucId", defaultValue = "0") int tintucId) {
        if (tintucId > 0) // cập nhật
        {
            model.addAttribute("tintuc", this.tinTucService.getTinTucById(tintucId));
            model.addAttribute("binhluan", this.tinTucService.getBinhLuans(tintucId));
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
            System.out.println(err);
            return "index";
        }

        TinTuc tindangco = this.tinTucService.getTinTucById(tintucId);
        binhLuan.setTintuc(tindangco);
        this.tinTucService.addBinhLuan(binhLuan);
        model.addAttribute("tintuc", this.tinTucService.getTinTucById(tintucId));
        model.addAttribute("binhluan", this.tinTucService.getBinhLuans(tintucId));
        model.addAttribute("binhluanuser", new BinhLuan());
        return "newsdetails";
    }

}
