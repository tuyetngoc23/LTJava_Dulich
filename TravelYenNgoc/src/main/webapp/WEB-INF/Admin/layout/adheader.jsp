<%-- 
    Document   : adheader
    Created on : Apr 24, 2021, 1:11:10 PM
    Author     : ASUS
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="sidebar" data-color="purple" data-background-color="black" data-image="../assets/img/sidebar-2.jpg">
    <div class="logo"><a href="http://www.creative-tim.com" class="simple-text logo-normal">
           Hi! ${pageContext.request.userPrincipal.name}
        </a></div>
    <div class="sidebar-wrapper">
        <ul class="nav">
            <li class="nav-item active  ">
                <a href="<c:url value="/admin" />" class="nav-link">
                    <i class="material-icons">dashboard</i>
                    <p>Trang chủ</p>
                </a>
            </li>
            <li class="nav-item ">
               <a href="<c:url value="/admin" />" class="nav-link">
                    <i class="material-icons">person</i>
                    <p>Trang cá nhân</p>
                </a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="#">
                    <i class="material-icons">content_paste</i>
                    <p>Quản lý nhân viên</p>
                </a>
            </li>
            <li class="nav-item ">
                 <a href="<c:url value="/admin/quanlytour" />" class="nav-link">
                    <i class="material-icons">content_paste</i>
                    <p>Quản lý Tour</p>
                </a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="<c:url value="/admin/quanlykhachhang" />">
                    <i class="material-icons">content_paste</i>
                    <p>Quản lý khách hàng</p>
                </a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="<c:url value="/admin/quanlytintuc" />">
                    <i class="material-icons">library_books</i>
                    <p>Quản lý trang tin tức</p>
                </a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="<c:url value="/admin/chart" />">
                    <i class="material-icons">bubble_chart</i>
                    <p>Thống kê</p>
                </a>
            </li>
         <li class="nav-item  ">
                  <a class="nav-link" href="href="<c:url value="/logout" />">
                      <i class="material-icons">logout</i>
                      <p>Logout</p>   
                  </a>
              </li> 
        </ul>
    </div>
</div>
<div class="main-panel">
    <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top " id="navigation-example">
        <div class="container-fluid">
            <div class="navbar-wrapper">
                <a class="navbar-brand" href="javascript:void(0)">Admin</a>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation" data-target="#navigation-example">
                <span class="sr-only">Toggle navigation</span>
                <span class="navbar-toggler-icon icon-bar"></span>
                <span class="navbar-toggler-icon icon-bar"></span>
                <span class="navbar-toggler-icon icon-bar"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end">
                <form class="navbar-form">
                    <div class="input-group no-border">
                        <input type="text" name="kw" class="form-control" placeholder="Search...">
                        <button type="submit" class="btn btn-default btn-round btn-just-icon">
                            <i class="material-icons">search</i>
                            <div class="ripple-container"></div>
                        </button>
                    </div>
                </form>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="javascript:void(0)">
                            <i class="material-icons">dashboard</i>
                            <p class="d-lg-none d-md-block">
                                Stats
                            </p>
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="javscript:void(0)" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="material-icons">notifications</i>
                            <span class="notification">5</span>
                            <p class="d-lg-none d-md-block">
                                Some Actions
                            </p>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="javascript:void(0)">Mike John responded to your email</a>
                            <a class="dropdown-item" href="javascript:void(0)">You have 5 new tasks</a>
                            <a class="dropdown-item" href="javascript:void(0)">You're now friend with Andrew</a>
                            <a class="dropdown-item" href="javascript:void(0)">Another Notification</a>
                            <a class="dropdown-item" href="javascript:void(0)">Another One</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="javascript:void(0)">
                            <i class="material-icons">person</i>
                            <p class="d-lg-none d-md-block">
                                Account
                            </p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

