<template>
  <!--一个template只能有一个根节点，所以要加div标签-->
  <div class="content-box">
    <div class="container" style="margin-top:0px">
      <div style="margin-left: 10px">
        <el-breadcrumb separator-class="el-icon-arrow-right">
          <el-breadcrumb-item :to="{ path: '/test6/test6-1' }">企业数据查询</el-breadcrumb-item>
          <el-breadcrumb-item>企业异常数据</el-breadcrumb-item>
          <el-breadcrumb-item>危运</el-breadcrumb-item>
        </el-breadcrumb>
      </div>
      <div style="margin-top: 15px;font-weight: 700;color: #303133">
        <el-upload class="upload-demo" action="" :on-change="handleChange" :show-file-list="false" :auto-upload="true">
          <el-button  size="small" type="primary" style="margin-right: 10px">上传文件</el-button>
        </el-upload>
        <el-row  style="display:inline-block;text-align:center;padding-top:5px;margin-top: 2px;,margin-bottom:5px">
          <el-button type="primary" round @click="routeone">总览</el-button>
          <el-button type="primary" round @click="routetwo">客运</el-button>
        </el-row>

      </div>
      <!--数据展示部分-->
      <div class="table-container"style="margin: 5px">
        <el-table :data="tableData" border  fit="true" >
          <el-table-column fixed prop="id" label="序号" width="80" align="center" sortable></el-table-column>
          <el-table-column prop="company" label="企业名称" width="300" align="center"></el-table-column>
          <el-table-column prop="carnum" label="车辆总数" width="150" align="center"></el-table-column>
          <el-table-column prop="yichangcar" label="异常设备车辆数" width="200" align="center"></el-table-column>
          <el-table-column prop="weishangbaocar" label="未上报数据车辆数" width="180" align="center"></el-table-column>
          <el-table-column prop="jiashiyuancar" label="驾驶员异常报警车辆数" width="180" align="center"></el-table-column>
          <el-table-column prop="jiahiyuannum" label="驾驶员异常报警次数" width="180" align="center"></el-table-column>
          <el-table-column prop="status" label="归属地" width="140" align="center"></el-table-column>
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
  data () {
    return {
      tableData: [],
      fileContent: '',
      file: '',
      data: '',
      currentPage: 1, // 当前页码
      total: null,
      pageNum: 1,
      pageSize: 20,
      search: '',
    }
  },

  methods: {
    load() {
      fetch("http://localhost:8181/companyerr/findAll?pageNum=" + this.pageNum + "&pageSize=" + this.pageSize).then(res => res.json()).then(res => {
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
        path: 'test6-1'
      })
    },
    routetwo() {
      this.$router.push({
        path: 'test6-3'
      })
    },

//解析excel
    handleChange (file, fileList) {
      this.fileContent = file.raw
      const fileName = file.name
      const fileType = fileName.substring(fileName.lastIndexOf('.') + 1)
      if (this.fileContent) {
        if (fileType === 'xlsx' || fileType === 'xls') {
          this.importfile(this.fileContent)
        } else {
          this.$message({
            type: 'warning',
            message: '附件格式错误，请重新上传！'
          })
        }
      } else {
        this.$message({
          type: 'warning',
          message: '请上传附件！'
        })
      }
    },
    importfile (obj) {
      const reader = new FileReader()
      const _this = this
      reader.readAsArrayBuffer(obj)
      reader.onload = function () {
        const buffer = reader.result
        const bytes = new Uint8Array(buffer)
        const length = bytes.byteLength
        let binary = ''
        for (let i = 0; i < length; i++) {
          binary += String.fromCharCode(bytes[i])
        }
        const XLSX = require('xlsx')
        const wb = XLSX.read(binary, {
          type: "binary"
        })
        const outdata = XLSX.utils.sheet_to_json(wb.Sheets[wb.SheetNames[0]])
        // this.data = [...outdata]
        const arr = []
        outdata.map(v => {
          const obj = { }
          obj.id=v['排名']
          obj.qiye=v['企业名称']
          obj.carnum=v['车辆总数']
          obj.yichangcar=v['异常设备车辆数']
          obj.weishangbaocar=v['未上报数据车辆数']
          obj.jiashiyuancar=v['驾驶员异常报警车辆数']
          obj.jiahiyuannum=v['轨迹异常车辆数']
          obj.status=v['归属地']
          arr.push(obj)
        })
        _this.tableData = _this.tableData.concat(arr)
        console.log(arr)
      }
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
        this.$axios.delete('http://localhost:8181/book/deleteById/'+row.id).then(function (resp) {
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


  },
// 取数据
  created() {
    this.load()
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
