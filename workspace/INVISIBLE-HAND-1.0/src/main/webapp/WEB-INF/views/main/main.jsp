<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 추가 나중에 필요 없을 때 삭제 -->
<link rel="shortcut icon" type="image/x-icon" href="/ehr/favicon.ico">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/chart.css">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="../resources/js/jquery-3.7.0.js"></script>
<!--  -->
<c:set var="CP" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
  <title>보이지 않는 손 레이아웃</title>
</head>
<body>

  <!-- *---container Start---* -->
  <div class="h60px"></div>
  <div class="container-1400 min-100vh con-main">
    <div class="wrap-1000">
      <section class="sec01 sec-news">
                     뉴스 헤드라인 영역입니다
        <div class="news-slide">
          <div class="news">
            <ul class="rolling" id="newsHeadlines">
              <!-- 여기에 동적으로 헤드라인이 추가됩니다. -->
            </ul>
          </div>
        </div>
      </section>
      
      <section class="sec02 sec-chart">차트 영역입니다
	      <div class="tab-box tab1 active">
	        <div id="line_chart1" >
	        </div>
	      </div>
      </section>
      
      <section class="sec03 sec-board">커뮤니티 영역입니다
       
	      <div>
	        <a href = "${CP}/post/postList.do?categoryNumber=10">자유게시판</a>	        	        
	        <a href = "${CP}/post/postList.do?categoryNumber=30">Q&A</a>	     
	      </div>
	      
	      <div>
		       <table>
		          <thead>
		            <tr>
		            <th>No.</th>
		            <th>제목</th>
		            <th>글쓴이</th>
		            <th>작성일</th>
		            <th>조회수</th>
		            <th>추천수</th>
		            </tr>
		          </thead>
		          <tbody id="tableBody">
							<!-- 여기에 데이터가 동적으로 추가될 예정입니다 -->
							</tbody>							
						</table>	
	      </div>
      </section>
    </div>
    <!-- **---wrap End---** -->
    <div class="rank-area">
        <table>
            <thead>
                <tr>
                <th>등수</th>
                <th>업종명</th>                
                <th>등수변동</th>
                </tr>
           </thead>
           <tbody id="rankBody">
            <!-- 여기에 데이터가 동적으로 추가될 예정입니다 -->
           </tbody>
        </table>   
    </div>
  </div>
  <!-- **---container End---** -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  
  <!-- main페이지 기능 관련 js -->
  <!-- <script src="../resources/js/mainChart.js"></script>  -->
  <script src="../resources/js/mainBoard.js"></script> <!-- 게시판 -->
  <script src="../resources/js/mainNews.js"></script>  <!-- 뉴스 -->
  <script src="../resources/js/mainRank.js"></script>  <!-- 랭킹 -->
  <!-- main페이지 기능 관련 js end -->
 
 
 <script>
     //차트 관련
    $(document).ready(function () {
    function loadChartData() {
        $.ajax({
            url: '/ehr/main/chartGraph.do',
            type: 'GET',
           data: { 
        	   mainCategory: "${mainCategory}",
        	   subCategory : "${subCategory}"
           },
            dataType: 'json',
            success: function(data) {            
                console.log("데이터를 가져옴");
                console.log(data);
                let chartData = [];
                chartData.push(["Year","항목1","항목2","항목3","항목4","항목5","항목6","항목7","항목8","항목9","항목10"]);
                for (let i = 0; i < data.length; i++) {
                    let row = [];
                    row.push(data[i][0]);
                    row.push(data[i][3]);
                    row.push(data[i][4])
                    row.push(data[i][5]);
                    row.push(data[i][6]);
                    row.push(data[i][7]);
                    row.push(data[i][8]);
                    row.push(data[i][9]);
                    row.push(data[i][10]);
                    row.push(data[i][11]);
                    row.push(data[i][12]);
                    chartData.push(row);
                } //for
                console.log(chartData);
                drawChart(chartData);
                                
    
            },  //success
            error: function(xhr, status, error) {
                // AJAX 요청이 실패했을 때 실행되는 부분
                console.log("데이터를 불러오지 못했습니다. 오류 메시지:", error);
                console.error(error);
            } //error
        }); //ajax
    } //loadChartData
    
    //구글 차트 api
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(loadChartData);
    
    
    function drawChart(data) {
        const originalData1 = new google.visualization.arrayToDataTable(data);

        let chartData1 = originalData1.clone();
          
        let options1 = {
          title: '차트1',
        
          width : 1000,
          height : 500,
          chartArea: {
        	    left: 100, // 왼쪽 공백 크기
        	    right:100, // 오른쪽 공백 크기
        	    top: 50,     // 위쪽 공백 크기
        	    width: '60%',  // 차트 영역의 너비 설정 (60%로 설정)
        	    height:'70%' // 차트 영역의 높이 설정 (70%로 설정)
        	  },
          titleTextStyle: { color: 'black' },
          hAxis: {
              textStyle: { fontSize: 15, color: 'black' },
              baselineColor: 'black'
          },
          vAxis: {
        	    //title: 'title',
              ticks: [0, 20, 40, 60, 80, 100, 120, 140, 160],
              format: '###',
          },
          legend: {
            textStyle: { position: 'top', fontSize: 13, color: 'black' },
          },
          series: {
              0: { color: '#F0A57C', lineWidth: 2, visibleInLegend: true },
              1: { color: '#91FFC3', lineWidth: 2, visibleInLegend: true }
          }
        }; //options1

        let chart1 = new google.visualization.LineChart(document.getElementById('line_chart1'));

        // 이벤트 리스너 1 추가
        google.visualization.events.addListener(chart1, 'click', function(target) {
          if (target.targetID.match(/legendentry#\d+/)) {
            let index = parseInt(target.targetID.slice(12));
        
            for (let i = 0; i < chartData1.getNumberOfRows(); i++) {
              let value = chartData1.getValue(i, index + 1);
        
              if (value === null) {
                chartData1.setValue(i, index + 1, originalData1.getValue(i, index + 1));
              } else {
                chartData1.setValue(i, index + 1, null);
              }
            }
        
            chart1.draw(chartData1, options1);
          }
        }); //이벤트 리스터 1
        
        // 이벤트 리스너2  추가
/*           google.visualization.events.addListener(chart1, 'click', function(event) {
              if (!event.targetID.match(/legendentry#\d+/)) {
                  var newUrl = '/ehr/chart/chart.do';
                  window.location.href = newUrl;
              }

          }); // 이벤트 리스너 2 */
        
        chart1.draw(chartData1, options1);
    
    } //funciton drawChart
    }); //차트 관련 doucument
 </script>
</body>
</html>
