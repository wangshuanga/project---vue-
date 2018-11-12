const express=require("express");
//加载图片路由
const routerImageList=require("./router/imagelist");
const routerGoodsList=require("./router/goodslist");
const routerImageList1=require("./router/imagelist1");
const routerGoodsList1=require("./router/goodslist1")
const cors=require("cors");
var app=express();
app.listen(3000);
app.use(cors({
     origin:["http://127.0.0.1:3001","http://localhost:3001","http://localhost:3001"],
    credentials:true
}))
app.use(express.static("public"));
app.use("/imagelist",routerImageList);
app.use("/goodslist",routerGoodsList);
app.use("/imagelist1",routerImageList1);
app.use("/goodslist1",routerGoodsList1)