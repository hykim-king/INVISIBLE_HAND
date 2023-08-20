const subCategoryOptions = [
    { value: "-", text: "평균" },
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
    { value: "-", text: "평균" },
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

generateSubCategoryOptions(subCategoryOptions2);

mainCategorySelect.addEventListener("change", function() {
    const selectedMainCategory = mainCategorySelect.value;

    if (selectedMainCategory === "비제조업") {
        generateSubCategoryOptions(subCategoryOptions);
    } else if (selectedMainCategory === "제조업") {
        generateSubCategoryOptions(subCategoryOptions2);
    }


    // 초기 선택값에 따라서 서브 카테고리 선택 및 submitButton을 초기화
    subCategorySelect.value = "-";
    submitButton.style.display = "none";
    submitButton.click();
});