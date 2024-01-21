/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootus5uu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootus5uu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootus5uu`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='客户服务';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (111,'2021-05-09 15:46:56',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (112,'2021-05-09 15:46:56',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (113,'2021-05-09 15:46:56',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (114,'2021-05-09 15:46:56',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (115,'2021-05-09 15:46:56',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (116,'2021-05-09 15:46:56',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootus5uu/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootus5uu/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootus5uu/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discusskechengxinxi` */

DROP TABLE IF EXISTS `discusskechengxinxi`;

CREATE TABLE `discusskechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COMMENT='课程信息评论表';

/*Data for the table `discusskechengxinxi` */

insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (191,'2021-05-09 15:46:56',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (192,'2021-05-09 15:46:56',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (193,'2021-05-09 15:46:56',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (194,'2021-05-09 15:46:56',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (195,'2021-05-09 15:46:56',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (196,'2021-05-09 15:46:56',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='学习交流';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (121,'2021-05-09 15:46:56','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (122,'2021-05-09 15:46:56','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (123,'2021-05-09 15:46:56','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (124,'2021-05-09 15:46:56','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (125,'2021-05-09 15:46:56','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (126,'2021-05-09 15:46:56','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `goumaidekecheng` */

DROP TABLE IF EXISTS `goumaidekecheng`;

CREATE TABLE `goumaidekecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `xueke` varchar(200) DEFAULT NULL COMMENT '学科',
  `feiyong` varchar(200) DEFAULT NULL COMMENT '费用',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `goumaishijian` datetime DEFAULT NULL COMMENT '购买时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='购买的课程';

/*Data for the table `goumaidekecheng` */

insert  into `goumaidekecheng`(`id`,`addtime`,`kechengmingcheng`,`leixing`,`xueke`,`feiyong`,`yonghuzhanghao`,`goumaishijian`,`sfsh`,`shhf`,`ispay`) values (51,'2021-05-09 15:46:56','课程名称1','类型1','学科1','费用1','用户账号1','2021-05-09 15:46:56','是','','未支付');
insert  into `goumaidekecheng`(`id`,`addtime`,`kechengmingcheng`,`leixing`,`xueke`,`feiyong`,`yonghuzhanghao`,`goumaishijian`,`sfsh`,`shhf`,`ispay`) values (52,'2021-05-09 15:46:56','课程名称2','类型2','学科2','费用2','用户账号2','2021-05-09 15:46:56','是','','未支付');
insert  into `goumaidekecheng`(`id`,`addtime`,`kechengmingcheng`,`leixing`,`xueke`,`feiyong`,`yonghuzhanghao`,`goumaishijian`,`sfsh`,`shhf`,`ispay`) values (53,'2021-05-09 15:46:56','课程名称3','类型3','学科3','费用3','用户账号3','2021-05-09 15:46:56','是','','未支付');
insert  into `goumaidekecheng`(`id`,`addtime`,`kechengmingcheng`,`leixing`,`xueke`,`feiyong`,`yonghuzhanghao`,`goumaishijian`,`sfsh`,`shhf`,`ispay`) values (54,'2021-05-09 15:46:56','课程名称4','类型4','学科4','费用4','用户账号4','2021-05-09 15:46:56','是','','未支付');
insert  into `goumaidekecheng`(`id`,`addtime`,`kechengmingcheng`,`leixing`,`xueke`,`feiyong`,`yonghuzhanghao`,`goumaishijian`,`sfsh`,`shhf`,`ispay`) values (55,'2021-05-09 15:46:56','课程名称5','类型5','学科5','费用5','用户账号5','2021-05-09 15:46:56','是','','未支付');
insert  into `goumaidekecheng`(`id`,`addtime`,`kechengmingcheng`,`leixing`,`xueke`,`feiyong`,`yonghuzhanghao`,`goumaishijian`,`sfsh`,`shhf`,`ispay`) values (56,'2021-05-09 15:46:56','课程名称6','类型6','学科6','费用6','用户账号6','2021-05-09 15:46:56','是','','未支付');

/*Table structure for table `kechengleixing` */

DROP TABLE IF EXISTS `kechengleixing`;

CREATE TABLE `kechengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='课程类型';

/*Data for the table `kechengleixing` */

insert  into `kechengleixing`(`id`,`addtime`,`leixing`) values (31,'2021-05-09 15:46:56','类型1');
insert  into `kechengleixing`(`id`,`addtime`,`leixing`) values (32,'2021-05-09 15:46:56','类型2');
insert  into `kechengleixing`(`id`,`addtime`,`leixing`) values (33,'2021-05-09 15:46:56','类型3');
insert  into `kechengleixing`(`id`,`addtime`,`leixing`) values (34,'2021-05-09 15:46:56','类型4');
insert  into `kechengleixing`(`id`,`addtime`,`leixing`) values (35,'2021-05-09 15:46:56','类型5');
insert  into `kechengleixing`(`id`,`addtime`,`leixing`) values (36,'2021-05-09 15:46:56','类型6');

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `xueke` varchar(200) DEFAULT NULL COMMENT '学科',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `feiyong` varchar(200) DEFAULT NULL COMMENT '费用',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`leixing`,`xueke`,`shipin`,`laoshixingming`,`feiyong`,`kechengtupian`,`fabushijian`) values (21,'2021-05-09 15:46:56','课程名称1','类型1','学科1','','老师姓名1','费用1','http://localhost:8080/springbootus5uu/upload/kechengxinxi_kechengtupian1.jpg','2021-05-09');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`leixing`,`xueke`,`shipin`,`laoshixingming`,`feiyong`,`kechengtupian`,`fabushijian`) values (22,'2021-05-09 15:46:56','课程名称2','类型2','学科2','','老师姓名2','费用2','http://localhost:8080/springbootus5uu/upload/kechengxinxi_kechengtupian2.jpg','2021-05-09');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`leixing`,`xueke`,`shipin`,`laoshixingming`,`feiyong`,`kechengtupian`,`fabushijian`) values (23,'2021-05-09 15:46:56','课程名称3','类型3','学科3','','老师姓名3','费用3','http://localhost:8080/springbootus5uu/upload/kechengxinxi_kechengtupian3.jpg','2021-05-09');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`leixing`,`xueke`,`shipin`,`laoshixingming`,`feiyong`,`kechengtupian`,`fabushijian`) values (24,'2021-05-09 15:46:56','课程名称4','类型4','学科4','','老师姓名4','费用4','http://localhost:8080/springbootus5uu/upload/kechengxinxi_kechengtupian4.jpg','2021-05-09');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`leixing`,`xueke`,`shipin`,`laoshixingming`,`feiyong`,`kechengtupian`,`fabushijian`) values (25,'2021-05-09 15:46:56','课程名称5','类型5','学科5','','老师姓名5','费用5','http://localhost:8080/springbootus5uu/upload/kechengxinxi_kechengtupian5.jpg','2021-05-09');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`leixing`,`xueke`,`shipin`,`laoshixingming`,`feiyong`,`kechengtupian`,`fabushijian`) values (26,'2021-05-09 15:46:56','课程名称6','类型6','学科6','','老师姓名6','费用6','http://localhost:8080/springbootus5uu/upload/kechengxinxi_kechengtupian6.jpg','2021-05-09');

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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (181,'2021-05-09 15:46:56',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (182,'2021-05-09 15:46:56',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (183,'2021-05-09 15:46:56',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (184,'2021-05-09 15:46:56',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (185,'2021-05-09 15:46:56',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (186,'2021-05-09 15:46:56',6,'用户名6','留言内容6','回复内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='教育资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (171,'2021-05-09 15:46:56','标题1','简介1','http://localhost:8080/springbootus5uu/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (172,'2021-05-09 15:46:56','标题2','简介2','http://localhost:8080/springbootus5uu/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (173,'2021-05-09 15:46:56','标题3','简介3','http://localhost:8080/springbootus5uu/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (174,'2021-05-09 15:46:56','标题4','简介4','http://localhost:8080/springbootus5uu/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (175,'2021-05-09 15:46:56','标题5','简介5','http://localhost:8080/springbootus5uu/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (176,'2021-05-09 15:46:56','标题6','简介6','http://localhost:8080/springbootus5uu/upload/news_picture6.jpg','内容6');

/*Table structure for table `shipindianbo` */

DROP TABLE IF EXISTS `shipindianbo`;

CREATE TABLE `shipindianbo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinmingcheng` varchar(200) DEFAULT NULL COMMENT '视频名称',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `shipinjianjie` longtext COMMENT '视频简介',
  `laiyuan` varchar(200) DEFAULT NULL COMMENT '来源',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='视频点播';

/*Data for the table `shipindianbo` */

insert  into `shipindianbo`(`id`,`addtime`,`shipinmingcheng`,`shipin`,`shipinjianjie`,`laiyuan`,`shangchuanshijian`,`fengmian`,`yonghuzhanghao`,`userid`) values (71,'2021-05-09 15:46:56','视频名称1','http://localhost:8080/springbootus5uu/upload/1620547330699.mp4','视频简介1','来源1','2021-05-09 15:46:56','http://localhost:8080/springbootus5uu/upload/shipindianbo_fengmian1.jpg','用户1',1);
insert  into `shipindianbo`(`id`,`addtime`,`shipinmingcheng`,`shipin`,`shipinjianjie`,`laiyuan`,`shangchuanshijian`,`fengmian`,`yonghuzhanghao`,`userid`) values (72,'2021-05-09 15:46:56','视频名称2','','视频简介2','来源2','2021-05-09 15:46:56','http://localhost:8080/springbootus5uu/upload/shipindianbo_fengmian2.jpg','用户账号2',2);
insert  into `shipindianbo`(`id`,`addtime`,`shipinmingcheng`,`shipin`,`shipinjianjie`,`laiyuan`,`shangchuanshijian`,`fengmian`,`yonghuzhanghao`,`userid`) values (73,'2021-05-09 15:46:56','视频名称3','','视频简介3','来源3','2021-05-09 15:46:56','http://localhost:8080/springbootus5uu/upload/shipindianbo_fengmian3.jpg','用户账号3',3);
insert  into `shipindianbo`(`id`,`addtime`,`shipinmingcheng`,`shipin`,`shipinjianjie`,`laiyuan`,`shangchuanshijian`,`fengmian`,`yonghuzhanghao`,`userid`) values (74,'2021-05-09 15:46:56','视频名称4','','视频简介4','来源4','2021-05-09 15:46:56','http://localhost:8080/springbootus5uu/upload/shipindianbo_fengmian4.jpg','用户账号4',4);
insert  into `shipindianbo`(`id`,`addtime`,`shipinmingcheng`,`shipin`,`shipinjianjie`,`laiyuan`,`shangchuanshijian`,`fengmian`,`yonghuzhanghao`,`userid`) values (75,'2021-05-09 15:46:56','视频名称5','','视频简介5','来源5','2021-05-09 15:46:56','http://localhost:8080/springbootus5uu/upload/shipindianbo_fengmian5.jpg','用户账号5',5);
insert  into `shipindianbo`(`id`,`addtime`,`shipinmingcheng`,`shipin`,`shipinjianjie`,`laiyuan`,`shangchuanshijian`,`fengmian`,`yonghuzhanghao`,`userid`) values (76,'2021-05-09 15:46:56','视频名称6','','视频简介6','来源6','2021-05-09 15:46:56','http://localhost:8080/springbootus5uu/upload/shipindianbo_fengmian6.jpg','用户账号6',6);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','lmyhs373nwl5bgxuaqqaov03fo3mr4ci','2021-05-09 15:48:33','2021-05-09 17:02:33');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1,'abo','users','管理员','o4g7kcsm6le2m4rz9iui659gd9ck4qqh','2021-05-09 15:49:17','2021-05-09 16:49:17');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-09 15:46:56');

/*Table structure for table `wodebiji` */

DROP TABLE IF EXISTS `wodebiji`;

CREATE TABLE `wodebiji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='我的笔记';

/*Data for the table `wodebiji` */

insert  into `wodebiji`(`id`,`addtime`,`biaoti`,`neirong`,`yonghuzhanghao`) values (81,'2021-05-09 15:46:56','标题1','内容1','用户账号1');
insert  into `wodebiji`(`id`,`addtime`,`biaoti`,`neirong`,`yonghuzhanghao`) values (82,'2021-05-09 15:46:56','标题2','内容2','用户账号2');
insert  into `wodebiji`(`id`,`addtime`,`biaoti`,`neirong`,`yonghuzhanghao`) values (83,'2021-05-09 15:46:56','标题3','内容3','用户账号3');
insert  into `wodebiji`(`id`,`addtime`,`biaoti`,`neirong`,`yonghuzhanghao`) values (84,'2021-05-09 15:46:56','标题4','内容4','用户账号4');
insert  into `wodebiji`(`id`,`addtime`,`biaoti`,`neirong`,`yonghuzhanghao`) values (85,'2021-05-09 15:46:56','标题5','内容5','用户账号5');
insert  into `wodebiji`(`id`,`addtime`,`biaoti`,`neirong`,`yonghuzhanghao`) values (86,'2021-05-09 15:46:56','标题6','内容6','用户账号6');

/*Table structure for table `wodekecheng` */

DROP TABLE IF EXISTS `wodekecheng`;

CREATE TABLE `wodekecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `zhangjie` varchar(200) DEFAULT NULL COMMENT '章节',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='我的课程';

/*Data for the table `wodekecheng` */

insert  into `wodekecheng`(`id`,`addtime`,`kechengmingcheng`,`zhangjie`,`wenjian`,`yonghuzhanghao`) values (91,'2021-05-09 15:46:56','课程名称1','章节1','','用户账号1');
insert  into `wodekecheng`(`id`,`addtime`,`kechengmingcheng`,`zhangjie`,`wenjian`,`yonghuzhanghao`) values (92,'2021-05-09 15:46:56','课程名称2','章节2','','用户账号2');
insert  into `wodekecheng`(`id`,`addtime`,`kechengmingcheng`,`zhangjie`,`wenjian`,`yonghuzhanghao`) values (93,'2021-05-09 15:46:56','课程名称3','章节3','','用户账号3');
insert  into `wodekecheng`(`id`,`addtime`,`kechengmingcheng`,`zhangjie`,`wenjian`,`yonghuzhanghao`) values (94,'2021-05-09 15:46:56','课程名称4','章节4','','用户账号4');
insert  into `wodekecheng`(`id`,`addtime`,`kechengmingcheng`,`zhangjie`,`wenjian`,`yonghuzhanghao`) values (95,'2021-05-09 15:46:56','课程名称5','章节5','','用户账号5');
insert  into `wodekecheng`(`id`,`addtime`,`kechengmingcheng`,`zhangjie`,`wenjian`,`yonghuzhanghao`) values (96,'2021-05-09 15:46:56','课程名称6','章节6','','用户账号6');

/*Table structure for table `xiaoxitongzhi` */

DROP TABLE IF EXISTS `xiaoxitongzhi`;

CREATE TABLE `xiaoxitongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongzhibiaoti` varchar(200) DEFAULT NULL COMMENT '通知标题',
  `tongzhineirong` longtext COMMENT '通知内容',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `fasongshijian` datetime DEFAULT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='消息通知';

/*Data for the table `xiaoxitongzhi` */

insert  into `xiaoxitongzhi`(`id`,`addtime`,`tongzhibiaoti`,`tongzhineirong`,`yonghuzhanghao`,`fasongshijian`) values (101,'2021-05-09 15:46:56','通知标题1','通知内容1','用户账号1','2021-05-09 15:46:56');
insert  into `xiaoxitongzhi`(`id`,`addtime`,`tongzhibiaoti`,`tongzhineirong`,`yonghuzhanghao`,`fasongshijian`) values (102,'2021-05-09 15:46:56','通知标题2','通知内容2','用户账号2','2021-05-09 15:46:56');
insert  into `xiaoxitongzhi`(`id`,`addtime`,`tongzhibiaoti`,`tongzhineirong`,`yonghuzhanghao`,`fasongshijian`) values (103,'2021-05-09 15:46:56','通知标题3','通知内容3','用户账号3','2021-05-09 15:46:56');
insert  into `xiaoxitongzhi`(`id`,`addtime`,`tongzhibiaoti`,`tongzhineirong`,`yonghuzhanghao`,`fasongshijian`) values (104,'2021-05-09 15:46:56','通知标题4','通知内容4','用户账号4','2021-05-09 15:46:56');
insert  into `xiaoxitongzhi`(`id`,`addtime`,`tongzhibiaoti`,`tongzhineirong`,`yonghuzhanghao`,`fasongshijian`) values (105,'2021-05-09 15:46:56','通知标题5','通知内容5','用户账号5','2021-05-09 15:46:56');
insert  into `xiaoxitongzhi`(`id`,`addtime`,`tongzhibiaoti`,`tongzhineirong`,`yonghuzhanghao`,`fasongshijian`) values (106,'2021-05-09 15:46:56','通知标题6','通知内容6','用户账号6','2021-05-09 15:46:56');

/*Table structure for table `xueke` */

DROP TABLE IF EXISTS `xueke`;

CREATE TABLE `xueke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueke` varchar(200) DEFAULT NULL COMMENT '学科',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='学科';

/*Data for the table `xueke` */

insert  into `xueke`(`id`,`addtime`,`xueke`) values (41,'2021-05-09 15:46:56','学科1');
insert  into `xueke`(`id`,`addtime`,`xueke`) values (42,'2021-05-09 15:46:56','学科2');
insert  into `xueke`(`id`,`addtime`,`xueke`) values (43,'2021-05-09 15:46:56','学科3');
insert  into `xueke`(`id`,`addtime`,`xueke`) values (44,'2021-05-09 15:46:56','学科4');
insert  into `xueke`(`id`,`addtime`,`xueke`) values (45,'2021-05-09 15:46:56','学科5');
insert  into `xueke`(`id`,`addtime`,`xueke`) values (46,'2021-05-09 15:46:56','学科6');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (11,'2021-05-09 15:46:56','用户1','123456','用户姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/springbootus5uu/upload/yonghu_touxiang1.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (12,'2021-05-09 15:46:56','用户2','123456','用户姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/springbootus5uu/upload/yonghu_touxiang2.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (13,'2021-05-09 15:46:56','用户3','123456','用户姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/springbootus5uu/upload/yonghu_touxiang3.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (14,'2021-05-09 15:46:56','用户4','123456','用户姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/springbootus5uu/upload/yonghu_touxiang4.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (15,'2021-05-09 15:46:56','用户5','123456','用户姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/springbootus5uu/upload/yonghu_touxiang5.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (16,'2021-05-09 15:46:56','用户6','123456','用户姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/springbootus5uu/upload/yonghu_touxiang6.jpg');

/*Table structure for table `zhiyeguihua` */

DROP TABLE IF EXISTS `zhiyeguihua`;

CREATE TABLE `zhiyeguihua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziwofenxi` varchar(200) DEFAULT NULL COMMENT '自我分析',
  `quelimubiao` varchar(200) DEFAULT NULL COMMENT '确立目标',
  `huanjingpingjia` varchar(200) DEFAULT NULL COMMENT '环境评价',
  `zhiyedingwei` varchar(200) DEFAULT NULL COMMENT '职业定位',
  `shishicelve` varchar(200) DEFAULT NULL COMMENT '实施策略',
  `pingguyufankui` varchar(200) DEFAULT NULL COMMENT '评估与反馈',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `muqianzhiye` varchar(200) DEFAULT NULL COMMENT '目前职业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='职业规划';

/*Data for the table `zhiyeguihua` */

insert  into `zhiyeguihua`(`id`,`addtime`,`ziwofenxi`,`quelimubiao`,`huanjingpingjia`,`zhiyedingwei`,`shishicelve`,`pingguyufankui`,`fengmian`,`xingming`,`xingbie`,`nianling`,`muqianzhiye`) values (61,'2021-05-09 15:46:56','自我分析1','确立目标1','环境评价1','职业定位1','实施策略1','评估与反馈1','http://localhost:8080/springbootus5uu/upload/zhiyeguihua_fengmian1.jpg','姓名1','男','年龄1','目前职业1');
insert  into `zhiyeguihua`(`id`,`addtime`,`ziwofenxi`,`quelimubiao`,`huanjingpingjia`,`zhiyedingwei`,`shishicelve`,`pingguyufankui`,`fengmian`,`xingming`,`xingbie`,`nianling`,`muqianzhiye`) values (62,'2021-05-09 15:46:56','自我分析2','确立目标2','环境评价2','职业定位2','实施策略2','评估与反馈2','http://localhost:8080/springbootus5uu/upload/zhiyeguihua_fengmian2.jpg','姓名2','男','年龄2','目前职业2');
insert  into `zhiyeguihua`(`id`,`addtime`,`ziwofenxi`,`quelimubiao`,`huanjingpingjia`,`zhiyedingwei`,`shishicelve`,`pingguyufankui`,`fengmian`,`xingming`,`xingbie`,`nianling`,`muqianzhiye`) values (63,'2021-05-09 15:46:56','自我分析3','确立目标3','环境评价3','职业定位3','实施策略3','评估与反馈3','http://localhost:8080/springbootus5uu/upload/zhiyeguihua_fengmian3.jpg','姓名3','男','年龄3','目前职业3');
insert  into `zhiyeguihua`(`id`,`addtime`,`ziwofenxi`,`quelimubiao`,`huanjingpingjia`,`zhiyedingwei`,`shishicelve`,`pingguyufankui`,`fengmian`,`xingming`,`xingbie`,`nianling`,`muqianzhiye`) values (64,'2021-05-09 15:46:56','自我分析4','确立目标4','环境评价4','职业定位4','实施策略4','评估与反馈4','http://localhost:8080/springbootus5uu/upload/zhiyeguihua_fengmian4.jpg','姓名4','男','年龄4','目前职业4');
insert  into `zhiyeguihua`(`id`,`addtime`,`ziwofenxi`,`quelimubiao`,`huanjingpingjia`,`zhiyedingwei`,`shishicelve`,`pingguyufankui`,`fengmian`,`xingming`,`xingbie`,`nianling`,`muqianzhiye`) values (65,'2021-05-09 15:46:56','自我分析5','确立目标5','环境评价5','职业定位5','实施策略5','评估与反馈5','http://localhost:8080/springbootus5uu/upload/zhiyeguihua_fengmian5.jpg','姓名5','男','年龄5','目前职业5');
insert  into `zhiyeguihua`(`id`,`addtime`,`ziwofenxi`,`quelimubiao`,`huanjingpingjia`,`zhiyedingwei`,`shishicelve`,`pingguyufankui`,`fengmian`,`xingming`,`xingbie`,`nianling`,`muqianzhiye`) values (66,'2021-05-09 15:46:56','自我分析6','确立目标6','环境评价6','职业定位6','实施策略6','评估与反馈6','http://localhost:8080/springbootus5uu/upload/zhiyeguihua_fengmian6.jpg','姓名6','男','年龄6','目前职业6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
