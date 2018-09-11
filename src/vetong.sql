/*
Navicat MySQL Data Transfer

Source Server         : bendi
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : vetong

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2017-05-12 00:41:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `businessuser`
-- ----------------------------
DROP TABLE IF EXISTS `businessuser`;
CREATE TABLE `businessuser` (
  `BUSINESSUSER_ID` varchar(100) NOT NULL,
  `BUSINESSUSERNAME` varchar(255) DEFAULT NULL COMMENT '商家用户名',
  `BUSINESSPWD` varchar(255) DEFAULT NULL COMMENT '登录密码',
  `TEL` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `EMAIL` varchar(255) DEFAULT NULL COMMENT '联系邮箱',
  `PRODUCTMEAL` varchar(255) DEFAULT NULL COMMENT '产品套餐',
  `SALESUM` varchar(255) DEFAULT NULL COMMENT '总售价',
  `COMPANYADDRESS` varchar(255) DEFAULT NULL COMMENT '商家的公司地址',
  `FLAG` varchar(2) DEFAULT NULL COMMENT '0冻结 1正常',
  `AGENTMANGER_ID` varchar(100) DEFAULT NULL COMMENT '代理商ID',
  `CREATETIME` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `REDPACKETNUM` varchar(100) DEFAULT NULL COMMENT '红包个数',
  PRIMARY KEY (`BUSINESSUSER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of businessuser
-- ----------------------------
INSERT INTO `businessuser` VALUES ('14fd9e039ee1466a806cc6c34524673d', 'ceshi2', '4a7894875a16c8190741770f9b97305e', '12345', '123456', '234', '3256', '1234567', '1', '1', null, '');
INSERT INTO `businessuser` VALUES ('32db1d17e0f54e2aa2d167d6179f1d4a', 'aa', '4a7894875a16c8190741770f9b97305e', '', '', '', '', '', '1', '1', null, '');
INSERT INTO `businessuser` VALUES ('358ef63605b742ac86c6a763cc29f3cb', 'ceshi', '4a7894875a16c8190741770f9b97305e', '123', '123', '234', '123', '123', '1', '1', null, '');
INSERT INTO `businessuser` VALUES ('40693e964e0c4cbe99a60f8b6bf1e0db', 'lianziyu', '4a7894875a16c8190741770f9b97305e', '123456789', '123@qq.com', '234', '302', '1234567894', '0', '1', null, '');
INSERT INTO `businessuser` VALUES ('7ba2f809590046828439dad8d2caf527', 'a', '4a7894875a16c8190741770f9b97305e', 'a', 'a', '234', 'a', 'a', '1', '1', null, '');
INSERT INTO `businessuser` VALUES ('7c792ed6711f4c819d74b01bdaa3eb7f', 'aaaa', '4a7894875a16c8190741770f9b97305e', '', '', '', '', '', '1', '1', null, '');
INSERT INTO `businessuser` VALUES ('c8109f1141114218a4d81befa676ca1d', 'yangchengheng', '4a7894875a16c8190741770f9b97305e', '13752381319', '123@qq.com', '234', '2356', '123456', '0', '1', null, '');
INSERT INTO `businessuser` VALUES ('ce68ade5791e4921be891c6f55901e59', 'huguowang', '4a7894875a16c8190741770f9b97305e', '15617251668', '123@qq.com', '234', '30', 'aaaa', '1', '1', null, '');
INSERT INTO `businessuser` VALUES ('d332d9afab4249128d61d5d905d3a573', 'bvds', '4a7894875a16c8190741770f9b97305e', '', '', '', '', '', '1', '1', null, '');
INSERT INTO `businessuser` VALUES ('da2bda72ed394ad0bc957b61adda9de8', 'haha', '4a7894875a16c8190741770f9b97305e', '', '', '', '', '', '1', '1', null, '');
INSERT INTO `businessuser` VALUES ('dacd52d5741e44efb54580da621737cd', 'testaa', '4a7894875a16c8190741770f9b97305e', '15617251668', '79162qq.com', '234', '120', '123456', '1', '1', null, '');
INSERT INTO `businessuser` VALUES ('dddfcaf428424d998b4fb109fefb1e7a', 'avc', '4a7894875a16c8190741770f9b97305e', '15617251668', '11', '234', '300', '河南省禹州市', '1', '1', null, '');
INSERT INTO `businessuser` VALUES ('f2b69c1a77b040829b12e9fa856422ca', 'cccss', '4a7894875a16c8190741770f9b97305e', '', '', '', '', '', '1', '1', null, '');

-- ----------------------------
-- Table structure for `sys_app_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_user`;
CREATE TABLE `sys_app_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `PHONE` varchar(100) DEFAULT NULL,
  `SFID` varchar(100) DEFAULT NULL,
  `START_TIME` varchar(100) DEFAULT NULL,
  `END_TIME` varchar(100) DEFAULT NULL,
  `YEARS` int(10) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_app_user
-- ----------------------------
INSERT INTO `sys_app_user` VALUES ('04762c0b28b643939455c7800c2e2412', 'dsfsd', 'f1290186a5d0b1ceab27f4e77c0c5d68', 'w', '', '55896f5ce3c0494fa6850775a4e29ff6', '', '', '1', '', '18766666666', '', '', '', '0', '001', '18766666666@qq.com');
INSERT INTO `sys_app_user` VALUES ('3faac8fe5c0241e593e0f9ea6f2d5870', 'dsfsdf', 'f1290186a5d0b1ceab27f4e77c0c5d68', 'wewe', '', '68f23fc0caee475bae8d52244dea8444', '', '', '1', '', '18767676767', '', '', '', '0', 'wqwe', 'qweqwe@qq.com');

-- ----------------------------
-- Table structure for `sys_dictionaries`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionaries`;
CREATE TABLE `sys_dictionaries` (
  `ZD_ID` varchar(100) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `BIANMA` varchar(100) DEFAULT NULL,
  `ORDY_BY` int(10) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `JB` int(10) DEFAULT NULL,
  `P_BM` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ZD_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dictionaries
-- ----------------------------
INSERT INTO `sys_dictionaries` VALUES ('212a6765fddc4430941469e1ec8c8e6c', '人事部', '001', '1', 'c067fdaf51a141aeaa56ed26b70de863', '2', 'BM_001');
INSERT INTO `sys_dictionaries` VALUES ('3cec73a7cc8a4cb79e3f6ccc7fc8858c', '行政部', '002', '2', 'c067fdaf51a141aeaa56ed26b70de863', '2', 'BM_002');
INSERT INTO `sys_dictionaries` VALUES ('48724375640341deb5ef01ac51a89c34', '北京', 'dq001', '1', 'cdba0b5ef20e4fc0a5231fa3e9ae246a', '2', 'DQ_dq001');
INSERT INTO `sys_dictionaries` VALUES ('5a1547632cca449db378fbb9a042b336', '研发部', '004', '4', 'c067fdaf51a141aeaa56ed26b70de863', '2', 'BM_004');
INSERT INTO `sys_dictionaries` VALUES ('7f9cd74e60a140b0aea5095faa95cda3', '财务部', '003', '3', 'c067fdaf51a141aeaa56ed26b70de863', '2', 'BM_003');
INSERT INTO `sys_dictionaries` VALUES ('b861bd1c3aba4934acdb5054dd0d0c6e', '科技不', 'kj', '7', 'c067fdaf51a141aeaa56ed26b70de863', '2', 'BM_kj');
INSERT INTO `sys_dictionaries` VALUES ('c067fdaf51a141aeaa56ed26b70de863', '部门', 'BM', '1', '0', '1', 'BM');
INSERT INTO `sys_dictionaries` VALUES ('cdba0b5ef20e4fc0a5231fa3e9ae246a', '地区', 'DQ', '2', '0', '1', 'DQ');
INSERT INTO `sys_dictionaries` VALUES ('f184bff5081d452489271a1bd57599ed', '上海', 'SH', '2', 'cdba0b5ef20e4fc0a5231fa3e9ae246a', '2', 'DQ_SH');
INSERT INTO `sys_dictionaries` VALUES ('f30bf95e216d4ebb8169ff0c86330b8f', '客服部', '006', '6', 'c067fdaf51a141aeaa56ed26b70de863', '2', 'BM_006');

-- ----------------------------
-- Table structure for `sys_gl_qx`
-- ----------------------------
DROP TABLE IF EXISTS `sys_gl_qx`;
CREATE TABLE `sys_gl_qx` (
  `GL_ID` varchar(100) NOT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `FX_QX` int(10) DEFAULT NULL,
  `FW_QX` int(10) DEFAULT NULL,
  `QX1` int(10) DEFAULT NULL,
  `QX2` int(10) DEFAULT NULL,
  `QX3` int(10) DEFAULT NULL,
  `QX4` int(10) DEFAULT NULL,
  PRIMARY KEY (`GL_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_gl_qx
-- ----------------------------
INSERT INTO `sys_gl_qx` VALUES ('1', '2', '1', '1', '1', '1', '1', '1');
INSERT INTO `sys_gl_qx` VALUES ('2', '1', '0', '0', '1', '1', '1', '1');
INSERT INTO `sys_gl_qx` VALUES ('3f7b85a324344d3c82982d33e316019a', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('522c5b0d924c4ebfbf337dde50630c7e', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('55896f5ce3c0494fa6850775a4e29ff6', '7', '0', '0', '1', '0', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('68f23fc0caee475bae8d52244dea8444', '7', '0', '0', '1', '1', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('7dfd8d1f7b6245d283217b7e63eec9b2', '1', '1', '1', '1', '0', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('ac66961adaa2426da4470c72ffeec117', '1', '1', '0', '1', '1', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('b0c77c29dfa140dc9b14a29c056f824f', '7', '1', '0', '1', '1', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('d99b2d3fdfbb4f549ed22f8e9c64d975', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('e74f713314154c35bd7fc98897859fe3', '6', '1', '1', '1', '1', '0', '0');
INSERT INTO `sys_gl_qx` VALUES ('f944a9df72634249bbcb8cb73b0c9b86', '7', '1', '1', '1', '1', '0', '0');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` varchar(100) DEFAULT NULL,
  `MENU_ICON` varchar(30) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '账号管理', '#', '0', '1', 'icon-desktop', '2');
INSERT INTO `sys_menu` VALUES ('2', '权限管理', 'role.do', '1', '2', null, '2');
INSERT INTO `sys_menu` VALUES ('5', '子用户管理', 'user/listUsers.do', '1', '3', null, '2');
INSERT INTO `sys_menu` VALUES ('6', '商家管理', '#', '0', '2', 'icon-desktop', '2');
INSERT INTO `sys_menu` VALUES ('7', '申请商家', 'agentmanger/list.do', '6', '1', null, '2');
INSERT INTO `sys_menu` VALUES ('8', '业务管理', '#', '0', '3', 'icon-desktop', '');
INSERT INTO `sys_menu` VALUES ('14', '首页管理', '#', '0', '5', 'icon-desktop', '');
INSERT INTO `sys_menu` VALUES ('13', '意见反馈', '#', '0', '4', 'icon-desktop', '');
INSERT INTO `sys_menu` VALUES ('11', '注册商家审核', 'agentmanger/goAdd.do', '6', '2', null, '2');
INSERT INTO `sys_menu` VALUES ('12', '添加商家', '#', '6', '3', null, '2');

-- ----------------------------
-- Table structure for `sys_menu1`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu1`;
CREATE TABLE `sys_menu1` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` varchar(100) DEFAULT NULL,
  `MENU_ICON` varchar(30) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu1
-- ----------------------------
INSERT INTO `sys_menu1` VALUES ('23', '商品管理', '#', '0', '4', null, '2');
INSERT INTO `sys_menu1` VALUES ('24', '商品列表', 'commodity/list.do', '23', '1', null, '2');
INSERT INTO `sys_menu1` VALUES ('25', '分销管理', '#', '0', '5', null, '2');
INSERT INTO `sys_menu1` VALUES ('27', '分销统计', 'distributioncount/list.do', '25', '2', null, '2');
INSERT INTO `sys_menu1` VALUES ('28', '分类管理', '#', '0', '6', null, '2');
INSERT INTO `sys_menu1` VALUES ('29', '分类列表', 'classification/list.do', '28', '1', null, '2');
INSERT INTO `sys_menu1` VALUES ('30', '系统设置', '#', '0', '7', null, '2');
INSERT INTO `sys_menu1` VALUES ('31', '物流模板设置', 'logistics/list.do', '30', '1', null, '2');
INSERT INTO `sys_menu1` VALUES ('32', '会员管理', '#', '0', '8', null, '2');
INSERT INTO `sys_menu1` VALUES ('33', '会员列表', 'vipmanger/list.do', '32', '1', null, '2');
INSERT INTO `sys_menu1` VALUES ('34', '订单管理', '#', '0', '10', null, '2');
INSERT INTO `sys_menu1` VALUES ('35', '订单列表', 'ordermanger/list.do', '34', '1', null, '2');
INSERT INTO `sys_menu1` VALUES ('36', '首页管理', '#', '0', '9', null, '');
INSERT INTO `sys_menu1` VALUES ('37', '轮播图管理', 'carousel/list.do', '36', '1', null, '');
INSERT INTO `sys_menu1` VALUES ('38', 'LOGO设置', 'logo/list.do', '36', '2', null, '');
INSERT INTO `sys_menu1` VALUES ('39', '待发货列表', 'ordermanger/waitSendList', '34', '2', null, '2');
INSERT INTO `sys_menu1` VALUES ('40', '退货退款列表', 'ordermanger/returnList', '34', '3', null, '2');
INSERT INTO `sys_menu1` VALUES ('41', '意见反馈管理', '#', '0', '11', null, '2');
INSERT INTO `sys_menu1` VALUES ('42', '意见反馈列表', 'feedback/list.do', '41', '1', null, '2');
INSERT INTO `sys_menu1` VALUES ('43', '商家活动管理', '#', '0', '12', null, '2');
INSERT INTO `sys_menu1` VALUES ('44', '活动列表', 'bussinessactivity/list.do', '43', '1', null, '2');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ROLE_ID` varchar(100) NOT NULL,
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `ADD_QX` varchar(255) DEFAULT NULL,
  `DEL_QX` varchar(255) DEFAULT NULL,
  `EDIT_QX` varchar(255) DEFAULT NULL,
  `CHA_QX` varchar(255) DEFAULT NULL,
  `QX_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '4070', '0', '1', '1', '1', '1', '1');
INSERT INTO `sys_role` VALUES ('3f7b85a324344d3c82982d33e316019a', '分销商管理员', '4070', '1', '2022', '192', '2022', '2022', '3f7b85a324344d3c82982d33e316019a');
INSERT INTO `sys_role` VALUES ('522c5b0d924c4ebfbf337dde50630c7e', '管理员', '4070', '1', '4070', '4070', '4070', '4070', '522c5b0d924c4ebfbf337dde50630c7e');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `SKIN` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `PHONE` varchar(32) DEFAULT NULL,
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`USER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'de41b7fb99201d8334c23c014db35ecd92df81bc', '系统管理员', '1133671055321055258374707980945218933803269864762743594642571294', '1', '2017-05-12 00:24:43', '0:0:0:0:0:0:0:1', '0', '最高统治者', 'default', 'admin@main.com', '001', '18788888888', null);
INSERT INTO `sys_user` VALUES ('2d94955af49144648f472c8e2b56d920', 'yangsitong', 'f2884e4bc4cbb4ee4730c09b90a9ab303a664e37', null, '', '3f7b85a324344d3c82982d33e316019a', '2017-05-12 00:24:00', '0:0:0:0:0:0:0:1', '0', null, 'default', null, null, null, '2017-03-07 16:44:55');
INSERT INTO `sys_user` VALUES ('0854acf91ff24bee984c50d165d1427a', 'huguowang', '45835f96dac310905f36c723bfa282b174d37521', null, '', '522c5b0d924c4ebfbf337dde50630c7e', '', '', '0', null, 'default', null, null, null, '2017-05-11 21:33:09');

-- ----------------------------
-- Table structure for `sys_user_qx`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_qx`;
CREATE TABLE `sys_user_qx` (
  `U_ID` varchar(100) NOT NULL,
  `C1` int(10) DEFAULT NULL,
  `C2` int(10) DEFAULT NULL,
  `C3` int(10) DEFAULT NULL,
  `C4` int(10) DEFAULT NULL,
  `Q1` int(10) DEFAULT NULL,
  `Q2` int(10) DEFAULT NULL,
  `Q3` int(10) DEFAULT NULL,
  `Q4` int(10) DEFAULT NULL,
  PRIMARY KEY (`U_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_qx
-- ----------------------------
INSERT INTO `sys_user_qx` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `sys_user_qx` VALUES ('2', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `sys_user_qx` VALUES ('3f7b85a324344d3c82982d33e316019a', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('522c5b0d924c4ebfbf337dde50630c7e', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('55896f5ce3c0494fa6850775a4e29ff6', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('68f23fc0caee475bae8d52244dea8444', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('7dfd8d1f7b6245d283217b7e63eec9b2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('ac66961adaa2426da4470c72ffeec117', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('b0c77c29dfa140dc9b14a29c056f824f', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('d99b2d3fdfbb4f549ed22f8e9c64d975', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('e74f713314154c35bd7fc98897859fe3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sys_user_qx` VALUES ('f944a9df72634249bbcb8cb73b0c9b86', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `tb_advertisement`
-- ----------------------------
DROP TABLE IF EXISTS `tb_advertisement`;
CREATE TABLE `tb_advertisement` (
  `ADVERTISEMENT_ID` varchar(100) NOT NULL,
  `IMG1` varchar(255) DEFAULT NULL COMMENT '图片1',
  `URL1` varchar(255) DEFAULT NULL COMMENT '连接1',
  `IMG2` varchar(255) DEFAULT NULL COMMENT '图片2',
  `URL2` varchar(255) DEFAULT NULL COMMENT '链接2',
  `IMG3` varchar(255) DEFAULT NULL COMMENT '图片3',
  `URL3` varchar(255) DEFAULT NULL COMMENT '链接3',
  `IMG4` varchar(255) DEFAULT NULL COMMENT '图片4',
  `URL4` varchar(255) DEFAULT NULL COMMENT '链接4',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `WIDTH` int(11) NOT NULL COMMENT '权重',
  PRIMARY KEY (`ADVERTISEMENT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_advertisement
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_agentmoneylog`
-- ----------------------------
DROP TABLE IF EXISTS `tb_agentmoneylog`;
CREATE TABLE `tb_agentmoneylog` (
  `AGENTMONEYLOG_ID` varchar(100) NOT NULL,
  `AGENT_MONEY` varchar(255) DEFAULT NULL COMMENT '资金变动数额正数就是充值负数就是购买',
  `AGENT_REASON` varchar(255) DEFAULT NULL COMMENT '资金变动原因',
  `AGENTUSERID` varchar(255) DEFAULT NULL COMMENT '代理商ID',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`AGENTMONEYLOG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_agentmoneylog
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_bussinessactivity`
-- ----------------------------
DROP TABLE IF EXISTS `tb_bussinessactivity`;
CREATE TABLE `tb_bussinessactivity` (
  `BUSSINESSACTIVITY_ID` varchar(100) NOT NULL,
  `ACTIVITYNAME` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `CONDITIONVALUE` varchar(255) DEFAULT NULL COMMENT '条件数',
  `DISCOUNTVALUE` varchar(255) DEFAULT NULL COMMENT '优惠值',
  `TYPE` varchar(255) DEFAULT NULL COMMENT '优惠类型1：满钱包邮；2：满件数包邮；3：买几送几',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家ID',
  PRIMARY KEY (`BUSSINESSACTIVITY_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_bussinessactivity
-- ----------------------------
INSERT INTO `tb_bussinessactivity` VALUES ('a312783690584c16ad6cfccac17dd7de', 'ceshi', '111', '11', '1', '2017-04-21 17:25:37', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_bussinessactivity` VALUES ('b3fc6a90b54e4ee0aa22ca5e27691421', '满100包邮1', '1001', '0', '2', '2017-03-16 16:55:01', '1');

-- ----------------------------
-- Table structure for `tb_ceshi`
-- ----------------------------
DROP TABLE IF EXISTS `tb_ceshi`;
CREATE TABLE `tb_ceshi` (
  `CESHI_ID` varchar(100) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL COMMENT 'sss',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT 'xxx',
  PRIMARY KEY (`CESHI_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ceshi
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_classification`
-- ----------------------------
DROP TABLE IF EXISTS `tb_classification`;
CREATE TABLE `tb_classification` (
  `CLASSIFICATION_ID` varchar(100) NOT NULL,
  `SUPERIOR` varchar(255) DEFAULT NULL COMMENT '上级ID(顶级分类为0)',
  `NAME` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家id',
  PRIMARY KEY (`CLASSIFICATION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_classification
-- ----------------------------
INSERT INTO `tb_classification` VALUES ('6c0d78c97b6f4b43b46dc718551e8ce5', 'b42b0e9371b044a7854aea0530f79588', '黑芝麻酱', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_classification` VALUES ('8785b897cb3542059dc960c228ab87fc', 'b42b0e9371b044a7854aea0530f79588', '白芝麻酱', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_classification` VALUES ('b42b0e9371b044a7854aea0530f79588', '0', '普通芝麻酱', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_classification` VALUES ('d8e422f6ad3146e2abb3c1777c9b60c1', '0', '精品芝麻酱', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_classification` VALUES ('f729aa73fc1e4ab497f62adc51f71f28', '0', '胚芽芝麻酱', 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `tb_classificationrelation`
-- ----------------------------
DROP TABLE IF EXISTS `tb_classificationrelation`;
CREATE TABLE `tb_classificationrelation` (
  `CLASSIFICATIONRELATION_ID` varchar(100) NOT NULL,
  `COMMODITY_ID` varchar(255) DEFAULT NULL COMMENT '商品ID',
  `CLASSIFICATION_ID` varchar(255) DEFAULT NULL COMMENT '分类ID',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家id',
  PRIMARY KEY (`CLASSIFICATIONRELATION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_classificationrelation
-- ----------------------------
INSERT INTO `tb_classificationrelation` VALUES ('67b1c6c5589c410583b5033e3dc04c55', '01bbf37bec2d4d2c97bda0c6c8ac79f2', '8785b897cb3542059dc960c228ab87fc', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_classificationrelation` VALUES ('87bc2654fd0d4df6954a2f3dc1f0d3f8', '7d99b4b0c8a6474a9b6b56bef9934200', '6c0d78c97b6f4b43b46dc718551e8ce5', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_classificationrelation` VALUES ('9e7b5998a89e4e1d9b36167809a85f24', '750235c5e84542b9bcb7a66a9c3d4518', '6c0d78c97b6f4b43b46dc718551e8ce5', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_classificationrelation` VALUES ('ac41ff64263541c7b41559323f7b4c4b', '2fd9186fe64e4938994eafad79cbdd0c', '8785b897cb3542059dc960c228ab87fc', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_classificationrelation` VALUES ('afb6f8e448e84537afcc84341b8be22f', 'e26f028cac334c87847457c65acb033e', '8785b897cb3542059dc960c228ab87fc', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_classificationrelation` VALUES ('c2918c79c3b245bd8e9b6b11655d5b8d', '674999c8cffc4b20becbf684a7c1d0f9', '6c0d78c97b6f4b43b46dc718551e8ce5', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_classificationrelation` VALUES ('fefa048fb7394bd894065af51ae0ff7c', 'c43ea471d9bc43399ce49f3aff31581b', '6c0d78c97b6f4b43b46dc718551e8ce5', 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `tb_collection`
-- ----------------------------
DROP TABLE IF EXISTS `tb_collection`;
CREATE TABLE `tb_collection` (
  `COLLECTION_ID` varchar(100) NOT NULL,
  `COMMODITY_ID` varchar(255) DEFAULT NULL COMMENT '商品ID',
  `USERID` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `TYPE` int(11) DEFAULT '1' COMMENT '类型(1:收藏;2:足迹)',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家id',
  PRIMARY KEY (`COLLECTION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_collection
-- ----------------------------
INSERT INTO `tb_collection` VALUES ('1ecfb6780b8041ee9a07147468ec02c4', '7d99b4b0c8a6474a9b6b56bef9934200', '1', '2017-03-16 10:58:27', '2', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_collection` VALUES ('360e40af19774594ba77f4d335e71966', '750235c5e84542b9bcb7a66a9c3d4518', '1', '2017-03-16 21:06:48', '2', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_collection` VALUES ('392d3fe9ff354ddea9ecf8213ba07b52', 'e26f028cac334c87847457c65acb033e', '1', '2017-03-16 19:47:47', '2', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_collection` VALUES ('8d5a85aa8d014e1b8fc7a5e25c1ca738', '750235c5e84542b9bcb7a66a9c3d4518', '1', '2017-03-27 15:08:11', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_collection` VALUES ('8f920c03a55d4f51a5191eb219910d45', '01bbf37bec2d4d2c97bda0c6c8ac79f2', '1', '2017-03-15 19:56:54', '2', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_collection` VALUES ('cb197d574623427cb5df9de39c58f19b', 'c43ea471d9bc43399ce49f3aff31581b', '1', '2017-03-16 21:30:25', '2', 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `tb_commodity`
-- ----------------------------
DROP TABLE IF EXISTS `tb_commodity`;
CREATE TABLE `tb_commodity` (
  `COMMODITY_ID` varchar(100) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `NUMBER` varchar(255) DEFAULT NULL COMMENT '商品货号',
  `PRICE` double(55,0) DEFAULT NULL COMMENT '售价',
  `STOCK` int(11) DEFAULT NULL COMMENT '库存',
  `WEIGHT` double(11,0) DEFAULT NULL COMMENT '重量',
  `VOLUME` double(255,0) DEFAULT NULL COMMENT '体积',
  `LOCATION` varchar(255) DEFAULT NULL COMMENT '所在地',
  `FREIGHTTEMPLATE` varchar(255) DEFAULT NULL COMMENT '运费模板',
  `PERCENTAGECOMMISSIONFIR` varchar(255) DEFAULT NULL COMMENT '一级分佣比例',
  `PERCENTAGECOMMISSIONSEC` varchar(255) DEFAULT NULL COMMENT '二级分佣比例',
  `TYPE` int(11) DEFAULT NULL COMMENT '上架模式(0:手动上架;1:立即上架)',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `DETAIL` longtext COMMENT '商品详情',
  `SALENUM` int(11) DEFAULT '0' COMMENT '销量',
  `GUIGE` longtext COMMENT '所选规则',
  `BUSSINESSACTIVITY_ID` varchar(255) DEFAULT NULL COMMENT '商家活动ID',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家id',
  PRIMARY KEY (`COMMODITY_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_commodity
-- ----------------------------
INSERT INTO `tb_commodity` VALUES ('01bbf37bec2d4d2c97bda0c6c8ac79f2', '白芝麻酱', '00000000', '15', '0', '0', '0', '13000000', '429309e433d8408a98d6a677b0971d66', '35', '0', '1', '2017-03-14 17:53:31', '<p><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/c1c710f85fd44bd0821e71ba643a7322.jpg\" style=\"width: 640px; height: 640px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/d14b25be87d44510a1fe9e1cc657471a.jpg\" style=\"width: 640px; height: 640px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/ec6bbddb87aa4e4eac137c9e34d72e71.jpg\" style=\"width: 640px; height: 643px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/643e8b908d514465966cbd2a4c089a9f.jpg\" style=\"width: 640px; height: 643px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/dbacf3f5ca4d45c9b517452b3710b1c7.jpg\" style=\"width: 640px; height: 643px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/dc3a459a26bc438f8a5ec249bbabfa74.jpg\" style=\"width: 640px; height: 643px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/c3caac93db57468ebc81bd10acd3e9fa.jpg\" style=\"width: 640px; height: 643px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/1d060ce5ea404831966cef1d88cbf981.jpg\" style=\"width: 640px; height: 643px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/689168345b784dada4c811ba23423088.jpg\" style=\"width: 640px; height: 643px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/be351bc3c893483c9829736ad6d1b76d.jpg\" style=\"width: 640px; height: 643px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/c0e100d0e1ec4672b60b2d8f52b6d628.jpg\" style=\"width: 640px; height: 643px;\" /></p>\r\n', '0', null, 'b3fc6a90b54e4ee0aa22ca5e27691421', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodity` VALUES ('674999c8cffc4b20becbf684a7c1d0f9', '炒熟白芝麻 浓香金芝麻农家黑芝麻 小袋即食型 烘培原料 干净饱满', '130118010165', '14', '19940', '0', '0', '11000000', '429309e433d8408a98d6a677b0971d66', '35', '35', '1', '2017-03-14 15:07:51', '<p><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/db89b6c490154b85aa47600c357b6243.jpg\" style=\"width: 750px; height: 947px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/7e3cb60d04c44ff49182ea4d6a9bd303.jpg\" style=\"width: 750px; height: 947px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/2d5fad86d646470481cc7a61b5e6119d.jpg\" style=\"width: 750px; height: 948px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/31a79d93584e4d6a8ff3a049ef230bfc.jpg\" style=\"width: 750px; height: 947px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/886372b852cc49028f25fe7af509d3c3.jpg\" style=\"width: 750px; height: 947px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/39fd8f1212b44813824c413215929332.jpg\" style=\"width: 750px; height: 947px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/6a664a68cc3b41ad829dc58eb473c925.jpg\" style=\"width: 750px; height: 948px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/ad276a10ffd040db9f898e6b2e1d1188.jpg\" style=\"width: 750px; height: 947px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/bd6990b9408448878e72c9a392df62e9.jpg\" style=\"width: 750px; height: 947px;\" /></p>\r\n', '0', '742e98bef3ae4ca9a69ace6a3df8fd08', null, 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodity` VALUES ('750235c5e84542b9bcb7a66a9c3d4518', '【天天特价】100%纯黑白芝麻酱 2瓶 进口无添加 宝宝孕妇补钙', '130118010165', '26', '1859', '0', '0', '13000000', '429309e433d8408a98d6a677b0971d66', '35', '35', '1', '2017-03-14 14:25:26', '<p><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/3f0ad96e8c0944f9920240979a5b32a9.jpg\" style=\"width: 750px; height: 754px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/d5f7a3495c20439abc159c70443d36c1.jpg\" style=\"width: 750px; height: 754px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/51d5d25776534af6b913fdecad0cb682.jpg\" style=\"width: 750px; height: 754px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/f244092e9e66462bb59f2a4418ed92d9.jpg\" style=\"width: 750px; height: 754px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/420511f74b5c4424b1a33b741c7f80e4.jpg\" style=\"width: 750px; height: 754px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/8a663887c22641c38febcca301a15e7e.jpg\" style=\"width: 750px; height: 754px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/9749bc6e795644ed898ffc695f368aa9.jpg\" style=\"width: 750px; height: 754px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/b9ba4a79a57f44c08a7f6340c813ba31.jpg\" style=\"width: 750px; height: 754px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/906bd4b72b9a4c15b12a7de585b0b990.jpg\" style=\"width: 750px; height: 754px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/94318de4724742e99a0f52a9f8af4c07.jpg\" style=\"width: 750px; height: 754px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/ede219f11a2c44b783a166822ec75281.jpg\" style=\"width: 750px; height: 754px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/621a6320ced74fbaac7c6278cac4c914.jpg\" style=\"width: 750px; height: 754px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/4ebf79ef4b3546a8a6d31d20e353c1f9.jpg\" style=\"width: 750px; height: 754px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/d7077481c95942338678b5fa16a6798a.jpg\" style=\"width: 750px; height: 754px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/8bb05e1b585547acbe55022787bb0b6e.jpg\" style=\"width: 750px; height: 510px;\" /></p>\r\n', '0', 'aff66816b4a74384a4a1a0f2fd407a9c', null, 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodity` VALUES ('7d99b4b0c8a6474a9b6b56bef9934200', '巴拉圭黑芝麻熟即食小包装500g送40g黑芝麻试吃乌发', '130118010165', '35', '50340', '0', '0', '13000000', '429309e433d8408a98d6a677b0971d66', '35', '35', '1', '2017-03-14 15:11:00', '<p><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/aa4d14cfafb347648e5b11c508e5ad7f.jpg\" style=\"width: 750px; height: 163px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/4234016821b5404ab17f2b431a286c8a.jpg\" style=\"width: 750px; height: 250px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/3d6dbbcafedd4b9586340bfd92b34f14.jpg\" /></p>\r\n', '0', '723628169b8e4b649c0b1a0877d4d1c8', null, 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodity` VALUES ('c43ea471d9bc43399ce49f3aff31581b', '【天天特价】黑芝麻酱孕妇宝宝食用无添加石磨纯正天然进口芝麻', '130118010165', '16', '1301', '0', '0', '13000000', '429309e433d8408a98d6a677b0971d66', '35', '35', '1', '2017-03-14 11:13:04', '<p><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/ce9e047ba5fd49c7a5ab8551a0640d13.jpg\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/426ce7d3e59947f3ab6de78b54d30e4c.jpg\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/2be987a3b42e4a2a8af124475dee2d40.jpg\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/f2cf748438104c5ead04e6ebc8d7d2da.jpg\" /></p>\r\n', '0', null, null, 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodity` VALUES ('e26f028cac334c87847457c65acb033e', '纯芝麻酱正宗石磨脱皮进口有机250克火锅拌饭热调料', '130118010165', '17', '98950', '0', '0', '13000000', '429309e433d8408a98d6a677b0971d66', '35', '35', '1', '2017-03-14 15:20:09', '<p><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/9f7e6b7704e64343b5d12540eddea2e5.jpg\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/60fd5cd42e4148c1b7038ea9b1c3c7c4.jpg\" style=\"width: 750px; height: 780px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/050ad3ef0a3340609fafaeb3f58105c1.jpg\" style=\"width: 750px; height: 573px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/c2378dc6deb34a8b979fedba4ba299c0.jpg\" style=\"width: 750px; height: 705px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/36b8cce6f9bb43d38214f46f2ec06c35.jpg\" style=\"width: 750px; height: 789px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/03598c7f900c445aab4d4f69f09265a7.jpg\" style=\"width: 750px; height: 825px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/c7190d72dd754ca2bf6f3ab860f4d400.jpg\" style=\"width: 750px; height: 441px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/72584a02c6ed4bd2b5a433748bb53b88.jpg\" style=\"width: 750px; height: 753px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/2ce073f2d8854e36bcab67b9e4aa0931.jpg\" style=\"width: 750px; height: 729px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/326f148eeb0f49de8a419e424c2b22c7.jpg\" style=\"width: 750px; height: 993px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/578ee8c2dd8a455d91b3873ad10d4965.jpg\" style=\"width: 750px; height: 552px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/b1fc39461cd54f63b2ab0611d0e92561.jpg\" style=\"width: 750px; height: 501px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/f7dd3f1a5a154337899d0a6cba651379.jpg\" style=\"width: 750px; height: 498px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/33dc95efcc3b47eb9f645cb7df016d8a.jpg\" style=\"width: 750px; height: 496px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/9cddb2b03fdb4c0498fc18d3b0692309.jpg\" style=\"width: 750px; height: 499px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/b629fd19f7e24eb9b2c3f8afc975d1c7.jpg\" style=\"width: 750px; height: 386px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/6bdb2d63e51a4d11880942622a50d197.jpg\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/e846ac2301224a6291e0f6b53c3ec29e.jpg\" style=\"width: 750px; height: 522px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/bea1eb5b0b4d481b97151fe7f469a211.jpg\" style=\"width: 750px; height: 792px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/71e31188a019417c832cf772d60e2140.jpg\" style=\"width: 750px; height: 408px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/aa6c0235693141c289576751f8d550db.jpg\" style=\"width: 750px; height: 276px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/3db24ad311e8466aabfa5180eb2f55eb.jpg\" style=\"width: 750px; height: 275px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/12f17ef83bec4460ae2fb3ee4738a6e4.jpg\" style=\"width: 750px; height: 308px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/fd717ff5986f412a8c40239975350bac.jpg\" style=\"width: 750px; height: 286px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/56dfad73a9a947a19cc92f80703fd2fe.jpg\" style=\"width: 750px; height: 317px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/b2fe609f8fb34f5ba4d3db7b1118f4d6.jpg\" style=\"width: 750px; height: 456px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/854c622731884b589c129efd1ae2d0ca.jpg\" style=\"width: 750px; height: 346px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/94202a474eda4e4a9abf1043cbb9f189.jpg\" style=\"width: 750px; height: 532px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/2f2b2266ff8d4d76a0420b8593759e6b.jpg\" style=\"width: 750px; height: 391px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/78b0e878472342f683534c67af7490e4.jpg\" style=\"width: 750px; height: 368px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/09fc456028524a02a58ef0e9bcab8bad.jpg\" style=\"width: 750px; height: 308px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/2ce561a6934344d1b71d303cc8bb0c01.jpg\" style=\"width: 750px; height: 202px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/68cdf0546ee442b28bf7ee78f349b0fe.jpg\" style=\"width: 750px; height: 503px;\" /><img alt=\"\" src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/20170314/cba3708cbeee45a68be1a25cf7604bdb.jpg\" style=\"width: 750px; height: 552px;\" /></p>\r\n', '0', '11c51ea165a147159069d6e8dde01d53', null, 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `tb_commodityimg`
-- ----------------------------
DROP TABLE IF EXISTS `tb_commodityimg`;
CREATE TABLE `tb_commodityimg` (
  `COMMODITYIMG_ID` varchar(100) NOT NULL,
  `COMMODITY_ID` varchar(255) DEFAULT NULL COMMENT '商品ID',
  `IMGURL` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家id',
  PRIMARY KEY (`COMMODITYIMG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_commodityimg
-- ----------------------------
INSERT INTO `tb_commodityimg` VALUES ('070de32b9c65459cb2170e93ca666ba1', 'c43ea471d9bc43399ce49f3aff31581b', 'upload/carousel/20170314/df1497fab4b34661ad5c4cd49b487415.jpg', '2017-03-14 11:13:34', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('11eca81147cb4fee9c62d13bff0de50d', '7d99b4b0c8a6474a9b6b56bef9934200', 'upload/carousel/20170314/483f2639eb0f47a1945024be2e658315.jpg', '2017-03-14 15:09:22', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('178b3781ba844e5498e141bff3059629', 'e26f028cac334c87847457c65acb033e', 'upload/carousel/20170314/9efa534ff091473893e6863790cc9949.jpg', '2017-03-14 15:13:25', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('181d5dc7129043188351e497e77b358f', '674999c8cffc4b20becbf684a7c1d0f9', 'upload/carousel/20170314/118a41190f534c7bbb98de5ed9df99ff.jpg', '2017-03-14 15:03:12', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('1bc16a47f75945a38f798fe78479d1c2', '750235c5e84542b9bcb7a66a9c3d4518', 'upload/carousel/20170314/fd5d3f7d9fec43359bf16534b9acfe0c.jpg', '2017-03-14 14:22:10', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('32f52d6c051a4ddea46440493d3cab7a', 'e26f028cac334c87847457c65acb033e', 'upload/carousel/20170314/efaf75496950481d80d952e911842131.jpg', '2017-03-14 15:13:24', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('3b28c616676f4d06ad72dc0a9287b6f4', '01bbf37bec2d4d2c97bda0c6c8ac79f2', 'upload/carousel/20170314/a000e0575d0942c08b558e0ef65aa17a.jpg', '2017-03-14 17:51:16', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('3b3252834a3b400c8053e08aebe2b709', '674999c8cffc4b20becbf684a7c1d0f9', 'upload/carousel/20170314/7430e802066a4300a9c6245cb43b9012.jpg', '2017-03-14 14:29:03', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('3f4c86489218406db540dc9a1697c773', '674999c8cffc4b20becbf684a7c1d0f9', 'upload/carousel/20170314/a1d1ac6d1c14463fb591c00cfcf8ac80.jpg', '2017-03-14 14:29:02', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('4f1f2dc6d0c84512a0785911b5179713', '7d99b4b0c8a6474a9b6b56bef9934200', 'upload/carousel/20170314/45ab360431c84679a52085e2ba5edd49.jpg', '2017-03-14 15:09:16', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('570d289927964d30b38d3ff0389c7b19', '674999c8cffc4b20becbf684a7c1d0f9', 'upload/carousel/20170314/b56eadf22e29454eaf536ca86c382c20.jpg', '2017-03-14 14:29:03', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('5bdc2db58a9048eba27ba9e180c7b877', '674999c8cffc4b20becbf684a7c1d0f9', 'upload/carousel/20170314/1f4570e6a1224075ae65e13da35e3e62.jpg', '2017-03-14 14:29:02', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('5c3904274aac48e782f83dd8eec33317', '674999c8cffc4b20becbf684a7c1d0f9', 'upload/carousel/20170314/980c91cc3ec6461aa8ab52ab08bf1705.jpg', '2017-03-14 15:03:14', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('61bc5b64bcde45a9a5d0c209330670d4', '674999c8cffc4b20becbf684a7c1d0f9', 'upload/carousel/20170314/d049b2f0716e44bd89e0269b69b7ec31.jpg', '2017-03-14 15:03:14', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('6bc0eb59258b46d2b288028485547ee0', '01bbf37bec2d4d2c97bda0c6c8ac79f2', 'upload/carousel/20170314/d40d68ef7a5748409de6a0a51725cce6.jpg', '2017-03-14 17:51:16', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('710c573069624eb88b27633063ea7395', 'c43ea471d9bc43399ce49f3aff31581b', 'upload/carousel/20170314/c5eb8fa193e94cdca24ebd2ad3a520b5.jpg', '2017-03-14 13:35:44', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('7829753e8ae7451d9fd06bb718345081', '674999c8cffc4b20becbf684a7c1d0f9', 'upload/carousel/20170314/8d2efd0977cf42dfa30d05182634c80e.jpg', '2017-03-14 15:03:13', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('7c770cbf46224ab48e769d8c62573f99', '2fd9186fe64e4938994eafad79cbdd0c', 'upload/carousel/20170314/7380e387561840f89f420bbc075b411e.jpg', '2017-03-14 09:26:15', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('9788f49993be4cd6bc0281e81b4e7883', 'e26f028cac334c87847457c65acb033e', 'upload/carousel/20170314/44e50361fb54447284aa0ae45baf4277.jpg', '2017-03-14 15:13:24', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('a3274261bccb4a6aad935edc7c1b40c4', '750235c5e84542b9bcb7a66a9c3d4518', 'upload/carousel/20170314/634c6c63b7364523a00ba6c529d07b87.jpg', '2017-03-14 14:22:09', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('a798abaec7854ccab9efe465bdba9a8a', '01bbf37bec2d4d2c97bda0c6c8ac79f2', 'upload/carousel/20170314/c4cfc3bc38774d51afb6b6175b4b3ebc.jpg', '2017-03-14 17:51:08', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('cdceeecd2dfa4c958965ce0737a1e5ef', 'c43ea471d9bc43399ce49f3aff31581b', 'upload/carousel/20170314/3619983a7b064303ae28252f3515e7c4.jpg', '2017-03-14 11:13:35', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('db75935cc4c34d48a03efb6453ab4cfe', '7d99b4b0c8a6474a9b6b56bef9934200', 'upload/carousel/20170314/1e745d3366de4f95aa8909661ead4ed7.jpg', '2017-03-14 15:09:18', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('dd5a5eebd8a047faaaeb930e6f50c46a', '674999c8cffc4b20becbf684a7c1d0f9', 'upload/carousel/20170314/5ef28fc60791435bbd022cd3960d7786.jpg', '2017-03-14 14:29:02', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('ddbfff9673fa4f35b75599dd891ba426', '750235c5e84542b9bcb7a66a9c3d4518', 'upload/carousel/20170314/2f9fe3aa26ed44c99d5b95b2f3879e8a.jpg', '2017-03-14 14:22:10', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('df81331c0c2141f58b8f35e2d645cf9c', '7d99b4b0c8a6474a9b6b56bef9934200', 'upload/carousel/20170314/5317690ee0914df8b94f13f1176f4450.jpg', '2017-03-14 15:09:19', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('e11eb1d355e047d5bc4910b5bb025354', 'e26f028cac334c87847457c65acb033e', 'upload/carousel/20170314/a2c7df4eda2e4a48b60f92cf6bf79587.jpg', '2017-03-14 15:13:26', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('e877fdeab4cf48249afe2618209b8575', 'e26f028cac334c87847457c65acb033e', 'upload/carousel/20170314/ee364342d41048c797fb8c37e811b898.jpg', '2017-03-14 15:13:25', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('e9c04366976a4ca0a563e2258c756975', '7d99b4b0c8a6474a9b6b56bef9934200', 'upload/carousel/20170314/d1c397d41395414691db654020811d27.jpg', '2017-03-14 15:09:19', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('f0389c9eb0fa4ea0a688a0eddc219b38', 'c43ea471d9bc43399ce49f3aff31581b', 'upload/carousel/20170314/c26813ab32024f6daabf45ad5cfe1012.jpg', '2017-03-14 13:35:44', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('f306272129d540aca452c808700fefaf', 'c43ea471d9bc43399ce49f3aff31581b', 'upload/carousel/20170314/3a23125e6a42488cb29f2040578ab5bf.jpg', '2017-03-14 13:35:43', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('f6044b23b2ed42f49c81b17fae887b76', 'c43ea471d9bc43399ce49f3aff31581b', 'upload/carousel/20170314/759404b24fd04c26837afbcf3b8e7bf0.jpg', '2017-03-14 13:35:43', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('f9dba830a41948a58506f9f697e8ceb8', '674999c8cffc4b20becbf684a7c1d0f9', 'upload/carousel/20170314/c9fa5b44eb3948d9a53bcef66698d270.jpg', '2017-03-14 15:03:13', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityimg` VALUES ('fa562206e8ac4482a07ccad23ae429aa', '750235c5e84542b9bcb7a66a9c3d4518', 'upload/carousel/20170314/88dd527767ee4a828c35d2eebbcc81ea.jpg', '2017-03-14 14:22:09', 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `tb_commodityspecification`
-- ----------------------------
DROP TABLE IF EXISTS `tb_commodityspecification`;
CREATE TABLE `tb_commodityspecification` (
  `COMMODITYSPECIFICATION_ID` varchar(100) NOT NULL,
  `COMMODITY_ID` varchar(255) DEFAULT NULL COMMENT '商品ID',
  `SPECIFICATIONSLIST` longtext COMMENT '规格键值对集合',
  `STOCK` int(255) DEFAULT NULL COMMENT '库存',
  `PRICE` double(11,0) NOT NULL COMMENT '价格',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家id',
  PRIMARY KEY (`COMMODITYSPECIFICATION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_commodityspecification
-- ----------------------------
INSERT INTO `tb_commodityspecification` VALUES ('2948f8c958d74493b109f08ab3edc101', '01bbf37bec2d4d2c97bda0c6c8ac79f2', '7904cdc4fbe0464fbb06e62af1372a0c', '10000', '15', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityspecification` VALUES ('8bee1642bb38461cadaf4febf9228510', '2fd9186fe64e4938994eafad79cbdd0c', '10824d2d34c845d288449eaf230982cf;10824d2d34c845d288449eaf230982cf', '10', '100', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityspecification` VALUES ('92aacbc043fb419591520c040fad99b0', 'e26f028cac334c87847457c65acb033e', '11c51ea165a147159069d6e8dde01d53', '98950', '17', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityspecification` VALUES ('bfb6216314f34c5e8fe37dea6b378905', 'c43ea471d9bc43399ce49f3aff31581b', '73ce75da06204d5a85e971ad67cfe7a8', '1301', '16', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityspecification` VALUES ('c4fbaecbbb5f46d1b85afa8e2fb43a2d', '750235c5e84542b9bcb7a66a9c3d4518', 'aff66816b4a74384a4a1a0f2fd407a9c', '1859', '26', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityspecification` VALUES ('dec3309eedf04db9a0ee11fc1498351c', '674999c8cffc4b20becbf684a7c1d0f9', '742e98bef3ae4ca9a69ace6a3df8fd08', '19940', '14', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityspecification` VALUES ('f23dcfb9dcb9451693c21ee2432507e5', '7d99b4b0c8a6474a9b6b56bef9934200', '723628169b8e4b649c0b1a0877d4d1c8', '50344', '35', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_commodityspecification` VALUES ('ff8a1cbc67a14dc69ea4b679113161b0', '2fd9186fe64e4938994eafad79cbdd0c', '10824d2d34c845d288449eaf230982cf;10824d2d34c845d288449eaf230982cf', '20', '50', 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `tb_distributorlog`
-- ----------------------------
DROP TABLE IF EXISTS `tb_distributorlog`;
CREATE TABLE `tb_distributorlog` (
  `DISTRIBUTORLOG_ID` varchar(100) NOT NULL,
  `ORDERID` varchar(255) DEFAULT NULL COMMENT '订单号',
  `COMMODITYID` varchar(255) DEFAULT NULL COMMENT '商品ID',
  `COMMODITYNUM` int(11) DEFAULT NULL COMMENT '商品件数',
  `USERID` varchar(255) DEFAULT NULL COMMENT '消费用户ID',
  `USERPHONE` varchar(255) DEFAULT NULL COMMENT '消费用户手机号',
  `MONEY` double(255,0) DEFAULT NULL COMMENT '消费金额',
  `DISTRIBUTORUSERIDFIR` varchar(255) DEFAULT NULL COMMENT '一级分销商用户ID',
  `DISTRIBUTORUSERPHONEFIR` varchar(255) DEFAULT NULL COMMENT '一级分销商手机号',
  `DISTRIBUTORMONEYFIR` double(255,0) DEFAULT NULL COMMENT '一级分销商所得金额',
  `DISTRIBUTORUSERIDSEC` varchar(255) DEFAULT NULL COMMENT '二级分销商用户ID',
  `DISTRIBUTORUSERPHONESEC` varchar(255) DEFAULT NULL COMMENT '二级分销商手机号',
  `DISTRIBUTORMONEYSEC` double(255,0) DEFAULT NULL COMMENT '二级分销商所得金额',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家ID',
  PRIMARY KEY (`DISTRIBUTORLOG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_distributorlog
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_expressorder`
-- ----------------------------
DROP TABLE IF EXISTS `tb_expressorder`;
CREATE TABLE `tb_expressorder` (
  `EXPRESSORDER_ID` varchar(255) NOT NULL COMMENT '快递和订单关系表主键',
  `USERADDRESS_ID` varchar(255) DEFAULT NULL COMMENT '用户快递信息ID',
  `ORDERID` varchar(255) DEFAULT NULL COMMENT '订单ID',
  `EXPRESSNO` varchar(255) DEFAULT NULL COMMENT '快递号',
  `EXPRESSCOMPANY` varchar(255) DEFAULT NULL COMMENT '快递公司编码',
  `EXPRESSCOMPANYNAME` varchar(255) DEFAULT NULL COMMENT '快递公司名称',
  `RETURNEXPRESSAGENAME` varchar(255) DEFAULT NULL COMMENT '退货快递公司名称',
  `RETURNEXPRESSAGENO` varchar(255) DEFAULT NULL COMMENT '退货快递号',
  `RETURNEXPRESSAGEURL` varchar(500) DEFAULT NULL COMMENT '退货物流凭证',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`EXPRESSORDER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_expressorder
-- ----------------------------
INSERT INTO `tb_expressorder` VALUES ('1', '1', '0ea27b494071451f85f995edc7244d3b', null, null, null, '测试物流', '666', 'upload/return/card/ca33354328e64f4699f7e6152ccb3bdf.jpg', '2017-03-15 11:11:00');
INSERT INTO `tb_expressorder` VALUES ('193994931bf84688a8f705fc86609a8c', '1', '201703162131255437', null, null, null, null, null, null, null);
INSERT INTO `tb_expressorder` VALUES ('20ee82c341f64888b8e786a7fc5a9f1d', '1', '201703162058499725', null, null, null, null, null, null, null);
INSERT INTO `tb_expressorder` VALUES ('3150703ca3f84890a242f48d36038add', '1', '201703271509047794', null, null, null, null, null, null, null);
INSERT INTO `tb_expressorder` VALUES ('3a3a8fe2c55246eaba221202c77b2af0', '1', '201703151337', '1111', 'ems', 'EMS', null, null, null, '2017-03-15 17:26:06');
INSERT INTO `tb_expressorder` VALUES ('3ad862685cee486a8ba480f5abb18834', '1', '201703162359517397', null, null, null, null, null, null, null);
INSERT INTO `tb_expressorder` VALUES ('4c53b297f4944ab48c8401b2540aff04', '1', '201703162131314901', null, null, null, null, null, null, null);
INSERT INTO `tb_expressorder` VALUES ('7d4ea30d33544baabbd26b8105b4c2f6', '1', '201703271509341542', null, null, null, null, null, null, null);
INSERT INTO `tb_expressorder` VALUES ('aa8be4cca7d34dffb0b47e444f731346', '66930548a9894be1ba5029ad788ba30a', '201704241743318346', null, null, null, null, null, null, null);
INSERT INTO `tb_expressorder` VALUES ('b559588421844f03b2be78f6e7f2a3b3', '66930548a9894be1ba5029ad788ba30a', '201704241707013640', null, null, null, null, null, null, null);
INSERT INTO `tb_expressorder` VALUES ('fe4bc2edc66f40599b749789fe4d88f0', '1', '201703271509068146', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tb_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `tb_feedback`;
CREATE TABLE `tb_feedback` (
  `FEEDBACK_ID` varchar(50) NOT NULL,
  `FEEDBACKVALUE` varchar(500) DEFAULT NULL COMMENT '意见反馈内容',
  `CREATEVIPID` varchar(50) DEFAULT NULL COMMENT '创建人ID',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家id',
  PRIMARY KEY (`FEEDBACK_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='意见反馈';

-- ----------------------------
-- Records of tb_feedback
-- ----------------------------
INSERT INTO `tb_feedback` VALUES ('2f983894c9494e58a5f6c82edc8f25d3', 'asbjkahkj中文啊', '1', '2017-03-14 20:04:06', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_feedback` VALUES ('972428ef6c4a4f28bf84462ece864b03', '意见反馈', '1', '2017-03-16 10:53:38', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_feedback` VALUES ('d04545f8bdbc4bf697002425e4b51ab2', '4112412414141', '1', '2017-04-24 17:27:57', 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `tb_log`
-- ----------------------------
DROP TABLE IF EXISTS `tb_log`;
CREATE TABLE `tb_log` (
  `LOG_ID` varchar(100) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL COMMENT '操作名称',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '操作内容',
  `TYPENAME` varchar(255) DEFAULT NULL COMMENT '操作模块',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '操作时间',
  `createUser` varchar(255) DEFAULT NULL COMMENT '操作人',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家id',
  PRIMARY KEY (`LOG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_log
-- ----------------------------
INSERT INTO `tb_log` VALUES ('002cb62c66984185a0d11fd6a456b707', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 21:54:53', '1', null);
INSERT INTO `tb_log` VALUES ('005080d61f3848db8529af5010b4dcc2', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 17:01:00', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('0060eee0b5264d699c8203bf028dc1c4', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:18:47', '1', null);
INSERT INTO `tb_log` VALUES ('00748de44668451ab716bca562a04871', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:13:09', '1', null);
INSERT INTO `tb_log` VALUES ('00ac89b31e67403584503a5eeb295efe', '查看列表', '查看VipManger列表', 'VipManger', '2017-04-28 14:18:29', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('00b9696a34a4455eaafa5746b4c38c20', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-16 20:45:59', '1', null);
INSERT INTO `tb_log` VALUES ('00d2c9aa05e64b1d81faa1e7c8659e22', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-11 19:20:13', '1', null);
INSERT INTO `tb_log` VALUES ('00e3078527a14323a17be08bbb337e4c', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 15:12:03', '1', null);
INSERT INTO `tb_log` VALUES ('011106ed909f4dd48c9921e793d14e14', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 03:37:28', '1', null);
INSERT INTO `tb_log` VALUES ('0119d3f590834f0389668ef9ade697b9', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 13:52:49', '1', null);
INSERT INTO `tb_log` VALUES ('0123523b5a0c4ddd989c544bd49362d0', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 11:28:20', '1', null);
INSERT INTO `tb_log` VALUES ('01467b7e07394deb8e5ff8145fa8eff8', '新增', '新增LogisticsList', 'LogisticsList', '2017-03-14 11:00:44', '1', null);
INSERT INTO `tb_log` VALUES ('0186c44cf31044e6a0314c040bd3f8d6', '去新增', '去新增Commodityimg页面', 'Commodityimg', '2017-03-14 07:02:55', '1', null);
INSERT INTO `tb_log` VALUES ('019700b3a28f4ce3aa145fa43f19e77d', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-09 19:38:10', '1', null);
INSERT INTO `tb_log` VALUES ('01b32e00a11d4243a9fdd6ebb898d260', '修改', '修改LogisticsList', 'LogisticsList', '2017-03-14 11:01:36', '1', null);
INSERT INTO `tb_log` VALUES ('01bd372ea53445689001562e7a4e2c90', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-15 18:18:50', '1', null);
INSERT INTO `tb_log` VALUES ('01c59546d21e4a58a4a11f6694f48f10', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 20:02:50', '1', null);
INSERT INTO `tb_log` VALUES ('01fdee43d2204b2aacc47cec0ad5e20b', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 16:36:01', '1', null);
INSERT INTO `tb_log` VALUES ('0237ee8342cf42198b5a32a9c9dc1cba', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-16 20:14:06', '1', null);
INSERT INTO `tb_log` VALUES ('023cb779514e472590e55adea5b98ee1', '查看列表', '查看Commodity列表', 'Commodity', '2017-04-24 19:59:28', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('027468a28a6e4c6dbf79e65861d42ca4', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-16 18:16:33', '1', null);
INSERT INTO `tb_log` VALUES ('02862512e1d243d4ae35195fe2b01a82', '修改', '修改PayManagement', 'PayManagement', '2017-05-05 16:58:39', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('028d6535239e4597a56219580e51656f', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 16:09:45', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('02e7ff08cd9c42c89d0d317a066a5ce2', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 10:13:06', '1', null);
INSERT INTO `tb_log` VALUES ('02ea132c775e4d24bf6e8ddab8d300b2', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:26:13', '1', null);
INSERT INTO `tb_log` VALUES ('02fa8cd5adeb4de0aaff8ff195a0625e', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 22:52:18', '1', null);
INSERT INTO `tb_log` VALUES ('03839cd9461245c485c3015e9c7e361f', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 13:49:19', '1', null);
INSERT INTO `tb_log` VALUES ('03875cd505c441ba84e86c01757db45f', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-31 15:50:14', '1', null);
INSERT INTO `tb_log` VALUES ('03b12d89e45e4e32b3a142920fb22b56', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-31 15:50:55', '1', null);
INSERT INTO `tb_log` VALUES ('046afb7c7bf64488ba37f09335043501', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-11 18:09:08', '1', null);
INSERT INTO `tb_log` VALUES ('04811cc49e0e414384bd14a344ce7fdf', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 22:20:20', '1', null);
INSERT INTO `tb_log` VALUES ('04e08b26a31e43ed86ca3e976bed7879', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:24:31', '1', null);
INSERT INTO `tb_log` VALUES ('04e9d8f3877f425a8d859cd06988faea', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-11 18:12:12', '1', null);
INSERT INTO `tb_log` VALUES ('0547ab2194d245c5a699a99ab704c743', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 15:41:43', '1', null);
INSERT INTO `tb_log` VALUES ('0585cc33a8d842cbb20abb06d5992543', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 15:45:22', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('05bccb653fea414189c8f1226bf834b8', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 09:28:38', '1', null);
INSERT INTO `tb_log` VALUES ('05c2e99d41b645f7a78c16919caadb7b', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-04-24 20:00:16', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('06082199bc0a4eef96d32f2fc7855fad', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 14:26:55', '1', null);
INSERT INTO `tb_log` VALUES ('0629f7f79b4648f2b07db024b1bf558c', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-11 18:12:10', '1', null);
INSERT INTO `tb_log` VALUES ('0666176dc2dd468dba392e6876161d62', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 16:09:44', '1', null);
INSERT INTO `tb_log` VALUES ('069baf771b874ad59686f31212e4bbd7', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 20:02:44', '1', null);
INSERT INTO `tb_log` VALUES ('069c4e3f6e0542e38977b050e7834b17', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 11:00:16', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('06dbf742b96740b0b40a7a6137115776', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 11:26:27', '1', null);
INSERT INTO `tb_log` VALUES ('071e8eff44a64ef0b834c653af387d7e', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:09:43', '1', null);
INSERT INTO `tb_log` VALUES ('074034d486df444cad9020d71cd36445', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 14:19:52', '1', null);
INSERT INTO `tb_log` VALUES ('07b69c91208b42eab3fbe805c0d12cf6', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 17:23:34', '1', null);
INSERT INTO `tb_log` VALUES ('086fd988d7b94fe983306e47f13776e9', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 11:01:37', '1', null);
INSERT INTO `tb_log` VALUES ('0886ba0f788943ed813950803d572884', '删除', '删除Specifications', 'Specifications', '2017-03-14 02:25:16', '1', null);
INSERT INTO `tb_log` VALUES ('089ad2e36ae6483b93e3d8ffedf29b9c', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-10 09:19:50', '1', null);
INSERT INTO `tb_log` VALUES ('08e84d918ae444328094640445bf54df', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:40:35', '1', null);
INSERT INTO `tb_log` VALUES ('08ead6e3089848df8533374f5745eb6f', '去新增', '去新增Classification页面', 'Classification', '2017-03-14 09:09:39', '1', null);
INSERT INTO `tb_log` VALUES ('093b932048134d9c84e1af0b94a20000', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 13:26:09', '1', null);
INSERT INTO `tb_log` VALUES ('09a35ef835ca445a8ba3d7a1688ae000', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-08 10:34:16', '1', null);
INSERT INTO `tb_log` VALUES ('09a844142755457db6487b31e2b2e578', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 17:24:09', '1', null);
INSERT INTO `tb_log` VALUES ('09c8d71f7d714e41be5078f0e01c4569', 'hongbaosession', '登录微红包', '扫码获取session', '2017-05-04 14:39:31', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('0a046ad2bf7941e5a62c55ab78b79c66', '修改', '修改OrderManger', 'OrderManger', '2017-03-10 16:51:30', '1', null);
INSERT INTO `tb_log` VALUES ('0a068869128b48c7bfa77f8db8281370', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:50:20', '1', null);
INSERT INTO `tb_log` VALUES ('0a1c656ea2964858a15cc8d29528da6f', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 16:07:16', '1', null);
INSERT INTO `tb_log` VALUES ('0a62ba58c94f46d2865d8f23dc7fa4e7', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-09 14:33:51', '1', null);
INSERT INTO `tb_log` VALUES ('0a7af656d3ae424ba06619658b48281a', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 18:12:42', '1', null);
INSERT INTO `tb_log` VALUES ('0a84068399a14bacb38c3fd361638814', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 22:40:44', '1', null);
INSERT INTO `tb_log` VALUES ('0ae8f9165c144334b87e69ba84716744', '新增', '新增Classification', 'Classification', '2017-03-15 09:33:09', '1', null);
INSERT INTO `tb_log` VALUES ('0b16c5fb292549d1984378c5d687dc55', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:47:02', '1', null);
INSERT INTO `tb_log` VALUES ('0b1b34782d4444c89eeb814687e451f3', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-09 19:42:04', '1', null);
INSERT INTO `tb_log` VALUES ('0b799ce7d5194d46832af03dc264dda9', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 02:25:31', '1', null);
INSERT INTO `tb_log` VALUES ('0bedc623ebac49e8915d6b20902383b8', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-18 14:39:40', '1', null);
INSERT INTO `tb_log` VALUES ('0c9d00be9945458bae2952cc272bfc8a', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 03:36:27', '1', null);
INSERT INTO `tb_log` VALUES ('0ca5a33f36a64ff582d2c208e05409d6', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 11:15:24', '1', null);
INSERT INTO `tb_log` VALUES ('0ccef0cbf4d945b58ba4c8c8616d944a', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-16 17:36:33', '1', null);
INSERT INTO `tb_log` VALUES ('0cdc90ef0c54486b84bb534a2768d475', '新增', '新增BussinessActivity', 'BussinessActivity', '2017-04-24 19:59:09', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('0d1a0f13d3904f2c867ea53ddbed4995', '新增', '新增Specifications', 'Specifications', '2017-03-13 22:45:05', '1', null);
INSERT INTO `tb_log` VALUES ('0d218be0eb834aaf88d193ead4a10b67', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 10:59:52', '1', null);
INSERT INTO `tb_log` VALUES ('0d592eb038544071a1bea73b07d64fcf', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 14:02:10', '1', null);
INSERT INTO `tb_log` VALUES ('0d59c352d2d74f29b6e6a8da3ffbda49', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:28:40', '1', null);
INSERT INTO `tb_log` VALUES ('0d6f1b39515e44aeb4e79f647259cfac', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-16 20:13:58', '1', null);
INSERT INTO `tb_log` VALUES ('0d72ec04398f4ba5ad36e95fb3f65e4a', '去新增', '去新增PayManagement页面', 'PayManagement', '2017-04-28 11:08:05', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('0dfe21107b3147fbb95611182be0d494', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:46:37', '1', null);
INSERT INTO `tb_log` VALUES ('0e123ce73922483c9cd3326b065e7c7b', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:51:45', '1', null);
INSERT INTO `tb_log` VALUES ('0e7305fd2849450eaa677cca69e7fdfe', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-16 17:23:36', '1', null);
INSERT INTO `tb_log` VALUES ('0e9d7f66a47a48878fc8d24c3473cbb0', '去新增', '去新增PayManagement页面', 'PayManagement', '2017-05-05 16:16:00', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('0eca1be9e742410aa4841a55cec7f7e1', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 17:31:00', '1', null);
INSERT INTO `tb_log` VALUES ('0f6962002ac144c3a8b9cd4ea77e5734', '修改', '修改Specifications', 'Specifications', '2017-03-14 03:23:38', '1', null);
INSERT INTO `tb_log` VALUES ('0f6f3c6973a24860a0895e833d7ea38d', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:09:48', '1', null);
INSERT INTO `tb_log` VALUES ('0f78b68462e14b25a83f6c268b054976', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-04-24 20:00:24', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('0fae6f26fecb4425b6615e0e6ef46ef4', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:41:22', '1', null);
INSERT INTO `tb_log` VALUES ('0fc9dfe8b1d84969b5da5a292364fd89', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:47:26', '1', null);
INSERT INTO `tb_log` VALUES ('0fcb152f25ff44999adce6a37d0e65bb', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:15:53', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('10685d87692e4dc0be17f4bab96875af', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 03:34:00', '1', null);
INSERT INTO `tb_log` VALUES ('10e1b3a2da7b4dbe8bfd218e221cc85a', '去修改', '去修改Classification页面', 'Classification', '2017-04-24 19:59:16', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('10f885be499747838eeb961e94613c45', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-15 15:18:57', '1', null);
INSERT INTO `tb_log` VALUES ('112276ab5335459289f3f024bf2f7dab', '去新增', '去新增Classification页面', 'Classification', '2017-03-14 09:10:01', '1', null);
INSERT INTO `tb_log` VALUES ('114976acc7f741be9fcbc54021782a8b', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 17:26:25', '1', null);
INSERT INTO `tb_log` VALUES ('11759580afa84a22a5673351629537ca', '修改', '修改Specifications', 'Specifications', '2017-03-14 14:21:43', '1', null);
INSERT INTO `tb_log` VALUES ('11d1c63f2ea149fd99f2734d4b38a2d7', '去新增', '去新增BussinessActivity页面', 'BussinessActivity', '2017-04-24 20:08:11', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('11d7c424b5b74112921652164c944f40', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:26:42', '1', null);
INSERT INTO `tb_log` VALUES ('11daad260bb946c08511f4cacdbc7100', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 03:37:43', '1', null);
INSERT INTO `tb_log` VALUES ('1219e94f54254e17be163857926aa86f', '去新增', '去新增LogisticsList页面', 'LogisticsList', '2017-03-14 11:00:06', '1', null);
INSERT INTO `tb_log` VALUES ('123c1098d30c4f7fa813f72452015e97', '新增', '新增Specifications', 'Specifications', '2017-03-14 09:27:41', '1', null);
INSERT INTO `tb_log` VALUES ('12b8789cb32844f4b01e9cbf98d0efdf', 'hongbaosession', '登录微红包', '扫码获取session', '2017-05-03 10:49:55', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('1331a6ca06f4478b95ff8a85e209ed9a', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:55:11', '1', null);
INSERT INTO `tb_log` VALUES ('1338fdf1cee14e2d84e3abe2093c5f4b', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 21:44:37', '1', null);
INSERT INTO `tb_log` VALUES ('136d579fd64a405b8a9165f2f3c5a351', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-05-05 15:06:09', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('137d1732051143559a72abe45f062b89', '去修改', '去修改FeedBack页面', 'FeedBack', '2017-03-16 15:23:26', '1', null);
INSERT INTO `tb_log` VALUES ('13c20093a677432090d01519d73cf154', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-10 15:36:32', '1', null);
INSERT INTO `tb_log` VALUES ('1430922331d342c083c3e5ef4225179a', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:30:08', '1', null);
INSERT INTO `tb_log` VALUES ('14674d338eb1441aa0fa51a43359c30b', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:58:12', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('14970f337f834ec582bd7587021f5fe1', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:46:26', '1', null);
INSERT INTO `tb_log` VALUES ('149fa57765c74830a466fc3239056a06', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-13 22:44:59', '1', null);
INSERT INTO `tb_log` VALUES ('14b0ee9db7a744d586dcf42ce4ff79d1', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-04-28 15:47:02', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('14bee45eaada441182dd7e9bac5f2a11', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 14:21:33', '1', null);
INSERT INTO `tb_log` VALUES ('1525d303b94941dab1adc35fb3996a5b', '查看列表', '查看Classification列表', 'Classification', '2017-03-14 17:27:32', '1', null);
INSERT INTO `tb_log` VALUES ('15262302809a437c8bcb65cce73811f0', '查看列表', '查看FeedBack列表', 'FeedBack', '2017-05-05 15:10:12', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('152db165a31a4a3fafd775f523fb9701', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 02:39:20', '1', null);
INSERT INTO `tb_log` VALUES ('157795240f0b4dc28b5e6d400cc9af30', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-13 22:24:58', '1', null);
INSERT INTO `tb_log` VALUES ('15a88bd3120c41808eacf9d0fcf9837d', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-11 18:13:10', '1', null);
INSERT INTO `tb_log` VALUES ('15d3d97320944ad78464f33c2a75727a', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:01:44', '1', null);
INSERT INTO `tb_log` VALUES ('164dc5a36927447eb189dee91b957390', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-21 15:08:15', '1', null);
INSERT INTO `tb_log` VALUES ('166060ba40274948bb46ef3e031cae08', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:38:24', '1', null);
INSERT INTO `tb_log` VALUES ('16d363280011456db03365608a9d59b4', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-31 11:57:53', '1', null);
INSERT INTO `tb_log` VALUES ('16f90255ec7b4d3d918ab9568446afad', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 15:05:51', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('1730ea06d3f34f26955fc98052942b2c', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 03:37:41', '1', null);
INSERT INTO `tb_log` VALUES ('17aff90ac1c94bc19189f9abb30487e0', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:34:44', '1', null);
INSERT INTO `tb_log` VALUES ('183997296f7647f087f9f1b3506a7609', '修改', '修改OrderManger', 'OrderManger', '2017-03-10 16:54:24', '1', null);
INSERT INTO `tb_log` VALUES ('18c4b586a7e448d7a0557f7383b98635', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-16 17:26:49', '1', null);
INSERT INTO `tb_log` VALUES ('18cec27b3d454cc885786cf0d34315bb', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:46:22', '1', null);
INSERT INTO `tb_log` VALUES ('1975af5d395b471781b55988b0e3df6c', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:39:45', '1', null);
INSERT INTO `tb_log` VALUES ('19877eb9a56f4306a81ce2af452e4e57', '修改', '修改Commodity', 'Commodity', '2017-03-14 13:53:06', '1', null);
INSERT INTO `tb_log` VALUES ('1991253fc14b43d0ba9f2708b0fba64b', '删除', '删除Commodityimg', 'Commodityimg', '2017-03-14 14:27:15', '1', null);
INSERT INTO `tb_log` VALUES ('19dc986729b748e0ab6ee3675b96f17e', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:26:25', '1', null);
INSERT INTO `tb_log` VALUES ('1a51d70caf0e4085815f8b3ed314e77b', '去新增', '去新增LogisticsList页面', 'LogisticsList', '2017-03-11 18:16:18', '1', null);
INSERT INTO `tb_log` VALUES ('1a5b4f32363742b696ab4f25ce6d6c37', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 20:02:41', '1', null);
INSERT INTO `tb_log` VALUES ('1a68078d2c774072bf5a9ca2b7ea1db5', '修改', '修改editOrderType', 'editOrderType', '2017-03-11 18:09:21', '1', null);
INSERT INTO `tb_log` VALUES ('1b801a4db9cf4a08b54fdad1db7684f1', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 07:10:59', '1', null);
INSERT INTO `tb_log` VALUES ('1bd554dfc9d642ce878e4ced290b90cf', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 11:24:28', '1', null);
INSERT INTO `tb_log` VALUES ('1be776c8ac604d47b18add8412028e8b', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:29:21', '1', null);
INSERT INTO `tb_log` VALUES ('1c1da02951614613ba4cffe953209a94', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:08:29', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('1c69fa94c80b4762ad1a397e77aea3bd', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 11:03:39', '1', null);
INSERT INTO `tb_log` VALUES ('1cbc7ac20e624b93958cad35c5dddec9', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-09 19:43:04', '1', null);
INSERT INTO `tb_log` VALUES ('1cd0e6274ffe46da813855bbe18e58b0', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 17:49:39', '1', null);
INSERT INTO `tb_log` VALUES ('1cecb264730f4c199670dc5116a9612c', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:40:54', '1', null);
INSERT INTO `tb_log` VALUES ('1d075ab8eee2477fbb9685b0073fd643', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:20:38', '1', null);
INSERT INTO `tb_log` VALUES ('1d22e4a351bc40bfb81581313ce61893', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 17:26:06', '1', null);
INSERT INTO `tb_log` VALUES ('1d3da2ec4ea94fd7b3d923d417521068', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-09 19:36:13', '1', null);
INSERT INTO `tb_log` VALUES ('1d71e9008265476a9c739813eea45836', '修改', '修改OrderManger', 'OrderManger', '2017-03-15 17:01:42', '1', null);
INSERT INTO `tb_log` VALUES ('1d8f544635744d3f85d55687f87ef26a', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:22:53', '1', null);
INSERT INTO `tb_log` VALUES ('1df05c69bc9e4830ac2be5bb402dfdca', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-11 14:39:29', '1', null);
INSERT INTO `tb_log` VALUES ('1e1b8094f9f04905a9a1de6c4e3b796b', '新增', '新增Commodity', 'Commodity', '2017-03-14 03:24:05', '1', null);
INSERT INTO `tb_log` VALUES ('1e6ef3f64cfe47ed87c0636f1b996895', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-15 14:21:50', '1', null);
INSERT INTO `tb_log` VALUES ('1e9355a894bc426fa500a537f12ecb51', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:11:55', '1', null);
INSERT INTO `tb_log` VALUES ('1ea7a080c72d450ba2cde56b6900327e', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 11:03:30', '1', null);
INSERT INTO `tb_log` VALUES ('1f1bbd4283f74f99bb0b2af6cb2c700f', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 15:47:00', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('1f1d1d87909847dea01ac87212959536', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 21:20:48', '1', null);
INSERT INTO `tb_log` VALUES ('1f32f14df003479f89f59a629c795fad', '删除', '删除Commodityimg', 'Commodityimg', '2017-03-14 14:27:10', '1', null);
INSERT INTO `tb_log` VALUES ('1f59efc16ee7493695338ca1d1dfcaaf', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 16:15:05', '1', null);
INSERT INTO `tb_log` VALUES ('1f99212502844dbaa80efb4f014932a9', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-31 11:57:07', '1', null);
INSERT INTO `tb_log` VALUES ('1fa0da0c83624ebc8183d75f24d3ee53', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:31:48', '1', null);
INSERT INTO `tb_log` VALUES ('1fba5dcb28db420ab00c94b4d9f3efee', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 20:02:52', '1', null);
INSERT INTO `tb_log` VALUES ('2039ceb036544c0c9c2fd785127bf6db', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-15 17:50:27', '1', null);
INSERT INTO `tb_log` VALUES ('205f0909462849c5911d13b0f6904f1a', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:15:26', '1', null);
INSERT INTO `tb_log` VALUES ('20609fdf307849048979a094ea259596', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 07:08:37', '1', null);
INSERT INTO `tb_log` VALUES ('2090fca12e4d41ec9b1e9b05e0a7f881', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 09:50:34', '1', null);
INSERT INTO `tb_log` VALUES ('209fb1d0568c41daaa9da864a7c97da9', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 06:57:10', '1', null);
INSERT INTO `tb_log` VALUES ('20cb532c78f2453f9d231ad7d92fa8d6', '新增', '新增Specifications', 'Specifications', '2017-03-13 22:45:35', '1', null);
INSERT INTO `tb_log` VALUES ('2104fd1503684d4ba0af2216159cf579', '去新增', '去新增Classification页面', 'Classification', '2017-03-09 15:24:08', '1', null);
INSERT INTO `tb_log` VALUES ('21109a07ce1f4f6fac51ee10188209dd', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:50:53', '1', null);
INSERT INTO `tb_log` VALUES ('2130d3d647104b1ca9fb437230d3ca35', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 07:05:06', '1', null);
INSERT INTO `tb_log` VALUES ('2154153c659b469aabf26b01ee66dfde', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:59:06', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('216a7b7d10764762b4899aab57eb112a', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:27:05', '1', null);
INSERT INTO `tb_log` VALUES ('21a93298f4dc4a0ba017c6e1166cfd65', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 20:02:08', '1', null);
INSERT INTO `tb_log` VALUES ('21caa9bb1e95458e8b37fd9a41434651', '去新增', '去新增Classification页面', 'Classification', '2017-03-14 09:09:48', '1', null);
INSERT INTO `tb_log` VALUES ('2207aa42e3784b8095eae9970f7511c4', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-04-28 16:10:02', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('223878c44ddb4d30ba1ce948cbcc99c4', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-31 15:50:35', '1', null);
INSERT INTO `tb_log` VALUES ('22b5ccf624f24974a6b57de3bb8155e5', '修改', '修改LogisticsList', 'LogisticsList', '2017-03-14 21:50:20', '1', null);
INSERT INTO `tb_log` VALUES ('22d26f53dabc4dcd8b5f925e3b687872', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-16 17:03:06', '1', null);
INSERT INTO `tb_log` VALUES ('2347bb30807048c2968bbfd8cb691211', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 14:15:36', '1', null);
INSERT INTO `tb_log` VALUES ('235782b90f7b456f88cd2d0ccb4c4995', '查看列表', '查看Classification列表', 'Classification', '2017-03-16 19:47:14', '1', null);
INSERT INTO `tb_log` VALUES ('238f480efcf240abac29bbf0961642dd', '修改', '修改PayManagement', 'PayManagement', '2017-05-05 16:24:38', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('23d477fa00ce4402997e728de9a58de6', '修改', '修改PayManagement', 'PayManagement', '2017-04-28 15:55:16', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('23d580fce0984d04b5a06563c0a80b40', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:48:13', '1', null);
INSERT INTO `tb_log` VALUES ('23e1c2a05d144b8e990538a57afdb9f4', '去新增', '去新增Classification页面', 'Classification', '2017-03-09 15:21:17', '1', null);
INSERT INTO `tb_log` VALUES ('23f049c7016b45acaaa380b87a911e6b', '查看列表', '查看Classification列表', 'Classification', '2017-03-31 11:58:07', '1', null);
INSERT INTO `tb_log` VALUES ('2438b4d2ef3d42afa6b7c93f14a46d30', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-04-24 19:59:29', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('2492f12944374e87a902c40126af42d4', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 20:50:01', '1', null);
INSERT INTO `tb_log` VALUES ('249eb9a57cc244239fac9c3b54f2c2d9', '去修改', '去修改BussinessActivity页面', 'BussinessActivity', '2017-04-24 20:07:41', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('24be4e80f9c8420a851322fb3d21bf5b', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 17:04:29', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('24d1c6a8644243b79abbb5ae657e6c3d', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-05-05 16:24:23', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('24e06ded1d8d481b927a659b2dd3aecd', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 03:36:29', '1', null);
INSERT INTO `tb_log` VALUES ('24eff27c9e8a49e6a9f68a54fe3ea5c3', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:40:17', '1', null);
INSERT INTO `tb_log` VALUES ('2561a8b9cb324254a44308ef4802e634', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:42:30', '1', null);
INSERT INTO `tb_log` VALUES ('25a99095cf834f50b83551ba8a52026f', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:51:19', '1', null);
INSERT INTO `tb_log` VALUES ('25da19b0e9f74401a891147d09716c74', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:50:38', '1', null);
INSERT INTO `tb_log` VALUES ('25edb428b5b146c58772e7380e7b9fdf', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 07:05:04', '1', null);
INSERT INTO `tb_log` VALUES ('260e064179c5402eadaa83e3a4830ebe', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 19:56:34', '1', null);
INSERT INTO `tb_log` VALUES ('26191a523e0c4747b98d9a1daf503a71', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-16 17:26:47', '1', null);
INSERT INTO `tb_log` VALUES ('2661b390f335458fa45598a0ac72005b', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:14:58', '1', null);
INSERT INTO `tb_log` VALUES ('2686da71d8044e9d9a4d853b0bb91e09', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-09 14:34:27', '1', null);
INSERT INTO `tb_log` VALUES ('268f0e4da9b34c80b3a3e85ae2fc0fc3', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-31 15:49:54', '1', null);
INSERT INTO `tb_log` VALUES ('26abecba53794ab496694b6bca7ca35d', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 17:49:54', '1', null);
INSERT INTO `tb_log` VALUES ('26af70f8c99d4f40ae9ecf3d82667db2', '查看列表', '查看FeedBack列表', 'FeedBack', '2017-03-18 14:40:24', '1', null);
INSERT INTO `tb_log` VALUES ('26affc2eadb74fbf8b999a1c21cbca40', '去修改', '去修改Specifications页面', 'Specifications', '2017-03-14 03:23:26', '1', null);
INSERT INTO `tb_log` VALUES ('26c948a28bbf4181873225ee8b0442c4', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 15:08:01', '1', null);
INSERT INTO `tb_log` VALUES ('2753dfa46d0649c8be8e048da2618f64', '删除', '删除Commodityimg', 'Commodityimg', '2017-03-14 14:26:55', '1', null);
INSERT INTO `tb_log` VALUES ('277fb746456b466a933ca192ccf67f2b', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-09 18:08:54', '1', null);
INSERT INTO `tb_log` VALUES ('2801c6ce5f314f4299a5c6e3d89c0f57', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 14:19:14', '1', null);
INSERT INTO `tb_log` VALUES ('2854988767bb4026bb9c227b42bcf03e', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 17:49:43', '1', null);
INSERT INTO `tb_log` VALUES ('285ca9ece2d3421fa36dfaeb1841dba5', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-15 14:59:15', '1', null);
INSERT INTO `tb_log` VALUES ('2892454109b443d591e513bb948769ac', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 00:16:24', '1', null);
INSERT INTO `tb_log` VALUES ('297a6c34918543e2b60b75d021fbf310', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 02:12:48', '1', null);
INSERT INTO `tb_log` VALUES ('298580f041284d9b8a866abd16932caa', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:13:43', '1', null);
INSERT INTO `tb_log` VALUES ('298e472a9817468ba6f378c72ddd6a33', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 20:00:16', '1', null);
INSERT INTO `tb_log` VALUES ('29bd24bdbdf14eac8bd15948907ef8e3', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:15:48', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('29d4c722dff94c15ad4708305e6077ae', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-11 14:37:05', '1', null);
INSERT INTO `tb_log` VALUES ('2a1311dcdde54146b5bd1ee12b5802e7', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 17:50:12', '1', null);
INSERT INTO `tb_log` VALUES ('2a155cdbeca94d538d57e7f1708e3171', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-18 14:42:42', '1', null);
INSERT INTO `tb_log` VALUES ('2a1a5eff3d944ab9a7c2ea0715b1fff9', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 17:16:41', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('2a1bc780109641feb20b519f880e4946', '去修改', '去修改LogisticsList页面', 'LogisticsList', '2017-03-14 21:50:30', '1', null);
INSERT INTO `tb_log` VALUES ('2a2239f89bb342969a6ece9905e06416', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 18:01:06', '1', null);
INSERT INTO `tb_log` VALUES ('2a8865721ec5492094cd0c8162822914', '查看列表', '查看Classification列表', 'Classification', '2017-03-14 09:08:11', '1', null);
INSERT INTO `tb_log` VALUES ('2adbfacebc9d4dda954890e7da1756f5', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 17:15:51', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('2aee9a52034942d5a1f5cd52dd60423d', '新增', '新增Specifications', 'Specifications', '2017-03-14 03:23:51', '1', null);
INSERT INTO `tb_log` VALUES ('2b0e99ebae224354819537a94f92fe17', '新增', '新增Commodity', 'Commodity', '2017-03-14 03:36:55', '1', null);
INSERT INTO `tb_log` VALUES ('2b2606f40fb04d89bc51b035ac9be08e', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-16 17:26:05', '1', null);
INSERT INTO `tb_log` VALUES ('2b9711e8abfd431d8364511dc863333a', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-04-28 16:06:17', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('2ba80c21b7f04eec9e1225b844640afd', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-09 15:08:38', '1', null);
INSERT INTO `tb_log` VALUES ('2bbf4d80e7064581977c7be690e23b27', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 09:10:44', '1', null);
INSERT INTO `tb_log` VALUES ('2bc41a0c9f0e4a6ebcc25b32c3366115', '新增', '新增LogisticsList', 'LogisticsList', '2017-03-11 20:56:23', '1', null);
INSERT INTO `tb_log` VALUES ('2c546f7415f5497c9c212fd1fabb2837', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 07:11:57', '1', null);
INSERT INTO `tb_log` VALUES ('2c72b87dd0ff4123b5c0c1637c4a0047', '去修改', '去修改LogisticsList页面', 'LogisticsList', '2017-03-14 11:01:39', '1', null);
INSERT INTO `tb_log` VALUES ('2cbd4d8e1f1349ebad4e96e29bae6c63', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-16 18:47:59', '1', null);
INSERT INTO `tb_log` VALUES ('2cc888057a2a46889f52ba2cd749653f', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 09:08:01', '1', null);
INSERT INTO `tb_log` VALUES ('2cf91cd650d54dfabf0817928a8e6c95', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-04-24 20:02:57', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('2d25ddfd7e5d4d18ad1933e18eaa89bf', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-16 18:48:01', '1', null);
INSERT INTO `tb_log` VALUES ('2d7541b678ed40cfa8cadde0cdc846fb', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-16 17:31:34', '1', null);
INSERT INTO `tb_log` VALUES ('2db7190aa6294de292eeddab5c7b080b', '去修改', '去修改Commodity页面', 'Commodity', '2017-04-24 20:00:30', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('2dd2ccf77f804e0a9cf6a23034c7ff56', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 16:26:46', '1', null);
INSERT INTO `tb_log` VALUES ('2dd3892aafcf47daa166fcd47b131990', '去新增', '去新增VipManger页面', 'VipManger', '2017-04-06 14:21:21', '1', null);
INSERT INTO `tb_log` VALUES ('2ddf45ae24244243bf335aa27b699285', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 13:52:31', '1', null);
INSERT INTO `tb_log` VALUES ('2df4921fd4b14d679bb6eaf1e7803f6c', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 23:05:45', '1', null);
INSERT INTO `tb_log` VALUES ('2ecd85f37dfa4877800a922d06d71211', '查看列表', '查看Commodity列表', 'Commodity', '2017-04-24 20:02:20', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('2ef6703ac8974e90b3054865fd0db21a', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-14 19:38:29', '1', null);
INSERT INTO `tb_log` VALUES ('2f068ba8d87645ccb4ddefc2eac7d5a9', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 16:35:28', '1', null);
INSERT INTO `tb_log` VALUES ('2f82e149e7bd4614841ad7aca5f5cf12', '去新增', '去新增VipManger页面', 'VipManger', '2017-03-31 11:58:24', '1', null);
INSERT INTO `tb_log` VALUES ('2fd0977f340343028f4478bab7e41f51', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-11 18:06:52', '1', null);
INSERT INTO `tb_log` VALUES ('302cc05094c54ebd829188f3b16f87b7', '去新增', '去新增BussinessActivity页面', 'BussinessActivity', '2017-03-16 16:54:44', '1', null);
INSERT INTO `tb_log` VALUES ('304db25e932d429a9909b0021b4c7c22', '去新增', '去新增Classification页面', 'Classification', '2017-03-14 17:26:52', '1', null);
INSERT INTO `tb_log` VALUES ('309efda23cc942da9bccf75188865a9d', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 22:42:48', '1', null);
INSERT INTO `tb_log` VALUES ('30c1db167af7429da1b9b8d3a447e1dc', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-15 16:58:24', '1', null);
INSERT INTO `tb_log` VALUES ('30cf16dca4ab43cf88cc8048e4609461', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-04-06 14:20:54', '1', null);
INSERT INTO `tb_log` VALUES ('30d3dce0790f47ddbe629f719db22bd4', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-31 11:57:09', '1', null);
INSERT INTO `tb_log` VALUES ('30fcddf518504453b4e9dc94f933431f', '去新增', '去新增Logistics页面', 'Logistics', '2017-03-11 18:09:14', '1', null);
INSERT INTO `tb_log` VALUES ('31318774d84641a281636fbb06843592', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:35:46', '1', null);
INSERT INTO `tb_log` VALUES ('31b250525b5540c7870aef1f3f462089', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-21 15:08:29', '1', null);
INSERT INTO `tb_log` VALUES ('31bd06194ab941e1a3d39be8f40691b8', '修改', '修改LogisticsList', 'LogisticsList', '2017-03-14 21:54:30', '1', null);
INSERT INTO `tb_log` VALUES ('31c4c2f7bdaf4aaa8760fadf7893ad1b', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-13 22:45:28', '1', null);
INSERT INTO `tb_log` VALUES ('31e9822584204794a284db44a2e5abb4', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 13:52:47', '1', null);
INSERT INTO `tb_log` VALUES ('31f8e659b2c34ff1aeff6dffdecb2a4d', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:11:18', '1', null);
INSERT INTO `tb_log` VALUES ('3202e6682853456ba204c58ad17809cf', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:50:43', '1', null);
INSERT INTO `tb_log` VALUES ('324e8032a0a94fe6afbbe2025503d229', '去修改', '去修改FeedBack页面', 'FeedBack', '2017-03-16 15:06:38', '1', null);
INSERT INTO `tb_log` VALUES ('32578f8846fe41f7bbc9828ac0d74de2', '新增', '新增Commodity', 'Commodity', '2017-03-13 16:25:11', '1', null);
INSERT INTO `tb_log` VALUES ('326ab81442de467a8abd164b1d1ca985', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 21:19:03', '1', null);
INSERT INTO `tb_log` VALUES ('329f4c3f5b6a4264b095136541ed8cf5', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-05-05 16:58:16', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('32b0f5f747d74ce1b2bc9809b0c7b9fd', '去新增', '去新增Classification页面', 'Classification', '2017-03-09 15:21:28', '1', null);
INSERT INTO `tb_log` VALUES ('32bbf922cb20420fa057c3371dd62555', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 21:44:06', '1', null);
INSERT INTO `tb_log` VALUES ('32c099a27f34488585b8f5a0bb1e8b17', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 11:30:35', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('32ee71044d274f0c9a854b9f327de0c2', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:26:58', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('32f656ec94134d4c99bbcc20eeba2e77', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 16:07:02', '1', null);
INSERT INTO `tb_log` VALUES ('338e536feecb49f2a2e7073de90e1874', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-04-28 15:48:59', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('34065bd6bbc04a8397b47e1eae371151', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:43:14', '1', null);
INSERT INTO `tb_log` VALUES ('3457f89c1a2a4ed28656ad22cd4ac62b', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-04-28 14:02:56', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('34b8e637a8b446419c707bf272cdf1d0', '修改', '修改PayManagement', 'PayManagement', '2017-05-05 16:26:58', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('34cca3202c8b4566905d052752dd6ad5', '红包', '登录微红包', '扫码获取session', '2017-05-02 15:27:43', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('34facbbf13934b108206661edbf9df01', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 13:42:22', '1', null);
INSERT INTO `tb_log` VALUES ('350cad1553be4d6cad24871315deb4f7', '去新增', '去新增Classification页面', 'Classification', '2017-03-14 09:10:23', '1', null);
INSERT INTO `tb_log` VALUES ('353b537950c84281ace54257fab56512', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 19:56:19', '1', null);
INSERT INTO `tb_log` VALUES ('35778c26af56425abbd33d5d42b4e5ce', '新增', '新增Classification', 'Classification', '2017-03-14 09:10:39', '1', null);
INSERT INTO `tb_log` VALUES ('36177d507c674e6fa39da5f71f106f60', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 17:15:38', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('3632c6b855eb4f53b0adcf9f97776a6c', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 18:10:46', '1', null);
INSERT INTO `tb_log` VALUES ('36f16f69c73b4fca8fe563efd5a82b32', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 11:20:53', '1', null);
INSERT INTO `tb_log` VALUES ('36f23d8f0fef4e7387c39d6155a343d6', '查看列表', '查看Classification列表', 'Classification', '2017-03-16 19:47:23', '1', null);
INSERT INTO `tb_log` VALUES ('37009bed24f445339594bbbb1d8eeaa8', '新增', '新增Classification', 'Classification', '2017-03-09 16:09:44', '1', null);
INSERT INTO `tb_log` VALUES ('3724706931294e48bec3f26f3a2866c3', '批量删除', '批量删除{objectName}', 'Commodity', '2017-03-14 14:15:35', '1', null);
INSERT INTO `tb_log` VALUES ('37266a00584e4252b491ac249dd9859e', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 11:00:30', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('3734ac3f9ab94d949b74009df897edd3', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 14:10:52', '1', null);
INSERT INTO `tb_log` VALUES ('376f8160ff4948d0ace6c252ef6a49db', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-11 14:35:28', '1', null);
INSERT INTO `tb_log` VALUES ('377c74c46ead4c238ff232c9590e6461', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-04-24 19:52:00', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('3790bb8daa6e426fae760ec99aba1921', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:02:16', '1', null);
INSERT INTO `tb_log` VALUES ('37968063c4194b48a53f70f2d48cfe95', '修改', '修改Specifications', 'Specifications', '2017-03-14 00:17:13', '1', null);
INSERT INTO `tb_log` VALUES ('37a03d48633642cb806e5a6f6937778c', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-17 09:34:56', '1', null);
INSERT INTO `tb_log` VALUES ('37e6f23838044107a9d3abb60d5f6394', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 16:10:10', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('37eb8afe597b47f194887f62917fce99', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-31 11:56:07', '1', null);
INSERT INTO `tb_log` VALUES ('384e66528f714285a3839ed705c5c7a8', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 17:26:23', '1', null);
INSERT INTO `tb_log` VALUES ('38538abfd98842bb8158052bda9c8133', '新增', '新增PayManagement', 'PayManagement', '2017-05-05 17:15:37', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('3853b03b7fa7491ca48771dd1317dc9d', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-09 19:52:14', '1', null);
INSERT INTO `tb_log` VALUES ('385e4bd4e8314e199c3fff283a65a00d', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:21:20', '1', null);
INSERT INTO `tb_log` VALUES ('3865bac24c2c49c2a046af92e339100d', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:53:59', '1', null);
INSERT INTO `tb_log` VALUES ('38960f61530c4310bec6787bac1e9d2c', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 20:53:39', '1', null);
INSERT INTO `tb_log` VALUES ('38fdccb6b7e24324a9d5829202b88616', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-18 14:42:44', '1', null);
INSERT INTO `tb_log` VALUES ('3908158e20254d22a6a16c1b435e99e8', '新增', '新增LogisticsList', 'LogisticsList', '2017-03-14 11:00:28', '1', null);
INSERT INTO `tb_log` VALUES ('391999d0342d4751b330ed659781486e', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-16 20:33:29', '1', null);
INSERT INTO `tb_log` VALUES ('39849ab12bfa4e4da45da808c8f3a059', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-15 15:01:35', '1', null);
INSERT INTO `tb_log` VALUES ('39998e03ed9e4caa9972f83fdf970665', '修改', '修改PayManagement', 'PayManagement', '2017-04-28 16:09:32', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('39ff81a79fe74c598e3d6a95b4abc5b9', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 21:46:50', '1', null);
INSERT INTO `tb_log` VALUES ('3a20c370e5074796ac72a502edbeb063', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-04-28 15:47:31', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('3a6b41f442f1441b82f653d54045a8bb', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 13:51:43', '1', null);
INSERT INTO `tb_log` VALUES ('3b3a5e66fd664ecf8301c6235b1ca97b', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-18 14:39:29', '1', null);
INSERT INTO `tb_log` VALUES ('3b8f0121d27e4e8fb731f90b17a042cd', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:24:53', '1', null);
INSERT INTO `tb_log` VALUES ('3b95a70eaeb4411ca3db0d349db0b3bf', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-15 20:26:43', '1', null);
INSERT INTO `tb_log` VALUES ('3bdcae1833f14d6c8310dddff48e111c', '修改', '修改Commodity', 'Commodity', '2017-03-14 11:28:13', '1', null);
INSERT INTO `tb_log` VALUES ('3c30f88016504a3dbb5cea1315124997', '新增', '新增Commodity', 'Commodity', '2017-03-13 16:35:33', '1', null);
INSERT INTO `tb_log` VALUES ('3c402093a7034d56a7de7d5fed37cd95', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 11:26:50', '1', null);
INSERT INTO `tb_log` VALUES ('3c49924f124a40ad9e414022d62b0f38', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 02:24:20', '1', null);
INSERT INTO `tb_log` VALUES ('3c533d0cf9cd4fac93c05d9cd04adb05', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:34:52', '1', null);
INSERT INTO `tb_log` VALUES ('3cb6b621ec064dcca18ddb0985a3990f', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 21:22:52', '1', null);
INSERT INTO `tb_log` VALUES ('3ccaf4b5151141b3b1153b0161c88815', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:06:07', '1', null);
INSERT INTO `tb_log` VALUES ('3cd199c8b1f840aca0adc8e1c463aa70', '去新增', '去新增PayManagement页面', 'PayManagement', '2017-05-05 17:16:17', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('3d020d6f074e4f86a2b1a234b53fb604', '红包', '登录微红包', '扫码获取session', '2017-05-02 15:27:24', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('3d0405b711f3489bb6f2e7b2b05c7cc1', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:47:36', '1', null);
INSERT INTO `tb_log` VALUES ('3d52e59c7872462ca7d4230b1426d65d', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 18:16:01', '1', null);
INSERT INTO `tb_log` VALUES ('3d557c492dac45929d0b90c639cbba7f', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-12 19:37:48', '1', null);
INSERT INTO `tb_log` VALUES ('3d8286d36c8f482f80d5c00fa83e6b71', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-05-05 16:26:54', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('3dd7def793a54693915a5454b1317467', '去修改', '去修改FeedBack页面', 'FeedBack', '2017-03-16 15:04:01', '1', null);
INSERT INTO `tb_log` VALUES ('3df127a5513145b1addb098bf72719c8', '修改', '修改Commodity', 'Commodity', '2017-03-14 03:37:40', '1', null);
INSERT INTO `tb_log` VALUES ('3e1475497cfb4849bc294df6cf0c5c1a', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-13 17:31:07', '1', null);
INSERT INTO `tb_log` VALUES ('3e2fd8612fe64e01b5b3f41ab55b7372', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 16:06:05', '1', null);
INSERT INTO `tb_log` VALUES ('3e33d9a118954fa88661f20430074a65', '查看列表', '查看Classification列表', 'Classification', '2017-04-24 19:59:37', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('3e419a30acb248acacc9f0d9a87eda08', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-21 15:05:45', '1', null);
INSERT INTO `tb_log` VALUES ('3e910a4dcd4b4f2b95957e5c7a2a2e6b', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 11:08:03', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('3ed127a6f65e4b4cb116266774a3698d', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:28:49', '1', null);
INSERT INTO `tb_log` VALUES ('3efa6a785fc34229b80cba154ef03cab', '去新增', '去新增PayManagement页面', 'PayManagement', '2017-04-28 10:55:55', 'ce68ade5791e4921be891c6f55901e59', null);
INSERT INTO `tb_log` VALUES ('3f03e81f6a614840a72af5f367b86456', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 17:50:17', '1', null);
INSERT INTO `tb_log` VALUES ('3f24ccfc05d24e30a5fa75ebaadc263c', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 09:52:41', '1', null);
INSERT INTO `tb_log` VALUES ('3f266f222a254e9f9453915013dffbdb', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:12:49', '1', null);
INSERT INTO `tb_log` VALUES ('3ff5b9d723164d609ecbc14d2f0a2d87', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 21:47:09', '1', null);
INSERT INTO `tb_log` VALUES ('40033c544c8c4f52806104416057e640', '去新增', '去新增Classification页面', 'Classification', '2017-03-09 15:40:31', '1', null);
INSERT INTO `tb_log` VALUES ('40165b0921844af6acd9fd4775032997', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-16 18:01:19', '1', null);
INSERT INTO `tb_log` VALUES ('401bddfab19343aca42e0eb0b0f697c8', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-09 15:02:19', '1', null);
INSERT INTO `tb_log` VALUES ('40244cd5bc7b42c2a2087e30d48a687c', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 13:40:22', '1', null);
INSERT INTO `tb_log` VALUES ('4092b4ca4331472f8ac747dd3cc5888a', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 07:03:53', '1', null);
INSERT INTO `tb_log` VALUES ('40a17071bda343ccaee86957fe3a1011', '修改', '修改LogisticsList', 'LogisticsList', '2017-03-14 11:01:30', '1', null);
INSERT INTO `tb_log` VALUES ('40b616c639074b2d8a03a631d0669839', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:58:49', '1', null);
INSERT INTO `tb_log` VALUES ('40f07dc14c254a2d960911d2f5d6642f', '修改', '修改OrderManger', 'OrderManger', '2017-03-10 15:44:41', '1', null);
INSERT INTO `tb_log` VALUES ('40f0abeedbf54a10a6e55ede93c0cc40', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:17:09', '1', null);
INSERT INTO `tb_log` VALUES ('4116c2679c154f95a5607fecfcf029d6', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 22:21:36', '1', null);
INSERT INTO `tb_log` VALUES ('411bedbc74434805b9b4610d1dec909a', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 14:26:09', '1', null);
INSERT INTO `tb_log` VALUES ('4124eaf856cc4756abb53d3072d0b0eb', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:18:30', '1', null);
INSERT INTO `tb_log` VALUES ('41259aa4a94d4bad94cf9660e3dd6410', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-04-24 19:58:41', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('4140e01fb8ff4bceb0727536fa789eee', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-16 18:48:45', '1', null);
INSERT INTO `tb_log` VALUES ('414c2703335b4a8ea481066a0d0cbf3a', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-05-05 16:08:25', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('41596223adff403c8cc11e78e5ae1dd4', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-16 17:23:51', '1', null);
INSERT INTO `tb_log` VALUES ('417badafa9c14094a083d288d328e990', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 20:49:59', '1', null);
INSERT INTO `tb_log` VALUES ('41899a22f5f1433daa7e0f0472d42abe', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-15 15:55:40', '1', null);
INSERT INTO `tb_log` VALUES ('41c078dee503410cb21275e50d4dfc36', '修改', '修改PayManagement', 'PayManagement', '2017-05-05 17:14:53', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('41c6187340c3409ead2f739bdb580ed8', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:43:43', '1', null);
INSERT INTO `tb_log` VALUES ('420d96df92384e5c9276e34a7368fc5a', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 15:08:25', '1', null);
INSERT INTO `tb_log` VALUES ('421f521fb76d43a4960fb6365fa97f88', '去新增', '去新增VipManger页面', 'VipManger', '2017-03-31 11:55:29', '1', null);
INSERT INTO `tb_log` VALUES ('4250dbb9c22a45cdb82459ac264b413f', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-16 18:20:57', '1', null);
INSERT INTO `tb_log` VALUES ('4262282c2d484b48b7bc3233e7c79045', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 17:39:39', '1', null);
INSERT INTO `tb_log` VALUES ('4262a5efa7474436818d47983f4d6e23', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 15:41:22', '1', null);
INSERT INTO `tb_log` VALUES ('426499a50c6b47d39c30cbe75a994993', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 13:49:42', '1', null);
INSERT INTO `tb_log` VALUES ('430ff62567af444c9f24e7ff630a8cf5', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:55:31', '1', null);
INSERT INTO `tb_log` VALUES ('43661b06c76546bc8bec4832492a336c', '新增', '新增LogisticsList', 'LogisticsList', '2017-03-11 18:12:48', '1', null);
INSERT INTO `tb_log` VALUES ('438d82c32593425e9a86080e53581f43', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 21:08:42', '1', null);
INSERT INTO `tb_log` VALUES ('43f0b5f926204fe69afcce32722950db', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-12 19:27:42', '1', null);
INSERT INTO `tb_log` VALUES ('444760e24edb496a90c1164c0f797196', '去修改', '去修改Commodityimg页面', 'Commodityimg', '2017-03-31 14:14:45', '1', null);
INSERT INTO `tb_log` VALUES ('44495850945e4aa195fd7d7586294f82', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-31 15:49:56', '1', null);
INSERT INTO `tb_log` VALUES ('44ef9c67fb1c4a92bab0e7042dc4ce43', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-12 19:27:53', '1', null);
INSERT INTO `tb_log` VALUES ('44feeb2de4e44d0e890b5df2cc496415', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 17:14:21', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('4523498e426b470ba91ca60261f69609', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 13:52:08', '1', null);
INSERT INTO `tb_log` VALUES ('45724d140aa14fd69f30b864b7218689', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-04-28 11:00:24', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('45aac05cd79143438e78e21802430015', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 11:13:24', '1', null);
INSERT INTO `tb_log` VALUES ('45b7f48bbc5d44a99a4cbc3a4f333828', '查看列表', '查看Classification列表', 'Classification', '2017-03-14 19:39:11', '1', null);
INSERT INTO `tb_log` VALUES ('45bdcf4e4b69418e9d6fda04639c751e', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 14:03:42', '1', null);
INSERT INTO `tb_log` VALUES ('45d43b61b99148aea178aa5556d03d5f', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:43:09', '1', null);
INSERT INTO `tb_log` VALUES ('46192f92c36042d993fea1a4f43f8d28', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-16 16:50:42', '1', null);
INSERT INTO `tb_log` VALUES ('467e5663354d43499e0b98582f9ea5ad', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 21:18:19', '1', null);
INSERT INTO `tb_log` VALUES ('46872c57352f452bbe24134aff361020', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 14:18:44', '1', null);
INSERT INTO `tb_log` VALUES ('46c24c3385784bf193b8229dc8a243d0', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:08:57', '1', null);
INSERT INTO `tb_log` VALUES ('46cc1182b5e14c0ba2fe3c1e60bc225a', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-10 15:44:34', '1', null);
INSERT INTO `tb_log` VALUES ('46e21c71898f46beb72210353cb4a3c0', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 17:21:34', '1', null);
INSERT INTO `tb_log` VALUES ('47130a8e664e48959d3d34f9a1533746', '去新增', '去新增Logistics页面', 'Logistics', '2017-03-11 18:09:54', '1', null);
INSERT INTO `tb_log` VALUES ('4715a5c173f6409e89f70e904eb791c2', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-15 16:52:28', '1', null);
INSERT INTO `tb_log` VALUES ('472261f61b4f4119ab5e0874e02de23e', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-15 14:07:17', '1', null);
INSERT INTO `tb_log` VALUES ('47293204bc3e4f7d9ae1aab9b49f765f', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-05-05 15:10:19', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('47661d63103e4142beaf8e1759f55249', '查看列表', '查看Commodity列表', 'Commodity', '2017-04-27 17:52:39', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('47682856877249e3ae5659fb5a8813ce', '修改', '修改Classification', 'Classification', '2017-03-14 17:27:31', '1', null);
INSERT INTO `tb_log` VALUES ('479bc71cf5b64092b2dfc703105d1912', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-11 14:43:55', '1', null);
INSERT INTO `tb_log` VALUES ('47a13155c17c461d85665f89318489e0', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 22:20:46', '1', null);
INSERT INTO `tb_log` VALUES ('47b5c449825f4ca2b9d9e88f479d4b0a', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 17:10:52', '1', null);
INSERT INTO `tb_log` VALUES ('47c040dc7ca94177b6f2e3ae0f26fe6c', '去修改', '去修改FeedBack页面', 'FeedBack', '2017-03-16 15:26:12', '1', null);
INSERT INTO `tb_log` VALUES ('481af89197924f27a514c87c593f7675', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-09 14:57:00', '1', null);
INSERT INTO `tb_log` VALUES ('487891676d0c4403bccbc9f5fd9497f2', '查看列表', '查看FeedBack列表', 'FeedBack', '2017-03-31 11:57:04', '1', null);
INSERT INTO `tb_log` VALUES ('48ed4b337d904bf59d04ead6b1926ce1', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 10:14:03', '1', null);
INSERT INTO `tb_log` VALUES ('49018e0a0c214caa9d3104de26931d85', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 15:08:07', '1', null);
INSERT INTO `tb_log` VALUES ('494a71bc373a4c76832fc21737cbaf9c', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-31 11:57:37', '1', null);
INSERT INTO `tb_log` VALUES ('494dbf4698864d5daf66dd96632c4dec', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-14 19:37:37', '1', null);
INSERT INTO `tb_log` VALUES ('496ae64795814c06a7b85f031c75111f', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-14 19:37:28', '1', null);
INSERT INTO `tb_log` VALUES ('49e6b9bc14ee4c5eb5ea7e64f3e643c1', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:19:22', '1', null);
INSERT INTO `tb_log` VALUES ('4a014a579bcc425d867dc8f881c5d9c4', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 13:35:57', '1', null);
INSERT INTO `tb_log` VALUES ('4a755372e91b47b9aa54a80daa7aceac', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 02:13:22', '1', null);
INSERT INTO `tb_log` VALUES ('4ac66c425e1a499e8397b7ba06597164', '修改', '修改Commodity', 'Commodity', '2017-03-14 13:49:18', '1', null);
INSERT INTO `tb_log` VALUES ('4ac7f59f497b4f93b99f02da991525fd', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 10:21:55', '1', null);
INSERT INTO `tb_log` VALUES ('4b1dbd41d929406dac6ca811a1792276', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:54:54', '1', null);
INSERT INTO `tb_log` VALUES ('4b70d19496c14811b13d9192076e2794', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 20:54:47', '1', null);
INSERT INTO `tb_log` VALUES ('4b860199fb4347bfab4961ba2c07c579', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:50:47', '1', null);
INSERT INTO `tb_log` VALUES ('4be7416489d744dd92605dfe5f24959d', '去新增', '去新增PayManagement页面', 'PayManagement', '2017-04-28 11:07:45', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('4c5f5d4deac84a1bb4a1f0aadbf29582', '修改', '修改PayManagement', 'PayManagement', '2017-05-05 16:22:59', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('4c70d87635d047e2abbf28db33283799', '修改', '修改OrderManger', 'OrderManger', '2017-03-10 16:56:36', '1', null);
INSERT INTO `tb_log` VALUES ('4c944af4531a49e7a2b52fa53579890b', '去新增', '去新增PayManagement页面', 'PayManagement', '2017-05-05 16:17:44', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('4c9b0cd7ed51449690f9b86d24beab67', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 15:01:52', '1', null);
INSERT INTO `tb_log` VALUES ('4d1dcf03cbe74d5ebd040eca25ec316a', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-21 15:08:26', '1', null);
INSERT INTO `tb_log` VALUES ('4d1dd0bebf0643dcbaacd1359d52764e', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 09:50:36', '1', null);
INSERT INTO `tb_log` VALUES ('4d5959b61d824c01a1061c2452462901', '新增', '新增Specifications', 'Specifications', '2017-03-14 15:09:44', '1', null);
INSERT INTO `tb_log` VALUES ('4d6d737aacee442a9e5eddb773eb47de', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 03:03:17', '1', null);
INSERT INTO `tb_log` VALUES ('4db0dcdc02964c1281a43737d316e2d4', '查看列表', '查看Commodity列表', 'Commodity', '2017-04-24 20:02:52', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('4dd91ba80f6a406f8eeede6944ef1cd7', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 19:55:57', '1', null);
INSERT INTO `tb_log` VALUES ('4def4cd28d364ffe8604ca8b9d175918', '新增', '新增LogisticsList', 'LogisticsList', '2017-03-12 19:28:22', '1', null);
INSERT INTO `tb_log` VALUES ('4e0dbc9b128f455bac5e20e811c6b422', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 15:37:11', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('4e1286972f9149389b6a277141b9618e', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 03:34:24', '1', null);
INSERT INTO `tb_log` VALUES ('4e5434eac030424581132d7088898a56', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:46:35', '1', null);
INSERT INTO `tb_log` VALUES ('4e56bb3d1d80463d9e019a23c4e312d1', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:36:58', '1', null);
INSERT INTO `tb_log` VALUES ('4ee1eca23cb84a59b48881d0afc4351f', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:26:52', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('4ee4e201ad674ab7a45942fd297b07ac', '查看列表', '查看Classification列表', 'Classification', '2017-03-15 09:32:22', '1', null);
INSERT INTO `tb_log` VALUES ('4f0e01a81429453b8328bdde7f107677', '新增', '新增Classification', 'Classification', '2017-03-09 15:21:20', '1', null);
INSERT INTO `tb_log` VALUES ('4f34854e7e104989b2cfaa2fe1c2b530', '查看列表', '查看Classification列表', 'Classification', '2017-03-14 10:22:58', '1', null);
INSERT INTO `tb_log` VALUES ('4f8c38773c35451588575776d7391c11', 'hongbaosession', '登录微红包', '扫码获取session', '2017-05-03 14:27:09', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('4f986da818cb4cdc988929a1949a5f37', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 16:53:11', '1', null);
INSERT INTO `tb_log` VALUES ('4fc0515b392840988e85d67c2c310fb6', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-18 14:42:50', '1', null);
INSERT INTO `tb_log` VALUES ('4fc6bf73268a452580b962e2b1bd0471', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-16 20:14:16', '1', null);
INSERT INTO `tb_log` VALUES ('50085fd7da30464b8f2068def23a156e', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 10:11:16', '1', null);
INSERT INTO `tb_log` VALUES ('504a57d61ec9475e83a86155c94ea55f', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 13:40:15', '1', null);
INSERT INTO `tb_log` VALUES ('5053b1e2b01345329e927a060f9d0bdf', '新增', '新增Specifications', 'Specifications', '2017-03-14 02:26:19', '1', null);
INSERT INTO `tb_log` VALUES ('505586b0820d48bc93413bc5dec07cd8', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 17:58:32', '1', null);
INSERT INTO `tb_log` VALUES ('50631c62052f405a8798b85b4d1f4e54', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 13:36:36', '1', null);
INSERT INTO `tb_log` VALUES ('506fa5e11e0c4561a8dcc3dd6a6fec9d', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-15 14:58:52', '1', null);
INSERT INTO `tb_log` VALUES ('509c70e36a444e06a9b775adf2cfd4ec', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-09 15:10:03', '1', null);
INSERT INTO `tb_log` VALUES ('50baaeb943ea417e9943ebb75ddf0a5d', '新增', '新增BussinessActivity', 'BussinessActivity', '2017-03-16 16:50:41', '1', null);
INSERT INTO `tb_log` VALUES ('50ca08d50e04450097b1fd439fcde592', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 15:01:46', '1', null);
INSERT INTO `tb_log` VALUES ('50ca49297ae74743af0d565fd7631b4f', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 15:42:52', '1', null);
INSERT INTO `tb_log` VALUES ('50dbd3c4f51c421eaafbe3456929cc84', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 10:09:41', '1', null);
INSERT INTO `tb_log` VALUES ('50ff2a4953f4431dbfd8638ef05cf93c', '新增', '新增Specifications', 'Specifications', '2017-03-14 13:40:46', '1', null);
INSERT INTO `tb_log` VALUES ('5134c274b45f4d2da80b940bbe550918', '删除', '删除LogisticsList', 'LogisticsList', '2017-03-11 20:56:13', '1', null);
INSERT INTO `tb_log` VALUES ('51352404aba64e4b8e258600304d47c9', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 07:02:49', '1', null);
INSERT INTO `tb_log` VALUES ('5154cccb463f48fea3def4b95d0fd215', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:12:38', '1', null);
INSERT INTO `tb_log` VALUES ('5159a431876c44d18da592008d463ee7', '查看列表', '查看FeedBack列表', 'FeedBack', '2017-03-18 14:42:40', '1', null);
INSERT INTO `tb_log` VALUES ('5190159dcf3d4b9baa279989b76eae38', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-15 20:02:55', '1', null);
INSERT INTO `tb_log` VALUES ('5207fc7986df4fcbbc5f092479ead63b', '删除', '删除Classification', 'Classification', '2017-03-09 15:53:59', '1', null);
INSERT INTO `tb_log` VALUES ('5217447b8a894b99a4aa6fdf99d183eb', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 13:08:04', '1', null);
INSERT INTO `tb_log` VALUES ('523e7c398d5a412e8cf5347041ee91d4', '修改', '修改PayManagement', 'PayManagement', '2017-04-28 11:07:58', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('5248772d81d74f7997299e96ad819f91', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 11:19:36', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('52bc66bebba841aaa2aa128d3ec5cd55', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:28:45', '1', null);
INSERT INTO `tb_log` VALUES ('52c20770ac144b86bf763fbdcb3e612f', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:52:34', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('53734f698d9b4a2e94018392c658d59a', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-14 19:38:33', '1', null);
INSERT INTO `tb_log` VALUES ('541211564f24413a9c31046c98fc8bcf', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 09:26:34', '1', null);
INSERT INTO `tb_log` VALUES ('545e6bd4e8f94b7fb9ce30c8473de234', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-11 18:07:03', '1', null);
INSERT INTO `tb_log` VALUES ('548be2b5ef2d448d9b730353dc02690a', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-04-06 14:22:16', '1', null);
INSERT INTO `tb_log` VALUES ('54bc9423e33640f1b0847ecc8c8e1040', '删除', '删除BussinessActivity', 'BussinessActivity', '2017-03-16 16:54:41', '1', null);
INSERT INTO `tb_log` VALUES ('54f50986f1f84822b91cf361eb38f964', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:21:13', '1', null);
INSERT INTO `tb_log` VALUES ('554ea095da854fdfbaa93c2b45c8dd5c', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:38:47', '1', null);
INSERT INTO `tb_log` VALUES ('554ee2f5335e4360be862320b3b7055d', '查看列表', '查看Advertisement列表', 'Advertisement', '2017-03-17 09:55:56', '1', null);
INSERT INTO `tb_log` VALUES ('5580777103fe4334ac3e88324a8c1dbf', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 11:08:32', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('55a0395afebe400780739e37c091e7bf', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-11 14:45:39', '1', null);
INSERT INTO `tb_log` VALUES ('5655b68e5bb947c4ae8682c43beb0663', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-10 16:55:47', '1', null);
INSERT INTO `tb_log` VALUES ('5657a0c73b3242e193a385c89172b5bc', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-17 09:37:41', '1', null);
INSERT INTO `tb_log` VALUES ('5696f2af730a47f7b5fba277032d8827', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:21:26', '1', null);
INSERT INTO `tb_log` VALUES ('56f5f8b4c2154557b93a69b171ce5073', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-05-05 16:59:48', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('5737247c7d79483caba03879b7f70a98', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-21 15:05:34', '1', null);
INSERT INTO `tb_log` VALUES ('57dd3d7540cb4951a59d36eae3b6c289', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-18 14:42:34', '1', null);
INSERT INTO `tb_log` VALUES ('57df432ee2f648c382183e2d1c4a6729', '去新增', '去新增PayManagement页面', 'PayManagement', '2017-05-05 17:15:28', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('57f3d5f982344420afcaa3c6551f9767', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 11:22:18', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('57feb00270f540aa9cb4bbf1da0f5fea', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:57:40', '1', null);
INSERT INTO `tb_log` VALUES ('58026195d78e493b9cb4b12ed24b072a', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 17:51:20', '1', null);
INSERT INTO `tb_log` VALUES ('58433728c748406895a4fb765ee08dff', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-16 20:14:17', '1', null);
INSERT INTO `tb_log` VALUES ('58483b96181e4c74a9aad2a10ded4743', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:11:19', '1', null);
INSERT INTO `tb_log` VALUES ('58619782e4274e3e86360c3cb443ce32', '去修改', '去修改Specifications页面', 'Specifications', '2017-03-14 00:16:30', '1', null);
INSERT INTO `tb_log` VALUES ('58e1c55cc9614d71abfdaa88f56bf827', '新增', '新增Classification', 'Classification', '2017-03-14 09:09:46', '1', null);
INSERT INTO `tb_log` VALUES ('58f1cc29da334ed799477318bb20827d', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 21:18:35', '1', null);
INSERT INTO `tb_log` VALUES ('59b58e3721134c208b3c3596bb995abe', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-09 19:39:37', '1', null);
INSERT INTO `tb_log` VALUES ('5a22add77c9a49d7831b903db1822a73', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-16 18:15:35', '1', null);
INSERT INTO `tb_log` VALUES ('5ac595617158493ab5b944d289519e04', '查看列表', '查看Logistics列表', 'Logistics', '2017-04-06 14:21:08', '1', null);
INSERT INTO `tb_log` VALUES ('5b055675fe6c4293aba9688c4207a5df', '查看列表', '查看Classification列表', 'Classification', '2017-03-14 11:11:51', '1', null);
INSERT INTO `tb_log` VALUES ('5b1e6eb7c67a4db39ef2fb8de9425ee2', '去新增', '去新增Commodityimg页面', 'Commodityimg', '2017-03-14 07:03:50', '1', null);
INSERT INTO `tb_log` VALUES ('5b6baab762234f27ba07fe91838f8b50', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-10 15:36:51', '1', null);
INSERT INTO `tb_log` VALUES ('5b9b1766260d4cfbb43ee3a14b023df2', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-15 13:44:14', '1', null);
INSERT INTO `tb_log` VALUES ('5bb42fcde34e481689f3a397241d9d73', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 07:10:54', '1', null);
INSERT INTO `tb_log` VALUES ('5bbaa8c4efd847b3ac0eebdd24fae36e', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:15:50', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('5bd5d6ec8b0c40098485d21c51692dc9', '新增', '新增Specifications', 'Specifications', '2017-03-13 22:52:41', '1', null);
INSERT INTO `tb_log` VALUES ('5bdef632783d431bad2172fda5d2e627', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 11:00:04', '1', null);
INSERT INTO `tb_log` VALUES ('5bf39842e7604e3fb5b62527776ac4e1', '新增', '新增Specifications', 'Specifications', '2017-03-14 10:43:49', '1', null);
INSERT INTO `tb_log` VALUES ('5c1c9a474e7c48ad9d4d3b1ca94529de', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 21:48:02', '1', null);
INSERT INTO `tb_log` VALUES ('5c3aef0e78ba4f289974b6bc6cb4bac7', '去修改', '去修改BussinessActivity页面', 'BussinessActivity', '2017-03-16 17:03:01', '1', null);
INSERT INTO `tb_log` VALUES ('5c5c50098f864eaf9d2b298bbdd9a1c3', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 21:18:54', '1', null);
INSERT INTO `tb_log` VALUES ('5d5fbd2bd4854201a90352f357f93610', '新增', '新增Commodity', 'Commodity', '2017-03-14 09:28:37', '1', null);
INSERT INTO `tb_log` VALUES ('5e0893f38d1f443d94bd4d891187b417', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 18:10:23', '1', null);
INSERT INTO `tb_log` VALUES ('5e19c74dd8e04c568f6fdc9fe0a494f3', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-31 11:57:38', '1', null);
INSERT INTO `tb_log` VALUES ('5e2ed5afabf84fb7acacefefcf7acbfb', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:30:01', '1', null);
INSERT INTO `tb_log` VALUES ('5e6312c76ce840f98bc617e59e976eab', '查看列表', '查看Classification列表', 'Classification', '2017-04-24 20:02:22', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('5ea28f8feb8b42cf9f8363628953c50e', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 19:56:09', '1', null);
INSERT INTO `tb_log` VALUES ('5ef244a5ddea4842af4e7ea038f932af', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-18 14:42:38', '1', null);
INSERT INTO `tb_log` VALUES ('5f41829cddb545b5bd24cde9e4164f2a', '删除', '删除Specifications', 'Specifications', '2017-03-14 13:36:35', '1', null);
INSERT INTO `tb_log` VALUES ('5f41f7db7782419090c9f4f01c6a92a9', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:16:24', '1', null);
INSERT INTO `tb_log` VALUES ('5f76010c3c154e6bb25eb539f85a2b17', '新增', '新增Commodity', 'Commodity', '2017-03-14 02:40:43', '1', null);
INSERT INTO `tb_log` VALUES ('5f7d5877469244308a37c6ebdc7f23a3', '去新增', '去新增Commodityimg页面', 'Commodityimg', '2017-03-14 07:05:09', '1', null);
INSERT INTO `tb_log` VALUES ('5feafe58156f4ba7a053a0fb1746a4af', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-04-06 14:20:29', '1', null);
INSERT INTO `tb_log` VALUES ('600c969d0e2b4e75aa93314a64f85ee0', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-16 20:49:47', '1', null);
INSERT INTO `tb_log` VALUES ('60850551647c4e61abcfa2aecdff6eea', '新增', '新增Specifications', 'Specifications', '2017-03-14 13:36:53', '1', null);
INSERT INTO `tb_log` VALUES ('60e111c2c64842f481c069ec2063f468', '去修改', '去修改Commodityimg页面', 'Commodityimg', '2017-03-14 07:03:58', '1', null);
INSERT INTO `tb_log` VALUES ('615bd794844044c29e565c8531f07185', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:26:50', '1', null);
INSERT INTO `tb_log` VALUES ('6184a547b938447eb75980f18d627ffa', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 13:48:44', '1', null);
INSERT INTO `tb_log` VALUES ('618cf0eb9acf4b0a9d31614e6995d8df', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 02:40:44', '1', null);
INSERT INTO `tb_log` VALUES ('621e5cc4bd544528a0d502da92b921d2', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-31 15:49:45', '1', null);
INSERT INTO `tb_log` VALUES ('624b2a2b40744fbd9220019d2bb7c718', '修改', '修改PayManagement', 'PayManagement', '2017-05-05 15:37:11', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('6317b836a1a342ef8b14ba712c1a55bc', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-13 22:26:12', '1', null);
INSERT INTO `tb_log` VALUES ('6330935255914d8da88cd0f539386e7a', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:09:29', '1', null);
INSERT INTO `tb_log` VALUES ('6367cc31b39c4d9cad32470a2e0881f9', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-13 20:51:09', '1', null);
INSERT INTO `tb_log` VALUES ('639ab110164c4d5990a5f2df7e013d4f', '查看列表', '查看FeedBack列表', 'FeedBack', '2017-03-16 18:47:50', '1', null);
INSERT INTO `tb_log` VALUES ('63b04f9b691c4511a032273aa5da6b44', '去新增', '去新增Commodityimg页面', 'Commodityimg', '2017-03-14 11:13:18', '1', null);
INSERT INTO `tb_log` VALUES ('63c1b18355d04c978c390acec25578e1', '查看列表', '查看Classification列表', 'Classification', '2017-03-14 09:09:35', '1', null);
INSERT INTO `tb_log` VALUES ('642f02621e7a4cd6a8cb3ced396fbb51', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-10 16:15:02', '1', null);
INSERT INTO `tb_log` VALUES ('647128f766fa47f688f921c30e6b8c89', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-09 15:10:04', '1', null);
INSERT INTO `tb_log` VALUES ('64adad465f494871954b96ef95dc4dea', '修改', '修改LogisticsList', 'LogisticsList', '2017-03-14 21:50:27', '1', null);
INSERT INTO `tb_log` VALUES ('64b6f6297b0245ef9e576a8aba30d5e4', '修改', '修改OrderManger', 'OrderManger', '2017-03-10 15:42:54', '1', null);
INSERT INTO `tb_log` VALUES ('64b74c3706134467a87f704a9e71d267', '去新增', '去新增Classification页面', 'Classification', '2017-03-09 15:21:22', '1', null);
INSERT INTO `tb_log` VALUES ('64c94b6e8e604327902586b965fae03b', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 11:09:16', '1', null);
INSERT INTO `tb_log` VALUES ('64e53d0672e34d4ca20fe6d61cb4e3dd', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 10:25:55', '1', null);
INSERT INTO `tb_log` VALUES ('6510d857ea0e486eb05ef2d211d4b7d4', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-31 11:56:38', '1', null);
INSERT INTO `tb_log` VALUES ('6527d5606ad4426284915a3322d5763e', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-11 19:21:23', '1', null);
INSERT INTO `tb_log` VALUES ('653cf025dbe1477db8d6027a1eea45fe', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-14 15:55:14', '1', null);
INSERT INTO `tb_log` VALUES ('653e030db4ae4717ade1c5ac3cb25aee', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-04-27 17:52:31', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('6546872dbaf7480fb54dc4bf332705d9', '去修改', '去修改BussinessActivity页面', 'BussinessActivity', '2017-03-16 17:03:44', '1', null);
INSERT INTO `tb_log` VALUES ('657290af3d4c43dd8bd088ce1f03e08d', '查看列表', '查看Logistics列表', 'Logistics', '2017-04-24 19:59:47', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('65b51be8b7aa46fbbb5f3a56c7ae423a', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:20:22', '1', null);
INSERT INTO `tb_log` VALUES ('65c7810b07254395aa0a46e4c014660c', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-31 11:56:36', '1', null);
INSERT INTO `tb_log` VALUES ('66244442dc1f4240b0acc620ed9ba7b9', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-04-24 19:58:33', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('663525afa4b2442f9263bb0e6528c478', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:02:07', '1', null);
INSERT INTO `tb_log` VALUES ('665ee80e233f427f88a8f5290c04880b', '去新增', '去新增LogisticsList页面', 'LogisticsList', '2017-03-12 19:28:16', '1', null);
INSERT INTO `tb_log` VALUES ('6762ca0293a84061bfc09e5cc8e91b48', '查看列表', '查看Classification列表', 'Classification', '2017-03-14 09:10:39', '1', null);
INSERT INTO `tb_log` VALUES ('676bc4bb180841afa9873bff63c98efa', '去新增', '去新增Classification页面', 'Classification', '2017-03-14 09:08:13', '1', null);
INSERT INTO `tb_log` VALUES ('676ccfe2210245559b4b2aef36d3e9eb', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 17:36:12', '1', null);
INSERT INTO `tb_log` VALUES ('67bbf324976d4ee8b60341248d6d1cc5', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 02:25:10', '1', null);
INSERT INTO `tb_log` VALUES ('681b57d5a80a4fef81884b263437ec48', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-31 11:57:56', '1', null);
INSERT INTO `tb_log` VALUES ('681d98cf3a524470be60b52ac2aa332f', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:58:40', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('683d3e1810f84146889f27926c62ac7d', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-16 17:24:31', '1', null);
INSERT INTO `tb_log` VALUES ('68509e47ec864ea186bcf41c0c50f4a4', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 15:37:01', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('687b16b280b841e6a882221cd4836433', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-11 18:13:08', '1', null);
INSERT INTO `tb_log` VALUES ('68f2f4960ada4a94b01b51527a3bdd93', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-15 20:06:46', '1', null);
INSERT INTO `tb_log` VALUES ('6916906052b048dc8082d994c1a1310d', '去修改', '去修改FeedBack页面', 'FeedBack', '2017-03-16 15:19:18', '1', null);
INSERT INTO `tb_log` VALUES ('69236ff01ae0414cad4b388eea54d3cd', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:41:55', '1', null);
INSERT INTO `tb_log` VALUES ('69406060d848474290188c52d1a2e942', '去修改', '去修改LogisticsList页面', 'LogisticsList', '2017-03-14 21:50:16', '1', null);
INSERT INTO `tb_log` VALUES ('696e322f9a424a6f9e58cc0836b3b180', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:42:14', '1', null);
INSERT INTO `tb_log` VALUES ('69998c1dd1a44e70a3eec60acdd09e44', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-13 23:18:33', '1', null);
INSERT INTO `tb_log` VALUES ('699ada423df044f395677e62f9d89b50', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 17:58:49', '1', null);
INSERT INTO `tb_log` VALUES ('699d661f6b7b4ad584df67c18c014675', '删除', '删除Specifications', 'Specifications', '2017-03-14 10:57:55', '1', null);
INSERT INTO `tb_log` VALUES ('69a8b902412c4a5d9ff4ef80d920fb92', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 07:02:53', '1', null);
INSERT INTO `tb_log` VALUES ('69b513e3099e4d29a1556dc3487930e0', '查看列表', '查看Classification列表', 'Classification', '2017-03-14 09:09:47', '1', null);
INSERT INTO `tb_log` VALUES ('69cc806238554828ad1f03b650cf9ec8', '去修改', '去修改Commodity页面', 'Commodity', '2017-04-24 20:00:35', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('6a0fe0c37d5a42dd99600ec258130458', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-16 20:16:11', '1', null);
INSERT INTO `tb_log` VALUES ('6a63a70b0ae24e2ba7b1c097cfb8adcb', '查看列表', '查看VipManger列表', 'VipManger', '2017-04-24 20:02:42', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('6a93411b475646cbb08b2d70e8898c98', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 16:09:18', '1', null);
INSERT INTO `tb_log` VALUES ('6aa0c3a6c1924065bc1adbace61b0299', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 20:51:59', '1', null);
INSERT INTO `tb_log` VALUES ('6abf0761bea54dfba89accf3424ec692', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 07:11:01', '1', null);
INSERT INTO `tb_log` VALUES ('6ac9ef520dba4303988cc832ac212187', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 03:35:16', '1', null);
INSERT INTO `tb_log` VALUES ('6aebdfbe3c504933b946445b0e38ff02', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 21:44:20', '1', null);
INSERT INTO `tb_log` VALUES ('6b303269240042f1b33e82457c553779', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 14:27:10', '1', null);
INSERT INTO `tb_log` VALUES ('6b5dcfa56cbc4ca9a2ac2d393aec3634', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:19:32', '1', null);
INSERT INTO `tb_log` VALUES ('6b6527fe7aa2401ab0bf114c51b618c3', 'hongbaosession', '登录微红包', '扫码获取session', '2017-05-03 14:31:55', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('6b75750ff1814096b3aabebde8155373', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 20:54:08', '1', null);
INSERT INTO `tb_log` VALUES ('6b8aaffbe0ef468daf5a01e8c4dd9bb3', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:38:45', '1', null);
INSERT INTO `tb_log` VALUES ('6bca222fdf2b4f78b4a0ebc7499bdcc9', '新增', '新增Classification', 'Classification', '2017-03-14 09:09:35', '1', null);
INSERT INTO `tb_log` VALUES ('6c1a33c8c33b4bd39f0938413d03d181', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-31 11:56:33', '1', null);
INSERT INTO `tb_log` VALUES ('6c330981184c449db6c43eb739bff40a', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-10 16:51:26', '1', null);
INSERT INTO `tb_log` VALUES ('6c39fff5915b409abc63e23f12a07bd5', '去修改', '去修改BussinessActivity页面', 'BussinessActivity', '2017-03-16 17:04:13', '1', null);
INSERT INTO `tb_log` VALUES ('6d06974592d044d0aa08c2fba922b66b', '查看列表', '查看FeedBack列表', 'FeedBack', '2017-04-24 19:58:35', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('6d5e0c6ebdbe4b32b62f504147063215', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 02:56:49', '1', null);
INSERT INTO `tb_log` VALUES ('6d60a6bb9c9b4e40be2b486c7d49c443', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-11 19:20:41', '1', null);
INSERT INTO `tb_log` VALUES ('6d9f867cf6ae4ee88c55ff8f92eb91b0', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-04-24 19:58:32', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('6de9942ef12a49ec83db2ad7eb9e7123', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:10:12', '1', null);
INSERT INTO `tb_log` VALUES ('6dfc94d698784505a417fdd4798d16e0', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:26:11', '1', null);
INSERT INTO `tb_log` VALUES ('6e1b7b012bf14302a4123ecd6a959831', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 16:55:56', '1', null);
INSERT INTO `tb_log` VALUES ('6e21122184734d528ae7f201a177184e', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 22:22:35', '1', null);
INSERT INTO `tb_log` VALUES ('6f2fe0a81a244b10afe7a5f3ccf31ca3', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 02:25:34', '1', null);
INSERT INTO `tb_log` VALUES ('6fa3aa871ba74e82bc3d81ce53fbbfda', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-04-24 20:02:58', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('6fc3d5c739ed49069f8d2b81247761f2', '去修改', '去修改FeedBack页面', 'FeedBack', '2017-03-16 15:24:59', '1', null);
INSERT INTO `tb_log` VALUES ('6ff98a0b4db7456ca59e4e93a705feac', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-11 18:11:37', '1', null);
INSERT INTO `tb_log` VALUES ('7028c9caf1af4f6bb5852e2b9cd3d3b4', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-04-24 20:02:19', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('7096ccea95a3471db9ec01c031602923', '新增', '新增Commodity', 'Commodity', '2017-03-14 11:13:03', '1', null);
INSERT INTO `tb_log` VALUES ('71103c3e81a54791ae7da2a1e0b7971d', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 21:08:40', '1', null);
INSERT INTO `tb_log` VALUES ('7158e6bd543d4127a9aa9adf5666e69b', '删除', '删除Specifications', 'Specifications', '2017-03-14 02:26:22', '1', null);
INSERT INTO `tb_log` VALUES ('715c1ff1b18e4d84954dfec05187d186', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 15:44:13', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('716114c8ea9a4f4794cf266417fe3713', '去新增', '去新增VipManger页面', 'VipManger', '2017-03-31 11:55:33', '1', null);
INSERT INTO `tb_log` VALUES ('7192ff456091487cbe030319a93b9771', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-10 15:40:22', '1', null);
INSERT INTO `tb_log` VALUES ('71b76763b7124a70a5d224dd01913a67', '查看列表', '查看FeedBack列表', 'FeedBack', '2017-04-06 14:20:37', '1', null);
INSERT INTO `tb_log` VALUES ('7207118dfb5b4cd2bb4906d1871f87c2', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-05-05 16:05:37', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('7254bcc8045b4b069b45b0d21f492e67', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-12 19:40:49', '1', null);
INSERT INTO `tb_log` VALUES ('728f21dca2a04e7396ad5cc00129a583', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 20:26:24', '1', null);
INSERT INTO `tb_log` VALUES ('72d0abc8ab6542b1bf4f9f7f0f6d9bd0', '新增', '新增Specifications', 'Specifications', '2017-03-13 22:44:30', '1', null);
INSERT INTO `tb_log` VALUES ('7363bcb212d44703b1636c11d94ee1b3', '去新增', '去新增Classification页面', 'Classification', '2017-03-09 16:09:40', '1', null);
INSERT INTO `tb_log` VALUES ('7363f8941fdd4ea8a1bd4637eb47a8c5', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-12 19:40:57', '1', null);
INSERT INTO `tb_log` VALUES ('738299f78fd0478b9302a59931c48275', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 23:05:03', '1', null);
INSERT INTO `tb_log` VALUES ('742de15529bd4ea1bcd49b2c4b086090', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-16 17:39:42', '1', null);
INSERT INTO `tb_log` VALUES ('745a859b7a384296b4969d55c3a4fca8', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 20:56:14', '1', null);
INSERT INTO `tb_log` VALUES ('745d0d15c95f46e89ea9b763d830b332', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-09 14:41:34', '1', null);
INSERT INTO `tb_log` VALUES ('7490b1a23d834a9c92e47b1d11be720a', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-18 14:39:26', '1', null);
INSERT INTO `tb_log` VALUES ('74ede002eeb941c0b5c9f38d805d5b09', '新增', '新增Commodity', 'Commodity', '2017-03-14 15:07:50', '1', null);
INSERT INTO `tb_log` VALUES ('759732bf6cfc4c04a47f13b169c802c5', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 14:02:36', '1', null);
INSERT INTO `tb_log` VALUES ('7601fd15d5d44757ab007e0486276631', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:17:30', '1', null);
INSERT INTO `tb_log` VALUES ('76a516300dc34be1a876005d2f03156f', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 17:58:34', '1', null);
INSERT INTO `tb_log` VALUES ('770d4533217a46439613f571a51ceb7f', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-12 19:36:51', '1', null);
INSERT INTO `tb_log` VALUES ('774fcf3ea5ba4bb99cc11dba55a0b77c', '去新增', '去新增Logistics页面', 'Logistics', '2017-03-11 18:09:26', '1', null);
INSERT INTO `tb_log` VALUES ('775300792499478a9df128f93da23ad0', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:29:24', '1', null);
INSERT INTO `tb_log` VALUES ('77e3d845c8ee41b3887b3334347715f1', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:18:00', '1', null);
INSERT INTO `tb_log` VALUES ('7801d904e2dd4341889ad3989edda57d', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 16:02:54', '1', null);
INSERT INTO `tb_log` VALUES ('780f5b9cf28246d9894df232ac324a5c', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 09:19:48', '1', null);
INSERT INTO `tb_log` VALUES ('7817eee9724648d78785e2d6ea210f97', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 16:07:09', '1', null);
INSERT INTO `tb_log` VALUES ('7836b794b44b4c10b416dee529fe58d2', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 16:09:33', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('78458af032dc42a8a6c01f0a12c82dec', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-04-28 11:07:52', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('78c616a2376940309d0cc67a5467b7d9', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-10 10:21:15', '1', null);
INSERT INTO `tb_log` VALUES ('7902783cba0c4b2e8ee5d2c8581a5b28', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 21:12:14', '1', null);
INSERT INTO `tb_log` VALUES ('79419c4124794e49b0118281899435f7', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 16:35:31', '1', null);
INSERT INTO `tb_log` VALUES ('796e5ea62c764fb0bb30307f8fe40c75', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 17:25:59', '1', null);
INSERT INTO `tb_log` VALUES ('797efd7b177940e09002136471666919', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:46:38', '1', null);
INSERT INTO `tb_log` VALUES ('798e2e9b1a6f461fa3dc61cd79d55fb5', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-16 18:47:47', '1', null);
INSERT INTO `tb_log` VALUES ('79bf2e6452ac4badbaf530c1f7cb8f01', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 20:02:20', '1', null);
INSERT INTO `tb_log` VALUES ('79e7cb174d9d442995a8743a25e34f4b', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 19:38:18', '1', null);
INSERT INTO `tb_log` VALUES ('7a6bef47d8734585a5c021abe4da741c', '新增', '新增PayManagement', 'PayManagement', '2017-05-05 17:16:25', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('7a9f0fa5347c47dbb0926dfed5246be7', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 14:19:17', '1', null);
INSERT INTO `tb_log` VALUES ('7af26be6c7c944e1a46d788c40b84bfb', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 11:21:37', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('7afb00de06ac424d9112ffaf4677a04d', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:57:38', '1', null);
INSERT INTO `tb_log` VALUES ('7b1275cad58742f7b2fd0867ce77251c', '去新增', '去新增LogisticsList页面', 'LogisticsList', '2017-03-14 21:56:23', '1', null);
INSERT INTO `tb_log` VALUES ('7b40feb6d9d440ef92d1140f502edc3f', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-16 15:14:53', '1', null);
INSERT INTO `tb_log` VALUES ('7b78aeb9a0f44e3687271da0645e5f4b', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-09 14:37:18', '1', null);
INSERT INTO `tb_log` VALUES ('7b8e6e3c624545dda1e03a3af0337db6', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 16:54:22', '1', null);
INSERT INTO `tb_log` VALUES ('7bb30313826e4ef9a95ddf903fb16cb2', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 11:12:21', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('7be0788951874550964e624574297ce9', '查看列表', '查看FeedBack列表', 'FeedBack', '2017-05-05 15:06:14', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('7be48ca44ece40ab972b2e61a1d203d8', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-16 17:52:42', '1', null);
INSERT INTO `tb_log` VALUES ('7c3c383e982b4536b8afe7c4dc25f63a', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-09 14:35:24', '1', null);
INSERT INTO `tb_log` VALUES ('7caabb46cfde4d8f96236327b9af6e6a', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:53:54', '1', null);
INSERT INTO `tb_log` VALUES ('7cbe0996bbf4469fafd119050f347288', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 14:07:48', '1', null);
INSERT INTO `tb_log` VALUES ('7cf57c9297cf4ebe9c4e2b5d7e61e7c5', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-16 17:37:52', '1', null);
INSERT INTO `tb_log` VALUES ('7d0a9d034b9e4ed2a418868be3dfc6a3', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-09 15:46:28', '1', null);
INSERT INTO `tb_log` VALUES ('7d0e14884a284d66b80f3758adafeaf7', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-18 14:42:36', '1', null);
INSERT INTO `tb_log` VALUES ('7d2dfaa8c78b457aa1c3181e830d1d06', '新增', '新增PayManagement', 'PayManagement', '2017-04-28 11:00:16', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('7d56e5ddb4cf454a83dad28a9163e2af', '查看列表', '查看FeedBack列表', 'FeedBack', '2017-03-31 15:50:37', '1', null);
INSERT INTO `tb_log` VALUES ('7d97941320884173b2dfd83b35e916b6', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 09:51:17', '1', null);
INSERT INTO `tb_log` VALUES ('7da130bfacac4a0290a342954fc99290', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 15:07:51', '1', null);
INSERT INTO `tb_log` VALUES ('7da2dde05c684f3bb82b514b39a362a9', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 21:20:26', '1', null);
INSERT INTO `tb_log` VALUES ('7da7db0eb6464cd987305735ee630a4f', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-10 15:37:20', '1', null);
INSERT INTO `tb_log` VALUES ('7dbf38b32b7a43c78ac8c2c16a273667', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:47:13', '1', null);
INSERT INTO `tb_log` VALUES ('7de5bbf884f84268b504f27f9b287d2e', '修改', '修改Commodity', 'Commodity', '2017-03-14 13:52:46', '1', null);
INSERT INTO `tb_log` VALUES ('7e415791ab6b465c8556660cf44b84f8', '批量删除', '批量删除{objectName}', 'Commodity', '2017-03-14 03:35:16', '1', null);
INSERT INTO `tb_log` VALUES ('7e4c763c786b4a448d80494ee6b1ba16', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-15 15:01:37', '1', null);
INSERT INTO `tb_log` VALUES ('7e7b143387e5448ca8013e4dfe52a3db', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:14:06', '1', null);
INSERT INTO `tb_log` VALUES ('7ee11cd2b1f646aa9df6e34b21766390', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 14:00:58', '1', null);
INSERT INTO `tb_log` VALUES ('7f25d230f9e241559b50fce7b8645776', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 17:16:26', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('7f582eb13954423d96e0e440949bb36a', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:22:25', '1', null);
INSERT INTO `tb_log` VALUES ('7f6766911fda4d74b0959ab7c32a5ede', '删除', '删除Specifications', 'Specifications', '2017-03-14 02:25:39', '1', null);
INSERT INTO `tb_log` VALUES ('7f8c2fce673a4a16a5fbb6bfc48504d5', '去修改', '去修改Commodityimg页面', 'Commodityimg', '2017-03-14 06:58:33', '1', null);
INSERT INTO `tb_log` VALUES ('7fac6420ac184957a60a44f55c4bb550', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-31 15:49:52', '1', null);
INSERT INTO `tb_log` VALUES ('7fb8489a3b8b4cbc88394f074996e49e', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 14:25:35', '1', null);
INSERT INTO `tb_log` VALUES ('808064ea53fd4ee684198f4fbe491142', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:59:21', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('80a3e758cb2d4af298dde87b10badbce', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-31 15:49:49', '1', null);
INSERT INTO `tb_log` VALUES ('80aa98567c2047a7967096200f3255ae', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-09 14:33:45', '1', null);
INSERT INTO `tb_log` VALUES ('80ee35ef226846cfafab58793646e2ac', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 14:25:26', '1', null);
INSERT INTO `tb_log` VALUES ('819e1e5d1d3b490da8bb90062bd4b93d', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 20:56:24', '1', null);
INSERT INTO `tb_log` VALUES ('81ca2bdd22094060a3e07d52790e7344', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-10 15:38:13', '1', null);
INSERT INTO `tb_log` VALUES ('81d25bd4915e4644a0400189a77f0cc4', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-04-28 16:00:03', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('8208928b71244a10a3c2e50514ba08e4', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:19:42', '1', null);
INSERT INTO `tb_log` VALUES ('821eff1ce48a40468273c1474b1097eb', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-05-05 15:10:17', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('822e058dcf6e470a8e4742bcc77c8751', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-09 19:34:45', '1', null);
INSERT INTO `tb_log` VALUES ('828cb48b7eee4466b2809107c14472cc', '查看列表', '查看Commodity列表', 'Commodity', '2017-04-24 19:59:38', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('828dc0e37a054adcb23af1a02b72f8af', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 17:53:31', '1', null);
INSERT INTO `tb_log` VALUES ('82b155cc54694126a0272c5a50e9cd85', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 09:17:00', '1', null);
INSERT INTO `tb_log` VALUES ('833ecf1bf528401b942f7a0ee53fe023', '查看列表', '查看FeedBack列表', 'FeedBack', '2017-04-24 20:02:55', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('83bee839b5594bcdb0d32c8f611b11b8', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-04-24 16:26:45', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('84254cc59daf4d6f927e730c20e996dd', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-12 19:38:50', '1', null);
INSERT INTO `tb_log` VALUES ('842a5f77ec3c47aab296838af36a71da', '新增', '新增Classification', 'Classification', '2017-03-09 16:09:30', '1', null);
INSERT INTO `tb_log` VALUES ('84356ced05194df2b51bc8307f23dc3d', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-05-05 17:14:44', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('846cd622017a44139bd73e2ceba207e5', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 17:36:10', '1', null);
INSERT INTO `tb_log` VALUES ('847665507d344c749a92e51798259b12', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-16 18:16:41', '1', null);
INSERT INTO `tb_log` VALUES ('849d29747c1249acb28ffd54e9556fb0', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 19:31:10', '1', null);
INSERT INTO `tb_log` VALUES ('84bce30363c94a11aeb92aebb2398f56', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:48:34', '1', null);
INSERT INTO `tb_log` VALUES ('84cf3a33393d4f918f9f692210c4d597', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:24:15', '1', null);
INSERT INTO `tb_log` VALUES ('84da1f3163c04605be2b7d7e70608508', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 07:08:39', '1', null);
INSERT INTO `tb_log` VALUES ('84e2b6126a7b443eb4840885184d2da4', '删除', '删除Specifications', 'Specifications', '2017-03-14 03:37:34', '1', null);
INSERT INTO `tb_log` VALUES ('8542a890312f4436b7493d0401eba4d6', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 17:59:42', '1', null);
INSERT INTO `tb_log` VALUES ('8569108621b14061a8a2e464cd5aacee', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 17:24:46', '1', null);
INSERT INTO `tb_log` VALUES ('85820581347e4b0293c85422a0552ae6', '修改', '修改PayManagement', 'PayManagement', '2017-05-05 17:04:29', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('858292435de04850beff751494906622', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 00:07:49', '1', null);
INSERT INTO `tb_log` VALUES ('85abc67c6afc49459db766287d8cd892', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:01:58', '1', null);
INSERT INTO `tb_log` VALUES ('85ced3760d9f41408c9c5ea6bac75a35', '删除', '删除Classification', 'Classification', '2017-03-09 15:54:05', '1', null);
INSERT INTO `tb_log` VALUES ('85d09c344b8b4293a76ded4b70c6d742', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-09 14:29:53', '1', null);
INSERT INTO `tb_log` VALUES ('85f156a013a546e782b25b69621c0dc2', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:54:27', '1', null);
INSERT INTO `tb_log` VALUES ('8656103759a04b348d268e6584a6602a', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 11:20:57', '1', null);
INSERT INTO `tb_log` VALUES ('8679ea08ef524019931489c9608877f2', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 11:00:45', '1', null);
INSERT INTO `tb_log` VALUES ('8687225be8b0441294931e2a6f6bb226', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 02:23:35', '1', null);
INSERT INTO `tb_log` VALUES ('86988304ddbd4071b34caf439b73f1b5', '去修改', '去修改BussinessActivity页面', 'BussinessActivity', '2017-03-16 17:01:10', '1', null);
INSERT INTO `tb_log` VALUES ('86bf0eae17fc46f988d93fd1d191dfdd', '查看列表', '查看Classification列表', 'Classification', '2017-04-24 20:00:20', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('86f90c80bbef4e74908299556ef49326', '查看列表', '查看Classification列表', 'Classification', '2017-03-14 19:35:02', '1', null);
INSERT INTO `tb_log` VALUES ('8719b3a570cb485589e7c6fbedc4c5f3', '新增', '新增LogisticsList', 'LogisticsList', '2017-03-11 18:16:24', '1', null);
INSERT INTO `tb_log` VALUES ('871ef598db894be889efdfc879bf8d70', '新增', '新增Logistics', 'Logistics', '2017-03-11 18:09:17', '1', null);
INSERT INTO `tb_log` VALUES ('8739bbf4e79546b99eebdd44d8190cf0', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-09 14:34:22', '1', null);
INSERT INTO `tb_log` VALUES ('8758e742839c4bf9ba49d28a1bbb0a1e', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 07:09:00', '1', null);
INSERT INTO `tb_log` VALUES ('885d33b8aed94990895e37b12bfb3f97', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 13:40:21', '1', null);
INSERT INTO `tb_log` VALUES ('8886228e40074bba8b491074f59fc0d6', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:20:50', '1', null);
INSERT INTO `tb_log` VALUES ('888a469f72834972b065c30364bbf540', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 02:24:38', '1', null);
INSERT INTO `tb_log` VALUES ('88d0a2df14af401b9fc4da844266f8a6', '去新增', '去新增Commodityimg页面', 'Commodityimg', '2017-03-14 07:02:14', '1', null);
INSERT INTO `tb_log` VALUES ('88f1d9d3b9dc428fb26c2a7990697a6f', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-05-05 17:04:03', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('89111148cac04f97b0b0574b9b21656c', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-04-24 19:58:30', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('893baad4715445148ec48606d4c7b584', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:04:14', '1', null);
INSERT INTO `tb_log` VALUES ('895b327421934176b718906f2d13b18f', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-16 17:36:30', '1', null);
INSERT INTO `tb_log` VALUES ('895dbc53acb04e19a4401ec3b71ad1b5', '查看列表', '查看FeedBack列表', 'FeedBack', '2017-03-16 15:24:37', '1', null);
INSERT INTO `tb_log` VALUES ('8996d653c45742fd8b8e43b03f203726', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-16 18:48:04', '1', null);
INSERT INTO `tb_log` VALUES ('8a050940293942709d3eeaf7ace534fb', '查看列表', '查看FeedBack列表', 'FeedBack', '2017-03-31 11:57:35', '1', null);
INSERT INTO `tb_log` VALUES ('8a07a2811ab54e0abc1e93da5e5bc5a1', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 14:14:49', '1', null);
INSERT INTO `tb_log` VALUES ('8a26fd27ccd7418399191c638d98ea2c', '新增', '新增Commodity', 'Commodity', '2017-03-14 17:53:30', '1', null);
INSERT INTO `tb_log` VALUES ('8a4c52c4752e44fda1036d369c94f760', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-10 10:21:13', '1', null);
INSERT INTO `tb_log` VALUES ('8a9a9c1086f24a8c9496321936fce59f', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:52:30', '1', null);
INSERT INTO `tb_log` VALUES ('8aa5c0668a99412ea28c2b828fe6a29a', '查看列表', '查看Classification列表', 'Classification', '2017-04-06 14:23:34', '1', null);
INSERT INTO `tb_log` VALUES ('8aae4e7a88734cdd8a8e3eba5110ca04', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-16 16:48:59', '1', null);
INSERT INTO `tb_log` VALUES ('8ac581acde0c4aa8a5093f946f688b5d', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-11 14:41:11', '1', null);
INSERT INTO `tb_log` VALUES ('8aced5b7c7694c1980389feb3713aaca', '修改', '修改LogisticsList', 'LogisticsList', '2017-03-14 21:50:32', '1', null);
INSERT INTO `tb_log` VALUES ('8ad5afd0dbf542bfab23e9a5d93cb3f0', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-09 17:16:07', '1', null);
INSERT INTO `tb_log` VALUES ('8b135bc583bd412db9f1d8345be08d41', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 16:06:13', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('8b555fad40b3489cb1e9019df7159bde', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 13:43:40', '1', null);
INSERT INTO `tb_log` VALUES ('8b5e1d0c3f174adfb155b0c2070d74a1', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-16 17:37:55', '1', null);
INSERT INTO `tb_log` VALUES ('8c151f31c9224e58a320cf384a39ed59', '查看列表', '查看Classification列表', 'Classification', '2017-04-24 20:00:09', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('8c42ab38e3684597a2dcdf04a2eafb54', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:52:13', '1', null);
INSERT INTO `tb_log` VALUES ('8c69aeaeec634389a9397510ed0f242d', '新增', '新增Classification', 'Classification', '2017-03-09 15:21:33', '1', null);
INSERT INTO `tb_log` VALUES ('8cd8d058adb54a3992ad99d3ec50a8b4', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-15 14:06:40', '1', null);
INSERT INTO `tb_log` VALUES ('8cf0cae59bca4d3587d98d4765d3abd3', '查看列表', '查看Commodity列表', 'Commodity', '2017-04-06 14:20:49', '1', null);
INSERT INTO `tb_log` VALUES ('8d4bafca53834f92bab5a714152ce5f0', '去修改', '去修改LogisticsList页面', 'LogisticsList', '2017-03-14 11:01:24', '1', null);
INSERT INTO `tb_log` VALUES ('8d5eb405dafc4e508770db2260c74778', '查看列表', '查看Commodity列表', 'Commodity', '2017-04-27 17:52:24', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('8d6241e21db24043afd843aeb2f062a4', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:36:50', '1', null);
INSERT INTO `tb_log` VALUES ('8df9b02950824709b0aaed1ee0b57136', '新增', '新增Specifications', 'Specifications', '2017-03-14 15:12:18', '1', null);
INSERT INTO `tb_log` VALUES ('8e09c94f98d5463986e4aa6ba590eb97', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-15 15:01:22', '1', null);
INSERT INTO `tb_log` VALUES ('8e2cc36f93fe42ada7d4fbaf94631587', '新增', '新增Commodity', 'Commodity', '2017-03-14 15:10:59', '1', null);
INSERT INTO `tb_log` VALUES ('8e3b0c810afa4cb7b0fc65760340b02f', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 18:15:30', '1', null);
INSERT INTO `tb_log` VALUES ('8e7ac3dffc2442b0bee575426c62796c', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 03:35:18', '1', null);
INSERT INTO `tb_log` VALUES ('8e9670bfbcc14ac68d4acdcc615eef07', '去新增', '去新增Classification页面', 'Classification', '2017-03-09 15:49:22', '1', null);
INSERT INTO `tb_log` VALUES ('8ec59138ea5c4390bfb48d087ca94316', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 11:24:26', '1', null);
INSERT INTO `tb_log` VALUES ('8ed5fe26f05347d5be6ea5b84cc5c83c', '去修改', '去修改FeedBack页面', 'FeedBack', '2017-03-16 15:02:47', '1', null);
INSERT INTO `tb_log` VALUES ('8f23abf087ba4af0aa5f8486339f97a6', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 11:15:19', '1', null);
INSERT INTO `tb_log` VALUES ('8f90f09530ac41b4812477b188e81ab7', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-31 14:14:31', '1', null);
INSERT INTO `tb_log` VALUES ('8f9e9e8611dd453996c0a162dcc6b7c0', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 13:51:22', '1', null);
INSERT INTO `tb_log` VALUES ('8fa27f76ecce43b989fc7b52bd450834', '修改', '修改OrderManger', 'OrderManger', '2017-03-15 17:03:05', '1', null);
INSERT INTO `tb_log` VALUES ('8fcf0ee9ffcf405b84a153cd118585fb', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:05:42', '1', null);
INSERT INTO `tb_log` VALUES ('8fdc23b2297b4fcdb8e1108dcc86571f', '去新增', '去新增Classification页面', 'Classification', '2017-03-14 11:12:00', '1', null);
INSERT INTO `tb_log` VALUES ('8ffb7d756d87472a8ec0a482c38a07c4', '修改', '修改PayManagement', 'PayManagement', '2017-04-28 16:09:45', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('903fa9a09c8742b9a8fbad4241f5bbe1', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-16 15:14:25', '1', null);
INSERT INTO `tb_log` VALUES ('904f46612fdf471991de93ac3335f922', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 16:03:35', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('9053f0a3541c44079659087af85ef75b', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-05-05 16:21:11', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('907e18bb032d4cea8dfa54d44689fc8c', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 21:56:09', '1', null);
INSERT INTO `tb_log` VALUES ('908faf3c2e2b4a7ba966bd44ec9f0512', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:25:28', '1', null);
INSERT INTO `tb_log` VALUES ('913c472026d94260adba442f2302069c', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-09 19:48:36', '1', null);
INSERT INTO `tb_log` VALUES ('913d0e236ec843268026f82f9a197642', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 16:06:34', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('9195ec97ab804e91bff8f89eb0ec1c22', '去新增', '去新增BussinessActivity页面', 'BussinessActivity', '2017-03-16 16:49:03', '1', null);
INSERT INTO `tb_log` VALUES ('91b879aa64704d9caa0211cc091a6f21', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:25:57', '1', null);
INSERT INTO `tb_log` VALUES ('9215a5a4840c4a5585cab7172ff12600', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 21:46:53', '1', null);
INSERT INTO `tb_log` VALUES ('92242a9523b842999ef9a8377d4e3c3d', '去新增', '去新增LogisticsList页面', 'LogisticsList', '2017-03-11 18:12:40', '1', null);
INSERT INTO `tb_log` VALUES ('9261f969613541fb92bbb4ffe35f6f55', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-05-05 15:37:03', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('928598f8d7c94b1eafdf8becc55192a3', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 18:00:23', '1', null);
INSERT INTO `tb_log` VALUES ('928d8cb5638443f2bf0bd76b485d42de', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:52:06', '1', null);
INSERT INTO `tb_log` VALUES ('92b0134480534a31acb56e7969dd9511', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 06:58:26', '1', null);
INSERT INTO `tb_log` VALUES ('931ec8a5c7ee4a61a3ac48945efa5762', '新增', '新增Specifications', 'Specifications', '2017-03-14 11:03:57', '1', null);
INSERT INTO `tb_log` VALUES ('93506270c38146bdb63e4e7c15d38222', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-09 19:47:32', '1', null);
INSERT INTO `tb_log` VALUES ('935c15939e794e90bb1fd7104f9e3914', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 20:54:35', '1', null);
INSERT INTO `tb_log` VALUES ('93a7867452844259ad0bcb3a038960eb', '新增', '新增Specifications', 'Specifications', '2017-03-14 02:39:34', '1', null);
INSERT INTO `tb_log` VALUES ('93b01aae396548e68704c3c066ffc44d', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:08:18', '1', null);
INSERT INTO `tb_log` VALUES ('93ee7f9e2a4e40c0a6ace30a1134a904', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 06:57:11', '1', null);
INSERT INTO `tb_log` VALUES ('93f7a6add5d54566821b145d3a7a5a82', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 17:49:45', '1', null);
INSERT INTO `tb_log` VALUES ('941fb1e7558642baa05909c3fb8a7230', '查看列表', '查看Classification列表', 'Classification', '2017-03-14 17:36:08', '1', null);
INSERT INTO `tb_log` VALUES ('944dc4a30f1c4caeb5cec798805e10fd', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-15 14:23:04', '1', null);
INSERT INTO `tb_log` VALUES ('9472476def384765996b72872c5cf83b', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-10 18:10:44', '1', null);
INSERT INTO `tb_log` VALUES ('9478f02a49f24846b9facce8708669bd', '修改', '修改PayManagement', 'PayManagement', '2017-05-05 17:16:41', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('948843ddfedd45909de7980c9531a151', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:52:40', '1', null);
INSERT INTO `tb_log` VALUES ('94964af5b04a4e22ae83bc6ad9c29b8c', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-10 10:24:58', '1', null);
INSERT INTO `tb_log` VALUES ('94d7c540a3564f309d96b69e964f3324', '删除', '删除Classification', 'Classification', '2017-03-16 19:47:23', '1', null);
INSERT INTO `tb_log` VALUES ('9500cf3f593a42acbd2c3701892cb03f', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 21:11:41', '1', null);
INSERT INTO `tb_log` VALUES ('9542a6537348460ba21bdf5622d78135', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 21:50:20', '1', null);
INSERT INTO `tb_log` VALUES ('95a9069569a9408f819b9e509a65d16c', '去新增', '去新增LogisticsList页面', 'LogisticsList', '2017-03-12 19:37:39', '1', null);
INSERT INTO `tb_log` VALUES ('95bc7bf9e62242f3962a1fd3d0f868c0', '新增', '新增Specifications', 'Specifications', '2017-03-13 22:43:10', '1', null);
INSERT INTO `tb_log` VALUES ('95db96b648a24c9e829eaa2d212927c5', '去修改', '去修改LogisticsList页面', 'LogisticsList', '2017-03-14 11:01:33', '1', null);
INSERT INTO `tb_log` VALUES ('9651b21fe2b94efeb173e302ad8f04fc', '新增', '新增PayManagement', 'PayManagement', '2017-04-28 10:56:04', 'ce68ade5791e4921be891c6f55901e59', null);
INSERT INTO `tb_log` VALUES ('97366ab2aac1458e99001ce59796a635', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 11:06:52', '1', null);
INSERT INTO `tb_log` VALUES ('9756e65038ba44afa0ed18347aa05f28', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-31 11:54:59', '1', null);
INSERT INTO `tb_log` VALUES ('979be50ea70048cd8ec89d1ed19a50ee', 'hongbaosession', '登录微红包', '扫码获取session', '2017-05-03 14:23:27', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('97a2c3d3d6de4a42b5c45aee1b54302a', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 06:57:03', '1', null);
INSERT INTO `tb_log` VALUES ('97bc845b2f6441ce822a0a4e424ea830', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 18:15:52', '1', null);
INSERT INTO `tb_log` VALUES ('97bd23cb51b84d029d9ded02867965c3', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:28:19', '1', null);
INSERT INTO `tb_log` VALUES ('97e32e220ffe4e168f4f904855de8086', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 16:25:04', '1', null);
INSERT INTO `tb_log` VALUES ('97e5069aa81e4266b8ad3fcfa19ac332', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:26:00', '1', null);
INSERT INTO `tb_log` VALUES ('980dc425c1944ba0a6eee6bb501d53c8', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:25:43', '1', null);
INSERT INTO `tb_log` VALUES ('982d2025f30040328f9a86f9bb4a1c37', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 09:14:29', '1', null);
INSERT INTO `tb_log` VALUES ('986ef44e1fa548faa8bec7dea977bd81', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:45:52', '1', null);
INSERT INTO `tb_log` VALUES ('98982d05ccc7466da7ea1bf6b6c52898', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-16 18:47:57', '1', null);
INSERT INTO `tb_log` VALUES ('98a43006b4854808abbb083ca78a4d1e', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:54:05', '1', null);
INSERT INTO `tb_log` VALUES ('98a6511025b44a9a933e3b8c648577d7', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-11 18:10:58', '1', null);
INSERT INTO `tb_log` VALUES ('98ddbbd76e304115bb0a0c8dd58c8931', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:29:58', '1', null);
INSERT INTO `tb_log` VALUES ('991cff01a5f44610a7e9bf518a3a65de', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 21:20:21', '1', null);
INSERT INTO `tb_log` VALUES ('996b6ca9d9c849eb8d9d90d226e8a3e4', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-09 19:42:35', '1', null);
INSERT INTO `tb_log` VALUES ('99c11c041c0e45e7b62d68d8fa6e5443', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 15:44:37', '1', null);
INSERT INTO `tb_log` VALUES ('99c384d077b94fffb6067ce4df2292c5', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-04-24 20:02:53', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('99f1f5d1a1ab44a28200b54a8347787b', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 11:07:50', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('9a0496562ae04983a8a8cc0a57e12813', '查看列表', '查看Commodity列表', 'Commodity', '2017-04-24 20:08:57', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('9a5446ab6ce44b9ab66ff43bcfae66ff', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:50:54', '1', null);
INSERT INTO `tb_log` VALUES ('9a90d3db71bd40639645a6b4e966bdca', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-05-05 17:16:30', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('9a96b0caa18749c38d4bf853c636c280', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 16:08:19', '1', null);
INSERT INTO `tb_log` VALUES ('9ab29e3b25f146b083e16d7591b977d6', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:37:43', '1', null);
INSERT INTO `tb_log` VALUES ('9acf4337b10b49ee9bba6c8adfffa299', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 17:59:38', '1', null);
INSERT INTO `tb_log` VALUES ('9aed17bea67e4d14b401e722de29419f', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 19:58:33', '1', null);
INSERT INTO `tb_log` VALUES ('9b7e016e25c04bcdb7df1102046bea81', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 21:34:51', '1', null);
INSERT INTO `tb_log` VALUES ('9b9afd6363154fe693c9e42f763c66f4', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:13:10', '1', null);
INSERT INTO `tb_log` VALUES ('9bde22d6e7b74c268dfb06ce0d999ff9', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 00:16:26', '1', null);
INSERT INTO `tb_log` VALUES ('9c22d2f45575406a921cf04db9370fdb', '去新增', '去新增Classification页面', 'Classification', '2017-03-09 16:09:32', '1', null);
INSERT INTO `tb_log` VALUES ('9c34ba73d67f4b649508d1ee4820ca6e', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 13:53:06', '1', null);
INSERT INTO `tb_log` VALUES ('9c3c090d412a4080900c0bd1dfce2b75', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-16 20:13:55', '1', null);
INSERT INTO `tb_log` VALUES ('9c52a4db3fc04238873b988effe2c100', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:18:47', '1', null);
INSERT INTO `tb_log` VALUES ('9ca14748bf064d29a4169bd99dffbb87', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 11:21:35', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('9d175595f3e24b0c85272aaece3751fc', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-11 18:06:49', '1', null);
INSERT INTO `tb_log` VALUES ('9d3758307883415d8156f3befe65aeaf', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:24:21', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('9d4352f97b22443b956e1e2707d2fbb3', '查看列表', '查看Classification列表', 'Classification', '2017-03-14 09:09:05', '1', null);
INSERT INTO `tb_log` VALUES ('9d60b7d5f5954b36abc1be11d0f253be', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-31 11:57:39', '1', null);
INSERT INTO `tb_log` VALUES ('9dc2789be0c74d73832c7715833265e7', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:55:39', '1', null);
INSERT INTO `tb_log` VALUES ('9dd6616737534acda98a83524d935836', '去修改', '去修改Specifications页面', 'Specifications', '2017-03-14 00:07:55', '1', null);
INSERT INTO `tb_log` VALUES ('9e84b5e821524d5caa3d1c615fe44eb1', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:28:29', '1', null);
INSERT INTO `tb_log` VALUES ('9eb69938c4ca4a4980daf3065bd2dee9', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 03:23:16', '1', null);
INSERT INTO `tb_log` VALUES ('9ec5f4b1ffa44b6cad8afbbc70d3806e', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:05:58', '1', null);
INSERT INTO `tb_log` VALUES ('9ef241ea639c4a0fa84f727aba239021', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-18 14:43:06', '1', null);
INSERT INTO `tb_log` VALUES ('9f2069abf6a44a419d17167b35c7fea7', '修改', '修改PayManagement', 'PayManagement', '2017-05-05 17:00:05', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('9f3134a340c34db49a8db735fa9fdea5', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-31 11:55:02', '1', null);
INSERT INTO `tb_log` VALUES ('9f5cdb4740ae481080b2042cc08f2809', '去修改', '去修改Classification页面', 'Classification', '2017-04-24 20:00:11', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('9f6b95578a084d4e8ecff182bd893a30', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 13:44:01', '1', null);
INSERT INTO `tb_log` VALUES ('9ff7d07e83f14170ba80400c7ce2981a', '去修改', '去修改BussinessActivity页面', 'BussinessActivity', '2017-03-16 17:03:36', '1', null);
INSERT INTO `tb_log` VALUES ('a05716c8aade4210885bfeccef646ea4', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:53:59', '1', null);
INSERT INTO `tb_log` VALUES ('a0a47bdbd74b454aa4e3f8b00d99f3f9', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-09 19:33:26', '1', null);
INSERT INTO `tb_log` VALUES ('a0d3127708b04db7903b9ca5ffd72596', '修改', '修改OrderManger', 'OrderManger', '2017-03-15 17:24:09', '1', null);
INSERT INTO `tb_log` VALUES ('a10218969ce9452eae09a9d4326f069c', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-11 14:43:01', '1', null);
INSERT INTO `tb_log` VALUES ('a131a07739354f5ea76e3b880e804f9a', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 09:15:11', '1', null);
INSERT INTO `tb_log` VALUES ('a1dab540d7c543778e1830ebe826931f', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 19:28:57', '1', null);
INSERT INTO `tb_log` VALUES ('a20d23e6a7fd453fac41a2528b6fa37f', '去新增', '去新增Classification页面', 'Classification', '2017-03-14 09:08:56', '1', null);
INSERT INTO `tb_log` VALUES ('a226cbcffd5a418886e0247545840135', '新增', '新增Commodity', 'Commodity', '2017-03-14 02:58:37', '1', null);
INSERT INTO `tb_log` VALUES ('a228189227a34186be69b302d4c24b49', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-16 17:34:48', '1', null);
INSERT INTO `tb_log` VALUES ('a25a7900d4ee4f458146aed5133a64eb', '修改', '修改Commodity', 'Commodity', '2017-03-16 18:20:57', '1', null);
INSERT INTO `tb_log` VALUES ('a288c53e7dc24bfabb0cb29f984c1071', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 02:57:16', '1', null);
INSERT INTO `tb_log` VALUES ('a2e003f2b51342919a0b95e1568fb4a5', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:26:44', '1', null);
INSERT INTO `tb_log` VALUES ('a319574ada704284b5c3cefd6c7687d0', '查看列表', '查看Commodity列表', 'Commodity', '2017-04-24 16:26:53', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('a3615d5645964f5ba87c1fd3b280699f', '新增', '新增Logistics', 'Logistics', '2017-03-14 11:00:03', '1', null);
INSERT INTO `tb_log` VALUES ('a366f68897e0463493bfd974e9e53e7f', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-16 18:01:12', '1', null);
INSERT INTO `tb_log` VALUES ('a39c8c30b0f8436ba2e59d4c3361fd2d', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-16 17:34:46', '1', null);
INSERT INTO `tb_log` VALUES ('a3a5ed91505e4f3cbaec91d2655d2d55', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 19:38:22', '1', null);
INSERT INTO `tb_log` VALUES ('a3b5bd47ffb848e496785db0c87f7eb9', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 21:50:10', '1', null);
INSERT INTO `tb_log` VALUES ('a3b741ac736e4a99a06b113b9caad1f7', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-31 11:57:10', '1', null);
INSERT INTO `tb_log` VALUES ('a3f2418ff1cd4af798d1df267d823446', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-15 17:50:47', '1', null);
INSERT INTO `tb_log` VALUES ('a415c995423e48f28fcb2e1cdd048a36', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 20:02:14', '1', null);
INSERT INTO `tb_log` VALUES ('a4482f7b969c4746b3338c194493f9ae', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 21:19:48', '1', null);
INSERT INTO `tb_log` VALUES ('a4b4248449804b8a8b34f71096be4860', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 21:36:20', '1', null);
INSERT INTO `tb_log` VALUES ('a4b881c6a0ac4b37a6d97e6ac1c40cc2', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 06:58:28', '1', null);
INSERT INTO `tb_log` VALUES ('a4e9c837fded4471b2520249f2fed739', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 11:13:08', '1', null);
INSERT INTO `tb_log` VALUES ('a50297e294a3462ca7b07cf3c6aec40f', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:43:30', '1', null);
INSERT INTO `tb_log` VALUES ('a546264a7a0e47a5a29e1f847bd4d7cf', '去修改', '去修改LogisticsList页面', 'LogisticsList', '2017-03-14 21:56:14', '1', null);
INSERT INTO `tb_log` VALUES ('a57743ab003d453aa87f889ca6b18796', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 17:25:48', '1', null);
INSERT INTO `tb_log` VALUES ('a5a031cedf79406791dc652b378f9707', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-05-05 16:21:04', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('a5a4111bb3a947c9ae4ed04dcf38a4fa', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:05:45', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('a5efc7d3430147cfbc3de964d4c99352', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 16:57:48', '1', null);
INSERT INTO `tb_log` VALUES ('a60ae73cff3e4ef588922af210721a7a', '删除', '删除PayManagement', 'PayManagement', '2017-05-05 17:15:51', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('a615e4f61ad046148815cf84693b80bd', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-16 18:20:38', '1', null);
INSERT INTO `tb_log` VALUES ('a62c6baba3dd4613a2c0959b8b0bff0c', '修改', '修改OrderManger', 'OrderManger', '2017-03-15 17:26:06', '1', null);
INSERT INTO `tb_log` VALUES ('a63b1231e0e5458680dabdbc246811d4', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 02:57:56', '1', null);
INSERT INTO `tb_log` VALUES ('a686cc4fd19c4aaa96d8117729d5a9f5', 'hongbaosession', '登录微红包', '扫码获取session', '2017-05-03 12:22:40', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('a69e1162e9144ae29cf8fdaa19ff418b', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 19:58:44', '1', null);
INSERT INTO `tb_log` VALUES ('a744c614d2194827b1720f34c8ea09d8', '去新增', '去新增Classification页面', 'Classification', '2017-03-14 09:09:11', '1', null);
INSERT INTO `tb_log` VALUES ('a7601c666abf4277a78daf929c7fd7f7', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-15 17:49:55', '1', null);
INSERT INTO `tb_log` VALUES ('a7949889b20748f68a54c453c70774a6', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 20:57:21', '1', null);
INSERT INTO `tb_log` VALUES ('a8028554cf18460da4c77340ff7dd8b8', '修改', '修改editOrderType', 'editOrderType', '2017-03-11 18:09:14', '1', null);
INSERT INTO `tb_log` VALUES ('a8154ada13084e88b46febeacff6ee51', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 02:57:29', '1', null);
INSERT INTO `tb_log` VALUES ('a856eddf77d24974b92dded968c0235c', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:45:14', '1', null);
INSERT INTO `tb_log` VALUES ('a8d86f6fb9ad4b96a15d87aa5a1397e1', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 17:14:53', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('a922b3804ce545a2ad38b89fd725cf06', '去新增', '去新增PayManagement页面', 'PayManagement', '2017-05-05 16:20:35', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('a923fe8727074b6fbd896f2cb5846b6f', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 21:54:34', '1', null);
INSERT INTO `tb_log` VALUES ('a998d2f894c84f76ab5027b261934f9b', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:37:38', '1', null);
INSERT INTO `tb_log` VALUES ('aa1f4b426c554f5ca3812246e3db2c0b', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 02:25:07', '1', null);
INSERT INTO `tb_log` VALUES ('aa59e444ae06404781120fcfe53e79f0', '修改', '修改Commodity', 'Commodity', '2017-03-14 07:11:56', '1', null);
INSERT INTO `tb_log` VALUES ('aad311d857db4814a4ce79691eccb282', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 20:00:29', '1', null);
INSERT INTO `tb_log` VALUES ('ab39783d93da4d1095acca0697a2d040', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 21:44:13', '1', null);
INSERT INTO `tb_log` VALUES ('ab97bcb550084ea895ad2b85c57848c4', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 17:03:17', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('ab995d96f8c846a294b15bd5351238fe', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:45:36', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('abaf21c3e6ca41f792a9f04e8c8116d9', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 00:06:20', '1', null);
INSERT INTO `tb_log` VALUES ('abb80176e02246c78b572c76fbc090b4', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 07:05:02', '1', null);
INSERT INTO `tb_log` VALUES ('abbfd4687f5b4dbbb3cc2de9d06ca4fe', '新增', '新增BussinessActivity', 'BussinessActivity', '2017-03-16 16:55:01', '1', null);
INSERT INTO `tb_log` VALUES ('abddb7cb26344c07aa1cfef4e629c47e', '查看列表', '查看Commodity列表', 'Commodity', '2017-05-05 15:06:16', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('ac7cf266f8274f29a71c93c817a86c27', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:21:59', '1', null);
INSERT INTO `tb_log` VALUES ('ac8a44c204ea431ebd4bfb1ea7dbf854', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:13:11', '1', null);
INSERT INTO `tb_log` VALUES ('accce30b986344fe8e441f5d9218e834', '查看列表', '查看FeedBack列表', 'FeedBack', '2017-04-27 17:33:49', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('acf5a4fc8bbe412f97eaf53926f0e113', '查看列表', '查看Commodity列表', 'Commodity', '2017-04-24 20:00:28', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('acfca5f51cce49d497f54182c5b159ae', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-11 20:58:39', '1', null);
INSERT INTO `tb_log` VALUES ('acff514045f1419f9970d63841448d1f', '查看列表', '查看FeedBack列表', 'FeedBack', '2017-03-16 15:19:14', '1', null);
INSERT INTO `tb_log` VALUES ('ad0d45fc0a1d4cf79821be0d760797bf', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 09:17:02', '1', null);
INSERT INTO `tb_log` VALUES ('ad0f3e9466494eb9a121d166ec7f3681', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-16 17:31:31', '1', null);
INSERT INTO `tb_log` VALUES ('ad4274b0b6a54035895dae1ade9db681', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:45:09', '1', null);
INSERT INTO `tb_log` VALUES ('ad48bfc74f5a402cab4f8f8acfdc56ae', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-09 19:52:16', '1', null);
INSERT INTO `tb_log` VALUES ('ad9b8194304c4c22848df4fdcbfa0fa7', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-13 22:44:11', '1', null);
INSERT INTO `tb_log` VALUES ('adb48504efdb4bb9b445177093b0c223', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 02:57:58', '1', null);
INSERT INTO `tb_log` VALUES ('adc66f12b6124deba0816875c3d42121', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-31 15:50:42', '1', null);
INSERT INTO `tb_log` VALUES ('adc86660e7fd42049dcaf5bac22fa563', 'hongbaosession', '登录微红包', '扫码获取session', '2017-05-03 10:49:55', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('add58f32ade34e73982ea2d3c7d05d4f', '查看列表', '查看Classification列表', 'Classification', '2017-05-05 15:06:25', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('adf25835a6b94396a73af92a7247d350', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-09 15:00:49', '1', null);
INSERT INTO `tb_log` VALUES ('ae11d8859142400a932e216dd42219f4', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 14:07:09', '1', null);
INSERT INTO `tb_log` VALUES ('ae64af3659c44821bd5648dbcff10409', '查看列表', '查看会员详情列表', 'findByVipId', '2017-04-27 17:35:06', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('ae667ef3d50d4271995162e813c164b6', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:16:15', '1', null);
INSERT INTO `tb_log` VALUES ('ae8cf62686494319b4c66d2939649805', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:42:37', '1', null);
INSERT INTO `tb_log` VALUES ('aec150fc17a14e5baf80ec4028609518', '查看列表', '查看Commodity列表', 'Commodity', '2017-04-24 20:07:25', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('af27c6ade5fa49878532199d299cb67a', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-31 11:54:54', '1', null);
INSERT INTO `tb_log` VALUES ('af3392b29c2f4604bc964260163f02c7', '查看列表', '查看VipManger列表', 'VipManger', '2017-05-05 15:06:28', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('af5b3bce1a8f41cd890855036c2af9a4', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:02:46', '1', null);
INSERT INTO `tb_log` VALUES ('afecc8a2bd3f45f9b013d2babed90551', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-05-05 15:06:19', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('b01e13c7859a414d96633ea481cb189d', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-09 14:32:40', '1', null);
INSERT INTO `tb_log` VALUES ('b02b0666a0bb4cf2b25b16b17eb39073', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:11:43', '1', null);
INSERT INTO `tb_log` VALUES ('b03fff132c9c431fac2ac6eaba3e3fa7', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-14 19:37:22', '1', null);
INSERT INTO `tb_log` VALUES ('b047f68b51a04b43bbad46734ec6aa04', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 22:21:40', '1', null);
INSERT INTO `tb_log` VALUES ('b0a3ecee123d4ce7af307134c8ec08c5', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 09:28:41', '1', null);
INSERT INTO `tb_log` VALUES ('b0c1b9d28a444052a870803ae8fbe60b', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:08:21', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('b0f284e3d736473ab6233e91e074ec88', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 16:25:07', '1', null);
INSERT INTO `tb_log` VALUES ('b134323712114f7fab0ad9ebc9ef15dc', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 16:52:24', '1', null);
INSERT INTO `tb_log` VALUES ('b13d98daa91c41edbffc4060d38dc489', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 22:20:18', '1', null);
INSERT INTO `tb_log` VALUES ('b1981c84f5b04e2e8ea9b3d1e35df208', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-21 15:06:55', '1', null);
INSERT INTO `tb_log` VALUES ('b23ab7662d6c4f0490d2fef7e3d2a6c1', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-04-06 14:20:43', '1', null);
INSERT INTO `tb_log` VALUES ('b23d20fd9d0b4890a137396bdf84f029', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-11 14:40:22', '1', null);
INSERT INTO `tb_log` VALUES ('b243170fb67f4e4c8ae96da4f7cda4a8', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:01:14', '1', null);
INSERT INTO `tb_log` VALUES ('b2f643f6214e4464a49cd301ef0758fd', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-12 19:55:12', '1', null);
INSERT INTO `tb_log` VALUES ('b33dfe9feca84fcebe8cc71b236b01d8', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 11:03:34', '1', null);
INSERT INTO `tb_log` VALUES ('b3659b192779496f8c7cd4b90e75cee9', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 22:52:20', '1', null);
INSERT INTO `tb_log` VALUES ('b40c47871a3f43958d9c3758edb4d5b7', '删除', '删除PayManagement', 'PayManagement', '2017-05-05 17:15:01', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('b44faf81ba12458eb3747d7e52b0c9ce', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 19:31:17', '1', null);
INSERT INTO `tb_log` VALUES ('b46551f6e4294d098445a4d3d4c00fcd', '新增', '新增Classification', 'Classification', '2017-03-14 09:09:05', '1', null);
INSERT INTO `tb_log` VALUES ('b46e2392439b4f11b9b99363050ca30d', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 10:48:47', '1', null);
INSERT INTO `tb_log` VALUES ('b4889da75a0f457bb1dc1b6005683c99', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-09 19:53:33', '1', null);
INSERT INTO `tb_log` VALUES ('b49e02babb314b1c96dd390e19d69b7f', '去新增', '去新增LogisticsList页面', 'LogisticsList', '2017-03-14 11:00:50', '1', null);
INSERT INTO `tb_log` VALUES ('b4ec53e596c143c9968f86486c9879fd', '查看列表', '查看Classification列表', 'Classification', '2017-03-31 11:56:16', '1', null);
INSERT INTO `tb_log` VALUES ('b4fd6efcbd5c442ea4bf2f6a86026f78', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-16 18:19:33', '1', null);
INSERT INTO `tb_log` VALUES ('b504865bcd264a22a43a3494e60ae94c', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-09 19:53:51', '1', null);
INSERT INTO `tb_log` VALUES ('b5482ca0f96541ce8f15df2630cb06c6', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-04-24 20:00:23', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('b56912e35051434e8a2956d1370068c7', '新增', '新增Commodity', 'Commodity', '2017-03-14 15:20:08', '1', null);
INSERT INTO `tb_log` VALUES ('b575bf3848c647e692257593ea6cf605', '删除', '删除Commodityimg', 'Commodityimg', '2017-03-14 14:26:09', '1', null);
INSERT INTO `tb_log` VALUES ('b57a1e59e9c148bb99e695a21d5bb776', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 16:07:52', '1', null);
INSERT INTO `tb_log` VALUES ('b58a59096ddc4e39b00025290f3d442b', '查看列表', '查看Classification列表', 'Classification', '2017-03-15 09:33:10', '1', null);
INSERT INTO `tb_log` VALUES ('b5dfa98b41ca45b29da7b584bb985879', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:50:10', '1', null);
INSERT INTO `tb_log` VALUES ('b63865027e9a427b8bbbf90ed4ae657d', '查看列表', '查看Commodity列表', 'Commodity', '2017-04-24 19:59:20', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('b66e3467d174452e85d0ecf5096f2e28', '新增', '新增LogisticsList', 'LogisticsList', '2017-03-12 19:27:52', '1', null);
INSERT INTO `tb_log` VALUES ('b6e1cd2ef34e440d81f08cb5d915b290', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 07:11:46', '1', null);
INSERT INTO `tb_log` VALUES ('b6e925609c4d40f6b31b46f5ba243d59', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:40:25', '1', null);
INSERT INTO `tb_log` VALUES ('b7081583626941aeb1172e5d200650bd', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-04-24 20:02:56', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('b74f350a2e84473e92c047ae75e32682', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 07:05:12', '1', null);
INSERT INTO `tb_log` VALUES ('b7540b451e3541678f6c5a3fbeb5e649', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 14:14:37', '1', null);
INSERT INTO `tb_log` VALUES ('b78fb69815834efc83b6859e65b6c64b', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-16 20:15:01', '1', null);
INSERT INTO `tb_log` VALUES ('b7a09877423c41e182f35fffd406ebba', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-04-24 20:00:07', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('b7da8b2ed3ca49bf91ee259fc7b65582', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 07:11:54', '1', null);
INSERT INTO `tb_log` VALUES ('b7fe12695bb345a599f6391422d920f2', '查看列表', '查看FeedBack列表', 'FeedBack', '2017-03-18 14:39:28', '1', null);
INSERT INTO `tb_log` VALUES ('b831a233dfed4ec0ae4e4c8dbe4a4366', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:59:32', '1', null);
INSERT INTO `tb_log` VALUES ('b8389092964b417d8a7556279d337ed4', '去修改', '去修改Specifications页面', 'Specifications', '2017-03-14 00:17:08', '1', null);
INSERT INTO `tb_log` VALUES ('b844daad83b34dc6aa32e08a85fcceb8', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 16:09:30', '1', null);
INSERT INTO `tb_log` VALUES ('b8664590e41441e491e769cd4a451321', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 18:00:33', '1', null);
INSERT INTO `tb_log` VALUES ('b87348bd66b1496a924127ebe16f2887', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-10 16:52:32', '1', null);
INSERT INTO `tb_log` VALUES ('b879a0267a4c4937aca10b35fd4f93e2', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-16 17:01:05', '1', null);
INSERT INTO `tb_log` VALUES ('b89b907381eb4e0e9c6287f884757590', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-05-05 16:58:51', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('b8ab2d899cf74a0a91b7b5c5bbe85d74', '去新增', '去新增Commodityimg页面', 'Commodityimg', '2017-03-14 07:08:56', '1', null);
INSERT INTO `tb_log` VALUES ('b8bf91837ca44f71aed82f84ee6d4580', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-10 15:40:10', '1', null);
INSERT INTO `tb_log` VALUES ('b9187abcbf1143a6a3f69adc5b3b7706', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-10 10:24:26', '1', null);
INSERT INTO `tb_log` VALUES ('b958bb971802447eb39d78ac544772f1', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 15:11:00', '1', null);
INSERT INTO `tb_log` VALUES ('b96c453a0be6420f98f42b984148c548', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:16:09', '1', null);
INSERT INTO `tb_log` VALUES ('b9e8b5d9705d4ee4923c297ea29d7511', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-09 19:38:17', '1', null);
INSERT INTO `tb_log` VALUES ('ba1b21fe5be8406c95715af10582fe6d', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 16:05:57', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('baf87ed53a414d5aa829edf603280d6c', '修改', '修改PayManagement', 'PayManagement', '2017-05-05 16:05:44', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('bb1400c102cb4655b0818d21a82cff70', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-15 18:16:06', '1', null);
INSERT INTO `tb_log` VALUES ('bb59391712dd45e5bc407e16979f0b3f', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 13:53:01', '1', null);
INSERT INTO `tb_log` VALUES ('bbb4e554b8234ba2a0569cbd3cc861f3', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 15:11:08', '1', null);
INSERT INTO `tb_log` VALUES ('bbbb42af152343bbb968cf0aabd05b89', '去新增', '去新增Commodityimg页面', 'Commodityimg', '2017-03-14 11:13:09', '1', null);
INSERT INTO `tb_log` VALUES ('bbcff34c366f41a2a4cc117ac63a50f3', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 19:29:11', '1', null);
INSERT INTO `tb_log` VALUES ('bc0f53cc2fe74bab9cf4758d7ef4330a', '查看列表', '查看Logistics列表', 'Logistics', '2017-04-24 20:02:23', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('bc3526b669e440c4b93abf67acddd007', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 11:06:49', '1', null);
INSERT INTO `tb_log` VALUES ('bc53a11e18c74ef5990ff0e354c42b9e', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-04-24 20:02:51', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('bc5aeb35359f49b8a4a4ecf8b4d2d90f', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:51:34', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('bc6cd475682c49d08ba633b1add65306', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-31 15:50:40', '1', null);
INSERT INTO `tb_log` VALUES ('bca619ae7b754aa18ae833ab75561e50', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-31 15:50:39', '1', null);
INSERT INTO `tb_log` VALUES ('bccb12f351c1429d91521559f31d62f6', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 21:52:28', '1', null);
INSERT INTO `tb_log` VALUES ('bcd58f030d5049859aca411484f5b530', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 14:07:26', '1', null);
INSERT INTO `tb_log` VALUES ('bcd7d5ff310643b5ae27335ebfefee34', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 02:26:08', '1', null);
INSERT INTO `tb_log` VALUES ('bd0ee52893a046d0b1534d86337d3102', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 09:08:04', '1', null);
INSERT INTO `tb_log` VALUES ('bd27698c9ca94a8a8c8236cb6eefeab3', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-14 19:31:03', '1', null);
INSERT INTO `tb_log` VALUES ('bd771b582a4646b4b3a8beee0c7afe20', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-04-28 11:30:42', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('bd9aba80db2a421e96485d28dfee27dd', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-15 16:57:50', '1', null);
INSERT INTO `tb_log` VALUES ('bda989c7117d41659e57d4f2937f81f7', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-16 15:14:21', '1', null);
INSERT INTO `tb_log` VALUES ('bdc1941f6a574152b1ebcc0ae59a1d0e', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:22:02', '1', null);
INSERT INTO `tb_log` VALUES ('bdc914dbc9e941f3b6aa9c615347be26', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 16:27:45', '1', null);
INSERT INTO `tb_log` VALUES ('bdcaa1da831f40459b6a82752bde8612', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 11:13:04', '1', null);
INSERT INTO `tb_log` VALUES ('bdccf23a347d46878b2c6bdd3cde9ca6', '查看列表', '查看Classification列表', 'Classification', '2017-03-31 11:55:17', '1', null);
INSERT INTO `tb_log` VALUES ('bdd57518f2a74f49bb040d7fe4ca96d8', '删除', '删除LogisticsList', 'LogisticsList', '2017-03-11 18:16:15', '1', null);
INSERT INTO `tb_log` VALUES ('bddc774b77f24fc384923c8bea1604bf', '新增', '新增Commodity', 'Commodity', '2017-03-14 03:35:41', '1', null);
INSERT INTO `tb_log` VALUES ('bde6b5b6a6bf4dae9c1b388da53d32e0', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 17:58:14', '1', null);
INSERT INTO `tb_log` VALUES ('be46d50b7ca54cdea53d55d1e2312386', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-04-24 19:59:42', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('be4bfe8f3c114c6eaf1ffcf25d932e39', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:04:38', '1', null);
INSERT INTO `tb_log` VALUES ('be5aa27e96cc41f2b998c9b61a550a89', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-11 18:09:11', '1', null);
INSERT INTO `tb_log` VALUES ('beaa01e4fe36431ebe494f1555dc8556', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:56:20', '1', null);
INSERT INTO `tb_log` VALUES ('bee23ca450df4bcf91c3c6b325c70983', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:31:37', '1', null);
INSERT INTO `tb_log` VALUES ('bef0de6187914033afb21b9d29f676e7', '新增', '新增Classification', 'Classification', '2017-03-09 15:40:35', '1', null);
INSERT INTO `tb_log` VALUES ('bf4b70ee529540b2ab8661c1a29c82ed', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:30:52', '1', null);
INSERT INTO `tb_log` VALUES ('bfd5ac44161842fc88e0cfaf69dbfbe6', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 15:09:25', '1', null);
INSERT INTO `tb_log` VALUES ('bff58a19c21649548d7623e46ad020b1', '查看列表', '查看Commodity列表', 'Commodity', '2017-04-24 20:00:26', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('c06dd9a93ff74fc29eb1b3bda6f07415', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-10 10:24:28', '1', null);
INSERT INTO `tb_log` VALUES ('c09ed3b7f63a41179a76018fe5e0bd52', '去修改', '去修改Classification页面', 'Classification', '2017-03-14 09:08:52', '1', null);
INSERT INTO `tb_log` VALUES ('c0e062b435d246f7a0e36537462bdbc1', '查看列表', '查看Classification列表', 'Classification', '2017-03-14 19:31:13', '1', null);
INSERT INTO `tb_log` VALUES ('c0e0da896e534111985a85b3b76abe70', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 09:27:26', '1', null);
INSERT INTO `tb_log` VALUES ('c15f3ca082574d0bb0c4475370d8d6ca', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 20:01:56', '1', null);
INSERT INTO `tb_log` VALUES ('c1c4d94be7e64db2bf4943bc7f65a364', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:27:28', '1', null);
INSERT INTO `tb_log` VALUES ('c1cc71bec63f41cbbc009ab24cf9b441', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:56:56', '1', null);
INSERT INTO `tb_log` VALUES ('c1d132eb98294992a464afbf0c1497de', '查看列表', '查看Logistics列表', 'Logistics', '2017-04-24 20:02:45', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('c1e713979c9642a1b50b0d2db2a9a77c', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-10 10:25:00', '1', null);
INSERT INTO `tb_log` VALUES ('c1ee1baaa8a14f9d8377ca6615fb6e5d', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-16 15:14:48', '1', null);
INSERT INTO `tb_log` VALUES ('c2284a11f7c54450aca8453bfb0e4812', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 02:24:36', '1', null);
INSERT INTO `tb_log` VALUES ('c235423c5cb046d596a780f245bdfa58', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-16 17:25:53', '1', null);
INSERT INTO `tb_log` VALUES ('c23b3a3d76c040088c92426d40de4cdb', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 11:13:35', '1', null);
INSERT INTO `tb_log` VALUES ('c24ad7b4957546bd8c3899de9d538078', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 13:42:38', '1', null);
INSERT INTO `tb_log` VALUES ('c25710dd6e74445986aa41d60a6bfdc6', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 02:26:10', '1', null);
INSERT INTO `tb_log` VALUES ('c270779427164fcdaaa3330a943c3f82', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-04-28 15:54:10', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('c29bd4ecf1364260bb3e4605f9d307ad', '删除', '删除PayManagement', 'PayManagement', '2017-05-05 16:15:53', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('c2c609c64f534649940cbd74b29da560', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-11 18:09:15', '1', null);
INSERT INTO `tb_log` VALUES ('c338bcd971fd4fd2ab527b57f5fba1c7', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-21 15:09:29', '1', null);
INSERT INTO `tb_log` VALUES ('c3ac25f884b3474da97c5950df4a07fb', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-16 18:01:29', '1', null);
INSERT INTO `tb_log` VALUES ('c3cc7dfe845840138ccd6d3ad1851b5e', '新增', '新增Classification', 'Classification', '2017-03-14 09:08:49', '1', null);
INSERT INTO `tb_log` VALUES ('c3d914779ab14c1b909f3a0c9f3a96b4', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 22:40:42', '1', null);
INSERT INTO `tb_log` VALUES ('c477311af3ea45f1936193ec38cf3973', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-15 17:26:02', '1', null);
INSERT INTO `tb_log` VALUES ('c492352bd9ea47119bc6b02d253d8860', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 10:59:10', '1', null);
INSERT INTO `tb_log` VALUES ('c4aa4d8f29aa4b62bdff78ed384afacb', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 16:51:28', '1', null);
INSERT INTO `tb_log` VALUES ('c4acd5417f0148888593486d1e8e6327', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 02:57:25', '1', null);
INSERT INTO `tb_log` VALUES ('c4b02fcb4f4f483394df30cd0b5cca44', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 11:13:19', '1', null);
INSERT INTO `tb_log` VALUES ('c4df6c8817e74093bd9efdb125c755d9', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-10 09:19:53', '1', null);
INSERT INTO `tb_log` VALUES ('c4f93cb31cc64f8a915a3b0378ce6548', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-11 14:35:31', '1', null);
INSERT INTO `tb_log` VALUES ('c5024232b3ad4a459fa7dda640150151', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-31 11:55:24', '1', null);
INSERT INTO `tb_log` VALUES ('c51cf3fe03ed4d519a3beb64a21b704d', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-05-05 16:51:37', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('c536382c84f2481bac79913d0e530fa9', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 07:04:01', '1', null);
INSERT INTO `tb_log` VALUES ('c55d5e6166ec44c2a51abecf6f9cd2a8', '修改', '修改PayManagement', 'PayManagement', '2017-04-28 11:00:30', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('c57fd87afb9a47aca036983c368c22c4', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:02:12', '1', null);
INSERT INTO `tb_log` VALUES ('c590a2ce0bfe42f68a4124c345d42033', '去修改', '去修改Commodityimg页面', 'Commodityimg', '2017-03-14 11:14:30', '1', null);
INSERT INTO `tb_log` VALUES ('c59246199709484e93f8f2b0557d5adb', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 17:00:03', '1', null);
INSERT INTO `tb_log` VALUES ('c5b61b70a39643998c10cc24e11d7466', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-04-24 19:59:09', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('c60997be027045989033448bfd26d15d', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-05-05 15:10:21', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('c6abcc98d4e140ae9e25a4e682604095', '去修改', '去修改FeedBack页面', 'FeedBack', '2017-04-27 17:34:08', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('c6be63465b194fcaa61292b9f2a9c690', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-04-28 15:53:24', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('c6c84416dfe84934b6211d0bdadad27d', '修改', '修改PayManagement', 'PayManagement', '2017-05-05 16:44:45', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('c6ebba56610a439bb8c7914c79fc3506', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-15 20:26:27', '1', null);
INSERT INTO `tb_log` VALUES ('c6f672f6351d4a93a5e0e6e6495bf761', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 21:47:35', '1', null);
INSERT INTO `tb_log` VALUES ('c71514dbcb1b468d9ddda524c0475eef', '查看列表', '查看Classification列表', 'Classification', '2017-04-06 14:21:04', '1', null);
INSERT INTO `tb_log` VALUES ('c74ed668f4ee4fa6b3a24eb35991ba72', '去新增', '去新增LogisticsList页面', 'LogisticsList', '2017-03-12 19:36:54', '1', null);
INSERT INTO `tb_log` VALUES ('c7581357891b4057879225c6d18336b1', '修改', '修改OrderManger', 'OrderManger', '2017-03-11 14:45:47', '1', null);
INSERT INTO `tb_log` VALUES ('c77740d6d4954cd2a7965634b40e95f8', '去修改', '去修改Specifications页面', 'Specifications', '2017-03-14 14:21:37', '1', null);
INSERT INTO `tb_log` VALUES ('c78a55de63e34af88e3b68f4fde8ecbe', '去修改', '去修改Commodityimg页面', 'Commodityimg', '2017-03-31 14:15:02', '1', null);
INSERT INTO `tb_log` VALUES ('c7cf410864a24887b4209c64828084c4', '新增', '新增Commodity', 'Commodity', '2017-03-14 14:25:25', '1', null);
INSERT INTO `tb_log` VALUES ('c7fae2d1659f41fb87b5a5bf7bd19940', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 21:11:52', '1', null);
INSERT INTO `tb_log` VALUES ('c817fbbe80f34dbab14044780fe1b34c', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:27:43', '1', null);
INSERT INTO `tb_log` VALUES ('c83c7b64d71b44c1b79f619dc9ff23b0', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 03:40:19', '1', null);
INSERT INTO `tb_log` VALUES ('c8c8e6d3cf9f452690906fb474e3c32e', '去修改', '去修改Commodityimg页面', 'Commodityimg', '2017-03-14 07:01:53', '1', null);
INSERT INTO `tb_log` VALUES ('c8e623ab0c42420abfc27c1fe1270001', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 14:06:24', '1', null);
INSERT INTO `tb_log` VALUES ('c8e86e944333467ebfd45187d3390b77', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-11 14:37:07', '1', null);
INSERT INTO `tb_log` VALUES ('c8ec29e631a2435e9e38b683b8ff7bb0', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-04-24 20:00:07', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('c93bac6ab5164ac0b0972c6000cbd9df', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 02:26:12', '1', null);
INSERT INTO `tb_log` VALUES ('c97b306ccd4a45f4ae7f6b505cabee4f', '红包', '登录微红包', 'ce68ade5791e4921be891c6f55901e59', '2017-05-02 15:24:33', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('c9a877025eb44ddab4afd95f7b9b61bc', '新增', '新增Commodity', 'Commodity', '2017-03-14 03:02:56', '1', null);
INSERT INTO `tb_log` VALUES ('c9ac5af8fec94921b54f5d428fefb565', '去新增', '去新增LogisticsList页面', 'LogisticsList', '2017-03-12 19:27:46', '1', null);
INSERT INTO `tb_log` VALUES ('c9df84ee667648d3a029b21ee9018424', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-04-24 19:59:22', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('c9e70350d01c42ccaaa7b073e760285c', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 11:13:16', '1', null);
INSERT INTO `tb_log` VALUES ('cabcab36e18244d19defb13922de6c1d', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-15 15:01:16', '1', null);
INSERT INTO `tb_log` VALUES ('cad6ea3ac4524f5d80500509abd7418a', '去新增', '去新增Logistics页面', 'Logistics', '2017-03-14 10:59:58', '1', null);
INSERT INTO `tb_log` VALUES ('caf7f9435c62453c8f19904a90b1cbc7', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 18:18:47', '1', null);
INSERT INTO `tb_log` VALUES ('cb155e8d2cbf499fa3338c8f98ce6072', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:58:03', '1', null);
INSERT INTO `tb_log` VALUES ('cb29efc577244a2cb09588460f0a77a8', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-16 17:02:54', '1', null);
INSERT INTO `tb_log` VALUES ('cb49a9e2eb3b44129e07030708e1b8e3', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:04:04', '1', null);
INSERT INTO `tb_log` VALUES ('cb519f030dc547bd9daab557e54f1bf3', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-31 11:56:46', '1', null);
INSERT INTO `tb_log` VALUES ('cb86832fde624539a9571c33f16ec993', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 21:50:32', '1', null);
INSERT INTO `tb_log` VALUES ('cb90f9cf3c774461be89b4bfa0ee4ed5', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 07:02:46', '1', null);
INSERT INTO `tb_log` VALUES ('cb98f1cd94c3459d8113c0d037630283', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 11:00:28', '1', null);
INSERT INTO `tb_log` VALUES ('cc3f6f0a8fe44a16948609c916fb4f73', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 21:47:07', '1', null);
INSERT INTO `tb_log` VALUES ('cc697b9b2abe4ba6b96472d5f32087f1', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 16:56:38', '1', null);
INSERT INTO `tb_log` VALUES ('cc78e540b21c4855a9acf26ddb393d98', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:16:17', '1', null);
INSERT INTO `tb_log` VALUES ('ccc23f3283204ac7b90a19dfc852f95b', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 21:19:40', '1', null);
INSERT INTO `tb_log` VALUES ('cd31fbef10b54dc181b2720421033b19', '修改', '修改LogisticsList', 'LogisticsList', '2017-03-14 21:51:38', '1', null);
INSERT INTO `tb_log` VALUES ('cd5b6ef10a8544df8dcd273752585fe9', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-09 19:53:09', '1', null);
INSERT INTO `tb_log` VALUES ('cd933ad6eaa54519965c9fae3fad5be8', '查看列表', '查看VipManger列表', 'VipManger', '2017-04-06 14:21:17', '1', null);
INSERT INTO `tb_log` VALUES ('cddeead6ba3f4b50affbcca008c9d970', '新增', '新增Specifications', 'Specifications', '2017-03-14 17:51:28', '1', null);
INSERT INTO `tb_log` VALUES ('ce261e33c66d42f489517cb41ac603a8', '去新增', '去新增LogisticsList页面', 'LogisticsList', '2017-03-14 11:00:38', '1', null);
INSERT INTO `tb_log` VALUES ('ce340c4718004954bd10e6d492d3172f', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 03:34:09', '1', null);
INSERT INTO `tb_log` VALUES ('ce3ba5fe1c6246069230a1cc85561189', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 22:55:39', '1', null);
INSERT INTO `tb_log` VALUES ('ce5f456aabf343eab87afe296e44ca13', '修改', '修改Commodityimg', 'Commodityimg', '2017-03-14 07:04:01', '1', null);
INSERT INTO `tb_log` VALUES ('ce96563f61ee489d859afbc5739e9aff', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-11 18:11:00', '1', null);
INSERT INTO `tb_log` VALUES ('ceb54893bd854e5e8dfb40f12d88fc73', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 16:27:43', '1', null);
INSERT INTO `tb_log` VALUES ('ceebec2cacac41d289a26377b8df5561', '去新增', '去新增Commodity页面', 'Commodity', '2017-04-24 20:09:00', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('cef649c1d63043b6819e9bf5ad148d43', '查看列表', '查看FeedBack列表', 'FeedBack', '2017-03-16 15:03:58', '1', null);
INSERT INTO `tb_log` VALUES ('cf2731a991fe4569b076c809d50250a4', '修改', '修改PayManagement', 'PayManagement', '2017-05-05 16:52:02', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('cf63bf1147ae4b72a9c6e6ee0efb55db', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-31 14:14:39', '1', null);
INSERT INTO `tb_log` VALUES ('cf6c1588d3ad478aba0f6ad8eef8a812', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 10:52:49', 'ce68ade5791e4921be891c6f55901e59', null);
INSERT INTO `tb_log` VALUES ('cf7618921f6f4a0eae7811b1cc184dcf', '查看列表', '查看Classification列表', 'Classification', '2017-04-24 20:00:06', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('cf7b2b056e0442f3b4146bc451c4c207', '新增', '新增Commodity', 'Commodity', '2017-03-14 02:59:32', '1', null);
INSERT INTO `tb_log` VALUES ('cf96803d3a974a1ca136dc13928ea60d', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-13 22:42:52', '1', null);
INSERT INTO `tb_log` VALUES ('cfa2079ad8184f74ae6c0fee063ae043', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-04-28 16:09:38', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('cfab698ba69048ff836936e2e5c1d9c2', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 14:03:38', '1', null);
INSERT INTO `tb_log` VALUES ('cfbbd5d3d5a54958b55fe22fbe213cf4', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-31 11:58:19', '1', null);
INSERT INTO `tb_log` VALUES ('cfddcbb3bf8a4ac086136781a919a030', '修改', '修改BussinessActivity', 'BussinessActivity', '2017-03-16 17:03:06', '1', null);
INSERT INTO `tb_log` VALUES ('d008d04a47cb41568272eca9faf24a27', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-16 15:17:39', '1', null);
INSERT INTO `tb_log` VALUES ('d02c547e07f44c1b802b9fdb55027aba', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-04-24 19:59:50', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('d03585deae8848a2a1d4138234fd86ef', '去新增', '去新增LogisticsList页面', 'LogisticsList', '2017-03-11 20:56:15', '1', null);
INSERT INTO `tb_log` VALUES ('d03c39a0587d4947a5053d97a525530a', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 03:22:53', '1', null);
INSERT INTO `tb_log` VALUES ('d055fffbd59441cda29e2bfd3aedc97c', '去新增', '去新增BussinessActivity页面', 'BussinessActivity', '2017-04-24 19:58:44', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('d058401ce43b4473879430b0ed733be7', '修改', '修改Classification', 'Classification', '2017-03-09 16:07:15', '1', null);
INSERT INTO `tb_log` VALUES ('d0b724f87af94307b9de428e27051ebd', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-04-24 20:07:26', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('d0c985e15eb04bdeb9855a03206c4605', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 09:19:46', '1', null);
INSERT INTO `tb_log` VALUES ('d10de2efda0d45f2bb2f413172ace601', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 20:02:46', '1', null);
INSERT INTO `tb_log` VALUES ('d1499baf29c54dd9a2400f4f9ef424d6', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-18 14:40:27', '1', null);
INSERT INTO `tb_log` VALUES ('d1976ff76ab847f88fe767b48e5012f7', '批量删除', '批量删除{objectName}', 'Commodity', '2017-03-14 06:57:10', '1', null);
INSERT INTO `tb_log` VALUES ('d1ef0cf33f5d4974bcb30da422582309', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 15:55:17', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('d263b1cf2bfb40799f362a13a0e343ce', '查看列表', '查看Classification列表', 'Classification', '2017-04-06 14:24:09', '1', null);
INSERT INTO `tb_log` VALUES ('d278a0cd1c51469c839bd293d48daed6', '新增', '新增PayManagement', 'PayManagement', '2017-04-28 11:08:31', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('d2a0ea7d9ed94d09ab23ba009a7537d3', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:02:03', '1', null);
INSERT INTO `tb_log` VALUES ('d2b4136a30bf466ab311c5aa9fd61996', '查看列表', '查看Classification列表', 'Classification', '2017-03-14 09:08:49', '1', null);
INSERT INTO `tb_log` VALUES ('d3292c8db2d4449fa7a48564f56aa3f4', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-04-28 15:57:25', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('d33bc4cb37234fe1ad02b8ef60634859', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 07:08:50', '1', null);
INSERT INTO `tb_log` VALUES ('d34556f44a594aeba4cae0b6128f922d', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 21:08:45', '1', null);
INSERT INTO `tb_log` VALUES ('d42fd266f9994ad8ab20ff03d2c98aac', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-13 22:40:47', '1', null);
INSERT INTO `tb_log` VALUES ('d45836ee0a9149c0a796d74a89ddc079', '删除', '删除LogisticsList', 'LogisticsList', '2017-03-14 11:03:30', '1', null);
INSERT INTO `tb_log` VALUES ('d485d6c3d4874bb797b7e87049318d1b', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-15 17:23:55', '1', null);
INSERT INTO `tb_log` VALUES ('d4b4938a43bf478f9ed55593af426f1d', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 16:09:35', '1', null);
INSERT INTO `tb_log` VALUES ('d4b75bb9cc1f4975b46cbac962aed1fa', '查看列表', '查看FeedBack列表', 'FeedBack', '2017-03-16 15:02:42', '1', null);
INSERT INTO `tb_log` VALUES ('d4beacf01c084545962dcbff3f544fc4', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-11 14:44:36', '1', null);
INSERT INTO `tb_log` VALUES ('d4e6577e37f04adea4bad6ade2db6de4', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-10 16:53:09', '1', null);
INSERT INTO `tb_log` VALUES ('d4f1bc4f7f884991a3db4606376a1127', '去修改', '去修改FeedBack页面', 'FeedBack', '2017-03-16 15:23:19', '1', null);
INSERT INTO `tb_log` VALUES ('d50d3fc38bf5427a995d60e121fa78dc', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 09:10:45', '1', null);
INSERT INTO `tb_log` VALUES ('d5206e94896c421fa05a3d5dc6bc8853', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 21:20:37', '1', null);
INSERT INTO `tb_log` VALUES ('d529a3a422054b47889556b3babd5f85', '新增', '新增Specifications', 'Specifications', '2017-03-14 13:36:28', '1', null);
INSERT INTO `tb_log` VALUES ('d5b041d9b8d74656aecefba5e834e3b0', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-16 17:42:06', '1', null);
INSERT INTO `tb_log` VALUES ('d5b7e5acc4b3486fa469841b207168c5', '去新增', '去新增Classification页面', 'Classification', '2017-03-09 16:09:26', '1', null);
INSERT INTO `tb_log` VALUES ('d5dec2967dc94a77ad9a272a6e036b22', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-16 20:13:51', '1', null);
INSERT INTO `tb_log` VALUES ('d5e1f4dfd8904d148874ec03845ef920', '修改', '修改BussinessActivity', 'BussinessActivity', '2017-03-16 17:01:18', '1', null);
INSERT INTO `tb_log` VALUES ('d5eb305bc0f9459b81bccac637bb837a', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-09 19:45:00', '1', null);
INSERT INTO `tb_log` VALUES ('d6515c9afcd94320b190217a175246cc', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-31 11:58:21', '1', null);
INSERT INTO `tb_log` VALUES ('d680e1bc38cf41c58d929a4b8560a6bc', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 20:55:28', '1', null);
INSERT INTO `tb_log` VALUES ('d69a0a48d7a640809bc516a835cd2d97', '修改', '修改OrderManger', 'OrderManger', '2017-03-10 16:56:13', '1', null);
INSERT INTO `tb_log` VALUES ('d6f3452b75024a3f8c36f3435c09bd64', '去修改', '去修改FeedBack页面', 'FeedBack', '2017-03-16 15:06:12', '1', null);
INSERT INTO `tb_log` VALUES ('d719e1fc7c7945bea08d5bd0189a5a3f', '新增', '新增Logistics', 'Logistics', '2017-03-11 18:09:29', '1', null);
INSERT INTO `tb_log` VALUES ('d793caa6db244f1ebff2b01ffeda23b7', '去新增', '去新增VipManger页面', 'VipManger', '2017-03-31 11:55:45', '1', null);
INSERT INTO `tb_log` VALUES ('d7a19ac7eb37445cb772c15943e2ecbd', '去新增', '去新增LogisticsList页面', 'LogisticsList', '2017-03-12 19:28:47', '1', null);
INSERT INTO `tb_log` VALUES ('d7d02d4ba8db4000bdfc93f28177cbd6', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-12 19:28:33', '1', null);
INSERT INTO `tb_log` VALUES ('d82cfa2ca6c640b88d8884920e763967', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 20:26:20', '1', null);
INSERT INTO `tb_log` VALUES ('d89b9c617b844e0fb9ecd950eb456e3d', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 16:59:15', '1', null);
INSERT INTO `tb_log` VALUES ('d8a8166971fb4cf99938aa6c36e79fdd', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:36:22', '1', null);
INSERT INTO `tb_log` VALUES ('d8e857e6f2e544218b8ff56a99071e53', '新增', '新增Classification', 'Classification', '2017-03-09 15:21:25', '1', null);
INSERT INTO `tb_log` VALUES ('d8f0feb2431940acb4ceedd0895ae173', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:50:48', '1', null);
INSERT INTO `tb_log` VALUES ('d92621517b0d4478859ff3a7bff67411', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 20:00:21', '1', null);
INSERT INTO `tb_log` VALUES ('d94409e94aa74ab39e64a6ffe8d698ec', '修改', '修改PayManagement', 'PayManagement', '2017-05-05 16:59:05', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('d9d4e3397ba04a3d83ab5ebb1938b60d', '去修改', '去修改Classification页面', 'Classification', '2017-03-09 15:48:16', '1', null);
INSERT INTO `tb_log` VALUES ('d9e3bfd308fe44aebbde78d84df2eb17', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 22:42:50', '1', null);
INSERT INTO `tb_log` VALUES ('da3da00bc20847a78edba081113f5902', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-09 14:41:39', '1', null);
INSERT INTO `tb_log` VALUES ('da4c0f103f4f41ac880142242ca74033', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 14:58:48', '1', null);
INSERT INTO `tb_log` VALUES ('da551de9554246e087d332a7dc8791be', '查看列表', '查看VipManger列表', 'VipManger', '2017-04-27 17:34:59', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('dae3167bf6884df28d50064af0eafd46', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 17:31:03', '1', null);
INSERT INTO `tb_log` VALUES ('daf57366181642b3b57966edcf190315', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 13:26:41', '1', null);
INSERT INTO `tb_log` VALUES ('db321ad8a23145ae84615ea758b83307', '去修改', '去修改Classification页面', 'Classification', '2017-03-14 17:27:23', '1', null);
INSERT INTO `tb_log` VALUES ('db5d576b07e444b4859c78889af21cae', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-09 14:41:44', '1', null);
INSERT INTO `tb_log` VALUES ('db962c1a38c44dd080cf568c4b236038', '修改', '修改Specifications', 'Specifications', '2017-03-14 00:16:35', '1', null);
INSERT INTO `tb_log` VALUES ('db963f49aa03417d8f02f4a4a403b188', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-04-28 16:06:01', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('dbe76358b49d4999af6cd45dfed52990', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 20:00:08', '1', null);
INSERT INTO `tb_log` VALUES ('dbe7ad5c3f8f478092106c5c64360151', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 02:24:45', '1', null);
INSERT INTO `tb_log` VALUES ('dbefe9327d6b4c28b4d66bc5800d0b40', '新增', '新增PayManagement', 'PayManagement', '2017-04-28 11:07:50', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('dc279615062045ecb5824e9ab1f8fe33', '查看列表', '查看Classification列表', 'Classification', '2017-04-24 20:02:50', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('dc5fb456fb984ed9bd2dfa036eb87730', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-18 14:43:11', '1', null);
INSERT INTO `tb_log` VALUES ('dc935f98518a4f8fabd7fbbf865445b1', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 19:29:34', '1', null);
INSERT INTO `tb_log` VALUES ('dcd80bb1348b4330a2a28ecce8e0c541', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-31 11:56:23', '1', null);
INSERT INTO `tb_log` VALUES ('dce9f787123d4c07bf64691025827bcb', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:32:49', '1', null);
INSERT INTO `tb_log` VALUES ('dcfca8f6fc9841a6adccffd917f4e236', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 18:11:05', '1', null);
INSERT INTO `tb_log` VALUES ('dd15759ffcc84a618268df44601fdd2b', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 03:00:50', '1', null);
INSERT INTO `tb_log` VALUES ('dd2c5ae0cb95474c8c21d3982372b720', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 18:13:04', '1', null);
INSERT INTO `tb_log` VALUES ('dd457567df9c43029d9d94cacc8e2c1c', 'hongbaosession', '登录微红包', '扫码获取session', '2017-05-04 16:22:38', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('dd699947683d4c16a6dc31effec88542', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-04-24 19:58:37', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('dd9ab1f428a8456595cb752ee108019b', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 10:38:21', '1', null);
INSERT INTO `tb_log` VALUES ('de0c324bc0864912aec9bf14a124a7a7', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-13 22:21:53', '1', null);
INSERT INTO `tb_log` VALUES ('de45477b404148bc9857f2cede6e25b9', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-16 17:42:04', '1', null);
INSERT INTO `tb_log` VALUES ('de6980f7618e4adeb940f3a901b03a67', '新增', '新增Classification', 'Classification', '2017-03-09 16:09:35', '1', null);
INSERT INTO `tb_log` VALUES ('dee264dc827f4e458eb618ab47203944', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-15 17:00:57', '1', null);
INSERT INTO `tb_log` VALUES ('defe5faae21a43bdbc7f4b4d26361dd9', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-12 19:55:10', '1', null);
INSERT INTO `tb_log` VALUES ('df2c63f1680247328ddbeb55b86bd88e', 'hongbaosession', '登录微红包', '扫码获取session', '2017-05-03 14:43:53', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('df74170f93bf47e99aca6df9d93e8846', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 07:01:50', '1', null);
INSERT INTO `tb_log` VALUES ('dfbf22c17b944c1b81ddb614526afdd0', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-13 22:52:24', '1', null);
INSERT INTO `tb_log` VALUES ('dfd26c6352bf465eacef0c9ca15e9d49', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:46:34', '1', null);
INSERT INTO `tb_log` VALUES ('e01314add669407fb99361ca0178d81e', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 14:28:12', '1', null);
INSERT INTO `tb_log` VALUES ('e0200fd6467e4b84af330e1028d9e8c3', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 20:02:28', '1', null);
INSERT INTO `tb_log` VALUES ('e03aa80fb3084c8fbe87fe1cf5275e23', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-14 19:39:19', '1', null);
INSERT INTO `tb_log` VALUES ('e07b9dce361349fc8d46ea849d7bb523', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-14 19:35:52', '1', null);
INSERT INTO `tb_log` VALUES ('e08910d9b7494e5abb68457927797a48', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 17:23:52', '1', null);
INSERT INTO `tb_log` VALUES ('e0c16ecbacdf400eba2e8d6350ef63b3', '新增', '新增Commodityimg', 'Commodityimg', '2017-03-14 07:05:12', '1', null);
INSERT INTO `tb_log` VALUES ('e0e6c0ac55be443d8bfa32d8e8c02892', '修改', '修改LogisticsList', 'LogisticsList', '2017-03-14 21:56:17', '1', null);
INSERT INTO `tb_log` VALUES ('e0eb124206a84a9d9ba95e41421e3a5c', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:21:33', '1', null);
INSERT INTO `tb_log` VALUES ('e103ace54a4846788e249e6f216f0987', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-05-05 16:44:17', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('e108d08803794eb6b65710c2ba778c0e', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:09:17', '1', null);
INSERT INTO `tb_log` VALUES ('e111ad104c5a4e55aa08d7909e18788f', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-09 19:48:09', '1', null);
INSERT INTO `tb_log` VALUES ('e12ef8b1d9074eefb1bb82f6664fa140', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-11 18:09:05', '1', null);
INSERT INTO `tb_log` VALUES ('e1805bd9bb0f4c5bafc4456c128f8ce8', '去新增', '去新增PayManagement页面', 'PayManagement', '2017-04-28 11:00:07', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('e1ee597795824c37af68d98e1e3e5912', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 10:57:38', '1', null);
INSERT INTO `tb_log` VALUES ('e20ff435e380496e844c8881c36ea325', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-04-28 15:46:43', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('e253ac573b7942328200f4da25f09bb3', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 11:07:43', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('e25a08de925d453798ff458906d7e8f4', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-09 16:42:26', '1', null);
INSERT INTO `tb_log` VALUES ('e26d51af10014315b4663c005f814176', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-13 22:22:37', '1', null);
INSERT INTO `tb_log` VALUES ('e27158dce13f4791b04015ba1cc89ff8', '删除', '删除PayManagement', 'PayManagement', '2017-04-28 11:08:03', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('e2a6138bfc284cff8749f28921f4a689', '查看列表', '查看Classification列表', 'Classification', '2017-04-24 19:59:01', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('e2a7e5d539bd4be79340e91566bb845b', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:19:04', '1', null);
INSERT INTO `tb_log` VALUES ('e2e1b7c1b5a148e29645b3bb6f793751', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-04-06 14:23:56', '1', null);
INSERT INTO `tb_log` VALUES ('e3566212311e4e94ac31f93b3478f212', '修改', '修改PayManagement', 'PayManagement', '2017-05-05 17:14:21', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('e37ccbf138b146b09b429985d86103be', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-16 21:00:05', '1', null);
INSERT INTO `tb_log` VALUES ('e3da2e17a3da49329469762956abb1e4', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:49:16', '1', null);
INSERT INTO `tb_log` VALUES ('e3db11cd496844ecb5023a198e5848b2', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 17:58:52', '1', null);
INSERT INTO `tb_log` VALUES ('e4911d9492184004a19353193f48ef85', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 14:14:41', '1', null);
INSERT INTO `tb_log` VALUES ('e495d0a4b9584a2db3bc8283239ebccd', '修改', '修改PayManagement', 'PayManagement', '2017-04-28 16:06:12', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('e4cb814482c2487c858c27cc0e2b9248', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 16:05:50', '1', null);
INSERT INTO `tb_log` VALUES ('e53e564c9edb470e8179b0a34f9734ab', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 07:10:52', '1', null);
INSERT INTO `tb_log` VALUES ('e54c795b78c74bd8b355791ac81fd79e', '修改', '修改PayManagement', 'PayManagement', '2017-04-28 16:06:32', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('e5836746e2854272b8824e02b293a182', '修改', '修改Commodity', 'Commodity', '2017-03-14 07:10:58', '1', null);
INSERT INTO `tb_log` VALUES ('e5b78bbcd53e4bc6b6e858d04bf5fed5', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:18:20', '1', null);
INSERT INTO `tb_log` VALUES ('e5d873ed5b1948a095918e78400a81b5', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 21:56:17', '1', null);
INSERT INTO `tb_log` VALUES ('e6200b7047994494a8a16e2e49a7fb93', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:59:05', '1', null);
INSERT INTO `tb_log` VALUES ('e64155f8bdd342729ee108730ce7b23b', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:57:48', '1', null);
INSERT INTO `tb_log` VALUES ('e6cb694e3b1242c4bd43e57985edcb6a', '新增', '新增Commodityimg', 'Commodityimg', '2017-03-14 07:03:53', '1', null);
INSERT INTO `tb_log` VALUES ('e74453dbf48b44d4abef7b1ed746a933', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-16 18:48:47', '1', null);
INSERT INTO `tb_log` VALUES ('e74c16f9bf0947bb88c6fbc21d044489', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-09 16:32:00', '1', null);
INSERT INTO `tb_log` VALUES ('e750f752c81a4613990c1954db997a12', 'hongbaosession', '登录微红包', '扫码获取session', '2017-05-03 14:39:17', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('e7612007453446acb5a5413f53135ec0', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-11 19:19:27', '1', null);
INSERT INTO `tb_log` VALUES ('e76bbe2e961a4ae3a1ead336a6a590ba', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 17:56:24', '1', null);
INSERT INTO `tb_log` VALUES ('e7824e7da35449a89849a0692912790f', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 11:28:14', '1', null);
INSERT INTO `tb_log` VALUES ('e788894a8dfd45afb290edf979973021', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-12 19:28:45', '1', null);
INSERT INTO `tb_log` VALUES ('e83561b0df5b45a2a8bfddfa1f82aa80', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 13:23:28', '1', null);
INSERT INTO `tb_log` VALUES ('e8f52ca58b9d4da7a631b339f7bbe714', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:17:42', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('e92ac569d3bb44559ed65bed6b2ea196', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 03:36:56', '1', null);
INSERT INTO `tb_log` VALUES ('e93da9cabde247c59ee5aa60655d0670', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-18 14:39:49', '1', null);
INSERT INTO `tb_log` VALUES ('e95a859fce7645cebd28d5449957e511', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-18 14:39:33', '1', null);
INSERT INTO `tb_log` VALUES ('e9657bd633ae489ea2a66fdce31b251d', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-16 20:14:08', '1', null);
INSERT INTO `tb_log` VALUES ('e985f71cd0c54372a501abb5401b0f37', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:24:38', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('e9c1678a3a334b2e9faad5bdcc2a19bb', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-11 14:44:33', '1', null);
INSERT INTO `tb_log` VALUES ('e9c4c3cbe4e74cf0a34b7f34c1dc0a3b', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-15 18:17:16', '1', null);
INSERT INTO `tb_log` VALUES ('e9c5d2b6ae2e4e28a9e77bf8d306ec9e', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-09 19:42:06', '1', null);
INSERT INTO `tb_log` VALUES ('e9e00b4928ab46b08c41a1f9f145a40e', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 07:01:46', '1', null);
INSERT INTO `tb_log` VALUES ('e9f9d9473c8e4b5a96e4e5f4f73e6882', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 11:15:16', '1', null);
INSERT INTO `tb_log` VALUES ('ea08253e263447acb11e57a688d5849d', '去修改', '去修改Commodityimg页面', 'Commodityimg', '2017-03-14 07:08:44', '1', null);
INSERT INTO `tb_log` VALUES ('ea3f42fca1484ee8963d684e3ee8e06a', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 14:27:21', '1', null);
INSERT INTO `tb_log` VALUES ('ea7181e0a6dc44c893acde890bc8ad38', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:51:31', '1', null);
INSERT INTO `tb_log` VALUES ('eaaf1c44f01d4410b0e20de7e800405e', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 19:56:15', '1', null);
INSERT INTO `tb_log` VALUES ('eabf66c843684ba6984889efb8c8781a', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-03-09 14:41:46', '1', null);
INSERT INTO `tb_log` VALUES ('eafe4356dc4d42c796b648d0d8852c2a', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 20:59:26', '1', null);
INSERT INTO `tb_log` VALUES ('eb12ddb1d33b42998bfe782cb86079a7', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 17:13:38', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('eb41d664ad0a4e9db6b7b3fe6365ff55', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-04-28 16:09:21', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('eb505e798a574141a34e948a5ecfe3b3', '去修改', '去修改LogisticsList页面', 'LogisticsList', '2017-03-14 21:50:24', '1', null);
INSERT INTO `tb_log` VALUES ('eb89325c4016454e8bb1b8ed328ce6bb', '修改', '修改OrderManger', 'OrderManger', '2017-03-10 16:17:35', '1', null);
INSERT INTO `tb_log` VALUES ('ebdb6c0addff4cd99da682513d5f184e', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:18:37', '1', null);
INSERT INTO `tb_log` VALUES ('ec02df9b0350467e9b5e909ab0ddc105', '去新增', '去新增BussinessActivity页面', 'BussinessActivity', '2017-03-16 16:50:21', '1', null);
INSERT INTO `tb_log` VALUES ('ec74d0e49f1a4b23b4c2656232516b2f', '去新增', '去新增Commodityimg页面', 'Commodityimg', '2017-03-14 06:58:46', '1', null);
INSERT INTO `tb_log` VALUES ('ecc3a92a042442168746f77258f3ca72', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 20:56:23', '1', null);
INSERT INTO `tb_log` VALUES ('ecea6c8fa2fd415a82942176832a7d66', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 10:22:55', '1', null);
INSERT INTO `tb_log` VALUES ('ecfa09fcc9b24a9a87c0d87089431703', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:16:52', '1', null);
INSERT INTO `tb_log` VALUES ('ed0abb60320144eab134f4f32e2745ea', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-05-05 16:22:26', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('ed62a923f3504198aafa5c4d4b4490f7', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 17:59:53', '1', null);
INSERT INTO `tb_log` VALUES ('ed643e3af53f447a9935cfd546fc453f', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 02:24:42', '1', null);
INSERT INTO `tb_log` VALUES ('ed901a691a814a25b5a1cd3b2aa9595a', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 20:51:04', '1', null);
INSERT INTO `tb_log` VALUES ('edbdcada2f404105a8495b7124523802', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:49:27', '1', null);
INSERT INTO `tb_log` VALUES ('edbebe65601042c8bc393d6aa4a0ff79', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 17:18:34', '1', null);
INSERT INTO `tb_log` VALUES ('edd49439e3d545f9b7812888d85902cf', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:05:34', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('ee84a4c0820341b382ad19900e8be0cf', '新增', '新增Specifications', 'Specifications', '2017-03-14 14:28:33', '1', null);
INSERT INTO `tb_log` VALUES ('eea8bc349edd40a2b228a7e73e3a110d', '去新增', '去新增Commodityimg页面', 'Commodityimg', '2017-03-14 11:13:25', '1', null);
INSERT INTO `tb_log` VALUES ('eec4ae1d2da54093846512a1aa872238', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 14:16:25', '1', null);
INSERT INTO `tb_log` VALUES ('eecfed524a9946e3b535cf904691aa71', '去新增', '去新增LogisticsList页面', 'LogisticsList', '2017-03-14 21:56:41', '1', null);
INSERT INTO `tb_log` VALUES ('ef22a4c2980444179e657e8714d94552', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 20:06:34', '1', null);
INSERT INTO `tb_log` VALUES ('ef3db956a20c4817879cb684fc872c3b', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 17:39:42', '1', null);
INSERT INTO `tb_log` VALUES ('ef4416f2cb3f45afb0e1c6f7414b07ce', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 10:18:28', '1', null);
INSERT INTO `tb_log` VALUES ('ef60c9748131431bbcd64acc52b917d3', '查看列表', '查看Commodity列表', 'Commodity', '2017-04-24 20:02:12', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('ef798a241f8543d89494f4396e482856', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-18 14:39:25', '1', null);
INSERT INTO `tb_log` VALUES ('efd4f607aab84c919ff4ec43ac195cde', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-10 16:17:30', '1', null);
INSERT INTO `tb_log` VALUES ('eff22eb8b69e4a93830c8739bc852c12', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 14:05:33', '1', null);
INSERT INTO `tb_log` VALUES ('f02d8c21eee94025951407e0ee29b322', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 16:59:19', '1', null);
INSERT INTO `tb_log` VALUES ('f0523318eea741fabc3a015f9113b327', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 13:48:11', '1', null);
INSERT INTO `tb_log` VALUES ('f061232dced7489d9d9bc62f5127d346', '删除', '删除Commodityimg', 'Commodityimg', '2017-03-14 07:09:06', '1', null);
INSERT INTO `tb_log` VALUES ('f066222fda4c462aafdae1112014cdc1', '去修改', '去修改Classification页面', 'Classification', '2017-03-09 16:07:14', '1', null);
INSERT INTO `tb_log` VALUES ('f08f6d06ba7f45ba9914da993c4ab6ca', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-09 19:39:35', '1', null);
INSERT INTO `tb_log` VALUES ('f0c2769aef3d413fa019de4b0a49aa00', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:32:26', '1', null);
INSERT INTO `tb_log` VALUES ('f11365fe6903477bbc28c0b7b18df511', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:22:12', '1', null);
INSERT INTO `tb_log` VALUES ('f133753cefb84c4e8b72dff9eb0cd77f', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-10 15:40:46', '1', null);
INSERT INTO `tb_log` VALUES ('f13827d0e4694c9cb263b5eed0f5286b', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:51:51', '1', null);
INSERT INTO `tb_log` VALUES ('f17645506e77489f866978e134c1911a', '删除', '删除Commodityimg', 'Commodityimg', '2017-03-14 11:13:24', '1', null);
INSERT INTO `tb_log` VALUES ('f1edda86badc4afc9b6c5934966f9382', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-04-24 19:59:16', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('f2083ed0a12b4fde81164486b02ce656', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-14 00:12:38', '1', null);
INSERT INTO `tb_log` VALUES ('f28c2f1be40b44f7a508feab1cad362f', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 03:23:41', '1', null);
INSERT INTO `tb_log` VALUES ('f2b2c76ef1d34a7ab39d902b770c787f', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:20:33', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('f2eeeab90c4644c0a7cabe9998d8c25d', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 16:17:32', '1', null);
INSERT INTO `tb_log` VALUES ('f2f2c7ef0acc472eae10763f5ad16abc', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 13:48:12', '1', null);
INSERT INTO `tb_log` VALUES ('f35fae95c07348958d32c3ff4bc0acda', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 00:06:58', '1', null);
INSERT INTO `tb_log` VALUES ('f35fd693711e4786856a06d4b60f7a72', '去新增', '去新增Commodityimg页面', 'Commodityimg', '2017-03-14 07:00:03', '1', null);
INSERT INTO `tb_log` VALUES ('f37b381b71bc4d00bfee4d757185f7f2', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:58:00', '1', null);
INSERT INTO `tb_log` VALUES ('f384c794b27e4a409742360f078d222a', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-10 18:10:20', '1', null);
INSERT INTO `tb_log` VALUES ('f3d11ae27d8d421ba2965ea2439f61b7', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 11:03:36', '1', null);
INSERT INTO `tb_log` VALUES ('f3d16f7364a14d90bf4c7cab27265964', '修改', '修改PayManagement', 'PayManagement', '2017-05-05 16:08:29', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('f3d9a2928a0d42589591db17ab3aacc3', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 17:15:01', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('f3f734c32c9a4437840afd23e0078100', '去修改', '去修改LogisticsList页面', 'LogisticsList', '2017-03-14 21:54:49', '1', null);
INSERT INTO `tb_log` VALUES ('f43f41b7453d48da829f69571c29041e', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 09:14:31', '1', null);
INSERT INTO `tb_log` VALUES ('f4454ef9e135494abb9a116d3892000b', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 15:20:09', '1', null);
INSERT INTO `tb_log` VALUES ('f46418d343ef42449b1a10c45add1cd7', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-11 18:09:23', '1', null);
INSERT INTO `tb_log` VALUES ('f4720382dbf34aefad2ba640b3ae8a93', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-16 17:24:38', '1', null);
INSERT INTO `tb_log` VALUES ('f4930f03bc8b42359dd633e03b040c71', '修改', '修改OrderManger', 'OrderManger', '2017-03-10 16:15:08', '1', null);
INSERT INTO `tb_log` VALUES ('f49609e0134b4e0d894faaa274c9211c', '去新增', '去新增Classification页面', 'Classification', '2017-03-14 09:10:30', '1', null);
INSERT INTO `tb_log` VALUES ('f49be68b3017482991416d116cb47b59', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 18:02:52', '1', null);
INSERT INTO `tb_log` VALUES ('f4cf084a78c7479895e2f4a144b254d3', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-10 16:56:32', '1', null);
INSERT INTO `tb_log` VALUES ('f59182aae0864090ab825d5da5335994', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-04-28 16:03:40', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('f5ba341d21a848eabd61389acc271de0', '新增', '新增PayManagement', 'PayManagement', '2017-05-05 16:20:44', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('f5d47e96ebea44e6a912f6e9c5eadfa5', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-10 15:39:48', '1', null);
INSERT INTO `tb_log` VALUES ('f6480db444c84f12b094493e8f105623', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-11 18:14:39', '1', null);
INSERT INTO `tb_log` VALUES ('f66ec80355c74281b610bab9cc6ed769', '查看列表', '查看VipManger列表', 'VipManger', '2017-03-31 11:55:41', '1', null);
INSERT INTO `tb_log` VALUES ('f687bc6cf3b34dad87fb20b5a9375659', '修改', '修改LogisticsList', 'LogisticsList', '2017-03-14 21:54:53', '1', null);
INSERT INTO `tb_log` VALUES ('f6b6542569de468da1430741ed7c7043', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-04-24 16:26:51', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('f6e1988b7a1547f89d24e25cfef580f7', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 10:53:10', '1', null);
INSERT INTO `tb_log` VALUES ('f6ed80f2d4024ac6ae55d5e6cb085bca', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-16 16:55:01', '1', null);
INSERT INTO `tb_log` VALUES ('f6fd6c85883b4a92a6aed98f30365ae4', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-04-06 14:20:54', '1', null);
INSERT INTO `tb_log` VALUES ('f732c8bde7d34f3fae1d9dd008ad907d', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-09 19:53:12', '1', null);
INSERT INTO `tb_log` VALUES ('f745bd4e468048b5a3467bd20e9fb546', '新增', '新增Commodity', 'Commodity', '2017-03-13 16:26:53', '1', null);
INSERT INTO `tb_log` VALUES ('f793889178f44ed193f23acdb4122daf', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 03:00:54', '1', null);
INSERT INTO `tb_log` VALUES ('f7ded73f29bd450996d9bee39bfee5d3', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-15 15:18:13', '1', null);
INSERT INTO `tb_log` VALUES ('f80c6e63ba39405ca74ccc8af902b943', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 14:27:15', '1', null);
INSERT INTO `tb_log` VALUES ('f83a6434984442709df4d992f1aa333d', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-14 02:39:18', '1', null);
INSERT INTO `tb_log` VALUES ('f85396a3da6a41fcb2d4206b3a1b83ea', '去修改', '去修改Commodity页面', 'Commodity', '2017-03-14 07:12:00', '1', null);
INSERT INTO `tb_log` VALUES ('f85fdf5ee1f64658b18ac403548791ed', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 10:05:49', '1', null);
INSERT INTO `tb_log` VALUES ('f8971ee3f98b43d8a8ab767dbf4b8b89', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-09 18:07:21', '1', null);
INSERT INTO `tb_log` VALUES ('f8a23924263142e8b41100a434a0f1a9', '修改', '修改PayManagement', 'PayManagement', '2017-04-28 16:10:09', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('f8b1cb73db424db49d0893b4b09b2a7c', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 11:01:31', '1', null);
INSERT INTO `tb_log` VALUES ('f8eb224ec0e64160a3f028965f5e7c87', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:22:59', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('f8f04354dccb4b05bf3ab62958387c60', '去新增', '去新增VipManger页面', 'VipManger', '2017-03-31 11:55:55', '1', null);
INSERT INTO `tb_log` VALUES ('f9011668a45a4dd3a88c13bde3d7667e', '查看列表', '查看DistributionCount列表', 'DistributionCount', '2017-04-27 17:52:20', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('f91f5933d1b14ee582a4e9f857bdf7e2', '查看列表', '查看BussinessActivity列表', 'BussinessActivity', '2017-03-16 16:54:42', '1', null);
INSERT INTO `tb_log` VALUES ('f93da5ddc4a746cba086f6855174c084', '查看列表', '查看Classification列表', 'Classification', '2017-03-14 17:26:44', '1', null);
INSERT INTO `tb_log` VALUES ('f96972d18c5e483aaee8a6d74856e872', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-15 14:21:59', '1', null);
INSERT INTO `tb_log` VALUES ('f9744ac1524648a5a3d30a05d7292fef', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 21:44:17', '1', null);
INSERT INTO `tb_log` VALUES ('f97976fadcf34896922d06db38c243f9', '新增', '新增Commodity', 'Commodity', '2017-03-13 16:27:47', '1', null);
INSERT INTO `tb_log` VALUES ('f9939e8366e3497890b1bdcec5d299fc', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 19:58:52', '1', null);
INSERT INTO `tb_log` VALUES ('f9ad967a213746fd8f18365ed98df6d5', '查看列表', '查看Logistics列表', 'Logistics', '2017-03-14 21:50:28', '1', null);
INSERT INTO `tb_log` VALUES ('f9b0e2ed827e479096478e2c12a6d10c', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-04-28 15:45:32', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('f9c5e84cae8b4601add1f9f32e291250', '查看列表', '查看FeedBack列表', 'FeedBack', '2017-03-16 14:38:28', '1', null);
INSERT INTO `tb_log` VALUES ('f9ecf789395245a083822c991a46b87d', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 21:07:12', '1', null);
INSERT INTO `tb_log` VALUES ('f9f16bc785004cb5a1f22ef36b5f2565', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 20:02:25', '1', null);
INSERT INTO `tb_log` VALUES ('fa2b0efd87a14f1d89e5cddfdd59518a', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-09 19:42:40', '1', null);
INSERT INTO `tb_log` VALUES ('fa3317481bee40b68c607496a172e056', '新增', '新增Specifications', 'Specifications', '2017-03-14 09:27:13', '1', null);
INSERT INTO `tb_log` VALUES ('fa576bd840b74808b57bb9d05f0a3f38', '去修改', '去修改PayManagement页面', 'PayManagement', '2017-05-05 17:13:40', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('fb4bd62f9b9b4b889c4c8b51dc78040f', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 20:53:41', '1', null);
INSERT INTO `tb_log` VALUES ('fb7b7c4d890949a0b44bde481d781439', '去修改', '去修改LogisticsList页面', 'LogisticsList', '2017-03-14 21:54:27', '1', null);
INSERT INTO `tb_log` VALUES ('fbca4b4fd5334964a948176883e8786d', '新增', '新增LogisticsList', 'LogisticsList', '2017-03-12 19:37:48', '1', null);
INSERT INTO `tb_log` VALUES ('fbde4c1c6f794b8280432f98cf2037ce', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 17:58:12', '1', null);
INSERT INTO `tb_log` VALUES ('fbe3fc6655ee4247bee13b63d58b16d7', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-13 22:20:43', '1', null);
INSERT INTO `tb_log` VALUES ('fbffd6eddcf940408c389c9d77b21842', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-15 15:01:54', '1', null);
INSERT INTO `tb_log` VALUES ('fc40eaa9da3940518b412097f17a6523', '去修改', '去修改LogisticsList页面', 'LogisticsList', '2017-03-14 21:51:34', '1', null);
INSERT INTO `tb_log` VALUES ('fc5286395305499db6bfb6bc36df10dd', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 10:32:10', '1', null);
INSERT INTO `tb_log` VALUES ('fc748a3349194ba49fa0ee17f9b3483e', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 14:27:19', '1', null);
INSERT INTO `tb_log` VALUES ('fcabcc9c00fb4a368481808090f2fdb9', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-11 19:19:24', '1', null);
INSERT INTO `tb_log` VALUES ('fcd39d2158634967a199b4589b2770a6', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-11 18:09:18', '1', null);
INSERT INTO `tb_log` VALUES ('fcda38d90d5e44caadd555de02cfcf8f', '删除', '删除Commodityimg', 'Commodityimg', '2017-03-14 14:14:49', '1', null);
INSERT INTO `tb_log` VALUES ('fcfd41e9ec08468d8486eae12b068562', '新增', '新增Specifications', 'Specifications', '2017-03-13 22:21:59', '1', null);
INSERT INTO `tb_log` VALUES ('fd225d66e3a2439a95fc2b8c41474538', '删除', '删除Classification', 'Classification', '2017-03-09 16:07:09', '1', null);
INSERT INTO `tb_log` VALUES ('fd4c526f57cb4ed98a56056081d19e1d', '查看列表', '查看Commodityimg列表', 'Commodityimg', '2017-03-14 07:09:06', '1', null);
INSERT INTO `tb_log` VALUES ('fd73a9e0c895402b9599c0b52b7d5e42', '去新增', '去新增Specifications页面', 'Specifications', '2017-03-14 13:41:03', '1', null);
INSERT INTO `tb_log` VALUES ('fe46e54a2c744e9dab19b9400c8e3d3a', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-04-28 11:07:58', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('fe9055cb871f44fa9660f7cc2b98641b', '去修改', '去修改OrderManger页面', 'OrderManger', '2017-03-11 14:43:57', '1', null);
INSERT INTO `tb_log` VALUES ('fe95ada18c6d40bbb3caec1d6596ce42', '去新增', '去新增Classification页面', 'Classification', '2017-03-15 09:33:00', '1', null);
INSERT INTO `tb_log` VALUES ('fec2292317584d388e96f15c07f65f69', '查看列表', '查看Classification列表', 'Classification', '2017-03-09 15:27:58', '1', null);
INSERT INTO `tb_log` VALUES ('ff05b88444874e5295fd5ec25846c631', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:59:18', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_log` VALUES ('ff2f9f254e4744e5873acb3a6a9bf1d8', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 14:15:31', '1', null);
INSERT INTO `tb_log` VALUES ('ff620f58be6b42e882876fee8d286458', '查看列表', '查看OrderManger列表', 'OrderManger', '2017-03-10 16:54:20', '1', null);
INSERT INTO `tb_log` VALUES ('ffa996d21cb54dbd81b0220abe0f0f2f', '查看列表', '查看Commodity列表', 'Commodity', '2017-03-14 21:11:58', '1', null);
INSERT INTO `tb_log` VALUES ('ffaea2c143fc42f8b5761f0f6c1cbef8', '查看列表', '查看会员详情列表', 'findByVipId', '2017-03-11 18:11:39', '1', null);
INSERT INTO `tb_log` VALUES ('ffcaee797e854e7ba55ef825e48d86cf', '去新增', '去新增Commodity页面', 'Commodity', '2017-03-13 16:26:49', '1', null);
INSERT INTO `tb_log` VALUES ('ffde9e5b147145e1b56ad5bfd7d70e19', '查看列表', '查看PayManagement列表', 'PayManagement', '2017-05-05 16:20:54', 'ce68ade5791e4921be891c6f55901e59', 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `tb_logistics`
-- ----------------------------
DROP TABLE IF EXISTS `tb_logistics`;
CREATE TABLE `tb_logistics` (
  `LOGISTICS_ID` varchar(100) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL COMMENT '物流模板名称',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家id',
  PRIMARY KEY (`LOGISTICS_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_logistics
-- ----------------------------
INSERT INTO `tb_logistics` VALUES ('429309e433d8408a98d6a677b0971d66', '模板1', '2017-03-14 11:00:04', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_logistics` VALUES ('62fcbbf754284479937e744796cf124f', '测试用户名1', '2017-03-11 18:09:29', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_logistics` VALUES ('b320018a418d43fb9cbd564ed84320d2', '测试', '2017-03-11 18:09:17', 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `tb_logisticslist`
-- ----------------------------
DROP TABLE IF EXISTS `tb_logisticslist`;
CREATE TABLE `tb_logisticslist` (
  `LOGISTICSLIST_ID` varchar(100) NOT NULL,
  `AREAID` varchar(255) DEFAULT NULL COMMENT '地区',
  `FIRSTHEAVY` double(255,0) DEFAULT NULL COMMENT '首重',
  `FIRSTHEAVYPRICE` double(255,0) DEFAULT NULL COMMENT '首重运费',
  `CONTINUEDHEAVY` double(255,0) DEFAULT NULL COMMENT '续重',
  `CONTINUEDHEAVYPRICE` double(255,0) DEFAULT NULL COMMENT '续重运费',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `LOGISTICS_ID` varchar(255) DEFAULT NULL COMMENT '模板ID',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家id',
  PRIMARY KEY (`LOGISTICSLIST_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_logisticslist
-- ----------------------------
INSERT INTO `tb_logisticslist` VALUES ('36a90a6f733649629041c0adfba8328f', '11000000', '12', '23', '12', '12', '2017-03-12 19:37:48', '62fcbbf754284479937e744796cf124f', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_logisticslist` VALUES ('5e2d609d2d2443b5a52ea283b67c284d', '12000000', '22', '12', '25', '23', '2017-03-14 11:00:28', '429309e433d8408a98d6a677b0971d66', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_logisticslist` VALUES ('b44a4dd5a73b4dafb2bc3118d8effade', '11000000', '12', '23', '12', '12', '2017-03-12 19:28:33', '429309e433d8408a98d6a677b0971d66', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_logisticslist` VALUES ('ba6289b72b4e40dd8ddb0df482e3c66b', 'sd', '12', '12', '12', '12', '2017-03-12 19:27:52', '', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_logisticslist` VALUES ('ed2c7cba2216402e86efbd8fc17f6cfd', 'sd', '12', '12', '12', '12', '2017-03-11 20:56:23', null, 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `tb_order`
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `ORDER_ID` varchar(100) NOT NULL,
  `EXPRESSPRICE` varchar(255) DEFAULT NULL COMMENT '快递费',
  `SUMPRICE` double(20,2) DEFAULT '0.00' COMMENT '一单的总价',
  `ADDRESSID` varchar(255) DEFAULT NULL COMMENT '订单地址',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '订单备注',
  `CREATEVIPID` varchar(255) DEFAULT NULL COMMENT '创建订单用户ID',
  `CREATETIME` datetime DEFAULT NULL COMMENT '下单时间',
  `RETURNURL` varchar(255) DEFAULT NULL COMMENT '退款退货照片',
  `RETURNTYPE` varchar(255) DEFAULT NULL COMMENT '退款原因类型',
  `RETURN_REMARK` varchar(255) DEFAULT NULL COMMENT '退款备注',
  `CHECK_REMARK` varchar(255) DEFAULT NULL COMMENT '审核原因',
  `ORDERTYPE` varchar(255) DEFAULT NULL COMMENT '0:待付款 1:取消订单 2:待发货 3:已发货 4:确认收货',
  `RETURN_TYPE` varchar(255) DEFAULT NULL COMMENT '0:无申请1:申请退货中 2: 同意退货 3:拒绝退货 4:退货成功 5:退货失败 6:申请退款中 7:退款成功 8:退款失败9：拒绝退款',
  `FLAG` varchar(255) DEFAULT NULL COMMENT '是否删除1：正常，2：删除',
  `PAYNO` varchar(255) DEFAULT NULL COMMENT '支付号',
  `PAYTYPE` varchar(255) DEFAULT NULL COMMENT '支付方式（1:微信支付;2:支付宝）',
  `RETURNTIME` varchar(255) DEFAULT NULL COMMENT '申请退款货时间',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家ID',
  `ISEVALUATE` varchar(255) DEFAULT '0' COMMENT '是否评价：0：未评价；1：评价',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('0ea27b494071451f85f995edc7244d3b', '0.0', '35.00', '97912de27aff4f0c8928e9c3a0e6175b', '', '1', '2017-03-14 21:21:06', null, null, 'cvxjhsxcgf中文', null, '4', '4', '1', '9578984837d94c639c69d551aca77454', '1', null, 'ce68ade5791e4921be891c6f55901e59', '0');
INSERT INTO `tb_order` VALUES ('201703151337', '0.0', '258.00', '1', '', '1', '2017-03-15 14:52:26', null, null, null, null, '3', '0', '1', '659800f4930a42e38714ae10ce0461b6', '1', null, 'ce68ade5791e4921be891c6f55901e59', '0');
INSERT INTO `tb_order` VALUES ('201703153574', '0.0', '35.00', '1', '', '1', '2017-03-14 16:19:08', null, null, null, null, '1', '0', '1', '3169e8e2f9164bbdbfe0fe9bdc0c6687', '1', null, 'ce68ade5791e4921be891c6f55901e59', '0');
INSERT INTO `tb_order` VALUES ('201703153986', '0.0', '35.00', '1', '', '1', '2017-03-15 16:19:07', null, null, null, null, '1', '0', '1', 'd82c20eb564d49b696aca9082b7c3946', '1', null, 'ce68ade5791e4921be891c6f55901e59', '0');
INSERT INTO `tb_order` VALUES ('201703157374', '0.0', '35.00', '1', '', '1', '2017-03-15 16:19:05', null, null, null, null, '1', '0', '1', '834f113c8cea4aa98c4848be8d2f32b7', '1', null, 'ce68ade5791e4921be891c6f55901e59', '0');
INSERT INTO `tb_order` VALUES ('201703157430', '0.0', '35.00', '1', '', '1', '2017-03-15 16:19:06', null, null, null, null, '1', '0', '1', '348fe829863048eabcb15388665dc1f4', '1', null, 'ce68ade5791e4921be891c6f55901e59', '0');
INSERT INTO `tb_order` VALUES ('201703162058499725', '0.0', '35.00', '1', '', '1', '2017-03-16 20:58:49', null, null, null, null, '0', '0', '1', '410fcf66e8f94224a123586904571258', '1', null, 'ce68ade5791e4921be891c6f55901e59', '0');
INSERT INTO `tb_order` VALUES ('201703162131255437', '0.0', '32.00', '1', '', '1', '2017-03-16 21:31:26', null, null, null, null, '0', '0', '1', 'b0aca326e5e74e70892e41bc4aecce78', '1', null, 'ce68ade5791e4921be891c6f55901e59', '0');
INSERT INTO `tb_order` VALUES ('201703162131314901', '0.0', '32.00', '1', '', '1', '2017-03-16 21:31:32', null, null, null, null, '0', '0', '1', '4cef20ec2f924424b27563d4679e978e', '1', null, 'ce68ade5791e4921be891c6f55901e59', '0');
INSERT INTO `tb_order` VALUES ('201703162359517397', '0.0', '35.00', '1', '', '1', '2017-03-16 23:59:51', null, null, null, null, '0', '0', '1', 'c6f7afff5e4949188da899b3eefb6087', '1', null, 'ce68ade5791e4921be891c6f55901e59', '0');
INSERT INTO `tb_order` VALUES ('201703271509047794', '0.0', '26.00', '1', '', '1', '2017-03-27 15:09:06', null, null, null, null, '0', '0', '1', 'e5ec67ada17a4a9ca3a473376d18a6bc', '1', null, 'ce68ade5791e4921be891c6f55901e59', '0');
INSERT INTO `tb_order` VALUES ('201703271509068146', '0.0', '26.00', '1', '', '1', '2017-03-27 15:09:08', null, null, null, null, '0', '0', '1', 'd28f11621c204aad9df74de79a2edd47', '1', null, 'ce68ade5791e4921be891c6f55901e59', '0');
INSERT INTO `tb_order` VALUES ('201703271509341542', '0.0', '26.00', '1', '', '1', '2017-03-27 15:09:37', null, null, null, null, '0', '0', '1', 'c72144885ad5498daba0aeb8b3be7fbd', '1', null, 'ce68ade5791e4921be891c6f55901e59', '0');
INSERT INTO `tb_order` VALUES ('201704241707013640', '23.0', '26.00', '66930548a9894be1ba5029ad788ba30a', '', '1', '2017-04-24 17:07:02', null, null, null, null, '0', '0', '1', null, '1', null, 'ce68ade5791e4921be891c6f55901e59', '0');
INSERT INTO `tb_order` VALUES ('201704241743318346', '23.0', '104.00', '66930548a9894be1ba5029ad788ba30a', '', '1', '2017-04-24 17:43:33', null, null, null, null, '0', '0', '1', null, '1', null, 'ce68ade5791e4921be891c6f55901e59', '0');
INSERT INTO `tb_order` VALUES ('24a68b60100644dc932ffbaaed52867c', '0.0', '35.00', '97912de27aff4f0c8928e9c3a0e6175b', '', '1', '2017-03-14 17:09:27', null, null, '萨德', null, '2', '6', '1', '037bac7c022c4af5acec42edcd2fa084', '1', '2017-03-15 14:36:51', 'ce68ade5791e4921be891c6f55901e59', '0');
INSERT INTO `tb_order` VALUES ('7350eea866bb4f99a8df5a7fd92e1111', '0.0', '35.00', '97912de27aff4f0c8928e9c3a0e6175b', '', '1', '2017-03-14 17:49:11', null, null, null, null, '2', '6', '1', '03909a9af7ad4cff8091c41a332e9f79', '1', null, 'ce68ade5791e4921be891c6f55901e59', '0');

-- ----------------------------
-- Table structure for `tb_ordercommodity`
-- ----------------------------
DROP TABLE IF EXISTS `tb_ordercommodity`;
CREATE TABLE `tb_ordercommodity` (
  `ORDERCOMMODITY_ID` varchar(100) NOT NULL,
  `ORDERID` varchar(255) DEFAULT NULL COMMENT '订单ID',
  `COMMODITYSPECIFICATION_ID` varchar(255) DEFAULT NULL COMMENT '商品规格ID',
  `NUMBER` varchar(255) DEFAULT NULL COMMENT '数量',
  `PRICE` varchar(255) DEFAULT NULL COMMENT '单价',
  `SUMPRICE` varchar(255) DEFAULT NULL COMMENT '单种商品总价',
  `COMMODITYSCORE` varchar(255) DEFAULT NULL COMMENT '商品评分',
  `SERVICESCORE` varchar(255) DEFAULT NULL COMMENT '服务评分',
  `SENDSCORE` varchar(255) DEFAULT NULL COMMENT '物流评分',
  `EVALUATE_RAMRK` varchar(255) DEFAULT NULL COMMENT '商品评价',
  `ISEVALUATE` varchar(255) DEFAULT NULL COMMENT '是否评价1：评价 2：未评价',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ORDERCOMMODITY_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ordercommodity
-- ----------------------------
INSERT INTO `tb_ordercommodity` VALUES ('03b42f82672843aba2f27926ebc57439', 'd0fae9555e9d47faa5af837986c674df', 'f23dcfb9dcb9451693c21ee2432507e5', '0', '35.0', '0.0', null, null, null, null, '2', '2017-03-14 17:07:29');
INSERT INTO `tb_ordercommodity` VALUES ('03d61395b97f49bd844154210bde315a', '201703153574', 'f23dcfb9dcb9451693c21ee2432507e5', '1', '35.0', '35.0', null, null, null, null, '2', '2017-03-15 16:19:08');
INSERT INTO `tb_ordercommodity` VALUES ('1', '1', '8bee1642bb38461cadaf4febf9228510', '10', '30', '20', '', null, null, null, null, '2012-12-12 12:12:12');
INSERT INTO `tb_ordercommodity` VALUES ('17a787edc3694077891e3c62224cc6f3', '201703271509341542', 'c4fbaecbbb5f46d1b85afa8e2fb43a2d', '1', '26.0', '26.0', null, null, null, null, '2', '2017-03-27 15:09:36');
INSERT INTO `tb_ordercommodity` VALUES ('17d2a972d6944eeda4e4db60c79de6f1', '21b788510f4544a48d63346b0553410d', 'f23dcfb9dcb9451693c21ee2432507e5', '0', '35.0', '0.0', null, null, null, null, '2', '2017-03-14 17:03:46');
INSERT INTO `tb_ordercommodity` VALUES ('1df5ef4c2e0149e5b9645eae28e00c23', '201703162058499725', 'f23dcfb9dcb9451693c21ee2432507e5', '1', '35.0', '35.0', null, null, null, null, '2', '2017-03-16 20:58:49');
INSERT INTO `tb_ordercommodity` VALUES ('289d4c8ff675422bb31707482592fb7a', '7350eea866bb4f99a8df5a7fd92e1111', 'f23dcfb9dcb9451693c21ee2432507e5', '1', '35.0', '35.0', null, null, null, null, '2', '2017-03-14 17:49:11');
INSERT INTO `tb_ordercommodity` VALUES ('2a2222f3a6f3403dadc11db295c72cd8', '201703157374', 'f23dcfb9dcb9451693c21ee2432507e5', '1', '35.0', '35.0', null, null, null, null, '2', '2017-03-15 16:19:04');
INSERT INTO `tb_ordercommodity` VALUES ('3a653063733c46e08f731e0a23b178c2', '201703162359517397', 'f23dcfb9dcb9451693c21ee2432507e5', '1', '35.0', '35.0', null, null, null, null, '2', '2017-03-16 23:59:51');
INSERT INTO `tb_ordercommodity` VALUES ('3abab0ad2c4748eb88c120d8b7763a73', '201703162131314901', 'bfb6216314f34c5e8fe37dea6b378905', '2', '16.0', '32.0', null, null, null, null, '2', '2017-03-16 21:31:32');
INSERT INTO `tb_ordercommodity` VALUES ('3c71abf436fb40f8ba7f0d8f54d128f5', '201703271509068146', 'c4fbaecbbb5f46d1b85afa8e2fb43a2d', '1', '26.0', '26.0', null, null, null, null, '2', '2017-03-27 15:09:08');
INSERT INTO `tb_ordercommodity` VALUES ('3e0cc3e851dd443b97b736ff2f9b2b2e', '24a68b60100644dc932ffbaaed52867c', 'f23dcfb9dcb9451693c21ee2432507e5', '1', '35.0', '35.0', null, null, null, null, '2', '2017-03-14 17:09:19');
INSERT INTO `tb_ordercommodity` VALUES ('522bff5853d44360ba896c72971cbe97', '201703151337', 'bfb6216314f34c5e8fe37dea6b378905', '3', '16.0', '48.0', null, null, null, null, '2', '2017-03-15 14:52:25');
INSERT INTO `tb_ordercommodity` VALUES ('66dff5e437734f5a8af5b331fbab2688', '905328af4143427f9380b1df0fd3c335', 'f23dcfb9dcb9451693c21ee2432507e5', '0', '35.0', '0.0', null, null, null, null, '2', '2017-03-14 17:06:36');
INSERT INTO `tb_ordercommodity` VALUES ('739792483fdb4b4cbc8a4c5835fb00ba', '201703271509047794', 'c4fbaecbbb5f46d1b85afa8e2fb43a2d', '1', '26.0', '26.0', null, null, null, null, '2', '2017-03-27 15:09:06');
INSERT INTO `tb_ordercommodity` VALUES ('982043ba113d41e587ddab7fcd898950', '201703153986', 'f23dcfb9dcb9451693c21ee2432507e5', '1', '35.0', '35.0', null, null, null, null, '2', '2017-03-15 16:19:06');
INSERT INTO `tb_ordercommodity` VALUES ('994f3a6e9ef54fd89154dabff96843ba', '201703151337', 'f23dcfb9dcb9451693c21ee2432507e5', '6', '35.0', '210.0', null, null, null, null, '2', '2017-03-15 14:52:26');
INSERT INTO `tb_ordercommodity` VALUES ('9a2b9de040d8451ba508807c892e18f3', '0ea27b494071451f85f995edc7244d3b', 'f23dcfb9dcb9451693c21ee2432507e5', '1', '35.0', '35.0', null, null, null, null, '2', '2017-03-14 21:21:06');
INSERT INTO `tb_ordercommodity` VALUES ('9ce43d9f3e2e4996a597657ee4ffd52e', '201704241743318346', 'f23dcfb9dcb9451693c21ee2432507e5', '2', '35.0', '70.0', null, null, null, null, '2', '2017-04-24 17:43:32');
INSERT INTO `tb_ordercommodity` VALUES ('d1c83a37639543bbbe9ac57e7e22c1cc', '201703157430', 'f23dcfb9dcb9451693c21ee2432507e5', '1', '35.0', '35.0', null, null, null, null, '2', '2017-03-15 16:19:06');
INSERT INTO `tb_ordercommodity` VALUES ('d26b673f7c4a4249860c17feae50890c', '201704241743318346', '92aacbc043fb419591520c040fad99b0', '2', '17.0', '34.0', null, null, null, null, '2', '2017-04-24 17:43:33');
INSERT INTO `tb_ordercommodity` VALUES ('dc4212fb90624516b4379109fb4bc6bc', '201703162131255437', 'bfb6216314f34c5e8fe37dea6b378905', '2', '16.0', '32.0', null, null, null, null, '2', '2017-03-16 21:31:26');
INSERT INTO `tb_ordercommodity` VALUES ('ddbd0f265266470c93fe0526a654e79b', '201704241707013640', 'c4fbaecbbb5f46d1b85afa8e2fb43a2d', '1', '26.0', '26.0', null, null, null, null, '2', '2017-04-24 17:07:02');

-- ----------------------------
-- Table structure for `tb_ordercommodityimg`
-- ----------------------------
DROP TABLE IF EXISTS `tb_ordercommodityimg`;
CREATE TABLE `tb_ordercommodityimg` (
  `ORDERCOMMODITYIMG_ID` varchar(100) NOT NULL,
  `ORDERCOMMODITY_ID` varchar(100) NOT NULL COMMENT '评价表ID',
  `IMGURL` varchar(255) NOT NULL COMMENT '评价图片路径',
  `WEIGHT` varchar(2) NOT NULL COMMENT '权重012',
  PRIMARY KEY (`ORDERCOMMODITYIMG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ordercommodityimg
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_paymanagement`
-- ----------------------------
DROP TABLE IF EXISTS `tb_paymanagement`;
CREATE TABLE `tb_paymanagement` (
  `PAYMANAGEMENT_ID` varchar(100) NOT NULL COMMENT '支付管理id',
  `APPID` varchar(255) DEFAULT NULL COMMENT 'appid',
  `APPSECRET` varchar(255) DEFAULT NULL COMMENT 'appsecret',
  `PARTNER` varchar(255) DEFAULT NULL COMMENT '商户id',
  `PARTNERKEY` varchar(255) DEFAULT NULL COMMENT 'api密钥',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家id',
  `CERTIFICATEURL` varchar(255) DEFAULT NULL COMMENT '证书地址',
  PRIMARY KEY (`PAYMANAGEMENT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_paymanagement
-- ----------------------------
INSERT INTO `tb_paymanagement` VALUES ('5ebb0e876cc44d0d9af0a5b4d11f75fe', '2', '2', '2', '2', 'ce68ade5791e4921be891c6f55901e59', 'C:\\zhengshu\\ce68ade5791e4921be891c6f55901e59\\QQ图片20170309172004.png');

-- ----------------------------
-- Table structure for `tb_pictures`
-- ----------------------------
DROP TABLE IF EXISTS `tb_pictures`;
CREATE TABLE `tb_pictures` (
  `PICTURES_ID` varchar(100) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL COMMENT '标题',
  `NAME` varchar(255) DEFAULT NULL COMMENT '文件名',
  `PATH` varchar(255) DEFAULT NULL COMMENT '路径',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `MASTER_ID` varchar(255) DEFAULT NULL COMMENT '属于',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PICTURES_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_pictures
-- ----------------------------
INSERT INTO `tb_pictures` VALUES ('30ffc2f4a97846f28b7477634683ea26', '图片', '05f5261e123b42a391f76097ac630e66.jpg', '20170313/05f5261e123b42a391f76097ac630e66.jpg', '2017-03-13 16:25:39', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('3a778d5423c74d2287201d65bc628d09', '图片', 'bfc48168d02d4670beba89d9b50b8be2.jpg', '20170313/bfc48168d02d4670beba89d9b50b8be2.jpg', '2017-03-13 16:35:39', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('4556509f15ce442a804209a5a13717c9', '图片', '7ca8546e589948bf980933154aee4d79.jpg', '20170313/7ca8546e589948bf980933154aee4d79.jpg', '2017-03-13 16:36:08', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('6397774ada8a4e008ad377b414db2df2', '图片', 'fe696f804a00414bbc1285ea39dd8ac2.jpg', '20170313/fe696f804a00414bbc1285ea39dd8ac2.jpg', '2017-03-13 16:35:39', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('9156093d24e7484b97ec3d4bed893ee1', '图片', 'd975b2ebc85c49a5948b245e2a6cedc2.jpg', '20170313/d975b2ebc85c49a5948b245e2a6cedc2.jpg', '2017-03-13 16:25:39', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('99b1d092bcc5469fbf538707d2e598c5', '图片', 'b7bb8036dac0443b878fdf8f72924d11.jpg', '20170313/b7bb8036dac0443b878fdf8f72924d11.jpg', '2017-03-13 16:27:00', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('9a97789f026a4f0abbc564c4a5a1f0aa', '图片', 'd04bc4374d7a4e0288cd5a9131e1c6be.jpg', '20170313/d04bc4374d7a4e0288cd5a9131e1c6be.jpg', '2017-03-13 16:27:52', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('af5d9337d456427bbb0fdbc499433fee', '图片', '2eab25ccbbff4255a2e15b5612ed626b.png', '20160601/2eab25ccbbff4255a2e15b5612ed626b.png', '2016-06-01 14:11:04', '1', '图片管理处上传');

-- ----------------------------
-- Table structure for `tb_shopcar`
-- ----------------------------
DROP TABLE IF EXISTS `tb_shopcar`;
CREATE TABLE `tb_shopcar` (
  `SHOPCAR_ID` varchar(100) NOT NULL,
  `COMMODITY_ID` varchar(255) DEFAULT NULL COMMENT '商品ID',
  `COMMODITYSPECIFICATION_ID` varchar(255) DEFAULT NULL COMMENT '商品规格集合ID',
  `USERID` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `NUMBER` int(11) NOT NULL COMMENT '数量',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家id',
  PRIMARY KEY (`SHOPCAR_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_shopcar
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_specificationproperties`
-- ----------------------------
DROP TABLE IF EXISTS `tb_specificationproperties`;
CREATE TABLE `tb_specificationproperties` (
  `SPECIFICATIONPROPERTIES_ID` varchar(100) NOT NULL,
  `SPECIFICATIONS_ID` varchar(255) DEFAULT NULL COMMENT '所属规格',
  `NAME` varchar(255) DEFAULT NULL COMMENT '属性名',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家id',
  PRIMARY KEY (`SPECIFICATIONPROPERTIES_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_specificationproperties
-- ----------------------------
INSERT INTO `tb_specificationproperties` VALUES ('10824d2d34c845d288449eaf230982cf', 'e9968d06ac9d4301b17c8c6522f4475d', '北京', '2017-03-14 09:27:42', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_specificationproperties` VALUES ('11c51ea165a147159069d6e8dde01d53', '4ccad0fb97724374a5313f80157571e0', '250g', '2017-03-14 15:12:18', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_specificationproperties` VALUES ('1d2af78925bd44329ff4c0de95531c2f', '6de2205e6abe411880cb2e214de12859', '甜', '2017-03-14 09:27:13', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_specificationproperties` VALUES ('723628169b8e4b649c0b1a0877d4d1c8', '3b6e46c6f20c4cf0a89af2dfe1bab59e', '540g', '2017-03-14 15:09:44', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_specificationproperties` VALUES ('73ce75da06204d5a85e971ad67cfe7a8', 'b29a919f05cd4c968383e4a55f65d429', '500g', '2017-03-14 13:40:46', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_specificationproperties` VALUES ('742e98bef3ae4ca9a69ace6a3df8fd08', '0d1c425bee3d4593872bdec4d36c0167', '180g', '2017-03-14 14:28:33', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_specificationproperties` VALUES ('7904cdc4fbe0464fbb06e62af1372a0c', 'f042382d2db24e7289495224c5dc9fc8', '180g', '2017-03-14 17:51:29', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_specificationproperties` VALUES ('7dc0673bce204226ab2e01b691713f4c', 'd47e3f6151344728b4294e73e4ac2e07', '', '2017-03-14 13:36:29', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_specificationproperties` VALUES ('aff66816b4a74384a4a1a0f2fd407a9c', '54d4d7b53c39462a87d04bb0963cfd8e', '180g*2', '2017-03-14 14:21:43', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_specificationproperties` VALUES ('ed09aad01b8c4604be06477a712f02e6', '6de2205e6abe411880cb2e214de12859', '辣', '2017-03-14 09:27:13', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_specificationproperties` VALUES ('f2e1f3da90494c2d80303566a080c64f', 'e9968d06ac9d4301b17c8c6522f4475d', '天津', '2017-03-14 09:27:42', 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `tb_specifications`
-- ----------------------------
DROP TABLE IF EXISTS `tb_specifications`;
CREATE TABLE `tb_specifications` (
  `SPECIFICATIONS_ID` varchar(100) NOT NULL,
  `COMMODITY_ID` varchar(255) DEFAULT NULL COMMENT '所属商品',
  `NAME` varchar(255) DEFAULT NULL COMMENT '规格名',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家id',
  PRIMARY KEY (`SPECIFICATIONS_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_specifications
-- ----------------------------
INSERT INTO `tb_specifications` VALUES ('0d1c425bee3d4593872bdec4d36c0167', '674999c8cffc4b20becbf684a7c1d0f9', '净含量', '2017-03-14 14:28:33', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_specifications` VALUES ('3b6e46c6f20c4cf0a89af2dfe1bab59e', '7d99b4b0c8a6474a9b6b56bef9934200', '净含量', '2017-03-14 15:09:44', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_specifications` VALUES ('4ccad0fb97724374a5313f80157571e0', 'e26f028cac334c87847457c65acb033e', '净含量', '2017-03-14 15:12:18', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_specifications` VALUES ('54d4d7b53c39462a87d04bb0963cfd8e', '750235c5e84542b9bcb7a66a9c3d4518', '净含量', '2017-03-14 13:36:53', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_specifications` VALUES ('6de2205e6abe411880cb2e214de12859', '2fd9186fe64e4938994eafad79cbdd0c', '口感', '2017-03-14 09:27:13', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_specifications` VALUES ('b29a919f05cd4c968383e4a55f65d429', 'c43ea471d9bc43399ce49f3aff31581b', '净含量', '2017-03-14 13:40:46', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_specifications` VALUES ('e9968d06ac9d4301b17c8c6522f4475d', '2fd9186fe64e4938994eafad79cbdd0c', '产地', '2017-03-14 09:27:42', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_specifications` VALUES ('f042382d2db24e7289495224c5dc9fc8', '01bbf37bec2d4d2c97bda0c6c8ac79f2', '净含量', '2017-03-14 17:51:29', 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `tb_useraddress`
-- ----------------------------
DROP TABLE IF EXISTS `tb_useraddress`;
CREATE TABLE `tb_useraddress` (
  `USERADDRESS_ID` varchar(100) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL COMMENT '收货人',
  `TEL` varchar(255) DEFAULT NULL COMMENT '手机号',
  `PROVINCEID` varchar(255) DEFAULT NULL COMMENT '省',
  `CITYID` varchar(255) DEFAULT NULL COMMENT '市',
  `AREAID` varchar(255) DEFAULT NULL COMMENT '区',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '地址',
  `CODE` varchar(255) DEFAULT NULL COMMENT '邮编',
  `TYPE` varchar(255) DEFAULT NULL COMMENT '是否默认(0:否1:是)',
  `USERID` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FLAG` int(11) DEFAULT NULL COMMENT '是否生效(0否1是)',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家id',
  PRIMARY KEY (`USERADDRESS_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_useraddress
-- ----------------------------
INSERT INTO `tb_useraddress` VALUES ('1', '杨四通', '15510895203', '12000000', '12010000', '12011100', '天津工业大学', '300000', '0', '1', '2017-03-14 15:53:04', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `tb_useraddress` VALUES ('66930548a9894be1ba5029ad788ba30a', '胡先生', '18322781189', '11000000', '11010000', '11010100', '甲56号', '301800', '1', '1', '2017-04-24 17:05:46', '1', 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `tb_vip`
-- ----------------------------
DROP TABLE IF EXISTS `tb_vip`;
CREATE TABLE `tb_vip` (
  `VIP_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL COMMENT '用户名',
  `WEIXINNO` varchar(255) DEFAULT NULL COMMENT '微信id',
  `PHONE` varchar(255) DEFAULT NULL COMMENT '手机号',
  `WEIXINNAME` varchar(255) DEFAULT NULL COMMENT '微信名',
  `CREATETIME` datetime DEFAULT NULL,
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家ID',
  PRIMARY KEY (`VIP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_vip
-- ----------------------------
INSERT INTO `tb_vip` VALUES ('1', '用户0157', null, null, null, null, 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `td_area`
-- ----------------------------
DROP TABLE IF EXISTS `td_area`;
CREATE TABLE `td_area` (
  `AREA_ID` varchar(50) NOT NULL COMMENT '地区id',
  `fatherid` varchar(50) DEFAULT NULL COMMENT '地区的父ID 例如天津：id=1 那么和平区的fatherid=1',
  `AREA_NAME` varchar(100) DEFAULT NULL COMMENT '地区名称',
  PRIMARY KEY (`AREA_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='基础数据表-地区表';

-- ----------------------------
-- Records of td_area
-- ----------------------------
INSERT INTO `td_area` VALUES ('11000000', '0', '北京市');
INSERT INTO `td_area` VALUES ('11010000', '11000000', '市辖区');
INSERT INTO `td_area` VALUES ('11010100', '11010000', '东城区');
INSERT INTO `td_area` VALUES ('11010200', '11010000', '西城区');
INSERT INTO `td_area` VALUES ('11010300', '11010000', '崇文区');
INSERT INTO `td_area` VALUES ('11010400', '11010000', '宣武区');
INSERT INTO `td_area` VALUES ('11010500', '11010000', '朝阳区');
INSERT INTO `td_area` VALUES ('11010600', '11010000', '丰台区');
INSERT INTO `td_area` VALUES ('11010700', '11010000', '石景山区');
INSERT INTO `td_area` VALUES ('11010800', '11010000', '海淀区');
INSERT INTO `td_area` VALUES ('11010900', '11010000', '门头沟区');
INSERT INTO `td_area` VALUES ('11011100', '11010000', '房山区');
INSERT INTO `td_area` VALUES ('11011200', '11010000', '通州区');
INSERT INTO `td_area` VALUES ('11011300', '11010000', '顺义区');
INSERT INTO `td_area` VALUES ('11011400', '11010000', '昌平区');
INSERT INTO `td_area` VALUES ('11011500', '11010000', '大兴区');
INSERT INTO `td_area` VALUES ('11011600', '11010000', '怀柔区');
INSERT INTO `td_area` VALUES ('11011700', '11010000', '平谷区');
INSERT INTO `td_area` VALUES ('11020000', '11000000', '县');
INSERT INTO `td_area` VALUES ('11022800', '11020000', '密云县');
INSERT INTO `td_area` VALUES ('11022900', '11020000', '延庆县');
INSERT INTO `td_area` VALUES ('12000000', '0', '天津市');
INSERT INTO `td_area` VALUES ('12010000', '12000000', '市辖区');
INSERT INTO `td_area` VALUES ('12010100', '12010000', '和平区');
INSERT INTO `td_area` VALUES ('12010200', '12010000', '河东区');
INSERT INTO `td_area` VALUES ('12010300', '12010000', '河西区');
INSERT INTO `td_area` VALUES ('12010400', '12010000', '南开区');
INSERT INTO `td_area` VALUES ('12010500', '12010000', '河北区');
INSERT INTO `td_area` VALUES ('12010600', '12010000', '红桥区');
INSERT INTO `td_area` VALUES ('12010700', '12010000', '塘沽区');
INSERT INTO `td_area` VALUES ('12010800', '12010000', '汉沽区');
INSERT INTO `td_area` VALUES ('12010900', '12010000', '大港区');
INSERT INTO `td_area` VALUES ('12011000', '12010000', '东丽区');
INSERT INTO `td_area` VALUES ('12011100', '12010000', '西青区');
INSERT INTO `td_area` VALUES ('12011200', '12010000', '津南区');
INSERT INTO `td_area` VALUES ('12011300', '12010000', '北辰区');
INSERT INTO `td_area` VALUES ('12011400', '12010000', '武清区');
INSERT INTO `td_area` VALUES ('12011500', '12010000', '宝坻区');
INSERT INTO `td_area` VALUES ('12020000', '12000000', '县');
INSERT INTO `td_area` VALUES ('12022100', '12020000', '宁河县');
INSERT INTO `td_area` VALUES ('12022300', '12020000', '静海县');
INSERT INTO `td_area` VALUES ('12022500', '12020000', '蓟　县');
INSERT INTO `td_area` VALUES ('13000000', '0', '河北省');
INSERT INTO `td_area` VALUES ('13010000', '13000000', '石家庄市');
INSERT INTO `td_area` VALUES ('13010100', '13010000', '市辖区');
INSERT INTO `td_area` VALUES ('13010200', '13010000', '长安区');
INSERT INTO `td_area` VALUES ('13010300', '13010000', '桥东区');
INSERT INTO `td_area` VALUES ('13010400', '13010000', '桥西区');
INSERT INTO `td_area` VALUES ('13010500', '13010000', '新华区');
INSERT INTO `td_area` VALUES ('13010700', '13010000', '井陉矿区');
INSERT INTO `td_area` VALUES ('13010800', '13010000', '裕华区');
INSERT INTO `td_area` VALUES ('13012100', '13010000', '井陉县');
INSERT INTO `td_area` VALUES ('13012300', '13010000', '正定县');
INSERT INTO `td_area` VALUES ('13012400', '13010000', '栾城县');
INSERT INTO `td_area` VALUES ('13012500', '13010000', '行唐县');
INSERT INTO `td_area` VALUES ('13012600', '13010000', '灵寿县');
INSERT INTO `td_area` VALUES ('13012700', '13010000', '高邑县');
INSERT INTO `td_area` VALUES ('13012800', '13010000', '深泽县');
INSERT INTO `td_area` VALUES ('13012900', '13010000', '赞皇县');
INSERT INTO `td_area` VALUES ('13013000', '13010000', '无极县');
INSERT INTO `td_area` VALUES ('13013100', '13010000', '平山县');
INSERT INTO `td_area` VALUES ('13013200', '13010000', '元氏县');
INSERT INTO `td_area` VALUES ('13013300', '13010000', '赵　县');
INSERT INTO `td_area` VALUES ('13018100', '13010000', '辛集市');
INSERT INTO `td_area` VALUES ('13018200', '13010000', '藁城市');
INSERT INTO `td_area` VALUES ('13018300', '13010000', '晋州市');
INSERT INTO `td_area` VALUES ('13018400', '13010000', '新乐市');
INSERT INTO `td_area` VALUES ('13018500', '13010000', '鹿泉市');
INSERT INTO `td_area` VALUES ('13020000', '13000000', '唐山市');
INSERT INTO `td_area` VALUES ('13020100', '13020000', '市辖区');
INSERT INTO `td_area` VALUES ('13020200', '13020000', '路南区');
INSERT INTO `td_area` VALUES ('13020300', '13020000', '路北区');
INSERT INTO `td_area` VALUES ('13020400', '13020000', '古冶区');
INSERT INTO `td_area` VALUES ('13020500', '13020000', '开平区');
INSERT INTO `td_area` VALUES ('13020700', '13020000', '丰南区');
INSERT INTO `td_area` VALUES ('13020800', '13020000', '丰润区');
INSERT INTO `td_area` VALUES ('13022300', '13020000', '滦　县');
INSERT INTO `td_area` VALUES ('13022400', '13020000', '滦南县');
INSERT INTO `td_area` VALUES ('13022500', '13020000', '乐亭县');
INSERT INTO `td_area` VALUES ('13022700', '13020000', '迁西县');
INSERT INTO `td_area` VALUES ('13022900', '13020000', '玉田县');
INSERT INTO `td_area` VALUES ('13023000', '13020000', '唐海县');
INSERT INTO `td_area` VALUES ('13028100', '13020000', '遵化市');
INSERT INTO `td_area` VALUES ('13028300', '13020000', '迁安市');
INSERT INTO `td_area` VALUES ('13030000', '13000000', '秦皇岛市');
INSERT INTO `td_area` VALUES ('13030100', '13030000', '市辖区');
INSERT INTO `td_area` VALUES ('13030200', '13030000', '海港区');
INSERT INTO `td_area` VALUES ('13030300', '13030000', '山海关区');
INSERT INTO `td_area` VALUES ('13030400', '13030000', '北戴河区');
INSERT INTO `td_area` VALUES ('13032100', '13030000', '青龙满族自治县');
INSERT INTO `td_area` VALUES ('13032200', '13030000', '昌黎县');
INSERT INTO `td_area` VALUES ('13032300', '13030000', '抚宁县');
INSERT INTO `td_area` VALUES ('13032400', '13030000', '卢龙县');
INSERT INTO `td_area` VALUES ('13040000', '13000000', '邯郸市');
INSERT INTO `td_area` VALUES ('13040100', '13040000', '市辖区');
INSERT INTO `td_area` VALUES ('13040200', '13040000', '邯山区');
INSERT INTO `td_area` VALUES ('13040300', '13040000', '丛台区');
INSERT INTO `td_area` VALUES ('13040400', '13040000', '复兴区');
INSERT INTO `td_area` VALUES ('13040600', '13040000', '峰峰矿区');
INSERT INTO `td_area` VALUES ('13042100', '13040000', '邯郸县');
INSERT INTO `td_area` VALUES ('13042300', '13040000', '临漳县');
INSERT INTO `td_area` VALUES ('13042400', '13040000', '成安县');
INSERT INTO `td_area` VALUES ('13042500', '13040000', '大名县');
INSERT INTO `td_area` VALUES ('13042600', '13040000', '涉　县');
INSERT INTO `td_area` VALUES ('13042700', '13040000', '磁　县');
INSERT INTO `td_area` VALUES ('13042800', '13040000', '肥乡县');
INSERT INTO `td_area` VALUES ('13042900', '13040000', '永年县');
INSERT INTO `td_area` VALUES ('13043000', '13040000', '邱　县');
INSERT INTO `td_area` VALUES ('13043100', '13040000', '鸡泽县');
INSERT INTO `td_area` VALUES ('13043200', '13040000', '广平县');
INSERT INTO `td_area` VALUES ('13043300', '13040000', '馆陶县');
INSERT INTO `td_area` VALUES ('13043400', '13040000', '魏　县');
INSERT INTO `td_area` VALUES ('13043500', '13040000', '曲周县');
INSERT INTO `td_area` VALUES ('13048100', '13040000', '武安市');
INSERT INTO `td_area` VALUES ('13050000', '13000000', '邢台市');
INSERT INTO `td_area` VALUES ('13050100', '13050000', '市辖区');
INSERT INTO `td_area` VALUES ('13050200', '13050000', '桥东区');
INSERT INTO `td_area` VALUES ('13050300', '13050000', '桥西区');
INSERT INTO `td_area` VALUES ('13052100', '13050000', '邢台县');
INSERT INTO `td_area` VALUES ('13052200', '13050000', '临城县');
INSERT INTO `td_area` VALUES ('13052300', '13050000', '内丘县');
INSERT INTO `td_area` VALUES ('13052400', '13050000', '柏乡县');
INSERT INTO `td_area` VALUES ('13052500', '13050000', '隆尧县');
INSERT INTO `td_area` VALUES ('13052600', '13050000', '任　县');
INSERT INTO `td_area` VALUES ('13052700', '13050000', '南和县');
INSERT INTO `td_area` VALUES ('13052800', '13050000', '宁晋县');
INSERT INTO `td_area` VALUES ('13052900', '13050000', '巨鹿县');
INSERT INTO `td_area` VALUES ('13053000', '13050000', '新河县');
INSERT INTO `td_area` VALUES ('13053100', '13050000', '广宗县');
INSERT INTO `td_area` VALUES ('13053200', '13050000', '平乡县');
INSERT INTO `td_area` VALUES ('13053300', '13050000', '威　县');
INSERT INTO `td_area` VALUES ('13053400', '13050000', '清河县');
INSERT INTO `td_area` VALUES ('13053500', '13050000', '临西县');
INSERT INTO `td_area` VALUES ('13058100', '13050000', '南宫市');
INSERT INTO `td_area` VALUES ('13058200', '13050000', '沙河市');
INSERT INTO `td_area` VALUES ('13060000', '13000000', '保定市');
INSERT INTO `td_area` VALUES ('13060100', '13060000', '市辖区');
INSERT INTO `td_area` VALUES ('13060200', '13060000', '新市区');
INSERT INTO `td_area` VALUES ('13060300', '13060000', '北市区');
INSERT INTO `td_area` VALUES ('13060400', '13060000', '南市区');
INSERT INTO `td_area` VALUES ('13062100', '13060000', '满城县');
INSERT INTO `td_area` VALUES ('13062200', '13060000', '清苑县');
INSERT INTO `td_area` VALUES ('13062300', '13060000', '涞水县');
INSERT INTO `td_area` VALUES ('13062400', '13060000', '阜平县');
INSERT INTO `td_area` VALUES ('13062500', '13060000', '徐水县');
INSERT INTO `td_area` VALUES ('13062600', '13060000', '定兴县');
INSERT INTO `td_area` VALUES ('13062700', '13060000', '唐　县');
INSERT INTO `td_area` VALUES ('13062800', '13060000', '高阳县');
INSERT INTO `td_area` VALUES ('13062900', '13060000', '容城县');
INSERT INTO `td_area` VALUES ('13063000', '13060000', '涞源县');
INSERT INTO `td_area` VALUES ('13063100', '13060000', '望都县');
INSERT INTO `td_area` VALUES ('13063200', '13060000', '安新县');
INSERT INTO `td_area` VALUES ('13063300', '13060000', '易　县');
INSERT INTO `td_area` VALUES ('13063400', '13060000', '曲阳县');
INSERT INTO `td_area` VALUES ('13063500', '13060000', '蠡　县');
INSERT INTO `td_area` VALUES ('13063600', '13060000', '顺平县');
INSERT INTO `td_area` VALUES ('13063700', '13060000', '博野县');
INSERT INTO `td_area` VALUES ('13063800', '13060000', '雄　县');
INSERT INTO `td_area` VALUES ('13068100', '13060000', '涿州市');
INSERT INTO `td_area` VALUES ('13068200', '13060000', '定州市');
INSERT INTO `td_area` VALUES ('13068300', '13060000', '安国市');
INSERT INTO `td_area` VALUES ('13068400', '13060000', '高碑店市');
INSERT INTO `td_area` VALUES ('13070000', '13000000', '张家口市');
INSERT INTO `td_area` VALUES ('13070100', '13070000', '市辖区');
INSERT INTO `td_area` VALUES ('13070200', '13070000', '桥东区');
INSERT INTO `td_area` VALUES ('13070300', '13070000', '桥西区');
INSERT INTO `td_area` VALUES ('13070500', '13070000', '宣化区');
INSERT INTO `td_area` VALUES ('13070600', '13070000', '下花园区');
INSERT INTO `td_area` VALUES ('13072100', '13070000', '宣化县');
INSERT INTO `td_area` VALUES ('13072200', '13070000', '张北县');
INSERT INTO `td_area` VALUES ('13072300', '13070000', '康保县');
INSERT INTO `td_area` VALUES ('13072400', '13070000', '沽源县');
INSERT INTO `td_area` VALUES ('13072500', '13070000', '尚义县');
INSERT INTO `td_area` VALUES ('13072600', '13070000', '蔚　县');
INSERT INTO `td_area` VALUES ('13072700', '13070000', '阳原县');
INSERT INTO `td_area` VALUES ('13072800', '13070000', '怀安县');
INSERT INTO `td_area` VALUES ('13072900', '13070000', '万全县');
INSERT INTO `td_area` VALUES ('13073000', '13070000', '怀来县');
INSERT INTO `td_area` VALUES ('13073100', '13070000', '涿鹿县');
INSERT INTO `td_area` VALUES ('13073200', '13070000', '赤城县');
INSERT INTO `td_area` VALUES ('13073300', '13070000', '崇礼县');
INSERT INTO `td_area` VALUES ('13080000', '13000000', '承德市');
INSERT INTO `td_area` VALUES ('13080100', '13080000', '市辖区');
INSERT INTO `td_area` VALUES ('13080200', '13080000', '双桥区');
INSERT INTO `td_area` VALUES ('13080300', '13080000', '双滦区');
INSERT INTO `td_area` VALUES ('13080400', '13080000', '鹰手营子矿区');
INSERT INTO `td_area` VALUES ('13082100', '13080000', '承德县');
INSERT INTO `td_area` VALUES ('13082200', '13080000', '兴隆县');
INSERT INTO `td_area` VALUES ('13082300', '13080000', '平泉县');
INSERT INTO `td_area` VALUES ('13082400', '13080000', '滦平县');
INSERT INTO `td_area` VALUES ('13082500', '13080000', '隆化县');
INSERT INTO `td_area` VALUES ('13082600', '13080000', '丰宁满族自治县');
INSERT INTO `td_area` VALUES ('13082700', '13080000', '宽城满族自治县');
INSERT INTO `td_area` VALUES ('13082800', '13080000', '围场满族蒙古族自治县');
INSERT INTO `td_area` VALUES ('13090000', '13000000', '沧州市');
INSERT INTO `td_area` VALUES ('13090100', '13090000', '市辖区');
INSERT INTO `td_area` VALUES ('13090200', '13090000', '新华区');
INSERT INTO `td_area` VALUES ('13090300', '13090000', '运河区');
INSERT INTO `td_area` VALUES ('13092100', '13090000', '沧　县');
INSERT INTO `td_area` VALUES ('13092200', '13090000', '青　县');
INSERT INTO `td_area` VALUES ('13092300', '13090000', '东光县');
INSERT INTO `td_area` VALUES ('13092400', '13090000', '海兴县');
INSERT INTO `td_area` VALUES ('13092500', '13090000', '盐山县');
INSERT INTO `td_area` VALUES ('13092600', '13090000', '肃宁县');
INSERT INTO `td_area` VALUES ('13092700', '13090000', '南皮县');
INSERT INTO `td_area` VALUES ('13092800', '13090000', '吴桥县');
INSERT INTO `td_area` VALUES ('13092900', '13090000', '献　县');
INSERT INTO `td_area` VALUES ('13093000', '13090000', '孟村回族自治县');
INSERT INTO `td_area` VALUES ('13098100', '13090000', '泊头市');
INSERT INTO `td_area` VALUES ('13098200', '13090000', '任丘市');
INSERT INTO `td_area` VALUES ('13098300', '13090000', '黄骅市');
INSERT INTO `td_area` VALUES ('13098400', '13090000', '河间市');
INSERT INTO `td_area` VALUES ('13100000', '13000000', '廊坊市');
INSERT INTO `td_area` VALUES ('13100100', '13100000', '市辖区');
INSERT INTO `td_area` VALUES ('13100200', '13100000', '安次区');
INSERT INTO `td_area` VALUES ('13100300', '13100000', '广阳区');
INSERT INTO `td_area` VALUES ('13102200', '13100000', '固安县');
INSERT INTO `td_area` VALUES ('13102300', '13100000', '永清县');
INSERT INTO `td_area` VALUES ('13102400', '13100000', '香河县');
INSERT INTO `td_area` VALUES ('13102500', '13100000', '大城县');
INSERT INTO `td_area` VALUES ('13102600', '13100000', '文安县');
INSERT INTO `td_area` VALUES ('13102800', '13100000', '大厂回族自治县');
INSERT INTO `td_area` VALUES ('13108100', '13100000', '霸州市');
INSERT INTO `td_area` VALUES ('13108200', '13100000', '三河市');
INSERT INTO `td_area` VALUES ('13110000', '13000000', '衡水市');
INSERT INTO `td_area` VALUES ('13110100', '13110000', '市辖区');
INSERT INTO `td_area` VALUES ('13110200', '13110000', '桃城区');
INSERT INTO `td_area` VALUES ('13112100', '13110000', '枣强县');
INSERT INTO `td_area` VALUES ('13112200', '13110000', '武邑县');
INSERT INTO `td_area` VALUES ('13112300', '13110000', '武强县');
INSERT INTO `td_area` VALUES ('13112400', '13110000', '饶阳县');
INSERT INTO `td_area` VALUES ('13112500', '13110000', '安平县');
INSERT INTO `td_area` VALUES ('13112600', '13110000', '故城县');
INSERT INTO `td_area` VALUES ('13112700', '13110000', '景　县');
INSERT INTO `td_area` VALUES ('13112800', '13110000', '阜城县');
INSERT INTO `td_area` VALUES ('13118100', '13110000', '冀州市');
INSERT INTO `td_area` VALUES ('13118200', '13110000', '深州市');
INSERT INTO `td_area` VALUES ('14000000', '0', '山西省');
INSERT INTO `td_area` VALUES ('14010000', '14000000', '太原市');
INSERT INTO `td_area` VALUES ('14010100', '14010000', '市辖区');
INSERT INTO `td_area` VALUES ('14010500', '14010000', '小店区');
INSERT INTO `td_area` VALUES ('14010600', '14010000', '迎泽区');
INSERT INTO `td_area` VALUES ('14010700', '14010000', '杏花岭区');
INSERT INTO `td_area` VALUES ('14010800', '14010000', '尖草坪区');
INSERT INTO `td_area` VALUES ('14010900', '14010000', '万柏林区');
INSERT INTO `td_area` VALUES ('14011000', '14010000', '晋源区');
INSERT INTO `td_area` VALUES ('14012100', '14010000', '清徐县');
INSERT INTO `td_area` VALUES ('14012200', '14010000', '阳曲县');
INSERT INTO `td_area` VALUES ('14012300', '14010000', '娄烦县');
INSERT INTO `td_area` VALUES ('14018100', '14010000', '古交市');
INSERT INTO `td_area` VALUES ('14020000', '14000000', '大同市');
INSERT INTO `td_area` VALUES ('14020100', '14020000', '市辖区');
INSERT INTO `td_area` VALUES ('14020200', '14020000', '城　区');
INSERT INTO `td_area` VALUES ('14020300', '14020000', '矿　区');
INSERT INTO `td_area` VALUES ('14021100', '14020000', '南郊区');
INSERT INTO `td_area` VALUES ('14021200', '14020000', '新荣区');
INSERT INTO `td_area` VALUES ('14022100', '14020000', '阳高县');
INSERT INTO `td_area` VALUES ('14022200', '14020000', '天镇县');
INSERT INTO `td_area` VALUES ('14022300', '14020000', '广灵县');
INSERT INTO `td_area` VALUES ('14022400', '14020000', '灵丘县');
INSERT INTO `td_area` VALUES ('14022500', '14020000', '浑源县');
INSERT INTO `td_area` VALUES ('14022600', '14020000', '左云县');
INSERT INTO `td_area` VALUES ('14022700', '14020000', '大同县');
INSERT INTO `td_area` VALUES ('14030000', '14000000', '阳泉市');
INSERT INTO `td_area` VALUES ('14030100', '14030000', '市辖区');
INSERT INTO `td_area` VALUES ('14030200', '14030000', '城　区');
INSERT INTO `td_area` VALUES ('14030300', '14030000', '矿　区');
INSERT INTO `td_area` VALUES ('14031100', '14030000', '郊　区');
INSERT INTO `td_area` VALUES ('14032100', '14030000', '平定县');
INSERT INTO `td_area` VALUES ('14032200', '14030000', '盂　县');
INSERT INTO `td_area` VALUES ('14040000', '14000000', '长治市');
INSERT INTO `td_area` VALUES ('14040100', '14040000', '市辖区');
INSERT INTO `td_area` VALUES ('14040200', '14040000', '城　区');
INSERT INTO `td_area` VALUES ('14041100', '14040000', '郊　区');
INSERT INTO `td_area` VALUES ('14042100', '14040000', '长治县');
INSERT INTO `td_area` VALUES ('14042300', '14040000', '襄垣县');
INSERT INTO `td_area` VALUES ('14042400', '14040000', '屯留县');
INSERT INTO `td_area` VALUES ('14042500', '14040000', '平顺县');
INSERT INTO `td_area` VALUES ('14042600', '14040000', '黎城县');
INSERT INTO `td_area` VALUES ('14042700', '14040000', '壶关县');
INSERT INTO `td_area` VALUES ('14042800', '14040000', '长子县');
INSERT INTO `td_area` VALUES ('14042900', '14040000', '武乡县');
INSERT INTO `td_area` VALUES ('14043000', '14040000', '沁　县');
INSERT INTO `td_area` VALUES ('14043100', '14040000', '沁源县');
INSERT INTO `td_area` VALUES ('14048100', '14040000', '潞城市');
INSERT INTO `td_area` VALUES ('14050000', '14000000', '晋城市');
INSERT INTO `td_area` VALUES ('14050100', '14050000', '市辖区');
INSERT INTO `td_area` VALUES ('14050200', '14050000', '城　区');
INSERT INTO `td_area` VALUES ('14052100', '14050000', '沁水县');
INSERT INTO `td_area` VALUES ('14052200', '14050000', '阳城县');
INSERT INTO `td_area` VALUES ('14052400', '14050000', '陵川县');
INSERT INTO `td_area` VALUES ('14052500', '14050000', '泽州县');
INSERT INTO `td_area` VALUES ('14058100', '14050000', '高平市');
INSERT INTO `td_area` VALUES ('14060000', '14000000', '朔州市');
INSERT INTO `td_area` VALUES ('14060100', '14060000', '市辖区');
INSERT INTO `td_area` VALUES ('14060200', '14060000', '朔城区');
INSERT INTO `td_area` VALUES ('14060300', '14060000', '平鲁区');
INSERT INTO `td_area` VALUES ('14062100', '14060000', '山阴县');
INSERT INTO `td_area` VALUES ('14062200', '14060000', '应　县');
INSERT INTO `td_area` VALUES ('14062300', '14060000', '右玉县');
INSERT INTO `td_area` VALUES ('14062400', '14060000', '怀仁县');
INSERT INTO `td_area` VALUES ('14070000', '14000000', '晋中市');
INSERT INTO `td_area` VALUES ('14070100', '14070000', '市辖区');
INSERT INTO `td_area` VALUES ('14070200', '14070000', '榆次区');
INSERT INTO `td_area` VALUES ('14072100', '14070000', '榆社县');
INSERT INTO `td_area` VALUES ('14072200', '14070000', '左权县');
INSERT INTO `td_area` VALUES ('14072300', '14070000', '和顺县');
INSERT INTO `td_area` VALUES ('14072400', '14070000', '昔阳县');
INSERT INTO `td_area` VALUES ('14072500', '14070000', '寿阳县');
INSERT INTO `td_area` VALUES ('14072600', '14070000', '太谷县');
INSERT INTO `td_area` VALUES ('14072700', '14070000', '祁　县');
INSERT INTO `td_area` VALUES ('14072800', '14070000', '平遥县');
INSERT INTO `td_area` VALUES ('14072900', '14070000', '灵石县');
INSERT INTO `td_area` VALUES ('14078100', '14070000', '介休市');
INSERT INTO `td_area` VALUES ('14080000', '14000000', '运城市');
INSERT INTO `td_area` VALUES ('14080100', '14080000', '市辖区');
INSERT INTO `td_area` VALUES ('14080200', '14080000', '盐湖区');
INSERT INTO `td_area` VALUES ('14082100', '14080000', '临猗县');
INSERT INTO `td_area` VALUES ('14082200', '14080000', '万荣县');
INSERT INTO `td_area` VALUES ('14082300', '14080000', '闻喜县');
INSERT INTO `td_area` VALUES ('14082400', '14080000', '稷山县');
INSERT INTO `td_area` VALUES ('14082500', '14080000', '新绛县');
INSERT INTO `td_area` VALUES ('14082600', '14080000', '绛　县');
INSERT INTO `td_area` VALUES ('14082700', '14080000', '垣曲县');
INSERT INTO `td_area` VALUES ('14082800', '14080000', '夏　县');
INSERT INTO `td_area` VALUES ('14082900', '14080000', '平陆县');
INSERT INTO `td_area` VALUES ('14083000', '14080000', '芮城县');
INSERT INTO `td_area` VALUES ('14088100', '14080000', '永济市');
INSERT INTO `td_area` VALUES ('14088200', '14080000', '河津市');
INSERT INTO `td_area` VALUES ('14090000', '14000000', '忻州市');
INSERT INTO `td_area` VALUES ('14090100', '14090000', '市辖区');
INSERT INTO `td_area` VALUES ('14090200', '14090000', '忻府区');
INSERT INTO `td_area` VALUES ('14092100', '14090000', '定襄县');
INSERT INTO `td_area` VALUES ('14092200', '14090000', '五台县');
INSERT INTO `td_area` VALUES ('14092300', '14090000', '代　县');
INSERT INTO `td_area` VALUES ('14092400', '14090000', '繁峙县');
INSERT INTO `td_area` VALUES ('14092500', '14090000', '宁武县');
INSERT INTO `td_area` VALUES ('14092600', '14090000', '静乐县');
INSERT INTO `td_area` VALUES ('14092700', '14090000', '神池县');
INSERT INTO `td_area` VALUES ('14092800', '14090000', '五寨县');
INSERT INTO `td_area` VALUES ('14092900', '14090000', '岢岚县');
INSERT INTO `td_area` VALUES ('14093000', '14090000', '河曲县');
INSERT INTO `td_area` VALUES ('14093100', '14090000', '保德县');
INSERT INTO `td_area` VALUES ('14093200', '14090000', '偏关县');
INSERT INTO `td_area` VALUES ('14098100', '14090000', '原平市');
INSERT INTO `td_area` VALUES ('14100000', '14000000', '临汾市');
INSERT INTO `td_area` VALUES ('14100100', '14100000', '市辖区');
INSERT INTO `td_area` VALUES ('14100200', '14100000', '尧都区');
INSERT INTO `td_area` VALUES ('14102100', '14100000', '曲沃县');
INSERT INTO `td_area` VALUES ('14102200', '14100000', '翼城县');
INSERT INTO `td_area` VALUES ('14102300', '14100000', '襄汾县');
INSERT INTO `td_area` VALUES ('14102400', '14100000', '洪洞县');
INSERT INTO `td_area` VALUES ('14102500', '14100000', '古　县');
INSERT INTO `td_area` VALUES ('14102600', '14100000', '安泽县');
INSERT INTO `td_area` VALUES ('14102700', '14100000', '浮山县');
INSERT INTO `td_area` VALUES ('14102800', '14100000', '吉　县');
INSERT INTO `td_area` VALUES ('14102900', '14100000', '乡宁县');
INSERT INTO `td_area` VALUES ('14103000', '14100000', '大宁县');
INSERT INTO `td_area` VALUES ('14103100', '14100000', '隰　县');
INSERT INTO `td_area` VALUES ('14103200', '14100000', '永和县');
INSERT INTO `td_area` VALUES ('14103300', '14100000', '蒲　县');
INSERT INTO `td_area` VALUES ('14103400', '14100000', '汾西县');
INSERT INTO `td_area` VALUES ('14108100', '14100000', '侯马市');
INSERT INTO `td_area` VALUES ('14108200', '14100000', '霍州市');
INSERT INTO `td_area` VALUES ('14110000', '14000000', '吕梁市');
INSERT INTO `td_area` VALUES ('14110100', '14110000', '市辖区');
INSERT INTO `td_area` VALUES ('14110200', '14110000', '离石区');
INSERT INTO `td_area` VALUES ('14112100', '14110000', '文水县');
INSERT INTO `td_area` VALUES ('14112200', '14110000', '交城县');
INSERT INTO `td_area` VALUES ('14112300', '14110000', '兴　县');
INSERT INTO `td_area` VALUES ('14112400', '14110000', '临　县');
INSERT INTO `td_area` VALUES ('14112500', '14110000', '柳林县');
INSERT INTO `td_area` VALUES ('14112600', '14110000', '石楼县');
INSERT INTO `td_area` VALUES ('14112700', '14110000', '岚　县');
INSERT INTO `td_area` VALUES ('14112800', '14110000', '方山县');
INSERT INTO `td_area` VALUES ('14112900', '14110000', '中阳县');
INSERT INTO `td_area` VALUES ('14113000', '14110000', '交口县');
INSERT INTO `td_area` VALUES ('14118100', '14110000', '孝义市');
INSERT INTO `td_area` VALUES ('14118200', '14110000', '汾阳市');
INSERT INTO `td_area` VALUES ('15000000', '0', '内蒙古自治区');
INSERT INTO `td_area` VALUES ('15010000', '15000000', '呼和浩特市');
INSERT INTO `td_area` VALUES ('15010100', '15010000', '市辖区');
INSERT INTO `td_area` VALUES ('15010200', '15010000', '新城区');
INSERT INTO `td_area` VALUES ('15010300', '15010000', '回民区');
INSERT INTO `td_area` VALUES ('15010400', '15010000', '玉泉区');
INSERT INTO `td_area` VALUES ('15010500', '15010000', '赛罕区');
INSERT INTO `td_area` VALUES ('15012100', '15010000', '土默特左旗');
INSERT INTO `td_area` VALUES ('15012200', '15010000', '托克托县');
INSERT INTO `td_area` VALUES ('15012300', '15010000', '和林格尔县');
INSERT INTO `td_area` VALUES ('15012400', '15010000', '清水河县');
INSERT INTO `td_area` VALUES ('15012500', '15010000', '武川县');
INSERT INTO `td_area` VALUES ('15020000', '15000000', '包头市');
INSERT INTO `td_area` VALUES ('15020100', '15020000', '市辖区');
INSERT INTO `td_area` VALUES ('15020200', '15020000', '东河区');
INSERT INTO `td_area` VALUES ('15020300', '15020000', '昆都仑区');
INSERT INTO `td_area` VALUES ('15020400', '15020000', '青山区');
INSERT INTO `td_area` VALUES ('15020500', '15020000', '石拐区');
INSERT INTO `td_area` VALUES ('15020600', '15020000', '白云矿区');
INSERT INTO `td_area` VALUES ('15020700', '15020000', '九原区');
INSERT INTO `td_area` VALUES ('15022100', '15020000', '土默特右旗');
INSERT INTO `td_area` VALUES ('15022200', '15020000', '固阳县');
INSERT INTO `td_area` VALUES ('15022300', '15020000', '达尔罕茂明安联合旗');
INSERT INTO `td_area` VALUES ('15030000', '15000000', '乌海市');
INSERT INTO `td_area` VALUES ('15030100', '15030000', '市辖区');
INSERT INTO `td_area` VALUES ('15030200', '15030000', '海勃湾区');
INSERT INTO `td_area` VALUES ('15030300', '15030000', '海南区');
INSERT INTO `td_area` VALUES ('15030400', '15030000', '乌达区');
INSERT INTO `td_area` VALUES ('15040000', '15000000', '赤峰市');
INSERT INTO `td_area` VALUES ('15040100', '15040000', '市辖区');
INSERT INTO `td_area` VALUES ('15040200', '15040000', '红山区');
INSERT INTO `td_area` VALUES ('15040300', '15040000', '元宝山区');
INSERT INTO `td_area` VALUES ('15040400', '15040000', '松山区');
INSERT INTO `td_area` VALUES ('15042100', '15040000', '阿鲁科尔沁旗');
INSERT INTO `td_area` VALUES ('15042200', '15040000', '巴林左旗');
INSERT INTO `td_area` VALUES ('15042300', '15040000', '巴林右旗');
INSERT INTO `td_area` VALUES ('15042400', '15040000', '林西县');
INSERT INTO `td_area` VALUES ('15042500', '15040000', '克什克腾旗');
INSERT INTO `td_area` VALUES ('15042600', '15040000', '翁牛特旗');
INSERT INTO `td_area` VALUES ('15042800', '15040000', '喀喇沁旗');
INSERT INTO `td_area` VALUES ('15042900', '15040000', '宁城县');
INSERT INTO `td_area` VALUES ('15043000', '15040000', '敖汉旗');
INSERT INTO `td_area` VALUES ('15050000', '15000000', '通辽市');
INSERT INTO `td_area` VALUES ('15050100', '15050000', '市辖区');
INSERT INTO `td_area` VALUES ('15050200', '15050000', '科尔沁区');
INSERT INTO `td_area` VALUES ('15052100', '15050000', '科尔沁左翼中旗');
INSERT INTO `td_area` VALUES ('15052200', '15050000', '科尔沁左翼后旗');
INSERT INTO `td_area` VALUES ('15052300', '15050000', '开鲁县');
INSERT INTO `td_area` VALUES ('15052400', '15050000', '库伦旗');
INSERT INTO `td_area` VALUES ('15052500', '15050000', '奈曼旗');
INSERT INTO `td_area` VALUES ('15052600', '15050000', '扎鲁特旗');
INSERT INTO `td_area` VALUES ('15058100', '15050000', '霍林郭勒市');
INSERT INTO `td_area` VALUES ('15060000', '15000000', '鄂尔多斯市');
INSERT INTO `td_area` VALUES ('15060200', '15060000', '东胜区');
INSERT INTO `td_area` VALUES ('15062100', '15060000', '达拉特旗');
INSERT INTO `td_area` VALUES ('15062200', '15060000', '准格尔旗');
INSERT INTO `td_area` VALUES ('15062300', '15060000', '鄂托克前旗');
INSERT INTO `td_area` VALUES ('15062400', '15060000', '鄂托克旗');
INSERT INTO `td_area` VALUES ('15062500', '15060000', '杭锦旗');
INSERT INTO `td_area` VALUES ('15062600', '15060000', '乌审旗');
INSERT INTO `td_area` VALUES ('15062700', '15060000', '伊金霍洛旗');
INSERT INTO `td_area` VALUES ('15070000', '15000000', '呼伦贝尔市');
INSERT INTO `td_area` VALUES ('15070100', '15070000', '市辖区');
INSERT INTO `td_area` VALUES ('15070200', '15070000', '海拉尔区');
INSERT INTO `td_area` VALUES ('15072100', '15070000', '阿荣旗');
INSERT INTO `td_area` VALUES ('15072200', '15070000', '莫力达瓦达斡尔族自治旗');
INSERT INTO `td_area` VALUES ('15072300', '15070000', '鄂伦春自治旗');
INSERT INTO `td_area` VALUES ('15072400', '15070000', '鄂温克族自治旗');
INSERT INTO `td_area` VALUES ('15072500', '15070000', '陈巴尔虎旗');
INSERT INTO `td_area` VALUES ('15072600', '15070000', '新巴尔虎左旗');
INSERT INTO `td_area` VALUES ('15072700', '15070000', '新巴尔虎右旗');
INSERT INTO `td_area` VALUES ('15078100', '15070000', '满洲里市');
INSERT INTO `td_area` VALUES ('15078200', '15070000', '牙克石市');
INSERT INTO `td_area` VALUES ('15078300', '15070000', '扎兰屯市');
INSERT INTO `td_area` VALUES ('15078400', '15070000', '额尔古纳市');
INSERT INTO `td_area` VALUES ('15078500', '15070000', '根河市');
INSERT INTO `td_area` VALUES ('15080000', '15000000', '巴彦淖尔市');
INSERT INTO `td_area` VALUES ('15080100', '15080000', '市辖区');
INSERT INTO `td_area` VALUES ('15080200', '15080000', '临河区');
INSERT INTO `td_area` VALUES ('15082100', '15080000', '五原县');
INSERT INTO `td_area` VALUES ('15082200', '15080000', '磴口县');
INSERT INTO `td_area` VALUES ('15082300', '15080000', '乌拉特前旗');
INSERT INTO `td_area` VALUES ('15082400', '15080000', '乌拉特中旗');
INSERT INTO `td_area` VALUES ('15082500', '15080000', '乌拉特后旗');
INSERT INTO `td_area` VALUES ('15082600', '15080000', '杭锦后旗');
INSERT INTO `td_area` VALUES ('15090000', '15000000', '乌兰察布市');
INSERT INTO `td_area` VALUES ('15090100', '15090000', '市辖区');
INSERT INTO `td_area` VALUES ('15090200', '15090000', '集宁区');
INSERT INTO `td_area` VALUES ('15092100', '15090000', '卓资县');
INSERT INTO `td_area` VALUES ('15092200', '15090000', '化德县');
INSERT INTO `td_area` VALUES ('15092300', '15090000', '商都县');
INSERT INTO `td_area` VALUES ('15092400', '15090000', '兴和县');
INSERT INTO `td_area` VALUES ('15092500', '15090000', '凉城县');
INSERT INTO `td_area` VALUES ('15092600', '15090000', '察哈尔右翼前旗');
INSERT INTO `td_area` VALUES ('15092700', '15090000', '察哈尔右翼中旗');
INSERT INTO `td_area` VALUES ('15092800', '15090000', '察哈尔右翼后旗');
INSERT INTO `td_area` VALUES ('15092900', '15090000', '四子王旗');
INSERT INTO `td_area` VALUES ('15098100', '15090000', '丰镇市');
INSERT INTO `td_area` VALUES ('15220000', '15000000', '兴安盟');
INSERT INTO `td_area` VALUES ('15220100', '15220000', '乌兰浩特市');
INSERT INTO `td_area` VALUES ('15220200', '15220000', '阿尔山市');
INSERT INTO `td_area` VALUES ('15222100', '15220000', '科尔沁右翼前旗');
INSERT INTO `td_area` VALUES ('15222200', '15220000', '科尔沁右翼中旗');
INSERT INTO `td_area` VALUES ('15222300', '15220000', '扎赉特旗');
INSERT INTO `td_area` VALUES ('15222400', '15220000', '突泉县');
INSERT INTO `td_area` VALUES ('15250000', '15000000', '锡林郭勒盟');
INSERT INTO `td_area` VALUES ('15250100', '15250000', '二连浩特市');
INSERT INTO `td_area` VALUES ('15250200', '15250000', '锡林浩特市');
INSERT INTO `td_area` VALUES ('15252200', '15250000', '阿巴嘎旗');
INSERT INTO `td_area` VALUES ('15252300', '15250000', '苏尼特左旗');
INSERT INTO `td_area` VALUES ('15252400', '15250000', '苏尼特右旗');
INSERT INTO `td_area` VALUES ('15252500', '15250000', '东乌珠穆沁旗');
INSERT INTO `td_area` VALUES ('15252600', '15250000', '西乌珠穆沁旗');
INSERT INTO `td_area` VALUES ('15252700', '15250000', '太仆寺旗');
INSERT INTO `td_area` VALUES ('15252800', '15250000', '镶黄旗');
INSERT INTO `td_area` VALUES ('15252900', '15250000', '正镶白旗');
INSERT INTO `td_area` VALUES ('15253000', '15250000', '正蓝旗');
INSERT INTO `td_area` VALUES ('15253100', '15250000', '多伦县');
INSERT INTO `td_area` VALUES ('15290000', '15000000', '阿拉善盟');
INSERT INTO `td_area` VALUES ('15292100', '15290000', '阿拉善左旗');
INSERT INTO `td_area` VALUES ('15292200', '15290000', '阿拉善右旗');
INSERT INTO `td_area` VALUES ('15292300', '15290000', '额济纳旗');
INSERT INTO `td_area` VALUES ('21000000', '0', '辽宁省');
INSERT INTO `td_area` VALUES ('21010000', '21000000', '沈阳市');
INSERT INTO `td_area` VALUES ('21010100', '21010000', '市辖区');
INSERT INTO `td_area` VALUES ('21010200', '21010000', '和平区');
INSERT INTO `td_area` VALUES ('21010300', '21010000', '沈河区');
INSERT INTO `td_area` VALUES ('21010400', '21010000', '大东区');
INSERT INTO `td_area` VALUES ('21010500', '21010000', '皇姑区');
INSERT INTO `td_area` VALUES ('21010600', '21010000', '铁西区');
INSERT INTO `td_area` VALUES ('21011100', '21010000', '苏家屯区');
INSERT INTO `td_area` VALUES ('21011200', '21010000', '东陵区');
INSERT INTO `td_area` VALUES ('21011300', '21010000', '新城子区');
INSERT INTO `td_area` VALUES ('21011400', '21010000', '于洪区');
INSERT INTO `td_area` VALUES ('21012200', '21010000', '辽中县');
INSERT INTO `td_area` VALUES ('21012300', '21010000', '康平县');
INSERT INTO `td_area` VALUES ('21012400', '21010000', '法库县');
INSERT INTO `td_area` VALUES ('21018100', '21010000', '新民市');
INSERT INTO `td_area` VALUES ('21020000', '21000000', '大连市');
INSERT INTO `td_area` VALUES ('21020100', '21020000', '市辖区');
INSERT INTO `td_area` VALUES ('21020200', '21020000', '中山区');
INSERT INTO `td_area` VALUES ('21020300', '21020000', '西岗区');
INSERT INTO `td_area` VALUES ('21020400', '21020000', '沙河口区');
INSERT INTO `td_area` VALUES ('21021100', '21020000', '甘井子区');
INSERT INTO `td_area` VALUES ('21021200', '21020000', '旅顺口区');
INSERT INTO `td_area` VALUES ('21021300', '21020000', '金州区');
INSERT INTO `td_area` VALUES ('21022400', '21020000', '长海县');
INSERT INTO `td_area` VALUES ('21028100', '21020000', '瓦房店市');
INSERT INTO `td_area` VALUES ('21028200', '21020000', '普兰店市');
INSERT INTO `td_area` VALUES ('21028300', '21020000', '庄河市');
INSERT INTO `td_area` VALUES ('21030000', '21000000', '鞍山市');
INSERT INTO `td_area` VALUES ('21030100', '21030000', '市辖区');
INSERT INTO `td_area` VALUES ('21030200', '21030000', '铁东区');
INSERT INTO `td_area` VALUES ('21030300', '21030000', '铁西区');
INSERT INTO `td_area` VALUES ('21030400', '21030000', '立山区');
INSERT INTO `td_area` VALUES ('21031100', '21030000', '千山区');
INSERT INTO `td_area` VALUES ('21032100', '21030000', '台安县');
INSERT INTO `td_area` VALUES ('21032300', '21030000', '岫岩满族自治县');
INSERT INTO `td_area` VALUES ('21038100', '21030000', '海城市');
INSERT INTO `td_area` VALUES ('21040000', '21000000', '抚顺市');
INSERT INTO `td_area` VALUES ('21040100', '21040000', '市辖区');
INSERT INTO `td_area` VALUES ('21040200', '21040000', '新抚区');
INSERT INTO `td_area` VALUES ('21040300', '21040000', '东洲区');
INSERT INTO `td_area` VALUES ('21040400', '21040000', '望花区');
INSERT INTO `td_area` VALUES ('21041100', '21040000', '顺城区');
INSERT INTO `td_area` VALUES ('21042100', '21040000', '抚顺县');
INSERT INTO `td_area` VALUES ('21042200', '21040000', '新宾满族自治县');
INSERT INTO `td_area` VALUES ('21042300', '21040000', '清原满族自治县');
INSERT INTO `td_area` VALUES ('21050000', '21000000', '本溪市');
INSERT INTO `td_area` VALUES ('21050100', '21050000', '市辖区');
INSERT INTO `td_area` VALUES ('21050200', '21050000', '平山区');
INSERT INTO `td_area` VALUES ('21050300', '21050000', '溪湖区');
INSERT INTO `td_area` VALUES ('21050400', '21050000', '明山区');
INSERT INTO `td_area` VALUES ('21050500', '21050000', '南芬区');
INSERT INTO `td_area` VALUES ('21052100', '21050000', '本溪满族自治县');
INSERT INTO `td_area` VALUES ('21052200', '21050000', '桓仁满族自治县');
INSERT INTO `td_area` VALUES ('21060000', '21000000', '丹东市');
INSERT INTO `td_area` VALUES ('21060100', '21060000', '市辖区');
INSERT INTO `td_area` VALUES ('21060200', '21060000', '元宝区');
INSERT INTO `td_area` VALUES ('21060300', '21060000', '振兴区');
INSERT INTO `td_area` VALUES ('21060400', '21060000', '振安区');
INSERT INTO `td_area` VALUES ('21062400', '21060000', '宽甸满族自治县');
INSERT INTO `td_area` VALUES ('21068100', '21060000', '东港市');
INSERT INTO `td_area` VALUES ('21068200', '21060000', '凤城市');
INSERT INTO `td_area` VALUES ('21070000', '21000000', '锦州市');
INSERT INTO `td_area` VALUES ('21070100', '21070000', '市辖区');
INSERT INTO `td_area` VALUES ('21070200', '21070000', '古塔区');
INSERT INTO `td_area` VALUES ('21070300', '21070000', '凌河区');
INSERT INTO `td_area` VALUES ('21071100', '21070000', '太和区');
INSERT INTO `td_area` VALUES ('21072600', '21070000', '黑山县');
INSERT INTO `td_area` VALUES ('21072700', '21070000', '义　县');
INSERT INTO `td_area` VALUES ('21078100', '21070000', '凌海市');
INSERT INTO `td_area` VALUES ('21078200', '21070000', '北宁市');
INSERT INTO `td_area` VALUES ('21080000', '21000000', '营口市');
INSERT INTO `td_area` VALUES ('21080100', '21080000', '市辖区');
INSERT INTO `td_area` VALUES ('21080200', '21080000', '站前区');
INSERT INTO `td_area` VALUES ('21080300', '21080000', '西市区');
INSERT INTO `td_area` VALUES ('21080400', '21080000', '鲅鱼圈区');
INSERT INTO `td_area` VALUES ('21081100', '21080000', '老边区');
INSERT INTO `td_area` VALUES ('21088100', '21080000', '盖州市');
INSERT INTO `td_area` VALUES ('21088200', '21080000', '大石桥市');
INSERT INTO `td_area` VALUES ('21090000', '21000000', '阜新市');
INSERT INTO `td_area` VALUES ('21090100', '21090000', '市辖区');
INSERT INTO `td_area` VALUES ('21090200', '21090000', '海州区');
INSERT INTO `td_area` VALUES ('21090300', '21090000', '新邱区');
INSERT INTO `td_area` VALUES ('21090400', '21090000', '太平区');
INSERT INTO `td_area` VALUES ('21090500', '21090000', '清河门区');
INSERT INTO `td_area` VALUES ('21091100', '21090000', '细河区');
INSERT INTO `td_area` VALUES ('21092100', '21090000', '阜新蒙古族自治县');
INSERT INTO `td_area` VALUES ('21092200', '21090000', '彰武县');
INSERT INTO `td_area` VALUES ('21100000', '21000000', '辽阳市');
INSERT INTO `td_area` VALUES ('21100100', '21100000', '市辖区');
INSERT INTO `td_area` VALUES ('21100200', '21100000', '白塔区');
INSERT INTO `td_area` VALUES ('21100300', '21100000', '文圣区');
INSERT INTO `td_area` VALUES ('21100400', '21100000', '宏伟区');
INSERT INTO `td_area` VALUES ('21100500', '21100000', '弓长岭区');
INSERT INTO `td_area` VALUES ('21101100', '21100000', '太子河区');
INSERT INTO `td_area` VALUES ('21102100', '21100000', '辽阳县');
INSERT INTO `td_area` VALUES ('21108100', '21100000', '灯塔市');
INSERT INTO `td_area` VALUES ('21110000', '21000000', '盘锦市');
INSERT INTO `td_area` VALUES ('21110100', '21110000', '市辖区');
INSERT INTO `td_area` VALUES ('21110200', '21110000', '双台子区');
INSERT INTO `td_area` VALUES ('21110300', '21110000', '兴隆台区');
INSERT INTO `td_area` VALUES ('21112100', '21110000', '大洼县');
INSERT INTO `td_area` VALUES ('21112200', '21110000', '盘山县');
INSERT INTO `td_area` VALUES ('21120000', '21000000', '铁岭市');
INSERT INTO `td_area` VALUES ('21120100', '21120000', '市辖区');
INSERT INTO `td_area` VALUES ('21120200', '21120000', '银州区');
INSERT INTO `td_area` VALUES ('21120400', '21120000', '清河区');
INSERT INTO `td_area` VALUES ('21122100', '21120000', '铁岭县');
INSERT INTO `td_area` VALUES ('21122300', '21120000', '西丰县');
INSERT INTO `td_area` VALUES ('21122400', '21120000', '昌图县');
INSERT INTO `td_area` VALUES ('21128100', '21120000', '调兵山市');
INSERT INTO `td_area` VALUES ('21128200', '21120000', '开原市');
INSERT INTO `td_area` VALUES ('21130000', '21000000', '朝阳市');
INSERT INTO `td_area` VALUES ('21130100', '21130000', '市辖区');
INSERT INTO `td_area` VALUES ('21130200', '21130000', '双塔区');
INSERT INTO `td_area` VALUES ('21130300', '21130000', '龙城区');
INSERT INTO `td_area` VALUES ('21132100', '21130000', '朝阳县');
INSERT INTO `td_area` VALUES ('21132200', '21130000', '建平县');
INSERT INTO `td_area` VALUES ('21132400', '21130000', '喀喇沁左翼蒙古族自治县');
INSERT INTO `td_area` VALUES ('21138100', '21130000', '北票市');
INSERT INTO `td_area` VALUES ('21138200', '21130000', '凌源市');
INSERT INTO `td_area` VALUES ('21140000', '21000000', '葫芦岛市');
INSERT INTO `td_area` VALUES ('21140100', '21140000', '市辖区');
INSERT INTO `td_area` VALUES ('21140200', '21140000', '连山区');
INSERT INTO `td_area` VALUES ('21140300', '21140000', '龙港区');
INSERT INTO `td_area` VALUES ('21140400', '21140000', '南票区');
INSERT INTO `td_area` VALUES ('21142100', '21140000', '绥中县');
INSERT INTO `td_area` VALUES ('21142200', '21140000', '建昌县');
INSERT INTO `td_area` VALUES ('21148100', '21140000', '兴城市');
INSERT INTO `td_area` VALUES ('22000000', '0', '吉林省');
INSERT INTO `td_area` VALUES ('22010000', '22000000', '长春市');
INSERT INTO `td_area` VALUES ('22010100', '22010000', '市辖区');
INSERT INTO `td_area` VALUES ('22010200', '22010000', '南关区');
INSERT INTO `td_area` VALUES ('22010300', '22010000', '宽城区');
INSERT INTO `td_area` VALUES ('22010400', '22010000', '朝阳区');
INSERT INTO `td_area` VALUES ('22010500', '22010000', '二道区');
INSERT INTO `td_area` VALUES ('22010600', '22010000', '绿园区');
INSERT INTO `td_area` VALUES ('22011200', '22010000', '双阳区');
INSERT INTO `td_area` VALUES ('22012200', '22010000', '农安县');
INSERT INTO `td_area` VALUES ('22018100', '22010000', '九台市');
INSERT INTO `td_area` VALUES ('22018200', '22010000', '榆树市');
INSERT INTO `td_area` VALUES ('22018300', '22010000', '德惠市');
INSERT INTO `td_area` VALUES ('22020000', '22000000', '吉林市');
INSERT INTO `td_area` VALUES ('22020100', '22020000', '市辖区');
INSERT INTO `td_area` VALUES ('22020200', '22020000', '昌邑区');
INSERT INTO `td_area` VALUES ('22020300', '22020000', '龙潭区');
INSERT INTO `td_area` VALUES ('22020400', '22020000', '船营区');
INSERT INTO `td_area` VALUES ('22021100', '22020000', '丰满区');
INSERT INTO `td_area` VALUES ('22022100', '22020000', '永吉县');
INSERT INTO `td_area` VALUES ('22028100', '22020000', '蛟河市');
INSERT INTO `td_area` VALUES ('22028200', '22020000', '桦甸市');
INSERT INTO `td_area` VALUES ('22028300', '22020000', '舒兰市');
INSERT INTO `td_area` VALUES ('22028400', '22020000', '磐石市');
INSERT INTO `td_area` VALUES ('22030000', '22000000', '四平市');
INSERT INTO `td_area` VALUES ('22030100', '22030000', '市辖区');
INSERT INTO `td_area` VALUES ('22030200', '22030000', '铁西区');
INSERT INTO `td_area` VALUES ('22030300', '22030000', '铁东区');
INSERT INTO `td_area` VALUES ('22032200', '22030000', '梨树县');
INSERT INTO `td_area` VALUES ('22032300', '22030000', '伊通满族自治县');
INSERT INTO `td_area` VALUES ('22038100', '22030000', '公主岭市');
INSERT INTO `td_area` VALUES ('22038200', '22030000', '双辽市');
INSERT INTO `td_area` VALUES ('22040000', '22000000', '辽源市');
INSERT INTO `td_area` VALUES ('22040100', '22040000', '市辖区');
INSERT INTO `td_area` VALUES ('22040200', '22040000', '龙山区');
INSERT INTO `td_area` VALUES ('22040300', '22040000', '西安区');
INSERT INTO `td_area` VALUES ('22042100', '22040000', '东丰县');
INSERT INTO `td_area` VALUES ('22042200', '22040000', '东辽县');
INSERT INTO `td_area` VALUES ('22050000', '22000000', '通化市');
INSERT INTO `td_area` VALUES ('22050100', '22050000', '市辖区');
INSERT INTO `td_area` VALUES ('22050200', '22050000', '东昌区');
INSERT INTO `td_area` VALUES ('22050300', '22050000', '二道江区');
INSERT INTO `td_area` VALUES ('22052100', '22050000', '通化县');
INSERT INTO `td_area` VALUES ('22052300', '22050000', '辉南县');
INSERT INTO `td_area` VALUES ('22052400', '22050000', '柳河县');
INSERT INTO `td_area` VALUES ('22058100', '22050000', '梅河口市');
INSERT INTO `td_area` VALUES ('22058200', '22050000', '集安市');
INSERT INTO `td_area` VALUES ('22060000', '22000000', '白山市');
INSERT INTO `td_area` VALUES ('22060100', '22060000', '市辖区');
INSERT INTO `td_area` VALUES ('22060200', '22060000', '八道江区');
INSERT INTO `td_area` VALUES ('22062100', '22060000', '抚松县');
INSERT INTO `td_area` VALUES ('22062200', '22060000', '靖宇县');
INSERT INTO `td_area` VALUES ('22062300', '22060000', '长白朝鲜族自治县');
INSERT INTO `td_area` VALUES ('22062500', '22060000', '江源县');
INSERT INTO `td_area` VALUES ('22068100', '22060000', '临江市');
INSERT INTO `td_area` VALUES ('22070000', '22000000', '松原市');
INSERT INTO `td_area` VALUES ('22070100', '22070000', '市辖区');
INSERT INTO `td_area` VALUES ('22070200', '22070000', '宁江区');
INSERT INTO `td_area` VALUES ('22072100', '22070000', '前郭尔罗斯蒙古族自治县');
INSERT INTO `td_area` VALUES ('22072200', '22070000', '长岭县');
INSERT INTO `td_area` VALUES ('22072300', '22070000', '乾安县');
INSERT INTO `td_area` VALUES ('22072400', '22070000', '扶余县');
INSERT INTO `td_area` VALUES ('22080000', '22000000', '白城市');
INSERT INTO `td_area` VALUES ('22080100', '22080000', '市辖区');
INSERT INTO `td_area` VALUES ('22080200', '22080000', '洮北区');
INSERT INTO `td_area` VALUES ('22082100', '22080000', '镇赉县');
INSERT INTO `td_area` VALUES ('22082200', '22080000', '通榆县');
INSERT INTO `td_area` VALUES ('22088100', '22080000', '洮南市');
INSERT INTO `td_area` VALUES ('22088200', '22080000', '大安市');
INSERT INTO `td_area` VALUES ('22240000', '22000000', '延边朝鲜族自治州');
INSERT INTO `td_area` VALUES ('22240100', '22240000', '延吉市');
INSERT INTO `td_area` VALUES ('22240200', '22240000', '图们市');
INSERT INTO `td_area` VALUES ('22240300', '22240000', '敦化市');
INSERT INTO `td_area` VALUES ('22240400', '22240000', '珲春市');
INSERT INTO `td_area` VALUES ('22240500', '22240000', '龙井市');
INSERT INTO `td_area` VALUES ('22240600', '22240000', '和龙市');
INSERT INTO `td_area` VALUES ('22242400', '22240000', '汪清县');
INSERT INTO `td_area` VALUES ('22242600', '22240000', '安图县');
INSERT INTO `td_area` VALUES ('23000000', '0', '黑龙江省');
INSERT INTO `td_area` VALUES ('23010000', '23000000', '哈尔滨市');
INSERT INTO `td_area` VALUES ('23010100', '23010000', '市辖区');
INSERT INTO `td_area` VALUES ('23010200', '23010000', '道里区');
INSERT INTO `td_area` VALUES ('23010300', '23010000', '南岗区');
INSERT INTO `td_area` VALUES ('23010400', '23010000', '道外区');
INSERT INTO `td_area` VALUES ('23010600', '23010000', '香坊区');
INSERT INTO `td_area` VALUES ('23010700', '23010000', '动力区');
INSERT INTO `td_area` VALUES ('23010800', '23010000', '平房区');
INSERT INTO `td_area` VALUES ('23010900', '23010000', '松北区');
INSERT INTO `td_area` VALUES ('23011100', '23010000', '呼兰区');
INSERT INTO `td_area` VALUES ('23012300', '23010000', '依兰县');
INSERT INTO `td_area` VALUES ('23012400', '23010000', '方正县');
INSERT INTO `td_area` VALUES ('23012500', '23010000', '宾　县');
INSERT INTO `td_area` VALUES ('23012600', '23010000', '巴彦县');
INSERT INTO `td_area` VALUES ('23012700', '23010000', '木兰县');
INSERT INTO `td_area` VALUES ('23012800', '23010000', '通河县');
INSERT INTO `td_area` VALUES ('23012900', '23010000', '延寿县');
INSERT INTO `td_area` VALUES ('23018100', '23010000', '阿城市');
INSERT INTO `td_area` VALUES ('23018200', '23010000', '双城市');
INSERT INTO `td_area` VALUES ('23018300', '23010000', '尚志市');
INSERT INTO `td_area` VALUES ('23018400', '23010000', '五常市');
INSERT INTO `td_area` VALUES ('23020000', '23000000', '齐齐哈尔市');
INSERT INTO `td_area` VALUES ('23020100', '23020000', '市辖区');
INSERT INTO `td_area` VALUES ('23020200', '23020000', '龙沙区');
INSERT INTO `td_area` VALUES ('23020300', '23020000', '建华区');
INSERT INTO `td_area` VALUES ('23020400', '23020000', '铁锋区');
INSERT INTO `td_area` VALUES ('23020500', '23020000', '昂昂溪区');
INSERT INTO `td_area` VALUES ('23020600', '23020000', '富拉尔基区');
INSERT INTO `td_area` VALUES ('23020700', '23020000', '碾子山区');
INSERT INTO `td_area` VALUES ('23020800', '23020000', '梅里斯达斡尔族区');
INSERT INTO `td_area` VALUES ('23022100', '23020000', '龙江县');
INSERT INTO `td_area` VALUES ('23022300', '23020000', '依安县');
INSERT INTO `td_area` VALUES ('23022400', '23020000', '泰来县');
INSERT INTO `td_area` VALUES ('23022500', '23020000', '甘南县');
INSERT INTO `td_area` VALUES ('23022700', '23020000', '富裕县');
INSERT INTO `td_area` VALUES ('23022900', '23020000', '克山县');
INSERT INTO `td_area` VALUES ('23023000', '23020000', '克东县');
INSERT INTO `td_area` VALUES ('23023100', '23020000', '拜泉县');
INSERT INTO `td_area` VALUES ('23028100', '23020000', '讷河市');
INSERT INTO `td_area` VALUES ('23030000', '23000000', '鸡西市');
INSERT INTO `td_area` VALUES ('23030100', '23030000', '市辖区');
INSERT INTO `td_area` VALUES ('23030200', '23030000', '鸡冠区');
INSERT INTO `td_area` VALUES ('23030300', '23030000', '恒山区');
INSERT INTO `td_area` VALUES ('23030400', '23030000', '滴道区');
INSERT INTO `td_area` VALUES ('23030500', '23030000', '梨树区');
INSERT INTO `td_area` VALUES ('23030600', '23030000', '城子河区');
INSERT INTO `td_area` VALUES ('23030700', '23030000', '麻山区');
INSERT INTO `td_area` VALUES ('23032100', '23030000', '鸡东县');
INSERT INTO `td_area` VALUES ('23038100', '23030000', '虎林市');
INSERT INTO `td_area` VALUES ('23038200', '23030000', '密山市');
INSERT INTO `td_area` VALUES ('23040000', '23000000', '鹤岗市');
INSERT INTO `td_area` VALUES ('23040100', '23040000', '市辖区');
INSERT INTO `td_area` VALUES ('23040200', '23040000', '向阳区');
INSERT INTO `td_area` VALUES ('23040300', '23040000', '工农区');
INSERT INTO `td_area` VALUES ('23040400', '23040000', '南山区');
INSERT INTO `td_area` VALUES ('23040500', '23040000', '兴安区');
INSERT INTO `td_area` VALUES ('23040600', '23040000', '东山区');
INSERT INTO `td_area` VALUES ('23040700', '23040000', '兴山区');
INSERT INTO `td_area` VALUES ('23042100', '23040000', '萝北县');
INSERT INTO `td_area` VALUES ('23042200', '23040000', '绥滨县');
INSERT INTO `td_area` VALUES ('23050000', '23000000', '双鸭山市');
INSERT INTO `td_area` VALUES ('23050100', '23050000', '市辖区');
INSERT INTO `td_area` VALUES ('23050200', '23050000', '尖山区');
INSERT INTO `td_area` VALUES ('23050300', '23050000', '岭东区');
INSERT INTO `td_area` VALUES ('23050500', '23050000', '四方台区');
INSERT INTO `td_area` VALUES ('23050600', '23050000', '宝山区');
INSERT INTO `td_area` VALUES ('23052100', '23050000', '集贤县');
INSERT INTO `td_area` VALUES ('23052200', '23050000', '友谊县');
INSERT INTO `td_area` VALUES ('23052300', '23050000', '宝清县');
INSERT INTO `td_area` VALUES ('23052400', '23050000', '饶河县');
INSERT INTO `td_area` VALUES ('23060000', '23000000', '大庆市');
INSERT INTO `td_area` VALUES ('23060100', '23060000', '市辖区');
INSERT INTO `td_area` VALUES ('23060200', '23060000', '萨尔图区');
INSERT INTO `td_area` VALUES ('23060300', '23060000', '龙凤区');
INSERT INTO `td_area` VALUES ('23060400', '23060000', '让胡路区');
INSERT INTO `td_area` VALUES ('23060500', '23060000', '红岗区');
INSERT INTO `td_area` VALUES ('23060600', '23060000', '大同区');
INSERT INTO `td_area` VALUES ('23062100', '23060000', '肇州县');
INSERT INTO `td_area` VALUES ('23062200', '23060000', '肇源县');
INSERT INTO `td_area` VALUES ('23062300', '23060000', '林甸县');
INSERT INTO `td_area` VALUES ('23062400', '23060000', '杜尔伯特蒙古族自治县');
INSERT INTO `td_area` VALUES ('23070000', '23000000', '伊春市');
INSERT INTO `td_area` VALUES ('23070100', '23070000', '市辖区');
INSERT INTO `td_area` VALUES ('23070200', '23070000', '伊春区');
INSERT INTO `td_area` VALUES ('23070300', '23070000', '南岔区');
INSERT INTO `td_area` VALUES ('23070400', '23070000', '友好区');
INSERT INTO `td_area` VALUES ('23070500', '23070000', '西林区');
INSERT INTO `td_area` VALUES ('23070600', '23070000', '翠峦区');
INSERT INTO `td_area` VALUES ('23070700', '23070000', '新青区');
INSERT INTO `td_area` VALUES ('23070800', '23070000', '美溪区');
INSERT INTO `td_area` VALUES ('23070900', '23070000', '金山屯区');
INSERT INTO `td_area` VALUES ('23071000', '23070000', '五营区');
INSERT INTO `td_area` VALUES ('23071100', '23070000', '乌马河区');
INSERT INTO `td_area` VALUES ('23071200', '23070000', '汤旺河区');
INSERT INTO `td_area` VALUES ('23071300', '23070000', '带岭区');
INSERT INTO `td_area` VALUES ('23071400', '23070000', '乌伊岭区');
INSERT INTO `td_area` VALUES ('23071500', '23070000', '红星区');
INSERT INTO `td_area` VALUES ('23071600', '23070000', '上甘岭区');
INSERT INTO `td_area` VALUES ('23072200', '23070000', '嘉荫县');
INSERT INTO `td_area` VALUES ('23078100', '23070000', '铁力市');
INSERT INTO `td_area` VALUES ('23080000', '23000000', '佳木斯市');
INSERT INTO `td_area` VALUES ('23080100', '23080000', '市辖区');
INSERT INTO `td_area` VALUES ('23080200', '23080000', '永红区');
INSERT INTO `td_area` VALUES ('23080300', '23080000', '向阳区');
INSERT INTO `td_area` VALUES ('23080400', '23080000', '前进区');
INSERT INTO `td_area` VALUES ('23080500', '23080000', '东风区');
INSERT INTO `td_area` VALUES ('23081100', '23080000', '郊　区');
INSERT INTO `td_area` VALUES ('23082200', '23080000', '桦南县');
INSERT INTO `td_area` VALUES ('23082600', '23080000', '桦川县');
INSERT INTO `td_area` VALUES ('23082800', '23080000', '汤原县');
INSERT INTO `td_area` VALUES ('23083300', '23080000', '抚远县');
INSERT INTO `td_area` VALUES ('23088100', '23080000', '同江市');
INSERT INTO `td_area` VALUES ('23088200', '23080000', '富锦市');
INSERT INTO `td_area` VALUES ('23090000', '23000000', '七台河市');
INSERT INTO `td_area` VALUES ('23090100', '23090000', '市辖区');
INSERT INTO `td_area` VALUES ('23090200', '23090000', '新兴区');
INSERT INTO `td_area` VALUES ('23090300', '23090000', '桃山区');
INSERT INTO `td_area` VALUES ('23090400', '23090000', '茄子河区');
INSERT INTO `td_area` VALUES ('23092100', '23090000', '勃利县');
INSERT INTO `td_area` VALUES ('23100000', '23000000', '牡丹江市');
INSERT INTO `td_area` VALUES ('23100100', '23100000', '市辖区');
INSERT INTO `td_area` VALUES ('23100200', '23100000', '东安区');
INSERT INTO `td_area` VALUES ('23100300', '23100000', '阳明区');
INSERT INTO `td_area` VALUES ('23100400', '23100000', '爱民区');
INSERT INTO `td_area` VALUES ('23100500', '23100000', '西安区');
INSERT INTO `td_area` VALUES ('23102400', '23100000', '东宁县');
INSERT INTO `td_area` VALUES ('23102500', '23100000', '林口县');
INSERT INTO `td_area` VALUES ('23108100', '23100000', '绥芬河市');
INSERT INTO `td_area` VALUES ('23108300', '23100000', '海林市');
INSERT INTO `td_area` VALUES ('23108400', '23100000', '宁安市');
INSERT INTO `td_area` VALUES ('23108500', '23100000', '穆棱市');
INSERT INTO `td_area` VALUES ('23110000', '23000000', '黑河市');
INSERT INTO `td_area` VALUES ('23110100', '23110000', '市辖区');
INSERT INTO `td_area` VALUES ('23110200', '23110000', '爱辉区');
INSERT INTO `td_area` VALUES ('23112100', '23110000', '嫩江县');
INSERT INTO `td_area` VALUES ('23112300', '23110000', '逊克县');
INSERT INTO `td_area` VALUES ('23112400', '23110000', '孙吴县');
INSERT INTO `td_area` VALUES ('23118100', '23110000', '北安市');
INSERT INTO `td_area` VALUES ('23118200', '23110000', '五大连池市');
INSERT INTO `td_area` VALUES ('23120000', '23000000', '绥化市');
INSERT INTO `td_area` VALUES ('23120100', '23120000', '市辖区');
INSERT INTO `td_area` VALUES ('23120200', '23120000', '北林区');
INSERT INTO `td_area` VALUES ('23122100', '23120000', '望奎县');
INSERT INTO `td_area` VALUES ('23122200', '23120000', '兰西县');
INSERT INTO `td_area` VALUES ('23122300', '23120000', '青冈县');
INSERT INTO `td_area` VALUES ('23122400', '23120000', '庆安县');
INSERT INTO `td_area` VALUES ('23122500', '23120000', '明水县');
INSERT INTO `td_area` VALUES ('23122600', '23120000', '绥棱县');
INSERT INTO `td_area` VALUES ('23128100', '23120000', '安达市');
INSERT INTO `td_area` VALUES ('23128200', '23120000', '肇东市');
INSERT INTO `td_area` VALUES ('23128300', '23120000', '海伦市');
INSERT INTO `td_area` VALUES ('23270000', '23000000', '大兴安岭地区');
INSERT INTO `td_area` VALUES ('23272100', '23270000', '呼玛县');
INSERT INTO `td_area` VALUES ('23272200', '23270000', '塔河县');
INSERT INTO `td_area` VALUES ('23272300', '23270000', '漠河县');
INSERT INTO `td_area` VALUES ('31000000', '0', '上海市');
INSERT INTO `td_area` VALUES ('31010000', '31000000', '市辖区');
INSERT INTO `td_area` VALUES ('31010100', '31010000', '黄浦区');
INSERT INTO `td_area` VALUES ('31010300', '31010000', '卢湾区');
INSERT INTO `td_area` VALUES ('31010400', '31010000', '徐汇区');
INSERT INTO `td_area` VALUES ('31010500', '31010000', '长宁区');
INSERT INTO `td_area` VALUES ('31010600', '31010000', '静安区');
INSERT INTO `td_area` VALUES ('31010700', '31010000', '普陀区');
INSERT INTO `td_area` VALUES ('31010800', '31010000', '闸北区');
INSERT INTO `td_area` VALUES ('31010900', '31010000', '虹口区');
INSERT INTO `td_area` VALUES ('31011000', '31010000', '杨浦区');
INSERT INTO `td_area` VALUES ('31011200', '31010000', '闵行区');
INSERT INTO `td_area` VALUES ('31011300', '31010000', '宝山区');
INSERT INTO `td_area` VALUES ('31011400', '31010000', '嘉定区');
INSERT INTO `td_area` VALUES ('31011500', '31010000', '浦东新区');
INSERT INTO `td_area` VALUES ('31011600', '31010000', '金山区');
INSERT INTO `td_area` VALUES ('31011700', '31010000', '松江区');
INSERT INTO `td_area` VALUES ('31011800', '31010000', '青浦区');
INSERT INTO `td_area` VALUES ('31011900', '31010000', '南汇区');
INSERT INTO `td_area` VALUES ('31012000', '31010000', '奉贤区');
INSERT INTO `td_area` VALUES ('31020000', '31000000', '县');
INSERT INTO `td_area` VALUES ('31023000', '31020000', '崇明县');
INSERT INTO `td_area` VALUES ('32000000', '0', '江苏省');
INSERT INTO `td_area` VALUES ('32010000', '32000000', '南京市');
INSERT INTO `td_area` VALUES ('32010100', '32010000', '市辖区');
INSERT INTO `td_area` VALUES ('32010200', '32010000', '玄武区');
INSERT INTO `td_area` VALUES ('32010300', '32010000', '白下区');
INSERT INTO `td_area` VALUES ('32010400', '32010000', '秦淮区');
INSERT INTO `td_area` VALUES ('32010500', '32010000', '建邺区');
INSERT INTO `td_area` VALUES ('32010600', '32010000', '鼓楼区');
INSERT INTO `td_area` VALUES ('32010700', '32010000', '下关区');
INSERT INTO `td_area` VALUES ('32011100', '32010000', '浦口区');
INSERT INTO `td_area` VALUES ('32011300', '32010000', '栖霞区');
INSERT INTO `td_area` VALUES ('32011400', '32010000', '雨花台区');
INSERT INTO `td_area` VALUES ('32011500', '32010000', '江宁区');
INSERT INTO `td_area` VALUES ('32011600', '32010000', '六合区');
INSERT INTO `td_area` VALUES ('32012400', '32010000', '溧水县');
INSERT INTO `td_area` VALUES ('32012500', '32010000', '高淳县');
INSERT INTO `td_area` VALUES ('32020000', '32000000', '无锡市');
INSERT INTO `td_area` VALUES ('32020100', '32020000', '市辖区');
INSERT INTO `td_area` VALUES ('32020200', '32020000', '崇安区');
INSERT INTO `td_area` VALUES ('32020300', '32020000', '南长区');
INSERT INTO `td_area` VALUES ('32020400', '32020000', '北塘区');
INSERT INTO `td_area` VALUES ('32020500', '32020000', '锡山区');
INSERT INTO `td_area` VALUES ('32020600', '32020000', '惠山区');
INSERT INTO `td_area` VALUES ('32021100', '32020000', '滨湖区');
INSERT INTO `td_area` VALUES ('32028100', '32020000', '江阴市');
INSERT INTO `td_area` VALUES ('32028200', '32020000', '宜兴市');
INSERT INTO `td_area` VALUES ('32030000', '32000000', '徐州市');
INSERT INTO `td_area` VALUES ('32030100', '32030000', '市辖区');
INSERT INTO `td_area` VALUES ('32030200', '32030000', '鼓楼区');
INSERT INTO `td_area` VALUES ('32030300', '32030000', '云龙区');
INSERT INTO `td_area` VALUES ('32030400', '32030000', '九里区');
INSERT INTO `td_area` VALUES ('32030500', '32030000', '贾汪区');
INSERT INTO `td_area` VALUES ('32031100', '32030000', '泉山区');
INSERT INTO `td_area` VALUES ('32032100', '32030000', '丰　县');
INSERT INTO `td_area` VALUES ('32032200', '32030000', '沛　县');
INSERT INTO `td_area` VALUES ('32032300', '32030000', '铜山县');
INSERT INTO `td_area` VALUES ('32032400', '32030000', '睢宁县');
INSERT INTO `td_area` VALUES ('32038100', '32030000', '新沂市');
INSERT INTO `td_area` VALUES ('32038200', '32030000', '邳州市');
INSERT INTO `td_area` VALUES ('32040000', '32000000', '常州市');
INSERT INTO `td_area` VALUES ('32040100', '32040000', '市辖区');
INSERT INTO `td_area` VALUES ('32040200', '32040000', '天宁区');
INSERT INTO `td_area` VALUES ('32040400', '32040000', '钟楼区');
INSERT INTO `td_area` VALUES ('32040500', '32040000', '戚墅堰区');
INSERT INTO `td_area` VALUES ('32041100', '32040000', '新北区');
INSERT INTO `td_area` VALUES ('32041200', '32040000', '武进区');
INSERT INTO `td_area` VALUES ('32048100', '32040000', '溧阳市');
INSERT INTO `td_area` VALUES ('32048200', '32040000', '金坛市');
INSERT INTO `td_area` VALUES ('32050000', '32000000', '苏州市');
INSERT INTO `td_area` VALUES ('32050100', '32050000', '市辖区');
INSERT INTO `td_area` VALUES ('32050200', '32050000', '沧浪区');
INSERT INTO `td_area` VALUES ('32050300', '32050000', '平江区');
INSERT INTO `td_area` VALUES ('32050400', '32050000', '金阊区');
INSERT INTO `td_area` VALUES ('32050500', '32050000', '虎丘区');
INSERT INTO `td_area` VALUES ('32050600', '32050000', '吴中区');
INSERT INTO `td_area` VALUES ('32050700', '32050000', '相城区');
INSERT INTO `td_area` VALUES ('32058100', '32050000', '常熟市');
INSERT INTO `td_area` VALUES ('32058200', '32050000', '张家港市');
INSERT INTO `td_area` VALUES ('32058300', '32050000', '昆山市');
INSERT INTO `td_area` VALUES ('32058400', '32050000', '吴江市');
INSERT INTO `td_area` VALUES ('32058500', '32050000', '太仓市');
INSERT INTO `td_area` VALUES ('32060000', '32000000', '南通市');
INSERT INTO `td_area` VALUES ('32060100', '32060000', '市辖区');
INSERT INTO `td_area` VALUES ('32060200', '32060000', '崇川区');
INSERT INTO `td_area` VALUES ('32061100', '32060000', '港闸区');
INSERT INTO `td_area` VALUES ('32062100', '32060000', '海安县');
INSERT INTO `td_area` VALUES ('32062300', '32060000', '如东县');
INSERT INTO `td_area` VALUES ('32068100', '32060000', '启东市');
INSERT INTO `td_area` VALUES ('32068200', '32060000', '如皋市');
INSERT INTO `td_area` VALUES ('32068300', '32060000', '通州市');
INSERT INTO `td_area` VALUES ('32068400', '32060000', '海门市');
INSERT INTO `td_area` VALUES ('32070000', '32000000', '连云港市');
INSERT INTO `td_area` VALUES ('32070100', '32070000', '市辖区');
INSERT INTO `td_area` VALUES ('32070300', '32070000', '连云区');
INSERT INTO `td_area` VALUES ('32070500', '32070000', '新浦区');
INSERT INTO `td_area` VALUES ('32070600', '32070000', '海州区');
INSERT INTO `td_area` VALUES ('32072100', '32070000', '赣榆县');
INSERT INTO `td_area` VALUES ('32072200', '32070000', '东海县');
INSERT INTO `td_area` VALUES ('32072300', '32070000', '灌云县');
INSERT INTO `td_area` VALUES ('32072400', '32070000', '灌南县');
INSERT INTO `td_area` VALUES ('32080000', '32000000', '淮安市');
INSERT INTO `td_area` VALUES ('32080100', '32080000', '市辖区');
INSERT INTO `td_area` VALUES ('32080200', '32080000', '清河区');
INSERT INTO `td_area` VALUES ('32080300', '32080000', '楚州区');
INSERT INTO `td_area` VALUES ('32080400', '32080000', '淮阴区');
INSERT INTO `td_area` VALUES ('32081100', '32080000', '清浦区');
INSERT INTO `td_area` VALUES ('32082600', '32080000', '涟水县');
INSERT INTO `td_area` VALUES ('32082900', '32080000', '洪泽县');
INSERT INTO `td_area` VALUES ('32083000', '32080000', '盱眙县');
INSERT INTO `td_area` VALUES ('32083100', '32080000', '金湖县');
INSERT INTO `td_area` VALUES ('32090000', '32000000', '盐城市');
INSERT INTO `td_area` VALUES ('32090100', '32090000', '市辖区');
INSERT INTO `td_area` VALUES ('32090200', '32090000', '亭湖区');
INSERT INTO `td_area` VALUES ('32090300', '32090000', '盐都区');
INSERT INTO `td_area` VALUES ('32092100', '32090000', '响水县');
INSERT INTO `td_area` VALUES ('32092200', '32090000', '滨海县');
INSERT INTO `td_area` VALUES ('32092300', '32090000', '阜宁县');
INSERT INTO `td_area` VALUES ('32092400', '32090000', '射阳县');
INSERT INTO `td_area` VALUES ('32092500', '32090000', '建湖县');
INSERT INTO `td_area` VALUES ('32098100', '32090000', '东台市');
INSERT INTO `td_area` VALUES ('32098200', '32090000', '大丰市');
INSERT INTO `td_area` VALUES ('32100000', '32000000', '扬州市');
INSERT INTO `td_area` VALUES ('32100100', '32100000', '市辖区');
INSERT INTO `td_area` VALUES ('32100200', '32100000', '广陵区');
INSERT INTO `td_area` VALUES ('32100300', '32100000', '邗江区');
INSERT INTO `td_area` VALUES ('32101100', '32100000', '郊　区');
INSERT INTO `td_area` VALUES ('32102300', '32100000', '宝应县');
INSERT INTO `td_area` VALUES ('32108100', '32100000', '仪征市');
INSERT INTO `td_area` VALUES ('32108400', '32100000', '高邮市');
INSERT INTO `td_area` VALUES ('32108800', '32100000', '江都市');
INSERT INTO `td_area` VALUES ('32110000', '32000000', '镇江市');
INSERT INTO `td_area` VALUES ('32110100', '32110000', '市辖区');
INSERT INTO `td_area` VALUES ('32110200', '32110000', '京口区');
INSERT INTO `td_area` VALUES ('32111100', '32110000', '润州区');
INSERT INTO `td_area` VALUES ('32111200', '32110000', '丹徒区');
INSERT INTO `td_area` VALUES ('32118100', '32110000', '丹阳市');
INSERT INTO `td_area` VALUES ('32118200', '32110000', '扬中市');
INSERT INTO `td_area` VALUES ('32118300', '32110000', '句容市');
INSERT INTO `td_area` VALUES ('32120000', '32000000', '泰州市');
INSERT INTO `td_area` VALUES ('32120100', '32120000', '市辖区');
INSERT INTO `td_area` VALUES ('32120200', '32120000', '海陵区');
INSERT INTO `td_area` VALUES ('32120300', '32120000', '高港区');
INSERT INTO `td_area` VALUES ('32128100', '32120000', '兴化市');
INSERT INTO `td_area` VALUES ('32128200', '32120000', '靖江市');
INSERT INTO `td_area` VALUES ('32128300', '32120000', '泰兴市');
INSERT INTO `td_area` VALUES ('32128400', '32120000', '姜堰市');
INSERT INTO `td_area` VALUES ('32130000', '32000000', '宿迁市');
INSERT INTO `td_area` VALUES ('32130100', '32130000', '市辖区');
INSERT INTO `td_area` VALUES ('32130200', '32130000', '宿城区');
INSERT INTO `td_area` VALUES ('32131100', '32130000', '宿豫区');
INSERT INTO `td_area` VALUES ('32132200', '32130000', '沭阳县');
INSERT INTO `td_area` VALUES ('32132300', '32130000', '泗阳县');
INSERT INTO `td_area` VALUES ('32132400', '32130000', '泗洪县');
INSERT INTO `td_area` VALUES ('33000000', '0', '浙江省');
INSERT INTO `td_area` VALUES ('33010000', '33000000', '杭州市');
INSERT INTO `td_area` VALUES ('33010100', '33010000', '市辖区');
INSERT INTO `td_area` VALUES ('33010200', '33010000', '上城区');
INSERT INTO `td_area` VALUES ('33010300', '33010000', '下城区');
INSERT INTO `td_area` VALUES ('33010400', '33010000', '江干区');
INSERT INTO `td_area` VALUES ('33010500', '33010000', '拱墅区');
INSERT INTO `td_area` VALUES ('33010600', '33010000', '西湖区');
INSERT INTO `td_area` VALUES ('33010800', '33010000', '滨江区');
INSERT INTO `td_area` VALUES ('33010900', '33010000', '萧山区');
INSERT INTO `td_area` VALUES ('33011000', '33010000', '余杭区');
INSERT INTO `td_area` VALUES ('33012200', '33010000', '桐庐县');
INSERT INTO `td_area` VALUES ('33012700', '33010000', '淳安县');
INSERT INTO `td_area` VALUES ('33018200', '33010000', '建德市');
INSERT INTO `td_area` VALUES ('33018300', '33010000', '富阳市');
INSERT INTO `td_area` VALUES ('33018500', '33010000', '临安市');
INSERT INTO `td_area` VALUES ('33020000', '33000000', '宁波市');
INSERT INTO `td_area` VALUES ('33020100', '33020000', '市辖区');
INSERT INTO `td_area` VALUES ('33020300', '33020000', '海曙区');
INSERT INTO `td_area` VALUES ('33020400', '33020000', '江东区');
INSERT INTO `td_area` VALUES ('33020500', '33020000', '江北区');
INSERT INTO `td_area` VALUES ('33020600', '33020000', '北仑区');
INSERT INTO `td_area` VALUES ('33021100', '33020000', '镇海区');
INSERT INTO `td_area` VALUES ('33021200', '33020000', '鄞州区');
INSERT INTO `td_area` VALUES ('33022500', '33020000', '象山县');
INSERT INTO `td_area` VALUES ('33022600', '33020000', '宁海县');
INSERT INTO `td_area` VALUES ('33028100', '33020000', '余姚市');
INSERT INTO `td_area` VALUES ('33028200', '33020000', '慈溪市');
INSERT INTO `td_area` VALUES ('33028300', '33020000', '奉化市');
INSERT INTO `td_area` VALUES ('33030000', '33000000', '温州市');
INSERT INTO `td_area` VALUES ('33030100', '33030000', '市辖区');
INSERT INTO `td_area` VALUES ('33030200', '33030000', '鹿城区');
INSERT INTO `td_area` VALUES ('33030300', '33030000', '龙湾区');
INSERT INTO `td_area` VALUES ('33030400', '33030000', '瓯海区');
INSERT INTO `td_area` VALUES ('33032200', '33030000', '洞头县');
INSERT INTO `td_area` VALUES ('33032400', '33030000', '永嘉县');
INSERT INTO `td_area` VALUES ('33032600', '33030000', '平阳县');
INSERT INTO `td_area` VALUES ('33032700', '33030000', '苍南县');
INSERT INTO `td_area` VALUES ('33032800', '33030000', '文成县');
INSERT INTO `td_area` VALUES ('33032900', '33030000', '泰顺县');
INSERT INTO `td_area` VALUES ('33038100', '33030000', '瑞安市');
INSERT INTO `td_area` VALUES ('33038200', '33030000', '乐清市');
INSERT INTO `td_area` VALUES ('33040000', '33000000', '嘉兴市');
INSERT INTO `td_area` VALUES ('33040100', '33040000', '市辖区');
INSERT INTO `td_area` VALUES ('33040200', '33040000', '秀城区');
INSERT INTO `td_area` VALUES ('33041100', '33040000', '秀洲区');
INSERT INTO `td_area` VALUES ('33042100', '33040000', '嘉善县');
INSERT INTO `td_area` VALUES ('33042400', '33040000', '海盐县');
INSERT INTO `td_area` VALUES ('33048100', '33040000', '海宁市');
INSERT INTO `td_area` VALUES ('33048200', '33040000', '平湖市');
INSERT INTO `td_area` VALUES ('33048300', '33040000', '桐乡市');
INSERT INTO `td_area` VALUES ('33050000', '33000000', '湖州市');
INSERT INTO `td_area` VALUES ('33050100', '33050000', '市辖区');
INSERT INTO `td_area` VALUES ('33050200', '33050000', '吴兴区');
INSERT INTO `td_area` VALUES ('33050300', '33050000', '南浔区');
INSERT INTO `td_area` VALUES ('33052100', '33050000', '德清县');
INSERT INTO `td_area` VALUES ('33052200', '33050000', '长兴县');
INSERT INTO `td_area` VALUES ('33052300', '33050000', '安吉县');
INSERT INTO `td_area` VALUES ('33060000', '33000000', '绍兴市');
INSERT INTO `td_area` VALUES ('33060100', '33060000', '市辖区');
INSERT INTO `td_area` VALUES ('33060200', '33060000', '越城区');
INSERT INTO `td_area` VALUES ('33062100', '33060000', '绍兴县');
INSERT INTO `td_area` VALUES ('33062400', '33060000', '新昌县');
INSERT INTO `td_area` VALUES ('33068100', '33060000', '诸暨市');
INSERT INTO `td_area` VALUES ('33068200', '33060000', '上虞市');
INSERT INTO `td_area` VALUES ('33068300', '33060000', '嵊州市');
INSERT INTO `td_area` VALUES ('33070000', '33000000', '金华市');
INSERT INTO `td_area` VALUES ('33070100', '33070000', '市辖区');
INSERT INTO `td_area` VALUES ('33070200', '33070000', '婺城区');
INSERT INTO `td_area` VALUES ('33070300', '33070000', '金东区');
INSERT INTO `td_area` VALUES ('33072300', '33070000', '武义县');
INSERT INTO `td_area` VALUES ('33072600', '33070000', '浦江县');
INSERT INTO `td_area` VALUES ('33072700', '33070000', '磐安县');
INSERT INTO `td_area` VALUES ('33078100', '33070000', '兰溪市');
INSERT INTO `td_area` VALUES ('33078200', '33070000', '义乌市');
INSERT INTO `td_area` VALUES ('33078300', '33070000', '东阳市');
INSERT INTO `td_area` VALUES ('33078400', '33070000', '永康市');
INSERT INTO `td_area` VALUES ('33080000', '33000000', '衢州市');
INSERT INTO `td_area` VALUES ('33080100', '33080000', '市辖区');
INSERT INTO `td_area` VALUES ('33080200', '33080000', '柯城区');
INSERT INTO `td_area` VALUES ('33080300', '33080000', '衢江区');
INSERT INTO `td_area` VALUES ('33082200', '33080000', '常山县');
INSERT INTO `td_area` VALUES ('33082400', '33080000', '开化县');
INSERT INTO `td_area` VALUES ('33082500', '33080000', '龙游县');
INSERT INTO `td_area` VALUES ('33088100', '33080000', '江山市');
INSERT INTO `td_area` VALUES ('33090000', '33000000', '舟山市');
INSERT INTO `td_area` VALUES ('33090100', '33090000', '市辖区');
INSERT INTO `td_area` VALUES ('33090200', '33090000', '定海区');
INSERT INTO `td_area` VALUES ('33090300', '33090000', '普陀区');
INSERT INTO `td_area` VALUES ('33092100', '33090000', '岱山县');
INSERT INTO `td_area` VALUES ('33092200', '33090000', '嵊泗县');
INSERT INTO `td_area` VALUES ('33100000', '33000000', '台州市');
INSERT INTO `td_area` VALUES ('33100100', '33100000', '市辖区');
INSERT INTO `td_area` VALUES ('33100200', '33100000', '椒江区');
INSERT INTO `td_area` VALUES ('33100300', '33100000', '黄岩区');
INSERT INTO `td_area` VALUES ('33100400', '33100000', '路桥区');
INSERT INTO `td_area` VALUES ('33102100', '33100000', '玉环县');
INSERT INTO `td_area` VALUES ('33102200', '33100000', '三门县');
INSERT INTO `td_area` VALUES ('33102300', '33100000', '天台县');
INSERT INTO `td_area` VALUES ('33102400', '33100000', '仙居县');
INSERT INTO `td_area` VALUES ('33108100', '33100000', '温岭市');
INSERT INTO `td_area` VALUES ('33108200', '33100000', '临海市');
INSERT INTO `td_area` VALUES ('33110000', '33000000', '丽水市');
INSERT INTO `td_area` VALUES ('33110100', '33110000', '市辖区');
INSERT INTO `td_area` VALUES ('33110200', '33110000', '莲都区');
INSERT INTO `td_area` VALUES ('33112100', '33110000', '青田县');
INSERT INTO `td_area` VALUES ('33112200', '33110000', '缙云县');
INSERT INTO `td_area` VALUES ('33112300', '33110000', '遂昌县');
INSERT INTO `td_area` VALUES ('33112400', '33110000', '松阳县');
INSERT INTO `td_area` VALUES ('33112500', '33110000', '云和县');
INSERT INTO `td_area` VALUES ('33112600', '33110000', '庆元县');
INSERT INTO `td_area` VALUES ('33112700', '33110000', '景宁畲族自治县');
INSERT INTO `td_area` VALUES ('33118100', '33110000', '龙泉市');
INSERT INTO `td_area` VALUES ('34000000', '0', '安徽省');
INSERT INTO `td_area` VALUES ('34010000', '34000000', '合肥市');
INSERT INTO `td_area` VALUES ('34010100', '34010000', '市辖区');
INSERT INTO `td_area` VALUES ('34010200', '34010000', '瑶海区');
INSERT INTO `td_area` VALUES ('34010300', '34010000', '庐阳区');
INSERT INTO `td_area` VALUES ('34010400', '34010000', '蜀山区');
INSERT INTO `td_area` VALUES ('34011100', '34010000', '包河区');
INSERT INTO `td_area` VALUES ('34012100', '34010000', '长丰县');
INSERT INTO `td_area` VALUES ('34012200', '34010000', '肥东县');
INSERT INTO `td_area` VALUES ('34012300', '34010000', '肥西县');
INSERT INTO `td_area` VALUES ('34020000', '34000000', '芜湖市');
INSERT INTO `td_area` VALUES ('34020100', '34020000', '市辖区');
INSERT INTO `td_area` VALUES ('34020200', '34020000', '镜湖区');
INSERT INTO `td_area` VALUES ('34020300', '34020000', '马塘区');
INSERT INTO `td_area` VALUES ('34020400', '34020000', '新芜区');
INSERT INTO `td_area` VALUES ('34020700', '34020000', '鸠江区');
INSERT INTO `td_area` VALUES ('34022100', '34020000', '芜湖县');
INSERT INTO `td_area` VALUES ('34022200', '34020000', '繁昌县');
INSERT INTO `td_area` VALUES ('34022300', '34020000', '南陵县');
INSERT INTO `td_area` VALUES ('34030000', '34000000', '蚌埠市');
INSERT INTO `td_area` VALUES ('34030100', '34030000', '市辖区');
INSERT INTO `td_area` VALUES ('34030200', '34030000', '龙子湖区');
INSERT INTO `td_area` VALUES ('34030300', '34030000', '蚌山区');
INSERT INTO `td_area` VALUES ('34030400', '34030000', '禹会区');
INSERT INTO `td_area` VALUES ('34031100', '34030000', '淮上区');
INSERT INTO `td_area` VALUES ('34032100', '34030000', '怀远县');
INSERT INTO `td_area` VALUES ('34032200', '34030000', '五河县');
INSERT INTO `td_area` VALUES ('34032300', '34030000', '固镇县');
INSERT INTO `td_area` VALUES ('34040000', '34000000', '淮南市');
INSERT INTO `td_area` VALUES ('34040100', '34040000', '市辖区');
INSERT INTO `td_area` VALUES ('34040200', '34040000', '大通区');
INSERT INTO `td_area` VALUES ('34040300', '34040000', '田家庵区');
INSERT INTO `td_area` VALUES ('34040400', '34040000', '谢家集区');
INSERT INTO `td_area` VALUES ('34040500', '34040000', '八公山区');
INSERT INTO `td_area` VALUES ('34040600', '34040000', '潘集区');
INSERT INTO `td_area` VALUES ('34042100', '34040000', '凤台县');
INSERT INTO `td_area` VALUES ('34050000', '34000000', '马鞍山市');
INSERT INTO `td_area` VALUES ('34050100', '34050000', '市辖区');
INSERT INTO `td_area` VALUES ('34050200', '34050000', '金家庄区');
INSERT INTO `td_area` VALUES ('34050300', '34050000', '花山区');
INSERT INTO `td_area` VALUES ('34050400', '34050000', '雨山区');
INSERT INTO `td_area` VALUES ('34052100', '34050000', '当涂县');
INSERT INTO `td_area` VALUES ('34060000', '34000000', '淮北市');
INSERT INTO `td_area` VALUES ('34060100', '34060000', '市辖区');
INSERT INTO `td_area` VALUES ('34060200', '34060000', '杜集区');
INSERT INTO `td_area` VALUES ('34060300', '34060000', '相山区');
INSERT INTO `td_area` VALUES ('34060400', '34060000', '烈山区');
INSERT INTO `td_area` VALUES ('34062100', '34060000', '濉溪县');
INSERT INTO `td_area` VALUES ('34070000', '34000000', '铜陵市');
INSERT INTO `td_area` VALUES ('34070100', '34070000', '市辖区');
INSERT INTO `td_area` VALUES ('34070200', '34070000', '铜官山区');
INSERT INTO `td_area` VALUES ('34070300', '34070000', '狮子山区');
INSERT INTO `td_area` VALUES ('34071100', '34070000', '郊　区');
INSERT INTO `td_area` VALUES ('34072100', '34070000', '铜陵县');
INSERT INTO `td_area` VALUES ('34080000', '34000000', '安庆市');
INSERT INTO `td_area` VALUES ('34080100', '34080000', '市辖区');
INSERT INTO `td_area` VALUES ('34080200', '34080000', '迎江区');
INSERT INTO `td_area` VALUES ('34080300', '34080000', '大观区');
INSERT INTO `td_area` VALUES ('34081100', '34080000', '郊　区');
INSERT INTO `td_area` VALUES ('34082200', '34080000', '怀宁县');
INSERT INTO `td_area` VALUES ('34082300', '34080000', '枞阳县');
INSERT INTO `td_area` VALUES ('34082400', '34080000', '潜山县');
INSERT INTO `td_area` VALUES ('34082500', '34080000', '太湖县');
INSERT INTO `td_area` VALUES ('34082600', '34080000', '宿松县');
INSERT INTO `td_area` VALUES ('34082700', '34080000', '望江县');
INSERT INTO `td_area` VALUES ('34082800', '34080000', '岳西县');
INSERT INTO `td_area` VALUES ('34088100', '34080000', '桐城市');
INSERT INTO `td_area` VALUES ('34100000', '34000000', '黄山市');
INSERT INTO `td_area` VALUES ('34100100', '34100000', '市辖区');
INSERT INTO `td_area` VALUES ('34100200', '34100000', '屯溪区');
INSERT INTO `td_area` VALUES ('34100300', '34100000', '黄山区');
INSERT INTO `td_area` VALUES ('34100400', '34100000', '徽州区');
INSERT INTO `td_area` VALUES ('34102100', '34100000', '歙　县');
INSERT INTO `td_area` VALUES ('34102200', '34100000', '休宁县');
INSERT INTO `td_area` VALUES ('34102300', '34100000', '黟　县');
INSERT INTO `td_area` VALUES ('34102400', '34100000', '祁门县');
INSERT INTO `td_area` VALUES ('34110000', '34000000', '滁州市');
INSERT INTO `td_area` VALUES ('34110100', '34110000', '市辖区');
INSERT INTO `td_area` VALUES ('34110200', '34110000', '琅琊区');
INSERT INTO `td_area` VALUES ('34110300', '34110000', '南谯区');
INSERT INTO `td_area` VALUES ('34112200', '34110000', '来安县');
INSERT INTO `td_area` VALUES ('34112400', '34110000', '全椒县');
INSERT INTO `td_area` VALUES ('34112500', '34110000', '定远县');
INSERT INTO `td_area` VALUES ('34112600', '34110000', '凤阳县');
INSERT INTO `td_area` VALUES ('34118100', '34110000', '天长市');
INSERT INTO `td_area` VALUES ('34118200', '34110000', '明光市');
INSERT INTO `td_area` VALUES ('34120000', '34000000', '阜阳市');
INSERT INTO `td_area` VALUES ('34120100', '34120000', '市辖区');
INSERT INTO `td_area` VALUES ('34120200', '34120000', '颍州区');
INSERT INTO `td_area` VALUES ('34120300', '34120000', '颍东区');
INSERT INTO `td_area` VALUES ('34120400', '34120000', '颍泉区');
INSERT INTO `td_area` VALUES ('34122100', '34120000', '临泉县');
INSERT INTO `td_area` VALUES ('34122200', '34120000', '太和县');
INSERT INTO `td_area` VALUES ('34122500', '34120000', '阜南县');
INSERT INTO `td_area` VALUES ('34122600', '34120000', '颍上县');
INSERT INTO `td_area` VALUES ('34128200', '34120000', '界首市');
INSERT INTO `td_area` VALUES ('34130000', '34000000', '宿州市');
INSERT INTO `td_area` VALUES ('34130100', '34130000', '市辖区');
INSERT INTO `td_area` VALUES ('34130200', '34130000', '墉桥区');
INSERT INTO `td_area` VALUES ('34132100', '34130000', '砀山县');
INSERT INTO `td_area` VALUES ('34132200', '34130000', '萧　县');
INSERT INTO `td_area` VALUES ('34132300', '34130000', '灵璧县');
INSERT INTO `td_area` VALUES ('34132400', '34130000', '泗　县');
INSERT INTO `td_area` VALUES ('34140000', '34000000', '巢湖市');
INSERT INTO `td_area` VALUES ('34140100', '34140000', '市辖区');
INSERT INTO `td_area` VALUES ('34140200', '34140000', '居巢区');
INSERT INTO `td_area` VALUES ('34142100', '34140000', '庐江县');
INSERT INTO `td_area` VALUES ('34142200', '34140000', '无为县');
INSERT INTO `td_area` VALUES ('34142300', '34140000', '含山县');
INSERT INTO `td_area` VALUES ('34142400', '34140000', '和　县');
INSERT INTO `td_area` VALUES ('34150000', '34000000', '六安市');
INSERT INTO `td_area` VALUES ('34150100', '34150000', '市辖区');
INSERT INTO `td_area` VALUES ('34150200', '34150000', '金安区');
INSERT INTO `td_area` VALUES ('34150300', '34150000', '裕安区');
INSERT INTO `td_area` VALUES ('34152100', '34150000', '寿　县');
INSERT INTO `td_area` VALUES ('34152200', '34150000', '霍邱县');
INSERT INTO `td_area` VALUES ('34152300', '34150000', '舒城县');
INSERT INTO `td_area` VALUES ('34152400', '34150000', '金寨县');
INSERT INTO `td_area` VALUES ('34152500', '34150000', '霍山县');
INSERT INTO `td_area` VALUES ('34160000', '34000000', '亳州市');
INSERT INTO `td_area` VALUES ('34160100', '34160000', '市辖区');
INSERT INTO `td_area` VALUES ('34160200', '34160000', '谯城区');
INSERT INTO `td_area` VALUES ('34162100', '34160000', '涡阳县');
INSERT INTO `td_area` VALUES ('34162200', '34160000', '蒙城县');
INSERT INTO `td_area` VALUES ('34162300', '34160000', '利辛县');
INSERT INTO `td_area` VALUES ('34170000', '34000000', '池州市');
INSERT INTO `td_area` VALUES ('34170100', '34170000', '市辖区');
INSERT INTO `td_area` VALUES ('34170200', '34170000', '贵池区');
INSERT INTO `td_area` VALUES ('34172100', '34170000', '东至县');
INSERT INTO `td_area` VALUES ('34172200', '34170000', '石台县');
INSERT INTO `td_area` VALUES ('34172300', '34170000', '青阳县');
INSERT INTO `td_area` VALUES ('34180000', '34000000', '宣城市');
INSERT INTO `td_area` VALUES ('34180100', '34180000', '市辖区');
INSERT INTO `td_area` VALUES ('34180200', '34180000', '宣州区');
INSERT INTO `td_area` VALUES ('34182100', '34180000', '郎溪县');
INSERT INTO `td_area` VALUES ('34182200', '34180000', '广德县');
INSERT INTO `td_area` VALUES ('34182300', '34180000', '泾　县');
INSERT INTO `td_area` VALUES ('34182400', '34180000', '绩溪县');
INSERT INTO `td_area` VALUES ('34182500', '34180000', '旌德县');
INSERT INTO `td_area` VALUES ('34188100', '34180000', '宁国市');
INSERT INTO `td_area` VALUES ('35000000', '0', '福建省');
INSERT INTO `td_area` VALUES ('35010000', '35000000', '福州市');
INSERT INTO `td_area` VALUES ('35010100', '35010000', '市辖区');
INSERT INTO `td_area` VALUES ('35010200', '35010000', '鼓楼区');
INSERT INTO `td_area` VALUES ('35010300', '35010000', '台江区');
INSERT INTO `td_area` VALUES ('35010400', '35010000', '仓山区');
INSERT INTO `td_area` VALUES ('35010500', '35010000', '马尾区');
INSERT INTO `td_area` VALUES ('35011100', '35010000', '晋安区');
INSERT INTO `td_area` VALUES ('35012100', '35010000', '闽侯县');
INSERT INTO `td_area` VALUES ('35012200', '35010000', '连江县');
INSERT INTO `td_area` VALUES ('35012300', '35010000', '罗源县');
INSERT INTO `td_area` VALUES ('35012400', '35010000', '闽清县');
INSERT INTO `td_area` VALUES ('35012500', '35010000', '永泰县');
INSERT INTO `td_area` VALUES ('35012800', '35010000', '平潭县');
INSERT INTO `td_area` VALUES ('35018100', '35010000', '福清市');
INSERT INTO `td_area` VALUES ('35018200', '35010000', '长乐市');
INSERT INTO `td_area` VALUES ('35020000', '35000000', '厦门市');
INSERT INTO `td_area` VALUES ('35020100', '35020000', '市辖区');
INSERT INTO `td_area` VALUES ('35020300', '35020000', '思明区');
INSERT INTO `td_area` VALUES ('35020500', '35020000', '海沧区');
INSERT INTO `td_area` VALUES ('35020600', '35020000', '湖里区');
INSERT INTO `td_area` VALUES ('35021100', '35020000', '集美区');
INSERT INTO `td_area` VALUES ('35021200', '35020000', '同安区');
INSERT INTO `td_area` VALUES ('35021300', '35020000', '翔安区');
INSERT INTO `td_area` VALUES ('35030000', '35000000', '莆田市');
INSERT INTO `td_area` VALUES ('35030100', '35030000', '市辖区');
INSERT INTO `td_area` VALUES ('35030200', '35030000', '城厢区');
INSERT INTO `td_area` VALUES ('35030300', '35030000', '涵江区');
INSERT INTO `td_area` VALUES ('35030400', '35030000', '荔城区');
INSERT INTO `td_area` VALUES ('35030500', '35030000', '秀屿区');
INSERT INTO `td_area` VALUES ('35032200', '35030000', '仙游县');
INSERT INTO `td_area` VALUES ('35040000', '35000000', '三明市');
INSERT INTO `td_area` VALUES ('35040100', '35040000', '市辖区');
INSERT INTO `td_area` VALUES ('35040200', '35040000', '梅列区');
INSERT INTO `td_area` VALUES ('35040300', '35040000', '三元区');
INSERT INTO `td_area` VALUES ('35042100', '35040000', '明溪县');
INSERT INTO `td_area` VALUES ('35042300', '35040000', '清流县');
INSERT INTO `td_area` VALUES ('35042400', '35040000', '宁化县');
INSERT INTO `td_area` VALUES ('35042500', '35040000', '大田县');
INSERT INTO `td_area` VALUES ('35042600', '35040000', '尤溪县');
INSERT INTO `td_area` VALUES ('35042700', '35040000', '沙　县');
INSERT INTO `td_area` VALUES ('35042800', '35040000', '将乐县');
INSERT INTO `td_area` VALUES ('35042900', '35040000', '泰宁县');
INSERT INTO `td_area` VALUES ('35043000', '35040000', '建宁县');
INSERT INTO `td_area` VALUES ('35048100', '35040000', '永安市');
INSERT INTO `td_area` VALUES ('35050000', '35000000', '泉州市');
INSERT INTO `td_area` VALUES ('35050100', '35050000', '市辖区');
INSERT INTO `td_area` VALUES ('35050200', '35050000', '鲤城区');
INSERT INTO `td_area` VALUES ('35050300', '35050000', '丰泽区');
INSERT INTO `td_area` VALUES ('35050400', '35050000', '洛江区');
INSERT INTO `td_area` VALUES ('35050500', '35050000', '泉港区');
INSERT INTO `td_area` VALUES ('35052100', '35050000', '惠安县');
INSERT INTO `td_area` VALUES ('35052400', '35050000', '安溪县');
INSERT INTO `td_area` VALUES ('35052500', '35050000', '永春县');
INSERT INTO `td_area` VALUES ('35052600', '35050000', '德化县');
INSERT INTO `td_area` VALUES ('35052700', '35050000', '金门县');
INSERT INTO `td_area` VALUES ('35058100', '35050000', '石狮市');
INSERT INTO `td_area` VALUES ('35058200', '35050000', '晋江市');
INSERT INTO `td_area` VALUES ('35058300', '35050000', '南安市');
INSERT INTO `td_area` VALUES ('35060000', '35000000', '漳州市');
INSERT INTO `td_area` VALUES ('35060100', '35060000', '市辖区');
INSERT INTO `td_area` VALUES ('35060200', '35060000', '芗城区');
INSERT INTO `td_area` VALUES ('35060300', '35060000', '龙文区');
INSERT INTO `td_area` VALUES ('35062200', '35060000', '云霄县');
INSERT INTO `td_area` VALUES ('35062300', '35060000', '漳浦县');
INSERT INTO `td_area` VALUES ('35062400', '35060000', '诏安县');
INSERT INTO `td_area` VALUES ('35062500', '35060000', '长泰县');
INSERT INTO `td_area` VALUES ('35062600', '35060000', '东山县');
INSERT INTO `td_area` VALUES ('35062700', '35060000', '南靖县');
INSERT INTO `td_area` VALUES ('35062800', '35060000', '平和县');
INSERT INTO `td_area` VALUES ('35062900', '35060000', '华安县');
INSERT INTO `td_area` VALUES ('35068100', '35060000', '龙海市');
INSERT INTO `td_area` VALUES ('35070000', '35000000', '南平市');
INSERT INTO `td_area` VALUES ('35070100', '35070000', '市辖区');
INSERT INTO `td_area` VALUES ('35070200', '35070000', '延平区');
INSERT INTO `td_area` VALUES ('35072100', '35070000', '顺昌县');
INSERT INTO `td_area` VALUES ('35072200', '35070000', '浦城县');
INSERT INTO `td_area` VALUES ('35072300', '35070000', '光泽县');
INSERT INTO `td_area` VALUES ('35072400', '35070000', '松溪县');
INSERT INTO `td_area` VALUES ('35072500', '35070000', '政和县');
INSERT INTO `td_area` VALUES ('35078100', '35070000', '邵武市');
INSERT INTO `td_area` VALUES ('35078200', '35070000', '武夷山市');
INSERT INTO `td_area` VALUES ('35078300', '35070000', '建瓯市');
INSERT INTO `td_area` VALUES ('35078400', '35070000', '建阳市');
INSERT INTO `td_area` VALUES ('35080000', '35000000', '龙岩市');
INSERT INTO `td_area` VALUES ('35080100', '35080000', '市辖区');
INSERT INTO `td_area` VALUES ('35080200', '35080000', '新罗区');
INSERT INTO `td_area` VALUES ('35082100', '35080000', '长汀县');
INSERT INTO `td_area` VALUES ('35082200', '35080000', '永定县');
INSERT INTO `td_area` VALUES ('35082300', '35080000', '上杭县');
INSERT INTO `td_area` VALUES ('35082400', '35080000', '武平县');
INSERT INTO `td_area` VALUES ('35082500', '35080000', '连城县');
INSERT INTO `td_area` VALUES ('35088100', '35080000', '漳平市');
INSERT INTO `td_area` VALUES ('35090000', '35000000', '宁德市');
INSERT INTO `td_area` VALUES ('35090100', '35090000', '市辖区');
INSERT INTO `td_area` VALUES ('35090200', '35090000', '蕉城区');
INSERT INTO `td_area` VALUES ('35092100', '35090000', '霞浦县');
INSERT INTO `td_area` VALUES ('35092200', '35090000', '古田县');
INSERT INTO `td_area` VALUES ('35092300', '35090000', '屏南县');
INSERT INTO `td_area` VALUES ('35092400', '35090000', '寿宁县');
INSERT INTO `td_area` VALUES ('35092500', '35090000', '周宁县');
INSERT INTO `td_area` VALUES ('35092600', '35090000', '柘荣县');
INSERT INTO `td_area` VALUES ('35098100', '35090000', '福安市');
INSERT INTO `td_area` VALUES ('35098200', '35090000', '福鼎市');
INSERT INTO `td_area` VALUES ('36000000', '0', '江西省');
INSERT INTO `td_area` VALUES ('36010000', '36000000', '南昌市');
INSERT INTO `td_area` VALUES ('36010100', '36010000', '市辖区');
INSERT INTO `td_area` VALUES ('36010200', '36010000', '东湖区');
INSERT INTO `td_area` VALUES ('36010300', '36010000', '西湖区');
INSERT INTO `td_area` VALUES ('36010400', '36010000', '青云谱区');
INSERT INTO `td_area` VALUES ('36010500', '36010000', '湾里区');
INSERT INTO `td_area` VALUES ('36011100', '36010000', '青山湖区');
INSERT INTO `td_area` VALUES ('36012100', '36010000', '南昌县');
INSERT INTO `td_area` VALUES ('36012200', '36010000', '新建县');
INSERT INTO `td_area` VALUES ('36012300', '36010000', '安义县');
INSERT INTO `td_area` VALUES ('36012400', '36010000', '进贤县');
INSERT INTO `td_area` VALUES ('36020000', '36000000', '景德镇市');
INSERT INTO `td_area` VALUES ('36020100', '36020000', '市辖区');
INSERT INTO `td_area` VALUES ('36020200', '36020000', '昌江区');
INSERT INTO `td_area` VALUES ('36020300', '36020000', '珠山区');
INSERT INTO `td_area` VALUES ('36022200', '36020000', '浮梁县');
INSERT INTO `td_area` VALUES ('36028100', '36020000', '乐平市');
INSERT INTO `td_area` VALUES ('36030000', '36000000', '萍乡市');
INSERT INTO `td_area` VALUES ('36030100', '36030000', '市辖区');
INSERT INTO `td_area` VALUES ('36030200', '36030000', '安源区');
INSERT INTO `td_area` VALUES ('36031300', '36030000', '湘东区');
INSERT INTO `td_area` VALUES ('36032100', '36030000', '莲花县');
INSERT INTO `td_area` VALUES ('36032200', '36030000', '上栗县');
INSERT INTO `td_area` VALUES ('36032300', '36030000', '芦溪县');
INSERT INTO `td_area` VALUES ('36040000', '36000000', '九江市');
INSERT INTO `td_area` VALUES ('36040100', '36040000', '市辖区');
INSERT INTO `td_area` VALUES ('36040200', '36040000', '庐山区');
INSERT INTO `td_area` VALUES ('36040300', '36040000', '浔阳区');
INSERT INTO `td_area` VALUES ('36042100', '36040000', '九江县');
INSERT INTO `td_area` VALUES ('36042300', '36040000', '武宁县');
INSERT INTO `td_area` VALUES ('36042400', '36040000', '修水县');
INSERT INTO `td_area` VALUES ('36042500', '36040000', '永修县');
INSERT INTO `td_area` VALUES ('36042600', '36040000', '德安县');
INSERT INTO `td_area` VALUES ('36042700', '36040000', '星子县');
INSERT INTO `td_area` VALUES ('36042800', '36040000', '都昌县');
INSERT INTO `td_area` VALUES ('36042900', '36040000', '湖口县');
INSERT INTO `td_area` VALUES ('36043000', '36040000', '彭泽县');
INSERT INTO `td_area` VALUES ('36048100', '36040000', '瑞昌市');
INSERT INTO `td_area` VALUES ('36050000', '36000000', '新余市');
INSERT INTO `td_area` VALUES ('36050100', '36050000', '市辖区');
INSERT INTO `td_area` VALUES ('36050200', '36050000', '渝水区');
INSERT INTO `td_area` VALUES ('36052100', '36050000', '分宜县');
INSERT INTO `td_area` VALUES ('36060000', '36000000', '鹰潭市');
INSERT INTO `td_area` VALUES ('36060100', '36060000', '市辖区');
INSERT INTO `td_area` VALUES ('36060200', '36060000', '月湖区');
INSERT INTO `td_area` VALUES ('36062200', '36060000', '余江县');
INSERT INTO `td_area` VALUES ('36068100', '36060000', '贵溪市');
INSERT INTO `td_area` VALUES ('36070000', '36000000', '赣州市');
INSERT INTO `td_area` VALUES ('36070100', '36070000', '市辖区');
INSERT INTO `td_area` VALUES ('36070200', '36070000', '章贡区');
INSERT INTO `td_area` VALUES ('36072100', '36070000', '赣　县');
INSERT INTO `td_area` VALUES ('36072200', '36070000', '信丰县');
INSERT INTO `td_area` VALUES ('36072300', '36070000', '大余县');
INSERT INTO `td_area` VALUES ('36072400', '36070000', '上犹县');
INSERT INTO `td_area` VALUES ('36072500', '36070000', '崇义县');
INSERT INTO `td_area` VALUES ('36072600', '36070000', '安远县');
INSERT INTO `td_area` VALUES ('36072700', '36070000', '龙南县');
INSERT INTO `td_area` VALUES ('36072800', '36070000', '定南县');
INSERT INTO `td_area` VALUES ('36072900', '36070000', '全南县');
INSERT INTO `td_area` VALUES ('36073000', '36070000', '宁都县');
INSERT INTO `td_area` VALUES ('36073100', '36070000', '于都县');
INSERT INTO `td_area` VALUES ('36073200', '36070000', '兴国县');
INSERT INTO `td_area` VALUES ('36073300', '36070000', '会昌县');
INSERT INTO `td_area` VALUES ('36073400', '36070000', '寻乌县');
INSERT INTO `td_area` VALUES ('36073500', '36070000', '石城县');
INSERT INTO `td_area` VALUES ('36078100', '36070000', '瑞金市');
INSERT INTO `td_area` VALUES ('36078200', '36070000', '南康市');
INSERT INTO `td_area` VALUES ('36080000', '36000000', '吉安市');
INSERT INTO `td_area` VALUES ('36080100', '36080000', '市辖区');
INSERT INTO `td_area` VALUES ('36080200', '36080000', '吉州区');
INSERT INTO `td_area` VALUES ('36080300', '36080000', '青原区');
INSERT INTO `td_area` VALUES ('36082100', '36080000', '吉安县');
INSERT INTO `td_area` VALUES ('36082200', '36080000', '吉水县');
INSERT INTO `td_area` VALUES ('36082300', '36080000', '峡江县');
INSERT INTO `td_area` VALUES ('36082400', '36080000', '新干县');
INSERT INTO `td_area` VALUES ('36082500', '36080000', '永丰县');
INSERT INTO `td_area` VALUES ('36082600', '36080000', '泰和县');
INSERT INTO `td_area` VALUES ('36082700', '36080000', '遂川县');
INSERT INTO `td_area` VALUES ('36082800', '36080000', '万安县');
INSERT INTO `td_area` VALUES ('36082900', '36080000', '安福县');
INSERT INTO `td_area` VALUES ('36083000', '36080000', '永新县');
INSERT INTO `td_area` VALUES ('36088100', '36080000', '井冈山市');
INSERT INTO `td_area` VALUES ('36090000', '36000000', '宜春市');
INSERT INTO `td_area` VALUES ('36090100', '36090000', '市辖区');
INSERT INTO `td_area` VALUES ('36090200', '36090000', '袁州区');
INSERT INTO `td_area` VALUES ('36092100', '36090000', '奉新县');
INSERT INTO `td_area` VALUES ('36092200', '36090000', '万载县');
INSERT INTO `td_area` VALUES ('36092300', '36090000', '上高县');
INSERT INTO `td_area` VALUES ('36092400', '36090000', '宜丰县');
INSERT INTO `td_area` VALUES ('36092500', '36090000', '靖安县');
INSERT INTO `td_area` VALUES ('36092600', '36090000', '铜鼓县');
INSERT INTO `td_area` VALUES ('36098100', '36090000', '丰城市');
INSERT INTO `td_area` VALUES ('36098200', '36090000', '樟树市');
INSERT INTO `td_area` VALUES ('36098300', '36090000', '高安市');
INSERT INTO `td_area` VALUES ('36100000', '36000000', '抚州市');
INSERT INTO `td_area` VALUES ('36100100', '36100000', '市辖区');
INSERT INTO `td_area` VALUES ('36100200', '36100000', '临川区');
INSERT INTO `td_area` VALUES ('36102100', '36100000', '南城县');
INSERT INTO `td_area` VALUES ('36102200', '36100000', '黎川县');
INSERT INTO `td_area` VALUES ('36102300', '36100000', '南丰县');
INSERT INTO `td_area` VALUES ('36102400', '36100000', '崇仁县');
INSERT INTO `td_area` VALUES ('36102500', '36100000', '乐安县');
INSERT INTO `td_area` VALUES ('36102600', '36100000', '宜黄县');
INSERT INTO `td_area` VALUES ('36102700', '36100000', '金溪县');
INSERT INTO `td_area` VALUES ('36102800', '36100000', '资溪县');
INSERT INTO `td_area` VALUES ('36102900', '36100000', '东乡县');
INSERT INTO `td_area` VALUES ('36103000', '36100000', '广昌县');
INSERT INTO `td_area` VALUES ('36110000', '36000000', '上饶市');
INSERT INTO `td_area` VALUES ('36110100', '36110000', '市辖区');
INSERT INTO `td_area` VALUES ('36110200', '36110000', '信州区');
INSERT INTO `td_area` VALUES ('36112100', '36110000', '上饶县');
INSERT INTO `td_area` VALUES ('36112200', '36110000', '广丰县');
INSERT INTO `td_area` VALUES ('36112300', '36110000', '玉山县');
INSERT INTO `td_area` VALUES ('36112400', '36110000', '铅山县');
INSERT INTO `td_area` VALUES ('36112500', '36110000', '横峰县');
INSERT INTO `td_area` VALUES ('36112600', '36110000', '弋阳县');
INSERT INTO `td_area` VALUES ('36112700', '36110000', '余干县');
INSERT INTO `td_area` VALUES ('36112800', '36110000', '鄱阳县');
INSERT INTO `td_area` VALUES ('36112900', '36110000', '万年县');
INSERT INTO `td_area` VALUES ('36113000', '36110000', '婺源县');
INSERT INTO `td_area` VALUES ('36118100', '36110000', '德兴市');
INSERT INTO `td_area` VALUES ('37000000', '0', '山东省');
INSERT INTO `td_area` VALUES ('37010000', '37000000', '济南市');
INSERT INTO `td_area` VALUES ('37010100', '37010000', '市辖区');
INSERT INTO `td_area` VALUES ('37010200', '37010000', '历下区');
INSERT INTO `td_area` VALUES ('37010300', '37010000', '市中区');
INSERT INTO `td_area` VALUES ('37010400', '37010000', '槐荫区');
INSERT INTO `td_area` VALUES ('37010500', '37010000', '天桥区');
INSERT INTO `td_area` VALUES ('37011200', '37010000', '历城区');
INSERT INTO `td_area` VALUES ('37011300', '37010000', '长清区');
INSERT INTO `td_area` VALUES ('37012400', '37010000', '平阴县');
INSERT INTO `td_area` VALUES ('37012500', '37010000', '济阳县');
INSERT INTO `td_area` VALUES ('37012600', '37010000', '商河县');
INSERT INTO `td_area` VALUES ('37018100', '37010000', '章丘市');
INSERT INTO `td_area` VALUES ('37020000', '37000000', '青岛市');
INSERT INTO `td_area` VALUES ('37020100', '37020000', '市辖区');
INSERT INTO `td_area` VALUES ('37020200', '37020000', '市南区');
INSERT INTO `td_area` VALUES ('37020300', '37020000', '市北区');
INSERT INTO `td_area` VALUES ('37020500', '37020000', '四方区');
INSERT INTO `td_area` VALUES ('37021100', '37020000', '黄岛区');
INSERT INTO `td_area` VALUES ('37021200', '37020000', '崂山区');
INSERT INTO `td_area` VALUES ('37021300', '37020000', '李沧区');
INSERT INTO `td_area` VALUES ('37021400', '37020000', '城阳区');
INSERT INTO `td_area` VALUES ('37028100', '37020000', '胶州市');
INSERT INTO `td_area` VALUES ('37028200', '37020000', '即墨市');
INSERT INTO `td_area` VALUES ('37028300', '37020000', '平度市');
INSERT INTO `td_area` VALUES ('37028400', '37020000', '胶南市');
INSERT INTO `td_area` VALUES ('37028500', '37020000', '莱西市');
INSERT INTO `td_area` VALUES ('37030000', '37000000', '淄博市');
INSERT INTO `td_area` VALUES ('37030100', '37030000', '市辖区');
INSERT INTO `td_area` VALUES ('37030200', '37030000', '淄川区');
INSERT INTO `td_area` VALUES ('37030300', '37030000', '张店区');
INSERT INTO `td_area` VALUES ('37030400', '37030000', '博山区');
INSERT INTO `td_area` VALUES ('37030500', '37030000', '临淄区');
INSERT INTO `td_area` VALUES ('37030600', '37030000', '周村区');
INSERT INTO `td_area` VALUES ('37032100', '37030000', '桓台县');
INSERT INTO `td_area` VALUES ('37032200', '37030000', '高青县');
INSERT INTO `td_area` VALUES ('37032300', '37030000', '沂源县');
INSERT INTO `td_area` VALUES ('37040000', '37000000', '枣庄市');
INSERT INTO `td_area` VALUES ('37040100', '37040000', '市辖区');
INSERT INTO `td_area` VALUES ('37040200', '37040000', '市中区');
INSERT INTO `td_area` VALUES ('37040300', '37040000', '薛城区');
INSERT INTO `td_area` VALUES ('37040400', '37040000', '峄城区');
INSERT INTO `td_area` VALUES ('37040500', '37040000', '台儿庄区');
INSERT INTO `td_area` VALUES ('37040600', '37040000', '山亭区');
INSERT INTO `td_area` VALUES ('37048100', '37040000', '滕州市');
INSERT INTO `td_area` VALUES ('37050000', '37000000', '东营市');
INSERT INTO `td_area` VALUES ('37050100', '37050000', '市辖区');
INSERT INTO `td_area` VALUES ('37050200', '37050000', '东营区');
INSERT INTO `td_area` VALUES ('37050300', '37050000', '河口区');
INSERT INTO `td_area` VALUES ('37052100', '37050000', '垦利县');
INSERT INTO `td_area` VALUES ('37052200', '37050000', '利津县');
INSERT INTO `td_area` VALUES ('37052300', '37050000', '广饶县');
INSERT INTO `td_area` VALUES ('37060000', '37000000', '烟台市');
INSERT INTO `td_area` VALUES ('37060100', '37060000', '市辖区');
INSERT INTO `td_area` VALUES ('37060200', '37060000', '芝罘区');
INSERT INTO `td_area` VALUES ('37061100', '37060000', '福山区');
INSERT INTO `td_area` VALUES ('37061200', '37060000', '牟平区');
INSERT INTO `td_area` VALUES ('37061300', '37060000', '莱山区');
INSERT INTO `td_area` VALUES ('37063400', '37060000', '长岛县');
INSERT INTO `td_area` VALUES ('37068100', '37060000', '龙口市');
INSERT INTO `td_area` VALUES ('37068200', '37060000', '莱阳市');
INSERT INTO `td_area` VALUES ('37068300', '37060000', '莱州市');
INSERT INTO `td_area` VALUES ('37068400', '37060000', '蓬莱市');
INSERT INTO `td_area` VALUES ('37068500', '37060000', '招远市');
INSERT INTO `td_area` VALUES ('37068600', '37060000', '栖霞市');
INSERT INTO `td_area` VALUES ('37068700', '37060000', '海阳市');
INSERT INTO `td_area` VALUES ('37070000', '37000000', '潍坊市');
INSERT INTO `td_area` VALUES ('37070100', '37070000', '市辖区');
INSERT INTO `td_area` VALUES ('37070200', '37070000', '潍城区');
INSERT INTO `td_area` VALUES ('37070300', '37070000', '寒亭区');
INSERT INTO `td_area` VALUES ('37070400', '37070000', '坊子区');
INSERT INTO `td_area` VALUES ('37070500', '37070000', '奎文区');
INSERT INTO `td_area` VALUES ('37072400', '37070000', '临朐县');
INSERT INTO `td_area` VALUES ('37072500', '37070000', '昌乐县');
INSERT INTO `td_area` VALUES ('37078100', '37070000', '青州市');
INSERT INTO `td_area` VALUES ('37078200', '37070000', '诸城市');
INSERT INTO `td_area` VALUES ('37078300', '37070000', '寿光市');
INSERT INTO `td_area` VALUES ('37078400', '37070000', '安丘市');
INSERT INTO `td_area` VALUES ('37078500', '37070000', '高密市');
INSERT INTO `td_area` VALUES ('37078600', '37070000', '昌邑市');
INSERT INTO `td_area` VALUES ('37080000', '37000000', '济宁市');
INSERT INTO `td_area` VALUES ('37080100', '37080000', '市辖区');
INSERT INTO `td_area` VALUES ('37080200', '37080000', '市中区');
INSERT INTO `td_area` VALUES ('37081100', '37080000', '任城区');
INSERT INTO `td_area` VALUES ('37082600', '37080000', '微山县');
INSERT INTO `td_area` VALUES ('37082700', '37080000', '鱼台县');
INSERT INTO `td_area` VALUES ('37082800', '37080000', '金乡县');
INSERT INTO `td_area` VALUES ('37082900', '37080000', '嘉祥县');
INSERT INTO `td_area` VALUES ('37083000', '37080000', '汶上县');
INSERT INTO `td_area` VALUES ('37083100', '37080000', '泗水县');
INSERT INTO `td_area` VALUES ('37083200', '37080000', '梁山县');
INSERT INTO `td_area` VALUES ('37088100', '37080000', '曲阜市');
INSERT INTO `td_area` VALUES ('37088200', '37080000', '兖州市');
INSERT INTO `td_area` VALUES ('37088300', '37080000', '邹城市');
INSERT INTO `td_area` VALUES ('37090000', '37000000', '泰安市');
INSERT INTO `td_area` VALUES ('37090100', '37090000', '市辖区');
INSERT INTO `td_area` VALUES ('37090200', '37090000', '泰山区');
INSERT INTO `td_area` VALUES ('37090300', '37090000', '岱岳区');
INSERT INTO `td_area` VALUES ('37092100', '37090000', '宁阳县');
INSERT INTO `td_area` VALUES ('37092300', '37090000', '东平县');
INSERT INTO `td_area` VALUES ('37098200', '37090000', '新泰市');
INSERT INTO `td_area` VALUES ('37098300', '37090000', '肥城市');
INSERT INTO `td_area` VALUES ('37100000', '37000000', '威海市');
INSERT INTO `td_area` VALUES ('37100100', '37100000', '市辖区');
INSERT INTO `td_area` VALUES ('37100200', '37100000', '环翠区');
INSERT INTO `td_area` VALUES ('37108100', '37100000', '文登市');
INSERT INTO `td_area` VALUES ('37108200', '37100000', '荣成市');
INSERT INTO `td_area` VALUES ('37108300', '37100000', '乳山市');
INSERT INTO `td_area` VALUES ('37110000', '37000000', '日照市');
INSERT INTO `td_area` VALUES ('37110100', '37110000', '市辖区');
INSERT INTO `td_area` VALUES ('37110200', '37110000', '东港区');
INSERT INTO `td_area` VALUES ('37110300', '37110000', '岚山区');
INSERT INTO `td_area` VALUES ('37112100', '37110000', '五莲县');
INSERT INTO `td_area` VALUES ('37112200', '37110000', '莒　县');
INSERT INTO `td_area` VALUES ('37120000', '37000000', '莱芜市');
INSERT INTO `td_area` VALUES ('37120100', '37120000', '市辖区');
INSERT INTO `td_area` VALUES ('37120200', '37120000', '莱城区');
INSERT INTO `td_area` VALUES ('37120300', '37120000', '钢城区');
INSERT INTO `td_area` VALUES ('37130000', '37000000', '临沂市');
INSERT INTO `td_area` VALUES ('37130100', '37130000', '市辖区');
INSERT INTO `td_area` VALUES ('37130200', '37130000', '兰山区');
INSERT INTO `td_area` VALUES ('37131100', '37130000', '罗庄区');
INSERT INTO `td_area` VALUES ('37131200', '37130000', '河东区');
INSERT INTO `td_area` VALUES ('37132100', '37130000', '沂南县');
INSERT INTO `td_area` VALUES ('37132200', '37130000', '郯城县');
INSERT INTO `td_area` VALUES ('37132300', '37130000', '沂水县');
INSERT INTO `td_area` VALUES ('37132400', '37130000', '苍山县');
INSERT INTO `td_area` VALUES ('37132500', '37130000', '费　县');
INSERT INTO `td_area` VALUES ('37132600', '37130000', '平邑县');
INSERT INTO `td_area` VALUES ('37132700', '37130000', '莒南县');
INSERT INTO `td_area` VALUES ('37132800', '37130000', '蒙阴县');
INSERT INTO `td_area` VALUES ('37132900', '37130000', '临沭县');
INSERT INTO `td_area` VALUES ('37140000', '37000000', '德州市');
INSERT INTO `td_area` VALUES ('37140100', '37140000', '市辖区');
INSERT INTO `td_area` VALUES ('37140200', '37140000', '德城区');
INSERT INTO `td_area` VALUES ('37142100', '37140000', '陵　县');
INSERT INTO `td_area` VALUES ('37142200', '37140000', '宁津县');
INSERT INTO `td_area` VALUES ('37142300', '37140000', '庆云县');
INSERT INTO `td_area` VALUES ('37142400', '37140000', '临邑县');
INSERT INTO `td_area` VALUES ('37142500', '37140000', '齐河县');
INSERT INTO `td_area` VALUES ('37142600', '37140000', '平原县');
INSERT INTO `td_area` VALUES ('37142700', '37140000', '夏津县');
INSERT INTO `td_area` VALUES ('37142800', '37140000', '武城县');
INSERT INTO `td_area` VALUES ('37148100', '37140000', '乐陵市');
INSERT INTO `td_area` VALUES ('37148200', '37140000', '禹城市');
INSERT INTO `td_area` VALUES ('37150000', '37000000', '聊城市');
INSERT INTO `td_area` VALUES ('37150100', '37150000', '市辖区');
INSERT INTO `td_area` VALUES ('37150200', '37150000', '东昌府区');
INSERT INTO `td_area` VALUES ('37152100', '37150000', '阳谷县');
INSERT INTO `td_area` VALUES ('37152200', '37150000', '莘　县');
INSERT INTO `td_area` VALUES ('37152300', '37150000', '茌平县');
INSERT INTO `td_area` VALUES ('37152400', '37150000', '东阿县');
INSERT INTO `td_area` VALUES ('37152500', '37150000', '冠　县');
INSERT INTO `td_area` VALUES ('37152600', '37150000', '高唐县');
INSERT INTO `td_area` VALUES ('37158100', '37150000', '临清市');
INSERT INTO `td_area` VALUES ('37160000', '37000000', '滨州市');
INSERT INTO `td_area` VALUES ('37160100', '37160000', '市辖区');
INSERT INTO `td_area` VALUES ('37160200', '37160000', '滨城区');
INSERT INTO `td_area` VALUES ('37162100', '37160000', '惠民县');
INSERT INTO `td_area` VALUES ('37162200', '37160000', '阳信县');
INSERT INTO `td_area` VALUES ('37162300', '37160000', '无棣县');
INSERT INTO `td_area` VALUES ('37162400', '37160000', '沾化县');
INSERT INTO `td_area` VALUES ('37162500', '37160000', '博兴县');
INSERT INTO `td_area` VALUES ('37162600', '37160000', '邹平县');
INSERT INTO `td_area` VALUES ('37170000', '37000000', '荷泽市');
INSERT INTO `td_area` VALUES ('37170100', '37170000', '市辖区');
INSERT INTO `td_area` VALUES ('37170200', '37170000', '牡丹区');
INSERT INTO `td_area` VALUES ('37172100', '37170000', '曹　县');
INSERT INTO `td_area` VALUES ('37172200', '37170000', '单　县');
INSERT INTO `td_area` VALUES ('37172300', '37170000', '成武县');
INSERT INTO `td_area` VALUES ('37172400', '37170000', '巨野县');
INSERT INTO `td_area` VALUES ('37172500', '37170000', '郓城县');
INSERT INTO `td_area` VALUES ('37172600', '37170000', '鄄城县');
INSERT INTO `td_area` VALUES ('37172700', '37170000', '定陶县');
INSERT INTO `td_area` VALUES ('37172800', '37170000', '东明县');
INSERT INTO `td_area` VALUES ('41000000', '0', '河南省');
INSERT INTO `td_area` VALUES ('41010000', '41000000', '郑州市');
INSERT INTO `td_area` VALUES ('41010100', '41010000', '市辖区');
INSERT INTO `td_area` VALUES ('41010200', '41010000', '中原区');
INSERT INTO `td_area` VALUES ('41010300', '41010000', '二七区');
INSERT INTO `td_area` VALUES ('41010400', '41010000', '管城回族区');
INSERT INTO `td_area` VALUES ('41010500', '41010000', '金水区');
INSERT INTO `td_area` VALUES ('41010600', '41010000', '上街区');
INSERT INTO `td_area` VALUES ('41010800', '41010000', '邙山区');
INSERT INTO `td_area` VALUES ('41012200', '41010000', '中牟县');
INSERT INTO `td_area` VALUES ('41018100', '41010000', '巩义市');
INSERT INTO `td_area` VALUES ('41018200', '41010000', '荥阳市');
INSERT INTO `td_area` VALUES ('41018300', '41010000', '新密市');
INSERT INTO `td_area` VALUES ('41018400', '41010000', '新郑市');
INSERT INTO `td_area` VALUES ('41018500', '41010000', '登封市');
INSERT INTO `td_area` VALUES ('41020000', '41000000', '开封市');
INSERT INTO `td_area` VALUES ('41020100', '41020000', '市辖区');
INSERT INTO `td_area` VALUES ('41020200', '41020000', '龙亭区');
INSERT INTO `td_area` VALUES ('41020300', '41020000', '顺河回族区');
INSERT INTO `td_area` VALUES ('41020400', '41020000', '鼓楼区');
INSERT INTO `td_area` VALUES ('41020500', '41020000', '南关区');
INSERT INTO `td_area` VALUES ('41021100', '41020000', '郊　区');
INSERT INTO `td_area` VALUES ('41022100', '41020000', '杞　县');
INSERT INTO `td_area` VALUES ('41022200', '41020000', '通许县');
INSERT INTO `td_area` VALUES ('41022300', '41020000', '尉氏县');
INSERT INTO `td_area` VALUES ('41022400', '41020000', '开封县');
INSERT INTO `td_area` VALUES ('41022500', '41020000', '兰考县');
INSERT INTO `td_area` VALUES ('41030000', '41000000', '洛阳市');
INSERT INTO `td_area` VALUES ('41030100', '41030000', '市辖区');
INSERT INTO `td_area` VALUES ('41030200', '41030000', '老城区');
INSERT INTO `td_area` VALUES ('41030300', '41030000', '西工区');
INSERT INTO `td_area` VALUES ('41030400', '41030000', '廛河回族区');
INSERT INTO `td_area` VALUES ('41030500', '41030000', '涧西区');
INSERT INTO `td_area` VALUES ('41030600', '41030000', '吉利区');
INSERT INTO `td_area` VALUES ('41030700', '41030000', '洛龙区');
INSERT INTO `td_area` VALUES ('41032200', '41030000', '孟津县');
INSERT INTO `td_area` VALUES ('41032300', '41030000', '新安县');
INSERT INTO `td_area` VALUES ('41032400', '41030000', '栾川县');
INSERT INTO `td_area` VALUES ('41032500', '41030000', '嵩　县');
INSERT INTO `td_area` VALUES ('41032600', '41030000', '汝阳县');
INSERT INTO `td_area` VALUES ('41032700', '41030000', '宜阳县');
INSERT INTO `td_area` VALUES ('41032800', '41030000', '洛宁县');
INSERT INTO `td_area` VALUES ('41032900', '41030000', '伊川县');
INSERT INTO `td_area` VALUES ('41038100', '41030000', '偃师市');
INSERT INTO `td_area` VALUES ('41040000', '41000000', '平顶山市');
INSERT INTO `td_area` VALUES ('41040100', '41040000', '市辖区');
INSERT INTO `td_area` VALUES ('41040200', '41040000', '新华区');
INSERT INTO `td_area` VALUES ('41040300', '41040000', '卫东区');
INSERT INTO `td_area` VALUES ('41040400', '41040000', '石龙区');
INSERT INTO `td_area` VALUES ('41041100', '41040000', '湛河区');
INSERT INTO `td_area` VALUES ('41042100', '41040000', '宝丰县');
INSERT INTO `td_area` VALUES ('41042200', '41040000', '叶　县');
INSERT INTO `td_area` VALUES ('41042300', '41040000', '鲁山县');
INSERT INTO `td_area` VALUES ('41042500', '41040000', '郏　县');
INSERT INTO `td_area` VALUES ('41048100', '41040000', '舞钢市');
INSERT INTO `td_area` VALUES ('41048200', '41040000', '汝州市');
INSERT INTO `td_area` VALUES ('41050000', '41000000', '安阳市');
INSERT INTO `td_area` VALUES ('41050100', '41050000', '市辖区');
INSERT INTO `td_area` VALUES ('41050200', '41050000', '文峰区');
INSERT INTO `td_area` VALUES ('41050300', '41050000', '北关区');
INSERT INTO `td_area` VALUES ('41050500', '41050000', '殷都区');
INSERT INTO `td_area` VALUES ('41050600', '41050000', '龙安区');
INSERT INTO `td_area` VALUES ('41052200', '41050000', '安阳县');
INSERT INTO `td_area` VALUES ('41052300', '41050000', '汤阴县');
INSERT INTO `td_area` VALUES ('41052600', '41050000', '滑　县');
INSERT INTO `td_area` VALUES ('41052700', '41050000', '内黄县');
INSERT INTO `td_area` VALUES ('41058100', '41050000', '林州市');
INSERT INTO `td_area` VALUES ('41060000', '41000000', '鹤壁市');
INSERT INTO `td_area` VALUES ('41060100', '41060000', '市辖区');
INSERT INTO `td_area` VALUES ('41060200', '41060000', '鹤山区');
INSERT INTO `td_area` VALUES ('41060300', '41060000', '山城区');
INSERT INTO `td_area` VALUES ('41061100', '41060000', '淇滨区');
INSERT INTO `td_area` VALUES ('41062100', '41060000', '浚　县');
INSERT INTO `td_area` VALUES ('41062200', '41060000', '淇　县');
INSERT INTO `td_area` VALUES ('41070000', '41000000', '新乡市');
INSERT INTO `td_area` VALUES ('41070100', '41070000', '市辖区');
INSERT INTO `td_area` VALUES ('41070200', '41070000', '红旗区');
INSERT INTO `td_area` VALUES ('41070300', '41070000', '卫滨区');
INSERT INTO `td_area` VALUES ('41070400', '41070000', '凤泉区');
INSERT INTO `td_area` VALUES ('41071100', '41070000', '牧野区');
INSERT INTO `td_area` VALUES ('41072100', '41070000', '新乡县');
INSERT INTO `td_area` VALUES ('41072400', '41070000', '获嘉县');
INSERT INTO `td_area` VALUES ('41072500', '41070000', '原阳县');
INSERT INTO `td_area` VALUES ('41072600', '41070000', '延津县');
INSERT INTO `td_area` VALUES ('41072700', '41070000', '封丘县');
INSERT INTO `td_area` VALUES ('41072800', '41070000', '长垣县');
INSERT INTO `td_area` VALUES ('41078100', '41070000', '卫辉市');
INSERT INTO `td_area` VALUES ('41078200', '41070000', '辉县市');
INSERT INTO `td_area` VALUES ('41080000', '41000000', '焦作市');
INSERT INTO `td_area` VALUES ('41080100', '41080000', '市辖区');
INSERT INTO `td_area` VALUES ('41080200', '41080000', '解放区');
INSERT INTO `td_area` VALUES ('41080300', '41080000', '中站区');
INSERT INTO `td_area` VALUES ('41080400', '41080000', '马村区');
INSERT INTO `td_area` VALUES ('41081100', '41080000', '山阳区');
INSERT INTO `td_area` VALUES ('41082100', '41080000', '修武县');
INSERT INTO `td_area` VALUES ('41082200', '41080000', '博爱县');
INSERT INTO `td_area` VALUES ('41082300', '41080000', '武陟县');
INSERT INTO `td_area` VALUES ('41082500', '41080000', '温　县');
INSERT INTO `td_area` VALUES ('41088100', '41080000', '济源市');
INSERT INTO `td_area` VALUES ('41088200', '41080000', '沁阳市');
INSERT INTO `td_area` VALUES ('41088300', '41080000', '孟州市');
INSERT INTO `td_area` VALUES ('41090000', '41000000', '濮阳市');
INSERT INTO `td_area` VALUES ('41090100', '41090000', '市辖区');
INSERT INTO `td_area` VALUES ('41090200', '41090000', '华龙区');
INSERT INTO `td_area` VALUES ('41092200', '41090000', '清丰县');
INSERT INTO `td_area` VALUES ('41092300', '41090000', '南乐县');
INSERT INTO `td_area` VALUES ('41092600', '41090000', '范　县');
INSERT INTO `td_area` VALUES ('41092700', '41090000', '台前县');
INSERT INTO `td_area` VALUES ('41092800', '41090000', '濮阳县');
INSERT INTO `td_area` VALUES ('41100000', '41000000', '许昌市');
INSERT INTO `td_area` VALUES ('41100100', '41100000', '市辖区');
INSERT INTO `td_area` VALUES ('41100200', '41100000', '魏都区');
INSERT INTO `td_area` VALUES ('41102300', '41100000', '许昌县');
INSERT INTO `td_area` VALUES ('41102400', '41100000', '鄢陵县');
INSERT INTO `td_area` VALUES ('41102500', '41100000', '襄城县');
INSERT INTO `td_area` VALUES ('41108100', '41100000', '禹州市');
INSERT INTO `td_area` VALUES ('41108200', '41100000', '长葛市');
INSERT INTO `td_area` VALUES ('41110000', '41000000', '漯河市');
INSERT INTO `td_area` VALUES ('41110100', '41110000', '市辖区');
INSERT INTO `td_area` VALUES ('41110200', '41110000', '源汇区');
INSERT INTO `td_area` VALUES ('41110300', '41110000', '郾城区');
INSERT INTO `td_area` VALUES ('41110400', '41110000', '召陵区');
INSERT INTO `td_area` VALUES ('41112100', '41110000', '舞阳县');
INSERT INTO `td_area` VALUES ('41112200', '41110000', '临颍县');
INSERT INTO `td_area` VALUES ('41120000', '41000000', '三门峡市');
INSERT INTO `td_area` VALUES ('41120100', '41120000', '市辖区');
INSERT INTO `td_area` VALUES ('41120200', '41120000', '湖滨区');
INSERT INTO `td_area` VALUES ('41122100', '41120000', '渑池县');
INSERT INTO `td_area` VALUES ('41122200', '41120000', '陕　县');
INSERT INTO `td_area` VALUES ('41122400', '41120000', '卢氏县');
INSERT INTO `td_area` VALUES ('41128100', '41120000', '义马市');
INSERT INTO `td_area` VALUES ('41128200', '41120000', '灵宝市');
INSERT INTO `td_area` VALUES ('41130000', '41000000', '南阳市');
INSERT INTO `td_area` VALUES ('41130100', '41130000', '市辖区');
INSERT INTO `td_area` VALUES ('41130200', '41130000', '宛城区');
INSERT INTO `td_area` VALUES ('41130300', '41130000', '卧龙区');
INSERT INTO `td_area` VALUES ('41132100', '41130000', '南召县');
INSERT INTO `td_area` VALUES ('41132200', '41130000', '方城县');
INSERT INTO `td_area` VALUES ('41132300', '41130000', '西峡县');
INSERT INTO `td_area` VALUES ('41132400', '41130000', '镇平县');
INSERT INTO `td_area` VALUES ('41132500', '41130000', '内乡县');
INSERT INTO `td_area` VALUES ('41132600', '41130000', '淅川县');
INSERT INTO `td_area` VALUES ('41132700', '41130000', '社旗县');
INSERT INTO `td_area` VALUES ('41132800', '41130000', '唐河县');
INSERT INTO `td_area` VALUES ('41132900', '41130000', '新野县');
INSERT INTO `td_area` VALUES ('41133000', '41130000', '桐柏县');
INSERT INTO `td_area` VALUES ('41138100', '41130000', '邓州市');
INSERT INTO `td_area` VALUES ('41140000', '41000000', '商丘市');
INSERT INTO `td_area` VALUES ('41140100', '41140000', '市辖区');
INSERT INTO `td_area` VALUES ('41140200', '41140000', '梁园区');
INSERT INTO `td_area` VALUES ('41140300', '41140000', '睢阳区');
INSERT INTO `td_area` VALUES ('41142100', '41140000', '民权县');
INSERT INTO `td_area` VALUES ('41142200', '41140000', '睢　县');
INSERT INTO `td_area` VALUES ('41142300', '41140000', '宁陵县');
INSERT INTO `td_area` VALUES ('41142400', '41140000', '柘城县');
INSERT INTO `td_area` VALUES ('41142500', '41140000', '虞城县');
INSERT INTO `td_area` VALUES ('41142600', '41140000', '夏邑县');
INSERT INTO `td_area` VALUES ('41148100', '41140000', '永城市');
INSERT INTO `td_area` VALUES ('41150000', '41000000', '信阳市');
INSERT INTO `td_area` VALUES ('41150100', '41150000', '市辖区');
INSERT INTO `td_area` VALUES ('41150200', '41150000', '师河区');
INSERT INTO `td_area` VALUES ('41150300', '41150000', '平桥区');
INSERT INTO `td_area` VALUES ('41152100', '41150000', '罗山县');
INSERT INTO `td_area` VALUES ('41152200', '41150000', '光山县');
INSERT INTO `td_area` VALUES ('41152300', '41150000', '新　县');
INSERT INTO `td_area` VALUES ('41152400', '41150000', '商城县');
INSERT INTO `td_area` VALUES ('41152500', '41150000', '固始县');
INSERT INTO `td_area` VALUES ('41152600', '41150000', '潢川县');
INSERT INTO `td_area` VALUES ('41152700', '41150000', '淮滨县');
INSERT INTO `td_area` VALUES ('41152800', '41150000', '息　县');
INSERT INTO `td_area` VALUES ('41160000', '41000000', '周口市');
INSERT INTO `td_area` VALUES ('41160100', '41160000', '市辖区');
INSERT INTO `td_area` VALUES ('41160200', '41160000', '川汇区');
INSERT INTO `td_area` VALUES ('41162100', '41160000', '扶沟县');
INSERT INTO `td_area` VALUES ('41162200', '41160000', '西华县');
INSERT INTO `td_area` VALUES ('41162300', '41160000', '商水县');
INSERT INTO `td_area` VALUES ('41162400', '41160000', '沈丘县');
INSERT INTO `td_area` VALUES ('41162500', '41160000', '郸城县');
INSERT INTO `td_area` VALUES ('41162600', '41160000', '淮阳县');
INSERT INTO `td_area` VALUES ('41162700', '41160000', '太康县');
INSERT INTO `td_area` VALUES ('41162800', '41160000', '鹿邑县');
INSERT INTO `td_area` VALUES ('41168100', '41160000', '项城市');
INSERT INTO `td_area` VALUES ('41170000', '41000000', '驻马店市');
INSERT INTO `td_area` VALUES ('41170100', '41170000', '市辖区');
INSERT INTO `td_area` VALUES ('41170200', '41170000', '驿城区');
INSERT INTO `td_area` VALUES ('41172100', '41170000', '西平县');
INSERT INTO `td_area` VALUES ('41172200', '41170000', '上蔡县');
INSERT INTO `td_area` VALUES ('41172300', '41170000', '平舆县');
INSERT INTO `td_area` VALUES ('41172400', '41170000', '正阳县');
INSERT INTO `td_area` VALUES ('41172500', '41170000', '确山县');
INSERT INTO `td_area` VALUES ('41172600', '41170000', '泌阳县');
INSERT INTO `td_area` VALUES ('41172700', '41170000', '汝南县');
INSERT INTO `td_area` VALUES ('41172800', '41170000', '遂平县');
INSERT INTO `td_area` VALUES ('41172900', '41170000', '新蔡县');
INSERT INTO `td_area` VALUES ('42000000', '0', '湖北省');
INSERT INTO `td_area` VALUES ('42010000', '42000000', '武汉市');
INSERT INTO `td_area` VALUES ('42010100', '42010000', '市辖区');
INSERT INTO `td_area` VALUES ('42010200', '42010000', '江岸区');
INSERT INTO `td_area` VALUES ('42010300', '42010000', '江汉区');
INSERT INTO `td_area` VALUES ('42010400', '42010000', '乔口区');
INSERT INTO `td_area` VALUES ('42010500', '42010000', '汉阳区');
INSERT INTO `td_area` VALUES ('42010600', '42010000', '武昌区');
INSERT INTO `td_area` VALUES ('42010700', '42010000', '青山区');
INSERT INTO `td_area` VALUES ('42011100', '42010000', '洪山区');
INSERT INTO `td_area` VALUES ('42011200', '42010000', '东西湖区');
INSERT INTO `td_area` VALUES ('42011300', '42010000', '汉南区');
INSERT INTO `td_area` VALUES ('42011400', '42010000', '蔡甸区');
INSERT INTO `td_area` VALUES ('42011500', '42010000', '江夏区');
INSERT INTO `td_area` VALUES ('42011600', '42010000', '黄陂区');
INSERT INTO `td_area` VALUES ('42011700', '42010000', '新洲区');
INSERT INTO `td_area` VALUES ('42020000', '42000000', '黄石市');
INSERT INTO `td_area` VALUES ('42020100', '42020000', '市辖区');
INSERT INTO `td_area` VALUES ('42020200', '42020000', '黄石港区');
INSERT INTO `td_area` VALUES ('42020300', '42020000', '西塞山区');
INSERT INTO `td_area` VALUES ('42020400', '42020000', '下陆区');
INSERT INTO `td_area` VALUES ('42020500', '42020000', '铁山区');
INSERT INTO `td_area` VALUES ('42022200', '42020000', '阳新县');
INSERT INTO `td_area` VALUES ('42028100', '42020000', '大冶市');
INSERT INTO `td_area` VALUES ('42030000', '42000000', '十堰市');
INSERT INTO `td_area` VALUES ('42030100', '42030000', '市辖区');
INSERT INTO `td_area` VALUES ('42030200', '42030000', '茅箭区');
INSERT INTO `td_area` VALUES ('42030300', '42030000', '张湾区');
INSERT INTO `td_area` VALUES ('42032100', '42030000', '郧　县');
INSERT INTO `td_area` VALUES ('42032200', '42030000', '郧西县');
INSERT INTO `td_area` VALUES ('42032300', '42030000', '竹山县');
INSERT INTO `td_area` VALUES ('42032400', '42030000', '竹溪县');
INSERT INTO `td_area` VALUES ('42032500', '42030000', '房　县');
INSERT INTO `td_area` VALUES ('42038100', '42030000', '丹江口市');
INSERT INTO `td_area` VALUES ('42050000', '42000000', '宜昌市');
INSERT INTO `td_area` VALUES ('42050100', '42050000', '市辖区');
INSERT INTO `td_area` VALUES ('42050200', '42050000', '西陵区');
INSERT INTO `td_area` VALUES ('42050300', '42050000', '伍家岗区');
INSERT INTO `td_area` VALUES ('42050400', '42050000', '点军区');
INSERT INTO `td_area` VALUES ('42050500', '42050000', '猇亭区');
INSERT INTO `td_area` VALUES ('42050600', '42050000', '夷陵区');
INSERT INTO `td_area` VALUES ('42052500', '42050000', '远安县');
INSERT INTO `td_area` VALUES ('42052600', '42050000', '兴山县');
INSERT INTO `td_area` VALUES ('42052700', '42050000', '秭归县');
INSERT INTO `td_area` VALUES ('42052800', '42050000', '长阳土家族自治县');
INSERT INTO `td_area` VALUES ('42052900', '42050000', '五峰土家族自治县');
INSERT INTO `td_area` VALUES ('42058100', '42050000', '宜都市');
INSERT INTO `td_area` VALUES ('42058200', '42050000', '当阳市');
INSERT INTO `td_area` VALUES ('42058300', '42050000', '枝江市');
INSERT INTO `td_area` VALUES ('42060000', '42000000', '襄樊市');
INSERT INTO `td_area` VALUES ('42060100', '42060000', '市辖区');
INSERT INTO `td_area` VALUES ('42060200', '42060000', '襄城区');
INSERT INTO `td_area` VALUES ('42060600', '42060000', '樊城区');
INSERT INTO `td_area` VALUES ('42060700', '42060000', '襄阳区');
INSERT INTO `td_area` VALUES ('42062400', '42060000', '南漳县');
INSERT INTO `td_area` VALUES ('42062500', '42060000', '谷城县');
INSERT INTO `td_area` VALUES ('42062600', '42060000', '保康县');
INSERT INTO `td_area` VALUES ('42068200', '42060000', '老河口市');
INSERT INTO `td_area` VALUES ('42068300', '42060000', '枣阳市');
INSERT INTO `td_area` VALUES ('42068400', '42060000', '宜城市');
INSERT INTO `td_area` VALUES ('42070000', '42000000', '鄂州市');
INSERT INTO `td_area` VALUES ('42070100', '42070000', '市辖区');
INSERT INTO `td_area` VALUES ('42070200', '42070000', '梁子湖区');
INSERT INTO `td_area` VALUES ('42070300', '42070000', '华容区');
INSERT INTO `td_area` VALUES ('42070400', '42070000', '鄂城区');
INSERT INTO `td_area` VALUES ('42080000', '42000000', '荆门市');
INSERT INTO `td_area` VALUES ('42080100', '42080000', '市辖区');
INSERT INTO `td_area` VALUES ('42080200', '42080000', '东宝区');
INSERT INTO `td_area` VALUES ('42080400', '42080000', '掇刀区');
INSERT INTO `td_area` VALUES ('42082100', '42080000', '京山县');
INSERT INTO `td_area` VALUES ('42082200', '42080000', '沙洋县');
INSERT INTO `td_area` VALUES ('42088100', '42080000', '钟祥市');
INSERT INTO `td_area` VALUES ('42090000', '42000000', '孝感市');
INSERT INTO `td_area` VALUES ('42090100', '42090000', '市辖区');
INSERT INTO `td_area` VALUES ('42090200', '42090000', '孝南区');
INSERT INTO `td_area` VALUES ('42092100', '42090000', '孝昌县');
INSERT INTO `td_area` VALUES ('42092200', '42090000', '大悟县');
INSERT INTO `td_area` VALUES ('42092300', '42090000', '云梦县');
INSERT INTO `td_area` VALUES ('42098100', '42090000', '应城市');
INSERT INTO `td_area` VALUES ('42098200', '42090000', '安陆市');
INSERT INTO `td_area` VALUES ('42098400', '42090000', '汉川市');
INSERT INTO `td_area` VALUES ('42100000', '42000000', '荆州市');
INSERT INTO `td_area` VALUES ('42100100', '42100000', '市辖区');
INSERT INTO `td_area` VALUES ('42100200', '42100000', '沙市区');
INSERT INTO `td_area` VALUES ('42100300', '42100000', '荆州区');
INSERT INTO `td_area` VALUES ('42102200', '42100000', '公安县');
INSERT INTO `td_area` VALUES ('42102300', '42100000', '监利县');
INSERT INTO `td_area` VALUES ('42102400', '42100000', '江陵县');
INSERT INTO `td_area` VALUES ('42108100', '42100000', '石首市');
INSERT INTO `td_area` VALUES ('42108300', '42100000', '洪湖市');
INSERT INTO `td_area` VALUES ('42108700', '42100000', '松滋市');
INSERT INTO `td_area` VALUES ('42110000', '42000000', '黄冈市');
INSERT INTO `td_area` VALUES ('42110100', '42110000', '市辖区');
INSERT INTO `td_area` VALUES ('42110200', '42110000', '黄州区');
INSERT INTO `td_area` VALUES ('42112100', '42110000', '团风县');
INSERT INTO `td_area` VALUES ('42112200', '42110000', '红安县');
INSERT INTO `td_area` VALUES ('42112300', '42110000', '罗田县');
INSERT INTO `td_area` VALUES ('42112400', '42110000', '英山县');
INSERT INTO `td_area` VALUES ('42112500', '42110000', '浠水县');
INSERT INTO `td_area` VALUES ('42112600', '42110000', '蕲春县');
INSERT INTO `td_area` VALUES ('42112700', '42110000', '黄梅县');
INSERT INTO `td_area` VALUES ('42118100', '42110000', '麻城市');
INSERT INTO `td_area` VALUES ('42118200', '42110000', '武穴市');
INSERT INTO `td_area` VALUES ('42120000', '42000000', '咸宁市');
INSERT INTO `td_area` VALUES ('42120100', '42120000', '市辖区');
INSERT INTO `td_area` VALUES ('42120200', '42120000', '咸安区');
INSERT INTO `td_area` VALUES ('42122100', '42120000', '嘉鱼县');
INSERT INTO `td_area` VALUES ('42122200', '42120000', '通城县');
INSERT INTO `td_area` VALUES ('42122300', '42120000', '崇阳县');
INSERT INTO `td_area` VALUES ('42122400', '42120000', '通山县');
INSERT INTO `td_area` VALUES ('42128100', '42120000', '赤壁市');
INSERT INTO `td_area` VALUES ('42130000', '42000000', '随州市');
INSERT INTO `td_area` VALUES ('42130100', '42130000', '市辖区');
INSERT INTO `td_area` VALUES ('42130200', '42130000', '曾都区');
INSERT INTO `td_area` VALUES ('42138100', '42130000', '广水市');
INSERT INTO `td_area` VALUES ('42280000', '42000000', '恩施土家族苗族自治州');
INSERT INTO `td_area` VALUES ('42280100', '42280000', '恩施市');
INSERT INTO `td_area` VALUES ('42280200', '42280000', '利川市');
INSERT INTO `td_area` VALUES ('42282200', '42280000', '建始县');
INSERT INTO `td_area` VALUES ('42282300', '42280000', '巴东县');
INSERT INTO `td_area` VALUES ('42282500', '42280000', '宣恩县');
INSERT INTO `td_area` VALUES ('42282600', '42280000', '咸丰县');
INSERT INTO `td_area` VALUES ('42282700', '42280000', '来凤县');
INSERT INTO `td_area` VALUES ('42282800', '42280000', '鹤峰县');
INSERT INTO `td_area` VALUES ('42900000', '42000000', '省直辖行政单位');
INSERT INTO `td_area` VALUES ('42900400', '42900000', '仙桃市');
INSERT INTO `td_area` VALUES ('42900500', '42900000', '潜江市');
INSERT INTO `td_area` VALUES ('42900600', '42900000', '天门市');
INSERT INTO `td_area` VALUES ('42902100', '42900000', '神农架林区');
INSERT INTO `td_area` VALUES ('43000000', '0', '湖南省');
INSERT INTO `td_area` VALUES ('43010000', '43000000', '长沙市');
INSERT INTO `td_area` VALUES ('43010100', '43010000', '市辖区');
INSERT INTO `td_area` VALUES ('43010200', '43010000', '芙蓉区');
INSERT INTO `td_area` VALUES ('43010300', '43010000', '天心区');
INSERT INTO `td_area` VALUES ('43010400', '43010000', '岳麓区');
INSERT INTO `td_area` VALUES ('43010500', '43010000', '开福区');
INSERT INTO `td_area` VALUES ('43011100', '43010000', '雨花区');
INSERT INTO `td_area` VALUES ('43012100', '43010000', '长沙县');
INSERT INTO `td_area` VALUES ('43012200', '43010000', '望城县');
INSERT INTO `td_area` VALUES ('43012400', '43010000', '宁乡县');
INSERT INTO `td_area` VALUES ('43018100', '43010000', '浏阳市');
INSERT INTO `td_area` VALUES ('43020000', '43000000', '株洲市');
INSERT INTO `td_area` VALUES ('43020100', '43020000', '市辖区');
INSERT INTO `td_area` VALUES ('43020200', '43020000', '荷塘区');
INSERT INTO `td_area` VALUES ('43020300', '43020000', '芦淞区');
INSERT INTO `td_area` VALUES ('43020400', '43020000', '石峰区');
INSERT INTO `td_area` VALUES ('43021100', '43020000', '天元区');
INSERT INTO `td_area` VALUES ('43022100', '43020000', '株洲县');
INSERT INTO `td_area` VALUES ('43022300', '43020000', '攸　县');
INSERT INTO `td_area` VALUES ('43022400', '43020000', '茶陵县');
INSERT INTO `td_area` VALUES ('43022500', '43020000', '炎陵县');
INSERT INTO `td_area` VALUES ('43028100', '43020000', '醴陵市');
INSERT INTO `td_area` VALUES ('43030000', '43000000', '湘潭市');
INSERT INTO `td_area` VALUES ('43030100', '43030000', '市辖区');
INSERT INTO `td_area` VALUES ('43030200', '43030000', '雨湖区');
INSERT INTO `td_area` VALUES ('43030400', '43030000', '岳塘区');
INSERT INTO `td_area` VALUES ('43032100', '43030000', '湘潭县');
INSERT INTO `td_area` VALUES ('43038100', '43030000', '湘乡市');
INSERT INTO `td_area` VALUES ('43038200', '43030000', '韶山市');
INSERT INTO `td_area` VALUES ('43040000', '43000000', '衡阳市');
INSERT INTO `td_area` VALUES ('43040100', '43040000', '市辖区');
INSERT INTO `td_area` VALUES ('43040500', '43040000', '珠晖区');
INSERT INTO `td_area` VALUES ('43040600', '43040000', '雁峰区');
INSERT INTO `td_area` VALUES ('43040700', '43040000', '石鼓区');
INSERT INTO `td_area` VALUES ('43040800', '43040000', '蒸湘区');
INSERT INTO `td_area` VALUES ('43041200', '43040000', '南岳区');
INSERT INTO `td_area` VALUES ('43042100', '43040000', '衡阳县');
INSERT INTO `td_area` VALUES ('43042200', '43040000', '衡南县');
INSERT INTO `td_area` VALUES ('43042300', '43040000', '衡山县');
INSERT INTO `td_area` VALUES ('43042400', '43040000', '衡东县');
INSERT INTO `td_area` VALUES ('43042600', '43040000', '祁东县');
INSERT INTO `td_area` VALUES ('43048100', '43040000', '耒阳市');
INSERT INTO `td_area` VALUES ('43048200', '43040000', '常宁市');
INSERT INTO `td_area` VALUES ('43050000', '43000000', '邵阳市');
INSERT INTO `td_area` VALUES ('43050100', '43050000', '市辖区');
INSERT INTO `td_area` VALUES ('43050200', '43050000', '双清区');
INSERT INTO `td_area` VALUES ('43050300', '43050000', '大祥区');
INSERT INTO `td_area` VALUES ('43051100', '43050000', '北塔区');
INSERT INTO `td_area` VALUES ('43052100', '43050000', '邵东县');
INSERT INTO `td_area` VALUES ('43052200', '43050000', '新邵县');
INSERT INTO `td_area` VALUES ('43052300', '43050000', '邵阳县');
INSERT INTO `td_area` VALUES ('43052400', '43050000', '隆回县');
INSERT INTO `td_area` VALUES ('43052500', '43050000', '洞口县');
INSERT INTO `td_area` VALUES ('43052700', '43050000', '绥宁县');
INSERT INTO `td_area` VALUES ('43052800', '43050000', '新宁县');
INSERT INTO `td_area` VALUES ('43052900', '43050000', '城步苗族自治县');
INSERT INTO `td_area` VALUES ('43058100', '43050000', '武冈市');
INSERT INTO `td_area` VALUES ('43060000', '43000000', '岳阳市');
INSERT INTO `td_area` VALUES ('43060100', '43060000', '市辖区');
INSERT INTO `td_area` VALUES ('43060200', '43060000', '岳阳楼区');
INSERT INTO `td_area` VALUES ('43060300', '43060000', '云溪区');
INSERT INTO `td_area` VALUES ('43061100', '43060000', '君山区');
INSERT INTO `td_area` VALUES ('43062100', '43060000', '岳阳县');
INSERT INTO `td_area` VALUES ('43062300', '43060000', '华容县');
INSERT INTO `td_area` VALUES ('43062400', '43060000', '湘阴县');
INSERT INTO `td_area` VALUES ('43062600', '43060000', '平江县');
INSERT INTO `td_area` VALUES ('43068100', '43060000', '汨罗市');
INSERT INTO `td_area` VALUES ('43068200', '43060000', '临湘市');
INSERT INTO `td_area` VALUES ('43070000', '43000000', '常德市');
INSERT INTO `td_area` VALUES ('43070100', '43070000', '市辖区');
INSERT INTO `td_area` VALUES ('43070200', '43070000', '武陵区');
INSERT INTO `td_area` VALUES ('43070300', '43070000', '鼎城区');
INSERT INTO `td_area` VALUES ('43072100', '43070000', '安乡县');
INSERT INTO `td_area` VALUES ('43072200', '43070000', '汉寿县');
INSERT INTO `td_area` VALUES ('43072300', '43070000', '澧　县');
INSERT INTO `td_area` VALUES ('43072400', '43070000', '临澧县');
INSERT INTO `td_area` VALUES ('43072500', '43070000', '桃源县');
INSERT INTO `td_area` VALUES ('43072600', '43070000', '石门县');
INSERT INTO `td_area` VALUES ('43078100', '43070000', '津市市');
INSERT INTO `td_area` VALUES ('43080000', '43000000', '张家界市');
INSERT INTO `td_area` VALUES ('43080100', '43080000', '市辖区');
INSERT INTO `td_area` VALUES ('43080200', '43080000', '永定区');
INSERT INTO `td_area` VALUES ('43081100', '43080000', '武陵源区');
INSERT INTO `td_area` VALUES ('43082100', '43080000', '慈利县');
INSERT INTO `td_area` VALUES ('43082200', '43080000', '桑植县');
INSERT INTO `td_area` VALUES ('43090000', '43000000', '益阳市');
INSERT INTO `td_area` VALUES ('43090100', '43090000', '市辖区');
INSERT INTO `td_area` VALUES ('43090200', '43090000', '资阳区');
INSERT INTO `td_area` VALUES ('43090300', '43090000', '赫山区');
INSERT INTO `td_area` VALUES ('43092100', '43090000', '南　县');
INSERT INTO `td_area` VALUES ('43092200', '43090000', '桃江县');
INSERT INTO `td_area` VALUES ('43092300', '43090000', '安化县');
INSERT INTO `td_area` VALUES ('43098100', '43090000', '沅江市');
INSERT INTO `td_area` VALUES ('43100000', '43000000', '郴州市');
INSERT INTO `td_area` VALUES ('43100100', '43100000', '市辖区');
INSERT INTO `td_area` VALUES ('43100200', '43100000', '北湖区');
INSERT INTO `td_area` VALUES ('43100300', '43100000', '苏仙区');
INSERT INTO `td_area` VALUES ('43102100', '43100000', '桂阳县');
INSERT INTO `td_area` VALUES ('43102200', '43100000', '宜章县');
INSERT INTO `td_area` VALUES ('43102300', '43100000', '永兴县');
INSERT INTO `td_area` VALUES ('43102400', '43100000', '嘉禾县');
INSERT INTO `td_area` VALUES ('43102500', '43100000', '临武县');
INSERT INTO `td_area` VALUES ('43102600', '43100000', '汝城县');
INSERT INTO `td_area` VALUES ('43102700', '43100000', '桂东县');
INSERT INTO `td_area` VALUES ('43102800', '43100000', '安仁县');
INSERT INTO `td_area` VALUES ('43108100', '43100000', '资兴市');
INSERT INTO `td_area` VALUES ('43110000', '43000000', '永州市');
INSERT INTO `td_area` VALUES ('43110100', '43110000', '市辖区');
INSERT INTO `td_area` VALUES ('43110200', '43110000', '芝山区');
INSERT INTO `td_area` VALUES ('43110300', '43110000', '冷水滩区');
INSERT INTO `td_area` VALUES ('43112100', '43110000', '祁阳县');
INSERT INTO `td_area` VALUES ('43112200', '43110000', '东安县');
INSERT INTO `td_area` VALUES ('43112300', '43110000', '双牌县');
INSERT INTO `td_area` VALUES ('43112400', '43110000', '道　县');
INSERT INTO `td_area` VALUES ('43112500', '43110000', '江永县');
INSERT INTO `td_area` VALUES ('43112600', '43110000', '宁远县');
INSERT INTO `td_area` VALUES ('43112700', '43110000', '蓝山县');
INSERT INTO `td_area` VALUES ('43112800', '43110000', '新田县');
INSERT INTO `td_area` VALUES ('43112900', '43110000', '江华瑶族自治县');
INSERT INTO `td_area` VALUES ('43120000', '43000000', '怀化市');
INSERT INTO `td_area` VALUES ('43120100', '43120000', '市辖区');
INSERT INTO `td_area` VALUES ('43120200', '43120000', '鹤城区');
INSERT INTO `td_area` VALUES ('43122100', '43120000', '中方县');
INSERT INTO `td_area` VALUES ('43122200', '43120000', '沅陵县');
INSERT INTO `td_area` VALUES ('43122300', '43120000', '辰溪县');
INSERT INTO `td_area` VALUES ('43122400', '43120000', '溆浦县');
INSERT INTO `td_area` VALUES ('43122500', '43120000', '会同县');
INSERT INTO `td_area` VALUES ('43122600', '43120000', '麻阳苗族自治县');
INSERT INTO `td_area` VALUES ('43122700', '43120000', '新晃侗族自治县');
INSERT INTO `td_area` VALUES ('43122800', '43120000', '芷江侗族自治县');
INSERT INTO `td_area` VALUES ('43122900', '43120000', '靖州苗族侗族自治县');
INSERT INTO `td_area` VALUES ('43123000', '43120000', '通道侗族自治县');
INSERT INTO `td_area` VALUES ('43128100', '43120000', '洪江市');
INSERT INTO `td_area` VALUES ('43130000', '43000000', '娄底市');
INSERT INTO `td_area` VALUES ('43130100', '43130000', '市辖区');
INSERT INTO `td_area` VALUES ('43130200', '43130000', '娄星区');
INSERT INTO `td_area` VALUES ('43132100', '43130000', '双峰县');
INSERT INTO `td_area` VALUES ('43132200', '43130000', '新化县');
INSERT INTO `td_area` VALUES ('43138100', '43130000', '冷水江市');
INSERT INTO `td_area` VALUES ('43138200', '43130000', '涟源市');
INSERT INTO `td_area` VALUES ('43310000', '43000000', '湘西土家族苗族自治州');
INSERT INTO `td_area` VALUES ('43310100', '43310000', '吉首市');
INSERT INTO `td_area` VALUES ('43312200', '43310000', '泸溪县');
INSERT INTO `td_area` VALUES ('43312300', '43310000', '凤凰县');
INSERT INTO `td_area` VALUES ('43312400', '43310000', '花垣县');
INSERT INTO `td_area` VALUES ('43312500', '43310000', '保靖县');
INSERT INTO `td_area` VALUES ('43312600', '43310000', '古丈县');
INSERT INTO `td_area` VALUES ('43312700', '43310000', '永顺县');
INSERT INTO `td_area` VALUES ('43313000', '43310000', '龙山县');
INSERT INTO `td_area` VALUES ('44000000', '0', '广东省');
INSERT INTO `td_area` VALUES ('44010000', '44000000', '广州市');
INSERT INTO `td_area` VALUES ('44010100', '44010000', '市辖区');
INSERT INTO `td_area` VALUES ('44010200', '44010000', '东山区');
INSERT INTO `td_area` VALUES ('44010300', '44010000', '荔湾区');
INSERT INTO `td_area` VALUES ('44010400', '44010000', '越秀区');
INSERT INTO `td_area` VALUES ('44010500', '44010000', '海珠区');
INSERT INTO `td_area` VALUES ('44010600', '44010000', '天河区');
INSERT INTO `td_area` VALUES ('44010700', '44010000', '芳村区');
INSERT INTO `td_area` VALUES ('44011100', '44010000', '白云区');
INSERT INTO `td_area` VALUES ('44011200', '44010000', '黄埔区');
INSERT INTO `td_area` VALUES ('44011300', '44010000', '番禺区');
INSERT INTO `td_area` VALUES ('44011400', '44010000', '花都区');
INSERT INTO `td_area` VALUES ('44018300', '44010000', '增城市');
INSERT INTO `td_area` VALUES ('44018400', '44010000', '从化市');
INSERT INTO `td_area` VALUES ('44020000', '44000000', '韶关市');
INSERT INTO `td_area` VALUES ('44020100', '44020000', '市辖区');
INSERT INTO `td_area` VALUES ('44020300', '44020000', '武江区');
INSERT INTO `td_area` VALUES ('44020400', '44020000', '浈江区');
INSERT INTO `td_area` VALUES ('44020500', '44020000', '曲江区');
INSERT INTO `td_area` VALUES ('44022200', '44020000', '始兴县');
INSERT INTO `td_area` VALUES ('44022400', '44020000', '仁化县');
INSERT INTO `td_area` VALUES ('44022900', '44020000', '翁源县');
INSERT INTO `td_area` VALUES ('44023200', '44020000', '乳源瑶族自治县');
INSERT INTO `td_area` VALUES ('44023300', '44020000', '新丰县');
INSERT INTO `td_area` VALUES ('44028100', '44020000', '乐昌市');
INSERT INTO `td_area` VALUES ('44028200', '44020000', '南雄市');
INSERT INTO `td_area` VALUES ('44030000', '44000000', '深圳市');
INSERT INTO `td_area` VALUES ('44030100', '44030000', '市辖区');
INSERT INTO `td_area` VALUES ('44030300', '44030000', '罗湖区');
INSERT INTO `td_area` VALUES ('44030400', '44030000', '福田区');
INSERT INTO `td_area` VALUES ('44030500', '44030000', '南山区');
INSERT INTO `td_area` VALUES ('44030600', '44030000', '宝安区');
INSERT INTO `td_area` VALUES ('44030700', '44030000', '龙岗区');
INSERT INTO `td_area` VALUES ('44030800', '44030000', '盐田区');
INSERT INTO `td_area` VALUES ('44040000', '44000000', '珠海市');
INSERT INTO `td_area` VALUES ('44040100', '44040000', '市辖区');
INSERT INTO `td_area` VALUES ('44040200', '44040000', '香洲区');
INSERT INTO `td_area` VALUES ('44040300', '44040000', '斗门区');
INSERT INTO `td_area` VALUES ('44040400', '44040000', '金湾区');
INSERT INTO `td_area` VALUES ('44050000', '44000000', '汕头市');
INSERT INTO `td_area` VALUES ('44050100', '44050000', '市辖区');
INSERT INTO `td_area` VALUES ('44050700', '44050000', '龙湖区');
INSERT INTO `td_area` VALUES ('44051100', '44050000', '金平区');
INSERT INTO `td_area` VALUES ('44051200', '44050000', '濠江区');
INSERT INTO `td_area` VALUES ('44051300', '44050000', '潮阳区');
INSERT INTO `td_area` VALUES ('44051400', '44050000', '潮南区');
INSERT INTO `td_area` VALUES ('44051500', '44050000', '澄海区');
INSERT INTO `td_area` VALUES ('44052300', '44050000', '南澳县');
INSERT INTO `td_area` VALUES ('44060000', '44000000', '佛山市');
INSERT INTO `td_area` VALUES ('44060100', '44060000', '市辖区');
INSERT INTO `td_area` VALUES ('44060400', '44060000', '禅城区');
INSERT INTO `td_area` VALUES ('44060500', '44060000', '南海区');
INSERT INTO `td_area` VALUES ('44060600', '44060000', '顺德区');
INSERT INTO `td_area` VALUES ('44060700', '44060000', '三水区');
INSERT INTO `td_area` VALUES ('44060800', '44060000', '高明区');
INSERT INTO `td_area` VALUES ('44070000', '44000000', '江门市');
INSERT INTO `td_area` VALUES ('44070100', '44070000', '市辖区');
INSERT INTO `td_area` VALUES ('44070300', '44070000', '蓬江区');
INSERT INTO `td_area` VALUES ('44070400', '44070000', '江海区');
INSERT INTO `td_area` VALUES ('44070500', '44070000', '新会区');
INSERT INTO `td_area` VALUES ('44078100', '44070000', '台山市');
INSERT INTO `td_area` VALUES ('44078300', '44070000', '开平市');
INSERT INTO `td_area` VALUES ('44078400', '44070000', '鹤山市');
INSERT INTO `td_area` VALUES ('44078500', '44070000', '恩平市');
INSERT INTO `td_area` VALUES ('44080000', '44000000', '湛江市');
INSERT INTO `td_area` VALUES ('44080100', '44080000', '市辖区');
INSERT INTO `td_area` VALUES ('44080200', '44080000', '赤坎区');
INSERT INTO `td_area` VALUES ('44080300', '44080000', '霞山区');
INSERT INTO `td_area` VALUES ('44080400', '44080000', '坡头区');
INSERT INTO `td_area` VALUES ('44081100', '44080000', '麻章区');
INSERT INTO `td_area` VALUES ('44082300', '44080000', '遂溪县');
INSERT INTO `td_area` VALUES ('44082500', '44080000', '徐闻县');
INSERT INTO `td_area` VALUES ('44088100', '44080000', '廉江市');
INSERT INTO `td_area` VALUES ('44088200', '44080000', '雷州市');
INSERT INTO `td_area` VALUES ('44088300', '44080000', '吴川市');
INSERT INTO `td_area` VALUES ('44090000', '44000000', '茂名市');
INSERT INTO `td_area` VALUES ('44090100', '44090000', '市辖区');
INSERT INTO `td_area` VALUES ('44090200', '44090000', '茂南区');
INSERT INTO `td_area` VALUES ('44090300', '44090000', '茂港区');
INSERT INTO `td_area` VALUES ('44092300', '44090000', '电白县');
INSERT INTO `td_area` VALUES ('44098100', '44090000', '高州市');
INSERT INTO `td_area` VALUES ('44098200', '44090000', '化州市');
INSERT INTO `td_area` VALUES ('44098300', '44090000', '信宜市');
INSERT INTO `td_area` VALUES ('44120000', '44000000', '肇庆市');
INSERT INTO `td_area` VALUES ('44120100', '44120000', '市辖区');
INSERT INTO `td_area` VALUES ('44120200', '44120000', '端州区');
INSERT INTO `td_area` VALUES ('44120300', '44120000', '鼎湖区');
INSERT INTO `td_area` VALUES ('44122300', '44120000', '广宁县');
INSERT INTO `td_area` VALUES ('44122400', '44120000', '怀集县');
INSERT INTO `td_area` VALUES ('44122500', '44120000', '封开县');
INSERT INTO `td_area` VALUES ('44122600', '44120000', '德庆县');
INSERT INTO `td_area` VALUES ('44128300', '44120000', '高要市');
INSERT INTO `td_area` VALUES ('44128400', '44120000', '四会市');
INSERT INTO `td_area` VALUES ('44130000', '44000000', '惠州市');
INSERT INTO `td_area` VALUES ('44130100', '44130000', '市辖区');
INSERT INTO `td_area` VALUES ('44130200', '44130000', '惠城区');
INSERT INTO `td_area` VALUES ('44130300', '44130000', '惠阳区');
INSERT INTO `td_area` VALUES ('44132200', '44130000', '博罗县');
INSERT INTO `td_area` VALUES ('44132300', '44130000', '惠东县');
INSERT INTO `td_area` VALUES ('44132400', '44130000', '龙门县');
INSERT INTO `td_area` VALUES ('44140000', '44000000', '梅州市');
INSERT INTO `td_area` VALUES ('44140100', '44140000', '市辖区');
INSERT INTO `td_area` VALUES ('44140200', '44140000', '梅江区');
INSERT INTO `td_area` VALUES ('44142100', '44140000', '梅　县');
INSERT INTO `td_area` VALUES ('44142200', '44140000', '大埔县');
INSERT INTO `td_area` VALUES ('44142300', '44140000', '丰顺县');
INSERT INTO `td_area` VALUES ('44142400', '44140000', '五华县');
INSERT INTO `td_area` VALUES ('44142600', '44140000', '平远县');
INSERT INTO `td_area` VALUES ('44142700', '44140000', '蕉岭县');
INSERT INTO `td_area` VALUES ('44148100', '44140000', '兴宁市');
INSERT INTO `td_area` VALUES ('44150000', '44000000', '汕尾市');
INSERT INTO `td_area` VALUES ('44150100', '44150000', '市辖区');
INSERT INTO `td_area` VALUES ('44150200', '44150000', '城　区');
INSERT INTO `td_area` VALUES ('44152100', '44150000', '海丰县');
INSERT INTO `td_area` VALUES ('44152300', '44150000', '陆河县');
INSERT INTO `td_area` VALUES ('44158100', '44150000', '陆丰市');
INSERT INTO `td_area` VALUES ('44160000', '44000000', '河源市');
INSERT INTO `td_area` VALUES ('44160100', '44160000', '市辖区');
INSERT INTO `td_area` VALUES ('44160200', '44160000', '源城区');
INSERT INTO `td_area` VALUES ('44162100', '44160000', '紫金县');
INSERT INTO `td_area` VALUES ('44162200', '44160000', '龙川县');
INSERT INTO `td_area` VALUES ('44162300', '44160000', '连平县');
INSERT INTO `td_area` VALUES ('44162400', '44160000', '和平县');
INSERT INTO `td_area` VALUES ('44162500', '44160000', '东源县');
INSERT INTO `td_area` VALUES ('44170000', '44000000', '阳江市');
INSERT INTO `td_area` VALUES ('44170100', '44170000', '市辖区');
INSERT INTO `td_area` VALUES ('44170200', '44170000', '江城区');
INSERT INTO `td_area` VALUES ('44172100', '44170000', '阳西县');
INSERT INTO `td_area` VALUES ('44172300', '44170000', '阳东县');
INSERT INTO `td_area` VALUES ('44178100', '44170000', '阳春市');
INSERT INTO `td_area` VALUES ('44180000', '44000000', '清远市');
INSERT INTO `td_area` VALUES ('44180100', '44180000', '市辖区');
INSERT INTO `td_area` VALUES ('44180200', '44180000', '清城区');
INSERT INTO `td_area` VALUES ('44182100', '44180000', '佛冈县');
INSERT INTO `td_area` VALUES ('44182300', '44180000', '阳山县');
INSERT INTO `td_area` VALUES ('44182500', '44180000', '连山壮族瑶族自治县');
INSERT INTO `td_area` VALUES ('44182600', '44180000', '连南瑶族自治县');
INSERT INTO `td_area` VALUES ('44182700', '44180000', '清新县');
INSERT INTO `td_area` VALUES ('44188100', '44180000', '英德市');
INSERT INTO `td_area` VALUES ('44188200', '44180000', '连州市');
INSERT INTO `td_area` VALUES ('44190000', '44000000', '东莞市');
INSERT INTO `td_area` VALUES ('44200000', '44000000', '中山市');
INSERT INTO `td_area` VALUES ('44510000', '44000000', '潮州市');
INSERT INTO `td_area` VALUES ('44510100', '44510000', '市辖区');
INSERT INTO `td_area` VALUES ('44510200', '44510000', '湘桥区');
INSERT INTO `td_area` VALUES ('44512100', '44510000', '潮安县');
INSERT INTO `td_area` VALUES ('44512200', '44510000', '饶平县');
INSERT INTO `td_area` VALUES ('44520000', '44000000', '揭阳市');
INSERT INTO `td_area` VALUES ('44520100', '44520000', '市辖区');
INSERT INTO `td_area` VALUES ('44520200', '44520000', '榕城区');
INSERT INTO `td_area` VALUES ('44522100', '44520000', '揭东县');
INSERT INTO `td_area` VALUES ('44522200', '44520000', '揭西县');
INSERT INTO `td_area` VALUES ('44522400', '44520000', '惠来县');
INSERT INTO `td_area` VALUES ('44528100', '44520000', '普宁市');
INSERT INTO `td_area` VALUES ('44530000', '44000000', '云浮市');
INSERT INTO `td_area` VALUES ('44530100', '44530000', '市辖区');
INSERT INTO `td_area` VALUES ('44530200', '44530000', '云城区');
INSERT INTO `td_area` VALUES ('44532100', '44530000', '新兴县');
INSERT INTO `td_area` VALUES ('44532200', '44530000', '郁南县');
INSERT INTO `td_area` VALUES ('44532300', '44530000', '云安县');
INSERT INTO `td_area` VALUES ('44538100', '44530000', '罗定市');
INSERT INTO `td_area` VALUES ('45000000', '0', '广西壮族自治区');
INSERT INTO `td_area` VALUES ('45010000', '45000000', '南宁市');
INSERT INTO `td_area` VALUES ('45010100', '45010000', '市辖区');
INSERT INTO `td_area` VALUES ('45010200', '45010000', '兴宁区');
INSERT INTO `td_area` VALUES ('45010300', '45010000', '青秀区');
INSERT INTO `td_area` VALUES ('45010500', '45010000', '江南区');
INSERT INTO `td_area` VALUES ('45010700', '45010000', '西乡塘区');
INSERT INTO `td_area` VALUES ('45010800', '45010000', '良庆区');
INSERT INTO `td_area` VALUES ('45010900', '45010000', '邕宁区');
INSERT INTO `td_area` VALUES ('45012200', '45010000', '武鸣县');
INSERT INTO `td_area` VALUES ('45012300', '45010000', '隆安县');
INSERT INTO `td_area` VALUES ('45012400', '45010000', '马山县');
INSERT INTO `td_area` VALUES ('45012500', '45010000', '上林县');
INSERT INTO `td_area` VALUES ('45012600', '45010000', '宾阳县');
INSERT INTO `td_area` VALUES ('45012700', '45010000', '横　县');
INSERT INTO `td_area` VALUES ('45020000', '45000000', '柳州市');
INSERT INTO `td_area` VALUES ('45020100', '45020000', '市辖区');
INSERT INTO `td_area` VALUES ('45020200', '45020000', '城中区');
INSERT INTO `td_area` VALUES ('45020300', '45020000', '鱼峰区');
INSERT INTO `td_area` VALUES ('45020400', '45020000', '柳南区');
INSERT INTO `td_area` VALUES ('45020500', '45020000', '柳北区');
INSERT INTO `td_area` VALUES ('45022100', '45020000', '柳江县');
INSERT INTO `td_area` VALUES ('45022200', '45020000', '柳城县');
INSERT INTO `td_area` VALUES ('45022300', '45020000', '鹿寨县');
INSERT INTO `td_area` VALUES ('45022400', '45020000', '融安县');
INSERT INTO `td_area` VALUES ('45022500', '45020000', '融水苗族自治县');
INSERT INTO `td_area` VALUES ('45022600', '45020000', '三江侗族自治县');
INSERT INTO `td_area` VALUES ('45030000', '45000000', '桂林市');
INSERT INTO `td_area` VALUES ('45030100', '45030000', '市辖区');
INSERT INTO `td_area` VALUES ('45030200', '45030000', '秀峰区');
INSERT INTO `td_area` VALUES ('45030300', '45030000', '叠彩区');
INSERT INTO `td_area` VALUES ('45030400', '45030000', '象山区');
INSERT INTO `td_area` VALUES ('45030500', '45030000', '七星区');
INSERT INTO `td_area` VALUES ('45031100', '45030000', '雁山区');
INSERT INTO `td_area` VALUES ('45032100', '45030000', '阳朔县');
INSERT INTO `td_area` VALUES ('45032200', '45030000', '临桂县');
INSERT INTO `td_area` VALUES ('45032300', '45030000', '灵川县');
INSERT INTO `td_area` VALUES ('45032400', '45030000', '全州县');
INSERT INTO `td_area` VALUES ('45032500', '45030000', '兴安县');
INSERT INTO `td_area` VALUES ('45032600', '45030000', '永福县');
INSERT INTO `td_area` VALUES ('45032700', '45030000', '灌阳县');
INSERT INTO `td_area` VALUES ('45032800', '45030000', '龙胜各族自治县');
INSERT INTO `td_area` VALUES ('45032900', '45030000', '资源县');
INSERT INTO `td_area` VALUES ('45033000', '45030000', '平乐县');
INSERT INTO `td_area` VALUES ('45033100', '45030000', '荔蒲县');
INSERT INTO `td_area` VALUES ('45033200', '45030000', '恭城瑶族自治县');
INSERT INTO `td_area` VALUES ('45040000', '45000000', '梧州市');
INSERT INTO `td_area` VALUES ('45040100', '45040000', '市辖区');
INSERT INTO `td_area` VALUES ('45040300', '45040000', '万秀区');
INSERT INTO `td_area` VALUES ('45040400', '45040000', '蝶山区');
INSERT INTO `td_area` VALUES ('45040500', '45040000', '长洲区');
INSERT INTO `td_area` VALUES ('45042100', '45040000', '苍梧县');
INSERT INTO `td_area` VALUES ('45042200', '45040000', '藤　县');
INSERT INTO `td_area` VALUES ('45042300', '45040000', '蒙山县');
INSERT INTO `td_area` VALUES ('45048100', '45040000', '岑溪市');
INSERT INTO `td_area` VALUES ('45050000', '45000000', '北海市');
INSERT INTO `td_area` VALUES ('45050100', '45050000', '市辖区');
INSERT INTO `td_area` VALUES ('45050200', '45050000', '海城区');
INSERT INTO `td_area` VALUES ('45050300', '45050000', '银海区');
INSERT INTO `td_area` VALUES ('45051200', '45050000', '铁山港区');
INSERT INTO `td_area` VALUES ('45052100', '45050000', '合浦县');
INSERT INTO `td_area` VALUES ('45060000', '45000000', '防城港市');
INSERT INTO `td_area` VALUES ('45060100', '45060000', '市辖区');
INSERT INTO `td_area` VALUES ('45060200', '45060000', '港口区');
INSERT INTO `td_area` VALUES ('45060300', '45060000', '防城区');
INSERT INTO `td_area` VALUES ('45062100', '45060000', '上思县');
INSERT INTO `td_area` VALUES ('45068100', '45060000', '东兴市');
INSERT INTO `td_area` VALUES ('45070000', '45000000', '钦州市');
INSERT INTO `td_area` VALUES ('45070100', '45070000', '市辖区');
INSERT INTO `td_area` VALUES ('45070200', '45070000', '钦南区');
INSERT INTO `td_area` VALUES ('45070300', '45070000', '钦北区');
INSERT INTO `td_area` VALUES ('45072100', '45070000', '灵山县');
INSERT INTO `td_area` VALUES ('45072200', '45070000', '浦北县');
INSERT INTO `td_area` VALUES ('45080000', '45000000', '贵港市');
INSERT INTO `td_area` VALUES ('45080100', '45080000', '市辖区');
INSERT INTO `td_area` VALUES ('45080200', '45080000', '港北区');
INSERT INTO `td_area` VALUES ('45080300', '45080000', '港南区');
INSERT INTO `td_area` VALUES ('45080400', '45080000', '覃塘区');
INSERT INTO `td_area` VALUES ('45082100', '45080000', '平南县');
INSERT INTO `td_area` VALUES ('45088100', '45080000', '桂平市');
INSERT INTO `td_area` VALUES ('45090000', '45000000', '玉林市');
INSERT INTO `td_area` VALUES ('45090100', '45090000', '市辖区');
INSERT INTO `td_area` VALUES ('45090200', '45090000', '玉州区');
INSERT INTO `td_area` VALUES ('45092100', '45090000', '容　县');
INSERT INTO `td_area` VALUES ('45092200', '45090000', '陆川县');
INSERT INTO `td_area` VALUES ('45092300', '45090000', '博白县');
INSERT INTO `td_area` VALUES ('45092400', '45090000', '兴业县');
INSERT INTO `td_area` VALUES ('45098100', '45090000', '北流市');
INSERT INTO `td_area` VALUES ('45100000', '45000000', '百色市');
INSERT INTO `td_area` VALUES ('45100100', '45100000', '市辖区');
INSERT INTO `td_area` VALUES ('45100200', '45100000', '右江区');
INSERT INTO `td_area` VALUES ('45102100', '45100000', '田阳县');
INSERT INTO `td_area` VALUES ('45102200', '45100000', '田东县');
INSERT INTO `td_area` VALUES ('45102300', '45100000', '平果县');
INSERT INTO `td_area` VALUES ('45102400', '45100000', '德保县');
INSERT INTO `td_area` VALUES ('45102500', '45100000', '靖西县');
INSERT INTO `td_area` VALUES ('45102600', '45100000', '那坡县');
INSERT INTO `td_area` VALUES ('45102700', '45100000', '凌云县');
INSERT INTO `td_area` VALUES ('45102800', '45100000', '乐业县');
INSERT INTO `td_area` VALUES ('45102900', '45100000', '田林县');
INSERT INTO `td_area` VALUES ('45103000', '45100000', '西林县');
INSERT INTO `td_area` VALUES ('45103100', '45100000', '隆林各族自治县');
INSERT INTO `td_area` VALUES ('45110000', '45000000', '贺州市');
INSERT INTO `td_area` VALUES ('45110100', '45110000', '市辖区');
INSERT INTO `td_area` VALUES ('45110200', '45110000', '八步区');
INSERT INTO `td_area` VALUES ('45112100', '45110000', '昭平县');
INSERT INTO `td_area` VALUES ('45112200', '45110000', '钟山县');
INSERT INTO `td_area` VALUES ('45112300', '45110000', '富川瑶族自治县');
INSERT INTO `td_area` VALUES ('45120000', '45000000', '河池市');
INSERT INTO `td_area` VALUES ('45120100', '45120000', '市辖区');
INSERT INTO `td_area` VALUES ('45120200', '45120000', '金城江区');
INSERT INTO `td_area` VALUES ('45122100', '45120000', '南丹县');
INSERT INTO `td_area` VALUES ('45122200', '45120000', '天峨县');
INSERT INTO `td_area` VALUES ('45122300', '45120000', '凤山县');
INSERT INTO `td_area` VALUES ('45122400', '45120000', '东兰县');
INSERT INTO `td_area` VALUES ('45122500', '45120000', '罗城仫佬族自治县');
INSERT INTO `td_area` VALUES ('45122600', '45120000', '环江毛南族自治县');
INSERT INTO `td_area` VALUES ('45122700', '45120000', '巴马瑶族自治县');
INSERT INTO `td_area` VALUES ('45122800', '45120000', '都安瑶族自治县');
INSERT INTO `td_area` VALUES ('45122900', '45120000', '大化瑶族自治县');
INSERT INTO `td_area` VALUES ('45128100', '45120000', '宜州市');
INSERT INTO `td_area` VALUES ('45130000', '45000000', '来宾市');
INSERT INTO `td_area` VALUES ('45130100', '45130000', '市辖区');
INSERT INTO `td_area` VALUES ('45130200', '45130000', '兴宾区');
INSERT INTO `td_area` VALUES ('45132100', '45130000', '忻城县');
INSERT INTO `td_area` VALUES ('45132200', '45130000', '象州县');
INSERT INTO `td_area` VALUES ('45132300', '45130000', '武宣县');
INSERT INTO `td_area` VALUES ('45132400', '45130000', '金秀瑶族自治县');
INSERT INTO `td_area` VALUES ('45138100', '45130000', '合山市');
INSERT INTO `td_area` VALUES ('45140000', '45000000', '崇左市');
INSERT INTO `td_area` VALUES ('45140100', '45140000', '市辖区');
INSERT INTO `td_area` VALUES ('45140200', '45140000', '江洲区');
INSERT INTO `td_area` VALUES ('45142100', '45140000', '扶绥县');
INSERT INTO `td_area` VALUES ('45142200', '45140000', '宁明县');
INSERT INTO `td_area` VALUES ('45142300', '45140000', '龙州县');
INSERT INTO `td_area` VALUES ('45142400', '45140000', '大新县');
INSERT INTO `td_area` VALUES ('45142500', '45140000', '天等县');
INSERT INTO `td_area` VALUES ('45148100', '45140000', '凭祥市');
INSERT INTO `td_area` VALUES ('46000000', '0', '海南省');
INSERT INTO `td_area` VALUES ('46010000', '46000000', '海口市');
INSERT INTO `td_area` VALUES ('46010100', '46010000', '市辖区');
INSERT INTO `td_area` VALUES ('46010500', '46010000', '秀英区');
INSERT INTO `td_area` VALUES ('46010600', '46010000', '龙华区');
INSERT INTO `td_area` VALUES ('46010700', '46010000', '琼山区');
INSERT INTO `td_area` VALUES ('46010800', '46010000', '美兰区');
INSERT INTO `td_area` VALUES ('46020000', '46000000', '三亚市');
INSERT INTO `td_area` VALUES ('46020100', '46020000', '市辖区');
INSERT INTO `td_area` VALUES ('46900000', '46000000', '省直辖县级行政单位');
INSERT INTO `td_area` VALUES ('46900100', '46900000', '五指山市');
INSERT INTO `td_area` VALUES ('46900200', '46900000', '琼海市');
INSERT INTO `td_area` VALUES ('46900300', '46900000', '儋州市');
INSERT INTO `td_area` VALUES ('46900500', '46900000', '文昌市');
INSERT INTO `td_area` VALUES ('46900600', '46900000', '万宁市');
INSERT INTO `td_area` VALUES ('46900700', '46900000', '东方市');
INSERT INTO `td_area` VALUES ('46902500', '46900000', '定安县');
INSERT INTO `td_area` VALUES ('46902600', '46900000', '屯昌县');
INSERT INTO `td_area` VALUES ('46902700', '46900000', '澄迈县');
INSERT INTO `td_area` VALUES ('46902800', '46900000', '临高县');
INSERT INTO `td_area` VALUES ('46903000', '46900000', '白沙黎族自治县');
INSERT INTO `td_area` VALUES ('46903100', '46900000', '昌江黎族自治县');
INSERT INTO `td_area` VALUES ('46903300', '46900000', '乐东黎族自治县');
INSERT INTO `td_area` VALUES ('46903400', '46900000', '陵水黎族自治县');
INSERT INTO `td_area` VALUES ('46903500', '46900000', '保亭黎族苗族自治县');
INSERT INTO `td_area` VALUES ('46903600', '46900000', '琼中黎族苗族自治县');
INSERT INTO `td_area` VALUES ('46903700', '46900000', '西沙群岛');
INSERT INTO `td_area` VALUES ('46903800', '46900000', '南沙群岛');
INSERT INTO `td_area` VALUES ('46903900', '46900000', '中沙群岛的岛礁及其海域');
INSERT INTO `td_area` VALUES ('50000000', '0', '重庆市');
INSERT INTO `td_area` VALUES ('50010000', '50000000', '市辖区');
INSERT INTO `td_area` VALUES ('50010100', '50010000', '万州区');
INSERT INTO `td_area` VALUES ('50010200', '50010000', '涪陵区');
INSERT INTO `td_area` VALUES ('50010300', '50010000', '渝中区');
INSERT INTO `td_area` VALUES ('50010400', '50010000', '大渡口区');
INSERT INTO `td_area` VALUES ('50010500', '50010000', '江北区');
INSERT INTO `td_area` VALUES ('50010600', '50010000', '沙坪坝区');
INSERT INTO `td_area` VALUES ('50010700', '50010000', '九龙坡区');
INSERT INTO `td_area` VALUES ('50010800', '50010000', '南岸区');
INSERT INTO `td_area` VALUES ('50010900', '50010000', '北碚区');
INSERT INTO `td_area` VALUES ('50011000', '50010000', '万盛区');
INSERT INTO `td_area` VALUES ('50011100', '50010000', '双桥区');
INSERT INTO `td_area` VALUES ('50011200', '50010000', '渝北区');
INSERT INTO `td_area` VALUES ('50011300', '50010000', '巴南区');
INSERT INTO `td_area` VALUES ('50011400', '50010000', '黔江区');
INSERT INTO `td_area` VALUES ('50011500', '50010000', '长寿区');
INSERT INTO `td_area` VALUES ('50020000', '50000000', '县');
INSERT INTO `td_area` VALUES ('50022200', '50020000', '綦江县');
INSERT INTO `td_area` VALUES ('50022300', '50020000', '潼南县');
INSERT INTO `td_area` VALUES ('50022400', '50020000', '铜梁县');
INSERT INTO `td_area` VALUES ('50022500', '50020000', '大足县');
INSERT INTO `td_area` VALUES ('50022600', '50020000', '荣昌县');
INSERT INTO `td_area` VALUES ('50022700', '50020000', '璧山县');
INSERT INTO `td_area` VALUES ('50022800', '50020000', '梁平县');
INSERT INTO `td_area` VALUES ('50022900', '50020000', '城口县');
INSERT INTO `td_area` VALUES ('50023000', '50020000', '丰都县');
INSERT INTO `td_area` VALUES ('50023100', '50020000', '垫江县');
INSERT INTO `td_area` VALUES ('50023200', '50020000', '武隆县');
INSERT INTO `td_area` VALUES ('50023300', '50020000', '忠　县');
INSERT INTO `td_area` VALUES ('50023400', '50020000', '开　县');
INSERT INTO `td_area` VALUES ('50023500', '50020000', '云阳县');
INSERT INTO `td_area` VALUES ('50023600', '50020000', '奉节县');
INSERT INTO `td_area` VALUES ('50023700', '50020000', '巫山县');
INSERT INTO `td_area` VALUES ('50023800', '50020000', '巫溪县');
INSERT INTO `td_area` VALUES ('50024000', '50020000', '石柱土家族自治县');
INSERT INTO `td_area` VALUES ('50024100', '50020000', '秀山土家族苗族自治县');
INSERT INTO `td_area` VALUES ('50024200', '50020000', '酉阳土家族苗族自治县');
INSERT INTO `td_area` VALUES ('50024300', '50020000', '彭水苗族土家族自治县');
INSERT INTO `td_area` VALUES ('50030000', '50000000', '市');
INSERT INTO `td_area` VALUES ('50038100', '50030000', '江津市');
INSERT INTO `td_area` VALUES ('50038200', '50030000', '合川市');
INSERT INTO `td_area` VALUES ('50038300', '50030000', '永川市');
INSERT INTO `td_area` VALUES ('50038400', '50030000', '南川市');
INSERT INTO `td_area` VALUES ('51000000', '0', '四川省');
INSERT INTO `td_area` VALUES ('51010000', '51000000', '成都市');
INSERT INTO `td_area` VALUES ('51010100', '51010000', '市辖区');
INSERT INTO `td_area` VALUES ('51010400', '51010000', '锦江区');
INSERT INTO `td_area` VALUES ('51010500', '51010000', '青羊区');
INSERT INTO `td_area` VALUES ('51010600', '51010000', '金牛区');
INSERT INTO `td_area` VALUES ('51010700', '51010000', '武侯区');
INSERT INTO `td_area` VALUES ('51010800', '51010000', '成华区');
INSERT INTO `td_area` VALUES ('51011200', '51010000', '龙泉驿区');
INSERT INTO `td_area` VALUES ('51011300', '51010000', '青白江区');
INSERT INTO `td_area` VALUES ('51011400', '51010000', '新都区');
INSERT INTO `td_area` VALUES ('51011500', '51010000', '温江区');
INSERT INTO `td_area` VALUES ('51012100', '51010000', '金堂县');
INSERT INTO `td_area` VALUES ('51012200', '51010000', '双流县');
INSERT INTO `td_area` VALUES ('51012400', '51010000', '郫　县');
INSERT INTO `td_area` VALUES ('51012900', '51010000', '大邑县');
INSERT INTO `td_area` VALUES ('51013100', '51010000', '蒲江县');
INSERT INTO `td_area` VALUES ('51013200', '51010000', '新津县');
INSERT INTO `td_area` VALUES ('51018100', '51010000', '都江堰市');
INSERT INTO `td_area` VALUES ('51018200', '51010000', '彭州市');
INSERT INTO `td_area` VALUES ('51018300', '51010000', '邛崃市');
INSERT INTO `td_area` VALUES ('51018400', '51010000', '崇州市');
INSERT INTO `td_area` VALUES ('51030000', '51000000', '自贡市');
INSERT INTO `td_area` VALUES ('51030100', '51030000', '市辖区');
INSERT INTO `td_area` VALUES ('51030200', '51030000', '自流井区');
INSERT INTO `td_area` VALUES ('51030300', '51030000', '贡井区');
INSERT INTO `td_area` VALUES ('51030400', '51030000', '大安区');
INSERT INTO `td_area` VALUES ('51031100', '51030000', '沿滩区');
INSERT INTO `td_area` VALUES ('51032100', '51030000', '荣　县');
INSERT INTO `td_area` VALUES ('51032200', '51030000', '富顺县');
INSERT INTO `td_area` VALUES ('51040000', '51000000', '攀枝花市');
INSERT INTO `td_area` VALUES ('51040100', '51040000', '市辖区');
INSERT INTO `td_area` VALUES ('51040200', '51040000', '东　区');
INSERT INTO `td_area` VALUES ('51040300', '51040000', '西　区');
INSERT INTO `td_area` VALUES ('51041100', '51040000', '仁和区');
INSERT INTO `td_area` VALUES ('51042100', '51040000', '米易县');
INSERT INTO `td_area` VALUES ('51042200', '51040000', '盐边县');
INSERT INTO `td_area` VALUES ('51050000', '51000000', '泸州市');
INSERT INTO `td_area` VALUES ('51050100', '51050000', '市辖区');
INSERT INTO `td_area` VALUES ('51050200', '51050000', '江阳区');
INSERT INTO `td_area` VALUES ('51050300', '51050000', '纳溪区');
INSERT INTO `td_area` VALUES ('51050400', '51050000', '龙马潭区');
INSERT INTO `td_area` VALUES ('51052100', '51050000', '泸　县');
INSERT INTO `td_area` VALUES ('51052200', '51050000', '合江县');
INSERT INTO `td_area` VALUES ('51052400', '51050000', '叙永县');
INSERT INTO `td_area` VALUES ('51052500', '51050000', '古蔺县');
INSERT INTO `td_area` VALUES ('51060000', '51000000', '德阳市');
INSERT INTO `td_area` VALUES ('51060100', '51060000', '市辖区');
INSERT INTO `td_area` VALUES ('51060300', '51060000', '旌阳区');
INSERT INTO `td_area` VALUES ('51062300', '51060000', '中江县');
INSERT INTO `td_area` VALUES ('51062600', '51060000', '罗江县');
INSERT INTO `td_area` VALUES ('51068100', '51060000', '广汉市');
INSERT INTO `td_area` VALUES ('51068200', '51060000', '什邡市');
INSERT INTO `td_area` VALUES ('51068300', '51060000', '绵竹市');
INSERT INTO `td_area` VALUES ('51070000', '51000000', '绵阳市');
INSERT INTO `td_area` VALUES ('51070100', '51070000', '市辖区');
INSERT INTO `td_area` VALUES ('51070300', '51070000', '涪城区');
INSERT INTO `td_area` VALUES ('51070400', '51070000', '游仙区');
INSERT INTO `td_area` VALUES ('51072200', '51070000', '三台县');
INSERT INTO `td_area` VALUES ('51072300', '51070000', '盐亭县');
INSERT INTO `td_area` VALUES ('51072400', '51070000', '安　县');
INSERT INTO `td_area` VALUES ('51072500', '51070000', '梓潼县');
INSERT INTO `td_area` VALUES ('51072600', '51070000', '北川羌族自治县');
INSERT INTO `td_area` VALUES ('51072700', '51070000', '平武县');
INSERT INTO `td_area` VALUES ('51078100', '51070000', '江油市');
INSERT INTO `td_area` VALUES ('51080000', '51000000', '广元市');
INSERT INTO `td_area` VALUES ('51080100', '51080000', '市辖区');
INSERT INTO `td_area` VALUES ('51080200', '51080000', '市中区');
INSERT INTO `td_area` VALUES ('51081100', '51080000', '元坝区');
INSERT INTO `td_area` VALUES ('51081200', '51080000', '朝天区');
INSERT INTO `td_area` VALUES ('51082100', '51080000', '旺苍县');
INSERT INTO `td_area` VALUES ('51082200', '51080000', '青川县');
INSERT INTO `td_area` VALUES ('51082300', '51080000', '剑阁县');
INSERT INTO `td_area` VALUES ('51082400', '51080000', '苍溪县');
INSERT INTO `td_area` VALUES ('51090000', '51000000', '遂宁市');
INSERT INTO `td_area` VALUES ('51090100', '51090000', '市辖区');
INSERT INTO `td_area` VALUES ('51090300', '51090000', '船山区');
INSERT INTO `td_area` VALUES ('51090400', '51090000', '安居区');
INSERT INTO `td_area` VALUES ('51092100', '51090000', '蓬溪县');
INSERT INTO `td_area` VALUES ('51092200', '51090000', '射洪县');
INSERT INTO `td_area` VALUES ('51092300', '51090000', '大英县');
INSERT INTO `td_area` VALUES ('51100000', '51000000', '内江市');
INSERT INTO `td_area` VALUES ('51100100', '51100000', '市辖区');
INSERT INTO `td_area` VALUES ('51100200', '51100000', '市中区');
INSERT INTO `td_area` VALUES ('51101100', '51100000', '东兴区');
INSERT INTO `td_area` VALUES ('51102400', '51100000', '威远县');
INSERT INTO `td_area` VALUES ('51102500', '51100000', '资中县');
INSERT INTO `td_area` VALUES ('51102800', '51100000', '隆昌县');
INSERT INTO `td_area` VALUES ('51110000', '51000000', '乐山市');
INSERT INTO `td_area` VALUES ('51110100', '51110000', '市辖区');
INSERT INTO `td_area` VALUES ('51110200', '51110000', '市中区');
INSERT INTO `td_area` VALUES ('51111100', '51110000', '沙湾区');
INSERT INTO `td_area` VALUES ('51111200', '51110000', '五通桥区');
INSERT INTO `td_area` VALUES ('51111300', '51110000', '金口河区');
INSERT INTO `td_area` VALUES ('51112300', '51110000', '犍为县');
INSERT INTO `td_area` VALUES ('51112400', '51110000', '井研县');
INSERT INTO `td_area` VALUES ('51112600', '51110000', '夹江县');
INSERT INTO `td_area` VALUES ('51112900', '51110000', '沐川县');
INSERT INTO `td_area` VALUES ('51113200', '51110000', '峨边彝族自治县');
INSERT INTO `td_area` VALUES ('51113300', '51110000', '马边彝族自治县');
INSERT INTO `td_area` VALUES ('51118100', '51110000', '峨眉山市');
INSERT INTO `td_area` VALUES ('51130000', '51000000', '南充市');
INSERT INTO `td_area` VALUES ('51130100', '51130000', '市辖区');
INSERT INTO `td_area` VALUES ('51130200', '51130000', '顺庆区');
INSERT INTO `td_area` VALUES ('51130300', '51130000', '高坪区');
INSERT INTO `td_area` VALUES ('51130400', '51130000', '嘉陵区');
INSERT INTO `td_area` VALUES ('51132100', '51130000', '南部县');
INSERT INTO `td_area` VALUES ('51132200', '51130000', '营山县');
INSERT INTO `td_area` VALUES ('51132300', '51130000', '蓬安县');
INSERT INTO `td_area` VALUES ('51132400', '51130000', '仪陇县');
INSERT INTO `td_area` VALUES ('51132500', '51130000', '西充县');
INSERT INTO `td_area` VALUES ('51138100', '51130000', '阆中市');
INSERT INTO `td_area` VALUES ('51140000', '51000000', '眉山市');
INSERT INTO `td_area` VALUES ('51140100', '51140000', '市辖区');
INSERT INTO `td_area` VALUES ('51140200', '51140000', '东坡区');
INSERT INTO `td_area` VALUES ('51142100', '51140000', '仁寿县');
INSERT INTO `td_area` VALUES ('51142200', '51140000', '彭山县');
INSERT INTO `td_area` VALUES ('51142300', '51140000', '洪雅县');
INSERT INTO `td_area` VALUES ('51142400', '51140000', '丹棱县');
INSERT INTO `td_area` VALUES ('51142500', '51140000', '青神县');
INSERT INTO `td_area` VALUES ('51150000', '51000000', '宜宾市');
INSERT INTO `td_area` VALUES ('51150100', '51150000', '市辖区');
INSERT INTO `td_area` VALUES ('51150200', '51150000', '翠屏区');
INSERT INTO `td_area` VALUES ('51152100', '51150000', '宜宾县');
INSERT INTO `td_area` VALUES ('51152200', '51150000', '南溪县');
INSERT INTO `td_area` VALUES ('51152300', '51150000', '江安县');
INSERT INTO `td_area` VALUES ('51152400', '51150000', '长宁县');
INSERT INTO `td_area` VALUES ('51152500', '51150000', '高　县');
INSERT INTO `td_area` VALUES ('51152600', '51150000', '珙　县');
INSERT INTO `td_area` VALUES ('51152700', '51150000', '筠连县');
INSERT INTO `td_area` VALUES ('51152800', '51150000', '兴文县');
INSERT INTO `td_area` VALUES ('51152900', '51150000', '屏山县');
INSERT INTO `td_area` VALUES ('51160000', '51000000', '广安市');
INSERT INTO `td_area` VALUES ('51160100', '51160000', '市辖区');
INSERT INTO `td_area` VALUES ('51160200', '51160000', '广安区');
INSERT INTO `td_area` VALUES ('51162100', '51160000', '岳池县');
INSERT INTO `td_area` VALUES ('51162200', '51160000', '武胜县');
INSERT INTO `td_area` VALUES ('51162300', '51160000', '邻水县');
INSERT INTO `td_area` VALUES ('51168100', '51160000', '华莹市');
INSERT INTO `td_area` VALUES ('51170000', '51000000', '达州市');
INSERT INTO `td_area` VALUES ('51170100', '51170000', '市辖区');
INSERT INTO `td_area` VALUES ('51170200', '51170000', '通川区');
INSERT INTO `td_area` VALUES ('51172100', '51170000', '达　县');
INSERT INTO `td_area` VALUES ('51172200', '51170000', '宣汉县');
INSERT INTO `td_area` VALUES ('51172300', '51170000', '开江县');
INSERT INTO `td_area` VALUES ('51172400', '51170000', '大竹县');
INSERT INTO `td_area` VALUES ('51172500', '51170000', '渠　县');
INSERT INTO `td_area` VALUES ('51178100', '51170000', '万源市');
INSERT INTO `td_area` VALUES ('51180000', '51000000', '雅安市');
INSERT INTO `td_area` VALUES ('51180100', '51180000', '市辖区');
INSERT INTO `td_area` VALUES ('51180200', '51180000', '雨城区');
INSERT INTO `td_area` VALUES ('51182100', '51180000', '名山县');
INSERT INTO `td_area` VALUES ('51182200', '51180000', '荥经县');
INSERT INTO `td_area` VALUES ('51182300', '51180000', '汉源县');
INSERT INTO `td_area` VALUES ('51182400', '51180000', '石棉县');
INSERT INTO `td_area` VALUES ('51182500', '51180000', '天全县');
INSERT INTO `td_area` VALUES ('51182600', '51180000', '芦山县');
INSERT INTO `td_area` VALUES ('51182700', '51180000', '宝兴县');
INSERT INTO `td_area` VALUES ('51190000', '51000000', '巴中市');
INSERT INTO `td_area` VALUES ('51190100', '51190000', '市辖区');
INSERT INTO `td_area` VALUES ('51190200', '51190000', '巴州区');
INSERT INTO `td_area` VALUES ('51192100', '51190000', '通江县');
INSERT INTO `td_area` VALUES ('51192200', '51190000', '南江县');
INSERT INTO `td_area` VALUES ('51192300', '51190000', '平昌县');
INSERT INTO `td_area` VALUES ('51200000', '51000000', '资阳市');
INSERT INTO `td_area` VALUES ('51200100', '51200000', '市辖区');
INSERT INTO `td_area` VALUES ('51200200', '51200000', '雁江区');
INSERT INTO `td_area` VALUES ('51202100', '51200000', '安岳县');
INSERT INTO `td_area` VALUES ('51202200', '51200000', '乐至县');
INSERT INTO `td_area` VALUES ('51208100', '51200000', '简阳市');
INSERT INTO `td_area` VALUES ('51320000', '51000000', '阿坝藏族羌族自治州');
INSERT INTO `td_area` VALUES ('51322100', '51320000', '汶川县');
INSERT INTO `td_area` VALUES ('51322200', '51320000', '理　县');
INSERT INTO `td_area` VALUES ('51322300', '51320000', '茂　县');
INSERT INTO `td_area` VALUES ('51322400', '51320000', '松潘县');
INSERT INTO `td_area` VALUES ('51322500', '51320000', '九寨沟县');
INSERT INTO `td_area` VALUES ('51322600', '51320000', '金川县');
INSERT INTO `td_area` VALUES ('51322700', '51320000', '小金县');
INSERT INTO `td_area` VALUES ('51322800', '51320000', '黑水县');
INSERT INTO `td_area` VALUES ('51322900', '51320000', '马尔康县');
INSERT INTO `td_area` VALUES ('51323000', '51320000', '壤塘县');
INSERT INTO `td_area` VALUES ('51323100', '51320000', '阿坝县');
INSERT INTO `td_area` VALUES ('51323200', '51320000', '若尔盖县');
INSERT INTO `td_area` VALUES ('51323300', '51320000', '红原县');
INSERT INTO `td_area` VALUES ('51330000', '51000000', '甘孜藏族自治州');
INSERT INTO `td_area` VALUES ('51332100', '51330000', '康定县');
INSERT INTO `td_area` VALUES ('51332200', '51330000', '泸定县');
INSERT INTO `td_area` VALUES ('51332300', '51330000', '丹巴县');
INSERT INTO `td_area` VALUES ('51332400', '51330000', '九龙县');
INSERT INTO `td_area` VALUES ('51332500', '51330000', '雅江县');
INSERT INTO `td_area` VALUES ('51332600', '51330000', '道孚县');
INSERT INTO `td_area` VALUES ('51332700', '51330000', '炉霍县');
INSERT INTO `td_area` VALUES ('51332800', '51330000', '甘孜县');
INSERT INTO `td_area` VALUES ('51332900', '51330000', '新龙县');
INSERT INTO `td_area` VALUES ('51333000', '51330000', '德格县');
INSERT INTO `td_area` VALUES ('51333100', '51330000', '白玉县');
INSERT INTO `td_area` VALUES ('51333200', '51330000', '石渠县');
INSERT INTO `td_area` VALUES ('51333300', '51330000', '色达县');
INSERT INTO `td_area` VALUES ('51333400', '51330000', '理塘县');
INSERT INTO `td_area` VALUES ('51333500', '51330000', '巴塘县');
INSERT INTO `td_area` VALUES ('51333600', '51330000', '乡城县');
INSERT INTO `td_area` VALUES ('51333700', '51330000', '稻城县');
INSERT INTO `td_area` VALUES ('51333800', '51330000', '得荣县');
INSERT INTO `td_area` VALUES ('51340000', '51000000', '凉山彝族自治州');
INSERT INTO `td_area` VALUES ('51340100', '51340000', '西昌市');
INSERT INTO `td_area` VALUES ('51342200', '51340000', '木里藏族自治县');
INSERT INTO `td_area` VALUES ('51342300', '51340000', '盐源县');
INSERT INTO `td_area` VALUES ('51342400', '51340000', '德昌县');
INSERT INTO `td_area` VALUES ('51342500', '51340000', '会理县');
INSERT INTO `td_area` VALUES ('51342600', '51340000', '会东县');
INSERT INTO `td_area` VALUES ('51342700', '51340000', '宁南县');
INSERT INTO `td_area` VALUES ('51342800', '51340000', '普格县');
INSERT INTO `td_area` VALUES ('51342900', '51340000', '布拖县');
INSERT INTO `td_area` VALUES ('51343000', '51340000', '金阳县');
INSERT INTO `td_area` VALUES ('51343100', '51340000', '昭觉县');
INSERT INTO `td_area` VALUES ('51343200', '51340000', '喜德县');
INSERT INTO `td_area` VALUES ('51343300', '51340000', '冕宁县');
INSERT INTO `td_area` VALUES ('51343400', '51340000', '越西县');
INSERT INTO `td_area` VALUES ('51343500', '51340000', '甘洛县');
INSERT INTO `td_area` VALUES ('51343600', '51340000', '美姑县');
INSERT INTO `td_area` VALUES ('51343700', '51340000', '雷波县');
INSERT INTO `td_area` VALUES ('52000000', '0', '贵州省');
INSERT INTO `td_area` VALUES ('52010000', '52000000', '贵阳市');
INSERT INTO `td_area` VALUES ('52010100', '52010000', '市辖区');
INSERT INTO `td_area` VALUES ('52010200', '52010000', '南明区');
INSERT INTO `td_area` VALUES ('52010300', '52010000', '云岩区');
INSERT INTO `td_area` VALUES ('52011100', '52010000', '花溪区');
INSERT INTO `td_area` VALUES ('52011200', '52010000', '乌当区');
INSERT INTO `td_area` VALUES ('52011300', '52010000', '白云区');
INSERT INTO `td_area` VALUES ('52011400', '52010000', '小河区');
INSERT INTO `td_area` VALUES ('52012100', '52010000', '开阳县');
INSERT INTO `td_area` VALUES ('52012200', '52010000', '息烽县');
INSERT INTO `td_area` VALUES ('52012300', '52010000', '修文县');
INSERT INTO `td_area` VALUES ('52018100', '52010000', '清镇市');
INSERT INTO `td_area` VALUES ('52020000', '52000000', '六盘水市');
INSERT INTO `td_area` VALUES ('52020100', '52020000', '钟山区');
INSERT INTO `td_area` VALUES ('52020300', '52020000', '六枝特区');
INSERT INTO `td_area` VALUES ('52022100', '52020000', '水城县');
INSERT INTO `td_area` VALUES ('52022200', '52020000', '盘　县');
INSERT INTO `td_area` VALUES ('52030000', '52000000', '遵义市');
INSERT INTO `td_area` VALUES ('52030100', '52030000', '市辖区');
INSERT INTO `td_area` VALUES ('52030200', '52030000', '红花岗区');
INSERT INTO `td_area` VALUES ('52030300', '52030000', '汇川区');
INSERT INTO `td_area` VALUES ('52032100', '52030000', '遵义县');
INSERT INTO `td_area` VALUES ('52032200', '52030000', '桐梓县');
INSERT INTO `td_area` VALUES ('52032300', '52030000', '绥阳县');
INSERT INTO `td_area` VALUES ('52032400', '52030000', '正安县');
INSERT INTO `td_area` VALUES ('52032500', '52030000', '道真仡佬族苗族自治县');
INSERT INTO `td_area` VALUES ('52032600', '52030000', '务川仡佬族苗族自治县');
INSERT INTO `td_area` VALUES ('52032700', '52030000', '凤冈县');
INSERT INTO `td_area` VALUES ('52032800', '52030000', '湄潭县');
INSERT INTO `td_area` VALUES ('52032900', '52030000', '余庆县');
INSERT INTO `td_area` VALUES ('52033000', '52030000', '习水县');
INSERT INTO `td_area` VALUES ('52038100', '52030000', '赤水市');
INSERT INTO `td_area` VALUES ('52038200', '52030000', '仁怀市');
INSERT INTO `td_area` VALUES ('52040000', '52000000', '安顺市');
INSERT INTO `td_area` VALUES ('52040100', '52040000', '市辖区');
INSERT INTO `td_area` VALUES ('52040200', '52040000', '西秀区');
INSERT INTO `td_area` VALUES ('52042100', '52040000', '平坝县');
INSERT INTO `td_area` VALUES ('52042200', '52040000', '普定县');
INSERT INTO `td_area` VALUES ('52042300', '52040000', '镇宁布依族苗族自治县');
INSERT INTO `td_area` VALUES ('52042400', '52040000', '关岭布依族苗族自治县');
INSERT INTO `td_area` VALUES ('52042500', '52040000', '紫云苗族布依族自治县');
INSERT INTO `td_area` VALUES ('52220000', '52000000', '铜仁地区');
INSERT INTO `td_area` VALUES ('52220100', '52220000', '铜仁市');
INSERT INTO `td_area` VALUES ('52222200', '52220000', '江口县');
INSERT INTO `td_area` VALUES ('52222300', '52220000', '玉屏侗族自治县');
INSERT INTO `td_area` VALUES ('52222400', '52220000', '石阡县');
INSERT INTO `td_area` VALUES ('52222500', '52220000', '思南县');
INSERT INTO `td_area` VALUES ('52222600', '52220000', '印江土家族苗族自治县');
INSERT INTO `td_area` VALUES ('52222700', '52220000', '德江县');
INSERT INTO `td_area` VALUES ('52222800', '52220000', '沿河土家族自治县');
INSERT INTO `td_area` VALUES ('52222900', '52220000', '松桃苗族自治县');
INSERT INTO `td_area` VALUES ('52223000', '52220000', '万山特区');
INSERT INTO `td_area` VALUES ('52230000', '52000000', '黔西南布依族苗族自治州');
INSERT INTO `td_area` VALUES ('52230100', '52230000', '兴义市');
INSERT INTO `td_area` VALUES ('52232200', '52230000', '兴仁县');
INSERT INTO `td_area` VALUES ('52232300', '52230000', '普安县');
INSERT INTO `td_area` VALUES ('52232400', '52230000', '晴隆县');
INSERT INTO `td_area` VALUES ('52232500', '52230000', '贞丰县');
INSERT INTO `td_area` VALUES ('52232600', '52230000', '望谟县');
INSERT INTO `td_area` VALUES ('52232700', '52230000', '册亨县');
INSERT INTO `td_area` VALUES ('52232800', '52230000', '安龙县');
INSERT INTO `td_area` VALUES ('52240000', '52000000', '毕节地区');
INSERT INTO `td_area` VALUES ('52240100', '52240000', '毕节市');
INSERT INTO `td_area` VALUES ('52242200', '52240000', '大方县');
INSERT INTO `td_area` VALUES ('52242300', '52240000', '黔西县');
INSERT INTO `td_area` VALUES ('52242400', '52240000', '金沙县');
INSERT INTO `td_area` VALUES ('52242500', '52240000', '织金县');
INSERT INTO `td_area` VALUES ('52242600', '52240000', '纳雍县');
INSERT INTO `td_area` VALUES ('52242700', '52240000', '威宁彝族回族苗族自治县');
INSERT INTO `td_area` VALUES ('52242800', '52240000', '赫章县');
INSERT INTO `td_area` VALUES ('52260000', '52000000', '黔东南苗族侗族自治州');
INSERT INTO `td_area` VALUES ('52260100', '52260000', '凯里市');
INSERT INTO `td_area` VALUES ('52262200', '52260000', '黄平县');
INSERT INTO `td_area` VALUES ('52262300', '52260000', '施秉县');
INSERT INTO `td_area` VALUES ('52262400', '52260000', '三穗县');
INSERT INTO `td_area` VALUES ('52262500', '52260000', '镇远县');
INSERT INTO `td_area` VALUES ('52262600', '52260000', '岑巩县');
INSERT INTO `td_area` VALUES ('52262700', '52260000', '天柱县');
INSERT INTO `td_area` VALUES ('52262800', '52260000', '锦屏县');
INSERT INTO `td_area` VALUES ('52262900', '52260000', '剑河县');
INSERT INTO `td_area` VALUES ('52263000', '52260000', '台江县');
INSERT INTO `td_area` VALUES ('52263100', '52260000', '黎平县');
INSERT INTO `td_area` VALUES ('52263200', '52260000', '榕江县');
INSERT INTO `td_area` VALUES ('52263300', '52260000', '从江县');
INSERT INTO `td_area` VALUES ('52263400', '52260000', '雷山县');
INSERT INTO `td_area` VALUES ('52263500', '52260000', '麻江县');
INSERT INTO `td_area` VALUES ('52263600', '52260000', '丹寨县');
INSERT INTO `td_area` VALUES ('52270000', '52000000', '黔南布依族苗族自治州');
INSERT INTO `td_area` VALUES ('52270100', '52270000', '都匀市');
INSERT INTO `td_area` VALUES ('52270200', '52270000', '福泉市');
INSERT INTO `td_area` VALUES ('52272200', '52270000', '荔波县');
INSERT INTO `td_area` VALUES ('52272300', '52270000', '贵定县');
INSERT INTO `td_area` VALUES ('52272500', '52270000', '瓮安县');
INSERT INTO `td_area` VALUES ('52272600', '52270000', '独山县');
INSERT INTO `td_area` VALUES ('52272700', '52270000', '平塘县');
INSERT INTO `td_area` VALUES ('52272800', '52270000', '罗甸县');
INSERT INTO `td_area` VALUES ('52272900', '52270000', '长顺县');
INSERT INTO `td_area` VALUES ('52273000', '52270000', '龙里县');
INSERT INTO `td_area` VALUES ('52273100', '52270000', '惠水县');
INSERT INTO `td_area` VALUES ('52273200', '52270000', '三都水族自治县');
INSERT INTO `td_area` VALUES ('53000000', '0', '云南省');
INSERT INTO `td_area` VALUES ('53010000', '53000000', '昆明市');
INSERT INTO `td_area` VALUES ('53010100', '53010000', '市辖区');
INSERT INTO `td_area` VALUES ('53010200', '53010000', '五华区');
INSERT INTO `td_area` VALUES ('53010300', '53010000', '盘龙区');
INSERT INTO `td_area` VALUES ('53011100', '53010000', '官渡区');
INSERT INTO `td_area` VALUES ('53011200', '53010000', '西山区');
INSERT INTO `td_area` VALUES ('53011300', '53010000', '东川区');
INSERT INTO `td_area` VALUES ('53012100', '53010000', '呈贡县');
INSERT INTO `td_area` VALUES ('53012200', '53010000', '晋宁县');
INSERT INTO `td_area` VALUES ('53012400', '53010000', '富民县');
INSERT INTO `td_area` VALUES ('53012500', '53010000', '宜良县');
INSERT INTO `td_area` VALUES ('53012600', '53010000', '石林彝族自治县');
INSERT INTO `td_area` VALUES ('53012700', '53010000', '嵩明县');
INSERT INTO `td_area` VALUES ('53012800', '53010000', '禄劝彝族苗族自治县');
INSERT INTO `td_area` VALUES ('53012900', '53010000', '寻甸回族彝族自治县');
INSERT INTO `td_area` VALUES ('53018100', '53010000', '安宁市');
INSERT INTO `td_area` VALUES ('53030000', '53000000', '曲靖市');
INSERT INTO `td_area` VALUES ('53030100', '53030000', '市辖区');
INSERT INTO `td_area` VALUES ('53030200', '53030000', '麒麟区');
INSERT INTO `td_area` VALUES ('53032100', '53030000', '马龙县');
INSERT INTO `td_area` VALUES ('53032200', '53030000', '陆良县');
INSERT INTO `td_area` VALUES ('53032300', '53030000', '师宗县');
INSERT INTO `td_area` VALUES ('53032400', '53030000', '罗平县');
INSERT INTO `td_area` VALUES ('53032500', '53030000', '富源县');
INSERT INTO `td_area` VALUES ('53032600', '53030000', '会泽县');
INSERT INTO `td_area` VALUES ('53032800', '53030000', '沾益县');
INSERT INTO `td_area` VALUES ('53038100', '53030000', '宣威市');
INSERT INTO `td_area` VALUES ('53040000', '53000000', '玉溪市');
INSERT INTO `td_area` VALUES ('53040100', '53040000', '市辖区');
INSERT INTO `td_area` VALUES ('53040200', '53040000', '红塔区');
INSERT INTO `td_area` VALUES ('53042100', '53040000', '江川县');
INSERT INTO `td_area` VALUES ('53042200', '53040000', '澄江县');
INSERT INTO `td_area` VALUES ('53042300', '53040000', '通海县');
INSERT INTO `td_area` VALUES ('53042400', '53040000', '华宁县');
INSERT INTO `td_area` VALUES ('53042500', '53040000', '易门县');
INSERT INTO `td_area` VALUES ('53042600', '53040000', '峨山彝族自治县');
INSERT INTO `td_area` VALUES ('53042700', '53040000', '新平彝族傣族自治县');
INSERT INTO `td_area` VALUES ('53042800', '53040000', '元江哈尼族彝族傣族自治县');
INSERT INTO `td_area` VALUES ('53050000', '53000000', '保山市');
INSERT INTO `td_area` VALUES ('53050100', '53050000', '市辖区');
INSERT INTO `td_area` VALUES ('53050200', '53050000', '隆阳区');
INSERT INTO `td_area` VALUES ('53052100', '53050000', '施甸县');
INSERT INTO `td_area` VALUES ('53052200', '53050000', '腾冲县');
INSERT INTO `td_area` VALUES ('53052300', '53050000', '龙陵县');
INSERT INTO `td_area` VALUES ('53052400', '53050000', '昌宁县');
INSERT INTO `td_area` VALUES ('53060000', '53000000', '昭通市');
INSERT INTO `td_area` VALUES ('53060100', '53060000', '市辖区');
INSERT INTO `td_area` VALUES ('53060200', '53060000', '昭阳区');
INSERT INTO `td_area` VALUES ('53062100', '53060000', '鲁甸县');
INSERT INTO `td_area` VALUES ('53062200', '53060000', '巧家县');
INSERT INTO `td_area` VALUES ('53062300', '53060000', '盐津县');
INSERT INTO `td_area` VALUES ('53062400', '53060000', '大关县');
INSERT INTO `td_area` VALUES ('53062500', '53060000', '永善县');
INSERT INTO `td_area` VALUES ('53062600', '53060000', '绥江县');
INSERT INTO `td_area` VALUES ('53062700', '53060000', '镇雄县');
INSERT INTO `td_area` VALUES ('53062800', '53060000', '彝良县');
INSERT INTO `td_area` VALUES ('53062900', '53060000', '威信县');
INSERT INTO `td_area` VALUES ('53063000', '53060000', '水富县');
INSERT INTO `td_area` VALUES ('53070000', '53000000', '丽江市');
INSERT INTO `td_area` VALUES ('53070100', '53070000', '市辖区');
INSERT INTO `td_area` VALUES ('53070200', '53070000', '古城区');
INSERT INTO `td_area` VALUES ('53072100', '53070000', '玉龙纳西族自治县');
INSERT INTO `td_area` VALUES ('53072200', '53070000', '永胜县');
INSERT INTO `td_area` VALUES ('53072300', '53070000', '华坪县');
INSERT INTO `td_area` VALUES ('53072400', '53070000', '宁蒗彝族自治县');
INSERT INTO `td_area` VALUES ('53080000', '53000000', '思茅市');
INSERT INTO `td_area` VALUES ('53080100', '53080000', '市辖区');
INSERT INTO `td_area` VALUES ('53080200', '53080000', '翠云区');
INSERT INTO `td_area` VALUES ('53082100', '53080000', '普洱哈尼族彝族自治县');
INSERT INTO `td_area` VALUES ('53082200', '53080000', '墨江哈尼族自治县');
INSERT INTO `td_area` VALUES ('53082300', '53080000', '景东彝族自治县');
INSERT INTO `td_area` VALUES ('53082400', '53080000', '景谷傣族彝族自治县');
INSERT INTO `td_area` VALUES ('53082500', '53080000', '镇沅彝族哈尼族拉祜族自治县');
INSERT INTO `td_area` VALUES ('53082600', '53080000', '江城哈尼族彝族自治县');
INSERT INTO `td_area` VALUES ('53082700', '53080000', '孟连傣族拉祜族佤族自治县');
INSERT INTO `td_area` VALUES ('53082800', '53080000', '澜沧拉祜族自治县');
INSERT INTO `td_area` VALUES ('53082900', '53080000', '西盟佤族自治县');
INSERT INTO `td_area` VALUES ('53090000', '53000000', '临沧市');
INSERT INTO `td_area` VALUES ('53090100', '53090000', '市辖区');
INSERT INTO `td_area` VALUES ('53090200', '53090000', '临翔区');
INSERT INTO `td_area` VALUES ('53092100', '53090000', '凤庆县');
INSERT INTO `td_area` VALUES ('53092200', '53090000', '云　县');
INSERT INTO `td_area` VALUES ('53092300', '53090000', '永德县');
INSERT INTO `td_area` VALUES ('53092400', '53090000', '镇康县');
INSERT INTO `td_area` VALUES ('53092500', '53090000', '双江拉祜族佤族布朗族傣族自治县');
INSERT INTO `td_area` VALUES ('53092600', '53090000', '耿马傣族佤族自治县');
INSERT INTO `td_area` VALUES ('53092700', '53090000', '沧源佤族自治县');
INSERT INTO `td_area` VALUES ('53230000', '53000000', '楚雄彝族自治州');
INSERT INTO `td_area` VALUES ('53230100', '53230000', '楚雄市');
INSERT INTO `td_area` VALUES ('53232200', '53230000', '双柏县');
INSERT INTO `td_area` VALUES ('53232300', '53230000', '牟定县');
INSERT INTO `td_area` VALUES ('53232400', '53230000', '南华县');
INSERT INTO `td_area` VALUES ('53232500', '53230000', '姚安县');
INSERT INTO `td_area` VALUES ('53232600', '53230000', '大姚县');
INSERT INTO `td_area` VALUES ('53232700', '53230000', '永仁县');
INSERT INTO `td_area` VALUES ('53232800', '53230000', '元谋县');
INSERT INTO `td_area` VALUES ('53232900', '53230000', '武定县');
INSERT INTO `td_area` VALUES ('53233100', '53230000', '禄丰县');
INSERT INTO `td_area` VALUES ('53250000', '53000000', '红河哈尼族彝族自治州');
INSERT INTO `td_area` VALUES ('53250100', '53250000', '个旧市');
INSERT INTO `td_area` VALUES ('53250200', '53250000', '开远市');
INSERT INTO `td_area` VALUES ('53252200', '53250000', '蒙自县');
INSERT INTO `td_area` VALUES ('53252300', '53250000', '屏边苗族自治县');
INSERT INTO `td_area` VALUES ('53252400', '53250000', '建水县');
INSERT INTO `td_area` VALUES ('53252500', '53250000', '石屏县');
INSERT INTO `td_area` VALUES ('53252600', '53250000', '弥勒县');
INSERT INTO `td_area` VALUES ('53252700', '53250000', '泸西县');
INSERT INTO `td_area` VALUES ('53252800', '53250000', '元阳县');
INSERT INTO `td_area` VALUES ('53252900', '53250000', '红河县');
INSERT INTO `td_area` VALUES ('53253000', '53250000', '金平苗族瑶族傣族自治县');
INSERT INTO `td_area` VALUES ('53253100', '53250000', '绿春县');
INSERT INTO `td_area` VALUES ('53253200', '53250000', '河口瑶族自治县');
INSERT INTO `td_area` VALUES ('53260000', '53000000', '文山壮族苗族自治州');
INSERT INTO `td_area` VALUES ('53262100', '53260000', '文山县');
INSERT INTO `td_area` VALUES ('53262200', '53260000', '砚山县');
INSERT INTO `td_area` VALUES ('53262300', '53260000', '西畴县');
INSERT INTO `td_area` VALUES ('53262400', '53260000', '麻栗坡县');
INSERT INTO `td_area` VALUES ('53262500', '53260000', '马关县');
INSERT INTO `td_area` VALUES ('53262600', '53260000', '丘北县');
INSERT INTO `td_area` VALUES ('53262700', '53260000', '广南县');
INSERT INTO `td_area` VALUES ('53262800', '53260000', '富宁县');
INSERT INTO `td_area` VALUES ('53280000', '53000000', '西双版纳傣族自治州');
INSERT INTO `td_area` VALUES ('53280100', '53280000', '景洪市');
INSERT INTO `td_area` VALUES ('53282200', '53280000', '勐海县');
INSERT INTO `td_area` VALUES ('53282300', '53280000', '勐腊县');
INSERT INTO `td_area` VALUES ('53290000', '53000000', '大理白族自治州');
INSERT INTO `td_area` VALUES ('53290100', '53290000', '大理市');
INSERT INTO `td_area` VALUES ('53292200', '53290000', '漾濞彝族自治县');
INSERT INTO `td_area` VALUES ('53292300', '53290000', '祥云县');
INSERT INTO `td_area` VALUES ('53292400', '53290000', '宾川县');
INSERT INTO `td_area` VALUES ('53292500', '53290000', '弥渡县');
INSERT INTO `td_area` VALUES ('53292600', '53290000', '南涧彝族自治县');
INSERT INTO `td_area` VALUES ('53292700', '53290000', '巍山彝族回族自治县');
INSERT INTO `td_area` VALUES ('53292800', '53290000', '永平县');
INSERT INTO `td_area` VALUES ('53292900', '53290000', '云龙县');
INSERT INTO `td_area` VALUES ('53293000', '53290000', '洱源县');
INSERT INTO `td_area` VALUES ('53293100', '53290000', '剑川县');
INSERT INTO `td_area` VALUES ('53293200', '53290000', '鹤庆县');
INSERT INTO `td_area` VALUES ('53310000', '53000000', '德宏傣族景颇族自治州');
INSERT INTO `td_area` VALUES ('53310200', '53310000', '瑞丽市');
INSERT INTO `td_area` VALUES ('53310300', '53310000', '潞西市');
INSERT INTO `td_area` VALUES ('53312200', '53310000', '梁河县');
INSERT INTO `td_area` VALUES ('53312300', '53310000', '盈江县');
INSERT INTO `td_area` VALUES ('53312400', '53310000', '陇川县');
INSERT INTO `td_area` VALUES ('53330000', '53000000', '怒江傈僳族自治州');
INSERT INTO `td_area` VALUES ('53332100', '53330000', '泸水县');
INSERT INTO `td_area` VALUES ('53332300', '53330000', '福贡县');
INSERT INTO `td_area` VALUES ('53332400', '53330000', '贡山独龙族怒族自治县');
INSERT INTO `td_area` VALUES ('53332500', '53330000', '兰坪白族普米族自治县');
INSERT INTO `td_area` VALUES ('53340000', '53000000', '迪庆藏族自治州');
INSERT INTO `td_area` VALUES ('53342100', '53340000', '香格里拉县');
INSERT INTO `td_area` VALUES ('53342200', '53340000', '德钦县');
INSERT INTO `td_area` VALUES ('53342300', '53340000', '维西傈僳族自治县');
INSERT INTO `td_area` VALUES ('54000000', '0', '西藏自治区');
INSERT INTO `td_area` VALUES ('54010000', '54000000', '拉萨市');
INSERT INTO `td_area` VALUES ('54010100', '54010000', '市辖区');
INSERT INTO `td_area` VALUES ('54010200', '54010000', '城关区');
INSERT INTO `td_area` VALUES ('54012100', '54010000', '林周县');
INSERT INTO `td_area` VALUES ('54012200', '54010000', '当雄县');
INSERT INTO `td_area` VALUES ('54012300', '54010000', '尼木县');
INSERT INTO `td_area` VALUES ('54012400', '54010000', '曲水县');
INSERT INTO `td_area` VALUES ('54012500', '54010000', '堆龙德庆县');
INSERT INTO `td_area` VALUES ('54012600', '54010000', '达孜县');
INSERT INTO `td_area` VALUES ('54012700', '54010000', '墨竹工卡县');
INSERT INTO `td_area` VALUES ('54210000', '54000000', '昌都地区');
INSERT INTO `td_area` VALUES ('54212100', '54210000', '昌都县');
INSERT INTO `td_area` VALUES ('54212200', '54210000', '江达县');
INSERT INTO `td_area` VALUES ('54212300', '54210000', '贡觉县');
INSERT INTO `td_area` VALUES ('54212400', '54210000', '类乌齐县');
INSERT INTO `td_area` VALUES ('54212500', '54210000', '丁青县');
INSERT INTO `td_area` VALUES ('54212600', '54210000', '察雅县');
INSERT INTO `td_area` VALUES ('54212700', '54210000', '八宿县');
INSERT INTO `td_area` VALUES ('54212800', '54210000', '左贡县');
INSERT INTO `td_area` VALUES ('54212900', '54210000', '芒康县');
INSERT INTO `td_area` VALUES ('54213200', '54210000', '洛隆县');
INSERT INTO `td_area` VALUES ('54213300', '54210000', '边坝县');
INSERT INTO `td_area` VALUES ('54220000', '54000000', '山南地区');
INSERT INTO `td_area` VALUES ('54222100', '54220000', '乃东县');
INSERT INTO `td_area` VALUES ('54222200', '54220000', '扎囊县');
INSERT INTO `td_area` VALUES ('54222300', '54220000', '贡嘎县');
INSERT INTO `td_area` VALUES ('54222400', '54220000', '桑日县');
INSERT INTO `td_area` VALUES ('54222500', '54220000', '琼结县');
INSERT INTO `td_area` VALUES ('54222600', '54220000', '曲松县');
INSERT INTO `td_area` VALUES ('54222700', '54220000', '措美县');
INSERT INTO `td_area` VALUES ('54222800', '54220000', '洛扎县');
INSERT INTO `td_area` VALUES ('54222900', '54220000', '加查县');
INSERT INTO `td_area` VALUES ('54223100', '54220000', '隆子县');
INSERT INTO `td_area` VALUES ('54223200', '54220000', '错那县');
INSERT INTO `td_area` VALUES ('54223300', '54220000', '浪卡子县');
INSERT INTO `td_area` VALUES ('54230000', '54000000', '日喀则地区');
INSERT INTO `td_area` VALUES ('54230100', '54230000', '日喀则市');
INSERT INTO `td_area` VALUES ('54232200', '54230000', '南木林县');
INSERT INTO `td_area` VALUES ('54232300', '54230000', '江孜县');
INSERT INTO `td_area` VALUES ('54232400', '54230000', '定日县');
INSERT INTO `td_area` VALUES ('54232500', '54230000', '萨迦县');
INSERT INTO `td_area` VALUES ('54232600', '54230000', '拉孜县');
INSERT INTO `td_area` VALUES ('54232700', '54230000', '昂仁县');
INSERT INTO `td_area` VALUES ('54232800', '54230000', '谢通门县');
INSERT INTO `td_area` VALUES ('54232900', '54230000', '白朗县');
INSERT INTO `td_area` VALUES ('54233000', '54230000', '仁布县');
INSERT INTO `td_area` VALUES ('54233100', '54230000', '康马县');
INSERT INTO `td_area` VALUES ('54233200', '54230000', '定结县');
INSERT INTO `td_area` VALUES ('54233300', '54230000', '仲巴县');
INSERT INTO `td_area` VALUES ('54233400', '54230000', '亚东县');
INSERT INTO `td_area` VALUES ('54233500', '54230000', '吉隆县');
INSERT INTO `td_area` VALUES ('54233600', '54230000', '聂拉木县');
INSERT INTO `td_area` VALUES ('54233700', '54230000', '萨嘎县');
INSERT INTO `td_area` VALUES ('54233800', '54230000', '岗巴县');
INSERT INTO `td_area` VALUES ('54240000', '54000000', '那曲地区');
INSERT INTO `td_area` VALUES ('54242100', '54240000', '那曲县');
INSERT INTO `td_area` VALUES ('54242200', '54240000', '嘉黎县');
INSERT INTO `td_area` VALUES ('54242300', '54240000', '比如县');
INSERT INTO `td_area` VALUES ('54242400', '54240000', '聂荣县');
INSERT INTO `td_area` VALUES ('54242500', '54240000', '安多县');
INSERT INTO `td_area` VALUES ('54242600', '54240000', '申扎县');
INSERT INTO `td_area` VALUES ('54242700', '54240000', '索　县');
INSERT INTO `td_area` VALUES ('54242800', '54240000', '班戈县');
INSERT INTO `td_area` VALUES ('54242900', '54240000', '巴青县');
INSERT INTO `td_area` VALUES ('54243000', '54240000', '尼玛县');
INSERT INTO `td_area` VALUES ('54250000', '54000000', '阿里地区');
INSERT INTO `td_area` VALUES ('54252100', '54250000', '普兰县');
INSERT INTO `td_area` VALUES ('54252200', '54250000', '札达县');
INSERT INTO `td_area` VALUES ('54252300', '54250000', '噶尔县');
INSERT INTO `td_area` VALUES ('54252400', '54250000', '日土县');
INSERT INTO `td_area` VALUES ('54252500', '54250000', '革吉县');
INSERT INTO `td_area` VALUES ('54252600', '54250000', '改则县');
INSERT INTO `td_area` VALUES ('54252700', '54250000', '措勤县');
INSERT INTO `td_area` VALUES ('54260000', '54000000', '林芝地区');
INSERT INTO `td_area` VALUES ('54262100', '54260000', '林芝县');
INSERT INTO `td_area` VALUES ('54262200', '54260000', '工布江达县');
INSERT INTO `td_area` VALUES ('54262300', '54260000', '米林县');
INSERT INTO `td_area` VALUES ('54262400', '54260000', '墨脱县');
INSERT INTO `td_area` VALUES ('54262500', '54260000', '波密县');
INSERT INTO `td_area` VALUES ('54262600', '54260000', '察隅县');
INSERT INTO `td_area` VALUES ('54262700', '54260000', '朗　县');
INSERT INTO `td_area` VALUES ('61000000', '0', '陕西省');
INSERT INTO `td_area` VALUES ('61010000', '61000000', '西安市');
INSERT INTO `td_area` VALUES ('61010100', '61010000', '市辖区');
INSERT INTO `td_area` VALUES ('61010200', '61010000', '新城区');
INSERT INTO `td_area` VALUES ('61010300', '61010000', '碑林区');
INSERT INTO `td_area` VALUES ('61010400', '61010000', '莲湖区');
INSERT INTO `td_area` VALUES ('61011100', '61010000', '灞桥区');
INSERT INTO `td_area` VALUES ('61011200', '61010000', '未央区');
INSERT INTO `td_area` VALUES ('61011300', '61010000', '雁塔区');
INSERT INTO `td_area` VALUES ('61011400', '61010000', '阎良区');
INSERT INTO `td_area` VALUES ('61011500', '61010000', '临潼区');
INSERT INTO `td_area` VALUES ('61011600', '61010000', '长安区');
INSERT INTO `td_area` VALUES ('61012200', '61010000', '蓝田县');
INSERT INTO `td_area` VALUES ('61012400', '61010000', '周至县');
INSERT INTO `td_area` VALUES ('61012500', '61010000', '户　县');
INSERT INTO `td_area` VALUES ('61012600', '61010000', '高陵县');
INSERT INTO `td_area` VALUES ('61020000', '61000000', '铜川市');
INSERT INTO `td_area` VALUES ('61020100', '61020000', '市辖区');
INSERT INTO `td_area` VALUES ('61020200', '61020000', '王益区');
INSERT INTO `td_area` VALUES ('61020300', '61020000', '印台区');
INSERT INTO `td_area` VALUES ('61020400', '61020000', '耀州区');
INSERT INTO `td_area` VALUES ('61022200', '61020000', '宜君县');
INSERT INTO `td_area` VALUES ('61030000', '61000000', '宝鸡市');
INSERT INTO `td_area` VALUES ('61030100', '61030000', '市辖区');
INSERT INTO `td_area` VALUES ('61030200', '61030000', '渭滨区');
INSERT INTO `td_area` VALUES ('61030300', '61030000', '金台区');
INSERT INTO `td_area` VALUES ('61030400', '61030000', '陈仓区');
INSERT INTO `td_area` VALUES ('61032200', '61030000', '凤翔县');
INSERT INTO `td_area` VALUES ('61032300', '61030000', '岐山县');
INSERT INTO `td_area` VALUES ('61032400', '61030000', '扶风县');
INSERT INTO `td_area` VALUES ('61032600', '61030000', '眉　县');
INSERT INTO `td_area` VALUES ('61032700', '61030000', '陇　县');
INSERT INTO `td_area` VALUES ('61032800', '61030000', '千阳县');
INSERT INTO `td_area` VALUES ('61032900', '61030000', '麟游县');
INSERT INTO `td_area` VALUES ('61033000', '61030000', '凤　县');
INSERT INTO `td_area` VALUES ('61033100', '61030000', '太白县');
INSERT INTO `td_area` VALUES ('61040000', '61000000', '咸阳市');
INSERT INTO `td_area` VALUES ('61040100', '61040000', '市辖区');
INSERT INTO `td_area` VALUES ('61040200', '61040000', '秦都区');
INSERT INTO `td_area` VALUES ('61040300', '61040000', '杨凌区');
INSERT INTO `td_area` VALUES ('61040400', '61040000', '渭城区');
INSERT INTO `td_area` VALUES ('61042200', '61040000', '三原县');
INSERT INTO `td_area` VALUES ('61042300', '61040000', '泾阳县');
INSERT INTO `td_area` VALUES ('61042400', '61040000', '乾　县');
INSERT INTO `td_area` VALUES ('61042500', '61040000', '礼泉县');
INSERT INTO `td_area` VALUES ('61042600', '61040000', '永寿县');
INSERT INTO `td_area` VALUES ('61042700', '61040000', '彬　县');
INSERT INTO `td_area` VALUES ('61042800', '61040000', '长武县');
INSERT INTO `td_area` VALUES ('61042900', '61040000', '旬邑县');
INSERT INTO `td_area` VALUES ('61043000', '61040000', '淳化县');
INSERT INTO `td_area` VALUES ('61043100', '61040000', '武功县');
INSERT INTO `td_area` VALUES ('61048100', '61040000', '兴平市');
INSERT INTO `td_area` VALUES ('61050000', '61000000', '渭南市');
INSERT INTO `td_area` VALUES ('61050100', '61050000', '市辖区');
INSERT INTO `td_area` VALUES ('61050200', '61050000', '临渭区');
INSERT INTO `td_area` VALUES ('61052100', '61050000', '华　县');
INSERT INTO `td_area` VALUES ('61052200', '61050000', '潼关县');
INSERT INTO `td_area` VALUES ('61052300', '61050000', '大荔县');
INSERT INTO `td_area` VALUES ('61052400', '61050000', '合阳县');
INSERT INTO `td_area` VALUES ('61052500', '61050000', '澄城县');
INSERT INTO `td_area` VALUES ('61052600', '61050000', '蒲城县');
INSERT INTO `td_area` VALUES ('61052700', '61050000', '白水县');
INSERT INTO `td_area` VALUES ('61052800', '61050000', '富平县');
INSERT INTO `td_area` VALUES ('61058100', '61050000', '韩城市');
INSERT INTO `td_area` VALUES ('61058200', '61050000', '华阴市');
INSERT INTO `td_area` VALUES ('61060000', '61000000', '延安市');
INSERT INTO `td_area` VALUES ('61060100', '61060000', '市辖区');
INSERT INTO `td_area` VALUES ('61060200', '61060000', '宝塔区');
INSERT INTO `td_area` VALUES ('61062100', '61060000', '延长县');
INSERT INTO `td_area` VALUES ('61062200', '61060000', '延川县');
INSERT INTO `td_area` VALUES ('61062300', '61060000', '子长县');
INSERT INTO `td_area` VALUES ('61062400', '61060000', '安塞县');
INSERT INTO `td_area` VALUES ('61062500', '61060000', '志丹县');
INSERT INTO `td_area` VALUES ('61062600', '61060000', '吴旗县');
INSERT INTO `td_area` VALUES ('61062700', '61060000', '甘泉县');
INSERT INTO `td_area` VALUES ('61062800', '61060000', '富　县');
INSERT INTO `td_area` VALUES ('61062900', '61060000', '洛川县');
INSERT INTO `td_area` VALUES ('61063000', '61060000', '宜川县');
INSERT INTO `td_area` VALUES ('61063100', '61060000', '黄龙县');
INSERT INTO `td_area` VALUES ('61063200', '61060000', '黄陵县');
INSERT INTO `td_area` VALUES ('61070000', '61000000', '汉中市');
INSERT INTO `td_area` VALUES ('61070100', '61070000', '市辖区');
INSERT INTO `td_area` VALUES ('61070200', '61070000', '汉台区');
INSERT INTO `td_area` VALUES ('61072100', '61070000', '南郑县');
INSERT INTO `td_area` VALUES ('61072200', '61070000', '城固县');
INSERT INTO `td_area` VALUES ('61072300', '61070000', '洋　县');
INSERT INTO `td_area` VALUES ('61072400', '61070000', '西乡县');
INSERT INTO `td_area` VALUES ('61072500', '61070000', '勉　县');
INSERT INTO `td_area` VALUES ('61072600', '61070000', '宁强县');
INSERT INTO `td_area` VALUES ('61072700', '61070000', '略阳县');
INSERT INTO `td_area` VALUES ('61072800', '61070000', '镇巴县');
INSERT INTO `td_area` VALUES ('61072900', '61070000', '留坝县');
INSERT INTO `td_area` VALUES ('61073000', '61070000', '佛坪县');
INSERT INTO `td_area` VALUES ('61080000', '61000000', '榆林市');
INSERT INTO `td_area` VALUES ('61080100', '61080000', '市辖区');
INSERT INTO `td_area` VALUES ('61080200', '61080000', '榆阳区');
INSERT INTO `td_area` VALUES ('61082100', '61080000', '神木县');
INSERT INTO `td_area` VALUES ('61082200', '61080000', '府谷县');
INSERT INTO `td_area` VALUES ('61082300', '61080000', '横山县');
INSERT INTO `td_area` VALUES ('61082400', '61080000', '靖边县');
INSERT INTO `td_area` VALUES ('61082500', '61080000', '定边县');
INSERT INTO `td_area` VALUES ('61082600', '61080000', '绥德县');
INSERT INTO `td_area` VALUES ('61082700', '61080000', '米脂县');
INSERT INTO `td_area` VALUES ('61082800', '61080000', '佳　县');
INSERT INTO `td_area` VALUES ('61082900', '61080000', '吴堡县');
INSERT INTO `td_area` VALUES ('61083000', '61080000', '清涧县');
INSERT INTO `td_area` VALUES ('61083100', '61080000', '子洲县');
INSERT INTO `td_area` VALUES ('61090000', '61000000', '安康市');
INSERT INTO `td_area` VALUES ('61090100', '61090000', '市辖区');
INSERT INTO `td_area` VALUES ('61090200', '61090000', '汉滨区');
INSERT INTO `td_area` VALUES ('61092100', '61090000', '汉阴县');
INSERT INTO `td_area` VALUES ('61092200', '61090000', '石泉县');
INSERT INTO `td_area` VALUES ('61092300', '61090000', '宁陕县');
INSERT INTO `td_area` VALUES ('61092400', '61090000', '紫阳县');
INSERT INTO `td_area` VALUES ('61092500', '61090000', '岚皋县');
INSERT INTO `td_area` VALUES ('61092600', '61090000', '平利县');
INSERT INTO `td_area` VALUES ('61092700', '61090000', '镇坪县');
INSERT INTO `td_area` VALUES ('61092800', '61090000', '旬阳县');
INSERT INTO `td_area` VALUES ('61092900', '61090000', '白河县');
INSERT INTO `td_area` VALUES ('61100000', '61000000', '商洛市');
INSERT INTO `td_area` VALUES ('61100100', '61100000', '市辖区');
INSERT INTO `td_area` VALUES ('61100200', '61100000', '商州区');
INSERT INTO `td_area` VALUES ('61102100', '61100000', '洛南县');
INSERT INTO `td_area` VALUES ('61102200', '61100000', '丹凤县');
INSERT INTO `td_area` VALUES ('61102300', '61100000', '商南县');
INSERT INTO `td_area` VALUES ('61102400', '61100000', '山阳县');
INSERT INTO `td_area` VALUES ('61102500', '61100000', '镇安县');
INSERT INTO `td_area` VALUES ('61102600', '61100000', '柞水县');
INSERT INTO `td_area` VALUES ('62000000', '0', '甘肃省');
INSERT INTO `td_area` VALUES ('62010000', '62000000', '兰州市');
INSERT INTO `td_area` VALUES ('62010100', '62010000', '市辖区');
INSERT INTO `td_area` VALUES ('62010200', '62010000', '城关区');
INSERT INTO `td_area` VALUES ('62010300', '62010000', '七里河区');
INSERT INTO `td_area` VALUES ('62010400', '62010000', '西固区');
INSERT INTO `td_area` VALUES ('62010500', '62010000', '安宁区');
INSERT INTO `td_area` VALUES ('62011100', '62010000', '红古区');
INSERT INTO `td_area` VALUES ('62012100', '62010000', '永登县');
INSERT INTO `td_area` VALUES ('62012200', '62010000', '皋兰县');
INSERT INTO `td_area` VALUES ('62012300', '62010000', '榆中县');
INSERT INTO `td_area` VALUES ('62020000', '62000000', '嘉峪关市');
INSERT INTO `td_area` VALUES ('62020100', '62020000', '市辖区');
INSERT INTO `td_area` VALUES ('62030000', '62000000', '金昌市');
INSERT INTO `td_area` VALUES ('62030100', '62030000', '市辖区');
INSERT INTO `td_area` VALUES ('62030200', '62030000', '金川区');
INSERT INTO `td_area` VALUES ('62032100', '62030000', '永昌县');
INSERT INTO `td_area` VALUES ('62040000', '62000000', '白银市');
INSERT INTO `td_area` VALUES ('62040100', '62040000', '市辖区');
INSERT INTO `td_area` VALUES ('62040200', '62040000', '白银区');
INSERT INTO `td_area` VALUES ('62040300', '62040000', '平川区');
INSERT INTO `td_area` VALUES ('62042100', '62040000', '靖远县');
INSERT INTO `td_area` VALUES ('62042200', '62040000', '会宁县');
INSERT INTO `td_area` VALUES ('62042300', '62040000', '景泰县');
INSERT INTO `td_area` VALUES ('62050000', '62000000', '天水市');
INSERT INTO `td_area` VALUES ('62050100', '62050000', '市辖区');
INSERT INTO `td_area` VALUES ('62050200', '62050000', '秦城区');
INSERT INTO `td_area` VALUES ('62050300', '62050000', '北道区');
INSERT INTO `td_area` VALUES ('62052100', '62050000', '清水县');
INSERT INTO `td_area` VALUES ('62052200', '62050000', '秦安县');
INSERT INTO `td_area` VALUES ('62052300', '62050000', '甘谷县');
INSERT INTO `td_area` VALUES ('62052400', '62050000', '武山县');
INSERT INTO `td_area` VALUES ('62052500', '62050000', '张家川回族自治县');
INSERT INTO `td_area` VALUES ('62060000', '62000000', '武威市');
INSERT INTO `td_area` VALUES ('62060100', '62060000', '市辖区');
INSERT INTO `td_area` VALUES ('62060200', '62060000', '凉州区');
INSERT INTO `td_area` VALUES ('62062100', '62060000', '民勤县');
INSERT INTO `td_area` VALUES ('62062200', '62060000', '古浪县');
INSERT INTO `td_area` VALUES ('62062300', '62060000', '天祝藏族自治县');
INSERT INTO `td_area` VALUES ('62070000', '62000000', '张掖市');
INSERT INTO `td_area` VALUES ('62070100', '62070000', '市辖区');
INSERT INTO `td_area` VALUES ('62070200', '62070000', '甘州区');
INSERT INTO `td_area` VALUES ('62072100', '62070000', '肃南裕固族自治县');
INSERT INTO `td_area` VALUES ('62072200', '62070000', '民乐县');
INSERT INTO `td_area` VALUES ('62072300', '62070000', '临泽县');
INSERT INTO `td_area` VALUES ('62072400', '62070000', '高台县');
INSERT INTO `td_area` VALUES ('62072500', '62070000', '山丹县');
INSERT INTO `td_area` VALUES ('62080000', '62000000', '平凉市');
INSERT INTO `td_area` VALUES ('62080100', '62080000', '市辖区');
INSERT INTO `td_area` VALUES ('62080200', '62080000', '崆峒区');
INSERT INTO `td_area` VALUES ('62082100', '62080000', '泾川县');
INSERT INTO `td_area` VALUES ('62082200', '62080000', '灵台县');
INSERT INTO `td_area` VALUES ('62082300', '62080000', '崇信县');
INSERT INTO `td_area` VALUES ('62082400', '62080000', '华亭县');
INSERT INTO `td_area` VALUES ('62082500', '62080000', '庄浪县');
INSERT INTO `td_area` VALUES ('62082600', '62080000', '静宁县');
INSERT INTO `td_area` VALUES ('62090000', '62000000', '酒泉市');
INSERT INTO `td_area` VALUES ('62090100', '62090000', '市辖区');
INSERT INTO `td_area` VALUES ('62090200', '62090000', '肃州区');
INSERT INTO `td_area` VALUES ('62092100', '62090000', '金塔县');
INSERT INTO `td_area` VALUES ('62092200', '62090000', '安西县');
INSERT INTO `td_area` VALUES ('62092300', '62090000', '肃北蒙古族自治县');
INSERT INTO `td_area` VALUES ('62092400', '62090000', '阿克塞哈萨克族自治县');
INSERT INTO `td_area` VALUES ('62098100', '62090000', '玉门市');
INSERT INTO `td_area` VALUES ('62098200', '62090000', '敦煌市');
INSERT INTO `td_area` VALUES ('62100000', '62000000', '庆阳市');
INSERT INTO `td_area` VALUES ('62100100', '62100000', '市辖区');
INSERT INTO `td_area` VALUES ('62100200', '62100000', '西峰区');
INSERT INTO `td_area` VALUES ('62102100', '62100000', '庆城县');
INSERT INTO `td_area` VALUES ('62102200', '62100000', '环　县');
INSERT INTO `td_area` VALUES ('62102300', '62100000', '华池县');
INSERT INTO `td_area` VALUES ('62102400', '62100000', '合水县');
INSERT INTO `td_area` VALUES ('62102500', '62100000', '正宁县');
INSERT INTO `td_area` VALUES ('62102600', '62100000', '宁　县');
INSERT INTO `td_area` VALUES ('62102700', '62100000', '镇原县');
INSERT INTO `td_area` VALUES ('62110000', '62000000', '定西市');
INSERT INTO `td_area` VALUES ('62110100', '62110000', '市辖区');
INSERT INTO `td_area` VALUES ('62110200', '62110000', '安定区');
INSERT INTO `td_area` VALUES ('62112100', '62110000', '通渭县');
INSERT INTO `td_area` VALUES ('62112200', '62110000', '陇西县');
INSERT INTO `td_area` VALUES ('62112300', '62110000', '渭源县');
INSERT INTO `td_area` VALUES ('62112400', '62110000', '临洮县');
INSERT INTO `td_area` VALUES ('62112500', '62110000', '漳　县');
INSERT INTO `td_area` VALUES ('62112600', '62110000', '岷　县');
INSERT INTO `td_area` VALUES ('62120000', '62000000', '陇南市');
INSERT INTO `td_area` VALUES ('62120100', '62120000', '市辖区');
INSERT INTO `td_area` VALUES ('62120200', '62120000', '武都区');
INSERT INTO `td_area` VALUES ('62122100', '62120000', '成　县');
INSERT INTO `td_area` VALUES ('62122200', '62120000', '文　县');
INSERT INTO `td_area` VALUES ('62122300', '62120000', '宕昌县');
INSERT INTO `td_area` VALUES ('62122400', '62120000', '康　县');
INSERT INTO `td_area` VALUES ('62122500', '62120000', '西和县');
INSERT INTO `td_area` VALUES ('62122600', '62120000', '礼　县');
INSERT INTO `td_area` VALUES ('62122700', '62120000', '徽　县');
INSERT INTO `td_area` VALUES ('62122800', '62120000', '两当县');
INSERT INTO `td_area` VALUES ('62290000', '62000000', '临夏回族自治州');
INSERT INTO `td_area` VALUES ('62290100', '62290000', '临夏市');
INSERT INTO `td_area` VALUES ('62292100', '62290000', '临夏县');
INSERT INTO `td_area` VALUES ('62292200', '62290000', '康乐县');
INSERT INTO `td_area` VALUES ('62292300', '62290000', '永靖县');
INSERT INTO `td_area` VALUES ('62292400', '62290000', '广河县');
INSERT INTO `td_area` VALUES ('62292500', '62290000', '和政县');
INSERT INTO `td_area` VALUES ('62292600', '62290000', '东乡族自治县');
INSERT INTO `td_area` VALUES ('62292700', '62290000', '积石山保安族东乡族撒拉族自治县');
INSERT INTO `td_area` VALUES ('62300000', '62000000', '甘南藏族自治州');
INSERT INTO `td_area` VALUES ('62300100', '62300000', '合作市');
INSERT INTO `td_area` VALUES ('62302100', '62300000', '临潭县');
INSERT INTO `td_area` VALUES ('62302200', '62300000', '卓尼县');
INSERT INTO `td_area` VALUES ('62302300', '62300000', '舟曲县');
INSERT INTO `td_area` VALUES ('62302400', '62300000', '迭部县');
INSERT INTO `td_area` VALUES ('62302500', '62300000', '玛曲县');
INSERT INTO `td_area` VALUES ('62302600', '62300000', '碌曲县');
INSERT INTO `td_area` VALUES ('62302700', '62300000', '夏河县');
INSERT INTO `td_area` VALUES ('63000000', '0', '青海省');
INSERT INTO `td_area` VALUES ('63010000', '63000000', '西宁市');
INSERT INTO `td_area` VALUES ('63010100', '63010000', '市辖区');
INSERT INTO `td_area` VALUES ('63010200', '63010000', '城东区');
INSERT INTO `td_area` VALUES ('63010300', '63010000', '城中区');
INSERT INTO `td_area` VALUES ('63010400', '63010000', '城西区');
INSERT INTO `td_area` VALUES ('63010500', '63010000', '城北区');
INSERT INTO `td_area` VALUES ('63012100', '63010000', '大通回族土族自治县');
INSERT INTO `td_area` VALUES ('63012200', '63010000', '湟中县');
INSERT INTO `td_area` VALUES ('63012300', '63010000', '湟源县');
INSERT INTO `td_area` VALUES ('63210000', '63000000', '海东地区');
INSERT INTO `td_area` VALUES ('63212100', '63210000', '平安县');
INSERT INTO `td_area` VALUES ('63212200', '63210000', '民和回族土族自治县');
INSERT INTO `td_area` VALUES ('63212300', '63210000', '乐都县');
INSERT INTO `td_area` VALUES ('63212600', '63210000', '互助土族自治县');
INSERT INTO `td_area` VALUES ('63212700', '63210000', '化隆回族自治县');
INSERT INTO `td_area` VALUES ('63212800', '63210000', '循化撒拉族自治县');
INSERT INTO `td_area` VALUES ('63220000', '63000000', '海北藏族自治州');
INSERT INTO `td_area` VALUES ('63222100', '63220000', '门源回族自治县');
INSERT INTO `td_area` VALUES ('63222200', '63220000', '祁连县');
INSERT INTO `td_area` VALUES ('63222300', '63220000', '海晏县');
INSERT INTO `td_area` VALUES ('63222400', '63220000', '刚察县');
INSERT INTO `td_area` VALUES ('63230000', '63000000', '黄南藏族自治州');
INSERT INTO `td_area` VALUES ('63232100', '63230000', '同仁县');
INSERT INTO `td_area` VALUES ('63232200', '63230000', '尖扎县');
INSERT INTO `td_area` VALUES ('63232300', '63230000', '泽库县');
INSERT INTO `td_area` VALUES ('63232400', '63230000', '河南蒙古族自治县');
INSERT INTO `td_area` VALUES ('63250000', '63000000', '海南藏族自治州');
INSERT INTO `td_area` VALUES ('63252100', '63250000', '共和县');
INSERT INTO `td_area` VALUES ('63252200', '63250000', '同德县');
INSERT INTO `td_area` VALUES ('63252300', '63250000', '贵德县');
INSERT INTO `td_area` VALUES ('63252400', '63250000', '兴海县');
INSERT INTO `td_area` VALUES ('63252500', '63250000', '贵南县');
INSERT INTO `td_area` VALUES ('63260000', '63000000', '果洛藏族自治州');
INSERT INTO `td_area` VALUES ('63262100', '63260000', '玛沁县');
INSERT INTO `td_area` VALUES ('63262200', '63260000', '班玛县');
INSERT INTO `td_area` VALUES ('63262300', '63260000', '甘德县');
INSERT INTO `td_area` VALUES ('63262400', '63260000', '达日县');
INSERT INTO `td_area` VALUES ('63262500', '63260000', '久治县');
INSERT INTO `td_area` VALUES ('63262600', '63260000', '玛多县');
INSERT INTO `td_area` VALUES ('63270000', '63000000', '玉树藏族自治州');
INSERT INTO `td_area` VALUES ('63272100', '63270000', '玉树县');
INSERT INTO `td_area` VALUES ('63272200', '63270000', '杂多县');
INSERT INTO `td_area` VALUES ('63272300', '63270000', '称多县');
INSERT INTO `td_area` VALUES ('63272400', '63270000', '治多县');
INSERT INTO `td_area` VALUES ('63272500', '63270000', '囊谦县');
INSERT INTO `td_area` VALUES ('63272600', '63270000', '曲麻莱县');
INSERT INTO `td_area` VALUES ('63280000', '63000000', '海西蒙古族藏族自治州');
INSERT INTO `td_area` VALUES ('63280100', '63280000', '格尔木市');
INSERT INTO `td_area` VALUES ('63280200', '63280000', '德令哈市');
INSERT INTO `td_area` VALUES ('63282100', '63280000', '乌兰县');
INSERT INTO `td_area` VALUES ('63282200', '63280000', '都兰县');
INSERT INTO `td_area` VALUES ('63282300', '63280000', '天峻县');
INSERT INTO `td_area` VALUES ('64000000', '0', '宁夏回族自治区');
INSERT INTO `td_area` VALUES ('64010000', '64000000', '银川市');
INSERT INTO `td_area` VALUES ('64010100', '64010000', '市辖区');
INSERT INTO `td_area` VALUES ('64010400', '64010000', '兴庆区');
INSERT INTO `td_area` VALUES ('64010500', '64010000', '西夏区');
INSERT INTO `td_area` VALUES ('64010600', '64010000', '金凤区');
INSERT INTO `td_area` VALUES ('64012100', '64010000', '永宁县');
INSERT INTO `td_area` VALUES ('64012200', '64010000', '贺兰县');
INSERT INTO `td_area` VALUES ('64018100', '64010000', '灵武市');
INSERT INTO `td_area` VALUES ('64020000', '64000000', '石嘴山市');
INSERT INTO `td_area` VALUES ('64020100', '64020000', '市辖区');
INSERT INTO `td_area` VALUES ('64020200', '64020000', '大武口区');
INSERT INTO `td_area` VALUES ('64020500', '64020000', '惠农区');
INSERT INTO `td_area` VALUES ('64022100', '64020000', '平罗县');
INSERT INTO `td_area` VALUES ('64030000', '64000000', '吴忠市');
INSERT INTO `td_area` VALUES ('64030100', '64030000', '市辖区');
INSERT INTO `td_area` VALUES ('64030200', '64030000', '利通区');
INSERT INTO `td_area` VALUES ('64032300', '64030000', '盐池县');
INSERT INTO `td_area` VALUES ('64032400', '64030000', '同心县');
INSERT INTO `td_area` VALUES ('64038100', '64030000', '青铜峡市');
INSERT INTO `td_area` VALUES ('64040000', '64000000', '固原市');
INSERT INTO `td_area` VALUES ('64040100', '64040000', '市辖区');
INSERT INTO `td_area` VALUES ('64040200', '64040000', '原州区');
INSERT INTO `td_area` VALUES ('64042200', '64040000', '西吉县');
INSERT INTO `td_area` VALUES ('64042300', '64040000', '隆德县');
INSERT INTO `td_area` VALUES ('64042400', '64040000', '泾源县');
INSERT INTO `td_area` VALUES ('64042500', '64040000', '彭阳县');
INSERT INTO `td_area` VALUES ('64050000', '64000000', '中卫市');
INSERT INTO `td_area` VALUES ('64050100', '64050000', '市辖区');
INSERT INTO `td_area` VALUES ('64050200', '64050000', '沙坡头区');
INSERT INTO `td_area` VALUES ('64052100', '64050000', '中宁县');
INSERT INTO `td_area` VALUES ('64052200', '64050000', '海原县');
INSERT INTO `td_area` VALUES ('65000000', '0', '新疆维吾尔自治区');
INSERT INTO `td_area` VALUES ('65010000', '65000000', '乌鲁木齐市');
INSERT INTO `td_area` VALUES ('65010100', '65010000', '市辖区');
INSERT INTO `td_area` VALUES ('65010200', '65010000', '天山区');
INSERT INTO `td_area` VALUES ('65010300', '65010000', '沙依巴克区');
INSERT INTO `td_area` VALUES ('65010400', '65010000', '新市区');
INSERT INTO `td_area` VALUES ('65010500', '65010000', '水磨沟区');
INSERT INTO `td_area` VALUES ('65010600', '65010000', '头屯河区');
INSERT INTO `td_area` VALUES ('65010700', '65010000', '达坂城区');
INSERT INTO `td_area` VALUES ('65010800', '65010000', '东山区');
INSERT INTO `td_area` VALUES ('65012100', '65010000', '乌鲁木齐县');
INSERT INTO `td_area` VALUES ('65020000', '65000000', '克拉玛依市');
INSERT INTO `td_area` VALUES ('65020100', '65020000', '市辖区');
INSERT INTO `td_area` VALUES ('65020200', '65020000', '独山子区');
INSERT INTO `td_area` VALUES ('65020300', '65020000', '克拉玛依区');
INSERT INTO `td_area` VALUES ('65020400', '65020000', '白碱滩区');
INSERT INTO `td_area` VALUES ('65020500', '65020000', '乌尔禾区');
INSERT INTO `td_area` VALUES ('65210000', '65000000', '吐鲁番地区');
INSERT INTO `td_area` VALUES ('65210100', '65210000', '吐鲁番市');
INSERT INTO `td_area` VALUES ('65212200', '65210000', '鄯善县');
INSERT INTO `td_area` VALUES ('65212300', '65210000', '托克逊县');
INSERT INTO `td_area` VALUES ('65220000', '65000000', '哈密地区');
INSERT INTO `td_area` VALUES ('65220100', '65220000', '哈密市');
INSERT INTO `td_area` VALUES ('65222200', '65220000', '巴里坤哈萨克自治县');
INSERT INTO `td_area` VALUES ('65222300', '65220000', '伊吾县');
INSERT INTO `td_area` VALUES ('65230000', '65000000', '昌吉回族自治州');
INSERT INTO `td_area` VALUES ('65230100', '65230000', '昌吉市');
INSERT INTO `td_area` VALUES ('65230200', '65230000', '阜康市');
INSERT INTO `td_area` VALUES ('65230300', '65230000', '米泉市');
INSERT INTO `td_area` VALUES ('65232300', '65230000', '呼图壁县');
INSERT INTO `td_area` VALUES ('65232400', '65230000', '玛纳斯县');
INSERT INTO `td_area` VALUES ('65232500', '65230000', '奇台县');
INSERT INTO `td_area` VALUES ('65232700', '65230000', '吉木萨尔县');
INSERT INTO `td_area` VALUES ('65232800', '65230000', '木垒哈萨克自治县');
INSERT INTO `td_area` VALUES ('65270000', '65000000', '博尔塔拉蒙古自治州');
INSERT INTO `td_area` VALUES ('65270100', '65270000', '博乐市');
INSERT INTO `td_area` VALUES ('65272200', '65270000', '精河县');
INSERT INTO `td_area` VALUES ('65272300', '65270000', '温泉县');
INSERT INTO `td_area` VALUES ('65280000', '65000000', '巴音郭楞蒙古自治州');
INSERT INTO `td_area` VALUES ('65280100', '65280000', '库尔勒市');
INSERT INTO `td_area` VALUES ('65282200', '65280000', '轮台县');
INSERT INTO `td_area` VALUES ('65282300', '65280000', '尉犁县');
INSERT INTO `td_area` VALUES ('65282400', '65280000', '若羌县');
INSERT INTO `td_area` VALUES ('65282500', '65280000', '且末县');
INSERT INTO `td_area` VALUES ('65282600', '65280000', '焉耆回族自治县');
INSERT INTO `td_area` VALUES ('65282700', '65280000', '和静县');
INSERT INTO `td_area` VALUES ('65282800', '65280000', '和硕县');
INSERT INTO `td_area` VALUES ('65282900', '65280000', '博湖县');
INSERT INTO `td_area` VALUES ('65290000', '65000000', '阿克苏地区');
INSERT INTO `td_area` VALUES ('65290100', '65290000', '阿克苏市');
INSERT INTO `td_area` VALUES ('65292200', '65290000', '温宿县');
INSERT INTO `td_area` VALUES ('65292300', '65290000', '库车县');
INSERT INTO `td_area` VALUES ('65292400', '65290000', '沙雅县');
INSERT INTO `td_area` VALUES ('65292500', '65290000', '新和县');
INSERT INTO `td_area` VALUES ('65292600', '65290000', '拜城县');
INSERT INTO `td_area` VALUES ('65292700', '65290000', '乌什县');
INSERT INTO `td_area` VALUES ('65292800', '65290000', '阿瓦提县');
INSERT INTO `td_area` VALUES ('65292900', '65290000', '柯坪县');
INSERT INTO `td_area` VALUES ('65300000', '65000000', '克孜勒苏柯尔克孜自治州');
INSERT INTO `td_area` VALUES ('65300100', '65300000', '阿图什市');
INSERT INTO `td_area` VALUES ('65302200', '65300000', '阿克陶县');
INSERT INTO `td_area` VALUES ('65302300', '65300000', '阿合奇县');
INSERT INTO `td_area` VALUES ('65302400', '65300000', '乌恰县');
INSERT INTO `td_area` VALUES ('65310000', '65000000', '喀什地区');
INSERT INTO `td_area` VALUES ('65310100', '65310000', '喀什市');
INSERT INTO `td_area` VALUES ('65312100', '65310000', '疏附县');
INSERT INTO `td_area` VALUES ('65312200', '65310000', '疏勒县');
INSERT INTO `td_area` VALUES ('65312300', '65310000', '英吉沙县');
INSERT INTO `td_area` VALUES ('65312400', '65310000', '泽普县');
INSERT INTO `td_area` VALUES ('65312500', '65310000', '莎车县');
INSERT INTO `td_area` VALUES ('65312600', '65310000', '叶城县');
INSERT INTO `td_area` VALUES ('65312700', '65310000', '麦盖提县');
INSERT INTO `td_area` VALUES ('65312800', '65310000', '岳普湖县');
INSERT INTO `td_area` VALUES ('65312900', '65310000', '伽师县');
INSERT INTO `td_area` VALUES ('65313000', '65310000', '巴楚县');
INSERT INTO `td_area` VALUES ('65313100', '65310000', '塔什库尔干塔吉克自治县');
INSERT INTO `td_area` VALUES ('65320000', '65000000', '和田地区');
INSERT INTO `td_area` VALUES ('65320100', '65320000', '和田市');
INSERT INTO `td_area` VALUES ('65322100', '65320000', '和田县');
INSERT INTO `td_area` VALUES ('65322200', '65320000', '墨玉县');
INSERT INTO `td_area` VALUES ('65322300', '65320000', '皮山县');
INSERT INTO `td_area` VALUES ('65322400', '65320000', '洛浦县');
INSERT INTO `td_area` VALUES ('65322500', '65320000', '策勒县');
INSERT INTO `td_area` VALUES ('65322600', '65320000', '于田县');
INSERT INTO `td_area` VALUES ('65322700', '65320000', '民丰县');
INSERT INTO `td_area` VALUES ('65400000', '65000000', '伊犁哈萨克自治州');
INSERT INTO `td_area` VALUES ('65400200', '65400000', '伊宁市');
INSERT INTO `td_area` VALUES ('65400300', '65400000', '奎屯市');
INSERT INTO `td_area` VALUES ('65402100', '65400000', '伊宁县');
INSERT INTO `td_area` VALUES ('65402200', '65400000', '察布查尔锡伯自治县');
INSERT INTO `td_area` VALUES ('65402300', '65400000', '霍城县');
INSERT INTO `td_area` VALUES ('65402400', '65400000', '巩留县');
INSERT INTO `td_area` VALUES ('65402500', '65400000', '新源县');
INSERT INTO `td_area` VALUES ('65402600', '65400000', '昭苏县');
INSERT INTO `td_area` VALUES ('65402700', '65400000', '特克斯县');
INSERT INTO `td_area` VALUES ('65402800', '65400000', '尼勒克县');
INSERT INTO `td_area` VALUES ('65420000', '65000000', '塔城地区');
INSERT INTO `td_area` VALUES ('65420100', '65420000', '塔城市');
INSERT INTO `td_area` VALUES ('65420200', '65420000', '乌苏市');
INSERT INTO `td_area` VALUES ('65422100', '65420000', '额敏县');
INSERT INTO `td_area` VALUES ('65422300', '65420000', '沙湾县');
INSERT INTO `td_area` VALUES ('65422400', '65420000', '托里县');
INSERT INTO `td_area` VALUES ('65422500', '65420000', '裕民县');
INSERT INTO `td_area` VALUES ('65422600', '65420000', '和布克赛尔蒙古自治县');
INSERT INTO `td_area` VALUES ('65430000', '65000000', '阿勒泰地区');
INSERT INTO `td_area` VALUES ('65430100', '65430000', '阿勒泰市');
INSERT INTO `td_area` VALUES ('65432100', '65430000', '布尔津县');
INSERT INTO `td_area` VALUES ('65432200', '65430000', '富蕴县');
INSERT INTO `td_area` VALUES ('65432300', '65430000', '福海县');
INSERT INTO `td_area` VALUES ('65432400', '65430000', '哈巴河县');
INSERT INTO `td_area` VALUES ('65432500', '65430000', '青河县');
INSERT INTO `td_area` VALUES ('65432600', '65430000', '吉木乃县');
INSERT INTO `td_area` VALUES ('65900000', '65000000', '省直辖行政单位');
INSERT INTO `td_area` VALUES ('65900100', '65900000', '石河子市');
INSERT INTO `td_area` VALUES ('65900200', '65900000', '阿拉尔市');
INSERT INTO `td_area` VALUES ('65900300', '65900000', '图木舒克市');
INSERT INTO `td_area` VALUES ('65900400', '65900000', '五家渠市');
INSERT INTO `td_area` VALUES ('71000000', '0', '台湾省');
INSERT INTO `td_area` VALUES ('81000000', '0', '香港特别行政区');
INSERT INTO `td_area` VALUES ('82000000', '0', '澳门特别行政区');

-- ----------------------------
-- Table structure for `td_carousel`
-- ----------------------------
DROP TABLE IF EXISTS `td_carousel`;
CREATE TABLE `td_carousel` (
  `CAROUSEL_ID` varchar(100) NOT NULL,
  `IMGURL` varchar(255) DEFAULT NULL COMMENT '轮播图',
  `HREF` text COMMENT '链接',
  `SORT` int(11) NOT NULL COMMENT '排序',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家id',
  PRIMARY KEY (`CAROUSEL_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of td_carousel
-- ----------------------------
INSERT INTO `td_carousel` VALUES ('7d0f34da94b343f3af957b5de3f8b976', 'upload/carousel/20170314/785c232447114eab82f86c7de7264e0e.jpg', '#', '5', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `td_carousel` VALUES ('8701eea7661f4a8b96e6cd6d881b5f7f', 'upload/carousel/20170314/4ea5c47bc1f145598bf71a1ff41c1256.jpg', '#', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `td_carousel` VALUES ('9387168365914f5888e5581d32bba1f6', 'upload/carousel/20170314/73449e5b36c449058308ecfe4ac47311.jpg', '#', '3', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `td_carousel` VALUES ('c182961328f840d2ad7f4f945fbb82d7', 'upload/carousel/20170314/67e88921fa1546008b45279357693bbe.jpg', '#', '4', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `td_carousel` VALUES ('de8669bb0b7645088954b70c30b27116', 'upload/carousel/20170314/a0ad322a880d472eb373003320cf617d.jpg', '#', '2', 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `td_logo`
-- ----------------------------
DROP TABLE IF EXISTS `td_logo`;
CREATE TABLE `td_logo` (
  `LOGO_ID` varchar(100) NOT NULL,
  `LOGOIMGURL` varchar(255) DEFAULT NULL COMMENT 'logo图片',
  `FLAG` int(11) NOT NULL COMMENT '是否生效(0:失效1：生效)',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家id',
  PRIMARY KEY (`LOGO_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of td_logo
-- ----------------------------
INSERT INTO `td_logo` VALUES ('4caeebb2b6b54fd18b6bcdc550f43a0a', 'upload/lb/20170314/28aa2c483a7449d08d8b486e5689ed6a.jpg', '1', 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `te_agentaccount`
-- ----------------------------
DROP TABLE IF EXISTS `te_agentaccount`;
CREATE TABLE `te_agentaccount` (
  `AGENTACCOUNT_ID` varchar(100) NOT NULL COMMENT '账户ID',
  `ACCOUNT_MONEY` varchar(255) DEFAULT NULL COMMENT '账户余额',
  `AGENTMANGER_ID` varchar(255) DEFAULT NULL COMMENT '代理商ID',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FLAG` varchar(255) DEFAULT NULL COMMENT '0冻结 1正常',
  PRIMARY KEY (`AGENTACCOUNT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of te_agentaccount
-- ----------------------------
INSERT INTO `te_agentaccount` VALUES ('076f05bcb338440b99f5d2e0fe759f7b', null, '75884bd4495e4c9dbd1648449ef09510', '2017-03-30 10:57:04', '1');
INSERT INTO `te_agentaccount` VALUES ('111', '2095.52', '1', null, '1');
INSERT INTO `te_agentaccount` VALUES ('87d430e1c560483eb80565035d80ef5d', null, '26770c81d31846ddb4422a36a543549d', '2017-03-30 13:21:18', '1');
INSERT INTO `te_agentaccount` VALUES ('9ca26154d8044000b3ab37864c577a83', null, '475afb8117f44dd087e89c2bda5c7f2c', '2017-03-31 15:28:57', '1');
INSERT INTO `te_agentaccount` VALUES ('af00fba725894f9dbd28c6a0ee049051', null, '630acc32d07c485288fa069a09caad47', '2017-03-29 00:52:17', '1');
INSERT INTO `te_agentaccount` VALUES ('af308ab3e1df4a2dab97f5150742a0dc', null, '8cafc267ffe2412bb505e778bcedd65a', '2017-03-28 23:15:08', '1');
INSERT INTO `te_agentaccount` VALUES ('b4af4c7809f04b69ad30f4a61e59ab41', null, '02b70bcb9e674ef6adb3d953e4ddb715', '2017-03-30 11:10:43', '1');
INSERT INTO `te_agentaccount` VALUES ('ffc4263b6b5f4e1d8e79e40745c99ba7', null, 'dbc12153ff94428c8ca21030248c78c6', '2017-03-31 14:36:11', '1');

-- ----------------------------
-- Table structure for `te_agentbusiness`
-- ----------------------------
DROP TABLE IF EXISTS `te_agentbusiness`;
CREATE TABLE `te_agentbusiness` (
  `AGENTBUSINESS_ID` varchar(100) NOT NULL,
  `BUSINESSNAME` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `BUSINESS_ID` varchar(255) DEFAULT NULL COMMENT '业务产品主键',
  `BUSINESS_NUM` varchar(255) DEFAULT NULL COMMENT '产品剩余数量',
  `HAS_SALE` varchar(255) DEFAULT NULL COMMENT '已出售数量',
  `UNIT_PRICE` varchar(255) DEFAULT NULL COMMENT '单价',
  `FLAG` varchar(255) DEFAULT NULL COMMENT '状态 0：未使用 1：使用2暂停代理3取消暂停',
  `AGENTMANGER_ID` varchar(255) DEFAULT NULL COMMENT '代理商ID',
  `SALE` varchar(255) DEFAULT NULL COMMENT '打折',
  PRIMARY KEY (`AGENTBUSINESS_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of te_agentbusiness
-- ----------------------------
INSERT INTO `te_agentbusiness` VALUES ('0015af823aa84b2b9d50d39add6df58b', '微红包', '123', '0', '0', '0.00', '0', '26770c81d31846ddb4422a36a543549d', '0.3');
INSERT INTO `te_agentbusiness` VALUES ('036a4384fb4d4296bd4e76b46d7ad27b', '微红包', '123', '0', '0', '0.00', '0', 'dbc12153ff94428c8ca21030248c78c6', '0.2');
INSERT INTO `te_agentbusiness` VALUES ('0955c3dcb9da4b27bd5da061b7ef4337', '微模版', '567', '0', '0', '0.00', '0', '475afb8117f44dd087e89c2bda5c7f2c', '0.87');
INSERT INTO `te_agentbusiness` VALUES ('12e68234386d46a99aa972f4bbe58131', '微商城', '234', '0', '0', '0.00', '0', 'dbc12153ff94428c8ca21030248c78c6', '0.4');
INSERT INTO `te_agentbusiness` VALUES ('539f4b3b0a8240cf8ebcf3d53541232b', '微商城', '234', '0', '0', '0.00', '0', '475afb8117f44dd087e89c2bda5c7f2c', '0.42');
INSERT INTO `te_agentbusiness` VALUES ('544f21c42f6b4fbfb1e59107c263ad4b', '微商城', '234', '0', '0', '0.00', '3', '8cafc267ffe2412bb505e778bcedd65a', '0.7');
INSERT INTO `te_agentbusiness` VALUES ('59ccf7b0b7934d3f84fcd99686193d4a', '微商城', '234', '57358', '15', '0.03', '1', '1', '0.2');
INSERT INTO `te_agentbusiness` VALUES ('7eb628c2b5474cd8a96528af4ae4e016', '微模版', '567', '0', '0', '0.00', '0', 'dbc12153ff94428c8ca21030248c78c6', '0.3');
INSERT INTO `te_agentbusiness` VALUES ('a3c862e7f0d34f2c86b385dd22510bdc', '微赶集', 'de9e27005a7d48d5a73bf8c71e5ddf5a', '0', '0', '0.00', '0', '475afb8117f44dd087e89c2bda5c7f2c', '0.59');
INSERT INTO `te_agentbusiness` VALUES ('a77199f7ffe647c2995f7120053831ea', '微红包', '123', '0', '0', '0.00', '0', '02b70bcb9e674ef6adb3d953e4ddb715', '0.1');
INSERT INTO `te_agentbusiness` VALUES ('acadb3fe087742dc9b4bdd30deb677b2', '微模版', '567', '0', '0', '0.00', '0', '1', '0.3');
INSERT INTO `te_agentbusiness` VALUES ('aedfc2e3cb0149efbd599006f2fcae6e', '微模版', '567', '0', '0', '0.00', '0', '26770c81d31846ddb4422a36a543549d', '0.4');
INSERT INTO `te_agentbusiness` VALUES ('b244e56f2d424f3c9833a1d4d082bfe5', '微模版', '567', '0', '0', '0.00', '0', '8cafc267ffe2412bb505e778bcedd65a', '0.2');
INSERT INTO `te_agentbusiness` VALUES ('c0d98cd400d94d95bc7959e8a970d7d8', '微商城', '234', '0', '0', '0.00', '0', '630acc32d07c485288fa069a09caad47', '0.7');
INSERT INTO `te_agentbusiness` VALUES ('cae8b46fec3b470f942d45bce483ecdc', '微商城', '234', '0', '0', '0.00', '0', '75884bd4495e4c9dbd1648449ef09510', '0.7');
INSERT INTO `te_agentbusiness` VALUES ('cbd9ff3e2d244f2491b117e4b56d59d6', '微商城', '234', '0', '0', '0.00', '0', '26770c81d31846ddb4422a36a543549d', '0.2');
INSERT INTO `te_agentbusiness` VALUES ('d5cf3551c5b244679180b375b84087ae', '微红包', '123', '0', '0', '0.00', '0', '75884bd4495e4c9dbd1648449ef09510', '0.7');
INSERT INTO `te_agentbusiness` VALUES ('e255109e6a1b42c3aaf273eacf8b86f3', '微红包', '123', '0', '0', '0.00', '0', '1', '0.7');
INSERT INTO `te_agentbusiness` VALUES ('e72bfd438286405aa1eec9e3679fb95c', '微模版', '567', '0', '0', '0.00', '0', '02b70bcb9e674ef6adb3d953e4ddb715', '0.7');
INSERT INTO `te_agentbusiness` VALUES ('e98733551c1142418fea92b0955eec88', '微模版', '567', '0', '0', '0.00', '0', '75884bd4495e4c9dbd1648449ef09510', '0.7');
INSERT INTO `te_agentbusiness` VALUES ('f2e553d9a42946deba2320c1879f5aa6', '微模版', '567', '0', '0', '0.00', '0', '630acc32d07c485288fa069a09caad47', '0.7');
INSERT INTO `te_agentbusiness` VALUES ('f67c126f1bec4b3ea59408db2395d199', '微商城', '234', '0', '0', '0.00', '0', '02b70bcb9e674ef6adb3d953e4ddb715', '0.7');

-- ----------------------------
-- Table structure for `te_agentmanger`
-- ----------------------------
DROP TABLE IF EXISTS `te_agentmanger`;
CREATE TABLE `te_agentmanger` (
  `AGENTMANGER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL COMMENT '代理商用户名',
  `PWD` varchar(255) DEFAULT NULL COMMENT '代理商登录密码',
  `AGENTNAME` varchar(255) DEFAULT NULL COMMENT '代理商名',
  `AGENTPROVINCE` varchar(255) DEFAULT NULL COMMENT '代理商省份',
  `AGENTAREA` varchar(255) DEFAULT NULL COMMENT '代理商区域',
  `CONTACTS` varchar(255) DEFAULT NULL COMMENT '联系人',
  `PHONE` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `AGENTLEADNAME` varchar(255) DEFAULT NULL COMMENT '代理商负责人姓名',
  `AGENTLEADPHONE` varchar(255) DEFAULT NULL COMMENT '代理商负责人电话',
  `CARDNO` varchar(255) DEFAULT NULL COMMENT '代理商负责人身份证',
  `CARDZHENGIMG` varchar(255) DEFAULT NULL COMMENT '代理商负责人身份证正面照片',
  `CARDFANIMG` varchar(255) DEFAULT NULL COMMENT '代理商负责人身份证反面照片',
  `AGENTCOMPANY` varchar(255) DEFAULT NULL COMMENT '代理商公司名',
  `COMPANYNO` varchar(255) DEFAULT NULL COMMENT '组织机构代码',
  `BUSINESSLICENCE` varchar(255) DEFAULT NULL COMMENT '代理商营业执照',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`AGENTMANGER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of te_agentmanger
-- ----------------------------
INSERT INTO `te_agentmanger` VALUES ('123', '测试', null, null, '天津', '天津', null, '18322781189', null, null, null, null, null, null, null, null, '2012-12-01');

-- ----------------------------
-- Table structure for `te_agentuser`
-- ----------------------------
DROP TABLE IF EXISTS `te_agentuser`;
CREATE TABLE `te_agentuser` (
  `AGENTMANGER_ID` varchar(255) NOT NULL DEFAULT '' COMMENT '代理商用户ID',
  `USERNAME` varchar(255) DEFAULT NULL COMMENT '代理商用户名',
  `PWD` varchar(255) DEFAULT NULL COMMENT '代理商登录密码',
  `AGENTNAME` varchar(255) DEFAULT NULL COMMENT '代理商名',
  `AGENTPROVINCE` varchar(255) DEFAULT NULL COMMENT '代理商省份',
  `AGENTAREA` varchar(255) DEFAULT NULL COMMENT '代理商区域',
  `CONTACTS` varchar(255) DEFAULT NULL COMMENT '联系人',
  `PHONE` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `AGENTLEADNAME` varchar(255) DEFAULT NULL COMMENT '代理商负责人姓名',
  `AGENTLEADPHONE` varchar(255) DEFAULT NULL COMMENT '代理商负责人电话',
  `CARDNO` varchar(255) DEFAULT NULL COMMENT '代理商负责人身份证',
  `CARDZHENGIMG` varchar(255) DEFAULT NULL COMMENT '代理商负责人身份证正面照片',
  `CARDFANIMG` varchar(255) DEFAULT NULL COMMENT '代理商负责人身份证反面照片',
  `AGENTCOMPANY` varchar(255) DEFAULT NULL COMMENT '代理商公司名',
  `COMPANYNO` varchar(255) DEFAULT NULL COMMENT '组织机构代码',
  `BUSINESSLICENCE` varchar(255) DEFAULT NULL COMMENT '代理商营业执照',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FLAG` varchar(255) DEFAULT NULL COMMENT '1正常2冻结',
  `USERID` varchar(255) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`AGENTMANGER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of te_agentuser
-- ----------------------------
INSERT INTO `te_agentuser` VALUES ('02b70bcb9e674ef6adb3d953e4ddb715', '12323', null, '12', null, '河南', '2', '2', '2', '2', '2', 'upload/user/3108582174784026afd2e39b1887a2e5/5a37887bdadb445780cbd08c74b7a69f.jpg', 'upload/user/fb45070254354d468a180b9ca88bbe25/4349dd5c098b412bbd6104dcb7cdd4e2.jpg', '2', '2', 'upload/user/b2779adb6dd447bb9820eb215072e62f/6f775fbb2eeb442297f708f25aa99987.jpg', '2017-03-30 11:10:43', '1', '1');
INSERT INTO `te_agentuser` VALUES ('1', 'wanghuan', 'e10adc3949ba59abbe56e057f20f883e', '王欢代理商', null, '天津', '111', '13821040175', '王欢', '11', '11', 'upload/user/2ee06a242e584fd3af50f82eb38fbab1/655de5cf139c4eaca6460e4b639303ea.jpg', 'upload/user/68b00b5576fe4cd6b9fff69c3f83d29c/70540b2b7865425fbd56667f5ee6691a.jpg', '1', '1', 'upload/user/648fac0bc2ec4614a46a708912b56961/4d687acdbfeb4522a1501dc5f7f43a58.jpg', '2017-03-30 12:13:15', '1', '1');
INSERT INTO `te_agentuser` VALUES ('26770c81d31846ddb4422a36a543549d', '测试11111', 'e10adc3949ba59abbe56e057f20f883e', '驱蚊器555', null, '新疆', '去恶趣味', '123123123', '阿达', '12331231', '12321312312312', 'upload/user/7a75929eddd8479b9da4e3fdf2b01bb8/52a4fbd6163b47e9bddd25a265cb5482.jpg', 'upload/user/7c105644058d411daed02a8a48f320d6/f8ab81ebc2cf4ce18d40af46b0d9a062.jpg', '其恶趣味请问', '13131231311', 'upload/user/a240c4012fee47658946aee81d92ab3c/a57f3423f7d342e4bfbbc08cf8f3b3e3.jpg', '2017-03-30 13:44:22', '1', '1');
INSERT INTO `te_agentuser` VALUES ('475afb8117f44dd087e89c2bda5c7f2c', '4234', 'e10adc3949ba59abbe56e057f20f883e', '231331', null, '青海', '13123', '18311781', '测试3', '11111111', '120225166787651253', 'upload/user/f10daccf75634dd5b5a730cfb0c3c3be/2904400198554f13935c192903a910bf.jpg', 'upload/user/59986cd657934031a9b7c338c462b2d4/ac6d0bd083654224b42e24acbd73c162.jpg', '1313', '123445654322', 'upload/user/7daa27ecda4340c881ead3604a4d14d8/e80225509cfb4317a3bd02a4ad498ec9.jpg', '2017-03-31 15:28:55', '1', '1');
INSERT INTO `te_agentuser` VALUES ('75884bd4495e4c9dbd1648449ef09510', '测试', null, '测试1', null, '新疆', '测试2', '18322781189', '测试3', '18322782287', '120225166787651253', 'upload/user/85e530426e5f425da6fee472f22f6254/2379037ef8114b6ca838fbb96fcc7acb.jpg', 'upload/user/0fb849dca7664803a2ca7bca065b7670/7f0275afa3cd40a7b5b5fd50971d56c4.jpg', '测试4', '123445654322', 'upload/user/1bece30d4b3d4777963120079fe8c289/f3acd0440c3346b896c99237e947f3e4.jpg', '2017-03-30 10:57:03', '1', '1');
INSERT INTO `te_agentuser` VALUES ('8cafc267ffe2412bb505e778bcedd65a', '1', null, '1', null, '北京', '1', '1', '1', '1', '1', 'upload/user/89e84668f43d449b8820e06415a3c051/fab7a1d71bb44ee19e8ab1e378ab03a5.jpg', 'upload/user/085dd20920794074a0e9c63fc06ae037/95eb0d05a1f049a68f6ce1455c1cf449.jpg', '1', '1', 'upload/user/5eb77fbb0a5c4848a060f5a8e7cb36df/f7adb15243074adf9f527d3589fb354d.jpg', '2017-03-29 01:16:32', '1', '1');
INSERT INTO `te_agentuser` VALUES ('dbc12153ff94428c8ca21030248c78c6', '123', '202cb962ac59075b964b07152d234b70', '123', null, '甘肃', '123', '123', '213', '123', '123', 'upload/user/abf29a623c0147ad91bfd5d81ee788f1/51d4fa08bdd94d3a85a84263c817b824.jpg', 'upload/user/e2e865235a4d45e4844f924f30a0b41b/cabf5513c4a9400ba6541e392d3098f7.jpg', '12313', '12312', 'upload/user/32eb548cb61a4ccea9f9bd72cd6fd9be/e37af88926324a91bb37cb838708daa9.jpg', '2017-03-31 14:36:11', '1', '1');

-- ----------------------------
-- Table structure for `te_business`
-- ----------------------------
DROP TABLE IF EXISTS `te_business`;
CREATE TABLE `te_business` (
  `BUSINESS_ID` varchar(255) NOT NULL DEFAULT '' COMMENT '业务产品主键',
  `BUSINESS_NAME` varchar(255) DEFAULT NULL COMMENT '业务名',
  `BUSINESS_DESCRIBE` varchar(255) DEFAULT NULL COMMENT '描述',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `USERID` varchar(255) DEFAULT NULL COMMENT '创建人',
  `FLAG` varchar(255) DEFAULT NULL COMMENT '1：正常 2：停售 ',
  `FWF` varchar(255) DEFAULT NULL COMMENT '投放服务费',
  PRIMARY KEY (`BUSINESS_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of te_business
-- ----------------------------
INSERT INTO `te_business` VALUES ('123', '微红包', '微红包微红包微红包微红包微红包微红包微红包', '2017-04-01 17:37:08', '1', '1', '1');
INSERT INTO `te_business` VALUES ('234', '微商城', '微商城微商城微商城微商城微商城微商城', '2017-03-29 16:05:14', '1', '1', '1');
INSERT INTO `te_business` VALUES ('567', '微模版', '微模版微模版微模版微模版', '2017-03-30 16:05:19', '1', '1', '1');
INSERT INTO `te_business` VALUES ('835d82e2ab3c4a7d85ab18f34ae4c23b', '1233', '1233', '2017-04-01 17:19:32', '1', '2', '1233');
INSERT INTO `te_business` VALUES ('de9e27005a7d48d5a73bf8c71e5ddf5a', '微赶集', '微赶集微赶集微赶集微赶集', '2017-03-31 14:51:27', '1', '1', '1');

-- ----------------------------
-- Table structure for `te_businesspackage`
-- ----------------------------
DROP TABLE IF EXISTS `te_businesspackage`;
CREATE TABLE `te_businesspackage` (
  `BUSINESSPACKAGE_ID` varchar(100) NOT NULL COMMENT '套餐ID',
  `PACKAGENAME` varchar(255) DEFAULT NULL COMMENT '套餐名',
  `PACKAGE_DESCRIBE` varchar(255) DEFAULT NULL COMMENT '套餐描述',
  `COUNT` varchar(255) DEFAULT NULL COMMENT '数量',
  `TOTALPRICE` varchar(255) DEFAULT NULL COMMENT '套餐定价',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `USERID` varchar(255) DEFAULT NULL COMMENT '创建人',
  `FLAG` varchar(255) DEFAULT NULL COMMENT '1：在售 2:停售',
  `PACKAGE_ID` varchar(255) DEFAULT NULL,
  `DAYS` varchar(255) DEFAULT NULL COMMENT '有效期天数',
  `BUSINESS_ID` varchar(255) DEFAULT NULL COMMENT '业务产品id',
  PRIMARY KEY (`BUSINESSPACKAGE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of te_businesspackage
-- ----------------------------
INSERT INTO `te_businesspackage` VALUES ('0918dad510d447bc9dfcfbc00efefe94', '套餐1', '套餐1套餐1套餐1', '200', '5000.00', '2017-04-01 14:40:18', '1', '1', null, '12332', 'e00a9ab22ed54e0e9aa8e2c6822c721f');
INSERT INTO `te_businesspackage` VALUES ('1', '套餐3', '套餐3套餐3套餐3套餐3套餐3', '3121', '5000.00', '2017-03-31 00:35:10', '1', '1', null, '200', '567');
INSERT INTO `te_businesspackage` VALUES ('11', '套餐一', '套餐一套餐一套餐一套餐一', '500', '3000.00', '2017-03-29 23:28:16', '1', '1', null, '200', '123');
INSERT INTO `te_businesspackage` VALUES ('111', '套餐1', '套餐1套餐1套餐1套餐1套餐1', '34242', '6000.00', '2017-03-30 09:12:57', '1', '1', null, '200', '234');
INSERT INTO `te_businesspackage` VALUES ('1fecbcae9a8f4c9f8452a31283217bb1', '套餐1', '套餐1套餐1套餐1套餐1', '200', '6000.00', '2017-04-01 14:51:26', '1', '1', null, '200', '7a7d329454344e40a8f9205b83db3474');
INSERT INTO `te_businesspackage` VALUES ('2', '套餐2', '套餐2套餐2套餐2套餐2套餐2', '2313', '2000.00', '2017-03-30 10:52:53', '1', '1', null, '200', '567');
INSERT INTO `te_businesspackage` VALUES ('2a2a9f167fe54cae859c1f6c9b5d38fa', '大套餐', '大套餐大套餐大套餐大套餐大套餐大套餐大套餐', '200', '5000.00', '2017-03-31 14:51:20', '1', '1', null, '200', 'de9e27005a7d48d5a73bf8c71e5ddf5a');
INSERT INTO `te_businesspackage` VALUES ('361c96f5c90144b5a303d3dd5bef1bb0', '300套餐', '300套餐300套餐300套餐300套餐300套餐300套餐300套餐', '300', '3000.00', '2017-04-01 10:30:39', '1', '1', null, '', '123');
INSERT INTO `te_businesspackage` VALUES ('4', '套餐1', '套餐1套餐1套餐1套餐1套餐1', '23131', '3000.00', '2017-03-30 00:41:14', '1', '1', null, '200', '234');
INSERT INTO `te_businesspackage` VALUES ('7659d8a768d24a84a1d98a81e050472c', '2112', '1212', '121', '1212', '2017-04-01 14:02:58', '1', '1', null, '1', '2bcd97b6a3b844d5a369d8f3e95937a8');
INSERT INTO `te_businesspackage` VALUES ('946b3a1bf6b04c829c2b505408beab8f', '套餐一', '套餐一套餐一套餐一套餐一套餐一套餐一套餐一套餐一', '200', '6000.00', '2017-03-31 14:50:52', '1', '1', null, '200', 'de9e27005a7d48d5a73bf8c71e5ddf5a');

-- ----------------------------
-- Table structure for `te_codesegment`
-- ----------------------------
DROP TABLE IF EXISTS `te_codesegment`;
CREATE TABLE `te_codesegment` (
  `CODESEGMENT_ID` varchar(100) NOT NULL,
  `CODESTART` varchar(255) DEFAULT NULL COMMENT '起始段码',
  `CODEEND` varchar(255) DEFAULT NULL COMMENT '终止段码',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '录入时间',
  `BINDINGACTIVITY` varchar(255) DEFAULT NULL COMMENT '绑定活动',
  `FLAG` varchar(255) DEFAULT NULL COMMENT '1未投放2投放3已绑定未投放4已失效5未绑定',
  `TASKMANGER_ID` varchar(255) DEFAULT NULL COMMENT '活动id',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT 'shangjia',
  PRIMARY KEY (`CODESEGMENT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of te_codesegment
-- ----------------------------
INSERT INTO `te_codesegment` VALUES ('0c810b23d24b4a628a3742ccbeda39ed', '1', '200', '2017-04-06', '厄齐尔', '2', '6a4409fa92f84a3fb0757601c217e955', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_codesegment` VALUES ('2740ad077a7c4836a650a39035d0fbc2', '401', '404', '2017-04-06', '额企鹅去', '3', '05347045908a4b20a68654fe8106c58b', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_codesegment` VALUES ('997fe3aa1b5148f28f83e9bab48b2311', '201', '400', '2017-04-06', '厄齐尔', '3', 'a90f05315d33437a9a357fae2174495a', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_codesegment` VALUES ('eeaf3595e18f42d1b5c6f731e0e44fff', '405', '504', '2017-04-28', '1212', '3', '05543b1ce84b453bb7742526bc0aa907', 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `te_distribution`
-- ----------------------------
DROP TABLE IF EXISTS `te_distribution`;
CREATE TABLE `te_distribution` (
  `APPROVEDISTRIBUTION_ID` varchar(100) NOT NULL,
  `PHONE` varchar(255) DEFAULT NULL COMMENT '手机号',
  `CARDNO` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `DISTRIBUTIONNAME` varchar(255) DEFAULT NULL COMMENT '分销商姓名',
  `CARDZHENGIMG` varchar(255) DEFAULT NULL COMMENT '身份证正面照片',
  `CARDFANIMG` varchar(255) DEFAULT NULL COMMENT '身份证反面照片',
  `CREATETIME` date DEFAULT NULL COMMENT '创建时间',
  `APPROVETYPE` int(10) DEFAULT '1' COMMENT '审批状态1：申请；2：同意；3：拒绝',
  `USERID` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT '商家ID',
  PRIMARY KEY (`APPROVEDISTRIBUTION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of te_distribution
-- ----------------------------

-- ----------------------------
-- Table structure for `te_goods`
-- ----------------------------
DROP TABLE IF EXISTS `te_goods`;
CREATE TABLE `te_goods` (
  `COMMODITY_ID` varchar(50) NOT NULL COMMENT '商品ID',
  `NAME` varchar(200) DEFAULT NULL,
  `basetypeid` varchar(50) DEFAULT NULL COMMENT '商品分类ID',
  `remark` varchar(250) DEFAULT NULL COMMENT '小编描述',
  `coupon` varchar(200) DEFAULT NULL COMMENT '商品优惠信息',
  `starttime` timestamp NULL DEFAULT '2015-01-01 00:00:00' COMMENT '起始时间',
  `endtime` timestamp NULL DEFAULT '2025-01-01 00:00:00' COMMENT '结束时间',
  `flag` int(10) DEFAULT '1' COMMENT '是否可用 1：可用 0 不可用',
  `brandid` varchar(50) DEFAULT '' COMMENT '品牌id',
  `SALENUM` int(11) DEFAULT '0' COMMENT '销量',
  `CREATETIME` timestamp NULL DEFAULT NULL COMMENT '商品创建时间',
  `DETAIL` varchar(5000) DEFAULT NULL COMMENT '商品详情',
  `wordremark` varchar(5000) DEFAULT NULL COMMENT '商品描述',
  `favoritenum` int(11) DEFAULT '0' COMMENT '收藏人数',
  `fixationtext` text COMMENT '固定的8个栏位',
  `additiontext` text COMMENT '附加栏位',
  `longaddtext` text COMMENT '长条的输入框',
  `weight` int(11) DEFAULT NULL COMMENT '权重',
  PRIMARY KEY (`COMMODITY_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='业务表-商品表';

-- ----------------------------
-- Records of te_goods
-- ----------------------------
INSERT INTO `te_goods` VALUES ('00fe78aa26b04220b887c1747386017b', 'GUCCI 古驰 印花手拿包 387088 CU810 9769', 'd564912fd9f34160a5e2cb117ac2f596', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 15:01:39', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468305356917.jpg\" style=\"width: 709px; height: 2870px;\" /></p>\r\n', '<p>商品名称：古驰印花手拿包</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：387088 CU810 9769</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：50%牛皮和50%PU</p>\r\n\r\n<p>适用人群：通用</p>\r\n', null, '商品名称：古驰印花手拿包#商品产地：意大利#产品货号：387088 CU810 9769#设计风格：时尚#商品颜色：印花#商品材质：50%牛皮和50%PU#适用人群：通用', '', '', '0');
INSERT INTO `te_goods` VALUES ('071deef9882a4fabb43cdefb85929420', 'GUCCI 古驰 舒适套头衫 408147 Z596A 1514 ', 'fb8f7cfc3e604cf7848b6f1447db5d11', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 18:44:48', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468372572449.jpg\" style=\"width: 709px; height: 3224px;\" /></p>\r\n', '<p>商品名称：古驰舒适套头衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408147&nbsp;Z596A&nbsp;1514&nbsp;</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰舒适套头衫#商品产地：意大利#产品货号：408147 Z596A 1514 #设计风格：时尚#商品颜色：拼色#商品材质：100%羊毛#适用人群：男式', '', '', '27');
INSERT INTO `te_goods` VALUES ('079da6d81fc344ca981a8f1596d7ffdf', 'GUCCI 古驰 男士短袖POLO衫 408323 X7332 4058', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-20 06:31:37', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1467357820154.jpg\" style=\"width: 1276px; height: 4250px;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>商品名称：古驰男士短袖POLO衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408323&nbsp;X7332&nbsp;4058</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：深蓝</p>\r\n\r\n<p>商品材质：93%棉和7%弹力纤维</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士短袖POLO衫#商品产地：意大利#产品货号：408323 X7332 4058#设计风格：时尚#商品颜色：深蓝#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '99');
INSERT INTO `te_goods` VALUES ('07b0f65879d5424bb9aaf7bb9e2b27be', 'GUCCI 古驰 Caleido GG 高级人造革双折式皮夹 406558 KVY1N 9769', '59372bab48c34c57b877c00b5e315a4d', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 16:43:55', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468305417652.jpg\" style=\"width: 709px; height: 1705px;\" /></p>\r\n', '<p>商品名称：古驰Caleido&nbsp;GG&nbsp;高级人造革双折式皮夹</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：406558&nbsp;KVW1N&nbsp;9769</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%PU</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>GG高级人造革几何caleido印花双折式皮夹。</p>\r\n\r\n<p>米色/棕色GG高级人造革，配以黑色caleido印花，采用环保工艺制作而成</p>\r\n\r\n<p>黑色皮革细节</p>\r\n\r\n<p>六个卡片隔层和两个钞票隔层</p>\r\n', null, '商品名称：古驰Caleido GG 高级人造革双折式皮夹#商品产地：意大利#产品货号：406558 KVY1N 9769#设计风格：时尚#商品颜色：印花#商品材质：100%PU#适用人群：男式', '', '', '0');
INSERT INTO `te_goods` VALUES ('08a8abf6c4b44d829e3931a8280f81f4', 'GUCCI 古驰 高级人造革手拿包 387088 A9810 9643', 'd564912fd9f34160a5e2cb117ac2f596', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 22:04:19', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468308118699.jpg\" style=\"width: 709px; height: 2855px;\" /></p>\r\n', '<p>商品名称：古驰高级人造革手拿包</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：387088&nbsp;A9810&nbsp;9643</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：50%牛皮和50%PU</p>\r\n\r\n<p>适用人群：通用</p>\r\n\r\n<p>米色/乌木色GG高级人造革，采用环保工艺制作而成，配以深棕色皮革细节</p>\r\n\r\n<p>翻盖附磁扣</p>\r\n\r\n<p>衬垫衬里</p>\r\n\r\n<p>拉链内袋和智能手机袋</p>\r\n\r\n<p>37厘米（宽）x24厘米（高）x4厘米（深）</p>\r\n', null, '商品名称：古驰高级人造革手拿包#商品产地：意大利#产品货号：387088 A9810 9643#设计风格：时尚#商品颜色：印花#商品材质：50%牛皮和50%PU#适用人群：男式', '', '', '0');
INSERT INTO `te_goods` VALUES ('0d1be1e083bb4378be2fac092c9e5869', 'GUCCI 古驰 针织运动衫 408241 X6468 6204', '731a81de599542ff9982a793205e441e', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-06 13:58:06', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468375716136.jpg\" style=\"width: 709px; height: 3252px;\" /></p>\r\n', '<p>GUCCI&nbsp;古驰 针织运动衫&nbsp;408241&nbsp;X6468&nbsp;6204</p>\r\n\r\n<p>商品名称：古驰针织运动衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408241&nbsp;X6468&nbsp;6204</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%人造丝</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰针织运动衫 #商品产地：意大利#产品货号： 408241 X6468 6204#设计风格：时尚#商品颜色：印花#商品材质：100%人造丝#适用人群：男式', '', '', '28');
INSERT INTO `te_goods` VALUES ('127981f06e004c79a297258b1962bb29', 'GUCCI 古驰 舒适套头衫 408131 Z5344 6509', 'fb8f7cfc3e604cf7848b6f1447db5d11', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 18:17:11', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468372753027.jpg\" style=\"width: 709px; height: 4085px;\" /></p>\r\n', '<p>商品名称：古驰舒适套头衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408131&nbsp;Z5344&nbsp;6509&nbsp;</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：红色</p>\r\n\r\n<p>商品材质：100%羊绒</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>&nbsp;</p>\r\n', null, '商品名称：古驰舒适套头衫#商品产地：意大利#产品货号：408131 Z5344 6509#设计风格：时尚#商品颜色：红色#商品材质：100%羊绒#适用人群：男式', '', '', '26');
INSERT INTO `te_goods` VALUES ('157d266e6b8846de9f63e2787ad2426e', 'GUCCI古驰 Liberty GG Supreme 铆钉高跟鞋 408278 KWZ80 9794', 'dfe41ba0ff974e99b6a0bbf5799ee7fa', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 10:10:17', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468292431574.jpg\" style=\"width: 591px; height: 3334px;\" /></p>\r\n', '<p>商品名称：古驰Liberty&nbsp;GG&nbsp;Supreme&nbsp;铆钉高跟鞋&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408278&nbsp;KWZ80&nbsp;9794</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%PU</p>\r\n\r\n<p>适用人群：女式</p>\r\n\r\n<p>中跟单鞋，配以铆钉漆皮条纹，马衔扣饰有铆钉设计。</p>\r\n\r\n<p>米色/乌木色&nbsp;GG&nbsp;Supreme&nbsp;帆布，采用环保工艺制作而成，配以黑色漆皮细节</p>\r\n\r\n<p>马衔扣饰有铆钉设计</p>\r\n\r\n<p>漆皮材质饰有铆钉</p>\r\n\r\n<p>2&nbsp;厘米金色鞋跟</p>\r\n', null, '商品名称：古驰Liberty GG Supreme 铆钉高跟鞋 #商品产地：意大利#产品货号： 408278 KWZ80 9794#设计风格：时尚#商品颜色：印花#商品材质：100%PU#适用人群：女式', '参考尺码:欧洲(EU)', '', '0');
INSERT INTO `te_goods` VALUES ('1603151842480001', 'GUCCI 古驰 真皮驾车鞋 353044 AOD00 4009', 'e995646b3ea9413dbd7722bf60fe969a', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 06:42:48', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468292591636.jpg\" style=\"width: 591px; height: 2976px;\" /></p>\r\n', '<p>商品名称：古驰真皮驾车鞋</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：353044&nbsp;AOD00&nbsp;4009</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：其他</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰真皮驾车鞋#商品产地：意大利#产品货号：353044 AOD00 4009#设计风格：时尚#商品颜色：其他#商品材质：真皮#适用人群：男式', '参考尺码:英国(UK)', '', '11');
INSERT INTO `te_goods` VALUES ('1603151953590003', 'GUCCI 古驰 男士短袖POLO衫 408321 X7331 1060', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 07:53:59', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468373412746.jpg\" style=\"width: 709px; height: 3252px;\" /></p>\r\n', '<p>商品名称：古驰男士短袖POLO衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408321&nbsp;X7331&nbsp;1060</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：93%棉和7%<span style=\"font-size: 13px; line-height: 20.8px;\">弹力纤维</span></p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士短袖POLO衫 #商品产地：意大利#产品货号：408321 X7331 1060#设计风格：时尚#商品颜色：黑色#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '18');
INSERT INTO `te_goods` VALUES ('1603151957440004', 'GUCCI古驰 Liberty GG Supreme 铆钉高跟鞋 408278 KWZ80 9797 ', 'dfe41ba0ff974e99b6a0bbf5799ee7fa', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 07:57:44', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468289031996.jpg\" style=\"width: 591px; height: 3623px;\" /></p>\r\n', '<p>商品名称：古驰Liberty&nbsp;GG&nbsp;Supreme&nbsp;铆钉高跟鞋&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408278&nbsp;KWZ80&nbsp;9797&nbsp;</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%PU</p>\r\n\r\n<p>适用人群：女式</p>\r\n', null, '商品名称：古驰Liberty GG Supreme 铆钉高跟鞋 #商品产地：意大利#产品货号：408278 KWZ80 9797#设计风格：时尚#商品颜色：印花#商品材质：100%PU#适用人群：女式', '参考尺码:欧洲(EU)', '', '0');
INSERT INTO `te_goods` VALUES ('1603151959590005', 'GUCCI 古驰 男式刺绣短袖POLO衫 408322 X7333 1000 ', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 21:59:59', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468373202417.jpg\" style=\"width: 709px; height: 3252px;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>商品名称：古驰男式刺绣短袖POLO衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408322&nbsp;X7333&nbsp;1000</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：93%棉和7%弹力纤维</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男式刺绣短袖POLO衫#商品产地：意大利#产品货号：408322 X7333 1000 #设计风格：时尚#商品颜色：黑色#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '19');
INSERT INTO `te_goods` VALUES ('1603152005110006', 'GUCCI 古驰 男士短袖POLO衫 408403 X7335 6239 ', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-21 16:05:11', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468312877699.jpg\" style=\"width: 709px; height: 3252px\" /></p>\r\n', '<p>商品名称：古驰男士短袖POLO衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408403&nbsp;X7335&nbsp;6239</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：其他</p>\r\n\r\n<p>商品材质：93%棉和7%弹力纤维</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士短袖POLO衫 #商品产地：意大利#产品货号：408403 X7335 6239 #设计风格：时尚#商品颜色：其他#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '100');
INSERT INTO `te_goods` VALUES ('1603152010320007', 'GUCCI 古驰 女式休闲短裤 410420 X5741 9016', '1fba625078284ea1a8dfc8f351ddc85f', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 22:10:32', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468312388246.jpg\" /></p>\r\n', '<p>商品名称：古女士休闲短裤&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：410420&nbsp;X5741&nbsp;9016</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：白色</p>\r\n\r\n<p>商品材质：100%尼龙</p>\r\n\r\n<p>适用人群：女士</p>\r\n', null, '商品名称：古驰女士休闲短裤#商品产地：意大利#产品货号：410420 X5741 9016#设计风格：时尚#商品颜色：白色#商品材质：100%尼龙#适用人群：女士', '', '', '95');
INSERT INTO `te_goods` VALUES ('1603152012410008', 'GUCCI 古驰 女士休闲裤 410421 X5741 9016', '1fba625078284ea1a8dfc8f351ddc85f', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-18 04:12:41', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468312421074.jpg\" style=\"width: 709px; height: 3001px;\" /></p>\r\n', '<p>商品名称：古驰女式休闲裤&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：410421&nbsp;X5741&nbsp;9016</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：白色</p>\r\n\r\n<p>商品材质：100%尼龙</p>\r\n\r\n<p>适用人群：女式</p>\r\n', null, '商品名称：古驰男式休闲裤#商品产地：意大利#产品货号：410421 X5741 9016#设计风格：时尚#商品颜色：白色#商品材质：100%尼龙#适用人群：女式', '', '', '0');
INSERT INTO `te_goods` VALUES ('1603152016550009', 'GUCCI 古驰 女式新款羊毛针织开衫 411610 X5793 5007', 'd0c1d7747a7240619c09058e9d90135b', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-21 16:16:55', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468312283308.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>商品名称：古驰女式新款羊毛针织开衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：411610&nbsp;X5793&nbsp;5007</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：女式</p>\r\n', '3', '商品名称：古驰女式新款羊毛针织开衫#商品产地：意大利#产品货号：411610 X5793 5007#设计风格：时尚#商品颜色：拼色#商品材质：100%羊毛#适用人群：女式', '', '', '25');
INSERT INTO `te_goods` VALUES ('1606131201160002', 'ZENITH 真力时 指挥官系列温莎年历腕表 03.2072.4054/01.C711', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-14 16:01:16', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465790449123.jpg\" style=\"width: 850px; height: 2672px;\" /></p>\r\n', '<p>EL-Primero4054型自动上链机芯，直径42毫米，振频36000摆每小时，动力储备50小时，防水50米。精钢表壳配白色亚光表盘，棕色鳄鱼皮表带精钢三折叠式表扣，专卖店和店中店独家表款。</p>\r\n', null, '商品名称：指挥官系列温莎年历腕表#商品产地：瑞士#产品货号：03.2072.4054/01.C711#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：白色亚光#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：男士', '机芯类型:EL-Primero4054型自动上链机芯', '防水功能:防水50米#表径:42毫米#表扣类型:三折叠式表扣', null);
INSERT INTO `te_goods` VALUES ('1606131252490003', 'ZENITH 真力时 指挥官中央秒针腕表 03.2020.670/01.C498', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-14 02:52:49', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465793545341.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite670型自动上链机芯，直径40毫米，振频28800摆每小时，动力储备50小时，防水50米。精钢表壳配银色太阳纹表盘，棕色鳄鱼皮表带，精钢针式表扣。</p>\r\n', null, '商品名称：指挥官中央秒针腕表#商品产地：瑞士#产品货号：03.2020.670/01.C498#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：银色太阳纹#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：男士', '机芯类型:Elite670型自动上链机芯#防水功能:防水50米#表径:40毫米', '表扣类型:精钢针式表扣', null);
INSERT INTO `te_goods` VALUES ('1606131343360004', 'ZENITH 真力时 指挥官系列超薄腕表 03.2010.681/11.C493', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-14 03:43:36', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465796590576.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite681型自动上链机芯,直径40毫米，振频28800摆每小时，动力储备50小时，防水50米。精钢表壳配白色漆面表盘，黑色鳄鱼皮表带，精钢针式表扣。</p>\r\n', null, '商品名称：指挥官系列超薄腕表#商品产地：瑞士#产品货号：03.2010.681/11.C493#设计风格：自动机械#商品颜色：表带颜色：黑色  表盘颜色：白色漆面#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：男士', '机芯类型:Elite681型自动上链机芯#防水功能:防水50米#表径:40毫米', '表扣类型:精钢针式表扣', null);
INSERT INTO `te_goods` VALUES ('1606131400470005', 'ZENITH 真力时 指挥官系列月相腕表03.2143.691/01.c498', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-14 04:00:47', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465797622966.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite691型自动上链机芯,直径40毫米，振频28800摆每小时，动力储备50小时，防水50米。精钢表壳配银色天鹅绒处理表盘，棕色鳄鱼皮表带，精钢针式表扣。</p>\r\n', null, '商品名称：ZENITH 真力时 指挥官系列月相腕表#商品产地：瑞士#产品货号：03.2143.691/01.c498#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：银色天鹅绒#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：男士', '机芯类型:Elite691型自动上链机芯#防水功能:防水50米#表径:40毫米#表扣类型:精钢针式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131406270006', 'ZENITH 真力时 指挥官系列中央秒针腕表18.2021.670/38.C498', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-13 14:06:27', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465797967732.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite670型自动上链机芯，直径40毫米，振频28800摆每小时，动力储备50小时，防水50米。玫瑰金表壳配银色太阳纹表盘，棕色鳄鱼皮表带，玫瑰金针式表扣。</p>\r\n', null, '商品名称：ZENITH 真力时 指挥官系列中央秒针腕表#商品产地：瑞士#产品货号：18.2021.670/38.C498#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：银色太阳纹#商品材质：表带材质：鳄鱼皮  表壳材质：玫瑰金#适用人群：男士', '机芯类型:Elite670型自动上链机芯#防水功能:防水50米#表径:40毫米#表扣类型:玫瑰金针式表扣#', '', null);
INSERT INTO `te_goods` VALUES ('1606131411100007', 'ZENITH 真力时 指挥官系列超薄腕表03.2010.681/01.c493', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-14 04:11:10', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465798246357.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite670型自动上链机芯，直径40毫米，振频28800摆每小时，动力储备50小时，防水50米。玫瑰金表壳配银色太阳纹表盘，棕色鳄鱼皮表带，玫瑰金针式表扣。</p>\r\n', null, '商品名称：指挥官系列超薄腕表#商品产地：瑞士#产品货号：03.2010.681/01.c493#设计风格：自动机械#商品颜色：表带颜色：黑色  表盘颜色：银色太阳纹#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：男士', '机芯类型:Elite681型自动上链机芯#防水功能:防水50米#表径:40毫米#表扣类型:精钢针式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131424020008', 'ZENITH 真力时 指挥官系列月相腕表18.2143.691/01.c498', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-14 18:24:02', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465799029732.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite691型自动上链机芯,直径40毫米，振频28800摆每小时，动力储备50小时，防水50米。玫瑰金表壳配银色天鹅绒处理表盘，棕色鳄鱼皮表带，玫瑰金针式表扣。</p>\r\n', null, '商品名称：指挥官系列月相腕表#商品产地：瑞士#产品货号：18.2143.691/01.c498#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：银色天鹅绒#商品材质：表带材质：鳄鱼皮  表壳材质：玫瑰金#适用人群：男士', '机芯类型:Elite691型自动上链机芯#防水功能:防水50米#表径:40毫米#表扣类型:玫瑰金针式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131431070009', 'ZENITH 真力时 指挥官系列计时腕表03.2110.400/01.C498', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-13 14:31:07', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465799442013.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>EL-Primero400B型自动上链机芯，直径42毫米，振频36000摆每小时，动力储备50小时，防水50米。玫瑰金表壳配银色太阳纹表盘，棕色鳄鱼皮表带，玫瑰金三折叠式表扣。</p>\r\n', null, '商品名称：指挥官系列计时腕表#商品产地：瑞士#产品货号：03.2110.400/01.C498#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：银色太阳纹#商品材质：表带材质：鳄鱼皮  表壳材质：玫瑰金#适用人群：男士', '机芯类型:EL-Primero400B型自动上链机芯#防水功能:防水50米#表径:42毫米#表扣类型:玫瑰金三折叠式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131435510010', 'ZENITH 真力时 指挥官系列超薄腕表03.2010.681/21.C493', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-13 14:35:51', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465799651732.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite681型自动上链机芯,直径40毫米，振频28800摆每小时，动力储备50小时，防水50米。精钢表壳配黑色太阳纹表盘，黑色鳄鱼皮表带，精钢针式表扣。</p>\r\n', null, '商品名称：指挥官系列超薄腕表#商品产地：瑞士#产品货号：03.2010.681/21.C493#设计风格：自动机械#商品颜色：表带颜色：黑色  表盘颜色：黑色太阳纹#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：男士', '机芯类型:Elite681型自动上链机芯#防水功能:防水50米#表径:40毫米#表扣类型:精钢针式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131448190011', 'ZENITH 真力时 指挥官系列计时腕表18.2110.400/01.C498', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-13 14:48:19', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465800479029.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>EL-Primero400B型自动上链机芯，直径42毫米，振频36000摆每小时，动力储备50小时，防水50米。精钢表壳配银色太阳纹表盘，棕色鳄鱼皮表带，精钢三折叠式表扣。</p>\r\n', null, '商品名称：指挥官系列计时腕表#商品产地：瑞士#产品货号：18.2110.400/01.C498#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：银色太阳纹#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：男士', '机芯类型:EL-Primero400B型自动上链机芯#防水功能:防水50米#表径:42毫米#表扣类型:精钢三折叠式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131503190012', 'ZENITH 真力时 指挥官系列动力储备腕表03.2122.685/21.C493', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-13 15:03:19', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465801377810.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite681型自动上链机芯,直径40毫米，振频28800摆每小时，动力储备50小时，防水50米。精钢表壳配黑色天鹅绒处理表盘，黑色鳄鱼皮表带，精钢针式表扣。</p>\r\n', '1', '商品名称：指挥官系列动力储备腕表#商品产地：瑞士#产品货号：03.2122.685/21.C493#设计风格：自动机械#商品颜色：表带颜色：黑色  表盘颜色：黑色天鹅绒#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：男士', '机芯类型:Elite681型自动上链机芯#防水功能:防水50米#表径:40毫米#表扣类型:精钢针式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131506320013', 'ZENITH 真力时 指挥官中央秒针腕表03.2020.670/22.C498', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-13 15:06:32', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465801572623.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite670型自动上链机芯，直径40毫米，振频28800摆每小时，动力储备50小时，防水50米。精钢表壳配烟熏处理表盘，棕色鳄鱼皮表带，精钢针式表扣。</p>\r\n', null, '商品名称：指挥官中央秒针腕表#商品产地：瑞士#产品货号：03.2020.670/22.C498#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：烟熏#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：男士', '机芯类型:Elite670型自动上链机芯#防水功能:防水50米#表径:40毫米#表扣类型:精钢针式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131509500014', 'ZENITH 真力时 旗舰系列动悉腕表03.2170.4613/02.C713', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-13 15:09:50', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465801763826.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>EL-Primero4613型自动上链机芯，直径40毫米，振频36000摆每小时，动力储备50小时，防水50米。精钢表壳配银色太阳纹表盘，棕色鳄鱼皮表带，精钢三折叠式表扣。</p>\r\n', null, '商品名称：旗舰系列动悉腕表#商品产地：瑞士#产品货号：03.2170.4613/02.C713#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：银色太阳纹#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：男士', '机芯类型:EL-Primero4613型自动上链机芯#防水功能:防水50米#表径:40毫米#表扣类型:精钢三折叠式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131523250015', 'ZENITH 真力时 旗舰系列1969腕表18.2040.4061/69.C494', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-13 15:23:25', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465802588685.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>EL-Primero4061型自动上链机芯，直径42毫米，振频36000摆每小时，动力储备50小时，防水50米。玫瑰金表壳配银色太阳纹表盘及双色计时圈，棕色鳄鱼皮表带，玫瑰金针式表扣。</p>\r\n', '1', '商品名称：旗舰系列1969腕表#商品产地：瑞士#产品货号：18.2040.4061/69.C494#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：银色太阳纹#商品材质：表带材质：鳄鱼皮  表壳材质：玫瑰金#适用人群：男士', '机芯类型:EL-Primero4061型自动上链机芯#防水功能:防水50米#表径:42毫米#表扣类型:玫瑰金针式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131527190016', 'ZENITH 真力时 旗舰系列36000VPH腕表03.2080.400/01.C494', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-13 15:27:19', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465802818607.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>EL-Primero400B型自动上链机芯，直径42毫米，振频36000摆每小时，动力储备50小时，防水50米。精钢表壳配白色漆面表盘，棕色鳄鱼皮表带，精钢三折叠式表扣。</p>\r\n', null, '商品名称：旗舰系列36000VPH腕表#商品产地：瑞士#产品货号：03.2080.400/01.C494#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：白色漆面#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：男士', '机芯类型:EL-Primero400B型自动上链机芯#防水功能:防水50米#表径:42毫米#表扣类型:精钢三折叠式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131625140017', 'ZENITH 真力时 旗舰系列动悉腕表03.2170.4613/21.C714', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-13 16:25:14', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465806287826.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>EL-Primero4613型自动上链机芯，直径40毫米，振频36000摆每小时，动力储备50小时，防水50米。精钢表壳配黑色太阳纹表盘，黑色鳄鱼皮表带，精钢三折叠式表扣。</p>\r\n', null, '商品名称：旗舰系列动悉腕表#商品产地：瑞士#产品货号：03.2170.4613/21.C714#设计风格：自动机械#商品颜色：表带颜色：黑色  表盘颜色：黑色太阳纹#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：男士', '机芯类型:EL-Primero4613型自动上链机芯#防水功能:防水50米#表径:40毫米#表扣类型:精钢三折叠式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131653180018', 'ZENITH 真力时 旗舰系列HELIOS腕表03.2160.4047/02.C713', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-14 06:53:18', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465807983373.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>EL-Primero4047型自动上链机芯，直径45毫米，振频36000摆每小时，动力储备50小时，防水50米。精钢表壳配银色太阳纹表盘，棕色鳄鱼皮表带，精钢三折叠式表扣。</p>\r\n', null, '商品名称：旗舰系列HELIOS腕表#商品产地：瑞士#产品货号：03.2160.4047/02.C713#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：银色太阳纹#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：男士', '机芯类型:EL-Primero4047型自动上链机芯#防水功能:防水50米#表径:45毫米#表扣类型:精钢三折叠式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131657140019', 'ZENITH 真力时 旗舰系列开心动力储备腕表03.2080.4021/01.C494', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-13 16:57:14', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465808197732.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>EL-Primero4021型自动上链机芯，直径42毫米，振频36000摆每小时，动力储备50小时，防水50米。精钢表壳配银色太阳纹表盘，棕色鳄鱼皮表带，精钢三折叠式表扣。</p>\r\n', null, '商品名称：旗舰系列开心动力储备腕表#商品产地：瑞士#产品货号：03.2080.4021/01.C494#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：银色太阳纹#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：男士', '机芯类型:EL-Primero4021型自动上链机芯#防水功能:防水50米#表径:42毫米#表扣类型:精钢三折叠式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131703090020', 'ZENITH 真力时 星动系列月相腕表03.1925.692/21.C714', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-13 17:03:09', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465808537294.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite692型自动上链机芯,直径37毫米，振频28800摆每小时，动力储备50小时，防水30米。精钢表壳配炭灰色表盘，黑色鳄鱼皮表带，精钢三折叠式表扣。</p>\r\n', null, '商品名称：星动系列月相腕表#商品产地：瑞士#产品货号：03.1925.692/21.C714#设计风格：自动机械#商品颜色：表带颜色：黑色  表盘颜色：炭灰色#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：女士', '机芯类型:Elite692型自动上链机芯#防水功能:防水30米#表径:37毫米#表扣类型:精钢三折叠式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131710250021', 'ZENITH 真力时 星动系列33毫米腕表03.1971.681/80.C754', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-13 17:10:25', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465809006326.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite681型自动上链机芯,直径33毫米，振频28800摆每小时，动力储备50小时，防水30米。精钢表壳配日式折纸表盘，蓝色鳄鱼皮表带，精钢针式表扣。</p>\r\n', null, '商品名称：星动系列33毫米腕表#商品产地：瑞士#产品货号：03.1971.681/80.C754#设计风格：自动机械#商品颜色：表带颜色：蓝色  表盘颜色：日式折纸#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：女士', '机芯类型:Elite681型自动上链机芯#防水功能:防水30米#表径:33毫米#表扣类型:精钢针式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131714220022', 'ZENITH 真力时 星动系列33毫米腕表18.1970.681/01.C725', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-13 17:14:22', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465809229544.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite681型自动上链机芯,直径33毫米，振频28800摆每小时，动力储备50小时，防水30米。玫瑰金表壳配银色麦穗纹饰雕花图案表盘，棕色鳄鱼皮表带，玫瑰金针式表扣。</p>\r\n', null, '商品名称：星动系列33毫米腕表#商品产地：瑞士#产品货号：18.1970.681/01.C725#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：银色麦穗纹饰雕#商品材质：表带材质：鳄鱼皮  表壳材质：玫瑰金#适用人群：女士', '机芯类型:Elite681型自动上链机芯#防水功能:防水30米#表径:33毫米#表扣类型:玫瑰金针式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131717250023', 'ZENITH 真力时 指挥官系列超薄女装月相腕表03.2310.692/02.C706', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-13 17:17:25', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465809421013.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite692型自动上链机芯,直径33毫米，振频28800摆每小时，动力储备50小时，防水30米。精钢表壳配银色麦穗纹饰雕花图案表盘，亮灰色鳄鱼皮表带，精钢针式表扣。</p>\r\n', null, '商品名称：指挥官系列超薄女装月相腕表#商品产地：瑞士#产品货号：03.2310.692/02.C706#设计风格：自动机械#商品颜色：表带颜色：亮灰色  表盘颜色：银色麦穗纹饰雕#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：女士', '机芯类型:Elite692型自动上链机芯#防水功能:防水30米#表径:33毫米#表扣类型:精钢针式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131720050024', 'ZENITH 真力时 星动系列开心腕表03.1925.4062/01.C725', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-13 17:20:05', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465809584326.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>EL-Primero4062型自动上链机芯,直径37毫米，振频36000摆每小时，动力储备50小时，防水30米。精钢表壳配银色表盘，棕色鳄鱼皮表带，精钢三折叠式表扣。</p>\r\n', null, '商品名称：星动系列开心腕表#商品产地：瑞士#产品货号：03.1925.4062/01.C725#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：银色#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：女士', '机芯类型:EL-Primero4062型自动上链机芯#防水功能:防水30米#表径:37毫米#表扣类型:精钢三折叠式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606131725160025', 'ZENITH 真力时 指挥官系列超薄女装腕表03.2310.679/38.C714', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-13 17:25:16', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465809874935.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite679型自动上链机芯,直径33毫米，振频28800摆每小时，动力储备50小时，防水30米。精钢表壳配白色哑光表盘，黑色鳄鱼皮表带，精钢针式表扣。</p>\r\n', null, '商品名称：指挥官系列超薄女装腕表#商品产地：瑞士#产品货号：03.2310.679/38.C714#设计风格：自动机械#商品颜色：表带颜色：黑色  表盘颜色：白色哑光#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：女士', '机芯类型:Elite679型自动上链机芯#防水功能:防水30米#表径:33毫米#表扣类型:精钢针式表扣#', '', null);
INSERT INTO `te_goods` VALUES ('1606131728380026', 'ZENITH 真力时 指挥官系列超薄女装月相腕表16.2310.692/81.C706', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-13 17:28:38', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465810083857.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite692型自动上链机芯,直径33毫米，振频28800摆每小时，动力储备50小时，防水30米。精钢镶钻表壳配白色珍珠贝母镶钻表盘，亮灰色鳄鱼皮表带，精钢针式表扣。</p>\r\n', null, '商品名称：指挥官系列超薄女装月相腕表#商品产地：瑞士#产品货号：16.2310.692/81.C706#设计风格：自动机械#商品颜色：表带颜色：亮灰色  表盘颜色：白色珍珠贝母镶钻#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：女士', '机芯类型:Elite692型自动上链机芯#防水功能:防水30米#表径:33毫米#表扣类型:精钢针式表扣#', '', null);
INSERT INTO `te_goods` VALUES ('1606140941200027', 'ZENITH 真力时 指挥官系列超薄女装月相腕表03.2310.692/81.M2310', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-14 09:41:20', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465868459294.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite692型自动上链机芯,直径33毫米，振频28800摆每小时，动力储备50小时，防水30米。精钢表壳配白色珍珠贝母镶钻表盘，亮灰色鳄鱼皮表带，精钢表链。</p>\r\n', null, '商品名称：指挥官系列超薄女装月相腕表#商品产地：瑞士#产品货号：03.2310.692/81.M2310#设计风格：自动机械#商品颜色：表带颜色：亮灰色  表盘颜色：白色珍珠贝母镶钻#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：女士', '机芯类型:Elite692型自动上链机芯#防水功能:防水30米#表径:33毫米#表扣类型:精钢表链', '', null);
INSERT INTO `te_goods` VALUES ('1606140944500028', 'ZENITH 真力时 飞行员系列TYPE20，40毫米女装腕表16.1930.681/31.C725', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-14 09:44:50', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465868676123.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite681型自动上链机芯，直径40毫米，振频28800摆每小时，动力储备50小时，防水100米。精钢镶钻表壳配白色表盘，棕色鳄鱼皮表带，精钢针式表扣。</p>\r\n', null, '商品名称：飞行员系列TYPE20，40毫米女装腕表#商品产地：瑞士#产品货号：16.1930.681/31.C725#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：白色#商品材质：表带材质：鳄鱼皮  表壳材质：精钢#适用人群：女士', '机芯类型:Elite681型自动上链机芯#防水功能:防水100米#表径:40毫米#表扣类型:精钢针式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606140947370029', 'ZENITH 真力时 旗舰系列陀飞轮腕表18.2050.4035/01.C713', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-14 09:47:37', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465868842607.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>EL-Primero4035D型自动上链机芯，直径44毫米，振频36000摆每小时，动力储备50小时，防水100米。玫瑰金表壳配银色太阳纹表盘，棕色鳄鱼皮表带，玫瑰金三折叠式表扣。</p>\r\n', null, '商品名称：旗舰系列陀飞轮腕表#商品产地：瑞士#产品货号：18.2050.4035/01.C713#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：银色太阳纹#商品材质：表带材质：鳄鱼皮  表壳材质：玫瑰金#适用人群：男士', '机芯类型:EL-Primero4035D型自动上链机芯#防水功能:防水100米#表径:44毫米#表扣类型:玫瑰金三折叠式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606140950500030', 'ZENITH 真力时 飞行员系列TYPE20两地时区腕表03.2430.693/21.C723', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-14 09:50:50', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465869032810.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite693型自动上链机芯，直径48毫米，振频28800摆每小时，动力储备50小时，防水100米。精钢表壳配黑色表盘，棕色小牛皮表带，精钢针式表扣。</p>\r\n', null, '商品名称：飞行员系列TYPE20两地时区腕表#商品产地：瑞士#产品货号：03.2430.693/21.C723#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：黑色#商品材质：表带材质：小牛皮  表壳材质：精钢#适用人群：男士', '机芯类型:Elite693型自动上链机芯#防水功能:防水100米#表径:48毫米#表扣类型:精钢针式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606140953490031', 'ZENITH 真力时 飞行员系列TYPE20青铜腕表29.2430.679/21.C753', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-14 09:53:49', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465869216404.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>Elite679型自动上链机芯，直径45毫米，振频28800摆每小时，动力储备50小时，防水100米。青铜表壳配黑色表盘，油面磨砂皮表带，钛金属针式表扣。</p>\r\n', null, '商品名称：飞行员系列TYPE20青铜腕表#商品产地：瑞士#产品货号：29.2430.679/21.C753#设计风格：自动机械#商品颜色：表带颜色：黑色  表盘颜色：黑色#商品材质：表带材质：磨砂皮  表壳材质：青铜#适用人群：男士', '机芯类型:Elite679型自动上链机芯#防水功能:防水100米#表径:45毫米#表扣类型:钛金属针式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606140957040032', 'ZENITH 真力时 旗舰系列开心动力储备腕表18.2080.4021/01.C494', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-14 09:57:04', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465869402419.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>EL-Primero4021型自动上链机芯，直径42毫米，振频36000摆每小时，动力储备50小时，防水100米。玫瑰金表壳配银色太阳纹表盘，棕色鳄鱼皮表带，玫瑰金三折叠式表扣。</p>\r\n', null, '商品名称：旗舰系列开心动力储备腕表#商品产地：瑞士#产品货号：18.2080.4021/01.C494#设计风格：自动机械#商品颜色：表带颜色：棕色  表盘颜色：银色太阳纹#商品材质：表带材质：鳄鱼皮  表壳材质：玫瑰金#适用人群：男士', '机芯类型:EL-Primero4021型自动上链机芯#防水功能:防水100米#表径:42毫米#表扣类型:玫瑰金三折叠式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606141000000033', 'ZENITH 真力时 飞行员系列大日期特别版腕表03.2410.4010/21.M2410', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-14 10:00:00', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465869580060.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>EL-Primero4010型自动上链机芯，直径42毫米，振频36000摆每小时，动力储备50小时，防水50米。精钢表壳配黑色表盘，金属表链，精钢三折叠式表扣。</p>\r\n', null, '商品名称：飞行员系列大日期特别版腕表#商品产地：瑞士#产品货号：03.2410.4010/21.M2410#设计风格：自动机械#商品颜色：表带颜色：银色  表盘颜色：黑色#商品材质：表带材质：金属  表壳材质：精钢#适用人群：男士', '机芯类型:EL-Primero4010型自动上链机芯#防水功能:防水50米#表径:42毫米#表扣类型:精钢三折叠式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606141002560034', 'ZENITH 真力时 旗舰系列1969腕表03.2040.4061/69.C496', '94eb9addffce4355a720c25442784480', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b1efb09eaa51442f910d3b36fe547dd4', null, '2016-06-14 10:02:56', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465869764576.jpg\" style=\"width: 850px; height: 2811px;\" /></p>\r\n', '<p>EL-Primero4061型自动上链机芯，直径42毫米，振频36000摆每小时，动力储备50小时，防水100米。精钢表壳配银色太阳纹表盘及双色计时圈，黑色鳄鱼皮表带，精钢三折叠式表扣。</p>\r\n', null, '商品名称：旗舰系列1969腕表#商品产地：瑞士#产品货号：03.2040.4061/69.C496#设计风格：自动机械#商品颜色：表带颜色：黑色  表盘颜色：银色太阳纹#商品材质：表带材质：鳄鱼  表壳材质：精钢#适用人群：男士', '机芯类型:EL-Primero4061型自动上链机芯#防水功能:防水100米#表径:42毫米#表扣类型:精钢三折叠式表扣', '', null);
INSERT INTO `te_goods` VALUES ('1606161201340035', 'McLaren 迈凯伦超级跑车 570S', '9dd84f3d1c71470695a9e77aee52c41f', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', '4dd4b8d8a4984f9db2552e1a58db9490', null, '2016-06-17 16:01:34', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466049744044.jpg\" style=\"width: 3543px; height: 1669px;\" /><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466049786482.jpg\" style=\"width: 3543px; height: 1511px;\" /><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466049839716.jpg\" style=\"width: 3543px; height: 2104px;\" /><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466049914310.jpg\" style=\"width: 873px; height: 1240px;\" /></p>\r\n', '<p>品牌名称：迈凯伦</p>\r\n\r\n<p>车型：570S</p>\r\n\r\n<p>汽车级别：超级跑车</p>\r\n\r\n<p>官方报价：255.6万起</p>\r\n\r\n<p>销售区域：全国</p>\r\n\r\n<p>支持：无选中车型可全额退款</p>\r\n\r\n<p>意向金可抵扣车款；</p>\r\n\r\n<p>下单流程：</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">1、&nbsp;线上下单，备注相关流程，付意向金；</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">2、&nbsp;迈凯伦天津销售意向跟进电话，预约门店开车试驾；</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">3、&nbsp;挑选爱车</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">4、&nbsp;交付全款</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">5、&nbsp;迈凯伦天津全国送车服务，送车到家</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">动力系统拥有同级别领先570匹马力的570S车型以此命名，用最直观的方法告诉世人它的实力。搭载当今世界上最为强劲的公路跑车发动机&mdash;&mdash;M838TE升级版3.8升双涡轮V8发动机，最高扭矩达600牛米，0-100公里/小时仅需3.2秒，最高时速可达328公里/小时。完全满足跑车迷们对运动跑车日常驾驶的所有期待！</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">悬挂系统570S采用特别定制的悬挂系统和减震器设置，悬挂系统运用独立自适应减震器和前后防倾杆，搭配F1赛车风格的双横臂式悬架，提供最佳悬挂与几何设计。而迈凯伦经典的&ldquo;普通&rdquo;、&ldquo;运动&rdquo;和&ldquo;赛道&rdquo;三大模式，即使在凹凸不平的公路或长距离的高速公路上，也能有舒适的驾驶感受，让驾乘的舒适感达到日常用车的最高水平。&nbsp;</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">底盘570S采用全新MonoCell II轻量级碳纤维底盘，碳纤维材质坚固安全且重量很轻，使得车身重量降至1,313公斤，比最接近的竞争对手轻了近150公斤。另外对前后铝结构也进行了调整，加入全新防倾杆。在提升了操控性、灵活性的同时还保证了日常驾乘安全性和舒适度。</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">空气动力套件在空气动力学部分，570S充分利用一级方程式的设计准则，结合流体表面与强烈特征，打造车体内外及周边的气流优化设计。沿发动机盖的突出褶皱线条辅助气流穿越车门，进入侧身进气口，冷却高温散热器。车体的重量通过嵌板分层实现最小化，带来无与伦比的速度体验。</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">有&ldquo;流动&rdquo;腰线的蝴蝶门从1990年代标志性的迈凯伦F1诞生以来，每一款迈凯伦公路跑车都蕴含与众不同的蝴蝶门设计，而今570S也将延续这一经典传统。蝴蝶门设计有效补充侧身进气，直接补给高温散热器（HTR），同时依次减小侧身进气，从而大大降低车身阻力。除此之外，570S囊括从优雅的飞拱到凹形后窗，这一系列别具风格的设计，为运动跑车领域带来了崭新而独特的惊艳风貌。</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">内饰空间Alcantara材质的内饰时刻提醒着车主，570S原本属于赛道。专注于空间及人体工程学的570S，车厢长度及宽度都有所增加，更长、更宽的车厢营造更舒适惬意的驾驶环境，支撑力更佳的六向调节座椅拥有四种装饰方案，带来个性化的日常驾驶乐趣。</p>\r\n', null, '商品名称：McLaren 迈凯伦超级跑车 570S#商品产地：英国#产品货号：McLaren 570S#设计风格：超级跑车#商品颜色：官方配色#商品材质：综合#适用人群：———', '', '', null);
INSERT INTO `te_goods` VALUES ('1606161425100036', 'McLaren 迈凯伦超级跑车 650S', '1cbb2b10b200464eb9c326a0b00efc30', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', '4dd4b8d8a4984f9db2552e1a58db9490', null, '2016-06-17 18:25:10', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466058279935.jpg\" style=\"width: 965px; height: 4005px;\" /><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466058292263.jpg\" style=\"width: 700px; height: 5414px;\" /></p>\r\n', '<p>品牌名称：迈凯伦</p>\r\n\r\n<p>车型：650S</p>\r\n\r\n<p>汽车级别：超级跑车</p>\r\n\r\n<p>官方报价：375.8万起</p>\r\n\r\n<p>销售区域：全国</p>\r\n\r\n<p>支持：无选中车型可全额退款</p>\r\n\r\n<p>意向金可抵扣车款；</p>\r\n\r\n<p>下单流程：</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">1、&nbsp;线上下单，备注相关流程，付意向金；</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">2、&nbsp;迈凯伦天津销售意向跟进电话，预约门店开车试驾；</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">3、&nbsp;挑选爱车</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">4、&nbsp;交付全款</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\"><span style=\"line-height: 1.6em;\">5、&nbsp;迈凯伦天津全国送车服务，送车到家</span></p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">650S的名称意寓着其独有的英伦制造迈凯伦M838T双涡轮V8引擎的输出功率为650公制马力。&ldquo;S&rdquo;代表着&ldquo;运动&rdquo;，体现了迈凯伦专注于提升操纵、变速箱性能、操控性以及人车合一的驾驶体验。其最大功率数据确保了该车在同级别车型中拥有最佳的功率重量比，即500公制马力/吨。</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\"><span style=\"line-height: 1.6em;\">正如所有的迈凯伦车型一样，迈凯伦650S的突出特点在于它毫无妥协的日常使用性和功能性。 650S除了专注于功率和性能的提升，还具有一系广泛的规格特性，包括经过优化的动力系统、制动装置、悬架系统，以及精致豪华的座舱配置。而尽管如此，迈凯伦650S的车身重量仅为1330千克（净重）&mdash;&mdash;比12C轻6公斤。 一如既往的轻巧车身是迈凯伦全新车型的核心主题。</span></p>\r\n\r\n<p style=\"margin-left:18.0000pt;\"><span style=\"line-height: 1.6em;\">650S Spider 0-100 公里/小时加速时间仅需 3.0 秒，与Coup&eacute;硬顶版完全一致；0-200 公里/小时加速也仅需 8.6 秒，比硬顶版仅慢 0.2 秒。最高时速为 329 公里/小时。 650S Spider 的油耗和排放水平与硬顶版保持一致：按照欧盟综合驾驶循环标准油耗仅为11.7升/100 公里，二氧化碳排放量低至 275 克/公里。</span></p>\r\n', null, '商品名称：McLaren 迈凯伦超级跑车 650S#商品产地：英国#产品货号：McLaren 650S#设计风格：超级跑车#商品颜色：官方配色#商品材质：综合#适用人群：———', '', '', null);
INSERT INTO `te_goods` VALUES ('1606161701080001', 'McLaren 迈凯伦超级跑车 570GT', 'ba81de86924f475fb4d496700de95deb', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', '4dd4b8d8a4984f9db2552e1a58db9490', null, '2016-06-16 17:01:08', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466067551748.jpg\" style=\"width: 2480px; height: 3366px;\" /><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466067570638.jpg\" style=\"width: 1300px; height: 6781px;\" /></p>\r\n', '<p>品牌名称：迈凯伦</p>\r\n\r\n<p>车型：570GT</p>\r\n\r\n<p>汽车级别：超级跑车</p>\r\n\r\n<p>官方报价：273.1万起</p>\r\n\r\n<p>销售区域：全国</p>\r\n\r\n<p>支持：无选中车型可全额退款</p>\r\n\r\n<p>意向金可抵扣车款；</p>\r\n\r\n<p>下单流程：</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">1、&nbsp;线上下单，备注相关流程，付意向金；</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">2、&nbsp;迈凯伦天津销售意向跟进电话，预约门店开车试驾；</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">3、&nbsp;挑选爱车</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\">4、&nbsp;交付全款</p>\r\n\r\n<p style=\"margin-left:18.0000pt;\"><span style=\"line-height: 1.6em;\">5、&nbsp;迈凯伦天津全国送车服务，送车到家</span></p>\r\n\r\n<p>570GT是迈凯伦家族最为奢华优雅的新成员，全车采用顶级材质，拥有杰出的轻量化且极具空间感的设计</p>\r\n\r\n<p>侧开式尾部玻璃门大幅提升行李厢容积，皮革包裹的旅行架可提供220升的额外储物空间</p>\r\n\r\n<p>完美调校的悬挂和转向系统带来更加舒适的长距离驾驶感受</p>\r\n\r\n<p>配备与技术合作伙伴倍耐力共同研发的定制版PZero&trade;轮胎，搭载倍耐力噪音消除系统(PNCS)，打造更为优雅的驾驶体验</p>\r\n\r\n<p>兼具经典GT车型线条以及包括尾部定风翼在内的独有空气动力学组件</p>\r\n\r\n<p>此次日内瓦车展，迈凯伦品牌携旗下三大系列车型，以迄今最大阵容亮相，其中包括全新运动跑车系列中的最新车型&mdash;&mdash;570GT。这款兼具日常实用性的中置式双座570GT跑车可谓是目前迈凯伦品牌最为优雅的车型，专注于日常使用性以及长距离驾驶舒适感。570GT完美承袭迈凯伦跑车基因，同时可提供前所未有的实用性和舒适度。</p>\r\n\r\n<p>继570S Coup&eacute;与540C Coup&eacute;之后，570GT作为迈凯伦全新运动跑车系列第三位成员即将惊艳登场。线条简洁的驾驶舱设计勾勒出570GT圆润精致的轮廓，突显出它独特的车身特点。未来，运动跑车系列中将会有三款不同的车身设计，570GT为其中的第二款。标配的全景天窗令整个车舱更加明亮开阔，与尾部玻璃门完美呼应，营造出至奢至逸的驾驶环境。正如运动跑车系列中的其他车型，570GT的内部设计同样遵循最高工艺级别悉心打造，采用顶级材质并配备最新科技。&nbsp;</p>\r\n\r\n<p><strong>日常实用性</strong></p>\r\n\r\n<p>570GT是已发布的迈凯伦跑车中最具备日常实用性的车型，适用于长途旅程及周末出游。和所有运动跑车系列车型一样，更为低窄的门槛便于车厢出入，同时标志性的蝴蝶门打开时弧度更为上扬。极具空间感且效能优化的车舱内，配有一对高品质皮革包裹的全电动八向调节运动座椅。空气调节、通讯、导航以及音频系统的控制界面都集中于中央控制台的触屏上，车辆启动的设置都可以在TFT LCD显示屏的设备管理群中实现操作。</p>\r\n\r\n<p>标配的玻璃全景天窗完美呼应尾部玻璃门，打造出明亮、开阔、极具魅力的车舱设计。正如迈凯伦P1&trade;一般，570GT车顶玻璃透光率为18%，并选用SSF隔音隔热膜来吸收太阳辐射，同时起到降噪作用。570GT车身采用了更多玻璃材质，而舱内温度则可由先进的双区域空调系统来调节控制，乘客和驾驶者可独立调节各自区域的温度。空调系统有Auto 和 Auto Lo两项自动功能，用来调节车内最适宜的温度，Auto Lo功能则会自动限制风扇速度降低车内风扇噪音。</p>\r\n\r\n<p>前置行李舱与Coup&eacute;车型相同，可提供150升的储物空间，同时位于座位后侧皮革包裹的旅行架更可提供220升的额外空间。侧开式玻璃门设计完美营造出这个额外空间，打造出整车共370升的储物空间。无论左舵或右舵，玻璃门都由靠近路边的一侧打开，而碳纤维门框则带来无与伦比的抗扭刚度。&nbsp;<br />\r\n迈凯伦技术伙伴倍耐力带来的最新轮胎技术亦大幅增强了570GT的优雅以及日常实用性。570GT搭载由倍耐力特别研发的P Zero&trade;轮胎，能减少高达3分贝的车舱内公路噪音。这项一独一无二的轮胎特性归功于倍耐力噪音消除系统(PNCS)，它可吸收震动并减小噪音传递，通过轮胎内的凹槽来达到降低公路噪音的效果</p>\r\n\r\n<p><strong>工艺技术</strong></p>\r\n\r\n<p>沿袭运动跑车家族品质，570GT广泛地采用了全球最前沿的科技与最卓越的材质。与570S Coup&eacute;相比，新车型的标准配置中配备了皮革包裹并具有加热及记忆功能的全电动八向调节运动座椅，前、后部泊车传感器，电动转向柱，电吸门以及一个更安静的排气系统。舱壁和旅行架均由轻型的降噪阻尼材质完美包覆，令车舱环境更为优雅舒适。</p>\r\n\r\n<p>570GT 同样可选&ldquo;迈凯伦定制&rdquo;（ByMcLaren）内饰套件，尽享迈凯伦无与伦比的私人定制服务。如同570S Coup&eacute;一样，有豪华版与运动版两种不同配置，分别展示出570GT与众不同的内饰设计，完美呼应外观色彩选择。</p>\r\n\r\n<p>570GT标准配置中涵盖八位迈凯伦音响增强版（ Audio Plus system），这个系统增设两个100毫米的中低音驱动装置，更添音质的清晰度以及深度；以及两个在车厢尾部的25毫米高频扬声器，用来平衡音质令使用者尽情享受车内音乐。与此同时，车主还可选装Bowers &amp; Wilkins十二位音响系统，打造更顶尖的车内音效。该系统包含该系统包含五个25毫米的铝制Nautilus高音单元，五个100毫米的Kevlar&reg;的中档驱动单元和两个200毫米的碳纤维Rohacell低音炮，而所有扬声器由一个全数字化14声道1280W D扩音器驱动。</p>\r\n\r\n<p><strong>驾驭体验</strong></p>\r\n\r\n<p>570GT拥有符合其定位的独特动态设定，同时兼备如同570S Coup&eacute;一般的超级跑车体验。遵循&ldquo;纯粹迈凯伦&rdquo;设计与制造理念，迈凯伦品牌打造出这台拥有惊艳性能，同时亦更为奢华优雅的座驾。运动系列车型全部采用最前沿的悬挂系统，而570GT更为注重长途驾驶的舒适度，因而在该系统的基础上作了相应调校，其中包括降低前轮15%，后轮10%的弹簧刚度。独立自适应式阻尼器可在普通模式、运动模式与赛道模式下进行动态调整，完美对接前后方的防侧倾杆。</p>\r\n\r\n<p>570GT的调校优化了道路和高速公路驾驶体验，即使在凹凸不平的路面，驾驶质量也有了显著提高。570GT的电动液压转向系统源自Coup&eacute;车型，减少了2%的比率以帮助驾驶者在高速行驶时节省精力。</p>\r\n\r\n<p>570GT搭载与570S Coup&eacute;相同的3.8升双涡轮V8M838TE发动机，最大功率和峰值扭矩可达570马力和600牛米。动力通过7速无缝变速箱完美传递到后轮，在普通模式、运动模式与赛道模式下进行调整，打造出跑车级别中响应最为灵敏、极富驾驶乐趣的体验。而定制化调校中还包括Comfort（普通模式）、Cylinder Cut (运动模式) 和Inertia Push (赛道模式)等技术。正如迈凯伦家族的所有成员，570GT在出厂时就选用了美孚1号New Life&trade; 0W-40 润滑油。</p>\r\n\r\n<p><strong>设计与空气动力学</strong></p>\r\n\r\n<p>570GT独有简洁圆润的驾驶舱线条，完美衔接车尾设计。配合侧开式尾部玻璃门以及更大的行李舱空间，570GT采用了包括比Coup&eacute;车型高出10毫米的尾部定风翼在内的独特空气动力学套件，以配合不同的飞拱设计，创造出一样出众的空气动力学效果。</p>\r\n\r\n<p>570GT 的前脸设计与 570S Coup&eacute;如出一辙，前部保险杠在其精妙的空气动力学设计中具有至关重要的作用。它能产生压强中心，将空气导流至车身上方、下方以及两侧，通过这四个方向的导流减少空气阻力。正如运动系列的其他车型，570GT的引擎盖上有明显的折线设计，因而能够优化前挡泥板以及侧进气口气流。前保险杠下方的AeroBlades格栅角度经过特别设计，能够产生低温散热器高压力区。前端保险杠下的叶片被调节至特定角度，以便在低温散热器前产生高压区。</p>\r\n\r\n<p>从标志性的迈凯伦F1诞生以来，每一款迈凯伦公路跑车都采用与众不同的蝴蝶门设计，而今570GT也将延续这一经典传统。它别出心裁的设计既可以向上又可以向外开门，令出入驾驶舱更为便捷。该设计中还包括&ldquo;流动&rdquo;腰线，能够有效补充侧身进气。为570GT量身打造与车身同色的车门拉手，勾勒出其含蓄的侧面轮廓，与Coup&eacute;车型相比显得格外与众不同。</p>\r\n\r\n<p><strong>轻量化设计</strong></p>\r\n\r\n<p>正如自1981年推出MP4-1Formula 1&trade;之后的所有迈凯伦车型，570GT同样采用了碳纤维底盘。MonoCell II在570S Coup&eacute;中首度亮相，而如今运动跑车系列的所有车型均采用这款底盘。MonoCell II轻巧而又坚固，仅重75kg，使得车身净重减至1350kg，创造出每吨422马力的功重比，令它在同级别跑车之中的表现更为惊艳。570GT的0-100公里/小时加速时间仅需3.4秒，0-200公里/小时加速为9.8秒，最高时速可达328公里/小时。在创造出超级跑车性能数据的同时， 570GT的日常驾驶性能和实用性也同样卓越。它的综合油耗为10.7升/100公里，二氧化碳排放量为249克/公里。</p>\r\n\r\n<p>570GT搭载了超轻复合制动系统，该系统包括带有前后轮四活塞卡钳的铁制刹车盘（前270毫米*32毫米/后350毫米*30毫米），令公路驾驶中的表现更为优越。570GT采用GT设计15辐锻造合金轮毂，前后轮尺寸分别为19英寸和20英寸。全新设计的轮毂配有专属倍耐力轮胎，采用路感极佳的PZero&trade;轮胎。车主也可选装更注重性能的P Zero&trade;Corsa轮胎。</p>\r\n', null, '商品名称：McLaren 迈凯伦超级跑车 570GT#商品产地：英国#产品货号：McLaren 570GT#设计风格：超级跑车#商品颜色：官方配色#商品材质：综合#适用人群：———', '', '', null);
INSERT INTO `te_goods` VALUES ('1606201430290002', 'VERSACE 范思哲 男士T恤 V800681 VJ00244', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-21 04:30:29', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466404165763.jpg\" style=\"width: 774px; height: 200px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466404193576.jpg\" style=\"width: 800px; height: 800px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466404205044.jpg\" style=\"width: 800px; height: 800px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466404213873.jpg\" style=\"width: 800px; height: 800px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466404223435.jpg\" style=\"width: 800px; height: 800px;\" /></p>\r\n', '<p><span title=\"古驰男士短袖POLO衫\">商品名称：</span>范思哲 男士T恤<br />\r\n商品分类：T恤/POLO<br />\r\n商品产地：意大利<br />\r\n商品货号：V800681 VJ00244<br />\r\n设计风格：时尚<br />\r\n商品颜色: 印花<br />\r\n商品材质：棉质<br />\r\n适用人群：男式<br />\r\n※图片颜色会因拍摄灯光或个人萤幕设定差异，造成部份色差现象，请以实际商品颜色为准。<br />\r\n*商品出货包装皆有封条保护,并全程出货录影存证<br />\r\n*原厂吊牌与封条一旦经拆封破坏,无法接受退换货,不便之处,敬请见谅!!<br />\r\n*鉴赏期间如需退换货,请保持商品包装的完整性,且须全新未使用及手把胶膜与拆封条未破坏状态<br />\r\n(包含商品.附件.内外包装.随机文件等..均务必保持完整齐全)</p>\r\n', null, '商品名称：范思哲男士T恤#商品产地：意大利#产品货号：V800681 VJ00244#设计风格：时尚#商品颜色：印花#商品材质：棉#适用人群：男式', '', '', null);
INSERT INTO `te_goods` VALUES ('1606201505500003', 'VERSACE 范思哲 男士T恤', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-21 05:05:50', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466406248748.jpg\" style=\"width: 774px; height: 200px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466406266341.jpg\" style=\"width: 750px; height: 750px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466406288951.jpg\" style=\"width: 750px; height: 750px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466406298498.jpg\" style=\"width: 750px; height: 750px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466406312294.jpg\" style=\"width: 750px; height: 750px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466406328560.jpg\" style=\"width: 750px; height: 750px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466406345451.jpg\" style=\"width: 750px; height: 750px;\" /></p>\r\n', '<p><span title=\"古驰男士短袖POLO衫\">商品名称：</span>范思哲 男士T恤<br />\r\n商品分类：T恤/POLO<br />\r\n商品产地：意大利<br />\r\n设计风格：时尚<br />\r\n商品颜色: 印花<br />\r\n商品材质：棉质<br />\r\n适用人群：男式<br />\r\n※图片颜色会因拍摄灯光或个人萤幕设定差异，造成部份色差现象，请以实际商品颜色为准。<br />\r\n*商品出货包装皆有封条保护,并全程出货录影存证<br />\r\n*原厂吊牌与封条一旦经拆封破坏,无法接受退换货,不便之处,敬请见谅!!<br />\r\n*鉴赏期间如需退换货,请保持商品包装的完整性,且须全新未使用及手把胶膜与拆封条未破坏状态<br />\r\n(包含商品.附件.内外包装.随机文件等..均务必保持完整齐全)</p>\r\n', null, '商品名称：范思哲 男士T恤#商品产地：意大利#产品货号：#设计风格：时尚#商品颜色：印花#商品材质：棉#适用人群：男式', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251228580001', 'VERSACE JEANS/范思哲牛仔女士T恤-女士黑色时尚T恤', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-26 16:28:58', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466828872466.jpg\" style=\"width: 750px; height: 750px;\" /><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466828881498.jpg\" style=\"width: 750px; height: 750px;\" /><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466828888123.jpg\" style=\"width: 750px; height: 750px;\" /><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466828894404.jpg\" style=\"width: 750px; height: 750px;\" /><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466828899951.jpg\" style=\"width: 750px; height: 750px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"100粘纤\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：100粘纤</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"修身\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：修身</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：短袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"圆领\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">领型：圆领</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：VERSACE JEANS/范思哲牛仔女士T恤-女士黑色时尚T恤#商品产地：意大利#产品货号：#设计风格：时尚#商品颜色：黑色#商品材质：100粘纤#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251240100002', 'VERSACE JEANS/范思哲牛仔女士T恤-女士白色短T恤', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-26 02:40:10', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466829542685.jpg\" style=\"width: 750px; height: 750px;\" /><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466829548701.jpg\" style=\"width: 750px; height: 750px;\" /><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466829554357.jpg\" style=\"width: 750px; height: 750px;\" /><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466829559701.jpg\" style=\"width: 750px; height: 750px;\" /><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466829564982.jpg\" style=\"width: 750px; height: 750px;\" /><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466829570029.jpg\" style=\"width: 750px; height: 750px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"95粘纤5氨纶（配饰除外）\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：95粘纤5氨纶</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"修身\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：修身</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短款\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：短款</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：短袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"圆领\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">领型：圆领</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"时尚休闲\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">风格：时尚休闲</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：VERSACE JEANS/范思哲牛仔女士T恤-女士白色短T恤#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：白色#商品材质：95粘纤5氨纶#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251335050003', 'VERSACE JEANS/范思哲牛仔女士T恤 ', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-26 03:35:05', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466832884607.jpg\" style=\"width: 750px; height: 5250px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"92%粘胶纤维+其他\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：92%粘胶纤维+其他</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"修身\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：修身</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：短袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"圆领\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">领型：圆领</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：VERSACE JEANS/范思哲牛仔女士T恤 #商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：白色#商品材质：92%粘胶纤维+其他#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251350100005', 'VERSACE JEANS/范思哲牛仔 时尚潮流女士T恤 B2HNA7A1 36143 899', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-26 17:50:10', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466833706310.jpg\" style=\"width: 500px; height: 4500px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"棉,莫代尔\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：棉,莫代尔</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"37/39/41\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">肩宽：37/39/41</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：短袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：VERSACE JEANS/范思哲牛仔 时尚潮流女士T恤 #商品产地：意大利#产品货号：B2HNA7A1 36143 899#设计风格：时尚休闲#商品颜色：黑色#商品材质：棉,莫代尔#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251355370006', 'VERSACE JEANS/范思哲牛仔 女士粉色复古印花全棉短袖T恤', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-26 17:55:37', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466834121685.jpg\" style=\"width: 750px; height: 5250px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"100%棉\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：100%棉</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"修身\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：修身</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短款\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：短款</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：短袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"V领\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">领型：V领</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：VERSACE JEANS/范思哲牛仔#商品产地：女士粉色复古印花全棉短袖T恤#产品货号：意大利#设计风格：#商品颜色：时尚休闲#商品材质：花色#适用人群：100%棉', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251400140007', 'VERSACE JEANS/范思哲牛仔女士T恤-女士黑色时尚T恤', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-26 04:00:14', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466834397107.jpg\" style=\"width: 750px; height: 4500px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"91棉9氨纶\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：91棉9氨纶</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"修身\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：修身</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短款\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：短款</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：短袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"圆领\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">领型：圆领</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1', '商品名称：VERSACE JEANS/范思哲牛仔女士T恤-女士黑色时尚T恤#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：黑色#商品材质：91棉9氨纶#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251415110008', 'VERSACE JEANS/范思哲牛仔 女士黑色太阳印花棉质短袖T恤', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-26 04:15:11', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466835295326.jpg\" style=\"width: 750px; height: 5250px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"50%棉50%莫代尔\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：50%棉50%莫代尔</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"修身\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：修身</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短款\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：短款</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：短袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"圆领\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">领型：圆领</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：VERSACE JEANS/范思哲牛仔 女士黑色太阳印花棉质短袖T恤#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：黑色#商品材质：50%棉50%莫代尔#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251421250009', 'VERSACE JEANS/范思哲牛仔  女士黑色底字母印花长款全棉短袖T恤', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-26 04:21:25', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466835665529.jpg\" style=\"width: 750px; height: 5250px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"100%棉\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：100%棉</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短款\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：短款</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：短袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"圆领\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">领型：圆领</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：SACE JEANS/范思哲牛仔  女士黑色底字母印花长款全棉短袖T恤#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：花色#商品材质：100%棉#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251426250010', 'VERSACE JEANS/范思哲牛仔女士T恤-女士黑色时尚T恤', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-26 04:26:25', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466835961779.jpg\" style=\"width: 750px; height: 4500px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"92粘纤8氨纶\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：92粘纤8氨纶</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"修身\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：修身</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短款\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：短款</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"长袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：长袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"圆领\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">领型：圆领</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：VERSACE JEANS/范思哲牛仔女士T恤-女士黑色时尚T恤#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：黑色#商品材质：92粘纤8氨纶#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251442450011', 'VERSACE JEANS/范思哲牛仔 女士混纺经典时尚印花老虎图案短袖T恤 女士T恤', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-26 04:42:45', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466836938873.jpg\" style=\"width: 750px; height: 3750px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"92%粘胶纤维8%弹性纤维\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：92%粘胶纤维8%弹性纤维</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：短袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：VERSACE JEANS/范思哲牛仔 女士混纺经典时尚印花老虎图案短袖T恤 女士T恤#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：黄色#商品材质：92%粘胶纤维8%弹性纤维#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251446430012', 'VERSACE JEANS/范思哲牛仔 女士花色全棉短袖T恤', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-26 04:46:43', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466837187763.jpg\" style=\"width: 750px; height: 5250px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"100%棉\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：100%棉</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"修身\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：修身</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短款\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：短款</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：短袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"V领\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">领型：V领</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：VERSACE JEANS/范思哲牛仔 女士花色全棉短袖T恤#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：花色#商品材质：100%棉#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251500460013', 'VERSACE JEANS/范思哲牛仔 时尚潮流女士T恤B2HNA7G9 36139 899', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-26 05:00:46', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466838032013.jpg\" style=\"width: 500px; height: 4500px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"棉,莫代尔\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：棉,莫代尔</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：短袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：VERSACE JEANS/范思哲牛仔 时尚潮流女士T恤B2HNA7G9 36139 899#商品产地：意大利#产品货号：B2HNA7G9 36139 899#设计风格：时尚休闲#商品颜色：黑色#商品材质：棉,莫代尔#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251508350014', 'Dolce&Gabbana/杜嘉班纳 黄色真丝长袖复古印花时尚女士T恤DG2620580865', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', 'b4472e5d885b4cf6bdc29a37d718ac13', null, '2016-06-27 09:08:35', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466838425294.jpg\" style=\"width: 750px; height: 2500px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"90%桑蚕丝5%棉5%氨纶\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：90%桑蚕丝5%棉5%氨纶</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"修身\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：修身</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"七分袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：七分袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"圆领\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">领型：圆领</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：Dolce&Gabbana/杜嘉班纳 黄色真丝长袖复古印花时尚女士T恤DG2620580865#商品产地：意大利#产品货号：DG2620580865#设计风格：时尚休闲#商品颜色：黄色#商品材质：90%桑蚕丝5%棉5%氨纶#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251518160016', 'Dolce&Gabbana/杜嘉班纳 蓝色真丝长袖复古印花时尚女士T恤DG2620991135', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', 'b4472e5d885b4cf6bdc29a37d718ac13', null, '2016-06-26 05:18:16', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466839068623.jpg\" style=\"width: 750px; height: 2500px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"96%丝 4%弹性纤维\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：96%丝 4%弹性纤维</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"修身\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：修身</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"长袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：长袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"圆领\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">领型：圆领</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：Dolce&Gabbana/杜嘉班纳 蓝色真丝长袖复古印花时尚女士T恤DG2620991135#商品产地：意大利#产品货号：DG2620991135#设计风格：时尚休闲#商品颜色：蓝色#商品材质：96%丝 4%弹性纤维#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251526570017', 'Dolce&Gabbana/杜嘉班纳 桑蚕丝圆领黄色夏季无袖印花时尚女士T恤DG2620579046', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', 'b4472e5d885b4cf6bdc29a37d718ac13', null, '2016-06-26 05:26:57', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466839600310.jpg\" style=\"width: 750px; height: 3000px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"100% 桑蚕丝\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：100% 桑蚕丝</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"修身\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：修身</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"无袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：无袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"圆领\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">领型：圆领</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：Dolce&Gabbana/杜嘉班纳 桑蚕丝圆领黄色夏季无袖印花时尚女士T恤DG2620579046#商品产地：意大利#产品货号：DG2620579046#设计风格：时尚休闲#商品颜色：黄色#商品材质：100% 桑蚕丝#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251532080018', 'Dolce&Gabbana/杜嘉班纳 蓝色真丝长袖复古印花时尚女士T恤DG2620579135', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', 'b4472e5d885b4cf6bdc29a37d718ac13', null, '2016-06-26 05:32:08', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466839904623.jpg\" style=\"width: 750px; height: 2500px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"5%棉 90%丝 5%弹力纤维\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：5%棉 90%丝 5%弹力纤维</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"修身\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：修身</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"长袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：长袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"圆领\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">领型：圆领</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1', '商品名称：Dolce&Gabbana/杜嘉班纳 蓝色真丝长袖复古印花时尚女士T恤DG2620579135#商品产地：意大利#产品货号：DG2620579135#设计风格：时尚休闲#商品颜色：蓝色#商品材质：5%棉 90%丝 5%弹力纤维#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251537570019', 'Dolce&Gabbana/杜嘉班纳 夏季桑蚕丝黄色短袖圆领短袖印花时尚女士T恤DG2520511165', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', 'b4472e5d885b4cf6bdc29a37d718ac13', null, '2016-06-26 05:37:57', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466840260951.jpg\" style=\"width: 750px; height: 2500px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"100%桑蚕丝\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：100%桑蚕丝</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"修身\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：修身</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短款\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：短款</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：短袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"圆领\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">领型：圆领</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：Dolce&Gabbana/杜嘉班纳 夏季桑蚕丝黄色短袖圆领短袖印花时尚女士T恤DG2520511165#商品产地：意大利#产品货号：DG2520511165#设计风格：时尚休闲#商品颜色：黄色#商品材质：100%桑蚕丝#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251542550020', 'Dolce&Gabbana/杜嘉班纳 夏季纯棉圆领短袖花朵图案时尚女士T恤DG2620989790', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', 'b4472e5d885b4cf6bdc29a37d718ac13', null, '2016-06-26 05:42:55', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466840562513.jpg\" style=\"width: 750px; height: 2500px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"100%棉\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：100%棉</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"修身\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：修身</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：短袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"圆领\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">领型：圆领</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：Dolce&Gabbana/杜嘉班纳 夏季纯棉圆领短袖花朵图案时尚女士T恤DG2620989790#商品产地：意大利#产品货号：DG2620989790#设计风格：时尚休闲#商品颜色：白色#商品材质：100%棉#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251551520021', 'VERSACE/范思哲 女士 真丝 简约 短袖T恤 OS', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-26 05:51:52', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466841096451.jpg\" style=\"width: 500px; height: 3500px;\" /></p>\r\n', '', null, '商品名称：VERSACE/范思哲 女士 真丝 简约 短袖T恤 OS#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：花色#商品材质：100% 桑蚕丝#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606251558410022', 'Dolce&Gabbana/杜嘉班纳 花短裤女士裤子', '1fba625078284ea1a8dfc8f351ddc85f', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-26 19:58:41', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466841481404.jpg\" style=\"width: 750px; height: 6000px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"中腰\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">腰型：中腰</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"76%棉18%桑蠶絲8%粘纖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：76%棉18%桑蚕丝8%粘线</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短裤\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">裤长：短裤</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"系扣\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：系扣</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：Dolce&Gabbana/杜嘉班纳 花短裤女士裤子#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：花色#商品材质：76%棉18%桑蚕丝8%粘线#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606271119120023', 'PRADA/普拉达 女士T恤 纯棉胶质LOGO翻领女士短袖POLO衫', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '83a073308d0948e6bf3476875eab84a6', null, '2016-06-28 01:19:12', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1466997537138.jpg\" style=\"width: 600px; height: 3000px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"100%棉\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：100%棉</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：短袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：PRADA/普拉达 女士T恤 纯棉胶质LOGO翻领女士短袖POLO衫#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：白色#商品材质：100%棉#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606271349130024', 'PRADA/普拉达 女士T恤 圆形印花纯棉女士短袖T恤', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '83a073308d0948e6bf3476875eab84a6', null, '2016-06-28 03:49:13', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1467006532810.jpg\" style=\"width: 600px; height: 3000px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"100%棉\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：100%棉</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：短袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：PRADA/普拉达 女士T恤 圆形印花纯棉女士短袖T恤#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：红色#商品材质：100%棉#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606271351160025', 'PRADA/普拉达 女士丰富图案印花双层真丝长袖T恤 SP', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '83a073308d0948e6bf3476875eab84a6', null, '2016-06-28 17:51:16', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1467006655169.jpg\" style=\"width: 500px; height: 4000px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"真丝\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：真丝</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"时尚休闲\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">风格：时尚休闲</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：PRADA/普拉达 女士丰富图案印花双层真丝长袖T恤 SP#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：绿松色#商品材质：真丝#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606271354120026', 'PRADA/普拉达 女士T恤 棉混纺下摆兜袋LOGO布标点缀女士圆领短袖T恤', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '83a073308d0948e6bf3476875eab84a6', null, '2016-06-28 03:54:12', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1467006834857.jpg\" style=\"width: 600px; height: 3000px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"92%棉 8%氨纶\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：92%棉 8%氨纶</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：短袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：PRADA/普拉达 女士T恤 棉混纺下摆兜袋LOGO布标点缀女士圆领短袖T恤#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：灰色#商品材质：92%棉 8%氨纶#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606271358230027', 'PRADA/普拉达 女士T恤 粘胶纤维细节拼接针织女士圆领背心', '107fe84b774748b1a12bff8afb1ffeff', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '83a073308d0948e6bf3476875eab84a6', null, '2016-06-28 03:58:23', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1467007086763.jpg\" style=\"width: 600px; height: 3000px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"100%粘胶纤维\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：100%粘胶纤维</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">版型：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"适中\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">衣长：适中</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"无袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：无袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"春夏\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：春夏</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：PRADA/普拉达 女士T恤 粘胶纤维细节拼接针织女士圆领背心#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：淡紫色#商品材质：100%粘胶纤维#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606271427320028', 'PRADA/普拉达 女士多色块拼接设计真丝连衣裙 SP', '563adc84565b4ee18204c234d23c8734', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '83a073308d0948e6bf3476875eab84a6', null, '2016-06-28 04:27:32', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1467008839748.jpg\" style=\"width: 500px; height: 4500px;\" /></p>\r\n', '<p><span style=\"color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: normal;\">多色块拼接设计女士真丝连衣裙，质地轻薄，穿着舒适，蕾丝边下摆更显典雅时尚</span></p>\r\n', null, '商品名称：PRADA/普拉达 女士多色块拼接设计真丝连衣裙 SP#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：拼色#商品材质：100% 桑蚕丝#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606271430150029', 'PRADA/普拉达 女士多色块拼接设计真丝连衣裙 SP', '563adc84565b4ee18204c234d23c8734', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '83a073308d0948e6bf3476875eab84a6', null, '2016-06-28 04:30:15', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1467009002513.jpg\" style=\"width: 500px; height: 2500px;\" /></p>\r\n', '<p><span style=\"color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: normal;\">多色块拼接设计女士真丝连衣裙，质地轻薄，穿着舒适，蕾丝边下摆更显典雅时尚。</span></p>\r\n', null, '商品名称：PRADA/普拉达 女士多色块拼接设计真丝连衣裙 SP#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：拼色#商品材质：100% 桑蚕丝#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606271432350030', 'PRADA/普拉达 女士多色块拼接设计真丝连衣裙 SP', '563adc84565b4ee18204c234d23c8734', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '83a073308d0948e6bf3476875eab84a6', null, '2016-06-28 04:32:35', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1467009109513.jpg\" style=\"width: 500px; height: 2500px;\" /></p>\r\n', '<p><span style=\"color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: normal;\">多色块拼接设计女士真丝连衣裙，质地轻薄，穿着舒适，蕾丝边下摆更显典雅时尚</span></p>\r\n', null, '商品名称：PRADA/普拉达 女士多色块拼接设计真丝连衣裙 SP#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：拼色#商品材质：100% 桑蚕丝#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606271447480031', 'PRADA/普拉达 女士图案印花双色块拼接羊毛真丝混纺连衣裙 SP', '563adc84565b4ee18204c234d23c8734', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '83a073308d0948e6bf3476875eab84a6', null, '2016-06-28 04:47:48', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1467010046294.jpg\" style=\"width: 500px; height: 2500px;\" /></p>\r\n', '<p><span style=\"color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: normal;\">设有图案印花双色块拼接女士羊毛真丝混纺连衣裙，版型修身，独特造型凸显女性曼妙好身材</span></p>\r\n', null, '商品名称：PRADA/普拉达 女士图案印花双色块拼接羊毛真丝混纺连衣裙 SP#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：拼色#商品材质：56%羊毛#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606271450520032', 'PRADA/普拉达 女士多色块丰富印花粘胶混纺连衣裙 SP', '563adc84565b4ee18204c234d23c8734', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '83a073308d0948e6bf3476875eab84a6', null, '2016-06-28 04:50:52', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1467010238466.jpg\" style=\"width: 500px; height: 2500px;\" /></p>\r\n', '<p><span style=\"color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: normal;\">多色块设计女士粘胶混纺连衣裙，表面设有丰富图案印花，收腰设计彰显女性曼妙身姿。</span></p>\r\n', null, '商品名称：PRADA/普拉达 女士多色块丰富印花粘胶混纺连衣裙 SP#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：拼色#商品材质：粘胶98％，弹性纤维2％#适用人群：女士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606271519440033', 'VERSACE/范思哲 潮流时尚男士T恤', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-28 05:19:44', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1467011965529.jpg\" style=\"width: 750px; height: 4500px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"四季\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">适用季节：四季</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">开合方式：套头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"100%棉\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">材质：100%棉</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"时尚\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">风格：时尚</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"圆领\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">领型：圆领</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"短袖\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">袖型：短袖</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"意大利\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">产地：意大利</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"正码\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">尺码：正码</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：VERSACE/范思哲 潮流时尚男士T恤#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：黑色#商品材质：100%棉#适用人群：男士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606271522020034', 'VERSACE/范思哲 春夏新款 牛皮 男士休闲鞋', 'e995646b3ea9413dbd7722bf60fe969a', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-28 05:22:02', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1467012106935.jpg\" style=\"width: 600px; height: 3000px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"橡胶底\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">鞋底材质：橡胶底</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套脚\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">闭合方式：套脚</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"圆头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">类型：圆头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"真皮\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">鞋面材质：真皮</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：VERSACE/范思哲 春夏新款 牛皮 男士休闲鞋#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：红棕色#商品材质：真皮#适用人群：男士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606271526310035', 'VERSACE JEANS/范思哲牛仔 男士休闲鞋灰色麂皮乐福/莫卡辛鞋', 'e995646b3ea9413dbd7722bf60fe969a', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-28 05:26:31', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1467012332138.jpg\" style=\"width: 750px; height: 4750px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"橡胶底\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">鞋底材质：橡胶底</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套脚\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">闭合方式：套脚</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"圆头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">类型：圆头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"真皮\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">鞋面材质：真皮</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"小于3cm\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">跟高：小于3cm</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"低帮\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">鞋帮：低帮</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', null, '商品名称：VERSACE JEANS/范思哲牛仔 男士休闲鞋灰色麂皮乐福/莫卡辛鞋#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：灰色#商品材质：真皮#适用人群：男士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606271531500036', 'VERSACE JEANS/范思哲牛仔 男士休闲鞋藏青色麂皮乐福/莫卡辛鞋', 'e995646b3ea9413dbd7722bf60fe969a', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-28 05:31:50', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1467012644279.jpg\" style=\"width: 750px; height: 4000px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"橡胶底\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">鞋底材质：橡胶底</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"套脚\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">闭合方式：套脚</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"圆头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">类型：圆头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"真皮\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">鞋面材质：真皮</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"小于3cm\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">跟高：小于3cm</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"低帮\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">鞋帮：低帮</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：VERSACE JEANS/范思哲牛仔 男士休闲鞋藏青色麂皮乐福/莫卡辛鞋#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：藏青色#商品材质：真皮#适用人群：男士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606271535000037', 'VERSACE JEANS/范思哲牛仔 男士休闲鞋花色聚酯纤维系带鞋', 'e995646b3ea9413dbd7722bf60fe969a', '', '', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', '2410c22ab8d44305aa1cc174d8b79666', null, '2016-06-28 05:35:00', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1467012884248.jpg\" style=\"width: 750px; height: 4750px;\" /></p>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0px; color: rgb(0, 0, 0); font-family: tahoma, arial, 宋体, sans-serif; line-height: 25px;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"橡胶底\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">鞋底材质：橡胶底</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"系带搭扣\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">闭合方式：系带搭扣</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"圆头\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">类型：圆头</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"其它\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">鞋面材质：其它</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"小于3cm\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">跟高：小于3cm</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\" title=\"低帮\">\r\n			<div class=\"zxx_con\" style=\"margin: 0px 1em 0px 0px; padding: 0px; float: left; height: 1.9em; overflow: hidden; word-break: break-all;\">鞋帮：低帮</div>\r\n\r\n			<div class=\"zxx_dotted\" style=\"margin: -1.9em 0px 0px; padding: 0px; width: 1em; height: 1.31em; float: right;\">&hellip;</div>\r\n			</td>\r\n			<td class=\"ths\" style=\"margin: 0px; padding: 0px 0px 0px 25px; border: 2px solid rgb(255, 255, 255); line-height: 28px; height: 30px; color: rgb(51, 51, 51); width: 198px; overflow: hidden; float: left; background: rgb(246, 246, 246);\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', null, '商品名称：VERSACE JEANS/范思哲牛仔 男士休闲鞋花色聚酯纤维系带鞋#商品产地：意大利#产品货号：#设计风格：时尚休闲#商品颜色：花色#商品材质：其它#适用人群：男士', '', '', null);
INSERT INTO `te_goods` VALUES ('1606301015230001', '测试商品请勿购买', '', '请勿购买', '请勿购买', '2016-06-30 10:15:16', '2026-01-01 00:00:00', '1', '', null, '2016-06-30 10:15:23', '<p>请勿购买</p>\r\n', '<p>请勿购买</p>\r\n', null, '商品名称：测试商品请勿购买#商品产地：请勿购买#产品货号：请勿购买#设计风格：请勿购买#商品颜色：请勿购买#商品材质：请勿购买#适用人群：请勿购买', '请勿购买:请勿购买', '请勿购买:请勿购买', '1');
INSERT INTO `te_goods` VALUES ('16cd7268688f480ba1ba3b1cf4dbfddd', 'GUCCI 古驰男式卡其色LOGO底纹羊毛围巾 100995 48200 9764', '53b8bf4e38b0484e9ea1b1fbc2f77168', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-15 13:53:56', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468311108417.jpg\" style=\"width: 709px; height: 2126px;\" /></p>\r\n', '<p>商品名称：古驰男式卡其色LOGO底纹羊毛围巾&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：100995&nbsp;48200&nbsp;9764</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男式卡其色LOGO底纹羊毛围巾#商品产地：意大利#产品货号：100995 48200 9764#设计风格：时尚#商品颜色：印花#商品材质：100%羊毛#适用人群：男式', '商品规格:35厘米x180厘米', '', '1');
INSERT INTO `te_goods` VALUES ('1703061516050001', 'Coach 蔻驰 手提包 F63279-IMDGK', '420990aa670e4df8b6b3efc49fa15884', '5信用卡卡槽', '包邮', '2017-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'c5e42e1804534a74b9a7ef1253dc8ca2', '10', '2017-03-06 15:16:29', null, null, '0', '商品权重:1#商品名称:Coach 蔻驰 手提包 F63279-IMDGK#商品产地:越南', '商品权重:1#商品名称:Coach 蔻驰 手提包 F63279-IMDGK#商品产地:越南', null, '1');
INSERT INTO `te_goods` VALUES ('17b12487c469489eb4931a880f2ecd6a', 'GUCCI 古驰 男士短袖POLO衫 408403 X7335 3044', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 13:14:04', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468313024136.jpg\" style=\"width: 709px; height: 3252px\" /></p>\r\n', '<p>商品名称：古驰男士短袖POLO衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408403&nbsp;X7335&nbsp;3044</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：其他</p>\r\n\r\n<p>商品材质：93%棉和7%弹力纤维</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士短袖POLO衫#商品产地：意大利#产品货号：408403 X7335 3044#设计风格：时尚#商品颜色：其他#商品材质：93%棉和7%弹力纤维#适用人群：', '', '', '100');
INSERT INTO `te_goods` VALUES ('1851af1c877945da8c5cc95b5fc13919', 'GUCCI 古驰 男式拼接logo真皮运动鞋 233334 A9LA0 4066', 'e995646b3ea9413dbd7722bf60fe969a', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 21:22:00', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1458038065450.jpg\" style=\"width: 850px; height: 4062px;\" /></p>\r\n', '<p>商品名称：古驰男式拼接logo真皮运动鞋&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：233334&nbsp;A9LA0&nbsp;4066</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：深蓝色</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男式拼接logo真皮运动鞋#商品产地：意大利#产品货号：233334 A9LA0 4066#设计风格：时尚#商品颜色：深蓝色#商品材质：真皮#适用人群：男式', '参考尺码:英国(UK)', '', '8');
INSERT INTO `te_goods` VALUES ('18c74d73efc044dc8b4b5f19b2e8eed3', 'GUCCI 古驰 花卉印花低帮运动鞋 407343 KU2N0 8960', 'e995646b3ea9413dbd7722bf60fe969a', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-11 03:08:54', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468292349589.jpg\" style=\"width: 591px; height: 2976px;\" /></p>\r\n', '<p>商品名称：古驰花卉印花低帮运动鞋</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：407343&nbsp;KU2N0&nbsp;8960</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%PU</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>绿色花卉印花GG高级人造革(涂层帆布)低帮运动鞋</p>\r\n\r\n<p>米色/棕色GG高级人造革（涂层帆布），配以绿色花卉印花，采用环保工艺制作而成</p>\r\n\r\n<p>黑色真皮鞋舌，饰以Gucci品牌标识</p>\r\n\r\n<p>橡胶鞋底</p>\r\n', null, '商品名称：古驰花卉印花低帮运动鞋#商品产地：意大利#产品货号：407343 KU2N0 8960#设计风格：时尚#商品颜色：印花#商品材质：100%PU#适用人群：男式', '参考尺码:英国(UK)', '', '0');
INSERT INTO `te_goods` VALUES ('1b8d552fab9142d3885d98747c0ea91a', 'GUCCI 古驰 男款灰色帆布面长款钱夹配以虎头贴花 409695 KLQNN 9796', '59372bab48c34c57b877c00b5e315a4d', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 06:27:53', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468309638136.jpg\" style=\"width: 709px; height: 3335px;\" /></p>\r\n', '<p>商品名称：古驰男款灰色帆布面长款钱夹&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：409695&nbsp;KLQNN&nbsp;9796</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%PU</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男款灰色帆布面长款钱夹 #商品产地：意大利#产品货号： 409695 KLQNN 9796#设计风格：时尚#商品颜色：印花#商品材质：100%PU#适用人群：男式', '', '', '0');
INSERT INTO `te_goods` VALUES ('1cb1c7f48d954bcf8f675a701976d202', 'GUCCI 古驰 Cosmopolis 皮革公文包 387082 CAO2N 1070', '19ac21d109814428aa6121541be22748', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 08:02:24', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468309437636.jpg\" style=\"width: 709px; height: 3546px;\" /></p>\r\n', '<p>商品名称：古驰Cosmopolis&nbsp;皮革公文包</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：387082&nbsp;CAO2N&nbsp;1070</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>这款皮革旅行包的特色是半透明外观和纹理粒面。</p>\r\n\r\n<p>黑色皮革，配以蓝色皮革细节</p>\r\n\r\n<p>菱形格纹尼龙衬里</p>\r\n\r\n<p>压印Gucci品牌标识</p>\r\n\r\n<p>隐藏式磁扣翻盖封口</p>\r\n\r\n<p>外置开放式口袋</p>\r\n\r\n<p>内设拉链口袋和八个卡片隔层</p>\r\n\r\n<p>37.25厘米（宽）x25厘米（高）x3.5厘米（深）</p>\r\n', null, '商品名称：古驰Cosmopolis 皮革公文包#商品产地：意大利#产品货号：387082 CAO2N 1070#设计风格：时尚#商品颜色：拼色#商品材质：真皮#适用人群：男式', '', '', '0');
INSERT INTO `te_goods` VALUES ('1f919eb6e6594b5ca8815d47aa96c076', 'GUCCI 古驰 羊绒羊毛衫 408146 Z596A 9167 ', 'fb8f7cfc3e604cf7848b6f1447db5d11', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 08:39:59', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468372665433.jpg\" style=\"width: 709px; height: 3115px;\" /></p>\r\n', '<p>商品名称：古驰羊绒羊毛衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408146&nbsp;Z596A&nbsp;9167</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰羊绒羊毛衫 #商品产地：意大利#产品货号：408146 Z596A 9167 #设计风格：时尚#商品颜色：拼色#商品材质：100%羊毛#适用人群：男式', '', '', '16');
INSERT INTO `te_goods` VALUES ('2129b1509abf45648e219feb5c352676', 'GUCCI 古驰 男式经典GG棕色双拼PVC短款钱包 408829 KHN4N 9791', '59372bab48c34c57b877c00b5e315a4d', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 04:18:29', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468309362199.jpg\" style=\"width: 709px; height: 2145px;\" /></p>\r\n', '<p>商品名称：古驰男式经典GG棕色双拼PVC短款钱包</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408829&nbsp;KHN4N&nbsp;9791</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%PU</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男式经典GG棕色双拼PVC短款钱包#商品产地：意大利#产品货号： 408829 KHN4N 9791#设计风格：时尚#商品颜色：印花#商品材质：100%PU#适用人群：男式', '', '', '23');
INSERT INTO `te_goods` VALUES ('26b6d96423544d7fbca438012565f1ae', 'GUCCI 古驰 花卉印花运动鞋 407362 KU2E0 8961', 'e995646b3ea9413dbd7722bf60fe969a', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-07 23:29:15', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468292494558.jpg\" style=\"width: 591px; height: 2976px;\" /></p>\r\n', '<p>商品名称：古驰花卉印花运动鞋</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：407362&nbsp;KU2E0&nbsp;8961</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%PU</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GG绿色花卉印花高级人造革（涂层帆布）套脚运动鞋。</p>\r\n\r\n<p>米色/棕色GG高级人造革（涂层帆布），配以绿色花卉印花，采用环保工艺制作而成</p>\r\n\r\n<p>黑色皮质滚边</p>\r\n\r\n<p>黑色罗缎圈环（包边）细节</p>\r\n\r\n<p>意大利制造</p>\r\n\r\n<p>弹性衬垫</p>\r\n\r\n<p>橡胶鞋底</p>\r\n', null, '商品名称：古驰花卉印花运动鞋#商品产地：意大利#产品货号：407362 KU2E0 8961#设计风格：时尚#商品颜色：印花#商品材质：100%PU#适用人群：男式', '参考尺码:英国(UK)', '', '0');
INSERT INTO `te_goods` VALUES ('2709eac47c364cf4991c587ad0faf8f3', 'GUCCI 古驰 男士短袖POLO衫 408321 X7331 3044', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-18 11:49:37', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468373293480.jpg\" style=\"width: 709px; height: 3252px;\" /></p>\r\n', '<p>商品名称：古驰男士短袖POLO衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408321&nbsp;X7331&nbsp;3044</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：93%棉和7%弹力纤维</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士短袖POLO衫#商品产地：意大利#产品货号：408321 X7331 3044#设计风格：时尚#商品颜色：拼色#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '18');
INSERT INTO `te_goods` VALUES ('28e213e6660d4e3698ce3892791c367f', 'GUCCI 古驰 提花图案针织围巾 133483 3G200 1272', '53b8bf4e38b0484e9ea1b1fbc2f77168', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 04:03:46', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468310927277.jpg\" style=\"width: 709px; height: 2126px;\" /></p>\r\n', '<p>商品名称：古驰提花图案针织围巾&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：133483&nbsp;3G200&nbsp;1272</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：女式</p>\r\n', null, '商品名称：古驰提花图案针织围巾#商品产地：意大利#产品货号：133483 3G200 1272#设计风格：时尚#商品颜色：印花#商品材质：100%羊毛#适用人群：女式', '商品规格:48厘米x180厘米', '', '2');
INSERT INTO `te_goods` VALUES ('295096621ce847dd8882141454044211', 'GUCCI 古驰 男式羊毛正装围巾 391246 4G200 1762', '53b8bf4e38b0484e9ea1b1fbc2f77168', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 22:07:25', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468311336308.jpg\" style=\"width: 709px; height: 2078px;\" /></p>\r\n', '<p>商品名称：古驰男式羊毛正装围巾</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：391246 4G200 1762</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男式羊毛正装围巾#商品产地：意大利#产品货号：391246 4G200 1762#设计风格：时尚#商品颜色：印花#商品材质：100%羊毛#适用人群：男式', '', '', '12');
INSERT INTO `te_goods` VALUES ('2a432f4e475341b7931638aa1f07b279', ' GUCCI 古驰 女式连衣裙 410271 X5903 1000', '563adc84565b4ee18204c234d23c8734', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-18 14:41:08', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468311942261.jpg\" style=\"width: 709px; height: 3000px;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>商品名称：古驰女式连衣裙&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：410271&nbsp;X5903&nbsp;1000</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：75%粘胶纤维和17%锦纶和8%弹力纤维</p>\r\n\r\n<p>适用人群：女式</p>\r\n', null, '商品名称：古驰女式连衣裙 #商品产地：意大利#产品货号：410271 X5903 1000#设计风格：时尚#商品颜色：黑色#商品材质：75%粘胶纤维和17%锦纶和8%弹力纤维#适用人群：女式', '', '', '98');
INSERT INTO `te_goods` VALUES ('2b62d150ddee44f599cacb24cc72a60c', 'GUCCI 古驰 男士饰钉皮革虎形补丁刺绣 GG手拿包 409696 KLQMN 9796', 'd564912fd9f34160a5e2cb117ac2f596', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 20:36:30', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468309597027.jpg\" style=\"width: 709px; height: 3335px;\" /></p>\r\n', '<p>商品名称：古驰男士饰钉皮革虎形补丁刺绣&nbsp;GG手拿包</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：409696&nbsp;KLQNN&nbsp;9796</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%PU</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士饰钉皮革虎形补丁刺绣 GG手拿包#商品产地：意大利#产品货号：409696 KLQMN 9796#设计风格：时尚#商品颜色：印花#商品材质：100%PU#适用人群：男式', '', '', '0');
INSERT INTO `te_goods` VALUES ('2b6ae51862b345658eca7e90e3c87f5c', 'GUCCI 古驰 Soho皮革手拿包 336753 A7M0G 1000', 'd564912fd9f34160a5e2cb117ac2f596', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 21:30:07', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468309737558.jpg\" style=\"width: 709px; height: 3335px;\" /></p>\r\n', '<p>商品名称：古驰Soho皮革手拿包</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：336753&nbsp;A7M0G&nbsp;1000</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：女式</p>\r\n\r\n<p>我们最受欢迎的soho系列扩展晚装造型。这款手拿包空间充裕，采用经典流苏和内部口袋设计。</p>\r\n\r\n<p>黑色皮革</p>\r\n\r\n<p>浅金色金属配件</p>\r\n\r\n<p>米杏色亚麻棉衬里</p>\r\n\r\n<p>29厘米（宽）x15厘米（高）x6厘米（深）</p>\r\n\r\n<p>&nbsp;</p>\r\n', null, '商品名称：古驰Soho皮革手拿包#商品产地：意大利#产品货号：336753 A7M0G 1000#设计风格：时尚#商品颜色：黑色#商品材质：真皮#适用人群：女式', '', '', '10');
INSERT INTO `te_goods` VALUES ('2bfbba2a2bdd44bcac9d0b4c3df47836', 'GUCCI 古驰 男士短袖POLO衫 408403 X7335 4060', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-18 12:49:51', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468312984699.jpg\" style=\"width: 709px; height: 3252px\" /></p>\r\n', '<p>商品名称：古驰男士短袖POLO衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408403&nbsp;X7335&nbsp;4060</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：蓝色</p>\r\n\r\n<p>商品材质：93%棉和7%弹力纤维</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士短袖POLO衫 #商品产地：意大利#产品货号：408403 X7335 4060#设计风格：时尚#商品颜色：蓝色#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '100');
INSERT INTO `te_goods` VALUES ('2cb826ed9afb47cdbe8c3d16268e9a79', 'GUCCI 古驰 Caleido 低帮运动鞋 407343 KVW80 9786', 'e995646b3ea9413dbd7722bf60fe969a', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 23:21:11', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468292532777.jpg\" style=\"width: 591px; height: 2976px;\" /></p>\r\n', '<p>商品名称：古驰Caleido低帮运动鞋</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：407343&nbsp;KVW80&nbsp;9786</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：100%PU</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>几何&nbsp;caleido&nbsp;印花GG高级人造革（涂层帆布）低帮运动鞋。</p>\r\n\r\n<p>米色/棕色&nbsp;GG&nbsp;高级人造革（涂层帆布），配以黑色&nbsp;caleido&nbsp;印花，采用环保工艺制作而成</p>\r\n\r\n<p>红色真皮鞋舌，饰以&nbsp;Gucci&nbsp;品牌标识</p>\r\n\r\n<p>橡胶鞋底</p>\r\n', null, '商品名称：古驰Caleido低帮运动鞋#商品产地：意大利#产品货号：407343 KVW80 9786#设计风格：时尚#商品颜色：拼色#商品材质：100%PU#适用人群：男式', '参考尺码:英国(UK)', '', '0');
INSERT INTO `te_goods` VALUES ('2cf7d7e34ac04deabed415059f7f9db6', 'GUCCI 古驰 金属色真皮套脚运动鞋 408510 DKU10 8670', 'dfe41ba0ff974e99b6a0bbf5799ee7fa', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-08 18:58:43', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468289175699.jpg\" style=\"width: 591px; height: 2871px;\" /></p>\r\n', '<p>商品名称：古驰金属色真皮套脚运动鞋&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408510&nbsp;DKU10&nbsp;8670</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：女式</p>\r\n', null, '商品名称：古驰金属色真皮套脚运动鞋 #商品产地：意大利#产品货号： 408510 DKU10 8670#设计风格：时尚#商品颜色：印花#商品材质：真皮#适用人群：女式', '参考尺码:欧洲(EU)', '', '0');
INSERT INTO `te_goods` VALUES ('31a7f0b4ffea4d2cb4f66f65dcec967a', 'GUCCI 古驰 羽绒背心 406330 Z4218 4275', '9273a67a23074d97b444d1f21bd9ba6f', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 08:37:53', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468375631386.jpg\" style=\"width: 709px; height: 3252px;\" /></p>\r\n', '<p>商品名称：古驰羽绒背心</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：406330&nbsp;Z4218&nbsp;4275</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：蓝色</p>\r\n\r\n<p>商品材质：100%尼龙</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰羽绒背心#商品产地：意大利#产品货号：406330 Z4218 4275#设计风格：时尚#商品颜色：蓝色#商品材质：100%尼龙#适用人群：男式', '', '', '13');
INSERT INTO `te_goods` VALUES ('357ad737c90d414ba65440b132e34b93', 'GUCCI 古驰 针织运动衫 408241 X6469 2392', '731a81de599542ff9982a793205e441e', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-04 14:02:15', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468376027683.jpg\" style=\"width: 709px; height: 2392px;\" /></p>\r\n', '<p>商品名称：古驰针织运动衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408241&nbsp;X6469&nbsp;2392</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%人造丝</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰针织运动衫#商品产地：意大利#产品货号：408241 X6469 2392#设计风格：时尚#商品颜色：印花#商品材质：100%人造丝#适用人群：男式', '', '', '28');
INSERT INTO `te_goods` VALUES ('3d926c079082470d9ec02b3c71686562', 'GUCCI 古驰 女士黑色牛皮板扣式腰带 354381 AP00K 1000 ', 'a45f9cce280c4415bbf168b4994d44c2', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 23:07:02', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468311870855.jpg\" style=\"width: 709px; height: 1592px;\" /></p>\r\n', '<p>商品名称：古驰女士黑色牛皮板扣式腰带</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：354381&nbsp;AP00K&nbsp;1000</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：女式</p>\r\n', null, '商品名称：古驰女士黑色牛皮板扣式腰带#商品产地：意大利#产品货号：354381 AP00K 1000#设计风格：时尚#商品颜色：黑色#商品材质：真皮#适用人群：女式', '', '', '0');
INSERT INTO `te_goods` VALUES ('3f3523806e9c4b9ca024f6c122be3dbd', 'GUCCI 古驰 女式新款羊毛针织开衫 411610 X5793 9076', 'd0c1d7747a7240619c09058e9d90135b', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 13:10:22', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468312326121.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>商品名称：古驰女式新款羊毛针织开衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：411610&nbsp;X5793&nbsp;9076</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：白色</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：女式</p>\r\n', '1', '商品名称：古驰女式新款羊毛针织开衫 #商品产地：意大利#产品货号：411610 X5793 9076#设计风格：时尚#商品颜色：白色#商品材质：100%羊毛#适用人群：女式', '', '', '25');
INSERT INTO `te_goods` VALUES ('3f6caae11d4646e8a0ed90a21b811717', 'GUCCI 古驰 皮革低帮运动鞋 408612 AXW30 9072', 'e995646b3ea9413dbd7722bf60fe969a', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-18 00:02:21', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468292760277.jpg\" style=\"width: 591px; height: 2976px;\" /></p>\r\n', '<p>商品名称：古驰皮革低帮运动鞋&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408612&nbsp;AXW30&nbsp;9072</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰皮革低帮运动鞋 #商品产地：意大利#产品货号： 408612 AXW30 9072#设计风格：时尚#商品颜色：拼色#商品材质：真皮#适用人群：男式', '参考尺码:英国(UK)', '', '22');
INSERT INTO `te_goods` VALUES ('44d9a934218f48fb919a9f145a3ba285', 'GUCCI 古驰 男士短袖POLO衫 408321 X7331 6239', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 03:59:23', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468373329777.jpg\" style=\"width: 709px; height: 3252px;\" /></p>\r\n', '<p>商品名称：古驰男士短袖POLO衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408321&nbsp;X7331&nbsp;6239</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：93%棉和7%<span style=\"font-size: 13px; line-height: 20.8px;\">弹力纤维</span></p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士短袖POLO衫 #商品产地：意大利#产品货号：408321 X7331 6239#设计风格：时尚#商品颜色：拼色#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '18');
INSERT INTO `te_goods` VALUES ('45251813c9104a7895d22cdb12d399d8', 'GUCCI 古驰 男式刺绣短袖POLO衫 408322 X7333 4440', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-22 00:13:56', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468373130167.jpg\" style=\"width: 709px; height: 3252px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465790529763.jpg\" style=\"width: 1276px; height: 850px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465790540404.jpg\" style=\"width: 1276px; height: 850px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465790555826.jpg\" style=\"width: 1276px; height: 850px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465790662638.jpg\" style=\"width: 1276px; height: 850px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465790673341.jpg\" style=\"width: 1276px; height: 850px;\" /></p>\r\n', '<p>商品名称：古驰男式刺绣短袖POLO衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408322&nbsp;X7333&nbsp;4440</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：蓝色</p>\r\n\r\n<p>商品材质：93%棉和7%弹力纤维</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：男式刺绣短袖POLO衫#商品产地：意大利#产品货号：408322 X7333 4440#设计风格：时尚#商品颜色：蓝色#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '19');
INSERT INTO `te_goods` VALUES ('48cc460c53da4db8848ad1d12cab34fa', 'GUCCI 古驰 羽绒背心  406330 Z4218 7565', '9273a67a23074d97b444d1f21bd9ba6f', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-18 08:59:55', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468375604105.jpg\" style=\"width: 709px; height: 3252px;\" /></p>\r\n', '<p>商品名称：古驰男士外套</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：406330&nbsp;Z4218&nbsp;7565</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：其他</p>\r\n\r\n<p>商品材质：100%尼龙</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士外套#商品产地：意大利#产品货号：406330 Z4218 7565#设计风格：时尚#商品颜色：其他#商品材质：100%尼龙布#适用人群：男式', '', '', '13');
INSERT INTO `te_goods` VALUES ('4946dcb8e13f4a5696426e5e22f61183', 'GUCCI 古驰 提花针织围巾配以织带和流苏 147351 4G704 1166', '53b8bf4e38b0484e9ea1b1fbc2f77168', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 04:16:36', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468310765746.jpg\" style=\"width: 709px; height: 2126px;\" /></p>\r\n', '<p>商品名称：古驰提花针织围巾</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：147351&nbsp;4G704&nbsp;1166</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：80%羊毛和20%真丝提花</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰提花针织围巾#商品产地：意大利#产品货号：147351 4G704 1166#设计风格：时尚#商品颜色：印花#商品材质：80%羊毛和20%真丝提花#适用人群：男式', '商品规格:35厘米x180厘米', '', '3');
INSERT INTO `te_goods` VALUES ('4b4e3582ea4c47a98a094265e9ad4bc7', 'GUCCI 古驰 男式小蜜蜂字符贴布绣T恤 408849 X3C84 1128', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 06:21:35', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468375567933.jpg\" style=\"width: 709px; height: 3252px;\" /></p>\r\n', '<p>商品名称：古驰男式小蜜蜂字符贴布绣T恤&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408849&nbsp;X3C84&nbsp;1128</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：灰色</p>\r\n\r\n<p>商品材质：100%棉</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男式小蜜蜂字符贴布绣T恤 #商品产地：意大利#产品货号：408849 X3C84 1128#设计风格：时尚#商品颜色：灰色#商品材质：100%棉#适用人群：男式', '', '', '0');
INSERT INTO `te_goods` VALUES ('4bee5db993cf441f89ea6f61ee76b424', 'GUCCI 古驰 舒适套头衫 408130 Z5344 1401', 'fb8f7cfc3e604cf7848b6f1447db5d11', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 17:51:11', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468372610042.jpg\" style=\"width: 709px; height: 3389px;\" /></p>\r\n', '<p>商品名称：古驰舒适套头衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408130&nbsp;Z5344&nbsp;1401</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：灰色</p>\r\n\r\n<p>商品材质：100%羊绒</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰舒适套头衫#商品产地：意大利#产品货号：408130 Z5344 1401#设计风格：时尚#商品颜色：灰色#商品材质：100%羊绒#适用人群：男式', '', '', '15');
INSERT INTO `te_goods` VALUES ('54583e898dd344c6aeb9d69c7b0d437a', 'GUCCI 古驰 男式刺绣短袖POLO衫 408322 X7333 3052 ', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 12:51:56', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468373160402.jpg\" style=\"width: 709px; height: 3252px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465798505685.jpg\" style=\"width: 1276px; height: 850px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465799543998.jpg\" style=\"width: 1276px; height: 850px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465799558857.jpg\" style=\"width: 1276px; height: 850px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465799572248.jpg\" style=\"width: 1276px; height: 850px;\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1465799626919.jpg\" style=\"width: 1276px; height: 850px;\" /></p>\r\n', '<p>商品名称：古驰男式刺绣短袖POLO衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408322&nbsp;X7333&nbsp;3052&nbsp;</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：其他</p>\r\n\r\n<p>商品材质：93%棉和7%弹力纤维</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男式刺绣短袖POLO衫 #商品产地：意大利#产品货号：408322 X7333 3052 #设计风格：时尚#商品颜色：其他#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '19');
INSERT INTO `te_goods` VALUES ('54bdba7a00754ed6849de2af66299dd0', 'GUCCI 古驰 提花针织围巾配以织带和流苏 147351 4G704 2766', '53b8bf4e38b0484e9ea1b1fbc2f77168', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-15 14:20:55', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468311148292.jpg\" style=\"width: 709px; height: 2126px;\" /></p>\r\n', '<p>商品名称：古驰提花针织围巾</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：147351&nbsp;4G704&nbsp;2766</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色&nbsp;</p>\r\n\r\n<p>商品材质：80%羊毛和20%真丝提花</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰提花针织围巾#商品产地：意大利#产品货号：147351 4G704 2766#设计风格：时尚#商品颜色：印花#商品材质：80%羊毛和20%真丝提花#适用人群：男式', '商品规格:35厘米x180厘米', '', '3');
INSERT INTO `te_goods` VALUES ('5827c8cd363a49d0b9e6f6c0f3d878e1', 'GUCCI 古驰 GG提花披肩 201494 3G869 5600', '5abcf127fbf74637b4e525b008c56248', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 21:08:21', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468311385839.jpg\" style=\"width: 709px; height: 2126px;\" /></p>\r\n', '<p>商品名称：古驰GG提花披肩</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：201494&nbsp;3G869&nbsp;5600</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：紫红色</p>\r\n\r\n<p>商品材质：70%羊毛和30%真丝</p>\r\n\r\n<p>适用人群：女式</p>\r\n', null, '商品名称：古驰GG提花披肩#商品产地：意大利#产品货号：201494 3G869 5600#设计风格：时尚#商品颜色：紫红色#商品材质：70%羊毛和30%真丝#适用人群：女式', '商品规格:70厘米x200厘米', '', '7');
INSERT INTO `te_goods` VALUES ('59c02844b82a499abe9198599322f8e3', 'GUCCI 古驰 Bamboo Shopper 皮革购物袋 323660 A7MDG 5664', '420990aa670e4df8b6b3efc49fa15884', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-06 11:24:54', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468309941042.jpg\" style=\"width: 709px; height: 3335px;\" /></p>\r\n', '<p>商品名称：古驰Bamboo&nbsp;Shopper&nbsp;皮革购物袋&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：323660&nbsp;A7MDG&nbsp;5664</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：女式</p>\r\n\r\n<p>这款中号bamboo&nbsp;shopper购物袋配以竹节式双提手和可调节可拆卸肩带。采用一种经典皮革精制而成，其以柔软、富有弹性和轻盈的特质著称。</p>\r\n\r\n<p>桃红色皮革和暖橙色皮革</p>\r\n\r\n<p>浅金色金属配件</p>\r\n\r\n<p>天然亚麻棉衬里</p>\r\n\r\n<p>金色Gucci压印商标</p>\r\n\r\n<p>中号尺寸：34厘米（宽）x21厘米（高）x15厘米（深）</p>\r\n\r\n<p>竹节双提手（长11厘米）</p>\r\n\r\n<p>可拆分可调节真皮肩带（长49厘米）</p>\r\n\r\n<p>隐形双磁扣</p>\r\n\r\n<p>拉链内袋和智能手机内袋</p>\r\n\r\n<p>拉链内隔层及按扣内袋</p>\r\n\r\n<p>保护性金属脚</p>\r\n', null, '商品名称：古驰Bamboo Shopper 皮革购物袋#商品产地：意大利#产品货号：323660 A7MDG 5664#设计风格：时尚#商品颜色：拼色#商品材质：真皮#适用人群：女式', '', '', '0');
INSERT INTO `te_goods` VALUES ('5a8c3a471d4b4a0da0255c32a36ceea8', 'GUCCI 古驰 女式pvc长款印花钱包钱夹 410102 KWL1N 8696', '59372bab48c34c57b877c00b5e315a4d', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 10:38:15', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468305513917.jpg\" style=\"width: 709px; height: 2860px;\" /></p>\r\n', '<p>商品名称：古驰女式pvc长款印花钱包钱夹&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：410102&nbsp;KWL1N&nbsp;8696</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%PU</p>\r\n\r\n<p>适用人群：女式</p>\r\n\r\n<p>尺码：宽19cm，长10cm，厚2.5cm</p>\r\n\r\n<p>拉链开合，内置一个拉链隔层，3个钞位，12个卡位</p>\r\n', null, '商品名称：古驰女式pvc长款印花钱包钱夹 #商品产地：意大利#产品货号： 410102 KWL1N 8696#设计风格：时尚#商品颜色：印花#商品材质：100%PU#适用人群：女式', '', '', '0');
INSERT INTO `te_goods` VALUES ('5ea1b7db5feb40d1a4328adb1e0d750d', 'GUCCI 古驰 帆布GG面料棒球帽 200035 KQW6G 4080', 'bede55ae0cfc4a128441406b00588ae4', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 10:37:49', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468311714964.jpg\" style=\"width: 709px; height: 2600px;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>商品名称：古驰帆布GG面料棒球帽&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：200035&nbsp;F4CRG&nbsp;4080</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：65%涤纶、18%面和17%尼龙</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>浅米色/蓝色&nbsp;GG&nbsp;图案织布，配以蓝色/红色/蓝色织带和蓝色真皮滚边,<span style=\"line-height: 1.6em;\">纯棉衬里,</span><span style=\"line-height: 1.6em;\">后部可调节式搭扣.</span></p>\r\n', null, '商品名称：古驰帆布GG面料棒球帽#商品产地：意大利#产品货号：200035 KQW6G 4080#设计风格：时尚#商品颜色：印花#商品材质：65%涤纶 18%棉和17%尼龙#适用人群：男式', '', '', '94');
INSERT INTO `te_goods` VALUES ('62b9b70a7d4f49f992155e606b17e173', 'GUCCI 古驰 双面经典logo提花图案手拿包 278635 CWC1N 2140', 'd564912fd9f34160a5e2cb117ac2f596', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 07:25:34', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468305480871.jpg\" style=\"width: 709px; height: 2860px;\" /></p>\r\n', '<p>商品名称：古驰双面经典logo提花图案手拿包</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：278635&nbsp;CWC1N&nbsp;2140</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：女式</p>\r\n', null, '商品名称：古驰双面经典logo提花图案手拿包#商品产地：意大利#产品货号：278635 CWC1N 2140#设计风格：时尚#商品颜色：印花#商品材质：真皮#适用人群：女式', '', '', '0');
INSERT INTO `te_goods` VALUES ('62df3665ac594f90b31d5859835299c5', 'GUCCI 古驰 舒适套头衫 408130 Z5344 6509', 'fb8f7cfc3e604cf7848b6f1447db5d11', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 15:52:33', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468372637324.jpg\" style=\"width: 709px; height: 3315px;\" /></p>\r\n', '<p>商品名称：古驰舒适套头衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408130&nbsp;Z5344&nbsp;6509</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：其他</p>\r\n\r\n<p>商品材质：100%羊绒</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰舒适套头衫#商品产地：意大利#产品货号：408130 Z5344 6509#设计风格：时尚#商品颜色：其他#商品材质：100%羊绒#适用人群：男式', '', '', '15');
INSERT INTO `te_goods` VALUES ('63ed5ee6ae964510ae9a9094d8045edd', 'GUCCI 古驰 黑色GG织花羊毛围巾 133483 3G200 1000', '53b8bf4e38b0484e9ea1b1fbc2f77168', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 03:59:01', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468310967417.jpg\" style=\"width: 709px; height: 2126px;\" /></p>\r\n', '<p>商品名称：古驰黑色GG织花羊毛围巾</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：133483&nbsp;3G200&nbsp;1000</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰黑色GG织花羊毛围巾#商品产地：意大利#产品货号：133483 3G200 1000#设计风格：时尚#商品颜色：黑色#商品材质：100%羊毛#适用人群：男式', '商品规格:35厘米x180厘米', '', '2');
INSERT INTO `te_goods` VALUES ('679bac7ca38e45378f270bad5ddd9131', 'GUCCI 古驰 Caleido 莫代尔真丝披肩 402106 4G865 9660', '5abcf127fbf74637b4e525b008c56248', '', '包邮', '2016-03-14 10:00:10', '2016-03-14 11:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 10:08:35', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468310616167.jpg\" style=\"width: 709px; height: 2142px;\" /></p>\r\n', '<p>商品名称：古驰Caleido&nbsp;莫代尔真丝披肩&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：402106&nbsp;4G865&nbsp;9660</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：85%莫代尔和15%真丝</p>\r\n\r\n<p>适用人群：女式</p>\r\n\r\n<p>几何caleido印花大号披肩。</p>\r\n\r\n<p>GG图案莫代尔真丝，配以黑色caleido&nbsp;印花</p>\r\n\r\n<p>流苏边缘</p>\r\n\r\n<p>135厘米（宽）x134厘米（长）</p>\r\n', null, '商品名称：古驰Caleido 莫代尔真丝披肩#商品产地：意大利#产品货号：402106 4G865 9660#设计风格：时尚#商品颜色：印花#商品材质：85%莫代尔和15%真丝#适用人群：女式', '商品规格:135厘米x134厘米', '', '0');
INSERT INTO `te_goods` VALUES ('6c799261c4204b1fba0226d6f321f346', 'GUCCI 古驰 女式连衣裙 410273 X7350 1474', '563adc84565b4ee18204c234d23c8734', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 20:48:09', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468312046136.jpg\" style=\"width: 709px; height: 3000px;\" /></p>\r\n', '<p>商品名称：古驰女式连衣裙&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：410273&nbsp;X7350&nbsp;1474</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：98%人造丝和2%弹力纤维</p>\r\n\r\n<p>适用人群：女式</p>\r\n', null, '商品名称：古驰女式连衣裙#商品产地：意大利#产品货号：410273 X7350 1474#设计风格：时尚#商品颜色：拼色#商品材质：98%人造丝和2%弹力纤维#适用人群：女式', '', '', '97');
INSERT INTO `te_goods` VALUES ('70bb8539da414890b8ccec6e6f56c851', 'GUCCI 古驰 提花图案针织围巾 133483 3G200 1763', '53b8bf4e38b0484e9ea1b1fbc2f77168', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 04:07:34', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468311192246.jpg\" style=\"width: 709px; height: 2126px;\" /></p>\r\n', '<p>商品名称：古驰提花图案针织围巾&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：133483&nbsp;3G200&nbsp;1763</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：女式</p>\r\n', null, '商品名称：古驰提花图案针织围巾#商品产地：意大利#产品货号：133483 3G200 1763#设计风格：时尚#商品颜色：印花#商品材质：100%羊毛#适用人群：女式', '商品规格:48厘米x180厘米', '', '2');
INSERT INTO `te_goods` VALUES ('73f4daf90650432f9fd5e24a36e4b034', 'GUCCI 古驰 黑色真皮驾车鞋 353044 AOD00 1000 ', 'e995646b3ea9413dbd7722bf60fe969a', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 21:34:53', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468292625574.jpg\" style=\"width: 591px; height: 2976px;\" /></p>\r\n', '<p>商品名称：古驰黑色真皮驾车鞋</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：353044&nbsp;AOD00&nbsp;1000</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰黑色真皮驾车鞋#商品产地：意大利#产品货号：353044 AOD00 1000#设计风格：时尚#商品颜色：黑色#商品材质：真皮#适用人群：男式', '参考尺码:英国(UK)', '', '11');
INSERT INTO `te_goods` VALUES ('7703e44a2fc14e6b836ecec86f08acb3', 'GUCCI 古驰 男式黑色简约帽子 200036 FFKP0 1060', 'bede55ae0cfc4a128441406b00588ae4', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 20:43:48', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468311802355.jpg\" style=\"width: 709px; height: 2600px;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>商品名称：古驰男式黑色简约帽子</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：200036&nbsp;FFKP0&nbsp;1060</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：65%涤纶和35%棉</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男式黑色简约帽子#商品产地：意大利#产品货号：200036 FFKP0 1060#设计风格：时尚#商品颜色：黑色#商品材质：65%涤纶和35%棉#适用人群：男式', '', '', '95');
INSERT INTO `te_goods` VALUES ('7bfefb7405da4370980c677a01cf355d', 'GUCCI 古驰 Soho皮革手拿包 336753 A7M0G 5523', 'd564912fd9f34160a5e2cb117ac2f596', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 07:32:40', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468309711714.jpg\" style=\"width: 709px; height: 3335px;\" /></p>\r\n', '<p>商品名称：古驰Soho皮革手拿包</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：336753&nbsp;A7M0G&nbsp;5523</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：枚红色</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：女式</p>\r\n', null, '商品名称：古驰Soho皮革手拿包#商品产地：意大利#产品货号：336753 A7M0G 5523#设计风格：时尚#商品颜色：枚红色#商品材质：真皮#适用人群：女式', '', '', '10');
INSERT INTO `te_goods` VALUES ('7db4247c2fbb499e845f0a80314ac9d1', 'GUCCI 古驰 帆布GG面料棒球帽 200035 FFKPG 9791', 'bede55ae0cfc4a128441406b00588ae4', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 04:31:51', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468311679792.jpg\" style=\"width: 709px; height: 2600px;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>商品名称：古驰帆布GG面料棒球帽</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：200035&nbsp;FFKPG&nbsp;9791&nbsp;</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：65%涤纶、18%面和17%尼龙</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>浅米色/乌木色&nbsp;GG&nbsp;图案织布，配以绿色/红色/绿色织带和棕色真皮滚边</p>\r\n\r\n<p>纯棉衬里</p>\r\n\r\n<p>后部可调节式搭扣</p>\r\n', null, '商品名称：古驰帆布GG面料棒球帽#商品产地：意大利#产品货号：200035 FFKPG 9791 #设计风格：时尚#商品颜色：印花#商品材质：65%涤纶 18%棉和17%尼龙#适用人群：男式', '', '', '94');
INSERT INTO `te_goods` VALUES ('8212900fff29408eb29322032cd14174', 'GUCCI 古驰 男士短袖POLO衫 408403 X7335 9060', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-20 06:54:05', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468313175699.jpg\" style=\"width: 709px; height: 3252px\" /></p>\r\n', '<p>商品名称：古驰男士短袖POLO衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408403&nbsp;X7335&nbsp;9060</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：白色</p>\r\n\r\n<p>商品材质：93%棉和7%弹力纤维</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士短袖POLO衫 #商品产地：意大利#产品货号：408403 X7335 9060#设计风格：时尚#商品颜色：白色#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '100');
INSERT INTO `te_goods` VALUES ('870550368876486a9fa9f8b980bb706f', 'GUCCI 古驰 guccissima真皮驾车鞋 372329 AA6F0 2019', 'e995646b3ea9413dbd7722bf60fe969a', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-20 05:50:52', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468289076652.jpg\" style=\"width: 591px; height: 2976px;\" /></p>\r\n', '<p>商品名称：古驰guccissima真皮驾车鞋&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：372329&nbsp;AA6F0&nbsp;2019</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：深棕色</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>深棕色guccissima真皮，配以深棕色真皮细节</p>\r\n\r\n<p>橡胶鹅卵石鞋底</p>\r\n', null, '商品名称：古驰guccissima真皮驾车鞋#商品产地：意大利#产品货号：372329 AA6F0 2019#设计风格：时尚#商品颜色：深棕色#商品材质：真皮#适用人群：男式', '参考尺码:英国(UK)', '', '0');
INSERT INTO `te_goods` VALUES ('8b9f696ee14c4fe88fe3056b76656364', 'GUCCI 古驰 双面羊毛经典logo提花图案针织围巾 100995 48200 1263', '53b8bf4e38b0484e9ea1b1fbc2f77168', '', '包邮', '2016-03-30 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-23 03:05:06', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468311269402.jpg\" style=\"width: 709px; height: 2126px;\" /></p>\r\n', '<p>&nbsp;</p>\r\n\r\n<p>商品名称：古驰双面羊毛经典logo提花图案针织围巾</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：100995&nbsp;48200&nbsp;1263</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰双面羊毛经典logo提花图案针织围巾#商品产地：意大利#产品货号：100995 48200 1263#设计风格：时尚#商品颜色：印花#商品材质：100%羊毛#适用人群：男式', '商品规格:35厘米x180厘米', '', '1');
INSERT INTO `te_goods` VALUES ('8cc3bb3ba67d42d785c282a8bf6d3aea', 'GUCCI 古驰 男款黑色GG压花牛皮休闲鞋 233334 A9LA0 1061', 'e995646b3ea9413dbd7722bf60fe969a', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 11:16:58', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468292729152.jpg\" style=\"width: 591px; height: 2822px;\" /></p>\r\n', '<p>商品名称：古驰黑色GG压花牛皮休闲鞋</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：233334&nbsp;A9LA0&nbsp;1061</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰黑色GG压花牛皮休闲鞋#商品产地：意大利#产品货号：233334 A9LA0 1061#设计风格：时尚#商品颜色：黑色#商品材质：真皮#适用人群：男式', '参考尺码:英国(UK)', '', '8');
INSERT INTO `te_goods` VALUES ('90bf32ed6a22425cab3d119c5c1d6bf0', 'GUCCI 古驰 男士棉质折边长裤 407542 Z4368 1000', 'fb5499fec41c40478df534d257a9dcba', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 09:39:33', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468376252167.jpg\" style=\"width: 709px; height: 3252px;\" /></p>\r\n', '<p>商品名称：古驰男士棉质折边长裤</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：407542&nbsp;Z4368&nbsp;1000</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：98%棉和2%氨纶</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士棉质折边长裤#商品产地：意大利#产品货号：407542 Z4368 1000#设计风格：时尚#商品颜色：黑色#商品材质：98%棉和2%氨纶#适用人群：男式', '', '', '0');
INSERT INTO `te_goods` VALUES ('92a5cfc8de23437d870be4fccb33ec0f', 'GUCCI 古驰 舒适套头衫 408131 Z5344 1401', 'fb8f7cfc3e604cf7848b6f1447db5d11', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 08:07:24', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468372368746.jpg\" style=\"width: 709px; height: 3274px;\" /></p>\r\n', '<p>商品名称：古驰舒适套头衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408131&nbsp;Z5344&nbsp;1401</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：灰色</p>\r\n\r\n<p>商品材质：100%羊绒</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰舒适套头衫#商品产地：意大利#产品货号：408131 Z5344 1401#设计风格：时尚#商品颜色：灰色#商品材质：100%羊绒#适用人群：男式', '', '', '26');
INSERT INTO `te_goods` VALUES ('92c19bccc2574dcfa64801f112723a66', ' GUCCI 古驰 羊绒羊毛衫 411610 X5793 4098', 'd0c1d7747a7240619c09058e9d90135b', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 06:37:47', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468312246777.jpg\" style=\"width: 709px; height: 3200px;\" /></p>\r\n', '<p style=\"font-size: 13px; line-height: 20.8px;\">商品名称：古驰羊绒羊毛衫&nbsp;</p>\r\n\r\n<p style=\"font-size: 13px; line-height: 20.8px;\">商品品牌：古驰（GUCCI）</p>\r\n\r\n<p style=\"font-size: 13px; line-height: 20.8px;\">商品产地：意大利</p>\r\n\r\n<p style=\"font-size: 13px; line-height: 20.8px;\">商品货号：411610&nbsp;X5793&nbsp;4098</p>\r\n\r\n<p style=\"font-size: 13px; line-height: 20.8px;\">设计风格：时尚</p>\r\n\r\n<p style=\"font-size: 13px; line-height: 20.8px;\">商品颜色：拼色</p>\r\n\r\n<p style=\"font-size: 13px; line-height: 20.8px;\">商品材质：100%羊毛</p>\r\n\r\n<p style=\"font-size: 13px; line-height: 20.8px;\">适用人群：女式</p>\r\n\r\n<p style=\"font-size: 13px; line-height: 20.8px;\">&nbsp;</p>\r\n\r\n<p style=\"font-size: 13px; line-height: 20.8px;\">&nbsp;</p>\r\n\r\n<p style=\"font-size: 13px; line-height: 20.8px;\">&nbsp;</p>\r\n', '1', '商品名称：古驰羊绒羊毛衫 #商品产地：意大利#产品货号： 411610 X5793 4098#设计风格：时尚#商品颜色：拼色#商品材质：100%羊毛#适用人群：女式', '', '', '25');
INSERT INTO `te_goods` VALUES ('94eec444441147b2b8ef07d35f7181d3', 'GUCCI 古驰 舒适套头衫 408131 Z5344 4440', 'fb8f7cfc3e604cf7848b6f1447db5d11', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-20 06:12:45', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468372320574.jpg\" style=\"width: 709px; height: 3474px;\" /></p>\r\n', '<p>商品名称：古驰舒适套头衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408131&nbsp;Z5344&nbsp;4440</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：100%羊绒</p>\r\n\r\n<p>商品材质：其他</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰舒适套头衫#商品产地：意大利#产品货号：408131 Z5344 4440#设计风格：时尚#商品颜色：其他#商品材质：100%羊绒#适用人群：男式', '', '', '26');
INSERT INTO `te_goods` VALUES ('961b7c022e834311b405f2a5a2f185dc', 'GUCCI 古驰 针织V型领织带毛衣 408147 Z596A 4060', 'fb8f7cfc3e604cf7848b6f1447db5d11', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 08:56:07', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468372260558.jpg\" style=\"width: 709px; height: 2806px;\" /></p>\r\n', '<p>商品名称：古驰V型领织带毛衣&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408147&nbsp;Z596A&nbsp;4060</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰V型领织带毛衣#商品产地：意大利#产品货号：408147 Z596A 4060#设计风格：时尚#商品颜色：拼色#商品材质：100%羊毛#适用人群：男式', '', '', '27');
INSERT INTO `te_goods` VALUES ('99c62891500743e5aa12ef2a53deb24c', 'GUCCI 古驰 男式刺绣短袖POLO衫 408322 X7333 4907', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 22:19:32', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468373235527.jpg\" style=\"width: 709px; height: 3252px;\" /></p>\r\n', '<p>商品名称：古驰男式刺绣短袖POLO衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408322&nbsp;X7333&nbsp;4907</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：蓝色</p>\r\n\r\n<p>商品材质：93%棉和7%弹力纤维</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男式刺绣短袖POLO衫#商品产地：意大利#产品货号： 408322 X7333 4907#设计风格：时尚#商品颜色：蓝色#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '19');
INSERT INTO `te_goods` VALUES ('99d12383aed040d5bc854978908555f5', 'GUCCI 古驰 男士外套 406011 Z9687 3371', '731a81de599542ff9982a793205e441e', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-18 22:48:39', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468375684167.jpg\" style=\"width: 709px; height: 3252px;\" /></p>\r\n', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1458199655061.jpg\" style=\"width: 850px; height: 2186px;\" /></p>\r\n\r\n<p>商品名称：古驰男士外套</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：406011&nbsp;Z9687&nbsp;3371</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：绿色</p>\r\n\r\n<p>商品材质：100%尼龙</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士外套#商品产地：意大利#产品货号：406011 Z9687 3371#设计风格：时尚#商品颜色：绿色#商品材质：100%尼龙#适用人群：男式', '', '', '0');
INSERT INTO `te_goods` VALUES ('9a0c6d06f12848729d06a49537c0e7ae', 'GUCCI  古驰 男士棉质POLO衫 408321 X7331 9060', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 16:04:46', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468373504980.jpg\" style=\"width: 709px; height: 3252px;\" /></p>\r\n', '<p>商品名称：古驰男士棉质POLO衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408321&nbsp;X7331&nbsp;9060</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：白色</p>\r\n\r\n<p>商品材质：93%棉和7%<span style=\"font-size: 13px; line-height: 20.8px;\">弹力纤维</span></p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士棉质POLO衫#商品产地：意大利#产品货号： 408321 X7331 9060#设计风格：时尚#商品颜色：白色#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '18');
INSERT INTO `te_goods` VALUES ('9d21e1b6586a457e9ae7d2c4292046db', 'GUCCI 古驰 舒适套头衫 408130 Z5344 9166', 'fb8f7cfc3e604cf7848b6f1447db5d11', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 01:57:53', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468372693058.jpg\" style=\"width: 709px; height: 3151px;\" /></p>\r\n', '<p>商品名称：古驰舒适套头衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408130&nbsp;Z5344&nbsp;9166</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：其他</p>\r\n\r\n<p>商品材质：100%羊绒</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>&nbsp;</p>\r\n', null, '商品名称：古驰舒适套头衫#商品产地：意大利#产品货号：408130 Z5344 9166#设计风格：时尚#商品颜色：其他#商品材质：100%羊绒#适用人群：男式', '', '', '15');
INSERT INTO `te_goods` VALUES ('9e8ddd52202448ae8a4e05852eba2bcd', 'GUCCI 古驰 粉色GG提花图案针织围巾 133483 3G200 5900', '53b8bf4e38b0484e9ea1b1fbc2f77168', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 04:11:22', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468310652683.jpg\" style=\"width: 709px; height: 2126px;\" /></p>\r\n', '<p>商品名称：古驰粉色GG提花图案针织围巾</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：133483&nbsp;3G200&nbsp;5900</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：女式</p>\r\n', null, '商品名称：古驰粉色GG提花图案针织围巾#商品产地：意大利#产品货号：133483 3G200 5900#设计风格：时尚#商品颜色：印花#商品材质：100%羊毛#适用人群：女式', '商品规格:48厘米x180厘米', '', '2');
INSERT INTO `te_goods` VALUES ('9ea8626ff45e40b996aa4ae68165faee', 'GUCCI 古驰 深蓝色真皮马衔扣驾车鞋 322741 AHM10 4281', 'e995646b3ea9413dbd7722bf60fe969a', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-18 01:28:21', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468292698746.jpg\" style=\"width: 591px; height: 2976px;\" /></p>\r\n', '<p>商品名称：古驰真皮马衔扣驾车鞋&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：322741&nbsp;AHM10&nbsp;4281</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：深蓝</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>海蓝色/红色/海蓝色尼龙标志织带</p>\r\n\r\n<p>马衔扣细节</p>\r\n\r\n<p>胶底</p>\r\n', null, '商品名称：古驰真皮马衔扣驾车鞋#商品产地：意大利#产品货号：322741 AHM10 4281#设计风格：时尚#商品颜色：深蓝#商品材质：真皮#适用人群：男式', '参考尺码:英国(UK)', '', '9');
INSERT INTO `te_goods` VALUES ('a03baff7dd7d4d22bce9170b91d0b8c6', 'GUCCI 古驰 粘胶针织运动衫 408238  X6456 1009', '731a81de599542ff9982a793205e441e', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 03:37:07', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468376076964.jpg\" style=\"width: 709px; height: 2504px;\" /></p>\r\n', '<p>商品名称：古驰粘胶纱针织运动衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408238&nbsp;&nbsp;X6456&nbsp;1009</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：其他</p>\r\n\r\n<p>商品材质：100%人造丝</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰粘胶纱针织运动衫#商品产地：意大利#产品货号：408238  X6456 1009#设计风格：时尚#商品颜色：其他#商品材质：100%人造丝#适用人群：男式', '', '', '0');
INSERT INTO `te_goods` VALUES ('a177c0f795774098ad5e6154f13c7d0e', 'GUCCI 古驰 舒适套头衫 408130 Z5344 4440', 'fb8f7cfc3e604cf7848b6f1447db5d11', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 07:45:55', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468372723574.jpg\" style=\"width: 709px; height: 2942px;\" /></p>\r\n', '<p>商品名称：古驰舒适套头衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408130&nbsp;Z5344&nbsp;4440</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：其他</p>\r\n\r\n<p>商品材质：100%羊绒</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰舒适套头衫#商品产地：意大利#产品货号：408130 Z5344 4440#设计风格：时尚#商品颜色：其他#商品材质：100%羊绒#适用人群：男式', '', '', '15');
INSERT INTO `te_goods` VALUES ('a358e2396bbd4e99b1f825f51a1f435c', 'GUCCI 古驰 女式连衣裙 410271 X5903 9170', '563adc84565b4ee18204c234d23c8734', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 04:44:20', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468311984558.jpg\" style=\"width: 709px; height: 3000px;\" /></p>\r\n', '<p>商品名称：古驰女式连衣裙&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：410271&nbsp;X5903&nbsp;9170</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：白色</p>\r\n\r\n<p>商品材质：75%粘胶纤维和17%锦纶和8%弹力纤维</p>\r\n\r\n<p>适用人群：女式</p>\r\n', null, '商品名称：古驰女式连衣裙 #商品产地：意大利#产品货号： 410271 X5903 9170#设计风格：时尚#商品颜色：白色#商品材质：75%粘胶纤维和17%锦纶和8%弹力纤维#适用人群：女式', '', '', '98');
INSERT INTO `te_goods` VALUES ('a35db1d3f9ec45a88452da4af8cf8033', 'GUCCI 古驰 男式条纹羊毛围巾 162226 4G636 4269', '53b8bf4e38b0484e9ea1b1fbc2f77168', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 04:29:21', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468310727292.jpg\" style=\"width: 709px; height: 2126px;\" /></p>\r\n', '<p>商品名称：古驰男式条纹羊毛围巾</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：162226&nbsp;4G636&nbsp;4269</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：90%羊毛和10%真丝</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男式条纹羊毛围巾#商品产地：意大利#产品货号：162226 4G636 4269#设计风格：时尚#商品颜色：印花#商品材质：90%羊毛和10%真丝#适用人群：男式', '商品规格:35厘米（宽）x180厘', '', '4');
INSERT INTO `te_goods` VALUES ('a395d68f1efc41c293b56906243f61df', 'GUCCI 古驰 男士短袖POLO衫 408323 X7332 9024', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-21 12:21:47', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468313205339.jpg\" style=\"width: 709px; height: 3252px\" /></p>\r\n', '<p>商品名称：古驰男士短袖POLO衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408323&nbsp;X7332&nbsp;9024</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：白色</p>\r\n\r\n<p>商品材质：93%棉和7%弹力纤维</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士短袖POLO衫#商品产地：意大利#产品货号：408323 X7332 9024#设计风格：时尚#商品颜色：白色#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '99');
INSERT INTO `te_goods` VALUES ('a39f0f34536a48d0b413ef140ac04150', 'GUCCI 古驰 男式压花标志织带GG帽子 200036 FFKP0 9791', 'bede55ae0cfc4a128441406b00588ae4', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 20:47:26', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468311836230.jpg\" style=\"width: 709px; height: 2600px;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>商品名称：古驰男式压花标志织带GG帽子</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：200036&nbsp;FFKP0&nbsp;9791</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：65%涤纶和35%棉</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男式压花标志织带GG帽子#商品产地：意大利#产品货号：200036 FFKP0 9791#设计风格：时尚#商品颜色：印花#商品材质：65%涤纶和35%棉#适用人群：男式', '', '', '95');
INSERT INTO `te_goods` VALUES ('a46263a78a5343f98b17cbc0cb98383d', 'GUCCI 古驰 男士短袖POLO衫 408320 X5685 4510', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 03:45:51', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468312533355.jpg\" style=\"width: 709px; height: 3252px;\" /></p>\r\n', '<p>商品名称：古驰男士短袖POLO衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408320&nbsp;X5685&nbsp;4510</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：93%棉和7%弹力纤维</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士短袖POLO衫#商品产地：意大利#产品货号：408320 X5685 4510#设计风格：时尚#商品颜色：拼色#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '29');
INSERT INTO `te_goods` VALUES ('a556f3b1873c464d96e1c3fe6cfc3351', 'GUCCI 古驰 真皮衬里低帮运动鞋 407330 DEF30 1074', 'e995646b3ea9413dbd7722bf60fe969a', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 22:46:53', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468292398355.jpg\" style=\"width: 591px; height: 2976px;\" /></p>\r\n', '<p>商品名称：古驰真皮衬里低帮运动鞋</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：407330&nbsp;DEF30&nbsp;1074</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>黑色真皮，配以红色衬垫真皮细节</p>\r\n\r\n<p>标志性真皮衬垫织带细节</p>\r\n\r\n<p>橡胶鞋底</p>\r\n\r\n<p>&nbsp;</p>\r\n', null, '商品名称：古驰真皮衬里低帮运动鞋#商品产地：意大利#产品货号：407330 DEF30 1074#设计风格：时尚#商品颜色：拼色#商品材质：真皮#适用人群：男式', '参考尺码:英国(UK)', '', '0');
INSERT INTO `te_goods` VALUES ('a947d2832a0d4bedb38194111740fb8a', 'GUCCI 古驰 高级人造革小号邮差包 406374 KHN7X 9772', 'a2c3877fd7874c288a712522e48bbc9f', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-18 12:41:49', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468308217605.jpg\" style=\"width: 709px; height: 2490px;\" /></p>\r\n', '<p>商品名称：古驰高级人造革小号邮差包&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：406368&nbsp;KHN7X&nbsp;9772</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%PU</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>经典GG高级小号邮差包，配以经久耐用的尼龙肩带和涂胶金属配件。</p>\r\n\r\n<p>米色/棕色GG高级人造革，采用环保工艺制作而成</p>\r\n\r\n<p>黑色皮质滚边</p>\r\n\r\n<p>橡胶拉链</p>\r\n\r\n<p>黑色皮革翻盖，配以塑料带扣封口</p>\r\n\r\n<p>浮雕Gucci品牌标识</p>\r\n\r\n<p>内设拉链口袋和智能手机口袋</p>\r\n', null, '商品名称：古驰高级人造革小号邮差包#商品产地：意大利#产品货号：406374 KHN7X 9772#设计风格：时尚#商品颜色：印花#商品材质：100%PU#适用人群：男式', '', '', '0');
INSERT INTO `te_goods` VALUES ('aaafd1f441c24dd1959bb3a39be3f19b', 'GUCCI 古驰 涂胶真皮夹趾凉鞋 353765 AF710 1000', 'e995646b3ea9413dbd7722bf60fe969a', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 21:40:46', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468292464636.jpg\" style=\"width: 591px; height: 2976px;\" /></p>\r\n', '<p>商品名称：古驰涂胶真皮夹趾凉鞋&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：353765&nbsp;AF710&nbsp;1000</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>黑色涂胶真皮，配以黑色涂胶guccissima皮革细节</p>\r\n', null, '商品名称：古驰涂胶真皮夹趾凉鞋#商品产地：意大利#产品货号：353765 AF710 1000#设计风格：时尚#商品颜色：黑色#商品材质：真皮#适用人群：男式', '参考尺码:英国(UK)', '', '0');
INSERT INTO `te_goods` VALUES ('ab0275773e5d421596ae7f83391707ca', 'GUCCI 古驰 双面提花GG羊毛围巾 391246 4G200 6168', '53b8bf4e38b0484e9ea1b1fbc2f77168', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 10:03:09', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468311223792.jpg\" style=\"width: 709px; height: 2135px;\" /></p>\r\n', '<p>商品名称：古驰双面提花GG羊毛围巾&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：391246&nbsp;4G200&nbsp;6168</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>这款双面提花围巾采用柔软轻质的羊毛制成，正反面采用对比色通体GG印花设计，适合全天穿戴，舒适无比。</p>\r\n\r\n<p>30厘米（宽）x180厘米（长）</p>\r\n', null, '商品名称：古驰双面提花GG羊毛围巾 #商品产地：意大利#产品货号：391246 4G200 6168#设计风格：时尚#商品颜色：印花#商品材质：100%羊毛#适用人群：男式', '商品规格:30厘米x180厘米', '', '12');
INSERT INTO `te_goods` VALUES ('ac444bd1bfca4fd7a26d3662ef1c3176', 'GUCCI 古驰 男士短袖POLO衫 408403 X7335 1060', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-18 12:45:06', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468313060214.jpg\" style=\"width: 709px; height: 3252px\" /></p>\r\n', '<p>商品名称：古驰男士短袖POLO衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408403&nbsp;X7335&nbsp;1060</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：93%棉和7%弹力纤维</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士短袖POLO衫 #商品产地：意大利#产品货号： 408403 X7335 1060#设计风格：时尚#商品颜色：黑色#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '100');
INSERT INTO `te_goods` VALUES ('ace463710af240d3b1ffcfce71c6904c', 'GUCCI 古驰 Caleido GG 高级人造革全拉链式卡包 411817 KVW1N 9769', '59372bab48c34c57b877c00b5e315a4d', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 13:18:47', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468308169074.jpg\" style=\"width: 709px; height: 2855px;\" /></p>\r\n', '<p>商品名称：古驰Caleido&nbsp;GG&nbsp;高级人造革全拉链式卡包</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：411817&nbsp;KVW1N&nbsp;9769</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%PU</p>\r\n\r\n<p>适用人群：通用</p>\r\n\r\n<p>几何&nbsp;caleido&nbsp;印花GG高级人造革全拉链式卡包。</p>\r\n\r\n<p>米白/乌木黑棕色&nbsp;GG&nbsp;高级人造革，配以黑色&nbsp;caleido&nbsp;印花，采用环保工艺制作而成</p>\r\n\r\n<p>黑色皮革细节</p>\r\n\r\n<p>全拉链式开阖</p>\r\n\r\n<p>十二个卡片隔层和三个钞票隔层</p>\r\n\r\n<p>拉链零钱袋</p>\r\n\r\n<p>&nbsp;</p>\r\n', null, '商品名称：古驰Caleido GG 高级人造革全拉链式卡包#商品产地：意大利#产品货号： 411817 KVW1N 9769#设计风格：时尚#商品颜色：印花#商品材质：100%PU#适用人群：男式', '', '', '0');
INSERT INTO `te_goods` VALUES ('b0ae0c4f9764474da64618d237c40185', 'GUCCI 古驰 男士短袖POLO衫 408322 X7333 9000', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 04:09:48', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468373459386.jpg\" style=\"width: 709px; height: 3252px;\" /></p>\r\n', '<p>商品名称：古驰男士短袖POLO衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408322&nbsp;X7333&nbsp;9000</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：白色</p>\r\n\r\n<p>商品材质：93%棉和7%弹力纤维</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士短袖POLO衫 #商品产地：意大利#产品货号：408322 X7333 9000#设计风格：时尚#商品颜色：白色#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '19');
INSERT INTO `te_goods` VALUES ('b18b2d49ce2f484e92dedf3e0eb13b57', 'GUCCI 古驰 男式羊毛长方围巾 162226 4G636 1065', '53b8bf4e38b0484e9ea1b1fbc2f77168', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 18:25:35', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468310568433.jpg\" style=\"width: 709px; height: 2126px;\" /></p>\r\n', '<p>商品名称：古驰男式羊毛长方围巾</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：162226&nbsp;4G636&nbsp;1065</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：90%羊毛和10%真丝</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男式羊毛长方围巾#商品产地：意大利#产品货号：162226 4G636 1065#设计风格：时尚#商品颜色：印花#商品材质：90%羊毛和10%真丝#适用人群：男式', '商品规格:35厘米x180厘米', '', '4');
INSERT INTO `te_goods` VALUES ('b2222790bc6642d7a75cee08032059ac', 'GUCCI 古驰 舒适套头衫 408147 Z596A 9167', 'fb8f7cfc3e604cf7848b6f1447db5d11', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 19:00:42', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468372788683.jpg\" style=\"width: 709px; height: 4169px;\" /></p>\r\n', '<p>商品名称：古驰舒适套头衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408147&nbsp;Z596A&nbsp;9167&nbsp;</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：其他</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>&nbsp;</p>\r\n', null, '商品名称：古驰舒适套头衫#商品产地：意大利#产品货号： 408147 Z596A 9167#设计风格：时尚#商品颜色：其他#商品材质：100%羊毛#适用人群：男式', '', '', '27');
INSERT INTO `te_goods` VALUES ('b2df86d17bb04ce8971571be16734547', 'GUCCI 古驰 GG图案提花披肩 201494 3G869 1260', '5abcf127fbf74637b4e525b008c56248', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 05:32:17', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468310823542.jpg\" style=\"width: 709px; height: 2126px;\" /></p>\r\n', '<p>商品名称：古驰GG图案提花披肩</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：201494&nbsp;3G869&nbsp;1260</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：70%羊毛和30%真丝提花</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰GG图案提花披肩#商品产地：意大利#产品货号：201494 3G869 1260#设计风格：时尚#商品颜色：印花#商品材质：70%羊毛和30%真丝提花#适用人群：男式', '商品规格:115厘米 x125 厘米', '', '7');
INSERT INTO `te_goods` VALUES ('b37cec16113d4423a222ac5e94b54145', 'GUCCI 古驰 粘胶针织运动衫 408240 X6458 4185', '731a81de599542ff9982a793205e441e', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-03 13:46:02', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468375940496.jpg\" style=\"width: 709px; height: 2437px;\" /></p>\r\n', '<p>商品名称：古驰粘胶纱针织运动衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408240&nbsp;X6458&nbsp;4185</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：100%人造丝</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰粘胶纱针织运动衫#商品产地：意大利#产品货号： 408240 X6458 4185#设计风格：时尚#商品颜色：拼色#商品材质：100%人造丝#适用人群：男式', '', '', '0');
INSERT INTO `te_goods` VALUES ('b77954bf14024a42920be30dfbf74cf4', 'GUCCI 古驰 2016春夏新款肩背包 380574 BZ7AT 5873', 'a2c3877fd7874c288a712522e48bbc9f', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-07 03:56:42', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468310060464.jpg\" style=\"width: 709px; height: 3335px;\" /></p>\r\n', '<p>商品名称：古驰2016春夏新款肩背包</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：380574&nbsp;BZ7AT&nbsp;5873</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：女式</p>\r\n', null, '商品名称：古驰2016春夏新款肩背包#商品产地：意大利#产品货号：380574 BZ7AT 5873#设计风格：时尚#商品颜色：拼色#商品材质：真皮#适用人群：女式', '', '', '0');
INSERT INTO `te_goods` VALUES ('b9c10019688b460ea4b71c06952918a7', 'GUCCI 古驰 真丝系扣衬衫 407578 ZGS03 9011', 'a132583bb8cb4a829605474015f807a1', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 03:47:29', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468312124230.jpg\" style=\"width: 709px; height: 3000px;\" /></p>\r\n', '<p>商品名称：古驰真丝系扣衬衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：407578&nbsp;ZGS03&nbsp;9011</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：白色</p>\r\n\r\n<p>商品材质：100%真丝</p>\r\n\r\n<p>适用人群：女式</p>\r\n\r\n<p>真丝系扣衬衫，搭配荷叶边袖口。</p>\r\n\r\n<p>白色真丝双绉面料</p>\r\n\r\n<p>七分袖</p>\r\n\r\n<p>荷叶边袖口</p>\r\n\r\n<p>GG珍珠纽扣</p>\r\n\r\n<p>自系式蝴蝶结</p>\r\n', null, '商品名称：古驰真丝系扣衬衫#商品产地：意大利#产品货号：407578 ZGS03 9011#设计风格：时尚#商品颜色：白色#商品材质：100%真丝#适用人群：女式', '', '', '14');
INSERT INTO `te_goods` VALUES ('ba564fa6f6844e3dbe0ac5b7515e8ec7', 'GUCCI 古驰 针织 V型领织带毛衣 408147 Z596A 3012', 'fb8f7cfc3e604cf7848b6f1447db5d11', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 18:51:21', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468372494433.jpg\" style=\"width: 709px; height: 2702px;\" /></p>\r\n', '<p>商品名称：古驰V型领织带毛衣</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408147&nbsp;Z596A&nbsp;3012</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>&nbsp;</p>\r\n', null, '商品名称：古驰V型领织带毛衣#商品产地：意大利#产品货号： 408147 Z596A 3012#设计风格：时尚#商品颜色：拼色#商品材质：100%羊毛#适用人群：男式', '', '', '27');
INSERT INTO `te_goods` VALUES ('bd6de2dc70d945ad979cfdd7ff697b98', 'GUCCI 古驰 双面羊毛经典logo提花图案针织围巾 100995 48200 1061', '53b8bf4e38b0484e9ea1b1fbc2f77168', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 20:18:30', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468311429605.jpg\" style=\"width: 709px; height: 2126px;\" /></p>\r\n', '<p>商品名称：古驰双面羊毛经典logo提花图案针织围巾</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：100995&nbsp;48200&nbsp;1061</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>35厘米（宽）x180厘米（长）</p>\r\n', null, '商品名称：古驰双面羊毛经典logo提花图案针织围巾#商品产地：意大利#产品货号：100995 48200 1061#设计风格：时尚#商品颜色：黑色#商品材质：100%羊毛#适用人群：男式', '商品规格:35厘米x180厘米', '', '1');
INSERT INTO `te_goods` VALUES ('bf0c5e8063be42be9d60f8025622e9f9', 'GUCCI 古驰 男士短袖POLO衫 408323 X7332 6240', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 02:40:17', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468313137074.jpg\" style=\"width: 709px; height: 3252px\" /></p>\r\n', '<p>商品名称：古驰男士短袖POLO衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408323&nbsp;X7332&nbsp;6240</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：红色</p>\r\n\r\n<p>商品材质：93%棉和7%弹力纤维</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士短袖POLO衫 #商品产地：意大利#产品货号：408323 X7332 6240#设计风格：时尚#商品颜色：红色 #商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '99');
INSERT INTO `te_goods` VALUES ('c1743ae4f38e4bb38c58f9ae4845406a', 'GUCCI 古驰 男式羊毛正装围巾 391246 4G200 4166', '53b8bf4e38b0484e9ea1b1fbc2f77168', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 19:46:40', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468310689292.jpg\" style=\"width: 709px; height: 2179px;\" /></p>\r\n', '<p>商品名称：古驰&nbsp;男式羊毛正装围巾</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：391246&nbsp;4G200&nbsp;4166</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>33厘米（宽）x175厘米（长）</p>\r\n', null, '商品名称：古驰男式羊毛正装围巾#商品产地：意大利#产品货号：391246 4G200 4166#设计风格：时尚#商品颜色：印花#商品材质：100%羊毛#适用人群：男式', '商品规格:33厘米x175厘米', '', '12');
INSERT INTO `te_goods` VALUES ('ca7d86d630ef400f89662554f0cdc059', 'GUCCI 古驰 中性款经典GG图案羊毛提花围巾 100995 48200 4061', '53b8bf4e38b0484e9ea1b1fbc2f77168', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 17:28:38', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468311467902.jpg\" style=\"width: 709px; height: 2418px;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>商品名称：古驰中性款经典GG图案羊毛提花围巾</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：100995&nbsp;48200&nbsp;4061</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰中性款经典GG图案羊毛提花围巾#商品产地：意大利#产品货号：100995 48200 4061#设计风格：时尚#商品颜色：印花#商品材质：100%羊毛#适用人群：男式', '商品规格:35厘米*180厘米', '', '1');
INSERT INTO `te_goods` VALUES ('cbdbd2a97ff24168852394ffe067a02f', 'GUCCI 古驰 2016男式圆领新泽西运动衫 408241 X6459 1013', '731a81de599542ff9982a793205e441e', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 19:49:35', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468376210855.jpg\" style=\"width: 709px; height: 2482px;\" /></p>\r\n', '<p>商品名称：古驰男式圆领新泽西运动衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408241&nbsp;X6459&nbsp;1013</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：灰色</p>\r\n\r\n<p>商品材质：100%人造丝</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男式圆领新泽西运动衫#商品产地：意大利#产品货号： 408241 X6459 1013#设计风格：时尚#商品颜色：灰色#商品材质：100%人造丝#适用人群：男式', '', '', '0');
INSERT INTO `te_goods` VALUES ('d1b0f5f4d8d24fa3a102fe8da107ff76', 'GUCCI 古驰 羊绒羊毛衫 408146 Z596A 4060', 'fb8f7cfc3e604cf7848b6f1447db5d11', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 18:33:25', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468372888011.jpg\" style=\"width: 709px; height: 3335px;\" /></p>\r\n', '<p>商品名称：古驰羊绒羊毛衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408146&nbsp;Z596A&nbsp;4060</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰羊绒羊毛衫#商品产地：意大利#产品货号：408146 Z596A 4060#设计风格：时尚#商品颜色：黑色#商品材质：100%羊毛#适用人群：男式', '', '', '16');
INSERT INTO `te_goods` VALUES ('d2c5b8d89da14de7a060ab0538f81a39', 'GUCCI 古驰 粘胶针织运动衫 408239 X6457 4190', '731a81de599542ff9982a793205e441e', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-18 09:13:37', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468375913386.jpg\" style=\"width: 709px; height: 2029px;\" /></p>\r\n', '<p>商品名称：古驰粘胶纱针织运动衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408239&nbsp;X6457&nbsp;4190</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：100%人造丝</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰粘胶纱针织运动衫 #商品产地：意大利#产品货号：408239 X6457 4190#设计风格：时尚#商品颜色：拼色#商品材质：100%人造丝#适用人群：男式', '', '', '17');
INSERT INTO `te_goods` VALUES ('d4b046475d314959bf78bd2a8f2290f7', 'GUCCI 古驰 Bamboo Shopper 花朵印花迷你手提包 368823 CWY1G 8613', '420990aa670e4df8b6b3efc49fa15884', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-04 21:48:24', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468310020964.jpg\" style=\"width: 709px; height: 3335px;\" /></p>\r\n', '<p>商品名称：古驰Bamboo&nbsp;Shopper&nbsp;花朵印花迷你手提包&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：368823&nbsp;CWY1G&nbsp;8613</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：女式</p>\r\n\r\n<p>这款迷你bamboo&nbsp;shopper购物袋配以竹节式双提手，造型小巧。采用一种经典皮革精制而成，配以金属感花朵印花。</p>\r\n\r\n<p>金属感金色花朵印花皮革</p>\r\n\r\n<p>浅金色金属配件</p>\r\n\r\n<p>压印Gucci商标</p>\r\n\r\n<p>天然亚麻棉衬里</p>\r\n\r\n<p>迷你款：20.5厘米（宽）x17厘米（高）x9厘米（深）</p>\r\n\r\n<p>意大利制造</p>\r\n\r\n<p>双竹节式提手（8厘米高）</p>\r\n\r\n<p>可拆卸可调节肩带（59厘米高）</p>\r\n\r\n<p>顶部按扣</p>\r\n\r\n<p>内部平袋</p>\r\n\r\n<p>&nbsp;</p>\r\n', null, '商品名称：古驰Bamboo Shopper 花朵印花迷你手提包#商品产地：意大利#产品货号：368823 CWY1G 8613#设计风格：时尚#商品颜色：印花#商品材质：真皮#适用人群：女式', '', '', '0');
INSERT INTO `te_goods` VALUES ('d7a0c996aaab412e9d311c889929eae6', 'GUCCI 古驰 Supreme 皮夹配以虎头贴花 411757 KLQMN 9796', 'd564912fd9f34160a5e2cb117ac2f596', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 22:31:47', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468309506417.jpg\" style=\"width: 709px; height: 3335px;\" /></p>\r\n', '<p>商品名称：古驰Supreme皮夹&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：411757&nbsp;KLQMN&nbsp;9796</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%PU</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>顶部拉链皮夹采用&nbsp;GG&nbsp;supreme&nbsp;人造革精制而成，配以铆钉皮革虎头细节。</p>\r\n\r\n<p>米色/乌木色&nbsp;GG&nbsp;Supreme&nbsp;人造革，采用环保工艺制作而成。</p>\r\n\r\n<p>皮革虎头贴花，配以铆钉细节。</p>\r\n\r\n<p>手工边缘上色。</p>\r\n\r\n<p>拉链封口。</p>\r\n\r\n<p>&nbsp;</p>\r\n', null, '商品名称：古驰Supreme皮夹#商品产地：意大利#产品货号：411757 KLQMN 9796#设计风格：时尚#商品颜色：印花#商品材质：100%PU#适用人群：男式', '商品规格:24 厘米(宽)x18 厘米(长)', '', '0');
INSERT INTO `te_goods` VALUES ('d9f6e856c6794cd889249047323447a2', 'GUCCI 古驰 男士短袖POLO衫 408323 X7332 1026', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 02:24:41', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468313096980.jpg\" style=\"width: 709px; height: 3252px\" /></p>\r\n', '<p>商品名称：古驰男士短袖POLO衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408323&nbsp;X7332&nbsp;1026</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：93%棉和7%弹力纤维</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>&nbsp;</p>\r\n', null, '商品名称：古驰男士短袖POLO衫#商品产地：意大利#产品货号：408323 X7332 1026#设计风格：时尚#商品颜色：黑色#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '99');
INSERT INTO `te_goods` VALUES ('dc16bff53eec4e1fad7d2b953c9e35fa', 'GUCCI 古驰 男式凉鞋 411016 H5Q90 1164', 'e995646b3ea9413dbd7722bf60fe969a', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-18 02:35:09', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468288637886.jpg\" style=\"width: 591px; height: 2976px;\" /></p>\r\n', '<p>商品名称：古驰男式凉鞋&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：411016&nbsp;H5Q90&nbsp;1164</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：100%尼龙</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男式凉鞋#商品产地：意大利#产品货号：411016 H5Q90 1164#设计风格：时尚#商品颜色：拼色#商品材质：100%尼龙#适用人群：男式', '参考尺码:英国(UK)', '', '0');
INSERT INTO `te_goods` VALUES ('dd00940c69214cc69adf28c0cc9e848a', 'GUCCI 古驰 印花单肩包 382275 KQWQT 9678', 'a2c3877fd7874c288a712522e48bbc9f', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 18:00:11', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468309976496.jpg\" style=\"width: 709px; height: 3335px;\" /></p>\r\n', '<p>商品名称：古驰印花单肩包</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：382275&nbsp;KQWQT&nbsp;9678</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：65%涤纶、18%面和17%尼龙</p>\r\n\r\n<p>适用人群：女式</p>\r\n', null, '商品名称：古驰印花单肩包#商品产地：意大利#产品货号：382275 KQWQT 9678#设计风格：时尚#商品颜色：拼色#商品材质：65%涤纶 18%棉和17%尼龙#适用人群：女式', '', '', '0');
INSERT INTO `te_goods` VALUES ('ddd2474b509a4d9bb5f73c3f7d13399b', 'GUCCI 古驰 真丝系扣衬衫 407578 ZGS03 1000', 'a132583bb8cb4a829605474015f807a1', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 05:43:06', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468312087199.jpg\" style=\"width: 709px; height: 3000px;\" /></p>\r\n', '<p>商品名称：古驰真丝系扣衬衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：407578&nbsp;ZGS03&nbsp;1000</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：100%真丝</p>\r\n\r\n<p>适用人群：女式</p>\r\n', null, '商品名称：古驰真丝系扣衬衫#商品产地：意大利#产品货号：407578 ZGS03 1000#设计风格：时尚#商品颜色：黑色#商品材质：100%真丝#适用人群：女式', '', '', '14');
INSERT INTO `te_goods` VALUES ('e001ac54314c48a3a6b90046337e3c3d', 'GUCCI 古驰 男士短袖POLO衫 411740 X5831 6241', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-18 14:35:59', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468312814230.jpg\" style=\"width: 709px; height: 3252px\" /></p>\r\n', '<p>商品名称：古驰男士短袖POLO衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：411740&nbsp;X5831&nbsp;6241</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：93%棉和7%弹力纤维</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士短袖POLO衫#商品产地：意大利#产品货号：411740 X5831 6241#设计风格：时尚#商品颜色：拼色#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '29');
INSERT INTO `te_goods` VALUES ('e4c889f7f4a04769b0eb03d6a7109249', 'GUCCI 古驰 女款时尚黑色真皮单肩手提包 391987 CAO0X 1000', '420990aa670e4df8b6b3efc49fa15884', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 18:13:34', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468309677246.jpg\" style=\"width: 709px; height: 3335px;\" /></p>\r\n', '<p>商品名称：古驰女款时尚黑色真皮单肩手提包&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：391987&nbsp;CAO0X&nbsp;1000</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：女式</p>\r\n', null, '商品名称：古驰女款时尚黑色真皮单肩手提包#商品产地：意大利#产品货号：391987 CAO0X 1000#设计风格：时尚#商品颜色：黑色#商品材质：真皮#适用人群：女式', '', '', '0');
INSERT INTO `te_goods` VALUES ('e70a5668833c4cc7bb40a678b82e1901', 'GUCCI 古驰 粘胶纱针织运动衫 408239  X6457 1018', '731a81de599542ff9982a793205e441e', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 09:41:51', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468376176589.jpg\" style=\"width: 709px; height: 2051px;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>商品名称：古驰粘胶纱针织运动衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408239&nbsp;&nbsp;X6457&nbsp;1018</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：100%人造丝</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰粘胶纱针织运动衫 #商品产地：意大利#产品货号： 408239  X6457 1018#设计风格：时尚#商品颜色：拼色#商品材质：100%人造丝#适用人群：男式', '', '', '17');
INSERT INTO `te_goods` VALUES ('e852daa935984e56b62a5028f24d6221', 'GUCCI 古驰 舒适套头衫 408131 Z5344 1165', 'fb8f7cfc3e604cf7848b6f1447db5d11', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-18 12:03:00', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468372147183.jpg\" style=\"width: 567px; height: 3599px;\" /></p>\r\n', '<p>商品名称：古驰舒适套头衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408131&nbsp;Z5344&nbsp;1165</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：其他</p>\r\n\r\n<p>商品材质：100%羊绒</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰舒适套头衫#商品产地：意大利#产品货号：408131 Z5344 1165#设计风格：时尚#商品颜色：其他#商品材质：100%羊绒#适用人群：男式', '', '', '26');
INSERT INTO `te_goods` VALUES ('ea0d9c03b00a4504ab6bdb82108ca703', 'GUCCI 古驰 帆布GG面料棒球帽 200035 FFKPG 1060', 'bede55ae0cfc4a128441406b00588ae4', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-18 14:20:59', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468311523746.jpg\" style=\"width: 709px; height: 2600px;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>商品名称：古驰帆布GG面料棒球帽&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：200035&nbsp;FFKPG&nbsp;1060</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：65%涤纶、18%面和17%尼龙</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>黑色&nbsp;GG&nbsp;图案织布，配以绿色/红色/绿色标志织带和黑色真皮滚边</p>\r\n\r\n<p>纯棉衬里</p>\r\n\r\n<p>后部可调节式搭扣</p>\r\n', null, '商品名称：古驰帆布GG面料棒球帽#商品产地：意大利#产品货号：200035 FFKPG 1060#设计风格：时尚#商品颜色：黑色#商品材质：65%涤纶 18%棉和17%尼龙#适用人群：男式', '', '', '94');
INSERT INTO `te_goods` VALUES ('eb89a07ae08b4331beee11095703c0ff', 'GUCCI 古驰 羊绒羊毛衫 408146 Z596A 3012', 'fb8f7cfc3e604cf7848b6f1447db5d11', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 08:28:07', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468372543949.jpg\" style=\"width: 709px; height: 3244px;\" /></p>\r\n', '<p>商品名称：古驰羊绒羊毛衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408146&nbsp;Z596A&nbsp;3012&nbsp;</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>&nbsp;</p>\r\n', null, '商品名称：古驰羊绒羊毛衫#商品产地：意大利#产品货号：408146 Z596A 3012#设计风格：时尚#商品颜色：拼色#商品材质：100%羊毛#适用人群：男式', '', '', '16');
INSERT INTO `te_goods` VALUES ('ee816c3a61da4b0f97c986ba06ff082b', 'GUCCI 古驰 男式经典GG棕色双拼PVC短款钱包 408829 KHN4N 4080', '59372bab48c34c57b877c00b5e315a4d', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 20:11:27', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468303688542.jpg\" style=\"width: 709px; height: 2065px;\" /></p>\r\n', '<p>商品名称：古驰男式经典GG棕色双拼PVC短款钱包</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408829&nbsp;KHN4N&nbsp;4080</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%PU</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男式经典GG棕色双拼PVC短款钱包#商品产地：意大利#产品货号： 408829 KHN4N 4080#设计风格：时尚#商品颜色：印花#商品材质：100%PU#适用人群：男式', '', '', '23');
INSERT INTO `te_goods` VALUES ('f132c81111514ae59e33af37a69b0722', 'GUCCI 古驰 女式小黄蜂图案T恤 414959 X5907 1034', '107fe84b774748b1a12bff8afb1ffeff', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 07:26:25', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468312356917.jpg\" style=\"width: 709px; height: 3000px;\" /></p>\r\n', '<p>商品名称：古驰女式小黄蜂图案T恤&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：414959&nbsp;X5907&nbsp;1034</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：100%亚麻</p>\r\n\r\n<p>适用人群：女式</p>\r\n', null, '商品名称：古驰女式小黄蜂图案T恤 #商品产地：意大利#产品货号：414959 X5907 1034#设计风格：时尚#商品颜色：黑色#商品材质：100%亚麻#适用人群：女式', '', '', '96');
INSERT INTO `te_goods` VALUES ('f33e803923d947bb97977781e988b2b7', 'GUCCI 古驰 双面提花GG羊毛围巾 391246 4G200 6573', '53b8bf4e38b0484e9ea1b1fbc2f77168', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 08:11:12', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468311297964.jpg\" style=\"width: 709px; height: 2142px;\" /></p>\r\n', '<p>商品名称：古驰双面提花GG羊毛围巾&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：391246&nbsp;4G200&nbsp;6573</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰双面提花GG羊毛围巾#商品产地：意大利#产品货号：391246 4G200 6573#设计风格：时尚#商品颜色：印花#商品材质：100%羊毛#适用人群：男式', '', '', '12');
INSERT INTO `te_goods` VALUES ('f3e34b743e5f41af9ec8a91d19f46d81', 'GUCCI 古驰 真皮马衔扣驾车鞋 322741 AHM10 6460', 'e995646b3ea9413dbd7722bf60fe969a', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 01:17:42', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468292657839.jpg\" style=\"width: 591px; height: 2976px;\" /></p>\r\n', '<p>商品名称：古驰真皮马衔扣驾车鞋</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：322741&nbsp;AHM10&nbsp;6460</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：红色</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>蓝色/红色/蓝色尼龙织带</p>\r\n\r\n<p>马衔扣细节</p>\r\n\r\n<p>胶底</p>\r\n', null, '商品名称：古驰真皮马衔扣驾车鞋#商品产地：意大利#产品货号：322741 AHM10 6460#设计风格：时尚#商品颜色：红色#商品材质：真皮#适用人群：男式', '参考尺码:英国(UK)', '', '9');
INSERT INTO `te_goods` VALUES ('f45ead4cfd7e42968acc67eb1cf57676', 'GUCCI 古驰 棉质运动衫饰以蜜蜂贴花 408242 X3C73 1056', '731a81de599542ff9982a793205e441e', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 06:06:03', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468376313996.jpg\" style=\"width: 709px; height: 3252px;\" /></p>\r\n', '<p>商品名称：古驰棉质运动衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408242&nbsp;X3C73&nbsp;1056</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：100%棉</p>\r\n\r\n<p>适用人群：男式</p>\r\n\r\n<p>这款水手领运动衫采用水洗外观的缩绒棉剪裁而成，成功捕捉到了alessandro&nbsp;michele&ldquo;早春&rdquo;系列的现代精神。中心部分是gucci新的标志性符号&mdash;&mdash;蜜蜂贴花刺绣，图案两边伴有法语&ldquo;l&rsquo;aveugle&nbsp;par&nbsp;amour（执迷于爱）&rdquo;手工贴制。</p>\r\n\r\n<p>水洗黑色毛毡棉质针织面料</p>\r\n', null, '商品名称：古驰棉质运动衫 #商品产地：意大利#产品货号：408242 X3C73 1056#设计风格：时尚#商品颜色：拼色#商品材质：100%棉#适用人群：男式', '', '', '0');
INSERT INTO `te_goods` VALUES ('f4b99744d586469da14b9f62a8898942', 'GUCCI 古驰 皮革低帮运动鞋 408612 AXW30 1000 ', 'e995646b3ea9413dbd7722bf60fe969a', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 09:49:07', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468289127871.jpg\" style=\"width: 591px; height: 2976px;\" /></p>\r\n', '<p>商品名称：古驰皮革低帮运动鞋&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408612&nbsp;AXW30&nbsp;1000&nbsp;</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：黑色</p>\r\n\r\n<p>商品材质：真皮</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰皮革低帮运动鞋#商品产地：意大利#产品货号： 408612 AXW30 1000#设计风格：时尚#商品颜色：黑色#商品材质：真皮#适用人群：男式', '参考尺码:英国(UK)', '', '22');
INSERT INTO `te_goods` VALUES ('f6a31473b8b845d8848129b6f2e80fd2', 'GUCCI 古驰 高级人造革手拿包 395474 KGDHN 9643', 'd564912fd9f34160a5e2cb117ac2f596', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-16 18:15:57', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468309400589.jpg\" style=\"width: 709px; height: 3546px;\" /></p>\r\n', '<p>商品名称：古驰高级人造革手拿包</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：395474&nbsp;KGDHN&nbsp;9643</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：印花</p>\r\n\r\n<p>商品材质：100%PU</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰高级人造革手拿包#商品产地：意大利#产品货号：395474 KGDHN 9643#设计风格：时尚#商品颜色：印花#商品材质：100%PU#适用人群：男式', '', '', '0');
INSERT INTO `te_goods` VALUES ('f76e07f5f4d640caba4220e9439d9fbc', 'GUCCI 古驰 男士短袖POLO衫 408403 X7335 4960 ', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 13:25:26', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468312923105.jpg\" style=\"width: 709px; height: 3252px\" /></p>\r\n', '<p>商品名称：古驰男士短袖POLO衫</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408403&nbsp;X7335&nbsp;4960</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：其他</p>\r\n\r\n<p>商品材质：93%棉和7%弹力纤维</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰男士短袖POLO衫 #商品产地：意大利#产品货号：408403 X7335 4960 #设计风格：时尚#商品颜色：其他#商品材质：93%棉和7%弹力纤维#适用人群：男式', '', '', '100');
INSERT INTO `te_goods` VALUES ('f8d427daba924fee8090553c8c2fc6cb', 'GUCCI 古驰 男士棉质POLO衫  408321 X7331 4060', 'ad8703d4e6464c289fc9a369e2c6b1e9', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '1', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-19 15:57:38', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1468373365074.jpg\" style=\"width: 709px; height: 3252px;\" /></p>\r\n', '<p>商品名称：古驰灰色纯棉GG标志印花男士短袖T恤&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408321&nbsp;X7331&nbsp;4060</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：93%棉和7%<span style=\"font-size: 13px; line-height: 20.8px;\">弹力纤维</span></p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰灰色纯棉GG标志印花男士短袖T恤#商品产地：意大利#产品货号：408321 X7331 4060#设计风格：时尚#商品颜色：拼色#商品材质： 93%棉和7%弹力纤维#适用人群：男式', '', '', '18');
INSERT INTO `te_goods` VALUES ('fbc531b6f0ff4791a1909f6a4ff37f56', 'GUCCI 古驰 羊绒羊毛衫 408146 Z596A 1514', 'fb8f7cfc3e604cf7848b6f1447db5d11', '', '包邮', '2016-01-01 00:00:00', '2026-01-01 00:00:00', '0', 'b9d6e79d78f54c0d92e5f76dfc21b8fb', null, '2016-03-17 08:22:35', '<p><img alt=\"\" src=\"http://gucci-beitian.oss-cn-beijing.aliyuncs.com/uploadQuestions/img/1458202551358.jpg\" /></p>\r\n', '<p>商品名称：古驰羊绒羊毛衫&nbsp;</p>\r\n\r\n<p>商品品牌：古驰（GUCCI）</p>\r\n\r\n<p>商品产地：意大利</p>\r\n\r\n<p>商品货号：408146&nbsp;Z596A&nbsp;1514&nbsp;</p>\r\n\r\n<p>设计风格：时尚</p>\r\n\r\n<p>商品颜色：拼色</p>\r\n\r\n<p>商品材质：100%羊毛</p>\r\n\r\n<p>适用人群：男式</p>\r\n', null, '商品名称：古驰羊绒羊毛衫#商品产地：意大利#产品货号：408146 Z596A 1514#设计风格：时尚#商品颜色：拼色#商品材质：100%羊毛#适用人群：男式', '', '', '16');

-- ----------------------------
-- Table structure for `te_province`
-- ----------------------------
DROP TABLE IF EXISTS `te_province`;
CREATE TABLE `te_province` (
  `PROVINCE_ID` varchar(20) NOT NULL,
  `PRO_NAME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PROVINCE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of te_province
-- ----------------------------
INSERT INTO `te_province` VALUES ('1', '北京');
INSERT INTO `te_province` VALUES ('10', '新疆');
INSERT INTO `te_province` VALUES ('11', '青海');
INSERT INTO `te_province` VALUES ('12', '甘肃');
INSERT INTO `te_province` VALUES ('13', '陕西');
INSERT INTO `te_province` VALUES ('14', '河北');
INSERT INTO `te_province` VALUES ('15', '河南');
INSERT INTO `te_province` VALUES ('16', '山东');
INSERT INTO `te_province` VALUES ('17', '山西');
INSERT INTO `te_province` VALUES ('18', '湖北');
INSERT INTO `te_province` VALUES ('19', '湖南');
INSERT INTO `te_province` VALUES ('2', '上海');
INSERT INTO `te_province` VALUES ('20', '安徽');
INSERT INTO `te_province` VALUES ('21', '江苏');
INSERT INTO `te_province` VALUES ('22', ' 浙江');
INSERT INTO `te_province` VALUES ('23', '江西');
INSERT INTO `te_province` VALUES ('24', '广东');
INSERT INTO `te_province` VALUES ('25', '广西');
INSERT INTO `te_province` VALUES ('26', '福建');
INSERT INTO `te_province` VALUES ('27', '四川');
INSERT INTO `te_province` VALUES ('28', '云南');
INSERT INTO `te_province` VALUES ('29', '贵州');
INSERT INTO `te_province` VALUES ('3', '天津');
INSERT INTO `te_province` VALUES ('30', '西藏');
INSERT INTO `te_province` VALUES ('31', '海南');
INSERT INTO `te_province` VALUES ('32', '香港');
INSERT INTO `te_province` VALUES ('33', '澳门');
INSERT INTO `te_province` VALUES ('34', '台湾');
INSERT INTO `te_province` VALUES ('4', ' 重庆');
INSERT INTO `te_province` VALUES ('5', ' 黑龙江');
INSERT INTO `te_province` VALUES ('6', '吉林');
INSERT INTO `te_province` VALUES ('7', '辽宁');
INSERT INTO `te_province` VALUES ('8', '内蒙古');
INSERT INTO `te_province` VALUES ('9', '宁夏');

-- ----------------------------
-- Table structure for `te_scancode`
-- ----------------------------
DROP TABLE IF EXISTS `te_scancode`;
CREATE TABLE `te_scancode` (
  `SCANCODE_ID` varchar(100) NOT NULL,
  `TASKMANGER_ID` varchar(255) DEFAULT NULL COMMENT '任务id',
  `TASKNAME` varchar(255) DEFAULT NULL COMMENT '任务名称',
  `TASKFLAG` varchar(255) DEFAULT NULL COMMENT '任务类型',
  `SCANSALE` varchar(255) DEFAULT NULL COMMENT '扫码金额',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '扫码时间',
  `FLAG` varchar(255) DEFAULT NULL COMMENT '1成功2失效',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT 'shangjia',
  PRIMARY KEY (`SCANCODE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of te_scancode
-- ----------------------------
INSERT INTO `te_scancode` VALUES ('0356e041c22c4b139bd5513d5c927deb', '05347045908a4b20a68654fe8106c58b', '额企鹅去', '1', '1', '2017-05-02', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_scancode` VALUES ('1', '05347045908a4b20a68654fe8106c58b', '1', '1', '1', '2017-04-06', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_scancode` VALUES ('105fe57333744d5491fd2dd2908df232', '05543b1ce84b453bb7742526bc0aa907', '1212', '2', '2', '2017-05-04', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_scancode` VALUES ('1d754dd596a347a1860b231c70314ae9', '05543b1ce84b453bb7742526bc0aa907', '1212', '2', '2', '2017-05-02', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_scancode` VALUES ('2', '05347045908a4b20a68654fe8106c58b', '2', '2', '2', '2017-04-06', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_scancode` VALUES ('295ba299756c4fc28b60f477a30315bb', '05347045908a4b20a68654fe8106c58b', '额企鹅去', '1', '1', '2017-05-02', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_scancode` VALUES ('3', '05347045908a4b20a68654fe8106c58b', '3', '3', '3', '2017-04-07', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_scancode` VALUES ('35ac4612be2c41ba9065b251ecb27b1b', '05347045908a4b20a68654fe8106c58b', '额企鹅去', '1', '1', '2017-04-06', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_scancode` VALUES ('38b3c5563d004a95bf32093ab345eb6e', '6a4409fa92f84a3fb0757601c217e955', '厄齐尔', '1', '1', '2017-04-06', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_scancode` VALUES ('4', '05347045908a4b20a68654fe8106c58b', '4', '4', '4', '2017-04-07', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_scancode` VALUES ('5', '1312', '5', '5', '5', '2017-04-08', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_scancode` VALUES ('6', '1312', '6', '6', '6', '2017-04-08', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_scancode` VALUES ('651c8f99a6824fca85fd764e7458bc86', '05347045908a4b20a68654fe8106c58b', '额企鹅去', '1', '1', '2017-05-03', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_scancode` VALUES ('7', '1312', '7', '7', '7', '2017-04-09', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_scancode` VALUES ('8', '1312', '8', '8', '8', '2017-04-09', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_scancode` VALUES ('aa647b9851da4c49b93e3d8f819106d6', '05543b1ce84b453bb7742526bc0aa907', '1212', '2', '2', '2017-05-03', '1', 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `te_share`
-- ----------------------------
DROP TABLE IF EXISTS `te_share`;
CREATE TABLE `te_share` (
  `SHARE_ID` varchar(100) NOT NULL,
  `SHARENAME` varchar(255) DEFAULT NULL COMMENT '分享标题',
  `SHARENAMEIMG` varchar(255) DEFAULT NULL COMMENT '分享标题图',
  `SHARECONTENT` varchar(255) DEFAULT NULL COMMENT '分享内容',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT 'shangjia',
  PRIMARY KEY (`SHARE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of te_share
-- ----------------------------
INSERT INTO `te_share` VALUES ('0eac3a3ef8ca4c818968966fe179e419', '41213', 'upload/user/fa36a0406170441991d1c8351e7b53c1/c78dc419dc564e57879d32e151b40bc9.jpg', '12312312', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_share` VALUES ('17e1b24086c94092aaa12be171aa1ba0', 'ceshi', 'upload/user/ce68ade5791e4921be891c6f55901e59/b16ab09ed50d4075ae94d43642183771/cec4071b7809461fa5d0ab30d674d282.jpg', '1312313', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_share` VALUES ('28e4ebd83d154b08baea62a552f05c6b', '132123', 'upload/user/f7d336a1d8264147bdafef12ff6fbc0b/d01dc36cf23b4ce3b0ff187f7505f18e.jpg', '1312312', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_share` VALUES ('68ffd0f35c2c4829805265e07639baec', '41213', 'upload/user/9931a5c1968a4715aede101cc9781e66/d639641cad1b446dbb15da0555897c3a.jpg', '12312312', 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `te_taskmanger`
-- ----------------------------
DROP TABLE IF EXISTS `te_taskmanger`;
CREATE TABLE `te_taskmanger` (
  `TASKMANGER_ID` varchar(100) NOT NULL,
  `TASKNAME` varchar(255) DEFAULT NULL COMMENT '任务名称',
  `MSG_ID` varchar(255) DEFAULT NULL COMMENT '消息模板ID',
  `KEYWORD` varchar(255) DEFAULT NULL COMMENT '关键词',
  `TASK_TITLE_IMG` varchar(255) DEFAULT NULL COMMENT '任务标题',
  `TASK_CONTENT` varchar(255) DEFAULT NULL COMMENT '任务说明',
  `DELIVERY_TYPE` varchar(11) NOT NULL COMMENT '投放方式1:独立投放；2：平台投放',
  `RED_MONEY` varchar(11) NOT NULL COMMENT '任务奖励钱',
  `RED_NUM` varchar(11) NOT NULL COMMENT '红包数量',
  `TASK_JS` varchar(255) DEFAULT NULL COMMENT '任务简述',
  `FLAG` varchar(255) DEFAULT NULL COMMENT '状态1未投放2投放中3已关闭4已冻结5已下架6开启7解冻8上架',
  `TASKFLAG` varchar(255) DEFAULT NULL COMMENT '任务类型1关注2分享',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `SHARELJ` varchar(255) DEFAULT NULL COMMENT '分享链接',
  `FLAGZ` varchar(255) DEFAULT NULL COMMENT '1正常',
  `BUSINESSUSER_ID` varchar(255) DEFAULT NULL COMMENT 'shangjia',
  PRIMARY KEY (`TASKMANGER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of te_taskmanger
-- ----------------------------
INSERT INTO `te_taskmanger` VALUES ('05347045908a4b20a68654fe8106c58b', '额企鹅去', '1313', '1231', 'upload/user/bda2ef8703ca418ebc8688321f3b15e2/2a443cd001d541f6bb986febb30e5837.jpg', '1231<img src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/user/1491447993117172223.jpg\">', '2', '1', '4', '1312', '1', '1', '2017-04-06 11:06:54', null, '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_taskmanger` VALUES ('05543b1ce84b453bb7742526bc0aa907', '1212', null, null, 'upload/user/ce68ade5791e4921be891c6f55901e59/a1ae22cc0e8649f19d8e23af01ce9a48/eefba10db8584bb1870d200fa50eda74.jpg', '123123', '1', '2', '100', '13123', '1', '2', '2017-04-28 16:24:20', '32131', '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_taskmanger` VALUES ('1312', '发生的方式1', '123', '收费方式', 'upload/user/7c64c9c531244f298641157d69d7ed2e/9dd78af2641644809e463ba2e533489b.jpg', '1231<img src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/user/1491360709101154367.jpg\">', '2', '1', '20', '131', '3', '1', '2017-04-05 11:00:00', null, null, 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_taskmanger` VALUES ('33d137a5937346588440dac3990b8dc8', 'ceshi', '12', '12', 'upload/user/ce68ade5791e4921be891c6f55901e59/287cff6ed4ca4536a4390727cbe86317/3f75e308e6e64c358690fd353a018ba2.jpg', '32123123', '1', '2', '111', '1222231', '1', '1', '2017-04-28 16:19:22', null, '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_taskmanger` VALUES ('6a4409fa92f84a3fb0757601c217e955', '厄齐尔', '1313', '去恶趣味', 'upload/user/7860b528465b42fd9fd98287f3b8b3a8/2960d20b005043f4a1dccc094f8df075.jpg', '企鹅企鹅<img src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/user/1491447649332484605.jpg\">', '1', '1', '200', 'qeqwe', '1', '1', '2017-04-06 11:01:08', null, '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_taskmanger` VALUES ('7e72d00692d84ffe91e119374a66cbc5', '2313', '123123', '123123', 'upload/user/4be8a862fd81451ca73124fca4d73653/ab9387adda444bcba202ed3559ecdb8b.jpg', '12312312<img src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/user/1491377663832419881.jpg\">', '1', '1', '233', '132123', '1', '1', '2017-04-05 15:34:33', null, null, 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_taskmanger` VALUES ('96491fdedc6b4509ada1166684c3d46a', 'ceshi', '3131', 'dadqwqd', 'upload/user/a446fd0abfce453fa7011b6176fd9e18/89b09375758f444abafdfae39c5a2f30.jpg', '<img src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/user/1491377394073366815.jpg\">qdqwdqd', '2', '1', '200', 'dqwdqd', '1', '1', '2017-04-05 15:30:26', null, null, 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_taskmanger` VALUES ('a38ea043c2e74d53aed9fc4dd9e7350a', '32132', null, null, 'upload/user/01de09c0e60c414b813706d62197da20/df341fb88bbc4b5f8eac6c0de5622b7a.jpg', '123123<img src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/user/1491377831328508814.jpg\">', '1', '1', '232', '1312', '1', '2', '2017-04-05 15:37:18', '1312', null, 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_taskmanger` VALUES ('a90f05315d33437a9a357fae2174495a', '厄齐尔', '1313', '去恶趣味', 'upload/user/d2e18d3bcb7b4fe5b9c50d4c1203d358/69ba602b036e43289f5a99c941b83400.jpg', '企鹅企鹅<img src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/user/1491447649332484605.jpg\">', '1', '1', '200', 'qeqwe', '1', '1', '2017-04-06 11:02:53', null, '1', 'ce68ade5791e4921be891c6f55901e59');
INSERT INTO `te_taskmanger` VALUES ('fc87fba0dcb347efa05fa60c92794188', 'ceshi1', null, null, 'upload/user/7f47e45d279640469c3a6446a38673d4/f8236221243d4dd7bc460032150b8fde.jpg', 'asdasdad<img src=\"http://greencar.oss-cn-qingdao.aliyuncs.com/upload/user/1491377498577388709.jpg\">', '1', '1', '300', 'dadadas', '1', '2', '2017-04-05 15:31:51', 'www.baidu.com', null, 'ce68ade5791e4921be891c6f55901e59');

-- ----------------------------
-- Table structure for `te_transactionrecord`
-- ----------------------------
DROP TABLE IF EXISTS `te_transactionrecord`;
CREATE TABLE `te_transactionrecord` (
  `TRANSACTIONRECORD_ID` varchar(100) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL COMMENT '类型 0：充值  1：消费',
  `FUNDDETAILS` varchar(255) DEFAULT NULL COMMENT '资金明细',
  `AMOUNT` varchar(255) DEFAULT NULL COMMENT '交易金额',
  `BALANCE` varchar(255) DEFAULT NULL COMMENT '当时余额',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `AGENTMANGER_ID` varchar(255) DEFAULT NULL COMMENT '代理商ID',
  `FLAG` varchar(255) DEFAULT NULL COMMENT '0未付款 1正常 ',
  `DAYS` varchar(100) DEFAULT NULL COMMENT '有效天数',
  `BUSINESSPACKAGE_ID` varchar(100) DEFAULT NULL COMMENT '套餐ID',
  `BUSINESS_ID` varchar(100) DEFAULT NULL COMMENT '产品ID',
  `PAYTYPE` varchar(100) DEFAULT NULL COMMENT '充值类型 0：支付宝支付 1微信支付',
  `PAYNO` varchar(100) DEFAULT NULL COMMENT '支付订单号。如微信订单号，支付宝订单号',
  PRIMARY KEY (`TRANSACTIONRECORD_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of te_transactionrecord
-- ----------------------------
INSERT INTO `te_transactionrecord` VALUES ('0663235ba76042fb810164853d63c84c', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+0.01', '0.01', '2095.53', '2017-03-31 18:22:22', '1', '0', null, null, null, '0', null);
INSERT INTO `te_transactionrecord` VALUES ('0deb5c581ba64bc0b1868749e61210e9', '1', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+235', '111233', '231321.0', '2017-03-29 17:04:42', '1', '0', '333', '11', '123', '0', null);
INSERT INTO `te_transactionrecord` VALUES ('260c81af853e467a98ddb431df6a653d', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+0.01', '0.01', '2095.37', '2017-03-31 17:24:47', '1', '1', null, null, null, '0', '2017033121001004030250343463');
INSERT INTO `te_transactionrecord` VALUES ('2caaadd91c574b2fa55d458e89f9686b', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+0.1', '0.1', '2095.35', '2017-03-31 15:30:59', '1', '0', null, null, null, '0', null);
INSERT INTO `te_transactionrecord` VALUES ('33e4a9996f5346ba8e57ab4b1cac81d3', '1', '购买套餐1&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:red;\">-600.0', '600.0', '1971.25', '2017-03-31 13:12:46', '1', '1', null, null, null, null, null);
INSERT INTO `te_transactionrecord` VALUES ('3a2233f6b32b4481a588b23e3cbd3c08', '1', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+1245.25', '1245.25', '4480.25', '2017-03-29 17:06:15', '1', '1', '3231', '2', '234', '1', null);
INSERT INTO `te_transactionrecord` VALUES ('3cb5ce53a70040ebb9bc21ba23803027', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+0.01', '0.01', '2095.47', '2017-03-31 18:03:09', '1', '1', null, null, null, '0', '2017033121001004030250398562');
INSERT INTO `te_transactionrecord` VALUES ('4350c5451aa64e2cb1fb17bd6dfa59ed', '1', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+201', '201', '4806.25', '2017-03-29 17:12:32', '1', '0', '231', '1', '567', '1', null);
INSERT INTO `te_transactionrecord` VALUES ('4c3b159e6adf48fe9ad8cb2a6d7d15b7', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+185', '185', '5473.25', '2017-03-30 10:04:55', '1', '1', null, null, null, '0', null);
INSERT INTO `te_transactionrecord` VALUES ('58647f02b2fe4ebdb749f386f907056e', '1', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+125', '125', '4605.25', '2017-03-29 17:08:45', '1', '1', '2132', '3', '123', '0', null);
INSERT INTO `te_transactionrecord` VALUES ('5b13830f25c043f5a314ecaf41d1f3a2', '1', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+235', '235', '3235.0', '2017-03-29 17:04:42', '1', '1', '232', '4', '234', '1', null);
INSERT INTO `te_transactionrecord` VALUES ('5e2799a234554040af1b822a58a9777d', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+156', '156', '5629.25', '2017-03-30 10:06:27', '1', '1', null, null, null, '0', null);
INSERT INTO `te_transactionrecord` VALUES ('5e64933056ec45429f8c0e16287ad20c', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+50', '50', '5167.25', '2017-03-30 10:00:36', '1', '0', null, null, null, '1', null);
INSERT INTO `te_transactionrecord` VALUES ('62d067db423845df9d1263111cb802a0', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+100', '100', '5940.25', '2017-03-30 10:15:57', '1', '1', null, null, null, '0', null);
INSERT INTO `te_transactionrecord` VALUES ('670c76649274447b95dcf8548949d78e', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+125', '125', '4605.25', '2017-03-29 17:08:45', '1', '0', null, null, null, '1', null);
INSERT INTO `te_transactionrecord` VALUES ('6aae794e30a24c30bfa23c8a9ec53c60', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+0.01', '0.01', '2095.53', '2017-04-25 11:12:17', '1', '0', null, null, null, '1', null);
INSERT INTO `te_transactionrecord` VALUES ('7ac2eb148d5740c2a3bba7ab09542fde', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+0.01', '0.01', '2095.37', '2017-03-31 17:04:30', '1', '0', null, null, null, '0', null);
INSERT INTO `te_transactionrecord` VALUES ('87b4b027690249eca6fdc2892669ae38', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+0.01', '0.01', '2095.53', '2017-03-31 18:20:32', '1', '0', null, null, null, '0', null);
INSERT INTO `te_transactionrecord` VALUES ('8b62dbb58be14c6396c292defc7374c8', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+0.01', '0.01', '2095.41', '2017-03-31 17:32:55', '1', '1', null, null, null, '0', '2017033121001004030250352867');
INSERT INTO `te_transactionrecord` VALUES ('8ca8b4d1af4246f3bae5c3ee2fbb1d4a', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+1', '1', '2096.52', '2017-04-25 11:21:26', '1', '0', null, null, null, '1', null);
INSERT INTO `te_transactionrecord` VALUES ('91fe3fb94d88499b93449827fb6d32d9', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+0.01', '0.01', '2095.53', '2017-04-25 11:20:45', '1', '0', null, null, null, '1', null);
INSERT INTO `te_transactionrecord` VALUES ('97f22d163be04b3e9b0bf8b90d995de7', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+111', '111', '6051.25', '2017-03-30 10:16:15', '1', '1', null, null, null, '1', null);
INSERT INTO `te_transactionrecord` VALUES ('9eecdc6661b843b4800d1b2ae38ed11c', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+20', '20', '6171.25', '2017-03-30 10:28:40', '1', '1', null, null, null, '1', null);
INSERT INTO `te_transactionrecord` VALUES ('b182de54d4f14cbab764036af3fc4399', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+0.1', '0.1', '2095.62', '2017-04-25 10:50:32', '1', '0', null, null, null, '0', null);
INSERT INTO `te_transactionrecord` VALUES ('b5136edf6d2f4e6ca72a77cbd24170a5', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+0.01', '0.01', '2095.36', '2017-03-31 15:46:43', '1', '1', null, null, null, '0', '2017033121001004030250199873');
INSERT INTO `te_transactionrecord` VALUES ('b894842ee0bb4e84b992ad6c396879f3', '1', '购买套餐1&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:red;\">-1200.0', '1200.0', '2571.25', '2017-03-30 16:10:26', '1', '1', null, null, null, null, null);
INSERT INTO `te_transactionrecord` VALUES ('cb37e83e63524fb9b2ae2def1b27c2dc', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+100', '100', '5840.25', '2017-03-30 10:15:02', '1', '0', null, null, null, '0', null);
INSERT INTO `te_transactionrecord` VALUES ('cd2b676ee2924558a6ec72a91c5ddab8', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+0.01', '0.01', '2095.53', '2017-04-25 10:50:48', '1', '0', null, null, null, '1', null);
INSERT INTO `te_transactionrecord` VALUES ('d5949b6260904d5e9868acf132f93ca9', '1', '购买套餐1&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:red;\">-1200.0', '1200.0', '4971.25', '2017-03-30 15:56:49', '1', '1', null, null, null, null, null);
INSERT INTO `te_transactionrecord` VALUES ('d5b0822218a24f158cd558739b62b071', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+235', '235', '3235.0', '2017-03-29 17:04:42', '1', '1', null, null, null, '1', null);
INSERT INTO `te_transactionrecord` VALUES ('d9e0650814a443a5b941e5eca2ed0e73', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+0.1', '0.1', '2095.35', '2017-03-31 15:33:43', '1', '1', null, null, null, '0', '2017033121001004030250177110');
INSERT INTO `te_transactionrecord` VALUES ('daf5305d386b4b1fb0274ebdf8565225', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+111', '111', '5740.25', '2017-03-30 10:11:29', '1', '0', null, null, null, '0', null);
INSERT INTO `te_transactionrecord` VALUES ('e36c7f6b899f47949c6597e8b545177b', '1', '购买套餐1&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:red;\">-1200.0', '1200.0', '3771.25', '2017-03-30 16:05:53', '1', '1', null, null, null, null, null);
INSERT INTO `te_transactionrecord` VALUES ('e8a664d0af8e4756a847efd4c6b131da', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+0.01', '0.01', '2095.39', '2017-03-31 17:28:59', '1', '1', null, null, null, '0', '2017033121001004030250343986');
INSERT INTO `te_transactionrecord` VALUES ('ed6d3040916841868b7e5a1be3a4845f', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+100', '100', '6151.25', '2017-03-30 10:26:03', '1', '1', null, null, null, '1', null);
INSERT INTO `te_transactionrecord` VALUES ('f2e7011e3c7b4d73b03b00f817e6f375', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+0.01', '0.01', '2095.53', '2017-03-31 18:17:56', '1', '0', null, null, null, '0', null);
INSERT INTO `te_transactionrecord` VALUES ('f38a730cebf44583a3ef5afd33064c08', '0', '账户充值&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:green;\">+124', '124', '2095.25', '2017-03-31 13:19:29', '1', '1', null, null, null, '0', null);

-- ----------------------------
-- Table structure for `tmp_returnstock`
-- ----------------------------
DROP TABLE IF EXISTS `tmp_returnstock`;
CREATE TABLE `tmp_returnstock` (
  `COMMODITYSPECIFICATION_ID` varchar(100) DEFAULT NULL COMMENT '商品规格ID',
  `STOCK` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_returnstock
-- ----------------------------

-- ----------------------------
-- Table structure for `weixin_command`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_command`;
CREATE TABLE `weixin_command` (
  `COMMAND_ID` varchar(100) NOT NULL,
  `KEYWORD` varchar(255) DEFAULT NULL COMMENT '关键词',
  `COMMANDCODE` varchar(255) DEFAULT NULL COMMENT '应用路径',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `STATUS` int(1) NOT NULL COMMENT '状态',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`COMMAND_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_command
-- ----------------------------
INSERT INTO `weixin_command` VALUES ('2636750f6978451b8330874c9be042c2', '锁定服务器', 'rundll32.exe user32.dll,LockWorkStation', '2015-05-10 21:25:06', '1', '锁定计算机');
INSERT INTO `weixin_command` VALUES ('46217c6d44354010823241ef484f7214', '打开浏览器', 'C:/Program Files/Internet Explorer/iexplore.exe', '2015-05-09 02:43:02', '1', '打开浏览器操作');
INSERT INTO `weixin_command` VALUES ('576adcecce504bf3bb34c6b4da79a177', '关闭浏览器', 'taskkill /f /im iexplore.exe', '2015-05-09 02:36:48', '1', '关闭浏览器操作');
INSERT INTO `weixin_command` VALUES ('854a157c6d99499493f4cc303674c01f', '关闭QQ', 'taskkill /f /im qq.exe', '2015-05-10 21:25:46', '1', '关闭QQ');
INSERT INTO `weixin_command` VALUES ('ab3a8c6310ca4dc8b803ecc547e55ae7', '打开QQ', 'D:/SOFT/QQ/QQ/Bin/qq.exe', '2015-05-10 21:25:25', '1', '打开QQ');

-- ----------------------------
-- Table structure for `weixin_imgmsg`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_imgmsg`;
CREATE TABLE `weixin_imgmsg` (
  `IMGMSG_ID` varchar(100) NOT NULL,
  `KEYWORD` varchar(255) DEFAULT NULL COMMENT '关键词',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `STATUS` int(11) NOT NULL COMMENT '状态',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `TITLE1` varchar(255) DEFAULT NULL COMMENT '标题1',
  `DESCRIPTION1` varchar(255) DEFAULT NULL COMMENT '描述1',
  `IMGURL1` varchar(255) DEFAULT NULL COMMENT '图片地址1',
  `TOURL1` varchar(255) DEFAULT NULL COMMENT '超链接1',
  `TITLE2` varchar(255) DEFAULT NULL COMMENT '标题2',
  `DESCRIPTION2` varchar(255) DEFAULT NULL COMMENT '描述2',
  `IMGURL2` varchar(255) DEFAULT NULL COMMENT '图片地址2',
  `TOURL2` varchar(255) DEFAULT NULL COMMENT '超链接2',
  `TITLE3` varchar(255) DEFAULT NULL COMMENT '标题3',
  `DESCRIPTION3` varchar(255) DEFAULT NULL COMMENT '描述3',
  `IMGURL3` varchar(255) DEFAULT NULL COMMENT '图片地址3',
  `TOURL3` varchar(255) DEFAULT NULL COMMENT '超链接3',
  `TITLE4` varchar(255) DEFAULT NULL COMMENT '标题4',
  `DESCRIPTION4` varchar(255) DEFAULT NULL COMMENT '描述4',
  `IMGURL4` varchar(255) DEFAULT NULL COMMENT '图片地址4',
  `TOURL4` varchar(255) DEFAULT NULL COMMENT '超链接4',
  `TITLE5` varchar(255) DEFAULT NULL COMMENT '标题5',
  `DESCRIPTION5` varchar(255) DEFAULT NULL COMMENT '描述5',
  `IMGURL5` varchar(255) DEFAULT NULL COMMENT '图片地址5',
  `TOURL5` varchar(255) DEFAULT NULL COMMENT '超链接5',
  `TITLE6` varchar(255) DEFAULT NULL COMMENT '标题6',
  `DESCRIPTION6` varchar(255) DEFAULT NULL COMMENT '描述6',
  `IMGURL6` varchar(255) DEFAULT NULL COMMENT '图片地址6',
  `TOURL6` varchar(255) DEFAULT NULL COMMENT '超链接6',
  `TITLE7` varchar(255) DEFAULT NULL COMMENT '标题7',
  `DESCRIPTION7` varchar(255) DEFAULT NULL COMMENT '描述7',
  `IMGURL7` varchar(255) DEFAULT NULL COMMENT '图片地址7',
  `TOURL7` varchar(255) DEFAULT NULL COMMENT '超链接7',
  `TITLE8` varchar(255) DEFAULT NULL COMMENT '标题8',
  `DESCRIPTION8` varchar(255) DEFAULT NULL COMMENT '描述8',
  `IMGURL8` varchar(255) DEFAULT NULL COMMENT '图片地址8',
  `TOURL8` varchar(255) DEFAULT NULL COMMENT '超链接8',
  PRIMARY KEY (`IMGMSG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_imgmsg
-- ----------------------------
INSERT INTO `weixin_imgmsg` VALUES ('380b2cb1f4954315b0e20618f7b5bd8f', '首页', '2015-05-10 20:51:09', '1', '图文回复', '图文回复标题', '图文回复描述', 'http://a.hiphotos.baidu.com/image/h%3D360/sign=c6c7e73ebc389b5027ffe654b535e5f1/a686c9177f3e6709392bb8df3ec79f3df8dc55e3.jpg', 'www.baidu.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `weixin_textmsg`
-- ----------------------------
DROP TABLE IF EXISTS `weixin_textmsg`;
CREATE TABLE `weixin_textmsg` (
  `TEXTMSG_ID` varchar(100) NOT NULL,
  `KEYWORD` varchar(255) DEFAULT NULL COMMENT '关键词',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '内容',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `STATUS` int(11) DEFAULT NULL COMMENT '状态',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`TEXTMSG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_textmsg
-- ----------------------------
INSERT INTO `weixin_textmsg` VALUES ('303c190498a045bdbba4c940c2f0d9f9', '1ss', '1ssddd', '2015-05-18 20:17:02', '1', '1ssdddsd');
INSERT INTO `weixin_textmsg` VALUES ('63681adbe7144f10b66d6863e07f23c2', '你好', '你也好', '2015-05-09 02:39:23', '1', '文本回复');
INSERT INTO `weixin_textmsg` VALUES ('695cd74779734231928a253107ab0eeb', '吃饭', '吃了噢噢噢噢', '2015-05-10 22:52:27', '1', '文本回复');
INSERT INTO `weixin_textmsg` VALUES ('d4738af7aea74a6ca1a5fb25a98f9acb', '关注', '关注', '2015-05-11 02:12:36', '1', '关注回复');

-- ----------------------------
-- Event structure for `escOrder`
-- ----------------------------
DROP EVENT IF EXISTS `escOrder`;
DELIMITER ;;
CREATE DEFINER=`root`@`%.%.%.%` EVENT `escOrder` ON SCHEDULE EVERY 2 HOUR STARTS '2017-03-16 11:10:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN

#下单未付款半小时自动取消订单  并且把下单的商品数量还回去 创建临时表装下单未付款的商品数量和规格ID
DROP TABLE IF EXISTS tmp_returnstock;
CREATE TABLE tmp_returnstock
(
COMMODITYSPECIFICATION_ID VARCHAR(100),
STOCK INT(10)
)
SELECT b.COMMODITYSPECIFICATION_ID,(SUM(b.NUMBER)+c.STOCK) as STOCK  from tb_order a
 LEFT JOIN tb_ordercommodity b on a.ORDER_ID=b.ORDERID  
LEFT JOIN tb_commodityspecification c ON b.COMMODITYSPECIFICATION_ID=c.COMMODITYSPECIFICATION_ID
 where a.ORDERTYPE=0 and date_add(a.CREATEtime, interval 24 HOUR)<=NOW()  and b.COMMODITYSPECIFICATION_ID is not null and b.NUMBER is not null 
GROUP BY b.COMMODITYSPECIFICATION_ID;
UPDATE tb_commodityspecification a set a.STOCK=ifNULL((SELECT b.STOCK FROM tmp_returnstock b WHERE a.COMMODITYSPECIFICATION_ID=b.COMMODITYSPECIFICATION_ID),a.STOCK) ;


	UPDATE  tb_order SET ORDERTYPE=1 where  date_add(CREATEtime, interval 24 HOUR)<=NOW() and ORDERTYPE=0;
  END
;;
DELIMITER ;
