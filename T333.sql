/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t333`;
CREATE DATABASE IF NOT EXISTS `t333` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t333`;

DROP TABLE IF EXISTS `chengji`;
CREATE TABLE IF NOT EXISTS `chengji` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chengji_name` varchar(200) DEFAULT NULL COMMENT '成绩标题 Search111',
  `chengji_types` int DEFAULT NULL COMMENT '成绩类型  Search111',
  `xuenfen_number` int DEFAULT NULL COMMENT '成绩',
  `chengji_content` text COMMENT '备注',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `chengji_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='学生成绩';

DELETE FROM `chengji`;
INSERT INTO `chengji` (`id`, `chengji_name`, `chengji_types`, `xuenfen_number`, `chengji_content`, `yonghu_id`, `chengji_delete`, `create_time`) VALUES
	(1, '成绩标题1', 2, 361, '备注1', 3, 1, '2023-03-21 01:14:46'),
	(2, '成绩标题2', 3, 229, '备注2', 2, 1, '2023-03-21 01:14:46'),
	(3, '成绩标题3', 1, 424, '备注3', 2, 1, '2023-03-21 01:14:46'),
	(4, '成绩标题4', 3, 440, '备注4', 1, 1, '2023-03-21 01:14:46'),
	(5, '成绩标题5', 3, 206, '备注5', 1, 1, '2023-03-21 01:14:46'),
	(6, '成绩标题6', 3, 336, '备注6', 1, 1, '2023-03-21 01:14:46'),
	(7, '成绩标题7', 3, 134, '备注7', 3, 1, '2023-03-21 01:14:46'),
	(8, '成绩标题8', 1, 455, '备注8', 3, 1, '2023-03-21 01:14:46'),
	(9, '成绩标题9', 2, 397, '备注9', 1, 1, '2023-03-21 01:14:46'),
	(10, '成绩标题10', 2, 100, '备注10', 3, 1, '2023-03-21 01:14:46'),
	(11, '成绩标题11', 3, 400, '备注11', 3, 1, '2023-03-21 01:14:46'),
	(12, '成绩标题12', 1, 30, '备注12', 1, 1, '2023-03-21 01:14:46'),
	(13, '成绩标题13', 3, 168, '备注13', 1, 1, '2023-03-21 01:14:46'),
	(14, '成绩标题14', 1, 306, '备注14', 2, 1, '2023-03-21 01:14:46'),
	(15, '123', 1, 123, '<p>123</p>', 1, 1, '2023-03-21 01:31:57');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'kecheng_types', '课程类型', 1, '课程类型1', NULL, NULL, '2023-03-21 01:14:37'),
	(2, 'kecheng_types', '课程类型', 2, '课程类型2', NULL, NULL, '2023-03-21 01:14:37'),
	(3, 'kecheng_types', '课程类型', 3, '课程类型3', NULL, NULL, '2023-03-21 01:14:37'),
	(4, 'xueqi_types', '学期', 1, '学期1', NULL, NULL, '2023-03-21 01:14:37'),
	(5, 'xueqi_types', '学期', 2, '学期2', NULL, NULL, '2023-03-21 01:14:37'),
	(6, 'xingqi_types', '周次', 1, '周次1', NULL, NULL, '2023-03-21 01:14:37'),
	(7, 'xingqi_types', '周次', 2, '周次2', NULL, NULL, '2023-03-21 01:14:37'),
	(8, 'jieke_types', '第几节', 1, '第1节', NULL, NULL, '2023-03-21 01:14:37'),
	(9, 'jieke_types', '第几节', 2, '第2节', NULL, NULL, '2023-03-21 01:14:37'),
	(10, 'chengji_types', '成绩类型', 1, '平时成绩', NULL, NULL, '2023-03-21 01:14:37'),
	(11, 'chengji_types', '成绩类型', 2, '期中考试成绩', NULL, NULL, '2023-03-21 01:14:37'),
	(12, 'chengji_types', '成绩类型', 3, '期末考试成绩', NULL, NULL, '2023-03-21 01:14:37'),
	(13, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-03-21 01:14:37'),
	(14, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-03-21 01:14:37'),
	(15, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2023-03-21 01:14:37'),
	(16, 'sex_types', '性别', 1, '男', NULL, NULL, '2023-03-21 01:14:37'),
	(17, 'sex_types', '性别', 2, '女', NULL, NULL, '2023-03-21 01:14:37'),
	(18, 'banji_types', '班级', 1, '班级1', NULL, NULL, '2023-03-21 01:14:37'),
	(19, 'banji_types', '班级', 2, '班级2', NULL, NULL, '2023-03-21 01:14:37'),
	(20, 'banji_types', '班级', 3, '班级3', NULL, NULL, '2023-03-21 01:14:37');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `jiaoshi_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `banji_types` int DEFAULT NULL COMMENT '班级 Search111 ',
  `jiaoshi_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `jiaoshi_uuid_number`, `username`, `password`, `jiaoshi_name`, `jiaoshi_photo`, `sex_types`, `jiaoshi_phone`, `jiaoshi_email`, `banji_types`, `jiaoshi_delete`, `create_time`) VALUES
	(1, '1679361286398', '教师1', '123456', '教师姓名1', 'upload/jiaoshi1.jpg', 2, '17703786901', '1@qq.com', 3, 1, '2023-03-21 01:14:46'),
	(2, '1679361286343', '教师2', '123456', '教师姓名2', 'upload/jiaoshi2.jpg', 1, '17703786902', '2@qq.com', 3, 1, '2023-03-21 01:14:46'),
	(3, '1679361286357', '教师3', '123456', '教师姓名3', 'upload/jiaoshi3.jpg', 1, '17703786903', '3@qq.com', 3, 1, '2023-03-21 01:14:46');

DROP TABLE IF EXISTS `kecheng`;
CREATE TABLE IF NOT EXISTS `kecheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '课程编号 ',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称 Search111',
  `kecheng_types` int DEFAULT NULL COMMENT '课程类型  Search111',
  `xuenfen_number` int DEFAULT NULL COMMENT '学分',
  `kecheng_content` text COMMENT '课程详情',
  `kecheng_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='课程信息';

DELETE FROM `kecheng`;
INSERT INTO `kecheng` (`id`, `kecheng_uuid_number`, `kecheng_name`, `kecheng_types`, `xuenfen_number`, `kecheng_content`, `kecheng_delete`, `create_time`) VALUES
	(1, '1679361286344', '课程名称1', 1, 120, '课程详情1', 1, '2023-03-21 01:14:46'),
	(2, '1679361286400', '课程名称2', 1, 226, '课程详情2', 1, '2023-03-21 01:14:46'),
	(3, '1679361286319', '课程名称3', 3, 109, '课程详情3', 1, '2023-03-21 01:14:46'),
	(4, '1679361286399', '课程名称4', 3, 102, '课程详情4', 1, '2023-03-21 01:14:46'),
	(5, '1679361286406', '课程名称5', 1, 166, '课程详情5', 1, '2023-03-21 01:14:46'),
	(6, '1679361286412', '课程名称6', 3, 31, '课程详情6', 1, '2023-03-21 01:14:46'),
	(7, '1679361286345', '课程名称7', 1, 380, '课程详情7', 1, '2023-03-21 01:14:46'),
	(8, '1679361286325', '课程名称8', 3, 43, '课程详情8', 1, '2023-03-21 01:14:46'),
	(9, '1679361286338', '课程名称9', 1, 207, '课程详情9', 1, '2023-03-21 01:14:46'),
	(10, '1679361286404', '课程名称10', 1, 407, '课程详情10', 1, '2023-03-21 01:14:46'),
	(11, '1679361286353', '课程名称11', 3, 497, '课程详情11', 1, '2023-03-21 01:14:46'),
	(12, '1679361286369', '课程名称12', 1, 60, '课程详情12', 1, '2023-03-21 01:14:46'),
	(13, '1679361286332', '课程名称13', 2, 402, '课程详情13', 1, '2023-03-21 01:14:46'),
	(14, '1679361286412', '课程名称14', 2, 343, '课程详情14', 1, '2023-03-21 01:14:46');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 1, 'upload/news1.jpg', '2023-03-21 01:14:46', '公告详情1', '2023-03-21 01:14:46'),
	(2, '公告标题2', 2, 'upload/news2.jpg', '2023-03-21 01:14:46', '公告详情2', '2023-03-21 01:14:46'),
	(3, '公告标题3', 1, 'upload/news3.jpg', '2023-03-21 01:14:46', '公告详情3', '2023-03-21 01:14:46'),
	(4, '公告标题4', 2, 'upload/news4.jpg', '2023-03-21 01:14:46', '公告详情4', '2023-03-21 01:14:46'),
	(5, '公告标题5', 2, 'upload/news5.jpg', '2023-03-21 01:14:46', '公告详情5', '2023-03-21 01:14:46'),
	(6, '公告标题6', 1, 'upload/news6.jpg', '2023-03-21 01:14:46', '公告详情6', '2023-03-21 01:14:46'),
	(7, '公告标题7', 2, 'upload/news7.jpg', '2023-03-21 01:14:46', '公告详情7', '2023-03-21 01:14:46'),
	(8, '公告标题8', 3, 'upload/news8.jpg', '2023-03-21 01:14:46', '公告详情8', '2023-03-21 01:14:46'),
	(9, '公告标题9', 1, 'upload/news9.jpg', '2023-03-21 01:14:46', '公告详情9', '2023-03-21 01:14:46'),
	(10, '公告标题10', 1, 'upload/news10.jpg', '2023-03-21 01:14:46', '公告详情10', '2023-03-21 01:14:46'),
	(11, '公告标题11', 2, 'upload/news11.jpg', '2023-03-21 01:14:46', '公告详情11', '2023-03-21 01:14:46'),
	(12, '公告标题12', 1, 'upload/news12.jpg', '2023-03-21 01:14:46', '公告详情12', '2023-03-21 01:14:46'),
	(13, '公告标题13', 2, 'upload/news13.jpg', '2023-03-21 01:14:46', '公告详情13', '2023-03-21 01:14:46'),
	(14, '公告标题14', 1, 'upload/news14.jpg', '2023-03-21 01:14:46', '公告详情14', '2023-03-21 01:14:46');

DROP TABLE IF EXISTS `paike`;
CREATE TABLE IF NOT EXISTS `paike` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int DEFAULT NULL COMMENT '课程',
  `shangke_time` timestamp NULL DEFAULT NULL COMMENT '上课时间',
  `xiake_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `jieke_types` int DEFAULT NULL COMMENT '第几节  Search111',
  `xueqi_types` int DEFAULT NULL COMMENT '学期 Search111',
  `xingqi_types` int DEFAULT NULL COMMENT '周次 Search111',
  `paike_address` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `paike_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='排课信息';

DELETE FROM `paike`;
INSERT INTO `paike` (`id`, `kecheng_id`, `shangke_time`, `xiake_time`, `jieke_types`, `xueqi_types`, `xingqi_types`, `paike_address`, `jiaoshi_id`, `paike_delete`, `create_time`) VALUES
	(1, 1, '2023-03-21 01:14:46', '2023-03-21 01:14:46', 1, 2, 2, '上课地点1', 1, 1, '2023-03-21 01:14:46'),
	(2, 2, '2023-03-21 01:14:46', '2023-03-21 01:14:46', 1, 1, 2, '上课地点2', 3, 1, '2023-03-21 01:14:46'),
	(3, 3, '2023-03-21 01:14:46', '2023-03-21 01:14:46', 2, 1, 2, '上课地点3', 1, 1, '2023-03-21 01:14:46'),
	(4, 4, '2023-03-21 01:14:46', '2023-03-21 01:14:46', 2, 1, 2, '上课地点4', 2, 1, '2023-03-21 01:14:46'),
	(5, 5, '2023-03-21 01:14:46', '2023-03-21 01:14:46', 1, 2, 1, '上课地点5', 1, 1, '2023-03-21 01:14:46'),
	(6, 6, '2023-03-21 01:14:46', '2023-03-21 01:14:46', 2, 1, 1, '上课地点6', 1, 1, '2023-03-21 01:14:46'),
	(7, 7, '2023-03-21 01:14:46', '2023-03-21 01:14:46', 1, 2, 1, '上课地点7', 2, 1, '2023-03-21 01:14:46'),
	(8, 8, '2023-03-21 01:14:46', '2023-03-21 01:14:46', 2, 2, 1, '上课地点8', 2, 1, '2023-03-21 01:14:46'),
	(9, 9, '2023-03-21 01:14:46', '2023-03-21 01:14:46', 2, 2, 1, '上课地点9', 3, 1, '2023-03-21 01:14:46'),
	(10, 10, '2023-03-21 01:14:46', '2023-03-21 01:14:46', 1, 2, 1, '上课地点10', 1, 1, '2023-03-21 01:14:46'),
	(11, 11, '2023-03-21 01:14:46', '2023-03-21 01:14:46', 1, 1, 1, '上课地点11', 2, 1, '2023-03-21 01:14:46'),
	(12, 12, '2023-03-21 01:14:46', '2023-03-21 01:14:46', 1, 2, 2, '上课地点12', 1, 1, '2023-03-21 01:14:46'),
	(13, 13, '2023-03-21 01:14:46', '2023-03-21 01:14:46', 2, 1, 1, '上课地点13', 2, 1, '2023-03-21 01:14:46'),
	(14, 14, '2023-03-21 01:14:46', '2023-03-21 01:14:46', 2, 1, 1, '上课地点14', 3, 1, '2023-03-21 01:14:46');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(4, 1, 'a1', 'yonghu', '学生', 'r85vdvebyq5gcdsgt1w79tjgxpiva9i5', '2023-03-21 01:28:41', '2024-08-04 03:56:13'),
	(5, 1, 'admin', 'users', '管理员', 'mv4kw87weywtkzdv9nejnvfg65aowka7', '2023-03-21 01:30:14', '2024-08-04 03:55:00'),
	(6, 1, 'a1', 'jiaoshi', '教师', '0r171eqmkqdat0tokrwxrmkqg1a0feje', '2023-03-21 01:31:26', '2024-08-04 03:55:58');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-21 01:14:37');

DROP TABLE IF EXISTS `xuanke`;
CREATE TABLE IF NOT EXISTS `xuanke` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int DEFAULT NULL COMMENT '课程',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '选课时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='选课信息';

DELETE FROM `xuanke`;
INSERT INTO `xuanke` (`id`, `kecheng_id`, `yonghu_id`, `insert_time`, `create_time`) VALUES
	(10, 10, 2, '2023-03-21 01:14:46', '2023-03-21 01:14:46'),
	(11, 11, 2, '2023-03-21 01:14:46', '2023-03-21 01:14:46'),
	(13, 13, 3, '2023-03-21 01:14:46', '2023-03-21 01:14:46'),
	(14, 14, 3, '2023-03-21 01:14:46', '2023-03-21 01:14:46'),
	(19, 14, 1, '2023-03-21 01:29:58', '2023-03-21 01:29:58'),
	(20, 13, 1, '2023-03-21 01:31:00', '2023-03-21 01:31:00');

DROP TABLE IF EXISTS `xuankexianzhi`;
CREATE TABLE IF NOT EXISTS `xuankexianzhi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuankexianzhi_number` int DEFAULT NULL COMMENT '选课数量',
  `kaishi_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `jieshu_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='选课限制';

DELETE FROM `xuankexianzhi`;
INSERT INTO `xuankexianzhi` (`id`, `xuankexianzhi_number`, `kaishi_time`, `jieshu_time`, `create_time`) VALUES
	(1, 2, '2023-03-21 01:14:46', '2023-03-24 01:14:46', '2023-03-21 01:14:46');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '学号 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生名称 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号 ',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `banji_types` int DEFAULT NULL COMMENT '班级 Search111 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `yonghu_uuid_number`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_id_number`, `sex_types`, `banji_types`, `yonghu_email`, `yonghu_delete`, `create_time`) VALUES
	(1, '1679361286341', '学生1', '123456', '学生名称1', 'upload/yonghu1.jpg', '17703786901', '410224199010102001', 2, 3, '1@qq.com', 1, '2023-03-21 01:14:46'),
	(2, '1679361286397', '学生2', '123456', '学生名称2', 'upload/yonghu2.jpg', '17703786902', '410224199010102002', 1, 1, '2@qq.com', 1, '2023-03-21 01:14:46'),
	(3, '1679361286375', '学生3', '123456', '学生名称3', 'upload/yonghu3.jpg', '17703786903', '410224199010102003', 2, 3, '3@qq.com', 1, '2023-03-21 01:14:46');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
