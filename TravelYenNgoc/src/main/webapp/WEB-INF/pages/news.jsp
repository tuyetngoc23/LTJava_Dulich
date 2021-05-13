<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<section  class="probootstrap-cover overflow-hidden relative"  style="background-image: url(http://localhost:8080/TravelYenNgoc/assets_ui/images/bg_1.jpg);" data-stellar-background-ratio="0.5" id="section-home">
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
<!-- END section -->

<c:forEach items="${tintuc}" var="u">
    <c:if test = "${u.trangThai== 'false'}">
        <section class="probootstrap-section-half d-md-flex" id="section-about">
            <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(http://localhost:8080/TravelYenNgoc${u.anh})"></div>
            <div class="probootstrap-text">
                <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
                    <h2 class="heading mb-4">${u.tieuDe}</h2>
                    <p>${u.moTaNgan} <br>Ngày đăng: ${u.ngayDang} <br> số lượt thích: ${u.soLuotThich} <br>Tác giả: ${u.employee.idStaff.hoTen} </p>
                    <p><a href="<c:url value="/news/newsdetails/?tintucId=${u.id}"/>" class="btn btn-primary">Xem thêm</a></p>
                </div>
            </div>
        </section>
    </c:if>

</c:forEach>
<script src="<c:url value="/js/tour.js" />"></script>
