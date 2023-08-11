<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 추가 나중에 필요 없을 때 삭제 -->
<link rel="shortcut icon" type="image/x-icon" href="/ehr/favicon.ico">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/chart.css">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="../resources/js/jquery-3.7.0.js"></script>
<!--  -->
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
<title>Insert title here</title>
</head>
<body>
      <section class="sec02 sec-chart">차트 영역입니다
        <div class="tab-box tab1 active">
          <div id="line_chart1" >
          </div>
        </div>
      </section>
</body>
  <script src="../resources/js/mainChart.js"></script> 
</html>