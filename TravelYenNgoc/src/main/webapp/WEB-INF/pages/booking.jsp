<%-- 
    Document   : booking
    Created on : Apr 28, 2021, 9:03:13 PM
    Author     : Huynh Thi Tuyet Ngoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<section class="probootstrap-cover overflow-hidden relative"  style="background-image: url(assets_ui/images/bg_1.jpg)" data-stellar-background-ratio="0.5"  id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Booking Tour</h2>
                <p class="lead mb-5 probootstrap-animate">
                </p>
            </div> 
            <div class="col-md probootstrap-animate">
                <form:form action="" class="probootstrap-form" modelAttribute="booking" method="post">
                    <div class="form-group">
                        <div class="row mb-3">
                            <div class="col-md">
                                <div class="form-group">
                                    <label for="id_label_single">tour</label>
                                    <label for="id_label_single" style="width: 100%;">
                                        <form:select path="tourId.id" onchange="getprice(this)" class="js-example-basic-single js-states form-control" id="id_label_single" style="width: 100%;">
                                            <c:forEach items="${tour}" var="t">
                                                <option value="${t.id}">${t.ten}</option>
                                            </c:forEach>
                                        </form:select>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md">
                                <div class="form-group">
                                    <label for="id_label_single">Người lớn</label>

                                    <label for="id_label_single" style="width: 100%;">
                                        <form:select path="soNguoiLonDi" class="js-example-basic-single js-states form-control" id="id_label_single" style="width: 100%;">                         
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
                                            <form:select path="soNguoiNhoDi" class="js-example-basic-single js-states form-control" id="id_label_single2" style="width: 100%;">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                            </form:select>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="tenKH" class="sr-only sr-only-focusable">Tên Khách Hàng</label>
                                    <form:input type="text" id="ten" class="form-control" path="tenKH" placeholder="Tên Khách Hàng"/>
                                    <form:errors path="tenKH" cssClass="text-danger" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="sdt" class="sr-only sr-only-focusable">Số điện thoại</label>
                                     <form:input type="text" class="form-control" id="sdt" path="sdt" placeholder="Số điện thoại"/>
                                     <form:errors path="sdt" cssClass="text-danger" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md">
                                <label for="totalMoney" class="sr-only sr-only-focusable">Tổng tiền:</label>
                                <form:input type="text" path="totalMoney" id="totalMoney" class="form-control" placeholder="Tổng Tiền"/>
                            </div>
                            <div class="col-md">
                                <input type="submit" value="Book" class="btn btn-primary btn-block">
                            </div>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>
<!-- END section -->
