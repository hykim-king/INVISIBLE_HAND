<%@page import="com.pcwk.ehr.cmn.StringUtil"%>
<%@page import="com.pcwk.ehr.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%

    MemberVO vo = (MemberVO)request.getAttribute("inVO");
    String isverified =vo.getIsverified();

	//paging
	int bottomCount = 10;
	int pageSize = 10;
	int pageNo = 1;
	int totalCnt = 0;
	String searchWord = "";
	String searchDiv = "";

	if (null != vo) {
			pageSize   = vo.getPageSize();
			pageNo     = vo.getPageNo();
			searchDiv  = vo.getSearchDiv();
			searchWord = vo.getSearchWord();
	}

	if (null != request.getAttribute("totalCnt")) {
		totalCnt = Integer.parseInt(request.getAttribute("totalCnt").toString());
	}


	String cPath  = request.getContextPath();

	String defaultSearchDiv = (searchDiv == null || searchDiv.isEmpty()) ? isverified : searchDiv; 


%>
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
<c:set var="defaultSearchDiv" value="${defaultSearchDiv}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="../resources/css/hand-board.css">
<link rel="stylesheet" href="../resources/css/list.css">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/admin.css">
<link rel="stylesheet" href="../resources/css/post.css">
<title>보이지 않는 회원조회</title>

</head>
<body>

	<!-- *---container Start---* -->
	<!-- accordion 메뉴 -->
	<div class="h60px"></div>
	<div class="c">
		<div class="accordion">
			<div class="cate">
				<span class="menu">
					<a href="#" class="menulink">회원관리</a>
					<a href="javascript:void(0);" class="subopen"></a>
				</span>
				<ul>
					<li><a href="${CP}/admin/adminSearch.do">회원조회</a></li>
				</ul>
			</div>
			<div class="cate">
				<span class="menu">
					<a href="${CP}/admin/admin.do" class="menulink">게시판관리</a>
					<a href="javascript:void(0);" class="subopen"></a>
				</span>
				<ul>
					<li><a href="${CP}/post/postList.do?categoryNumber=10">자유게시판</a></li>
					<li><a href="${CP}/post/postList.do?categoryNumber=20">Q&A</a></li>
					<li><a href="${CP}/post/postList.do?categoryNumber=30">공지사항</a></li>
				</ul>
			</div>
			<div class="cate">
				<span class="menu">
					<a href="#" class="menulink">서비스 관리</a>
					<a href="javascript:void(0);" class="subopen"></a>
				</span>
				<ul>
					<li>
            <a href="${CP}/admin/adminSubChargeChange.do">구독제 요금 변경</a>
          </li>
				</ul>
			</div>
		</div>

		<!-- accordion 메뉴 end -->
		<div class="container admin-member">
			<h1 style="margin: 30px;">회원관리</h1>

			<%-- sessionScope.user:${sessionScope.user } --%>
			<div class="button-area">
				<!-- 검색  -->



<!--  검색기능 구현  -->
      <div class="table-search">
				<form action="${CP}/admin/adminSearch.do" method="get" name="userfrm">
					<input type="hidden" name="pageNo" id="pageNo">
					<div class="post-nav">
					 <div class="col-auto">
					 
					 <select class="form-select" name="searchDiv" id="serachDiv">
					    <c:forEach var="vo" items="${searchList}">
					          <option 
                      <c:if test="${vo.codeDetail == inVO.searchDiv }">selected</c:if> value="<c:out value='${vo.codeDetail}'/>"> 
					            <c:out value='${vo.codeDetailName}'/> 
					       </option>
					    </c:forEach>
					  </select>
					</div>
					<div class="col-auto">
					 <input tpye="text" name="searchWord" id="searchWord" value="<c:out value='${inVO.searchWord }'/>" placeholder="검색어를 입력 하세요" class="form-control" style="color:#FFFFFF;">        

					<!-- 검색구분 -->
					</div>
					<div class="list-btn">
					 <a href="#" id="doRetrieve"><i class='fas fa-search fa-sm' style='color:#FFA000;'></i></a>
           </div>
					</div>
					</form>
					</div>
					<!-- form end---- -->
					
					<!-- Table start -->
					
					<table id="postTable" class="table table-sm table-hover table-borderless">
		        <thead class="post-thead">
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
	           <%-- 조회 데이터가 있는 경우--%>
	           <c:choose>
               <c:when test="${not empty list }">
		            <c:forEach var="vo" items="${list}">
		              <tr class="cell">
		                <td class="c-txt"><c:out value="${vo.memberId}"/></td>
		                <td class="c-txt"><c:out value="${vo.nickName}"/></td>
		                <td class="c-txt"><c:out value="${vo.memberName}"/></td>
		                <td class="c-txt"><c:out value="${vo.memberGrade}"/></td>
		                <td class="c-txt"><c:out value="${vo.email}"/></td>
		                <td class="c-txt"><c:out value="${vo.updateDate}"/></td>
		              </tr>
		            </c:forEach>
		           </c:when>
	            <%-- 조회 데이터가 없는 경우--%>
               <c:otherwise>
                   <tr>
                      <td  class="text-c" colspan="99">No data found.</td>
                   </tr>
               </c:otherwise>
             </c:choose>
           </tbody>
        </table>	             
	          
       <!-- 페이징 -->
       <div class="d-flex justify-content-center">
        <%= StringUtil.renderPaging(totalCnt, pageNo, pageSize, bottomCount,  cPath+"/admin/adminSearch.do", "searchPage") %>
       </div> 
       <!--// 페이징 ---------------------------------------------------------------->
       
			<!-- button -->
			<div class="button-area ">
				<input type="button" class="btn" value="초기화" id="init">
				<input type="button" class="btn" value="수정" id="update">
				<input type="button" class="btn" value="탈퇴" id="deleteOne">

			</div>
			<!-- button ----------------------------------------------------------------->
			<!-- 관리 폼 -->
			<div>
				<form action="#" name="reg_frm">
					<div class="form-group">
						<label for="memberId">회원ID</label>
						<input type="text" name="memberId" id="memberId" placeholder="회원ID를 입력 하세요."
							maxlength="320" readonly>
					</div>
					<div class="form-group">
						<label for="nickName">닉네임</label>
						<input type="text" name="nickName" id="nickName" placeholder="닉네임을 입력 하세요."
							maxlength="20">
					</div>
					<div class="form-group">
						<label for="memberName">회원이름</label>
						<input type="text" name="memberName" id="memberName" placeholder="회원이름을 입력 하세요."
							maxlength="320">
					</div>
					<div class="form-group">
						<label for="memberGrade">등급</label>
					  <select name="memberGrade" id="memberGrade">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
						</select>
					</div>
					<div class="form-group">
						<label for="email">이메일</label>
						<input type="text" name="email"
							id="email" placeholder="이메일을 입력 하세요." maxlength="320">
					</div>
					<div class="form-group">
						<label for="updateDate">등록일</label>
					  <input type="text" name="updateDate" id="updateDate" placeholder="등록일을 입력 하세요."
							maxlength="20">
					</div>


				</form>
			</div>

			<!-- 관리 폼 end --------------------------------------------------------------->
			<%-- <fmt:formatNumber value="${totalCnt}" pattern="#,##0" /> --%>
		</div>
	</div>
	<!-- ---------------------------------------------------------------------- -->
	<!-- 검색구분 -->

	<p id="pagetop" class="inner">
		<a href="#">↑</a>
	</p>

	<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
	<script src="${CP}/resources/js/util.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
	<script>
	//검색 기능
	  function searchPage(url, pageNo){
	    let frm = document.userfrm;
	    frm.action = url;
	    frm.pageNo.value = pageNo;
	    frm.submit();  
	  }
	    
	  function doRetrieveCall(pageNo){
	    let frm = document.userfrm;
	    frm.pageNo.value = pageNo;
	    frm.submit();  
	  }
	    
	  $("#searchWord").on("keypress", function(e){
	    if (13 == e.which){
	      e.preventDefault();
	      doRetrieveCall(1);
	    }
	  });
	  
	  $("#doRetrieve").on("click", function(){
	    doRetrieveCall(1);
	  });
	  

	</script>
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
		$(document).on(
				"click",
				"#postTable tbody tr",
				function(e) {
					let memberId = $(this).find(".c-txt:eq(0)").text();

					$.ajax({
						type : "POST",
						url : "${CP}/admin/get.do",
						async : true,
						dataType : "json",
						data : {
							memberId : memberId
						},
						success : function(data) {
							$("#memberId").val(data.memberId);
							$("#nickName").val(data.nickName);
							$("#memberName").val(data.memberName);
							$("#memberGrade").val(data.memberGrade);
							$("#email").val(data.email);

							const updateDate = data.updateDate;
							const formattedDate = new Date(updateDate)
									.toLocaleString();
							$("#updateDate").val(formattedDate);
						},
						error : function(data) {
							console.log("error:" + data);
						}
					});
				});

		//수정
		$("#update").on("click", function() {
			console.log('update click');
			if (eUtil.ISEmpty($("#memberId").val()) == true) {
				alert("아이디를 입력 하세요.")
				$("#memberId").focus();
				return;
			}

			if (eUtil.ISEmpty($("#nickName").val()) == true) {
				alert("닉네임을 입력 하세요.")
				$("#nickName").focus();
				return;
			}

			if (eUtil.ISEmpty($("#memberName").val()) == true) {
				alert("회원이름을 입력 하세요.")
				$("#memberName").focus();
				return;
			}

			if (eUtil.ISEmpty($("#email").val()) == true) {
				alert("이메일을 입력 하세요.")
				$("#email").focus();
				return;
			}

			//회원정보 수정
			$.ajax({
				type : "POST",
				url : "${CP}/admin/adminUpdate.do",
				async : true,
				dataType : "json",
				data : {
					"memberId" : $("#memberId").val(),
					"nickName" : $("#nickName").val(),
					"memberName" : $("#memberName").val(),
					"memberGrade" : $("#memberGrade").val(),
					"email" : $("#email").val()
				},
				success : function(data) {
					console.log("success data:", data);
					let parsedJson = data;
					if ("1" == parsedJson.msgId) {
						alert(parsedJson.msgContents);
						searchPage();
						location.reload();
					} else {
						alert(parsedJson.msgContents);
					}
				},
				error : function(data) {
					console.log("error:", data);
				}
			});
		});

		$("#init").on("click", function() {//--초기화---------------------------------
			console.log('init');

			//1. 등록 버튼 활성화
			//2. 아이디 read/write로 변경         
			$("#add").prop("disabled", false);
			$("#memberId").prop("disabled", false);

			const initValue = "";
			$("#memberId").val(initValue);
			$("#nickName").val(initValue);
			$("#memberName").val(initValue);
			//select box : basic
			$("#memberGrade").val(1);
			$("#email").val(initValue);
			$("#updateDate").val(initValue);

		});//init end ------------------------------------------------------------

		$("#deleteOne").on(
				"click",
				function() { //-삭제---------------------------
					console.log('deleteOne click');

					let memberId = $("#memberId").val();

					console.log('memberId:' + memberId);
					if (null == memberId || undefined == memberId
							|| memberId.length == 0) {
						alert('아이디를 입력 하세요.');
						$("#memberId").focus();
						return;
					}

					if (confirm('삭제 하시겠습니까?') == false)
						return;

					$.ajax({
						type : "GET",
						url : "${CP}/admin/deleteOne.do",
						asyn : "true",
						dataType : "json",
						data : {
							memberId : memberId
						},
						success : function(data) {
							console.log("success data:" + data);
							let parsedJson = data;
							if ('1' == parsedJson.msgId) {
								alert(parsedJson.msgContents);
								$("#memberId").val('');
								$("#nickName").val('');
								$("#memberName").val('');
								$("#memberGrade").val('1');
								$("#email").val('');
								$("#updateDate").val('');
							} else {
								alert("탈퇴시켰습니다.");
								location.reload();
							}
						},
						error : function(data) {
							console.log("error:" + data);
						}
					});

				});//deleteOne button ----------------------------------------------------


		//숫자만 입력되도록 처리
		$(".numberOnly").on("keyup", function(e) {
			console.log('numberOnly keyup' + $(this).val());
			//REG EXP
			$(this).val($(this).val().replace(/[^0-9]/g, ""));
		});//numberOnly end---------------------------------------------------------


	</script>
</body>
</html>