SET NAMES UTF8;
CREATE DATABASE  jumei CHARSET =utf8;
USE jumei;
CREATE TABLE imagelist(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title VARCHAR(100)
);
INSERT INTO imagelist VALUES (null,"http://127.0.0.1:3000/img/1176083_1000_1000.jpg","图片一") ;
INSERT INTO imagelist VALUES (null,"http://127.0.0.1:3000/img/1263340_1000_1000.jpg","图片二") ;
INSERT INTO imagelist VALUES (null,"http://127.0.0.1:3000/img/1588112_1000_1000.jpg","图片三") ;
INSERT INTO imagelist VALUES (null,"http://127.0.0.1:3000/img/1684479_1000_1000.jpg","图片四") ;
INSERT INTO imagelist VALUES (null,"http://127.0.0.1:3000/img/1745223_1000_1000.jpg","图片五") ;
INSERT INTO imagelist VALUES (null,"http://127.0.0.1:3000/img/1775400_1000_1000.jpg","图片六") ;
INSERT INTO imagelist VALUES (null,"http://127.0.0.1:3000/img/1883899_1000_1000.jpg","图片七") ;


USE jumei;
CREATE TABLE goodslist(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100),
  p_new DECIMAL(8,2),
  p_old DECIMAL(8,2)
);
INSERT INTO goodslist VALUES (null,"倩碧润肤乳啫喱配方，绽放肌肤健康光采",179.00,295);
INSERT INTO goodslist VALUES (null,"阿芙缤纷精油手霜礼盒",112.00,200);
INSERT INTO goodslist VALUES (null,"百草味 火鸡面137gX5 超辣方便面",25.00,50);
INSERT INTO goodslist VALUES (null,"狮王white white 白皙牙膏2支装",19.00,78);
INSERT INTO goodslist VALUES (null,"井田棉花糖控油蜜粉饼，遮盖肤色不均和毛孔",69.00,75);
INSERT INTO goodslist VALUES (null,"【官方授权】MISTINE薄纱羽翼粉饼10g",39.00,69);
INSERT INTO goodslist VALUES (null,"雅诗兰黛红石榴鲜亮焕采三件套，肌肤新生之美！",789.00,1290);


USE jumei;
CREATE TABLE imagelist1(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title VARCHAR(100)
);

INSERT INTO imagelist1 VALUES (null,"http://127.0.0.1:3000/img1/1587643_1000_1000.jpg","图片一") ;
INSERT INTO imagelist1 VALUES (null,"http://127.0.0.1:3000/img1/3418074_1000_1000.jpg","图片二") ;
INSERT INTO imagelist1 VALUES (null,"http://127.0.0.1:3000/img1/3508928_1000_1000.jpg","图片三") ;
INSERT INTO imagelist1 VALUES (null,"http://127.0.0.1:3000/img1/3694538_1000_1000.jpg","图片四") ;
INSERT INTO imagelist1 VALUES (null,"http://127.0.0.1:3000/img1/3892788_1000_1000.jpg","图片五") ;
INSERT INTO imagelist1 VALUES (null,"http://127.0.0.1:3000/img1/4397996_1000_1000.jpg","图片六") ;
INSERT INTO imagelist1 VALUES (null,"http://127.0.0.1:3000/img1/4573642_1000_1000.jpg","图片七") ;



USE jumei;
CREATE TABLE goodslist1(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100),
  p_new DECIMAL(8,2),
  p_old DECIMAL(8,2),
  p_single DECIMAL(8,2)
);
INSERT INTO goodslist1 VALUES (null,"【手机专享】中国•乐高家居20线夹不锈钢晾衣架1个装",21,99.9,25);
INSERT INTO goodslist1 VALUES (null,"【手机专享】乐高家居可撕式衣服衣物沾除尘纸",21,89,29);
INSERT INTO goodslist1 VALUES (null,"【手机专享】三利纯棉纱布毛巾成人日式洗脸巾",15.9,39.9,19.9);
INSERT INTO goodslist1 VALUES (null," 【手机专享】清风原生木浆3层2提共16卷纸 ",31.9,99,35.9);
INSERT INTO goodslist1 VALUES (null,"【手机专享】植护无芯卷纸12卷*3提4层卫生纸巾",29.5,150,35.9);
INSERT INTO goodslist1 VALUES (null,"【手机专享】丝飘30包竹浆本色面巾纸抽纸",29.4,52.9,35.9);
INSERT INTO goodslist1 VALUES (null,"【手机专享】蓝月亮洗衣液薰衣草香1瓶2袋组合",31.9,0,59);