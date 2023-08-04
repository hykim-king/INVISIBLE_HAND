import json
# python 3.x 버전에서 사용 (2.x 버전이라면 from urllib import urlopen)
from urllib.request import urlopen
with urlopen(
        "https://kosis.kr/openapi/statisticsData.do?method=getList&apiKey=MGM3OWUwNGY2ZTgzM2E0MjI3MzliZDliMmUxYTdhMTY=&format=json&jsonVD=Y&userStatsId=dbsghd3820/340/DT_D10111/2/1/20230712152740&prdSe=M&newEstPrdCnt=3") as url:
    json_file = url.read()
py_json = json.loads(json_file.decode('utf-8'))
for temp in py_json:
    print(temp)
    #print("경기전반실적:"+temp['DT'] + " " + temp['PRD_DE'])
