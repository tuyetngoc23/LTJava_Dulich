<%-- 
    Document   : news
    Created on : Apr 28, 2021, 9:31:48 PM
    Author     : Huynh Thi Tuyet Ngoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<section class="probootstrap_section bg-light">
    <div class="container">
        <%--<form:form modelAttribute="tour">--%> 
            <div class="row text-center mb-5 probootstrap-animate">
                <div class="col-md-12">
                    <h2 class="display-4 border-bottom probootstrap-section-heading">Tour</h2>
                </div>
            </div>
            <div class="row">
                    <c:forEach items="${news}" var="n">
                        <div class="col-md-6">
                            <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                                <div class="probootstrap-media-image" style="background-image: url(assets_ui/images/img_1.jpg)">
                                </div>
                                <div class="media-body">
                                    <span class="text-uppercase">${n.ngayDang}</span>
                                    <!--<h5 class="mb-3"></h5>-->
                                    <p>${n.moTaNgan}</p>
                                    <p>Hứa hẹn sẽ mang lại nhiều thú vị cho các bạn</p>
                                    <p><a href="<c:url value="/news"/>">Read More</a></p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
            </div>
        <%--</form:form>--%>
    </div>
</section>
