from flask import Flask, jsonify, request

app = Flask(__name__)


@app.route("/api/rokidna", methods=["GET"])
def get_rokidna():
    data = {"message": "Hello, Rokidna!"}
    return jsonify(data)


@app.route("/api/rokidna",methods=["POST"])
def post_rokidna():