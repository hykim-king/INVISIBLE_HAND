<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="image/favicon-32x32.png">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/login.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<title>비밀번호 변경,회원탈퇴페이지 입니다</title>
</head>
<body>
	<!-- *---container Start---* -->

	<div class="h60px"></div>
	<div class="container-1400 min-100vh con-login">
		<div class="find-wrap">
			<form action="/member/join" method="post" id="register-form">
				<div class="login-logo">
					<a href="#"><img class="login-logo-img" src="image/pngaaa.com-589654.png" alt="logo" /></a>
					
				</div>

				
				<!--본인인증 -->
				<div class="form-h3">
					<div class="line1px"></div>
					<div class="line3px"></div>
					<h3>비밀번호 변경</h3>
					<div class="line3px"></div>
					<div class="line1px"></div>
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
				<div class="label-margin">
					<p class="input-title">비밀번호 재설정</p>
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
					

				
				<div class="line1px"></div>
				<div class="line3px"></div>

				<!-- 버튼 -->
				<div class="submit">
					<input id="register" type="submit" value="회원가입" class="btn w70">
				</div>

				<p class="find join">
					<span><a href="/ehr/resources/hand-login.html">로그인페이지로 이동</a></span> 
					<span><a href="index">메인페이지로 돌아가기</a></span>
				</p>
			</form>
		</div><!-- **---wrap End---** -->
	</div>

	<!-- **---container End---** -->
	

</body>
</html>