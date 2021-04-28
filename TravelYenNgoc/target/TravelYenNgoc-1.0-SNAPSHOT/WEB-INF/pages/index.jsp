<%-- 
    Document   : index
    Created on : Apr 11, 2021, 2:58:03 PM
    Author     : Huynh Thi Tuyet Ngoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<table class="table">
    <tr>
        <th>Mã User</th>
        <th>Tên User</th>
    </tr>
    <c:forEach items="${user}" var="u">
        <tr>
            <td>${u.id}</td>
            <td>${u.hoTen}</td>
        </tr>
    </c:forEach>
</table>
