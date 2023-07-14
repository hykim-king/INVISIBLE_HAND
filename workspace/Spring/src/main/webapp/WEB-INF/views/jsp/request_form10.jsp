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
   <h2>request테스트</h2>
   <hr/>
   <form action="/ehr/jsp/request_form10_post.do" method="post">
       <table border="1" >
          <tr>
            <td>이름</td>
            <td><input type="text" name="username"></td>
          </tr>
          <tr>
            <td>관심분야</td>
            <td>
              <input type="checkbox" name="favorite"   value="Java">Java</input>
              <input type="checkbox" name="favorite"   value="Oracle">Oracle</input>
              <input type="checkbox" name="favorite"   value="Spring">Spring</input>
            </td>
          </tr>
          <tr>
            <td colspan="2"><input type="submit" value="전송"></td>
          </tr>
       
       </table>
   </form>
</body>
</html>