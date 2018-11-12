<template>
   <div class="app_good_list">
       <div class="app_top">
           <img src="../../img/icon_title.png">
           <h5>今日团购，每日10点上新</h5>
       </div>
       <div class="app-list" v-for="item in list" :key="item.id" @click="getDetail(item.id)">
            <img src="../../img/029.jpg" class="img_small">
            <img :src="item.img_url" class="img_big">
           <div class="info">
               <p class="title">{{item.title}}</p>
               <p class="price">
                   <span class="new">￥{{item.p_new}}</span>
                   <span class="old">￥{{item.p_old}}</span>
               </p>
           </div>
       </div>
       </div> 
</template>
<script>
    export default{
        data(){
            return {
                list:[],
                id:this.$route.params.id,
            }
        },
        methods:{
            getDetail(id){
                this.$router.push({path:"/home/goodsinfo/"+id})
                //console.log(id);
                //编程序导航一
                //this.$router.push("/home/goodsinfo")
                //编程序导航二
                //this.$router.push({path:"/home/goodinfo"})
                //编程序导航三
               // this.$router.push({name:"goodinfo"})
            },
            getGoodslist(){
                var url="http://127.0.0.1:3000/goodslist/list";
                this.$http.get(url).then(result=>{
                    this.list=result.body.msg;
                  
                })
            },
            
        },
        created(){
                this.getGoodslist();
               // this.getDetail();
        },
        mounted() {
            //console.log(this.list)
        },
    }
</script>
<style>
.app_good_list{
    background: white;
}
.app_good_list .app_top{
    display: flex;
    justify-content:center;
    margin-top: 0.5rem;
    padding-top: 0.5rem;
    padding-bottom: 0.5rem;
}
.app_good_list .app_top img{
    margin-top: 0.3rem;
    height: 0.9rem;
    width:0.9rem;

}
.app_good_list .app_top h5{
    color: black;
    font-size: 15px;
}
.app_good_list .app-list{
    display: flex;
    border-bottom:1px solid #EEEEEE;
    margin-top: 10px;
}
.app_good_list .app-list img{
    width: 35%;
    height: 150px;
}
.app_good_list .app-list .info{
    display: flex;
    flex-direction: column;

}
.app_good_list .app-list .info .title{
    color: black;
    font-size: 15px;
}
.app_good_list .app-list .info .price .old{
 text-decoration:line-through;
 margin-left: 10px;
}
.app_good_list .app-list .info .price .new{
    color: #FE519C;
    font-size: 18px;    
}
.app_good_list .app-list .info .price{
    margin-top: 40px;
}
.app_good_list .app-list .img_big{
    position: relative;
}
.app_good_list .app-list .img_small{
    height:4%;
    width:8%;
    position: absolute;
    z-index: 1000;
    margin-left: 8px;
    margin-top:6px;
}

</style>
