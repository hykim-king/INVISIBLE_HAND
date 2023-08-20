<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
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
        <div class="categorybox active" data-tab="tab1" id="chart01">
          <div class="chart01">
            <p>중소기업 경기전망조사(SBHI)</p>
          </div>
        </div>
        <div class="categorybox" data-tab="tab2" id="chart02">
          <div class="chart02">
            <p>매출액규모별분포</p>
          </div>
        </div>
        <div class="categorybox" data-tab="tab3" id="chart03">
          <div class="chart03">
            <p>상장기업ㆍ부가가치</p>
          </div>
        </div>
        <div class="categorybox" data-tab="tab4" id="chart04">
          <div class="chart04">
            <p>성장성</p>
          </div>
        </div>
      </div>
      <!-- **---카테고리랩 End---** -->

      <!-- 차트 영역 1234 -->
<c:choose>
 <c:when test="${null != sessionScope.member && not empty sessionScope.member}">
      <div class="tab-box tab1 active" id="chart01">
            <div class="chart-wrapper">
              <jsp:include page="/WEB-INF/views/chart/chart01.jsp"/>
            </div>              
       <div class="chart-nav">
          <select id="mainCategorySelect" name="mainCategory">
                <option value="비제조업" selected="selected">비제조업</option>
                <option value="제조업" >제조업</option>
          </select>
          <select id="subCategorySelect" name="subCategory">
          </select>
          <button id="submitButton" style="display: none;"></button>
          <button id="restoreButton">모두 보기</button> <!-- Restore 버튼 추가 -->
        </div>
      </div> 
    
      <div class="tab-box tab2" id="chart02">
        <div class="chart-wrapper">
          <jsp:include page="/WEB-INF/views/chart/chart02.jsp"></jsp:include>
        </div>
         <div class="chart-nav">
	          <select id="mainCategorySelect2" name="mainCategory2">
	                <option value="제조업" selected="selected">제조업</option>
	          </select>
	          <select id="subCategorySelect2" name="subCategory2">
	          </select>
	          <button id="submitButton2" style="display: none;"></button>
	          <button id="restoreButton2">모두 보기</button> <!-- Restore 버튼 추가 -->
          </div>
      </div> 

      <div class="tab-box tab3" id="chart03">  
        <div class="chart-wrapper">
          <jsp:include page="/WEB-INF/views/chart/chart03.jsp"></jsp:include>
        </div>
         <div class="chart-nav">
            <select id="mainCategorySelect3" name="mainCategory3">
                  <option value="제조업" selected="selected">제조업</option>
            </select>
            <select id="subCategorySelect3" name="subCategory3">
            </select>
            <button id="submitButton3" style="display: none;"></button>
             <button id="restoreButton3">모두 보기</button> <!-- Restore 버튼 추가 -->
          </div>
      </div>

     <div class="tab-box tab4" id="chart04">       
         <div class="chart-wrapper">
          <jsp:include page="/WEB-INF/views/chart/chart04.jsp"></jsp:include>
        </div>
         <div class="chart-nav">
            <select id="mainCategorySelect4" name="mainCategory4">
                  <option value="제조업" selected="selected">제조업</option>
            </select>
            <select id="subCategorySelect4" name="subCategory4">
            </select>
            <button id="submitButton4" style="display: none;"></button>
             <button id="restoreButton4">모두 보기</button> <!-- Restore 버튼 추가 -->
          </div>
     </div>
 </c:when>
   <c:otherwise>
            <div class="chart-wrapper" style="opacity: 0.5; filter: blur(5px);" onclick='doLogin()'>
              <jsp:include page="/WEB-INF/views/chart/chart01.jsp"/>
            </div>
            <div class="chart-login">
              <div class="desc">
                <p>인공지능이 예측한 자료 열람하기</p>
              </div>
              <div class="btn">
                <a href="${CP}/member/memberLogin.do"><span>로그인</span></a>
              </div>
            </div>
          </c:otherwise>
        </c:choose>
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

        let clickTab = $(this).attr("data-tab");
        $(".tab-box").removeClass("active");
        $("." + clickTab).addClass("active");
    });

</script>
</body>
</html>