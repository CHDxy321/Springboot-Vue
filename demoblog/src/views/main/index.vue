<template>
  <div class="screen-container" :style="containerStyle">
<!--    头部-->
    <header class="screen-header">
      <div class="left-head">
        <i class=" el-icon-s-home" @click="Content"></i>&nbsp首页
      </div>

      <div class="center-head" style="width: 500px">
        <span class="title">  <img src="/static/img/head_center1.png" style="width: 470px;height: 70px"/></span>
      </div>

      <div class="title-right">
        <el-button @click="test">测试</el-button>
      </div>
    </header>

    <div class="chart-container">
<!--      第一列-->
      <el-col :span="6.5">
        <el-row :gutter="2" class="left">
          <div id="chartColumn" style="border: #3e5b74 1px solid;width:430px; height:260px;"></div>
        </el-row>
        <el-row :gutter="3" style="margin-top: 10px" class="left">
          <div id="chartLine" style="width:430px; height:260px;;border: #3e5b74 1px solid"></div>
        </el-row>
        <el-row :gutter="2" style="margin-top: 10px" class="left">
          <div id="chartBar" style="width:430px; height:260px;;border: #3e5b74 1px solid"></div>
        </el-row>
      </el-col>

    <!--第二列 地图-->
      <el-col :span="10.5" style="margin-left: 0px">
        <!--<el-row :gutter="2" class="middle">-->
        <!--<div class="monitor"  style="width:620px; height:180px;border: #3e5b74 1px solid">-->
        <!--</div>-->
        <!--</el-row>-->
        <el-row class="map" :gutter="2" style="margin-top: 100px">
          <div class="map1"></div>
          <div class="map2"></div>
          <div id="chartMap" style="width:620px; height:550px">

          </div>
          <!--<iframe src="https://maplab.amap.com/share/mapv/654b5523961ef09ff7f832bf7c51a459"  style="width:800px; height:550px;"></iframe>-->
        </el-row>
      </el-col>

<!--      第三列-->
      <el-col :span="6.5" style="margin-right: 0px;padding-right: 0px;padding-left: 0px">
        <el-row :gutter="1" style="" class="right">
          <div id="chartPie" style="width:400px; height:260px;border: #3e5b74 1px solid"></div>
        </el-row>

        <el-row :gutter="1" style="" class="right">
          <div style="width:400px; height:250px;border: #3e5b74 1px solid;margin-top: 10px">
            <div style="padding-bottom: 2px;padding-top: 2px;padding-left: 1px">视频重点监控路段:G3XX高速</div>
            <img src="/static/gif/0.gif" style="width:370px; height:210px;margin-left: 10px;margin-top: 5px">
          </div>
        </el-row>

        <el-row :gutter="1" style="" class="right">
          <div style="width:400px; height:210px;border: #3e5b74 1px solid;margin-top: 30px">
            在线人员
            <div class="content-people">
              <img src="/static/img/data_icon_people_off.png">
              <img src="/static/img/data_icon_people_on.png">
              <img src="/static/img/data_icon_people_off.png">
              <img src="/static/img/data_icon_people_on.png">
              <img src="/static/img/data_icon_people_on.png"> <img src="/static/img/data_icon_people_off.png"></div>
          </div>
        </el-row>
      </el-col>

    </div>
  </div>
</template>


<script>
import * as echarts from 'echarts'
import JSON from '@/assets/js/china.json'
import {videoPlayer} from 'vue-video-player'
import 'video.js/dist/video-js.css'
import '@/assets/js/flexible.js'

export default {
  components: {
    videoPlayer,
  },
  data() {
    return {
      chartColumn: null,
      chartBar: null,
      chartLine: null,
      chartPie: null,
      chartMap: null,
    }
  },

  methods: {
    Content() {
      this.$router.push({
        path: '/content'
      })
    },
    test() {
      this.$router.push({
        path: '/test2/test2-1'
      })
    },
    // 第一列1图
    drawColumnChart() {
      this.chartColumn = echarts.init(document.getElementById('chartColumn'));
      // option中复制即可
      this.chartColumn.setOption({
        title: {text: '事故类型分布'},
        tooltip: {},
        xAxis: {
          data: ["刮擦", "泄露", "碰撞", "侧滑", "爆燃", "追尾", "侧翻"],
          axisLabel: {
            textStyle: {
              color: '#fff'
            }
          },
          z: 10
        },
        yAxis: {
          axisLabel: {
            textStyle: {
              color: '#999'
            }
          },
          axisTick: {
            show: false
          },
          axisLine: {
            show: false
          },
        },
        series: [{
          name: '事故类型值',
          type: 'bar',
          barWidth: '35%',
          showBackground: true,
          data: [0.02, 0.16, 0.178, 0.038, 0.105, 0.219, 0.28],
          itemStyle: {
            color: new echarts.graphic.LinearGradient(
              0, 0, 0, 1,
              [
                {offset: 0, color: '#83bff6'},
                {offset: 0.5, color: '#188df0'},
                {offset: 1, color: '#188df0'}
              ]
            )
          },
          emphasis: {
            itemStyle: {
              color: new echarts.graphic.LinearGradient(
                0, 0, 0, 1,
                [
                  {offset: 0, color: '#2378f7'},
                  {offset: 0.7, color: '#2378f7'},
                  {offset: 1, color: '#83bff6'}
                ]
              )
            }
          },
        }]
      });
    },
//     var myChart = chartColumn.int(document.getElementById('chartColumn'));
//     myChart.setOption(Option);
//     //http定时器轮询
//     function getChart()
// {
//          var request = new XMLHttpRequest();
//          request.open('get', 'http://localhost/3306/get_char');
//          request_send();
//          request.onreadystatechange=function(){if(request.readyState==4&&request.status==200){
//            console.log(request.responseText);}
//          else{}
//          }
// };
// setInterval(getChart, 2000)
// 第一列3图
//     第一列3图
    drawBarChart()
    {
      this.chartBar = echarts.init(document.getElementById('chartBar'));
      this.chartBar.setOption({
        title: {
          text: '事故车辆类型分布',
        },
        tooltip: {
          trigger: 'axis',
          axisPointer: {
            type: 'shadow'
          }
        },
        legend: {
          data: ['事故数量']
        },
        grid: {
          left: '3%',
          right: '4%',
          bottom: '3%',
          containLabel: true
        },
        xAxis: {
          type: 'value',
          boundaryGap: [0, 0.01]
        },
        yAxis: {
          type: 'category',
          data: ['重型卡车', '中型卡车', '油罐车', '厢式卡车', '轻型卡车', '非法改装车辆', '罐车']
        },
        series: [
          {
            name: '事故数量',
            type: 'bar',
            data: [29, 5, 120, 3, 4, 5, 176]
          },

        ]
      });
    }
    ,
    // 第一列2图
    drawLineChart()
    {
      this.chartLine = echarts.init(document.getElementById('chartLine'));
      this.chartLine.setOption({
        title: {
          text: '事故月份分布特征'
        },
        tooltip: {
          trigger: 'axis'
        },
        legend: {
          data: ['月份事故率',]
        },
        grid: {
          left: '3%',
          right: '4%',
          bottom: '3%',
          containLabel: true
        },
        xAxis: {
          type: 'category',
          boundaryGap: false,
          data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
          axisLine: {
            lineStyle: {
              // 设置x轴颜色
              color: '#eedee3'
            }
          },
        },
        yAxis: {
          type: 'value'

        },
        visualMap: {
          show: false,
          dimension: 0,
          pieces: [{
            gt: 0,
            lte: 3,
            color: 'green'
          }, {
            gt: 3,
            lte: 5,
            color: 'red'
          }, {
            gt: 5,
            lte: 12,
            color: 'green'
          },]
        },
        series: [
          {
            name: '月份分布',
            type: 'line',
            stack: '百分比',
            data: [0.07, 0.079, 0.044, 0.082, 0.131, 0.087, 0.105, 0.096, 0.085, 0.076, 0.058, 0.087],
            markArea: {
              itemStyle: {
                color: 'rgba(255, 173, 177, 0.4)'
              },
              data: [[{
                name: '高发生',
                xAxis: '4月'
              }, {
                xAxis: '6月'
              }],]
            }
          },
        ],

      });
    }
    ,
    // 第三列1图
    drawPieChart()
    {
      this.chartPie = echarts.init(document.getElementById('chartPie'));
      this.chartPie.setOption({
        title: {
          text: '事故区域分布情况',
          x: 'center'
        },
        tooltip: {
          trigger: 'item',
          formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
          orient: 'vertical',
          left: 'left',
          axisLabel: {
            textStyle: {
              color: '#fff'
            }
          },
          data: ['陕西省', '浙江省', '吉林省', '山东省', '河南省', '其他省份']

        },
        series: [
          {
            name: '访问来源',
            type: 'pie',
            radius: '55%',
            center: ['50%', '60%'],
            data: [
              {value: 729, name: '陕西省'},
              {value: 641, name: '浙江省'},
              {value: 787, name: '吉林省'},
              {value: 1224, name: '山东省'},
              {value: 700, name: '河南省'},
              {value: 5000, name: '其他省份'}
            ],
            itemStyle: {
              emphasis: {
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
              }
            }
          }
        ]
      });
    }
    ,
    // 第二列 中国地图
    drawMapChart()
    {
      this.chartMap = echarts.init(document.getElementById('chartMap'));

      echarts.registerMap('chinaMap', JSON)
      this.chartMap.setOption({
        geo: {
          type: 'map',
          map: 'chinaMap',
          roam: true,
          //地图省份背景透明化
          itemStyle: {
            normal: {
              // 地图省份的背景颜色
              areaColor: "rgba(20, 41, 87,0.6)",
              borderColor: "#195BB9",
              borderWidth: 1
            },
            emphasis: {
              areaColor: "#2B91B7"
            }
          },
          label: {
            show: true,
            color: "#d8ffd8",
          },
          zoom: 1.2,
          // center: [116.507676, 31.752889]//地图显示中心点坐标
        }
      });
    }
    ,
    drawCharts()
    {
      this.drawColumnChart()
      this.drawBarChart()
      this.drawLineChart()
      this.drawPieChart()
      this.drawMapChart()
    }
    ,
  }
  ,

  mounted: function () {
    this.drawCharts();
    this.initVideo();  //初始化视频播放器
  }
  ,
  updated: function () {
    this.drawCharts()
  }
}
</script>


<style>
.fullscreen {
  position: fixed !important;
  top: 0 !important;
  left: 0 !important;
  width: 100% !important;
  height: 100% !important;
  margin: 0 !important;
  z-index: 100;
}

.left-head {
  font-size: 16px;
  padding-top: 12px;
  padding-left: 5px;
}

.screen-container {
  width: 100%;
  height: 100%;
  padding: 0 10px;
  box-sizing: border-box;
  background-color: #00074b;
  color: #85e2ff;
}

.screen-header {
  width: 100%;
  height: 60px;
  font-size: 20px;
  position: relative;

}

.title {
  position: absolute;
  left: 50%;
  top: 50%;
  font-size: 20px;
  transform: translate(-50%, -50%);
}

.title-right {
  display: flex;
  align-items: center;
  position: absolute;
  right: 0px;
  top: 60%;
  transform: translateY(-80%);
}

.chart-container {
  height: 100%;
  width: 100%;
  background: url("/static/img/bg.jpg");
}

.el-col {
  padding: 10px;
}

.left::before {
  display: table;
  position: absolute;
  top: 0;
  left: 0;
  width: 12px;
  height: 12px;
  border-left: 3px solid #02a6b5;
  border-top: 3px solid #02a6b5;
  content: "";
}

.left::after {
  display: table;
  position: absolute;
  bottom: 0;
  right: 0;
  width: 12px;
  height: 12px;
  border-right: 3px solid #02a6b5;
  border-bottom: 3px solid #02a6b5;
  content: "";
}

.middle::before {
  display: table;
  position: absolute;
  top: 0;
  left: 0;
  width: 20px;
  height: 10px;
  border-left: 3px solid #02a6b5;
  border-top: 3px solid #02a6b5;
  content: ""
}

.middle::after {
  display: table;
  position: absolute;
  bottom: 0;
  right: 0;
  width: 10px;
  height: 20px;
  border-right: 3px solid #02a6b5;
  border-bottom: 3px solid #02a6b5;
  content: "";
}

.right::before {
  display: table;
  position: absolute;
  top: 0;
  left: 0;
  width: 12px;
  height: 12px;
  border-left: 3px solid #02a6b5;
  border-top: 3px solid #02a6b5;
  content: ""
}

.right::after {
  display: table;
  position: absolute;
  bottom: 0;
  right: 0;
  width: 12px;
  height: 12px;
  border-right: 3px solid #02a6b5;
  border-bottom: 3px solid #02a6b5;
  content: "";
}

/*//背景图旋转*/
.map1 {
  width: 500px;
  height: 500px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background: url("/static/img/map.png");
  background-size: 100% 100%;
  opacity: 0.3;
}

.map2 {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 600px;
  height: 600px;
  background: url("/static/img/lbx.png");
  animation: rotate1 15s linear infinite; /*动画名字  循环一周期所需时间   规定以相同速度开始至结束的过渡效果  播放次数*/
  opacity: 0.6;
  background-size: 100% 100%;
}

@keyframes rotate1 {
  form {
    transform: translate(-50%, -50%) rotate(0deg); /*定义 2D 旋转，在参数中规定角度*/
  }
  to {
    transform: translate(-50%, -50%) rotate(360deg);
  }
}

.content_video .video-js .vjs-big-play-button {
  font-size: 1.5em;
  width: 2.5em;
  border-radius: 50%;
  top: 40%;
  left: 45%;
}

.content_video {
  text-align: left;
  padding-bottom: 50px;
  padding-left: 20px;
  padding-right: 20px;

}
</style>

