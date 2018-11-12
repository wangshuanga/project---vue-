//1.引入模块
const pool = require("../pool.js");
const express = require("express");
//2.创建路由对象
var router = express.Router();
//3.处理请示
router.get("/list", (req, res) => {
	// var sql="SELECT * FROM goodslists1";
   var sql = "SELECT g.id,g.title,g.p_old,g.p_new,g.p_single,i.img_url FROM goodslist1 g INNER JOIN imagelist1 i ON g.id=i.id";
    pool.query(sql, [], (err, result) => {
        if (err) throw err;
        res.send({ code: 1, msg: result });
    })
})

//4.导出当前路由模块
module.exports = router;
