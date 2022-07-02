/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : methematicalmodeling

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2022-03-01 21:47:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for thesis
-- ----------------------------
DROP TABLE IF EXISTS `thesis`;
CREATE TABLE `thesis` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `thedate` varchar(10) NOT NULL COMMENT '论文提交时间',
  `teamid` int NOT NULL COMMENT '所属参赛队伍编号',
  `matchid` int NOT NULL COMMENT '所属竞赛信息编号',
  `thecontent` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '论文内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thesis
-- ----------------------------
INSERT INTO `thesis` VALUES ('21', '2021-6-4', '1', '9', '<p>aaaa</p>');
