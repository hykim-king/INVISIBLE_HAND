<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" type="image/x-icon" href="/ehr/favicon.ico">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/chart.css">
<title>보이지 않는 손 레이아웃</title>
</head>
<body>
  <!-- *---container Start---* -->

  <div class="container-1200 con-main">
    <div class="wrap-1000">
        <div id="line_chart1"></div>

    </div>
    <!-- **---wrap End---** -->
  </div>
  <!-- **---container End---** -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="../resources/js/jquery-3.7.0.js"></script>
<script>
 //차트 관련
 $(document).ready(function () {      
	 
	 //날짜 변환 함수
	 function formatDate(date) {
		  let year = date.getFullYear();
		  let month = (date.getMonth() + 1).toString().padStart(2, '0');
		  return year + '.' + month;
		}
	 
	 
	  let mainCategory = "비제조업";
	  let subCategory  = "-";
	  
	 function submitbutton() {
	         $("#submitButton").click(function () {
	             // 선택된 값 가져오기
	             let selectedMainCategory = $("#mainCategorySelect").val();
	             let selectedSubCategory = $("#subCategorySelect").val();	          
	             

	             loadChartData(selectedMainCategory, selectedSubCategory);
	         });
	     }
	     
    function loadChartData(selectedMainCategory, selectedSubCategory) {

        $.ajax({
            url: '/ehr/chart/chart01.do',
            type: 'GET',
            data: { 
             mainCategory: selectedMainCategory,
             subCategory : selectedSubCategory
            }, 
            dataType: 'json',
            success: function(data) {                                                                         
                let chartData = [];
                chartData.push(["Year","경기전반","고용수준","내수판매","수출","영업이익","자금사정"]);
                
                if (selectedMainCategory === '제조업') {
                  chartData[0].push("원자재조달사정","생산설비수준","제품제고수준","생산");
                }
                
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

                  if (selectedMainCategory === '제조업') {
                    row.push(data[i][9]);
                    row.push(data[i][10]);
                    row.push(data[i][11]);
                    row.push(data[i][12]);
                  }
                  
                  chartData.push(row);
                }
                
                
                drawChart(chartData);
                                
    
            },  //success
            error: function(xhr, status, error) {
                // AJAX 요청이 실패했을 때 실행되는 부분              
                console.error(error);
            } //error
        }); //ajax
    } //loadChartData
  
    //구글 차트 api
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(function() {
        loadChartData(); // 일단 loadChartData 호출
        submitbutton(); // submitbutton 함수를 호출하여 이벤트 등록
    });   
        
    function drawChart(data) {
        const originalData1 = new google.visualization.arrayToDataTable(data);

        let chartData1 = originalData1.clone();
          
        let options1 = {
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
              ticks: [0, 20, 40, 60, 80, 100, 120, 140, 160],
              format: '###',
          },
          legend: {
            textStyle: { position: 'top', fontSize: 13, color: '#fff' },
          },
          series: {
              0: { color: '#F0A57C', lineWidth: 2, visibleInLegend: true },
              1: { color: '#91FFC3', lineWidth: 2, visibleInLegend: true }
          }
        }; //options1

        let chart1 = new google.visualization.LineChart(document.getElementById('line_chart1'));
        
        //차트 초기화//
        let hiddenSeries = {}; // 숨겨진 시리즈를 추적하기 위한 객체
        // "Restore" 버튼 클릭 이벤트 리스너
        $('#restoreButton').click(function () {
          for (let seriesIndex in hiddenSeries) {
            for (let i = 0; i < chartData1.getNumberOfRows(); i++) {
              chartData1.setValue(i, parseInt(seriesIndex) + 1, originalData1.getValue(i, parseInt(seriesIndex) + 1));
            
            }
          }
          chart1.draw(chartData1, options1);
          
        });
        hiddenSeries = {}; // 숨겨진 시리즈 리스트 초기화
        //차트 초기화 end//
        
        // 이벤트 리스너 1 추가
        google.visualization.events.addListener(chart1, 'click', function(target) {
          if (target.targetID.match(/legendentry#\d+/)) {
            let index = parseInt(target.targetID.slice(12));
        
            for (let i = 0; i < chartData1.getNumberOfRows(); i++) {
              let value = chartData1.getValue(i, index + 1);
        
              if (value === null) {
                chartData1.setValue(i, index + 1, originalData1.getValue(i, index + 1));
                delete hiddenSeries[index]; // 숨겨진 시리즈에서 제거
              } else {
                chartData1.setValue(i, index + 1, null);
              }
            }            
            chart1.draw(chartData1, options1);
            hiddenSeries[index] = true; // 숨겨진 시리즈로 추가
          }
        }); //이벤트 리스터 1
        
        chart1.draw(chartData1, options1);
    } //funciton drawChart

}); //차트 관련 doucument

 </script>
 
 <script>
 document.addEventListener("DOMContentLoaded", function() {
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


	
	  const mainCategorySelect = document.getElementById("mainCategorySelect"); 
	  const subCategorySelect = document.getElementById("subCategorySelect");
	  const submitButton = document.getElementById("submitButton"); 
	  

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
	

 });
</script>
<script>
document.addEventListener("DOMContentLoaded", function() {
const mainCategorySelect = document.getElementById("mainCategorySelect");
mainCategorySelect.addEventListener("change", function() {
    submitButton.click();
});

const subCategorySelect = document.getElementById("subCategorySelect");
subCategorySelect.addEventListener("change", function() {
    submitButton.click();
});
});
</script>
</body>
</html>