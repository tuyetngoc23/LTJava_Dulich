<%-- 
    Document   : newsdetails
    Created on : May 8, 2021, 11:12:25 AM
    Author     : Huynh Thi Tuyet Ngoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<style>



    .card {
        position: relative;
        display: flex;
        padding: 20px;
        flex-direction: column;
        min-width: 0;
        word-wrap: break-word;
        background-color: #fff;
        background-clip: border-box;
        border: 1px solid #d2d2dc;
        border-radius: 11px;
        -webkit-box-shadow: 0px 0px 5px 0px rgb(249, 249, 250);
        -moz-box-shadow: 0px 0px 5px 0px rgba(212, 182, 212, 1);
        box-shadow: 0px 0px 5px 0px rgb(161, 163, 164)
    }

    .media img {
        width: 60px;
        height: 60px
    }

    .reply a {
        text-decoration: none
    }
</style>
<section class="probootstrap-cover overflow-hidden relative"  style="background-image: url(http://localhost:8080/TravelYenNgoc/assets_ui/images/bg_1.jpg);" data-stellar-background-ratio="0.5" id="section-home">
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
                <h2 class="heading mb-4">${tintuc.tieuDe}</h2>
                <p>Tác giả: ${tintuc.employee.idStaff.hoTen}</p>
                 <p>Ngày đăng: ${tintuc.ngayDang}</p>
                <input value="${tintuc.soLuotThich}" type="pass" id="demo" style="display:none">
                    <h2 id ="demo2"class="heading mb-4" >Số tim: ${tintuc.soLuotThich}</h2>
                    <c:if test = "${thich.trangThai== 'false'}">
                    <a id="chuatim" style ="color:black" href="javascript:;"onclick="thich1(${tintuc.id})"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="46" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                      </svg></a>
                    </c:if>
                       <a id="datim" style ="color:red" href="javascript:;"onclick="thich1(${tintuc.id})"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="46" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                      </svg></a>
                    <p>${tintuc.moTaDai}</p>
                    <div class="container mb-5 mt-5">
                        <div class="card">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3 class="text-center mb-5"> Thánh bình luận </h3>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <c:forEach items="${binhluan}" var="b">
                                                <div class="media"> <img class="mr-3 rounded-circle" alt="Bootstrap Media Preview" src="https://i.imgur.com/stD0Q19.jpg" />
                                                    <div class="media-body">

                                                        <div class="row">
                                                            <div class="col-12 d-flex">
                                                                <h5 style="padding: 3px">${b.customerId.idCus.hoTen}</h5>
                                                                <span> - ${b.ngayBinhLuan}</span>
                                                            </div>                                   
                                                        </div>                                  
                                                        <p>${b.noiDung}</p>
                                                    </div>
                                                </div> 
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                            <form:form method="post" modelAttribute="binhluanuser" enctype="multipart/form-data" >
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Đẻ lại cảm nhập của bạn</label>
                                    <form:input id="noiDung" cssClass="form-control" path="noiDung" />
                                    <small id="emailHelp" class="form-text text-muted">cảm ơn bạn!!</small>
                                </div>
                                <button type="submit" class="btn btn-primary my-1">Gửi</button>
                            </form:form >
                        </div>

                    </div>

                    </section>
                </c:if>
<script src="<c:url value="/js/tour.js" />"></script>