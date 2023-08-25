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
<link rel="stylesheet" href="../resources/css/login.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<title>마이페이지 입니다</title>

</head>
<body>
  <div class="drops">
      <div class="drop"></div>
      <div class="drop"></div>
      <div class="drop"></div>
      <div class="drop"></div>
  </div>
	<!-- *---container Start---* -->
	<div class="h60px"></div>
	<div class="container-1400 min-100vh con-login">
		<div class="my-update-wrap">
			<div class="box-area">
                   
				<div class="form-h3" style="margin:0; ">
				<div class="line1px"></div>
        <div class="line3px"></div>
					<h3>${member.memberName} 님의 회원정보 변경</h3>
				<div class="line3px"></div>
        <div class="line1px"></div>
				</div>								
				<div class="h30px"></div>
				<div class="label-margin">
			        <p class="input-title">아이디</p>			        
              <label>
  			        <input type="text" name="nickname" id="nickname" value="${member.memberId}" class="size border-bottom" required="required">
                <input  type="button"value="변경불가" class="btn btn-white" style="cursor: default;">
              </label>
			  </div>
				
			   <div class="label-margin">
		        <p class="input-title">닉네임 변경</p>
		        <input type="hidden" id="unickname" name="unickname" value="${member.nickName}">
		        <label>
		            <input type="text" name="nickname" id="nickname"  value="${member.nickName}" class="size border-bottom" required="required">
		            <input  type="button" id="checkNickname" name="checkNickname"value="중복확인" class="btn btn-white">
		        </label>
			   </div>
				
				<div class="label-margin">
					<p class="input-title">비밀번호 변경</p>
					<label> 
						<input type="password" name="password" id="password" class="size border-bottom">
						<input type="hidden" id="upassword" name="upassword" value="${member.password}">	
            <input type="button" id="checkpass" name="checkpass" value="사용중" class="btn btn-white">
					</label>
				</div>
				
        <div class="label-margin">
            <p class="input-title" >이메일 변경</p>
            <label> 
                <input type="text"  id="email" name="email" value="${member.email}" class="size border-bottom" required="required">
                <input type="hidden" id="uemial" name="uemial" value="${member.email}">
                <input type="button" id="mailsend" name="mailsend" value="인증번호 전송" class="btn btn-white">
            </label>
        </div>
				
				<div class="label-margin">
					<p class="input-title">E-mail 인증번호 확인</p>
					<label> 
						<input type="text" class="size numberOnly border-bottom checkmark" name="checkInput" id="checkInput" placeholder="인증번호 6자리를 입력해주세요" maxlength="6" required>
						<i class='fas fa-check-circle fa-sm' style="color:#4200FF;"></i>
						<span id="mail-check-warn"></span>
	
					</label>
				</div>
				
				<div class="submit">
				    <input type="hidden" id="uid" value="${member.memberId}">
				    <input type="hidden" id="nicksuccess" value="0">
                    <input type="hidden" id="passsuccess" value="0">
                    <input type="hidden" id="emailsuccess" value="0">
			        <input id="update" type="button" value="수정 완료" class="btn w70">
			        <input id="reset" type="reset" value="취소" class="btn w70"
			        onclick="${CP}/mypage/mypage.do" style="margin-top: 15px;">
			    </div>
								
			</div>
		</div><!-- **---wrap End---** -->
	</div>
	<!-- **---container End---** -->
</body>
<script>
	$("#checkNickname").on("click",function(){
	    console.log("checkNick ready");
	    
	    if(""==$("#nickname").val() || 0==$("#nickname").val().length){
            alert("닉네임을 입력하세요");  
            $("#nickname").focus();
            return;
        }
        if($("#nickname").val() == $("#unickname").val()){
            alert("현재사용중인 닉네임입니다."); 
            $("#password").focus();
            return;
            
        }else{
        	$.ajax({
                type: "POST",
                url:"${CP}/mypage/nickcheck.do",
                dataType:"html",
                data: {
                 nickName: $("#nickname").val(), 
                },
                success:function(data) {
                 let parsedJSON = JSON.parse(data);
                   
                     if("10" == parsedJSON.msgId){
                    	   alert(parsedJSON.msgContents);
                    	   $('#nicksuccess').attr('value',"success");
                    } 
                                          
                    if("20" == parsedJSON.msgId){
                        alert(parsedJSON.msgContents);
                        return;
                    }
                    
                },
                error: function(data) {
                    console.log("error:" + data);
                }
            }); // --ajax
        } 
	}); //checkNick end
</script>

<script>
    $("#checkpass").on("click",function(){
        
        if(""==$("#password").val() || 0==$("#password").val().length){
            alert("비밀번호를 입력하세요");  
            $("#password").focus();
            return;
        }
        
        if ($("#password").val().length < 8 || $("#password").val().length > 12) {
        	alert("비밀번호는 8이상 12자 이하로 설정해주세요.");
        	return;
        }
        
        if($("#password").val() == $("#upassword").val()){
            alert("현재 사용중인 비밀번호입니다."); 
            $("#password").focus();
            return;
            
        } else {
        	alert("사용가능한 비밀번호 입니다.");
        	 $('#passsuccess').attr('value',"success");

        }	
        
        $.ajax({
                type: "POST",
                url:"${CP}/mypage/passwordcheck.do",
                dataType:"html",
                data: {
                	memberId:  $("#uid").val(),
                	password: $("#password").val(), 
                },
                success:function(data) {
                 let parsedJSON = JSON.parse(data);
                   
                     if("10" == parsedJSON.msgId){
                        alert(parsedJSON.msgContents);
                    } 
                                          
                    if("20" == parsedJSON.msgId){
                        alert(parsedJSON.msgContents);
                        return;
                    }
                    
                },
                error: function(data) {
                    console.log("error:" + data);
                }
            }); // --ajax
    }); //checkpass end
</script>

<script>
    $("#mailsend").on("click",function(){
        console.log("mailsend ready");
        
        if(""==$("#email").val() || 0==$("#email").val().length){
            alert("이메일을 입력하세요");  
            $("#email").focus();
            return;
        } else{
        	
        	$.ajax({
                type: "POST",
                url:"${CP}/mypage/emailcheck.do",
                dataType:"html",
                data: {
                    email: $("#email").val(), 
                },
                success:function(data) {
                 let parsedJSON = JSON.parse(data);
                   
                     if("10" == parsedJSON.msgId){
                    	 
                    	if(!confirm("이메일인증을 진행하시겠습니까?")){
                   		    alert("취소 되었습니다.");
                   		    return;
                    	}else{
                   		    mailsend2(); 
                    	}
                        
                    } 
                                          
                    if("20" == parsedJSON.msgId){
                        alert(parsedJSON.msgContents);
                        return;
                    }
                    
                },
                error: function(data) {
                    console.log("error:" + data);
                }
            }); // --ajax

        } 
    }); //checkNick end
</script>
<script>
function mailsend2() {
    $.ajax({
        type : 'get',
        url : "mailSend.do?email="+$("#email").val(), // GET방식이라 Url 뒤에 email을 뭍힐수있다.
        success : function(data) {
        
            console.log("data : " + data);
            $('#checkInput').attr('disabled', false);
            code = data;
            alert('인증번호가 전송되었습니다.')
        }
    }); // end ajax 
}

</script>
<script>
$('#checkInput').blur(function() {
    const inputCode = $(this).val();
    const $resultMsg = $('#mail-check-warn');

    if (inputCode == code) {
        $resultMsg.html('인증번호가 일치합니다.');
        $resultMsg.css('color', 'green');
        $resultMsg.css('display', 'block');
        $resultMsg.css('font-size', '13px');
        $('#mailsend').attr('disabled', true);
        $('#emailsuccess').attr('value','success');
        $('#email').attr('readonly', true);
        $("#update").attr('disabled', false);
        certified_Email = true;
    } else {
        certified_Email = false;
        $resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!');
        $resultMsg.css('color', 'red');
        $resultMsg.css('display', 'block');
        $resultMsg.css('font-size', '13px');
    }
});
</script>
<script>
$("#update").on("click",function(){
        console.log("save ready");
        
        if($("#nickname").val() == $("#unickname").val()){
            if($("#password").val() == $("#upassword").val()){
            	if($("#password").val() == $("#upassword").val()){
                     alert("변경사항이 없습니다");  
                     return; 
            	}
            }
        }
        if(""==$("#nickname").val() || 0==$("#nickname").val().length){
            alert("닉네임을 입력하세요");  
            $("#nickname").focus();
            return;
        }
        
        if($("#nickname").val() != $("#unickname").val()){
            if($("#nicksuccess").val() != "success"){
            	alert("닉네임 중복확인을 진행하세요");  
                $("#nickname").focus();
                return;	
            }
        }
        
        if(""==$("#password").val() || 0==$("#password").val().length){
            alert("비밀번호를 입력하세요");  
            $("#password").focus();
            return;
        }
        
        if($("#password").val() != $("#upassword").val()){
            if($("#passsuccess").val() != "success"){
                alert("비밀번호 중복확인을 진행하세요");  
                $("#password").focus();
                return; 
            }
        }
        
        if(""==$("#email").val() || 0==$("#email").val().length){
            alert("이메일을 입력하세요");  
            $("#email").focus();
            return;
        }
        
        if($("#email").val() != $("#uemial").val()){
            if($("#eamilsuccess") != "success"){
                alert("인증번호를 확인하세요.");  
                $("#password").focus();
                return; 
            }
        }
       
        else{
        	$.ajax({
                type: "POST",
                url:"${CP}/mypage/updatemember.do",
                dataType:"html",
                data: {
                 memberId: $("#uid").val(),
                 nickName: $("#nickname").val(), 
                 password:  $("#password").val(), 
                 email:  $("#email").val(), 
                },
                success:function(data) {
                 let parsedJSON = JSON.parse(data);
                   
                     if("10" == parsedJSON.msgId){
                           alert(parsedJSON.msgContents);
                           window.location.href="${CP}/member/logout.do";
                    } 
                                          
                    if("20" == parsedJSON.msgId){
                        alert(parsedJSON.msgContents);
                        return;
                    }
                    
                },
                error: function(data) {
                    console.log("error:" + data);
                }
            }); // --ajax
        }
        
    }); //update--end
</script>
</html>