from flask import Flask, jsonify, request
app = Flask(__name__)

# 一个简单的GET端点
@app.route('/api/data', methods=['GET'])
def get_data():
    data = {"message": "Hello, World!"}
    return jsonify(data)

# 一个接收参数返回处理结果的POST端点
@app.route('/api/data', methods=['POST'])
def post_data():
    # 假设我们从请求的JSON体中获取数据
    content = request.json
    response = {"received": content}
    return jsonify(response)

if __name__ == '__main__':
    app.run(debug=True)
