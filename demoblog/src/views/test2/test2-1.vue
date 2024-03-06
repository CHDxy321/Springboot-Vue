<template>
  <!--一个template只能有一个根节点，所以要加div标签-->
  <div class="content-box">
    <div class="container" style="margin-top:0px">
      <div style="margin-left: 10px">
      <el-breadcrumb separator-class="el-icon-arrow-right">
        <el-breadcrumb-item :to="{ path: '/test2/test2-1' }">数据统计查询</el-breadcrumb-item>
        <el-breadcrumb-item>企业异常数据总览</el-breadcrumb-item>
      </el-breadcrumb>
      </div>
      <!--<p style="display: inline-block">数据展示界面 </p>-->
      <div style="background: #eeeeee;height: 55px;margin-left: 5px;margin-top: 10px">
      <div style="display:inline-block;margin-left: 10px;margin-top: 2px">
      <el-input placeholder="姓名" v-model="input"></el-input>
      </div>
        <!--查询窗口和按钮-->
      <div style="display:inline-block;text-align:center;padding-top:5px;margin-top: 2px">
        <el-button type="primary">查询</el-button>

        <!--弹窗添加数据-->
        <!-- 嵌套添加数据的表单-->
        <el-button type="primary" @click="dialogFormVisible = true">新增</el-button>
        <!--<el-button type="primary" @click="handleAdd(scope.row)">新增</el-button>-->
        <el-dialog title="新增数据" :visible.sync="dialogFormVisible" width="600px" >

<!--       数据传输  1.后台传入数据与vue对象绑定，vue对象与视图绑定 2. 用户输入与vue对象绑定 model与ruleForm进行数据绑定 rulrs校验规则绑定-->
<!--          表单主体-->
<!--          ref="ruleForm" 名字属性，没有无法提交 传送给点击事件-->
          <el-form style="width: 70%":model="ruleForm" :rules="rules" ref="ruleForm" label-width="200px" class="demo-ruleForm">
<!--          prop与rules中元素绑定，属性绑定-->
            <el-form-item label="车牌号码" prop="licenseplate">
              <el-input v-model="ruleForm.licenseplate"></el-input>
            </el-form-item>

            <el-form-item label="车牌颜色" prop="licenseplatecolor">
              <el-input v-model="ruleForm.licenseplatecolor"></el-input>
            </el-form-item>

            <el-form-item label="所属企业" prop="name">
              <el-input v-model="ruleForm.name"></el-input>
            </el-form-item>

            <el-form-item label="所属行业" prop="type">
              <el-select v-model="ruleForm.type" placeholder="请选择行业类型">
                <el-option label="重载普货" value="重载普货"></el-option>
                <el-option label="危货运输" value="危货运输"></el-option>
                <el-option label="班车客运" value="班车客运"></el-option>
              </el-select>
            </el-form-item>

            <el-form-item label="管辖机构" prop="adress">
              <el-input v-model="ruleForm.adress"></el-input>
            </el-form-item>

            <el-form-item label="车籍所在地" prop="location">
              <el-input v-model="ruleForm.location"></el-input>
            </el-form-item>

            <el-form-item label="经营状态" prop="status">
              <el-select v-model="ruleForm.status" placeholder="请选择运行状态">
                <el-option label="营业" value="营业"></el-option>
                <el-option label="不营业" value="不营业"></el-option>
              </el-select>
            </el-form-item>

          </el-form>
<!--          表格结束，内嵌入所属的div中-->
          <el-button type="primary" @click="submitForm('ruleForm')">立即创建</el-button>
          <el-button @click="resetForm('ruleForm')">重置</el-button>
          <el-button @click="dialogFormVisible = false">取 消</el-button>
        </el-dialog>
        <el-button type="danger" plain>数据图形化</el-button>
        <el-dialog  :visible.sync="dialogFormVisible" width="90%" center>
          <div style="height:550px"><iframe src="https://maplab.amap.com/share/mapv/1c7a1f4b6bb8fc924cdd68c5355cedd4" height="100%" width="100%"></iframe></div>
          <span slot="footer" class="dialog-footer">
                  <el-button type="primary" @click="dialogFormVisible = false">确 定</el-button>
           </span>
        </el-dialog>
      </div>

      <!--数据图形化按钮-->

    </div>

<!--数据展示部分-->
      <div class="table-container"style="margin: 5px">
        <el-table :data="tableData" border  fit="true" >
          <el-table-column fixed prop="id" label="编号" width="80" align="center" sortable></el-table-column>
          <el-table-column prop="company" label="企业名称" width="350" align="center"></el-table-column>
          <el-table-column prop="carnum" label="车牌总数" width="150" align="center"></el-table-column>
          <el-table-column prop="yichangcar" label="异常车辆设备数" width="150" align="center"></el-table-column>
          <el-table-column prop="weishangbaocar" label="未上报数据车辆数" width="150" align="center"></el-table-column>
          <el-table-column prop="jiashiyuancar" label="驾驶员异常报警车辆数" width="200" align="center"></el-table-column>
          <el-table-column prop="jiahiyuannum" label="驾驶员异常报警次数" width="150" align="center"></el-table-column>
          <el-table-column prop="status" label="归属地" width="150" align="center"></el-table-column>
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
    </div>
<!--分页组件-->
<!-- page-size每页展示的记录数-->
<!--创建点击事件@currentchange="page"-->
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
        // 获取对象 与form的model绑定，对象放入data中 对象与表单绑定
        ruleForm: {
            id:'',
            licenseplate:'',
            licenseplatecolor:'',
            name: '',
            type: '',
            adress: '',
            location:'',
            status: '',
            },
// 表单验证规则 放在data中,与表单rules绑定
      rules: {
          name: [
             { required: true, message: '请输入姓名', trigger: 'blur' },
             { min: 3, max: 5, message: '长度在 3 到 5 个字符', trigger: 'blur' }],
          type: [{ required: true, message: '请选择行业类型', trigger: 'change' }],
          adress: [{ required: true, message: '请输入管辖机构', trigger: 'change' }],
          status: [{ required: true, message: '请选择运行状态', trigger: 'change' }]
          }

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

// 提交 数据函数 立即创建submitForm
submitForm() {
  // _this表示当前vue对象
          const _this = this;
          // 表单所有数据通过校验 传
          this.$refs['ruleForm'].validate((valid) => {
          if (valid) {
            // 校验成功发送数据post this.ruleForm传送的是对象，直接在url后边加
            this.$axios.post('http://localhost:8181/companyerr/save',this.ruleForm).then(function (resp) {
              // alert('123')
              // 传送完成后后台返回success或error 对其进行判断，显示提示信息
              if(resp.data == 'success'){
                _this.$alert('《'+_this.ruleForm.name+'》创建成功！', '消息', {
                  confirmButtonText: '确定',
                  // callback回调函数 调回原界面
                  callback: action => {
                    // 路由，跳转页面 调到原页面 push指令
                    _this.$router.push('/test2/test2-1')
                  }
                })
              }
            })
          }else {
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
deleteid(row){
// 消息框提示
         this.$confirm('确定删除该条记录吗?', '提示', {
         confirmButtonText: '确定',
         cancelButtonText: '取消',
         type: 'warning'
          }).then(() => {
             const _this=this;
             this.$axios.delete('http://localhost:8181/companyerr/deleteById/'+row.id).then(function (resp) {
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
created(){
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
