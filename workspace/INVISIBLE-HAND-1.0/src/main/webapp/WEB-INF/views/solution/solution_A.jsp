<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
        // hidden 필드로부터 값을 추출
        
        String radioArrJson = request.getParameter("radioArr");
        String textArrJson = request.getParameter("textArr");
        String checkArrJson = request.getParameter("checkArr");
        String totalScore = request.getParameter("totalScore");
        String selectedMainCategory = request.getParameter("selectedMainCategory");
        String selectedSubCategory = request.getParameter("selectedSubCategory");
        
        out.println("<br>");
        out.println("<br>");
        out.println("<br>");
        out.println("Radio Array: " + radioArrJson + "<br>");
        out.println("Text Array: " + textArrJson + "<br>");
        out.println("Check Array: " + checkArrJson+ "<br>");
        out.println("Total Score: " + totalScore + "<br>");
        out.println("Selected Main Category: " + selectedMainCategory + "<br>");
        out.println("Selected Sub Category: " + selectedSubCategory + "<br>");

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="image/favicon-32x32.png">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/chart.css">
<link rel="stylesheet" href="../resources/css/solution.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<title>보이지 않는 손 레이아웃</title>
</head>
<body>
	<!-- *---container Start---* -->

	<div class="h60px"></div>
	<div class="container-1400 min-100vh con-main">
		<div class="wrap-1000">
		
		<h1 class="A-title">귀사의 기업 솔루션 결과입니다</h1>
		
		<div class="tab-box tab1 active" id="chart01">
      <div class="chart-wrapper">
				<div class="container-1200 con-main">
						  <div class="wrap-1000">
						    <div id="solution_chart"></div>						
						  </div>
				  <!-- **---wrap End---** -->
				</div>
      </div>

       
		<div class="solution-desc">
		  <div class="solution-desc-list">
		    <h3><span><i class='fas fa-circle fa-xs' style='color:#00FFF0'></i></span>
		         귀사의 SBHI 지수는 <span>${sbhi}</span>으로  AI 예측대비  <span>(점수)</span>높/낮은 수치입니다.</h3>
		    <p>귀사는 다량의 인력 유출, 심각한 업종의 경기 침체, 잘못된 투자 방향성 등 치명적인 악재가 겹친것으로 예측됩니다. 대외적 활동과 투자 유치보다는 내부 문제를 들여다보고 악재가 끝날때까지 버텨보시길 바랍니다.
		    </p>
		  </div>
		  <div class="solution-desc-list">
		    <h3><span><i class='fas fa-circle fa-xs' style='color:#00FFF0'></i></span>
		          귀사는  <span>[설문솔루션 케이스]</span>입니다.</h3>
		    <p>어려운 상황 속에서도 기회는 항상 있습니다. 목표와 전략을 재조정하여 리소스를 최적으로 활용하고, 변화에 잘 적응하여 탄력을 발휘할 수 있다면 이 위기 또한 지나갈 것입니다. 기존의 지속적인 투자를 통해 위기를 견디는 것 또한 방법이지만 새로운 도전을 하여 가치를 창조하는 방법도 고려해 보시기 바랍니다.
			</p>

		  </div>
		  <div class="solution-desc-list">
		    <h3><span><i class='fas fa-circle fa-xs' style='color:#00FFF0'></i></span>
		         귀사의 생산설비 가동률은 전월대비 <span>[증가/평이/감소]</span>입니다.</h3>
		    <p>시장 수요 증가와 함께 생산설비가 원활하게 가동된 결과로 추측합니다. 이에 따라 다음 달 보유예정인 생산설비, 제품 제고, 종사자수를 조정하여 수요를 충족시키고 고객 만족을 증가시키면 좋을 것 같습니다.</p>
		  </div>
		  <div class="solution-desc-list">
		    <h3><span><i class='fas fa-circle fa-xs' style='color:#00FFF0'></i></span>
		         또한 귀사의 생산설비 가동률은 <span>어쩌구</span>입니다.</h3>
		    <p>설명설명</p>
		  </div>
		</div>
		
		
		</div>
	</div>

	<!-- **---container End---** -->
	
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="../resources/js/jquery-3.7.0.js"></script>
<script>
<%-- $(document).ready(function() {
	
    let radioArr = <%= radioArrJson %>; // 이미 배열이므로 JSON.parse() 필요 없음
    let textArr = <%= textArrJson %>;
    let checkArr = <%= checkArrJson %>;
    let totalScore = '<%= totalScore %>';
    let selectedMainCategory = '<%= selectedMainCategory %>';
    let selectedSubCategory = '<%= selectedSubCategory %>';

	getData(radioArr, textArr, checkArr, totalScore, selectedMainCategory, selectedSubCategory);

function getData(radioArr, textArr, checkArr, totalScore, selectedMainCategory, selectedSubCategory) {     
    $.ajax({
        type: "POST",
        url: "/ehr/solution/getProductData.do",
        async: true,
        contentType: "application/json; charset=utf-8",
        dataType: "json",   
        data: JSON.stringify({
            radioArr: radioArr, 
            textArr: textArr,
            checkArr: checkArr,
            totalScore: totalScore,
            mainCategory:selectedMainCategory,
            subCategory:selectedSubCategory
        }),
        success: function(data) {
            console.log("성공");
            
        },
        error: function(data) {
            console.log("에러");
        }
    }); // ajax 종료
}

}); --%>
</script>
<script>
//차트 관련
$(document).ready(function() {
  
    let totalScore           = '<%= totalScore %>';
    let selectedMainCategory = '<%= selectedMainCategory %>';
    let selectedSubCategory  = '<%= selectedSubCategory %>';
    
 
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(function() {
        loadChartData(selectedMainCategory, selectedSubCategory, totalScore); 
        });   
   
    //날짜 변환 함수
    function formatDate(date) {
       let year = date.getFullYear();
       let month = (date.getMonth() + 1).toString().padStart(2, '0');
       return year + '.' + month;
     }
   
   function loadChartData(selectedMainCategory, selectedSubCategory,totalScore) {
     
     
     $.ajax({
              url: '/ehr/chart/soultionChart.do',
              type: 'GET',
              data: { 
               mainCategory: selectedMainCategory,
               subCategory : selectedSubCategory
              }, 
              dataType: 'json',
              success: function(data) {
            	  let chartData = [];
            	  chartData.push(["Year","one","two","three"]);
                  for (let i = 0; i < data.length; i++) {
                      let row = [];
                      let date = new Date(data[i][0]);
                      let formattedDate = formatDate(date); // 날짜를 "YYYY.MM" 형식으로 변환
                      row.push(formattedDate);
                      
                      let value = parseFloat(data[i][3]);
                      
                      if (formattedDate >= '2023.05' && formattedDate <= '2023.07') {
                          row.push(value);
                      } else {
                          row.push(null);
                      }    
                      
                      // 'two'값 처리
					            if (formattedDate === '2023.07') {
					                row.push(value);
					            } else if (formattedDate === '2023.08') {
					            	  row.push(value);
					            } else {
					                row.push(null);
					            }
					            
					            // 'three' 열의 나머지 기간 처리
                      if (formattedDate === '2023.07') {
                          row.push(value);
                      } else if (formattedDate === '2023.08') {
                          // JSP에서 주는 데이터 사용
                          row.push(totalScore);
                      } else {
                          row.push(null);
                      }
                      
                      
                      chartData.push(row);
                  }
                  console.log(chartData);
                  drawChart(chartData);

              },
              error: function(xhr, status, error) {
            	  console.error(error);
              }
       });//solution chart end
   } //  function loadChartData end
    
  // 차트 생성
  function drawChart(data) {
    const originalData = new google.visualization.arrayToDataTable(data);

    let chartData = originalData.clone();

    let options = {
      //title: '차트1',
      pointSize: 0,
      width: 1000,
      height: 500,
      backgroundColor: '#222',
      titleTextStyle: { color: '#fff' },
      hAxis: {
        textStyle: { fontSize: 15, color: '#fff' },
        baselineColor: '#fff'
      },
      vAxis: {
        //title: 
        textStyle: { color: '#fff' },
        viewWindow: {
          min: 0,
          max: 200
        },
        format: '###'
      },
      legend: {
        textStyle: { position: 'top', fontSize: 13, color: '#fff' },
      },
      series: {
          1: {lineDashStyle: [4, 4]},
          2: {lineDashStyle: [4, 4]}
        }
    };

    let chart = new google.visualization.LineChart(document.getElementById('solution_chart'));
   
    chart.draw(chartData, options);

  }

  $(window).resize(function() {
   drawChart();
  });
}); //차트 관련 doucument
</script>
</body>
</html>