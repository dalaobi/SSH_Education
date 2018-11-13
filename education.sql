/*
Navicat MySQL Data Transfer

Source Server         : Mysql_1
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : education

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-10-05 10:23:23
*/
use education;

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`adminName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('123', '321');

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(50) NOT NULL,
  `studentid` varchar(30) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `url` text NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_blog` (`studentid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', '20180119', '1', '“北斗”去哪儿了', '2015年9月30日，西昌卫星发射中心，我国成功发射第4颗新一代北斗导航卫星。视觉中国供图（资料图片）\n\n　　作为一个从一出生就注定要走向寻常百姓家的“国之重器”，中国卫星导航系统“北斗”何时用、谁能用、怎么用等问题一直备受瞩目。也因此，1月12日，在“北斗”卫星又一次成功飞天，拉开2018年高密度发射序幕之际，这些盘旋已久的问题再次被提及：“北斗”，何时真正来到我们身边？\n\n　　眼下“北斗”所处的环境，和10多年前第一颗名为“北斗”的导航卫星面世时早已有了翻天覆地的变化。撇开高铁、支付宝、共享单车、网购“新四大发明”对人类生活的影响不谈，仅就“北斗”自身而言，也正在从“三步走”中的前两步“向中国提供服务”“向亚太地区提供服务”，迈向最后一步“向全球提供服务”，而留给这一步的时间仅剩两年——2020年年底前我国将建成真正的全球卫星导航系统。', 'https://weibo.com/ttarticle/p/show?id=2309351000774198871256421241', '郑赛乾');
INSERT INTO `blog` VALUES ('2', '2018-03-20 11:21', '163@88', 'fdsajlfs', 'fdsafdsajjj', '1', 'zsq');
INSERT INTO `blog` VALUES ('3', '2018-04-25 10:42', '163@88', '我的', '他的', 'avatar/20180320113231022.jpg', 'zsq');
INSERT INTO `blog` VALUES ('4', '2018-05-03 11:34', '163@88', '我的', '<p>他的</p>', 'avatar/20180503111407496.jpg', 'zsq');
INSERT INTO `blog` VALUES ('7', '2018-05-03 11:40', '163@88', '怎么不是乱码啦啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '<p>QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ</p>', 'avatar/20180503111407496.jpg', 'zsq');
INSERT INTO `blog` VALUES ('8', '2018-05-03 11:43', '163@88', '我', '我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我哦我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我哦我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我哦我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我哦我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我哦我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我哦我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我哦我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我哦我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我哦我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我哦我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我哦我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我哦我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我哦我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我哦我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我哦我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我哦我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我哦我我我我我我我我我我我我我我哦我我我我我我我我我我', 'avatar/20180503111407496.jpg', 'zsq');
INSERT INTO `blog` VALUES ('9', '2018-05-03 11:45', '1@1', '我我我往往', '<p>我我我我我我我我</p>', 'avatar/20180503111407496.jpg', 'yrl');
INSERT INTO `blog` VALUES ('11', '2018-05-03 15:31', '163@88', '我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我我', '你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你你您你你你', 'avatar/20180503111407496.jpg', 'zsq');
INSERT INTO `blog` VALUES ('16', '2018-05-03 17:49', '163@88', '日志什么的已经改好了', '<p>经过不懈的努力终于又离成功进了一步！！</p>', 'avatar/20180503174252323.jpg', 'zsq');

-- ----------------------------
-- Table structure for employment
-- ----------------------------
DROP TABLE IF EXISTS `employment`;
CREATE TABLE `employment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterpriseid` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `date` varchar(50) NOT NULL,
  `isaccepted` tinyint(1) NOT NULL,
  `deadline` varchar(50) NOT NULL,
  `ename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employment
-- ----------------------------
INSERT INTO `employment` VALUES ('1', '1', '格力小企业招聘', '因为有件事鲜为人知，\n\n朱军他还是一个优秀画家！\n\n是著名画家巨匠范曾的关门弟子。\n\n他的画作《牧羊女》，\n\n在北京保利拍卖会拍出130万元，\n\n并破2分钟成交记录。', '20180101', '1', '2018-05-09', '格力小企业');
INSERT INTO `employment` VALUES ('2', '2', '五道口招聘', '五道口职业技术学院招聘人事 \r\n要求 \r\n1\r\n2\r\n3\r\n4\r\n4\r\n5\r\n5\r\n6\r\n7\r\n8\r\n\r\n', '2018-05-04 10:06', '1', '2018-05-09', '董明珠“格力空调“');
INSERT INTO `employment` VALUES ('3', '5', '北京邮电大学校外企业招聘', '北京邮电大学校外企业招聘 ', '2018-05-04', '1', '2018-05-09', '北京邮电大学校外企业');

-- ----------------------------
-- Table structure for enterprise
-- ----------------------------
DROP TABLE IF EXISTS `enterprise`;
CREATE TABLE `enterprise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `info` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `validation` tinyint(1) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `material` text NOT NULL,
  `url` text,
  `top` tinyint(1) NOT NULL DEFAULT '0',
  `recommend` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enterprise
-- ----------------------------
INSERT INTO `enterprise` VALUES ('1', '董明珠“格力空调”', '中新网5月3日电 近日，格力电器发布2017年财报，格力经营数据的亮眼已无须赘述，而其创造丰厚利润的背后所潜藏的，是格力为整个社会创造的巨大财富。\n\n　　改革开放以来，中国经济崛起的重要表征之一，就是一大批具有国际竞争力的企业涌现。而公众和舆论也日益注重企业的社会责任践行，在企业产品和服务是否符合环保标准、投资给当地人民带来了哪些福祉、承担纳税创造就业机会等方面，都有着日渐清晰的评判标准。\n\n　　部分企业也希望通过社会责任的更多践行，赢得更广泛的社会信任感，洗刷从前“中国企业只顾赚钱不担社会责任”的坏印象。在接受媒体采访时，董明珠曾多次公开表示，一个企业成功在于为社会奉献多少。\n\n　　与当下流行的“富豪慈善榜”之类单纯衡量一次捐款数额的活动不同，董明珠所提出的企业信念，其实落脚点在于“长期行为”，是“多年来做了什么”，进入我们视野的是格力一次次履行法律责任，以及向社会反馈良好行为的过程。尤其是格力作为中国企业的一面旗帜，始终屹立时代浪尖，坚持做大做强，虽然没有单纯的捐赠多少钱那么显眼，但结果并没有隐形，它宣示了一种更高层次的社会公共道德感召：注重最后的社会效果，而不是把闪光灯聚焦在某次外在活动扮演的角色。', '11234567890', '北京市海淀区中关村科技园', '1', '123456', '12345@qq.com', 'material/郑各庄企业郑赛乾_英语考试.doc', 'image/en.jpg', '1', '1');
INSERT INTO `enterprise` VALUES ('5', '北京邮电大学校外企业', '历史悠久，资金雄厚，实力强悍', '12344554567', '北京邮电大学旁边22号', '1', '1234', '123@qq.com', 'material/郑各庄企业郑赛乾_英语考试.doc', 'image/5Avatar.jpg', '0', '1');
INSERT INTO `enterprise` VALUES ('6', '五道口职业技术学院', '简单介绍一下，五道口职业技术学院即清华大学', '123456', '地址', '1', '123456', '1234@qq.com', 'material/郑各庄企业郑赛乾_英语考试.doc', 'image/en.jpg', '0', '0');
INSERT INTO `enterprise` VALUES ('7', '多伦多大学', '没有简洁', '123456', '地址q', '1', '111', '111222333@qq.com', 'material/郑各庄企业郑赛乾_英语考试.doc', 'image/en.jpg', '0', '0');
INSERT INTO `enterprise` VALUES ('8', '牛津大学', '阿瑟的借口啦点解啊数据库连接卡时间考虑；是', '123456', '的卡拉手机打开拉萨大家', '1', '123456', '11223344@qq.com', 'material/牛津大学timg (1).jpg', 'image/en.jpg', '0', '0');
INSERT INTO `enterprise` VALUES ('9', '郑各庄企业', '1122简介', '1122', '1122地址', '0', '1122', '1122@qq.com', 'material/郑各庄企业郑赛乾_英语考试.doc', 'image/en.jpg', '0', '0');

-- ----------------------------
-- Table structure for ephoto
-- ----------------------------
DROP TABLE IF EXISTS `ephoto`;
CREATE TABLE `ephoto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterpriseid` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `url` text NOT NULL,
  `statement` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ephoto
-- ----------------------------
INSERT INTO `ephoto` VALUES ('2', '5', '2018-05-04 11:32', 'ephoto/5timg.jpg', '');
INSERT INTO `ephoto` VALUES ('3', '5', '2018-05-04 11:32', 'ephoto/5timg.jpg', '');
INSERT INTO `ephoto` VALUES ('7', '1', '2018-05-04 15:49', 'ephoto/1timg.jpg', '');
INSERT INTO `ephoto` VALUES ('9', '1', '2018-05-04 15:49', 'ephoto/1timg (1).jpg', '');

-- ----------------------------
-- Table structure for footer
-- ----------------------------
DROP TABLE IF EXISTS `footer`;
CREATE TABLE `footer` (
  `content` varchar(50) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`content`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of footer
-- ----------------------------
INSERT INTO `footer` VALUES ('2017年10月28日，浙江卫视《演员的诞生》开播，第一期就请来了流量演员郑爽，', 'https://weibo.com/ttarticle/p/show?id=2309404198924440185862');

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `studentid` varchar(30) NOT NULL,
  `friendlist` text NOT NULL,
  PRIMARY KEY (`studentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES ('1', '1');
INSERT INTO `friend` VALUES ('163@88', ';1@1');
INSERT INTO `friend` VALUES ('1@1', ';163@88');

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `pic` text,
  `type` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `top` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES ('1', '哈哈哈哈这是第一个标题', ' 大家下午好！\r\n\r\n    今天，来自北京、上海、新疆、湖南、广西、辽宁等全国各地的初一到高三的43名中学生齐聚北京邮电大学，参加2018年“北邮网安杯”首届全国中学生网络安全技术大赛线下决赛。你们经过线上预赛的选拔，从激烈的比赛中脱颖而出。在此，我向同学们表示由衷的祝贺！\r\n\r\n    同学们，今天你们来到了被誉为信息黄埔的北京邮电大学。在这个校园里诞生了第一批网络空间安全专业系列教材；开设了全国首个网络空间安全专业特长生实验班；成立全国首个“一带一路”信息类职业技术网上培训国际合作联盟。北邮在全国网络安全一线岗位工作的毕业生人数最多；网络安全领域的重点实验室数量全国高校第一；网络空间安全学科博士生导师数量全国高校第一；北邮信息安全专业是唯一入选首批国家级特色专业的网络安全类专业；北邮是第一批获得网络空间安全一级学科博士学位授权点的单位。2016年北邮成为中央网信办会同教育部开展的“网络安全人才培养基地试点示范”的五所高校之一。在今年共有2622支战队参加的“强网杯”全国网络安全挑战赛预赛中，北邮有2支战队进入前24强，参加线下决赛，进入决赛的战队数量位居全国高校第一。近日，被誉为全球最值得参加的顶级网络安全大会HITB在荷兰阿姆斯特丹召开。北邮的天枢战队取得全球第七的优异成绩，为国家赢得了荣誉。\r\n\r\n    没有网络安全就没有国家安全。少年强则中国强，网络安全强则中国网络主权强。相信“北邮网安杯”全国中学生网络安全技术大赛，将会吸引越来越多的青少年网络安全优秀人才，为筑牢我国青少年网络安全人才基石作出贡献。在教育部高等学校信息安全专业教学指导委员会的支持下，北京邮电大学举办了此次网络安全技术大赛，其目的就是通过实战的方式发现、选拔和培养网络安全技术方面的突出、优秀青年人才。\r\n\r\n    中学生同学们，北京邮电大学是一块网络安全人才成长的沃土，北邮期待你们，期待你们成长为网络安全领域的杰出人才，秀出青春、绽放风采。', 'http://www.bupt.edu.cn/upload/image/201803/%E5%AE%8F%E7%A6%8F%E6%A0%A1%E5%8C%BA08.jpg', '3', '3', '1');
INSERT INTO `information` VALUES ('2', '北京邮电大学新生入学须知', '北京邮电大学是教育部直属、工业和信息化部共建、首批进行“211工程”建设的全国重点大学，是“985优势学科创新平台”项目重点建设高校，是一所以信息科技为特色、工学门类为主体、工管文理协调发展的多科性、研究型大学，是我国信息科技人才的重要培养基地。目前，学科专业已经涵盖理学、工学、文学、法学、经济学、管理学、教育学、哲学、艺术学等9个学科门类，涉及22个一级学科。全日制本、硕、博学生及国际学生近30000名，欢迎各位香港、澳门、台湾地区学生报考北京邮电大学！\r\n\r\n一、招生专业\r\n\r\n招生专业\r\n\r\n    硕士和博士研究生招生专业均招收港澳台学生，具体专业登陆http://www.gatzs.com.cn/进入“院校信息”->“北京”-> “北京邮电大学”参见《北京邮电大学2018年硕士生招生专业目录》和《北京邮电大学2018年博士生招生专业目录》。\r\n\r\n学习方式及年限\r\n\r\n    港澳台研究生按学习方式分为全日制和非全日制（兼读制）两种。全日制硕士研究生的基本学习年限为2-3年（具体专业学习年限有所不同，见招生简章）。全日制硕士生最长学习年限为4-5年；非全日制硕士生最长学习年限可相应延长一年。非直博生基本学习年限为4年，最长学习年限为6年；直博生基本学习年限为5年，最长学习年限为7年。', 'http://www.bupt.edu.cn/img/bkbk.jpg', '3', '3', '1');
INSERT INTO `information` VALUES ('3', '北京邮电大学简介', '北京邮电大学是教育部直属、工业和信息化部共建、首批进行“211工程”建设的全国重点大学，是“985优势学科创新平台”项目重点建设高校，是一所以信息科技为特色、工学门类为主体、工管文理协调发展的多科性、研究型大学，是我国信息科技人才的重要培养基地。2017年，“信息网络科学与技术学科群”和“计算机科学与网络安全学科群”两个学科群进入一流学科建设行列。\r\n\r\n    学校坚持以习近平新时代中国特色社会主义思想为指导，坚持立德树人根本任务，扎根中国大地办好中国特色社会主义大学。学校始终肩负“传邮万里国脉所系”的家国情怀。自1955年建校以来，经过60多年的建设与发展，学校全日制教育已经形成了信息背景浓郁、专业特色鲜明、学科优势突出的办学格局。学校现设有信息与通信工程学院、电子工程学院、计算机学院、自动化学院、软件学院、数字媒体与设计艺术学院、现代邮政学院、网络空间安全学院、光电信息学院、理学院、经济管理学院、人文学院、马克思主义学院、国际学院、网络教育学院、继续教育学院、民族教育学院、体育部等18个教学单位，以及网络技术、信息光子学与光通信、感知技术与产业3个研究院，可信网络通信2011协同创新中心，并设有研究生院。目前，学科专业已经涵盖理学、工学、文学、法学、经济学、管理学、教育学、哲学、艺术学等9个学科门类，涉及22个一级学科。学校信息与通信工程、计算机科学与技术以及电子科学与技术三个一级学科在教育部第四轮学科评估中被评为A类学科，其中信息与通信工程取得了A+的优异成绩。\r\n\r\n    学校现有西土城路校区、沙河校区、宏福校区和小西天校区，在江苏无锡和广东深圳分别设有研究院。全日制本、硕、博学生及留学生近23000名，正式注册的非全日制学生近55000名。\r\n\r\n    近年来，北京邮电大学聚焦国家重大战略需求，以网络强国战略目标为导向，遵循高等教育的办学规律，按照“综改拉动、科学发展”的战略思路，牢固树立事业型思维，启动学校教育事业综合改革。在全校党员、全体师生的共同努力下，学校的改革与发展进入了一个新的阶段。', 'http://www.bupt.edu.cn/upload/image/201803/%E4%BA%8C%E7%BB%B4%E7%A0%81%E5%A4%A7%E9%97%A8.jpg', '3', '6', '1');
INSERT INTO `information` VALUES ('4', '外交部副部长孔铉佑就中印领导人非正式会晤举行媒体吹风会', '新华社北京4月24日电（记者 李忠发、孙奕）外交部副部长孔铉佑24日在外交部举行媒体吹风会，介绍中印领导人非正式会晤有关情况。\r\n\r\n　　孔铉佑说，经中印双方商定，习近平主席同莫迪总理将于4月27日至28日在湖北省武汉市举行非正式会晤，两国及国际社会对此予以高度关注，反应积极。中国和印度是世界上两个最大的发展中国家和新兴市场国家，也是仅有的两个10亿以上人口级别的大国。在当前世界格局正经历深刻演变，世界多极化、经济全球化深入发展，国际力量对比更趋平衡，和平发展大势更加强劲的背景下，中印作为推动世界多极化和经济全球化的中坚力量，也是促进本地区和世界和平、稳定与繁荣的重要支柱，双边关系的战略和全球意义更加突出。\r\n\r\n　　孔铉佑表示，当前，中印都处在加速发展的重要阶段，拥有相似的国情，胸怀相似的梦想。两大文明古国都焕发出勃勃生机，展现出光明灿烂的远大前景。近年来，在两国领导人战略引领下，中印关系保持发展势头，机制性交往陆续开展，各领域合作取得新进展。同时，随着国际形势的变化和两国各自的发展，中印关系既有进一步发展的需要，也面临着进一步提升的机遇。\r\n\r\n　　孔铉佑介绍，此次非正式会晤选在武汉，不仅因为武汉是中国中部第一大城市，拥有深厚历史底蕴，与印度地方邦交往日益密切，经贸合作不断扩大。同时，莫迪总理到访过北京、广州、西安、杭州、厦门等中国城市，可谓东南西北都到过，但未到访过中部。相信武汉之行将成为莫迪总理的全新体验，进一步增进他对中国的了解。', 'http://www.xinhuanet.com/titlepic/112274/1122741139_1524640397079_title0h.jpg', '3', '5', '1');
INSERT INTO `information` VALUES ('5', '安全-信息安全网络漏洞与bug', '信息安全主要包括以下五方面的内容，即需保证信息的保密性、真实性、完整性、未授权拷贝和所寄生系统的安全性。信息安全本身包括的范围很大，其中包括如何防范商业企业机密泄露、防范青少年对不良信息的浏览、个人信息的泄露等。网络环境下的信息安全体系是保证信息安全的关键，包括计算机安全操作系统、各种安全协议、安全机制（数字签名、消息认证、数据加密等），直至安全系统，如UniNAC、DLP等，只要存在安全漏洞便可以威胁全局安全。信息安全是指信息系统（包括硬件、软件、数据、人、物理环境及其基础设施）受到保护，不受偶然的或者恶意的原因而遭到破坏、更改、泄露，系统连续可靠正常地运行，信息服务不中断，最终实现业务连续性。\r\n信息安全学科可分为狭义安全与广义安全两个层次，狭义的安全是建立在以密码论为基础的计算机安全领域，早期中国信息安全专业通常以此为基准，辅以计算机技术、通信网络技术与编程等方面的内容；广义的信息安全是一门综合性学科，从传统的计算机安全到信息安全，不但是名称的变更也是对安全发展的延伸，安全不在是单纯的技术问题，而是将管理、技术、法律等问题相结合的产物。本专业培养能够从事计算机、通信、电子商务、电子政务、电子金融等领域的信息安全高级专门人才。', 'https://gss1.bdstatic.com/9vo3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=aae18739b64543a9f51bfdca262cedbf/b8389b504fc2d5629ccd8920e61190ef77c66c31.jpg', '3', '6', '1');
INSERT INTO `information` VALUES ('6', '土木规划局及环境规划', '根据《地名管理条例》、《地名管理条例实施细则》和《北京市地名管理办法》的有关规定，为方便社会交往，方便道路附近居民及单位的出行，我局拟对位于首都师范大学东校区西侧道路进行命名，遵循“符合历史，照顾习惯，体现规划，好找好记”的原则，道路命名预案如下：\r\n        道路位于首师大西侧，南北走向，北起增光路，南至阜成路。道路全长约300米，道路宽约3-5米。因道路连接增光路与阜成路，拟命名为“增阜巷”。\r\n        现将命名预案予以公示，听取公众意见，公示期限为7天，（自发布之日算起）。', 'http://www.xinhuanet.com/titlepic/112272/1122728166_1524470446936_title0h.jpg', '3', '3', '1');
INSERT INTO `information` VALUES ('7', ' 马景涛致歉：不小心过了火', '新浪娱乐讯  1月21日播出的《吐槽大会》上，马景涛上场就强吻刘嘉玲，之后的表现更被网友评价为“不知所云”、“尴尬至极”。对此，马景涛22日发文，称自己不擅长脱口秀，努力争取圆满却不小心过了火，并否认了网友关于他录制时喝酒的猜想。\n\n　　马景涛于22日发微博回应《吐槽大会》上的表现被指“不知所云”“尴尬至极”：“确实在表现我的不擅长…节目组让我用咆哮做点，我却忘了吐槽别人才是正题，一不小心过了火。”对于“喝酒上节目”的质疑，他予以否认表示“这个锅我不背”，称“节目组精心准备了晚饭，但我一口都没吃，不是不好吃，是怕吃饱了犯困。”\n\n　　粉丝们纷纷在评论里安慰道：“回顾了一下你演的多尔衮，决定还是继续爱你，原谅你了！”“做你自己，何必迎合他人。”“你真是一个喝了假酒的小天才！”（实习生小黄人/文）', 'http://n.sinaimg.cn/ent/transform/w630h420/20180122/eFGY-fyqwiqi2546545.jpg', '3', '2', '1');
INSERT INTO `information` VALUES ('8', '这季《变形计》大搞平行世界，网友梦成真偏心父母惨遭变形？\n', '之前每一季的《变形计》模式大同小异，基本都是城里孩子和农村孩子互换生活，让孩子“变形”。\n\n它秉承着一个思维理念：\n\n“换位思考”，更推至极致，在节目中，你不仅要站在对方立场去设想和理解对方，你还要去过对方的生活，真正体验对方世界的大小风云，品察对方思想最微妙的情绪触动。“体验不同人生，达到改善关系、解决矛盾、收获教益的目的。\n\n道理大家都懂，但在之前的《变形计》里，很多时候看完的网友发现，问题孩子大多出自问题家庭，很多孩子是因为缺乏父母陪伴而影响了性格的养成。这让观众集体替孩子伸冤，恨不得把他们的父母也拉过来变形！', 'http://n.sinaimg.cn/sinacn/w1080h608/20180121/5a13-fyqtwzv5107883.jpg', '3', '3', '1');
INSERT INTO `information` VALUES ('9', '马云乡村教师奖', '新浪娱乐讯 21日晚，马云公益基金会主办的第三届“马云乡村教师奖”颁奖典礼在三亚举行，当晚除了表彰来自全国各地的获奖教师为教育事业所做的贡献，亦继续向社会各界发起公益号召，呼吁大家关注贫困山区教育问题，为此马云也在中午的“企业家午餐会”上用心阐述了他关于教育脱贫的一项重要计划：推动乡村并校并发展寄宿制学校。此计划意在解决师资不易抵达山区、学生上学路程精力耗损等实际问题。值得一提的是，成龙、李连杰、梁家辉、孙俪、高晓松、胡海泉、侯佩岑、谭维维、汪涵、宋小宝、钟镇涛、苏运莹等明星也出席了活动，一同积极助力公益。(王远宏/摄影)', 'http://n.sinaimg.cn/ent/4_img/upload/fc8e0ed6/w800h1200/20180122/J6Px-fyqwiqi2122955.jpg', '3', '4', '1');
INSERT INTO `information` VALUES ('10', '赵丽颖再登封玩转复古范儿 气场女王率真少女随性切换', '新浪娱乐讯 近日，赵丽颖登上《红秀》杂志封面。赵丽颖安静端坐在沙发上，娇小淡定，短发别在耳后，黑色吊带长裙性感优雅，多套造型随性切换，奇妙地将气场女王和率真少女两种状态随性融合。', 'http://n.sinaimg.cn/ent/4_img/upload/1f0ce517/w2048h3003/20180122/d3ax-fyqwiqi3064196.jpg', '3', '5', '1');
INSERT INTO `information` VALUES ('11', '《公牛历险记》暖心爆笑获赞 成寒假亲子观影首选', '今日，好莱坞动画巨制《公牛历险记》曝光亲子对话特辑，童言无忌的孩子们对父母开启“魔性”吐槽，充满童趣的回答让人忍俊不禁。新浪娱乐讯 好莱坞动画巨制《公牛历险记》已于1月19日登陆全国影院，影片由打造《冰川时代》系列和《里约大冒险》系列的蓝天工作室原班人马制作，电影广受观众好评，目前淘票票观众评分9.0，猫眼观众评分9.3。在高口碑带动下，周六周日排片及票房均大幅逆袭，首周末票房累计已超六千万，下周寒假到来，作为档期内动画类型，市场表现值得期待。\n\n　　今日，影片曝光亲子对话特辑，童言无忌的孩子们对父母开启“魔性”吐槽，充满童趣的回答让人忍俊不禁。年长的青年男女们则和家长进行了一次全方位深情流露的真心话大起底，亲情上的相互理解、彼此关怀和陪伴无不让人动容。正如影片里费迪南所诠释的真诚、真心和真情，打动了无数观众，成为寒假父母萌娃最爱！\n\n　　目前影片以2D、3D、中国巨幕3D、杜比全景声、杜比视界等制式在全国持续热映中。', 'http://n.sinaimg.cn/ent/transform/w630h263/20180122/g1Rk-fyqwiqi3256262.jpg', '3', '6', '1');
INSERT INTO `information` VALUES ('12', '朝鲜告急！又一个大国高调插足半岛，已开始做战争准备！不是美日', '随着韩朝会谈的顺利进行，韩朝双方借平昌冬奥会之机，迅速缓和了关系，同时也让国际社会一直悬着的心逐渐放下来，半岛迎来了难得的缓和气氛。就在这个关键的时候，在半岛问题上没有什么发言权的英国，却以一种危险的方式刷存在感。1月21日俄罗斯卫星通讯社报道，针对美国打击朝鲜将引发对方攻击韩国的情况，英国正在制定撤离侨民的计划。\r\n\r\n在半岛初现和平曙光的情况下，英国却曝出针对战争情况的应对措施，不禁令人怀疑英国是不是从美国那里得到了动武的确切消息，从而提前做好准备。毕竟英国刚刚参加了美国在加拿大温哥华召集的二十国外长会议，特别令人不安的是这其中有十六国正是上次朝鲜战争派兵的国家。美国国防部长马蒂斯在这次会议上就清楚的表明美国已经做好了准备，也有战争计划。虽然不能确认英国已经得到了美国确切的动武消息，但是英国的行为显然是在为战争做准备。', 'https://n.sinaimg.cn/sinacn/w640h480/20180122/d5d3-fyqtwzv5958001.jpg', '3', '1', '1');
INSERT INTO `information` VALUES ('13', '电影《名侦探皮卡丘》备受关注 渡边谦将加入电影', '新浪娱乐讯 据台湾媒体报道，电影《名侦探皮卡丘》（Detective Pikachu）《精灵宝可梦》的真人电影打从选角起就受到全球粉丝关注。该片男主角起用新人贾斯提斯史密斯（Justice Smith）、“死侍”莱恩雷诺斯（Ryan Reynolds）将扮演皮卡丘，之后再传出日本男星渡边谦扮演吉田侦探！\n\n　　渡边谦2003年演出《末代武士》入围奥斯卡最佳男配角，苦学英文闯荡国际影坛，这次受邀在演出《皮卡丘》，被推测是电影原创角色。他在日本有“世界的渡边谦”封号，却被曝出轨酒店小姐，和罹癌妻子南果步闹分居，多次传出离婚倒数，不过演艺工作没有受到影响，除了演出大河剧，在国外也依旧活跃。\n\n　　《名侦探皮卡丘》是《精灵宝可梦》开发的3DS游戏，自2016年2月开始发售，紧接着2018年3月23日还会有新款版本发售。真人电影预计1月在英国伦敦开拍，北美上映日期定在5月10日。ETtoday/文\n\n(责编：maiko)\n声明：新浪网独家稿件，未经授权禁止转载。', 'http://n.sinaimg.cn/www/transform/w600h338/20180122/FD55-fyqwiqi3462441.jpg', '7', '7', '1');
INSERT INTO `information` VALUES ('14', '周杰伦雪地里弹吉他 粉丝：赶紧来杯奶茶暖暖', '新浪娱乐讯 周杰伦晒出在雪地里谈吉他唱歌的照片，写道，“应观众要求加拍《等你下课》MV对嘴，但动作要快，再不拍就要变成两个雪人了。”周杰伦在1月18日生日这天发布了新歌《等你下课》MV，新浪娱乐获悉，这次MV之后确实会有一个正式版推出。\n\n　　周杰伦日前在1月18日生日这天发布了新歌《等你下课》的音源和MV，他日前许下的生日愿望是希望能出一首单曲，当时他还开玩笑说：“如果做不到的话…那就算了！”如今果然是一诺千金。新歌有着周杰伦初出道时创作情歌的味道，回归纯稚情歌的旋律动人心弦。新歌《等你下课》在某次演唱会的庆功宴写下的，他突然灵感来了，立刻回到房间，拿起吉他写下这首歌。周杰伦笑称：“这首歌其实是要鼓励歌迷，努力考上跟你喜欢的人一样的学校！”\n\n　　如今周董又晒出在雪地里谈吉他唱歌的照片，粉丝：“哪胖了？！给我多喝奶茶！”“拍完了赶紧来一杯珍珠奶茶暖暖。”新娱/文\n\n新浪娱乐讯 周杰伦晒出在雪地里谈吉他唱歌的照片，写道，“应观众要求加拍《等你下课》MV对嘴，但动作要快，再不拍就要变成两个雪人了。”周杰伦在1月18日生日这天发布了新歌《等你下课》MV，新浪娱乐获悉，这次MV之后确实会有一个正式版推出。\n\n　　周杰伦日前在1月18日生日这天发布了新歌《等你下课》的音源和MV，他日前许下的生日愿望是希望能出一首单曲，当时他还开玩笑说：“如果做不到的话…那就算了！”如今果然是一诺千金。新歌有着周杰伦初出道时创作情歌的味道，回归纯稚情歌的旋律动人心弦。新歌《等你下课》在某次演唱会的庆功宴写下的，他突然灵感来了，立刻回到房间，拿起吉他写下这首歌。周杰伦笑称：“这首歌其实是要鼓励歌迷，努力考上跟你喜欢的人一样的学校！”\n\n　　如今周董又晒出在雪地里谈吉他唱歌的照片，粉丝：“哪胖了？！给我多喝奶茶！”“拍完了赶紧来一杯珍珠奶茶暖暖。”新娱/文\n\n新浪娱乐讯 周杰伦晒出在雪地里谈吉他唱歌的照片，写道，“应观众要求加拍《等你下课》MV对嘴，但动作要快，再不拍就要变成两个雪人了。”周杰伦在1月18日生日这天发布了新歌《等你下课》MV，新浪娱乐获悉，这次MV之后确实会有一个正式版推出。\n\n　　周杰伦日前在1月18日生日这天发布了新歌《等你下课》的音源和MV，他日前许下的生日愿望是希望能出一首单曲，当时他还开玩笑说：“如果做不到的话…那就算了！”如今果然是一诺千金。新歌有着周杰伦初出道时创作情歌的味道，回归纯稚情歌的旋律动人心弦。新歌《等你下课》在某次演唱会的庆功宴写下的，他突然灵感来了，立刻回到房间，拿起吉他写下这首歌。周杰伦笑称：“这首歌其实是要鼓励歌迷，努力考上跟你喜欢的人一样的学校！”\n\n　　如今周董又晒出在雪地里谈吉他唱歌的照片，粉丝：“哪胖了？！给我多喝奶茶！”“拍完了赶紧来一杯珍珠奶茶暖暖。”新娱/文', 'http://n.sinaimg.cn/ent/transform/w630h926/20180122/AFnH-fyqwiqi3882525.jpg', '8', '8', '8');
INSERT INTO `information` VALUES ('15', 'Creamfields China 引入亚洲 打开中国电音市场', '近年来，中国对电子音乐潮流敞开大门。自1994年以来就开始在国际范围内举办Cream活动和巡演，Creamfields已经在过去20年内走过22个国家，是世界上少数几个成功在国际市场上打下坚实阵地的音乐节之一。\n\n　　Cream 的总经理Scott Barton说道：“基于过去在亚洲举办夜店活动的经验，以及去年成功举办的 Creamfields香港和台湾两场，在中国这样令人激动而不断增大的市场留下更加深刻的印象。” LNEA总经理Jim Wong说道：“我很感激Cream和亚洲所有粉丝给予我们的爱与支持。我相信2018 Creamfields China会在中国电子音乐历史上打开一个全新篇章。“\n\n　　Creamfields将以一至两天的音乐节形式呈现，4月份Creamfields广州站已经确定的阵容有：include Axwell & Ingrosso / DJ Snake / Don Diablo / Kungs/ Ghastly / Sam Feldt/ Danny Avila/ Aly and Fila/ and Vini Vici等等，陆续还会公布更多的嘉宾阵容。\n\n　　音乐节阵容的全部详细将会很快公布。演出还会包括以‘Cream Presents’为名的系列活动，巡演城市包括武汉，杭州，长沙，深圳和重庆。\n\n近年来，中国对电子音乐潮流敞开大门。自1994年以来就开始在国际范围内举办Cream活动和巡演，Creamfields已经在过去20年内走过22个国家，是世界上少数几个成功在国际市场上打下坚实阵地的音乐节之一。\n\n　　Cream 的总经理Scott Barton说道：“基于过去在亚洲举办夜店活动的经验，以及去年成功举办的 Creamfields香港和台湾两场，在中国这样令人激动而不断增大的市场留下更加深刻的印象。” LNEA总经理Jim Wong说道：“我很感激Cream和亚洲所有粉丝给予我们的爱与支持。我相信2018 Creamfields China会在中国电子音乐历史上打开一个全新篇章。“\n\n　　Creamfields将以一至两天的音乐节形式呈现，4月份Creamfields广州站已经确定的阵容有：include Axwell & Ingrosso / DJ Snake / Don Diablo / Kungs/ Ghastly / Sam Feldt/ Danny Avila/ Aly and Fila/ and Vini Vici等等，陆续还会公布更多的嘉宾阵容。\n\n　　音乐节阵容的全部详细将会很快公布。演出还会包括以‘Cream Presents’为名的系列活动，巡演城市包括武汉，杭州，长沙，深圳和重庆。\n\n新浪娱乐讯 1月22日消息，近日Cream公布了其下一步动作：2018将继续在中国举办活动。音乐节将会进驻中国其他城市，包括香港，台湾，上海，北京，广州，成都和厦门。\n\n\n　　近年来，中国对电子音乐潮流敞开大门。自1994年以来就开始在国际范围内举办Cream活动和巡演，Creamfields已经在过去20年内走过22个国家，是世界上少数几个成功在国际市场上打下坚实阵地的音乐节之一。', 'http://n.sinaimg.cn/ent/4_img/upload/1edcbf7a/w1920h1280/20180122/0lW0-fyqwiqi3787469.jpg', '9', '9', '9');
INSERT INTO `information` VALUES ('17', '李湘吐槽父亲拍照技术：能把我的青春照清楚点吗?', '新浪娱乐讯 1月22日，李湘[微博]更新微博，称：“爸！你能把我的青春照清楚点吗？”附图一张，并配了个泫然欲泣的表情。\n\n　　照片中是当年青春年少的李湘，少女的年轻活泼清晰可见。只是由于年代和技术的原因，老照片像素不高，显得有些模糊。李湘于是“抱怨”起来，当然不是真的埋怨父亲，大概是在为没有最好的技术记录自己最青春的年华而遗憾吧。\n\n(责编：麦子七)', 'http://n.sinaimg.cn/ent/transform/w630h472/20180122/BZdv-fyqwiqi3919875.jpg', '11', '11', '11');
INSERT INTO `information` VALUES ('18', '南京一小学语文考试现神题：凤姐、芙蓉、如花和老师谁最美？', '近日，南京市江宁区一所小学三年级的语文测试卷，第一题便出现一道“神题”。命题老师列出上述四人的照片，让学生从中选出“谁最美”。\n\n\n有学生家长质疑说，考试题目一般都是命题者有针对性地考察学生是否掌握某个知识、具备某些能力，但这个考试“除了搞笑”，似乎看不出有什么考察目的和价值。\n\n\n澎湃新闻（www.thepaper.cn）从南京市江宁区百家湖小学获悉，该试卷的确是该校一位小学三年级语文老师所命制。不过，命题者并非答案选项中的“八班语文老师”，而是另外一名男教师所为。\n', 'http://new.jyb.cn/jyxww/zgjyb/201612/P020161227322041143211.jpg', '2', '1', '1');
INSERT INTO `information` VALUES ('19', '吉林大学', '吉林大学（Jilin University），简称吉大，位于吉林省长春市，始建于1946年，是中华人民共和国教育部直属的综合性全国重点大学，国家“双一流”、“211工程”、“985工程”、“2011计划”重点建设的著名学府，入选“珠峰计划”、“111计划”、“卓越法律人才教育培养计划”、“卓越工程师教育培养计划”、“卓越医生教育培养计划”、“卓越农林人才教育培养计划”，是亚太国际教育协会、21世纪学术联盟、中俄交通大学联盟的重要成员。 [1-2] \r\n学校前身是创办于1946年的东北行政学院，1950年更名为东北人民大学；1952年经院系调整成为中国共产党亲手创建的第一所综合性大学；1958年更名为吉林大学；1960年，吉林大学被国务院列为国家重点大学；2000年6月12日，合并吉林工业大学、白求恩医科大学、长春科技大学等6所院校组建新的吉林大学。 [3] \r\n吉林大学开设本科专业124个，有一级学科硕士学位授权点59个，一级学科博士学位授权点44个；有全日制学生69196人，其中研究生24202人，留学生1404人。学校有材料科学、物理学、化学、工程学、地球科学、临床医学、生物学与生物化学等7个学科的ESI排名进入全球前1%，15个学科在教育部第三轮学科评估中进入全国前十。\r\n作为中国目前办学规模最大的高等学府，吉林大学涵盖全部13大学科门类，成为在国家和区域经济社会发展中具有重要地位的高素质创新人才培养、高水平科学研究和成果转化、高质量社会服务、先进文化引领的重要基地。', 'image/zjilin.jpg', '17', '3', '1');
INSERT INTO `information` VALUES ('20', '华尔街日报刊发刘强东文章：技术无对错，应用有担当', '▲京东集团董事局主席兼首席执行官刘强东\n\n刘强东在文中表示，是我们的人性与谦卑赋予了技术对他人生活产生积极影响的可能。这是一种能够造福社会的巨大力量。但与此同时，我们也必须意识到，技术本身无法辨别是非对错，我们应用技术时应该更有担当。这是我们近乎奢侈的能力，也是我们丝毫不可松懈的责任。\n\n以下刘强东文章全文：\n\n过去十年，科技取得了惊人的跨越和进步，如今它已经成为人类交流、运输和商业的基础。技术进步给人们生活带来的改变可比肩工业革命以来的任何事物，这种改变常常以未曾预料的方式汹涌而来。', 'http://pic1.hebei.com.cn/0/14/94/77/14947703_427595.jpg', '2', '1', '1');
INSERT INTO `information` VALUES ('21', '这应该是2018最感人的小视频！看哭了.. ​', '这应该是2018最感人的小视频！看哭了.. ​', 'https://wx1.sinaimg.cn/crop.0.0.3840.2160.360/632ea0bfly1fqqzr08ncbj22yo1o0atg.jpg', '5', '10', '1');
INSERT INTO `information` VALUES ('22', '外媒：特蕾莎梅想借达沃斯对特朗普说几句热乎话', '​​斯蒂芬斯：今年达沃斯论坛的任务是：为一个四分五裂的世界中共同的未来画出路线图。其实，欧美关系更是如此。\n\n英国人仍未放弃的英美特殊关系如今遭遇了坎坷。一年前，特里萨•梅(Theresa May)是唐纳德•特朗普(Donald Trump)就职后第一位访问白宫的外国领导人。如今，这位美国总统已向世界表明，他正在躲避英国。对英国首相来说，眼下的日子并不好过。在主动选择了离开欧洲时碰上大西洋上的狂风暴雨，打造退欧后时代“属于世界的英国”的承诺看上去已无异于痴人说梦。\n\n说实话，那场见证特朗普取消了原定访问伦敦计划的Twitter闹剧，本该让人松一气。理论上因美国驻伦敦新大使馆的费用而起的冷脸，只是一场短暂的尴尬。美国前总统巴拉克•奥巴马(Barack Obama)坚定的仰慕者伊丽莎白女王陛下(Her Majesty Queen Elizabeth)免去了与特朗普共进午餐的折磨。特朗普也不会乐意看到英国街头的大规模抗议活动。', 'https://weibo.com/ttarticle/p/show?id=2309614199015192371195', '5', '13', '1');
INSERT INTO `information` VALUES ('23', '华中科技大学', '华中科技大学（Huazhong University of Science and Technology），简称“华中大”，由原华中理工大学（前身为1952年建立的华中工学院）、同济医科大学（前身为1907年建立的上海德文医学堂）、武汉城市建设学院（前身为1898年建立的湖北工艺学堂）于2000年5月26日合并成立。\r\n华中大是中华人民共和国教育部直属的综合性研究型全国重点大学，中央直管副部级高校，国家首批“双一流”、“985工程”、“211工程”、“2011计划”重点建设高校，“卓越工程师教育培养计划”、“卓越医生教育培养计划”、“111计划”、“海外高层次人才引进计划”、“国家建设高水平大学公派研究生项目”、“教育部来华留学示范基地”入选高校，是21世纪学术联盟、中俄工科大学联盟、中欧工程教育平台、七校联合办学、国家海外高层次人才创新创业基地成员，与国家卫生和计划生育委员会共建医学院，是拥有国家实验室和国家大科学中心的四所大学之一，是与清华大学一同被美国制造工程师协会（SME）授予“大学领先奖”的两所中国大学之一。入选《Nature》评出的“中国十大科研机构”，被称作“新中国高等教育发展的缩影”。\r\n截至2017年12月， 学校校园占地7000余亩。有一级学科国家重点学科7个，二级学科国家重点学科15个，国家重点（培育）学科7个。在教育部第三轮学科评估中，3个一级学科国内排名第一，5个一级学科国内排名前三，8个一级学科国内排名前五，17个一级学科国内排名前十。15个学科领域保持在ESI全球前1%。', 'image/zhuazhongkeji.jpg', '17', '2', '1');
INSERT INTO `information` VALUES ('24', '第三次世界大战会在哪里发生？答案出乎预料', '在美国前总统乔治·布什和奥巴马时代美国国家安全委员会任职的保罗·米勒认为，如果下一场世界大战爆发，将会在波罗的海周围的国家。\n\n据他透露，他曾经在俄罗斯侵略克里米亚前两年，也就是在2014年时候预测了俄罗斯的动作。他现在警告说，弗拉基米尔·普京计划夺取东欧更多的领土。', 'http://new.jyb.cn/jyxww/zgjyb/201612/P020161227322041143211.jpg', '6', '12', '1');
INSERT INTO `information` VALUES ('25', '靳东、冯远征等获颁“全国德艺双馨电视艺术工作者”', '1月21日新闻联播相关报道截图\n\n\n2017年12月23日，依据《全国“德艺双馨电视艺术工作者”推选章程》和《第十届全国“德艺双馨电视艺术工作者”推选活动实施细则》，中国电视艺术家协会在京召开第十届全国“德艺双馨电视艺术工作者”推选委员会会议。会上，推选产生了拟表彰人选共47名。这47人名单在随后的12月27日至今年1月3日完成了公示。', 'http://www.xinhuanet.com/titlepic/112274/1122741139_1524640397079_title0h.jpg', '7', '1', '1');
INSERT INTO `information` VALUES ('26', '北京大学', '北京大学，简称“北大”，诞生于1898年，初名京师大学堂，是中国近代第一所国立大学，也是最早以“大学”之名创办的学校，其成立标志着中国近代高等教育的开端。北大是中国近代以来唯一以国家最高学府身份创立的学校，最初也是国家最高教育行政机关，行使教育部职能，统管全国教育。北大催生了中国最早的现代学制，开创了中国最早的文科、理科、社科、农科、医科等大学学科，是近代以来中国高等教育的奠基者。 [1] \r\n1912年5月3日，京师大学堂改称北京大学校，严复为首任校长 [2]  。1916年，蔡元培出任校长，“循思想自由原则、取兼容并包之义”，把北大办成全国学术和思想中心，使北大成为新文化运动中心、五四运动策源地。1937年抗日战争爆发，北大与清华大学、南开大学南迁长沙，组成国立长沙临时大学。不久迁往昆明，改称国立西南联合大学。1946年10月在北平复学 [1]  。1952年院系调整，校园从内城沙滩红楼迁至西北郊燕园。 [3-4] \r\n北大由教育部直属，中央直管副部级建制，是国家双一流 [5]  、211工程、985工程 [1]  、2011计划重点建设的全国重点大学，九校联盟 [6]  、中国大学校长联谊会、京港大学联盟 [7]  、亚洲大学联盟 [8]  、东亚研究型大学协会、国际研究型大学联盟、环太平洋大学联盟、东亚四大学论坛、国际公立大学论坛、中俄综合性大学联盟重要成员。 [9-12] \r\n北大始终与国家民族的命运紧密相连，聚集了许多学者专家，培养了众多优秀人才，创造了大批重大科学成果，影响和推动了中国近现代思想理论、科学技术、文化教育和社会发展的进程。', 'image/zsqbeijingdaxue.png', '17', '2', '1');
INSERT INTO `information` VALUES ('27', '直击米兰男装周！杜嘉班纳集聚“中国四帅”走秀，时尚圈都沸腾了', '当今时尚圈关注度最火热的，莫过于2018秋冬时装周了。不同于女装的性感和韵味，本次米兰男装周上，各大国际品牌的男装走秀也是绝对看点满满。', 'https://wx3.sinaimg.cn/large/005J9awOly4fnp7k84krxj30hs07mgm8.jpg', '16', '11', '1');
INSERT INTO `information` VALUES ('28', '环保部：20多家国家级工业园区未按时完成《水十条》任务', '截至2017年年底，仍有200多家省级及以上工业集聚区未按时完成《水十条》规定的任务，包括新疆喀什经济开发区和库车经济技术开发区、吉林通化医药高新技术产业开发区等20多家国家级工业集聚区。新疆、青海、云南等省（区）完成率低于60%。下一步，环保部将会同相关部委督促指导相关地方采取暂停审批和核准增加水污染物排放建设项目、依照有关规定撤销园区资格等措施，进一步强化工业集聚区水污染防治工作。（环境保护部网站）​​​​\n\n推荐阅读', 'http://www.xinhuanet.com/titlepic/112274/1122741139_1524640397079_title0h.jpg', '8', '13', '1');
INSERT INTO `information` VALUES ('29', 'MC天佑为时尚芭莎拍摄男装，却被评判穿出了一身乡村土丑的气息', '​​​ 日，时尚芭莎反其道而行，邀请了MC天佑为其拍摄时尚男装！MC天佑大家也是相当熟悉了，快手一哥，成名曲为《一人我饮酒醉》，然而拍摄结果却不被大家看好！', 'https://wx3.sinaimg.cn/large/007159T6ly1fnp98hu37bj30dg0g4wf4.jpg', '15', '11', '1');
INSERT INTO `information` VALUES ('30', '中国来澳游客人数增长 超过新西兰游客', '海外网1月22日电据澳洲网编译消息，随着更多澳人前往海外旅游，在过去一年中澳洲机场的国际登机门更加繁忙。同时，前来欣赏美丽澳洲风景的国际游客也没有停下他们的脚步，中国来澳旅客人数继续增长，甚至超过来澳的新西兰旅客人数。\r\n\r\n　　澳洲出国游人数增长6.9%\r\n\r\n　　澳广网19日报道，澳洲统计局（ABS）公布的最新澳洲国际抵达与出发数据显示，截至2017年11月的一年中，共有1050万澳人在海外短期逗留后回到澳洲，较2016年增长了6.9%。\r\n\r\n　　其中，新西兰成为澳人前往海外的头号目的地，超过140万澳洲游客前往新西兰。虽然印度尼西亚热度不减，仍有120万澳人前往，但较前一年缩水了近3%。\r\n\r\n　　据了解，受巴厘岛阿贡火山喷发导致飞机停飞，2017年年底，巴厘岛的机场经历了大量旅客滞留，其中包括不乏澳洲旅客。\r\n\r\n　　此外，澳洲前往中国旅游的人数也大幅增加，上涨近17%。同时，前往日本旅游的澳人数量也较2017年增长了13.5%。\r\n\r\n　　值得一提的是，飞行距离更远的一些目的地经历了快速的旅客人数增长，到克罗地亚旅行的澳人数量在同一时期内增长了50%以上。\r\n\r\n　　中国来澳旅客人数超新西兰', 'http://inews.gtimg.com/newsapp_match/0/2224585660/0', '9', '5', '7');
INSERT INTO `information` VALUES ('31', '苏诗丁首登《歌手》踢馆 空灵歌喉向王菲致敬被赞“音乐精灵”', '苏诗丁首登《歌手》踢馆 唱功情感收放自如被赞“音乐精灵”\n\n竞演当晚，压轴登台的苏诗丁身着一袭黑裙，头顶干练短发，尽显俏皮，以自己独特的空灵嗓音向偶像王菲致敬，完美演绎了这首神秘、富有张力的《再见萤火虫》，赢得观众好感的同时也获得了其他歌手的一致好评。很多网友在听完苏诗丁的演绎版本称赞她是为“信仰”发声的“音乐精灵”，认为：“苏诗丁将天赋嗓音发挥极致，歌剧式层次丰富的吟唱，时而婉转动人，时而旖旎梦幻，一瞬间就让我们沉浸在这场义无反顾的爱情故事里。”还有网友看到她如此瘦弱却爆发力惊人，感叹：“没想到她瘦小的身体里竟然蕴含了这么大的能量，唱功技巧和感情表达也是这么收放自如。”', 'http://www.xinhuanet.com/titlepic/112273/1122736747_1524596178295_title0h.jpg', '9', '1', '1');
INSERT INTO `information` VALUES ('32', '土豪嫁女，全身珠宝超过5亿！网友却吐槽是菠萝成精了吗？', '今日缅甸的一场婚礼可以说是刷新了当地所有人的世界观，因为新娘的夫妻是本国有名的珠宝商所以决定给新娘一个万众瞩目的“特别”婚礼。下图为新娘和新郎照片，金灿灿的服饰上装饰着满绿的翡翠，让我们来看看这些翡翠的价值如何？新娘从头到脚所有的装饰均为翡翠，因其父是缅甸最大的翡翠珠宝商，所有翡翠都为高端的满绿品种，一颗的价格就不可估计，有钱真的任性啊！', 'https://wx2.sinaimg.cn/large/006YtEllly4fnp6ei96uvj30cg0gmjt2.jpg', '3', '11', '1');
INSERT INTO `information` VALUES ('33', '怀化职业技术学院与中联重科签订校企合作协议联合培养人才', '4月17日上午，怀化职业技术学院与中联重科校企合作签约仪式在长沙中联重科麓谷工业园举行。学院院长王聪田和中联人力资源总监兼中联管理学院院长高辉作为双方代表签订校企合作协议。双方决定在人才培养、产教融合、项目建设、教学课改、师资整合等方面开展深度合作。\r\n\r\n协议规定双方联合办学开办“中联班”，同时深入人才的培养，共同成立工作小组，共同制定管理考核制度，共同提供教学实训师资力量，共同制定、规划、组织“中联班”的学生选拔、教学、培训、实习等。签约仪式上，高辉总监指出，中联重科发展稳健需要更多优秀合格的人才。这次合作是一次深度校企合作，学校为企业培养优秀的职工，企业为学校培养优秀的学生，双方达到共赢。院长王聪田指出，这次合作不但要把人才培养好，还要作为教育教研试改的重点项目，做成产教融合的典范。\r\n\r\n中联重科主要从事工程机械、农业机械等高新技术装备的研发制造，是集工程机械、农业机械和金融服务多位一体的高端装备制造企业，是全国500强企业。此次合作为学生在校成长成才，毕业后进入一个机械工程类翘楚企业，实现人生的价值铺平了道路。据了解，学院有4名毕业生在中联重科就业，受到中联好评。', 'http://www.xinhuanet.com/titlepic/112274/1122741205_1524640657482_title0h.jpg', '3', '1', '1');
INSERT INTO `information` VALUES ('34', '铜丝艺术画—高贵典雅的传统艺术', ' 作为大学生的创业项目，铜丝艺术画的创作得到了社会各界的高度关注。 \r\n\r\n   铜丝艺术画高贵典雅，是一种传统的民间艺术。在中国古代就有着极高的艺术价值和欣赏价值。现代艺术家在传统工艺的基础上,采用精良的材料，全手工精心制作，加上现代的新技术和绘制手法,创作出精美的铜丝艺术画，在艺术文化的殿堂上展示出它的时代风貌。\r\n\r\n    铜丝艺术画采用优质铜丝代以画面的线条，以优质的木材或玻璃为质材，将铜丝沿拓好的线条粘贴在木板或是玻璃上。因铜丝组成的文字或图案浮着在木板之上，画面极富立体感。画面上的人物和景色栩栩如生，在光线的直照下铜丝闪闪发光，整个画面油然生辉，达到其他艺术形式难以达到的艺术效果。铜丝艺术画有较高的欣赏价值和收藏价值，深受国内外有识之士的喜爱。\r\n\r\n    铜丝画的制作过程繁杂,材料特殊,即包括原始的绘画,又包含雕刻,粘贴,打磨,抛光,保养等多种步骤,由于全手工制作,工艺精细、制作工期一般较长,所以在众多艺术品中含金量较高,作品规格既有十几、几十公分的单品，也有几十米的长卷,单件可做家中装饰,大件及长卷可置于酒店、公司、博物馆等公共场所,增加艺术氛围和文化气息,是高雅尊贵的象征。\r\n\r\n    北京世纪博奥教育文化发展中心与多所高校合作，组织成立了铜丝艺术画创作室，开辟了大学生的创业项目——铜丝艺术画的设计与创作。在挖掘传统工艺的基础上，结合现代绘画手法，设计创作出各类题材的精美铜丝艺术画，其中以佛教文化为题材的铜丝艺术画内容丰富、佛像多姿多态，庄重高雅，是观修、礼佛、积善祈愿的上品。', 'http://www.bupt.edu.cn/upload/image/201803/%E6%95%99%E4%B8%89%E6%A5%BC%E6%AD%A3%E9%9D%A2.jpg', '3', '1', '0');
INSERT INTO `information` VALUES ('35', '淄博职业学院与山东特种工业集团公司进行校企合作洽谈', '4月18日上午，山东特种工业集团公司监事吴德修及公司相关部门负责人来淄博职业学院进行校企合作洽谈。学院党委副书记、院长杨百梅及相关系院、部门负责人参加了交流。\r\n\r\n座谈中，首先杨百梅致欢迎辞并介绍了学院的基本情况，随后双方就订单培养、顶岗实习、互派讲师、共建实训基地、技改合作等方面进行了深入交流并达成合作意向。会后，双方将进一步完善合作框架，拟定校企合作协议，争取尽快实现合作，达成互惠共赢。\r\n\r\n据悉，山东特种工业集团有限公司直属于中国兵器工业集团公司，创建于1949年1月，由抗日战争、解放战争时期跟随部队的修械厂（所）合编组建，致力于国防现代化建设事业，军民品生产协调发展。\r\n\r\n期间，吴德修一行参观了淄博职业学院部分实训基地。（通讯员：牟秀颖 刘相如）', 'http://www.xdzyjy.cn/bianji/attached/image/20160630/20160630173428772877.jpg', '3', '1', '1');
INSERT INTO `information` VALUES ('36', '李克强主持召开国务院常务会议', '新华社北京4月18日电 国务院总理李克强4月18日主持召开国务院常务会议，确定推行终身职业技能培训制度的政策措施，提高劳动者素质、促进高质量发展；决定对职务科技成果转化获得的现金奖励实行个人所得税优惠，使创新成果更好服务发展和民生。\r\n\r\n　　会议指出，推动经济转型升级和高质量发展，既要有先进装备作基础，又要有劳动者素质和技能提升作支撑。按照党的十九大精神，建立并推行终身职业技能培训制度，以促进就业创业为目标，面向城乡全体劳动者提供普惠性、均等化、贯穿学习和职业生涯全过程的终身职业技能培训，并将工匠精神、质量意识融入其中，有利于缓解技能人才短缺的结构性矛盾、提高全要素生产率、推动经济迈上中高端。会议确定，一是充分发挥企业主体作用，适应产业升级需求，采取政府补贴培训、企业自主培训、市场化培训等方式，支持企业大规模开展职业技能培训。全面推行新型学徒制度，对企业新招用和转岗人员开展技能培训。二是着力培养高技能人才，重点强化高级技师等培训。教育部、财政部和人力资源社会保障部要抓紧研究支持企业开展技能培训、加快培养高技能人才的措施。三是对高校毕业生、新生代农民工等重点群体广泛开展就业创业技能培训。促进职业技能培训与学历教育相互衔接。四是健全以职业能力为导向的人才评价、技能等级等制度，制定企业技术工人按技能要素和创新成果贡献参与分配的办法，鼓励凭技能创造财富、增加收入。五是大力发展民办职业技能培训，鼓励企业兴办职业培训机构。六是加大职业技能培训经费保障，建立政府、企业、社会多元投入机制。政府补贴的职业技能培训项目全部向具备资质的职业院校和培训机构开放。七是强化培训质量监管，对职业技能培训公共服务项目实施目录清单管理，完善培训绩效评估体系。用更加优质高效的职业技能培训，打造素质高、创新力强的产业工人队伍。', 'http://news.xinhuanet.com/politics/2016lh/2016-03/16/128804442_14581032147841n.jpg', '3', '1', '1');
INSERT INTO `information` VALUES ('37', '习近平总书记湖北之行第一天', '新华网北京4月25日电 春回大地，绿满荆楚。2018年4月24日上午，习近平总书记从北京直飞湖北宜昌。一下飞机便前往长江沿岸考察调研长江生态环境修复工作。​\r\n两年前，2016年1月5日，习近平在重庆召开推动长江经济带发展座谈会，强调“当前和今后相当长一个时期，要把修复长江生态环境摆在压倒性位置，共抓大保护，不搞大开发”，要让中华民族的母亲河永葆生机活力。\r\n\r\n　　在宜昌，第一个考察点是位于长江岸边的兴发集团新材料产业园，聚焦的是破解“化工围江”问题。\r\n\r\n　　兴发集团是全国最大的精细磷化工企业。从2017年开始，企业对园区临江生产设施拆除或整体搬迁，关闭了排污口，并对拆除区域进行全面绿化。\r\n\r\n　　总书记对企业员工说，我强调长江经济带建设要共抓大保护、不搞大开发，不是说不要大的发展，而是首先立个规矩，把长江生态修复放在首位，保护好中华民族的母亲河，不能搞破坏性开发。通过立规矩，倒逼产业转型升级，在坚持生态保护的前提下，发展适合的产业，实现科学发展、有序发展、高质量发展。', 'http://www.xinhuanet.com/politics/2018-04/25/1122736975_15246126785571n.jpg', '3', '1', '1');
INSERT INTO `information` VALUES ('38', '欧盟要求作为第三方加入中国诉美国钢铝关税措施案的磋商', '新华社日内瓦４月２４日电（记者凌馨）根据记者２４日从世界贸易组织获得的文件，欧盟已于近日向世贸组织表示，请求加入中方日前针对美国钢铝关税提起的世贸组织争端解决机制下的磋商。\r\n\r\n　　欧盟近日向世贸组织递交文件，称美方采取的关税措施对欧盟的钢铝产品销售和出口可能产生重大影响，而磋商结果也将涉及欧盟的主要贸易利益，因此请求加入磋商。\r\n\r\n　　欧盟在文件中表示，美国对欧盟的钢铝关税豁免期如果无法延长，美国关税政策将对欧盟出口构成“巨大损害”。\r\n\r\n　　根据２０１７年欧盟对美出口规模估算，欧盟是对美钢铁产品第一大出口方和铝产品第五大出口方，而美国对钢铁和铝产品征收的关税将分别涉及欧盟钢铁产业５３亿欧元和铝产业１１．１亿欧元的出口产品。\r\n\r\n　　美国总统特朗普３月８日宣布，由于进口钢铝产品危害美国“国家安全”，美国将对进口钢铁和铝产品分别征收２５％和１０％的关税。３月２２日，美国表示将暂时豁免对欧盟、阿根廷、澳大利亚、巴西、加拿大、墨西哥、韩国等经济体的钢铝关税，豁免期将于５月１日结束。\r\n\r\n　　中国于４月５日在世贸组织争端解决机制项下向美方提出磋商请求，正式启动争端解决程序。随后，欧盟等也向美方提出在《保障措施协定》框架下就钢铝关税展开磋商。', 'http://www.xinhuanet.com/titlepic/112272/1122724608_1524443781666_title0h.jpg', '3', '1', '1');
INSERT INTO `information` VALUES ('39', '道歉来得有点晚，但正义从不缺席！', '近日\r\n\r\n加拿大温哥华市\r\n\r\n就历史上歧视华人政策正式道歉\r\n\r\n温哥华市长罗伯逊宣读道歉声明\r\n\r\n“历史上遭受歧视的阴影\r\n\r\n至今仍然笼罩着加拿大华裔\r\n\r\n我们城市必须首先承认其带来的伤害\r\n\r\n然后才可以向前迈进”\r\n\r\n这句迟到了逾百年的道歉\r\n\r\n让温哥华华人湿了眼眶\r\n\r\n \r\n\r\n泪水揭开的是\r\n\r\n一部长达百年的华工辛酸史\r\n\r\n可以追溯到清末年间\r\n\r\n19世纪后期', 'http://www.xinhuanet.com/world/2018-04/25/129858795_15246234622821n.jpg', '3', '1', '1');
INSERT INTO `information` VALUES ('40', '视频链接测试', '视频链接地址', 'http://www.bbc.com/news/av/world-europe-43885226/kim-wall-death-what-we-know-so-far', '5', '25', '1');
INSERT INTO `information` VALUES ('42', '小朋友', '抖音小视频https://www.iesdouyin.com/share/video/6540579748462988551/?region=CN&mid=6540579821823167235&titleType=title&timestamp=1524650623&utm_campaign=client_share&app=aweme&utm_medium=ios&iid=29658239177&utm_source=weixin&tt_from=weixin&utm_source=weixin&utm_medium=aweme_ios&utm_campaign=client_share&uid=69424549511&did=29658239177', 'http://t.cn/RuJtLap', '5', '25', '1');
INSERT INTO `information` VALUES ('43', '董明珠“格力空调”', '近日，格力电器董事长兼总裁董明珠在接受采访时表示，格力即将推出二代手机，定价在3000元左右；除了格力专卖店外，还会在一些商店销售；手机芯片也在研发当中。\r\n　　董明珠称，格力手机2代将会搭载骁龙820处理器，不仅开机画面太美，而且用户相当满意。董明珠曾经放言称，格力手机二代“它将是全球最好的手机，成为世界一流产品。”\r\n　　此前，董明珠明确表示，格力手机2代将会以发布会的形式向外界宣布，配置比第一代手机更高，更适合年轻人使用。\r\n　　业内人士向环球网科技表示，第一代格力手机经历了各种风风雨雨，争议不断，但更像是格力的一次试水，或许第二代才是真正发力的时候。\r\n　　格力手机能卖1亿部\r\n　　2015年3月，格力手机横空出世。董明珠突然宣布格力手机已经做出来了，并称自己正在使用。\r\n　　去年6月1日举办的格力电器股东大会上，董明珠曾表示，格力手机已经销售，对外售价为1600元，供不应求，销售5000万部没问题。首批格力手机仅限内部订购，普通用户无法从大众市场渠道购买到。\r\n　　随后，董明珠表示，格力手机卖5000万部还是1亿部对格力来说都不是问题。在她看来，格力手机未来卖1亿部都不成问题。', 'http://www.xdzyjy.cn/bianji/attached/image/20160422/20160422154525322532.png', '18', '1', '1');
INSERT INTO `information` VALUES ('44', '北京邮电大学', '北京邮电大学（Beijing University of Posts and Telecommunications），简称北邮，是中华人民共和国教育部直属，工业和信息化部共建的一所以信息科技为特色，工学门类为主体，管理学、文学、理学等多个学科门类协调发展的全国重点大学，是北京高科大学联盟成员高校 [1]  、国家首批“双一流”世界一流学科建设高校 [2]  。系国家“211工程”、“985工程优势学科创新平台”项目重点建设，列入首批“卓越工程师教育培养计划”、“111计划”。被誉为“中国信息科技人才的摇篮”。 [3] \r\n前身是1955年成立的新中国第一所邮电高等学府——北京邮电学院。1960年被国务院确定为全国重点高校。 1993年更名为“北京邮电大学”。2000年，划入教育部直属高校行列。2012年，信息与通信工程一级学科全国排名第一。 [4] \r\n据2017年10月学校官网显示，学校设有19个教学单位，3个研究院。学科专业已经覆盖理学、工学、经济学、管理学等9个学科门类，涉及22个一级学科。学校现有西土城路校区、沙河校区、宏福校区和延庆世纪学院校区，在江苏无锡和广东深圳分别设有研究院。全日制本、硕、博学生及留学生近30000名，正式注册的非全日制学生近45000名。', 'image/zbeijingyoudian.jpg', '17', '1', '1');
INSERT INTO `information` VALUES ('45', '上海大学', '截至2017年10月，学校设有宝山校区（校本部）、延长校区、嘉定校区3个校区，占地面积近3000亩，建筑面积139万平方米；有研究生14987人，全日制本科生20652人、专科生41人，成教生18507人。', 'image/zshanghai.png', '17', '1', '1');
INSERT INTO `information` VALUES ('46', '浙江大学', '据ESI公布的数据，截至2018年3月，学校18个学科进入世界学术机构前1%，7个学科进入ESI前100位，均居全国高校第二；8个学科进入前1‰，5个学科进入ESI前50位，均居全国高校第一。', 'image/zzhejiang.png', '17', '1', '1');
INSERT INTO `information` VALUES ('47', '复旦大学', '复旦师生谨记“博学而笃志，切问而近思”的校训，严守“文明、健康、团结、奋发”的校风，力行“刻苦、严谨、求实、创新”的学风，发扬“爱国奉献、学术独立、海纳百川、追求卓越”的复旦精神，以服务国家为己任，以培养人才为根本，以改革开放为动力，为实现中国梦作出新贡献。 [3] ', 'image/zfudan.jpg', '17', '1', '1');
INSERT INTO `information` VALUES ('48', '清华大学', '水木清华，钟灵毓秀，清华大学秉持“自强不息、厚德载物”的校训和“行胜于言”的校风，坚持“中西融汇、古今贯通、文理渗透”的办学风格和“又红又专、全面发展”的培养特色，弘扬“爱国奉献、追求卓越”传统和“人文日新”精神。恰如清华园工字厅内对联所书——“槛外山光，历春夏秋冬、万千变幻，都非凡境；窗中云影，任东西南北、去来澹荡，洵是仙居”。 [1] ', 'image/zwuhan.jpg', '17', '1', '1');
INSERT INTO `information` VALUES ('49', '厦门大学', '截至2017年3月，学校占地9000多亩，校舍建筑总面积210多万平方米，图书馆馆藏纸质图书总量410多万册，固定资产总值91亿元，仪器设备总值28亿元；拥有8家附属医院，设有6个学部以及28个学院（含76个系）和14个研究院，有31个博士学位授权一级学科，50个硕士学位授权一级学科；有专任教师2718人，在校学生近40000余人，其中硕士研究生16390人，博士研究生3229人 [4]  。', 'image/zxiamen.png', '17', '1', '1');
INSERT INTO `information` VALUES ('50', '四川大学', '四川大学先后汇聚了历史学家顾颉刚、文学家李劼人、美学家朱光潜、物理学家吴大猷、植物学家方文培、卫生学家陈志潜、数学家柯召等大师。历史上，吴玉章、张澜曾执掌校务，共和国开国元勋朱德、共和国主席杨尚昆、文坛巨匠郭沫若、人民作家巴金、一代英烈江竹筠（江姐）等曾在川大求学。两院院士中，有50余位是川大校友；2001年评选的近代50位“四川文化名人”中，有36人是川大校友。 [1-4] ', 'image/zsichuan.jpg', '17', '1', '1');
INSERT INTO `information` VALUES ('51', '教育部办公厅关于进一步做好高校毕业生 就业创业工作的通知', '各省、自治区、直辖市教育厅（教委），有关省、自治区人力资源社会保障厅，部属各高等学校：\r\n\r\n　　党中央、国务院高度重视高校毕业生就业创业工作。习近平总书记强调，高校毕业生的就业问题关乎社会安定稳定，一定要高度重视。要做好以高校毕业生为重点的青年就业工作，支持帮助学生们迈好走向社会的第一步。5月6日李克强总理主持召开就业工作座谈会并作重要讲话，5月20日国务院召开全国普通高等学校毕业生就业创业工作电视电话会议，对做好高校毕业生就业创业工作进行全面部署。目前，正值高校毕业生就业创业关键期，为深入贯彻落实习近平总书记、李克强总理等中央领导同志的重要指示批示精神和国务院会议要求，确保今年高校毕业生就业水平不降低，现就有关事项通知如下：\r\n\r\n　　一、持续推进高校毕业生就业。各地各高校要围绕战略性新兴产业、现代服务业，面向民营经济、小微企业，开发更多适合高校毕业生的就业岗位。充分发挥校园招聘主渠道作用，主动“走出去，请进来”，采取网上网下相结合，多渠道收集发布就业信息，办好各类招聘活动，确保校园招聘活动热度不减、数量提高。继续做好“特岗计划” \r\n“三支一扶” “西部计划” “大学生村官”等基层项目组织招募、政策落实、后续服务等工作，各地要结合实际，启动实施社区服务、健康养老等新项目。尚未制定鼓励基层就业学费补偿贷款代偿办法的省份，要在毕业生离校前出台相关政策并组织实施。\r\n\r\n　　二、着力抓好大学生创新创业。各地各高校要将就业创业结合起来，释放创业带动就业的“倍增效应”。要把深化创新创业教育改革作为推进高等教育综合改革的突破口，融入人才培养体系，健全课程体系，促进专业教育、实习实践等与创新创业教育有机融合。要抓紧制定鼓励学生创新创业的学分转换、弹性学制、保留学籍休学创业等具体政策措施。要根据学生创新创业不同阶段的实际需求，不断提高指导服务的针对性和有效性。高校要加大在科技成果转化、场地建设、资金投入等方面的帮扶，开辟专门场地用于学生创新创业。做好“全国高校实践育人创新创业基地”培育建设。要在明晰科研成果产权前提下，支持在校学生带着科研成果创业，并提供实验室、实验设备等各类资源。要充分发挥校友等社会资源作用，多渠道为创新创业学生提供资金支持。要积极引导鼓励学生返乡创业，并积极协调有关部门为返乡创业的学生提供土地、资金、技术指导等方面的支持。要组织举办好第二届中国“互联网+”大学生创新创业大赛和2016年全国职业院校技能大赛，通过各类大赛激发学生创新创业热情。要做好全国高校创新创业总结宣传工作，提供各类学校可借鉴的典型经验。\r\n\r\n　　三、精准推送就业创业指导服务。各地各高校要建立健全精准推送就业服务机制，准确掌握就业信息，完善毕业生求职意愿信息数据库和用人单位岗位需求信息数据库，搭建精准对接服务平台。充分利用“互联网+就业”新模式，根据毕业生自身条件、个性特点进行智能化供需匹配，减少毕业生求职盲目性。要广泛使用手机等移动终端，开展个性化订制服务，为毕业生送政策、送指导、送信息。要加强就业创业指导课程和学科建设，按要求配备专兼职就业指导教师，加强对就业指导教师的培训，不断提高就业指导能力和水平。要高度重视心理健康辅导，及时疏导毕业生求职焦虑等心理问题，帮助毕业生调整就业预期，科学规划职业生涯，积极主动就业创业。\r\n\r\n　　四、抓紧做好大学生征兵工作。各地各高校要认真贯彻落实中央军委国防动员部、教育部《关于进一步做好大学生征兵工作的通知》（军动〔2016〕41号），建立健全征兵工作定期会商机制，以更大力度做好宣传发动和组织实施，细化分解征集任务，实时掌握学生应征报名、体格检查、政治考核和预定兵工作进展情况，确保放暑假前完成在校生和毕业生的预定兵工作。要进一步提高宣传动员精准化水平，按照学生征兵工作阶段要求，针对毕业生、在校生、新生三个群体不同特点，开展点对点、面对面宣传发动。要进一步加强政策落实，鼓励因地制宜出台新措施，今年要重点落实好高考录取通知书中寄送征兵宣传单、退役大学生士兵专项研究生招生计划、复学升学、转专业、就业创业等政策，努力实现学生征兵数量和质量进一步提高。\r\n\r\n　　五、切实加强困难帮扶。各地各高校要抓紧建立健全有就业意愿尚未就业毕业生统计机制，以精准统计为基础，重点摸清有就业意愿尚未就业毕业生状况。要带着深厚的感情像对待自己的亲人一样做就业帮扶工作，突出重点、狠抓落实，切实帮助他们解决就业中遇到的困难和问题。对家庭困难毕业生、少数民族毕业生、女性毕业生、农村生源毕业生、残疾毕业生等各类就业困难群体，要建立台账，通过发放求职创业补贴、举办专场招聘活动、开展个性化辅导、推荐岗位信息等多种方式，帮助他们尽快实现就业。对建档立卡贫困家庭毕业生和零就业家庭毕业生，高校领导要亲自过问、指定专人具体负责，千方百计帮助他们实现就业。对离校未就业毕业生，要积极主动和人社部门做好信息衔接和服务接续工作，持续为离校未就业毕业生提供就业指导和信息服务，努力使他们都能在毕业半年内实现就业或参加到就业准备活动中。\r\n\r\n　　六、维护高校毕业生合法权益。各地各高校要高度重视毕业生权益保护，进一步加强法制教育，提高维权意识，坚决制止就业欺诈行为，帮助毕业生识别虚假或欺诈就业信息，防范招聘陷阱，保护自身权益。要进一步加强校园招聘活动监管，校园招聘活动严禁发布含限定院校、性别、户籍、民族等歧视性条款的就业信息，坚决反对任何形式的就业歧视。各高校不准以任何方式强迫毕业生签订就业协议或劳动合同，不准将毕业证书、学位证书发放与毕业生签约挂钩，不准以户档托管为由劝说毕业生签订虚假就业协议，不准将毕业生顶岗实习、见习证明材料作为就业证明材料。\r\n\r\n　　七、做好思想教育和宣传引导工作。各地各高校要不断创新思想教育方式方法，采取青年学生喜闻乐见的形式，组织毕业生深入学习习近平总书记、李克强总理关于青年人成长成才和就业创业重要讲话及指示精神，引导广大毕业生积极主动就业，自觉到国家需要的地方实现自己的人生价值。要密切关注毕业生就业形势变化，加强形势研判和舆情监控，及时发现和处理毕业生就业过程中可能出现的不稳定因素和问题。要大力营造良好氛围，积极宣传学生爱岗敬业艰苦创业典型事迹。坚决防止不利于毕业生就业创业，不利于社会安全稳定的新闻炒作。要积极举办主题班会、毕业典礼等，组织开展形式丰富的文明离校活动，确保校园安全稳定。', 'http://www.xdzyjy.cn/bianji/attached/image/20160603/2016060312490188188.jpg', '2', '1', '1');
INSERT INTO `information` VALUES ('52', '教育部等七部门关于印发《职业学校教师企业实践规定》的通知', '各省（自治区、直辖市）教育厅（教委）、国资委、发展改革委、工业和信息化主管部门、财政厅(局)、人力资源社会保障厅(局)、税务局，新疆生产建设兵团教育局、国资委、发展改革委、工信委、财务局、人力资源社会保障局：\r\n　　为贯彻落实全国职业教育工作会议精神以及《国务院关于加快发展现代职业教育的决定》（国发〔2014〕19号）要求，进一步加强职业学校“双师型”教师队伍建设，促进职业学校教师专业发展，提升教师实践教学水平，特制定《职业学校教师企业实践规定》。现印发给你们，请遵照执行。\r\n\r\n　　执行中如遇问题，请及时反馈。\r\n\r\n　　                                                                  教育部  国务院国有资产监督管理委员会\r\n\r\n　　                                                             国家发展和改革委员会    工业和信息化部 财政部\r\n\r\n                                                                   人力资源和社会保障部          国家税务总局', 'http://www.xdzyjy.cn/bianji/attached/image/20170427/20170427120523352335.jpg', '2', '1', '1');
INSERT INTO `information` VALUES ('53', '关于征集《2016中国高等职业教育人才培养质量年度报告》图片的通知', '各高职院校：\r\n       经教育部职业教育与成人教育司授意，由全国高职高专校长联席会议委托上海市教育科学研究院和麦可思研究院联合调研编著的《中国高等职业教育人才培养质量年度报告(2016)》即将出版发行，现面向全国各高职院校征集相关图片，具体要求如下：\r\n\r\n    一、图片主题\r\n\r\n    所报送图片要求以学生为主体，展示学校办学成就。具体可以围绕“学生发展”“教育教学”“企业参与”“政府责任”“服务贡献”等主题模块报送（相关内容可参考所附《2016质量报告目录》（参考稿））。\r\n\r\n    二、格式要求\r\n\r\n    1．图片格式：大小不小于A4，分辨率不低于300dpi，JPEG格式。\r\n\r\n    2．图片要求：清晰度高，最好由专业人员拍摄，由专业美术人员挑选照片。尽量不选取卡片机照的照片，所选照片上无拍照时间；照片要求人物表情自然、阳光，突出学生参与；所有集体照要求是活动场景“剧照”。\r\n\r\n    3．学校提供的每张图片必须注明来源和人物、地点、主题等背景介绍，例如：×××学校×××场景×××专业×××年级×××人×××事，×××提供。限100字以内。照片版权由提供单位负责。\r\n\r\n    三、报送要求与方式\r\n\r\n    1．每校限报1幅图。\r\n\r\n    2．将图片及说明，连同学校联系人、手机及邮箱，用RAR格式压缩，压缩包文件以学校校名命名，发送至\r\n\r\nxlh2003@vip.163.com。\r\n\r\n    3.报送时间：2015年5月20日16点前', 'http://www.xdzyjy.cn/bianji/attached/image/20160701/20160701124742384238.jpg', '2', '1', '1');
INSERT INTO `information` VALUES ('54', '教育部 中央宣传部 人力资源社会保障部关于做好2016年职业教育活动周相关工作的通知', '各省、自治区、直辖市教育厅（教委）、党委宣传部、人力资源社会保障厅（局），计划单列市教育局、党委宣传部、人力资源社会保障局，新疆生产建设兵团教育局、党委宣传部、人力资源社会保障局：\r\n　　根据国务院关于每年5月的第二周为“职业教育活动周”的决定，为办好2016年职业教育活动周，大力弘扬社会主义核心价值观和“劳动光荣、技能宝贵、创造伟大”的时代风尚，促进职业教育产教融合、校企合作培养合格技术技能人才，支撑中国经济转型升级，促进大众创业、万众创新，经教育部、中央宣传部、人力资源社会保障部研究，现就有关事项通知如下。\r\n\r\n　　一、时间和主题\r\n\r\n　　1.时间：2016年5月8日至14日\r\n\r\n　　2.主题：弘扬工匠精神 打造技能强国\r\n\r\n　　二、主要活动\r\n\r\n　　各地要充分结合实际组织开展系列活动。要不断丰富活动内容，创新活动设计；要突出活动重点，办出特色；要贴近群众，生动有趣。\r\n\r\n　　1.开放校园。职业院校要面向中小学生、家长和社区居民，结合本校特点，开展职业体验观摩活动、校企合作成果展示活动、校园文化展示活动，开展劳模、大师、技术能手和优秀毕业生进校园活动等，方便群众了解职业和职业院校，促进中小学生发现职业乐趣，感受现代职业教育特色与魅力。\r\n\r\n　　2.开放企业。有条件的行业、企业要面向中小学生、家长和社区居民，开辟通道或展区，开展工作现场体验观摩活动，介绍产业发展前景和工作流程，展示工匠（大师）技艺绝活等，激发全社会尊重劳动、崇尚技术技能，弘扬工匠精神，增强群众职业意识、精品意识、创新意识。\r\n\r\n　　3.开放院所。职业教育研究机构、学会（协会）等要围绕主题，举办论坛、讲座、展览等，面向群众充分展示职业教育历史沿革、创新成果、典型案例等。行业职业教育教学指导委员会要结合行业特点，面向职业院校和企业开展产教对话、校企合作案例推介等活动，面向群众展示职业院校与企业合作育人、共存共赢的发展成果。\r\n\r\n　　4.开放赛场。2016年中国技能大赛、全国职业院校技能大赛、中等职业学校文明风采竞赛赛场要为中小学生、家长和社区居民设立观赛通道、项目体验和成果展示区域，为企业设立人才招聘洽谈区域，让群众充分领略职业院校师生风采，感受职业教育支撑产业发展、促进就业创业的重要作用，传播职业教育正能量、好声音、新形象。\r\n\r\n　　5.为民服务。职业院校师生要“走出去”，充分发挥专业优势，利用本地社区、广场、公园、展馆等场所，开展紧贴群众生活的健康饮食咨询、烘焙茶艺、家政服务、形象设计、园艺插花、家用物品使用与保养、民族文化、传统工艺、职业礼仪、环境保护等服务活动，让群众感知职业教育服务现代美好生活，既能高大上，又能接地气。', 'http://www.xdzyjy.cn/bianji/attached/image/20160701/20160701124742384238.jpg', '2', '1', '1');
INSERT INTO `information` VALUES ('55', '中国人民大学', '中国人民大学（Renmin University of China），简称“人大” [1]  ，由教育部直属 [2]  ，教育部与北京市共建，中央直管副部级建制，位列“双一流” [3]  、“211工程”、“985工程”，入选“111计划”、“2011计划”、“卓越法律人才教育培养计划”、“卓越农林人才教育培养计划”、“海外高层次人才引进计划”、“中国政府奖学金来华留学生接收院校”，为世界大学联盟、亚太国际教育协会、京港大学联盟成员，是一所以人文社会科学为主的综合性研究型全国重点大学。 [4-7] \r\n中国人民大学前身是1937年成立的陕北公学，以及后来的华北联合大学和华北大学。1949年12月16日，中央人民政府政务院通过了《关于成立中国人民大学的决定》。1950年10月3日，以华北大学为基础合并组建的中国人民大学正式开学，成为新中国创办的第一所新型正规大学。1954年，被确定为以社会科学为主的综合大学和首批全国重点大学；1960年，被确定为综合性全国重点大学；2001年，入选“985工程”。 [1] \r\n据2017年4月学校官网信息显示，中国人民大学占地面积230余万平方米，设有中关村校区、通州校区（东校区，在建）、苏州校区、深圳研究院、深圳校区（在建）； [1]  [8-10]  教学科研仪器设备值7.44亿元； [11]  馆藏纸质图书392万册、电子图书297万种；下设5个学部、26个教学单位、81个本科专业；有专任教师1846人、全日制在校生24778人。', 'image/zzhongguorenda.png', '17', '1', '1');
INSERT INTO `information` VALUES ('56', '关于举办中国高教学会高职素质教育工作委员会2016年年会的通知', '各高职高专院校：\r\n    为认真贯彻落实《中共中央国务院关于深化教育改革全面推进素质教育的决定》精神，加强高职院校素质教育工作的交流与合作，进一步将创新创业教育融入高职人才培养，切实增强学生的创业意识、创新精神和创造能力，厚植大众创业、万众创新土壤，经研究决定，全国高职素质教育工作委员会定于2016年5月5-7日在江苏省常州市万达嘉华酒店（具体地址详见附件1）召开年会。\r\n\r\n    请各参会单位于4月25日前，将参会回执（附件2）反馈至常州信息职业技术学院。会务组将在常州火车站北站和常州飞机场安排人员接站，如需接站的单位，请在回执上注明火车或航班的班次及到站时间。传真电话：0519-86338010 ；电子邮箱：ybccit@163.com。\r\n\r\n    本次会议收取600元/人会务费，住宿统一安排，费用自理，会务组5月5日全天为参会人员办理报到手续。\r\n\r\n    联系人：陈洁         0519-86338008；13806129515 \r\n\r\n                   周萍         0519-86338011；13861062088\r\n\r\n    附件：1.会议地点交通指引\r\n\r\n          2.参会回执\r\n\r\n                                                                           全国高职素质教育工作委员会\r\n\r\n                                                                                   2016年4月1日   ', 'http://www.xdzyjy.cn/bianji/attached/image/20160630/2016063017400422422.png', '2', '1', '1');
INSERT INTO `information` VALUES ('57', '如何才能上斯坦福？听听这9位学生的故事吧', '我们找到了如今在科技产业给人留下深刻印象的9位斯坦福学生，他们很有可能是下一代最具代表性的创新家和变革者，或者从他们的经历中你可以一探斯坦福的招生喜好。\r\n\r\n　　Aashna Mago\r\n\r\n　　虚拟现实领域的明日之星\r\n这个来自印度的女孩，刚进入斯坦福时还是一位生物学新生，曾在普林斯顿花了几年时间进行癌症治疗研究。\r\n\r\n　　进入斯坦福后，Mago决定转修计算机专业，这源于一次VR研讨会，她发现VR能够帮助治疗退伍士兵的创伤后压力后群症。\r\n\r\n　　大一时，Mago南加大的“混合现实实验室”做实习生，在那里学习了3D建模和印刷等技能，并和VR专家Mark Bolas一起工作。\r\n\r\n　　大二中途休学，接受了罗滕伯格风险投资公司的全职工作。她帮助公司建立了一个内部制作工作室，并推出了首个VR/ AR加速器River。', 'http://www.xdzyjy.cn/bianji/attached/image/20170427/20170427120523352335.jpg', '14', '1', '1');
INSERT INTO `information` VALUES ('58', '美高生存记：和美国室友从“互掐”到”家人“，我经历了什么？', '“We are the dorm within the dorm,the random among the stable, the recluses among the extroverts. We are: theGarden (plus two)!”Quoting Addy Henderson fromm The DIAL 2017.\r\n\r\n　　\"我们是大宿舍中的小宿舍，按部就班的生活中不走寻常路的灵魂，社交狂人当道时的隐士。我们是：Rolfe花园（五加二）！\"\r\n\r\n　　——这是整本Yearbook中我最喜欢的一句话，把同学的原话翻译成中文好像失去了它的简洁与诗意。\r\n\r\n　　回忆过去三年在寄宿学校的生活，最大的挑战并不是学习压力、语言文化冲突，而是“寄宿”二字。这并不是说我生活自理能力不好，也不是说我时常想家。而是宿舍这个小空间把许多在更大的社会里根本不会有交集的人困在一个闭塞的地方，使这些人不得不互相交往。\r\n\r\n　　对于非常需要安静的自我空间的我来说，我的内心一直暗暗的有抵触感。在一群我并不完全认可的人面前，我无法舒舒服服的做自己，无法自在释放内心疯狂搞怪的小野兽。在许多人眼里，我是那个课堂、图书馆、食堂、宿舍四点一线的文静中国女生，而不是那个在数学课上看日本料理食谱看到流口水、在戏剧课上主动请缨出演一个颜面扫地、当众打呼噜的农村姑娘、凌晨两点一个人在酒店对着镜子跳舞的不羁灵魂。', 'http://www.xinhuanet.com/titlepic/112273/1122739094_1524621458388_title0h.jpg', '14', '1', '1');
INSERT INTO `information` VALUES ('59', '习近平考察三峡工程:大国重器必须掌握在我们手里', '春回大地，绿满荆楚。2018年4月24日上午，习近平总书记从北京直飞湖北宜昌。一下飞机便前往长江沿岸考察调研长江生态环境修复工作。两年前，2016年1月5日，习近平在重庆召开推动长江经济带发展座谈会，强调“当前和今后相当长一个时期，要把修复长江生态环境摆在压倒性位置，共抓大保护，不搞大开发”，要让中华民族的母亲河永葆生机活力。', 'image/zjiadian1.jpg', '4', '1', '1');
INSERT INTO `information` VALUES ('60', '印度科学教育给我们的启示：教孩子创造，而非使用现成产品', '印度裔在硅谷已经成为不容小觑的力量，曾经硅谷是 IC 并重，Indian+Chinese，现在Indian越来越大了，而且是从做技术到做管理的全面铺开。其实不仅仅在硅谷，中国的软件行业也是如此，尤其针对欧美的软件外包业，印度裔高管的比例越来越高，而且越来越多的中国公司，从给美国做外包，转为给印度做转手二包。\r\n\r\n　　在我跟很多行业内的朋友讨论原因时，大家普遍认为，印度裔在英语方面的先天优势是最重要的因素。但同样英语化程度很高的菲律宾，输出最多的却多是菲佣。那么印度人在全球IT业高歌猛进的背后，有没有更深层次的原因呢？或许郑林允老师这篇文章，能启发我们的思考。\r\n\r\n　　经常听到有人感叹硅谷的高科技公司都被印度人“占领”了，具体到什么程度了呢？一份研究报告显示：在硅谷的 1/3 工程师是印度裔，硅谷高科技公司里 7% 的 CEO 是印度人；印度人创建的工程和科技公司比英国人、华人和日本人所创建的总和还多。\r\n\r\n　　噢，对不起，这还只是一份十年前（2008年）的报告。\r\n\r\n　　今天，三大硅谷 IT 公司：苹果、谷歌、微软，后两个的 CEO 都是印度裔。除了谷歌与微软，摩托罗拉、诺基亚、软银、Adobe、SanDisk、百事可乐、联合利华、万事达卡、标准普尔……这些知名国际巨头的 CEO 都已经被印度人拿下。', 'http://www.xinhuanet.com/titlepic/12985/129858668_1524618981616_title0h.png', '14', '1', '1');
INSERT INTO `information` VALUES ('61', '印度200多所工程学院申请关闭 教育质量令人堪忧', '【环球网教育综合报道】据《印度时报》4月9日报道，尽管印度总理纳伦德拉·莫迪 (Narendra Modi)促使自己完成在印度的使命，希望该国最主要的年轻人口能变成人口红利，但全国工程学技术教育质量却极其堪忧。\r\n\r\n报道称，印度的工程学技术教育不合格的问题现已广为人知。除了印度理工学院(IITs)及其他著名的技术学院外，大多数工程学院都无法为工程学专业的学生提供高质量的教育，以帮助他们在毕业后找到合适的工作。 究其根源，多年来，低质量的工程学院不断涌现在印度。当来自这些学院的毕业生找不到合适的工作时，他们的入学人数就会减少。现在，很多工程学院都被迫关闭了。\r\n\r\n印度全国技术教育委员会(AICTE)称，目前已经有近200个“不合格”的工程学院申请关闭，因为无人问津，且这些机构每年的招生人数都在下降。根据AICTE的数据，每年大约有7.5万个招生名额剩余。在2016-2017年度，工程学院的招生的总人数为157.122万人，其中指进校的总人数只有78.7127万人，仅为50.1%。2015-2016学年的招生总人数为164.7155万人，但进校的只有86.0357万人，占52.2%。\r\n\r\nAICTE的主席指出，每年大约有150所大学因严格的AICTE规则而自动关闭。根据委员会的规定，缺乏适当的基础设施和连续5年的招生不足30%的大学将不得不关闭。而根据其网站，从2014-2015年到2017-2018年，AICTE已经批准了印度超过410所大学的逐步关闭。其中在2016-2017年，批准的数量最多。\r\n\r\n2003年，印度政府成立了一个委员会来调查工程学技术教育在该国的发展情况。UR Rao委员会指出，未来，技术类专业毕业生将出现过剩情况。且研究发现，工程技术教育正在迅速扩张，但这种情形是不会长期持续下去的，因为国家对工程专业毕业生的需求没有那么大。\r\n\r\n15年过去了，事实表明UR Rao委员会的判断是正确的。据印度AICTE的数据显示，2017年有近80万名工程学学士/技术学士毕业生，但只有不到一半的学生通过校园招聘找到了工作。根据AICTE的数据，在2008年至2009年，有30%的学生加入了工程学院，这是自2001年以来招生的最高增幅。但在2016-2017年，在全国3291所工程学院中，15.5万名工程学学士/技术学的招生名额剩余。\r\n\r\n报道说，印度的工程教育危机是显而易见的。几项研究指出，除了那些来自知名院校的毕业生，工程学专业毕业的学生就业能力都较低，除了那些来自著名学府的工程学专业毕业生。', 'http://cms-bucket.nosdn.127.net/07445d3c33224521bf9b080fc245f2ba20180412103112.jpeg?imageView&thumbnail=550x0', '14', '1', '1');
INSERT INTO `information` VALUES ('62', '北京邮电大学校外企业', '历史悠久，资金雄厚，实力强悍', 'image/en.jpg', '18', '1', '1');
INSERT INTO `information` VALUES ('63', '职场风华', 'https://www.iesdouyin.com/share/video/6540579748462988551/?region=CN&mid=6540579821823167235&titleType=title&timestamp=1524650623&utm_campaign=client_share&app=aweme&utm_medium=ios&iid=29658239177&utm_source=weixin&tt_from=weixin&utm_source=weixin&utm_medium=aweme_ios&utm_campaign=client_share&uid=69424549511&did=29658239177', 'https://gss0.bdstatic.com/94o3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike150%2C5%2C5%2C150%2C50/sign=e5586b151b38534398c28f73f27adb1b/4ec2d5628535e5dd37633da67dc6a7efce1b6278.jpg', '11', '25', '1');
INSERT INTO `information` VALUES ('64', '全面推进现代职业教育体系建设为推进“四个全面”提供人才保障', '4月24日教育部在京召开2015年度职业教育与继续教育工作会议。会议的主题为按照中央关于协调推进“四个全面”的战略布局，整体推进职业教育与继续教育改革发展；主要任务是深入学习贯彻党的十八大和十八届三中、四中全会精神，落实习近平总书记重要指示和全国职业教育工作会议要求，全面推进现代职业教育体系建设，深化继续教育改革创新，推动职业教育与继续教育各项工作在2015年取得新的进展。教育部副部长鲁昕出席会议并讲话。　 \r\n\r\n \r\n\r\n　　会议指出，2014年是我国职业教育与继续教育发展史上具有里程碑意义的一年。党中央、国务院对职业教育工作作出全面战略部署，职业教育改革发展进入新的黄金期，建设现代职业教育体系的顶层设计基本完成，继续教育改革发展也站到了新的起点上。职业教育与继续教育为转方式、调结构、促升级提供了有力支撑，为社会成员职场成功、人生出彩创造了更多机会。　 \r\n\r\n \r\n\r\n　　会议强调，协调推进“四个全面”的战略布局，基础是人的素质，核心是人的发展。我国人口和劳动力结构的深刻变化和科技进步的不断加速，要求用结构性改革破解结构性矛盾，加快构建更加科学合理的人才结构，推动发展动力由人口数量红利向人力资本红利转变。要深刻理解协调推进“四个全面”对职业教育的战略要求，把加快发展现代职业教育作为构建科学合理教育结构的重要突破口和切入点，爬上“质量坡”、越过“结构坎”，推进依法治教、深化综合改革，整体提升我国人力资本素质，更好地适应转变发展方式要求、契合产业升级需求，更好地提升全民就业创业能力、促进社会公平。　 ', 'http://www.xinhuanet.com/titlepic/112274/1122740342_1524629417741_title0h.jpg', '13', '1', '1');
INSERT INTO `information` VALUES ('65', '教育部：鼓励各地全部取消地方性高考加分项目', '昨天，教育部高校学生司司长王建国、副司长王辉就高招新规与网友在线交流时表示，大幅减少地方性加分项目是这次改革的重点，“文件虽然没提出具体量化指标，但原则是从紧从严，鼓励各地全部取消地方性加分项目”。\r\n\r\n　　教育部一口气取消了了重大体育比赛获奖者、二级运动员统测合格者、省级优秀学生、奥赛获奖者等6项全国性加分项目，不少网友质疑一刀切的方式是否过于简单粗暴。王辉表示，取消加分项目的同时，继续通过其他方式鼓励学生兴趣特长发展，如体育特长生可报考高水平运动队或运动训练，艺术特长生可报考高校艺术团或相关艺术类专业。考生相关特长记入学生综合素质档案或考生档案，供高校录取时参考。\r\n\r\n　　有网友提出在某些省份农村独生女孩可以省份内加分投档。王建国回应称，大幅减少地方性加分项目是改革重点，确有必要保留的，应合理设置加分分值，由省级政府确定并报教育部备案，原则上只适用于本省份所属高校的省份内招生。王辉补充说，文件虽没提出具体量化指标，但原则是从紧从严，调整规范高考(课程)加分实施方案将于2015年1月底前报教育部备案后向社会公布实施。(记者郭莹)', 'http://www.xinhuanet.com/titlepic/112273/1122738693_1524619833812_title0h.jpg', '13', '1', '1');
INSERT INTO `information` VALUES ('66', '中国“芯”弯道超车要逆袭了？专家这样说', '原标题：弯车超道，中国“芯”要逆袭了？看完，终于理解它有多重要了…\r\n\r\n　　4月23号，中共中央政治局召开会议，分析研究当前一系列经济工作形势，并且强调完成今年的目标任务，需要付出艰苦努力，关键是要同高质量发展的要求对表，对得上的加紧推，对不上的要及时改。到底什么样的发展和趋势，在企业层面、政府层面，能够对得上高质量发展的标准呢？\r\n\r\n　　昨晚（24日晚），《央视财经评论》对目前我们中国经济发展当中，还存有的结构性和深层次的问题，该如何突破，进行了深度解析。\r\n\r\n　　为期三天的数字中国建设峰会，集中展示了中国信息化建设的成果，也向普通市民展示了最前沿用的数字产品，在峰会举办期间多场论坛上，议会嘉宾表示，目前中国最需要加强的是，未来信息化建设核心技术的突破，而在这一过程中，我们的信息化建设也正在从以前的网民数量、点击率、利润和收入，进入到全面建立核心技术和知识产权上的一种转型，这一转型过程中，未来中国互联网的龙头企业，则需要有大企业的担当，而中小企业也需要加强自主技术的创新，利用人工智能等技术，实现中国信息化建设的弯道，或者是换道超车。', 'image/zjiaodian2.jpg', '4', '1', '1');
INSERT INTO `information` VALUES ('67', '教育部连发两文件规范高考加分 招生改革再出实招', '中新社北京12月18日电 (记者 马海燕)正在准备“华约”自主招生考试的北京高三学生李红(化名)突然解放了：往年这个时候即将开始的自主招生考试突然被取消了。为了拿到梦想中的清华大学的高考(课程)加分，李红已准备了近一年。\r\n\r\n　　中国教育部17日连发两个关于招生考试的文件：《关于进一步完善和规范高校自主招生试点工作的意见》、《关于进一步减少和规范高考加分项目和分值的意见》，均针对诟病颇多的高考加分进行规范。这是今年9月继《关于深化考试招生制度改革的实施意见》后关于高考招生的两个重要文件，受到各方关注。\r\n\r\n　　前者规定，2015年起，所有试点高校自主招生考核统一安排在高考结束后、高考成绩公布前进行。同时规定不得采用高校联考方式，不组织专门培训等。\r\n\r\n　　后者规定，自明年1月1日起，取消重大体育比赛获奖者、二级运动员统测合格者、省级优秀学生、思想政治品德突出事迹者、奥赛获奖者、科技类竞赛获奖者等6项全国性加分项目。\r\n\r\n　　取消奥赛、体育、德育等五花八门的获奖加分获得一致好评。一个学校几十名二级运动员、几十名航模获奖者的报道近年来不断见诸媒体，由此带来的“以权加分”、“以钱买分”等屡受社会批评，学生家长对取消各类加分几乎持“一边倒”的支持态度。\r\n\r\n　　而自主招生涉及的学生群体更大，考试规范程度受到的关注度也更高。每年都有数十万像李红这样的重点中学里的优秀高三学生为一些重点大学的自主招生考试提前备战，争取10分到60分不等的加分机会。拿到了加分就意味着增加了进名校的砝码，因此，自主招生考试也被称为“小高考”。\r\n\r\n　　本来为推动高招改革而设立的自主招生政策始于2003年，目前共90所高校参与，招生人数约占试点高校招生总数的5%。但随之而来的是“掐尖”抢生源问题日益突出，逐渐形成了以北京大学领头的“北约”、以清华大学为首的“华约”和以多家理工大学结盟的“卓越”等笔试联盟，同一时间考试，考试难度越来越刁钻，让学生不得不在高考前就面临痛苦的选择。\r\n\r\n　　同时，关于自主招生的暗箱操作问题更是受到非议。去年底中国人民大学招生就业处原处长蔡荣生涉嫌招生贪腐案发，更是把自主招生推到风口浪尖，到底该赋予学校多大的招生自主权引发社会讨论。', 'http://education.news.cn/titlepic/112272/1122724964_1524445653892_title0h.jpg', '13', '1', '1');
INSERT INTO `information` VALUES ('68', '奇葩', '奇葩中的战斗机', 'https://gss2.bdstatic.com/9fo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike92%2C5%2C5%2C92%2C30/sign=9d4b6119a6345982d187edc06d9d5ac8/7c1ed21b0ef41bd5a7f81d995ada81cb39db3d37.jpg', '12', '25', '1');
INSERT INTO `information` VALUES ('69', '关于做好2016年下半年海南省自学考试毕业申报工作的通知', '各市、县自考办，各助学单位：\r\n\r\n      2016年下半年全国高等教育自学考试的成绩已公布。为了做好2016年下半年我省高等教育自学考试毕业生的审核工作，现将毕业申报的有关事项通知如下：\r\n\r\n      1、按照全国考办的规定，考生需考完所申请毕业专业规定的所有课程（包括实践考核）并且合格才能申请毕业。\r\n\r\n      2、申请毕业的考生要认真填写毕业生登记表（一式二份）中的有关内容，申请本科毕业的，须提交专科毕业证原件、复印件和网上打印的专科毕业证备案登记表或《教育部学历证书电子注册备案表》，而且要在毕业生名册上注明考生的专科毕业学校。\r\n\r\n      3、按不同专业分页填写毕业生登记名册(一式两份)，单位盖章、负责人签名。\r\n\r\n      4、转考的考生要有省级自考办开具的转考证明，有免考课程的考生要有经省考办批准的免考审批表。\r\n\r\n      5、考生信息（姓名、身份证号等）如有误需要更正的，必须附上相关有效的证明材料（原件及复印件）。\r\n\r\n      6、各市县自考办及各助学单位自考办应本着认真、负责、公平、公正的原则，指导考生填写《毕业生登记表》，认真填写《毕业生登记名册》，检查所有上报材料填写的内容是否正确，特别是合格科目的成绩和考试时间，并在考生登记表的市县审核人一栏中签名。对所上报的所有毕业生材料逐一进行初审，保证材料的真实性、可靠性。如上报的材料有误，或漏填写、漏送而造成无法审核的，将由市县自考办负责，省自考办不再接收补送材料。', 'http://www.xinhuanet.com/photo/2018-04/22/1122723505_15244028905511n.jpg', '10', '1', '1');
INSERT INTO `information` VALUES ('70', '加拿大参院通过涉南海动议 中方回应', '[环球网综合报道]4月24日，加拿大参议院投票通过加参议员吴清海提出的涉南海问题动议。中国驻加使馆发言人对此评论如下：\r\n\r\n　　当前，在中国和东盟国家的共同努力下，南海形势降温趋缓，日益向好。各方聚焦合作，全面、有效落实《南海各方行为宣言》，积极推进“南海行为准则”磋商，共同致力于维护南海和平稳定。这一发展既是大势所趋，更是人心所向。但是，一些外部势力对南海风平浪静心有不甘，总想兴风作浪，挑动是非，破坏来之不易的南海和平稳定局面，破坏地区国家友好合作关系。\r\n\r\n　　加拿大不是南海问题当事国。有关人士并不了解南海问题经纬，打着尊重国际法和维护航行飞越自由的幌子对中国妄加指责，企图把加拿大拖下浑水，这是不负责任的。其目的不过就是对当前发展顺利的中加关系投下阴影。但这是徒劳的，并终将失败。', 'image/zjiaodian3.jpg', '4', '1', '1');
INSERT INTO `information` VALUES ('71', '“美国优先”现意外结果 印媒:中印日建密切关系', '参考消息网4月25日报道 印媒称，特朗普总统任期内的“美国优先”做法，再加之不断增加的保护主义，产生了意料之外的结果，促使亚洲向内部转移重心，寻求新的供应链和市场。亚洲三大支柱——中国、日本和印度——似乎迅速适应了后美国世界秩序的可能性。\r\n\r\n　　《印度教徒报》网站4月24日刊登题为《亚洲连锁反应》的报道称，亚洲无疑正在全球最大和第二大经济体之间寻求“新的平衡”。因此，印度重新调整与中国的关系应该放在北京和全球第三大经济体日本重新调整关系的更广泛的亚洲调整背景下考虑。\r\n\r\n　　报道称，特朗普对日本钢铁和铝施加关税之后，中日战略经济对话迅速重新开启。值得注意的是，面对新情况，中国和日本都没有执着于传统的零和均势游戏。\r\n\r\n　　报道称，中国与美国的“贸易战争”蓄势待发。中国要想进一步发展，需要与日本、韩国和印度等本地区国家进行稳定合作，还需要《区域全面经济伙伴关系协定》这样的自由贸易协定。印度随时准备与中国达成新的地缘经济关系，再加上东京与北京加强接触，一个密切合作的多极化亚洲将得以建立。（编译/魏晓慧）', 'image/zjiaodian4.jpg', '4', '1', '1');
INSERT INTO `information` VALUES ('72', '五道口职业技术学院', '简单介绍一下，五道口职业技术学院即清华大学', 'http://www.xdzyjy.cn/bianji/attached/image/20160422/20160422154750205020.png', '18', '1', '1');
INSERT INTO `information` VALUES ('88', '1111;', '<p>1</p>', 'information/', '6', '2018-05-04 19:13', '0');

-- ----------------------------
-- Table structure for infotemp
-- ----------------------------
DROP TABLE IF EXISTS `infotemp`;
CREATE TABLE `infotemp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` text NOT NULL,
  `infotag` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of infotemp
-- ----------------------------
INSERT INTO `infotemp` VALUES ('1', '1', '1');
INSERT INTO `infotemp` VALUES ('2', '1', '18');

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentid` varchar(30) NOT NULL,
  `url` text NOT NULL,
  `date` varchar(50) NOT NULL,
  `statement` varchar(100) NOT NULL,
  `isvideo` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_photo` (`studentid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES ('1', '1', 'https://weibo.com/ttarticle/p/show?id=2309614198968505588983', '20180109', '这是一张图片', '0');

-- ----------------------------
-- Table structure for ppqa
-- ----------------------------
DROP TABLE IF EXISTS `ppqa`;
CREATE TABLE `ppqa` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `question1` varchar(20) DEFAULT NULL,
  `answer1` varchar(20) DEFAULT NULL,
  `question2` varchar(20) DEFAULT NULL,
  `answer2` varchar(20) DEFAULT NULL,
  `question3` varchar(20) DEFAULT NULL,
  `answer3` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ppqa
-- ----------------------------
INSERT INTO `ppqa` VALUES ('2', '12345@qq.com', '1', '1', '1', '1', '1', '1');
INSERT INTO `ppqa` VALUES ('3', '123@qq.com', '我是谁', '我', '你是谁', '你', '他是谁', '他');
INSERT INTO `ppqa` VALUES ('4', '1234@qq.com', '1', '1', '2', '2', '3', '3');
INSERT INTO `ppqa` VALUES ('5', '111222333@qq.com', '1', '1', '2', '2', '3', '3');
INSERT INTO `ppqa` VALUES ('6', '11223344@qq.com', '我是谁', '1', '你是谁', '2', '他是谁', '3');
INSERT INTO `ppqa` VALUES ('7', '1122@qq.com', '1', '1', '2', '2', '3', '3');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentid` varchar(50) NOT NULL,
  `employid` int(11) NOT NULL,
  `resume` text NOT NULL,
  `date` varchar(50) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `ename` varchar(100) NOT NULL,
  `resumeid` int(11) NOT NULL,
  `enid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('1', '163@88', '2', 'resume/163@88.doc', '2018-05-04 10:21', 'zsq', '董明珠“格力空调“', '16', '1');
INSERT INTO `record` VALUES ('2', '163@88', '1', 'resume/163@88.doc', '2018-05-04 10:21', 'zsq', '格力小企业', '16', '6');
INSERT INTO `record` VALUES ('5', '163@88', '3', 'resume/163@88.doc', '2018-05-04 11:00', 'zsq', '北京邮电大学校外企业', '16', '5');

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentid` varchar(30) NOT NULL,
  `date` varchar(50) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resume
-- ----------------------------
INSERT INTO `resume` VALUES ('16', '163@88', '2018-05-03 16:21', 'resume/163@88.doc');

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `id` varchar(30) NOT NULL,
  `name` varchar(300) NOT NULL,
  `icon` text NOT NULL,
  `descs` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('1', '北京大学', 'image/zsqbeijingdaxue.png', '北京大学，简称“北大”，诞生于1898年，初名京师大学堂，是中国近代第一所国立大学，也是最早以“大学”之名创办的学校，其成立标志着中国近代高等教育的开端。北大是中国近代以来唯一以国家最高学府身份创立的学校，最初也是国家最高教育行政机关，行使教育部职能，统管全国教育。北大催生了中国最早的现代学制，开创了中国最早的文科、理科、社科、农科、医科等大学学科，是近代以来中国高等教育的奠基者。 [1] \r\n1912年5月3日，京师大学堂改称北京大学校，严复为首任校长 [2]  。1916年，蔡元培出任校长，“循思想自由原则、取兼容并包之义”，把北大办成全国学术和思想中心，使北大成为新文化运动中心、五四运动策源地。1937年抗日战争爆发，北大与清华大学、南开大学南迁长沙，组成国立长沙临时大学。不久迁往昆明，改称国立西南联合大学。1946年10月在北平复学 [1]  。1952年院系调整，校园从内城沙滩红楼迁至西北郊燕园。 [3-4] \r\n北大由教育部直属，中央直管副部级建制，是国家双一流 [5]  、211工程、985工程 [1]  、2011计划重点建设的全国重点大学，九校联盟 [6]  、中国大学校长联谊会、京港大学联盟 [7]  、亚洲大学联盟 [8]  、东亚研究型大学协会、国际研究型大学联盟、环太平洋大学联盟、东亚四大学论坛、国际公立大学论坛、中俄综合性大学联盟重要成员。 [9-12] \r\n北大始终与国家民族的命运紧密相连，聚集了许多学者专家，培养了众多优秀人才，创造了大批重大科学成果，影响和推动了中国近现代思想理论、科学技术、文化教育和社会发展的进程。');
INSERT INTO `school` VALUES ('10', '吉林大学', 'image/zjilin.jpg', '吉林大学（Jilin University），简称吉大，位于吉林省长春市，始建于1946年，是中华人民共和国教育部直属的综合性全国重点大学，国家“双一流”、“211工程”、“985工程”、“2011计划”重点建设的著名学府，入选“珠峰计划”、“111计划”、“卓越法律人才教育培养计划”、“卓越工程师教育培养计划”、“卓越医生教育培养计划”、“卓越农林人才教育培养计划”，是亚太国际教育协会、21世纪学术联盟、中俄交通大学联盟的重要成员。 [1-2] \r\n学校前身是创办于1946年的东北行政学院，1950年更名为东北人民大学；1952年经院系调整成为中国共产党亲手创建的第一所综合性大学；1958年更名为吉林大学；1960年，吉林大学被国务院列为国家重点大学；2000年6月12日，合并吉林工业大学、白求恩医科大学、长春科技大学等6所院校组建新的吉林大学。 [3] \r\n吉林大学开设本科专业124个，有一级学科硕士学位授权点59个，一级学科博士学位授权点44个；有全日制学生69196人，其中研究生24202人，留学生1404人。学校有材料科学、物理学、化学、工程学、地球科学、临床医学、生物学与生物化学等7个学科的ESI排名进入全球前1%，15个学科在教育部第三轮学科评估中进入全国前十。\r\n作为中国目前办学规模最大的高等学府，吉林大学涵盖全部13大学科门类，成为在国家和区域经济社会发展中具有重要地位的高素质创新人才培养、高水平科学研究和成果转化、高质量社会服务、先进文化引领的重要基地。');
INSERT INTO `school` VALUES ('11', '华中科技大学', 'image/zhuazhongkeji.jpg', '华中科技大学（Huazhong University of Science and Technology），简称“华中大”，由原华中理工大学（前身为1952年建立的华中工学院）、同济医科大学（前身为1907年建立的上海德文医学堂）、武汉城市建设学院（前身为1898年建立的湖北工艺学堂）于2000年5月26日合并成立。\r\n华中大是中华人民共和国教育部直属的综合性研究型全国重点大学，中央直管副部级高校，国家首批“双一流”、“985工程”、“211工程”、“2011计划”重点建设高校，“卓越工程师教育培养计划”、“卓越医生教育培养计划”、“111计划”、“海外高层次人才引进计划”、“国家建设高水平大学公派研究生项目”、“教育部来华留学示范基地”入选高校，是21世纪学术联盟、中俄工科大学联盟、中欧工程教育平台、七校联合办学、国家海外高层次人才创新创业基地成员，与国家卫生和计划生育委员会共建医学院，是拥有国家实验室和国家大科学中心的四所大学之一，是与清华大学一同被美国制造工程师协会（SME）授予“大学领先奖”的两所中国大学之一。入选《Nature》评出的“中国十大科研机构”，被称作“新中国高等教育发展的缩影”。\r\n截至2017年12月， 学校校园占地7000余亩。有一级学科国家重点学科7个，二级学科国家重点学科15个，国家重点（培育）学科7个。在教育部第三轮学科评估中，3个一级学科国内排名第一，5个一级学科国内排名前三，8个一级学科国内排名前五，17个一级学科国内排名前十。15个学科领域保持在ESI全球前1%。');
INSERT INTO `school` VALUES ('12', '四川大学', 'image/zsichuan.jpg', '四川大学（Sichuan University）简称“川大”，由中华人民共和国教育部直属，中央直管副部级建制，国家“双一流”A类世界一流大学，“985工程”、“211工程”重点建设的高水平综合性全国重点大学，入选“2011计划”、“珠峰计划”、“111计划”、“卓越工程师教育培养计划”、“卓越医生教育培养计划”、“海外高层次人才引进计划”，拥有研究生院和研究生自主划线资格。\r\n四川大学由原四川大学、原成都科技大学、原华西医科大学三所全国重点大学经过两次合并而成。原四川大学起始于1896年四川总督鹿传霖奉光绪特旨创办的四川中西学堂，是西南地区最早的近代高等学校；原成都科技大学是新中国院系调整时组建的第一批多科型工科院校；原华西医科大学源于1910年由西方基督教会组织在成都创办的华西协合大学，是西南地区最早的西式大学和中国最早培养研究生的大学之一。1994年，原四川大学和原成都科技大学合并为四川联合大学，1998年更名为四川大学。2000年，四川大学与原华西医科大学合并，组建了新的四川大学。\r\n四川大学先后汇聚了历史学家顾颉刚、文学家李劼人、美学家朱光潜、物理学家吴大猷、植物学家方文培、卫生学家陈志潜、数学家柯召等大师。历史上，吴玉章、张澜曾执掌校务，共和国开国元勋朱德、共和国主席杨尚昆、文坛巨匠郭沫若、人民作家巴金、一代英烈江竹筠（江姐）等曾在川大求学。两院院士中，有50余位是川大校友；2001年评选的近代50位“四川文化名人”中，有36人是川大校友。 [1-4] ');
INSERT INTO `school` VALUES ('13', '厦门大学', 'image/zxiamen.png', '厦门大学（Xiamen University），简称厦大（XMU），由著名爱国华侨领袖陈嘉庚先生于1921年创办，是中国近代教育史上第一所华侨创办的大学，是国内最早招收研究生的大学之一，被誉为“南方之强” [1]  。\r\n学校是中华人民共和国教育部直属的副部级大学，教育部、福建省和厦门市共建高校 [2]  ，是世界一流大学建设高校、国家“2011计划”牵头高校，入选“211工程”、“985工程”，、“111计划”、“珠峰计划”、“卓越工程师教育培养计划”、“卓越法律人才教育培养计划”、“卓越医生教育培养计划”、“海外高层次人才引进计划”、“国家建设高水平大学公派研究生项目”、“中国政府奖学金来华留学生接收院校” [3]  。\r\n截至2017年3月，学校占地9000多亩，校舍建筑总面积210多万平方米，图书馆馆藏纸质图书总量410多万册，固定资产总值91亿元，仪器设备总值28亿元；拥有8家附属医院，设有6个学部以及28个学院（含76个系）和14个研究院，有31个博士学位授权一级学科，50个硕士学位授权一级学科；有专任教师2718人，在校学生近40000余人，其中硕士研究生16390人，博士研究生3229人 [4]  。');
INSERT INTO `school` VALUES ('2', '清华大学', 'image/zqinghua.png', '清华大学（Tsinghua University），简称“清华”，由中华人民共和国教育部直属，中央直管副部级建制，位列“211工程”、“985工程”、“世界一流大学和一流学科”，入选“基础学科拔尖学生培养试验计划”、“高等学校创新能力提升计划”、“高等学校学科创新引智计划”，为九校联盟、中国大学校长联谊会、东亚研究型大学协会、亚洲大学联盟、环太平洋大学联盟、清华—剑桥—MIT低碳大学联盟成员，被誉为“红色工程师的摇篮”。\r\n清华大学的前身清华学堂始建于1911年，因水木清华而得名，是清政府设立的留美预备学校，其建校的资金源于1908年美国退还的部分庚子赔款。1912年更名为清华学校。1928年更名为国立清华大学。1937年抗日战争全面爆发后南迁长沙，与北京大学、南开大学组建国立长沙临时大学，1938年迁至昆明改名为国立西南联合大学。1946年迁回清华园。1949年中华人民共和国成立，清华大学进入了新的发展阶段。1952年全国高等学校院系调整后成为多科性工业大学。1978年以来逐步恢复和发展为综合性的研究型大学。\r\n水木清华，钟灵毓秀，清华大学秉持“自强不息、厚德载物”的校训和“行胜于言”的校风，坚持“中西融汇、古今贯通、文理渗透”的办学风格和“又红又专、全面发展”的培养特色，弘扬“爱国奉献、追求卓越”传统和“人文日新”精神。恰如清华园工字厅内对联所书——“槛外山光，历春夏秋冬、万千变幻，都非凡境；窗中云影，任东西南北、去来澹荡，洵是仙居”。 [1] ');
INSERT INTO `school` VALUES ('4', '武汉大学', 'image/zwuhan.jpg', '武汉大学（Wuhan University），简称“武大”，是一所位于湖北武汉市的中国重点综合研究型大学，其办学源头溯源于清朝末期1893年湖广总督张之洞奏请清政府创办的自强学堂，是近代中国建立最早的国立大学，已有一百多年历史。1913年为六大国立高师之一的国立武昌高等师范学校， 1926年更名为国立第二中山大学，1928年定名国立武汉大学，是民国四大名校之一。1949年更名武汉大学沿用至今。\r\n武汉大学是教育部直属的副部级全国重点大学，国家首批“双一流”A类、“985工程”、“211工程”、“2011计划”重点建设高校，同时是“111计划”、“珠峰计划”、“千人计划”、“卓越计划”等重点建设的中国顶尖名牌大学，是与法国高校联系最紧密、合作最广泛的中国高校，是世界权威期刊《Science》列出的“中国最杰出的大学”之一。\r\n武汉大学是中国著名的风景游览地，为国家5A级旅游景区东湖风景区的组成部分。学校坐拥珞珈山，环绕东湖水，占地面积5187亩，建筑面积262万平方米。作为中国最古老的大学之一，其中西合璧的宫殿式建筑群古朴典雅，巍峨壮观，堪称近现代中国大学校园建筑的佳作与典范，被称为中国最美丽的大学校园。武大樱花约在每年3月下旬开放。\r\n截至2015年9月，武汉大学在校学生总计57886人。 [1-3]  在教育部第三轮学科评估中，武汉大学4个一级学科排名全国第一，总数排名全国第6；9个学科排名全国前三、14个一级学科排名全国前五、23个一级学科排名全国前十。11个学科领域进入ESI排行世界前1%。 [4] ');
INSERT INTO `school` VALUES ('6', '复旦大学', 'image/zfudan.jpg', '复旦大学（Fudan University），简称“复旦”，位于中国上海，由中华人民共和国教育部直属，中央直管副部级建制，位列985工程、211工程、双一流A类，入选“珠峰计划”、“111计划”、“2011计划”、“卓越医生教育培养计划”，为“九校联盟”（C9）、中国大学校长联谊会、东亚研究型大学协会、环太平洋大学协会的重要成员，是一所世界知名、国内顶尖的全国重点大学。 [1-2] \r\n复旦大学创建于1905年，原名复旦公学，是中国人自主创办的第一所高等院校，创始人为中国近代知名教育家马相伯，首任校董为国父孙中山。校名“复旦”二字选自《尚书大传·虞夏传》名句“日月光华，旦复旦兮”，意在自强不息，寄托当时中国知识分子自主办学、教育强国的希望。1917年复旦公学改名为私立复旦大学；1937年抗战爆发后，学校内迁重庆北碚，并于1941年改为“国立”；1946年迁回上海江湾原址；1952年全国高等学校院系调整后，复旦大学成为以文理科为基础的综合性大学；1959年成为全国重点大学。2000年，原复旦大学与原上海医科大学合并成新的复旦大学。截至2017年5月，学校占地面积244.99万平方米，建筑面积200.20万平方米。\r\n复旦师生谨记“博学而笃志，切问而近思”的校训，严守“文明、健康、团结、奋发”的校风，力行“刻苦、严谨、求实、创新”的学风，发扬“爱国奉献、学术独立、海纳百川、追求卓越”的复旦精神，以服务国家为己任，以培养人才为根本，以改革开放为动力，为实现中国梦作出新贡献。 [3] ');
INSERT INTO `school` VALUES ('7', '浙江大学', 'image/zzhejiang.png', '浙江大学（Zhejiang University），简称“浙大”，坐落于“人间天堂”杭州。前身是1897年创建的求是书院，是中国人自己最早创办的新式高等学校之一。1928年定名为浙江大学。国民党执政时期，浙江大学在竺可桢老校长的带领下，崛起为中华民国最高学府之一，被英国科学史家李约瑟誉为“东方剑桥”，迎来了浙大百年校史中最辉煌的时期。竺可桢老校长因其历史贡献，成为了浙大校史中最伟大的人，并为浙大确立了“求是”校训和文言文《浙江大学校歌》。\r\n浙江大学由中华人民共和国教育部直属、中央直管（副部级建制），是中国著名顶级学府之一，中国“学科最齐全”、“学生创业率最高”的大学，位列国家首批“211工程”、“985工程”、“双一流”A类重点建设的高校，为九校联盟（C9）、环太平洋大学联盟、世界大学联盟、中国大学校长联谊会的重要成员，是入选“珠峰计划”、“2011计划”、“111计划”、“卓越法律人才教育培养计划”、“卓越工程师教育培养计划”、“卓越医生教育培养计划”、“卓越农林人才教育培养计划”的全国重点大学。 [1-6] \r\n截至2017年底，全日制在校学生53673人，其中硕士研究生18048人，博士研究生10747人；留学生6843人，有教职工8657人，教师中有中国科学院院士21人、中国工程院院士20人。\r\n据ESI公布的数据，截至2018年3月，学校18个学科进入世界学术机构前1%，7个学科进入ESI前100位，均居全国高校第二；8个学科进入前1‰，5个学科进入ESI前50位，均居全国高校第一。');
INSERT INTO `school` VALUES ('8', '上海大学', 'image/zshanghai.png', '上海大学（Shanghai University），简称“上大”，是上海市属、国家“211工程”重点建设的综合性大学，国家教育部、国家国防科技工业局与上海市人民政府共建高校，国家“双一流”世界一流学科建设高校，全国首批博士和硕士学位授予单位，入选“教育部来华留学示范基地”，“卓越工程师教育培养计划”、“卓越新闻传播人才教育培养计划”、“国家建设高水平大学公派研究生项目”、“111计划”、“上海高水平地方高校建设计划”。\r\n1922年10月，国共合作曾创建了上海大学，时任校长于右任，这是一所革命学校，1927年被国民党当局强行关闭。1994年5月，上海科学技术大学（成立于1958年）、上海工业大学（成立于1960年）、上海大学（成立于1983年）、上海科技高等专科学校（成立于1959年）合并组建为新的上海大学。\r\n钱伟长院士于1983年出任上海工业大学校长，1994年至2010年担任新上海大学校长，在国内率先建立了以“三制”（学分制、选课制和三学期制）为核心的培养模式。学校与中国科学院长三角地区研究院所、中国社会科学院等单位开展全面合作。2017年，上海大学在QS全球建校50年以下大学排名中列世界前60名、中国大陆第1名；在QS世界大学排名中列中国大陆第15名；在USNews世界大学排名中列中国大陆第31名。\r\n截至2017年10月，学校设有宝山校区（校本部）、延长校区、嘉定校区3个校区，占地面积近3000亩，建筑面积139万平方米；有研究生14987人，全日制本科生20652人、专科生41人，成教生18507人。');
INSERT INTO `school` VALUES ('88', '北京邮电大学', 'image/zbeijingyoudian.jpg', '北京邮电大学（Beijing University of Posts and Telecommunications），简称北邮，是中华人民共和国教育部直属，工业和信息化部共建的一所以信息科技为特色，工学门类为主体，管理学、文学、理学等多个学科门类协调发展的全国重点大学，是北京高科大学联盟成员高校 [1]  、国家首批“双一流”世界一流学科建设高校 [2]  。系国家“211工程”、“985工程优势学科创新平台”项目重点建设，列入首批“卓越工程师教育培养计划”、“111计划”。被誉为“中国信息科技人才的摇篮”。 [3] \r\n前身是1955年成立的新中国第一所邮电高等学府——北京邮电学院。1960年被国务院确定为全国重点高校。 1993年更名为“北京邮电大学”。2000年，划入教育部直属高校行列。2012年，信息与通信工程一级学科全国排名第一。 [4] \r\n据2017年10月学校官网显示，学校设有19个教学单位，3个研究院。学科专业已经覆盖理学、工学、经济学、管理学等9个学科门类，涉及22个一级学科。学校现有西土城路校区、沙河校区、宏福校区和延庆世纪学院校区，在江苏无锡和广东深圳分别设有研究院。全日制本、硕、博学生及留学生近30000名，正式注册的非全日制学生近45000名。');
INSERT INTO `school` VALUES ('9', '中国人民大学', 'image/zzhongguorenda.png', '中国人民大学（Renmin University of China），简称“人大” [1]  ，由教育部直属 [2]  ，教育部与北京市共建，中央直管副部级建制，位列“双一流” [3]  、“211工程”、“985工程”，入选“111计划”、“2011计划”、“卓越法律人才教育培养计划”、“卓越农林人才教育培养计划”、“海外高层次人才引进计划”、“中国政府奖学金来华留学生接收院校”，为世界大学联盟、亚太国际教育协会、京港大学联盟成员，是一所以人文社会科学为主的综合性研究型全国重点大学。 [4-7] \r\n中国人民大学前身是1937年成立的陕北公学，以及后来的华北联合大学和华北大学。1949年12月16日，中央人民政府政务院通过了《关于成立中国人民大学的决定》。1950年10月3日，以华北大学为基础合并组建的中国人民大学正式开学，成为新中国创办的第一所新型正规大学。1954年，被确定为以社会科学为主的综合大学和首批全国重点大学；1960年，被确定为综合性全国重点大学；2001年，入选“985工程”。 [1] \r\n据2017年4月学校官网信息显示，中国人民大学占地面积230余万平方米，设有中关村校区、通州校区（东校区，在建）、苏州校区、深圳研究院、深圳校区（在建）； [1]  [8-10]  教学科研仪器设备值7.44亿元； [11]  馆藏纸质图书392万册、电子图书297万种；下设5个学部、26个教学单位、81个本科专业；有专任教师1846人、全日制在校生24778人。');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `studentid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `major` varchar(50) NOT NULL,
  `avatar` text NOT NULL,
  PRIMARY KEY (`studentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('163@88', 'zsq', '1234', '1', '1', '1', 'avatar/20180601095007354.jpg');
INSERT INTO `student` VALUES ('1@1', 'yrl', '1234', '1', '1', '1', 'avatar/20180601095256085.jpg');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('2', '联合会');
INSERT INTO `type` VALUES ('3', '新闻');
INSERT INTO `type` VALUES ('4', '焦点');
INSERT INTO `type` VALUES ('5', '视频专题');
INSERT INTO `type` VALUES ('6', '人物访谈');
INSERT INTO `type` VALUES ('7', '招生');
INSERT INTO `type` VALUES ('8', '创业');
INSERT INTO `type` VALUES ('9', '培训认证');
INSERT INTO `type` VALUES ('10', '继续教育');
INSERT INTO `type` VALUES ('11', '职场风华');
INSERT INTO `type` VALUES ('12', '职校奇苑');
INSERT INTO `type` VALUES ('13', '政策法规');
INSERT INTO `type` VALUES ('14', '国际交流');
INSERT INTO `type` VALUES ('15', '网站服务');
INSERT INTO `type` VALUES ('16', '关于我们');
INSERT INTO `type` VALUES ('17', '院校');
INSERT INTO `type` VALUES ('18', '企业');

-- ----------------------------
-- Table structure for word
-- ----------------------------
DROP TABLE IF EXISTS `word`;
CREATE TABLE `word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(50) NOT NULL,
  `studentid` varchar(30) NOT NULL,
  `blogid` int(11) NOT NULL,
  `content` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `avatar` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_comment` (`blogid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of word
-- ----------------------------
INSERT INTO `word` VALUES ('1', '1', '1', '1', '123', '111', '111');
