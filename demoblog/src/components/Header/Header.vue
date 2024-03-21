<template>
<!--  <div id="header" style="height: 20px;padding-left: 200px;width: 200px">-->
    <el-menu :default-active="test5-4" class="el-menu-demo" mode="horizontal" style="margin-left: 200px">
      <el-menu-item index="test5-4">交通监控数据</el-menu-item>
      <el-menu-item index="test5-5">客运危运数据</el-menu-item>
      <el-menu-item index="test5-6">企业安全数据</el-menu-item>
      <el-submenu index="2">
        <template slot="title">道路运输中心</template>
        <el-menu-item index="test5-1">车辆异常数据</el-menu-item>
        <el-menu-item index="test5-2">地区排名数据</el-menu-item>
        <el-menu-item index="test5-3">运营商数据</el-menu-item>
      </el-submenu>
    </el-menu>
<!--    <el-menu :default-active="path"
             router
             class="el-menu-demo"
             mode="horizontal">
      <el-menu-item index="test5-4">交通监控数据</el-menu-item>
      <el-menu-item index="test5-5">客运危运数据</el-menu-item>
      <el-menu-item index="test5-6">企业安全数据</el-menu-item>
      <el-submenu index="2">
        <template slot="title">道路运输中心</template>
        <el-menu-item index="test5-1">车辆异常数据</el-menu-item>
        <el-menu-item index="test5-2">地区排名数据</el-menu-item>
        <el-menu-item index="test5-3">运营商数据</el-menu-item>
      </el-submenu>
    </el-menu>-->
<!--  </div>-->
</template>

<script>
export default {
  name: "header",
  data(){
    return{
      path:this.$route.path
    }
  },
  created(){
    console.log(this.$route.path)
  }
}

</script>

<style scoped>

</style>
