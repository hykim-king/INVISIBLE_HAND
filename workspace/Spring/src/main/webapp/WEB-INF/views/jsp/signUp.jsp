<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
  integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
<script src="${CP}/resources/js/util.js"></script>
<title>회원가입</title>
</head>
<body>
  <h2>회원가입</h2>

  <form action="${CP}/login/signUp.do" method="post" id="writeForm">
    <label for="id">아이디:</label> <input type="text" id="id" name="id"
      required pattern="[A-Za-z0-9]{4,20}"
      placeholder="4자 이상 20자 이하의 영문 대소문자, 숫자"> <input type="button"
      id="idCheckBtn" value="중복 확인" class="idCheckBtn">
    <div class="alert alert-danger" id="idCheckDiv" style="color: red;">아이디를
      입력해주세요.</div>
    <br>
    <br>


    <div class="form-group">
      <label for="pw">비밀번호:</label> <input type="password" id="pw"
        name="pw" pattern=".{8,20}" required placeholder="8자 이상 20자 이하">
      <div class="alert alert-danger" id="pwCheckDiv" style="color: red;">비밀번호를
        입력해주세요.</div>
      <br>
      <br>
    </div>

    <div class="form-group">
      <label for="pw2">비밀번호 확인:</label> <input type="password" id="pw2"
        name="pw2" pattern=".{8,20}" required placeholder="8자 이상 20자 이하">
      <div class="alert alert-danger" id="pw2CheckDiv"></div>
      <br>
      <br>
    </div>

    <label for="name">이름:</label> <input type="text" id="name" name="name"
      pattern="[가-힣]{2,20}" required placeholder="2자 이상 20자 이하의 한글">
    <div class="alert alert-danger" id="nameCheckDiv" style="color: red;">이름을
      입력해주세요.</div>
    <br>
    <br> <label for="email">이메일:</label> <input type="email"
      id="email" name="email" required placeholder="아이디 @ 도메인주소"> <input
      type="button" id="emailCheckBtn" value="중복 확인" class="emailCheckBtn">
    <div class="alert alert-danger" id="emailCheckDiv" style="color: red;">이메일을
      입력해주세요.</div>
    <br>
    <br> <label for="birthday">생년월일:</label> <input type="date"
      id="birthday" name="birthday" required><br>
    <br>


    <input type="submit" class="registerBtn" value="가입하기"> <input
      type="button" class="cancelBtn" id="cancel" value="취소">
  </form>


  <script>
    // JSP タグである ${CP} を固定されたパスに置き換え
    var CP = "${pageContext.request.contextPath}";

    $(document).ready(function() {
      // 이름 유효성 검사
      $("#name").keyup(function() {
        var name = $.trim($("#name").val());

        if (name.length < 2) {
          $("#nameCheckDiv").removeClass("alert-success");
          $("#nameCheckDiv").addClass("alert-danger");
          $("#nameCheckDiv").text("이름은 2자 이상 입력해주세요.");
        } else if (name.length > 20) {
          $("#nameCheckDiv").removeClass("alert-success");
          $("#nameCheckDiv").addClass("alert-danger");
          $("#nameCheckDiv").text("이름은 20자 이하로 입력해주세요.");
        } else if (/^[가-힣]+$/.test(name) == false) {
          $("#nameCheckDiv").removeClass("alert-success");
          $("#nameCheckDiv").addClass("alert-danger");
          $("#nameCheckDiv").text("이름 형식이 올바르지 않습니다.");
        } else {
          $("#nameCheckDiv").text("");
        }
      });

      // 이메일 유효성 검사
      $("#email").keyup(function() {
        var email = $.trim($("#email").val());
        var emailPattern = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;

        if (!emailPattern.test(email)) {
          $("#emailCheckDiv").removeClass("alert-success");
          $("#emailCheckDiv").addClass("alert-danger");
          $("#emailCheckDiv").text("유효한 이메일을 입력해주세요.");
        } else {
          $("#emailCheckDiv").removeClass("alert-danger");
          $("#emailCheckDiv").addClass("alert-success");
          $("#emailCheckDiv").text("");
        }
      });

      // 비밀번호 유효성 검사
      $("#pw, #pw2").keyup(function() {
        clearPasswordError();

        var pw = $("#pw").val();
        var pw2 = $("#pw2").val();

        if (pw === "") {
          $("#pwCheckDiv").empty();
          return;
        }

        if (pw.length < 8 || pw.length > 20) {
          $("#pwCheckDiv").text("비밀번호는 8자 이상 20자 이하로 입력해주세요.");
          $("#pwCheckDiv").css("color", "red");
        } else {
          $("#pwCheckDiv").text("");
        }

        if (pw2 === "") {
          $("#pw2CheckDiv").empty();
          return;
        }

        if (pw !== pw2) {
          $("#pw2CheckDiv").text("비밀번호가 일치하지 않습니다.");
          $("#pw2CheckDiv").css("color", "red");
        } else {
          $("#pw2CheckDiv").removeClass("alert-danger");
          $("#pw2CheckDiv").addClass("alert-success");
          $("#pw2CheckDiv").text("비밀번호가 일치합니다.");
          $("#pw2CheckDiv").css("color", "blue");
        }
      });

      function clearPasswordError() {
        $("#pwCheckDiv").empty();
        $("#pwCheckDiv").css("color", "");
        $("#pw2CheckDiv").empty();
        $("#pw2CheckDiv").css("color", "");
      }

      // 이메일 중복 체크
      $("#emailCheckBtn").click(function() {
        var email = $.trim($("#email").val());

        $.ajax({
          type: "POST",
          url: CP + "/login/emailCheck.do",
          async: true,
          dataType: "html",
          data: {
            email: email
          },
          success: function(data) {
            let parsedJson = JSON.parse(data);
            if ("1" === parsedJson.msgId) {
              alert(parsedJson.msgContents);
            } else {
              if (email.length < 1) {
                alert("이메일을 입력해주세요.");
              } else if (/^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/.test(email) === false) {
                alert("유효한 이메일 형식이 아닙니다.");
              } else {
                alert(parsedJson.msgContents);
              }
            }
          },
          error: function(data) {
            console.log("error: " + data);
          }
        });
      });

      // 폼 서브밋
      $("#writeForm").submit(function(event) {
        event.preventDefault();

        var pwCheck = true;
        var pw = $("#pw").val();
        var pw2 = $("#pw2").val();

        if (!pwCheck || pw !== pw2) {
          alert("비밀번호를 확인해주세요.");
          $("#pw").focus();
          return;
        }

        $.ajax({
          url: CP + "/login/signUp.do",
          method: "POST",
          data: $("#writeForm").serialize(),
          success: function(result) {
            alert("회원가입이 완료되었습니다.");
            window.location.href = CP + "/login/loginView.do";
          },
          error: function(xhr, status, error) {
            alert("회원가입에 실패했습니다.: " + error);
            $("#id").val("");
            $("#pw").val("");
            $("#pw2").val("");
            pwCheck = false;
          }
        });
      });

      // 취소 버튼
      $("#cancel").on("click", function(e) {
        e.preventDefault();
        if (confirm("입력을 취소하시겠습니까?")) {
          history.back();
        } else {
          e.stopPropagation();
        }
      });
    });
  </script>
</body>
</html>
