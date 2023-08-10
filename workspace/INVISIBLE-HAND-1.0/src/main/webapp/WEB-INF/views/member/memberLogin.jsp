<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/login.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<title>보이지 않는 손 레이아웃</title>
</head>
<body>
	<!-- *---container Start---* -->

	<div class="h60px"></div>
	<div class="container-1200 min-100vh con-login">
		<div class="login-wrap">
        <form action="${CP}/main/main.do" method="post">
          <div class="login-logo">
            <a href="#"><img class="login-logo-img" src="../resources/image/pngaaa.com-589654.png" alt="logo" /></a>
          </div>

      <div class="line3px"></div>
      <div class="line1px"></div>
      <div class="input-wrap">
          <!-- Email -->
          <p class="input-title">ID</p>
          <label> 
	          <input class="size ID" type="ID" id="memberId" name="memberId" required="required">
          </label>

          <!-- Password -->
          <p class="input-title password">Password</p>
          <label> 
            <input type="password" name="password"class="size password" id="password" required="required">
          </label>
      </div>   
      <div class="line1px"></div>
      <div class="line3px"></div>
        <p class="find">
          <span><a href="${CP}/member/memberPWChange.do">비밀번호 찾기</a></span> 
          <span><a href="${CP}/member/memberJoin.do">회원가입</a></span>
        </p>
        <!-- <input type="submit" value="확인"> -->
        <p>
          <input type="submit" value="login" id ="goLogin" name="goLogin" class="btn w100 login-btn">
        </p>
                <p>
          <input type="submit" value="카카오로 로그인" id ="goLogin" name="goLogin" class="btn w100 login-btn">
        </p>
        <span class="back-home"><a href="${CP}/main/main.do">메인페이지로 돌아가기</a></span>
        </form>
		</div><!-- **---wrap End---** -->
	</div>

	<!-- **---container End---** -->
<script src="../resources/js/jquery-3.7.0.js"></script>
<script>
$(document).ready(function() {

    $("#goLogin").on("click", function() {//로그인 버튼을 클릭했을 때
    	if (confirm("로그인 하시겠습니까?") == false) return;
      $.ajax({
        type: "POST",
        url: "dologin.do",//멤버 컨트롤러에 있는 주소
        async: true,
        dataType: "json", // 변경된 부분: 응답을 JSON으로 예상
        data: {
        	memberId: $("#memberId").val(),
          password: $("#password").val()
        },
        
        // 1:아이디미입력 2:비밀번호 미입력
        // 10(id 오류), 20(비번오류), 30(성공)
        success: function(data) {
          console.log("success data:" + data);
          if ("1" == data.msgId || "10" == data.msgId) {//
            alert(data.msgContents);
            $("#id").focus();
            return;
          }
          if ("2" == data.msgId || "20" == data.msgId) {
            alert(data.msgContents);
            $("#password").focus();
            return;
          }
          if ("30" == data.msgId) {
            alert(data.msgContents);
            window.location.href = "${CP}/main/main.do"; // 변경된 부분: 리다이렉트 처리
          }
        },
        error: function(data) {
          console.log("error:" + data);
          console.log(data);
        }
      });
    });
    
});
</script>
</body>
</html>