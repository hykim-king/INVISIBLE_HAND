<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<link rel="icon" href="image/favicon-32x32.png">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/solution.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<script src="../resources/js/jquery-3.7.0.js"></script>
<div class="h60px"></div>
<div class="container-1400">
	<div class="wrap-1000">
		<form action="/solution/solution_Q_01" method="post" class="form cf">
			<h2>1. 월간 경기동향 실적</h2>
			<p>*전월 대비 실적 전망에 해당하는 번호를 선택 바랍니다.</p>
			<div class="que-wrap">
			
				<div class="que que01">
					<h4>1. 귀사만의 경기전반에 대해 체크해주십시오.</h4>
					<div class="cntr">

						<label for="opt1" class="radio">
						  <input type="radio" name="rdo1" id="opt1" class="hidden" />
						  <span class="label">매우 나쁨</span>
						</label>
						<label for="opt2" class="radio">
						  <input type="radio" name="rdo1" id="opt2" class="hidden" />
							<span class="label">다소나쁨</span>
						</label>
						<label for="opt3" class="radio">
						  <input type="radio" name="rdo1" id="opt3" class="hidden" />
						  <span class="label">동일</span>
						</label>
						<label for="opt4" class="radio">
						  <input type="radio" name="rdo1" id="opt4" class="hidden" />
							<span class="label">다소 좋음</span>
						</label>
						<label for="opt5" class="radio">
						  <input type="radio" name="rdo1" id="opt5" class="hidden" />
							<span class="label">매우 좋음</span>
						</label>

					</div>
				</div>
				
				<div class="que que02">
					<h4>2. 생산수준에대한 지표를 체크해주십시오.</h4>
					<div class="cntr">
					
						<label for="opt1" class="radio">
							<input type="radio" name="rdo2" id="opt1" class="hidden" />
							<span class="label">매우 감소</span>
						</label> 
						<label for="opt2" class="radio">
						  <input type="radio" name="rdo2" id="opt2" class="hidden" />
							<span class="label">다소 감소</span>
						</label>
						<label for="opt3" class="radio">
						  <input type="radio" name="rdo2" id="opt3" class="hidden" />
							<span class="label">동일</span>
						</label>
						<label for="opt4" class="radio">
						  <input type="radio" name="rdo2" id="opt4" class="hidden" />
							<span class="label">다소 증가</span>
						</label>
						<label for="opt5" class="radio">
					    <input type="radio" name="rdo2" id="opt5" class="hidden" />
					    <span class="label">매우 증가</span>
					  </label>

					</div>
				</div>
				<div class="que que03">
					<h4>3. 내수 판매상황에대한 지표를 체크해주십시오.</h4>
					<div class="cntr">

						<label for="opt1" class="radio">
						  <input type="radio" name="rdo3" id="opt1" class="hidden" />
							<span class="label">매우 감소</span>
						</label>
						<label for="opt2" class="radio">
						  <input type="radio" name="rdo3" id="opt2" class="hidden" />
							<span class="label">다소 감소</span>
						</label>
						<label for="opt3" class="radio">
						  <input type="radio" name="rdo3" id="opt3" class="hidden" />
							<span class="label">동일</span>
						</label>
						<label for="opt4" class="radio">
						  <input type="radio" name="rdo3" id="opt4" class="hidden" />
						  <span class="label">다소 증가</span>
						</label>
						<label for="opt5" class="radio">
						  <input type="radio" name="rdo3" id="opt5" class="hidden" />
							<span class="label">매우 증가</span>
						</label>

					</div>
				</div>
				<div class="que que04">
					<h4>4. 수출 판매현황에대한 지표를 체크해주십시오.</h4>
					<div class="cntr">

						<label for="opt1" class="radio">
						  <input type="radio" name="rdo4" id="opt1" class="hidden" />
							<span class="label">매우 감소</span>
						</label>
						<label for="opt2" class="radio">
						  <input type="radio" name="rdo4" id="opt2" class="hidden" />
							<span class="label">다소 감소</span>
						</label>
						<label for="opt3" class="radio">
						  <input type="radio" name="rdo4" id="opt3" class="hidden" />
							<span class="label">동일</span>
						</label>
						<label for="opt4" class="radio">
						  <input type="radio" name="rdo4" id="opt4" class="hidden" />
							<span class="label">다소 증가</span>
						</label>
						<label for="opt5" class="radio">
						  <input type="radio" name="rdo4" id="opt5" class="hidden" />
							<span class="label">매우 증가</span>
						</label>

					</div>
				</div>
				<div class="que que05">
					<h4>5. 영업이익(수익성)에대한 지표를 체크해주십시오.</h4>
					<div class="cntr">

						<label for="opt1" class="radio">
						  <input type="radio" name="rdo5" id="opt1" class="hidden" />
							<span class="label">매우 감소</span>
						</label>
						<label for="opt2" class="radio">
						  <input type="radio" name="rdo5" id="opt2" class="hidden" />
							<span class="label">다소 감소</span>
						</label>
						<label for="opt3" class="radio">
						  <input type="radio" name="rdo5" id="opt3" class="hidden" />
							<span class="label">동일</span>
						</label>
						<label for="opt4" class="radio">
						  <input type="radio" name="rdo5" id="opt4" class="hidden" />
							<span class="label">다소 증가</span>
						</label>
						<label for="opt5" class="radio">
						  <input type="radio" name="rdo5" id="opt5" class="hidden" />
							<span class="label">매우 증가</span>
						</label>

					</div>
				</div>
				<div class="que que06">
					<h4>6. 자금 사정에대한 지표를 체크해주십시오</h4>
					<div class="cntr">

						<label for="opt1" class="radio">
						  <input type="radio" name="rdo6" id="opt1" class="hidden" />
							<span class="label">매우 악화</span>
						</label>
						<label for="opt2" class="radio">
						  <input type="radio" name="rdo6" id="opt2" class="hidden" />
							<span class="label">다소 악화</span>
						</label>
						<label for="opt3" class="radio">
							<input type="radio" name="rdo6" id="opt3" class="hidden" />
							<span class="label">동일</span>
						</label>
						<label for="opt4" class="radio">
						  <input type="radio" name="rdo6" id="opt4" class="hidden" />
							<span class="label">다소 좋음</span>
						</label>
						<label for="opt5" class="radio">
						  <input type="radio" name="rdo6" id="opt5" class="hidden" />
							<span class="label">매우 좋음</span>
						</label>

					</div>
				</div>
			</div>
			<!--que-wrap End-->


			<h2>2. 생산설비, 제품재고, 종사자수 수준</h2>
			<p>*시장수요 등을 감안하여 다음달 보유예정인 생산설비, 제품제고, 종사자수의 적정 수준을 판단하여 해당하는 번호를
				선택 바랍니다.</p>
			<div class="que-wrap">
				<div class="que que07">
					<h4>7. 원자재 조달사정에대한 지표를 체크해주십시오</h4>
					<div class="cntr">

						<label for="opt1" class="radio">
						  <input type="radio" name="rdo7" id="opt1" class="hidden" />
							<span class="label">매우 곤란</span>
						</label>
						<label for="opt2" class="radio">
						  <input type="radio" name="rdo7" id="opt2" class="hidden" />
							<span class="label">다소 곤란</span>
						</label>
						<label for="opt3" class="radio">
						  <input type="radio" name="rdo7" id="opt3" class="hidden" />
							<span class="label">동일</span>
						</label>
						<label for="opt4" class="radio">
						  <input type="radio" name="rdo7" id="opt4" class="hidden" />
							<span class="label">다소 원활</span>
						</label>
						<label for="opt5" class="radio">
						  <input type="radio" name="rdo7" id="opt5" class="hidden" />
							<span class="label">매우 원활</span>
						</label>
					</div>
				</div>
				<div class="que que08">
					<h4>8. 생산 설비수준에대한 지표를 체크해주십시오</h4>
					<div class="cntr">

						<label for="opt1" class="radio">
						  <input type="radio" name="rdo8" id="opt1" class="hidden" />
							<span class="label">매우 부족</span>
						</label>
						<label for="opt2" class="radio">
						  <input type="radio" name="rdo8" id="opt2" class="hidden" />
							<span class="label">다소 부족</span>
						</label>
						<label for="opt3" class="radio">
						  <input type="radio" name="rdo8" id="opt3" class="hidden" />
							<span class="label">적정</span>
						</label>
						<label for="opt4" class="radio">
						  <input type="radio" name="rdo8" id="opt4" class="hidden" />
							<span class="label">다소 과잉</span>
						</label>
					  <label for="opt5" class="radio">
						  <input type="radio" name="rdo8" id="opt5" class="hidden" />
							<span class="label">매우 과잉</span>
						</label>

					</div>
				</div>
				<div class="que que09">
					<h4>9. 제품 재고수준에대한 지표를 체크해주십시오.</h4>
					<div class="cntr">

						<label for="opt1" class="radio">
						  <input type="radio" name="rdo9" id="opt1" class="hidden" />
							<span class="label">매우 부족</span>
						</label>
						<label for="opt2" class="radio"> 
						  <input type="radio" name="rdo9" id="opt2" class="hidden" />
						  <span class="label">다소 부족</span>
						</label>
						<label for="opt3" class="radio">
						  <input type="radio" name="rdo9" id="opt3" class="hidden" />
							<span class="label">적정</span>
						</label>
						<label for="opt4" class="radio">
						  <input type="radio" name="rdo9" id="opt4" class="hidden" />
							<span class="label">다소 과잉</span>
						</label>
						<label for="opt5" class="radio">
						  <input type="radio" name="rdo9" id="opt5" class="hidden" />
							<span class="label">매우 과잉</span>
						</label>

					</div>
				</div>
				<div class="que que10">
					<h4>10. 종사자 수에대한 지표를 체크해주십시오.</h4>
					<div class="cntr">

						<label for="opt1" class="radio">
						  <input type="radio" name="rdo10" id="opt1" class="hidden" />
							<span class="label">매우 부족</span>
						</label>
						<label for="opt2" class="radio">
						  <input type="radio" name="rdo10" id="opt2" class="hidden" />
							<span class="label">다소 부족</span>
						</label>
						<label for="opt3" class="radio">
						  <input type="radio" name="rdo10" id="opt3" class="hidden" />
							<span class="label">적정</span>
						</label>
						<label for="opt" class="radio">
						  <input type="radio" name="rdo10" id="opt4" class="hidden" />
							<span class="label">다소 과잉</span>
						</label>
						<label for="opt5" class="radio">
						  <input type="radio" name="rdo10" id="opt5" class="hidden" />
							<span class="label">매우 과잉</span>
						</label>
					</div>
				</div>
			</div>
			<!--que-wrap End-->

			<h2>3. 생산설비 가동률</h2>
			<p>*시장수요 등을 감안하여 다음달 보유예정인 생산설비, 제품제고, 종사자수의 적정 수준을 판단하여 해당하는 번호를
				선택 바랍니다.</p>
			<p>*생상설비 추가설치 또는 철거 등 이번 달 생산 능력에 변동이 있을 경우 증가 또는 감소에 체크해주십시오</p>
			<div class="que-wrap que-wrqp-flex">
				<div class="que-box">
					<h4>지난달 가동률</h4>
					<input type="text" name="percent" id="percent" class="percent numberOnly" placeholder="0~100" />%
				</div>
				<div class="que-box">
					<h4>이번달 가동률</h4>
					<input type="text" name="percent" id="percent" class="percent numberOnly" placeholder="0~100" />%
				</div>
				<div class="que-box">
					<h4>이번달 생산능력</h4>
					<label for="opt1" class="radio">
            <input type="radio" name="rdo11" id="opt1" class="hidden" />
						<span class="label">증가</span>
					</label>
					<label for="opt2" class="radio">
            <input type="radio" name="rdo11" id="opt2" class="hidden" />
						<span class="label">감소</span>
					</label>
					<label for="opt3" class="radio">
					 <input type="radio" name="rdo11" id="opt3" class="hidden" />
					 <span class="label">동일</span>
					</label>
				</div>
			</div>
			<!--que-wrap End-->

			<h2>4. 기업경영상 애로요인</h2>
			<p>*당원 기준으로 해당 항목을 모두 선택해 주시기 바랍니다.</p>
			<div class="que-wrap">
				<div class="line line01">
					<label for="chkBox1" class="radio">
						<input type="checkbox" name="cb01" id="chkBox1" class="hidden" />
						01) <span class="label">인력확보난</span>
					</label>
					<label for="chkBox2" class="radio">
            <input type="checkbox" name="cb02" id="chkBox2" class="hidden" />
						02) <span class="label">인건비 상승</span>
					</label>
					<label for="chkBox3" class="radio">
            <input type="checkbox" name="cb03" id="chkBox3" class="hidden" />
						03) <span class="label">물류비상승 및 운송난</span>
					</label>
				</div>
				<div class="line line02">
					<label for="chkBox4" class="radio">
            <input type="checkbox" name="cb04" id="chkBox4" class="hidden" />
						04) <span class="label">기술경쟁력 약화</span>
					</label>
					<label for="chkBox5" class="radio">
            <input type="checkbox" name="cb05" id="chkBox5" class="hidden" />
						05) <span class="label">제품(판매)단가 하락</span>
					</label>
					<label for="chkBox6" class="radio">
            <input type="checkbox" name="cb06" id="chkBox6" class="hidden" />
						06) <span class="label">고금리</span>
					</label>
				</div>
				<div class="line line03">
					<label for="chkBox7" class="radio">
            <input type="checkbox" name="cb07" id="chkBox7" class="hidden" />
						07) <span class="label">설비노후 및 부족</span>
					</label>
					<label for="chkBox8" class="radio">
            <input type="checkbox" name="cb08" id="chkBox8" class="hidden" />
						08) <span class="label">계절적 비수기</span>
					</label>
					<label for="chkBox9" class="radio">
            <input type="checkbox" name="cb09" id="chkBox9" class="hidden" />
						09) <span class="label">환율변동</span>
					</label>
				</div>
				
				<div class="line line04">
					<label for="chkBox10" class="radio">
					  <input type="checkbox" name="cb010" id="chkBox10" class="hidden" />
					  10) <span class="label">내수부진</span>
					</label>
					<label for="chkBox11" class="radio">
					  <input type="checkbox" name="cb011" id="chkBox11" class="hidden" />
					  11) <span class="label">수출부진</span>
					</label>
					<label for="chkBox12" class="radio">
						<input type="checkbox" name="cb012" id="chkBox12" class="hidden" />
						12) <span class="label">판매대금 회수 지연</span>
					</label>
				</div>
				
				<div class="line line05">
					<label for="chkBox13" class="radio">
					 <input type="checkbox" name="cb013" id="chkBox13" class="hidden" />
					 13) <span class="label">자금조달 곤란</span>
					</label>
					<label for="chkBox14" class="radio">
					  <input type="checkbox" name="cb014" id="chkBox14" class="hidden" />
					  14) <span class="label">업체간 과당경쟁</span>
					</label>
					<label for="chkBox15" class="radio">
						<input type="checkbox" name="cb015" id="chkBox15" class="hidden" />
						15) <span class="label">원자재 가격 상승</span>
					</label>
				</div>
				
				<div class="line line06">
					<label for="chkBox16" class="radio radio16">
						<input type="checkbox" name="cb016" id="chkBox16" class="hidden" />
						16) <span class="label">원자재(원재료) 구득난</span>
					</label>
					<label for="chkBox17" class="radio">
					  <input type="checkbox" name="cb017" id="chkBox17" class="hidden" />
					  17) <span class="label">모기업 불공정거래</span>
					</label>
				</div>
				
			</div>
			<!--que-wrap End-->
			<div class="submit">
				<input type="button" value="제출하기" class="go-result">
			</div>

		</form>
	</div>
	<!-- **---wrap End---** -->
</div>
<!-- **---container End---** -->
<script>

$(document).ready(function() {
	
	// 숫자 작성만 허용
	$(".numberOnly").on("keyup", function(e) {
	  $(this).val($(this).val().replace(/[^0-9]/g, ""));
	});
	
	// 제출 버튼 클릭 동작
	$(".go-result").on("click", function() {
		let Q1_1 = $("input[name=rdo1]:checked").next().text();
		let Q1_2 = $("input[name=rdo2]:checked").next().text();
		let Q1_3 = $("input[name=rdo3]:checked").next().text();
		let Q1_4 = $("input[name=rdo4]:checked").next().text();
		let Q1_5 = $("input[name=rdo5]:checked").next().text();
		let Q3_1 = $("input[name=cb01]:checked").next().text();
		let Q3_2 = $("input[name=cb02]:checked").next().text();
		let Q3_3 = $("input[name=cb03]:checked").next().text();
		let Q3_4 = $("input[name=cb04]:checked").next().text();
		
		alert(Q3_1 + ", " + Q3_2 + ", " + Q3_3 + ", " + Q3_4);
	});
});
</script>