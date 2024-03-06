
<template>
  <div class="content-box">
    <div class="left-page"style="width: 380px;">
      <div class="pageContentTitle"
           style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
        企业名称
      </div>
      <div class="table-container"style="margin: 5px">
        <el-table :data="tableData" height="600" border fit="true" >
          <el-table-column fixed prop="company" label="企业编号" width="140" align="center"></el-table-column>
          <el-table-column prop="score" label="综合评价得分" width="120" align="center"></el-table-column>
          <el-table-column prop="risk" label="风险等级" width="120" align="center"></el-table-column>
          <el-table-column prop="operate" label="操作" width="120" align="center">
            <template slot-scope="scope">
              <el-button type="danger"size="small" @click="addFolder">评估细则</el-button>
            </template>
            <el-dialog title="评估细则" :visible.sync="dialogVisible" width="30%" :before-close="handleClose">
              <span>这是一段信息</span>
              <span slot="footer" class="dialog-footer">
             <el-button @click="dialogVisible = false">取 消</el-button>
             <el-button type="primary" @click="dialogVisible = false">确 定</el-button>
              </span>
            </el-dialog>

          </el-table-column>
        </el-table>
      </div>

    </div>
        <div class="center-page"style="width: 1050px;">
          <div class="pageContentTitle"
               style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
            风险等级区间</div><div style="margin-left: 40px;margin-top: 15px"></div>
          <el-row>
            <el-col :span="17">
              <el-table :data="Data"  border fit="true" >
                <el-table-column prop="level" label="风险等级" width="120" align="center"></el-table-column>
                <el-table-column prop="amount" label="风险区间" width="120" align="center"></el-table-column>
                <el-table-column prop="explain" label="风险说明" width="470" align="center"></el-table-column>
              </el-table>
            </el-col>
            <el-col :span="7">
              <el-table :data="data"  border fit="true" >
                <el-table-column prop="cluster" label="聚类等级" width="130" align="center"></el-table-column>
                <el-table-column prop="center" label="中心值得分" width="130" align="center"></el-table-column>
              </el-table>
              </el-col>
          </el-row>

          <div class="center2-page">
            <div class="pageContentTitle"
                 style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
              企业指标</div>
            <div style="margin-left: 40px;margin-top: 15px"></div>
            <div id="main" style="width:800px;height:280px"></div>
          </div>
        </div>

    </div>


</template>


<script>
import * as echarts from 'echarts';
export default {
  data(){
    return{
      dialogVisible: false,
      data:[
        {
          cluster:'一级风险',
          center:'0.4405',
        },
        {
          cluster:'二级风险',
          center:'0.5642',
        },{
          cluster:'三级风险',
          center:'0.6307',
        },{
          cluster:'四级风险',
          center:'0.5114',
        }],
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
      tableData: [{
        company:'',
        score:'',
        risk:'一级风险',
        operate:'',
      },
        {
          company:'',
          score:'',
          risk:'一级风险',
          operate:'',
        },
        {
          company:'',
          score:'',
          risk:'一级风险',
          operate:'',
        },{
          company:'',
          score:'',
          risk:'一级风险',
          operate:'',
        },{
          company:'',
          score:'',
          risk:'二级风险',
          operate:'',
        },
        {
          company:'',
          score:'',
          risk:'三级风险',
          operate:'',
        },{
          company:'',
          score:'',
          risk:'四级风险',
          operate:'',
        }]
    }
  },
  mounted() {
    var chartDom = document.getElementById('main');
    var myChart = echarts.init(chartDom);
    var option;

    option = {
      title: {
        text:'道路危险货物运输企业安全评估指标权重图'
      },
      grid:{
        height:'65%',
        width:'100%'
      },
      xAxis: {
        type: 'category',
        data: ['DG1', 'DG2', 'PT1', 'PT2', 'PT3', 'PT4', 'PT5','BV1','BV2','BV3','BV4','BV5','BV6','BM1','BM2','BM3','BM4','BM5','BM6','BM7',]
      },
      yAxis: {
        type: 'value'
      },
      series: [
        {
          data: [0.654,0.346,0.122,0.171,0.155,0.252,0.301,0.404,0.106,0.203,0.380,0.077,0.194,0.080,0.351,0.054,0.159,0.095,0.043,0.218],
          type: 'bar',
          showBackground: true,
          backgroundStyle: {
            color: 'rgba(180, 180, 180, 0.2)'
          }
        }
      ]
    };
    option && myChart.setOption(option);
  },

  methods:{
    addFolder(){
      this.dialogVisible =true
    },
    onOpen(){},
    onClose(){
      this.$refs['monuForm'].resetFields()
    },
    close(){
      this.dialogVisible=false
    },
    handleClose(done) {
      this.$confirm('确认关闭？')
        .then(_ => {
          done();
        })
        .catch(_ => {});
    }
  },

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
</script>

<style>

.left-page{
  display:inline-block;
  background: #fff;
  border: 1px solid #ddd;
  width: 30.5%;
  float: left;
}

.center-page {
  display:inline-block;
  background: #fff;
  border: 1px solid #ddd;
  width: 500px;
  float: left;
}
center2-page {
  display:inline-block;
  background: #fff;
  border: 1px solid #ddd;
  width: 500px;
  float: left;
}
.right-top-page{width: 100%;height:40%;background: #fff;}
.right-bottom-page{width: 100%;height:63%;background: #fff;margin-top: 1%}
</style>

