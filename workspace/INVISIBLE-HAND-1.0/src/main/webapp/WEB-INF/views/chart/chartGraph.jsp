<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/chart2.css">
<script src="../resources/js/jquery-3.7.0.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<title>보이지 않는 손 레이아웃</title>
</head>
<body>
  <!-- *---container Start---* -->
  <div class="h60px"></div>
  <div class="container-1200 con-main">
    <div class="wrap-1000">
      <!-- *---차트 카테고리---* -->
      <div class="category_wrap">
        <div class="categorybox active" data-tab="tab1">
          <div class="chart01">
            <p>chart01</p>
          </div>
        </div>
        <div class="categorybox" data-tab="tab2">
          <div class="chart02">
            <p>chart02</p>
          </div>
        </div>
        <div class="categorybox" data-tab="tab3">
          <div class="chart03">
            <p>chart03</p>
          </div>
        </div>
        <div class="categorybox" data-tab="tab4">
          <div class="chart04">
            <p>chart04</p>
          </div>
        </div>
      </div>
      <!-- **---카테고리랩 End---** -->

      <!-- 차트 영역 1234 -->
      <div class="tab-box tab1 active">
        <div id="line_chart1"></div>
      </div>

      <div class="tab-box tab2">
        <div id="line_chart2"></div>
      </div>

      <div class="tab-box tab3">
        <div id="line_chart3"></div>
      </div>

      <div class="tab-box tab4">
        <div id="chart_div"></div>
      </div>

    </div>
    <!-- **---wrap End---** -->
  </div>
  <!-- **---container End---** -->


<script>
$(".categorybox").click(function() {
    $(this).siblings().removeClass("active");
    $(this).addClass("active");
    let clickTab = $(this).attr("data-tab");
    $(".tab-box").removeClass("active");
    $("." + clickTab).addClass("active");
});

google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// 차트 생성
function drawChart() {
  const originalData1 = new google.visualization.arrayToDataTable([
      ['Year', 'one', 'two','three'],
      ['2019', 1030, 540, 650],
      ['2020', 980, 420, 1700],
      ['2021', 1170, 460, 800],
      ['2022', 660, 1120, 1900],
      ['2023', 1030, 540, 1000]
    ]);

  let data1 = originalData1.clone();
    
  let options1 = {
	  title: '차트1',
	  pointSize: 15,
	  width: 1000,
	  height: 500,
	  titleTextStyle: { color: 'black' },
	  hAxis: {
	    textStyle: { fontSize: 15, color: 'black' },
	    baselineColor: 'black'
	  },
	  vAxis: {
	    title: 'title',
	    viewWindow: {
	      min: 0,
	      max: 2000
	    },
	    format: '#,###',
	  },
	  legend: {
	    textStyle: { position: 'top', fontSize: 13, color: 'black' },
	  },
	  series: {
	    0: { color: '#F0A57C', lineWidth: 2, visibleInLegend: true },
	    1: { color: '#91FFC3', lineWidth: 2, visibleInLegend: true },
	    2: { color: 'brown', lineWidth: 2, visibleInLegend: true }
	  }
	};

  let chart1 = new google.visualization.LineChart(document.getElementById('line_chart1'));

  // 이벤트 리스너 추가
  google.visualization.events.addListener(chart1, 'click', function(target) {
    if (target.targetID.match(/legendentry#\d+/)) {
      let index = parseInt(target.targetID.slice(12));
  
      for (let i = 0; i < data1.getNumberOfRows(); i++) {
        let value = data1.getValue(i, index + 1);
  
        if (value === null) {
          data1.setValue(i, index + 1, originalData1.getValue(i, index + 1));
        } else {
          data1.setValue(i, index + 1, null);
        }
      }
  
      chart1.draw(data1, options1);
    }
  });
  
  chart1.draw(data1, options1);

  //차트2
  const originalData2 = new google.visualization.DataTable();
  originalData2.addColumn('string', 'Year');
  originalData2.addColumn('number', 'one');
  originalData2.addColumn('number', 'two');
  
  originalData2.addRows([
    ['2004', 1000, 400],
    ['2005', 1170, 460],
    ['2006', 660, 1120],
    ['2007', 1030, 540]
  ]);

  let data2 = originalData2.clone();

  let options2 = {
    title: '기업 경기 현황',
    width: 1000,
    height: 500,
    vAxis: { // 세로 
      title: 'title', // vAxis 타이틀 수정
      textStyle: { fontSize: 15, color: 'black' },
      viewWindow: {
        min: 0,
        max: 2000
      },
      format: '#,###'
    },
    legend: {
      textStyle: { position: 'top', fontSize: 13, color: 'black' },
    },
    series: {
      0: { color: 'red', lineWidth: 2, visibleInLegend: true },
      1: { color: 'blue', lineWidth: 2, visibleInLegend: true }
    }
  };

  let chart2 = new google.visualization.LineChart(document.getElementById('line_chart2'));

  // 이벤트 리스너 추가
  google.visualization.events.addListener(chart2, 'click', function(target) {
    if (target.targetID.match(/legendentry#\d+/)) {
      let index = parseInt(target.targetID.slice(12));

      for (let i = 0; i < data2.getNumberOfRows(); i++) {
        let value = data2.getValue(i, index + 1);

        if (value === null) {
          data2.setValue(i, index + 1, originalData2.getValue(i, index + 1));
        } else {
          data2.setValue(i, index + 1, null);
        }
      }

      chart2.draw(data2, options2);
    }
  });

  chart2.draw(data2, options2);
  
  // 차트3
  const originalData3 = new google.visualization.DataTable();
  originalData3.addColumn('string', 'Year');
  originalData3.addColumn('number', 'one');
  originalData3.addColumn('number', 'two');
  
  originalData3.addRows([
    ['2019', 1000, 400],
    ['2020', 1000, 400],
    ['2021', 1170, 460],
    ['2022', 660, 1120],
    ['2023', 1030, 540]
  ]);
  
  let data3 = originalData3.clone();
  
  let options3 = {
    title: '수입성',
    fontSize: 15,
    lineWidth: 5,
    width: 1000,
    height: 500,
    vAxis: { // 세로 
      title: 'title', // vAxis 타이틀 수정
      textStyle: { fontSize: 15, color: 'black' },
      viewWindow: {
        min: 0,
        max: 2000
      },
      format: '#,###',
    },
    legend: {
      textStyle: { position: 'top', fontSize: 13, color: 'black' },
    },
    series: {
      0: { color: 'black', lineWidth: 2 },
      1: { color: 'blue', lineWidth: 2 }
    }
  };
  
  let chart3 = new google.visualization.LineChart(document.getElementById('line_chart3'));
  
  // 이벤트 리스너 추가
  google.visualization.events.addListener(chart3, 'click', function(target) {
    if (target.targetID.match(/legendentry#\d+/)) {
      let index = parseInt(target.targetID.slice(12));
  
      for (let i = 0; i < data3.getNumberOfRows(); i++) {
        let value = data3.getValue(i, index + 1);
  
        if (value === null) {
          data3.setValue(i, index + 1, originalData3.getValue(i, index + 1));
        } else {
          data3.setValue(i, index + 1, null);
        }
      }
  
      chart3.draw(data3, options3);
    }
  });
  
  chart3.draw(data3, options3);
  
  //차트 4
  const originalData4 = new google.visualization.DataTable();
  originalData4.addColumn('string', 'Month');
  originalData4.addColumn('number', 'A');
  originalData4.addColumn('number', 'B');
  
  originalData4.addRows([
    ['1월', 1200, 1500],
    ['2월', 910, 1710],
    ['3월', 500, 750],
    ['4월', 750, 1830],
    ['5월', 1400, 1440],
    ['6월', 1500, 1650],
  ]);
  
  let data4 = originalData4.clone();
  
  let options4 = {
    title : '이중 차트 테스트',
    fontSize: 15,
    width : 1000,
    height : 500,
    vAxis: { // 세로 
      title: 'title', // vAxis 타이틀 수정
      textStyle: { fontSize: 15, color: 'black' },
      gridlines: { color: '#8898A1' }, // 중간 선 색
      baselineColor: '8898A1',
      viewWindow: {
        min: 0,
        max: 2000
      },
      format: '#,###',
    },
    hAxis: {title: 'Month'},
    seriesType: 'bars',
    series: {0: {type: 'line', lineWidth: 2 }},
    colors: ['black', '#ccff99']
  };
  let chart4 = new google.visualization.ComboChart(document.getElementById('chart_div'));

	google.visualization.events.addListener(chart4, 'click', function(target) {
		if (target.targetID.match(/legendentry#\d+/)) {
		  let index = parseInt(target.targetID.slice(12));
		
		  for (let i = 0; i < data4.getNumberOfRows(); i++) {
		    let value = data4.getValue(i, index + 1);
		
		    if (value === null) {
		      data4.setValue(i, index + 1, originalData4.getValue(i, index + 1));
		    } else {
		      data4.setValue(i, index + 1, null);
		    }
		  }
		
		  chart4.draw(data4, options4);
		}
	});
  
  chart4.draw(data4, options4);
}


$(window).resize(function() {
 drawChart();
});
</script>