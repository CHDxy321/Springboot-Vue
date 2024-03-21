<template>
  <div class="content-box">
    <div class="pageLeft" style="display: inline-block">
      <div class="pageContentTitle"
           style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
        某高速公路路段监控视频
      </div>
        <div class='demo' style="width: 97%;height: 45%;margin:10px">
          <video-player class="video-player vjs-custom-skin"
                        ref="videoPlayer"
                        :playsinline="true"
                        :options="playerOptions">
          </video-player>
        </div>
     <div class="left-center" style="margin-left:100px">
       <el-button type="primary" icon="el-icon-edit"></el-button>
       <el-button type="primary" icon="el-icon-share"></el-button>
       <el-button type="primary" icon="el-icon-delete"  @click="Clear">清除</el-button>
       <el-button type="primary"  @click="Check">检测</el-button>
     </div>

    </div>

    <div class="pageCenter" style="display: inline-block">
      <div  class="Center-top"style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
          危货运输车辆识别图像
      </div>

      <div  class="Center-mid"style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
          <div v-if="originalimg" class="demo-image__placeholder">
            <div class="block">
             <img style="width: 97.5%" src="/static/img/error.png">
            </div>
            <div class="block">
              <img style="width: 97.5%" src="/static/img/error.png">
          </div>
          </div>
        <div v-if="clickedimg" class="demo-image__placeholder">
          <div class="block">
            <img style="width: 97.5%" src="/static/img/vehicle1.jpg">
          </div>
          <div class="block">
            <img style="width: 97.5%" src="/static/img/vehicle2.jpg">
          </div>
          <div class="block">
            <img style="width: 97.5%" src="/static/img/vehicle2.jpg">
          </div>
        </div>
      </div>

      <div  class="Center-bottom"style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">

      </div>
    </div>

    <div class="pageRight" style="display: inline-block">
      <div class="pageContentTitle" style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
        危险货物运输车辆识别流程
        <el-collapse v-model="activeNames" @change="handleChange" accordion>
          <el-collapse-item title="危险货物运输车辆识别标准" name="1">
            <img src="/static/img/biaoshi.png" style="width:300px;margin-left: 10px">
            <div class="text" >危化品运输车辆按照《道路运输危险货物车辆标志》（GB-13392）的规定，必须安装印有“危险”字样的标志灯，其标志灯安装在驾驶室顶部的外表面的中前方，当危化品运输车辆经过监控区域时，可以明显观察到标志灯。因此，分辨视频序列中危化品运输车辆与普通车辆的最直接有效的方式就是快速判断车辆是否有外观标志灯。</div>
          </el-collapse-item>
          <el-collapse-item title="危险货物运输车辆与普通运输车辆对比" name="2">
            <img src="/static/img/example.png" style="width:330px;margin-left: 10px">
            <div class="text">一些普通的货物运输车辆车型和颜色等外观特征与危化品运输车辆高度相似，唯一的区别在于危化品运输车辆安装了指定的特殊标志灯。因此，车辆的特殊标志灯是分辨危化品运输车辆与普通运输车辆的关键所在。</div>
          </el-collapse-item>
          <el-collapse-item title="危险货物运输车辆识别示例" name="3">
            <img src="/static/img/example1.png" style="width:330px;margin-left: 10px">

            <div class="text">绿色框中为普通车辆，蓝色框中检测到的是危险货物运输车辆。</div>
          </el-collapse-item>
        </el-collapse>
      </div>
    </div>
  </div>
</template>

<script>
  import { videoPlayer } from 'vue-video-player'
  import 'video.js/dist/video-js.css'
  import VueElementLoading from 'vue-element-loading'

  export default {
    components: {
      videoPlayer,
      VueElementLoading
    },
  data(){
    return{
        text:null,
        dialogTableVisible: false,
        activeNames: ['1'],
        originalimg:true,
        clickedimg:false,

      playerOptions: {
        // playbackRates: [0.5, 1.0, 1.5, 2.0], // 可选的播放速度
        autoplay: true, // 如果为true,浏览器准备好时开始回放。
        muted: false, // 默认情况下将会消除任何音频。
        loop: true, // 是否视频一结束就重新开始。
        preload: 'auto', // 建议浏览器在<video>加载元素后是否应该开始下载视频数据。auto浏览器选择最佳行为,立即开始加载视频（如果浏览器支持）
        language: 'zh-CN',
        aspectRatio: '16:9', // 将播放器置于流畅模式，并在计算播放器的动态大小时使用该值。值应该代表一个比例 - 用冒号分隔的两个数字（例如"16:9"或"4:3"）
        fluid: true, // 当true时，Video.js player将拥有流体大小。换句话说，它将按比例缩放以适应其容器。
        sources: [{
          type: "video/mp4", // 类型
          src: "/static/video/6.mp4", // url地址
        }],
        poster: "/static/img/weihuo.png", // 封面地址
        notSupportedMessage: '此视频暂无法播放，请稍后再试', // 允许覆盖Video.js无法播放媒体源时显示的默认信息。
        controlBar: {
          timeDivider: false, // 当前时间和持续时间的分隔符
          durationDisplay: false, // 显示持续时间
          remainingTimeDisplay: false, // 是否显示剩余时间功能
          fullscreenToggle: false // 是否显示全屏按钮
        }
      },
    }
  },

methods:{

  Check(){
    if(this.originalimg = true){
    const loading = this.$loading({
      lock: true,
      text: 'Loading',
      spinner: 'el-icon-loading',
      background: 'rgba(0, 0, 0, 0.7)'
    });
    setTimeout(() => {
      loading.close();this.originalimg = false; this.clickedimg = true}, 4000);
    }else {
      this.originalimg = true
    }},

  Clear(){
    if(this.clickedimg = true){
        this.clickedimg = false,
        this.originalimg = true

    }else {
      this.originalimg = false
    }},
},


}
</script>

<style scoped>

  .text{
    font-size: 15px;
    font-weight: normal;
    text-indent:28px;

  }

  .pageLeft{
    background: #fff;
    border: 1px solid #ddd;
    width: 40%;
    margin-left: 0.5% ;
    margin-right: 0.1%;
    float: left;
  }
  .pageCenter{
    background: #fff;
    border: 1px solid #ddd;
    width: 30.5%;
    float: left;
  }
  .pageRight{
    background: #fff;
    border: 1px solid #ddd;
    width: 28%;
    float: left;
    margin-left: 0.1%;
  }
</style>


