
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title ">Thông tin khách hàng</h4>
                        <p class="card-category"> www.travelyenngoc.com</p>
                        <a href="<c:url value="/andmin/quanlynhanvien/themnv" />" > <button type="button"  class="btn btn-primary" >Thêm nhân viên</button></a>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table">
                                <thead class=" text-primary">
                                <th>
                                    Mã 
                                </th>
                                <th>
                                    Họ tên
                                </th>
                                <th>
                                    Ngày sinh
                                </th>
                                <th>
                                    tên đăng nhập
                                </th>
                                <th>
                                    Địa chỉ
                                </th>
                                <th>
                                    Giới tính
                                </th>
                                <th>
                                    Ngày tham gia
                                </th>
                                <th>
                                    Trạng thái
                                </th>
                                </thead>
                                <tbody>
                                    <c:forEach items="${nhanvien}" var="u">
                                        <tr>
                                            <td class="text-primary">
                                                ${u.id} 
                                            </td>
                                            <td>
                                                ${u.idStaff.hoTen} 
                                            </td>
                                            <td>
                                                ${u.idStaff.ngaySinh} 
                                            </td>
                                            <td>
                                                ${u.idStaff.username}
                                            </td>
                                            <td>
                                                ${u.idStaff.diaChi}
                                            </td>
                                            <td>
                                                <c:if test="${u.idStaff.gioiTinh==true}">
                                                    Nam
                                                </c:if>
                                                <c:if test="${u.idStaff.gioiTinh==false}">
                                                    Nữ
                                                </c:if>
                                            </td>
                                            <td>
                                                ${u.idStaff.join_date}
                                            </td>
                                            <td>
                                                 <c:if test="${u.idStaff.status==false}">
                                                    Đang hoạt động
                                                </c:if>
                                                <c:if test="${u.idStaff.status==true}">
                                                    Hết hoạt động
                                                </c:if>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>