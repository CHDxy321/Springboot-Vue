<template>
  <!--一个template只能有一个根节点，所以要加div标签-->
  <div class="content-box" style="padding: 5px">
    <div class="container">
      <div style="margin-left: 10px">
        <el-breadcrumb separator-class="el-icon-arrow-right">
          <el-breadcrumb-item :to="{ path: '/test2/test2-1' }">数据统计查询</el-breadcrumb-item>
          <el-breadcrumb-item>车辆数据管理</el-breadcrumb-item>
          <el-breadcrumb-item>数据编辑</el-breadcrumb-item>
        </el-breadcrumb>
      </div>
      <div class="modify-box" style="margin-top: 30px">
<!--        添加id属性-->
  <el-form style="width:30%":model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
     <el-form-item label="编号" prop="id">
<!--       readonly 不可修改-->
      <el-input v-model="ruleForm.id" readonly></el-input>
    </el-form-item>
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
    <el-form-item label="车籍" prop="location">
      <el-input v-model="ruleForm.location"></el-input>
    </el-form-item>
    <el-form-item label="经营状态" prop="status">
      <el-select v-model="ruleForm.status" placeholder="请选择运行状态">
        <el-option label="营业" value="营业"></el-option>
        <el-option label="不营业" value="不营业"></el-option>
      </el-select>
    </el-form-item>

    <el-form-item>
      <el-button type="primary" @click="submitForm('ruleForm')">修改</el-button>
      <el-button @click="resetForm('ruleForm')">重置</el-button>
    </el-form-item>
  </el-form>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    data() {
      return {
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
        rules: {
          name: [
            { required: true, message: '请输入姓名', trigger: 'blur' },
            { min: 2, max: 5, message: '长度在 3 到 5 个字符', trigger: 'blur' }
          ],
          type: [
            { required: true, message: '请选择行业类型', trigger: 'change' }
          ],
          adress: [
            { required: true, message: '请输入管辖机构', trigger: 'change' }
          ],
          status: [
            { required: true, message: '请选择运行状态', trigger: 'change' }
          ]
        }
      };
    },
    methods: {
      // 修改之后进行提交
      submitForm(formName) {
        const _this = this;
        this.$refs[formName].validate((valid) => {
          if (valid) {
            // 用put指令传递数据
            this.$axios.put('http://localhost:8181/book/update',this.ruleForm).then(function (resp) {
              if(resp.data == 'success'){
                _this.$alert('《'+_this.ruleForm.name+'》编辑成功！', '消息', {
                  confirmButtonText: '确定',
                  callback: action => {
                    // 确定之后重回test界面
                    _this.$router.push('/test2/test2-1')
                  }
                })
              }
            })
          } else {
            return false;
          }
        });
      },
      // 重置函数
      resetForm(formName) {
        this.$refs[formName].resetFields();
      }
    },
    // 调后台接口 调id对应数据
    created() {
        const _this = this;
        // route拿参数 router路由跳转
        _this.$axios.get('http://localhost:8181/book/findById/'+this.$route.query.id).then(function(resp){
          _this.ruleForm = resp.data
      })
    }
  }
</script>
