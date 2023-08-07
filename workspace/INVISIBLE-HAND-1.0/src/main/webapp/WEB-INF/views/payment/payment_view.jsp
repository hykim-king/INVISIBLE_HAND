<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="../resources/js/payment/payment.js"></script>
<!-- iamport.payment.js -->
<div class="h60px"></div>
<div class="container-1400 min-100vh con-main">
  <div class="wrap-1000">

    <div class="wrap_demo" id="kakaoWrap">

      <div id="kakaoHead">
        <img src="../resources/image/kakaopay_icon.jpg" alt="kakaopay_logo"
          width="100px" />
      </div>

      <div id="kakaoContent">
        <div id="paymentBtn">
          <span>더 많은 정보를 원한다면</span>
        </div>
        <button class="btn-hover color-11" id="payBtn"
          onclick="requestPay()">결제하기</button>
      </div>
      <!-- *** kakaoContent *** -->

    </div>
    <!-- *** kakaoWrap *** -->

  </div>
</div>