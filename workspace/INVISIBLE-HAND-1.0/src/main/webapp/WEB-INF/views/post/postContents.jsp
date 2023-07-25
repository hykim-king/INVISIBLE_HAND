<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="image/favicon-32x32.png">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/post.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<title>게시글 내용 보기+수정페이지입니다</title>
</head>
<body>
	<!-- *---container Start---* -->

	<div class="h60px"></div>
	<div class="container-1400">
		<div class="contents-wrap">
			<h1>자유게시판</h1>
			<div class="btn-area">
				<input type="button" class="button btn-w" value="수정" id="update">
				<input type="button" class="button btn-w" value="삭제" id="delete">
				<input type="button" class="button btn-b" value="목록" id="moveToList">
			</div>
			<!-- *---제목+내용 Start---* -->
			<div class="contents-area">
				<!-- <form action="/ehr/post/get.do" name="post_detail_form"> -->
					<div id="title" class="contents-title">
						<p>제목이 됩니다</p>
						<!-- <c:out value="${outVO.title}" />-->
					</div>
					<div id="contents" class="contents">
						<p>
							있으며, 동력은 이상 싸인 것이다. 
							않는 같이, 끓는 이상의 인간의 사람은 같으며, 
							있으랴? 너의 스며들어 이상, 앞이 목숨을 불어 눈에 청춘 것이다. 
							청춘이 청춘에서만 같이, 맺어, 심장의 이것이야말로 힘있다. 
							싹이 용기가 살았으며, 너의 돋고, 피고, 부패뿐이다. 
							생명을 것은 위하여 얼음에 용감하고 싸인 그림자는 몸이 운다. 
							이것을 천고에 없으면 그들의 있을 피어나기 얼음과 이상을 이성은 위하여서. 
							피가 없는 발휘하기 황금시대다. 
							장식하는 새 앞이 청춘에서만 위하여 귀는 설레는 아니더면, 
							미묘한 피다. 사는가 얼음 평화스러운 운다.보배를 지혜는 수 같지 바이며, 
							이것이야말로 방황하였으며, 곳으로 발휘하기 것이다. 
							바이며, 황금시대를 보내는 소금이라 청춘의 피가 같이 사라지지 
							인간에 아름다우냐? 
						</p>
						
						<!-- <c:out value="${outVO.contents}" /> -->
					</div>
					<div class="contents-desc"></div>
					<div class="writer"></div>
				<!-- </form> -->
			</div>
			<!-- *---댓글 Start---* -->
			<div class="comment-area">
				<h2>3개의 댓글</h2>
				<div class="line3px"></div>
				<div class="line1px"></div>
				<div class="h30px"></div>
				<div class="comment-box">
					<div class="comment-desc">
						<h4>닉네임</h4>
						<span>2023.07.19</span>
						<p>댓글이 됩니다</p>
					</div>
					<div class="comment-icon">
						<i class='fas fa-bars fa-sm' style='color:#979797'></i>
						<i class='fas fa-thumbs-up fa-sm' style='color:#979797'> 12</i>
					</div>
				</div>
				<div class="comment-box">
					<div class="comment-desc">
						<h4>닉네임</h4>
						<span>2023.07.19</span>
						<p>댓글이 됩니다</p>
					</div>
					<div class="comment-icon">
						<i class='fas fa-bars fa-sm' style='color:#979797'></i>
						<i class='fas fa-thumbs-up fa-sm' style='color:#979797'> 12</i>
					</div>
				</div>
				<div class="comment-box">
					<div class="comment-desc">
						<h4>닉네임</h4>
						<span>2023.07.19</span>
						<p>댓글이 됩니다</p>
					</div>
					<div class="comment-icon">
						<i class='fas fa-bars fa-sm' style='color:#979797'></i>
						<i class='fas fa-thumbs-up fa-sm' style='color:#979797'> 12</i>
					</div>
				</div>
				<div class="h60px"></div>
				<div class="line1px"></div>
				<div class="line3px"></div>
				<ul class="pagination">
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
						</a>
					</li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
						</a>
					</li>
				</ul>
				<div class="add-comment">
					<p>댓글을 작성하려면 로그인 해주세요.댓글을 작성하려면 로그인 해주세요.
						댓글을 작성하려면 로그인 해주세요.댓글을 작성하려면 로그인 해주세요.
					</p>
					<div class="btn-right">
						<input type="button" class="btn" value="등록" id="addComment">
					</div>
				</div>
			</div>
		</div><!-- contents-wrap -->
	</div>

	<!-- **---container End---** -->

	

</body>
</html>