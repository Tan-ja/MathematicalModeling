// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import axios from 'axios'
import 'vue-cookies/vue-cookies.js'
import cookie from 'vue-cookies'
import Quill from 'quill'
import VueQuillEditor from 'vue-quill-editor'
import 'quill/dist/quill.core.css'
import 'quill/dist/quill.snow.css'
import 'quill/dist/quill.bubble.css'
import VideoPlayer from 'vue-video-player'
import 'video.js/dist/video-js.css'
import 'vue-video-player/src/custom-theme.css'
import VEmojiPicker from 'v-emoji-picker'
// import imageResize from 'quill-image-resize-module'  //添加
import md5 from 'js-md5';
// Quill.register('modules/imageResize', imageResize)  //添加
Vue.use(ElementUI)
// 将axios组件挂载到Vue中
Vue.prototype.$axios=axios
// 设置ajax请求的基地址
// axios.defaults.baseURL='http://jwtanmath.cn1.utools.club/api/'
// Vue.prototype.$baseURL='http://jwtanmath.cn1.utools.club/api/'
// Vue.prototype.$picURL='http://jwtanmath.cn1.utools.club/'
axios.defaults.baseURL='http://localhost:8888/api/'
Vue.prototype.$baseURL='http://localhost:8888/api/'
Vue.prototype.$picURL='http://localhost:8888/'
Vue.config.productionTip = false
Vue.prototype.$cookie=cookie
Vue.prototype.$md5 = md5; 
Vue.use(VueQuillEditor)
Vue.use(VideoPlayer);
Vue.use(VEmojiPicker);
/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
