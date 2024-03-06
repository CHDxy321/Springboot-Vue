<template>
  <div style="text-align:center" >
  <el-dialog title="数据校正" :visible.sync="modifydialogVisible" width="600px"  @close="closeDialog">
    <el-form style="width: 70%" :model="editForm"  :rules="rules" ref="editForm" label-width="200px" class="demo-ruleForm">
      <el-form-item label="编号"  prop="id">
        <el-input v-model="editForm.id" readonly></el-input>
      </el-form-item>
      <el-form-item label="车牌号码" prop="licenseplate">
        <el-input v-model="editForm.licenseplate"></el-input>
      </el-form-item>
      <el-form-item label="车牌颜色" prop="licenseplatecolor">
        <el-input v-model="editForm.licenseplatecolor"></el-input>
      </el-form-item>
        <el-form-item label="所属企业" prop="name">
          <el-input v-model="editForm.name"></el-input>
        </el-form-item>
      <el-form-item label="所属行业" prop="type">
        <el-select v-model="editForm.type" placeholder="请选择行业类型">
          <el-option label="重载普货" value="重载普货"></el-option>
          <el-option label="危货运输" value="危货运输"></el-option>
          <el-option label="班车客运" value="班车客运"></el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="管辖机构" prop="adress">
        <el-input v-model="editForm.adress"></el-input>
      </el-form-item>
        <el-form-item label="车籍所在地" prop="location">
          <el-input v-model="editForm.location"></el-input>
        </el-form-item>
        <el-form-item label="经营状态" prop="status">
          <el-select v-model="editForm.status" placeholder="请选择运行状态">
            <el-option label="营业" value="营业"></el-option>
            <el-option label="不营业" value="不营业"></el-option>
          </el-select>
        </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="submitForm('ruleForm')">修改</el-button>
        <el-button @click="resetForm('ruleForm')">重置</el-button>
      </el-form-item>
    </el-form>
  </el-dialog>
  </div>
</template>

<script>
export default {
  props:['dialogVisible'],

data() {
        return {
          dialogVisible: false,
          editForm: {
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

//弹窗关闭
closeDialog(){
          const _this=this
            _this.$emit('close')
        }
      },
// 弹窗数据提交

submitForm(formName) {
    const _this = this;
    this.$refs[formName].validate((valid) => {
      if (valid) {
        this.$axios.put('http://localhost:8181/book/update',this.editForm).then(function (resp) {
          if(resp.data == 'success'){
            _this.$alert('《'+_this.editForm.name+'》创建成功！', '消息', {
              confirmButtonText: '确定',
              callback: action => {
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
  // 弹窗数据重置
  resetForm(formName) {
    this.$refs[formName].resetFields();
  },
  created() {
    const _this = this;
    this.$axios.get('http://localhost:8181/book/findById/'+this.$route.query.id).then(function(resp){
      _this.editForm = resp.data
    })
  },
    }
</script>

<style scoped>

</style>
