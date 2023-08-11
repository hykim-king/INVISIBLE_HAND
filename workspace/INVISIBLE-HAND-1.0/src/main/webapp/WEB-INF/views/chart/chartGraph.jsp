<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" type="image/x-icon" href="/ehr/favicon.ico">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/chart.css">
<title>보이지 않는 손 레이아웃</title>
</head>
<body>
  <!-- *---container Start---* -->

  <div class="h60px"></div>
  <div class="container-1200 con-main">
    <div class="wrap-1000">
      <!-- *---차트 카테고리---* -->
      <div class="category_wrap">
        <div class="categorybox active" data-tab="tab1">
          <div class="chart01">
            <p>chart01</p>
          </div>
        </div>
        <div class="categorybox" data-tab="tab2">
          <div class="chart02">
            <p>chart02</p>
          </div>
        </div>
        <div class="categorybox" data-tab="tab3">
          <div class="chart03">
            <p>chart03</p>
          </div>
        </div>
        <div class="categorybox" data-tab="tab4">
          <div class="chart04">
            <p>chart04</p>
          </div>
        </div>
      </div>
      <!-- **---카테고리랩 End---** -->

      <!-- 차트 영역 1234 -->
      <div class="tab-box tab1 active">
      <div>
          <jsp:include page="chart01.jsp"/>
      </div>
       
       <div>
          <select id="mainCategorySelect" name="mainCategory">
                <option value="비제조업" selected="selected">비제조업</option>
                <option value="제조업">제조업</option>
          </select>
          <select id="subCategorySelect" name="subCategory">
                <option value="-" selected="selected"></option>
                <option value="건설업">건설업</option>
                <option value="서비스업">서비스업</option>
          </select>
          <button id="submitButton">Submit</button>
        </div>
      </div>
     
      <div class="tab-box tab2">
        <div id="line_chart2"></div>
      </div>

      <div class="tab-box tab3">
        <div id="line_chart3"></div>
      </div>

      <div class="tab-box tab4">
        <div id="chart_div"></div>
      </div>

    </div>
    <!-- **---wrap End---** -->
  </div>
  <!-- **---container End---** -->


<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="../resources/js/jquery-3.7.0.js"></script>
<script>
$(".categorybox").click(function() {
   $(this).siblings().removeClass("active");
   $(this).addClass("active");
   // $("html, body").scrollTop($(".tab-box").height());
   let clickTab = $(this).attr("data-tab");
   $(".tab-box").removeClass("active");
   $("." + clickTab).addClass("active");
});
</script>
</body>
</html>