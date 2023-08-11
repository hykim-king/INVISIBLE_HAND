<%@page import="com.pcwk.ehr.VO.PostVO"%>
<%@page import="com.pcwk.ehr.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
    PostVO vo = (PostVO)request.getAttribute("inVO");
    String ctgNumValue = vo.getCategoryNumber();
    int postNumValue  = vo.getPostNumber();
    String ctg    = "자유게시판";//10 자유게시판, 20 QnA게시판, 30 공지게시판
    
    if ("20".equals(ctgNumValue)) {
         ctg = "Q&A게시판";
     } else if ("30".equals(ctgNumValue)) {
         ctg = "공지사항";
     }
    request.setAttribute("ctg", ctg);
    request.setAttribute("ctgNumValue", ctgNumValue);
    request.setAttribute("postNumValue", postNumValue);
    
%>
<c:set var="CP" value="${pageContext.request.contextPath }"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="image/favicon-32x32.png">
<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
<script src="${CP}/resources/js/util.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/post.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<title>게시글 내용 보기</title>
</head>
<body>
  <!-- *---container Start---* -->

  <div class="h60px"></div>
  <div class="container-1400">
    <div class="contents-wrap">
      <h1><c:out value="${ctg}" /></h1>
      <div class="btn-area">
        <input type="button" class="button btn-w" value="수정" id=moveToUpdateView>
        <input type="button" class="button btn-w" value="삭제" id="doDelete">
        <input type="button" class="button btn-b" value="목록" id="moveToList">
      </div>
      <!-- *---제목+내용 Start---* -->
      <div class="contents-area">
        <form action="${CP}/post/postContents.do" method="get" name="contentsFrm">
          <input type="hidden" name="pageNo" id="pageNo">
          <input type="hidden" name="categoryNumber"    id="categoryNumber" value="${outVO.getCategoryNumber()}">
          <input type="hidden" name="postNumber"    id="postNumber" value="${outVO.getPostNumber()}">
          <input type="hidden" name="postNumber"    id="nickname" value="${outVO.getNickname()}">
          <div id="title" class="contents-title">
            <!-- <p>제목이 됩니다</p> -->
            <c:out value="${outVO.title}" />
          </div>
          <div id="content" class="content">
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

    function moveToListView() {
        window.location.href = "${CP}/post/postList.do?categoryNumber=" + $("#categoryNumber").val();
    }

    $(document).ready(function () {
          $("#moveToList").on("click", function () {
              if (confirm('목록하면으로 이동합니다.') == false) return;

              moveToListView();
          });
      });
    
      function moveToUpdateView(){
            const postNumber = "${postNumValue}"; 
            const categoryNumber = "${ctgNumValue}"; 
            
            const url = "${CP}/post/postMod.do?categoryNumber="+categoryNumber+"&postNumber=" + postNumber;
            window.location.href = url;
        }
    
    $("#moveToUpdateView").on("click", function(){
        console.log("moveToUpdateView");
        console.log("postNumber:"+"${postNumValue}");
        console.log("categoryNumber:"+"${ctgNumValue}");
        
        var loggedInNickname = "${sessionScope.nickname}";
        var postNickname = "${outVO.getNickname()}";
        
        console.log("loggedInNickname:", loggedInNickname);
        console.log("postNickname:", postNickname);
        
        if (loggedInNickname === postNickname) {
            if (confirm('수정 화면으로 이동 하시겠습니까?')) {
                moveToUpdateView(); // 수정 페이지로 이동하는 함수 호출
            }
        } else {
            alert('게시글 작성자만 수정할 수 있습니다.');
        }
    }); 

    
    $("#doUpdate").on("click", function () {
        console.log("doUpdate");
        // 제목, 내용, div, mod_id(session), seq

        if (eUtil.ISEmpty($("#title").val()) == true) {
            alert("제목을 입력하세요.");
            $("#title").focus();
            return;
        }

        if (eUtil.ISEmpty($("#content").val()) == true) {
            alert("내용을 입력하세요.");
            $("#content").focus();
            return;
        }

        // 게시글 작성자와 로그인한 사용자의 닉네임 비교
        var loggedInNickname = "${sessionScope.nickname}";
        var postNickname = "${outVO.getNickname()}";
        
        
        if (loggedInNickname === postNickname) {
            if (confirm('수정완료하시겠습니까?')) {
                // ajax로 비동기 통신
                $.ajax({
                    type: "POST",
                    url: "/ehr/post/doUpdate.do",
                    async: true,
                    dataType: "html",
                    data: {
                        categoryNumber: $("#categoryNumber").val(),
                        title: $("#title").val(),
                        content: $("#content").val(),
                        nickname: loggedInNickname,  
                        postNumber: $("#postNumber").val()
                    },
                    success: function (data) {  // 통신 성공
                        console.log("success data:" + data);
                        
                        // 성공(1), 실패

                        let parsedJson = JSON.parse(data);
                        if ("1" == parsedJson.msgId) {
                            alert(parsedJson.msgContents);
                            moveToListView();
                        } else {
                            alert(parsedJson.msgContents);
                        }

                    },
                    error: function (data) {  // 실패시 처리
                        console.log("error:" + data);
                    }
                });
            }
        } else {
            alert('게시글 작성자만 수정할 수 있습니다.');
        }
    });//doUpdate-------------------


    
    $("#doDelete").on("click", function() {
        console.log("doDelete");
        console.log("postNumber: ${postNumValue}");
        console.log("categoryNumber: ${ctgNumValue}");
        var loggedInNickname = "${sessionScope.nickname}";
        var postNickname = "${outVO.getNickname()}";
        console.log("loggedInNickname:", loggedInNickname);
        console.log("postNickname:", postNickname);
        

        if (loggedInNickname === postNickname) {
            if (confirm('삭제 하시겠습니까?')) {
                $.ajax({
                    type: "GET",
                    url: "/ehr/post/doDelete.do",
                    async: true,
                    dataType: "html",
                    data: {
                        categoryNumber: '<%= ctgNumValue %>',
                        postNumber: '<%= postNumValue %>'
                    },
                    success: function(data) { // 통신 성공
                        console.log("success data:" + data);
                        // 성공, 실패
                        // 성공->board_list.jsp로 이동
                        let parsedJson = JSON.parse(data);
                        if ("1" == parsedJson.msgId) {
                            alert(parsedJson.msgContents);
                            moveToListView();
                        } else {
                            alert(parsedJson.msgContents);
                        }

                    },
                    error: function(data) { // 실패시 처리
                        console.log("error:" + data);
                    }
                });
            }
        } else {
            alert('게시글 작성자만 삭제할 수 있습니다.');
        }
    });
    
    
</script>
  

</body>
</html>