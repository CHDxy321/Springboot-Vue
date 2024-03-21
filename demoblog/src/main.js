// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
// 导入element-ui以及axios
import ElementUI from 'element-ui';//引入Elment-ui
import 'element-ui/lib/theme-chalk/index.css';
import axios from 'axios';
Vue.prototype.$axios = axios
import * as Echarts from 'echarts';//引入ECharts

import Video from 'video.js'//引入video.js
import 'video.js/dist/video-js.css'
import VideoPlayer from 'vue-video-player'
import 'vue-video-player/src/custom-theme.css'
import 'video.js/dist/video-js.css'
// import XLSX from 'xlsx'
// Vue.use(XLSX)

Vue.use(VideoPlayer)

Vue.prototype.$video = Video;

Vue.prototype.$Echarts = Echarts;
Vue.use(ElementUI);
Vue.prototype.$axios = axios;
Vue.config.productionTip = false;

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})

// axios.defaults.baseURL = '/api'

