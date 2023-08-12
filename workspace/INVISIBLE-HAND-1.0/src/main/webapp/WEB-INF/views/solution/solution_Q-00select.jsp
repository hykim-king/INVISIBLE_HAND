<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="image/favicon-32x32.png">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/solution.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<title>보이지 않는 손 레이아웃</title>

</head>
<body>
  <div class="h60px" style="height: 80px;"></div>
  <div class="container-1400 Q_00">
        <div class="pop-que">
            <h5>
                귀사의 업체 종목을<br>"제조업 또는 비제조업" 에서 선택해 주십시오.
            </h5>
            <div class="btn">
                <button type="button" onclick="move01();">제조업</button>
                <button type="button" onclick="move02();">비제조업</button>
            </div>
        </div>
  </div> <!-- **---container End---** -->
	
  <script src="../resources/js/jquery-3.7.0.js"></script>
    <script >
        function move01(){
            location.href = "${CP}/solution/solution_Q-01poduct.do";
        }
        function move02(){
            location.href = "${CP}/solution/solution_Q-02noproduct.do";
        }
    </script>
</body>
</html>