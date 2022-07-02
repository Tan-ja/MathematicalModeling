/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : methematicalmodeling

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2022-03-01 21:46:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attachment
-- ----------------------------
DROP TABLE IF EXISTS `attachment`;
CREATE TABLE `attachment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `objid` int DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `acategory` int DEFAULT NULL COMMENT '附件所属对象(0：文章;1：竞赛;2：论文)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attachment
-- ----------------------------
INSERT INTO `attachment` VALUES ('7', '20', 'static/用户头像/8ad6e206-5bba-4dfc-aff5-f3a3e2b167d0.doc', '2');
