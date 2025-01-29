from flask import Flask, request, jsonify, make_response
import jwt
import datetime
from functools import wraps

app = Flask(__name__)
app.config["SECRET_KEY"] = "your_secret_key"

# 模拟用户数据
users = {"user1": "password1", "user2": "password2"}


def token_required(f):
    @wraps(f)
    def decorated(*args, **kwargs):
        token = request.headers.get("Authorization")
        if not token:
            return jsonify({"message": "Token is missing!"}), 403

        try:
            data = jwt.decode(token, app.config["SECRET_KEY"], algorithms=["HS256"])
        except jwt.ExpiredSignatureError:
            return jsonify({"message": "Token has expired!"}), 403
        except jwt.InvalidTokenError:
            return jsonify({"message": "Invalid token!"}), 403

        return f(*args, **kwargs)

    return decorated


@app.route("/login", methods=["POST"])
def login():
    auth = request.json
    if not auth or not auth.get("username") or not auth.get("password"):
        return make_response(
            "Could not verify",
            401,
            {"WWW-Authenticate": 'Basic realm="Login required!"'},
        )

    user = auth.get("username")
    if user not in users or users[user] != auth.get("password"):
        return make_response(
            "Could not verify",
            401,
            {"WWW-Authenticate": 'Basic realm="Login required!"'},
        )

    token = jwt.encode(
        {
            "user": user,
            "exp": datetime.datetime.utcnow() + datetime.timedelta(minutes=30),
        },
        app.config["SECRET_KEY"],
        algorithm="HS256",
    )

    return jsonify({"token": token})


@app.route("/protected", methods=["GET"])
@token_required
def protected():
    return jsonify({"message": "This is a protected route!"})


if __name__ == "__main__":
    app.run(debug=True)
