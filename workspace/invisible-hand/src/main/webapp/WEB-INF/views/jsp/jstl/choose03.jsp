<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath }"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
<script src="${CP}/resources/js/util.js"></script>
<title>Insert title here</title>
</head>
<body>
   <div class="container">
    <table class="table table-striped table-hover table-bordered  thead-dark thead-inverse">
      <thread>
        <tr  class="table-primary" >
           <th class="text-center">번호</th>
           <th class="text-center">제목</th>
           <th class="text-center">글쓴이</th>
           <th class="text-center">작성일</th>
           <th class="text-center">조회</th>
        </tr>
      </thread>
      <tbody>
        <c:choose>
         <c:when test="${not empty list &&  list.size() > 0 }">
           <c:forEach var="vo" items="${list}">
		        <tr>
		          <td class="text-center">${vo.getSeq()}</td>
		          <td class="text-left"><a href="#">${vo.title }</a></td>
		          <td class="text-center">${vo.modId }</td>
		          <td class="text-center">${vo.modDt }</td>
		          <td class="text-end">${vo.readCnt}</td>
		        </tr>
		       </c:forEach>          
         </c:when>
         <c:otherwise>
           <tr>
            <td colspan="99"  class="text-center">조회된 데이터가 없습니다.</td>
           </tr>
         </c:otherwise>

        </c:choose>     
      </tbody>
    </table>
   </div> 
</body>
</html>