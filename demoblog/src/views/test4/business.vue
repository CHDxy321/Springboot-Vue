<template>
  <!--一个template只能有一个根节点，所以要加div标签-->
  <div class="content-box">
    <div class="container" style="margin-top:0px">
      <div style="margin-left: 10px">
        <el-breadcrumb separator-class="el-icon-arrow-right">
          <el-breadcrumb-item :to="{ path: '/test4/business' }">企业安全评估</el-breadcrumb-item>
          <el-breadcrumb-item>企业安全指标</el-breadcrumb-item>
        </el-breadcrumb>
      </div>
      <!--数据展示部分-->
      <div class="table-container"style="margin: 5px;margin-top: 10px">
        <el-table :data="tableData" border  fit="true" >
          <el-table-column fixed prop="id" label="编号" width="80" align="center" sortable></el-table-column>
          <el-table-column prop="agebelow30" label="30岁以下" width="110" align="center"></el-table-column>
          <el-table-column prop="agefrom30to40" label="30-40岁" width="110" align="center"></el-table-column>
          <el-table-column prop="agefrom40to50" label="40-50岁" width="110" align="center"></el-table-column>
          <el-table-column prop="ageupper50" label="50岁以上" width="110" align="center"></el-table-column>
          <el-table-column prop="workagebelow2" label="工作2年以下" width="110" align="center"></el-table-column>
          <el-table-column prop="workagefrom2to5" label="工作2-5年" width="110" align="center"></el-table-column>
          <el-table-column prop="workageupper5" label="工作5年以上" width="110" align="center"></el-table-column>
          <el-table-column prop="breakscore" label="分数" width="110" align="center"></el-table-column>
          <el-table-column prop="vehiclenums" label="驾驶车辆" width="110" align="center"></el-table-column>
          <el-table-column prop="vehicleone" label="驾驶1辆" width="110" align="center"></el-table-column>
          <el-table-column prop="vehicletwo" label="驾驶2辆" width="110" align="center"></el-table-column>
          <el-table-column prop="peoplenums" label="人员数量" width="110" align="center"></el-table-column>
          <el-table-column prop="trainnums" label="培训数量" width="110" align="center"></el-table-column>
          <el-table-column prop="traintime" label="培训时间" width="110" align="center"></el-table-column>
          <el-table-column prop="saftymoney" label="安全成本" width="120" align="center"></el-table-column>
          <el-table-column prop="drivekilometer" label="驾驶里程" width="120" align="center"></el-table-column>

          <!--      最后一行加入两个按钮，配置两个点击事件 编辑和删除-->
          <el-table-column label="操作" width="100" align="center" fixed="right">
            <template slot-scope="scope">
              <div style="display: inline-block">
                <!--修改按钮-->
                <!--<el-button type="mini" size="mini" @click="edit(scope.row)">修改</el-button>-->
                <div style="display: inline-block">
                  <el-button type="text" size="mini" @click="edit(scope.row)" >编辑</el-button>
                  <!--<modify-dialog :dialogVisible="isShow" @close="closeDialog"></modify-dialog>-->
                </div>
                <!--删除按钮-->
                <el-button  size="mini"  type="text" class="delete-button" slot="reference" @click="deleteid(scope.row)">删除</el-button>
              </div>
            </template>
          </el-table-column>
        </el-table>
        <el-pagination
          @current-change="page"
          :current-page="currentPage4"
          :page-size="6"
          layout="total,prev, pager, next, jumper"
          :total="total">
        </el-pagination>
      </div>
      <!--分页组件-->
      <!-- page-size每页展示的记录数-->
      <!--创建点击事件@currentchange="page"-->
      <el-row>  <el-button  type="primary" fixed="left" style="margin-left: 15px" @click="isshow">企业数据量化</el-button>
<!--        <el-link type="primary" @click="isshow">收起</el-link>-->
      </el-row>
      <div class="table-container" style="margin: 12px" v-show="show1">
        <div style="margin: 10px">
          <el-breadcrumb separator-class="el-icon-arrow-right">
            <el-breadcrumb-item :to="{ path: '/test4/business' }">企业安全评估</el-breadcrumb-item>
            <el-breadcrumb-item>企业安全指标量化结果</el-breadcrumb-item>
          </el-breadcrumb>
        </div>
        <el-table :data="tableData1" border  fit="true" >
          <el-table-column fixed prop="id" label="编号" width="80" align="center" sortable></el-table-column>
          <el-table-column prop="dg1" label="DG1" width="100" align="center"></el-table-column>
          <el-table-column prop="dg2" label="DG2" width="100" align="center"></el-table-column>
          <el-table-column prop="pt1" label="PT1" width="150" align="center"></el-table-column>
          <el-table-column prop="pt2" label="PT2" width="150" align="center"></el-table-column>
          <el-table-column prop="pt3" label="PT3" width="100" align="center"></el-table-column>
          <el-table-column prop="pt4" label="PT4" width="100" align="center"></el-table-column>
          <el-table-column prop="pt5" label="PT5" width="100" align="center"></el-table-column>
          <el-table-column prop="bv1" label="BV1" width="120" align="center"></el-table-column>
          <el-table-column prop="bv2" label="BV2" width="100" align="center"></el-table-column>
          <el-table-column prop="bv3" label="BV3" width="100" align="center"></el-table-column>
          <el-table-column prop="bv4" label="BV4" width="100" align="center"></el-table-column>
          <el-table-column prop="bv5" label="BV5" width="100" align="center"></el-table-column>
          <el-table-column prop="bv6" label="BV6" width="100" align="center"></el-table-column>
          <el-table-column prop="bv1" label="BM1" width="120" align="center"></el-table-column>
          <el-table-column prop="bv2" label="BM2" width="120" align="center"></el-table-column>
          <el-table-column prop="bv3" label="BM3" width="120" align="center"></el-table-column>
          <el-table-column prop="bm4" label="BM4" width="120" align="center"></el-table-column>
          <el-table-column prop="bm5" label="BM5" width="120" align="center"></el-table-column>
          <el-table-column prop="bm6" label="BM6" width="120" align="center"></el-table-column>
          <el-table-column prop="bm7" label="BM7" width="120" align="center"></el-table-column>

          <!--      最后一行加入两个按钮，配置两个点击事件 编辑和删除-->
          <el-table-column label="操作" width="100" align="center" fixed="right">

            <template slot-scope="scope">
              <div style="display: inline-block">
                <!--修改按钮-->
                <!--<el-button type="mini" size="mini" @click="edit(scope.row)">修改</el-button>-->
                <div style="display: inline-block">
                  <el-button type="text" size="mini" plain @click="edit(scope.row)" >编辑</el-button>
                  <!--<modify-dialog :dialogVisible="isShow" @close="closeDialog"></modify-dialog>-->
                </div>
                <!--删除按钮-->
                <el-button  size="mini"  type="text" class="delete-button" slot="reference" @click="deleteid(scope.row)">删除</el-button>
              </div>
            </template>
          </el-table-column>
        </el-table>
        <el-pagination
          @current-change="page1"
          :current-page="currentPage5"
          :page-size="6"
          layout="total,prev, pager, next, jumper"
          :total="total1">
        </el-pagination>
      </div>

    </div>
    <!--数据展示部分-->
    <!--分页组件-->
    <!-- page-size每页展示的记录数-->
    <!--创建点击事件@currentchange="page"-->


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

  methods: {
    isshow() {
      this.show1 = !this.show1
    },
    onSubmit() {
      // const _this=this;
      // this.axios.get('http://localhost:8181/book/')
      //  console.log(formInline.data)
    },
// 提交 数据函数 立即创建submitForm
    submitForm() {
      // _this表示当前vue对象
      const _this = this;
      // 表单所有数据通过校验 传
      this.$refs['ruleForm'].validate((valid) => {
        if (valid) {
          // 校验成功发送数据post this.ruleForm传送的是对象，直接在url后边加
          this.$axios.post('http://localhost:8181/book/save', this.ruleForm).then(function (resp) {
            // alert('123')
            // 传送完成后后台返回success或error 对其进行判断，显示提示信息
            if (resp.data == 'success') {
              _this.$alert('《' + _this.ruleForm.name + '》创建成功！', '消息', {
                confirmButtonText: '确定',
                // callback回调函数 调回原界面
                callback: action => {
                  // 路由，跳转页面 调到原页面 push指令
                  _this.$router.push('/test2/test2-1')
                }
              })
            }
          })
        } else {
          return false;
        }
      })
    },

// 重置数据界面的函数 重置resetForm
    resetForm(formName) {
      // 获取表单并全部置空
      this.$refs[formName].resetFields();
    },

// 删除数据 直接调后端删除
    deleteid(row) {
// 消息框提示
      this.$confirm('确定删除该条记录吗?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        const _this = this;
        this.$axios.delete('http://localhost:8181/book/deleteById/' + row.id).then(function (resp) {
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
        path: '/modify',
        // 参数 传送所选行的id
        query: {
          id: row.id
        }
      })
    },

// 页面
    page(currentPage) {
      const _this = this;
      this.$axios.get('http://localhost:8181/ass/findAll/' + currentPage + '/8').then(function (resp) {
        console.log(resp.data)
        _this.tableData = resp.data.content;
        _this.total = resp.data.totalElements;

      })
    },
    page1(currentPage) {
      const _this = this;
      this.$axios.get('http://localhost:8181/sheet1/findAll/' + currentPage + '/8').then(function (resp) {
        console.log(resp.data)
        _this.tableData1 = resp.data.content;
        _this.total1 = resp.data.totalElements;

      })
    }
  },
// 取数据
  load() {
    const _this = this;
    // "'http://localhost:8181/book/findAll/{page}/{size}"
    this.$axios.get('http://localhost:8181/ass/findAll/1/8').then(function (resp) {
      console.log(resp.data)
      _this.tableData = resp.data.content;
      _this.total = resp.data.totalElements
    }).catch(err => {
      console.log(err)
    })
    this.$axios.get('http://localhost:8181/sheet1/findAll/1/8').then(function (resp) {
      console.log(resp.data)
      _this.tableData1 = resp.data.content;
      _this.total1 = resp.data.totalElements
    })
  },

  created() {
    // 首页显示 调用load函数，对查询数据进行刷新显示
    this.load();
  },

  data() {
    return {
      total: null,
      pageNum: null,
      tableData: [{
        id:'1',
        agebelow30:'20',
        agefrom30to40:'156',
        agefrom40to50:'167',
        ageupper50:'78',
        workagebelow2:'122',
        workagefrom2to5:'198',
        workageupper5:'101',
        breakscore:'70',
        vehiclenums:'30',
        vehicleone:'陕D93588',
        vehicletwo:'陕D93559',
        peoplenums:'421',
        trainnums:'',
        traintime:'',
        saftymoney:'6631',
        drivekilometer:'301',
      },
        {
          id:'2',
          agebelow30:'32',
          agefrom30to40:'161',
          agefrom40to50:'184',
          ageupper50:'39',
          workagebelow2:'122',
          workagefrom2to5:'198',
          workageupper5:'101',
          breakscore:'70',
          vehiclenums:'30',
          vehicleone:'陕C89785',
          vehicletwo:'陕C89766',
          peoplenums:'416',
          trainnums:'',
          traintime:'',
          saftymoney:'6631',
          drivekilometer:'301',
        },
        {
          id:'3',
          agebelow30:'92',
          agefrom30to40:'261',
          agefrom40to50:'91',
          ageupper50:'38',
          workagebelow2:'122',
          workagefrom2to5:'198',
          workageupper5:'101',
          breakscore:'70',
          vehiclenums:'30',
          vehicleone:'陕D93588',
          vehicletwo:'陕D93559',
          peoplenums:'482',
          trainnums:'',
          traintime:'',
          saftymoney:'5483',
          drivekilometer:'135',
        },
        {
          id:'4',
          agebelow30:'92',
          agefrom30to40:'261',
          agefrom40to50:'91',
          ageupper50:'38',
          workagebelow2:'122',
          workagefrom2to5:'198',
          workageupper5:'101',
          breakscore:'70',
          vehiclenums:'30',
          vehicleone:'陕B52495',
          vehicletwo:'陕B52491',
          peoplenums:'482',
          trainnums:'',
          traintime:'',
          saftymoney:'10742',
          drivekilometer:'1301',
        },
        {
          id:'5',
          agebelow30:'165',
          agefrom30to40:'208',
          agefrom40to50:'191',
          ageupper50:'30',
          workagebelow2:'122',
          workagefrom2to5:'198',
          workageupper5:'101',
          breakscore:'70',
          vehiclenums:'30',
          vehicleone:'陕B52568',
          vehicletwo:'陕B52533',
          peoplenums:'594',
          trainnums:'398',
          traintime:'796',
          saftymoney:'15547',
          drivekilometer:'2056',
        },
        {
          id:'6',
          agebelow30:'32',
          agefrom30to40:'89',
          agefrom40to50:'97',
          ageupper50:'12',
          workagebelow2:'122',
          workagefrom2to5:'198',
          workageupper5:'101',
          breakscore:'70',
          vehiclenums:'30',
          vehicleone:'陕B52362',
          vehicletwo:'',
          peoplenums:'230',
          trainnums:'',
          traintime:'',
          saftymoney:'2547',
          drivekilometer:'138',
        },
        {
          id:'7',
          agebelow30:'386',
          agefrom30to40:'889',
          agefrom40to50:'497',
          ageupper50:'264',
          workagebelow2:'122',
          workagefrom2to5:'198',
          workageupper5:'101',
          breakscore:'70',
          vehiclenums:'30',
          vehicleone:'陕B52362',
          vehicletwo:'',
          peoplenums:'2036',
          trainnums:'',
          traintime:'',
          saftymoney:'264547',
          drivekilometer:'53567',
        },
      ]
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
