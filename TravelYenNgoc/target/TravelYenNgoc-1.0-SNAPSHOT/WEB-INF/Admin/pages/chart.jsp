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
   <canvas id="myChart" width="900" height="400"></canvas>
</div>
<script type="text/javascript">
  
var ctx = document.getElementById("myChart");
var chart =[];
<c:forEach items="${doanhthu}" var="u">
    chart.push(${u});
</c:forEach>
var myChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ["tháng 1", "tháng 2" , "tháng 3" , "tháng 5", "tháng 6", "tháng 7","tháng7","tháng 8","tháng 9","tháng 10","tháng 11","tháng 12"],
    datasets: [
      { label: '# doanh thu',
        data: chart,
        backgroundColor :[
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
borderWidth : 1
      }
    ]
  },
  options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});
    </script>


