/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : methematicalmodeling

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2022-03-01 21:47:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for userfeedback
-- ----------------------------
DROP TABLE IF EXISTS `userfeedback`;
CREATE TABLE `userfeedback` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `uloginid` varchar(255) DEFAULT NULL,
  `pdate` varchar(255) DEFAULT NULL,
  `pcontent` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `phandle` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userfeedback
-- ----------------------------
INSERT INTO `userfeedback` VALUES ('2', '317209', '2021-04-8', '111', '未处理');
INSERT INTO `userfeedback` VALUES ('5', '317209', '2021-04-9', '<p>加油</p>', '未处理');
INSERT INTO `userfeedback` VALUES ('6', '317209', '2021-06-4', '<p>这里有问题</p>', '未处理');
