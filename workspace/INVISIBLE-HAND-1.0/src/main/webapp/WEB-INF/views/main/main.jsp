<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="shortcut icon" type="image/x-icon" href="/ehr/favicon.ico">
  <link rel="stylesheet" href="../resources/css/common.css">
  <link rel="stylesheet" href="../resources/css/chart.css">
  <link rel="stylesheet" href="../resources/css/main.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
  <!-- 랭킹 화살표를 위해 추가 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <title>보이지 않는 손 레이아웃</title>
</head>
<body>

  <!-- *---container Start---* -->
  <div class="h60px"></div>
  <div class="container-1400 con-main">
    <div class="wrap-1000 main-wrap">
    
      <h4>주요 뉴스 헤드라인</h4>  
      <section class="sec01 sec-news">
        <div class="news-slide">
          <div class="news">
            <ul class="rolling" id="newsHeadlines">
              <!-- 여기에 동적으로 헤드라인이 추가됩니다. -->
            </ul>
          </div>
        </div>
      </section>
      
      <h4>중소기업 경기전망조사(SBHI)</h4>
      <section class="sec02 sec-chart">
        <div class="chart-nav">
				  <select id="mainCategorySelect" name="mainCategory">
						    <option value="비제조업" selected="selected">비제조업</option>
						    <option value="제조업">제조업</option>						    
					</select>
				  <select id="subCategorySelect" name="subCategory" style="display: none">
          </select>
					<button id="submitButton" style="display: none"></button>
					<button id="restoreButton">초기화</button> <!-- Restore 버튼 추가 -->
				</div>
				

				<div class="chart-wrapper">
				  <jsp:include page="/WEB-INF/views/chart/chart01.jsp"/>
				</div>

      </section>
      
      <h4>추천 게시글</h4>
      <section class="sec03 sec-board">
       
	      <div class="main-post-category">
	        <a href = "${CP}/post/postList.do?categoryNumber=10">자유게시판으로 이동</a>	        	        
	        <a href = "${CP}/post/postList.do?categoryNumber=20">Q&A 게시판으로 이동</a>	     
	      </div>
	      
	      <div>
		       <table class="main-post-table">
		          <thead class="main-post-thead">
		            <tr width="950">
			            <th width="50px">No.</th>
			            <th width="480px">제목</th>
			            <th width="110px">글쓴이</th>
			            <th width="190px">작성일</th>
			            <th width="60px">조회수</th>
			            <th width="60px">추천수</th>
		            </tr>
		          </thead>
		          <tbody id="tableBody" class="main-post-tbody">
							<!-- 여기에 데이터가 동적으로 추가될 예정입니다 -->
							</tbody>							
						</table>	
	      </div>
      </section>
    </div>
    <!-- **---wrap End---** -->
		<div class="user-rank-wrap">
		  <div class="user-area">
			  <div class="user-box">
		       <c:choose>
            <c:when test="${null != sessionScope.member && not empty sessionScope.member}">
    
					    <div class="line1px black"></div>           
              <div class="line3px black"></div>
			        <p class="text-c">${sessionScope.member.nickName}님 환영합니다!</p> 
              <div class="line3px black"></div>
					    <div class="line1px black"></div>  
					    <div class="user-mypage">
			          <p class="text-c"><a href="${CP}/mypage/mypost.do?nickname=${member.nickName}">나의 게시글</a></p>
			          <p class="text-c"><a href="${CP}/mypage/myqna.do?nickname=${member.nickName}">나의 문의글</a></p>
					    </div>         
					    <div class="user-btn">
					      <p style="width: 100%;"><a style="width: 100%;" href="javascript:doLogout('${sessionScope.member.nickName}');">로그아웃</a></p>	    
					    </div>
            </c:when>
            <c:otherwise>
              <div class="line1px black"></div>           
              <div class="line3px black"></div>
              <p class="text-c">로그인해주세요</p> 
              <div class="line3px black"></div>
              <div class="line1px black"></div>
					    <div class="user-btn">
					      <p><a href="${CP}/member/memberLogin.do">로그인</a></p>
					      <p><a href="${CP}/member/memberJoin.do;">회원가입</a></p>	    
					    </div>
            </c:otherwise>
          </c:choose>
			  </div>
		  
		    

		  </div>
		
		
		
			<div class="rank-area">
	    <h4>업종별 솔루션 분석 빈도</h4>
		    <div class="tab">
	        <button class="tab-button active" data-tab="비제조업" id="비제조업">비제조업</button>
	        <button class="tab-button" data-tab="제조업" id="제조업">제조업</button>
	      </div>      
	        <table class="main-rank-table">
	            <thead>
	                <tr>
	                <th>등수</th>
	                <th>업종명</th>                
	                <th>등수변동</th>
	                <th></th>
	                </tr>
	           </thead>
	           <tbody id="rankBody">
	            <!-- 여기에 데이터가 동적으로 추가될 예정입니다 -->
	           </tbody>
	        </table>   
	    </div>
	    
	    <div class="figure-area">
	     <img src="../resources/image/advertise.png" alt="이미지 설명" width="300" height="350">  
	    </div>
		</div>

  
    
  </div>
  <!-- **---container End---** -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script src="../resources/js/jquery-3.7.0.js"></script>
  <!-- main페이지 기능 관련 js -->
  <script src="../resources/js/mainBoard.js"></script> <!-- 게시판 -->
  <script src="../resources/js/mainNews.js"></script>  <!-- 뉴스 -->
  <script src="../resources/js/mainRank.js"></script>  <!-- 랭킹 -->
  <!-- main페이지 기능 관련 js end -->
  
<script>

$(document).ready(function() { 
	const mainCategorySelect = document.getElementById("mainCategorySelect");
	mainCategorySelect.addEventListener("change", function() {
	    submitButton.click();
	});
	

});
</script>
</body>
</html>
