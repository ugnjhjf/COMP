import requests

# Correct the URL to the email login endpoint
url = "http://127.0.0.1:5000/api/login_email"

# Ensure the payload contains 'email' and 'password' for the email login endpoint
user_data = {"email": "echidna@gnetwork.space", "password": "123456"}

response = requests.post(url, json=user_data)
print(response.json())
