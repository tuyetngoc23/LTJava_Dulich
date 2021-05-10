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

                </p>
            </div> 
            <div class="col-md probootstrap-animate">
                <c:if test="${tour.id>0}">
                    <form:form action="" class="probootstrap-form" modelAttribute="booking" method="post">
                        <div class="form-group">
                            <div class="row mb-3">
                                <div class="col-md">
                                    <div class="form-group">
                                        <label for="id_label_single" style="width: 100%;font-size: 20px">tour</label>
                                        <label for="id_label_single" style="width: 100%;font-size: 20px">
                                            ${tour.ten}
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md">
                                    <div class="form-group">
                                        <label for="id_label_single">Người lớn</label>
                                        <label for="id_label_single" style="width: 100%;">
                                            <form:select onchange='customJavascriptfuntion2(this)' path="soNguoiLonDi" class="js-example-basic-single js-states form-control" id="id_label_single" style="width: 100%;">                         
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                            </form:select>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md">
                                    <div class="form-group">
                                        <label for="id_label_single2">Trẻ em</label>
                                        <div class="probootstrap_select-wrap">
                                            <label for="id_label_single2" style="width: 100%;">
                                                <form:select path="soNguoiNhoDi" class="js-example-basic-single js-states form-control" id="id_label_single2" style="width: 100%;"  onchange='customJavascriptfuntion(this)'>
                                                    <option value="0">0</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                </form:select>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END row -->
                            <div class="row mb-5">
                                <div class="col-md">
                                    <div class="form-group">
                                        <label for="ten">Tên khách hàng</label>
                                        <div>
                                            <form:errors path="tenKH" cssClass="text-danger" />
                                            <form:input type="text" id="ten" path="tenKH"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md">
                                    <div class="form-group">
                                        <label for="sdt" style="width: 100%;">Số điện thoại</label>
                                        <div>
                                            <form:errors path="sdt" cssClass="text-danger" />
                                            <form:input type="text" id="sdt" path="sdt"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md">

                                    <label style="font-size: 15px; color:red">${loisoluong}</label>
                                    <label style="font-size: 15px; color:red">Tổng tiền:</label>
                                    <label id ="tien" style="font-size: 15px; color:red">${tour.gia}</label>
                                </div>
                                <div class="col-md">
                                    <input type="submit" value="Đặt tour" class="btn btn-primary btn-block">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div></div>
        </form:form>
    </c:if>
    <c:if test="${thanhcong==null}">
        <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Nhiều tour du lịch ngon đang đợi bạn tại </h2>
        <a class="nav-link" href="<c:url value="/tourdetails"/>">Đây</a>
    </c:if>
</section>
<script>
    var tongtien;
    <c:if test="${tour.gia>0}">
    tongtien = ${tour.gia}
    </c:if>
    var tongtienchobe = 0;
    var tongtiencholon = tongtien;
    function customJavascriptfuntion(obj) {

        if (obj.value == "0") {
            tongtienchobe = 0;

        }
        if (obj.value == "1") {
            tongtienchobe = tongtien * 0.5;

        }
        if (obj.value == "2") {
            tongtienchobe = tongtien * 0.5 * 2;

        }
        if (obj.value == "3") {
            tongtienchobe = tongtien * 0.5 * 3;

        }
        var x = tongtienchobe + tongtiencholon;
        x = x.toLocaleString('vi', {style: 'currency', currency: 'VND'});
        document.getElementById("tien").innerHTML = x;

    }
    function customJavascriptfuntion2(obj) {
        if (obj.value == "1") {
            tongtiencholon = tongtien * 1;

        }
        if (obj.value == "2") {
            tongtiencholon = tongtien * 2;

        }
        if (obj.value == "4") {
            tongtiencholon = tongtien * 3;

        }
        var x = tongtienchobe + tongtiencholon;
        x = x.toLocaleString('vi', {style: 'currency', currency: 'VND'});
        document.getElementById("tien").innerHTML = x;
    }

</script>