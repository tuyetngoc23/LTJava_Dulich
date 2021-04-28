<%-- 
    Document   : base1
    Created on : Apr 28, 2021, 4:01:05 PM
    Author     : Huynh Thi Tuyet Ngoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="tiles"
           uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TRANG CHỦ</title>
        <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

        <link rel="stylesheet" href="<c:url value="/assets_ui/css/bootstrap/bootstrap.css"/>">
        <link rel="stylesheet" href="<c:url value="/assets_ui/css/animate.css"/>"/>
        <link rel="stylesheet" href="<c:url value="/assets_ui/fonts/ionicons/css/ionicons.min.css"/>"/>

        <link rel="stylesheet" href="<c:url value="/assets_ui/css/owl.carousel.min.css"/>"/>

        <link rel="stylesheet" href="<c:url value="/assets_ui/fonts/flaticon/font/flaticon.css"/>"/>

        <link rel="stylesheet" href="<c:url value="/assets_ui/fonts/fontawesome/css/font-awesome.min.css"/>"/>
        <link rel="stylesheet" href="<c:url value="/assets_ui/css/bootstrap-datepicker.css"/>"/>
        <link rel="stylesheet" href="<c:url value="/assets_ui/css/select2.css"/>"/>


        <link rel="stylesheet" href="<c:url value="/assets_ui/css/helpers.css"/>"/>
        <link rel="stylesheet" href="<c:url value="/assets_ui/css/style.css"/>"/>
    </head>
    <body>
        <tiles:insertAttribute name="header"/>
        <tiles:insertAttribute name="content"/>
        <tiles:insertAttribute name="footer"/>
        <script src="<c:url value="/assets_ui/js/jquery.min.js"/>"></script>

        <script src="<c:url value="/assets_ui/js/popper.min.js"/>"></script>
        <script src="<c:url value="/assets_ui/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/assets_ui/js/owl.carousel.min.js"/>"></script>

        <script src="<c:url value="/assets_ui/js/bootstrap-datepicker.js"/>"></script>
        <script src="<c:url value="/assets_ui/js/jquery.waypoints.min.js"/>"></script>
        <script src="<c:url value="/assets_ui/js/jquery.easing.1.3.js"/>"></script>
        <script src="<c:url value="/assets_ui/js/select2.min.js"/>"></script>
        <script src="<c:url value="/assets_ui/js/main.js"/>"></script>
    </body>
</html>