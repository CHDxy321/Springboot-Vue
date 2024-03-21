<template>
  <div>
    <div id="main"style="width: 500px; height: 400px"></div>
  </div>
</template>

<script>
import * as echarts from 'echarts'

export default{
  name:"Home",
  data(){
    return{

    }
  },
  mounted() {//页面元素渲染之后
    var chartDom = document.getElementById('main');
    var myChart = echarts.init(chartDom);
    var option;

    option = {
      xAxis: {
        type: 'category',
        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
      },
      yAxis: {
        type: 'value'
      },
      series: [
        {
          data: [120, 200, 150, 80, 70, 110, 130],
          type: 'bar',
          showBackground: true,
          backgroundStyle: {
            color: 'rgba(180, 180, 180, 0.2)'
          }
        }
      ]
    };

    option && myChart.setOption(option);

  }
}

</script>

