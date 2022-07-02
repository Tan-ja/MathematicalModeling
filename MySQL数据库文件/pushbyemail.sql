/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : methematicalmodeling

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2022-03-01 21:47:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pushbyemail
-- ----------------------------
DROP TABLE IF EXISTS `pushbyemail`;
CREATE TABLE `pushbyemail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int DEFAULT NULL,
  `uemail` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pushbyemail
-- ----------------------------
INSERT INTO `pushbyemail` VALUES ('1', '1', '1933221828@qq.com');
