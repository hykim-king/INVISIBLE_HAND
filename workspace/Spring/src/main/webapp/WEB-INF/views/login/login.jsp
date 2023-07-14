<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring"  uri="http://www.springframework.org/tags" %> 
<%@taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>  
 
<!-- spring 제공 tablib -->
<%-- jsp comment: Html comment가 노출 되지 않음--%>
<!--  html comment: 소스보기에 노출 --> 
 <c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
 
<%
     String userId    = "";
     Cookie[] cookies = request.getCookies();
     if(null !=cookies  && cookies.length >0){
       for(int i=0;i<cookies.length;i++){
         if(cookies[i].getName().equals("loginId")){
           userId = cookies[i].getValue();
         }
       }
     }

%>    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">  
<!-- 화면에 100% 보여 준다.(핸펀 화면 기준으로 축소 방지) -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<%-- 동적으로 브라우저 제목을 처리 --%>
<title><spring:message code="login.title"/></title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
<script src="${CP}/resources/js/util.js"></script>
<script >
  // jquery == $
  
  function validateString(str) {
    let regex = /[a-z]{1,}$/;
    return regex.test(str);
  }
  
  $(document).ready(function(){  //모든 화면이다 로딩이 되면
     console.log("$(document).ready");
     
     $("#koBtn").on("click",function(){
    	 console.log("koBtn");  
         $.ajax({
             type: "GET",
             url:"/ehr/login/localeChange.do",
             asyn:"true",
             dataType:"html",
             data:{
               lang:"ko"
             },
             success:function(data){//통신 성공
                 console.log("success data:"+data);
                 let parsedJson = JSON.parse(data);
                 if(null != parsedJson){
                	 alert(parsedJson.msgContents);
                	 //화면 새로 고침
                	 window.location.reload();
                 }
                 
             },
             error:function(data){//실패시 처리
                 console.log("error:"+data);
             }
         });//--ajax------------------------------------------------------------
             	 
     });//-#koBtn--------------------------------------------------------------
     
     $("#engBtn").on("click",function(){
    	   console.log("engBtn");  
         $.ajax({
             type: "GET",
             url:"/ehr/login/localeChange.do",
             asyn:"true",
             dataType:"html",
             data:{
               lang:"en"
             },
             success:function(data){//통신 성공
                 console.log("success data:"+data);
                 let parsedJson = JSON.parse(data);
                 if(null != parsedJson){
                   alert(parsedJson.msgContents);
                   //화면 새로 고침
                   window.location.reload();
                 }             
             },
             error:function(data){//실패시 처리
                 console.log("error:"+data);
             }
         });//--ajax------------------------------------------------------------
         
     });//-#engBtn--------------------------------------------------------------
  
  
     //jquery 이벤트 감지
     $("#doLogin").on("click",function(){
       console.log("doLogin");  
       
       console.log("userId:"+$('#userId').val());
       console.log("passwd:"+$("#passwd").val());
         


       // 예제 사용
       console.log("validateString:"+ validateString($("#userId").val() ) ); // true
       
       
       if(""==$("#userId").val() || 0==$("#userId").val().length){
           alert("아이디를 입력하세요.");
           $('#userId').focus();
           return;
       }
       
       if(""==$("#passwd").val() || 0==$("#passwd").val().length){
           alert("비번을 입력하세요.");
           $('#passwd').focus();
           return;
       }       
       
       if(confirm('로그인 하시겠습니까?')==false)return;
       
       $.ajax({
           type: "POST",
           url:"${CP}/login/doLogin.do",
           dataType:"html",
           data:{
             userId: $('#userId').val(),
             passwd: $("#passwd").val()  
           },
           success:function(data){//통신 성공
               //success data:{"msgId":"30","msgContents":"pt99_01가 로그인 되었습니다.","num":0,"totalCnt":0,"pageNo":0,"pageSize":0}
               //JSON.parse() 메서드는 JSON 문자열의 구문을 분석하고, 그 결과에서 JavaScript 값이나 객체를 생성합니다. 
               let paredJSON = JSON.parse(data)
               console.log("paredJSON.msgId:"+paredJSON.msgId);
               //console.log("success data:"+data);
               
               if("1" == paredJSON.msgId || "10" == paredJSON.msgId){
                 //javascript 메시지 다이얼 로그 
                 alert(paredJSON.msgContents);
                 //jquery 커거가 컨트롤로 이동
                 $('#userId').focus();//userId input에 focuse처리
                 return;
               }
               
               if("2" == paredJSON.msgId || "20" == paredJSON.msgId ){
                   alert(paredJSON.msgContents);
                   $('#passwd').focus();//userId input에 focuse처리
                   return;
               }              
               
               console.log("paredJSON.msgContents:"+paredJSON.msgContents);
               //로그인 성공
               if("30" == paredJSON.msgId ){
                   alert(paredJSON.msgContents);
                   
                   //javascript 내장 객체: url
                   window.location.href ="${CP}/user/doRetrieve.do";
               }  
               
           },
           error:function(data){//실패시 처리
               console.log("error:"+data);
           }
         });       
       
     });//--end doLogin---------------------------------------------------------
  
  });//--end document-----------------------------------------------------------
  
</script>
</head>
<body>

  <div class="container">
  <!-- form ------------------------------------------------------------------->
    <!-- 버튼 -->
    <div class="row justify-content-center mt-5">
      <div class="col-auto">
        <input type="button" class="btn btn-primary" value="영어" id="engBtn">
        <input type="button" class="btn btn-primary" value="한글" id="koBtn">
      </div>
    </div>
    <!--// 버튼 ----------------------------------------------------------------->
        
    <form action="${CP}/login/doLogin.do" method="post">
    <div class="row justify-content-center mt-5">
      <div class="col-lg-4 col-md-6">
        <h3 class="mb-4"><spring:message code="login.title"/></h3>
          <div class="mb-3">
            <label for="userId" class="form-label"><spring:message code="login.id"/></label>
            <input type="text" id="userId" name="userId" maxlength="20" class="form-control" value="<%=userId%>" >
          </div>
          <div class="mb-3">
            <label for="passwd" class="form-label"><spring:message code="login.password"/></label>
             <input type="password" id="passwd" name="passwd" maxlength="100"  class="form-control" >
          </div>
          <input type="button" value="<spring:message code="login.loginButton"/>" id="doLogin" class="btn btn-primary">
      </div>
    </div>
    </form>
  <!--// form end ------------------------------------------------------------->
  </div>
</body>
</html>