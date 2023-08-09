<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="image/favicon-32x32.png">
<!-- JavaScript Bundle with Popper -->
<script
  src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
  crossorigin="anonymous"></script>
<link rel="stylesheet" href="../resources/css/hand-board.css">
<link rel="stylesheet" href="../resources/css/list.css">
<link rel="stylesheet" href="../resources/css/common.css">
<style>

/* 新しいスタイル */
.additional-text {
  /* 追加テキストのスタイルを設定 */
  position: absolute;
  top: 0;
  right: 0; /* 追加テキストの位置を調整 */
  bottom: 0;
  left: 0;
  display: flex;
  align-items: center;
  justify-content: center; /* 水平方向に中央揃え */
  color: #000;
  font-weight: bold;
}

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
  <span class="additional-text">문의사항 답변한다</span>


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

      <h1>Q&A</h1>
      <div class="btn-area">
        <input type="button" class="btn" value="수정" id="update">
        <input type="button" class="btn" value="삭제" id="delete">
        <input type="button" class="btn" value="목록" id="moveToList">
      </div>
      <!-- *---제목+내용 Start---* -->
      <div class="contents-area">
        <!-- <form action="/ehr/post/get.do" name="post_detail_form"> -->
          <div id="title" class="contents-title">
            <p>제목이 됩니다</p>
            <!-- <c:out value="${outVO.title}" />-->
          </div>
          <div id="contents" class="contents">
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

  <p id="pagetop" class="inner">
    <a href="#">↑</a>
  </p>
  
  <script src="../resources/js/jquery-3.7.0.js"></script>
  <script>
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