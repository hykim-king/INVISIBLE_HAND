<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="image/favicon-32x32.png">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/post.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../resources/css/payment.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<!-- 포트원 결제 -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<!-- jQuery -->
<script src="../resources/js/jquery-3.7.0.js"></script>
<title>마이페이지 입니다</title>
<style>
#paymentList {
	list-style: none;
	padding-left: 0;
	margin: 0;
}

#paymentList li {
	margin-bottom: 5px;
}

#payBtn {
	border: 0;
	background-color: transparent;
	align-items: end;
	justify-content: flex-end;
}

.payText {
  color: white;
}
</style>

</head>
<body>
	<!-- *---container Start---* -->
	<input type="hidden" id="uemail" value="${member.email}">
	<div class="h60px"></div>
	<div class="container-1400 min-100vh con-login">
		<div class="wrap-1000 ">

			<div class="category-selecter">
				<a class="selecter-list selecter-list10">${member.memberId}님의
					결제정보입니다</a>
			</div>
			<table id="postTable"
				class="table table-sm table-hover table-borderless">

				<thead class="post-thead">
					<tr>
						<th class="text-c">No</th>
						<th class="text-c">결제 ID</th>
						<th class="text-c">이름</th>
						<th class="text-c">품목</th>
						<th class="text-c">금액</th>
						<th class="text-c">전화번호</th>
						<th class="text-c">구매시간</th>
					</tr>
				</thead>

				<tbody>
					<c:if test="${empty list}">
						<td class="text-c"></td>
						<td class="text-c"></td>
						<td class="text-c"></td>
						<td class="text-c">구독 정보가 없습니다.</td>
						<td class="text-c"></td>
						<td class="text-c"></td>
						<td class="text-c"></td>
					</c:if>
					<c:if test="${not empty list}">
						<c:forEach items="${list}" var="list" varStatus="status">
							<tr>
								<td class="text-c">${status.count}</td>
								<td class="text-c">${list.merchantUid}</td>
								<td class="text-c">${list.buyerName}</td>
								<td class="text-c">${list.name}</td>
								<td class="text-c">${list.amount}</td>
								<td class="text-c">${list.buyerTel}</td>
								<td class="text-c">${list.buyerDate}</td>

							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
			<button id="payBtn" onclick="paymentReady()">
				<img src="../resources/image/kakaopay_logo.png" alt="kakaopay_logo" width="60px" />
			</button>
		</div>
	</div>
	<!-- **---container End---** -->
</body>
<script>
	$(document).ready(function() {
		var uemail = $("#uemail").val()
		console.log(uemail);
	});
	function paymentReady() {
		let name = '${sessionScope.member.memberName}';
		let email = '${sessionScope.member.email}';
		let phoneNum = '${sessionScope.member.phoneNumber}';

		let today = new Date();
		let hours = today.getHours(); // 시
		let minutes = today.getMinutes(); // 분
		let seconds = today.getSeconds(); // 초
		let milliseconds = today.getMilliseconds();
		let makeMerchantUid = hours + minutes + seconds + milliseconds;

		let IMP = window.IMP;
		IMP.init("imp77248336"); // 가맹점 식별코드
		IMP.request_pay({
			pg : 'kakaopay.TC0ONETIME', // 결제할 지점 이름(kcp)
			pay_method : 'card', // 결제 방법
			merchant_uid : "IMP" + makeMerchantUid, // 주문번호
			name : '구독(1개월)', // 구매할 상품명
			amount : 100, // 구매할 가격
			buyer_email : email,// 소비자 이메일
			buyer_name : name, // 소비자 이름
			buyer_tel : phoneNum
		// 소비자 전화번호
		}, function(data) {
			if (data.success) {
				alert("결제가 완료되었습니다!");
				console.log("성공!");

				$.ajax({
					type : "POST",
					url : "/ehr/payment/payment_info.do",
					async : true,
					dataType : "json",
					data : {
						"merchantUid" : data.merchant_uid,
						"email" : data.buyer_email,
						"name" : data.name,
						"amount" : data.paid_amount,
						"buyerEmail" : data.buyer_email,
						"buyerName" : data.buyer_name,
						"buyerTel" : data.buyer_tel
					},
					success : function(data) {
						console.log("success data:" + data);
					},
					error : function(data) {
						console.log("error:" + data);
						console.log(data);
					}
				});

				document.location.href = document.referrer;
			} else {
				let msg = data.error_msg;

				alert(msg);
				location.reload(); // 새로고침
			}
		});
	}
</script>
</html>