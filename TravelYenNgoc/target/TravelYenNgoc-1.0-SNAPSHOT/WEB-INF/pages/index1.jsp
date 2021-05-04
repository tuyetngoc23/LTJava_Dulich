<%-- 
    Document   : index1
    Created on : Apr 28, 2021, 4:03:49 PM
    Author     : Huynh Thi Tuyet Ngoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="tiles"
           uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<section class="probootstrap-cover overflow-hidden relative"  style="background-image: url(assets_ui/images/bg_1.jpg)" data-stellar-background-ratio="0.5"  id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="col-md probootstrap-animate">
            <form action="" class="probootstrap-form" >
                <div class="form-group">
                    <div class="row mb-3">
                        <div class="col-md">
                            <div class="form-group">
                                <label for="id_label_single">From</label>

                                <label for="id_label_single" style="width: 100%;">
                                    <select name="tinhthanh" class="js-example-basic-single js-states form-control" id="id_label_single" style="width: 100%;">
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
                            <input type="submit" value="Tìm kiếm" class="btn btn-primary btn-block" id="timkiem">
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</section>
<!-- END section -->
<section class="probootstrap_section bg-light">
    <div class="container">
        <form:form modelAttribute="tour">
            <div class="row text-center mb-5 probootstrap-animate">
                <div class="col-md-12">
                    <h2 class="display-4 border-bottom probootstrap-section-heading">Tour</h2>
                </div>
            </div>
            <div class="row">
                <c:forEach items="${tour}" var="tour">
                    <div class="col-md-6">

                        <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                            <div class="probootstrap-media-image" style="background-image: url(assets_ui/images/img_1.jpg)">
                            </div>
                            <div class="media-body">
                                <span class="text-uppercase">${tour.ngayKhoiHanh}</span>
                                <h5 class="mb-3">${tour.ten}</h5>
                                <p>Giá: ${tour.gia}</p>
                                <p>Hứa hẹn sẽ mang lại nhiều thú vị cho các bạn</p>
                                <p><a href="<c:url value="/booking"/>">Booking</a></p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </form:form>
    </div>
</section>
<!-- END section -->
