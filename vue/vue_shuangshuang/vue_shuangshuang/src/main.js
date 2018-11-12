import Vue from 'vue'
import App from './App.vue'
import router from './router'
//引入mint-ui样式文件
import'mint-ui/lib/style.css'
//引入mint-ui组件并注册
import {Header} from "mint-ui";
import VueResource from "vue-resource";
Vue.use(VueResource);


Vue.component(Header.name, Header);
Vue.config.productionTip = false;
//5: 设置请求的根路径 
Vue.http.options.root = "http://127.0.0.1:3000/";
//6:全局设置post 时候表音的数据组织格式为 application/x-www-form-urlencoded
//Vue.http.options.emulateJSON = true;
// 导入 MUI 的样式表， 和 Bootstrap 用法没有差别
import './lib/mui/css/mui.css'
// 导入 MUI 的样式表，扩展图标样式，购物车图标
// 还需要加载图标字体文件
import './lib/mui/css/icons-extra.css'

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
