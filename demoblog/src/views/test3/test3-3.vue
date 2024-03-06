<template>
  <!--一个template只能有一个根节点，所以要加div标签-->
  <div class="content-box"  >
    <div class="container">
      <div style="color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold">
        车辆检索条件 </div>
      <div style="background:#eeeeee;margin-left:5px;margin-top:10px">
        <div style="display:inline-block;height:55px;line-height:55px;margin-left: 5px">
          <el-input placeholder="请输入车牌号" v-model="search" clearable>
          </el-input>
        </div>
        <div style="display:inline-block;height:55px;line-height: 55px">
          <el-button type="primary" @click="load" >高级查询</el-button>
        </div>
      </div>

      <div class="table-container" style="margin: 5px">
        <el-table :data="tableData" border  fit="true" >
          <el-table-column fixed prop="id" label="编号" width="80" align="center" sortable></el-table-column>
          <el-table-column prop="licenseplate" label="车牌号码" width="150" align="center"></el-table-column>
          <el-table-column prop="licenseplatecolor" label="车牌颜色" width="70" align="center"></el-table-column>
          <el-table-column prop="belongcompany" label="所属企业" width="250" align="center"></el-table-column>
          <el-table-column prop="belongbusiness" label="所属行业" width="90" align="center"></el-table-column>
          <el-table-column prop="belongarea" label="所属地区" width="100" align="center"></el-table-column>
          <el-table-column prop="belongplatform" label="所属平台" width="300" align="center"></el-table-column>
          <el-table-column prop="state" label="在线状态" width="70" align="center"></el-table-column>
          <el-table-column prop="speed" label="实时速度" width="150" align="center"></el-table-column>
          <el-table-column prop="terminaltime" label="最后上线时间" width="220" align="center"></el-table-column>
          <el-table-column prop="operation" label="操作" width="90" align="center" >
<!--             <template slot-scope="scope">-->
                   <el-button @click="detection()" type="detection" size="mini" class="detection">观看视频</el-button>
<!--             </template>-->
          </el-table-column>
        </el-table>
      </div>

<!-- 分页组件-->
      <!-- page-size每页展示的记录数-->
      <!--创建点击事件@currentchange="page"-->

    </div>
    <!--total：共2000条数据，page-size:每页的数据-->
    <el-pagination
      @current-change="page"
      :current-page="currentPage"
      :page-size="10"
      layout="total,prev, pager, next, jumper"
      :total="total" >
    </el-pagination>
  </div>

</template>

<script>
// const mockdata=[];只读
export default {
  methods:{


    // 查询页数
    page(currentpage) {
      const _this = this;
      // 页码与显示链接
      this.$axios.get('http://localhost:8181/video/findAll/' + currentpage + '/10').then(function (resp) {
        // console.log(resp)
        console.log(resp.data)
        _this.tableData = resp.data.content;
        _this.total = resp.data.totalElements
        _this.pageSize=resp.data.size
      })
  },
    load(){
      const _this = this;
      this.$axios.get('http://localhost:8181/video/findAll/1/10',{
        params: {
          pageNum: this.currentPage,
          pageSize: this.pageSize,
          // search: this.search
        }
      }).then(function (resp) {
        console.log(resp)
        // console.log(search)
        _this.tableData=resp.data.content;
        _this.total = resp.data.totalElements
      })
    },

    detection(){
       // 路由，跳转页面 调到原页面 push指令
      this.$router.push('/detection')
    }
  },

  // 首页刷新
  created() {
    // 首页显示 调用load函数，对查询数据进行刷新显示
    this.load();


    },

  data() {
    return {
      // 初始化
      // input: null,
      // input2:null,
      total:null,
      pageNum: null,
      tableData:null,
      pageSize:null,
      search:'',
      exportDistrict: "/test3/detection"
    }
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
  font-size: 4px;
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
  margin-top:50px;
  text-align: right;
  /*height: 50px;*/
  /*line-height: 50px;*/
}
.el-pager li.active {
  color: #080909;
  cursor: default;
  background-color: #17B3A3;
  border-radius: 2px;
}
</style>
