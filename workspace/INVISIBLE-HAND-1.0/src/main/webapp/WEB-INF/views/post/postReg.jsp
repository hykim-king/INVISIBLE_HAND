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
    
    int postNumValue  = vo.getPostNumber();
    request.setAttribute("postNumValue", postNumValue);
    
    // 세션에서 닉네임 가져오기
    String nickname = (String) session.getAttribute("nickname");
    if (nickname == null || nickname.isEmpty()) {
        nickname = "비회원";
    }
    request.setAttribute("nickname", nickname);
%>
<c:set var="CP" value="${pageContext.request.contextPath }"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="image/favicon-32x32.png">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
<script src="${CP}/resources/js/util.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/hand-board.css">
<title>보이지 않는 손 레이아웃</title>
</head>
<body>
  <!-- *---container Start---* -->

  <div class="h60px"></div>
  <div class="container-1200 con-main min-100vh">
  
    <div class="wrap-1000 ">
      <h1><c:out value="${ctg}" /> 글쓰기</h1>
      


    <!-- 버튼 -->
    <div class="row g-1 d-flex justify-content-end">
      <div class="col-auto">
        <input type="button" class="btn" value="목록" id="moveToList" onclick="doMoveToList()">
        <input type="button" class="btn" value="등록" id="doSave">
      </div>
    </div>
    <!--// 버튼 ----------------------------------------------------------------->
    <form action="${CP}/post/postReg.do" method="get" name="regFrm" id="regFrm">
        <input type="hidden" name="pageNo" id="pageNo">
        <input type="hidden" name="categoryNumber"    id="categoryNumber" value='${inVO.getCategoryNumber()}'>
        <div class="mb-3">
          <label for="exampleFormControlInput1" class="form-label">제목</label>
          <input type="text" id="title" name="title" class="form-control title_cls" placeholder="제목을 입력하세요." required="required" maxlength="66">
        </div>
        
        <div clascategoryNumbermb-3">
          <label for="exampleFormControlInput1" class="form-label">닉네임</label>
          <input type="text" class="form-control" id="nickname" name="nickname" value="${nickname}" readonly="readonly">
        </div>
        
        <div class="mb-3">
          <label for="exampleFormControlTextarea1" class="form-label">내용</label>
          <textarea class="form-control" id="content" name="content" rows="3" required="required"></textarea>
        </div>
                
    </form>
    </div><!-- **---wrap End---** -->
  </div> <!-- **---container End---** -->
<script>
$(".categorybox").click(function() {
    $(this).siblings().removeClass("active");
    $(this).addClass("active");
   // $("html, body").scrollTop($(".tab-box").height());
    let clickTab = $(this).attr("data-tab");
    $(".tab-box").removeClass("active");
    $("." + clickTab).addClass("active");
});
</script>
<script>

      function moveToListView() {
          let categoryNumber = "<c:out value='${ctgNumValue}' />";
          window.location.href = "${CP}/post/postList.do?categoryNumber=" + categoryNumber;
      }
      
      $(document).ready(function () {
            $("#moveToList").on("click", function () {
                //if (confirm('목록하면으로 이동합니다.') == false) return;
      
                moveToListView();
            });
        });
     
      
      $("#doSave").on("click",function(){
          console.log("doSave");
          console.log("ctgNumValue: "+"${ctgNumValue}")
          console.log("title: "+$("#title").val())
          console.log("postNumValue: "+$("#postNumValue").val())
          
          
          
          //필수 값: title, content
          
         let titleValue = $("#title").val();
         console.log("title: " + titleValue);
         
          if(eUtil.ISEmpty($("#title").val()) == true){
              alert("제목을 입력 하세요.");
              $("#title").focus();
              return;
          } 
          
          if(eUtil.ISEmpty($("#nickname").val()) == true){
              alert("등록자를 입력 하세요.");
              $("#nickname").focus();
              return;
          }         
          
          if(eUtil.ISEmpty($("#content").val()) == true){
                alert("내용을 입력 하세요.");
                $("#content").focus();
                return;             
          }
          
          
          //confirm
          if(confirm('등록 하시겠습니까')==false)return;
          
          //console.log("확인:");
          
          //ajax
            $.ajax({
                type: "POST",
                url:"/ehr/post/doSave.do",
                asyn:"true",
                dataType:"html",
                data:{
                  categoryNumber: $("#categoryNumber").val(),
                  title: $("#title").val(),
                  nickname: $("#nickname").val(),
                  content: $("#content").val()
                },
                success:function(data){//통신 성공
                    console.log("success data:"+data);
                    let parsedJson = JSON.parse(data);
                    //title 미 입력
                    if("10" == parsedJson.msgId ){
                        alert(parsedJson.msgContents);
                        $("#title").focus();
                        return;
                    }  
                     
                     //등록자 미 입력
                     if("20" == parsedJson.msgId ){
                         alert(parsedJson.msgContents);
                         $("#content").focus();
                         return;
                     }           
                     
                     
                     if("1" == parsedJson.msgId ){
                       alert(parsedJson.msgContents);
                       //javascript
                       moveToListView();
                     }else{
                       alert(parsedJson.msgContents);
                     }   
                },
                error:function(data){//실패시 처리
                    console.log("error:"+data);
                }
              });
          
          
      });//--doSave
      
  </script>  
</body>
</html>