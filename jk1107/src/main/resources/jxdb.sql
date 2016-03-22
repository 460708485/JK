/*
Navicat MySQL Data Transfer

Source Server         : wang
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : jxdb

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2016-03-22 15:30:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `access_log_p`
-- ----------------------------
DROP TABLE IF EXISTS `access_log_p`;
CREATE TABLE `access_log_p` (
  `ACCESS_LOG_ID` varchar(40) NOT NULL,
  `DEPT_NAME` varchar(100) DEFAULT NULL,
  `USER_NAME` varchar(40) DEFAULT NULL,
  `MODULE_NAME` varchar(200) DEFAULT NULL,
  `CURL` varchar(400) DEFAULT NULL,
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ACCESS_LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of access_log_p
-- ----------------------------

-- ----------------------------
-- Table structure for `business_position_p`
-- ----------------------------
DROP TABLE IF EXISTS `business_position_p`;
CREATE TABLE `business_position_p` (
  `BUSINESS_POSITION_ID` varchar(40) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `RESPONSIBILITY` varchar(500) DEFAULT NULL,
  `IS_USE` char(1) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  PRIMARY KEY (`BUSINESS_POSITION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of business_position_p
-- ----------------------------

-- ----------------------------
-- Table structure for `class_code_c`
-- ----------------------------
DROP TABLE IF EXISTS `class_code_c`;
CREATE TABLE `class_code_c` (
  `CLASS_CODE_ID` varchar(40) NOT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CLASS_CODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_code_c
-- ----------------------------
INSERT INTO `class_code_c` VALUES ('0103', '厂家分类');
INSERT INTO `class_code_c` VALUES ('402880e73f08539f013f085543b60002', '附件分类');
INSERT INTO `class_code_c` VALUES ('402880e73f08539f013f08558b8d0004', '用户级别');

-- ----------------------------
-- Table structure for `contract_c`
-- ----------------------------
DROP TABLE IF EXISTS `contract_c`;
CREATE TABLE `contract_c` (
  `CONTRACT_ID` varchar(40) NOT NULL,
  `OFFEROR` varchar(200) DEFAULT NULL,
  `CONTRACT_NO` varchar(20) DEFAULT NULL,
  `SIGNING_DATE` datetime DEFAULT NULL,
  `INPUT_BY` varchar(30) DEFAULT NULL,
  `CHECK_BY` varchar(30) DEFAULT NULL,
  `INSPECTOR` varchar(30) DEFAULT NULL,
  `TOTAL_AMOUNT` decimal(10,2) DEFAULT NULL,
  `REQUEST` varchar(500) DEFAULT NULL,
  `CUSTOM_NAME` varchar(200) DEFAULT NULL,
  `SHIP_TIME` datetime DEFAULT NULL,
  `IMPORT_NUM` int(11) DEFAULT NULL COMMENT '打印时标识几个星,对应说明中的内容',
  `DELIVERY_PERIOD` datetime DEFAULT NULL,
  `REMARK` varchar(600) DEFAULT NULL,
  `PRINT_STYLE` char(1) DEFAULT NULL COMMENT '宽2:一页两个货物  窄1:一页一个货物',
  `OLD_STATE` int(11) DEFAULT NULL COMMENT '归档前状态, 方便回退',
  `STATE` int(11) DEFAULT NULL COMMENT '0草稿 1已上报待报运\n            \n            归档后, 其他选择合同的地方均去除.\n            表示合同已完成, 不论是否合同的货物是否全部真的走完, 因为有赔付等其他情况',
  `OUT_STATE` int(11) DEFAULT NULL COMMENT '0未走货 1部分 2全部\n            \n            归档后, 其他选择合同的地方均去除.\n            表示合同已完成, 不论是否合同的货物是否全部真的走完, 因为有赔付等其他情况',
  `TRADE_TERMS` varchar(30) DEFAULT NULL,
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `CREATE_DEPT` varchar(40) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`CONTRACT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contract_c
-- ----------------------------
INSERT INTO `contract_c` VALUES ('4028817a3357462e0133591b86ec0002', '陕西杰信商务发展有限公司', 'C/3817/11', '2011-10-31 00:00:00', '杨丽', '', '吕晓波', '10800.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生成前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年12月15日/工厂,没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'BEAKIE LEE', '2011-12-30 00:00:00', '1', '2011-12-15 00:00:00', '', '2', null, '1', null, null, 'ff80808131301abf0131303fe2e40038', '0001002', '2011-11-01 10:40:26');
INSERT INTO `contract_c` VALUES ('4028817a3357462e01336cc0877b0010', '陕西杰信商务发展有限公司', '11JK1080', '2011-11-04 00:00:00', '杨丽', '', '吕晓波', '2318.40', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生成前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年12月10日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', '', '2011-12-20 00:00:00', '3', '2011-12-10 00:00:00', '待样品确认后方可安排生产', '1', null, '1', null, null, 'ff80808131301abf0131303fe2e40038', '0001002', '2011-11-04 16:50:21');
INSERT INTO `contract_c` VALUES ('4028817a3357462e01336d3a0be10014', '陕西杰信商务发展有限公司', '11JK1078', '2011-11-04 00:00:00', '杨丽', '', '李春光', '54120.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生成前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年11月15日/工厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', '', '2011-12-30 00:00:00', '3', '2011-11-15 00:00:00', '', '2', null, '1', null, null, 'ff80808131301abf0131303fe2e40038', '0001002', '2011-11-04 14:38:54');
INSERT INTO `contract_c` VALUES ('4028817a3357462e01336d523195001a', '陕西杰信商务发展有限公司', 'C/3847/11', '2011-12-02 00:00:00', '杨丽', '', '李春光', '39240.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生成前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。\r\n 交期：2011年12月15日/工厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'HOME', '2011-12-25 00:00:00', '3', '2011-12-15 00:00:00', '', '2', null, '1', null, '', 'ff80808131301abf0131303fe2e40038', '0001002', '2012-02-01 12:18:47');
INSERT INTO `contract_c` VALUES ('4028817a33812ffd0133813f25940001', '陕西杰信商务发展有限公司', 'C/3861/11', '2011-11-08 00:00:00', '杨丽', '', '吕晓波', '165378.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 包装：产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口；\r\n 交期：2012年1月10日/工厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'HOME', '2012-01-25 00:00:00', '3', '2012-01-10 00:00:00', '', '2', null, '1', null, null, 'ff80808131301abf0131303fe2e40038', '0001002', '2012-01-04 14:22:12');
INSERT INTO `contract_c` VALUES ('4028817a33812ffd013382048ff80024', '陕西杰信商务发展有限公司', '11JK1082', '2011-11-08 00:00:00', '杨丽', '', '李春光', '40200.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生成前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 包装：产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口；\r\n 交期：2011年12月30日/工厂。  \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'MSA', '2012-01-15 00:00:00', '3', '2011-12-30 00:00:00', '', '2', null, '1', null, null, 'ff80808131301abf0131303fe2e40038', '0001002', '2011-11-08 17:25:18');
INSERT INTO `contract_c` VALUES ('4028817a33812ffd0133821a8eb5002b', '陕西杰信商务发展有限公司', '11JK1084', '2011-11-08 00:00:00', '杨丽', '', '李春光', '10936.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生成前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年12月20日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'ONE WORLD', '2011-12-30 00:00:00', '3', '2011-12-20 00:00:00', '', '2', null, '1', null, null, 'ff80808131301abf0131303fe2e40038', '0001002', '2011-12-01 16:58:54');
INSERT INTO `contract_c` VALUES ('4028817a33d4f8b40133d9878e88000d', '陕西杰信商务发展有限公司', '11JK1070', '2011-10-20 00:00:00', '杨丽', '', '', '55789.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生成前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年11月5日/工厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', '', '2011-12-20 00:00:00', '3', '2011-11-05 00:00:00', '', '2', null, '1', null, null, 'ff80808131301abf0131303fe2e40038', '0001002', '2011-11-25 15:01:39');
INSERT INTO `contract_c` VALUES ('4028817a33d4f8b40133d991a50d0019', '陕西杰信商务发展有限公司', '11JK1066', '2011-11-25 00:00:00', '杨丽', '', '李春光', '146184.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生成前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年12月5日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', '', '2011-12-20 00:00:00', '3', '2011-12-05 00:00:00', '待样品确认后方可安排生产', '2', null, '0', null, null, 'ff80808131301abf0131303fe2e40038', '0001002', '2011-11-25 16:01:28');
INSERT INTO `contract_c` VALUES ('4028817a33d4f8b40133d9bea39b002f', '陕西杰信商务发展有限公司', '11JK1060', '2011-11-25 00:00:00', '杨丽', '', '', '152072.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生成前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年12月15日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'COACH HOUSE', '2011-12-30 00:00:00', '3', '2011-12-15 00:00:00', '', '2', null, '0', null, null, 'ff80808131301abf0131303fe2e40038', '0001002', '2011-12-02 11:41:10');
INSERT INTO `contract_c` VALUES ('4028817a33fc4e280133fd81e7d7001d', '陕西杰信商务发展有限公司', '11JK1068', '2011-10-14 00:00:00', '杨丽', '', '', '102711.80', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年12月15日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'ELAD', '2011-12-30 00:00:00', '3', '2011-12-15 00:00:00', '', '2', null, '0', null, null, 'ff80808131301abf0131303fe2e40038', '0001002', '2011-12-02 14:52:22');
INSERT INTO `contract_c` VALUES ('4028817a33fc4e280133fd9f8b4e002f', '陕西杰信商务发展有限公司', '11JK1072', '2011-10-20 00:00:00', '杨丽', '', '', '99918.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年12月15日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'BRISSI', '2011-12-30 00:00:00', '3', '2011-12-15 00:00:00', '', '2', null, '0', null, null, 'ff80808131301abf0131303fe2e40038', '0001002', '2011-12-02 16:31:28');
INSERT INTO `contract_c` VALUES ('4028817a3420e78a013421a693730001', '陕西杰信商务发展有限公司', 'C/4040/11', '2011-12-09 00:00:00', '杨丽', '', '李春光', '114640.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'HOME', '2012-02-25 00:00:00', '1', '2012-02-15 00:00:00', '', '2', null, '1', null, null, 'ff80808131301abf0131303fe2e40038', '0001002', '2011-12-09 16:16:29');
INSERT INTO `contract_c` VALUES ('4028817a353b8d8e01353d15008d0046', '陕西杰信商务发展有限公司', 'C/4104/11', '2012-02-02 00:00:00', '杨丽', '', '', '37749.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'HOME', '2012-02-25 00:00:00', '3', '2012-02-15 00:00:00', '', '2', null, '1', '0', 'T/T', 'ff80808131301abf0131303fe2e40038', '0001002', '2012-02-02 17:04:16');

-- ----------------------------
-- Table structure for `contract_product_c`
-- ----------------------------
DROP TABLE IF EXISTS `contract_product_c`;
CREATE TABLE `contract_product_c` (
  `CONTRACT_PRODUCT_ID` varchar(40) NOT NULL,
  `CONTRACT_ID` varchar(40) DEFAULT NULL,
  `FACTORY_ID` varchar(40) DEFAULT NULL,
  `EXPORT_LIST_ID` varchar(40) DEFAULT NULL,
  `INVOICE_ID` varchar(40) DEFAULT NULL,
  `PRODUCT_NAME` varchar(200) DEFAULT NULL,
  `PRODUCT_NO` varchar(50) DEFAULT NULL,
  `PRODUCT_IMAGE` varchar(200) DEFAULT NULL,
  `PRODUCT_DESC` varchar(600) DEFAULT NULL,
  `LOADING_RATE` varchar(30) DEFAULT NULL COMMENT 'x/y',
  `PACKING_UNIT` varchar(10) DEFAULT NULL COMMENT 'PCS/SETS',
  `CNUMBER` int(11) DEFAULT NULL,
  `OUT_NUMBER` int(11) DEFAULT NULL,
  `FINISHED` bit(1) DEFAULT NULL,
  `GROSS_WEIGHT` decimal(10,2) DEFAULT NULL,
  `NET_WEIGHT` decimal(10,2) DEFAULT NULL,
  `CSIZE` varchar(20) DEFAULT NULL,
  `SIZE_LENGTH` decimal(10,2) DEFAULT NULL,
  `SIZE_WIDTH` decimal(10,2) DEFAULT NULL,
  `SIZE_HEIGHT` decimal(10,2) DEFAULT NULL,
  `PRODUCT_REQUEST` varchar(2000) DEFAULT NULL,
  `FACTORY` varchar(200) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `AMOUNT` decimal(10,2) DEFAULT NULL COMMENT '自动计算: 数量x单价',
  `CUNIT` varchar(10) DEFAULT NULL,
  `BOX_NUM` int(11) DEFAULT NULL,
  `EX_PRICE` decimal(10,2) DEFAULT NULL,
  `EX_AMOUNT` decimal(10,2) DEFAULT NULL,
  `EX_UNIT` varchar(10) DEFAULT NULL COMMENT '$/￥',
  `NO_TAX` decimal(10,2) DEFAULT NULL COMMENT '收购单价',
  `TAX` decimal(10,2) DEFAULT NULL COMMENT '收购单价',
  `COST_PRICE` decimal(10,2) DEFAULT NULL COMMENT '自动计算=数量x含税/1.17标准值',
  `COST_TAX` decimal(10,2) DEFAULT NULL COMMENT '自动计算=数量x含税-收购成本金额',
  `ACCESSORIES` bit(1) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  PRIMARY KEY (`CONTRACT_PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contract_product_c
-- ----------------------------
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e0133591b86ec0003', '4028817a3357462e0133591b86ec0002', '2', null, null, null, '2965', '2ba24918-4c3c-4632-8d8a-9d475d5e4d2d.png', '全明料糖缸带盖子\r\n尺寸：16X40CM高  底径：11CM\r\n重量不低于1500克/只\r\n1只/上下保利龙盖/彩盒   6只/大箱', '1/6', 'PCS', '144', '0', '', null, null, null, null, null, null, null, null, '17.00', '2448.00', null, '24', null, null, null, null, null, null, null, '', '2');
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e0133591b86ec0004', '4028817a3357462e0133591b86ec0002', '2', null, null, null, '2964', 'ad25929a-27f5-4065-bb9f-6d4788d395ee.png', '全明料糖缸带盖子\r\n尺寸：19X48CM高  底径：13.5CM\r\n重量不低于1600克/只\r\n1只/上下保利龙盖/彩盒    4只/大箱', '1/4', 'PCS', '144', '0', '', null, null, null, null, null, null, null, null, '24.00', '3456.00', null, '36', null, null, null, null, null, null, null, '', '1');
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e0133592355750005', '4028817a3357462e0133591b86ec0002', '2', null, null, null, '2977', 'b5480a29-da8c-41e1-b91c-54a9fdb15834.png', '全明料圆肚糖缸带盖子\r\n尺寸：16X36CM高    底径：12CM\r\n最大径：22CM    重量不低于1200克/只\r\n1只/上下保利龙盖/彩盒     2只/大箱', '1/2', 'PCS', '144', '0', '', null, null, null, null, null, null, null, null, '17.00', '2448.00', null, '72', null, null, null, null, null, null, null, '', '4');
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e0133592355750006', '4028817a3357462e0133591b86ec0002', '2', null, null, null, '2976', 'af417c8a-e44f-406e-b226-194d8a61df75.png', '全明料糖缸带盖子\r\n尺寸：17.5X41CM高   底径：13CM\r\n重量不低于1800克/只\r\n1只/上下保利龙盖/彩盒     4只/大箱', '1/4', 'PCS', '144', '0', '', null, null, null, null, null, null, null, null, '17.00', '2448.00', null, '36', null, null, null, null, null, null, null, '', '3');
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336cc0879b0011', '4028817a3357462e01336cc0877b0010', '3', null, null, null, 'JK1700011', '05702b8f-6bda-4bca-9c4d-f15c18f279eb.png', '全明料方形黄油缸\r\n尺寸：罩子：7.3X8CM高   盘：6X5CM\r\n1只/内盒       6只/中盒       24只/大箱', '24', 'SETS', '504', '0', '', null, null, null, null, null, null, null, null, '4.60', '2318.40', null, '21', null, null, null, null, null, null, null, '', '1');
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d3a0be10015', '4028817a3357462e01336d3a0be10014', '7', null, null, null, 'JK1014003', '699176d9-c242-42d2-8661-9ce712bba97a.png', '全明料盘子，烤鱼白花纸\r\n盘子直径：27CM\r\n2只/五层内盒        16只/大箱\r\n花纸我司提供', '2/16', 'PCS', '1200', '0', '', null, null, null, null, null, null, null, null, '7.50', '9000.00', null, '75', null, null, null, null, null, null, null, '', '3');
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d3a0be10016', '4028817a3357462e01336d3a0be10014', '1', null, null, null, 'JK1014001', 'a2ffd39f-18d5-4a6b-89a2-bc91df4926f5.png', '全明料大碗，烤鱼白花纸\r\n尺寸：23X11CM高\r\n1只/五层内盒                4只/大箱\r\n花纸我司提供', '1/4', 'PCS', '1000', '0', '', null, null, null, null, null, null, null, null, '16.50', '16500.00', null, '250', null, null, null, null, null, null, null, '', '2');
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d3a0be10017', '4028817a3357462e01336d3a0be10014', '1', null, null, null, 'JK1014006', 'edc6f494-cc9f-41f2-a04c-edff659df1af.png', '全明料低口杯，烤6种白花纸\r\n尺寸：7.3X10.5CM高\r\n6只/五层内盒         24只/大箱\r\n6种花纸内盒中混装，白花纸我司供', '6/24', 'PCS', '1800', '0', '', null, null, null, null, null, null, null, null, '5.30', '9540.00', null, '75', null, null, null, null, null, null, null, '', '5');
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d3a0be10018', '4028817a3357462e01336d3a0be10014', '1', null, null, null, 'JK1014005', '9ed4ab1e-d425-4b8d-beb3-1fa6dc63d1df.png', '全明料低口杯，烤鱼白花纸\r\n尺寸：7.3X10.5CM高\r\n4只/五层内盒       24只/大箱\r\n花纸我司提供', '4/24', 'PCS', '1800', '0', '', null, null, null, null, null, null, null, null, '5.30', '9540.00', null, '75', null, null, null, null, null, null, null, '', '4');
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d3a0be10019', '4028817a3357462e01336d3a0be10014', '1', null, null, null, 'JK1080766-3', '21b5e24a-a58a-4a58-a705-1595faeec581.png', '全明料低口杯，烤3种不同的白花纸\r\n尺寸：7.3X10.5CM \r\n3只/五层内盒            24只/大箱\r\n每种花纸600只，3种花纸混装\r\n花纸我司提供', '3/24', 'PCS', '1800', '0', '', null, null, null, null, null, null, null, null, '5.30', '9540.00', null, '75', null, null, null, null, null, null, null, '', '1');
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d523195001b', '4028817a3357462e01336d523195001a', '7', null, null, null, '8708/6203', '1bab511c-4f4c-4de7-8b65-4ccdcd00a569.png', '怪虫小碗，喷紫色，喷漆，喷珠光\r\n直径：18CM\r\n4只/内盒           8只/大箱\r\n白纸，瓦楞纸包裹，大箱用胶带纸工字封口', '4/8', 'PCS', '600', '0', '', null, null, null, null, null, null, null, null, '6.50', '3900.00', null, '75', null, null, null, null, null, null, null, '', '1');
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d5e8a59001c', '4028817a3357462e01336d523195001a', '7', null, null, null, '9749/6525', '143a4aa8-894d-4226-a461-eac712567360.png', '怪虫碗，喷绿色，喷漆，喷珠光\r\n直径：18CM\r\n4只/内盒            8只/大箱\r\n白纸，瓦楞纸包装\r\n大箱用胶带纸工字封口；', '4/8', 'PCS', '600', '0', '', null, null, null, null, null, null, null, null, '6.50', '3900.00', null, '75', null, null, null, null, null, null, null, '', '6');
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d5e8a59001d', '4028817a3357462e01336d523195001a', '7', null, null, null, '9226/6116', 'fcf3f5a9-a405-4f33-abb9-f317c60f1453.png', '海星盘，喷绿色，喷漆，喷珠光\r\n直径：31CM\r\n4只/内盒             8只/大箱\r\n白纸包装，中间垫隔板\r\n大箱用胶带纸工字封口；', '4/8', 'PCS', '408', '0', '', null, null, null, null, null, null, null, null, '11.00', '4488.00', null, '51', null, null, null, null, null, null, null, '', '3');
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d5e8a59001e', '4028817a3357462e01336d523195001a', '7', null, null, null, '9748/6115', '657ac46a-bd23-4a2d-9abe-c552a8fc3727.png', '海星盘，喷蓝色，喷漆，喷珠光\r\n直径：31CM\r\n4只/内盒            8只/大箱\r\n白纸包裹，中间垫隔板\r\n大箱用胶带纸工字封口；', '4/8', 'PCS', '408', '0', '', null, null, null, null, null, null, null, null, '11.00', '4488.00', null, '51', null, null, null, null, null, null, null, '', '5');
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d5e8a59001f', '4028817a3357462e01336d523195001a', '7', null, null, null, '9956/6308', '1ca7fc1c-aad2-4f1e-8c3b-9a1009e22c04.png', '竹节碗，喷蓝色，喷漆，喷珠光\r\n直径：31CM\r\n4只/内盒            8只/大箱\r\n白纸，瓦楞纸包裹\r\n大箱用胶带纸工字封口', '4/8', 'PCS', '408', '0', '', null, null, null, null, null, null, null, null, '11.50', '4692.00', null, '51', null, null, null, null, null, null, null, '', '9');
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d5e8a590020', '4028817a3357462e01336d523195001a', '7', null, null, null, '9954/6309', '1e15e517-af2a-45c9-8c1e-1f1b592f5f79.png', '竹节碗，喷绿色，喷漆，喷珠光\r\n直径：31CM\r\n4只/内盒            8只/大箱\r\n白纸，瓦楞纸包裹\r\n大箱用胶带纸工字封口', '4/8', 'PCS', '408', '0', '', null, null, null, null, null, null, null, null, '11.50', '4692.00', null, '51', null, null, null, null, null, null, null, '', '7');
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d5e8a590021', '4028817a3357462e01336d523195001a', '7', null, null, null, '8709/6204', '1a6770a7-033c-4b98-9e2a-60cd2a5081c3.png', '怪虫小碗，喷蓝色，喷漆，喷珠光\r\n直径：18CM\r\n4只/内盒          8只/大箱\r\n白纸，瓦楞纸包装，大箱用胶带纸工字封口；', '4/8', 'PCS', '600', '0', '', null, null, null, null, null, null, null, null, '6.50', '3900.00', null, '75', null, null, null, null, null, null, null, '', '2');
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d5e8a590022', '4028817a3357462e01336d523195001a', '7', null, null, null, '9955/6105', '15c6d6ad-3608-4d73-83f3-23f605123b90.png', '竹节碗，喷紫色，喷漆，喷珠光\r\n直径：31CM\r\n4只/内盒            8只/大箱\r\n白纸，瓦楞纸包裹\r\n大箱用胶带纸工字封口；', '4/8', 'PCS', '408', '0', '', null, null, null, null, null, null, null, null, '11.50', '4692.00', null, '51', null, null, null, null, null, null, null, '', '8');
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d5e8a590023', '4028817a3357462e01336d523195001a', '7', null, null, null, '9227/6092', '0ffed7a5-6fd6-4b36-9387-7108bb408fdf.png', '海星盘，喷紫色，喷漆，喷珠光\r\n直径：30CM\r\n4只/内盒            8只/大箱\r\n包装包裹，中间垫隔板\r\n大箱用胶带纸工字封口', '4/8', 'PCS', '408', '0', '', null, null, null, null, null, null, null, null, '11.00', '4488.00', null, '51', null, null, null, null, null, null, null, '', '4');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133813f25a30002', '4028817a33812ffd0133813f25940001', '4', null, null, null, '4993', '3feb6071-7835-48b6-beca-e54202221c3b.png', '全明料死模风灯，电镀花银喷绿色 \r\n明料挺底\r\n尺寸：11.5X20.3CM\r\n1只/五层内盒      12只/大箱\r\n电镀喷色我司安排', '1/12', 'PCS', '300', '0', '', null, null, null, null, null, null, null, null, '8.50', '2550.00', null, '25', null, null, null, null, null, null, null, '', '1');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133813f25a30003', '4028817a33812ffd0133813f25940001', '4', null, null, null, '4994', '56ada31d-acfc-4261-b28d-8be65ba2a21e.png', '全明料死模风灯，电镀花银喷蓝色\r\n明料挺底\r\n尺寸：11.5X20.3CM\r\n1只/五层内盒     12只/大箱\r\n电镀喷色我司安排', '1/12', 'PCS', '300', '0', '', null, null, null, null, null, null, null, null, '8.50', '2550.00', null, '25', null, null, null, null, null, null, null, '', '2');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133813f25a30004', '4028817a33812ffd0133813f25940001', '4', null, null, null, '4995', '9eb0c66c-d682-4f19-b89a-1a4808da5456.png', '全明料死模风灯，电镀花银喷紫色\r\n明料挺底\r\n尺寸：11.5X20.3CM\r\n1只/五层内盒      12只/大箱\r\n电镀喷色我司安排', '1/12', 'PCS', '300', '0', '', null, null, null, null, null, null, null, null, '8.50', '2550.00', null, '25', null, null, null, null, null, null, null, '', '3');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacc40005', '4028817a33812ffd0133813f25940001', '2', null, null, null, '9868', 'ba10c6b0-34b7-4911-a45c-cc282cf8072d.png', '全明料喇叭底糖缸配盖子\r\n尺寸：16X40CM高\r\n1只/上中下泡沫垫/内盒  2只/大箱\r\n泡沫垫工厂供，入内盒\r\n大箱用胶带纸工字封口', '1/2', 'PCS', '600', '0', '', null, null, null, null, null, null, null, null, '16.00', '9600.00', null, '300', null, null, null, null, null, null, null, '', '27');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacc40006', '4028817a33812ffd0133813f25940001', '7', null, null, null, '5099', 'd38c8874-e641-4c59-9f6d-eb07df231d44.png', '全明料钻石蛋糕盘粘底座\r\n喷蓝色，喷漆\r\n尺寸：23X11.5CM高\r\n1只/五层内盒     4只/大箱', '1/4', 'PCS', '300', '0', '', null, null, null, null, null, null, null, null, '11.00', '3300.00', null, '75', null, null, null, null, null, null, null, '', '9');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacc40007', '4028817a33812ffd0133813f25940001', '4028817a33d4f8b40133d9989f5e0024', null, null, null, '5094', '662d9320-a8b7-4957-8d73-e4560e12e0e7.png', '全明料冰花风灯，粘电镀底座  \r\n尺寸：15.8X32CM高\r\n1只/五层内盒     6只/五层大箱', '1/6', 'PCS', '300', '0', '', null, null, null, null, null, null, null, null, '14.50', '4350.00', null, '50', null, null, null, null, null, null, null, '', '7');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacc40008', '4028817a33812ffd0133813f25940001', '2', null, null, null, '5189', 'a2a503a3-f0cd-49b4-b05c-8ea55ecbe2bf.png', '全明料竖棱风灯，粘电镀底座\r\n底座由我司提供\r\n尺寸：20X35CM高\r\n1只/上下泡沫垫/内盒  4只/大箱\r\n保利龙垫工厂供', '1/4', 'PCS', '300', '0', '', null, null, null, null, null, null, null, null, '14.00', '4200.00', null, '75', null, null, null, null, null, null, null, '', '12');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacc40009', '4028817a33812ffd0133813f25940001', '4', null, null, null, '5331', '1b211d97-1def-49c6-90a8-8097bbd07f68.png', '全明料死模风灯，电镀花银喷绿色\r\n\r\n尺寸：17X23CM高\r\n1只/五层内盒      6只/大箱\r\n电镀喷色我司安排', '1/6', 'PCS', '300', '0', '', null, null, null, null, null, null, null, null, '11.50', '3450.00', null, '50', null, null, null, null, null, null, null, '', '13');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacc4000a', '4028817a33812ffd0133813f25940001', '4028817a33d4f8b40133d9989f5e0024', null, null, null, '5095', '7b5d7395-40b4-45ad-9c42-c7050e232448.png', '全明料冰花风灯，粘明料底座 \r\n尺寸：15.8X32CM高\r\n1只/五层内盒    6只/五层大箱', '1/6', 'PCS', '300', '0', '', null, null, null, null, null, null, null, null, '14.00', '4200.00', null, '50', null, null, null, null, null, null, null, '', '8');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd4000b', '4028817a33812ffd0133813f25940001', '2', null, null, null, '843MA', 'c0229e90-0a5b-438d-8b07-4acd238b142b.png', '全明料喇叭底糖缸，带盖子	\r\n盖子：10CMX10.3CM高 壁厚3MM	\r\n身子：11.2X31.7CM(全高） 底径12CM	\r\n壁厚不小于3MM  重量：950克	\r\n1只/上下保利龙垫/内盒   4只/大箱	\r\n保利龙垫工厂提供	\r\n大箱用胶带纸工字封口', '1/4', 'PCS', '600', '0', '', null, null, null, null, null, null, null, null, '16.00', '9600.00', null, '150', null, null, null, null, null, null, null, '', '21');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd4000c', '4028817a33812ffd0133813f25940001', '4', null, null, null, '4997', '0fdad1e1-452c-4ae4-a354-49688bd41778.png', '全明料死模风灯，电镀花银喷蓝色	\r\n明料挺底	\r\n尺寸：11.5X30.5CM	\r\n1只/五层内盒      6只/大箱	\r\n电镀喷色我司安排', '1/6', 'PCS', '300', '0', '', null, null, null, null, null, null, null, null, '10.50', '3150.00', null, '50', null, null, null, null, null, null, null, '', '5');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd4000d', '4028817a33812ffd0133813f25940001', '4', null, null, null, '4996', '7ae6c20e-0f57-4fab-9e40-22d1a486e943.png', '全明料死模风灯，电镀花银喷绿色\r\n明料挺底\r\n尺寸：11.5X30.5CM高\r\n1只/五层内盒      6只/大箱\r\n电镀喷色我司安排', '1/6', 'PCS', '300', '0', '', null, null, null, null, null, null, null, null, '10.50', '3150.00', null, '50', null, null, null, null, null, null, null, '', '4');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd4000e', '4028817a33812ffd0133813f25940001', '2', null, null, null, '600MA', '958fe4fb-db40-4977-bf2e-2c2db29d65f3.png', '全明料蛋糕盘+罩子,磨口抛光\r\n蛋糕罩子尺寸：17.5X15.5CM高\r\n蛋糕盘子尺寸：19.2X18CM高\r\n1只/上下保利龙垫/内盒   4只/大箱\r\n保丽龙垫工厂提供，大箱用胶带纸工字封口', '1/4', 'SETS', '600', '0', '', null, null, null, null, null, null, null, null, '18.00', '10800.00', null, '150', null, null, null, null, null, null, null, '', '17');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd4000f', '4028817a33812ffd0133813f25940001', '2', null, null, null, '602MA', '624ab3d2-12f3-4dd8-b438-c03a3018b170.png', '全明平光蛋糕盘+罩子,磨口抛光\r\n蛋糕罩子尺寸：17.5X15.5CM高\r\n蛋糕盘子尺寸：19.2X28CM高\r\n1只/上下保利龙垫/内盒  2只/大箱\r\n保利龙垫工厂提供\r\n大箱用胶带纸工字封口', '1/2', 'SETS', '600', '0', '', null, null, null, null, null, null, null, null, '19.00', '11400.00', null, '300', null, null, null, null, null, null, null, '', '18');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40010', '4028817a33812ffd0133813f25940001', '2', null, null, null, '8759', 'f92f57f8-65de-42be-9814-bad100059d23.png', '全明料竖棱糖缸配盖子\r\n尺寸：16.5X40CM高\r\n1只/上中下泡沫垫/内盒  2只/大箱\r\n\r\n泡沫垫工厂供，大箱用胶带工字封口', '1/2', 'PCS', '600', '0', '', null, null, null, null, null, null, null, null, '15.00', '9000.00', null, '300', null, null, null, null, null, null, null, '', '25');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40011', '4028817a33812ffd0133813f25940001', '2', null, null, null, '6998', '3be8121c-867d-4745-bebf-3844e6a05589.png', '全明料蛋糕盘+蛋糕罩 \r\n盘子沿电镀，罩子上珠描白金。\r\n尺寸：6-1/2\" X 12-1/2\" CM H\r\n1只/上中下泡沫垫/内盒  4只/大箱\r\n产品用中上下泡沫垫包装入内盒，\r\n大箱用胶带纸工字封口。电镀我司安排，泡沫垫工厂提供。\r\n盘子请于12月25日送祁县喜福来厂电镀', '1/4', 'SETS', '300', '0', '', null, null, null, null, null, null, null, null, '19.00', '5700.00', null, '75', null, null, null, null, null, null, null, '', '20');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40012', '4028817a33812ffd0133813f25940001', '2', null, null, null, '5118', '635cdf31-8e48-45f3-886c-5fffd532175b.png', '全明料蛋糕盘+罩子\r\n罩子上烤白金字母花纸（SWEETS)\r\n盘子口径16.4CM\r\n罩子尺寸：15X13CM  全高：26.7CM\r\n1套/上下保利龙垫/五层内盒 4套/大箱\r\n花纸我司供，保利龙垫工厂供', '1/4', 'SETS', '300', '0', '', null, null, null, null, null, null, null, null, '16.00', '4800.00', null, '75', null, null, null, null, null, null, null, '', '11');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40013', '4028817a33812ffd0133813f25940001', '7', null, null, null, '8708', '39b3ac6f-fb30-4b37-8fff-a07fb88aef15.png', '怪虫小碗，喷紫色，喷漆，喷珠光\r\n尺寸：18CX9CM高\r\n4只/内盒           8只/大箱 \r\n白纸，瓦楞纸包裹', '1/8', 'PCS', '600', '0', '', null, null, null, null, null, null, null, null, '6.50', '3900.00', null, '75', null, null, null, null, null, null, null, '', '23');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40014', '4028817a33812ffd0133813f25940001', '4', null, null, null, '5336', '466ba3d1-94b5-44ca-92c9-98631bf3b92b.png', '全明料死模风灯，电镀花银喷绿色	\r\n 	\r\n尺寸：14.5X20CM高	\r\n1只/五层内盒      12只/大箱	\r\n电镀喷色我司安排', '1/12', 'PCS', '300', '0', '', null, null, null, null, null, null, null, null, '8.00', '2400.00', null, '25', null, null, null, null, null, null, null, '', '14');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40015', '4028817a33812ffd0133813f25940001', '4', null, null, null, '5337', '78ff069b-327e-488e-a629-b76bed0efb98.png', '全明料死模风灯，电镀花银喷蓝色\r\n\r\n尺寸：14.5X20CM高\r\n1只/五层内盒      12只/大箱\r\n电镀喷色我司安排', '1/12', 'PCS', '300', '0', '', null, null, null, null, null, null, null, null, '8.00', '2400.00', null, '25', null, null, null, null, null, null, null, '', '15');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40016', '4028817a33812ffd0133813f25940001', '2', null, null, null, '603MA', 'ea12f8ba-afc1-4651-bc10-432c85fcb091.png', '全明平光蛋糕盘+罩子,磨口抛光\r\n蛋糕罩子尺寸：17.5X15.5CM高\r\n蛋糕盘子尺寸：19.2X38CM高\r\n此单数量出自C/1440/11\r\n1只/上下保利龙垫/内盒  2只/大箱\r\n保丽龙垫工厂提供，大箱用胶带纸工字封口', '1/2', 'SETS', '600', '0', '', null, null, null, null, null, null, null, null, '20.00', '12000.00', null, '300', null, null, null, null, null, null, null, '', '19');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40017', '4028817a33812ffd0133813f25940001', '2', null, null, null, '5117', '4f7fdc19-c276-47da-aced-5cec4e02be08.png', '全明料蛋糕盘+罩子\r\n罩上烤白金字母花纸（SWEETS)\r\n罩子尺寸：15X13CM高\r\n盘子尺寸：16.4X27CM高\r\n1套/上下保利龙垫/五层内盒\r\n4套/大箱\r\n花纸我司供', '1/4', 'SETS', '300', '0', '', null, null, null, null, null, null, null, null, '17.00', '5100.00', null, '75', null, null, null, null, null, null, null, '', '10');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40018', '4028817a33812ffd0133813f25940001', '4', null, null, null, '5400', '3b810117-19c6-446e-886f-d3b2fd5ba411.png', '全明料死模风灯，电镀花银喷蓝色\r\n \r\n尺寸：17X23CM高\r\n1只/五层内盒      6只/大箱\r\n电镀喷色我司安排', '1/6', 'PCS', '300', '0', '', null, null, null, null, null, null, null, null, '11.50', '3450.00', null, '50', null, null, null, null, null, null, null, '', '16');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40019', '4028817a33812ffd0133813f25940001', '4', null, null, null, '4998', '0c400655-fb24-4781-aae1-eaa30e31ad4c.png', '全明料死模风灯，电镀花银喷紫色\r\n明料挺底\r\n尺寸：11.5X30.5CM\r\n1只/五层内盒      6只/大箱\r\n电镀喷色我司安排', '1/6', 'PCS', '300', '0', '', null, null, null, null, null, null, null, null, '10.50', '3150.00', null, '50', null, null, null, null, null, null, null, '', '6');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd4001a', '4028817a33812ffd0133813f25940001', '2', null, null, null, '8760', '2aaba753-e5d2-4c42-badf-cc16acf81d2b.png', '全明料竖棱糖缸配盖子\r\n尺寸：16.5X51CM高\r\n\r\n1只/上中下泡沫垫/内盒  2只/大箱\r\n泡沫垫工厂供，大箱用胶带工字封口', '1/2', 'PCS', '600', '0', '', null, null, null, null, null, null, null, null, '16.00', '9600.00', null, '300', null, null, null, null, null, null, null, '', '26');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd4001b', '4028817a33812ffd0133813f25940001', '2', null, null, null, '844MA', '6f6f097f-ae83-4ecb-80c6-ec1e93353985.png', '全明料糖缸带盖子\r\n盖子：9.3X13.3CM高 壁厚3MM\r\n身子：10.5X28.4CM(全高)\r\n底径：13CM   壁厚不小于3MM\r\n1只/上下保利龙垫/内盒 4只/大箱\r\n保利龙垫工厂提供，大箱用胶带纸工字封口', '1/4', 'PCS', '600', '0', '', null, null, null, null, null, null, null, null, '16.00', '9600.00', null, '150', null, null, null, null, null, null, null, '', '22');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd4001c', '4028817a33812ffd0133813f25940001', '2', null, null, null, '9869', 'be81bc6b-610b-45fa-bb8b-5156d8de9d52.png', '全明料喇叭底糖缸配盖子\r\n尺寸：19X40CM高\r\n1只/上中下泡沫垫/内盒  2只/大箱\r\n泡沫垫工厂供， \r\n大箱用胶带纸工字封口', '1/2', 'PCS', '600', '0', '', null, null, null, null, null, null, null, null, '16.00', '9600.00', null, '300', null, null, null, null, null, null, null, '', '28');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd4001d', '4028817a33812ffd0133813f25940001', '7', null, null, null, '8709', 'd33ee976-4d35-4990-ae41-eebee8989f5a.png', '怪虫小碗，喷蓝色，喷漆，喷珠光\r\n尺寸：18CMX9CM高\r\n4只/内盒          8只/大箱', '1/8', 'PCS', '600', '0', '', null, null, null, null, null, null, null, null, '6.50', '3900.00', null, '75', null, null, null, null, null, null, null, '', '24');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd013382048ff80025', '4028817a33812ffd013382048ff80024', '1', null, null, null, '20-37-264/JK1051087', 'ef1348ed-d11c-4acf-ae57-4a0600e4ff0f.png', '全明料蛋糕盘+罩子\r\n罩子烤蒙砂白花纸，花纸我司供\r\n尺寸：12.3X22.5CM高\r\n1只/五层内盒       12只/大箱', '1/12', 'SETS', '1200', '0', '', null, null, null, null, null, null, null, null, '9.50', '11400.00', null, '100', null, null, null, null, null, null, null, '', '1');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd013382048ff80026', '4028817a33812ffd013382048ff80024', '1', null, null, null, '20-37-265/JK1050163', 'e96667ee-d5e9-43d1-bac0-758593c56629.png', '全明料蛋糕盘+罩子\r\n罩子烤蒙砂白花纸，花纸我司供\r\n尺寸：13.5X29.5CM高\r\n1只/五层内盒       6只/大箱', '1/6', 'SETS', '1200', '0', '', null, null, null, null, null, null, null, null, '11.00', '13200.00', null, '200', null, null, null, null, null, null, null, '', '2');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd013382048ff80027', '4028817a33812ffd013382048ff80024', '1', null, null, null, '20-37-266/JK1050164', '6b8d7276-1de9-40d8-9cf8-dabc7a8d853d.png', '全明料蛋糕盘+罩子\r\n罩子烤蒙砂白花纸，花纸我司供\r\n尺寸：14.5X33CM高\r\n1只/五层内盒       6只/大箱', '1/6', 'SETS', '1200', '0', '', null, null, null, null, null, null, null, null, '13.00', '15600.00', null, '200', null, null, null, null, null, null, null, '', '3');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133821a8eb5002c', '4028817a33812ffd0133821a8eb5002b', '1', null, null, null, 'JK110102', 'e4df38d5-f0d9-4f91-99c6-240addaa36a3.png', '全明料平光蛋糕罩配钻石盘子\r\n罩子上粘小鸟，小鸟和钻石盘我司供\r\n罩子尺寸：26X36CM高\r\n1套/上下保利龙盖/内盒\r\n2套/大箱\r\n保利龙垫工厂供', '1/2', 'SETS', '150', '0', '', null, null, null, null, null, null, null, null, '32.00', '4800.00', null, '75', null, null, null, null, null, null, null, '', '2');
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133821a8eb5002d', '4028817a33812ffd0133821a8eb5002b', '1', null, null, null, 'JK110101', 'bfd61df4-61b5-492c-b11c-7d19b63f5cf1.png', '全明料平光蛋糕罩配钻石盘子\r\n罩子上粘小鸟，小鸟和钻石盘我司供\r\n罩子尺寸：20X20.5CM高\r\n1套/上下保利龙盖/内盒\r\n4套/大箱\r\n保利龙垫工厂供', '1/4', 'SETS', '152', '0', '', null, null, null, null, null, null, null, null, '22.00', '3344.00', null, '38', null, null, null, null, null, null, null, '', '1');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e88000e', '4028817a33d4f8b40133d9878e88000d', '13', null, null, null, 'JK1060019/11990', 'undefined', '全明料密直棱低口杯\r\n尺寸：9X10.5CM高\r\n4只/五层内盒            24只/大箱', '4/24', 'PCS', '696', '0', '', null, null, null, null, null, null, null, null, '5.00', '3480.00', null, '29', null, null, null, null, null, null, null, '', '6');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e88000f', '4028817a33d4f8b40133d9878e88000d', '13', null, null, null, 'JK103134/11989', 'undefined', '全明料密直棱香槟杯\r\n尺寸：9X21CM高\r\n4只/五层内盒            16只/大箱', '4/16', 'PCS', '832', '0', '', null, null, null, null, null, null, null, null, '6.00', '4992.00', null, '52', null, null, null, null, null, null, null, '', '7');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e880010', '4028817a33d4f8b40133d9878e88000d', '1', null, null, null, 'JK1050152/11306', 'undefined', '全明料酒杯，口部描1CM白金边\r\n尺寸：7X26CM高\r\n4只/五层内盒           16只/大箱', '4/16', 'PCS', '608', '0', '', null, null, null, null, null, null, null, null, '8.50', '5168.00', null, '38', null, null, null, null, null, null, null, '', '1');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e880011', '4028817a33d4f8b40133d9878e88000d', '2', null, null, null, 'JK103233/11301', 'undefined', '全明料糖缸配盖子，糖缸刻钻石描亮油\r\n尺寸：11X30.5CM高\r\n1只/五层内盒        12只/大箱', '1/12', 'PCS', '12', '0', '', null, null, null, null, null, null, null, null, '18.00', '216.00', null, '12', null, null, null, null, null, null, null, '', '11');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e880012', '4028817a33d4f8b40133d9878e88000d', '1', null, null, null, 'JK1050068/11314', 'undefined', '全明料马丁尼，口部描1CM白金边\r\n尺寸：12X19CM高\r\n4只/五层内盒           16只/大箱', '4/16', 'PCS', '608', '0', '', null, null, null, null, null, null, null, null, '11.20', '6809.60', null, '38', null, null, null, null, null, null, null, '', '3');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e880013', '4028817a33d4f8b40133d9878e88000d', '2', null, null, null, 'JK1050317/12006', 'undefined', '全明料糖缸配盖子，糖缸刻交叉麦穗花\r\n尺寸：10.5X14CM高\r\n1只/五层内盒          12只/大箱', '1/12', 'PCS', '168', '0', '', null, null, null, null, null, null, null, null, '9.50', '1596.00', null, '14', null, null, null, null, null, null, null, '', '9');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e880014', '4028817a33d4f8b40133d9878e88000d', '2', null, null, null, 'JK169340/13076', 'undefined', '全明料蛋糕罩配盘子，罩子烤白花纸\r\n尺寸：25X26CM高\r\n1套/上下保丽龙垫/内盒    2套/大箱\r\n白花纸我司供', '1/2', 'SETS', '464', '0', '', null, null, null, null, null, null, null, null, '36.00', '16704.00', null, '232', null, null, null, null, null, null, null, '', '8');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e880015', '4028817a33d4f8b40133d9878e88000d', '2', null, null, null, 'JK1050316/12005', 'undefined', '全明料糖缸配盖子，糖缸刻交叉麦穗花\r\n尺寸：15X15CM高\r\n1只/五层内盒        6只/大箱', '1/6', 'PCS', '162', '0', '', null, null, null, null, null, null, null, null, '12.50', '2025.00', null, '27', null, null, null, null, null, null, null, '', '10');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e880016', '4028817a33d4f8b40133d9878e88000d', '2', null, null, null, 'JK1050201/12078', 'undefined', '全明料蛋糕罩配盘子，罩子上烤花纸\r\n罩子尺寸：15X11.5CM高\r\n盘子尺寸：16X13CM高\r\n全高：22CM\r\n1套/上下保丽龙垫/内盒     6套/大箱', '1/6', 'SETS', '204', '0', '', null, null, null, null, null, null, null, null, '18.00', '3672.00', null, '34', null, null, null, null, null, null, null, '', '4');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e880017', '4028817a33d4f8b40133d9878e88000d', '1', null, null, null, 'JK1050154/11308', 'undefined', '全明料香槟杯，口部描1CM白金边\r\n尺寸：5X29CM高\r\n4只/五层内盒           16只/大箱', '4/16', 'PCS', '704', '0', '', null, null, null, null, null, null, null, null, '7.50', '5280.00', null, '44', null, null, null, null, null, null, null, '', '2');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e880018', '4028817a33d4f8b40133d9878e88000d', '13', null, null, null, 'JK103136/11988', 'undefined', '全明料密直棱酒杯，底厚要求5MM\r\n尺寸：9X17.5CM高\r\n4只/五层内盒            16只/大箱', '4/16', 'PCS', '928', '0', '', null, null, null, null, null, null, null, null, '6.30', '5846.40', null, '58', null, null, null, null, null, null, null, '', '5');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d991a50d001a', '4028817a33d4f8b40133d991a50d0019', 'ff808081301885760130189e47ca0013', null, null, null, 'JK1040446/JK446', 'undefined', '全明料糖缸配盖子，普通底\r\n尺寸：16.5X50CM高\r\n1只/上下保丽龙垫/白盒\r\n2只/大箱\r\n保丽龙垫工厂供', '1/2', 'PCS', '600', '0', '', null, null, null, null, null, null, null, null, '25.00', '15000.00', null, '300', null, null, null, null, null, null, null, '', '7');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d991a50d001b', '4028817a33d4f8b40133d991a50d0019', '2', null, null, null, 'JK1040364/JK364', 'undefined', '全明料糖缸配盖子\r\n尺寸：19X39CM高\r\n1只/上下保丽龙垫/白盒\r\n2只/大箱\r\n保丽龙工厂供', '1/2', 'PCS', '600', '0', '', null, null, null, null, null, null, null, null, '25.00', '15000.00', null, '300', null, null, null, null, null, null, null, '', '6');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d991a50d001c', '4028817a33d4f8b40133d991a50d0019', '2', null, null, null, 'JK1050316/JK316', 'undefined', '全明料糖缸，刻麦穗花不描亮油。\r\n盖子电镀，电镀我司安排。\r\n尺寸：15X15CM 高\r\n1只/白盒    6只/大箱\r\n产品用白纸、瓦纸、气泡纸包装入白盒，入大箱。大箱用胶带纸工字封口。\r\n白盒我司供', '1/6', 'PCS', '600', '0', '', null, null, null, null, null, null, null, null, '12.00', '7200.00', null, '100', null, null, null, null, null, null, null, '', '2');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d991a50d001d', '4028817a33d4f8b40133d991a50d0019', '1', null, null, null, 'JK1050166/JK166', 'undefined', '全明料糖缸，刻花不描亮油。\r\n尺寸：12.5X26.5CM高\r\n1只/白盒    6只/大箱\r\n产品用白纸、瓦纸、气泡纸包装入白盒，入大箱。大箱用胶带纸工字封口。\r\n白盒我司供', '1/6', 'PCS', '600', '0', '', null, null, null, null, null, null, null, null, '16.00', '9600.00', null, '100', null, null, null, null, null, null, null, '', '1');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d991a50d001e', '4028817a33d4f8b40133d991a50d0019', '4', null, null, null, 'JK103694/JK694', 'undefined', '套6全明料死模低口杯\r\n尺寸：8X12.5CM高\r\n1套/白盒    4套/大箱\r\n产品用白纸、瓦纸、气泡纸包装入白盒，入大箱。大箱用胶带纸工字封口。\r\n白盒我司供', '1/4', 'SETS', '480', '0', '', null, null, null, null, null, null, null, null, '24.00', '11520.00', null, '120', null, null, null, null, null, null, null, '', '4');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d991a50d001f', '4028817a33d4f8b40133d991a50d0019', 'ff808081301885760130189e47ca0013', null, null, null, 'JK103956/JK956', 'undefined', '全明料蛋糕罩配盘子\r\n盘子我司安排\r\n罩子尺寸：33X14X15\r\n1套/保丽龙/五层内盒  2套/大箱\r\n2011年11月15日送天顺厂', '1/2', 'SETS', '480', '0', '', null, null, null, null, null, null, null, null, '27.00', '12960.00', null, '240', null, null, null, null, null, null, null, '', '5');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d991a50d0020', '4028817a33d4f8b40133d991a50d0019', '4', null, null, null, 'JK103693/JK693', 'undefined', '套6全明料死模低口杯\r\n尺寸：7.3X10.5CM高\r\n1套/白盒    8套/大箱\r\n产品用白纸、瓦纸、气泡纸包装入白盒，入大箱。大箱用胶带纸工字封口。\r\n白盒我司供', '1/8', 'SETS', '184', '0', '', null, null, null, null, null, null, null, null, '21.00', '3864.00', null, '23', null, null, null, null, null, null, null, '', '3');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9be557b0029', '4028817a33d4f8b40133d991a50d0019', '9', null, null, null, 'J859101549/JK549', '', '全明料蛋糕盘\r\n尺寸：直径33.5CM\r\n2只/五层内盒    8只/大箱', '2/8', 'PCS', '1200', '0', '', null, null, null, null, null, null, null, null, '10.00', '12000.00', null, '150', null, null, null, null, null, null, null, '', '12');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9be557b002a', '4028817a33d4f8b40133d991a50d0019', '4028817a33d4f8b40133d9989f5e0024', null, null, null, 'JK1060338/JK338', '', '全明料机压直棱糖缸\r\n尺寸：15.5X15.5CM 高\r\n1只/白盒  12只/五层大箱\r\n白盒我司供', '1/12', 'PCS', '2400', '0', '', null, null, null, null, null, null, null, null, '7.15', '17160.00', null, '200', null, null, null, null, null, null, null, '', '8');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9be557b002b', '4028817a33d4f8b40133d991a50d0019', '9', null, null, null, 'JK103209/JK209', '', '全明料2层钻石蛋糕盘，配喷塑铁架\r\n铁架我司供\r\n大盘尺寸：33X2.5CM\r\n小盘尺寸：21X2.5CM\r\n1套/内盒    6套/大箱', '1/6', 'SETS', '1200', '0', '', null, null, null, null, null, null, null, null, '13.00', '15600.00', null, '200', null, null, null, null, null, null, null, '', '11');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9be557b002c', '4028817a33d4f8b40133d991a50d0019', '9', null, null, null, 'JK1031007-LP/JK007/1', '', '全明料钻石蛋糕盘，粘底座\r\n尺寸：30X11.5CM高\r\n1只/白盒    4只/大箱\r\n白盒我司供', '1/4', 'PCS', '600', '0', '', null, null, null, null, null, null, null, null, '10.50', '6300.00', null, '150', null, null, null, null, null, null, null, '', '13');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9be557b002d', '4028817a33d4f8b40133d991a50d0019', '1', null, null, null, 'JK1050128/JK0128', '', '全明料三层糖缸，刻麦穗花\r\n尺寸：12X22.5CM\r\n1套/白盒    8套/大箱\r\n产品用白纸、瓦纸、气泡纸包装入白盒，入大箱。大箱用胶带纸工字封口。\r\n白盒我司供', '1/8', 'SETS', '600', '0', '', null, null, null, null, null, null, null, null, '18.50', '11100.00', null, '75', null, null, null, null, null, null, null, '', '9');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9be557b002e', '4028817a33d4f8b40133d991a50d0019', '2', null, null, null, 'JK103176/JK176', '', '全明料糖缸，刻花，不带盖子\r\n尺寸：20X14.5CM高\r\n1只/白盒    4只/大箱\r\n产品用白纸、瓦纸、气泡纸包装入白盒，入大箱。大箱用胶带纸工字封口。\r\n白盒我司供', '1/4', 'PCS', '480', '0', '', null, null, null, null, null, null, null, null, '18.50', '8880.00', null, '120', null, null, null, null, null, null, null, '', '10');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9bea39b0030', '4028817a33d4f8b40133d9bea39b002f', '1', null, null, null, 'JK1050806/JK032', 'undefined', '套6全明料香槟杯，电镀渐变色\r\n尺寸：5.7X25CM高\r\n1套/五层内盒           4套/大箱', '1/4', 'SETS', '320', '0', '', null, null, null, null, null, null, null, null, '31.80', '10176.00', null, '80', null, null, null, null, null, null, null, '', '6');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9bea39b0031', '4028817a33d4f8b40133d9bea39b002f', '4', null, null, null, 'JK045/JK1060426', 'undefined', '套6紫色碗明挺底香槟杯\r\n尺寸：8X17CM高\r\n1套/五层内盒          4套/大箱', '1/4', 'SETS', '240', '0', '', null, null, null, null, null, null, null, null, '33.60', '8064.00', null, '60', null, null, null, null, null, null, null, '', '9');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9bea39b0032', '4028817a33d4f8b40133d9bea39b002f', '1', null, null, null, 'JK1050807/JK033', 'undefined', '套6全明料酒杯，电镀渐变色\r\n尺寸：8X24CM高\r\n1套/五层内盒          2套/大箱', '1/2', 'SETS', '300', '0', '', null, null, null, null, null, null, null, null, '34.80', '10440.00', null, '150', null, null, null, null, null, null, null, '', '7');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9bea39b0033', '4028817a33d4f8b40133d9bea39b002f', '4028817a33d4f8b40133d9989f5e0024', null, null, null, 'JK040/JK1060338', 'undefined', '全明料机压竖棱糖缸\r\n尺寸：15.5X15.5CM\r\n1只/内盒           12只/大箱\r\n白纸，瓦楞纸包装', '1/12', 'PCS', '3000', '0', '', null, null, null, null, null, null, null, null, '8.04', '24120.00', null, '250', null, null, null, null, null, null, null, '', '3');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9bea39b0034', '4028817a33d4f8b40133d9bea39b002f', '4', null, null, null, 'JK044/JK1060425', 'undefined', '套6紫色碗明挺底红酒杯\r\n尺寸：8X20CM高\r\n1套/五层内盒           4套/大箱', '1/4', 'SETS', '240', '0', '', null, null, null, null, null, null, null, null, '34.80', '8352.00', null, '60', null, null, null, null, null, null, null, '', '8');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9bea39b0035', '4028817a33d4f8b40133d9bea39b002f', '1', null, null, null, 'JK019/J859100824', 'undefined', '套4全明料酒杯，口部描2.5CM宽白金边\r\n尺寸：8.4X22CM高\r\n1套/五层内盒     4套/大箱', '1/4', 'SETS', '320', '0', '', null, null, null, null, null, null, null, null, '58.00', '18560.00', null, '80', null, null, null, null, null, null, null, '', '2');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9bea39b0036', '4028817a33d4f8b40133d9bea39b002f', '1', null, null, null, 'JK018/J859100826', 'undefined', '套4全明料香槟杯，口部描2.5CM宽白金边\r\n尺寸：4.7X26.5CM高\r\n1套/五层内盒         6套/大箱', '1/6', 'SETS', '300', '0', '', null, null, null, null, null, null, null, null, '40.00', '12000.00', null, '50', null, null, null, null, null, null, null, '', '1');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9bea39b0037', '4028817a33d4f8b40133d9bea39b002f', '3', null, null, null, 'JK041/JK1060339', 'undefined', '全明料蒙古包糖缸\r\n尺寸：9X11CM高\r\n1只/五层内盒          24只/大箱\r\n白纸，瓦楞纸包装', '1/24', 'PCS', '3000', '0', '', null, null, null, null, null, null, null, null, '4.00', '12000.00', null, '125', null, null, null, null, null, null, null, '', '4');
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9bea39b0038', '4028817a33d4f8b40133d9bea39b002f', '1', null, null, null, 'JK020/J859100825', 'undefined', '套4全明料马丁尼，口部描2.5CM白金边\r\n尺寸：11.8X20CM高\r\n1套/五层内盒           4套/大箱', '1/4', 'SETS', '300', '0', '', null, null, null, null, null, null, null, null, '70.00', '21000.00', null, '75', null, null, null, null, null, null, null, '', '5');
INSERT INTO `contract_product_c` VALUES ('4028817a33f7960d0133f8d912ba0005', '4028817a33812ffd0133821a8eb5002b', '9', null, null, null, 'JK110102', '', '全明料钻石盘子\r\n盘子尺寸：29.5X11.5CM\r\n安全包装送祁县宏艺厂', '1/2', 'PCS', '150', '0', '', null, null, null, null, null, null, null, null, '10.00', '1500.00', null, '38', null, null, null, null, null, null, null, '', '3');
INSERT INTO `contract_product_c` VALUES ('4028817a33f7960d0133f8d912ba0006', '4028817a33812ffd0133821a8eb5002b', '9', null, null, null, 'JK110101', '', '全明料钻石盘子\r\n盘子尺寸：23X11.5CM\r\n安全包装送祁县宏艺厂', '1/4', 'PCS', '152', '0', '', null, null, null, null, null, null, null, null, '8.50', '1292.00', null, '38', null, null, null, null, null, null, null, '', '4');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fcdb13f4000e', '4028817a33d4f8b40133d9bea39b002f', '1', null, null, null, 'JK052/JK1070691', '', '套4全明料马丁尼\r\n尺寸：12.5X19.5CM高\r\n1套/五层内盒          4套/大箱', '1/4', 'SETS', '300', '0', '', null, null, null, null, null, null, null, null, '30.00', '9000.00', null, '75', null, null, null, null, null, null, null, '', '12');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fcdb13f4000f', '4028817a33d4f8b40133d9bea39b002f', '5', null, null, null, 'JK050/JK1070690', '', '套4全明料白酒杯，钻石挺\r\n尺寸：8.6X23CM高\r\n1套/五层内盒            4套/大箱', '1/4', 'SETS', '300', '0', '', null, null, null, null, null, null, null, null, '23.20', '6960.00', null, '75', null, null, null, null, null, null, null, '', '11');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fcdb13f40010', '4028817a33d4f8b40133d9bea39b002f', '2', null, null, null, 'JK046/JK1050201', '', '全明料蛋糕盘+罩子\r\n罩子上烤蒙砂白花纸\r\n距口部1CM处，花纸我司供\r\n罩子：15X11CM高   重量不低于485克/只\r\n盘子：16X23.3CM高    底径：11.8CM\r\n重量不低于645克/只   全高：32CM\r\n1套/上中下保利龙垫/内盒      6套/大箱\r\n保利龙垫工厂供', '1/6', 'SETS', '600', '0', '', null, null, null, null, null, null, null, null, '19.00', '11400.00', null, '100', null, null, null, null, null, null, null, '', '10');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d7001e', '4028817a33fc4e280133fd81e7d7001d', '2', null, null, null, '169280', '', '全明料蛋糕盘+罩子	\r\n距离罩子口部3CM烤字母花纸	\r\n 	\r\n罩子尺寸：22X15CM 壁厚3MM	\r\n盘子尺寸：24X20.8CM高 壁厚3.5CM  	\r\n底径：13.5CM  沿高：3CM 	\r\n1只/上中下保丽龙垫/五层内盒 	\r\n2只/大箱', '1/2', 'SETS', '100', '0', '', null, null, null, null, null, null, null, null, '32.00', '3200.00', null, '50', null, null, null, null, null, null, null, '', '10');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d7001f', '4028817a33fc4e280133fd81e7d7001d', '1', null, null, null, 'J859102682/113860', '', '全明料糖缸，烤字母白花纸\r\nSTORAGE ONLY\r\n尺寸：9.5X23CM高 最大径：14.5CM\r\n1只/五层内盒       6只/大箱\r\n花纸我司供', '1/6', 'PCS', '300', '0', '', null, null, null, null, null, null, null, null, '16.00', '4800.00', null, '50', null, null, null, null, null, null, null, '', '5');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d70020', '4028817a33fc4e280133fd81e7d7001d', '4', null, null, null, 'JK1080435', '', '全明料球形瓶子，刻花，描亮油\r\n\r\n尺寸:9.5X10.5CM（不含喷头高）  \r\n底径：5.5CM\r\n1只/五层内盒    24只/五层大箱', '1/24', 'PCS', '1008', '0', '', null, null, null, null, null, null, null, null, '9.00', '9072.00', null, '42', null, null, null, null, null, null, null, '', '4');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d70021', '4028817a33fc4e280133fd81e7d7001d', '2', null, null, null, '123540', '', '全明料蛋糕盘子+罩子\r\n罩子上烤字母（HIGH TEA）花纸\r\n盘子尺寸：19.3X28CM高\r\n罩子尺寸：17X15.5CM高\r\n1只/上中下保利龙垫/五层内盒 \r\n4只/大箱', '1/4', 'SETS', '100', '0', '', null, null, null, null, null, null, null, null, '22.00', '2200.00', null, '25', null, null, null, null, null, null, null, '', '9');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d70022', '4028817a33fc4e280133fd81e7d7001d', '3', null, null, null, 'JK1052446/158080', '', '全明料酒壶，杯身烤白色字母花纸\r\n \r\n尺寸：7.8X22.5CM高  1400克/只\r\n1只/五层内盒    6只/五层大箱\r\n花纸我司安排', '1/6', 'PCS', '702', '0', '', null, null, null, null, null, null, null, null, '16.50', '11583.00', null, '117', null, null, null, null, null, null, null, '', '6');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d70023', '4028817a33fc4e280133fd81e7d7001d', 'ff808081301885760130189e47ca0013', null, null, null, '62145', '', '全明料蛋糕罩子\r\n\r\n尺寸：30.3X11.5X15CM\r\n1只/五层内盒    8只/大箱', '1/8', 'PCS', '504', '0', '', null, null, null, null, null, null, null, null, '27.00', '13608.00', null, '63', null, null, null, null, null, null, null, '', '2');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d70024', '4028817a33fc4e280133fd81e7d7001d', 'ff808081301885760130189e47ca0013', null, null, null, '62146/F-57', '', '全明料蛋糕罩子，刻麦穗花\r\n\r\n尺寸：30.3X11.5X15CM\r\n1只/五层内盒    8只/大箱', '1/8', 'PCS', '504', '0', '', null, null, null, null, null, null, null, null, '28.50', '14364.00', null, '63', null, null, null, null, null, null, null, '', '3');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d70025', '4028817a33fc4e280133fd81e7d7001d', 'ff808081301885760130189e47ca0013', null, null, null, 'JKF081342/62180', '', '全明料蛋糕罩子+盘子\r\n盘子我司安排\r\n尺寸：30.3X11.5X15CM\r\n1套/保丽龙/内盒    4套/大箱', '1/4', 'SETS', '652', '0', '', null, null, null, null, null, null, null, null, '27.00', '17604.00', null, '163', null, null, null, null, null, null, null, '', '1');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d70026', '4028817a33fc4e280133fd81e7d7001d', '1', null, null, null, 'JK10501218/160380', '', '全明料糖缸带盖子，糖缸身上烤\r\n白色字母花纸\r\n尺寸：12.5X22.5CM高\r\n\r\n1套/五层内盒     12套/大箱\r\n花纸我司供', '1/12', 'PCS', '600', '0', '', null, null, null, null, null, null, null, null, '15.00', '9000.00', null, '50', null, null, null, null, null, null, null, '', '8');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d70027', '4028817a33fc4e280133fd81e7d7001d', '1', null, null, null, 'JK1040009/141760', '', '全明料三层糖缸，烤字母花纸\r\n花纸我司安排\r\n尺寸：16.5X40CM高\r\n1套/五层内盒     2套/五层大箱\r\n花纸具体位置见我司封样', '1/2', 'PCS', '300', '0', '', null, null, null, null, null, null, null, null, '35.00', '10500.00', null, '150', null, null, null, null, null, null, null, '', '7');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd89fcc00028', '4028817a33fc4e280133fd81e7d7001d', '7', null, null, null, 'JKF081342/62180', '', '全明料蛋糕盘配罩子\r\n罩子由文水志远厂提供\r\n尺寸：33X13.5CM高\r\n1套/保丽龙/五层内盒 4套/大箱\r\n保丽龙由我司提供\r\n内盒，大箱由文水志远厂提供', '1/4', 'SETS', '652', '0', '', null, null, null, null, null, null, null, null, '10.40', '6780.80', null, '163', null, null, null, null, null, null, null, '', '11');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd9f8b4e0030', '4028817a33fc4e280133fd9f8b4e002f', '15', null, null, null, 'JK1040158/12068', '', '明料灯宫细转棱蜡台\r\n\r\n尺寸：6X26CM高\r\n4只/三层内盒      16只/大箱', '4/16', 'PCS', '400', '0', '', null, null, null, null, null, null, null, null, '9.70', '3880.00', null, '25', null, null, null, null, null, null, null, '', '4');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd9f8b4e0031', '4028817a33fc4e280133fd9f8b4e002f', '2', null, null, null, 'JK1050317/12006', '', '明料糖缸配明料盖子\r\n缸身刻交叉麦穗花\r\n尺寸：10.5X14CM高\r\n1只/五层内盒     12只/五层大箱', '1/12', 'PCS', '504', '0', '', null, null, null, null, null, null, null, null, '9.50', '4788.00', null, '42', null, null, null, null, null, null, null, '', '3');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd9f8b4e0032', '4028817a33fc4e280133fd9f8b4e002f', '2', null, null, null, 'JK1050316/12005', '', '明料糖缸配明料盖子\r\n缸身刻交叉麦穗花\r\n尺寸：15X15CM高\r\n1只/五层内盒      6只/五层大箱', '1/6', 'PCS', '348', '0', '', null, null, null, null, null, null, null, null, '12.50', '4350.00', null, '58', null, null, null, null, null, null, null, '', '2');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd9f8b4e0033', '4028817a33fc4e280133fd9f8b4e002f', '2', null, null, null, 'JK103233/11301', '', '全明料糖缸刻钻石，描亮油\r\n尺寸：11X30.5CM高\r\n1只/五层内盒    12只/大箱', '1/12', 'PCS', '408', '0', '', null, null, null, null, null, null, null, null, '18.00', '7344.00', null, '34', null, null, null, null, null, null, null, '', '1');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fdb370c00034', '4028817a33812ffd0133813f25940001', '7', null, null, null, '9749', '', '怪虫小碗喷绿色，喷漆，喷珠光\r\n尺寸：18X9CM高\r\n4只/内盒             8只/大箱', '4/8', 'PCS', '304', '0', '', null, null, null, null, null, null, null, null, '6.50', '1976.00', null, '38', null, null, null, null, null, null, null, '', '29');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fdb370cf0035', '4028817a33812ffd0133813f25940001', '7', null, null, null, '9749', '', '怪虫小碗喷绿色，喷漆，喷珠光\r\n尺寸：18X9CM高\r\n4只/内盒             8只/大箱', '4/8', 'PCS', '304', '0', '', null, null, null, null, null, null, null, null, '6.50', '1976.00', null, '38', null, null, null, null, null, null, null, '', '30');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fdb370df0036', '4028817a33812ffd0133813f25940001', '7', null, null, null, '9749', '', '怪虫小碗喷绿色，喷漆，喷珠光\r\n尺寸：18X9CM高\r\n4只/内盒             8只/大箱', '4/8', 'PCS', '304', '0', '', null, null, null, null, null, null, null, null, '6.50', '1976.00', null, '38', null, null, null, null, null, null, null, '', '31');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fde6504f0037', '4028817a33fc4e280133fd9f8b4e002f', '2', null, null, null, 'JK1050201/12078', '', '全明料蛋糕罩配盘子,罩子上烤蒙砂白花纸\r\n盘子尺寸：16X13CM高\r\n罩子尺寸：15X11.5CM高\r\n全高：22CM  花纸我司供\r\n1套/保利龙垫/五层内盒\r\n6套/大箱  保利龙垫工厂供', '1/6', 'PCS', '402', '0', '', null, null, null, null, null, null, null, null, '18.00', '7236.00', null, '67', null, null, null, null, null, null, null, '', '5');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fde6504f0038', '4028817a33fc4e280133fd9f8b4e002f', '13', null, null, null, 'JK1050198/12860', '', '全明料酒杯，\r\n距口部1.5CM烤蒙砂白花纸\r\n尺寸：11X19CM高\r\n4只/五层内盒       16只/大箱\r\n花纸我司供', '4/16', 'PCS', '400', '0', '', null, null, null, null, null, null, null, null, '6.50', '2600.00', null, '25', null, null, null, null, null, null, null, '', '7');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fde6504f0039', '4028817a33fc4e280133fd9f8b4e002f', '2', null, null, null, 'JK169340/13076', '', '全明料蛋糕罩配盘子，罩子上烤蒙砂白花纸		\r\n尺寸：25X26CM高		\r\n1套/保利龙垫/五层内盒		\r\n2套/大箱	此款样品确认后方可生产大货	\r\n花纸我司供，保利龙垫工厂提供', '1/2', 'SETS', '200', '0', '', null, null, null, null, null, null, null, null, '36.00', '7200.00', null, '100', null, null, null, null, null, null, null, '', '8');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fde6504f003a', '4028817a33fc4e280133fd9f8b4e002f', 'ff808081301885760130189e47ca0013', null, null, null, 'JK1400002/13077', '', '全明料竖棱酒壶，磨口抛光\r\n不可有碰口，棱要明显\r\n尺寸：10X24.5CM高\r\n1只/五层内盒   4只/大箱', '1/4', 'PCS', '1200', '0', '', null, null, null, null, null, null, null, null, '13.00', '15600.00', null, '300', null, null, null, null, null, null, null, '', '9');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fde6504f003b', '4028817a33fc4e280133fd9f8b4e002f', '15', null, null, null, 'JK5100005-F/13079', '', '全明料竖棱香槟杯\r\n尺寸：5.5X24.5CM高\r\n4只/三层内盒     24只/大箱', '4/24', 'PCS', '1200', '0', '', null, null, null, null, null, null, null, null, '10.00', '12000.00', null, '50', null, null, null, null, null, null, null, '', '11');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fde6504f003c', '4028817a33fc4e280133fd9f8b4e002f', '13', null, null, null, 'JK1050195/12859', '', '全明料香槟杯\r\n距口部1.5CM烤蒙砂白花纸\r\n尺寸：8X21CM高\r\n4只/五层内盒       16只/大箱\r\n花纸我司供', '4/16', 'PCS', '400', '0', '', null, null, null, null, null, null, null, null, '6.00', '2400.00', null, '25', null, null, null, null, null, null, null, '', '6');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fde6504f003d', '4028817a33fc4e280133fd9f8b4e002f', '15', null, null, null, 'JK5100004/13078', '', '全明料直棱酒杯\r\n尺寸：9.5X18.5CM高\r\n4只/三层内盒      16只/大箱', '4/16', 'PCS', '1200', '0', '', null, null, null, null, null, null, null, null, '8.80', '10560.00', null, '75', null, null, null, null, null, null, null, '', '10');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fde6504f003e', '4028817a33fc4e280133fd9f8b4e002f', '15', null, null, null, 'JK5300006/13080', '', '全明料竖棱糖缸，盖子上带圆头\r\n尺寸：9X8CM高\r\n1只/三层内盒     48只/大箱', '1/48', 'PCS', '1200', '0', '', null, null, null, null, null, null, null, null, '8.50', '10200.00', null, '25', null, null, null, null, null, null, null, '', '12');
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fde6504f003f', '4028817a33fc4e280133fd9f8b4e002f', '15', null, null, null, 'JK5300007/13081', '', '全明料竖棱糖缸，盖子上带圆头\r\n尺寸：9X12CM高\r\n1只/三层内盒     24只/大箱', '1/24', 'PCS', '1200', '0', '', null, null, null, null, null, null, null, null, '9.80', '11760.00', null, '50', null, null, null, null, null, null, null, '', '13');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693820002', '4028817a3420e78a013421a693730001', '4', null, null, null, '4995', 'c7801815-993e-43f0-8ac5-d5d788f34e74.png', '全明料死模风灯，电镀花银喷紫色\r\n明料挺底，电镀喷色我司安排\r\n尺寸：11.5X20.3CM\r\n1只/五层内盒      12只/大箱\r\n白纸，瓦楞纸，气泡纸包裹\r\n1月30日送祁县瑞成电镀厂电镀', '1/12', 'PCS', '300', '300', '', '8.00', '6.00', null, '44.00', '29.00', '50.00', null, null, '8.50', '2550.00', null, '25', '1.80', null, null, null, null, null, null, '', '3');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693820003', '4028817a3420e78a013421a693730001', '4', null, null, null, '4994', 'ae3e208e-8037-41dc-89d3-6727d1403c4c.png', '全明料死模风灯，电镀花银喷浅海蓝\r\n明料挺底,电镀喷色我司安排\r\n尺寸：11.5X20.3CM\r\n1只/五层内盒     12只/大箱\r\n白纸，瓦楞纸，汽泡纸包装\r\n1月30日送祁县瑞成厂电镀', '1/12', 'PCS', '300', '300', '', '8.00', '6.00', null, '44.00', '29.00', '50.00', null, null, '8.50', '2550.00', null, '25', '1.80', null, null, null, null, null, null, '', '2');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693820004', '4028817a3420e78a013421a693730001', '4', null, null, null, '4996', '09b2983e-67b1-4f42-b6ec-0efa99b90cae.png', '全明料死模风灯，电镀花银喷浅绿色\r\n明料挺底，电镀喷色我司安排\r\n尺寸：11.5X30.5CM高\r\n1只/五层内盒      6只/大箱\r\n白纸，瓦楞纸，汽泡纸包裹\r\n1月30日送祁县瑞成电镀厂电镀', '1/6', 'PCS', '300', '300', '', '9.00', '7.00', null, '44.00', '29.00', '38.00', null, null, '10.50', '3150.00', null, '50', '2.20', null, null, null, null, null, null, '', '4');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693820005', '4028817a3420e78a013421a693730001', '2', null, null, null, '5118', 'd2f2ab57-ca50-43ff-87fd-9b6b38d14adc.png', '全明料蛋糕盘+罩子	\r\n罩子上烤白金字母花纸（SWEETS)	\r\n盘子口径16.4CM	\r\n罩子尺寸：15X13CM  全高：26.7CM	\r\n1套/上下保利龙垫/五层内盒 4套/大箱	\r\n花纸我司供，保利龙垫工厂供', '1/4', 'SETS', '300', '300', '', '6.00', '4.00', null, '42.00', '42.00', '27.00', null, null, '16.00', '4800.00', null, '75', '3.60', null, null, null, null, null, null, '', '14');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693820006', '4028817a3420e78a013421a693730001', '4', null, null, null, '4993', '49a9221c-aa5d-42a6-997c-9671c69ebb96.png', '全明料死模风灯，电镀花银喷浅绿色 	\r\n明料挺底，电镀喷色我司安排\r\n尺寸：11.5X20.3CM	\r\n1只/五层内盒      12只/大箱\r\n白纸，瓦楞纸，汽泡纸包裹\r\n1月30日送祁县瑞成电镀厂电镀', '1/12', 'PCS', '300', '300', '', '8.00', '6.00', null, '44.00', '29.00', '50.00', null, null, '8.50', '2550.00', null, '25', '1.80', null, null, null, null, null, null, '', '1');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693820007', '4028817a3420e78a013421a693730001', '2', null, null, null, '5117', '94744a94-9215-425c-8d7c-e6c27b74d47a.png', '全明料蛋糕盘+罩子	\r\n罩上烤白金字母花纸（SWEETS)	\r\n罩子尺寸：15X13CM高	\r\n盘子尺寸：16.4X27CM高	\r\n1套/上下保利龙垫/五层内盒	\r\n4套/大箱	保利龙垫工厂提供\r\n花纸我司供', '1/4', 'SETS', '300', '300', '', '6.00', '4.00', null, '42.00', '42.00', '37.50', null, null, '17.00', '5100.00', null, '75', '3.85', null, null, null, null, null, null, '', '13');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693820008', '4028817a3420e78a013421a693730001', '4028817a33d4f8b40133d9989f5e0024', null, null, null, '5086', 'f9c8b767-01c1-47a1-816c-4203c229f765.png', '全明料冰花风灯，电镀花银喷绿色\r\n尺寸：12.5X20CM高\r\n1只/五层内盒    6只/五层大箱\r\n白纸，瓦楞纸，汽泡纸包裹', '1/6', 'PCS', '300', '300', '', '7.00', '5.00', null, '56.00', '36.00', '24.00', null, null, '13.00', '3900.00', null, '50', '2.50', null, null, null, null, null, null, '', '10');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693820009', '4028817a3420e78a013421a693730001', '1', null, null, null, '5190', 'b0d362a3-2044-4bb8-ad61-0d6228e94110.png', '全明料平光蛋糕罩配钻石盘子\r\n罩子上粘小鸟，小鸟和钻石盘我司供\r\n罩子尺寸：20X20.5CM高\r\n1套/上下保利龙盖/内盒\r\n4套/大箱\r\n保利龙垫工厂供', '1/4', 'SETS', '100', '100', '', '8.00', '6.00', null, '57.00', '56.00', '29.00', null, null, '22.00', '2200.00', null, '25', '6.40', null, null, null, null, null, null, '', '16');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a69382000a', '4028817a3420e78a013421a693730001', '9', null, null, null, '5190', 'de8f61ab-0ce5-4e66-862f-acc66140d77f.png', '全明料钻石蛋糕盘粘底座\r\n \r\n尺寸：23X11.5CM高\r\n安全包装送祁县宏艺厂', '1/4', 'PCS', '100', '100', '', null, null, null, null, null, null, null, null, '8.50', '850.00', null, '25', null, null, null, null, null, null, null, '', '17');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a69382000b', '4028817a3420e78a013421a693730001', '4028817a33d4f8b40133d9989f5e0024', null, null, null, '5084', '4afac9ad-6f75-4186-95e2-0f3c992fd0a8.png', '全明料冰花风灯，电镀花银喷蓝色\r\n尺寸：10X17.5CM高\r\n1只/五层内盒    12只/五层大箱\r\n白纸，瓦楞纸，汽泡纸包裹', '1/12', 'PCS', '300', '300', '', '7.00', '5.00', null, '46.00', '31.00', '42.00', null, null, '11.50', '3450.00', null, '25', '2.05', null, null, null, null, null, null, '', '8');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a69382000c', '4028817a3420e78a013421a693730001', '4028817a33d4f8b40133d9989f5e0024', null, null, null, '5085', '11799ce4-7d8a-451b-8838-6b01f804b8ff.png', '全明料冰花风灯，电镀花银喷紫色\r\n尺寸：10X17.5CM高\r\n1只/五层内盒     12只/五层大箱\r\n白纸，瓦楞纸，汽泡纸包裹', '1/12', 'PCS', '300', '300', '', '7.00', '5.00', null, '46.00', '31.00', '42.00', null, null, '11.50', '3450.00', null, '25', '2.05', null, null, null, null, null, null, '', '9');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a69382000d', '4028817a3420e78a013421a693730001', '7', null, null, null, '5144', '978f44fd-492c-4209-8b4a-6dd58539a14f.png', '全明料钻石蛋糕盘粘底座\r\n喷绿色，喷漆，喷珠光\r\n尺寸：23X11.5CM高\r\n1只/五层内盒      4只/大箱\r\n白纸，瓦楞纸，气泡纸包裹', '1/4', 'PCS', '100', '100', '', '5.50', '3.50', null, '50.00', '26.00', '28.00', null, null, '11.00', '1100.00', null, '25', '2.10', null, null, null, null, null, null, '', '15');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a69382000e', '4028817a3420e78a013421a693730001', '4', null, null, null, '4998', '4c8991c6-227e-4c31-bcf7-539fd002cd12.png', '全明料死模风灯，电镀花银喷紫色\r\n明料挺底,电镀喷色我司安排\r\n尺寸：11.5X30.5CM\r\n1只/五层内盒      6只/大箱\r\n白纸，瓦楞纸，气泡纸\r\n1月30日送祁县瑞成厂电镀', '1/6', 'PCS', '300', '300', '', '9.00', '7.00', null, '44.00', '29.00', '38.00', null, null, '10.50', '3150.00', null, '50', '2.20', null, null, null, null, null, null, '', '6');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a69382000f', '4028817a3420e78a013421a693730001', '4028817a33d4f8b40133d9989f5e0024', null, null, null, '5088', '9926bf89-1345-4082-aeeb-a3f94d0dcc40.png', '全明料冰花风灯，电镀花银喷蓝色\r\n尺寸：12.5X20CM高\r\n1只/五层内盒     6只/五层大箱\r\n白纸，瓦楞纸，汽泡纸包裹', '1/6', 'PCS', '300', '300', '', '7.00', '5.00', null, '56.00', '36.00', '24.00', null, null, '13.00', '3900.00', null, '50', '2.50', null, null, null, null, null, null, '', '11');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693820010', '4028817a3420e78a013421a693730001', '4028817a33d4f8b40133d9989f5e0024', null, null, null, '5089', '22a26221-2c14-4ea4-b972-ebe9df1a27ab.png', '全明料冰花风灯，电镀花银喷紫色\r\n尺寸：12.5X20CM高\r\n1只/五层内盒    6只/五层大箱\r\n白纸，瓦楞纸，气泡纸包裹', '1/6', 'PCS', '300', '300', '', '7.00', '5.00', null, '56.00', '36.00', '24.00', null, null, '13.00', '3900.00', null, '50', '2.50', null, null, null, null, null, null, '', '12');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693920011', '4028817a3420e78a013421a693730001', '4', null, null, null, '4997', 'f62db940-2432-4a7d-946c-22e2ba184d37.png', '全明料死模风灯，电镀花银喷浅海蓝\r\n明料挺底，电镀喷色我司安排\r\n尺寸：11.5X30.5CM\r\n1只/五层内盒      6只/大箱\r\n白纸，瓦楞纸，汽泡纸包裹\r\n1月30日送祁县瑞成电镀厂电镀', '1/6', 'PCS', '300', '300', '', '9.00', '7.00', null, '44.00', '29.00', '38.00', null, null, '10.50', '3150.00', null, '50', '2.20', null, null, null, null, null, null, '', '5');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693920012', '4028817a3420e78a013421a693730001', '4028817a33d4f8b40133d9989f5e0024', null, null, null, '5083', '65fe2446-a833-483a-ad34-dc5da6a7e28a.png', '全明料冰花风灯，电镀花银喷绿色\r\n尺寸：10X17.5CM高\r\n1只/五层内盒     12只/五层大箱\r\n白纸，瓦楞纸，汽泡纸包装', '1/12', 'PCS', '300', '300', '', '7.00', '5.00', null, '46.00', '31.00', '42.00', null, null, '11.50', '3450.00', null, '25', '2.05', null, null, null, null, null, null, '', '7');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421d2e3fe0013', '4028817a3420e78a013421a693730001', '4', null, null, null, '5336', '422bfb7c-ad4e-4098-8953-beca57d6259c.png', '全明料死模风灯，电镀花银喷绿色	\r\n 	\r\n尺寸：14.5X20CM高	\r\n1只/五层内盒      12只/大箱	\r\n1月30日送祁县瑞成电镀缠，电镀喷色我司安排\r\n白纸，瓦楞纸，气泡纸包裹', '1/12', 'PCS', '300', '300', '', '9.00', '7.00', null, '54.00', '36.00', '49.00', null, null, '8.00', '2400.00', null, '25', '2.05', null, null, null, null, null, null, '', '20');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421d2e3fe0014', '4028817a3420e78a013421a693730001', '4', null, null, null, '5331', 'c09ea297-bb5f-47a0-b8a0-0b4419f6e138.png', '全明料死模风灯，电镀花银喷绿色\r\n尺寸：17X23CM高\r\n1只/五层内盒      6只/大箱\r\n1月30日送祁县瑞成电镀厂，我司安排电镀\r\n白纸，瓦楞纸，气泡纸包裹', '1/6', 'PCS', '300', '300', '', '8.00', '6.00', null, '66.00', '44.00', '29.00', null, null, '11.50', '3450.00', null, '50', '2.65', null, null, null, null, null, null, '', '19');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421d2e3fe0015', '4028817a3420e78a013421a693730001', '9', null, null, null, '5190', 'aa3e7517-3227-41ff-b239-a5a6d5c00939.png', '机压小鸟,表面要光滑\r\n\r\n安全包装送祁县宏艺厂\r\n请提供一定余量，以备损耗', '1/4', 'PCS', '100', '100', '', null, null, null, null, null, null, null, null, '2.40', '240.00', null, '25', null, null, null, null, null, null, null, '', '18');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421e2e3c10016', '4028817a3420e78a013421a693730001', '4', null, null, null, '5400', 'f475d46e-733a-4220-8243-98ba76f09ddc.png', '全明料死模风灯，电镀花银喷蓝色\r\n \r\n尺寸：17X23CM高\r\n1只/五层内盒      6只/大箱\r\n电镀喷色我司安排\r\n1月30日送祁县瑞成电镀厂\r\n白纸，瓦楞纸，气泡纸包裹', '1/6', 'PCS', '300', '300', '', '8.00', '6.00', null, '66.00', '44.00', '29.00', null, null, '11.50', '3450.00', null, '50', '2.65', null, null, null, null, null, null, '', '22');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421e2e3c10017', '4028817a3420e78a013421a693730001', '7', null, null, null, '9749', '3d52357d-71bf-4ac1-b7f0-38b640a2d349.png', '怪虫小碗，喷绿色，喷漆，喷珠光\r\n\r\n尺寸:18X9CM高\r\n4只/内盒        8只/大箱\r\n白纸，瓦楞纸，气泡纸包裹', '4/8', 'PCS', '600', '600', '', '6.50', '4.50', null, '39.00', '20.00', '20.00', null, null, '6.50', '3900.00', null, '75', '1.29', null, null, null, null, null, null, '', '28');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421e2e3c10018', '4028817a3420e78a013421a693730001', '2', null, null, null, '8759', 'c5f0d6c6-275f-4fb4-b468-a9be38f85f02.png', '全明料糖缸带盖子\r\n尺寸：16.5X40CM高\r\n1只/上下保利龙垫/内盒 2只/大箱\r\n保利龙垫工厂供\r\n此数量出自订单C/3908/11', '1/2', 'PCS', '600', '600', '', '4.00', '2.00', null, '44.00', '22.00', '45.00', null, null, '15.00', '9000.00', null, '300', '2.85', null, null, null, null, null, null, '', '27');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421e2e3c10019', '4028817a3420e78a013421a693730001', '7', null, null, null, '8709', '2720f819-b111-4aeb-b5e8-abc262dc5a7b.png', '怪虫小碗，喷蓝色，喷漆，喷珠光\r\n \r\n尺寸：18X9CM高\r\n4只/内盒        8只/大箱\r\n白纸，瓦楞纸，气泡纸包裹', '4/8', 'PCS', '600', '600', '', '6.50', '4.50', null, '39.00', '20.00', '20.00', null, null, '6.50', '3900.00', null, '75', '1.29', null, null, null, null, null, null, '', '26');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421e2e3c1001a', '4028817a3420e78a013421a693730001', '4', null, null, null, '5337', 'c2ff4999-1ea3-479d-8859-3302bb0e9d77.png', '全明料死模风灯，电镀花银喷蓝色	\r\n	\r\n尺寸：14.5X20CM高	\r\n1只/五层内盒      12只/大箱	\r\n1月30日送祁县瑞成电镀厂，电镀喷色我司安排	\r\n白纸，瓦楞纸，气泡纸包裹', '1/12', 'PCS', '300', '300', '', '9.00', '7.00', null, '54.00', '36.00', '49.00', null, null, '8.00', '2400.00', null, '25', '2.05', null, null, null, null, null, null, '', '21');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421e2e3c1001b', '4028817a3420e78a013421a693730001', '7', null, null, null, '8708', 'cd89d279-e040-4647-a89f-59bfee1d6db9.png', '怪虫小碗，喷紫色，喷漆，喷珠光\r\n \r\n尺寸：18X9CM高\r\n4只/内盒        8只/大箱\r\n白纸，瓦楞纸，气泡纸', '4/8', 'PCS', '600', '600', '', '6.50', '4.50', null, '39.00', '20.00', '20.00', null, null, '6.50', '3900.00', null, '75', '1.29', null, null, null, null, null, null, '', '25');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421e2e3c1001c', '4028817a3420e78a013421a693730001', '2', null, null, null, '843MA', '6b4da997-ad8c-4101-90cb-1c554c356bb1.png', '全明料喇叭底糖缸，带盖子	\r\n盖子：10CMX10.3CM高 壁厚3MM	\r\n身子：11.2X31.7CM(全高） 底径12CM	\r\n壁厚不小于3MM  重量不低于950克	\r\n1只/上下保利龙垫/内盒   4只/大箱	\r\n保利龙垫工厂提供	\r\n此数量出自订单C/3908/11', '1/4', 'PCS', '600', '600', '', '6.00', '4.00', null, '48.00', '47.00', '46.00', null, null, '16.00', '9600.00', null, '150', '3.29', null, null, null, null, null, null, '', '23');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421e2e3c1001d', '4028817a3420e78a013421a693730001', '2', null, null, null, '844MA', '19dd24a2-4eb2-4273-a46a-229d28aeee85.png', '全明料糖缸带盖子\r\n盖子：9.3X13.3CM高 壁厚3MM\r\n身子：10.5X28.4CM(全高)\r\n底径：13CM   壁厚不小于3MM\r\n1只/上下保利龙垫/内盒 4只/大箱\r\n保利龙垫工厂供\r\n此单数量出自C/3908/11', '1/4', 'PCS', '600', '600', '', '6.00', '4.00', null, '47.00', '46.00', '46.00', null, null, '16.00', '9600.00', null, '150', '3.29', null, null, null, null, null, null, '', '24');
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421e53b8c001e', '4028817a3420e78a013421a693730001', '2', null, null, null, '9868', '6bf2fdf5-6d7e-4147-b40c-6eddf95abcd8.png', '全明料喇叭底糖缸配盖子\r\n尺寸：5-1/4\"X17\"H\r\n1只/上中下泡沫垫/内盒 2只/大箱\r\n保利龙垫工厂供\r\n从数量出自订单C/3908/11', '1/2', 'PCS', '600', '600', '', '4.00', '2.00', null, '44.00', '22.00', '43.00', null, null, '16.00', '9600.00', null, '300', '3.15', null, null, null, null, null, null, '', '29');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d0047', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', null, null, null, '5089', '2c991b9e-a14b-4f37-a2ca-5e7d01cba021.jpg', '全明料冰花风灯，电镀花银喷紫色。\r\n尺寸:12.5*20 CM H\r\n1只/五层内盒        6只/五层大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '1/6', 'PCS', '204', '204', '', '7.00', '5.00', null, '54.00', '36.00', '24.00', null, null, '13.00', '2652.00', null, '34', '2.50', null, null, null, null, null, null, '', '3');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d0048', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', null, null, null, '5094', '7ae1ccaa-426b-4476-bc6a-28258d735fbd.jpg', '全明料冰花风灯，粘电镀底座  	\r\n尺寸：15.8X32CM高		\r\n1只/五层内盒     6只/五层大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '1/6', 'PCS', '150', '150', '', '7.00', '5.00', null, '54.00', '36.00', '37.00', null, null, '14.50', '2175.00', null, '25', '2.80', null, null, null, null, null, null, '', '7');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d0049', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', null, null, null, '5093', '796ec9af-d6bb-4511-a6c6-6d75bcc1f2e3.jpg', '全明料冰花风灯粘电镀底座， 	\r\n喷紫色，全喷，内电镀花银	\r\n尺寸：15.8X32CM高		\r\n1只/五层内盒     6只/五层大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '1/6', 'PCS', '102', '102', '', '7.00', '5.00', null, '54.00', '36.00', '37.00', null, null, '16.00', '1632.00', null, '17', '3.10', null, null, null, null, null, null, '', '6');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d004a', '4028817a353b8d8e01353d15008d0046', '7', null, null, null, '5099', '9586c248-7796-4f99-b648-f913e65250f3.jpg', '全明料钻石蛋糕盘粘底座	\r\n喷蓝色，喷漆,喷珠光		\r\n尺寸：23X11.5CM高		\r\n1只/五层内盒      4只/大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '1/4', 'PCS', '152', '152', '', '5.50', '3.50', null, '50.00', '26.00', '28.00', null, null, '11.00', '1672.00', null, '38', '2.10', null, null, null, null, null, null, '', '10');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d004b', '4028817a353b8d8e01353d15008d0046', '7', null, null, null, '5098', 'bb0e509f-ccb0-44f4-8320-df18ff6ac880.jpg', '全明料钻石蛋糕盘粘底座	\r\n喷紫色，喷漆,喷珠光		\r\n尺寸：23X11.5CM高		\r\n1只/五层内盒      4只/大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '1/4', 'PCS', '152', '152', '', '5.50', '3.50', null, '50.00', '26.00', '28.00', null, null, '11.00', '1672.00', null, '38', '2.10', null, null, null, null, null, null, '', '9');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d004c', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', null, null, null, '5090', '2ec05114-5c74-4211-b254-4d979218c05e.jpg', '全明料冰花风灯粘电镀底座， 	\r\n喷蓝色，全喷，内电镀花银	\r\n尺寸：15.8X32CM高		\r\n1只/五层内盒     6只/五层大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '1/6', 'PCS', '102', '102', '', '7.00', '5.00', null, '54.00', '36.00', '37.00', null, null, '16.00', '1632.00', null, '17', '3.10', null, null, null, null, null, null, '', '4');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d004d', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', null, null, null, '5088', '9488192b-fb0f-4aa5-9e29-86de71d05675.jpg', '全明料冰花风灯，电镀花银喷蓝色。\r\n尺寸:12.5*20 CM H\r\n1只/五层内盒        6只/五层大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '1/6', 'PCS', '204', '204', '', '7.00', '5.00', null, '54.00', '36.00', '24.00', null, null, '13.00', '2652.00', null, '34', '2.50', null, null, null, null, null, null, '', '2');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d004e', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', null, null, null, '5092', '289d254d-0f0d-4671-9376-d04cc36540d2.jpg', '全明料冰花风灯粘电镀底座， 	\r\n喷绿色，全喷，内电镀花银	\r\n尺寸：15.8X32CM高		\r\n1只/五层内盒     6只/五层大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '1/6', 'PCS', '102', '102', '', '7.00', '5.00', null, '54.00', '36.00', '37.00', null, null, '16.00', '1632.00', null, '17', '3.10', null, null, null, null, null, null, '', '5');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d004f', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', null, null, null, '5095', '01349ede-bef9-4168-a346-e109e3111773.jpg', '全明料冰花风灯，粘明料底座 	\r\n尺寸：15.8X32CM高		\r\n1只/五层内盒    6只/五层大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '1/6', 'PCS', '150', '150', '', '7.00', '5.00', null, '54.00', '36.00', '37.00', null, null, '14.00', '2100.00', null, '25', '2.80', null, null, null, null, null, null, '', '8');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d0050', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', null, null, null, '5086', '3c77a543-f2f2-4cf3-b173-8ef1d1a1f8be.jpg', '全明料冰花风灯，电镀花银喷绿色。\r\n尺寸:12.5*20 CM H\r\n1只/五层内盒        6只/五层大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '1/6', 'PCS', '204', '204', '', '7.00', '5.00', null, '54.00', '36.00', '24.00', null, null, '13.00', '2652.00', null, '34', '2.50', null, null, null, null, null, null, '', '1');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d0051', '4028817a353b8d8e01353d15008d0046', '2', null, null, null, '5117', 'aec0cd7f-795e-4c5f-b8c5-532b6479c4be.jpg', '全明料蛋糕盘+罩子		\r\n罩上烤白金字母花纸（SWEETS)	\r\n罩子尺寸：15X13CM高		\r\n盘子尺寸：16.4X27CM高		\r\n1套/上下保利龙垫/五层内盒	\r\n4套/大箱			\r\n产品配套合适后用保丽龙垫包装，入内盒，大箱用胶带纸工字封口。\r\n花纸我司供，保利龙垫工厂供', '1/4', 'SETS', '100', '100', '', '6.00', '4.00', null, '42.00', '42.00', '37.50', null, null, '17.00', '1700.00', null, '25', '3.85', null, null, null, null, null, null, '', '11');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d0052', '4028817a353b8d8e01353d15008d0046', '9', null, null, null, '5191', '5a77aec3-1299-4b75-8ff4-5c7232d0a8c6.jpg', '机压小鸟,表面要光滑		\r\n安全包装送祁县宏艺厂		\r\n请提供一定余量，以备损耗', '1/2', 'PCS', '100', '100', '', null, null, null, null, null, null, null, null, '2.40', '240.00', null, '50', null, null, null, null, null, null, null, '', '19');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d0053', '4028817a353b8d8e01353d15008d0046', '7', null, null, null, '5144', '91d36961-2e9e-44cc-94ed-44ab4d6a24e4.jpg', '全明料钻石蛋糕盘粘底座	\r\n喷绿色，喷漆，喷珠光		\r\n尺寸：23X11.5CM高		\r\n1只/五层内盒      4只/大箱	\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '1/4', 'PCS', '152', '152', '', '5.50', '3.50', null, '50.00', '26.00', '28.00', null, null, '11.00', '1672.00', null, '38', '2.10', null, null, null, null, null, null, '', '13');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d0054', '4028817a353b8d8e01353d15008d0046', '9', null, null, null, '5191', '06191cc8-a932-4f7a-a951-eabbd4336f13.jpg', '全明料钻石蛋糕盘粘底座	\r\n尺寸：29.5X11.5CM高		\r\n安全包装送祁县宏艺厂', '1/2', 'PCS', '100', '100', '', null, null, null, null, null, null, null, null, '10.00', '1000.00', null, '50', null, null, null, null, null, null, null, '', '18');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d0055', '4028817a353b8d8e01353d15008d0046', '2', null, null, null, '5118', 'b76467e5-21b5-4102-8085-f0d14189e257.jpg', '全明料蛋糕盘+罩子		\r\n罩子上烤白金字母花纸（SWEETS)	\r\n罩子尺寸：15X13CM 		\r\n盘子尺寸：16.4X16.5CM高\r\n全高：26.7CM		\r\n1套/上下保利龙垫/五层内盒   4套/大箱\r\n产品配套合适后用保丽龙垫包装，入内盒，大箱用胶带纸工字封口。	\r\n花纸我司供，保利龙垫工厂供', '1/4', 'SETS', '152', '152', '', '6.00', '4.00', null, '42.00', '42.00', '27.00', null, null, '16.00', '2432.00', null, '38', '3.60', null, null, null, null, null, null, '', '12');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d0056', '4028817a353b8d8e01353d15008d0046', '9', null, null, null, '5190', '9a6203d7-01b0-4ebe-bc08-d390b5ecd46a.jpg', '机压小鸟,表面要光滑		\r\n安全包装送祁县宏艺厂		\r\n请提供一定余量，以备损耗', '1/4', 'PCS', '100', '100', '', null, null, null, null, null, null, null, null, '2.40', '240.00', null, '25', null, null, null, null, null, null, null, '', '16');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d0057', '4028817a353b8d8e01353d15008d0046', '4', null, null, null, '5337', 'ecc411bc-b3ce-4175-9e96-17014661c601.jpg', '全明料死模风灯，电镀花银喷蓝色	\r\n尺寸：14.5X20CM高		\r\n1只/五层内盒      12只/大箱	\r\n电镀喷色我司安排\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '1/12', 'PCS', '156', '156', '', '9.00', '7.00', null, '54.00', '36.00', '49.00', null, null, '8.00', '1248.00', null, '13', '2.05', null, null, null, null, null, null, '', '22');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d0058', '4028817a353b8d8e01353d15008d0046', '9', null, null, null, '5190', '9196fdca-db89-42a3-99d8-6a168479344c.jpg', '全明料钻石蛋糕盘粘底座	\r\n尺寸：23X11.5CM高		\r\n安全包装送祁县宏艺厂', '1/4', 'PCS', '100', '100', '', null, null, null, null, null, null, null, null, '8.50', '850.00', null, '25', null, null, null, null, null, null, null, '', '15');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d0059', '4028817a353b8d8e01353d15008d0046', '1', null, null, null, '5190', 'a3c28393-5d85-4ab5-8f9b-c10d8becf945.jpg', '全明料平光蛋糕罩配钻石盘子	\r\n罩子上粘小鸟，小鸟和钻石盘我司供\r\n罩子尺寸：20X20.5CM高		\r\n1套/上下保利龙盖/内盒		\r\n4套/大箱			\r\n保利龙垫工厂供\r\n产品用保丽龙包装后入内盒，大箱，大箱用胶带纸工字封口。', '1/4', 'PCS', '100', '100', '', '8.00', '6.00', null, '57.00', '56.00', '29.00', null, null, '22.00', '2200.00', null, '25', '6.40', null, null, null, null, null, null, '', '14');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d005a', '4028817a353b8d8e01353d15008d0046', '4', null, null, null, '5330', '75849bf7-f9a2-4f74-853e-baefef078d93.jpg', '全明料死模风灯，电镀花银喷紫色	\r\n尺寸：14.5X20CM高		\r\n1只/五层内盒      12只/大箱	\r\n电镀喷色我司安排\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '1/12', 'PCS', '156', '156', '', '9.00', '7.00', null, '54.00', '36.00', '49.00', null, null, '8.00', '1248.00', null, '13', '2.05', null, null, null, null, null, null, '', '20');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d005b', '4028817a353b8d8e01353d15008d0046', '4', null, null, null, '5336', '5fe32315-0fb6-4a84-bb82-61b27ef3a8e3.jpg', '全明料死模风灯，电镀花银喷绿色	\r\n尺寸：14.5X20CM高		\r\n1只/五层内盒      12只/大箱	\r\n电镀喷色我司安排\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '1/12', 'PCS', '156', '156', '', '9.00', '7.00', null, '54.00', '36.00', '49.00', null, null, '8.00', '1248.00', null, '13', '2.05', null, null, null, null, null, null, '', '21');
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32353c005c', '4028817a353b8d8e01353d15008d0046', '1', null, null, null, '5191', '135fbc3e-1c1d-4188-91e0-6a54cb0e2901.jpg', '全明料平光蛋糕罩配钻石盘子	\r\n罩子上粘小鸟，小鸟和钻石盘我司供\r\n罩子尺寸：26X36CM高		\r\n1套/上下保利龙盖/内盒		\r\n2套/大箱			\r\n保利龙垫工厂供\r\n产品用保丽龙包装后入内盒，大箱，大箱用胶带纸工字封口。', '1/2', 'PCS', '100', '100', '', '6.50', '4.50', null, '71.00', '36.00', '34.00', null, null, '32.00', '3200.00', null, '50', '8.55', null, null, null, null, null, null, '', '17');

-- ----------------------------
-- Table structure for `dept_p`
-- ----------------------------
DROP TABLE IF EXISTS `dept_p`;
CREATE TABLE `dept_p` (
  `DEPT_ID` varchar(40) NOT NULL,
  `DEPT_NAME` varchar(100) DEFAULT NULL,
  `DEPT_NAME_SHORT` varchar(100) DEFAULT NULL,
  `DEPT_NAME_FULL` varchar(100) DEFAULT NULL,
  `DEPT_DESC` varchar(100) DEFAULT NULL,
  `PARENT_ID` varchar(40) DEFAULT NULL,
  `PARENT_NAME` varchar(100) DEFAULT NULL,
  `LAYER_NUM` int(11) DEFAULT NULL,
  `IS_DUTY_LEVEL` char(1) DEFAULT NULL,
  `IS_TEAM` char(1) DEFAULT NULL,
  `IS_LEAF` char(1) DEFAULT NULL,
  `IS_USE` char(1) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  `DEPT_LEVEL` int(11) DEFAULT NULL,
  `CREATED_BY` varchar(40) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(40) DEFAULT NULL,
  `UPDATED_TIME` datetime DEFAULT NULL,
  `BASED_TIME` datetime DEFAULT NULL,
  `DUTY_LEVEL` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept_p
-- ----------------------------
INSERT INTO `dept_p` VALUES ('0', '组织机构', '组织机构', '组织机构', 'root', '-1', null, '1', '1', '0', '0', '1', '1', '0', null, '2010-09-16 16:01:37', null, '2010-09-16 16:01:37', null, '0');
INSERT INTO `dept_p` VALUES ('0001', '杰信商贸', '杰信商贸', '杰信商贸', '组织机构', '0', null, '1', '1', '0', '0', '1', '1', '1', null, '2009-05-23 11:23:39', null, '2009-05-23 11:23:39', null, '0001');
INSERT INTO `dept_p` VALUES ('0001001', '开发部', '开发部', '开发部', '', '0001', '杰信商贸', '2', '1', '0', '1', '1', null, null, '001', '2011-07-16 07:38:37', null, null, null, '0001001');
INSERT INTO `dept_p` VALUES ('0001002', '销售部', '销售部', '销售部', '', '0001', '杰信商贸', '2', '1', '1', '1', '1', null, null, '001', '2011-07-16 07:39:18', null, null, null, '0001002');
INSERT INTO `dept_p` VALUES ('0001003', '船务部', '船务部', '船务部', '', '0001', '杰信商贸', '2', '1', '0', '1', '1', null, null, '001', '2011-07-16 07:39:56', null, null, null, '0001003');
INSERT INTO `dept_p` VALUES ('0001004', '财务部', '财务部', '财务部', '', '0001', '杰信商贸', '2', '1', '0', '1', '1', null, null, '001', '2011-07-16 07:40:18', null, null, null, '0001004');

-- ----------------------------
-- Table structure for `exam_paper_c`
-- ----------------------------
DROP TABLE IF EXISTS `exam_paper_c`;
CREATE TABLE `exam_paper_c` (
  `EXAM_PAPER_ID` varchar(40) NOT NULL,
  `REPORT_CARD_ID` varchar(40) DEFAULT NULL,
  `TITLE` varchar(200) DEFAULT NULL COMMENT '冗余=TEST_QUESTION_C',
  `CONTENT` varchar(2000) DEFAULT NULL COMMENT '冗余=TEST_QUESTION_C',
  `ANSWER` varchar(2000) DEFAULT NULL COMMENT '冗余=TEST_QUESTION_C',
  `INPUT_ANSWER` varchar(2000) DEFAULT NULL,
  `CTYPE` int(11) DEFAULT NULL COMMENT '冗余=TEST_QUESTION_C',
  `SCORE` decimal(8,2) DEFAULT NULL COMMENT '冗余=TEST_QUESTION_C',
  `TOTAL_SCORE` decimal(8,2) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  PRIMARY KEY (`EXAM_PAPER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam_paper_c
-- ----------------------------
INSERT INTO `exam_paper_c` VALUES ('402880ee410310d00141031f71580003', '402880ee410310d00141031f71580002', '1', '2', 'A', 'A', '1', '5.00', null, null);
INSERT INTO `exam_paper_c` VALUES ('402880ee410310d00141031f71580004', '402880ee410310d00141031f71580002', '遵守教学纪律，无迟到，提前下课，上课拨接手机等现象', 'A.非常满意|B.比较满意|C.基本满意|D.不太满意|E.非常不满意', 'A', 'A', '1', '10.00', null, null);
INSERT INTO `exam_paper_c` VALUES ('402880ee410310d00141031f71580005', '402880ee410310d00141031f71580002', '3', '4', 'A', 'A', '1', '7.00', null, null);
INSERT INTO `exam_paper_c` VALUES ('402880ee410310d00141032789ac0007', '402880ee410310d00141032789ac0006', '3', '4', 'A', 'A', '1', '7.00', null, null);
INSERT INTO `exam_paper_c` VALUES ('402880ee410310d00141032789ac0008', '402880ee410310d00141032789ac0006', '1', '2', 'A', 'A', '1', '5.00', null, null);
INSERT INTO `exam_paper_c` VALUES ('402880ee410310d00141032789ac0009', '402880ee410310d00141032789ac0006', '遵守教学纪律，无迟到，提前下课，上课拨接手机等现象', 'A.非常满意|B.比较满意|C.基本满意|D.不太满意|E.非常不满意', 'A', 'A', '1', '10.00', null, null);

-- ----------------------------
-- Table structure for `export_c`
-- ----------------------------
DROP TABLE IF EXISTS `export_c`;
CREATE TABLE `export_c` (
  `EXPORT_ID` varchar(40) NOT NULL,
  `PACKING_LIST_ID` varchar(40) NOT NULL,
  `CONTRACT_ID` varchar(40) NOT NULL,
  `INPUT_DATE` datetime DEFAULT NULL,
  `CONTRACT_IDS` varchar(200) DEFAULT NULL,
  `CUSTOMER_CONTRACT` varchar(200) DEFAULT NULL COMMENT '客户的合同号,可选择多个合同',
  `LCNO` varchar(10) DEFAULT NULL COMMENT 'L/C T/T',
  `CONSIGNEE` varchar(100) DEFAULT NULL,
  `MARKS` varchar(1000) DEFAULT NULL,
  `SHIPMENT_PORT` varchar(100) DEFAULT NULL,
  `DESTINATION_PORT` varchar(100) DEFAULT NULL,
  `TRANSPORT_MODE` varchar(10) DEFAULT NULL COMMENT 'SEA/AIR',
  `PRICE_CONDITION` varchar(10) DEFAULT NULL COMMENT 'FBO/CIF',
  `REMARK` varchar(100) DEFAULT NULL,
  `BOX_NUM` int(11) DEFAULT NULL,
  `CNUMBER` int(11) DEFAULT NULL,
  `PACKING_UNIT` varchar(10) DEFAULT NULL COMMENT 'PCS/SETS',
  `GROSS_WEIGHT` decimal(10,2) DEFAULT NULL,
  `NET_WEIGHT` decimal(10,2) DEFAULT NULL,
  `SIZE_LENGTH` decimal(10,2) DEFAULT NULL,
  `SIZE_WIDTH` decimal(10,2) DEFAULT NULL,
  `SIZE_HEIGHT` decimal(10,2) DEFAULT NULL,
  `CSIZE` decimal(10,2) DEFAULT NULL,
  `AMOUNT` decimal(10,2) DEFAULT NULL COMMENT '自动计算: 数量x单价',
  `NO_TAX` decimal(10,2) DEFAULT NULL COMMENT '收购单价',
  `TAX` decimal(10,2) DEFAULT NULL COMMENT '收购单价',
  `COST_PRICE` decimal(10,2) DEFAULT NULL COMMENT '自动计算=数量x含税/1.17标准值',
  `COST_TAX` decimal(10,2) DEFAULT NULL COMMENT '自动计算=数量x含税-收购成本金额',
  `STATE` int(11) DEFAULT NULL COMMENT '0草稿 1上报',
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `CREATE_DEPT` varchar(40) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`EXPORT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of export_c
-- ----------------------------
INSERT INTO `export_c` VALUES ('4028817a384511ae0138464c953f000b', '', '', '2012-07-02 00:00:00', null, '12JK1061', null, 'BRISSI CONTEMPORARY LIVING', 'BRISSI', 'XINGANG', '', null, 'FOB', '7月5日货好', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `export_c` VALUES ('4028817a387362980138738ab18c0001', '', '', '2012-07-11 00:00:00', '4028817a371a8d7f01372a6e236b0059', '12JK1039', 'T/T', 'PALDINOX', 'PALDINOX', 'XINGANG', 'ASHDOD', 'SEA', 'FOB', '7月23日货好', '1233', '7024', 'P\'KGS', '8754.50', '92.50', null, null, null, '52.04', null, null, null, null, null, '5', 'ff80808131301abf0131303fe2e40038', '0001002', '2012-07-11 09:07:11');
INSERT INTO `export_c` VALUES ('4028817a387db33d01387faba0180013', '', '', '2012-07-13 00:00:00', '4028817a3790d06f013792b094da001b', 'C/1655/12', 'T/T', 'BEAKIE LEE', 'MARMAXX', 'XINGANG', '', 'SEA', 'FOB', '', '567', '3402', 'PCS', '4494.00', '90.00', null, null, null, '33.19', null, null, null, null, null, '3', 'ff80808131301abf0131303fe2e40038', '0001002', '2012-07-13 17:34:52');
INSERT INTO `export_c` VALUES ('4028817a38fe72b00139002e9811000e', '', '', '2012-08-07 00:00:00', '4028817a371562cf0137174b533b002f', '12JK1062', 'T/T', 'BRISSI', 'BRISSI', 'XINGANG', null, 'SEA', '', '9月15日货好', '433', '5136', 'PCS', '2799.50', '58.50', null, null, null, '24.68', null, null, null, null, null, '5', 'ff80808131301abf0131303fe2e40038', '0001002', '2012-09-10 16:44:45');
INSERT INTO `export_c` VALUES ('4028817a399492a20139951fbe440002', '', '', '2012-09-05 00:00:00', '4028817a37aa9d700137aae555030006', 'C/1743/12', 'T/T', 'BEAKIE LEE', 'TJX', 'XINGANG', 'LOS ANGELES', 'SEA', 'FOB', '', '3100', '12000', 'PCS', '19075.00', '45.00', null, null, null, '237.50', null, null, null, null, null, '5', 'ff80808131301abf0131303fe2e40038', '0001002', '2012-09-05 14:39:56');
INSERT INTO `export_c` VALUES ('4028817a399492a2013995aaef23001d', '', '', '2012-09-05 00:00:00', '4028817a387362980138751919fa0057', '018273', 'T/T', 'CIRCLE', 'CIRCLE', 'XINGANG', 'NEWARK', 'SEA', 'FOB', '20号验货', '1796', '21552', 'PCS', '8282.00', '30.00', null, null, null, '56.60', null, null, null, null, null, '5', 'ff80808131301abf0131303fe2e40038', '0001002', '2012-09-05 17:06:49');
INSERT INTO `export_c` VALUES ('4028817a3a714bbf013a77d70ea8002c', '', '', '2012-10-19 00:00:00', '4028817a39ad8b950139af09b42f000e', 'C/2192/12', 'T/T', 'BEAKIE LEE', 'GSA', 'XINGANG', null, 'SEA', 'FOB', '', '324', '648', 'PCS', '3888.00', '10.00', null, null, null, '29.95', null, null, null, null, null, '5', 'ff80808131301abf0131303fe2e40038', '0001002', '2012-11-07 09:48:31');
INSERT INTO `export_c` VALUES ('4028817a3add7a3b013ade8e067e000b', '', '', '2012-11-08 00:00:00', '4028817a39bcfe9f0139be8f8ac2000c', '12JK1081', 'T/T', 'BRISSI', 'BRISSI', 'XINGANG', null, 'SEA', 'FOB', '', '374', '5006', 'P\'KGS', '2607.50', '82.50', null, null, null, '20.58', null, null, null, null, null, '4', 'ff80808131301abf0131303fe2e40038', '0001002', '2012-11-21 17:28:21');
INSERT INTO `export_c` VALUES ('4028817a3af21635013af27be5b80001', '', '', '2012-11-12 00:00:00', '4028817a39227b17013924437cb7000a,4028817a39dbdfca0139dc98f58c000a', '101204', 'T/T', 'KISS THAT FROG', '', 'XINGANG', 'OAKLAND', 'SEA', 'FOB', '升华厂12月5号\r\n会龙厂11月13号', '1407', '29212', 'PCS', '11781.50', '117.50', null, null, null, '51.87', null, null, null, null, null, '3', 'ff80808131301abf01313040e6b7003b', '0001003', '2012-11-14 10:31:28');
INSERT INTO `export_c` VALUES ('4028817a3b06ac0c013b06c618710001', '', '', '2012-11-16 00:00:00', '4028817a39facfc90139fb6f6c160001', '12JK1089', 'T/T', 'SEPTEMBER MOON', '', 'XINGANG', 'SHIMIZU', 'SEA', 'FOB', '23号货好', '250', '1800', 'SETS', '1950.00', '17.50', null, null, null, '16.70', null, null, null, null, null, '4', 'ff80808131301abf0131303fe2e40038', '0001002', '2012-11-16 09:14:38');
INSERT INTO `export_c` VALUES ('4028817a3b1b4a71013b1bafd5580002', '', '', '2012-11-20 00:00:00', '4028817a387362980138741de87f0014', 'C/1995/12', 'T/T', 'BEAKIE LEE', '', 'XINGANG', null, 'SEA', 'FOB', '', '600', '1200', 'SETS', '4800.00', '6.00', null, null, null, '41.51', null, null, null, null, null, '0', 'ff80808131301abf0131303fe2e40038', '0001002', '2012-11-20 10:41:10');
INSERT INTO `export_c` VALUES ('4028817a3b3a59cd013b3b5bbd94001a', '', '', '2012-11-26 00:00:00', '4028817a3aa9f950013aab27e2010010', '671112', 'T/T', 'BTC', '', 'XINGANG', 'SANTOS', 'SEA', 'FOB', '', '145', '475', 'SETS', '864.00', '92.00', null, null, null, '7.77', null, null, null, null, null, '4', 'ff80808131301abf01313040e6b7003b', '0001003', '2012-11-26 14:19:20');
INSERT INTO `export_c` VALUES ('4028817a3b3a59cd013b3b96187b0033', '', '', '2012-11-26 00:00:00', '4028817a3a670a6f013a68766d460001', 'C/2256/12', 'T/T', 'BEAKIE LEE', 'HOME', 'XINGANG', '', 'SEA', 'FOB', '12月5日货好', '900', '3600', 'PCS', '5100.00', '22.00', null, null, null, '39.69', null, null, null, null, null, '3', 'ff80808131301abf0131303fe2e40038', '0001002', '2012-11-26 15:21:33');
INSERT INTO `export_c` VALUES ('4028817a3b3a59cd013b3ba084c1003a', '', '', '2012-11-26 00:00:00', '4028817a39991fae01399ad24e5a0027', '404058', 'T/T', '@ HOME', '@HOME', 'XINGANG', null, 'SEA', 'FOB', '货已好==', '100', '2400', 'PCS', '950.00', '7.50', null, null, null, '4.60', null, null, null, null, null, '1', 'ff8080813d00613e013d006644a60003', '0001', '2013-03-17 00:41:36');
INSERT INTO `export_c` VALUES ('402881e63d9b1903013d9b4bc72c000b', '', '', '2013-03-05 00:00:00', null, 'C/3817/11,11JK1080,11JK1078', 'T/T', '人及地址', '唛头', '装运港', '', 'AIR', '价格条', '备注', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null);

-- ----------------------------
-- Table structure for `export_product_c`
-- ----------------------------
DROP TABLE IF EXISTS `export_product_c`;
CREATE TABLE `export_product_c` (
  `EXPORT_PRODUCT_ID` varchar(40) NOT NULL,
  `CONTRACT_PRODUCT_ID` varchar(40) NOT NULL COMMENT '标识从哪个合同货物而来',
  `EXPORT_ID` varchar(40) DEFAULT NULL,
  `FACTORY_ID` varchar(40) DEFAULT NULL,
  `CONTRACT_ID` varchar(40) DEFAULT NULL,
  `CONTRACT_NO` varchar(20) DEFAULT NULL,
  `PRODUCT_NAME` varchar(200) DEFAULT NULL,
  `PRODUCT_NO` varchar(50) DEFAULT NULL,
  `PRODUCT_IMAGE` varchar(200) DEFAULT NULL,
  `PRODUCT_DESC` varchar(600) DEFAULT NULL,
  `LOADING_RATE` varchar(30) DEFAULT NULL COMMENT 'x/y',
  `PACKING_UNIT` varchar(10) DEFAULT NULL COMMENT 'PCS/SETS',
  `CNUMBER` int(11) DEFAULT NULL,
  `OUT_NUMBER` int(11) DEFAULT NULL,
  `FINISHED` bit(1) DEFAULT NULL,
  `GROSS_WEIGHT` decimal(10,2) DEFAULT NULL,
  `NET_WEIGHT` decimal(10,2) DEFAULT NULL,
  `SIZE_LENGTH` decimal(10,2) DEFAULT NULL,
  `SIZE_WIDTH` decimal(10,2) DEFAULT NULL,
  `SIZE_HEIGHT` decimal(10,2) DEFAULT NULL,
  `PRODUCT_REQUEST` varchar(2000) DEFAULT NULL,
  `FACTORY` varchar(200) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `AMOUNT` decimal(10,2) DEFAULT NULL COMMENT '自动计算: 数量x单价',
  `CUNIT` varchar(10) DEFAULT NULL,
  `BOX_NUM` int(11) DEFAULT NULL,
  `EX_PRICE` decimal(10,2) DEFAULT NULL COMMENT 'sales confirmation 中的价格（手填）',
  `EX_UNIT` varchar(10) DEFAULT NULL COMMENT '$/￥',
  `NO_TAX` decimal(10,2) DEFAULT NULL COMMENT '空着,EXCEL手工填',
  `TAX` decimal(10,2) DEFAULT NULL COMMENT '收购单价=合同单价',
  `COST_PRICE` decimal(10,2) DEFAULT NULL COMMENT '自动计算=数量x含税/1.17标准值',
  `COST_TAX` decimal(10,2) DEFAULT NULL COMMENT '自动计算=数量x含税-收购成本金额',
  `ACCESSORIES` bit(1) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  PRIMARY KEY (`EXPORT_PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of export_product_c
-- ----------------------------
INSERT INTO `export_product_c` VALUES ('4028817a384511ae0138464db620000c', '4028817a371562cf0137174770aa0029', '4028817a384511ae0138464c953f000b', '2', '4028817a371562cf01371747709a0022', '12JK1061', null, 'JK1050317/12006', '', '全明料糖缸配明料盖子，糖缸刻交叉麦穗花\r\n尺寸：10.5X14CM高\r\n1只/五层内盒         12只/大箱\r\n大箱尺寸：59.5X40X21.5CM 如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '1/12', 'PCS', '180', '0', '', '9.00', '7.00', '44.50', '30.00', '38.50', null, null, null, '374.40', null, '15', '2.08', null, null, '11.00', null, null, '', '7');
INSERT INTO `export_product_c` VALUES ('4028817a384511ae0138464db620000d', '4028817a371562cf0137174770aa0028', '4028817a384511ae0138464c953f000b', '4028817a33d4f8b40133d99621cb0023', '4028817a371562cf01371747709a0022', '12JK1061', null, 'JK1050195DECAL B/12859', '496f37a8-9804-49fc-b09b-8573d054e8df.jpg', '全明料香槟杯		\r\n距口部1.5CM烤蒙砂白花纸	\r\n尺寸：8X21CM高		\r\n4只/五层内盒       16只/大箱	\r\n花纸我司供\r\n大箱尺寸：43.5X42.5X27CM  如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '4/16', 'PCS', '400', '0', '', '6.00', '4.00', '38.00', '38.00', '25.00', null, null, null, '480.00', null, '25', '1.20', null, null, '6.00', null, null, '', '6');
INSERT INTO `export_product_c` VALUES ('4028817a384511ae0138464db630000e', '4028817a371562cf0137174770aa0024', '4028817a384511ae0138464c953f000b', '2', '4028817a371562cf01371747709a0022', '12JK1061', null, 'JK1050201/12078', 'a92aa87c-c719-4c40-a59a-449a135f764b.jpg', '全明料蛋糕罩配盘子,罩子上烤蒙砂白花纸		\r\n盘子尺寸：16X13CM高		\r\n罩子尺寸：15X11.5CM高		\r\n全高：22CM  花纸我司供	\r\n1套/上下保利龙垫/五层内盒	\r\n6套/大箱  保利龙垫工厂供\r\n大箱尺寸：如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '1/6', 'SETS', '600', '0', '', '7.00', '5.00', '63.00', '43.00', '25.00', null, null, null, '2244.00', null, '100', '3.74', null, null, '18.00', null, null, '', '2');
INSERT INTO `export_product_c` VALUES ('4028817a384511ae0138464db630000f', '4028817a371562cf0137174770aa002d', '4028817a384511ae0138464c953f000b', '4028817a33d4f8b40133d99621cb0023', '4028817a371562cf01371747709a0022', '12JK1061', null, 'JK1050198/12860', '', '全明料酒杯，烤蒙砂白花纸\r\n尺寸：11X19CM高\r\n4只/五层内盒        16只/大箱\r\n大箱尺寸：54X53X24.5CM   如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '4/16', 'PCS', '304', '0', '', '6.00', '4.00', '49.00', '25.00', '45.00', null, null, null, '389.12', null, '19', '1.28', null, null, '6.50', null, null, '', '11');
INSERT INTO `export_product_c` VALUES ('4028817a384511ae0138464db6300010', '4028817a371562cf01371747709a0023', '4028817a384511ae0138464c953f000b', '15', '4028817a371562cf01371747709a0022', '12JK1061', null, 'JK0329001/13078', '', '全明料转棱酒杯\r\n尺寸：9.5X18.5CM高\r\n4只/内盒       16只/大箱\r\n大箱尺寸：45X44X23.5CM    如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '4/16', 'PCS', '4001', '0', '', '4.00', '2.00', '43.00', '23.00', '42.00', null, null, null, '700.00', null, '25', '1.75', null, null, '9.80', null, null, '', '1');
INSERT INTO `export_product_c` VALUES ('4028817a384511ae0138464db6300011', '4028817a371562cf0137174770aa0026', '4028817a384511ae0138464c953f000b', '2', '4028817a371562cf01371747709a0022', '12JK1061', null, 'JK1050316/12005', '', '全明料糖缸配明料盖子，糖缸刻交叉麦穗花\r\n尺寸：15X15CM高\r\n1只/五层内盒      6只/大箱\r\n大箱尺寸：44.5X30X38.5CM  如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '1/6', 'PCS', '150', '0', '', '9.50', '7.50', '59.50', '40.00', '21.50', null, null, null, '433.50', null, '25', '2.89', null, null, '14.00', null, null, '', '4');
INSERT INTO `export_product_c` VALUES ('4028817a384511ae0138464db6300012', '4028817a371562cf0137174770aa002b', '4028817a384511ae0138464c953f000b', '15', '4028817a371562cf01371747709a0022', '12JK1061', null, 'JK0329002/13268', '', '全明料竖棱香槟杯\r\n尺寸：6.5X24.5CM高\r\n4只/内盒       16只/大箱\r\n大箱尺寸：37X36X29.5CM   如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '4/16', 'PCS', '256', '0', '', '4.00', '2.00', '37.00', '37.00', '28.00', null, null, null, '483.84', null, '16', '1.89', null, null, '10.60', null, null, '', '9');
INSERT INTO `export_product_c` VALUES ('4028817a384511ae0138464db6300013', '4028817a371562cf0137174770aa002a', '4028817a384511ae0138464c953f000b', '2', '4028817a371562cf01371747709a0022', '12JK1061', null, 'JK103233/11301', '', '全明料糖缸带盖子，刻钻石描亮油\r\n尺寸：11X30.5CM高\r\n1只/五层内盒         12只/大箱\r\n大箱尺寸：57.5X43X30CM  如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '1/12', 'PCS', '168', '0', '', '10.00', '8.00', '61.00', '46.00', '30.00', null, null, null, '591.36', null, '14', '3.52', null, null, '18.00', null, null, '', '8');
INSERT INTO `export_product_c` VALUES ('4028817a384511ae0138464db6300014', '4028817a371562cf0137174770aa002c', '4028817a384511ae0138464c953f000b', '4028817a33d4f8b40133d99621cb0023', '4028817a371562cf01371747709a0022', '12JK1061', null, 'JK1060019/11990', '', '全明料密直棱低口杯，棱效果要明显\r\n尺寸：9X10.5CM  \r\n4只/五层内盒           24只/大箱\r\n大箱尺寸：如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '4/24', 'PCS', '504', '0', '', '7.00', '5.00', '63.00', '22.00', '27.00', null, null, null, '504.00', null, '21', '1.00', null, null, '5.00', null, null, '', '10');
INSERT INTO `export_product_c` VALUES ('4028817a384511ae0138464db6300015', '4028817a371562cf0137174770aa0027', '4028817a384511ae0138464c953f000b', '4028817a33d4f8b40133d99621cb0023', '4028817a371562cf01371747709a0022', '12JK1061', null, 'JK103136/11988', '2c293f64-0310-4cfa-b607-81fd28cfe359.jpg', '明料密直棱酒杯，底厚要求5MM	\r\n尺寸：9X17.5CM高		\r\n4只/五层内盒     16只/五层大箱	\r\n直棱要强，棱的宽带要尽量保持一致\r\n大箱尺寸：49X48X23.5CM   如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '4/16', 'PCS', '304', '0', '', '6.00', '4.00', '42.00', '21.00', '41.00', null, null, null, '358.72', null, '19', '1.18', null, null, '6.30', null, null, '', '5');
INSERT INTO `export_product_c` VALUES ('4028817a384511ae0138464db6300016', '4028817a371562cf0137174770aa0025', '4028817a384511ae0138464c953f000b', '15', '4028817a371562cf01371747709a0022', '12JK1061', null, 'JK0329003/13269', '', '全明料竖棱低口杯\r\n尺寸：9X8.5CM高\r\n4只/内盒           48只/大箱\r\n大箱尺寸：64X43X25CM   如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '4/48', 'PCS', '480', '0', '', '3.50', '1.50', '41.00', '21.00', '22.00', null, null, null, '480.00', null, '30', '1.00', null, null, '5.60', null, null, '', '3');
INSERT INTO `export_product_c` VALUES ('4028817a384511ae0138464db6300017', '4028817a371562cf0137174770aa002e', '4028817a384511ae0138464c953f000b', '15', '4028817a371562cf01371747709a0022', '12JK1061', null, 'JK1040158/12068', '', '明料灯宫细转棱蜡台\r\n尺寸：6X26CM高\r\n4只/内盒          16只/大箱\r\n大箱尺寸：48X48X31CM   如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '4/16', 'PCS', '160', '0', '', '4.00', '2.00', '45.00', '45.00', '29.00', null, null, null, '291.20', null, '10', '1.82', null, null, '9.70', null, null, '', '12');
INSERT INTO `export_product_c` VALUES ('4028817a387362980138738e5ddb0002', '4028817a371a8d7f01372a6e237b0061', '4028817a387362980138738ab18c0001', '7', '4028817a371a8d7f01372a6e236b0059', '12JK1039', null, 'JK3600010/JK010', '', '全明料上翻裙边蛋糕盘粘底座\r\n尺寸：32X14.5CM高\r\n1只/白盒          2只/大箱\r\n大箱尺寸：37X36X36CM    大箱的实际尺寸和我司要求的不一致，请及时通知我司，否则产生的后果由贵厂承担。', '1/2', 'PCS', '600', '0', '', '5.00', '3.00', '35.00', '34.00', '33.00', null, null, null, '2250.00', null, '300', '3.75', null, null, '14.00', null, null, '', '13');
INSERT INTO `export_product_c` VALUES ('4028817a387362980138738e5dea0003', '4028817a371a8d7f01372a6e237b0060', '4028817a387362980138738ab18c0001', '4', '4028817a371a8d7f01372a6e236b0059', '12JK1039', null, 'JK103136/JK136', '', '套6明料明料密直棱白酒杯\r\n尺寸：9X17.5CM高\r\n1套/白盒           2套/大箱\r\n大箱尺寸：42X31X21.5CM    大箱的实际尺寸如果和我司要求的不一致，请及时通知我司，否则产生的后果由贵厂承担。', '1/2', 'SETS', '120', '0', '', '4.50', '2.50', '41.00', '31.00', '21.00', null, null, null, '786.00', null, '60', '6.55', null, null, '30.00', null, null, '', '7');
INSERT INTO `export_product_c` VALUES ('4028817a387362980138738e5dea0004', '4028817a371a8d7f01372a6e237b0063', '4028817a387362980138738ab18c0001', '4', '4028817a371a8d7f01372a6e236b0059', '12JK1039', null, 'JK1050930/JK930', '', '套6密直棱高口杯，棱要明显\r\n尺寸：8.5X13CM高\r\n1套/白盒            4套/大箱\r\n大箱尺寸：40X29X32CM     大箱的实际尺寸如果和我司要求的不一致，请及时通知我司，否则产生的后果由贵厂承担。', '1/4', 'SETS', '180', '0', '', '7.00', '5.00', '40.00', '30.00', '33.00', null, null, null, '946.80', null, '45', '5.26', null, null, '27.00', null, null, '', '6');
INSERT INTO `export_product_c` VALUES ('4028817a387362980138738e5dfa0005', '4028817a371a8d7f01372a6e237b005b', '4028817a387362980138738ab18c0001', '4', '4028817a371a8d7f01372a6e236b0059', '12JK1039', null, 'JK1040042/JK042', '', '套6高口杯，口杯刻麦穗花\r\n尺寸：8X12CM高\r\n1套/白盒          8套/大箱\r\n大箱尺寸;55X37X30CM   大箱的实际尺寸和我司要求的不一致，请及时通知我司，否则产生的后果由贵厂承担。', '1/8', 'SETS', '184', '0', '', '11.50', '9.50', '55.00', '37.00', '30.00', null, null, null, '1072.72', null, '23', '5.83', null, null, '28.80', null, null, '', '4');
INSERT INTO `export_product_c` VALUES ('4028817a387362980138738e5dfa0006', '4028817a371a8d7f01372a6e237b0064', '4028817a387362980138738ab18c0001', '7', '4028817a371a8d7f01372a6e236b0059', '12JK1039', null, 'JK3600009/JK009', '', '全明料上翻裙边蛋糕盘粘底座\r\n尺寸：22X13CM高\r\n1只/白盒          4只/大箱\r\n大箱尺寸：49X26X33CM   大箱的实际尺寸和我司要求的不一致，请及时通知我司，否则产生的后果由贵厂承担。', '1/4', 'PCS', '600', '0', '', '6.00', '4.00', '50.00', '26.00', '30.00', null, null, null, '1500.00', null, '150', '2.50', null, null, '10.00', null, null, '', '12');
INSERT INTO `export_product_c` VALUES ('4028817a387362980138738e5dfa0007', '4028817a371a8d7f01372a6e237b0065', '4028817a387362980138738ab18c0001', '2', '4028817a371a8d7f01372a6e236b0059', '12JK1039', null, 'JK1050317/JK317C', '', '全明料糖缸带明料盖子，糖缸刻交叉麦穗花\r\n尺寸：10.5X14CM 高\r\n1只/白盒              12只/大箱\r\n大箱尺寸：42X28X35CM ,大箱的实际尺寸和我司要求的不一致，请提前通知我司，否则产生的后果由贵厂承担。', '1/12', 'PCS', '600', '0', '', '13.00', '11.00', '42.00', '28.00', '35.00', null, null, null, '1350.00', null, '50', '2.25', null, null, '10.80', null, null, '', '2');
INSERT INTO `export_product_c` VALUES ('4028817a387362980138738e5e0a0008', '4028817a371a8d7f01372a6e237b0066', '4028817a387362980138738ab18c0001', '7', '4028817a371a8d7f01372a6e236b0059', '12JK1039', null, 'JK103956-P/JK956/1', '', '全明料长方形钻石盘\r\n尺寸：33X13.5X1.5CM\r\n4只/白盒              24只/大箱\r\n大箱尺寸：37X31X28CM   大箱的实际尺寸和我司要求的不一样，请及时通知我司，否则产生的后果由贵厂承担。', '4/24', 'PCS', '720', '0', '', '21.00', '19.00', '31.00', '23.00', '37.00', null, null, null, '1576.80', null, '30', '2.19', null, null, '9.00', null, null, '', '3');
INSERT INTO `export_product_c` VALUES ('4028817a387362980138738e5e0a0009', '4028817a371a8d7f01372a6e237b005c', '4028817a387362980138738ab18c0001', '4', '4028817a371a8d7f01372a6e236b0059', '12JK1039', null, 'JK4110029/JK029', '', '套6海蓝色竖棱低口杯\r\n尺寸：9X9.5CM\r\n1套/白盒           4套/大箱', '1/4', 'SETS', '300', '0', '', '6.00', '4.00', '42.00', '32.00', '24.00', null, null, null, '1680.00', null, '75', '5.60', null, null, '27.00', null, null, '', '9');
INSERT INTO `export_product_c` VALUES ('4028817a387362980138738e5e19000a', '4028817a371a8d7f01372a6e237b0067', '4028817a387362980138738ab18c0001', '4', '4028817a371a8d7f01372a6e236b0059', '12JK1039', null, 'JK4100007/JK007', '', '全明料水升，口部刻麦穗花\r\n尺寸：13X22CM高\r\n1只/白盒           6只/大箱\r\n大箱尺寸：51X35X27CM   大箱的实际尺寸和我司要求的不一致，请及时通知我司，否则产生的后果由贵厂承担。', '1/6', 'PCS', '480', '0', '', '4.00', '2.00', '50.00', '35.00', '27.00', null, null, null, '1728.00', null, '80', '3.60', null, null, '16.50', null, null, '', '11');
INSERT INTO `export_product_c` VALUES ('4028817a387362980138738e5e19000b', '4028817a371a8d7f01372a6e237b005f', '4028817a387362980138738ab18c0001', '2', '4028817a371a8d7f01372a6e236b0059', '12JK1039', null, 'JK1050316/JK316C', '', '全明料糖缸带明料盖子，糖缸刻交叉麦穗花\r\n尺寸：15X15CM高\r\n1只/白盒              6只/大箱\r\n大箱尺寸：57X38X20CM  大箱的实际尺寸和我司要求的不一致，请提前通知我司，否则产生的后果由贵厂承担。', '1/6', 'PCS', '600', '0', '', '12.00', '10.00', '57.00', '38.00', '20.00', null, null, null, '1830.00', null, '100', '3.05', null, null, '13.80', null, null, '', '1');
INSERT INTO `export_product_c` VALUES ('4028817a387362980138738e5e29000c', '4028817a371a8d7f01372a6e237b005e', '4028817a387362980138738ab18c0001', '4', '4028817a371a8d7f01372a6e236b0059', '12JK1039', null, 'JK4410026/JK026', '', '海蓝色宽竖棱死模水升\r\n尺寸：11X23CM高\r\n1只/白盒          4只/大箱\r\n大箱尺寸：44X43X28CM    大箱的实际尺寸和我司要求的不一致，请及时通知我司。', '1/4', 'PCS', '480', '0', '', '4.00', '2.00', '42.00', '42.00', '27.00', null, null, null, '1800.00', null, '120', '3.75', null, null, '17.00', null, null, '', '8');
INSERT INTO `export_product_c` VALUES ('4028817a387362980138738e5e29000d', '4028817a371a8d7f01372a762df40069', '4028817a387362980138738ab18c0001', '4028817a371a8d7f01372a74451f0068', '4028817a371a8d7f01372a6e236b0059', '12JK1039', null, 'JK103209/JK209K', '', '电镀铁架\r\n配2层打孔钻石盘', '1/12', 'PCS', '600', '0', '', null, null, null, null, null, null, null, null, '3120.00', null, '50', null, null, null, '5.20', null, null, '', '15');
INSERT INTO `export_product_c` VALUES ('4028817a387362980138738e5e29000e', '4028817a371a8d7f01372a6e237b005d', '4028817a387362980138738ab18c0001', '9', '4028817a371a8d7f01372a6e236b0059', '12JK1039', null, 'JK103209/JK209K', '', '全明料2层蛋糕盘，打孔配铁架\r\n尺寸：21/14CMX2.5CM\r\n1套/内盒           12套/大箱\r\n大箱尺寸：46.5X32X25CM   大箱的实际尺寸和我司要求的不一致，请及时通知我司，否则产生的后果由贵厂承担。', '1/12', 'SETS', '600', '0', '', '10.00', '8.00', '40.00', '25.00', '48.00', null, null, null, '1530.00', null, '50', '2.55', null, null, '8.00', null, null, '', '14');
INSERT INTO `export_product_c` VALUES ('4028817a387362980138738e5e29000f', '4028817a371a8d7f01372a6e236b005a', '4028817a387362980138738ab18c0001', '4', '4028817a371a8d7f01372a6e236b0059', '12JK1039', null, 'JK4110096/JK096', '', '套6海蓝色死模疙瘩高口杯\r\n尺寸：8.5X14.5CM高\r\n1套/白盒          4套/大箱\r\n大箱尺寸：60X41X19.5CM高    大箱的实际尺寸和我司要求的不一致，请及时通知我司，否则产生的后果由贵厂承担。', '1/4', 'SETS', '240', '0', '', '7.00', '5.00', '40.00', '30.00', '33.00', null, null, null, '1428.00', null, '60', '5.95', null, null, '28.80', null, null, '', '10');
INSERT INTO `export_product_c` VALUES ('4028817a387362980138738e5e290010', '4028817a371a8d7f01372a6e237b0062', '4028817a387362980138738ab18c0001', '7', '4028817a371a8d7f01372a6e236b0059', '12JK1039', null, 'JK956-1 FOOTED/JK956R', '', '全明料长方形钻石盘粘方底座\r\n尺寸：33X13.5X10.5CM高\r\n1只/五层内盒       8只/大箱\r\n大箱尺寸：69X30X25CM   大箱的实际尺寸和我司要求的不一致，请及时通知我司，否则产生的后果由贵厂承担。', '1/8', 'PCS', '720', '0', '', '9.50', '7.50', '64.00', '37.00', '27.00', null, null, null, '2088.00', null, '90', '2.90', null, null, '15.00', null, null, '', '5');
INSERT INTO `export_product_c` VALUES ('4028817a387db33d01387fad4d1c0014', '4028817a3790d06f013792b094da0023', '4028817a387db33d01387faba0180013', '4028817a33d4f8b40133d9989f5e0024', '4028817a3790d06f013792b094da001b', 'C/1655/12', null, '6556', 'ba19d9b4-cea1-496a-9f48-3726ecdbd84c.jpg', '全明料冰花风灯，内镀花银外喷紫色渐变色\r\n尺寸：15.3X19.5CM高\r\n1只/内盒               6只/大箱', '1/6', 'PCS', '210', '0', '', '11.00', '9.00', '51.00', '34.00', '24.00', null, null, null, '493.50', null, '35', '2.35', null, null, '12.50', null, null, '', '2');
INSERT INTO `export_product_c` VALUES ('4028817a387db33d01387fad4d2c0015', '4028817a3790d06f013792b7b8ea0029', '4028817a387db33d01387faba0180013', '4028817a37583d45013758d152450038', '4028817a3790d06f013792b094da001b', 'C/1655/12', null, '6672', '0a9e4746-6f74-4613-aeb5-691929f1f590.jpg', '全明料麻花挺风灯，杯碗电镀喷钴蓝色\r\n电镀我司安排\r\n尺寸：35CM高\r\n1只/五层内盒       6只/大箱', '1/6', 'PCS', '252', '0', '', '7.00', '5.00', '53.00', '35.00', '44.50', null, null, null, '768.60', null, '42', '3.05', null, null, '13.80', null, null, '', '15');
INSERT INTO `export_product_c` VALUES ('4028817a387db33d01387fad4d2c0016', '4028817a3790d06f013792b7b8ea002a', '4028817a387db33d01387faba0180013', '4028817a37583d45013758d152450038', '4028817a3790d06f013792b094da001b', 'C/1655/12', null, '6664', '96f82312-e5ed-4367-807c-5a5a118f2a04.jpg', '全明料麻花挺风灯，杯碗电镀喷紫色\r\n电镀喷色我司安排\r\n尺寸：35CM高\r\n1只/五层内盒         6只/大箱', '1/6', 'PCS', '252', '0', '', '7.00', '5.00', '53.00', '35.00', '44.50', null, null, null, '768.60', null, '42', '3.05', null, null, '13.80', null, null, '', '14');
INSERT INTO `export_product_c` VALUES ('4028817a387db33d01387fad4d3b0017', '4028817a3790d06f013792b094da0021', '4028817a387db33d01387faba0180013', '4028817a37583d45013758d152450038', '4028817a3790d06f013792b094da001b', 'C/1655/12', null, '6648', '0377f1fa-f92c-44b5-bea2-8c17095641a2.jpg', '全明料菱形块图案风灯，麻花挺，杯碗电镀喷琥珀色\r\n电镀我司安排\r\n尺寸：14X35CM高\r\n1只/五层内盒          6只/大箱', '1/6', 'PCS', '252', '0', '', '7.00', '5.00', '56.00', '37.00', '44.50', null, null, null, '768.60', null, '42', '3.05', null, null, '13.80', null, null, '', '10');
INSERT INTO `export_product_c` VALUES ('4028817a387db33d01387fad4d3b0018', '4028817a3790d06f013792b094da001e', '4028817a387db33d01387faba0180013', '4028817a37583d45013758d152450038', '4028817a3790d06f013792b094da001b', 'C/1655/12', null, '6650', 'a1488e51-c8c5-410f-a7b3-842d4b6f660c.jpg', '全明料菱形块图案风灯，麻花挺，杯碗电镀喷紫色\r\n电镀喷色我司安排\r\n尺寸：14X35CM高\r\n1只/五层内盒       6只/大箱', '1/6', 'PCS', '252', '0', '', '7.00', '5.00', '56.00', '37.00', '44.50', null, null, null, '768.60', null, '42', '3.05', null, null, '13.80', null, null, '', '11');
INSERT INTO `export_product_c` VALUES ('4028817a387db33d01387fad4d4b0019', '4028817a3790d06f013792b094da0026', '4028817a387db33d01387faba0180013', '4028817a37583d45013758d152450038', '4028817a3790d06f013792b094da001b', 'C/1655/12', null, '6652', '7cee6feb-0f65-465b-b39e-f1bd6c9a1e66.jpg', '全明料菱形块图案风灯，麻花挺，杯碗电镀喷钴蓝色\r\n电镀喷色我司安排\r\n尺寸：14X35CM高\r\n1只/内盒           6只/大箱', '1/6', 'PCS', '252', '0', '', '7.00', '5.00', '56.00', '37.00', '44.50', null, null, null, '768.60', null, '42', '3.05', null, null, '13.80', null, null, '', '12');
INSERT INTO `export_product_c` VALUES ('4028817a387db33d01387fad4d4b001a', '4028817a3790d06f013792b094da0027', '4028817a387db33d01387faba0180013', '4028817a37583d45013758d152450038', '4028817a3790d06f013792b094da001b', 'C/1655/12', null, '6655', '156a71be-3726-4c1f-acc7-32d6eae35bf2.jpg', '全明料麻花挺风灯，杯碗电镀喷琥珀色\r\n电镀喷色我司安排\r\n尺寸：35CM高\r\n1只/五层内盒         6只/大箱', '1/6', 'PCS', '252', '0', '', '7.00', '5.00', '53.00', '35.00', '44.50', null, null, null, '768.60', null, '42', '3.05', null, null, '13.80', null, null, '', '13');
INSERT INTO `export_product_c` VALUES ('4028817a387db33d01387fad4d4b001b', '4028817a3790d06f013792b094da0024', '4028817a387db33d01387faba0180013', '4028817a33d4f8b40133d9989f5e0024', '4028817a3790d06f013792b094da001b', 'C/1655/12', null, '6559', '7c49c542-6ac7-4e02-8bca-8fa36e00732e.jpg', '全明料冰花风灯，内镀花银外喷钴蓝色渐变色\r\n尺寸：15.3X19.5CM高\r\n1只/内盒               6只/大箱', '1/6', 'PCS', '210', '0', '', '11.00', '9.00', '51.00', '34.00', '24.00', null, null, null, '493.50', null, '35', '2.35', null, null, '12.50', null, null, '', '3');
INSERT INTO `export_product_c` VALUES ('4028817a387db33d01387fad4d4b001c', '4028817a3790d06f013792b094da0022', '4028817a387db33d01387faba0180013', '4028817a33d4f8b40133d9989f5e0024', '4028817a3790d06f013792b094da001b', 'C/1655/12', null, '6644', 'bd9fde02-a7c4-41a7-b909-4f4ad1132366.jpg', '全明料半冰花糖缸配盖子，内镀花银外喷紫色渐变色\r\n尺寸：9.5X29CM高\r\n1只/内盒           6只/大箱', '1/6', 'PCS', '210', '0', '', '8.00', '6.00', '40.00', '27.00', '30.00', null, null, null, '619.50', null, '35', '2.95', null, null, '16.50', null, null, '', '8');
INSERT INTO `export_product_c` VALUES ('4028817a387db33d01387fad4d4b001d', '4028817a3790d06f013792b094da0020', '4028817a387db33d01387faba0180013', '4028817a33d4f8b40133d9989f5e0024', '4028817a3790d06f013792b094da001b', 'C/1655/12', null, '6600', '252586f6-c12d-4702-af8b-1ecd256ae946.jpg', '全明料半冰花糖缸配盖子，内镀花银外喷琥珀渐变色\r\n尺寸：8.3X24CM高\r\n1只/内盒               6只/大箱', '1/6', 'PCS', '210', '0', '', '7.00', '5.00', '45.00', '30.00', '24.00', null, null, null, '546.00', null, '35', '2.60', null, null, '14.50', null, null, '', '4');
INSERT INTO `export_product_c` VALUES ('4028817a387db33d01387fad4d4b001e', '4028817a3790d06f013792b094da0028', '4028817a387db33d01387faba0180013', '4028817a33d4f8b40133d9989f5e0024', '4028817a3790d06f013792b094da001b', 'C/1655/12', null, '6641', '5d10824f-617d-485c-b844-98a1af93b295.jpg', '全明料半冰花糖缸配盖子，内镀花银外喷钴蓝色渐变色\r\n尺寸：8.3X24CM高\r\n1只/内盒           6只/大箱', '1/6', 'PCS', '210', '0', '', '7.00', '5.00', '45.00', '30.00', '24.00', null, null, null, '546.00', null, '35', '2.60', null, null, '14.50', null, null, '', '6');
INSERT INTO `export_product_c` VALUES ('4028817a387db33d01387fad4d4b001f', '4028817a3790d06f013792b094da001f', '4028817a387db33d01387faba0180013', '4028817a33d4f8b40133d9989f5e0024', '4028817a3790d06f013792b094da001b', 'C/1655/12', null, '6555', 'dba477fd-59af-4466-8af1-1dcbb0131253.jpg', '全明料冰花风灯，内镀花银外喷琥珀渐变色\r\n尺寸：15.3X19.5CM高\r\n1只/内盒           6只/大箱', '1/6', 'PCS', '210', '0', '', '11.00', '9.00', '51.00', '34.00', '24.00', null, null, null, '493.50', null, '35', '2.35', null, null, '12.50', null, null, '', '1');
INSERT INTO `export_product_c` VALUES ('4028817a387db33d01387fad4d4b0020', '4028817a3790d06f013792b094da001d', '4028817a387db33d01387faba0180013', '4028817a33d4f8b40133d9989f5e0024', '4028817a3790d06f013792b094da001b', 'C/1655/12', null, '6609', 'ada340dc-4089-4803-8561-f31f2a14e8d2.jpg', '全明料半冰花糖缸喷盖子，内镀花银外喷紫色渐变色\r\n尺寸：8.3X24CM高\r\n1只/内盒                6只/大箱', '1/6', 'PCS', '210', '0', '', '7.00', '5.00', '45.00', '30.00', '24.00', null, null, null, '546.00', null, '35', '2.60', null, null, '14.50', null, null, '', '5');
INSERT INTO `export_product_c` VALUES ('4028817a387db33d01387fad4d4b0021', '4028817a3790d06f013792b094da001c', '4028817a387db33d01387faba0180013', '4028817a33d4f8b40133d9989f5e0024', '4028817a3790d06f013792b094da001b', 'C/1655/12', null, '6643', 'e419e4ab-a271-4b87-9fb5-ef97bf42cc72.jpg', '全明料半冰花糖缸配盖子，内镀花银外喷琥珀渐变色\r\n尺寸：9.5X29CM高\r\n1只/内盒           6只/大箱', '1/6', 'PCS', '210', '0', '', '8.00', '6.00', '40.00', '27.00', '30.00', null, null, null, '619.50', null, '35', '2.95', null, null, '16.50', null, null, '', '7');
INSERT INTO `export_product_c` VALUES ('4028817a387db33d01387fad4d4b0022', '4028817a3790d06f013792b094da0025', '4028817a387db33d01387faba0180013', '4028817a33d4f8b40133d9989f5e0024', '4028817a3790d06f013792b094da001b', 'C/1655/12', null, '6646', 'f154ae39-907d-4782-9f02-86ad19905673.jpg', '全明料半冰花糖缸配盖子，内镀花银外喷钴蓝色渐变色\r\n尺寸：9.5X29CM高\r\n1只/内盒           6只/大箱', '1/6', 'PCS', '210', '0', '', '8.00', '6.00', '40.00', '27.00', '30.00', null, null, null, '619.50', null, '35', '2.95', null, null, '16.50', null, null, '', '9');
INSERT INTO `export_product_c` VALUES ('4028817a38fe72b00139003062bf000f', '4028817a371562cf0137174b533b0036', '4028817a38fe72b00139002e9811000e', '2', '4028817a371562cf0137174b533b002f', '12JK1062', null, 'JK1050316/12005', 'undefined', '全明料糖缸配盖子，糖缸刻交叉麦穗花\r\n尺寸：15X15CM高\r\n1只/五层内盒        6只/大箱\r\n大箱尺寸：44.5X30X38.5CM    如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '1/6', 'PCS', '216', '0', '', '9.50', '7.50', '57.00', '40.00', '21.50', null, null, null, '624.24', null, '36', '2.89', null, null, '12.50', null, null, '', '2');
INSERT INTO `export_product_c` VALUES ('4028817a38fe72b00139003064460010', '4028817a371562cf0137174b533b0033', '4028817a38fe72b00139002e9811000e', '4', '4028817a371562cf0137174b533b002f', '12JK1062', null, 'JK1070040/12786', '', '全明料低口杯，烤蒙砂白花纸\r\n尺寸：9X10.5CM高\r\n4只/五层内盒          24只/大箱\r\n大箱尺寸：64X22X29CM    如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '4/24', 'PCS', '600', '0', '', '7.50', '5.50', '64.50', '22.00', '29.00', null, null, null, '618.00', null, '25', '1.03', null, null, '4.30', null, null, '', '10');
INSERT INTO `export_product_c` VALUES ('4028817a38fe72b00139003064460011', '4028817a371562cf0137174b533b0037', '4028817a38fe72b00139002e9811000e', '4028817a33d4f8b40133d99621cb0023', '4028817a371562cf0137174b533b002f', '12JK1062', null, 'JK1050198/12860', '', '全明料酒杯，烤蒙砂白花纸\r\n尺寸：11X19CM高\r\n4只/五层内盒        16只/大箱\r\n大箱尺寸：54X53X24.5CM   如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '4/16', 'PCS', '240', '0', '', '6.00', '4.00', '49.00', '25.00', '45.00', null, null, null, '307.20', null, '15', '1.28', null, null, '6.50', null, null, '', '9');
INSERT INTO `export_product_c` VALUES ('4028817a38fe72b00139003064460012', '4028817a371562cf0137174b533b0030', '4028817a38fe72b00139002e9811000e', '4028817a33d4f8b40133d99621cb0023', '4028817a371562cf0137174b533b002f', '12JK1062', null, 'JK103822/11999', '', '全明料粗实挺底气泡白酒杯\r\n尺寸：8.5X20CM高\r\n4只/五层内盒     24只/大箱\r\n大箱尺寸：64X42X25CM    如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '4/24', 'PCS', '456', '0', '', '8.00', '6.00', '58.00', '39.00', '24.00', null, null, null, '715.92', null, '19', '1.57', null, null, '8.50', null, null, '', '4');
INSERT INTO `export_product_c` VALUES ('4028817a38fe72b00139003064460013', '4028817a371562cf0137174b533b0035', '4028817a38fe72b00139002e9811000e', '2', '4028817a371562cf0137174b533b002f', '12JK1062', null, 'JK1060185/12062', '', '全明料斜口壶，口部磨口抛光\r\n尺寸：7.5X25.5CM高\r\n1只/五层内盒        4只/大箱\r\n大箱尺寸：48.5X47.5X31CM   如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '1/4', 'PCS', '612', '0', '', '6.00', '4.00', '47.00', '46.00', '30.50', null, null, null, '1566.72', null, '153', '2.56', null, null, '12.30', null, null, '', '7');
INSERT INTO `export_product_c` VALUES ('4028817a38fe72b00139003064460014', '4028817a371562cf0137174b533b0038', '4028817a38fe72b00139002e9811000e', '15', '4028817a371562cf0137174b533b002f', '12JK1062', null, 'JK1040158/12068', '', '明料灯宫细转棱蜡台\r\n尺寸：6X26CM高\r\n4只/内盒          16只/大箱\r\n大箱尺寸：48X48X31CM   如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '4/16', 'PCS', '336', '0', '', '4.00', '2.00', '45.00', '45.00', '29.00', null, null, null, '611.52', null, '21', '1.82', null, null, '9.70', null, null, '', '8');
INSERT INTO `export_product_c` VALUES ('4028817a38fe72b00139003064460015', '4028817a371562cf0137174b533b0032', '4028817a38fe72b00139002e9811000e', '1', '4028817a371562cf0137174b533b002f', '12JK1062', null, 'JK1050154/11308', '', '全明料香槟杯\r\n尺寸：5X29CM高\r\n4只/五层内盒         16只/大箱\r\n大箱尺寸：38X37X33CM  如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '4/16', 'PCS', '736', '0', '', '5.00', '3.00', '36.00', '35.00', '34.00', null, null, null, '1104.00', null, '46', '1.50', null, null, '8.00', null, null, '', '5');
INSERT INTO `export_product_c` VALUES ('4028817a38fe72b00139003064460016', '4028817a371562cf0137174b533b0034', '4028817a38fe72b00139002e9811000e', '2', '4028817a371562cf0137174b533b002f', '12JK1062', null, 'JK1050317/12006', '', '全明料糖缸配明料盖子，糖缸刻交叉麦穗花\r\n尺寸：10.5X14CM高\r\n1只/五层内盒         12只/大箱\r\n大箱尺寸：59.5X40X21.5CM 如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '1/12', 'PCS', '300', '0', '', '9.00', '7.00', '44.50', '30.00', '38.50', null, null, null, '624.00', null, '25', '2.08', null, null, '11.00', null, null, '', '3');
INSERT INTO `export_product_c` VALUES ('4028817a38fe72b00139003064460017', '4028817a371562cf0137174b533b003a', '4028817a38fe72b00139002e9811000e', '2', '4028817a371562cf0137174b533b002f', '12JK1062', null, 'JK103233/11301', '', '全明料糖缸带盖子，刻钻石描亮油\r\n尺寸：11X30.5CM高\r\n1只/五层内盒         12只/大箱\r\n大箱尺寸：57.5X43X30CM  如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '1/12', 'PCS', '168', '0', '', '10.00', '8.00', '61.00', '46.00', '30.00', null, null, null, '591.36', null, '14', '3.52', null, null, '18.00', null, null, '', '1');
INSERT INTO `export_product_c` VALUES ('4028817a38fe72b00139003064460018', '4028817a371562cf0137174b533b003b', '4028817a38fe72b00139002e9811000e', '4028817a33d4f8b40133d99621cb0023', '4028817a371562cf0137174b533b002f', '12JK1062', null, 'JK1060019/11990', '', '全明料密直棱低口杯，棱效果要明显\r\n尺寸：9X10.5CM  \r\n4只/五层内盒           24只/大箱\r\n大箱尺寸：如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '4/24', 'PCS', '624', '0', '', '7.00', '5.00', '63.00', '22.00', '27.00', null, null, null, '624.00', null, '26', '1.00', null, null, '5.00', null, null, '', '12');
INSERT INTO `export_product_c` VALUES ('4028817a38fe72b00139003064460019', '4028817a371562cf0137174b533b0039', '4028817a38fe72b00139002e9811000e', '4028817a33d4f8b40133d99621cb0023', '4028817a371562cf0137174b533b002f', '12JK1062', null, 'JK103136/11988', '', '全明料密直棱酒杯，直棱效果要明显，棱的宽带要保持一致\r\n尺寸：9X17.5CM高\r\n4只/五层内盒          16只/大箱\r\n大箱尺寸：49X48X23.5CM高    如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '4/16', 'PCS', '112', '0', '', '6.00', '4.00', '42.00', '21.00', '41.00', null, null, null, '132.16', null, '7', '1.18', null, null, '6.30', null, null, '', '11');
INSERT INTO `export_product_c` VALUES ('4028817a38fe72b0013900306446001a', '4028817a371562cf0137174b533b0031', '4028817a38fe72b00139002e9811000e', '1', '4028817a371562cf0137174b533b002f', '12JK1062', null, 'JK1050068/11314', '', '全明料马丁尼，口部描1CM白金边\r\n尺寸：12X19CM高\r\n4只/五层内盒      16只/大箱\r\n大箱尺寸：54X53X25CM  如果实际的大箱尺寸超过我司提供的尺寸请提前通知我司。否则产生的后果由贵司承担', '4/16', 'PCS', '736', '0', '', '4.50', '2.50', '52.00', '51.00', '25.00', null, null, null, '1619.20', null, '46', '2.20', null, null, '12.00', null, null, '', '6');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995235f480003', '4028817a37aa9d700137aae55503000b', '4028817a399492a20139951fbe440002', '2', '4028817a37aa9d700137aae555030006', 'C/1743/12', null, '1125', '8181ab2b-40f6-4940-a95f-d00499526439.jpg', '全明料糖缸，刻麦穗花和竖道\r\n尺寸：8X18\"高\r\n1只/上中下保丽龙垫/内盒    2只/大箱\r\n保丽龙垫工厂供', '1/2', 'PCS', '1200', '0', '', '6.00', '4.00', '55.00', '27.50', '49.50', null, null, null, '7320.00', null, '600', '6.10', null, null, '30.00', null, null, '', '1');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995235f580004', '4028817a37aa9d700137aae55503000d', '4028817a399492a20139951fbe440002', '1', '4028817a37aa9d700137aae555030006', 'C/1743/12', null, '7297', 'f07d275d-7933-4951-9bca-f0366841e7e9.jpg', '全明料麻花挺风灯，杯碗电镀喷红色\r\n电镀喷色我司安排\r\n尺寸：35CM高\r\n1只/内盒           6只/大箱', '1/6', 'PCS', '1200', '0', '', '6.50', '4.50', '60.00', '39.00', '39.00', null, null, null, '3660.00', null, '200', '3.05', null, null, '14.00', null, null, '', '7');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995235f580005', '4028817a37aa9d700137aae55503000f', '4028817a399492a20139951fbe440002', '1', '4028817a37aa9d700137aae555030006', 'C/1743/12', null, '7298', '176df9c7-7fe4-4ba1-a7c9-8fc2b28629bd.jpg', '全明料麻花挺风灯，杯碗电镀\r\n电镀我司安排\r\n尺寸：35CM高\r\n1只/内盒         6只/大箱', '1/6', 'PCS', '1800', '0', '', '6.50', '4.50', '60.00', '39.00', '39.00', null, null, null, '5490.00', null, '300', '3.05', null, null, '14.00', null, null, '', '8');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995235f580006', '4028817a37aa9d700137aae55503000c', '4028817a399492a20139951fbe440002', '1', '4028817a37aa9d700137aae555030006', 'C/1743/12', null, '7299', '1357ae56-32e5-421d-b008-b0cc77847f58.jpg', '全明料麻花挺风灯，杯碗电镀喷红色\r\n电镀我司安排\r\n尺寸：35CM高\r\n1只/内盒          6只/大箱', '1/6', 'PCS', '1200', '0', '', '7.50', '5.50', '57.00', '38.00', '39.00', null, null, null, '3660.00', null, '200', '3.05', null, null, '14.00', null, null, '', '9');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995235f670007', '4028817a37aa9d700137aae555030007', '4028817a399492a20139951fbe440002', '1', '4028817a37aa9d700137aae555030006', 'C/1743/12', null, '7373', '923e19c8-fc2b-4b24-bf12-04932ceeda22.jpg', '全明料麻花挺风灯，杯碗电镀\r\n电镀我司安排\r\n尺寸：35CM高\r\n1只/内盒          6只/大箱', '1/6', 'PCS', '1800', '0', '', '7.50', '5.50', '57.00', '38.00', '39.00', null, null, null, '5490.00', null, '300', '3.05', null, null, '14.00', null, null, '', '10');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995235f670008', '4028817a37aa9d700137aae55503000e', '4028817a399492a20139951fbe440002', '7', '4028817a37aa9d700137aae555030006', 'C/1743/12', null, '7048', 'e37aef04-fa0a-453f-8a01-3264aa0dd50a.jpg', '全明料带底座蛋糕盘，喷珠光喷金色\r\n尺寸：32X13.3CM\r\n1只/五层内盒        4只/大箱', '1/4', 'PCS', '900', '0', '', '7.00', '5.00', '69.00', '35.00', '32.00', null, null, null, '3465.00', null, '225', '3.85', null, null, '20.00', null, null, '', '6');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995235f670009', '4028817a37aa9d700137aae55503000a', '4028817a399492a20139951fbe440002', '7', '4028817a37aa9d700137aae555030006', 'C/1743/12', null, '7038', '2770a193-10b1-46f8-aa8b-c45f2a2f759c.jpg', '全明料带底座蛋糕盘，喷珠光喷金色喷漆\r\n尺寸：30.5X10CM高\r\n1只/五层内盒        4只/大箱', '1/4', 'PCS', '900', '0', '', '6.00', '4.00', '67.00', '34.00', '26.00', null, null, null, '3465.00', null, '225', '3.85', null, null, '20.00', null, null, '', '3');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995235f67000a', '4028817a37aa9d700137aae555030009', '4028817a399492a20139951fbe440002', '7', '4028817a37aa9d700137aae555030006', 'C/1743/12', null, '7041', 'f1bcee01-dd80-4a7e-8e1c-6c6d774bbb44.jpg', '全明料带底座珠珠盘，喷珠光喷银色喷漆\r\n尺寸：32.5X11.5CM高\r\n1只/五层内盒        4只/大箱', '1/4', 'PCS', '900', '0', '', '7.00', '5.00', '71.00', '37.00', '30.00', null, null, null, '3690.00', null, '225', '4.10', null, null, '20.00', null, null, '', '4');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995235f67000b', '4028817a37aa9d700137aae555030008', '4028817a399492a20139951fbe440002', '7', '4028817a37aa9d700137aae555030006', 'C/1743/12', null, '7044', 'edc620da-39bc-42e9-9873-573c818bef04.jpg', '全明料带底座珠珠盘，喷珠光喷红色喷漆\r\n尺寸：32.5X11.5CM高\r\n1只/五层内盒         4只/大箱', '1/4', 'PCS', '900', '0', '', '7.00', '5.00', '71.00', '37.00', '30.00', null, null, null, '3690.00', null, '225', '4.10', null, null, '20.00', null, null, '', '5');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995235f67000c', '4028817a37aa9d700137aae555030010', '4028817a399492a20139951fbe440002', '2', '4028817a37aa9d700137aae555030006', 'C/1743/12', null, '1126', 'b8f49fa6-4c9b-48d9-96a7-44a77bf5d092.jpg', '全明料糖缸，刻麦穗花和竖道\r\n尺寸：9-3/4\"X19.25\"高\r\n1只/上中下保丽龙垫/内盒    2只/大箱\r\n保丽龙垫工厂供', '1/2', 'PCS', '1200', '0', '', '4.00', '2.00', '49.00', '24.50', '53.50', null, null, null, '4980.00', null, '600', '4.15', null, null, '20.00', null, null, '', '2');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995acf1ba001e', '4028817a387362980138751919fa0059', '4028817a399492a2013995aaef23001d', '4', '4028817a387362980138751919fa0057', '018273', null, '04587', 'ce3db5e3-031f-4ded-8053-37baa6970793.jpg', '湖绿色碗明料挺底水杯\r\n尺寸：11X18CM高\r\n重量不低于230G\r\n4只/内盒         12只/大箱', '4/12', 'PCS', '2196', '0', '', '4.50', '2.50', '65.00', '24.00', '20.00', null, null, null, '2086.20', null, '183', '0.95', null, null, '5.00', null, null, '', '8');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995acf1c9001f', '4028817a387362980138751919fa0058', '4028817a399492a2013995aaef23001d', '4', '4028817a387362980138751919fa0057', '018273', null, '04585', 'd3c5169e-6367-4561-a8ae-23d9103a6a60.jpg', '琥珀色碗明料挺底疙瘩水杯\r\n尺寸：11X18CM高\r\n重量不低于230G\r\n4只/内盒         12只/大箱', '4/12', 'PCS', '2196', '0', '', '4.50', '2.50', '65.00', '24.00', '20.00', null, null, null, '2086.20', null, '183', '0.95', null, null, '5.00', null, null, '', '6');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995acf1c90020', '4028817a387362980138751919fa005f', '4028817a399492a2013995aaef23001d', '4', '4028817a387362980138751919fa0057', '018273', null, '04590', '49de792a-1936-4603-8d0e-d3d43726ca76.jpg', '橄榄绿色碗明料挺底疙瘩冰淇淋碗\r\n尺寸：10.5X10CM高\r\n重量不低于190G\r\n4只/内盒        12只/大箱', '4/12', 'PCS', '996', '0', '', '4.00', '2.00', '24.00', '23.00', '37.00', null, null, null, '946.20', null, '83', '0.95', null, null, '5.00', null, null, '', '11');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995acf1c90021', '4028817a387362980138751919fa005b', '4028817a399492a2013995aaef23001d', '4', '4028817a387362980138751919fa0057', '018273', null, '04582', 'b3c1122e-dade-43eb-b3e4-6b6443f89c45.jpg', '橄榄绿碗明料挺底疙瘩酒杯\r\n尺寸：11X20CM高\r\n重量不低于240G\r\n4只/内盒         12只/大箱', '4/12', 'PCS', '2196', '0', '', '5.00', '3.00', '64.00', '24.00', '24.00', null, null, null, '2086.20', null, '183', '0.95', null, null, '5.00', null, null, '', '3');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995acf1c90022', '4028817a387362980138751919fa005c', '4028817a399492a2013995aaef23001d', '4', '4028817a387362980138751919fa0057', '018273', null, '04586', '80a4519e-4828-46e5-962e-e765c7293548.jpg', '橄榄绿碗明料挺底疙瘩水杯\r\n尺寸：11X18CM高\r\n重量不低于230G\r\n4只/内盒         12只/大箱', '4/12', 'PCS', '2196', '0', '', '4.50', '2.50', '65.00', '24.00', '20.00', null, null, null, '2086.20', null, '183', '0.95', null, null, '5.00', null, null, '', '7');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995acf1c90023', '4028817a387362980138751919fa0063', '4028817a399492a2013995aaef23001d', '4', '4028817a387362980138751919fa0057', '018273', null, '04583', '3c3d3f51-93c9-4eb3-a72a-d673222fb651.jpg', '湖绿色碗明料挺底疙瘩酒杯\r\n尺寸：11X20CM高\r\n重量不低于240G\r\n4只/内盒         12只/大箱', '4/12', 'PCS', '2196', '0', '', '5.00', '3.00', '64.00', '24.00', '24.00', null, null, null, '2086.20', null, '183', '0.95', null, null, '5.00', null, null, '', '4');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995acf1c90024', '4028817a387362980138751919fa0060', '4028817a399492a2013995aaef23001d', '4', '4028817a387362980138751919fa0057', '018273', null, '04581', '1abd670e-b2ac-4837-b6d8-a410d112128e.jpg', '琥珀色碗明料挺底疙瘩酒杯\r\n尺寸;11X20CM高\r\n重量不低于240G\r\n4只/内盒         12只/大箱', '4/12', 'PCS', '2196', '0', '', '5.00', '3.00', '64.00', '24.00', '24.00', null, null, null, '2086.20', null, '183', '0.95', null, null, '5.00', null, null, '', '2');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995acf1c90025', '4028817a387362980138751919fa005e', '4028817a399492a2013995aaef23001d', '4', '4028817a387362980138751919fa0057', '018273', null, '04584', 'ac5babda-c440-4ac2-a2a1-b7079b9c3e32.jpg', '紫罗兰色碗明料挺底疙瘩水杯\r\n尺寸：11X18CM高\r\n重量不低于230G\r\n4只/内盒         12只/大箱', '4/12', 'PCS', '2196', '0', '', '4.50', '2.50', '65.00', '24.00', '20.00', null, null, null, '2086.20', null, '183', '0.95', null, null, '5.00', null, null, '', '5');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995acf1c90026', '4028817a387362980138751919fa005d', '4028817a399492a2013995aaef23001d', '4', '4028817a387362980138751919fa0057', '018273', null, '04591', 'dac6f79f-2852-4c30-ac7d-49c9e5fc36e1.jpg', '湖绿色碗明料挺底疙瘩冰淇淋碗\r\n尺寸：10.5X10CM高\r\n重量不低于190G\r\n4只/内盒        12只/大箱', '4/12', 'PCS', '996', '0', '', '4.00', '2.00', '24.00', '23.00', '37.00', null, null, null, '946.20', null, '83', '0.95', null, null, '5.00', null, null, '', '12');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995acf1c90027', '4028817a387362980138751919fa005a', '4028817a399492a2013995aaef23001d', '4', '4028817a387362980138751919fa0057', '018273', null, '04588', '7db40280-13de-483b-a359-49ea0bc4e8a0.jpg', '紫罗兰色碗明料挺底疙瘩冰淇淋碗\r\n尺寸：10.5X10CM高\r\n重量不低于190G\r\n4只/内盒           12只/大箱', '4/12', 'PCS', '996', '0', '', '4.00', '2.00', '24.00', '23.00', '37.00', null, null, null, '946.20', null, '83', '0.95', null, null, '5.00', null, null, '', '9');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995acf1c90028', '4028817a387362980138751919fa0061', '4028817a399492a2013995aaef23001d', '4', '4028817a387362980138751919fa0057', '018273', null, '04580', '50f03ac8-b1bc-475d-8d98-51ad347fb87c.jpg', '紫色碗明料挺底疙瘩酒杯\r\n尺寸：11X20CM高\r\n重量不低于240G\r\n4只/内盒            12只/大箱', '4/12', 'PCS', '2196', '0', '', '5.00', '3.00', '64.00', '24.00', '24.00', null, null, null, '2086.20', null, '183', '0.95', null, null, '5.00', null, null, '', '1');
INSERT INTO `export_product_c` VALUES ('4028817a399492a2013995acf1c90029', '4028817a387362980138751919fa0062', '4028817a399492a2013995aaef23001d', '4', '4028817a387362980138751919fa0057', '018273', null, '04589', 'c2e4f6aa-7905-44b1-8d49-cfc5e3ef0b31.jpg', '琥珀色碗明料挺底疙瘩冰淇淋碗\r\n尺寸：10.5X10CM高\r\n重量不低于190G\r\n4只/内盒        12只/大箱', '4/12', 'PCS', '996', '0', '', '4.00', '2.00', '24.00', '23.00', '37.00', null, null, null, '946.20', null, '83', '0.95', null, null, '5.00', null, null, '', '10');
INSERT INTO `export_product_c` VALUES ('4028817a3a714bbf013a77d7cebc002d', '4028817a39ad8b950139af09b42f000f', '4028817a3a714bbf013a77d70ea8002c', 'ff808081301885760130189e47ca0013', '4028817a39ad8b950139af09b42f000e', 'C/2192/12', null, '22298', '2d52bc3d-0a52-4fe9-be73-31a92f3098f1.jpg', '全明料方缸，打眼配水龙头	\r\n盖子尺寸：18X18X4CM高 	\r\n重量650G，正负10%		\r\n身子尺寸：18X18X32CM高	\r\n重量：2400G，正负10%		\r\n底座尺寸：18X18X15CM高	\r\n重量：1800G，正负10%', '1/2', 'PCS', '648', '0', '', '12.00', '10.00', '49.50', '45.00', '41.50', null, null, null, '11100.24', null, '324', '17.13', null, null, '78.00', null, null, '', '1');
INSERT INTO `export_product_c` VALUES ('4028817a3add7a3b013ade92bf0d000c', '4028817a39bcfe9f0139be8f8ac2001b', '4028817a3add7a3b013ade8e067e000b', '1', '4028817a39bcfe9f0139be8f8ac2000c', '12JK1081', null, 'JK1050150/11307', '7c1062a5-0894-466f-b859-feaed6f54640.jpg', '全明料低口杯   口部描1CM宽白金边\r\n直径9X10.5CM高\r\n4只/五层内盒   24只/大箱\r\n产品白纸,瓦楞纸，汽泡纸包裹入内盒，\r\n内盒， 大箱用胶带纸工字封口\r\n大箱尺码：63X22X29CM  如有不符请提前通知', '4/24', 'PCS', '408', '0', '', '8.00', '6.00', '67.00', '23.00', '30.00', null, null, null, '693.60', null, '17', '1.70', null, null, '9.50', null, null, '', '2');
INSERT INTO `export_product_c` VALUES ('4028817a3add7a3b013ade92bf0d000d', '4028817a39bcfe9f0139be8f8ac2000f', '4028817a3add7a3b013ade8e067e000b', '1', '4028817a39bcfe9f0139be8f8ac2000c', '12JK1081', null, 'JK169340/13076', '8ac9f0a9-9463-46ae-a997-cbe474e3c26a.jpg', '全明料蛋糕盘配罩子  罩子上烤蒙砂白花纸\r\n直径24X25CM高    花纸我司提供\r\n1套/上下泡沫盖/五层内盒\r\n2套/大箱   上下泡沫盖工厂提供\r\n大箱尺码：60X30X27CM 如有不符请提前通知', '1/2', 'SETS', '58', '0', '', '6.50', '4.50', '62.00', '31.00', '29.00', null, null, null, '490.10', null, '29', '8.45', null, null, '42.00', null, null, '', '15');
INSERT INTO `export_product_c` VALUES ('4028817a3add7a3b013ade92bf1c000e', '4028817a39bcfe9f0139be8f8ac20019', '4028817a3add7a3b013ade8e067e000b', '4028817a33d4f8b40133d99621cb0023', '4028817a39bcfe9f0139be8f8ac2000c', '12JK1081', null, 'JK1050198 DECAL/12860', '9ea6dde1-81ab-4e4c-af9b-fc4f3e171702.jpg', '全明料酒杯  \r\n距口部1.5CM烤蒙砂白花纸\r\n直径11 X 19CM高\r\n4只/五层内盒    16只/大箱\r\n产品白纸,瓦楞纸，汽泡纸包裹入内盒，\r\n内盒， 大箱用胶带纸工字封口\r\n大箱尺码：49X25X45CM  如有不符请提前通知', '4/16', 'PCS', '160', '0', '', '6.00', '4.00', '49.00', '25.00', '45.00', null, null, null, '228.80', null, '10', '1.43', null, null, '7.00', null, null, '', '11');
INSERT INTO `export_product_c` VALUES ('4028817a3add7a3b013ade92bf3b000f', '4028817a39bcfe9f0139be8f8ac20010', '4028817a3add7a3b013ade8e067e000b', '4028817a33d4f8b40133d99621cb0023', '4028817a39bcfe9f0139be8f8ac2000c', '12JK1081', null, 'JK1050195 DECAL/12859', '91e4ce81-ffa9-4da9-a7de-75fd304212a8.jpg', '全明料香槟杯  \r\n距口部1.5CM烤蒙砂白花纸\r\n直径8 X 21CM高\r\n4只/五层内盒    16只/大箱\r\n产品白纸,瓦楞纸，汽泡纸包裹入内盒，\r\n内盒， 大箱用胶带纸工字封口\r\n大箱尺码：38X38X25CM  如有不符请提前通知', '4/16', 'PCS', '400', '0', '', '6.00', '4.00', '38.00', '38.00', '25.00', null, null, null, '532.00', null, '25', '1.33', null, null, '6.50', null, null, '', '10');
INSERT INTO `export_product_c` VALUES ('4028817a3add7a3b013ade92bf5b0010', '4028817a39bcfe9f0139be8f8ac20013', '4028817a3add7a3b013ade8e067e000b', '1', '4028817a39bcfe9f0139be8f8ac2000c', '12JK1081', null, 'JK1050201/12078', 'e2e71fa5-340e-46ea-a6fc-1968ef31a8db.jpg', '全明料蛋糕盘配罩子  罩子上烤蒙砂白花纸\r\n盘子尺寸：16X13CM高\r\n罩子尺寸：15X11.5CM高\r\n总高22CM    花纸我司提供\r\n1套/上下泡沫盖/五层内盒\r\n6套/大箱   上下泡沫盖工厂提供\r\n大箱尺码：63X43X25CM 如有不符请提前通知', '1/6', 'SETS', '96', '0', '', '7.50', '5.50', '69.00', '49.00', '28.00', null, null, null, '379.20', null, '16', '3.95', null, null, '20.00', null, null, '', '9');
INSERT INTO `export_product_c` VALUES ('4028817a3add7a3b013ade92bf5b0011', '4028817a39bcfe9f0139be8f8ac20016', '4028817a3add7a3b013ade8e067e000b', '4028817a33d4f8b40133d99621cb0023', '4028817a39bcfe9f0139be8f8ac2000c', '12JK1081', null, 'JK103136/11988', '624e38c0-d839-4150-817b-ee87f1d55a9c.jpg', '全明料密直棱酒杯   底厚要求5MM\r\n直径9X17.5CM 高\r\n4只/五层内盒    16只/大箱\r\n产品白纸,瓦楞纸，汽泡纸包裹入内盒，\r\n内盒， 大箱用胶带纸工字封口\r\n大箱尺码：42X21X41CM  如有不符请提前通知', '4/16', 'PCS', '320', '0', '', '6.00', '4.00', '42.00', '41.00', '41.00', null, null, null, '396.80', null, '20', '1.24', null, null, '6.50', null, null, '', '12');
INSERT INTO `export_product_c` VALUES ('4028817a3add7a3b013ade92bf5b0012', '4028817a39bcfe9f0139be8f8ac2000e', '4028817a3add7a3b013ade8e067e000b', '1', '4028817a39bcfe9f0139be8f8ac2000c', '12JK1081', null, 'JK1050152/11306', '205dad0d-9d11-4028-8bd3-8669aae23ed6.jpg', '全明料红酒杯   口部描1CM宽白金边\r\n直径7X26CM高\r\n4只/五层内盒   16只/大箱\r\n产品白纸,瓦楞纸，汽泡纸包裹入内盒，\r\n内盒， 大箱用胶带纸工字封口\r\n大箱尺码：44X44X30CM  如有不符请提前通知', '4/16', 'PCS', '352', '0', '', '5.00', '3.00', '48.00', '47.00', '31.00', null, null, null, '651.20', null, '22', '1.85', null, null, '10.00', null, null, '', '1');
INSERT INTO `export_product_c` VALUES ('4028817a3add7a3b013ade92bf5b0013', '4028817a39bcfe9f0139be8f8ac20018', '4028817a3add7a3b013ade8e067e000b', '1', '4028817a39bcfe9f0139be8f8ac2000c', '12JK1081', null, 'JK1050154/11308', '4ef4085f-6825-40bc-a4b3-9f96a627dd0e.jpg', '全明料香槟杯   口部描1CM宽白金边\r\n直径5X29CM高\r\n4只/五层内盒   16只/大箱\r\n产品白纸,瓦楞纸，汽泡纸包裹入内盒，\r\n内盒， 大箱用胶带纸工字封口\r\n大箱尺码：36X35X34CM  如有不符请提前通知', '4/16', 'PCS', '400', '0', '', '5.00', '3.00', '38.00', '37.00', '33.00', null, null, null, '628.00', null, '25', '1.57', null, null, '8.50', null, null, '', '3');
INSERT INTO `export_product_c` VALUES ('4028817a3add7a3b013ade92bf5b0014', '4028817a39bcfe9f0139be8f8ac2001c', '4028817a3add7a3b013ade8e067e000b', '4028817a33d4f8b40133d99621cb0023', '4028817a39bcfe9f0139be8f8ac2000c', '12JK1081', null, 'JK103134/11989', '34e4dfe7-f814-4249-a90e-4f9c3f2ef2e1.jpg', '全明料密直棱香槟杯   底厚要求5MM\r\n直径9X21CM 高\r\n4只/五层内盒    16只/大箱\r\n产品白纸,瓦楞纸，汽泡纸包裹入内盒，\r\n内盒， 大箱用胶带纸工字封口\r\n大箱尺码：46X22X52CM  如有不符请提前通知', '4/16', 'PCS', '400', '0', '', '6.00', '4.00', '39.00', '39.00', '25.00', null, null, null, '464.00', null, '25', '1.16', null, null, '6.00', null, null, '', '13');
INSERT INTO `export_product_c` VALUES ('4028817a3add7a3b013ade92bf5b0015', '4028817a39bcfe9f0139be8f8ac20011', '4028817a3add7a3b013ade8e067e000b', '4028817a33d4f8b40133d99621cb0023', '4028817a39bcfe9f0139be8f8ac2000c', '12JK1081', null, 'JK103822/11999', '778c9efc-aaec-47d9-a29c-afd12cbc3c40.jpg', '全明料酒杯   杯碗底气泡\r\n直径8.5 X 20CM 高\r\n4只/五层内盒    24只/大箱\r\n产品白纸,瓦楞纸，汽泡纸包裹入内盒，\r\n内盒， 大箱用胶带纸工字封口\r\n大箱尺码：58X39X24CM  如有不符请提前通知', '4/24', 'PCS', '408', '0', '', '8.00', '6.00', '58.00', '39.00', '24.00', null, null, null, '705.84', null, '17', '1.73', null, null, '9.50', null, null, '', '5');
INSERT INTO `export_product_c` VALUES ('4028817a3add7a3b013ade92bf5b0016', '4028817a39bcfe9f0139be8f8ac20017', '4028817a3add7a3b013ade8e067e000b', '2', '4028817a39bcfe9f0139be8f8ac2000c', '12JK1081', null, 'JK1050316/12005', 'cc94584e-e2ef-448f-b984-0c9fa32a7c81.jpg', '全明料糖缸 带盖子\r\n糖缸身上刻交叉麦穗花\r\n直径15 X 15CM 高\r\n1只/五层内盒    6只/大箱\r\n产品白纸,瓦楞纸，汽泡纸包裹入内盒，\r\n内盒， 大箱用胶带纸工字封口\r\n大箱尺码：59.5X40X21.5CM  如有不符请提前通知', '1/6', 'PCS', '210', '0', '', '12.00', '10.00', '59.50', '40.00', '21.50', null, null, null, '636.30', null, '35', '3.03', null, null, '16.00', null, null, '', '7');
INSERT INTO `export_product_c` VALUES ('4028817a3add7a3b013ade92bf5b0017', '4028817a39bcfe9f0139be8f8ac2000d', '4028817a3add7a3b013ade8e067e000b', '2', '4028817a39bcfe9f0139be8f8ac2000c', '12JK1081', null, 'JK1400016/00263030', 'fdd8941a-0a83-4e11-ad7e-22e8cc41f1d6.jpg', '全明料酒壶   配塞子\r\n直径6.5 X 28.5CM高\r\n1只/五层内盒    6只/大箱\r\n产品白纸,瓦楞纸，汽泡纸包裹入内盒，\r\n内盒， 大箱用胶带纸工字封口\r\n大箱尺码：54X36X28CM  如有不符请提前通知', '1/6', 'PCS', '162', '0', '', '9.00', '7.00', '55.50', '37.50', '28.50', null, null, null, '631.80', null, '27', '3.90', null, null, '21.00', null, null, '', '16');
INSERT INTO `export_product_c` VALUES ('4028817a3add7a3b013ade92bf5b0018', '4028817a39bcfe9f0139be8f8ac2001d', '4028817a3add7a3b013ade8e067e000b', '2', '4028817a39bcfe9f0139be8f8ac2000c', '12JK1081', null, 'JK1060185/12062', 'cb749c13-492d-4afd-8007-de5727dac039.jpg', '全明料斜口壶\r\n直径7.5 X 25.5CM 高\r\n1只/五层内盒    4只/大箱\r\n产品白纸,瓦楞纸，汽泡纸包裹入内盒，\r\n内盒， 大箱用胶带纸工字封口\r\n大箱尺码：47X46X30.5CM  如有不符请提前通知', '1/4', 'PCS', '96', '0', '', '6.00', '4.00', '47.00', '46.00', '30.50', null, null, null, '278.40', null, '24', '2.90', null, null, '13.50', null, null, '', '8');
INSERT INTO `export_product_c` VALUES ('4028817a3add7a3b013ade92bf5b0019', '4028817a39bcfe9f0139be8f8ac2001a', '4028817a3add7a3b013ade8e067e000b', '4028817a33d4f8b40133d99621cb0023', '4028817a39bcfe9f0139be8f8ac2000c', '12JK1081', null, 'JK1110085/00263023', '33202c73-b522-45e8-91c7-e944cec2c229.jpg', '钢蓝色酒杯\r\n直径 10 X 17.5CM高\r\n4只/五层内盒    16只/大箱\r\n产品白纸,瓦楞纸，汽泡纸包裹入内盒，\r\n内盒， 大箱用胶带纸工字封口\r\n大箱尺码：47X46X22.5CM  如有不符请提前通知', '4/16', 'PCS', '512', '0', '', '6.00', '4.00', '45.00', '23.00', '41.00', null, null, null, '742.40', null, '32', '1.45', null, null, '8.00', null, null, '', '17');
INSERT INTO `export_product_c` VALUES ('4028817a3add7a3b013ade92bf5b001a', '4028817a39bcfe9f0139be8f8ac20012', '4028817a3add7a3b013ade8e067e000b', '1', '4028817a39bcfe9f0139be8f8ac2000c', '12JK1081', null, 'JK1050068/11314', 'd451f801-07da-43f2-9619-a921b03f1032.jpg', '全明料马丁尼杯   口部描1CM宽白金边\r\n直径12X19CM高\r\n4只/五层内盒   16只/大箱\r\n产品白纸,瓦楞纸，汽泡纸包裹入内盒，\r\n内盒， 大箱用胶带纸工字封口\r\n大箱尺码：52X51X25CM  如有不符请提前通知', '4/16', 'PCS', '352', '0', '', '4.50', '2.50', '54.00', '53.00', '25.00', null, null, null, '844.80', null, '22', '2.40', null, null, '13.00', null, null, '', '4');
INSERT INTO `export_product_c` VALUES ('4028817a3add7a3b013ade92bf5b001b', '4028817a39bcfe9f0139be8f8ac20014', '4028817a3add7a3b013ade8e067e000b', '4028817a33d4f8b40133d99621cb0023', '4028817a39bcfe9f0139be8f8ac2000c', '12JK1081', null, 'JK1060019/11990', '5e65ac30-1d1b-4998-8cdd-e196977a4a56.jpg', '全明料密直棱低口杯  \r\n直径9X10.5CM 高\r\n4只/五层内盒    24只/大箱\r\n产品白纸,瓦楞纸，汽泡纸包裹入内盒，\r\n内盒， 大箱用胶带纸工字封口\r\n大箱尺码：63X22X27CM  如有不符请提前通知', '4/24', 'PCS', '240', '0', '', '7.00', '5.00', '63.00', '22.00', '27.00', null, null, null, '240.00', null, '10', '1.00', null, null, '5.00', null, null, '', '14');
INSERT INTO `export_product_c` VALUES ('4028817a3add7a3b013ade92bf5b001c', '4028817a39bcfe9f0139be8f8ac20015', '4028817a3add7a3b013ade8e067e000b', '4028817a33d4f8b40133d99621cb0023', '4028817a39bcfe9f0139be8f8ac2000c', '12JK1081', null, 'JK103819/12002', 'b86018c7-b69e-4738-9050-e2b47170a084.jpg', '全明料香槟杯   杯碗底气泡\r\n直径7.3 X 23CM 高\r\n4只/五层内盒    24只/大箱\r\n产品白纸,瓦楞纸，汽泡纸包裹入内盒，\r\n内盒， 大箱用胶带纸工字封口\r\n大箱尺码：60X39X29CM  如有不符请提前通知', '4/24', 'PCS', '432', '0', '', '8.00', '6.00', '54.00', '36.00', '27.00', null, null, null, '712.80', null, '18', '1.65', null, null, '9.00', null, null, '', '6');
INSERT INTO `export_product_c` VALUES ('4028817a3af21635013af29efe08003c', '4028817a39dbdfca0139dc98f59b0014', '4028817a3af21635013af27be5b80001', '4', '4028817a39dbdfca0139dc98f58c000a', '101204', null, '7102-0022', 'b2ec3ba0-9084-439b-8a6e-fa3277427053.jpg', '琥珀色高口杯，烤金花纸\r\n尺寸：8.3X14CM高\r\n4只/内盒        24只/大箱\r\n金花纸我司安排', '4/24', 'PCS', '1752', '1752', '', '7.00', '5.00', '60.00', '20.50', '35.00', null, null, null, '2540.40', null, '73', '1.45', null, null, '4.80', null, null, '', '16');
INSERT INTO `export_product_c` VALUES ('4028817a3af21635013af29efe18003d', '4028817a39dbdfca0139dc98f59b0017', '4028817a3af21635013af27be5b80001', '4', '4028817a39dbdfca0139dc98f58c000a', '101204', null, '7102-0033', '89341508-1b3d-4eba-b0ee-83619af4be56.jpg', '紫色高口杯，烤金花纸\r\n尺寸：8.3X14CM高\r\n4只/内盒        24只/大箱\r\n花纸我司安排', '4/24', 'PCS', '1512', '1512', '', '7.00', '5.00', '60.00', '20.50', '35.00', null, null, null, '2192.40', null, '63', '1.45', null, null, '4.80', null, null, '', '17');
INSERT INTO `export_product_c` VALUES ('4028817a3af21635013af29efe370042', '4028817a39dbdfca0139dc98f59b0015', '4028817a3af21635013af27be5b80001', '4', '4028817a39dbdfca0139dc98f58c000a', '101204', null, '7102-0001', '96d42e42-c55c-4d3a-bb1d-364793bb7576.jpg', '海蓝色口杯，烤金花纸\r\n尺寸：7.8X10CM高\r\n4只/内盒        48只/大箱\r\n花纸我司安排', '4/48', 'PCS', '2016', '2016', '', '11.00', '9.00', '56.00', '38.00', '27.00', null, null, null, '2479.68', null, '42', '1.23', null, null, '4.50', null, null, '', '13');
INSERT INTO `export_product_c` VALUES ('4028817a3af21635013af29efe370043', '4028817a39dbdfca0139dc98f59b0012', '4028817a3af21635013af27be5b80001', '4', '4028817a39dbdfca0139dc98f58c000a', '101204', null, '7102-0002', '247674aa-f96e-4acc-b8a0-76c6da9f2371.jpg', '琥珀色口杯，烤金花纸\r\n尺寸：7.8X10CM高\r\n4只/内盒        48只/大箱\r\n花纸我司安排', '4/48', 'PCS', '2016', '2016', '', '11.00', '9.00', '56.00', '38.00', '27.00', null, null, null, '2479.68', null, '42', '1.23', null, null, '4.50', null, null, '', '14');
INSERT INTO `export_product_c` VALUES ('4028817a3af21635013af29efe370044', '4028817a39dbdfca0139dc98f58c000c', '4028817a3af21635013af27be5b80001', '4', '4028817a39dbdfca0139dc98f58c000a', '101204', null, '7102-0011', '39f3bb4a-5938-45a4-ad62-86a33b18f2aa.jpg', '海蓝色高口杯，烤金花纸\r\n尺寸：8.3X14CM高\r\n4只/内盒        24只/大箱\r\n金花纸我司安排', '4/24', 'PCS', '2016', '2016', '', '7.00', '5.00', '60.00', '20.50', '35.00', null, null, null, '2923.20', null, '84', '1.45', null, null, '4.80', null, null, '', '15');
INSERT INTO `export_product_c` VALUES ('4028817a3af21635013af29efe370046', '4028817a39227b17013924437cb70014', '4028817a3af21635013af27be5b80001', '3', '4028817a39227b17013924437cb7000a', '101204', null, '7109-3013', '1d3d673d-96f7-41c2-9ffd-3969c093f48f.jpg', '全明料机压皇冠图案酒杯\r\n9.5X15 CM H\r\n4只/内盒    16只/大箱', '4/16', 'PCS', '1008', '1008', '', '8.00', '6.00', '45.00', '22.50', '37.00', null, null, null, '1108.80', null, '63', '1.10', null, null, '5.50', null, null, '', '2');
INSERT INTO `export_product_c` VALUES ('4028817a3af21635013af29efe470047', '4028817a39227b17013924437cb70011', '4028817a3af21635013af27be5b80001', '3', '4028817a39227b17013924437cb7000a', '101204', null, '7109-3041', 'fd2b60db-29db-4576-a2a0-d628709f13f9.jpg', '紫罗兰色机压皇冠图案低口杯\r\n7.3X10.5 CM H\r\n4只/内盒    24只/大箱', '4/24', 'PCS', '2016', '2016', '', '8.50', '6.50', '54.50', '18.50', '29.00', null, null, null, '1612.80', null, '84', '0.80', null, null, '3.30', null, null, '', '9');
INSERT INTO `export_product_c` VALUES ('4028817a3af21635013af29efe470048', '4028817a39227b17013924437cb7000c', '4028817a3af21635013af27be5b80001', '3', '4028817a39227b17013924437cb7000a', '101204', null, '7109-3022', '4805e5d2-fec4-4c9e-ab72-9021e5c9835b.jpg', '烟灰色机压皇冠图案高口杯\r\n8X12 CM H\r\n4只/内盒    16只/大箱', '4/16', 'PCS', '1504', '1504', '', '9.00', '7.00', '39.00', '38.00', '17.00', null, null, null, '1473.92', null, '94', '0.98', null, null, '4.80', null, null, '', '4');
INSERT INTO `export_product_c` VALUES ('4028817a3af21635013af29efe470049', '4028817a39dbdfca0139dc98f59b000f', '4028817a3af21635013af27be5b80001', '3', '4028817a39dbdfca0139dc98f58c000a', '101204', null, '7101-3002', '873d1d30-a49c-48f9-b95d-335f2963d404.jpg', '全明料酒杯\r\n尺寸：7.5X14.5CM高\r\n4只/内盒        24只/大箱', '4/24', 'PCS', '2016', '2016', '', '6.00', '4.00', '61.00', '41.00', '20.00', null, null, null, '2257.92', null, '84', '1.12', null, null, '6.00', null, null, '', '12');
INSERT INTO `export_product_c` VALUES ('4028817a3af21635013af29efe47004a', '4028817a39227b17013924437cb7000b', '4028817a3af21635013af27be5b80001', '3', '4028817a39227b17013924437cb7000a', '101204', null, '7109-3031', '8ef3e8d5-901c-454c-997d-6ac6058ae0f0.jpg', '海蓝色机压皇冠图案低口杯\r\n7.3X10.5 CM H\r\n4只/内盒    24只/大箱', '4/24', 'PCS', '2016', '2016', '', '8.50', '6.50', '54.50', '18.50', '29.00', null, null, null, '1612.80', null, '84', '0.80', null, null, '3.30', null, null, '', '6');
INSERT INTO `export_product_c` VALUES ('4028817a3af21635013af29efe47004c', '4028817a39227b17013924437cb7000f', '4028817a3af21635013af27be5b80001', '3', '4028817a39227b17013924437cb7000a', '101204', null, '7109-3043', '3fa2c05f-a008-458c-a198-4448c01c3c8a.jpg', '紫罗兰色机压皇冠图案酒杯\r\n9.5X15 CM H\r\n4只/内盒    16只/大箱', '4/16', 'PCS', '2000', '2000', '', '8.00', '6.00', '45.00', '22.50', '37.00', null, null, null, '2200.00', null, '125', '1.10', null, null, '5.50', null, null, '', '11');
INSERT INTO `export_product_c` VALUES ('4028817a3af21635013af29efe47004d', '4028817a39227b17013924437cb70010', '4028817a3af21635013af27be5b80001', '3', '4028817a39227b17013924437cb7000a', '101204', null, '7109-3042', '1bfc4a07-b573-4516-98b2-9d12b33513a2.jpg', '紫罗兰色机压皇冠图案高口杯\r\n8X12 CM H\r\n4只/内盒    16只/大箱', '4/16', 'PCS', '2000', '2000', '', '9.00', '7.00', '39.00', '38.00', '17.00', null, null, null, '1960.00', null, '125', '0.98', null, null, '4.80', null, null, '', '10');
INSERT INTO `export_product_c` VALUES ('4028817a3af21635013af29efe47004e', '4028817a39227b17013924437cb70015', '4028817a3af21635013af27be5b80001', '3', '4028817a39227b17013924437cb7000a', '101204', null, '7109-3033', '38809139-91b4-4714-a906-c4fd0b3fdcc3.jpg', '海蓝色机压皇冠图案酒杯\r\n9.5X15 CM H\r\n4只/内盒    16只/大箱', '4/16', 'PCS', '1504', '1504', '', '8.00', '6.00', '45.00', '22.50', '37.00', null, null, null, '1654.40', null, '94', '1.10', null, null, '5.50', null, null, '', '8');
INSERT INTO `export_product_c` VALUES ('4028817a3af21635013af29efe47004f', '4028817a39227b17013924437cb70013', '4028817a3af21635013af27be5b80001', '3', '4028817a39227b17013924437cb7000a', '101204', null, '7109-3032', 'd3118bab-bc53-4a03-a039-aa972dc8be1d.jpg', '海蓝色机压皇冠图案高口杯\r\n8X12 CM H\r\n4只/内盒    16只/大箱', '4/16', 'PCS', '1008', '1008', '', '9.00', '7.00', '39.00', '38.00', '17.00', null, null, null, '987.84', null, '63', '0.98', null, null, '4.80', null, null, '', '7');
INSERT INTO `export_product_c` VALUES ('4028817a3af21635013af29efe470050', '4028817a39227b17013924437cb70012', '4028817a3af21635013af27be5b80001', '3', '4028817a39227b17013924437cb7000a', '101204', null, '7109-3012', '9f6f3331-f0c7-4c49-9105-47c323bf384b.jpg', '全明料机压皇冠图案高口杯\r\n8X12 CM H\r\n4只/内盒    16只/大箱', '4/16', 'PCS', '1008', '1008', '', '9.00', '7.00', '39.00', '38.00', '17.00', null, null, null, '987.84', null, '63', '0.98', null, null, '4.80', null, null, '', '1');
INSERT INTO `export_product_c` VALUES ('4028817a3af21635013af29efe470052', '4028817a39227b17013924437cb7000d', '4028817a3af21635013af27be5b80001', '3', '4028817a39227b17013924437cb7000a', '101204', null, '7109-3023', '026be5f4-950a-4a9e-b93c-4071dac49427.jpg', '烟灰色机压皇冠图案酒杯\r\n9.5X15 CM H\r\n4只/内盒    16只/大箱', '4/16', 'PCS', '1504', '1504', '', '8.00', '6.00', '45.00', '22.50', '37.00', null, null, null, '1654.40', null, '94', '1.10', null, null, '5.50', null, null, '', '5');
INSERT INTO `export_product_c` VALUES ('4028817a3af21635013af29efe470053', '4028817a39227b17013924437cb7000e', '4028817a3af21635013af27be5b80001', '3', '4028817a39227b17013924437cb7000a', '101204', null, '7109-3021', '1b6cdb41-1903-4cd3-8057-0d43cbf2454e.jpg', '烟灰色机压皇冠图案低口杯\r\n7.3X10.5 CM H\r\n4只/内盒    24只/大箱', '4/24', 'PCS', '1512', '1512', '', '8.50', '6.50', '54.50', '18.50', '29.00', null, null, null, '1209.60', null, '63', '0.80', null, null, '3.30', null, null, '', '3');
INSERT INTO `export_product_c` VALUES ('4028817a3afc5d3d013afcc16fee0018', '4028817a39dbdfca0139dc98f59b0019', '4028817a3af21635013af27be5b80001', '1', '4028817a39dbdfca0139dc98f58c000a', '101204', null, '7103-4000', '00feca77-c9c4-4290-b816-f791ce10af55.jpg', '全明料一壶一杯，壶身上烤字母花纸H2O\r\n壶尺寸：4.5X24CM高\r\n杯尺寸：7X9.8CM高\r\n1只/内盒          12只/大箱\r\n花纸我司提供', '1/12', 'PCS', '804', '396', '', '11.00', '9.00', '50.00', '37.00', '31.00', null, null, null, '1889.40', null, '67', '2.35', null, null, '10.50', null, null, '', '18');
INSERT INTO `export_product_c` VALUES ('4028817a3b06ac0c013b06c6fe8b0002', '4028817a39facfc90139fb6f6c160003', '4028817a3b06ac0c013b06c618710001', '2', '4028817a39facfc90139fb6f6c160001', '12JK1089', null, 'S81157S', '858cf076-452c-42da-9b5c-9f6a0bf56e51.jpg', '全明料蛋糕盘配罩子\r\n罩子尺寸：9.5X11.5CM高\r\n盘子尺寸：11X11CM    全高：21CM\r\n罩子上的珠子尺寸：3.5X3.5CM\r\n1套/五层内盒      12套/大箱\r\n内盒中加1CM厚的保丽龙垫', '1/12', 'SETS', '600', '0', '', '8.00', '6.00', '55.00', '41.00', '32.50', null, null, null, '1740.00', null, '50', '2.90', null, null, '15.00', null, null, '', '1');
INSERT INTO `export_product_c` VALUES ('4028817a3b06ac0c013b06c6fe9b0003', '4028817a39facfc90139fb6f6c160002', '4028817a3b06ac0c013b06c618710001', '2', '4028817a39facfc90139fb6f6c160001', '12JK1089', null, 'S81157M', '6cd87ee1-d2ac-40b5-9e2e-1212af22762c.jpg', '全明料蛋糕盘配罩子\r\n盘子尺寸：13.5X12.5CM\r\n罩子尺寸：12X12.5CM\r\n罩子上的珠子尺寸：3.5X3.5CM\r\n1套/五层内盒       6套/大箱\r\n内盒中加1CM的保丽龙垫', '1/6', 'SETS', '600', '0', '', '7.00', '5.00', '50.00', '33.00', '33.00', null, null, null, '2220.00', null, '100', '3.70', null, null, '19.00', null, null, '', '2');
INSERT INTO `export_product_c` VALUES ('4028817a3b06ac0c013b06c6fe9b0004', '4028817a39facfc90139fb6f6c160004', '4028817a3b06ac0c013b06c618710001', '2', '4028817a39facfc90139fb6f6c160001', '12JK1089', null, 'S81157L', 'cb1d296a-61aa-43d5-b3b9-28202f130364.jpg', '全明料蛋糕盘配罩子\r\n盘子尺寸：13.5X12.5CM\r\n罩子尺寸：12X12.5CM  全高：23CM\r\n罩子上的珠子尺寸：3.5X3.5CM\r\n1套/五层内盒       6套/大箱\r\n内盒中加1CM厚的保丽龙垫', '1/6', 'SETS', '600', '0', '', '8.50', '6.50', '59.00', '39.00', '33.00', null, null, null, '2550.00', null, '100', '4.25', null, null, '22.00', null, null, '', '3');
INSERT INTO `export_product_c` VALUES ('4028817a3b1b4a71013b1bb051000003', '4028817a387362980138741de87f0015', '4028817a3b1b4a71013b1bafd5580002', 'ff808081301885760130189e47ca0013', '4028817a387362980138741de87f0014', 'C/1995/12', null, '2727', '0603106a-9e56-4363-814d-577097b6ef72.jpg', '全明料麻坑点方形罐子（打眼）	\r\n带盖子，配铸铁底座和矛头	\r\n盖子尺寸：20X6.3CM高		\r\n罐子尺寸：20X28CM高		\r\n待用安全包装运至西安方圆工贸', '1/1', 'SETS', '600', '0', '', null, null, null, null, null, null, null, null, '31800.00', null, '600', null, null, null, '53.00', null, null, '', '1');
INSERT INTO `export_product_c` VALUES ('4028817a3b1b4a71013b1bb063500004', '4028817a387362980138741de87f0016', '4028817a3b1b4a71013b1bafd5580002', '4028817a35e0895e0135ec7a4dbe0087', '4028817a387362980138741de87f0014', 'C/1995/12', null, '2727', '8f285ad4-19d3-4bcc-9db4-6668930bfd85.jpg', '铸铁底座和矛头		\r\n配方形罐子	\r\n1套/内盒/双层五层大箱	\r\n方形罐子于11月10日送到贵司\r\n#2727G用蜂窝纸板包装后入内盒，再入双层大箱；大箱外单面牛皮纸保护;\r\n双层大箱中间垫1公分保利龙垫，大箱上不可打钉，不可打内盒包带', '1/1', 'SETS', '600', '0', '', '8.00', '6.00', '37.00', '34.00', '55.00', null, null, null, '13200.00', null, '600', '22.00', null, null, '62.00', null, null, '', '2');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6dfe001b', '4028817a3aa9f950013aab27e2010017', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0025/JK1102331-D', 'a756712e-cd07-4896-b534-3e3737f65d2c.jpg', '套6全明料烤蒙砂花纸酒杯，口部描3MM白金，圆珠子描白金，花纸我司供\r\n尺寸：10.5X22 CM H\r\n1套/五层内盒   3套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸72X37X27 CM,如果实际尺寸相差较大请及时通知我司。', '1/3', 'SETS', '21', '180', '', '5.50', '3.50', '73.50', '35.50', '27.00', null, null, null, '224.91', null, '7', '10.71', null, null, '54.00', null, null, '', '19');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e0e001c', '4028817a3aa9f950013aab27e2010013', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0024/JK1104003-D', '5de54629-05a2-4716-a05d-fc2f819dfbd5.jpg', '套6全明料烤蒙砂花纸香槟杯，口部描3MM白金，圆珠子描白金，花纸我司供\r\n尺寸：6.3X27  CM H\r\n1套/五层内盒   4套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸46.5X32X32 CM,如果实际尺寸相差较大请及时通知我司。', '1/4', 'SETS', '20', '180', '', '6.50', '4.50', '54.00', '37.00', '32.00', null, null, null, '189.60', null, '5', '9.48', null, null, '51.00', null, null, '', '18');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e0e001d', '4028817a3aa9f950013aab27e2010014', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0026/JK1102332-D', '7b20bb90-6f89-4e23-bb63-3798929f9729.jpg', '套6全明料烤蒙砂花纸酒杯，口部描3MM白金，圆珠子描白金，花纸我司供\r\n尺寸：9X19.5 CM H\r\n1套/五层内盒   3套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸63X32.5X24.5 CM,如果实际尺寸相差较大请及时通知我司。', '1/3', 'SETS', '21', '180', '', '5.50', '3.50', '64.50', '31.00', '24.50', null, null, null, '211.89', null, '7', '10.09', null, null, '52.80', null, null, '', '20');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e0e001e', '4028817a3aa9f950013aab27e2010016', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0012/JK1102292-G', '8db5bacc-9a49-45cd-b441-1c86aba83214.jpg', '套6全明料刻花香槟杯，描亮油，口部描3MM黄金\r\n尺寸：6X25.5 CM H\r\n1套/五层内盒   4套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸45X30.5X30.5CM ,如果实际尺寸相差较大请及时通知我司。', '1/4', 'SETS', '20', '180', '', '5.50', '3.50', '49.50', '33.00', '30.50', null, null, null, '202.00', null, '5', '10.10', null, null, '57.00', null, null, '', '6');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e0e001f', '4028817a3aa9f950013aab27e2010020', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0014/JK1102290', 'a7c889de-fded-4ec7-963e-04e18c582fb6.jpg', '套6全明料刻花酒杯，描亮油，口部描3MM白金\r\n尺寸：8X23.5 CM H\r\n1套/五层内盒   3套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸57X30X28.5CM ,如果实际尺寸相差较大请及时通知我司。', '1/3', 'SETS', '21', '180', '', '5.50', '3.50', '58.50', '28.00', '28.50', null, null, null, '237.72', null, '7', '11.32', null, null, '61.20', null, null, '', '8');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e1d0020', '4028817a3aa9f950013aab27e2010023', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0018/JK1102314', 'daf104c4-493d-4483-a1a8-3f4815eb6109.jpg', '套6全明料刻花酒杯，描亮油，口部描3MM黄金，圆珠子描黄金\r\n尺寸：8.5X22.5 CM H\r\n1套/五层内盒   3套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸60X31.5X27.5 CM,如果实际尺寸相差较大请及时通知我司。', '1/3', 'SETS', '21', '180', '', '6.50', '4.50', '61.50', '30.50', '27.50', null, null, null, '257.04', null, '7', '12.24', null, null, '69.00', null, null, '', '12');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e1d0021', '4028817a3aa9f950013aab27e2010011', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0019/JK1102315', '0a3c80e0-0be6-4e4e-b69b-2eadc27a603e.jpg', '套6全明料刻花酒杯，描亮油，口部描3MM黄金，圆珠子描黄金\r\n尺寸：9.5X23.5 CM H\r\n1套/五层内盒   3套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸66X34X28.5 CM,如果实际尺寸相差较大请及时通知我司。', '1/3', 'SETS', '21', '180', '', '7.50', '5.50', '67.00', '32.50', '28.50', null, null, null, '276.15', null, '7', '13.15', null, null, '72.00', null, null, '', '13');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e1d0022', '4028817a3aa9f950013aab27e2010025', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0016/JK1102292', '031edc74-5f75-4e44-a0a3-e2fa77ea8344.jpg', '套6全明料刻花香槟杯，描亮油，口部描3MM白金\r\n尺寸：6X25.5 CM H\r\n1套/五层内盒   4套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸45X30.5X30.5CM ,如果实际尺寸相差较大请及时通知我司。', '1/4', 'SETS', '20', '180', '', '5.50', '3.50', '49.00', '33.00', '30.50', null, null, null, '202.00', null, '5', '10.10', null, null, '57.00', null, null, '', '10');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e1d0023', '4028817a3aa9f950013aab27e2010018', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0028/JK1102331', '70f71a48-e175-45eb-933d-69380c7c8d47.jpg', '套6全明料刻花酒杯，描亮油，口部描3MM白金，圆珠子描白金\r\n尺寸：10.5X22  CM H\r\n1套/五层内盒   3套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸72X37X27CM,如果实际尺寸相差较大请及时通知我司。', '1/3', 'SETS', '21', '180', '', '5.50', '3.50', '73.50', '35.50', '27.00', null, null, null, '246.75', null, '7', '11.75', null, null, '60.00', null, null, '', '22');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e1d0024', '4028817a3aa9f950013aab27e2010019', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0011/JK1102291-G', '15c81f0d-3594-4411-9a1e-c214a8b849ca.jpg', '套6全明料刻花酒杯，描亮油，口部描3MM黄金\r\n尺寸：7.5X21.5 CM H\r\n1套/五层内盒   3套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸54X28X26.5CM ,如果实际尺寸相差较大请及时通知我司。', '1/3', 'SETS', '21', '180', '', '5.00', '3.00', '58.50', '28.00', '26.50', null, null, null, '224.91', null, '7', '10.71', null, null, '60.00', null, null, '', '5');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e1d0025', '4028817a3aa9f950013aab27e201001a', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0017/JK1102295', '4f411504-e8bf-4fa0-99e7-2164c132fab6.jpg', '套6全明料刻花低口杯，描亮油，口部描3MM白金\r\n尺寸：8X9.5 CM H\r\n1套/五层内盒   4套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸57X20.5X25CM ,如果实际尺寸相差较大请及时通知我司。', '1/4', 'SETS', '20', '180', '', '7.00', '5.00', '46.00', '32.50', '27.50', null, null, null, '202.00', null, '5', '10.10', null, null, '57.00', null, null, '', '11');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e1d0026', '4028817a3aa9f950013aab27e201001d', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0008/JK1101026', '883938f8-9c1a-407d-a017-6b395b86b919.jpg', '套6全明料刻网格酒杯，网格描亮油\r\n尺寸：7.7X23.5 CM H\r\n1套/五层内盒   3套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸55X29X28.5 CM ,如果实际尺寸相差较大请及时通知我司。', '1/3', 'SETS', '21', '180', '', '5.50', '3.50', '56.50', '27.50', '28.50', null, null, null, '227.43', null, '7', '10.83', null, null, '60.00', null, null, '', '2');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e1d0027', '4028817a3aa9f950013aab27e201001e', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0013/JK1102295-G', '7f231a16-a93e-439c-b261-cb1458c2a857.jpg', '套6全明料刻花低口杯，描亮油，口部描3MM黄金\r\n尺寸：8X9.5 CM H\r\n1套/五层内盒   4套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸57X20.5X25CM ,如果实际尺寸相差较大请及时通知我司。', '1/4', 'SETS', '20', '180', '', '7.00', '5.00', '46.00', '32.50', '27.50', null, null, null, '202.00', null, '5', '10.10', null, null, '57.00', null, null, '', '7');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e1d0028', '4028817a3aa9f950013aab27e201001f', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0021/JK1102314-S', '831679a9-44e1-4f2b-b343-b185fe519894.jpg', '套6全明料刻花酒杯，描亮油，口部描3MM白金，圆珠子描白金\r\n尺寸：8.5X22.5 CM H\r\n1套/五层内盒   3套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸60X31.5X27.5 CM,如果实际尺寸相差较大请及时通知我司。', '1/3', 'SETS', '21', '180', '', '6.50', '4.50', '61.50', '30.50', '27.50', null, null, null, '257.04', null, '7', '12.24', null, null, '69.00', null, null, '', '15');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e1d0029', '4028817a3aa9f950013aab27e2010012', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0009/JK1101027', '948f3d34-8cd3-4883-b905-6a8d5e97bb2f.jpg', '套6全明料刻网格香槟杯，网格描亮油\r\n尺寸：5.8X27 CM H\r\n1套/五层内盒   3套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸44X23.5X32CM ,如果实际尺寸相差较大请及时通知我司。', '1/3', 'SETS', '21', '180', '', '5.00', '3.00', '55.50', '26.50', '32.00', null, null, null, '227.43', null, '7', '10.83', null, null, '57.00', null, null, '', '3');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e1d002a', '4028817a3aa9f950013aab27e2100026', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0029/JK1102332', 'be7f2343-5cfc-4dd0-8374-89240af19cca.jpg', '套6全明料刻花酒杯，描亮油，口部描3MM白金，圆珠子描白金\r\n尺寸：9X19.5 CM H\r\n1套/五层内盒   3套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸63X32.5X24.5 CM,如果实际尺寸相差较大请及时通知我司。', '1/3', 'SETS', '21', '180', '', '5.50', '3.50', '64.50', '31.00', '24.50', null, null, null, '233.73', null, '7', '11.13', null, null, '57.00', null, null, '', '23');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e1d002b', '4028817a3aa9f950013aab27e2010024', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0023/JK1102136-S', 'fd7f404e-bdf0-4f19-9139-0e14a66df32b.jpg', '套6全明料刻花香槟杯，描亮油，口部描3MM白金，圆珠子描白金\r\n尺寸：5.5X28  CM H\r\n1套/五层内盒   4套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸42X28.5X33 CM,如果实际尺寸相差较大请及时通知我司。', '1/4', 'SETS', '20', '180', '', '6.50', '4.50', '54.00', '37.00', '33.00', null, null, null, '238.60', null, '5', '11.93', null, null, '66.00', null, null, '', '17');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e1d002c', '4028817a3aa9f950013aab27e2010022', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0020/JK1102136', '2bd5940f-1e8e-4caa-889b-db7e6722c8eb.jpg', '套6全明料刻花香槟杯，描亮油，口部描3MM黄金，圆珠子描黄金\r\n尺寸：5.5X28  CM H\r\n1套/五层内盒   4套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸42X28.5X33 CM,如果实际尺寸相差较大请及时通知我司。', '1/4', 'SETS', '20', '180', '', '6.50', '4.50', '54.00', '37.00', '33.00', null, null, null, '238.60', null, '5', '11.93', null, null, '66.00', null, null, '', '14');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e1d002d', '4028817a3aa9f950013aab27e201001c', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0007/JK1101025', 'c480978b-62e3-4efd-a38d-cbb20899ef68.jpg', '套6全明料刻网格酒杯，网格描亮油\r\n尺寸：8.5X25 CM H\r\n1套/五层内盒   3套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸60X31X30CM ,如果实际尺寸相差较大请及时通知我司。', '1/3', 'SETS', '21', '180', '', '5.50', '3.50', '61.50', '30.50', '30.50', null, null, null, '243.18', null, '7', '11.58', null, null, '63.00', null, null, '', '1');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e1d002e', '4028817a3aa9f950013aab27e2010021', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0027/JK1104003', 'ffac3ac8-6354-4869-856e-28cfd29f6a02.jpg', '套6全明料刻花香槟杯，描亮油，口部描3MM白金，圆珠子描白金\r\n尺寸：6.3X27  CM H\r\n1套/五层内盒   4套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸46.5X32X32 CM,如果实际尺寸相差较大请及时通知我司。', '1/4', 'SETS', '20', '180', '', '6.50', '4.50', '54.00', '37.00', '32.00', null, null, null, '210.40', null, '5', '10.52', null, null, '57.00', null, null, '', '21');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e1d002f', '4028817a3aa9f950013aab27e2100027', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0015/JK1102291', '2639a0d1-79a7-426b-ab1d-3cd4ce6dcc25.jpg', '套6全明料刻花酒杯，描亮油，口部描3MM白金\r\n尺寸：7.5X21.5 CM H\r\n1套/五层内盒   3套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸54X28X26.5CM ,如果实际尺寸相差较大请及时通知我司。', '1/3', 'SETS', '21', '180', '', '5.00', '3.00', '58.50', '28.00', '26.50', null, null, null, '224.91', null, '7', '10.71', null, null, '60.00', null, null, '', '9');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e1d0030', '4028817a3aa9f950013aab27e2010015', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0010/JK1102290-G', '24f52aff-2177-4aae-89a8-c3fb801b09a2.jpg', '套6全明料刻花酒杯，描亮油，口部描3MM黄金\r\n尺寸：8X23.5 CM H\r\n1套/五层内盒   3套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸57X30X28.5CM ,如果实际尺寸相差较大请及时通知我司。', '1/3', 'SETS', '21', '180', '', '5.50', '3.50', '58.50', '28.00', '28.50', null, null, null, '237.72', null, '7', '11.32', null, null, '61.20', null, null, '', '4');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b5e6e1d0031', '4028817a3aa9f950013aab27e201001b', '4028817a3b3a59cd013b3b5bbd94001a', '1', '4028817a3aa9f950013aab27e2010010', '671112', null, 'JK0022/JK1102315-S', '4c6a3d70-7243-4e35-9632-9527890dd902.jpg', '套6全明料刻花酒杯，描亮油，口部描3MM白金，圆珠子描白金\r\n尺寸：9.5X23.5 CM H\r\n1套/五层内盒   3套/大箱\r\n产品用白纸、瓦纸、汽泡纸包裹入内盒，然后入大箱，大箱用透明胶带工字封口。\r\n大箱尺寸66X34X28.5 CM,如果实际尺寸相差较大请及时通知我司。', '1/3', 'SETS', '21', '180', '', '7.50', '5.50', '67.00', '32.50', '28.50', null, null, null, '276.15', null, '7', '13.15', null, null, '72.00', null, null, '', '16');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b96f4830034', '4028817a3a670a6f013a68766d46000a', '4028817a3b3a59cd013b3b96187b0033', '9', '4028817a3a670a6f013a68766d460001', 'C/2256/12', null, '5377', '5ddfd215-bdf0-4712-a185-c10126ac6c71.jpg', '全明料大号蛋糕盘粘底座，电镀脏银\r\n尺寸：31.5X13.5CM高\r\n1只/五层内盒        4只/大箱', '1/4', 'PCS', '600', '0', '', '7.00', '5.00', '36.00', '35.00', '51.00', null, null, null, '1950.00', null, '150', '3.25', null, null, '10.00', null, null, '', '6');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b96f4830035', '4028817a3a670a6f013a68766d56000f', '4028817a3b3a59cd013b3b96187b0033', '9', '4028817a3a670a6f013a68766d460001', 'C/2256/12', null, '5369', '3a14be04-c725-4956-9702-c1c3e7613a5d.jpg', '全明料粘底座小号钻石蛋糕盘，电镀脏银\r\n电镀我司安排\r\n尺寸：21X9.5CM高\r\n1只/五层内盒       4只/大箱', '1/4', 'PCS', '600', '0', '', '4.50', '2.50', '24.00', '24.00', '50.00', null, null, null, '1248.00', null, '150', '2.08', null, null, '6.80', null, null, '', '1');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b96f4830036', '4028817a3a670a6f013a68766d460007', '4028817a3b3a59cd013b3b96187b0033', '9', '4028817a3a670a6f013a68766d460001', 'C/2256/12', null, '5370', '3c553b14-cfb3-49cb-9469-cfc0baac9218.jpg', '全明料粘底座中号钻石蛋糕盘，电镀脏银\r\n电镀我司安排\r\n尺寸：25.4X9.5CM高\r\n1只/五层内盒        4只/大箱', '1/4', 'PCS', '600', '0', '', '5.50', '3.50', '30.00', '30.00', '51.00', null, null, null, '1554.00', null, '150', '2.59', null, null, '8.30', null, null, '', '2');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b96f4930037', '4028817a3a670a6f013a68766d46000c', '4028817a3b3a59cd013b3b96187b0033', '9', '4028817a3a670a6f013a68766d460001', 'C/2256/12', null, '5371', '204466d8-ac1f-45c5-850f-81fe0244e0f3.jpg', '全明料粘底座大号钻石蛋糕盘，电镀脏银\r\n尺寸：30.5CMX10CM高\r\n1只/五层内盒       4只/大箱', '1/4', 'PCS', '600', '0', '', '7.00', '5.00', '34.00', '34.00', '48.00', null, null, null, '1950.00', null, '150', '3.25', null, null, '10.00', null, null, '', '3');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b96f4930038', '4028817a3a670a6f013a68766d460002', '4028817a3b3a59cd013b3b96187b0033', '9', '4028817a3a670a6f013a68766d460001', 'C/2256/12', null, '5375', '0e2ff414-f511-4580-b451-081b9619001c.jpg', '全明料小号蛋糕盘粘底座，电镀脏银\r\n电镀我司安排\r\n尺寸：20X12CM高\r\n1只/五层内盒      4只/大箱', '1/4', 'PCS', '600', '0', '', '4.50', '2.50', '23.00', '23.00', '50.00', null, null, null, '1248.00', null, '150', '2.08', null, null, '6.80', null, null, '', '4');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3b96f4930039', '4028817a3a670a6f013a68766d460004', '4028817a3b3a59cd013b3b96187b0033', '9', '4028817a3a670a6f013a68766d460001', 'C/2256/12', null, '5376', '7160f232-cda2-4cb2-8d06-fe1f1bf33b34.jpg', '全明料中号蛋糕盘粘底座，电镀脏银\r\n电镀我司安排\r\n尺寸：25.5X12.7CM高\r\n1只/五层内盒        4只/大箱', '1/4', 'PCS', '600', '0', '', '5.50', '3.50', '29.00', '29.00', '52.00', null, null, null, '1554.00', null, '150', '2.59', null, null, '8.30', null, null, '', '5');
INSERT INTO `export_product_c` VALUES ('4028817a3b3a59cd013b3ba18c4e003b', '4028817a39991fae01399ad24e5a0028', '4028817a3b3a59cd013b3ba084c1003a', '3', '4028817a39991fae01399ad24e5a0027', '404058', null, '18008437/JK1700010', '354bf203-15cd-4f02-8979-2c866710b453.jpg', '全明料圆形黄油缸 \r\n直径6X9CM 高 \r\n6/五层内盒    24只/大箱 \r\n内盒中五层十字隔板， \r\n大箱要求5层双面牛皮纸印刷 \r\n封箱胶带由我司提供，  \r\n包装方式： 工字封口', '6/24', 'PCS', '2400', '0', '', '9.50', '7.50', '45.00', '33.50', '30.50', null, null, null, '2160.00', null, '100', '0.90', null, null, '5.00', null, null, '', '1');
INSERT INTO `export_product_c` VALUES ('402881e63d9b1903013d9b4bc72c000c', '4028817a3357462e01336d3a0be10016', '402881e63d9b1903013d9b4bc72c000b', '1', '4028817a3357462e01336d3a0be10014', '11JK1078', null, 'JK1014001', 'a2ffd39f-18d5-4a6b-89a2-bc91df4926f5.png', '全明料大碗，烤鱼白花纸\r\n尺寸：23X11CM高\r\n1只/五层内盒                4只/大箱\r\n花纸我司提供', '1/4', 'PCS', '1000', '0', '', null, null, null, null, null, null, null, null, '16500.00', null, '250', null, null, null, '16.50', null, null, '', '7');
INSERT INTO `export_product_c` VALUES ('402881e63d9b1903013d9b4bc74b000d', '4028817a3357462e01336d3a0be10015', '402881e63d9b1903013d9b4bc72c000b', '7', '4028817a3357462e01336d3a0be10014', '11JK1078', null, 'JK1014003', '699176d9-c242-42d2-8661-9ce712bba97a.png', '全明料盘子，烤鱼白花纸\r\n盘子直径：27CM\r\n2只/五层内盒        16只/大箱\r\n花纸我司提供', '2/16', 'PCS', '1200', '0', '', null, null, null, null, null, null, null, null, '9000.00', null, '75', null, null, null, '7.50', null, null, '', '6');
INSERT INTO `export_product_c` VALUES ('402881e63d9b1903013d9b4bc75a000e', '4028817a3357462e0133591b86ec0004', '402881e63d9b1903013d9b4bc72c000b', '2', '4028817a3357462e0133591b86ec0002', 'C/3817/11', null, '2964', 'ad25929a-27f5-4065-bb9f-6d4788d395ee.png', '全明料糖缸带盖子\r\n尺寸：19X48CM高  底径：13.5CM\r\n重量不低于1600克/只\r\n1只/上下保利龙盖/彩盒    4只/大箱', '1/4', 'PCS', '144', '0', '', null, null, null, null, null, null, null, null, '3456.00', null, '36', null, null, null, '24.00', null, null, '', '2');
INSERT INTO `export_product_c` VALUES ('402881e63d9b1903013d9b4bc75a000f', '4028817a3357462e0133592355750006', '402881e63d9b1903013d9b4bc72c000b', '2', '4028817a3357462e0133591b86ec0002', 'C/3817/11', null, '2976', 'af417c8a-e44f-406e-b226-194d8a61df75.png', '全明料糖缸带盖子\r\n尺寸：17.5X41CM高   底径：13CM\r\n重量不低于1800克/只\r\n1只/上下保利龙盖/彩盒     4只/大箱', '1/4', 'PCS', '144', '0', '', null, null, null, null, null, null, null, null, '2448.00', null, '36', null, null, null, '17.00', null, null, '', '4');
INSERT INTO `export_product_c` VALUES ('402881e63d9b1903013d9b4bc75a0010', '4028817a3357462e01336d3a0be10018', '402881e63d9b1903013d9b4bc72c000b', '1', '4028817a3357462e01336d3a0be10014', '11JK1078', null, 'JK1014005', '9ed4ab1e-d425-4b8d-beb3-1fa6dc63d1df.png', '全明料低口杯，烤鱼白花纸\r\n尺寸：7.3X10.5CM高\r\n4只/五层内盒       24只/大箱\r\n花纸我司提供', '4/24', 'PCS', '1800', '0', '', null, null, null, null, null, null, null, null, '9540.00', null, '75', null, null, null, '5.30', null, null, '', '9');
INSERT INTO `export_product_c` VALUES ('402881e63d9b1903013d9b4bc75a0011', '4028817a3357462e01336d3a0be10017', '402881e63d9b1903013d9b4bc72c000b', '1', '4028817a3357462e01336d3a0be10014', '11JK1078', null, 'JK1014006', 'edc6f494-cc9f-41f2-a04c-edff659df1af.png', '全明料低口杯，烤6种白花纸\r\n尺寸：7.3X10.5CM高\r\n6只/五层内盒         24只/大箱\r\n6种花纸内盒中混装，白花纸我司供', '6/24', 'PCS', '1800', '0', '', null, null, null, null, null, null, null, null, '9540.00', null, '75', null, null, null, '5.30', null, null, '', '8');
INSERT INTO `export_product_c` VALUES ('402881e63d9b1903013d9b4bc75a0012', '4028817a3357462e0133591b86ec0003', '402881e63d9b1903013d9b4bc72c000b', '2', '4028817a3357462e0133591b86ec0002', 'C/3817/11', null, '2965', '2ba24918-4c3c-4632-8d8a-9d475d5e4d2d.png', '全明料糖缸带盖子\r\n尺寸：16X40CM高  底径：11CM\r\n重量不低于1500克/只\r\n1只/上下保利龙盖/彩盒   6只/大箱', '1/6', 'PCS', '144', '0', '', null, null, null, null, null, null, null, null, '2448.00', null, '24', null, null, null, '17.00', null, null, '', '1');
INSERT INTO `export_product_c` VALUES ('402881e63d9b1903013d9b4bc75a0013', '4028817a3357462e01336d3a0be10019', '402881e63d9b1903013d9b4bc72c000b', '1', '4028817a3357462e01336d3a0be10014', '11JK1078', null, 'JK1080766-3', '21b5e24a-a58a-4a58-a705-1595faeec581.png', '全明料低口杯，烤3种不同的白花纸\r\n尺寸：7.3X10.5CM \r\n3只/五层内盒            24只/大箱\r\n每种花纸600只，3种花纸混装\r\n花纸我司提供', '3/24', 'PCS', '1800', '0', '', null, null, null, null, null, null, null, null, '9540.00', null, '75', null, null, null, '5.30', null, null, '', '10');
INSERT INTO `export_product_c` VALUES ('402881e63d9b1903013d9b4bc75a0014', '4028817a3357462e01336cc0879b0011', '402881e63d9b1903013d9b4bc72c000b', '3', '4028817a3357462e01336cc0877b0010', '11JK1080', null, 'JK1700011', '05702b8f-6bda-4bca-9c4d-f15c18f279eb.png', '全明料方形黄油缸\r\n尺寸：罩子：7.3X8CM高   盘：6X5CM\r\n1只/内盒       6只/中盒       24只/大箱', '24', 'SETS', '504', '0', '', null, null, null, null, null, null, null, null, '2318.40', null, '21', null, null, null, '4.60', null, null, '', '5');
INSERT INTO `export_product_c` VALUES ('402881e63d9b1903013d9b4bc75a0015', '4028817a3357462e0133592355750005', '402881e63d9b1903013d9b4bc72c000b', '2', '4028817a3357462e0133591b86ec0002', 'C/3817/11', null, '2977', 'b5480a29-da8c-41e1-b91c-54a9fdb15834.png', '全明料圆肚糖缸带盖子\r\n尺寸：16X36CM高    底径：12CM\r\n最大径：22CM    重量不低于1200克/只\r\n1只/上下保利龙盖/彩盒     2只/大箱', '1/2', 'PCS', '144', '0', '', null, null, null, null, null, null, null, null, '2448.00', null, '72', null, null, null, '17.00', null, null, '', '3');

-- ----------------------------
-- Table structure for `ext_cproduct_c`
-- ----------------------------
DROP TABLE IF EXISTS `ext_cproduct_c`;
CREATE TABLE `ext_cproduct_c` (
  `EXT_CPRODUCT_ID` varchar(40) NOT NULL,
  `FACTORY_ID` varchar(40) DEFAULT NULL,
  `CONTRACT_PRODUCT_ID` varchar(40) DEFAULT NULL,
  `CTYPE` int(11) DEFAULT NULL COMMENT 'SYS_CODE=0104',
  `PRODUCT_NAME` varchar(200) DEFAULT NULL,
  `PRODUCT_NO` varchar(50) DEFAULT NULL,
  `PRODUCT_IMAGE` varchar(200) DEFAULT NULL,
  `PRODUCT_DESC` varchar(600) DEFAULT NULL,
  `LOADING_RATE` varchar(30) DEFAULT NULL COMMENT 'x/y',
  `PACKING_UNIT` varchar(10) DEFAULT NULL COMMENT 'PCS/SETS',
  `CNUMBER` int(11) DEFAULT NULL,
  `OUT_NUMBER` int(11) DEFAULT NULL,
  `FINISHED` bit(1) DEFAULT NULL,
  `GROSS_WEIGHT` decimal(10,2) DEFAULT NULL,
  `NET_WEIGHT` decimal(10,2) DEFAULT NULL,
  `SIZE_LENGTH` decimal(10,2) DEFAULT NULL,
  `SIZE_WIDTH` decimal(10,2) DEFAULT NULL,
  `SIZE_HEIGHT` decimal(10,2) DEFAULT NULL,
  `PRODUCT_REQUEST` varchar(2000) DEFAULT NULL,
  `FACTORY` varchar(200) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `AMOUNT` decimal(10,2) DEFAULT NULL COMMENT '自动计算: 数量x单价',
  `CUNIT` varchar(10) DEFAULT NULL,
  `BOX_NUM` int(11) DEFAULT NULL,
  `EX_PRICE` decimal(10,2) DEFAULT NULL,
  `EX_UNIT` varchar(10) DEFAULT NULL COMMENT '$/￥',
  `NO_TAX` decimal(10,2) DEFAULT NULL COMMENT '收购单价',
  `TAX` decimal(10,2) DEFAULT NULL COMMENT '收购单价',
  `COST_PRICE` decimal(10,2) DEFAULT NULL COMMENT '自动计算=数量x含税/1.17标准值',
  `COST_TAX` decimal(10,2) DEFAULT NULL COMMENT '自动计算=数量x含税-收购成本金额',
  `ACCESSORIES` bit(1) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  PRIMARY KEY (`EXT_CPRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ext_cproduct_c
-- ----------------------------
INSERT INTO `ext_cproduct_c` VALUES ('4028817a3357462e013359291f540007', '4028817a37583d45013758d152450038', '4028817a3357462e0133591b86ec0003', '3', null, '2965', 'undefined', '彩盒，新菲林\r\n配全明料糖缸带盖子\r\n彩盒尺寸：20X20X41CM', null, 'PCS', '144', null, '', null, null, null, null, null, '1.彩盒要求350克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2011年11月05日。', null, '3.20', '460.80', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a3357462e013359291f640008', '4028817a34f93be50134f9df84470001', '4028817a3357462e0133591b86ec0004', '2', null, '2964', '', '彩盒，新菲林\r\n配全明料糖缸带盖子\r\n彩盒尺寸：22.5X22.5X48.5CM', null, 'PCS', '144', null, '', null, null, null, null, null, '1.彩盒要求350克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2011年11月05日。', null, '4.00', '576.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a3357462e013359291f640009', '10', '4028817a3357462e0133592355750006', '5', null, '2976', 'undefined', '彩盒，新菲林\r\n配明料糖缸带盖子\r\n彩盒尺寸：25.7X25.7X35.7CM', null, 'PCS', '144', null, '', null, null, null, null, null, '1.彩盒要求350克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2011年11月05日。', null, '3.90', '561.60', null, null, null, null, null, null, null, null, '', '4');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a3357462e013359291f64000a', '4028817a34f93be50134f9df84470001', '4028817a3357462e0133592355750006', '4', null, '2976', 'undefined', '彩盒，新菲林\r\n配全明料糖缸带盖子\r\n彩盒尺寸：21.5X21.5X41CM', null, 'PCS', '144', null, '', null, null, null, null, null, '1.彩盒要求350克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2011年11月05日。', null, '3.30', '475.20', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33812ffd0133820c0a460028', '19', '4028817a33812ffd013382048ff80027', '2', null, '20-37-266/JK1050164', '73be2c8a-b961-4ae9-899a-2d259ecd152b.png', '蒙砂白花纸\r\n配全明料蛋糕罩\r\n\r\n送祁县宏艺厂', null, 'PCS', '1200', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月05日；', null, '0.40', '480.00', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33812ffd0133820c0a460029', '19', '4028817a33812ffd013382048ff80026', '2', null, '20-37-265/JK1050163', '1af851ab-98ff-4227-ba39-1175dca33c6f.png', '蒙砂白花纸\r\n配全明料蛋糕罩\r\n\r\n送祁县宏艺厂', null, 'PCS', '1200', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月05日；', null, '0.38', '456.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33812ffd0133820c0a46002a', '19', '4028817a33812ffd013382048ff80025', '2', null, '20-37-264/JK1051087', 'bdf6ff59-ab4c-4218-a554-361ec409a04f.png', '蒙砂白花纸\r\n配全明料蛋糕罩\r\n\r\n送祁县宏艺厂', null, 'PCS', '1200', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月05日；', null, '0.35', '420.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33d4f8b40133d994c45e0021', '19', '4028817a33d4f8b40133d9878e880014', '2', null, 'JK169340/13076', 'undefined', '蒙砂白花纸\r\n烤在蛋糕罩上\r\n送祁县光华厂', null, 'PCS', '464', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同我司提供样稿一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月20日。', null, '1.02', '473.28', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33d4f8b40133d994c45e0022', '19', '4028817a33d4f8b40133d9878e880016', '2', null, 'JK1050201/12078', '', '蒙砂白花纸\r\n烤在蛋糕罩上\r\n送祁县光华厂', null, 'PCS', '204', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同我司提供的样稿一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月20日送指定工厂。', null, '0.80', '163.20', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33ecdbf70133edfc84d40001', '19', '4028817a3357462e01336d3a0be10018', '2', null, 'JK1014005', '94d2d773-24b6-412e-b0e3-0fc9dddf0955.png', '低温鱼花纸\r\n明料低口杯\r\n祁县宏艺厂', null, 'PCS', '1800', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月10；', null, '1.20', '2160.00', null, null, null, null, null, null, null, null, '', '4');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33ecdbf70133edfc84e40002', '19', '4028817a3357462e01336d3a0be10019', '2', null, 'JK1080766-3', '29bb909d-d527-475d-bfbe-e5e05a02349c.png', '套3白花纸\r\n\r\n送祁县宏艺厂', null, 'SETS', '600', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月10；', null, '0.60', '360.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33ecdbf70133edfc84e40003', '19', '4028817a3357462e01336d3a0be10017', '2', null, 'JK1014006', '7be85008-7652-4995-aaca-3ade8405eca9.png', '套6彩色花纸\r\n明料低口杯\r\n祁县宏艺厂', null, 'SETS', '300', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月10；', null, '9.00', '2700.00', null, null, null, null, null, null, null, null, '', '5');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33ecdbf70133edfc84e40004', '19', '4028817a3357462e01336d3a0be10016', '2', null, 'JK1014001', '7a3d341f-f473-44ce-9bd4-c7f2b87343ca.png', '低温鱼花纸\r\n明料大碗\r\n送祁县宏艺厂', null, 'PCS', '1000', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月10；', null, '2.40', '2400.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33ecdbf70133edfc84e40005', '19', '4028817a3357462e01336d3a0be10015', '2', null, 'JK1014003', '73980c53-44f6-4232-8c04-9d08a66eeccb.png', '低温鱼花纸\r\n明料盘子\r\n\r\n送祁县天顺厂', null, 'PCS', '1200', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月10；', null, '3.80', '4560.00', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fcdff5490011', '19', '4028817a33fc4e280133fcdb13f40010', '2', null, 'JK046/JK1050201', 'undefined', '蒙砂白花纸\r\n烤在蛋糕罩子上\r\n送祁县光华厂', null, 'PCS', '600', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月15日；', null, '0.80', '480.00', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fcdff5490012', '20', '4028817a33d4f8b40133d9bea39b0032', '4', null, 'JK1050807/JK033', 'undefined', '套6全明料酒杯\r\n杯碗电镀渐变色，挺底电镀\r\n尺寸：8X24CM高', null, 'SETS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年12月15日/工厂。                          没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '21.00', '6300.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fcdff5490013', '20', '4028817a33d4f8b40133d9bea39b0030', '4', null, 'JK1050806/JK032', '', '套6全明料香槟杯\r\n杯碗电镀渐变色，挺底电镀\r\n尺寸：5.7X25CM高', null, 'SETS', '320', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年12月15日/工厂。                          没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '21.00', '6720.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fd906b0d0029', '19', '4028817a33fc4e280133fd81e7d70027', '2', null, 'JK1040009/141760', 'undefined', '白色字母花纸 \r\n送祁县宏艺厂', null, 'PCS', '300', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月25日；', null, '0.90', '270.00', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fd906b0d002a', '19', '4028817a33fc4e280133fd81e7d7001f', '2', null, 'J859102682/113860', '', '白色字母花纸\r\nSTORAGE ONLY\r\n祁县宏艺厂', null, 'PCS', '300', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月25日；', null, '0.40', '120.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fd906b0d002b', '19', '4028817a33fc4e280133fd81e7d70026', '2', null, 'JK10501218/160380', 'undefined', '白色字母花纸 \r\n送祁县宏艺厂', null, 'PCS', '600', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月25日；', null, '0.40', '240.00', null, null, null, null, null, null, null, null, '', '4');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fd906b0d002c', '19', '4028817a33fc4e280133fd81e7d70021', '2', null, '123540', 'undefined', '白色字母花纸(HIGH TEA)\r\n字体：ENGLISH SCRIPT\r\n尺寸：18X5.5CM\r\n祁县光华厂', null, 'PCS', '100', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月25日；', null, '0.30', '30.00', null, null, null, null, null, null, null, null, '', '5');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fd906b0d002d', '19', '4028817a33fc4e280133fd81e7d70022', '2', null, 'JK1052446/158080', 'undefined', '白色字母花纸\r\n\r\n \r\n祁县会龙厂', null, 'PCS', '702', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月25日；', null, '0.25', '175.50', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fd906b0d002e', '19', '4028817a33fc4e280133fd81e7d7001e', '2', null, '169280', 'undefined', '白色字母花纸(HIGH TEA)\r\n字体：ENGLISH SCRIPT\r\n尺寸：18X5.5CM\r\n祁县光华厂', null, 'PCS', '100', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月25日；', null, '0.30', '30.00', null, null, null, null, null, null, null, null, '', '6');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fded2e6d0040', '19', '4028817a33fc4e280133fde6504f0039', '2', null, 'JK169340/13076', 'undefined', '蒙砂白花纸\r\n\"烤在蛋糕罩子上(25X26CM)\r\n\"\r\n祁县光华厂', null, 'PCS', '200', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月20日', null, '1.02', '204.00', null, null, null, null, null, null, null, null, '', '4');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fded2e6d0041', '19', '4028817a33fc4e280133fde6504f0038', '2', null, 'JK1050198/12860', 'undefined', '蒙砂白花纸\r\n烤在红酒杯（11X19CM)上\r\n送平遥鸿艺', null, 'PCS', '400', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月20日', null, '0.49', '196.00', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fded2e6d0042', '19', '4028817a33fc4e280133fde6504f003c', '2', null, 'JK1050195/12859', 'undefined', '蒙砂白花纸\r\n烤在香槟杯(8X21CM)上\r\n送平遥鸿艺', null, 'PCS', '400', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月20日', null, '0.40', '160.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fded2e6d0043', '19', '4028817a33fc4e280133fde6504f0037', '2', null, 'JK1050201/12078', '', '蒙砂白花纸\r\n烤在蛋糕罩子上\r\n祁县光华厂', null, 'PCS', '402', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月20日；', null, '0.80', '321.60', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd3200001', '22', '4028817a33812ffd0133816aacd40019', '4', null, '4998', 'undefined', '全明料死模风灯 ，电镀花银喷紫色\r\n尺寸：11.5X30.5CM', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '', '6');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f0002', '19', '4028817a33812ffd0133816aacd40017', '2', null, '5117', 'undefined', '白金字母花纸\r\nSWEETS\r\n送祁县光华厂', null, 'PCS', '300', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月30日；', null, '3.00', '900.00', null, null, null, null, null, null, null, null, '', '12');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f0003', '22', '4028817a33812ffd0133813f25a30002', '4', null, '4993', '', '全明料死模风灯，电镀花银喷绿色\r\n尺寸：11.5X20.3CM\r\n毛坯1月25日送', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f0004', '22', '4028817a33812ffd0133816aacd40018', '4', null, '5400', 'undefined', '全明料死模风灯，电镀花银喷蓝色\r\n尺寸：17X23CM高', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.50', '1050.00', null, null, null, null, null, null, null, null, '', '10');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f0005', '22', '4028817a33812ffd0133816aacd4000d', '4', null, '4996', 'undefined', '全明料死模风灯，电镀花银喷绿色\r\n尺寸：11.5X30.5CM高', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '', '4');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f0006', '22', '4028817a33812ffd0133816aacd40014', '4', null, '5336', 'undefined', '全明料死模风灯，电镀花银喷绿色\r\n尺寸：14.5X20CM高', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '2.00', '600.00', null, null, null, null, null, null, null, null, '', '8');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f0007', '22', '4028817a33812ffd0133813f25a30003', '4', null, '4994', 'undefined', '全明料死模风灯，电镀花银喷蓝色\r\n尺寸：11.5X20.3CM高', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f0008', '20', '4028817a33812ffd0133816aacd40011', '4', null, '6998', 'undefined', '全明料蛋糕盘，盘沿电镀\r\n尺寸：6-1/2\"X12-1/2\"高', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '6.00', '1800.00', null, null, null, null, null, null, null, null, '', '11');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f0009', '22', '4028817a33812ffd0133816aacd4000c', '4', null, '4997', 'undefined', '全明料死模风灯，电镀花银喷蓝色\r\n尺寸：11.5X30.5CM高', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '', '5');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f000a', '19', '4028817a33812ffd0133816aacd40012', '2', null, '5118', 'undefined', '白金字母花纸\r\nSWEETS\r\n送祁县光华厂', null, 'PCS', '600', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月30日；', null, '3.00', '1800.00', null, null, null, null, null, null, null, null, '', '13');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f000b', '22', '4028817a33812ffd0133816aacd40015', '4', null, '5337', 'undefined', '全明料死模风灯，电镀花银喷蓝色\r\n尺寸：14.5X20CM高', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '2.00', '600.00', null, null, null, null, null, null, null, null, '', '9');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f000c', '22', '4028817a33812ffd0133816aacc40009', '4', null, '5331', 'undefined', '全明料死模风灯，电镀花银喷绿色\r\n尺寸：17X23CM高', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.50', '1050.00', null, null, null, null, null, null, null, null, '', '7');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f000d', '22', '4028817a33812ffd0133813f25a30004', '4', null, '4995', 'undefined', '全明料死模风灯，电镀花银喷紫色\r\n尺寸：11.5X20.3CM', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cad7b730023', '19', '4028817a3420e78a013421a693820007', '2', null, '5117', 'undefined', '白金字母花纸\r\nSWEETS\r\n送祁县光华厂', null, 'PCS', '300', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年1月15日。', null, '3.00', '900.00', null, null, null, null, null, null, null, null, '', '11');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cad7b730024', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421e2e3c1001a', '4', null, '5337', 'e877a4e2-2e48-4b06-91a8-3fb64f150a0f.jpg', '全明料死模风灯，电镀花银喷蓝色			\r\n尺寸：14.5X20CM高			\r\n1只/五层内盒      12只/大箱			\r\n毛坯1月30日送', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '900.00', null, null, null, null, null, null, null, null, '', '9');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cad7b730027', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421a693820002', '4', null, '4995', 'b232e729-a02f-48b2-987b-2c6311827816.jpg', '全明料死模风灯，电镀花银喷浅紫色\r\n明料挺底			\r\n尺寸：11.5X20.3CM		\r\n1只/五层内盒     12只/大箱	\r\n毛坯1月30日送', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cad7b730029', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421a693820004', '4', null, '4996', '987692c0-6e47-4117-b6c8-3dbbeaca1b0c.jpg', '全明料死模风灯，电镀花银喷浅绿色\r\n明料挺底			\r\n尺寸：11.5X30.5CM高		\r\n1只/五层内盒      6只/大箱	\r\n毛坯1月30日送', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '', '4');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cad7b73002a', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421a693820006', '4', null, '4993', 'a803fa9e-dda1-476a-a822-a51b226aca39.jpg', '全明料死模风灯，电镀花银喷浅绿色 \r\n明料挺底			\r\n尺寸：11.5X20.3CM		\r\n1只/五层内盒      12只/大箱	\r\n毛坯1月30日送', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cad7b73002b', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421d2e3fe0014', '4', null, '5331', '51902cb9-1650-480b-8373-2da4c3f2338b.jpg', '全明料死模风灯，电镀花银喷绿色			\r\n尺寸：17X23CM高			\r\n1只/五层内盒      6只/大箱			\r\n毛坯1月30日送', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.50', '1050.00', null, null, null, null, null, null, null, null, '', '7');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cad7b73002d', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421a693820003', '4', null, '4994', '05b37ddc-8904-4df3-8167-b98129c600de.jpg', '全明料死模风灯，电镀花银喷浅蓝色\r\n明料挺底			\r\n尺寸：11.5X20.3CM		\r\n1只/五层内盒     12只/大箱	\r\n毛坯1月30日送', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cadeab80031', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421a693920011', '4', null, '4997', '7dbc495e-a12c-4eec-9975-c93c1b3f4297.jpg', '全明料死模风灯，电镀花银喷浅蓝色\r\n明料挺底			\r\n尺寸：11.5X30.5CM高		\r\n1只/五层内盒      6只/大箱	\r\n毛坯1月30日送', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '', '5');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cadeab80037', '19', '4028817a3420e78a013421a693820005', '2', null, '5118', 'undefined', '白金字母花纸\r\nSWEETS\r\n送祁县光华厂', null, 'PCS', '300', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年1月15日。', null, '3.00', '900.00', null, null, null, null, null, null, null, null, '', '12');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cadec6d003a', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421d2e3fe0013', '4', null, '5336', 'c8350cd2-47ae-4054-ad81-70004fe4eb44.jpg', '全明料死模风灯，电镀花银喷绿色			\r\n 尺寸：14.5X20CM高			\r\n1只/五层内盒      12只/大箱			\r\n毛坯1月30日送', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '900.00', null, null, null, null, null, null, null, null, '', '8');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cadec6d0042', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421a69382000e', '4', null, '4998', '44fc2f77-af8a-42d3-8d9b-fa2bafa8f47a.jpg', '全明料死模风灯，电镀花银喷浅紫色\r\n明料挺底			\r\n尺寸：11.5X30.5CM高		\r\n1只/五层内盒      6只/大箱	\r\n毛坯1月30日送', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '', '6');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cadec6d0044', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421e2e3c10016', '4', null, '5400', '601585a1-ba16-42bb-9ffb-d187b521be1f.jpg', '全明料死模风灯，电镀花银喷蓝色			\r\n尺寸：17X23CM高			\r\n1只/五层内盒      6只/大箱			\r\n毛坯1月30日送', null, 'PCS', '300', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.50', '1050.00', null, null, null, null, null, null, null, null, '', '10');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353d39f06c005d', '19', '4028817a353b8d8e01353d32350d0051', '2', null, '5117', 'aec0cd7f-795e-4c5f-b8c5-532b6479c4be.jpg', '白金字母花纸\r\nSWEETS\r\n安全包装送祁县光华厂', null, 'PCS', '100', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年2月5日。', null, '3.00', '300.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353d39f06c005e', '4028817a33ecdbf70133ee202e49000b', '4028817a353b8d8e01353d32350d005b', '4', null, '5336', '4436f9d7-b0e2-4926-9cd4-f6c66333c290.jpg', '全明料死模风灯，电镀花银喷绿色			\r\n 			\r\n尺寸：14.5X20CM高			\r\n1只/五层内盒      12只/大箱			\r\n毛坯1月30日送', null, 'PCS', '156', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '468.00', null, null, null, null, null, null, null, null, '', '4');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353d39f06c005f', '4028817a33ecdbf70133ee202e49000b', '4028817a353b8d8e01353d32350d005a', '4', null, '5330', 'be775015-234a-4504-ad52-af6af53d2a9c.jpg', '全明料死模风灯，电镀花银喷紫色			\r\n			\r\n尺寸：14.5X20CM高			\r\n1只/五层内盒      12只/大箱			\r\n毛坯1月30日送', null, 'PCS', '156', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '468.00', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353d39f06c0060', '19', '4028817a353b8d8e01353d32350d0055', '2', null, '5118', 'undefined', '白金字母花纸\r\nSWEETS\r\n安全包装送祁县光华厂', null, 'PCS', '100', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年2月5日。', null, '3.00', '300.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353d39f06c0061', '4028817a33ecdbf70133ee202e49000b', '4028817a353b8d8e01353d32350d0057', '4', null, '5337', '673a4e11-3706-4beb-b958-ee1d7c564b3b.jpg', '全明料死模风灯，电镀花银喷蓝色			\r\n 			\r\n尺寸：14.5X20CM高			\r\n1只/五层内盒      12只/大箱			\r\n毛坯1月30日送', null, 'PCS', '156', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '468.00', null, null, null, null, null, null, null, null, '', '5');
INSERT INTO `ext_cproduct_c` VALUES ('ff8080813b3fe45f013b4014fc7d0002', '4028817a3632e86601363344d16d0001', 'TONY4028817a3a52668d013a54165fa50009', '8', null, '56661-32', 'undefined', '彩盒，覆膜\r\n尺寸：31.5X31.5X41.5 CM H\r\n大号风灯', null, 'PCS', '804', null, '', null, null, null, null, null, '1.彩盒要求350克面纸；', null, '4.00', '3216.00', null, null, null, null, null, null, null, null, '', '18');
INSERT INTO `ext_cproduct_c` VALUES ('ff8080813b3fe45f013b40166b6f0003', '4028817a353b8d8e0135415bf0a90070', 'TONY4028817a3a52668d013a54165fa50009', '8', null, '56661-32', 'undefined', '123', null, 'PCS', '1', null, '', null, null, null, null, null, '1.彩盒要求350克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:。', null, '1.00', '1.00', null, null, null, null, null, null, null, null, '', '18');

-- ----------------------------
-- Table structure for `ext_eproduct_c`
-- ----------------------------
DROP TABLE IF EXISTS `ext_eproduct_c`;
CREATE TABLE `ext_eproduct_c` (
  `EXT_EPRODUCT_ID` varchar(40) NOT NULL,
  `FACTORY_ID` varchar(40) DEFAULT NULL,
  `EXPORT_PRODUCT_ID` varchar(40) DEFAULT NULL,
  `CONTRACT_PRODUCT_ID` varchar(40) DEFAULT NULL,
  `CTYPE` int(11) DEFAULT NULL COMMENT 'SYS_CODE=0104',
  `PRODUCT_NAME` varchar(200) DEFAULT NULL,
  `PRODUCT_NO` varchar(50) DEFAULT NULL,
  `PRODUCT_IMAGE` varchar(200) DEFAULT NULL,
  `PRODUCT_DESC` varchar(600) DEFAULT NULL,
  `LOADING_RATE` varchar(30) DEFAULT NULL COMMENT 'x/y',
  `PACKING_UNIT` varchar(10) DEFAULT NULL COMMENT 'PCS/SETS',
  `CNUMBER` int(11) DEFAULT NULL,
  `OUT_NUMBER` int(11) DEFAULT NULL,
  `FINISHED` bit(1) DEFAULT NULL,
  `GROSS_WEIGHT` decimal(10,2) DEFAULT NULL,
  `NET_WEIGHT` decimal(10,2) DEFAULT NULL,
  `SIZE_LENGTH` decimal(10,2) DEFAULT NULL,
  `SIZE_WIDTH` decimal(10,2) DEFAULT NULL,
  `SIZE_HEIGHT` decimal(10,2) DEFAULT NULL,
  `PRODUCT_REQUEST` varchar(2000) DEFAULT NULL,
  `FACTORY` varchar(200) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `AMOUNT` decimal(10,2) DEFAULT NULL COMMENT '自动计算: 数量x单价',
  `CUNIT` varchar(10) DEFAULT NULL,
  `BOX_NUM` int(11) DEFAULT NULL,
  `EX_PRICE` decimal(10,2) DEFAULT NULL,
  `EX_UNIT` varchar(10) DEFAULT NULL COMMENT '$/￥',
  `NO_TAX` decimal(10,2) DEFAULT NULL COMMENT '收购单价',
  `TAX` decimal(10,2) DEFAULT NULL COMMENT '收购单价',
  `COST_PRICE` decimal(10,2) DEFAULT NULL COMMENT '自动计算=数量x含税/1.17标准值',
  `COST_TAX` decimal(10,2) DEFAULT NULL COMMENT '自动计算=数量x含税-收购成本金额',
  `ACCESSORIES` bit(1) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  PRIMARY KEY (`EXT_EPRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ext_eproduct_c
-- ----------------------------
INSERT INTO `ext_eproduct_c` VALUES ('20120219160812000000', '19', '4028817a3629a68e013629ffd1a8000f', null, '2', null, 'JK1501002-D', '226f0e40-6c03-431d-8741-7bdd7adce345.jpg', '黄金花纸\r\n配全明料蛋糕罩\r\n罩子尺寸：19X19.8CM高\r\n安全包装送祁县宏艺厂', null, 'PCS', '700', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年3月20日。', null, '9.50', '6650.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('20120219160812000001', '19', '4028817a3629a68e013629ffd199000d', null, '2', null, 'LYJK10/JK1502002', 'acf6a860-666a-450e-ba00-dbcc10ecc4f9.jpg', '黄金花纸\r\n配全明料蛋糕罩\r\n罩子尺寸：12.5*13CM高\r\n安全包装送祁县宏艺', null, 'PCS', '1200', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年3月20日。', null, '4.20', '5040.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('20120219160812000002', '19', '4028817a3629a68e013629ffd1a8000e', null, '2', null, 'LYJK11/JK1502004', 'a41cf35b-8226-4bc8-8c34-a99f2a8d9c5e.jpg', '黄金花纸\r\n配全明料蛋糕罩\r\n罩子尺寸：15*15.5CM高\r\n安全包装送祁县宏艺', null, 'PCS', '1000', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年3月20日。', null, '4.70', '4700.00', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_eproduct_c` VALUES ('20120221120552000000', '19', '4028817a3632e8660136336eabe70003', null, '2', null, 'LYJK11/JK1502004', 'a41cf35b-8226-4bc8-8c34-a99f2a8d9c5e.jpg', '黄金花纸\r\n配全明料蛋糕罩\r\n罩子尺寸：15*15.5CM高\r\n安全包装送祁县宏艺', null, 'PCS', '1000', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年3月20日。', null, '4.70', '4700.00', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_eproduct_c` VALUES ('20120221120552000001', '19', '4028817a3632e8660136336eac250004', null, '2', null, 'LYJK10/JK1502002', 'acf6a860-666a-450e-ba00-dbcc10ecc4f9.jpg', '黄金花纸\r\n配全明料蛋糕罩\r\n罩子尺寸：12.5*13CM高\r\n安全包装送祁县宏艺', null, 'PCS', '1200', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年3月20日。', null, '4.20', '5040.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('20120221120552000002', '19', '4028817a3632e8660136336eac350005', null, '2', null, 'JK1501002-D', '226f0e40-6c03-431d-8741-7bdd7adce345.jpg', '黄金花纸\r\n配全明料蛋糕罩\r\n罩子尺寸：19X19.8CM高\r\n安全包装送祁县宏艺厂', null, 'PCS', '700', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年3月20日。', null, '9.50', '6650.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('20120221120712000000', '19', '4028817a3632e8660136336fe38c0006', null, '2', null, 'LYJK11/JK1502004', 'a41cf35b-8226-4bc8-8c34-a99f2a8d9c5e.jpg', '黄金花纸\r\n配全明料蛋糕罩\r\n罩子尺寸：15*15.5CM高\r\n安全包装送祁县宏艺', null, 'PCS', '1000', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年3月20日。', null, '4.70', '4700.00', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_eproduct_c` VALUES ('20120221120712000001', '19', '4028817a3632e8660136336fe3cb0007', null, '2', null, 'LYJK10/JK1502002', 'acf6a860-666a-450e-ba00-dbcc10ecc4f9.jpg', '黄金花纸\r\n配全明料蛋糕罩\r\n罩子尺寸：12.5*13CM高\r\n安全包装送祁县宏艺', null, 'PCS', '1200', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年3月20日。', null, '4.20', '5040.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('20120221120712000002', '19', '4028817a3632e8660136336fe3cb0008', null, '2', null, 'JK1501002-D', '226f0e40-6c03-431d-8741-7bdd7adce345.jpg', '黄金花纸\r\n配全明料蛋糕罩\r\n罩子尺寸：19X19.8CM高\r\n安全包装送祁县宏艺厂', null, 'PCS', '700', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年3月20日。', null, '9.50', '6650.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('20120222163324000000', '19', '4028817a3632e86601363989f7a9001c', null, '2', null, 'JK1201002/375402085', 'f8732bdc-f658-4bb0-9e22-566dd60a1f14.jpg', '蒙砂白花纸	\r\n尺寸：1X2CM	\r\n送祁县宏艺厂', null, 'PCS', '300', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年3月10日。', null, '0.02', '6.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('20120222163324000001', '20', '4028817a3632e86601363989f79a001b', null, '4', null, 'JK1203065/JK1203066', '482da511-cdc7-4e1e-ae2e-fb85e5ed6e8f.jpg', '全明料小号方底座电镀		\r\n毛坯于2012年3月10日送		\r\n安全包装送祁县光华厂', null, 'PCS', '1302', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年3月15日送祁县光华厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '3906.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('20120430151100000000', '19', '4028817a379b2a9701379c9551cc0014', null, '2', null, 'JK1050198/12860', '', '蒙砂白花纸\r\n烤在酒杯上（11X19CM)上\r\n送平遥鸿艺厂', null, 'PCS', '160', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年5月20日送工厂；', null, '0.49', '78.40', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('20120430151100000001', '19', '4028817a379b2a9701379c9551cc0013', null, '2', null, 'JK1070040/12786', 'undefined', '蒙砂白花纸\r\n烤在低口杯上（9X10.5CM)\r\n送祁县精艺厂', null, 'PCS', '600', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年5月20日送工厂；', null, '0.40', '240.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('20120430162218000000', '19', '4028817a379b2a9701379cd69a430067', null, '2', null, 'JK1050198/12860', '', '蒙砂白花纸\r\n烤在酒杯上（11X19CM)上\r\n送平遥鸿艺厂', null, 'PCS', '160', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年5月20日送工厂；', null, '0.49', '78.40', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('20120430162218000001', '19', '4028817a379b2a9701379cd69a430068', null, '2', null, 'JK1070040/12786', 'undefined', '蒙砂白花纸\r\n烤在低口杯上（9X10.5CM)\r\n送祁县精艺厂', null, 'PCS', '600', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年5月20日送工厂；', null, '0.40', '240.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('20120602140814000000', '19', '4028817a384511ae0138464db630000e', null, '2', null, 'JK1050201/12078', 'a92aa87c-c719-4c40-a59a-449a135f764b.jpg', '蒙砂白花纸\r\n烤在蛋糕罩上（16.5X22CM)\r\n送祁县光华厂', null, 'PCS', '600', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年6月20日；', null, '0.80', '480.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('20120602140814000001', '19', '4028817a384511ae0138464db620000d', null, '2', null, 'JK1050195DECAL B/12859', 'undefined', '蒙砂白花纸\r\n烤在香槟杯上（8X21CM)\r\n送平遥鸿艺厂', null, 'PCS', '400', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年6月20日；', null, '0.40', '160.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('20120602140814000002', '19', '4028817a384511ae0138464db630000f', null, '2', null, 'JK1050198/12860', 'undefined', '蒙砂白花纸\r\n烤在红酒杯上（11X19CM)\r\n送平遥鸿艺厂', null, 'PCS', '304', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年6月20日；', null, '0.49', '148.96', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_eproduct_c` VALUES ('20120611090145000000', '16', '4028817a387362980138738e5e19000b', null, '1', null, 'JK1050316/JK316', '', '白盒，上UV\r\n大揭盖盒型\r\n尺寸：18X18X17CM（翻单）', null, 'PCS', '600', null, '', null, null, null, null, null, '1.白盒要求250克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2012年6月20日；', null, '1.70', '1020.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('20120611090145000001', '16', '4028817a387362980138738e5dfa0007', null, '1', null, 'JK1050317/JK317', 'undefined', '白盒，上UV\r\n大揭盖盒型\r\n尺寸：13X13X16CM（翻单）', null, 'PCS', '600', null, '', null, null, null, null, null, '1.彩盒要求250克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2012年6月20日；', null, '1.10', '660.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('20120611090145000002', '16', '4028817a387362980138738e5e0a0008', null, '1', null, 'JK103956-P/JK956/1', 'undefined', '白盒，上UV\r\n侧面一面开口\r\n尺寸：34.5X14.5X7CM\r\n此款等盒子试了合适后再安排印刷', null, 'PCS', '180', null, '', null, null, null, null, null, '1.白盒要求250克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2012年6月20日；', null, '2.40', '432.00', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_eproduct_c` VALUES ('20120611090145000003', '16', '4028817a387362980138738e5dfa0005', null, '1', null, 'JK1040042/JK042', 'undefined', '白盒，上UV\r\n八爪鱼盒型\r\n尺寸：26.4X17.5X13.5CM (翻单）', null, 'PCS', '184', null, '', null, null, null, null, null, '1.彩盒要求250克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2012年6月20日；', null, '1.80', '331.20', null, null, null, null, null, null, null, null, '', '4');
INSERT INTO `ext_eproduct_c` VALUES ('20120611090146000000', '18', '4028817a387362980138738e5dea0004', null, '1', null, 'JK1050930/JK930', 'undefined', '白盒，上UV\r\n八爪鱼盒型\r\n尺寸：28.5X19X15.5CM(翻单）\r\n之前的高度是15，现在增加了0.5CM\r\n货送完后，到月底给我们直接开票就行了，不用再和我们核对。开票资料同以前。\r\n含JK4110096数量', null, 'PCS', '420', null, '', null, null, null, null, null, '1.白盒要求250克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2012年6月20日送祁县精艺厂；联系人：小颉，15364882625.', null, '2.40', '1008.00', null, null, null, null, null, null, null, null, '', '5');
INSERT INTO `ext_eproduct_c` VALUES ('20120611090146000001', '16', '4028817a387362980138738e5dea0003', null, '1', null, 'JK103136', 'undefined', '白盒，上UV\r\n八爪鱼盒型\r\n尺寸：29.4X19.6X19CM', null, 'PCS', '120', null, '', null, null, null, null, null, '1.白盒要求250克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2012年6月20日；', null, '2.20', '264.00', null, null, null, null, null, null, null, null, '', '6');
INSERT INTO `ext_eproduct_c` VALUES ('20120611090146000002', '17', '4028817a387362980138738e5e29000c', null, '1', null, 'JK4410026', 'undefined', '白盒，上UV\r\n大揭盖盒型\r\n尺寸：20X20X25CM', null, 'PCS', '480', null, '', null, null, null, null, null, '1.白盒要求250克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2012年6月20日送祁县精艺厂，联系人：小颉（15364882625）', null, '2.30', '1104.00', null, null, null, null, null, null, null, null, '', '7');
INSERT INTO `ext_eproduct_c` VALUES ('20120611090146000003', '17', '4028817a387362980138738e5e0a0009', null, '1', null, 'JK4110029', 'undefined', '白盒，上UV\r\n八爪鱼盒型\r\n尺寸：30X20X10.5CM', null, 'PCS', '300', null, '', null, null, null, null, null, '1.白盒要求250克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2012年6月20日送祁县精艺厂（15364882625）', null, '2.50', '750.00', null, null, null, null, null, null, null, null, '', '8');
INSERT INTO `ext_eproduct_c` VALUES ('20120611090146000004', '17', '4028817a387362980138738e5e19000a', null, '1', null, 'JK4100007', 'undefined', '白盒，上UV\r\n大揭盖盒型\r\n尺寸：16X16X24.5CM', null, 'PCS', '480', null, '', null, null, null, null, null, '1.白盒要求250克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2012年6月20日送祁县精艺厂，联系人：小颉（15364882625）', null, '2.20', '1056.00', null, null, null, null, null, null, null, null, '', '9');
INSERT INTO `ext_eproduct_c` VALUES ('20120611090146000005', '17', '4028817a387362980138738e5dfa0006', null, '1', null, 'JK3600009', 'undefined', '白盒，上UV\r\n大揭盖盒型\r\n是款带底座的盘子，可以从侧面开口\r\n尺寸：24X13.5X24CM', null, 'PCS', '600', null, '', null, null, null, null, null, '1,白盒要求250克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2012年6月20日送祁县天顺厂，联系人：小郭（0354-5299497）', null, '2.30', '1380.00', null, null, null, null, null, null, null, null, '', '10');
INSERT INTO `ext_eproduct_c` VALUES ('20120611090146000006', '17', '4028817a387362980138738e5ddb0002', null, '1', null, 'JK3600010', 'undefined', '白盒，上UV\r\n大揭盖盒型,\r\n尺寸：33X15X33CM\r\n是款带底座的盘子，可以侧面开口', null, 'PCS', '600', null, '', null, null, null, null, null, '1.白盒要求250克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2012年6月20日，送祁县天顺厂，联系人：小郭（0354-5299497）', null, '3.00', '1800.00', null, null, null, null, null, null, null, null, '', '11');
INSERT INTO `ext_eproduct_c` VALUES ('20120613173100000000', '4028817a33ecdbf70133ee202e49000b', '4028817a387db33d01387fad4d3b0017', null, '4', null, '6648', 'd8c16534-e4f7-4556-a029-5c33376c2fa3.jpg', '麻花挺风灯，杯碗电镀喷琥珀色\r\n尺寸：35CM高', null, 'PCS', '252', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年7月15日/工厂。没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '756.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('20120613173100000001', '4028817a33ecdbf70133ee202e49000b', '4028817a387db33d01387fad4d3b0018', null, '4', null, '6650', '9c897bd8-ae6f-445a-ae57-6a2e6bc8ca3c.jpg', '麻花挺风灯，杯碗电镀喷紫色\r\n尺寸：35CM高', null, 'PCS', '252', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年7月15日/工厂。没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '756.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('20120613173100000002', '4028817a33ecdbf70133ee202e49000b', '4028817a387db33d01387fad4d4b0019', null, '4', null, '6652', '2dab4a03-c448-4905-a813-31c85f1a0983.jpg', '麻花挺风灯，杯碗电镀喷钴蓝色\r\n尺寸：35CM高', null, 'PCS', '252', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年7月15日/工厂。没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '756.00', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_eproduct_c` VALUES ('20120613173100000003', '4028817a33ecdbf70133ee202e49000b', '4028817a387db33d01387fad4d4b001a', null, '4', null, '6655', '5384acb3-e30c-4d7e-aa7e-780b324f4296.jpg', '麻花挺风灯，杯碗电镀喷琥珀色\r\n尺寸：35CM高', null, 'PCS', '252', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年7月15日/工厂。没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '756.00', null, null, null, null, null, null, null, null, '', '4');
INSERT INTO `ext_eproduct_c` VALUES ('20120613173100000004', '4028817a33ecdbf70133ee202e49000b', '4028817a387db33d01387fad4d2c0016', null, '4', null, '6664', '61ce7d72-80ab-48ab-94b8-aba80383e060.jpg', '麻花挺风灯，杯碗电镀喷紫色\r\n尺寸：35CM', null, 'PCS', '252', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年7月15日/工厂。没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '756.00', null, null, null, null, null, null, null, null, '', '5');
INSERT INTO `ext_eproduct_c` VALUES ('20120613173100000005', '4028817a33ecdbf70133ee202e49000b', '4028817a387db33d01387fad4d2c0015', null, '4', null, '6672', 'd5a2bd30-a99d-4028-ac4b-4ed3e9c84f61.jpg', '麻花挺风灯，杯碗电镀喷紫色\r\n尺寸：35CM', null, 'PCS', '252', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年7月15日/工厂。没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '756.00', null, null, null, null, null, null, null, null, '', '6');
INSERT INTO `ext_eproduct_c` VALUES ('20120707162534000000', '19', '4028817a38fe72b00139003064460011', null, '2', null, 'JK1050198/12860', '', '蒙砂白花纸\r\n烤在红酒杯上（11X19CM)\r\n送平遥鸿艺厂', null, 'PCS', '240', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年6月20日；', null, '0.49', '117.60', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('20120707162534000001', '19', '4028817a38fe72b00139003064460010', null, '2', null, 'JK1070040/12786', 'undefined', '蒙砂白花纸\r\n烤在低口杯上（9X10.5CM)\r\n送祁县精艺厂', null, 'PCS', '600', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年6月20日；', null, '0.40', '240.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('20120805143446000000', '4028817a33ecdbf70133ee202e49000b', '4028817a399492a2013995235f580004', null, '4', null, '7297', '1e145f14-743e-464e-b086-706a6faeff23.jpg', '全明料麻花挺风灯，杯碗电镀喷红\r\n尺寸：35CM高\r\n1只/内盒          6只/大箱', null, 'PCS', '1200', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年8月05日/工厂。没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '3600.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('20120805143446000001', '4028817a33ecdbf70133ee202e49000b', '4028817a399492a2013995235f580005', null, '4', null, '7298', 'd93141e3-495f-4097-8c21-b9f8afe043ad.jpg', '全明料麻花挺风灯，杯碗电镀\r\n尺寸：35CM\r\n1只/内盒         6只/大箱', null, 'PCS', '1800', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年8月05日/工厂。没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '5400.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('20120805143446000002', '4028817a33ecdbf70133ee202e49000b', '4028817a399492a2013995235f580006', null, '4', null, '7299', '03247b89-7e9e-4b73-a07c-9e80528da2e7.jpg', '全明料麻花挺风灯，杯碗电镀喷红\r\n尺寸：35CM高\r\n1只/内盒         6只/大箱', null, 'PCS', '1200', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年8月05日/工厂， 没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '3600.00', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_eproduct_c` VALUES ('20120805143446000003', '4028817a33ecdbf70133ee202e49000b', '4028817a399492a2013995235f670007', null, '4', null, '7373', 'c92f1416-37de-49be-895c-d668b5c2dfb7.jpg', '全明料麻花挺风灯，杯碗电镀\r\n尺寸：35CM\r\n1只/内盒          6只/大箱', null, 'PCS', '1800', null, '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年8月05日/工厂。 没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '5400.00', null, null, null, null, null, null, null, null, '', '4');
INSERT INTO `ext_eproduct_c` VALUES ('20120811100511000000', '19', '4028817a39b2b37f0139b312b5ec0004', null, '2', null, 'J859101141/109480', 'dd5f24e7-20f5-48c4-b229-b4f7eb5c2ca4.jpg', '白金字母“RIVIERA MAISON\"花纸\r\n\r\n送祁县宏艺厂', null, 'PCS', '600', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年8月20日；', null, '0.36', '216.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('20120811100511000001', '19', '4028817a39b2b37f0139b312b5dd0003', null, '2', null, 'J859101767/124590', '34473de8-387d-46e5-9781-5899dd37dd67.jpg', '白金字母”RIVIERA MAISON\"花纸\r\n\r\n送祁县宏艺厂', null, 'PCS', '600', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年8月20日；', null, '0.75', '450.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('20120811100511000002', '22', '4028817a39b2b37f0139b312b5dd0003', null, '4', null, 'J859101767/124590', '08828b5b-1ca7-438f-8ca6-4ce8fbb486b3.jpg', '风灯口部电镀2.5CM宽\r\n蜡杯口部电镀2.5CM宽\r\n风灯尺寸：25X28CM\r\n蜡杯尺寸：12.5X20CM', null, 'PCS', '600', null, '', null, null, null, null, null, '交期：2012年9月20日工厂。 没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '17.00', '10200.00', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_eproduct_c` VALUES ('20120811100511000005', '4028817a3632e86601363344d16d0001', '4028817a39b2b37f0139b312b5ec0006', null, '2', null, '160380/JK10501218', '67a48bbf-26f0-4164-a6f6-227a842e00d2.jpg', '字母白花纸+LOGO房子花纸\r\n\r\n小号三层糖缸\r\n\r\n祁县宏艺厂', null, 'SETS', '6000', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年8月20日；', null, '0.60', '3600.00', null, null, null, null, null, null, null, null, '', '5');
INSERT INTO `ext_eproduct_c` VALUES ('20120811100511000006', '4028817a3632e86601363344d16d0001', '4028817a39b2b37f0139b312b5ec0005', null, '2', null, 'JK1040009/141760', 'b2c5567b-b90e-4017-a1d4-4b2dbce6bdd9.jpg', '字母白花纸+LOGO房子花纸\r\n大号三层糖缸\r\n\r\n祁县宏艺厂', null, 'SETS', '2400', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年8月15日；', null, '1.50', '3600.00', null, null, null, null, null, null, null, null, '', '4');
INSERT INTO `ext_eproduct_c` VALUES ('20120814105315000000', '4028817a3632e86601363344d16d0001', '4028817a39c236b00139c2b177790005', null, '2', null, 'JK1052446-S/201620', 'cdd29abe-400c-48e2-b91a-d07622d7ee37.jpg', '字母白花纸+LOGO房子花纸\r\n\r\n祁县会龙厂', null, 'SETS', '1600', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年8月15日；', null, '0.15', '240.00', null, null, null, null, null, null, null, null, '', '7');
INSERT INTO `ext_eproduct_c` VALUES ('20120814105318000000', '4028817a3632e86601363344d16d0001', '4028817a39c236b00139c2b18d810006', null, '2', null, 'JK1052446/158080', 'ac0d36f2-a17b-434d-b0be-98abadccfb15.jpg', '字母白花纸+LOGO房子花纸\r\n\r\n祁县会龙厂', null, 'SETS', '1200', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年8月15日;', null, '0.16', '192.00', null, null, null, null, null, null, null, null, '', '6');
INSERT INTO `ext_eproduct_c` VALUES ('20121008135129000000', '19', '4028817a3add7a3b013ade92bf5b0010', null, '2', null, 'JK1050201/12078', 'e31c0feb-a3fb-45ab-9428-f24cd05c2377.jpg', '蒙砂白花纸\r\n小号蛋糕盘+罩子（16.5X22CM高）\r\n送祁县宏艺厂', null, 'PCS', '276', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年10月20日。', null, '0.80', '220.80', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_eproduct_c` VALUES ('20121008135129000001', '19', '4028817a3add7a3b013ade92bf3b000f', null, '2', null, 'JK1050195 DECAL/12859', 'a31af353-d4de-4651-ae8e-365f72a8b578.jpg', '蒙砂白花纸\r\n香槟杯（8X21CM高）\r\n送祁县升华厂', null, 'PCS', '400', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:。2012年10月20日', null, '0.40', '160.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('20121008135129000002', '19', '4028817a3add7a3b013ade92bf1c000e', null, '2', null, 'JK1050198 DECAL/12860', 'abab4f8a-79c5-4577-a9f0-7ba079d91955.jpg', '蒙砂白花纸\r\n酒杯（11X19CM高）\r\n送祁县升华厂', null, 'PCS', '240', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期：2012年10月20日', null, '0.49', '117.60', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('20121008135129000003', '19', '4028817a3add7a3b013ade92bf0d000d', null, '2', null, 'JK169340/13076', '67bd9133-d3ac-433b-a76a-e105e4542f63.jpg', '蒙砂白花纸\r\n大号蛋糕盘+罩子（24X26CM高）\r\n送祁县宏艺厂', null, 'PCS', '100', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年10月20日。', null, '1.60', '160.00', null, null, null, null, null, null, null, null, '', '4');
INSERT INTO `ext_eproduct_c` VALUES ('20121012105019000000', '19', '4028817a3af21635013af28652e80006', null, '2', null, '7103-4000', '6aae184c-60c4-450e-b883-eb547d950010.jpg', '蒙砂字母白花纸H2O\r\n\r\n烤壶上（壶尺寸：4.5X24CM)\r\n\r\n祁县宏艺厂', null, 'PCS', '804', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月05日；', null, '0.15', '120.60', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('20121012105019000001', '19', '4028817a3af21635013af28652e80005', null, '2', null, '7110-0020', '0987ea25-bdd8-4aac-b2c2-b8f7867fd54d.jpg', '蒙砂白花纸\r\n烤蛋糕罩上\r\n\r\n祁县宏艺厂', null, 'PCS', '360', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月05日；', null, '0.30', '108.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('20121012105019000002', '19', '4028817a3af21635013af28652e80004', null, '2', null, '7107-0014', '16b3d777-5612-490d-a457-099645842903.jpg', '蒙砂字母白花纸 JE T\'AIME\r\n\r\n烤香槟杯上（5.5X18CM高）\r\n\r\n祁县海洋厂', null, 'PCS', '1536', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '0.10', '153.60', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_eproduct_c` VALUES ('20121012105019000003', '19', '4028817a3af21635013af28652e80003', null, '2', null, '7102-0001', '9f896470-0ed0-43ca-9e65-90e8e0cee7c4.jpg', '金花纸，花型见照片\r\n\r\n烤低口杯上（7.8X10CM)\r\n\r\n祁县精艺厂', null, 'PCS', '2016', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '2.70', '5443.20', null, null, null, null, null, null, null, null, '', '5');
INSERT INTO `ext_eproduct_c` VALUES ('20121012105019000004', '19', '4028817a3af21635013af2865317000d', null, '2', null, '7102-0002', '1c059f66-653b-48e6-a90b-28d4486c0469.jpg', '金花纸，花型见照片\r\n烤低口杯上\r\n祁县精艺厂', null, 'PCS', '2016', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '2.70', '5443.20', null, null, null, null, null, null, null, null, '', '6');
INSERT INTO `ext_eproduct_c` VALUES ('20121012105019000005', '19', '4028817a3af21635013af2865317000c', null, '2', null, '7102-0011', 'ebab0e5d-469d-4c5e-af56-d683b57b6aba.jpg', '金花纸，花型见照片\r\n烤高口杯上\r\n祁县精艺厂', null, 'PCS', '2016', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '3.50', '7056.00', null, null, null, null, null, null, null, null, '', '7');
INSERT INTO `ext_eproduct_c` VALUES ('20121012105019000006', '19', '4028817a3af21635013af2865308000b', null, '2', null, '7102-0022', 'b7c90df1-25a3-498e-84dd-da8f367d2ae1.jpg', '金花纸，花型见照片\r\n烤高口杯上\r\n祁县精艺厂', null, 'PCS', '1752', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '3.50', '6132.00', null, null, null, null, null, null, null, null, '', '8');
INSERT INTO `ext_eproduct_c` VALUES ('20121012105019000007', '19', '4028817a3af21635013af28653080009', null, '2', null, '7102-0033', 'e036ca0c-60f2-443c-9763-4786aa10fccd.jpg', '金花纸，花型见照片\r\n烤高口杯上\r\n祁县精艺厂', null, 'PCS', '1512', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '3.50', '5292.00', null, null, null, null, null, null, null, null, '', '9');
INSERT INTO `ext_eproduct_c` VALUES ('20121012105020000000', '19', '4028817a3af21635013af28652f80008', null, '2', null, '7108-0003', '45eac707-c56b-4b0c-9b50-797989623027.jpg', '蒙砂白花纸\r\n烤低口杯上（7X10CM)\r\n祁县宏艺厂', null, 'PCS', '1008', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '0.30', '302.40', null, null, null, null, null, null, null, null, '', '10');
INSERT INTO `ext_eproduct_c` VALUES ('20121012105020000001', '19', '4028817a3af21635013af28652f80007', null, '2', null, '7106-0007', '11fb47e2-2c16-40db-8070-dcf97dcc9906.jpg', '皇冠+字母 金花纸\r\n烤口杯上（8.2X5.6CM)\r\n祁县宏艺厂', null, 'PCS', '768', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '0.25', '192.00', null, null, null, null, null, null, null, null, '', '11');
INSERT INTO `ext_eproduct_c` VALUES ('20121012105020000002', '19', '4028817a3af21635013af2865308000a', null, '2', null, '7106-0008', '765334a4-38ca-4eb2-8220-21216ae738ca.jpg', '皇冠+字母 金花纸\r\n\r\n烤口杯上\r\n祁县宏艺厂', null, 'PCS', '768', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '0.25', '192.00', null, null, null, null, null, null, null, null, '', '12');
INSERT INTO `ext_eproduct_c` VALUES ('20121012111035000000', '19', '4028817a3af21635013af298def40025', null, '2', null, '7103-4000', '6aae184c-60c4-450e-b883-eb547d950010.jpg', '蒙砂字母白花纸H2O\r\n\r\n烤壶上（壶尺寸：4.5X24CM)\r\n\r\n祁县宏艺厂', null, 'PCS', '804', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月05日；', null, '0.15', '120.60', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('20121012111035000001', '19', '4028817a3af21635013af298dea6001d', null, '2', null, '7110-0020', '0987ea25-bdd8-4aac-b2c2-b8f7867fd54d.jpg', '蒙砂白花纸\r\n烤蛋糕罩上\r\n\r\n祁县宏艺厂', null, 'PCS', '360', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月05日；', null, '0.30', '108.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('20121012111035000002', '19', '4028817a3af21635013af298df040027', null, '2', null, '7107-0014', '16b3d777-5612-490d-a457-099645842903.jpg', '蒙砂字母白花纸 JE T\'AIME\r\n\r\n烤香槟杯上（5.5X18CM高）\r\n\r\n祁县海洋厂', null, 'PCS', '1536', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '0.10', '153.60', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_eproduct_c` VALUES ('20121012111035000003', '19', '4028817a3af21635013af298dea6001e', null, '2', null, '7102-0001', '9f896470-0ed0-43ca-9e65-90e8e0cee7c4.jpg', '金花纸，花型见照片\r\n\r\n烤低口杯上（7.8X10CM)\r\n\r\n祁县精艺厂', null, 'PCS', '2016', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '2.70', '5443.20', null, null, null, null, null, null, null, null, '', '5');
INSERT INTO `ext_eproduct_c` VALUES ('20121012111035000004', '19', '4028817a3af21635013af298deb6001f', null, '2', null, '7102-0002', '1c059f66-653b-48e6-a90b-28d4486c0469.jpg', '金花纸，花型见照片\r\n烤低口杯上\r\n祁县精艺厂', null, 'PCS', '2016', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '2.70', '5443.20', null, null, null, null, null, null, null, null, '', '6');
INSERT INTO `ext_eproduct_c` VALUES ('20121012111035000005', '19', '4028817a3af21635013af298deb60020', null, '2', null, '7102-0011', 'ebab0e5d-469d-4c5e-af56-d683b57b6aba.jpg', '金花纸，花型见照片\r\n烤高口杯上\r\n祁县精艺厂', null, 'PCS', '2016', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '3.50', '7056.00', null, null, null, null, null, null, null, null, '', '7');
INSERT INTO `ext_eproduct_c` VALUES ('20121012111035000006', '19', '4028817a3af21635013af298dec60021', null, '2', null, '7102-0022', 'b7c90df1-25a3-498e-84dd-da8f367d2ae1.jpg', '金花纸，花型见照片\r\n烤高口杯上\r\n祁县精艺厂', null, 'PCS', '1752', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '3.50', '6132.00', null, null, null, null, null, null, null, null, '', '8');
INSERT INTO `ext_eproduct_c` VALUES ('20121012111035000007', '19', '4028817a3af21635013af298ded50022', null, '2', null, '7102-0033', 'e036ca0c-60f2-443c-9763-4786aa10fccd.jpg', '金花纸，花型见照片\r\n烤高口杯上\r\n祁县精艺厂', null, 'PCS', '1512', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '3.50', '5292.00', null, null, null, null, null, null, null, null, '', '9');
INSERT INTO `ext_eproduct_c` VALUES ('20121012111035000008', '19', '4028817a3af21635013af298dee50023', null, '2', null, '7108-0003', '45eac707-c56b-4b0c-9b50-797989623027.jpg', '蒙砂白花纸\r\n烤低口杯上（7X10CM)\r\n祁县宏艺厂', null, 'PCS', '1008', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '0.30', '302.40', null, null, null, null, null, null, null, null, '', '10');
INSERT INTO `ext_eproduct_c` VALUES ('20121012111035000009', '19', '4028817a3af21635013af298dee50024', null, '2', null, '7106-0007', '11fb47e2-2c16-40db-8070-dcf97dcc9906.jpg', '皇冠+字母 金花纸\r\n烤口杯上（8.2X5.6CM)\r\n祁县宏艺厂', null, 'PCS', '768', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '0.25', '192.00', null, null, null, null, null, null, null, null, '', '11');
INSERT INTO `ext_eproduct_c` VALUES ('20121012111035000010', '19', '4028817a3af21635013af298def40026', null, '2', null, '7106-0008', '765334a4-38ca-4eb2-8220-21216ae738ca.jpg', '皇冠+字母 金花纸\r\n\r\n烤口杯上\r\n祁县宏艺厂', null, 'PCS', '768', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '0.25', '192.00', null, null, null, null, null, null, null, null, '', '12');
INSERT INTO `ext_eproduct_c` VALUES ('20121012111716000003', '19', '4028817a3af21635013af29efe370042', null, '2', null, '7102-0001', '9f896470-0ed0-43ca-9e65-90e8e0cee7c4.jpg', '金花纸，花型见照片\r\n\r\n烤低口杯上（7.8X10CM)\r\n\r\n祁县精艺厂', null, 'PCS', '2016', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '2.70', '5443.20', null, null, null, null, null, null, null, null, '', '5');
INSERT INTO `ext_eproduct_c` VALUES ('20121012111716000004', '19', '4028817a3af21635013af29efe370043', null, '2', null, '7102-0002', '1c059f66-653b-48e6-a90b-28d4486c0469.jpg', '金花纸，花型见照片\r\n烤低口杯上\r\n祁县精艺厂', null, 'PCS', '2016', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '2.70', '5443.20', null, null, null, null, null, null, null, null, '', '6');
INSERT INTO `ext_eproduct_c` VALUES ('20121012111716000005', '19', '4028817a3af21635013af29efe370044', null, '2', null, '7102-0011', 'ebab0e5d-469d-4c5e-af56-d683b57b6aba.jpg', '金花纸，花型见照片\r\n烤高口杯上\r\n祁县精艺厂', null, 'PCS', '2016', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '3.50', '7056.00', null, null, null, null, null, null, null, null, '', '7');
INSERT INTO `ext_eproduct_c` VALUES ('20121012111716000006', '19', '4028817a3af21635013af29efe08003c', null, '2', null, '7102-0022', 'b7c90df1-25a3-498e-84dd-da8f367d2ae1.jpg', '金花纸，花型见照片\r\n烤高口杯上\r\n祁县精艺厂', null, 'PCS', '1752', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '3.50', '6132.00', null, null, null, null, null, null, null, null, '', '8');
INSERT INTO `ext_eproduct_c` VALUES ('20121012111716000007', '19', '4028817a3af21635013af29efe18003d', null, '2', null, '7102-0033', 'e036ca0c-60f2-443c-9763-4786aa10fccd.jpg', '金花纸，花型见照片\r\n烤高口杯上\r\n祁县精艺厂', null, 'PCS', '1512', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月5日；', null, '3.50', '5292.00', null, null, null, null, null, null, null, null, '', '9');
INSERT INTO `ext_eproduct_c` VALUES ('20121026141902000000', '19', '4028817a3b3a59cd013b3b5e6e0e001c', null, '2', null, 'JK0024/JK1104003-D', 'e28408c1-c443-4b41-b561-93a012688906.jpg', '蒙砂花纸，配全明料香槟杯\r\n送祁县宏艺厂', null, 'PCS', '1200', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月20日。', null, '0.10', '120.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('20121026141902000001', '19', '4028817a3b3a59cd013b3b5e6dfe001b', null, '2', null, 'JK0025/JK1102331-D', '244d0435-e05e-4795-993a-446872770c2c.jpg', '蒙砂花纸，配全明料酒杯\r\n送祁县宏艺厂', null, 'PCS', '1206', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月20日。', null, '0.20', '241.20', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('20121026141902000002', '19', '4028817a3b3a59cd013b3b5e6e0e001d', null, '2', null, 'JK0026/JK1102332-D', '0729169a-1bea-4cab-beea-6b020e7099af.jpg', '蒙砂花纸，配全明料酒杯\r\n送祁县宏艺厂', null, 'PCS', '1206', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年11月20日。', null, '0.20', '241.20', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_eproduct_c` VALUES ('20121026152046000000', '4028817a33ecdbf70133ee202e49000b', '4028817a3b3a59cd013b3b96f4830035', null, '4', null, '5369', '236db500-6d19-460e-afc7-4732067c084f.jpg', '全明料小号蛋糕盘粘底座，电镀脏银\r\n尺寸：21X9.5CM高\r\n1只/五层内盒      4只/大箱', null, 'PCS', '600', '0', '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年11月30日/工厂。 没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '4.50', '2700.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('20121026152046000001', '4028817a33ecdbf70133ee202e49000b', '4028817a3b3a59cd013b3b96f4830036', null, '4', null, '5370', '4ab5bf66-455f-4c8a-980b-aa352fb4b7ba.jpg', '全明料中号蛋糕盘粘底座，电镀脏银\r\n尺寸：25.5CMX9.5CM高\r\n1只/五层内盒      4只/大箱', null, 'PCS', '600', '0', '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年11月30日/工 ，没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '5.00', '3000.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('20121026152046000002', '4028817a33ecdbf70133ee202e49000b', '4028817a3b3a59cd013b3b96f4930037', null, '4', null, '5371', 'a898b1a1-0521-459a-8700-a6418b64ec2b.jpg', '全明料大号蛋糕盘粘底座，电镀脏银\r\n尺寸：30.5X10CM高\r\n1只/五层内盒      4只/大箱', null, 'PCS', '600', '0', '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年6月30日/工厂。 没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '6.20', '3720.00', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_eproduct_c` VALUES ('20121026152046000003', '4028817a33ecdbf70133ee202e49000b', '4028817a3b3a59cd013b3b96f4930038', null, '4', null, '5375', '2b9a92d0-d875-4c8c-85e8-f9fba468d60f.jpg', '全明料小号蛋糕盘粘底座，电镀脏银\r\n尺寸：20.5X12CM高\r\n1只/五层内盒        4只/大箱', null, 'PCS', '600', '0', '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年11月30日/工厂。 没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '4.50', '2700.00', null, null, null, null, null, null, null, null, '', '4');
INSERT INTO `ext_eproduct_c` VALUES ('20121026152046000004', '4028817a33ecdbf70133ee202e49000b', '4028817a3b3a59cd013b3b96f4930039', null, '4', null, '5376', 'd59a0731-b413-4378-9720-bf66617a135f.jpg', '全明料中号蛋糕盘粘底座，电镀脏银\r\n尺寸：25.5X12.5CM高\r\n1只/五层内盒        4只/大箱', null, 'PCS', '600', '0', '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年11月30人/工厂。 没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '5.00', '3000.00', null, null, null, null, null, null, null, null, '', '5');
INSERT INTO `ext_eproduct_c` VALUES ('20121026152046000005', '4028817a33ecdbf70133ee202e49000b', '4028817a3b3a59cd013b3b96f4830034', null, '4', null, '5377', '07a87b8a-5815-435b-bd78-39f3e12f8224.jpg', '全明料大号蛋糕盘粘底座，电镀脏银\r\n尺寸：31.5X12.5CM高\r\n1只/五层内盒       4只/大箱', null, 'PCS', '600', '0', '', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年11月30日/工厂。  没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '6.20', '3720.00', null, null, null, null, null, null, null, null, '', '6');
INSERT INTO `ext_eproduct_c` VALUES ('2012919150602000000', '16', '4028817a3a714bbf013a77d7cebc002d', null, '1', null, '22298', '777e549f-9373-4420-8930-970580f3e572.jpg', '白盒			\r\n350克面纸，环保油UV印刷	\r\n配明料果汁缸		\r\n白盒尺寸：43.5X23.5X38.8CM', null, 'PCS', '650', '0', '', null, null, null, null, null, '1.彩盒要求350克面纸；\r\n2.工厂待用安全包装。\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2012年10月10日送文水志远厂。', null, '6.10', '3965.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('2012919150602000001', '21', '4028817a3a714bbf013a77d7cebc002d', null, '3', null, '22298', 'd543b8c4-9f84-4cfa-99ec-abc39bd9fd44.jpg', '全包保利龙\r\n配方形糖缸', null, 'PCS', '650', '0', '', null, null, null, null, null, '1.产品质量要好，颗粒细小，压制密实，无毛边；\r\n2.工厂待用安全包装，运至指定工厂；\r\n3.交期：2012年10月10日送文水志远厂。', null, '6.00', '3900.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('4028817a3357462e013359291f540007', '16', '402881e63d9b1903013d9b4bc75a0012', null, '1', null, '2965', 'undefined', '彩盒，新菲林\r\n配全明料糖缸带盖子\r\n彩盒尺寸：20X20X41CM', null, 'PCS', '144', null, '', null, null, null, null, null, '1.彩盒要求350克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2011年11月05日。', null, '3.20', '460.80', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('4028817a3357462e013359291f640008', '16', '402881e63d9b1903013d9b4bc75a000e', null, '1', null, '2964', '', '彩盒，新菲林\r\n配全明料糖缸带盖子\r\n彩盒尺寸：22.5X22.5X48.5CM', null, 'PCS', '144', null, '', null, null, null, null, null, '1.彩盒要求350克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2011年11月05日。', null, '4.00', '576.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('4028817a3357462e013359291f640009', '16', '402881e63d9b1903013d9b4bc75a000f', null, '1', null, '2976', 'undefined', '彩盒，新菲林\r\n配明料糖缸带盖子\r\n彩盒尺寸：25.7X25.7X35.7CM', null, 'PCS', '144', null, '', null, null, null, null, null, '1.彩盒要求350克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2011年11月05日。', null, '3.90', '561.60', null, null, null, null, null, null, null, null, '', '4');
INSERT INTO `ext_eproduct_c` VALUES ('4028817a3357462e013359291f64000a', '16', '402881e63d9b1903013d9b4bc75a000f', null, '1', null, '2976', 'undefined', '彩盒，新菲林\r\n配全明料糖缸带盖子\r\n彩盒尺寸：21.5X21.5X41CM', null, 'PCS', '144', null, '', null, null, null, null, null, '1.彩盒要求350克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2011年11月05日。', null, '3.30', '475.20', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_eproduct_c` VALUES ('4028817a33ecdbf70133edfc84d40001', '19', '402881e63d9b1903013d9b4bc75a0010', null, '2', null, 'JK1014005', '94d2d773-24b6-412e-b0e3-0fc9dddf0955.png', '低温鱼花纸\r\n明料低口杯\r\n祁县宏艺厂', null, 'PCS', '1800', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月10；', null, '1.20', '2160.00', null, null, null, null, null, null, null, null, '', '4');
INSERT INTO `ext_eproduct_c` VALUES ('4028817a33ecdbf70133edfc84e40002', '19', '402881e63d9b1903013d9b4bc75a0013', null, '2', null, 'JK1080766-3', '29bb909d-d527-475d-bfbe-e5e05a02349c.png', '套3白花纸\r\n\r\n送祁县宏艺厂', null, 'SETS', '600', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月10；', null, '0.60', '360.00', null, null, null, null, null, null, null, null, '', '1');
INSERT INTO `ext_eproduct_c` VALUES ('4028817a33ecdbf70133edfc84e40003', '19', '402881e63d9b1903013d9b4bc75a0011', null, '2', null, 'JK1014006', '7be85008-7652-4995-aaca-3ade8405eca9.png', '套6彩色花纸\r\n明料低口杯\r\n祁县宏艺厂', null, 'SETS', '300', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月10；', null, '9.00', '2700.00', null, null, null, null, null, null, null, null, '', '5');
INSERT INTO `ext_eproduct_c` VALUES ('4028817a33ecdbf70133edfc84e40004', '19', '402881e63d9b1903013d9b4bc72c000c', null, '2', null, 'JK1014001', '7a3d341f-f473-44ce-9bd4-c7f2b87343ca.png', '低温鱼花纸\r\n明料大碗\r\n送祁县宏艺厂', null, 'PCS', '1000', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月10；', null, '2.40', '2400.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('4028817a33ecdbf70133edfc84e40005', '19', '402881e63d9b1903013d9b4bc74b000d', null, '2', null, 'JK1014003', '73980c53-44f6-4232-8c04-9d08a66eeccb.png', '低温鱼花纸\r\n明料盘子\r\n\r\n送祁县天顺厂', null, 'PCS', '1200', null, '', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月10；', null, '3.80', '4560.00', null, null, null, null, null, null, null, null, '', '3');
INSERT INTO `ext_eproduct_c` VALUES ('ff8080813298f1200132992931700006', '18', 'ff80808132ddb21d0132ddb4771a0001', null, '1', null, 'JK1080579', '', '彩盒 \r\n尺寸：23X23X24', null, 'PCS', '600', null, '', null, null, null, null, null, '不可划伤', null, '2.30', '1380.00', null, null, null, null, null, null, null, null, '', '2');
INSERT INTO `ext_eproduct_c` VALUES ('ff8080813298f1200132992931700007', '18', 'ff80808132ddb21d0132ddb477490002', null, '1', null, 'JK1087578', '', '彩盒 \r\n尺寸：23X23X24', null, 'PCS', '500', null, '', null, null, null, null, null, '不可划伤', null, '2.30', '1150.00', null, null, null, null, null, null, null, null, '', '1');

-- ----------------------------
-- Table structure for `factory_c`
-- ----------------------------
DROP TABLE IF EXISTS `factory_c`;
CREATE TABLE `factory_c` (
  `FACTORY_ID` varchar(40) NOT NULL,
  `FULL_NAME` varchar(200) DEFAULT NULL,
  `FACTORY_NAME` varchar(50) DEFAULT NULL,
  `CONTACTOR` varchar(30) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `MOBILE` varchar(20) DEFAULT NULL,
  `FAX` varchar(20) DEFAULT NULL,
  `CNOTE` text,
  `INSPECTOR` varchar(30) DEFAULT NULL,
  `CTYPE` int(11) DEFAULT NULL COMMENT 'SYS_CODE_B 0103',
  `STATE` char(1) DEFAULT NULL COMMENT '1正常0停用',
  `ORDER_NO` int(11) DEFAULT NULL COMMENT '\r\n            ',
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `CREATE_DEPT` varchar(40) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FACTORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of factory_c
-- ----------------------------
INSERT INTO `factory_c` VALUES ('1', '祁县宏艺厂', '宏艺', '杰诚', '0354-5041999', '', '', '', '高琴', '1', '1', null, null, null, '2011-05-23 11:28:41');
INSERT INTO `factory_c` VALUES ('10', '祁县晶晨厂', '晶晨', '续贵', '0354-5271999', '', '', '', '吕波', '1', '1', null, null, null, '2011-07-16 07:06:24');
INSERT INTO `factory_c` VALUES ('11', '祁县浩丰厂', '浩丰', '建生', '0354-524099', '', '', '', '吕波', '1', '1', null, null, null, '2011-07-16 07:07:11');
INSERT INTO `factory_c` VALUES ('12', '平遥远江厂', '平遥远江', '宏远', null, '13935499967', null, null, null, '1', '1', null, null, null, '2011-07-16 07:08:34');
INSERT INTO `factory_c` VALUES ('13', '平遥鸿艺厂', '平遥鸿艺', '雄飞', '0354-5940888', '', '', '', '吕波', '1', '1', null, null, null, '2011-07-16 07:09:22');
INSERT INTO `factory_c` VALUES ('15', '南皮开发玻璃制品厂', '南皮开发', '舒东', '0317-8863999', null, null, null, null, '1', '1', null, null, null, '2011-07-16 07:09:25');
INSERT INTO `factory_c` VALUES ('16', '陕西康达彩印厂', '康达', '袁喜', '029-84528015', null, null, null, null, '2', '1', null, null, null, '2011-07-16 07:12:36');
INSERT INTO `factory_c` VALUES ('17', '陕西众鑫印务包装有限公司', '众鑫', '赵毅', '029-84341858', null, null, null, null, '2', '1', null, null, null, '2011-07-16 07:12:42');
INSERT INTO `factory_c` VALUES ('18', '翰林彩印厂', '翰林', '孙财', '029-88917456', null, null, null, null, '2', '1', null, null, null, '2011-07-16 07:13:43');
INSERT INTO `factory_c` VALUES ('19', '祁县综艺玻璃花纸厂', '综艺花纸', '王棕', '0354-5278918', '', '', '', '', '4', '1', null, null, null, '2011-07-16 07:14:14');
INSERT INTO `factory_c` VALUES ('2', '祁县光华厂', '光华', '薛成', '0354-5298981', '', '', '', '吕波', '1', '1', null, null, null, '2011-05-23 11:28:49');
INSERT INTO `factory_c` VALUES ('20', '祁县喜福来玻璃加工厂', '喜福来', '王卫', '0354-5328850', '', '', '', '', '6', '1', null, null, null, '2011-07-16 07:15:30');
INSERT INTO `factory_c` VALUES ('21', '祁县美晶泡沫厂', '美晶', '范长', '0354-5071387', '', '', '', '', '5', '1', null, null, null, '2011-07-16 07:16:12');
INSERT INTO `factory_c` VALUES ('22', '祁县瑞成玻璃镀膜厂', '瑞成', '温明', '', '13834809374', '', '', '', '6', '1', null, null, null, '2011-07-16 07:16:54');
INSERT INTO `factory_c` VALUES ('3', '祁县会龙厂', '会龙', '李伟', '0354-5248696', '', '', '', '李光', '1', '1', null, null, null, '2011-05-23 11:28:56');
INSERT INTO `factory_c` VALUES ('4', '祁县精艺厂', '精艺', '闫强', '0354-5047289', '', '', '', '高琴', '1', '1', null, null, null, '2011-05-23 11:29:03');
INSERT INTO `factory_c` VALUES ('4028817a33d4f8b40133d99621cb0023', '祁县海洋厂', '升华', '刘生', '0354-5299987', '', '', '', '吕波', '1', '1', null, 'ff80808131301abf0131303ed30a0035', '0001001', '2011-11-25 15:17:34');
INSERT INTO `factory_c` VALUES ('4028817a33d4f8b40133d9989f5e0024', '闻喜民鑫厂', '民鑫', '李民', '0359-7472727', '', '', '', '吕波', '1', '1', null, 'ff80808131301abf0131303ed30a0035', '0001001', '2011-11-25 15:20:17');
INSERT INTO `factory_c` VALUES ('4028817a33de41d80133e982a18a001c', '太谷四通PVC厂', '太谷PVC', '张海', '0354-6226591', '', '', '', '', '3', '1', null, 'ff80808131301abf0131303ed30a0035', '0001001', '2011-11-28 17:30:12');
INSERT INTO `factory_c` VALUES ('4028817a33ecdbf70133ee202e49000b', '祁县瑞成电镀厂', '瑞成电镀厂', '温民', '13835926900', '', '', '', '', '6', '1', null, 'ff80808131301abf0131303ed30a0035', '0001001', '2011-11-29 15:00:46');
INSERT INTO `factory_c` VALUES ('4028817a34f93be50134f9df84470001', '神舟玻璃制品有限公司', '神舟厂', '申定', '0356-3961959', '13935672348', '0356-3991304', '', '李光', '1', '1', null, 'ff80808131301abf0131303ed30a0035', '0001001', '2012-01-20 14:48:22');
INSERT INTO `factory_c` VALUES ('4028817a353b8d8e0135415bf0a90070', '陕西宇津进出口有限公司', '宇津水龙头厂', '任宁', '029-62990818', '', '', '', '', '7', '1', null, 'ff80808131301abf0131303ed30a0035', '0001001', '2012-02-03 11:57:18');
INSERT INTO `factory_c` VALUES ('4028817a35e0895e0135ec7a4dbe0087', '西安方圆工贸有限公司', '西安方圆工贸', '许涛', '029-86539568', '', '029-86590565', '', '', '1', '1', null, 'ff80808131301abf0131303ed30a0035', '0001001', '2012-03-07 17:25:32');
INSERT INTO `factory_c` VALUES ('4028817a3632e86601363344d16d0001', '淄博雷波陶瓷花纸厂', '淄博花纸厂', '吴璇', '0533-5176946', '', '', '', '', '4', '1', null, 'ff80808131301abf0131303ed30a0035', '0001001', '2012-03-21 11:20:09');
INSERT INTO `factory_c` VALUES ('4028817a371a8d7f01372a74451f0068', '山西大德成工贸有限公司', '铁架厂', '高辉', '0354-5288919', '', '', '', '李光', '1', '1', null, '001', '0', '2012-05-08 11:18:11');
INSERT INTO `factory_c` VALUES ('4028817a37583d45013758d152450038', '祁县顺驰厂', '顺驰', '王明', '0354-5109398', '', '', '', '李光', '1', '1', null, '001', '0', '2012-05-17 11:22:22');
INSERT INTO `factory_c` VALUES ('4028817a38024a04013803e3a8a2004b', '祁县欣欣泡沫有限公司', '祁县欣欣泡沫厂', '许杰', '0354-3939793', '', '', '', '', '5', '1', null, '001', '0', '2012-06-19 16:37:27');
INSERT INTO `factory_c` VALUES ('4028817a382b4fd401382b9aad2a0008', '祁县仲玉玻璃厂', '仲玉', '吕军', '0354-5018888', '', '', '', '李光', '1', '1', null, '001', '0', '2012-06-27 09:42:33');
INSERT INTO `factory_c` VALUES ('4028817a38736298013874c51a800036', '汇融玻璃有限公司', '展鹏厂', '厂长', '0354-5326986', '13834893800', '0354-5826197', '', '李光', '1', '1', null, '001', '0', '2012-07-11 14:41:10');
INSERT INTO `factory_c` VALUES ('4028817a389cc7b701389d1efd940001', '宇虹包装彩印厂', '宇虹包装厂', '翟帅', '0358-3099923', '19033470988', '0358-3098183', '', '', '2', '1', null, '001', '0', '2012-07-19 10:44:10');
INSERT INTO `factory_c` VALUES ('4028817a39b2b37f0139b46268c40025', '祁县馨艺玻璃厂', '馨艺', '袁长', '0354-5041938', '', '', '', '李光', '1', '1', null, '001', '0', '2012-09-11 16:11:51');
INSERT INTO `factory_c` VALUES ('4028817a3aa9f950013ab0b6c98d0050', '祁县一先厂', '一先厂', '李刚', '0654-9018444', '', '', '', '李光', '1', '1', null, '001', '0', '2012-10-30 16:08:20');
INSERT INTO `factory_c` VALUES ('4028817a3aa9f950013ab97f64110053', '温县致远玻璃制品有限公司', '温县致远厂', '红升', '18936896666', '', '', '', '', '1', '1', null, '001', '0', '2012-11-01 09:04:24');
INSERT INTO `factory_c` VALUES ('4028817a3abe8f15013ac019a61f0031', '祁县喜福来电镀厂', '喜福来电镀厂', '王卫', '0154-5282888', '', '', '', '李光', '1', '1', null, '001', '0', '2012-11-02 15:50:37');
INSERT INTO `factory_c` VALUES ('4028817a3ae2ac42013ae3550357000d', '临潼华清蜡厂', '临潼华清蜡厂', '吴波', '13791903888', '', '', '', '', '8', '1', null, '001', '0', '2012-11-09 12:02:10');
INSERT INTO `factory_c` VALUES ('5', '祁县汇越厂', '汇越', '建忠', '0354-5019656', '', '', '', '吕波', '1', '1', null, null, null, '2011-05-23 11:29:09');
INSERT INTO `factory_c` VALUES ('6', '祁县泰宇厂', '泰宇', '立东', '0354-5299160', null, null, null, null, '1', '1', null, null, null, '2011-07-16 07:03:14');
INSERT INTO `factory_c` VALUES ('7', '祁县天顺厂', '天顺', '渠海', '0354-5299499', '', '', '', '李光', '1', '1', null, null, null, '2011-07-16 07:04:04');
INSERT INTO `factory_c` VALUES ('8', '祁县天诚厂', '天诚', '庞正', '0354-5299539', null, null, null, null, '1', '1', null, null, null, '2011-07-16 07:05:10');
INSERT INTO `factory_c` VALUES ('9', '祁县华艺厂', '华艺', '史国', '0354-5041927', '', '', '', '高琴', '1', '1', null, null, null, '2011-07-16 07:06:20');
INSERT INTO `factory_c` VALUES ('ff808081301885760130189e47ca0013', '文水志远厂', '文水志远', '志远', '0358-3934083', '', '', '', '李光', '1', '1', null, '001', '0', '2011-05-23 00:51:24');

-- ----------------------------
-- Table structure for `fast_menu_b`
-- ----------------------------
DROP TABLE IF EXISTS `fast_menu_b`;
CREATE TABLE `fast_menu_b` (
  `ID` varchar(40) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `CNNAME` varchar(30) DEFAULT NULL,
  `CURL` varchar(150) DEFAULT NULL,
  `CLICK_NUM` int(11) DEFAULT NULL,
  `BELONG_USER` varchar(40) DEFAULT NULL,
  `CTYPE` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fast_menu_b
-- ----------------------------
INSERT INTO `fast_menu_b` VALUES ('402881e43e7748f4013e774d742b0002', null, '合同管理', '../contract/contractAction_list', '1', null, '0');
INSERT INTO `fast_menu_b` VALUES ('402881e43e7748f4013e774debdc0003', null, '报运管理', '../export/exportAction_list', '0', null, '0');

-- ----------------------------
-- Table structure for `finance_c`
-- ----------------------------
DROP TABLE IF EXISTS `finance_c`;
CREATE TABLE `finance_c` (
  `FINANCE_ID` varchar(40) NOT NULL,
  `INPUT_DATE` datetime DEFAULT NULL,
  `INPUT_BY` varchar(30) DEFAULT NULL,
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `CREATE_DEPT` varchar(40) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FINANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of finance_c
-- ----------------------------
INSERT INTO `finance_c` VALUES ('402880e73f16f0bf013f1741edfc0002', '2013-06-04 00:00:00', '制单人', null, null, null);

-- ----------------------------
-- Table structure for `invoice_c`
-- ----------------------------
DROP TABLE IF EXISTS `invoice_c`;
CREATE TABLE `invoice_c` (
  `INVOICE_ID` varchar(40) NOT NULL COMMENT 'PACKING_LIST_ID值',
  `SC_NO` varchar(30) DEFAULT NULL COMMENT 'packing.getExportIds',
  `BL_NO` varchar(30) DEFAULT NULL,
  `TRADE_TERMS` varchar(30) DEFAULT NULL,
  `DESCRIPTIONS` varchar(200) DEFAULT NULL COMMENT '装箱单的描述',
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `CREATE_DEPT` varchar(40) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`INVOICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invoice_c
-- ----------------------------
INSERT INTO `invoice_c` VALUES ('402880e73f16f0bf013f1741edfc0002', 'C/2256/12', 'B/L', '贸易条款', null, null, null, null);
INSERT INTO `invoice_c` VALUES ('402880e73f16f0bf013f1758325d0003', 'C/3817/11,11JK1080,11JK1078', 'B/L', '贸易条款', null, null, null, null);

-- ----------------------------
-- Table structure for `login_log_p`
-- ----------------------------
DROP TABLE IF EXISTS `login_log_p`;
CREATE TABLE `login_log_p` (
  `LOGIN_LOG_ID` varchar(40) NOT NULL,
  `LOGIN_NAME` varchar(30) DEFAULT NULL,
  `IP_ADDRESS` varchar(20) DEFAULT NULL,
  `LOGIN_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`LOGIN_LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_log_p
-- ----------------------------
INSERT INTO `login_log_p` VALUES ('00330EC5-4F2C-48BB-AFC1-ADC5CBAEB7AC', '001|调试', '192.168.1.110', '2012-01-17 14:04:46');
INSERT INTO `login_log_p` VALUES ('009275C9-7459-4862-B339-C7CD13C244D6', '001|调试', '192.168.1.110', '2012-01-17 11:57:33');
INSERT INTO `login_log_p` VALUES ('00D0157A-AD60-4856-802E-A3461F6939E0', '001|调试', '127.0.0.1', '2011-10-07 12:37:29');
INSERT INTO `login_log_p` VALUES ('00DA73C6-8DB4-402A-BEE0-95BDD79D0CDB', '001|调试', '192.168.1.103', '2012-09-11 10:56:23');
INSERT INTO `login_log_p` VALUES ('011BD53F-99AF-4B45-B23B-4E02723BE7D7', '001|调试', '192.168.1.106', '2012-10-29 14:23:51');
INSERT INTO `login_log_p` VALUES ('015CC22A-5C53-4597-B4AC-B51694D75C86', '001|调试', '192.168.1.103', '2012-01-20 16:03:49');
INSERT INTO `login_log_p` VALUES ('01970044-E8A0-41DD-A7CB-EF0E012FE798', '001|调试', '192.168.1.103', '2012-01-18 11:40:17');
INSERT INTO `login_log_p` VALUES ('01C6DB18-D8AC-48CE-B3F2-09BCDFD8D9A3', '001|调试', '127.0.0.1', '2011-08-21 22:34:13');
INSERT INTO `login_log_p` VALUES ('01F90304-E542-4B5E-9B3B-E49C17B6E891', '001|调试', '192.168.1.106', '2011-10-18 11:15:42');
INSERT INTO `login_log_p` VALUES ('02AF06BD-65E4-4E02-8128-9E43B2AE06B6', 'anonymous|', '192.168.1.109', '2012-08-14 09:54:00');
INSERT INTO `login_log_p` VALUES ('02B4B900-9D3F-4306-8F54-6395FDB5234A', '001|调试', '192.168.1.106', '2012-10-29 14:38:24');
INSERT INTO `login_log_p` VALUES ('02E0CA26-C6E2-4C90-B94C-4CB7C63A7971', '001|调试', '127.0.0.1', '2011-09-26 19:48:13');
INSERT INTO `login_log_p` VALUES ('03C5ACAB-C6C4-456F-9B3D-64A80BBECADA', '001|调试', '127.0.0.1', '2011-09-18 22:49:41');
INSERT INTO `login_log_p` VALUES ('03ED9524-0BBA-4082-8FA6-2F6BA905A627', '001|调试', '127.0.0.1', '2011-09-21 19:32:38');
INSERT INTO `login_log_p` VALUES ('042027CF-496F-4C79-BDD8-F3BFC05EDBCC', 'anonymous|', '192.168.1.114', '2012-01-20 12:15:28');
INSERT INTO `login_log_p` VALUES ('0451DE27-3C35-4054-B27B-80EC5F5303E9', '001|调试', '127.0.0.1', '2011-08-20 00:14:17');
INSERT INTO `login_log_p` VALUES ('0464165A-6013-4AF8-8ED3-9350369780ED', '001|调试', '127.0.0.1', '2011-10-01 21:39:43');
INSERT INTO `login_log_p` VALUES ('04ED9BC3-FB5F-4F89-9DF6-5F34FE0ACB26', '001|调试', '127.0.0.1', '2011-08-26 20:19:15');
INSERT INTO `login_log_p` VALUES ('05586466-481A-4426-A237-D06BB78FA27A', '001|调试', '192.168.1.110', '2012-02-09 10:33:01');
INSERT INTO `login_log_p` VALUES ('06376BC7-200F-442A-85F4-27578A9BAA54', 'anonymous|', '192.168.1.114', '2012-01-20 11:53:21');
INSERT INTO `login_log_p` VALUES ('06767A52-69EC-430D-B15C-9BDB0952CF53', 'anonymous|', '192.168.1.105', '2012-04-16 16:00:36');
INSERT INTO `login_log_p` VALUES ('07C0244F-BFAC-45D4-945A-91B1E7B060F4', 'anonymous|', '192.168.1.111', '2012-09-06 09:19:19');
INSERT INTO `login_log_p` VALUES ('07D7377C-F34E-4295-A773-C62FCDE27275', '001|调试', '127.0.0.1', '2011-09-17 22:54:46');
INSERT INTO `login_log_p` VALUES ('0886BF0D-6CAD-499A-9B2F-27BE6AAD6232', '001|调试', '127.0.0.1', '2011-10-01 21:03:53');
INSERT INTO `login_log_p` VALUES ('08B680ED-D8D6-41D7-A21D-377F14A98D00', '001|调试', '127.0.0.1', '2011-10-07 15:00:45');
INSERT INTO `login_log_p` VALUES ('08D3AB2B-7377-4655-86CD-218CBBFDD77C', '001|调试', '192.168.1.115', '2012-01-31 09:47:34');
INSERT INTO `login_log_p` VALUES ('091A50DF-C09F-4CE8-9A17-895453989987', 'anonymous|席军', '192.168.1.103', '2011-12-02 17:14:41');
INSERT INTO `login_log_p` VALUES ('09D1F647-5775-4E7A-8952-ED62C1B8CD55', '001|调试', '127.0.0.1', '2013-03-09 22:01:46');
INSERT INTO `login_log_p` VALUES ('0A71E925-A06B-4228-8103-468C44F235C3', '001|调试', '127.0.0.1', '2011-09-26 22:36:06');
INSERT INTO `login_log_p` VALUES ('0A8D201D-F56F-42E6-A87F-A6C49875A617', '001|调试', '192.168.1.115', '2012-02-03 15:09:22');
INSERT INTO `login_log_p` VALUES ('0ABAD9A6-CCFA-49E3-B117-7FCDC139D6FD', 'anonymous|杨丽', '192.168.1.106', '2012-03-29 16:38:46');
INSERT INTO `login_log_p` VALUES ('0AF5FB33-34EB-4C9D-9BC4-14DE5B017249', '001|调试', '192.168.1.112', '2012-05-21 14:34:48');
INSERT INTO `login_log_p` VALUES ('0B2BB269-E8B5-4780-862F-19375B86D544', '001|调试', '192.168.1.106', '2012-05-07 11:36:50');
INSERT INTO `login_log_p` VALUES ('0C1DD696-88D1-4737-854A-639CA191E50F', '001|调试', '127.0.0.1', '2011-10-06 18:41:57');
INSERT INTO `login_log_p` VALUES ('0CC13A98-B1A0-45AA-A9BD-9A9ED069D37E', '001|调试', '127.0.0.1', '2011-10-07 12:21:01');
INSERT INTO `login_log_p` VALUES ('0CEAE7DF-318D-444B-BBC7-E5C8711F3577', '001|调试', '127.0.0.1', '2013-02-22 13:32:48');
INSERT INTO `login_log_p` VALUES ('0D0ACA9A-275F-40A9-9516-FA90772D7544', '001|调试', '192.168.1.105', '2011-11-14 08:28:58');
INSERT INTO `login_log_p` VALUES ('0E0BED1C-7D64-4899-B2A7-BCB7917A369D', 'anonymous|', '192.168.1.105', '2012-04-17 11:15:20');
INSERT INTO `login_log_p` VALUES ('0E3C46A5-DAA2-48B4-BEB9-522572D133B4', '001|调试', '127.0.0.1', '2011-10-06 18:32:21');
INSERT INTO `login_log_p` VALUES ('0E3D4123-DE0E-48A5-80E9-3BA0DA0C202A', 'anonymous|张玉杰', '192.168.1.105', '2011-11-14 08:34:43');
INSERT INTO `login_log_p` VALUES ('0ED653F4-2450-4E0E-BF82-775E9C5A85BA', '001|调试', '127.0.0.1', '2011-09-17 21:22:18');
INSERT INTO `login_log_p` VALUES ('1018CA16-0828-49D3-AD73-065C88FC3A99', '001|调试', '127.0.0.1', '2011-10-05 01:19:13');
INSERT INTO `login_log_p` VALUES ('103546FD-CF89-4593-946F-0167A9BE4578', '001|调试', '127.0.0.1', '2013-03-09 23:00:03');
INSERT INTO `login_log_p` VALUES ('108ABD5F-F9C0-48B9-9614-6EF6104DE2AC', 'anonymous|', '192.168.1.112', '2012-05-02 10:08:39');
INSERT INTO `login_log_p` VALUES ('109F777E-EFC7-4814-9D3E-69BA7201C62F', 'anonymous|演示', '127.0.0.1', '2013-03-07 16:53:01');
INSERT INTO `login_log_p` VALUES ('10E293A2-FF4C-47B4-9C69-DA544C26DE2B', '001|调试', '192.168.1.110', '2012-01-16 09:25:30');
INSERT INTO `login_log_p` VALUES ('1114E38F-3DB2-4708-8D4D-46C94F6811DB', '001|调试', '127.0.0.1', '2011-08-27 21:13:31');
INSERT INTO `login_log_p` VALUES ('112F4543-9FFC-4093-9D14-A9B5F1BE87F2', '001|调试', '192.168.1.104', '2012-11-02 15:48:32');
INSERT INTO `login_log_p` VALUES ('1159EC64-F65C-487A-A185-D692F974B8BF', 'anonymous|', '192.168.1.112', '2012-05-02 14:19:27');
INSERT INTO `login_log_p` VALUES ('11682A60-421D-497C-937B-F5CA404068A0', '001|调试', '192.168.1.104', '2012-06-19 11:06:48');
INSERT INTO `login_log_p` VALUES ('1177E8CC-25F2-4E93-B351-4943819AC267', 'anonymous|', '192.168.1.101', '2012-08-31 09:58:27');
INSERT INTO `login_log_p` VALUES ('11D879B0-F163-458D-A9AB-7229729F599E', '001|调试', '127.0.0.1', '2011-08-27 14:45:31');
INSERT INTO `login_log_p` VALUES ('129377A4-C8BA-4C1F-A1C2-B19EE02DE982', '001|调试', '192.168.1.110', '2012-01-17 11:59:07');
INSERT INTO `login_log_p` VALUES ('12A0B150-BF96-4E05-95ED-2019E47CE750', '001|调试', '192.168.1.102', '2011-09-24 10:06:36');
INSERT INTO `login_log_p` VALUES ('12C6D077-62C1-46BF-8FC2-249394E50919', '001|调试', '127.0.0.1', '2011-09-23 00:11:44');
INSERT INTO `login_log_p` VALUES ('131B77E1-F97B-48A5-A58F-9F873F3447E5', '001|调试', '192.168.1.115', '2012-02-02 14:44:12');
INSERT INTO `login_log_p` VALUES ('1323C4C0-8387-4227-A086-66A3614A0AD5', '001|调试', '192.168.1.115', '2012-02-03 09:24:53');
INSERT INTO `login_log_p` VALUES ('13531B13-BD61-4223-82CB-1CDD91CE70DC', 'anonymous|', '192.168.1.112', '2012-07-26 09:29:12');
INSERT INTO `login_log_p` VALUES ('135EB6E9-D6FF-43CD-B5A5-3EA4AB3A8C79', '001|调试', '192.168.1.103', '2012-10-18 11:27:15');
INSERT INTO `login_log_p` VALUES ('1397A21A-407C-4713-AF9E-161C9A90A4E2', 'anonymous|', '192.168.1.112', '2012-07-26 09:07:27');
INSERT INTO `login_log_p` VALUES ('13BDDADC-7D6E-4918-92F7-91F96D3C9EF1', 'anonymous|', '192.168.1.112', '2012-06-01 15:04:02');
INSERT INTO `login_log_p` VALUES ('13BFDEC8-A223-4882-AB91-887250C3FC04', 'anonymous|杜娟丽', '192.168.1.103', '2012-09-14 16:36:59');
INSERT INTO `login_log_p` VALUES ('14149700-5698-495E-8C52-1A20660C6FF9', '001|调试', '127.0.0.1', '2011-08-27 22:21:07');
INSERT INTO `login_log_p` VALUES ('141BCA03-BB2B-4B87-9108-61295E1FE487', '001|调试', '127.0.0.1', '2011-08-21 22:35:21');
INSERT INTO `login_log_p` VALUES ('14351CBC-C434-4AF9-980D-37BB0C3F76E1', '001|调试', '192.168.1.115', '2012-02-01 09:55:59');
INSERT INTO `login_log_p` VALUES ('146892A3-C818-41C3-8698-8C7D760C4340', '001|调试', '127.0.0.1', '2011-08-21 23:10:08');
INSERT INTO `login_log_p` VALUES ('14748A0B-5977-4AA7-A68E-4C4256A01BF2', '001|调试', '127.0.0.1', '2011-09-25 18:27:58');
INSERT INTO `login_log_p` VALUES ('151E09DC-F651-42D9-A298-27EEF6ACFB28', '001|调试', '192.168.1.100', '2012-06-27 09:39:42');
INSERT INTO `login_log_p` VALUES ('15C183E1-9500-4BFF-AFB4-31C4B844BAE6', '001|调试', '127.0.0.1', '2011-08-27 23:44:15');
INSERT INTO `login_log_p` VALUES ('168854EA-C92D-45F4-8EB4-166596335B52', '001|调试', '192.168.1.106', '2012-05-08 11:16:25');
INSERT INTO `login_log_p` VALUES ('168B7ADB-632C-4A4E-BAB0-2D21EFCFE0A0', '001|调试', '127.0.0.1', '2011-09-16 21:21:13');
INSERT INTO `login_log_p` VALUES ('16ED96D0-C008-4DCE-B880-50CF0472F542', 'anonymous|', '192.168.1.107', '2012-11-08 09:40:07');
INSERT INTO `login_log_p` VALUES ('175CA69C-B542-4B4D-A67F-B3340807B8AA', 'anonymous|', '192.168.1.111', '2012-09-06 13:40:45');
INSERT INTO `login_log_p` VALUES ('17618DFE-5517-4242-9405-699FF9F2B973', 'anonymous|田燕', '192.168.1.110', '2012-10-29 13:52:44');
INSERT INTO `login_log_p` VALUES ('1770D63E-404D-450F-8F76-9089D619CC18', '001|调试', '192.168.1.104', '2012-06-19 15:57:30');
INSERT INTO `login_log_p` VALUES ('186B6DAF-8F56-4FF7-A646-84C30D1A6D53', '001|调试', '192.168.1.106', '2012-10-30 16:07:01');
INSERT INTO `login_log_p` VALUES ('18AAF7D8-F795-4378-8975-9E3F429E96C3', '001|调试', '192.168.1.109', '2012-11-23 10:51:27');
INSERT INTO `login_log_p` VALUES ('1933F97A-B042-49AA-8A1A-3FA631580CC4', 'anonymous|', '192.168.1.112', '2012-07-26 09:16:16');
INSERT INTO `login_log_p` VALUES ('1991B0B9-D32A-48F5-8F49-2B0D4573A66B', '001|调试', '127.0.0.1', '2011-10-06 12:26:16');
INSERT INTO `login_log_p` VALUES ('19983FE7-E249-4881-BC15-40586848A546', 'anonymous|', '127.0.0.1', '2012-11-27 11:06:36');
INSERT INTO `login_log_p` VALUES ('19A278AD-5614-4F6B-8720-CE4035A64AF2', 'anonymous|田燕', '192.168.1.110', '2012-10-29 13:23:39');
INSERT INTO `login_log_p` VALUES ('19E76666-BFDE-4D59-B32F-11CAEF51C42E', '001|调试', '127.0.0.1', '2011-10-07 00:15:54');
INSERT INTO `login_log_p` VALUES ('19FFE3B2-63F9-49F6-B0A1-3451B5BAD496', '001|调试', '192.168.1.115', '2012-01-31 13:47:26');
INSERT INTO `login_log_p` VALUES ('1A5012E7-CA72-4D2C-9BD2-D72DAEC79D83', '001|调试', '127.0.0.1', '2011-10-07 12:27:43');
INSERT INTO `login_log_p` VALUES ('1AB04EC8-96CA-411D-B0CF-AC867CEF331C', '001|调试', '192.168.1.106', '2012-10-30 11:33:45');
INSERT INTO `login_log_p` VALUES ('1B08FD11-BCE1-434E-AA99-9635471EFF7B', '001|调试', '192.168.1.106', '2012-10-29 17:11:33');
INSERT INTO `login_log_p` VALUES ('1B38E3E3-1DAF-4853-A283-092BDC876E2F', '001|调试', '127.0.0.1', '2011-10-07 16:41:47');
INSERT INTO `login_log_p` VALUES ('1B5FC7D3-E84D-40CC-ABD9-730CEB476307', '001|调试', '127.0.0.1', '2011-09-28 22:57:58');
INSERT INTO `login_log_p` VALUES ('1B655B21-9D3B-46EA-AEAF-F3F62C74BBCF', '001|调试', '127.0.0.1', '2011-10-06 10:26:07');
INSERT INTO `login_log_p` VALUES ('1BAEFFE6-CA02-4949-8A75-6419333D4E36', 'anonymous|', '192.168.1.250', '2012-07-11 15:31:17');
INSERT INTO `login_log_p` VALUES ('1BBDE9CC-0C89-46D7-B691-21CB6682D1D9', '001|调试', '192.168.1.100', '2012-07-11 10:23:58');
INSERT INTO `login_log_p` VALUES ('1BBE3A3C-F7B6-4878-8871-BEFC5A4AB270', '001|调试', '127.0.0.1', '2011-10-07 00:33:29');
INSERT INTO `login_log_p` VALUES ('1BC989D7-FF9E-4A3D-BB57-7778FC89A263', '001|调试', '192.168.1.102', '2012-07-23 10:35:14');
INSERT INTO `login_log_p` VALUES ('1BDDB409-D790-43C9-BCAE-0777FC6CDAC7', 'anonymous|杜娟丽', '192.168.1.103', '2012-09-14 16:43:18');
INSERT INTO `login_log_p` VALUES ('1C2BF2D9-A00D-4E5E-9FFB-3589D15FF16A', '001|调试', '192.168.1.115', '2012-02-02 13:21:50');
INSERT INTO `login_log_p` VALUES ('1C51A4E6-7CA4-425D-BD32-551881479CFA', '001|调试', '127.0.0.1', '2011-10-04 10:52:42');
INSERT INTO `login_log_p` VALUES ('1CFF71C5-A753-458A-8F52-F838900F4A24', 'anonymous|', '192.168.1.103', '2011-10-18 10:05:13');
INSERT INTO `login_log_p` VALUES ('1D7D0E31-F4B6-4EF4-AEE6-3ACE7DA9A48B', '001|调试', '192.168.1.102', '2012-07-23 09:42:56');
INSERT INTO `login_log_p` VALUES ('1D92740F-D0E8-4929-833B-D602FD204C47', '001|调试', '192.168.1.110', '2012-01-31 10:36:15');
INSERT INTO `login_log_p` VALUES ('1E38770B-6150-4034-940D-7609B47C88A6', '001|调试', '192.168.1.104', '2012-06-19 16:36:14');
INSERT INTO `login_log_p` VALUES ('1EF9FE75-F6D4-477D-86B0-14F73CDD0D6D', '001|调试', '192.168.1.103', '2012-10-19 11:36:35');
INSERT INTO `login_log_p` VALUES ('1F271A0B-EDB1-4A55-B5FE-9837A35C2395', '001|调试', '192.168.1.103', '2012-09-11 15:24:37');
INSERT INTO `login_log_p` VALUES ('1F9472E3-1B37-42EF-BABD-8228D5A60DF2', '001|调试', '127.0.0.1', '2011-08-27 21:44:31');
INSERT INTO `login_log_p` VALUES ('1FE8AD39-6AB0-414F-9F72-E7F291D5EE40', '001|调试', '192.168.1.115', '2012-01-30 13:31:47');
INSERT INTO `login_log_p` VALUES ('200B153D-90F3-427E-B5F3-5CB430319920', '001|调试', '127.0.0.1', '2011-08-21 09:59:00');
INSERT INTO `login_log_p` VALUES ('201AA7F0-8E85-400E-B7E7-885D64278CB9', '001|调试', '192.168.1.105', '2011-09-24 10:33:32');
INSERT INTO `login_log_p` VALUES ('201CB44A-B244-446F-81AC-4136153DB008', '001|调试', '127.0.0.1', '2011-09-26 20:29:12');
INSERT INTO `login_log_p` VALUES ('207D9A59-7330-4DB4-9704-A0CFF584FDBF', '001|调试', '192.168.1.103', '2011-11-26 13:22:48');
INSERT INTO `login_log_p` VALUES ('20D09711-D3E2-40BA-8AFD-DEC5F7F7F4C6', '001|调试', '127.0.0.1', '2011-10-03 08:47:39');
INSERT INTO `login_log_p` VALUES ('2120970A-1335-4FE0-81E2-A3698C1F3563', '001|调试', '127.0.0.1', '2011-09-17 23:46:45');
INSERT INTO `login_log_p` VALUES ('21228B54-D00F-40E6-8CAE-8652DC811188', '001|调试', '192.168.1.102', '2012-09-19 09:48:07');
INSERT INTO `login_log_p` VALUES ('21337851-620C-4E31-ADA1-08F9D692E076', '001|调试', '127.0.0.1', '2011-10-02 00:34:26');
INSERT INTO `login_log_p` VALUES ('2191758C-872C-4B0B-9FBF-55A6F10126FD', 'anonymous|', '127.0.0.1', '2012-11-27 10:55:03');
INSERT INTO `login_log_p` VALUES ('21DE607B-0E68-4EE1-9C65-8D55526B1382', 'liuxiaoshan|刘晓山|刘晓山', '192.168.1.107', '2012-05-02 17:19:08');
INSERT INTO `login_log_p` VALUES ('21F1856C-9B48-4B27-9A9D-460B3868D192', 'anonymous|', '192.168.1.107', '2012-11-08 09:12:08');
INSERT INTO `login_log_p` VALUES ('220336B2-7FD2-458D-8426-50A88D8868E2', '001|调试', '127.0.0.1', '2012-11-27 11:24:25');
INSERT INTO `login_log_p` VALUES ('228A0984-5BE4-4FFF-B5C4-A09ECB8A46F2', '001|调试', '192.168.1.100', '2012-07-11 11:04:11');
INSERT INTO `login_log_p` VALUES ('22DA6C12-23B0-4A34-928A-11732D9BD218', '001|调试', '192.168.1.106', '2012-10-29 14:42:08');
INSERT INTO `login_log_p` VALUES ('23661154-F280-43FC-BA18-C445FFBCF40D', '001|调试', '127.0.0.1', '2013-03-09 23:30:16');
INSERT INTO `login_log_p` VALUES ('237D9844-5C50-4843-AEDD-98DE912C08B5', '001|调试', '192.168.1.115', '2012-01-31 13:54:07');
INSERT INTO `login_log_p` VALUES ('2424F2EA-0768-45FF-B9B5-9448B8364EC8', '001|调试', '127.0.0.1', '2013-03-09 23:30:31');
INSERT INTO `login_log_p` VALUES ('24652510-1930-45D1-BAA5-5D4D2144F8D2', '001|调试', '192.168.1.115', '2012-02-03 11:59:03');
INSERT INTO `login_log_p` VALUES ('24894E43-794A-41A3-A012-8F0406BEAF94', 'anonymous|', '192.168.1.250', '2012-07-11 15:17:12');
INSERT INTO `login_log_p` VALUES ('2492ABB0-20F4-400F-908F-1EA295674998', '001|调试', '192.168.1.115', '2012-01-31 12:01:31');
INSERT INTO `login_log_p` VALUES ('24B15961-1603-4152-A68B-F99301FE52E3', 'anonymous|席军', '192.168.1.103', '2011-12-05 10:06:14');
INSERT INTO `login_log_p` VALUES ('25FB47F1-7F86-4DB0-AC4B-66339043C08C', '001|调试', '127.0.0.1', '2011-08-21 20:23:18');
INSERT INTO `login_log_p` VALUES ('26473199-8658-4F7F-8C68-2C27EDA43C95', '001|调试', '192.168.1.100', '2012-07-11 14:20:30');
INSERT INTO `login_log_p` VALUES ('264D1896-41C8-4F62-974E-33E0EABDAA3E', '001|调试', '192.168.1.114', '2012-03-31 17:40:35');
INSERT INTO `login_log_p` VALUES ('26573894-76D2-4798-B05B-5E0C0CB4DD65', '001|调试', '192.168.1.103', '2011-11-26 13:15:12');
INSERT INTO `login_log_p` VALUES ('269CEFEB-67A3-481F-9142-DF15E6C7202E', 'anonymous|田燕', '192.168.1.103', '2012-09-10 11:40:47');
INSERT INTO `login_log_p` VALUES ('27255170-0926-42DD-BF8B-45D20D69B4D1', 'anonymous|', '192.168.1.112', '2012-03-23 18:00:01');
INSERT INTO `login_log_p` VALUES ('275B005C-E72E-4281-A6D1-2CD389AC4D78', 'anonymous|', '192.168.1.107', '2012-11-08 10:12:30');
INSERT INTO `login_log_p` VALUES ('2808E396-34EA-4B01-8ECB-0B72B94A5164', 'anonymous|', '192.168.1.250', '2012-07-11 14:52:24');
INSERT INTO `login_log_p` VALUES ('29A6FD8E-3F69-4EEC-A5C4-0706C227BB52', '001|调试', '192.168.1.106', '2012-05-07 11:37:38');
INSERT INTO `login_log_p` VALUES ('29CA2D77-25BA-4987-8AD1-DBA6AD3637D9', '001|调试', '127.0.0.1', '2011-08-24 23:33:40');
INSERT INTO `login_log_p` VALUES ('29E5F036-ABB5-49B5-92EA-57CD9A077C84', 'anonymous|田燕', '192.168.1.110', '2012-10-29 13:32:58');
INSERT INTO `login_log_p` VALUES ('2A00E72F-8DEB-413D-BC84-2B87D4DAB0D4', '001|调试', '127.0.0.1', '2011-08-21 11:21:12');
INSERT INTO `login_log_p` VALUES ('2A5FCFE6-C252-44B7-B980-51A2F514EA26', '001|调试', '192.168.1.104', '2012-11-02 15:18:56');
INSERT INTO `login_log_p` VALUES ('2A723397-F714-42EF-9F01-06FD4AED1C48', '001|调试', '127.0.0.1', '2011-08-21 22:26:22');
INSERT INTO `login_log_p` VALUES ('2AFE3F35-5AB3-45B8-ACAC-2787AE781149', '001|调试', '127.0.0.1', '2011-08-21 09:22:27');
INSERT INTO `login_log_p` VALUES ('2B12F143-58A4-4E8C-886C-DB1BCF40725B', '001|调试', '192.168.1.110', '2012-02-16 16:27:56');
INSERT INTO `login_log_p` VALUES ('2B2C5E4F-19ED-4D8C-BF25-A7BD1395A5A4', '001|调试', '127.0.0.1', '2011-10-06 17:12:23');
INSERT INTO `login_log_p` VALUES ('2B39C82C-C07D-4414-8683-5A24E5160708', '001|调试', '192.168.1.106', '2012-10-30 09:46:59');
INSERT INTO `login_log_p` VALUES ('2B63F315-7BA2-4E7C-8D34-FD807D8FD294', 'anonymous|', '192.168.1.109', '2012-08-14 09:31:03');
INSERT INTO `login_log_p` VALUES ('2BBB1453-BF9D-4012-A088-5636711B800E', '001|调试', '192.168.1.115', '2012-01-21 09:00:40');
INSERT INTO `login_log_p` VALUES ('2BC77AB7-5AE2-4775-B921-A2988D1F4330', 'anonymous|杜娟丽', '192.168.1.107', '2012-10-30 16:18:25');
INSERT INTO `login_log_p` VALUES ('2BC9E787-7CCB-494B-921F-81DDAA84BBC9', 'anonymous|杜娟丽', '192.168.1.117', '2012-02-15 17:25:09');
INSERT INTO `login_log_p` VALUES ('2C05F161-0CF9-4142-ABD1-DF151D1686DB', '001|调试', '192.168.1.110', '2012-02-27 10:52:13');
INSERT INTO `login_log_p` VALUES ('2C316061-4B54-42E2-BBB9-B348254250E8', '001|调试', '127.0.0.1', '2011-08-19 22:59:09');
INSERT INTO `login_log_p` VALUES ('2C3B9D8C-5837-47D2-A51B-085742BC3246', '001|调试', '127.0.0.1', '2011-10-03 09:00:48');
INSERT INTO `login_log_p` VALUES ('2CAA2DB1-7038-47F6-9ED8-930DC93C5FC7', '001|调试', '192.168.1.103', '2012-09-11 11:14:38');
INSERT INTO `login_log_p` VALUES ('2CD25F48-1E15-4BB3-998C-E686C2BF975C', '001|调试', '192.168.1.110', '2012-01-18 13:55:13');
INSERT INTO `login_log_p` VALUES ('2CE7EBAA-F0BC-44AD-A3FA-A549378C6987', '001|调试', '192.168.1.102', '2011-09-24 10:21:22');
INSERT INTO `login_log_p` VALUES ('2D05D3DF-A38D-4886-8658-9F2F4470F22A', '001|调试', '127.0.0.1', '2011-08-21 18:38:44');
INSERT INTO `login_log_p` VALUES ('2D475E0C-F15E-4ED0-98C9-75EFB1F16314', 'anonymous|', '192.168.1.114', '2012-05-17 11:25:09');
INSERT INTO `login_log_p` VALUES ('2D54E569-6F8B-4281-B3A0-404F7026E2F8', 'anonymous|杜娟丽', '192.168.1.107', '2012-10-31 14:28:03');
INSERT INTO `login_log_p` VALUES ('2D5ADBFC-2675-4415-92F8-1BF82FF34463', '001|调试', '127.0.0.1', '2011-09-21 20:09:38');
INSERT INTO `login_log_p` VALUES ('2D77EEA3-EABC-428E-8DE1-E8748B82A393', 'anonymous|', '192.168.1.106', '2012-09-14 09:20:26');
INSERT INTO `login_log_p` VALUES ('2DABB6F3-DB4F-4707-BF9C-A9385E352A47', 'anonymous|田燕', '192.168.1.110', '2012-10-29 14:07:55');
INSERT INTO `login_log_p` VALUES ('2DB43E71-B5A2-471A-B242-968058C117A0', 'anonymous|', '127.0.0.1', '2012-11-27 10:52:46');
INSERT INTO `login_log_p` VALUES ('2E3E9EE3-91B3-4F15-B46B-AB70DB44D475', '001|调试', '192.168.1.109', '2012-11-23 15:32:02');
INSERT INTO `login_log_p` VALUES ('2E68F221-90A0-447F-9645-51ECF0C528AB', 'anonymous|', '192.168.1.114', '2012-01-20 11:58:43');
INSERT INTO `login_log_p` VALUES ('2EC56A38-103E-4955-A74D-D251C6631A55', '001|调试', '127.0.0.1', '2011-10-18 09:42:25');
INSERT INTO `login_log_p` VALUES ('2FEE3C8B-97BA-4C2C-A533-95C62D75BD6E', 'anonymous|', '192.168.1.107', '2012-05-02 15:11:24');
INSERT INTO `login_log_p` VALUES ('2FF8499A-6EAD-4548-BEE9-0CA7DDB48484', '001|调试', '192.168.1.104', '2012-06-19 16:07:22');
INSERT INTO `login_log_p` VALUES ('3004CDF0-3AC6-458C-BC62-AF5B6C7F601D', '001|调试', '127.0.0.1', '2011-08-21 20:12:20');
INSERT INTO `login_log_p` VALUES ('3012147C-9F5B-4FEF-9CDF-882E0E3E2875', 'anonymous|田燕', '192.168.1.110', '2012-10-29 13:13:23');
INSERT INTO `login_log_p` VALUES ('3017ACD7-8D6E-449E-827D-3540A8178AFF', '001|调试', '127.0.0.1', '2011-08-27 11:45:24');
INSERT INTO `login_log_p` VALUES ('301CADBD-923A-47DD-B705-114A4773571E', '001|调试', '192.168.1.110', '2012-01-18 16:08:47');
INSERT INTO `login_log_p` VALUES ('307270B4-10AA-4752-BE69-E1F7C1DCE976', '001|调试', '127.0.0.1', '2011-10-03 08:35:09');
INSERT INTO `login_log_p` VALUES ('30ACD6F4-D048-4811-912E-6D6809EBE4B4', '001|调试', '127.0.0.1', '2011-08-28 11:40:22');
INSERT INTO `login_log_p` VALUES ('30F95314-499F-4CB7-9E00-BB81AE7D3056', '001|调试', '192.168.1.115', '2012-01-29 14:05:28');
INSERT INTO `login_log_p` VALUES ('31123A9E-A283-4D66-B489-82C7F3363BBC', '001|调试', '192.168.1.109', '2012-11-23 09:51:53');
INSERT INTO `login_log_p` VALUES ('31980BD3-FB24-4995-B8A7-1FFF59E461DA', '001|调试', '192.168.1.103', '2011-10-18 10:10:30');
INSERT INTO `login_log_p` VALUES ('31A64C2A-77DE-4019-815E-E43A39E4AAEE', '001|调试', '127.0.0.1', '2011-10-04 23:01:46');
INSERT INTO `login_log_p` VALUES ('31CAFFF3-C60C-4D42-B984-57F36B744687', '001|调试', '127.0.0.1', '2011-09-26 00:18:49');
INSERT INTO `login_log_p` VALUES ('3207E308-BA72-400A-9502-221776DB9C35', 'anonymous|席军', '192.168.1.103', '2011-12-02 17:15:22');
INSERT INTO `login_log_p` VALUES ('322DAB4D-BECF-44B7-A47B-9685D4EDC894', '001|调试', '192.168.1.102', '2011-09-24 10:00:26');
INSERT INTO `login_log_p` VALUES ('32B8F34E-E3F4-47B7-BFBD-A62E16B3908F', '001|调试', '192.168.1.110', '2012-01-13 15:43:35');
INSERT INTO `login_log_p` VALUES ('33585EF7-72B6-4045-9372-1054069BE70E', '001|调试', '192.168.1.114', '2012-04-01 13:52:06');
INSERT INTO `login_log_p` VALUES ('3396FDD3-58A0-4E09-A939-0D36BC5799A6', '001|调试', '127.0.0.1', '2011-09-28 23:03:46');
INSERT INTO `login_log_p` VALUES ('33ECC45B-E6D2-449D-BE4D-F679345A335C', '001|调试', '127.0.0.1', '2011-10-07 13:00:08');
INSERT INTO `login_log_p` VALUES ('351944AC-38F7-44E4-9CEB-E004115DDF43', '001|调试', '192.168.1.106', '2012-10-30 13:42:57');
INSERT INTO `login_log_p` VALUES ('354EAEB5-F559-4318-B9B1-6DCE6FEEE7C3', '001|调试', '192.168.1.109', '2012-11-23 09:35:23');
INSERT INTO `login_log_p` VALUES ('3575CB46-95ED-4B0F-8E1A-A8F391BFCCCD', '001|调试', '192.168.1.109', '2012-11-09 10:19:23');
INSERT INTO `login_log_p` VALUES ('35898414-7715-44EA-9756-8B0862E31302', 'anonymous|杜娟丽', '192.168.1.117', '2012-02-15 17:48:34');
INSERT INTO `login_log_p` VALUES ('35C0536F-C3A5-4EAF-A011-83612EB473C8', '001|调试', '192.168.1.110', '2012-02-14 10:58:01');
INSERT INTO `login_log_p` VALUES ('363812C2-DDFD-44E7-B474-E5DC90D639BF', '001|调试', '127.0.0.1', '2011-09-18 14:18:59');
INSERT INTO `login_log_p` VALUES ('364F49C2-3367-4717-874C-78444AC13818', 'anonymous|', '192.168.1.112', '2012-03-23 18:09:55');
INSERT INTO `login_log_p` VALUES ('36EA9239-F568-40EC-AC3D-8BC20FD0EE5F', '001|调试', '127.0.0.1', '2011-10-06 23:57:13');
INSERT INTO `login_log_p` VALUES ('37009E43-C1C5-4305-A4C3-EA36D95BC5B6', 'anonymous|田燕', '192.168.1.110', '2012-10-29 12:57:52');
INSERT INTO `login_log_p` VALUES ('370F8792-2AEF-48EE-9F96-E5C5538D6131', '001|调试', '127.0.0.1', '2011-10-01 20:30:28');
INSERT INTO `login_log_p` VALUES ('3718C124-5F93-4786-8E18-6EF70E9FEB10', '001|调试', '192.168.1.109', '2012-11-09 10:37:42');
INSERT INTO `login_log_p` VALUES ('375076D6-2835-40B2-A832-7D61E0B1D557', '001|调试', '192.168.1.102', '2011-09-24 10:03:17');
INSERT INTO `login_log_p` VALUES ('3783FB98-7D1D-4500-B9AB-C2808FA90F91', 'anonymous|', '192.168.1.112', '2012-03-23 18:00:01');
INSERT INTO `login_log_p` VALUES ('383B8C8B-6EC5-40ED-9E26-8D75DF7E3AB3', '001|调试', '192.168.1.106', '2012-05-05 09:57:13');
INSERT INTO `login_log_p` VALUES ('38B3158C-947C-4413-8487-EE381D3DB125', '001|调试', '127.0.0.1', '2011-10-07 01:56:45');
INSERT INTO `login_log_p` VALUES ('390FD75A-9698-4D9A-A649-00D6C32221DE', '001|调试', '192.168.1.112', '2012-05-17 11:19:59');
INSERT INTO `login_log_p` VALUES ('395471C7-BEB7-46E4-8B4C-ED97BBBCFFDE', '001|调试', '127.0.0.1', '2011-10-01 18:36:30');
INSERT INTO `login_log_p` VALUES ('3B180289-F46D-4CBB-A156-66F80B9CB3AE', '001|调试', '192.168.1.106', '2012-05-05 11:45:51');
INSERT INTO `login_log_p` VALUES ('3B5EE029-4C94-4A38-B027-73776B14D464', '001|调试', '192.168.1.102', '2012-09-19 10:44:00');
INSERT INTO `login_log_p` VALUES ('3BC7C2E2-D054-4883-ADFB-C14B76F6C656', '001|调试', '192.168.1.115', '2012-01-31 13:24:29');
INSERT INTO `login_log_p` VALUES ('3CB24C26-AAD5-443D-89C4-BDC69B95A745', 'anonymous|', '192.168.1.111', '2012-09-06 10:05:59');
INSERT INTO `login_log_p` VALUES ('3D585F12-C8FC-42EE-9BB1-2052258A755A', '001|调试', '192.168.1.103', '2012-09-11 11:01:03');
INSERT INTO `login_log_p` VALUES ('3DE2D3DF-699A-4AB1-A5E3-C60E10A05A46', 'anonymous|席军', '192.168.1.103', '2011-12-02 14:10:45');
INSERT INTO `login_log_p` VALUES ('3E315916-5B39-49F9-9CD8-096FAE73E73C', 'anonymous|', '192.168.1.103', '2012-05-17 08:45:54');
INSERT INTO `login_log_p` VALUES ('3E553D1D-CF27-4FCA-837A-5F5004DB2206', 'anonymous|', '192.168.1.107', '2012-05-02 16:08:37');
INSERT INTO `login_log_p` VALUES ('3E8A6DD2-CD6D-44B3-BBF4-EEFC4C935BF4', '001|调试', '127.0.0.1', '2011-08-21 19:53:47');
INSERT INTO `login_log_p` VALUES ('3E8C4B3B-54DF-4446-89A4-596AEE9B1092', 'anonymous|', '192.168.1.103', '2012-05-17 10:49:41');
INSERT INTO `login_log_p` VALUES ('3EE2FF28-128A-42AA-B6D3-F6FF5780C202', '001|调试', '127.0.0.1', '2011-10-06 17:53:30');
INSERT INTO `login_log_p` VALUES ('3EE5ADD6-9C81-464E-8763-25761411DC3A', 'anonymous|杜娟丽', '192.168.1.117', '2012-02-15 15:02:22');
INSERT INTO `login_log_p` VALUES ('3FCC961F-77A8-4799-8438-F4D59C5869E0', 'anonymous|杨丽', '192.168.1.106', '2012-03-29 16:31:57');
INSERT INTO `login_log_p` VALUES ('3FCEE369-9FEC-4777-B1A7-C30A65957338', 'anonymous|', '192.168.1.104', '2011-10-31 08:24:19');
INSERT INTO `login_log_p` VALUES ('3FCFD611-252A-4394-8619-D99954FFF6E0', '001|调试', '192.168.1.114', '2012-03-31 16:07:05');
INSERT INTO `login_log_p` VALUES ('3FDB6D6A-1018-4DEF-B3EB-1E7D049624D9', '001|调试', '192.168.1.110', '2012-01-13 17:01:18');
INSERT INTO `login_log_p` VALUES ('40234015-D7AD-4BF2-AB40-1D94288581FD', '001|调试', '192.168.1.115', '2012-02-03 16:01:58');
INSERT INTO `login_log_p` VALUES ('403F1176-00FE-48BE-8E12-F198E2386EE7', '001|调试', '127.0.0.1', '2011-08-24 23:37:40');
INSERT INTO `login_log_p` VALUES ('40865F80-E37D-48F9-AA82-57B09AF0A82C', '001|调试', '192.168.1.115', '2012-01-31 13:47:51');
INSERT INTO `login_log_p` VALUES ('426C3C26-AA4F-415E-B878-5900BCDD3DC6', '001|调试', '127.0.0.1', '2013-03-09 23:33:34');
INSERT INTO `login_log_p` VALUES ('42E5C875-C6E1-40B5-B761-41886A3DE524', '001|调试', '127.0.0.1', '2011-08-21 17:51:06');
INSERT INTO `login_log_p` VALUES ('42ED3BDD-54FA-4A48-9248-37609E8EFC41', 'anonymous|', '192.168.1.103', '2012-05-17 09:15:51');
INSERT INTO `login_log_p` VALUES ('43068DB6-11D5-45BA-993F-BFD99C885712', '001|调试', '127.0.0.1', '2011-09-14 20:13:49');
INSERT INTO `login_log_p` VALUES ('439F16C1-3AF0-4765-9679-A7D5AE5E95C9', 'anonymous|杨丽', '192.168.1.106', '2012-03-29 16:36:13');
INSERT INTO `login_log_p` VALUES ('44EF6141-6ABA-4F48-8C87-2E61E6A1672E', '001|调试', '127.0.0.1', '2011-08-20 22:50:53');
INSERT INTO `login_log_p` VALUES ('45430562-13B1-4ADA-8203-30E6A6D32260', '001|调试', '127.0.0.1', '2011-09-04 09:13:09');
INSERT INTO `login_log_p` VALUES ('457D45ED-70D5-4317-BE39-DCA24D510DCD', 'anonymous|杨丽', '192.168.1.106', '2012-03-30 09:12:27');
INSERT INTO `login_log_p` VALUES ('45B4BB2F-0F8B-47E0-97F7-9B261D36DE9A', '001|调试', '127.0.0.1', '2012-11-27 11:38:20');
INSERT INTO `login_log_p` VALUES ('463031C6-2A53-4470-8AD9-8A80EAEA9C0E', 'liuxiaoshan|刘晓山|刘晓山', '192.168.1.107', '2012-05-02 17:19:53');
INSERT INTO `login_log_p` VALUES ('46A7E187-2670-4957-8034-A47A4B6873F2', '001|调试', '127.0.0.1', '2011-08-22 23:32:51');
INSERT INTO `login_log_p` VALUES ('46D48948-8A15-4C4E-9726-526D6E08556F', '001|调试', '192.168.1.103', '2012-10-18 16:27:06');
INSERT INTO `login_log_p` VALUES ('47980F1D-1B30-4D92-9DBE-B4C031B7BB43', '001|调试', '127.0.0.1', '2011-08-27 12:07:59');
INSERT INTO `login_log_p` VALUES ('47A44E8B-0001-4624-B728-051966DFB3B8', '001|调试', '127.0.0.1', '2011-09-06 16:13:03');
INSERT INTO `login_log_p` VALUES ('47B43958-A874-4F23-A43A-8CBA063A3899', '001|调试', '127.0.0.1', '2011-08-27 11:59:43');
INSERT INTO `login_log_p` VALUES ('47F1633E-F2AF-43A0-9C84-BFA4C8EF9AD5', '001|调试', '127.0.0.1', '2011-10-05 08:19:06');
INSERT INTO `login_log_p` VALUES ('48ED0172-6E12-4B23-AAF2-BB35F98C4924', '001|调试', '127.0.0.1', '2011-09-25 23:26:23');
INSERT INTO `login_log_p` VALUES ('48F0886B-32A9-47A1-B6BB-49EBA31761F1', '001|调试', '127.0.0.1', '2011-10-06 16:45:51');
INSERT INTO `login_log_p` VALUES ('49349870-4E61-421E-8DBA-0B4FB9CDA90D', '001|调试', '127.0.0.1', '2011-08-27 22:08:26');
INSERT INTO `login_log_p` VALUES ('4A19FE79-C846-4B59-AE31-1AAF089B671F', '001|调试', '192.168.1.103', '2012-01-20 15:33:16');
INSERT INTO `login_log_p` VALUES ('4A245A22-6647-41F9-93F1-343F75F8E5BA', 'anonymous|杨丽', '192.168.1.105', '2011-11-04 16:06:38');
INSERT INTO `login_log_p` VALUES ('4A8315A7-BF69-4832-A987-3D652FC1CB70', 'anonymous|杜娟丽', '192.168.1.103', '2012-09-14 16:34:34');
INSERT INTO `login_log_p` VALUES ('4A91C497-7179-44BC-B043-A8EE81A6B7B6', 'anonymous|席军', '192.168.1.103', '2011-12-02 12:17:05');
INSERT INTO `login_log_p` VALUES ('4AC5113C-442A-47F3-A699-4F18396F6156', 'anonymous|', '192.168.1.114', '2012-01-20 11:51:47');
INSERT INTO `login_log_p` VALUES ('4ADFDFF0-FBBD-4EC6-B452-EC30A5F20E7F', '001|调试', '192.168.1.115', '2012-02-03 10:05:42');
INSERT INTO `login_log_p` VALUES ('4B057C80-5E9B-4FA3-9214-C5525BC99655', 'anonymous|', '192.168.1.112', '2012-06-01 15:57:20');
INSERT INTO `login_log_p` VALUES ('4B3339D6-8FDF-4A80-A5D7-B8DE58E56CAD', '001|调试', '192.168.1.115', '2012-02-02 08:55:56');
INSERT INTO `login_log_p` VALUES ('4B8C7A1B-BB50-4180-87E2-998AE790B85D', '001|调试', '127.0.0.1', '2011-10-06 17:46:04');
INSERT INTO `login_log_p` VALUES ('4C7B3E46-9DF8-42B0-A461-B74A1FBDF745', '001|调试', '127.0.0.1', '2011-08-30 06:33:37');
INSERT INTO `login_log_p` VALUES ('4CD33CE0-2FF9-4A61-8A89-646628045D66', '001|调试', '192.168.1.106', '2012-10-30 15:57:17');
INSERT INTO `login_log_p` VALUES ('4D0CA543-EF7C-4A86-AB79-265308123C1D', '001|调试', '192.168.1.110', '2012-02-09 10:49:46');
INSERT INTO `login_log_p` VALUES ('4D672DA9-276C-46A9-942D-DBF7C344A31A', 'anonymous|杜娟丽', '192.168.1.117', '2012-02-15 14:46:29');
INSERT INTO `login_log_p` VALUES ('4DAAEA8B-ED71-40C4-AACC-C81DF580DB5E', 'anonymous|席军', '192.168.1.103', '2011-12-02 13:50:03');
INSERT INTO `login_log_p` VALUES ('4DD7A416-1D2F-4A4C-A41B-F4C7B8AB7086', 'anonymous|', '192.168.1.107', '2012-11-08 11:27:01');
INSERT INTO `login_log_p` VALUES ('4DDEBB5E-2049-4C9F-8192-7551428F5B64', '001|调试', '192.168.1.106', '2011-10-18 11:30:49');
INSERT INTO `login_log_p` VALUES ('4DF70734-DC02-4AD1-9167-AC86C388794D', '001|调试', '192.168.1.109', '2012-11-23 15:50:17');
INSERT INTO `login_log_p` VALUES ('4E59D1E9-827F-4D77-A5F9-5573B91BFE9B', 'anonymous|席军', '192.168.1.103', '2011-12-02 17:00:21');
INSERT INTO `login_log_p` VALUES ('4E61A8CE-9D32-43DD-BF56-09FD259836CC', 'anonymous|杜娟丽', '192.168.1.107', '2012-10-30 16:23:22');
INSERT INTO `login_log_p` VALUES ('4E74706C-E748-4460-BB0D-8A689EE054B8', 'anonymous|田燕', '192.168.1.103', '2012-09-10 11:09:00');
INSERT INTO `login_log_p` VALUES ('4E7B89F4-9FC0-41CE-9707-D8970B65020A', '001|调试', '192.168.1.106', '2012-10-30 10:11:19');
INSERT INTO `login_log_p` VALUES ('4EF7C984-5E04-4C3F-82EC-A209BBEE9BB1', '001|调试', '192.168.1.114', '2012-04-01 14:17:14');
INSERT INTO `login_log_p` VALUES ('4F1FC363-7BD4-4BA3-9C13-D398B760FCA7', '001|调试', '192.168.1.110', '2012-01-31 16:37:48');
INSERT INTO `login_log_p` VALUES ('4F503A4B-8DF7-4518-AFC2-B3EBC64A48F8', '001|调试', '127.0.0.1', '2011-08-22 18:49:53');
INSERT INTO `login_log_p` VALUES ('4F6651B3-F05A-43E9-B7CD-77C2A48CB3E8', '001|调试', '192.168.1.115', '2012-02-03 11:58:15');
INSERT INTO `login_log_p` VALUES ('4FB5949C-3503-4EE4-9C9B-78144F7E9C03', '001|调试', '192.168.1.115', '2012-02-01 10:54:41');
INSERT INTO `login_log_p` VALUES ('4FCF4A54-1C6D-4C79-BD28-BAA3E6D0726E', 'anonymous|杨丽', '192.168.1.106', '2012-03-29 15:56:52');
INSERT INTO `login_log_p` VALUES ('4FD63E18-812C-47E2-AFE0-EADC7B5C1E91', '001|调试', '192.168.1.110', '2012-01-17 12:01:34');
INSERT INTO `login_log_p` VALUES ('4FE246EE-CE00-4776-B5AB-BF47A357C8D7', 'anonymous|杜娟丽', '192.168.1.117', '2012-02-15 15:02:27');
INSERT INTO `login_log_p` VALUES ('4FEA45AE-194E-464E-9E3C-6BEB249C6747', '001|调试', '192.168.1.102', '2012-09-19 09:22:06');
INSERT INTO `login_log_p` VALUES ('4FF98B4D-DE53-49E4-8CC7-11592737786C', '001|调试', '127.0.0.1', '2011-09-25 20:28:54');
INSERT INTO `login_log_p` VALUES ('507036DE-CDE7-4A15-9494-BA0D61EE252E', 'anonymous|杜娟丽', '192.168.1.117', '2012-02-15 15:18:07');
INSERT INTO `login_log_p` VALUES ('50BEC893-656B-4BC5-B69F-3607A66A1556', '001|调试', '192.168.1.115', '2012-01-31 13:41:34');
INSERT INTO `login_log_p` VALUES ('511712BA-CF9F-4B7E-BB54-F13B93F62D4B', '001|调试', '127.0.0.1', '2011-08-27 18:44:01');
INSERT INTO `login_log_p` VALUES ('51B21BA7-8D3D-4BEA-A013-285CACEC849B', '001|调试', '192.168.1.109', '2012-11-23 15:30:40');
INSERT INTO `login_log_p` VALUES ('51EDCA13-9867-4069-8CEC-A6F7720014CC', '001|调试', '127.0.0.1', '2011-09-04 23:24:50');
INSERT INTO `login_log_p` VALUES ('52052599-3860-4A97-9185-882A472E75B4', '001|调试', '192.168.1.104', '2012-07-19 09:44:25');
INSERT INTO `login_log_p` VALUES ('522FA07B-7023-4ACA-8626-441890D4DBFC', '001|调试', '192.168.1.110', '2012-01-20 15:29:10');
INSERT INTO `login_log_p` VALUES ('52935FA1-D468-4D9A-916A-69B8447E7E15', '001|调试', '192.168.1.102', '2012-07-23 15:26:08');
INSERT INTO `login_log_p` VALUES ('52D8FD3D-4474-46F5-9BAF-2B6E9D090EB2', 'anonymous|', '192.168.1.109', '2012-08-14 09:14:38');
INSERT INTO `login_log_p` VALUES ('532C7503-FCE6-4D68-B214-D0FC043A87CA', '001|调试', '192.168.1.110', '2012-01-16 10:19:37');
INSERT INTO `login_log_p` VALUES ('536F5D9D-6912-4071-8AF1-F69532EC38D7', '001|调试', '192.168.198.1', '2011-09-24 09:10:13');
INSERT INTO `login_log_p` VALUES ('53BA3CD2-7765-472D-AF06-6D9678B1382D', '001|调试', '127.0.0.1', '2011-10-03 08:57:21');
INSERT INTO `login_log_p` VALUES ('546C540F-77A0-4ED1-B8BC-64E7647B450B', '001|调试', '192.168.1.103', '2011-10-18 11:13:39');
INSERT INTO `login_log_p` VALUES ('5499D513-DF04-4ABC-8C9E-0886E08B4A2F', '001|调试', '192.168.1.106', '2012-10-30 15:48:37');
INSERT INTO `login_log_p` VALUES ('55B7DB5A-B2C2-420E-9E9A-AE6F6A7582B2', '001|调试', '192.168.1.115', '2012-01-31 14:06:35');
INSERT INTO `login_log_p` VALUES ('55D80221-B4EB-4A62-9B5D-177E4BBFD71E', '001|调试', '127.0.0.1', '2011-08-20 00:30:15');
INSERT INTO `login_log_p` VALUES ('56573699-39DF-4E68-8C7B-35F789393A04', 'anonymous|席军', '192.168.1.103', '2011-12-05 11:57:14');
INSERT INTO `login_log_p` VALUES ('56692AAE-3546-460F-871B-09D1BE4A1C47', '001|调试', '192.168.1.103', '2011-10-18 11:11:29');
INSERT INTO `login_log_p` VALUES ('568E760C-6D8A-49E9-BDDA-49114B3AB0B8', '001|调试', '192.168.1.106', '2012-05-08 10:14:21');
INSERT INTO `login_log_p` VALUES ('5723BD5B-4C62-4377-A319-1E4A1BF5DE32', '001|调试', '127.0.0.1', '2013-03-07 22:36:53');
INSERT INTO `login_log_p` VALUES ('575BCE37-83AD-4144-B205-3BD62210542E', '001|调试', '192.168.1.110', '2012-02-09 09:05:39');
INSERT INTO `login_log_p` VALUES ('576045F8-5D5F-46CA-8460-9F4A9CBD67A1', '001|调试', '127.0.0.1', '2011-08-27 21:39:39');
INSERT INTO `login_log_p` VALUES ('57AC4C5F-9543-4036-90B8-6C907EB93EFF', '001|调试', '192.168.1.115', '2012-02-02 10:56:42');
INSERT INTO `login_log_p` VALUES ('57D8D2AB-02AE-43D3-A05C-3ED09991AA1E', '001|调试', '192.168.1.106', '2012-05-07 14:18:06');
INSERT INTO `login_log_p` VALUES ('57ECA128-2A4C-4434-B758-7B95EF2F8715', 'anonymous|杜娟丽', '192.168.1.103', '2012-09-14 14:49:17');
INSERT INTO `login_log_p` VALUES ('58641A3B-445D-44BA-8E54-C01E8C3B807A', 'anonymous|', '192.168.1.112', '2012-03-23 16:44:21');
INSERT INTO `login_log_p` VALUES ('58740EF0-5121-4807-8DC5-742A4C7E03F7', '001|调试', '127.0.0.1', '2011-08-29 23:04:38');
INSERT INTO `login_log_p` VALUES ('5885DC82-06E2-4799-B4C9-37B1D8234D79', '001|调试', '192.168.1.103', '2012-09-11 15:31:37');
INSERT INTO `login_log_p` VALUES ('58D90853-EDD2-4EB9-82D8-C58FF51EEDC9', '001|调试', '127.0.0.1', '2011-08-28 10:34:07');
INSERT INTO `login_log_p` VALUES ('59BFAAF4-D1E7-4903-9BAA-05A3515C075D', '001|调试', '192.168.1.102', '2011-09-24 10:19:58');
INSERT INTO `login_log_p` VALUES ('59EEEBC1-07D7-49C1-90A2-EA2DD1438CCF', 'anonymous|', '192.168.1.105', '2012-04-17 09:44:07');
INSERT INTO `login_log_p` VALUES ('59F83FF6-3887-46FB-A5D4-B8F4A646427B', 'anonymous|', '192.168.1.101', '2012-08-31 09:58:27');
INSERT INTO `login_log_p` VALUES ('5A9D62F4-618C-4195-AC9E-BFC6B07A266D', '001|调试', '127.0.0.1', '2011-08-28 21:35:54');
INSERT INTO `login_log_p` VALUES ('5AAE780B-C129-4B2B-9C82-825135AC2617', '001|调试', '192.168.1.103', '2012-10-19 13:31:17');
INSERT INTO `login_log_p` VALUES ('5AC30ABC-D217-474F-A183-B12AE32EA6F4', '001|调试', '127.0.0.1', '2011-10-07 17:26:08');
INSERT INTO `login_log_p` VALUES ('5C35B59D-138A-4004-B1CD-46004075AF7D', '001|调试', '192.168.1.103', '2012-10-19 09:29:10');
INSERT INTO `login_log_p` VALUES ('5C633327-8966-493F-B0C0-DD259FDF66FB', '001|调试', '192.168.1.114', '2012-05-17 11:05:19');
INSERT INTO `login_log_p` VALUES ('5C63543A-9CA7-447C-A406-96CD9EC7A14C', '001|调试', '127.0.0.1', '2011-10-05 00:05:40');
INSERT INTO `login_log_p` VALUES ('5C6F4C47-E9DE-4E63-AFA6-9D3FC94254DA', 'anonymous|田燕', '192.168.1.103', '2012-09-10 09:53:16');
INSERT INTO `login_log_p` VALUES ('5CA623D4-2520-4D6C-911E-706BDB8BB91B', '001|调试', '127.0.0.1', '2011-09-26 01:28:58');
INSERT INTO `login_log_p` VALUES ('5CBCE1AA-4470-4BC7-940D-30A27EAC4BE4', '001|调试', '192.168.1.112', '2012-05-21 09:52:25');
INSERT INTO `login_log_p` VALUES ('5CC8C4C3-D2BD-4D97-89A4-F58858534B6A', '001|调试', '192.168.1.106', '2012-05-05 09:33:44');
INSERT INTO `login_log_p` VALUES ('5CD97648-C89A-4626-87AF-FB98E5A8FFB8', 'anonymous|杜娟丽', '192.168.1.117', '2012-02-16 09:40:03');
INSERT INTO `login_log_p` VALUES ('5DA297A1-2F72-4898-98B6-CFC0E45734FF', '001|调试', '127.0.0.1', '2011-09-14 22:08:53');
INSERT INTO `login_log_p` VALUES ('5DBBE7B5-3712-4566-83EC-73E31BE4DA3F', '001|调试', '127.0.0.1', '2011-08-27 22:44:19');
INSERT INTO `login_log_p` VALUES ('5DF01839-9A88-4C55-911C-F31B74CB66DE', '001|调试', '127.0.0.1', '2011-10-01 20:52:04');
INSERT INTO `login_log_p` VALUES ('5E79F544-4613-4202-882C-A4643D8576F4', '001|调试', '127.0.0.1', '2011-08-28 14:21:04');
INSERT INTO `login_log_p` VALUES ('5FC5091C-9B41-4B2D-AE02-FA34E25CB6CC', '001|调试', '192.168.1.115', '2012-02-02 11:42:50');
INSERT INTO `login_log_p` VALUES ('5FF1CD33-99C7-443F-9FB6-68419532CF07', '001|调试', '192.168.1.104', '2012-11-02 09:33:42');
INSERT INTO `login_log_p` VALUES ('6013B555-4961-4E8D-9D53-71EAB8F58768', '001|调试', '192.168.1.115', '2012-01-31 11:00:26');
INSERT INTO `login_log_p` VALUES ('6041D286-9F10-479A-83FE-014996C2DA72', '001|调试', '127.0.0.1', '2011-09-21 22:15:01');
INSERT INTO `login_log_p` VALUES ('607E3C00-84EC-4CDC-B144-1D5B9AEE0CD0', '001|调试', '127.0.0.1', '2011-10-07 01:48:28');
INSERT INTO `login_log_p` VALUES ('609A1D93-F539-48F1-90CE-201C78D06D2D', 'anonymous|杜娟丽', '192.168.1.103', '2012-09-14 16:29:33');
INSERT INTO `login_log_p` VALUES ('60DA5D79-9FB9-4398-9B9F-8A280A0073D3', '001|调试', '192.168.1.103', '2012-09-11 15:08:40');
INSERT INTO `login_log_p` VALUES ('61081B70-8FC4-4824-9EF1-F454BC7B3F97', '001|调试', '127.0.0.1', '2011-09-18 12:10:12');
INSERT INTO `login_log_p` VALUES ('613D6342-0792-4492-8E2D-50A43A14ED84', '001|调试', '192.168.1.103', '2011-12-02 09:19:00');
INSERT INTO `login_log_p` VALUES ('615A38E7-A667-4D3C-AF50-C82908949C21', '001|调试', '192.168.1.103', '2012-01-20 15:35:52');
INSERT INTO `login_log_p` VALUES ('61903231-076A-48F4-BFA7-1C8A6B2C104D', 'anonymous|', '192.168.1.111', '2012-09-06 14:39:38');
INSERT INTO `login_log_p` VALUES ('61BA34BF-A5D1-484C-859B-9A2D569404D1', '001|调试', '192.168.1.103', '2011-10-18 10:05:29');
INSERT INTO `login_log_p` VALUES ('61CD9F26-F01A-4711-A0EC-705E949F1B6E', '001|调试', '192.168.1.103', '2012-10-19 11:00:12');
INSERT INTO `login_log_p` VALUES ('61D75EE0-8B8B-438B-B450-9F6AF64504EC', '001|调试', '192.168.1.115', '2012-02-01 12:07:22');
INSERT INTO `login_log_p` VALUES ('61DD5FC3-7AE6-4194-B319-82A61D15C500', '001|调试', '127.0.0.1', '2013-03-07 22:38:27');
INSERT INTO `login_log_p` VALUES ('624D7D86-AD8D-4614-B49D-D08B551532B5', '001|调试', '127.0.0.1', '2011-10-04 09:12:28');
INSERT INTO `login_log_p` VALUES ('6264E92F-6845-47E2-8778-8497E162FEF4', '001|调试', '127.0.0.1', '2011-09-26 22:46:44');
INSERT INTO `login_log_p` VALUES ('630051EF-E94F-4F0E-8D44-FADD7E38A69F', '001|调试', '192.168.1.106', '2012-05-07 09:58:33');
INSERT INTO `login_log_p` VALUES ('63B692CC-DA2B-4F00-A787-4F0F9E05F7C8', 'anonymous|', '127.0.0.1', '2013-03-07 16:55:11');
INSERT INTO `login_log_p` VALUES ('63F5A562-33E2-4210-9055-CEAC483C9221', '001|调试', '127.0.0.1', '2011-09-18 10:12:55');
INSERT INTO `login_log_p` VALUES ('645A112F-922C-4702-A10A-6F4068DA9CF0', '001|调试', '192.168.1.103', '2012-01-20 16:02:23');
INSERT INTO `login_log_p` VALUES ('6466D93F-4100-41A7-8D6D-09A9A369D48A', '001|调试', '127.0.0.1', '2011-10-02 10:49:40');
INSERT INTO `login_log_p` VALUES ('64D7F1D4-1CA1-4841-8A61-6D3DAEE1F68B', 'anonymous|席军', '192.168.1.103', '2011-12-05 11:21:19');
INSERT INTO `login_log_p` VALUES ('64EBB200-B13B-4439-A797-893BDD810CF8', '001|调试', '192.168.1.110', '2012-01-17 12:03:11');
INSERT INTO `login_log_p` VALUES ('64F5E932-0467-4573-A80A-4A7B2176DB98', 'anonymous|', '192.168.1.109', '2012-08-14 09:54:21');
INSERT INTO `login_log_p` VALUES ('6541C6A9-3D52-4D21-A0B5-E18F6C92F093', '001|调试', '127.0.0.1', '2011-09-06 18:56:05');
INSERT INTO `login_log_p` VALUES ('6561A4F4-8A6D-4AFE-86F0-F75A03B93F82', '001|调试', '192.168.1.100', '2012-07-11 08:56:55');
INSERT INTO `login_log_p` VALUES ('656DA3B4-F6D4-4C4D-9D35-10F8AC566F09', 'anonymous|', '192.168.1.103', '2012-05-17 09:48:37');
INSERT INTO `login_log_p` VALUES ('6578B984-3E57-42C7-9A93-7587DDE4B7A0', '001|调试', '127.0.0.1', '2011-08-21 21:02:31');
INSERT INTO `login_log_p` VALUES ('6587E26F-9140-48C0-9E42-6887077E9127', '001|调试', '127.0.0.1', '2011-08-21 22:53:03');
INSERT INTO `login_log_p` VALUES ('65BF6993-0A22-4749-8DF8-DC5213617402', '001|调试', '192.168.1.110', '2012-02-27 10:42:49');
INSERT INTO `login_log_p` VALUES ('660355DB-EBF7-43F7-BB81-148DD90ECE74', '001|调试', '127.0.0.1', '2011-09-23 00:04:08');
INSERT INTO `login_log_p` VALUES ('6654EB66-FDA4-4826-8466-D43D55B86252', '001|调试', '127.0.0.1', '2011-10-07 00:43:59');
INSERT INTO `login_log_p` VALUES ('66610C09-B85C-4FBF-9F42-70B7E51C2AAC', '001|调试', '192.168.1.106', '2012-10-30 15:05:50');
INSERT INTO `login_log_p` VALUES ('66C9121B-8AF7-412D-A93D-264AC05E8587', 'anonymous|杜娟丽', '192.168.1.103', '2012-09-14 16:44:29');
INSERT INTO `login_log_p` VALUES ('66DA4ABB-F2D8-44AE-A17F-75FE83A6A995', 'anonymous|', '192.168.1.111', '2012-09-06 09:40:32');
INSERT INTO `login_log_p` VALUES ('66EC12B6-3172-4A14-8FF4-90C38D43E2BC', '001|调试', '192.168.1.102', '2011-09-24 09:29:51');
INSERT INTO `login_log_p` VALUES ('672DE03E-8C16-4B91-8CF0-C8F1E21B492B', '001|调试', '192.168.1.103', '2012-01-20 15:56:48');
INSERT INTO `login_log_p` VALUES ('678FAFC5-BA38-4DF3-940A-591DF6871386', '001|调试', '127.0.0.1', '2011-08-27 12:19:06');
INSERT INTO `login_log_p` VALUES ('67F7FD53-B17C-44A6-8C3D-1BD1F6A7DC02', '001|调试', '192.168.1.106', '2012-05-05 09:57:31');
INSERT INTO `login_log_p` VALUES ('68777177-3A21-414E-A9E9-9F3514A77201', 'anonymous|', '192.168.1.107', '2012-11-08 13:38:36');
INSERT INTO `login_log_p` VALUES ('689A693A-949A-4DB9-A733-4AF6B84D4FA1', 'anonymous|杨丽', '192.168.1.105', '2011-11-04 16:06:38');
INSERT INTO `login_log_p` VALUES ('697F43C8-4E9C-48CD-939E-20A085BD2849', 'anonymous|田燕', '192.168.1.110', '2012-10-29 13:27:10');
INSERT INTO `login_log_p` VALUES ('69B4E1BB-E3F9-441A-96CB-9D50EA5BCE14', 'anonymous|', '192.168.1.112', '2012-06-01 15:16:10');
INSERT INTO `login_log_p` VALUES ('69D91A7B-D65A-4A4D-8A74-7DFA84041944', '001|调试', '192.168.1.106', '2012-05-05 10:51:54');
INSERT INTO `login_log_p` VALUES ('69FDABE8-D5E1-4791-A7E4-DBCBB63014A6', 'anonymous|', '192.168.1.105', '2012-10-11 09:09:10');
INSERT INTO `login_log_p` VALUES ('6AA0150E-7B36-4BB4-9D80-9DBF98DECD3C', '001|调试', '127.0.0.1', '2011-08-21 19:20:41');
INSERT INTO `login_log_p` VALUES ('6ACB1B36-7DCF-4F0C-BCAF-3D7AD5CD017A', '001|调试', '192.168.1.103', '2011-10-18 10:20:52');
INSERT INTO `login_log_p` VALUES ('6AFC293D-97E3-4477-9D5D-7A5AB7407975', '001|调试', '127.0.0.1', '2011-08-27 11:09:17');
INSERT INTO `login_log_p` VALUES ('6B5AEA20-47A0-4968-89FB-BE8C7BB7F0FD', 'anonymous|', '192.168.1.107', '2012-11-08 10:49:16');
INSERT INTO `login_log_p` VALUES ('6B686828-F3C5-4088-9B79-C95C2957D838', '001|调试', '192.168.1.104', '2012-06-19 10:31:41');
INSERT INTO `login_log_p` VALUES ('6BD87552-B5AE-4534-9D72-03F755BC6BE5', 'anonymous|张玉杰', '192.168.1.105', '2012-07-26 10:17:36');
INSERT INTO `login_log_p` VALUES ('6C16E450-D136-40B3-9FE4-3B3DE9225212', 'anonymous|', '192.168.1.111', '2012-09-06 09:33:43');
INSERT INTO `login_log_p` VALUES ('6C1E94AC-FA73-4DD2-85FF-A48812A47AC4', '001|调试', '192.168.1.115', '2012-02-03 11:59:46');
INSERT INTO `login_log_p` VALUES ('6C20D4FB-082B-4DEC-BFD9-7ACE6F1E33B7', '001|调试', '127.0.0.1', '2011-08-24 23:49:58');
INSERT INTO `login_log_p` VALUES ('6CCB907D-077F-4D81-B59C-65E3EAFA842E', '001|调试', '192.168.1.110', '2012-02-09 09:05:38');
INSERT INTO `login_log_p` VALUES ('6DDBB58B-387E-4CDA-AE3A-E222361FB936', '001|调试', '127.0.0.1', '2011-10-01 21:32:29');
INSERT INTO `login_log_p` VALUES ('6E3BCBB0-67B6-4824-9075-A1FFFF65900F', 'anonymous|杜娟丽', '192.168.1.103', '2012-09-14 14:31:13');
INSERT INTO `login_log_p` VALUES ('6E462F19-FA41-40F2-9E91-B945844A5905', '001|调试', '192.168.1.103', '2011-11-26 13:04:30');
INSERT INTO `login_log_p` VALUES ('6E5D04F5-639A-47B5-A334-9EA8DB062AA9', '001|调试', '192.168.1.103', '2012-10-19 09:54:05');
INSERT INTO `login_log_p` VALUES ('6E5F2E29-C381-4A51-BECB-E6E1F4D7116B', '001|调试', '192.168.1.115', '2012-02-03 15:26:42');
INSERT INTO `login_log_p` VALUES ('6EDC61D1-3CB6-4797-B554-7DBEE73F7D8C', '001|调试', '127.0.0.1', '2011-10-01 21:39:43');
INSERT INTO `login_log_p` VALUES ('6F412804-71E0-47A6-A77D-E2757762B3AA', '001|调试', '192.168.1.106', '2012-10-29 16:20:54');
INSERT INTO `login_log_p` VALUES ('6F7F02A4-2754-4B26-A992-3B1ACB64433F', '001|调试', '192.168.1.115', '2012-01-31 14:13:45');
INSERT INTO `login_log_p` VALUES ('70089D1E-2431-4A6A-9FAC-238B2A9C14F0', '001|调试', '192.168.1.115', '2012-02-03 12:03:52');
INSERT INTO `login_log_p` VALUES ('7030FF57-2438-46AE-81C4-058D41843C52', 'anonymous|杨丽', '192.168.1.105', '2011-11-04 16:42:24');
INSERT INTO `login_log_p` VALUES ('703411C9-B9F5-4AD9-AC90-D9ACB2EC9961', '001|调试', '192.168.1.102', '2011-09-24 10:07:22');
INSERT INTO `login_log_p` VALUES ('7038B59B-47A7-4BFE-A73A-8CEDD80A7E47', 'anonymous|', '192.168.1.112', '2012-07-26 08:45:53');
INSERT INTO `login_log_p` VALUES ('70F0375A-70E4-479F-80BE-EDA659110E82', '001|调试', '127.0.0.1', '2011-08-21 22:42:40');
INSERT INTO `login_log_p` VALUES ('71371376-EDCE-4770-A54E-D707CFA0D68D', '001|调试', '192.168.1.103', '2012-09-11 15:24:52');
INSERT INTO `login_log_p` VALUES ('714F0BD4-93E4-40C5-93F6-4FF0743B46B4', '001|调试', '192.168.1.103', '2012-10-18 16:36:31');
INSERT INTO `login_log_p` VALUES ('7183200A-83F8-46E8-BDE8-3B9E50951D1E', '001|调试', '192.168.1.103', '2012-09-11 16:07:20');
INSERT INTO `login_log_p` VALUES ('71B09C34-E1BA-4121-BBEF-74D8060DA784', '001|调试', '192.168.1.110', '2012-02-09 09:06:07');
INSERT INTO `login_log_p` VALUES ('7218126D-5946-4DD1-9D67-631481E23260', '001|调试', '127.0.0.1', '2011-08-19 23:33:01');
INSERT INTO `login_log_p` VALUES ('723C1E52-C98C-4785-8BE3-6EC48BD13AAD', '001|调试', '127.0.0.1', '2011-10-01 21:32:51');
INSERT INTO `login_log_p` VALUES ('725B2CA4-92CC-4580-9DD1-47C032AC5E35', 'anonymous|席军', '192.168.1.103', '2011-12-05 11:11:56');
INSERT INTO `login_log_p` VALUES ('7307C7A0-7BD3-4A74-97C1-A9A9C4FCB3E5', '001|调试', '192.168.1.110', '2012-01-20 15:15:01');
INSERT INTO `login_log_p` VALUES ('73096BA8-36EE-4E46-BE44-AC4F562E03FE', '001|调试', '127.0.0.1', '2011-10-01 22:47:49');
INSERT INTO `login_log_p` VALUES ('73271092-2068-4D97-A5E5-D5C99DB94CD9', 'anonymous|杜娟丽', '192.168.1.107', '2012-10-31 11:44:54');
INSERT INTO `login_log_p` VALUES ('73343453-D636-4696-93A3-F824FD7BA714', '001|调试', '192.168.1.110', '2012-02-16 15:57:15');
INSERT INTO `login_log_p` VALUES ('738B23BA-20D9-4AF0-88F6-25963CDDE2A5', '001|调试', '127.0.0.1', '2011-08-24 23:59:25');
INSERT INTO `login_log_p` VALUES ('7529AFE3-8576-4B52-AB4E-EF59EB3FCF2D', '001|调试', '127.0.0.1', '2011-08-28 03:12:30');
INSERT INTO `login_log_p` VALUES ('76115389-6984-4894-8894-9DF55F526CE5', 'anonymous|张玉杰', '192.168.1.105', '2011-11-14 08:31:07');
INSERT INTO `login_log_p` VALUES ('7621C3A1-4987-49D4-81AA-79B5F221F266', '001|调试', '127.0.0.1', '2011-09-06 19:28:37');
INSERT INTO `login_log_p` VALUES ('7627E19C-099E-454C-A829-8CC544A0DB17', '001|调试', '192.168.1.102', '2011-09-24 10:19:58');
INSERT INTO `login_log_p` VALUES ('76334485-C09B-4D8F-B7DC-00522E7FD9A1', '001|调试', '127.0.0.1', '2011-10-01 21:43:23');
INSERT INTO `login_log_p` VALUES ('76473DDE-4313-4CCB-9BE7-ACCF40ECE6CB', 'anonymous|杜娟丽', '192.168.1.103', '2012-09-14 16:33:26');
INSERT INTO `login_log_p` VALUES ('764BA857-8176-46BC-85FD-E6ACDFA28FDA', '001|调试', '127.0.0.1', '2011-08-28 14:54:36');
INSERT INTO `login_log_p` VALUES ('765B0F25-5110-47EA-907F-CA6A6A62AEFF', '001|调试', '192.168.1.103', '2011-10-18 10:09:31');
INSERT INTO `login_log_p` VALUES ('7673601A-98FD-44ED-88D8-82D7CBF8A462', '001|调试', '192.168.1.102', '2012-09-19 10:56:37');
INSERT INTO `login_log_p` VALUES ('76A6AEB1-F1B4-4540-8202-ED4847568173', 'anonymous|演示', '127.0.0.1', '2013-03-07 16:53:11');
INSERT INTO `login_log_p` VALUES ('76BB29AE-2AA5-4A86-A1FB-9FA41D04B07B', '001|调试', '127.0.0.1', '2011-10-06 12:17:43');
INSERT INTO `login_log_p` VALUES ('77B6BE18-95EE-4A7E-8A2B-4F7802F3318D', '001|调试', '127.0.0.1', '2011-10-06 23:51:34');
INSERT INTO `login_log_p` VALUES ('77E4F2F2-054F-449A-AEF4-8AC75B4E9C4C', '001|调试', '127.0.0.1', '2011-10-04 10:50:59');
INSERT INTO `login_log_p` VALUES ('78570D44-ADE1-4682-858E-79FE83FD9C9C', '001|调试', '127.0.0.1', '2011-10-01 21:32:29');
INSERT INTO `login_log_p` VALUES ('786D2521-DC0E-4814-A1B6-4DA95CF1E1F5', '001|调试', '127.0.0.1', '2011-09-04 21:59:53');
INSERT INTO `login_log_p` VALUES ('787924A2-A9F5-4EAD-B4B1-328385534CB0', 'anonymous|杜娟丽', '192.168.1.117', '2012-02-15 14:43:34');
INSERT INTO `login_log_p` VALUES ('787E49CC-AC35-4C65-AA29-C9D85399A27C', 'anonymous|', '192.168.1.100', '2012-06-27 09:39:22');
INSERT INTO `login_log_p` VALUES ('78EBACC7-310B-4DB4-AE1D-95495659D7A9', '001|调试', '127.0.0.1', '2011-10-07 01:00:31');
INSERT INTO `login_log_p` VALUES ('78F83E52-00E8-47F8-9AE9-5FD7718A96F1', '001|调试', '127.0.0.1', '2011-10-06 16:57:15');
INSERT INTO `login_log_p` VALUES ('792A8547-6227-4613-A3A0-CD14F1E57272', '001|调试', '192.168.1.110', '2012-02-16 16:05:14');
INSERT INTO `login_log_p` VALUES ('798F1D28-73DC-4E77-9D42-6C413D9E9CD4', 'anonymous|', '192.168.1.112', '2012-05-02 15:11:16');
INSERT INTO `login_log_p` VALUES ('79A23823-00BF-48BD-8C16-24A73725DD0B', '001|调试', '192.168.1.102', '2011-09-24 10:31:15');
INSERT INTO `login_log_p` VALUES ('7A174D92-0094-4A81-9B3D-EE63701F458E', '001|调试', '127.0.0.1', '2011-08-27 14:36:31');
INSERT INTO `login_log_p` VALUES ('7A1B2D43-DB18-49C6-80E1-FF4E96717111', '001|调试', '192.168.1.103', '2012-10-18 17:26:10');
INSERT INTO `login_log_p` VALUES ('7A8F7602-DC8D-498F-A01E-2F122590A81B', '001|调试', '192.168.1.112', '2012-05-21 08:53:32');
INSERT INTO `login_log_p` VALUES ('7AB8EE8E-53AF-44BD-AECE-52F8DC5ACCC8', '001|调试', '127.0.0.1', '2011-10-01 21:32:29');
INSERT INTO `login_log_p` VALUES ('7B4A3A67-A5C2-4654-ACEE-A8A8F59E2D82', '001|调试', '127.0.0.1', '2011-09-28 23:46:34');
INSERT INTO `login_log_p` VALUES ('7B99B26E-4BAF-4580-821D-5B89497EEAB1', 'anonymous|田燕', '192.168.1.110', '2012-10-29 14:23:41');
INSERT INTO `login_log_p` VALUES ('7BDCB745-3D72-4B1C-8DD7-79029409F5DB', 'anonymous|', '127.0.0.1', '2012-11-27 11:15:12');
INSERT INTO `login_log_p` VALUES ('7BEC04B3-9A25-4701-BCE3-85C9257B3BC7', '001|调试', '192.168.1.106', '2012-05-07 17:46:46');
INSERT INTO `login_log_p` VALUES ('7BF8F82F-39D5-4778-AF36-1AD03ECF40F3', 'anonymous|', '192.168.1.104', '2011-10-31 08:26:55');
INSERT INTO `login_log_p` VALUES ('7C0ECEE7-E6DC-4519-BCF2-6699908A27F9', '001|调试', '192.168.1.110', '2012-03-01 09:30:03');
INSERT INTO `login_log_p` VALUES ('7C1DC756-9D0B-4167-8018-35BB1750E36D', '001|调试', '127.0.0.1', '2013-03-09 23:00:20');
INSERT INTO `login_log_p` VALUES ('7C4318B1-F823-487F-884F-5A0177373468', '001|调试', '192.168.1.104', '2012-07-19 09:13:47');
INSERT INTO `login_log_p` VALUES ('7CABA1A9-9162-4BA0-A156-391B956390C8', 'anonymous|', '127.0.0.1', '2012-11-27 11:06:36');
INSERT INTO `login_log_p` VALUES ('7CD0BFB0-E729-488D-8BFF-C07083A48E0C', '001|调试', '127.0.0.1', '2011-08-27 13:56:43');
INSERT INTO `login_log_p` VALUES ('7D1ABAA3-A3AF-4912-BA49-4C96FED2717D', '001|调试', '192.168.1.115', '2012-02-01 12:29:41');
INSERT INTO `login_log_p` VALUES ('7D469830-1A3F-4FA7-BA38-8C4930620890', 'anonymous|席军', '192.168.1.103', '2011-12-02 17:14:05');
INSERT INTO `login_log_p` VALUES ('7D6B5A00-CCB6-4FB2-BE15-6DE3CC971AFF', 'anonymous|', '192.168.1.250', '2012-07-11 16:11:23');
INSERT INTO `login_log_p` VALUES ('7D8405FF-4F4C-4D2F-A9CD-53C551A777AD', '001|调试', '192.168.1.106', '2012-05-07 14:17:50');
INSERT INTO `login_log_p` VALUES ('7D8CB188-B0EB-420B-8D60-2128EA7A58BC', 'anonymous|', '192.168.1.112', '2012-03-23 15:50:51');
INSERT INTO `login_log_p` VALUES ('7D990CB4-0573-408D-BD66-BA6BDD29AD1A', '001|调试', '127.0.0.1', '2011-12-02 09:12:54');
INSERT INTO `login_log_p` VALUES ('7DC86574-6C83-4492-943E-53F16B75348C', '001|调试', '192.168.1.112', '2012-05-17 11:24:25');
INSERT INTO `login_log_p` VALUES ('7E0661F2-2D8A-4B41-9CEC-E23F8796C991', '001|调试', '192.168.1.103', '2012-10-18 13:07:09');
INSERT INTO `login_log_p` VALUES ('7E275BE4-4BBF-4D4C-971F-BC189360F6AC', '001|调试', '192.168.1.102', '2012-07-23 15:21:23');
INSERT INTO `login_log_p` VALUES ('7E3CF735-53E8-4AEA-BD58-C51D837F9A6E', '001|调试', '192.168.1.109', '2012-11-23 15:07:50');
INSERT INTO `login_log_p` VALUES ('7E4A0DD4-B453-432F-8BF5-2E5DE1EE6D79', '001|调试', '192.168.1.110', '2012-01-20 11:40:41');
INSERT INTO `login_log_p` VALUES ('7E522A3B-D629-40DC-A956-72CD4227315D', '001|调试', '192.168.1.115', '2012-01-31 13:54:50');
INSERT INTO `login_log_p` VALUES ('7EAFB091-B107-4D6B-BBB0-F6C7CC23AE88', '001|调试', '192.168.1.110', '2012-01-17 11:02:49');
INSERT INTO `login_log_p` VALUES ('7ED8F53E-F653-4D11-B03B-4F7880C21E58', 'anonymous|', '192.168.1.117', '2012-02-16 15:38:36');
INSERT INTO `login_log_p` VALUES ('7F13C191-A62E-47A6-A486-743E116140AE', '001|调试', '127.0.0.1', '2011-10-04 09:15:30');
INSERT INTO `login_log_p` VALUES ('7F29EB50-EED6-4FDE-9494-D88FA128AB8A', '001|调试', '192.168.1.102', '2011-09-24 10:28:08');
INSERT INTO `login_log_p` VALUES ('7F36645E-442E-4759-9BAF-15987E85269A', '001|调试', '192.168.1.114', '2012-05-17 11:16:33');
INSERT INTO `login_log_p` VALUES ('7F843B76-EA7A-4A7A-9904-87E4F0CE0681', '001|调试', '127.0.0.1', '2011-08-22 22:11:00');
INSERT INTO `login_log_p` VALUES ('7F9547B3-CD33-4213-B8BA-BC28ACE3966B', '001|调试', '192.168.1.104', '2012-11-02 09:33:43');
INSERT INTO `login_log_p` VALUES ('7FD56AF6-EA56-4414-A2FE-A256A2ECF572', 'anonymous|杜娟丽', '192.168.1.117', '2012-02-15 16:57:28');
INSERT INTO `login_log_p` VALUES ('8068858A-511D-4318-B7EE-F48913148F91', '001|调试', '127.0.0.1', '2011-08-27 21:53:22');
INSERT INTO `login_log_p` VALUES ('806D710C-A7AB-440A-8A53-E6FCD5A56D44', '001|调试', '192.168.1.104', '2012-11-02 09:33:42');
INSERT INTO `login_log_p` VALUES ('8089FF5F-F53C-40D9-AD10-9D00158F41FC', '001|调试', '127.0.0.1', '2011-10-01 20:16:36');
INSERT INTO `login_log_p` VALUES ('8139B9CA-4992-48AF-8B3B-FF766A346895', '001|调试', '127.0.0.1', '2011-09-25 22:09:28');
INSERT INTO `login_log_p` VALUES ('8140B398-1FC6-415A-9445-3EF6ADFF0705', '001|调试', '127.0.0.1', '2011-10-06 17:42:37');
INSERT INTO `login_log_p` VALUES ('8234FA2F-3C90-4BCD-B3F2-91F4F2613341', 'anonymous|席军', '192.168.1.103', '2011-12-02 17:01:20');
INSERT INTO `login_log_p` VALUES ('824DBCD8-CD46-4429-B3E8-0C6F05F252DC', '001|调试', '127.0.0.1', '2011-09-25 14:13:08');
INSERT INTO `login_log_p` VALUES ('82D11904-5801-411F-AA5D-A5D33D384206', '001|调试', '192.168.1.115', '2012-02-03 11:59:00');
INSERT INTO `login_log_p` VALUES ('8321F83A-B621-4ADD-BE08-3A226E273A0A', '001|调试', '192.168.1.102', '2012-09-19 10:42:24');
INSERT INTO `login_log_p` VALUES ('83AA147C-CC54-4B5E-B81E-B1E9121FA7E9', 'show|演示|演示', '127.0.0.1', '2013-03-07 16:52:59');
INSERT INTO `login_log_p` VALUES ('83E1C4A9-92A1-4C1A-BA38-FBB0A974368A', '001|调试', '192.168.1.103', '2011-12-02 09:14:34');
INSERT INTO `login_log_p` VALUES ('84745B5D-1CD4-493D-AA9D-809300035202', '001|调试', '192.168.1.114', '2012-05-17 11:22:47');
INSERT INTO `login_log_p` VALUES ('8489A6BD-A10D-4B06-B234-92AC2BAB042D', '001|调试', '192.168.1.100', '2012-07-19 10:15:22');
INSERT INTO `login_log_p` VALUES ('84D89992-4401-46D5-A08D-9D9EF06D5375', '001|调试', '192.168.1.115', '2012-01-29 13:30:40');
INSERT INTO `login_log_p` VALUES ('8597181E-5261-4475-AAE7-53051C6D1868', '001|调试', '192.168.1.104', '2012-11-02 14:25:02');
INSERT INTO `login_log_p` VALUES ('85BAD8BC-D7C3-441E-8125-BD94D5941411', '001|调试', '127.0.0.1', '2011-09-04 23:13:03');
INSERT INTO `login_log_p` VALUES ('85FDB439-9D97-4FCD-960C-5F703B778A0F', 'anonymous|杜娟丽', '192.168.1.117', '2012-02-15 17:38:04');
INSERT INTO `login_log_p` VALUES ('864E0E18-8C52-4862-910B-30617821BC26', 'anonymous|', '192.168.1.107', '2012-11-08 09:12:07');
INSERT INTO `login_log_p` VALUES ('86645B76-31DC-4127-9E81-A8888BDFB7E3', '001|调试', '192.168.1.115', '2012-02-02 17:54:42');
INSERT INTO `login_log_p` VALUES ('8691E620-3EF6-46BB-9307-7AC91DA8BECB', '001|调试', '192.168.1.103', '2012-10-18 10:37:38');
INSERT INTO `login_log_p` VALUES ('86A81D0A-C35D-4BD2-A44F-8AAF616AA51A', '001|调试', '192.168.1.103', '2012-10-18 16:38:03');
INSERT INTO `login_log_p` VALUES ('8707775C-F6B0-4333-A69A-3F6BEEF38FB6', '001|调试', '192.168.1.115', '2012-01-31 10:15:25');
INSERT INTO `login_log_p` VALUES ('8708B0BC-E480-45EB-8B9E-6CFC49A17993', '001|调试', '127.0.0.1', '2013-03-09 23:30:31');
INSERT INTO `login_log_p` VALUES ('87164801-5025-4649-AF5F-0002A986A62F', 'anonymous|杜娟丽', '192.168.1.103', '2012-09-14 11:07:47');
INSERT INTO `login_log_p` VALUES ('872D9620-1D28-4F5F-9EE2-53BA63DA86CC', '001|调试', '127.0.0.1', '2011-09-25 23:32:33');
INSERT INTO `login_log_p` VALUES ('8767CE02-E28F-4A75-ADBE-6B352C9D0DA7', 'anonymous|杨丽', '192.168.1.105', '2011-11-04 16:06:47');
INSERT INTO `login_log_p` VALUES ('8776C25A-3C6B-4296-82AA-990FEFCE8293', '001|调试', '127.0.0.1', '2011-09-18 09:56:03');
INSERT INTO `login_log_p` VALUES ('881A37F0-E967-449F-9407-CD5D38FA1B48', '001|调试', '127.0.0.1', '2013-02-22 13:33:44');
INSERT INTO `login_log_p` VALUES ('881B9408-2E79-4283-A8B9-906C89FF20D1', '001|调试', '192.168.1.102', '2012-09-19 10:26:04');
INSERT INTO `login_log_p` VALUES ('88264BA3-0EE9-4437-AFF4-3D64E876E9DD', '001|调试', '192.168.1.250', '2011-10-31 08:11:13');
INSERT INTO `login_log_p` VALUES ('88383C22-5248-4262-989F-2FB661F78CF6', '001|调试', '127.0.0.1', '2011-08-21 18:40:34');
INSERT INTO `login_log_p` VALUES ('8851E361-91BA-4D5B-A9F4-A09A99F4F8D1', '001|调试', '127.0.0.1', '2011-10-07 17:14:46');
INSERT INTO `login_log_p` VALUES ('88851342-56D5-43D1-9BB3-BADEFD24B15F', '001|调试', '192.168.1.110', '2012-01-16 16:50:43');
INSERT INTO `login_log_p` VALUES ('896B0DF7-C9A8-4055-B88A-FD69AC2ADE62', '001|调试', '127.0.0.1', '2011-08-21 22:13:42');
INSERT INTO `login_log_p` VALUES ('89CE1CE3-9FC0-48B8-B6A9-20BA775077EA', '001|调试', '192.168.1.114', '2012-03-31 17:44:55');
INSERT INTO `login_log_p` VALUES ('89E1BF6A-7822-4609-8364-8EBA0B3D1C4F', 'anonymous|', '192.168.1.112', '2012-07-26 09:08:09');
INSERT INTO `login_log_p` VALUES ('89F1085C-2251-490D-A6FC-32F873ED814D', '001|调试', '127.0.0.1', '2011-11-26 11:39:17');
INSERT INTO `login_log_p` VALUES ('8A19B9A0-AE8D-4EF8-A260-FBBE63810C64', '001|调试', '192.168.1.110', '2012-02-16 16:06:12');
INSERT INTO `login_log_p` VALUES ('8A4F4A62-25C1-40C7-B82B-786FEB8982C6', 'anonymous|', '192.168.1.109', '2012-08-14 09:16:16');
INSERT INTO `login_log_p` VALUES ('8A8DBA9B-4D05-4415-A5D6-579698FEA5CA', 'anonymous|', '192.168.1.111', '2012-09-06 11:49:17');
INSERT INTO `login_log_p` VALUES ('8AF6923E-D6A6-436C-9D83-F47F5C5F5048', '001|调试', '127.0.0.1', '2011-09-04 10:47:12');
INSERT INTO `login_log_p` VALUES ('8B2E349B-FF31-41B6-8035-687EA3F3F60F', '001|调试', '192.168.1.103', '2012-10-18 16:37:27');
INSERT INTO `login_log_p` VALUES ('8B4EF89A-B85E-4C28-8A65-992A5D08EE7C', '001|调试', '192.168.1.105', '2011-09-24 10:50:53');
INSERT INTO `login_log_p` VALUES ('8B5D3124-AD4E-450F-A31E-A3F6D693999F', 'anonymous|', '192.168.1.112', '2012-06-01 10:05:00');
INSERT INTO `login_log_p` VALUES ('8BB0A4E1-9800-4EB1-B461-F9CF4299D049', '001|调试', '192.168.1.103', '2012-09-11 15:41:21');
INSERT INTO `login_log_p` VALUES ('8C176BC8-310C-4E53-82BC-04E38DC2CF9D', '001|调试', '192.168.1.104', '2012-06-19 16:25:32');
INSERT INTO `login_log_p` VALUES ('8C2070CB-FC09-4AFC-BB74-6DABEAA9384F', '001|调试', '192.168.1.110', '2012-01-13 16:41:56');
INSERT INTO `login_log_p` VALUES ('8C42C4C6-CB28-456B-A637-7F4FE690BCE5', '001|调试', '192.168.1.104', '2012-11-02 10:07:03');
INSERT INTO `login_log_p` VALUES ('8C47AC08-90AB-46E2-9029-3DC0FE485AE0', '001|调试', '192.168.1.103', '2012-09-11 09:51:45');
INSERT INTO `login_log_p` VALUES ('8C7FBEAB-803C-472D-B274-E89816D1DEF1', '001|调试', '192.168.1.115', '2012-01-31 10:13:44');
INSERT INTO `login_log_p` VALUES ('8CE2FD72-C1B0-4DE5-A006-77EA692087FF', '001|调试', '192.168.1.106', '2012-05-05 10:05:10');
INSERT INTO `login_log_p` VALUES ('8D16E3C2-1B7A-44E1-AF3C-1BA5C1090B6D', '001|调试', '192.168.1.110', '2012-01-17 11:36:33');
INSERT INTO `login_log_p` VALUES ('8D6677A3-F51D-4EFF-8BB7-CA4EE76E8174', '001|调试', '192.168.1.109', '2012-11-23 15:32:58');
INSERT INTO `login_log_p` VALUES ('8D7AF39F-453B-42AE-8079-43F44914869A', 'anonymous|杜娟丽', '192.168.1.103', '2012-09-14 11:52:32');
INSERT INTO `login_log_p` VALUES ('8D825324-2093-4AAB-8F0C-1D96B304AEF8', 'anonymous|', '192.168.1.103', '2012-05-17 09:21:17');
INSERT INTO `login_log_p` VALUES ('8D85F5EE-DF16-414A-B47A-2A717C360538', '001|调试', '192.168.1.103', '2012-10-19 11:38:51');
INSERT INTO `login_log_p` VALUES ('8D967B7B-09AE-4E8F-A347-729FA755EBAC', '001|调试', '127.0.0.1', '2011-08-19 17:14:57');
INSERT INTO `login_log_p` VALUES ('8E047615-EF56-4EB7-9159-D942850AC83D', 'anonymous|', '192.168.1.111', '2012-09-06 10:36:04');
INSERT INTO `login_log_p` VALUES ('8E1C0C17-9E0B-4CAD-ABDE-A3FB36EA9E4B', '001|调试', '127.0.0.1', '2011-08-27 12:03:58');
INSERT INTO `login_log_p` VALUES ('8EA5997B-8E5F-47C5-BC05-56341B65AB07', '001|调试', '192.168.1.115', '2012-01-31 14:00:32');
INSERT INTO `login_log_p` VALUES ('8EC19C59-6CDA-4D1B-A8EC-DE5A42067F44', '001|调试', '127.0.0.1', '2011-10-01 20:45:25');
INSERT INTO `login_log_p` VALUES ('8EEE8CCC-B7FB-49C5-937D-F93BB8F1DBDE', 'anonymous|', '192.168.1.250', '2012-07-11 14:41:18');
INSERT INTO `login_log_p` VALUES ('8EEFBD45-FD57-4F4C-96EB-5DA96DAEEF4E', 'anonymous|', '192.168.1.112', '2012-05-02 14:19:26');
INSERT INTO `login_log_p` VALUES ('8F20BB68-50F9-41B9-BBBE-ED1C856BECF4', '001|调试', '192.168.1.110', '2012-02-09 09:05:38');
INSERT INTO `login_log_p` VALUES ('8F6612DE-6C1A-45AA-8D06-03DD888408B4', '001|调试', '127.0.0.1', '2011-12-20 13:20:37');
INSERT INTO `login_log_p` VALUES ('8FF63E4E-8252-428E-B949-14DB0C7CCAB9', 'anonymous|', '192.168.1.112', '2012-07-26 09:08:34');
INSERT INTO `login_log_p` VALUES ('90AFE891-9B24-4D07-B311-8603DF8AFAA2', '001|调试', '192.168.1.115', '2012-01-30 09:37:15');
INSERT INTO `login_log_p` VALUES ('90F7AED6-9F2F-4E0F-8550-84BE88C5A20E', '001|调试', '192.168.1.104', '2012-11-02 14:14:23');
INSERT INTO `login_log_p` VALUES ('91D82A23-D9A5-40CF-8B17-406332B8290B', '001|调试', '192.168.1.112', '2012-05-17 11:27:41');
INSERT INTO `login_log_p` VALUES ('924491E1-185A-45FE-A24D-FE9BA9DEA6B0', 'anonymous|杜娟丽', '192.168.1.107', '2012-10-30 16:08:24');
INSERT INTO `login_log_p` VALUES ('924A386C-7A55-4002-A5EA-2D4C0BDCD77A', '001|调试', '127.0.0.1', '2011-10-01 21:34:28');
INSERT INTO `login_log_p` VALUES ('92678805-A4A4-4500-A6A8-198945446F7C', '001|调试', '127.0.0.1', '2011-09-03 21:34:27');
INSERT INTO `login_log_p` VALUES ('9274F59E-8452-41BF-B8F9-D8A761C19E41', '001|调试', '127.0.0.1', '2011-08-29 23:39:51');
INSERT INTO `login_log_p` VALUES ('9275E776-A7EB-4E6E-BA69-C3659AA3F487', '001|调试', '192.168.1.102', '2012-09-19 11:04:12');
INSERT INTO `login_log_p` VALUES ('934337DE-A68B-4D47-B0A2-DBF7BD819640', 'anonymous|', '192.168.1.117', '2012-02-16 15:36:54');
INSERT INTO `login_log_p` VALUES ('93638F65-C81F-4622-8577-F9A9F18DC65E', 'anonymous|', '192.168.1.112', '2012-03-23 18:00:01');
INSERT INTO `login_log_p` VALUES ('93A5A7E6-9A60-4AB3-9D1B-2AB9E675DC1E', 'anonymous|', '192.168.1.114', '2012-05-17 11:25:00');
INSERT INTO `login_log_p` VALUES ('94013DB2-A2C7-43EE-B382-1FC2C86329FA', '001|调试', '192.168.1.115', '2012-01-31 13:49:44');
INSERT INTO `login_log_p` VALUES ('945A32EC-DCC9-4BE7-97EC-461EFF1AA080', '001|调试', '127.0.0.1', '2011-08-21 19:00:11');
INSERT INTO `login_log_p` VALUES ('94803BAB-4221-4415-9B80-1A3F97448595', '001|调试', '192.168.1.110', '2012-01-16 13:44:04');
INSERT INTO `login_log_p` VALUES ('94CED788-1B92-4988-85B9-2B5C14D375D5', '001|调试', '192.168.1.109', '2012-11-23 15:33:49');
INSERT INTO `login_log_p` VALUES ('955FAA88-E29A-4D86-A2F5-94EC58F06E34', '001|调试', '192.168.1.103', '2012-09-11 14:01:53');
INSERT INTO `login_log_p` VALUES ('95798C56-AD0C-4AB5-8A6D-D3A76A294A6E', '001|调试', '127.0.0.1', '2011-08-21 22:35:00');
INSERT INTO `login_log_p` VALUES ('958CB586-A889-4F80-AE32-EED675D2BC12', '001|调试', '192.168.1.103', '2012-10-18 17:17:25');
INSERT INTO `login_log_p` VALUES ('9637EE03-2BBC-4AB9-BE4C-05298D915211', '001|调试', '192.168.1.106', '2012-10-30 14:49:02');
INSERT INTO `login_log_p` VALUES ('96A13005-A540-4BAB-BB9D-A6D9EB5CF8A9', '001|调试', '192.168.1.106', '2012-05-07 09:16:15');
INSERT INTO `login_log_p` VALUES ('97182B9D-338B-4735-9763-A3964A3DB69A', '001|调试', '127.0.0.1', '2011-09-25 23:48:37');
INSERT INTO `login_log_p` VALUES ('97BE5CAE-C5A3-4F21-BE70-E97D1996B46C', '001|调试', '127.0.0.1', '2011-09-26 23:13:05');
INSERT INTO `login_log_p` VALUES ('97FC48FF-ABC5-4CDF-A6AD-0C2B592C31B6', '001|调试', '192.168.1.100', '2011-09-24 09:29:09');
INSERT INTO `login_log_p` VALUES ('983F7469-6E83-4B31-80F5-F4C942541F1B', '001|调试', '127.0.0.1', '2011-09-26 01:20:06');
INSERT INTO `login_log_p` VALUES ('9876DC86-B2FA-426D-8731-B9FC489A919D', 'anonymous|杜娟丽', '192.168.1.107', '2012-10-31 15:55:47');
INSERT INTO `login_log_p` VALUES ('9896D17A-BDE4-4392-89B3-998D978FB6EB', '001|调试', '192.168.1.102', '2012-07-23 14:07:57');
INSERT INTO `login_log_p` VALUES ('98D228BF-9A60-41F0-B47B-F42A396F174C', '001|调试', '192.168.1.109', '2012-11-09 11:57:26');
INSERT INTO `login_log_p` VALUES ('98F049C4-0179-46DD-BDB9-2BE6F8132C0F', '001|调试', '127.0.0.1', '2011-10-06 18:02:38');
INSERT INTO `login_log_p` VALUES ('98F73EC1-E130-4CD6-B169-3024D709C81A', '001|调试', '192.168.1.104', '2012-11-02 14:21:10');
INSERT INTO `login_log_p` VALUES ('99342E92-9B1C-45C3-B893-82DE4135C9A1', 'anonymous|席军', '192.168.1.103', '2011-12-02 09:52:00');
INSERT INTO `login_log_p` VALUES ('993F1EB4-2D2B-45B6-AE99-5F4394E289D6', '001|调试', '192.168.1.115', '2012-01-30 17:08:31');
INSERT INTO `login_log_p` VALUES ('9952BCF0-A48B-480F-AA2A-DF890AF36C48', 'anonymous|', '192.168.1.111', '2012-09-06 09:38:33');
INSERT INTO `login_log_p` VALUES ('9958BAF8-E882-4516-9ABD-78372EA0BE3B', '001|调试', '192.168.1.109', '2012-11-23 15:54:13');
INSERT INTO `login_log_p` VALUES ('9A035D84-020D-4FF8-953F-BD109E510913', '001|调试', '192.168.1.110', '2012-01-16 09:43:47');
INSERT INTO `login_log_p` VALUES ('9A48D24D-FE64-4997-B5B0-E69A54AFA739', '001|调试', '192.168.1.110', '2012-02-08 13:27:35');
INSERT INTO `login_log_p` VALUES ('9A671D3E-62AA-4C67-B7FF-6FB590AA9221', '001|调试', '192.168.1.110', '2012-02-27 10:53:23');
INSERT INTO `login_log_p` VALUES ('9A87C401-41F1-4A5F-8821-6DBE93F6C3E4', '001|调试', '192.168.1.104', '2012-06-19 16:18:46');
INSERT INTO `login_log_p` VALUES ('9AC3B131-CA68-443F-83D6-67ADD54B40BC', '001|调试', '192.168.1.106', '2012-10-30 15:27:56');
INSERT INTO `login_log_p` VALUES ('9B3E1328-47A9-418D-BD95-6383E47E4FBE', '001|调试', '127.0.0.1', '2011-09-18 23:04:51');
INSERT INTO `login_log_p` VALUES ('9B947C87-C368-43F3-A680-5B91B9B4F057', 'anonymous|', '192.168.1.109', '2012-08-14 11:36:08');
INSERT INTO `login_log_p` VALUES ('9BA5C995-0500-401B-A15D-7DBBA1D0C6CC', 'anonymous|席军', '192.168.1.103', '2011-12-02 11:28:20');
INSERT INTO `login_log_p` VALUES ('9BAFE212-7288-492F-BBB8-15D2C13610EF', 'anonymous|杜娟丽', '192.168.1.103', '2012-09-14 14:24:48');
INSERT INTO `login_log_p` VALUES ('9BD8FBC2-42DA-4C5E-97EE-03C306564BC5', '001|调试', '192.168.1.106', '2012-10-29 14:35:16');
INSERT INTO `login_log_p` VALUES ('9C005EA2-DEA1-4681-AEEA-7B8F4B00C390', '001|调试', '192.168.1.110', '2012-02-16 15:55:46');
INSERT INTO `login_log_p` VALUES ('9C5C3093-C8F3-42A6-B539-5382B84B1654', 'anonymous|席军', '192.168.1.103', '2011-12-02 17:07:54');
INSERT INTO `login_log_p` VALUES ('9C7EB6FA-9C43-4448-99A7-09EB2B6B8498', 'anonymous|', '192.168.1.112', '2012-03-23 18:02:05');
INSERT INTO `login_log_p` VALUES ('9CFAAD5D-D633-4918-A8AE-4948D67E8370', '001|调试', '192.168.1.115', '2012-01-29 11:44:40');
INSERT INTO `login_log_p` VALUES ('9D26A6C4-F4BF-4D6A-81F0-656E6819D10B', 'anonymous|调试', '192.168.1.102', '2011-09-24 10:33:23');
INSERT INTO `login_log_p` VALUES ('9D33505C-3063-4B55-8EC5-E3F5EB41F7E7', 'anonymous|', '192.168.1.106', '2012-09-14 10:50:47');
INSERT INTO `login_log_p` VALUES ('9D885E78-B8D9-4AC0-93B2-F79BD9E4CD03', '001|调试', '127.0.0.1', '2011-09-14 18:56:08');
INSERT INTO `login_log_p` VALUES ('9DB95B5F-F3F6-49EA-B7F5-327191B4435C', '001|调试', '192.168.1.109', '2012-11-09 11:11:45');
INSERT INTO `login_log_p` VALUES ('9DC1FD6E-E255-4FCC-B7F6-385E134DBBD5', '001|调试', '127.0.0.1', '2011-09-28 22:44:32');
INSERT INTO `login_log_p` VALUES ('9E409CBB-0F8B-4AB5-AE2C-552F71040ABA', 'anonymous|', '192.168.1.103', '2012-05-17 11:05:13');
INSERT INTO `login_log_p` VALUES ('9E9C1820-68E2-4EC7-A7D0-C96FAF1639D8', '001|调试', '192.168.1.250', '2012-07-11 16:42:59');
INSERT INTO `login_log_p` VALUES ('9EBE3CDC-E488-4F21-960B-06D7D4B08B8C', '001|调试', '192.168.1.100', '2012-07-11 14:38:30');
INSERT INTO `login_log_p` VALUES ('9EBF8579-0B28-4004-959B-0CC0CC091B4D', '001|调试', '192.168.1.102', '2012-09-19 10:44:27');
INSERT INTO `login_log_p` VALUES ('9EC76488-6E10-4B45-9DF9-B77F63FB1559', '001|调试', '192.168.1.103', '2012-10-19 12:43:20');
INSERT INTO `login_log_p` VALUES ('A00CE633-9261-427C-828A-C5E0542D598E', '001|调试', '192.168.1.106', '2012-10-30 12:00:21');
INSERT INTO `login_log_p` VALUES ('A058F71F-71F4-4518-854F-918B8ED9A217', '001|调试', '192.168.1.109', '2012-11-23 12:45:20');
INSERT INTO `login_log_p` VALUES ('A0BD3EA4-D338-411E-92FC-57AD314914FE', 'anonymous|', '192.168.1.114', '2012-01-20 11:50:29');
INSERT INTO `login_log_p` VALUES ('A1F3F0D6-4D97-468A-A31F-3CC676F35CC2', '001|调试', '192.168.1.103', '2011-10-18 10:06:43');
INSERT INTO `login_log_p` VALUES ('A24BA621-A457-4A70-B66F-CA3C4673A08D', 'anonymous|田燕', '192.168.1.110', '2012-10-29 14:23:33');
INSERT INTO `login_log_p` VALUES ('A258951A-2753-41AF-9BB6-0670B3B28EDC', 'anonymous|杜娟丽', '192.168.1.103', '2012-09-14 10:52:16');
INSERT INTO `login_log_p` VALUES ('A2A9340F-88AE-4625-AC96-B16FEAA86BB3', '001|调试', '192.168.1.110', '2012-02-09 10:14:51');
INSERT INTO `login_log_p` VALUES ('A2C69C90-5BE5-4366-9C6A-60FBB6219880', '001|调试', '192.168.1.103', '2012-08-13 10:26:57');
INSERT INTO `login_log_p` VALUES ('A2F393CA-2037-4F3C-8A4E-C53E149042F1', 'anonymous|', '192.168.1.103', '2012-05-17 08:44:17');
INSERT INTO `login_log_p` VALUES ('A31B82F9-285C-4621-8CC9-F807903B6DEC', '001|调试', '192.168.1.104', '2012-07-19 09:13:47');
INSERT INTO `login_log_p` VALUES ('A33304E5-C958-4356-969F-2F27FD2099C5', '001|调试', '192.168.1.110', '2012-01-20 11:39:04');
INSERT INTO `login_log_p` VALUES ('A4272723-435F-4618-8EA7-9CF555B550EB', '001|调试', '127.0.0.1', '2011-10-02 01:25:24');
INSERT INTO `login_log_p` VALUES ('A45187AD-638A-461E-9895-B96E9F252D44', 'anonymous|席军', '192.168.1.103', '2011-12-02 16:43:48');
INSERT INTO `login_log_p` VALUES ('A4823BD2-EEF8-4F54-B16D-357B88450A65', '001|调试', '127.0.0.1', '2011-08-21 22:34:32');
INSERT INTO `login_log_p` VALUES ('A49AB13F-5AAB-4C28-B2EA-136DB08F51CC', '001|调试', '192.168.1.115', '2012-02-03 16:33:33');
INSERT INTO `login_log_p` VALUES ('A6BDE852-C080-4772-9799-6D2D5C074CF2', 'anonymous|席军', '192.168.1.103', '2011-12-02 12:19:30');
INSERT INTO `login_log_p` VALUES ('A70F67A4-1E09-4945-B203-DD5A87EA0AB0', '001|调试', '192.168.1.115', '2012-01-31 13:46:22');
INSERT INTO `login_log_p` VALUES ('A76E8210-3977-4AD9-A9CC-EDF474D12BFF', '001|调试', '127.0.0.1', '2011-08-28 15:28:43');
INSERT INTO `login_log_p` VALUES ('A7802851-4F04-4794-9906-246D0E04CF62', '001|调试', '192.168.1.115', '2012-02-02 15:22:17');
INSERT INTO `login_log_p` VALUES ('A81350FE-4CC0-40A1-95C5-2D77E6134DFC', '001|调试', '127.0.0.1', '2011-10-04 10:28:11');
INSERT INTO `login_log_p` VALUES ('A814B5E0-D06A-48E9-82A5-2531802AE731', '001|调试', '127.0.0.1', '2011-10-01 21:53:49');
INSERT INTO `login_log_p` VALUES ('A8178B60-FAFD-43F4-9924-A4314A3D984E', '001|调试', '127.0.0.1', '2011-09-22 00:24:06');
INSERT INTO `login_log_p` VALUES ('A884B32D-DECE-497D-9EDC-F9B2639D5CA5', '001|调试', '192.168.1.110', '2012-01-31 16:38:44');
INSERT INTO `login_log_p` VALUES ('A8AB1FD9-879F-439D-968B-3C7D60A8E597', 'anonymous|', '192.168.1.117', '2012-02-16 15:30:55');
INSERT INTO `login_log_p` VALUES ('A8BBAD2B-D020-4981-8BBE-FB28E4AEAD3B', 'anonymous|', '192.168.1.101', '2012-08-31 09:26:21');
INSERT INTO `login_log_p` VALUES ('A90C9C8C-5D6E-410E-926E-25FE0FAE3727', '001|调试', '192.168.1.115', '2012-02-03 11:55:12');
INSERT INTO `login_log_p` VALUES ('A9435658-1314-4A02-B4A0-4B4AB578AE4C', 'liuxiaoshan|刘晓山|刘晓山', '192.168.1.107', '2012-05-02 17:13:24');
INSERT INTO `login_log_p` VALUES ('A96A2477-7967-456E-B17B-3C43A0D95AB3', 'anonymous|', '192.168.1.111', '2012-09-06 13:56:26');
INSERT INTO `login_log_p` VALUES ('A987CAF1-FFF6-4A18-AEA4-9EEDFAC892D7', '001|调试', '127.0.0.1', '2011-08-27 18:53:38');
INSERT INTO `login_log_p` VALUES ('A9CDB577-1330-4CA3-A17A-908F7159A50C', 'anonymous|田燕', '192.168.1.110', '2012-10-29 11:15:59');
INSERT INTO `login_log_p` VALUES ('AA13D14F-177B-47FB-AEB1-D42498A2E894', '001|调试', '192.168.1.103', '2012-10-18 16:39:32');
INSERT INTO `login_log_p` VALUES ('AA2E78B4-1A6E-4B8F-BD8A-27C819A5CAC2', 'anonymous|', '127.0.0.1', '2012-11-27 11:10:20');
INSERT INTO `login_log_p` VALUES ('AA3D3792-54F0-4537-A179-0895BD9103AA', '001|调试', '192.168.1.115', '2012-01-31 10:13:44');
INSERT INTO `login_log_p` VALUES ('AA8D6254-5981-4FDB-A963-45448AF5069F', '001|调试', '192.168.1.112', '2012-05-21 11:34:28');
INSERT INTO `login_log_p` VALUES ('AAF792C4-0799-45F7-AFAC-1890AC3F5740', '001|调试', '127.0.0.1', '2011-09-22 20:54:50');
INSERT INTO `login_log_p` VALUES ('AB123356-32E2-4582-9B43-28DF6F503DCC', '001|调试', '192.168.1.110', '2012-02-06 14:31:10');
INSERT INTO `login_log_p` VALUES ('AB34DFB9-C9F9-4FA7-BB19-DBADD642B620', 'anonymous|席军', '192.168.1.103', '2011-12-02 12:17:57');
INSERT INTO `login_log_p` VALUES ('AB407546-9FB5-4AC4-96F9-2E631108EB95', 'anonymous|', '192.168.1.117', '2012-02-16 15:10:10');
INSERT INTO `login_log_p` VALUES ('AB425E25-5DCC-4BF5-8EF5-55C3B7887590', '001|调试', '192.168.1.103', '2012-10-19 09:24:40');
INSERT INTO `login_log_p` VALUES ('AB753D7F-6BF5-40A2-8F9A-3AB53D709E2F', '001|调试', '192.168.1.104', '2012-06-19 16:25:20');
INSERT INTO `login_log_p` VALUES ('AB7A1209-609C-44C9-8EF4-7A0287780552', 'anonymous|张玉杰', '192.168.1.105', '2012-07-26 09:33:58');
INSERT INTO `login_log_p` VALUES ('ABC8DEE1-8761-4EC0-A404-6D09BD9F9C3B', '001|调试', '127.0.0.1', '2011-08-21 18:51:53');
INSERT INTO `login_log_p` VALUES ('AC698560-CCD5-4866-808C-39BF6C0E9441', '001|调试', '192.168.1.103', '2011-11-26 11:40:36');
INSERT INTO `login_log_p` VALUES ('ACA37558-B2D3-491A-A291-3271D7541C9E', '001|调试', '192.168.1.110', '2012-01-31 16:38:54');
INSERT INTO `login_log_p` VALUES ('AD83D841-A3DC-4D60-94C1-91C772446C8E', '001|调试', '127.0.0.1', '2011-08-21 20:57:02');
INSERT INTO `login_log_p` VALUES ('AE0B4CB6-558E-4573-857F-51C502189F9B', '001|调试', '127.0.0.1', '2011-08-21 17:51:07');
INSERT INTO `login_log_p` VALUES ('AF0BB670-236A-4342-B394-7AAAE7306230', '001|调试', '192.168.1.110', '2012-01-31 16:37:48');
INSERT INTO `login_log_p` VALUES ('AF38AE26-1D67-42BA-9B51-F80AB4C36D21', 'anonymous|杜娟丽', '192.168.1.117', '2012-02-16 09:54:40');
INSERT INTO `login_log_p` VALUES ('AF5E98A1-FC7C-4BB6-9B65-F32C3330DED7', 'anonymous|', '192.168.1.112', '2012-05-02 14:19:27');
INSERT INTO `login_log_p` VALUES ('AFF6F59D-DBBB-4CA0-91E5-FC6A9A413C2F', '001|调试', '192.168.1.100', '2012-07-19 10:40:20');
INSERT INTO `login_log_p` VALUES ('B01CD8A6-7921-4279-8252-5C7509559354', 'anonymous|', '127.0.0.1', '2012-11-27 10:52:46');
INSERT INTO `login_log_p` VALUES ('B0827F1C-A0D8-49D4-AC14-DC5BE9789D33', '001|调试', '127.0.0.1', '2011-11-26 11:38:45');
INSERT INTO `login_log_p` VALUES ('B0A6C352-6725-4BB2-A89A-2EEDD3E43E11', 'anonymous|', '127.0.0.1', '2011-12-06 12:28:39');
INSERT INTO `login_log_p` VALUES ('B14BF165-FFAA-4F65-88AE-6C6C3A0D6826', '001|调试', '192.168.1.115', '2012-01-31 11:55:41');
INSERT INTO `login_log_p` VALUES ('B16CE97C-A308-486F-A59B-1A628C0FC95D', '001|调试', '192.168.1.102', '2012-09-19 10:58:34');
INSERT INTO `login_log_p` VALUES ('B1BDEA3F-7BC5-460D-9EF1-ECD9EC9A093C', 'anonymous|', '192.168.1.107', '2012-05-02 17:13:11');
INSERT INTO `login_log_p` VALUES ('B1D706E7-0F96-4BE7-B5DC-28E0F0136153', '001|调试', '192.168.1.106', '2012-05-08 09:04:13');
INSERT INTO `login_log_p` VALUES ('B1DA8A4C-FE41-4745-8502-0E8F7F0DAF91', '001|调试', '192.168.1.106', '2012-10-29 14:36:44');
INSERT INTO `login_log_p` VALUES ('B27CA8B2-AB3A-40C8-8AF7-62E696BE940A', '001|调试', '192.168.1.110', '2012-02-14 10:56:18');
INSERT INTO `login_log_p` VALUES ('B280DC5B-E08F-4F98-AB61-3E8244893BAD', 'anonymous|', '127.0.0.1', '2012-11-27 11:10:36');
INSERT INTO `login_log_p` VALUES ('B2C0AA08-A9A6-415C-9291-E7DCBEF3EE3F', '001|调试', '192.168.1.114', '2012-05-17 11:15:08');
INSERT INTO `login_log_p` VALUES ('B3BC60DD-1953-43F2-8CAE-2E37D225DDFD', '001|调试', '192.168.1.103', '2012-10-19 10:46:43');
INSERT INTO `login_log_p` VALUES ('B3BFF4AA-AB2B-41AD-A1FE-4E239B85C872', 'anonymous|', '192.168.1.100', '2012-06-27 08:31:53');
INSERT INTO `login_log_p` VALUES ('B40CF9B9-D0E5-4590-BEEE-2C3ECC91028C', '001|调试', '192.168.1.106', '2012-10-30 15:01:56');
INSERT INTO `login_log_p` VALUES ('B453CA01-7424-484F-B203-9CE879D7A3A1', '001|调试', '127.0.0.1', '2011-09-26 19:36:34');
INSERT INTO `login_log_p` VALUES ('B4CAF971-2926-4888-8392-22616E4FB48F', '001|调试', '127.0.0.1', '2011-10-07 00:33:29');
INSERT INTO `login_log_p` VALUES ('B5980652-F6D5-4DE2-B7FA-71A623AC78A6', '001|调试', '192.168.1.104', '2012-06-19 16:35:22');
INSERT INTO `login_log_p` VALUES ('B59EE8AB-6BF3-4A4B-A4F6-2594AD631472', '001|调试', '192.168.1.110', '2012-01-17 14:12:36');
INSERT INTO `login_log_p` VALUES ('B5F3D5F1-F83F-463B-96EB-21FF51DD7399', '001|调试', '127.0.0.1', '2011-10-07 18:37:35');
INSERT INTO `login_log_p` VALUES ('B665BA0A-8B12-4736-B5FA-88DF97A0C9D8', '001|调试', '192.168.1.102', '2012-09-19 10:25:51');
INSERT INTO `login_log_p` VALUES ('B71481E9-EAE0-42BE-A4C0-15FC1330B79F', 'anonymous|', '192.168.1.250', '2012-07-11 16:41:25');
INSERT INTO `login_log_p` VALUES ('B74FACB1-867C-40FD-B1EB-9D76D73C5756', '001|调试', '192.168.1.104', '2012-06-19 16:31:21');
INSERT INTO `login_log_p` VALUES ('B7A3E04C-13CA-4B70-86F0-5960A17B49FB', '001|调试', '192.168.1.115', '2012-02-03 12:33:23');
INSERT INTO `login_log_p` VALUES ('B84C9CE8-7C9F-47B6-B200-2D487942FDFB', '001|调试', '192.168.1.104', '2012-07-19 09:20:22');
INSERT INTO `login_log_p` VALUES ('B8BDBF6D-53A5-46CA-8753-EA8110D1DAD9', 'anonymous|张玉杰', '192.168.1.104', '2011-12-02 09:31:49');
INSERT INTO `login_log_p` VALUES ('B9063843-216A-474A-9580-D822712159D1', '001|调试', '192.168.1.115', '2012-02-03 16:33:35');
INSERT INTO `login_log_p` VALUES ('B91B5ECC-4DD3-492F-B6E1-7D7BDD2FD3E0', '001|调试', '127.0.0.1', '2011-08-27 20:43:15');
INSERT INTO `login_log_p` VALUES ('B9233270-24CE-4EA9-AA6D-38827BCC0E0C', '001|调试', '192.168.1.115', '2012-02-01 10:02:43');
INSERT INTO `login_log_p` VALUES ('B946F290-DB76-412C-A2E4-A764F5F60945', 'anonymous|张玉杰', '192.168.1.105', '2011-11-14 08:35:58');
INSERT INTO `login_log_p` VALUES ('B978BD92-601A-4482-8361-502B926DCDB5', '001|调试', '192.168.1.115', '2012-01-31 11:08:29');
INSERT INTO `login_log_p` VALUES ('BA03810F-EF1C-49C9-BE91-F71C90D4FC2A', '001|调试', '127.0.0.1', '2011-08-27 20:41:33');
INSERT INTO `login_log_p` VALUES ('BA4A7DB1-8ABB-4B5E-B7FE-D7BB72043E85', '001|调试', '192.168.1.110', '2012-01-13 09:16:25');
INSERT INTO `login_log_p` VALUES ('BAD1E914-F782-4F82-A65C-576B3D7F663C', '001|调试', '192.168.1.112', '2012-05-21 11:14:16');
INSERT INTO `login_log_p` VALUES ('BADA1647-A6DD-4E67-9B33-73F428F65C7C', '001|调试', '127.0.0.1', '2011-08-27 23:24:21');
INSERT INTO `login_log_p` VALUES ('BB1DD715-5186-47BB-A3CD-2BCC53BE33A3', '001|调试', '192.168.1.103', '2012-10-19 13:21:00');
INSERT INTO `login_log_p` VALUES ('BB2551C2-8C31-4D71-9556-EF14149043D2', '001|调试', '127.0.0.1', '2011-09-18 23:19:23');
INSERT INTO `login_log_p` VALUES ('BC03FBB1-AB80-4D9B-9136-65AB866DEC4C', 'anonymous|张玉杰', '192.168.1.104', '2011-12-02 09:31:09');
INSERT INTO `login_log_p` VALUES ('BC760A01-E3EB-4B75-AA22-52A75C2DE697', 'anonymous|', '192.168.1.114', '2012-01-20 11:51:41');
INSERT INTO `login_log_p` VALUES ('BCC756FE-615B-41AA-B792-321C3AC37D3B', 'anonymous|', '192.168.1.109', '2012-08-14 10:22:18');
INSERT INTO `login_log_p` VALUES ('BDCCDEF4-74DF-42E2-A608-7A0C8BFABB60', '001|调试', '127.0.0.1', '2013-03-09 23:00:20');
INSERT INTO `login_log_p` VALUES ('BDE3F91F-45AE-4551-A454-97C19DB256BD', 'anonymous|杜娟丽', '192.168.1.107', '2012-10-30 16:10:20');
INSERT INTO `login_log_p` VALUES ('BE66D35D-F761-4B2A-8314-7792F2DE3378', '001|调试', '127.0.0.1', '2011-10-01 20:32:14');
INSERT INTO `login_log_p` VALUES ('BF16A372-5BA4-446E-A2C8-A0770618E530', '001|调试', '127.0.0.1', '2011-08-24 20:09:17');
INSERT INTO `login_log_p` VALUES ('BFAF1555-621D-4FCC-86F9-3B5BA40833CD', '001|调试', '127.0.0.1', '2011-08-21 20:03:05');
INSERT INTO `login_log_p` VALUES ('C0155AD8-1FD2-4A08-87F4-051AF39600B6', 'anonymous|', '192.168.1.112', '2012-06-01 08:39:27');
INSERT INTO `login_log_p` VALUES ('C035B3EF-2818-46CB-BAF6-51F2BF2F1E0B', '001|调试', '192.168.1.104', '2012-11-01 09:02:53');
INSERT INTO `login_log_p` VALUES ('C079A51F-5CEE-4EEC-B264-1F24436DFB6B', '001|调试', '192.168.1.110', '2012-01-13 16:43:18');
INSERT INTO `login_log_p` VALUES ('C1058444-4720-4382-8666-04DE1618CF6D', '001|调试', '192.168.1.103', '2011-11-26 13:16:02');
INSERT INTO `login_log_p` VALUES ('C1408D9A-6ABF-45A3-A057-DF2185A64F7A', '001|调试', '192.168.1.115', '2012-01-30 16:21:51');
INSERT INTO `login_log_p` VALUES ('C151FAB8-0FA2-4E5F-9A3C-4DBA9AFB319D', 'anonymous|', '192.168.1.104', '2011-10-31 08:47:36');
INSERT INTO `login_log_p` VALUES ('C1B208BF-C4B8-4FF6-8958-83AE5F0F7887', '001|调试', '127.0.0.1', '2011-08-27 21:01:30');
INSERT INTO `login_log_p` VALUES ('C1B8B8B6-945B-4FA9-BA5F-A3979580831C', 'anonymous|田燕', '192.168.1.103', '2012-09-10 11:12:19');
INSERT INTO `login_log_p` VALUES ('C1BFF06F-BFC3-45A5-80A7-153D57FE2F15', 'anonymous|', '192.168.1.103', '2012-05-17 11:04:15');
INSERT INTO `login_log_p` VALUES ('C1EB2B08-7220-4860-ABFD-B87819159F74', '001|调试', '127.0.0.1', '2013-03-09 19:46:28');
INSERT INTO `login_log_p` VALUES ('C22D2CD3-9F50-4159-AED1-D2A81382708B', '001|调试', '192.168.1.102', '2011-09-24 09:31:12');
INSERT INTO `login_log_p` VALUES ('C23DAE63-1128-4485-9967-EA6F7FD52C21', '001|调试', '127.0.0.1', '2011-08-27 14:08:17');
INSERT INTO `login_log_p` VALUES ('C250F998-D20F-4C51-A11B-280AB900920A', '001|调试', '192.168.1.115', '2012-01-31 13:56:49');
INSERT INTO `login_log_p` VALUES ('C251ED88-2C93-4E9B-BC36-5B0A3D794D86', 'anonymous|杨丽', '192.168.1.114', '2012-05-17 11:22:15');
INSERT INTO `login_log_p` VALUES ('C3728E46-2384-46EF-9477-06391D117D1F', '001|调试', '127.0.0.1', '2011-08-29 20:33:28');
INSERT INTO `login_log_p` VALUES ('C3794DFF-CB51-47BF-912E-6BFD860F727C', '001|调试', '127.0.0.1', '2011-09-06 15:51:47');
INSERT INTO `login_log_p` VALUES ('C3BFB621-22C6-4C0D-BBAA-910F0B12B1A6', 'anonymous|', '192.168.1.105', '2012-04-16 17:45:28');
INSERT INTO `login_log_p` VALUES ('C3E7B9F1-1C32-422D-87D2-F1A650011F30', 'anonymous|席军', '192.168.1.103', '2011-12-05 11:23:05');
INSERT INTO `login_log_p` VALUES ('C54532F3-3BE1-47BE-9C0A-1F789EE9C7C5', '001|调试', '192.168.1.115', '2012-02-01 11:51:54');
INSERT INTO `login_log_p` VALUES ('C547C25B-65FC-49A6-AC00-564FE51AE2AD', 'anonymous|田燕', '192.168.1.110', '2012-10-29 09:23:06');
INSERT INTO `login_log_p` VALUES ('C560A573-87BB-462A-BDD5-BF02E1D9A1CF', 'anonymous|', '192.168.1.106', '2012-09-14 10:51:36');
INSERT INTO `login_log_p` VALUES ('C57C9B4F-69B6-4ACB-86CF-1EF1E59D293E', '001|调试', '192.168.1.110', '2012-01-17 12:01:46');
INSERT INTO `login_log_p` VALUES ('C58C0DBB-AA61-4C81-847E-C2C8BA7A4E24', '001|调试', '192.168.1.104', '2012-11-02 10:15:06');
INSERT INTO `login_log_p` VALUES ('C5C14666-B75F-48A4-8359-B3D0F3323835', 'anonymous|杨丽', '192.168.1.106', '2012-03-29 16:34:58');
INSERT INTO `login_log_p` VALUES ('C63B8A36-3416-4241-A6E9-71FFC940C826', '001|调试', '192.168.1.110', '2012-02-16 15:39:36');
INSERT INTO `login_log_p` VALUES ('C65D7725-8AE1-47A4-99FB-F2909D99C74B', '001|调试', '192.168.1.115', '2012-02-02 16:34:00');
INSERT INTO `login_log_p` VALUES ('C6895D8C-4A97-437B-9530-ED9B2276F8EF', 'anonymous|田燕', '192.168.1.103', '2012-09-10 10:39:32');
INSERT INTO `login_log_p` VALUES ('C6963255-69F9-4835-BD44-73AA8C4495DD', 'anonymous|', '192.168.1.105', '2012-04-17 10:34:24');
INSERT INTO `login_log_p` VALUES ('C6BCC149-1682-4199-BC9B-19FB86BB8B93', '001|调试', '127.0.0.1', '2011-09-22 23:59:24');
INSERT INTO `login_log_p` VALUES ('C718A63B-521B-437D-BACF-A596FF78FFFE', 'anonymous|', '192.168.1.105', '2012-10-11 09:09:11');
INSERT INTO `login_log_p` VALUES ('C77647D4-F6DC-42E1-8A09-3CAE672DCE32', '001|调试', '192.168.1.102', '2011-09-24 10:20:04');
INSERT INTO `login_log_p` VALUES ('C77D3E3D-F50C-4911-8BEB-B6B9F9B1463D', '001|调试', '127.0.0.1', '2011-10-06 18:14:48');
INSERT INTO `login_log_p` VALUES ('C7D6E80A-CE0E-4EEB-8760-F6B9B397A4D4', 'anonymous|席军', '192.168.1.103', '2011-12-02 12:20:32');
INSERT INTO `login_log_p` VALUES ('C7F0F6D8-0C58-4633-9AAC-FDE59C3AF8DC', '001|调试', '127.0.0.1', '2011-10-07 01:18:56');
INSERT INTO `login_log_p` VALUES ('C7F53F80-A9F3-4B8A-A6EC-9515EFCF5AF4', '001|调试', '192.168.1.103', '2012-10-19 14:16:12');
INSERT INTO `login_log_p` VALUES ('C82AF7E0-C10F-4AB9-9774-48913C224546', '001|调试', '192.168.1.110', '2012-01-20 12:15:37');
INSERT INTO `login_log_p` VALUES ('C83D6E4A-82F9-4B71-BE06-514D9DF7BC2F', '001|调试', '192.168.1.102', '2011-09-24 10:31:40');
INSERT INTO `login_log_p` VALUES ('C85E299F-5233-4CAE-9037-CA4B9C1BC894', '001|调试', '127.0.0.1', '2011-09-21 22:45:19');
INSERT INTO `login_log_p` VALUES ('C86A8EBC-28A9-45D4-BAEF-9C0B30E8A422', '001|调试', '127.0.0.1', '2011-09-25 19:30:05');
INSERT INTO `login_log_p` VALUES ('C8A524F5-9E42-4020-BEF2-74D155B97663', '001|调试', '192.168.1.106', '2012-10-30 13:42:23');
INSERT INTO `login_log_p` VALUES ('C8F79CA0-E258-40E0-997D-1B53E2B3C013', '001|调试', '192.168.1.109', '2012-11-23 15:31:37');
INSERT INTO `login_log_p` VALUES ('C8F9708D-DD73-488A-85B1-B28AF83C2D99', '001|调试', '192.168.1.106', '2012-05-07 11:38:15');
INSERT INTO `login_log_p` VALUES ('C8FEED65-6F5B-4A77-843C-FB777944D456', '001|调试', '127.0.0.1', '2011-09-04 11:36:18');
INSERT INTO `login_log_p` VALUES ('C90199F4-436C-487C-9D5C-EC97BD41E5BA', '001|调试', '127.0.0.1', '2011-10-07 02:16:43');
INSERT INTO `login_log_p` VALUES ('C9276A48-4498-4928-8BE0-A4081BFB0179', 'anonymous|', '192.168.1.250', '2012-07-11 14:58:04');
INSERT INTO `login_log_p` VALUES ('C9E5FAFF-A395-4456-94E6-83086F119ABC', 'anonymous|杜娟丽', '192.168.1.103', '2012-09-14 10:51:42');
INSERT INTO `login_log_p` VALUES ('C9F5B77B-1482-4A8B-8AF5-D107C3B2E33B', '001|调试', '192.168.1.110', '2012-02-09 09:05:38');
INSERT INTO `login_log_p` VALUES ('CA071526-D526-4B39-9198-EB20B715D09C', '001|调试', '127.0.0.1', '2011-10-07 01:39:28');
INSERT INTO `login_log_p` VALUES ('CA1F1FCA-BA25-40F2-A3A0-1CC8E7B70FDD', '001|调试', '192.168.1.115', '2012-02-01 10:06:14');
INSERT INTO `login_log_p` VALUES ('CABBF586-A882-47D2-B68C-54F96F890536', '001|调试', '192.168.1.114', '2012-03-31 16:01:51');
INSERT INTO `login_log_p` VALUES ('CACFD355-F0D6-40CE-9AF8-8FEBC5894941', 'anonymous|张玉杰', '192.168.1.104', '2011-12-02 09:51:53');
INSERT INTO `login_log_p` VALUES ('CAE396B0-1923-4BF5-A84C-3003CA495BD3', '001|调试', '192.168.1.110', '2012-02-08 14:24:19');
INSERT INTO `login_log_p` VALUES ('CB851191-E345-465F-B37A-93C3C80513EF', '001|调试', '127.0.0.1', '2011-09-22 23:23:11');
INSERT INTO `login_log_p` VALUES ('CBB40F4B-E616-43B6-BCF3-1CD9BE962C4B', '001|调试', '127.0.0.1', '2011-10-04 07:47:36');
INSERT INTO `login_log_p` VALUES ('CBD74D3A-A644-46C9-A5DB-B71E267AE2E1', 'anonymous|杜娟丽', '192.168.1.107', '2012-10-31 15:55:14');
INSERT INTO `login_log_p` VALUES ('CBE4AD54-82B6-4E34-A85B-94A363DC6EBB', 'anonymous|', '192.168.1.111', '2012-09-06 14:29:55');
INSERT INTO `login_log_p` VALUES ('CBE999C5-BB7F-4779-8E1F-F8A6A5121D57', 'anonymous|', '192.168.1.107', '2012-05-02 16:05:25');
INSERT INTO `login_log_p` VALUES ('CBEC1FEA-9C87-43A4-8753-31ED6B232B9C', '001|调试', '127.0.0.1', '2011-09-14 18:44:13');
INSERT INTO `login_log_p` VALUES ('CBF2BF87-7014-48D7-ADBC-C6E40721C852', '001|调试', '192.168.1.110', '2012-01-20 10:34:49');
INSERT INTO `login_log_p` VALUES ('CBF99787-A475-4232-B55C-839E5A0E845E', '001|调试', '127.0.0.1', '2011-08-21 19:12:04');
INSERT INTO `login_log_p` VALUES ('CC4FC78C-020A-48BD-9C7A-9EC463DA93E5', '001|调试', '192.168.1.103', '2011-10-18 11:12:28');
INSERT INTO `login_log_p` VALUES ('CCBB4E1B-C84A-4456-919D-43BA9FEF3CFA', '001|调试', '192.168.1.115', '2012-02-02 14:44:12');
INSERT INTO `login_log_p` VALUES ('CCF5B97F-85E5-4053-B4C9-B7A850296C00', '001|调试', '127.0.0.1', '2011-08-20 23:03:27');
INSERT INTO `login_log_p` VALUES ('CD0E8572-9949-49FC-98B0-C943E7DA00BA', '001|调试', '127.0.0.1', '2011-09-04 09:45:24');
INSERT INTO `login_log_p` VALUES ('CE244D52-2B7A-42A5-9158-F7C8CA0D0585', '001|调试', '192.168.1.100', '2012-07-19 09:54:30');
INSERT INTO `login_log_p` VALUES ('CE9C0E6E-AD45-4EAD-B255-110EBD46AE1F', '001|调试', '127.0.0.1', '2011-10-07 02:14:11');
INSERT INTO `login_log_p` VALUES ('CECE1C74-BA1E-4F8B-80E4-E909E4E99D35', 'anonymous|', '127.0.0.1', '2012-11-27 10:54:53');
INSERT INTO `login_log_p` VALUES ('CF00CB74-753E-4A2B-8982-3E3D4AD18331', '001|调试', '192.168.1.115', '2012-02-03 12:31:43');
INSERT INTO `login_log_p` VALUES ('CF0A95BE-E7D6-445F-994E-8AE16DF6BCDE', 'anonymous|席军', '192.168.1.103', '2011-12-02 17:13:01');
INSERT INTO `login_log_p` VALUES ('CF3F4253-78A6-4529-AC7B-43EE90A2E848', '001|调试', '127.0.0.1', '2011-10-06 18:23:50');
INSERT INTO `login_log_p` VALUES ('CF52CE20-06F5-433F-97BC-22384FCB0822', '001|调试', '127.0.0.1', '2011-08-22 20:49:03');
INSERT INTO `login_log_p` VALUES ('CF606CE5-FF69-467D-8056-B4521E146180', '001|调试', '127.0.0.1', '2011-09-06 20:45:55');
INSERT INTO `login_log_p` VALUES ('CF9E528A-9D94-44D3-A86E-58F1FB4081EB', 'anonymous|', '192.168.1.117', '2012-02-16 15:32:32');
INSERT INTO `login_log_p` VALUES ('D05CF422-CA53-4D0D-9E22-4B5D8CA34E4C', 'anonymous|', '192.168.1.250', '2012-07-11 16:17:43');
INSERT INTO `login_log_p` VALUES ('D0ADF384-9E7D-42BE-AAD5-F4772CC88246', '001|调试', '192.168.1.102', '2012-07-23 09:15:43');
INSERT INTO `login_log_p` VALUES ('D12E3FD1-8ACF-476B-A657-515C8054C75C', '001|调试', '192.168.1.103', '2012-01-20 15:33:30');
INSERT INTO `login_log_p` VALUES ('D179180C-2C3F-415D-9173-70D2D98F5320', '001|调试', '127.0.0.1', '2011-09-26 02:12:37');
INSERT INTO `login_log_p` VALUES ('D1E78F12-BA7D-4232-9936-AB78AB01EBD4', '001|调试', '192.168.1.103', '2011-10-18 10:55:44');
INSERT INTO `login_log_p` VALUES ('D23835CB-AE6F-4119-BE04-4B0C41D1B497', 'anonymous|', '192.168.1.107', '2012-05-02 16:34:27');
INSERT INTO `login_log_p` VALUES ('D247FC67-BE0A-40B7-B3E6-963C903D48F8', '001|调试', '127.0.0.1', '2011-10-03 08:28:28');
INSERT INTO `login_log_p` VALUES ('D2AA67E0-C8CD-45FB-84D7-0AA7A14B8530', '001|调试', '192.168.1.109', '2012-11-23 09:22:23');
INSERT INTO `login_log_p` VALUES ('D2B270C4-F2D8-445A-BAB4-D3D77A6F0D6F', '001|调试', '127.0.0.1', '2011-08-27 21:03:51');
INSERT INTO `login_log_p` VALUES ('D3B6095E-D9E4-4D59-92B7-9899DF2C5C9E', '001|调试', '192.168.1.106', '2012-05-07 14:23:48');
INSERT INTO `login_log_p` VALUES ('D3CCF2CD-50DB-4C9F-AB97-178C0C6CB51D', 'anonymous|', '127.0.0.1', '2012-11-27 11:06:44');
INSERT INTO `login_log_p` VALUES ('D3EF0318-C6C5-49E7-9D07-6521AFD945A5', 'anonymous|杨丽', '192.168.1.105', '2011-11-04 16:14:15');
INSERT INTO `login_log_p` VALUES ('D3F3E13D-A8E6-4991-8841-1334ABCF3C00', '001|调试', '192.168.1.115', '2012-02-02 08:55:56');
INSERT INTO `login_log_p` VALUES ('D3FB57A6-A54A-40C4-A7DB-E5FF549A87C2', 'anonymous|', '192.168.1.112', '2012-06-01 15:52:59');
INSERT INTO `login_log_p` VALUES ('D421EEB0-C781-4460-899C-3B95E2E7E74C', 'anonymous|杜娟丽', '192.168.1.117', '2012-02-15 17:36:20');
INSERT INTO `login_log_p` VALUES ('D42EE228-413D-41B5-8269-CCBF42C120CF', '001|调试', '127.0.0.1', '2011-08-21 23:13:25');
INSERT INTO `login_log_p` VALUES ('D4BC6A1B-DAB4-40E4-A472-27A05ED5DCAF', '001|调试', '192.168.1.110', '2012-01-16 16:31:27');
INSERT INTO `login_log_p` VALUES ('D4F22723-99C4-43EA-BE6B-160A19A98419', '001|调试', '192.168.1.110', '2012-01-20 14:46:23');
INSERT INTO `login_log_p` VALUES ('D5BE9FBA-FCFA-4052-AA14-E0664D21C900', '001|调试', '192.168.1.115', '2012-01-29 09:00:19');
INSERT INTO `login_log_p` VALUES ('D6091CD1-7818-4E47-B294-F6139F5763EC', '001|调试', '192.168.1.103', '2012-09-11 10:33:49');
INSERT INTO `login_log_p` VALUES ('D63D5CAC-5A31-4351-B5E5-7AB388CE5DD5', '001|调试', '192.168.1.104', '2012-06-19 16:28:27');
INSERT INTO `login_log_p` VALUES ('D6CA1E8A-0169-4836-9A70-FB2BD4017334', 'show|演示|演示', '127.0.0.1', '2013-03-07 16:47:48');
INSERT INTO `login_log_p` VALUES ('D7363538-F30A-4E6B-9503-6C6D2FF9253E', 'anonymous|席军', '192.168.1.103', '2011-12-05 11:55:45');
INSERT INTO `login_log_p` VALUES ('D7B5CD46-B47D-44FB-AAE0-DF9D85E76A7E', 'anonymous|杜娟丽', '192.168.1.117', '2012-02-16 09:17:30');
INSERT INTO `login_log_p` VALUES ('D7B9ADE7-4253-41EA-AAF5-4C091744D4C6', '001|调试', '192.168.1.106', '2012-05-08 10:14:21');
INSERT INTO `login_log_p` VALUES ('D96D9C9D-9C25-4399-8C98-CA85C3F69C68', 'anonymous|杜娟丽', '192.168.1.117', '2012-02-15 16:49:43');
INSERT INTO `login_log_p` VALUES ('DA0F19B3-3B4C-40AA-8395-F6C4A6DAB41C', '001|调试', '127.0.0.1', '2011-10-07 00:50:32');
INSERT INTO `login_log_p` VALUES ('DA19DAB9-4DA2-421D-8A35-6FB54BABA527', '001|调试', '127.0.0.1', '2011-08-27 14:45:31');
INSERT INTO `login_log_p` VALUES ('DAA6E978-94DE-40E2-9143-9A068EE0A069', '001|调试', '127.0.0.1', '2011-10-01 21:26:20');
INSERT INTO `login_log_p` VALUES ('DAD242B6-F9BD-4A56-A9C1-E80AFCF4FB9F', '001|调试', '192.168.1.102', '2011-09-24 10:01:29');
INSERT INTO `login_log_p` VALUES ('DAD8A373-9BEC-4AC6-9165-75A73C2E8047', '001|调试', '192.168.1.115', '2012-01-31 17:28:39');
INSERT INTO `login_log_p` VALUES ('DBCBECC1-D0E6-43FC-BC75-5690531A701D', '001|调试', '192.168.1.110', '2012-01-20 16:05:37');
INSERT INTO `login_log_p` VALUES ('DBD87F5A-D252-4DE1-A92D-CEACB68D4EA7', '001|调试', '127.0.0.1', '2011-12-06 12:29:42');
INSERT INTO `login_log_p` VALUES ('DC31EE6F-BF18-41CC-949B-0C37C1B6D232', '001|调试', '127.0.0.1', '2011-08-27 10:08:37');
INSERT INTO `login_log_p` VALUES ('DC79BA43-166A-4F90-98F2-9EB93A997584', '001|调试', '127.0.0.1', '2011-10-01 21:16:20');
INSERT INTO `login_log_p` VALUES ('DC94D368-DEF6-408B-893C-0B2054F75D28', '001|调试', '127.0.0.1', '2011-09-18 12:12:54');
INSERT INTO `login_log_p` VALUES ('DCA05949-6101-48E8-ADFD-4623C59AF3EE', 'anonymous|张玉杰', '192.168.1.105', '2012-07-26 09:29:28');
INSERT INTO `login_log_p` VALUES ('DCD1C6AF-5B63-4851-8F17-B5A76A0773C6', '001|调试', '192.168.1.104', '2012-06-19 16:36:03');
INSERT INTO `login_log_p` VALUES ('DDF0E380-B30A-4590-9355-EB53BBFED4C0', '001|调试', '127.0.0.1', '2011-08-19 17:02:26');
INSERT INTO `login_log_p` VALUES ('DE2847D0-D68E-4440-8C3A-261048E32401', '001|调试', '192.168.1.110', '2012-02-17 09:49:15');
INSERT INTO `login_log_p` VALUES ('DE88FBE4-A90A-4139-97E7-F25087DA94C1', 'anonymous|', '192.168.1.112', '2012-05-02 14:19:27');
INSERT INTO `login_log_p` VALUES ('DE8A3A61-F246-4077-AF31-E46525A23885', '001|调试', '127.0.0.1', '2011-10-01 21:26:20');
INSERT INTO `login_log_p` VALUES ('DEE88B12-A68D-4008-AC11-BFB88E2A056D', 'anonymous|', '192.168.1.111', '2012-09-06 14:30:49');
INSERT INTO `login_log_p` VALUES ('DFB63210-FE53-4B14-901A-1FD40666AD74', '001|调试', '192.168.1.115', '2012-02-01 10:59:47');
INSERT INTO `login_log_p` VALUES ('DFB726F7-BCA6-4748-9CB7-C33412EAA1C3', 'anonymous|杜娟丽', '192.168.1.107', '2012-10-31 14:03:52');
INSERT INTO `login_log_p` VALUES ('DFDF5F64-9C3D-4C1A-BF04-02FED6DF71CE', '001|调试', '127.0.0.1', '2011-10-07 21:15:58');
INSERT INTO `login_log_p` VALUES ('DFE9DA5F-F1A3-4CA9-99B7-22B6BEB2C51A', '001|调试', '127.0.0.1', '2011-09-26 00:38:27');
INSERT INTO `login_log_p` VALUES ('DFFC5C20-C72E-40F3-A978-A73826B633F8', '001|调试', '192.168.1.115', '2012-02-02 15:00:04');
INSERT INTO `login_log_p` VALUES ('E0716D13-2F84-4C2B-88E5-D7D56715E08F', 'anonymous|', '192.168.1.103', '2011-10-18 10:03:30');
INSERT INTO `login_log_p` VALUES ('E10FD13C-54E6-44E7-8D28-ACC55DAC766D', '001|调试', '192.168.1.115', '2012-01-31 11:20:31');
INSERT INTO `login_log_p` VALUES ('E12F399F-933E-40E1-8DD8-9E19E7F922E4', '001|调试', '127.0.0.1', '2011-08-27 21:26:26');
INSERT INTO `login_log_p` VALUES ('E1559074-5EB8-4F61-B685-5974E4BAF62B', '001|调试', '127.0.0.1', '2011-09-04 21:44:35');
INSERT INTO `login_log_p` VALUES ('E1A1F33A-1311-4FC3-9FED-656A83A870B0', '001|调试', '192.168.1.103', '2012-10-19 11:37:03');
INSERT INTO `login_log_p` VALUES ('E2038078-7422-41CA-9AAF-C75EB2B5BBF8', '001|调试', '192.168.1.110', '2012-01-17 13:45:16');
INSERT INTO `login_log_p` VALUES ('E2393589-29F7-4B79-9033-65B4D737E1BB', 'anonymous|', '192.168.1.111', '2012-09-06 09:42:06');
INSERT INTO `login_log_p` VALUES ('E26865D8-DDC4-44A9-A5F9-21924D85F55F', '001|调试', '192.168.1.115', '2012-01-21 11:20:56');
INSERT INTO `login_log_p` VALUES ('E282C763-F1E5-4AA6-8479-FE6F2F4A9199', '001|调试', '127.0.0.1', '2011-09-18 11:44:01');
INSERT INTO `login_log_p` VALUES ('E2AAAA62-7EB8-4073-ACD3-092329769845', '001|调试', '127.0.0.1', '2011-10-01 21:42:15');
INSERT INTO `login_log_p` VALUES ('E2E70B24-CBDD-4C0D-AB8F-42400564308A', '001|调试', '192.168.1.112', '2012-05-17 11:23:05');
INSERT INTO `login_log_p` VALUES ('E33C56EA-989D-48E8-961C-6424F6E750F4', '001|调试', '192.168.1.115', '2012-02-03 11:55:41');
INSERT INTO `login_log_p` VALUES ('E3F0AAD9-2F86-40C5-BAB0-764DFF2436D3', '001|调试', '192.168.1.109', '2012-11-09 10:32:07');
INSERT INTO `login_log_p` VALUES ('E3F30387-7554-4172-81E1-9E9386A17FAC', '001|调试', '127.0.0.1', '2011-09-28 23:41:55');
INSERT INTO `login_log_p` VALUES ('E4A122DB-E7AE-4704-A9FE-24F21E4BBC7A', '001|调试', '192.168.1.110', '2012-02-16 16:28:34');
INSERT INTO `login_log_p` VALUES ('E4A2DCE5-829B-4BC0-BEEC-1317C4897754', 'anonymous|', '192.168.1.103', '2012-05-17 09:28:47');
INSERT INTO `login_log_p` VALUES ('E5E67D3A-8042-4D53-9143-792D0B42EFA3', '001|调试', '192.168.1.110', '2012-01-20 14:46:07');
INSERT INTO `login_log_p` VALUES ('E5F96B97-D307-4635-9532-9F845859BAA4', 'anonymous|张玉杰', '192.168.1.104', '2011-12-02 09:22:55');
INSERT INTO `login_log_p` VALUES ('E61FC77D-DB1D-461F-B078-F8254959056F', '001|调试', '192.168.1.104', '2012-10-31 15:55:53');
INSERT INTO `login_log_p` VALUES ('E63CBD91-05CC-4E30-916C-26D4154F7123', '001|调试', '127.0.0.1', '2011-09-26 21:41:34');
INSERT INTO `login_log_p` VALUES ('E666D827-765E-41C1-BCEE-A607DFE3BC09', '001|调试', '127.0.0.1', '2011-10-07 01:26:04');
INSERT INTO `login_log_p` VALUES ('E6CB4CCA-A5E4-4ED8-9CB0-DFC864ACA747', '001|调试', '127.0.0.1', '2011-11-26 11:39:17');
INSERT INTO `login_log_p` VALUES ('E6E9A5B3-EE04-455A-98B5-79889E4908BD', '001|调试', '192.168.1.104', '2012-06-19 16:21:54');
INSERT INTO `login_log_p` VALUES ('E727E5DB-35BE-4007-9C5A-43846669CB86', '001|调试', '192.168.1.115', '2012-02-03 14:58:51');
INSERT INTO `login_log_p` VALUES ('E7A73D46-061F-4BDE-BA99-6A284670BC46', '001|调试', '127.0.0.1', '2011-10-07 01:05:58');
INSERT INTO `login_log_p` VALUES ('E7B3A435-644B-4A2A-B937-A09175A205F1', '001|调试', '192.168.1.115', '2012-01-31 15:04:20');
INSERT INTO `login_log_p` VALUES ('E80CD716-9A5F-4F96-9414-AAE2AB22A7CF', '001|调试', '127.0.0.1', '2011-08-30 05:53:21');
INSERT INTO `login_log_p` VALUES ('E88F862C-4591-4024-B328-6DF77D4F6E85', 'anonymous|', '192.168.1.107', '2012-11-08 13:48:48');
INSERT INTO `login_log_p` VALUES ('E955D3AE-102F-49C3-A2BE-4B3F59D70571', 'anonymous|', '192.168.1.107', '2012-11-08 14:24:39');
INSERT INTO `login_log_p` VALUES ('E997010D-5358-4CFE-A639-563480A44CC4', 'anonymous|杨丽', '192.168.1.106', '2012-03-29 17:46:00');
INSERT INTO `login_log_p` VALUES ('E9F568D1-DF53-4E98-BC3D-411756BB5C1A', '001|调试', '192.168.1.104', '2012-06-19 15:25:39');
INSERT INTO `login_log_p` VALUES ('EA4471E4-9958-4DE5-A5BB-3AD3DE5C254D', '001|调试', '127.0.0.1', '2011-12-02 09:07:32');
INSERT INTO `login_log_p` VALUES ('EA468E0F-4260-45C0-BA55-EB8E58CDABC4', '001|调试', '192.168.1.100', '2012-07-19 10:40:44');
INSERT INTO `login_log_p` VALUES ('EA7191E5-A0C6-44AF-9F2B-74A8CCF5582A', '001|调试', '127.0.0.1', '2011-08-27 11:03:09');
INSERT INTO `login_log_p` VALUES ('EA98D4E9-8F0A-4B77-86F1-C979E10C6609', 'anonymous|', '192.168.1.112', '2012-06-01 09:45:42');
INSERT INTO `login_log_p` VALUES ('EACD5B54-E4A3-46E6-B17C-933633A3E3E4', 'anonymous|', '192.168.1.103', '2012-05-17 08:45:24');
INSERT INTO `login_log_p` VALUES ('EB0EDA52-0DD0-4B0E-81EB-65A7201B7619', '001|调试', '192.168.1.115', '2012-02-03 13:35:04');
INSERT INTO `login_log_p` VALUES ('EB978468-10A7-433C-B325-7FE214553A0D', 'anonymous|杨丽', '192.168.1.106', '2012-03-29 16:32:59');
INSERT INTO `login_log_p` VALUES ('EBB6DE30-F1E2-4537-8BEB-FACD5608A333', '001|调试', '192.168.1.102', '2012-07-23 13:30:26');
INSERT INTO `login_log_p` VALUES ('EBF14F50-F3AF-4E90-AE7F-CC427A5E12D4', '001|调试', '127.0.0.1', '2011-08-28 22:28:45');
INSERT INTO `login_log_p` VALUES ('EC304D8D-0065-418C-BA7F-639F3BFEB6B4', '001|调试', '192.168.1.103', '2011-11-26 13:17:08');
INSERT INTO `login_log_p` VALUES ('EC6807D4-F867-41E2-8A7B-1D474B92C75E', '001|调试', '127.0.0.1', '2011-10-06 17:01:59');
INSERT INTO `login_log_p` VALUES ('EC6BF082-778A-45F5-99E1-1410809B98A5', '001|调试', '192.168.1.110', '2012-02-09 09:05:38');
INSERT INTO `login_log_p` VALUES ('EC7B0C73-5607-4AE2-B3BE-3846E34C8562', '001|调试', '192.168.1.103', '2012-01-18 11:38:48');
INSERT INTO `login_log_p` VALUES ('EC899AFD-AB7D-4FF6-B6B8-37B5EB2FBF7C', '001|调试', '127.0.0.1', '2011-10-06 17:22:04');
INSERT INTO `login_log_p` VALUES ('ECA86C65-271B-494C-B0F2-3512F8CFE098', '001|调试', '127.0.0.1', '2011-10-06 17:32:08');
INSERT INTO `login_log_p` VALUES ('ED3F62C5-7FF2-46AA-A8A0-951251C03352', '001|调试', '192.168.1.109', '2012-11-23 12:45:47');
INSERT INTO `login_log_p` VALUES ('EE02E003-3577-4580-A766-433FDC64C3BA', '001|调试', '192.168.1.103', '2012-09-11 10:13:43');
INSERT INTO `login_log_p` VALUES ('EE3601FB-49AF-4B8B-B1FF-0F8CDC7372D8', '001|调试', '192.168.1.100', '2012-07-11 11:18:49');
INSERT INTO `login_log_p` VALUES ('EEB2BCFB-9DCA-4F94-B7D7-2848C47C9C75', '001|调试', '192.168.1.115', '2012-02-03 15:11:50');
INSERT INTO `login_log_p` VALUES ('EEEA24ED-D0F0-40E1-A9FB-73EF3559D959', '001|调试', '192.168.1.110', '2012-01-12 17:03:42');
INSERT INTO `login_log_p` VALUES ('EF250ED1-8845-4145-81B9-5814879A8113', 'anonymous|杜娟丽', '192.168.1.101', '2012-08-31 09:58:27');
INSERT INTO `login_log_p` VALUES ('EF26C649-6794-405D-90DF-95204333C6DA', '001|调试', '192.168.1.110', '2012-02-27 11:02:08');
INSERT INTO `login_log_p` VALUES ('F03F9CF0-C064-4EC7-B4B1-58C24CADD663', '001|调试', '192.168.1.103', '2012-10-19 09:11:15');
INSERT INTO `login_log_p` VALUES ('F043C60F-1253-4998-A988-ECC120FDFF58', '001|调试', '192.168.1.110', '2012-02-16 15:40:11');
INSERT INTO `login_log_p` VALUES ('F0CB7417-E096-4F51-A09C-93F3A8881391', '001|调试', '127.0.0.1', '2011-08-21 10:36:49');
INSERT INTO `login_log_p` VALUES ('F14ACBD8-24B0-4763-901B-F4C65C607161', '001|调试', '127.0.0.1', '2011-12-06 13:06:15');
INSERT INTO `login_log_p` VALUES ('F1A7B6E7-1260-4745-93D5-7CA262BE6AB4', '001|调试', '127.0.0.1', '2011-09-23 00:07:42');
INSERT INTO `login_log_p` VALUES ('F28C45ED-01F0-4D4F-AF44-2F77F1A8AC7D', '001|调试', '192.168.1.109', '2012-11-23 10:40:14');
INSERT INTO `login_log_p` VALUES ('F2CE15FF-5E97-4255-ABE0-1F61F9EACE56', '001|调试', '192.168.1.103', '2012-10-18 16:38:38');
INSERT INTO `login_log_p` VALUES ('F2ECE4D6-1318-4EFF-8614-F408E0AC3B5F', '001|调试', '192.168.1.103', '2011-10-18 10:54:56');
INSERT INTO `login_log_p` VALUES ('F38D67BA-86C1-4CD9-AAD2-EB5E7C0CA0FC', 'anonymous|席军', '192.168.1.103', '2011-12-02 17:13:42');
INSERT INTO `login_log_p` VALUES ('F3C4A7A8-C96E-492D-8BD5-C9ABDC942CB9', '001|调试', '192.168.1.115', '2012-01-31 10:15:25');
INSERT INTO `login_log_p` VALUES ('F42D79EF-4833-4B90-8750-23E0218CE8E0', '001|调试', '192.168.1.104', '2012-06-19 13:37:46');
INSERT INTO `login_log_p` VALUES ('F43B3C5E-578E-4553-A349-9401354E3016', '001|调试', '192.168.1.109', '2012-11-23 13:14:57');
INSERT INTO `login_log_p` VALUES ('F44A09B6-D1E0-459A-B484-8D6CA49849AD', 'anonymous|杜娟丽', '192.168.1.107', '2012-10-31 10:12:02');
INSERT INTO `login_log_p` VALUES ('F482FFA4-D365-4980-B272-64DDEE996330', 'anonymous|张玉杰', '192.168.1.104', '2011-12-02 09:34:37');
INSERT INTO `login_log_p` VALUES ('F4FC845F-3BE3-45CC-8FC6-65427C59862E', 'anonymous|田燕', '192.168.1.103', '2012-09-10 08:40:15');
INSERT INTO `login_log_p` VALUES ('F591D5BC-AEA5-40D8-9122-D723755163E6', '001|调试', '192.168.1.110', '2012-02-16 14:48:07');
INSERT INTO `login_log_p` VALUES ('F61A6658-0F7E-4713-9282-5993722E6016', '001|调试', '192.168.1.103', '2012-10-18 16:59:01');
INSERT INTO `login_log_p` VALUES ('F65413A5-6CAD-493E-A047-3348D564BDDD', 'anonymous|', '192.168.1.114', '2012-01-20 12:01:05');
INSERT INTO `login_log_p` VALUES ('F65E4D2D-B2D2-40E2-8CA9-CCE4EC168DCF', '001|调试', '192.168.1.109', '2012-11-09 09:53:36');
INSERT INTO `login_log_p` VALUES ('F6C043C3-3C2F-4102-90E5-A4A195F7F7A7', 'anonymous|', '192.168.1.117', '2012-02-16 15:26:18');
INSERT INTO `login_log_p` VALUES ('F6F98623-7D9D-4B22-AF50-23F4AE5FC749', '001|调试', '127.0.0.1', '2011-09-26 01:44:50');
INSERT INTO `login_log_p` VALUES ('F712DBA9-9872-4A36-BC19-60D98B53EAE8', '001|调试', '127.0.0.1', '2011-10-01 23:10:14');
INSERT INTO `login_log_p` VALUES ('F7750A12-38B1-49C5-A4B4-3CA4698C2ABE', '001|调试', '127.0.0.1', '2011-08-27 14:25:01');
INSERT INTO `login_log_p` VALUES ('F79B8FBA-208D-49B6-8B75-CE8E8C713BDA', '001|调试', '192.168.1.114', '2012-03-31 17:17:35');
INSERT INTO `login_log_p` VALUES ('F8283920-732F-4FD7-86F4-97FA7D2D5402', '001|调试', '192.168.1.110', '2012-01-17 14:18:30');
INSERT INTO `login_log_p` VALUES ('F858F280-E2DD-4090-B88F-F71218EE788D', 'anonymous|', '192.168.1.111', '2012-09-06 14:44:42');
INSERT INTO `login_log_p` VALUES ('F86060CB-285C-42D1-9FF5-4F1F98963DF5', 'anonymous|张玉杰', '192.168.1.104', '2011-12-02 09:38:36');
INSERT INTO `login_log_p` VALUES ('F863EAE5-5172-4F55-A5D7-E3AC933428CA', '001|调试', '127.0.0.1', '2011-08-26 21:51:02');
INSERT INTO `login_log_p` VALUES ('F86BF48D-832F-45A4-B268-2F099B2388F6', 'anonymous|', '192.168.1.100', '2012-06-27 09:38:20');
INSERT INTO `login_log_p` VALUES ('F8B73CCA-1F30-4FCF-BF11-B1027E72B44A', '001|调试', '192.168.1.106', '2012-10-30 13:43:38');
INSERT INTO `login_log_p` VALUES ('F8DC75E2-9928-43AD-A798-F096CF0FE4E4', '001|调试', '192.168.1.102', '2012-09-19 10:40:33');
INSERT INTO `login_log_p` VALUES ('F8EA04C3-2A70-45B7-B43A-7EC2D40B524C', '001|调试', '192.168.1.109', '2012-11-23 11:10:35');
INSERT INTO `login_log_p` VALUES ('F8FC5785-2770-4D40-8771-5D051315769C', 'anonymous|', '192.168.1.107', '2012-05-02 16:29:10');
INSERT INTO `login_log_p` VALUES ('F93A29A4-0CAB-4E63-A3CB-32C7734D890F', '001|调试', '127.0.0.1', '2013-02-22 13:31:24');
INSERT INTO `login_log_p` VALUES ('F93F1AA3-EBA8-4CE9-992C-D8395453FABF', 'anonymous|席军', '192.168.1.103', '2011-12-05 11:25:08');
INSERT INTO `login_log_p` VALUES ('F982F1FB-3AC9-4C96-9CCB-9998227D4AD5', '001|调试', '192.168.1.110', '2012-01-18 13:24:21');
INSERT INTO `login_log_p` VALUES ('F996D3A5-78F1-4FF5-BBF4-9CB26011BBC9', '001|调试', '192.168.1.104', '2012-11-02 09:45:16');
INSERT INTO `login_log_p` VALUES ('FA1FF051-EB8A-472A-B736-E765A39DAC43', '001|调试', '127.0.0.1', '2011-10-01 21:16:20');
INSERT INTO `login_log_p` VALUES ('FB9AC280-4A39-42F1-8932-1E274D3E9AE7', '001|调试', '192.168.1.104', '2012-06-19 09:37:10');
INSERT INTO `login_log_p` VALUES ('FBA5F9BB-62D6-49A4-BBCB-9D0FB08097BE', '001|调试', '192.168.1.115', '2012-01-29 14:47:58');
INSERT INTO `login_log_p` VALUES ('FBB60CF4-C534-4DE3-96F3-27705C89D10C', '001|调试', '127.0.0.1', '2011-08-21 22:32:26');
INSERT INTO `login_log_p` VALUES ('FBBE9E81-1698-49D9-9C66-BE05616CEAC8', 'anonymous|', '192.168.1.107', '2012-11-08 09:50:59');
INSERT INTO `login_log_p` VALUES ('FBF5E8E8-CFCF-4D79-B79A-53C1FA5E9E4A', '001|调试', '127.0.0.1', '2011-08-28 02:20:48');
INSERT INTO `login_log_p` VALUES ('FC02A4D5-D905-462B-BA0A-9A14413DA1B8', '001|调试', '192.168.1.103', '2012-01-18 11:40:36');
INSERT INTO `login_log_p` VALUES ('FC1EC74D-F579-42D5-8F1A-1CDAAE50FE37', 'anonymous|', '127.0.0.1', '2012-11-27 11:01:52');
INSERT INTO `login_log_p` VALUES ('FCC18B3C-C1C2-4895-8C4D-EEFE46814C84', 'anonymous|', '192.168.1.107', '2012-11-08 09:35:06');
INSERT INTO `login_log_p` VALUES ('FCF3C341-2161-499B-9E35-8C88C18AAB7F', '001|调试', '127.0.0.1', '2011-09-25 22:26:41');
INSERT INTO `login_log_p` VALUES ('FD1067D4-0720-490C-AD39-5D789CF26C66', '001|调试', '192.168.1.110', '2012-01-20 15:08:41');
INSERT INTO `login_log_p` VALUES ('FD53AD3F-43B0-42F8-9924-4DC49D1CCC4F', '001|调试', '192.168.1.110', '2012-01-18 11:34:40');
INSERT INTO `login_log_p` VALUES ('FDA71752-F68E-43A7-B95D-B8D6E3B29A85', '001|调试', '192.168.1.109', '2012-11-23 14:36:00');
INSERT INTO `login_log_p` VALUES ('FDEEE436-6750-4CA6-9DA1-64D29C1E296D', '001|调试', '127.0.0.1', '2011-10-07 00:08:10');
INSERT INTO `login_log_p` VALUES ('FDF98AEE-EB62-477D-ABB0-DB8F6457B4DC', '001|调试', '127.0.0.1', '2011-10-01 21:26:46');
INSERT INTO `login_log_p` VALUES ('FE880037-9513-454C-B380-E9AB9393A127', 'anonymous|杜娟丽', '192.168.1.103', '2012-09-14 17:34:22');
INSERT INTO `login_log_p` VALUES ('FEFA7172-4A11-42E8-911D-49D103177A39', '001|调试', '192.168.1.104', '2012-11-01 09:03:21');
INSERT INTO `login_log_p` VALUES ('FEFC9AE5-4FD3-4442-98FE-596E4BDD9411', '001|调试', '192.168.1.110', '2012-01-31 16:37:57');
INSERT INTO `login_log_p` VALUES ('FF86F2EE-00BF-4F9D-A47A-08FD5FA776FE', '001|调试', '192.168.1.106', '2012-05-08 10:14:22');
INSERT INTO `login_log_p` VALUES ('FFB27091-10DB-4C44-AE3C-E4D38F56751A', '001|调试', '192.168.1.110', '2012-02-16 15:38:42');
INSERT INTO `login_log_p` VALUES ('FFF5AD64-6980-43A2-94DC-86D6824A4C0C', '001|调试', '192.168.1.115', '2012-02-02 15:17:13');
INSERT INTO `login_log_p` VALUES ('FFFD7F8E-CEBF-4D6F-B35E-F93EA1A0DDAF', '001|调试', '127.0.0.1', '2011-08-24 23:19:34');

-- ----------------------------
-- Table structure for `manage_area_p`
-- ----------------------------
DROP TABLE IF EXISTS `manage_area_p`;
CREATE TABLE `manage_area_p` (
  `MANAGE_AREA_ID` varchar(40) NOT NULL,
  `USER_ID` varchar(40) DEFAULT NULL,
  `MADEPT_ID` varchar(40) DEFAULT NULL,
  `MAUSER_ID` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`MANAGE_AREA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_area_p
-- ----------------------------

-- ----------------------------
-- Table structure for `module_p`
-- ----------------------------
DROP TABLE IF EXISTS `module_p`;
CREATE TABLE `module_p` (
  `MODULE_ID` varchar(40) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `PARENT_ID` varchar(40) DEFAULT NULL,
  `PARENT_NAME` varchar(100) DEFAULT NULL,
  `LAYER_NUM` int(11) DEFAULT NULL,
  `IS_LEAF` char(1) DEFAULT NULL,
  `ICO` varchar(20) DEFAULT NULL,
  `CURL` varchar(150) DEFAULT NULL,
  `CTYPE` char(1) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `BELONG` varchar(100) DEFAULT NULL,
  `CWHICH` char(1) DEFAULT NULL,
  `QUOTE_NUM` int(11) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  `CNOTE` varchar(30) DEFAULT NULL,
  `CREATED_BY` varchar(40) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(40) DEFAULT NULL,
  `UPDATED_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_p
-- ----------------------------
INSERT INTO `module_p` VALUES ('01', '系统功能模块', '-1', null, '0', '0', null, null, '2', '1', null, null, '0', '1', null, null, '2009-05-24 18:29:55', null, '2009-05-24 18:29:55');
INSERT INTO `module_p` VALUES ('0101', '系统首页', '01', '系统功能模块', '1', '0', null, '/home/main.do', '2', '1', 'title.jsp', '', '0', '1', null, null, '2009-05-24 18:29:55', '001', '2010-10-31 22:13:06');
INSERT INTO `module_p` VALUES ('010104', '我的留言板', '0101', '系统首页', '2', '0', null, '/home/olmsgListAction.do', '3', '1', '/home/left.jsp', '', '0', '4', null, '001', '2010-02-22 17:29:24', '001', '2011-02-23 09:43:50');
INSERT INTO `module_p` VALUES ('01010402', '新建', '010104', '我的即时贴', '3', '1', 'new', '/home/olmsgCreateAction.do', '4', '1', '/home/olmsg/olmsgList.jsp', '', '0', '1', null, '001', '2010-02-22 17:31:41', '001', '2010-02-23 09:06:27');
INSERT INTO `module_p` VALUES ('01010403', '位置', '010104', '我的留言板', '3', '1', 'save', '/home/olmsgPosSaveAction.do', '4', '1', '/home/olmsg/olmsgList.jsp', '', '0', '2', '保存留言窗口的位置信息', '001', '2010-02-23 08:59:30', '001', '2010-11-06 10:08:16');
INSERT INTO `module_p` VALUES ('010107', '系统使用反馈', '0101', '系统首页', '2', '0', null, '/baseinfo/toUseFeedbackListAction.do', '3', '1', '/home/left.jsp', '0', '0', '7', null, '001', '2010-12-20 15:38:13', '001', '2011-02-23 09:43:50');
INSERT INTO `module_p` VALUES ('01010702', '查看', '010107', '系统使用反馈', '3', '1', 'view', '/baseinfo/toUseFeedbackViewAction.do', '4', '1', '/baseinfo/usefeedback/jUseFeedbackList.jsp', '0', '0', '1', null, '001', '2010-12-20 15:44:13', null, '2010-12-20 17:21:12');
INSERT INTO `module_p` VALUES ('01010703', '新建', '010107', '系统使用反馈', '3', '0', 'new', '/baseinfo/toUseFeedbackCreateAction.do', '4', '1', '/baseinfo/usefeedback/jUseFeedbackList.jsp', '0', '0', '2', null, '001', '2010-12-20 15:44:13', null, '2010-12-20 17:21:12');
INSERT INTO `module_p` VALUES ('0101070302', '确定', '01010703', '新建', '4', '1', 'save', '/baseinfo/doUseFeedbackCreateSaveAction.do', '4', '1', '/baseinfo/usefeedback/jUseFeedbackCreate.jsp', '0', '0', '1', null, '001', '2010-12-20 15:45:10', null, '2010-12-20 17:21:12');
INSERT INTO `module_p` VALUES ('0101070303', '暂存', '01010703', '新建', '4', '1', 'save', '/baseinfo/doUseFeedbackCreateSaveAction.do?flag=tempsuccess', '4', '1', '/baseinfo/usefeedback/jUseFeedbackCreate.jsp', '0', '0', '2', null, '001', '2010-12-20 15:45:10', null, '2010-12-20 17:21:12');
INSERT INTO `module_p` VALUES ('01010704', '修改', '010107', '系统使用反馈', '3', '0', 'update', '/baseinfo/toUseFeedbackUpdateAction.do', '4', '1', '/baseinfo/usefeedback/jUseFeedbackList.jsp', '0', '0', '3', null, '001', '2010-12-20 15:44:13', null, '2010-12-20 17:21:12');
INSERT INTO `module_p` VALUES ('0101070402', '确定', '01010704', '修改', '4', '1', 'save', '/baseinfo/doUseFeedbackUpdateSaveAction.do', '4', '1', '/baseinfo/usefeedback/jUseFeedbackUpdate.jsp', '0', '0', '1', null, '001', '2010-12-20 15:45:49', null, '2010-12-20 17:21:12');
INSERT INTO `module_p` VALUES ('0101070403', '暂存', '01010704', '修改', '4', '1', 'save', '/baseinfo/doUseFeedbackUpdateSaveAction.do?flag=tempsuccess', '4', '1', '/baseinfo/usefeedback/jUseFeedbackUpdate.jsp', '0', '0', '2', null, '001', '2010-12-20 15:45:49', null, '2010-12-20 17:21:12');
INSERT INTO `module_p` VALUES ('01010705', '删除', '010107', '系统使用反馈', '3', '1', 'delete', '/baseinfo/doUseFeedbackDeleteAction.do', '4', '1', '/baseinfo/usefeedback/jUseFeedbackList.jsp', '0', '0', '4', null, '001', '2010-12-20 15:44:13', null, '2010-12-20 17:21:12');
INSERT INTO `module_p` VALUES ('01010706', '处理', '010107', '系统使用反馈', '3', '0', 'new', '/baseinfo/toUseFeedbackAnswerAction.do', '4', '1', '/baseinfo/usefeedback/jUseFeedbackList.jsp', '0', '0', '5', null, '001', '2010-12-20 16:56:24', '001', '2010-12-21 09:38:33');
INSERT INTO `module_p` VALUES ('0101070602', '确定', '01010706', '处理', '4', '1', 'save', '/baseinfo/doUseFeedbackAnswerSaveAction.do', '4', '1', '/baseinfo/usefeedback/jUseFeedbackAnswer.jsp', '0', '0', '1', null, '001', '2010-12-21 09:43:35', '001', '2010-12-21 09:48:32');
INSERT INTO `module_p` VALUES ('0101070603', '暂存', '01010706', '处理', '4', '1', 'save', '/baseinfo/doUseFeedbackAnswerSaveAction.do?flag=tempsuccess', '4', '1', '/baseinfo/usefeedback/jUseFeedbackAnswer.jsp', '0', '0', '2', null, '001', '2010-12-21 09:43:35', '001', '2010-12-21 09:44:50');
INSERT INTO `module_p` VALUES ('0103', '基础信息', '01', '系统功能模块', '1', '0', null, '/baseinfo/welcome.do', '2', '1', 'title.jsp', '', '0', '17', null, null, '2009-05-24 18:29:55', '001', '2010-11-10 11:18:24');
INSERT INTO `module_p` VALUES ('010301', '问题反馈与处理', '0103', '基础信息', '2', '0', 'view', '/baseinfo/toQuestionListListAction.do', '3', '1', '/baseinfo/left.jsp', '', '0', '5', '', null, '2009-06-18 21:22:55', '001', '2010-11-10 17:16:45');
INSERT INTO `module_p` VALUES ('01030101', '查看', '010301', '问题处理', '3', '1', 'view', '/baseinfo/toQuestionListViewAction.do', '4', '1', '/baseinfo/questionlist/questionListList.jsp', null, '0', '1', null, null, '2009-06-18 21:23:05', null, '2009-06-18 21:23:05');
INSERT INTO `module_p` VALUES ('01030102', '新建', '010301', '问题处理', '3', '1', 'new', '/baseinfo/toQuestionListCreateAction.do', '4', '1', '/baseinfo/questionlist/questionListList.jsp', null, '0', '2', null, null, '2009-06-18 21:23:05', null, '2009-06-18 21:23:05');
INSERT INTO `module_p` VALUES ('0103010201', '确定', '01030102', '新建', '4', '1', 'save', '/baseinfo/doQuestionListCreateSaveAction.do', '4', '1', '/baseinfo/questionlist/questionListCreate.jsp', null, '0', '3', null, null, '2009-06-18 21:23:05', null, '2009-06-18 21:23:05');
INSERT INTO `module_p` VALUES ('01030103', '修改', '010301', '问题处理', '3', '1', 'update', '/baseinfo/toQuestionListUpdateAction.do', '4', '1', '/baseinfo/questionlist/questionListList.jsp', null, '0', '4', null, null, '2009-06-18 21:23:05', null, '2009-06-18 21:23:05');
INSERT INTO `module_p` VALUES ('0103010301', '确定', '01030103', '修改', '4', '1', 'save', '/baseinfo/doQuestionListUpdateSaveAction.do', '4', '1', '/baseinfo/questionlist/questionListUpdate.jsp', null, '0', '5', null, null, '2009-06-18 21:23:05', null, '2009-06-18 21:23:05');
INSERT INTO `module_p` VALUES ('01030104', '删除', '010301', '问题处理', '3', '1', 'delete', '/baseinfo/doQuestionListDeleteAction.do', '4', '1', '/baseinfo/questionlist/questionListList.jsp', null, '0', '6', null, null, '2009-06-18 21:23:05', null, '2009-06-18 21:23:05');
INSERT INTO `module_p` VALUES ('01030105', '查询', '010301', '问题处理', '3', '1', 'search', '/baseinfo/toQuestionListSearchAction.do', '4', '1', '/baseinfo/questionlist/questionListList.jsp', null, '0', '7', null, null, '2009-06-18 21:23:05', null, '2009-06-18 21:23:05');
INSERT INTO `module_p` VALUES ('0103010501', '执行查询', '01030105', '查询', '4', '1', 'dosearch', '/baseinfo/doQuestionListQueryAction.do', '4', '1', '/baseinfo/questionlist/questionListSearch.jsp', null, '0', '8', null, null, '2009-06-18 21:23:05', null, '2009-06-18 21:23:05');
INSERT INTO `module_p` VALUES ('010303', '基础代码', '0103', '基础信息', '2', '0', 'view', 'baseinfo', '3', '1', '/baseinfo/left.jsp', '', '0', '2', '', '001', '2010-02-13 13:47:42', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('01030301', '确定', '010303', '基础代码', '3', '1', 'save', '/baseinfo/doBaseCodeSaveAction.do', '4', '1', '/baseinfo/basecode/jBaseCode.jsp', '', '0', '1', null, '001', '2010-02-13 14:26:02', '001', '2010-03-10 17:08:07');
INSERT INTO `module_p` VALUES ('010304', '系统代码', '0103', '基础信息', '2', '0', 'view', 'baseinfo', '3', '1', '/baseinfo/left.jsp', '', '0', '3', '', '001', '2010-02-13 13:47:42', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('01030402', '确定', '010304', '系统代码', '3', '1', 'save', '/baseinfo/doSysCodeSaveAction.do', '4', '1', '/baseinfo/syscode/jSysCode.jsp', '', '0', '1', null, '001', '2010-02-13 14:38:43', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('010305', '控制面板配置', '0103', '基础信息', '2', '0', 'view', '../baseinfo/toSysOptionAction.do', '3', '1', '/baseinfo/left.jsp', '', '0', '4', null, '001', '2010-03-10 10:47:12', '001', '2010-03-10 13:27:35');
INSERT INTO `module_p` VALUES ('01030502', '确定', '010305', '控制面板配置管理', '3', '1', 'save', '/baseinfo/doSysOptionSaveAction.do', '4', '1', '/baseinfo/sysoption/jSysOption.jsp', '', '0', '1', null, '001', '2010-03-10 10:52:01', '001', '2010-03-10 11:22:51');
INSERT INTO `module_p` VALUES ('01030503', '生成', '010305', '控制面板配置管理', '3', '1', 'accept', '/baseinfo/doSysOptionMakeAction.do', '4', '1', '/baseinfo/sysoption/jSysOption.jsp', '', '0', '2', '生成【控制面板】页面', '001', '2010-03-10 10:52:01', '001', '2010-03-10 13:18:50');
INSERT INTO `module_p` VALUES ('010306', '厂家信息', '0103', '基础信息', '2', '0', 'view', 'baseinfo', '3', '1', '/baseinfo/left.jsp', '', '0', '6', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01030602', '查看', '010306', '厂家信息', '3', '1', 'view', '/basicinfo/toFactoryViewAction.do', '4', '1', '/basicinfo/factory/jFactoryList.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01030603', '新建', '010306', '厂家信息', '3', '0', 'new', '/basicinfo/toFactoryCreateAction.do', '4', '1', '/basicinfo/factory/jFactoryList.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0103060302', '确定', '01030603', '新建', '4', '1', 'save', '/basicinfo/doFactoryCreateSaveAction.do', '4', '1', '/basicinfo/factory/jFactoryCreate.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0103060303', '暂存', '01030603', '新建', '4', '1', 'save', '/basicinfo/doFactoryCreateSaveAction.do?flag=tempsuccess', '4', '1', '/basicinfo/factory/jFactoryCreate.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01030604', '修改', '010306', '厂家信息', '3', '0', 'update', '/basicinfo/toFactoryUpdateAction.do', '4', '1', '/basicinfo/factory/jFactoryList.jsp', '', '0', '3', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0103060402', '确定', '01030604', '修改', '4', '1', 'save', '/basicinfo/doFactoryUpdateSaveAction.do', '4', '1', '/basicinfo/factory/jFactoryUpdate.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0103060403', '暂存', '01030604', '修改', '4', '1', 'save', '/basicinfo/doFactoryUpdateSaveAction.do?flag=tempsuccess', '4', '1', '/basicinfo/factory/jFactoryUpdate.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01030605', '删除', '010306', '厂家信息', '3', '1', 'delete', '/basicinfo/doFactoryDeleteAction.do', '4', '1', '/basicinfo/factory/jFactoryList.jsp', '', '0', '4', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01030606', '启用', '010306', '厂家信息', '3', '1', 'new', '/basicinfo/doFactoryRunAction.do', '4', '1', '/basicinfo/factory/jFactoryList.jsp', '', '0', '5', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01030607', '停止', '010306', '厂家信息', '3', '1', 'new', '/basicinfo/doFactoryStopAction.do', '4', '1', '/basicinfo/factory/jFactoryList.jsp', '', '0', '6', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('010307', '产品信息', '0103', '基础信息', '2', '0', 'view', 'baseinfo', '3', '1', '/baseinfo/left.jsp', '', '0', '7', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01030702', '查看', '010307', '产品信息', '3', '1', 'view', '/basicinfo/toItemsViewAction.do', '4', '1', '/basicinfo/items/jItemsList.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01030703', '新建', '010307', '产品信息', '3', '0', 'new', '/basicinfo/toItemsCreateAction.do', '4', '1', '/basicinfo/items/jItemsList.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0103070302', '确定', '01030703', '新建', '4', '1', 'save', '/basicinfo/doItemsCreateSaveAction.do', '4', '1', '/basicinfo/items/jItemsCreate.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0103070303', '暂存', '01030703', '新建', '4', '1', 'save', '/basicinfo/doItemsCreateSaveAction.do?flag=tempsuccess', '4', '1', '/basicinfo/items/jItemsCreate.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01030704', '修改', '010307', '产品信息', '3', '0', 'update', '/basicinfo/toItemsUpdateAction.do', '4', '1', '/basicinfo/items/jItemsList.jsp', '', '0', '3', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0103070402', '确定', '01030704', '修改', '4', '1', 'save', '/basicinfo/doItemsUpdateSaveAction.do', '4', '1', '/basicinfo/items/jItemsUpdate.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0103070403', '暂存', '01030704', '修改', '4', '1', 'save', '/basicinfo/doItemsUpdateSaveAction.do?flag=tempsuccess', '4', '1', '/basicinfo/items/jItemsUpdate.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01030705', '删除', '010307', '产品信息', '3', '1', 'delete', '/basicinfo/doItemsDeleteAction.do', '4', '1', '/basicinfo/items/jItemsList.jsp', '', '0', '4', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('010308', '模板配置', '0103', '基础信息', '2', '1', 'view', '/common/toUserTempAction.do', '3', '1', '/baseinfo/left.jsp', '', '0', '6', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0104', '系统管理', '01', '系统功能模块', '1', '0', null, '/system_admin/welcome.do', '2', '1', 'title.jsp', '', '0', '18', null, null, '2009-05-24 18:29:55', '001', '2010-11-10 11:18:24');
INSERT INTO `module_p` VALUES ('010401', '权限管理', '0104', '系统管理', '2', '0', 'users_family.png', null, '3', '1', '/system_admin/left.jsp', '', '0', '1', null, null, '2009-05-24 18:29:55', '001', '2010-03-11 16:07:22');
INSERT INTO `module_p` VALUES ('01040101', '部门管理', '010401', '权限管理', '3', '0', '', '/system_admin/organizationListAction.do', '3', '1', '/system_admin/left.jsp', '', '0', '1', '', null, '2009-05-24 18:29:55', null, '2009-05-24 18:29:55');
INSERT INTO `module_p` VALUES ('0104010101', '查看', '01040101', '组织机构', '4', '1', 'view', '/system_admin/deptViewAction.do', '4', '1', '/system_admin/deptList.jsp', null, '0', '1', null, null, '2009-06-02 23:31:15', null, '2009-06-02 23:31:15');
INSERT INTO `module_p` VALUES ('0104010102', '新建', '01040101', '组织机构', '4', '1', 'new', '/system_admin/deptCreateAction.do', '4', '1', '/system_admin/deptList.jsp', null, '0', '1', null, null, '2009-06-02 23:31:15', null, '2009-06-02 23:31:15');
INSERT INTO `module_p` VALUES ('0104010103', '修改', '01040101', '组织机构', '4', '1', 'update', '/system_admin/deptUpdateAction.do', '4', '1', '/system_admin/deptList.jsp', null, '0', '1', null, null, '2009-06-02 23:31:15', null, '2009-06-02 23:31:15');
INSERT INTO `module_p` VALUES ('0104010104', '删除', '01040101', '组织机构', '4', '1', 'delete', '/system_admin/deptDeleteAction.do', '4', '1', '/system_admin/deptList.jsp', null, '0', '1', null, null, '2009-06-02 23:31:15', null, '2009-06-02 23:31:15');
INSERT INTO `module_p` VALUES ('0104010105', '查询', '01040101', '组织机构', '4', '1', 'search', '/system_admin/deptSearchAction.do', '4', '1', '/system_admin/deptList.jsp', null, '0', '1', null, null, '2009-06-02 23:31:15', null, '2009-06-02 23:31:15');
INSERT INTO `module_p` VALUES ('0104010106', '排序', '01040101', '组织机构', '4', '1', 'search', '/system_admin/deptSortAction.do', '4', '1', '/system_admin/deptList.jsp', '', '0', '6', null, null, '2009-06-03 19:34:04', '001', '2010-11-25 15:54:42');
INSERT INTO `module_p` VALUES ('01040102', '用户管理', '010401', '权限管理', '3', '0', '', '/system_admin/userListAction.do', '3', '1', '/system_admin/left.jsp', '', '0', '6', '', null, '2009-05-24 18:29:55', null, '2009-05-24 18:29:55');
INSERT INTO `module_p` VALUES ('0104010201', '查看', '01040102', '用户管理', '4', '1', 'view', '/system_admin/userViewAction.do', '4', '1', '/system_admin/userList.jsp', null, '0', '1', null, null, '2009-06-06 18:29:00', null, '2009-06-06 18:29:00');
INSERT INTO `module_p` VALUES ('0104010202', '新建', '01040102', '用户管理', '4', '1', 'new', '/system_admin/userCreateAction.do', '4', '1', '/system_admin/userList.jsp', null, '0', '1', null, null, '2009-06-06 18:29:00', null, '2009-06-06 18:29:00');
INSERT INTO `module_p` VALUES ('0104010203', '修改', '01040102', '用户管理', '4', '1', 'update', '/system_admin/userUpdateAction.do', '4', '1', '/system_admin/userList.jsp', null, '0', '1', null, null, '2009-06-06 18:29:00', null, '2009-06-06 18:29:00');
INSERT INTO `module_p` VALUES ('0104010204', '删除', '01040102', '用户管理', '4', '1', 'delete', '/system_admin/userDeleteAction.do', '4', '1', '/system_admin/userList.jsp', null, '0', '1', null, null, '2009-06-06 18:29:00', null, '2009-06-06 18:29:00');
INSERT INTO `module_p` VALUES ('0104010205', '查询', '01040102', '用户管理', '4', '1', 'search', '/system_admin/userSearchAction.do', '4', '1', '/system_admin/userList.jsp', null, '0', '1', null, null, '2009-06-06 18:29:00', null, '2009-06-06 18:29:00');
INSERT INTO `module_p` VALUES ('0104010206', '排序', '01040102', '用户管理', '4', '1', 'search', '/system_admin/userSortAction.do', '4', '1', '/system_admin/userList.jsp', null, '0', '1', null, null, '2009-06-06 18:29:00', null, '2009-06-06 18:29:00');
INSERT INTO `module_p` VALUES ('0104010207', '重置密码', '01040102', '用户管理', '4', '1', 'dosearch', '/system_admin/userResetPassAction.do', '4', '1', '/system_admin/userList.jsp', null, '0', '1', null, null, '2009-06-06 22:14:38', null, '2009-06-06 22:14:38');
INSERT INTO `module_p` VALUES ('0104010208', '启用', '01040102', '用户管理', '4', '1', 'accept', '/system_admin/userToUseAction.do', '4', '1', '/system_admin/userList.jsp', '', '0', '8', '', null, '2009-06-06 23:09:53', null, '2009-06-06 23:09:53');
INSERT INTO `module_p` VALUES ('0104010209', '停用', '01040102', '用户管理', '4', '1', 'delete', '/system_admin/userStopAction.do', '4', '1', '/system_admin/userList.jsp', '', '0', '9', '', null, '2009-06-06 23:09:53', null, '2009-06-06 23:09:53');
INSERT INTO `module_p` VALUES ('01040103', '角色管理', '010401', '权限管理', '3', '0', '', '/system_admin/roleListAction.do', '3', '1', '/system_admin/left.jsp', '', '0', '7', '', null, '2009-05-24 18:29:55', null, '2009-05-24 18:29:55');
INSERT INTO `module_p` VALUES ('0104010301', '查看', '01040103', '角色管理', '4', '1', 'view', '/system_admin/roleViewAction.do', '4', '1', '/system_admin/roleList.jsp', null, '0', '1', null, null, '2009-06-07 08:21:51', null, '2009-06-07 08:21:51');
INSERT INTO `module_p` VALUES ('0104010302', '新建', '01040103', '角色管理', '4', '1', 'new', '/system_admin/roleCreateAction.do', '4', '1', '/system_admin/roleList.jsp', null, '0', '1', null, null, '2009-06-07 08:21:51', null, '2009-06-07 08:21:51');
INSERT INTO `module_p` VALUES ('0104010303', '修改', '01040103', '角色管理', '4', '1', 'update', '/system_admin/roleUpdateAction.do', '4', '1', '/system_admin/roleList.jsp', null, '0', '1', null, null, '2009-06-07 08:21:51', null, '2009-06-07 08:21:51');
INSERT INTO `module_p` VALUES ('0104010304', '删除', '01040103', '角色管理', '4', '1', 'delete', '/system_admin/roleDeleteAction.do', '4', '1', '/system_admin/roleList.jsp', null, '0', '1', null, null, '2009-06-07 08:21:51', null, '2009-06-07 08:21:51');
INSERT INTO `module_p` VALUES ('0104010305', '查询', '01040103', '角色管理', '4', '1', 'search', '/system_admin/roleSearchAction.do', '4', '1', '/system_admin/roleList.jsp', null, '0', '1', null, null, '2009-06-07 08:21:51', null, '2009-06-07 08:21:51');
INSERT INTO `module_p` VALUES ('01040104', '操作日志', '010401', '权限管理', '3', '0', '', '/system_admin/roleListAction.do', '3', '1', '/system_admin/left.jsp', '', '0', '2', '', null, '2009-05-24 18:29:55', null, '2009-05-24 18:29:55');
INSERT INTO `module_p` VALUES ('0104010401', '查看', '01040104', '日志管理', '3', '1', 'view', '/system_admin/logViewAction.do', '4', '1', '/system_admin/logList.jsp', null, '0', '1', null, null, '2009-06-15 06:24:45', null, '2009-06-15 06:24:45');
INSERT INTO `module_p` VALUES ('0104010402', '删除', '01040104', '日志管理', '3', '1', 'delete', '/system_admin/logDeleteAction.do', '4', '1', '/system_admin/logList.jsp', null, '0', '6', null, null, '2009-06-15 06:24:45', null, '2009-06-15 06:24:45');
INSERT INTO `module_p` VALUES ('0104010403', '查询', '01040104', '日志管理', '3', '1', 'search', '/system_admin/logSearchAction.do', '4', '1', '/system_admin/logList.jsp', null, '0', '7', null, null, '2009-06-15 06:24:45', null, '2009-06-15 06:24:45');
INSERT INTO `module_p` VALUES ('010401040301', '执行查询', '0104010403', '查询', '4', '1', 'dosearch', '/system_admin/logQueryAction.do', '4', '1', '/system_admin/logSearch.jsp', null, '0', '8', null, null, '2009-06-15 06:24:45', null, '2009-06-15 06:24:45');
INSERT INTO `module_p` VALUES ('0104010404', '清空', '01040104', '日志管理', '3', '1', 'search', '/system_admin/logClearAction.do', '4', '1', '/system_admin/logList.jsp', null, '0', '7', null, null, '2009-06-15 06:24:45', null, '2009-06-15 06:24:45');
INSERT INTO `module_p` VALUES ('01040105', '登陆日志', '010401', '权限管理', '3', '0', '', '/system_admin/roleListAction.do', '3', '1', '/system_admin/left.jsp', '', '0', '3', '', null, '2009-05-24 18:29:55', null, '2009-05-24 18:29:55');
INSERT INTO `module_p` VALUES ('0104010501', '查看', '01040105', '登陆日志管理', '3', '1', 'view', '/system_admin/loginLogViewAction.do', '4', '1', '/system_admin/loginLogList.jsp', null, '0', '1', null, null, '2009-06-15 06:24:45', null, '2009-06-15 06:24:45');
INSERT INTO `module_p` VALUES ('0104010502', '删除', '01040105', '登陆日志管理', '3', '1', 'delete', '/system_admin/loginLogDeleteAction.do', '4', '1', '/system_admin/loginLogList.jsp', null, '0', '6', null, null, '2009-06-15 06:24:45', null, '2009-06-15 06:24:45');
INSERT INTO `module_p` VALUES ('0104010503', '查询', '01040105', '登陆日志管理', '3', '1', 'search', '/system_admin/loginLogSearchAction.do', '4', '1', '/system_admin/loginLogList.jsp', null, '0', '7', null, null, '2009-06-15 06:24:45', null, '2009-06-15 06:24:45');
INSERT INTO `module_p` VALUES ('010401050301', '执行查询', '0104010503', '查询', '4', '1', 'dosearch', '/system_admin/loginLogListAction.do', '4', '1', '/system_admin/loginLogSearch.jsp', '', '0', '1', null, null, '2009-06-15 06:24:45', '001', '2011-02-17 14:57:00');
INSERT INTO `module_p` VALUES ('0104010504', '清空', '01040105', '登陆日志管理', '3', '1', 'search', '/system_admin/loginLogClearAction.do', '4', '1', '/system_admin/loginLogList.jsp', null, '0', '7', null, null, '2009-06-15 06:24:45', null, '2009-06-15 06:24:45');
INSERT INTO `module_p` VALUES ('01040106', '模块访问', '010401', '权限管理', '3', '0', '', '/system_admin/roleListAction.do', '3', '1', '/system_admin/left.jsp', '', '0', '4', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0104010602', '查看', '01040106', '模块访问', '4', '1', 'view', '/system_admin/accessLogViewAction.do', '4', '1', '/system_admin/accessLogList.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0104010603', '删除', '01040106', '模块访问', '4', '1', 'delete', '/system_admin/accessLogDeleteAction.do', '4', '1', '/system_admin/accessLogList.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0104010604', '查询', '01040106', '模块访问', '4', '1', 'search', '/system_admin/accessLogSearchAction.do', '4', '1', '/system_admin/accessLogList.jsp', '', '0', '3', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0104010605', '清空', '01040106', '模块访问', '4', '1', 'search', '/system_admin/accessLogClearAction.do', '4', '1', '/system_admin/accessLogList.jsp', '', '0', '4', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01040107', '模块管理', '010401', '权限管理', '3', '0', '', '/system_admin/roleListAction.do', '3', '1', '/system_admin/left.jsp', '', '0', '7', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0104010702', '确定', '01040107', '模块管理', '4', '1', 'save', '/baseinfo/doModuleSaveAction.do', '4', '1', '/baseinfo/module/jModule.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('010402', '系统工具', '0104', '系统管理', '2', '0', 'data_gear.png', null, '3', '1', '/system_admin/left.jsp', '', '0', '2', null, null, '2009-05-24 18:29:55', '001', '2010-03-11 16:07:22');
INSERT INTO `module_p` VALUES ('01040201', '系统管理', '010402', '系统工具', '3', '0', null, '/system_admin/organizationListAction.do', '2', '1', '/system_admin/left.jsp', null, '0', '99', null, null, '2009-05-24 18:29:55', null, '2009-05-24 18:29:55');
INSERT INTO `module_p` VALUES ('01040202', '数据管理', '010402', '系统工具', '3', '0', null, '/system_admin/userListAction.do', '2', '1', '/system_admin/left.jsp', null, '0', '99', null, null, '2009-05-24 18:29:55', null, '2009-05-24 18:29:55');
INSERT INTO `module_p` VALUES ('010403', '控制面板', '0104', '系统管理', '2', '1', '', '', '3', '1', '/system_admin/left.jsp', '', '0', '3', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0119', '内容管理', '01', '系统功能模块', '1', '0', '', '/office/welcome.do', '2', '1', 'title.jsp', '', '0', '3', '', '001', '2010-09-13 15:03:27', '001', '2010-11-10 11:18:24');
INSERT INTO `module_p` VALUES ('011902', '工作动态', '0119', '班建动态', '2', '0', null, '/site/doNewsListAction.do?which=1', '3', '1', '/site/left.jsp', '1', '0', '1', null, '001', '2010-09-13 15:15:42', '001', '2010-11-29 16:01:10');
INSERT INTO `module_p` VALUES ('01190202', '查看', '011902', '工作动态', '3', '1', 'view', '/office/toNewsViewAction.do', '4', '1', '/office/news/jNewsList.jsp', '1', '0', '1', null, '001', '2010-09-23 12:07:57', '001', '2010-11-26 17:28:11');
INSERT INTO `module_p` VALUES ('01190203', '新建', '011902', '工作动态', '3', '0', 'new', '/office/toNewsCreateAction.do', '4', '1', '/office/news/jNewsList.jsp', '1', '0', '2', null, '001', '2010-09-23 12:07:57', '001', '2010-11-26 17:28:11');
INSERT INTO `module_p` VALUES ('0119020302', '确定', '01190203', '新建', '4', '1', 'save', '/office/doNewsCreateSaveAction.do', '4', '1', '/office/news/jNewsCreate.jsp', '1', '0', '1', null, '001', '2010-09-23 12:15:25', '001', '2010-11-29 10:56:37');
INSERT INTO `module_p` VALUES ('0119020303', '暂存', '01190203', '新建', '4', '1', 'save', '/office/doNewsCreateSaveAction.do?flag=tempsuccess', '4', '1', '/office/news/jNewsCreate.jsp', '1', '0', '2', null, '001', '2010-09-23 12:15:25', '001', '2010-11-29 10:56:37');
INSERT INTO `module_p` VALUES ('01190204', '修改', '011902', '工作动态', '3', '0', 'update', '/office/toNewsUpdateAction.do', '4', '1', '/office/news/jNewsList.jsp', '1', '0', '3', null, '001', '2010-09-23 12:07:57', '001', '2010-11-26 17:28:11');
INSERT INTO `module_p` VALUES ('0119020402', '确定', '01190204', '修改', '4', '1', 'save', '/office/doNewsUpdateSaveAction.do', '4', '1', '/office/news/jNewsUpdate.jsp', '1', '0', '1', null, '001', '2010-09-23 12:20:12', '001', '2010-11-29 10:56:46');
INSERT INTO `module_p` VALUES ('0119020403', '暂存', '01190204', '修改', '4', '1', 'save', '/office/doNewsUpdateSaveAction.do?flag=tempsuccess', '4', '1', '/office/news/jNewsUpdate.jsp', '1', '0', '2', null, '001', '2010-09-23 12:20:12', '001', '2010-11-29 10:56:46');
INSERT INTO `module_p` VALUES ('01190205', '删除', '011902', '工作动态', '3', '1', 'delete', '/office/doNewsDeleteAction.do', '4', '1', '/office/news/jNewsList.jsp', '1', '0', '4', null, '001', '2010-09-23 12:07:57', '001', '2010-11-26 17:28:11');
INSERT INTO `module_p` VALUES ('01190206', '生成', '011902', '工作动态', '3', '1', 'accept', '/office/doNewsMakeAction.do', '4', '1', '/office/news/jNewsList.jsp', '1', '0', '5', null, '001', '2010-09-26 14:32:39', '001', '2010-11-26 17:28:11');
INSERT INTO `module_p` VALUES ('01190207', '发布', '011902', '工作动态', '3', '1', 'new', '/office/doNewsShareAction.do', '4', '1', '/office/news/jNewsList.jsp', '1', '0', '6', null, '001', '2010-09-23 12:07:57', '001', '2010-11-26 17:28:11');
INSERT INTO `module_p` VALUES ('01190208', '取消', '011902', '工作动态', '3', '1', 'delete', '/office/doNewsCancelShareAction.do', '4', '1', '/office/news/jNewsList.jsp', '1', '0', '7', '取消发布', '001', '2010-11-25 10:37:07', '001', '2010-11-26 17:28:11');
INSERT INTO `module_p` VALUES ('011903', '通知公告', '0119', '班建动态', '2', '0', null, '/site/doNewsListAction.do?which=1', '3', '1', '/site/left.jsp', '1', '0', '2', null, '001', '2010-09-13 15:15:42', '001', '2010-11-29 16:01:10');
INSERT INTO `module_p` VALUES ('01190302', '查看', '011903', '通知', '3', '1', 'view', '/office/toNoticeViewAction.do', '4', '1', '/office/notice/jNoticeList.jsp', '1', '0', '1', null, '001', '2010-09-23 20:36:48', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('01190303', '新建', '011903', '通知', '3', '0', 'new', '/office/toNoticeCreateAction.do', '4', '1', '/office/notice/jNoticeList.jsp', '1', '0', '2', null, '001', '2010-09-23 20:36:48', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('0119030302', '确定', '01190303', '新建', '4', '1', 'save', '/office/doNoticeCreateSaveAction.do', '4', '1', '/office/notice/jNoticeCreate.jsp', '1', '0', '1', null, '001', '2010-09-23 20:37:59', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('0119030303', '暂存', '01190303', '新建', '4', '1', 'save', '/office/doNoticeCreateSaveAction.do?flag=tempsuccess', '4', '1', '/office/notice/jNoticeCreate.jsp', '1', '0', '2', null, '001', '2010-09-23 20:37:59', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('01190304', '修改', '011903', '通知', '3', '0', 'update', '/office/toNoticeUpdateAction.do', '4', '1', '/office/notice/jNoticeList.jsp', '1', '0', '3', null, '001', '2010-09-23 20:36:48', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('0119030402', '确定', '01190304', '修改', '4', '1', 'save', '/office/doNoticeUpdateSaveAction.do', '4', '1', '/office/notice/jNoticeUpdate.jsp', '1', '0', '1', null, '001', '2010-09-23 20:39:41', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('0119030403', '暂存', '01190304', '修改', '4', '1', 'save', '/office/doNoticeUpdateSaveAction.do?flag=tempsuccess', '4', '1', '/office/notice/jNoticeUpdate.jsp', '1', '0', '2', null, '001', '2010-09-23 20:39:41', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('01190305', '删除', '011903', '通知', '3', '1', 'delete', '/office/doNoticeDeleteAction.do', '4', '1', '/office/notice/jNoticeList.jsp', '1', '0', '4', null, '001', '2010-09-23 20:36:48', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('01190306', '生成', '011903', '通知', '3', '1', 'accept', '/office/doNoticeMakeAction.do', '4', '1', '/office/notice/jNoticeList.jsp', '1', '0', '5', null, '001', '2010-09-26 14:32:39', '001', '2010-09-27 11:18:09');
INSERT INTO `module_p` VALUES ('01190307', '发布', '011903', '通知', '3', '1', 'new', '/office/doNoticeShareAction.do', '4', '1', '/office/notice/jNoticeList.jsp', '1', '0', '5', null, '001', '2010-09-23 20:36:47', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('01190308', '取消', '011903', '通知', '3', '1', 'delete', '/office/doNoticeCancelShareAction.do', '4', '1', '/office/notice/jNoticeList.jsp', '1', '0', '7', '取消发布', '001', '2010-11-25 11:20:41', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('011904', '系统公告', '0119', '班建动态', '2', '0', null, '/site/doNewsListAction.do?which=1', '3', '1', '/site/left.jsp', '', '0', '3', null, '001', '2010-09-13 15:15:42', '001', '2010-11-29 16:01:10');
INSERT INTO `module_p` VALUES ('01190402', '查看', '011904', '公告', '3', '1', 'view', '/office/toBulletinViewAction.do', '4', '1', '/office/bulletin/jBulletinList.jsp', '1', '0', '1', null, '001', '2010-09-23 18:52:10', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('01190403', '新建', '011904', '公告', '3', '0', 'new', '/office/toBulletinCreateAction.do', '4', '1', '/office/bulletin/jBulletinList.jsp', '1', '0', '2', null, '001', '2010-09-23 18:52:10', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('0119040302', '确定', '01190403', '新建', '4', '1', 'save', '/office/doBulletinCreateSaveAction.do', '4', '1', '/office/bulletin/jBulletinCreate.jsp', '1', '0', '1', null, '001', '2010-09-23 18:53:08', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('0119040303', '暂存', '01190403', '新建', '4', '1', 'save', '/office/doBulletinCreateSaveAction.do?flag=tempsuccess', '4', '1', '/office/bulletin/jBulletinCreate.jsp', '1', '0', '2', null, '001', '2010-09-23 18:53:08', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('01190404', '修改', '011904', '公告', '3', '0', 'update', '/office/toBulletinUpdateAction.do', '4', '1', '/office/bulletin/jBulletinList.jsp', '1', '0', '3', null, '001', '2010-09-23 18:52:10', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('0119040402', '确定', '01190404', '修改', '4', '1', 'save', '/office/doBulletinUpdateSaveAction.do', '4', '1', '/office/bulletin/jBulletinUpdate.jsp', '1', '0', '1', null, '001', '2010-09-23 18:53:57', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('0119040403', '暂存', '01190404', '修改', '4', '1', 'save', '/office/doBulletinUpdateSaveAction.do?flag=tempsuccess', '4', '1', '/office/bulletin/jBulletinUpdate.jsp', '1', '0', '2', null, '001', '2010-09-23 18:53:57', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('01190405', '删除', '011904', '公告', '3', '1', 'delete', '/office/doBulletinDeleteAction.do', '4', '1', '/office/bulletin/jBulletinList.jsp', '1', '0', '4', null, '001', '2010-09-23 18:52:10', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('01190406', '生成', '011904', '公告', '3', '1', 'accept', '/office/doBulletinMakeAction.do', '4', '1', '/office/bulletin/jBulletinList.jsp', '1', '0', '5', null, '001', '2010-11-15 13:26:37', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('01190407', '发布', '011904', '公告', '3', '1', 'new', '/office/doBulletinShareAction.do', '4', '1', '/office/bulletin/jBulletinList.jsp', '1', '0', '6', null, '001', '2010-09-23 18:52:10', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('01190408', '取消', '011904', '公告', '3', '1', 'delete', '/office/doBulletinCancelShareAction.do', '4', '1', '/office/bulletin/jBulletinList.jsp', '1', '0', '7', null, '001', '2010-11-25 11:21:10', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('011905', '工作动态审核', '0119', '班建动态', '2', '0', null, '/site/doNewsListAction.do?which=2', '3', '1', '/site/left.jsp', '2', '0', '4', null, '001', '2010-11-26 17:16:50', '001', '2010-11-29 16:01:10');
INSERT INTO `module_p` VALUES ('01190502', '发布', '011905', '新闻审核', '3', '1', 'new', '/office/doNewsShareAction.do', '4', '1', '/office/news/jNewsList.jsp', '2', '0', '1', null, '001', '2010-11-26 17:19:16', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('011906', '通知公告审核', '0119', '班建动态', '2', '0', null, '/site/doNewsListAction.do?which=2', '3', '1', '/site/left.jsp', '2', '0', '5', null, '001', '2010-11-29 16:01:10', null, '2010-12-13 15:12:31');
INSERT INTO `module_p` VALUES ('01190602', '发布', '011906', '通知公告审核', '3', '1', 'new', '/office/doNoticeShareAction.do', '4', '1', '/office/notice/jNoticeList.jsp', '2', '0', '1', null, '001', '2010-11-29 16:02:23', '001', '2010-12-13 09:43:27');
INSERT INTO `module_p` VALUES ('011907', '大事记', '0119', '新闻动态', '2', '0', '', '/site/doNewsListAction.do?which=2', '3', '1', '/site/left.jsp', '', '0', '6', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01190702', '查看', '011907', '大事记', '3', '1', 'view', '/office/toChistoryViewAction.do', '4', '1', '/office/chistory/jChistoryList.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01190703', '新建', '011907', '大事记', '3', '0', 'new', '/office/toChistoryCreateAction.do', '4', '1', '/office/chistory/jChistoryList.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0119070302', '确定', '01190703', '新建', '4', '1', 'save', '/office/doChistoryCreateSaveAction.do', '4', '1', '/office/chistory/jChistoryCreate.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0119070303', '暂存', '01190703', '新建', '4', '1', 'save', '/office/doChistoryCreateSaveAction.do?flag=tempsuccess', '4', '1', '/office/chistory/jChistoryCreate.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01190704', '修改', '011907', '大事记', '3', '0', 'update', '/office/toChistoryUpdateAction.do', '4', '1', '/office/chistory/jChistoryList.jsp', '', '0', '3', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0119070402', '确定', '01190704', '修改', '4', '1', 'save', '/office/doChistoryUpdateSaveAction.do', '4', '1', '/office/chistory/jChistoryUpdate.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0119070403', '暂存', '01190704', '修改', '4', '1', 'save', '/office/doChistoryUpdateSaveAction.do?flag=tempsuccess', '4', '1', '/office/chistory/jChistoryUpdate.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01190705', '删除', '011907', '大事记', '3', '1', 'delete', '/office/doChistoryDeleteAction.do', '4', '1', '/office/chistory/jChistoryList.jsp', '', '0', '4', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01190706', '生成', '011907', '大事记', '3', '1', 'accept', '/office/doChistoryMakeAction.do', '4', '1', '/office/chistory/jChistoryList.jsp', '', '0', '5', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0129', '运行情况', '01', '系统功能模块', '1', '1', null, '/run/welcome.do', '2', '1', 'title.jsp', '', '0', '19', null, '001', '2010-12-27 08:52:17', '001', '2010-12-27 10:22:09');
INSERT INTO `module_p` VALUES ('0130', '货运管理', '01', '系统功能模块', '1', '0', '', '/cargo/welcome.do', '2', '1', 'title.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('013002', '货运管理', '0130', '货物管理', '2', '0', 'view', '', '3', '1', '/site/left.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300202', '查看', '013002', '货物管理', '3', '1', 'view', '/cargo/toCargoViewAction.do', '4', '1', '/cargo/cargo/jCargoList.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300203', '新建', '013002', '货运管理', '3', '1', 'new', '/contract/toContractCreateAction.do', '4', '1', '/cargo/cargo/jCargoList.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300204', '删除', '013002', '货运管理', '3', '1', 'delete', '/cargo/doCargoDeleteAction.do', '4', '1', '/cargo/cargo/jCargoList.jsp', '', '0', '3', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('013003', '合同管理', '0130', '货运管理', '2', '0', 'view', '', '3', '1', '/site/left.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300302', '查看', '013003', '合同管理', '3', '1', 'view', '/cargo/toContractViewAction.do', '4', '1', '/cargo/contract/jContractList.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300303', '新建', '013003', '合同管理', '3', '0', 'new', '/cargo/toContractCreateAction.do', '4', '1', '/cargo/contract/jContractList.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130030302', '确定', '01300303', '新建', '4', '1', 'save', '/cargo/doContractCreateSaveAction.do', '4', '1', '/cargo/contract/jContractCreate.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130030303', '暂存', '01300303', '新建', '4', '1', 'save', '/cargo/doContractCreateSaveAction.do?flag=tempsuccess', '4', '1', '/cargo/contract/jContractCreate.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300304', '修改', '013003', '合同管理', '3', '0', 'update', '/cargo/toContractUpdateAction.do', '4', '1', '/cargo/contract/jContractList.jsp', '', '0', '3', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130030402', '确定', '01300304', '修改', '4', '1', 'save', '/cargo/doContractUpdateSaveAction.do', '4', '1', '/cargo/contract/jContractUpdate.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130030403', '暂存', '01300304', '修改', '4', '1', 'save', '/cargo/doContractUpdateSaveAction.do?flag=tempsuccess', '4', '1', '/cargo/contract/jContractUpdate.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300305', '删除', '013003', '合同管理', '3', '1', 'delete', '/cargo/doContractDeleteAction.do', '4', '1', '/cargo/contract/jContractList.jsp', '', '0', '4', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300307', '打印', '013003', '合同管理', '3', '1', 'print', '/cargo/doContractPrintAction.do', '4', '1', '/cargo/contract/jContractList.jsp', '', '0', '9', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300312', '附件', '013003', '合同管理', '3', '0', 'new', '/cargo/toExtCproductEditAction.do', '4', '1', '/cargo/contract/jContractList.jsp', '', '0', '5', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130031202', '确定', '01300312', '附件', '4', '1', 'save', '/cargo/doExtCproductSaveAction.do', '4', '1', '/cargo/extcproduct/jExtCproductEdit.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130031203', '打印', '01300312', '附件', '4', '1', 'print', '/cargo/doExtCproductPrintAction.do', '4', '1', '/cargo/extcproduct/jExtCproductEdit.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300313', '归档', '013003', '合同管理', '3', '1', 'new', '/cargo/doContractFinishAction.do', '4', '1', '/cargo/contract/jContractList.jsp', '', '0', '6', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300314', '撤消', '013003', '合同管理', '3', '1', 'new', '/cargo/doContractCancelAction.do', '4', '1', '/cargo/contract/jContractList.jsp', '', '0', '7', '撤消归档', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300315', '出货表', '013003', '合同管理', '3', '0', 'stat', '/cargo/toOutProductEditAction.do', '4', '1', '/cargo/contract/jContractList.jsp', '', '0', '8', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130031502', '打印', '01300315', '出货表', '4', '1', 'print', '/cargo/doOutProductPrintAction.do', '4', '1', '/cargo/outproduct/jOutProductEdit.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300316', '上报', '013003', '合同管理', '3', '1', 'new', '/cargo/doContractSubmitAction.do', '4', '1', '/cargo/contract/jContractList.jsp', '', '0', '10', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300317', '取消', '013003', '合同管理', '3', '1', 'new', '/cargo/doContractCancelSubmitAction.do', '4', '1', '/cargo/contract/jContractList.jsp', '', '0', '11', '取消上报', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300318', '复制', '013003', '合同管理', '3', '1', 'back', '/cargo/doContractCopyAction.do', '4', '1', '/cargo/contract/jContractList.jsp', '', '0', '12', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('013004', '报运管理', '0130', '货运管理', '2', '0', 'view', '', '3', '1', '/site/left.jsp', '', '0', '3', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300402', '查看', '013004', '报运管理', '3', '1', 'view', '/cargo/toExportViewAction.do', '4', '1', '/cargo/export/jExportList.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300403', '新建', '013004', '报运管理', '3', '0', 'new', '/cargo/toExportCreateAction.do', '4', '1', '/cargo/export/jExportList.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130040302', '确定', '01300403', '新建', '4', '1', 'save', '/cargo/doExportCreateSaveAction.do', '4', '1', '/cargo/export/jExportCreate.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130040303', '暂存', '01300403', '新建', '4', '1', 'save', '/cargo/doExportCreateSaveAction.do?flag=tempsuccess', '4', '1', '/cargo/export/jExportCreate.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300404', '修改', '013004', '报运管理', '3', '0', 'update', '/cargo/toExportUpdateAction.do', '4', '1', '/cargo/export/jExportList.jsp', '', '0', '3', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130040402', '确定', '01300404', '修改', '4', '1', 'save', '/cargo/doExportUpdateSaveAction.do', '4', '1', '/cargo/export/jExportUpdate.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130040403', '暂存', '01300404', '修改', '4', '1', 'save', '/cargo/doExportUpdateSaveAction.do?flag=tempsuccess', '4', '1', '/cargo/export/jExportUpdate.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130040404', '货物', '01300404', '修改', '4', '1', 'new', '/cargo/toExportProductSelectAction.do', '4', '1', '/cargo/export/jExportUpdate.jsp', '', '0', '3', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300405', '删除', '013004', '报运管理', '3', '1', 'delete', '/cargo/doExportDeleteAction.do', '4', '1', '/cargo/export/jExportList.jsp', '', '0', '4', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300406', '打印', '013004', '报运管理', '3', '1', 'print', '/cargo/doExportPrintAction.do', '4', '1', '/cargo/export/jExportList.jsp', '', '0', '5', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300410', '复制', '013004', '报运管理', '3', '1', 'back', '/cargo/doExportCopyAction.do', '4', '1', '/cargo/export/jExportList.jsp', '', '0', '9', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300411', '上报', '013004', '报运管理', '3', '1', 'new', '/cargo/doExportSubmitAction.do', '4', '1', '/cargo/export/jExportList.jsp', '', '0', '10', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300412', '取消', '013004', '报运管理', '3', '1', 'new', '/cargo/doExportCancelSubmitAction.do', '4', '1', '/cargo/export/jExportList.jsp', '', '0', '11', '取消上报', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300413', 'H装箱', '013004', '报运管理', '3', '1', 'back', '/cargo/toHomePackingListCreateAction.do', '4', '1', '/cargo/export/jExportList.jsp', '', '0', '9', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300414', '装箱', '013004', '报运管理', '3', '1', 'back', '/cargo/toPackingListCreateAction.do', '4', '1', '/cargo/export/jExportList.jsp', '', '0', '10', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('013006', '综合查询', '0130', '货运管理', '2', '1', 'view', '', '3', '1', '/site/left.jsp', '', '0', '5', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('013007', 'HOME装箱', '0130', '货运管理', '2', '0', 'view', '', '3', '1', '/site/left.jsp', '', '0', '5', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300701', '查看', '013007', 'HOME装箱', '3', '1', 'view', '/cargo/toHomePackingListViewAction.do', '4', '1', '/cargo/homepackinglist/jHomePackingListList.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300702', '新建', '013007', 'HOME装箱', '3', '0', 'new', '/cargo/toHomePackingListCreateAction.do', '4', '1', '/cargo/homepackinglist/jHomePackingListList.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130070201', '保存', '01300702', '新建', '4', '1', 'save', '/cargo/doHomePackingListCreateSaveAction.do', '4', '1', '/cargo/homepackinglist/jHomePackingListCreate.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130070202', '暂存', '01300702', '新建', '4', '1', 'save', '/cargo/doHomePackingListCreateSaveAction.do?flag=tempsuccess', '4', '1', '/cargo/homepackinglist/jHomePackingListCreate.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300703', '修改', '013007', 'HOME装箱', '3', '0', 'update', '/cargo/toHomePackingListUpdateAction.do', '4', '1', '/cargo/homepackinglist/jHomePackingListList.jsp', '', '0', '3', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130070301', '保存', '01300703', '修改', '4', '1', 'save', '/cargo/doHomePackingListUpdateSaveAction.do', '4', '1', '/cargo/homepackinglist/jHomePackingListUpdate.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130070302', '暂存', '01300703', '修改', '4', '1', 'save', '/cargo/doHomePackingListUpdateSaveAction.do?flag=tempsuccess', '4', '1', '/cargo/homepackinglist/jHomePackingListUpdate.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300704', '删除', '013007', 'HOME装箱', '3', '1', 'delete', '/cargo/doHomePackingListDeleteAction.do', '4', '1', '/cargo/homepackinglist/jHomePackingListList.jsp', '', '0', '4', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300705', '打印', '013007', 'HOME装箱', '3', '1', 'print', '/cargo/doHomePackingListPrintAction.do', '4', '1', '/cargo/homepackinglist/jHomePackingListList.jsp', '', '0', '5', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('013008', '装箱管理', '0130', '货运管理', '2', '0', 'view', '', '3', '1', '/site/left.jsp', '', '0', '6', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300801', '查看', '013008', '装箱管理', '3', '1', 'view', '/cargo/toPackingListViewAction.do', '4', '1', '/cargo/packinglist/jPackingListList.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300802', '新建', '013008', '装箱管理', '3', '0', 'new', '/cargo/toPackingListCreateAction.do', '4', '1', '/cargo/packinglist/jPackingListList.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130080201', '保存', '01300802', '新建', '4', '1', 'save', '/cargo/doPackingListCreateSaveAction.do', '4', '1', '/cargo/packinglist/jPackingListCreate.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130080202', '暂存', '01300802', '新建', '4', '1', 'save', '/cargo/doPackingListCreateSaveAction.do?flag=tempsuccess', '4', '1', '/cargo/packinglist/jPackingListCreate.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300803', '修改', '013008', '装箱管理', '3', '0', 'update', '/cargo/toPackingListUpdateAction.do', '4', '1', '/cargo/packinglist/jPackingListList.jsp', '', '0', '3', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130080301', '保存', '01300803', '修改', '4', '1', 'save', '/cargo/doPackingListUpdateSaveAction.do', '4', '1', '/cargo/packinglist/jPackingListUpdate.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130080302', '暂存', '01300803', '修改', '4', '1', 'save', '/cargo/doPackingListUpdateSaveAction.do?flag=tempsuccess', '4', '1', '/cargo/packinglist/jPackingListUpdate.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300804', '删除', '013008', '装箱管理', '3', '1', 'delete', '/cargo/doPackingListDeleteAction.do', '4', '1', '/cargo/packinglist/jPackingListList.jsp', '', '0', '4', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300805', '打印', '013008', '装箱管理', '3', '1', 'print', '/cargo/doPackingListPrintAction.do', '4', '1', '/cargo/packinglist/jPackingListList.jsp', '', '0', '5', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300806', '委托', '013008', '装箱管理', '3', '0', 'accept', '/cargo/toShippingOrderEditAction.do', '4', '1', '/cargo/packinglist/jPackingListList.jsp', '', '0', '6', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130080601', '确定', '01300806', '委托', '4', '1', 'save', '/cargo/doShippingOrderSaveAction.do', '4', '1', '/cargo/shippingorder/jShippingOrderEdit.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130080602', '打印', '01300806', '委托', '4', '1', 'print', '/cargo/doShippingOrderPrintAction.do', '4', '1', '/cargo/shippingorder/jShippingOrderEdit.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300807', '发票', '013008', '装箱管理', '3', '0', 'new', '/cargo/toInvoiceEditAction.do', '4', '1', '/cargo/packinglist/jPackingListList.jsp', '', '0', '7', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130080701', '确定', '01300807', '发票', '4', '1', 'save', '/cargo/doInvoiceSaveAction.do', '4', '1', '/cargo/invoice/jInvoiceEdit.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130080702', '打印', '01300807', '发票', '4', '1', 'print', '/cargo/doInvoicePrintAction.do', '4', '1', '/cargo/invoice/jInvoiceEdit.jsp', '', '0', '2', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('01300808', '财务', '013008', '装箱管理', '3', '0', 'stat', '/cargo/toFinanceEditAction.do', '4', '1', '/cargo/packinglist/jPackingListList.jsp', '', '0', '8', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130080801', '确定', '01300808', '财务', '4', '1', 'save', '/cargo/doFinanceSaveAction.do', '4', '1', '/cargo/finance/jFinanceEdit.jsp', '', '0', '1', '', null, null, null, null);
INSERT INTO `module_p` VALUES ('0130080802', '打印', '01300808', '财务', '4', '1', 'print', '/cargo/doFinancePrintAction.do', '4', '1', '/cargo/finance/jFinanceEdit.jsp', '', '0', '2', '', null, null, null, null);

-- ----------------------------
-- Table structure for `operate_log_p`
-- ----------------------------
DROP TABLE IF EXISTS `operate_log_p`;
CREATE TABLE `operate_log_p` (
  `ID` varchar(50) NOT NULL,
  `CLAZZ` varchar(200) DEFAULT NULL,
  `LOG_DATE` datetime DEFAULT NULL,
  `LOGIN_ID` varchar(50) DEFAULT NULL,
  `IP_ADDRESS` varchar(20) DEFAULT NULL,
  `METHOD` varchar(200) DEFAULT NULL,
  `MSG` varchar(200) DEFAULT NULL,
  `PRIORITY` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operate_log_p
-- ----------------------------
INSERT INTO `operate_log_p` VALUES ('011722EA-50F6-456D-AD2F-6F372FCE421C', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:56:55', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('01437035-3455-4C41-BCAE-E028FF913751', 'com.netunit.template.web.login.LoginAction', '2013-03-09 17:06:31', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('049E30F9-4FDF-49E7-87A0-75C304DF192B', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:20:21', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('057C38AE-BA84-435E-B965-29616D53C1FE', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:49:13', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('07E37964-94FB-4C1F-B727-F9166D9D7581', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:53:41', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('085985FD-C69C-4959-967A-506467AA451D', 'com.netunit.template.web.login.LoginAction', '2013-03-07 23:05:53', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('0E5B4E59-D15A-44B1-9571-9AA720C8ACA6', 'com.netunit.template.web.login.LoginAction', '2013-03-08 17:00:28', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('0E639A5D-D221-44FF-AF84-41F1878C0BCB', 'com.netunit.template.web.login.LoginAction', '2013-03-08 16:42:30', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('23223E29-AF6A-41BB-8A4A-791B54219821', 'com.netunit.template.web.login.LoginAction', '2013-03-09 15:57:09', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('274898FC-E91D-41A5-B7A5-20DE6377AF24', 'com.netunit.template.web.login.LoginAction', '2013-03-09 17:16:46', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('2D7A82E6-535D-46E5-BAD4-FFA8A67EFBDF', 'com.netunit.template.web.login.LoginAction', '2013-03-08 17:49:22', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('2FFB9E9F-CC9E-46EE-9978-51958D29A791', 'com.netunit.template.web.login.LoginAction', '2013-03-09 16:54:22', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('30EDFF16-375E-4424-90C4-F4FC99D171EE', 'com.netunit.template.web.login.LoginAction', '2013-03-09 23:30:31', '001', '127.0.0.1', 'execute', '??????: sysdebug|调试|组织机构', 'INFO');
INSERT INTO `operate_log_p` VALUES ('34458438-5442-42D5-BD32-C2213515F145', 'com.netunit.template.web.login.LoginAction', '2013-03-09 19:23:17', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('347CB791-69A3-4C44-838F-873660A49291', 'com.netunit.template.common.log.LogManager', '2013-03-09 23:33:56', 'sysdebug|调试', '127.0.0.1', 'recordLog', '??????:<001> ????:<组织机构>  ????????:<update>  ???:<????? com.netunit.template.entity.Role@c2ec4aa9>  ???:<402886473192cf370131939859b40017>', 'INFO');
INSERT INTO `operate_log_p` VALUES ('34DACF42-D21D-490B-B7E0-97F151BD7BA0', 'com.netunit.template.web.login.LoginAction', '2013-03-09 23:33:34', '001', '127.0.0.1', 'execute', '??????: sysdebug|调试|组织机构', 'INFO');
INSERT INTO `operate_log_p` VALUES ('38255F16-27AB-436E-8E52-8CD6D9C3618C', 'com.netunit.template.web.login.LoginAction', '2013-03-09 23:34:04', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('38EC0087-F47F-4DC6-BA94-63B95EA2C990', 'com.netunit.template.web.login.LoginAction', '2013-03-09 16:56:53', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('3DB05771-B8D8-4553-9380-B53126F4C956', 'com.netunit.template.web.login.LoginAction', '2013-03-09 08:24:54', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('3E9225CA-6133-4823-BFD9-942B802F592E', 'com.netunit.template.web.login.LoginAction', '2013-03-07 23:02:59', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('417EBF3B-6871-45A8-8535-DC7CBA8E06B7', 'com.netunit.template.web.login.LoginAction', '2013-03-09 16:45:40', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('46F21CD3-806D-4B1A-A461-2726F669F37E', 'com.netunit.template.web.login.LoginAction', '2013-03-10 11:40:40', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('492C1D1D-9312-4BC1-BF18-F3A72B8B3AE1', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:49:16', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('4A0A9548-05B6-41F0-845A-C4AAB42EA9DC', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:19:02', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('4B3CC1C5-AA8B-458E-A4E8-26415C716D5C', 'com.netunit.template.web.login.LoginAction', '2013-03-10 21:53:18', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('4B9A40F4-21B3-44A0-89E5-8DBE65591821', 'com.netunit.template.web.login.LoginAction', '2013-03-07 22:48:50', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('50055956-530C-4265-9E5E-604FC6391205', 'com.netunit.template.web.login.LoginAction', '2013-03-09 16:52:53', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('52A67401-C71C-4CFF-A1E3-A14CA4F4C6C9', 'com.netunit.template.web.login.LoginAction', '2013-03-09 15:55:51', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('5590C9AC-3FB5-49F0-9EE8-643907889FBD', 'com.netunit.template.web.login.LoginAction', '2013-03-09 16:19:44', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('5841B916-B581-4CC9-A4D8-37C01EFB6CA2', 'com.netunit.template.web.login.LoginAction', '2013-03-08 17:39:30', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('59662242-43F6-4D27-9237-AE62CD42E160', 'com.netunit.template.web.login.LoginAction', '2013-03-09 19:46:28', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('5FAFEC54-248B-4858-BC4C-A6A953C12F41', 'com.netunit.template.web.login.LoginAction', '2013-03-10 21:57:24', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('648CAA82-6132-4B56-AFB0-5EAB0400EFEA', 'com.netunit.template.web.login.LoginAction', '2013-03-09 09:39:52', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('65486E50-140D-4D56-BFDC-BD5172398EAD', 'com.netunit.template.web.login.LoginAction', '2013-03-08 17:46:44', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('6940026B-3D98-4B6B-8163-D82383B3FD59', 'com.netunit.template.web.login.LoginAction', '2013-03-09 16:25:33', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('6FCDBB4C-AEC8-40CD-B1D9-68C1790E42FB', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:53:35', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('70CBE621-C7B4-4176-9196-A1A878D6346D', 'com.netunit.template.web.login.LoginAction', '2013-03-09 09:24:32', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('7723FDBF-DE7E-4A35-8DF7-18496BB0D728', 'com.netunit.template.web.login.LoginAction', '2013-03-09 09:59:21', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('774D2B38-4FC0-4708-BB3D-283AF5518959', 'com.netunit.template.web.login.LoginAction', '2013-03-09 19:29:48', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('797550BC-E48A-4552-92F6-C97CD116CC94', 'com.netunit.template.web.login.LoginAction', '2013-03-11 00:00:22', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('79BFFCF2-DBD8-45AD-B7EC-AF0E0E5BA64A', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:53:37', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('7A31116B-1142-4901-A100-53C87CEAAF14', 'com.netunit.template.web.login.LoginAction', '2013-03-10 11:23:03', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('7C34093E-0593-4F87-B79F-D1C5A517FD8D', 'com.netunit.template.web.login.LoginAction', '2013-03-09 17:32:44', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('81D3B9C8-1CA4-43C5-A75E-F2222FAB7CAD', 'com.netunit.template.web.login.LoginAction', '2013-03-09 16:53:31', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('834D30A4-879D-41A1-AF76-7D09968FF7F4', 'com.netunit.template.web.login.LoginAction', '2013-03-09 23:30:31', '001', '127.0.0.1', 'execute', '??????: sysdebug|调试|组织机构', 'INFO');
INSERT INTO `operate_log_p` VALUES ('842709A7-392A-4027-A66A-F3556CEEF428', 'com.netunit.template.web.login.LoginAction', '2013-03-09 16:47:53', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('8725C412-93DE-4E7C-9B71-4E7A000073E6', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:49:19', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('874F6A45-7C16-4BAD-8BD3-DA97A4ACDB43', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:21:44', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('87EF67AF-8B19-4E6D-89C5-3EC8E2026B38', 'com.netunit.template.web.login.LoginAction', '2013-03-09 15:55:51', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('8BA71A5A-D20A-44AB-965F-B8EF19731E83', 'com.netunit.template.web.login.LoginAction', '2013-03-09 11:11:21', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('8C85C13F-C525-433A-AE62-60DB6FEC335D', 'com.netunit.template.web.login.LoginAction', '2013-03-09 10:16:03', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('8D28B4FA-4D63-4A24-B06B-3EAE7E638D1E', 'com.netunit.template.web.login.LoginAction', '2013-03-09 08:07:42', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('8F9483F8-7A86-4AA3-9132-093388A71E7E', 'com.netunit.template.web.login.LoginAction', '2013-03-10 23:59:38', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('913A5750-08E2-4A41-860D-E5A1BD18771E', 'com.netunit.template.web.login.LoginAction', '2013-03-08 15:45:39', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('91DFF86C-4439-41C0-A125-B29EE7669209', 'com.netunit.template.web.login.LoginAction', '2013-03-09 23:00:03', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('964F6B85-984F-4F98-92A8-4ACAF55F3C44', 'com.netunit.template.web.login.LoginAction', '2013-03-08 15:31:53', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('9C1D973A-5920-4F99-881A-C94DCF6498A8', 'com.netunit.template.web.login.LoginAction', '2013-03-09 22:01:46', '001', '127.0.0.1', 'execute', '??????: sysdebug|调试|组织机构', 'INFO');
INSERT INTO `operate_log_p` VALUES ('9C9D05B3-F988-4139-9A3A-4187917BC221', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:56:24', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('9D33E224-1FE7-4C71-8957-20A7FCD016C5', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:19:48', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('9D7D1842-98E0-40A0-A317-3AB404B68E46', 'com.netunit.template.web.login.LoginAction', '2013-03-10 22:44:17', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('9DDB4B88-B475-4273-B895-FA1B8B24C7F3', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:49:20', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('A2CC23DE-79E0-4C5E-B8F1-64AC34B0A341', 'com.netunit.template.web.login.LoginAction', '2013-03-07 23:37:14', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('A2D82144-9AED-42E6-B09B-C5DF80C5FB34', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:54:25', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('A5073779-C092-45AC-89CE-BC7798A477E9', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:53:41', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('A67D2AEF-91DC-4378-8DA7-C48ABCA0695D', 'com.netunit.template.web.login.LoginAction', '2013-03-08 10:29:03', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('A8782DC5-6B55-477A-9DBF-980C30988B57', 'com.netunit.template.web.login.LoginAction', '2013-03-08 11:09:24', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('AA309792-E2DE-4EC2-ACE0-D5B520BB8766', 'com.netunit.template.web.login.LoginAction', '2013-03-10 11:01:07', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('AC2B30E3-F7E7-4ED7-9E40-3796D21C4721', 'com.netunit.template.web.login.LoginAction', '2013-03-08 11:40:51', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('AC837C0D-498A-435C-BF46-DCE064A7B1AE', 'com.netunit.template.web.login.LoginAction', '2013-03-09 23:00:20', '001', '127.0.0.1', 'execute', '??????: sysdebug|调试|组织机构', 'INFO');
INSERT INTO `operate_log_p` VALUES ('AE770542-9480-4F62-948D-9D259539B5F5', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:46:09', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('AF504D6B-9AEA-4542-B9C5-EF2937D0FC2A', 'com.netunit.template.web.login.LoginAction', '2013-03-09 16:46:55', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('AF716247-CABE-4F06-AEA9-447B8D06D363', 'com.netunit.template.web.login.LoginAction', '2013-03-11 00:05:48', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('B6AE8817-3CDF-4D00-BA22-70E0E15F0B27', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:52:55', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('B8C4A599-CA2F-4648-83C9-72D2CEC7931F', 'com.netunit.template.web.login.LoginAction', '2013-03-09 16:46:01', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('BC513466-25A5-4095-8D73-031638B3BAD6', 'com.netunit.template.web.login.LoginAction', '2013-03-09 16:55:15', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('BDDFE14F-B598-43D2-8428-EEB2682A3B62', 'com.netunit.template.web.login.LoginAction', '2013-03-09 11:34:46', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('BE9CCA20-6040-4A35-B5A5-36410EA58B28', 'com.netunit.template.web.login.LoginAction', '2013-03-09 09:38:23', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('C043F35C-62E8-4745-B92B-001AD7CF0F3C', 'com.netunit.template.web.login.LoginAction', '2013-03-09 11:47:42', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('C1C6C6C1-439E-4183-B401-8F09CAF78A01', 'com.netunit.template.web.login.LoginAction', '2013-03-08 17:39:30', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('C280DF7E-DD70-4A59-B623-40FE2945259C', 'com.netunit.template.web.login.LoginAction', '2013-03-09 23:00:20', '001', '127.0.0.1', 'execute', '??????: sysdebug|调试|组织机构', 'INFO');
INSERT INTO `operate_log_p` VALUES ('C33EF9C0-6BA3-473D-B32B-46EDFFBDF2CC', 'com.netunit.template.web.login.LoginAction', '2013-03-09 09:29:41', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('C55F2FE0-5310-4C4B-9C8D-C51007C16EC3', 'com.netunit.template.web.login.LoginAction', '2013-03-09 16:18:52', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('C59D415E-A1C5-4B64-B32F-253325AEBB92', 'com.netunit.template.web.login.LoginAction', '2013-03-09 23:51:57', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('CD8069C3-FA76-4A91-8F85-F1FA27CFD908', 'com.netunit.template.web.login.LoginAction', '2013-03-08 16:55:27', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('CE94533D-A01D-43FE-8BBD-0B6E3D54AB6D', 'com.netunit.template.web.login.LoginAction', '2013-03-08 09:53:04', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('CF11EC95-BEA9-4BCD-8698-27F6D6FCB751', 'com.netunit.template.web.login.LoginAction', '2013-03-10 11:20:27', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('CF7ED0FC-9D3A-4FB0-9DF1-E7B1E79C643D', 'com.netunit.template.web.login.LoginAction', '2013-03-09 10:41:48', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('D5D394D0-6A05-48EE-8F80-BDBBDF3B1429', 'com.netunit.template.web.login.LoginAction', '2013-03-09 23:30:16', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('D6865AF5-8099-4FA4-AFA1-15C75303955B', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:45:43', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('D8D5C355-6ABA-4D0A-AE75-18094A9DE547', 'com.netunit.template.web.login.LoginAction', '2013-03-09 10:35:20', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('D924D0FF-80D3-49F0-9473-C0CBB23FBFFB', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:49:18', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('D9E7F101-9288-49F9-8921-BB3593964016', 'com.netunit.template.web.login.LoginAction', '2013-03-08 00:00:23', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('DCFF960F-2F85-4398-B82E-8C097D52561C', 'com.netunit.template.web.login.LoginAction', '2013-03-08 10:17:39', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('DEA2371B-5AB2-4FBC-BB70-BC3ABDFD4CFB', 'com.netunit.template.web.login.LoginAction', '2013-03-09 16:20:19', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('DF03D46E-AFA8-4E2C-9ED2-C1AF8F398C29', 'com.netunit.template.web.login.LoginAction', '2013-03-09 18:52:43', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('DFBE145C-481B-473F-9BB9-629999E68084', 'com.netunit.template.web.login.LoginAction', '2013-03-09 17:02:36', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('E2D5A40C-0EBA-46CE-BEB6-0E43EA0F82B7', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:47:55', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('E3701D0C-657D-4040-B479-5089DA853A2A', 'com.netunit.template.web.login.LoginAction', '2013-03-07 23:12:16', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('E5E7505D-138B-4766-8088-2D9A699B80C7', 'com.netunit.template.web.login.LoginAction', '2013-03-09 17:12:51', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('E8AA2995-929C-449D-8949-380034E5809E', 'com.netunit.template.web.login.LoginAction', '2013-03-09 16:56:22', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('ED691084-8410-43B6-8E4E-4ED06C4858A1', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:53:36', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('EDA3C35A-BD4E-47AE-96E9-D20B12670CC2', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:21:49', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('EE059173-1784-4F14-87E1-9B535827CA0B', 'com.netunit.template.web.login.LoginAction', '2013-03-10 11:25:12', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('EE29CFD1-6A49-410E-9087-1A70EDA26824', 'com.netunit.template.web.login.LoginAction', '2013-03-09 16:21:43', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('EEF1976B-A1CE-42D0-B241-6CE653200F48', 'com.netunit.template.web.login.LoginAction', '2013-03-08 11:19:09', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('F03A53DE-1F1A-4F03-A670-9EBDEC5F17CD', 'com.netunit.template.web.login.LoginAction', '2013-03-09 15:55:51', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('F6EF3C22-8DC9-483C-9B45-0E06D953C63B', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:53:38', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('F8FAB00B-25AE-4AE1-994D-35DC2C3BF705', 'com.netunit.template.web.TopBaseAction', '2013-03-09 16:53:33', 'show|演示', '127.0.0.1', 'promptError', 'java.lang.NullPointerException', 'ERROR');
INSERT INTO `operate_log_p` VALUES ('FACEF592-00B4-488F-B2F2-C52AC8372A9D', 'com.netunit.template.web.login.LoginAction', '2013-03-07 23:58:31', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '登陆成功: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('FCE0C76C-A6DA-4BF4-8C19-82B9F2486731', 'com.netunit.template.web.login.LoginAction', '2013-03-09 15:58:44', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('FEDC3F47-8C39-4DE5-8204-A07E709092EF', 'com.netunit.template.web.login.LoginAction', '2013-03-09 10:58:14', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');
INSERT INTO `operate_log_p` VALUES ('FF8EBD93-FE99-4E8B-9296-CAD9A12804CD', 'com.netunit.template.web.login.LoginAction', '2013-03-09 16:49:10', 'ff8080813d00613e013d006644a60003', '127.0.0.1', 'execute', '??????: show|演示|杰信商贸', 'INFO');

-- ----------------------------
-- Table structure for `packing_list_c`
-- ----------------------------
DROP TABLE IF EXISTS `packing_list_c`;
CREATE TABLE `packing_list_c` (
  `PACKING_LIST_ID` varchar(40) NOT NULL,
  `EXPORT_ID` varchar(40) DEFAULT NULL COMMENT '用扩展字段维护两个的一对多的关系\r\n            EXPORT_IDS',
  `SELLER` varchar(200) DEFAULT NULL,
  `BUYER` varchar(200) DEFAULT NULL,
  `INVOICE_NO` varchar(30) DEFAULT NULL COMMENT '选择',
  `INVOICE_DATE` datetime DEFAULT NULL,
  `MARKS` varchar(200) DEFAULT NULL,
  `DESCRIPTIONS` varchar(200) DEFAULT NULL,
  `EXPORT_IDS` varchar(200) DEFAULT NULL COMMENT '报运ID集合',
  `EXPORT_NOS` varchar(200) DEFAULT NULL COMMENT '报运NO集合x,y|z,h',
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `CREATE_DEPT` varchar(40) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`PACKING_LIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of packing_list_c
-- ----------------------------
INSERT INTO `packing_list_c` VALUES ('402880e73f16f0bf013f1741edfc0002', null, 'INT\'L CO.,LTD.\r\n8-C,JIATENG BUILDING.NO.108\r\nHEPING RO0001', 'LEE &CO.,LTD\r\nNOS.9-12,17/FL,TOWER 3,\r\nCHINA HONGKONG CITY,\r\n33CANTON ROOWLOON.HK', '13JK122', '2013-05-26 00:00:00', '', '', '4028817a3b3a59cd013b3b96187b0033', 'C/2256/12', null, null, null);
INSERT INTO `packing_list_c` VALUES ('402880e73f16f0bf013f1758325d0003', null, 'INT\'L CO.,LTD.\r\n8-C,JIATENG BUILDING.NO.108\r\nHEPING RO0001', 'LEE &CO.,LTD\r\nNOS.9-12,17/FL,TOWER 3,\r\nCHINA HONGKONG CITY,\r\n33CANTON ROOWLOON.HK', '89', '2013-06-10 00:00:00', '', '', '402881e63d9b1903013d9b4bc72c000b', 'C/3817/11,11JK1080,11JK1078', null, null, null);

-- ----------------------------
-- Table structure for `report_card_c`
-- ----------------------------
DROP TABLE IF EXISTS `report_card_c`;
CREATE TABLE `report_card_c` (
  `REPORT_CARD_ID` varchar(40) NOT NULL,
  `STUDENT_ID` varchar(40) DEFAULT NULL,
  `STUDENT_NO` varchar(40) DEFAULT NULL COMMENT 'STUDENT_C',
  `STUDENT_NAME` varchar(40) DEFAULT NULL COMMENT 'STUDENT_C',
  `TEST_PAPER_ID` varchar(40) DEFAULT NULL,
  `EXAM_TYPE` int(11) DEFAULT NULL COMMENT 'SYS_CODE_B 0106',
  `SCORE` decimal(8,2) DEFAULT NULL,
  `EXAM_TIME` datetime DEFAULT NULL,
  `EXAM_BY` varchar(40) DEFAULT NULL,
  `REMARK` varchar(2000) DEFAULT NULL COMMENT '适应班级,难度等',
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `CREATE_DEPT` varchar(40) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`REPORT_CARD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_card_c
-- ----------------------------
INSERT INTO `report_card_c` VALUES ('402880ee410310d00141031f71580002', null, 'tony', '苏秦', '001', '5', '85.00', null, null, null, null, null, null);
INSERT INTO `report_card_c` VALUES ('402880ee410310d00141032789ac0006', null, 'rom', '张仪', '001', '5', '56.00', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `role_module_p`
-- ----------------------------
DROP TABLE IF EXISTS `role_module_p`;
CREATE TABLE `role_module_p` (
  `ROLE_ID` varchar(40) DEFAULT NULL,
  `MODULE_ID` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_module_p
-- ----------------------------
INSERT INTO `role_module_p` VALUES ('40288647319cc92901319ced2a1500bf', '0101');
INSERT INTO `role_module_p` VALUES ('40288647319cc92901319ced2a1500bf', '0101070303');
INSERT INTO `role_module_p` VALUES ('40288647319cc92901319ced2a1500bf', '0101070302');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '0101070303');
INSERT INTO `role_module_p` VALUES ('ff808081319eb4980131a183d4ae00f3', '0130');
INSERT INTO `role_module_p` VALUES ('ff808081319eb4980131a183d4ae00f3', '013006');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '0101070302');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '0130040703');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '01300402');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '01300307');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '013004080403');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '013004080503');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '01300302');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '01010703');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '01010702');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '01300406');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '0130');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '01300407');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '0101');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '01300408');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '0130040805');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '010104');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '0130040803');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '0130040804');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '01010402');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '01010403');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '010107');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '013004');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '013002');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '013003');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c4379001d', '01300313');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '0130040404');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '0130040403');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '0130040402');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '01300705');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '01300402');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '01300403');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '01300704');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '01300404');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '01300405');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '0130070202');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '0130070201');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '01300406');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '0130');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '0130040303');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '0130040302');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '01300703');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '01300702');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '01300701');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '01300411');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '01300410');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '01300413');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '01300412');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '0130070302');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '0130070301');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '013004');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939cc4de0020', '013007');
INSERT INTO `role_module_p` VALUES ('40288647319cc92901319ced2a1500bf', '010104');
INSERT INTO `role_module_p` VALUES ('40288647319cc92901319ced2a1500bf', '01010402');
INSERT INTO `role_module_p` VALUES ('40288647319cc92901319ced2a1500bf', '01010403');
INSERT INTO `role_module_p` VALUES ('40288647319cc92901319ced2a1500bf', '01010703');
INSERT INTO `role_module_p` VALUES ('40288647319cc92901319ced2a1500bf', '01010702');
INSERT INTO `role_module_p` VALUES ('40288647319cc92901319ced2a1500bf', '01010705');
INSERT INTO `role_module_p` VALUES ('40288647319cc92901319ced2a1500bf', '0101070602');
INSERT INTO `role_module_p` VALUES ('40288647319cc92901319ced2a1500bf', '01010704');
INSERT INTO `role_module_p` VALUES ('40288647319cc92901319ced2a1500bf', '0101070603');
INSERT INTO `role_module_p` VALUES ('40288647319cc92901319ced2a1500bf', '010107');
INSERT INTO `role_module_p` VALUES ('40288647319cc92901319ced2a1500bf', '0101070403');
INSERT INTO `role_module_p` VALUES ('40288647319cc92901319ced2a1500bf', '0101070402');
INSERT INTO `role_module_p` VALUES ('40288647319cc92901319ced2a1500bf', '01010706');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '013006');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939706b70014', '01300202');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c4379001d', '01300314');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c4379001d', '013003');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c4379001d', '0130');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939d5ecd0023', '01300402');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939d5ecd0023', '0130080202');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939d5ecd0023', '0130080201');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939ddebb0029', '01300807');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939ddebb0029', '01300801');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939ddebb0029', '013004');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939ddebb0029', '0130');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939ddebb0029', '0130080701');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939ddebb0029', '0130080702');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939ddebb0029', '013008');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939e27e9002c', '01300801');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939e27e9002c', '0130080802');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939e27e9002c', '01300808');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939e27e9002c', '01300402');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939e27e9002c', '013004');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939e27e9002c', '0130');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939e27e9002c', '0130080801');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939e27e9002c', '013008');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939daf4e0026', '01300806');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939daf4e0026', '01300801');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939daf4e0026', '0130080601');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939daf4e0026', '0130080602');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939daf4e0026', '0130');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939daf4e0026', '013008');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939d5ecd0023', '013008');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939d5ecd0023', '0130080302');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939d5ecd0023', '01300801');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939d5ecd0023', '01300805');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939d5ecd0023', '01300802');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939d5ecd0023', '0130080301');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939d5ecd0023', '01300804');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939d5ecd0023', '01300414');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939d5ecd0023', '013004');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939d5ecd0023', '0130');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939d5ecd0023', '01300803');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '0103060402');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '0101');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '0103060403');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '01030605');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '01010702');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '01030702');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '01030607');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '01030703');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '01030606');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '01030603');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '01030604');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '01010703');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '01030402');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '0103');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '01030704');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '0103070302');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '01030705');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '0103070303');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '01030301');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '01030602');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '0103060302');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '0103060303');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '010107');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '010306');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '010308');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '010303');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '010304');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '010104');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '01010402');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '010307');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '0101070303');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '0103070402');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '0101070302');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939859b40017', '0103070403');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '0130030303');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '0130030302');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '01300307');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '01300312');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '01300305');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '01300304');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '01300315');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '01300303');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '0130031202');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '01300316');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '0130031203');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '01300302');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '01300317');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '0130031502');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '01300318');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '0130');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '013003');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '0130030403');
INSERT INTO `role_module_p` VALUES ('402886473192cf370131939c11da001a', '0130030402');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '01040103');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '01040102');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0101');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '01040101');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '010401');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '01010702');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0104010201');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0104010202');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0101070602');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0101070603');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0104010106');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0104010104');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0104010105');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0104010305');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '01010704');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0101070403');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '01010703');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0104010303');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0101070402');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0104010304');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '01010705');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '01030402');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0104010302');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0104');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0103');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0104010301');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0104010204');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0104010205');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '01010706');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0104010207');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '01030301');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0104010203');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '010107');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '010303');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '010104');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '010304');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '01010403');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '01010402');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0104010101');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0104010102');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0101070303');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0104010103');
INSERT INTO `role_module_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '0101070302');

-- ----------------------------
-- Table structure for `role_p`
-- ----------------------------
DROP TABLE IF EXISTS `role_p`;
CREATE TABLE `role_p` (
  `ROLE_ID` varchar(40) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `ROLE_DESC` varchar(100) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_p
-- ----------------------------
INSERT INTO `role_p` VALUES ('402886473192cf370131939706b70014', '领导察看', '管理层察看各项记录', '11');
INSERT INTO `role_p` VALUES ('402886473192cf370131939859b40017', '演示', '演示', '12');
INSERT INTO `role_p` VALUES ('402886473192cf370131939c11da001a', '合同管理', '', '20');
INSERT INTO `role_p` VALUES ('402886473192cf370131939c4379001d', '合同归档', '', '21');
INSERT INTO `role_p` VALUES ('402886473192cf370131939cc4de0020', '报运', '', '22');
INSERT INTO `role_p` VALUES ('402886473192cf370131939d5ecd0023', '装箱', '', '23');
INSERT INTO `role_p` VALUES ('402886473192cf370131939daf4e0026', '委托', '', '24');
INSERT INTO `role_p` VALUES ('402886473192cf370131939ddebb0029', '发票', '', '25');
INSERT INTO `role_p` VALUES ('402886473192cf370131939e27e9002c', '财务', '', '26');
INSERT INTO `role_p` VALUES ('40288647319cc92901319ced2a1500bf', '基础功能', '', '13');
INSERT INTO `role_p` VALUES ('ff808081307f4ffc01307f596f2a0018', '管理员', '主要职责为创建部门,创建角色,创建用户,分配权限', '10');
INSERT INTO `role_p` VALUES ('ff808081319eb4980131a183d4ae00f3', '综合查询', '', '14');

-- ----------------------------
-- Table structure for `role_user_p`
-- ----------------------------
DROP TABLE IF EXISTS `role_user_p`;
CREATE TABLE `role_user_p` (
  `ROLE_ID` varchar(40) NOT NULL,
  `USER_ID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_user_p
-- ----------------------------
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939c4379001d', 'ff8080813d00613e013d006644a60003');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939c11da001a', 'ff8080813d00613e013d006644a60003');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939ddebb0029', 'ff8080813d00613e013d006644a60003');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939cc4de0020', 'ff8080813d00613e013d006644a60003');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939e27e9002c', 'ff8080813d00613e013d006644a60003');
INSERT INTO `role_user_p` VALUES ('40288647319cc92901319ced2a1500bf', 'ff80808131301abf01313044c2d00047');
INSERT INTO `role_user_p` VALUES ('40288647319cc92901319ced2a1500bf', 'ff8080813d00613e013d006644a60003');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939859b40017', 'ff8080813d00613e013d006644a60003');
INSERT INTO `role_user_p` VALUES ('ff808081319eb4980131a183d4ae00f3', 'ff80808131301abf01313044c2d00047');
INSERT INTO `role_user_p` VALUES ('ff808081319eb4980131a183d4ae00f3', 'ff8080813d00613e013d006644a60003');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939daf4e0026', 'ff8080813d00613e013d006644a60003');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939d5ecd0023', 'ff8080813d00613e013d006644a60003');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939daf4e0026', 'ff80808131301abf01313040e6b7003b');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939c4379001d', 'ff80808131301abf01313040e6b7003b');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939c11da001a', 'ff80808131301abf01313040e6b7003b');
INSERT INTO `role_user_p` VALUES ('40288647319cc92901319ced2a1500bf', 'ff80808131301abf01313040e6b7003b');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939cc4de0020', 'ff80808131301abf01313040e6b7003b');
INSERT INTO `role_user_p` VALUES ('ff808081319eb4980131a183d4ae00f3', 'ff80808131301abf01313040e6b7003b');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939d5ecd0023', 'ff80808131301abf01313040e6b7003b');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939ddebb0029', 'ff80808131301abf01313040e6b7003b');
INSERT INTO `role_user_p` VALUES ('40288647319cc92901319ced2a1500bf', 'ff80808131301abf013130492d100053');
INSERT INTO `role_user_p` VALUES ('ff808081319eb4980131a183d4ae00f3', 'ff80808131301abf013130492d100053');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939e27e9002c', 'ff80808131301abf01313041a034003e');
INSERT INTO `role_user_p` VALUES ('40288647319cc92901319ced2a1500bf', 'ff80808131301abf01313041a034003e');
INSERT INTO `role_user_p` VALUES ('ff808081319eb4980131a183d4ae00f3', 'ff80808131301abf01313041a034003e');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939ddebb0029', 'ff80808131301abf01313041a034003e');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939daf4e0026', 'ff80808131301abf0131304ac5060058');
INSERT INTO `role_user_p` VALUES ('40288647319cc92901319ced2a1500bf', 'ff80808131301abf0131304ac5060058');
INSERT INTO `role_user_p` VALUES ('ff808081319eb4980131a183d4ae00f3', 'ff80808131301abf0131304ac5060058');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939d5ecd0023', 'ff80808131301abf0131304ac5060058');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939ddebb0029', 'ff80808131301abf0131304ac5060058');
INSERT INTO `role_user_p` VALUES ('40288647319cc92901319ced2a1500bf', 'ff80808131301abf0131304334410041');
INSERT INTO `role_user_p` VALUES ('ff808081319eb4980131a183d4ae00f3', 'ff80808131301abf0131304334410041');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939706b70014', 'ff80808131301abf0131304334410041');
INSERT INTO `role_user_p` VALUES ('40288647319cc92901319ced2a1500bf', 'ff80808131301abf0131303ceab20031');
INSERT INTO `role_user_p` VALUES ('ff808081319eb4980131a183d4ae00f3', 'ff80808131301abf0131303ceab20031');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939706b70014', 'ff80808131301abf0131303ceab20031');
INSERT INTO `role_user_p` VALUES ('40288647319cc92901319ced2a1500bf', 'ff80808131301abf01313043fd3e0044');
INSERT INTO `role_user_p` VALUES ('ff808081319eb4980131a183d4ae00f3', 'ff80808131301abf01313043fd3e0044');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939706b70014', 'ff80808131301abf01313043fd3e0044');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939daf4e0026', 'ff80808131301abf0131303ed30a0035');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939c4379001d', 'ff80808131301abf0131303ed30a0035');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939c11da001a', 'ff80808131301abf0131303ed30a0035');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939859b40017', 'ff80808131301abf0131303ed30a0035');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939e27e9002c', 'ff80808131301abf0131303ed30a0035');
INSERT INTO `role_user_p` VALUES ('40288647319cc92901319ced2a1500bf', 'ff80808131301abf0131303ed30a0035');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939cc4de0020', 'ff80808131301abf0131303ed30a0035');
INSERT INTO `role_user_p` VALUES ('ff808081319eb4980131a183d4ae00f3', 'ff80808131301abf0131303ed30a0035');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939d5ecd0023', 'ff80808131301abf0131303ed30a0035');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939706b70014', 'ff80808131301abf0131303ed30a0035');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939ddebb0029', 'ff80808131301abf0131303ed30a0035');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939c11da001a', 'ff80808131301abf0131303fe2e40038');
INSERT INTO `role_user_p` VALUES ('40288647319cc92901319ced2a1500bf', 'ff80808131301abf0131303fe2e40038');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939cc4de0020', 'ff80808131301abf0131303fe2e40038');
INSERT INTO `role_user_p` VALUES ('ff808081319eb4980131a183d4ae00f3', 'ff80808131301abf0131303fe2e40038');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939d5ecd0023', 'ff80808131301abf0131303fe2e40038');
INSERT INTO `role_user_p` VALUES ('40288647319cc92901319ced2a1500bf', 'ff80808131301abf013130455a7c004a');
INSERT INTO `role_user_p` VALUES ('ff808081319eb4980131a183d4ae00f3', 'ff80808131301abf013130455a7c004a');
INSERT INTO `role_user_p` VALUES ('402886473192cf370131939706b70014', 'ff80808131301abf013130455a7c004a');
INSERT INTO `role_user_p` VALUES ('ff808081307f4ffc01307f596f2a0018', 'ff8080813d00613e013d006644a60003');
INSERT INTO `role_user_p` VALUES ('ff808081307f4ffc01307f596f2a0018', 'ff80808131301abf0131303ed30a0035');
INSERT INTO `role_user_p` VALUES ('40288647319cc92901319ced2a1500bf', 'ff808081307f4ffc01307f5ce342001f');
INSERT INTO `role_user_p` VALUES ('ff808081307f4ffc01307f596f2a0018', 'ff808081307f4ffc01307f5ce342001f');

-- ----------------------------
-- Table structure for `rule_code_b`
-- ----------------------------
DROP TABLE IF EXISTS `rule_code_b`;
CREATE TABLE `rule_code_b` (
  `RULE_CODE_ID` varchar(50) NOT NULL,
  `RULE_DESC` varchar(100) DEFAULT NULL,
  `RULE_STR` varchar(50) DEFAULT NULL,
  `REPEAT_MODE` int(11) DEFAULT NULL,
  `START_VALUE` int(11) DEFAULT NULL,
  `MAX_VALUE` int(11) DEFAULT NULL,
  `LASTREPEAT_TIME` datetime DEFAULT NULL,
  `CURRENT_VALUE` int(11) DEFAULT NULL,
  PRIMARY KEY (`RULE_CODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rule_code_b
-- ----------------------------
INSERT INTO `rule_code_b` VALUES ('InvoiceNo', '发票号', '[YY]JX[3N]', '2', '1', null, null, '339');

-- ----------------------------
-- Table structure for `shipping_order_c`
-- ----------------------------
DROP TABLE IF EXISTS `shipping_order_c`;
CREATE TABLE `shipping_order_c` (
  `SHIPPING_ORDER_ID` varchar(40) NOT NULL COMMENT '等于PACKING_LIST_ID',
  `ORDER_TYPE` char(1) DEFAULT NULL COMMENT '0海运/1空运',
  `SHIPPER` varchar(200) DEFAULT NULL,
  `CONSIGNEE` varchar(200) DEFAULT NULL,
  `NOTIFY_PARTY` varchar(200) DEFAULT NULL,
  `LC_NO` varchar(30) DEFAULT NULL,
  `PORT_OF_LOADING` varchar(30) DEFAULT NULL,
  `PORT_OF_TRANS` varchar(30) DEFAULT NULL,
  `PORT_OF_DISCHARGE` varchar(30) DEFAULT NULL,
  `LOADING_DATE` datetime DEFAULT NULL,
  `LIMIT_DATE` datetime DEFAULT NULL,
  `IS_BATCH` char(1) DEFAULT NULL COMMENT '1是0否',
  `IS_TRANS` char(1) DEFAULT NULL COMMENT '1是0否',
  `COPY_NUM` varchar(20) DEFAULT NULL,
  `CNOTE` varchar(200) DEFAULT NULL,
  `SPECIAL_CONDITION` varchar(200) DEFAULT NULL,
  `FREIGHT` varchar(200) DEFAULT NULL,
  `CHECK_BY` varchar(30) DEFAULT NULL,
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `CREATE_DEPT` varchar(40) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`SHIPPING_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shipping_order_c
-- ----------------------------
INSERT INTO `shipping_order_c` VALUES ('402880e73f16f0bf013f1741edfc0002', null, '货主', '', '', '', '', '', '', '2013-06-12 00:00:00', '2013-06-17 00:00:00', null, null, '', null, '', '', '', null, null, null);
INSERT INTO `shipping_order_c` VALUES ('402880e73f16f0bf013f1758325d0003', '0', '货主：', '', '', '', '', '', '', null, null, null, null, '', null, '', '', '', null, null, null);

-- ----------------------------
-- Table structure for `student_c`
-- ----------------------------
DROP TABLE IF EXISTS `student_c`;
CREATE TABLE `student_c` (
  `STUDENT_ID` varchar(40) NOT NULL,
  `CLASS_ID` varchar(40) DEFAULT NULL,
  `PASS` varchar(20) DEFAULT NULL COMMENT 'MD5',
  `LOGIN_NAME` varchar(30) DEFAULT NULL COMMENT '登录考试系统',
  `STUDENT_NO` varchar(40) DEFAULT NULL COMMENT 'STUDENT_C',
  `NAME` varchar(100) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL COMMENT '页面显示年龄',
  `SCHOOL` varchar(200) DEFAULT NULL,
  `EDUCATION` int(11) DEFAULT NULL COMMENT '下拉框 学历基础数据',
  `REMARK` varchar(4000) DEFAULT NULL,
  `REG_TIME` datetime DEFAULT NULL COMMENT '统计',
  `SOURCE` varchar(40) DEFAULT NULL COMMENT '基础数据：1学校2培训机构3工作4老学员介绍5其他',
  `STATE` int(11) DEFAULT NULL COMMENT '下拉框 学生状态 1正常2毕业3重修4开除',
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `CREATE_DEPT` varchar(40) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`STUDENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_c
-- ----------------------------
INSERT INTO `student_c` VALUES ('001', null, '登录密码', '登录账号', '学号', '姓名', '2013-09-19 00:00:00', '毕业学校', '6', '备注', '2013-09-09 00:00:00', '3', '1', null, null, null);

-- ----------------------------
-- Table structure for `sys_code_b`
-- ----------------------------
DROP TABLE IF EXISTS `sys_code_b`;
CREATE TABLE `sys_code_b` (
  `SYS_CODE_ID` varchar(40) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `PARENT_ID` varchar(40) DEFAULT NULL,
  `PARENT_NAME` varchar(100) DEFAULT NULL,
  `LAYER_NUM` int(11) DEFAULT NULL,
  `IS_LEAF` char(1) DEFAULT NULL,
  `ICO` varchar(20) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `CNOTE` varchar(100) DEFAULT NULL,
  `QUOTE_NUM` int(11) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  `CREATED_BY` varchar(40) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(40) DEFAULT NULL,
  `UPDATED_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`SYS_CODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_code_b
-- ----------------------------
INSERT INTO `sys_code_b` VALUES ('01', '系统代码', '-1', 'root', '0', '0', null, '1', null, '1', '0', null, '2010-03-11 09:34:38', null, '2010-03-11 09:34:38');
INSERT INTO `sys_code_b` VALUES ('0101', '人员级别', '01', '系统代码', '1', '0', '', '', '', '0', '1', '001', '2011-07-16 07:43:41', null, null);
INSERT INTO `sys_code_b` VALUES ('010102', '管理员', '0101', '人员级别', '2', '1', '', '', '', '0', '1', '001', '2011-07-16 07:44:43', null, null);
INSERT INTO `sys_code_b` VALUES ('010103', '总经理', '0101', '人员级别', '2', '1', '', '', '', '0', '2', '001', '2011-07-16 07:44:43', null, null);
INSERT INTO `sys_code_b` VALUES ('010104', '部门经理', '0101', '人员级别', '2', '1', '', '', '', '0', '3', '001', '2011-07-16 07:44:43', '001', '2011-07-16 07:44:59');
INSERT INTO `sys_code_b` VALUES ('010105', '组长', '0101', '人员级别', '2', '1', '', '', '', '0', '4', '001', '2011-07-16 07:44:43', null, null);
INSERT INTO `sys_code_b` VALUES ('010106', '员工', '0101', '人员级别', '2', '1', '', '', '', '0', '5', '001', '2011-07-16 07:44:43', null, null);
INSERT INTO `sys_code_b` VALUES ('0102', '栏目', '01', '系统代码', '1', '0', '', '', '', '0', '2', '001', '2011-08-05 15:21:43', null, null);
INSERT INTO `sys_code_b` VALUES ('010202', '新闻报道', '0102', '栏目', '2', '1', '', '', '', '0', '1', '001', '2011-08-05 15:24:17', null, null);
INSERT INTO `sys_code_b` VALUES ('010203', '通知公告', '0102', '栏目', '2', '1', '', '', '', '0', '2', '001', '2011-08-05 15:24:17', null, null);
INSERT INTO `sys_code_b` VALUES ('010204', '公司制度', '0102', '栏目', '2', '1', '', '', '', '0', '3', '001', '2011-08-05 15:24:17', null, null);
INSERT INTO `sys_code_b` VALUES ('010205', '行业报道', '0102', '栏目', '2', '1', '', '', '', '0', '4', '001', '2011-08-05 15:24:17', null, null);
INSERT INTO `sys_code_b` VALUES ('010206', '大事记', '0102', '栏目', '2', '1', '', '', '', '0', '5', '001', '2011-08-05 15:24:17', null, null);
INSERT INTO `sys_code_b` VALUES ('0103', '厂家类型', '01', '系统代码', '1', '0', '', '', '', '1', '3', '001', '2011-08-05 15:21:43', '001', '2011-10-04 08:13:04');
INSERT INTO `sys_code_b` VALUES ('010302', '玻璃', '0103', '厂家类型', '2', '1', '', '', '', '1', '1', '001', '2011-08-18 16:10:22', '001', '2011-10-04 08:14:20');
INSERT INTO `sys_code_b` VALUES ('010303', '彩盒', '0103', '厂家类型', '2', '1', '', '', '', '1', '2', '001', '2011-08-18 16:10:22', '001', '2011-10-04 08:14:20');
INSERT INTO `sys_code_b` VALUES ('010304', 'PVC', '0103', '厂家类型', '2', '1', '', '', '', '1', '3', '001', '2012-01-20 15:16:07', null, null);
INSERT INTO `sys_code_b` VALUES ('010305', '花纸', '0103', '厂家类型', '2', '1', '', '', '', '1', '4', '001', '2012-01-20 15:16:07', null, null);
INSERT INTO `sys_code_b` VALUES ('010306', '保丽龙', '0103', '厂家类型', '2', '1', '', '', '', '1', '5', '001', '2012-01-20 15:16:07', null, null);
INSERT INTO `sys_code_b` VALUES ('010307', '电镀', '0103', '厂家类型', '2', '1', '', '', '', '1', '6', '001', '2012-01-20 15:16:07', null, null);
INSERT INTO `sys_code_b` VALUES ('010308', '水龙头', '0103', '厂家类型', '2', '1', '', '', '', '1', '7', '001', '2012-01-20 15:16:07', null, null);
INSERT INTO `sys_code_b` VALUES ('010309', '蜡', '0103', '厂家类型', '2', '1', '', '', '', '1', '8', '001', '2012-11-09 11:59:26', null, null);
INSERT INTO `sys_code_b` VALUES ('0104', '附件类型', '01', '系统代码', '1', '0', '', '', '', '1', '4', '001', '2011-10-04 08:13:04', null, null);
INSERT INTO `sys_code_b` VALUES ('010402', '彩盒', '0104', '附件类型', '2', '1', '', '1', '', '1', '1', '001', '2011-10-04 08:14:10', null, null);
INSERT INTO `sys_code_b` VALUES ('010403', '花纸', '0104', '附件类型', '2', '1', '', '1', '', '1', '2', '001', '2011-10-04 08:14:10', null, null);
INSERT INTO `sys_code_b` VALUES ('010404', '保丽龙', '0104', '附件类型', '2', '1', '', '1', '', '1', '3', '001', '2011-10-04 08:14:10', null, null);
INSERT INTO `sys_code_b` VALUES ('010405', '电镀', '0104', '附件类型', '2', '1', null, '1', null, '1', '4', '001', '2011-10-04 08:14:11', null, '2011-11-26 13:08:59');
INSERT INTO `sys_code_b` VALUES ('010407', 'PVC', '0104', '附件类型', '2', '1', '', '1', '', '0', '6', '001', '2011-12-06 12:54:52', null, null);
INSERT INTO `sys_code_b` VALUES ('010408', '喷头', '0104', '附件类型', '2', '1', '', '1', '', '0', '7', '001', '2011-12-06 12:54:52', null, null);
INSERT INTO `sys_code_b` VALUES ('010409', '不锈钢勺子', '0104', '附件类型', '2', '1', null, '1', null, '0', '8', '001', '2012-04-01 14:24:24', null, '2012-04-01 14:24:24');

-- ----------------------------
-- Table structure for `sys_code_c`
-- ----------------------------
DROP TABLE IF EXISTS `sys_code_c`;
CREATE TABLE `sys_code_c` (
  `SYS_CODE_ID` varchar(40) NOT NULL,
  `CLASS_CODE_ID` varchar(40) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SYS_CODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_code_c
-- ----------------------------
INSERT INTO `sys_code_c` VALUES ('010302', '0103', '玻璃');
INSERT INTO `sys_code_c` VALUES ('010303', '0103', '彩盒');
INSERT INTO `sys_code_c` VALUES ('010304', '0103', 'PVC');
INSERT INTO `sys_code_c` VALUES ('010305', '0103', '花纸');
INSERT INTO `sys_code_c` VALUES ('010306', '0103', '保丽龙');
INSERT INTO `sys_code_c` VALUES ('010307', '0103', '电镀');
INSERT INTO `sys_code_c` VALUES ('010308', '0103', '水龙头');
INSERT INTO `sys_code_c` VALUES ('010309', '0103', '蜡');
INSERT INTO `sys_code_c` VALUES ('402880e73f08539f013f087dda180005', '402880e73f08539f013f085543b60002', '玻璃');
INSERT INTO `sys_code_c` VALUES ('402880e73f08539f013f08960dc60007', '402880e73f08539f013f085543b60002', '彩盒');
INSERT INTO `sys_code_c` VALUES ('402880e73f08539f013f0896dc510008', '402880e73f08539f013f085543b60002', 'PVC');

-- ----------------------------
-- Table structure for `sys_config_b`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config_b`;
CREATE TABLE `sys_config_b` (
  `SYS_CONFIG_ID` varchar(40) NOT NULL,
  `KEY_CLASS` varchar(30) DEFAULT NULL,
  `KEY_NAME` varchar(30) DEFAULT NULL,
  `KEY_CONTENT` varchar(100) DEFAULT NULL,
  `IS_ENCRYPT` char(1) DEFAULT NULL,
  `CNOTE` varchar(100) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  `CREATED_BY` varchar(40) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(40) DEFAULT NULL,
  `UPDATED_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`SYS_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_config_b
-- ----------------------------
INSERT INTO `sys_config_b` VALUES ('40288647275f397701275fbde29c0003', 'SMS_CONFIG', 'username', 'bjdl', '1', null, '3', '001', '2010-03-15 10:53:52', '001', '2010-09-01 11:00:35');
INSERT INTO `sys_config_b` VALUES ('40288647275f397701275fbe2b0f0004', 'SMS_CONFIG', 'userpass', 'bjdl$as3df', '1', null, '4', '001', '2010-03-15 10:54:10', '001', '2010-09-01 11:00:35');
INSERT INTO `sys_config_b` VALUES ('40288647275f397701275fbe43e60005', 'SMS_CONFIG', 'IsSend', 'true', '1', 'true/false', '5', '001', '2010-03-15 10:54:17', '001', '2010-09-01 11:00:35');
INSERT INTO `sys_config_b` VALUES ('402886472acb32c7012acb3cd6ab0003', 'BASE', 'PORT', '8090', '1', null, '2', '001', '2010-09-01 11:00:16', '001', '2010-09-01 11:00:49');
INSERT INTO `sys_config_b` VALUES ('8a5298052e0d3759012e1e3d7f9a0172', 'FLASH_PAPER', 'PATH', 'E:\\ZYSB_SOFTWARE\\javaenv\\FlashPaper2.2', '1', '安装路径', '5', '001', '2011-02-13 16:57:50', null, null);

-- ----------------------------
-- Table structure for `sys_option_b`
-- ----------------------------
DROP TABLE IF EXISTS `sys_option_b`;
CREATE TABLE `sys_option_b` (
  `SYS_OPTION_ID` varchar(40) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `PARENT_ID` varchar(40) DEFAULT NULL,
  `PARENT_NAME` varchar(100) DEFAULT NULL,
  `LAYER_NUM` int(11) DEFAULT NULL,
  `IS_LEAF` char(1) DEFAULT NULL,
  `ICO` varchar(20) DEFAULT NULL,
  `CNOTE` varchar(100) DEFAULT NULL,
  `A_HREF` varchar(200) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `QUOTE_NUM` int(11) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  `CREATED_BY` varchar(30) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(30) DEFAULT NULL,
  `UPDATED_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`SYS_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_option_b
-- ----------------------------
INSERT INTO `sys_option_b` VALUES ('01', '控制面板', '-1', 'root', '1', '0', null, null, null, '', '1', '1', '001', '2010-03-05 15:34:24', '001', '2010-03-05 15:35:30');
INSERT INTO `sys_option_b` VALUES ('0102', '{ 系统鸟瞰 }', '01', '控制面板', '2', '0', null, null, null, '', '1', '1', '001', '2010-03-05 15:34:24', '001', '2010-03-05 15:35:30');
INSERT INTO `sys_option_b` VALUES ('010202', '系统功能模块图', '0102', '{ 系统鸟瞰 }', '3', '0', null, null, 'module.jsp', '1', '1', '1', '001', '2010-03-05 15:40:29', '001', '2010-03-09 14:51:18');
INSERT INTO `sys_option_b` VALUES ('010203', '系统组织机构图', '0102', '{ 系统鸟瞰 }', '3', '1', null, null, 'dept.jsp', '1', '1', '2', '001', '2010-03-05 15:40:29', '001', '2010-03-09 14:51:18');
INSERT INTO `sys_option_b` VALUES ('010204', '系统部门人员图', '0102', '{ 系统鸟瞰 }', '3', '1', null, null, 'user.jsp', '1', '1', '3', '001', '2010-03-05 15:41:05', '001', '2010-03-09 14:51:18');
INSERT INTO `sys_option_b` VALUES ('010205', '功能模块状态表', '0102', '{ 系统鸟瞰 }', '3', '1', null, null, 'state.jsp', '1', '1', '4', '001', '2010-03-05 15:42:09', '001', '2010-03-09 14:51:18');
INSERT INTO `sys_option_b` VALUES ('010206', '下拉列表值', '0102', '{ 系统鸟瞰 }', '3', '1', null, null, 'comboList.jsp', '1', '1', '5', '001', '2010-03-05 15:42:09', '001', '2010-03-09 14:51:18');
INSERT INTO `sys_option_b` VALUES ('0103', '{ 系统工具 }', '01', '控制面板', '2', '0', null, null, null, '', '1', '2', '001', '2010-03-05 15:36:38', null, null);
INSERT INTO `sys_option_b` VALUES ('010302', '系统管理', '0103', '{ 系统工具 }', '3', '1', null, null, '../common/SuitManager.jsp', '1', '1', '1', '001', '2010-03-09 14:54:32', '001', '2010-03-09 15:46:54');
INSERT INTO `sys_option_b` VALUES ('010303', '系统环境', '0103', '{ 系统工具 }', '3', '1', null, null, '../common/jspenv.jsp', '1', '1', '2', '001', '2010-03-09 14:54:32', '001', '2010-03-09 15:46:54');
INSERT INTO `sys_option_b` VALUES ('010304', '编码转换', '0103', '{ 系统工具 }', '3', '1', null, null, '../common/unicode2utf8.jsp', '1', '1', '3', '001', '2010-03-09 14:54:32', '001', '2010-03-09 15:46:54');
INSERT INTO `sys_option_b` VALUES ('010305', 'JS,HTML运行', '0103', '{ 系统工具 }', '3', '1', null, null, '../common/jsrun.html', '1', '1', '4', '001', '2010-03-09 15:46:54', null, null);
INSERT INTO `sys_option_b` VALUES ('010306', '万年历', '0103', '{ 系统工具 }', '3', '1', null, null, '../components/wnl/index.htm', '1', '1', '5', '001', '2010-03-09 15:46:54', null, null);
INSERT INTO `sys_option_b` VALUES ('010307', '计算汉字笔画', '0103', '{ 系统工具 }', '3', '1', null, null, '../components/words.html', '1', '1', '6', '001', '2010-03-09 15:46:54', null, null);
INSERT INTO `sys_option_b` VALUES ('010308', '汉字拼音', '0103', '{ 系统工具 }', '3', '1', null, null, '../components/pinyin.html', '1', '1', '7', '001', '2010-03-09 15:46:54', null, null);
INSERT INTO `sys_option_b` VALUES ('0104', '{ 基础信息 }', '01', '控制面板', '2', '0', null, null, null, '', '1', '3', '001', '2010-03-05 15:36:38', null, null);
INSERT INTO `sys_option_b` VALUES ('010403', '基础信息分类管理', '0104', '{ 基础信息 }', '3', '1', null, null, '../common/SuitManager.jsp', '', '1', '2', '001', '2010-03-09 15:53:26', null, null);
INSERT INTO `sys_option_b` VALUES ('010404', '基础信息管理', '0104', '{ 基础信息 }', '3', '1', null, null, '../common/viewdb.jsp', '', '1', '3', '001', '2010-03-09 15:53:26', null, null);
INSERT INTO `sys_option_b` VALUES ('010405', '菜单配置', '0104', '{ 基础信息 }', '3', '1', null, null, '/home/customerMenuUpdateAction.do', '', '1', '4', '001', '2010-03-09 15:53:26', null, null);
INSERT INTO `sys_option_b` VALUES ('010406', '生成班组页面', '0104', '{ 基础信息 }', '3', '1', null, null, '/basicinfo/doBasicInfoAction.do', '', '0', '4', '001', '2010-12-02 15:01:06', '001', '2011-01-26 15:05:57');
INSERT INTO `sys_option_b` VALUES ('010407', '生成省、市、县级首页面', '0104', '{ 基础信息 }', '3', '1', null, null, '/system_admin/makeIndexPageAction.do', '', '1', '5', '001', '2011-03-23 09:00:07', null, null);
INSERT INTO `sys_option_b` VALUES ('0105', '{ 信息统计 }', '01', '控制面板', '2', '0', null, null, null, '', '1', '4', '001', '2010-03-11 09:18:38', null, null);
INSERT INTO `sys_option_b` VALUES ('010502', '用户在线统计', '0105', '{ 信息统计 }', '3', '1', null, null, '/common/toSysConfigAction.do', '0', '0', '1', '001', '2010-03-11 09:19:49', null, null);
INSERT INTO `sys_option_b` VALUES ('010503', '栏目年访问量统计', '0105', '{ 信息统计 }', '3', '1', null, null, '../common/SuitManager.jsp', '', '0', '2', '001', '2010-03-11 09:19:49', null, null);
INSERT INTO `sys_option_b` VALUES ('010504', '栏目月访问量统计', '0105', '{ 信息统计 }', '3', '1', null, null, '../common/SuitManager.jsp', '', '0', '3', '001', '2010-03-11 09:19:49', null, null);
INSERT INTO `sys_option_b` VALUES ('010505', '栏目周访问量统计', '0105', '{ 信息统计 }', '3', '1', null, null, '../common/SuitManager.jsp', '', '0', '4', '001', '2010-03-11 09:19:49', null, null);
INSERT INTO `sys_option_b` VALUES ('010506', '栏目日访问量统计', '0105', '{ 信息统计 }', '3', '1', null, null, '../common/SuitManager.jsp', '', '0', '5', '001', '2010-03-11 09:19:49', null, null);

-- ----------------------------
-- Table structure for `sys_survey_b`
-- ----------------------------
DROP TABLE IF EXISTS `sys_survey_b`;
CREATE TABLE `sys_survey_b` (
  `SYS_SURVEY_ID` varchar(40) NOT NULL,
  `TITLE` varchar(600) DEFAULT NULL,
  `SQLSTR` varchar(600) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `ORASTR` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`SYS_SURVEY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_survey_b
-- ----------------------------
INSERT INTO `sys_survey_b` VALUES ('1', '自2011年6月17日班组管理系统上线以来, 系统已稳定运行[?]天', 'select convert(varchar(10),datediff(day, cast(\'2011.06.17\' as datetime) , getdate())) as no_of_days\r\n', '1', '1', null);
INSERT INTO `sys_survey_b` VALUES ('10', '工作动态[?]篇', 'select convert(varchar(10),count(*)) from NEWS_B', '10', '1', null);
INSERT INTO `sys_survey_b` VALUES ('11', '工作动态总访问次数[?]', 'select convert(varchar(10),sum(click_num)) from NEWS_B', '11', '1', null);
INSERT INTO `sys_survey_b` VALUES ('12', '工作动态单篇访问次数最高达[?]', 'select convert(varchar(10),max(click_num)) from NEWS_B ', '12', '1', null);
INSERT INTO `sys_survey_b` VALUES ('13', '工作动态平均访问次数[?]', 'select convert(varchar(10),avg(click_num)) from NEWS_B', '13', '1', null);
INSERT INTO `sys_survey_b` VALUES ('14', '通知公告[?]篇', 'select convert(varchar(10),count(*)) from NOTICE_C', '14', '1', null);
INSERT INTO `sys_survey_b` VALUES ('15', '通知公告总访问次数[?]', 'select convert(varchar(10),sum(click_num)) from NOTICE_C', '15', '1', null);
INSERT INTO `sys_survey_b` VALUES ('16', '通知公告单篇访问次数最高达[?]', 'select convert(varchar(10),max(click_num)) from NOTICE_C', '16', '1', null);
INSERT INTO `sys_survey_b` VALUES ('17', '通知公告平均访问次数[?]', 'select convert(varchar(10),avg(click_num)) from NOTICE_C ', '17', '1', null);
INSERT INTO `sys_survey_b` VALUES ('28', '发送留言[?]条', 'select convert(varchar(10),count(*)) from ON_LINE_MESSAGE_C', '28', '1', null);
INSERT INTO `sys_survey_b` VALUES ('29', '系统操作日志记录[?]条', 'select convert(varchar(10),count(*)) from OPERATE_LOG_P', '29', '1', null);
INSERT INTO `sys_survey_b` VALUES ('3', '系统用户达[?]人', 'select convert(varchar(10),count(*)) from user_p', '3', '1', null);
INSERT INTO `sys_survey_b` VALUES ('30', '修改密码人数[?]', 'select convert(varchar(10),changepass)+\'/\'+convert(varchar(10),totalpass) as changepass\r\nfrom\r\n(\r\n	select sum(changepass) as changepass,sum(totalpass) as totalpass\r\n	from\r\n	(\r\n	(select count(*) as changepass,0 as totalpass from USER_P where realp is not null and realp<>\'000000\')\r\n	union\r\n	(select 0 as changepass,count(*) as totalpass from USER_P)\r\n	) t\r\n) t\r\n', '30', '1', null);
INSERT INTO `sys_survey_b` VALUES ('8', '系统总访问次数[?]', 'select convert(varchar(10),count(*)) from LOGIN_LOG_P', '8', '1', null);
INSERT INTO `sys_survey_b` VALUES ('9', '日最大访问次数[?]', 'select convert(varchar(10),max(login_num)) from ( select count(*) as login_num from LOGIN_LOG_P group by convert(varchar(10),login_time,126)) t', '9', '1', null);

-- ----------------------------
-- Table structure for `test_paper_c`
-- ----------------------------
DROP TABLE IF EXISTS `test_paper_c`;
CREATE TABLE `test_paper_c` (
  `TEST_PAPER_ID` varchar(40) NOT NULL,
  `TEST_PAPER_NO` varchar(40) DEFAULT NULL,
  `INPUT_BY` varchar(30) DEFAULT NULL,
  `REMARK` varchar(2000) DEFAULT NULL COMMENT '适应班级,难度等',
  `CTYPE` int(11) DEFAULT NULL COMMENT '1-java 2.net 3php 4平面',
  `STATE` int(11) DEFAULT NULL COMMENT '0- 作废 1-启用',
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `CREATE_DEPT` varchar(40) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`TEST_PAPER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_paper_c
-- ----------------------------
INSERT INTO `test_paper_c` VALUES ('001', '2013009', '陈子枢', '', '1', null, null, null, null);
INSERT INTO `test_paper_c` VALUES ('402880ee410099be014100c6c7920001', '1', '', '', '1', null, null, null, null);
INSERT INTO `test_paper_c` VALUES ('402880ee410099be014100c8cc5b0003', '3', '3', '3', '2', '1', null, null, null);

-- ----------------------------
-- Table structure for `test_question_c`
-- ----------------------------
DROP TABLE IF EXISTS `test_question_c`;
CREATE TABLE `test_question_c` (
  `TEST_QUESTION_ID` varchar(40) NOT NULL,
  `TEST_PAPER_ID` varchar(40) DEFAULT NULL,
  `TITLE` varchar(200) DEFAULT NULL,
  `CONTENT` varchar(2000) DEFAULT NULL,
  `ANSWER` varchar(2000) DEFAULT NULL,
  `CTYPE` int(11) DEFAULT NULL COMMENT '1单题 2多选 3判断题 4问答题',
  `SCORE` decimal(8,2) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  PRIMARY KEY (`TEST_QUESTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_question_c
-- ----------------------------
INSERT INTO `test_question_c` VALUES ('402880ee410063850141006949fa0002', '001', '遵守教学纪律，无迟到，提前下课，上课拨接手机等现象', 'A.非常满意|B.比较满意|C.基本满意|D.不太满意|E.非常不满意', 'A', '1', '10.00', '1');
INSERT INTO `test_question_c` VALUES ('402880ee4100638501410098d4920003', '001', '1', '2', 'A', '1', '5.00', '2');
INSERT INTO `test_question_c` VALUES ('402880ee41006385014100991e2e0004', '001', '3', '4', 'A', '1', '7.00', '3');
INSERT INTO `test_question_c` VALUES ('402880ee410099be014100c6c7920002', '402880ee410099be014100c6c7920001', '1', '1', 'A', '2', '1.00', '1');
INSERT INTO `test_question_c` VALUES ('402880ee410099be014100c8cc5b0004', '402880ee410099be014100c8cc5b0003', '', '', '', null, null, '1');

-- ----------------------------
-- Table structure for `test_table_c`
-- ----------------------------
DROP TABLE IF EXISTS `test_table_c`;
CREATE TABLE `test_table_c` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_table_c
-- ----------------------------
INSERT INTO `test_table_c` VALUES ('1', '测试Hibernate', '2013-06-04', '备注Hibernate');
INSERT INTO `test_table_c` VALUES ('2', '测试Spring', '2013-06-04', '备注Spring');

-- ----------------------------
-- Table structure for `upload_files_b`
-- ----------------------------
DROP TABLE IF EXISTS `upload_files_b`;
CREATE TABLE `upload_files_b` (
  `UPLOAD_FILES_ID` varchar(40) NOT NULL,
  `TABLE_NAME` varchar(40) DEFAULT NULL,
  `BELONG_ID` varchar(40) DEFAULT NULL,
  `FILE_NAME` varchar(200) DEFAULT NULL,
  `FILE_PATH` varchar(300) DEFAULT NULL,
  `CNOTE` varchar(300) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  `CREATED_BY` varchar(40) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`UPLOAD_FILES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upload_files_b
-- ----------------------------

-- ----------------------------
-- Table structure for `user_feedback_b`
-- ----------------------------
DROP TABLE IF EXISTS `user_feedback_b`;
CREATE TABLE `user_feedback_b` (
  `USER_FEEDBACK_ID` varchar(40) NOT NULL,
  `DEPT_ID` varchar(40) DEFAULT NULL,
  `INPUT_BY` varchar(30) DEFAULT NULL,
  `INPUT_TIME` datetime DEFAULT NULL,
  `TITLE` varchar(200) DEFAULT NULL,
  `CONTENT` text,
  `PRI_LEVEL` char(1) DEFAULT NULL,
  `CTYPE` char(1) DEFAULT NULL,
  `CLASS_TYPE` varchar(40) DEFAULT NULL,
  `IS_SHARE` char(1) DEFAULT NULL,
  `ANSWER_BY` varchar(30) DEFAULT NULL,
  `ANSWER_TIME` datetime DEFAULT NULL,
  `SOLVE_METHOD` text,
  `RESOLUTION` char(1) DEFAULT NULL,
  `DIFFICULTY` char(1) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `CREATE_DEPT` varchar(40) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `TEL` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`USER_FEEDBACK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_feedback_b
-- ----------------------------
INSERT INTO `user_feedback_b` VALUES ('ff8080813d3324bc013d3339bfac0001', null, '演示', '2013-03-04 00:00:00', '合同中货物描述加重要程度几颗星', '', null, null, null, '1', null, null, null, null, null, '0', 'ff8080813d00613e013d006644a60003', '0001', '2013-03-04 10:27:35', '');
INSERT INTO `user_feedback_b` VALUES ('ff8080813d3324bc013d3339f7370002', null, '演示', '2013-03-04 00:00:00', '合同中货物总金额自动计算，合同总金额自动计算', '', null, null, null, '1', '演示', '2013-03-07 00:00:00', '', null, null, '1', 'ff8080813d00613e013d006644a60003', '0001', '2013-03-04 10:27:49', '');

-- ----------------------------
-- Table structure for `user_info_p`
-- ----------------------------
DROP TABLE IF EXISTS `user_info_p`;
CREATE TABLE `user_info_p` (
  `USER_ID` varchar(40) NOT NULL,
  `OS_NAME` varchar(30) DEFAULT NULL,
  `BROWSER` varchar(30) DEFAULT NULL,
  `USER_AGENT` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info_p
-- ----------------------------
INSERT INTO `user_info_p` VALUES ('ff8080813d00613e013d006644a60003', 'Windows XP 5.1 x86', 'IE8', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)');

-- ----------------------------
-- Table structure for `user_p`
-- ----------------------------
DROP TABLE IF EXISTS `user_p`;
CREATE TABLE `user_p` (
  `USER_ID` varchar(40) NOT NULL,
  `DEPT_ID` varchar(40) DEFAULT NULL,
  `BUSINESS_POSITION_ID` varchar(40) DEFAULT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `PASSWORD` varchar(32) DEFAULT NULL,
  `PY_CODE` varchar(20) DEFAULT NULL,
  `REAL_NAME` varchar(30) DEFAULT NULL,
  `POSITION` varchar(40) DEFAULT NULL,
  `DUTY_DEPT` varchar(50) DEFAULT NULL,
  `DUTY_LEVEL` varchar(40) DEFAULT NULL,
  `USER_LEVEL` int(11) DEFAULT NULL,
  `CNOTE` varchar(200) DEFAULT NULL,
  `IS_USE` char(1) DEFAULT NULL,
  `IS_CHANGE_PASS` char(1) DEFAULT NULL,
  `IS_ONLINE` char(1) DEFAULT NULL,
  `CUR_STATION` varchar(200) DEFAULT NULL,
  `ORDER_NO` decimal(10,0) DEFAULT NULL,
  `LOGIN_NUM` int(11) DEFAULT NULL,
  `LOGIN_TIME` datetime DEFAULT NULL,
  `REALP` varchar(32) DEFAULT NULL,
  `SUPER_USER` bit(1) DEFAULT NULL,
  `MOBILE` varchar(40) DEFAULT NULL,
  `TELEPHONE` varchar(100) DEFAULT NULL,
  `IS_SEND_SMS` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_p
-- ----------------------------
INSERT INTO `user_p` VALUES ('001', '0', null, 'sysdebug', '670b14728ad9902aecba32e22fa4f6bd', 'sysdebug', '调试', '调试', null, '0', '0', null, '1', '0', '0', '/home/console/jConsoleList.jsp', '0', '0', '2010-02-02 16:25:15', '000000', '', null, null, '1');
INSERT INTO `user_p` VALUES ('ff808081307f4ffc01307f5ce342001f', '0001', null, 'admin', '670b14728ad9902aecba32e22fa4f6bd', null, '管理员', '管理员', null, '0001', '1', null, '1', null, '0', null, null, '0', null, '000000', '', '', '', '0');
INSERT INTO `user_p` VALUES ('ff80808131301abf0131303ceab20031', '0001', null, 'wujie', '670b14728ad9902aecba32e22fa4f6bd', null, '吴总', '', null, '0001', '2', null, '1', null, '0', null, null, '0', null, '000000', '', '', '', '0');
INSERT INTO `user_p` VALUES ('ff80808131301abf0131303ed30a0035', '0001001', null, 'Leon', 'ffd4bcb93839116254f5baec76ada7f8', null, '盖茨', '', null, '0001001', '3', null, '1', null, '0', null, null, '0', null, 'lux83524074', '', '', '', '0');
INSERT INTO `user_p` VALUES ('ff80808131301abf0131303fe2e40038', '0001002', null, 'yangli', '670b14728ad9902aecba32e22fa4f6bd', null, '胡丽', '单证', null, '0001002', '5', null, '1', null, '0', null, null, '0', null, '000000', '', '', '', '0');
INSERT INTO `user_p` VALUES ('ff80808131301abf01313040e6b7003b', '0001003', null, 'zhangyujie', '670b14728ad9902aecba32e22fa4f6bd', null, '郑成功', '船务经理', null, '0001003', '3', null, '1', null, '0', null, null, '0', null, '000000', '', '', '', '0');
INSERT INTO `user_p` VALUES ('ff80808131301abf01313041a034003e', '0001004', null, 'xijun', '670b14728ad9902aecba32e22fa4f6bd', null, '周扒皮', '财务经理', null, '0001004', '3', null, '1', null, '0', null, null, '0', null, '000000', '', '', '', '0');
INSERT INTO `user_p` VALUES ('ff80808131301abf0131304334410041', '0001', null, 'yinliru', '670b14728ad9902aecba32e22fa4f6bd', null, '殷丽', '', null, '0001', '2', null, '1', null, '0', null, null, '0', null, '000000', '', '', '', '0');
INSERT INTO `user_p` VALUES ('ff80808131301abf01313043fd3e0044', '0001', null, 'duyong', '670b14728ad9902aecba32e22fa4f6bd', null, '杜月生', '总经理', null, '0001', '2', null, '1', null, null, null, null, '0', null, '000000', '', '', '', '0');
INSERT INTO `user_p` VALUES ('ff80808131301abf01313044c2d00047', '0001002', null, 'tianyan', '670b14728ad9902aecba32e22fa4f6bd', null, '田燕', '外销经理', null, '0001002', '5', null, '1', null, '0', null, null, '0', null, '000000', '', '', '', '0');
INSERT INTO `user_p` VALUES ('ff80808131301abf013130455a7c004a', '0001002', null, 'wumengxi', '670b14728ad9902aecba32e22fa4f6bd', null, '吴梦', '外销员', null, '0001002', '2', null, '1', null, null, null, null, '0', null, '000000', '', '', '', '0');
INSERT INTO `user_p` VALUES ('ff80808131301abf013130492d100053', '0001002', null, 'shiyuxiu', '670b14728ad9902aecba32e22fa4f6bd', null, '苏秦', '单证', null, '0001002', '5', null, '1', null, '0', null, null, '0', null, '000000', '', '', '', '0');
INSERT INTO `user_p` VALUES ('ff80808131301abf0131304ac5060058', '0001003', null, 'dujuanli', '670b14728ad9902aecba32e22fa4f6bd', null, '杜娟', '船务', null, '0001003', '5', null, '1', null, '0', null, null, '0', null, '000000', '', '', '', '0');
INSERT INTO `user_p` VALUES ('ff8080813d00613e013d006644a60003', '0001', null, 'show', '670b14728ad9902aecba32e22fa4f6bd', null, '演示', '调试', null, '0001', '2', null, '1', null, '0', null, null, '0', null, '000000', '', '', '', '0');

-- ----------------------------
-- Table structure for `user_temp_b`
-- ----------------------------
DROP TABLE IF EXISTS `user_temp_b`;
CREATE TABLE `user_temp_b` (
  `USER_TEMP_ID` varchar(40) NOT NULL,
  `KEY_CLASS` varchar(30) DEFAULT NULL,
  `KEY_NAME` varchar(30) DEFAULT NULL,
  `KEY_CONTENT` varchar(3000) DEFAULT NULL,
  `STATE` int(11) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  `CNOTE` varchar(50) DEFAULT NULL,
  `UPDATE_BY` varchar(40) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_TEMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_temp_b
-- ----------------------------
INSERT INTO `user_temp_b` VALUES ('4028817a33fc4e280133fc5218a20001', 'contractRequest', 'contractRequest', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：deliveryPeriod/工厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', '1', '1', '合同要求(第一行系统自动会加空格)', '001', '2012-01-18 11:42:05');
INSERT INTO `user_temp_b` VALUES ('4028817a33fc4e280133fc543c8c0002', 'productRequest', 'electroplate', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：deliveryPeriod/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', '1', '5', '电镀', '001', '2011-12-02 09:19:45');
INSERT INTO `user_temp_b` VALUES ('4028817a33fc4e280133fc543c8c0003', 'productRequest', 'decal', '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:。', '1', '3', '花纸', '001', '2011-12-02 09:12:18');
INSERT INTO `user_temp_b` VALUES ('4028817a33fc4e280133fc543c8c0004', 'productRequest', 'colorBox', '1.彩盒要求350克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:。', '1', '2', '彩盒', '001', '2011-12-02 09:12:18');
INSERT INTO `user_temp_b` VALUES ('4028817a33fc4e280133fc543c8c0005', 'productRequest', 'styrofoam', '1.产品质量要好，颗粒细小，压制密实，无毛边；\r\n2.工厂待用安全包装，运至指定工厂；\r\n3.交期：。', '1', '4', '保丽龙', '001', '2011-12-02 09:12:18');
INSERT INTO `user_temp_b` VALUES ('4028817a341195e9013411bc0d690001', 'productRequest', 'nozzle', '1.包装：暗转包装送指定工厂。\r\n2.交期：。\r\n3.付款方式：货到付款。', '1', '7', '', '001', '2011-12-06 12:57:43');
INSERT INTO `user_temp_b` VALUES ('4028817a341195e9013411bc0d690002', 'productRequest', 'pvc', '', '1', '6', '', '001', '2011-12-06 12:57:43');
