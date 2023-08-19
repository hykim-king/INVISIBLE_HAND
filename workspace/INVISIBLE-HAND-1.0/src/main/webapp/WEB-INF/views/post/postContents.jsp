<%@page import="com.pcwk.ehr.VO.PostVO"%>
<%@page import="com.pcwk.ehr.VO.MemberVO"%>
<%@page import="com.pcwk.ehr.VO.CommentVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.pcwk.ehr.cmn.StringUtil"%>
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
<c:set var="CP" value="${pageContext.request.contextPath }"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="image/favicon-32x32.png">
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
      <h1>
      <c:out value="${ctg}" />
      <c:out value="${sessionNickname}" />
      </h1>
      <div class="btn-area">
        <input type="button" class="button btn-w" value="수정" id=moveToUpdateView>
        <input type="button" class="button btn-w" value="삭제" id="doDelete">
        <input type="button" class="button btn-b" value="목록" id="moveToList">
      </div>
      <!-- *---제목+내용 Start---* -->
      <div class="contents-area">
        <div class="yellow-box"></div>
        <form action="${CP}/post/postContents.do" method="get" name="contentsFrm">
          <input type="hidden" name="pageNo" id="pageNo">
          <input type="hidden" name="categoryNumber"    id="categoryNumber" value="${outVO.getCategoryNumber()}">
          <div id="title" class="contents-title">
            <p><c:out value="${outVO.title}" /><p>
            <div class="writer">글쓴이:<c:out value="${outVO.nickname}" /></div>
          </div>
          <div class="contents content" id="contents content">
            <p><c:out value="${outVO.content}" /></p>
          <div class="recommend-btn">
            <input type="button" class="recommend-val" value="추천" id=postUpdateLikes>
            <div class="likes">
              <c:out value="${outVO.likes}" />
            </div>
          </div>
          </div>
          
        </form>
      <!-- *---댓글 Start---* -->
      <div class="comment-area" var="comment">
       <c:if test="${commentCnt > 0}">
          <h2><c:out value="${commentCnt}"/>개의 댓글</h2>
          <div class="h30px"></div>
        </c:if>
        <div class="h30px"></div>
        
          <c:forEach var="comment" items="${list}" varStatus="status">
            <div class="comment-box">
              
              <div class="comment-desc">
                <input type="hidden" name="commentNumber"    id="commentNumber" value="${comment.commentNumber}">   
                  <h4><c:out value="${comment.nickname}"/></h4>
                  <span><c:out value="${comment.writtenDate}"/></span>
                  <p><c:out value="${comment.content}"/></p>
               </div>
               
                <div class="comment-icon">
                    <i class='fas fa-bars fa-sm' style='color:#979797'></i>
                   <%-- <i class='fas fa-thumbs-up fa-sm' style='color:#FF007A'> <c:out value="${comment.likes}"/></i> --%>
                    <i class='fas fa-thumbs-up fa-sm cmt-like-icon' style='color:#FF007A'
                data-comment-number="${comment.commentNumber}" data-nickname="${comment.nickname}" data-comment-likes="${comment.likes}"> <c:out value="${comment.likes}"/></i>
                  <div class="btn-right">
                    <input type="button" class="btn-delet" value="삭제" name="deleteComment" id="deleteComment${status.index}" 
                    data-comment-number="${comment.commentNumber}" data-nickname="${comment.nickname}" data-comment-likes="${comment.likes}">
                    <%-- <input type="button" class="btn-cmtLikes" value="추천" name="cmtUpdateLikes" id="cmtUpdateLikes${status.index}" 
                    data-comment-number="${comment.commentNumber}" data-nickname="${comment.nickname}" data-comment-likes="${comment.likes}"> --%>
                  </div>
                </div>
                
		            <div class="more-btn opa-0"> <input type="button" class="p" id="more" value="더보기"></div> 
            </div>
          </c:forEach>
          
          
        
        <!-- 페이징 시작 -->  

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
        <!-- 페이징 끝 --> 
        
      <!-- 댓글 작성 -------------->
       <form action="${CP}/post/postContents.do" method="get" name="cmtFrm" id="cmtFrm">
        <input type="hidden" name="pageNo" id="pageNo">
        <input type="hidden" name="postNumber"    id="postNumber" value="${inVO.getPostNumber()}"> 
        
        <div class="add-comment">
          <label>댓글 작성자 </label>
          <input type="text" class="form-control" id="sessionNickname" name="sessionNickname" value="${sessionScope.member.nickName}" readonly="readonly">
          <p><textarea class="form-control" id="cmtContent" name="cmtContent" rows="3" 
             required="required" 
             ${empty sessionScope.member.nickName ? 'placeholder="비회원은 댓글을 작성할 수 없습니다."' : ''} 
             ${empty sessionScope.member.nickName ? 'readonly' : ''}></textarea></p>
          <!-- 버튼------------------> 
          <div class="btn-right">
            <input type="button" class="button btn btn-p" value="등록" name="addComment" id="addComment" >
          </div>
          <!-- //버튼---------------->
        </div>
        
       </form>
       </div>
       <div class="yellow-box" style="margin-top: -15px; height: 15px;"></div>
      </div><!-- *---제목+내용 End---* -->
      
    </div><!-- contents-wrap -->

  </div><!-- container-1400 -->

  <!-- **---container End---** -->

<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
<script src="${CP}/resources/js/util.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script>
   
    //cmtUpdateLikes
    $(".cmt-like-icon").on("click", function() {
       var likes = $(this).data("comment-likes");
       var commentNumber = $(this).data("comment-number");
       
       console.log("commentNumber: " + commentNumber );
       console.log("likes: " + likes);
       
       $.ajax({
           type: "POST",
           url: "/ehr/comment/doUpdateLikes.do",
           async: "true",
           dataType: "html",
           data: {
              likes: likes,
              commentNumber: commentNumber
           },
           success: function(data) { // 통신 성공
               console.log("success data:" + data);
               console.log("likes: " + likes);
               let parsedJson = JSON.parse(data);
               
               if ("1" == parsedJson.msgId) {
                   alert(parsedJson.msgContents);
                   location.reload(); // 페이지 새로고침
    
               } else {
                   alert(parsedJson.msgContents);
               }
           },
           error: function(data) { // 실패시 처리
               console.log("error:" + data);
           }
       });
    });//cmtUpdateLikes----------------------------------------
   
   
   
   
    //postUpdateLikes
    $("#postUpdateLikes").on("click", function() {
       var likes = "${outVO.likes}"; 
       const postNumber = "${postNumValue}"; 
       console.log("postNumber: " + postNumber );
       console.log("likes: " + likes);
       
       $.ajax({
           type: "POST",
           url: "/ehr/post/doUpdateLikes.do",
           async: "true",
           dataType: "html",
           data: {
              likes: likes,
              postNumber: postNumber
           },
           success: function(data) { // 통신 성공
               console.log("success data:" + data);
               console.log("likes: " + "${outVO.likes}");
               let parsedJson = JSON.parse(data);
               
               if ("1" == parsedJson.msgId) {
                   alert(parsedJson.msgContents);
                   // javascript
                   location.reload(); // 페이지 새로고침

               } else {
                   alert(parsedJson.msgContents);
               }
           },
           error: function(data) { // 실패시 처리
               console.log("error:" + data);
           }
       });
    });

    


//댓글 등록addComment
$("#addComment").on("click", function() {
    var loggedInNickname = "${sessionScope.member.nickName}";
    
    if (loggedInNickname !== null && loggedInNickname !== "") {
        var memberId = "${sessionScope.member.memberId}";
        
        console.log("addComment");
        console.log("postNumber: " + "${postNumValue}");
        console.log("loggedInNickname: " + loggedInNickname);
        console.log("memberId: " + memberId);

        // 필수값: cmtContent
        if (eUtil.ISEmpty($("#cmtContent").val())) {
            alert("내용을 입력하세요.");
            $("#cmtContent").focus();
            return;
        }

        if (confirm('등록 하시겠습니까') == false) return;

        $.ajax({
            type: "POST",
            url: "/ehr/comment/doSave.do",
            async: "true",
            dataType: "html",
            data: {
                postNumber: $("#postNumber").val(),
                nickname: loggedInNickname,
                memberId: memberId,
                content: $("#cmtContent").val()
            },
            success: function(data) { // 통신 성공
                console.log("success data:" + data);
                let parsedJson = JSON.parse(data);
                
                // 내용 미 입력
                if ("10" == parsedJson.msgId) {
                    alert(parsedJson.msgContents);
                    $("#cmtContent").focus();
                    return;
                }

                if ("1" == parsedJson.msgId) {
                    alert(parsedJson.msgContents);
                    // javascript
                    location.reload(); // 페이지 새로고침
                } else {
                    alert(parsedJson.msgContents);
                }
            },
            error: function(data) { // 실패시 처리
                console.log("error:" + data);
            }
        });
    } else {
        alert("로그인한 사용자만 댓글을 작성할 수 있습니다.");
    }
});

   
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
        
        var loggedInNickname = "${sessionScope.member.nickName}"; 
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

    
    
    //게시물 삭제
    $("#doDelete").on("click", function() {
        console.log("doDelete");
        console.log("postNumber: ${postNumValue}");
        console.log("categoryNumber: ${ctgNumValue}");
        var loggedInNickname = "${sessionScope.member.nickName}";
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
    });//--게시물 삭제 -------------------------------
    
  //댓글 삭제
    $(".btn-delet").on("click", function() {
        var commentNumber = $(this).data("comment-number");
        var loggedInNickname = "${sessionScope.member.nickName}";
        var addNickname = $(this).data("nickname");
        console.log("addNickname:"+addNickname);
        console.log("loggedInNickname:"+loggedInNickname);
        console.log("commentNumber:"+commentNumber);
        
        if (loggedInNickname === addNickname) {
            if (confirm('댓글을 삭제 하시겠습니까?')) {
                $.ajax({
                    type: "GET",
                    url: "/ehr/comment/doDelete.do",
                    async: true,
                    dataType: "html",
                    data: {
                        commentNumber: commentNumber,
                    },
                    success: function(data) {
                        console.log("success data:" + data);
                        let parsedJson = JSON.parse(data);
                        if ("1" == parsedJson.msgId) {
                            alert(parsedJson.msgContents);
                            location.reload(); // 페이지 새로고침
                        } else {
                            alert(parsedJson.msgContents);
                        }
                    },
                    error: function(data) {
                        console.log("error:" + data);
                    }
                });
            }
        } else {
            alert('댓글 작성자만 삭제할 수 있습니다.');
        }
    });//댓글삭제------------------------------

    
    $(document).ready(function() {
    	  $(".comment-box").each(function() {
    	    var commentBox = $(this);
    	    if (commentBox.height() >= 140) {
    	      commentBox.find(".more-btn.opa-0").addClass("opa-1");
    	    }
    	  });
    	});
    
    $(".more-btn").on("click", function() {
    	  var commentBox = $(this).closest(".comment-box"); // 클릭한 버튼의 가장 가까운 .comment-box 요소를 찾습니다.
    	  if (commentBox.height() >= 140) {
    	    commentBox.toggleClass("more");
    	  }
    	});
    
    $(document).ready(function() {
        $(".comment-box").each(function() {
          var commentBox = $(this);
          if (commentBox.hasclass("more")) {
              var newValue = '접기';
              $('#more').val(newValue);
          }
        });
      });
    
    
</script>
  

</body>
</html>