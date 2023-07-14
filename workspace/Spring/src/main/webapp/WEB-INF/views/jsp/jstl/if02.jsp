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
<title>if태그</title>
</head>
<body>
    <h2>if태그</h2>
    <hr/>
    
    <c:if test="true">
             무조건 수행 <br/>
    </c:if>
    
    param을 읽어 처리(http://192.168.0.123:8080/ehr/jsp/jstl/if02.do?name=pcwk)<br/>
    <c:if test="${param.name == 'pcwk' }">
       name 파라메터 값이 ${param.name } 입니다.<br/>
    </c:if>
    param age(http://192.168.0.123:8080/ehr/jsp/jstl/if02.do?age=23)<br/><br/>
    
    <c:if test="${param.age > 18 }">
             당신은 술을 구매할 수 있습니다.<br/>
    </c:if>
    
</body>
</html>