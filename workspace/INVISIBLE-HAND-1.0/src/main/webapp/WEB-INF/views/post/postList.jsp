<%@page import="com.pcwk.ehr.cmn.StringUtil"%>
<%@page import="com.pcwk.ehr.VO.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%       
         PostVO vo = (PostVO)request.getAttribute("inVO");
         String ctgNumValue = vo.getCategoryNumber();
         String title    = "자유게시판";//10 자유게시판, 20 QnA게시판, 30 공지게시판
         
         if ("20".equals(ctgNumValue)) {
              title = "QnA게시판";
          } else if ("30".equals(ctgNumValue)) {
              title = "공지사항";
          }

         
         request.setAttribute("title", title);
         
         //paging
         int bottomCount = 10;
         int pageSize    = 10;
         int pageNo      =  1;
         int totalCnt    =  0;
         String searchWord = "";
         String searchDiv  = "";
           
         if(null != vo){
              pageSize   = vo.getPageSize();
              pageNo     = vo.getPageNo();
              searchDiv  = vo.getSearchDiv();
              searchWord = vo.getSearchWord();
         }
         
         if(null !=  request.getAttribute("totalCnt")){
              totalCnt = Integer.parseInt(request.getAttribute("totalCnt").toString());
         }
         
         String cPath  = request.getContextPath();
         
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/post.css">
<title>보이지 않는 손 레이아웃</title>
</head>
<body>
  
	<!-- *---container Start---* -->

	<div class="h60px"></div>
	<div class="container-1200 con-main min-100vh">
	
		<div class="wrap-1000 ">
		  <h1>게시판</h1>
		  
		  <!-- *---검색,글쓰기 Start---* -->
		  <div class="table-search">
				<form action="${CP}/post/postList.do" method="get" name="postFrm">
			    <input type="hidden" name="pageNo" id="pageNo">
			    <input type="hidden" name="categoryNumber"    id="categoryNumber" value='${inVO.getCategoryNumber()}'>
			    <div class="row g-1 d-flex justify-content-end ">
			      <div class="col-auto">
			        <select class="form-select" name="searchDiv" id="searchDiv"> <!-- code table -->
			          <option value="">게시판선택</option>
 		          <c:forEach var="vo" items="${searchList }">
			            <option <c:if test="${vo.codeDetail == inVO.searchDiv }">selected</c:if> value="<c:out value='${vo.codeDetail }'/>"  >
			               <c:out value='${vo.codeDetailName }'/>
			            </option>
			          </c:forEach>  
			        </select>
			      </div>  
			      <div class="col-auto">
			        <!-- <input type="text" name="searchWord" id="searchWord" value="<c:out value='${inVO.searchWord }'/>" placeholder="검색어를 입력 하세요" class="form-control"> -->
			        <input type="text" name="searchWord" id="searchWord"  placeholder="검색어를 입력 하세요" class="form-control">
			      </div>
			      <div class="col-auto">  
			        <a href="#" class="btn" id="doRetrieve" >검색</a>
			        <a href="#" class="btn" onclick="doMoveToPostReg();" >글쓰기</a>  
			      </div>      
			    </div>  
			  </form>
		  </div>
		  <!-- **---form End---** -->
		  <!-- *---Table Start---* -->
		  
		  <table id="boardTable" class="table table-sm table-hover table-borderless">
		      <thead class="board-thead">
		        <tr >
		           <th class="text-center">No.</th>
		           <th class="text-center">제목</th>  
		           <th class="text-center">글쓴이</th>
		           <th class="text-center">작성일</th> 
		           <th class="text-center">조회수</th>
		        </tr>
		      </thead>
		      <tbody>
		        <c:choose>
               <%-- 조회 데이터가 있는 경우--%>
               <c:when test="${not empty list }">
                  <c:forEach var="vo" items="${list}">
                    <tr>
                      <td class="text-center  col-sm-2  col-md-1  col-lg-1"><c:out value="${vo.num}"/></td>
                      <td class="text-left    col-sm-6  col-md-6  col-lg-7"><a href="#"><c:out value="${vo.title}"/></a></td>
                      <td class="text-center  col-sm-2  col-md-2  col-lg-2"><c:out value="${vo.nickname}"/></td>
                      <td class="text-center  col-sm-2  col-md-2  col-lg-1"><c:out value="${vo.writtenDate}"/></td>
                      <td class="text-end     col-sm-0  col-md-1  col-lg-1"><c:out value="${vo.views}"/></td>
                      <td style="display:none;"><c:out value="${vo.postNumber}"/></td>
                    </tr>            
                  </c:forEach>
               </c:when>
               
               <%-- 조회 데이터가 없는 경우--%>
               <c:otherwise>
                 <tr>
                    <td  class="text-center col-sm-12  col-md-12  col-lg-12" colspan="99">No data found.</td>
                 </tr>
               </c:otherwise>
             </c:choose>  
		              <!-- <tr>
		                <td class="text-center  col-sm-2  col-md-1  col-lg-1"><c:out value="${vo.num}"/></td>
		                <td class="text-center  col-sm-2  col-md-1  col-lg-1">1</td>
		                <td class="text-left    col-sm-6  col-md-6  col-lg-7"><a href="#">제목이 됩니다</a></td>
		                <td class="text-center  col-sm-2  col-md-2  col-lg-2">메타몽</td>
		                <td class="text-center  col-sm-2  col-md-2  col-lg-1">2023.07.14</td>
		                <td class="text-end     col-sm-0  col-md-1  col-lg-1">24</td>
		              </tr>            
		              <tr>
		                <td class="text-center  col-sm-2  col-md-1  col-lg-1"><c:out value="${vo.num}"/></td>
		                <td class="text-center  col-sm-2  col-md-1  col-lg-1">1</td>
		                <td class="text-left    col-sm-6  col-md-6  col-lg-7"><a href="#">제목이 됩니다</a></td>
		                <td class="text-center  col-sm-2  col-md-2  col-lg-2">메타몽</td>
		                <td class="text-center  col-sm-2  col-md-2  col-lg-1">2023.07.14</td>
		                <td class="text-end     col-sm-0  col-md-1  col-lg-1">24</td>
		              </tr>            
		              <tr>
		                <td class="text-center  col-sm-2  col-md-1  col-lg-1"><c:out value="${vo.num}"/></td>
		                <td class="text-center  col-sm-2  col-md-1  col-lg-1">1</td>
		                <td class="text-left    col-sm-6  col-md-6  col-lg-7"><a href="#">제목이 됩니다</a></td>
		                <td class="text-center  col-sm-2  col-md-2  col-lg-2">메타몽</td>
		                <td class="text-center  col-sm-2  col-md-2  col-lg-1">2023.07.14</td>
		                <td class="text-end     col-sm-0  col-md-1  col-lg-1">24</td>
		              </tr>            
		              <tr>
		                <td class="text-center  col-sm-2  col-md-1  col-lg-1"><c:out value="${vo.num}"/></td>
		                <td class="text-center  col-sm-2  col-md-1  col-lg-1">1</td>
		                <td class="text-left    col-sm-6  col-md-6  col-lg-7"><a href="#">제목이 됩니다</a></td>
		                <td class="text-center  col-sm-2  col-md-2  col-lg-2">메타몽</td>
		                <td class="text-center  col-sm-2  col-md-2  col-lg-1">2023.07.14</td>
		                <td class="text-end     col-sm-0  col-md-1  col-lg-1">24</td>
		              </tr> -->            
		
		             
		      </tbody>
		   </table> <!-- **---table End---** -->
		   <!-- 페이징 -->
       <div class="d-flex justify-content-center">
         <%=StringUtil.renderPaging(totalCnt, pageNo, pageSize, bottomCount, cPath+"/post/postList.do", "do_Retrieve") %>
       </div> 
       <!--// 페이징 ---------------------------------------------------------------->
		   
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
		   
		</div><!-- **---wrap End---** -->
	</div> <!-- **---container End---** -->

	
<script src="js/jquery-3.7.0.js"></script>
<script>

  function do_Retrieve(url, pageNo){
    console.log("url:"+url);
    console.log("pageNo:"+pageNo);
    
    let frm = document.postFrm;
    frm.action = url;
    frm.pageNo.value=pageNo;
    frm.submit();//controller call  
  }
  
  //table 목록 click시 postNumber값 찾기
  $("#boardTable>tbody").on("click","tr",function(e){
    console.log("#boardTable>tbody");
    let tdArray = $(this).children();
    console.log('tdArray:'+tdArray);
    let postNumber = tdArray.postNumber(5).text();
    console.log('postNumber:'+postNumber);
    
    if( confirm("상세 조회 하시겠어요?") == false ) return;
    
    //categoryNumber,postNumber
    //http://localhost:8080/ehr/post/doSelectOne.do?div=10&seq=393
    window.location.href = "${CP}/post/doSelectOne.do?categoryNumber="+$("#categoryNumber").val()+"&postNumber="+postNumber;
    
  });
  
  function doMoveToPostReg(){
	    console.log("doMoveToPostReg");
	    let frm = document.postFrm;
	    console.log("frm.categoryNumber.value:"+frm.categoryNumber.value);
	    frm.pageNo.value=1;
	    frm.action = "${CP}/post/doMoveToPostReg.do"
	    frm.submit();
	  }
	  
	 function doRetrieveCall(pageNo){
	      let frm = document.postFrm;
	      //$("#pageNo").val(1); //jquery
	      frm.pageNo.value=pageNo;//javascript
	      frm.submit();//controller call    
	  }
	  
	  $("#searchWord").on("keypress",function(e){
	    console.log("searchWord");
	    if(13 == e.which){
	      e.preventDefault();
	      doRetrieveCall(1);
	    }
	  });
	  
	  $("#doRetrieve").on("click",function(){
	      console.log("doRetrieve");
	      doRetrieveCall(1);
	  });

$(".categorybox").click(function() {
    $(this).siblings().removeClass("active");
    $(this).addClass("active");
   // $("html, body").scrollTop($(".tab-box").height());
    let clickTab = $(this).attr("data-tab");
    $(".tab-box").removeClass("active");
    $("." + clickTab).addClass("active");
});
</script>
</body>
</html>