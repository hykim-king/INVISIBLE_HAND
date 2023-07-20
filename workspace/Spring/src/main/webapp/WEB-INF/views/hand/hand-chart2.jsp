<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/chart2.css">
<title>보이지 않는 손 레이아웃</title>
</head>
<body>
  <div class="scroll-up"><a href="#category_wrap">위로가기</a></div>
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
      </div><!-- **---카테고리랩 End---** -->
      
      <!-- 차트 영역 1234 -->
      <div class="tab-box tab1 active">
        <div class="chart-login">
          <div class="desc">
            <p>인공지능이 예측한 자료 열람하기</p>
          </div>
          <div class="btn">
            <a href="#"><span>로그인</span></a>
          </div>
        </div>
      </div>

      <div class="tab-box tab2">
      </div>
      
      <div class="tab-box tab3">
      </div>
      
      <div class="tab-box tab4">
      </div>

		</div><!-- **---wrap End---** -->
	</div> <!-- **---container End---** -->

	
<script src="js/jquery-3.7.0.js"></script>
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