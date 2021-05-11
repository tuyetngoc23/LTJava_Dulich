<%-- 
    Document   : index1
    Created on : Apr 28, 2021, 4:03:49 PM
    Author     : Huynh Thi Tuyet Ngoc
--%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="tiles"
           uri="http://tiles.apache.org/tags-tiles" %>

<style>
    .slidecontainer {
        width: 100%;
    }

    .slider {
        -webkit-appearance: none;
        width: 100%;
        height: 25px;
        background: #d3d3d3;
        outline: none;
        opacity: 0.7;
        -webkit-transition: .2s;
        transition: opacity .2s;
    }

    .slider:hover {
        opacity: 1;
    }

    .slider::-webkit-slider-thumb {
        -webkit-appearance: none;
        appearance: none;
        width: 25px;
        height: 25px;
        background: #04AA6D;
        cursor: pointer;
    }

    .slider::-moz-range-thumb {
        width: 25px;
        height: 25px;
        background: #04AA6D;
        cursor: pointer;
    }
</style>
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
                                <label for="id_label_single">Đi từ</label>
                                <div class="probootstrap_select-wrap">
                                    <label for="id_label_single" style="width: 100%;">
                                        <select name="ditu" class="js-example-basic-single js-states form-control" id="id_label_single" style="width: 100%;">
                                            <c:forEach items="${tinhthanhs}" var="t">
                                                <option value="${t.id}">${t.ten}</option>
                                            </c:forEach>
                                        </select>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md">
                            <div class="form-group">
                                <label for="id_label_single2">Đến</label>
                                <div class="probootstrap_select-wrap">
                                    <label for="id_label_single2" style="width: 100%;">
                                        <select name ="diden" class="js-example-basic-single js-states form-control" id="id_label_single2" style="width: 100%;">
                                            <c:forEach items="${tinhthanhs}" var="t">
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
                                    <input type="text" id="probootstrap-date-departure" class="form-control" placeholder="" name ="ngaydi">
                                </div>
                            </div>
                        </div>
                        <div class="col-md">
                            <div class="form-group">
                                <label for="probootstrap-date-arrival">Ngày kết thúc</label>
                                <div class="probootstrap-date-wrap">
                                    <span class="icon ion-calendar"></span> 
                                    <input type="text" id="probootstrap-date-arrival" class="form-control" placeholder="" name ="ngayve">
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
</section>

<section class="probootstrap_section bg-light "style ="with:100%">
    <div class="container" style ="with:100%">
        <div class="row">
            <div class="col-md-2">
                           <form class"form-group">
                    <div class="slidecontainer">
                        <input type="range" min="1000000" max="10000000" value="1000000" class="slider" id="myRange" name ="timgiatu">
                        <p>Giá từ: <span id="demo"></span></p>
                        <input type="range" min="1000000" max="10000000" value="1000000" class="slider" id="myRange2" name ="timgiaden">
                        <p>Giá đến: <span id="demo2"></span></p>
                        <input type="submit" value="Tra" class="btn btn-primary btn-block" id="timkiem">
                    </div>
                </form>
            </div>
            <div class="col">
            <c:if test="${tour.size() > 0}">
                <div class="row">
                <c:forEach items="${tour}" var="tour">
                    <div class="col-6">
                        <div class="media probootstrap-media d-flex align-items-stretch mb-2 probootstrap-animate" style="height:400px;">
                            <div class="probootstrap-media-image" style="background-image: url(<c:url value="${tour.image}"/>)" >
                         
                            </div>
                            <div class="media-body" >
                            
                                <h5>${tour.ten}</h5>
                                <p><span style="color:red">Giá: <fmt:formatNumber type = "number" maxFractionDigits = "3"  value = "${tour.gia}" /> VNĐ </span><br>
                                Từ: ${tour.diemDenID.ten}<br>
                                 Đến: ${tour.diemDiID.ten}<br>
                                  Bắt đầu:${tour.ngayKhoiHanh}<br> Đến: ${tour.ngayKetThuc}</p>
                                <p>Hứa hẹn sẽ mang lại nhiều thú vị cho các bạn</p>

                                <p><a href="<c:url value="booking/?tourId=${tour.id}"/>">Booking</a> <br>
                                    <a href="<c:url value="tourdetails/?tourId=${tour.id}"/>">Xem thêm</a></p>
                            </div>
                        </div>
                    </div>
                </c:forEach> 
                </div>
            </div>
            </div>
            </c:if>
            <c:if test="${tour.size() <= 0}">
                <div class="col-md-6">Tìm lại tour khác nhé!!!!</div>
            </c:if>
        </div>
        <%--</form:form>--%>
    </div>
</section>
<!-- END section -->
<script>
    var slider = document.getElementById("myRange");
    var output1 = document.getElementById("demo");
    output1.innerHTML = slider.value;

    slider.oninput = function () {
       var x = parseInt(this.value)
        x = x.toLocaleString('vi', {style: 'currency', currency: 'VND'});
        output1.innerHTML = x;
    }
    var slider = document.getElementById("myRange2");
    var output = document.getElementById("demo2");
    output.innerHTML = slider.value;

    slider.oninput = function () {
        var x = parseInt(this.value)
        x = x.toLocaleString('vi', {style: 'currency', currency: 'VND'});
        output.innerHTML = x;
    }
</script>