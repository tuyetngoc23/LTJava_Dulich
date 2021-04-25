<%-- 
    Document   : base
    Created on : Apr 11, 2021, 1:07:33 PM
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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
              integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" 
              crossorigin="anonymous">
        <link rel="stylesheet" href="<c:url value="/css/main.css"/>"/>
        <!-- Animate.css -->
        <link rel="stylesheet" href="<c:url value="/css/animate.css"/>">
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="<c:url value="/css/icomoon.css"/>">
        <!-- Bootstrap  -->
        <link rel="stylesheet" href="<c:url value="/css/bootstrap.css"/>">
        <!-- Superfish -->
        <link rel="stylesheet" href="<c:url value="/css/superfish.css"/>">
        <!-- Magnific Popup -->
        <link rel="stylesheet" href="<c:url value="/css/magnific-popup.css"/>">
        <!-- Date Picker -->
        <link rel="stylesheet" href="<c:url value="/css/bootstrap-datepicker.min.css"/>">
        <!-- CS Select -->
        <link rel="stylesheet" href="<c:url value="/css/cs-select.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/cs-skin-border.css"/>">

        <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
        <script src="<c:url value="/js/modernizr-2.6.2.min.js"/>"></script>
        <script src="<c:url value="/js/respond.min.js"/>"></script>
        <title><tiles:insertAttribute name="title"/></title>
    </head>
    <body>
        <!--        <div class="container">-->
        <div id="fh5co-wrapper">
            <div id="fh5co-page">
                <tiles:insertAttribute name="header"/>
                <tiles:insertAttribute name="content"/>
                <tiles:insertAttribute name="footer"/>
            </div>
        </div>
        <!--</div>-->
        <script src="<c:url value="/js/jquery.min.js"/>"></script>
        <!-- jQuery Easing -->
        <script src="<c:url value="/js/jquery.easing.1.3.js"/>"></script>
        <!-- Bootstrap -->
        <script src="<c:url value="/js/bootstrap.min.js"/>"></script>
        <!-- Waypoints -->
        <script src="<c:url value="/js/jquery.waypoints.min.js"/>"></script>
        <script src="<c:url value="/js/sticky.js"/>"></script>

        <!-- Stellar -->
        <script src="<c:url value="/js/jquery.stellar.min.js"/>"></script>
        <!-- Superfish -->
        <script src="<c:url value="/js/hoverIntent.js"/>"></script>
        <script src="<c:url value="/js/superfish.js"/>"></script>
        <!-- Magnific Popup -->
        <script src="<c:url value="/js/jquery.magnific-popup.min.js"/>"></script>
        <script src="<c:url value="/js/magnific-popup-options.js"/>"></script>
        <!-- Date Picker -->
        <script src="<c:url value="/js/bootstrap-datepicker.min.js"/>"></script>
        <!-- CS Select -->
        <script src="<c:url value="/js/classie.js"/>"></script>
        <script src="<c:url value="/js/selectFx.js"/>"></script>

        <!-- Main JS -->
        <script src="<c:url value="/js/main.js"/>"></script>
    </body>
</html>
