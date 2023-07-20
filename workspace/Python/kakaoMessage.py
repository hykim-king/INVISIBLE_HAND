import requests
import json
url = 'https://kauth.kakao.com/oauth/token'
rest_api_key = 'f31c888e52a3d0c408debceb44a2914d'
redirect_uri = 'https://example.com/oauth'
authorize_code = '받아온 authorize_code'

data = {
    'grant_type':'authorization_code',
    'client_id':rest_api_key,
    'redirect_uri':redirect_uri,
    'code': authorize_code,
    }

response = requests.post(url, data=data)
tokens = response.json()
print(tokens)

# json 저장

with open(r"C:\Users\user\Desktop\PythonWorkspace\kakao_test\kakao_code.json","w") as fp:
    json.dump(tokens, fp)