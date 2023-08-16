<%@page import="com.pcwk.ehr.cmn.StringUtil"%>
<%@page import="com.pcwk.ehr.VO.PostVO"%>
<%@page import="com.pcwk.ehr.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%       
         PostVO vo = (PostVO)request.getAttribute("inVO");
         String ctgNumValue = vo.getCategoryNumber();
         String ctg    = "자유게시판";//10 자유게시판, 20 QnA게시판, 30 공지게시판
         
         if ("20".equals(ctgNumValue)) {
              ctg = "Q&A게시판";
          } else if ("30".equals(ctgNumValue)) {
              ctg = "공지사항";
          }
         
         request.setAttribute("ctg", ctg);
         request.setAttribute("ctgNumValue", ctgNumValue);
         
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
         
         String defaultSearchDiv = (searchDiv == null || searchDiv.isEmpty()) ? ctgNumValue : searchDiv;
      
         
%>
<c:set var="CP" value="${pageContext.request.contextPath }"/> 
<c:set var="defaultSearchDiv" value="${defaultSearchDiv}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
<script src="${CP}/resources/js/util.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/post.css">
<title>보이지 않는 손 레이아웃</title>
</head>
<body>
  
  <!-- *---container Start---* -->

  <div class="h60px"></div>
  <div class="container-1200 con-main min-100vh">
  
    <div class="wrap-1000 ">
      <h1><c:out value="${ctg}" /></h1>
      
      <!-- *---검색,글쓰기 Start---* -->
      <div class="table-search">
        <form action="${CP}/post/postList.do" method="get" name="postFrm">
          <input type="hidden" name="pageNo" id="pageNo">
          <input type="hidden" name="categoryNumber"    id="categoryNumber" value='${inVO.getCategoryNumber()}'>
          <div class="row g-1 d-flex justify-content-end ">
            <div class="col-auto">
              <%-- <select class="form-select" name="searchDiv" id="searchDiv">
                  <option value="10" <c:if test="${defaultSearchDiv == '10'}">selected</c:if>>자유게시판</option>
                  <option value="20" <c:if test="${defaultSearchDiv == '20'}">selected</c:if>>Q&A게시판</option>
                  <option value="30" <c:if test="${defaultSearchDiv == '30'}">selected</c:if>>공지사항</option>
              </select> --%>
               <select class="form-select" name="searchDiv" id="searchDiv">
                <option value="">전체</option>
               <c:forEach var="vo" items="${searchList}">
                   <option <c:if test="${vo.codeDetail == defaultSearchDiv}">selected</c:if> value="<c:out value='${vo.codeDetail}' />">
                       <c:out value='${vo.codeDetailName }' />
                   </option>
               </c:forEach>
               
                  <%-- <option value="none">=게시판을 선택하세요</option>
                  <option value="10" <c:if test="${defaultSearchDiv == '10'}">selected</c:if>>자유게시판</option>
                  <option value="20" <c:if test="${defaultSearchDiv == '20'}">selected</c:if>>Q&A게시판</option>
                  <option value="30" <c:if test="${defaultSearchDiv == '30'}">selected</c:if>>공지사항</option> --%>
                  <%--  <c:forEach var="vo" items="${searchList}">
                       <option <c:if test="${vo.codeDetail == defaultSearchDiv}">selected</c:if> value="<c:out value='${vo.codeDetail }' />">
                           <c:out value='${vo.codeDetailName }' />
                       </option>
                   </c:forEach> --%>
               </select>


            </div>  
            <div class="col-auto">
               <input type="text" name="searchWord" id="searchWord" value="<c:out value='${inVO.searchWord }'/>" placeholder="검색어를 입력 하세요" class="form-control">
               <!--<input type="text" name="searchWord" id="searchWord"  placeholder="검색어를 입력 하세요" class="form-control">-->
            </div>
            <div class="col-auto">  
              <select class="form-select" name="pageSize" id="pageSize">
                <c:forEach var="vo" items="${pageSizeList}">
                  <option <c:if test="${vo.codeDetail == inVO.pageSize }">selected</c:if> value="<c:out value='${vo.codeDetail }'/>">
                     <c:out value='${vo.codeDetailName }'/>
                  </option>
                </c:forEach>
              </select>
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
      
      <table id="postTable" class="table table-sm table-hover table-borderless">
          <thead class="post-thead">
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
  $("#postTable>tbody").on("click","tr",function(e){
    console.log("#postTable>tbody");
    let tdArray = $(this).children();
    console.log('tdArray:'+tdArray);
    let postNumber = tdArray.eq(5).text();
    console.log('postNumber:'+postNumber);
    
    if( confirm("상세 조회 test: 이건 없앨거임") == false ) return;
    
    //categoryNumber,postNumber
    ////http://localhost:8080/ehr/post/doSelectOne.do?div=10&postNumber=393
    window.location.href = "${CP}/post/doSelectOne.do?categoryNumber="+$("#categoryNumber").val()+"&postNumber=" + postNumber;
    
  });
  
  function doMoveToPostReg(){
      console.log("doMoveToPostReg");
      let frm = document.postFrm;
      console.log("frm.categoryNumber.value:"+frm.categoryNumber.value);
      frm.pageNo.value=1;
      
      /* frm.searchDiv.value = "all";   // Set searchDiv to "all"
      frm.searchWord.value = "";     // Set searchWord to an empty string */
      frm.action = "${CP}/post/doMoveToPostReg.do"
      
      frm.submit();
    }
    
   function doRetrieveCall(pageNo){
        let frm = document.postFrm;
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