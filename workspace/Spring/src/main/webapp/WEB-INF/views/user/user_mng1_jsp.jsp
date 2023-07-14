<%@page import="com.pcwk.ehr.cmn.DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%   //자바코드 시작
     DTO dto =(DTO) request.getAttribute("search");
     System.out.println("dto:"+dto);
%>
 <c:set var="CP" value="${pageContext.request.contextPath }"/>    
<!DOCTYPE html>
<html>
<head>    
<meta charset="UTF-8">
<title>PCWK</title>
<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
<script src="${CP}/resources/js/util.js"></script>

</head>

<body>
     

<div>    
  <!-- 검색  -->
  <form action="/ehr/user/doRetrieve.do" name="user_frm">
    <div>
      <!-- 검색구분 -->
      <select name="searchDiv" id="searchDiv">
         <option value="">전체</option>
         <option value="10" <% if("10".equals(dto.getSearchDiv()))out.print("selected"); %> >이름</option>
         <option value="20" <% if("20".equals(dto.getSearchDiv()))out.print("selected"); %> >이메일</option>
         <option value="30" <% if("30".equals(dto.getSearchDiv()))out.print("selected"); %> >아이디</option>
      </select>
      <!-- 검색어 -->
      <input type="text" value="${search.searchWord}" name="searchWord" id="searchWord" placeholder="검색어를 입력하세요.">
      <!-- pageSize:10,20,30,50,100,200 -->
      <select name="pageSize" id="pageSize">
         <option value="10" <% if(10 == dto.getPageSize())out.print("selected"); %> >10</option>
         <option value="20" <% if(20 == dto.getPageSize())out.print("selected"); %> >20</option>
         <option value="30" <% if(30 == dto.getPageSize())out.print("selected"); %> >30</option>  
         <option value="50" <% if(50 == dto.getPageSize())out.print("selected"); %> >50</option>
         <option value="100" <% if(100 == dto.getPageSize())out.print("selected"); %> >100</option>
         <option value="200" <% if(200 == dto.getPageSize())out.print("selected"); %> >200</option>
      </select>
      <!-- id와 doRetrieve()이름이 동일하면 오류 발생 
       form 태그안에 input 태그에서 id와 함수명이 같은경우 오류가 발생한다.
      -->
      <input type="button"  value="조회" id="doRetrieve" onclick="window.doRetrieve();">
    </div>
  
  </form>
  
	<table border="1"  id="userTable" class="pcwk_class">
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
	<!-- button -->
	<div>
	 <input type="button" value="초기화" id="init">
	 <input type="button" value="등록" id="add" >
	 <input type="button" value="수정" id="update">
	 <input type="button" value="삭제" id="deleteOne">
	</div>
	<!-- button ----------------------------------------------------------------->
	<!-- 관리 폼 -->
	<div>
    	 <form action="" name="reg_frm">
    	    <div>
    	       <label for="userId">아이디</label>
    	       <input type="text" name="userId" id="userId" placeholder="아이디를 입력 하세요." maxlength="20">
    	    </div>
          <div>
             <label for="name">이름</label>
             <input type="text" name="name" id="name" placeholder="아이디를 입력 하세요." maxlength="50">
          </div>    	 
          <div>
             <label for=""passwd"">비밀번호</label>
             <input type="password" name="passwd" id="passwd" placeholder="비밀번호를 입력 하세요." maxlength="100">
          </div>
          <div>
             <label for="intLevel">등급</label>
             <select name="intLevel" id="intLevel">
                <option value="1">BASIC</option>
                <option value="2">SILVER</option>
                <option value="3">GOLD</option>
             </select>
          </div>            
          <div>
             <label for="login">로그인</label>
             <input type="text" name="login" id="login" placeholder="로그인 횟수를 입력 하세요." maxlength="10">
          </div>   
          <div>
             <label for="recommend">추천</label>
             <input type="text" name="recommend" id="recommend" placeholder="추천 횟수를 입력 하세요." maxlength="10">
          </div>
          <div>
             <label for="recommend">이메일</label>
             <input type="text" name="email" id="email" placeholder="이메일을 입력 하세요." maxlength="320">
          </div>
          <div>
             <label for="reg_dt">등록일</label>
             <input type="text" name="reg_dt" id="reg_dt" placeholder="등록일을 입력 하세요." maxlength="20">
          </div>                                           	 
    	 </form>
	</div>
	<!-- 관리 폼 end --------------------------------------------------------------->
	
</div>
<script type="text/javascript">
    
      
      
      //수정
      $("#update").on("click",function(){
        console.log('update click');
          if(eUtil.ISEmpty($("#userId").val())==true){
                alert("아이디를 입력 하세요.")
                $("#userId").focus();
                return;
          }
          
          if(eUtil.ISEmpty($("#name").val())==true){
              alert("이름을 입력 하세요.")
              $("#name").focus();
              return;
          }       
          
          if(eUtil.ISEmpty($("#passwd").val())==true){
              alert("비밀번호을 입력 하세요.")
              $("#passwd").focus();
              return;
          } 
          
          if(eUtil.ISEmpty($("#login").val())==true){
              alert("로그인을 입력 하세요.")
              $("#login").focus();
              return;
          }        
          
          if(eUtil.ISEmpty($("#recommend").val())==true){
              alert("추천을 입력 하세요.")
              $("#recommend").focus();
              return;
          } 
          
          if(eUtil.ISEmpty($("#email").val())==true){
              alert("이메일을 입력 하세요.")
              $("#email").focus();
              return;
          }
          
          $.ajax({
              type: "POST",
              url:"/ehr/user/update.do",
              asyn:"true",
              dataType:"html",   
              data:{
                "userId" : $("#userId").val(),
                "name" : $("#name").val(),
                "passwd" : $("#passwd").val(),
                "intLevel" : $("#intLevel").val(),
                "login" : $("#login").val(),
                "recommend" : $("#recommend").val(),
                "email" : $("#email").val()
              },
              success:function(data){//통신 성공
                  console.log("success data:"+data);
                  let parsedJson = JSON.parse(data);
                  if("1" == parsedJson.msgId){
                    alert(parsedJson.msgContents);
                    doRetrieve();
                  }else{
                    alert(parsedJson.msgContents);
                  }
              
              },
              error:function(data){//실패시 처리
                  console.log("error:"+data);
              }
            });           
            
      });//--수정----------------------------------------------------------------
    
      //추가
      $("#add").on("click",function(){
        console.log('add click');
        
        if(eUtil.ISEmpty($("#userId").val())==true){
          alert("아이디를 입력 하세요.")
          $("#userId").focus();
          return;
        }
        
        if(eUtil.ISEmpty($("#name").val())==true){
            alert("이름을 입력 하세요.")
            $("#name").focus();
            return;
        }       
        
        if(eUtil.ISEmpty($("#passwd").val())==true){
            alert("비밀번호을 입력 하세요.")
            $("#passwd").focus();
            return;
        } 
        
        if(eUtil.ISEmpty($("#login").val())==true){
            alert("로그인을 입력 하세요.")
            $("#login").focus();
            return;
        }        
        
        if(eUtil.ISEmpty($("#recommend").val())==true){
            alert("추천을 입력 하세요.")
            $("#recommend").focus();
            return;
        } 
        
        if(eUtil.ISEmpty($("#email").val())==true){
            alert("이메일을 입력 하세요.")
            $("#email").focus();
            return;
        } 
        
        $.ajax({
            type: "POST",
            url:"/ehr/user/add.do",
            asyn:"true",
            dataType:"html",   
            data:{
              "userId" : $("#userId").val(),
              "name" : $("#name").val(),
              "passwd" : $("#passwd").val(),
              "intLevel" : $("#intLevel").val(),
              "login" : $("#login").val(),
              "recommend" : $("#recommend").val(),
              "email" : $("#email").val()
            },
            success:function(data){//통신 성공
                console.log("success data:"+data);
                let parsedJson = JSON.parse(data);
                if("1" == parsedJson.msgId){
                  alert(parsedJson.msgContents);
                  doRetrieve();
                }else{
                  alert(parsedJson.msgContents);
                }
            
            },
            error:function(data){//실패시 처리
                console.log("error:"+data);
            }
          });        
        
      });//----추가 end----------------------------------------------------------
    
      $("#deleteOne").on("click",function(){
        console.log('deleteOne click');
        //jquery
        let user_id = $("#userId").val();
        
        //javascript
        //let user_id = document.getElementById("userId").value;
        
        console.log('user_id:'+user_id);
        if(null ==user_id  ||  undefined ==user_id || user_id.length == 0 ){
            alert('아이디를 입력 하세요.');
            $("#userId").focus();
            return;
        }
        
        if(confirm('삭제 하시겠습니까?')==false)return;
        
        //삭제에 대한 컨트롤러 호출
        
        $.ajax({
            type: "GET",
            url:"/ehr/user/deleteOne.do",
            asyn:"true",
            dataType:"html",
            data:{
              userId: user_id 
            },
            success:function(data){//통신 성공
                console.log("success data:"+data);
                //success data:{"msgId":"1","msgContents":"bp13_01가 삭제 되었습니다.","num":0,"totalCnt":0,"pageNo":0,"pageSize":0}
                //문자열을 자바스크립트 Object로 변환
                let parsedJson = JSON.parse(data);
                //삭제 성공: 조회
                if("1" ==parsedJson.msgId ){
                  alert(parsedJson.msgContents);
                  doRetrieve();
                //삭제 실패 
                }else{
                  alert(parsedJson.msgContents);
                }
            
            
            },
            error:function(data){//실패시 처리
                console.log("error:"+data);
            }
         });        
        
        
      });//deleteOne button ----------------------------------------------------
    
    
      //테이블에 데이터를 click event
      //jquery선택자
      //id : #아이디 이름
      //class : .클래스 이름
      $("#userTable>tbody").on("click","tr",function(e){  
        console.log('userTable');
        //row click시 : 아이디 찾기
        let tdArray = $(this).children();
        console.log('tdArray:'+tdArray);
        
        let userId = tdArray.eq(1).text();
        console.log('userId:'+userId);
        
         $.ajax({
             type: "POST",
             url:"/ehr/user/get.do",
             asyn:"true",
             dataType:"html",
             data:{
               userId: userId 
             },
             success:function(data){//통신 성공
                 console.log("success data:"+data);
                 //{"userId":"pt26_01","name":"이상무26_01","passwd":"4321","level":"BASIC","login":49,"recommend":0,"email":"jemu0120@naver.com","reg_dt":"2023-06-14 142212","intLevel":1,"num":0,"totalCnt":0,"pageNo":0,"pageSize":0}
                 let parsedJson = JSON.parse(data);
                 console.log("parsedJson.userId:"+parsedJson.userId);
                 
                 $("#userId").val(parsedJson.userId);
                 $("#name").val(parsedJson.name);
                 $("#passwd").val(parsedJson.passwd);
                 $("#intLevel").val(parsedJson.intLevel);//select box
                 
                 $("#login").val(parsedJson.login);
                 $("#recommend").val(parsedJson.recommend);
                 $("#email").val(parsedJson.email);
                 $("#reg_dt").val(parsedJson.reg_dt);
                 
                 
                 //화면 제어
                 //1. 등록 버튼 비활성화
                 //2. 아이디 읽기 전용으로 변경

                 $("#add").prop("disabled", true);
                 $("#userId").prop("disabled","disabled");
               },
               error:function(data){//실패시 처리
                 console.log("error:"+data);
               }
           });
        
        
        
        
      });//--#userTable end ----------------------------------------------------
    
      $("#init").on("click",function(){
    	  console.log('init');
    	  
          //1. 등록 버튼 활성화
          //2. 아이디 read/write로 변경    	    
          $("#add").prop("disabled", false);
          $("#userId").prop("disabled",false);
          
          const initValue = "";
          $("#userId").val(initValue);
          $("#name").val(initValue);
          $("#passwd").val(initValue);
          //select box : basic
          $("#intLevel").val(1);
          $("#login").val(initValue);
          $("#recommend").val(initValue);
          $("#email").val(initValue);
          $("#reg_dt").val(initValue);
             
      });//init end ------------------------------------------------------------
  
    
    
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










