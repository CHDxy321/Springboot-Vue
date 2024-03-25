<template>
  <div class="content-box">
    <!--    评估表单-->
    <div class="pageLeft">
      <div class="pageContentTitle"
           style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
        企业安全等级评估
      </div>
      <div class="riskform">

      <el-form style="width: 70%":model="riskForm" :rules="rules" ref="riskForm" label-width="150px" class="demo-riskForm">
        <el-form-item label="危险货物类型(DG1)">
          <el-select v-model="form.dg1">
            <el-option v-for="option in dg1Options" :key="option.value" :label="option.label" :value="option.value"></el-option>
          </el-select>
        </el-form-item>
          <el-form-item label="危险货物的装卸技术">
            <el-select v-model="form.dg2grade">
              <el-option label="优秀" value="excellent"></el-option>
              <el-option label="良好" value="good"></el-option>
              <el-option label="一般" value="average"></el-option>
              <el-option label="较差" value="poor"></el-option>
              <el-option label="差" value="bad"></el-option>
            </el-select>
          </el-form-item>
        <el-form-item label="平均年龄(PT1)">
          <el-input-number v-model="form.pt1" :min="0"></el-input-number>
        </el-form-item>
        <el-form-item label="平均驾龄(PT2)">
          <el-select v-model="form.pt2">
            <el-option label="2 年以下" value="5"></el-option>
            <el-option label="2 到 5 年" value="7"></el-option>
            <el-option label="5 年以上" value="10"></el-option>
          </el-select>
        </el-form-item>
          <el-form-item label="理论文化水平" prop="PT3">
            <el-select v-model="form.pt3grade">
              <el-option label="优秀" value="excellent"></el-option>
              <el-option label="良好" value="good"></el-option>
              <el-option label="一般" value="average"></el-option>
              <el-option label="较差" value="poor"></el-option>
              <el-option label="差" value="bad"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="技术业务水平" prop="PT4">
            <el-select v-model="form.pt4grade">
              <el-option label="优秀" value="excellent"></el-option>
              <el-option label="良好" value="good"></el-option>
              <el-option label="一般" value="average"></el-option>
              <el-option label="较差" value="poor"></el-option>
              <el-option label="差" value="bad"></el-option>
            </el-select>
          </el-form-item>
        <el-form-item label="驾驶违章记录(PT5)">
          <el-input-number v-model="form.pt5" :min="0"></el-input-number>
        </el-form-item>
        <el-form-item label="车辆类型(BV1)">
          <el-select v-model="form.bv1">
            <el-option label="一级车辆" value="10"></el-option>
            <el-option label="二级及以下车辆" value="6"></el-option>
          </el-select>
        </el-form-item>
          <el-form-item label="车辆的平均营运车龄" prop="BV2">
            <el-select v-model="form.bv2grade">
              <el-option label="优秀" value="excellent"></el-option>
              <el-option label="良好" value="good"></el-option>
              <el-option label="一般" value="average"></el-option>
              <el-option label="较差" value="poor"></el-option>
              <el-option label="差" value="bad"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="车辆的维修及保养情况" prop="BV3">
            <el-select v-model="form.bv3grade">
              <el-option label="优秀" value="excellent"></el-option>
              <el-option label="良好" value="good"></el-option>
              <el-option label="一般" value="average"></el-option>
              <el-option label="较差" value="poor"></el-option>
              <el-option label="差" value="bad"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="车辆的安全设施状况" prop="BV4">
            <el-select v-model="form.bv4grade">
              <el-option label="优秀" value="excellent"></el-option>
              <el-option label="良好" value="good"></el-option>
              <el-option label="一般" value="average"></el-option>
              <el-option label="较差" value="poor"></el-option>
              <el-option label="差" value="bad"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="车辆的平均运营里程数" prop="BV5">
            <el-select v-model="form.bv5grade">
              <el-option label="优秀" value="excellent"></el-option>
              <el-option label="良好" value="good"></el-option>
              <el-option label="一般" value="average"></el-option>
              <el-option label="较差" value="poor"></el-option>
              <el-option label="差" value="bad"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="车辆的作业场所及管理" prop="BV6">
            <el-select v-model="form.bv6grade">
              <el-option label="优秀" value="excellent"></el-option>
              <el-option label="良好" value="good"></el-option>
              <el-option label="一般" value="average"></el-option>
              <el-option label="较差" value="poor"></el-option>
              <el-option label="差" value="bad"></el-option>
            </el-select>
          </el-form-item>
        <el-form-item label="安全组织管理(BM1)">
        <el-select v-model="form.bm1grade">
          <el-option label="优秀" value="excellent"></el-option>
          <el-option label="良好" value="good"></el-option>
          <el-option label="一般" value="average"></el-option>
          <el-option label="较差" value="poor"></el-option>
          <el-option label="差" value="bad"></el-option>
        </el-select>
        </el-form-item>
        <el-form-item label="安全管理制度(BM2)">
          <el-select v-model="form.bm2">
            <el-option label="完善" value="10"></el-option>
            <el-option label="不完善" value="0"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="安全费用投入(BM3)">
          <el-select v-model="form.bm3">
            <el-option label="1.5%及以上" value="0"></el-option>
            <el-option label="1%-1.5%" value="2.5"></el-option>
            <el-option label="0.5%-1%" value="5"></el-option>
            <el-option label="0.25%-0.5%" value="7.5"></el-option>
            <el-option label="0.25%以下" value="10"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="安全培训频率(BM4)">
          <el-select v-model="form.bm4">
            <el-option label="1以上" value="10"></el-option>
            <el-option label="0.75-1" value="7.5"></el-option>
            <el-option label="0.5-0.75" value="5"></el-option>
            <el-option label="0.25-0.5" value="2.5"></el-option>
            <el-option label="0.25以下" value="0"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="应急救援及事故处理(BM5)">
          <el-input-number v-model="form.bm5M" :min="0"></el-input-number>
          <el-input-number v-model="form.bm5N" :min="0"></el-input-number>
        </el-form-item>
      <el-form-item label="消防设备管理" prop="BM6">
        <el-select v-model="form.bm6grade">
          <el-option label="优秀" value="excellent"></el-option>
          <el-option label="良好" value="good"></el-option>
          <el-option label="一般" value="average"></el-option>
          <el-option label="较差" value="poor"></el-option>
          <el-option label="差" value="bad"></el-option>
        </el-select>
          </el-form-item>
          <el-form-item label="信息监控系统" prop="BM7">
            <el-select v-model="form.bm7grade">
              <el-option label="优秀" value="excellent"></el-option>
              <el-option label="良好" value="good"></el-option>
              <el-option label="一般" value="average"></el-option>
              <el-option label="较差" value="poor"></el-option>
              <el-option label="差" value="bad"></el-option>
            </el-select>
          </el-form-item>
      </el-form>
      </div>
      <div class="button" style="margin-left: 15%;">
        <el-button type="primary" @click="submitForm">提交风险指标</el-button>
        <el-button @click="resetForm('riskForm')">重置</el-button>
</div>
    </div>


<!--    表2-->
      <div class="pageCenter">
        <div class="pageContentTitle"
             style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
          企业数据量化结果
        </div>
        <div class="riskform2" style="display: inline-block"></div>
        <el-table :data="table2Data" style="width: 70%":model="riskForm2" :rules="rules" ref="riskForm2" label-width="150px" class="demo-riskForm2">
          <el-table-column prop="label" label="标签名称"></el-table-column>
          <el-table-column prop="value" label="量化值"></el-table-column>
        </el-table>


        <div class="button" style="margin-left: 15%;">
           <el-button @click="resetForm('riskForm')">重置</el-button>
          <i class=""></i>
          <el-button type="primary" @click="getForm('riskForm')">后台处理</el-button></div>
      </div>

      <!--      标准说明-->
      <div class="pageRight">
        <div class="pageContentTitle"
             style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 15px;font-size: 15px;font-weight: bold;">
          各指标正负理想解距离
        </div>
        <div id="main" style="width:450px;height:400px;padding-left: 20px"></div>
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
    <div class="pageright">
      <div style="margin-left: 5px;margin-top: 10px"></div>
      <el-table :data="Data" height="300" border fit="true" >
        <el-table-column prop="level" label="风险等级" width="120" align="center"></el-table-column>
        <el-table-column prop="amount" label="风险区间" width="120" align="center"></el-table-column>
        <el-table-column prop="explain" label="风险说明" width="470" align="center"></el-table-column>
      </el-table>
    </div>
    </div>
</template>

<script>
import * as echarts from 'echarts';
  export default {
    data(){
      return{
          form: {
            dg1: null,
            pt1: null,
            pt2: null,
            pt5: null,
            bv1: null,
           bm2: null,
           bm3: null,
           bm4: null,
            bm5M: null,
           bm5N: null,
            dg2grade: null,
            pt3grade: null,
            pt4grade: null,
            bv2grade: null,
            bv3grade: null,
            bv4grade: null,
            bv5grade: null,
            bv6grade: null,
            bm1grade: null,
            bm6grade: null,
            bm7grade: null,

      },
        dg1Options: [
          { label: 'A 类爆炸品、易燃气体、极易燃液体、一级危险的氧化剂、剧毒物质', value: 4 },
          { label: '爆炸品、氧化性气体、高度易燃液体、二级危险的氧化剂', value: 6 },
          { label: '其他爆炸品、有毒气体、易燃液体、有机过氧化物、有害物质', value: 8 },
          { label: '一般爆炸品、有毒气体、液体', value: 10 }
        ],

        table2Data: []
      };
    },
    watch: {
      form: {
        handler() {
          this.calculateScores();
        },
        deep: true
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

      calculateScore(pingfen) {
        // 根据选择框的值计算评分
        const grade = this.form.pingfen;
        return this.getScoreFromGrade(grade);
      },
      // 添加其他指标的评分计算方法

      getScoreFromGrade(grade) {
        // 将评估等级转换为评分
        switch (grade) {
          case "excellent":
            return 10;
          case "good":
            return 7.5;
          case "average":
            return 5;
          case "poor":
            return 2.5;
          case "bad":
            return 0;
          default:
            return 0;
        }
      },

      calculateScoreDG1() {
        if (this.form.dg1 === "货物类型1") {
          return 10;
        } else if (this.form.dg1 === "货物类型2") {
          return 7.5;
        } else if (this.form.dg1 === "货物类型3") {
          return 5;
        } else {
          return 0;
        }
      },
      calculateScorePT1() {
        if (this.form.pt1 >= 1.2) {
          return 0;
        } else if (this.form.pt1 >= 0.9 && this.form.pt1 < 1.2) {
          return 2.5;
        } else if (this.form.pt1 >= 0.6 && this.form.pt1 < 0.9) {
          return 5;
        } else if (this.form.pt1 >= 0.3 && this.form.pt1 < 0.6) {
          return 7.5;
        } else {
          return 10;
        }
      },
      calculateScorePT2() {
        if (this.form.pt2 === "2 年以下") {
          return 10;
        } else if (this.form.pt2 === "2 到 5 年") {
          return 7.5;
        } else {
          return 5;
        }
      },
      calculateScoreBV1() {
        if (this.form.bv1 === "一级车辆") {
          return 10;
        } else {
          return 6;
        }
      },
      calculateScoreBM2() {
        return this.form.bm2 === "完善" ? 10 : 0;
      },
      calculateScoreBM3() {
        if (this.form.bm3 >= 0.015) {
          return 0;
        } else if (this.form.bm3 >= 0.01 && this.form.bm3 < 0.015) {
          return 2.5;
        } else if (this.form.bm3 >= 0.005 && this.form.bm3 < 0.01) {
          return 5;
        } else if (this.form.bm3 >= 0.0025 && this.form.bm3 < 0.005) {
          return 7.5;
        } else {
          return 10;
        }
      },
      calculateScoreBM4() {
        if (this.form.bm4 >= 1) {
          return 10;
        } else if (this.form.bm4 >= 0.75 && this.form.bm4 < 1) {
          return 7.5;
        } else if (this.form.bm4 >= 0.5 && this.form.bm4 < 0.75) {
          return 5;
        } else if (this.form.bm4 >= 0.25 && this.form.bm4 < 0.5) {
          return 2.5;
        } else {
          return 0;
        }
      },

// 添加数据函数
      submitForm() {

          const dg1Score = this.calculateScoreDG1();
          const dg2Score = this.calculateScore(dg2Score);
          const pt1Score = this.calculateScorePT1();
          const pt2Score = this.calculateScorePT2();
          const pt3Score = this.calculateScore(pt3Score)
          const pt4Score = this.calculateScore(pt3Score)
          const bv1Score = this.calculateScoreBV1();
          const bv2Score = this.calculateScore(bv2Score);
          const bv3Score = this.calculateScore(bv3Score);
          const bv4Score = this.calculateScore(bv4Score);
          const bv5Score = this.calculateScore(bv5Score);
          const bv6Score = this.calculateScore(bv6Score);
          const bm1Score = this.calculateScore(bm1Score);
          const bm2Score = this.calculateScoreBM2();
          const bm3Score = this.calculateScoreBM3();
          const bm4Score = this.calculateScoreBM4();
          const bm6Score = this.calculateScore(bm6Score);
          const bm7Score = this.calculateScore(bm7Score);

          this.table2Data = [
            { label: "危险货物类型(DG1)", value: dg1Score },
            { label: "危险货物的装卸技术(DG2)", value: dg2Score },
            { label: "平均年龄(PT1)", value: pt1Score },
            { label: "平均驾龄(PT2)", value: pt2Score },
            { label: "理论文化水平(PT3) ", value: pt3Score },
            { label: "技术业务水平(PT4) ", value: pt4Score },
            { label: "车辆类型(BV1)", value: bv1Score },
            { label: "车辆的平均营运车龄(BV2)", value: bv2Score },
            { label: "车辆的维修及保养情况(BV3)", value: bv3Score },
            { label: "车辆的安全设施状况(BV4)", value: bv4Score },
            { label: "车辆的平均运营里程数(BV5)", value: bv5Score },
            { label: "车辆的作业场所及管理(BV6)", value: bv6Score },
            { label: "安全管理组织(𝐵𝑀1)", value: bm1Score },
            { label: "安全管理制度(𝐵𝑀2)", value: bm2Score },
            { label: "安全费用投入(𝐵𝑀3)", value: bm3Score },
            { label: "安全培训频率(𝐵𝑀4)", value: bm4Score },
            // { label: "应急救援及事故处理(𝐵𝑀5) ", value: bm5Score },
            { label: "消防设备管理(𝐵𝑀6)", value: bm6Score },
            { label: "信息监控系统(𝐵𝑀7)", value: bm7Score }
          ];

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

  .riskform{margin-top: 5px;margin-bottom: 25px; }
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
    overflow-y: auto; /* 添加垂直滚动样式 */
  }
  .pageCenter{
    background: #fff;
    border: 1px solid #ddd;
    width: 30.5%;
    float: left;
    margin-left: 0% ;
    margin-right: 1%;
    height:100%;
  }
  .pageRight{
    background: #fff;
    border: 1px solid #ddd;
    width: 36%;
    float: left;
    margin-left: 0.1%;
    height:45%;
  }
  .pageRight2{
    background: #fff;
    border: 1px solid #ddd;
    width: 36%;
    float: left;
    margin-left: 0.1%;
    height:30%;
  }
  .pageright{
    background: #fff;
    border: 1px solid #ddd;
    width: 36%;
    float: left;
    margin-left: 0.1%;
    height:25%;
  }
</style>
