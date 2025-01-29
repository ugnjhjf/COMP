from flask import Flask, request, make_response, render_template
from datetime import datetime

app = Flask(__name__)


@app.route("/")
def index():
    last_visit = request.cookies.get("lastVisit")  # 第一次访问为none
    response = make_response(render_template("index.html", last_visit=last_visit))

    current_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    response.set_cookie("lastVisit", current_time)
    return response


if __name__ == "__main__":
    app.run(debug=True)
