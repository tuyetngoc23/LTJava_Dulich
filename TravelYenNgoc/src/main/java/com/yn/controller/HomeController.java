/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.controller;

import com.yn.pojo.Booking;
import com.yn.pojo.TinhThanh;
import com.yn.pojo.Tour;
import com.yn.repository.BookingRepository;
import com.yn.service.BookingService;
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
        //ê, thui, nghỉ đi, mai làm tiếp, chứ mệt r :((( không hải mà nó bị lưu bản buid cũ á nó không chạy đc :(((
        //tức ghê, mai chạy luôn// chắc mai chạy lại nó chạy đc kkkkk
        //cái valida cũng v á :(((, qua chạy ko dc nhưng mới nãy chạy dc  :à à 
        //à này dùng ajax lấy giá nha chuwsk hông lấy kiểu này đc
        // khi chọn mỗi tour giá nó khác nha
        //viết ajax gửi tourid lên rồi lấy viết bên api
       // model.addAttribute("getGia", this.bookingService.getGia(, booking));
        // lỗi render trang nè cái Booking booking, @Valid Tour tour chưa map nè
        // ngọc muốn hiện các tour ra rồi mới booking đúng hông
        //ừ, t hiện cái tour trong select á, mà cái này nó chạy đúng á cho tới khi thêm @Valid Booking booking, @Valid Tour tour
        // đúng rồi nó chưa mapping với cái nào thì valid kiểu gì đc nên nó văng lỗi á 
        // mà trang get dữ liệu đâu canaf hai cáo đó đâu
        //tại nãy thêm cái hàm á, nên mới thêm, giờ bỏ nó qua post r á, mà hong xóa
        return "booking";
    }
    //cho xem lỗi đi
    @PostMapping("/booking")
    public String booking(Model model, @ModelAttribute(value = "booking")
    @Valid Booking booking, BindingResult err){
        //t thêm cái này
        //cái tour đó chưa mapping với trường nào nè
        //t muốn nó mapp với cái này nè
        //@Valid Booking booking, @Valid Tour tour hai ái này phải map nó mới đc nè
        //booking thì có r á, còn tour thì hong biết map kiểu gì 
        // hai đó đi chung không
        //chung form á từ từ
        //form đó có mỗi cái tourid thôi á, mà cái đó t khai báo Tour á
        // vậy thì bỏ cái  @Valid Tour tour này đi nó không tác dụng vì cái booking có rồi nó lưu rồi
        if(err.hasErrors()){
            model.addAttribute("errMsg", "Hệ thóng đang có lỗi! Vui lòng quay lại sau!");
        }else{
            
            bookingService.addBooking(booking);
        }
        return "booking";
    }
    
    
    @RequestMapping("/news")
    public String news(Model model){
        return "news";
    }

    
}
