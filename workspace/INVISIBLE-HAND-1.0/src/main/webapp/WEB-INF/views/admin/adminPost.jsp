<%@page import="com.pcwk.ehr.cmn.StringUtil"%>
<%@page import="com.pcwk.ehr.VO.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
  PostVO vo = (PostVO) request.getAttribute("inVO");
String ctgNumValue = vo.getCategoryNumber();
String title = "자유게시판";//10 자유게시판, 20 QnA게시판, 30 공지게시판

if ("20".equals(ctgNumValue)) {
  title = "Q&A게시판";
} else if ("30".equals(ctgNumValue)) {
  title = "공지사항";
}

request.setAttribute("title", title);

//paging
int bottomCount = 10;
int pageSize = 10;
int pageNo = 1;
int totalCnt = 0;
String searchWord = "";
String searchDiv = "";

if (null != vo) {
  pageSize = vo.getPageSize();
  pageNo = vo.getPageNo();
  searchDiv = vo.getSearchDiv();
  searchWord = vo.getSearchWord();
}

if (null != request.getAttribute("totalCnt")) {
  totalCnt = Integer.parseInt(request.getAttribute("totalCnt").toString());
}

String cPath = request.getContextPath();

String defaultSearchDiv = (searchDiv == null || searchDiv.isEmpty()) ? ctgNumValue : searchDiv;
%>
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
<c:set var="defaultSearchDiv" value="${defaultSearchDiv}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
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

#pagetop {
	clear: both;
	padding-top: 40px;
	padding-right: 10px;
}

#pagetop a {
	color: #fff; /*文字色*/
	font-size: 20px; /*文字サイズ*/
	text-decoration: none;
	text-align: center;
	display: block;
	float: right;
	margin-bottom: 50px;
	background: #222; /*背景色*/
	color: #999; /*文字色*/
	width: 60px; /*幅*/
	line-height: 60px; /*高さ*/
	border-radius: 50%; /*角丸のサイズ*/
}
</style>
<title>보이지 않는 손 레이아웃</title>
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
					<li><a href="${CP}/admin/adminSearch.do">회원조회</a></li>
				</ul>
			</div>
			<div class="cate">
				<span class="menu"> <a href="${CP}/admin/admin.do"
					class="menulink">게시판관리</a> <a href="javascript:void(0);"
					class="subopen"></a>
				</span>
				<ul>
					<li><a href="${CP}/admin/adminNotice.do">공지사항</a></li>
					<li><a href="${CP}/admin/adminPost.do">게시글 수정/삭제</a></li>
					<li><a href="${CP}/admin/adminQA.do">문의사항 답변</a></li>
				</ul>
			</div>
			<div class="cate">
				<span class="menu"> <a href="${CP}/admin/admin.do"
					class="menulink">서비스 관리</a> <a href="javascript:void(0);"
					class="subopen"></a>
				</span>
				<ul>
					<li><a href="${CP}/admin/adminSubChargeChange.do">구독제 요금
							변경</a></li>
				</ul>
			</div>
		</div>

	</div>
	<!-- accordion 메뉴 end -->


	<div class="container-1200 con-main min-100vh">

		<div class="wrap-1000 ">
			<h1>게시판</h1>


			<!-- *---검색,글쓰기 Start---* -->
			<div class="table-search">
				<form action="${CP}/admin/adminPost.do" method="get" name="postFrm">
					<input type="hidden" name="pageNo" id="pageNo"> <input
						type="hidden" name="categoryNumber" id="categoryNumber"
						value='${inVO.getCategoryNumber()}'>
					<div class="row g-1 d-flex justify-content-end ">
						<div class="col-auto">
							<%-- <select class="form-select" name="searchDiv" id="searchDiv">
                  <option value="10" <c:if test="${defaultSearchDiv == '10'}">selected</c:if>>자유게시판</option>
                  <option value="20" <c:if test="${defaultSearchDiv == '20'}">selected</c:if>>Q&A게시판</option>
                  <option value="30" <c:if test="${defaultSearchDiv == '30'}">selected</c:if>>공지사항</option>
              </select> --%>
							<select class="form-select" name="searchDiv" id="searchDiv">
								<option value="none">=게시판을 선택하세요</option>
								<option value="10"
									<c:if test="${defaultSearchDiv == '10'}">selected</c:if>>자유게시판</option>
								<option value="20"
									<c:if test="${defaultSearchDiv == '20'}">selected</c:if>>Q&A게시판</option>
								<option value="30"
									<c:if test="${defaultSearchDiv == '30'}">selected</c:if>>공지사항</option>
								  <c:forEach var="vo" items="${searchList}">
                       <option <c:if test="${vo.codeDetail == defaultSearchDiv}">selected</c:if> value="<c:out value='${vo.codeDetail }' />">
                           <c:out value='${vo.codeDetailName }' />
                       </option>
                   </c:forEach> 
							</select>


						</div>
						<div class="col-auto">
							<input type="text" name="searchWord" id="searchWord"
								value="<c:out value='${inVO.searchWord }'/>"
								placeholder="검색어를 입력 하세요" class="form-control">
							<!--<input type="text" name="searchWord" id="searchWord"  placeholder="검색어를 입력 하세요" class="form-control">-->
						</div>
						<div class="col-auto">
							<select class="form-select" name="pageSize" id="pageSize">
								<c:forEach var="vo" items="${pageSizeList }">
									<option
										<c:if test="${vo.codeDetail == inVO.pageSize }">selected</c:if>
										value="<c:out value='${vo.codeDetail }'/>">
										<c:out value='${vo.codeDetailName }' />
									</option>
								</c:forEach>
							</select>
						</div>
						<div class="col-auto">
							<a href="#" class="btn" id="doRetrieve">검색</a> <a href="#"
								class="btn" onclick="doMoveToPostReg();">글쓰기</a>
						</div>
					</div>
				</form>
			</div>
			<!-- **---form End---** -->
			<!-- *---Table Start---* -->

			<table id="boardTable"
				class="table table-sm table-hover table-borderless">
				<thead class="board-thead">
					<tr>
						<th class="text-center">No.</th>
						<th class="text-center">제목</th>
						<th class="text-center">글쓴이</th>
						<th class="text-center">작성일</th>
						<th class="text-center">조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<%-- 조회 데이터가 있는 경우--%>
						<c:when test="${not empty list }">
							<c:forEach var="vo" items="${list}">
								<tr>
									<td class="text-center  col-sm-2  col-md-1  col-lg-1"><c:out
											value="${vo.num}" /></td>
									<td class="text-left    col-sm-6  col-md-6  col-lg-7"><a
										href="#"><c:out value="${vo.title}" /></a></td>
									<td class="text-center  col-sm-2  col-md-2  col-lg-2"><c:out
											value="${vo.nickname}" /></td>
									<td class="text-center  col-sm-2  col-md-2  col-lg-1"><c:out
											value="${vo.writtenDate}" /></td>
									<td class="text-end     col-sm-0  col-md-1  col-lg-1"><c:out
											value="${vo.views}" /></td>
									<td style="display: none;"><c:out value="${vo.postNumber}" /></td>
								</tr>
							</c:forEach>
						</c:when>

						<%-- 조회 데이터가 없는 경우--%>
						<c:otherwise>
							<tr>
								<td class="text-center col-sm-12  col-md-12  col-lg-12"
									colspan="99">No data found.</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
			<!-- **---table End---** -->
			     <!-- 페이징 -->
      <div class="d-flex justify-content-center">
        <%=StringUtil.renderPaging(totalCnt, pageNo, pageSize, bottomCount, cPath + "/admin/adminPost.do", "do_Retrieve")%>
      </div>
      <!--// 페이징 ---------------------------------------------------------------->

			<div class="d-flex justify-content-center">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
						<li class="page-item"><a class="page-link"
							href="${CP}/admin/adminPost.do?pageNo=1">1</a></li>
						<li class="page-item"><a class="page-link"
							href="${CP}/admin/adminPost.do?pageNo=2">2</a></li>
						<li class="page-item"><a class="page-link"
              href="${CP}/admin/adminPost.do?pageNo=3">3</a></li>
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
					</ul>
				</nav>
			</div>






			<!-- **---wrap End---** -->

		</div>
		<!-- **---container End---** -->
		<p id="pagetop" class="inner">
			<a href="#">↑</a>
		</p>

		<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
		<script src="${CP}/resources/js/util.js"></script>
		<script>
			$(".categorybox").click(function() {
				$(this).siblings().removeClass("active");
				$(this).addClass("active");
				// $("html, body").scrollTop($(".tab-box").height());
				let clickTab = $(this).attr("data-tab");
				$(".tab-box").removeClass("active");
				$("." + clickTab).addClass("active");
			});
			(function($) {
				// クリックされたメニューを開く関数
				function openMenu($menu) {
					$menu.addClass('active');
					$menu.find('ul').slideDown('slow');
				}

				// クリックされたメニューを閉じる関数
				function closeMenu($menu) {
					$menu.removeClass('active');
					$menu.find('ul').slideUp('slow');
				}

				$('.cate ul').hide();

				// すべてのメニューを開く
				$('.accordion .cate').each(function() {
					openMenu($(this));
				});

				$('.cate .menu .subopen').click(function(event) {
					event.stopPropagation(); // イベントが親要素に伝播しないようにする

					var $parent = $(this).parent().parent();
					var isActive = $parent.hasClass('active');

					// クリックされたメニューが閉じている場合は開く、開いている場合は閉じる
					if (isActive) {
						closeMenu($parent);
					} else {
						openMenu($parent);
					}
				});
			})(jQuery);
		</script>
</body>
</html>