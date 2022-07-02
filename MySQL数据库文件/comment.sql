/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : methematicalmodeling

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2022-03-01 21:46:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comid` int NOT NULL AUTO_INCREMENT,
  `userid` int DEFAULT NULL,
  `usernickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userlevel` varchar(5) DEFAULT NULL,
  `comdate` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `toid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `comment` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `userfaceaddress` varchar(255) DEFAULT NULL,
  `approvalnum` int DEFAULT NULL,
  `superid` int DEFAULT NULL,
  `othernickname` varchar(50) DEFAULT NULL,
  `ouserid` int DEFAULT NULL,
  PRIMARY KEY (`comid`)
) ENGINE=InnoDB AUTO_INCREMENT=456 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('455', '1', '雪山飞狐', 'LV1', '2021-08-21', 't:1', '<p>我评论了</p>', 'static/用户头像/0afe16d2-0b63-49c6-a694-a1a4631dcbd2.jpg', '0', null, '', null);
