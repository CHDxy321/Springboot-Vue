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
          <el-button type="success"  plain @click="routeeight">高速公路数据</el-button>
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
          <el-table-column fixed prop="id" label="排名" width="80" align="center" fixed="left" sortable></el-table-column>
          <el-table-column prop="platform" label="车运营商平台" width="300" align="center"></el-table-column>
          <el-table-column prop="tgrate" label="数据传输通过率" width="120" align="center"></el-table-column>
          <el-table-column prop="wzrate" label="附件上传完整率" width="120" align="center"></el-table-column>
          <el-table-column prop="defen" label="运营商得分" width="120" align="center"></el-table-column>
        </el-table>
      </div>
    </div>
    <el-pagination
      @current-change="page"
      :current-page="currentPage"
      :page-size="20"
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
      pageNum: null,
      tableData: [{
        id:'1',
        platform:'秦通道路运输车辆卫星定位服务系统',
        tgrate:'71%',
        wzrate:'48%',
        defen:'59'
      },
        {
          id:'2',
          platform:'陕西导航位置服务监控平台',
          tgrate:'79%',
          wzrate:'39%',
          defen:'59'
        },
        {
          id:'3',
          platform:'星软卫星定位动态信息云服务平台',
          tgrate:'85%',
          wzrate:'29%',
          defen:'57'
        },
        {
          id:'4',
          platform:'世荣车辆位置服务平台',
          tgrate:'63%',
          wzrate:'48%',
          defen:'55'
        },
        {
          id:'5',
          platform:'中煤领航导航定位服务平台',
          tgrate:'100%',
          wzrate:'5%',
          defen:'52'
        },
        {
          id:'6',
          platform:'西安交通信息投资营运有限公司',
          tgrate:'75%',
          wzrate:'29%',
          defen:'52'
        },
        {
          id:'7',
          platform:'天运畅行北斗车辆监控系统-测试',
          tgrate:'96%',
          wzrate:'0%',
          defen:'48'
        },
        {
          id:'8',
          platform:'西安天网GPS服务监控平台',
          tgrate:'58%',
          wzrate:'32%',
          defen:'45'
        },
        {
          id:'9',
          platform:'榆林烽火科技主动安全视频服务平台',
          tgrate:'60%',
          wzrate:'27%',
          defen:'43'
        },
        {
          id:'10',
          platform:'天剑北斗卫星车联网服务平台',
          tgrate:'76%',
          wzrate:'11%',
          defen:'43'
        },
        {
          id:'11',
          platform:'中交兴路运营平台',
          tgrate:'59%',
          wzrate:'25%',
          defen:'42'
        },
        {
          id:'12',
          platform:'陕西亿程交通信息有限公司',
          tgrate:'62%',
          wzrate:'3%',
          defen:'32'
        },
        {
          id:'13',
          platform:'方达通GPS车辆卫星监控平台',
          tgrate:'43%',
          wzrate:'0%',
          defen:'21'
        }],
      pageSize: null,
      search: '',
    }
  },

  methods:{
    routeone(){
      this.$router.push({
        path: 'test5-1'
      })
    },
    routetwo(){
      this.$router.push({
        path:'test5-2'
      })
    },
    routethree(){
      this.$router.push({
        path:'test5-3'
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
    routeeight(){
      this.$router.push({
        path:'test5-8'
      })
    },

    // 查询页数
    page(currentpage) {
      const _this = this;
      // 页码与显示链接
      this.$axios.get('/api/yysrank/findAll/' + currentpage + '/10').then(function (resp) {
        // console.log(resp)
        console.log(resp.data)
        _this.tableData = resp.data.content;
        _this.total = resp.data.totalElements
        _this.pageSize=resp.data.size
      })
    },

    load(){
      const _this = this;
      this.$axios.get('/api/yysrank/findAll/1/20').then(function (resp) {
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
