<template>
  <div class="content-box">
<!--    评估表单-->
    <div class="left-page">
      <div class="pageContentTitle"
           style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
        危险货物运输风险等级评估
      </div>
      <div class="riskform" style="display: inline-block"></div>

      <el-form style="width: 70%":model="riskForm" :rules="rules" ref="riskForm" label-width="200px" class="demo-riskForm">
        <el-form-item label="车辆定检情况" prop="id">
          <el-select v-model="riskForm.id" placeholder="请选择定检周期">
            <el-option label="半年" value=1></el-option>
            <el-option label="一年" value=2></el-option>
          </el-select>
        </el-form-item>

        <el-form-item label="车辆类型" prop="cllx">
          <el-select v-model="riskForm.cllx" placeholder="请选择车辆类型">
            <el-option label="卡车" value=0></el-option>
            <el-option label="非法改装车辆" value=1></el-option>
            <el-option label="油罐车" value=2></el-option>
            <el-option label="罐车" value=3></el-option>
          </el-select>
        </el-form-item>

        <el-form-item label="运输货物类型" prop="syxz">
          <el-select v-model="riskForm.syxz" placeholder="请选择货物类型">
            <el-option label="爆炸品" value=4></el-option>
            <el-option label="气体" value=3></el-option>
            <el-option label="易燃液体" value=2></el-option>
            <el-option label="易燃固体" value=1></el-option>
          </el-select>
        </el-form-item>

        <el-form-item label="货物运输时间" prop="sgxt">
          <el-select v-model="riskForm.sgxt" placeholder="请选择货物运输时间">
            <el-option label="18:00-20:00" value=0></el-option>
            <el-option label="20:00-次日0：00" value=1></el-option>
            <el-option label="0:00-4:00" value=2></el-option>
            <el-option label="12:00-16:00" value=3></el-option>
            <el-option label="4:00-8：00" value=4></el-option>
            <el-option label="8:00-12:00" value=5></el-option>
          </el-select>
        </el-form-item>

        <el-form-item label="当前季度" prop="zyglss">
          <el-select v-model="riskForm.zyglss" placeholder="请选择当前季度">
            <el-option label="春季" value=0></el-option>
            <el-option label="秋季" value=1></el-option>
            <el-option label="冬季" value=2></el-option>
            <el-option label="夏季" value=3></el-option>
          </el-select>
        </el-form-item>

        <el-form-item label="道路类型" prop="dllx">
          <el-select v-model="riskForm.dllx" placeholder="请选择道路类型">
            <el-option label="县级及以下车道" value=0></el-option>
            <el-option label="省市级车道" value=1></el-option>
            <el-option label="国道" value=2></el-option>
            <el-option label="高速公路" value=3></el-option>
          </el-select>
        </el-form-item>

        <el-form-item label="气候类型" prop="dlwlgl">
          <el-select v-model="riskForm.dlwlgl" placeholder="请选择气候类型">
            <el-option label="多云" value=0></el-option>
            <el-option label="晴天" value=1></el-option>
            <el-option label="雨雪" value=2></el-option>
            <el-option label="雾霾" value=3></el-option>
          </el-select>
        </el-form-item>

        <el-form-item label="驾驶员状态" prop="lcfhsblx">
          <el-select v-model="riskForm.lcfhsblx" placeholder="请选择已连续驾驶时间">
            <el-option label="8小时" value=1></el-option>
            <el-option label="5小时" value=2></el-option>
            <el-option label="3小时" value=3></el-option>
            <el-option label="1小时" value=4></el-option>
          </el-select>
        </el-form-item>
      </el-form>
      <div class="button" style="margin-left: 15%;">
        <el-button type="primary" @click="submitForm('riskForm')">提交风险指标</el-button>
        <el-button @click="resetForm('riskForm')">重置</el-button>
        <i class=""></i>
        <el-button type="primary" @click="getForm('riskForm')">后台处理</el-button></div>
    </div>

<!--评估结果与评估标准-->
    <div class="right-page" >
<!--      风险等级显示-->
      <div class="right-top-page">
        <div class="pageContentTitle"
             style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
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
        <div style="display: inline-block;float: right;margin-right: 40px;padding-top: 10px">
          <img src="/static/img/fx.png" style="width:270px;height: 150px ">
        </div>
      </div>
<!--      标准说明-->
      <div class="right-bottom-page">
        <div class="pageContentTitle"
             style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
          风险等级评估标准说明
        </div>
        <div style="margin-left: 40px;margin-top: 15px">
          <el-image style="width: 320px; height: 150px" src="/static/img/car.png" :preview-src-list="srcList1"></el-image>
          <el-image style="width: 320px; height: 150px" src="/static/img/month.png" :preview-src-list="srcList2"></el-image>
          <el-image style="width: 320px; height: 150px" src="/static/img/time.png" :preview-src-list="srcList3"></el-image>
          <el-image style="width: 320px; height: 150px" src="/static/img/accident.png" :preview-src-list="srcList4"></el-image></div>
      </div>

    </div>
  </div>
</template>

<script>
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
        zyglss: '',
        dllx: '',
        dlwlgl: '',
        lcfhsblx:''
      },
      // 表单验证规则
      rules: {
        id:[{ required: true, message: ' 请选择车检周期', trigger: 'change' }],
        cllx:[{ required: true, message: ' 请选择车辆类型', trigger: 'change' }],
        syxz: [{ required: true, message: '请选择货物类型', trigger: 'change' }],
        sgxt: [{ required: true, message: '请选择货物运输时间', trigger: 'change' }],
        zyglss: [{ required: true, message: '请选择运输时间', trigger: 'change' }],
        dllx: [{ required: true, message: '请选择道路类型', trigger: 'change' }],
        dlwlgl: [{ required: true, message: '请选择气候类型', trigger: 'change' }],
        lcfhsblx: [{ required: true, message: '请选择已连续驾驶时间', trigger: 'change' }],
      },
      srcList1: ['/static/img/car.png'],
      srcList2: ['/static/img/month.png' ],
      srcList3: ['/static/img/time.png' ],
      srcList4: ['/static/img/accident.png' ],

    }
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


     /* const _this=this;
      this.$axios.get('http://localhost:8181/risk/findAll/1/10').then(function (resp) {
        console.log(resp.data.content[resp.data.content.length -1])
        _this.riskresult=resp.data.content[resp.data.content.length -1].syxz;
        if(resp.data.content[resp.data.content.length -1].syxz == '1') {
          _this.measurement='通过平台或卫星通信等手段对驾驶员进行提醒'
          ;
        } else if(resp.data.content[resp.data.content.length -1].syxz == '2') {
          _this.measurement='通过平台或卫星通信等手段对驾驶员进行提醒，根据车辆运行的路线通知下一站点工作人员对该车辆重点关注'
        }
        else if(resp.data.content[resp.data.content.length -1].syxz == '3') {
          _this.measurement='通知司机在适宜路段停车进行休息和车辆检查，无法通知时协调附近工作人员做好应急救护准备，并通知附件车辆提取做好避险准备。'
        }
        else {
          _this.measurement='无'

        }
      })*/
      }
  }

}
</script>

<style>
.left-page{display:inline-block;width: 40%;height:94%;background: #fff;margin: 1%}
.riskform{margin-top: 5px;margin-bottom: 25px}
.right-page{display:inline-block;width: 55%;height:90%;float: right;margin-top:1%;margin-right:2% }
.right-top-page{width: 100%;height:40%;background: #fff;}
.right-bottom-page{width: 100%;height:63%;background: #fff;margin-top: 1%}
</style>
