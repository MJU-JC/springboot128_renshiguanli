/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootq731f
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootq731f` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootq731f`;

/*Table structure for table `bumenxinxi` */

DROP TABLE IF EXISTS `bumenxinxi`;

CREATE TABLE `bumenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumenmingcheng` varchar(200) NOT NULL COMMENT '部门名称',
  `bumenzhuguan` varchar(200) NOT NULL COMMENT '部门主管',
  `bumenrenshu` int(11) NOT NULL COMMENT '部门人数',
  `bumenzhize` longtext COMMENT '部门职责',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='部门信息';

/*Data for the table `bumenxinxi` */

insert  into `bumenxinxi`(`id`,`addtime`,`bumenmingcheng`,`bumenzhuguan`,`bumenrenshu`,`bumenzhize`) values (21,'2021-05-17 00:00:47','部门名称1','部门主管1',1,'部门职责1');
insert  into `bumenxinxi`(`id`,`addtime`,`bumenmingcheng`,`bumenzhuguan`,`bumenrenshu`,`bumenzhize`) values (22,'2021-05-17 00:00:47','部门名称2','部门主管2',2,'部门职责2');
insert  into `bumenxinxi`(`id`,`addtime`,`bumenmingcheng`,`bumenzhuguan`,`bumenrenshu`,`bumenzhize`) values (23,'2021-05-17 00:00:47','部门名称3','部门主管3',3,'部门职责3');
insert  into `bumenxinxi`(`id`,`addtime`,`bumenmingcheng`,`bumenzhuguan`,`bumenrenshu`,`bumenzhize`) values (24,'2021-05-17 00:00:47','部门名称4','部门主管4',4,'部门职责4');
insert  into `bumenxinxi`(`id`,`addtime`,`bumenmingcheng`,`bumenzhuguan`,`bumenrenshu`,`bumenzhize`) values (25,'2021-05-17 00:00:47','部门名称5','部门主管5',5,'部门职责5');
insert  into `bumenxinxi`(`id`,`addtime`,`bumenmingcheng`,`bumenzhuguan`,`bumenrenshu`,`bumenzhize`) values (26,'2021-05-17 00:00:47','部门名称6','部门主管6',6,'部门职责6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootq731f/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootq731f/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootq731f/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `fulixinxi` */

DROP TABLE IF EXISTS `fulixinxi`;

CREATE TABLE `fulixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `fulineirong` longtext COMMENT '福利内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='福利信息';

/*Data for the table `fulixinxi` */

insert  into `fulixinxi`(`id`,`addtime`,`mingcheng`,`fulineirong`,`faburiqi`) values (41,'2021-05-17 00:00:47','名称1','福利内容1','2021-05-17');
insert  into `fulixinxi`(`id`,`addtime`,`mingcheng`,`fulineirong`,`faburiqi`) values (42,'2021-05-17 00:00:47','名称2','福利内容2','2021-05-17');
insert  into `fulixinxi`(`id`,`addtime`,`mingcheng`,`fulineirong`,`faburiqi`) values (43,'2021-05-17 00:00:47','名称3','福利内容3','2021-05-17');
insert  into `fulixinxi`(`id`,`addtime`,`mingcheng`,`fulineirong`,`faburiqi`) values (44,'2021-05-17 00:00:47','名称4','福利内容4','2021-05-17');
insert  into `fulixinxi`(`id`,`addtime`,`mingcheng`,`fulineirong`,`faburiqi`) values (45,'2021-05-17 00:00:47','名称5','福利内容5','2021-05-17');
insert  into `fulixinxi`(`id`,`addtime`,`mingcheng`,`fulineirong`,`faburiqi`) values (46,'2021-05-17 00:00:47','名称6','福利内容6','2021-05-17');

/*Table structure for table `gongzixinxi` */

DROP TABLE IF EXISTS `gongzixinxi`;

CREATE TABLE `gongzixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `jibengongzi` int(11) NOT NULL COMMENT '基本工资',
  `jiabangongzi` int(11) NOT NULL COMMENT '加班工资',
  `fuli` int(11) NOT NULL COMMENT '福利',
  `shebao` int(11) NOT NULL COMMENT '社保',
  `koufei` int(11) NOT NULL COMMENT '扣费',
  `shifagongzi` int(11) NOT NULL COMMENT '实发工资',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='工资信息';

/*Data for the table `gongzixinxi` */

insert  into `gongzixinxi`(`id`,`addtime`,`mingcheng`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`jibengongzi`,`jiabangongzi`,`fuli`,`shebao`,`koufei`,`shifagongzi`,`riqi`) values (71,'2021-05-17 00:00:47','名称1','工号1','姓名1','部门1','职位1',1,1,1,1,1,1,'2021-05-17');
insert  into `gongzixinxi`(`id`,`addtime`,`mingcheng`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`jibengongzi`,`jiabangongzi`,`fuli`,`shebao`,`koufei`,`shifagongzi`,`riqi`) values (72,'2021-05-17 00:00:47','名称2','工号2','姓名2','部门2','职位2',2,2,2,2,2,2,'2021-05-17');
insert  into `gongzixinxi`(`id`,`addtime`,`mingcheng`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`jibengongzi`,`jiabangongzi`,`fuli`,`shebao`,`koufei`,`shifagongzi`,`riqi`) values (73,'2021-05-17 00:00:47','名称3','工号3','姓名3','部门3','职位3',3,3,3,3,3,3,'2021-05-17');
insert  into `gongzixinxi`(`id`,`addtime`,`mingcheng`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`jibengongzi`,`jiabangongzi`,`fuli`,`shebao`,`koufei`,`shifagongzi`,`riqi`) values (74,'2021-05-17 00:00:47','名称4','工号4','姓名4','部门4','职位4',4,4,4,4,4,4,'2021-05-17');
insert  into `gongzixinxi`(`id`,`addtime`,`mingcheng`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`jibengongzi`,`jiabangongzi`,`fuli`,`shebao`,`koufei`,`shifagongzi`,`riqi`) values (75,'2021-05-17 00:00:47','名称5','工号5','姓名5','部门5','职位5',5,5,5,5,5,5,'2021-05-17');
insert  into `gongzixinxi`(`id`,`addtime`,`mingcheng`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`jibengongzi`,`jiabangongzi`,`fuli`,`shebao`,`koufei`,`shifagongzi`,`riqi`) values (76,'2021-05-17 00:00:47','名称6','工号6','姓名6','部门6','职位6',6,6,6,6,6,6,'2021-05-17');

/*Table structure for table `kaoqinxinxi` */

DROP TABLE IF EXISTS `kaoqinxinxi`;

CREATE TABLE `kaoqinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `kaoqinriqi` date DEFAULT NULL COMMENT '考勤日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `kaoqinzhuangkuang` varchar(200) NOT NULL COMMENT '考勤状况',
  `kaoqinneirong` longtext COMMENT '考勤内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='考勤信息';

/*Data for the table `kaoqinxinxi` */

insert  into `kaoqinxinxi`(`id`,`addtime`,`mingcheng`,`kaoqinriqi`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`kaoqinzhuangkuang`,`kaoqinneirong`) values (81,'2021-05-17 00:00:47','名称1','2021-05-17','工号1','姓名1','部门1','职位1','正常','考勤内容1');
insert  into `kaoqinxinxi`(`id`,`addtime`,`mingcheng`,`kaoqinriqi`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`kaoqinzhuangkuang`,`kaoqinneirong`) values (82,'2021-05-17 00:00:47','名称2','2021-05-17','工号2','姓名2','部门2','职位2','正常','考勤内容2');
insert  into `kaoqinxinxi`(`id`,`addtime`,`mingcheng`,`kaoqinriqi`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`kaoqinzhuangkuang`,`kaoqinneirong`) values (83,'2021-05-17 00:00:47','名称3','2021-05-17','工号3','姓名3','部门3','职位3','正常','考勤内容3');
insert  into `kaoqinxinxi`(`id`,`addtime`,`mingcheng`,`kaoqinriqi`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`kaoqinzhuangkuang`,`kaoqinneirong`) values (84,'2021-05-17 00:00:47','名称4','2021-05-17','工号4','姓名4','部门4','职位4','正常','考勤内容4');
insert  into `kaoqinxinxi`(`id`,`addtime`,`mingcheng`,`kaoqinriqi`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`kaoqinzhuangkuang`,`kaoqinneirong`) values (85,'2021-05-17 00:00:47','名称5','2021-05-17','工号5','姓名5','部门5','职位5','正常','考勤内容5');
insert  into `kaoqinxinxi`(`id`,`addtime`,`mingcheng`,`kaoqinriqi`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`kaoqinzhuangkuang`,`kaoqinneirong`) values (86,'2021-05-17 00:00:47','名称6','2021-05-17','工号6','姓名6','部门6','职位6','正常','考勤内容6');

/*Table structure for table `peixunxinxi` */

DROP TABLE IF EXISTS `peixunxinxi`;

CREATE TABLE `peixunxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `peixunxiangmu` varchar(200) DEFAULT NULL COMMENT '培训项目',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `peixunshijian` varchar(200) DEFAULT NULL COMMENT '培训时间',
  `peixundidian` varchar(200) DEFAULT NULL COMMENT '培训地点',
  `peixunneirong` longtext COMMENT '培训内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='培训信息';

/*Data for the table `peixunxinxi` */

insert  into `peixunxinxi`(`id`,`addtime`,`peixunxiangmu`,`gonghao`,`xingming`,`bumen`,`peixunshijian`,`peixundidian`,`peixunneirong`,`faburiqi`) values (51,'2021-05-17 00:00:47','培训项目1','工号1','姓名1','部门1','培训时间1','培训地点1','培训内容1','2021-05-17');
insert  into `peixunxinxi`(`id`,`addtime`,`peixunxiangmu`,`gonghao`,`xingming`,`bumen`,`peixunshijian`,`peixundidian`,`peixunneirong`,`faburiqi`) values (52,'2021-05-17 00:00:47','培训项目2','工号2','姓名2','部门2','培训时间2','培训地点2','培训内容2','2021-05-17');
insert  into `peixunxinxi`(`id`,`addtime`,`peixunxiangmu`,`gonghao`,`xingming`,`bumen`,`peixunshijian`,`peixundidian`,`peixunneirong`,`faburiqi`) values (53,'2021-05-17 00:00:47','培训项目3','工号3','姓名3','部门3','培训时间3','培训地点3','培训内容3','2021-05-17');
insert  into `peixunxinxi`(`id`,`addtime`,`peixunxiangmu`,`gonghao`,`xingming`,`bumen`,`peixunshijian`,`peixundidian`,`peixunneirong`,`faburiqi`) values (54,'2021-05-17 00:00:47','培训项目4','工号4','姓名4','部门4','培训时间4','培训地点4','培训内容4','2021-05-17');
insert  into `peixunxinxi`(`id`,`addtime`,`peixunxiangmu`,`gonghao`,`xingming`,`bumen`,`peixunshijian`,`peixundidian`,`peixunneirong`,`faburiqi`) values (55,'2021-05-17 00:00:47','培训项目5','工号5','姓名5','部门5','培训时间5','培训地点5','培训内容5','2021-05-17');
insert  into `peixunxinxi`(`id`,`addtime`,`peixunxiangmu`,`gonghao`,`xingming`,`bumen`,`peixunshijian`,`peixundidian`,`peixunneirong`,`faburiqi`) values (56,'2021-05-17 00:00:47','培训项目6','工号6','姓名6','部门6','培训时间6','培训地点6','培训内容6','2021-05-17');

/*Table structure for table `renwuxinxi` */

DROP TABLE IF EXISTS `renwuxinxi`;

CREATE TABLE `renwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `renwuyaoqiu` longtext COMMENT '任务要求',
  `renwuneirong` longtext COMMENT '任务内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='任务信息';

/*Data for the table `renwuxinxi` */

insert  into `renwuxinxi`(`id`,`addtime`,`biaoti`,`gonghao`,`xingming`,`bumen`,`renwuyaoqiu`,`renwuneirong`,`faburiqi`) values (61,'2021-05-17 00:00:47','标题1','工号1','姓名1','部门1','任务要求1','任务内容1','2021-05-17');
insert  into `renwuxinxi`(`id`,`addtime`,`biaoti`,`gonghao`,`xingming`,`bumen`,`renwuyaoqiu`,`renwuneirong`,`faburiqi`) values (62,'2021-05-17 00:00:47','标题2','工号2','姓名2','部门2','任务要求2','任务内容2','2021-05-17');
insert  into `renwuxinxi`(`id`,`addtime`,`biaoti`,`gonghao`,`xingming`,`bumen`,`renwuyaoqiu`,`renwuneirong`,`faburiqi`) values (63,'2021-05-17 00:00:47','标题3','工号3','姓名3','部门3','任务要求3','任务内容3','2021-05-17');
insert  into `renwuxinxi`(`id`,`addtime`,`biaoti`,`gonghao`,`xingming`,`bumen`,`renwuyaoqiu`,`renwuneirong`,`faburiqi`) values (64,'2021-05-17 00:00:47','标题4','工号4','姓名4','部门4','任务要求4','任务内容4','2021-05-17');
insert  into `renwuxinxi`(`id`,`addtime`,`biaoti`,`gonghao`,`xingming`,`bumen`,`renwuyaoqiu`,`renwuneirong`,`faburiqi`) values (65,'2021-05-17 00:00:47','标题5','工号5','姓名5','部门5','任务要求5','任务内容5','2021-05-17');
insert  into `renwuxinxi`(`id`,`addtime`,`biaoti`,`gonghao`,`xingming`,`bumen`,`renwuyaoqiu`,`renwuneirong`,`faburiqi`) values (66,'2021-05-17 00:00:47','标题6','工号6','姓名6','部门6','任务要求6','任务内容6','2021-05-17');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','r7bwk7a9yx3lwa265lspdhsribm7lvbh','2021-05-17 00:01:53','2021-05-17 01:12:41');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-17 00:00:47');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`bumen`,`zhiwei`,`dianhua`) values (11,'2021-05-17 00:00:47','1','1','姓名1','男','http://localhost:8080/springbootq731f/upload/yuangong_touxiang1.jpg','部门1','职位1','13823888881');
insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`bumen`,`zhiwei`,`dianhua`) values (12,'2021-05-17 00:00:47','员工2','123456','姓名2','男','http://localhost:8080/springbootq731f/upload/yuangong_touxiang2.jpg','部门2','职位2','13823888882');
insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`bumen`,`zhiwei`,`dianhua`) values (13,'2021-05-17 00:00:47','员工3','123456','姓名3','男','http://localhost:8080/springbootq731f/upload/yuangong_touxiang3.jpg','部门3','职位3','13823888883');
insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`bumen`,`zhiwei`,`dianhua`) values (14,'2021-05-17 00:00:47','员工4','123456','姓名4','男','http://localhost:8080/springbootq731f/upload/yuangong_touxiang4.jpg','部门4','职位4','13823888884');
insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`bumen`,`zhiwei`,`dianhua`) values (15,'2021-05-17 00:00:47','员工5','123456','姓名5','男','http://localhost:8080/springbootq731f/upload/yuangong_touxiang5.jpg','部门5','职位5','13823888885');
insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`bumen`,`zhiwei`,`dianhua`) values (16,'2021-05-17 00:00:47','员工6','123456','姓名6','男','http://localhost:8080/springbootq731f/upload/yuangong_touxiang6.jpg','部门6','职位6','13823888886');

/*Table structure for table `zhaopinxinxi` */

DROP TABLE IF EXISTS `zhaopinxinxi`;

CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaopingangwei` varchar(200) NOT NULL COMMENT '招聘岗位',
  `zhaopinrenshu` int(11) NOT NULL COMMENT '招聘人数',
  `luyongrenshu` int(11) NOT NULL COMMENT '录用人数',
  `beizhu` longtext COMMENT '备注',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='招聘信息';

/*Data for the table `zhaopinxinxi` */

insert  into `zhaopinxinxi`(`id`,`addtime`,`zhaopingangwei`,`zhaopinrenshu`,`luyongrenshu`,`beizhu`,`fabushijian`) values (91,'2021-05-17 00:00:47','招聘岗位1',1,1,'备注1','2021-05-17');
insert  into `zhaopinxinxi`(`id`,`addtime`,`zhaopingangwei`,`zhaopinrenshu`,`luyongrenshu`,`beizhu`,`fabushijian`) values (92,'2021-05-17 00:00:47','招聘岗位2',2,2,'备注2','2021-05-17');
insert  into `zhaopinxinxi`(`id`,`addtime`,`zhaopingangwei`,`zhaopinrenshu`,`luyongrenshu`,`beizhu`,`fabushijian`) values (93,'2021-05-17 00:00:47','招聘岗位3',3,3,'备注3','2021-05-17');
insert  into `zhaopinxinxi`(`id`,`addtime`,`zhaopingangwei`,`zhaopinrenshu`,`luyongrenshu`,`beizhu`,`fabushijian`) values (94,'2021-05-17 00:00:47','招聘岗位4',4,4,'备注4','2021-05-17');
insert  into `zhaopinxinxi`(`id`,`addtime`,`zhaopingangwei`,`zhaopinrenshu`,`luyongrenshu`,`beizhu`,`fabushijian`) values (95,'2021-05-17 00:00:47','招聘岗位5',5,5,'备注5','2021-05-17');
insert  into `zhaopinxinxi`(`id`,`addtime`,`zhaopingangwei`,`zhaopinrenshu`,`luyongrenshu`,`beizhu`,`fabushijian`) values (96,'2021-05-17 00:00:47','招聘岗位6',6,6,'备注6','2021-05-17');

/*Table structure for table `zhiweixinxi` */

DROP TABLE IF EXISTS `zhiweixinxi`;

CREATE TABLE `zhiweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiwei` varchar(200) NOT NULL COMMENT '职位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='职位信息';

/*Data for the table `zhiweixinxi` */

insert  into `zhiweixinxi`(`id`,`addtime`,`zhiwei`) values (31,'2021-05-17 00:00:47','职位1');
insert  into `zhiweixinxi`(`id`,`addtime`,`zhiwei`) values (32,'2021-05-17 00:00:47','职位2');
insert  into `zhiweixinxi`(`id`,`addtime`,`zhiwei`) values (33,'2021-05-17 00:00:47','职位3');
insert  into `zhiweixinxi`(`id`,`addtime`,`zhiwei`) values (34,'2021-05-17 00:00:47','职位4');
insert  into `zhiweixinxi`(`id`,`addtime`,`zhiwei`) values (35,'2021-05-17 00:00:47','职位5');
insert  into `zhiweixinxi`(`id`,`addtime`,`zhiwei`) values (36,'2021-05-17 00:00:47','职位6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
