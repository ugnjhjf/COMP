import Vue from "vue";
import App from "./App.vue";
import router from "../router/index.js";  // 确保路径正确

Vue.config.productionTip = false;

new Vue({
  el: "#app",
  router,
  render: h => h(App),
});
