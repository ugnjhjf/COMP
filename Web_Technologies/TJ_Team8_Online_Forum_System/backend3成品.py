from flask import Flask, request, jsonify
from flask_cors import CORS
from pymongo import MongoClient
from bson import ObjectId
import datetime
import bcrypt

app = Flask(__name__)
CORS(app)  # 启用跨域资源共享

# 连接到MongoDB数据库
client = MongoClient('mongodb://localhost:27017/')
db = client.forum_db  # 使用forum_db作为数据库

# 用户注册路由
@app.route('/register', methods=['POST'])
def register_user():
    user_data = request.get_json()  # 从请求中获取JSON数据
    print("Received JSON Data:", user_data)  # 打印接收到的JSON数据

    # 添加创建时间
    user_data['created_at'] = datetime.datetime.utcnow()

    # 哈希密码
    if 'password' in user_data:
        password_bytes = user_data['password'].encode('utf-8')
        hashed = bcrypt.hashpw(password_bytes, bcrypt.gensalt())
        user_data['password'] = hashed.decode('utf-8')  # 存储哈希后的密码

    # 尝试插入数据到MongoDB的member集合
    try:
        result = db.member.insert_one(user_data)  # 存储到member集合
        return jsonify({'success': True, 'member_id': str(result.inserted_id)}), 201
    except Exception as e:
        print("Error inserting into database:", e)  # 打印错误信息
        return jsonify({'error': str(e)}), 500

# 运行Flask应用
if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
