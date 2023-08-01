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
        <form action="/member/login" method="post">
          <div class="login-logo">
            <a href="#"><img class="login-logo-img" src="../resources/image/pngaaa.com-589654.png" alt="logo" /></a>
          </div>

      <div class="line3px"></div>
      <div class="line1px"></div>
      <div class="input-wrap">
          <!-- Email -->
          <p class="input-title">Email</p>
          <label> 
	          <input class="size email" type="text" id="email" name="email" 
	          placeholder="example@mail.com">
          </label>

          <!-- Password -->
          <p class="input-title password">Password</p>
          <label> <input type="password" name="password"
            placeholder="********" class="size" id="password">
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
          <input type="submit" value="login" id ="fn_email" name="fn_email" class="btn w100 login-btn">
        </p>
        <span class="back-home"><a href="${CP}/main/main.do">메인페이지로 돌아가기</a></span>
        </form>
		</div><!-- **---wrap End---** -->
	</div>

	<!-- **---container End---** -->
<script src="../resources/js/jquery-3.7.0.js"></script>
<script>
$('#fn_email').on("click",function() {
    $.ajax({
      type : "POST",
      url : "doLogin.do",
      dataType : "html",
      data : {
        email : $('#email').val(),
        password : $('#password').val()
      },
      success : function(data) {// 통신 성공
        let paredJSON = JSON.parse(data)
        if ("1" == paredJSON.msgId) {
          alert(paredJSON.msgContents);
          window.location.href = '/chart/chart.do';
        } else if("2" == paredJSON.msgId){
          alert(paredJSON.msgContents);
          window.location.href = '/main/main.do';
        }
      },
      error : function(data) {// 실패시 처리
        console.log("통신 오류");
      }
    });

  });// --end doLogin------------------

</script>
</body>
</html>