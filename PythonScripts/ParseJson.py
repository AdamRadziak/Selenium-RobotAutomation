import requests
import json
import jsonpath

api_url="https://regres.in/api/users?page=2"
# make a request
response1 = requests.get(api_url)
print(response1.text)
# validate sttus code
# assert response1.status_code == 200

# parsing response into json format
json_response=json.loads(response1.text)
print(json_response)

# applying json path
x=jsonpath.jsonpath(json_response,"total")
print(x)
# json path inside one data
y=jsonpath.jsonpath(json_response,"data[0].last_name")
print(y[0])

# print every element of json
for val in json_response["data"]:
    print(val["first_name"])