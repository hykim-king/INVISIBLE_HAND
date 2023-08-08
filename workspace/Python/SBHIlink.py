import json
from urllib.request import urlopen
with urlopen(
        "https://kosis.kr/openapi/statisticsData.do?method=getList&apiKey=MGM3OWUwNGY2ZTgzM2E0MjI3MzliZDliMmUxYTdhMTY=&format=json&jsonVD=Y&userStatsId=dbsghd3820/142/DT_D40141/2/1/20230808102323&prdSe=Y&newEstPrdCnt=3") as url:
    json_file = url.read()
py_json = json.loads(json_file.decode('utf-8'))
for temp in py_json:
    #print(temp)
    print("[테이블 이름:"+ temp['TBL_NM'] + "], " + "[연도:"+ temp['PRD_DE'] + "], " +  "[자산규모:"+ temp['ITM_NM'] + "], " + "[업종:" + temp['C1_NM'] + "], " + "[입력층:" + temp['C2_NM'] + "], " + "[데이터:" + temp['DT'] + "], ")