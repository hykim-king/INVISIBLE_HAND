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
  <!-- contents  -->
  <div class="container">
  <!-- 소 제목 -->
  <div class="page-title">
    <h2>자유게시판-등록</h2>
  </div>
  
  <!--// 소 제목 end ------------------------------------------------------------->

    <!-- 버튼 -->
    <div class="row g-1 d-flex justify-content-end">
      <div class="col-auto">
	      <input type="button" class="btn btn-primary" value="목록">
	      <input type="button" class="btn btn-primary" value="등록">
	      <input type="button" class="btn btn-primary" value="수정">
	      <input type="button" class="btn btn-primary" value="삭제">
      </div>
    </div>
    <!--// 버튼 ----------------------------------------------------------------->
    <form action="#"  name="reg_frm" id="reg_frm">
       <input type="hidden" name="word" value="">
				<div class="mb-3">
				  <label for="exampleFormControlInput1" class="form-label">이메일</label>
				  <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
				</div>
        <div class="mb-3">
           <label for="intLevel" class="form-label">등급</label>
           <select name="intLevel" id="intLevel" class="form-select"> 
              <option value="1">BASIC</option>
              <option value="2">SILVER</option>
              <option value="3">GOLD</option>
           </select>
        </div>				
				<div class="mb-3">
				  <label for="exampleFormControlTextarea1" class="form-label">내용</label>
				  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
				</div>
    </form>
  </div>
  <!--// contents  ------------------------------------------------------------>
    
</body>
</html>