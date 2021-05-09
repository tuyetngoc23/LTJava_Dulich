<%-- 
    Document   : newsdetails
    Created on : May 8, 2021, 11:12:25 AM
    Author     : Huynh Thi Tuyet Ngoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('assets_ui/images/bg_1.jpg');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center text-center">
            <div class="col-md">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Tin Tức</h2>
                <p class="lead mb-5 probootstrap-animate">
            </div> 
        </div>
    </div>
</section>
<c:if test = "${tintuc.trangThai== 'false'}">
    <section class="probootstrap-section-half d-md-flex" id="section-about">
        <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(assets_ui/images/img_1.jpg)"></div>
        <div class="probootstrap-text">
            <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
                <h2 class="heading mb-4">${tintuc.moTaNgan}</h2>
                <p>${tintuc.moTaDai}</p>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
                <h2 class="heading mb-4 text-center text-danger">Comments:</h2>
                <c:forEach items="${binhluan}" var="b">
                    <p>${b.noiDung}</p>
                </c:forEach>
            </div>
            <div class="form-group">
                <label for="noiDung">Tên khách hàng</label>
                <div>
                    <form:input type="text" id="noiDung" path="noiDung"/>
                </div>
            </div>
        </div>

    </section>
</c:if>
