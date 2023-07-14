<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PCWK</title>
</head>

<body>
<!-- jstl seesion정보 가져 오기 : user 세션변수명 -->
sessionScope: ${sessionScope.user }
<div>
  <!-- 검색  -->
  <form action="/ehr/user/doRetrieve.do" name="user_frm">
    <div>
      <!-- 검색구분 -->
      <select name="searchDiv" id="searchDiv">
         <option value="">전체</option>
         <option value="10">이름</option>
         <option value="20">이메일</option>
         <option value="30">아이디</option>
      </select>
      <!-- 검색어 -->
      <input type="text" name="searchWord" id="searchWord" placeholder="검색어를 입력하세요.">
      <!-- pageSize:10,20,30,50,100,200 -->
      <select name="pageSize" id="pageSize">
         <option value="10">10</option>
         <option value="20">20</option>
         <option value="30">30</option>
         <option value="50">50</option>
         <option value="100">100</option>
         <option value="200">200</option>
      </select>
      <!-- id와 doRetrieve()이름이 동일하면 오류 발생 
       form 태그안에 input 태그에서 id와 함수명이 같은경우 오류가 발생한다.
      -->
      <input type="button"  value="조회" id="doRetrieve" onclick="window.doRetrieve();">
    </div>
  
  </form>
  
	<table border="1"  id="userTable">
	 <thead>
	  <tr>
	    <td>NO</td>
	    <td>아이디</td>
	    <td>이름</td>
	    <td>등급</td>
	    <td>이메일</td>
	    <td>등록일</td>
	  </tr>
	  </thead>
	  <tbody>
	  <c:forEach var="vo" items="${list}">
		  <tr>
		    <td>${vo.num}</td>
		    <td>${vo.userId}</td>
		    <td>${vo.name}</td>
		    <td>${vo.level}</td>
		    <td>${vo.email}</td>
		    <td>${vo.reg_dt}</td>
		  </tr>
	  </c:forEach>
	  </tbody>
	
	</table>
	<div id="detail">
       <div  class="form-group">
        <label for="userId">아이디</label> 
        <input  type="text"  maxlength="20" name="userId" id="userId" placeholder="아이디" />
      </div>
       <div  class="form-group">
        <label for="title">이름</label> 
        <input  type="text"  maxlength="50" name="name" id="name" placeholder="이름" />
      </div>             	
	</div>
</div>
<script type="text/javascript">
	window.onload = function(){
		  //실행될 코드
		  let tableData = document.querySelector("#userTable tbody ");
		  tableData.addEventListener('click', function (e) {
		      console.log('doSelectOne');
		      const cell = e.target.closest('td');
		      const row = cell.parentElement;
		      const tds = row.children;
		      console.log("tds:"+tds[1].textContent);  
		      let sendData = {userId: tds[1].textContent};
		      const xhr = new XMLHttpRequest();
		      
		      //xhr.open("GET","/ehr/user/get.do?userId="+sendData.userId,false);
		      xhr.open("POST","/ehr/user/get.do",false);
		      //xhr.setRequestHeader("Content-type", "multipart/form-data");
		      //xhr.setRequestHeader('Content-Type', 'application/json');
		      xhr.onreadystatechange = () => {
		        if (xhr.readyState === XMLHttpRequest.DONE) {   
		          if (xhr.status === 200) {
		              let result = xhr.response;
		              let json   = JSON.parse(xhr.response);
		              console.log("result:"+result);
		              console.log("json.msgId:"+json.name);
		              console.log("json.msgContents:"+json.userId);
                  
		              
		              const newUserId = document.querySelector('#userId');
		              newUserId.value  = json.userId;
		              
	                const newName = document.querySelector('#name');
	                newName.value  = json.name;		              
		              
		           } else {
		             alert('request에 뭔가 문제가 있어요.');
		           }          
		        }
		      };
		      const formData = new FormData();
		      formData.append('userId', sendData.userId);
		      
		      //console.log('9999:'+JSON.stringify(sendData));
		      //let value = JSON.stringify(sendData);  
		      //console.log('value:'+value);
		      //let queryParams = encodeURIComponent(value);
		      //console.log('queryParams:'+queryParams);
		      xhr.send("userId="+sendData.userId);			  

			  
		  });
		  
	}

	
    function  doRetrieve(){
      console.log('doRetrieve');
      
      let frm = document.forms['user_frm'];
      
      let search =  frm.searchWord.value
      console.log('search:'+search);
      frm.submit();
    }
     
</script>
</body>
</html>