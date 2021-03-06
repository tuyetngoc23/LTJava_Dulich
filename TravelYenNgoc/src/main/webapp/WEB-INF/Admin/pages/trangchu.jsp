<%-- 
    Document   : trangchu
    Created on : Apr 24, 2021, 1:15:51 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-4 col-lg-12">
                <div class="card card-chart">
                    <div class="card-header card-header-success">
                        <div class="ct-chart" id="dailySalesChart"></div>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Tour mới</h4>
                        <p class="card-category">
                            <span class="text-success"><i class="fa fa-long-arrow-up"></i> 60% </span> tăng lên từng ngày</p>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">access_time</i> đang cập nhật
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-12">
                <div class="card card-chart">
                    <div class="card-header card-header-warning">
                        <div class="ct-chart" id="websiteViewsChart"></div>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Khách hàng truy cập</h4>
                        <p class="card-category">đang cập nhật</p>
              
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">access_time</i> đang cập nhật
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-12">
                <div class="card card-chart">
                    <div class="card-header card-header-danger">
                        <div class="ct-chart" id="completedTasksChart"></div>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Khách hàng đặt tour</h4>
                        <p class="card-category">đang cập nhật</p>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">access_time</i> đang cập nhật
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
                <div class="card card-stats">
                    <div class="card-header card-header-warning card-header-icon">
                        <div class="card-icon">
                            <i class="material-icons">content_copy</i>
                        </div>
                        <p class="card-category">Tổng nhân viên</p>
                        <h3 class="card-title">80
                            <small>GB</small>
                        </h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons text-warning">warning</i>
                            <a href="#pablo" class="warning-link">cập nhật thêm</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
                <div class="card card-stats">
                    <div class="card-header card-header-success card-header-icon">
                        <div class="card-icon">
                            <i class="material-icons">store</i>
                        </div>
                        <p class="card-category">Tổng đơn hàng đặt</p>
                        <h3 class="card-title">${tongbooking}</h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">date_range</i> đang cập nhật
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
                <div class="card card-stats">
                    <div class="card-header card-header-danger card-header-icon">
                        <div class="card-icon">
                            <i class="material-icons">info_outline</i>
                        </div>
                        <p class="card-category">Fixed Issues</p>
                        <h3 class="card-title">75</h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">local_offer</i> Tracked from Github
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
                <div class="card card-stats">
                    <div class="card-header card-header-info card-header-icon">
                        <div class="card-icon">
                            <i class="fa fa-twitter"></i>
                        </div>
                        <p class="card-category">Followers</p>
                        <h3 class="card-title">+245</h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">update</i> Just Updated
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-12">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title">Khách hàng mới</h4>
                        <p class="card-category">trong tháng 5 năm 2021</p>
                    </div>
                    <div class="card-body table-responsive">
                        <table class="table table-hover">
                            <thead class="text-warning">
                            <th>ID</th>
                            <th>Tên</th>
                            <th>Ngày tham gia</th>
                            <th>Địa chỉ</th>
                            </thead>
                            <tbody>
                                <c:forEach items="${customer}" var="u">
                                    <tr> 
                                            <td>${u.id} allo</td>
                                            <td>${u.idCus.hoTen}</td>
                                            <td>${u.idCus.join_date}</td>
                                            <td>${u.idCus.diaChi}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
</div>
</div>
</div>
</div>
</div>

