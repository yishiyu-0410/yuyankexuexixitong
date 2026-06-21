/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yuyankexuexixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yuyankexuexixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yuyankexuexixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'kecheng_types','课程类型',1,'课程类型1',NULL,NULL,'2023-03-17 10:45:30'),(2,'kecheng_types','课程类型',2,'课程类型2',NULL,NULL,'2023-03-17 10:45:30'),(3,'kecheng_types','课程类型',3,'课程类型3',NULL,NULL,'2023-03-17 10:45:30'),(4,'kecheng_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-17 10:45:30'),(5,'kecheng_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-03-17 10:45:31'),(6,'kecheng_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-03-17 10:45:31'),(7,'xuexizuji_types','学习状态',1,'学习中',NULL,NULL,'2023-03-17 10:45:31'),(8,'xuexizuji_types','学习状态',2,'异常结束',NULL,NULL,'2023-03-17 10:45:31'),(9,'xuexizuji_types','学习状态',3,'正常结束',NULL,NULL,'2023-03-17 10:45:31'),(10,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-17 10:45:31'),(11,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-17 10:45:31'),(12,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-03-17 10:45:31'),(13,'sex_types','性别',1,'男',NULL,NULL,'2023-03-17 10:45:31'),(14,'sex_types','性别',2,'女',NULL,NULL,'2023-03-17 10:45:31'),(15,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-17 10:45:31'),(16,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-17 10:45:31');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`jiaoshi_id`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,3,NULL,'发布内容1',50,1,'2023-03-17 10:46:07','2023-03-17 10:46:07','2023-03-17 10:46:07'),(2,'帖子标题2',NULL,1,NULL,'发布内容2',384,1,'2023-03-17 10:46:07','2023-03-17 10:46:07','2023-03-17 10:46:07'),(3,'帖子标题3',NULL,1,NULL,'发布内容3',407,1,'2023-03-17 10:46:07','2023-03-17 10:46:07','2023-03-17 10:46:07'),(4,'帖子标题4',NULL,2,NULL,'发布内容4',287,1,'2023-03-17 10:46:07','2023-03-17 10:46:07','2023-03-17 10:46:07'),(5,'帖子标题5',NULL,1,NULL,'发布内容5',477,1,'2023-03-17 10:46:07','2023-03-17 10:46:07','2023-03-17 10:46:07'),(6,'帖子标题6',NULL,2,NULL,'发布内容6',207,1,'2023-03-17 10:46:07','2023-03-17 10:46:07','2023-03-17 10:46:07'),(7,'帖子标题7',NULL,3,NULL,'发布内容7',155,1,'2023-03-17 10:46:07','2023-03-17 10:46:07','2023-03-17 10:46:07'),(8,'帖子标题8',NULL,1,NULL,'发布内容8',489,1,'2023-03-17 10:46:07','2023-03-17 10:46:07','2023-03-17 10:46:07'),(9,'帖子标题9',NULL,1,NULL,'发布内容9',189,1,'2023-03-17 10:46:07','2023-03-17 10:46:07','2023-03-17 10:46:07'),(10,'帖子标题10',NULL,1,NULL,'发布内容10',336,1,'2023-03-17 10:46:07','2023-03-17 10:46:07','2023-03-17 10:46:07'),(11,'帖子标题11',NULL,2,NULL,'发布内容11',326,1,'2023-03-17 10:46:07','2023-03-17 10:46:07','2023-03-17 10:46:07'),(12,'帖子标题12',NULL,1,NULL,'发布内容12',104,1,'2023-03-17 10:46:07','2023-03-17 10:46:07','2023-03-17 10:46:07'),(13,'帖子标题13',NULL,1,NULL,'发布内容13',48,1,'2023-03-17 10:46:07','2023-03-17 10:46:07','2023-03-17 10:46:07'),(14,'帖子标题14',NULL,2,NULL,'发布内容14',471,1,'2023-03-17 10:46:07','2023-03-17 10:46:07','2023-03-17 10:46:07'),(15,NULL,1,NULL,NULL,'123123123',14,2,'2023-03-17 11:16:33',NULL,'2023-03-17 11:16:33'),(16,NULL,2,NULL,NULL,'234234',14,2,'2023-03-17 11:17:04',NULL,'2023-03-17 11:17:04'),(17,NULL,NULL,NULL,1,'123123',14,2,'2023-03-17 11:18:28',NULL,'2023-03-17 11:18:28'),(18,NULL,NULL,1,NULL,'12312312sdasdasd',14,2,'2023-03-17 11:22:44',NULL,'2023-03-17 11:22:44');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师名称 Search111 ',
  `jiaoshi_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '教师手机号',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '教师身份证号 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `jiaoshi_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`jiaoshi_photo`,`jiaoshi_phone`,`jiaoshi_id_number`,`sex_types`,`jiaoshi_email`,`jiaoshi_delete`,`create_time`) values (1,'a1','123456','教师名称1','upload/jiaoshi1.jpg','17703786901','410224199010102001',1,'1@qq.com',1,'2023-03-17 10:46:07'),(2,'a2','123456','教师名称2','upload/jiaoshi2.jpg','17703786902','410224199010102002',1,'2@qq.com',1,'2023-03-17 10:46:07'),(3,'a3','123456','教师名称3','upload/jiaoshi3.jpg','17703786903','410224199010102003',2,'3@qq.com',1,'2023-03-17 10:46:07');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `kecheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称  Search111 ',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程照片',
  `kecheng_video` varchar(200) DEFAULT NULL COMMENT '学习视频',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_old_money` decimal(10,2) DEFAULT NULL COMMENT '参考价格',
  `kecheng_clicknum` int(11) DEFAULT NULL COMMENT '课程热度',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `kecheng_content` text COMMENT '课程介绍 ',
  `kecheng_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`jiaoshi_id`,`kecheng_uuid_number`,`kecheng_name`,`kecheng_photo`,`kecheng_video`,`kecheng_types`,`kecheng_old_money`,`kecheng_clicknum`,`zan_number`,`cai_number`,`kecheng_content`,`kecheng_delete`,`insert_time`,`create_time`) values (1,2,'1679021167144','课程名称1','upload/kecheng1.jpg','upload/video.mp4',1,'964.16',128,96,242,'课程介绍1',1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(2,3,'1679021167099','课程名称2','upload/kecheng2.jpg','upload/video.mp4',3,'709.60',473,217,227,'课程介绍2',1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(3,3,'1679021167082','课程名称3','upload/kecheng3.jpg','upload/video.mp4',2,'966.91',479,311,44,'课程介绍3',1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(4,1,'1679021167120','课程名称4','upload/kecheng4.jpg','upload/video.mp4',1,'966.81',352,30,425,'课程介绍4',1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(5,3,'1679021167135','课程名称5','upload/kecheng5.jpg','upload/video.mp4',2,'521.20',126,19,45,'课程介绍5',1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(6,1,'1679021167107','课程名称6','upload/kecheng6.jpg','upload/video.mp4',3,'867.38',407,294,159,'课程介绍6',1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(7,3,'1679021167155','课程名称7','upload/kecheng7.jpg','upload/video.mp4',2,'927.87',147,276,266,'课程介绍7',1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(8,2,'1679021167086','课程名称8','upload/kecheng8.jpg','upload/video.mp4',2,'713.93',116,328,356,'课程介绍8',1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(9,3,'1679021167149','课程名称9','upload/kecheng9.jpg','upload/video.mp4',3,'770.27',498,279,277,'课程介绍9',1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(10,1,'1679021167081','课程名称10','upload/kecheng10.jpg','upload/video.mp4',1,'909.13',470,295,54,'课程介绍10',1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(11,3,'1679021167112','课程名称11','upload/kecheng11.jpg','upload/video.mp4',1,'531.73',425,322,75,'课程介绍11',1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(12,3,'1679021167146','课程名称12','upload/kecheng12.jpg','upload/video.mp4',1,'630.74',405,481,360,'课程介绍12',1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(13,3,'1679021167165','课程名称13','upload/kecheng13.jpg','upload/video.mp4',3,'736.30',193,469,233,'课程介绍13',1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(14,2,'1679021167103','课程名称14','upload/kecheng14.jpg','upload/video.mp4',3,'796.66',454,432,74,'课程介绍14',1,'2023-03-17 10:46:07','2023-03-17 10:46:07');

/*Table structure for table `kecheng_collection` */

DROP TABLE IF EXISTS `kecheng_collection`;

CREATE TABLE `kecheng_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kecheng_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='课程收藏';

/*Data for the table `kecheng_collection` */

insert  into `kecheng_collection`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(2,2,2,1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(3,3,2,1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(4,4,3,1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(5,5,2,1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(6,6,2,1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(7,7,2,1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(8,8,2,1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(9,9,2,1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(10,10,1,1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(11,11,1,1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(12,12,1,1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(13,13,3,1,'2023-03-17 10:46:07','2023-03-17 10:46:07'),(14,14,3,1,'2023-03-17 10:46:07','2023-03-17 10:46:07');

/*Table structure for table `kecheng_liuyan` */

DROP TABLE IF EXISTS `kecheng_liuyan`;

CREATE TABLE `kecheng_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kecheng_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='课程留言';

/*Data for the table `kecheng_liuyan` */

insert  into `kecheng_liuyan`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-03-17 10:46:07','回复信息1','2023-03-17 10:46:07','2023-03-17 10:46:07'),(2,2,3,'留言内容2','2023-03-17 10:46:07','回复信息2','2023-03-17 10:46:07','2023-03-17 10:46:07'),(3,3,3,'留言内容3','2023-03-17 10:46:07','回复信息3','2023-03-17 10:46:07','2023-03-17 10:46:07'),(4,4,2,'留言内容4','2023-03-17 10:46:07','回复信息4','2023-03-17 10:46:07','2023-03-17 10:46:07'),(5,5,2,'留言内容5','2023-03-17 10:46:07','回复信息5','2023-03-17 10:46:07','2023-03-17 10:46:07'),(6,6,3,'留言内容6','2023-03-17 10:46:07','回复信息6','2023-03-17 10:46:07','2023-03-17 10:46:07'),(7,7,2,'留言内容7','2023-03-17 10:46:07','回复信息7','2023-03-17 10:46:07','2023-03-17 10:46:07'),(8,8,2,'留言内容8','2023-03-17 10:46:07','回复信息8','2023-03-17 10:46:07','2023-03-17 10:46:07'),(9,9,3,'留言内容9','2023-03-17 10:46:07','回复信息9','2023-03-17 10:46:07','2023-03-17 10:46:07'),(10,10,1,'留言内容10','2023-03-17 10:46:07','回复信息10123123','2023-03-17 11:16:19','2023-03-17 10:46:07'),(11,11,2,'留言内容11','2023-03-17 10:46:07','回复信息11','2023-03-17 10:46:07','2023-03-17 10:46:07'),(12,12,2,'留言内容12','2023-03-17 10:46:07','回复信息12','2023-03-17 10:46:07','2023-03-17 10:46:07'),(13,13,3,'留言内容13','2023-03-17 10:46:07','回复信息13','2023-03-17 10:46:07','2023-03-17 10:46:07'),(14,14,3,'留言内容14','2023-03-17 10:46:07','回复信息14','2023-03-17 10:46:07','2023-03-17 10:46:07'),(15,14,1,'123123','2023-03-17 11:13:47','12312312','2023-03-17 11:16:51','2023-03-17 11:13:47');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'upload/news1.jpg','2023-03-17 10:46:07','公告详情1','2023-03-17 10:46:07'),(2,'公告标题2',3,'upload/news2.jpg','2023-03-17 10:46:07','公告详情2','2023-03-17 10:46:07'),(3,'公告标题3',3,'upload/news3.jpg','2023-03-17 10:46:07','公告详情3','2023-03-17 10:46:07'),(4,'公告标题4',3,'upload/news4.jpg','2023-03-17 10:46:07','公告详情4','2023-03-17 10:46:07'),(5,'公告标题5',3,'upload/news5.jpg','2023-03-17 10:46:07','公告详情5','2023-03-17 10:46:07'),(6,'公告标题6',2,'upload/news6.jpg','2023-03-17 10:46:07','公告详情6','2023-03-17 10:46:07'),(7,'公告标题7',1,'upload/news7.jpg','2023-03-17 10:46:07','公告详情7','2023-03-17 10:46:07'),(8,'公告标题8',3,'upload/news8.jpg','2023-03-17 10:46:07','公告详情8','2023-03-17 10:46:07'),(9,'公告标题9',3,'upload/news9.jpg','2023-03-17 10:46:07','公告详情9','2023-03-17 10:46:07'),(10,'公告标题10',1,'upload/news10.jpg','2023-03-17 10:46:07','公告详情10','2023-03-17 10:46:07'),(11,'公告标题11',1,'upload/news11.jpg','2023-03-17 10:46:07','公告详情11','2023-03-17 10:46:07'),(12,'公告标题12',2,'upload/news12.jpg','2023-03-17 10:46:07','公告详情12','2023-03-17 10:46:07'),(13,'公告标题13',1,'upload/news13.jpg','2023-03-17 10:46:07','公告详情13','2023-03-17 10:46:07'),(14,'公告标题14',2,'upload/news14.jpg','2023-03-17 10:46:07','公告详情14','2023-03-17 10:46:07');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','jiaoshi','教师','vzu2y4ht30wsi3ibo7ifg8vhbmn3wjax','2023-03-17 10:50:34','2023-03-17 12:15:56'),(2,1,'admin','users','管理员','92ch2egnx0ucwkqivhzvxy701rv98uqp','2023-03-17 11:02:06','2023-03-17 12:17:12'),(3,1,'a1','yonghu','用户','r2mcjfi7r3sfj53058ofc7fhle8e8tkh','2023-03-17 11:07:55','2023-03-17 12:18:48'),(4,2,'a2','jiaoshi','教师','txu5apvek0c33qx5iahou48a40dq4zfp','2023-03-17 11:16:41','2023-03-17 12:16:41');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-17 10:45:30');

/*Table structure for table `xuexizuji` */

DROP TABLE IF EXISTS `xuexizuji`;

CREATE TABLE `xuexizuji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xuexizuji_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `xuexizuji_types` int(11) DEFAULT NULL COMMENT '学习状态 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='学习足迹';

/*Data for the table `xuexizuji` */

insert  into `xuexizuji`(`id`,`kecheng_id`,`yonghu_id`,`xuexizuji_time`,`xuexizuji_types`,`insert_time`,`create_time`) values (17,14,1,'2023-03-17 11:13:31',3,'2023-03-17 11:13:31','2023-03-17 11:13:31'),(18,14,1,'2023-03-17 11:14:13',2,'2023-03-17 11:14:13','2023-03-17 11:14:13'),(19,14,1,'2023-03-14 01:14:45',3,'2023-03-17 11:14:45','2023-03-17 11:14:45'),(20,14,1,'2023-03-11 11:18:59',3,'2023-03-17 11:18:59','2023-03-17 11:18:59'),(21,14,1,'2023-03-17 11:21:51',2,'2023-03-17 11:21:51','2023-03-17 11:21:51'),(22,14,1,'2023-03-17 11:22:02',1,'2023-03-17 11:22:02','2023-03-17 11:22:02');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `xuexi_number` int(11) DEFAULT NULL COMMENT '学习时长',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`sex_types`,`yonghu_email`,`xuexi_number`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户名称1','upload/yonghu1.jpg','17703786901','410224199010102001',1,'1@qq.com',13562,1,'2023-03-17 10:46:07'),(2,'a2','123456','用户名称2','upload/yonghu2.jpg','17703786902','410224199010102002',1,'2@qq.com',100,1,'2023-03-17 10:46:07'),(3,'a3','123456','用户名称3','upload/yonghu3.jpg','17703786903','410224199010102003',1,'3@qq.com',1000,1,'2023-03-17 10:46:07'),(4,'a123','123456','123','/upload/1679023087204.jpg','13341133131','410882198911231211',2,'123@qq.com',0,1,'2023-03-17 11:18:08');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
