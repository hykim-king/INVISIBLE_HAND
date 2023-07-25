import requests
import json
import os

#1.
my_dic = os.path.dirname(__file__)
with open(r"{0}\kakao_code.json".format(my_dic),"r") as fp:
    tokens = json.load(fp)

url="https://kapi.kakao.com/v2/api/talk/memo/default/send"

headers={
    "Authorization" : "Bearer " + tokens["access_token"]
}
print(headers)
data={
    "template_object": json.dumps({
        "object_type":"text",
        "text":"Hello, world!",
        "link":{
            "web_url":"www.naver.com"
        }
    })
}

response = requests.post(url, headers=headers, data=data)
if response.json().get('result_code') == 0:
    print('메시지를 성공적으로 보냈습니다.')
else:
    print('메시지를 성공적으로 보내지 못했습니다. 오류메시지 : ' + str(response.json()))