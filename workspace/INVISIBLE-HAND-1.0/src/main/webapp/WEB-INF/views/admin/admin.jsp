<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/admin.css">

<title>보이지 않는 손 레이아웃</title>
</head>
<body>

  <!-- *---container Start---* -->
  <!-- accordion 메뉴 -->
  <div class="h60px"></div>
  <div class="admin-con">
    <div class="accordion">
      <div class="cate">
        <span class="menu">
          <a href="#" class="menulink">회원관리</a>
          <a href="javascript:void(0);" class="subopen"></a>
        </span>
        <ul>
          <li>
            <a href="${CP}/admin/adminSearch.do">회원조회</a>
          </li>
        </ul>
      </div>
      <div class="cate">
        <span class="menu">
          <a href="#" class="menulink">게시판관리</a>
          <a href="javascript:void(0);" class="subopen"></a>
        </span>
        <ul>
          <li><a href="${CP}/post/postList.do?categoryNumber=10">자유게시판</a></li>
          <li><a href="${CP}/post/postList.do?categoryNumber=20">Q&A</a></li>
          <li><a href="${CP}/post/postList.do?categoryNumber=30">공지사항</a></li>
        </ul>
      </div>
      <div class="cate">
        <span class="menu">
          <a href="#" class="menulink">서비스 관리</a>
          <a href="javascript:void(0);" class="subopen"></a>
        </span>
        <ul>
          <li>
            <a href="${CP}/admin/adminSubChargeChange.do">구독제 요금 변경</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <!-- accordion 메뉴 end -->

  <p id="pagetop" class="inner">
    <a href="#">↑</a>   
  </p>
  <script src="../resources/js/jquery-3.7.0.js"></script>
  <script>
    (function($) {
      function openMenu($menu) {
        $menu.addClass('active');
        $menu.find('ul').slideDown('slow');
      }

      function closeMenu($menu) {
        $menu.removeClass('active');
        $menu.find('ul').slideUp('slow');
      }

      $('.cate ul').hide();

      $('.accordion .cate').each(function() {
        openMenu($(this));
      });

      $('.cate .menu .subopen').click(function(event) {
        event.stopPropagation();

        var $parent = $(this).parent().parent();
        var isActive = $parent.hasClass('active');

        if (isActive) {
          closeMenu($parent);
        } else {
          openMenu($parent);
        }
      });
    })(jQuery);
  </script>
</body>
</html>