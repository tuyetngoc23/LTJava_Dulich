<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
<!-- END section -->

     <c:forEach items="${tintuc}" var="u">
        <c:if test = "${u.trangThai== 'false'}">
<section class="probootstrap-section-half d-md-flex" id="section-about">
    <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(assets_ui/images/img_2.jpg)"></div>
    <div class="probootstrap-text">
        <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
            <h2 class="heading mb-4">${u.moTaNgan}</h2>
            <p>${u.moTaDai}</p>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
            <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
            <p><a href="<c:url value="/news/newsdetails/?tintucId=${u.id}"/>" class="btn btn-primary">Read More</a></p>
        </div>
    </div>
</section>
        </c:if>

        
<!--<section class="probootstrap-section-half d-md-flex">
    <div class="probootstrap-image order-2 probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(assets_ui/images/img_3.jpg)"></div>
    <div class="probootstrap-text order-1">
        <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft">
            <h2 class="heading mb-4">Payment Options</h2>
            <p>ê từ từu</p>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
            <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
            <p><a href="#" class="btn btn-primary">Learn More</a></p>
        </div>
    </div>
</section>-->
<!-- END section -->
    </c:forEach>

