//1.引入模块
const pool = require("../pool.js");
const express = require("express");
//2.创建路由对象
var router = express.Router();
//3.处理请示
router.get("/list", (req, res) => {
    // var sql="SELECT id,title,p_new,p_old FROM goodslist";
    // var sql="SELECT id,img_url,title FROM imagelist";
    var sql = "SELECT g.id,g.title,g.p_old,g.p_new,i.img_url FROM goodslist g INNER JOIN imagelist i ON g.id=i.id";
    pool.query(sql, [], (err, result) => {
        if (err) throw err;
        res.send({ code: 1, msg: result });
    })
});
//根据商品id查找商品详情信息
router.get("/find", (req, res) => {
    var nid = req.query.id;
    var sql = "SELECT g.id,g.title,g.p_old,g.p_new,i.img_url FROM goodslist g INNER JOIN imagelist i ON g.id=i.id WHERE g.id=?";
    pool.query(sql, [nid], (err, result) => {
        if (err) throw err;
        res.send({ code: 1, msg: result })
    })
})
//4.导出当前路由模块
module.exports = router;
