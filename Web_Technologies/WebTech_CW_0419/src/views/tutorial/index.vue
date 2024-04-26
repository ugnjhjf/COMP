 <template>
  <div>
    <h1>从零构建Vue项目</h1>

    <button class="my-button" @click="handleClick">{{ buttonText }}</button>
    <input v-model="count" />
  </div>
</template>
     
<script>
export default {
  data() {
    return {
      buttonText: "新增",
      count: 0,
    };
  },
  methods: {
    handleClick() {
      this.count += 1;
    },
  },
};
</script>
<style>
</style>
     
