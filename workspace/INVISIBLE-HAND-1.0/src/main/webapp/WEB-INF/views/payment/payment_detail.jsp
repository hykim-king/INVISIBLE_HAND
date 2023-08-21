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
				<c:if test="${not empty paymentList}">
           <table>
					  <thead>
					    <tr>
					      <th>로그인된 유저의 seq</th>
					      <th>로그인된 유저의 회원등급</th>
					      <th>로그인된 유저의 주문번호</th>
					      <th>로그인된 유저가 결제한 상품 이름</th>
					      <th>로그인된 유저가 결제한 금액</th>
					      <th>로그인된 유저의 이메일</th>
					      <th>로그인된 유저의 이름</th>
					      <th>로그인된 유저의 번호</th>
					    </tr>
					  </thead>
					  <tbody>
					    <c:forEach items="${paymentList}" var="list">
					      <c:if test="${not empty paymentList}">
					        <tr>
					          <td>${list.paymentinfoseq}</td>
					          <td>${sessionScope.member.memberGrade}</td>
					          <td>${list.merchantUid}</td>
					          <td>${list.name}</td>
					          <td>${list.amount}</td>
					          <td>${list.buyerEmail}</td>
					          <td>${list.buyerName}</td>
					          <td>${list.buyerTel}</td>
					        </tr>
					      </c:if>
					    </c:forEach>
					  </tbody>
           </table>
				</c:if>
      <!-- *** kakaoContent *** -->
      </div>
    </div>
    <!-- *** kakaoWrap *** -->

  </div>
</div>