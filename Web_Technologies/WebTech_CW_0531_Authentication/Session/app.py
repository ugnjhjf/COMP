from flask import Flask, render_template, request, redirect, url_for, session, flash
from werkzeug.security import generate_password_hash, check_password_hash

app = Flask(__name__)
app.secret_key = "your_secret_key"  # 用于会话加密

# 模拟用户数据
users = {
    "2159195": generate_password_hash("hi"),
    "user2": generate_password_hash("password2"),
}


@app.route("/login", methods=["GET", "POST"])
def login():
    if request.method == "POST":
        username = request.form["username"]
        password = request.form["password"]
        user_password_hash = users.get(username)

        if user_password_hash and check_password_hash(user_password_hash, password):
            session["user_id"] = username
            return redirect(url_for("dashboard"))
        else:
            flash("用户名或密码错误")
    return render_template("login.html")


@app.route("/dashboard")
def dashboard():
    if "user_id" in session:
        return render_template("dashboard.html", username=session["user_id"])
    return redirect(url_for("login"))


@app.route("/logout")
def logout():
    session.pop("user_id", None)
    return redirect(url_for("login"))


if __name__ == "__main__":
    app.run(debug=True)
