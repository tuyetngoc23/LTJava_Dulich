/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;



import com.yn.pojo.Tour;
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
    @DeleteMapping("/admin/quanlytour/{tourId}")
    @ResponseStatus(HttpStatus.OK)
    public void deleleProduct(@PathVariable(name = "tourId") int tourId) {
        this.tourService.deleteTour(tourId);
    }
    //nghỉ đi, quá mệt mỏi :(((( ok:(( thui mai dô thư viện
    //mai t nhờ ô teamview dùm nha
    //:(( ok 
    // mà ngọc rảnh test với nha thứ 3 nộp huhu
    //testcase á pk?
    //các dữ liệu tét như account ngọc làm có 8
    //viết giống cái này á khôn viết trả về giá trj
    @GetMapping("/getPriceTour")//tourid này có cần giống bên form ko? à không chỉ lấy id dưới client gửi lên thui ok
    public String getpricetour(@RequestParam("tourid") String tourid){
        System.err.println("tourid:" + tourid);
        if(!tourid.isBlank()){
            // ủa cơ mà get
            //
            Tour tour = tourService.getTourById(Integer.parseInt(tourid));
            System.err.println("==============");
            System.err.println("tour: "+tour );
            return tour.getGia().toString();//chạy lại đi ê, có khi nào cái getGia sai hong ta???, nó hong tính giá dc, tại trong đó  t nhân lên tùm lum á
            // đầu tiên lấy đc giá đi đã mà từ từ có gì đó sai sai tr
            // getGia() này lấy dưới cơ sở dữ liệu lên theo cái tour á u ừ khoan coin hàm isblack này là gì đã
        }
        
        return "Tour Không Hợp lệ"; // chắc dòng này khogn bao giờ sảy ra kkk;
    }
}
