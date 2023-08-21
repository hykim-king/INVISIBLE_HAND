<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
         <jsp:include page="/WEB-INF/views/chart/solution_chart.jsp"/>
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



</body>

<script>
	var sbhi = 1000;
</script>


</html>