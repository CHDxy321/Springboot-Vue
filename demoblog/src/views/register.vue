<!-- 注册界面 -->
<template>
  <div class="login-wrap">
    <div class="ms-login">
      <div class="ms-title">欢迎注册</div>
      <!-- 注册表单 -->
      <el-form :model="registerForm" :rules="registerRules" ref="registerForm" label-width="90px" class="register_form">
        <el-form-item label="用户名称" prop="username">
          <el-input  v-model="registerForm.username"></el-input>
        </el-form-item>
        <el-form-item  label="用户密码" prop="password">
          <el-input  v-model="registerForm.password"></el-input>
        </el-form-item>
        <el-form-item  label="邮箱" prop="email">
          <el-input  v-model="registerForm.email"></el-input>
        </el-form-item>
        <el-form-item label="公司名称" prop="company">
          <el-input  v-model="registerForm.company"></el-input>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="submitForm('registerForm')">立即注册</el-button>
          <el-button type="primary" @click="submitForm('registerForm')">重置</el-button>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      registerForm: {
        username: '',
        password: '',
        email: ''
      },
      registerRules: {
        username: [
          { required: true, message: '请输入用户名称', trigger: 'blur' },
          { min: 3, max: 10, message: '长度在 3 到 10 个字符', trigger: 'blur' }
        ],
        password: [
          { required: true, message: '请输入密码', trigger: 'blur' },
          { min: 3, max: 15, message: '长度在 3到 15 个字符', trigger: 'blur' }
        ],
        email: [
          { required: true, message: '请输入邮箱', trigger: 'blur' },
          { min: 3, max: 15, message: '长度在 3 到 15 个字符', trigger: 'blur' }
        ]
      }
    };
  },
  methods: {
    submitForm(formName) {
      this.$refs[formName].validate((valid) => {
        if (valid) {
          alert('submit!');
          this.$axios.post('http://localhost:8181/user/register',this.ruleForm).then(function (resp) {
            if(resp.data == 'success'){
              this.$alert('《'+ this.ruleForm.licenseplate+'》创建成功！', '消息', {
                confirmButtonText: '确定',
                callback: action => {
                  this.$router.push('/login')
                  console.log(resp)
                }
              })
            }
          })
        } else {
          console.log('error submit!!');
          return false;
        }
      });
    },
    resetForm(formName) {
      this.$refs[formName].resetFields();
    }
  }
}
</script>

<style scoped>
.login-wrap {
  position: absolute;
  width: 100%;
  height: 100%;
  background: url('/static/img/newlogin-bg.jpg');
  background-size: cover;
}
.ms-title {
  width: 100%;
  text-align: center;
  font-size:23px;
  margin: 25px 0px 15px;
}
.ms-login {
  position: absolute;
  top: 50%;
  left: 50%;
  margin-top: -190px;
  margin-left: -250px;
  width: 500px;
  height: 400px;
  background: #fff;
  border-radius: 5%;

}
.register_form {
  width: 420px;
  height: 250px;
  position: absolute;
  top: 80px;
  left: 25px;
}
.login-btn button {
  width: 40%;
  height: 36px;
  text-align: center;
  margin-bottom: 10px;
}
</style>
