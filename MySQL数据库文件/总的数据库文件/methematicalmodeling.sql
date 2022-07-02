/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : methematicalmodeling

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2021-05-21 00:00:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for academicdynamic
-- ----------------------------
DROP TABLE IF EXISTS `academicdynamic`;
CREATE TABLE `academicdynamic` (
  `adid` int NOT NULL AUTO_INCREMENT,
  `acategory` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `aconsider` int DEFAULT NULL,
  `acomment` int DEFAULT NULL,
  `areaders` int DEFAULT NULL,
  `atitle` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `afrom` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `acontent` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `afaceaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `acontentdesc` mediumtext,
  PRIMARY KEY (`adid`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of academicdynamic
-- ----------------------------
INSERT INTO `academicdynamic` VALUES ('1', '学术资讯', '2018-02-11', '0', '111', '959', '中国高等教育学会发布《中国高校创新人才培养暨学科竞赛评估结果》', 'CSEE', '2017年12月14日，中国高等教育学会《高校竞赛评估与管理体系研究》专家工作组在杭州预发布《中国高校创新人才培养暨学科竞赛评估结果》。', 'http://www.glutsm.com/public/thumb/thumb09.jpg', '<p>2017年12月14日，中国高等教育学会《高校竞赛评估与管理体系研究》专家工作组在杭州预发布《中国高校创新人才培养暨学科竞赛评估结果》。学科竞赛评估遵循公平、公正、公开，引导性，可操作性，分类和成果导向原则，以教育部2007年、2008年和2010年发布的大学生竞赛资助项目为主要依据，增加“互联网+”和“挑战杯“竞赛，以及影响力广泛且具有国际性的ACM-ICPC国际大学生程序设计竞赛，共筛选了18个竞赛项目纳入排行。另外，还在高职排行榜中选入“高职技能大赛”项目。通过多轮专家背对背意见征询，采用层次分析法确定评估模型，模型包括两个方面：竞赛贡献和组织贡献，从“竞赛项目等级”“竞赛项目形式”“竞赛项目历史”和“竞赛项目奖项数量”四个维度对竞赛贡献进行综合评价；从“竞赛秘书处”“竞赛承办单位”“优秀组织单位”和“优秀指导教师”等多方面对组织贡献进行综合评价。在后续的竞赛评估中，还将考虑学科竞赛拓展、延伸的内容，包括高校学科竞赛类教学成果奖、学科竞赛类教学改革论文等。</p><p>&nbsp;&nbsp;&nbsp;本次纳入排行的竞赛清单如下：</p><p><br></p><p class=\"ql-align-center\">表1：本次评估纳入的竞赛名称一览表</p><p class=\"ql-align-center\"><strong>序号</strong></p><p class=\"ql-align-center\"><strong>竞赛名称</strong></p><p class=\"ql-align-center\"><strong>1</strong></p><p class=\"ql-align-center\">中国“互联网+”大学生创新创业大赛</p><p class=\"ql-align-center\"><strong>2</strong></p><p class=\"ql-align-center\">“挑战杯”全国大学生课外学术科技作品竞赛</p><p class=\"ql-align-center\"><strong>3</strong></p><p class=\"ql-align-center\">“挑战杯”中国大学生创业计划大赛</p><p class=\"ql-align-center\"><strong>4</strong></p><p class=\"ql-align-center\">ACM-ICPC国际大学生程序设计竞赛</p><p class=\"ql-align-center\"><strong>5</strong></p><p class=\"ql-align-center\">全国大学生数学建模竞赛</p><p class=\"ql-align-center\"><strong>6</strong></p><p class=\"ql-align-center\">全国大学生电子设计竞赛</p><p class=\"ql-align-center\"><strong>7</strong></p><p class=\"ql-align-center\">全国大学生化学实验邀请赛</p><p class=\"ql-align-center\"><strong>8</strong></p><p class=\"ql-align-center\">全国高等医学院校大学生临床技能竞赛</p><p class=\"ql-align-center\"><strong>9</strong></p><p class=\"ql-align-center\">全国大学生机械创新设计大赛</p><p class=\"ql-align-center\"><strong>10</strong></p><p class=\"ql-align-center\">全国大学生结构设计竞赛</p><p class=\"ql-align-center\"><strong>11</strong></p><p class=\"ql-align-center\">全国大学生广告艺术大赛</p><p class=\"ql-align-center\"><strong>12</strong></p><p class=\"ql-align-center\">全国大学生智能汽车竞赛</p><p class=\"ql-align-center\"><strong>13</strong></p><p class=\"ql-align-center\">全国大学生交通科技大赛</p><p class=\"ql-align-center\"><strong>14</strong></p><p class=\"ql-align-center\">全国大学生电子商务“创新、创意及创业”挑战赛</p><p class=\"ql-align-center\"><strong>15</strong></p><p class=\"ql-align-center\">全国大学生节能减排社会实践与科技竞赛</p><p class=\"ql-align-center\"><strong>16</strong></p><p class=\"ql-align-center\">全国大学生工程训练综合能力竞赛</p><p class=\"ql-align-center\"><strong>17</strong></p><p class=\"ql-align-center\">全国大学生物流设计大赛</p><p class=\"ql-align-center\"><strong>18</strong></p><p class=\"ql-align-center\">“外研社杯”全国英语演讲大赛</p><p class=\"ql-align-center\"><strong>19</strong></p><p class=\"ql-align-center\">全国职业院校技能大赛（只纳入高职排行）</p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;按照本科、高职和省份分类共预发布12个排行榜榜单，分别为：</span><strong style=\"color: rgb(51, 51, 51);\">1）本科：</strong><span style=\"color: rgb(51, 51, 51);\">2012-2016年全国普通高校竞赛评估结果（本科），预发布TOP300；2016年、2015年和2014年全国普通高校竞赛评估结果（本科），各预发布TOP100；</span><strong style=\"color: rgb(51, 51, 51);\">2）高职：</strong><span style=\"color: rgb(51, 51, 51);\">2012-2016年全国普通高校竞赛评估结果（高职），预发布TOP300；2016年、2015年和2014年全国普通高校竞赛评估结果（高职），各预发布TOP100；</span><strong style=\"color: rgb(51, 51, 51);\">3）省份：</strong><span style=\"color: rgb(51, 51, 51);\">2012-2016年全国普通高校竞赛评估结果（省份），预发布TOP15；2016年、2015年和2014年全国普通高校竞赛评估结果（省份），各预发布TOP10。</span></p><p>&nbsp;&nbsp;&nbsp;&nbsp;本次公布的排行榜数据统计口径为2012年年初到2016年年末。后续，项目组将在近期正式发布《中国高校学科竞赛白皮书》和本次预发布的12个榜单。同时还将发布教师竞赛排行榜和2017年学科竞赛高校排行榜。</p><p><br></p><p><br></p><p>名单下载：</p><p><a href=\"http://www.csee.engineer/index.php?s=/Index/detail/id/149.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">http://www.csee.engineer/index.php?s=/Index/detail/id/149.html</a></p>');
INSERT INTO `academicdynamic` VALUES ('2', '学术资讯', '2017-10-21', '1', '5', '1547', ' \r\n中国数学会2017年学术年会在湖南湘潭召开', '中国新闻网', '10月21日，中国数学会2017年学术年会在湖南省湘潭市举行，13位中科院院士、近800位中国数学界精英参会。', 'http://www.glutsm.com/public/thumb/thumb03.jpg', '<p class=\"ql-align-center\">美图跑丢了(&gt;_&lt;)</p><p class=\"ql-align-center\">21日，中国数学会2017年学术年会在湖南省湘潭市举行。</p><p class=\"ql-align-center\"><br></p><p>&nbsp;&nbsp;&nbsp;中新网长沙10月21日电 (王昊昊 王成奇 马志远 李向阳)21日，中国数学会2017年学术年会在湖南省湘潭市举行，13位中科院院士、近800位中国数学界精英参会。</p><p>&nbsp;&nbsp;&nbsp;据悉，会议将持续至23日。期间，中科院院士周向宇等4名数学家将作大会报告，百余位数学界专家将在代数与数论、几何与拓扑、常微动力系统等十个领域作分组报告。</p><p>&nbsp;&nbsp;&nbsp;中科院院士、中国数学会理事长袁亚湘回顾了中国数学会过去一年开展的“第一届金砖五国数学会议”等一系列与国际接轨的活动。他表示，这些活动积极配合国家整体外交策略，促进了民间外交和学术交流。</p><p><br></p><p><br></p><p class=\"ql-align-center\">美图跑丢了(&gt;_&lt;)</p><p class=\"ql-align-center\">中南大学教授侯振挺、南开大学陈省身数学研究所教授龙以明获第十三届华罗庚数学奖。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;中国工业与应用数学学会理事长张平文说，中国正处于从大国过渡到强国的重要时期，学会将积极开拓国际视野，为中国数学的发展创造更佳机遇。</p><p>&nbsp;&nbsp;&nbsp;中科院院士杨乐当天下午作了题为“学好数学，走上研究之路”的科普讲座。他认为，远大的理想、对数学的浓厚兴趣、执着的追求以及长期的努力是学好数学必不可少的四大条件。他通过引用勒贝格积分等原理分析说，建立新学理、解决著名难题、化腐朽为新奇是在数学上作出重要成就的三种可行之路。</p><p>&nbsp;&nbsp;&nbsp;湖南省政府副省长向力力向年会的召开致贺信。他表示，近年来湖南高度重视数学科研工作，积极培养学科人才，在推进数学教育改革等方面取得了一定成绩。</p><p>&nbsp;&nbsp;&nbsp;年会颁发了中国数学会第十三届华罗庚数学奖、第十六届陈省身数学奖和第十三届钟家庆数学奖。中南大学教授侯振挺、南开大学陈省身数学研究所教授龙以明获第十三届华罗庚数学奖；中科院数学与系统科学研究院研究员戴彧虹、北京大学教授朱小华获第十六届陈省身数学奖；樊玉伟等获第十三届钟家庆数学奖优秀博士论文奖。</p><p>&nbsp;&nbsp;&nbsp;年会由中国数学会主办，湘潭大学承办。</p>');
INSERT INTO `academicdynamic` VALUES ('3', '学术资讯', '2017-10-21', '0', '0', '818', '华罗庚数学奖、陈省身数学奖、钟家庆数学奖揭晓', '中青在线', '中国数学会今天揭晓了第十三届华罗庚数学奖、第十六届陈省身数学奖和第十三届钟家庆数学奖的获奖名单。中南大学教授侯振挺及南开大学陈省身数学研究所教授、中国科学院院士龙以明荣获华罗庚', 'http://www.glutsm.com/public/thumb/thumb05.jpg', '<p>中青在线北京10月21日电（中国青年报·中青在线记者 张国） 中国数学会今天揭晓了第十三届华罗庚数学奖、第十六届陈省身数学奖和第十三届钟家庆数学奖的获奖名单。</p><p>&nbsp;&nbsp;&nbsp;其中，中南大学教授侯振挺及南开大学陈省身数学研究所教授、中国科学院院士龙以明荣获华罗庚数学奖；中国科学院数学与系统科学研究院研究员戴彧虹、北京大学数学科学学院教授朱小华荣获陈省身数学奖。</p><p>&nbsp;&nbsp;&nbsp;今年获得钟家庆数学奖的分别是美国斯坦福大学的樊玉伟、首都师范大学的张蕊、西南财经大学和美国密西根大学的周岭、浙江大学的周青龙等4名博士生。</p><p>&nbsp;&nbsp;&nbsp;华罗庚数学奖设立于1992年，奖励范围为在数学领域做出杰出学术成就的我国数学家，每届不超过2人，每人奖金为10万元人民币。“陈省身数学奖”设立于1986年，奖励范围为在数学领域做出突出成果的我国中青年数学家，每届2人，每人奖金为10万元人民币。钟家庆数学奖设立于1988年，表彰与奖励最优秀的数学专业的博士研究生。</p>');
INSERT INTO `academicdynamic` VALUES ('4', '竞赛培训', '2019-03-22', '1', '0', '729', '关于举办桂林理工大学第十五届数学建模竞赛暨2019年全国大学 生数学建模竞赛选拔赛的通知', 'GLUTSM', '关于举办桂林理工大学第十五届数学建模竞赛暨2019年全国大学 生数学建模竞赛选拔赛的通知', 'http://www.glutsm.com/public/thumb/thumb10.jpg', '<p><strong>2019年全国大学生数学建模竞赛校内选拔赛</strong></p><p>	为了激励我校学生学习数学的积极性，提高学生运用数学理论和方法，利用文献、计算机等工具分析和解决实际问题的能力，鼓励学生踊跃参加课外科技活动，开拓知识面、培养创新精神，推动大学数学教学改革，促进基础学科的发展，同时选拔优秀学生参加2019年全国大学生数学建模竞赛。经研究，决定举办桂林理工大学第十五届数学建模竞赛暨2019年全国大学生数学建模竞赛选拔赛，同时成立竞赛组委会及竞赛专家组。现将有关事项通知如下：</p><p><br></p><p><br></p><p>一、竞赛信息</p><p><strong>竞赛时间：</strong>2019年4月12日19：00~21：30</p><p><strong>竞赛级别：</strong>校级</p><p><strong>参赛对象：</strong>桂林理工大学在校全日制本科大学生（以个人形式参赛）</p><p><strong>承办单位：</strong>桂林理工大学教务处、理学院</p><p><strong>协办单位：</strong>桂林理工大学数学建模协会</p><p><br></p><p>成立竞赛组委会和竞赛专家组：</p><p>（一）桂林理工大学第十五届数学建模竞赛组委会成员名单</p><p><strong>组长：</strong>梁福沛</p><p><strong>副组长：</strong>曾鸿鹄、肖剑荣</p><p><strong>成员：</strong>刘铮、唐国强、孙巍、杨剑、张徽琳</p><p>（二）桂林理工大学第十五届数学建模竞赛专家组成员名单</p><p><strong>组长：</strong>唐国强</p><p><strong>成员：</strong>封全喜、谢&nbsp;海、张浩敏、张琼芬、乔涵丽、王 彬、陈安</p><p><strong>秘书：</strong>封全喜</p><p><br></p><p><br></p><p>二、报名时间</p><p><strong>2019年3月25日早上8：00~4月1日晚上21：00</strong></p><p><br></p><p><br></p><p>三、报名方式</p><p><strong>报名方式：</strong></p><p>1、关注“<strong>桂工数模</strong>”微信公众号回复“<strong>报名</strong>”获取报名链接</p><p>2、点击“<strong>桂工数模</strong>”公众号下方菜单“<strong>报名</strong>”→“<strong>校内赛</strong>”</p><p>3、3月26日（周二）于一号食堂旁、3月27日（周三）于二号食堂旁设点宣传，可现场咨询报名</p><p><br></p><p><strong>注意事项</strong>：</p><p>提交报名信息后请<strong>加入“19年桂工数模校选赛”QQ群：716753549（加群请备注“学号＋专业班级＋姓名）</strong>，后期培训及竞赛相关信息会在群里发布。</p><p><br></p><p><br></p><p>四、竞赛内容</p><p><strong>1、竞赛题目：</strong>竞赛题目以考试试卷形式呈现，内容包括高等数学、计算机编程、数学建模等相关知识。</p><p><strong>2、答卷格式：</strong>以考试试卷形式完成。</p><p><br></p><p><br></p><p>五、竞赛时间</p><p><strong>竞赛时间：</strong>4月12日晚上19:00---21:30</p><p><strong>竞赛地点：</strong>（具体比赛地点另行通知）</p><p><strong>竞赛方式：</strong>参赛学生于4月12日携带参赛文具等到指定教室参加竞赛，竞赛最终以笔试形式完成，150分钟。</p><p><br></p><p><br></p><p>六、奖项设置</p><p>本次比赛将按照参赛人数的<strong>5%、10%、20%</strong>设立<strong>一等奖、二等奖和三等奖</strong>。获奖选手由学校颁发荣誉证书。</p><p>理学院将组织专家组成员对获奖学生进行数学建模培训，并从中选拔优秀学生进行组队，<strong>代表学校参加2019年全国大学生数学建模竞赛。</strong></p><p><br></p><p><br></p><p>七、其他事项</p><p>为便于开展相关工作，使赛事顺利进行，请参赛同学注意适时登陆桂林理工大学数学建模协会网站（网址：<strong>http://www.glutsm.com/</strong>）及全国大学生数学建模竞赛网站（网址：<strong>http://www.mcm.edu.cn</strong>），随时了解数学建模赛事动态。</p><p><br></p><p><br></p><p><br></p><p>美图跑丢了(&gt;_&lt;)</p><p>桂工数模</p><p><br></p><p><br></p><p>一起分享数学的点滴</p><p><br></p><p><br></p><p><strong>微信公众号ID：glutsm</strong></p>');
INSERT INTO `academicdynamic` VALUES ('5', '竞赛培训', '2019-03-20', '1', '0', '812', '第七届“泰迪杯”数据挖掘挑战赛报名开启', 'GLUTSM', '第七届“泰迪杯”数据挖掘挑战赛报名开启', 'http://www.glutsm.com/upload/2019-03-20/thumb_67f821a85c97ea6f96304d765432b6de.jpeg', '<p><strong style=\"color: rgb(95, 156, 239);\">第七届“泰迪杯”</strong>数据挖掘挑战赛即将来袭！各位小可爱们有没有做好参赛的准备呢?</p><p><br></p><p><br></p><p><img src=\"http://txt6.book118.com/2017/0116/book84320/84319301.jpg\"></p><p><br></p><p><br></p><p class=\"ql-align-center\"><strong>大赛简介</strong></p><p><br></p><p>泰迪杯”全国数据挖掘挑战赛（以下简称泰迪杯）是由全国大学生<strong style=\"color: rgb(95, 156, 239);\">数学建模</strong>竞赛组织委员会主办， 广州泰迪智能科技有限公司承办，广东省工业与应用数学学会、&nbsp;华南师范大学协办的面向全国在校研究生和大学生的群众性科技活动，目的在于激励学生学习<strong style=\"color: rgb(95, 156, 239);\">数据挖掘</strong>的积极性，提高学生利用<strong style=\"color: rgb(95, 156, 239);\">数据分析</strong>方法解决实际问题的综合能力，鼓励广大学生踊跃参加课外科技活动，开拓知识面，培养<strong style=\"color: rgb(95, 156, 239);\">创造精神及合作意识</strong>，推动数据挖掘技术在高校的推广和应用。</p><p><br></p><p><br></p><p class=\"ql-align-center\"><strong>比赛安排</strong></p><p><br></p><p>第七届挑战赛时间安排如下：</p><p>报名起讫时间：<strong style=\"color: rgb(95, 156, 239);\">2019 年 3 月 16 日—4 月 12 日</strong></p><p>挑战赛时间：2019 年 4 月 13 日—26 日</p><p>提交论文截止时间：2019 年 4 月 26 日</p><p>结果测试时间：2019 年 4 月 27 日 9:00—4 月 28 日 9:00</p><p>视频答辩时间：2019 年 6 月 1 日</p><p>成绩公布时间：2019 年 6 月 11 日</p><p>颁奖时间：2019 年 7 或 8 月（具体日期待定）</p><p><br></p><p class=\"ql-align-center\"><strong>比赛报名</strong></p><p><br></p><p>挑战赛收取报名费&nbsp;<strong style=\"color: rgb(95, 156, 239);\">200 元/队</strong></p><p>报名方式：关注微信公众号“<strong style=\"color: rgb(95, 156, 239);\">桂工数模</strong>”（扫描底部二维码即可关注），回复关键字“<strong style=\"color: rgb(95, 156, 239);\">泰迪杯</strong>”即可获取报名链接。</p><p><br></p><p><br></p><p><br></p><p class=\"ql-align-center\"><strong>参赛规则</strong></p><p><br></p><p>在校的<strong style=\"color: rgb(95, 156, 239);\">研究生、本科生、专科生</strong>都可以组队为单位参赛，每队不超过 3 人（须属于同一所学校），专业不限，并将使用相同的题目。每队可设一名指导教师，从事赛前辅导和参赛的组织工作，并且在挑战赛期间可以全程指导队员。</p>');
INSERT INTO `academicdynamic` VALUES ('6', '竞赛培训', '2019-03-10', '1', '0', '769', '2019年第九届MathorCup高校数学建模挑战赛报名', 'GLUTSM', '2019年第九届MathorCup高校数学建模挑战赛报名', 'http://www.glutsm.com/upload/2019-03-10/thumb_4896989fd1cc91f593ff66ea4f10fb5f.png', '<p><br></p><p><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2019-03-10/thumb_13a3afc8923950989af613d49b08c551.jpg\"></p><h3>竞赛信息</h3><p><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2019-03-10/thumb_ac022cd5a9dbec800e21403bda8f0fd6.jpg\"></p><h2>竞赛简介</h2><p>为了培养学生的创新意识及运用数学方法和计算机技术解决实际问题的能力，中国优选法统筹法与经济数学研究会决定主办2019年第九届MathorCup高校数学建模挑战赛，欢迎各高等院校按照竞赛章程及有关规定组织同学报名参赛。</p><p>&nbsp;</p><h2>组织机构</h2><p>主办单位：中国优选法统筹法与经济数学研究会</p><p>【中国优选法统筹法与经济数学研究会是在中国科学技术协会直接领导下的学术性社会团体，是国家一级学会。学会由华罗庚教授于1981年发起成立，至今成立了评价方法与应用、项目管理、计算机模拟、统筹、管理决策与信息系统、工业工程、高等教育管理、数学教育、经济数学与管理数学、应急管理、灰色系统研究，复杂系统研究等十余个专业分会】</p><p>&nbsp;</p><h2>竞赛时间</h2><p>报名时间：即日起至2019年 4&nbsp;月 10日 12:00</p><p>竞赛时间：2019年4&nbsp;月 11&nbsp;日08:00至2019年 4&nbsp;月 15&nbsp;日08:00</p><p>&nbsp;</p><h2>参赛对象</h2><p>普通高校全日制在校生（研究生、本科生、专科生）以队为单位参赛，每队不超过3人，不允许跨校组队参赛。</p><p>&nbsp;</p><h2>参赛费用</h2><p>每支队伍需缴纳200元的报名费用。</p><p>&nbsp;</p><h2>奖项设置</h2><p>参赛队伍：全国一等奖（约5%）、全国二等奖（约15%）、全国三等奖（约30%），从一等奖队伍中经过决赛答辩决出4支队伍获得“MathorCup”荣誉奖杯；</p><p>组织单位：优秀组织单位、优秀组织社团、优秀组织个人；</p><p>其它奖励政策：参见《 MathorCup高校数学建模挑战赛奖励细则》（ 可从官方主页下载）。</p><p>&nbsp;</p><h3><strong>竞赛联系方式</strong></h3><p>联系电话&amp;微信：18210922591（郭老师）</p><p>竞赛邮箱：mathorcup@mathor.com</p><p>竞赛报名官网：<a href=\"https://www.saikr.com/vse/mathorcup/2019\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 214, 181);\">www.saikr.com/mathorcup/2019</a></p><p>竞赛官网主页：<a href=\"http://www.mathorcup.org/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 214, 181);\">http://www.mathorcup.org</a></p><p>&nbsp;</p><p>参赛学生、指导老师以及学校领队可以在竞赛官网上自行报名组队，竞赛章程和竞赛文件见竞赛报名官网：https://www.saikr.com/mathorcup/2019，竞赛的最新消息均以该网站公布的为准。</p>');
INSERT INTO `academicdynamic` VALUES ('7', '竞赛培训', '2018-02-11', '0', '0', '1314', '第七届全国大学生数学建模竞赛组委会成员名单（2018-2021）', '全国大学生数学建模竞赛组委会', '', 'http://www.glutsm.com/public/thumb/thumb06.jpg', '<p><strong>顾问：</strong></p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;李大潜（复旦大学教授，中国科学院院士）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;瞿振元（中国高等教育学会第六届理事会会长）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;陈永川（天津大学教授，中国科学院院士）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;袁亚湘（中国科学院数学与系统科学研究院研究员，中国科学院院士）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;张平文（北京大学教授，中国科学院院士）</p><p><br></p><p><strong>主任：</strong>&nbsp;&nbsp;陈叔平（浙江大学教授）</p><p><br></p><p><strong>副主任：</strong>（按姓氏笔划为序）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;林金安（高等教育出版社副总编辑）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;徐宗本（西安交通大学教授，中国科学院院士）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;谢金星（清华大学教授）</p><p><br></p><p><strong>委&nbsp;员：&nbsp;</strong>&nbsp;（按姓氏笔划为序）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;巩馥洲（中科院数学与系统科学研究院研究员）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;刘继军（东南大学教授）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;李工宝（华中师范大学教授）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;杨&nbsp;虎（重庆大学教授）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;郝志峰（佛山科学技术学院教授）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姜&nbsp;明（北京大学教授）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;高&nbsp;夯（东北师范大学教授）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;康&nbsp;凯（中国高等教育学会秘书长）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;彭济根（西安交通大学教授）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;蔡志杰（复旦大学教授）</p><p><br></p><p><strong>秘书长：</strong>&nbsp;&nbsp;谢金星（兼）&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><br></p><p><strong>副秘书长：</strong>&nbsp;&nbsp;</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;李艳馥（高等教育出版社理工出版事业部副主任）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;张文博（北京邮电大学副教授）</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;梁&nbsp;恒（清华大学副教授）</p><p class=\"ql-align-center\"><br></p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('8', '竞赛培训', '2018-02-11', '0', '0', '849', ' \r\n第二届全国数学建模微课程（案例）教学竞赛的通知', '全国大学生数学建模竞赛组委会', '', 'http://www.glutsm.com/public/thumb/thumb04.jpg', '<p><br></p><p>&nbsp;&nbsp;&nbsp;为了鼓励广大教师将信息技术与教学内容紧密融合，促进教师更新教学理念，改进教学方法，提高数学建模与数学实验课程的教学质量，丰富数学建模教学素材，2017年成功举办了全国数学建模微课程（案例）教学竞赛，竞赛活动得到了众多教师的关注和参与，竞赛后产生强烈反响。为此，现决定2018年将面向全国本、专科院校数学建模与数学实验课程教师举办第二届全国数学建模微课程（案例）教学竞赛，通过这项教学竞赛活动，进一步促进在线开放课程资源建设和数学建模优秀教学案例资源的共享，提高教师的数学建模教学和竞赛指导水平，积极推动数学建模竞赛、学术交流等活动的开展和数学应用人才的培养。</p><p><br></p><p><strong>一、竞赛组织</strong></p><p>主办单位：中国工业与应用数学学会数学模型专业委员会、全国大学生数学建模竞赛组委会</p><p>协办单位：高等教育出版社</p><p><br></p><p><strong>二、参赛对象</strong></p><p>&nbsp;&nbsp;&nbsp;参赛对象为全国本、专科院校数学建模与数学实验课程的教师，鼓励中青年教师积极参与。</p><p><br></p><p><strong>三、竞赛内容和要求</strong></p><p>&nbsp;&nbsp;&nbsp;参赛内容由参赛教师根据数学建模与数学实验课程教学或数学建模竞赛培训的需要，自行选取相应的教学案例。要求案例要有实际的背景、明确的问题、建模过程、求解结果及其结果的分析等完整内容。要求采用当代现实生活中的真实有趣的案例，特别鼓励采用来自于实际科研课题中的案例和具有独创性的案例。要求提交案例的详细文稿及教学要求，与之配套的多媒体教学课件（PPT）以及进一步说明案例的相关材料。鼓励有条件的参赛教师一并提交相应案例教学的完整视频，时长在30-50分钟。每位参赛教师限提交一件参赛作品，每件作品限一人署名。具体要求如下：</p><p>&nbsp;&nbsp;&nbsp;1.教学案例文稿：教学案例要说明其来源、是否为原创；教学内容的设计应充分反映参赛教师本人的建模思想、应用意识、教学特色等；同时应包括案例所属学科领域、教学对象及所需要的预备知识和方法等（具体格式见附件1）。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;2.多媒体教学课件：多媒体教学课件限定为PPT格式（参考模板见附件2），要求包括完整的教学内容，设计美观，适用于教学，并与教学视频配套（如提交视频）。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;3.案例教学视频（如果提交）：图像清晰稳定、声音清楚，视频格式为MP4（建议采用PPT录屏模式）。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;4.为确保评奖的公平性，除报名信息表外，在案例文稿、PPT课件中不得包含参赛者姓名、学校的相关信息，电子文档可以用案例名称命名。</p><p><br></p><p><strong>四、竞赛流程与奖项设置</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;1.提交作品截止时间： 2018年4月30日。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;2.作品初评（初赛）：对于所有按要求提交的作品，由主办方组织相关同行专家进行双盲评审，评选出参加决赛的作品，将于2018年5月31日前公布名单，并通知参加决赛的相关教师。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;3.作品终评（决赛）：对于确定参加决赛的作品，参赛教师将于2018年7月在“2018年全国数学建模竞赛培训与应用研究交流会”（会议时间、地点另行通知）期间参加现场授课竞赛（决赛），现场授课时间30分钟。决赛之前必须提交完整案例的授课视频（如果之前未提交），视频时长为30－50分钟。届时将组织同行专家评委进行现场评奖，按一定比例评选出获全国一、二、三等奖的作品。为鼓励案例作品的原创性和创新性，根据实际情况设立特等奖一至二项（可空缺）。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;4. 对于获奖作品将由主办方颁发获奖证书，并对获奖教师在“2018年全国数学建模竞赛培训与应用研究交流会”闭幕式上予以表彰。</p><p><br></p><p><strong>五、获奖作品著作权的许可</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;1.获奖作品指在本次竞赛决赛中获得全国一、二、三等奖及特等奖的作品，获奖作品的作者为获奖作者。主办方享有获奖作品的著作权和处置权，获奖作者享有获奖作品的署名权和修订权。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;2.为更好地推进数学建模微课程的教学改革，提升获奖作品的价值和影响力，高等教育出版社同意对获奖作品进行推广。主办方和获奖作者同意将获奖作品（包括内容的全部或部分）的专有权利许可给高等教育出版社行使：出版权、信息网络传播权、开发制作成数字化产品并复制发行的权利。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;3.参赛者向本次竞赛提交作品即被视为同意以上约定。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;4.高等教育出版社使用获奖作品取得收益的，按合理比例向获奖作者支付报酬。</p><p><br></p><p><strong>六、竞赛报名及作品提交</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;1.参赛教师须以真实单位和姓名按通知要求提交报名信息表（见附件3）。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;2.参赛作品须由参赛教师按要求在2018年4月30日前将相关材料用电子邮件发送到：zhghan@126.com，邮件主题标明：“***学校***建模微课参赛作品”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;3.参赛作品及材料须为本人完成，不得抄袭他人作品，侵害他人版权，否则将取消参赛资格。</p><p><br></p><p>附件下载地址：<a href=\"http://www.mcm.edu.cn/html_cn/node/c67da8e91e25259747e66460aad9b5d2.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">http://www.mcm.edu.cn/html_cn/node/c67da8e91e25259747e66460aad9b5d2.html</a></p><p><br></p><p>2017年12月</p><p class=\"ql-align-center\"><br></p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('9', '竞赛培训', '2018-02-11  ', '0', '0', '1806', '2017全国大学生数学建模竞赛颁奖仪式在武汉举行', '全国大学生数学建模竞赛组委会', '2017高教社杯全国大学生数学建模竞赛颁奖仪式于2017年12月9日在湖北省武汉市华中科技大学隆重举行。组委会主任李大潜院士等260多人出席了颁奖仪式。', 'http://www.glutsm.com/upload/2018-02-11/thumb_0aa56cde9892c7c132a25ef07ea0d1ea.jpg', '<p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2018-02-11/thumb_84ca39643a2dcd97dd87324a288a2322.jpg\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2018-02-11/thumb_4d3462ec4024a0405a54e899c8eab115.jpg\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2018-02-11/thumb_0aa56cde9892c7c132a25ef07ea0d1ea.jpg\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2018-02-11/thumb_f8afce99d4eade6b518720ff84e17562.jpg\"></p><p><br></p><p><br></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;2017高教社杯全国大学生数学建模竞赛颁奖仪式于2017年12月9日在湖北省武汉市华中科技大学隆重举行。全国大学生数学建模竞赛组委会主任李大潜院士，国家教育咨询委员会委员、教育部本科教学评估专家委员会副主任瞿振元教授，华中科技大学党委副书记马建辉教授，湖北省教育厅高教处邓立红处长，中国工业与应用数学学会秘书长闫桂英研究员，高等教育出版社副总编辑林金安编审等，全国组委会委员和专家组成员、各赛区组委会的主要负责人、来自全国各地的获奖学生代表及其指导教师、优秀组织工作者和优秀指导教师代表等260多人出席了颁奖仪式。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;颁奖仪式由全国组委会秘书长谢金星教授主持。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;首先，马建辉教授和邓立红处长分别代表华中科技大学和湖北省教育厅致欢迎辞，陈叔平教授代表全国组委会讲话。接着，依次为优秀指导教师代表、优秀组织工作者代表、优秀组织工作奖的获奖赛区、命题人代表、获奖同学代表以及2017高教杯获得者颁奖。随后，林金安编审代表高等教育出版社向获奖的同学、指导老师和学校、获奖赛区组委会表示热烈的祝贺；闫桂英研究员代表中国工业与应用数学学会发表讲话，希望以本次颁奖会为新的起点，不断总结经验，不断创新，将大赛越办越好！最后，瞿振元教授发表了热情洋溢的讲话。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;这项每年一次的竞赛由中国工业与应用数学学会创办于1992年，2002年起由高等教育出版社独家冠名赞助。在各级教育行政部门、有关高校和社会各方的大力支持下，在广大教师的精心指导和学生的积极参与下，十几年来参赛规模增长迅速，已经发展成为世界上规模最大的数学建模竞赛。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;来自全国33个省（市、自治区，包括香港和澳门）以及澳大利亚的1418所高校36375队的十万多名大学生参加了今年9月14日至17日举行的这项竞赛。华中科技大学戴澄洁、许镕涛、杨威同学荣获本科组高教社杯，西安铁路职业技术学院薛森、陈博栋、侯生生同学荣获专科组高教社杯。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;这项竞赛是培养大学生竞争意识和团队精神、提高创新能力和综合素质的重要载体，“一次参赛，终生受益”是绝大部分参赛同学的深切体会。这项活动是大学阶段难得的一次近似于“真刀真枪”的训练，“模拟”了学生毕业后参加工作时可能遇到的情况，它既丰富、活跃了同学的课外生活，也为优秀学生脱颖而出创造了条件。这项竞赛不仅培养了一大批优秀的学生，而且推动了大学的数学教育改革，培养了许多优秀的青年教师。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;中国的未来发展，中华民族的伟大复兴，归根结底靠人才，人才培养的基础在教育。培养学生理论联系实际的作风，激发学生的创造性思维，引导学生在发掘兴趣和潜能的基础上全面发展，是时代和社会发展的需要。以“创新意识、团队精神、重在参与、公平竞争”为宗旨的大学生数学建模竞赛，正在努力实践着时代的要求，为培养具有团队精神和创新能力的高素质人才做出贡献。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;颁奖仪式由中国工业与应用数学学会全国大学生数学建模组委会主办，全国大学生数学建模竞赛湖北赛区组委会协办，华中科技大学承办。</span></p>');
INSERT INTO `academicdynamic` VALUES ('10', '竞赛培训', '2018-02-11', '0', '0', '1226', '2018年全国大学生数学建模竞赛征题通知暨命题研讨会预通知', '全国大学生数学建模竞赛组委会', '', 'http://www.glutsm.com/public/thumb/thumb03.jpg', '<p><span style=\"color: rgb(51, 51, 51);\">各赛区组委会，有关专家、教师和学生：</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;全国大学生数学建模竞赛每年9月的某个周末举行，好的赛题是这项活动成功的关键之一。为了进一步拓广命题思路、搜集赛题素材、提高竞赛水平，全国大学生数学建模竞赛组委会(以下简称全国组委会)决定于2018年上半年（初步定于3月10日）召开2018年全国大学生数学建模竞赛命题研讨会，欢迎所有关心本竞赛命题工作、能提供赛题或赛题素材的专家、教师和学生与会。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;具体要求是：凡有意与会的人员需事先提交至少一份赛题或赛题素材，内容至少应包含：</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;1. 题目背景（如实际课题的简化，社会关心的问题，有实际背景的问题等）；</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;2. 要学生解决的主要问题；</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;3. 如果需要提供（或让学生收集）数据，指出可以得到数据的来源；</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;4. 网上相关资料的大致情况。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;赛题一般来自社会生活、工程技术和经济管理等方面经过适当简化加工的实际问题；只需参赛者学过普通高等学校的数学课程，不要求参赛者预先掌握深入的专门知识，但又有较大的余地，供参赛者（三名学生为一队）在三天内能充分发挥聪明才智和创造精神。由于竞赛允许参赛者查阅各种资料（包括利用互联网），所以应征赛题不能在公开发表的文献上直接找到答案。竞赛分本科组和专科组，应征赛题或赛题素材可注明组别。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;请有意与会的人员将赛题或赛题素材尽快（最晚于2018年1月31日前）用电子邮件直接发给复旦大学蔡志杰教授（Email:&nbsp;zhijiecai@163.com），在邮件主题（Subject）中注明“赛题素材”，并请在邮件正文中写明单位、姓名、电话、email等信息，以便联系。同时，为保证竞赛的公平性，请应征者务必注意保密，切勿将与素材有关的任何内容与其他人交流，不要以任何形式泄露题目的内容。 如果您的赛题被采用，您将不能作为该题参赛队的队员和指导教师。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;全国组委会专家组将根据提交赛题或赛题素材的情况邀请部分人员与会，并直接通知他们研讨会的具体时间、地点等详情。邀请与会者参加会议的费用由全国组委会承担。被竞赛采用的应征赛题将获得命题证书和命题酬金，未被采用的应征赛题将视提交内容的完整程度获得适当酬金。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;请各赛区组委会将本通知在赛区内广为宣传，并转发给学校的学生数模社团，动员广大热心数模事业的专家、教师及学生踊跃参与，积极提供素材。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;欢迎访问全国组委会网址（http://www.mcm.edu.cn）查阅有关竞赛的更多信息（包括历年的赛题）。</span></p><p><br></p><p class=\"ql-align-right\">CUMCM全国组委会</p><p class=\"ql-align-right\">2017.12.25</p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('11', '竞赛培训', '2018-02-11  ', '0', '0', '847', '2017全国大学生数学建模竞赛参赛报名按学校统计', '全国大学生数学建模竞赛组委会', '', 'http://www.glutsm.com/public/thumb/thumb06.jpg', '<p><strong style=\"color: rgb(51, 51, 51);\">附件下载：&nbsp;</strong></p><p><a href=\"http://www.mcm.edu.cn/upload_cn/node/456/wKA87TXg1a3ace1259202e2e5d7d682c92802182.pdf\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">2017全国大学生数学建模竞赛参赛报名按学校统计.pdf</a></p>');
INSERT INTO `academicdynamic` VALUES ('12', '竞赛培训', '2017-11-28', '0', '5', '1692', '2017年全国大学生数学建模竞赛赛题讲评与经验交流会在昆明隆重举行', '全国大学生数学建模竞赛组委会', '2017年11月24-26日，由中国工业与应用数学学会全国大学生数学建模竞赛组委会和中国工业与应用数学学会数学模型专业委员会联合主办，云南赛区组委会承办的“2017年全国大学生数学建模竞赛赛题', 'http://www.glutsm.com/upload/2017-12-08/thumb_9b30a33f1be9f191e2460bb55bfb9352.jpg', '<p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-12-08/thumb_9b30a33f1be9f191e2460bb55bfb9352.jpg\"></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;2017年11月24-26日，由中国工业与应用数学学会全国大学生数学建模竞赛组委会和中国工业与应用数学学会数学模型专业委员会联合主办，云南赛区组委会承办的“2017年全国大学生数学建模竞赛赛题讲评与经验交流会”在美丽的春城-——昆明隆重举行，来自全国各地高校的代表850多人参加了本次大会。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;中国工业与应用数学学会数学模型专业委员会主任鲁习文教授主持开幕式并致辞，他对参会代表莅临本次大会表示热烈欢迎，对云南赛区组委会承办这次会议表示衷心感谢！竞赛全国组委会秘书长谢金星教授代表全国组委会致辞，云南赛区组委会秘书长、云南师范大学李锋教授向与会的全国高校的数学建模同行表示热烈欢迎。出席本次大会开幕式的有全国组委会专家组秘书长、复旦大学蔡志教授，中国工业与应用数学学会数学模型专业委员会副主任、国防科技大学吴孟达教授和信息工程大学韩中庚教授，专家组成员天津大学边馥萍教授、复旦大学陆立强教授、北京大学邓明华教授、北京工业大学薛毅教授和首都师范大学崔恒建教授等。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;首先，谢金星秘书长介绍了2017年全国竞赛参赛和评阅等情况，同时对如何促进竞赛健康发展、提高竞赛质量、推动竞赛与教学改革等方面提出了很多前瞻性建议。然后，蔡志杰、邓明华、崔恒建和薛毅教授分别对A、B、C和D题作了认真讲解。四位教授对赛题本身的实际背景、解题思路、具体模型、求解方法和存在问题等方面进行了详细剖析，同时从建模思想、建模能力、建模素质等方面结合具体的赛题进行了精彩的点评，让参会老师们不仅理解了如何解决建模问题，也领悟到了从更高的视野来看待数学建模，从而提升数学建模的意识和能力。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;本次会议还特别安排了两场“数学建模教学研究方法”专题讲座，分别由华东师范大学的鲁小莉、朱雁博士和谢金星教授报告。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;最后，全国组委会专家与参会的数学建模指导教师就大家所关心的问题进行了面对面的交流座谈，与会的老师们分享了数学建模活动的经验，专家和老师们共同深入探讨了数学建模教学和竞赛等活动如何稳健、可持续地开展下去。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;本次大会参会人数创历年之最，云南赛区组委会、云南师范大学的10多位老师和20多位志愿者同学为大会的顺利举行提供了高质量的后勤保障和服务，得到了与会老师们的高度赞誉。会议为推动全国数学建模活动深入健康发展提供了良好的交流平台。</span></p><p><br></p><p><br></p><p class=\"ql-align-right\">云南赛区组委会供稿</p><p class=\"ql-align-right\"><span style=\"color: rgb(51, 51, 51);\">2017年11月27日</span></p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('13', '竞赛培训', '2017-11-22', '0', '0', '1272', '2017高教社杯全国大学生数学建模竞赛获奖名单', '全国大学生数学建模竞赛组委会', '根据名单显示，广西高校在本次竞赛中总共斩获4组全国一等奖。​ 我会张浩敏老师指导的田昕炜、蔡旭颖、任义成三位同学荣获全国本科组一等奖。​', 'http://www.glutsm.com/public/thumb/thumb04.jpg', '<p><span style=\"color: rgb(51, 51, 51);\">2017年11月21日，全国大学生数学建模竞赛组委会在官网公布了2017高教社杯全国大学生数学建模竞赛获奖名单。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;根据名单显示，广西高校在本次竞赛中总共斩获4组全国一等奖。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;我会张浩敏老师指导的田昕炜、蔡旭颖、任义成三位同学荣获全国本科组一等奖。</span></p><p><br></p><ul><li>本科组高教社杯获得者：戴澄洁、许镕涛、杨威（华中科技大学）</li><li>专科组高教社杯获得者：薛森、陈博栋、侯生生（西安铁路职业技术学院）</li><li>本科组 MATLAB 创新奖获得者：黄璐哲、方天庆、帅青（浙江大学）</li><li>专科组 MATLAB 创新奖获得者：倪永亮、崔靖、李嘉麒（南京铁道职业技术学院）</li></ul><p><br></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">附件：</span></p><p><a href=\"http://www.mcm.edu.cn/upload_cn/node/451/y6gBdE3B8d89f4b0d805a1d72b51b3d0d8ed77cf.pdf\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">winners2017-11-21.pdf (2.9M)</a></p>');
INSERT INTO `academicdynamic` VALUES ('14', '竞赛培训', '2017-11-22', '0', '0', '914', '全国大学生数学建模竞赛优秀指导教师、优秀组织工作者名单及事迹（2017）', '全国大学生数学建模竞赛组委会', '我会学术指导老师唐国强老师在2017年再次荣获“全国大学生数学建模竞赛优秀组织工作者”称号。', 'http://www.glutsm.com/public/thumb/thumb05.jpg', '<p><span style=\"color: rgb(51, 51, 51);\">2017年全国大学生数学建模竞赛优秀指导教师、优秀组织工作者名单及事迹现已公布，具体名单见附件。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;我会学术指导老师</span><strong style=\"color: rgb(51, 51, 51);\">唐国强</strong><span style=\"color: rgb(51, 51, 51);\">老师在2017年再次荣获“全国大学生数学建模竞赛优秀组织工作者”称号。</span></p><p><br></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">附件：</strong></p><p><a href=\"http://www.mcm.edu.cn/upload_cn/node/447/iNvhieFtc00b4f5858bca1f04cd9854bc217b39d.pdf\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">cumcm2017优秀名单2017-11-21.pdf (144.5K)</a></p><p><a href=\"http://www.mcm.edu.cn/upload_cn/node/447/w3Uo9jF22b31ef0b4dbd8da9374db3a373e13ccd.pdf\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">全国大学生数学建模竞赛优秀指导教师2017-11-21.pdf (4.4M)</a></p><p><a href=\"http://www.mcm.edu.cn/upload_cn/node/447/HhVaOUyCdf44fbefad31650f7d9024ffdf62e3ec.pdf\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">全国大学生数学建模竞赛优秀组织工作者2017-11-21.pdf (1.6M)</a></p>');
INSERT INTO `academicdynamic` VALUES ('15', '竞赛培训', '2017-11-14', '0', '0', '860', '2017高教社杯全国大学生数学建模竞赛颁奖仪式暨工作会议第一次会议通知', '全国大学生数学建模竞赛组委会', '“2017高教社杯全国大学生数学建模竞赛颁奖仪式暨工作会议”定于2017年12月8日至10日在湖北省武汉市举行。', 'http://www.glutsm.com/public/thumb/thumb04.jpg', '<p><span style=\"color: rgb(51, 51, 51);\">全国大学生数学建模竞赛各赛区组委会：</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;“2017高教社杯全国大学生数学建模竞赛颁奖仪式暨工作会议”定于2017年12月8日至10日在湖北省武汉市举行。会议由全国大学生数学建模竞赛组委会主办，湖北赛区组委会协办，华中科技大学承办。工作会议的主题是全国大学生数学建模竞赛活动的可持续健康发展，重点研讨优化和规范组织流程、严肃竞赛纪律等问题。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;请各省（市、自治区）教育厅（教委）主管竞赛工作的负责人、各赛区组委会主要负责人、赛区评阅工作负责人，2017年被评选为优秀指导教师和优秀组织工作者、以及获“高教社杯”、“MATLAB创新奖”和被选为发表优秀论文的参赛队学生等作好准备并参加会议。若赛区主要负责人不能与会，应委托确实能代表本赛区组委会的人员出席会议。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;参会人员的差旅费、食宿费自理。会议不收会务费。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">报到时间：2017年12月8日14:00-22:00。</span></p><p><span style=\"color: rgb(51, 51, 51);\">报到地点：华中科技大学国际学术交流中心（8号楼）</span></p><p><span style=\"color: rgb(51, 51, 51);\">地&nbsp;&nbsp;址：湖北省武汉市洪山区珞喻路1037号</span></p><p><span style=\"color: rgb(51, 51, 51);\">会务组联系人：</span></p><p><span style=\"color: rgb(51, 51, 51);\">徐浩渊老师&nbsp;&nbsp;&nbsp;&nbsp;手机：13545152376</span></p><p><span style=\"color: rgb(51, 51, 51);\">滕灯光老师&nbsp;&nbsp;&nbsp;&nbsp;手机：13971540070</span></p><p><span style=\"color: rgb(51, 51, 51);\">会务组E-mail：&nbsp;banjiang2017@hust.edu.cn</span></p><p><span style=\"color: rgb(51, 51, 51);\">全国组委会秘书处联系人：邢红英，E-mail：hyxing@math.tsinghua.edu.cn</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">请参会人员于11月20日前将回执同时发给会务组及邢红英。我们将回复您的E-mail（如您未收到回复时，请及时电话与我们联系进行确认）。</span></p><p><br></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">全国大学生数学建模竞赛组委会</span></p><p><span style=\"color: rgb(51, 51, 51);\">2017年11月13日</span></p>');
INSERT INTO `academicdynamic` VALUES ('16', '竞赛培训', '2017-10-25', '1', '0', '1602', '中国首次在境外获得数独世锦赛冠军', '数独酷', '第12届世界数独锦标赛17日晚上在印度班加罗尔闭幕，共有35个国家和地区的212名选手参加了这次比赛。中国数独队团结拼搏，机智果敢，力压日本、美国、捷克、法国等强国获得团体冠军，这是中国', 'http://www.glutsm.com/upload/2017-11-01/thumb_2f0227bf51a3bfe3f56ab2e74fd96f30.jpg', '<p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-11-01/thumb_2f0227bf51a3bfe3f56ab2e74fd96f30.jpg\" height=\"374\" width=\"600\"></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;第12届世界数独锦标赛17日晚上在印度班加罗尔闭幕，共有35个国家和地区的212名选手参加了这次比赛。中国数独队团结拼搏，机智果敢，力压日本、美国、捷克、法国等强国获得团体冠军，这是中国数独队首次在境外获得的世锦赛冠军。个人赛方面，中国队有三名选手进入前10名，其中清华大学学生邱言哲获得季军、人大附中戴潭潭获得第五、北京八中胡宇轩获得第八，戴潭潭、胡宇轩、明乐天还获得U18前三名。中国数独队取得历史性突破，创造了个人和团体的境外参赛最好成绩。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;本届世锦赛赛制改革不设总决赛，个人赛、团体赛都以最后总成绩排名确定奖项，这就使得比赛更加精彩，分分必争，差距就在毫厘之间。团体赛成绩中国与日本分值接近，直到最后一轮才确定中国获得冠军。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;本届世锦赛从10月16日开始历时两天，中国数独队平均年龄17岁为所有参赛队伍中年纪最小。选手经过18轮近300道题目的比拼最终完成比赛。中国选手全部来自中国数独锦标赛选拔赛，世智联中国代表机构——北京市数独运动协会在组队上大胆启用新人，出奇制胜，队员胡宇轩、明乐天均只有13岁，年轻选手在极大压力下克服困难，发挥了良好的水平，数独国家队梯队建设已见成效。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;据悉，北京市数独运动协会有多种比赛可为爱好者提供参与国家队选拔机会，也会通过各种国际数独交流活动带动爱好者提高技艺水平。同时，培训课程和段位考评也将在各地开展和完善，教、练、赛三者紧密结合，培养出更多优秀的选手。</span></p>');
INSERT INTO `academicdynamic` VALUES ('17', '竞赛培训', '2017-09-13', '1', '0', '767', '2017全国大学生数学建模竞赛报名信息补录通知', '全国大学生数学建模竞赛组织委员会', '2017年全国大学生数学建模竞赛（以下简称“竞赛”）的报名工作原定截止时间为2017年9月11日20:00。但报名截止后，仍收到来自很多学校的报告，指出了报名信息中存在的漏报、误报甚至未报的情', 'http://www.glutsm.com/public/thumb/thumb03.jpg', '<p>各赛区负责人、学校负责人：</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;2017年全国大学生数学建模竞赛（以下简称“竞赛”）的报名工作原定截止时间为2017年9月11日20:00。但报名截止后，仍收到来自很多学校的报告，指出了报名信息中存在的漏报、误报甚至未报的情况。经竞赛全国组委会与各赛区组委会研究决定，于2017年9月13日10:00至14:00再次开放报名系统，请出现前述问题的各院校尽快完善信息。</p><p><br></p><p>但需说明如下：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;1. 此次补录工作，严重干扰了竞赛准备工作，明年的竞赛中将不会再次实行，请各院校遵守；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;2. 此次补录工作由赛区组委会负责人重点通知报名过程出现纰漏的院校执行。</p><p><br></p><p class=\"ql-align-right\">全国大学生数学建模竞赛组织委员会</p><p class=\"ql-align-right\">2017年9月13日</p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('18', '竞赛培训', '2017-09-12', '1', '0', '989', '第二届“登峰杯”全国中学生数学建模竞赛成功举行', '全国大学生数学建模竞赛', '2017年8月22日，由中国工业与应用数学学会承办的第二届“登峰杯”全国中学生数学建模竞赛圆满的落下了帷幕。本项赛事是“登峰杯”全国中学生学术科技作品竞赛的五项赛事之一，今年包括“数学建', 'http://www.glutsm.com/upload/2017-09-23/thumb_a24a702437aaa2bb76af0eb501c87a4f.jpeg', '<p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-09-23/thumb_2fd34975e2e84a3b2bcf66679094a8ce.jpeg\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-09-23/thumb_a24a702437aaa2bb76af0eb501c87a4f.jpeg\"></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;2017年8月22日，由中国工业与应用数学学会承办的第二届“登峰杯”全国中学生数学建模竞赛圆满的落下了帷幕。本项赛事是“登峰杯”全国中学生学术科技作品竞赛的五项赛事之一，今年包括“数学建模”和“数学建模-机器人创新赛”两个子项，旨在更好衔接高中数学与大学数学，提高中学生以团队方式解决问题的综合素质，培养中学生的创新能力。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;短短三天的决赛背后承载的是每位选手、每位创新导师以及登峰杯组委会每位专家辛苦付出的日日夜夜。在竞赛期间，每位参赛的选手不断创新，不断的试验，不断地推翻重来，不断完善自己，他们收获的都不仅是一个奖项，奖项的背后还有很多沉甸甸饱满的果实和更多值得回味与思考的东西。</span></p><p>&nbsp;&nbsp;&nbsp;&nbsp;本项竞赛分为预赛、复赛（第二阶段、晋级赛）和决赛三个阶段进行：</p><p>（1）初赛：预赛采用通讯赛的形式，于2016年12月16-19日举行。来自全国的队伍报名提交参赛论文，经过评审，确定了初赛一、二、三等奖的获奖名单，初赛一等奖获得者可进入复赛。</p><p>（2）复赛：复赛于2017年4-5月进行。复赛一等奖获得者中部分优秀的队伍获得进入全国总决赛的资格。</p><p>（3）决赛：决赛采用夏令营的形式，于2017年8月19-22日在北京举行。来自全国的28支队伍参加，经过评审，确定了决赛一等奖（6个队）以及二等奖（11个队）、三等奖（11个队）的获奖名单。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;“登峰杯”全国中学生数学建模竞赛将不忘初心，坚持“公平”“公正”“公开”的原则，致力于为建设全国中学生数学建模大赛最权威平台不断努力！欢迎更多的中学生参与到这项竞赛中来！</p><p>更多信息可访问：<a href=\"http://www.dengfengbei.com/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(39, 124, 195);\">“登峰杯”官网</a></p><p>初赛、复赛题目和数学建模竞赛决赛获奖名单见附件。 （“数学建模-机器人创新赛”获奖名单参见：<a href=\"http://www.dengfengbei.com/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(39, 124, 195);\">“登峰杯”官网</a>）</p><p><br></p><p><strong>附件：</strong></p><p><a href=\"http://www.glutsm.com/upload/2017-09-23/68a3b12d32952579192298ad19852c32.pdf\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">2017年“登峰杯”数学建模竞赛题目.pdf</a></p><p><a href=\"http://www.glutsm.com/upload/2017-09-23/7f15822011d96688658d55a97b90de0d.pdf\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">第二届“登峰杯”数学建模竞赛总决赛获奖名单.pdf</a></p>');
INSERT INTO `academicdynamic` VALUES ('19', '竞赛培训', '2017-09-11', '1', '0', '904', '2017全国大学生数学建模竞赛参赛须知及作品上传客户端', '全国大学生数学建模竞赛组委会', '2017年全国大学生数学建模竞赛将于北京时间9月14日20:00开始，至9月19日14:00截止。竞赛组委会决定采用“参赛作品提交客户端”收集本年度参赛作品，特此通知。', 'http://www.glutsm.com/public/thumb/thumb02.jpg', '<p>各位参赛同学、教师：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;2017年全国大学生数学建模竞赛将于北京时间9月14日20:00开始，至9月19日14:00截止。竞赛组委会决定采用“参赛作品提交客户端”收集本年度参赛作品，特此通知。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;提请参加本年度竞赛的同学和教师关注竞赛相关各时间节点，同时，也请关注学校所在赛区的赛区组委会对本赛区竞赛组织事务的相关要求。</p><p><br></p><p>附件说明：</p><p>1. 附件1为“参赛作品提交客户端”简明使用说明书；</p><p>2. 附件2为“全国大学生数模竞赛上传客户端（请解压后使用）”。</p><p><br></p><p><br></p><p>预祝大家取得优异成绩！</p><p><br></p><p><br></p><p class=\"ql-align-right\">全国大学生数学建模竞赛组委会</p><p class=\"ql-align-right\">2017年9月11日</p><p><br></p><p>附件下载：https://pan.baidu.com/s/1eSrgIiQ</p>');
INSERT INTO `academicdynamic` VALUES ('20', '竞赛培训', '2017-09-10', '0', '0', '1295', '关于2017年全国大学生数学建模竞赛的常见问题及补充说明（20170910）', 'GLUTSM全国大学生数学建模竞赛组织委员会', '2017年全国大学生数学建模竞赛（以下简称“2017全赛”）一如既往，受到了极为广泛的关注，同时，一些学生及教师也对竞赛的若干要求产生了一些困惑。本说明将就一些常见的问题进行集中答复，如', 'http://www.glutsm.com/public/thumb/thumb07.jpg', '<p>各位同学、指导教师及学校竞赛负责人：</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;2017年全国大学生数学建模竞赛（以下简称“2017全赛”）一如既往，受到了极为广泛的关注，同时，一些学生及教师也对竞赛的若干要求产生了一些困惑。本说明将就一些常见的问题进行集中答复，如仍有本说明中未涉及的问题，仍请及时联系学校管理员、赛区联系人或全国联系人，以获得必要的帮助。</p><p><br></p><p>1. 2017全赛作品分为“参赛论文”及“支撑材料”两个部分</p><p>&nbsp;&nbsp;&nbsp;&nbsp;1.1 “参赛论文”是必须提交的；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;1.2 “支撑材料”由参赛队员在审慎考虑的基础上，选择性地添加，如竞赛题目中没有明确的要求，则不作为必须提交的材料。（如果有自己编写的程序，虽然按照论文格式要求，程序必须放入正文附录，但源程序仍然要以支撑材料的形式提供。）</p><p><br></p><p>2. 2017全赛作品的提交分为“参赛作品MD5码提交”（以下简称“MD5提交”）和“参赛作品提交”（以下简称“作品提交”，参见4）两个阶段</p><p>&nbsp;&nbsp;&nbsp;&nbsp;2.1 “MD5提交”阶段中，参赛队可使用已经进行了绑定操作的客户端，提交参赛作品对应的MD5码，更为详细的说明情参见3；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;2.2 “作品提交”阶段中，参赛队可使用已经进行了绑定操作的客户端，自主错峰上传全部参赛作品。</p><p><br></p><p>3. “MD5提交”阶段又可分为“竞赛进行”和“作品收集”两个阶段：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;3.1 “竞赛进行”阶段（2017年9月14日20:00~9月17日24:00）中，参赛队员可根据需要多次提交MD5码；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;3.2 “作品收集”阶段（2017年9月18日00:00~9月18日06:00）中，任何参赛队均可再向系统提交一次MD5码，成功提交MD5码的参赛队，将不允许再次使用客户端登录系统，直至“作品提交”阶段（参见4）开始。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;3.3 系统以参赛队最后一次成功提交的MD5码为准（将覆盖以前提交的MD5码）。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;3.4 只要参赛队在2017年9月18日06:00以前成功提交MD5码，系统就接受（无论参赛作品的最后修改时间是在2017年9月17日24：00以前，还是在9月18日00:00~9月18日06:00之间）。</p><p><br></p><p>4. “作品提交”阶段（2017年9月18日14:00~9月19日14:00）中，参赛队可使用已经绑定的客户端，自主将所有参赛作品错峰提交至系统。</p><p><br></p><p><span style=\"color: rgb(229, 51, 51);\">注：北京赛区各院校参赛同学，请按北京赛区参赛规定执行。</span></p><p><br></p><p><br></p><p><br></p><p class=\"ql-align-right\">全国大学生数学建模竞赛组织委员会</p><p class=\"ql-align-right\">2017年9月10日</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><h3><strong>常见问题</strong></h3><p><br></p><p><strong>1. 客户端是否只能限定在固定的机器上使用？</strong></p><p>答：不是的。客户端相关文件可以存放于移动存储设备中，在任何一台计算机上都可使用。</p><p><br></p><p><strong>2. 为什么我的参赛作品无法上传？</strong></p><p>答：通常只要不是网络连接问题，多数原因是提交文件的MD5码与系统中记录的MD5码不符。</p><p><br></p><p><strong>3. 如何保证文件的MD5码不改变？</strong></p><p>答：您只要按照竞赛规则，在提交了参赛作品对应的MD5码之后，对文件不进行任何形式的修改，那么MD5码就不会变。请注意，Word或其他文字编辑软件的任何保存操作，都会改变文件的MD5信息。</p><p><br></p><p><strong>4. 什么时候绑定客户端？</strong></p><p>答：竞赛开始后。绑定客户端是竞赛包括的内容之一。</p><p><br></p><p><strong>5. 如果重新下载了客户端，是否需要重新进行绑定操作？</strong></p><p>答：是的。</p><p><br></p><p><strong>6. 在移动设备上存储的，已经进行了绑定操作的客户端，如果更换计算机，是否需要重新绑定？</strong></p><p>答：不需要。只有您在打开客户端之后，提示没有进行绑定操作时，才需绑定操作。</p>');
INSERT INTO `academicdynamic` VALUES ('21', '竞赛培训', '2017-08-01', '1', '0', '1027', '2017中国谜题锦标赛圆满落幕', '数独酷', '2017中国谜题锦标赛于7月23日在北京西国贸大酒店圆满落幕。经过三轮较量，王炜凡、戴潭潭、杨沛获得本届赛事的前三名，他们将与本届谜题赛出题人邱言哲组成新一届中国谜题国家队，代表中国', 'http://www.glutsm.com/public/thumb/thumb05.jpg', '<p><span style=\"color: rgb(51, 51, 51);\">2017中国谜题锦标赛于7月23日在北京西国贸大酒店圆满落幕。中国谜题锦标赛担负着选拔国内优秀选手，参加世界数独锦标赛的重要任务。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;经过三轮较量，王炜凡、戴潭潭、杨沛获得本届赛事的前三名，他们将与本届谜题赛出题人邱言哲组成新一届中国谜题国家队，代表中国出征今年10月在印度班加罗尔举办的第26届世界谜题锦标赛。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;中国队从2013年开始连续四年参加了世界谜题锦标赛，近年来中国队员成绩逐年上升，其中邱言哲连续四年获得18岁以下年龄组冠军。</span></p>');
INSERT INTO `academicdynamic` VALUES ('22', '竞赛培训', '2017-08-01', '1', '0', '762', '2017中国数独锦标赛圆满落幕', '数独酷', '2017中国数独锦标赛于7月22日在丰台区西国贸大酒店圆满落幕。经过四轮复赛和三轮总决赛的角逐，最终戴潭潭、邱言哲、陈诗雨、胡宇轩四名选手脱颖而出，他们将组成新一届中国数独代表队，', 'http://www.glutsm.com/public/thumb/thumb09.jpg', '<p>2017中国数独锦标赛于7月22日在丰台区西国贸大酒店圆满落幕，本次活动是由世界智力谜题联合会、北京市体育总会、北京奥运发展基金会、北京歌华传媒集团有限责任公司主办，北京市数独运动协会和丰台区体育总会承办的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;中国数独锦标赛，担负着选拔优秀选手代表中国参加世界数独锦标赛的重任。经过四轮复赛和三轮总决赛的角逐，最终戴潭潭、邱言哲、陈诗雨、胡宇轩四名选手脱颖而出，他们将组成新一届中国数独代表队，参加今年10月在印度班加罗尔举行的第12届世界数独锦标赛。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;经过初赛选拔有260名选手进入复赛。今年延续历年的晋级制度，报名人数最多的前3个赛区每个赛区前15名选手可直接进入复赛；其他赛区每个赛区的前5名选手也可直接晋级；12岁以下和50岁以上各赛区总成绩排名前3者可直接晋级；2016全国大学生挑战赛前10名可直接入围决赛；上一届中国数独国家队的8名选手也直接晋级；2015和2016年两届数锦赛成绩均排名前30的选手直接进入复赛。为了给更多数独爱好者机会，今年复赛晋级到决赛的名额由30人扩大到50人。所有晋级复赛的选手都将获得组委会颁发的参赛证书。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;另外从体力及脑力消耗上的考虑，今年决赛把往届的只赛一轮次时间两小时，拆分为三轮次总时长仍为两小时。为了与世锦赛单项奖接轨，今年的中锦赛在奖项设置上增设了数独竞速王、数独难题王和标准数独王三个奖项，以鼓励选手在各个单项领域进行突破。戴潭潭、黄明睿、马梦蕾分别获得了上述奖项。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;2017中国数独锦标赛不仅是数独爱好者的比拼盛会，也是联欢盛会，在中锦赛当晚，数独协会为来自全国的爱好者准备了欢乐祥和的“数独之夜”联欢晚会，晚会在欢快激情的舞蹈中拉开帷幕，歌曲、人声和声、魔术、舞蹈、沙画表演等丰富多彩的文艺节目，为现场带来一场视听盛宴。其中“数独沙画”是为本次活动专门创作的，沙画表演演绎了数独运动的发展历史。晚会现场还穿插了激动人心的抽奖环节，三个总价值两万元的邮轮大奖和10个均价千元的乐高玩具，把现场气氛推向一个又一个高潮。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;2017中国数独锦标赛的所有颁奖环节也是在晚会现场完成的，在荣耀数独王争霸赛中，获得本次比赛前四名的选手，在现场数百人的注目下进行答题，最终陈诗雨摘得荣耀数独王的桂冠。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;数独运动一直以来都受到社会各界的关注和支持，本届赛事得到了北京银行、宝矿力水特、北京西国贸大酒店、北京快乐时光旅行社等单位的大力支持。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;今年是北京市数独运动协会第一次把全国中小学数独比赛、中国数独锦标赛和中国谜题锦标赛组织在一起，以赛会制的形式把全国的数独爱好者组织在一起。数独赛事为爱好者们提供了交流和切磋的平台，赛事期间正值暑假，同时也丰富了学生们的暑期生活，大家在这里收获知识、快乐和友谊。</p>');
INSERT INTO `academicdynamic` VALUES ('23', '竞赛培训', '2016-04-21', '1', '0', '1178', '2016年桂林理工大学数学建模选拔赛开始报名啦', 'GLUTSM', '如果你有激情，有才能，有梦想，就赶紧来关注数模吧！  不要害怕你没有经验，没有见过题型，因为我们有优秀的老师团队和有经验的学长学姐们，老师会为你们培训，学长学姐为你们传授经验，到时候，相信你一定能达到你的目标。如果你问参加数学建模比赛有什么用，那我可以告诉你数学建模就是打开我们的生活与数学之间的桥梁，而且还能学习很多非常有用的数学知识，也能锻炼逻辑思维能力，如果成绩优异，还可以获得国家级的奖状。看到这里你心动吗？心动不如行动，那就快快报名吧。', 'http://www.glutsm.com/upload/2017-09-03/thumb_ec0ab2f8e98c78f3c3e4cbf4df25023a.jpg', '<p>如果你有激情，有才能，有梦想，就赶紧来关注数模吧！&nbsp;不要害怕你没有经验，没有见过题型，因为我们有优秀的老师团队和有经验的学长学姐们，老师会为你们培训，学长学姐为你们传授经验，到时候，相信你一定能达到你的目标。如果你问参加数学建模比赛有什么用，那我可以告诉你数学建模就是打开我们的生活与数学之间的桥梁，而且还能学习很多非常有用的数学知识，也能锻炼逻辑思维能力，如果成绩优异，还可以获得国家级的奖状。看到这里你心动吗？心动不如行动，那就快快报名吧。</p><p><br></p><p><strong>一、报名安排</strong></p><p>（一）报名时间：</p><p>4月21日~4月29日。</p><p>（二）报名方式：</p><p>参赛学生可编辑短信（学号+姓名+院系专业班＋联系方式）发送到手机（15277331144）或qq（1078975503），或通过数学建模协会的微信公众平台（微信号：桂工数模/glutsm）回复“建模比赛报名”填写相应信息即可。</p><p><br></p><p><strong>二、竞赛内容</strong></p><p>1、竞赛题目：竞赛题目以考试试卷形式呈现，内容包括高等数学、线性代数、概率统计、计算机编程等相关知识。</p><p>2、比赛形式：以考试试卷形式完成。</p><p><br></p><p><strong>三、竞赛时间及竞赛方式</strong></p><p>竞赛时间：5月6号</p><p>竞赛地点：（具体比赛地点另行通知）</p><p>竞赛方式：参赛学生于5月6日携带参赛文具等到指定教室参加竞赛，竞赛最终以笔试形式完成，150分钟。</p><p><br></p><p><strong>四、奖项设置</strong></p><p>本次比赛将按照参赛人数的5%、10%、20%设立一等奖、二等奖和三等奖。获奖选手由学校颁发荣誉证书。</p><p>理学院将组织专家组成员对获奖学生进行数学建模培训，并从中选拔优秀学生进行组队，代表学校参加2016年全国大学生数学建模竞赛。</p><p><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-09-03/thumb_ec0ab2f8e98c78f3c3e4cbf4df25023a.jpg\"></p><p class=\"ql-align-center\">（选拔赛场景）</p><p><br></p><p><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-09-03/thumb_e20a8fdc93d7250421c265c48da1989b.jpg\"></p><p class=\"ql-align-center\">（假期培训）</p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('25', '协会荣誉', '2012-11-26', '6', '13', '1493', '在2012年广西十大明星社团评审中荣获“广西十大明星社团”荣誉称号。', 'GLUTSM', '在2012年广西十大明星社团评审中荣获“广西十大明星社团”荣誉称号。', 'http://www.glutsm.com/upload/2017-09-04/thumb_418df1087fcd8606cf32659ca363db36.jpg', ' ');
INSERT INTO `academicdynamic` VALUES ('26', '协会荣誉', '2012-12-20', '0', '0', '1215', '在桂林理工大学第六届社团星级评比中荣获“五星级社团”荣誉称号。', 'GLUTSM', '在桂林理工大学第六届社团星级评比中荣获“五星级社团”荣誉称号。', 'http://www.glutsm.com/upload/2017-09-04/thumb_418df1087fcd8606cf32659ca363db36.jpg', '');
INSERT INTO `academicdynamic` VALUES ('27', '协会荣誉', '2012-12-10', '0', '0', '1456', '热烈祝贺我会荣获“五星级社团”荣誉称号', '策划部', '热烈祝贺我会荣获“五星级社团”荣誉称号', 'http://www.glutsm.com/upload/2017-09-05/thumb_ac9068090891078baf0fecd2e69489ca.jpg', '<p><span style=\"color: rgb(51, 51, 51);\">2012年12月9日,桂林理工大学第六届星级社团评比颁奖仪式在05307教室举行。桂林理工大学数学建模协会成功竞选得“五星级社团”，并且获得相应的荣誉证书及300元的奖金，由我会会长黄其升和团支书覃丽燕代表协会上台领奖。在获知成绩那一刻起，我们倍感自豪。</span>	在过去的岁月里，我们曾因为它给自己赋予了使命，在众多干事不断地挥洒汗水的过程中，数学建模协会也不断地成长，不断地壮大，因而也终于在大家的不懈努力下获得了“五星级社团”的荣誉称号。</p><p>与此同时，校内其他的协会也获得了星级荣誉。五星级社团：剪纸协会、青年志愿者协会；四星级社团：广播电台、分享爱工作营、大学生记者团、自行车旅游协会；三星级社团：红十字会、绿色俱乐部、计算机协会、棋类协会、音乐协会。</p><p>在接下来的日子里，我们将不会甘于现状，我们将秉承往届的光荣传统，发扬吃苦耐劳的精神，以及牢记团结、奋进、务实、创新的会训让桂林理工大学数学建模协会在这个大家庭中绽放出更加夺目的光彩。</p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-09-05/thumb_ad990ff0c7b8dac1e986466919938ff0.jpg\"></p><p class=\"ql-align-center\">颁奖现场</p><p class=\"ql-align-center\">（右二为我会团支书覃丽燕，右三为我会会长黄其升）</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-09-05/thumb_ac9068090891078baf0fecd2e69489ca.jpg\"></p><p class=\"ql-align-center\">荣誉证书</p>');
INSERT INTO `academicdynamic` VALUES ('28', '协会荣誉', '2012-12-06', '0', '0', '1186', '在全国大学生数独竞赛中荣获优秀组织奖', '策划部', '在全国大学生数独竞赛中荣获优秀组织奖', 'http://www.glutsm.com/upload/2017-09-05/thumb_924ee838439b5296d5c6c7e05215301b.jpg', '<p><span style=\"color: rgb(51, 51, 51);\">12月2日，青花瓷杯2012全国大学生数独挑战赛在北京成功举行。我会亦在之前的校数独比赛中选出三人并推荐其前往北京参加比赛。此次代表我会去北京参加比赛的周强、张长斌、李鸿胜三名同学分获22、27、78名的好成绩，团队成绩排名第八，表现出我校学子在数独方面的实力。我会也因积极该挑战赛荣获“最佳组织奖”。</span></p>');
INSERT INTO `academicdynamic` VALUES ('29', '协会荣誉', '2012-11-06', '0', '0', '1172', '在2012年广西优秀大学生社团评审中荣获“优秀社团”称号。', '策划部', '在2012年广西优秀大学生社团评审中荣获“优秀社团”称号。', 'http://www.glutsm.com/upload/2017-09-05/thumb_bfc8cadc34f2416f1a7098eb8d317475.jpg', '<p>近日，从自治区高校工委、教育厅下发的《关于公布2012年广西高校优秀大学生社团和优秀大学生社团指导老师评选结果的通知》（桂党高工宣【2012】51号）和《关于公布2012年广西大学生暑期社会实践优秀成果奖评选结果的通知》（桂党高工宣【2012】52号）文件中获悉，我会在2012年广西高校优秀大学生社团评选活动中荣获“优秀社团”称号。</p><p><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-09-05/thumb_bfc8cadc34f2416f1a7098eb8d317475.jpg\"></p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('30', '协会荣誉', '2011-08-10', '0', '0', '1069', '数学建模协会成为全国高校数学建模协会联盟第一发起单位', '数学建模协会成为全国高校数学建模协会联盟第一发起单位', '数学建模协会成为全国高校数学建模协会联盟第一发起单位', 'http://www.glutsm.com/upload/2017-09-04/thumb_418df1087fcd8606cf32659ca363db36.jpg', null);
INSERT INTO `academicdynamic` VALUES ('31', '协会荣誉', '2009-11-11', '0', '0', '958', '在第三届星级社团评比中荣获“一星级社团”称号', '在第三届星级社团评比中荣获“一星级社团”称号', '在第三届星级社团评比中荣获“一星级社团”称号', 'http://www.glutsm.com/upload/2017-09-04/thumb_418df1087fcd8606cf32659ca363db36.jpg', null);
INSERT INTO `academicdynamic` VALUES ('32', '竞赛成绩', '2017-09-19', '2', '0', '2153', '我校在第五届“泰迪杯”数据挖掘挑战赛中荣获全国一等奖\r\n', '桂林理工大学', '我校理学院统计学专业学生屈慧芳、劳齐莹、栗朝阳的作品“基于市场资金流向分析的商品期货量化交易策略”在“泰迪杯”数据挖掘挑战赛中获全国一等奖，也是广西高校最高奖项。', 'http://www.glutsm.com/upload/2017-09-29/thumb_e86127bce20ea7aa97149200710983dc.jpg', '<p>		近日，我校理学院统计学专业学生屈慧芳、劳齐莹、栗朝阳的作品“基于市场资金流向分析的商品期货量化交易策略”在“泰迪杯”数据挖掘挑战赛中获全国一等奖，也是广西高校最高奖项。</p><p>		“泰迪杯”数据挖掘挑战赛是由全国大学生数学建模竞赛组织委员会主办，广州泰迪智能科技有限公司承办，面向全国在校学生的大型科技竞赛活动，目的在于激励学生学习数据挖掘的积极性，提高学生利用数据分析方法解决实际问题的综合能力，鼓励广大学生踊跃参加课外科技活动，开拓知识面，培养创造精神及合作意识，推动数据挖掘技术在高校的推广和应用，共计有来自全国300多所高校2541支队伍参加了此次比赛。</p><p><br></p><p class=\"ql-align-center\">	<img src=\"http://www.glutsm.com/upload/2017-09-29/thumb_e86127bce20ea7aa97149200710983dc.jpg\"></p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('33', '竞赛成绩', '2017-08-20', '1', '0', '1490', '我会指导老师夏雄平获第四届广西高校青年教师教学竞赛一等奖', '桂林理工大学', '日前，根据自治区教育厅《关于公布第四届全区高校青年教师教学竞赛获奖名单的通知》（桂教高教[2017]45号）获悉，我校选派的3名青年教师凭借着优秀的教学设计方案、扎实的专业教学', 'http://www.glutsm.com/upload/2017-08-23/thumb_0e4365fe2d1114c7013aa4555012bde8.jpg', '<p>日前，根据自治区教育厅《关于公布第四届全区高校青年教师教学竞赛获奖名单的通知》（桂教高教[2017]45号）获悉，我校选派的3名青年教师凭借着优秀的教学设计方案、扎实的专业教学功底、出色的现场教学，在比赛中喜获佳绩。其中，理学院夏雄平老师荣获理科组一等奖、土木与建筑工程学院董艳芳老师荣获工科组二等奖、外国语学院肖飞菲老师荣获文科组三等奖。</p><p>&nbsp;&nbsp;&nbsp;本次教学竞赛，得到了参赛教师所在教研室的大力支持，充分展现了我校青年教师较高的教学水平和良好的精神风貌，是我校长期以来重视青年教师培养和教学内涵建设的具体体现。</p><p><br></p><p><br></p><p><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-08-23/thumb_0e4365fe2d1114c7013aa4555012bde8.jpg\"></p><p class=\"ql-align-center\">理学院夏雄平老师荣获理科组一等奖证书</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><br></p><p><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-08-23/thumb_dd743e545e8a0e7963e5fdedfb99fb7e.jpg\"></p><p class=\"ql-align-center\">土木与建筑工程学院董艳芳老师荣获工科组二等奖证书</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><br></p><p><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-08-23/thumb_e1a5f3a65bc1013e03bcafd263d5f563.jpg\"></p><p class=\"ql-align-center\">外国语学院肖飞菲老师荣获文科组三等奖</p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('34', '竞赛成绩', '2017-04-14', '0', '0', '1551', '我校学子在美国大学生数学建模比赛中再创佳绩', '桂林理工大学', '近日，从2017年美国大学生数学建模竞赛(MCM/ICM)官方传来喜讯，由我校土木与建筑工程学院蒋春松和宾国澍老师指导的参赛队，喜获国际二等奖两项和成功参赛奖一项。此次参赛采取跨院组', 'http://www.glutsm.com/upload/2017-09-03/thumb_baea0f7aa5c8cc53b9da65f9f8bfb26f.jpg', '<p>近日，从2017年美国大学生数学建模竞赛(MCM/ICM)官方传来喜讯，由我校土木与建筑工程学院蒋春松和宾国澍老师指导的参赛队，喜获国际二等奖两项和成功参赛奖一项。此次参赛采取跨院组队方式，其中获二等奖的两支队伍分别为土木（实验）2014-1班的徐宇、土木（实验）2014-1班的詹贺和土木（实验）2014-1班的谭翰铭，以及土木（实验）2013-1班的南卓君、软件2014-1班的徐瑞和英语2014-3班的邓钰梅。获成功参赛奖的队伍成员为土木（实验）2014-1班的谢思林、土木（实验）2014-2班的陆润之和国贸2014-1班的吴洪芳。今年是我校继去年之后的连续第二年参加此项赛事。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;MCM/ICM是唯一的国际性数学建模竞赛，也是世界范围内最具影响力的数学建模竞赛。该项赛事始于1985年，分为数学建模竞赛（MCM）和交叉学科建模竞赛（ICM）。今年的赛事于1月底在全球同步举行，来自中国、德国、美国、英国等国家的16928支大学生队伍参加了竞赛，其中包括哥伦比亚大学、斯坦福大学、剑桥大学、北京大学和清华大学等著名国内外高校近三万名大学生。比赛着重强调研究问题、解决方案的原创性、团队合作、交流以及结果的合理性，要求在四天时间内，就指定问题进行建模求解分析及计算机实现，并完成一篇较高水准的英文论文。</p><p><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-09-03/thumb_baea0f7aa5c8cc53b9da65f9f8bfb26f.jpg\"></p><p><br></p><p class=\"ql-align-center\">参赛队员讨论方案</p><p><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-09-03/thumb_28165781d4c80da57a9329dc0e0db72c.jpg\"></p><p><br></p><p class=\"ql-align-center\">参赛队员合影</p><p><br></p><p><br></p><p><br></p><p>信息来源：桂林理工大学</p><p>原文链接：<a href=\"http://www.glut.edu.cn/info/1110/26417.htm\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">我校学子在美国大学生数学建模比赛中再创佳绩</a></p>');
INSERT INTO `academicdynamic` VALUES ('35', '竞赛成绩', '2014-11-13', '0', '0', '980', '我校学生在2014年全国大学生数学竞赛中再获佳绩', '桂林理工大学', '近日，2014年第六届全国大学生数学竞赛落下帷幕。这次比赛，广西赛区在一类高校的非数学专业中评出一等奖35名，二等奖50名，其中，我校获得一等奖14名，二等奖22名，在全区高校中获奖人数最', 'http://www.glutsm.com/upload/2017-09-05/thumb_21e13a3eea7b8f378373eb38b043fc60.jpg', '<p><span style=\"color: rgb(51, 51, 51);\">近日，2014年第六届全国大学生数学竞赛落下帷幕。我校共有100名学生参加了广西赛区一类高校的非数学专业的比赛，取得了优异成绩。这次比赛，广西赛区在一类高校的非数学专业中评出一等奖35名，二等奖50名，其中，我校获得一等奖14名，二等奖22名，在全区高校中获奖人数最多。我校李双村同学还获得了参加全国大学生数学竞赛总决赛的资格，广西只有5个参加总决赛的名额。</span></p>');
INSERT INTO `academicdynamic` VALUES ('36', '竞赛成绩', '2014-02-06', '0', '0', '2191', '我校学生在2013年全国大学生数学建模竞赛中取得优异成绩', '桂林理工大学', '我校学生在2013年全国大学生数学建模竞赛中取得优异成绩', 'http://www.glutsm.com/upload/2017-09-05/thumb_452546eff2f30e2ac4b5c6ca96a55d64.png', '<p class=\"ql-align-center\">我校学生在2013年全国大学生数学建模竞赛中取得优异成绩</p><p>  2013年高教社杯全国大学生数学建模竞赛广西区颁奖仪式于12月14日在北海隆重举行。由我校学生吴银燕、唐丰琼、曹启芳等72名同学组成的24个队参加了此次竞赛，我校学生最终获得广西一等奖1项，二等奖5项，三等奖8项。</p><p> 全国大学生数学建模竞赛创办于1992年，每年一届，目前已成为全国高校规模最大的基础性学科竞赛，也是世界上规模最大的数学建模竞赛。2013年，来自全国33个省/市/自治区(包括香港和澳门特区)及新加坡、印度和马来西亚的1326所院校、23339个队（其中本科组19892队、专科组3447队）、70000多名大学生报名参加本项竞赛。</p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-09-05/thumb_452546eff2f30e2ac4b5c6ca96a55d64.png\"></p><p class=\"ql-align-center\">广西一等奖证书</p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-09-05/thumb_22963af718011b2c179cc7e12dd82db8.png\"></p><p class=\"ql-align-center\">广西二等奖证书</p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('37', '竞赛成绩', '2012-12-12', '0', '0', '1239', '我校学生获2012年全国大学生数学建模竞赛最高奖“MATLAB创新奖”', '桂林理工大学', '我校学生获2012年全国大学生数学建模竞赛最高奖“MATLAB创新奖”', 'http://www.glutsm.com/upload/2017-09-05/thumb_d3b3795006e17f277a4e1df044d6ab13.jpg', '<p>2012年高教社杯全国大学生数学建模竞赛颁奖仪式于12月1日在山东大学隆重举行。受全国组委会的邀请，我校唐国强老师，周诗灿、梁帅、吴丽丹同学参加了此次盛大的颁奖仪式。我校学生周诗灿、梁帅、吴丽丹经过校级数学建模竞赛的选拔和近半年的培训，三人完成了这次比赛的A题：葡萄酒质量的评价。经过层层评阅、面试，最终获得了此次高教社杯全国大学生数学建模竞赛的最高奖“Matlab创新奖”，这是我校参加全国大学生数学建模竞赛获奖成绩的重大突破，也是广西首次获此奖项。颁奖后，吴丽丹同学代表获奖学生在大会上作了5分钟发言。</p><p>&nbsp;&nbsp;&nbsp;全国大学生数学建模竞赛创办于1992年，每年一届，目前已成为全国高校规模最大的基础性学科竞赛，也是世界上规模最大的数学建模竞赛。今年，来自全国33个省/市/自治区(包括香港和澳门特区)及新加坡、美国的1284所院校、21219个队（其中本科组17741队、专科组3478队）、63600多名大学生报名参加了全国大学生数学建模竞赛。</p><p>&nbsp;&nbsp;&nbsp;我校数学建模活动在校领导的领导和关心下，在相关部门的支持下，由教务处、理学院负责具体活动的开展。每年首先选拔出参加培训的学生，经数学建模教练组的春季学期、暑假大约半年的培训，最终遴选出参加全国大学生数学建模竞赛的队伍。在大家共同的努力下，我校数学建模活动的影响面越来越大，对提升学生的数学综合应用能力，培养大学生的创新能力起到了重要的作用。</p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-09-05/thumb_e66f5d04412959209b5a1e39e21e0793.jpg\"></p><p class=\"ql-align-center\">颁奖现场</p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-09-05/thumb_6800b671ec577a0809bec309abbf66b0.jpg\"></p><p class=\"ql-align-center\">获奖学生代表发言</p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-09-05/thumb_d3b3795006e17f277a4e1df044d6ab13.jpg\"></p><p class=\"ql-align-center\">“MATLAB创新奖”奖杯</p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-09-05/thumb_99555e780e9b2f029ca4f47ec911ce27.jpg\"></p><p class=\"ql-align-center\">奖状</p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('38', '竞赛成绩', '2012-12-06', '0', '0', '1346', '数学建模协会荣获2012全国大学生数独挑战赛最佳组织奖', '桂林理工大学', '数学建模协会荣获2012全国大学生数独挑战赛最佳组织奖', 'http://www.glutsm.com/upload/2017-09-05/thumb_924ee838439b5296d5c6c7e05215301b.jpg', '<p>2012年12月2日，青花瓷杯2012全国大学生数独挑战赛在北京成功举行。我会亦在之前的校数独比赛中选出三人并推荐其前往北京参加比赛。此次代表我会去北京参加比赛的周强、张长斌、李鸿胜三名同学分获22、27、78名的好成绩，团队成绩排名第八，表现出我校学子在数独方面的实力。我会也因积极该挑战赛荣获“最佳组织奖”。<img src=\"http://www.glutsm.com/public/lib/js/keditor/plugins/emoticons/images/63.gif\"><img src=\"http://www.glutsm.com/public/lib/js/keditor/plugins/emoticons/images/63.gif\"><img src=\"http://www.glutsm.com/public/lib/js/keditor/plugins/emoticons/images/63.gif\"></p><p><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-09-05/thumb_e17a3f36bce768856bca7f82716c815f.jpg\" height=\"515\" width=\"686\"></p><p class=\"ql-align-center\">三位参赛同学与李莹老师合影（从左至右：张长斌、周强、李莹、李鸿胜）</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-09-05/thumb_307e32b804bc354186ee868f514da7a4.jpg\" height=\"457\" width=\"686\"></p><p class=\"ql-align-center\">周强（右一）代表协会领取“最佳组织奖”</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-09-05/thumb_924ee838439b5296d5c6c7e05215301b.jpg\" height=\"515\" width=\"686\"></p><p class=\"ql-align-center\">最佳组织奖证书</p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('39', '竞赛成绩', '2012-09-16', '2', '0', '1216', '我校2001-2011年数学建模竞赛全国奖名单汇总', '桂林理工大学', '我校2001-2011年数学建模竞赛全国奖名单汇总', 'http://www.glutsm.com/upload/2017-09-05/thumb_6026a4d445b45df2cedd99112a2292b3.jpg', '<p><span style=\"color: rgb(51, 51, 51);\">桂林理工大学在2001-2011年间参加全国大学生数学建模竞赛获得全国奖名单汇总如下：</span></p><p class=\"ql-align-center\"><strong>2001年全国大学生数学建模竞赛获奖名单</strong>学校奖项组员指导老师桂林工学院一等奖唐柱鹏、邹强军、王丽红&nbsp;唐国强桂林工学院二等奖魏明智、项秀强、于生勇蓝雁书&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>2003年全国大学生数学建模竞赛获奖名单</strong>学校奖项组员指导老师桂林工学院二等奖梁&nbsp;&nbsp;滢、孙鸿博、谢&nbsp;&nbsp;宇&nbsp;贾贞桂林工学院二等奖莫&nbsp;&nbsp;毅、李彦翔、刘庆庆&nbsp;庞洪奎&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>2004年全国大学生数学建模竞赛获奖名单</strong>学校奖项组员指导老师桂林工学院一等奖袁孟强、王&nbsp;&nbsp;哲、张&nbsp;&nbsp;莉何宝珠桂林工学院二等奖王&nbsp;&nbsp;娜、张光龙、万基正涂雄苓桂林工学院二等奖韦智勇、何建昭、王&nbsp;&nbsp;栋杨立桂林工学院二等奖蒋翠云、丁慧珍、刘&nbsp;&nbsp;彬刘筱萍桂林工学院二等奖董&nbsp;&nbsp;云、庄文娟、黄晓媛邓光明&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>2005年全国大学生数学建模竞赛获奖名单</strong>学校奖项组员指导老师桂林工学院二等奖吴丽娟 万基正 张光龙何宝珠桂林工学院二等奖黄&nbsp;&nbsp;进 马&nbsp;&nbsp;龙 温志桃刘筱萍桂林工学院二等奖吴博俊 罗尚锋 徐向前杨立桂林工学院二等奖毛细根 邹凤晖 张&nbsp;&nbsp;莉邓光明桂林工学院二等奖戴&nbsp;&nbsp;渠 李荣胜 任燕菲郦园&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>2006年全国大学生数学建模竞赛获奖名单</strong>学校奖项组员指导老师桂林工学院一等奖周夏鹏、和&nbsp;&nbsp;娟、胡&nbsp;&nbsp;翠数模组桂林工学院一等奖高招连、张正欢、徐&nbsp;&nbsp;佳莫绍弟桂林工学院二等奖李泽球、吴承发、肖富元孟兵桂林工学院二等奖马&nbsp;&nbsp;龙、李伟光、张&nbsp;&nbsp;杰吴长亮桂林工学院二等奖黄&nbsp;&nbsp;进、戴怀玉、黎铁虎封全喜&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>2007年全国大学生数学建模竞赛获奖名单</strong>学校奖项组员指导老师桂林工学院一等奖姚珊珊 陈晓轩 李&nbsp;&nbsp;丽数模组桂工南宁分院一等奖杨&nbsp;&nbsp;兵 陈&nbsp;&nbsp;维 卢丝琳数模组桂林工学院二等奖刘占兴 靳&nbsp;&nbsp;巍 李文秋数模组桂林工学院二等奖袁俊波 王小春 韦梅华数模组&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>2008年全国大学生数学建模竞赛获奖名单</strong>学校奖项组员指导老师桂林工学院一等奖黄&nbsp;&nbsp;宁 李乾坤 蒙海珍数模组桂林工学院二等奖唐玉腾 余小舟 龙&nbsp;&nbsp;升数模组桂林工学院二等奖谭孟怀 陈福明 郑坤钊数模组桂林工学院二等奖邓爱萍 刘志军 张国庆数模组桂林工学院二等奖危婞华 李全鑫 陈国涛数模组桂工南宁分院二等奖孙&nbsp;&nbsp;玄 方镇明 黄&nbsp;&nbsp;虹数模组&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>2009年全国大学生数学建模竞赛获奖名单</strong>学校奖项组员指导老师桂林理工大学二等奖傅&nbsp;&nbsp;珊 罗&nbsp;&nbsp;宇 李金锋数模组桂林理工大学二等奖余小舟 李&nbsp;&nbsp;慧 李&nbsp;&nbsp;存数模组桂林理工大学二等奖陀超梅 何幸霖 吕耀福数模组桂工南宁分院二等奖刘建伟 廖仕菲 吴彩红数模组&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>2010年全国大学生数学建模竞赛获奖名单</strong>学校奖项组员指导老师桂林理工大学一等奖利仕坤 佘华煜&nbsp;周毅数模组桂林理工大学一等奖沈孝文 叶彩园 张震数模组桂林理工大学二等奖胡建祥 刘向平 秦春燕数模组桂林理工大学二等奖黄均毅 黄志英 余艳葵数模组桂工博文管理学院二等奖潘会彬 江思义 杜广林数模组&nbsp;&nbsp;&nbsp;&nbsp;<strong>2011年全国大学生数学建模竞赛获奖名单</strong>学校奖项组员指导老师桂林理工大学二等奖马福贤 冉万元 汤永星陈鼎汉桂林理工大学二等奖卢威任 潘拥军 傅雅玲宋奇庆桂林理工大学二等奖郝佳佳 林万秋 王偲婧黄海午桂工南宁校区二等奖周海轮 陆贻辉&nbsp;莫金华数模组</p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('40', '宣传视频', '2019-3-22', '1', '0', '600', '2018年桂林理工大学数学建模协会招新视频', 'GLUTSM', '2018年桂林理工大学数学建模协会招新，期待你的加入！', 'http://www.glutsm.com/upload/2019-03-22/thumb_f7df163cd4f27a6555a2962ac62258d2.png', ' <p><video src=\"http://localhost:8888/static/teacher/0d5e5d47-9576-4314-8a3d-1a8d05217c4c.mp4\" controls=\"controls\" style=\"max-width:100%\"></video></p>');
INSERT INTO `academicdynamic` VALUES ('41', '宣传视频', '2017-09-15', '1', '1', '1262', '2017年数学建模协会宣传视频', 'GLUTSM', '新的一届，新的开始。欢迎大家加入桂工数模。我们在数模的路上一路前行。', 'http://www.glutsm.com/upload/2017-10-10/thumb_af96e770023d36fe538066ccfdf3f33a.png', '<iframe class=\"ql-video ql-align-center\" frameborder=\"0\" allowfullscreen=\"true\" src=\"http://player.youku.com/embed/XMzA4NjY2OTk3Ng==\" height=\"450\" width=\"740\"></iframe><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><br></p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('42', '宣传视频', '2015-09-10', '1', '0', '1753', ' \r\n2015年数模动员大会', 'GLUTSM', null, 'http://www.glutsm.com/upload/2017-09-04/thumb_2f710fafee4b3fa52b776615181b092a.png', '<iframe class=\"ql-video ql-align-center\" frameborder=\"0\" allowfullscreen=\"true\" src=\"http://player.youku.com/embed/XMzA4NjY2OTk3Ng==\" height=\"450\" width=\"740\"></iframe><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><br></p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('43', '宣传视频', '2014-09-10', '1', '0', '1700', '数学建模协会十周年视频', 'GLUTSM', null, 'http://www.glutsm.com/upload/2017-09-04/thumb_c9302c8284a4a058f243cc4b0fb989fe.png', '<iframe class=\"ql-video ql-align-center\" frameborder=\"0\" allowfullscreen=\"true\" src=\"http://player.youku.com/embed/XMzA4NjY2OTk3Ng==\" height=\"450\" width=\"740\"></iframe><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><br></p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('44', '宣传视频', '2014-05-30', '1', '0', '1573', '桂林理工大学数学建模协会第五届夺宝奇兵宣传视频', 'GLUTSM', null, 'http://www.glutsm.com/upload/2017-09-03/thumb_c6f206488046599298a3a1d2dc5332c7.png', null);
INSERT INTO `academicdynamic` VALUES ('45', '宣传视频', '2013-10-10', '0', '0', '1782', ' \r\n广西十大明星社团评比—桂工数模', 'GLUTSM', null, 'http://www.glutsm.com/upload/2017-09-04/thumb_b743920b345fcccf060d0f20bc5dae4b.png', null);
INSERT INTO `academicdynamic` VALUES ('46', '宣传视频', '2012-11-23', '0', '0', '1709', '广西高校数学建模协会联盟（筹）宣传视频', 'GLUTSM', '广西高校数学建模协会联盟（筹）宣传视频', 'http://www.glutsm.com/upload/2017-10-11/thumb_e206e18c4c92770fa75610b64488d478.png', null);
INSERT INTO `academicdynamic` VALUES ('47', '宣传视频', '2012-06-26', '0', '0', '1298', '深情回顾，快乐起航', 'GLUTSM', null, 'http://www.glutsm.com/upload/2017-09-04/thumb_e4823372eeee2a13a3a49d8630e1e4e9.png', null);
INSERT INTO `academicdynamic` VALUES ('48', '试题论文', '2017-09-14', '0', '0', '2203', '2017年全国大学生数学建模竞赛试题', '全国大学生数学建模竞赛', '2017年全国大学生数学建模竞赛题目下载', 'http://www.glutsm.com/public/thumb/thumb02.jpg', '<p><span style=\"color: rgb(51, 51, 51);\">各位同学：</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;2017年全国大学生数学建模竞赛共四个题目，其中，本科组同学请从A、B题中任选一个；专科组同学请从C、D题中任选一个。</span></p><p><span style=\"color: rgb(51, 51, 51);\">本竞赛重要时间节点如下：</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;1. 客户端绑定时间：2017年9月14日20:00 至 2017年9月19日14:00 之间；</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;2. 提交参赛论文及支撑材料MD5码时间：2017年9月14日20:00 至 2017年9月18日6:00 之间；</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;3. 提交参赛论文及支撑材料时间：2017年9月18日6:00 至 2017年9月19日14:00 之间。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">注：</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;4. 由于参加竞赛的同学数量较多，请参赛同学合理安排参赛时间，尽可能避开系统拥堵，以保证参赛论文及支撑材料的MD5码及文档材料的顺利上传；</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;5. 重要时间节点对应的时间均为中华人民共和国国家授时中心发布的网络服务器时间。</span></p><p><br></p><p class=\"ql-align-right\"><span style=\"color: rgb(51, 51, 51);\">全国大学生数学建模竞赛组织委员会</span></p><p class=\"ql-align-right\"><span style=\"color: rgb(51, 51, 51);\">2017年9月14日</span></p><p class=\"ql-align-right\"><br></p><p><br></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">题号：A（本科题目）</span></p><p><span style=\"color: rgb(51, 51, 51);\">题目：CT系统参数标定及成像</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">题号：B（本科题目）</span></p><p><span style=\"color: rgb(51, 51, 51);\">题目：“拍照赚钱”的任务定价</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">题号：C（专科题目）</span></p><p><span style=\"color: rgb(51, 51, 51);\">题目：颜色与物质浓度辨识</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">题号：D（专科题目）</span></p><p><span style=\"color: rgb(51, 51, 51);\">题目：巡检线路的排班</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">注：附件中包含全部试题。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">试题附件:&nbsp;</span><a href=\"http://www.glutsm.com/attachments/CUMCM2017Problems.rar\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\"><strong>CUMCM2017Problems.rar</strong></a></p>');
INSERT INTO `academicdynamic` VALUES ('52', '社团活动', '2017-06-03', '1', '13', '2051', '夺宝，智慧与体力的比拼——第八届夺宝奇兵圆满举行', 'GLUTSM', '为了加强校园学术文化建设，桂林理工大学数学建模协会2017年6月3日于桂林理工大学雁山校区举办了协会的精品活动——夺宝奇兵。本次活动参与人数极多；活动范围极广；活动趣味性极强', 'http://www.glutsm.com/upload/2017-08-12/thumb_14086d4d4a85d91b35108fbbd4fa53d2.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为了加强校园学术文化建设，桂林理工大学数学建模协会2017年6月3日于桂林理工大学雁山校区举办了协会的精品活动——夺宝奇兵。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次活动参与人数极多；活动范围极广；活动趣味性极强，丰富了同学们的课余生活。活动与多个社团联合，作为这次活动的主办方，还可以扩大协会影响力，加强协会之间的交流，促进发展学校校园文化，浓郁提高学校学风。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三号中午两点二十分，参赛选手陆续进场，由数模主持人谈俊伽简单宣读了规则之后，参赛选手纷纷争分夺秒，在雁山校区内展开宝藏争夺，他们奔波于各栋楼间为了争夺我们的荣誉！最后，有多只参赛队伍夺得宝藏，活动自此告一段落。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;夺宝奇兵活动让参赛者们体会到了一场酣畅淋漓的竞争，同时也展现了一场完美的数学较量，对我校的学风建设多有裨益，同时也提醒我们，为团队目标与梦想激发、奉献自己的力量。在享受乐趣中学习，是最好的学习方式。</p><p><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-08-12/thumb_14086d4d4a85d91b35108fbbd4fa53d2.jpg\"></p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('53', '社团活动', '2016-11-30', '1', '5', '1391', '小小数独，智慧启迪——记我会第八届数独比赛决赛', 'GLUTSM', '继数独比赛初赛之后，11月29日晚7点30分，桂林理工大学第八届数独比赛决赛在雁山校区06207教室隆重举行。', 'http://www.glutsm.com/upload/2017-08-12/thumb_0e61c14c5719d319424b6fadc783b398.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;继数独比赛初赛之后，11月29日晚7点30分，桂林理工大学第八届数独比赛决赛在雁山校区06207教室隆重举行。本次比赛由信息部黄广福主持。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次比赛正式开始前，主持人首先说明比赛规则，注意事项及赛事流程。随后主持人宣布本次比赛正式开始，工作人员分发试题，留给参赛人员约半分钟写下参赛信息后，计时开始。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次比赛解题时间为20分钟，题目难度有B类中等及C类偏难。决赛中，从初赛晋级的33个小组（共99人）角逐桂冠，现场气氛异常紧张。比赛开始后十五分钟左右就有参赛选手率先完成，其他选手也因此感受到压力，纷纷加快速度，争取抢先完成。最后共有3组选手提前完成。20分钟之后，工作人员开始回收答卷。</p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;工作人员快速批改、计分，而此时选手们也着搞笑视频，抢抢红包，放松心情，静静等待结果。</span></p><p><span style=\"color: rgb(51, 51, 51);\">最终，本次比赛评选出前三名，并分别颁发一等奖，二等奖，三等奖奖状，奖状由协会会长唐杰亲自颁发。</span></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次数独比赛在主持人的主持下宣布结束。相信参赛选手对这次比赛都受益匪浅，不仅增强了对数独的兴趣，而且也培养了他们团队协作的能力。</p><p><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-08-12/thumb_0e61c14c5719d319424b6fadc783b398.jpg\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-08-12/thumb_632476bcd312f53e03b0d2ccb4ebbe35.jpg\"></p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('54', '社团活动', '2016-06-05', '1', '0', '1189', '我会联合七大社团共同举办夺宝奇兵精品活动', 'GLUTSM', '在2016年6月4日星期六下午两点半在06104教室举行夺宝奇兵的开场。与往年不同今年不仅增加了新的游戏和奖品，而且还联合了七个协会协助举办。着七个协会分别是电子协会、尤克里里、轮滑社、剪纸协会、伙食管理委员会、绿色俱乐部、鲲鹏', 'http://www.glutsm.com/upload/2017-08-12/thumb_c36e525532a7f6172db979e496a58ec5.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;夺宝奇兵活动一向是数学建模协会一年之中不可缺少也尤其重要的活动，今年也不例外。在2016年6月4日星期六下午两点半在06104教室举行夺宝奇兵的开场。与往年不同今年不仅增加了新的游戏和奖品，而且还联合了七个协会协助举办。着七个协会分别是电子协会、尤克里里、轮滑社、剪纸协会、伙食管理委员会、绿色俱乐部、鲲鹏素拓协会。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次活动的参赛选手先于06104集合。首先由主持人周玟秀和刘业添播放夺宝奇兵的相关视频以及用PPT讲解比赛规则和注意事项，之后分发题目给参赛选手，参赛选手根据题目提示或者答案提示寻找答题地点答题即可获得一张藏宝图残图，然后到七个协会完成相应游戏得到兑图卡。将这些全部完成将会的到15张残图，拼接好后即可去大本营得到寻宝卡寻找宝藏。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;即使天气炎热，也挡不住参赛选手寻宝的热情，每一位参赛选手都尽自己所能的完成题目和游戏，校园各处都有他们的奔跑身影，有的组还找来自行车以便更快的完成。下午五点整寻宝结束，各个选手回到大本营，主持人将没有被寻找到的宝藏地点公布个参赛选手，于是更激烈的寻宝之旅再次展开。下午五点半所有的宝藏都被找出来，参赛选手回到大本营。由协会会长刘旭阳为寻找到宝藏的组颁奖，并对参与活动的参赛选手表示感谢。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次夺宝奇兵活动规模比往届要大很多，特别是联合了七个协会。不仅增加了趣味性使参赛选手开动脑经，锻炼体魄，而且团结了数学建模协会和其他协会。对协会的发展起到关键作用，同时也让参赛选手的到了锻炼。</p><p><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-08-12/thumb_c36e525532a7f6172db979e496a58ec5.jpg\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-08-12/thumb_5850ee38dd268d6f7a57390082a9b741.jpg\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-08-12/thumb_8f924ad1b1cc9b226ad17ba1fe52a0c8.jpg\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-08-12/thumb_5d7982bc8eb91e3fe236fad9e57bc87a.jpg\"></p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('55', '社团活动', '2016-05-27', '0', '0', '1122', '小教室，纳大英才——数学建模培训课堂开课啦', 'GLUTSM', '2016年5月27日，本年度数学建模培训课于雁山校区07320教室开课，课程由理学院副院长唐国强老师教授，旨在为对数学建模感兴趣的同学们提供一个良好的学习平台，同时为参与九月份全国大', 'http://www.glutsm.com/upload/2017-08-12/thumb_bd5cf8608d22c262b95f8171aa2773f3.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016年5月27日，本年度数学建模培训课于雁山校区07320教室开课，课程由理学院副院长唐国强老师教授，旨在为对数学建模感兴趣的同学们提供一个良好的学习平台，同时为参与九月份全国大学生数学建模竞赛进行人才选拔。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;晚7时，培训正式开始，其时到场听讲人员共计66人。首先，唐老师对数学建模基本过程做出简单介绍，让大家对数学建模有所认知，接着，唐老师展示出了4篇曾经获奖的竞赛论文，让同学们观摩其大致内容。巨长的篇幅，精彩的排版，再加上唐老师不时指出的文中亮点，这些前辈们遗留在纸上的风采引得同学们叹为观止。这之后，为让同学们更加深入理解数学建模的本质，唐老师开始讲解“《高等数学》中的数学建模和数学模型”。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;唐老师说，其实数学建模一直就在我们的周边，在我们学习的《高等数学》中，就有很多数学建模的实例，比如斜率、瞬时速度、曲边梯形面积的求解，导数，定积分模型的提出的。之后，唐老师用数学建模的方法一一表述了这些问题，问题的提出，研究，模型的建立，求解，一切皆在数学建模的范畴之内，这翻讲述，使得同学们都感到很不可思议。接着，唐老师话风一转，自谦说，他虽不聪明，他现在却能同时处理很多事件，这种锻炼出的能力，就是长期进行数学建模的好处，同时，他摆出之前宝石、化生专业同学们的参赛成果，向我们阐明，即使是来自与数学不相及的专业，只要努力，也能做出出彩的成绩。而后，唐老师接着举出船的航行问题、报童诀窍等简单却又与实际生活息息相关的例子，由浅及深，对每一个问题进行了详细的讲解及建立数学模型，并建议大家平日里也搜索一些数学建模相关的网络现成小课件，多做练习，多投入精力。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在经过对往届数学建模竞赛问题，以及学生所获荣誉的简单讲解之后，唐老师对如何提高数学建模能力做出了自己的解读。他首先将树立钻研精神放在了第一位，而后要求大家熟悉办公软件的编排，并列出两篇不同学生的论文进行对比，才让人惊觉简简单单的办公软件的编排竟也有如此大的学问，接着是要掌握各种数学软件，阅读优秀论文，最后才能写出整篇数学建模论文。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9点整，数学建模首堂培训课完结，同学们围在唐老师周边积极报名签到，场面一时热闹不已。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小小教室，容纳学子英才，在这场长达两个小时的授课中，唐老师用他精彩的讲述，让同学们深刻感受到了数学建模的巨大魅力，相信这些莘莘学子们定会成为日后参与全国大学生数学建模竞赛的主力军，为现代社会的创新发展添上自己的一块砖瓦。</p><p><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-08-12/thumb_bd5cf8608d22c262b95f8171aa2773f3.jpg\" height=\"450\" width=\"600\"></p><p class=\"ql-align-center\">(活动图一)</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-08-12/thumb_900dfecc8677a19b1cb2679c5eb291d6.jpg\" height=\"450\" width=\"600\"></p><p class=\"ql-align-center\">(活动图二)</p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('56', '社团活动', '2016-04-27', '0', '0', '1124', '迎接数理节，展数模风采 ——现场答题活动', 'GLUTSM', '为迎接我校理学院数理节活动，增强校园学术氛围。4月26日雁山校区数学建模协会在一号食堂前举办了“现场答题”活动。 本次活动以答题为主游戏为辅，设置了两个答题帐篷，帐篷四面', 'http://www.glutsm.com/upload/2017-08-12/thumb_839a5cfc00efdbe39b3c9c80e0ad53c5.jpg', '<p>为迎接我校理学院数理节活动，增强校园学术氛围。4月26日雁山校区数学建模协会在一号食堂前举办了“现场答题”活动。</p><p>本次活动以答题为主游戏为辅，设置了两个答题帐篷，帐篷四面分别挂着困难、中等、简单，三种不同类型的题目，同学们可以通过解出不同难度的题目得到相应的积分。得到的积分可以直接到兑奖区兑换奖品，可以用积分到游戏区通过玩扎气球、和戳洞洞游戏赢取更丰厚的奖品。</p><p>中午12点，同学们经过食堂时纷纷驻足观看，很多同学参与其中。有的同学拿出纸笔计算题目，有的三五成群一起讨论难题，现场的答题气氛异常热烈，短短一小时，同学们就解答了五百多道题，奖品也兑换一空，直到题目答完才高兴的离开。</p><p>这次的现场答题活动相比往年更加热烈，吸引了很多同学参与其中。不仅宣传了数理节活动，而且锻炼了同学们勤于思考的能力。让校园洋溢着学习的氛围。</p><p><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-08-12/thumb_839a5cfc00efdbe39b3c9c80e0ad53c5.jpg\"></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"http://www.glutsm.com/upload/2017-08-12/thumb_f7c061dbbdcaffe9466fa084c4d8b43c.jpg\"></p><p><br></p>');
INSERT INTO `academicdynamic` VALUES ('57', '协会荣誉', '2021-05-24', '0', '0', '0', '新添加的', 'GLUM', '没有', 'http://www.glutsm.com/public/thumb/thumb03.jpg', '<p><img src=\"http://localhost:8888/static/用户头像/8e2b61dc-efc9-44d8-a4b0-43c85a5a68d4.jpg\" width=\"266\" style=\"cursor: nwse-resize;\"></p>');
INSERT INTO `academicdynamic` VALUES ('58', '协会荣誉', '2021-05-03', '0', '0', '0', '新的协会荣誉', '数学建模', '没有', 'static/用户头像/beabaee1-cd40-4fc4-92aa-e351a68d4ac8.jpg', '<p><img src=\"http://localhost:8888/static/用户头像/36e70bc4-cd99-40e6-a337-feaca086644a.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>');
INSERT INTO `academicdynamic` VALUES ('59', '协会荣誉', '2021-04-28', '0', '0', '0', '检测', '数模人网站', '没有', 'static/用户头像/b9a2c86d-ded5-4cb0-8a72-0192a51638e7.jpg', '<p><img src=\"http://localhost:8888/static/用户头像/6048fd45-1767-419b-bfab-a037bc239175.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>');
INSERT INTO `academicdynamic` VALUES ('60', '协会荣誉', '2021-04-27', '0', '0', '2', '检测', '数模人网站', '没有', 'static/用户头像/ddfc02eb-b334-4642-8114-c7865ab70eb3.jpg', '<p><img src=\"http://localhost:8888/static/用户头像/5c291f14-921f-4232-8453-b202ba2fc7d1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>');
INSERT INTO `academicdynamic` VALUES ('61', '协会荣誉', '2021-05-12', '0', '0', '2', '检测', '数模人网站', '没有', 'static/用户头像/4b94d036-c520-44ed-8fed-4116cdc5b9d2.jpg', '<p><img src=\"http://localhost:8888/static/用户头像/4918e020-9f64-482f-a59e-e8ad3b14e0c8.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>');
INSERT INTO `academicdynamic` VALUES ('62', '协会荣誉', '2021-04-27', '0', '0', '2', 'aaa', '数学人网站', '没有', 'static/用户头像/1c1294b5-0ce6-4783-afb4-3de7e76197f8.jpg', '<p><img src=\"http://localhost:8888/static/用户头像/ce516b56-3dac-4a10-994a-a458854eba89.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>');
INSERT INTO `academicdynamic` VALUES ('63', '协会荣誉', '2021-05-13', '0', '0', '50', '没有', '数模人网站', '没有', 'static/用户头像/b2c8cb73-abb7-4e2c-af2b-9f981a6a32cb.jpg', '<p><img src=\"http://localhost:8888/static/用户头像/0833b4c6-ac0b-4b0f-857e-d592f9461640.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>');
INSERT INTO `academicdynamic` VALUES ('64', '协会荣誉', '2021-05-04', '0', '0', '0', 'aaaa', 'aaaa', 'aaaa', 'http://www.glutsm.com/public/thumb/thumb03.jpg', '<p><img src=\"http://localhost:8888/static/用户头像/ae663664-f6a8-4f47-bb9d-e8234ddb41e4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:8888/static/用户头像/9ed2494c-6c00-4bab-ae55-4980194c492e.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>');
INSERT INTO `academicdynamic` VALUES ('65', '协会荣誉', '2021-05-10', '0', '0', '0', 'aaaa', 'aaaa', 'aaaa', 'http://www.glutsm.com/public/thumb/thumb03.jpg', '<p><img src=\"http://localhost:8888/static/用户头像/b5e649b5-779f-4973-b723-b3e6707ba731.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:8888/static/用户头像/9420e85f-877d-44c6-bbc5-6ab0f0765178.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>');
INSERT INTO `academicdynamic` VALUES ('66', '协会荣誉', '2021-04-27', '0', '0', '0', 'aaaa', 'aaaa', 'aaaa', 'http://www.glutsm.com/public/thumb/thumb03.jpg', '<p><img src=\"http://localhost:8888/static/用户头像/2d50ce63-468a-4348-a491-8e02d16b3e3b.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:8888/static/用户头像/33ffe196-a364-4f3f-a8c7-c72e2d512f1e.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>');
INSERT INTO `academicdynamic` VALUES ('67', '协会荣誉', '2021-05-17', '0', '0', '0', 'aaaa', 'aaaa', 'aaaa', 'http://www.glutsm.com/public/thumb/thumb03.jpg', '<p><img src=\"http://localhost:8888/static/用户头像/8fe4b750-b33d-4d61-8c5d-c69ab89aee5a.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:8888/static/用户头像/c8ffe306-14a2-434f-94f7-88052ed9780c.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>');
INSERT INTO `academicdynamic` VALUES ('68', '协会荣誉', '2021-05-04', '0', '0', '1', 'qwer', 'qwer', 'qwer', 'http://www.glutsm.com/public/thumb/thumb03.jpg', '<p><img src=\"http://localhost:8888/static/academiccontentforimage/8aaeb46b-724b-4e96-86c8-e307864da44c.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>');

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

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bookid` int NOT NULL AUTO_INCREMENT,
  `bookname` varchar(20) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `ISBN` varchar(13) DEFAULT NULL,
  `doubanscore` double(5,0) DEFAULT NULL,
  `doubanaddress` varchar(255) DEFAULT NULL,
  `bookaddress` varchar(255) DEFAULT NULL,
  `bookdesc` text,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '浴缸里的惊叹', '顾森', '9787115355744', '8', '<a href=\"https://book.douban.com/subject/25918542\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">https://book.douban.com/subject/25918542</a>', 'http://www.glutsm.com/upload/2017-09-17/thumb_dd0e264da033a88abee25f402cbfcea9.jpg', '<p>	<span style=\"color: rgb(17, 17, 17);\">&nbsp;&nbsp;&nbsp;《浴缸里的惊叹》是一本趣题集，里面的题目全部来自于作者顾森十余年来的精心收集，包括几何、组合、行程、数字、概率、逻辑、博弈、策略等诸多类别，其中既有小学奥数当中的经典题目，又有世界级的著名难题，但它们无一例外都是作者心目中的“好题”：题目本身简单而不容易，答案出人意料却又在情理之中，解法优雅精巧令人拍案叫绝。作者还有意设置了语言和情境两个类别的问题，希望让完全没有数学背景的读者也能体会到解题的乐趣。</span></p>');
INSERT INTO `book` VALUES ('2', 'MATLAB在数学建模中的应用', '卓金武', '9787512403178', '8', '<a href=\"https://book.douban.com/subject/6052205\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">https://book.douban.com/subject/6052205</a>', 'http://www.glutsm.com/upload/2017-09-17/thumb_e9de3c38fb270da75e23396ab0e0a6ae.jpg', '<p>	《MATLAB在数学建模中的应用》从数学建模的角度介绍了MATLAB的应用。《MATLAB在数学建模中的应用》的4位作者均具有实际的数学建模参赛经历和竞赛指导经验。书中内容完全是根据数学建模竞赛的需要而编排的，涵盖了绝大部分数学建模问题的MATLAB求解方法。</p><p>	《MATLAB在数学建模中的应用》内容分上下两篇。上篇介绍数学建模中常规方法MATLAB的实现，包括MATLAB交互、数据建模、程序绘图、灰色预测、规划模型等方法；还介绍了各种高级方法MATLAB的实现，包括遗传算法、粒子群算法、模拟退火算法、人工神经网络、小波分析、动态仿真、数值模拟等。下篇以真实的数学建模赛题为案例，介绍了如何用MATLAB求解实际的数学建模问题，给出了详细的建模过程和程序。书中的附件部分介绍了作者在建模竞赛中屡获大奖的经验。相信这些经验对准备参加数学建模竞赛的读者会有所帮助。</p><p>	《MATLAB在数学建模中的应用》特别适合作为数学建模竞赛的培训教材或参考用书，也可作为大学“数学实验”和“数学建模”以及“数据挖掘”课程的参考用书，还可以作为广大科研人员、学者、工程技术人员的参考用书。</p>');
INSERT INTO `book` VALUES ('3', '迷人的数学', '[英]伊凡•莫斯科维奇', '9787535778932', '9', '<a href=\"https://book.douban.com/subject/26849163\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgba(248, 248, 248, 0.424); color: rgb(51, 51, 51);\">https://book.douban.com/subject/26849163</a>', 'http://www.glutsm.com/upload/2017-09-17/thumb_dac0d66ad399e6c3f7131fee0c36ef25.jpg', '<p>	与历史上的数学天才一起挑战头脑体操。</p><p>	315个经典游戏开发大脑潜能，呈现数学之美。</p><p>	在《迷人的数学》中，世界著名智力游戏专家、百万级畅销书《大脑游戏天书》作者伊凡•莫斯科维奇，用极富表现力的精彩图解，呈现了315个经典烧脑游戏，其中不仅有许多历史上著名的数学谜题，也有他自己 设计的独特游戏。</p><p>	作者也巧妙地将从史前时代到21世纪的数学史融入这些游戏题中，让你在挑战谜题、开启大脑潜能的同时，了解数学前进的轨迹，领略数学的迷人魅力。这是一本有观点、有故事的数学益智书，献给所有热爱美感、惊奇、挑战、数学和游戏的人。</p><p>	献给所有热爱美感、惊奇与挑战的人</p><p>	1. 国际著名智力游戏专家、百万级畅销书《大脑游戏天书》作者精心原创，权威性、完整性完胜市面上绝大多数游戏书</p><p>	2. 315个烧脑游戏 + 千幅炫酷图片 + 上百则趣味故事，丰富的内容，精心的编排，非凡的视觉体验和超强的互动乐趣</p><p>	3. 将从史前时期到21世纪的数学史融入315个经典烧脑游戏中，完整收录数学史上的著名人物和著名烧脑故事，让你一本书玩通数学史</p><p>	4. 权威又好玩的315个数学游戏，开发你的大脑潜能，让你拥有毕达哥拉斯、阿基米德般的超级思考力和问题解决力</p><p>	一本有故事的数学游戏书，国际著名智力游戏专家、百万级畅销书《大脑游戏天书》作者精心原创，315个烧脑游戏 + 千幅炫酷图片 + 上百则趣味数学故事，一本书让你爱上数学！</p>');
INSERT INTO `book` VALUES ('4', '数学建模方法与分析\r\n', '米尔斯切特\r\n', '9787111164401', '8', '<a href=\"https://book.douban.com/subject/1392709\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgba(248, 248, 248, 0.145); color: rgb(51, 51, 51);\">https://book.douban.com/subject/1392709</a>', 'http://www.glutsm.com/upload/2017-09-17/thumb_c2cb9df3edda9299918e2bb9727cc67c.jpg', '<p>	<span style=\"color: rgb(17, 17, 17);\">&nbsp;&nbsp;&nbsp;《数学建模方法与分析》(原书第2版)提出了一种通用的数学建模方法（即“五步方法”），帮助读者迅速掌握数学建模的真谛。作者以引人入胜的方式描述了数学模型的3个主要领域：最优化、动态系统和随机过程。</span></p><p>	<span style=\"color: rgb(17, 17, 17);\">&nbsp;&nbsp;&nbsp;《数学建模方法与分析》(原书第2版)以实用的方法解决各式各样的现实问题，包括空间飞船的对接、传染病的增长率和野生生物的管理等。根据需要详细介绍了解决问题所需要的数学知识。</span></p><p><span style=\"color: rgb(17, 17, 17);\">&nbsp;&nbsp;&nbsp;《数学建模方法与分析》(原书第2版)系统介绍数学建模的理论及应用，作者将数学建模的过程归结为五个步骤（即“五步方法”），并贯穿全书各类问题的分析和讨论中，阐述了如何使用数学模型来解决实际问题,提出了在组建数学模型并且进行分析得到结论之后如何进行模型的灵敏性和稳健性的分析,将数学建模方法与计算机使用密切结合，不仅通过对每个问题的讨论给予很好的示范，而且配备了大量的习题训练。</span></p>');
INSERT INTO `book` VALUES ('5', '最迷人的数学趣题\r\n', '彼得·温克勒\r\n', '9787544413947', '9', '<a href=\"https://book.douban.com/subject/2362464\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgba(248, 248, 248, 0.65); color: rgb(51, 51, 51);\">https://book.douban.com/subject/2362464</a>', 'http://www.glutsm.com/upload/2017-09-17/thumb_9568101d910c92a9202c99ebc920390b.jpg', '<p>	<span style=\"color: rgb(17, 17, 17);\">&nbsp;&nbsp;&nbsp;《最迷人的数学趣题:一位数学名家精彩的趣题珍集》是他收集数十年的数学谜题选集。涉及内容包括：数，组合学，概率，几何，算法等。这是一本极具挑战性的数学动脑筋问题选集，充满着奇趣、美妙、惊讶，令人爱不释手。</span></p>');
INSERT INTO `book` VALUES ('6', '魔鬼数学\r\n', '[美]乔丹•艾伦伯格\r\n', '9787508652436', '8', '<a href=\"https://book.douban.com/subject/26594366\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgba(248, 248, 248, 0.424); color: rgb(51, 51, 51);\">https://book.douban.com/subject/26594366</a>', 'http://www.glutsm.com/upload/2017-09-17/thumb_93ae1283939c8fe8fbd768932360c3c6.jpg', '<p><br></p><p>	如果你是一个有“数学焦虑症”的人，你可能不会相信有一天你会爱上数学。</p><p>	原因在于，我们在学校所学的数学知识看上去不过是一堆沉闷的规则、定律和公理，都是前人传下来的，而且是不容置疑的。在《魔鬼数学》中，世界知名数学家乔丹•艾伦伯格告诉我们这样的认识是错误的。数学与我们所做的每一件事都息息相关，可以帮助我们洞见在混沌和嘈杂的表象之下日常生活的隐性结构和秩序。数学是一门告诉我们“如何做才不会犯错”的科学，是经年累月的努力、争论所锤炼出来的。</p><p>	你应该提前多长时间到达机场？民意调查的结果真的能代表人们的意愿吗？为什么父母都是高个子，孩子的身高却比较矮？用什么策略买彩票才能中大奖？《魔鬼数学》运用数学方法分析和解决了很多的日常生活问题，帮助数学门外汉习得用数学思维思考问题的技能。</p><p>	作者用数学这条主线穿起了时空，从每时每刻到宇宙空间，中间还穿插了很多人和事物，比如棒球、里根经济学、伏尔泰、意大利文艺复兴时期的绘画、人造语言等。</p><p>	《魔鬼数学》带领我们踏上了一段精彩绝伦的数学思维之旅，旅行过后，相信你可以成为一个更棒的思考者。作者从历史及最近的理论发展中汲取精华，向我们展示了数学知识的魅力和力量。数学可以让我们更好地思考：它可以磨练我们的直觉，让我们的判断更敏锐，它还可以驯服不确定性，让我们更深入地了解世界的结构和逻辑。</p><p>	拥有了数学工具，我们就可以把那些我们想当然的事情看得更透彻，</p><p>	从而做出正确的决策。</p>');
INSERT INTO `book` VALUES ('7', '无言的宇宙\r\n', '[美]达纳·麦肯齐\r\n', '9787550244658', '8', '<a href=\"https://book.douban.com/subject/26337663\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(248, 248, 248); color: rgb(51, 51, 51);\">https://book.douban.com/subject/26337663</a>', 'http://www.glutsm.com/upload/2017-09-17/thumb_b52ab15554886e0dd841732e8701f260.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;◆《数学之美》之后，最值得数学迷和文科生期待的数学科普书。</p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;◆第一本 “数学史话”，一部关于数学公式的史诗性著作：从1+1=2，到爱因斯坦质能公式E=mc²，看24个公式如何改变人类历史进程。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;◆用诗意文字讲述公式之美，科普性、知识性和故事性完美结合， 100余幅高清珍贵插图，全彩印刷，让神秘、抽象的公式“活起来”！</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;◆“美国数学政策联合会年度传播奖”。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;◆送给数学爱好者和青少年的完美礼物。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;《无言的宇宙》向你讲述的是人类历史上24个美丽而伟大的公式背后的故事，从基本的1 + 1 = 2到揭示电磁现象的“麦克斯韦方程”，从著名的E = mc²到神秘的“汉密尔顿的四元数方程”，清晰地解释了每一个方程的含义、谁（如何）发现了它，他们在人类发展史上和现实生活中发挥的巨大作用。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;这些故事既长知识又有趣，比如：</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;发现世界上最简单的方程，这意味着什么；</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;如果世间未曾有过“0”这个概念，将会怎样；</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;牛顿运动定律如是何使人类做到这一切的——从建设桥梁到预测天气；</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;一根劣质雪茄如何改变了量子力学的进程；</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;为什么鲸鱼（如果它们能和我们交流的话）会教给我们完全不同的几何概念？</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;同时，这本书也解释了为什么这些方程在诉说着关于宇宙的永恒的秘密，没有任何一种人类的表达方式可以与之匹敌。最重要的是它们如何令人惊讶地影响了人类历史和我们的日常生活。</span></p>');
INSERT INTO `book` VALUES ('8', '思考的乐趣\r\n', '顾森\r\n', '9787115275868', '8', '<a href=\"https://book.douban.com/subject/10779597\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgba(248, 248, 248, 0.784); color: rgb(51, 51, 51);\">https://book.douban.com/subject/10779597</a>', 'http://www.glutsm.com/upload/2017-09-17/thumb_86e7c58110a5cc2fe6861460117665e0.jpg', '<p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;本书是一个疯狂数学爱好者的数学笔记，面向所有喜爱数学的读者。从2005年7月开始，作者已经写了连续六年的博客，积累下来了大量的数学文章。 部分文章内容被广泛关注，在网络上大量分享转载。</p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;这本书有意挑选了初等的话题，让大大小小的读者都能没有障碍地阅读。文章内容新，让有数学背景的人也会发现很多自己没见过的初等问题。 文章是独立的。一篇文章一个话题，文章与文章之间基本不会做参考，读者可以随意跳着看。</span></p><p><span style=\"color: rgb(51, 51, 51);\">文章内容注重思想性，基本上是原创，没有什么版权争议。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;总之，这是一本标新立异的趣味数学书。每一个读过的人都会被深深吸引。这是一个热爱思考的年轻人积攒的让人一读就欲罢不能的趣味书。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;本书包括5部分内容，即生活中的数学、数学之美、几何的大厦、精妙的证明、思维的尺度，涉及48篇精彩的文章。即使你不喜欢数学，也会为本书的精彩所倾倒。</span></p>');
INSERT INTO `book` VALUES ('9', '极简宇宙史\r\n', '[法]克里斯托弗·加尔法德\r\n', '9787542654434', '9', '<a href=\"https://book.douban.com/subject/26697350\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(248, 248, 248); color: rgb(51, 51, 51);\">https://book.douban.com/subject/26697350</a>', 'http://www.glutsm.com/upload/2017-08-21/thumb_4a8972f79e60d4834c3eba1f8e3d6142.jpg', '<p>	我们的存在的确让太阳系与众不同。夏夜，你躺在沙滩上，仰望夜空。一颗小小的流星安静滑过，还来不及许愿，不可思议的事情发生了：你一下子穿越五十亿年，走进时光的旅行……</p><p>	霍金亲传弟子、物理学博士克里斯托弗·加尔法德带领我们踏上一场关于宇宙的过去、现在和未来的惊奇之旅。不需要图表和方程式，只需凭着奇诡的想象，我们就可走向衰亡的太阳表面，飞越遥远的星系，感受来自黑洞的死亡魅力……你可以轻松读懂时至今日的宇宙神奇，继续探究关于上帝的存在、时间的起源以及人类的未来。</p>');
INSERT INTO `book` VALUES ('10', '数学之美', '吴军', '9787115282828', '9', '<a href=\"https://book.douban.com/subject/10750155\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgba(248, 248, 248, 0.784); color: rgb(51, 51, 51);\">https://book.douban.com/subject/10750155</a>', 'http://www.glutsm.com/upload/2017-09-16/thumb_1bb956274b1e95708de99e1d5b275b4e.jpg', '<p class=\"ql-align-center\">&nbsp;&nbsp;&nbsp;《数学之美》内容简介：几年前，“数学之美”系列文章原刊载于谷歌黑板报，获得上百万次点击，并被热情的读者广为传播，得到高度评价。读者说，读了“数学之美”，才发现大学时学的数学知识，比如马尔科夫链、矩阵计算，甚至余弦函数原来都如此亲切，并且栩栩如生，才发现自然语言和信息处理这么有趣，才真正明白“数学是科学的皇后”这句名言。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;今年，作者吴军博士几乎把所有的文章都重写了一遍，为的是能把高深的原理讲得更加通俗易懂，让非专业读者也能领略数学的魅力。经过改写和重构后，《数学之美》在整体和细节的度上控制得更好。希望读者通过具体的例子学到的是思考问题的方式，学会如何化繁为简，如何用数学去解决工程问题，如何跳出固有思维不断去思考创新。同时书中也留了很多问题给愿意钻研的人做进一步深入思考。</p><p><br></p><p><br></p><p><strong>作者简介</strong></p><p> 吴军博士，现任腾讯公司主管搜索、在线广告和云计算基础架构的副总裁，毕业于清华大学（本科、硕士）和美国约翰·霍普金斯大学（博士）。在清华大学和约翰·霍普金斯大学期间，吴军博士致力于语音识别、自然语言处理，特别是统计语言模型的研究。他曾获得1995年全国人机语音智能接口会议的最佳论文奖和2000年Eurospeech的最佳论文奖。</p><p> 吴军博士于2002年加入Google公司。在Google，他和Amit Singhal（Google院士，世界著名搜索专家）、Matt Cutts（Google反作弊官方发言人）等三位同事一起开创了网络搜索反作弊的研究领域，并因此获得Google工程奖。2003年，他和Google全球架构的总工程师朱会灿博士等共同成立了中日韩文搜索部门。吴军博士是当前Google中日韩文搜索算法的主要设计者。在Google期间，他还领导了许多研发项目，包括许多与中文相关的产品和自然语言处理的项目，并得到了当时公司首席执行官埃里克·施密特和创始人谢尔盖·布林的高度评价。</p><p> 吴军博士在国内外发表过数十篇论文，并获得和申请了十余项美国和国际专利。他撰写的《浪潮之巅》一书深受业界的好评。他于2007年起担任风险投资基金中国世纪基金的董事。2011年起，当选为约翰·霍普金斯大学工学院董事会董事，并在该校的国际事务委员会担任顾问。他是国家重大专项“新一代搜索引擎和浏览器”项目的总负责人，从2012年起任职工业与信息化部的专家和顾问。</p>');

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
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

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
INSERT INTO `famousm` VALUES ('1', '1', '李亮', '你因数模而成长，数模因你而不同', 'http://www.glutsm.com/upload/2017-09-18/thumb_53258be283be7d6217f096cd1aa787e5.jpg');
INSERT INTO `famousm` VALUES ('2', '2', '李春勇', '2009年加入数学建模协会，历任组织部干事、团支书、终身名誉会长。会徽会旗设计者、会歌创作者、杂志社和建模基地创办者，先后三次组织协会改革，引领社团改革浪潮，为协会发展做出卓越贡献。荣获协会“特别贡献奖”。', 'http://www.glutsm.com/upload/2017-09-26/thumb_47fb6a1793202d2e5eb5a754d165d948.jpg');
INSERT INTO `famousm` VALUES ('3', '3', '李有余', '2010年加入数学建模协会，历任学习部干事、信息部部长、荣誉顾问。第一任信息部部长，协会视频开创者，参与了协会第一次、第二次和第三次改革，推动了协会网络信息的迅速发展。', 'http://www.glutsm.com/upload/2017-09-26/thumb_cb8faf553681f7aadc26fbb9d8841989.jpg');
INSERT INTO `famousm` VALUES ('4', '4', '黄其升', '2011年加入数学建模协会，历任学习部干事、会长、荣誉顾问。主要参与了协会第二次和第三次改革，有力推进协会改革和发展。任期内带领协会荣获“广西优秀大学生社团”。', 'http://www.glutsm.com/upload/2017-09-18/thumb_5379a5d286a5967c748222fea375b2a7.jpg');
INSERT INTO `famousm` VALUES ('5', '5', '覃丽燕', '2011年加入数学建模协会，历任信息部干事、团支书。致力于协会团队建设，推动了协会融创文化发展。任期内带领协会荣获“优秀团支部”。', 'http://www.glutsm.com/upload/2017-09-20/thumb_3228a709a45f3145b66aeb80abbdb4d5.jpg');
INSERT INTO `famousm` VALUES ('6', '6', '周强', '2012年加入数学建模协会，历任学习部干事、会长、荣誉顾问。对协会宣传方式、活动内容进行极大了的拓展。任期内带领协会荣获“广西十大明星社团”。', 'http://www.glutsm.com/upload/2017-09-21/thumb_399adfda15dfa06299247813198fe301.jpg');
INSERT INTO `famousm` VALUES ('7', '7', '方肇星', '2013年加入数学建模协会，历任策划部干事、会长、荣誉顾问。任期逢协会十周年，带领协会欢度十周年庆典，同年带领协会荣获“四星级社团”，名列校学术社团榜首。', 'http://www.glutsm.com/upload/2017-10-09/thumb_d1e36dea2647bb41bdd68e240f1109e2.jpg');
INSERT INTO `famousm` VALUES ('8', '8', '刘旭阳', '2014年加入数学建模协会，历任学习部干事、会长、荣誉顾问，主要参与了协会特殊时期的初步改革，思考与引导协会发展的长期战略方向。', 'http://www.glutsm.com/upload/2017-09-22/thumb_b6257d74f5319de368bb24b44d8f8fff.jpg');

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
INSERT INTO `matchinfo` VALUES ('8', '2021-04-30', '关于举办桂林理工大学第十七届数学建模竞赛暨2021年全国大学生数学建模竞赛选拔赛的通知', '<p class=\"ql-align-center\"><strong>关于举办桂林理工大学第十七届数学建模竞赛暨2021年全国大学</strong></p><p class=\"ql-align-center\"><strong>生数学建模竞赛选拔赛的通知</strong></p><p><strong style=\"color: rgb(0, 0, 0);\">校属各单位、各有关部门：</strong></p><p><strong style=\"color: rgb(0, 0, 0);\">	</strong><span style=\"color: rgb(0, 0, 0);\">为了激励我校学生学习数学的积极性，提高学生运用数学理论和方法，利用文献、计算机等工具分析和解决实际问题的能力，鼓励学生踊跃参加课外科技活动，开拓知识面、培养创新精神，推动大学数学教学改革，促进基础学科的发展，同时选拔优秀学生参加2021年全国大学生数学建模竞赛。经研究，决定举办桂林理工</span>大学第十七届数<span style=\"color: rgb(0, 0, 0);\">学建模竞赛暨2021年全国大学生数学建模竞赛选拔赛，同时成立竞赛组委会及竞赛专家组。现将有关事项通知如下：</span></p>', null);
INSERT INTO `matchinfo` VALUES ('9', '2021-05-14', '关于举办桂林理工大学第十七届数学建模竞赛暨2021年全国大学 生数学建模竞赛选拔赛的通知', '<p class=\"ql-align-center\"><strong>关于举办桂林理工大学第十七届数学建模竞赛暨2021年全国大学</strong></p><p class=\"ql-align-center\"><strong>生数学建模竞赛选拔赛的通知</strong></p><p><strong style=\"color: rgb(0, 0, 0);\">校属各单位、各有关部门：</strong></p><p>	<span style=\"color: rgb(0, 0, 0);\">为了激励我校学生学习数学的积极性，提高学生运用数学理论和方法，利用文献、计算机等工具分析和解决实际问题的能力，鼓励学生踊跃参加课外科技活动，开拓知识面、培养创新精神，推动大学数学教学改革，促进基础学科的发展，同时选拔优秀学生参加2021年全国大学生数学建模竞赛。经研究，决定举办桂林理工</span>大学第十七届数<span style=\"color: rgb(0, 0, 0);\">学建模竞赛暨2021年全国大学生数学建模竞赛选拔赛，同时成立竞赛组委会及竞赛专家组。现将有关事项通知如下：</span></p><p><strong style=\"color: rgb(0, 0, 0);\">一、承办单位</strong></p><p>	<span style=\"color: rgb(0, 0, 0);\">教务处、团委、理学院</span></p><p><strong style=\"color: rgb(0, 0, 0);\">二、成立竞赛组委会和竞赛专家组。</strong></p><p>（一）桂林理工大学第十七届数学建模竞赛组委会成员名单</p><p>组&nbsp;&nbsp;长：梁福沛</p><p>副组长：游少鸿、李雨、肖剑荣</p><p>成&nbsp;&nbsp;员：李明、唐国强、饶蠡、钟立军、张徽琳</p><p>（二）桂林理工大学第十七届数学建模竞赛专家组成员名单</p><p><span style=\"color: rgb(0, 0, 0);\">组&nbsp;长：李明</span></p><p><span style=\"color: rgb(0, 0, 0);\">成&nbsp;员：蒋远营、封全喜、石磊、谢海、蒋宜蓉、陈华舟、乔涵丽、王彬、陈安、丁少玲</span></p><p><span style=\"color: rgb(0, 0, 0);\">秘&nbsp;书：封全喜</span></p><p><strong style=\"color: rgb(0, 0, 0);\">三、参赛对象及其形式</strong></p><p>	<span style=\"color: rgb(0, 0, 0);\">我校在校全日制本科大学生均可报名参赛，参赛选手需具有一定的数学基础、计算机编程能力和数学建模能力。</span></p><p>	<span style=\"color: rgb(0, 0, 0);\">考虑到所有参赛同学的基础不一，报名完成后，我们将于5月份开始数学建模培训，校级数学建模竞赛拟定于6月10日-14日举行。</span></p><p><strong style=\"color: rgb(0, 0, 0);\">四、报名安排</strong></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0);\">（一）报名时间</span></p><p class=\"ql-align-justify\">	<span style=\"color: rgb(0, 0, 0);\">4月12日~4月30日 20：00</span></p><p class=\"ql-align-justify\"><span style=\"color: rgb(0, 0, 0);\">（二）报名方式</span></p><p>	</p><p><span style=\"color: rgb(0, 0, 0);\">1.&nbsp;请参赛学生点击报名链接或者 </span>扫描下方二维码进行报名</p><p>	报名链接:&nbsp;<a href=\"https://www.wjx.top/vm/wXrxUhP.aspx\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 0, 255);\"><u>https://www.wjx.top/vm/wXrxUhP.aspx</u></a></p><p>	报名二维码：</p><p>	<img src=\"http://localhost:8888/static/用户头像/da503775-c594-415a-ad5d-b1324c1417bc.png\" width=\"264\" style=\"\"></p><p>	</p><p>2. 报名后请及时入群“2021年桂工数模竞赛选拔群”：<span style=\"background-color: rgb(240, 240, 240); color: rgb(0, 0, 0);\">749225026</span>，以便及时获得通知。 </p><p>	<strong>注意，加群时请注明 学院+专业+姓名</strong>&nbsp;</p><p>	<img src=\"http://localhost:8888/static/用户头像/2c11c551-5f2e-4aba-84f2-7c2fc6a7a5ec.png\"></p><p><strong style=\"color: rgb(0, 0, 0);\">五、竞赛内容</strong></p><p>	<span style=\"color: rgb(0, 0, 0);\">本次竞赛以数学建模真题的形式，从A、B题中任选一题，在指定时间之内完成论文。论文格式请按“桂林理工大学大学生数学建模竞赛论文格式规范”的要求编辑排版。</span></p><p>	<span style=\"color: rgb(0, 0, 0);\">竞赛时间：6月10日&nbsp;8:00—6月14日8:00</span></p><p>	<span style=\"color: rgb(0, 0, 0);\">竞赛地点：在线提交论文，将论文提交到Email: 2968736113@qq.com</span></p><p>	<span style=\"color: rgb(0, 0, 0);\">竞赛方式：以三人一组为单位参赛，在指定时间之内完成论文。</span></p><p>	<span style=\"color: rgb(0, 0, 0);\">说明：本次校赛是为了选拔参加国赛队员，数模培训也是考核内容之一。</span></p><p><strong style=\"color: rgb(0, 0, 0);\">六、奖项设置</strong></p><p><strong style=\"color: rgb(0, 0, 0);\">&nbsp;&nbsp;&nbsp;</strong><span style=\"color: rgb(0, 0, 0);\">本次比赛将按照参赛人数的5%、15%、30%设立一等奖、二等奖和三等奖。</span></p><p>	<span style=\"color: rgb(0, 0, 0);\">理学院将组织专家组成员对参赛学生进行考核，并从中选拔优秀学生进行组队，代表学校参加2021年全国大学生数学建模竞赛。</span></p><p><strong style=\"color: rgb(0, 0, 0);\">七、其它事项</strong></p><p>	<span style=\"color: rgb(0, 0, 0);\">为便于开展相关工作，使赛事顺利进行，请参赛同学注意适时登陆桂林理工大学数学建模协会网站（网址：http://www.glutsm.com/）、数学建模公众号“数学森林”及全国大学生数学建模竞赛网站（网址：http://www.mcm.edu.cn），随时了解数学建模赛事动态。</span></p><p>	</p><p>	<span style=\"color: rgb(0, 0, 0);\">&nbsp;&nbsp;桂林理工大学</span></p><p><span style=\"color: rgb(0, 0, 0);\">二O二一年四月一十二日</span></p>', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of participants
-- ----------------------------
INSERT INTO `participants` VALUES ('13', '谭家伟', '3172090710213', '信科17-2班', '7A309', '雁山校区', '广西北海', '450521199606178756', '1933221828', '18277971822', '1933221828@qq.com', '有', '理学院');

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

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `snativeplace` varchar(255) DEFAULT NULL,
  `sbirthday` varchar(20) DEFAULT NULL,
  `spoland` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sgrade` varchar(30) DEFAULT NULL,
  `smotto` varchar(50) DEFAULT NULL,
  `sfaceaddress` varchar(255) DEFAULT NULL,
  `sachieve` text,
  `sposition` varchar(20) DEFAULT NULL,
  `sdate` varchar(20) DEFAULT NULL,
  `sfrom` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `scomment` int DEFAULT NULL,
  `sreaders` int DEFAULT NULL,
  `sthumbup` int DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '李亮', '男', '四川成都', '1990年8月', '中共党员', '理学院 应用物理学09-1', '存天理，去人欲', 'static/student/348c865d-5e4e-44c0-a565-91d3d0cf7293.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 姓&nbsp;&nbsp;&nbsp;&nbsp;名：李亮</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 籍&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贯：四川成都</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 出生年月：1990年8月</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 政治面貌：中共党员</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 系院班级：理学院 应用物理学09-1</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 座&nbsp;右&nbsp;铭：存天理，去人欲</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">任职情况</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2009-2010年度上期任桂林理工大学数学建模协会组织部干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2009-2010年度下期任桂林理工大学数学建模协会团支部组织委员兼组织部干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2010-2011年度任桂林理工大学数学建模协会团支部书记</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2011年9月聘任为桂林理工大学数学建模协会终身名誉会长</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2012年组织筹建全国高校数学建模协会联盟</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">荣誉奖项</strong></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 全国计算机等级考试三级证书（网络技术）</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 桂林理工大学理学院分党校入党积极分子培训班“优秀学员”</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 桂林理工大学2009-2010年度“特等奖学金”</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 桂林理工大学2009-2010年度“三好学生”</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 桂林理工大学2010年科技立项“特等奖”</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 桂林理工大学数学建模协会“特别贡献奖”</span></p>', '名誉会长', '2017-09-18', 'GLUTSM', '9', '1659', '3');
INSERT INTO `student` VALUES ('2', '李春勇', '男', '广西桂林', '1991年12月', '共青团员', '理学院 应用物理学10-1', null, 'static/student/1093e291-3d5c-4e02-9ef1-f2233cbd2717.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 姓&nbsp;&nbsp;&nbsp;&nbsp;名：李春勇</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 籍&nbsp;&nbsp;&nbsp;&nbsp;贯：广西桂林</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 出生年月：1991年12月</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 政治面貌：共青团员</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 系院班级：理学院 应用物理学10-1</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">任职情况</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2010-2011年任桂林理工大学数学建模协会宣传部干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2011-2012年任桂林理工大学数学建模协会会长</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">荣誉奖项</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★ 全国计算机联考一级证书</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 桂林理工大学2010-2011年度三等奖学金</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 桂林理工大学理学院第一届PPT设计大赛优秀奖</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 桂林理工大学数学建模协会“优秀干部”</span></p>', '10级会长', '2017-09-19', 'GLUTSM', '0', '1269', '0');
INSERT INTO `student` VALUES ('3', '李有余', '男', '广西北海', '1990年01月', '预备党员', '理学院 信息与计算科学10-1班', '后悔过去不如奋斗将来', 'static/student/4869f01d-bf83-472e-a44c-86e4bac51bad.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 姓&nbsp;&nbsp;&nbsp;名：李有余</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 籍&nbsp;&nbsp;&nbsp;贯：广西北海</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 出生年月：1990年01月</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 政治面貌：预备党员</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 系院班级：理学院 信息与计算科学10-1班</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 座&nbsp;右&nbsp;铭：后悔过去不如奋斗将来</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">任职情况</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2012-2013年度任桂林理工大学数学建模协会荣誉顾问</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2011-2012年度任桂林理工大学数学建模协会信息部部长</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2010-2011年度任桂林理工大学数学建模协会学习部干部</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2011-2012年度任班级学习委员</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2010-2011年度任班级文艺委员</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">荣誉奖项</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2010-2011年度荣获“国家励志奖学金”</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 桂林理工大学2011-2012年度“二等奖学金”</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 桂林理工大学2010-2011年度“一等奖学金”</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 桂林理工大学2011-2012年度“三好学生”</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 桂林理工大学2010-2011年度“三好学生”</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 桂林理工大学2010-2011年度校运会方块队“优秀个人”</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 桂林理工大学数学建模协会2011-2012年度秋季“优秀干部奖”</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 桂林理工大学数学建模协会2011-2012年度春季“优秀组织奖”</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 桂林理工大学数学建模协会2010-2011年度“最佳进步奖”</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 全国计算机二级（C语言）证书</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 全国计算机联考（广西区）二级证书</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 全国计算机联考（广西区）一级证书</span></p>', '10级荣誉顾问', '2017-09-18', 'GLUTSM', '0', '1714', '0');
INSERT INTO `student` VALUES ('4', '黄其升', '男', '广西北海', '1992年10月', '共青团员', '理学院 信息与计算科学11-1班', '我路由我，不由他！', 'static/student/969466d4-b3e0-40f6-a01e-d3b19c799391.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆&nbsp;姓&nbsp;&nbsp;&nbsp;&nbsp;名：黄其升</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆&nbsp;籍&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贯：广西北海</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 出生年月：1992年10月</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 政治面貌：共青团员</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 系院班级：理学院 信息与计算科学11-1班</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆&nbsp;座&nbsp;右&nbsp;铭：我路由我，不由他！</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">任职情况</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2011-2012 年度任桂林理工大学数学建模协会学习部干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2012-2013 年度任桂林理工大学数学建模协会会长</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2013-2014年度任桂林理工大学数学建模协会荣誉顾问</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">荣誉奖项</strong></p><p><span style=\"color: rgb(51, 51, 51);\">◆全国计算机联考一级证书</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆桂林理工大学2011-2012年度三等奖学金</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆桂林理工大学数学建模协会2011-2012学年秋季学期优秀干事奖</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆桂林理工大学数学建模协会2011-2012学年度优秀干部奖</span></p>', '11级荣誉顾问', '2017-09-18', 'GLUTSM', '0', '1190', '0');
INSERT INTO `student` VALUES ('5', '覃丽燕', '女', '广西北海', '1992年9月', '共青团员', '理学院 信息与计算科学11-2班', null, 'static/student/d93b19ad-a850-4c98-b2a1-5bdf8e189c88.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 姓&nbsp;&nbsp;&nbsp;名：覃丽燕</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 籍&nbsp;&nbsp;&nbsp;贯：广西北海</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 出生年月：1992年9月</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 政治面貌：共青团员</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 系院班级：理学院 信息与计算科学11-2班</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">任职情况</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2011~2012年度任班级文艺委员</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2011~2012年度任桂林理工大学数学建模协会信息部干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2012~2013年度任桂林理工大学数学建模协会团支书</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">荣誉奖项</strong></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 全国计算机一级（广西区）考试</span></p>', '11级团支书', '2017-09-20', 'GLUTSM', '0', '1046', '0');
INSERT INTO `student` VALUES ('6', '周强', '男', '广西南宁', '1993年11月', '共青团员', '理学院信息与计算科学12-1班', '尽力而为，随性而安。', 'static/student/89b59dfa-47e6-4179-91d6-437263ceda87.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 姓&nbsp;&nbsp;&nbsp;名：周&nbsp;强</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 籍&nbsp;&nbsp;&nbsp;贯：广西南宁</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 出生年月：1993年11月</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 政治面貌：共青团员</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 院系班级：理学院信息与计算科学12-1班</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 座&nbsp;右&nbsp;铭：尽力而为，随性而安。</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">任职情况</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2012-2013年度任桂林理工大学数学建模协会学习部干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2013-2014年度任桂林理工大学数学建模协会会长</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">荣誉奖项</strong></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 全国计算机联考一级考试证书</span></p>', '12级荣誉顾问', ' 2017-09-21', 'GLUTSM', '0', '1127', '0');
INSERT INTO `student` VALUES ('7', '方肇星', '男', '福建漳州', '1994年1月', '', '理学院应用统计学', '有你必有我', 'static/student/0fbe9841-5d07-4d4f-99e0-e83232e1cae4.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 姓&nbsp;&nbsp;&nbsp;名：方肇星</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 籍&nbsp;&nbsp;&nbsp;贯：福建漳州</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 出生年月：1994年1月</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 院系班级：理学院应用统计学</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 座&nbsp;右&nbsp;铭：有你必有我</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">任职情况</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2013年任桂林理工大学数学建模协会策划部干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2014年任桂林理工大学数学建模协会会长</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2014年任桂林理工大学数学建模协会荣誉顾问</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">荣誉奖项</strong></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 2013年度全国高等学校计算机等级考试（广西考区）一级证书</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 2013年第二届入党积极分子培训班优秀学员</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 2012-2013年度数学建模协会优秀干部奖</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 2014-2015度数学建模协会特别贡献奖</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 第二届溢达创意大赛广西赛区三等奖</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 第二届溢达创意大赛桂林理工大学三等奖</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 2014年第九届干部培训班优秀学员</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 2015年第七届社团文化节人气社团明星</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 2015年常用软件操作大赛一等奖</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 2014年度全国计算机二级MS office高级应用</span></p>', '13级荣誉顾问', '2017-10-09', 'GLUTSM', '0', '1115', '0');
INSERT INTO `student` VALUES ('8', '刘旭阳', '男', '内蒙古赤峰', '1996年1月', '共青团员', '理学院统计14-2班', '随遇而安', 'static/student/7f7ca5ec-ed4f-4d53-8244-c61f4e872dec.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 姓&nbsp;&nbsp;名：刘旭阳</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 籍&nbsp;&nbsp;贯：内蒙古赤峰</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 出生年月：1996年1月</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 政治面貌：共青团员</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 院系班级：理学院统计14-2班</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 座&nbsp;右&nbsp;铭：随遇而安</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">任职情况</strong></p><p><span style=\"color: rgb(51, 51, 51);\">● 2014-2015年度任班级班长</span></p><p><span style=\"color: rgb(51, 51, 51);\">● 2014-2015年度任桂林理工大学数学建模协会学习部干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">● 2015-2016年度任桂林理工大学数学建模协会会长</span></p><p><span style=\"color: rgb(51, 51, 51);\">● 2016-2017年度任桂林理工大学数学建模协会荣誉顾问</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">荣誉奖项</strong></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 全国计算机等级考试Access二级</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆&nbsp;全国计算机等级考试数据库三级</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 第七届全国大学生市场调查与分析大赛广西区一等奖</span></p>', '14级荣誉顾问', '2017-09-22', 'GLUTSM', '0', '1129', '0');
INSERT INTO `student` VALUES ('9', '王立相', '男', '山东嘉祥', '1999年4月', '共青团员', '信息学院计算机类17-8班', '生而为人为了何？', 'static/student/a9c1b925-4a09-4f97-9636-56df2f23d42b.png', '<p><strong>基本信息</strong></p><p>☆姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：王立相</p><p>☆籍&nbsp;&nbsp;&nbsp;&nbsp;贯：山东嘉祥</p><p>☆出生年月：1999年4月</p><p>☆政治面貌：共青团员</p><p>☆院系班级：信息学院计算机类17-8班</p><p>☆座 右 铭：生而为人为了何？</p><p>&nbsp;</p><p><strong>任职情况</strong></p><p>★2017年9月-2018年7月任桂林理工大学数学建模协会基地干事</p><p>★2018年7月-至今任桂林理工大学数学建模协会学术副会长</p><p>&nbsp;</p><p><strong>荣誉奖项</strong></p><p>◆2018年全国大学生数学建模竞赛国家级二等奖</p><p>◆2018年五一数学建模联赛S奖</p><p>◆2018年亚太杯数学建模竞赛二等奖</p><p>◆2018年数学中国国际建模赛二等奖</p><p>◆2018年蓝桥杯校选赛一等奖</p><p>◆2018年数理节python大赛一等奖</p>', '17级学术副会长', '2019-02-01', 'GLUTSM', '0', '797', '0');
INSERT INTO `student` VALUES ('10', '谭雯丹', '女', '广西贵港', '1999.8', '共青团员', '理学院信科17-1班', '我爱数模', 'static/student/69da9a4d-8bf9-414f-83ed-dc6f2428093e.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆姓&nbsp;&nbsp;&nbsp;名：谭雯丹</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆籍&nbsp;&nbsp;&nbsp;贯：广西贵港</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆出生年月：1999.8</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆政治面貌：共青团员</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆院系班级：理学院信科17-1班</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆座 右&nbsp;铭：我爱数模</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">任职情况</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★2017年10月—2018年6月，担任数学建模协会秘书部干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">★2018年9月—至今，担任数学建模协会团支书</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">荣誉奖项</strong></p><p><span style=\"color: rgb(51, 51, 51);\">◆2018年五一数学建模竞赛成功参赛奖</span></p>', '17级团支书', '2019-01-31', 'GLUTSM', '0', '675', '0');
INSERT INTO `student` VALUES ('11', '杨婧弘', '女', '广西钦州', '1998.12', '共青团员', '理学院应用统计17-1班', '与优秀同行！', 'static/student/3e6cd400-d6f7-4dd1-b402-3b0708f2f65b.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆姓&nbsp;&nbsp;&nbsp;名:杨婧弘</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆籍&nbsp;&nbsp;&nbsp;贯:广西钦州</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆出生年月:1998.12</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆政治面貌:共青团员</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆院系班级:理学院应用统计17-1班</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆座 右&nbsp;&nbsp;铭:与优秀同行！</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">任职情况</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★2017年10月～2018年6 月：担任数学建模协会组织部干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">★2018年9月～至今：担任数学建模协会行政副会长</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">荣誉奖项</strong></p><p><span style=\"color: rgb(51, 51, 51);\">◆&nbsp;2018年全国大学生数学建模竞赛成功参赛</span></p>', '17级行政副会长', '2019-01-31', 'GLUTSM', '0', '799', '0');
INSERT INTO `student` VALUES ('12', '林建宏', '男', '广西桂林', '19980831', '共青团员', '理学院 信息与计算科学17-2', '所谓成长，不是学到，就是得到', 'static/student/de62c727-f7b6-43df-8754-fd5254e7ed4b.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆&nbsp;姓&nbsp;&nbsp;&nbsp;名：林建宏</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆&nbsp;籍&nbsp;&nbsp;&nbsp;贯：广西桂林</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆&nbsp;出生年月：19980831</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆&nbsp;政治面貌：共青团员</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆&nbsp;院系班级：理学院 信息与计算科学17-2</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆&nbsp;座&nbsp;右&nbsp;铭：所谓成长，不是学到，就是得到</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">任职经历</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★2017年九月至2018年七月任桂林理工大学数学建模协会基地部干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">★2018年七月至今任桂林理工大学数学建模协会会长</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">荣誉奖项</strong></p><p><span style=\"color: rgb(51, 51, 51);\">◆&nbsp;18年美赛S奖</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆&nbsp;五一联赛S奖</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆&nbsp;18年国赛国家级二等奖</span></p><p><br></p>', '17级会长', '2019-01-31', 'GLUTSM', '0', '774', '0');
INSERT INTO `student` VALUES ('13', '黄维国', '男', '广西桂平', '1997年9月', '共青团员', '理学院应用物理16-1班', '莫让生活磨灭了我们的天性和善良\r\n莫让生活磨灭了我们的天性和善良\r\n莫让生活磨灭了我们的天性和善良', 'static/student/fe05115f-a8eb-4ebf-9973-39b038ab432d.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 姓&nbsp;&nbsp;&nbsp;&nbsp;名：黄维国</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 籍&nbsp;&nbsp;&nbsp;&nbsp;贯：广西桂平</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 出生年月：1997年9月</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 政治面貌：共青团员</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 院系班级：理学院应用物理16-1班</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 座&nbsp;右&nbsp;铭：莫让生活磨灭了我们的天性和善良</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">任职情况</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2016年10月-2017年7月任桂林理工大学数学建模协会学习部干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2017年7月-至今任桂林理工大学数学建模协会会长</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">荣誉奖项</strong></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 2017年桂林理工大学数学建模选拔赛三等奖</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 2017年理学院物理实验竞赛三等奖</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 2017年桂林理工大学电子设计比赛一等奖</span></p>', '16级会长', '2017-10-10', 'GLUTSM', '0', '1122', '0');
INSERT INTO `student` VALUES ('14', '张宏敏', '女', '河北张家口', '1998年4月', '共青团员', '理学院信科16-1班', '谨慎和自制是智慧的源泉', 'static/student/62b168fd-f2a7-4f31-9f59-a027e2f0337c.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 姓&nbsp;&nbsp;&nbsp;名：张宏敏</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 籍&nbsp;&nbsp;&nbsp;贯：河北张家口</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 出生年月：1998年4月</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 政治面貌：共青团员</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 院系班级：理学院信科16-1班</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 座&nbsp;右&nbsp;铭：谨慎和自制是智慧的源泉</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">任职情况</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2016年10月-2017年7月任桂林理工大学数学建模协会信息部干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2017年7月-至今任桂林理工大学数学建模协会行政副会长，信息部副部长</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">荣誉奖项</strong></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 全国大学生英语等级考试四级</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆&nbsp;桂林理工大学2016-2017年度一等奖学金</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 2017年理学院手机界面设计大赛三等奖</span></p>', '16级副会长', '2017-10-10', 'GLUTSM', '0', '1134', '0');
INSERT INTO `student` VALUES ('15', '李振钦', '男', '广西玉林', '1997年10月', '共青团员', '理学院信科16-2班', '青春没有选择，只有试一试', 'static/student/2df83f75-40bb-498e-ba6f-226eab529057.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 姓&nbsp;&nbsp;&nbsp;名：李振钦</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 籍&nbsp;&nbsp;&nbsp;贯：广西玉林</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 出生年月：1997年10月</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 政治面貌：共青团员</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 院系班级：理学院信科16-2班</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆&nbsp;座&nbsp;右&nbsp;铭：青春没有选择，只有试一试</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">任职情况</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2016年10月-2017年7月任桂林理工大学数学建模协会杂志社干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2017年7月-至今任桂林理工大学数学建模协会学术副会长，学习部部长</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">荣誉奖项</strong></p><p><span style=\"color: rgb(51, 51, 51);\">◆2016年秋季学期数学建模协会优秀干部奖</span></p>', '16级副会长', '2017-10-10', 'GLUTSM', '0', '1115', '0');
INSERT INTO `student` VALUES ('16', '姚盈盈', '女', '广西柳州', '1997年10月', '共青团员', '环境科学与工程学院环境工程16-2班', '有时候努力一点，是为了让自己有资格不去做不喜欢的事', 'static/student/580ef056-2752-4b46-a0d1-e6c7ffce7521.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 姓&nbsp;&nbsp;&nbsp;名：姚盈盈</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 籍&nbsp;&nbsp;&nbsp;贯：广西柳州</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 出生年月：1997年10月</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 政治面貌：共青团员</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 院系班级：环境科学与工程学院环境工程16-2班</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 座&nbsp;右&nbsp;铭：有时候努力一点，是为了让自己有资格不去做不喜欢的事</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">任职情况</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★&nbsp;2016.10-2017.7担任桂林理工大学数学建模协会宣传部干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">★&nbsp;2017.10至今担任桂林理工大学数学建模协会宣传部副部长，宣传委员</span></p>', '16级宣传部副部长', '2017-10-09', 'GLUTSM', '0', '1120', '0');
INSERT INTO `student` VALUES ('17', '黄广福', '男', '广西玉林', '1997年5月', '共青团员', '理学院信科16-2班', '从来虚左以待，终将如期而至。', 'static/student/ac982da1-2498-43a8-bd82-c06ad288f4e1.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 姓&nbsp;&nbsp;&nbsp;名：黄广福</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 籍&nbsp;&nbsp;&nbsp;贯：广西玉林</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 出生年月：1997年5月</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 政治面貌：共青团员</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 院系班级：理学院信科16-2班</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 座&nbsp;右&nbsp;铭：从来虚左以待，终将如期而至。</span></p><p><strong style=\"color: rgb(51, 51, 51);\">任职情况</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2016年10月-2017年7月任桂林理工大学数学建模协会信息部干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2017年7月-至今任桂林理工大学数学建模协会信息部部长</span></p><p><strong style=\"color: rgb(51, 51, 51);\">荣誉奖项</strong></p><p><span style=\"color: rgb(51, 51, 51);\">◆2016年秋季学期数学建模协会优秀干部奖</span></p><p><span style=\"color: rgb(51, 51, 51);\">◆全国大学生英语等级考试四级</span></p>', '16级信息部部长', '2017-10-09', 'GLUTSM', '1', '1301', '0');
INSERT INTO `student` VALUES ('18', '聂岳正', '男', '广西苍梧', '1997年10月', '共青团员', '环境科学与工程学院水利类16-1班', '态度决定高度', 'static/student/9abc009f-4b61-4c04-b0f3-558c124cbe38.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 姓&nbsp;&nbsp;&nbsp;&nbsp;名：聂岳正</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 籍&nbsp;&nbsp;&nbsp;&nbsp;贯：广西苍梧</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 出生年月：1997年10月</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 政治面貌：共青团员</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 院系班级：环境科学与工程学院水利类16-1班</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 座&nbsp;右&nbsp;铭：态度决定高度</span></p><p><strong style=\"color: rgb(51, 51, 51);\">任职情况</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2016年10月-2017年7月任桂林理工大学数学建模协会学宣传部干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2017年7月-至今任桂林理工大学数学建模协会宣传部部长</span></p><p><strong style=\"color: rgb(51, 51, 51);\">荣誉奖项</strong></p><p><span style=\"color: rgb(51, 51, 51);\">◆ 2016年秋季学期获数学建模协会优秀干部奖</span></p>', '16级宣传部部长', '2017-10-09', 'GLUTSM', '0', '1467', '0');
INSERT INTO `student` VALUES ('19', '郭辉', '男', '山西大同', '1995年11月', '共青团员', '理学院应用统计16-4班', '人生路上且行且珍惜', 'static/teacher/1d341274-edd3-4067-9f2b-e461d5ad5705.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 姓&nbsp;&nbsp;&nbsp;名：郭辉</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 籍&nbsp;&nbsp;&nbsp;贯：山西大同</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 出生年月：1995年11月</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 政治面貌：共青团员</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 院系班级：理学院应用统计16-4班</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 座&nbsp;右&nbsp;铭：人生路上且行且珍惜</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">任职情况</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2016年10月-2017年7月任桂林理工大学数学建模协会策划部干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2017年7月至今任桂林理工大学数学建模协会策划部部长</span></p>', '16级策划部部长', '2017-10-09', 'GLUTSM', '0', '1101', '0');
INSERT INTO `student` VALUES ('20', '谈俊伽', '男', '广西百色', '1997年3月', '共青团员', '土木与建筑工程学院工程管理2016-1班', '怀仁克己，明善诚身', 'static/teacher/c1efd192-b156-46e2-a562-e8e200be6040.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本信息</strong></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 姓&nbsp;&nbsp;&nbsp;名：谈俊伽</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 籍&nbsp;&nbsp;&nbsp;贯：广西百色</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 出生年月：1997年3月</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 政治面貌：共青团员</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 院系班级：土木与建筑工程学院工程管理2016-1班</span></p><p><span style=\"color: rgb(51, 51, 51);\">☆ 座&nbsp;右&nbsp;铭：怀仁克己，明善诚身</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">任职情况</strong></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2016年10月-2017年7月任桂林理工大学数学建模协会基地干事</span></p><p><span style=\"color: rgb(51, 51, 51);\">★ 2017年7月-至今任桂林理工大学数学建模协会学习部副部长</span></p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">荣誉奖项</strong></p><p><span style=\"color: rgb(51, 51, 51);\">◆入党积极分子培训班结业考试荣获‘优秀学员’称号</span></p>', '16级学习部副部长', ' 2017-09-09', 'GLUTSM', '0', '898', '0');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `usex` varchar(5) DEFAULT NULL,
  `uprofession` varchar(10) DEFAULT NULL,
  `unativeplace` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uintroduction` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `uaddress` varchar(100) DEFAULT NULL,
  `uphonenum` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uemail` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ufaceaddress` varchar(255) DEFAULT NULL,
  `udesc` mediumtext,
  `udate` varchar(20) DEFAULT NULL,
  `ufrom` varchar(10) DEFAULT NULL,
  `ucomment` int DEFAULT NULL,
  `ureaders` int DEFAULT NULL,
  `uthumbup` int DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1015 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '唐国强', '男', '教授', '湖南永州人', '唐国强，男，湖南永州人，博士，教授，硕士生导师，理学院副院长。研究兴趣为应用统计和保险精算。桂林理工大学数学建模协会学术指导老师。', '广西桂林市建干路12号，桂林理工大学理学院（邮编：541004）', '0773-5897055', 'tanggq@glut.edu.cn', 'static/teacher/207ea205-ca59-4b04-887f-14e14846ad57.png', '<p><strong>1、基本情况</strong></p><p><strong>&nbsp;&nbsp;&nbsp;唐国强</strong>，男，湖南永州人，博士，教授，硕士生导师，理学院副院长。研究兴趣为应用统计和保险精算。桂林理工大学数学建模协会学术指导老师。</p><p><span style=\"color: rgb(68, 68, 68);\">联系地址：广西桂林市建干路12号，桂林理工大学理学院（邮编：541004）</span></p><p><span style=\"color: rgb(68, 68, 68);\">联系电话：0773-5897055</span></p><p><span style=\"color: rgb(68, 68, 68);\">电子邮址：</span><a href=\"mailto:tanggq@glut.edu.cn\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">tanggq@glut.edu.cn</a></p><p>&nbsp;</p><p><strong>2、个人主要经历</strong></p><ul><li>1995年湖南师范大学，获理学学士学位</li><li>1998年昆明理工大学，获应用数学硕士学位</li><li>2009年华东师范大学，获概率论与数理统计博士学位</li><li>1998-至今就教于桂林理工大学理<span style=\"color: rgb(68, 68, 68);\">学院</span></li></ul><p>&nbsp;</p><p><strong>3、主要荣誉奖励</strong></p><ol><li>2017年指导学生获第五届“泰迪杯”数据挖掘挑战赛一等奖</li><li>2016年大学生全国数学建模竞赛广西赛区优秀组织者</li><li>2015年获桂林理工大学微课比赛一等奖</li><li>2014年指导学生获2014年全国大学生数学建模全国一等奖</li><li>2014年获2014年广西区数学建模广西赛区优秀指导老师</li><li>2013年获广西高校大学生优秀社团指导老师</li><li>2013年获桂林理工大学大学生科技立项特等奖</li><li>2012年获广西区教学成果奖一等奖（排名第三）“基于大学生创新能力培养的地方高校数学实验系列课程改革与实践”</li><li>2011年获2001-2011年全国大学生数学建模竞赛优秀指导老师（全国优秀指导老师）</li><li>2012年获全国大学生数学建模竞赛广西赛区优秀组织工作者</li><li>2011年获全国大学生数学竞赛广西赛区优秀指导老师</li><li>2011年获《数值分析网络课程》获“第十一届全国多媒体课件大赛”获高教理工组优胜奖（排名第二）</li><li>2012年获桂林理工大学教学成果特等奖（排名第三）</li><li>2011年获全国大学生数学建模竞赛2009-2011年广西赛区优秀指导老师</li><li>2011年获《数值分析》课件荣获第八届广西高等教育教学软件大赛评比优胜奖</li><li>2006年广西区科技进步奖二等奖（排名第四）</li><li>2007年桂林市2006年度劳动竞赛教学能手</li><li>2002年桂林工学院第六届“青年教师”讲课比赛一等奖</li><li>2006年桂林工学院（第一届）青年教师说课比赛一等奖</li><li>2005年全国大学生数学建模活动2001-2004年广西赛区优秀指导老师</li><li>2010年桂林理工大学学生科技活动优秀指导教师</li><li>2008年桂林理工大学学生科技活动优秀指导教师</li><li>2007年桂林理工大学学生科技活动优秀指导教师</li><li>2003年2001—2003年年度优秀共产党员，桂林工学院</li></ol><p>&nbsp;</p><p><strong>4、主持与参加的科研项目</strong></p><ol><li>2017年，基于随机神经网络的空间信息大数据分布式学习，广西重点实验室主任项目，参与</li><li>2016年，西南民族村寨旅游扶贫效应及其对聚落空间演变的影响机理研究，国家自然科学基金，参与</li><li>2016区教改重点项目《高等数学》课程组混合教学模式改革研究与实践（项目编号：2016JGZ128），主持</li><li>2015广西财经学院数量经济学重点实验室项目，主持</li><li>2013年广西重点项目，非参数估计方法的概率极限理论及其在经济的应用研究（2013GXNSFDA019001），2013.4—2016.3，参与</li><li>工程建筑变形监测多尺度因果模型研究与应用（桂科能1103108-20），广西空间信息与测绘重点实验室（2011），主持</li><li>桂林旅游可持续发展综合评价模型及提升对策研究（项目编号：20110120-5），桂林市科技局（2011），主持</li><li>多因素影响微分系统定性研究与仿真分析（11161015），国家自然科学基金(2011),参与（排名第一）</li><li>综合评价方法研究及应用，桂林理工大学博士科研启动基金资助项目（2010），主持</li><li>现代统计模型与经验费率的研究，广西教育厅科研项目（2007年面上项目），主持</li><li>含瞬时态、具有突变率、不可和广义生灭过程，广西教育厅科研项目（2003年度面上项目，资助金额），参与</li><li>马尔可夫骨架过程与风险决策理论，广西科技厅项目（项目编号：桂科自0339071），参与</li><li>Markov跳跃随机时滞过程及其在数理金融等的应用，广西科技厅项目（桂科自0447096），参与</li><li>从广义生灭过程到一般马氏过程的若干问题研究，广西人事厅（广西“新世纪十百千人才工程”专项资金），参与</li></ol><p>&nbsp;</p><p><strong>5、主持与参加的教学项目</strong></p><ol><li>2013，《数据分析》课程，桂林理工大学2013年教学方法改革立项，</li><li>2011，《数据分析》教材，桂林理工大学“十二五”规划教材建设立项，主持</li><li>2001年，主持，数学建模教学研究与实践，桂林工学院2001年教育科学研究立项项目</li><li>2009年，主持，信息与计算科学专业教学内容与课程体系改革研究与实践，桂林理工大学2009年教改工程立项项目（2009B09）</li><li>2011年，主持，信息与计算科学专业研究性实践教学改革研究与实践，广西区2011教改工程立项项目（2011JGA055）</li><li>2002年，参加，数学实验课程的探索与实践，广西教育厅项目，项目编号：2001B94</li><li>2008年，参加，数学实验系列课程与创新人才培养的研究与实践，新世纪广西高等教育教学改革“十一五”第四批立项资助项目（2008B078）</li><li>《线性代数》区级精品课程课程主讲教师，（桂教高教〔2007〕111号，200708）</li><li>《统计学区》级精品课程课程主讲教师，（桂教高教〔2008〕133号，200809）</li><li>《运筹学》区级精品课程课程主讲教师，（桂教高教〔2010〕100号,201008）</li></ol><p>&nbsp;</p><p><strong>6、近期发表的科研论</strong>文</p><ol><li>唐国强，高伟，覃良文，林同智，基于切比雪夫不等式的白糖高频数据统计套利，统计与决策：2016.1：11-14.</li><li>林同智，唐国强，罗盛锋，高伟，覃良文，基于改进熵值赋权法和TOPSIS模型的综合评价应，桂林理工大学学报，2015.8：622-628.</li><li>覃良文，唐国强，林静，基于HP滤波和协整理论的期货套利研究，湖北大学学报，2015.11:571-578.</li><li>高伟，唐国强，林同智，基于变结构协整方法的期货市场与证券市场关联性分析——沪深300股指期货与沪深300指数的实证分析，数学的实践与认识，2014.8,44(16):65-73</li><li>苏红柳，唐国强，孙国华，二阶有效度组合模型在沉降变形预测中的应用，测绘科学，网络出版时间：2014-02-10 10:03</li><li>孙国华，苏红柳，唐国强，期货市场尾部相关性的Copula度量，桂林理工大学学报,2014.5,34(2)：401-405</li><li>韦云，唐国强，徐俊杰，指标体系的构建模型，统计与决策，2013.2,：8—10，ISSN 1002—6487，CN42—1009/C</li><li>Yuanfu Shao,Guoqiang Tang,Existence of periodic solution and persistence for a delayed predator-prey system with diffusion and impulse, J.Appl.Math &amp; Information,2012,30(3):429-444,Websitehttp://www.kcam.biz.</li><li>Yuanfu Shao,Guoqiang Tang,Wu Ai,Exponential periodic attractor and exponential convergence of a class of function differential equation with time-varying delays.Applied Mathematics.42(2012):6157-6163,www.elixirournal.org,ISSN 2229-712X.</li><li>Guoqiang Tang,Yuanfu Shao, Existence of positive periodic solutions for impulsive functional differential equations on time scales，Advances and Applications in Mathematical Sciences，2011.10,10(6):571-582.</li><li>韦静，唐国强，混合随机变量序列加权和最大值的几乎处处收敛性，桂林理工大学学报,2011.11,31(4):633-636.</li><li>Junjie Xu, Guoqiang Tang, Yun Wei，A Reasonable Test of Expert’s Experimental Data，International Journal of Information and Communication Technology Research，Vol. 2, No.4 April 2012：395-401.</li><li>Qiqing Song，Guoqiang Tang，On essential stable sets of solutions in set optimization problems，Journal of Optimization Theory and Applications(SCI)，2012</li><li>Yuanfu Shao, Li Pl, Guoqiang Tang,Dynamic Analysis of an Impulsive Predator-Prey Model with Disease in Prey and Ivlev-Type Functional Response，Abstract and Applied Analysis (SCI),2012</li><li>唐国强,具有线性趋势的信度模型的估计与检验,应用概率统计, 2009, 25(3): 290～300</li><li>唐国强, Buhlmann-Straub信度模型的估计与检验,华东师范大学学报（自然科学版）2008, 5: 59～65</li><li>唐国强,随机利率双二项风险模型的破产问题,桂林工学院学报, 2007, 27(2): 285～289</li><li>唐国强,投资连结型寿险的初始准备金和定价,经济数学, 2007, 24(4): 363～369</li><li>唐国强,常数利率双二项风险模型的破产问题,广西科学, 2007, 14(1): 35～38</li><li>唐国强,带息双二项风险模型的破产问题,经济数学, 2006, 27(2): 235～242</li><li>唐国强,成数再保险和超额赔款再保险策略,广西科学院学报, 2006, 22(1): 58～59 63</li><li>唐国强,混合序列加权和的完全收敛性和强收敛性,桂林工学院学报, 2004, 24(1): 100～102</li></ol><p>&nbsp;</p><p><strong>7、发表的主要教学论文</strong></p><ol><li>唐国强,在大学数学教学中实施素质教育,桂林工学院学报（教学研究增刊）, 2001, 21 (6): 57～59</li><li>唐国强,杨端翠,改革实验教学、培养创新人才,中国地质教育, 2002(1): 52～54</li><li>唐国强,杨端翠.大学数学教学中注重能力的培养论文,中国地质教育, 2003(1): 23～24</li><li>唐国强,提高教师课堂教学水平的若干思考,桂林工学院学报（教学研究增刊）, 2003, 23: 49～51</li><li>唐国强,将创新能力的培养融入数学教学之中,桂林工学院学报（教学研究增刊）,2007(6): 109～111</li><li>唐国强,我院学生学习“高等数学”情况调查及分析,桂林工学院学报（教学研究增刊）, 2008, 28: 112～115</li><li>唐国强,实施研究性教学、培养创新人才,教育与探索, 2010.9: 14~105</li></ol>', '2017-09-1', '理学院', '74', '3283', '5');
INSERT INTO `teacher` VALUES ('2', '莫绍弟', '男', '副教授', '广西平乐人', '莫绍弟，男，广西平乐人，1965年生，副教授，桂林理工大学理学院教师。', '广西桂林市建干路12号，桂林理工大学 理学院 （邮编：541004）', '0773-5896179', 'glmsmsd@163.com', 'static/teacher/b0d7792e-f4bc-4c65-a665-7647c8572245.png', '<p><strong>1、 基本情况</strong></p><p><strong>&nbsp;&nbsp;&nbsp;莫绍弟</strong>，男，广西平乐人，1965年生，副教授，桂林理工大学理学院教师。</p><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>联系地址：广西桂林市建干路12号，桂林理工大学 理学院 （邮编：541004）</p><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>联系电话：0773-5896179</p><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong>电子邮址：<a href=\"mailto:glmsmsd@163.com\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">glmsmsd@163.com</a></p><p>&nbsp;</p><p><strong>2、 个人主要经历</strong></p><ul><li>1987年广西<span style=\"color: rgb(68, 68, 68);\">师范大学数学系，获理学学士&nbsp;</span></li><li>2004年广西师范大学，课程教学论数学教学论研究生毕业&nbsp;</li><li>1987～2006 林民族师范学校，任教&nbsp;</li><li>2006～至今 林理工大学<span style=\"color: rgb(68, 68, 68);\">理学院，任教&nbsp;</span></li></ul><p>&nbsp;</p><p><strong>3、 主要荣誉奖励</strong></p><ul><li>2000<span style=\"color: rgb(68, 68, 68);\">年教学课件“小学数学教学法”获全国中师计算机辅助教学软件比赛一等奖。&nbsp;</span></li><li>2000年教学课件“小数教—小学数学教法”获全区中师年会评比一等奖。&nbsp;</li><li>2001年教学课件“小教大专小学数学教法及组合优化”获全区高等教育教学软件大赛鼓励奖。&nbsp;</li><li>2002课堂教学“数学学习”获全区小学数学教学（专科）研究会课堂教学比赛一等奖。&nbsp;</li><li>2006年、2009年指导学生参加全国当堂建模竞赛获全国一等奖、全区三等奖。&nbsp;</li><li>1997年、2007年、2009年三次获学校学生科技活动优秀指导教师奖。&nbsp;</li><li>1997年、2001年2003年三次评为学校优秀共产党员。&nbsp;</li><li>曾4次被评为优秀班主任，2次优秀教师，6次最受学生欢迎的教师。&nbsp;</li></ul><p>&nbsp;</p><p><strong>4、 主要研究项目</strong></p><ol><li>院级精品课程线性代数，桂林工学院精品课程建设项目，桂工院教（2006）14号，参加.&nbsp;</li><li>自治区级精品课程线性代数，新世纪教改工程立项项目，桂教高教〔2007〕111号，参加.&nbsp;</li><li>教改课题《大众化教育背景下提高大学数学教学质量有效机制研究》2010B31主要参与者&nbsp;</li></ol><p>&nbsp;</p><p><strong>5、 近期发表的科研论文</strong></p><ol><li>莫绍弟, 小教大专《小学数学教学概论》教学的尝试与研究, 广西师院学报(自然科学版), 2001(增刊): 43-45&nbsp;</li><li>莫绍弟, 浅议在新课程改革中教师角色的变化, 广西教育2008, 8: 16-17&nbsp;</li><li>莫绍弟, 复数高考题的类型及解法, 中学理科2002, 9: 4-6&nbsp;</li><li>莫绍弟, 读《论语》有感--浅谈大学生的自我修养, 中国教育教学杂志, 2007, 6: 18490-18491&nbsp;</li><li>莫绍弟, 数学应用题的几类建模方法, 科教文汇, 2007, 9:&nbsp;</li><li>莫绍弟, 数学与实用性——与文科大学生谈数学, 科教文汇, 2008、8: 144&nbsp;</li><li>莫绍弟, 工科数学教学的思考, 科教文汇, 2008, 12: 105&nbsp;</li><li>莫绍弟, 诠释桂林理工大学办学理念, 科教文汇, 2009, 10: 57&nbsp;</li><li>莫绍弟, 大学生的自我修养与择业, 科教文汇, 2010, 7: 192-193&nbsp;</li><li>莫绍弟, 提高大学数学教学质量之探讨, 科教文汇, 2010, 11: 84-85.&nbsp;</li></ol><p><br/></p>', '2017-09-18', '理学院', '0', '1042', '0');
INSERT INTO `teacher` VALUES ('3', '杨秀前', '男', '副教授', '广西省钟山县人', '杨秀前，男，广西省钟山县人，副教授，基础数学教研室副主任。', '广西桂林市建干路12号，桂林理工大学 理学院 （邮编：541004）', '0773-5896179', 'yangxiuqian2002@163.com', 'static/teacher/95efe4a2-e6a4-44b4-b885-7d4804898e6e.png', '<p><strong>1、 基本情况</strong></p><p><strong>&nbsp;&nbsp;杨秀前</strong>，男，广西省钟山县人，副教授，基础数学教研室副主任。</p><p>&nbsp;&nbsp;联系地址：广西桂林市建干路12号，桂林理工大学 理学院 （邮编：541004）</p><p>&nbsp;&nbsp;联系电话：0773-5896179</p><p>&nbsp;&nbsp;电子邮址：<a href=\"mailto:yangxiuqian2002@163.com\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">yangxiuqian2002@163.com</a></p><p>&nbsp;</p><p><strong>2、 个人主要经历</strong></p><ul><li>1988年<span style=\"color: rgb(68, 68, 68);\">广西师范大学数学系，获理学学士&nbsp;&nbsp;</span></li><li>1994～1997：广西师范大学计算机应用与维护专业学习&nbsp;&nbsp;</li><li>2000～2002：广西师范大学计算机软件与理论专业研究生班学习&nbsp;&nbsp;</li><li>1988～2004：桂林民族师范学校，任教&nbsp;&nbsp;</li><li>2005～目前：桂林理工大学<span style=\"color: rgb(68, 68, 68);\">理学院，副教授；基础数学教研室副主任&nbsp;</span></li></ul><p>&nbsp;</p><p><strong>3、 主要荣誉奖励</strong></p><ul><li>获2002～2003年度和2003～2004年度“优秀教师”&nbsp;&nbsp;</li><li>2007年指导学生参加全国大学生数学建模竞赛获广西赛区一等奖&nbsp;&nbsp;</li><li>获2007～2008年度和2008～2009年度桂林理工大学“学生科技活动优秀指导老师”称号&nbsp;&nbsp;</li><li>获桂林理工大学20<span style=\"color: rgb(68, 68, 68);\">08年教学优秀成果优秀奖，排名第一&nbsp;</span></li></ul><p>&nbsp;</p><p><strong>4、 主要研究项目</strong></p><ol><li>基础数学类精品课程建设与现代信息教育资源开发应用研究，主持&nbsp;&nbsp;</li><li>新世纪教改工程“十一五”第二批立项项目(桂教高教[2006]194号)&nbsp;&nbsp;</li><li>大众化教育背景下提高大学数学教学质量有效机制研究，主持&nbsp;&nbsp;</li><li>广西教育科学‘十一五’规划2010年度立项课题”（桂教科学[2010]8号）&nbsp;&nbsp;</li><li>“工科数学实验教学内容与结构优化改革的研究与实践”，参与&nbsp;&nbsp;</li><li>新世纪教改工程“十一五”第五批立项项目(桂教高教[2009]83号)&nbsp;</li></ol><p>&nbsp;</p><p><strong>5、 近期发表的教研论文</strong></p><ol><li>杨秀前, 大众化教育背景下如何提高大学数学教学质量, 中国科教创新导刊, 2010.29: 25&nbsp;&nbsp;</li><li>杨秀前, 大学数学多媒体辅助教学的实践与探索, 科教文汇, 2010.11(上旬刊): 86～90&nbsp;&nbsp;</li><li>杨秀前, 加强数学建模教学，促进学生能力发展, 产业与科技论坛, 2009.6&nbsp;&nbsp;</li><li>杨秀前, 引入数学实验与建模， 提高学生素质和能力,哲理, 2009.6&nbsp;&nbsp;</li><li>杨秀前, 基础数学类精品课程建设的探讨, 广西教育学院学报, 2008.1&nbsp;&nbsp;</li><li>杨秀前, 《线性代数》精品课程建设的探索与实践, 高校教育研究, 2008.7: 20～21&nbsp;&nbsp;</li><li>杨秀前, 信息技术与课程整合对数学教育的影响, 中国教育教学杂志, 2007.3, Vol.19, 140&nbsp;&nbsp;</li><li>杨秀前, 精品课程建设的关键是教师队伍建设第一作者, 中学理科, 2007.11: 93～94&nbsp;&nbsp;</li><li>杨秀前, 离散数学教学的一次创新实践与认识, 科教文汇, 2006.NO 7: 50～52&nbsp;&nbsp;</li><li>杨秀前, 基于粗糙集理论的考试评价模型及其应用, 广西教育学院学报, 2006.6</li></ol><p><br/></p>', '2017-09-18', '理学院', '0', '1000', '0');
INSERT INTO `teacher` VALUES ('4', '刘筱萍', '女', '副教授', '广西桂林人', '刘筱萍，女，广西桂林人，副教授，桂林理工大学教师', '广西桂林市建干路12号，桂林理工大学理学院（邮编：541004）', '0773-5896179', 'lhp@glite.edu.cn', 'static/teacher/781a0e50-a470-4f6f-a1e3-2dbe030089d4.png', '<p><strong>1、基本情况</strong></p><p><strong>&nbsp;&nbsp;&nbsp;刘筱萍</strong>，女，广西桂林人，副教授，桂林理工大学教师</p><p>联系地址：广西桂林市建干路12号，桂林理工大学理学院（邮编：541004）</p><p>联系电话：0773-5896179</p><p>电子邮址：<a href=\"mailto:lhp@glite.edu.cn\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">lhp@glite.edu.cn</a></p><p>&nbsp;</p><p><strong>2、个人主要经历</strong></p><ul><li>1984～1988，广西师范大学数学系学习，获理学学士</li><li>1991～1992，复旦大学学习</li><li>2001～2003，广西师范大学数学与计算机科学学院，代数及其应用方向研究生毕业</li><li>1988～今，桂林理工大学基础数学教研室任教</li></ul><p>&nbsp;</p><p><strong>3、主要荣誉奖励</strong></p><ul><li>2006年获21世纪第二届广西高等学校优秀教材三等奖</li><li>2009年获全国大学生数学建模竞赛广西赛区2005-2008年优秀指导教师</li><li>2010年获全国大学生数学竞赛广西区优秀指导教师</li></ul><p>&nbsp;</p><p><strong>4、主要研究项目</strong></p><ol><li>数学实验课程的探索与实践，新世纪广西高等教育改革工程项目（桂教高教[2002]88号），参与</li><li>西部大开发中多种经济成分的统计方法，广西区教育厅科研项目，（桂教科研[2003]22号），参与</li><li>桂林旅游经济效益的计量与评价，广西壮族自治区教育厅科研项目（桂教科研[2004]20号），负责人</li><li>超混沌的控制与同步研究，广西壮族自治区教育厅科研项目（桂教科研[2006]26号），参与</li><li>从广义生灭过程到一般马氏过程的若干问题研究，广西“新世纪十百千人才工程”专项基金资助（资助金批准号：2005214号），参与</li><li>基础数学类精品课程建设与现代信息教育资源开发应用研究，新世纪教改工程“十一五”第二批资助项目（桂教高教[2006]194号），参与</li></ol><p>&nbsp;</p><p><strong>5、已出版的专著和教材</strong></p><ol><li>概率统计，主编，冶金工业出版社，2005.2（2006年获21世纪第二届广西高等学校优秀教材三等奖）</li><li>统计实验，参编，国防工业出版社，2006.9</li><li>高等数学，参编，华中师范大学出版社，2009.8</li></ol><p>&nbsp;</p><p><strong>6、近期发表的科研论文</strong></p><ol><li>刘筱萍,不同分布混合序列的完全收敛性,桂林工学院学报, 2006, 26(2): 298-301</li><li>刘筱萍,鄢寒,吴群英,混合序列的不变原理,数学季刊, 2010, 25(3): 470-474</li><li>刘筱萍,鄢寒,吴群英,混合序列完全收敛性的一个注记,吉林大学学报, 2009, 47(2): 265-268</li><li>刘筱萍,陈曦,崔召全,含随机变量的企业人力资源培训,桂林工学院学报, 2008, 28(2): 279-281</li><li>刘筱萍,崔召全,陈曦,含随机变量的旅游线路车辆配送问题,商场现代化, 2008, 531: 253-254</li><li>伍艳春,刘筱萍,不同分布混合序列部分和的强收敛性,广西科学, 2006, 13(1): 17-18</li></ol><p>&nbsp;</p><p><strong>7、近期发表的教改论文</strong></p><ol><li>刘筱萍,数学教学“有趣易懂”提高听课率的实践与认识,科学时代, 2007, 9: 127-129</li><li>刘筱萍,林亮, “数学建模”教学与竞赛的实践与认识,中国教育与教学, 2006，4（2）：62-64．</li></ol>', '2017-09-18', '理学院', '0', '1008', '0');
INSERT INTO `teacher` VALUES ('5', '邓光明', '男', '教授', '', '邓光明，教授，硕士生导师，桂林理工大学应用统计研究所所长，中国商业统计学会理事，中国市场调查与教学研究分会理事，广西数学学会常务理事，广西科技项目评估咨询专家。', '广西桂林市建干路12号，桂林理工大学应用统计研究所邮编：541004', '0773-5896179', 'dgm@glut.edu.cn', 'static/teacher/7a3bd1f1-1747-4347-b0b1-e3dfb0365f7d.png', '<p><strong>&nbsp;&nbsp;&nbsp;邓光明</strong>，教授，硕士生导师，桂林理工大学应用统计研究所所长，中国商业统计学会理事，中国市场调查与教学研究分会理事，广西数学学会常务理事，广西科技项目评估咨询专家。主要研究方向：应用统计、抽样技术、复杂网络统计建模。长期从事统计学的教学和科研工作，在国内外重要期刊上公开发表学术研究论文40余篇，主持和参加国家和省厅级科研项目10余项，教改项目6项，主编和参编出版教材4部。</p><p><strong>联系方式</strong></p><ul><li>地址：广西桂林市建干路12号，桂林理工大学应用统计研究所邮编：541004&nbsp;&nbsp;&nbsp;</li><li>TheApplied Statistics Institute,Guilin University of Technology, Guilin, Guangxi,P.R.China&nbsp;&nbsp;&nbsp;</li><li>电话：0773-5896179 电子邮址：<span style=\"color: rgb(51, 51, 51);\">dgm@glut.edu.cn</span></li></ul><p><strong>近几年主要研究项目</strong></p><ol><li>空间定位抽样技术在民族地区经济调查中的理论及应用研究（13BTJ009），国家社会科学基金，主持.&nbsp;&nbsp;&nbsp;</li><li>统计理论在复杂网络特性分析中的应用研究（2011GXNSFA018147），广西自然科学基金，主持.&nbsp;&nbsp;&nbsp;</li><li>基于GIS的空间统计调查理论及应用研究(桂科能(1207115007)，广西空间信息与测绘重点实验室基金，主持.&nbsp;&nbsp;&nbsp;</li><li>Copula理论在风险管理中的应用研究，桂教科研(2007-26-95),广西高校科研项目，主持.&nbsp;&nbsp;&nbsp;</li><li>复杂网络上的行为传播研究（61164020），国家自然科学基金，参与.&nbsp;&nbsp;&nbsp;</li><li>复合聚类网络同步能力的尺度可变性及其粗粒化方法研究（61563013），国家自然科学基金，参与.&nbsp;&nbsp;&nbsp;</li><li>复杂动力网络的多目标控制与同步研究（桂科自0991244），广西自然科学基金,参与.&nbsp;&nbsp;&nbsp;</li><li>一类相依随机变量序列的若干极限性质及其在计量经济中的应用（桂科青0991081），广西自然科学基金项目,参与.&nbsp;&nbsp;&nbsp;</li><li><span style=\"color: rgb(51, 51, 51);\">两类相依随机变量序列所产生的移动平均过程概率收敛性质的研究</span>（2013），广西高校科研项目，参与.</li><li><span style=\"color: rgb(51, 51, 51);\">线性微分方程的复振荡理论</span>，广西高校科研项目(2006－2008)，主持.</li><li>基于空间与时序相关的广西区域经济之分析及预测模型，广西高校科研项目（2015），参与.&nbsp;&nbsp;&nbsp;</li><li>广西新世纪高教改革工程“十一五”项目：工科数学实验教学内容与结构优化改革的研究与实践,（2009C034）,参与.&nbsp;&nbsp;&nbsp;</li><li>广西教育“十一·五”规划课题：基于大学生就业能力培养视角的广西高校特色专业建设的研究( 2010C075)，主持&nbsp;&nbsp;&nbsp;</li><li>桂林理工大学精品课程《多元统计分析》（桂理工教[2011]4号）,主持.&nbsp;&nbsp;&nbsp;</li><li>桂林理工大学研究生优质课程《应用统计学》（105962012yzkc004），主持.&nbsp;&nbsp;&nbsp;</li><li>广西高校优势特色专业（应用统计学专业）建设项目（桂教高教（2014）52号），主持.&nbsp;&nbsp;&nbsp;</li></ol><p><strong>已出版的专著和教材</strong></p><ol><li>《概率统计》主编, 2005年，北京：冶金工业出版社&nbsp;&nbsp;&nbsp;</li><li>《概率论与数理统计》主编, 2013年，长沙：湖南师范大学出版社&nbsp;&nbsp;&nbsp;</li><li>《高等数学》参编，2009，武汉：华中师范大学出版社&nbsp;&nbsp;&nbsp;</li><li>《线性代数》副主编，2003，武汉：华中科技大学出版社&nbsp;&nbsp;&nbsp;</li></ol><p><strong>近几年发表的主要学术论文</strong></p><ol><li>Guangming Deng. Pinning GroupSynchronization in Complex Dynamical Networks with different Groups ofOscillators.Mathematical Problems in Engineering.Volume2014, Article ID 864193, 9 pages</li><li>Guangming Deng, Zhen Jia. Modeling and StatisticalProperties Research on Online Real-Time Information Transmission Network.Open Journal of Applied Sciences, 2014, 4, 234-241.</li><li>Guangming Deng. The Herd Behavior of Risk-AverseInvestor Based on Information Cost.Journal of Financial Risk Management.2013. Vol.2, No.4, 87-91.</li><li>Yan, Bin, Deng, Guangming. Improved Clustering Algorithm Basedon Density-Isoline.Open Journal of Statistics, 2015(5), 303-310.http://dx.doi.org/10.4236/ojs.2015.54032</li><li>Tang, S.Y. and Deng, G.M. Based on the Theory of Grey System toForecast China’s Business Volume of Express Services.Modern Economy,2015 ,6, 283-288.</li><li>Jian Su, Guangming Deng.Applicationof Intervention Analysis Model in Yu Ebao Yield Prediction.ModernEconomy,2014, 5, 864-868</li><li>Guangming Deng. Hierarchical synchronization incomplex dynamical networks with multipartite graph structure.Global Journalof Engineering,Design &amp; Technology. 2014,Vol.3(1):5-11.</li><li><span style=\"color: rgb(51, 51, 51);\">H. Huang</span>,<span style=\"color: rgb(51, 51, 51);\">G. Deng</span>,<span style=\"color: rgb(51, 51, 51);\">Q. Zhang</span>and<span style=\"color: rgb(51, 51, 51);\">Y. Jiang</span>.<span style=\"color: rgb(51, 51, 51);\">On the strong convergence for weighted sums ofasymptotically almost negatively associated random variables</span>Volume50 no. 3, 393-407, 2014. DOI 10.14736kyb-2014-3-0393</li><li>Haoyuan Zhong , Guangming Deng .The AccountingMethods of the Local Government Department Output by Factor Analysis.AppliedEconomics and Finance. Vol. 1, No. 1; May 2014.</li><li>Zhen Jia, Xinchu Fu, Guangming Deng, Kezan Li, Group synchronizationin complex dynamical networks with different types of oscillators and adaptivecoupling schemes,Communications in Nonlinear Science and NumericalSimulation,<span style=\"color: rgb(51, 51, 51);\">Volume 18, Issue 10</span>, October 2013, Pages2752–2760</li><li>Zhen Jia, Guangming Deng, Weight Identification of aWeighted Bipartite Graph Complex Dynamical Network with Coupling Delay,Journalof Inequalities and Applications,Volume 2010 , Article ID 805178, 9 pages,.</li><li>Zhen Jia and Guangming Deng, Mathematical Model andCluster Synchronization for a Complex Dynamical Network with Two Types ofChaotic Oscillators,Journal of Applied Mathematics,vol. 2012, 12pages, 2012.</li><li>Zhen Jia, Guangming Deng, Robust Adaptive GeneralizedProjective Synchronization of Chaotic Systems with Uncertain Disturbances,Journalof Applied Mathematics, vol. 2012, Article ID 362765, 9 pages, 2012.</li><li>Jian Su, Guangming Deng. The Chinese Urban and Rural per CapitaIncome and Trend Analysis。Applied Mathematics, 2014, 5, 106-109</li><li>Cuiping Zhang, Guangming Deng, Xiaoling Yu. TheInfluence of Tourism on Rural Life in Minority Areas.Applied Mathematics,2013, 4, 1207-1211.</li><li>邓光明,苏健,陈玟宇,贾贞.两阶段抽样法在无标度网络结构特征量估计中的应用.统计与决策, 2015,09,13-15&nbsp;&nbsp;&nbsp;</li><li>杨飞,邓光明,刘艳萍.基于循环修正组合优化模型的广西各城市综合经济实力评价.桂林理工大学学报.2014,34( 4) : 785-790&nbsp;&nbsp;&nbsp;</li><li>叶彩园，邓光明，我国区域经济发展状况的实证分析.现代经济2009,8(12):26-27.&nbsp;&nbsp;&nbsp;</li><li>王想,邓光明,蒋远营,零均值高斯AR(p)模型参数的最小化残差平方和(RSS)下条件最大似然估计及其最优性,统计与决策.2009(06):35-37&nbsp;&nbsp;&nbsp;</li><li>付珊，邓光明，基于因子分析的我国城镇居民生活质量评价,.经济论坛.2010,274(2)：81-82、124&nbsp;&nbsp;&nbsp;</li><li>邓光明,吴群英,陈晓琳,不同分布</li><li class=\"ql-align-center\">美图跑丢了(&gt;_&lt;)</li><li>混合序列的弱大数定理,桂林工学院学报..2009,29(04):570-572.</li><li>邓光明，罗付岩.含权二部图复杂动力网络模型及其权值识别,桂林理工大学学报..2010，30(2)：312-315.&nbsp;&nbsp;&nbsp;</li></ol><p><strong>获奖情况和荣誉</strong></p><ol><li>2008主编《概率统计》获广西高等学校优秀教材三等奖&nbsp;&nbsp;&nbsp;</li><li>2008年获桂林理工大学优秀党员&nbsp;&nbsp;&nbsp;</li><li>2009、2010、2013年度考核优秀&nbsp;&nbsp;&nbsp;</li><li>2009年获第九届全国多媒体课件大赛一等奖（排名第2）&nbsp;&nbsp;&nbsp;</li><li>2009年获广西壮族自治区教学成果二等奖（排名第4）&nbsp;&nbsp;&nbsp;</li><li>2010年获桂林理工大学优秀教研室主任.&nbsp;&nbsp;&nbsp;</li><li>2011年获广西高校优秀班主任.&nbsp;&nbsp;&nbsp;</li><li>2011年指导大学生科技立项获桂林理工大学一等奖和二等奖.&nbsp;&nbsp;&nbsp;</li><li>2013主编《概率论与数理统计》获普通高等教育”十二五”规划教材.</li></ol>', '2017-09-18', '理学院', '0', '1375', '0');
INSERT INTO `teacher` VALUES ('6', '李新宇', '男', '副教授', null, '李新宇，男，1981年生，博士，副教授，硕士生导师，研究方向：半导体薄膜与器件，石墨烯超级电容器，现主持国家自然科学基金两项。', '广西，桂林市，桂林理工大学理学院邮编：541004', '', 'lixinyu5260@163.com', 'static/teacher/804354fb-a0bf-4dfa-b9bf-f5d4f8cb57de.png', '<p>1、<strong>基本情况</strong></p><p><strong>&nbsp;&nbsp;&nbsp;李新宇</strong>，男，1981年生，博士，副教授，硕士生导师，2010年受聘于桂林理工大学理学院任教。</p><p><strong>&nbsp;&nbsp;&nbsp;研究方向：半导体薄膜与器件，石墨烯超级电容器</strong>，现主持国家自然科学基金两项，主持其他各类基金项目3项。近年来，在“Appl. Phys. Lett.”、“Applied Surface Science”、“J. Appl. Phys”、“Mater. Sci. Eng. B”等国内外学术期刊上发表学术论文20余篇。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>联系地址：</strong>广西，桂林市，桂林理工大学理学院邮编：541004</p><p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>电子邮址：</strong><a href=\"mailto:lixinyu5260@163.com\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">lixinyu5260@163.com</a></p><p>&nbsp;</p><p>2、<strong>个人主要经历</strong></p><ul><li>2000～2004湖南科技大学，电子信息工程专业，获工学学士学位</li><li>2004～2007湘潭大学，微电子学与固体电子学，获工学硕士学位</li><li>2007～2010中山大学，凝聚态物理专业，获理学博士</li><li>2010～至今桂林理工大学理学院</li></ul><p>&nbsp;</p><p>3、<strong>主持研究项目</strong></p><ol><li>主持国家自然科学基金地区项目，项目名称：量子点嵌入氧化石墨烯薄膜的构建及功能化改性研究（编号51662004）， 执行年限：2017年-2020年，项目直接经费：39万</li><li>主持国家自然科学基金青年项目，项目名称：氧空位调控磁性元素掺杂二氧化钛铁磁性的可逆转变性质研究（编号11304051），执行年限：2014年-2016年，项目经费：29万</li><li>主持广西自然科学基金一项，项目经费：5万</li><li>桂林理工大学博士启动基金项目一项。项目经费：6万</li></ol><p>&nbsp;</p><p>4、<strong>近期发表的科研论文</strong></p><ol><li>Yongjie Xu,&nbsp;<strong>Xinyu Li*（通讯作者）</strong>,Guanghui Hu,Ting Wu, Yi Luo, Lang Sun, Tao Tang, Jianfeng Wen, Heng Wang, Ming Li *, Graphene oxide quantum dot-derived nitrogen-enriched hybrid graphene nanosheets by simple photochemical doping for high-performance supercapacitors.<strong>Applied Surface Science,</strong>422 (2017) pp. 847-855（IF：3.38）</li><li><a href=\"http://www.sciencedirect.com/science/article/pii/S0021979717309530\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">Lang Sun</a><a href=\"http://www.sciencedirect.com/science/article/pii/S0021979717309530#af005\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">a</a>,&nbsp;<a href=\"http://www.sciencedirect.com/science/article/pii/S0021979717309530\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">Yi Luo</a><a href=\"http://www.sciencedirect.com/science/article/pii/S0021979717309530#af005\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">a</a>,&nbsp;<a href=\"http://www.sciencedirect.com/science/article/pii/S0021979717309530\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">Ming Li</a><a href=\"http://www.sciencedirect.com/science/article/pii/S0021979717309530#af005\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">a</a>,&nbsp;<a href=\"http://www.sciencedirect.com/science/article/pii/S0021979717309530\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">Guanghui Hu</a><a href=\"http://www.sciencedirect.com/science/article/pii/S0021979717309530#af005\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">a</a>,&nbsp;<a href=\"http://www.sciencedirect.com/science/article/pii/S0021979717309530\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">Yongjie Xu</a><a href=\"http://www.sciencedirect.com/science/article/pii/S0021979717309530#af005\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">a</a>,&nbsp;<a href=\"http://www.sciencedirect.com/science/article/pii/S0021979717309530\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">Tao Tang</a><a href=\"http://www.sciencedirect.com/science/article/pii/S0021979717309530#af005\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">a</a>,&nbsp;<a href=\"http://www.sciencedirect.com/science/article/pii/S0021979717309530\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">Jianfeng Wen</a><a href=\"http://www.sciencedirect.com/science/article/pii/S0021979717309530#af005\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">a</a>,&nbsp;<a href=\"http://www.sciencedirect.com/science/article/pii/S0021979717309530\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\"><strong>Xinyu Li</strong></a><strong>（通讯作者）</strong><a href=\"http://www.sciencedirect.com/science/article/pii/S0021979717309530#af005\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">a</a>,&nbsp;,&nbsp;<a href=\"http://www.sciencedirect.com/science/article/pii/S0021979717309530\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">Liang Wang</a>Role of Pyridinic-N for Nitrogen-doped graphene quantum dots in oxygen reaction reduction,<a href=\"http://www.sciencedirect.com/science/journal/00219797\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\"><strong>Journal of Colloid and Interface Science</strong></a><strong>,</strong><a href=\"http://www.sciencedirect.com/science/journal/00219797/508/supp/C\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">508</a>, (2017), Pages 154–158.（IF：4.23）</li><li>Yongjie Xu, Yukun Feng,<strong>Xinyu Li（通讯作者）</strong>, Guanghui Hu, Yi Luo, Lang Sun, Tao Tang, Jianfeng Wen, Heng Wang, and Ming Li，Direct Formation of Reduced Graphene Oxide and Graphene Quantum dot Composites by Using Ascorbic Acid as High-Performance Binder-Free Supercapacitor Electrodes,<strong>Int. J. Electrochem. Sci.</strong>, 12(2017).（IF：1.45）</li><li><strong>Xinyu Li</strong>，Tao Tang，Ming Li，Xiangcong He，Nitrogen-doped graphene films from simple photochemical doping for n-type field-effect transistors，<strong>Applied Physics Letters</strong>，2015，106（1）：013110-1-013110-5。（IF：3.42）</li><li><strong>Xinyu Li</strong>，Tao Tang，Ming Li，Xiangcong He，Photochemical doping of graphene oxide thin films with nitrogen for electrical conductivity improvement，<strong>Journal of Materials Science</strong>:Materials inElectronics，2015，26（3）：1770-1775.（IF：2.05）</li><li><strong>X. Y. Li</strong>,* J. R. Xiao, Z. Y. Wang, S. W. Li，Structural and magnetic properties of Mn:TiO<sub>2</sub>films grown by plasma-assisted molecular beam epitaxy.<strong>Mater. Sci. Eng. B ,</strong>177, 869,2012.</li><li>S. X. Wu,<strong>X. Y. Li</strong>, X. J. Xing, P. Hu, Y. P. Yu, , and S. W. Li*,Resistive dependence of magnetic properties in nonvolatile Ti/Mn:TiO<sub>2</sub>/SrTi<sub>0.993</sub>Nb<sub>0.007</sub>O<sub>3</sub>/Ti memory device.<strong>Appl. Phys. Lett.</strong>94, 253504, 2009.</li><li><strong>X. Y. Li*</strong>,Mechanisms of 1D Crystal Growth in Chemical Vapor Deposition:ZnO Nanowires.<strong>Adv. Mater. Research</strong>, 463, 1463,2012.</li><li>P. Hu,<strong>X.Y. Li,</strong>J.Q. Lu, M. Yang, Q.B. Lv, S.W. Li*, Oxygen deficiency effect on resistive switching characteristics of copper oxide thin films,<strong>Phy. Lett. A</strong>,375, 1898, 2011.</li><li>Y. J. Liu, L. M. Xu,<strong>X.Y. Li,</strong>P. Hu, andS. W. Li*，Growth and magnetic property of ζ-phase Mn<sub>2</sub>N<sub>1±x</sub>thin films byplasma-assisted molecular beam epitaxy,<strong>J. Appl. Phys.</strong>,107, 103914, 2010.</li><li><strong>X. Y. Li</strong>, S. X. Wu, P. Hu, X. J. Xing,Y. J. Liu,Y. P. Yu, M. Yang, J. Q. Lu, S. W. Li* and W. Liu,<a href=\"http://scitation.aip.org/getabs/servlet/GetabsServlet?prog=normal&amp;id=JAPIAU000106000004043913000001&amp;idtype=cvips&amp;gifs=Yes\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">Structures and magnetic properties of p-type Mn:TiO<sub>2</sub>dilute magnetic semiconductor thin films</a>,<strong>J. Appl. Phys.</strong>,106, 043913, 2009.</li><li><strong>X. Y. Li</strong>, S. X. Wu, L. M. Xu, Y. J. Liu, X. J. Xing, and S. W. Li*,<a href=\"http://scitation.aip.org/getabs/servlet/GetabsServlet?prog=normal&amp;id=JAPIAU000104000009093914000001&amp;idtype=cvips&amp;gifs=Yes\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">Room-temperature ferromagnetism in (Mn, N)-codoped TiO<sub>2</sub>films grown by plasma assisted molecular beam epitaxy</a>.<strong>J. Appl. Phys.</strong>, 104, 093914, 2008.</li><li><strong>X. Y. Li</strong>, S. X. Wu, L. M. Xu, C. T. Li, Y. J. Liu, X. J. Xing, and S. W. Li*, Effects of depositing rate on structure and magnetic properties of Mn:TiO<sub>2</sub>films grown by plasma-assisted molecular beam epitaxy.<strong>Mater. Sci. Eng. B ,</strong>156, 90, 2009.</li><li><strong>X. Y. Li</strong>, J. Guo, S. L. Ding, T. j. Lin, J. T. Dong, Low Temperature Synthesis of Novel ZnO Nanowire Microspheres on Silicon Substrates, Rare Metals, 26, 242, 2007.</li><li>S. X. Wu, L. M. Xu,, X. J. Xing, S. M. Chen,<strong>X. Y. Li,</strong>S.W. Li, et al, Reverse-bias-induced bipolar resistance switching in Pt/TiO2/SrTi0.99Nb0.01O3/Pt devices, Appl. Phys. Lett. 93, 043502, 2009.</li><li>L.M. Xu, M. Yang,<strong>X.Y. Li</strong>, P. Hu and S.W. Li*,Effect of growth temperature on ferromagnetism in Mn:TiO<sub>2</sub>thin film grown on SrTiO<sub>3</sub>:Nb substrate,<strong>Scripta Materialia</strong>, 63, 113, 2010.</li><li>L.M. Xu,X.J. Xing,M. Yang,<strong>X.Y. Li</strong>,S.X. Wu,P. Hu,J.Q. Lu,S.W. Li*,Laser reactivation of Room-Tc ferromagnetism in Mn-dopedinsulating TiO&amp;shy;<sub>2</sub>thin films,<strong>Appl. Phys. A</strong>,98, 417 2010.</li></ol>', '2017-09-18', '理学院', '0', '1365', '0');
INSERT INTO `teacher` VALUES ('7', '贾贞', '女', '教授', null, '贾贞，教授，硕士生导师，武汉大学计算数学专业理学硕士。研究方向为混沌控制与同步、复杂网络。现为国内SCI期刊《物理学报》和Chinese Physics B”特聘审稿人，为国际SCI期刊Physical A、Dynamics of Continuous, Discrete &amp; Impulsive Systems等论文审稿人。', '广西，桂林市，桂林理工大学理学院 邮编：541004  ', '0773-5896179', 'jjjzzz0@163.com', 'static/teacher/b71fb168-7938-47db-aaea-39b21b5a6e5c.png', '<p><strong style=\"color: rgb(51, 51, 51);\">基本情况</strong><strong>&nbsp;&nbsp;&nbsp;贾贞</strong>，教授，硕士生导师，武汉大学计算数学专业理学硕士。研究方向为混沌控制与同步、复杂网络。现为国内SCI期刊《物理学报》和Chinese Physics B”特聘审稿人，为国际SCI期刊Physical A、Dynamics of Continuous, Discrete &amp; Impulsive Systems等论文审稿人。主持国家自然科学基金2项，主持和参与其它科研顶上10余项，在国内外重要期刊上发表学术论文50余篇。获2012年桂林理工大学“十佳优秀研究生指导教师”荣誉称号。</p><ul><li>联系地址：广西，桂林市，桂林理工大学理学院 邮编：541004&nbsp;</li><li>联系电话：0773-5896179 电子邮址：<span style=\"color: rgb(51, 51, 51);\">jjjzzz0@163.com</span></li></ul><p><strong>承担的主要科研项目</strong></p><ol><li>复合聚类网络同步能力的尺度可变性及其粗粒化方法研究，国家自然科学基金（61563013），主持，201601-201912。&nbsp;</li><li>复杂网络上的行为传播研究，国家自然科学基金（61164020），主持，201201-201512。&nbsp;</li><li>复杂网络上传播同步分析及其应用，国家自然科学基金（61004101），参与，201001-201212。&nbsp;</li><li>线性和部分线性模型的M估计研究，国家自然科学基金（11061012），参与，201001-201212。&nbsp;</li><li>复杂动力网络的多目标控制与同步研究，广西自然科学基金（桂科自0991244），主持，200901-201112。&nbsp;</li><li>统计理论在复杂网络特性分析中的应用研究，广西自然科学基金项目（2011GXNSFA018147），参与，201101-201312。&nbsp;</li><li>基于空间数据信息的复杂时空网络模型与动力学研究，<span style=\"color: rgb(51, 51, 51);\">广西空间信息与测绘重点实验室建设项目</span>（桂科能1103108-24）主持，201201-101312。&nbsp;</li><li>工科数学实验教学内容与结构优化改革的研究与实践，新世纪广西高等教育教学改革工程“十一五”第五批立项项目（2009C034），主持，2009-2010。&nbsp;</li><li>复杂混沌动力网络的控制与同步研究，广西区教育厅项目（200807MS043），主持，200801-201012。&nbsp;</li><li>超混沌的控制与同步研究，广西区教育厅项目（桂教科研(2006)26号），主持，200601-200812。&nbsp;</li><li>风险经营中的破产概率，桂林工学院科研项目，主持，2003-2005。&nbsp;</li><li>Copula函数在风险管理中的应用研究，广西区教育厅项目（桂教科研(2006)26号），参与，2006-2008。&nbsp;</li><li>线性微分方程的复振荡理论，广西区教育厅项目，参与，2005-2007。&nbsp;</li><li>数学实验系列课程与创新人才培养的研究与实践，新世纪教改工程“十一五”第四批立项项目（2008B078），参与，2009-2010。&nbsp;</li><li>基础数学类精品课程建设与现代信息教育资源开发应用研究，新世纪教改工程“十一五”第二批资助项目（桂教高教(2006)194-100），参与，2006-2008。&nbsp;</li></ol><p><strong>出版教材及专著</strong></p><ol><li>运筹学原理与实验教程，主编，华中师大出版社，2008.&nbsp;</li><li>概率统计，主编，冶金工业出版社，2005.（2006年获21世纪第二届广西高等学校优秀教材三等奖），&nbsp;</li><li>概率论与数理统计，主编，湖南师范大学出版社，2013.&nbsp;</li></ol><p><strong>近年发表的主要学术论文</strong></p><ol><li>Zhen Jia,Xinchu Fu, Guangming Deng, Kezan Li, Group synchronization in complex dynamicalnetworks with different types of oscillators and adaptive coupling schemes,Communications in Nonlinear Science and Numerical Simulation, 2013, 18：2752–2760.((SCI/EI收录)&nbsp;</li><li>Kezan Li,Zhongjun Ma,<strong>Zhen Jia</strong>, Michael Small and Xinchu Fu. Interplay betweencollective behavior and spreading dynamics on complex networks. Chaos 22,043113 (2012). (SCI收录)</li><li><strong>Zhen Jia</strong>, GuangmingDeng, Robust Adaptive Generalized Projective Synchronization of Chaotic Systemswith Uncertain Disturbances, Journal of Applied Mathematics, vol. 2012, ArticleID 362765, 9 pages, 2012.(SCI收录)</li><li><strong>Zhen Jia</strong>and GuangmingDeng, Mathematical Model and Cluster Synchronization for a Complex DynamicalNetwork with Two Types of Chaotic Oscillators, Journal of Applied Mathematics,vol. 2012, Article ID 595360, 12 pages, 2012.(SCI收录)</li><li><strong>Zhen Jia</strong>, GuangmingDeng, Weight Identification of a Weighted Bipartite Graph Complex DynamicalNetwork with Coupling Delay, Journal of Inequalities and Applications, Volume2010 (2010), Article ID 805178, 9 pages.(SCI收录)</li><li><strong>Jia Zhen</strong>, Lu Junan, etal., Generalized projective synchronization of a class of chaotic(hyperchaotic) systems with uncertain parameters，Chinese Physics，2007，16(05)：1246-1251.(SCI/EI收录)</li><li><strong>Jia Zhen</strong>, Lineargeneralized synchronization of chaotic systems with uncertain parameters,Journal of Systems Engineering and Electronics, 2008，19（4）：779-784.（SCI收录）</li><li><strong>Zhen Jia</strong>, Jun-an Lu，Generalizedprojective synchronization of a class of chaotic and hyperchaotic systems，Dynamics of Continuous, Discrete &amp; Impulsive Systems, Series B:Applications &amp; Algorithms，2007，14(S6)：223-226. (SCI收录)</li><li>Zhang Qun-jiao,Lu Jun-an, and<strong>Jia zhen</strong>, Global Exponential Projective Synchronizationand lag Synchronization of Hyperchaotic Lv System. Communications inTheoretical Physics, 2009, 51(4): 679-683.(SCI收录).</li><li><strong>Jia Zhen</strong>, Lu Junan,Deng Guangming, Hybrid projective synchronization of a class of uncertainchaotic (hyperchaotic) systems，数学杂志，2011,31(2): 275-283.</li><li><strong>Zhen Jia</strong>, GuangmingDeng, Adaptive nonlinear generalized synchronization of chaotic systems withuncertain parameters, Far East Journal of Dynamical Systems, 2009，12(1)：1-10.</li><li><strong>贾贞</strong>，汪贺，王俊，李勇，基于自适应同步的二部图复杂动力网络的权值识别，控制理论与应用，2010，27(1): 107-110.（EI收录）</li><li><strong>指导研究生发表的学术论文</strong></li><li><span style=\"color: rgb(51, 51, 51);\">JiBin Gao</span>，<strong>Zhen Jia</strong>,Dynamics of Behavior Spreading Driven by Opinion Evolution: Modeling andSimulation,<span style=\"color: rgb(51, 51, 51);\">AppliedMechanics and Materials</span>, 2015, vol.713-715: 2440-2446.(EI收录)</li><li>陈玟宇，<strong>贾贞</strong>，祝光湖，社交网络上基于信息驱动的行为传播研究，电子科技大学学报，2015，44(2):172-177.(EI收录)</li><li>Chen Wenyu,<strong>JiaZhen</strong>, Dynamic of behavior spread driven by information on weighted networks，International Industrial Informatics and Computer EngineeringConference (IIICEC 2015) pp249-255.(EI收录)</li><li>邓奇湘，<strong>贾贞</strong>，谢梦舒，陈彦飞，基于有向网络的E-mail病毒传播模型及其震荡吸引子研究，物理学报，2013, 62 (2):020203. (SCI收录)</li><li>Yanfei Chen<strong>,ZhenJia</strong>, Adaptive Synchronization of One-dimensional Discrete Chaotic Systemson Complex Networks, Applied Mechanics and Materials. Vols. 321-324 (2013) pp1962-1966.（EI收录）</li><li>Yanfei Chen,<strong>ZhenJia,</strong>Parameters identification and projective dislocated lag synchronizationof Liu chaotic system via adaptive control. International Journal of Researchand Reviews in Applied Sciences, 2012,12(1): 1-5.</li><li>Yanfei Chen,<strong>ZhenJia</strong>,Hybrid Projective Dislocated Synchronization of Liu Chaotic SystemBased on Parameters Identification. Modern Applied Science, 2012, Vol. 6, No.2: 16-21.</li><li>Yanfei Chen,<strong>ZhenJia</strong>, Guangming Deng. Adaptive Lag Synchronization of Lorenz Chaotic Systemwith Uncertain Parameters. Applied Mathematics, 2012, 3: 549-553.</li><li>陈彦飞，<strong>贾贞</strong>，邓奇湘，谢梦舒，于晓玲，超混沌Liu系统的自适应广义投影同步与参数识别，广西师范大学学报（自然科学版），2012，30：10-14.（核心）</li><li>陈彦飞，<strong>贾贞</strong>，信阳师范学院学报（自然科学版），超混沌Liu系统的非线性反馈混合追踪同步，2012，25：169-171.（核心）</li><li>唐小侠,<strong>贾贞</strong>,董元元,股票交易中的人类动力学实证研究,桂林理工大学学报, 2012 , 32(01): 149-153.（核心）</li><li><span style=\"color: rgb(51, 51, 51);\">唐小侠</span>，<strong style=\"color: rgb(51, 51, 51);\">贾贞</strong>，<span style=\"color: rgb(51, 51, 51);\">董元元，无标度BA网络上对立舆论的传播规律</span>，华侨大学学报(自然科学版)，2013，34（1）：40-45.（核心）</li><li>Yong Li,<strong>Zhen Jia</strong>, Synchronization of Cubic Chaotic System, modern applied science,2010,4(9):135-141.</li><li>Yong Li,<strong>JiaZhen</strong>, Synchronization of Complex Networks with Multi-Links and Nodes withDifferent, International Journal of Advanced Research in Computer Scince.2011,2(1)：16-22.</li><li>Xiao-kui Shen,<strong>ZhenJia</strong>, On the Existence Structure of One-dimensional Discrete ChaoticSystems, Journal of Mathematics Research, 2011,3.</li><li>王俊，<strong>贾贞</strong>，李勇，含可变感染率的SIRS模型在复杂网络上的传播分析.桂林理工大学学报，2011,31(1):160-163. ISSN：1674-9057.（核心）</li><li>李勇，<strong>贾贞</strong>，离散混沌系统在保密通信中的应用.广西师范大学学报（自然科学版），2011,29(1):15-19.（核心）</li><li>李勇，<strong>贾贞</strong>，立方混沌系统的多种目标控制.华侨大学学报(自然科学版),2011, 32（4）：381-384.（核心）</li><li>李勇,<strong>贾贞</strong>,王俊,汪贺，一个离散混沌系统的动力学性质.桂林理工大学学报，2010,30(2): 316-320. (核心)</li><li>汪贺，<strong>贾贞</strong>，李勇，王俊．基于观测器的混沌系统广义投影同步．微计算机信息．2010，8(1)：231-233.</li><li>王俊，<strong>贾贞</strong>，李勇，小世界网络上流行病扩散控制策略.广西科学，2010，17（3）：215-217.</li><li>李勇，<strong>贾贞</strong>，吴琛义，Liu混沌系统与统一混沌系统的反馈控制同步.微计算机信息．2010，26（10-1）：80-82.</li><li>汪贺，<strong>贾贞</strong>，一类混沌系统的部分投影同步的稳定性判据.动力学与控制学报，2009，07（2）: 143-147.</li><li>汪贺，<strong>贾贞</strong>，李勇,王俊，超混沌Lv系统的自适应广义投影同步.广西科学，2009，16（4）：414-417.</li></ol>', '2017-09-18', '理学院', '0', '1004', '0');
INSERT INTO `teacher` VALUES ('8', '艾武', '男', '博士', '湖北应城人', '艾武，男，湖北应城人，1982年8月生，中共党员，博士，讲师，研究方向：网络上的分布式优化和学习、大数据分布式融合。主要从事信息与计算科学专业的教学科研工作。', '广西桂林市建干路12号，桂林理工大学理学院，邮编：541004', '', 'aiwu@glut.edu.cn', 'static/teacher/84f8f80d-7840-4f94-b330-273c682d035f.png', '<p><strong>1、基本情况</strong></p><p><strong>&nbsp;&nbsp;&nbsp;艾武</strong>，男，湖北应城人，1982年8月生，中共党员，博士，讲师，研究方向：网络上的分布式优化和学习、大数据分布式融合。主要从事信息与计算科学专业的教学科研工作。现为桂林市数学会理事，中国工业与应用数学学会会员，中国计算机学会会员，ACM Member，IEEE Member，国际知名期刊 IEEE Transactions on Cybernetics (IF 7.384, Top期刊)、IEEE Transactions on Neural Networks and Learning Systems（IF 6.108, Top期刊）、Information Sciences (IF 4.832)、Neurocomputing (IF 3.317)、IEEE Transactions on Systems, Man, and Cybernetics: Systems (IF 2.350)、Neural Processing Letters (IF 1.620) 等审稿人。发表SCI等论文十余篇，目前主持在研国家自然科学基金项目1项、广西自然科学基金1项、广西重点实验室主任基金项目1项，主持完成广西高校科研项目1项。</p><p><span style=\"color: rgb(68, 68, 68);\">&nbsp;&nbsp;&nbsp;联系地址：广西桂林市建干路12号，桂林理工大学理学院，邮编：541004</span></p><p><span style=\"color: rgb(68, 68, 68);\">&nbsp;&nbsp;&nbsp;电子邮址：</span><a href=\"mailto:aiwu@glut.edu.cn\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">aiwu@glut.edu.cn</a></p><p>&nbsp;</p><p><strong>2、主要经历</strong></p><ul><li>2007.7--现&nbsp;今，桂林理工大学理学院信息与计算科学教研室，讲师</li><li>2012.8--2017.6，西安电子科技大学理学院应用数学专业，博士</li><li>2005.9--2007.6，华中科技大学数学系计算数学专业，硕士</li><li>2001.9--2005.6，湖北民族学院理学院数学与应用数学专业，本科</li></ul><p>&nbsp;</p><p><strong>3、科研论文</strong></p><ol><li><strong>Ai, W.</strong>; Wu, J. A Distributed Particle Swarm Optimization Algorithm over Directed Graphs. 2017 Chinese Automation Congress (CAC2017), Jinan, 2017. accepted.</li><li><strong>Ai, W.</strong>&nbsp;Distributed Weighted Learning for Big Imbalanced Data Mining.&nbsp;<strong>KNOWLEDGE-BASED SYSTEMS</strong>, 2017, submitted.</li><li><strong>Ai, W.&nbsp;</strong>Distributed self-triggered optimization for multi-agent systems with periodic sampling schemes.&nbsp;<strong>NEUROCOMPUTING</strong>, 2017, submitted.</li><li><strong>Ai, W.&nbsp;</strong>Event-triggered distributed convex optimization with finite-time convergence.&nbsp;<strong>NEURAL COMPUTATION</strong>, 2017, submitted.</li><li><strong>Ai, W.</strong>; Chen, W.; Hua, S. Distributed cooperative learning and control for a group of uncertain systems via output feedback and neural networks.&nbsp;<strong>JOURNAL OF THE FRANKLIN INSTITUTE</strong>, 2017, under third review. （IF 3.319，SCI 中科院二区）</li><li><strong>Ai, W.</strong>; Chen, W. A General Framework for Population-Based Distributed Optimization Over Networks.&nbsp;<strong>INFORMATION SCIENCES</strong>, Vol. 418–419,&nbsp;pp. 136-152, 2017.（IF 4.832，SCI 中科院二区）</li><li><strong>Ai, W.;&nbsp;</strong>Chen, W.; Xie, J. Distributed learning for feedforward neural networks with random weights using an event-triggered communication scheme.&nbsp;<strong>NEUROCOMPUTING</strong>, Vol. 224, pp. 184-194, 2017.（IF 3.317，SCI 中科院二区，WOS：000392355600018）</li><li><strong>Ai, W.</strong>; Chen, W.; Xie, J.&nbsp;A zero-gradient-sum algorithm for distributed cooperative learning using feedforward neural network with random weights.&nbsp;<strong>INFORMATION SCIENCES</strong>, Vol. 373, pp. 404-418,&nbsp;2016.&nbsp;（IF 4.832，SCI 中科院二区, WOS:&nbsp;000385470400024）</li><li>Chen, H.-Z.;&nbsp;<strong>Ai, W.</strong>; Feng, Q.-X.; Tang, G.-Q. FT-MIR modelling enhancement for the quantitative determination of haemoglobin in human blood by combined optimization of grid-search LSSVR algorithm with different pre-processing modes.&nbsp;<strong>ANALYTICAL&nbsp;METHODS</strong>, Vol. 7, pp. 2869-2876, 2015. （IF 1.915，SCI 中科院三区, WOS:000351391800084）</li><li>Chen, H.-Z.; Tang, G.-Q.;&nbsp;<strong>Ai, W.</strong>; Xu, L.-L.; Cai, K. Use of Random Forest in FTIR Analysis of LDL Cholesterol and Tri-Glycerides for Hyperlipidemia.&nbsp;<strong>BIOTECHNOLOGY PROGRESS</strong>, Vol. 31, pp. 1693-1702, 2015. （IF 2.167，SCI 中科院三区, WOS:000368140300027）</li><li>Gu, A.;&nbsp;<strong>Ai, W.&nbsp;</strong>Random attractor for stochastic lattice dynamical systems with alpha-stable Levy noises.&nbsp;<strong>COMMUNICATIONS IN NONLINEAR SCIENCE AND NUMERICAL SIMULATION</strong>, Vol. 19, pp. 1433-1441, 2014.&nbsp;（IF 2.834，SCI 中科院二区, WOS:000327188800017）</li><li>Chen, H.;&nbsp;<strong>Ai, W.</strong>; Feng, Q.; Jia, Z.; Song, Q. FT-NIR spectroscopy and Whittaker smoother applied to joint analysis of duel-components for corn.&nbsp;<strong>SPECTROCHIMICA ACTA PART A-MOLECULAR AND BIOMOLECULAR SPECTROSCOPY</strong>, Vol. 118, pp. 752-759, 2014. （IF 2.653，SCI 中科院二区, WOS:000328005400099）</li><li>Chen, H.; Tang, G.; Song, Q.;&nbsp;<strong>Ai, W.&nbsp;</strong>Combination of Modified Optical Path Length Estimation and Correction and Moving Window Partial Least Squares to Waveband Selection for the Fourier Transform Near-Infrared Determination of Pectin in Shaddock Peel.&nbsp;<strong>ANALYTICAL LETTERS</strong>, Vol. 46, pp. 2060-2074, 2013.&nbsp;（IF 1.088，SCI 中科院四区, WOS:000323475300007）</li></ol><p>&nbsp;</p><p><strong>4、科研项目</strong></p><ol><li><strong>主持科研项目</strong></li><li>国家自然科学基金项目（61703117），基于事件驱动的稀疏分布式学习算法研究，2018.01-2020.12. 主持</li><li>广西自然科学基金项目，通信受限条件下的分布式核学习方法研究，2017.7-2020.6. 主持</li><li>广西高等学校科学技术研究项目（2013LX043），群体智能优化算法研究及其应用，2013.1-2013.12. 主持</li><li>广西空间信息与测绘重点实验室主任基金项目（16-380-25-20），基于随机神经网络的空间信息大数据分布式学习， 2017.1-2018.12. 主持</li><li><strong>参与科研项目</strong></li><li>国家自然科学基金项目（61673308），不确定系统的事件驱动自适应控制，2017.01-2020.12. 参与</li><li>国家自然科学基金项目（61673014），逼近精度已知和全局稳定的自适应神经网络控制，2017.01-2020.12. 参与</li><li>国家自然科学基金项目（11661028），复杂环境下的随机切换系统的滤波器设计研究，2017.01-2020.12. 参与</li><li>国家自然科学基金项目（61203109），间歇生产调度混合建模机制与约束处理方法研究，2013.1-2015.12. 参与</li><li>国家自然科学基金项目（11226219），应用于区间组合的非连续光谱数据的偏最小二乘方法改进研究，2013.1-2013.12. 参与</li><li>国家自然科学基金（11161015），多因素影响微分系统定性研究与仿真分析，2012.1-2015.12. 参与</li><li>广西自然科学基金项目（2015GXNSFBA139259），土壤成分多指标检测的近红外建模优化计量方法研究，2015.09-2018.08. 参与</li><li>广西自然科学基金项目（2014GXNSFBA118023），环境参数不确定的鲁棒进化算法及其在车辆路径问题的应用，2014.01-2017.03. 参与</li><li>广西自然科学基金项目（2013GXNSFBA019004），哈密尔顿系统周期解、同宿轨与数值模拟等问题，2013.01-2016.03. 参与</li><li>广西自然科学基金(2013GXNSFBA019008)，随机三分支可Gray-Scott系统及其格点动力系统渐近行为的研究，2013.04-2016.03. 参与</li><li>广西中青年教师基础能力提升项目（2017KY0260），基于深度学习的视频目标跟踪方法研究，2017.5-2019.12. 参与</li><li>广西中青年教师基础能力提升项目（KY2015ZL100），一种高隔离度可调直流电源实现方法，2015.01-2016.12. 参与</li><li>广西中青年教师基础能力提升项目（KY2015ZL095），光谱分析样品集划分方法在农业信息检测中的应用，2015.01-2016.12. 参与</li><li>广西中青年教师基础能力提升项目（2013YB102），一类随机三分量反应扩散系统及其格点系统的渐近行为研究，2013.01-2014.12. 参与</li></ol><p>&nbsp;</p><p><strong>5、教改论文</strong></p><ol><li>艾武,唐国强,宋奇庆,陈华舟,封全喜.信息与计算科学专业学年论文实践教学探讨.教育教学论坛, 2015, (4): 129-130.</li><li>陈华舟,艾武.现代数值计算的实验教学探索.产业与科技论坛, 2014, 13(15): 154-155.</li></ol><p>&nbsp;</p><p><strong>6、参编教材</strong></p><ul><li>数值分析方法与实验-基于MATLAB实现,林亮,吴群英主编,高等教育出版社, 2012.</li></ul><p>&nbsp;</p><p><strong>7、教改项目</strong></p><ol><li>《高等数学》课程组混合教学模式改革研究与实践，广西高等教育教学改革工程项目（重点项目），桂教高教〔2016〕35 号，（2016JGZ128），2016, 参与</li><li>本科职业教育背景下的信息与计算科学专业主干课程教学改革研究与实践（一般B类项目）,2015年度广西高等教育教学改革工程项目(2014JGB252), 2015-2017,参与</li><li>信息与计算科学专业应用型人才培养模式的研究与实践（一般B类项目）, 2014年度广西高等教育教学改革工程项目(2014JGB153), 2014-2016, 参与</li><li>信息与计算科学专业研究性实践教学改革研究与实践（一般A类项目）, 2011年度广西高等教育教学改革工程项目(2011JGA055), 2011-2013, 参与</li></ol>', '2017-09-18', '理学院', '0', '1353', '0');
INSERT INTO `teacher` VALUES ('9', '张浩敏', '男', '副教授', '', '张浩敏，理学博士学位，副教授，研究方向为随机微分方程数值解法，应用统计。 2012年指导学生参加广西区第二届研究生建模竞赛获优秀指导教师。2017年指导学生荣获全国大学生数学建模竞赛全国一等奖。 ', '广西桂林市建干路12号，桂林理工大学 理学院 （邮编：541004） ', '18807733181；18177378099', 'zhanghm@glut.edu.cn', 'static/teacher/d09da069-2653-4919-9590-c75e02987944.png', '<p><strong style=\"color: rgb(51, 51, 51);\">1、基本情况</strong></p><p><br/></p><p><br/></p><p><br/></p><p><strong>&nbsp;&nbsp;张浩敏</strong>，男，1978年10月生，研究生学历，理学博士学位，副教授，研究方向为随机微分方程数值解法，应用统计。&nbsp;</p><p>&nbsp;&nbsp;联系地址：广西桂林市建干路12号，桂林理工大学 理学院 （邮编：541004）&nbsp;</p><p>&nbsp;&nbsp;联系电话：18807733181；18177378099</p><p>&nbsp;&nbsp;电子邮址：&nbsp;zhanghm@glut.edu.cn</p><p><strong>2、个人主要经历</strong></p><ul><li>1996年毕业于邵阳学院(原邵阳师范高等专科学校)数学系，数学教育专业&nbsp;</li><li>1999年毕业于中国人民解放军国防科学技术大学，数学专业(自考)，2000年获理学学士学位&nbsp;</li><li>1999.8～2002.8：湖南省武冈市第六中学，高中数学教师&nbsp;</li><li>2005年毕业于中南大学数学科学与计算技术学院，概率论与数理统计专业，获理学硕士学位&nbsp;</li><li>2008年毕业于中南大学数学科学与计算技术学院，应用数学专业，获理学博士学位&nbsp;</li><li>2009～目前：桂林理工大学理学院，副教授&nbsp;&nbsp;</li></ul><p><strong>3、主要荣誉奖励</strong></p><ol><li>指导大学生科技立项获桂林理工大学特等奖，2011年&nbsp;</li><li>指导大学生科技立项获桂林理工大学三等奖，2011年&nbsp;</li><li>指导学生参加广西区第二届研究生建模竞赛获优秀指导教师，2012年&nbsp;&nbsp;</li></ol><p><strong>4、主要研究项目</strong></p><ol><li>主持. 国家自然科学基金(No.11101101): 几类中立型随机泛函微分方程数值方法研究.&nbsp;</li><li>主持. 广西教育厅科研项目(200911LX137): 多驱动随机微分方程数值方法研究.&nbsp;</li><li>参加. 国家自然科学基金项目(10871207): 几类随机泛函微分方程数值方法的收敛性、稳定性和散逸性.&nbsp;</li><li>参加. 广西空间信息与测绘重点实验室主任基金项目合同(桂科能1103108-08): GIS与测绘数据处理、建模及其应用研究.&nbsp;</li></ol><p><strong>5、已出版的专著和教材</strong></p><ol><li>普通高等教育“十二五”规划教材: 统计学, 吉林大学出版社, 2014.9.&nbsp;</li></ol><p><strong>6、已发表的科研论文</strong></p><ol><li>李启勇, 甘四清, 张浩敏. 随机延迟积分微分方程改进分布向后Euler方法的均方指数稳定性. 数值计算与计算机应用, 2013, 34(4): 241-248.&nbsp;</li><li>龙思成, 张浩敏. 变时滞随机模糊细胞神经网络的均方指数稳定性研究. 湖南城市学院学报(自然科学版), 2011, 20(2): 40~43.&nbsp;</li><li>Siqing Gan, Henri Schurz, Haomin Zhang, Mean square convergence of stochastic&nbsp;&nbsp;-methods for nonlinear neutral stochastic differential delay equations. International Journal of Numerical Analysis and Modeling, 2011, 8(2): 201~203. (SCI收录)&nbsp;</li><li>张浩敏, 甘四清, 胡琳. 随机比例方程带线性插值的半隐式Euler方法的均方收敛性, 计算数学, 2009, 31(3): 379-392.&nbsp;</li><li>Zhang Hao-min, Gan Si-qing, Hu Lin. The split-step backward Euler method for linear stochastic delay differential equations. Journal of Computational and Applied Mathematics, 2009, 225: 558-568. (SCI收录, EI收录)&nbsp;</li><li>Zhang Hao-min, Gan Si-qing. Mean square convergence of one-step methods for neutral stochastic differential delay equations. Applied Mathematics and Computation, 2008, 204: 884-890. (SCI收录, EI收录)&nbsp;</li><li>Zhang Hao-min, Yu Zheng, Long Shao-shun. Study on the limit behavior of a class of new nonlinear time series models, Journal of Shanxi University (Natural Science Edition), 2008, 31(3): 311-317, 322&nbsp;</li><li>Enwen Zhu, Haomin Zhang, Yong Wang, Jiezhong Zou, Zheng Yu, Zhenting Hou, p-th moment exponential stability of stochastic Cohen-Grossberg neural networks with time-varying delays. Neural Processes Letters, 2007, 26: 191 - 200. (SCI收录, EI收录).&nbsp;&nbsp;</li></ol><p><strong>7、已发表的教改论文</strong></p><ol><li>张浩敏, 王彬. 基于网络教学综合平台的《统计学专业英语》教学改革初探. 中国教育信息化, (已录用).&nbsp;</li><li>张浩敏, 伍欣叶. 网络资源在统计学中的应用实践. 黑龙江教育(高教研究与评估), 2012, (2): 1-2.&nbsp;</li><li>伍欣叶, 张浩敏. 函数思想在初等数学解题中的应用. 科技传播, 2010, (29): 102-103.&nbsp;</li></ol><p><strong>8、指导学生发表的论文</strong></p><ol><li>江期武, 张浩敏. 基于主成分回归的分布滞后模型及实证分析. 统计与决策, (已录用).&nbsp;</li><li>孙召伟, 张浩敏. 基于Copula函数的CTE研究与实证分析. 桂林理工大学学报, 2014, 34 (2): 396-400.&nbsp;</li><li>张浩奇, 伍欣叶, 张浩敏. 基于对称偏导数的多元函数Taylor公式及可微性分析. 广西科学院学报, 2013, 29(2): 71-74.&nbsp;</li><li>张浩奇, 张浩敏. 随机微分方程1.5阶随机Taylor方法的指数稳定性. 广西师范大学学报(自然科学版), 2012, 30(2): 35-41.&nbsp;</li><li>傅雅玲, 伍欣叶, 张浩敏. 我国大陆地区医疗服务水平的综合评价研究. 中国卫生产业, 2012, (10): 132-134.</li></ol><p><br/></p>', '2017-09-18', '理学院', '0', '970', '0');
INSERT INTO `teacher` VALUES ('10', '郦园', '女', '副教授', '浙江金华人', '郦园，女，副教授，浙江金华人。', '广西桂林市建干路12号，桂林理工大学 理学院 （邮编：541004）', '0773-5896179', null, 'static/teacher/f52a3cad-728c-4b20-b982-3a228e9f9857.png', '<p><strong>1、 基本情况</strong></p><p><strong>&nbsp;&nbsp;&nbsp;郦园</strong>，女，副教授，浙江金华人。</p><p>&nbsp;&nbsp;&nbsp;联系地址：广西桂林市建干路12号，桂林理工大学 理学院 （邮编：541004）</p><p>&nbsp;&nbsp;&nbsp;联系电话：0773-5896179</p><p><strong>2、 个人主要经历</strong></p><ul><li>1985年广西师范学院数学系，获理学学士&nbsp;&nbsp;</li><li>2000年广西师范大学数学与计算机学院，数学教学论方向研究生毕业&nbsp;&nbsp;</li><li>1985～2004 桂林理工大学民教部任教&nbsp;&nbsp;</li><li>2004～至今 桂林林理工大学理学院基础数学教研室任教&nbsp;&nbsp;</li></ul><p><strong>3、 主要荣誉奖励</strong></p><ul><li>2000.5区级课堂教学录像评比一等奖&nbsp;&nbsp;</li><li>2001.3全国高师数学教育研究会教案评比一等奖&nbsp;&nbsp;</li><li>2002.7全国数学创新教育论文评比一等奖&nbsp;&nbsp;</li><li>2005.9全国大学生数学建模二等奖&nbsp;&nbsp;</li></ul><p><strong>4、 主要研究项目</strong></p><ol><li>小教大专生创新能力的培养与发展, 广西教育科学”十五”规划课题(2002-C-154), 主要参与&nbsp;&nbsp;</li><li>院级精品课程线性代数，桂林工学院精品课程建设项目，桂工院教（2006）14号，参与.&nbsp;&nbsp;</li><li>自治区级精品课程线性代数，新世纪教改工程立项项目，桂教高教〔2007〕111号，参与.&nbsp;&nbsp;</li></ol><p><strong>5、 近期发表的教改论文</strong></p><ol><li>郦园, 论问题解决及其创新教育功能, 数学创新教育研究, 2001.8, 81-82&nbsp;&nbsp;</li><li>郦园, 创新与高等数学教学, 教育科学杂志, 2003.3, 17-18&nbsp;&nbsp;</li><li>郦园, 在高等数学教学中加强数学思想方法的教学,广西师范大学学报， 2005.7, 20-21&nbsp;&nbsp;</li><li>郦园, 文科高等数学教学的探讨, 广西师范大学学报, 2006.7, 37-38&nbsp;&nbsp;</li><li>郦园, 开设数学实验课的探讨与认识, 广西师范大学学报, 2007.7, 41-42&nbsp;&nbsp;</li><li>郦园, 计算机辅助高数教学的思考, 广西师范大学学报, 2008.6, 32-33&nbsp;&nbsp;</li><li>郦园, 多媒体对高等数学教学的作用, 广西师范大学学报, 2009.7, 55-56&nbsp;&nbsp;</li><li>郦园, 关于高高数教学模式的几点思考, 广西师范大学学报, 2010.6, 39-40&nbsp;&nbsp;</li><li>郦园, 关于线性代数课程的教学改革, 广西师范大学学报, 2011.6, 35-36</li></ol>', '2017-09-18', '理学院', '0', '932', '0');
INSERT INTO `teacher` VALUES ('11', '封全喜', '男', '副教授', '湖南衡阳人', '封全喜，男，1980年出生，湖南衡阳人，博士，副教授，2014年毕业于西安电子科技大学数学与统计学院应用数学专业，主要研究方向：人工智能计算、机器学习、双层优化及其应用。', '广西桂林市建干路12号 桂林理工大学理学院 邮编：541004', '15977437575', 'fqx9904@163.com', 'static/teacher/62c9c2a4-6580-4bc6-95a0-c8bc7286d3e0.png', '<p><strong>基本情况</strong></p><p>	<strong>封全喜</strong>，男，1980年出生，湖南衡阳人，博士，副教授，2014年毕业于西安电子科技大学数学与统计学院应用数学专业，主要研究方向：人工智能计算、机器学习、双层优化及其应用。</p><p>联系<strong>地址：</strong>广西桂林市建干路12号 桂林理工大学理学院 邮编：541004</p><p><strong>&nbsp;&nbsp;&nbsp;联系电话：</strong>15977437575</p><p><strong>&nbsp;&nbsp;&nbsp;电子邮址：</strong><a href=\"mailto:fqx9904@163.com\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">fqx9904@163.com</a></p><p>&nbsp;</p><p><strong>个人主要经历</strong></p><ul><li>2014.12至今 桂林理工大学理学院，副教授;</li><li>2016.10～2017.10 Oklahoma State University访问学者;</li><li>2010.9～2014.6西安电子科技大学数学与统计学院，获博士学位;</li><li>2008.10～2014.9桂林理工大学理学院，讲师;</li><li>2006.1～2008.9桂林理工大学理学院，助教;</li><li>2003.9～2006.1中南大学，获理学硕士学位;</li><li>1999.9～2003.6衡阳师范学院，获数学与应用数学学士学位<strong>。</strong></li></ul><p>&nbsp;</p><p><strong>主要荣誉奖励</strong></p><ol><li>2015.12荣获广西区数学建模竞赛优秀指导老师；</li><li>2015.10指导学生参加大学生数学建模竞赛获全国二等奖三项；</li><li>2015.10指导学生参加研究生数学建模竞赛获全国二等奖两项</li><li>2014.10指导学生参加大学生数学建模竞赛获全国二等奖两项；</li><li>2014.10指导研究生参加第十一届全国研究生数学建模竞赛获二等奖一项，；</li><li>2012.12《西部民族地区特色休闲 农业与新农村建设研究---以桂、黔、滇三省区为例》获广西区社会科学二等奖；</li><li>2012.12《基于大学生创新能力培养的数学实验系列课程改革与实践》获广西区教学成果奖一等奖；</li><li>2012.9指导学生数学建模竞赛获国家一等奖并获“MATLAB创新杯”；</li><li>2012.12荣获广西区数学建模竞赛优秀指导老师</li><li>2006.9指导学生参加全国大学生数学建模获全国二等奖一项；</li><li>2006-2010荣获校科技活动优秀指导老师；</li><li>2012.4指导黄万广参加2012年“蓝桥杯”全国软件设计大赛广西赛区本科组三等奖</li><li>2010.9参加第七届全国研究生数学建模竞赛获国家二等奖</li><li>2009.5指导学生参加校科技活动《给点阳光，我就会灿烂-留守儿童调查报告》二等奖</li></ol><p>&nbsp;</p><p><strong>主要研究项目</strong></p><p><strong>科研项目</strong></p><ol><li>基于近似最优性条件的鲁棒进化算法及其在需求不确定库存管理的应用，国家自然科学基金（批准号：61763008），主持，37万，2018.1---2021.12；</li><li>环境参数不确定的鲁棒进化算法及其在车辆路径问题的应用，广西区自然科学基金（批准号：2014GXNSFBA118023），主持，5万，2014.6---2017.6；</li><li>防城港市科技攻关项目（防财教[2014] 42号），主持，2015.1---2016.12；</li><li>集、送货一体化车辆路径问题的算法研究及应用，广西区教育厅立项项目（批准号：200812LX185），主持，2009.1～2011.12，已结题；</li><li>西部民族地区特色休闲农业与新农村建设研究——以归、黔滇三省区为例，国家社会基金西部项目（批准号：06XJY021），主要参加，2008.1～2009.12；</li><li>城市化背景下西部民族地区乡土景观保护研究，国家社科基金(批准号：10CMZ011），主要参加，2011,1～2012,12；</li><li>几类中立型随机泛函微分方程数值方法研究，国家青年基金项目；项目批准号：11101101，2011.12---2013.112；</li><li>“主客”感知视角下西南民族地区旅游影响机理与时空分异研究--以桂、黔两省区为例，国家青年基金项目， 项目批准号：41101136.</li></ol><p><strong>教学教改项目：</strong></p><ol><li>本科职业教育背景下的信息与计算科学专业主干课程教学改革研究与实践，2015年度广西区高等教育本科教学改革工程项目，（批准号：2015JGB252），2015.5 - 2017.5，主持.</li><li>信息与计算科学专业应用型人才培养模式的研究与实践, 2014年度广西高等教育教学改革工程项目，(批准号：2014JGB153), 2014-2016,参加.</li><li>信息与计算科学专业研究性实践教学改革研究与实践, 2011年度广西高等教育教学改革工程项目(批准号：2011JGA055), 2011-2013,参加.</li><li>信息与计算科学专业教学内容与课程体系改革研究与实践，校级教改立项项目（批准号：2009B09），主要参加，2010.1～2011.12.</li></ol><p>&nbsp;</p><p><strong>近期发表的科研论文</strong></p><ol><li>Quanxi Fenga, Sanyang Liu, Jianke Zhang et al. Improved biogeography-based optimization with random ring topology and Powell’s method. Applied Mathematical Modelling 41 (2017) 630–649 (SCI).</li><li>Quanxi Feng, Sanyang Liu Guoqiang Tang et al. Biogeography-based optimization with orthogonal crossover. Mathematical Problems in Engineering, Volume 2013, Article ID 353969, 20 pages,<a href=\"http://dx.doi.org/10.1155/2013/353969\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">http://dx.doi.org/10.1155/2013/353969</a>(SCI)</li><li>Quanxi Feng, Sanyang Liu, QunyingWu. Modified Biogeography-Based Optimization with Local Search Mechanism, Journal of Applied Mathematics, Volume 2013, Article ID 960524, 24 pages，<a href=\"http://dx.doi.org/10.1155/2013/960524\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">http://dx.doi.org/10.1155/2013/960524</a>(SCI)</li><li>Quanxi Feng, Sanyang Liu, Jianke Zhang. Biogeography-based optimization with improved migration operator and self-adaptive clear duplicate operator, Appl Intell (2014) 41:563–581, DOI 10.1007/s10489-014-0527-z (SCI)</li><li>Quanxi Feng, Sanyang Liu Guoqiang Tang et al. Particle based on biogeography-based optimisation for global optimisation problems, Int. J. Innovative Computing and Applications, Vol. 5, No. 4, 2013 . (EI)</li><li>Quanxi Feng, Liu Sanyang, Zhang Jianke, Extrapolated particle swarm optimization based on orthogonal design, Journal of Convergence Information Technology(JCIT) , 2012. (EI)</li><li>封全喜，刘三阳,雍龙泉,张建科,唐国强，Orthogonal based Differential Evolution for Absolute Value Equation，International Journal of Advancements in Computing Technology(IJACT)，2013.2</li><li>封全喜,刘诚,贾贞,车辆路径问题的改进遗传算法,数学的实践与认识, 2008, 38 (13): 123-129</li><li>封全喜,刘诚,基于混合遗传算法的物流配送模糊车辆调度问题研究,长沙交通学院学报, 2005, 21(3): 78-82</li><li>封全喜,刘诚,物流配送车辆路径问题的并行遗传算法研究,铁道科学与工程学报, 2005, 2(4) :88－91</li><li>龙志文,封全喜,时间测度上一类三点边值问题3正解的存在性,桂林工学院学报</li><li>高培旺;封全喜,切割定界与整数分枝结合求解整数线性规划,数学的实践与认识, 2004, 34(4): 109-103</li><li>贾贞,冯凤香,封全喜,环状自相似结构复杂动力网络模型及其同步,桂林工学院学报, 2008, 28(3): 425-429</li></ol><p>&nbsp;</p><p><strong>讲授课程</strong></p><ul><li>数学建模、高等代数、运筹学、数值分析、运筹与优化、数学软件、复变函数与积分变换、离散数学等本科生、研究生课程.</li></ul>', '2017-09-18', '理学院', '0', '1740', '0');
INSERT INTO `teacher` VALUES ('12', '宋奇庆', '男', '副教授', null, '宋奇庆，男，1980年11月，博士（运筹与管理专业），副教授，硕士生研究生导师，研究方向：非线性分析与对策论。', '广西桂林市建干路12号，桂林理工大学理学院（邮编：541004）', null, 'songqiqing@126.com', 'static/teacher/964607ca-d889-4cb7-a3bd-1be1fff43e9e.png', '<p><strong style=\"color: rgb(51, 51, 51);\">1、基本情况</strong><strong>&nbsp;&nbsp;&nbsp;宋奇庆</strong>，男，1980年11月，博士（运筹与管理专业），副教授，硕士生研究生导师，研究方向：非线性分析与对策论。</p><ul><li>联系地址：广西桂林市建干路12号，桂林理工大学理学院（邮编：541004）</li><li>电子邮箱：<a href=\"mailto:songqiqing@126.com\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(68, 68, 68);\">songqiqing@126.com</a></li></ul><p>&nbsp;</p><p><strong>2、个人主要经历</strong></p><ul><li>2009～2012中国农业大学，理学院，博士研究生</li><li>2006～2009桂林理工大学工作</li><li>2003～2006毕业于贵州大学</li></ul><p>&nbsp;</p><p><strong>3、教学工作及主要研究领域</strong></p><p>研究方向：非线性分析与对策论。主要从事非合作对策与应用非线性分析的研究，主要承担运筹学与优化、数学模型、图像处理等课程的教学工作。</p><p>&nbsp;</p><p><strong>4、主要荣誉奖励</strong></p><ol><li>2014-2015年度“桂林理工大学优秀班主任”；</li><li>2015年指导学生获“全国大学生数学建模竞赛本科组全国二等奖”（黄升龙、杨贵珍，吕洁娜）；</li><li>2012年获“广西区教学成果奖一等奖”（No.5）.</li><li>2011年论文“On the stability of the solution for multiobjective generalized games with the payoffs perturbed”获年度广西自然科学优秀论文奖；</li><li>2011年指导学生获“全国大学生数学建模竞赛本科组全国二等奖”（潘勇军、傅雅玲、卢威任）；</li><li>2009-2011年度桂林理工大学优秀共产党员；</li><li>多媒体教学软件《运筹学》获桂林工学院第六、七届多媒体教学软件大赛三等奖</li></ol><p>&nbsp;</p><p><strong>5、主要研究项目</strong></p><p><strong>科研项目</strong></p><ol><li>主持国家自然科学基金项目1项（11661030）；</li><li>完成国家自然科学基金项目1项(11226219)；</li><li>主持完成广西自然科学基金项目1项（No.2012GXNSFBA053013）；</li><li>主持完成广西教育厅科研基金项目1项（No.200702LX215）</li></ol><p><strong>教改项目</strong></p><ol><li>主持广西高等教育教学改革工程项目：信息与计算科学专业应用型人才培养模式的研究与实践（2014JGB153）</li><li>参与完成新世纪教改工程项目（2009C034）</li></ol><p>&nbsp;</p><p><strong>6、参编出版的教材</strong></p><ol><li>副主编《数值分析方法与实验:基于MATLAB实现》，高等教育出版社，2012.09</li><li>贾贞，宋奇庆等，《运筹学原理与实验教程》，华中师范大学出版社，2008.06</li></ol><p>&nbsp;</p><p><strong>7、科研论文</strong></p><ol><li>Q.Q. Song, M. Guo, H.Z. Chen, Essential sets of fixed points for correspondences with applications to Nash equilibria. Fixed Point Theory, 2016 (SCI)</li><li>Q.Q. Song, On the Graph of Solution Mappings of Variational Inequalities Problems. Journal of Function Spaces,2014(2):412-426. (SCI)</li><li>Q.Q. Song, G.Q. Tang, L.S. Wang, On essential stable sets of solutions in set optimization problems, Journal of Optimization Theory and Applications, 2013.(SCI)</li><li>Q.Q. Song, Z.P. Li, C.H. Fu, L.S. Wang. Optional contributions have positive effects for volunteering public goods games [J]. Physica A, 2011. (SSCI)</li><li>张丞,宋奇庆.商业银行应该给小额贷款公司提供批发贷款吗?基于演化博弈模型及其仿真过程的分析,广东金融学院学报, 2011.（CSSCI）.</li><li>Q.Q. Song, L.S. Wang. The existence of solutions for the system of vector quasi-equilibrium problems in topological order spaces [J]. Computers and Mathematics with Applications, 2011. (SCI)</li><li>Q.Q. Song，L.S. Wang. On the stability of the solution for multiobjective generalized games with the payoffs perturbed [J]. Nonlinear Analysis TMA, 2010. (SCI)</li></ol><p>&nbsp;</p><p><strong>8、近期发表的教改论文</strong></p><ol><li>宋奇庆,林亮，吴群英，唐国强，贾贞，理工科数学实验课程改革的探索与实践，教育教学论坛，2013，31：51-52.</li><li>宋奇庆,郭敏,浅谈高等教学过程最优化应注意的若干问题,教育理论与实践, 2008,12: 75～76</li><li>郭敏,宋奇庆,独立学院教师激励机制浅探,中国教师, 2008, 7: 193～194</li></ol>', '2017-09-18', '理学院', '0', '1128', '0');
INSERT INTO `teacher` VALUES ('13', '蒋远营', '男', '副教授', null, '蒋远营，1980年生，男，中共党员，研究生学历，经济学博士，副教授，副院长，任中国商业统计学会、市场调查与教学分会、广西数学学会理事会理事。近年来主持2项省级科研基金、1项教育厅重点项目，主要参与4项国家自然科学基金项目，目前在国内外核心期刊发表论文20余篇。', null, '', 'E－mail：jyy @glut.edu.cn', 'static/teacher/1cc6cbec-4b71-4811-abf8-aeae5865c105.png', '<p><strong style=\"color: rgb(51, 51, 51);\">个人简历</strong><span style=\"color: rgb(51, 51, 51);\">：</span>&nbsp;&nbsp;&nbsp;蒋远营，1980年生，男，中共党员，研究生学历，经济学博士，副教授，副院长，任中国商业统计学会、市场调查与教学分会、广西数学学会理事会理事。近年来主持2项省级科研基金、1项教育厅重点项目，主要参与4项国家自然科学基金项目，目前在国内外核心期刊发表论文20余篇。&nbsp;</p><p><strong>联系方式：</strong>E－mail：jyy @glut.edu.cn</p><p><strong>个人教学参考资料FTP链接</strong>：<span style=\"color: rgb(51, 51, 51);\">ftp://172.16.239.99/jyy</span></p><p><strong>研究兴趣</strong>：</p><ul><li>高频金融数据分析&nbsp;</li><li>非对称随机波动建模&nbsp;</li><li>贝叶斯经济计量&nbsp;</li><li>商务大数据分析&nbsp;</li></ul><p><strong>受教育经历：</strong></p><ul><li>2012/09---2015/07中国人民大学 统计学院统计学专业经济学博士&nbsp;</li><li>2005/09—2008/07：广西师范大学 数学科学学院 概率论与数理统计专业理学硕士&nbsp;</li><li>1998/09—2002/07：郑州大学 系统科学与数学系 应用数学专业理学学士&nbsp;</li><li>1995/09—1998/07：河南信阳县第二高级中学 学生&nbsp;</li></ul><p><strong>研究与工作经历：</strong></p><ul><li>2011/12—至今：桂林理工大学理学院副教授&nbsp;</li><li>2009/10—2010/10：日本 中央大学 理工学部系统经营工学客员讲师&nbsp;</li><li>2007/09—2011/11:桂林理工大学理学院讲师&nbsp;</li><li>2002/07—2007/08:桂林工学院数理系助教&nbsp;</li></ul><p><strong>获得奖励：</strong></p><ol><li>广西自然科学三等奖（排名第2） 2014年度广西人民政府&nbsp;</li><li>广西教学成果二等奖（排名第7） 2009 广西教育厅&nbsp;</li><li>桂林工学院十佳青年教师 2006----2007 桂林工学院&nbsp;</li><li>广西数学建模优秀指导教师 2005----2008 广西教育厅&nbsp;</li><li>广西高校优秀共青团干部 2009 广西高校团工委&nbsp;</li><li>院学生科技活动优秀指导教师 2007、2008 桂林工学院&nbsp;</li><li>指导数学建模比赛获全国一等奖 2007&nbsp;<span style=\"color: rgb(51, 51, 51);\">中国工业与应用数学学会</span></li><li><span style=\"color: rgb(51, 51, 51);\">指导大学生科技活动二等奖</span>&nbsp;2009 桂林理工大学</li><li>第九届全国多媒体大赛一等奖（排名第3） 2009 教育部教育管理信息中心&nbsp;</li><li>优秀班导师 2010-2012年度桂林理工大学&nbsp;</li></ol><p><strong>主持项目：</strong></p><ol><li>非对称随机波动条件下的金融风险测度与应用研究,项目编号KY2015ZD054 (经费5万元) 2015.4.1---2018.3-31 , 2015年度广西高校科研重点项目.&nbsp;</li><li>非对称随机波动模型杠杆效应的非参数估计及其在金融衍生证劵中的应用, 2014-2017 (经费5万元)广西自然科学基金面上项目，桂科自2014GXNSFAA118015.&nbsp;</li><li>一类相依随机变量序列（ND）的若干极限性质及其在计量经济中的应用,桂科青0991081.(经费5万元)2009.3—2012.3 (桂科基结字〔2012〕40号) .&nbsp;</li></ol><p><strong>参与项目：</strong></p><ol><li>非对称随机波动建模及其在金融风险管理中的应用研究,国家自然科学基金,项目批准号：7147113,时间:2015.01~2018.12 （60万）&nbsp;</li><li>纵向数据变系数模型非参数估计的极限理论研究，，国家自然科学基金,项目批准号：11361019,时间:2014.01~2017.12（40万）&nbsp;</li><li>线性和部分线性模型的M估计研究， ，国家自然科学基金,项目批准号：11061012，时间:2011.1-2013.12,（32万）；&nbsp;</li><li>从广义生灭过程到一般马氏过程的若干问题研究，国家自然科学基金（10661006）2007--2009。（22万）&nbsp;</li><li>金融风险测度与管理若干前沿问题研究, 2014年度教育部人文社会科学重点研究基地重大项目（20万）&nbsp;</li><li>非参数估计方法的概率极限理论及其在经济的应用研究,广西自然科学基金重点项目，项目批准号：2013GXNSFDA019001，时间：2013.04-2016.03（30万）&nbsp;</li></ol><p><strong>WorkingPaper：</strong></p><ol><li>YuanyingJiang, and Bo Zhang, Stochastic Volatility: modeling, Bayesian MCMC method and application （首届商务大数据博士生论坛报告，北京大学光华管理学院，2014)&nbsp;</li><li>YuanyingJiang, and Bo Zhang, Estimating the stochastic volatility modelwith fast Bayesian MCMC method（第六届国际统计论坛报告，中国人民大学，2014)&nbsp;</li><li>YuanyingJiang, Qunying Wu, The almost sure local central limit theorem for products ofpartial sums under negative association,（第八届全国概率极限理论和统计大样本理论研讨会报告，新疆师范大学，2013）&nbsp;</li></ol><p><strong>论文发表：</strong></p><ol><li>YunqianMa，BoZhang，Yuanying Jiang. Measure Systemic Risk of ChineseListed Banks Based on MES Multifactor Model, The 6th (2014) InternationalConference on Financial Risk and Corporate Finance Management June 30-July1,2014,294-302, ISSHP&nbsp;</li><li>HaiwuHuang, Guangmin Deng, Qingxia Zhang and Yuanying Jiang. On thestrong convergence for weighted sums of asymptotically almost negativelyassociated random variables, Kybernetika, Volume 50, Issue 3, 2014, Pages393-407&nbsp;</li><li>斯介生，肖宏伟，蒋远营，结构方程模型在综合评价应用中的问题和对策[J]，现代管理科学，2014（11）：99-101.&nbsp;</li><li>马云倩,蒋远营,吴慧珊;极差信息金融市场波动率的研究综述与评价，现代管理科学, 2014(6), 39-41,.&nbsp;</li><li>Yuanying Jiang, Qunying Wu.The almost sure local central limittheorem for the negatively associated sequences；Journal of Applied Mathematics，Volume 2013 (2013), Article ID 656257, 9 pages WOS:000322481700001&nbsp;<strong>IDS号:</strong>192JY<strong>,ISSN:</strong>1110-757X</li><li>蒋远营基于年龄移算法的人口预测研究统计与决策 2012 361(13) 82-84<span style=\"color: rgb(51, 51, 51);\">（cssci）</span>,ISSN1002-6487 CN42-1009</li><li>Yuanying Jiang, Yasushi Endow.Terminating markov renewal processes inview of lifetime model of retreaded tires fitted to trucks;Bulletin of Informatics andCybernetics; 2011 Vol.43,December:23-39, ISSN:<span style=\"color: rgb(51, 51, 51);\">0286-522X</span>&nbsp;</li><li>Qunying Wu, Yuanying Jiang. Strong Consistency of MEstimator in Linear Model for Negatively Dependent Random Samples, Communicationsin Statistics-Theory and Methods Volume<span style=\"color: rgb(51, 51, 51);\">40</span>Issue 3: 467–491, 2011, ISSN (printed): 0361-0926.ISSN (electronic): 1532-415X</li><li>Qunying Wu, Yuanying Jiang. The Strong Law of Large Numbers forPairwise NQD Random Variables，Journal of Systems Science and Complexity；(2011) 24: 347–357, ISSN: 1009-6124&nbsp;</li><li>蒋远营 王想人口发展方程模型在我国人口预测中的应用与研究统计与决策 2011 339(15):52-54, ISSN 1002-6487 CN42-1009&nbsp;</li><li>Yuanying Jiang,Qunying Wu.Weak Convergence and Complete Convergence for$widetilde{varphi}$-mixing Sequences，Chinese Journal of Engineering Mathematics；2010 27(6):1118-1124,ISSN 1005-3085, CN 61-1269&nbsp;</li><li>Qunying Wu, Yuanying Jiang.Chover-type laws of the k-iteratedlogarithm forρ-mixing sequences ofrandom variables，Journal ofMathematical Analysis and Applications, Volume 366, Issue 2, 15 June 2010,Pages 435-443, ISSN (printed): 0022-247X. ISSN (electronic): 1096-0813&nbsp;</li><li>Qunying Wu, Yuanying Jiang. Chover’s law of the iteratedlogarithm for na sequences，Journal of Systems Science and Complexity；2010 23（2）: 293–302,ISSN: 1009-6124&nbsp;</li><li>Qunying Wu, Yuanying Jiang. A law of the iteratedlogarithm of partial sums for NA random variables, Journal of the KoreanStatistical Society；2010 39（2）: 199–206ISSN: 1226-3192&nbsp;</li><li>Yuanying Jiang,Qunying Wu.Logarithm Theorems for Negatively Dependent Random Sequence，Mathematica Applicata；2009 22（2）：248-254, ISSN 1001-9847 CN42-1184&nbsp;</li><li>Qunying Wu, Yuanying Jiang. Some Strong Limit Theorems forWeighted Product Sums of -MixingSequences of Random Variables. Journal of Inequalities and Applications，Volume 2009, ArticleID 174768, 10 pages。（SCI） 检索号:540JF, ISSN (printed): 1025-5834. ISSN (electronic): 1029-242X.&nbsp;</li><li>王想邓光明蒋远营零均值高斯AR(p)模型参数的最小化残差平方和（RSS）下条件最大似然估计及其最优性统计与决策 2009 282 (06）: 35~37,ISSN 1002-6487 CN 42-1009C&nbsp;</li><li>Qunying Wu, Yuanying Jiang. Almost sure convergence propertiesfor-mixing sequences of random variables，Quantitative AnalysisTechnology and Related Engineering Applications: Conference Proceedings of 2009International Institute of Applied Statistics Studies, IIASS 2009, pp. 833–838,2009&nbsp;</li><li>Qunying Wu, Yuanying Jiang. Some strong limittheorems for-mixing sequences of randomvariables, Statistics &amp; Probability Letters, 2008<strong>78（8）：</strong>945~1050., ISSN: 0167-7152</li></ol>', '2017-09-18', '理学院', '0', '1923', '0');

-- ----------------------------
-- Table structure for teaminfo
-- ----------------------------
DROP TABLE IF EXISTS `teaminfo`;
CREATE TABLE `teaminfo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '参赛人学号',
  `stunum` varchar(13) NOT NULL,
  `compeid` int NOT NULL COMMENT '赛事的编号',
  `capid` int NOT NULL COMMENT '队长的用户id',
  `pdate` date NOT NULL COMMENT '报名时间',
  `currentstatus` int NOT NULL COMMENT '报名进度',
  `mrole` int NOT NULL COMMENT '成员担任的角色(0:队长 1:队友)',
  `presult` varchar(255) DEFAULT NULL COMMENT '审核不通过时的备注或审核通过时的报名号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teaminfo
-- ----------------------------
INSERT INTO `teaminfo` VALUES ('20', '3172090710213', '8', '1', '2021-05-07', '1', '0', null);

-- ----------------------------
-- Table structure for thesis
-- ----------------------------
DROP TABLE IF EXISTS `thesis`;
CREATE TABLE `thesis` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `thedate` varchar(10) NOT NULL COMMENT '论文提交时间',
  `teamid` int DEFAULT NULL COMMENT '所属参赛队伍编号',
  `matchid` int DEFAULT NULL COMMENT '所属竞赛信息编号',
  `thecontent` mediumtext COMMENT '论文内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thesis
-- ----------------------------
INSERT INTO `thesis` VALUES ('20', '2021-5-19', '1', '8', ' <p>这是论文内容</p>');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `uemail` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usernickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usersex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userfaceaddress` varchar(255) DEFAULT NULL,
  `userlevel` varchar(5) DEFAULT NULL,
  `userfrom` varchar(255) DEFAULT NULL,
  `usersignature` varchar(255) DEFAULT NULL,
  `uloginid` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `upassword` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uonline` varchar(5) DEFAULT NULL,
  `urole` int DEFAULT NULL COMMENT '系统使用角色(0: 普通用户 1: 后台管理员)',
  `ustunum` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学生学号',
  `ucent` int DEFAULT NULL COMMENT '用户当前积分',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1933221828@qq.com', '雪山飞狐', '男', '2021-01-16', 'static/用户头像/d9504dc0-109a-4524-8f42-f5fa403ae19b.jpg', 'LV1', '广西北海', '限制其然，在知其所以然，便是求知', '317209', 'bd8ff5e2d5bc31747e25bbf4289ccd9b', '离线', '1', '3172090710213', '0');
INSERT INTO `user` VALUES ('2', '1933221828@qq.com', '封老师好', '男', '2021-01-16', 'static/用户头像/72db4da0-f346-4063-814b-88b9f4273408.jpg', 'LV1', '湖南衡阳', '信科老师', 'thesoundofsilence', '26eb7676b573e469393cc1595ef9ba03', '在线', '2', null, '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userfeedback
-- ----------------------------
INSERT INTO `userfeedback` VALUES ('2', '317209', '2021-04-8', '111', '未处理');
INSERT INTO `userfeedback` VALUES ('5', '317209', '2021-04-9', '<p>加油</p>', '未处理');

-- ----------------------------
-- Table structure for userlogin
-- ----------------------------
DROP TABLE IF EXISTS `userlogin`;
CREATE TABLE `userlogin` (
  `uloid` int NOT NULL AUTO_INCREMENT,
  `userid` int DEFAULT NULL,
  `uloginid` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `upassword` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uloid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userlogin
-- ----------------------------
INSERT INTO `userlogin` VALUES ('3', '2', 'thesoundofsilence', '26eb7676b573e469393cc1595ef9ba03');
INSERT INTO `userlogin` VALUES ('4', '1', '317209', 'bd8ff5e2d5bc31747e25bbf4289ccd9b');

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
) ENGINE=InnoDB AUTO_INCREMENT=1782 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of useroperation
-- ----------------------------
INSERT INTO `useroperation` VALUES ('302', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('303', '1', 't:2', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('304', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('305', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('306', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('307', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('308', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('309', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('310', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('311', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('312', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('313', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('314', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('315', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('316', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('317', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('318', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('319', '1', 's:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('320', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('321', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('322', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('323', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('324', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('325', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('326', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('327', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('328', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('329', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('330', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('331', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('332', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('333', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('334', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('335', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('336', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('337', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('338', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('339', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('340', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('341', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('342', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('343', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('344', '1', 't:1', '2021-04-17', '阅读');
INSERT INTO `useroperation` VALUES ('345', '17', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('346', '17', 't:1', '2021-04-18', '评论');
INSERT INTO `useroperation` VALUES ('347', '19', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('348', '19', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('349', '19', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('350', '19', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('351', '19', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('352', '19', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('353', '19', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('354', '19', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('355', '19', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('356', '19', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('357', '19', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('358', '19', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('359', '19', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('360', '20', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('361', '20', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('362', '20', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('363', '21', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('364', '21', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('365', '21', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('366', '21', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('367', '21', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('368', '21', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('369', '24', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('370', '24', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('371', '24', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('372', '26', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('373', '26', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('374', '27', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('375', '28', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('376', '29', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('377', '30', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('378', '30', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('379', '30', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('380', '31', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('381', '31', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('382', '31', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('383', '31', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('384', '31', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('385', '31', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('386', '31', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('387', '31', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('388', '32', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('389', '32', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('390', '32', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('391', '32', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('392', '33', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('393', '33', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('394', '33', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('395', '33', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('396', '33', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('397', '33', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('398', '33', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('399', '33', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('400', '34', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('401', '35', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('402', '36', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('403', '1', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('404', '1', 't:1', '2021-04-18', '评论');
INSERT INTO `useroperation` VALUES ('405', '1', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('406', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('407', '2', 't:1', '2021-04-18', '评论');
INSERT INTO `useroperation` VALUES ('408', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('409', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('410', '1', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('411', '1', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('412', '1', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('413', '1', 't:1', '2021-04-18', '评论');
INSERT INTO `useroperation` VALUES ('414', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('415', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('416', '2', 't:1', '2021-04-18', '评论');
INSERT INTO `useroperation` VALUES ('417', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('418', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('419', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('420', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('421', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('422', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('423', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('424', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('425', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('426', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('427', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('428', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('429', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('430', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('431', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('432', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('433', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('434', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('435', '2', 't:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('436', '2', 's:1', '2021-04-18', '阅读');
INSERT INTO `useroperation` VALUES ('437', '1', 't:1', '2021-04-21', '阅读');
INSERT INTO `useroperation` VALUES ('438', '1', '学术资讯:1', '2021-04-21', '阅读');
INSERT INTO `useroperation` VALUES ('440', '1', 't:1', '2021-04-25', '阅读');
INSERT INTO `useroperation` VALUES ('441', '1', 't:1', '2021-04-25', '阅读');
INSERT INTO `useroperation` VALUES ('442', '1', 't:1', '2021-04-25', '阅读');
INSERT INTO `useroperation` VALUES ('443', '1', 't:1', '2021-04-25', '阅读');
INSERT INTO `useroperation` VALUES ('444', '1', 't:1', '2021-04-25', '阅读');
INSERT INTO `useroperation` VALUES ('445', '1', 't:1', '2021-04-25', '阅读');
INSERT INTO `useroperation` VALUES ('446', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('447', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('448', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('449', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('450', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('451', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('452', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('453', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('454', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('455', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('456', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('457', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('458', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('459', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('460', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('461', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('462', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('463', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('464', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('465', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('466', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('467', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('468', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('469', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('470', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('471', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('472', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('473', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('474', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('475', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('476', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('477', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('478', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('479', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('480', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('481', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('482', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('483', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('484', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('485', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('486', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('487', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('488', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('489', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('490', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('491', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('492', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('493', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('494', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('495', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('496', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('497', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('498', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('499', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('500', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('501', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('502', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('503', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('504', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('505', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('506', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('507', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('508', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('509', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('510', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('511', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('512', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('513', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('514', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('515', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('516', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('517', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('518', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('519', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('520', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('521', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('522', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('523', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('524', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('525', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('526', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('527', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('528', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('529', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('530', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('531', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('532', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('533', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('534', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('535', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('536', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('537', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('538', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('539', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('540', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('541', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('542', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('543', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('544', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('545', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('546', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('547', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('548', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('549', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('550', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('551', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('552', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('553', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('554', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('555', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('556', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('557', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('558', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('559', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('560', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('561', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('562', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('563', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('564', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('565', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('566', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('567', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('568', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('569', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('570', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('571', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('572', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('573', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('574', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('575', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('576', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('577', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('578', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('579', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('580', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('581', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('582', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('583', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('584', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('585', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('586', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('587', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('588', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('589', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('590', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('591', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('592', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('593', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('594', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('595', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('596', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('597', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('598', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('599', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('600', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('601', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('602', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('603', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('604', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('605', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('606', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('607', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('608', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('609', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('610', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('611', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('612', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('613', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('614', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('615', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('616', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('617', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('618', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('619', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('620', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('621', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('622', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('623', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('624', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('625', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('626', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('627', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('628', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('629', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('630', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('631', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('632', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('633', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('634', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('635', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('636', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('637', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('638', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('639', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('640', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('641', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('642', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('643', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('644', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('645', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('646', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('647', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('648', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('649', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('650', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('651', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('652', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('653', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('654', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('655', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('656', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('657', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('658', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('659', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('660', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('661', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('662', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('663', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('664', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('665', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('666', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('667', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('668', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('669', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('670', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('671', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('672', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('673', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('674', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('675', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('676', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('677', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('678', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('679', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('680', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('681', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('682', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('683', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('684', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('685', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('686', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('687', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('688', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('689', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('690', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('691', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('692', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('693', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('694', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('695', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('696', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('697', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('698', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('699', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('700', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('701', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('702', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('703', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('704', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('705', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('706', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('707', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('708', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('709', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('710', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('711', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('712', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('713', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('714', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('715', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('716', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('718', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('719', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('720', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('721', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('722', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('723', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('724', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('725', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('726', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('727', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('728', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('729', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('730', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('731', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('732', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('733', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('734', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('735', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('736', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('737', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('738', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('739', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('740', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('741', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('742', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('743', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('744', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('745', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('746', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('747', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('748', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('749', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('750', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('751', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('752', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('753', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('754', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('755', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('756', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('757', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('758', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('759', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('760', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('761', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('762', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('763', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('764', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('765', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('766', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('767', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('768', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('769', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('770', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('771', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('772', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('773', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('774', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('775', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('776', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('777', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('778', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('779', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('780', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('781', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('782', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('783', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('784', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('785', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('786', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('787', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('788', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('789', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('790', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('791', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('792', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('793', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('794', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('795', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('796', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('797', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('798', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('799', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('800', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('801', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('802', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('803', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('804', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('805', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('806', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('807', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('808', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('809', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('810', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('811', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('812', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('813', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('814', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('815', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('816', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('817', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('818', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('819', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('820', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('821', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('822', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('823', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('824', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('825', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('826', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('827', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('828', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('829', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('830', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('831', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('832', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('833', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('834', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('835', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('836', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('837', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('838', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('839', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('840', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('841', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('842', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('843', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('844', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('845', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('846', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('847', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('848', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('849', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('850', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('851', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('852', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('853', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('854', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('855', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('856', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('857', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('858', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('859', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('860', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('861', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('862', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('863', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('864', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('865', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('866', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('867', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('868', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('869', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('870', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('871', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('872', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('873', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('874', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('875', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('876', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('877', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('878', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('879', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('880', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('881', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('882', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('883', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('884', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('885', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('886', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('887', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('888', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('889', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('890', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('891', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('892', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('893', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('894', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('895', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('896', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('897', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('898', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('899', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('900', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('901', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('902', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('903', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('904', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('905', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('906', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('907', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('908', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('909', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('910', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('911', '1', 't:1', '2021-04-26', '评论');
INSERT INTO `useroperation` VALUES ('912', '1', 't:1', '2021-04-26', '阅读');
INSERT INTO `useroperation` VALUES ('913', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('914', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('915', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('916', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('917', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('918', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('919', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('920', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('921', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('922', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('923', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('924', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('925', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('926', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('927', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('928', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('929', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('930', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('931', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('932', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('933', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('934', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('935', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('936', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('937', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('938', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('939', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('940', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('941', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('942', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('943', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('944', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('945', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('946', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('947', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('948', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('949', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('950', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('951', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('952', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('953', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('954', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('955', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('956', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('957', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('958', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('959', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('960', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('961', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('962', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('963', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('964', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('965', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('966', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('967', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('968', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('969', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('970', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('971', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('972', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('973', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('974', '1', 't:1', '2021-04-28', '评论');
INSERT INTO `useroperation` VALUES ('975', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('976', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('977', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('978', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('979', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('980', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('981', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('982', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('983', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('984', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('985', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('986', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('987', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('988', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('989', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('990', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('991', '1', 't:1', '2021-04-28', '评论');
INSERT INTO `useroperation` VALUES ('992', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('993', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('994', '1', 't:1', '2021-04-28', '评论');
INSERT INTO `useroperation` VALUES ('995', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('996', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('997', '1', 't:1', '2021-04-28', '评论');
INSERT INTO `useroperation` VALUES ('998', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('999', '1', 't:1', '2021-04-28', '评论');
INSERT INTO `useroperation` VALUES ('1000', '1', 't:1', '2021-04-28', '评论');
INSERT INTO `useroperation` VALUES ('1001', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1002', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1003', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1004', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1005', '1', 't:1', '2021-04-28', '评论');
INSERT INTO `useroperation` VALUES ('1006', '1', 't:1', '2021-04-28', '评论');
INSERT INTO `useroperation` VALUES ('1007', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1008', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1009', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1010', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1011', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1012', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1013', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1014', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1015', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1016', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1017', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1018', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1019', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1020', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1021', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1022', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1023', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1024', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1025', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1026', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1027', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1028', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1029', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1030', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1031', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1032', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1033', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1034', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1035', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1036', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1037', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1038', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1039', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1040', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1041', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1042', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1043', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1044', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1045', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1046', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1047', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1048', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1049', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1050', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1051', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1052', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1053', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1054', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1055', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1056', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1057', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1058', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1059', '1', 'u:230', '2021-04-28', '评论');
INSERT INTO `useroperation` VALUES ('1060', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1061', '1', 'u:226', '2021-04-28', '评论');
INSERT INTO `useroperation` VALUES ('1062', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1063', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1064', '1', 'u:230', '2021-04-28', '评论');
INSERT INTO `useroperation` VALUES ('1065', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1066', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1067', '1', 'u:226', '2021-04-28', '评论');
INSERT INTO `useroperation` VALUES ('1068', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1069', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1070', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1071', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1072', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1073', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1074', '1', 'u:226', '2021-04-28', '评论');
INSERT INTO `useroperation` VALUES ('1075', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1076', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1077', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1078', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1079', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1080', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1081', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1082', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1083', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1084', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1085', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1086', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1087', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1090', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1091', '1', 'u:260', '2021-04-28', '评论');
INSERT INTO `useroperation` VALUES ('1092', '1', 'u:264', '2021-04-28', '评论');
INSERT INTO `useroperation` VALUES ('1093', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1094', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1095', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1096', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1097', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1098', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1099', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1100', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1101', '1', 't:1', '2021-04-28', '阅读');
INSERT INTO `useroperation` VALUES ('1102', '1', 't:1', '2021-04-29', '阅读');
INSERT INTO `useroperation` VALUES ('1103', '1', 't:1', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1104', '1', 't:1', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1107', '1', 't:1', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1108', null, 't:1', '2021-05-4', '点赞');
INSERT INTO `useroperation` VALUES ('1109', '1', 't:1', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1110', '1', 't:1', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1111', '1', 't:1', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1112', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1113', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1114', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1115', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1116', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1117', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1118', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1119', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1120', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1121', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1122', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1123', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1124', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1125', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1126', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1127', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1128', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1129', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1130', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1131', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1132', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1133', '1', '协会荣誉:25', '2021-05-4', '评论');
INSERT INTO `useroperation` VALUES ('1134', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1135', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1136', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1137', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1138', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1139', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1140', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1141', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1142', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1143', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1144', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1145', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1146', '1', 't:1', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1147', '1', 't:1', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1148', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1149', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1150', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1151', '1', '协会荣誉:45', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1152', '1', '协会荣誉:45', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1153', '1', '协会荣誉:45', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1154', '1', '协会荣誉:45', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1155', '1', '协会荣誉:45', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1156', '1', '协会荣誉:45', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1157', '1', '协会荣誉:45', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1158', '1', '协会荣誉:45', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1159', '1', '协会荣誉:45', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1160', '1', '协会荣誉:45', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1161', '1', '协会荣誉:45', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1162', '1', '协会荣誉:45', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1163', '1', '协会荣誉:45', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1164', '1', '协会荣誉:45', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1165', '1', '协会荣誉:45', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1168', '1', '协会荣誉:45', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1169', '1', '宣传视频:40', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1170', '1', '宣传视频:40', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1171', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1172', '1', '协会荣誉:45', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1173', '1', '试题论文:48', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1174', '1', '试题论文:48', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1175', '1', '试题论文:48', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1176', '1', '试题论文:48', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1177', '1', '试题论文:48', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1178', '1', '试题论文:48', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1179', '1', '试题论文:48', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1180', '1', '协会荣誉:45', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1181', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1182', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1183', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1184', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1185', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1186', '1', '试题论文:48', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1187', '1', '试题论文:48', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1188', '1', '试题论文:48', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1189', '1', '宣传视频:40', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1190', '1', '宣传视频:40', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1191', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1192', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1193', '1', '协会荣誉:25', '2021-05-4', '阅读');
INSERT INTO `useroperation` VALUES ('1194', '1', 's:1', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1195', '1', 's:1', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1196', '1', 's:1', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1197', '1', 's:1', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1198', '1', 's:1', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1199', '1', 't:1', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1200', '1', 's:1', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1201', '1', 's:1', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1202', '1', 's:1', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1203', '1', 's:1', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1204', '1', 's:1', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1205', '1', 's:1', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1206', '1', 's:1', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1207', '1', 's:1', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1208', '1', 's:1', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1209', '1', '协会荣誉:25', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1210', '1', '协会荣誉:26', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1211', '1', '协会荣誉:27', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1212', '1', '协会荣誉:27', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1213', '1', '协会荣誉:27', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1214', '1', '协会荣誉:27', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1215', '1', '协会荣誉:27', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1216', '1', '协会荣誉:29', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1217', '1', '协会荣誉:29', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1218', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1219', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1220', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1221', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1222', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1223', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1224', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1225', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1226', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1227', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1228', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1229', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1230', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1231', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1232', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1233', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1234', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1235', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1236', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1237', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1238', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1239', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1240', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1241', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1242', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1243', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1244', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1245', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1246', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1247', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1248', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1249', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1250', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1251', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1252', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1253', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1254', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1255', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1256', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1257', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1258', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1259', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1260', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1261', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1262', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1263', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1264', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1265', '1', '协会荣誉:30', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1266', '1', '协会荣誉:26', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1267', '1', '协会荣誉:25', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1268', '1', '协会荣誉:29', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1269', '1', '竞赛成绩:32', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1270', '1', '竞赛成绩:33', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1271', '1', 't:1', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1272', '1', '学术资讯:1', '2021-05-5', '阅读');
INSERT INTO `useroperation` VALUES ('1273', '1', 's:1', '2021-05-6', '阅读');
INSERT INTO `useroperation` VALUES ('1274', '1', 's:1', '2021-05-6', '阅读');
INSERT INTO `useroperation` VALUES ('1275', '1', '协会荣誉:26', '2021-05-6', '阅读');
INSERT INTO `useroperation` VALUES ('1276', '1', 's:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1277', '1', 't:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1278', '1', 't:2', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1279', '1', 't:2', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1280', '1', 's:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1281', '1', 't:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1282', '1', 't:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1283', '1', 't:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1284', '1', 't:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1285', '1', 't:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1286', '1', 't:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1287', '1', 't:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1288', '1', 't:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1289', '1', 't:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1290', '1', 't:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1291', '1', 't:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1292', '1', 't:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1293', '1', 't:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1294', '1', 't:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1295', '1', 't:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1296', '1', 't:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1297', '1', 's:1', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1298', '1', 't:2', '2021-05-9', '阅读');
INSERT INTO `useroperation` VALUES ('1299', '1', 's:1', '2021-05-10', '阅读');
INSERT INTO `useroperation` VALUES ('1300', '1', '试题论文:48', '2021-05-10', '阅读');
INSERT INTO `useroperation` VALUES ('1301', '1', '社团活动:52', '2021-05-10', '阅读');
INSERT INTO `useroperation` VALUES ('1302', '1', '社团活动:52', '2021-05-10', '阅读');
INSERT INTO `useroperation` VALUES ('1303', '1', '社团活动:52', '2021-05-10', '阅读');
INSERT INTO `useroperation` VALUES ('1304', '1', '社团活动:52', '2021-05-10', '阅读');
INSERT INTO `useroperation` VALUES ('1305', '1', 't:1', '2021-05-10', '阅读');
INSERT INTO `useroperation` VALUES ('1306', '1', '学术资讯:1', '2021-05-10', '阅读');
INSERT INTO `useroperation` VALUES ('1308', '1', '竞赛培训:4', '2021-05-10', '阅读');
INSERT INTO `useroperation` VALUES ('1309', '1', '社团活动:52', '2021-05-10', '阅读');
INSERT INTO `useroperation` VALUES ('1310', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1311', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1312', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1313', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1314', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1315', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1316', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1317', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1318', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1319', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1320', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1321', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1322', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1323', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1324', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1325', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1326', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1327', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1328', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1329', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1330', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1331', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1332', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1333', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1334', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1335', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1336', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1337', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1338', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1339', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1340', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1341', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1342', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1343', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1344', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1345', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1346', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1347', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1348', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1349', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1350', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1351', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1352', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1353', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1354', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1355', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1356', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1357', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1358', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1359', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1360', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1361', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1362', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1363', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1364', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1365', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1366', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1367', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1368', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1369', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1370', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1371', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1372', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1373', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1374', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1375', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1376', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1377', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1378', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1379', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1380', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1381', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1382', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1383', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1384', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1385', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1386', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1387', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1388', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1389', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1390', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1391', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1392', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1393', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1394', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1395', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1396', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1397', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1398', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1399', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1400', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1401', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1402', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1403', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1404', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1405', '1', 's:1', '2021-05-11', '评论');
INSERT INTO `useroperation` VALUES ('1406', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1407', '1', 's:1', '2021-05-11', '评论');
INSERT INTO `useroperation` VALUES ('1408', '1', 's:1', '2021-05-11', '评论');
INSERT INTO `useroperation` VALUES ('1409', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1410', '1', 's:1', '2021-05-11', '评论');
INSERT INTO `useroperation` VALUES ('1411', '1', 's:1', '2021-05-11', '评论');
INSERT INTO `useroperation` VALUES ('1412', '1', 's:1', '2021-05-11', '评论');
INSERT INTO `useroperation` VALUES ('1413', '1', 's:1', '2021-05-11', '评论');
INSERT INTO `useroperation` VALUES ('1414', '1', 's:1', '2021-05-11', '评论');
INSERT INTO `useroperation` VALUES ('1415', '1', 's:1', '2021-05-11', '评论');
INSERT INTO `useroperation` VALUES ('1416', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1417', '1', 's:1', '2021-05-11', '阅读');
INSERT INTO `useroperation` VALUES ('1418', '1', 't:2', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1419', '1', 't:2', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1420', '1', 't:2', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1421', '1', 't:2', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1422', '1', 't:3', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1423', '1', 't:4', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1424', '1', 't:5', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1425', '1', 't:6', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1426', '1', 't:7', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1427', '1', 't:8', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1428', '1', 't:9', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1429', '1', 't:10', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1430', '1', 't:11', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1431', '1', 't:12', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1432', '1', 't:13', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1433', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1434', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1435', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1436', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1437', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1438', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1439', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1440', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1441', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1442', '1', 't:2', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1443', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1444', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1445', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1446', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1447', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1448', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1449', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1450', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1451', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1452', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1453', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1454', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1455', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1456', '1', 't:3', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1457', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1458', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1459', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1460', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1461', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1462', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1463', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1464', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1465', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1466', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1467', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1468', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1469', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1470', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1471', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1472', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1473', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1474', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1475', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1476', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1477', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1478', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1479', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1480', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1481', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1482', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1483', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1484', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1485', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1486', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1487', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1488', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1489', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1490', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1491', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1492', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1493', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1494', '1', 't:2', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1495', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1496', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1497', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1498', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1499', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1500', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1501', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1502', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1503', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1504', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1505', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1506', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1507', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1508', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1509', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1510', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1511', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1512', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1513', '2', 't:2', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1514', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1515', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1516', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1517', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1518', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1519', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1520', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1521', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1522', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1523', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1524', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1525', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1526', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1527', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1528', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1529', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1530', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1531', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1532', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1533', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1534', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1535', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1536', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1537', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1538', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1539', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1540', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1541', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1542', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1543', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1544', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1545', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1546', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1547', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1548', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1549', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1550', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1551', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1552', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1553', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1554', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1555', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1556', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1557', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1558', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1559', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1560', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1561', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1562', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1563', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1564', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1565', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1566', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1567', '2', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1568', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1569', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1570', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1571', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1572', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1573', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1574', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1575', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1576', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1577', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1578', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1579', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1580', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1581', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1582', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1583', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1584', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1585', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1586', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1587', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1588', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1589', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1590', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1591', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1592', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1593', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1594', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1595', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1596', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1597', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1598', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1599', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1600', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1601', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1602', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1603', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1604', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1605', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1606', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1607', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1608', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1609', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1610', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1611', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1612', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1613', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1614', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1615', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1616', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1617', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1618', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1619', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1620', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1621', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1622', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1623', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1624', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1625', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1626', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1627', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1628', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1629', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1630', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1631', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1632', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1633', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1634', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1635', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1636', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1637', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1638', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1639', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1640', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1641', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1642', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1643', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1644', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1645', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1646', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1647', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1648', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1649', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1650', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1651', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1652', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1653', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1654', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1655', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1656', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1657', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1658', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1659', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1660', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1661', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1662', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1663', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1664', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1665', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1666', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1667', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1668', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1669', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1670', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1671', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1672', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1673', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1674', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1675', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1676', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1677', '1', 't:2', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1678', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1679', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1680', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1681', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1682', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1683', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1684', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1685', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1686', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1687', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1688', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1689', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1690', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1691', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1692', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1693', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1694', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1695', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1696', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1697', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1698', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1699', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1700', '1', 't:2', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1701', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1702', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1703', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1704', '1', 's:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1705', '1', 's:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1706', '1', 's:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1707', '1', 's:2', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1708', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1709', '1', 's:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1710', '1', 's:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1711', '1', 's:2', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1712', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1713', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1714', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1715', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1716', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1717', '1', 't:2', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1718', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1719', '1', 't:1', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1720', '1', 't:2', '2021-05-15', '阅读');
INSERT INTO `useroperation` VALUES ('1721', '1', '协会荣誉:25', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1722', '1', '协会荣誉:25', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1723', '1', '协会荣誉:25', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1724', '1', '协会荣誉:25', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1725', '1', '协会荣誉:25', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1726', '1', '协会荣誉:25', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1727', '1', '协会荣誉:25', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1728', '1', '协会荣誉:25', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1729', '1', '协会荣誉:25', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1730', '1', '协会荣誉:25', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1731', '1', '协会荣誉:25', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1732', '1', '协会荣誉:25', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1733', '1', '协会荣誉:25', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1734', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1735', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1736', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1737', '1', '协会荣誉:62', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1738', '1', '协会荣誉:61', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1739', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1740', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1741', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1742', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1743', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1744', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1745', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1746', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1747', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1748', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1749', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1750', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1751', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1752', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1753', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1754', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1755', '1', '协会荣誉:60', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1758', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1759', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1760', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1761', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1762', '1', '协会荣誉:63', '2021-05-16', '阅读');
INSERT INTO `useroperation` VALUES ('1763', '1', '协会荣誉:25', '2021-05-18', '阅读');
INSERT INTO `useroperation` VALUES ('1764', '1', '协会荣誉:30', '2021-05-18', '阅读');
INSERT INTO `useroperation` VALUES ('1765', '1', '协会荣誉:25', '2021-05-18', '阅读');
INSERT INTO `useroperation` VALUES ('1766', '1', '试题论文:48', '2021-05-18', '阅读');
INSERT INTO `useroperation` VALUES ('1767', '1', '协会荣誉:63', '2021-05-18', '阅读');
INSERT INTO `useroperation` VALUES ('1768', '1', '试题论文:48', '2021-05-18', '阅读');
INSERT INTO `useroperation` VALUES ('1769', '1', '协会荣誉:25', '2021-05-18', '阅读');
INSERT INTO `useroperation` VALUES ('1770', '1', '宣传视频:43', '2021-05-18', '阅读');
INSERT INTO `useroperation` VALUES ('1771', '1', '竞赛成绩:32', '2021-05-18', '阅读');
INSERT INTO `useroperation` VALUES ('1772', '1', '竞赛成绩:32', '2021-05-18', '点赞');
INSERT INTO `useroperation` VALUES ('1773', '1', '竞赛成绩:32', '2021-05-18', '阅读');
INSERT INTO `useroperation` VALUES ('1774', '1', 's:1', '2021-05-20', '阅读');
INSERT INTO `useroperation` VALUES ('1775', '1', '试题论文:48', '2021-05-20', '阅读');
INSERT INTO `useroperation` VALUES ('1776', '1', '试题论文:48', '2021-05-20', '阅读');
INSERT INTO `useroperation` VALUES ('1777', '1', 't:1', '2021-05-20', '阅读');
INSERT INTO `useroperation` VALUES ('1778', '1', 't:1', '2021-05-20', '阅读');
INSERT INTO `useroperation` VALUES ('1779', '1', 't:1', '2021-05-20', '阅读');
INSERT INTO `useroperation` VALUES ('1780', '1', 't:1', '2021-05-20', '阅读');
INSERT INTO `useroperation` VALUES ('1781', '1', '试题论文:48', '2021-05-20', '阅读');
