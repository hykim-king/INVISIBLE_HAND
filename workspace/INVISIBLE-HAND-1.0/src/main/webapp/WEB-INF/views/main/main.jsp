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
      <ul>
        <li>랭킹순서대로</li>
        <li>랭킹순서대로</li>
        <li>랭킹순서대로</li>
        <li>랭킹순서대로</li>
        <li>랭킹순서대로</li>
        <li>랭킹순서대로</li>
        <li>랭킹순서대로</li>
        <li>랭킹순서대로</li>
        <li>랭킹순서대로</li>
      </ul>
    </div>
  </div>
  <!-- **---container End---** -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script>
  
    //뉴스 관련
    $(document).ready(function () {
      $.ajax({
        type: "GET",
        url: "${CP}/main/doNaverSearch.do",
        asyn:"true",
        dataType: "json",
        data: {
          query: "중소기업"
        },
        success: function (data) {
            console.log("success data:", data); // 서버에서 반환한 JSON 데이터를 그대로 출력
              // 서버에서 반환한 JSON 데이터를 그대로 사용
              let newsHeadlines = $("#newsHeadlines");
              let newItems = data.items;
              
              
              // data를 배열로 가정하고 forEach 메서드를 이용하여 각 뉴스 아이템에서 헤드라인과 URL을 추출하여 HTML로 구성합니다.
              newItems.forEach(function (item) {
                  let newsTitle = (item.title).replace(/<\/?b>/g, ''); //볼드체 제거                    
                  let newsUrl = item.link;
                
                console.log("newsTitle"+newsTitle);
                console.log("newsUrl"+newsUrl);
            	   
                // 생성한 HTML을 동적으로 추가합니다.
                newsHeadlines.append("<li><a href='"+<c:out value='newsUrl'/>+"' target='_blank' class=link>'"+<c:out value='newsTitle'/>+"'</a></li>");                 
            	});

             	  noticeRollingEffect();

        },
        error: function (xhr, status, error) {
        	  console.log("데이터를 불러오지 못했습니다. 오류 메시지:", error);
        	}
      });

      //함수로 변경
      function noticeRollingEffect() {
        let height = $(".news").height(); //공지사항의 높이값
        let num = $(".rolling li").length; // 공지사항의 개수
        let max = height * num; //총 높이
        let move = 0; //초기값을 설정
        function noticeRolling() {
          move += height; // move = move + height 값
          $(".rolling").animate({ "top": -move }, 600, function () {
               if (move >= max) { //if문을 통해 최대값보다 top값을 많이 올렸다면 다시
              $(this).css("top", 0); //0으로
              move = 0; //초기값도 다시 0으로 
            };     
          });
        };
        noticeRollingOff = setInterval(noticeRolling, 3000); //1000 = 1초마다 함수 실행
        $(".rolling").append($(".rolling li").first().clone()); //마지막이 안보이므로 clone을 통해 첫번째li 복사

      } 
      
      
    });
    
    //(좋아요 높은순 5개)커뮤니티 글 출력 관련
    $(document).ready(function() {
        // 페이지가 로드되면 초기값 '10'으로 게시글 불러오기
        loadBoardData('10');
  
    function loadBoardData(categoryNumber) {
        $.ajax({
            url: '${CP}/main/doRetrieve.do',
            type: 'GET',
            data: {
                categoryNumber: categoryNumber
            },
            dataType: 'json',
            success: function(result) {            
         
                // AJAX 요청이 성공했을 때 실행되는 부분
                // result에 받아온 데이터가 들어있음
                // 이 데이터를 가지고 게시글 목록을 업데이트하는 로직을 작성  
                console.log("데이터를 가져옴");
                console.log(result);
                updateTable(result); // 테이블 업데이트 함수 호출
                
    
            },
            error: function(xhr, status, error) {
                // AJAX 요청이 실패했을 때 실행되는 부분
                console.log("데이터를 불러오지 못했습니다. 오류 메시지:", error);
                console.error(error);
            }
        });
    };
    
    function updateTable(data) {
        let tableBody = document.getElementById('tableBody');
        let newTableBody = document.createElement('tbody'); // 새로운 tbody 엘리먼트 생성
        
        // 받아온 데이터를 테이블에 추가
        data.forEach(function(item, index) {
        	      	       	 
            let row = '<tr>' +
                      '<td>' + item.num + '</td>' +
                      '<td><a href="${CP}/post/doSelectOne.do?categoryNumber=' + item.categoryNumber + '&postNumber=' + item.postNumber + '">' + item.title + '</a></td>' +                     
                      '<td>' + item.nickname + '</td>' +
                      '<td>' + item.writtenDate + '</td>' + 
                      '<td>' + item.views + '</td>' +
                      '<td>' + item.likes + '</td>' +
                      '</tr>';
            newTableBody.innerHTML += row;
        });
        
        // 기존 tbody 엘리먼트를 새로운 tbody로 교체
        tableBody.parentNode.replaceChild(newTableBody, tableBody);
    }
   }); 
    
    //차트 관련
    $(document).ready(function () {
    function loadChartData() {
        $.ajax({
            url: '${CP}/main/chartGraph.do',
            type: 'GET',
            //data: {                      },
            dataType: 'json',
            success: function(data) {            
                console.log("데이터를 가져옴");
                console.log(data);
                let chartData = [];
                chartData.push(["Year", "one", "two", "three"]);
                for (let i = 0; i < data.length; i++) {
                    let row = [];
                    row.push(data[i][1]); // Year
                    row.push(data[i][2]); // one
                    row.push(data[i][3]); // two
                    row.push(data[i][4]); // three
                    chartData.push(row);
                }
                console.log(chartData);
                drawChart(chartData);
                                
    
            },
            error: function(xhr, status, error) {
                // AJAX 요청이 실패했을 때 실행되는 부분
                console.log("데이터를 불러오지 못했습니다. 오류 메시지:", error);
                console.error(error);
            }
        });
    }
    
    //구글 차트 api
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(loadChartData);
    
    
    function drawChart(data) {
    	  const originalData1 = new google.visualization.arrayToDataTable(data);

    	  let chartData1 = originalData1.clone();
    	    
    	  let options1 = {
    	    title: '차트1',
    	    pointSize: 15,
    	    width : 1000,
    	    height : 500,
    	    titleTextStyle: { color: 'black' },
    	    hAxis: {
    	        textStyle: { fontSize: 15, color: 'black' },
    	        baselineColor: 'black'
    	    },
    	    vAxis: {
    	        title: 'title',
    	        ticks: [0, 500, 1000, 1500, 2000],
    	        format: '#,###',
    	    },
    	    legend: {
    	      textStyle: { position: 'top', fontSize: 13, color: 'black' },
    	    },
    	    series: {
    	        0: { color: '#F0A57C', lineWidth: 2, visibleInLegend: true },
    	        1: { color: '#91FFC3', lineWidth: 2, visibleInLegend: true }
    	    }
    	  };

    	  let chart1 = new google.visualization.LineChart(document.getElementById('line_chart1'));

    	  // 이벤트 리스너 추가
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
    	  });
    	  
    	  // 이벤트 리스너 추가
          google.visualization.events.addListener(chart1, 'click', function(event) {
              if (!event.targetID.match(/legendentry#\d+/)) {
                  var newUrl = '/ehr/chart/chart.do';
                  window.location.href = newUrl;
              }

          });
    	  
    	  chart1.draw(chartData1, options1);
    
    }
    });
    
    

  </script>
</body>
</html>
