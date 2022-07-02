/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : methematicalmodeling

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2022-03-01 21:46:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for famousm
-- ----------------------------
DROP TABLE IF EXISTS `famousm`;
CREATE TABLE `famousm` (
  `ufid` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `ufcontent` varchar(255) DEFAULT NULL,
  `ufaceaddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ufid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of famousm
-- ----------------------------
INSERT INTO `famousm` VALUES ('1', '1', '李亮', '你因数模而成长，数模因你而不同', 'static/student/348c865d-5e4e-44c0-a565-91d3d0cf7293.png');
INSERT INTO `famousm` VALUES ('2', '2', '李春勇', '2009年加入数学建模协会，历任组织部干事、团支书、终身名誉会长。会徽会旗设计者、会歌创作者、杂志社和建模基地创办者，先后三次组织协会改革，引领社团改革浪潮，为协会发展做出卓越贡献。荣获协会“特别贡献奖”。', 'static/student/1093e291-3d5c-4e02-9ef1-f2233cbd2717.png');
INSERT INTO `famousm` VALUES ('3', '3', '李有余', '2010年加入数学建模协会，历任学习部干事、信息部部长、荣誉顾问。第一任信息部部长，协会视频开创者，参与了协会第一次、第二次和第三次改革，推动了协会网络信息的迅速发展。', 'static/student/4869f01d-bf83-472e-a44c-86e4bac51bad.png');
INSERT INTO `famousm` VALUES ('4', '4', '黄其升', '2011年加入数学建模协会，历任学习部干事、会长、荣誉顾问。主要参与了协会第二次和第三次改革，有力推进协会改革和发展。任期内带领协会荣获“广西优秀大学生社团”。', 'static/student/969466d4-b3e0-40f6-a01e-d3b19c799391.png');
INSERT INTO `famousm` VALUES ('5', '5', '覃丽燕', '2011年加入数学建模协会，历任信息部干事、团支书。致力于协会团队建设，推动了协会融创文化发展。任期内带领协会荣获“优秀团支部”。', 'static/student/d93b19ad-a850-4c98-b2a1-5bdf8e189c88.png');
INSERT INTO `famousm` VALUES ('6', '6', '周强', '2012年加入数学建模协会，历任学习部干事、会长、荣誉顾问。对协会宣传方式、活动内容进行极大了的拓展。任期内带领协会荣获“广西十大明星社团”。', 'static/student/89b59dfa-47e6-4179-91d6-437263ceda87.png');
INSERT INTO `famousm` VALUES ('7', '7', '方肇星', '2013年加入数学建模协会，历任策划部干事、会长、荣誉顾问。任期逢协会十周年，带领协会欢度十周年庆典，同年带领协会荣获“四星级社团”，名列校学术社团榜首。', 'static/student/0fbe9841-5d07-4d4f-99e0-e83232e1cae4.png');
INSERT INTO `famousm` VALUES ('8', '8', '刘旭阳', '2014年加入数学建模协会，历任学习部干事、会长、荣誉顾问，主要参与了协会特殊时期的初步改革，思考与引导协会发展的长期战略方向。', 'static/student/7f7ca5ec-ed4f-4d53-8244-c61f4e872dec.png');
