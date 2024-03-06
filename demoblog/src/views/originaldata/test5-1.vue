<template>
  <!--一个template只能有一个根节点，所以要加div标签-->
  <div class="content-box">
    <!--    //道路运输中心-->
    <div class="container" style="margin-top:0px">
      <div style="margin-left: 10px;margin-bottom: 15px;font-size: 20px">

        <div style="margin-bottom: 15px;font-size: 22px">
          <el-button type="success" plain @click="routefour">交通监控数据</el-button>
          <el-button type="success"  plain @click="routefive">客运危运数据</el-button>
          <el-button type="success"  plain @click="routesix">企业安全数据</el-button>
          <el-button type="success"  @click="routeone">道路运输数据</el-button>
          <el-button type="success"  @click="routeeight">高速公路数据</el-button>
        </div>
      </div>
<!--        <div style="display:inline-block;text-align:center;padding-top:5px;margin-top: 2px;,margin-bottom:8px">-->
      <el-row  style="display:inline-block;text-align:center;padding-top:5px;margin-top: 2px;,margin-bottom:5px">
         <el-button type="primary" round @click="routeone">车辆信息</el-button>
          <el-button type="primary" round @click="routetwo">地区排名</el-button>
          <el-button type="primary" round @click="routethree">运行商排名</el-button>
      </el-row>
<!--        </div>-->
      <div class="table-container"style="margin:10px 5px">
        <el-table :data="tableData" border  fit="true" >
          <el-table-column fixed prop="carnum" label="车牌号码" width="95" align="center"></el-table-column>
          <el-table-column fixed prop="color" label="车牌颜色" width="80" align="center"></el-table-column>
          <el-table-column prop="hangye" label="所属行业" width="90" align="center"></el-table-column>
          <el-table-column prop="qiye" label="所属企业" width="250" align="center"></el-table-column>
          <el-table-column prop="platform" label="管理平台" width="300" align="center"></el-table-column>
<!--          <el-table-column prop="area" label="管辖地" width="180" align="center"></el-table-column>-->
          <el-table-column prop="speed" label="速度(km/h)" width="100" align="center"></el-table-column>
          <el-table-column prop="dwtime" label="卫星定位时间" width="250" align="center" ></el-table-column>
          <el-table-column prop="jstime" label="系统接收时间" width="250" align="center"></el-table-column>
          <el-table-column prop="sxtime" label="首次上线时间" width="250" align="center"></el-table-column>
          <el-table-column prop="dqarea" label="当前地区" width="180" align="center"></el-table-column>
          <el-table-column prop="status" label="营运状态" width="120" align="center"></el-table-column>
          <el-table-column prop="pipei" label="匹配状态" width="120" align="center"></el-table-column>
          <el-table-column prop="error" label="错误类型" width="120" align="center"></el-table-column>
          <el-table-column prop="acc" label="Acc状态" width="120" align="center"></el-table-column>
        </el-table>
      </div>
    </div>
    <el-pagination
      @size-change="handleSizeChange"
      @current-change="handleCurrentChange"
      :current-page="pageNum"
      :page-sizes="[10,15,20]"
      :page-size="pageSize"
      layout="total,prev, pager, next, jumper"
      :total="total"
      fixed="bottom">
    </el-pagination>

  </div>
</template>


<script>
// import Modifydialog from '@/components/dialog/modify.vue';
export default {
// 引入组件
// components:{
//   'modify-dialog': Modifydialog
//   },
  // total定义总数,null定义空值，由后端读取数据
  data(){
    return {
      total: null,
      pageNum: 1,
      tableData: [],
      pageSize: 20,
      search: '',
    }
  },

  methods:{
    load() {
      fetch("http://localhost:8181/carinfo/findAll?pageNum=" + this.pageNum + "&pageSize=" + this.pageSize).then(res => res.json()).then(res => {
        console.log(res);
        this.tableData = res.data
        this.total = res.total
      })
    },
    handleSizeChange(pageSize) {
      this.pageSize = pageSize
      this.load()
    },

    handleCurrentChange(pageNum) {
      this.pageNum = pageNum
      this.load()
    },
    routeone(){
      this.$router.push({
        path: 'test5-1'
      })
    },
    routetwo() {
      this.$router.push({
        path: 'test5-2'
      })
    },
  routefour(){
    this.$router.push({
      path:'test5-4'
    })
  },
  routefive(){
    this.$router.push({
      path:'test5-5'
    })
  },
  routesix(){
    this.$router.push({
      path:'test5-6'
    })
  },
    routethree(){
  this.$router.push({
    path:'test5-3'
  })
    },
    routeeight(){
      this.$router.push({
        path:'test5-8'
      })
    },

  },

// 首页刷新
  created() {
    // 首页显示 调用load函数，对查询数据进行刷新显示
    this.load();
  }

}
</script>

<style>
/* 设置当前选中行的背景颜色 */
.el-table__body tr.current-row>td {
  background: #c9eff5 !important;
}
/* 设置table header的背景颜色 */
.el-table__header th, .el-table__header tr {
  background-color: #17B3A3;
  color: black;
}
/* 设置表主体的高度 */
.el-table__body td,.el-table__body th{
  padding:3px;
}
/* 设置表头的高度 */
.el-table__header td,.el-table__header th{
  padding:6px 0px;
}
/* 设置分页器的高度 */
.site-wrapper .el-pagination {
  margin-top: 5px;
  text-align: right;
}
.el-pager li.active {
  color: #080909;
  cursor: default;
  background-color: #17B3A3;
  border-radius: 2px;
}
.delete-button{
  color: #ee3441;
}
.delete-button:hover{
  color: #ee9509;
}
</style>
