/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : share_down

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2014-08-31 23:47:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `counter`
-- ----------------------------
DROP TABLE IF EXISTS `counter`;
CREATE TABLE `counter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `number` int(11) NOT NULL DEFAULT '0',
  `vip_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of counter
-- ----------------------------

-- ----------------------------
-- Table structure for `depots`
-- ----------------------------
DROP TABLE IF EXISTS `depots`;
CREATE TABLE `depots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created` int(11) NOT NULL,
  `count_number` int(11) NOT NULL DEFAULT '0' COMMENT '下载次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of depots
-- ----------------------------

-- ----------------------------
-- Table structure for `logs`
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `depot_id` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logs
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `role` set('user','admin') NOT NULL DEFAULT 'user',
  `created` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `qq` int(11) NOT NULL DEFAULT '0',
  `tel` varchar(255) NOT NULL DEFAULT '',
  `active` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户状态 0 为正常',
  `expired` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '下载有效次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('3', 'test2@qq.com', 'test2@qq.com', 'test2@qq.com', 'user', '1386429404', '1386429404', '0', '', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `users` VALUES ('11', '1203778432@qq.com', '123456', '123456', 'user', '1402668891', '1402668891', '12314123', '123', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `users` VALUES ('12', 'test9001@qq.com', '林', '123456', 'admin', '1409491479', '0', '123456', '123456', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `users` VALUES ('13', 'admin@qq.com', '林宁', '123456', 'admin', '1409491841', '0', '120377843', '243143124', '0', '2014-09-28 00:00:00', '10');

-- ----------------------------
-- Table structure for `vips`
-- ----------------------------
DROP TABLE IF EXISTS `vips`;
CREATE TABLE `vips` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `endtime` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vips
-- ----------------------------
INSERT INTO `vips` VALUES ('2', 'huaerzb', 'qwe111', '0', '1409495707');
