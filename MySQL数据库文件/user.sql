/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : methematicalmodeling

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2022-03-01 21:47:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `uemail` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usernickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usersex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userfaceaddress` varchar(255) DEFAULT NULL,
  `userlevel` varchar(5) DEFAULT NULL,
  `userfrom` varchar(255) DEFAULT NULL,
  `usersignature` varchar(255) DEFAULT NULL,
  `uloginid` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `upassword` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uonline` varchar(5) DEFAULT NULL,
  `urole` int DEFAULT NULL COMMENT '系统使用角色(0: 普通用户 1: 后台管理员)',
  `ustunum` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学生学号',
  `ucent` int DEFAULT NULL COMMENT '用户当前积分',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1933221828@qq.com', '雪山飞狐', '男', '2021-01-16', 'static/用户头像/0afe16d2-0b63-49c6-a694-a1a4631dcbd2.jpg', 'LV1', '广西北海', '限制其然，在知其所以然，便是求知', '317209', 'd020763a5cbd3cf62267e6264783ed51', '离线', '1', '3172090710213', '0');
INSERT INTO `user` VALUES ('2', '1933221828@qq.com', '封老师好', '男', '2021-01-16', 'static/用户头像/a8444047-373c-4511-9ee1-2660bb9e49e1.jpg', 'LV1', '湖南衡阳', '信科老师', 'thesoundofsilence', '26eb7676b573e469393cc1595ef9ba03', '离线', '2', null, '0');
