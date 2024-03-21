<template>
  <div class="content-box">
    <div class="main">
      <!--危险货物运输事故图-->
      <div class="image">
        <el-card class="left-card" style="display: inline-block;width: 48%;margin-left: 0.5%">
          <div slot="header" class="clearfix">
            <span style="font-size: 19px">PFS-AHP安全评估权重计算流程图</span>
          </div>
          <div  class="text" style="font-family: 微软雅黑;text-indent:25px;display: inline-block;padding-top: 2px;font-size: 16px;">
            <br>
            步骤一：结合PHS以及AHP法构建模糊语言量表。<br>
            步骤二：用调查问卷、电子邮件等方式结合模糊语言<br>
            量表与德尔菲法搭建一级指标以及二级指标的两两模<br>
            糊比较矩阵及其量化定性信息矩阵。<br>
            步骤三：计算隶属和非隶属函数上下点之间的差异矩阵。<br>
            步骤四：计算区间矩阵。<br>
            步骤五：计算区间矩阵中每个元素的不确定性值矩阵。<br>
            步骤六：将不确定性值与区间矩阵中的元素相乘，并计算<br>
            出未归一化权重。<br>
            步骤七：最后计算各个指标的最优权重。<br>
            注：PHS即毕达哥拉斯模糊集合、AHP即层次分析法
            <br>


          </div>
          <div class="img-paper" style="display: inline-block;">
            <el-image  src="/static/img/doc/PFS-AHP.png" :preview-src-list="srcList1"></el-image>

          </div>
        </el-card>

        <el-card class="center-card" style="display: inline-block;width: 48%;margin-left: 0.5%">
          <div slot="header" class="clearfix">
            <span style="font-size: 19px">基于PFSAHP-TOPSIS的道路危险货物运输企业安全评估模型</span>
          </div>
          <div  class="text" style="font-family: 微软雅黑;text-indent:25px;display: inline-block;padding-top: 2px;font-size: 16px;">
            <br><br>
            步骤一：构建权重向量W。<br>
            步骤二：构建毕达哥拉斯模糊评价矩阵R。<br>
            步骤三：定义毕达哥拉斯模糊得分函数。<br>
            步骤四：计算毕达哥拉斯模糊评价矩阵中各个指标<br>
            的正负理想解。<br>
            步骤五：两个毕达哥拉斯模糊数之间的混合加权距离。<br>
            步骤六：计算各方案与正负理想解的混合加权距离。<br>
            步骤七：计算得出各个企业的综合评价得分。<br>
            <br><br>


          </div>
          <div class="img-paper" style="display: inline-block;">
            <el-image src="/static/img/doc/PFSAHP-TOPSIS.png" :preview-src-list="srcList2"></el-image>
          </div>
        </el-card>

        <el-card class="right-card" style="display: inline-block;width: 32%;margin-left: 0.5%">
          <div slot="header" class="clearfix">
            <span style="font-size: 19px">道路危险货物运输企业安全评估指标体系</span>
          </div>
          <div class="text" style="font-family: 微软雅黑;text-indent:25px;display: inline-block;padding-top: 2px;font-size: 16px;">

              对危险货物运输企业进<br>
            行实地调研并综合专家意<br>
            见对安全评估指标做出了<br>
            从危险货物、环境、从业<br>
            人员、营运车辆、停车场<br>
            管理以及企业安全管理六<br>
            个方面对安全评估指标做<br>
            出规定。
            <br><br><br>

          </div>
          <div class="img-paper" style="display: inline-block;">
            <el-image   src="/static/img/doc/zhibiaotixi.png" :preview-src-list="srcList3"></el-image>

          </div>
        </el-card>

        <el-card class="left2-card" style="display: inline-block;width: 32%;margin-left: 0.5%;margin-top:  0.5%">
          <div slot="header" class="clearfix">
            <span style="font-size: 19px">安全评估指标体系中定性指标的评分表</span>

          </div>
          <div class="text" style="font-family: 微软雅黑;text-indent:25px;display: inline-block;padding-top: 2px;font-size: 16px;">
              通过实地调查、抽样调查以<br>
            及问卷调查并结合专家意见进<br>
            行评分,设定好、较好、一般、<br>
            较差以及差5个评价等级，评<br>
            分分别是10、7.5、5、2.5<br>
            以及0。<br>
            注：a：现场调查<br>
            b: 抽样调查20%<br>
            c: 问卷调查<br>

            <br>
          </div>
          <div class="img-paper" style="display: inline-block;">
            <el-image  src="/static/img/doc/pingfenbiao.png" :preview-src-list="srcList4"></el-image>
          </div>
        </el-card>

        <el-card class="center2-card" style="display: inline-block;width: 32%;margin-left: 0.5%;margin-top:  0.5%">
          <div slot="header" class="clearfix">
            <span style="font-size: 19px">安全评估指标权重计算结果</span>
          </div>
          <div class="text" style="font-family: 微软雅黑;text-indent:25px;display: inline-block;padding-top: 2px;font-size: 16px;">
              基于PFSAHP的安全评估指<br>
            标权重计算模型计算道路危险<br>
            货物运输安全评估指标体系的<br>
            指标权重。<br><br><br>
            <br>
            <br>
          </div>
          <div class="img-paper" style="display: inline-block;">
            <el-image  src="/static/img/doc/quanzhongjieguo.png" :preview-src-list="srcList5"></el-image>
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

      srcList1:['/static/img/doc/PFS-AHP.png',],
      srcList2:['/static/img/doc/PFSAHP-TOPSIS.png',],
      srcList3:['/static/img/doc/zhibiaotixi.png',],
      srcList4:['/static/img/doc/pingfenbiao.png',],
      srcList5:['/static/img/doc/quanzhongjieguo.png',],


    }
  },

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
