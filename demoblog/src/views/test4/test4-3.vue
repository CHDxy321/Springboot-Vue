<template>
  <div class="content-box">
    <!--    评估表单-->
    <div class="pageLeft">
      <div class="pageContentTitle"
           style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
        企业安全等级评估
      </div>
      <div class="riskform" style="display: inline-block"></div>
      <el-form style="width: 95%":model="riskForm" :rules="rules" ref="riskForm" label-width="180px" class="demo-riskForm">
        <el-row>
          <el-col span="12">
            <el-form-item label="驾驶员30岁以下人数" prop="id">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="12">
            <el-form-item label="驾驶员30~40岁" prop="cllx">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col span="12">
            <el-form-item label="驾驶员40~50岁" prop="syxz">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="12">
            <el-form-item label="驾驶员50岁以上" prop="sgxt">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col span="12">
            <el-form-item label="驾驶员工作2年以下" prop="qwer">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="12">
            <el-form-item label="驾驶员工作2~5年" prop="zyglss">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col span="12">
            <el-form-item label="驾驶员工作5年以上" prop="dllx">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="12">
            <el-form-item label="驾驶员交通违法罚分数" prop="dlwlgl">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col span="12">
            <el-form-item label="运营车辆" prop="lcfhsblx">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="12">
            <el-form-item label="一级车辆数" prop="dllx">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col span="12">
            <el-form-item label="二级及以下车辆数" prop="dlwlgl">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="12">
            <el-form-item label="应急救援队伍人数" prop="lcfhsblx">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col span="12">
            <el-form-item label="应急演练次数" prop="dllx">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="12">
            <el-form-item label="培训时间(小时)" prop="dlwlgl">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col span="12">
            <el-form-item label="安全生产投入资金(万元)" prop="lcfhsblx">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="12">
            <el-form-item label="车辆运营总里程(公里)" prop="dllx">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col span="12">
            <el-form-item label="行车事故总数" prop="dlwlgl">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="12">
            <el-form-item label="死亡人数" prop="lcfhsblx">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
      </el-form>
      <div class="button" style="margin-left: 30%;margin-top: 8%;">
        <el-button type="primary" @click="submitForm('riskForm')">量化</el-button>
        <el-button @click="resetForm('riskForm')">重置</el-button>
      </div>
    </div>

    <div class="pageCenter">
      <div class="pageContentTitle"
           style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
        量化结果
      </div>
      <div class="riskform2" style="display: inline-block"></div>

      <el-form style="width: 95%":model="riskForm2" :rules="rules" ref="riskForm2" label-width="180px" class="demo-riskForm2">
        <el-row>
          <el-col span="12">
            <el-form-item label="驾驶员30岁以下人数" prop="id">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="12">
            <el-form-item label="驾驶员30~40岁" prop="cllx">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
        </el-row>

        <el-row>
          <el-col span="12">
            <el-form-item label="驾驶员40~50岁" prop="syxz">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="12">
            <el-form-item label="驾驶员50岁以上" prop="sgxt">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
        </el-row>

        <el-row>
          <el-col span="12">
            <el-form-item label="驾驶员工作2年以下" prop="qwer">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="12">
            <el-form-item label="驾驶员工作2~5年" prop="zyglss">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
        </el-row>

        <el-row>
          <el-col span="12">
            <el-form-item label="驾驶员工作5年以上" prop="dllx">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="12">
            <el-form-item label="驾驶员交通违法罚分数" prop="dlwlgl">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
        </el-row>

        <el-row>
          <el-col span="12">
            <el-form-item label="运营车辆" prop="lcfhsblx">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="12">
            <el-form-item label="一级车辆数" prop="dllx">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
        </el-row>

        <el-row>
          <el-col span="12">
            <el-form-item label="二级及以下车辆数" prop="dlwlgl">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="12">
            <el-form-item label="应急救援队伍人数" prop="lcfhsblx">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
        </el-row>

        <el-row>
          <el-col span="12">
            <el-form-item label="应急演练次数" prop="dllx">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="12">
            <el-form-item label="培训时间(小时)" prop="dlwlgl">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
        </el-row>

        <el-row>
          <el-col span="12">
            <el-form-item label="安全生产投入资金(万元)" prop="lcfhsblx">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="12">
            <el-form-item label="车辆运营总里程(公里)" prop="dllx">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
        </el-row>

        <el-row>
          <el-col span="12">
            <el-form-item label="行车事故总数" prop="dlwlgl">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="12">
            <el-form-item label="死亡人数" prop="lcfhsblx">
              <el-input placeholder="" v-model="input"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
      </el-form>
      <div class="button" style="margin-left: 45%;margin-top: 8%;">
        <el-button type="primary" @click="submitForm('riskForm')">评估</el-button>

      </div>
    </div>

    <!--      标准说明-->
    <div class="pageRight">
      <div class="pageContentTitle"
           style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 15px;font-size: 15px;font-weight: bold;">
        各指标正负理想解距离
      </div>
      <div id="main" style="width:400px;height:350px;padding-left: 20px"></div>
    </div>

    <div class="pageright">
      <div style="margin-left: 5px;margin-top: 10px"></div>
      <el-table :data="Data" height="250" border fit="true" >
        <el-table-column prop="level" label="风险等级" width="120" align="center"></el-table-column>
        <el-table-column prop="amount" label="风险区间" width="120" align="center"></el-table-column>
        <el-table-column prop="explain" label="风险说明" width="470" align="center"></el-table-column>
      </el-table>
    </div>
    <div class="pageRight2">
      <div class="pageContentTitle"
           style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 15px;font-size: 15px;font-weight: bold;">
        危险货物运输风险等级评估结果
        <el-button type="mini" @click="getresult('riskForm')">风险等级</el-button>
      </div>
      <div class="risk-content" style="margin: 5%;display: inline-block;float: left">
        <i class="el-icon-warning-outline" ></i>
        危险货物运输风险等级评估：&nbsp&nbsp
        <span style="color: #ff3838">{{riskresult}}</span>
        级风险
        <p style="margin-top: 8px;width: 310px"><i class="el-icon-bell"></i>应对措施：{{measurement}}</p>
      </div>
    </div>
  </div>
</template>

<script>
import * as echarts from 'echarts';
export default {

  data(){
    return{

      measurement:'',
      riskresult:'',
      riskForm: {
        id:'',
        cllx:'',
        syxz:'',
        sgxt:'',
        qwer:'',
        zyglss: '',
        dllx: '',
        dlwlgl: '',
        lcfhsblx:''
      },
      // 表单验证规则
      rules: {
        id:[{ required: true, message: ' 请输入数据', trigger: 'change' }],
        cllx:[{ required: true, message: ' 请输入数据', trigger: 'change' }],
        syxz: [{ required: true, message: '请输入数据', trigger: 'change' }],
        sgxt: [{ required: true, message: '请输入数据', trigger: 'change' }],
        qwer: [{ required: true, message: '请输入数据', trigger: 'change' }],
        zyglss: [{ required: true, message: '请输入数据', trigger: 'change' }],
        dllx: [{ required: true, message: '请输入数据', trigger: 'change' }],
        dlwlgl: [{ required: true, message: '请输入数据', trigger: 'change' }],
        lcfhsblx: [{ required: true, message: '请输入数据', trigger: 'change' }],
      },
      Data:[{
        level:'一级风险',
        amount:'[0.385,0.476)',
        explain:'安全生产较差，危险货物运输过程中事故发生的机率较大，事故发生会造成较多人员伤亡和财产损失，对社会造成巨大损失。',
      },
        {
          level:'二级风险',
          amount:'[0.476,0.535)',
          explain:'安全生产状况一般，危险货物运输过程中事故发生的机率中等，事故发生会造成部分人员伤亡和财产损失。',
        },
        {
          level:'三级风险',
          amount:'[0.535,0.596)',
          explain:'安全生产状况良好，危险货物运输过程中事故发生的机率小，事故发生会造成轻微人员伤亡和财产损失。',
        },
        {level:'四级风险',
          amount:'[0.596,0.675)',
          explain:'安全生产状况优秀，危险货物运输过程中事故发生的机率较小，事故发生不会造成人员伤亡和财产损失。',
        }
      ],
    }
  },
  mounted() {
    var chartDom = document.getElementById('main');
    var myChart = echarts.init(chartDom);
    var option;

    option = {
      title: {
        text: ''
      },
      legend: {
        data: ['正理想解混合加权距离', '负理想解混合加权距离']
      },
      radar: {
        // shape: 'circle',
        indicator: [
          { name: 'DG1', max: 0.03 },
          { name: 'DG2', max: 0.05},
          { name: 'PT1', max: 0.01},
          { name: 'PT2', max: 0.02},
          { name: 'PT3', max: 0.02},
          { name: 'PT4', max: 0.03},
          { name: 'PT5', max: 0.03 },
          { name: 'BV1', max: 0.03 },
          { name: 'BV2', max: 0.03},
          { name: 'BV3', max: 0.03},
          { name: 'BV4', max: 0.03},
          { name: 'BV5', max: 0.03 },
          { name: 'BV6', max: 0.03},
          { name: 'BM1', max: 0.02 },
          { name: 'BM2', max: 0.06 },
          { name: 'BM3', max: 0.02 },
          { name: 'BM4', max: 0.02 },
          { name: 'BM5', max: 0.02 },
          { name: 'BM6', max: 0.02 },
          { name: 'BM7', max: 0.05 },
        ]
      },
      series: [
        {
          name: 'Budget vs spending',
          type: 'radar',
          data: [
            {
              value: [0.0267, 0.0000, 0.0036, 0.0078, 0.0124, 0.0208, 0.0000, 0.0022, 0.0036, 0.0058, 0.0135,
                0.0063, 0.0194, 0.0058, 0.0000, 0.0000, 0.0154, 0.0180, 0.0000, 0.0159],
              name: '正理想解混合加权距离'
            },
            {
              value: [0.01771,0.04095,0.00242,0.01755,0.01243,0.02084,0.02745,0,0,0.007,0.00539,0,0.0054,0.007,
                0.0522,0.01747,0.01544,0.01508,0.0108,0.04394],
              name: '负理想解混合加权距离'
            }
          ]
        }
      ]
    };

    option && myChart.setOption(option);

  },

  methods:{
// 添加数据函数
    submitForm(riskForm) {
      const _this = this;
      this.$refs[riskForm].validate((valid) => {
        if (valid) {
          /*this.$axios.put('http://localhost:8181/risk/update',this.riskForm).then(function (resp) {
            console.log(123)
          });*/
          alert('已成功提交行驶数据')
        }
      })
    },

// 重置数据界面的函数
    resetForm(riskForm) {
      this.$refs[riskForm].resetFields();

    },

    // 危险等级判断函数
    getForm(){
      const _this=this;
      _this.riskresult=this.riskForm.syxz;
      // console.log(typeof (this.riskresult));
      if(this.riskresult =='1'){
        _this.measurement='通过平台或卫星通信等手段对驾驶员进行提醒'
        // alert(123)
      }else if (this.riskresult =='2'){
        _this.measurement='通知司机在适宜路段停车进行休息和车辆检查，无法通知时协调附近工作人员做好应急救护准备，并通知附件车辆提取做好避险准备。'
      }else if(this.riskresult =='3'){
        _this.measurement='通知司机在适宜路段停车进行休息和车辆检查，无法通知时协调附近工作人员做好应急救护准备，并通知附件车辆提取做好避险准备。'
      }
      else {
        _this.measurement='通知司机遇到关卡进行定期检查，并对司机状态进行检查，对其进行相应记录'

      }
    }
  }

}
</script>

<style scoped>

.riskform{margin-top: 5px;margin-bottom: 25px}
.riskform2{margin-top: 5px;margin-bottom: 25px}
.text{
  font-size: 15px;
  font-weight: normal;
  text-indent:28px;

}

.pageLeft{
  background: #fff;
  border: 1px solid #ddd;
  width: 30%;
  margin-left: 0.1% ;
  margin-right: 1%;
  float: left;
  height:100%;
}
.pageCenter{
  background: #fff;
  border: 1px solid #ddd;
  width: 30.5%;
  float: left;
  height:100%;
  margin-left: 0% ;
  margin-right: 1%;
}
.pageRight{
  background: #fff;
  border: 1px solid #ddd;
  width: 36%;
  float: left;
  margin-left: 0.1%;
  height:42%;
}
.pageRight2{
  background: #fff;
  border: 1px solid #ddd;
  width: 36%;
  float: left;
  margin-left: 0.1%;
  height:25%;
}
.pageright{
  background: #fff;
  border: 1px solid #ddd;
  width: 36%;
  float: left;
  margin-left: 0.1%;
  height:33%;
}
</style>
