<%-- 
    Document   : quanlytour
    Created on : Apr 24, 2021, 1:38:10 PM
    Author     : ASUS
--%>

<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="content">
    <div class="row">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-primary">
                            <h4 class="card-title ">Quản Lý tour du lịch</h4>
                            <a href="<c:url value="/admin/quanlytour/themtour" />" > <button type="button"  class="btn btn-primary" >Thêm tour mới</button></a>
                        </div>
                        <div class="row" style="padding: 30px">
                            <c:forEach items="${tours}" var="u">
                                <div class="col-sm-4">
                                    <div class="card sm-4 box-shadow" > 
                                        <img class="card-img-top" src="<c:url value="${u.image}"/> " alt="abc" width="200" height="200">
                                        <div class="card-body">
                                            <h4> Mã:${u.id} - ${u.ten}</h4>
                                            <p>Giá: <fmt:formatNumber type = "number" maxFractionDigits = "3"  value = "${u.gia}" /> VNĐ <br>
                                                Từ:  
                                                ${u.diemDenID.ten} - Đến: ${u.diemDiID.ten} 
                                                <br>
                                                giới hạn:
                                                ${u.gioiHanNDi} người<br>
                                                Ngày bắt đầu: ${u.ngayKhoiHanh} <br> Ngày kết thúc: ${u.ngayKetThuc}
                                                <br> Loại tour: ${u.loaiTourID.content}
                                            </p>
                                            <div class="col text-truncate">
                                                ${u.mota}
                                            </div>
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div class="btn-group">
                                                    <a href="<c:url value="quanlytour/themtour/?tourId=${u.id}" />" class="btn btn-info">Cập nhật</a>
                                                    <a href="javascript:;" class="btn btn-danger" onclick="deleteTour(${u.id})">Xóa</a>
                                                </div>
                                                <small class="text-muted">9 mins</small>
                                            </div>
                                        </div> 
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            <script src="<c:url value="/admin/jsadmin/tour.js" />"></script>



