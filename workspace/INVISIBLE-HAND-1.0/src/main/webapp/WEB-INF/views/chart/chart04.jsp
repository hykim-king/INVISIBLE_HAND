<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="CP" value="${pageContext.request.contextPath }"/>  

<!-- GrowingIndicator -> 차트이름 : 성장성 지표
        data칼럼에 들어갈 이름 : ['총자산증가율', '유형자산증가율','유동자산증가율','재고자산증가율','자기자본증가율','매출액증가율'] -->
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" type="image/x-icon" href="/ehr/favicon.ico">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/chart.css">
<title>Insert title here</title>
</head>
<body>
  <div class="container-1200 con-main">
    <div class="wrap-1000">
        <div id="line_chart4"></div>

    </div>
    <!-- **---wrap End---** -->
  </div>
 <!-- **---container End---** -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="../resources/js/jquery-3.7.0.js"></script>
<!-- 차트 관련 -->
<script>
$(document).ready(function () {   
	  //날짜 변환 함수
	   function formatDate(date) {
	      let year = date.getFullYear();
	      let month = (date.getMonth() + 1).toString().padStart(2, '0');
	      return year + '.' + month;
	    }

       let mainCategory = "제조업";
       let subCategory  = "-";
       
       
       function submitbutton4() {
              $("#submitButton4").click(function () {
                  // 선택된 값 가져오기
                  let selectedMainCategory4 = $("#mainCategorySelect4").val();
                  let selectedSubCategory4 = $("#subCategorySelect4").val();

                  mainCategory = selectedMainCategory4; // mainCategory 값을 선택한 값으로 업데이트

                  loadChartData04(selectedMainCategory4, selectedSubCategory4);
              });
          }
       
       function loadChartData04(selectedMainCategory4, selectedSubCategory4) {

           $.ajax({
               url: '/ehr/chart/chart04.do',
               type: 'GET',
               data: { 
                mainCategory: selectedMainCategory4,
                subCategory : selectedSubCategory4
               }, 
               dataType: 'json',
               success: function(data) {            
                   console.log("데이터를 가져옴");
                   console.log(data);
                   let chartData4 = [];
                   chartData4.push(["Year","총자산증가율",
                     "유형자산증가율","유동자산증가율",
                     "재고자산증가율","자기자본증가율","매출액증가율"]);                 
                     
                     for (let i = 0; i < data.length; i++) {
                     let row = [];
                     let date = new Date(data[i][0]);
                     let formattedDate = formatDate(date); // 날짜를 "YYYY.MM" 형식으로 변환
                     row.push(formattedDate);
                     row.push(data[i][3]);
                     row.push(data[i][4]);
                     row.push(data[i][5]);
                     row.push(data[i][6]);
                     row.push(data[i][7]);
                     row.push(data[i][8]);
                     chartData4.push(row);
                     }                                 
                   
                   console.log(chartData4);
                   drawChart(chartData4);
                                   
       
               },  //success
               error: function(xhr, status, error) {
                   // AJAX 요청이 실패했을 때 실행되는 부분
                   console.log("데이터를 불러오지 못했습니다. 오류 메시지:", error);
                   console.error(error);
               } //error
           }); //ajax
       } //loadChartData04
   
   
       //구글 차트 api
       google.charts.load('current', {'packages':['corechart']});
       google.charts.setOnLoadCallback(function() {
           loadChartData04(); // 일단 loadChartData 호출
           submitbutton4(); // submitbutton 함수를 호출하여 이벤트 등록
       });
       
       function drawChart(data) {
           const originalData4 = new google.visualization.arrayToDataTable(data);

           let chartData4 = originalData4.clone();
             
           let options4 = {
             /* title: '중소기업 경기전망조사(SBHI)', */
           
             width : 1000,
             height : 500,
             chartArea: {
                 left: 100, // 왼쪽 공백 크기
                 right:100, // 오른쪽 공백 크기
                 top: 50,     // 위쪽 공백 크기
                 width: '60%',  // 차트 영역의 너비 설정 (70%로 설정)
                 height:'70%' // 차트 영역의 높이 설정 (70%로 설정)
               },
               
               chartArea: {
                   backgroundColor: {
                       fill: '#222',
                   },
               },
               backgroundColor: {
                   fill: '#222',
               },
             titleTextStyle: { color: '#fff' },
             hAxis: {
                 textStyle: { fontSize: 15, color: '#fff' },
                 baselineColor: '#fff',
             },
             vAxis: {
                 //title: 'title',
                 textStyle: { color: '#fff' },
                 ticks: [-5,0,5,10,15,20,25,30,35, 40],
                 format: '##',
                 baselineColor: '#fff',
             },
             legend: {
               textStyle: { position: 'top', fontSize: 13, color: '#fff' },
             },
             series: {
                 0: { color: '#F0A57C', lineWidth: 2, visibleInLegend: true },
                 1: { color: '#91FFC3', lineWidth: 2, visibleInLegend: true }
             }
           }; //options4

           let chart4 = new google.visualization.LineChart(document.getElementById('line_chart4'));
           
           //차트 초기화//
           let hiddenSeries = {}; // 숨겨진 시리즈를 추적하기 위한 객체
           // "Restore" 버튼 클릭 이벤트 리스너
           $('#restoreButton4').click(function () {
             for (let seriesIndex in hiddenSeries) {
               for (let i = 0; i < chartData4.getNumberOfRows(); i++) {
                 chartData4.setValue(i, parseInt(seriesIndex) + 1, originalData4.getValue(i, parseInt(seriesIndex) + 1));
                 console.log("parseInt(seriesIndex) : "+ parseInt(seriesIndex))
               }
             }
             chart4.draw(chartData4, options4);
             
           });
           hiddenSeries = {}; // 숨겨진 시리즈 리스트 초기화
           //차트 초기화 end//
           
           // 이벤트 리스너 1 추가
           google.visualization.events.addListener(chart4, 'click', function(target) {
             if (target.targetID.match(/legendentry#\d+/)) {
               let index = parseInt(target.targetID.slice(12));
           
               for (let i = 0; i < chartData4.getNumberOfRows(); i++) {
                 let value = chartData4.getValue(i, index + 1);
           
                 if (value === null) {
                   chartData4.setValue(i, index + 1, originalData4.getValue(i, index + 1));
                   delete hiddenSeries[index]; // 숨겨진 시리즈에서 제거
                 } else {
                   chartData4.setValue(i, index + 1, null);
                 }
               }            
               chart4.draw(chartData4, options4);
               hiddenSeries[index] = true; // 숨겨진 시리즈로 추가
             }
           }); //이벤트 리스터 1
           
           chart4.draw(chartData4, options4);
       } //funciton drawChart
	   
}); //차트 관련 doucument
</script>

<script>
document.addEventListener("DOMContentLoaded", function() {

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
  
  generateSubCategoryOptions(subCategoryOptions2);

  function generateSubCategoryOptions(options) {
      const subCategorySelect4 = document.getElementById("subCategorySelect4");
      
      // 기존 옵션을 삭제합니다
      subCategorySelect4.innerHTML = "";

      // 새로운 옵션을 생성하고 추가합니다
      options.forEach(function(option) {
          const optionElement = document.createElement("option");
          optionElement.value = option.value;
          optionElement.textContent = option.text;
          subCategorySelect4.appendChild(optionElement);
      });
  }
  
  const mainCategorySelect4 = document.getElementById("mainCategorySelect4"); 
  const subCategorySelect4 = document.getElementById("subCategorySelect4");
  const submitButton4 = document.getElementById("submitButton4"); 
  
  mainCategorySelect4.addEventListener("change", function() {
      const selectedMainCategory = mainCategorySelect4.value;

      if (selectedMainCategory === "비제조업") {
        selectedMainCategory = "제조업";
        generateSubCategoryOptions(subCategoryOptions2);
      } else if (selectedMainCategory === "제조업") {
          generateSubCategoryOptions(subCategoryOptions2);
      }


      // 초기 선택값에 따라서 서브 카테고리 선택 및 submitButton을 초기화
      subCategorySelect4.value = "-";
      submitButton4.style.display = "none";
      submitButton4.click();
  });
  
 });
  </script>
  <script>
  document.addEventListener("DOMContentLoaded", function() {
  const mainCategorySelect4 = document.getElementById("mainCategorySelect4");
  mainCategorySelect4.addEventListener("change", function() {
    console.log("mainCategorySelect4 Changed");
      submitButton4.click();
  });

  const subCategorySelect4 = document.getElementById("subCategorySelect4");
  subCategorySelect4.addEventListener("change", function() {
    console.log("subCategorySelect4 Changed");
      submitButton4.click();
  });
  });
  </script>
</body>
</html>