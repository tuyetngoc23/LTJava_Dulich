<%-- 
    Document   : themtour
    Created on : Apr 27, 2021, 3:10:50 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<div class="content">
  <form:form method="post" modelAttribute="tintuc" enctype="multipart/form-data" >
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header card-header-primary">
                            <h4 class="card-title">thêm bài viết du lịch</h4>
                            <p class="card-category">www.yenngoc.com</p>
                        </div>
                        <div class="card-body">
                            <form>
                                <div class="row">
                                    <c:if test="${tintuc.id>0}">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="bmd-label-floating" >Mã tour</label>
                                                <form:input id="id" cssClass="form-control" path="id" readonly="true" style ="  background-color: #202940;
                                                            opacity: 1;"/>
                                                <form:errors path="id" cssClass="text-danger" />
                                            </div>
                                        </div>
                                    </c:if>
                                </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Tiêu đề</label>
                                            <form:input id="moTaNgan" cssClass="form-control" path="moTaNgan" />
                                            <form:errors path="moTaNgan" cssClass="text-danger" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Mô tả bài viết</label>
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Nội dung bài viết du lịch</label>
                                                    <form:textarea class="form-control" path="moTaDai" id ="moTaDai" rows="5" /> 
                                                    <form:errors path="moTaDai" cssClass="text-danger" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                   <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="custom-file">

                                                <form:input  path="imgUploadFile" type="file" class="custom-file-input" id="multipartFile"/>

                                                <label class="custom-file-label" for="multipartFile">Chọn hình ảnh cho tour</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    <button type="submit" class="btn btn-primary pull-right">Thêm bài viết</button>
                                    <div class="clearfix"></div>
                            </form>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    // Add the following code if you want the name of the file appear on select
    $(".custom-file-input").on("change", function () {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });
</script>