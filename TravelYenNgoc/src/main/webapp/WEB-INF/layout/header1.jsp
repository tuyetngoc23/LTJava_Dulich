<%-- 
    Document   : header1
    Created on : Apr 28, 2021, 4:01:59 PM
    Author     : Huynh Thi Tuyet Ngoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" id="probootstrap-navbar">
    <div class="container">
        <a class="navbar-brand" href="/">Places</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu" aria-expanded="false" aria-label="Toggle navigation">
            <span><i class="ion-navicon"></i></span>
        </button>
        <div class="collapse navbar-collapse" id="probootstrap-menu">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a class="nav-link" href="<c:url value="/"/>">Trang Chủ</a></li>
                <li class="nav-item"><a class="nav-link" href="<c:url value="/dstour"/>">Danh Sách Tour</a></li>
                <li class="nav-item"><a class="nav-link" href="<c:url value="/booking"/>">Đặt Tour</a></li>
                <li class="nav-item"><a class="nav-link" href="<c:url value="/news"/>">Tin Tức</a></li>
                   <c:choose>
                        <c:when test="${pageContext.request.userPrincipal.name == null}">
                        <li  class="nav-item">
                            <a class="nav-link" href="<c:url value="/dangki" />">Đăng kí</a>
                        </li>
                        <li  class="nav-item">
                            <a class="nav-link" href="<c:url value="/login" />">Đăng nhập</a>
                        </li>
                    </c:when>
                    <c:when test="${pageContext.request.userPrincipal.name != null}">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Hi! ${pageContext.request.userPrincipal.name}</a>
                        </li >
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/logout" />">Đăng xuất</a>
                        </li>
                    </c:when>
                </c:choose>
            </ul>
        </div>
    </div>
</nav>
<!-- END nav -->


