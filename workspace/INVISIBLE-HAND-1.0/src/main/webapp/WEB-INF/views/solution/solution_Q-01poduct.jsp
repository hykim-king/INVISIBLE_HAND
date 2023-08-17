<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="image/favicon-32x32.png">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/solution.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<title>보이지 않는 손 레이아웃</title>

</head>
<body>
  <div class="h60px"></div>
  <div class="container-1400">
    <div class="wrap-1000">
            <form action="/solution/solution_Q_01" method="post" class="form cf">
                <h2>1. 월간 경기동향 실적</h2>
                <p>*전월 대비 실적 전망에 해당하는 번호를 선택 바랍니다.</p>
                <div class="que-wrap">
                    <div class="que que01">
                        <h4>1. 귀사만의 경기전반에 대해 체크해주십시오.</h4>
                        <div class="cntr">
                            
                            <label for="opt1" class="radio">
                                <input type="radio" name="rdo1" id="opt1" class="hidden"/>
                                <span class="label">매우 나쁨</span>
                            </label>
                            
                            <label for="opt2" class="radio">
                                <input type="radio" name="rdo1" id="opt2" class="hidden"/>
                                <span class="label">다소 나쁨</span>
                            </label>
                            
                            <label for="opt3" class="radio">
                                <input type="radio" name="rdo1" id="opt3" class="hidden"/>
                                <span class="label">동일</span>
                            </label>
                            
                            <label for="opt4" class="radio">
                                <input type="radio" name="rdo1" id="opt4" class="hidden"/>
                                <span class="label">다소 좋음</span>
                            </label>
                            
                            <label for="opt5" class="radio">
                                <input type="radio" name="rdo1" id="opt5" class="hidden"/>
                                <span class="label">매우 좋음</span>
                            </label>
                            
                        </div>
                    </div>
                    <div class="que que02">
                        <h4>2. 생산수준에대한 지표를 체크해주십시오.</h4>
                        <div class="cntr">
                            
                            <label for="opt1" class="radio">
                                <input type="radio" name="rdo2" id="opt1" class="hidden"/>
                                <span class="label">매우 감소</span>
                            </label>
                            
                            <label for="opt2" class="radio">
                                <input type="radio" name="rdo2" id="opt2" class="hidden"/>
                                <span class="label">다소 감소</span>
                            </label>
                            
                            <label for="opt3" class="radio">
                                <input type="radio" name="rdo2" id="opt3" class="hidden"/>
                                <span class="label">동일</span>
                            </label>
                            
                            <label for="opt4" class="radio">
                                <input type="radio" name="rdo2" id="opt4" class="hidden"/>
                                <span class="label">다소 증가</span>
                            </label>
                            
                            <label for="opt5" class="radio">
                                <input type="radio" name="rdo2" id="opt5" class="hidden"/>
                                <span class="label">매우 증가</span>
                            </label>
                            
                        </div>
                    </div>
                    <div class="que que03">
                        <h4>3. 내수 판매상황에대한 지표를 체크해주십시오.</h4>
                        <div class="cntr">
                            
                            <label for="opt1" class="radio">
                                <input type="radio" name="rdo3" id="opt1" class="hidden"/>
                                <span class="label">매우 감소</span>
                            </label>
                            
                            <label for="opt2" class="radio">
                                <input type="radio" name="rdo3" id="opt2" class="hidden"/>
                                <span class="label">다소 감소</span>
                            </label>
                            
                            <label for="opt3" class="radio">
                                <input type="radio" name="rdo3" id="opt3" class="hidden"/>
                                <span class="label">동일</span>
                            </label>
                            
                            <label for="opt4" class="radio">
                                <input type="radio" name="rdo3" id="opt4" class="hidden"/>
                                <span class="label">다소 증가</span>
                            </label>
                            
                            <label for="opt5" class="radio">
                                <input type="radio" name="rdo3" id="opt5" class="hidden"/>
                                <span class="label">매우 증가</span>
                            </label>
                            
                        </div>
                    </div>
                    <div class="que que04">
                        <h4>4. 수출 판매현황에대한 지표를 체크해주십시오.</h4>
                        <div class="cntr">
                            
                            <label for="opt1" class="radio">
                                <input type="radio" name="rdo4" id="opt1" class="hidden"/>
                                <span class="label">매우 감소</span>
                            </label>
                            
                            <label for="opt2" class="radio">
                                <input type="radio" name="rdo4" id="opt2" class="hidden"/>
                                <span class="label">다소 감소</span>
                            </label>
                            
                            <label for="opt3" class="radio">
                                <input type="radio" name="rdo4" id="opt3" class="hidden"/>
                                <span class="label">동일</span>
                            </label>
                            
                            <label for="opt4" class="radio">
                                <input type="radio" name="rdo4" id="opt4" class="hidden"/>
                                <span class="label">다소 증가</span>
                            </label>
                            
                            <label for="opt5" class="radio">
                                <input type="radio" name="rdo4" id="opt5" class="hidden"/>
                                <span class="label">매우 증가</span>
                            </label>
                            
                        </div>
                    </div>
                    <div class="que que05">
                        <h4>5. 영업이익(수익성)에대한 지표를 체크해주십시오.</h4>
                        <div class="cntr">
                                
                            <label for="opt1" class="radio">
                                <input type="radio" name="rdo5" id="opt1" class="hidden"/>
                                <span class="label">매우 감소</span>
                            </label>
                            
                            <label for="opt2" class="radio">
                                <input type="radio" name="rdo5" id="opt2" class="hidden"/>
                                <span class="label">다소 감소</span>
                            </label>
                            
                            <label for="opt3" class="radio">
                                <input type="radio" name="rdo5" id="opt3" class="hidden"/>
                                <span class="label">동일</span>
                            </label>
                            
                            <label for="opt4" class="radio">
                                <input type="radio" name="rdo5" id="opt4" class="hidden"/>
                                <span class="label">다소 증가</span>
                            </label>
                            
                            <label for="opt5" class="radio">
                                <input type="radio" name="rdo5" id="opt5" class="hidden"/>
                                <span class="label">매우 증가</span>
                            </label>
                            
                        </div>
                    </div>
                    <div class="que que06">
                        <h4>6. 자금 사정에대한 지표를 체크해주십시오</h4>
                        <div class="cntr">
                            
                            <label for="opt1" class="radio">
                                <input type="radio" name="rdo6" id="opt1" class="hidden"/>
                                <span class="label">매우 악화</span>
                            </label>
                            
                            <label for="opt2" class="radio">
                                <input type="radio" name="rdo6" id="opt2" class="hidden"/>
                                <span class="label">다소 악화</span>
                            </label>
                            
                            <label for="opt3" class="radio">
                                <input type="radio" name="rdo6" id="opt3" class="hidden"/>
                                <span class="label">동일</span>
                            </label>
                            
                            <label for="opt4" class="radio">
                                <input type="radio" name="rdo6" id="opt4" class="hidden"/>
                                <span class="label">다소 좋음</span>
                            </label>
                            
                            <label for="opt5" class="radio">
                                <input type="radio" name="rdo6" id="opt5" class="hidden"/>
                                <span class="label">매우 좋음</span>
                            </label>
                            
                        </div>
                    </div>
                </div><!--que-wrap End-->

                <h2>2. 생산설비, 제품재고, 종사자수 수준</h2>
                <p>*시장수요 등을 감안하여 다음달 보유예정인 생산설비, 제품제고, 종사자수의 적정 수준을 판단하여 해당하는 번호를 선택 바랍니다.</p>
                <div class="que-wrap">
                    <div class="que que07">
                        <h4>7. 원자재 조달사정에대한 지표를 체크해주십시오</h4>
                        <div class="cntr">
                            
                            <label for="opt1" class="radio">
                                <input type="radio" name="rdo7" id="opt1" class="hidden"/>
                                <span class="label"></span>매우 곤란
                            </label>
                            
                            <label for="opt2" class="radio">
                                <input type="radio" name="rdo7" id="opt2" class="hidden"/>
                                <span class="label"></span>다소 곤란
                            </label>
                            
                            <label for="opt3" class="radio">
                                <input type="radio" name="rdo7" id="opt3" class="hidden"/>
                                <span class="label"></span>동일
                            </label>
                            
                            <label for="opt4" class="radio">
                                <input type="radio" name="rdo7" id="opt4" class="hidden"/>
                                <span class="label"></span>다소 원활
                            </label>
                            
                            <label for="opt5" class="radio">
                                <input type="radio" name="rdo7" id="opt5" class="hidden"/>
                                <span class="label"></span>매우 원활
                            </label>
                        </div>
                    </div>
                    <div class="que que08">
                        <h4>8. 생산 설비수준에대한 지표를 체크해주십시오</h4>
                        <div class="cntr">
                            
                            <label for="opt1" class="radio">
                                <input type="radio" name="rdo8" id="opt1" class="hidden"/>
                                <span class="label"></span>매우 부족
                            </label>
                            
                            <label for="opt2" class="radio">
                                <input type="radio" name="rdo8" id="opt2" class="hidden"/>
                                <span class="label"></span>다소 부족
                            </label>
                            
                            <label for="opt3" class="radio">
                                <input type="radio" name="rdo8" id="opt3" class="hidden"/>
                                <span class="label"></span>적정
                            </label>
                            
                            <label for="opt4" class="radio">
                                <input type="radio" name="rdo8" id="opt4" class="hidden"/>
                                <span class="label"></span>다소 과잉
                            </label>
                            
                            <label for="opt5" class="radio">
                                <input type="radio" name="rdo8" id="opt5" class="hidden"/>
                                <span class="label"></span>매우 과잉
                            </label>
                            
                        </div>
                    </div>
                    <div class="que que09">
                        <h4>9. 제품 재고수준에대한 지표를 체크해주십시오.</h4>
                        <div class="cntr">
                            
                            <label for="opt1" class="radio">
                                <input type="radio" name="rdo9" id="opt1" class="hidden"/>
                                <span class="label"></span>매우 부족
                            </label>
                            
                            <label for="opt2" class="radio">
                                <input type="radio" name="rdo9" id="opt2" class="hidden"/>
                                <span class="label"></span>다소 부족
                            </label>
                            
                            <label for="opt3" class="radio">
                                <input type="radio" name="rdo9" id="opt3" class="hidden"/>
                                <span class="label"></span>적정
                            </label>
                            
                            <label for="opt4" class="radio">
                                <input type="radio" name="rdo9" id="opt4" class="hidden"/>
                                <span class="label"></span>다소 과잉
                            </label>
                            
                            <label for="opt5" class="radio">
                                <input type="radio" name="rdo9" id="opt5" class="hidden"/>
                                <span class="label"></span>매우 과잉
                            </label>
                            
                        </div>
                    </div>
                    <div class="que que10">
                        <h4>10. 종사자 수에대한 지표를 체크해주십시오.</h4>
                        <div class="cntr">
                                
                            <label for="opt1" class="radio">
                                <input type="radio" name="rdo10" id="opt1" class="hidden"/>
                                <span class="label"></span>매우 부족
                            </label>
                            
                            <label for="opt2" class="radio">
                                <input type="radio" name="rdo10" id="opt2" class="hidden"/>
                                <span class="label"></span>다소 부족
                            </label>
                            
                            <label for="opt3" class="radio">
                                <input type="radio" name="rdo10" id="opt3" class="hidden"/>
                                <span class="label"></span>적정
                            </label>
                            
                            <label for="opt" class="radio">
                                <input type="radio" name="rdo10" id="opt4" class="hidden"/>
                                <span class="label"></span>다소 과잉
                            </label>
                            
                            <label for="opt5" class="radio">
                                <input type="radio" name="rdo10" id="opt5" class="hidden"/>
                                <span class="label"></span>매우 과잉
                            </label>
                        </div>
                    </div>
                </div><!--que-wrap End-->
                
                <h2>3. 생산설비 가동률</h2>
                <p>*시장수요 등을 감안하여 다음달 보유예정인 생산설비, 제품제고, 종사자수의 적정 수준을 판단하여 해당하는 번호를 선택 바랍니다.</p>
                <p>*생상설비 추가설치 또는 철거 등 이번 달 생산 능력에 변동이 있을 경우 증가 또는 감소에 체크해주십시오</p>
                <div class="que-wrap que-wrqp-flex">
                    <div class="que-box">
                        <h4>지난달 가동률</h4>
                        <input type="text" name="percent" id="percent" class="percent" placeholder="0~100"/>%
                    </div>
                    <div class="que-box">
                        <h4>이번달 가동률</h4>
                        <input type="text" name="percent" id="percent" class="percent" placeholder="0~100"/>%
                    </div>
                    <div class="que-box">
                        <h4>이번달 생산능력</h4>
                        <label for="opt1" class="radio">
                            <input type="radio" name="rdo11" id="opt1" class="hidden"/>
                            <span class="label"></span>증가
                        </label>
                        <label for="opt2" class="radio">
                            <input type="radio" name="rdo11" id="opt2" class="hidden"/>
                            <span class="label"></span>감소
                        </label>              
                        <label for="opt3" class="radio">
                            <input type="radio" name="rdo11" id="opt3" class="hidden"/>
                            <span class="label"></span>동일
                        </label>
                    </div>
                </div><!--que-wrap End-->
                
                <h2>4. 기업경영상 애로요인</h2>
                <p>*당원 기준으로 해당 항목을 모두 선택해 주시기 바랍니다.</p>
                <div class="que-wrap">
                    <div class="line line01">
                        <label for="opt1" class="radio">
                            <input type="radio" name="rdo01" id="opt1" class="hidden"/>
                            <span class="label">01) 인력확보난</span>
                        </label>    
                        <label for="opt2" class="radio">
                            <input type="radio" name="rdo02" id="opt2" class="hidden"/>
                            <span class="label">02) 인건비 상승</span>
                        </label>        
                        <label for="opt3" class="radio">
                            <input type="radio" name="rdo03" id="opt3" class="hidden"/>
                            <span class="label">03) 물류비상승 및 운송난</span>
                        </label>        
                    </div>
                    <div class="line line02">
                        <label for="opt3" class="radio">
                            <input type="radio" name="rdo04" id="opt3" class="hidden"/>
                            <span class="label">04) 기술경쟁력 약화</span>
                        </label>
                        <label for="opt5" class="radio">
                            <input type="radio" name="rdo05" id="opt5" class="hidden"/>
                            <span class="label">05) 제품(판매)단가 하락</span>
                        </label>    
                        <label for="opt6" class="radio">
                            <input type="radio" name="rdo06" id="opt6" class="hidden"/>
                            <span class="label">06) 고금리</span>
                        </label>        
                    </div>
                    <div class="line line03">
                        <label for="opt7" class="radio">
                            <input type="radio" name="rdo07" id="opt7" class="hidden"/>
                            <span class="label">07) 설비노후 및 부족</span>
                        </label>        
                        <label for="opt8" class="radio">
                            <input type="radio" name="rdo08" id="opt8" class="hidden"/>
                            <span class="label">08) 계절적 비수기</span>
                        </label>
                        <label for="opt9" class="radio">
                        <input type="radio" name="rdo09" id="opt9" class="hidden"/>
                        <span class="label">09) 환율변동</span>
                        </label>    
                    </div>
                    <div class="line line04">
                        <label for="opt10" class="radio">
                            <input type="radio" name="rdo010" id="opt10" class="hidden"/>
                            <span class="label">10) 내수부진</span>
                        </label>        
                        <label for="opt11" class="radio">
                            <input type="radio" name="rdo011" id="opt11" class="hidden"/>
                            <span class="label">11) 수출부진</span>
                        </label>        
                        <label for="opt12" class="radio">
                            <input type="radio" name="rdo012" id="opt12" class="hidden"/>
                            <span class="label">12)판매대금 회수 지연</span>
                        </label>
                    </div>
                    <div class="line line05">
                        <label for="opt13" class="radio">
                            <input type="radio" name="rdo013" id="opt13" class="hidden"/>
                            <span class="label">13) 자금조달 곤란</span>
                        </label>    
                        <label for="opt14" class="radio">
                            <input type="radio" name="rdo014" id="opt14" class="hidden"/>
                            <span class="label">14) 업체간 과당경쟁</span>
                        </label>        
                        <label for="opt15" class="radio">
                            <input type="radio" name="rdo015" id="opt15" class="hidden"/>
                            <span class="label">15) 원자재 가격 상승</span>
                        </div>
                    <div class="line line06">
                        </label>        
                        <label for="opt16" class="radio radio16">
                            <input type="radio" name="rdo016" id="opt16" class="hidden"/>
                            <span class="label">16) 원자재(원재료) 구득난</span>
                        </label>
                        <label for="opt17" class="radio">
                            <input type="radio" name="rdo017" id="opt17" class="hidden"/>
                            <span class="label">17) 모기업 불공정거래</span>
                        </label>   
                            
                    </div>
                </div><!--que-wrap End-->
                <div class="submit">

                    <input type="submit" value="제출하기" class="go-result">
                </div>

            </form>
        </div><!-- **---wrap End---** -->
  </div> <!-- **---container End---** -->

<script>
    $(document).ready(function () {
        // 반복문을 사용하여 각 그룹의 라벨 클릭 이벤트 핸들러 설정
        var groups = ['que04', 'que05']; // 그룹 클래스 이름들

        groups.forEach(function(group) {
        	
            $("." + group + " .radio label").click(function () {
                var radio = $(this).find("input[type=radio]");
                $("." + group + " input[type=radio]").prop("checked", false);
                radio.prop("checked", true);
                alert("야");
            });
        });
    });
</script>
</body>
</html>