<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
<meta charset="UTF-8">
<link rel="icon" href="image/favicon-32x32.png">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/mypage.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<!-- *---container Start---* -->
<body>
<div class="h60px"></div>
<div class="container-1400 min-100vh con-login">
  <div class="mypage-wrap">
    <div class="box-area">

      <div class="mybox mybox01">
        <div class="line3px black"></div>
        <div class="line1px black"></div>
        <h2>회원정보</h2>
        <div class="my-info">
          <div class="my-grade">
            <div class="myid"></div>
            <div class="bedge"></div>
          </div>
          <div class="my-info-list">
            <span><a href="${CP}/mypage/mypageUpdate.do">회원정보 수정</a></span>
            <span><a href="${CP}/mypage/mypageDelete.do">회원 탈퇴</a></span>
            <span><a href="javascript:doLogout('${sessionScope.member.nickName}');">로그아웃</a></span>
          </div>
        </div>
        <div class="line1px black"></div>
        <div class="line3px black"></div>
      </div>
      
      <div class="mybox mybox02">
        <div class="line3px black"></div>
        <div class="line1px black"></div>
        <h2>나의활동</h2>
        <div class="my-info">
          <div class="my-info-list">
            <span><a href="${CP}/mypage/mypost.do?nickname=${member.nickName}">나의 게시글 보기</a></span>
            <span><a href="${CP}/mypage/mycomment.do?nickname=${member.nickName}">나의 댓글 보기</a></span>
            <span><a href="${CP}/mypage/myqna.do?nickname=${member.nickName}">나의 문의글 보기</a></span>
          </div>
        </div>
        <div class="line1px black"></div>
        <div class="line3px black"></div>
      </div>
      
      <div class="mybox mybox03">
        <div class="line3px black"></div>
        <div class="line1px black"></div>
        <h2>구독관리</h2>
        <div class="my-info">
          <div class="my-info-list">  
            <span><a href="${CP}/mypage/mypagePayment.do?buyerEmail=${member.email}">결제 정보</a></span>
          </div>
        </div>
        <div class="line1px black"></div>
        <div class="line3px black"></div>
      </div>

    </div>
  </div>
  <!-- **---wrap End---** -->
</div>
<!-- **---container End---** -->
</body>
<script>
  function doLogout(name) {
    if (confirm(name + '님 로그아웃하시겠습니까?') == false)
      return;
    console.log("doLogout");

    window.location.href = "${CP}/member/logout.do";
  }
  
  $('.mybox').hover(
        function() {
            $(this).css('border-radius', '20px');
            $(this).find('.line1px').css('background-color', '#6B53FF');
            $(this).find('.line3px').css('background-color', '#6B53FF');
        },
        function() {
            $(this).css('border-radius', '');
            $(this).find('.line1px').css('background-color', ''); // Reset to initial color
            $(this).find('.line3px').css('background-color', ''); // Reset to initial color
        }
    );
</script>