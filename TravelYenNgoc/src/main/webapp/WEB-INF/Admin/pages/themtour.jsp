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
    <form:form id="formUploadFile" method="POST" action="themtour" enctype="multipart/form-data" modelAttribute="myFile">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title">thêm tour du lịch</h4>
                        <p class="card-category">www.yenngoc.com</p>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Tên Tour</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Giá</label>
                                        <input type="number" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label  for="inputState" class="bmd-label-floating">Địa điểm đi</label>
                                        <select id="inputState" class="form-control" >
                                             <c:forEach items="${tinhthanh}" var="u" >
                                                   <option  style="color: #000; padding: 10px">${u.ten}</option >
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label  for="inputState" class="bmd-label-floating">Địa điểm đến</label>
                                        <select id="inputState" class="form-control">
                                            <c:forEach items="${tinhthanh}" var="u">
                                                    <option  style="color: #000; padding: 10px">${u.ten}</option >
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Số người tối đa</label>
                                        <input type="number" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                  <label  for="inputState" class="bmd-label-floating">loại tour</label>
                                        <select id="inputState" class="form-control">
                                            <c:forEach items="${loaitour}" var="u">
                                                    <option  style="color: #000; padding: 10px">${u.content}</option >
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Ngày bắt đầu</label>
                                        <input type="date" value="2011-08-19"class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Ngày kết thúc</label>
                                        <input type="date" value="2011-08-19" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" id="customFile" name="multipartFile">
                                            <label class="custom-file-label" for="customFile">Chọn hình ảnh cho tour</label>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Mô tả</label>
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Thông tin tour du lịch</label>
                                            <textarea class="form-control" rows="5"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="submit" value="Submit" />
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