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

.area {
  width: 550px;
  max-height:20px;
  white-space: wrap;
  overflow: hidden;
  text-overflow: ellipsis;  /* 말줄임 적용 */
}


</style>

</head>
<body>
    
    <!-- *---container Start---* -->
    <div class="h60px"></div>
    <div class="container-1200 con-main min-100vh">
	    <div class="wrap-1000 "> 
	    
	    <div class="category-selecter">
	      <a class="selecter-list selecter-list10">${member.memberId}님이 작성한 댓글입니다.</a>
	    </div>
	     <table id="postTable" class="table table-sm table-hover table-borderless">
	         <thead class="post-thead">
	           <tr>
	           		<td class="text-c">No.</td>
	              <td class="text-c">게시글 제목</td>
	              <td class="text-c">댓글 내용</td>
	              <td class="text-c">추천수</td>
	              <td class="text-c">작성일</td>
	           </tr>
	         </thead>
	     
	         <tbody>
	             <c:forEach items="${list}" var="list" varStatus="status">
	                 <tr>
	                 	  <td class="text-c">${status.count}</td>
	                    <td class="text-c">${list.commentNumber}</td>
	                    <td class="text-l"><p class="area">${list.content}</p></td>
	                    <td class="text-c">${list.likes}</td>
	                    <td class="text-c">${list.writtenDate}</td> 
	                 </tr>
	             </c:forEach>
	        </tbody>
	      </table>
	      <div class="h60px"></div>
	    
	    </div>   
    </div>
    <!-- **---container End---** -->

</body>
<script>
</script>
</html>