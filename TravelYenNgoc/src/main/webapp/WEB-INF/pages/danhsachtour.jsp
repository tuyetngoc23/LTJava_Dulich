<%-- 
    Document   : danhsachtour
    Created on : May 11, 2021, 7:08:32 PM
    Author     : Huynh Thi Tuyet Ngoc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<section class="probootstrap_section bg-light "style ="with:100%">
    <div class="container" style ="with:100%">
        <div class="row text-center mb-5 probootstrap-animate fadeInUp probootstrap-animated">
          <div class="col-md-12">
            <h2 class="display-4 border-bottom probootstrap-section-heading">Danh Sách Các Tour</h2>
          </div>
        </div>
        <div class="row">
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
                                            Bắt đầu:${tour.ngayKhoiHanh}<br> Đến: ${tour.ngayKetThuc}<br> Số ngày: ${tour.soNgay} <br> Loại tour:${tour.loaiTourID.content}</p>
                                   
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
