<template>
  <!--一个template只能有一个根节点，所以要加div标签-->
  <div class="content-box">
<!--    //道路运输中心-->
    <div class="container" style="margin-top:0px">
<!--      <div style="margin-left: 10px">
       <div style="display: inline-block">道路运输中心</div>
        <div style="display: inline-block">交通监控中心</div>
        <div style="display: inline-block">交通监控中心</div>
        <div style="display: inline-block">交通监控中心</div>data.vue
      </div>-->
    </div>

      <div class="container" style="margin-top:0px">
        <div style="margin-left: 10px">
          <el-breadcrumb separator-class="el-icon-arrow-right">
            <el-breadcrumb-item :to="{ path: '/originaldata/data' }">元数据管理</el-breadcrumb-item>
            <el-breadcrumb-item>交通监控中心</el-breadcrumb-item>
          </el-breadcrumb>
        </div>
        <div class="table-container"style="margin: 5px">
          <el-table :data="tableData" border  fit="true" >
            <el-table-column fixed prop="id" label="编号" width="80" align="center" fixed="left" sortable></el-table-column>
            <el-table-column prop="carnum" label="车牌号码" width="120" align="center"></el-table-column>
            <el-table-column prop="alarm" label="报警内容" width="120" align="center"></el-table-column>
            <el-table-column prop="starttime" label="开始时间" width="300" align="center"></el-table-column>
            <el-table-column prop="alarmtime" label="报警时间" width="300" align="center"></el-table-column>
            <el-table-column prop="level" label="级别" width="80" align="center"></el-table-column>
            <el-table-column prop="company" label="所属企业" width="300" align="center"></el-table-column>
            <el-table-column fixed prop="speed" label="速度" width="80" align="center" ></el-table-column>
            <el-table-column fixed prop="status" label="营业状态" width="80" align="center"></el-table-column>
            <el-table-column prop="chixutime" label="持续时间" width="120" align="center"></el-table-column>
          </el-table>
        </div>
      </div>

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
      pageNum: null,
      tableData: null,
      pageSize: null,
      search: '',
    }
  },

  methods:{


  // 查询页数
  page(currentpage) {
    const _this = this;
    // 页码与显示链接
    this.$axios.get('/api/monitor/findAll/' + currentpage + '/10').then(function (resp) {
      // console.log(resp)
      console.log(resp.data)
      _this.tableData = resp.data.content;
      _this.total = resp.data.totalElements
      _this.pageSize=resp.data.size
    })
  },
    // 删除数据 直接调后端删除
    deleteid(row){
// 消息框提示
      this.$confirm('确定删除该条记录吗?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        const _this=this;
        this.$axios.delete('/api/book/deleteById/'+row.id).then(function (resp) {
// 前端自带动态刷新界面
          window.location.reload()
        });
        this.$message({
          type: 'success',
          message: '删除成功!'
        });
      }).catch(() => {
        this.$message({
          type: 'info',
          message: '已取消删除'
        });
      });
    },

// 修改数据 编辑 传到后台 第一步先调到前端页面
    edit(row) {
      // 跳转页面到modify 不重新定义 this 数据读出并自动赋值 modify与test2-1大致相同
      this.$router.push({
        // 要跳页面的路径
        path:'/modify',
        // 参数 传送所选行的id
        query:{
          id:row.id
        }
      })
    },

  load(){
    const _this = this;
    this.$axios.get('http://localhost:8181/monitor/findAll/1/10',{
      params: {
        pageNum: this.currentPage,
        pageSize: this.pageSize,
        // search: this.search
      }
    }).then(function (resp) {
      console.log(123)
      console.log(resp)
      // console.log(search)
      _this.tableData=resp.data.content;
      _this.total = resp.data.totalElements
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
