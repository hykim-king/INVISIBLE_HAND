<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="CP" value="${pageContext.request.contextPath }"/> 
<!-- 
  publicCompany -> 차트이름 : 상장기업 부가가치
        data칼럼에 들어갈 이름 :['총자본순이익률','총자본영업이익률','경영자본영업이익률','자기자본영업이익률','매출액영업이익률']
 -->
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
        <div id="line_chart3"></div>

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
	      
	      
	      function submitbutton3() {
	             $("#submitButton3").click(function () {
	                 // 선택된 값 가져오기
	                 let selectedMainCategory3 = $("#mainCategorySelect3").val();
	                 let selectedSubCategory3 = $("#subCategorySelect3").val();

	                 mainCategory = selectedMainCategory3; // mainCategory 값을 선택한 값으로 업데이트

	                 loadChartData03(selectedMainCategory3, selectedSubCategory3);
	             });
	         }
	      
	      function loadChartData03(selectedMainCategory3, selectedSubCategory3) {

	          $.ajax({
	              url: '/ehr/chart/chart03.do',
	              type: 'GET',
	              data: { 
	               mainCategory: selectedMainCategory3,
	               subCategory : selectedSubCategory3
	              }, 
	              dataType: 'json',
	              success: function(data) {            
	                  console.log("데이터를 가져옴");
	                  console.log(data);
	                  let chartData3 = [];
	                  chartData3.push(["Year","총자본순이익률",
	                    "총자본영업이익률","경영자본영업이익률",
	                    "자기자본영업이익률","매출액영업이익률"]);                 
	                    
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
	                    chartData3.push(row);
	                    }                                 
	                  
	                  console.log(chartData3);
	                  drawChart(chartData3);
	                                  
	      
	              },  //success
	              error: function(xhr, status, error) {
	                  // AJAX 요청이 실패했을 때 실행되는 부분
	                  console.log("데이터를 불러오지 못했습니다. 오류 메시지:", error);
	                  console.error(error);
	              } //error
	          }); //ajax
	      } //loadChartData03
	  
	  
	      //구글 차트 api
	      google.charts.load('current', {'packages':['corechart']});
	      google.charts.setOnLoadCallback(function() {
	          loadChartData03(); // 일단 loadChartData 호출
	          submitbutton3(); // submitbutton 함수를 호출하여 이벤트 등록
	      });
	      
	      function drawChart(data) {
	          const originalData3 = new google.visualization.arrayToDataTable(data);

	          let chartData3 = originalData3.clone();
	            
	          let options3 = {
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
	                ticks: [-20,-10,0,10,20,30],
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
	          }; //options3

	          let chart3 = new google.visualization.LineChart(document.getElementById('line_chart3'));
	          
	          //차트 초기화//
	          let hiddenSeries = {}; // 숨겨진 시리즈를 추적하기 위한 객체
	          // "Restore" 버튼 클릭 이벤트 리스너
	          $('#restoreButton3').click(function () {
	            for (let seriesIndex in hiddenSeries) {
	              for (let i = 0; i < chartData3.getNumberOfRows(); i++) {
	                chartData3.setValue(i, parseInt(seriesIndex) + 1, originalData3.getValue(i, parseInt(seriesIndex) + 1));
	                console.log("parseInt(seriesIndex) : "+ parseInt(seriesIndex))
	              }
	            }
	            chart3.draw(chartData3, options3);
	            
	          });
	          hiddenSeries = {}; // 숨겨진 시리즈 리스트 초기화
	          //차트 초기화 end//
	          
	          // 이벤트 리스너 1 추가
	          google.visualization.events.addListener(chart3, 'click', function(target) {
	            if (target.targetID.match(/legendentry#\d+/)) {
	              let index = parseInt(target.targetID.slice(12));
	          
	              for (let i = 0; i < chartData3.getNumberOfRows(); i++) {
	                let value = chartData3.getValue(i, index + 1);
	          
	                if (value === null) {
	                  chartData3.setValue(i, index + 1, originalData3.getValue(i, index + 1));
	                  delete hiddenSeries[index]; // 숨겨진 시리즈에서 제거
	                } else {
	                  chartData3.setValue(i, index + 1, null);
	                }
	              }            
	              chart3.draw(chartData3, options3);
	              hiddenSeries[index] = true; // 숨겨진 시리즈로 추가
	            }
	          }); //이벤트 리스터 1
	          
	          chart3.draw(chartData3, options3);
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
      const subCategorySelect3 = document.getElementById("subCategorySelect3");
      
      // 기존 옵션을 삭제합니다
      subCategorySelect3.innerHTML = "";

      // 새로운 옵션을 생성하고 추가합니다
      options.forEach(function(option) {
          const optionElement = document.createElement("option");
          optionElement.value = option.value;
          optionElement.textContent = option.text;
          subCategorySelect3.appendChild(optionElement);
      });
  }
  
  const mainCategorySelect3 = document.getElementById("mainCategorySelect3"); 
  const subCategorySelect3 = document.getElementById("subCategorySelect3");
  const submitButton3 = document.getElementById("submitButton3"); 
  
  mainCategorySelect3.addEventListener("change", function() {
      const selectedMainCategory = mainCategorySelect3.value;

      if (selectedMainCategory === "비제조업") {
        selectedMainCategory = "제조업";
        generateSubCategoryOptions(subCategoryOptions2);
      } else if (selectedMainCategory === "제조업") {
          generateSubCategoryOptions(subCategoryOptions2);
      }


      // 초기 선택값에 따라서 서브 카테고리 선택 및 submitButton을 초기화
      subCategorySelect3.value = "-";
      submitButton3.style.display = "none";
      submitButton3.click();
  });
  
 });
  </script>
  <script>
  document.addEventListener("DOMContentLoaded", function() {
  const mainCategorySelect3 = document.getElementById("mainCategorySelect3");
  mainCategorySelect3.addEventListener("change", function() {
    console.log("mainCategorySelect3 Changed");
      submitButton3.click();
  });

  const subCategorySelect3 = document.getElementById("subCategorySelect3");
  subCategorySelect3.addEventListener("change", function() {
    console.log("subCategorySelect3 Changed");
      submitButton3.click();
  });
 });
  </script>
</body>
</html>