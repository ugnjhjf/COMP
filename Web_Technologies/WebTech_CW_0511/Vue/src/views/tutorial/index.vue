 <template>
  <div>
    <h1>从零构建Vue项目</h1>
    <button class="my-button" @click="handleClick">{{ buttonText }}</button>
    <input v-model="count" />
    <!-- 新增按钮用于获取后端消息 -->
    <button @click="fetchHelloMessage">获取后端消息</button>
    <p>后端响应：{{ helloMessage }}</p>
    <!-- 显示从后端获取的消息 -->
    <h5>后端需要运行py脚本和安装部份依赖,后端运行在127.0.0.1:5000上</h5>
    <h5>pip install flask flask-cors</h5>
  </div>
</template>
     
<script>
import axios from "axios"; // 引入axios

export default {
  data() {
    return {
      buttonText: "新增",
      count: 0,
      helloMessage: "", // 用于存储从后端获取的消息
    };
  },
  methods: {
    handleClick() {
      this.count += 1;
    },
    fetchHelloMessage() {
      // 从后端获取数据
      axios
        .get("http://127.0.0.1:5000/hello")
        .then((response) => {
          this.helloMessage = response.data.message;
        })
        .catch((error) => {
          console.error("There was an error!", error);
        });
    },
  },
};
</script>

<style>
</style>
     
