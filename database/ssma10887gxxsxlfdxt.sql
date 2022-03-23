/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : ssma10887gxxsxlfdxt

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2022-02-24 22:26:32
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cx` varchar(50) NOT NULL COMMENT '权限',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '帐号',
  `pwd` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `touxiang` varchar(255) NOT NULL COMMENT '头像',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `xingbie` varchar(10) NOT NULL COMMENT '性别',
  `beizhu` text NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='管理员';

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', '管理员', 'admin', 'admin', 'upload/73e31d0879eacd3bc4f9353b08621930.png', '', '男', '');
INSERT INTO `admins` VALUES ('2', '心理助理', 'xin', 'xin', 'upload/ebdea2b6249e31ff696ac7ac6976164e.png', '张三', '男', '');

-- ----------------------------
-- Table structure for `anpaizixun`
-- ----------------------------
DROP TABLE IF EXISTS `anpaizixun`;
CREATE TABLE `anpaizixun` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chufangyuyueid` int(10) unsigned NOT NULL COMMENT '初访预约id',
  `yuyuebianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '预约编号',
  `yuyueren` varchar(64) NOT NULL DEFAULT '' COMMENT '预约人',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `anpaizixunshi` varchar(50) NOT NULL COMMENT '安排咨询师',
  `zixunriqi` varchar(25) NOT NULL COMMENT '咨询日期',
  `kaishishijian` varchar(25) NOT NULL COMMENT '开始时间',
  `jieshushijian` varchar(25) NOT NULL COMMENT '结束时间',
  `didian` int(10) unsigned NOT NULL COMMENT '地点',
  `jiean` varchar(50) NOT NULL COMMENT '结案',
  PRIMARY KEY (`id`),
  KEY `anpaizixun_chufangyuyueid_index` (`chufangyuyueid`),
  KEY `anpaizixun_didian_index` (`didian`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='安排咨询';

-- ----------------------------
-- Records of anpaizixun
-- ----------------------------
INSERT INTO `anpaizixun` VALUES ('1', '2', '02242140369489', '001', '张三', 'z004', '2022-02-23', '20:00', '21:00', '2', '否');
INSERT INTO `anpaizixun` VALUES ('6', '3', '02242220359628', '003', '小红2', 'z003', '2022-02-26', '21:00', '21:30', '2', '否');

-- ----------------------------
-- Table structure for `chufangjielun`
-- ----------------------------
DROP TABLE IF EXISTS `chufangjielun`;
CREATE TABLE `chufangjielun` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chufangyuyueid` int(10) unsigned NOT NULL COMMENT '初访预约id',
  `yuyuebianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '预约编号',
  `yuyueren` varchar(64) NOT NULL DEFAULT '' COMMENT '预约人',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `zongdefen` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总得分',
  `chufangyuan` varchar(50) NOT NULL COMMENT '初访员',
  `weijidengji` varchar(50) NOT NULL COMMENT '危机等级',
  `wentileixing` varchar(255) NOT NULL DEFAULT '' COMMENT '问题类型',
  `chufangshijian` varchar(25) NOT NULL COMMENT '初访时间',
  `chufangjielun` varchar(50) NOT NULL COMMENT '初访结论',
  `beizhu` text NOT NULL COMMENT '备注',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `chufangjielun_chufangyuyueid_index` (`chufangyuyueid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='初访结论';

-- ----------------------------
-- Records of chufangjielun
-- ----------------------------
INSERT INTO `chufangjielun` VALUES ('1', '2', '02242140369489', '001', '张三', '0.00', 'c001', '一级', '无', '2022-02-24 21:50:23', '安排咨询', '', '2022-02-24 21:50:26');
INSERT INTO `chufangjielun` VALUES ('2', '3', '02242220359628', '003', '小红2', '0.00', 'c001', '二级', '混乱', '2022-02-24 22:22:39', '安排咨询', '', '2022-02-24 22:22:44');

-- ----------------------------
-- Table structure for `chufangyuyue`
-- ----------------------------
DROP TABLE IF EXISTS `chufangyuyue`;
CREATE TABLE `chufangyuyue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yuyuebianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '预约编号',
  `yuyueren` varchar(64) NOT NULL DEFAULT '' COMMENT '预约人',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `xingbie` varchar(10) NOT NULL COMMENT '性别',
  `shouji` varchar(50) NOT NULL DEFAULT '' COMMENT '手机',
  `banji` varchar(255) NOT NULL DEFAULT '' COMMENT '班级',
  `zongdefen` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总得分',
  `zhuangtai` varchar(50) NOT NULL COMMENT '状态',
  `chufangjielun` varchar(50) NOT NULL COMMENT '初访结论',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='初访预约';

-- ----------------------------
-- Records of chufangyuyue
-- ----------------------------
INSERT INTO `chufangyuyue` VALUES ('2', '02242140369489', '001', '张三', '男', '12388132888', 'xxx班', '20.00', '已安排初访', '安排咨询', '2022-02-24 21:40:37');
INSERT INTO `chufangyuyue` VALUES ('3', '02242220359628', '003', '小红2', '女', '13800138000', '二零春02班测试', '50.00', '已安排初访', '安排咨询', '2022-02-24 22:20:37');
INSERT INTO `chufangyuyue` VALUES ('4', '02242225031697', '003', '小红2', '女', '13800138000', '二零春02班测试', '110.00', '待审核', '未出结果', '2022-02-24 22:25:04');

-- ----------------------------
-- Table structure for `chufangyuyueshenhe`
-- ----------------------------
DROP TABLE IF EXISTS `chufangyuyueshenhe`;
CREATE TABLE `chufangyuyueshenhe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chufangyuyueid` int(10) unsigned NOT NULL COMMENT '初访预约id',
  `yuyuebianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '预约编号',
  `yuyueren` varchar(64) NOT NULL DEFAULT '' COMMENT '预约人',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `zongdefen` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总得分',
  `shenhejieguo` varchar(50) NOT NULL COMMENT '审核结果',
  `beizhu` text NOT NULL COMMENT '备注',
  `shenheren` varchar(64) NOT NULL DEFAULT '' COMMENT '审核人',
  PRIMARY KEY (`id`),
  KEY `chufangyuyueshenhe_chufangyuyueid_index` (`chufangyuyueid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='初访预约审核';

-- ----------------------------
-- Records of chufangyuyueshenhe
-- ----------------------------
INSERT INTO `chufangyuyueshenhe` VALUES ('1', '2', '02242140369489', '001', '张三', '0.00', '审核通过', '', 'admin');
INSERT INTO `chufangyuyueshenhe` VALUES ('2', '3', '02242220359628', '003', '小红2', '0.00', '审核通过', 'ok', 'admin');

-- ----------------------------
-- Table structure for `didian`
-- ----------------------------
DROP TABLE IF EXISTS `didian`;
CREATE TABLE `didian` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `didianmingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '地点名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='地点';

-- ----------------------------
-- Records of didian
-- ----------------------------
INSERT INTO `didian` VALUES ('1', 'A栋 101教室');
INSERT INTO `didian` VALUES ('2', 'B栋 222教室');

-- ----------------------------
-- Table structure for `kaoshijieguo`
-- ----------------------------
DROP TABLE IF EXISTS `kaoshijieguo`;
CREATE TABLE `kaoshijieguo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chufangyuyueid` int(10) unsigned NOT NULL COMMENT '初访预约id',
  `yuyuebianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '预约编号',
  `yuyueren` varchar(64) NOT NULL DEFAULT '' COMMENT '预约人',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `biaoti` text NOT NULL COMMENT '标题',
  `leixing` varchar(50) NOT NULL COMMENT '类型',
  `daan` text NOT NULL COMMENT '答案',
  `defen` int(11) NOT NULL DEFAULT '0' COMMENT '得分',
  `zimu` varchar(50) NOT NULL DEFAULT '' COMMENT '字母',
  `wenjuanren` varchar(64) NOT NULL DEFAULT '' COMMENT '问卷人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `kaoshijieguo_chufangyuyueid_index` (`chufangyuyueid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='考试结果';

-- ----------------------------
-- Records of kaoshijieguo
-- ----------------------------
INSERT INTO `kaoshijieguo` VALUES ('6', '2', '02242140369489', '001', '张三', '您是否出现过心理方面的困扰', '单选题', 'A、是', '0', 'A', '001', '2022-02-24 21:40:45');
INSERT INTO `kaoshijieguo` VALUES ('7', '2', '02242140369489', '001', '张三', '您出现的心理困扰主要表现在哪方面', '单选题', 'A、学业', '0', 'A', '001', '2022-02-24 21:40:45');
INSERT INTO `kaoshijieguo` VALUES ('8', '2', '02242140369489', '001', '张三', '你是否有过心理咨询的经历', '单选题', 'B、否', '10', 'B', '001', '2022-02-24 21:40:45');
INSERT INTO `kaoshijieguo` VALUES ('9', '2', '02242140369489', '001', '张三', '你对自己的心理健康状况了解吗', '单选题', 'A、了解', '10', 'A', '001', '2022-02-24 21:40:45');
INSERT INTO `kaoshijieguo` VALUES ('10', '2', '02242140369489', '001', '张三', '当心理方面出现困扰时，您是选择何种方式解决的？', '多选题', 'B、自己独自承受', '0', 'B', '001', '2022-02-24 21:40:45');
INSERT INTO `kaoshijieguo` VALUES ('11', '3', '02242220359628', '003', '小红2', '您是否出现过心理方面的困扰', '单选题', 'A、是', '0', 'A', '003', '2022-02-24 22:20:49');
INSERT INTO `kaoshijieguo` VALUES ('12', '3', '02242220359628', '003', '小红2', '您出现的心理困扰主要表现在哪方面', '单选题', 'B、就业', '10', 'B', '003', '2022-02-24 22:20:49');
INSERT INTO `kaoshijieguo` VALUES ('13', '3', '02242220359628', '003', '小红2', '你对自己的心理健康状况了解吗', '单选题', 'A、了解', '10', 'A', '003', '2022-02-24 22:20:49');
INSERT INTO `kaoshijieguo` VALUES ('14', '3', '02242220359628', '003', '小红2', '你是否有过心理咨询的经历', '单选题', 'B、否', '10', 'B', '003', '2022-02-24 22:20:49');
INSERT INTO `kaoshijieguo` VALUES ('15', '3', '02242220359628', '003', '小红2', '当心理方面出现困扰时，您是选择何种方式解决的？', '多选题', 'A、向朋友家人诉说,C、选择听音乐或者运动来放松自己,D、向心理咨询人员求助', '20', 'A,C,D', '003', '2022-02-24 22:20:49');
INSERT INTO `kaoshijieguo` VALUES ('16', '4', '02242225031697', '003', '小红2', '你对自己的心理健康状况了解吗', '单选题', 'A、了解', '10', 'A', '003', '2022-02-24 22:25:36');
INSERT INTO `kaoshijieguo` VALUES ('17', '4', '02242225031697', '003', '小红2', '测试问题', '单选题', 'A、测试问题测试问题测试问题', '100', 'A', '003', '2022-02-24 22:25:36');
INSERT INTO `kaoshijieguo` VALUES ('18', '4', '02242225031697', '003', '小红2', '你是否有过心理咨询的经历', '单选题', 'A、是', '0', 'A', '003', '2022-02-24 22:25:36');
INSERT INTO `kaoshijieguo` VALUES ('19', '4', '02242225031697', '003', '小红2', '您是否出现过心理方面的困扰', '单选题', 'A、是', '0', 'A', '003', '2022-02-24 22:25:36');
INSERT INTO `kaoshijieguo` VALUES ('20', '4', '02242225031697', '003', '小红2', '您出现的心理困扰主要表现在哪方面', '单选题', 'A、学业', '0', 'A', '003', '2022-02-24 22:25:36');
INSERT INTO `kaoshijieguo` VALUES ('21', '4', '02242225031697', '003', '小红2', '当心理方面出现困扰时，您是选择何种方式解决的？', '多选题', 'D、向心理咨询人员求助', '0', 'D', '003', '2022-02-24 22:25:36');

-- ----------------------------
-- Table structure for `lunbotu`
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `image` varchar(255) NOT NULL COMMENT '图片',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '连接地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='轮播图';

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
INSERT INTO `lunbotu` VALUES ('1', '1', 'upload/e8066c3907fb0b09896b23873c166101.png', '#');

-- ----------------------------
-- Table structure for `timu`
-- ----------------------------
DROP TABLE IF EXISTS `timu`;
CREATE TABLE `timu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `biaoti` text NOT NULL COMMENT '标题',
  `leixing` varchar(50) NOT NULL COMMENT '类型',
  `daan` text NOT NULL COMMENT '答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='题目';

-- ----------------------------
-- Records of timu
-- ----------------------------
INSERT INTO `timu` VALUES ('1', '您是否出现过心理方面的困扰', '单选题', '[{\"zimu\":\"A\",\"title\":\"是\",\"point\":\"0\"},{\"zimu\":\"B\",\"title\":\"否\",\"point\":\"10\"}]');
INSERT INTO `timu` VALUES ('2', '您出现的心理困扰主要表现在哪方面', '单选题', '[{\"zimu\":\"A\",\"title\":\"学业\",\"point\":\"0\"},{\"zimu\":\"B\",\"title\":\"就业\",\"point\":\"10\"},{\"zimu\":\"C\",\"title\":\"个人感情\",\"point\":\"0\"},{\"zimu\":\"D\",\"title\":\"工作\",\"point\":\"10\"},{\"zimu\":\"E\",\"title\":\"家庭\",\"point\":\"10\"}]');
INSERT INTO `timu` VALUES ('3', '你是否有过心理咨询的经历', '单选题', '[{\"zimu\":\"A\",\"title\":\"是\",\"point\":\"0\"},{\"zimu\":\"B\",\"title\":\"否\",\"point\":\"10\"}]');
INSERT INTO `timu` VALUES ('4', '当心理方面出现困扰时，您是选择何种方式解决的？', '多选题', '[{\"zimu\":\"A\",\"title\":\"向朋友家人诉说\",\"point\":\"10\"},{\"zimu\":\"B\",\"title\":\"自己独自承受\",\"point\":\"0\"},{\"zimu\":\"C\",\"title\":\"选择听音乐或者运动来放松自己\",\"point\":\"10\"},{\"zimu\":\"D\",\"title\":\"向心理咨询人员求助\",\"point\":\"0\"}]');
INSERT INTO `timu` VALUES ('5', '你对自己的心理健康状况了解吗', '单选题', '[{\"zimu\":\"A\",\"title\":\"了解\",\"point\":\"10\"},{\"zimu\":\"B\",\"title\":\"不了解\",\"point\":\"0\"}]');
INSERT INTO `timu` VALUES ('6', '测试问题', '单选题', '[{\"zimu\":\"A\",\"title\":\"测试问题测试问题测试问题\",\"point\":\"100\"},{\"zimu\":\"B\",\"title\":\"测试问题\",\"point\":\"0\"},{\"zimu\":\"C\",\"title\":\"测试问题\",\"point\":\"0\"}]');

-- ----------------------------
-- Table structure for `xinwen`
-- ----------------------------
DROP TABLE IF EXISTS `xinwen`;
CREATE TABLE `xinwen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `biaoti` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `tianjiaren` varchar(64) NOT NULL DEFAULT '' COMMENT '添加人',
  `dianjilv` int(11) NOT NULL DEFAULT '0' COMMENT '点击率',
  `neirong` longtext NOT NULL COMMENT '内容',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `xinwen_fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='新闻';

-- ----------------------------
-- Records of xinwen
-- ----------------------------
INSERT INTO `xinwen` VALUES ('1', '从小缺爱的人，如何获得安全感？', '2', 'upload/13d5bedfaddbf8b3e17c1da30aafb926.png', 'admin', '0', '<p>对于大部分人而言，尤其对女性来说，安全感无疑非常重要。我们如此地需要它，却又很难定义它。 </p>\n<p>安全感可能是花不完的钱、用不完的爱、坚不可摧的婚姻、不可拆散的感情……不同的人也许会有不同的答案。</p>\n<p> 今天我想讲5个故事，一起来看看这些他们的答案是什么，他们有没有得到自己想要的安全感。</p>\n<p> </p>\n<p> <strong>第一个故事，是两个大家都很熟悉的明星。</strong> </p>\n<p>你肯定也听说过郑爽偷税漏税被罚2.99亿，还有日薪208万的传闻。 她赚的是普通人一辈子都赚不到的钱，但在生活中她却连30块钱都要和男朋友AA，不停接片子赚钱。 另一个是孙俪，同样片酬非常高，但她每年最多只接一部戏，剩余时间全部留给自己休息和养育孩子。 很多人说，现在房价、物价这么高，钱就是安全感。 但郑爽赚了一辈子都用不完的钱，还是那么不安；孙俪放弃了很多赚钱的机会去陪伴家人，却过得非常幸福。 钱是不是真正的安全感？相信你现在也有了新的想法。</p>\n<p> </p>\n<p> <strong>第二个故事，是我朋友的一个同学，一位50岁左右的男士。</strong></p>\n<p> 他工作非常努力敬业，做到了中学的副校长，下一步就是提拔正校长了。正在上级考察是否提拔他的时候，他发现自己患了癌症。 但他没有把这件事告诉任何人，每天忍着病痛，坚持正常工作，连假都不敢请，偷偷去医院治疗。他不想因为自己的病，失去升官的机会。 等到他终于被正式任命为正校长的时候，病情已经恶化，难以治疗。上任2个月，就不幸离世。 很多男人会把名利当成安全感，甚至不惜用命去换，就像上面这个例子。 但命都没了，还哪来的安全？</p>', '2022-02-24 21:47:20');
INSERT INTO `xinwen` VALUES ('2', '“世上没有真正的感同身受”：共情是真实存在的吗？', '1', 'upload/0a1125be851c6644c25e3d962622ff71.png', 'admin', '0', '<p>今天，和大家聊一个，被太多人提及，却鲜有人真正做到；</p>\n<p>听着简单，做起来却贼难的话题——<strong>共情</strong>。</p>\n<p> </p>\n<p>共情，是心理咨询中非常常见的概念，也是心理咨询师的一项基本技能。</p>\n<p> </p>\n<p>很多人觉得咨询师的工作好像很简单，只需要去倾听就可以了，但其实倾听并不是放只耳朵在那里就可以，它是需要共情基础的倾听，而共情本身是有一定难度的。</p>\n<p> </p>\n<p> </p>\n<h1>01 那不当咨询师，也需要有共情能力吗？</h1>\n<p> </p>\n<p>需要。</p>\n<p>学会共情，也是大家走向幸福之路的必修课。</p>\n<p> </p>\n<p>因为每个人都有自己的成长背景、家庭环境和自身个性。</p>\n<p>所以，我们看到的世界是不一样的。</p>\n<p> </p>\n<p>就像有的人说天是蓝的，有人说天是灰的，是有可能他们处在不同的地域。</p>\n<p>在心理的世界，我们称之为「<strong>主观感受</strong>」。</p>\n<p> </p>\n<p>每个人的主观感受是不一样的，所以我们看到的这个世界是如此多元和不同，每个人都组成了自己的一套“生态系统”，就像一个小岛。</p>', '2022-02-24 21:37:53');
INSERT INTO `xinwen` VALUES ('3', '上一秒开心，下一秒抑郁——为什么在2个极端游走？', '1', 'upload/4e9cbe42b1f020841f19a1f23e536307.png', 'admin', '0', '<p>今天我想聊一个一直被大家严重忽视的话题——<strong>边缘型人格</strong>。</p>\n<p> </p>\n<p>边缘型人格听上去是一种很严重的病症，似乎离我们很远。</p>\n<p> </p>\n<p>其实它离我们很近，只要仔细观察，就会发现很多人都有边缘型人格的症状。</p>\n<p> </p>\n<p>就连那些光鲜的名人，也难逃此劫，比如<strong>玛丽莲·梦露</strong>。每个人都知道她是性感女神，让人神魂颠倒。既然芳名远播，演员收入也不菲，大家是不是下意识觉得，她一定很幸福？</p>', '2022-02-24 21:24:41');
INSERT INTO `xinwen` VALUES ('4', '内在小孩，决定着我们的过去、现在和未来', '1', 'upload/f684b4184749a818f7f26572b8412887.png', 'admin', '11', '<p>每个人内心深处，都是曾经的那个孩子。这个孩子，造就了我们的过去、现在，以及未来。</p>\n<p> </p>\n<p>作为一名从业近10年的心理咨询师，我对此深有体会。</p>\n<p> </p>\n<p>你和世界的关系，来自你与原生家庭的关系；你内在的孩子，决定了你看待事物的角度和不同的人际交往模式……</p>\n<p> </p>\n<p>因此，要真正的认识自己，要先搞清楚自己心中的那个孩子；要想真正的活出自己，也要先让那个孩子按照自己想要的方式成长，而不再是父母或者任何人的方式。</p>', '2022-02-24 21:14:03');

-- ----------------------------
-- Table structure for `xinwenfenlei`
-- ----------------------------
DROP TABLE IF EXISTS `xinwenfenlei`;
CREATE TABLE `xinwenfenlei` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(50) NOT NULL DEFAULT '' COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='新闻分类';

-- ----------------------------
-- Records of xinwenfenlei
-- ----------------------------
INSERT INTO `xinwenfenlei` VALUES ('1', '公告');
INSERT INTO `xinwenfenlei` VALUES ('2', '资讯');

-- ----------------------------
-- Table structure for `xuesheng`
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE `xuesheng` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xuehao` varchar(50) NOT NULL DEFAULT '' COMMENT '学号',
  `mima` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `touxiang` varchar(255) NOT NULL COMMENT '头像',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `xingbie` varchar(10) NOT NULL COMMENT '性别',
  `shouji` varchar(50) NOT NULL DEFAULT '' COMMENT '手机',
  `xueyuan` varchar(255) NOT NULL DEFAULT '' COMMENT '学院',
  `banji` varchar(255) NOT NULL DEFAULT '' COMMENT '班级',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='学生';

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES ('1', '001', '001', 'upload/8de8bf4caedc0bb1f63c44f9117d73e6.png', '张三', '男', '12388132888', 'xxx学院', 'xxx班', '2022-02-24 22:08:43');
INSERT INTO `xuesheng` VALUES ('2', '002', '002', 'upload/f74b8b2856b85dd4fda31e87c714fd00.png', '李四', '男', '12388123888', 'XXXXXXU学院', '123班', '2022-02-24 21:58:37');
INSERT INTO `xuesheng` VALUES ('3', '003', '003', 'upload/20220224/42331645712411143.png', '小红2', '女', '13800138000', '复旦大学', '二零春02班测试', '2022-02-24 22:20:20');

-- ----------------------------
-- Table structure for `yuangong`
-- ----------------------------
DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE `yuangong` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `touxiang` varchar(255) NOT NULL COMMENT '头像',
  `gonghao` varchar(50) NOT NULL DEFAULT '' COMMENT '工号',
  `zhiwei` varchar(50) NOT NULL COMMENT '职位',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `xingbie` varchar(10) NOT NULL COMMENT '性别',
  `shouji` varchar(50) NOT NULL DEFAULT '' COMMENT '手机',
  `shanchanglingyu` varchar(255) NOT NULL DEFAULT '' COMMENT '擅长领域',
  `jieshao` longtext NOT NULL COMMENT '介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='员工';

-- ----------------------------
-- Records of yuangong
-- ----------------------------
INSERT INTO `yuangong` VALUES ('1', 'upload/a5887e627564e5a2d5391f6b33fd9569.png', 'z001', '咨询师', '苏慧如', '男', '12355123555', '精神分析取向/中英班/中德班高级组', '<h4 class=\"title\"><span class=\"year\">从业9年</span></h4>\n<p class=\"txt\">国家二级咨询师</p>\n<p class=\"txt\">WMECA国际完形治疗师</p>\n<p class=\"txt\">IHNMA国际认证催眠治疗师</p>\n<p class=\"txt\">CPS注册系统助理咨询师</p>\n<p class=\"txt\">青少年、中年人、学生、留学生、职场人、第三者、LGBTQ、孕产妇、精神康复者、成年人、伴侣/夫妻</p>');
INSERT INTO `yuangong` VALUES ('2', 'upload/4463899eb6a16ea869c99879402dac69.png', 'z002', '咨询师', '严林', '女', '1355123444', '国家二级心理咨询师、NGH国际催眠治疗师', '<p class=\"txt\">国家二级咨询师</p>\n<p class=\"txt\">GPST全球专业人才认证国际催眠咨询师</p>\n<p class=\"txt\">国际职业技能鉴定协会OH卡执行师</p>\n<p class=\"txt\">督导师</p>\n<p class=\"txt\">NGH国际催眠治疗师</p>');
INSERT INTO `yuangong` VALUES ('3', 'upload/20347b01326b12289890ebf945b1491c.png', 'z003', '咨询师', '赵燕青', '女', '1235545566', '赵燕青心理咨询工作室创始人 心理学研究生', '<p class=\"txt\">国家二级咨询师</p>\n<p class=\"txt\">国家婚姻家庭咨询师二级</p>');
INSERT INTO `yuangong` VALUES ('4', 'upload/7d89cfb878d0a086a8c79c176296eb8e.png', 'z004', '咨询师', '刘智勍', '男', '', '美国索菲亚大学超个人心理学硕士', '<p class=\"txt\">国家二级咨询师</p>\n<p class=\"txt\">初级心理治疗师</p>\n<p class=\"txt\">卫生部中级心理治疗师青少年、中年人、学生、留学生、职场人、第三者、伴侣/夫妻、精神康复者刘智勍老师身上温暖的气息、和风细雨的工作方式，会给予来访者放松、安全的感觉，帮助他们拨开缠绕的乌云，让光重新透进来。</p>');
INSERT INTO `yuangong` VALUES ('5', 'upload/20220224/6371645710483212.jpg', 'c001', '初访员', '李四商', '女', '13800138003', '北京大学临床心理硕士', '<p class=\"txt\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: 0px; zoom: 1; color: rgb(102, 102, 102); line-height: 24px; font-family: &quot;Microsoft Yahei&quot;; white-space: normal;\">国家三级咨询师</p><p class=\"txt\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: 0px; zoom: 1; color: rgb(102, 102, 102); line-height: 24px; font-family: &quot;Microsoft Yahei&quot;; white-space: normal;\">注册系统咨询师</p><p><br/></p>');

-- ----------------------------
-- Table structure for `zhibanxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `zhibanxinxi`;
CREATE TABLE `zhibanxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peizhiduixiang` int(10) unsigned NOT NULL COMMENT '配置对象ID',
  `gonghao` varchar(50) NOT NULL DEFAULT '' COMMENT '工号',
  `zhiwei` varchar(50) NOT NULL COMMENT '职位',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `xingqiji` varchar(50) NOT NULL COMMENT '星期几',
  `keyuyueshijianshi` varchar(25) NOT NULL COMMENT '可预约时间始',
  `keyuyueshijianzhi` varchar(25) NOT NULL COMMENT '可预约时间止',
  PRIMARY KEY (`id`),
  KEY `zhibanxinxi_peizhiduixiang_index` (`peizhiduixiang`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='值班信息';

-- ----------------------------
-- Records of zhibanxinxi
-- ----------------------------
INSERT INTO `zhibanxinxi` VALUES ('1', '1', 'z001', '咨询师', '苏慧如', '星期一', '20:30', '21:30');
INSERT INTO `zhibanxinxi` VALUES ('2', '3', 'z003', '咨询师', '赵燕青', '星期二', '20:00', '20:30');
INSERT INTO `zhibanxinxi` VALUES ('3', '3', 'z003', '咨询师', '赵燕青', '星期一', '20:00', '20:30');
INSERT INTO `zhibanxinxi` VALUES ('4', '2', 'z002', '咨询师', '严林', '星期四', '20:00', '21:00');
INSERT INTO `zhibanxinxi` VALUES ('5', '2', 'z002', '咨询师', '严林', '星期三', '21:00', '23:00');
INSERT INTO `zhibanxinxi` VALUES ('6', '2', 'z002', '咨询师', '严林', '星期六', '01:00', '23:24');
