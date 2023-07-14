<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"     uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">  
<!-- 화면에 100% 보여 준다.(핸펀 화면 기준으로 축소 방지) -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<%-- 동적으로 브라우저 제목을 처리 --%>
<title><tiles:getAsString name="title"/></title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>
   <div class="container-fluid">
      <header class="container-fluid">
         <tiles:insertAttribute name="header"/>
      </header>
      <article  class="container-fluid">
         <tiles:insertAttribute name="body"/>
      </article>
      <footer class="container-fluid">
         <tiles:insertAttribute name="footer"/>
      </footer>
   </div>
</body>
</html>