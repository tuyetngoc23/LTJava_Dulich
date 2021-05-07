<%-- 
    Document   : dangki
    Created on : May 7, 2021, 2:29:15 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">


<div class="container">
    <br>  <p class="text-center">More bootstrap 4 components on <a href="http://bootstrap-ecommerce.com/"> Bootstrap-ecommerce.com</a></p>
    <hr>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <header class="card-header">
                    <a href="" class="float-right btn btn-outline-primary mt-1">Log in</a>
                    <h4 class="card-title mt-2">Sign up</h4>
                </header>
                <article class="card-body">
                    <form:form method="post" modelAttribute="user" enctype="multipart/form-data" >
                        <div class="form-row">
                            <div class="col form-group">
                                <label>Họ và Tên</label>   
                                <form:input id="hoTen" cssClass="form-control" path="hoTen" />
                                <form:errors path="hoTen" cssClass="text-danger" />
                            </div> <!-- form-group end.// -->
                            <div class="col form-group">
                                <label>Địa chỉ</label>
                                <form:input id="diaChi" cssClass="form-control" path="diaChi" />
                                <form:errors path="diaChi" cssClass="text-danger" />
                            </div> <!-- form-group end.// -->
                        </div> <!-- form-row end.// -->
                        <div class="form-group">
                            <label>Ngày sinh</label>
                            <form:input type="date"  cssClass="form-control" id="ngaySinh" path="ngaySinh"/>
                        </div> <!-- form-group end.// -->
                        <div class="form-group">
                            <label class="form-check form-check-inline">
                                <form:radiobutton path="gioiTinh" value="true" cssclass="form-check-input" checked="checked"/>  
                                <span class="form-check-label"> Nam </span>
                            </label>
                            <label class="form-check form-check-inline">
                                <form:radiobutton path="gioiTinh" value="false" cssclass="form-check-input" /> 
                                <span class="form-check-label"> Nữ </span>
                            </label>
                        </div> <!-- form-group end.// -->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Số điện thoại</label>
                                <form:input id="sdt" cssClass="form-control" path="sdt" />
                                <form:errors path="sdt" cssClass="text-danger" />
                            </div> <!-- form-group end.// -->
                            <div class="form-group col-md-6">
                                <label>Tên đăng nhâp</label>
                                <form:input id="username" cssClass="form-control" path="username" />
                                <p Class="text-danger">${mesusername}</p>
                            </div> <!-- form-group end.// -->
                        </div> <!-- form-row.// -->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Nhập mật khẩu</label>
                                <form:input id="passWord" cssClass="form-control" path="passWord" />
                                <form:errors path="passWord" cssClass="text-danger" />
                            </div> <!-- form-group end.// -->
                            <div class="form-group col-md-6">
                                <label>Nhập lại mật khẩu</label>
                                <form:input id="confirmPassword" cssClass="form-control" path="confirmPassword" />
                                <form:errors path="confirmPassword" cssClass="text-danger" />
                            </div> <!-- form-group end.// -->
                        </div> <!-- form-row.// -->
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block"> Register  </button>
                        </div> <!-- form-group// -->      
                        <small class="text-muted">Bằng cách nhấp vào nút 'Đăng ký', bạn xác nhận rằng bạn chấp nhận <br> Điều khoản sử dụng và chính sách quyền riêng tư.</small>                                          
                        </form:form>
                </article> <!-- card-body end .// -->
                <div class="border-top card-body text-center">Bạn có tài khoản? <a href="">Log In</a></div>
            </div> <!-- card.// -->
        </div> <!-- col.//-->

    </div> <!-- row.//-->


</div> 
<!--container end.//-->

<br><br>
<article class="bg-secondary mb-3">  
    <div class="card-body text-center">
        <h3 class="text-white mt-3">Bootstrap 4 UI KIT</h3>
        <p class="h5 text-white">Components and templates  <br> for Ecommerce, marketplace, booking websites 
            and product landing pages</p>   <br>
        <p><a class="btn btn-warning" target="_blank" href="http://bootstrap-ecommerce.com/"> Bootstrap-ecommerce.com  
                <i class="fa fa-window-restore "></i></a></p>
    </div>
    <br><br>
</article>