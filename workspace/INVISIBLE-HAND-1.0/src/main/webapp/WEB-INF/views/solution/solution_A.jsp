<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="image/favicon-32x32.png">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/chart.css">
<link rel="stylesheet" href="../resources/css/solution.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<title>보이지 않는 손 레이아웃</title>
</head>
<body>
	<!-- *---container Start---* -->

	<div class="h60px"></div>
	<div class="container-1400 min-100vh con-main">
		<div class="wrap-1000">
		
		<h1 class="A-title">귀하의 기업 솔루션 SBHI 결과입니다</h1>
		
		<div class="tab-box tab1 active" id="chart01">
      <div class="chart-wrapper">
         <jsp:include page="/WEB-INF/views/chart/solution_chart.jsp"/>
      </div>

       
		<div class="solution-desc">
		  <div class="solution-desc-list">
		    <h3><span><i class='fas fa-circle fa-xs' style='color:#00FFF0'></i></span>
		         귀하의 기업 SBHI 지수는 전월대비 <span>[상승/하락]</span>할 예정입니다.</h3>
		    <p>설명설명</p>
		  </div>
		  <div class="solution-desc-list">
		    <h3><span><i class='fas fa-circle fa-xs' style='color:#00FFF0'></i></span>
		          귀사의 취약점은 <span>어쩌구</span>입니다.</h3>
		    <p>설명설명</p>

		  </div>
		  <div class="solution-desc-list">
		    <h3><span><i class='fas fa-circle fa-xs' style='color:#00FFF0'></i></span>
		         귀사의 강점은 <span>어쩌구</span>입니다.</h3>
		    <p>설명설명</p>
		  </div>
		</div>
		
		
		</div>
	</div>

	<!-- **---container End---** -->



</body>
</html>