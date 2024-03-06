<template>
  <div class="content-box">
  <div class="main">
    <!--危险货物运输事故图-->
    <div class="image">
      <el-card class="left-card" style="display: inline-block;width: 32%;margin-left: 0.5%">
        <div slot="header" class="clearfix">
          <span>高速公路危险品运输安全风险评估</span>
          <el-button style="float: right; padding: 3px 0" type="text" @click="open1">文献来自</el-button>
        </div>
        <div  class="text" style="font-family: 微软雅黑;text-indent:25px;display: inline-block;padding-top: 2px;">
          本文对高速公路危险品运<br>
          输的现状进行了介绍，然后又<br>
          结合了影响危险品高速公路因<br>
          素的因素，建立了评估体系，<br>
          并且还提出了一些提高危险品<br>
          运输安全的措施。<br>
          关键词：高速公路交通；危险<br>
          品运输；风险评估<br><br><br><br><br>
        </div>
        <div class="img-paper" style="display: inline-block;">
          <el-image  src="/static/img/doc/liguoqiang.png" :preview-src-list="srcList1"></el-image>

        </div>
      </el-card>

      <el-card class="center-card" style="display: inline-block;width: 32%;margin-left: 0.5%">
        <div slot="header" class="clearfix">
          <span style="font-size: 15px">基于AHP的危险货物道路运输风险评估研究</span>
          <el-button style="float: right; padding: 3px 0" type="text" @click="open2">文献来自</el-button>
        </div>
        <div class="text" style="font-family: 微软雅黑;text-indent:25px;display: inline-block;padding-top: 2px;">
          由于危险货物具有易燃、<br>
          易爆等危险特性，在运输过程<br>
          中一旦发生事故，便可能造成<br>
          人员伤亡、环境破坏、财产损<br>
          失。论文分析了危险货物在道<br>
          路运输过程中存在的安全问题<br>
          ，对危险货物在运输过程中存<br>
          在的风险进行评估，以及提出<br>
          相关的建议。<br><br><br><br>
        </div>
        <div class="img-paper" style="display: inline-block;">
          <el-image src="/static/img/doc/lidanyao.png" :preview-src-list="srcList"></el-image>
        </div>
      </el-card>

      <el-card class="right-card" style="display: inline-block;width: 32%;margin-left: 0.5%">
        <div slot="header" class="clearfix">
          <span style="font-size: 14px">危险货物道路运输风险评估的集对模型及应用</span>
          <el-button style="float: right; padding: 3px 0" type="text" @click="open3">文献来自</el-button>
        </div>
        <div  class="text" style="font-family: 微软雅黑;text-indent:25px;display: inline-block;padding-top: 1px;">
          建立基于区间层次分析法<br>
          (IAHP)和集对分析法(SPA)的<br>
          风险评估模型。首先建立风<br>
          险评估指标体系，利用IAHP<br>
          计算指标权重;然后采用SPA<br>
          法研究危货运输风险指标及不<br>
          其评估等级的同异反确定不确<br>
          定特性，并利用联系度和集对<br>
          势分析定量给出风险等级及风<br>
          险因素的动态变化;最后以某<br>
          企业近段的危货运输过程为例<br>
          ，利用所建模型评估风险。<br><br>
        </div>
        <div class="img-paper" style="display: inline-block;">
          <el-image   src="/static/img/doc/zhourongyi.png" :preview-src-list="srcList4"></el-image>

        </div>
      </el-card>

      <el-card class="left2-card" style="display: inline-block;width: 32%;margin-left: 0.5%;margin-top:  0.5%">
        <div slot="header" class="clearfix">
          <span style="font-size: 14px">基于AHP和熵权法的道路危货运输风险评估研究</span>
          <el-button style="float: right; padding: 3px 0" type="text" @click="open4">文献来自</el-button>
        </div>
        <div  class="text" style="font-family: 微软雅黑;text-indent:25px;display: inline-block;padding-top: 2px;font-size: 14px">
          本文结合AHP和熵权法计<br>
          算综合权重，在此基础上构建<br>
          模糊综合评价矩阵，评价道路<br>
          危险货物运输风险情况。结果<br>
          表明，所用方法可有效评价道<br>
          路危险货物运输企业的安全性<br>
          ，对道路危险货物运输风险评<br>
          估具有一定的理论和实际应用<br>
          价值，有助于弥补目前道路危<br>
          险货物运输风险评估定量研究<br>方面的不足。<br><br>
        </div>
        <div class="img-paper" style="display: inline-block;">
          <el-image  src="/static/img/doc/lishenchao.png" :preview-src-list="srcList2"></el-image>
        </div>
      </el-card>

      <el-card class="center2-card" style="display: inline-block;width: 32%;margin-left: 0.5%;margin-top:  0.5%">
        <div slot="header" class="clearfix">
          <span>危险货物运输风险评估研究动态</span>
          <el-button style="float: right; padding: 3px 0" type="text" @click="open5">文献来自</el-button>
        </div>
        <div  class="text" style="font-family: 微软雅黑;text-indent:25px;display: inline-block;padding-top: 2px;">
          本系统分析国内外危险货<br>
          物运输风险评估模型和方法，<br>
          梳理对国内外单一运输模式以<br>
          及多式联运危险货物运输风险<br>
          评估问题的相关研究，并通<br>
          过算例分析各风险评估模型的<br>
          特点。<br><br><br><br><br>
        </div>
        <div class="img-paper" style="display: inline-block;">
          <el-image  src="/static/img/doc/shuaibin.png" :preview-src-list="srcList3"></el-image>
        </div>
      </el-card>

      <el-card class="right2-card" style="display: inline-block;width: 32%;margin-left: 0.5%;margin-top: 0.5%">
        <div slot="header" class="clearfix">
          <span style="font-size: 14px">危险货物运输突发事件与应急管理机理研究</span>
          <el-button style="float: right; padding: 3px 0" type="text" @click="open6">文献来自</el-button>
        </div>
        <div  class="text" style="font-family: 微软雅黑;text-indent:25px;display: inline-block;padding-top: 2px;">
          通过对突发事件、HMTE<br>
          及应急管理特征和机理构成<br>
          研究,初步建立了突发事件的<br>
          二阶段变化机理体系—单一<br>
          线性突发事件和多重非线性突<br>
          发事件体系，并从系统内各要<br>
          素相互作用特征的角度，分析<br>
          了突发事件和应急管理机理的<br>
          内在关系，构建了基于突发事<br>
          件机理分析的应急管理机理分<br>
          析框架。<br><br>
        </div>
        <div class="img-paper" style="display: inline-block;">
          <el-image   src="/static/img/doc/liuxiaodong.png" :preview-src-list="srcList5"></el-image>
        </div>
      </el-card>
    </div>

  </div>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        srcList: ['/static/img/doc/lidanyao.png', '/static/img/doc/lidanyao2.png', '/static/img/doc/lidanyao3.png',],
        srcList1:['/static/img/doc/liguoqiang.png', '/static/img/doc/liguoqiang2.png', '/static/img/doc/liguoqiang3.png',],
        srcList2:['/static/img/doc/lishenchao.png', '/static/img/doc/lishenchao2.png', '/static/img/doc/lishenchao3.png','/static/img/doc/lishenchao4.png','/static/img/doc/lishenchao5.png','/static/img/doc/lishenchao6.png','/static/img/doc/lishenchao7.png','/static/img/doc/lishenchao8.png',],
        srcList3:['/static/img/doc/shuaibin.png', '/static/img/doc/shuaibin2.png', '/static/img/doc/shuaibin3.png','/static/img/doc/shuaibin4.png','/static/img/doc/shuaibin5.png','/static/img/doc/shuaibin6.png','/static/img/doc/shuaibin7.png',],
        srcList4:['/static/img/doc/zhourongyi.png', '/static/img/doc/zhourongyi2.png', '/static/img/doc/zhourongyi3.png','/static/img/doc/zhourongyi4.png','/static/img/doc/zhourongyi5.png','/static/img/doc/zhourongyi6.png','/static/img/doc/zhourongyi7.png',],
        srcList5:['/static/img/doc/liuxiaodong.png', '/static/img/doc/liuxiaodong2.png', '/static/img/doc/liuxiaodong3.png','/static/img/doc/liuxiaodong4.png','/static/img/doc/liuxiaodong5.png',],

      }
    },
    methods:{
      open1() {window.open('https://kns.cnki.net/kcms/detail/detail.aspx?dbcode=CJFD&dbname=CJFDLAST2020&filename=SDQE202007067&v=vPB%25mmd2F8Wn5Ydx71j2jejN9x7q57i9QtCLuMs2I%25mmd2BwPFcvDc8ulVqtF5dWkjKd3oFtP7',"_blank")},
      open2() {window.open('https://kns.cnki.net/kcms/detail/detail.aspx?dbcode=CJFD&dbname=CJFDLAST2021&filename=ZQGZ202012077&v=lFzj7Zn67rlyzkoMnIaD315ESMHk9Ez%25mmd2F7YizU0hqANTQ9xIBCb4Kff1R3nu4z3yu',"_blank")},
      open3() {window.open('https://kns.cnki.net/kcms/detail/detail.aspx?dbcode=CJFD&dbname=CJFDLAST2019&filename=ZAQK201901029&v=OcQWJRpcPIPRvyKtJ6qewyRttwvRrQjas90hnK2MBj9YQgokNi9CO8X%25mmd2BaQHgGJcr',"_blank")},
      open4() {window.open('https://kns.cnki.net/kcms/detail/detail.aspx?dbcode=CJFD&dbname=CJFDLAST2020&filename=CQJS202002008&v=oZIYXopt2PEA0Sm6zwweD8gTRTOn6DIt%25mmd2B1B0Vt4VopE07jktvTS7C1eo1x4%25mmd2BWvk3',"_blank")},
      open5() {window.open('https://kns.cnki.net/kcms/detail/detail.aspx?dbcode=CJFD&dbname=CJFD2014&filename=ZAQK201407009&v=cT2ZFbGAhL3l89F4Kw%25mmd2BnTGi79ul3jPKQNQspmrXe8BSQ6LwdzZ%25mmd2F2ANTDrif1KpKd',"_blank")},
      open6() {window.open('https://kns.cnki.net/kcms/detail/detail.aspx?dbcode=CJFD&dbname=CJFD2010&filename=WLJS201008003&v=7WWP0yVKVQfM2vSoY57%25mmd2FZhqbbkythKyn1G2geO4TSO0mNrUrRwi8ZjxKJDNgJH%25mmd2Bf',"_blank")},




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
