/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : wxapp

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-09-28 15:31:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wxapp_book
-- ----------------------------
DROP TABLE IF EXISTS `wxapp_book`;
CREATE TABLE `wxapp_book` (
  `id` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `like_status` int(2) DEFAULT NULL,
  `fav_nums` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `summary` text,
  `publisher` varchar(255) DEFAULT NULL,
  `pubdate` datetime DEFAULT NULL,
  `pages` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `binding` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxapp_book
-- ----------------------------
INSERT INTO `wxapp_book` VALUES ('1', '1', '1', '8', 'aip', '惹我台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test1.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '发送到', '2020-09-25 16:13:29', '100', '12.00', 'sad');
INSERT INTO `wxapp_book` VALUES ('2', '2', '1', '20', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test2.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', 'dfsa ', '2020-09-25 16:13:29', '101', '24.00', '发放');
INSERT INTO `wxapp_book` VALUES ('3', '3', '0', '30', 'aip', '惹我台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test3.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '范德萨', '2020-09-25 16:13:29', '4545', '54.00', '和规范化');
INSERT INTO `wxapp_book` VALUES ('4', '4', '1', '40', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test1.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '阿达', '2020-09-25 16:13:29', '544', '57.00', '范德萨');
INSERT INTO `wxapp_book` VALUES ('5', '5', '0', '50', 'aip', '惹我台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test2.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '阿萨德', '2020-09-25 16:13:29', '012', '545.00', '合格');
INSERT INTO `wxapp_book` VALUES ('6', '6', '1', '60', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test3.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '打算', '2020-09-25 16:13:29', '1201', '75.00', '答复');
INSERT INTO `wxapp_book` VALUES ('7', '7', '0', '70', 'aip', '惹我台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test1.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', 'sad', '2020-09-25 16:14:07', '454', '54.00', '打算');
INSERT INTO `wxapp_book` VALUES ('8', '8', '1', '80', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test2.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '范德萨范德萨', '2020-09-25 16:13:29', '6856', '66.00', '哈哈');
INSERT INTO `wxapp_book` VALUES ('9', '9', '1', '90', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test3.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '发斯蒂芬', '2020-09-25 16:13:29', '56546', '3.00', '发过的');
INSERT INTO `wxapp_book` VALUES ('11', '11', '1', '8', 'aip', '惹我台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test1.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '发送到', '2020-09-25 16:13:29', '100', '12.00', 'sad');
INSERT INTO `wxapp_book` VALUES ('12', '12', '1', '20', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test2.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', 'dfsa ', '2020-09-25 16:13:29', '101', '24.00', '发放');
INSERT INTO `wxapp_book` VALUES ('13', '13', '0', '30', 'aip', '惹我台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test3.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '范德萨', '2020-09-25 16:13:29', '4545', '54.00', '和规范化');
INSERT INTO `wxapp_book` VALUES ('14', '14', '1', '40', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test1.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '阿达', '2020-09-25 16:13:29', '544', '57.00', '范德萨');
INSERT INTO `wxapp_book` VALUES ('15', '15', '0', '50', 'aip', '惹我台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test2.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '阿萨德', '2020-09-25 16:13:29', '012', '545.00', '合格');
INSERT INTO `wxapp_book` VALUES ('16', '16', '1', '60', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test3.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '打算', '2020-09-25 16:13:29', '1201', '75.00', '答复');
INSERT INTO `wxapp_book` VALUES ('17', '17', '0', '70', 'aip', '惹我台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test1.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', 'sad', '2020-09-25 16:14:07', '454', '54.00', '打算');
INSERT INTO `wxapp_book` VALUES ('18', '18', '1', '80', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test2.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '范德萨范德萨', '2020-09-25 16:13:29', '6856', '66.00', '哈哈');
INSERT INTO `wxapp_book` VALUES ('19', '19', '1', '90', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test3.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '发斯蒂芬', '2020-09-25 16:13:29', '56546', '3.00', '发过的');
INSERT INTO `wxapp_book` VALUES ('20', '20', '1', '80', 'aip', '惹我台湾', 'http://127.0.0.1:1111/static/images/test2.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '范德萨范德萨', '2020-09-25 16:13:29', '6856', '66.00', '哈哈');
INSERT INTO `wxapp_book` VALUES ('21', '21', '1', '90', 'aip', '台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test3.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '发斯蒂芬', '2020-09-25 16:13:29', '56546', '3.00', '发过的');
INSERT INTO `wxapp_book` VALUES ('22', '22', '1', '20', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test2.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', 'dfsa ', '2020-09-25 16:13:29', '101', '24.00', '发放');
INSERT INTO `wxapp_book` VALUES ('31', '31', '0', '30', 'aip', '惹我台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test3.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '范德萨', '2020-09-25 16:13:29', '4545', '54.00', '和规范化');
INSERT INTO `wxapp_book` VALUES ('41', '41', '1', '40', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test1.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '阿达', '2020-09-25 16:13:29', '544', '57.00', '范德萨');
INSERT INTO `wxapp_book` VALUES ('51', '51', '0', '50', 'aip', '惹我台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test2.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '阿萨德', '2020-09-25 16:13:29', '012', '545.00', '合格');
INSERT INTO `wxapp_book` VALUES ('61', '61', '1', '60', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test3.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '打算', '2020-09-25 16:13:29', '1201', '75.00', '答复');
INSERT INTO `wxapp_book` VALUES ('71', '71', '0', '70', 'aip', '惹我台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test1.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', 'sad', '2020-09-25 16:14:07', '454', '54.00', '打算');
INSERT INTO `wxapp_book` VALUES ('81', '81', '1', '80', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test2.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '范德萨范德萨', '2020-09-25 16:13:29', '6856', '66.00', '哈哈');
INSERT INTO `wxapp_book` VALUES ('91', '91', '1', '90', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test3.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '发斯蒂芬', '2020-09-25 16:13:29', '56546', '3.00', '发过的');
INSERT INTO `wxapp_book` VALUES ('111', '111', '1', '8', 'aip', '惹我台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test1.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '发送到', '2020-09-25 16:13:29', '100', '12.00', 'sad');
INSERT INTO `wxapp_book` VALUES ('121', '121', '1', '20', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test2.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', 'dfsa ', '2020-09-25 16:13:29', '101', '24.00', '发放');
INSERT INTO `wxapp_book` VALUES ('131', '131', '0', '30', 'aip', '惹我台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test3.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '范德萨', '2020-09-25 16:13:29', '4545', '54.00', '和规范化');
INSERT INTO `wxapp_book` VALUES ('141', '141', '1', '40', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test1.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '阿达', '2020-09-25 16:13:29', '544', '57.00', '范德萨');
INSERT INTO `wxapp_book` VALUES ('151', '151', '0', '50', 'aip', '惹我台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test2.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '阿萨德', '2020-09-25 16:13:29', '012', '545.00', '合格');
INSERT INTO `wxapp_book` VALUES ('161', '161', '1', '60', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test3.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '打算', '2020-09-25 16:13:29', '1201', '75.00', '答复');
INSERT INTO `wxapp_book` VALUES ('171', '171', '0', '70', 'aip', '惹我台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test1.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', 'sad', '2020-09-25 16:14:07', '454', '54.00', '打算');
INSERT INTO `wxapp_book` VALUES ('181', '181', '1', '80', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test2.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '范德萨范德萨', '2020-09-25 16:13:29', '6856', '66.00', '哈哈');
INSERT INTO `wxapp_book` VALUES ('191', '191', '1', '90', 'aip', '大师傅是的发送到发送到范德萨士大夫撒旦法师', 'http://127.0.0.1:1111/static/images/test3.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '发斯蒂芬', '2020-09-25 16:13:29', '56546', '3.00', '发过的');
INSERT INTO `wxapp_book` VALUES ('201', '201', '1', '80', 'aip', '惹我台湾', 'http://127.0.0.1:1111/static/images/test2.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '范德萨范德萨', '2020-09-25 16:13:29', '6856', '66.00', '哈哈');
INSERT INTO `wxapp_book` VALUES ('211', '211', '1', '90', 'aip', '台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test3.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '发斯蒂芬', '2020-09-25 16:13:29', '56546', '3.00', '发过的');
INSERT INTO `wxapp_book` VALUES ('10', '10', '1', '8', 'aip', '惹我台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test1.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '发送到', '2020-09-25 16:13:29', '100', '12.00', 'sad');
INSERT INTO `wxapp_book` VALUES ('25', '25', '1', '8', 'aip', '惹我台湾人发生大法师ad', 'http://127.0.0.1:1111/static/images/test1.jpg', '发的范德萨，的撒发的，大范德萨发。\\n发生大法师放假啊是的立法，法法师打发，饭店附近阿斯顿发生，发送到发斯蒂芬。的房间爱东方。\\n大家啊发来的阿法士大夫，发的发生的，发达。', '发送到', '2020-09-25 16:13:29', '100', '12.00', 'sad');

-- ----------------------------
-- Table structure for wxapp_comments
-- ----------------------------
DROP TABLE IF EXISTS `wxapp_comments`;
CREATE TABLE `wxapp_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `nums` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxapp_comments
-- ----------------------------
INSERT INTO `wxapp_comments` VALUES ('1', '1', '双方都撒撒旦法', '16');
INSERT INTO `wxapp_comments` VALUES ('2', '1', '双方都撒奥德赛', '945');
INSERT INTO `wxapp_comments` VALUES ('3', '1', '双方都撒', '8');
INSERT INTO `wxapp_comments` VALUES ('4', '1', '双方都撒达到撒多', '78');
INSERT INTO `wxapp_comments` VALUES ('5', '1', '双方都撒的范德萨发完钱二分', '8');
INSERT INTO `wxapp_comments` VALUES ('6', '1', '双方都撒打发第三方广东省', '545');
INSERT INTO `wxapp_comments` VALUES ('7', '1', '双方都撒大范德萨发', '245');
INSERT INTO `wxapp_comments` VALUES ('8', '1', '双方都撒', '8');
INSERT INTO `wxapp_comments` VALUES ('9', '2', '双方都撒暗示法第三方', '2');
INSERT INTO `wxapp_comments` VALUES ('10', '2', '双方都撒', '2');
INSERT INTO `wxapp_comments` VALUES ('11', '2', '双方都撒', '3');
INSERT INTO `wxapp_comments` VALUES ('12', '2', '双方都撒', '4');
INSERT INTO `wxapp_comments` VALUES ('13', '2', '双方都撒', '66');
INSERT INTO `wxapp_comments` VALUES ('14', '2', '双方都撒', '55');
INSERT INTO `wxapp_comments` VALUES ('15', '2', '双方都撒', '54');
INSERT INTO `wxapp_comments` VALUES ('16', '2', '双方都撒', '4');
INSERT INTO `wxapp_comments` VALUES ('17', '1', 'rer', '1');
INSERT INTO `wxapp_comments` VALUES ('18', '1', '双方都撒撒旦法', '16');
INSERT INTO `wxapp_comments` VALUES ('19', '1', 'ggf', '1');
INSERT INTO `wxapp_comments` VALUES ('20', '4', 'dsfaa', '1');

-- ----------------------------
-- Table structure for wxapp_hot_keyword
-- ----------------------------
DROP TABLE IF EXISTS `wxapp_hot_keyword`;
CREATE TABLE `wxapp_hot_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxapp_hot_keyword
-- ----------------------------
INSERT INTO `wxapp_hot_keyword` VALUES ('1', 'dfas');
INSERT INTO `wxapp_hot_keyword` VALUES ('2', 'fasd');
INSERT INTO `wxapp_hot_keyword` VALUES ('3', 'hgsdfg');
INSERT INTO `wxapp_hot_keyword` VALUES ('4', '股份的时光');
INSERT INTO `wxapp_hot_keyword` VALUES ('5', 'dfas');
INSERT INTO `wxapp_hot_keyword` VALUES ('6', 'fasd');
INSERT INTO `wxapp_hot_keyword` VALUES ('7', 'hgsdfg');
INSERT INTO `wxapp_hot_keyword` VALUES ('8', '股份的时光');
INSERT INTO `wxapp_hot_keyword` VALUES ('9', 'dfas');
INSERT INTO `wxapp_hot_keyword` VALUES ('10', 'fasd');
INSERT INTO `wxapp_hot_keyword` VALUES ('11', 'hgsdfg');
INSERT INTO `wxapp_hot_keyword` VALUES ('12', '股份的时光');
INSERT INTO `wxapp_hot_keyword` VALUES ('13', 'dfas');
INSERT INTO `wxapp_hot_keyword` VALUES ('14', 'fasd');
INSERT INTO `wxapp_hot_keyword` VALUES ('15', 'hgsdfg');
INSERT INTO `wxapp_hot_keyword` VALUES ('16', '股份的时光');

-- ----------------------------
-- Table structure for wxapp_test
-- ----------------------------
DROP TABLE IF EXISTS `wxapp_test`;
CREATE TABLE `wxapp_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `type` int(4) DEFAULT NULL,
  `like_status` tinyint(4) DEFAULT NULL,
  `fav_nums` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `index` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxapp_test
-- ----------------------------
INSERT INTO `wxapp_test` VALUES ('1', '电影标题1', '电影内容1', '100', '1', '10', 'http://127.0.0.1:1111/static/images/test1.jpg', null, '8');
INSERT INTO `wxapp_test` VALUES ('2', '音乐标题1', '音乐内容1', '200', '1', '20', 'http://127.0.0.1:1111/static/images/test2.jpg', 'http://127.0.0.1:1111/static/music/11.mp3', '7');
INSERT INTO `wxapp_test` VALUES ('3', '句子标题1', '句子内容1', '300', '1', '30', 'http://127.0.0.1:1111/static/images/test3.jpg', '', '6');
INSERT INTO `wxapp_test` VALUES ('4', '电影标题2', '电影内容2', '100', '1', '40', 'http://127.0.0.1:1111/static/images/test1.jpg', '', '5');
INSERT INTO `wxapp_test` VALUES ('5', '音乐标题2', '音乐内容1', '200', '1', '50', 'http://127.0.0.1:1111/static/images/test2.jpg', 'http://127.0.0.1:1111/static/music/22.mp3', '4');
INSERT INTO `wxapp_test` VALUES ('6', '句子标题2', '句子内容2', '300', '1', '60', 'http://127.0.0.1:1111/static/images/test3.jpg', '', '3');
INSERT INTO `wxapp_test` VALUES ('7', '电影标题3', '电影内容3', '100', '1', '70', 'http://127.0.0.1:1111/static/images/test1.jpg', '', '2');
INSERT INTO `wxapp_test` VALUES ('8', '音乐标题3', '音乐内容3', '200', '1', '80', 'http://127.0.0.1:1111/static/images/test2.jpg', 'http://127.0.0.1:1111/static/music/33.mp3', '1');
