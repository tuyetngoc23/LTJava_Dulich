<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:url value="/assets_ui/css/login.css"/>">
        <script src="<c:url value="/assets_ui/js/login.js"/>"></script>
        <title>Login</title>
    </head>
    <body>
        <c:if test="${param.error != null}">
            <div class="alert alert-danger">
                Chương trình đang xảy ra lỗi! Vui lòng quay lại sau!
            </div>
        </c:if>
        <c:if test="${param.accessDenied != null}">
            <div class="alert alert-danger">
                Bạn không có quyền truy cập trang web
            </div>
        </c:if>
        <div class="wrapper">
            <div class="container">
                <h1>LOGIN</h1>
                <c:url value="/login" var="action"/>
                <form:form class="form" action="${action}" method="post" modelAttribute="user">
                    <form:errors path="*" element="div" /> 
                    <input type="text" placeholder="Username" name="username">
                    <form:errors path="username" cssClass="text-danger" />
                    <input type="password" placeholder="Password" name="passWord">
                    <form:errors path="passWord" cssClass="text-danger" />
                    <button type="submit" id="login-button">Login</button>
                </form:form>
            </div>
            <ul class="bg-bubbles">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
<!--        <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>-->
    </body>
</html>