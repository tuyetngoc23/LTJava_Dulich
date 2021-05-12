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
<!--    <form >
    <div class="col-md-10 form-group">
        <input type="text" name="kw" class="form-control" placeholder="Nhập từ khóa để tìm..." />
    </div>
    <div class="col-md-2 form-group">
        <input type="submit" class="btn btn-info" value="Tìm kiếm" />
    </div>
    </div>
    </form>-->
 <div class="container-fluid">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title ">Quản Lý Tin Tức</h4>
                        <a href="<c:url value="/admin/quanlytintuc/themtintuc" />" > <button type="button"  class="btn btn-primary" >Đăng bài</button></a>
                    </div>
                    <div class="row" style="padding: 30px">
                        <c:if test = "${tintuc.trangThai== 'false'}">
                             <div class="col">
                                <div class="card  box-shadow" > 
                                    <img class="card-img-top" src="<c:url value="${u.anh}"/> " alt="abc" width="200" height="200">
                                    <div class="card-body">
                                        <h4> Mã bài :${tintucid} - ${tintuc.moTaNgan} </h4>
                                        <p> Người đăng: ${tintuc.employee.idStaff.hoTen}
                                            <br>${tintuc.moTaDai} </p>
                                       </div> 
                                </div>       
                        <c:forEach items="${binhluan}" var="b">
                            <p>${b.noiDung}</p>
                         </c:forEach>
                            </div>
                         </c:if>
                      </div>
                </div>
            </div>
        </div>
<script src="<c:url value="/admin/jsadmin/tour.js" />"></script>



