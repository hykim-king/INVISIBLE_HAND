<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>

<body>
   <!-- *---header Start---* -->
  <header class="header">
    <div class="inner">
      <div class="logo">
       <a href="${CP}/main/main.do"><img src="../resources/image/pngaaa.com-589654.png" alt="logo" /></a>
      </div>
        <nav class="gnb_wrap">
          <ul class="global_nav_bar">
              <li><a href="${CP}/chart/chart.do">차트</a></li>
              <li><a href="${CP}/solution/solution_Q.do">솔루션</a></li>
              <li><a href="${CP}/post/postList.do">커뮤니티</a></li>

          </ul>
          <ul class="local_nav_bar">
              <li>
                  <ul class="sub-menu">
                      <li>서브메뉴1</li>
                      <li>서브메뉴1</li>
                      <li>서브메뉴1</li>
                      <li>서브메뉴1</li>
                  </ul>
              </li>
              <li>
                  <ul class="sub-menu">
                      <li>서브메뉴2</li>
                      <li>서브메뉴2</li>
                      <li>서브메뉴2</li>
                      <li>서브메뉴2</li>
                  </ul>
              </li>
              <li>
                  <ul class="sub-menu">
                      <li>서브메뉴3</li>
                      <li>서브메뉴3</li>
                      <li>서브메뉴3</li>
                      <li>서브메뉴3</li>
                  </ul>
              </li>
          </ul>
        </nav>
        
      <div class="login">
       <a href="${CP}/member/memberLogin.do"><span>로그인</span></a>
      </div>
    </div>
  </header>
  
  <!-- **---header End---** -->