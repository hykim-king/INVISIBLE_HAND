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
<script src="../resources/js/common/payment.js"></script>
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
					<span>더 많은 정보를 원한다면</span><br>
					<div>${sessionScope.member.memberName}</div><br>
					<div>${sessionScope.member.email}</div><br>
					<div>${sessionScope.member.phoneNumber}</div>
				</div>
				<button class="btn-hover color-11" id="payBtn" onclick="paymentReady()">결제하기</button>
				<button class="btn-hover color-11" id="confirmBtn" onclick="confirmReady()">본인인증하기</button>
			</div>
			<!-- *** kakaoContent *** -->

		</div>
		<!-- *** kakaoWrap *** -->

	</div>
</div>
<script>
function paymentReady() {
    var name = '${sessionScope.member.memberName}';
    var email = '${sessionScope.member.email}';
    var phoneNum = '${sessionScope.member.phoneNumber}';

		var today = new Date();
		var hours = today.getHours(); // 시
		var minutes = today.getMinutes(); // 분
		var seconds = today.getSeconds(); // 초
		var milliseconds = today.getMilliseconds();
		var makeMerchantUid = hours + minutes + seconds + milliseconds;

		var IMP = window.IMP;
		IMP.init("imp77248336"); // 가맹점 식별코드
		IMP.request_pay({
			pg : 'kakaopay.TC0ONETIME', // 결제할 지점 이름(kcp)
			pay_method : 'card', // 결제 방법
			merchant_uid : "IMP" + makeMerchantUid, // 주문번호
			name : '구독(1개월)', // 구매할 상품명
			amount : 100, // 구매할 가격
			buyer_email : email,// 소비자 이메일
			buyer_name : name, // 소비자 이름
			buyer_tel : phoneNum // 소비자 전화번호
		}, function(data) {
			if (data.success) {
				alert("결제가 완료되었습니다!");
				console.log("성공!");
				
				$.ajax({
					type : "POST"
					, url : "/ehr/payment/payment_info.do"
					, async: true
					, dataType: "json"
					, data : {
						  "merchantUid" : data.merchant_uid
						  , "email" : data.buyer_email
						  , "name" : data.name
						  , "amount" : data.paid_amount
						  , "buyerEmail" : data.buyer_email
						  , "buyerName" : data.buyer_name
						  , "buyerTel" : data.buyer_tel
					}, success: function(data) {
		          console.log("success data:" + data);
          }, error: function(data) {
        	    console.log("error:" + data);
        	    console.log(data);
          }
	      });

				document.location.href = "/ehr/main/main.do";
			} else {
				var msg = data.error_msg;

				alert(msg);
				location.reload(); // 새로고침
			}
		});
	}
</script>
<script>
function confirmReady() {
	const userCode = "imp77248336";
	IMP.init(userCode);
	
	IMP.certification({ // param
	    // 주문 번호
	    pg:'PG사코드.{CPID}',//본인인증 설정이 2개이상 되어 있는 경우 필
	    merchant_uid: "ORD20180131-0000011", 
	    // 모바일환경에서 popup:false(기본값) 인 경우 필수
	    /* m_redirect_url : "{리디렉션 될 URL}", */ 
	    // PC환경에서는 popup 파라미터가 무시되고 항상 true 로 적용됨
	    popup : false 
	  }, function (rsp) { // callback
	    if (rsp.success) {
	      alert("성공!");
	    } else {
	    	  alert("실패!");
	    }
	  });
}
</script>