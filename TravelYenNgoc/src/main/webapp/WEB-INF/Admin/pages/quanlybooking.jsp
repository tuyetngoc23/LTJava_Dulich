
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title ">Thông tin khách hàng đặt tour</h4>
                        <p class="card-category"> www.travelyenngoc.com</p>

                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table">
                                <thead class=" text-primary">
                                <th>
                                    Mã 
                                </th>
                                <th>
                                    khách hàng
                                </th>
                                <th>
                                   nhân viên đi tour
                                </th>
                                      <th>
                                   Tổng tiền
                                </th>
                                <th>
                                    Người lớn
                                </th>
                                <th>
                                    Trẻ em
                                </th>
                                <th>
                                   Ngày đặt
                                </th>
                                <th>
                                    Mã tour
                                </th>
                                <th>
                                    Thông tin liên hệ
                                </th>
                                <th>
                                    Số điện thoai
                                </th>
                                </thead>
                                <tbody>
                                    <c:forEach items="${booking}" var="u">
                                        <tr>
                                            <td class="text-primary">
                                                ${u.id} 
                                            </td>
                                            <td>
                                                ${u.customerId.idCus.hoTen} 
                                            </td>
                                            <td>
                                                <c:if test="${u.nhanvien.idStaff.id==null}">
                                                <a href="javascript:;" class="btn btn-danger" onclick="nhantour(${u.id})">Nhận</a>
                                                </c:if>
                                                    <c:if test="${u.nhanvien.idStaff.id!=null}">
                                                 ${u.nhanvien.idStaff.username} 
                                                </c:if>
                                            </td>
                                            <td>
                                                ${u.totalMoney}
                                            </td>
                                            <td>
                                                ${u.soNguoiLonDi}
                                            </td>
                                            <td>
                                                ${u.soNguoiNhoDi}
                                            </td>
                                            <td>
                                                ${u.bookingDay}
                                            </td>
                                            <td>
                                                ${u.tour.id}
                                            </td>
                                            <td>
                                                ${u.tenKH}
                                            </td>
                                            <td>
                                                ${u.sdt}
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
        <script src="<c:url value="/admin/jsadmin/tour.js" />"></script>