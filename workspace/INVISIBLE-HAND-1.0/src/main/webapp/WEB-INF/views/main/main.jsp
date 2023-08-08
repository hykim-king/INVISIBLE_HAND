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
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
  <title>보이지 않는 손 레이아웃</title>
</head>
<body>

  <!-- *---container Start---* -->
  <div class="h60px"></div>
  <div class="container-1400 min-100vh con-main">
    <div class="wrap-1000">
      <section class="sec01 sec-news">
                     뉴스 헤드라인 영역입니다
        <div class="news-slide">
          <div class="news">
            <ul class="rolling" id="newsHeadlines">
              <!-- 여기에 동적으로 헤드라인이 추가됩니다. -->
            </ul>
          </div>
        </div>
      </section>
      
      <section class="sec02 sec-chart">차트 영역입니다
	      <div class="tab-box tab1 active">
	        <div id="line_chart1" >
	        </div>
	      </div>
      </section>
      
      <section class="sec03 sec-board">커뮤니티 영역입니다
       
	      <div>
	        <a href = "${CP}/post/postList.do?categoryNumber=10">자유게시판</a>	        	        
	        <a href = "${CP}/post/postList.do?categoryNumber=30">Q&A</a>	     
	      </div>
	      
	      <div>
		       <table>
		          <thead>
		            <tr>
		            <th>No.</th>
		            <th>제목</th>
		            <th>글쓴이</th>
		            <th>작성일</th>
		            <th>조회수</th>
		            <th>추천수</th>
		            </tr>
		          </thead>
		          <tbody id="tableBody">
							<!-- 여기에 데이터가 동적으로 추가될 예정입니다 -->
							</tbody>							
						</table>	
	      </div>
      </section>
    </div>
    <!-- **---wrap End---** -->
    <div class="rank-area">
      <h1>Main Page</h1>
				    <p>RankVO data:</p>
				    <p>Rank: ${inVO.rank}</p>
				    <p>Name: ${inVO.name}</p>   
    </div>
  </div>
  <!-- **---container End---** -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="../resources/js/mainChart.js"></script> 
  <script src="../resources/js/mainBoard.js"></script>
  <script src="../resources/js/mainNews.js"></script>
  <script>
  $(document).ready(function() {
	  
	  
  });
  
  </script>
</body>
</html>
