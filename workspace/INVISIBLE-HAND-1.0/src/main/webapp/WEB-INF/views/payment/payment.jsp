<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/payment.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="../resources/js/payment.js"></script>
<!-- *---container Start---* -->
<div class="h60px"></div>
<div class="container-1400 min-100vh con-main">
  <div class="wrap-1000">
  
    <div class="wrap_demo" id="kakaoWrap">
      
      <div id="kakaoHead">
        <img src="../resources/image/kakaopay_icon.jpg" alt="kakaopay_logo" width="100px" />
      </div>  
       
      <div id="kakaoContent">
        <div id="paymentBtn">
          <span>더 많은 정보를 원한다면</span>
        </div>
        <button class="btn-hover color-11" id="payBtn" onclick="requestPay()">결제하기</button>
      </div> <!-- *** kakaoContent *** -->
      
    </div> <!-- *** kakaoWrap *** -->
    
  </div>
</div>
<!-- **---container End---** -->

<script>
IMP.init("impXXXXXXXXX");

IMP.request_pay({
    pg : 'kakaopay',
    pay_method : 'card', //생략 가능
    merchant_uid: "order_no_0001", // 상점에서 관리하는 주문 번호
    name : '주문명:결제테스트',
    amount : 10000,
    buyer_email : 'kjbv0070@gmail.com',
    buyer_name : '강정빈',
    buyer_tel : '010-1234-5678',
    buyer_addr : '서울특별시 마포구 양화대로',
    buyer_postcode : '123-456'
}, function(rsp) { // callback 로직
	
  //* ...중략 (README 파일에서 상세 샘플코드를 확인하세요)... *//
});
</script>