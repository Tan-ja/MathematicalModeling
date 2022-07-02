/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : methematicalmodeling

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2022-03-01 21:46:24
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `book` VALUES ('1', '浴缸里的惊叹', '顾森', '9787115355744', '8', '<a href=\"https://book.douban.com/subject/25918542\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">https://book.douban.com/subject/25918542</a>', 'static/booksrecommended/thumb_dd0e264da033a88abee25f402cbfcea9.jpg', '<p>	<span style=\"color: rgb(17, 17, 17);\">&nbsp;&nbsp;&nbsp;《浴缸里的惊叹》是一本趣题集，里面的题目全部来自于作者顾森十余年来的精心收集，包括几何、组合、行程、数字、概率、逻辑、博弈、策略等诸多类别，其中既有小学奥数当中的经典题目，又有世界级的著名难题，但它们无一例外都是作者心目中的“好题”：题目本身简单而不容易，答案出人意料却又在情理之中，解法优雅精巧令人拍案叫绝。作者还有意设置了语言和情境两个类别的问题，希望让完全没有数学背景的读者也能体会到解题的乐趣。</span></p>');
INSERT INTO `book` VALUES ('2', 'MATLAB在数学建模中的应用', '卓金武', '9787512403178', '8', '<a href=\"https://book.douban.com/subject/6052205\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">https://book.douban.com/subject/6052205</a>', 'static/booksrecommended/thumb_e9de3c38fb270da75e23396ab0e0a6ae.jpg', '<p>	《MATLAB在数学建模中的应用》从数学建模的角度介绍了MATLAB的应用。《MATLAB在数学建模中的应用》的4位作者均具有实际的数学建模参赛经历和竞赛指导经验。书中内容完全是根据数学建模竞赛的需要而编排的，涵盖了绝大部分数学建模问题的MATLAB求解方法。</p><p>	《MATLAB在数学建模中的应用》内容分上下两篇。上篇介绍数学建模中常规方法MATLAB的实现，包括MATLAB交互、数据建模、程序绘图、灰色预测、规划模型等方法；还介绍了各种高级方法MATLAB的实现，包括遗传算法、粒子群算法、模拟退火算法、人工神经网络、小波分析、动态仿真、数值模拟等。下篇以真实的数学建模赛题为案例，介绍了如何用MATLAB求解实际的数学建模问题，给出了详细的建模过程和程序。书中的附件部分介绍了作者在建模竞赛中屡获大奖的经验。相信这些经验对准备参加数学建模竞赛的读者会有所帮助。</p><p>	《MATLAB在数学建模中的应用》特别适合作为数学建模竞赛的培训教材或参考用书，也可作为大学“数学实验”和“数学建模”以及“数据挖掘”课程的参考用书，还可以作为广大科研人员、学者、工程技术人员的参考用书。</p>');
INSERT INTO `book` VALUES ('3', '迷人的数学', '[英]伊凡•莫斯科维奇', '9787535778932', '9', '<a href=\"https://book.douban.com/subject/26849163\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgba(248, 248, 248, 0.424); color: rgb(51, 51, 51);\">https://book.douban.com/subject/26849163</a>', 'static/booksrecommended/thumb_dac0d66ad399e6c3f7131fee0c36ef25.jpg', '<p>	与历史上的数学天才一起挑战头脑体操。</p><p>	315个经典游戏开发大脑潜能，呈现数学之美。</p><p>	在《迷人的数学》中，世界著名智力游戏专家、百万级畅销书《大脑游戏天书》作者伊凡•莫斯科维奇，用极富表现力的精彩图解，呈现了315个经典烧脑游戏，其中不仅有许多历史上著名的数学谜题，也有他自己 设计的独特游戏。</p><p>	作者也巧妙地将从史前时代到21世纪的数学史融入这些游戏题中，让你在挑战谜题、开启大脑潜能的同时，了解数学前进的轨迹，领略数学的迷人魅力。这是一本有观点、有故事的数学益智书，献给所有热爱美感、惊奇、挑战、数学和游戏的人。</p><p>	献给所有热爱美感、惊奇与挑战的人</p><p>	1. 国际著名智力游戏专家、百万级畅销书《大脑游戏天书》作者精心原创，权威性、完整性完胜市面上绝大多数游戏书</p><p>	2. 315个烧脑游戏 + 千幅炫酷图片 + 上百则趣味故事，丰富的内容，精心的编排，非凡的视觉体验和超强的互动乐趣</p><p>	3. 将从史前时期到21世纪的数学史融入315个经典烧脑游戏中，完整收录数学史上的著名人物和著名烧脑故事，让你一本书玩通数学史</p><p>	4. 权威又好玩的315个数学游戏，开发你的大脑潜能，让你拥有毕达哥拉斯、阿基米德般的超级思考力和问题解决力</p><p>	一本有故事的数学游戏书，国际著名智力游戏专家、百万级畅销书《大脑游戏天书》作者精心原创，315个烧脑游戏 + 千幅炫酷图片 + 上百则趣味数学故事，一本书让你爱上数学！</p>');
INSERT INTO `book` VALUES ('4', '数学建模方法与分析\r\n', '米尔斯切特\r\n', '9787111164401', '8', '<a href=\"https://book.douban.com/subject/1392709\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgba(248, 248, 248, 0.145); color: rgb(51, 51, 51);\">https://book.douban.com/subject/1392709</a>', 'static/booksrecommended/thumb_c2cb9df3edda9299918e2bb9727cc67c.jpg', '<p>	<span style=\"color: rgb(17, 17, 17);\">&nbsp;&nbsp;&nbsp;《数学建模方法与分析》(原书第2版)提出了一种通用的数学建模方法（即“五步方法”），帮助读者迅速掌握数学建模的真谛。作者以引人入胜的方式描述了数学模型的3个主要领域：最优化、动态系统和随机过程。</span></p><p>	<span style=\"color: rgb(17, 17, 17);\">&nbsp;&nbsp;&nbsp;《数学建模方法与分析》(原书第2版)以实用的方法解决各式各样的现实问题，包括空间飞船的对接、传染病的增长率和野生生物的管理等。根据需要详细介绍了解决问题所需要的数学知识。</span></p><p><span style=\"color: rgb(17, 17, 17);\">&nbsp;&nbsp;&nbsp;《数学建模方法与分析》(原书第2版)系统介绍数学建模的理论及应用，作者将数学建模的过程归结为五个步骤（即“五步方法”），并贯穿全书各类问题的分析和讨论中，阐述了如何使用数学模型来解决实际问题,提出了在组建数学模型并且进行分析得到结论之后如何进行模型的灵敏性和稳健性的分析,将数学建模方法与计算机使用密切结合，不仅通过对每个问题的讨论给予很好的示范，而且配备了大量的习题训练。</span></p>');
INSERT INTO `book` VALUES ('5', '最迷人的数学趣题\r\n', '彼得·温克勒\r\n', '9787544413947', '9', '<a href=\"https://book.douban.com/subject/2362464\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgba(248, 248, 248, 0.65); color: rgb(51, 51, 51);\">https://book.douban.com/subject/2362464</a>', 'static/booksrecommended/thumb_9568101d910c92a9202c99ebc920390b.jpg', '<p>	<span style=\"color: rgb(17, 17, 17);\">&nbsp;&nbsp;&nbsp;《最迷人的数学趣题:一位数学名家精彩的趣题珍集》是他收集数十年的数学谜题选集。涉及内容包括：数，组合学，概率，几何，算法等。这是一本极具挑战性的数学动脑筋问题选集，充满着奇趣、美妙、惊讶，令人爱不释手。</span></p>');
INSERT INTO `book` VALUES ('6', '魔鬼数学\r\n', '[美]乔丹•艾伦伯格\r\n', '9787508652436', '8', '<a href=\"https://book.douban.com/subject/26594366\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgba(248, 248, 248, 0.424); color: rgb(51, 51, 51);\">https://book.douban.com/subject/26594366</a>', 'static/booksrecommended/thumb_93ae1283939c8fe8fbd768932360c3c6.jpg', '<p><br></p><p>	如果你是一个有“数学焦虑症”的人，你可能不会相信有一天你会爱上数学。</p><p>	原因在于，我们在学校所学的数学知识看上去不过是一堆沉闷的规则、定律和公理，都是前人传下来的，而且是不容置疑的。在《魔鬼数学》中，世界知名数学家乔丹•艾伦伯格告诉我们这样的认识是错误的。数学与我们所做的每一件事都息息相关，可以帮助我们洞见在混沌和嘈杂的表象之下日常生活的隐性结构和秩序。数学是一门告诉我们“如何做才不会犯错”的科学，是经年累月的努力、争论所锤炼出来的。</p><p>	你应该提前多长时间到达机场？民意调查的结果真的能代表人们的意愿吗？为什么父母都是高个子，孩子的身高却比较矮？用什么策略买彩票才能中大奖？《魔鬼数学》运用数学方法分析和解决了很多的日常生活问题，帮助数学门外汉习得用数学思维思考问题的技能。</p><p>	作者用数学这条主线穿起了时空，从每时每刻到宇宙空间，中间还穿插了很多人和事物，比如棒球、里根经济学、伏尔泰、意大利文艺复兴时期的绘画、人造语言等。</p><p>	《魔鬼数学》带领我们踏上了一段精彩绝伦的数学思维之旅，旅行过后，相信你可以成为一个更棒的思考者。作者从历史及最近的理论发展中汲取精华，向我们展示了数学知识的魅力和力量。数学可以让我们更好地思考：它可以磨练我们的直觉，让我们的判断更敏锐，它还可以驯服不确定性，让我们更深入地了解世界的结构和逻辑。</p><p>	拥有了数学工具，我们就可以把那些我们想当然的事情看得更透彻，</p><p>	从而做出正确的决策。</p>');
INSERT INTO `book` VALUES ('7', '无言的宇宙\r\n', '[美]达纳·麦肯齐\r\n', '9787550244658', '8', '<a href=\"https://book.douban.com/subject/26337663\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(248, 248, 248); color: rgb(51, 51, 51);\">https://book.douban.com/subject/26337663</a>', 'static/booksrecommended/thumb_b52ab15554886e0dd841732e8701f260.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;◆《数学之美》之后，最值得数学迷和文科生期待的数学科普书。</p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;◆第一本 “数学史话”，一部关于数学公式的史诗性著作：从1+1=2，到爱因斯坦质能公式E=mc²，看24个公式如何改变人类历史进程。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;◆用诗意文字讲述公式之美，科普性、知识性和故事性完美结合， 100余幅高清珍贵插图，全彩印刷，让神秘、抽象的公式“活起来”！</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;◆“美国数学政策联合会年度传播奖”。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;◆送给数学爱好者和青少年的完美礼物。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;《无言的宇宙》向你讲述的是人类历史上24个美丽而伟大的公式背后的故事，从基本的1 + 1 = 2到揭示电磁现象的“麦克斯韦方程”，从著名的E = mc²到神秘的“汉密尔顿的四元数方程”，清晰地解释了每一个方程的含义、谁（如何）发现了它，他们在人类发展史上和现实生活中发挥的巨大作用。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;这些故事既长知识又有趣，比如：</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;发现世界上最简单的方程，这意味着什么；</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;如果世间未曾有过“0”这个概念，将会怎样；</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;牛顿运动定律如是何使人类做到这一切的——从建设桥梁到预测天气；</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;一根劣质雪茄如何改变了量子力学的进程；</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;为什么鲸鱼（如果它们能和我们交流的话）会教给我们完全不同的几何概念？</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;同时，这本书也解释了为什么这些方程在诉说着关于宇宙的永恒的秘密，没有任何一种人类的表达方式可以与之匹敌。最重要的是它们如何令人惊讶地影响了人类历史和我们的日常生活。</span></p>');
INSERT INTO `book` VALUES ('8', '思考的乐趣\r\n', '顾森\r\n', '9787115275868', '8', '<a href=\"https://book.douban.com/subject/10779597\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgba(248, 248, 248, 0.784); color: rgb(51, 51, 51);\">https://book.douban.com/subject/10779597</a>', 'static/booksrecommended/thumb_86e7c58110a5cc2fe6861460117665e0.jpg', '<p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;本书是一个疯狂数学爱好者的数学笔记，面向所有喜爱数学的读者。从2005年7月开始，作者已经写了连续六年的博客，积累下来了大量的数学文章。 部分文章内容被广泛关注，在网络上大量分享转载。</p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;这本书有意挑选了初等的话题，让大大小小的读者都能没有障碍地阅读。文章内容新，让有数学背景的人也会发现很多自己没见过的初等问题。 文章是独立的。一篇文章一个话题，文章与文章之间基本不会做参考，读者可以随意跳着看。</span></p><p><span style=\"color: rgb(51, 51, 51);\">文章内容注重思想性，基本上是原创，没有什么版权争议。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;总之，这是一本标新立异的趣味数学书。每一个读过的人都会被深深吸引。这是一个热爱思考的年轻人积攒的让人一读就欲罢不能的趣味书。</span></p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;&nbsp;&nbsp;&nbsp;本书包括5部分内容，即生活中的数学、数学之美、几何的大厦、精妙的证明、思维的尺度，涉及48篇精彩的文章。即使你不喜欢数学，也会为本书的精彩所倾倒。</span></p>');
INSERT INTO `book` VALUES ('9', '极简宇宙史\r\n', '[法]克里斯托弗·加尔法德\r\n', '9787542654434', '9', '<a href=\"https://book.douban.com/subject/26697350\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(248, 248, 248); color: rgb(51, 51, 51);\">https://book.douban.com/subject/26697350</a>', 'static/booksrecommended/thumb_4a8972f79e60d4834c3eba1f8e3d6142.jpg', '<p>	我们的存在的确让太阳系与众不同。夏夜，你躺在沙滩上，仰望夜空。一颗小小的流星安静滑过，还来不及许愿，不可思议的事情发生了：你一下子穿越五十亿年，走进时光的旅行……</p><p>	霍金亲传弟子、物理学博士克里斯托弗·加尔法德带领我们踏上一场关于宇宙的过去、现在和未来的惊奇之旅。不需要图表和方程式，只需凭着奇诡的想象，我们就可走向衰亡的太阳表面，飞越遥远的星系，感受来自黑洞的死亡魅力……你可以轻松读懂时至今日的宇宙神奇，继续探究关于上帝的存在、时间的起源以及人类的未来。</p>');
INSERT INTO `book` VALUES ('10', '数学之美', '吴军', '9787115282828', '9', '<a href=\"https://book.douban.com/subject/10750155\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgba(248, 248, 248, 0.784); color: rgb(51, 51, 51);\">https://book.douban.com/subject/10750155</a>', 'static/booksrecommended/thumb_1bb956274b1e95708de99e1d5b275b4e.jpg', '<p class=\"ql-align-center\">&nbsp;&nbsp;&nbsp;《数学之美》内容简介：几年前，“数学之美”系列文章原刊载于谷歌黑板报，获得上百万次点击，并被热情的读者广为传播，得到高度评价。读者说，读了“数学之美”，才发现大学时学的数学知识，比如马尔科夫链、矩阵计算，甚至余弦函数原来都如此亲切，并且栩栩如生，才发现自然语言和信息处理这么有趣，才真正明白“数学是科学的皇后”这句名言。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;今年，作者吴军博士几乎把所有的文章都重写了一遍，为的是能把高深的原理讲得更加通俗易懂，让非专业读者也能领略数学的魅力。经过改写和重构后，《数学之美》在整体和细节的度上控制得更好。希望读者通过具体的例子学到的是思考问题的方式，学会如何化繁为简，如何用数学去解决工程问题，如何跳出固有思维不断去思考创新。同时书中也留了很多问题给愿意钻研的人做进一步深入思考。</p><p><br></p><p><br></p><p><strong>作者简介</strong></p><p> 吴军博士，现任腾讯公司主管搜索、在线广告和云计算基础架构的副总裁，毕业于清华大学（本科、硕士）和美国约翰·霍普金斯大学（博士）。在清华大学和约翰·霍普金斯大学期间，吴军博士致力于语音识别、自然语言处理，特别是统计语言模型的研究。他曾获得1995年全国人机语音智能接口会议的最佳论文奖和2000年Eurospeech的最佳论文奖。</p><p> 吴军博士于2002年加入Google公司。在Google，他和Amit Singhal（Google院士，世界著名搜索专家）、Matt Cutts（Google反作弊官方发言人）等三位同事一起开创了网络搜索反作弊的研究领域，并因此获得Google工程奖。2003年，他和Google全球架构的总工程师朱会灿博士等共同成立了中日韩文搜索部门。吴军博士是当前Google中日韩文搜索算法的主要设计者。在Google期间，他还领导了许多研发项目，包括许多与中文相关的产品和自然语言处理的项目，并得到了当时公司首席执行官埃里克·施密特和创始人谢尔盖·布林的高度评价。</p><p> 吴军博士在国内外发表过数十篇论文，并获得和申请了十余项美国和国际专利。他撰写的《浪潮之巅》一书深受业界的好评。他于2007年起担任风险投资基金中国世纪基金的董事。2011年起，当选为约翰·霍普金斯大学工学院董事会董事，并在该校的国际事务委员会担任顾问。他是国家重大专项“新一代搜索引擎和浏览器”项目的总负责人，从2012年起任职工业与信息化部的专家和顾问。</p>');
