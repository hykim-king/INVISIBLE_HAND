<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- error  page선언 
     isErrorPage="true"
--%>
<%@ page isErrorPage="true" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath }"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${CP}/resources/css/board.css">
<title>게시판</title>
</head>
<body>
  <!-- 소 제목 -->
  <div class="page-title">
    <h2>Exception</h2>
  </div>
  <!--// 소 제목 end ------------------------------------------------------------->
  
  <!-- contents  -->
  <div class="container">  

    <table class="board-table">
      <thread>
        <tr>
           <th>구분</th>
           <th>설명</th>
        </tr>
      </thread> 
      <tbody>
        <tr>
          <!-- 
          requestScope
           -->
          <td class="l-txt">상태코드</td>
          <td class="l-txt"><c:out value="${requestScope['javax.servlet.error.status_code']}"></c:out></td>
        </tr>
        <tr>
          <td class="l-txt">예외이름</td>
          <td class="l-txt"><c:out value="${requestScope['javax.servlet.error.exception']}"></c:out></td>
        </tr>
        <tr>
          <td class="l-txt">메시지</td>
          <td class="l-txt"><c:out value="${requestScope['javax.servlet.error.message']}"></c:out></td>
        </tr>          
        <tr>
          <td class="l-txt">요청URI</td>
          <td class="l-txt"><c:out value="${requestScope['javax.servlet.error.request_uri']}"></c:out></td>
        </tr>                   
      </tbody>
      
        
    </table>

  </div>
  <!--// contents  ------------------------------------------------------------>
</body>
</html>