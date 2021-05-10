/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.pojo.Employee;
import com.yn.pojo.TinTuc;
import com.yn.pojo.Tour;
import com.yn.pojo.User;
import com.yn.service.TinTucService;
import com.yn.service.UserService;
import java.io.File;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AbstractAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
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
public class QuanLyTinTucController {

    @Autowired
    private TinTucService tinhTinTucService;

    
    @RequestMapping("/admin/quanlytintuc")
    public String quanLyTinTuc(Model model, @RequestParam(name = "kw", required = false, defaultValue = "") String kw) {
        model.addAttribute("tintuc", this.tinhTinTucService.getTinTucs(kw));
        return "quanlytintuc";
    }

    @GetMapping("/admin/quanlytintuc/themtintuc")
    public String index(Model model, @RequestParam(name = "tintucId", defaultValue = "0") int tintucId) {
        if (tintucId > 0) // cập nhật
        {
            model.addAttribute("tintuc", this.tinhTinTucService.getTinTucById(tintucId));
        } else // thêm
        {
            model.addAttribute("tintuc", new TinTuc());
        }

        return "themtintuc";
    }

    @PostMapping("/admin/quanlytintuc/themtintuc")
    public String themtour(Model model,
            @ModelAttribute(value = "tintuc") @Valid TinTuc tinTuc,
            BindingResult err, HttpServletRequest request) throws IOException {
        if (err.hasErrors()) {
            return "themtintuc";
        }
        TinTuc tinc = this.tinhTinTucService.getTinTucById(tinTuc.getId());
        tinTuc.setEmployee(tinc.getEmployee());
        tinTuc.setNgayDang(tinc.getNgayDang());
        tinTuc.setAnh(tinc.getAnh());
        MultipartFile multipartFile = tinTuc.getImgUploadFile();
        String rootPath = request.getSession().getServletContext().getRealPath("/");
        try {
            multipartFile.transferTo(new File(rootPath + "resource/assets/anhtintuc/" + multipartFile.getOriginalFilename()));
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (multipartFile.getOriginalFilename() != null) {
            String img = "/admin/anhtintuc/" + multipartFile.getOriginalFilename();
            if(!img.equals("/admin/anhtintuc/"))
                 tinTuc.setAnh(img);
        } 
        if (!this.tinhTinTucService.addOrUpdateTour(tinTuc)) {
            model.addAttribute("errMsg", "Hệ thóng đang có lỗi! Vui lòng quay lại sau!");
            return "themtintuc";
        }
        return "redirect:/admin/quanlytintuc";
    }

    @GetMapping("/admin/quanlytintuc/xemtintuc")
    public String xemtintuc(Model model, @RequestParam(name = "tintucId", defaultValue = "0") int tintucId) {
        if (tintucId > 0) // cập nhật
        {
            model.addAttribute("tintuc", this.tinhTinTucService.getTinTucById(tintucId));
            model.addAttribute("binhluan", this.tinhTinTucService.getBinhLuans(tintucId));
        } else // thêm
        {
            model.addAttribute("tintuc", new TinTuc());
        }

        return "xemtintuc";
    }
    
    
}
