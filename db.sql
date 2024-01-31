/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot073x3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot073x3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot073x3`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot073x3/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springboot073x3/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springboot073x3/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage','http://localhost:8080/springboot073x3/upload/1619755801403.jpg');

/*Table structure for table `diqu` */

DROP TABLE IF EXISTS `diqu`;

CREATE TABLE `diqu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='地区';

/*Data for the table `diqu` */

insert  into `diqu`(`id`,`addtime`,`diqu`) values (51,'2021-04-30 11:47:47','地区1');
insert  into `diqu`(`id`,`addtime`,`diqu`) values (52,'2021-04-30 11:47:47','地区2');
insert  into `diqu`(`id`,`addtime`,`diqu`) values (53,'2021-04-30 11:47:47','地区3');
insert  into `diqu`(`id`,`addtime`,`diqu`) values (54,'2021-04-30 11:47:47','地区4');
insert  into `diqu`(`id`,`addtime`,`diqu`) values (55,'2021-04-30 11:47:47','地区5');
insert  into `diqu`(`id`,`addtime`,`diqu`) values (56,'2021-04-30 11:47:47','地区6');

/*Table structure for table `discussjingdianxinxi` */

DROP TABLE IF EXISTS `discussjingdianxinxi`;

CREATE TABLE `discussjingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='景点信息评论表';

/*Data for the table `discussjingdianxinxi` */

insert  into `discussjingdianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (181,'2021-04-30 11:47:47',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussjingdianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (182,'2021-04-30 11:47:47',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussjingdianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (183,'2021-04-30 11:47:47',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussjingdianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (184,'2021-04-30 11:47:47',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussjingdianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (185,'2021-04-30 11:47:47',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussjingdianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (186,'2021-04-30 11:47:47',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussjiudianxinxi` */

DROP TABLE IF EXISTS `discussjiudianxinxi`;

CREATE TABLE `discussjiudianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COMMENT='酒店信息评论表';

/*Data for the table `discussjiudianxinxi` */

insert  into `discussjiudianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (191,'2021-04-30 11:47:47',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussjiudianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (192,'2021-04-30 11:47:47',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussjiudianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (193,'2021-04-30 11:47:47',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussjiudianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (194,'2021-04-30 11:47:47',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussjiudianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (195,'2021-04-30 11:47:47',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussjiudianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (196,'2021-04-30 11:47:47',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusstechan` */

DROP TABLE IF EXISTS `discusstechan`;

CREATE TABLE `discusstechan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='特产评论表';

/*Data for the table `discusstechan` */

insert  into `discusstechan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (201,'2021-04-30 11:47:47',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusstechan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (202,'2021-04-30 11:47:47',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusstechan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (203,'2021-04-30 11:47:47',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusstechan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (204,'2021-04-30 11:47:47',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusstechan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (205,'2021-04-30 11:47:47',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusstechan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (206,'2021-04-30 11:47:47',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `goupiaoquxiaodingdan` */

DROP TABLE IF EXISTS `goupiaoquxiaodingdan`;

CREATE TABLE `goupiaoquxiaodingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youkezhanghao` varchar(200) DEFAULT NULL COMMENT '游客账号',
  `youkexingming` varchar(200) DEFAULT NULL COMMENT '游客姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `suozaishengqu` varchar(200) DEFAULT NULL COMMENT '所在省区',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `piaoshu` varchar(200) DEFAULT NULL COMMENT '票数',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `goupiaoshijian` varchar(200) DEFAULT NULL COMMENT '购票时间',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `quxiaoyuanyin` longtext COMMENT '取消原因',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619756130711 DEFAULT CHARSET=utf8 COMMENT='购票取消订单';

/*Data for the table `goupiaoquxiaodingdan` */

insert  into `goupiaoquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jingdianmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`piaoshu`,`jiage`,`zongjine`,`tupian`,`goupiaoshijian`,`quxiaoshijian`,`quxiaoyuanyin`,`sfsh`,`shhf`) values (101,'2021-04-30 11:47:47','游客账号1','游客姓名1','联系方式1','身份证1','景点名称1','所在省区1','所在城市1','所在地区1','票数1',1,'总金额1','http://localhost:8080/springboot073x3/upload/goupiaoquxiaodingdan_tupian1.jpg','购票时间1','2021-04-30 11:47:47','取消原因1','是','');
insert  into `goupiaoquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jingdianmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`piaoshu`,`jiage`,`zongjine`,`tupian`,`goupiaoshijian`,`quxiaoshijian`,`quxiaoyuanyin`,`sfsh`,`shhf`) values (102,'2021-04-30 11:47:47','游客账号2','游客姓名2','联系方式2','身份证2','景点名称2','所在省区2','所在城市2','所在地区2','票数2',2,'总金额2','http://localhost:8080/springboot073x3/upload/goupiaoquxiaodingdan_tupian2.jpg','购票时间2','2021-04-30 11:47:47','取消原因2','是','');
insert  into `goupiaoquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jingdianmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`piaoshu`,`jiage`,`zongjine`,`tupian`,`goupiaoshijian`,`quxiaoshijian`,`quxiaoyuanyin`,`sfsh`,`shhf`) values (103,'2021-04-30 11:47:47','游客账号3','游客姓名3','联系方式3','身份证3','景点名称3','所在省区3','所在城市3','所在地区3','票数3',3,'总金额3','http://localhost:8080/springboot073x3/upload/goupiaoquxiaodingdan_tupian3.jpg','购票时间3','2021-04-30 11:47:47','取消原因3','是','');
insert  into `goupiaoquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jingdianmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`piaoshu`,`jiage`,`zongjine`,`tupian`,`goupiaoshijian`,`quxiaoshijian`,`quxiaoyuanyin`,`sfsh`,`shhf`) values (104,'2021-04-30 11:47:47','游客账号4','游客姓名4','联系方式4','身份证4','景点名称4','所在省区4','所在城市4','所在地区4','票数4',4,'总金额4','http://localhost:8080/springboot073x3/upload/goupiaoquxiaodingdan_tupian4.jpg','购票时间4','2021-04-30 11:47:47','取消原因4','是','');
insert  into `goupiaoquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jingdianmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`piaoshu`,`jiage`,`zongjine`,`tupian`,`goupiaoshijian`,`quxiaoshijian`,`quxiaoyuanyin`,`sfsh`,`shhf`) values (105,'2021-04-30 11:47:47','游客账号5','游客姓名5','联系方式5','身份证5','景点名称5','所在省区5','所在城市5','所在地区5','票数5',5,'总金额5','http://localhost:8080/springboot073x3/upload/goupiaoquxiaodingdan_tupian5.jpg','购票时间5','2021-04-30 11:47:47','取消原因5','是','');
insert  into `goupiaoquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jingdianmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`piaoshu`,`jiage`,`zongjine`,`tupian`,`goupiaoshijian`,`quxiaoshijian`,`quxiaoyuanyin`,`sfsh`,`shhf`) values (106,'2021-04-30 11:47:47','游客账号6','游客姓名6','联系方式6','身份证6','景点名称6','所在省区6','所在城市6','所在地区6','票数6',6,'总金额6','http://localhost:8080/springboot073x3/upload/goupiaoquxiaodingdan_tupian6.jpg','购票时间6','2021-04-30 11:47:47','取消原因6','是','');
insert  into `goupiaoquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jingdianmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`piaoshu`,`jiage`,`zongjine`,`tupian`,`goupiaoshijian`,`quxiaoshijian`,`quxiaoyuanyin`,`sfsh`,`shhf`) values (1619756130710,'2021-04-30 12:15:30','123','小v','13923532031','123456789123456789','景点','省区2','市区2','地区2','2',50,'100','http://localhost:8080/springboot073x3/upload/1619755590846.jpg','2021-04-30 00:00:00','2021-04-30 12:15:21','不想要了','是',NULL);

/*Table structure for table `jingdiangoupiaodingdan` */

DROP TABLE IF EXISTS `jingdiangoupiaodingdan`;

CREATE TABLE `jingdiangoupiaodingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youkezhanghao` varchar(200) DEFAULT NULL COMMENT '游客账号',
  `youkexingming` varchar(200) DEFAULT NULL COMMENT '游客姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `suozaishengqu` varchar(200) DEFAULT NULL COMMENT '所在省区',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `piaoshu` int(11) DEFAULT NULL COMMENT '票数',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `goupiaoshijian` datetime DEFAULT NULL COMMENT '购票时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619755910026 DEFAULT CHARSET=utf8 COMMENT='景点购票订单';

/*Data for the table `jingdiangoupiaodingdan` */

insert  into `jingdiangoupiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jingdianmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`piaoshu`,`jiage`,`zongjine`,`goupiaoshijian`,`tupian`,`sfsh`,`shhf`,`ispay`) values (91,'2021-04-30 11:47:47','游客账号1','游客姓名1','联系方式1','身份证1','景点名称1','所在省区1','所在城市1','所在地区1',1,1,'总金额1','2021-04-30 11:47:47','http://localhost:8080/springboot073x3/upload/jingdiangoupiaodingdan_tupian1.jpg','是','','未支付');
insert  into `jingdiangoupiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jingdianmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`piaoshu`,`jiage`,`zongjine`,`goupiaoshijian`,`tupian`,`sfsh`,`shhf`,`ispay`) values (92,'2021-04-30 11:47:47','游客账号2','游客姓名2','联系方式2','身份证2','景点名称2','所在省区2','所在城市2','所在地区2',2,2,'总金额2','2021-04-30 11:47:47','http://localhost:8080/springboot073x3/upload/jingdiangoupiaodingdan_tupian2.jpg','是','','未支付');
insert  into `jingdiangoupiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jingdianmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`piaoshu`,`jiage`,`zongjine`,`goupiaoshijian`,`tupian`,`sfsh`,`shhf`,`ispay`) values (93,'2021-04-30 11:47:47','游客账号3','游客姓名3','联系方式3','身份证3','景点名称3','所在省区3','所在城市3','所在地区3',3,3,'总金额3','2021-04-30 11:47:47','http://localhost:8080/springboot073x3/upload/jingdiangoupiaodingdan_tupian3.jpg','是','','未支付');
insert  into `jingdiangoupiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jingdianmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`piaoshu`,`jiage`,`zongjine`,`goupiaoshijian`,`tupian`,`sfsh`,`shhf`,`ispay`) values (94,'2021-04-30 11:47:47','游客账号4','游客姓名4','联系方式4','身份证4','景点名称4','所在省区4','所在城市4','所在地区4',4,4,'总金额4','2021-04-30 11:47:47','http://localhost:8080/springboot073x3/upload/jingdiangoupiaodingdan_tupian4.jpg','是','','未支付');
insert  into `jingdiangoupiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jingdianmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`piaoshu`,`jiage`,`zongjine`,`goupiaoshijian`,`tupian`,`sfsh`,`shhf`,`ispay`) values (95,'2021-04-30 11:47:47','游客账号5','游客姓名5','联系方式5','身份证5','景点名称5','所在省区5','所在城市5','所在地区5',5,5,'总金额5','2021-04-30 11:47:47','http://localhost:8080/springboot073x3/upload/jingdiangoupiaodingdan_tupian5.jpg','是','','未支付');
insert  into `jingdiangoupiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jingdianmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`piaoshu`,`jiage`,`zongjine`,`goupiaoshijian`,`tupian`,`sfsh`,`shhf`,`ispay`) values (96,'2021-04-30 11:47:47','游客账号6','游客姓名6','联系方式6','身份证6','景点名称6','所在省区6','所在城市6','所在地区6',6,6,'总金额6','2021-04-30 11:47:47','http://localhost:8080/springboot073x3/upload/jingdiangoupiaodingdan_tupian6.jpg','是','','未支付');
insert  into `jingdiangoupiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jingdianmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`piaoshu`,`jiage`,`zongjine`,`goupiaoshijian`,`tupian`,`sfsh`,`shhf`,`ispay`) values (1619755910025,'2021-04-30 12:11:49','123','小v','13923532031','123456789123456789','景点','省区2','市区2','地区2',2,50,'100','2021-04-30 00:00:00','http://localhost:8080/springboot073x3/upload/1619755590846.jpg','是',NULL,'已支付');

/*Table structure for table `jingdianxinxi` */

DROP TABLE IF EXISTS `jingdianxinxi`;

CREATE TABLE `jingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `jingdiandengji` varchar(200) DEFAULT NULL COMMENT '景点等级',
  `jingdianjieshao` longtext COMMENT '景点介绍',
  `suozaishengqu` varchar(200) DEFAULT NULL COMMENT '所在省区',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `meitiankaifangshijian` datetime DEFAULT NULL COMMENT '每天开放时间',
  `meitianguanbishijian` datetime DEFAULT NULL COMMENT '每天关闭时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619755601698 DEFAULT CHARSET=utf8 COMMENT='景点信息';

/*Data for the table `jingdianxinxi` */

insert  into `jingdianxinxi`(`id`,`addtime`,`jingdianmingcheng`,`jingdiandengji`,`jingdianjieshao`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`meitiankaifangshijian`,`meitianguanbishijian`,`beizhu`,`jiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (21,'2021-04-30 11:47:47','景点名称1','A','景点介绍1','所在省区1','所在城市1','所在地区1','2021-04-30 11:47:47','2021-04-30 11:47:47','备注1',1,'http://localhost:8080/springboot073x3/upload/jingdianxinxi_tupian1.jpg',1,1,'2021-04-30 11:47:47',1);
insert  into `jingdianxinxi`(`id`,`addtime`,`jingdianmingcheng`,`jingdiandengji`,`jingdianjieshao`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`meitiankaifangshijian`,`meitianguanbishijian`,`beizhu`,`jiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (22,'2021-04-30 11:47:47','景点名称2','A','景点介绍2','所在省区2','所在城市2','所在地区2','2021-04-30 11:47:47','2021-04-30 11:47:47','备注2',2,'http://localhost:8080/springboot073x3/upload/jingdianxinxi_tupian2.jpg',2,2,'2021-04-30 11:47:47',2);
insert  into `jingdianxinxi`(`id`,`addtime`,`jingdianmingcheng`,`jingdiandengji`,`jingdianjieshao`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`meitiankaifangshijian`,`meitianguanbishijian`,`beizhu`,`jiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (23,'2021-04-30 11:47:47','景点名称3','A','景点介绍3','所在省区3','所在城市3','所在地区3','2021-04-30 11:47:47','2021-04-30 11:47:47','备注3',3,'http://localhost:8080/springboot073x3/upload/jingdianxinxi_tupian3.jpg',3,3,'2021-04-30 11:47:47',3);
insert  into `jingdianxinxi`(`id`,`addtime`,`jingdianmingcheng`,`jingdiandengji`,`jingdianjieshao`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`meitiankaifangshijian`,`meitianguanbishijian`,`beizhu`,`jiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (24,'2021-04-30 11:47:47','景点名称4','A','景点介绍4','所在省区4','所在城市4','所在地区4','2021-04-30 11:47:47','2021-04-30 11:47:47','备注4',4,'http://localhost:8080/springboot073x3/upload/jingdianxinxi_tupian4.jpg',4,4,'2021-04-30 11:47:47',4);
insert  into `jingdianxinxi`(`id`,`addtime`,`jingdianmingcheng`,`jingdiandengji`,`jingdianjieshao`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`meitiankaifangshijian`,`meitianguanbishijian`,`beizhu`,`jiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (25,'2021-04-30 11:47:47','景点名称5','A','景点介绍5','所在省区5','所在城市5','所在地区5','2021-04-30 11:47:47','2021-04-30 11:47:47','备注5',5,'http://localhost:8080/springboot073x3/upload/jingdianxinxi_tupian5.jpg',5,5,'2021-04-30 11:47:47',5);
insert  into `jingdianxinxi`(`id`,`addtime`,`jingdianmingcheng`,`jingdiandengji`,`jingdianjieshao`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`meitiankaifangshijian`,`meitianguanbishijian`,`beizhu`,`jiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (26,'2021-04-30 11:47:47','景点名称6','A','景点介绍6','所在省区6','所在城市6','所在地区6','2021-04-30 11:47:47','2021-04-30 11:47:47','备注6',6,'http://localhost:8080/springboot073x3/upload/jingdianxinxi_tupian6.jpg',6,6,'2021-04-30 11:47:47',6);
insert  into `jingdianxinxi`(`id`,`addtime`,`jingdianmingcheng`,`jingdiandengji`,`jingdianjieshao`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`meitiankaifangshijian`,`meitianguanbishijian`,`beizhu`,`jiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (1619755601697,'2021-04-30 12:06:41','景点','B','好景点','省区2','市区2','地区2','2021-04-30 12:06:03','2021-04-30 12:06:08','每天正常开放',50,'http://localhost:8080/springboot073x3/upload/1619755590846.jpg',0,0,'2021-04-30 12:13:44',3);

/*Table structure for table `jiudiandingdan` */

DROP TABLE IF EXISTS `jiudiandingdan`;

CREATE TABLE `jiudiandingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youkezhanghao` varchar(200) DEFAULT NULL COMMENT '游客账号',
  `youkexingming` varchar(200) DEFAULT NULL COMMENT '游客姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `fangjianshu` int(11) DEFAULT NULL COMMENT '房间数',
  `suozaishengqu` varchar(200) DEFAULT NULL COMMENT '所在省区',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `jiudianjiage` int(11) DEFAULT NULL COMMENT '酒店价格',
  `ruzhushijian` datetime DEFAULT NULL COMMENT '入住时间',
  `ruzhutianshu` int(11) DEFAULT NULL COMMENT '入住天数',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619755945819 DEFAULT CHARSET=utf8 COMMENT='酒店订单';

/*Data for the table `jiudiandingdan` */

insert  into `jiudiandingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jiudianmingcheng`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`jiudianjiage`,`ruzhushijian`,`ruzhutianshu`,`xiadanshijian`,`zongjine`,`tupian`,`sfsh`,`shhf`,`ispay`) values (111,'2021-04-30 11:47:47','游客账号1','游客姓名1','联系方式1','身份证1','酒店名称1',1,'所在省区1','所在城市1','所在地区1',1,'2021-04-30 11:47:47',1,'2021-04-30 11:47:47','总金额1','http://localhost:8080/springboot073x3/upload/jiudiandingdan_tupian1.jpg','是','','未支付');
insert  into `jiudiandingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jiudianmingcheng`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`jiudianjiage`,`ruzhushijian`,`ruzhutianshu`,`xiadanshijian`,`zongjine`,`tupian`,`sfsh`,`shhf`,`ispay`) values (112,'2021-04-30 11:47:47','游客账号2','游客姓名2','联系方式2','身份证2','酒店名称2',2,'所在省区2','所在城市2','所在地区2',2,'2021-04-30 11:47:47',2,'2021-04-30 11:47:47','总金额2','http://localhost:8080/springboot073x3/upload/jiudiandingdan_tupian2.jpg','是','','未支付');
insert  into `jiudiandingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jiudianmingcheng`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`jiudianjiage`,`ruzhushijian`,`ruzhutianshu`,`xiadanshijian`,`zongjine`,`tupian`,`sfsh`,`shhf`,`ispay`) values (113,'2021-04-30 11:47:47','游客账号3','游客姓名3','联系方式3','身份证3','酒店名称3',3,'所在省区3','所在城市3','所在地区3',3,'2021-04-30 11:47:47',3,'2021-04-30 11:47:47','总金额3','http://localhost:8080/springboot073x3/upload/jiudiandingdan_tupian3.jpg','是','','未支付');
insert  into `jiudiandingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jiudianmingcheng`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`jiudianjiage`,`ruzhushijian`,`ruzhutianshu`,`xiadanshijian`,`zongjine`,`tupian`,`sfsh`,`shhf`,`ispay`) values (114,'2021-04-30 11:47:47','游客账号4','游客姓名4','联系方式4','身份证4','酒店名称4',4,'所在省区4','所在城市4','所在地区4',4,'2021-04-30 11:47:47',4,'2021-04-30 11:47:47','总金额4','http://localhost:8080/springboot073x3/upload/jiudiandingdan_tupian4.jpg','是','','未支付');
insert  into `jiudiandingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jiudianmingcheng`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`jiudianjiage`,`ruzhushijian`,`ruzhutianshu`,`xiadanshijian`,`zongjine`,`tupian`,`sfsh`,`shhf`,`ispay`) values (115,'2021-04-30 11:47:47','游客账号5','游客姓名5','联系方式5','身份证5','酒店名称5',5,'所在省区5','所在城市5','所在地区5',5,'2021-04-30 11:47:47',5,'2021-04-30 11:47:47','总金额5','http://localhost:8080/springboot073x3/upload/jiudiandingdan_tupian5.jpg','是','','未支付');
insert  into `jiudiandingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jiudianmingcheng`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`jiudianjiage`,`ruzhushijian`,`ruzhutianshu`,`xiadanshijian`,`zongjine`,`tupian`,`sfsh`,`shhf`,`ispay`) values (116,'2021-04-30 11:47:47','游客账号6','游客姓名6','联系方式6','身份证6','酒店名称6',6,'所在省区6','所在城市6','所在地区6',6,'2021-04-30 11:47:47',6,'2021-04-30 11:47:47','总金额6','http://localhost:8080/springboot073x3/upload/jiudiandingdan_tupian6.jpg','是','','未支付');
insert  into `jiudiandingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jiudianmingcheng`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`jiudianjiage`,`ruzhushijian`,`ruzhutianshu`,`xiadanshijian`,`zongjine`,`tupian`,`sfsh`,`shhf`,`ispay`) values (1619755945818,'2021-04-30 12:12:25','123','小v','13923532031','123456789123456789','酒店名称5',1,'所在省区5','所在城市5','所在地区5',5,'2021-04-30 00:00:00',1,'2021-04-30 00:00:00','5','http://localhost:8080/springboot073x3/upload/jiudianxinxi_tupian5.jpg','否',NULL,'已支付');

/*Table structure for table `jiudianquxiaodingdan` */

DROP TABLE IF EXISTS `jiudianquxiaodingdan`;

CREATE TABLE `jiudianquxiaodingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youkezhanghao` varchar(200) DEFAULT NULL COMMENT '游客账号',
  `youkexingming` varchar(200) DEFAULT NULL COMMENT '游客姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `fangjianshu` int(11) DEFAULT NULL COMMENT '房间数',
  `suozaishengqu` varchar(200) DEFAULT NULL COMMENT '所在省区',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `ruzhushijian` varchar(200) DEFAULT NULL COMMENT '入住时间',
  `jiudianjiage` int(11) DEFAULT NULL COMMENT '酒店价格',
  `ruzhutianshu` int(11) DEFAULT NULL COMMENT '入住天数',
  `xiadanshijian` varchar(200) DEFAULT NULL COMMENT '下单时间',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `quxiaoyuanyin` longtext COMMENT '取消原因',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619756178352 DEFAULT CHARSET=utf8 COMMENT='酒店取消订单';

/*Data for the table `jiudianquxiaodingdan` */

insert  into `jiudianquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jiudianmingcheng`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`ruzhushijian`,`jiudianjiage`,`ruzhutianshu`,`xiadanshijian`,`zongjine`,`quxiaoshijian`,`quxiaoyuanyin`,`tupian`,`sfsh`,`shhf`) values (121,'2021-04-30 11:47:47','游客账号1','游客姓名1','联系方式1','身份证1','酒店名称1',1,'所在省区1','所在城市1','所在地区1','入住时间1',1,1,'下单时间1','总金额1','2021-04-30 11:47:47','取消原因1','http://localhost:8080/springboot073x3/upload/jiudianquxiaodingdan_tupian1.jpg','是','');
insert  into `jiudianquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jiudianmingcheng`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`ruzhushijian`,`jiudianjiage`,`ruzhutianshu`,`xiadanshijian`,`zongjine`,`quxiaoshijian`,`quxiaoyuanyin`,`tupian`,`sfsh`,`shhf`) values (122,'2021-04-30 11:47:47','游客账号2','游客姓名2','联系方式2','身份证2','酒店名称2',2,'所在省区2','所在城市2','所在地区2','入住时间2',2,2,'下单时间2','总金额2','2021-04-30 11:47:47','取消原因2','http://localhost:8080/springboot073x3/upload/jiudianquxiaodingdan_tupian2.jpg','是','');
insert  into `jiudianquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jiudianmingcheng`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`ruzhushijian`,`jiudianjiage`,`ruzhutianshu`,`xiadanshijian`,`zongjine`,`quxiaoshijian`,`quxiaoyuanyin`,`tupian`,`sfsh`,`shhf`) values (123,'2021-04-30 11:47:47','游客账号3','游客姓名3','联系方式3','身份证3','酒店名称3',3,'所在省区3','所在城市3','所在地区3','入住时间3',3,3,'下单时间3','总金额3','2021-04-30 11:47:47','取消原因3','http://localhost:8080/springboot073x3/upload/jiudianquxiaodingdan_tupian3.jpg','是','');
insert  into `jiudianquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jiudianmingcheng`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`ruzhushijian`,`jiudianjiage`,`ruzhutianshu`,`xiadanshijian`,`zongjine`,`quxiaoshijian`,`quxiaoyuanyin`,`tupian`,`sfsh`,`shhf`) values (124,'2021-04-30 11:47:47','游客账号4','游客姓名4','联系方式4','身份证4','酒店名称4',4,'所在省区4','所在城市4','所在地区4','入住时间4',4,4,'下单时间4','总金额4','2021-04-30 11:47:47','取消原因4','http://localhost:8080/springboot073x3/upload/jiudianquxiaodingdan_tupian4.jpg','是','');
insert  into `jiudianquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jiudianmingcheng`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`ruzhushijian`,`jiudianjiage`,`ruzhutianshu`,`xiadanshijian`,`zongjine`,`quxiaoshijian`,`quxiaoyuanyin`,`tupian`,`sfsh`,`shhf`) values (125,'2021-04-30 11:47:47','游客账号5','游客姓名5','联系方式5','身份证5','酒店名称5',5,'所在省区5','所在城市5','所在地区5','入住时间5',5,5,'下单时间5','总金额5','2021-04-30 11:47:47','取消原因5','http://localhost:8080/springboot073x3/upload/jiudianquxiaodingdan_tupian5.jpg','是','');
insert  into `jiudianquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jiudianmingcheng`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`ruzhushijian`,`jiudianjiage`,`ruzhutianshu`,`xiadanshijian`,`zongjine`,`quxiaoshijian`,`quxiaoyuanyin`,`tupian`,`sfsh`,`shhf`) values (126,'2021-04-30 11:47:47','游客账号6','游客姓名6','联系方式6','身份证6','酒店名称6',6,'所在省区6','所在城市6','所在地区6','入住时间6',6,6,'下单时间6','总金额6','2021-04-30 11:47:47','取消原因6','http://localhost:8080/springboot073x3/upload/jiudianquxiaodingdan_tupian6.jpg','是','');
insert  into `jiudianquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`shenfenzheng`,`jiudianmingcheng`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`ruzhushijian`,`jiudianjiage`,`ruzhutianshu`,`xiadanshijian`,`zongjine`,`quxiaoshijian`,`quxiaoyuanyin`,`tupian`,`sfsh`,`shhf`) values (1619756178351,'2021-04-30 12:16:17','123','小v','13923532031','123456789123456789','酒店名称5',1,'所在省区5','所在城市5','所在地区5','2021-04-30 00:00:00',5,1,'2021-04-30 00:00:00','5','2021-04-30 12:16:17',NULL,'http://localhost:8080/springboot073x3/upload/jiudianxinxi_tupian5.jpg','是','可以');

/*Table structure for table `jiudianxinxi` */

DROP TABLE IF EXISTS `jiudianxinxi`;

CREATE TABLE `jiudianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `jiudianjieshao` longtext COMMENT '酒店介绍',
  `fangjianshu` int(11) DEFAULT NULL COMMENT '房间数',
  `suozaishengqu` varchar(200) DEFAULT NULL COMMENT '所在省区',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `jiudianjiage` int(11) DEFAULT NULL COMMENT '酒店价格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619755664353 DEFAULT CHARSET=utf8 COMMENT='酒店信息';

/*Data for the table `jiudianxinxi` */

insert  into `jiudianxinxi`(`id`,`addtime`,`jiudianmingcheng`,`jiudianjieshao`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`jiudianjiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (71,'2021-04-30 11:47:47','酒店名称1','酒店介绍1',1,'所在省区1','所在城市1','所在地区1',1,'http://localhost:8080/springboot073x3/upload/jiudianxinxi_tupian1.jpg',1,1,'2021-04-30 12:07:04',3);
insert  into `jiudianxinxi`(`id`,`addtime`,`jiudianmingcheng`,`jiudianjieshao`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`jiudianjiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (72,'2021-04-30 11:47:47','酒店名称2','酒店介绍2',2,'所在省区2','所在城市2','所在地区2',2,'http://localhost:8080/springboot073x3/upload/jiudianxinxi_tupian2.jpg',2,2,'2021-04-30 11:47:47',2);
insert  into `jiudianxinxi`(`id`,`addtime`,`jiudianmingcheng`,`jiudianjieshao`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`jiudianjiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (73,'2021-04-30 11:47:47','酒店名称3','酒店介绍3',3,'所在省区3','所在城市3','所在地区3',3,'http://localhost:8080/springboot073x3/upload/jiudianxinxi_tupian3.jpg',3,3,'2021-04-30 11:47:47',3);
insert  into `jiudianxinxi`(`id`,`addtime`,`jiudianmingcheng`,`jiudianjieshao`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`jiudianjiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (74,'2021-04-30 11:47:47','酒店名称4','酒店介绍4',4,'所在省区4','所在城市4','所在地区4',4,'http://localhost:8080/springboot073x3/upload/jiudianxinxi_tupian4.jpg',4,4,'2021-04-30 11:47:47',4);
insert  into `jiudianxinxi`(`id`,`addtime`,`jiudianmingcheng`,`jiudianjieshao`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`jiudianjiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (75,'2021-04-30 11:47:47','酒店名称5','酒店介绍5',4,'所在省区5','所在城市5','所在地区5',5,'http://localhost:8080/springboot073x3/upload/jiudianxinxi_tupian5.jpg',5,5,'2021-04-30 12:12:29',7);
insert  into `jiudianxinxi`(`id`,`addtime`,`jiudianmingcheng`,`jiudianjieshao`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`jiudianjiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (76,'2021-04-30 11:47:47','酒店名称6','酒店介绍6',6,'所在省区6','所在城市6','所在地区6',6,'http://localhost:8080/springboot073x3/upload/jiudianxinxi_tupian6.jpg',6,6,'2021-04-30 11:47:47',6);
insert  into `jiudianxinxi`(`id`,`addtime`,`jiudianmingcheng`,`jiudianjieshao`,`fangjianshu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`jiudianjiage`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (1619755664352,'2021-04-30 12:07:43','好酒店',NULL,50,'省区2','市区2','地区2',100,'http://localhost:8080/springboot073x3/upload/1619755660795.jpg',0,0,NULL,0);

/*Table structure for table `lvyouxianlu` */

DROP TABLE IF EXISTS `lvyouxianlu`;

CREATE TABLE `lvyouxianlu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youkezhanghao` varchar(200) DEFAULT NULL COMMENT '游客账号',
  `youkexingming` varchar(200) DEFAULT NULL COMMENT '游客姓名',
  `xianluguihua` varchar(200) DEFAULT NULL COMMENT '线路规划',
  `xianlutupian` varchar(200) DEFAULT NULL COMMENT '线路图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619756103306 DEFAULT CHARSET=utf8 COMMENT='旅游线路';

/*Data for the table `lvyouxianlu` */

insert  into `lvyouxianlu`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`xianluguihua`,`xianlutupian`) values (61,'2021-04-30 11:47:47','游客账号1','游客姓名1','线路规划1','http://localhost:8080/springboot073x3/upload/lvyouxianlu_xianlutupian1.jpg');
insert  into `lvyouxianlu`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`xianluguihua`,`xianlutupian`) values (62,'2021-04-30 11:47:47','游客账号2','游客姓名2','线路规划2','http://localhost:8080/springboot073x3/upload/lvyouxianlu_xianlutupian2.jpg');
insert  into `lvyouxianlu`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`xianluguihua`,`xianlutupian`) values (63,'2021-04-30 11:47:47','游客账号3','游客姓名3','线路规划3','http://localhost:8080/springboot073x3/upload/lvyouxianlu_xianlutupian3.jpg');
insert  into `lvyouxianlu`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`xianluguihua`,`xianlutupian`) values (64,'2021-04-30 11:47:47','游客账号4','游客姓名4','线路规划4','http://localhost:8080/springboot073x3/upload/lvyouxianlu_xianlutupian4.jpg');
insert  into `lvyouxianlu`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`xianluguihua`,`xianlutupian`) values (65,'2021-04-30 11:47:47','游客账号5','游客姓名5','线路规划5','http://localhost:8080/springboot073x3/upload/lvyouxianlu_xianlutupian5.jpg');
insert  into `lvyouxianlu`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`xianluguihua`,`xianlutupian`) values (66,'2021-04-30 11:47:47','游客账号6','游客姓名6','线路规划6','http://localhost:8080/springboot073x3/upload/lvyouxianlu_xianlutupian6.jpg');
insert  into `lvyouxianlu`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`xianluguihua`,`xianlutupian`) values (1619756103305,'2021-04-30 12:15:02','123','小v','线路规划','http://localhost:8080/springboot073x3/upload/1619756101405.jpg');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619755979887 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (171,'2021-04-30 11:47:47',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (172,'2021-04-30 11:47:47',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (173,'2021-04-30 11:47:47',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (174,'2021-04-30 11:47:47',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (175,'2021-04-30 11:47:47',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (176,'2021-04-30 11:47:47',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1619755979886,'2021-04-30 12:12:59',1619755888203,'123','hello',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619755792577 DEFAULT CHARSET=utf8 COMMENT='旅游新闻公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (161,'2021-04-30 11:47:47','标题1','简介1','http://localhost:8080/springboot073x3/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (162,'2021-04-30 11:47:47','标题2','简介2','http://localhost:8080/springboot073x3/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (163,'2021-04-30 11:47:47','标题3','简介3','http://localhost:8080/springboot073x3/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (164,'2021-04-30 11:47:47','标题4','简介4','http://localhost:8080/springboot073x3/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (165,'2021-04-30 11:47:47','标题5','简介5','http://localhost:8080/springboot073x3/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (166,'2021-04-30 11:47:47','标题6','简介6','http://localhost:8080/springboot073x3/upload/news_picture6.jpg','内容6');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1619755792576,'2021-04-30 12:09:52','旅游','旅游','http://localhost:8080/springboot073x3/upload/1619755785279.jpg','<p>旅游</p>');

/*Table structure for table `shengqu` */

DROP TABLE IF EXISTS `shengqu`;

CREATE TABLE `shengqu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shengqu` varchar(200) DEFAULT NULL COMMENT '省区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='省区';

/*Data for the table `shengqu` */

insert  into `shengqu`(`id`,`addtime`,`shengqu`) values (31,'2021-04-30 11:47:47','省区1');
insert  into `shengqu`(`id`,`addtime`,`shengqu`) values (32,'2021-04-30 11:47:47','省区2');
insert  into `shengqu`(`id`,`addtime`,`shengqu`) values (33,'2021-04-30 11:47:47','省区3');
insert  into `shengqu`(`id`,`addtime`,`shengqu`) values (34,'2021-04-30 11:47:47','省区4');
insert  into `shengqu`(`id`,`addtime`,`shengqu`) values (35,'2021-04-30 11:47:47','省区5');
insert  into `shengqu`(`id`,`addtime`,`shengqu`) values (36,'2021-04-30 11:47:47','省区6');

/*Table structure for table `shiqu` */

DROP TABLE IF EXISTS `shiqu`;

CREATE TABLE `shiqu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiqu` varchar(200) DEFAULT NULL COMMENT '市区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='市区';

/*Data for the table `shiqu` */

insert  into `shiqu`(`id`,`addtime`,`shiqu`) values (41,'2021-04-30 11:47:47','市区1');
insert  into `shiqu`(`id`,`addtime`,`shiqu`) values (42,'2021-04-30 11:47:47','市区2');
insert  into `shiqu`(`id`,`addtime`,`shiqu`) values (43,'2021-04-30 11:47:47','市区3');
insert  into `shiqu`(`id`,`addtime`,`shiqu`) values (44,'2021-04-30 11:47:47','市区4');
insert  into `shiqu`(`id`,`addtime`,`shiqu`) values (45,'2021-04-30 11:47:47','市区5');
insert  into `shiqu`(`id`,`addtime`,`shiqu`) values (46,'2021-04-30 11:47:47','市区6');

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
) ENGINE=InnoDB AUTO_INCREMENT=1619756025797 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619756025796,'2021-04-30 12:13:45',1619755888203,1619755601697,'jingdianxinxi','景点','http://localhost:8080/springboot073x3/upload/1619755590846.jpg');

/*Table structure for table `techan` */

DROP TABLE IF EXISTS `techan`;

CREATE TABLE `techan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `techanmingcheng` varchar(200) DEFAULT NULL COMMENT '特产名称',
  `techanjieshao` longtext COMMENT '特产介绍',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shumu` int(11) DEFAULT NULL COMMENT '数目',
  `suozaishengqu` varchar(200) DEFAULT NULL COMMENT '所在省区',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619755722750 DEFAULT CHARSET=utf8 COMMENT='特产';

/*Data for the table `techan` */

insert  into `techan`(`id`,`addtime`,`techanmingcheng`,`techanjieshao`,`jiage`,`shumu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (81,'2021-04-30 11:47:47','特产名称1','特产介绍1',1,1,'所在省区1','所在城市1','所在地区1','http://localhost:8080/springboot073x3/upload/techan_tupian1.jpg',1,1,'2021-04-30 11:47:47',1);
insert  into `techan`(`id`,`addtime`,`techanmingcheng`,`techanjieshao`,`jiage`,`shumu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (82,'2021-04-30 11:47:47','特产名称2','特产介绍2',2,2,'所在省区2','所在城市2','所在地区2','http://localhost:8080/springboot073x3/upload/techan_tupian2.jpg',2,2,'2021-04-30 11:47:47',2);
insert  into `techan`(`id`,`addtime`,`techanmingcheng`,`techanjieshao`,`jiage`,`shumu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (83,'2021-04-30 11:47:47','特产名称3','特产介绍3',3,3,'所在省区3','所在城市3','所在地区3','http://localhost:8080/springboot073x3/upload/techan_tupian3.jpg',3,3,'2021-04-30 11:47:47',3);
insert  into `techan`(`id`,`addtime`,`techanmingcheng`,`techanjieshao`,`jiage`,`shumu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (84,'2021-04-30 11:47:47','特产名称4','特产介绍4',4,4,'所在省区4','所在城市4','所在地区4','http://localhost:8080/springboot073x3/upload/techan_tupian4.jpg',4,4,'2021-04-30 11:47:47',4);
insert  into `techan`(`id`,`addtime`,`techanmingcheng`,`techanjieshao`,`jiage`,`shumu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (85,'2021-04-30 11:47:47','特产名称5','特产介绍5',5,5,'所在省区5','所在城市5','所在地区5','http://localhost:8080/springboot073x3/upload/techan_tupian5.jpg',5,5,'2021-04-30 11:47:47',5);
insert  into `techan`(`id`,`addtime`,`techanmingcheng`,`techanjieshao`,`jiage`,`shumu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (86,'2021-04-30 11:47:47','特产名称6','特产介绍6',6,6,'所在省区6','所在城市6','所在地区6','http://localhost:8080/springboot073x3/upload/techan_tupian6.jpg',6,6,'2021-04-30 11:47:47',6);
insert  into `techan`(`id`,`addtime`,`techanmingcheng`,`techanjieshao`,`jiage`,`shumu`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (1619755722749,'2021-04-30 12:08:41','特产',NULL,50,48,'省区2','市区2','地区2','http://localhost:8080/springboot073x3/upload/1619755720451.jpg',0,0,'2021-04-30 12:12:45',2);

/*Table structure for table `techandingdan` */

DROP TABLE IF EXISTS `techandingdan`;

CREATE TABLE `techandingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youkezhanghao` varchar(200) DEFAULT NULL COMMENT '游客账号',
  `youkexingming` varchar(200) DEFAULT NULL COMMENT '游客姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `techanmingcheng` varchar(200) DEFAULT NULL COMMENT '特产名称',
  `suozaishengqu` varchar(200) DEFAULT NULL COMMENT '所在省区',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `shumu` int(11) DEFAULT NULL COMMENT '数目',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619755962562 DEFAULT CHARSET=utf8 COMMENT='特产订单';

/*Data for the table `techandingdan` */

insert  into `techandingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`techanmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`shumu`,`jiage`,`zongjine`,`xiadanshijian`,`tupian`,`sfsh`,`shhf`,`ispay`) values (131,'2021-04-30 11:47:47','游客账号1','游客姓名1','联系方式1','特产名称1','所在省区1','所在城市1','所在地区1',1,1,'总金额1','2021-04-30 11:47:47','http://localhost:8080/springboot073x3/upload/techandingdan_tupian1.jpg','是','','未支付');
insert  into `techandingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`techanmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`shumu`,`jiage`,`zongjine`,`xiadanshijian`,`tupian`,`sfsh`,`shhf`,`ispay`) values (132,'2021-04-30 11:47:47','游客账号2','游客姓名2','联系方式2','特产名称2','所在省区2','所在城市2','所在地区2',2,2,'总金额2','2021-04-30 11:47:47','http://localhost:8080/springboot073x3/upload/techandingdan_tupian2.jpg','是','','未支付');
insert  into `techandingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`techanmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`shumu`,`jiage`,`zongjine`,`xiadanshijian`,`tupian`,`sfsh`,`shhf`,`ispay`) values (133,'2021-04-30 11:47:47','游客账号3','游客姓名3','联系方式3','特产名称3','所在省区3','所在城市3','所在地区3',3,3,'总金额3','2021-04-30 11:47:47','http://localhost:8080/springboot073x3/upload/techandingdan_tupian3.jpg','是','','未支付');
insert  into `techandingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`techanmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`shumu`,`jiage`,`zongjine`,`xiadanshijian`,`tupian`,`sfsh`,`shhf`,`ispay`) values (134,'2021-04-30 11:47:47','游客账号4','游客姓名4','联系方式4','特产名称4','所在省区4','所在城市4','所在地区4',4,4,'总金额4','2021-04-30 11:47:47','http://localhost:8080/springboot073x3/upload/techandingdan_tupian4.jpg','是','','未支付');
insert  into `techandingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`techanmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`shumu`,`jiage`,`zongjine`,`xiadanshijian`,`tupian`,`sfsh`,`shhf`,`ispay`) values (135,'2021-04-30 11:47:47','游客账号5','游客姓名5','联系方式5','特产名称5','所在省区5','所在城市5','所在地区5',5,5,'总金额5','2021-04-30 11:47:47','http://localhost:8080/springboot073x3/upload/techandingdan_tupian5.jpg','是','','未支付');
insert  into `techandingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`techanmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`shumu`,`jiage`,`zongjine`,`xiadanshijian`,`tupian`,`sfsh`,`shhf`,`ispay`) values (136,'2021-04-30 11:47:47','游客账号6','游客姓名6','联系方式6','特产名称6','所在省区6','所在城市6','所在地区6',6,6,'总金额6','2021-04-30 11:47:47','http://localhost:8080/springboot073x3/upload/techandingdan_tupian6.jpg','是','','未支付');
insert  into `techandingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`techanmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`shumu`,`jiage`,`zongjine`,`xiadanshijian`,`tupian`,`sfsh`,`shhf`,`ispay`) values (1619755962561,'2021-04-30 12:12:42','123','小v','13923532031','特产','省区2','市区2','地区2',2,50,'100','2021-04-30 00:00:00','http://localhost:8080/springboot073x3/upload/1619755720451.jpg','是',NULL,'已支付');

/*Table structure for table `techanquxiaodingdan` */

DROP TABLE IF EXISTS `techanquxiaodingdan`;

CREATE TABLE `techanquxiaodingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youkezhanghao` varchar(200) DEFAULT NULL COMMENT '游客账号',
  `youkexingming` varchar(200) DEFAULT NULL COMMENT '游客姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `techanmingcheng` varchar(200) DEFAULT NULL COMMENT '特产名称',
  `suozaishengqu` varchar(200) DEFAULT NULL COMMENT '所在省区',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `suozaidiqu` varchar(200) DEFAULT NULL COMMENT '所在地区',
  `shumu` int(11) DEFAULT NULL COMMENT '数目',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `xiadanshijian` varchar(200) DEFAULT NULL COMMENT '下单时间',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `quxiaoyuanyin` longtext COMMENT '取消原因',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619756163435 DEFAULT CHARSET=utf8 COMMENT='特产取消订单';

/*Data for the table `techanquxiaodingdan` */

insert  into `techanquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`techanmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`shumu`,`jiage`,`zongjine`,`xiadanshijian`,`quxiaoshijian`,`quxiaoyuanyin`,`tupian`,`sfsh`,`shhf`) values (141,'2021-04-30 11:47:47','游客账号1','游客姓名1','联系方式1','特产名称1','所在省区1','所在城市1','所在地区1',1,1,'总金额1','下单时间1','2021-04-30 11:47:47','取消原因1','http://localhost:8080/springboot073x3/upload/techanquxiaodingdan_tupian1.jpg','是','');
insert  into `techanquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`techanmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`shumu`,`jiage`,`zongjine`,`xiadanshijian`,`quxiaoshijian`,`quxiaoyuanyin`,`tupian`,`sfsh`,`shhf`) values (142,'2021-04-30 11:47:47','游客账号2','游客姓名2','联系方式2','特产名称2','所在省区2','所在城市2','所在地区2',2,2,'总金额2','下单时间2','2021-04-30 11:47:47','取消原因2','http://localhost:8080/springboot073x3/upload/techanquxiaodingdan_tupian2.jpg','是','');
insert  into `techanquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`techanmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`shumu`,`jiage`,`zongjine`,`xiadanshijian`,`quxiaoshijian`,`quxiaoyuanyin`,`tupian`,`sfsh`,`shhf`) values (143,'2021-04-30 11:47:47','游客账号3','游客姓名3','联系方式3','特产名称3','所在省区3','所在城市3','所在地区3',3,3,'总金额3','下单时间3','2021-04-30 11:47:47','取消原因3','http://localhost:8080/springboot073x3/upload/techanquxiaodingdan_tupian3.jpg','是','');
insert  into `techanquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`techanmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`shumu`,`jiage`,`zongjine`,`xiadanshijian`,`quxiaoshijian`,`quxiaoyuanyin`,`tupian`,`sfsh`,`shhf`) values (144,'2021-04-30 11:47:47','游客账号4','游客姓名4','联系方式4','特产名称4','所在省区4','所在城市4','所在地区4',4,4,'总金额4','下单时间4','2021-04-30 11:47:47','取消原因4','http://localhost:8080/springboot073x3/upload/techanquxiaodingdan_tupian4.jpg','是','');
insert  into `techanquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`techanmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`shumu`,`jiage`,`zongjine`,`xiadanshijian`,`quxiaoshijian`,`quxiaoyuanyin`,`tupian`,`sfsh`,`shhf`) values (145,'2021-04-30 11:47:47','游客账号5','游客姓名5','联系方式5','特产名称5','所在省区5','所在城市5','所在地区5',5,5,'总金额5','下单时间5','2021-04-30 11:47:47','取消原因5','http://localhost:8080/springboot073x3/upload/techanquxiaodingdan_tupian5.jpg','是','');
insert  into `techanquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`techanmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`shumu`,`jiage`,`zongjine`,`xiadanshijian`,`quxiaoshijian`,`quxiaoyuanyin`,`tupian`,`sfsh`,`shhf`) values (146,'2021-04-30 11:47:47','游客账号6','游客姓名6','联系方式6','特产名称6','所在省区6','所在城市6','所在地区6',6,6,'总金额6','下单时间6','2021-04-30 11:47:47','取消原因6','http://localhost:8080/springboot073x3/upload/techanquxiaodingdan_tupian6.jpg','是','');
insert  into `techanquxiaodingdan`(`id`,`addtime`,`youkezhanghao`,`youkexingming`,`lianxifangshi`,`techanmingcheng`,`suozaishengqu`,`suozaichengshi`,`suozaidiqu`,`shumu`,`jiage`,`zongjine`,`xiadanshijian`,`quxiaoshijian`,`quxiaoyuanyin`,`tupian`,`sfsh`,`shhf`) values (1619756163434,'2021-04-30 12:16:02','123','小v','13923532031','特产','省区2','市区2','地区2',2,50,'100','2021-04-30 00:00:00','2021-04-30 12:16:03',NULL,'http://localhost:8080/springboot073x3/upload/1619755720451.jpg','否',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','zbdijpmsxai6vxde9ghv5mqsc9styoui','2021-04-30 11:58:34','2021-04-30 13:18:40');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619755888203,'123','youke','游客','azaudddkfggxahw3vw93hk1nfxj344l9','2021-04-30 12:11:33','2021-04-30 13:17:49');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-30 11:47:47');

/*Table structure for table `youke` */

DROP TABLE IF EXISTS `youke`;

CREATE TABLE `youke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youkezhanghao` varchar(200) NOT NULL COMMENT '游客账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `youkexingming` varchar(200) DEFAULT NULL COMMENT '游客姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `youkezhanghao` (`youkezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619755888204 DEFAULT CHARSET=utf8 COMMENT='游客';

/*Data for the table `youke` */

insert  into `youke`(`id`,`addtime`,`youkezhanghao`,`mima`,`youkexingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`touxiang`) values (11,'2021-04-30 11:47:47','游客1','123456','游客姓名1','女','13823888881','440300199101010001','773890001@qq.com','http://localhost:8080/springboot073x3/upload/youke_touxiang1.jpg');
insert  into `youke`(`id`,`addtime`,`youkezhanghao`,`mima`,`youkexingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`touxiang`) values (12,'2021-04-30 11:47:47','游客2','123456','游客姓名2','男','13823888882','440300199202020002','773890002@qq.com','http://localhost:8080/springboot073x3/upload/youke_touxiang2.jpg');
insert  into `youke`(`id`,`addtime`,`youkezhanghao`,`mima`,`youkexingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`touxiang`) values (13,'2021-04-30 11:47:47','游客3','123456','游客姓名3','男','13823888883','440300199303030003','773890003@qq.com','http://localhost:8080/springboot073x3/upload/youke_touxiang3.jpg');
insert  into `youke`(`id`,`addtime`,`youkezhanghao`,`mima`,`youkexingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`touxiang`) values (14,'2021-04-30 11:47:47','游客4','123456','游客姓名4','男','13823888884','440300199404040004','773890004@qq.com','http://localhost:8080/springboot073x3/upload/youke_touxiang4.jpg');
insert  into `youke`(`id`,`addtime`,`youkezhanghao`,`mima`,`youkexingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`touxiang`) values (15,'2021-04-30 11:47:47','游客5','123456','游客姓名5','男','13823888885','440300199505050005','773890005@qq.com','http://localhost:8080/springboot073x3/upload/youke_touxiang5.jpg');
insert  into `youke`(`id`,`addtime`,`youkezhanghao`,`mima`,`youkexingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`touxiang`) values (16,'2021-04-30 11:47:47','游客6','123456','游客姓名6','女','13823888886','440300199606060006','773890006@qq.com','http://localhost:8080/springboot073x3/upload/youke_touxiang6.jpg');
insert  into `youke`(`id`,`addtime`,`youkezhanghao`,`mima`,`youkexingming`,`xingbie`,`lianxifangshi`,`shenfenzheng`,`youxiang`,`touxiang`) values (1619755888203,'2021-04-30 12:11:28','123','1','小v','男','13923532031','123456789123456789','1234561231@qq.com','http://localhost:8080/springboot073x3/upload/1619756013226.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
