
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	
			<!-- jsp 화면에 추가 -->
			<div>
						<%@page import="com.pcwk.ehr.VO.PostVO"%>
						<%
						   PostVO vo = new PostVO();
						   vo.setCategoryNumber("10"); // 다른 필요한 값들도 설정
						   request.setAttribute("inVO", vo);
						%>
						<jsp:include page="/WEB-INF/views/post/postList.jsp">
						  <jsp:param value="10" name="categoryNumber"/>
						</jsp:include>				
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