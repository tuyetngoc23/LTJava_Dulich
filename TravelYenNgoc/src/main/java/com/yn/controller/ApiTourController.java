/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;



import com.yn.pojo.Tour;
import com.yn.service.TinTucService;
import com.yn.service.TourSevice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Admin
 */
@RestController
@RequestMapping("/api")
public class ApiTourController {
    @Autowired
     private TourSevice tourService;
    @Autowired
     private TinTucService tinTucService;
    
    @DeleteMapping("/admin/quanlytour/{tourId}")
    @ResponseStatus(HttpStatus.OK)
    public void deleleProduct(@PathVariable(name = "tourId") int tourId) {
        this.tourService.deleteTour(tourId);
        System.out.println("oke");
    }
    
    
    @GetMapping("/user/news/{tintucId}/{thich}")
    @ResponseStatus(HttpStatus.OK)
    public void thich(@PathVariable(name = "tintucId") int tintucid,@PathVariable(name = "thich") int thichid) {
        tinTucService.thich(tintucid,thichid);
        System.out.println("hello");
    }
    @GetMapping("/user/news/unlike/{tintucId}/{thich}")
    @ResponseStatus(HttpStatus.OK)
    public void khongthich(@PathVariable(name = "tintucId") int tintucid,@PathVariable(name = "thich") int thichid) {
        tinTucService.khongthich(tintucid, thichid);
        System.out.println("hello");
    }
}
