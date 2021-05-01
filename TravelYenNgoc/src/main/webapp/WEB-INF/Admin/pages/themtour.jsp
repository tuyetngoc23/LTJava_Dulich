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
    <form:form method="post" modelAttribute="tour" enctype="multipart/form-data" >
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
                                           
                                            <form:input id="ten" cssClass="form-control" path="ten" />
                                             <form:errors path="ten" cssClass="text-danger" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Giá</label>
                                            <form:input id="gia" type="number" cssClass="form-control" path="gia" />
                                            <form:errors path="gia" cssClass="text-danger" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label  for="inputState" class="bmd-label-floating">Địa điểm đến</label>
                                            <form:select cssClass="form-control" id="diemDenID.id" path="diemDenID.id">
                                                <c:forEach items="${tinhthanh}" var="cat">
                                                    <c:if test="${cat.id == tour.diemDenID.id}">
                                                        <option style="color:#002752" selected value="${cat.id}">${cat.ten}</option>
                                                    </c:if>
                                                    <c:if test="${cat.id != tour.diemDenID.id}">
                                                        <option style="color:#000" value="${cat.id}">${cat.ten}</option>
                                                    </c:if>>
                                                </c:forEach>
                                            </form:select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label  for="inputState" class="bmd-label-floating">Địa điểm đi</label>
                                            <form:select cssClass="form-control" id="diemDiID.id" path="diemDiID.id">
                                                <c:forEach items="${tinhthanh}" var="cat">
                                                    <c:if test="${cat.id == tour.diemDiID.id}">
                                                        <option selected value="${cat.id}" style="color:#002752">${cat.ten}</option>
                                                    </c:if>
                                                    <c:if test="${cat.id != tour.diemDiID.id}">
                                                        <option value="${cat.id}" style="color:#000">${cat.ten}</option>
                                                    </c:if>>
                                                </c:forEach>
                                            </form:select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Số người tối đa</label>
                                            <form:input id="gioiHanNDi" type="number" cssClass="form-control" path="gioiHanNDi" />
                                            <form:errors path="gioiHanNDi" cssClass="text-danger" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label  for="inputState" class="bmd-label-floating">loại tour</label>
                                            <form:select cssClass="form-control" id="loaiTourID.id" path="loaiTourID.id">
                                                <c:forEach items="${loaitour}" var="cat">
                                                    <c:if test="${cat.id == loaiTourID.id}">
                                                        <option selected value="${cat.id}" style="color:#002752">${cat.content}</option>
                                                    </c:if>
                                                    <c:if test="${cat.id != loaiTourID.id}">
                                                        <option value="${cat.id}" style="color:#000">${cat.content}</option>
                                                    </c:if>>
                                                </c:forEach>
                                            </form:select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Ngày bắt đầu</label>
                                            <form:input type="date" value="2011-08-19" cssClass="form-control" id="ngayKhoiHanh" path="ngayKhoiHanh"/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Ngày kết thúc</label>
                                            <form:input type="date" value="2011-08-19" cssClass="form-control" id="ngayKetThuc" path="ngayKetThuc"/>
                                        </div>
                                    </div>
                       <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="custom-file">

                                            <form:input  path="imgUploadFile" type="file" class="custom-file-input" id="multipartFile"/>
                                              
                                            <label class="custom-file-label" for="multipartFile">Chọn hình ảnh cho tour</label>
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
                                                <form:textarea class="form-control" path="mota" id ="mota" rows="5" /> 
                                               <form:errors path="mota" cssClass="text-danger" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary pull-right">Thêm tour</button>
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