<%-- 
    Document   : booking
    Created on : Apr 28, 2021, 9:03:13 PM
    Author     : Huynh Thi Tuyet Ngoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<section class="probootstrap-cover overflow-hidden relative"  style="background-image: url(http://localhost:8080/TravelYenNgoc/assets_ui/images/bg_1.jpg)" data-stellar-background-ratio="0.5"  id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md">
                <p class="lead mb-5 probootstrap-animate">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Cảm ơn bạn đã đặt, chúng tôi sẻ liên hệ sớm với bạn </h2>
                <a class="nav-link" href="<c:url value="/tourdetails"/>">Xem thêm tại đây</a>
                </p>
            </div> 
        </div>
    </div>
</section>
