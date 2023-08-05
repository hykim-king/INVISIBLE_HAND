<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/payment.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<!-- 포트원 결제 -->
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<!-- 포트원 결제 -->
<!-- <script src="../resources/js/common/payment.js"></script> -->
<!-- *---container Start---* -->
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
<!-- **---container End---** -->





<script>
$.ajax({
	  type: "POST",
	  url: "/payment/kakaopay.do",
	  data: {
	      "email": "이메일값",
	      "memberName": "이름값"
	  },
	  dataType: "json",
	  success: function (data) {
	      if (data.resultMsg == "success") {
	          var imp_uid = data.paymentInfoSeq;
	          requestPay(imp_uid, data.buyer_email, data.buyer_name);
	      } else {
	          alert("결제 정보를 생성할 수 없습니다.");
	      }
	  },
	  error: function (xhr, status, error) {
	      console.log("API Error occurred: ", error);
	  }
});

var IMP = window.IMP;
IMP.init("imp77248336");

function requestPay(imp_uid, buyer_email, buyer_name) {
    IMP.request_pay({
        pg: "kcp.kakaopay", // 가맹점 식별 코드
        pay_method: "card", // 결제 수단
        merchant_uid: imp_uid, // 주문 번호
        name: "구독", // 구매할 상품명
        amount: 1004, // 구매할 상품 가격
        buyer_email: buyer_email, // 소비자 이메일
        buyer_name: buyer_name // 소비자 이름
    }, function (rsp) {
        if (rsp.success) {
            var msg = '결제가 완료되었습니다.';
            alert(msg);
            location.href = "/chart/chartGraph.do";
            console.log(rsp);
        } else {
            var msg = '결제에 실패하였습니다.\n';
            msg += '에러내용 : ' + rsp.error_msg;
            alert(msg);
            console.log(rsp);
        }
    });
}
</script>