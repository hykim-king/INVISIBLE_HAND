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
     <table>
         <thead>
           <tr>
                <td style="color: black;">1</td>
                <td style="color: black;">2</td>
                <td style="color: black;">3</td>
                <td style="color: black;">4</td>
                <td style="color: black;">5</td>
                <td style="color: black;">6</td>
                <td style="color: black;">7</td> 
                <td style="color: black;">8</td>
           </tr>
         </thead>
     
         <tbody>
             <c:forEach items="${list}" var="list">
                 <tr>
                      <td style="color: black;">${list.postNumber}</td>
                      <td style="color: black;">${list.nickname}</td>
                      <td style="color: black;">${list.title}</td>
                      <td style="color: black;">${list.content}</td>
                      <td style="color: black;">${list.writtenDate}</td>
                      <td style="color: black;">${list.likes}</td>
                      <td style="color: black;">${list.views}</td> 
                      <td style="color: black;">${list.categoryNumber}</td> 
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