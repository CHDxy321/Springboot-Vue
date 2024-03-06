<template>
  <div class="content-box">
    <div class="container">
      <p>主题页面</p>
    </div>
  </div>
</template>

<script>
  export default {
// 取数据
    created() {
      const _this = this;
      // "'http://localhost:8181/book/findAll/{page}/{size}"
      this.$axios.get('http://localhost:8080/test').then(function (resp) {
        console.log()

      })
    }
  }
</script>

<style scoped></style>


