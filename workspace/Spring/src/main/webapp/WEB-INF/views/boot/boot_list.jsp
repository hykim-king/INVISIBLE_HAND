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
  <!-- Content here -->

  <!-- 제목 -->
  <div class="page-header">
    <h2 >게시제목</h2>
  </div>
  <!--// 제목 ------------------------------------------------------------------->
  
  <!-- 검색 form  justify-content-end(오른쪽), justify-content-center, justify-content-start(왼쪽) -->
  <form>
		<div class="row g-1 d-flex justify-content-end ">
		  <div class="col-auto">
	      <select class="form-select">
	        <option>전체</option>
	        <option>제목</option>
	        <option>내용</option>  
	        <option>제목+내용</option>
	        <option>작성자</option>
	      </select>
	    </div>  
	    <div class="col-auto">
	      <input type="text" name="searchWord" placeholder="검색어를 입력 하세요" class="form-control">
	    </div>
	    <div class="col-auto">  
	      <select class="form-select ">
	        <option value="10" >10</option>
	        <option value="20" >20</option>
	        <option value="30" >30</option>
	        <option value="50" >50</option>  
	        <option value="100" >100</option>
	        <option value="200" >200</option>
	      </select>
	    </div>  
	    <div class="col-auto">  
	      <a href="#" class="btn btn-primary" id="doRetrieve" >조회</a>
	      <a href="#" class="btn btn-primary" >등록</a>  
      </div>		  
		</div>  
  </form>
  <div id="dyContainer">
  
  </div>
  <!--// 검색 form ------------------------------------------------------------------->
  <table class="table table-striped table-hover table-bordered  thead-dark thead-inverse">
      <thead>
        <tr  class="table-primary" >
           <th>번호</th>
           <th>제목</th>  
           <th>글쓴이</th>
           <th>작성일</th> 
           <th>추천</th>
           <th>조회</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="text-center">1</td>
          <td class="text-left"><a href="#">개인정보 처리방침 변경안내</a></td>
          <td class="text-center">이상무</td>
          <td class="text-center">2023-06-16</td>
          <td class="text-end">1</td>
          <td class="text-end">10</td>
        </tr>
        <tr>
          <td class="text-center">2</td>
          <td class="text-left"><a href="#">개인정보 처리방침 변경안내</a></td>
          <td class="text-center">이상무</td>
          <td class="text-center">2023-06-16</td>
          <td class="text-end">1</td>
          <td class="text-end">10</td>
        </tr>
        <tr>
          <td class="text-center">3</td>
          <td class="text-left"><a href="#">개인정보 처리방침 변경안내</a></td>
          <td class="text-center">이상무</td>
          <td class="text-center">2023-06-16</td>
          <td class="text-end">1</td>
          <td class="text-end">10</td>
        </tr>              
      </tbody>
    </table>  
  
    <!-- 페이징 -->
    <div class="d-flex justify-content-center">
			<nav aria-label="Page navigation example">
			  <ul class="pagination">
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li class="page-item"><a class="page-link" href="#">1</a></li>
			    <li class="page-item"><a class="page-link" href="#">2</a></li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			</nav>    
    </div>
    <!--// 페이징 ---------------------------------------------------------------->
    

    
    
</div>
<script>
   $("#doRetrieve").on("click",function(){
	   let dHtml = "<li class='newClass'>1</li>";
	   dHtml += "<li class='newClass'>2</li>";
	   dHtml += "<li class='newClass'>3</li>";
	   
	   $("#dyContainer").append(dHtml);
   });
   
   $("#dyContainer .newClass").on("click",function(){
	   alert('newClass'+$('.newClass').val());
	   
   });
</script>
</body>
</html>