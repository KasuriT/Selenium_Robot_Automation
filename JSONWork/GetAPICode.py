import json
import jsonpath
import requests
API_URL = 'https://reqres.in/api/users?page=2'

# Make a request
response1 = requests.get(API_URL)
print(response1.text)

# Validate Status Code
assert response1.status_code == 200

# apply json path
x = jsonpath.jsonpath(json_response, 'total')
print(x)

# Parse response into json format
json_response = json.loads(response1.text)
print(json_response)

y=jsonpath.jsonpath(json_response, 'data[0].first_name')
print(y[0])

for val in json_response['data']:
    print(val('first_name'))