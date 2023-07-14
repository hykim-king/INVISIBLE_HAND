<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath }"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
<script src="${CP}/resources/js/util.js"></script>
<title>Insert title here</title>
</head>
<body>
    <h2>request내장 객체</h2>
    <hr/>
     클라이언트 ip: <%= request.getRemoteAddr() %> <br/>
     서버이름: <%= request.getServerName() %> <br/>
     서버PORT: <%= request.getServerPort() %> <br/>      
     요청URI: <%= request.getRequestURI() %> <br/>
     컨텍스트: <%= request.getContextPath() %> <br/>
     프로토콜: <%= request.getProtocol() %> <br/>    
     메서드: <%= request.getMethod() %> <br/>          
    인코딩: <%= request.getCharacterEncoding() %> <br/>
        
</body>
</html>