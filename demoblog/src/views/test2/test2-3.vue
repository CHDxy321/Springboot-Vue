<template>
<div class="content-box">
  <div class="container">
    <!--面包屑导航-->
    <div style="margin-left: 10px">
      <el-breadcrumb separator-class="el-icon-arrow-right">
        <el-breadcrumb-item :to="{ path: '/test2/test2-1' }">数据统计查询</el-breadcrumb-item>
        <el-breadcrumb-item>车辆运输信息</el-breadcrumb-item>
      </el-breadcrumb>
    </div>
<!--    <p>主体页面 2 - 3 </p>-->
    <div class="test-div" style="width:400px;">
      <el-button type="mini" size="mini" @click="jump" >修改</el-button>
      <modify-dialog :dialogVisible="isShow" @close="closeDialog"></modify-dialog>
    </div>
  </div>
</div>
</template>

<script>
  import Modifydialog from '@/components/dialog/modify.vue';
export default {
  components:{
    'modify-dialog': Modifydialog
  },
  data(){
    return{
      isShow:false,
    }
  },
  methods:{
    showDialog(){
      this.isShow = true
    },
    jump(){
      this.$router.push('/test2-1')
    },
    closeDialog(){
      this.isShow = false
    },

  }
}
</script>

<style>
  .el-carousel__item h3 {
    color: #475669;
    font-size: 16px;
    line-height: 150px;
    margin: 0 50%;
  }

  .el-carousel__item:nth-child(2n) {
     background-color: #99a9bf;
  }

  .el-carousel__item:nth-child(2n+1) {
     background-color: #d3dce6;
  }
</style>
