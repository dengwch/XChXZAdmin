CREATE TABLE `tb_shop` (
  `SHOP_ID` varchar(100) NOT NULL,
  `SHOPNAME` varchar(100) default NULL COMMENT '商场名称',
  `SHOPNUM` varchar(100) default NULL COMMENT '商场层数',
  `SHOPADDRESS` varchar(100) default NULL COMMENT '商场地址',
  `SHOPLOGO` varchar(255) default NULL COMMENT '商场logo',
  `SHOPBUS` varchar(255) default NULL COMMENT '包含商家',
  `RZTIME` varchar(255) default NULL COMMENT '入驻时间',
  `CREATIME` varchar(255) default NULL COMMENT '创建时间',
  `STATUS` varchar(255) default NULL COMMENT '状态',
  `ACTIVITY` varchar(255) default NULL COMMENT '活动',
  PRIMARY KEY  (`SHOP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER table tb_classification ADD TYPE varchar(255) default NULL COMMENT '种类';