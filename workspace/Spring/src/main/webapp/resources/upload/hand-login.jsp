<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="${encoding}">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
<script src="${CP}/resources/js/util.js"></script>
<title>로그인</title>
</head>
<body>
<form action="${CP}/upload/doLogin.do" method="post">
  <div class="row justify-content-center mt-5">
    <div class="col-lg-4 col-md-6">
      <h3 class="mb-4">로그인</h3>
      <div class="mb-3">
        <label for="email" class="form-label">이메일</label>
        <input type="email" id="email" name="email" maxlength="100" class="form-control" value="" placeholder="이메일을 입력하세요.">
      </div>
      <div class="mb-3">
        <label for="password" class="form-label">비밀번호</label>
        <input type="password" id="password" name="password" maxlength="100" class="form-control">
      </div>
      <div class="additional-options">
        <a href="${CP}/resources/signUp.jsp">회원가입</a>
        <a href="#">아이디 찾기</a>
        <a href="#">비밀번호 찾기</a>
      </div>
      <button type="button" onclick="handleLoginSuccess()" class="btn btn-primary">로그인</button>
    </div>
  </div>
</form>
<script>
function handleLoginSuccess() {
    window.location.href = "${CP}/resources/hand-chart.html";
}
</script>
</body>
</html>
