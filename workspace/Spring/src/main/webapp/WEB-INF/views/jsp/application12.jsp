<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath }"/>  
<%
   Enumeration<String> paramNames = application.getInitParameterNames();
   while(paramNames.hasMoreElements()){
	   
	   String name = paramNames.nextElement();//변수 이름
	   String nameValue = application.getInitParameter(name);
	   out.print("name:"+name+",value="+nameValue+"<br/>");
	   
   }
   
   //서버 정보 읽기
   //getServerInfo() : 서버정보
    String serverInfo = application.getServerInfo();
    out.println(serverInfo+"<br/>");
   //getMajorVersion(): 서블릿의 major버전
    out.println("MajorVersion:"+application.getMajorVersion());
   //getMinorVersion(): 서블릿의 minor버전
    out.println("MinorVersion:"+application.getMinorVersion());
%>
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

</body>
</html>