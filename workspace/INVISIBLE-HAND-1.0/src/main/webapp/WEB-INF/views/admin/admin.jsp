<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="../resources/css/admin.css">

<div class="h60px"></div>
<div class="container-1400">
  <div class="wrap-1000">
    <div class="accordion">
    
      <!-- 회원 관리 -->
      <div class="cate">
        <span class="menu">
          <a href="#" class="menulink">회원관리</a>
          <a href="javascript:void(0);" class="subopen"></a>
        </span>
        <ul>
          <li><a href="#">회원조회</a></li>
          <li><a href="#">회원 강제로 탈퇴</a></li>
        </ul>
      </div>
      
      <!-- 게시판 관리 -->
      <div class="cate">
        <span class="menu">
          <a href="#" class="menulink">게시판관리</a>
          <a href="javascript:void(0);" class="subopen"></a>
        </span>
        <ul>
          <li><a href="#">공지사항</a></li>
          <li><a href="#">게시글 수정</a></li>
          <li><a href="#">게시글 삭제</a></li>
          <li><a href="#">문의사항 답변</a></li>
        </ul>
      </div>
      
      <!-- 서비스 관리 -->
      <div class="cate">
        <span class="menu">
          <a href="#" class="menulink">서비스 관리</a>
          <a href="javascript:void(0);" class="subopen"></a>
        </span>
				<ul>
				  <li><a href="#">구독제 요금 변경</a></li>
				  <li><a href="#">구독뱃지 관리</a></li>
				</ul>
      </div>
    </div>
    
    <div class="contents">
      <div>회원 정보 출력</div>
      <ul>
        <li>한명</li>
        <li>두명</li>
        <li>세명</li>
        <li>네명</li>
        <li>다섯명</li>
        <li>여섯명</li>
      </ul>
    </div>
  </div><!-- **---wrap End---** -->
</div> <!-- **---container End---** -->




<script src="../resources/js/jquery-3.7.0.js"></script>
<script>
function( $ ) {
	$('.cate ul').hide();
	$('.cate .menu .subopen').click(function() {
	  if($(this).hasClass('active')){
	     $(this).parent().next().slideUp('slow');
	     $(this).removeClass('active');
	  } else{
	    $('.accordion').find('.active').parent().next().slideUp('slow');
	    $('.accordion').find('.active').removeClass('active');
	    $(this).parent().next().slideDown('slow');
	    $(this).addClass('active');
	  }     
	 
	 });
});
</script>