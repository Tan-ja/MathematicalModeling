/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : methematicalmodeling

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2022-03-01 21:47:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for teaminfo
-- ----------------------------
DROP TABLE IF EXISTS `teaminfo`;
CREATE TABLE `teaminfo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '参赛人学号',
  `stunum` varchar(13) NOT NULL,
  `compeid` int NOT NULL COMMENT '赛事的编号',
  `capid` int NOT NULL COMMENT '队长的用户id',
  `pdate` date NOT NULL COMMENT '报名时间',
  `currentstatus` int NOT NULL COMMENT '报名进度',
  `mrole` int NOT NULL COMMENT '成员担任的角色(0:队长 1:队友)',
  `presult` varchar(255) DEFAULT NULL COMMENT '审核不通过时的备注或审核通过时的报名号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teaminfo
-- ----------------------------
INSERT INTO `teaminfo` VALUES ('22', '3172090710213', '9', '1', '2021-06-04', '3', '0', null);
