/*
MySQL Data Transfer
Source Host: localhost
Source Database: simplevote
Target Host: localhost
Target Database: simplevote
Date: 2015/1/8 18:17:21
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for sysconfig
-- ----------------------------
CREATE TABLE `sysconfig` (
  `cid` int(11) NOT NULL auto_increment,
  `vote_name` varchar(45) NOT NULL,
  `dietime` date NOT NULL,
  `method` int(11) NOT NULL default '1',
  `description` varchar(800) NOT NULL default '',
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users
-- ----------------------------
CREATE TABLE `users` (
  `cid` int(11) NOT NULL auto_increment,
  `username` varchar(40) NOT NULL,
  `passwd` varchar(45) NOT NULL,
  `admin` int(11) NOT NULL default '0',
  `isvote` int(11) NOT NULL default '0',
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for voteips
-- ----------------------------
CREATE TABLE `voteips` (
  `cid` int(11) NOT NULL auto_increment,
  `ip` varchar(60) NOT NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for votename
-- ----------------------------
CREATE TABLE `votename` (
  `cid` int(11) NOT NULL auto_increment,
  `question_name` varchar(200) NOT NULL,
  `votetype` int(11) NOT NULL default '0' COMMENT '0为单选\n1为多选',
  `sumvotenum` int(11) NOT NULL default '1',
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for voteoption
-- ----------------------------
CREATE TABLE `voteoption` (
  `cid` int(11) NOT NULL auto_increment,
  `optionname` varchar(100) NOT NULL default '',
  `votenum` int(11) NOT NULL default '0',
  `upid` int(11) NOT NULL,
  PRIMARY KEY  (`cid`,`upid`),
  KEY `fk_voteoption_votename_idx` (`upid`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `sysconfig` VALUES ('1', 'æŠ•ç¥¨æµ‹è¯•', '2015-01-31', '1', 'æŠ•ç¥¨æµ‹è¯•1æŠ•ç¥¨æµ‹è¯•1æŠ•ç¥¨æµ‹è¯•1æŠ•ç¥¨æµ‹è¯•1æŠ•ç¥¨æµ‹è¯•1æŠ•ç¥¨æµ‹è¯•1æŠ•ç¥¨æµ‹è¯•1æŠ•ç¥¨æµ‹è¯•1æŠ•ç¥¨æµ‹è¯•1æŠ•ç¥¨æµ‹è¯•1æŠ•ç¥¨æµ‹è¯•1æŠ•ç¥¨æµ‹è¯•1');
INSERT INTO `users` VALUES ('1', 'admin', '123', '1', '1');
INSERT INTO `users` VALUES ('2', 'user1', '123', '0', '0');
INSERT INTO `voteips` VALUES ('1', '127.0.0.1');
INSERT INTO `voteips` VALUES ('2', '172.40.90.70');
INSERT INTO `votename` VALUES ('12', 'ä½ æ˜¯è°ï¼Ÿ', '0', '2');
INSERT INTO `votename` VALUES ('13', 'ä½ åœ¨å“ªé‡Œï¼Ÿ', '0', '2');
INSERT INTO `votename` VALUES ('14', 'ä½ å¥½å—ï¼Ÿ', '0', '2');
INSERT INTO `votename` VALUES ('15', 'ä½ æ¥å¹²ä»€ä¹ˆï¼Ÿ', '0', '2');
INSERT INTO `voteoption` VALUES ('37', 'å¼ ä¸‰', '2', '12');
INSERT INTO `voteoption` VALUES ('38', 'æŽå››', '0', '12');
INSERT INTO `voteoption` VALUES ('39', 'çŽ‹äº”', '0', '12');
INSERT INTO `voteoption` VALUES ('40', 'åœ°çƒ', '1', '13');
INSERT INTO `voteoption` VALUES ('41', 'æ½˜å¤šæ‹‰', '0', '13');
INSERT INTO `voteoption` VALUES ('42', 'ç«æ˜Ÿ', '1', '13');
INSERT INTO `voteoption` VALUES ('43', 'é•¿æ²™', '0', '13');
INSERT INTO `voteoption` VALUES ('44', 'å¥½', '1', '14');
INSERT INTO `voteoption` VALUES ('45', 'ä¸å¥½', '0', '14');
INSERT INTO `voteoption` VALUES ('46', 'é¢....', '1', '14');
INSERT INTO `voteoption` VALUES ('47', 'åƒé¥­', '1', '15');
INSERT INTO `voteoption` VALUES ('48', 'ç¡è§‰', '1', '15');
INSERT INTO `voteoption` VALUES ('49', 'æ‰“è±†è±†', '0', '15');
