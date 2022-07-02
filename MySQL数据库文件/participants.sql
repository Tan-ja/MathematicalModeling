/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : methematicalmodeling

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2022-03-01 21:46:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for participants
-- ----------------------------
DROP TABLE IF EXISTS `participants`;
CREATE TABLE `participants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) NOT NULL,
  `pstunum` varchar(13) NOT NULL,
  `pgrade` varchar(50) NOT NULL,
  `pdormitoryno` varchar(10) NOT NULL,
  `pcampus` varchar(10) NOT NULL,
  `pnativeplace` varchar(50) NOT NULL,
  `pidnumber` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pqqno` varchar(10) NOT NULL,
  `pmobilephoneno` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pattendeddesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pacademy` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of participants
-- ----------------------------
INSERT INTO `participants` VALUES ('17', '谭家伟', '3172090710213', '信科17-2班', '7A309', '雁山校区', '广西北海', '450521199606178756', '1933221828', '18277971822', '1933221828@qq.com', '有', '理学院');
