<%@page import="com.pcwk.ehr.cmn.StringUtil"%>
<%@page import="com.pcwk.ehr.VO.PostVO"%>
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
<c:url value="/post/postList.do" var="freePostURL">
  <c:param name="categoryNumber" value="10" />
</c:url>

<c:url value="/post/postList.do" var="qnaPostURL">
  <c:param name="categoryNumber" value="20" />
</c:url>

<c:url value="/post/postList.do" var="postURL">
  <c:param name="categoryNumber" value="30" />
</c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/post.css">
<title>보이지 않는 손 레이아웃</title>
</head>
<body>
  
  <!-- *---container Start---* -->

  <div class="h60px"></div>
  <div class="container-1200 con-main min-100vh">
    <div class="wrap-1000 ">
      
      
      <!-- *---검색,글쓰기 Start---* -->
      <div class="table-search">
        <form action="${CP}/post/postList.do" method="get" name="postFrm">
          <input type="hidden" name="pageNo" id="pageNo">
          <input type="hidden" name="categoryNumber"    id="categoryNumber" value='${inVO.getCategoryNumber()}'>
          <div class="post-nav">
           
            <div class="col-auto">
              <select class="form-select" name="searchDiv" id="searchDiv"> 
                <c:forEach var="vo" items="${searchList}">
                    <option 
                      <c:if test="${vo.codeDetail == inVO.searchDiv }">selected</c:if> value="<c:out value='${vo.codeDetail}'/>">                     
                      <c:out value='${vo.codeDetailName}'/>
                    </option>
                </c:forEach>  
              </select>
            </div>
           
            <div class="col-auto">
              <input type="text" name="searchWord" id="searchWord" value="<c:out value='${inVO.searchWord }'/>" placeholder="검색어를 입력 하세요" class="form-control">
            </div>
            
            <div class="list-btn">  
              <a href="#" id="doRetrieve"><i class='fas fa-search fa-sm' style='color:#FFA000;'></i></a>
              <a href="#" class="btn button btn-b" style="margin-left: 30px;" id="doMoveToPostReg" >글쓰기</a>
              <c:if test="${sessionScope.member.memberId == 'admin'}">
                <a href="#" class="btn button btn-b" style="margin-left: 30px;" id="doAdminDel">삭제</a>
              </c:if>
            </div>     
          </div>  
        </form>
      </div>
      <!-- **---form End---** -->



      <!-- *---Table Start---* -->
      
      <div class="category-selecter">
        <a class="selecter-list selecter-list10" href="${freePostURL}">자유 게시판</a>
        <a class="selecter-list selecter-list20" href="${qnaPostURL}">Q&A 게시판</a>
        <a class="selecter-list selecter-list30" href="${postURL}">공지사항</a>
      </div>
      <table id="postTable" class="table table-sm table-hover table-borderless">
          <thead class="post-thead">
            <tr >
               <th class="text-c">No.</th>
               <th class="text-c">제목</th>  
               <th class="text-c">글쓴이</th>
               <th class="text-c">작성일</th> 
               <th class="text-c">조회수</th>
               <c:if test="${sessionScope.member.memberId == 'admin'}">
               <th class="text-c">
                 <input type="checkbox" name="adminPostAllChk" id="adminPostAllChk" onclick='selectAll(this)'>
               </th>
               </c:if>
            </tr>
          </thead>
          <tbody>
            <c:choose>
               <%-- 조회 데이터가 있는 경우--%>
               <c:when test="${not empty list }">
                  <c:forEach var="vo" items="${list}">
                    <tr class="cell">
                      <td class="text-c"><c:out value="${vo.num}"/></td>
                      <td class="text-l"><a href="#"><c:out value="${vo.title}"/></a></td>
                      <td class="text-c"><c:out value="${vo.nickname}"/></td>
                      <td class="text-c"><c:out value="${vo.writtenDate}"/></td>
                      <td class="text-c"><c:out value="${vo.views}"/></td>
                      <td style="display:none;"><c:out value="${vo.postNumber}"/></td>
		                  <c:if test="${sessionScope.member.memberId == 'admin'}">
										    <td class="text-c">    
									        <input type="checkbox" name="adminDelPost" value="<c:out value="${vo.postNumber}"/>">
										    </td>  
											</c:if>
                    </tr>            
                  </c:forEach>
               </c:when>
               
               <%-- 조회 데이터가 없는 경우--%>
               <c:otherwise>
                 <tr>
                    <td  class="text-c" colspan="99">No data found.</td>
                 </tr>
               </c:otherwise>
             </c:choose>  
          </tbody>
       </table> <!-- **---table End---** -->
       <!-- 페이징 -->
       <div class="d-flex justify-content-center">
        <%= StringUtil.renderPaging(totalCnt, pageNo, pageSize, bottomCount,  cPath+"/post/postList.do", "searchPage") %>
       </div> 
       <!--// 페이징 ---------------------------------------------------------------->
       

    </div><!-- **---wrap End---** -->
  </div> <!-- **---container End---** -->


<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
<script src="${CP}/resources/js/util.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<script>

  
  function searchPage(url, pageNo){
    console.log("url:"+url);
    console.log("pageNo:"+pageNo);
    
    let frm = document.postFrm;
    frm.action = url;
    frm.pageNo.value=pageNo;
    frm.submit();//controller call  
  }
  
  //table 목록 click시 postNumber값 찾기
  $("#postTable>tbody").on("click","tr a",function(e){
	  e.preventDefault();
    console.log("#postTable>tbody");
    let postNumber = $(this).closest("tr").find("td:eq(5)").text();
    console.log('postNumber:'+postNumber);
    
    window.location.href = "${CP}/post/doSelectOne.do?categoryNumber="+$("#categoryNumber").val()+"&postNumber=" + postNumber;
    
  });
  
    $("#doMoveToPostReg").click(function() {
        console.log("doMoveToPostReg");
        var loggedInNickname = "${sessionScope.member.nickName}";
        console.log("loggedInNickname:"+loggedInNickname);
        if (loggedInNickname !== null && loggedInNickname !== "") {
            if( confirm("게시글을 작성하시겠습니까?") == false ) return;
            window.location.href = "${CP}/post/doMoveToPostReg.do?categoryNumber=" + $("#categoryNumber").val();
        } else {
            alert("로그인한 사용자만 게시글을 작성할 수 있습니다.");
        }
    });

    
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
    /* 게시판 카테고리 선택시 노란색으로 변경 */

$(document).ready(function() {
  var currentURL = window.location.href;
  if (currentURL.includes("Number=10")) {
    $(".selecter-list10").addClass("act");
  }
  $(".selecter-list10").click(function() {
    $(".selecter-list10.act").removeClass("act");
    $(this).addClass("act");
  });
});
    
$(document).ready(function() {
	  var currentURL = window.location.href;
	  if (currentURL.includes("Number=20")) {
	    $(".selecter-list20").addClass("act");
	  }
	  $(".selecter-list20").click(function() {
	    $(".selecter-list20.act").removeClass("act");
	    $(this).addClass("act");
	  });
	});
	
$(document).ready(function() {
	  var currentURL = window.location.href;
	  if (currentURL.includes("Number=30")) {
	    $(".selecter-list30").addClass("act");
	  }
	  $(".selecter-list30").click(function() {
	    $(".selecter-list30.act").removeClass("act");
	    $(this).addClass("act");
	  });
	});
    /* 게시판 카테고리 선택시 노란색으로 변경끝 */

// admin전용 게시글 삭제 function
function selectAll(selectAll)  {
  const checkboxes 
       = document.getElementsByName('adminDelPost');
  
  checkboxes.forEach((checkbox) => {
    checkbox.checked = selectAll.checked;
  })
}

$(document).ready(function() {
	
    let checkArr = [];
  
    $("#doAdminDel").on("click", function() {
        $('input[name="adminDelPost"]:checked').each(function() {
            checkArr.push($(this).val());
        });
        
        alert(checkArr);
        console.log(checkArr);
    });
});
</script>
</body>
</html>