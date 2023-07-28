<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>kakaopay</title>
<meta charset="utf-8">
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<link rel="stylesheet" type="text/css" href="https://t1.daumcdn.net/kakaopay/tesla/20210419/common.min.css">
<script src="//t1.daumcdn.net/kakaopay/tesla/20180108/pg_web/js/lib/jquery.min.js"></script>
<script>
	var tiaraConfig = {
		svcDomain : 'talk.kakaopay.m.app',
		section : 'online',
		tid : "T4c3243276b90283f0fd",
		aid : null
	}
</script>
<script src="//t1.daumcdn.net/kakaopay/tesla/20200920/js/tiara/order-tiara-tracker.js"></script>
<script src="//t1.daumcdn.net/kakaopay/tesla/sentry/5.3.0/bundle.min.js" crossorigin="anonymous"></script>
<script>
	if (null) {
		Sentry.init({
			dsn : null
		});
	}
</script>
<script>
	var userInfo = userInfo || {};
	userInfo.val = {};
	userInfo.val.hash = "eafe53f5c2c351fc12561aa275ea3c7747760c52337bddce73651385f86595b7";
	userInfo.val.failUrl = "https://developers.kakao.com/demo/pay/fail";
	userInfo.val.remainingSec = 899;
	userInfo.val.cancelUrl = "https://developers.kakao.com/demo/pay/cancel";
	userInfo.val.isCancelPost = false;
	userInfo.val.isFailPost = false;
	userInfo.val.isApprovalPost = false;
	userInfo.val.qrUrl = "https://online-pay.kakao.com/mockup/v1/eafe53f5c2c351fc12561aa275ea3c7747760c52337bddce73651385f86595b70/bridge";
	userInfo.val.isIssuedSubscriptionOrder = false;
	userInfo.val.isIssued = false;
	userInfo.val.isMockup = true;
	userInfo.val.isPackage = false;
	userInfo.val.isOneTime = true;
	userInfo.val.payMode = "PAY";
</script>
<script type="text/javascript"
	src="//t1.daumcdn.net/kakaopay/tesla/20230331/js/v2/common_payment.js"></script>
<script type="text/javascript" src="//t1.daumcdn.net/kakaopay/tesla/20180702/jquery-qrcode-0.14.0.js"></script>
<script type="text/javascript" src="//t1.daumcdn.net/kakaopay/tesla/20230331/js/v2/user_info.js"></script>
<link rel="stylesheet" href="https://t1.daumcdn.net/kakaopay/tesla/20211007/css/reset.min.css" />
<link rel="stylesheet" href="https://t1.daumcdn.net/kakaopay/tesla/20211007/css/swiper-4.5.1.min.css" />
<link rel="stylesheet" href="https://t1.daumcdn.net/kakaopay/tesla/20211007/css/index.min.css" />
</head>
<body>

	<div id="payPopupDiv" class="pay_popup hide">
		<div class="inner_terms_layer">
			<div class="layer_head">
				<strong class="tit_terms">제목</strong>
			</div>
			<div class="layer_body">
				<div class="desc_terms">내용</div>
			</div>
			<div class="layer_foot">
				<button type="button" class="btn_terms">확인</button>
			</div>
		</div>
	</div>

	<div id="payAlertDiv" class="hide">
		<div class="agree_layer">
			<div class="inner_agree_layer inner_agree_layer2">
				<div class="layer_body">
					<div class="desc_agree"></div>
				</div>
				<div class="layer_foot">
					<button id="alertOkButton" class="btn_layer">확인</button>
				</div>
			</div>
		</div>
	</div>

	<div id="payConfirmDiv" class="hide">
		<div class="agree_layer">
			<div class="inner_agree_layer inner_agree_layer2">
				<div class="layer_body">
					<strong class="desc_agree">카카오페이 결제를 중단하시겠습니까?</strong>
				</div>
				<div class="layer_foot">
					<button id="confirmCancelButton" class="btn_layer2">취소</button>
					<button id="confirmOkButton" class="btn_layer2">확인</button>
				</div>
			</div>
		</div>
	</div>

	<script>
	<!-- /* ---------------------------------- 곧 제거 될 것 임 ------------------------------------------ */ -->
		function closeTalkPgWebview() {

			window.location = "app://kakaopay/close";
		}

		function payPopup(title, msg) {
			var payPopupDiv = $("#payPopupDiv");
			payPopupDiv.removeClass("hide");
			$("body").addClass("layer_on");
			$(".tit_terms", payPopupDiv).html(title);
			$(".desc_terms", payPopupDiv).html(msg);

			$(".btn_terms", payPopupDiv).click(function() {
				$("body").removeClass("layer_on");
				payPopupDiv.addClass("hide");
			});
		}

		function payAlert(msg, onOk, css) {
			$("#payAlertDiv").removeClass("hide");
			$("body").addClass("layer_on");
			$(".desc_agree").html(msg);
			$("#alertOkButton").click(function() {
				$("body").removeClass("layer_on");
				$("#payAlertDiv").addClass("hide");
				if (onOk) {
					onOk();
				}
			});
			if (css) {
				for ( var key in css) {
					$("#payAlertDiv .agree_layer").css(key, css[key]);
				}
			}

		}

		function payConfirm(msg, onOk, onCancel) {
			$("#payConfirmDiv").removeClass("hide");
			$("body").addClass("layer_on");
			$(".desc_agree").html(msg);

			hide = function() {
				$("body").removeClass("layer_on");
				$("#payConfirmDiv").addClass("hide");
			};

			$("#confirmOkButton").click(function() {
				hide();
				onOk();
			});
			$("#confirmCancelButton").click(function() {
				hide();
				if (onCancel) {
					onCancel();
				}
			});
		}
		<!-- /* ---------------------------------- 곧 제거 될 것 임 ------------------------------------------ */
		-->

		(function() {
			function closeTalkPgWebview() {

				window.location = "app://kakaopay/close";
			}

			function payPopup(title, msg) {
				var payPopupDiv = $("#payPopupDiv");
				payPopupDiv.removeClass("hide");
				$("body").addClass("layer_on");
				$(".tit_terms", payPopupDiv).html(title);
				$(".desc_terms", payPopupDiv).html(msg);

				$(".btn_terms", payPopupDiv).click(function() {
					$("body").removeClass("layer_on");
					payPopupDiv.addClass("hide");
				});
			}

			function payAlert(msg, onOk) {
				$("#payAlertDiv").removeClass("hide");
				$("body").addClass("layer_on");
				$(".desc_agree").html(msg);
				$("#alertOkButton").click(function() {
					$("body").removeClass("layer_on");
					$("#payAlertDiv").addClass("hide");
					if (onOk) {
						onOk();
					}
				});
			}

			function payConfirm(msg, onOk, onCancel) {
				$("#payConfirmDiv").removeClass("hide");
				$("body").addClass("layer_on");
				$(".desc_agree").html(msg);

				hide = function() {
					$("body").removeClass("layer_on");
					$("#payConfirmDiv").addClass("hide");
				};

				//FIXME unbind를 안해주니, click 이벤트 셋팅할떄마다 이벤트가 add되서 add된 횟수만큼 반복 발생 되더라!!!! 이거 딴데는 문제 없었을까?? 체크 필요
				$("#confirmOkButton").unbind("click");
				$("#confirmCancelButton").unbind("click");

				$("#confirmOkButton").click(function() {
					hide();
					onOk();
				});
				$("#confirmCancelButton").click(function() {
					hide();
					if (onCancel) {
						onCancel();
					}
				});
			}

			window.teslaBaseCommon = {
				closeTalkPgWebview : closeTalkPgWebview,
				payPopup : payPopup,
				payAlert : payAlert,
				payConfirm : payConfirm
			};

		})();
	</script>

	<div class="card-box">
		<h1 class="logo-kakaopay">
			<span class="blind">카카오페이</span>
		</h1>
		<button class="button-close btn_close" aria-label="카카오페이 결제화면 닫기"></button>

		<div class="paper-box">
			<div class="menu-box">
				<!-- swiper js 에서 menu-box 안에 페이지네비게이션 메뉴 생성합니다 -->
			</div>
			<div class="swiper-container payment-box">
				<div class="swiper-wrapper">
					<div class="swiper-slide payment">
						<h2 class="blind">QR결제</h2>
						<h3 class="payment-title">
							휴대폰으로 스캔하면<br />결제 화면으로 이동합니다.
						</h3>
						<p class="payment-text">스마트폰 카메라 및 모든 QR스캐너로 가능</p>
						<div class="qr-box">
							<div id="img_qr" class="qr">
								<img alt="QR코드" class="qr-image" />
							</div>
						</div>
					</div>
					<div class="swiper-slide payment">
						<h2 class="blind">카톡결제</h2>
						<h3 class="payment-title">
							결제요청 메시지를 카카오톡으로<br />보내기 위해 입력해주세요.
						</h3>
						<form class="form" id="userPost" method="post"
							action="/mockup/v1/eafe53f5c2c351fc12561aa275ea3c7747760c52337bddce73651385f86595b7/uinfo">
							<fieldset>
								<legend class="blind">결제 정보 입력</legend>
								<ul>
									<li class="input-box"><label> <!-- 인풋창 포커스, 인풋창에 값이 입력되면 placeholder-shown 클래스 제거 -->
											<input id="userPhone" placeholder="-없이 입력"
											class="input placeholder-shown" title="휴대폰 번호를 -없이 입력해주세요" />
											<span class="input-title">휴대폰 번호</span> <span
											class="error-text"></span>
									</label></li>
									<li class="input-box"><label> <input
											id="userBirth" placeholder="예) 930616"
											class="input placeholder-shown" title="생년월일을 입력해주세요" /> <span
											class="input-title">생년월일</span> <span class="error-text"></span>
									</label></li>
								</ul>
								<button class="button-request btn_payask" disabled>결제요청</button>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
		<form id="actionPost" action="approval" method="post"></form>

		<!-- swiper 4.5.1 까지만 IE9 까지 대응합니다. -->
		<!-- swiperjs api : https://swiperjs.com/swiper-api#methods-and-properties -->
		<script
			src="https://t1.daumcdn.net/kakaopay/tesla/20210722/js/swiper-4.5.1.min.js"></script>
		<script>
			window.onload = function() {
				/** 1. 스와이퍼 UI 스크립트 */
				var swiper = new Swiper(
						".payment-box",
						{
							allowTouchMove : false,
							pagination : {
								el : ".menu-box",
								clickable : true,
								renderBullet : function(index, className) {
									console.log(userInfo.val.isIssued);

									if (userInfo.val.isIssued) {
										return index === 0 ? '<button class="' + className + ' button-menu qr">QR등록</button>'
												: '<button class="' + className + ' button-menu kakaotalk">카톡등록</button>';
									}

									return index === 0 ? '<button class="' + className + ' button-menu qr">QR결제</button>'
											: '<button class="' + className + ' button-menu kakaotalk">카톡결제</button>';
								},
							},
						});

				/** 2. input 모션관련 클래스명 제어 (UI 확인용 스크립트) */
				var inputTags = document.querySelectorAll(".input");
				var buttonRequest = document.querySelector(".button-request");

				/**
				 * 숫자인지 아닌지 반환
				 * @param {string} value
				 * @returns boolean
				 */
				var isAllNumber = function(value) {
					var reg = /^[0-9]+$/;
					return reg.test(value);
				};

				/**
				 * 에러메세지에 문구 넣기
				 * @param {error-message element} target
				 * @param {string} message
				 */
				var setErrorMessage = function(targetErrorElement, message) {
					targetErrorElement.innerHTML = message;
				};

				/**
				 * placeholder 보여주기
				 * @param {input element} targetInput
				 * @param {boolean} show
				 */
				var setPlaceholderShown = function(targetInputElement, show) {
					if (show) {
						targetInputElement.classList.add("placeholder-shown");
					} else {
						targetInputElement.classList
								.remove("placeholder-shown");
					}
				};

				/** 흰박스 숨기기 */
				var foldPaperBox = function() {
					document.querySelector(".paper-box").classList
							.add("is-folded");
					setTimeout(function() {
						document.querySelector(".is-folded").classList
								.add("is-hidden");
					}, 1000); // 0.1초 후 hidden 시켜주세요 (이후 키보드 등의 접근 방지)
				};

				/** 완료화면 보이기 */
				var showStepBox = function() {
					document.querySelector(".step-box").classList
							.add("is-visible");
				};

				/** 이벤트핸들러 : focus in */
				var handlerFocusIn = function(e) {
					if (e.target === document.activeElement) {
						setPlaceholderShown(e.target, false);
					}
				};

				/** 이벤트핸들러 : focus out */
				var handlerFocusOut = function(e) {
					if (!e.target.value) {
						setPlaceholderShown(e.target, true);
					}
				};

				/** 이벤트핸들러 : change */
				var handlerChangeInputValue = function(e) {
					/** 모든값이 true 인지 확인 */
					var isValid = false;

					/** 입력값이 숫자가 아닐때 에러메세지 표시 */
					for (var i = 0; i < inputTags.length; i++) {
						if (inputTags[i].value.length !== 0
								&& isAllNumber(inputTags[i].value)) {
							isValid = true;
							setErrorMessage(inputTags[i].parentNode
									.querySelector(".error-text"), "");
						} else if (inputTags[i].value.length !== 0
								&& !isAllNumber(inputTags[i].value)) {
							isValid = false;
							setErrorMessage(inputTags[i].parentNode
									.querySelector(".error-text"), "숫자만 입력");
						} else {
							isValid = false;
							setErrorMessage(inputTags[i].parentNode
									.querySelector(".error-text"), "");
						}
					}

					/** 버튼 활성화, 아니면 비활성화 */
					/*          if (isValid) {
					 document.querySelector(".button-request").disabled = false;
					 } else {
					 document.querySelector(".button-request").disabled = true;
					 }*/
				};

				/** 이벤트 리스너 추가 */
				for (var i = 0; i < inputTags.length; i++) {
					inputTags[i].addEventListener("focusin", handlerFocusIn);
					inputTags[i].addEventListener("focusout", handlerFocusOut);
					inputTags[i].addEventListener("keyup",
							handlerChangeInputValue);
				}
				/*
				buttonRequest.addEventListener("click", function (e) {
				  alert("결제요청 클릭");
				  foldPaperBox();
				  showStepBox();
				  e.preventDefault();
				});*/

				function isIE() {
					return window.navigator.userAgent
							.match(/MSIE|Internet Explorer|Trident/i)
				}

				//function to show alert if it's IE
				function showIEAlert() {
					if (isIE()) {
						var isIeEnd = true;
						var extraCss = {
							'width' : '600px',
							'top' : '40%',
							'left' : '40%'
						};
						if (isIeEnd) {
							$("div[class='card-box']").remove();
							payAlert(
									'<h3 style="font-weight: 700;">Internet Explorer 11 지원 종료 안내</h3><br/><br/>'
											+ 'Microsoft사의 정책변경으로 Internet Explorer11(이하IE11) 브라우저의 지원이<br/>'
											+ '<b style="font-weight: 700;">2022년 6월 15일자</b>로 종료되었습니다.<br/><br/>'
											+ '해당 팝업을 닫으실 경우 브라우저가 종료될 예정이오니,<br/>'
											+ 'Chrome 등 다른 브라우저를 이용해주세요.<br/>',
									function() {
										window.close();
									}, extraCss);
						} else {
							payAlert(
									'<h3 style="font-weight: 700;">Internet Explorer 11 지원 종료 안내</h3><br/><br/>'
											+ 'Microsoft 사의 정책 변경으로 Internet Explorer11(이하 IE 11)<br/>'
											+ '브라우저의 지원이 <b style="font-weight: 700;">2022년 6월 15일자</b>로 종료될 예정입니다.<br/><br/>'
											+ '종료일 이후 IE 11으로 접속 시 결제가 불가하오니 Chrome 등 <br/>다른 브라우저를 이용해주세요.',
									false, extraCss);
						}
					}
				}

				showIEAlert();

			};
		</script>
	</div>

</body>
</html>