<template>
<div>
    <div class="app_goodsinfo" >
    <div class="app_top">
        <a class="app_click"><span class="mui-icon mui-icon-arrowleft"></span></a>
        <p class="title">{{goodsinfo.title}}</p>
    </div>
    <div class="app_middle">
        <img src="../../img/029.jpg" class="img_small">
        <img :src="goodsinfo.img_url" class="img_big">
    </div>
    <div class="price">
        <div class="p_left">
            <span class="new">￥{{goodsinfo.p_new}}</span>
            <span class="old">￥{{goodsinfo.p_old}}</span>
            <span class="p_details">价格详情
            <img src="../../img/下载.png">
        </span>
        </div>
        <p class="p_num">112人已购买</p>
    </div>
    <div class="info_time">
        <p>还剩1天15:14:60</p>
    </div>
    <div class="info_title">
        <span class="logo">聚美自营</span>
        <span class="title">{{goodsinfo.title}}</span>
    </div>
    <div class="info_details">
        <div class="detail1">
            <span class="detail1_title">分期</span>
            <span class="detail1_detail">该商品最多可享花呗12期分期购买福利</span>
        </div>
        <div class="detail2">
            <span class="detail2_title">运费</span>
            <span class="detail2_detail">本商品单件包邮（新疆部分区域除外）</span>
        </div>
        <div class="detail3">
            <p class="detail3_top">
                <span class="detail3_title">说明</span>
               <img src="../../img/check-circle.png">
                <span class="detail3_detail_1">自营保税仓发货</span>
               <img src="../../img/check-circle.png">
                <span class="detail3_detail_2">24小时内发货</span>
            </p>
            <p class="detail3_bottom">
               <img src="../../img/check-circle.png" class="detail3_img">
                <span class="detail3_detail_3">7天拆封无条件退货</span>
               <img src="../../img/check-circle.png" class="detail3_img_2">
                <span class="detail3_detail_4">支持分期</span>
            </p>
        </div>
    </div>
</div>
</div>
</template>
<script>
        export default{
        data(){
            return {
                id:this.$route.params.id,
                goodsinfo:{}
            }
        },
        methods:{
         getGoodsinfo(){
             var url="goodslist/find?id="+this.id;
             console.log(url)
             this.$http.get(url).then(result=>{
                 this.goodsinfo=result.body.msg[0];

             })
         }
        },
        created(){
              this. getGoodsinfo()
                
        },
        mounted() {
        
        },
    }
</script>
<style>
.app_goodsinfo{
    background-color: white;;
}
.app_goodsinfo .app_top{
    display: flex;
    border-bottom: 1px solid #ddd;
}
 .app_top .app_click{
    color: #AEAEAE;
    margin-top: 12px;
    padding-left: 5px;
}
.app_top .title{
    font-size: 16px;
    color: black;
    margin: 0 auto;
    line-height:45px;;
}
.app_goodsinfo .app_middle{
    text-align: center;
    height: 350px;
    width: 100%;
}
 .app_middle .img_big{
    position: relative;
    height:300px;
    width:300px;
}
 .app_middle .img_small{
    position: absolute;
    height: 8%;
    width: 15%;
    left:0;
}
.app_goodsinfo .price{
    display: flex;
   justify-content: space-between;
   margin-left: 5px;
   margin-right: 8px;
}
 .price .p_left .new{
    color: #FE519C;
    font-size: 25px;  
}
 .price .p_left .old{
     text-decoration:line-through;
     margin-left: 10px;
     color: #666666;
     font-size: 15px;
}
 .p_left .p_details{
    color: #666666;
     font-size: 14px;
     margin-left: 10px;
}
 .p_left .p_details img{
    margin-left: 2px;
    width: 12px;
}
 .info_time{
    margin-left: 5px;
}
 .info_title{
  margin-bottom: 20px;
  margin-left: 10px;
}
.info_title .logo{
    border: 1px solid #FE519C;
    background-color: #FE4070;
    font-size: 13px;
    color: white;
    border-radius: 2px;
}
 .info_title .title{
    font-size: 14px;
    margin-left: 5px;
}
 .info_details{
    margin-left: 10px;
    margin-right: 10px;
}
.info_details .detail1 .detail1_title,.detail2 .detail2_title{
    font-size: 14px;
    color: #999999;
}
.info_details .detail1 .detail1_detail{
    font-size: 14px;
    color: #FE4070;
    margin-left: 30px;
}
 .info_details .detail2 .detail2_detail{
    font-size: 14px;
    margin-left: 30px;
}
.info_details .detail3 img{
  width: 12px;
}
 .detail3 .detail3_top .detail3_detail_1,.detail3_detail_2,.detail3_bottom .detail3_detail_3,.detail3_detail_4{
    font-size: 14px;
    color: black;
}
.detail3 .detail3_top img{
    margin-left: 30px;
}
.detail3 .detail3_bottom .detail3_img{
    margin-left: 58px;
}
.detail3 .detail3_bottom .detail3_img_2{
    margin-left: 30px;
}
 .info_details .detail1,.detail2{
    border-bottom: 1px solid #EEEEEE;
    line-height: 40px;
}
 .info_details .detail3{
    line-height: 15px;
    margin-top: 10px;
}
</style>

