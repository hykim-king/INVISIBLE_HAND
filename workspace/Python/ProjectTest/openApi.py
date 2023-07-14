import json
from urllib.request import urlopen

with urlopen("https://kosis.kr/openapi/statisticsData.do?method=getList&apiKey=NGRjMDY2NjcwYTlmNTlmMzI4NTVmMjZhMmRlZWFlOGI=&format=json&jsonVD=Y&userStatsId=hendey/340/DT_D10101/2/1/20230712155554&prdSe=M&startPrdDe=202301&endPrdDe=202305") as url:
    json_file = url.read()

py_json = json.loads(json_file.decode('utf-8'))
for temp in py_json:
    print(temp)
