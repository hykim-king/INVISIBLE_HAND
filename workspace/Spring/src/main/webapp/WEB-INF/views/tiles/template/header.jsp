<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="CP" value="${pageContext.request.contextPath }"/> 
<!-- 메뉴생성 -->   
<c:url value="/user/doRetrieve.do" var="userURL"/>
<c:url value="/board/boardView.do" var="freeBoardURL">
  <c:param name="div" value="10"/>
</c:url>

<c:url value="/board/boardView.do" var="boardURL">
  <c:param name="div" value="20"/>
</c:url>
<!--// 메뉴생성  /naver/searchView.do-->   
  <nav class="navbar navbar-expand-lg bg-light ">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">PCWK</a>    
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${CP}/hello/hello.do">Hello</a>
          </li>      
          <li class="nav-item">
            <a class="nav-link" href="${CP}/naver/searchView.do">외부API_Naver</a>
          </li> 
                    
          <li class="nav-item">
            <a class="nav-link" href="${CP}/user/levelPerMemberCountView.do">등급별 회원수</a>
          </li> 
                        
          <li class="nav-item">
            <a class="nav-link" href="${userURL}">회원관리</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${freeBoardURL}">자유게시판(10)</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${boardURL}">공지사항(20)</a>
          </li>                    
          <li class="nav-item">
            <a class="nav-link" href="${CP}/file/upload.do">파일업로드</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="${CP}/boot/bootList.do">템플릿_리스트</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${CP}/boot/bootReg.do">템플릿_등록</a>
          </li>    
          <!-- login/logout -->
          <c:choose>
            <c:when test="${null != sessionScope.user && not empty sessionScope.user}">
              <li class="nav-item">
                <a class="nav-link" href="javascript:doLogout('${sessionScope.user.name}');">로그아웃</a>
              </li>            
              <li class="nav-item">
                 <h5><span class="badge bg-secondary">${sessionScope.user.name}</span></h5>
              </li>
            </c:when>
            <c:otherwise>
		          <li class="nav-item">
		            <a class="nav-link" href="${CP}/login/loginView.do">로그인</a>
		          </li>            
            </c:otherwise>
          </c:choose>          
        </ul>
    
      </div>
    </div>
  </nav>      

  <script>
  
      function doLogout(name){
    	  if(confirm(name+'님\n로그아웃 하시겠습니까?')== false)return;
    	  //console.log("doLogout");
    	  
    	  window.location.href="${CP}/login/logout.do";
      }
  
  </script>
  
  
  