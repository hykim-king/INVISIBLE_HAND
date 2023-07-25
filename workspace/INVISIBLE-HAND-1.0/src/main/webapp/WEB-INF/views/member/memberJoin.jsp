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
  <div class="container-1400 con-login">
    <div class="join-wrap">
      <form action="/member/join" method="post" id="register-form">
        <div class="login-logo">
          <a href="#"><img class="login-logo-img" src="../resources/image/pngaaa.com-589654.png" alt="logo" /></a>
          
        </div>

        
        <!--본인인증 -->
        <div class="form-h3">
          <div class="line1px"></div>
          <div class="line3px"></div>
          <h3>본인인증</h3>
          <div class="line3px"></div>
          <div class="line1px"></div>
        </div>

        <div class="label-margin">
          <p class="input-title">ID</p>
          <label> 
            <input type="ID" name="ID" id="ID" placeholder="ID를 입력하세요" class="size border-bottom" required="required">
            <input onclick = "fn_idChk();" type="button" value="중복확인" class="btn btn-white">
          </label>
        </div>

        <div class="label-margin">
          <p class="input-title">닉네임</p>
          <label> 
            <input type="nickname" name="nickname" id="nickname" placeholder="닉네임을 입력하세요" class="size border-bottom" required="required">
            <input onclick = "fn_idChk();" type="button" value="중복확인" class="btn btn-white">
          </label>
        </div>
        
        <div class="label-margin">
          <p class="input-title">E-mail</p></p>
          <label> 
            <input type="E-mail" name="E-mail" id="E-mail" placeholder="E-mail을 입력하세요" class="size border-bottom" required="required">
            <input onclick = "fn_idChk();" type="button" value="인증번호 전송" class="btn btn-white">
          </label>
        </div>
        
        <div class="label-margin">
          <p class="input-title">E-mail 인증번호 확인</p>
          <label> 
            <input type="text" class="size numberOnly border-bottom checkmark" name="checkInput" id="checkInput" placeholder="인증번호 6자리를 입력해주세요" maxlength="6" required>
            <i class='fas fa-check-circle fa-sm' style='color:#4200FF; margin-left: -20px;'></i>
            <input type="button" id="mail-Check-Btn" value="인증번호 확인"class="btn btn-white"> 
            <span id="mail-check-warn"></span>
          </label>
        </div>
          

        <!--비밀번호설정-->
        <div class="form-h3">
          <div class="line1px"></div>
          <div class="line3px"></div>
          <h3>비밀번호 설정</h3>
          <div class="line3px"></div>
          <div class="line1px"></div>
        </div>

        <div class="label-margin">
          <p class="input-title">비밀번호 입력</p>
          <label for="password"> 
            <input placeholder="비밀번호는 8이상 12자 이하로 설정바랍니다" type="password" class="size border-bottom" id="password" name="password" required>
            <input onclick = "fn_idChk();" type="button" value="부적합" class="btn btn-white">
          </label>
        </div>
          
        <div class="label-margin">
          <p class="input-title">비밀번호 확인</p>
          <label for="confirm_password"> 
            <input type="password" class="size border-bottom checkmark" id="confirm_password" name="confirm_password"
            required oninput="validateForm()" placeholder="비밀번호를 다시 한번 입력하세요"> 
            <i class='fas fa-check-circle fa-sm' style='color:#4200FF; margin-left: -20px;'></i>
            <input onclick = "fn_idChk();" type="button" value="일치" class="btn btn-white">
          </label>
        </div>
          

        <!--이용약관 동의-->
        <div class="form-h3">
          <div class="line1px"></div>
          <div class="line3px"></div>
          <h3>이용약관</h3>
          <div class="line3px"></div>
          <div class="line1px"></div>
        </div>

        <div class="label-margin">

          <div class="input-title">
            이용약관동의여부 확인 <span><a href="agree">[이용약관 자세히 읽기]</a></span>
          </div>
          <div class="input-chek">
            <input checked="checked" type="radio" name="agree" value="Y"
            id="m_y" required> <label for="m_y">
              동의합니다</label>
              <input type="radio" name="agree" value="N"
              id="m_n" > <label for="m_n">동의하지 않음</label>
          </div>
        </div>

        <div class="line1px"></div>
        <div class="line3px"></div>

        <!-- 버튼 -->
        <div class="submit">
          <input id="register" type="submit" value="회원가입" class="btn w70">
        </div>

        <p class="find join">
          <span><a href="${CP}/member/memberLogin.do">로그인페이지로 이동</a></span> 
          <span><a href="${CP}/main/main.do">메인페이지로 돌아가기</a></span>
        </p>
      </form>
    </div><!-- **---wrap End---** -->
  </div>

  <!-- **---container End---** -->

</body>
</html>