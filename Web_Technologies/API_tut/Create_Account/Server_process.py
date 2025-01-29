from flask import Flask, request, jsonify

app = Flask(__name__)


@app.route("/api/create_account", methods=["POST"])
def create_user():
    # 获取请求中的JSON数据
    user_data = request.json

    # 构造要保存的字符串
    # 构造要保存的字符串，注意字段之间加上逗号后的空格
    user_info = f"username: {user_data.get('username')}, password: {user_data.get('password')}, email: {user_data.get('email')}\n"

    # 将用户信息保存到文本文件中
    with open("users.txt", "a") as file:
        file.write(user_info)

    # 响应消息
    response = {
        "status": "success",
        "message": "User created successfully",
        "data": user_data.get("username"),
    }
    return jsonify(response), 201


@app.route("/api/login_email", methods=["POST"])
def login_email():
    # Get the JSON data from the request
    login_data = request.json
    email = login_data.get("email")
    password = login_data.get("password")

    # Open the users.txt file and check each line for a match
    with open("users.txt", "r") as file:
        for line in file:
            if f"password:{password},email:{email}," in line:
                message = f"Welcome back, {email}!"
                return jsonify({"status": "success", "message": message}), 200

    return jsonify({"status": "error", "message": "Invalid email or password"}), 401


@app.route("/api/login_username", methods=["POST"])
def login_username():
    login_data = request.json
    username = login_data.get("username")
    password = login_data.get("password")

    with open("users.txt", "r") as file:
        for line in file:
            # 注意检查字符串时，逗号后需要有空格与文件中的格式一致
            if f"username: {username}, password: {password}," in line:
                message = f"Welcome back, {username}!"
                return jsonify({"status": "success", "message": message}), 200

    return jsonify({"status": "error", "message": "Invalid username or password"}), 401


if __name__ == "__main__":
    app.run(debug=True)
