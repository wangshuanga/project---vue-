<template>
<div class="app_collage" >
   <div class="app_collage_list" v-for="item in list" :key="item.id">
        <div class="collage_img">
         <img :src="item.img_url">
    </div>
    <div class="collage_title">
        <span class="left">[2人团]</span>
        <span>{{item.title}}</span>
    </div>
    <div class="collage_bottom ">
        <div class="bottom_left">
            <span class="p_new">￥{{item.p_new}}</span>
            <span class="p_old">￥{{item.p_old}}</span>
            <p class="p_single">单买价￥{{item.p_single}}</p>
        </div>
        <div class="bottom_right">
            <p>去开团</p>
        </div>
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
            getGoodslist1(){
                var url="http://127.0.0.1:3000/goodslist1/list";
                this.$http.get(url).then(result=>{
                    this.list=result.body.msg;
                  
                })
            },
            
        },
        created(){
                this.getGoodslist1();
                //this.getDetail();
        },
        mounted() {
            //console.log(this.list)
        },
    }
</script>
<style>
.bottom_right p{
    text-align: center;
    line-height: 35px;
    font-size: 18px;
    color: white
    
}
.bottom_right{
    background-color: rgb(243, 10, 111);
    height: 35px;
    width:100px;
    border-radius: 30px;
    margin-top: 5px

}
.bottom_left .p_single{
    font-size: 12px;
    padding-left: 4px

}
.bottom_left .p_old{
    color: GRAY;
    font-size: 15px;
    text-decoration: line-through
}
.bottom_left .p_new {
   color: #FE519C;
   font-size: 20px
}
.collage_bottom{
    display: flex;
    justify-content: space-between;
    padding-top:10px;
}
.collage_title .left{
    color: #FE519C
} 
.app_collage .collage_img{
    text-align: center
}
.app_collage_list{
    background-color: white;
      padding-left: 10px;
      padding-right: 20px;
      margin-bottom: 10px
}
.app_collage .collage_img img{
    height: 170px;
}

</style>
