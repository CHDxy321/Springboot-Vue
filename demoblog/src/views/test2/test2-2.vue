<template>
  <!--一个template只能有一个根节点，所以要加div标签-->
  <div class="content-box"  >
    <div class="container">
      <!--面包屑导航-->
      <div style="margin-left: 10px">
        <el-breadcrumb separator-class="el-icon-arrow-right">
          <el-breadcrumb-item :to="{ path: '/test2/test2-2' }">数据统计查询</el-breadcrumb-item>
          <el-breadcrumb-item>车辆报警信息</el-breadcrumb-item>
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
            <el-form style="width: 70%":model="ruleForm" :rules="rules" ref="ruleForm" label-width="200px" class="demo-ruleForm">
              <el-form-item label="车牌号码" prop="licenseplate" >
                <el-input v-model="ruleForm.licenseplate" value="licenseplate"></el-input>
              </el-form-item>
              <el-form-item label="车牌颜色" prop="licenseplatecolor">
                <el-input v-model="ruleForm.licenseplatecolor"></el-input>
              </el-form-item>
              <el-form-item label="所属企业" prop="belongcompany">
                <el-input v-model="ruleForm.belongcompany"></el-input>
              </el-form-item>
              <el-form-item label="所属运营商" prop="belongbusiness">
                <el-input v-model="ruleForm.belongbusiness" value="belongbusiness"></el-input>
              </el-form-item>
                <el-form-item label="接收时间" prop="receptiontime">
                  <el-input v-model="ruleForm.receptiontime" value="receptiontime"></el-input>
                </el-form-item>
                <el-form-item label="终端时间" prop="terminaltime">
                  <el-input v-model="ruleForm.terminaltime" value="terminaltime"></el-input>
                </el-form-item>
                <el-form-item label="经纬度" prop="longitudelatitude">
                  <el-input v-model="ruleForm.longitudelatitude" value="longitudelatitude"></el-input>
                </el-form-item>
              <el-form-item label="所属类型" prop="belongtype">
                <el-select v-model="ruleForm.belongtype" value="belongtype" placeholder="请选择行业类型" style="width: 235px">
                  <el-option label="重载普货" value="重载普货"></el-option>
                  <el-option label="危货运输" value="危货运输"></el-option>
                  <el-option label="班车客运" value="班车客运"></el-option>
                </el-select>
              </el-form-item>
              <el-form-item label="报错位置" prop="warnlocation">
                <el-select v-model="ruleForm.warnlocation" value="warnlocation" placeholder="请选择事故类型" style="width: 235px">
                  <el-option label="刮擦" value="刮擦"></el-option>
                  <el-option label="泄露" value="泄露"></el-option>
                  <el-option label="碰撞" value="碰撞"></el-option>
                  <el-option label="侧滑" value="侧滑"></el-option>
                  <el-option label="爆燃" value="爆燃"></el-option>
                  <el-option label="追尾" value="追尾"></el-option>
                  <el-option label="侧翻" value="侧翻"></el-option>
                </el-select>
              </el-form-item>
                <el-form-item label="警告类型" prop="warntype">
                  <el-select v-model="ruleForm.warntype" value="warntype" placeholder="请选择警告类型" style="width: 235px">
                    <el-option label="1级警告" value="1级警告"></el-option>
                    <el-option label="2级警告" value="2级警告"></el-option>
                    <el-option label="3级警告" value="3级警告"></el-option>
                  </el-select>
                </el-form-item>
            </el-form>

            <el-button type="primary" @click="submitForm('ruleForm')">立即创建</el-button>
            <el-button @click="resetForm('ruleForm')">重置</el-button>
            <el-button @click="dialogFormVisible = false">取 消</el-button>
          </el-dialog>
      <!--数据图形化按钮-->
          <el-button type="danger" plain @click="centerDialogVisible = true">报警信息地图</el-button>
          <el-dialog  :visible.sync="centerDialogVisible" width="90%" center>
            <div style="height:550px"><iframe src="https://maplab.amap.com/share/mapv/1c7a1f4b6bb8fc924cdd68c5355cedd4" height="100%" width="100%"></iframe></div>
            <span slot="footer" class="dialog-footer">
                  <el-button type="primary" @click="centerDialogVisible = false">确 定</el-button>
           </span>
          </el-dialog>
        </div>

      </div>
<!--Table显示后台数据-->
      <div class="table-container"style="margin: 5px">
        <el-table :data="tableData" border  fit="true" >
          <el-table-column fixed prop="id" label="编号" width="80" align="center" sortable></el-table-column>
          <el-table-column prop="licenseplate" label="车牌号码" width="120" align="center"></el-table-column>
          <el-table-column prop="licenseplatecolor" label="车牌颜色" width="100" align="center"></el-table-column>
          <el-table-column prop="belongcompany" label="所属企业" width="300" align="center"></el-table-column>
          <el-table-column prop="belongbusiness" label="所属运营商" width="270" align="center"></el-table-column>
          <el-table-column prop="belongtype" label="所属行业" width="100" align="center"></el-table-column>
          <el-table-column prop="warnlocation" label="报错位置" width="300" align="center"></el-table-column>
          <el-table-column prop="receptiontime" label="接收时间" width="180" align="center"></el-table-column>
          <el-table-column prop="terminaltime" label="终端时间" width="180" align="center"></el-table-column>
          <el-table-column prop="longitudelatitude" label="经纬度" width="180" align="center"></el-table-column>
          <el-table-column prop="warntype" label="警告类型" width="120" align="center"></el-table-column>
          <el-table-column label="操作" width="100" align="center" fixed="right">

            <template slot-scope="scope">
              <!--<el-button @click="edit(scope.row)" type="text" size="small">修改</el-button>-->
              <!--<el-button @click="deleteid(scope.row)"type="text" size="small">删除</el-button>-->
                <!--删除按钮-->
                <el-button  size="mini"  type="danger" plain slot="reference" @click="deleteid(scope.row)">处理</el-button>
            </template>
          </el-table-column>
        </el-table>
      </div>
      <!--分页组件-->
      <!-- page-size每页展示的记录数-->
      <!--创建点击事件@currentchange="page"-->
        <el-pagination
          @current-change="page"
          :current-page="currentPage"
          :page-size="10"
          layout="total,prev, pager, next, jumper"
          :total="2000">
        </el-pagination>
    </div>
  </div>
</template>

<script>
  export default {
    methods: {

      // 添加数据函数
      submitForm(formName) {
        const _this = this
        this.$refs[formName].validate((valid) => {
          if (valid) {
            this.$axios.post('http://localhost:8181/warn/save',this.ruleForm).then(function (resp) {
              if(resp.data == 'success'){
                _this.$alert('《'+_this.ruleForm.licenseplate+'》创建成功！', '消息', {
                  confirmButtonText: '确定',
                  callback: action => {
                    _this.$router.push('/test2/test2-2')
                    console.log(resp)
                  }
                })
              }
            })
          }else {
            return false;
          }
        })
      },
// 重置数据界面的函数
      resetForm(formName) {
        this.$refs[formName].resetFields();
      },
      // 删除数据
      deleteid(row){
        // 消息框提示
        this.$confirm('确定删除该条记录吗?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          const _this=this;
          this.$axios.delete('http://localhost:8181/warn/deleteById/'+row.id).then(function (resp) {
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

// 修改数据
      edit(row) {
        // 跳转页面
        this.$router.push({
          path:'/modify',
          query:{
            id:row.id
          }
        })
      },
      // 页面
      page(currentPage) {
        const _this=this;
        this.$axios.get('http://localhost:8181/warn/findAll/'+currentPage+'/10').then(function (resp) {
//         console.log(resp.data)
          _this.tableData=resp.data.content;
          _this.total=resp.data.totalElements
          // alert(currentPage)
        })
      }
    },
    // 取数据
    created(){
      const _this=this;
      // "'http://localhost:8181/book/findAll/{page}/{size}"
      this.$axios.get('http://localhost:8181/warn/findAll/1/17').then(function (resp) {
        // console.log(resp.data)
        _this.tableData=resp.data.content;
        _this.total=resp.data.totalElements
      })

    },
    // total定义总数,null定义空值，由后端读取数据
    data(){
      return {
        input:null,
        total:null,
        tableData:null,
        dialogTableVisible: false,
        dialogFormVisible: false,
        centerDialogVisible: false,
        currentPage: 1,
        ruleForm: {
          licenseplate: '',
          licenseplatecolor: '',
          belongcompany: '',
          belongbusiness: '',
          belongtype:'',
          warnlocation:'',
          receptiontime:'',
          terminaltime:'',
          longitudelatitude:'',
          warntype:''
        },
        // 表单验证规则
        rules: {
          licenseplate: [
            { required: true, message: '请输入车牌号码', trigger: 'blur' },
            { min: 7, max: 7, message: '长度为7个字符', trigger: 'blur' }
          ],
          licenseplatecolor: [
            { required: true, message: '请输入车牌颜色', trigger: 'blur' }
          ],
          belongcompany: [
            { required: true, message: '请输入管辖机构', trigger: 'change' }
          ],
          belongbusiness: [
            { required: true, message: '请输入所属运营商', trigger: 'change' }
          ],
          belongtype: [
            { required: true, message: '请选择所属行业', trigger: 'change' }
          ],
          warnlocation: [
            { required: true, message: '请输入报错位置', trigger: 'change' }
          ],
          receptiontime: [
            { required: true, message: '请输入接收时间', trigger: 'change' }
          ],
          terminaltime: [
            { required: true, message: '请输入终端时间', trigger: 'change' }
          ],
          longitudelatitude: [
            { required: true, message: '请输入经纬度', trigger: 'change' }
          ],
          warntype: [
            { required: true, message: '请选择警告类型', trigger: 'change' }
          ]
        }
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
</style>
