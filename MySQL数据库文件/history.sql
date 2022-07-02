/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : methematicalmodeling

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2022-03-01 21:46:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timey` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `timem` varchar(5) DEFAULT NULL,
  `event` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES ('2', '2016', '6', '举办桂林理工大学第十二届数学建模竞赛暨2016年全国大学生 数学建模竞赛选拔赛\r\n');
INSERT INTO `history` VALUES ('3', '2015', '4', '举办桂林理工大学第十一届数学建模竞赛暨2015年全国大学生数学建模竞赛选拔赛\r\n');
INSERT INTO `history` VALUES ('4', '2014', '12', '成功举办数学建模协会第六届数独比赛\r\n');
INSERT INTO `history` VALUES ('5', '2012', '10', '广西高校数学建模协会联盟组建工作筹备组召开了第一次网络会议，会议由筹备组组长李亮主持。\r\n');
INSERT INTO `history` VALUES ('6', '2011', '10', '桂林理工大学数学建模协会网站正式上线。网站由名誉会长李亮建设并维护，是全校第一个学生组织独立网站。\r\n');
INSERT INTO `history` VALUES ('7', '2010', '11', '举行第一次重大内部改革，推动我会全面改革发展浪潮。\r\n');
INSERT INTO `history` VALUES ('8', '2009', '10', '数学建模协会升格为首批校级社团\r\n');
INSERT INTO `history` VALUES ('9', '2007', '11', '数学建模协会主体搬迁至雁山校区\r\n');
INSERT INTO `history` VALUES ('10', '2005', '11', '数学建模协会在屏风校区正式注册成立\r\n');
INSERT INTO `history` VALUES ('11', '2003', '3', '数学爱好者团体出现，即数学建模协会前身。该团体为日后数学建模协会成立及发展奠定了坚实的兴趣与学术基础。\r\n');
INSERT INTO `history` VALUES ('12', '2012', '8', '桂林理工大学数学杂志社、桂林理工大学数学建模基地成立并进入试运营阶段。\r\n');
INSERT INTO `history` VALUES ('13', '2012', '8', '完成了第三次改革，为协会日后稳定快速发展奠定了最坚实的基础。\r\n');
INSERT INTO `history` VALUES ('14', '2012', '5', '在我校成功主办“桂林地区数学建模协会第一次合作交流会”。');
INSERT INTO `history` VALUES ('15', '2012', '5', '更换会徽、会旗、工作牌等重大协会标志。会徽、会旗由名誉会长李亮设计，工作牌由第七任会长李春勇设计。\r\n');
INSERT INTO `history` VALUES ('16', '2011', '10', '我会联合100多所高校发起成立全国高校数学建模协会联盟，成为第一发起单位\r\n');
INSERT INTO `history` VALUES ('17', '2011', '8', '增设信息部，由李有余担任第一任部长\r\n');
INSERT INTO `history` VALUES ('18', '2011', '8', '进行第二次改革，进一步完善组织结构\r\n');
INSERT INTO `history` VALUES ('19', '2010', '8', '时任团支书李亮第一次完整编修协会章程\r\n');
INSERT INTO `history` VALUES ('20', '2010', '4', '举办第一届“夺宝奇兵”活动。该活动一举成为我会最具代表性的精品活动。\r\n');
INSERT INTO `history` VALUES ('21', '2010', '4', '承办第六届桂林理工大学数学竞赛暨2010年全国数学建模竞赛选拔赛\r\n');
INSERT INTO `history` VALUES ('22', '2009', '6', '承办学校第五届数学竞赛暨2009年全国数学建模竞赛选拔赛。\r\n');
INSERT INTO `history` VALUES ('26', '2017', '9', '新版2.0网站全新上线发布');
