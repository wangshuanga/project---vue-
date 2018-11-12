<template>
<div class="app_shopping">
  <div class="shopping_carts">
      <img src="../../img/880f00615af28244871b04022477fef8.png" >
      <p class="shopping_top">您的购物车中没有商品，请先去挑选心爱的商品吧！</p>
      <div class="shopping_bottom">
        <p>去逛逛</p>
      </div>
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
.shopping_bottom p{
     font-size: 17px;
     color: white
}
.shopping_carts .shopping_bottom{
     height: 40px;
     width:150px;
     background-color: rgb(243, 10, 111);
     margin: 0 auto;
     line-height: 40px;
     border-radius: 30px;
    

}
.shopping_carts .shopping_top{
    color:black
}
 .shopping_carts{
     text-align: center;
     margin-top:50%
    

 }
</style>
