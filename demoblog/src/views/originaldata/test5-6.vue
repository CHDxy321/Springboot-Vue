<template>
  <!--一个template只能有一个根节点，所以要加div标签-->
  <div class="content-box">
    <!--    //道路运输中心-->
    <div class="container" style="margin-top:0px">
      <div style="margin-left: 10px;margin-bottom: 15px;font-size: 20px">
      <div style="margin-bottom: 15px;font-size: 22px">
        <el-button type="success" plain @click="routefour">交通监控数据</el-button>
        <el-button type="success"  plain @click="routefive">客运危运数据</el-button>
        <el-button type="success"  @click="routesix">企业安全数据</el-button>
        <el-button type="success" plain @click="routeone">道路运输数据</el-button>
        <el-button type="success"  plain @click="routeeight">高速公路数据</el-button>
      </div>
    </div>
      <div class="table-container"style="margin: 5px">
        <el-table :data="tableData" border  fit="true" >
          <el-table-column fixed prop="id" label="编号" width="75" align="center" fixed="left" sortable></el-table-column>
          <el-table-column prop="name" label="所属公司" width="420" align="center"></el-table-column>
          <el-table-column prop="total" label="总数" width="120" align="center"></el-table-column>
          <el-table-column prop="score" label="总分数" width="120" align="center"></el-table-column>
        </el-table>
      </div>

    </div>
    <el-pagination
      @current-change="page"
      :current-page="currentPage"
      :page-size="26"
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
  // data(){
  //   return {
  //     total: null,
  //     pageNum: null,
  //     tableData: null,
  //     pageSize: null,
  //     search: '',
  //   }
  // },

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
    routeeight(){
      this.$router.push({
        path:'test5-8'
      })
    },


    // 查询页数
    page(currentpage) {
      const _this = this;
      // 页码与显示链接
      this.$axios.get('/api/company/findAll/' + currentpage + '/26').then(function (resp) {
        // console.log(resp)
        console.log(resp.data)
        _this.tableData = resp.data.content,
        _this.total = resp.data.totalElements,
        _this.pageSize=resp.data.size
      })
    },

    load(){
      const _this=this
      this.$axios.get('http://localhost:8181/company/findAll/1/26').then(function (resp) {
        // console.log(123)
        console.log(resp)
        // console.log(search)
        _this.tableData=resp.data.content;
        _this.total = resp.data.totalElements
      }).catch(err => {
        console.log(err)
      })
      this.$axios.get('http://localhost:8181/company/findAll/1/26').then(function (resp) {
        console.log(resp.data)
        _this.tableData1 = resp.data.content;
        _this.total1 = resp.data.totalElements
      })
    },
  },

// 首页刷新
  created() {
    // 首页显示 调用load函数，对查询数据进行刷新显示
    this.load();
  },

  data() {
    return {
      total: null,
      pageSize: null,
      pageNum: null,
      tableData:[{
        id:'1',
        name:'延安旭启工贸有限公司',
        total:'37744',
        score:'236586'
      },
        {
          id:'2',
          name:'米脂县泰安运输有限责任公司',
          total:'49867',
          score:'133853'
        },
        {
          id:'3',
          name:'延安腾格尔实业发展总公司圣能加油加气站',
          total:'62164',
          score:'232369'
        },
        {
          id:'4',
          name:'延安市宝塔区宏东货运配载有限公司',
          total:'248797',
          score:'296245'
        },
        {
          id:'5',
          name:'延安华府运输有限公司',
          total:'32130',
          score:'65127'
        },
        {
          id:'6',
          name:'延安知达汽车贸易有限公司',
          total:'36994',
          score:'77400'
        },
        {
          id:'7',
          name:'陕西博丰物流有限公司',
          total:'186929',
          score:'475762'
        },
        {
          id:'8',
          name:'延安欣业达能源有限公司',
          total:'60700',
          score:'135795'
        },
        {
          id:'9',
          name:'富县福运达物流有限公司',
          total:'63476',
          score:'98969'
        },
        {
          id:'10',
          name:'陕西榆林勤运德实业有限公司',
          total:'27926',
          score:'77380'
        },
        {
          id:'11',
          name:'绥德县鼎晟运输有限公司',
          total:'65972',
          score:'189080'

        },
        {
          id:'12',
          name:'陕西众能化工有限公司',
          total:'30376',
          score:'66048'

        },
        {
          id:'13',
          name:'陕西豫濮鑫盛物流有限公司',
          total:'6516',
          score:'65127'
        },
        {
          id:'14',
          name:'延安金石荣华工贸有限公司',
          total:'205644',
          score:'324266'
        },
        {
          id:'15',
          name:'榆林市长运集团府谷客运有限公司',
          total:'52018',
          score:'61141'

        },
        {
          id:'16',
          name:'榆林众泰达运输有限公司',
          total:'10428',
          score:'43337'
        },
        {
          id:'17',
          name:'陕西伟华集团源通运输有限公司',
          total:'66883',
          score:'164186'
        },

      ],

      search: '',
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
