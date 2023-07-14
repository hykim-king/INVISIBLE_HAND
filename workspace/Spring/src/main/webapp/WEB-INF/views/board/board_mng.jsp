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
<title>${title}</title>
</head>
<body>
  <!-- contents  -->  
  <div class="container">
  <!-- 소 제목 -->
  <div class="page-title">
    <h2>${title}</h2>
  </div>

  <!--// 소 제목 end ------------------------------------------------------------->
    
    <!-- 버튼 -->
    <div class="row g-1 d-flex justify-content-end">
      <div class="col-auto">
	      <input type="button" class="btn btn-primary" value="목록" id="moveToList">
	      <input type="button" class="btn btn-primary" value="수정" id="doUpdate">
	      <input type="button" class="btn btn-primary" value="삭제" id="doDelete">
      </div>
    </div>
    <!--// 버튼 ----------------------------------------------------------------->
    <form action="#"  name="reg_frm" id="reg_frm">
       <input type="hidden" name="div" id="div" value="${inVO.getDiv()}">
				<div class="mb-3">
				  <label for="exampleFormControlInput1" class="form-label">SEQ</label>
				  <input type="text" class="form-control" id="seq" name="seq" 
				     placeholder="제목을 입력하세요" required="required"
				     readonly="readonly" value="${outVO.seq}">
				</div>
				
				<div class="mb-3">
				  <label for="exampleFormControlInput1" class="form-label">제목</label>
				  <input type="text" class="form-control" id="title" name="title" 
				     placeholder="제목을 입력하세요" required="required" maxlength="66"
				     value="${outVO.title}" >
				</div>
				
				<div class="mb-3">
				  <label for="exampleFormControlInput1" class="form-label">조회수</label>
				  <input type="text" class="form-control" id="readCnt" name="readCnt" 
				     placeholder="" required="required" readonly="readonly"
				     value="${outVO.readCnt}" >
				</div>
		 		
        <div class="mb-3">
          <label for="exampleFormControlInput1" class="form-label">등록자ID</label>
          <input type="text" class="form-control" id="regId" name="regId"
          placeholder="아이디를 입력 하세요." readonly="readonly"
          value="${outVO.regId}" >
        </div>
        
        <div class="mb-3">
          <label for="exampleFormControlInput1" class="form-label">등록일</label>
          <input type="text" class="form-control" id="regDt" name="regDt" 
          value="${outVO.regDt}"  readonly="readonly" >
        </div>
                <div class="mb-3">
          <label for="exampleFormControlInput1" class="form-label">수정자ID</label>
          <input type="text" class="form-control" id="modId" name="modId" 
          placeholder="아이디를 입력 하세요." value="${outVO.modId}"  readonly="readonly" >
        </div>
        <div class="mb-3">
          <label for="exampleFormControlInput1" class="form-label">수정일</label>
          <input type="text" class="form-control" id="modDt" name="modDt" 
          value="${outVO.modDt}" readonly="readonly">
        </div>
        
				<div class="mb-3">
				  <label for="exampleFormControlTextarea1" class="form-label">내용</label>
				  <textarea class="form-control" id="contents" name="contents" rows="3" 
				  required="required"  >${outVO.contents}</textarea>
				</div>
        				
    </form>
  </div>
  <!--// contents  ------------------------------------------------------------>
  <script>
  
  $("doDelete").on("click",function(){
	  
	  if(confirm('삭제?')==false)return;
	  
	  $.ajax({
	        type: "GET",
	        url:"/ehr/board/doDelete.do",
	        asyn:"true",
	        dataType:"html",
	        data:{
	          
	          div: $("#div").val(),
	          seq: $("#seq").val()
	       
	        },
	        success:function(data){//통신 성공
	            console.log("success data:"+data);
	          },
	          error:function(data){//실패시 처리
	            console.log("error:"+data);
	          }
	      });
	  
  })
  
      function moveToListView(){
    	  window.location.href="${CP}/board/boardView.do?div="+$("#div").val();
      }
  
      $("#moveToList").on("click",function(){
    	  if(confirm('목록으로 가?')==false)return;
    	  moveToListView();
      });


   	  
    	  
      });
  </script>
</body>
</html>