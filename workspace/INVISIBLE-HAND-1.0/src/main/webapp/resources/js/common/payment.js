$.ajax({
	type : "POST",
	url : "/payment/kakaopay.do",
	dataType : "json",
	success : function(data) {
		// DB에서 가져온 데이터를 활용하여 IMP.request_pay 함수 호출
		requestPay(data.merchant_uid, data.buyer_email, data.buyer_name);
	},
	error : function(xhr, status, error) {
		console.log("API Error occurred: ", error);
	}
});

// 카카오페이 api 사용
var IMP = window.IMP;
IMP.init("imp77248336");

function requestPay() {
	IMP.request_pay({
		pg : "kcp.kakaopay", // 가맹점 식별 코드
		pay_method : "card", // 결제 수단
		merchant_uid : "주문번호", // 주문 번호
		name : "구독", // 구매할 상품명
		amount : 1004, // 구매할 상품 가격
		buyer_email : "이메일", // 소비자 이메일
		buyer_name : "소비자 이름", // 소비자 이름
	}, function(rsp) { // callback
		if (rsp.success) {
			var msg = '결제가 완료되었습니다.';
			alert(msg);
			location.href = "/chart/chartGraph"
			console.log(rsp);
		} else {
			var msg = '결제에 실패하였습니다.\n';
			msg += '에러내용 : ' + rsp.error_msg;
			alert(msg);
			console.log(rsp);
		}
	});
}