<template>
  <div class="content-box">
    <div class="container" style="margin-top:0px">
      <div style="margin-left: 10px">
        <el-breadcrumb separator-class="el-icon-arrow-right">
          <el-breadcrumb-item :to="{ path: '/test6/test6-2' }">车辆数据查询</el-breadcrumb-item>
          <el-breadcrumb-item>车辆报警信息</el-breadcrumb-item>
          <el-breadcrumb-item>数据可视化</el-breadcrumb-item>
        </el-breadcrumb>
        <el-row>
          <el-col :span="14"style="margin-top:40px">
            <div id="main1" style="width:700px;height:600px"></div>
          </el-col>

          <el-col :span="10" style="margin-top:40px">
            <div id="main2" style="width:450px;height:600px"></div>
          </el-col>
        </el-row>
      </div>
    </div>
  </div>
</template>

<script>
import * as echarts from 'echarts';
export default {
  name: "test6-5.vue",
  mounted(){
    var chartDom = document.getElementById('main1');
    var myChart = echarts.init(chartDom);
    var option;

    option = {
      legend: {},
      tooltip: {},
      dataset: {
        source: [
          ['product', '超速报警', '疲劳报警'],
          ['班车客运', 2,21],
          ['危货运输', 31, 5],
        ]
      },
      xAxis: { type: 'category' },
      yAxis: {},
      // Declare several bar series, each will be mapped
      // to a column of dataset.source by default.
      series: [{ type: 'bar' }, { type: 'bar' }, ]

    };
    option && myChart.setOption(option);

    var barDom = document.getElementById('main2');
    var barChart = echarts.init(barDom);
    var baroption;

    baroption = {
      legend: {},
      tooltip: {},
      dataset: {
        source: [
          ['product', '超速报警', '疲劳报警'],
          ['重载普货', 693,9248],

        ]
      },
      xAxis: { type: 'category' },
      yAxis: {},
      // Declare several bar series, each will be mapped
      // to a column of dataset.source by default.
      series: [{ type: 'bar' }, { type: 'bar' }, ]

    };
    baroption && barChart.setOption(baroption);

  }
}
</script>

<style scoped>

</style>
