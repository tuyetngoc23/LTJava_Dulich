<%-- 
    Document   : quanlytour
    Created on : Apr 24, 2021, 1:38:10 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title ">Quản Lý tour du lịch</h4>
                        <p class="card-category"> wwww.travelyenngoc.com</p>
                    </div>
                    <div class="row" style="padding: 30px">
                        <c:forEach items="${tours}" var="u">
                            <div class="col-sm-4">
                                <div class="card sm-4 box-shadow" >
                                    <img class="card-img-top" src="http://localhost:8080${pageContext.request.contextPath}${u.image}" alt="abc">
                                    <div class="card-body">
                                        <h4> Mã:${u.id} - ${u.ten}</h4>
                                        <p>Địa điểm đi:  
                                            ${u.diemDiID.ten} - địa điểm đến: ${u.diemDenID.ten} 
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
                                                <button type="button" class="btn btn-sm btn-outline-secondary">Xem</button>
                                                <button type="button" class="btn btn-sm btn-outline-secondary">Sửa</button>
                                                <button type="button" class="btn btn-sm btn-outline-secondary">Xóa</button>
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




