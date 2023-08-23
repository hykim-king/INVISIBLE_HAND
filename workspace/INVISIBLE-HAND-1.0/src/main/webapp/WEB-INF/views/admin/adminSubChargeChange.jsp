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
.c {
  display: flex;
}

.admin-post {
  margin: 80px;
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
<title>보이지 않는 손 레이아웃</title>
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
          <li>
            <a href="${CP}/admin/adminSearch.do">회원조회</a>
          </li>
        </ul>
      </div>
      <div class="cate">
        <span class="menu">
          <a href="#" class="menulink">게시판관리</a>
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
  </div>

	<!-- accordion 메뉴 end -->
  <div class="container">
    <h1>구독관리</h1>
    <%-- sessionScope.user:${sessionScope.user } --%>
    <div class="button-area">
      <!-- 검색  -->

      <form action="#" name="user_frm">
        <input type="hidden" name="pageNo" id="pageNo">
        <!-- 검색구분 -->
        <select name="searchDiv" id="searchDiv">
          <option value="">전체</option>
          <option value="">회원 등급 이름</option>
          <option value="">회원 등급</option>
          <option value="">구독 가격</option>
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
        </select> <input type="button" class="btn" value="조회" value="조회"
          id="doRetrieve" onclick="window.doRetrieve();">
      </form>
    </div>

    <table id="boardTable"
      class="table table-sm table-hover table-borderless">
      <thead class="board-thead">
        <tr>
          <th class="text-center">회원 등급 이름</th>
          <th class="text-center">회원 등급</th>
          <th class="text-center">구독 가격</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="vo" items="${subscriptionlist}">
          <tr>
            <td class="c-txt">${vo.memberGradeName}</td>
            <td class="c-txt">${vo.memberGrade}</td>
            <td class="c-txt">${vo.subscriptionPrice}</td>
          </tr>
        </c:forEach>
        <c:choose>
          <c:when test="${not empty list }">
            <c:forEach var="vo" items="${list}">
              <tr>
                <td class="text-center  col-sm-2  col-md-1  col-lg-1"><c:out
                    value="${vo.num}" /></td>
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
          <li class="page-item"><a class="page-link" href="#"
            data-page="1">1</a></li>
          <li class="page-item"><a class="page-link" href="#"
            data-page="2">2</a></li>
          <li class="page-item"><a class="page-link" href="#"
            data-page="3">3</a></li>
          <li class="page-item"><a class="page-link" href="#"
            data-page="4">4</a></li>
          <li class="page-item"><a class="page-link" href="#"
            data-page="5">5</a></li>
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
        type="button" class="btn" value="수정" id="update">
    </div>

    <!-- 관리 폼 -->
    <div>
      <form action="#" name="reg_frm">
        <div class="form-group">
          <label for="memberGradeName">회원 등급 이름</label> <input type="text"
            name="memberGradeName" id="memberGradeName"
            placeholder="원 등급 이름이 표시 됩니다." maxlength="320" readonly>
        </div>
        <div class="form-group">
          <label for="memberGrade">회원 등급</label> <input type="text"
            name="memberGrade" id="memberGrade" placeholder="회원 등급이 표시 됩니다."
            maxlength="320" readonly>
        </div>
        <div class="form-group">
          <label for="subscriptionPrice">구독 가격</label> <input type="number"
            name="subscriptionPrice" id="subscriptionPrice"
            placeholder="구독가격을 입력 하세요." maxlength="320">
        </div>
      </form>
    </div>

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
      $(document).on(
        "click",
        "#boardTable tbody tr",
        function(e) {
          let memberGradeName = $(this).find(".c-txt:eq(0)").text();

          $.ajax({
            type : "POST",
            url : "${CP}/admin/get.do",
            async : true,
            dataType : "json",
            data : {
              memberGradeName : memberGradeName
            },
            success : function(data) {
              $("#memberGradeName").val(data.memberGradeName);
              $("#memberGrade").val(data.memberGrade);
              $("#subscriptionPrice").val(data.subscriptionPrice);              
            },
            error : function(data) {
              console.log("error:" + data);
            }
          });
        });
        
    // 수정
    $("#update").on("click", function() {
      console.log('update click');
      if (eUtil.ISEmpty($("#subscriptionPrice").val()) == true) {
        alert("구독가격을 입력 하세요.")
        $("#subscriptionPrice").focus();
        return;
      }
    
      $.ajax({
          type : "POST",
          url : "${CP}/admin/update.do",
          async : true,
          dataType : "json",
          data : {
            "subscriptionPrice" : $("#subscriptionPrice").val()
          },
          success : function(data) {
            console.log("success data:", data);
            let parsedJson = JSON.parse(data);
            if ("1" == parsedJson.msgId) {
              alert(parsedJson.msgContents);
              doRetrieve();
            } else {
              alert(parsedJson.msgContents);
            }
          },
          error : function(data) {
            console.log("error:", data);
          }
        });
      });
    
    // 초기화
    $("#init").on("click", function() {
        console.log('init');
    
        $("#add").prop("disabled", false);
        $("#memberGradeName").prop("disabled", false);

        const initValue = "";
        $("#memberGradeName").val(initValue);
        $("#memberGrade").val(initValue);
        $("#subscriptionPrice").val(initValue);
      });

    </script>
</body>
</html>