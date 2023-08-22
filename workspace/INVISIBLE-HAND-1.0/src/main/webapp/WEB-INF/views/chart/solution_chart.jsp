<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="shortcut icon" type="image/x-icon" href="/ehr/favicon.ico">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/chart.css">
<!-- *---container Start---* -->

<div class="container-1200 con-main">
	<div class="wrap-1000">
		<div id="solution_chart"></div>

	</div>
	<!-- **---wrap End---** -->
</div>
<!-- **---container End---** -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="../resources/js/jquery-3.7.0.js"></script>
<script>
//차트 관련
$(document).ready(function() {
	google.charts.load('current', {'packages':['corechart']});
	google.charts.setOnLoadCallback(drawChart);

	// 차트 생성
	function drawChart() {
	  let data = new google.visualization.arrayToDataTable([
		  
		  //2023 5월 6월 7월 8월 값 (8월은 Ai값)
		  //파랑 점선은 5월 6월 7월 값을 표시하고 8월을 null로 줌
		  //빨간 점선은 7~8월 값으로 표시 (7월 8월 값이 있어야 그려짐)
		  //노란 점선은 다른 jsp에서 받은 totalScore값을 8월에 주기(7월은 db값)
		  
		  
	      ['Year', 'one', 'two', 'three'],
	      ['05', 800, null, null],
	      ['06', 980, null, null],
	      ['07', 1200, 1200, 1200],
	      ['08', null, 1200, 1500],
	    ]);

	  let options = {
	    title: '차트1',
	    pointSize: 0,
	    width: 1000,
	    height: 500,
	    backgroundColor: '#222',
	    titleTextStyle: { color: '#fff' },
	    hAxis: {
	      textStyle: { fontSize: 15, color: '#fff' },
	      baselineColor: '#fff'
	    },
	    vAxis: {
	      title: 'title',
	      viewWindow: {
	        min: 0,
	        max: 2000
	      },
	      format: '#,###'
	    },
	    legend: {
	      textStyle: { position: 'top', fontSize: 13, color: '#fff' },
	    },
	    series: {
	        1: {lineDashStyle: [4, 4]},
	        2: {lineDashStyle: [4, 4]}
	      }
	  };

	  let chart = new google.visualization.LineChart(document.getElementById('solution_chart'));
	  
	  chart.draw(data, options);

	}


	$(window).resize(function() {
	 drawChart();
	});
}); //차트 관련 doucument
</script>