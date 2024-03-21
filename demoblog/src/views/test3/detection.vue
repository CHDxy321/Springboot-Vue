<template>
  <div class="content-box" style="display: flex">
<!--    视频显示part-->
    <div class="pageLeft" >
      <div class="pageContentTitle"
           style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
       陕AH4546实时监控视频
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
<!--检测结果part-->
    <div class="pageCenter" style="flex: 1">
      <div  class="Center-top"style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 30px;color:red;font-weight: bold;">
       WARN！您目前存在：
      </div>
<!--3张图片的轮播显示控制-->
      <div  class="Center-mid"style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
        <div v-if="originalimg" class="demo-image__placeholder">
          <div class="block">
            <img style="width: 80%" src="/static/img/error.png">
          </div>
          <div class="block">
            <img style="width: 80%" src="/static/img/error.png">
          </div>
        </div>
      </div>

<!--      <div  class="Center-bottom"style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">-->

<!--      </div>-->
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

/*.text{
  font-size: 15px;
  font-weight: normal;
  text-indent:28px;

}*/

.pageLeft{
  background: #fff;
  border: 1px solid #ddd;
  width: 50%;
  margin-left: 0.5% ;
  margin-right: 0.1%;
  float: left;
}
.pageCenter{
  background: #fff;
  border: 1px solid #ddd;
  width: 50%;
  float: right;
}
</style>


