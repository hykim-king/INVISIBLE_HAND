<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="image/favicon-32x32.png">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/mypage2.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<title>마이페이지 입니다</title>
<style>
#paymentList {
    list-style: none;
    padding-left: 0;
    margin: 0; 
}

#paymentList li {
    margin-bottom: 5px;
}
</style>

</head>
<body>
    
    <!-- *---container Start---* -->
    <input type="hidden" id= "uemail" value="${member.email}">
    <div class="h60px"></div>
    <div class="container-1400 min-100vh con-login">
    <p>[닉네임]님이 적은 댓글입니다.</p>
     <table>
         <thead>
           <tr>
           		<td style="color: black;">No</td>
                <td style="color: black;">댓글 번호(게시글 제목이 와야함)</td>
                <td style="color: black;">댓글 내용</td>
                <td style="color: black;">댓글 추천수</td>
                <td style="color: black;">댓글 작성시간</td>
           </tr>
         </thead>
     
         <tbody>
             <c:forEach items="${list}" var="list" varStatus="status">
                 <tr>
                 	  <td style="color: black;">${status.count}</td>
                      <td style="color: black;">${list.commentNumber}</td>
                      <td style="color: black;">${list.content}</td>
                      <td style="color: black;">${list.likes}</td>
                      <td style="color: black;">${list.writtenDate}</td> 
                 </tr>
             </c:forEach>
        </tbody>
         </table>
    </div>
    <!-- **---container End---** -->

</body>
<script>
</script>
</html>