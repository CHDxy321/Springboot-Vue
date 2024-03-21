<template>
  <div class="content-box">
    <div class="pageTop">
      <el-breadcrumb separator-class="el-icon-arrow-right">
        <el-breadcrumb-item :to="{ path: '/permission/people' }">系统权限管理</el-breadcrumb-item>
        <el-breadcrumb-item>人员管理</el-breadcrumb-item>
      </el-breadcrumb></div>

    <div class="page" style="width: 100%;margin-top: 5px"></div>
    <div class="pageLeft" style="display: inline-block">
      <div class="pageContentTitle"
      style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
        部门管理
      </div>
    </div>

    <div class="pageRight" style="display: inline-block">
      <div class="pageContentTitle" style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
        部门管理
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: "people",
    data() {
      return {

      };
    },
    methods: {

    }
  }
</script>

<style scoped>
  .pageTop{
    background: #fff;
    width: 100%;
    height: 30px;
    padding-top: 20px;
    padding-left: 20px;
  }
  .pageLeft{
    background: #fff;
    border: 1px solid #ddd;
    width: 70%;
    margin-left: 0.5% ;
    margin-right: 0.1%;
    float: left;
  }

  .pageRight{
    background: #fff;
    border: 1px solid #ddd;
    width: 28.5%;
    float: right;
  }
</style>
