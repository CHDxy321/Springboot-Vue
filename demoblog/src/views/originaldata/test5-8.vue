<template>
  <div class="content-box">
    <!--    //道路运输中心-->
    <div class="container" style="margin-top:0px">
      <div style="margin-left: 10px;margin-bottom: 15px;font-size: 20px">

        <div style="margin-bottom: 15px;font-size: 22px">
          <el-button type="success" plain @click="routefour">交通监控数据</el-button>
          <el-button type="success"  plain @click="routefive">客运危运数据</el-button>
          <el-button type="success"  plain @click="routesix">企业安全数据</el-button>
          <el-button type="success"  plain @click="routeone">道路运输数据</el-button>
          <el-button type="success"  @click="routeeight">高速公路数据</el-button>
        </div>
      </div>
      <!--        <div style="display:inline-block;text-align:center;padding-top:5px;margin-top: 2px;,margin-bottom:8px">-->
      <!--        </div>-->
      <div class="table-container"style="margin:10px 5px">
        <el-table :data="tableData" border  fit="true" >
          <el-table-column fixed prop="id" label="编号" width="80" align="center" sortable></el-table-column>
          <el-table-column prop="licenseplate" label="入口编号" width="155" align="center"></el-table-column>
          <el-table-column prop="licenseplatecolor" label="本省入口收费站编号" width="150s" align="center"></el-table-column>
          <el-table-column prop="belongcompany" label="入口名称" width="125" align="center"></el-table-column>
          <el-table-column prop="belongbusiness" label="出口名称" width="190" align="center"></el-table-column>
          <el-table-column prop="belongarea" label="出口日期时间" width="180" align="center"></el-table-column>
          <el-table-column prop="belongplatform" label="出口名称" width="100" align="center"></el-table-column>
          <el-table-column prop="state" label="出口日期及时间" width="170" align="center"></el-table-column>
          <el-table-column prop="speed" label="计费车牌号" width="150" align="center"></el-table-column>
          <el-table-column prop="terminaltime" label="计费车型代码" width="220" align="center"></el-table-column>
          <el-table-column prop="operation" label="修正后计费车型" width="190" align="center" >
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
export default {

  data() {
    return {
      // 初始化
      // input: null,
      // input2:null,
      total:null,
      pageNum: null,
      tableData:[{
        id:'1',
        licenseplate:'G004061001000110',
        licenseplatecolor:'G0040610010010',
        belongcompany:',陕西商南省界-商南西匝道',
        belongbusiness:'长武匝道-陕西长武省界',
        belongarea:'2021/8/30  15:20:30',
        belongplatform:'446431',
        state:'2021/8/24  13:15:45',
        speed:'豫RJX8010',
        terminaltime:'0',
        operation:'1',},
        {id:'2',
          licenseplate:'G004061001000110',
          licenseplatecolor:'G0040610010010',
          belongcompany:'陕西商南省界-商南西匝道',
          belongbusiness:'长武匝道-陕西长武省界',
          belongarea:'2021/8/29  12:21:308',
          belongplatform:'446431',
          state:'2021/8/29  13:14:44',
          speed:'豫RJX5862',
          terminaltime:'0',
          operation:'1',},
        {id:'3',
          licenseplate:'G004061001000110',
          licenseplatecolor:'G0040610010010',
          belongcompany:'陕西商南省界-商南西匝道',
          belongbusiness:'长武匝道-陕西长武省界',
          belongarea:'2021/8/27  15:15:25',
          belongplatform:'446431',
          state:'2021/8/27  16:17:45',
          speed:'皖KP0386_1',
          terminaltime:'0',
          operation:'1',},
        {id:'4',
          licenseplate:'G004061001000110',
          licenseplatecolor:'G0040610010010',
          belongcompany:'陕西商南省界-商南西匝道',
          belongbusiness:'长武匝道-陕西长武省界',
          belongarea:'2021/8/27  18:25:25',
          belongplatform:'446431',
          state:'2021/8/27  19:27:26',
          speed:'浙BL0M07_0',
          terminaltime:'0',
          operation:'1',},
        {id:'5',
          licenseplate:'G004061001000110',
          licenseplatecolor:'G0040610010010',
          belongcompany:'陕西商南省界-商南西匝道',
          belongbusiness:'长武匝道-陕西长武省界',
          belongarea:'2021/8/25  17:22:25',
          belongplatform:'446431',
          state:'2021/8/25 17:27:26',
          speed:'豫S99A09_0',
          terminaltime:'0',
          operation:'1',},
        {id:'6',
          licenseplate:'G004061001000110',
          licenseplatecolor:'G0040610010010',
          belongcompany:'陕西商南省界-商南西匝道',
          belongbusiness:'长武匝道-陕西长武省界',
          belongarea:'2021/8/7  9:25:35',
          belongplatform:'446431',
          state:'2021/8/7 9:47:26',
          speed:'宁A3191K_0',
          terminaltime:'0',
          operation:'1',},
        {id:'7',
          licenseplate:'G004061001000110',
          licenseplatecolor:'G0040610010010',
          belongcompany:'陕西商南省界-商南西匝道',
          belongbusiness:'长武匝道-陕西长武省界',
          belongarea:'2021/8/10  15:21:28',
          belongplatform:'446431',
          state:'2021/8/10 15:37:45',
          speed:'甘M6K850_0',
          terminaltime:'0',
          operation:'1',},
        {id:'8',
          licenseplate:'G004061001000110',
          licenseplatecolor:'G0040610010010',
          belongcompany:'陕西商南省界-商南西匝道',
          belongbusiness:'长武匝道-陕西长武省界',
          belongarea:'2021/8/11 15:28:35',
          belongplatform:'446431',
          state:'2021/8/10 15:47:45',
          speed:'苏A8Z25M_0',
          terminaltime:'0',
          operation:'1',},
        {id:'9',
          licenseplate:'G004061001000110',
          licenseplatecolor:'G0040610010010',
          belongcompany:'陕西商南省界-商南西匝道',
          belongbusiness:'长武匝道-陕西长武省界',
          belongarea:'2021/8/12 16:38:45',
          belongplatform:'446431',
          state:'2021/8/12 16:57:55',
          speed:'青AUE920_0',
          terminaltime:'0',
          operation:'1',},
        {id:'10',
          licenseplate:'G004061001000110',
          licenseplatecolor:'G0040610010010',
          belongcompany:'陕西商南省界-商南西匝道',
          belongbusiness:'长武匝道-陕西长武省界',
          belongarea:'2021/8/6 15:48:35',
          belongplatform:'446431',
          state:'2021/8/6 15:57:45',
          speed:'青AAC891_0',
          terminaltime:'0',
          operation:'1',},


      ],
      pageSize:null,
      search:'',
      exportDistrict: "/test3/detection"
    }
  },

  methods:{
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
  },


}
</script>

<style scoped>
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
