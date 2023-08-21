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

    <div class="h60px"></div>
    <div class="container-1200 con-main min-100vh">
	     <div class="wrap-1000 "> 
		           
      <div class="category-selecter">
        <a class="selecter-list selecter-list10" >${member.memberId}님이 작성한 게시글 입니다</a>
      </div>
		     
		     <table id="postTable" class="table table-sm table-hover table-borderless">
		         <thead class="post-thead">
		           <tr>
		           	    <td class="text-c">No.</td>
		                <td class="text-c">게시번호</td>
		                <td class="text-c">제목</td>
		                <td class="text-c">글쓴이</td>
		                <td class="text-c">작성일</td>
		                <td class="text-c">조회수</td>
		           </tr>
		         </thead>
		     
		         <tbody>
		             <c:forEach items="${list}" var="list" varStatus="status">
		                 <tr>
		                    <td class="text-c">${status.count}</td>
		                    <td class="text-c">${list.postNumber}</td>
		                    <td class="text-l">${list.title}[${list.likes}]</td>
		                    <td class="text-c">${list.nickname}</td>
		                    <td class="text-c">${list.writtenDate}</td>
		                    <td class="text-c">${list.views}</td> 
		                 </tr>
		             </c:forEach>
		        </tbody>
		     </table>
	     
	     
	     
	     </div>
    </div>
    <!-- **---container End---** -->
</body>
<script>
</script>
</html>