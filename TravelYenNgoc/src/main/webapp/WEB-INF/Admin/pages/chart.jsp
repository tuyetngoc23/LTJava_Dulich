<%-- 
    Document   : quanlytour
    Created on : Apr 24, 2021, 1:38:10 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script 
    src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.js">
</script>
<!DOCTYPE html>
<div class="content">
    <div class="d-flex justify-content-center">
        <h3 class="text-primary">Chọn năm cần thống kê</h3>
    </div>
    <div class="d-flex justify-content-center">
    <form class="col-md-2">
        <div class="form-group ">
            <select class="form-control form-control-lg" style="text-align: center" name="nam">
                <option style="color:#000;text-align: center" value="2018">2018</option>
                <option style="color:#000" value="2019">2019</option>
                <option style="color:#000" value="2020">2020</option>
                <option style="color:#000" value="2021">2021</option>
                <option style="color:#000" value="2022">2022</option>
                <option style="color:#000" value="2023">2023</option>
              </select>
        </div>
        <div class="d-flex justify-content-center">
        <button type="submit" class="btn btn-primary ">Kiểm tra</button>
        </div>
    </form>
    </div>
    <div>
        <canvas id="myChart" width="800" height="300"></canvas>
    </div>
</div>
<script>
    var ctx = document.getElementById("myChart");
    var chart = [];
    <c:forEach items="${doanhthu}" var="u">
    chart.push(${u});
    </c:forEach>
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ["tháng 1", "tháng 2", "tháng 3", "tháng 5", "tháng 6", "tháng 7", "tháng7", "tháng 8", "tháng 9", "tháng 10", "tháng 11", "tháng 12"],
            datasets: [
                {label: '# doanh thu',
                    data: chart,
                    backgroundColor: [
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(54, 162, 235, 0.2)'
                    ],

                    borderColor: [
                        'rgba(54, 162, 235, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(54, 162, 235, 1)'
                    ],
                    borderWidth: 1
                }
            ]
        },
        options: {
            scales: {
                yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
            }
        }
    });
</script>


