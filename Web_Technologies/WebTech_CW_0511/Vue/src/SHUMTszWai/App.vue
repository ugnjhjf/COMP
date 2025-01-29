<template>
  <div>
    <div><h1>2159195岑子威 SHUM Tsz Wai</h1></div>
    <div id="app">
      <p>{{ greetingMessage }}</p>
      <router-view />
    </div>
  </div>
</template>

<script>
import greeting from "./SHUMTszWai.js";

export default {
  name: "App",
  data() {
    return {
      greetingMessage: greeting("Shum Tsz Wai"),
    };
  },
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
