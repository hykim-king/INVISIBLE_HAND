<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      <section class="sec01 sec-news">뉴스 헤드라인 영역입니다
        <div class="news-slide">
          <div class="news">
            <ul class="rolling">
              <li><a href="#" class="link">뉴스헤드라인 01</a></li>
              <li><a href="#" class="link">뉴스헤드라인 02</a></li>
              <li><a href="#" class="link">뉴스헤드라인 03</a></li>
              <li><a href="#" class="link">뉴스헤드라인 04</a></li>
              <li><a href="#" class="link">뉴스헤드라인 05</a></li>
            </ul>
          </div>
        </div>      
      </section>
      <section class="sec02 sec-chart">차트 영역입니다

      
      </section>
      <section class="sec03 sec-board">커뮤니티 영역입니다</section>
    </div><!-- **---wrap End---** -->
    <div class="rank-area">
      <ul>
        <li>랭킹순서대로</li>
        <li>랭킹순서대로</li>
        <li>랭킹순서대로</li>
        <li>랭킹순서대로</li>
        <li>랭킹순서대로</li>
        <li>랭킹순서대로</li>
        <li>랭킹순서대로</li>
        <li>랭킹순서대로</li>
        <li>랭킹순서대로</li>
      </ul>
    </div>
  </div>
	<!-- **---container End---** -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

  <script>
  $(document).ready(function(){
	  noticeRollingEffect()
	  
	  function noticeRollingEffect(){
    var height =  $(".news").height(); //공지사항의 높이값
    var num = $(".rolling li").length; // 공지사항의 개수
    var max = height * num; //총 높이
    var move = 0; //초기값을 설정
    function noticeRolling(){
      move += height; // move = move + height 값
      $(".rolling").animate({"top":-move},600,function(){ 
        if( move >= max ){ //if문을 통해 최대값보다 top값을 많이 올렸다면 다시
          $(this).css("top",0); //0으로
          move = 0; //초기값도 다시 0으로
        };
      });
    };
    noticeRollingOff = setInterval(noticeRolling,3000); //1000 = 1초마다 함수 실행
    $(".rolling").append($(".rolling li").first().clone()); //마지막이 안보이므로 clone을 통해 첫번째li 복사
    
	  }
	  
	  
  });
 
  </script>
</body>
</html>