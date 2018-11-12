<template>
    <div class="app">
           <div class="app_top">
                <input type="text" placeholder="搜索商品  分类  功效">
           </div>
    
    <ul class="mui-table-view mui-grid-view mui-grid-4">
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <router-link to="/home/newslist">
		                   <img src="../../img/interantion_shipping.png" />
		                    <div class="mui-media-body">海外直供</div>
                </router-link></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <router-link to="/home/goodslist">
		                   <img src="../../img/genuine_guarantee.png" />
		                    <div class="mui-media-body" id="badge">原装正品
                       </div>
                </router-link>
                        </li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
		                    <img src="../../img/global_delivery.png" />
		                    <div class="mui-media-body">极速到货</div></a></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
		                    <img src="../../img/return_guarantee_7.png" />
		                    <div class="mui-media-body">轻松退货</div></a></li>
		        </ul> 
            <swiper-box></swiper-box>
    </div> 
</template>
<script>
  import goodslist from "../goods/GoodsList.vue"
  export default{
    components:{
      "swiper-box":goodslist
    }
  }
</script>
<style>
.app .app_top {
  text-align: center;
  background-color: white;
}
.app .app_top input {
  margin-top: 10px;
  margin-bottom: 10px;
  padding-left: 80px;
  border-radius: 50px;
  background-color: #f5f5f5;
  font-size: 15px;
  height: 35px;
  width: 80%;
}
</style>
