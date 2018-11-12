<template>
<div class="app_member">
    <div class="member_title">
        <div class="title_top">
            <a class="app_click"><span class="mui-icon mui-icon-arrowleft"></span></a>
            <p>我的聚美</p>
            <a href="#" class="home_img">
              <img src="../../img/房子 .png" >
            </a>
        </div>
        <div class="title_member">
            <a href="#">
                <img src="../../img/members.png" alt="">
            </a>
        </div>
        <div class="title_bottom">
            <p>注册</p>
            <p>|</p>
            <p>登录</p>
        </div>
    </div>
    <div class="member_dd">
       <div class="dd_top">
           <span>
               <img src="../../img/订单.png" >
               <p class="top_left">我的订单</p>
           </span>
           <span>
               <p class="top_right">查看我的全部订单</p>
               <a class="app_click"><span class="mui-icon mui-icon-arrowright"></span></a>
           </span>
       </div> 
       <div class="member_fk">
           <ul>
               <li>
                   <img src="../../img/待付款.png">
                   <p>待付款</p>
               </li>
               <li>
                   <img src="../../img/待收货.png">
                   <p>待收货</p>
               </li>
               <li>
                   <img src="../../img/待评价.png">
                   <p>待评价</p>
               </li>
               <li>
                   <img src="../../img/退货.png">
                   <p>退货/退款</p>
               </li>
           </ul>
       </div>
    </div>
    <div class="member_zc">
        <div class="zc_top">
            <img src="../../img/资产.png">
            <p>我的资产</p>
        </div>
        <div class="zc_bottom">
          <p>现金券</p>
          <p>红包</p>
          <p>聚美余额</p>
          <p>礼品卡</p>
        </div>
    </div>
    <div class="sh_top">
        <div class="member_sh">
           <span>
               <img src="../../img/售后客服.png" >
               <p class="top_left">售后服务</p>
           </span>
           <span>
              <a class="app_click"><span class="mui-icon mui-icon-arrowright"></span></a>
           </span>
       </div> 
       <div class="member_sh">
           <span>
               <img src="../../img/意见反馈.png" >
               <p class="top_left">意见反馈</p>
           </span>
           <span>
              <a class="app_click"><span class="mui-icon mui-icon-arrowright"></span></a>
           </span>
       </div> 
       <div class="member_sh">
           <span>
               <img src="../../img/收货地址.png" >
               <p class="top_left">收货地址</p>
           </span>
           <span>
              <a class="app_click"><span class="mui-icon mui-icon-arrowright"></span></a>
           </span>
       </div> 
       <div class="member_sh">
           <span>
               <img src="../../img/退出登录.png" >
               <p class="top_left">退出登录</p>
           </span>
           <span>
              <a class="app_click"><span class="mui-icon mui-icon-arrowright"></span></a>
           </span>
       </div> 
       <div class="member_sh">
           <span>
               <img src="../../img/电话.png" >
               <p class="top_left">400-123-8888</p>
           </span>
           <span>
              <a class="app_click"><span class="mui-icon mui-icon-arrowright"></span></a>
           </span>
       </div> 
    </div>
    <div class="member_bottom">
        <p>活动期间24小时服务热线400-123-8888（免长途费）</p>
        <p>拨打前请记录您的UID 0</p>
    </div>
</div>
</template>
<script>
        export default{
        data(){
            return {
                list:[]
            }
        },
        methods:{
           
        },
        created(){
               
                
        },
        mounted() {
        
        },
    }
</script>
<style>
.member_bottom p{
    margin: 0;
    color: gray
}
.member_bottom{
    padding:10px;
}
.member_sh span a{
    padding-top:7px;
    color: gray
}
.member_sh span p{
    padding-top: 7px;
    padding-left:15px;
    font-size: 16px
}
.member_sh span{
    display: flex;
}
.member_sh span img{
    height:30px
}
.sh_top .member_sh {
display: flex;
justify-content: space-between;
padding:10px;
   border-bottom:1px solid rgb(240, 233, 233);  
}
.sh_top{
    background-color: white;
    margin-top:20px
}
.zc_bottom{
    display: flex;
    justify-content: space-around;
    padding-top: 10px;
}
.zc_top p{
    padding-top: 10px;
    font-size: 17px;
    color: black
}
.zc_top img{
    height:40px;
    padding-right:8px
}
.member_zc .zc_top{
    display: flex;
    padding-left: 7px;
    border-bottom:1px solid rgb(240, 233, 233);    
}
.member_zc{
    background-color: white;
}
.member_fk ul li p{
    font-size: 15px
}
.member_fk ul li {
    text-align: center;
    padding-right:25px;
}
.member_fk ul li img{
    height:30px;
    width:30px;
}
.member_fk ul{
    list-style: none;
    display: flex;
    justify-content: space-between
}
.dd_top{
 border-bottom:1px solid rgb(240, 233, 233);
}
.dd_top span a{
    color: gray
}
.dd_top span .top_right{
    font-size:15px;
    line-height: 1.7;
    padding-right: 5px

} 
.dd_top span .top_left{
    color: black;
    font-size: 18px;
    line-height: 1.5;
    padding-left: 8px
}
.dd_top span{
    display: flex;
}
.dd_top span img{
    height: 25px;
    width: 25px;
}
.member_dd{
    background-color: white
}
.member_dd .dd_top{
    display:flex;
    justify-content:space-between;
    margin: 10px;
    padding-top: 5px
}
.member_title{
    background-color:#FD5484 ;
    padding-top:10px
}
.member_title .title_top{
    display: flex;
    justify-content:space-between;
    padding-left:5px;
    padding-right:5px
    
}
.title_top .app_click{
    
    color: white;
}
.title_top p{
 color: white;
 font-size:19px
}
.title_top .home_img img{
    width: 30px
}
.title_member{
    background-color: white;
    height:80px;
    width:80px;
    border-radius: 50%;
    margin: 0 auto
}
.title_member a img{
    width: 50px;
    margin-left:15px;
    margin-top:11px;
}
.title_bottom{
    display: flex;
    justify-content: center
}
.title_bottom p{
    color: white;
    padding:18px;
    font-size:22px
}
</style>
