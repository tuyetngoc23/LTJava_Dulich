
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<div class="content">
    <form:form method="post" modelAttribute="user" enctype="multipart/form-data" cssClass="col-md-8">
        <div class="form-row">
            <div class="form-group col-md-3">
                <label>Họ và Tên</label>   
                <form:input id="hoTen" cssClass="form-control" path="hoTen" />
                <form:errors path="hoTen" cssClass="text-danger" />
            </div> <!-- form-group end.// -->
            <div class="form-group col-md-4">
                <label>Địa chỉ</label>
                <form:input id="diaChi" cssClass="form-control" path="diaChi" />
                <form:errors path="diaChi" cssClass="text-danger" />
            </div> <!-- form-group end.// -->
        </div> <!-- form-row end.// -->
        <div class="form-group col-md-6">
            <label>Ngày sinh</label>
            <form:input type="date"  cssClass="form-control" id="ngaySinh" path="ngaySinh"/>
        </div> <!-- form-group end.// -->
        <div class="form-group col-md-6">
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
        </div> <!-- form-row.// -->
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Tên đăng nhâp</label>
                <form:input id="username" cssClass="form-control" path="username" />
                <p Class="text-danger">${mesusername}</p>
            </div> 
            <div>
                <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Nhập mật khẩu</label>
                            <form:input id="passWord" cssClass="form-control" path="passWord" type="password"/>
                            <form:errors path="passWord" cssClass="text-danger" />
                        </div>
                        <div class="form-group col-md-6">
                        <label>Nhập lại mật khẩu</label>
                        <form:input id="confirmPassword" cssClass="form-control" path="confirmPassword" type="password" />
                        <form:errors path="confirmPassword" cssClass="text-danger" />
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block"> Thêm nhân viên </button>
                        </div> <!-- form-group// -->                         
                    </form:form>
                </div>
