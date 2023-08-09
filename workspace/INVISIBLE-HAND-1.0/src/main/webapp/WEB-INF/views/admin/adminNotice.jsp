<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
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

.cate ul li {
  padding: 5px 10px;
}

.cate ul li:first-child {
  padding-top: 20px;
}

.cate ul li:last-child {
  padding-bottom: 20px;
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
  <!-- **---container End---** -->

  <div>
    <h1>공지사항</h1>


    <!-- *---검색,글쓰기 Start---* -->
    <div class="table-search">
      <form action="#" method="get" name="boardFrm">
        <input type="hidden" name="pageNo" id="pageNo"> <input
          type="hidden" name="div" id="div" value='${inVO.getDiv()}'>
        <div class="row g-1 d-flex justify-content-end ">
          <div class="col-auto">
            <select class="form-select" name="searchDiv" id="searchDiv">
              <!-- code table -->
              <option value="">게시판선택</option>
              <c:forEach var="vo" items="${searchList }">
                <option
                  <c:if test="${vo.code == inVO.searchDiv }">selected</c:if>
                  value="<c:out value='${vo.code }'/>">
                  <c:out value='${vo.codeNm }' />
                </option>
              </c:forEach>
            </select>
          </div>
          <div class="col-auto">
            <!-- <input type="text" name="searchWord" id="searchWord" value="<c:out value='${inVO.searchWord }'/>" placeholder="검색어를 입력 하세요" class="form-control"> -->
            <input type="text" name="searchWord" id="searchWord"
              placeholder="검색어를 입력 하세요" class="form-control">
          </div>
          <div class="col-auto">
            <a href="#" class="btn" id="doRetrieve">검색</a> <a href="#"
              class="btn" onclick="doMoveToReg();">글쓰기</a>
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

  </div>
  <!-- **---wrap End---** -->
  </div>

  <p id="pagetop" class="inner">
    <a href="#">↑</a>
  </p>

  <script src="js/jquery-3.7.0.js"></script>
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
    $(".categorybox").click(function() {
      $(this).siblings().removeClass("active");
      $(this).addClass("active");
      // $("html, body").scrollTop($(".tab-box").height());
      let clickTab = $(this).attr("data-tab");
      $(".tab-box").removeClass("active");
      $("." + clickTab).addClass("active");
    });
  </script>
</body>
</html>