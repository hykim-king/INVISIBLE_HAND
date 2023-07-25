import requests
import json
import os

url = 'https://kauth.kakao.com/oauth/token'
rest_api_key = 'f31c888e52a3d0c408debceb44a2914d'
redirect_uri = 'https://localhost:3000'
authorize_code = 'XxYBLL6xzuMq_K8Ex8Olo8g3PwJ41PWbtogKxdqNqdnwshzvsmifZPuPcXYTI-DXZ_rxqgopyWAAAAGJcMqWsg'
authorize_code_local ='6SD9GZPEmGP6gb0009xsXcgoH9JX3Uhd6ldSFujbsSktX5IRsXoKMb-YeWERh0O-QulpGwoqJZAAAAGJcOEB9Q'
data = {
    'grant_type':'authorization_code',
    'client_id':rest_api_key,
    'redirect_uri':redirect_uri,
    'code': authorize_code_local,
    }

response = requests.post(url, data=data)
tokens = response.json()
print(tokens)

# json 저장
my_dic = os.path.dirname(__file__)
with open(r"{0}\kakao_code.json".format(my_dic),"w") as fp:
    json.dump(tokens, fp)