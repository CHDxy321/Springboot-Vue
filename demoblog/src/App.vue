<template>
  <div id="app">
<!--    开窗口切换页面 可切换位置显示-->
    <router-view></router-view>

  </div>
</template>


<script>
export default {
      name: 'App'
}
</script>

<style>
  @import "./assets/css/main.css";     /* 整体样式*/
  @import "./assets/css/color-dark.css";     /* 深色主题*/
</style>

