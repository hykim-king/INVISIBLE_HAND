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
    
    CommentVO cmtVO = (CommentVO)request.getAttribute("commentVO");
    int bottomCount = 10;
    int pageSize    = 10;
    int pageNo      =  1;
    int totalCnt    =  0;
    String searchWord = "";
    String searchDiv  = "";
      
    if(null != cmtVO){
        pageSize   = cmtVO.getPageSize();
        pageNo     = cmtVO.getPageNo();
        searchDiv  = cmtVO.getSearchDiv();
        searchWord = cmtVO.getSearchWord();
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
        <form action="${CP}/post/doSelectOne.do" method="post" name="cmtFrm" id="cmtFrm">
        <input type="hidden" name="pageNo" id="pageNo">
        <input type="hidden" name="categoryNumber"    id="categoryNumber" value='${inVO.getCategoryNumber()}'>
        <input type="hidden" name="postNumber"    id="postNumber" value="${inVO.getPostNumber()}"> 
          <div id="title" class="contents-title">
            <p><c:out value="${outVO.title}" /><p>
            <div class="writer">글쓴이:<c:out value="${outVO.nickname}" /></div>
          </div>
          <div class="contents content" id="contents content">
            <p><c:out value="${outVO.content}" /></p>
          <div class="recommend-btn">
            <input type="button" class="recommend-val" value="추천" id=postUpdateLikes>
            <div class="likes">
              <%-- <c:out value="${outVO.likes}" /> --%>
              <c:out value="${postLikesCnt}" />
            </div>
          </div>
          </div>
          
        </form>
      <!-- *---댓글 Start---* -->
      <div class="comment-area" var="comment">
     
       <c:if test="${commentCnt >= 0}">
          <h2><c:out value="${commentCnt}"/> 개의 댓글</h2>
          <div class="h30px"></div>
       </c:if>

        
          <c:forEach var="comment" items="${list}" varStatus="status">
              <div class="comment-box" id="comment-box">
                  <div class="comment-desc">
                      <input type="hidden" name="commentNumber" id="commentNumber" value="${comment.commentNumber}">   
                      <h4><c:out value="${comment.nickname}"/></h4>
                      <span><c:out value="${comment.writtenDate}"/></span>
                      <div class="content-text">
                          <p>${comment.content}</p>
                          <textarea name="newContent" class="update-comment" id="update-comment"style="display: none;">${comment.content}</textarea>
                      </div>
                  </div>
                  <div class="comment-icon">
                     <!--  <i class='fas fa-bars fa-sm' style='color:#979797'></i> -->
                      <i class='fas fa-thumbs-up fa-sm cmt-like-icon' style='color:#FF007A'
                          data-comment-number="${comment.commentNumber}" data-nickname="${comment.nickname}" data-comment-likes="${comment.likes}">
                          <c:out value="${comment.likes}"/>
                      </i>
                      <div class="btn-right">
                          <input type="button" class="btn-updt" value="수정" name="updateViewComment" id="updateViewComment${status.index}" 
                              data-comment-number="${comment.commentNumber}" data-nickname="${comment.nickname}" data-comment-likes="${comment.likes}">
                          <input type="button" class="btn-delet" value="삭제" name="deleteComment" id="deleteComment${status.index}" 
                              data-comment-number="${comment.commentNumber}" data-nickname="${comment.nickname}" data-comment-likes="${comment.likes}">
                          <input type="button" class="btn-subUpdt" value="확인" name="updateComment" id="updateComment${status.index}" 
                              data-comment-number="${comment.commentNumber}" data-nickname="${comment.nickname}" data-comment-likes="${comment.likes}">
                          <input type="button" class="btn-noUpdt" value="취소" name="noUpdateComment" id="noUpdateComment${status.index}" 
                              data-comment-number="${comment.commentNumber}" data-nickname="${comment.nickname}" data-comment-likes="${comment.likes}">
                      </div>                    
                  </div>
                  <div class="update-form hidden" id="updateForm${status.index}">
                      <form action="${CP}/comment/doUpdate.do" method="post">
                          <input type="hidden" name="commentNumber" value="${comment.commentNumber}">
                          <input type="hidden" name="content" value="${comment.content}">
                          <textarea name="newContent" style="display: none;">${comment.content}</textarea>
                          
                      </form>
                  </div>
                  <div class="more-btn opa-0"><i class='fas fa-angle-down fa-lg' style='color:#FF007A'></i></div>
              </div>
          </c:forEach>


          
        
       <!-- 페이징 -->
        <div class="d-flex justify-content-center">
        <%= StringUtil.renderPaging(totalCnt, pageNo, pageSize, bottomCount,  cPath+"/post/doSelectOne.do", "searchPage") %>
       </div> 
       <!--// 페이징 ---------------------------------------------------------------->
        
      <!-- 댓글 작성 -------------->
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

$(".btn-noUpdt").on("click", function() {
    const commentBox = $(this).closest('.comment-box');
    const updateForm = commentBox.find('.update-form');
    const contentText = commentBox.find('.content-text');
    const subUpdtButton = commentBox.find('.btn-subUpdt');

    updateForm.addClass('hidden');
    subUpdtButton.hide();
    contentText.find('p').show();
    contentText.find('textarea[name="newContent"]').hide();
    commentBox.find('.btn-delet, .btn-updt').show();
    
    commentBox.find('.btn-noUpdt').hide();
});
</script>
<script>
  
//수정 버튼 클릭 시
  $(document).ready(function() {
    $(".update-form").hide(); // 숨기기
    $(".btn-subUpdt, .btn-noUpdt").hide();
    
    $(".btn-updt").on("click", function() {
        const commentBox = $(this).closest('.comment-box');
        const updateForm = commentBox.find('.update-form');
        const contentText = commentBox.find('.content-text');
        const subUpdtButton = commentBox.find('.btn-subUpdt');
        const noUpdtButton = commentBox.find('.btn-noUpdt');

        const content = contentText.find('p').text();
        const textarea = contentText.find('textarea[name="newContent"]');
        
        // 활성화된 수정 버튼 클래스를 변경하여 비활성화로 만듦
        $(".btn-updt").prop("disabled", true);
        $(this).prop("disabled", false); // 클릭한 버튼만 활성화
        textarea.val(content);

        updateForm.removeClass('hidden');
        subUpdtButton.show(); // 확인 버튼 나타내기
        noUpdtButton.show();//취소 버튼 나타내기
        contentText.find('p').hide(); // p 요소 숨기기
        textarea.show(); // textarea 요소 보이기

        commentBox.find('.btn-delet, .btn-updt').hide(); // 삭제와 수정 버튼 숨기기
    });

    // 확인 버튼 클릭 시
    $(".btn-subUpdt").on("click", function() {
        const commentBox = $(this).closest('.comment-box');
        const updateForm = commentBox.find('.update-form');
        const contentText = commentBox.find('.content-text');

        const newContent = contentText.find('textarea[name="newContent"]').val();
        const contentParagraph = contentText.find('p');
        const confirmButton = $(this);

        const commentNumber = confirmButton.data("comment-number");
        const loggedInNickname = "${sessionScope.member.nickName}";
        const updtNickname = confirmButton.data("nickname");

        if (loggedInNickname === updtNickname) {
            if (confirm('댓글을 수정 하시겠습니까?')) {
                $.ajax({
                    type: "POST",
                    url: "/ehr/comment/doUpdate.do",
                    async: true,
                    dataType: "json",
                    data: {
                        commentNumber: commentNumber,
                        content: newContent
                    },
                    success: function(parsedJson) {
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
            alert('댓글 작성자만 수정할 수 있습니다.');
        }

        contentParagraph.css('display', 'block');
        contentText.find('textarea[name="newContent"]').css('display', 'none');
        updateForm.addClass('hidden');

        confirmButton.hide(); // 숨김 처리
        commentBox.find('.btn-delet, .btn-updt').show(); // 나타내기
    });
});


  function searchPage(url, pageNo){
    console.log("url:"+url);
    console.log("pageNo:"+pageNo);
    
    let frm = document.cmtFrm;
    frm.action = url;
    frm.pageNo.value=pageNo;
    frm.submit();//controller call  
  }
    
     //cmtUpdateLikes
     //$(".cmt-like-icon").on("click", function() {
     $(".cmt-like-icon[data-comment-number]").on("click", function() { 
         //var commentNumber = $(this).data("comment-number");
         var commentNumber = $(this).data("comment-number");
         var loggedInNickname = "${sessionScope.member.nickName}";
         console.log("commentNumber: " + commentNumber );
         if (loggedInNickname !== null && loggedInNickname !== "") {
           $.ajax({
               type: "POST",
               url: "/ehr/likes/doCheckLike.do", 
               async: true,
               dataType: "json",
               data: {
                 nickname: loggedInNickname,
                 likesType: 20,//댓글
                 typeNumber: commentNumber
               },
               success: function(data) {
                      console.log("success data:", data);
                      location.reload();
                      if (data.flag === 0) { 
                          console.log("추천이 추가되었습니다.");
                          $.ajax({
                              type: "POST",
                              url: "/ehr/likes/insertLike.do",
                              dataType: "json",
                              data: {
                                  nickname: loggedInNickname,
                                  likesType: 20,//댓글
                                  typeNumber: commentNumber
                              },
                              success: function(data) {
                                  console.log("insertLike success:", data);
                              },
                              error: function(data) {
                                  console.log("insertLike error:", data);
                              }
                          });
                      } else if (data.flag === "1") { 
                          console.log("추천이 취소되었습니다.");
                          $.ajax({
                              type: "POST",
                              url: "/ehr/likes/deleteLike.do",
                              dataType: "json",
                              data: {
                                  nickname: loggedInNickname,
                                  likesType: 20,//댓글
                                  typeNumber: commentNumber
                              },
                              success: function(data) {
                                  console.log("deleteLike success:", data);
                              },
                              error: function(data) {
                                  console.log("deleteLike error:", data);
                              }
                          });
                      }
                  },
                  error: function(data) {
                      console.log("error:", data);
                  }
              });
          } else {
              alert("로그인을 해주세요.");
          }
      });//cmtUpdateLikes----------------------------------------
    
   
   $("#postUpdateLikes").on("click", function() {
      const postNumber = "${postNumValue}"; 
      var loggedInNickname = "${sessionScope.member.nickName}";
      console.log("postNumber"+postNumber);
      
      if (loggedInNickname !== null && loggedInNickname !== "") {
          $.ajax({
              type: "POST",
              url: "/ehr/likes/doCheckLike.do", 
              async: true,
              dataType: "json",
              data: {
                  nickname: loggedInNickname,
                  likesType: 10,//게시판
                  typeNumber: postNumber
              },
              success: function(data) {
                  console.log("success data:", data);
                  
                  location.reload();
                  if (data.flag === 0) { 
                      console.log("추천이 추가되었습니다.");
                      $.ajax({
                          type: "POST",
                          url: "/ehr/likes/insertLike.do",
                          dataType: "json",
                          data: {
                              nickname: loggedInNickname,
                              typeNumber: 10,
                              typeNumber: postNumber
                          },
                          success: function(data) {
                              console.log("insertLike success:", data);
                          },
                          error: function(data) {
                              console.log("insertLike error:", data);
                          }
                      });
                  } else if (data.flag === "1") { 
                      console.log("추천이 취소되었습니다.");
                      $.ajax({
                          type: "POST",
                          url: "/ehr/likes/deleteLike.do",
                          dataType: "json",
                          data: {
                              nickname: loggedInNickname,
                              likesType: 10,
                              typeNumber: postNumber
                          },
                          success: function(data) {
                              console.log("deleteLike success:", data);
                          },
                          error: function(data) {
                              console.log("deleteLike error:", data);
                          }
                      });
                  }
              },
              error: function(data) {
                  console.log("error:", data);
              }
          });
      } else {
          alert("로그인을 해주세요.");
      }
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
                            //location.reload(); // 페이지 새로고침
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
        var angle = $(this).find(".fa-angle-down"); // 클릭한 버튼의 가장 가까운 .comment-box 요소를 찾습니다.
        if (commentBox.height() >= 140) {
          commentBox.toggleClass("more");
          angle.toggleClass("act");

        }
      });
    
    $(".btn-updt").on("click", function() {
        var commentBox = $(this).closest(".comment-box"); // 클릭한 버튼의 가장 가까운 .comment-box 요소를 찾습니다.
        if (commentBox.height() >= 140) {
          commentBox.addClass("updt");
        }
      });
    
    
</script>
  

</body>
</html>