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

<title>Naver search API</title>
</head>
<body>
<div class="container">
  <!-- Content here -->

  <!-- 제목 -->
  <div class="page-header">
    <h2 >Naver search API</h2>
  </div>
  <!--// 제목 ------------------------------------------------------------------->
  
  <!-- 검색 form  justify-content-end(오른쪽), justify-content-center, justify-content-start(왼쪽) -->
  <form>
    <input type="hidden" name="pageNo" id="pageNo"  class="form-control">
		<div class="row g-1 d-flex justify-content-end ">
		  <div class="col-auto">
	      <select class="form-select" name="searchDiv" id="searchDiv">
	        <option value="10">블로그</option>
					<option value="20">news</option>
					<option value="30">books</option>
          <option value="40">지식인</option>
          <option value="50">shop</option>
          <option value="60">cafe</option>
	      </select>
	    </div>  
	    <div class="col-auto">
	      <input type="text" name="searchWord" id="searchWord" placeholder="검색어를 입력 하세요" class="form-control">
	    </div>
	    <div class="col-auto">  
	      <select class="form-select "  name="pageSize" id="pageSize">
	        <option value="10" >10</option>
	        <option value="20" >20</option>
	        <option value="30" >30</option>
	        <option value="50" >50</option>  
	        <option value="100" >100</option>
	      </select>
	    </div>  
	    <div class="col-auto">  
	      <a href="#" class="btn btn-primary" id="doRetrieve" >조회</a>
      </div>		  
		</div>  
  </form>
  <div id="dyContainer">
  
  </div>
  <!--// 검색 form ------------------------------------------------------------------->
  <table class="table table-striped table-hover table-bordered  thead-dark thead-inverse" id="blogTable">
      <thead>
        <tr  class="table-primary" >
           <th>번호</th>
           <th>제목</th>
           <th>Link</th>  
           <th>글쓴이</th>
           <th>작성일</th>
        </tr>
      </thead>
      <tbody>
            
      </tbody>
  </table>  
  
  <!-- news -->
  <table class="table table-striped table-hover table-bordered  thead-dark thead-inverse" id="newsTable">
      <thead>
        <tr  class="table-primary" >
           <th>번호</th>
           <th>제목</th>
           <th>Link</th>  
           <th>원문Link</th>
           <th>작성일</th>
        </tr>
      </thead>
      <tbody>
            
      </tbody>
  </table>
  <!-- jisik -->
  <table class="table table-hover table-bordered thead-inverse" id="jisikTable">
      <thead>
        <tr class="table-primary">
           <th class="text-center">번호</th>
           <th class="text-center">제목</th>
           <th class="text-center">링크</th>
           <th class="text-center">내용</th>
        </tr>
      </thead>
      <tbody>
      </tbody>
  </table>
      
  <!-- show -->
  <table class="table table-striped table-hover table-bordered  thead-dark thead-inverse" id="shopTable">
      <thead>
        <tr  class="table-primary" >
           <th>번호</th>
           <th>상품이름</th>
           <th>상품링크</th>
           <th>판매자</th>
           <th>가격</th>
           <th>이미지</th>
        </tr>
      </thead>
      <tbody>
      </tbody>
    </table>
        
  <!-- cafe -->
  <table class="table table-striped table-hover table-bordered  thead-dark thead-inverse" id="cafeTable">
      <thead>
        <tr  class="table-primary" >
           <th>번호</th>
           <th>제목</th>
           <th>Link</th>  
           <th>카페의 이름</th>
           <th>카페의 URL</th>
        </tr>
      </thead>
      <tbody>
            
      </tbody>
  </table>  
    
  <!-- book -->
  <table class="table table table-striped table-hover table-bordered" id="bookTable">
     <thead class="table-primary">
       <tr>
          <th>번호</th>
          <th>도서명</th>
          <th>링크</th>
          <th>지은이</th>
          <th>출판사</th>
          <th>출간일</th>
       </tr>
     </thead>
     <tbody>
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
   $(document).ready(function(){
	    //초기화
      $("#blogTable").css("display","");
      $("#cafeTable").css("display","none");
      $("#newsTable").css("display","none");
      $("#bookTable").css("display","none");
      $("#shopTable").css("display","none");
      $("#jisikTable").css("display","none");
   });
   
   
   
   $("#doRetrieve").on("click",function(){
     console.log("doRetrieve");
     
       $.ajax({
         type: "GET",
         url:"/ehr/naver/doNaverSearch.do",
         asyn:"true",
         dataType:"html",
         data:{
        	 pageNo :"1",
        	 pageSize : $("#pageSize").val(),
        	 searchDiv : $("#searchDiv").val(),
           searchWord: $("#searchWord").val()
         },
         success:function(data){//통신 성공
             console.log("success data:"+data);
             let parsedJson = JSON.parse(data);
             
             let htmlTable = "";
             
             //기존 데이터 삭제
             $("#blogTable>tbody").empty();
             $("#cafeTable>tbody").empty();
             $("#newsTable>tbody").empty();
             $("#bookTable>tbody").empty();
             $("#shopTable>tbody").empty();
             $("#jisikTable>tbody").empty();
             
             if(null != parsedJson && parsedJson.items.length > 0){
            	 console.log('parsedJson.items.length:'+parsedJson.items.length);
            	 
            	 //select에 따라 분기
               if(10==$("#searchDiv").val()){  //blog
            	   
                   $.each(parsedJson.items,function(index, value){
                       //console.log('index:'+index);//0번 부터 시작
                       //console.log('value:'+value.title);
                       index +=1;
                       
                       htmlTable += "<tr>";
                       htmlTable += "<td class='text-center'>"+index+"</td>";
                       htmlTable += "<td class='text-left'>"+<c:out value='value.title'/>+"</td>";
                       htmlTable += "<td class='text-left'><a href='"+<c:out value='value.link'/>+"'>Link</a></td>";
                       htmlTable += "<td class='text-left'>"+<c:out value='value.bloggername'/>+"</td>";
                       htmlTable += "<td class='text-left'>"+<c:out value='value.postdate'/>+"</td>";
                       htmlTable += "</tr>";
                    
                  });//--each       
               }else if(20==$("#searchDiv").val()){
                   $.each(parsedJson.items,function(index, value){
                       //console.log('index:'+index);//0번 부터 시작
                       //console.log('value:'+value.title);
                       index +=1;
                       
                       htmlTable += "<tr>";
                       htmlTable += "<td class='text-center'>"+index+"</td>";
                       htmlTable += "<td class='text-left'>"+<c:out value='value.title'/>+"</td>";
                       htmlTable += "<td class='text-left'><a href='"+<c:out value='value.link'/>+"'>Link</a></td>";
                       htmlTable += "<td class='text-left'>"+<c:out value='value.description'/>+"</td>";
                       htmlTable += "<td class='text-center'>"+<c:out value='value.pubDate'/>+"</td>";
                       htmlTable += "</tr>";
                    
                  });//--each              	   
            	   
               }else if(30==$("#searchDiv").val()){  //book  
            	   $.each(parsedJson.items, function(index, value){
                       //console.log('index : ' + index);  // 0번부터 시작
                       //console.log('value : ' + value.title);
                       index += 1;
                      
                       htmlTable += "<tr>";
                       htmlTable += "<td class='text-center'>" + index + "</td>";
                       htmlTable += "<td class='text-left'>" + <c:out value='value.title'/> + "</td>";
                       htmlTable += "<td class='text-left'><a href='" + <c:out value='value.link'/> + "'>Link</a></td>";
                       htmlTable += "<td class='text-left'>" + <c:out value='value.author'/> + "</td>";
                       htmlTable += "<td class='text-left'>" + <c:out value='value.publisher'/> + "</td>";
                       htmlTable += "<td class='text-center'>" + <c:out value='value.pubdate'/> + "</td>";
                       htmlTable += "</tr>";
                    
                     }); // each  
               }else if(40==$("#searchDiv").val()){//shop
            	         $.each(parsedJson.items, function(index, value){
	                       //console.log('index : '+index); // 0부터 시작
	                       //console.log('value : '+value.title);
	                       index += 1; // 1부터 시작
	                       htmlTable += "<tr>";
	                       htmlTable += "<td class='text-center'>"+index+"</td>";
	                       htmlTable += "<td class='text-left'>"+<c:out value='value.title'/>+"</td>";
	                       htmlTable += "<td class='text-left'><a href='"+<c:out value='value.link'/>+"'>Link</a></td>";
	                       htmlTable += "<td class='text-left'>"+<c:out value='value.description'/>+"</td>";
	                       htmlTable += "</tr>";
                       });            	   
            	   
               }else if(50==$("#searchDiv").val()){//shop
		            	   $.each(parsedJson.items,function(index, value){
		                       //console.log('index:'+index);
		                       //console.log('value:'+value.title);
		                       index += 1;
		                       htmlTable += "<tr>";
		                       htmlTable += "<td class='text-center'>"+index+"</td>";
		                       htmlTable += "<td class='text-left'>"+<c:out value='value.title'/>+"</td>";
		                       htmlTable += "<td class='text-left'><a href ='"+<c:out value='value.link'/>+"'>Link</a></td>";
		                       htmlTable += "<td class='text-left'>"+<c:out value='value.mallName'/>+"</td>";
		                       htmlTable += "<td class='text-left'>"+<c:out value='value.lprice'/>+"</td>";
		                       htmlTable += "<td class='text-left'><img src='"+<c:out value='value.image'/>+ "'/></td>";
		                       htmlTable += "</tr>";
		                 });            	   
            	   
               }else if(60==$("#searchDiv").val()){//cafe
                   $.each(parsedJson.items,function(index, value){
                       //console.log('index:'+index);//0번 부터 시작
                       //console.log('value:'+value.title);
                       index +=1;
                       
                       htmlTable += "<tr>";
                       htmlTable += "<td class='text-center'>"+index+"</td>";
                       htmlTable += "<td class='text-left'>"+<c:out value='value.title'/>+"</td>";
                       htmlTable += "<td class='text-left'><a href='"+<c:out value='value.link'/>+"'>Link</a></td>";
                       htmlTable += "<td class='text-left'>"+<c:out value='value.cafename'/>+"</td>";
                       htmlTable += "<td class='text-left'>"+<c:out value='value.cafeurl'/>+"</td>";
                       htmlTable += "</tr>";
                    
                  });//--each    
                  
               }
            	 
             }//--if
             else{
                 htmlTable += "<tr>";
                 htmlTable += "<td class='text-center' colspan='99'>No data found!</td>";            	 
                 htmlTable += "</tr>";            	 
             }
             //console.log('htmlTable:'+htmlTable);
             
              //데이터 출력 :  $("#shopTable").css("display","none");
              if(10==$("#searchDiv").val()){  //blog
            	   $("#blogTable>tbody").append(htmlTable);
              }else if(20==$("#searchDiv").val()){  //news
            	   $("#newsTable>tbody").append(htmlTable);
              }else if(30==$("#searchDiv").val()){  //book
            	   $("#bookTable>tbody").append(htmlTable);
              }else if(40==$("#searchDiv").val()){  //book
            	  $("#jisikTable>tbody").append(htmlTable);
              }else if(50==$("#searchDiv").val()){//cafe
            	   $("#shopTable>tbody").append(htmlTable);
              }else if(60==$("#searchDiv").val()){//cafe
                 $("#cafeTable>tbody").append(htmlTable);  
              }
         },
         error:function(data){//실패시 처리
             console.log("error:"+data);
         }
       });
     
     
   });
   
   $("#dyContainer .newClass").on("click",function(){
	   alert('newClass'+$('.newClass').val());
	   
   });     
   
   
   
   $("#searchDiv").on("change",function(){
	      console.log("searchDiv change");
	      console.log($("#searchDiv").val());
	     
	     //table숨기기
	     $("#blogTable").css("display","none");
	     $("#cafeTable").css("display","none"); 
	     $("#newsTable").css("display","none");
	     $("#bookTable").css("display","none");
	     $("#shopTable").css("display","none");
	     
	      
	     if(10==$("#searchDiv").val()){  //blog
	    	  $("#blogTable").css("display","");
	     }else if(20==$("#searchDiv").val()){  //news
	    	  $("#newsTable").css("display","");   
	     }else if(30==$("#searchDiv").val()){  //book
	    	  $("#bookTable").css("display","");
	     }else if(40==$("#searchDiv").val()){  //jisik
	    	  $("#jisikTable").css("display","");
	     }else if(50==$("#searchDiv").val()){  //shop
	    	  $("#shopTable").css("display","");
	     }else if(60==$("#searchDiv").val()){//cafe 
	    	  $("#cafeTable").css("display",""); 
	     }
	     
	     
   });
   
   
   
</script>
</body>
</html>