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
<link rel="stylesheet" href="../resources/css/post.css">
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
    <div class="wrap-1000 ">
    
      <div class="category-selecter">
        <a class="selecter-list selecter-list10" >${member.memberId}님의 결제정보입니다</a>
      </div>
			 <table id="postTable" class="table table-sm table-hover table-borderless">
		
			     <thead class="post-thead">
			       <tr>
		                <th class="text-c">No</th>
		                <th class="text-c">결제 ID</th>
		                <th class="text-c">품목</th>
		                <th class="text-c">금액</th>
		                <th class="text-c">결제등록 이메일</th>
		                <th class="text-c">구매자 이름</th>
		                <th class="text-c">구매자 전화번호</th> 
		           </tr>
			     </thead>
		     
				 <tbody>
					 <c:forEach items="${list}" var="list" varStatus="status">
						 <tr>
							  <td class="text-c">${status.count}</td>
							  <td class="text-c">${list.merchantUid}</td>
							  <td class="text-c">${list.name}</td>
							  <td class="text-c">${list.amount}</td>
							  <td class="text-c">${list.buyerEmail}</td>
							  <td class="text-c">${list.buyerName}</td>
							  <td class="text-c">${list.buyerTel}</td> 
						 </tr>
					 </c:forEach>
				</tbody>
				 </table>
    </div>
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