/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : methematicalmodeling

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2022-03-01 21:46:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for matchinfo
-- ----------------------------
DROP TABLE IF EXISTS `matchinfo`;
CREATE TABLE `matchinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mdate` date NOT NULL,
  `mtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mdesc` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `maxn` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of matchinfo
-- ----------------------------
INSERT INTO `matchinfo` VALUES ('9', '2021-05-14', '关于举办桂林理工大学第十七届数学建模竞赛暨2021年全国大学 生数学建模竞赛选拔赛的通知', '<p class=\"ql-align-center\"><strong>关于举办桂林理工大学第十七届数学建模竞赛暨2021年全国大学</strong></p><p class=\"ql-align-center\"><strong>生数学建模竞赛选拔赛的通知</strong></p><p><strong style=\"color: rgb(0, 0, 0);\">校属各单位、各有关部门：</strong></p><p>	<span style=\"color: rgb(0, 0, 0);\">为了激励我校学生学习数学的积极性，提高学生运用数学理论和方法，利用文献、计算机等工具分析和解决实际问题的能力，鼓励学生踊跃参加课外科技活动，开拓知识面、培养创新精神，推动大学数学教学改革，促进基础学科的发展，同时选拔优秀学生参加2021年全国大学生数学建模竞赛。经研究，决定举办桂林理工</span>大学第十七届数<span style=\"color: rgb(0, 0, 0);\">学建模竞赛暨2021年全国大学生数学建模竞赛选拔赛，同时成立竞赛组委会及竞赛专家组。现将有关事项通知如下：</span></p><p><strong style=\"color: rgb(0, 0, 0);\">一、承办单位</strong></p><p>	<span style=\"color: rgb(0, 0, 0);\">教务处、团委、理学院</span></p><p><strong style=\"color: rgb(0, 0, 0);\">二、成立竞赛组委会和竞赛专家组。</strong></p><p>（一）桂林理工大学第十七届数学建模竞赛组委会成员名单</p><p>组&nbsp;&nbsp;长：梁福沛</p><p>副组长：游少鸿、李雨、肖剑荣</p><p>成&nbsp;&nbsp;员：李明、唐国强、饶蠡、钟立军、张徽琳</p><p>（二）桂林理工大学第十七届数学建模竞赛专家组成员名单</p><p><span style=\"color: rgb(0, 0, 0);\">组&nbsp;长：李明</span></p><p><span style=\"color: rgb(0, 0, 0);\">成&nbsp;员：蒋远营、封全喜、石磊、谢海、蒋宜蓉、陈华舟、乔涵丽、王彬、陈安、丁少玲</span></p><p><span style=\"color: rgb(0, 0, 0);\">秘&nbsp;书：封全喜</span></p><p><strong style=\"color: rgb(0, 0, 0);\">三、参赛对象及其形式</strong></p><p>	<span style=\"color: rgb(0, 0, 0);\">我校在校全日制本科大学生均可报名参赛，参赛选手需具有一定的数学基础、计算机编程能力和数学建模能力。</span></p><p>	<span style=\"color: rgb(0, 0, 0);\">考虑到所有参赛同学的基础不一，报名完成后，我们将于5月份开始数学建模培训，校级数学建模竞赛拟定于6月10日-14日举行。</span></p><p><strong style=\"color: rgb(0, 0, 0);\">四、报名安排</strong></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0);\">（一）报名时间</span></p><p class=\"ql-align-justify\">	<span style=\"color: rgb(0, 0, 0);\">4月12日~4月30日 20：00</span></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0);\">（二）报名方式</span></p><p>	</p><p><span style=\"color: rgb(0, 0, 0);\">1.&nbsp;请参赛学生点击报名链接或者 </span>扫描下方二维码进行报名</p><p>	报名链接:&nbsp;<a href=\"https://www.wjx.top/vm/wXrxUhP.aspx\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 0, 255);\"><u>https://www.wjx.top/vm/wXrxUhP.aspx</u></a></p><p>	报名二维码：</p><p>	<img src=\"http://localhost:8888/static/用户头像/da503775-c594-415a-ad5d-b1324c1417bc.png\" width=\"264\" style=\"\"></p><p>	</p><p>2. 报名后请及时入群“2021年桂工数模竞赛选拔群”：<span style=\"background-color: rgb(240, 240, 240); color: rgb(0, 0, 0);\">749225026</span>，以便及时获得通知。 </p><p>	<strong>注意，加群时请注明 学院+专业+姓名</strong>&nbsp;</p><p>	<img src=\"http://localhost:8888/static/用户头像/2c11c551-5f2e-4aba-84f2-7c2fc6a7a5ec.png\"></p><p><strong style=\"color: rgb(0, 0, 0);\">五、竞赛内容</strong></p><p>	<span style=\"color: rgb(0, 0, 0);\">本次竞赛以数学建模真题的形式，从A、B题中任选一题，在指定时间之内完成论文。论文格式请按“桂林理工大学大学生数学建模竞赛论文格式规范”的要求编辑排版。</span></p><p>	<span style=\"color: rgb(0, 0, 0);\">竞赛时间：6月10日&nbsp;8:00—6月14日8:00</span></p><p>	<span style=\"color: rgb(0, 0, 0);\">竞赛地点：在线提交论文，将论文提交到Email: 2968736113@qq.com</span></p><p>	<span style=\"color: rgb(0, 0, 0);\">竞赛方式：以三人一组为单位参赛，在指定时间之内完成论文。</span></p><p>	<span style=\"color: rgb(0, 0, 0);\">说明：本次校赛是为了选拔参加国赛队员，数模培训也是考核内容之一。</span></p><p><strong style=\"color: rgb(0, 0, 0);\">六、奖项设置</strong></p><p><strong style=\"color: rgb(0, 0, 0);\">&nbsp;&nbsp;&nbsp;</strong><span style=\"color: rgb(0, 0, 0);\">本次比赛将按照参赛人数的5%、15%、30%设立一等奖、二等奖和三等奖。</span></p><p>	<span style=\"color: rgb(0, 0, 0);\">理学院将组织专家组成员对参赛学生进行考核，并从中选拔优秀学生进行组队，代表学校参加2021年全国大学生数学建模竞赛。</span></p><p><strong style=\"color: rgb(0, 0, 0);\">七、其它事项</strong></p><p>	<span style=\"color: rgb(0, 0, 0);\">为便于开展相关工作，使赛事顺利进行，请参赛同学注意适时登陆桂林理工大学数学建模协会网站（网址：http://www.glutsm.com/）、数学建模公众号“数学森林”及全国大学生数学建模竞赛网站（网址：http://www.mcm.edu.cn），随时了解数学建模赛事动态。</span></p><p>	</p><p>	<span style=\"color: rgb(0, 0, 0);\">&nbsp;&nbsp;桂林理工大学</span></p><p><span style=\"color: rgb(0, 0, 0);\">二O二一年四月一十二日</span></p>', '3');
