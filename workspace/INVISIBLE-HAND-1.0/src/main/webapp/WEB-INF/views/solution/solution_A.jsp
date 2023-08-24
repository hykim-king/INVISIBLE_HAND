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
		    	귀사의 SBHI지수는 업계 평균대비 <span id="sol1_2">undefined</span>입니다.</h3>
		    <p id ="sol1_1">
		   	undefined
		    </p>
		  </div>
		  <div class="solution-desc-list">
		    <h3 id="sol2_2">
		    	undefined</h3>
		    <p id ='sol2_1'>
		   	 undefined
		    </p>

		  </div>
		  <div id = "products" class="solution-desc-list">
		    <h3 id="product"><span><i class='fas fa-circle fa-xs' style='color:#00FFF0'></i></span>
		     	귀사의 생산설비 가동률은 전월대비 <span id="sol3_2">undefined</span>입니다.</h3>
		   	<p id ="sol3_1"><p id ="sol3_3">
		    </p>  
		  </div>
		  <div>
			<div class="solution-desc-list">
		    <h3 id="sol5_2"><span><i class='fas fa-circle fa-xs' style='color:#00FFF0'></i></span>
		    	undefined</h3>
		    <p id ="sol5_1">
		   	undefined
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
    let radioArr = <%= radioArrJson %>; // 이미 배열이므로 JSON.parse() 필요 없음
    let textArr = <%= textArrJson %>;
    let checkArr = <%= checkArrJson %>;
    let totalScore = '<%= totalScore %>';
    let selectedMainCategory = '<%= selectedMainCategory %>';
    let selectedSubCategory = '<%= selectedSubCategory %>';
    
    
    
    function updateSolUI1(data) {
        var grade = "";
        switch (data[0][1]) {
            case 1:
                grade = "최상위등급";
                break;
            case 2:
                grade = "상위등급";
                break;
            case 3:
                grade = "우수등급";
                break;
            case 4:
                grade = "양호등급";
                break;
            case 5:
                grade = "주의등급";
                break;
            case 6:
                grade = "위험등급";
                break;
        }
        $('#sol1_1').text(data[0][2]);
        $('#sol1_2').text(grade);
    }

    function updateSolUI2(data) {
        var grade = "";
        var comments = "";
        switch (data[1][1]) {
            case 1:
                grade = "경기 전반";
                comments ="적으로 어려움에 빠져 있습니다."
                break;
            case 2:
                grade = "생산 수준 감소";
                comments ="로 어려움에 빠져 있습니다."
                break;
            case 3:
                grade = "내수 판매 감소";
                comments ="로 어려움에 빠져 있습니다."
                break;
            case 4:
                grade = "수출 판매 감소";
                comments ="로 어려움에 빠져 있습니다."
                break;
            case 5:
                grade = "영업이익 감소";
                comments ="로 어려움에 빠져 있습니다."
                break;
            case 6:
                grade = "자금사정 악화";
                comments ="로 어려움에 빠져 있습니다."
                break;
            case 7:
                grade = "원자재 조달";
                comments ="이 곤란하여 어려움에 빠져 있습니다."
                break;
            case 8:
                grade = "생산 설비 부족";
                comments ="으로 어려움에 빠져 있습니다."
                break;
            case 9:
                grade = "제품 제고 부족";
                comments ="으로 어려움에 빠져 있습니다."
                break;
            case 10:
                grade = "종사자 수 부족";
                comments ="으로 어려움에 빠져 있습니다."
                break;
            case 11:
                grade = "모든 지표";
                comments ="가 긍정적 입니다!"
                break;
            case 12:
                grade = "모든 지표";
                comments ="가  부정적 입니다!"
                break;
        }
        $('#sol2_1').text(data[1][2]);
        $('#sol2_2').html("<span><i class='fas fa-circle fa-xs' style='color:#00FFF0'></i></span>  귀사는 <span>"+grade+"</span>"+comments);
    }
	function updateSolUI3(data) {
		if (selectedMainCategory == "비제조업"){
			$('#product').text("");
			return;
		}
        var grade = "";
        switch (data[2][1]) {
            case 1:
                grade = "증가";
                break;
            case 2:
                grade = "동일";
                break;
            case 3:
            	grade = "감소";
                break;
        }
		$('#sol3_1').text(data[2][2]);
		$('#sol3_2').text(grade);
		$('#sol3_3').html("<span>또한</span>"+data[3][2]);
	}
	function updateSolUI4(data) {
	    var mytext = "";
	    if (data.length <= 2) {
	        $('#sol5_2').html(""); // Clear the content
	    } else {
	        $('#sol5_2').html("<span><i class='fas fa-circle fa-xs' style='color:#00FFF0'></i></span> 아래는 귀사의 애로요인에 대한 <span>솔루션</span>입니다.");
	        for (var i = 0; i < data.length; i++) {
	        	if(data[i][0] == 3){
		        	switch (data[i][1]) {
			            case 1:
			                grade = "<인력확보난>";
			                break;
			            case 2:
			                grade = "<인건비 상승>";
			                break;
			            case 3:
			            	grade = "물류비상승 및 운송난";
			                break;
			            case 4:
			                grade = "기술경쟁력 약화";
			                break;
			            case 5:
			                grade = "제품(판매)단가 하락";
			                break;
			            case 6:
			            	grade = "고금리";
			                break;
			            case 7:
			                grade = "설비노후 및 부족";
			                break;
			            case 8:
			                grade = "계절적 비수기";
			                break;
			            case 9:
			            	grade = "환율변동";
			                break;
			            case 10:
			                grade = "내수부진";
			                break;
			            case 11:
			                grade = "수출부진";
			                break;
			            case 12:
			            	grade = "판매대금 회수 지연";
			                break;
			            case 13:
			                grade = "자금조달 곤란";
			                break;
			            case 14:
			                grade = "업체간 과다경쟁";
			                break;
			            case 15:
			            	grade = "원자재 가격 상승";
			                break;
			            case 16:
			                grade = "원자재(원재료) 구득난";
			                break;
			            case 17:
			                grade = "모기업 불공정거래";
			                break;
		        	}
		        	mytext += "<br>" + grade + "</br>";
		            mytext += "<br>" + data[i][2] + "</br>";
	        	}
	        }
	        $('#sol5_1').html(mytext); // Use .html() to interpret HTML tags
	    }
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
	        	updateSolUI1(data);
	        	updateSolUI2(data);
	        	updateSolUI3(data);
	        	updateSolUI4(data);
	        },
	        error: function(data) {
	            console.log("에러");
	        }
	    }); // ajax 종료
	}

   
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
    
   
   //구글 차트
   google.charts.load('current', {'packages':['corechart']});
   google.charts.setOnLoadCallback(function() {
       loadChartData(selectedMainCategory, selectedSubCategory, totalScore); 
       });   
  // 차트 생성
  function drawChart(data) {
   

    let chartData = new google.visualization.arrayToDataTable(data);
    
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

/*   $(window).resize(function() {
   drawChart();
  }); */
  

});
</script>
</body>
</html>