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
                <td>No</td>
                <td>결제 ID</td>
                <td>품목</td>
                <td>금액</td>
                <td>결제등록 이메일</td>
                <td>구매자 이름</td>
                <td>구매자 전화번호</td> 
           </tr>
	     </thead>
     
		 <tbody>
			 <c:forEach items="${list}" var="list" varStatus="status">
				 <tr>
					  <td style="color: black;">${status.count}</td>
					  <td style="color: black;">${list.merchantUid}</td>
					  <td style="color: black;">${list.name}</td>
					  <td style="color: black;">${list.amount}</td>
					  <td style="color: black;">${list.buyerEmail}</td>
					  <td style="color: black;">${list.buyerName}</td>
					  <td style="color: black;">${list.buyerTel}</td> 
				 </tr>
			 </c:forEach>
		</tbody>
		 </table>
    </div>
	<!-- **---container End---** -->
</body>
<script>
$(document).ready(function(){
	var uemail = $("#uemail").val()
	console.log(uemail);
	
	
});
</script>
</html>