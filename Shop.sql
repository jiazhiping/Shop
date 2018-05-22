/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50157
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50157
File Encoding         : 65001

Date: 2015-05-18 01:33:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `AdminType` int(11) DEFAULT NULL,
  `AdminName` varchar(50) DEFAULT NULL,
  `LoginName` varchar(12) DEFAULT NULL,
  `LoginPwd` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `AdminType` (`AdminType`),
  CONSTRAINT `tb_admin_ibfk_1` FOREIGN KEY (`AdminType`) REFERENCES `tb_admintype` (`adminTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', '1', '商品管理员', 'admin1', 'admin1');
INSERT INTO `tb_admin` VALUES ('2', '2', '订单管理员', 'admin2', 'admin2');
INSERT INTO `tb_admin` VALUES ('3', '3', '会员管理员', 'admin3', 'admin3');
INSERT INTO `tb_admin` VALUES ('4', '4', '系统管理员', 'admin4', 'admin4');

-- ----------------------------
-- Table structure for tb_admintype
-- ----------------------------
DROP TABLE IF EXISTS `tb_admintype`;
CREATE TABLE `tb_admintype` (
  `adminTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `adminTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`adminTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admintype
-- ----------------------------
INSERT INTO `tb_admintype` VALUES ('1', '商品管理员');
INSERT INTO `tb_admintype` VALUES ('2', '订单管理员');
INSERT INTO `tb_admintype` VALUES ('3', '会员管理员');
INSERT INTO `tb_admintype` VALUES ('4', '系统管理员');

-- ----------------------------
-- Table structure for tb_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `bookId` int(11) NOT NULL AUTO_INCREMENT,
  `superTypeId` int(11) DEFAULT NULL,
  `subTypeId` int(11) DEFAULT NULL,
  `goodsName` varchar(200) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `introduce` text,
  `price` float DEFAULT NULL,
  `nowPrice` float DEFAULT NULL,
  `picture` varchar(200) DEFAULT NULL,
  `produceDate` varchar(20) DEFAULT NULL,
  `publisher` varchar(40) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `inTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `newgoods` int(11) DEFAULT NULL,
  `salegoods` int(11) DEFAULT NULL,
  `hostgoods` int(11) DEFAULT NULL,
  `specialgoods` int(11) DEFAULT NULL,
  `goodsNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookId`),
  KEY `subTypeId` (`subTypeId`),
  KEY `superTypeId` (`superTypeId`),
  CONSTRAINT `tb_goods_ibfk_1` FOREIGN KEY (`subTypeId`) REFERENCES `tb_subtype` (`subTypeId`),
  CONSTRAINT `tb_goods_ibfk_2` FOREIGN KEY (`superTypeId`) REFERENCES `tb_supertype` (`superTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES ('102', '11', '98', '发言席专用盆花', 'SW-FYXBH-1', '发言席必备鲜花。百合沁人心脾', '128', '108', 'images/big_03.jpg', '2015/05/09', '云南昆明', '百合花', '2015-05-18 01:13:52', '1', '0', '0', '0', '255');
INSERT INTO `tb_goods` VALUES ('103', '11', '100', '红掌', 'SW-HCZSH-1', '会场装饰红掌。', '68', '58', 'images/swhz.jpg', '2015/05/09', '江苏', '红掌', '2015-05-18 01:13:53', '0', '0', '0', '1', '664');
INSERT INTO `tb_goods` VALUES ('104', '11', '99', '会场大盆花', 'SW-HYDPH-1', '会场专用。', '228', '200', 'images/t069.jpg', '2015/05/09', '江苏', '组合花', '2015-05-18 01:13:54', '0', '0', '0', '1', '555');
INSERT INTO `tb_goods` VALUES ('105', '11', '100', '粉掌', 'SW-HCZSH-2', '会场装饰花，粉掌。', '59', '38', 'images/20120113204703617.jpg', '2015/05/09', '云南', '粉掌', '2015-05-18 01:14:29', '0', '1', '0', '0', '333');
INSERT INTO `tb_goods` VALUES ('106', '12', '103', '手工装饰花瓶', 'CY-DIYZZ-1', '创意鲜花，花瓶。', '39', '28', 'images/big_013.jpg', '2015/05/09', '江苏', '创意工坊', '2015-05-18 01:14:30', '0', '1', '0', '0', '589');
INSERT INTO `tb_goods` VALUES ('107', '13', '101', '巧克力捧花', 'FZ-QKLH-1', '巧克力捧花，实用可吃。', '188', '168', 'images/big_01.jpg', '2015/05/09', '上海', '仿真之家', '2015-05-18 01:14:30', '1', '0', '0', '0', '534');
INSERT INTO `tb_goods` VALUES ('108', '13', '102', '可爱小熊玩具花', 'FZ-MRWJH-1', '毛茸茸的小熊，组成一束花，送给你。', '99', '88', 'images/big_02.jpg', '2015/05/09', '上海', '玩具花店', '2015-05-18 01:14:31', '1', '0', '0', '0', '558');
INSERT INTO `tb_goods` VALUES ('109', '14', '104', '大束玫瑰花', 'JQ-HLZYH-1', '婚礼专用，大束玫瑰花。', '888', '888', 'images/big_04.jpg', '2015/05/09', '云南昆明', '玫瑰', '2015-05-18 01:14:32', '0', '0', '0', '1', '555');
INSERT INTO `tb_goods` VALUES ('110', '14', '107', '粉色玫瑰捧花', 'JQ-QRJMGH-1', '粉红色的玫瑰花', '300', '288', 'images/big_05.jpg', '2015/05/09', '云南', '玫瑰', '2015-05-18 01:14:33', '0', '0', '1', '0', '658');
INSERT INTO `tb_goods` VALUES ('111', '14', '104', '新娘捧花', 'JQ-HL-2', '新娘捧花', '198', '188', 'images/big_06.jpg', '2015/05/09', '云南昆明', '玫瑰', '2015-05-18 01:14:34', '0', '0', '1', '0', '566');
INSERT INTO `tb_goods` VALUES ('112', '14', '105', '百合插花', 'JQ-CJ-1', '过年百合花', '68', '58', 'images/big_07.jpg', '2015/05/09', '云南', '百合花', '2015-05-18 01:14:35', '0', '0', '1', '0', '555');
INSERT INTO `tb_goods` VALUES ('113', '14', '106', '红色康乃馨', 'JQ-MQJ-1', '康乃馨，红色', '18', '16', 'images/knx111.jpg', '2015/05/09', '昆明', '康乃馨', '2015-05-18 01:14:35', '0', '0', '0', '1', '353');
INSERT INTO `tb_goods` VALUES ('114', '15', '109', '水仙花', 'PZ-SXH-1', '水仙花', '58', '38', 'images/big_010.jpg', '2015/05/09', '厦门', '水仙花', '2015-05-18 01:14:36', '0', '0', '0', '1', '666');
INSERT INTO `tb_goods` VALUES ('115', '15', '108', '吊兰', 'PZ-DL-1', '吊兰，空气净化专家。', '58', '38', 'images/3438208_223831571000_2.jpg', '2015/05/09', '江苏', '吊兰', '2015-05-18 01:14:37', '0', '0', '0', '1', '652');

-- ----------------------------
-- Table structure for tb_inform
-- ----------------------------
DROP TABLE IF EXISTS `tb_inform`;
CREATE TABLE `tb_inform` (
  `informId` int(11) NOT NULL AUTO_INCREMENT,
  `informTitle` varchar(30) DEFAULT NULL,
  `informContent` varchar(30) DEFAULT NULL,
  `informTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`informId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_inform
-- ----------------------------
INSERT INTO `tb_inform` VALUES ('1', '电子商务网站试营业啦~~', '欢迎大家光临，有任何意见请您及时给我们留言，谢谢啦。', '2015-05-09 14:09:53');

-- ----------------------------
-- Table structure for tb_note
-- ----------------------------
DROP TABLE IF EXISTS `tb_note`;
CREATE TABLE `tb_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `author` varchar(20) NOT NULL,
  `content` varchar(50) NOT NULL,
  `ly_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `imgs` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_note
-- ----------------------------
INSERT INTO `tb_note` VALUES ('2', '能不能便宜点', 'kitty15', '求便宜点。。。', '2015-05-09 20:55:33', 'images/face/pic4.gif');
INSERT INTO `tb_note` VALUES ('4', '有没有优惠啊', 'demo123', '有木有？', '2015-05-09 17:37:42', 'images/face/pic2.gif');

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `recvName` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('20', 'hellokitty', '上海', 'hellokitty', '111222', '1095080675@qq.com', '2015-05-09 12:56:04', '1');
INSERT INTO `tb_order` VALUES ('21', 'hellokitty', '上海', 'hellokitty', '111222', '1095080675@qq.com', '2015-05-18 01:23:46', '0');
INSERT INTO `tb_order` VALUES ('22', 'hellokitty', '上海', 'hellokitty', '111222', '1095080675@qq.com', '2015-05-18 01:25:43', '0');

-- ----------------------------
-- Table structure for tb_orderitem
-- ----------------------------
DROP TABLE IF EXISTS `tb_orderitem`;
CREATE TABLE `tb_orderitem` (
  `orderItemId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `bookId` int(11) DEFAULT NULL,
  `goodsName` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `goodsNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `orderId` (`orderId`),
  KEY `bookId` (`bookId`),
  CONSTRAINT `tb_orderitem_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`orderId`),
  CONSTRAINT `tb_orderitem_ibfk_2` FOREIGN KEY (`bookId`) REFERENCES `tb_goods` (`bookId`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_orderitem
-- ----------------------------
INSERT INTO `tb_orderitem` VALUES ('38', '20', '103', '红掌', '58', '1');
INSERT INTO `tb_orderitem` VALUES ('39', '20', '114', '水仙花', '38', '1');
INSERT INTO `tb_orderitem` VALUES ('40', '21', '109', '大束玫瑰花', '888', '1');
INSERT INTO `tb_orderitem` VALUES ('41', '22', '112', '百合插花', '58', '1');
INSERT INTO `tb_orderitem` VALUES ('42', '22', '110', '粉色玫瑰捧花', '288', '1');
INSERT INTO `tb_orderitem` VALUES ('43', '22', '109', '大束玫瑰花', '888', '1');

-- ----------------------------
-- Table structure for tb_subtype
-- ----------------------------
DROP TABLE IF EXISTS `tb_subtype`;
CREATE TABLE `tb_subtype` (
  `subTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `superTypeId` int(11) DEFAULT NULL,
  `subTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`subTypeId`),
  KEY `superTypeId` (`superTypeId`),
  CONSTRAINT `tb_subtype_ibfk_1` FOREIGN KEY (`superTypeId`) REFERENCES `tb_supertype` (`superTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_subtype
-- ----------------------------
INSERT INTO `tb_subtype` VALUES ('98', '11', '发言席百合');
INSERT INTO `tb_subtype` VALUES ('99', '11', '会议大盆花');
INSERT INTO `tb_subtype` VALUES ('100', '11', '会场装饰花');
INSERT INTO `tb_subtype` VALUES ('101', '13', '巧克力花');
INSERT INTO `tb_subtype` VALUES ('102', '13', '毛绒玩具花');
INSERT INTO `tb_subtype` VALUES ('103', '12', 'DIY自制');
INSERT INTO `tb_subtype` VALUES ('104', '14', '婚礼专用花');
INSERT INTO `tb_subtype` VALUES ('105', '14', '春节用花');
INSERT INTO `tb_subtype` VALUES ('106', '14', '母亲节康乃馨');
INSERT INTO `tb_subtype` VALUES ('107', '14', '情人节玫瑰花');
INSERT INTO `tb_subtype` VALUES ('108', '15', '吊兰');
INSERT INTO `tb_subtype` VALUES ('109', '15', '水仙花');
INSERT INTO `tb_subtype` VALUES ('110', '15', '绿萝');

-- ----------------------------
-- Table structure for tb_supertype
-- ----------------------------
DROP TABLE IF EXISTS `tb_supertype`;
CREATE TABLE `tb_supertype` (
  `superTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`superTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_supertype
-- ----------------------------
INSERT INTO `tb_supertype` VALUES ('11', '商务用花');
INSERT INTO `tb_supertype` VALUES ('12', '创意鲜花');
INSERT INTO `tb_supertype` VALUES ('13', '仿真花');
INSERT INTO `tb_supertype` VALUES ('14', '节庆用花');
INSERT INTO `tb_supertype` VALUES ('15', '盆栽绿植');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `password` varchar(16) NOT NULL,
  `email` varchar(50) NOT NULL,
  `trueName` varchar(40) NOT NULL,
  `sex` varchar(30) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `mphone` varchar(15) DEFAULT NULL,
  `question` varchar(30) NOT NULL,
  `answer` varchar(30) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `score` int(11) DEFAULT '1000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'hellokitty', '111111', '1095080675@qq.com', '咔咔咔', '男', '1995-11-25', '上海', '111222', '021-55558888', '13513513555', '你最爱的人的名字叫什么', 'cat', null, null);
INSERT INTO `tb_user` VALUES ('2', 'go2013', '123456', 'go13@qq.com', '李琦', '女', '1995-10-22', '中华人民共和国', '111111', '010-58694562', '13913813777', '你喜欢的业余爱好是什么', '乒乓球', null, null);
INSERT INTO `tb_user` VALUES ('3', 'hellokitty2', '123456', 'ello@qq.com', '哇哈哈', '男', '1993-10-18', '上海市', '111111', '021-88885555', '13512510001', '你喜欢的业余爱好是什么', '行吗好', null, null);
INSERT INTO `tb_user` VALUES ('4', 'kitty14', '111111', 'kitty@qq.com', '张三四', '男', '1995-11-11', '中国上海', '111111', '021-22221111', '13913813888', '你喜欢的业余爱好是什么', '打球', null, null);
INSERT INTO `tb_user` VALUES ('5', 'kitty15', '111111', 'kitty@qq.com', '李四五', '男', '1993-09-08', '中国', '100100', '010-68688888', '13313313333', '你喜欢的业余爱好是什么', '看书', null, null);
INSERT INTO `tb_user` VALUES ('6', 'gogo2014', '111111', 'gogo@qq.com', '前进', '男', '1995-10-10', '中国', '100100', '010-88889999', '13512512888', '你喜欢的业余爱好是什么', 'play', null, null);
INSERT INTO `tb_user` VALUES ('7', 'demo123', '123456', 'demo@qq.com', '王二', '男', '1993-12-12', '中国', '100100', '010-68688888', '13913913999', '你喜欢的业余爱好是什么', '游泳', null, null);
INSERT INTO `tb_user` VALUES ('8', 'wahaha', '123456', 'wahaha@qq.com', '哇哈哈', '男', '1995-11-11', '中国', '111222', '89890000', '13813813888', '你喜欢的业余爱好是什么', '看电视', null, null);
INSERT INTO `tb_user` VALUES ('9', 'hihihi', '111111', 'hihihi@163.com', '好好好', '男', '1994-12-11', '中国', '222222', '010-29991111', '13512512555', '你喜欢的业余爱好是什么', '玩游戏', null, null);
