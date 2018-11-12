<template>
 <div class="app-container">
     <!--顶部加固定导航栏-->
     <mt-header fixed title="极速免税店" class="top"></mt-header>
     <!--显示子组件-->
    <router-view></router-view>
    <!--tabbar-->
    <nav class="mui-bar mui-bar-tab">
         <router-link  class="mui-tab-item" to="/home">
             <span class="mui-icon mui-icon-home"></span>
             <span class="mui-tab-label">首页</span>
         </router-link >
        <router-link  class="mui-tab-item" to="/collage">
             <span class="mui-icon mui-icon-search"></span>
             <span class="mui-tab-label">拼团</span>
         </router-link >
         <router-link  class="mui-tab-item" to="/shopping">
             <span class="mui-icon mui-icon-extra mui-icon-extra-cart"></span>
             <span class="mui-tab-label">购物车</span>
         </router-link >
         <router-link  class="mui-tab-item" to="/member">
             <span class="mui-icon mui-icon-contact"></span>
             <span class="mui-tab-label">我的</span>
         </router-link >
     </nav> 
 </div>
</template>

<style>
.app-container .top{
    background-color: white;
    color: black;
    border-bottom: 1px solid #ddd;
}
   .app-container{
     padding-top:40px;
     padding-bottom:50px;
     overflow-x:hidden;
   }

 .mui-bar-tab .mui-tab-item-tao.mui-active {
    color: #007aff;
 }
.mui-bar-tab .mui-tab-item-tao {
    display: table-cell;
    overflow: hidden;
    width: 1%;
    height: 50px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
    text-overflow: ellipsis;
    color: #929292;
}
.mui-bar-tab .mui-tab-item-tao .mui-icon {
    top: 3px;
    width: 24px;
    height: 24px;
    padding-top: 0;
    padding-bottom: 0;
}

.mui-bar-tab .mui-tab-item-tao .mui-icon~.mui-tab-label {
   font-size:11px;
   display:block;
   overflow:hidden;
   text-overflow:ellipsis;

}
</style>
