import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import HomeContainer from "./components/tabbar/HomeContainer.vue"
import CollageContainer from "./components/tabbar/CollageContainer.vue"
import ShoppingContainer from "./components/tabbar/ShoppingContainer.vue"
import MemberContainer from "./components/tabbar/MemberContainer.vue"
import Goodsinfo from "./components/goods/Goodsinfo.vue"
Vue.use(Router)

export default new Router({
  routes: [
    {path:"/",redirect:"/home"},
    {path:'/',component:HelloContainer},
    {path:'/home',component:HomeContainer},
    {path:'/collage',component:CollageContainer}, 
    {path:'/shopping',component:ShoppingContainer}, 
    {path:'/member',component:MemberContainer}, 
    {path:'/home/goodsinfo/:id',component:Goodsinfo,name:"goodsinfo"}, 
   ]
})

