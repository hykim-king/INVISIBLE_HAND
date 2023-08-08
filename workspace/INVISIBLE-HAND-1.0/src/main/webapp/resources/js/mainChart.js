    //차트 관련
    $(document).ready(function () {
    function loadChartData() {
        $.ajax({
            url: '/ehr/main/chartGraph.do',
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
          google.visualization.events.addListener(chart1, 'click', function(event) {
              if (!event.targetID.match(/legendentry#\d+/)) {
                  var newUrl = '/ehr/chart/chart.do';
                  window.location.href = newUrl;
              }

          }); // 이벤트 리스너 2
    	  
    	  chart1.draw(chartData1, options1);
    
    } //funciton drawChart
    }); //차트 관련 doucument