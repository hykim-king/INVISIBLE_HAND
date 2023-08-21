<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
		String selectedMainCategory = request.getParameter("selectedMainCategory");
		String selectedSubCategory = request.getParameter("selectedSubCategory");
		
		 out.println(selectedMainCategory);
		 out.println(selectedSubCategory);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="image/favicon-32x32.png">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/solution.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
	<title>보이지 않는 손 레이아웃</title>
</head>
<body>
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

						<label for="opt01_1" class="radio">
						  <input type="radio" name="rdo1" id="opt01_1" class="hidden" />
							<span class="label">매우 나쁨</span>
						</label>
						<label for="opt01_2" class="radio">
						  <input type="radio" name="rdo1" id="opt01_2" class="hidden" />
							<span class="label">다소 나쁨</span>
						</label>
						<label for="opt01_3" class="radio">
						  <input type="radio" name="rdo1" id="opt01_3" class="hidden" />
							<span class="label">동일</span>
						</label>
						<label for="opt01_4" class="radio">
						  <input type="radio" name="rdo1" id="opt01_4" class="hidden" />
							<span class="label">다소 좋음</span>
						</label>
					  <label for="opt01_5" class="radio">
						  <input type="radio" name="rdo1" id="opt01_5" class="hidden" />
							<span class="label">매우 좋음</span>
						</label>

					</div>
				</div>

				<div class="que que03">
					<h4>2. 내수 판매상황에대한 지표를 체크해주십시오.</h4>
					<div class="cntr">

						<label for="opt02_1" class="radio">
						  <input type="radio" name="rdo3" id="opt02_1" class="hidden" />
							<span class="label">매우 감소</span>
						</label>
						<label for="opt02_2" class="radio">
						  <input type="radio" name="rdo3" id="opt02_2" class="hidden" />
							<span class="label">다소 감소</span>
						</label>
						<label for="opt02_3" class="radio">
						  <input type="radio" name="rdo3" id="opt02_3" class="hidden" />
							<span class="label">동일</span>
						</label>
						<label for="opt02_4" class="radio">
						  <input type="radio" name="rdo3" id="opt02_4" class="hidden" />
							<span class="label">다소 증가</span>
						</label>
						<label for="opt02_5" class="radio">
						  <input type="radio" name="rdo3" id="opt02_5" class="hidden" />
							<span class="label">매우 증가</span>
						</label>

					</div>
				</div>
				<div class="que que04">
					<h4>3. 수출 판매현황에대한 지표를 체크해주십시오.</h4>
					<div class="cntr">

						<label for="opt03_1" class="radio">
						  <input type="radio" name="rdo4" id="opt03_1" class="hidden" />
							<span class="label">매우 감소</span>
						</label>
						<label for="opt03_2" class="radio">
						  <input type="radio" name="rdo4" id="opt03_2" class="hidden" />
							<span class="label">다소 감소</span>
						</label>
						<label for="opt03_3" class="radio">
						  <input type="radio" name="rdo4" id="opt03_3" class="hidden" />
							<span class="label">동일</span>
						</label>
						<label for="opt03_4" class="radio">
						  <input type="radio" name="rdo4" id="opt03_4" class="hidden" />
							<span class="label">다소 증가</span>
						</label>
						<label for="opt03_5" class="radio">
						  <input type="radio" name="rdo4" id="opt03_5" class="hidden" />
							<span class="label">매우 증가</span>
						</label>

					</div>
				</div>
				<div class="que que05">
					<h4>4. 영업이익(수익성)에대한 지표를 체크해주십시오.</h4>
					<div class="cntr">

						<label for="opt04_1" class="radio">
						  <input type="radio" name="rdo5" id="opt04_1" class="hidden" />
							<span class="label">매우 감소</span>
						</label>
						<label for="opt04_2" class="radio">
						  <input type="radio" name="rdo5" id="opt04_2" class="hidden" />
							<span class="label">다소 감소</span>
						</label>
						<label for="opt04_3" class="radio">
						  <input type="radio" name="rdo5" id="opt04_3" class="hidden" />
							<span class="label">동일</span>
						</label>
						<label for="opt04_4" class="radio">
						  <input type="radio" name="rdo5" id="opt04_4" class="hidden" />
							<span class="label">다소 증가</span>
						</label>
						<label for="opt04_5" class="radio">
						  <input type="radio" name="rdo5" id="opt04_5" class="hidden" />
							<span class="label">매우 증가</span>
						</label>

					</div>
				</div>
				<div class="que que06">
					<h4>5. 자금 사정에대한 지표를 체크해주십시오</h4>
					<div class="cntr">

						<label for="opt05_1" class="radio">
						  <input type="radio" name="rdo6" id="opt05_1" class="hidden" />
							<span class="label">매우 악화</span>
						</label>
						<label for="opt05_2" class="radio">
						  <input type="radio" name="rdo6" id="opt05_2" class="hidden" />
							<span class="label">다소 악화</span>
						</label>
						<label for="opt05_3" class="radio">
						  <input type="radio" name="rdo6" id="opt05_3" class="hidden" />
							<span class="label">동일</span>
						</label>
						<label for="opt05_4" class="radio">
						  <input type="radio" name="rdo6" id="opt05_4" class="hidden" />
							<span class="label">다소 좋음</span>
						</label>
						<label for="opt05_5" class="radio">
				      <input type="radio" name="rdo6" id="opt05_5" class="hidden" />
							<span class="label">매우 좋음</span>
						</label>

					</div>
				</div>

				<div class="que que10">
					<h4>6. 종사자 수에대한 지표를 체크해주십시오.</h4>
					<div class="cntr">

						<label for="opt06_1" class="radio">
						  <input type="radio" name="rdo10" id="opt06_1" class="hidden" />
							<span class="label">매우 부족</span>
						</label>
						<label for="opt06_2" class="radio">
						  <input type="radio" name="rdo10" id="opt06_2" class="hidden" />
							<span class="label">다소 부족</span>
						</label>
						<label for="opt06_3" class="radio">
						  <input type="radio" name="rdo10" id="opt06_3" class="hidden" />
							<span class="label">적정</span>
						</label> 
            <label for="opt06_4" class="radio">
						  <input type="radio" name="rdo10" id="opt06_4" class="hidden" />
							<span class="label">다소 과잉</span>
						</label>
						<label for="opt06_5" class="radio">
						  <input type="radio" name="rdo10" id="opt06_5" class="hidden" />
							<span class="label">매우 과잉</span>
						</label>
					</div>
				</div>
			</div>
			<!--que-wrap End-->


			<h2>2. 기업경영상 애로요인</h2>
			<p>*당원 기준으로 해당 항목을 모두 선택해 주시기 바랍니다.</p>
			<div class="que-wrap">
				<div class="line line01">
					<label for="opt11_1" class="radio">
            <input type="radio" name="rdo11" id="opt11_1" class="hidden" />
            <span class="label">증가</span>
          </label>
          <label for="opt11_2" class="radio">
            <input type="radio" name="rdo11" id="opt11_2" class="hidden" />
            <span class="label">감소</span>
          </label>
          <label for="opt11_3" class="radio">
           <input type="radio" name="rdo11" id="opt11_3" class="hidden" />
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
            <span class="label">01) 인력확보난</span>
          </label>
          <label for="chkBox2" class="radio">
            <input type="checkbox" name="cb02" id="chkBox2" class="hidden" />
            <span class="label">02) 인건비 상승</span>
          </label>
          <label for="chkBox3" class="radio">
            <input type="checkbox" name="cb03" id="chkBox3" class="hidden" />
            <span class="label">03) 물류비상승 및 운송난</span>
          </label>
        </div>
        <div class="line line02">
          <label for="chkBox4" class="radio">
            <input type="checkbox" name="cb04" id="chkBox4" class="hidden" />
            <span class="label">04) 기술경쟁력 약화</span>
          </label>
          <label for="chkBox5" class="radio">
            <input type="checkbox" name="cb05" id="chkBox5" class="hidden" />
            <span class="label">05) 제품(판매)단가 하락</span>
          </label>
          <label for="chkBox6" class="radio">
            <input type="checkbox" name="cb06" id="chkBox6" class="hidden" />
            <span class="label">06) 고금리</span>
          </label>
        </div>
        <div class="line line03">
          <label for="chkBox7" class="radio">
            <input type="checkbox" name="cb07" id="chkBox7" class="hidden" />
            <span class="label">07) 설비노후 및 부족</span>
          </label>
          <label for="chkBox8" class="radio">
            <input type="checkbox" name="cb08" id="chkBox8" class="hidden" />
            <span class="label">08) 계절적 비수기</span>
          </label>
          <label for="chkBox9" class="radio">
            <input type="checkbox" name="cb09" id="chkBox9" class="hidden" />
            <span class="label">09) 환율변동</span>
          </label>
        </div>
        
        <div class="line line04">
          <label for="chkBox10" class="radio">
            <input type="checkbox" name="cb010" id="chkBox10" class="hidden" />
            <span class="label">10) 내수부진</span>
          </label>
          <label for="chkBox11" class="radio">
            <input type="checkbox" name="cb011" id="chkBox11" class="hidden" />
            <span class="label">11) 수출부진</span>
          </label>
          <label for="chkBox12" class="radio">
            <input type="checkbox" name="cb012" id="chkBox12" class="hidden" />
            <span class="label">12) 판매대금 회수 지연</span>
          </label>
        </div>
        
        <div class="line line05">
          <label for="chkBox13" class="radio">
           <input type="checkbox" name="cb013" id="chkBox13" class="hidden" />
           <span class="label">13) 자금조달 곤란</span>
          </label>
          <label for="chkBox14" class="radio">
            <input type="checkbox" name="cb014" id="chkBox14" class="hidden" />
            <span class="label">14) 업체간 과당경쟁</span>
          </label>
          <label for="chkBox15" class="radio">
            <input type="checkbox" name="cb015" id="chkBox15" class="hidden" />
            <span class="label">15) 원자재(원재료) 가격 상승</span>
          </label>
        </div>
        
        <div class="line line06">
          <label for="chkBox16" class="radio">
            <input type="checkbox" name="cb016" id="chkBox16" class="hidden" />
            <span class="label">16) 원자재(원재료) 구득난</span>
          </label>
          <label for="chkBox17" class="radio">
            <input type="checkbox" name="cb017" id="chkBox17" class="hidden" />
            <span class="label">17) 모기업(대기업) 불공정거래</span>
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
  let radioArr = []; // 라디오값 배열
  let checkArr = []; // 체크박스 배열

  $(".go-result").on("click", function() {
    // 예외 처리 실행 시마다 배열 초기화
    radioArr = [];
    checkArr = [];

    $("input[type='radio']:checked").each(function(index) {
      if ($("input[type='radio']:checked").length - 1 !== index) {
        radioArr.push($(this).next().text());
      }
    });

    let isRadioValid = true; // 라디오 버튼 값 유효성 여부 기록하는 변수

    $("input[type='radio']").each(function() {
      let radioVals = $(this).parents(".radio").find("label").eq(0).text().trim();
      let isChecked = $("input[name='" + $(this).attr("name") + "']:checked").length > 0;
      if(!isChecked && !radioArr.includes(radioVals + " 입력 안함")) {
        alert("모두 입력해주세요.");
        isRadioValid = false;
        return false; // each 함수 탈출
      }
    });

    if (!isRadioValid) return; // 함수 실행 중지

    if ($("input[type='checkbox']:checked").length === 0) {
		  alert("기업경영상 애로요인을 1가지 이상 입력해주세요.");
		  return;
		}
    
    $("input[type='checkbox']:checked").each(function() {
      checkArr.push($(this).next().text());
    });

    console.log(radioArr);
    console.log(checkArr);
  });
  
  
  //변수 저장
  let selectedMainCategory = '<%= selectedMainCategory %>';
  let selectedSubCategory = '<%= selectedSubCategory %>';
  console.log(selectedMainCategory);
  console.log(selecedSubcategory);
		  
  function doUpdateScore(selectedMainCategory, selectedSubCategory) {   
	    $.ajax({
	        url: '/ehr/solution/doUpdateScore.do', 
	        type: 'POST',
	        data: {
	            mainCategory: selectedMainCategory,
	            subCategory: selectedSubCategory
	        },
	        dataType: 'json',
	        success: function(response) {            
	            console.log(response);           
	            
	            if (response.message) {
	                alert(response.message); 
	            }

	        },
	        error: function(error) {
	            console.error("에러 발생");
	            console.error(error);
	        }
	     }); 
	}
  
  
});

</script>
	</body>
</html>