<%@page import="com.pcwk.ehr.VO.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
    PostVO vo = (PostVO)request.getAttribute("inVO");
    String ctgNumValue = vo.getCategoryNumber();
    String title    = "자유게시판";//10 자유게시판, 20 QnA게시판, 30 공지게시판
    
    if ("20".equals(ctgNumValue)) {
         title = "Q&A게시판";
     } else if ("30".equals(ctgNumValue)) {
         title = "공지사항";
     }
    request.setAttribute("title", title);
%>
<c:set var="CP" value="${pageContext.request.contextPath }"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="image/favicon-32x32.png">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/post.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<title>게시글 내용 보기+수정페이지입니다</title>
</head>
<body>
  <!-- *---container Start---* -->

  <div class="h60px"></div>
  <div class="container-1400">
    <div class="contents-wrap">
      <h1>
        <c:out value="${title}" />
      </h1>
      <div class="btn-area">
        <input type="button" class="button btn-w" value="수정" id="update">
        <input type="button" class="button btn-w" value="삭제" id="delete">
        <input type="button" class="button btn-b" value="목록" id="doMoveToList" onclick="doMoveToList()">
      </div>
      <!-- *---제목+내용 Start---* -->
      <div class="contents-area">
        <form action="${CP}/post/postContents.do" method="get" name="contentsFrm">
          <input type="hidden" name="pageNo" id="pageNo">
          <input type="hidden" name="categoryNumber"    id="categoryNumber" value='${inVO.getCategoryNumber()}'>
          <div id="title" class="contents-title">
            <!-- <p>제목이 됩니다</p> -->
            <c:out value="${outVO.title}" />
          </div>
          <div id="contents" class="contents">
             <c:out value="${outVO.content}" />
          </div>
          <div class="contents-desc"></div>
          <div class="writer"></div>
        </form>
      </div>
      <!-- *---댓글 Start---* -->
      <div class="comment-area">
        <h2>3개의 댓글</h2>
        <div class="line3px"></div>
        <div class="line1px"></div>
        <div class="h30px"></div>
        <div class="comment-box">
          <div class="comment-desc">
            <h4>닉네임</h4>
            <span>2023.07.19</span>
            <p>댓글이 됩니다</p>
          </div>
          <div class="comment-icon">
            <i class='fas fa-bars fa-sm' style='color:#979797'></i>
            <i class='fas fa-thumbs-up fa-sm' style='color:#979797'> 12</i>
          </div>
        </div>
        <div class="comment-box">
          <div class="comment-desc">
            <h4>닉네임</h4>
            <span>2023.07.19</span>
            <p>댓글이 됩니다</p>
          </div>
          <div class="comment-icon">
            <i class='fas fa-bars fa-sm' style='color:#979797'></i>
            <i class='fas fa-thumbs-up fa-sm' style='color:#979797'> 12</i>
          </div>
        </div>
        <div class="comment-box">
          <div class="comment-desc">
            <h4>닉네임</h4>
            <span>2023.07.19</span>
            <p>댓글이 됩니다</p>
          </div>
          <div class="comment-icon">
            <i class='fas fa-bars fa-sm' style='color:#979797'></i>
            <i class='fas fa-thumbs-up fa-sm' style='color:#979797'> 12</i>
          </div>
        </div>
        <div class="h60px"></div>
        <div class="line1px"></div>
        <div class="line3px"></div>
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
        <div class="add-comment">
          <p>댓글을 작성하려면 로그인 해주세요.댓글을 작성하려면 로그인 해주세요.
            댓글을 작성하려면 로그인 해주세요.댓글을 작성하려면 로그인 해주세요.
          </p>
          <div class="btn-right">
            <input type="button" class="btn" value="등록" id="addComment">
          </div>
        </div>
      </div>
    </div><!-- contents-wrap -->
  </div>

  <!-- **---container End---** -->
<script>
    function doMoveToList() {
        console.log("doMoveToList");
        let frm = document.contentsFrm;
        console.log("frm.categoryNumber.value:" + frm.categoryNumber.value);
        frm.pageNo.value = 1;
        frm.action = "${CP}/post/postList.do?categoryNumber=" + frm.categoryNumber.value;

        frm.submit();
    }
</script>
  

</body>
</html>