/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : methematicalmodeling

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2022-03-01 21:48:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for useroperation
-- ----------------------------
DROP TABLE IF EXISTS `useroperation`;
CREATE TABLE `useroperation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int DEFAULT NULL,
  `otherid` varchar(10) DEFAULT NULL,
  `odate` varchar(10) DEFAULT NULL,
  `operation` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2841 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of useroperation
-- ----------------------------
INSERT INTO `useroperation` VALUES ('302', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('325', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('326', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('327', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('2720', '1', 't:1', '2021-06-3', '阅读');
INSERT INTO `useroperation` VALUES ('2721', '1', 't:1', '2021-06-3', '评论');
INSERT INTO `useroperation` VALUES ('2722', '1', 't:1', '2021-06-3', '阅读');
INSERT INTO `useroperation` VALUES ('2723', '1', 't:1', '2021-06-3', '评论');
INSERT INTO `useroperation` VALUES ('2724', '1', 't:1', '2021-06-4', '阅读');
INSERT INTO `useroperation` VALUES ('2725', '1', '宣传视频:43', '2021-06-4', '阅读');
INSERT INTO `useroperation` VALUES ('2726', '1', '竞赛培训:4', '2021-06-4', '阅读');
INSERT INTO `useroperation` VALUES ('2727', '1', '试题论文:48', '2021-06-4', '阅读');
INSERT INTO `useroperation` VALUES ('2728', '1', '试题论文:48', '2021-06-4', '评论');
INSERT INTO `useroperation` VALUES ('2729', '1', '学术资讯:2', '2021-06-4', '阅读');
INSERT INTO `useroperation` VALUES ('2730', '1', '试题论文:48', '2021-06-4', '评论');
INSERT INTO `useroperation` VALUES ('2731', '1', '试题论文:48', '2021-06-4', '点赞');
INSERT INTO `useroperation` VALUES ('2732', '1', '试题论文:48', '2021-06-4', '评论');
INSERT INTO `useroperation` VALUES ('2733', '1', '试题论文:48', '2021-06-4', '评论');
INSERT INTO `useroperation` VALUES ('2734', '1', 'u:408', '2021-06-4', '评论');
INSERT INTO `useroperation` VALUES ('2735', '1', 't:1', '2021-06-7', '阅读');
INSERT INTO `useroperation` VALUES ('2736', '1', '试题论文:48', '2021-06-7', '阅读');
INSERT INTO `useroperation` VALUES ('2737', '1', 't:1', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2738', '1', 't:2', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2739', '1', 't:6', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2740', '1', 's:6', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2741', '1', 's:11', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2742', '1', 's:20', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2743', '1', 's:3', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2744', '1', 's:2', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2745', '1', 't:11', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2746', '1', 't:7', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2747', '1', 's:1', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2748', '1', 's:16', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2749', '1', '协会荣誉:31', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2750', '1', '协会荣誉:29', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2751', '1', '协会荣誉:30', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2752', '1', '协会荣誉:25', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2753', '1', '协会荣誉:26', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2754', '1', '竞赛成绩:25', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2755', '1', '宣传视频:45', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2756', '1', '学习资料:30', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2757', '1', '学术资讯:30', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2758', '1', '竞赛培训:30', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2759', '1', '社团活动:30', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2760', '1', '竞赛成绩:37', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2761', '1', '学术资讯:1', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2762', '1', 't:5', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2763', '1', 't:12', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2764', '1', 's:19', '2021-06-18', '阅读');
INSERT INTO `useroperation` VALUES ('2765', '1', 't:11', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2766', '1', 't:6', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2767', '1', 't:1', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2768', '1', 't:2', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2769', '1', 't:3', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2770', '1', 't:5', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2771', '1', 's:1', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2772', '1', 's:2', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2773', '1', 's:3', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2774', '1', 's:3', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2775', '1', 's:3', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2776', '1', 'u:414', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2777', '1', 's:1', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2778', '1', 's:1', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2779', '1', 's:4', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2780', '1', 's:4', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2781', '1', 's:5', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2782', '1', 's:5', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2783', '1', 's:16', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2784', '1', 's:6', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2785', '1', 's:6', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2786', '1', 's:7', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2787', '1', 's:7', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2788', '1', 's:8', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2789', '1', 's:8', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2790', '1', 's:11', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2791', '1', 's:11', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2792', '1', 's:13', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2793', '1', 's:13', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2794', '1', 's:10', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2795', '1', 's:15', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2796', '1', 't:2', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2797', '1', 't:1', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2798', '1', 't:1', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2799', '1', 't:1', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2800', '1', 't:1', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2801', '1', 't:1', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2802', '1', 's:1', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2803', '1', 's:1', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2804', '1', 's:1', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2805', '1', 't:1', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2806', '1', 's:3', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2807', '1', 's:20', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2808', '1', 's:12', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2809', '1', '协会荣誉:30', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2810', '1', '协会荣誉:30', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2811', '1', '协会荣誉:25', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2812', '1', '协会荣誉:26', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2813', '1', '协会荣誉:25', '2021-06-20', '评论');
INSERT INTO `useroperation` VALUES ('2814', '1', '竞赛成绩:32', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2815', '1', '试题论文:48', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2816', '1', '社团活动:52', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2817', '1', '竞赛成绩:37', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2818', '1', '学术资讯:1', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2819', '1', '学术资讯:2', '2021-06-20', '阅读');
INSERT INTO `useroperation` VALUES ('2820', '1', '学术资讯:1', '2021-08-14', '阅读');
INSERT INTO `useroperation` VALUES ('2821', '1', 't:1', '2021-08-21', '阅读');
INSERT INTO `useroperation` VALUES ('2822', '1', 'u:434', '2021-08-21', '评论');
INSERT INTO `useroperation` VALUES ('2823', '1', 'u:438', '2021-08-21', '评论');
INSERT INTO `useroperation` VALUES ('2824', '1', 'u:439', '2021-08-21', '评论');
INSERT INTO `useroperation` VALUES ('2825', '1', 't:2', '2021-08-21', '阅读');
INSERT INTO `useroperation` VALUES ('2826', '1', 'u:440', '2021-08-21', '评论');
INSERT INTO `useroperation` VALUES ('2827', '1', 'u:441', '2021-08-21', '评论');
INSERT INTO `useroperation` VALUES ('2828', '1', 'u:442', '2021-08-21', '评论');
INSERT INTO `useroperation` VALUES ('2829', '1', 'u:443', '2021-08-21', '评论');
INSERT INTO `useroperation` VALUES ('2830', '1', 'u:444', '2021-08-21', '评论');
INSERT INTO `useroperation` VALUES ('2831', '1', 'u:445', '2021-08-21', '评论');
INSERT INTO `useroperation` VALUES ('2832', '1', 'u:446', '2021-08-21', '评论');
INSERT INTO `useroperation` VALUES ('2833', '1', 'u:447', '2021-08-21', '评论');
INSERT INTO `useroperation` VALUES ('2834', '1', 'u:448', '2021-08-21', '评论');
INSERT INTO `useroperation` VALUES ('2835', '1', 'u:449', '2021-08-21', '评论');
INSERT INTO `useroperation` VALUES ('2836', '1', 'u:450', '2021-08-21', '评论');
INSERT INTO `useroperation` VALUES ('2837', '1', 'u:451', '2021-08-21', '评论');
INSERT INTO `useroperation` VALUES ('2838', '1', 't:1', '2021-08-21', '评论');
INSERT INTO `useroperation` VALUES ('2839', '1', 't:1', '2021-08-21', '评论');
INSERT INTO `useroperation` VALUES ('2840', '1', 't:1', '2021-08-21', '评论');
