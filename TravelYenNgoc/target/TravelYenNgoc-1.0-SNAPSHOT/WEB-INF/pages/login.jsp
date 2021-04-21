<%-- 
    Document   : login
    Created on : Apr 21, 2021, 6:42:30 PM
    Author     : Huynh Thi Tuyet Ngoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<section>
    <h1 class="text-center text-info">LOGIN</h1>
    <form modelAttribute="login" action="#">
        <div class="form-group">
            <label for="username">
                <spring:message code="user.username"/>
            </label>
            <input type="text" name="username" class="form-control" id="username"/>
        </div>
        <div class="form-group">
            <label for="password">
                <spring:message code="user.password"/>
            </label>
            <input type="text" name="password"  id="password" class="form-control"/>
        </div>
    </form>
</section>

