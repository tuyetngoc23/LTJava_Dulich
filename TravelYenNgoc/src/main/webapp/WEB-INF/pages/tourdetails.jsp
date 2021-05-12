<%-- 
    Document   : tourdetails
    Created on : Apr 28, 2021, 7:51:36 PM
    Author     : Huynh Thi Tuyet Ngoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<section class="probootstrap-cover overflow-hidden relative"  style="background-image: url(http://localhost:8080/TravelYenNgoc/assets_ui/images/bg_1.jpg);" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center text-center">
            <div class="col-md">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Chi tiết Tour</h2>
                <p class="lead mb-5 probootstrap-animate">
            </div> 
        </div>
    </div>
</section>
<section class="probootstrap-section-half d-md-flex">
    <div class="probootstrap-image order-2 probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(${tour.image})"></div>
    <div class="probootstrap-text order-1">
        <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft">
            <h2 class="heading mb-4">${tour.ten}</h2>
            <p><span style="color:blue">Giá: <fmt:formatNumber type = "number" maxFractionDigits = "3"  value = "${tour.gia}" /> VNĐ </span><br>
                                Từ: ${tour.diemDenID.ten}<br>
                                 Đến: ${tour.diemDiID.ten}<br>
                                 Bắt đầu:${tour.ngayKhoiHanh}<br> Đến: ${tour.ngayKetThuc}<br> Số ngày: ${tour.soNgay}</p>
            <p>${tour.mota}</p>
              <p><a href="<c:url value="booking/?tourId=${tour.id}"/>">Booking</a> <br>
        </div>
    </div>
</section>
