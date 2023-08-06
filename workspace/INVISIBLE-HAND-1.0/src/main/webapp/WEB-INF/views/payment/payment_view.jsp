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
<script>
  var IMP = window.IMP;
  IMP.init("imp77248336"); // 가맹점 식별코드

  var today = new Date();
  var hours = today.getHours(); // 시
  var minutes = today.getMinutes(); // 분
  var seconds = today.getSeconds(); // 초
  var milliseconds = today.getMilliseconds();
  var makeMerchantUid = hours + minutes + seconds + milliseconds;

  function requestPay() {
    IMP.request_pay({
      pg : 'kakaopay.TC0ONETIME', // 결제할 지점 이름
      pay_method : 'card', // 결제 방법
      merchant_uid : "IMP" + makeMerchantUid, // 주문번호
      name : '구독(1개월)', // 구매할 상품명
      amount : 100, // 구매할 가격
      buyer_email : 'Iamport@chai.finance', // 소비자 이메일
      buyer_name : '아임포트 기술지원팀', // 소비자 이름
      buyer_tel : '010-1234-5678' // 소비자 전화번호
    }, function(data) {
      if (data.success) {
        var msg = "결제가 완료되었습니다!";
        msg += '/n주문 번호 : ' + data.merchant_uid;
        msg += '/n결제 금액 : ' + data.paid_amount;
        msg += '/n구매자 이름 : ' + data.buyer_name;
        msg += '/n구매자 이메일 : ' + data.buyer_email;
        msg += '/n구매자 전화번호 : ' + data.buyer_tel;

        console.log("성공!");
        /* $.ajax({
          type : 'post',
          url : '/paySuccess',
          data : {
            "ID" : data.buyer_email,
            "amount" : data.paid_amount
          },
        }); */
        document.location.href = "/ehr/main/main.do";
      } else {
        var msg = data.error_msg;

        alert(msg);
        location.reload(); // 새로고침
      }
      alert(msg);
    });
  }
</script>