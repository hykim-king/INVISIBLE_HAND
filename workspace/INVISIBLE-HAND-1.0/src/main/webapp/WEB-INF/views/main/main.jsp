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
              <li><a href="https://n.news.naver.com/mnews/article/055/0001076905?sid=101" class="link">뉴스헤드라인 01</a></li>
              <li><a href="https://n.news.naver.com/mnews/article/018/0005539947?sid=101" class="link">뉴스헤드라인 02</a></li>
              <li><a href="" class="link">뉴스헤드라인 03</a></li>
              <li><a href="" class="link">뉴스헤드라인 04</a></li>
              <li><a href="" class="link">뉴스헤드라인 05</a></li>
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
  
  
 /*  $(document).ready(function() {
	  // 최신 뉴스 데이터를 가져오는 함수
	  function fetchLatestNews() {
	    // 서버로부터 최신 뉴스 데이터를 가져오는 Ajax 요청
	    $.ajax({
	      url: 'newsAPIEndpoint', // 실제 데이터를 제공하는 API 엔드포인트
	      type: 'GET',
	      dataType: 'json',
	      success: function(data) {
	        // 가져온 데이터를 이용하여 슬라이드 헤드라인을 생성
	        createSlideHeadlines(data);
	      },
	      error: function(error) {
	        console.error('뉴스 데이터를 가져오지 못했습니다.', error);
	      }
	    });
	  }

	  // 슬라이드 헤드라인 생성 함수 // 이미 있음
	  function createSlideHeadlines(newsData) {
	    var slideContainer = $('#newsSlide');

	    // newsData에서 최신 뉴스 헤드라인을 가져와서 동적으로 생성
	    for (var i = 0; i < newsData.length; i++) {
	      var headline = newsData[i].title;
	      var link = newsData[i].link;

	      // <a> 태그를 생성하고 헤드라인과 링크를 적용
	      var newsLink = $('<a>', {
	        text: headline,
	        href: link,
	        target: '_blank' // 새 탭에서 링크 열기
	      });

	      // 생성한 <a> 태그를 슬라이드 컨테이너에 추가
	      slideContainer.append(newsLink);
	    }
	  }

	  // 최신 뉴스 데이터를 가져오고 슬라이드 헤드라인 생성
	  fetchLatestNews();
	}); */
	
  noticeRollingEffect();
  
  
  
  //함수로 변경
  function noticeRollingEffect() {
	  var height = $(".news").height(); // 공지사항의 높이값
	  var num = $(".rolling li").length; // 공지사항의 개수
	  var max = height * num; // 총 높이
	  var move = 0; // 초기값을 설정

	  function noticeRolling() {
	    move += height; // move = move + height 값
	    $(".rolling").animate({ "top": -move }, 600, function () {
	      if (move >= max) { // if문을 통해 최대값보다 top값을 많이 올렸다면 다시
	        $(this).css("top", 0); // 0으로
	        move = 0; // 초기값도 다시 0으로
	      };
	    });
	  };

	  noticeRollingOff = setInterval(noticeRolling, 3000); // 1000 = 1초마다 함수 실행
	  $(".rolling").append($(".rolling li").first().clone()); // 마지막이 안보이므로 clone을 통해 첫번째 li 복사
	}  
  
  
  </script>
</body>
</html>