<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>

<c:url value="/post/postList.do" var="freePostURL">
	<c:param name="categoryNumber" value="10" />
</c:url>

<c:url value="/post/postList.do" var="qnaPostURL">
	<c:param name="categoryNumber" value="20" />
</c:url>

<c:url value="/post/postList.do" var="postURL">
	<c:param name="categoryNumber" value="30" />
</c:url>

<!DOCTYPE html>
<html>

<body>
	<!-- *---header Start---* -->
	<header class="header">
		<div class="inner">
			<div class="logo">
				<a href="${CP}/main/main.do"><img
					src="../resources/image/pngaaa.com-589654.png" alt="logo" /></a>
			</div>
			<nav class="gnb_wrap">
				<ul class="global_nav_bar">
					<li><a href="${CP}/chart/chart.do">차트</a></li>
					<li><a href="${CP}/solution/solution_Q.do">솔루션</a></li>
					<li><a href="${CP}/post/postList.do">커뮤니티</a></li>

				</ul>
				<ul class="local_nav_bar">
					<li>
						<ul class="sub-menu">
							<li>서브메뉴1</li>
							<li>서브메뉴1</li>
							<li>서브메뉴1</li>
							<li>서브메뉴1</li>
						</ul>
					</li>
					<li>
						<ul class="sub-menu">
							<li>서브메뉴2</li>
							<li>서브메뉴2</li>
							<li>서브메뉴2</li>
							<li>서브메뉴2</li>
						</ul>
					</li>
					<li>
						<ul class="sub-menu">
							<li><a href="${freePostURL}">자유 게시판</a></li>
							<li><a href="${qnaPostURL}">Q&A 게시판</a></li>
							<li><a href="${postURL}">공지사항</a></li>
							<li>서브메뉴3</li>
						</ul>
					</li>
				</ul>
			</nav>

			<div class="login">
				<c:choose>
					<c:when test="${null != sessionScope.member && not empty sessionScope.member}">
						<span>${sessionScope.member.nickName}</span>
						<a href="javascript:doLogout('${sessionScope.member.nickName}');"><span>로그아웃</span></a>
					</c:when>
					<c:otherwise>
						<a href="${CP}/member/memberLogin.do"><span>로그인</span></a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</header>

	<!-- **---header End---** -->
	<script>
		function doLogout(name) {
			if (confirm(name + '님 로그아웃하시겠습니까?') == false)
				return;
			console.log("doLogout");

			window.location.href = "${CP}/member/logout.do";
		}
	</script>