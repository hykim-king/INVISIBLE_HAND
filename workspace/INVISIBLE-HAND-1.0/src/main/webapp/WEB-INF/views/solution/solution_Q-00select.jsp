<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="image/favicon-32x32.png">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/solution.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<title>보이지 않는 손 레이아웃</title>

</head>
<body>
  <div class="h60px" style="height: 80px;"></div>
  <div class="container-1400 Q_00">
    <div class="pop-que">
       <h5>
                        귀사의 업체 종목을  선택해 주십시오.
       </h5>
            <div class="btn">
              <form id="categoryForm" action="" method = "POST" >
             <select id="mainCategorySelect" name="mainCategory" class="form-select">
                <option value="비제조업" selected="selected">비제조업</option>
                <option value="제조업" >제조업</option>
	           </select>
	           <select id="subCategorySelect" name="subCategory" class="form-select">
	           </select>
	           <!-- Hidden Form Fields -->
                <input type="hidden" id="selectedMainCategory" name="selectedMainCategory" value="비제조업">
                <input type="hidden" id="selectedSubCategory" name="selectedSubCategory" value="-">
               <button id="sendTypeButton">선택완료</button> 
						</form>      
            </div>           
        </div>
	</div>
<!-- **---container End---** -->
	
<script src="../resources/js/jquery-3.7.0.js"></script>
<script>
$(document).ready(function() {
    $("#sendTypeButton").click(function () {
        let selectedMainCategory = $("#mainCategorySelect").val();
        let selectedSubCategory = $("#subCategorySelect").val();
        
        // 선택된 mainCategory 값에 따라 form의 action 속성 변경
        if (selectedSubCategory === "-"){
        	alert("서브카테고리를 선택하세요");
        } else if (selectedMainCategory === "비제조업") {
            $("#categoryForm").attr("action", "${CP}/solution/solution_Q-02noproduct.do");
        } else if (selectedMainCategory === "제조업") {
            $("#categoryForm").attr("action", "${CP}/solution/solution_Q-01product.do");
        } else {
            alert("잘못된 접근입니다.");
        }
        
     // Hidden Form Fields 업데이트
        $("#selectedMainCategory").val(selectedMainCategory);
        $("#selectedSubCategory").val(selectedSubCategory);
        
        // 폼 제출
        $("#categoryForm").submit();
    });
});


</script>
<script>
 document.addEventListener("DOMContentLoaded", function() {
 const subCategoryOptions = [
      { value: "-", text: "-" },
      { value: "건설업", text: "건설업" },
      { value: "교육서비스업", text: "교육서비스업" },
      { value: "도매 및 소매업", text: "도매 및 소매업" },
      { value: "부동산업 및 임대업", text: "부동산업 및 임대업" },
      { value: "사업시설관리 및 사업지원서비스업", text: "사업시설관리 및 사업지원서비스업" },
      { value: "서비스업", text: "서비스업" },
      { value: "수리 및 기타개인서비스업", text: "수리 및 기타개인서비스업" },
      { value: "숙박 및 음식점업", text: "숙박 및 음식점업" },
      { value: "예술,스포츠 및 여가관련서비스업", text: "예술,스포츠 및 여가관련서비스업" },
      { value: "운수업", text: "운수업" },
      { value: "전문,과학 및 기술서비스업", text: "전문,과학 및 기술서비스업" },
      { value: "출판,영상,방송통신 및 정보서비스업", text: "출판,영상,방송통신 및 정보서비스업" },
  ];


  const subCategoryOptions2 = [
      { value: "-", text: "-" },
      { value: "식료품", text: "식료품" },
      { value: "음료", text: "음료" },
      { value: "섬유제품 의복제외", text: "섬유제품 의복제외" },
      { value: "의복 의복액세서리 및 모피제품", text: "의복 의복액세서리 및 모피제품" },
      { value: "가죽 가방 및 신발", text: "가죽 가방 및 신발" },
      { value: "목재 및 나무제품", text: "목재 및 나무제품" },
      { value: "펄프 종이 및 종이제품", text: "펄프 종이 및 종이제품" },
      { value: "인쇄 및 기록매체", text: "인쇄 및 기록매체" },
      { value: "화학물질 및 화학제품", text: "화학물질 및 화학제품" },
      { value: "의료용 물질 및 의약품", text: "의료용 물질 및 의약품" },
      { value: "고무제품 및 플라스틱제품", text: "고무제품 및 플라스틱제품" },
      { value: "비금속 광물제품", text: "비금속 광물제품" },
      { value: "1차 금속", text: "1차 금속" },
      { value: "금속가공제품", text: "금속가공제품" },
      { value: "전자부품 컴퓨터 영상 음향 및 통신장비", text: "전자부품 컴퓨터 영상 음향 및 통신장비" },
      { value: "의료 정밀 광학기기 및 시계", text: "의료 정밀 광학기기 및 시계" },
      { value: "전기장비", text: "전기장비" },
      { value: "기타 기계 및 장비", text: "기타 기계 및 장비" },
      { value: "자동차 및 트레일러", text: "자동차 및 트레일러" },
      { value: "기타 운송장비", text: "기타 운송장비" },
      { value: "가구", text: "가구" },
      { value: "기타 제품", text: "기타 제품" },
  ];
  
    const mainCategorySelect = document.getElementById("mainCategorySelect"); 
    const subCategorySelect = document.getElementById("subCategorySelect");
   
  generateSubCategoryOptions(subCategoryOptions);
  function generateSubCategoryOptions(options) {
      const subCategorySelect = document.getElementById("subCategorySelect");
        
        // 기존 옵션을 삭제합니다
        subCategorySelect.innerHTML = "";

      // 새로운 옵션을 생성하고 추가합니다
      options.forEach(function(option) {
          const optionElement = document.createElement("option");
          optionElement.value = option.value;
          optionElement.textContent = option.text;
          subCategorySelect.appendChild(optionElement);
      });
  }

  //main 선택시 subCategory 변경
  mainCategorySelect.addEventListener("change", function() {
      const selectedMainCategory = mainCategorySelect.value;

      if (selectedMainCategory === "비제조업") {
          generateSubCategoryOptions(subCategoryOptions);
      } else if (selectedMainCategory === "제조업") {
          generateSubCategoryOptions(subCategoryOptions2);
      }
    
  });  
});
</script>

</body>
</html>