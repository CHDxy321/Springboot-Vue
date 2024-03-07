<template>
  <div class="content-box">
    <div class="main">
      <!--危险货物运输事故图-->
      <div class="image">
        <el-card class="left-card" style="display: inline-block;width: 48%;margin-left: 0.5%">
          <div slot="header" class="clearfix">
            <span style="font-size: 19px">陕西省道路运输事业发展中心</span>
          </div>
          <div  class="text" style="font-family: 微软雅黑;text-indent:25px;display: inline-block;padding-top: 2px;font-size: 16px;">
               陕西省道路运输事业发展中心，坚持“科学办交通、<br>
            合力办交通、勤俭办交通”的发展理念，以“三个服务”<br>
            为宗旨，以改革创新为动力，以提高质量和效益为核心,<br>
            围绕“大运输、大物流”发展战略。紧跟公路建设步伐，<br>
            凝聚合力、攻坚克难，全省道路运输行业呈现出稳中有<br>
            进的发展新态势,有力支撑了全省经济社会平稳较快发<br>
            展。<br>
            <br><br>
            <el-button style="float: left; font-size: 17px;padding: 3px 0" type="text" @click="open1">了解更多</el-button>
            <br>

          </div>
          <div class="img-paper" style="display: inline-block;">
            <el-image  src="/static/img/doc/daoluyunshu.png" :preview-src-list="srcList1"></el-image>

          </div>
        </el-card>

        <el-card class="center-card" style="display: inline-block;width: 48%;margin-left: 0.5%">
          <div slot="header" class="clearfix">
            <span style="font-size: 19px">陕西省高速公路收费中心</span>
          </div>
          <div  class="text" style="font-family: 微软雅黑;text-indent:25px;display: inline-block;padding-top: 2px;font-size: 16px;">
               陕西省高速公路收费中心是省交通运输厅直属处级<br>
            公益一类事业单位,主要职责是承担高速公路联网收费<br>
            系统建设管护任务；承担全省高速公路运行信息监测、<br>
            监控和报送发布工作；协助开展全省公路收费稽查的服<br>
            务工作等。<br>
            陕西省高速公路收费中心联系邮箱:sxsfgl@163.com<br>
            服务内容包括：领导信箱、人事、投稿（信息）<br>
            <br><br>
            <el-button style="float: left; font-size: 17px;padding: 3px 0" type="text" @click="open2">了解更多</el-button>
            <br>

          </div>
          <div class="img-paper" style="display: inline-block;">
            <el-image src="/static/img/doc/gaosugonglu.png" :preview-src-list="srcList2"></el-image>
          </div>
        </el-card>

        <el-card class="right-card" style="display: inline-block;width: 32%;margin-left: 0.5%">
          <div slot="header" class="clearfix">
            <span style="font-size: 19px">陕西省交通运输技术服务信息平台</span>
          </div>
          <div class="text" style="font-family: 微软雅黑;text-indent:25px;display: inline-block;padding-top: 2px;font-size: 16px;">
               陕西省交通运输技术<br>
            服务信息平台是正处级公<br>
            益二类事业单位，承担营<br>
            运车辆标准化管理体系的<br>
            技术支撑工作,开展营运<br>
            车辆技术状况等级鉴定、<br>
            燃料消耗量检测认定。
            <br><br><br>
            <el-button style="float: left; font-size: 17px;padding: 3px 0" type="text" @click="open3">了解更多</el-button>
            <br>
          </div>
          <div class="img-paper" style="display: inline-block;">
            <el-image   src="/static/img/doc/jiaotongyunshu.png" :preview-src-list="srcList3"></el-image>

          </div>
        </el-card>

        <el-card class="left2-card" style="display: inline-block;width: 32%;margin-left: 0.5%;margin-top:  0.5%">
          <div slot="header" class="clearfix">
            <span style="font-size: 19px">陕西省公安厅交通管理局</span>

          </div>
          <div class="text" style="font-family: 微软雅黑;text-indent:25px;display: inline-block;padding-top: 2px;font-size: 16px;">
            陕西省公安厅交通管理局，<br>
            为群众提供变更驾驶证联系方<br>
            式，违法处理，罚款缴纳，交<br>
            通违法行为消除，交通违法处<br>
            理撤销申请，满分教育，审验<br>
            教育，学法减分，事故快处，<br>
            等30余项公安交通管理业务。<br>
            <br><br>
            <el-button style="float: left; font-size: 17px;padding: 3px 0" type="text" @click="open4">了解更多</el-button>
            <br>
          </div>
          <div class="img-paper" style="display: inline-block;">
            <el-image  src="/static/img/doc/gonganting.png" :preview-src-list="srcList4"></el-image>
          </div>
        </el-card>

        <el-card class="center2-card" style="display: inline-block;width: 32%;margin-left: 0.5%;margin-top:  0.5%">
          <div slot="header" class="clearfix">
            <span style="font-size: 19px">陕西省高速公路路政执法总队</span>
          </div>
          <div class="text" style="font-family: 微软雅黑;text-indent:25px;display: inline-block;padding-top: 2px;font-size: 16px;">
               陕西省高速公路路政执法<br>
            总队对高速公路超限运输事项<br>
            进行监督检查，依法查处违法<br>
            超限运输行为；加强全省高速<br>
            公路路政执法队伍建设，推进<br>
            执法信息化技术应用，提高执<br>
            法效能；完成省交通运输厅交<br>
            办的其他工作。<br>
            <br>
            <el-button style="float: left; font-size: 17px;padding: 3px 0" type="text" @click="open5">了解更多</el-button>
            <br>
          </div>
          <div class="img-paper" style="display: inline-block;">
            <el-image  src="/static/img/doc/zhifa.png" :preview-src-list="srcList5"></el-image>
          </div>
        </el-card>

        </div>


      </div>

    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {

      srcList1:['/static/img/doc/daoluyunshu.png',],
      srcList2:['/static/img/doc/gaosugonglu.png',],
      srcList3:['/static/img/doc/jiaotongyunshu.png',],
      srcList4:['/static/img/doc/gonganting.png',],
      srcList5:['/static/img/doc/zhifa.png',],


    }
  },
  methods:{
    open1() {window.open('http://www.sxsdlyssyfzzx.cn/newsshow.php?cid=105&id=18091',"_blank")},
    open2() {window.open('https://www.sxgssfzx.cn/',"_blank")},
    open3() {window.open('http://www.sxjtinfo.com/',"_blank")},
    open4() {window.open('https://sn.122.gov.cn/',"_blank")},
    open5() {window.open('http://jtyst.shaanxi.gov.cn/lzzf.html',"_blank")},



  }
}
</script>



<style>
.main{
  position: absolute;
  width: 100%;
  height: 100%;
  background-color: #f7faff;
  left: 0;
  top: 6px;
}
.image{
  width: 98%;
  height: 30%;
  float: left;
  margin-left: 1%;
  margin-top: 0.18%;
}

.el-card:hover {
  /* 盒子阴影 */
  box-shadow: 0px 15px 30px rgba(0, 0, 0, 0.4);
  /* 盒子向上移动效果，改变上外边距 */
  margin-top: 10px;
}
.el-card__header{background-color: rgba(184, 205, 255, 0.85);
}
.el-card__body {padding: 2px 20px 5px; background-color: #ecf0ff;}
.img-paper{margin-top: 5px}

.el-image{border: 0.5px solid #000000;width: 175px; height: 235px;}


.text {font-size: 14px;margin-right: 4px}
.clearfix:before,
.clearfix:after {display: table;content: "";}
.clearfix:after {clear: both}


</style>


