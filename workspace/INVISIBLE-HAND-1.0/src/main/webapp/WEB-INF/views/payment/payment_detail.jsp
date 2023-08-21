<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    int result = (Integer) request.getAttribute("result");
%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/payment.css">
<link rel="stylesheet"
  href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<!-- 포트원 결제 -->
<script type="text/javascript"
  src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<!-- jQuery -->
<script src="../resources/js/jquery-3.7.0.js"></script>
<script src="../resources/js/common/payment.js"></script>
<!-- iamport.payment.js -->
<div class="h60px"></div>
<div class="container-1400 min-100vh con-main">
  <div class="wrap-1000">

    <div class="wrap_demo" id="kakaoWrap">

      <div id="kakaoContent">
				<c:if test="${empty paymentList}">
		      <span>구독 정보가 없습니다.</span>
		      <div>접속하신 유저의 구독 등급 : ${result}</div>
				</c:if>
		    <c:forEach items="${paymentList}" var="list">
					<c:if test="${not empty paymentList}">
				    <div>session으로 정보 꺼내기</div><br>
				    <div>로그인된 아이디 : ${sessionScope.member.memberId}</div><br>
				    <div>로그인된 이름 : ${sessionScope.member.memberName}</div><br>
				    <div>로그인된 닉네임 : ${sessionScope.member.nickName}</div><br>
				    <div>로그인된 이메일 : ${sessionScope.member.email}</div><br>
				    <div>로그인된 핸드폰 번호 : ${sessionScope.member.phoneNumber}</div><br>
				    <div>paymentInfo model에 담아 출력</div><br>
	            <div class="paymentInfo">
						    <div>로그인된 유저의 seq : ${list.paymentinfoseq}</div>
						    <div>로그인된 유저의 주문번호 : ${list.merchantUid}</div>
						    <div>로그인된 유저가 결제한 상품 이름 : ${list.name}</div>
						    <div>로그인된 유저가 결제한 금액 : ${list.amount}</div>
						    <div>로그인된 유저의 이메일 : ${list.buyerEmail}</div>
						    <div>로그인된 유저의 이름 : ${list.buyerName}</div>
						    <div>로그인된 유저의 번호 : ${list.buyerTel}</div>
						    <div>로그인된 유저의 구독 등급 : ${result}</div>
						  </div>
					</c:if>
		    </c:forEach>
				<c:choose>
			    <c:when test="${result eq 0}">
            <span>비로그인 c:if</span><br>
			    </c:when>
			    <c:when test="${result eq 1}">
			      <span>비구독자 c:if</span><br>
			    </c:when>
			    <c:when test="${result eq 2}">
			      <span>구독자 c:if</span><br>
			    </c:when>
				</c:choose>
				<% if (result == 0) { %>
				 <span>비로그인</span>
				<% } else if (result == 1) { %>
				 <span>비구독자</span>
				<% } else if (result == 2) { %>
				 <span>구독자</span>
				<% } %>
      </div>
      <!-- *** kakaoContent *** -->

    </div>
    <!-- *** kakaoWrap *** -->

  </div>
</div>