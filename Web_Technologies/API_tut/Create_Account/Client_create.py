import requests

url = "http://127.0.0.1:5000/api/create_account"

user_data = {
    "username": "echidna",
    "password": "123456",
    "email": "rokidna@gnetwork.space",
}

response = requests.post(url, json=user_data)

print(response.json())
