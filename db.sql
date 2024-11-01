/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - caizhuangshangcheng
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`caizhuangshangcheng` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `caizhuangshangcheng`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612368139 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1615605468780,'2021-03-13 11:17:48',1615339905628,'河南省郑州市管城回族区北下街街道北顺城街36号中原明珠广场','wang','17703789898','是'),(1615607168264,'2021-03-13 11:46:07',1615606983411,'河南省郑州市金水区经八路街道中州索克影城文化路5号院','张99','17703789999','是'),(1615612368138,'2021-03-13 13:12:47',1615612231851,'河南省郑州市金水区经八路街道文化路5号院','zhang7','17703786967','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612670082 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (19,'picture2','http://localhost:8080/caizhuangshangcheng/upload/1615604883959.jpg'),(20,'picture2','http://localhost:8080/caizhuangshangcheng/upload/1615607120313.jpg'),(21,'picture2','http://localhost:8080/caizhuangshangcheng/upload/1615612499101.jpg');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612075811 DEFAULT CHARSET=utf8 COMMENT='商品评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1615600825605,'2021-03-13 10:00:25',1615600031356,1614430386281,'87878',NULL),(1615612075810,'2021-03-13 13:07:55',1615601614200,1615606983411,'9898',NULL);

/*Table structure for table `jifenjilu` */

DROP TABLE IF EXISTS `jifenjilu`;

CREATE TABLE `jifenjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` bigint(20) NOT NULL COMMENT '用户id',
  `shangpinxinxi_id` bigint(20) NOT NULL COMMENT '商品id',
  `jifenjilu_types` varchar(200) DEFAULT NULL COMMENT '积分类型',
  `buynumber` int(11) NOT NULL COMMENT '积分数量',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='积分';

/*Data for the table `jifenjilu` */

insert  into `jifenjilu`(`id`,`yonghu_id`,`shangpinxinxi_id`,`jifenjilu_types`,`buynumber`,`insert_time`,`create_time`) values (38,1615339905628,1615601614200,'使用',1,'2021-03-13 11:18:13','2021-03-13 11:18:13'),(39,1615339905628,1615601614200,'添加',3,'2021-03-13 11:18:13','2021-03-13 11:18:13'),(40,1615606983411,1615601614200,'添加',6,'2021-03-13 11:47:02','2021-03-13 11:47:03'),(41,1615606983411,1615601666986,'使用',6,'2021-03-13 11:47:56','2021-03-13 11:47:56'),(42,1615606983411,1615601666986,'添加',10,'2021-03-13 11:47:56','2021-03-13 11:47:56'),(43,1615612231851,1615601866792,'添加',18,'2021-03-13 13:13:51','2021-03-13 13:13:52'),(44,1615612231851,1615600031356,'添加',10,'2021-03-13 13:14:21','2021-03-13 13:14:22'),(45,1615612231851,1615600031356,'使用',18,'2021-03-13 13:14:21','2021-03-13 13:14:22'),(46,1615612231851,1615601614200,'添加',6,'2021-03-13 13:18:03','2021-03-13 13:18:03');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (81,'2021-03-09 22:39:58','新闻标题1','http://localhost:8080/caizhuangshangcheng/upload/news_picture1.jpg','内容1'),(82,'2021-03-09 22:39:58','新闻标题2','http://localhost:8080/caizhuangshangcheng/upload/news_picture2.jpg','内容2'),(83,'2021-03-09 22:39:58','新闻标题3','http://localhost:8080/caizhuangshangcheng/upload/news_picture3.jpg','内容3'),(84,'2021-03-09 22:39:58','新闻标题4','http://localhost:8080/caizhuangshangcheng/upload/news_picture4.jpg','内容4'),(85,'2021-03-09 22:39:58','新闻标题5','http://localhost:8080/caizhuangshangcheng/upload/news_picture5.jpg','内容5');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612683905 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1615605493917,'2021-03-13 11:18:13','202131311181338664398','shangpinxinxi',1615339905628,1615601614200,'唇膏2号','http://localhost:8080/caizhuangshangcheng/upload/1615604712585.jpg',1,70,66,70,66,1,'已发货','河南省郑州市管城回族区北下街街道北顺城街36号中原明珠广场'),(1615607188639,'2021-03-13 11:46:27','202131311462774076920','shangpinxinxi',1615606983411,1615601614200,'唇膏2号','http://localhost:8080/caizhuangshangcheng/upload/1615604712585.jpg',2,70,66,140,132,1,'未支付','河南省郑州市金水区经八路街道中州索克影城文化路5号院'),(1615607223318,'2021-03-13 11:47:02','20213131147279092149','shangpinxinxi',1615606983411,1615601614200,'唇膏2号','http://localhost:8080/caizhuangshangcheng/upload/1615604712585.jpg',2,70,66,140,132,1,'已发货','河南省郑州市金水区经八路街道中州索克影城文化路5号院'),(1615607276296,'2021-03-13 11:47:56','202131311475616382184','shangpinxinxi',1615606983411,1615601666986,'唇膏3','http://localhost:8080/caizhuangshangcheng/upload/1615604703017.jpg',2,50,30,100,60,1,'已发货','河南省郑州市金水区经八路街道中州索克影城文化路5号院'),(1615612379370,'2021-03-13 13:12:59','20213131312598701896','shangpinxinxi',1615612231851,1615601866792,'肌肤乳1号','http://localhost:8080/caizhuangshangcheng/upload/1615604658674.jpg',1,200,150,200,150,1,'未支付','河南省郑州市金水区经八路街道文化路5号院'),(1615612432005,'2021-03-13 13:13:51','20213131313508709523','shangpinxinxi',1615612231851,1615601866792,'肌肤乳1号','http://localhost:8080/caizhuangshangcheng/upload/1615604658674.jpg',2,200,150,400,300,1,'已完成','河南省郑州市金水区经八路街道文化路5号院'),(1615612462171,'2021-03-13 13:14:21','202131313142144377714','shangpinxinxi',1615612231851,1615600031356,'唇膏1号','http://localhost:8080/caizhuangshangcheng/upload/1615604726175.jpg',1,100,50,100,50,1,'已完成','河南省郑州市金水区经八路街道文化路5号院'),(1615612683904,'2021-03-13 13:18:03','20213131318333485803','shangpinxinxi',1615612231851,1615601614200,'唇膏2号','http://localhost:8080/caizhuangshangcheng/upload/1615604712585.jpg',2,70,66,140,132,1,'已支付','河南省郑州市金水区经八路街道文化路5号院');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612268523 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-03-09 22:39:58','商品分类1'),(22,'2021-03-09 22:39:58','商品分类2'),(23,'2021-03-09 22:39:58','商品分类3'),(24,'2021-03-09 22:39:58','商品分类4'),(25,'2021-03-09 22:39:58','商品分类5'),(26,'2021-03-09 22:39:58','商品分类6'),(1615599931968,'2021-03-13 09:45:30','唇膏'),(1615599937784,'2021-03-13 09:45:37','粉饼'),(1615599945887,'2021-03-13 09:45:45','粉底液'),(1615607027571,'2021-03-13 11:43:47','分类99'),(1615612268522,'2021-03-13 13:11:07','7777');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiangqing` longtext COMMENT '详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '原价',
  `discountprice` float DEFAULT NULL COMMENT '折扣价',
  `jifen` float DEFAULT NULL,
  `flag` int(11) DEFAULT NULL COMMENT '是否上架(1:上架,2:下架)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615601926292 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`pinpai`,`guige`,`xiangqing`,`fengmian`,`clicktime`,`clicknum`,`price`,`discountprice`,`jifen`,`flag`) values (1615600031356,'2021-03-13 09:47:10','1615599951','唇膏1号','唇膏','899','圣罗兰','大','唇膏1号的详情\r\n','http://localhost:8080/caizhuangshangcheng/upload/1615604726175.jpg','2021-03-13 13:28:50',17,100,50,10,1),(1615601614200,'2021-03-13 10:13:33','1615601573','唇膏2号','唇膏','80','圣罗兰','大','唇膏2的详情\r\n','http://localhost:8080/caizhuangshangcheng/upload/1615604712585.jpg','2021-03-13 13:29:33',21,70,66,3,1),(1615601666986,'2021-03-13 10:14:26','1615601616','唇膏3','唇膏','97','圣罗兰','大','唇膏3的详情\r\n','http://localhost:8080/caizhuangshangcheng/upload/1615604703017.jpg','2021-03-13 13:18:24',8,50,30,5,1),(1615601698116,'2021-03-13 10:14:57','1615601670','粉饼1号','粉饼','100','圣罗兰','小','萨达\r\n','http://localhost:8080/caizhuangshangcheng/upload/1615604690312.jpg','2021-03-13 11:04:39',8,78,66,6,1),(1615601746911,'2021-03-13 10:15:46','1615601701','粉底液','粉底液','100','兰蔻','中','粉底液的详情\r\n','http://localhost:8080/caizhuangshangcheng/upload/1615604674112.jpg','2021-03-13 11:04:27',6,87,55,5,1),(1615601866792,'2021-03-13 10:17:46','1615601827','肌肤乳1号','商品分类1','98','肌肤乳','大','肌肤乳的详情\r\n','http://localhost:8080/caizhuangshangcheng/upload/1615604658674.jpg','2021-03-13 13:13:49',11,200,150,9,1),(1615601926291,'2021-03-13 10:18:45','1615601872','喷雾','商品分类5','98','圣罗兰','大','喷雾详情\r\n','http://localhost:8080/caizhuangshangcheng/upload/1615604648403.jpg','2021-03-13 11:04:03',2,500,333,30,1);

/*Table structure for table `shouhou` */

DROP TABLE IF EXISTS `shouhou`;

CREATE TABLE `shouhou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `suqiu` varchar(200) NOT NULL COMMENT '诉求内容',
  `suqiutime` timestamp NULL DEFAULT NULL COMMENT '诉求时间',
  `shouhoutype` int(11) NOT NULL COMMENT '售后类型 1:已处理  2 未处理',
  `chulitype` int(11) DEFAULT NULL COMMENT '处理结果  1:已解决  2:未解决',
  `chulicontent` varchar(200) DEFAULT NULL,
  `chulitime` timestamp NULL DEFAULT NULL COMMENT '处理时间',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1370604798379593730 DEFAULT CHARSET=utf8 COMMENT='售后表';

/*Data for the table `shouhou` */

insert  into `shouhou`(`id`,`orderid`,`suqiu`,`suqiutime`,`shouhoutype`,`chulitype`,`chulicontent`,`chulitime`,`addtime`) values (1370604798379593729,'202131313142144377714','质量不好','2021-03-13 13:17:03',1,1,'正品','2021-03-13 13:17:28','2021-03-13 13:17:03');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612696594 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615612696593,'2021-03-13 13:18:16',1615612231851,1615601666986,'shangpinxinxi','唇膏3','http://localhost:8080/caizhuangshangcheng/upload/1615604703017.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (9,1,'admin','users','管理员','jpiu0doz0mls4scki8n8dnodbon7f6l4','2021-03-13 09:42:19','2021-03-13 14:26:46'),(10,1614430386281,'a2','yonghu','用户','1tgn9pl0hde37422e8lslrxixgtzs86m','2021-03-13 09:47:59','2021-03-13 10:47:59'),(11,1615339905628,'a3','yonghu','用户','z2cdoexnum3kjy2nz6kmmbcgdlflajub','2021-03-13 11:02:07','2021-03-13 12:02:07'),(12,1615606135807,'a8','yonghu','用户','8sj25d8rn6j8aq1wvjjpkhrzaikh6jab','2021-03-13 11:29:02','2021-03-13 12:29:02'),(13,1615606983411,'a6','yonghu','用户','amw3b3ps83n1j6i8d7x875nkbxspweg8','2021-03-13 11:43:14','2021-03-13 14:07:46'),(14,1615612231851,'a7','yonghu','用户','cecxrcw0nr5hmopknlvu1ptw64ycrdhr','2021-03-13 13:10:46','2021-03-13 14:29:14');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','123456','管理员','2021-03-09 22:39:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  `jifen` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612231852 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`lianxidianhua`,`dianziyouxiang`,`money`,`jifen`) values (1614430386281,'2021-02-27 20:53:06','a2','a2','123456','男','13823888883','229992@qq.ccom',1286,112),(1614431342348,'2021-02-27 21:09:02','a4','a4','123456','男','a41','22850@qq.com',98,52),(1615339905628,'2021-03-10 09:31:45','a3','a3','123456','男','13823888883','77389000222@qq.com',1926,3),(1615605788598,'2021-03-13 11:23:08','a5','张5','123456','女','17703786969','2@qq.ccom',0,0),(1615606135807,'2021-03-13 11:28:55','a8','a8','123456',NULL,'17703786932','773890001@qq.com',0,NULL),(1615606842201,'2021-03-13 11:40:42','a9','a9','123456',NULL,'17703786969','12070@qq.com',0,NULL),(1615606983411,'2021-03-13 11:43:03','a6','张6','123456','男','13823888886','2@qq.ccom',814,10),(1615612231851,'2021-03-13 13:10:31','a7','张7','123456','男','17703786977','2@qq.ccom',536,16);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
