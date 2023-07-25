<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/common.css">
<style>
.cate{ 
  width:300px;
  position:relative;
  border-style:solid;
  border-width:1px 1px 0 1px;
  border-color:#000;
}
.cate:last-child{
  border-bottom:1px solid #000;
}
.cate .menu{
  display:block;
  position:relative;
  width:100%;
  background:gray;
  height:80px;
}
.cate .menu .menulink{
  display:block;
  color:#fff;
  text-decoration:none;
  width:70%;
  padding-left:15px;
  line-height:80px;
}
.cate .menu .subopen{
  position:absolute;
  width:8px;
  height:8px;
  right:15px;
  padding:0;
  top:0;
  bottom:0;
  margin:auto;
  border-right:1px solid #fff;
  border-bottom:1px solid #fff;
  transform:rotate(45deg);
}

.cate ul li{
  padding:5px 10px;
}
.cate ul li:first-child{
  padding-top:20px;
}
.cate ul li:last-child{
  padding-bottom:20px;
}
</style>
<title>보이지 않는 손 레이아웃</title>
</head>
<body>
  <div class="h60px"></div>
  <div class="container-1400">
    <div class="wrap-1000">
        <div class="accordion">
          <div class="cate">
            <span class="menu">
              <a href="#" class="menulink">회원관리</a>
              <a href="javascript:void(0);" class="subopen"></a>
            </span>
              <ul>
                <li><a href="${CP}/#">회원조회</a></li>
                <li><a href="${CP}/#">회원 강제로 탈퇴</a></li>

              </ul>
          </div>
          <div class="cate">
            <span class="menu">
              <a href="#" class="menulink">게시판관리</a>
              <a href="javascript:void(0);" class="subopen"></a>
            </span>
              <ul>
                <li><a href="${CP}/#">공지사항</a></li>
                <li><a href="${CP}/#">게시글 수정</a></li>
                <li><a href="${CP}/#">게시글 삭제</a></li>
                <li><a href="${CP}/#">문의사항 답변</a></li>
              </ul>
          </div>
            <div class="cate">
            <span class="menu">
              <a href="#" class="menulink">서비스 관리</a>
              <a href="javascript:void(0);" class="subopen"></a>
            </span>
              <ul>
                <li><a href="${CP}/#">구독제 요금 변경</a></li>
                <li><a href="${CP}/#">구독뱃지 관리</a></li>
              </ul>
          </div>
        </div>

    </div><!-- **---wrap End---** -->
  </div> <!-- **---container End---** -->




<script src="../resources/js/jquery-3.7.0.js"></script>
<script>
( function( $ ) {
    $('.cate ul').hide();
    $('.cate .menu .subopen').click(function() {
      if($(this).hasClass('active')){
         $(this).parent().next().slideUp('slow');
         $(this).removeClass('active');
      }else{
        $('.accordion').find('.active').parent().next().slideUp('slow');
        $('.accordion').find('.active').removeClass('active');
        $(this).parent().next().slideDown('slow');
        $(this).addClass('active');
      }     
     
     });
  });
</script>
</body>
</html>