<%-- 
    Document   : newsdetails
    Created on : May 8, 2021, 11:12:25 AM
    Author     : Huynh Thi Tuyet Ngoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<<<<<<< .mine
<section class="probootstrap-cover "  style="background-image: url(assets_ui/images/bg_1.jpg);"  id="section-home">
    <!--    <div class="overlay"></div>-->





























=======
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
>>>>>>> .theirs
    <div class="container">
        <!--        <div class="row align-items-center text-center">
                    <div class="col-md">
                        <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Tin Tức Chi Tiết</h2>
                        <p class="lead mb-5 probootstrap-animate">
                    </div> 
                </div>-->
    </div>
</section>
<c:if test = "${tintuc.trangThai== 'false'}">
<<<<<<< .mine
    <section class="probootstrap-section-half" id="section-about">
        <div class="container">
            <h2 class="heading text-center">${tintuc.tieuDe}</h2>
            <p>${tintuc.moTaNgan}</p>
            <p>${tintuc.moTaDai}</p>
            <%--<c:forEach items="binhluan" var="b">--%>
            <%--<c:if test="${tintuc.id == binhluan.tintucId}">--%>
            <!--<p>${b.noiDung}</p>-->
            <%--</c:if>--%>
            <%--</c:forEach>--%>
            <form action="">
                <div class="row">
                    <input type="button" value="Like! "class="fa fa-thumbs-up" " onclick="addone(myfield);" onclick="this.disabled = true">
                    <input type="text"  name="myfield" value="${tintuc.soLuotThich}" size="5" readonly="readonly"><br>
                    <input type="button"  value="UnLike! " class="fa-thumbs-down" onclick="subtractone(myfield);"><br>
                </div>
                <div class="row">
                    <div class="col-md-10 form-group">
                        <input type="text" name="noiDung" class="form-control" placeholder="Nhập bình luận" />
                    </div>
                    <div class="col-md-2 form-group">
                        <input type="submit" class="btn btn-info" value="Gửi" />
                    </div>
                </div>
            </form>
        </div>
=======
    <section class="probootstrap-section-half d-md-flex" id="section-about">
        <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(assets_ui/images/img_1.jpg)"></div>
        <div class="probootstrap-text">
            <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
                <h2 class="heading mb-4">${tintuc.tieuDe}</h2>
                <p>Tác giả: ${tintuc.employee.idStaff.hoTen}</p>
                <p>Ngày đăng: ${tintuc.ngayDang}</p>
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








>>>>>>> .theirs
<<<<<<< .mine
    </section>
</c:if>
<script Language = "JavaScript">
    function addone(field) {
        field.value = Number(field.value) + 1;
    }

    function subtractone(field) {
        field.value = Number(field.value) - 1;
    }
</script>
















=======
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
>>>>>>> .theirs
