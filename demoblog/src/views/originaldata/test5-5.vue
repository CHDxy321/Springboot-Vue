<template>
  <!--一个template只能有一个根节点，所以要加div标签-->
  <div class="content-box">
    <!--    //道路运输中心-->
    <div class="container" style="margin-top:0px">
      <div style="margin-left: 10px;margin-bottom: 15px;font-size: 20px">
        <div style="margin-bottom: 15px;font-size: 22px">
          <el-button type="success" plain @click="routefour">交通监控数据</el-button>
          <el-button type="success"  @click="routefive">客运危运数据</el-button>
          <el-button type="success" plain @click="routesix">企业安全数据</el-button>
          <el-button type="success" plain @click="routeone">道路运输数据</el-button>
          <el-button type="success"  plain @click="routeeight">高速公路数据</el-button>
        </div>
      </div>
      <div class="table-container"style="margin: 5px">
        <el-table :data="tableData" border  fit="true" >
          <el-table-column fixed prop="id" label="排名" width="75" align="center" fixed="left" sortable></el-table-column>
          <el-table-column prop="area" label="区域" width="180" align="center"></el-table-column>
          <el-table-column prop="qiyenum" label="违规企业数" width="120" align="center"></el-table-column>
          <el-table-column prop="alertnum" label="1月报警次数" width="120" align="center"></el-table-column>
          <el-table-column prop="febalertnum" label="2月报警次数" width="120" align="center"></el-table-column>
<!--          <el-table-column  prop="avernum" label="平均报警次数" width="120" align="center" ></el-table-column>-->
          <el-table-column prop="percent" label="环比%" width="100" align="center"></el-table-column>
          <el-table-column prop="weiguicar" label="违规报警车辆数" width="120" align="center"></el-table-column>
          <el-table-column prop="avernum" label="车均报警次数"align="center">
            <el-table-column prop="overspeed" label="超速" width="120" align="center"></el-table-column>
            <el-table-column prop="tirednum" label="疲劳驾驶" width="120" align="center" ></el-table-column>
            <el-table-column fixed prop="fivenum" label="0-5点行驶" width="120" align="center"></el-table-column>
            <el-table-column fixed prop="offnum" label="离线位移" width="120" align="center" fixed="right"></el-table-column>
          </el-table-column>
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
      tableData:[],
      pageSize: 20,
      search: '',
    }
  },

  methods:{
    load() {
      fetch("http://localhost:8181/qiyedata/findAll?pageNum=" + this.pageNum + "&pageSize=" + this.pageSize).then(res => res.json()).then(res => {
        console.log(res);
        this.tableData = res.data
        this.total = res.total
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
    routeone(){
      this.$router.push({
        path:'test5-1'
      })
    },
    routeeight(){
      this.$router.push({
        path:'test5-8'
      })
    },

    // 查询页数
    handleSizeChange(pageSize) {
      this.pageSize = pageSize
      this.load()
    },

    handleCurrentChange(pageNum) {
      this.pageNum = pageNum
      this.load()
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
