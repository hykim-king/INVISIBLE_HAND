<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath }"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
<script src="${CP}/resources/js/util.js"></script>
<!--Load the AJAX API-->
<script  src="https://www.gstatic.com/charts/loader.js"></script>
<script >
   //the corechart package 로딩
   google.charts.load('current', {'packages':['corechart']});
   
   //Callback 함수 지정
   google.charts.setOnLoadCallback(drawChart);
   
   //Callback 
   function drawChart(){
	      
        $.ajax({
           type: "GET",
           url:"/ehr/chart/drawPieChart.do",
           asyn:"false",
           dataType:"html",
           data:{

           },
           success:function(data){//통신 성공
               console.log("success data:"+data);
               let chartData= JSON.parse(data);
               console.log("chartData:"+chartData);
               //차트 데이터 : backend에서 수신
               let dataVar = new google.visualization.DataTable();
               dataVar.addColumn('string', 'Topping');
               dataVar.addColumn('number', 'Slices');
               dataVar.addRows(chartData);
            
              //chart option: 제목, 차트 크기(json)
              let options = {'title':'How Much Pizza I Ate Last Night',
                      'width':800,
                      'height':600};  
            
              let chart = new google.visualization.PieChart(document.getElementById('chart_div'));
              chart.draw(dataVar, options);               
           },
             error:function(data){//실패시 처리
               console.log("error:"+data);
           }
         });	      
	   

	 
   }
   
   
</script>
    


<title>google pie chart</title>
</head>
<body>
     <h2>google pie chart</h2>
     <hr/>
     
     <div id="chart_div"></div>
</body>
</html>