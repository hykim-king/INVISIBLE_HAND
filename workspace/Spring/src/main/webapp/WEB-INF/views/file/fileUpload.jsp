<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath }"/>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${CP}/resources/css/board.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
<script src="${CP}/resources/js/util.js"></script>
</head>
<body>
  <!-- 소 제목 -->
  <div class="page-title">
    <h2>파일 업로드</h2>  
  </div>

    <!-- contents  -->
  <div class="container">   
  <!--// 소 제목 end ------------------------------------------------------------->
    <%-- <form action="${CP}/file/fileUpload.do" method="post" enctype="multipart/form-data" class="container" name="reg_frm" id="reg_frm"> --%>
    <form action="${CP}/file/multipartFileUpload.do" method="post" enctype="multipart/form-data" class="container" name="reg_frm" id="reg_frm">
       <input type="hidden" name="word" value="">
       <!-- 제목 -->
       <div class="form-group">
        <label for="title">제목</label>
        <input type="text" maxlength="100" name="title" id="title" placeholder="제목을 입력하세요." >
       </div>
       
       <div class="form-group">
         <label for="file01">파일1</label>
         <input type="file" name="uploadFile" id="uploadFile01" placeholder="파일을 선택하세요." multiple="multiple" >
       </div> 
       
       <div class="form-group">
         <label for="file01">파일2</label>
         <input type="file" name="file02" id="file02" placeholder="파일을 선택하세요." multiple="multiple" >
       </div>                
       <div class="form-group">
        <label for="contents">내용</label>
        <textarea rows="8" cols="20" name="contents" id="contents"></textarea>
       </div>
       <div class="form-group">
        <input type="submit" value="전송">
       </div>                     
    </form> 
      
   <table class="board-table" id="fileTable">
      <thread>
        <tr>
           <th>번호</th>
           <th>원본파일명</th>
           <th>파일크기</th>
           <th style="display: none;">저장경로</th>
           <th style="display: none;">저장파일명</th>
           <th>확장자</th>
        </tr>
      </thread>
      <tbody>
       <c:choose>
        <c:when test="${list.size()>0 }">
          <c:forEach var="vo" items="${list}">
	        <tr>
	          <td class="c-txt">1</td>
	          <td class="l-txt">${vo.originalFileName}</td> <!-- O -->
	          <td class="c-txt">${vo.fileSize}</td>
	          <td class="c-txt"  style="display: none;">${vo.savePath}</td> <!-- O -->
	          <td class="r-txt"  style="display: none;">${vo.saveFileName}</td> <!-- O -->
	          <td class="r-txt">${vo.extension}</td>
	        </tr>
	        </c:forEach>
        </c:when>
        <c:otherwise>
          <tr>
            <td class="c-txt" colspan="99">no data found</td>
          </tr>
        </c:otherwise>
        
       </c:choose>
       
       
            
      </tbody>
      
        
    </table>
    
    <form action="${CP}/file/download.do" method="post" name="fileDownloadFrm" >
      <input type="hidden"  name="originalFileName" id="originalFileName">
      <input type="hidden"  name="saveFileName" id="saveFileName">
      <input type="hidden"  name="savePath" id="savePath">
    </form>
   </div>   
      
<script >
     $("#fileTable>tbody").on("click","tr",function(e){
    	 console.log('fileTable>tbody>tr');
    	 let tdArrays = $(this).children();
    	 let orgFileName = tdArrays.eq(1).text();
    	 console.log('orgFileName:'+orgFileName);
    	 
    	 let saveFilePath = tdArrays.eq(3).text();
    	 console.log('saveFilePath:'+saveFilePath);
    	 
    	 let saveFileNm = tdArrays.eq(4).text();
    	 console.log('saveFileNm:'+saveFileNm);
    	 
    	 //jquery
    	 $("#originalFileName").val(orgFileName);
    	 //javascript: document.폼name.input name.value
    	 document.fileDownloadFrm.saveFileName.value = saveFileNm;
    	 
    	 $("#savePath").val(saveFilePath);
    	 
    	 //form submit()
    	 document.fileDownloadFrm.submit();
     });

</script>      
      
      
      
</body>
</html>