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
                <!--<a href="#" role="button" class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">See OnePage Verion</a>--> 
               
            </div> 
            <div class="col-md probootstrap-animate">
                <form:form action="#" class="probootstrap-form" modelAttribute="tinhthanh">
                    <div class="form-group">
                        <div class="row mb-3">
                            <div class="col-md">
                                <div class="form-group">
                                    <label for="id_label_single">Tên tour</label>

                                    <label for="id_label_single" style="width: 100%;">
                                        <select class="js-example-basic-single js-states form-control" id="id_label_single" style="width: 100%;">
                                            <c:forEach items="${tinhthanh}" var="t">
                                                <option value="${t.id}">${t.ten}</option>
                                            </c:forEach>
                                        </select>
                                    </label>
                                </div>
                            </div>
                            <div class="col-md">
                                <div class="form-group">
                                    <label for="id_label_single2">Giá</label>
                                    <div class="probootstrap_select-wrap">
                                        <label for="id_label_single2" style="width: 100%;">
                                            <select class="js-example-basic-single js-states form-control" id="id_label_single2" style="width: 100%;">
                                                <c:forEach items="${tinhthanh}" var="t">
                                                    <option value="${t.id}">${t.ten}</option>
                                                </c:forEach>
                                            </select>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md">
                                <div class="form-group">
                                    <label for="id_label_single">From</label>

                                    <label for="id_label_single" style="width: 100%;">
                                        <select class="js-example-basic-single js-states form-control" id="id_label_single" style="width: 100%;">
                                            <c:forEach items="${tinhthanh}" var="t">
                                                <option value="${t.id}">${t.ten}</option>
                                            </c:forEach>
                                        </select>
                                    </label>
                                </div>
                            </div>
                            <div class="col-md">
                                <div class="form-group">
                                    <label for="id_label_single2">To</label>
                                    <div class="probootstrap_select-wrap">
                                        <label for="id_label_single2" style="width: 100%;">
                                            <select class="js-example-basic-single js-states form-control" id="id_label_single2" style="width: 100%;">
                                                <c:forEach items="${tinhthanh}" var="t">
                                                    <option value="${t.id}">${t.ten}</option>
                                                </c:forEach>
                                            </select>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END row -->
                        <div class="row mb-5">
                            <div class="col-md">
                                <div class="form-group">
                                    <label for="probootstrap-date-departure">Ngày khởi hành</label>
                                    <div class="probootstrap-date-wrap">
                                        <span class="icon ion-calendar"></span> 
                                        <input type="text" id="probootstrap-date-departure" class="form-control" placeholder="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md">
                                <div class="form-group">
                                    <label for="probootstrap-date-arrival">Ngày kết thúc</label>
                                    <div class="probootstrap-date-wrap">
                                        <span class="icon ion-calendar"></span> 
                                        <input type="text" id="probootstrap-date-arrival" class="form-control" placeholder="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- END row -->
                        <div class="row">
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