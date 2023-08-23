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
		<h3>야호호${solContentsList[0].solname}</h3>
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
		    (solname0에 대한 결과)귀사는  업계 평균 대비  <span id="sol1_2">undefined</span>입니다.</h3>
		    <p id ="sol1_1">
		   	 이 글이 보이면 실패
		    </p>
		  </div>
		  <div class="solution-desc-list">
		    <h3><span><i class='fas fa-circle fa-xs' style='color:#00FFF0'></i></span>
		    (solname1에 대한 결과)귀사는  <span id="sol2_2">undefined</span>입니다.</h3>
		    <p id ='sol2_1'>
		   	 이 글이 보이면 실패
		    </p>

		  </div>
		  <div class="solution-desc-list">
		    <h3><span><i class='fas fa-circle fa-xs' style='color:#00FFF0'></i></span>
		     (solname2-상대생산률에 대한 결과)귀사의 생산설비 가동률은 전월대비 <span id="sol3_2">undefined</span>입니다.</h3>
		   	<p id ="sol3_1">
		   	 이 글이 보이면 실패
		    </p>  
		  </div>
		  <div class="solution-desc-list">
		    <h3><span><i class='fas fa-circle fa-xs' style='color:#00FFF0'></i></span>
		    (solname2-절대생산률에 대한 결과)또한 귀사의 생산설비 가동률은 <span id="sol4_2">undefined</span>입니다.</h3>
		    <p id ="sol4_1">
		   	 이 글이 보이면 실패
		    </p> 
		  </div>
		  <div>
			<div class="solution-desc-list">
		    <h3><span><i class='fas fa-circle fa-xs' style='color:#00FFF0'></i></span>
		    (solname3에 대한 결과)<span id="sol5_2">undefined</span>입니다.</h3>
		    <p id ="sol5_1">
		   	 이 글이 보이면 실패
		    </p>
		  </div>
		</div>
		
		
		</div>
	</div>

	<!-- **---container End---** -->
	
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="../resources/js/jquery-3.7.0.js"></script>
<script>
$(document).ready(function() {
	var documentIds = [
		'#sol1_1','#sol1_2',
		'#sol2_1','#sol1_2',
		'#sol3_1',
		'#sol4_1'
	];
    let radioArr = <%= radioArrJson %>; // 이미 배열이므로 JSON.parse() 필요 없음
    let textArr = <%= textArrJson %>;
    let checkArr = <%= checkArrJson %>;
    let totalScore = '<%= totalScore %>';
    let selectedMainCategory = '<%= selectedMainCategory %>';
    let selectedSubCategory = '<%= selectedSubCategory %>';
    
	function updateUI(data) {
		$('#sol1_1').text(data[0][2]);
		$('#sol1_2').text(data[0][1]);
		$('#sol2_1').text(data[1][2]);
		$('#sol2_2').text(data[1][1]);
		$(documentIds[3]).text(data[3][2]);
		$(documentIds[4]).text(data[4][2]);
	}
	
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
	        	console.log(data);
	        	updateUI(data);
	        },
	        error: function(data) {
	            console.log("에러");
	        }
	    }); // ajax 종료
	}


});

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
            	  chartData.push(["Year",selectedSubCategory+"의 SBHI지수","AI가 예측한 다음달 업계 SBHI지수","AI가 예측한 나의 기업 SBHI"]);
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
                    	  totalScore = (parseFloat(totalScore) + parseFloat(value)) * 0.5;
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