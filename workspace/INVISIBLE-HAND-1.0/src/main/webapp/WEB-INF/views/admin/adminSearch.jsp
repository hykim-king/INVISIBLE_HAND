<%@page import="com.pcwk.ehr.cmn.StringUtil"%>
<%@page import="com.pcwk.ehr.cmn.DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="../resources/css/hand-board.css">
<link rel="stylesheet" href="../resources/css/list.css">
<link rel="stylesheet" href="../resources/css/common.css">
<style>
.cate {
	width: 300px;
	position: relative;
	border-style: solid;
	border-width: 1px 1px 0 1px;
	border-color: #000;
}

.cate:last-child {
	border-bottom: 1px solid #000;
}

.cate .menu {
	display: block;
	position: relative;
	width: 100%;
	background: gray;
	height: 80px;
}

.cate .menu .menulink {
	display: block;
	color: #fff;
	text-decoration: none;
	width: 70%;
	padding-left: 15px;
	line-height: 80px;
}

.cate .menu .subopen {
	position: absolute;
	width: 8px;
	height: 8px;
	right: 15px;
	padding: 0;
	top: 0;
	bottom: 0;
	margin: auto;
	border-right: 1px solid #fff;
	border-bottom: 1px solid #fff;
	transform: rotate(45deg);
}

.cate ul {
	display: none;
}

.cate.active ul {
	display: block;
}

.cate ul li {
	padding: 5px 10px;
}

.cate ul li:first-child {
	padding-top: 20px;
}

.cate ul li:last-child {
	padding-bottom: 20px;
}

.admin-contents {
	background-color: pink;
	width: 50%
}

.admin-con {
	display: flex;
}

.search-form>div {
	margin-bottom: 10px;
	text-align: center;
}

#searchDiv {
	text-align: center;
}

* /

#pagetop {
	clear: both;
	padding-top: 40px;
	padding-right: 10px;
}

#pagetop a {
	color: #fff;
	font-size: 20px;
	text-decoration: none;
	text-align: center;
	display: block;
	float: right;
	margin-bottom: 50px;
	background: #222;
	color: #999;
	width: 60px;
	line-height: 60px;
	border-radius: 50%;
}
</style>
<title>보이지 않는 회원조회</title>
</head>
<body>

	<!-- *---container Start---* -->
	<!-- accordion 메뉴 -->
	<div class="h60px"></div>
	<div class="c">
		<div class="accordion">
			<div class="cate">
				<span class="menu"> <a href="${CP}/admin/admin.do"
					class="menulink">회원관리</a> <a href="javascript:void(0);"
					class="subopen"></a>
				</span>
				<ul>
					<li><a href="${CP}/post/postList.do?categoryNumber=10">자유게시판</a></li>
					<li><a href="${CP}/post/postList.do?categoryNumber=20">Q&A</a></li>
					<li><a href="${CP}/post/postList.do?categoryNumber=30">공지사항</a></li>
				</ul>
			</div>
		</div>
	</div>

	</div>
	<!-- accordion 메뉴 end -->
	<div class="h60px"></div>
	<div class="container">
		<h1>회원관리</h1>

		<%-- sessionScope.user:${sessionScope.user } --%>
		<div class="button-area">
			<!-- 검색  -->

			<form action="#" name="user_frm">
				<input type="hidden" name="pageNo" id="pageNo">
				<!-- 검색구분 -->
				<select name="searchDiv" id="searchDiv">
					<option value="">전체</option>
					<option value="">닉네임</option>
					<option value="">등급</option>
					<option value="">이메일</option>
				</select>
				<!-- 검색어 -->
				<input type="text" value="${search.searchWord}" name="searchWord"
					id="searchWord" placeholder="검색어를 입력하세요.">
				<!-- pageSize:10,20,30,50,100,200 -->
				<select name="pageSize" id="pageSize">
					<option value="10">10</option>
					<option value="20">20</option>
					<option value="30">30</option>
					<option value="50">50</option>
					<option value="100">100</option>
					<option value="200">200</option>
				</select> <input type="button" class="btn" value="조회" id="#" onclick="#">
			</form>
		</div>
		<table id="boardTable"
			class="table table-sm table-hover table-borderless">
			<thead class="board-thead">
				<tr>
					<th class="text-center">회원ID</th>
					<th class="text-center">닉네임</th>
					<th class="text-center">회원이름</th>
					<th class="text-center">등급</th>
					<th class="text-center">이메일</th>
					<th class="text-center">등록일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vo" items="${memberList}">
					<tr>
						<td class="c-txt">${vo.memberId}</td>
						<td class="c-txt">${vo.nickName}</td>
						<td class="c-txt">${vo.memberName}</td>
						<td class="c-txt">${vo.memberGrade}</td>
						<td class="c-txt">${vo.email}</td>
						<td class="c-txt">${vo.updateDate}</td>
					</tr>
				</c:forEach>
				<c:choose>
					<c:when test="${not empty list }">
						<c:forEach var="vo" items="${list}">
							<tr>
								<!-- <td class="text-center  col-sm-2  col-md-1  col-lg-1"><c:out value="${vo.num}"/></td> -->
								<td class="text-center  col-sm-2  col-md-1  col-lg-1"></td>
								<td class="text-left    col-sm-6  col-md-6  col-lg-7"><a
									href="#"></a></td>
								<td class="text-center  col-sm-2  col-md-2  col-lg-2"></td>
								<td class="text-center  col-sm-2  col-md-2  col-lg-1"></td>
								<td class="text-end     col-sm-0  col-md-1  col-lg-1"></td>
							</tr>
						</c:forEach>
					</c:when>
				</c:choose>
			</tbody>
		</table>
		<div class="d-flex justify-content-center">
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
		</div>
		<!-- paging : 1. java, 2.javascript -->
		<div class="d-flex justify-content-center"></div>


		<!--// paging --------------------------------------------------------------->
		<!-- button -->
		<div class="button-area ">
			<input type="button" class="btn" value="초기화" id="init"> <input
				type="button" class="btn" value="수정" id="update"> <input
				type="button" class="btn" value="탈퇴" id="deleteOne">

		</div>
		<!-- button ----------------------------------------------------------------->
		<!-- 관리 폼 -->
		<div>
			<form action="#" name="reg_frm">
				<div class="form-group">
					<label for="memberId">회원ID</label> <input type="text"
						name="memberId" id="memberId" placeholder="회원ID를 입력 하세요."
						maxlength="320">
				</div>
				<div class="form-group">
					<label for="nickName">닉네임</label> <input type="text"
						name="nickName" id="nickName" placeholder="닉네임을 입력 하세요."
						maxlength="20">
				</div>
				<div class="form-group">
					<label for="memberName">회원이름</label> <input type="text"
						name="memberName" id="memberName" placeholder="회원이름을 입력 하세요."
						maxlength="320">
				</div>
				<div class="form-group">
					<label for="intLevel">등급</label> <select name="memberGrade"
						id="memberGrade">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</select>
				</div>
				<div class="form-group">
					<label for="recommend">이메일</label> <input type="text" name="email"
						id="email" placeholder="이메일을 입력 하세요." maxlength="320">
				</div>
				<div class="form-group">
					<label for="updateDate">등록일</label> <input type="text"
						name="updateDate" id="updateDate" placeholder="등록일을 입력 하세요."
						maxlength="20">
				</div>


			</form>
		</div>

		<!-- 관리 폼 end --------------------------------------------------------------->
		<fmt:formatNumber value="${totalCnt}" pattern="#,##0" />
	</div>

	<!-- ---------------------------------------------------------------------- -->
	<!-- 검색구분 -->

	<p id="pagetop" class="inner">
		<a href="#">↑</a>
	</p>
	<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
	<script src="${CP}/resources/js/util.js"></script>
	<script>
    (function($) {
        function openMenu($menu) {
          $menu.addClass('active');
          $menu.find('ul').slideDown('slow');
        }

        function closeMenu($menu) {
          $menu.removeClass('active');
          $menu.find('ul').slideUp('slow');
        }

        $('.cate ul').hide();

        $('.accordion .cate').each(function() {
          openMenu($(this));
        });

        $('.cate .menu .subopen').click(function(event) {
          event.stopPropagation();

          var $parent = $(this).parent().parent();
          var isActive = $parent.hasClass('active');

          if (isActive) {
            closeMenu($parent);
          } else {
            openMenu($parent);
          }
        });
      })(jQuery); 
    
    //테이블에 데이터를 click event
    //jquery선택자
    //id : #아이디 이름
    //class : .클래스 이름
$(document).on("click", "#boardTable tbody tr", function(e) {
    let memberId = $(this).find(".c-txt:eq(0)").text();

    $.ajax({
        type: "POST",
        url: "${CP}/member/get.do",
        async: true,
        dataType: "json",
        data: {
            memberId: memberId
        },
        success: function(data) {
            $("#memberId").val(data.memberId);
            $("#nickName").val(data.nickName);
            $("#memberName").val(data.memberName);
            $("#memberGrade").val(data.memberGrade);
            $("#email").val(data.email);

            const updateDate = data.updateDate; 
            const formattedDate = new Date(updateDate).toLocaleString(); 
            $("#updateDate").val(formattedDate);
        },
        error: function(data) {
            console.log("error:" + data);
        }
    });
});
    
//수정
$("#update").on("click",function(){
  console.log('update click');
    if(eUtil.ISEmpty($("#memberId").val())==true){
          alert("아이디를 입력 하세요.")
          $("#memberId").focus();
          return;
    }
    
    if(eUtil.ISEmpty($("#nickName").val())==true){
        alert("닉네임을 입력 하세요.")
        $("#nickName").focus();
        return;
    }       
    
    if(eUtil.ISEmpty($("#memberName").val())==true){
        alert("회원이름을 입력 하세요.")
        $("#memberName").focus();
        return;
    } 
    
    if(eUtil.ISEmpty($("#email").val())==true){
        alert("이메일을 입력 하세요.")
        $("#email").focus();
        return;
    }
    
    $.ajax({
        type: "POST",
        url:"/ehr/member/update.do",
        asyn:"true",
        dataType:"json",   
        data:{
          "memberId" : $("#memberId").val(),
          "nickName" : $("#nickName").val(),
          "memberName" : $("#memberName").val(),
          "memberGrade" : $("#memberGrade").val(),
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

$("#init").on("click",function(){//--초기화---------------------------------
    console.log('init');
    
      //1. 등록 버튼 활성화
      //2. 아이디 read/write로 변경         
      $("#add").prop("disabled", false);
      $("#memberId").prop("disabled",false);
      
      const initValue = "";
      $("#memberId").val(initValue);
      $("#nickName").val(initValue);
      $("#memberName").val(initValue);
      //select box : basic
      $("#memberGrade").val(1);
      $("#email").val(initValue);
      $("#updateDate").val(initValue);
         
  });//init end ------------------------------------------------------------

  $("#deleteOne").on("click", function() { //-삭제---------------------------
	    console.log('deleteOne click');
	    
	    let memberId = $("#memberId").val();
	    
	    console.log('memberId:' + memberId);
	    if (null == memberId || undefined == memberId || memberId.length == 0) {
	        alert('아이디를 입력 하세요.');
	        $("#memberId").focus();
	        return;
	    }
	    
	    if (confirm('삭제 하시겠습니까?') == false) return;
	    
	    $.ajax({
	        type: "GET",
	        url: "${CP}/member/deleteOne.do",
	        asyn: "true",
	        dataType: "json",
	        data: {
	            memberId: memberId
	        },
	        success: function(data) {
	            console.log("success data:" + data);
	            let parsedJson = JSON.parse(data);
	            if ("1" == parsedJson.msgId) {
	                alert(parsedJson.msgContents);
	                $("#memberId").val('');
	                $("#nickName").val('');
	                $("#memberName").val('');
	                $("#memberGrade").val('1');
	                $("#email").val('');
	                $("#updateDate").val('');
	            } else {
	                alert(parsedJson.msgContents);
	            }
	        },
	        error: function(data) {
	            console.log("error:" + data);
	        }
	    });
      
      
    });//deleteOne button ----------------------------------------------------

  </script>
</body>
</html>