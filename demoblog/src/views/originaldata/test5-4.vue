<template>
  <!--一个template只能有一个根节点，所以要加div标签-->
  <div class="content-box">
    <!--    //道路运输中心-->
    <div class="container" style="margin-top:0px">
      <div style="margin-left: 10px;margin-bottom: 15px;font-size: 20px">
        <div style="margin-bottom: 15px;font-size: 22px">
          <el-button type="success"  @click="routefour">交通监控数据</el-button>
          <el-button type="success" plain @click="routefive">客运危运数据</el-button>
          <el-button type="success" plain @click="routesix">企业安全数据</el-button>
          <el-button type="success" plain @click="routeone">道路运输数据</el-button>
          <el-button type="success" plain @click="routeeight">高速公路数据</el-button>
        </div>
      </div>
      <div class="table-container"style="margin: 5px">
        <el-table :data="tableData" border  fit="true" >
          <el-table-column fixed prop="carnum" label="车牌号" width="120" align="center" fixed="left" sortable></el-table-column>
          <el-table-column prop="alert" label="报警内容" width="220" align="center"></el-table-column>
          <el-table-column prop="starttime" label="开始时间" width="160" align="center"></el-table-column>
          <el-table-column prop="alerttime" label="报警时间" width="160" align="center"></el-table-column>
          <el-table-column  prop="level" label="级别" width="100" align="center" ></el-table-column>
          <el-table-column prop="comp" label="所属公司" width="240" align="center"></el-table-column>
          <el-table-column prop="speed" label="速度" width="120" align="center"></el-table-column>
          <el-table-column prop="condation" label="数据状态" width="120" align="center"></el-table-column>
          <el-table-column prop="time" label="持续时长" width="160" align="center"></el-table-column>
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
      fetch("http://localhost:8181/monitor/findAll?pageNum=" + this.pageNum + "&pageSize=" + this.pageSize).then(res => res.json()).then(res => {
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
