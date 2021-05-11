<%-- 
    Document   : newsdetails
    Created on : May 8, 2021, 11:12:25 AM
    Author     : Huynh Thi Tuyet Ngoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<section class="probootstrap-cover "  style="background-image: url(assets_ui/images/bg_1.jpg);"  id="section-home">
    <!--    <div class="overlay"></div>-->
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
