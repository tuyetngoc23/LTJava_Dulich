<%-- 
    Document   : quanlytour
    Created on : Apr 24, 2021, 1:38:10 PM
    Author     : ASUS
--%>

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
                        <h4 class="card-title ">Quản Lý Tin Tức</h4>
                        <a href="<c:url value="/admin/quanlytintuc/themtintuc" />" > <button type="button"  class="btn btn-primary" >Đăng bài</button></a>
                    </div>
                    <div class="row" style="padding: 30px">
                        <c:forEach items="${tintuc}" var="u">
                            <c:if test = "${u.trangThai== 'false'}">
                             <div class="col-sm-4" style ="height:30%">
                                <div class="card sm-4 box-shadow" > 
                                    <img class="card-img-top" src="<c:url value="${u.anh}"/> " alt="abc" width="200" height="200">
                                    <div class="card-body">
                                        <h4> Mã bài :${u.id} - ${u.tieuDe} </h4>
                                        <p> Người đăng: ${u.employee.idStaff.hoTen} <br> Ngày đăng :${u.ngayDang}
                                        <div class="col text-truncate">
                                            ${u.moTaNgan}
                                        </div>
                                            <div class="d-flex justify-content-between align-items-center">
                                            <div class="btn-group">
                                                 <a href="<c:url value="quanlytintuc/xemtintuc/?tintucId=${u.id}" />" class="btn btn-info">Xem thêm</a>
                                                 <a href="<c:url value="quanlytintuc/themtintuc/?tintucId=${u.id}" />" class="btn btn-info">Cập nhật</a>
                                                <a href="javascript:;" class="btn btn-danger" onclick="deleteTinTuc(${u.id})">Xóa</a>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                         </c:if>
                         </c:forEach>
                    </div>
                </div>
            </div>
        </div>
<script src="<c:url value="/admin/jsadmin/tour.js" />"></script>
