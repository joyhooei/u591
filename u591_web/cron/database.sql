/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : u591_hj

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-02-01 17:47:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for web_access
-- ----------------------------
DROP TABLE IF EXISTS `web_access`;
CREATE TABLE `web_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `pid` smallint(6) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of web_access
-- ----------------------------
INSERT INTO `web_access` VALUES ('9', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('9', '40', '2', '1', null);
INSERT INTO `web_access` VALUES ('9', '50', '3', '40', null);
INSERT INTO `web_access` VALUES ('7', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('9', '98', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('2', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('2', '357', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '165', '3', '164', null);
INSERT INTO `web_access` VALUES ('2', '349', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '290', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '130', '3', '129', null);
INSERT INTO `web_access` VALUES ('2', '291', '3', '290', null);
INSERT INTO `web_access` VALUES ('2', '282', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '274', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '266', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '258', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '250', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '210', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '207', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '205', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '193', '2', '1', null);
INSERT INTO `web_access` VALUES ('13', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('13', '290', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '188', '2', '1', null);
INSERT INTO `web_access` VALUES ('13', '234', '3', '233', null);
INSERT INTO `web_access` VALUES ('13', '235', '3', '233', null);
INSERT INTO `web_access` VALUES ('13', '240', '3', '238', null);
INSERT INTO `web_access` VALUES ('13', '239', '3', '238', null);
INSERT INTO `web_access` VALUES ('2', '147', '3', '146', null);
INSERT INTO `web_access` VALUES ('2', '148', '3', '146', null);
INSERT INTO `web_access` VALUES ('2', '149', '3', '146', null);
INSERT INTO `web_access` VALUES ('2', '150', '3', '146', null);
INSERT INTO `web_access` VALUES ('2', '151', '3', '146', null);
INSERT INTO `web_access` VALUES ('2', '152', '3', '146', null);
INSERT INTO `web_access` VALUES ('2', '153', '3', '146', null);
INSERT INTO `web_access` VALUES ('2', '206', '3', '205', null);
INSERT INTO `web_access` VALUES ('2', '209', '3', '207', null);
INSERT INTO `web_access` VALUES ('2', '208', '3', '207', null);
INSERT INTO `web_access` VALUES ('2', '309', '3', '210', null);
INSERT INTO `web_access` VALUES ('2', '212', '3', '210', null);
INSERT INTO `web_access` VALUES ('15', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('1', '165', '3', '164', null);
INSERT INTO `web_access` VALUES ('2', '339', '3', '250', null);
INSERT INTO `web_access` VALUES ('2', '338', '3', '250', null);
INSERT INTO `web_access` VALUES ('2', '255', '3', '250', null);
INSERT INTO `web_access` VALUES ('2', '254', '3', '250', null);
INSERT INTO `web_access` VALUES ('2', '253', '3', '250', null);
INSERT INTO `web_access` VALUES ('14', '291', '3', '290', null);
INSERT INTO `web_access` VALUES ('2', '263', '3', '258', null);
INSERT INTO `web_access` VALUES ('2', '262', '3', '258', null);
INSERT INTO `web_access` VALUES ('2', '261', '3', '258', null);
INSERT INTO `web_access` VALUES ('2', '260', '3', '258', null);
INSERT INTO `web_access` VALUES ('2', '259', '3', '258', null);
INSERT INTO `web_access` VALUES ('15', '361', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '271', '3', '266', null);
INSERT INTO `web_access` VALUES ('2', '270', '3', '266', null);
INSERT INTO `web_access` VALUES ('2', '269', '3', '266', null);
INSERT INTO `web_access` VALUES ('2', '268', '3', '266', null);
INSERT INTO `web_access` VALUES ('2', '267', '3', '266', null);
INSERT INTO `web_access` VALUES ('15', '357', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '279', '3', '274', null);
INSERT INTO `web_access` VALUES ('2', '278', '3', '274', null);
INSERT INTO `web_access` VALUES ('2', '277', '3', '274', null);
INSERT INTO `web_access` VALUES ('2', '276', '3', '274', null);
INSERT INTO `web_access` VALUES ('2', '275', '3', '274', null);
INSERT INTO `web_access` VALUES ('15', '349', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '287', '3', '282', null);
INSERT INTO `web_access` VALUES ('2', '286', '3', '282', null);
INSERT INTO `web_access` VALUES ('2', '285', '3', '282', null);
INSERT INTO `web_access` VALUES ('2', '284', '3', '282', null);
INSERT INTO `web_access` VALUES ('2', '283', '3', '282', null);
INSERT INTO `web_access` VALUES ('2', '178', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '173', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '154', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '189', '3', '188', null);
INSERT INTO `web_access` VALUES ('2', '190', '3', '188', null);
INSERT INTO `web_access` VALUES ('2', '191', '3', '188', null);
INSERT INTO `web_access` VALUES ('2', '192', '3', '188', null);
INSERT INTO `web_access` VALUES ('2', '179', '3', '178', null);
INSERT INTO `web_access` VALUES ('2', '180', '3', '178', null);
INSERT INTO `web_access` VALUES ('2', '181', '3', '178', null);
INSERT INTO `web_access` VALUES ('2', '182', '3', '178', null);
INSERT INTO `web_access` VALUES ('2', '174', '3', '173', null);
INSERT INTO `web_access` VALUES ('2', '175', '3', '173', null);
INSERT INTO `web_access` VALUES ('2', '176', '3', '173', null);
INSERT INTO `web_access` VALUES ('2', '177', '3', '173', null);
INSERT INTO `web_access` VALUES ('2', '155', '3', '154', null);
INSERT INTO `web_access` VALUES ('2', '156', '3', '154', null);
INSERT INTO `web_access` VALUES ('2', '157', '3', '154', null);
INSERT INTO `web_access` VALUES ('2', '158', '3', '154', null);
INSERT INTO `web_access` VALUES ('2', '146', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '194', '3', '193', null);
INSERT INTO `web_access` VALUES ('2', '195', '3', '193', null);
INSERT INTO `web_access` VALUES ('2', '196', '3', '193', null);
INSERT INTO `web_access` VALUES ('2', '197', '3', '193', null);
INSERT INTO `web_access` VALUES ('14', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('13', '282', '2', '1', null);
INSERT INTO `web_access` VALUES ('14', '195', '3', '193', null);
INSERT INTO `web_access` VALUES ('14', '194', '3', '193', null);
INSERT INTO `web_access` VALUES ('13', '274', '2', '1', null);
INSERT INTO `web_access` VALUES ('14', '165', '3', '164', null);
INSERT INTO `web_access` VALUES ('14', '177', '3', '173', null);
INSERT INTO `web_access` VALUES ('14', '339', '3', '250', null);
INSERT INTO `web_access` VALUES ('14', '338', '3', '250', null);
INSERT INTO `web_access` VALUES ('14', '260', '3', '258', null);
INSERT INTO `web_access` VALUES ('14', '259', '3', '258', null);
INSERT INTO `web_access` VALUES ('14', '268', '3', '266', null);
INSERT INTO `web_access` VALUES ('14', '267', '3', '266', null);
INSERT INTO `web_access` VALUES ('14', '276', '3', '274', null);
INSERT INTO `web_access` VALUES ('14', '275', '3', '274', null);
INSERT INTO `web_access` VALUES ('14', '284', '3', '282', null);
INSERT INTO `web_access` VALUES ('14', '283', '3', '282', null);
INSERT INTO `web_access` VALUES ('11', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('1', '149', '3', '146', null);
INSERT INTO `web_access` VALUES ('1', '148', '3', '146', null);
INSERT INTO `web_access` VALUES ('1', '147', '3', '146', null);
INSERT INTO `web_access` VALUES ('1', '328', '3', '154', null);
INSERT INTO `web_access` VALUES ('1', '158', '3', '154', null);
INSERT INTO `web_access` VALUES ('1', '157', '3', '154', null);
INSERT INTO `web_access` VALUES ('1', '156', '3', '154', null);
INSERT INTO `web_access` VALUES ('1', '155', '3', '154', null);
INSERT INTO `web_access` VALUES ('1', '316', '3', '159', null);
INSERT INTO `web_access` VALUES ('1', '163', '3', '159', null);
INSERT INTO `web_access` VALUES ('1', '162', '3', '159', null);
INSERT INTO `web_access` VALUES ('1', '161', '3', '159', null);
INSERT INTO `web_access` VALUES ('1', '160', '3', '159', null);
INSERT INTO `web_access` VALUES ('1', '177', '3', '173', null);
INSERT INTO `web_access` VALUES ('1', '176', '3', '173', null);
INSERT INTO `web_access` VALUES ('1', '175', '3', '173', null);
INSERT INTO `web_access` VALUES ('1', '174', '3', '173', null);
INSERT INTO `web_access` VALUES ('1', '182', '3', '178', null);
INSERT INTO `web_access` VALUES ('1', '181', '3', '178', null);
INSERT INTO `web_access` VALUES ('1', '180', '3', '178', null);
INSERT INTO `web_access` VALUES ('1', '179', '3', '178', null);
INSERT INTO `web_access` VALUES ('1', '192', '3', '188', null);
INSERT INTO `web_access` VALUES ('1', '191', '3', '188', null);
INSERT INTO `web_access` VALUES ('1', '190', '3', '188', null);
INSERT INTO `web_access` VALUES ('1', '189', '3', '188', null);
INSERT INTO `web_access` VALUES ('1', '197', '3', '193', null);
INSERT INTO `web_access` VALUES ('1', '196', '3', '193', null);
INSERT INTO `web_access` VALUES ('1', '195', '3', '193', null);
INSERT INTO `web_access` VALUES ('1', '194', '3', '193', null);
INSERT INTO `web_access` VALUES ('1', '311', '3', '198', null);
INSERT INTO `web_access` VALUES ('1', '312', '3', '218', null);
INSERT INTO `web_access` VALUES ('11', '453', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '491', '3', '409', null);
INSERT INTO `web_access` VALUES ('11', '485', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '479', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '473', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '107', '3', '106', null);
INSERT INTO `web_access` VALUES ('11', '108', '3', '106', null);
INSERT INTO `web_access` VALUES ('11', '109', '3', '106', null);
INSERT INTO `web_access` VALUES ('11', '110', '3', '106', null);
INSERT INTO `web_access` VALUES ('11', '123', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '122', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '121', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '120', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '119', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '118', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '117', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '116', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '115', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '114', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '113', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '112', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '125', '3', '124', null);
INSERT INTO `web_access` VALUES ('11', '126', '3', '124', null);
INSERT INTO `web_access` VALUES ('11', '127', '3', '124', null);
INSERT INTO `web_access` VALUES ('11', '128', '3', '124', null);
INSERT INTO `web_access` VALUES ('1', '150', '3', '146', null);
INSERT INTO `web_access` VALUES ('1', '153', '3', '146', null);
INSERT INTO `web_access` VALUES ('1', '152', '3', '146', null);
INSERT INTO `web_access` VALUES ('1', '151', '3', '146', null);
INSERT INTO `web_access` VALUES ('1', '144', '3', '141', null);
INSERT INTO `web_access` VALUES ('1', '143', '3', '141', null);
INSERT INTO `web_access` VALUES ('1', '142', '3', '141', null);
INSERT INTO `web_access` VALUES ('1', '330', '3', '136', null);
INSERT INTO `web_access` VALUES ('1', '313', '3', '136', null);
INSERT INTO `web_access` VALUES ('1', '145', '3', '141', null);
INSERT INTO `web_access` VALUES ('1', '134', '3', '131', null);
INSERT INTO `web_access` VALUES ('1', '133', '3', '131', null);
INSERT INTO `web_access` VALUES ('1', '132', '3', '131', null);
INSERT INTO `web_access` VALUES ('1', '140', '3', '136', null);
INSERT INTO `web_access` VALUES ('1', '139', '3', '136', null);
INSERT INTO `web_access` VALUES ('1', '137', '3', '136', null);
INSERT INTO `web_access` VALUES ('1', '138', '3', '136', null);
INSERT INTO `web_access` VALUES ('1', '130', '3', '129', null);
INSERT INTO `web_access` VALUES ('1', '135', '3', '131', null);
INSERT INTO `web_access` VALUES ('15', '212', '3', '210', null);
INSERT INTO `web_access` VALUES ('15', '211', '3', '210', null);
INSERT INTO `web_access` VALUES ('15', '330', '3', '136', null);
INSERT INTO `web_access` VALUES ('11', '165', '3', '164', null);
INSERT INTO `web_access` VALUES ('11', '467', '3', '409', null);
INSERT INTO `web_access` VALUES ('11', '466', '3', '409', null);
INSERT INTO `web_access` VALUES ('11', '447', '3', '409', null);
INSERT INTO `web_access` VALUES ('11', '403', '3', '401', null);
INSERT INTO `web_access` VALUES ('11', '402', '3', '401', null);
INSERT INTO `web_access` VALUES ('11', '167', '3', '166', null);
INSERT INTO `web_access` VALUES ('15', '308', '3', '207', null);
INSERT INTO `web_access` VALUES ('15', '209', '3', '207', null);
INSERT INTO `web_access` VALUES ('15', '208', '3', '207', null);
INSERT INTO `web_access` VALUES ('15', '309', '3', '210', null);
INSERT INTO `web_access` VALUES ('15', '337', '3', '111', null);
INSERT INTO `web_access` VALUES ('15', '206', '3', '205', null);
INSERT INTO `web_access` VALUES ('15', '336', '3', '111', null);
INSERT INTO `web_access` VALUES ('15', '123', '3', '111', null);
INSERT INTO `web_access` VALUES ('15', '122', '3', '111', null);
INSERT INTO `web_access` VALUES ('15', '121', '3', '111', null);
INSERT INTO `web_access` VALUES ('15', '120', '3', '111', null);
INSERT INTO `web_access` VALUES ('15', '119', '3', '111', null);
INSERT INTO `web_access` VALUES ('15', '118', '3', '111', null);
INSERT INTO `web_access` VALUES ('15', '117', '3', '111', null);
INSERT INTO `web_access` VALUES ('15', '331', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '116', '3', '111', null);
INSERT INTO `web_access` VALUES ('15', '115', '3', '111', null);
INSERT INTO `web_access` VALUES ('15', '112', '3', '111', null);
INSERT INTO `web_access` VALUES ('15', '113', '3', '111', null);
INSERT INTO `web_access` VALUES ('15', '114', '3', '111', null);
INSERT INTO `web_access` VALUES ('15', '332', '3', '331', null);
INSERT INTO `web_access` VALUES ('15', '333', '3', '331', null);
INSERT INTO `web_access` VALUES ('15', '334', '3', '331', null);
INSERT INTO `web_access` VALUES ('15', '335', '3', '331', null);
INSERT INTO `web_access` VALUES ('1', '307', '3', '218', null);
INSERT INTO `web_access` VALUES ('1', '292', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '290', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '282', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '274', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '266', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '258', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '250', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '245', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '243', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '238', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '233', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '226', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '221', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '218', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '213', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '210', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '207', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '205', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '198', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '193', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '188', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '183', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '178', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '173', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '159', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '154', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '146', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '141', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '136', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '131', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '129', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '306', '3', '218', null);
INSERT INTO `web_access` VALUES ('1', '305', '3', '218', null);
INSERT INTO `web_access` VALUES ('1', '304', '3', '218', null);
INSERT INTO `web_access` VALUES ('1', '303', '3', '218', null);
INSERT INTO `web_access` VALUES ('1', '314', '3', '221', null);
INSERT INTO `web_access` VALUES ('1', '329', '3', '226', null);
INSERT INTO `web_access` VALUES ('1', '310', '3', '245', null);
INSERT INTO `web_access` VALUES ('1', '291', '3', '290', null);
INSERT INTO `web_access` VALUES ('1', '283', '3', '282', null);
INSERT INTO `web_access` VALUES ('1', '284', '3', '282', null);
INSERT INTO `web_access` VALUES ('1', '285', '3', '282', null);
INSERT INTO `web_access` VALUES ('1', '286', '3', '282', null);
INSERT INTO `web_access` VALUES ('1', '287', '3', '282', null);
INSERT INTO `web_access` VALUES ('1', '288', '3', '282', null);
INSERT INTO `web_access` VALUES ('1', '289', '3', '282', null);
INSERT INTO `web_access` VALUES ('1', '275', '3', '274', null);
INSERT INTO `web_access` VALUES ('1', '276', '3', '274', null);
INSERT INTO `web_access` VALUES ('1', '277', '3', '274', null);
INSERT INTO `web_access` VALUES ('1', '278', '3', '274', null);
INSERT INTO `web_access` VALUES ('1', '279', '3', '274', null);
INSERT INTO `web_access` VALUES ('1', '280', '3', '274', null);
INSERT INTO `web_access` VALUES ('1', '281', '3', '274', null);
INSERT INTO `web_access` VALUES ('1', '267', '3', '266', null);
INSERT INTO `web_access` VALUES ('1', '268', '3', '266', null);
INSERT INTO `web_access` VALUES ('1', '269', '3', '266', null);
INSERT INTO `web_access` VALUES ('1', '270', '3', '266', null);
INSERT INTO `web_access` VALUES ('1', '271', '3', '266', null);
INSERT INTO `web_access` VALUES ('1', '272', '3', '266', null);
INSERT INTO `web_access` VALUES ('1', '273', '3', '266', null);
INSERT INTO `web_access` VALUES ('1', '259', '3', '258', null);
INSERT INTO `web_access` VALUES ('1', '260', '3', '258', null);
INSERT INTO `web_access` VALUES ('1', '261', '3', '258', null);
INSERT INTO `web_access` VALUES ('1', '262', '3', '258', null);
INSERT INTO `web_access` VALUES ('1', '263', '3', '258', null);
INSERT INTO `web_access` VALUES ('1', '264', '3', '258', null);
INSERT INTO `web_access` VALUES ('1', '265', '3', '258', null);
INSERT INTO `web_access` VALUES ('1', '339', '3', '250', null);
INSERT INTO `web_access` VALUES ('1', '338', '3', '250', null);
INSERT INTO `web_access` VALUES ('1', '257', '3', '250', null);
INSERT INTO `web_access` VALUES ('1', '256', '3', '250', null);
INSERT INTO `web_access` VALUES ('1', '255', '3', '250', null);
INSERT INTO `web_access` VALUES ('1', '254', '3', '250', null);
INSERT INTO `web_access` VALUES ('1', '253', '3', '250', null);
INSERT INTO `web_access` VALUES ('1', '249', '3', '245', null);
INSERT INTO `web_access` VALUES ('1', '248', '3', '245', null);
INSERT INTO `web_access` VALUES ('1', '247', '3', '245', null);
INSERT INTO `web_access` VALUES ('1', '246', '3', '245', null);
INSERT INTO `web_access` VALUES ('1', '315', '3', '226', null);
INSERT INTO `web_access` VALUES ('1', '239', '3', '238', null);
INSERT INTO `web_access` VALUES ('1', '240', '3', '238', null);
INSERT INTO `web_access` VALUES ('1', '241', '3', '238', null);
INSERT INTO `web_access` VALUES ('1', '242', '3', '238', null);
INSERT INTO `web_access` VALUES ('1', '234', '3', '233', null);
INSERT INTO `web_access` VALUES ('1', '235', '3', '233', null);
INSERT INTO `web_access` VALUES ('1', '236', '3', '233', null);
INSERT INTO `web_access` VALUES ('1', '237', '3', '233', null);
INSERT INTO `web_access` VALUES ('1', '232', '3', '226', null);
INSERT INTO `web_access` VALUES ('1', '231', '3', '226', null);
INSERT INTO `web_access` VALUES ('1', '230', '3', '226', null);
INSERT INTO `web_access` VALUES ('1', '229', '3', '226', null);
INSERT INTO `web_access` VALUES ('1', '228', '3', '226', null);
INSERT INTO `web_access` VALUES ('1', '227', '3', '226', null);
INSERT INTO `web_access` VALUES ('1', '225', '3', '221', null);
INSERT INTO `web_access` VALUES ('1', '224', '3', '221', null);
INSERT INTO `web_access` VALUES ('1', '223', '3', '221', null);
INSERT INTO `web_access` VALUES ('1', '222', '3', '221', null);
INSERT INTO `web_access` VALUES ('1', '219', '3', '218', null);
INSERT INTO `web_access` VALUES ('1', '214', '3', '213', null);
INSERT INTO `web_access` VALUES ('1', '215', '3', '213', null);
INSERT INTO `web_access` VALUES ('1', '216', '3', '213', null);
INSERT INTO `web_access` VALUES ('1', '217', '3', '213', null);
INSERT INTO `web_access` VALUES ('1', '212', '3', '210', null);
INSERT INTO `web_access` VALUES ('1', '211', '3', '210', null);
INSERT INTO `web_access` VALUES ('1', '209', '3', '207', null);
INSERT INTO `web_access` VALUES ('1', '208', '3', '207', null);
INSERT INTO `web_access` VALUES ('1', '206', '3', '205', null);
INSERT INTO `web_access` VALUES ('1', '204', '3', '198', null);
INSERT INTO `web_access` VALUES ('1', '203', '3', '198', null);
INSERT INTO `web_access` VALUES ('1', '202', '3', '198', null);
INSERT INTO `web_access` VALUES ('1', '201', '3', '198', null);
INSERT INTO `web_access` VALUES ('1', '200', '3', '198', null);
INSERT INTO `web_access` VALUES ('1', '199', '3', '198', null);
INSERT INTO `web_access` VALUES ('15', '323', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '318', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '292', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '290', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '282', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '274', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '266', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '142', '3', '141', null);
INSERT INTO `web_access` VALUES ('15', '143', '3', '141', null);
INSERT INTO `web_access` VALUES ('15', '144', '3', '141', null);
INSERT INTO `web_access` VALUES ('15', '145', '3', '141', null);
INSERT INTO `web_access` VALUES ('15', '165', '3', '164', null);
INSERT INTO `web_access` VALUES ('15', '319', '3', '318', null);
INSERT INTO `web_access` VALUES ('15', '258', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '187', '3', '183', null);
INSERT INTO `web_access` VALUES ('15', '186', '3', '183', null);
INSERT INTO `web_access` VALUES ('15', '185', '3', '183', null);
INSERT INTO `web_access` VALUES ('15', '184', '3', '183', null);
INSERT INTO `web_access` VALUES ('15', '320', '3', '318', null);
INSERT INTO `web_access` VALUES ('15', '311', '3', '198', null);
INSERT INTO `web_access` VALUES ('15', '202', '3', '198', null);
INSERT INTO `web_access` VALUES ('15', '201', '3', '198', null);
INSERT INTO `web_access` VALUES ('15', '200', '3', '198', null);
INSERT INTO `web_access` VALUES ('15', '214', '3', '213', null);
INSERT INTO `web_access` VALUES ('15', '215', '3', '213', null);
INSERT INTO `web_access` VALUES ('15', '216', '3', '213', null);
INSERT INTO `web_access` VALUES ('15', '217', '3', '213', null);
INSERT INTO `web_access` VALUES ('15', '307', '3', '218', null);
INSERT INTO `web_access` VALUES ('15', '225', '3', '221', null);
INSERT INTO `web_access` VALUES ('15', '224', '3', '221', null);
INSERT INTO `web_access` VALUES ('15', '223', '3', '221', null);
INSERT INTO `web_access` VALUES ('15', '222', '3', '221', null);
INSERT INTO `web_access` VALUES ('15', '315', '3', '226', null);
INSERT INTO `web_access` VALUES ('15', '232', '3', '226', null);
INSERT INTO `web_access` VALUES ('15', '231', '3', '226', null);
INSERT INTO `web_access` VALUES ('15', '230', '3', '226', null);
INSERT INTO `web_access` VALUES ('15', '229', '3', '226', null);
INSERT INTO `web_access` VALUES ('15', '228', '3', '226', null);
INSERT INTO `web_access` VALUES ('15', '244', '3', '243', null);
INSERT INTO `web_access` VALUES ('15', '249', '3', '245', null);
INSERT INTO `web_access` VALUES ('15', '248', '3', '245', null);
INSERT INTO `web_access` VALUES ('15', '247', '3', '245', null);
INSERT INTO `web_access` VALUES ('15', '246', '3', '245', null);
INSERT INTO `web_access` VALUES ('15', '360', '3', '292', null);
INSERT INTO `web_access` VALUES ('15', '359', '3', '292', null);
INSERT INTO `web_access` VALUES ('15', '348', '3', '292', null);
INSERT INTO `web_access` VALUES ('15', '347', '3', '292', null);
INSERT INTO `web_access` VALUES ('15', '346', '3', '292', null);
INSERT INTO `web_access` VALUES ('15', '345', '3', '292', null);
INSERT INTO `web_access` VALUES ('15', '344', '3', '292', null);
INSERT INTO `web_access` VALUES ('15', '343', '3', '292', null);
INSERT INTO `web_access` VALUES ('15', '250', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '313', '3', '136', null);
INSERT INTO `web_access` VALUES ('15', '140', '3', '136', null);
INSERT INTO `web_access` VALUES ('15', '139', '3', '136', null);
INSERT INTO `web_access` VALUES ('15', '138', '3', '136', null);
INSERT INTO `web_access` VALUES ('15', '306', '3', '218', null);
INSERT INTO `web_access` VALUES ('15', '305', '3', '218', null);
INSERT INTO `web_access` VALUES ('15', '304', '3', '218', null);
INSERT INTO `web_access` VALUES ('15', '303', '3', '218', null);
INSERT INTO `web_access` VALUES ('15', '219', '3', '218', null);
INSERT INTO `web_access` VALUES ('2', '308', '3', '207', null);
INSERT INTO `web_access` VALUES ('2', '211', '3', '210', null);
INSERT INTO `web_access` VALUES ('1', '308', '3', '207', null);
INSERT INTO `web_access` VALUES ('1', '309', '3', '210', null);
INSERT INTO `web_access` VALUES ('1', '184', '3', '183', null);
INSERT INTO `web_access` VALUES ('1', '185', '3', '183', null);
INSERT INTO `web_access` VALUES ('1', '186', '3', '183', null);
INSERT INTO `web_access` VALUES ('1', '187', '3', '183', null);
INSERT INTO `web_access` VALUES ('1', '301', '3', '183', null);
INSERT INTO `web_access` VALUES ('1', '302', '3', '183', null);
INSERT INTO `web_access` VALUES ('15', '310', '3', '245', null);
INSERT INTO `web_access` VALUES ('15', '199', '3', '198', null);
INSERT INTO `web_access` VALUES ('15', '245', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '158', '3', '154', null);
INSERT INTO `web_access` VALUES ('15', '157', '3', '154', null);
INSERT INTO `web_access` VALUES ('15', '156', '3', '154', null);
INSERT INTO `web_access` VALUES ('15', '155', '3', '154', null);
INSERT INTO `web_access` VALUES ('15', '312', '3', '218', null);
INSERT INTO `web_access` VALUES ('15', '227', '3', '226', null);
INSERT INTO `web_access` VALUES ('15', '314', '3', '221', null);
INSERT INTO `web_access` VALUES ('15', '137', '3', '136', null);
INSERT INTO `web_access` VALUES ('15', '321', '3', '318', null);
INSERT INTO `web_access` VALUES ('15', '322', '3', '318', null);
INSERT INTO `web_access` VALUES ('15', '243', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '324', '3', '323', null);
INSERT INTO `web_access` VALUES ('15', '325', '3', '323', null);
INSERT INTO `web_access` VALUES ('15', '326', '3', '323', null);
INSERT INTO `web_access` VALUES ('15', '327', '3', '323', null);
INSERT INTO `web_access` VALUES ('15', '328', '3', '154', null);
INSERT INTO `web_access` VALUES ('15', '329', '3', '226', null);
INSERT INTO `web_access` VALUES ('14', '142', '3', '141', null);
INSERT INTO `web_access` VALUES ('14', '143', '3', '141', null);
INSERT INTO `web_access` VALUES ('14', '144', '3', '141', null);
INSERT INTO `web_access` VALUES ('14', '145', '3', '141', null);
INSERT INTO `web_access` VALUES ('15', '226', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '221', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '218', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '213', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '210', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '207', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '205', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '198', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '193', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '188', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '183', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '178', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '173', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '166', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '159', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '154', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '146', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '141', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '136', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '194', '3', '193', null);
INSERT INTO `web_access` VALUES ('15', '195', '3', '193', null);
INSERT INTO `web_access` VALUES ('15', '196', '3', '193', null);
INSERT INTO `web_access` VALUES ('15', '197', '3', '193', null);
INSERT INTO `web_access` VALUES ('15', '189', '3', '188', null);
INSERT INTO `web_access` VALUES ('15', '190', '3', '188', null);
INSERT INTO `web_access` VALUES ('15', '191', '3', '188', null);
INSERT INTO `web_access` VALUES ('15', '192', '3', '188', null);
INSERT INTO `web_access` VALUES ('15', '179', '3', '178', null);
INSERT INTO `web_access` VALUES ('15', '180', '3', '178', null);
INSERT INTO `web_access` VALUES ('15', '181', '3', '178', null);
INSERT INTO `web_access` VALUES ('15', '182', '3', '178', null);
INSERT INTO `web_access` VALUES ('15', '174', '3', '173', null);
INSERT INTO `web_access` VALUES ('15', '175', '3', '173', null);
INSERT INTO `web_access` VALUES ('15', '176', '3', '173', null);
INSERT INTO `web_access` VALUES ('15', '177', '3', '173', null);
INSERT INTO `web_access` VALUES ('2', '350', '3', '349', null);
INSERT INTO `web_access` VALUES ('15', '172', '3', '166', null);
INSERT INTO `web_access` VALUES ('15', '171', '3', '166', null);
INSERT INTO `web_access` VALUES ('15', '170', '3', '166', null);
INSERT INTO `web_access` VALUES ('15', '168', '3', '166', null);
INSERT INTO `web_access` VALUES ('15', '167', '3', '166', null);
INSERT INTO `web_access` VALUES ('15', '160', '3', '159', null);
INSERT INTO `web_access` VALUES ('15', '161', '3', '159', null);
INSERT INTO `web_access` VALUES ('15', '162', '3', '159', null);
INSERT INTO `web_access` VALUES ('15', '163', '3', '159', null);
INSERT INTO `web_access` VALUES ('15', '316', '3', '159', null);
INSERT INTO `web_access` VALUES ('15', '153', '3', '146', null);
INSERT INTO `web_access` VALUES ('15', '152', '3', '146', null);
INSERT INTO `web_access` VALUES ('15', '151', '3', '146', null);
INSERT INTO `web_access` VALUES ('15', '150', '3', '146', null);
INSERT INTO `web_access` VALUES ('15', '149', '3', '146', null);
INSERT INTO `web_access` VALUES ('15', '148', '3', '146', null);
INSERT INTO `web_access` VALUES ('15', '147', '3', '146', null);
INSERT INTO `web_access` VALUES ('15', '132', '3', '131', null);
INSERT INTO `web_access` VALUES ('15', '133', '3', '131', null);
INSERT INTO `web_access` VALUES ('15', '134', '3', '131', null);
INSERT INTO `web_access` VALUES ('15', '135', '3', '131', null);
INSERT INTO `web_access` VALUES ('15', '130', '3', '129', null);
INSERT INTO `web_access` VALUES ('15', '339', '3', '250', null);
INSERT INTO `web_access` VALUES ('15', '338', '3', '250', null);
INSERT INTO `web_access` VALUES ('15', '255', '3', '250', null);
INSERT INTO `web_access` VALUES ('15', '254', '3', '250', null);
INSERT INTO `web_access` VALUES ('15', '253', '3', '250', null);
INSERT INTO `web_access` VALUES ('15', '259', '3', '258', null);
INSERT INTO `web_access` VALUES ('15', '260', '3', '258', null);
INSERT INTO `web_access` VALUES ('15', '261', '3', '258', null);
INSERT INTO `web_access` VALUES ('15', '262', '3', '258', null);
INSERT INTO `web_access` VALUES ('15', '263', '3', '258', null);
INSERT INTO `web_access` VALUES ('15', '267', '3', '266', null);
INSERT INTO `web_access` VALUES ('15', '268', '3', '266', null);
INSERT INTO `web_access` VALUES ('15', '269', '3', '266', null);
INSERT INTO `web_access` VALUES ('15', '270', '3', '266', null);
INSERT INTO `web_access` VALUES ('15', '271', '3', '266', null);
INSERT INTO `web_access` VALUES ('15', '275', '3', '274', null);
INSERT INTO `web_access` VALUES ('15', '276', '3', '274', null);
INSERT INTO `web_access` VALUES ('15', '277', '3', '274', null);
INSERT INTO `web_access` VALUES ('15', '278', '3', '274', null);
INSERT INTO `web_access` VALUES ('15', '279', '3', '274', null);
INSERT INTO `web_access` VALUES ('15', '283', '3', '282', null);
INSERT INTO `web_access` VALUES ('15', '284', '3', '282', null);
INSERT INTO `web_access` VALUES ('15', '285', '3', '282', null);
INSERT INTO `web_access` VALUES ('15', '286', '3', '282', null);
INSERT INTO `web_access` VALUES ('15', '287', '3', '282', null);
INSERT INTO `web_access` VALUES ('15', '291', '3', '290', null);
INSERT INTO `web_access` VALUES ('14', '403', '3', '401', null);
INSERT INTO `web_access` VALUES ('14', '402', '3', '401', null);
INSERT INTO `web_access` VALUES ('14', '428', '3', '426', null);
INSERT INTO `web_access` VALUES ('19', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('14', '427', '3', '426', null);
INSERT INTO `web_access` VALUES ('14', '285', '3', '282', null);
INSERT INTO `web_access` VALUES ('14', '286', '3', '282', null);
INSERT INTO `web_access` VALUES ('14', '287', '3', '282', null);
INSERT INTO `web_access` VALUES ('14', '288', '3', '282', null);
INSERT INTO `web_access` VALUES ('14', '289', '3', '282', null);
INSERT INTO `web_access` VALUES ('14', '277', '3', '274', null);
INSERT INTO `web_access` VALUES ('14', '278', '3', '274', null);
INSERT INTO `web_access` VALUES ('14', '279', '3', '274', null);
INSERT INTO `web_access` VALUES ('14', '280', '3', '274', null);
INSERT INTO `web_access` VALUES ('14', '281', '3', '274', null);
INSERT INTO `web_access` VALUES ('14', '269', '3', '266', null);
INSERT INTO `web_access` VALUES ('14', '270', '3', '266', null);
INSERT INTO `web_access` VALUES ('14', '271', '3', '266', null);
INSERT INTO `web_access` VALUES ('14', '272', '3', '266', null);
INSERT INTO `web_access` VALUES ('14', '273', '3', '266', null);
INSERT INTO `web_access` VALUES ('14', '261', '3', '258', null);
INSERT INTO `web_access` VALUES ('14', '262', '3', '258', null);
INSERT INTO `web_access` VALUES ('14', '263', '3', '258', null);
INSERT INTO `web_access` VALUES ('14', '264', '3', '258', null);
INSERT INTO `web_access` VALUES ('14', '265', '3', '258', null);
INSERT INTO `web_access` VALUES ('14', '257', '3', '250', null);
INSERT INTO `web_access` VALUES ('14', '256', '3', '250', null);
INSERT INTO `web_access` VALUES ('14', '255', '3', '250', null);
INSERT INTO `web_access` VALUES ('14', '254', '3', '250', null);
INSERT INTO `web_access` VALUES ('14', '253', '3', '250', null);
INSERT INTO `web_access` VALUES ('14', '211', '3', '210', null);
INSERT INTO `web_access` VALUES ('14', '212', '3', '210', null);
INSERT INTO `web_access` VALUES ('14', '309', '3', '210', null);
INSERT INTO `web_access` VALUES ('14', '208', '3', '207', null);
INSERT INTO `web_access` VALUES ('14', '209', '3', '207', null);
INSERT INTO `web_access` VALUES ('14', '308', '3', '207', null);
INSERT INTO `web_access` VALUES ('14', '206', '3', '205', null);
INSERT INTO `web_access` VALUES ('14', '174', '3', '173', null);
INSERT INTO `web_access` VALUES ('14', '182', '3', '178', null);
INSERT INTO `web_access` VALUES ('14', '181', '3', '178', null);
INSERT INTO `web_access` VALUES ('14', '180', '3', '178', null);
INSERT INTO `web_access` VALUES ('14', '179', '3', '178', null);
INSERT INTO `web_access` VALUES ('14', '196', '3', '193', null);
INSERT INTO `web_access` VALUES ('14', '197', '3', '193', null);
INSERT INTO `web_access` VALUES ('14', '189', '3', '188', null);
INSERT INTO `web_access` VALUES ('14', '190', '3', '188', null);
INSERT INTO `web_access` VALUES ('14', '191', '3', '188', null);
INSERT INTO `web_access` VALUES ('14', '192', '3', '188', null);
INSERT INTO `web_access` VALUES ('14', '176', '3', '173', null);
INSERT INTO `web_access` VALUES ('14', '175', '3', '173', null);
INSERT INTO `web_access` VALUES ('14', '155', '3', '154', null);
INSERT INTO `web_access` VALUES ('14', '156', '3', '154', null);
INSERT INTO `web_access` VALUES ('14', '157', '3', '154', null);
INSERT INTO `web_access` VALUES ('14', '158', '3', '154', null);
INSERT INTO `web_access` VALUES ('14', '328', '3', '154', null);
INSERT INTO `web_access` VALUES ('14', '147', '3', '146', null);
INSERT INTO `web_access` VALUES ('14', '148', '3', '146', null);
INSERT INTO `web_access` VALUES ('14', '149', '3', '146', null);
INSERT INTO `web_access` VALUES ('14', '150', '3', '146', null);
INSERT INTO `web_access` VALUES ('14', '151', '3', '146', null);
INSERT INTO `web_access` VALUES ('14', '152', '3', '146', null);
INSERT INTO `web_access` VALUES ('14', '153', '3', '146', null);
INSERT INTO `web_access` VALUES ('13', '266', '2', '1', null);
INSERT INTO `web_access` VALUES ('13', '258', '2', '1', null);
INSERT INTO `web_access` VALUES ('13', '250', '2', '1', null);
INSERT INTO `web_access` VALUES ('13', '238', '2', '1', null);
INSERT INTO `web_access` VALUES ('13', '233', '2', '1', null);
INSERT INTO `web_access` VALUES ('13', '210', '2', '1', null);
INSERT INTO `web_access` VALUES ('13', '207', '2', '1', null);
INSERT INTO `web_access` VALUES ('13', '205', '2', '1', null);
INSERT INTO `web_access` VALUES ('13', '188', '2', '1', null);
INSERT INTO `web_access` VALUES ('13', '178', '2', '1', null);
INSERT INTO `web_access` VALUES ('13', '173', '2', '1', null);
INSERT INTO `web_access` VALUES ('13', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('13', '154', '2', '1', null);
INSERT INTO `web_access` VALUES ('13', '146', '2', '1', null);
INSERT INTO `web_access` VALUES ('13', '129', '2', '1', null);
INSERT INTO `web_access` VALUES ('13', '147', '3', '146', null);
INSERT INTO `web_access` VALUES ('13', '148', '3', '146', null);
INSERT INTO `web_access` VALUES ('13', '149', '3', '146', null);
INSERT INTO `web_access` VALUES ('13', '150', '3', '146', null);
INSERT INTO `web_access` VALUES ('13', '151', '3', '146', null);
INSERT INTO `web_access` VALUES ('13', '152', '3', '146', null);
INSERT INTO `web_access` VALUES ('13', '153', '3', '146', null);
INSERT INTO `web_access` VALUES ('13', '130', '3', '129', null);
INSERT INTO `web_access` VALUES ('13', '165', '3', '164', null);
INSERT INTO `web_access` VALUES ('13', '155', '3', '154', null);
INSERT INTO `web_access` VALUES ('13', '156', '3', '154', null);
INSERT INTO `web_access` VALUES ('13', '157', '3', '154', null);
INSERT INTO `web_access` VALUES ('13', '158', '3', '154', null);
INSERT INTO `web_access` VALUES ('13', '328', '3', '154', null);
INSERT INTO `web_access` VALUES ('13', '174', '3', '173', null);
INSERT INTO `web_access` VALUES ('13', '175', '3', '173', null);
INSERT INTO `web_access` VALUES ('13', '176', '3', '173', null);
INSERT INTO `web_access` VALUES ('13', '177', '3', '173', null);
INSERT INTO `web_access` VALUES ('13', '179', '3', '178', null);
INSERT INTO `web_access` VALUES ('13', '180', '3', '178', null);
INSERT INTO `web_access` VALUES ('13', '181', '3', '178', null);
INSERT INTO `web_access` VALUES ('13', '182', '3', '178', null);
INSERT INTO `web_access` VALUES ('13', '189', '3', '188', null);
INSERT INTO `web_access` VALUES ('13', '190', '3', '188', null);
INSERT INTO `web_access` VALUES ('13', '191', '3', '188', null);
INSERT INTO `web_access` VALUES ('13', '192', '3', '188', null);
INSERT INTO `web_access` VALUES ('13', '206', '3', '205', null);
INSERT INTO `web_access` VALUES ('13', '208', '3', '207', null);
INSERT INTO `web_access` VALUES ('13', '209', '3', '207', null);
INSERT INTO `web_access` VALUES ('13', '308', '3', '207', null);
INSERT INTO `web_access` VALUES ('13', '211', '3', '210', null);
INSERT INTO `web_access` VALUES ('13', '212', '3', '210', null);
INSERT INTO `web_access` VALUES ('13', '309', '3', '210', null);
INSERT INTO `web_access` VALUES ('13', '339', '3', '250', null);
INSERT INTO `web_access` VALUES ('13', '338', '3', '250', null);
INSERT INTO `web_access` VALUES ('13', '257', '3', '250', null);
INSERT INTO `web_access` VALUES ('13', '256', '3', '250', null);
INSERT INTO `web_access` VALUES ('13', '255', '3', '250', null);
INSERT INTO `web_access` VALUES ('13', '254', '3', '250', null);
INSERT INTO `web_access` VALUES ('13', '253', '3', '250', null);
INSERT INTO `web_access` VALUES ('13', '259', '3', '258', null);
INSERT INTO `web_access` VALUES ('13', '260', '3', '258', null);
INSERT INTO `web_access` VALUES ('13', '261', '3', '258', null);
INSERT INTO `web_access` VALUES ('13', '262', '3', '258', null);
INSERT INTO `web_access` VALUES ('13', '263', '3', '258', null);
INSERT INTO `web_access` VALUES ('13', '267', '3', '266', null);
INSERT INTO `web_access` VALUES ('13', '268', '3', '266', null);
INSERT INTO `web_access` VALUES ('13', '269', '3', '266', null);
INSERT INTO `web_access` VALUES ('13', '270', '3', '266', null);
INSERT INTO `web_access` VALUES ('13', '271', '3', '266', null);
INSERT INTO `web_access` VALUES ('13', '275', '3', '274', null);
INSERT INTO `web_access` VALUES ('13', '276', '3', '274', null);
INSERT INTO `web_access` VALUES ('13', '277', '3', '274', null);
INSERT INTO `web_access` VALUES ('13', '278', '3', '274', null);
INSERT INTO `web_access` VALUES ('13', '279', '3', '274', null);
INSERT INTO `web_access` VALUES ('13', '283', '3', '282', null);
INSERT INTO `web_access` VALUES ('13', '284', '3', '282', null);
INSERT INTO `web_access` VALUES ('13', '285', '3', '282', null);
INSERT INTO `web_access` VALUES ('13', '286', '3', '282', null);
INSERT INTO `web_access` VALUES ('13', '287', '3', '282', null);
INSERT INTO `web_access` VALUES ('13', '291', '3', '290', null);
INSERT INTO `web_access` VALUES ('15', '252', '3', '250', null);
INSERT INTO `web_access` VALUES ('14', '252', '3', '250', null);
INSERT INTO `web_access` VALUES ('13', '252', '3', '250', null);
INSERT INTO `web_access` VALUES ('2', '252', '3', '250', null);
INSERT INTO `web_access` VALUES ('1', '252', '3', '250', null);
INSERT INTO `web_access` VALUES ('1', '251', '3', '250', null);
INSERT INTO `web_access` VALUES ('2', '251', '3', '250', null);
INSERT INTO `web_access` VALUES ('13', '251', '3', '250', null);
INSERT INTO `web_access` VALUES ('14', '251', '3', '250', null);
INSERT INTO `web_access` VALUES ('15', '251', '3', '250', null);
INSERT INTO `web_access` VALUES ('15', '340', '3', '250', null);
INSERT INTO `web_access` VALUES ('2', '340', '3', '250', null);
INSERT INTO `web_access` VALUES ('1', '340', '3', '250', null);
INSERT INTO `web_access` VALUES ('15', '341', '3', '292', null);
INSERT INTO `web_access` VALUES ('15', '342', '3', '164', null);
INSERT INTO `web_access` VALUES ('14', '342', '3', '164', null);
INSERT INTO `web_access` VALUES ('1', '342', '3', '164', null);
INSERT INTO `web_access` VALUES ('15', '300', '3', '292', null);
INSERT INTO `web_access` VALUES ('15', '299', '3', '292', null);
INSERT INTO `web_access` VALUES ('15', '298', '3', '292', null);
INSERT INTO `web_access` VALUES ('15', '297', '3', '292', null);
INSERT INTO `web_access` VALUES ('15', '296', '3', '292', null);
INSERT INTO `web_access` VALUES ('15', '295', '3', '292', null);
INSERT INTO `web_access` VALUES ('14', '340', '3', '250', null);
INSERT INTO `web_access` VALUES ('13', '340', '3', '250', null);
INSERT INTO `web_access` VALUES ('2', '351', '3', '349', null);
INSERT INTO `web_access` VALUES ('2', '352', '3', '349', null);
INSERT INTO `web_access` VALUES ('2', '353', '3', '349', null);
INSERT INTO `web_access` VALUES ('2', '354', '3', '349', null);
INSERT INTO `web_access` VALUES ('2', '355', '3', '349', null);
INSERT INTO `web_access` VALUES ('14', '395', '3', '166', null);
INSERT INTO `web_access` VALUES ('14', '355', '3', '349', null);
INSERT INTO `web_access` VALUES ('14', '354', '3', '349', null);
INSERT INTO `web_access` VALUES ('14', '353', '3', '349', null);
INSERT INTO `web_access` VALUES ('14', '352', '3', '349', null);
INSERT INTO `web_access` VALUES ('14', '351', '3', '349', null);
INSERT INTO `web_access` VALUES ('14', '350', '3', '349', null);
INSERT INTO `web_access` VALUES ('15', '131', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '350', '3', '349', null);
INSERT INTO `web_access` VALUES ('15', '351', '3', '349', null);
INSERT INTO `web_access` VALUES ('15', '352', '3', '349', null);
INSERT INTO `web_access` VALUES ('15', '353', '3', '349', null);
INSERT INTO `web_access` VALUES ('15', '354', '3', '349', null);
INSERT INTO `web_access` VALUES ('15', '355', '3', '349', null);
INSERT INTO `web_access` VALUES ('14', '356', '3', '349', null);
INSERT INTO `web_access` VALUES ('2', '129', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '358', '3', '357', null);
INSERT INTO `web_access` VALUES ('15', '129', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '358', '3', '357', null);
INSERT INTO `web_access` VALUES ('21', '478', '3', '473', null);
INSERT INTO `web_access` VALUES ('14', '358', '3', '357', null);
INSERT INTO `web_access` VALUES ('15', '294', '3', '292', null);
INSERT INTO `web_access` VALUES ('15', '293', '3', '292', null);
INSERT INTO `web_access` VALUES ('2', '361', '2', '1', null);
INSERT INTO `web_access` VALUES ('2', '362', '3', '361', null);
INSERT INTO `web_access` VALUES ('1', '361', '2', '1', null);
INSERT INTO `web_access` VALUES ('1', '362', '3', '361', null);
INSERT INTO `web_access` VALUES ('1', '364', '3', '361', null);
INSERT INTO `web_access` VALUES ('13', '361', '2', '1', null);
INSERT INTO `web_access` VALUES ('13', '362', '3', '361', null);
INSERT INTO `web_access` VALUES ('14', '426', '2', '1', null);
INSERT INTO `web_access` VALUES ('14', '362', '3', '361', null);
INSERT INTO `web_access` VALUES ('15', '111', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '362', '3', '361', null);
INSERT INTO `web_access` VALUES ('15', '364', '3', '361', null);
INSERT INTO `web_access` VALUES ('15', '363', '3', '292', null);
INSERT INTO `web_access` VALUES ('15', '365', '2', '1', null);
INSERT INTO `web_access` VALUES ('15', '366', '3', '365', null);
INSERT INTO `web_access` VALUES ('14', '241', '3', '238', null);
INSERT INTO `web_access` VALUES ('14', '242', '3', '238', null);
INSERT INTO `web_access` VALUES ('14', '236', '3', '233', null);
INSERT INTO `web_access` VALUES ('14', '237', '3', '233', null);
INSERT INTO `web_access` VALUES ('16', '394', '1', '0', null);
INSERT INTO `web_access` VALUES ('16', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('16', '131', '2', '1', null);
INSERT INTO `web_access` VALUES ('16', '129', '2', '1', null);
INSERT INTO `web_access` VALUES ('16', '382', '3', '367', null);
INSERT INTO `web_access` VALUES ('16', '376', '3', '367', null);
INSERT INTO `web_access` VALUES ('16', '371', '3', '367', null);
INSERT INTO `web_access` VALUES ('16', '370', '3', '367', null);
INSERT INTO `web_access` VALUES ('16', '369', '3', '367', null);
INSERT INTO `web_access` VALUES ('16', '368', '3', '367', null);
INSERT INTO `web_access` VALUES ('16', '373', '3', '372', null);
INSERT INTO `web_access` VALUES ('16', '374', '3', '372', null);
INSERT INTO `web_access` VALUES ('16', '375', '3', '372', null);
INSERT INTO `web_access` VALUES ('16', '378', '3', '377', null);
INSERT INTO `web_access` VALUES ('16', '379', '3', '377', null);
INSERT INTO `web_access` VALUES ('16', '380', '3', '377', null);
INSERT INTO `web_access` VALUES ('16', '381', '3', '377', null);
INSERT INTO `web_access` VALUES ('16', '383', '3', '367', null);
INSERT INTO `web_access` VALUES ('16', '124', '2', '1', null);
INSERT INTO `web_access` VALUES ('16', '111', '2', '1', null);
INSERT INTO `web_access` VALUES ('16', '106', '2', '1', null);
INSERT INTO `web_access` VALUES ('16', '136', '2', '1', null);
INSERT INTO `web_access` VALUES ('16', '130', '3', '129', null);
INSERT INTO `web_access` VALUES ('16', '125', '3', '124', null);
INSERT INTO `web_access` VALUES ('16', '126', '3', '124', null);
INSERT INTO `web_access` VALUES ('16', '127', '3', '124', null);
INSERT INTO `web_access` VALUES ('16', '128', '3', '124', null);
INSERT INTO `web_access` VALUES ('16', '109', '3', '106', null);
INSERT INTO `web_access` VALUES ('16', '137', '3', '136', null);
INSERT INTO `web_access` VALUES ('16', '138', '3', '136', null);
INSERT INTO `web_access` VALUES ('16', '132', '3', '131', null);
INSERT INTO `web_access` VALUES ('16', '134', '3', '131', null);
INSERT INTO `web_access` VALUES ('14', '414', '2', '1', null);
INSERT INTO `web_access` VALUES ('14', '409', '2', '1', null);
INSERT INTO `web_access` VALUES ('14', '401', '2', '1', null);
INSERT INTO `web_access` VALUES ('14', '397', '3', '396', null);
INSERT INTO `web_access` VALUES ('14', '430', '3', '426', null);
INSERT INTO `web_access` VALUES ('14', '429', '3', '426', null);
INSERT INTO `web_access` VALUES ('14', '405', '3', '404', null);
INSERT INTO `web_access` VALUES ('14', '413', '3', '409', null);
INSERT INTO `web_access` VALUES ('14', '411', '3', '409', null);
INSERT INTO `web_access` VALUES ('14', '410', '3', '409', null);
INSERT INTO `web_access` VALUES ('14', '425', '3', '414', null);
INSERT INTO `web_access` VALUES ('14', '424', '3', '414', null);
INSERT INTO `web_access` VALUES ('14', '423', '3', '414', null);
INSERT INTO `web_access` VALUES ('14', '422', '3', '414', null);
INSERT INTO `web_access` VALUES ('14', '421', '3', '414', null);
INSERT INTO `web_access` VALUES ('14', '420', '3', '414', null);
INSERT INTO `web_access` VALUES ('14', '419', '3', '414', null);
INSERT INTO `web_access` VALUES ('14', '418', '3', '414', null);
INSERT INTO `web_access` VALUES ('14', '417', '3', '414', null);
INSERT INTO `web_access` VALUES ('14', '416', '3', '414', null);
INSERT INTO `web_access` VALUES ('14', '415', '3', '414', null);
INSERT INTO `web_access` VALUES ('14', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '468', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '461', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '457', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '452', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '451', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '431', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '423', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '420', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '419', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '418', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '417', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '416', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '415', '3', '414', null);
INSERT INTO `web_access` VALUES ('14', '431', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '429', '3', '426', null);
INSERT INTO `web_access` VALUES ('11', '428', '3', '426', null);
INSERT INTO `web_access` VALUES ('11', '427', '3', '426', null);
INSERT INTO `web_access` VALUES ('17', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('18', '529', '3', '414', null);
INSERT INTO `web_access` VALUES ('17', '440', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('17', '439', '3', '432', null);
INSERT INTO `web_access` VALUES ('17', '437', '3', '432', null);
INSERT INTO `web_access` VALUES ('17', '433', '3', '432', null);
INSERT INTO `web_access` VALUES ('17', '441', '3', '440', null);
INSERT INTO `web_access` VALUES ('17', '442', '3', '440', null);
INSERT INTO `web_access` VALUES ('17', '443', '3', '440', null);
INSERT INTO `web_access` VALUES ('17', '444', '3', '440', null);
INSERT INTO `web_access` VALUES ('18', '502', '3', '500', null);
INSERT INTO `web_access` VALUES ('18', '510', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '505', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '500', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '495', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '457', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '165', '3', '164', null);
INSERT INTO `web_access` VALUES ('18', '395', '3', '166', null);
INSERT INTO `web_access` VALUES ('18', '525', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '402', '3', '401', null);
INSERT INTO `web_access` VALUES ('19', '445', '3', '409', null);
INSERT INTO `web_access` VALUES ('18', '513', '3', '409', null);
INSERT INTO `web_access` VALUES ('18', '491', '3', '409', null);
INSERT INTO `web_access` VALUES ('18', '467', '3', '409', null);
INSERT INTO `web_access` VALUES ('18', '430', '3', '426', null);
INSERT INTO `web_access` VALUES ('18', '429', '3', '426', null);
INSERT INTO `web_access` VALUES ('18', '428', '3', '426', null);
INSERT INTO `web_access` VALUES ('18', '427', '3', '426', null);
INSERT INTO `web_access` VALUES ('18', '456', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '466', '3', '409', null);
INSERT INTO `web_access` VALUES ('18', '455', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '454', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '453', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '452', '3', '414', null);
INSERT INTO `web_access` VALUES ('19', '414', '2', '1', null);
INSERT INTO `web_access` VALUES ('19', '409', '2', '1', null);
INSERT INTO `web_access` VALUES ('19', '412', '3', '409', null);
INSERT INTO `web_access` VALUES ('19', '165', '3', '164', null);
INSERT INTO `web_access` VALUES ('19', '411', '3', '409', null);
INSERT INTO `web_access` VALUES ('19', '401', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '447', '3', '409', null);
INSERT INTO `web_access` VALUES ('19', '416', '3', '414', null);
INSERT INTO `web_access` VALUES ('19', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('19', '403', '3', '401', null);
INSERT INTO `web_access` VALUES ('18', '451', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '448', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '449', '3', '448', null);
INSERT INTO `web_access` VALUES ('18', '492', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '431', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '493', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '423', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '494', '3', '414', null);
INSERT INTO `web_access` VALUES ('20', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('18', '507', '3', '505', null);
INSERT INTO `web_access` VALUES ('18', '506', '3', '505', null);
INSERT INTO `web_access` VALUES ('20', '165', '3', '164', null);
INSERT INTO `web_access` VALUES ('18', '426', '2', '1', null);
INSERT INTO `web_access` VALUES ('20', '494', '3', '414', null);
INSERT INTO `web_access` VALUES ('20', '492', '3', '414', null);
INSERT INTO `web_access` VALUES ('20', '455', '3', '414', null);
INSERT INTO `web_access` VALUES ('20', '409', '2', '1', null);
INSERT INTO `web_access` VALUES ('20', '395', '3', '166', null);
INSERT INTO `web_access` VALUES ('18', '420', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '414', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '458', '3', '457', null);
INSERT INTO `web_access` VALUES ('18', '459', '3', '457', null);
INSERT INTO `web_access` VALUES ('18', '460', '3', '457', null);
INSERT INTO `web_access` VALUES ('11', '448', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '440', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '432', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '426', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '414', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '409', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '404', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '396', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '397', '3', '396', null);
INSERT INTO `web_access` VALUES ('11', '398', '3', '396', null);
INSERT INTO `web_access` VALUES ('11', '399', '3', '396', null);
INSERT INTO `web_access` VALUES ('11', '400', '3', '396', null);
INSERT INTO `web_access` VALUES ('11', '168', '3', '166', null);
INSERT INTO `web_access` VALUES ('11', '169', '3', '166', null);
INSERT INTO `web_access` VALUES ('11', '170', '3', '166', null);
INSERT INTO `web_access` VALUES ('11', '171', '3', '166', null);
INSERT INTO `web_access` VALUES ('11', '172', '3', '166', null);
INSERT INTO `web_access` VALUES ('11', '395', '3', '166', null);
INSERT INTO `web_access` VALUES ('11', '336', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '337', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '405', '3', '404', null);
INSERT INTO `web_access` VALUES ('11', '406', '3', '404', null);
INSERT INTO `web_access` VALUES ('11', '407', '3', '404', null);
INSERT INTO `web_access` VALUES ('11', '408', '3', '404', null);
INSERT INTO `web_access` VALUES ('11', '446', '3', '409', null);
INSERT INTO `web_access` VALUES ('11', '445', '3', '409', null);
INSERT INTO `web_access` VALUES ('11', '413', '3', '409', null);
INSERT INTO `web_access` VALUES ('11', '454', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '455', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '456', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '430', '3', '426', null);
INSERT INTO `web_access` VALUES ('11', '433', '3', '432', null);
INSERT INTO `web_access` VALUES ('11', '437', '3', '432', null);
INSERT INTO `web_access` VALUES ('11', '438', '3', '432', null);
INSERT INTO `web_access` VALUES ('11', '439', '3', '432', null);
INSERT INTO `web_access` VALUES ('11', '441', '3', '440', null);
INSERT INTO `web_access` VALUES ('11', '442', '3', '440', null);
INSERT INTO `web_access` VALUES ('11', '443', '3', '440', null);
INSERT INTO `web_access` VALUES ('11', '444', '3', '440', null);
INSERT INTO `web_access` VALUES ('11', '449', '3', '448', null);
INSERT INTO `web_access` VALUES ('11', '458', '3', '457', null);
INSERT INTO `web_access` VALUES ('11', '459', '3', '457', null);
INSERT INTO `web_access` VALUES ('11', '460', '3', '457', null);
INSERT INTO `web_access` VALUES ('11', '401', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '462', '3', '461', null);
INSERT INTO `web_access` VALUES ('11', '463', '3', '461', null);
INSERT INTO `web_access` VALUES ('11', '464', '3', '461', null);
INSERT INTO `web_access` VALUES ('11', '465', '3', '461', null);
INSERT INTO `web_access` VALUES ('11', '412', '3', '409', null);
INSERT INTO `web_access` VALUES ('11', '410', '3', '409', null);
INSERT INTO `web_access` VALUES ('18', '446', '3', '409', null);
INSERT INTO `web_access` VALUES ('18', '445', '3', '409', null);
INSERT INTO `web_access` VALUES ('18', '413', '3', '409', null);
INSERT INTO `web_access` VALUES ('21', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('17', '432', '2', '1', null);
INSERT INTO `web_access` VALUES ('21', '485', '2', '1', null);
INSERT INTO `web_access` VALUES ('21', '479', '2', '1', null);
INSERT INTO `web_access` VALUES ('21', '473', '2', '1', null);
INSERT INTO `web_access` VALUES ('21', '165', '3', '164', null);
INSERT INTO `web_access` VALUES ('21', '476', '3', '473', null);
INSERT INTO `web_access` VALUES ('21', '475', '3', '473', null);
INSERT INTO `web_access` VALUES ('21', '474', '3', '473', null);
INSERT INTO `web_access` VALUES ('11', '495', '2', '1', null);
INSERT INTO `web_access` VALUES ('21', '482', '3', '479', null);
INSERT INTO `web_access` VALUES ('21', '481', '3', '479', null);
INSERT INTO `web_access` VALUES ('21', '486', '3', '485', null);
INSERT INTO `web_access` VALUES ('21', '487', '3', '485', null);
INSERT INTO `web_access` VALUES ('21', '488', '3', '485', null);
INSERT INTO `web_access` VALUES ('11', '166', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '111', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '106', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '469', '3', '468', null);
INSERT INTO `web_access` VALUES ('11', '470', '3', '468', null);
INSERT INTO `web_access` VALUES ('11', '471', '3', '468', null);
INSERT INTO `web_access` VALUES ('11', '472', '3', '468', null);
INSERT INTO `web_access` VALUES ('11', '477', '3', '473', null);
INSERT INTO `web_access` VALUES ('11', '476', '3', '473', null);
INSERT INTO `web_access` VALUES ('11', '475', '3', '473', null);
INSERT INTO `web_access` VALUES ('11', '474', '3', '473', null);
INSERT INTO `web_access` VALUES ('11', '478', '3', '473', null);
INSERT INTO `web_access` VALUES ('11', '480', '3', '479', null);
INSERT INTO `web_access` VALUES ('11', '481', '3', '479', null);
INSERT INTO `web_access` VALUES ('11', '482', '3', '479', null);
INSERT INTO `web_access` VALUES ('11', '483', '3', '479', null);
INSERT INTO `web_access` VALUES ('11', '484', '3', '479', null);
INSERT INTO `web_access` VALUES ('11', '486', '3', '485', null);
INSERT INTO `web_access` VALUES ('11', '487', '3', '485', null);
INSERT INTO `web_access` VALUES ('11', '488', '3', '485', null);
INSERT INTO `web_access` VALUES ('11', '489', '3', '485', null);
INSERT INTO `web_access` VALUES ('11', '490', '3', '485', null);
INSERT INTO `web_access` VALUES ('22', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('24', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('22', '514', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '510', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '505', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '500', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '485', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '479', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '473', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '468', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '461', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '457', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '440', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '432', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '426', '2', '1', null);
INSERT INTO `web_access` VALUES ('21', '461', '2', '1', null);
INSERT INTO `web_access` VALUES ('21', '457', '2', '1', null);
INSERT INTO `web_access` VALUES ('21', '440', '2', '1', null);
INSERT INTO `web_access` VALUES ('21', '432', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '414', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '484', '3', '479', null);
INSERT INTO `web_access` VALUES ('22', '482', '3', '479', null);
INSERT INTO `web_access` VALUES ('22', '481', '3', '479', null);
INSERT INTO `web_access` VALUES ('22', '474', '3', '473', null);
INSERT INTO `web_access` VALUES ('22', '475', '3', '473', null);
INSERT INTO `web_access` VALUES ('22', '476', '3', '473', null);
INSERT INTO `web_access` VALUES ('22', '460', '3', '457', null);
INSERT INTO `web_access` VALUES ('22', '459', '3', '457', null);
INSERT INTO `web_access` VALUES ('22', '458', '3', '457', null);
INSERT INTO `web_access` VALUES ('22', '441', '3', '440', null);
INSERT INTO `web_access` VALUES ('22', '442', '3', '440', null);
INSERT INTO `web_access` VALUES ('22', '443', '3', '440', null);
INSERT INTO `web_access` VALUES ('22', '444', '3', '440', null);
INSERT INTO `web_access` VALUES ('22', '433', '3', '432', null);
INSERT INTO `web_access` VALUES ('22', '437', '3', '432', null);
INSERT INTO `web_access` VALUES ('22', '438', '3', '432', null);
INSERT INTO `web_access` VALUES ('22', '439', '3', '432', null);
INSERT INTO `web_access` VALUES ('22', '427', '3', '426', null);
INSERT INTO `web_access` VALUES ('22', '428', '3', '426', null);
INSERT INTO `web_access` VALUES ('22', '429', '3', '426', null);
INSERT INTO `web_access` VALUES ('22', '430', '3', '426', null);
INSERT INTO `web_access` VALUES ('18', '409', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '455', '3', '414', null);
INSERT INTO `web_access` VALUES ('22', '454', '3', '414', null);
INSERT INTO `web_access` VALUES ('22', '453', '3', '414', null);
INSERT INTO `web_access` VALUES ('22', '452', '3', '414', null);
INSERT INTO `web_access` VALUES ('22', '451', '3', '414', null);
INSERT INTO `web_access` VALUES ('22', '492', '3', '414', null);
INSERT INTO `web_access` VALUES ('22', '431', '3', '414', null);
INSERT INTO `web_access` VALUES ('22', '493', '3', '414', null);
INSERT INTO `web_access` VALUES ('22', '423', '3', '414', null);
INSERT INTO `web_access` VALUES ('22', '494', '3', '414', null);
INSERT INTO `web_access` VALUES ('22', '420', '3', '414', null);
INSERT INTO `web_access` VALUES ('22', '419', '3', '414', null);
INSERT INTO `web_access` VALUES ('22', '418', '3', '414', null);
INSERT INTO `web_access` VALUES ('22', '416', '3', '414', null);
INSERT INTO `web_access` VALUES ('22', '491', '3', '409', null);
INSERT INTO `web_access` VALUES ('22', '467', '3', '409', null);
INSERT INTO `web_access` VALUES ('22', '466', '3', '409', null);
INSERT INTO `web_access` VALUES ('22', '447', '3', '409', null);
INSERT INTO `web_access` VALUES ('22', '446', '3', '409', null);
INSERT INTO `web_access` VALUES ('22', '445', '3', '409', null);
INSERT INTO `web_access` VALUES ('22', '413', '3', '409', null);
INSERT INTO `web_access` VALUES ('22', '410', '3', '409', null);
INSERT INTO `web_access` VALUES ('22', '405', '3', '404', null);
INSERT INTO `web_access` VALUES ('22', '406', '3', '404', null);
INSERT INTO `web_access` VALUES ('22', '407', '3', '404', null);
INSERT INTO `web_access` VALUES ('22', '408', '3', '404', null);
INSERT INTO `web_access` VALUES ('22', '397', '3', '396', null);
INSERT INTO `web_access` VALUES ('22', '398', '3', '396', null);
INSERT INTO `web_access` VALUES ('22', '399', '3', '396', null);
INSERT INTO `web_access` VALUES ('22', '400', '3', '396', null);
INSERT INTO `web_access` VALUES ('22', '403', '3', '401', null);
INSERT INTO `web_access` VALUES ('22', '402', '3', '401', null);
INSERT INTO `web_access` VALUES ('22', '165', '3', '164', null);
INSERT INTO `web_access` VALUES ('22', '486', '3', '485', null);
INSERT INTO `web_access` VALUES ('22', '487', '3', '485', null);
INSERT INTO `web_access` VALUES ('22', '488', '3', '485', null);
INSERT INTO `web_access` VALUES ('23', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('23', '485', '2', '1', null);
INSERT INTO `web_access` VALUES ('23', '479', '2', '1', null);
INSERT INTO `web_access` VALUES ('23', '473', '2', '1', null);
INSERT INTO `web_access` VALUES ('23', '469', '3', '468', null);
INSERT INTO `web_access` VALUES ('23', '470', '3', '468', null);
INSERT INTO `web_access` VALUES ('23', '471', '3', '468', null);
INSERT INTO `web_access` VALUES ('23', '472', '3', '468', null);
INSERT INTO `web_access` VALUES ('23', '484', '3', '479', null);
INSERT INTO `web_access` VALUES ('23', '483', '3', '479', null);
INSERT INTO `web_access` VALUES ('23', '489', '3', '485', null);
INSERT INTO `web_access` VALUES ('23', '490', '3', '485', null);
INSERT INTO `web_access` VALUES ('23', '468', '2', '1', null);
INSERT INTO `web_access` VALUES ('23', '478', '3', '473', null);
INSERT INTO `web_access` VALUES ('23', '477', '3', '473', null);
INSERT INTO `web_access` VALUES ('23', '476', '3', '473', null);
INSERT INTO `web_access` VALUES ('23', '475', '3', '473', null);
INSERT INTO `web_access` VALUES ('23', '474', '3', '473', null);
INSERT INTO `web_access` VALUES ('18', '419', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '496', '3', '495', null);
INSERT INTO `web_access` VALUES ('18', '497', '3', '495', null);
INSERT INTO `web_access` VALUES ('18', '498', '3', '495', null);
INSERT INTO `web_access` VALUES ('18', '417', '3', '414', null);
INSERT INTO `web_access` VALUES ('22', '499', '3', '401', null);
INSERT INTO `web_access` VALUES ('22', '415', '3', '414', null);
INSERT INTO `web_access` VALUES ('22', '456', '3', '414', null);
INSERT INTO `web_access` VALUES ('22', '409', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '501', '3', '500', null);
INSERT INTO `web_access` VALUES ('22', '502', '3', '500', null);
INSERT INTO `web_access` VALUES ('22', '503', '3', '500', null);
INSERT INTO `web_access` VALUES ('22', '504', '3', '500', null);
INSERT INTO `web_access` VALUES ('20', '166', '2', '1', null);
INSERT INTO `web_access` VALUES ('20', '410', '3', '409', null);
INSERT INTO `web_access` VALUES ('20', '413', '3', '409', null);
INSERT INTO `web_access` VALUES ('20', '445', '3', '409', null);
INSERT INTO `web_access` VALUES ('20', '446', '3', '409', null);
INSERT INTO `web_access` VALUES ('20', '447', '3', '409', null);
INSERT INTO `web_access` VALUES ('20', '466', '3', '409', null);
INSERT INTO `web_access` VALUES ('20', '467', '3', '409', null);
INSERT INTO `web_access` VALUES ('20', '491', '3', '409', null);
INSERT INTO `web_access` VALUES ('20', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('20', '486', '3', '485', null);
INSERT INTO `web_access` VALUES ('20', '487', '3', '485', null);
INSERT INTO `web_access` VALUES ('20', '488', '3', '485', null);
INSERT INTO `web_access` VALUES ('20', '480', '3', '479', null);
INSERT INTO `web_access` VALUES ('20', '481', '3', '479', null);
INSERT INTO `web_access` VALUES ('20', '482', '3', '479', null);
INSERT INTO `web_access` VALUES ('20', '454', '3', '414', null);
INSERT INTO `web_access` VALUES ('20', '453', '3', '414', null);
INSERT INTO `web_access` VALUES ('20', '431', '3', '414', null);
INSERT INTO `web_access` VALUES ('20', '423', '3', '414', null);
INSERT INTO `web_access` VALUES ('20', '419', '3', '414', null);
INSERT INTO `web_access` VALUES ('20', '415', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '508', '3', '505', null);
INSERT INTO `web_access` VALUES ('18', '509', '3', '505', null);
INSERT INTO `web_access` VALUES ('18', '401', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '511', '3', '510', null);
INSERT INTO `web_access` VALUES ('22', '404', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '511', '3', '510', null);
INSERT INTO `web_access` VALUES ('23', '512', '3', '479', null);
INSERT INTO `web_access` VALUES ('18', '410', '3', '409', null);
INSERT INTO `web_access` VALUES ('18', '166', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '501', '3', '500', null);
INSERT INTO `web_access` VALUES ('18', '503', '3', '500', null);
INSERT INTO `web_access` VALUES ('18', '504', '3', '500', null);
INSERT INTO `web_access` VALUES ('18', '514', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '515', '3', '514', null);
INSERT INTO `web_access` VALUES ('22', '396', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '515', '3', '514', null);
INSERT INTO `web_access` VALUES ('18', '521', '3', '409', null);
INSERT INTO `web_access` VALUES ('22', '513', '3', '409', null);
INSERT INTO `web_access` VALUES ('22', '521', '3', '409', null);
INSERT INTO `web_access` VALUES ('22', '401', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '506', '3', '505', null);
INSERT INTO `web_access` VALUES ('22', '507', '3', '505', null);
INSERT INTO `web_access` VALUES ('22', '508', '3', '505', null);
INSERT INTO `web_access` VALUES ('22', '509', '3', '505', null);
INSERT INTO `web_access` VALUES ('22', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '523', '3', '522', null);
INSERT INTO `web_access` VALUES ('22', '524', '3', '522', null);
INSERT INTO `web_access` VALUES ('18', '415', '3', '414', null);
INSERT INTO `web_access` VALUES ('24', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('24', '513', '3', '409', null);
INSERT INTO `web_access` VALUES ('24', '491', '3', '409', null);
INSERT INTO `web_access` VALUES ('24', '467', '3', '409', null);
INSERT INTO `web_access` VALUES ('24', '466', '3', '409', null);
INSERT INTO `web_access` VALUES ('24', '413', '3', '409', null);
INSERT INTO `web_access` VALUES ('24', '410', '3', '409', null);
INSERT INTO `web_access` VALUES ('24', '409', '2', '1', null);
INSERT INTO `web_access` VALUES ('24', '165', '3', '164', null);
INSERT INTO `web_access` VALUES ('20', '414', '2', '1', null);
INSERT INTO `web_access` VALUES ('22', '480', '3', '479', null);
INSERT INTO `web_access` VALUES ('17', '414', '2', '1', null);
INSERT INTO `web_access` VALUES ('17', '166', '2', '1', null);
INSERT INTO `web_access` VALUES ('17', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('17', '165', '3', '164', null);
INSERT INTO `web_access` VALUES ('25', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('25', '414', '2', '1', null);
INSERT INTO `web_access` VALUES ('25', '409', '2', '1', null);
INSERT INTO `web_access` VALUES ('25', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('25', '165', '3', '164', null);
INSERT INTO `web_access` VALUES ('25', '410', '3', '409', null);
INSERT INTO `web_access` VALUES ('25', '454', '3', '414', null);
INSERT INTO `web_access` VALUES ('25', '452', '3', '414', null);
INSERT INTO `web_access` VALUES ('25', '423', '3', '414', null);
INSERT INTO `web_access` VALUES ('25', '419', '3', '414', null);
INSERT INTO `web_access` VALUES ('25', '415', '3', '414', null);
INSERT INTO `web_access` VALUES ('25', '455', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '528', '3', '426', null);
INSERT INTO `web_access` VALUES ('21', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('21', '528', '3', '426', null);
INSERT INTO `web_access` VALUES ('17', '528', '3', '426', null);
INSERT INTO `web_access` VALUES ('23', '530', '3', '473', null);
INSERT INTO `web_access` VALUES ('25', '426', '2', '1', null);
INSERT INTO `web_access` VALUES ('25', '500', '2', '1', null);
INSERT INTO `web_access` VALUES ('25', '427', '3', '426', null);
INSERT INTO `web_access` VALUES ('25', '428', '3', '426', null);
INSERT INTO `web_access` VALUES ('25', '429', '3', '426', null);
INSERT INTO `web_access` VALUES ('25', '430', '3', '426', null);
INSERT INTO `web_access` VALUES ('25', '501', '3', '500', null);
INSERT INTO `web_access` VALUES ('25', '502', '3', '500', null);
INSERT INTO `web_access` VALUES ('25', '503', '3', '500', null);
INSERT INTO `web_access` VALUES ('25', '504', '3', '500', null);
INSERT INTO `web_access` VALUES ('22', '531', '3', '479', null);
INSERT INTO `web_access` VALUES ('21', '480', '3', '479', null);
INSERT INTO `web_access` VALUES ('26', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('26', '495', '2', '1', null);
INSERT INTO `web_access` VALUES ('26', '533', '3', '495', null);
INSERT INTO `web_access` VALUES ('26', '532', '3', '495', null);
INSERT INTO `web_access` VALUES ('26', '534', '3', '495', null);
INSERT INTO `web_access` VALUES ('26', '535', '3', '495', null);
INSERT INTO `web_access` VALUES ('27', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('27', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('27', '166', '2', '1', null);
INSERT INTO `web_access` VALUES ('27', '409', '2', '1', null);
INSERT INTO `web_access` VALUES ('27', '414', '2', '1', null);
INSERT INTO `web_access` VALUES ('27', '165', '3', '164', null);
INSERT INTO `web_access` VALUES ('27', '395', '3', '166', null);
INSERT INTO `web_access` VALUES ('27', '410', '3', '409', null);
INSERT INTO `web_access` VALUES ('27', '413', '3', '409', null);
INSERT INTO `web_access` VALUES ('27', '419', '3', '414', null);
INSERT INTO `web_access` VALUES ('27', '423', '3', '414', null);
INSERT INTO `web_access` VALUES ('19', '473', '2', '1', null);
INSERT INTO `web_access` VALUES ('19', '474', '3', '473', null);
INSERT INTO `web_access` VALUES ('19', '475', '3', '473', null);
INSERT INTO `web_access` VALUES ('19', '476', '3', '473', null);
INSERT INTO `web_access` VALUES ('19', '478', '3', '473', null);
INSERT INTO `web_access` VALUES ('25', '447', '3', '409', null);

-- ----------------------------
-- Table structure for web_access_table
-- ----------------------------
DROP TABLE IF EXISTS `web_access_table`;
CREATE TABLE `web_access_table` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `manager_access` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_access_table
-- ----------------------------
INSERT INTO `web_access_table` VALUES ('1', 'web_dwFenbao', 'income,income_split,tariff,tariff,channel_cost,remark,deal_date,hainiu_income,channel_income', '1,413,415');

-- ----------------------------
-- Table structure for web_account_limit
-- ----------------------------
DROP TABLE IF EXISTS `web_account_limit`;
CREATE TABLE `web_account_limit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operator` varchar(25) NOT NULL,
  `addtime` datetime NOT NULL,
  `reason` text NOT NULL,
  `account` varchar(25) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '账号操作状态\r\n1.封号\r\n2.解号',
  `status` char(1) NOT NULL COMMENT '账号目前状态\r\n1.封号\r\n2.解号',
  `server_id` smallint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=619 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_account_limit
-- ----------------------------

-- ----------------------------
-- Table structure for web_act
-- ----------------------------
DROP TABLE IF EXISTS `web_act`;
CREATE TABLE `web_act` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gameid` tinyint(4) NOT NULL DEFAULT '8',
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `textureResPath` varchar(100) NOT NULL COMMENT '图片地址',
  `serverid` text NOT NULL,
  `showday` int(11) NOT NULL DEFAULT '0' COMMENT '开服几天显示',
  `noshowday` int(11) NOT NULL DEFAULT '0' COMMENT '开服几天不显示',
  `isShowActivity` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示宣传图活动(0正常1显示)',
  `isShowDetail` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否显示精灵详情(1不显示)',
  `eudemonId` varchar(50) DEFAULT NULL COMMENT '精灵模板id',
  `eudDetailPos` varchar(255) DEFAULT NULL COMMENT '精灵详情位置',
  `isShowGotoBtn` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否显示立即前往(1不显示0显示)',
  `gotoBtnPos` varchar(255) DEFAULT NULL COMMENT '前往按钮位置',
  `jumpModule` tinyint(4) NOT NULL DEFAULT '0' COMMENT '前往按钮跳转模块 (0：跳转日常任务， 1：打开网址)',
  `jumpParam` varchar(100) DEFAULT NULL COMMENT '前往按钮跳转参数(如：网址)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_act
-- ----------------------------
INSERT INTO `web_act` VALUES ('2', '8', '2018-01-12 00:00:00', '2018-01-14 23:59:59', 'http://up.u776.com/poke/200538.png', '3001,3009,3025,3048,3064,3083,3100,3108,3114,3115,3116,3117,3118,5001,5002,5031,5069,5101,5133,5161,5191,5216,5251,5271,5287,5301,5311,5322,5323,5324,5326,5327,5328,5329,5330,5331,5332,5333,5334,5335,5336,5337,5338,5339,5340,5341,5342,5343,5344,5345,5346,5347,5348,5439,5999,6001,6003,6021,6038,6052,6071,6089,6105,6113,6121,6127,6133,6139,6143,6148,6156,6157,6158,6159,6160,6161,6162,6163,6164,6165,6166,6167,6168,6169,6170,6171,6172,6173,6174,8001,8002,8020,8051,8071,8091,8111,8131,8143,8154,8165,8166,8167,8168,8169,8170,8171,8172,8173,8174,8175,8176,8177,8178,8179,8180,8181,8182,8183,8184,8185,8186,8187,8188,8189,8190,8191,8192,8193,8194,8195,8196,8197,8198,8199,8200,8201,8202,8203,8204,8205,8206,9997,11001,11019,11021,11022,11023,11024,11025,11026,11027,11028,11029,11030,11031,11032,11033,11034,11035,11036,11037,11038,11039,11040,12001,13001,13002,13003,13004,13005,14001,14009,15001,15002,16001,16002,16003,16004,18001,18002,18003,18004,18005,18006,18007,18008,19001', '0', '7', '0', '0', '101754', '-159;-171;0;', '0', '45;-174;0;', '0', '');
INSERT INTO `web_act` VALUES ('3', '8', '2018-01-10 00:00:00', '2018-01-11 23:59:59', 'http://up.u776.com/poke/200539.png', '3001,3009,3025,3048,3064,3083,3100,3108,3114,3115,3116,3117,3118,3119,3120,3121,3122,5001,5002,5031,5069,5101,5161,5216,5251,5287,5311,5322,5334,5335,5336,5337,5338,5339,5340,5341,5342,5343,5344,5345,5346,5347,5348,5439,5999,6001,6003,6021,6038,6052,6071,6089,6105,6113,6121,6127,6133,6139,6143,6148,6156,6157,6158,6159,6160,6161,6162,6163,6164,6165,6166,6167,6168,6169,6170,6171,6172,6173,6174,6175,6176,6177,6178,6179,6180,6181,6182,8001,8002,8020,8051,8071,8091,8111,8131,8154,8165,8171,8181,8182,8183,8184,8185,8186,8187,8188,8189,8190,8191,8192,8193,8194,8195,8196,8197,8198,8199,8200,8201,8202,8203,8204,8205,8206,9997,11001,11019,11021,11022,11023,11024,11025,11026,11027,11028,11029,11030,11031,11032,11033,11034,11035,11036,11037,11038,11039,11040,12001,13001,13002,13003,13004,13005,14001,14009,15001,15002,16001,16002,16003,16004,18001,18002,18003,18004,18005,18006,18007,18008,19001,19002,19003,19004,19005', '0', '7', '0', '0', '101433', '230;-173;0;', '0', '-101;-174;0;', '0', '');
INSERT INTO `web_act` VALUES ('4', '8', '2018-01-08 00:00:00', '2018-01-11 23:04:13', 'http://up.u776.com/poke/200540.png', '3001,3009,3025,3048,3064,3083,3100,3108,3114,3115,3116,3117,3118,3119,3120,3121,3122,5001,5002,5031,5069,5101,5161,5216,5251,5287,5311,5322,5334,5335,5336,5337,5338,5339,5340,5341,5342,5343,5344,5345,5346,5347,5348,5439,5999,6001,6003,6021,6038,6052,6071,6089,6105,6113,6121,6127,6133,6139,6143,6148,6156,6157,6158,6159,6160,6161,6162,6163,6164,6165,6166,6167,6168,6169,6170,6171,6172,6173,6174,6175,6176,6177,6178,6179,6180,6181,6182,8001,8002,8020,8051,8071,8091,8111,8131,8154,8165,8171,8181,8182,8183,8184,8185,8186,8187,8188,8189,8190,8191,8192,8193,8194,8195,8196,8197,8198,8199,8200,8201,8202,8203,8204,8205,8206,9997,11001,11019,11021,11022,11023,11024,11025,11026,11027,11028,11029,11030,11031,11032,11033,11034,11035,11036,11037,11038,11039,11040,12001,13001,13002,13003,13004,13005,14001,14009,15001,15002,16001,16002,16003,16004,18001,18002,18003,18004,18005,18006,18007,18008,19001,19002,19003,19004,19005', '0', '7', '0', '1', '0', '', '0', '2;-176;0;', '0', '');
INSERT INTO `web_act` VALUES ('5', '8', '2018-01-08 00:00:00', '2018-01-11 23:59:59', 'http://up.u776.com/poke/200541.png', '3001,3009,3025,3048,3064,3083,3100,3114,3115,3116,3117,3118,3119,3120,3121,3122,3123,3124,3125,3126,5001,5031,5069,5101,5161,5216,5251,5287,5311,5322,5334,5343,5344,5345,5346,5347,5348,5350,5351,5352,5353,5354,5355,5439,5999,6001,6003,6021,6038,6052,6071,6089,6105,6121,6127,6133,6139,6143,6148,6156,6166,6167,6168,6169,6170,6171,6172,6173,6174,6175,6176,6177,6178,6179,6180,6181,6182,6183,6184,6185,6186,6187,6188,6189,6190,8001,8002,8020,8051,8071,8091,8131,8154,8165,8171,8181,8186,8187,8188,8189,8190,8191,8192,8193,8194,8195,8196,8197,8198,8199,8200,8201,8202,8203,8204,8205,8206,8207,8208,8209,8210,8211,8212,8213,8214,9997,11021,11024,11027,11028,11029,11030,11031,11032,11033,11034,11035,11036,11037,11038,11039,11040,11041,11042,11043,11044,11045,11046,11047,11048,11049,11050,12001,13001,13002,13003,13004,13005,14001,14009,15001,15002,16001,16002,16003,16004,18001,18002,18003,18004,18005,18006,18007,18008,18009,18010,18011,18012,18013,18014,18015,18016,19001,19002,19003,19004,19005,19006', '0', '7', '0', '0', '101874', '-345;-186;0', '1', '', '0', '');
INSERT INTO `web_act` VALUES ('6', '8', '2018-01-19 00:00:00', '2018-01-21 23:59:59', 'http://up.u776.com/poke/200555.png', '3001,3009,3025,3048,3064,3083,3100,3114,3115,3116,3117,3118,3119,3120,3121,3122,3123,3124,3125,3126,5001,5031,5069,5101,5161,5216,5251,5287,5311,5334,5343,5351,5352,5353,5354,5355,5359,5999,6001,6003,6021,6038,6052,6071,6089,6105,6121,6127,6133,6139,6143,6148,6156,6166,6167,6168,6169,6170,6171,6172,6173,6174,6175,6176,6177,6178,6179,6180,6181,6182,6183,6184,6185,6186,6187,6188,6189,6190,8001,8002,8020,8051,8071,8091,8131,8154,8165,8171,8181,8186,8187,8188,8189,8190,8191,8192,8193,8194,8195,8196,8197,8198,8199,8200,8201,8202,8203,8204,8205,8206,8207,8208,8209,8210,8211,8212,8213,8214,9997,11001,11027,11030,11031,11032,11033,11034,11035,11036,11037,11038,11039,11040,11041,11042,11043,11044,11045,11046,11047,11048,11049,11050,12001,15001,15002,16001,16002,16003,16004,18001,18002,18003,18004,18005,18006,18007,18008,18009,18010,18011,18012,18013,18014,18015,18016,19001,19002,19003,19004,19005,19006', '0', '7', '0', '0', '101683', '-304;-201;0;', '0', '-34;-204;0;', '0', '');
INSERT INTO `web_act` VALUES ('9', '8', '2018-01-24 00:00:00', '2018-01-25 23:59:59', 'http://up.u776.com/poke/200559.png', '3001,3009,3025,3048,3064,3083,3100,3114,3115,3116,3117,3118,3119,3120,3121,3122,3123,3124,3125,3126,5001,5031,5069,5101,5161,5216,5251,5287,5311,5334,5343,5351,5352,5353,5354,5355,5359,5999,6001,6003,6021,6038,6052,6071,6089,6105,6121,6133,6143,6148,6156,6166,6167,6168,6169,6170,6171,6172,6173,6174,6175,6176,6177,6178,6179,6180,6181,6182,6183,6184,6185,6186,6187,6188,6189,6190,8001,8002,8020,8051,8071,8091,8131,8154,8171,8181,8186,8191,8192,8193,8194,8195,8196,8197,8198,8199,8200,8201,8202,8203,8204,8205,8206,8207,8208,8209,8210,8211,8212,8213,8214,9997,11001,11027,11030,11031,11032,11033,11034,11035,11036,11037,11038,11039,11040,11041,11042,11043,11044,11045,11046,11047,11048,11049,11050,12001,15001,15002,16001,16002,16003,16004,18001,18002,18003,18004,18005,18006,18007,18008,18009,18010,18011,18012,18013,18014,18015,18016,19001,19002,19003,19004,19005,19006', '0', '7', '0', '1', '0', '0;0;0;', '0', '70;-201;0;', '0', '');
INSERT INTO `web_act` VALUES ('7', '8', '2018-01-15 00:00:00', '2018-01-16 23:59:59', 'http://up.u776.com/poke/200556.png', '3001,3009,3025,3048,3064,3083,3100,3114,3115,3116,3117,3118,3119,3120,3121,3122,3123,3124,3125,3126,5001,5031,5069,5101,5161,5216,5251,5287,5311,5322,5334,5343,5344,5345,5346,5347,5348,5350,5351,5352,5353,5354,5355,5359,5999,6001,6003,6021,6038,6052,6071,6089,6105,6121,6127,6133,6139,6143,6148,6156,6166,6167,6168,6169,6170,6171,6172,6173,6174,6175,6176,6177,6178,6179,6180,6181,6182,6183,6184,6185,6186,6187,6188,6189,6190,8001,8002,8020,8051,8071,8091,8131,8154,8165,8171,8181,8186,8187,8188,8189,8190,8191,8192,8193,8194,8195,8196,8197,8198,8199,8200,8201,8202,8203,8204,8205,8206,8207,8208,8209,8210,8211,8212,8213,8214,9997,11001,11024,11027,11028,11029,11030,11031,11032,11033,11034,11035,11036,11037,11038,11039,11040,11041,11042,11043,11044,11045,11046,11047,11048,11049,11050,12001,15001,15002,16001,16002,16003,16004,18001,18002,18003,18004,18005,18006,18007,18008,18009,18010,18011,18012,18013,18014,18015,18016,19001,19002,19003,19004,19005,19006', '0', '7', '0', '0', '101706', '-259;-212;0;', '0', '67;-195;0;', '0', '');
INSERT INTO `web_act` VALUES ('8', '8', '2018-01-17 00:00:00', '2018-01-18 23:59:59', 'http://up.u776.com/poke/200557.png', '3001,3009,3025,3048,3064,3083,3100,3114,3115,3116,3117,3118,3119,3120,3121,3122,3123,3124,3125,3126,5001,5031,5069,5101,5161,5216,5251,5287,5311,5322,5334,5343,5344,5345,5346,5347,5348,5350,5351,5352,5353,5354,5355,5359,5999,6001,6003,6021,6038,6052,6071,6089,6105,6121,6127,6133,6139,6143,6148,6156,6166,6167,6168,6169,6170,6171,6172,6173,6174,6175,6176,6177,6178,6179,6180,6181,6182,6183,6184,6185,6186,6187,6188,6189,6190,8001,8002,8020,8051,8071,8091,8131,8154,8165,8171,8181,8186,8187,8188,8189,8190,8191,8192,8193,8194,8195,8196,8197,8198,8199,8200,8201,8202,8203,8204,8205,8206,8207,8208,8209,8210,8211,8212,8213,8214,9997,11001,11024,11027,11028,11029,11030,11031,11032,11033,11034,11035,11036,11037,11038,11039,11040,11041,11042,11043,11044,11045,11046,11047,11048,11049,11050,12001,15001,15002,16001,16002,16003,16004,18001,18002,18003,18004,18005,18006,18007,18008,18009,18010,18011,18012,18013,18014,18015,18016,19001,19002,19003,19004,19005,19006', '0', '7', '0', '0', '101306', '-253;-204;0;', '0', '160;-197;0;', '0', '');
INSERT INTO `web_act` VALUES ('10', '8', '2018-01-24 00:00:00', '2018-01-24 23:59:59', 'http://up.u776.com/poke/200560.png', '3001,3009,3025,3048,3064,3083,3100,3114,3115,3116,3117,3118,3119,3120,3121,3122,3123,3124,3125,3126,5001,5031,5069,5101,5161,5216,5251,5287,5311,5334,5343,5351,5352,5353,5354,5355,5359,5999,6001,6003,6021,6038,6052,6071,6089,6105,6121,6127,6133,6139,6143,6148,6156,6166,6167,6168,6169,6170,6171,6172,6173,6174,6175,6176,6177,6178,6179,6180,6181,6182,6183,6184,6185,6186,6187,6188,6189,6190,8001,8002,8020,8051,8071,8091,8131,8154,8165,8171,8181,8186,8187,8188,8189,8190,8191,8192,8193,8194,8195,8196,8197,8198,8199,8200,8201,8202,8203,8204,8205,8206,8207,8208,8209,8210,8211,8212,8213,8214,9997,11001,11027,11030,11031,11032,11033,11034,11035,11036,11037,11038,11039,11040,11041,11042,11043,11044,11045,11046,11047,11048,11049,11050,12001,15001,15002,16001,16002,16003,16004,18001,18002,18003,18004,18005,18006,18007,18008,18009,18010,18011,18012,18013,18014,18015,18016,19001,19002,19003,19004,19005,19006', '0', '7', '0', '1', '0', '', '0', '171;-173;0;', '0', '');
INSERT INTO `web_act` VALUES ('11', '8', '2018-01-22 00:00:00', '2018-01-28 23:59:59', 'http://up.u776.com/poke/200561.png', '3001,3009,3025,3048,3064,3083,3100,3114,3115,3116,3117,3118,3119,3120,3121,3122,3123,3124,3125,3126,5001,5031,5069,5101,5161,5216,5251,5287,5311,5334,5343,5351,5352,5353,5354,5355,5359,5999,6001,6003,6021,6038,6052,6071,6089,6105,6121,6127,6133,6139,6143,6148,6156,6166,6167,6168,6169,6170,6171,6172,6173,6174,6175,6176,6177,6178,6179,6180,6181,6182,6183,6184,6185,6186,6187,6188,6189,6190,8001,8002,8020,8051,8071,8091,8131,8154,8165,8171,8181,8186,8187,8188,8189,8190,8191,8192,8193,8194,8195,8196,8197,8198,8199,8200,8201,8202,8203,8204,8205,8206,8207,8208,8209,8210,8211,8212,8213,8214,9997,11001,11027,11030,11031,11032,11033,11034,11035,11036,11037,11038,11039,11040,11041,11042,11043,11044,11045,11046,11047,11048,11049,11050,12001,15001,15002,16001,16002,16003,16004,18001,18002,18003,18004,18005,18006,18007,18008,18009,18010,18011,18012,18013,18014,18015,18016,19001,19002,19003,19004,19005,19006', '0', '7', '0', '0', '100595', '-316;-181;0;', '0', '100;-182;0;', '0', '');
INSERT INTO `web_act` VALUES ('12', '8', '2018-01-22 00:00:00', '2018-01-23 23:59:59', 'http://up.u776.com/poke/200562.png', '3001,3009,3025,3048,3064,3083,3100,3114,3115,3116,3117,3118,3119,3120,3121,3122,3123,3124,3125,3126,5001,5031,5069,5101,5161,5216,5251,5287,5311,5334,5343,5351,5352,5353,5354,5355,5359,5999,6001,6003,6021,6038,6052,6071,6089,6105,6121,6127,6133,6139,6143,6148,6156,6166,6167,6168,6169,6170,6171,6172,6173,6174,6175,6176,6177,6178,6179,6180,6181,6182,6183,6184,6185,6186,6187,6188,6189,6190,8001,8002,8020,8051,8071,8091,8131,8154,8165,8171,8181,8186,8187,8188,8189,8190,8191,8192,8193,8194,8195,8196,8197,8198,8199,8200,8201,8202,8203,8204,8205,8206,8207,8208,8209,8210,8211,8212,8213,8214,9997,11001,11027,11030,11031,11032,11033,11034,11035,11036,11037,11038,11039,11040,11041,11042,11043,11044,11045,11046,11047,11048,11049,11050,12001,15001,15002,16001,16002,16003,16004,18001,18002,18003,18004,18005,18006,18007,18008,18009,18010,18011,18012,18013,18014,18015,18016,19001,19002,19003,19004,19005,19006', '0', '7', '0', '0', '101356', '233;-176;0;', '0', '-11;-175;0;', '0', '');
INSERT INTO `web_act` VALUES ('13', '8', '2018-01-26 00:00:00', '2018-01-28 23:59:59', 'http://up.u776.com/poke/200563.png', '3001,3009,3025,3048,3064,3083,3100,3114,3115,3116,3117,3118,3119,3120,3121,3122,3123,3124,3125,3126,3127,3128,3129,3130,3131,3132,5001,5031,5069,5101,5161,5216,5251,5287,5311,5334,5343,5351,5352,5353,5354,5355,5356,5357,5358,5359,5360,5361,5362,5363,5364,5999,6001,6003,6021,6038,6052,6071,6089,6105,6121,6133,6143,6148,6156,6166,6167,6168,6169,6170,6171,6172,6173,6174,6175,6176,6177,6178,6179,6180,6181,6182,6183,6184,6185,6186,6187,6188,6189,6190,6191,6192,6193,6194,6195,6196,6197,6198,6199,6200,8001,8002,8020,8051,8071,8091,8131,8154,8171,8181,8186,8191,8192,8193,8194,8195,8196,8197,8198,8199,8200,8201,8202,8203,8204,8205,8206,8207,8208,8209,8210,8211,8212,8213,8214,8215,8216,8217,8218,8219,8220,8221,8222,8223,8224,9997,11001,11027,11030,11031,11032,11033,11034,11035,11036,11037,11038,11039,11040,11041,11042,11043,11044,11045,11046,11047,11048,11049,11050,12001,15001,15002,16001,16002,16003,16004,18001,18002,18003,18004,18005,18006,18007,18008,18009,18010,18011,18012,18013,18014,18015,18016,18017,18018,18019,18020,18021,18022,18023,18024,18025,18026,18027,19001,19002,19003,19004,19005,19006,19007,19008,19009,19010,19011,19012', '0', '7', '0', '0', '101285', '-241;-199;0;', '0', '94;-200;0;', '0', '');
INSERT INTO `web_act` VALUES ('14', '8', '2018-01-29 00:00:00', '2018-02-04 23:59:59', 'http://up.u776.com/poke/200572.png', '3001,3009,3025,3048,3064,3083,3100,3114,3115,3116,3117,3118,3119,3120,3121,3122,3123,3124,3125,3126,3127,3128,3129,3130,3131,3132,5001,5031,5069,5101,5161,5216,5251,5287,5311,5334,5343,5351,5352,5353,5354,5355,5356,5357,5358,5359,5360,5361,5362,5363,5364,5999,6001,6003,6021,6038,6052,6071,6089,6105,6121,6133,6143,6148,6156,6166,6167,6168,6169,6170,6171,6172,6173,6174,6175,6176,6177,6178,6179,6180,6181,6182,6183,6184,6185,6186,6187,6188,6189,6190,6191,6192,6193,6194,6195,6196,6197,6198,6199,6200,8001,8002,8020,8051,8071,8091,8131,8154,8171,8181,8186,8191,8192,8193,8194,8195,8196,8197,8198,8199,8200,8201,8202,8203,8204,8205,8206,8207,8208,8209,8210,8211,8212,8213,8214,8215,8216,8217,8218,8219,8220,8221,8222,8223,8224,9001,11001,11027,11030,11031,11032,11033,11034,11035,11036,11037,11038,11039,11040,11041,11042,11043,11044,11045,11046,11047,11048,11049,11050,12001,15001,15002,16001,16002,16003,16004,18001,18002,18003,18004,18005,18006,18007,18008,18009,18010,18011,18012,18013,18014,18015,18016,18017,18018,18019,18020,18021,18022,18023,18024,18025,18026,18027,19001,19002,19003,19004,19005,19006,19007,19008,19009,19010,19011,19012', '0', '7', '0', '1', '', '0;0;0;', '0', '105;-210;0;', '0', '');
INSERT INTO `web_act` VALUES ('15', '8', '2018-02-02 00:00:00', '2018-03-04 23:59:59', 'http://up.u776.com/poke/200571.png', '3001,3009,3025,3048,3064,3083,3100,3114,3115,3116,3117,3118,3119,3120,3121,3122,3123,3124,3125,3126,3127,3128,3129,3130,3131,3132,5001,5031,5069,5101,5161,5216,5251,5287,5311,5334,5343,5351,5352,5353,5354,5355,5356,5357,5358,5359,5360,5361,5362,5363,5364,5999,6001,6003,6021,6038,6052,6071,6089,6105,6121,6133,6143,6148,6156,6166,6167,6168,6169,6170,6171,6172,6173,6174,6175,6176,6177,6178,6179,6180,6181,6182,6183,6184,6185,6186,6187,6188,6189,6190,6191,6192,6193,6194,6195,6196,6197,6198,6199,6200,8001,8002,8020,8051,8071,8091,8131,8154,8171,8181,8186,8191,8192,8193,8194,8195,8196,8197,8198,8199,8200,8201,8202,8203,8204,8205,8206,8207,8208,8209,8210,8211,8212,8213,8214,8215,8216,8217,8218,8219,8220,8221,8222,8223,8224,9001,11001,11027,11030,11031,11032,11033,11034,11035,11036,11037,11038,11039,11040,11041,11042,11043,11044,11045,11046,11047,11048,11049,11050,12001,15001,15002,16001,16002,16003,16004,18001,18002,18003,18004,18005,18006,18007,18008,18009,18010,18011,18012,18013,18014,18015,18016,18017,18018,18019,18020,18021,18022,18023,18024,18025,18026,18027,19001,19002,19003,19004,19005,19006,19007,19008,19009,19010,19011,19012', '0', '7', '0', '0', '130524', '-314;-178;0;', '0', '103;-166;0;', '0', '');
INSERT INTO `web_act` VALUES ('16', '8', '2018-01-29 00:00:00', '2018-02-01 23:59:59', 'http://up.u776.com/poke/200573.png', '3001,3009,3025,3048,3064,3083,3100,3114,3115,3116,3117,3118,3119,3120,3121,3122,3123,3124,3125,3126,3127,3128,3129,3130,3131,3132,5001,5031,5069,5101,5161,5216,5251,5287,5311,5334,5343,5351,5352,5353,5354,5355,5356,5357,5358,5359,5360,5361,5362,5363,5364,5999,6001,6003,6021,6038,6052,6071,6089,6105,6121,6133,6143,6148,6156,6166,6167,6168,6169,6170,6171,6172,6173,6174,6175,6176,6177,6178,6179,6180,6181,6182,6183,6184,6185,6186,6187,6188,6189,6190,6191,6192,6193,6194,6195,6196,6197,6198,6199,6200,8001,8002,8020,8051,8071,8091,8131,8154,8171,8181,8186,8191,8192,8193,8194,8195,8196,8197,8198,8199,8200,8201,8202,8203,8204,8205,8206,8207,8208,8209,8210,8211,8212,8213,8214,8215,8216,8217,8218,8219,8220,8221,8222,8223,8224,9001,11001,11027,11030,11031,11032,11033,11034,11035,11036,11037,11038,11039,11040,11041,11042,11043,11044,11045,11046,11047,11048,11049,11050,12001,15001,15002,16001,16002,16003,16004,18001,18002,18003,18004,18005,18006,18007,18008,18009,18010,18011,18012,18013,18014,18015,18016,18017,18018,18019,18020,18021,18022,18023,18024,18025,18026,18027,19001,19002,19003,19004,19005,19006,19007,19008,19009,19010,19011,19012', '0', '7', '0', '0', '101854', '330;-210;0;', '0', '-1;-195;0;', '0', '');

-- ----------------------------
-- Table structure for web_add_good
-- ----------------------------
DROP TABLE IF EXISTS `web_add_good`;
CREATE TABLE `web_add_good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `itemtype_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `amount_limit` int(11) NOT NULL DEFAULT '0',
  `sql_string_1` varchar(500) CHARACTER SET gbk NOT NULL DEFAULT '',
  `sql_string_2` varchar(500) CHARACTER SET gbk NOT NULL DEFAULT '',
  `sql_string_3` varchar(500) CHARACTER SET gbk NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `game_id` (`game_id`,`itemtype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1463 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_add_good
-- ----------------------------

-- ----------------------------
-- Table structure for web_category
-- ----------------------------
DROP TABLE IF EXISTS `web_category`;
CREATE TABLE `web_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `en_name` varchar(30) NOT NULL,
  `seo_title` varchar(50) NOT NULL,
  `seo_keyword` varchar(100) NOT NULL,
  `seo_desc` varchar(150) NOT NULL,
  `sort` smallint(2) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `is_index` char(1) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_category
-- ----------------------------

-- ----------------------------
-- Table structure for web_channel
-- ----------------------------
DROP TABLE IF EXISTS `web_channel`;
CREATE TABLE `web_channel` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `cid` smallint(4) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_channel
-- ----------------------------
INSERT INTO `web_channel` VALUES ('1', '48', 'lenovo充值', '1');
INSERT INTO `web_channel` VALUES ('2', '9', '手工充值', '1');
INSERT INTO `web_channel` VALUES ('3', '22', 'pp助手充值', '1');
INSERT INTO `web_channel` VALUES ('4', '12', '91充值', '0');
INSERT INTO `web_channel` VALUES ('5', '21', '当乐充值', '1');
INSERT INTO `web_channel` VALUES ('6', '15', 'uc充值', '1');
INSERT INTO `web_channel` VALUES ('7', '16', '5gwan充值', '0');
INSERT INTO `web_channel` VALUES ('8', '34', '华为充值', '0');
INSERT INTO `web_channel` VALUES ('9', '43', '360充值', '1');
INSERT INTO `web_channel` VALUES ('10', '25', '小米充值', '1');
INSERT INTO `web_channel` VALUES ('11', '27', '机锋网充值', '1');
INSERT INTO `web_channel` VALUES ('12', '28', '安智充值', '0');
INSERT INTO `web_channel` VALUES ('13', '35', 'oppo充值', '1');
INSERT INTO `web_channel` VALUES ('14', '24', '移动MM充值', '0');
INSERT INTO `web_channel` VALUES ('15', '61', '17173充值', '0');
INSERT INTO `web_channel` VALUES ('16', '62', '37wan充值', '0');
INSERT INTO `web_channel` VALUES ('17', '63', '8849充值', '0');
INSERT INTO `web_channel` VALUES ('18', '64', 'pptv充值', '0');
INSERT INTO `web_channel` VALUES ('19', '33', '点金充值', '0');
INSERT INTO `web_channel` VALUES ('20', '65', '万普充值', '0');
INSERT INTO `web_channel` VALUES ('21', '66', '禅游充值', '0');
INSERT INTO `web_channel` VALUES ('22', '67', '百度充值', '0');
INSERT INTO `web_channel` VALUES ('23', '50', '有信充值', '0');
INSERT INTO `web_channel` VALUES ('24', '30', '应用汇充值', '0');
INSERT INTO `web_channel` VALUES ('25', '68', 'itools充值', '1');
INSERT INTO `web_channel` VALUES ('26', '70', 'vivo充值', '0');
INSERT INTO `web_channel` VALUES ('27', '71', '3g门户充值', '0');
INSERT INTO `web_channel` VALUES ('28', '72', '博雅科诺充值', '0');
INSERT INTO `web_channel` VALUES ('29', '73', '悠悠村充值', '0');
INSERT INTO `web_channel` VALUES ('30', '74', '酷动充值', '0');
INSERT INTO `web_channel` VALUES ('31', '49', '丫丫网充值', '0');
INSERT INTO `web_channel` VALUES ('32', '75', '虫虫', '1');
INSERT INTO `web_channel` VALUES ('33', '76', '37wanIOS充值', '0');
INSERT INTO `web_channel` VALUES ('34', '77', '搜狗充值', '0');
INSERT INTO `web_channel` VALUES ('35', '78', '迅雷充值', '0');
INSERT INTO `web_channel` VALUES ('36', '79', '快玩充值', '0');
INSERT INTO `web_channel` VALUES ('37', '80', '快用充值', '1');
INSERT INTO `web_channel` VALUES ('38', '81', '新丫丫网充值', '0');
INSERT INTO `web_channel` VALUES ('39', '82', '云游充值', '0');
INSERT INTO `web_channel` VALUES ('40', '19', 'apple充值', '1');
INSERT INTO `web_channel` VALUES ('41', '83', 'apple充值-加强版', '0');
INSERT INTO `web_channel` VALUES ('42', '84', '木蚂蚁充值', '0');
INSERT INTO `web_channel` VALUES ('43', '85', '阿波罗充值', '0');
INSERT INTO `web_channel` VALUES ('44', '86', '浩动IOS充值', '0');
INSERT INTO `web_channel` VALUES ('45', '87', '浩动android充值', '0');
INSERT INTO `web_channel` VALUES ('46', '89', '有信2充值', '0');
INSERT INTO `web_channel` VALUES ('47', '90', '手盟充值', '0');
INSERT INTO `web_channel` VALUES ('48', '46', 'pps充值', '0');
INSERT INTO `web_channel` VALUES ('49', '91', '爱思充值', '1');
INSERT INTO `web_channel` VALUES ('50', '92', '游龙充值', '0');
INSERT INTO `web_channel` VALUES ('51', '93', '起点充值', '0');
INSERT INTO `web_channel` VALUES ('52', '94', '蜗牛充值', '0');
INSERT INTO `web_channel` VALUES ('53', '95', '人人充值', '0');
INSERT INTO `web_channel` VALUES ('54', '96', '平安充值', '0');
INSERT INTO `web_channel` VALUES ('55', '97', 'XY苹果助手', '1');
INSERT INTO `web_channel` VALUES ('56', '98', '海马充值', '1');
INSERT INTO `web_channel` VALUES ('57', '99', '冒泡充值', '0');
INSERT INTO `web_channel` VALUES ('58', '100', 'wo商城', '0');
INSERT INTO `web_channel` VALUES ('59', '101', '绿岸充值', '0');
INSERT INTO `web_channel` VALUES ('60', '102', 'momo充值', '0');
INSERT INTO `web_channel` VALUES ('61', '103', '豌豆荚', '1');
INSERT INTO `web_channel` VALUES ('62', '104', 'YY充值', '0');
INSERT INTO `web_channel` VALUES ('63', '105', '海马android充值', '0');
INSERT INTO `web_channel` VALUES ('64', '106', '金立充值', '0');
INSERT INTO `web_channel` VALUES ('65', '107', '游酷充值', '0');
INSERT INTO `web_channel` VALUES ('66', '108', '同步充值', '1');
INSERT INTO `web_channel` VALUES ('67', '109', '柴米充值', '0');
INSERT INTO `web_channel` VALUES ('68', '110', '37wan-ios2', '0');
INSERT INTO `web_channel` VALUES ('69', '111', '百度91充值', '1');
INSERT INTO `web_channel` VALUES ('70', '112', '靠谱充值', '1');
INSERT INTO `web_channel` VALUES ('71', '113', '海港', '1');
INSERT INTO `web_channel` VALUES ('72', '114', 'ysdk(应用宝)', '1');
INSERT INTO `web_channel` VALUES ('73', '115', '果盘', '1');
INSERT INTO `web_channel` VALUES ('74', '116', '阿斯卡德', '1');
INSERT INTO `web_channel` VALUES ('75', '117', '兔兔', '1');
INSERT INTO `web_channel` VALUES ('76', '118', 'xiao7', '1');
INSERT INTO `web_channel` VALUES ('77', '119', '4399', '1');
INSERT INTO `web_channel` VALUES ('78', '120', '爱普', '1');
INSERT INTO `web_channel` VALUES ('79', '121', 'TT语音', '1');
INSERT INTO `web_channel` VALUES ('80', '122', '07073', '1');
INSERT INTO `web_channel` VALUES ('81', '123', '拇指玩', '1');
INSERT INTO `web_channel` VALUES ('82', '124', '乐游', '1');
INSERT INTO `web_channel` VALUES ('83', '125', '同游游', '1');
INSERT INTO `web_channel` VALUES ('84', '126', '汉风', '1');
INSERT INTO `web_channel` VALUES ('85', '127', '乐8', '1');
INSERT INTO `web_channel` VALUES ('86', '128', '支付宝-app', '1');
INSERT INTO `web_channel` VALUES ('87', '129', '微信支付-app', '1');
INSERT INTO `web_channel` VALUES ('88', '130', '夜神', '1');
INSERT INTO `web_channel` VALUES ('89', '131', '熊猫玩', '1');
INSERT INTO `web_channel` VALUES ('90', '132', '猎宝', '1');
INSERT INTO `web_channel` VALUES ('91', '133', '爱应用', '1');
INSERT INTO `web_channel` VALUES ('92', '134', 'play800-ios', '1');
INSERT INTO `web_channel` VALUES ('93', '135', '奥创', '1');
INSERT INTO `web_channel` VALUES ('94', '136', '点游', '1');
INSERT INTO `web_channel` VALUES ('95', '137', '港台', '1');
INSERT INTO `web_channel` VALUES ('96', '138', '快发', '1');
INSERT INTO `web_channel` VALUES ('97', '139', '魔方', '1');
INSERT INTO `web_channel` VALUES ('98', '140', '顺玩', '1');
INSERT INTO `web_channel` VALUES ('99', '141', '爱洛克', '0');
INSERT INTO `web_channel` VALUES ('100', '142', '牛牛', '1');
INSERT INTO `web_channel` VALUES ('101', '143', '星趣', '1');
INSERT INTO `web_channel` VALUES ('102', '144', 'google', '0');
INSERT INTO `web_channel` VALUES ('103', '145', '爱乐', '1');
INSERT INTO `web_channel` VALUES ('104', '146', '爱贝云', '1');
INSERT INTO `web_channel` VALUES ('105', '147', '1pay', '1');
INSERT INTO `web_channel` VALUES ('106', '148', '16yo', '1');
INSERT INTO `web_channel` VALUES ('107', '149', '龙虾', '1');
INSERT INTO `web_channel` VALUES ('108', '150', '盛天', '1');
INSERT INTO `web_channel` VALUES ('109', '151', '星宇', '1');
INSERT INTO `web_channel` VALUES ('110', '152', '逗游', '1');
INSERT INTO `web_channel` VALUES ('112', '153', 'play800-线下', '1');
INSERT INTO `web_channel` VALUES ('113', '154', '黑桃', '1');
INSERT INTO `web_channel` VALUES ('114', '155', '铠甲', '1');
INSERT INTO `web_channel` VALUES ('116', '156', '游戏fan', '1');
INSERT INTO `web_channel` VALUES ('117', '157', '火树-ios', '1');
INSERT INTO `web_channel` VALUES ('118', '158', '三星数码（爱贝）', '1');
INSERT INTO `web_channel` VALUES ('119', '159', '创游', '1');
INSERT INTO `web_channel` VALUES ('120', '160', '深海', '1');
INSERT INTO `web_channel` VALUES ('121', '161', '乐视', '1');
INSERT INTO `web_channel` VALUES ('122', '162', 'QQ5(魅游)', '1');
INSERT INTO `web_channel` VALUES ('123', '163', '支付宝wap', '1');
INSERT INTO `web_channel` VALUES ('124', '164', '虎牙', '1');
INSERT INTO `web_channel` VALUES ('126', '165', '三星ios', '1');
INSERT INTO `web_channel` VALUES ('127', '166', '朋友玩ios', '1');
INSERT INTO `web_channel` VALUES ('128', '167', '铠甲ios', '1');
INSERT INTO `web_channel` VALUES ('129', '168', '火树-安卓', '1');
INSERT INTO `web_channel` VALUES ('130', '169', 'cspay（云天空）', '1');
INSERT INTO `web_channel` VALUES ('131', '170', 'smartisan(锤子)', '1');
INSERT INTO `web_channel` VALUES ('132', '171', 'haima（海马玩ios）', '1');
INSERT INTO `web_channel` VALUES ('133', '172', 'huawei（华为安卓充值）', '1');
INSERT INTO `web_channel` VALUES ('134', '173', 'baidu（百度安卓）', '0');
INSERT INTO `web_channel` VALUES ('135', '174', 'baidu(百度)', '1');
INSERT INTO `web_channel` VALUES ('136', '175', 'vivo', '1');
INSERT INTO `web_channel` VALUES ('137', '176', '49游（劲玩）', '1');
INSERT INTO `web_channel` VALUES ('138', '177', 'PC充值', '1');
INSERT INTO `web_channel` VALUES ('139', '178', '魅族', '1');
INSERT INTO `web_channel` VALUES ('140', '179', 'Paypal', '0');
INSERT INTO `web_channel` VALUES ('141', '180', 'webmoney', '0');
INSERT INTO `web_channel` VALUES ('142', '181', 'qiwi', '0');
INSERT INTO `web_channel` VALUES ('143', '182', 'yamoney', '0');
INSERT INTO `web_channel` VALUES ('144', '183', 'yamoneyac', '0');
INSERT INTO `web_channel` VALUES ('145', '184', 'yamoneygp', '0');
INSERT INTO `web_channel` VALUES ('146', '185', '易接（柠檬助手）', '1');

-- ----------------------------
-- Table structure for web_code_exchange
-- ----------------------------
DROP TABLE IF EXISTS `web_code_exchange`;
CREATE TABLE `web_code_exchange` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code_id` varchar(63) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `param` int(11) unsigned NOT NULL DEFAULT '0',
  `account_id` int(4) unsigned NOT NULL DEFAULT '0',
  `time_stamp` int(4) unsigned NOT NULL DEFAULT '0',
  `used` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `used_time_stamp` int(4) unsigned NOT NULL DEFAULT '0',
  `time_limit` int(11) DEFAULT '0',
  `game_type` int(11) DEFAULT '0',
  `register_type` int(11) DEFAULT '0',
  `register_time` int(11) DEFAULT '0',
  `used_type` int(11) DEFAULT '0',
  `is_limit_one` tinyint(1) DEFAULT '0',
  `number` smallint(4) unsigned DEFAULT '1' COMMENT '兑换次数',
  `number_used` smallint(4) unsigned DEFAULT '0',
  `dwFenBaoID` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_id` (`code_id`),
  KEY `account_id` (`account_id`),
  KEY `user_type` (`used_type`)
) ENGINE=MyISAM AUTO_INCREMENT=8733048 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_code_exchange
-- ----------------------------

-- ----------------------------
-- Table structure for web_code_exchange_log
-- ----------------------------
DROP TABLE IF EXISTS `web_code_exchange_log`;
CREATE TABLE `web_code_exchange_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code_id` varchar(50) NOT NULL,
  `user_time` int(4) NOT NULL,
  `account_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accountAndCode` (`account_id`,`code_id`)
) ENGINE=MyISAM AUTO_INCREMENT=140495 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_code_exchange_log
-- ----------------------------

-- ----------------------------
-- Table structure for web_compensate_log
-- ----------------------------
DROP TABLE IF EXISTS `web_compensate_log`;
CREATE TABLE `web_compensate_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `server_id` text NOT NULL,
  `index_id` smallint(4) NOT NULL DEFAULT '0',
  `begin_time` int(4) unsigned NOT NULL DEFAULT '0',
  `end_time` int(4) unsigned NOT NULL DEFAULT '0',
  `role_begin_time` int(4) unsigned NOT NULL DEFAULT '0',
  `role_end_time` int(4) unsigned NOT NULL DEFAULT '0',
  `level_min` int(4) unsigned NOT NULL DEFAULT '0',
  `level_max` int(4) unsigned NOT NULL DEFAULT '0',
  `message` varchar(200) NOT NULL,
  `addtime` int(4) unsigned NOT NULL DEFAULT '0',
  `operator` varchar(30) NOT NULL,
  `verify_level` smallint(4) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `type1` smallint(4) unsigned NOT NULL,
  `param1` int(11) unsigned DEFAULT '0',
  `amount1` int(11) DEFAULT '0',
  `type2` smallint(4) unsigned DEFAULT NULL,
  `param2` int(11) unsigned DEFAULT '0',
  `amount2` int(11) DEFAULT '0',
  `type3` smallint(4) unsigned DEFAULT NULL,
  `param3` int(11) unsigned DEFAULT '0',
  `amount3` int(11) unsigned DEFAULT '0',
  `type4` smallint(4) unsigned DEFAULT NULL,
  `param4` int(11) unsigned DEFAULT '0',
  `amount4` int(11) unsigned DEFAULT '0',
  `remark` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_compensate_log
-- ----------------------------

-- ----------------------------
-- Table structure for web_config
-- ----------------------------
DROP TABLE IF EXISTS `web_config`;
CREATE TABLE `web_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `TWD` decimal(6,4) DEFAULT NULL,
  `USD` decimal(6,4) DEFAULT NULL,
  `VND` decimal(6,4) DEFAULT NULL,
  `openbt` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_config
-- ----------------------------

-- ----------------------------
-- Table structure for web_dwfenbao
-- ----------------------------
DROP TABLE IF EXISTS `web_dwfenbao`;
CREATE TABLE `web_dwfenbao` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `fenbao_id` int(4) unsigned NOT NULL DEFAULT '0',
  `income` varchar(100) DEFAULT '0',
  `income_split` varchar(100) DEFAULT NULL,
  `tariff` tinyint(1) DEFAULT '0',
  `channel_cost` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `deal_date` varchar(100) DEFAULT NULL,
  `isnewgame` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenbao` (`fenbao_id`)
) ENGINE=MyISAM AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_dwfenbao
-- ----------------------------
INSERT INTO `web_dwfenbao` VALUES ('1', '果盘-ios', '801001', '300#300~800#800', '50:50#45:55#40:60', '0', '5', '=[游戏收入总额×（1-支付渠道成本比率 5 %）]×甲方分成比例×(1-税率)\r\n=[游戏收入总额×95 %）]×分成比例', '2016-11-1至2017-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('2', 'XY', '802001', '', '50:50', '0', '5', '=[游戏收入总额×95 %）]×50%\r\n', '2016-11-1至2017-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('3', '同步推', '804001', '', '50:50', '0', '5', '=[游戏收入总额×95 %）]×50%\r\n', '2016-11-1至2018-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('4', '快用', '805001', '', '50:50', '0', '10', '=总收入*（1-税费率-充值通道费）*分成比例\r\n备注:通道费=10%\r\n', '2016-11-1至2018-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('5', '小七-ios', '806001', '', '50:50', '0', '5', '=[游戏收入总额×95 %）]×50%\r\n', '2016-11-1至2017-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('6', '兔兔', '807001', '', '50:50', '0', '0', '=[游戏收入总额×95 %）]×50%\r\n', '2016-11-1至2018-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('7', 'TT语音-ios', '808001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('8', 'le8', '809001', '', '50:50', '0', '5', '=[游戏收入总额×95 %）]×50%\r\n', '2016-11-1至2017-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('9', 'pp', '810001', '80', '40:60#50:50', '0', '0', '甲方的收入分成=（游戏收入总额—充值通道费-手续费-运营工具使用费）×甲方分成比例。\r\n1.充值通道费=游戏收入总额*10%。\r\n2.手续费=游戏收入总额*3.36%', '2016-11-28至2017-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('10', 'itools', '811001', '', '50:50', '0', '5', '=[游戏收入总额×95 %）]×50%\r\n', '2016-11-1至2018-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('11', 'i4', '812001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('12', 'asdk小米', '602001', '', '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('13', 'uc', '604001', '150#150~200#200', '40:60#35:65#30:70', '0', '5', '= [游戏收入总额×（1-支付渠道成本比率 5 %）]×甲方分成比例×(1-税率)\r\n=[游戏收入总额×95 %）]×分成比例', '2016-9-1至2021-8-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('14', '虫虫', '606001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('15', '联想', '607001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('16', '机锋', '608001', '', '50:50', '0', '5', '=[游戏收入总额×95 %）]×50%\r\n', '2016-11-1至2018-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('17', 'TT语音-android', '609001', '', '50:50', '0', '5', '=[游戏收入总额×95 %）]×50%\r\n', '2016-11-1至2018-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('103', 'p8-android2（混服）', '664001', '100#100', '25:75#20:80', '0', '0', '阶梯分成：\r\n1、流水<=100万，25：75\r\n2、流水>=100万，20：80\r\n', '2016-12-1至2017-11-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('18', 'asdk金立', '610001', null, '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('19', 'asdk华为', '611001', null, '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('20', 'oppo', '612001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('21', 'asdk(vivo', '613001', null, '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('22', '果盘-android', '614001', '300#300~800#800', '50:50#45:55#40:60', '0', '5', '=[游戏收入总额×（1-支付渠道成本比率 5 %）]×甲方分成比例×(1-税率)\r\n=[游戏收入总额×95 %）]×分成比例', '2016-11-1至2017-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('23', '靠谱', '615001', '', '20:80', '0', '0', '游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('24', 'asdk', '616001', null, '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('25', 'asdk三星', '617001', null, '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('26', '汉风', '619001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('27', '乐游', '620001', '', '50:50', '0', '5', '=[游戏收入总额×95 %）]×50%\r\n', '2016-11-1至2017-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('28', '同游游', '621001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('29', '拇指玩', '622001', '', '50:50', '0', '5', '=[游戏收入总额×95 %）]×50%\r\n', '2016-11-1至2018-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('30', '4399', '623001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('31', '当乐', '624001', '', '50:50', '0', '5', '=[游戏收入总额×95 %）]×50%\r\n', '2016-11-1至2018-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('32', 'asdk魅族', '625001', '', '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('33', '爱普', '626001', '', '50:50', '0', '5', '=[游戏收入总额×95 %）]×50%\r\n', '2016-11-1至2017-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('34', '07073', '627001', '', '50:50', '0', '5', '=[游戏收入总额×95 %）]×50%\r\n', '2016-11-1至2017-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('35', 'asdk啪啪', '630001', null, '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('36', 'asdk乐视', '629001', null, '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('37', 'asdk益玩', '631001', null, '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('38', 'asdk有米', '632001', null, '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('39', 'asdk顺网', '633001', null, '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('40', 'asdk1001', '634001', null, '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('41', 'asdk1002', '635001', null, '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('42', 'asdk1003', '636001', null, '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('43', 'asdk酷派', '637001', null, '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('44', '夜神', '639001', '', '50:50', '0', '5', '=[游戏收入总额×95 %）]×50%\r\n', '2016-11-1至2017-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('45', 'asdk1004', '640001', null, '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('46', 'asdk1005', '641001', null, '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('47', 'asdk1006', '642001', null, '20:80', '0', '0', '=游戏总收入*20%', '2016-10-31至2019-10-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('49', 'p8-android1（独服）', '660001', '100#100', '25:75#20:80', '0', '0', '阶梯分成：\r\n1、流水<=100万，25：75\r\n2、流水>=100万，20：80\r\n', '2016-12-1至2017-11-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('50', '混服官方', '638001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('51', 'asdk三星', '618001', '', '20:80', '0', '0', '', '', '0');
INSERT INTO `web_dwfenbao` VALUES ('52', '熊猫玩', '813001', '', '50:50', '0', '5', '=[游戏收入总额×95 %）]×50%\r\n', '2016-11-1至2018-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('53', '爱应用', '814001', '', '50:50', '0', '5', '=[游戏收入总额×95 %）]×50%\r\n', '2016-12-1至2017-11-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('54', '猎宝', '643001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('55', '海马', '644001', '', '50:50', '0', '5', '=[游戏收入总额×95 %）]×50%\r\n', '2017-1-1至2017-12-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('56', '龙虾', '645001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('57', '小七-android', '646001', '', '50:50', '0', '5', '=[游戏收入总额×95 %）]×50%\r\n', '2016-11-1至2017-10-31', '0');
INSERT INTO `web_dwfenbao` VALUES ('58', '指点', '647001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('59', '奥创', '648001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('60', '点游', '649001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('71', '魔方IOS', '910001', '', '25:75', '0', '0', '25：75（流水）\r\n', '2016-12-15至2017-12-15', '0');
INSERT INTO `web_dwfenbao` VALUES ('72', '魔方安卓', '655001', '', '25:75', '0', '0', '25：75（流水）\r\n', '2016-12-15至2017-12-15', '0');
INSERT INTO `web_dwfenbao` VALUES ('73', 'Pocket官方', '650001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('74', 'Pocket官网', '651001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('75', '顺玩', '657001', '100#100 ', '25:75#20:80', '0', '0', '阶梯分成：\r\n1、流水<=100万  25：75\r\n2、流水>100万   20：80\r\n\r\n', '2017-1-10至2018-1-9', '0');
INSERT INTO `web_dwfenbao` VALUES ('77', '硬核官方', '653001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('78', '应用宝官方', '654001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('105', 'p8ios新口袋宝贝', '821001', '100#100', '25:75#20:80', '0', '0', '阶梯分成：\r\n1、流水<=100万，25：75\r\n2、流水>=100万，20：80\r\n', '2016-12-1至2017-11-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('102', '快发', '652001', null, null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('110', 'p8ios-口袋妖怪', '839001', '100#100', '25:75#20:80', '0', '0', '阶梯分成：\r\n1、流水<=100万，25：75\r\n2、流水>=100万，20：80\r\n', '2016-12-1至2017-11-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('111', 'P8ios口袋精灵', '818001', '100#100', '25:75#20:80', '0', '0', '阶梯分成：\r\n1、流水<=100万，25：75\r\n2、流水>=100万，20：80\r\n', '2016-12-1至2017-11-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('112', 'p8ios-进化吧精灵', '817001', '100#100', '25:75#20:80', '0', '0', '阶梯分成：\r\n1、流水<=100万，25：75\r\n2、流水>=100万，20：80\r\n', '2016-12-1至2017-11-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('113', '爱乐安卓', '700001', '0', '', '0', '0', '', '', '0');
INSERT INTO `web_dwfenbao` VALUES ('114', '16安卓', '701001', '0', '', '0', '0', '', '', '0');
INSERT INTO `web_dwfenbao` VALUES ('115', '易乐玩', '668001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('116', '星宇', '703001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('117', 'p8ios-小智归来', '816001', '100#100', '25:75#20:80', '0', '0', '阶梯分成：\r\n1、流水<=100万，25：75\r\n2、流水>=100万，20：80\r\n', '2016-12-1至2017-11-30', '0');
INSERT INTO `web_dwfenbao` VALUES ('119', '云ios-1号包', '880003', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('120', '云ios-2号包', '880004', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('121', '星趣', '663001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('122', '云ios-3号包', '880005', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('123', 'p8ios小智归来', '859007', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('124', 'p8ios-旧包29', '859001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('125', 'p8ios-旧包28', '838001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('126', 'p8ios-宝贝起源', '826001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('127', 'p8ios-旧包1', '822001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('128', 'p8ios-妖怪召唤师', '824001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('129', 'p8ios-旧包3', '815001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('130', 'p8ios-旧包4', '842001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('131', 'p8ios-口袋妖怪', '851001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('132', 'p8ios-小智归来', '852001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('133', 'p8ios-旧包7', '846001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('134', 'p8ios-旧包8', '847001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('135', 'p8ios-小智归来', '835001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('136', 'p8ios-旧包10', '848001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('137', 'p8ios-小智归来', '836001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('138', 'p8ios-旧包12', '850001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('139', 'p8ios-进化吧精灵', '844001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('140', 'p8ios-进化吧精灵', '845001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('141', 'p8ios-新精灵道馆', '834001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('142', 'p8ios-旧包15', '843001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('143', 'p8ios-小智归来', '841001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('144', 'p8ios-旧包17', '832001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('145', 'p8ios-口袋妖怪', '50081', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('146', 'p8ios-旧包19', '859003', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('147', 'p8ios-旧包20', '837001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('148', '牛牛ios-1号包', '870001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('149', 'p8ios-旧包21', '859002', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('150', 'p8ios-小智归来', '849001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('151', 'p8ios口袋精灵', '855001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('152', 'p8ios-旧包24', '833001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('153', 'p8ios-旧包25', '825001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('154', 'ios官方调试', '800002', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('155', 'asdk斗鱼', '661001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('156', '雷速校园包', '656001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('157', 'p8ios-旧包26', '853001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('158', 'p8ios-旧包31', '819001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('159', 'p8ios-旧包32', '820001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('160', 'p8ios-小智归来', '823001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('161', 'p8ios-旧包34', '827001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('162', 'p8ios-旧包35', '828001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('163', 'p8ios-旧包36', '829001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('164', 'p8ios-旧包37', '830001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('165', 'p8ios-旧包38', '831001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('166', 'p8ios-旧包39', '840001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('167', 'p8ios-旧包40', '859005', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('168', 'p8ios小智归来（口袋联盟）', '859006', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('169', 'p8ios-旧包42', '859004', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('170', 'p8ios-妖精之旅', '859008', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('171', 'p8ios-旧包44', '859009', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('172', 'p8ios-小智归来', '859010', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('173', '力合', '672001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('174', '逗游', '704001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('175', '穗溪安卓', '673001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('176', '黑桃', '705001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('177', 'p8-android3（混服）', '664002', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('178', 'p8ios-口袋联盟', '859014', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('179', 'p8ios-精灵道馆', '859022', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('180', '铠甲', '707001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('181', '游戏fun', '708001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('182', 'asdk快发', '628001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('183', '三星数码宝贝进化', '709001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('184', '创游', '678001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('185', '乐视', '710001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('186', '魅游', '711001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('187', 'p8ios-宝贝起源', '50094', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('188', '深海ios-口袋冒险记', '8102', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('189', '虎牙', '680001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('190', '三星口袋高手', '709002', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('191', '三星口袋训练师', '709003', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('192', '越南ios', '911001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('193', '越南安卓', '669001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('194', 'p8-android4（混服）', '664003', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('195', '火树IOS-精灵战纪', '8005', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('196', '火树IOS-究极进化', '8008', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('197', '虎牙（混服）', '680002', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('198', '锤子', '682001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('199', '百度', '684001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('200', '华为（自接）', '683001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('201', 'oppo（新）', '612002', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('202', '应用宝（进化）', '686001', '0', null, '0', '0', null, null, '1');
INSERT INTO `web_dwfenbao` VALUES ('203', '华为（进化）', '687001', '0', null, '0', '0', null, null, '1');
INSERT INTO `web_dwfenbao` VALUES ('204', 'p8ios-袋宠精灵', '50112', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('205', '劲玩', '689001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('206', 'p8ios-小智归来', '859020', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('207', 'p8ios-小智归来', '859017', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('208', 'p8ios-小智归来', '50082', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('209', 'p8ios-小智归来', '50087', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('210', 'p8ios-小智归来', '50089', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('211', 'p8ios-神奇妖怪', '50115', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('212', '三星3', '709004', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('213', '官方PC端', '681001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('214', '三星1', '7001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('215', '海马玩', '7002', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('216', '口袋进化：华为', '501001', '0', '', '0', '0', '', '', '1');
INSERT INTO `web_dwfenbao` VALUES ('217', '口袋进化：应用宝', '502001', '0', null, '0', '0', null, null, '1');
INSERT INTO `web_dwfenbao` VALUES ('218', '口袋进化：小米', '504001', '0', null, '0', '0', null, null, '1');
INSERT INTO `web_dwfenbao` VALUES ('219', '口袋进化：百度', '505001', '0', null, '0', '0', null, null, '1');
INSERT INTO `web_dwfenbao` VALUES ('220', '口袋进化：360', '506001', '0', null, '0', '0', null, null, '1');
INSERT INTO `web_dwfenbao` VALUES ('221', '口袋进化：魅族', '507001', '0', null, '0', '0', null, null, '1');
INSERT INTO `web_dwfenbao` VALUES ('222', '口袋进化：三星', '508001', '0', null, '0', '0', null, null, '1');
INSERT INTO `web_dwfenbao` VALUES ('223', '口袋进化：oppo', '503001', '0', null, '0', '0', null, null, '1');
INSERT INTO `web_dwfenbao` VALUES ('224', '朋友玩ios-精灵学院', '8206', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('225', '口袋进化：果盘（IOS）', '7101', '0', null, '0', '0', null, null, '1');
INSERT INTO `web_dwfenbao` VALUES ('226', '口袋进化：TT语音（IOS）', '7102', '0', null, '0', '0', null, null, '1');
INSERT INTO `web_dwfenbao` VALUES ('227', '口袋进化：爱应用（IOS）', '7103', '0', null, '0', '0', null, null, '1');
INSERT INTO `web_dwfenbao` VALUES ('228', '口袋进化：果盘（安卓）', '510001', '0', null, '0', '0', null, null, '1');
INSERT INTO `web_dwfenbao` VALUES ('229', '口袋进化：TT语音（安卓）', '509001', '0', null, '0', '0', null, null, '1');
INSERT INTO `web_dwfenbao` VALUES ('230', '口袋进化：爱应用（安卓）', '511001', '0', '', '0', '0', '', '', '1');
INSERT INTO `web_dwfenbao` VALUES ('231', '朋友玩ios-口袋大乱斗', '8207', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('232', '口袋进化：自接服官方包', '512001', '0', null, '0', '0', null, null, '1');
INSERT INTO `web_dwfenbao` VALUES ('233', '口袋进化：启智服官方包', '513001', '0', null, '0', '0', null, null, '1');
INSERT INTO `web_dwfenbao` VALUES ('234', '柠檬助手', '693001', '0', null, '0', '0', null, null, '0');
INSERT INTO `web_dwfenbao` VALUES ('235', '精灵冒险', '9022', '0', null, '0', '0', null, null, '0');

-- ----------------------------
-- Table structure for web_emp_account
-- ----------------------------
DROP TABLE IF EXISTS `web_emp_account`;
CREATE TABLE `web_emp_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `accountid` bigint(20) NOT NULL COMMENT '账号',
  `name` varchar(20) NOT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk` (`accountid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_emp_account
-- ----------------------------

-- ----------------------------
-- Table structure for web_erp_level
-- ----------------------------
DROP TABLE IF EXISTS `web_erp_level`;
CREATE TABLE `web_erp_level` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `level` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of web_erp_level
-- ----------------------------
INSERT INTO `web_erp_level` VALUES ('4', '一级', '0');
INSERT INTO `web_erp_level` VALUES ('5', '二级', '1');

-- ----------------------------
-- Table structure for web_erp_log
-- ----------------------------
DROP TABLE IF EXISTS `web_erp_log`;
CREATE TABLE `web_erp_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `model` varchar(30) NOT NULL,
  `verify_time` int(4) NOT NULL DEFAULT '0',
  `operator` varchar(30) NOT NULL,
  `pid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2595 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of web_erp_log
-- ----------------------------

-- ----------------------------
-- Table structure for web_game
-- ----------------------------
DROP TABLE IF EXISTS `web_game`;
CREATE TABLE `web_game` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` int(10) unsigned NOT NULL,
  `game_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_game
-- ----------------------------
INSERT INTO `web_game` VALUES ('1', '7', '合金弹头');
INSERT INTO `web_game` VALUES ('2', '5', '三国');
INSERT INTO `web_game` VALUES ('3', '8', '口袋妖怪');
INSERT INTO `web_game` VALUES ('4', '9', '时尚');

-- ----------------------------
-- Table structure for web_game_server
-- ----------------------------
DROP TABLE IF EXISTS `web_game_server`;
CREATE TABLE `web_game_server` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` int(10) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `server_name` varchar(50) NOT NULL,
  `link` varchar(30) NOT NULL,
  `port` smallint(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `combined_service` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1077 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_game_server
-- ----------------------------
INSERT INTO `web_game_server` VALUES ('46', '8', '3011', '应用宝11-霸王花', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('6', '8', '8001', '1皮卡丘', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('7', '8', '8002', '2妙蛙种子', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('47', '8', '8019', '19派拉斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('10', '8', '8003', '3小火龙', '', '0', '', '', '', '1');
INSERT INTO `web_game_server` VALUES ('11', '8', '8004', '4杰尼龟', '', '0', '', '', '', '1');
INSERT INTO `web_game_server` VALUES ('12', '8', '8005', '5绿毛虫', '', '0', '', '', '', '1');
INSERT INTO `web_game_server` VALUES ('13', '8', '8006', '6独角虫', '', '0', '', '', '', '1');
INSERT INTO `web_game_server` VALUES ('14', '8', '8007', '7比比鸟', '', '0', '', '', '', '1');
INSERT INTO `web_game_server` VALUES ('15', '8', '8008', '8小拉达', '', '0', '', '', '', '1');
INSERT INTO `web_game_server` VALUES ('16', '8', '8009', '9大嘴雀', '', '0', '', '', '', '1');
INSERT INTO `web_game_server` VALUES ('17', '8', '8010', '10阿柏蛇', '', '0', '', '', '', '1');
INSERT INTO `web_game_server` VALUES ('18', '8', '3001', '应用宝1-妙蛙花', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('19', '8', '3002', '应用宝2-喷火龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('20', '8', '3003', '应用宝3-水箭龟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('21', '8', '6001', '硬核1-妙蛙草', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('22', '8', '6002', '硬核2-火恐龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('23', '8', '6003', '硬核3-卡咪龟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('24', '8', '6004', '硬核4-铁甲蛹', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('29', '8', '8013', '13尼多朗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('27', '8', '8011', '11穿山鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('28', '8', '8012', '12尼多兰', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('30', '8', '8014', '14皮皮', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('31', '8', '6005', '硬核5-波波', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('32', '8', '6006', '硬核6-烈雀', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('33', '8', '3004', '应用宝4-巴大胡', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('34', '8', '3005', '应用宝5-大针蜂', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('35', '8', '3006', '应用宝6-拉达', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('36', '8', '3007', '应用宝7-阿柏怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('37', '8', '3008', '应用宝8-雷丘', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('38', '8', '3009', '应用宝9-穿山王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('39', '8', '3010', '应用宝10-尼多后', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('40', '8', '8015', '15六尾', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('41', '8', '8016', '16胖丁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('42', '8', '8017', '17超音蝠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('43', '8', '8018', '18走路草', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('44', '8', '6007', '硬核7-双弹瓦斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('45', '8', '6008', '硬核8-尼多娜', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('48', '8', '8020', '20毛球', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('49', '8', '8021', '21地鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('50', '8', '6009', '硬核9-皮可西', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('51', '8', '6010', '硬核10-九尾', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('52', '8', '3012', '应用宝12-胖可丁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('53', '8', '8022', '22喵喵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('54', '8', '8023', '23可达鸭', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('55', '8', '8024', '24猴怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('56', '8', '8025', '25卡蒂狗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('57', '8', '6011', '硬核11-尼多王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('58', '8', '6012', '硬核12-勇基拉', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('59', '8', '3013', '应用宝13大嘴蝠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('60', '8', '3014', '应用宝14臭臭花', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('61', '8', '8026', '26蚊香蝌蚪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('62', '8', '6013', '硬核13-玛瑙水母', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('63', '8', '3015', '应用宝15派拉斯特', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('64', '8', '8027', '27凯西', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('65', '8', '3016', '应用宝16猫老大', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('66', '8', '3017', '应用宝17哥达鸭', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('67', '8', '6014', '硬核14小火马', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('68', '8', '6015', '硬核15臭臭泥', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('69', '8', '8028', '28腕力', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('70', '8', '8029', '29火暴猴', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('71', '8', '3018', '应用宝18蚊香泳士', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('72', '8', '6016', '硬核16鬼斯通', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('73', '8', '8030', '30风速狗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('74', '8', '8031', '31墨海马', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('75', '8', '8032', '32角金鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('76', '8', '6017', '硬核17椰蛋树', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('77', '8', '6018', '硬核18顽皮弹', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('78', '8', '3019', '应用宝19口呆花', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('79', '8', '3020', '应用宝20毒刺水母', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('80', '8', '3021', '应用宝21菊草叶', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('81', '8', '8033', '33飞天螳螂', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('82', '8', '8034', '34肯泰罗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('83', '8', '8035', '35伊布', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('84', '8', '8036', '36暴鲤龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('85', '8', '8037', '37菊石兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('86', '8', '8038', '38化石盔', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('87', '8', '8039', '39化石翼龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('88', '8', '8040', '40卡比兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('89', '8', '6019', '硬核19大舌贝', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('90', '8', '6020', '硬核20喇叭芽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('91', '8', '3022', '应用宝22火球鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('92', '8', '3023', '应用宝23小锯鳄', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('93', '8', '6021', '硬核21小拳石', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('94', '8', '3024', '应用宝24尾立', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('95', '8', '3025', '应用宝25猫头夜鹰', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('96', '8', '3026', '应用宝26圆丝蛛', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('97', '8', '6022', '硬核22月桂叶', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('98', '8', '6023', '硬核23火岩鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('99', '8', '3027', '应用宝27灯笼鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('100', '8', '3028', '应用宝28皮宝宝', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('101', '8', '8041', '41迷你龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('102', '8', '8042', '42快龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('103', '8', '8043', '43超梦', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('104', '8', '6024', '硬核24蓝鳄', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('105', '8', '3029', '应用宝29波克基古', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('106', '8', '8044', '44大竺葵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('107', '8', '6025', '硬核25大尾立', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('108', '8', '3030', '应用宝30咩利羊', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('109', '8', '8045', '45火暴兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('110', '8', '3031', '应用宝31美丽花', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('111', '8', '6026', '硬核26芭瓢虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('112', '8', '8046', '46大力鳄', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('113', '8', '3032', '应用宝32树才怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('114', '8', '6027', '硬核27阿利多斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('115', '8', '8047', '47咕咕', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('116', '8', '6028', '硬核28电灯怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('117', '8', '3033', '应用宝33毽子花', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('118', '8', '8048', '48安瓢虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('119', '8', '8049', '49叉字蝠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('120', '8', '8050', '50皮丘', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('121', '8', '6029', '硬核29宝宝丁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('122', '8', '3034', '应用宝34向日种子', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('123', '8', '8051', '51波克比', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('124', '8', '6030', '硬核30天然雀', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('125', '8', '3035', '应用宝35乌波', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('126', '8', '8052', '52天然鸟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('127', '8', '6031', '硬核31茸茸羊', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('128', '8', '3036', '应用宝36太阳伊布', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('129', '8', '8053', '53玛力露丽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('130', '8', '5001', 'P01皮卡丘', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('131', '8', '8054', '54电龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('132', '8', '6033', '硬核33蚊香蛙皇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('133', '8', '6032', '硬核32玛力露', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('134', '8', '3037', '应用宝37黑暗鸦', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('135', '8', '8055', '55毽子草', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('136', '8', '8056', '56长尾怪手', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('137', '8', '8057', '57蜻蜻蜓', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('138', '8', '6034', '硬核34沼王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('153', '8', '6035', '硬核35向日花怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('141', '8', '3038', '应用宝38未知图腾', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('142', '8', '3039', '应用宝39榛果球', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('143', '8', '3040', '应用宝40天蝎', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('144', '8', '5002', 'P02小火龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('145', '8', '5003', 'P03杰尼龟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('146', '8', '5004', 'P04妙蛙种子', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('147', '8', '5005', 'P05可达鸭', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('148', '8', '5006', 'P06绿毛虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('149', '8', '5007', 'P07小拉达', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('150', '8', '5008', 'P08阿柏蛇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('151', '8', '5009', 'P09走路草', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('152', '8', '5010', 'P10喇叭芽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('154', '8', '8058', '58月亮伊布', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('155', '8', '6036', '硬核36呆呆王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('156', '8', '8059', '59梦妖', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('157', '8', '6037', '硬核37毽子棉', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('158', '8', '8060', '60麒麟奇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('159', '8', '8061', '61土龙弟弟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('160', '8', '8062', '62布鲁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('161', '8', '8063', '63巨钳螳螂', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('162', '8', '8064', '64狃拉', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('163', '8', '8065', '65熔岩虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('164', '8', '8066', '66长毛猪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('165', '8', '6038', '硬核38果然翁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('166', '8', '6039', '硬核39佛烈托斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('167', '8', '6040', '硬核40大钢蛇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('168', '8', '6041', '硬核41千针鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('169', '8', '6042', '硬核42赫拉克罗斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('170', '8', '6043', '硬核43圈圈熊', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('171', '8', '6044', '硬核44小山猪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('172', '8', '3041', '应用宝41布鲁皇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('173', '8', '3042', '应用宝42壶壶', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('174', '8', '3043', '应用宝43熊宝宝', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('175', '8', '3044', '应用宝44熔岩蜗牛', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('176', '8', '5011', 'P11小拳石', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('177', '8', '5012', 'P12呆呆兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('178', '8', '5013', 'P13小海狮', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('179', '8', '3045', '应用宝45太阳珊瑚', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('180', '8', '8067', '67章鱼桶', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('181', '8', '8068', '68盔甲鸟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('182', '8', '8069', '69刺龙王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('183', '8', '8070', '70惊角鹿', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('184', '8', '5014', 'P14大舌贝', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('185', '8', '5015', 'P15雷电球', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('186', '8', '5016', 'P16瓦斯弹', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('187', '8', '5017', 'P17吉利蛋', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('188', '8', '5018', 'P18角金鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('189', '8', '5019', 'P19海星星', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('190', '8', '5020', 'P20百变怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('191', '8', '5021', 'P21喵喵怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('192', '8', '5022', 'P22水伊布', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('193', '8', '5023', 'P23急冻鸟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('194', '8', '5024', 'P24化石盔', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('195', '8', '5025', 'P25火球鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('196', '8', '6045', '硬核45铁炮鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('197', '8', '15001', 'P安1喷火龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('198', '8', '6046', '硬核46巨翅飞鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('199', '8', '6047', '硬核47黑鲁加', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('200', '8', '3046', '应用宝46信使鸟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('201', '8', '5026', 'P26菊草叶', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('202', '8', '5027', 'P27小锯鳄', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('203', '8', '5028', 'P28宝宝丁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('204', '8', '5029', 'P29咩利羊', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('205', '8', '5030', 'P30超梦梦', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('206', '8', '15002', 'P安2水箭龟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('277', '8', '5077', 'P77毽子草', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('278', '8', '5078', 'P78玛力露', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('210', '8', '3047', '应用宝47戴鲁比', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('211', '8', '6048', '硬核48顿甲', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('212', '8', '8071', '71战舞郎', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('213', '8', '6049', '硬核49无畏小子', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('214', '8', '3048', '应用宝48小小象', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('215', '8', '5031', 'P31妙蛙草', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('216', '8', '5032', 'P32火恐龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('217', '8', '5033', 'P33卡咪龟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('218', '8', '5034', 'P34铁甲蛹', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('219', '8', '5035', 'P35独角虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('220', '8', '5036', 'P36比比鸟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('221', '8', '5037', 'P37穿山鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('222', '8', '5038', 'P38尼多兰', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('223', '8', '5039', 'P39超音蝠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('224', '8', '5040', 'P40臭臭花', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('225', '8', '5041', 'P41派拉斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('226', '8', '8072', '72鸭嘴宝宝', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('227', '8', '8073', '73雷公', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('228', '8', '6050', '硬核50电击怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('229', '8', '6051', '硬核51幸福蛋', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('230', '8', '3049', '应用宝49图图犬', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('231', '8', '5042', 'P42大葱鸭', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('232', '8', '5043', 'P43小磁怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('233', '8', '5044', 'P44椰蛋树', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('234', '8', '5045', 'P45天然雀', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('235', '8', '5046', 'P46火稚鸡', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('236', '8', '5047', 'P47灯笼鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('237', '8', '5048', 'P48芭瓢虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('238', '8', '5049', 'P49火岩鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('239', '8', '5050', 'P50大力鳄', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('240', '8', '5051', 'P51茸茸羊', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('241', '8', '8074', '74幼基拉斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('242', '8', '6052', '硬核52水君', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('243', '8', '3050', '应用宝50迷唇娃', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('244', '8', '6053', '硬核53班基拉斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('245', '8', '8075', '75洛奇亚', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('246', '8', '5052', 'P52美丽花', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('247', '8', '5053', 'P53圈圈熊', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('248', '8', '5054', 'P54熔岩虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('249', '8', '5055', 'P55小山猪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('250', '8', '5056', 'P56千针鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('251', '8', '5057', 'P57榛果球', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('252', '8', '5058', 'P58惊角鹿', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('253', '8', '5059', 'P59图图犬', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('254', '8', '5060', 'P60迷唇娃', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('255', '8', '5061', 'P61卷卷耳', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('256', '8', '5062', 'P62长耳兔', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('257', '8', '5063', 'P63萤光鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('258', '8', '5064', 'P64斗笠菇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('259', '8', '5065', 'P65沙奈朵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('260', '8', '5066', 'P66蛇纹熊', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('261', '8', '5067', 'P67优雅猫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('262', '8', '5068', 'P68傲骨燕', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('263', '8', '5069', 'P69玛沙那', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('264', '8', '5070', 'P70刺尾虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('265', '8', '5071', 'P71毒粉蝶', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('266', '8', '5072', 'P72噗噗猪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('267', '8', '5073', 'P73落雷兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('268', '8', '5074', 'P74毒蔷薇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('269', '8', '5075', 'P75甜甜萤', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('270', '8', '5076', 'P76勾魂眼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('271', '8', '8076', '76蜥蜴王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('272', '8', '6054', '硬核54时拉比', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('273', '8', '3051', '应用宝51大奶罐', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('274', '8', '8077', '77火焰鸡', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('275', '8', '6055', '硬核55森林蜥蜴', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('276', '8', '3052', '应用宝52炎帝', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('279', '8', '5079', 'P79黑暗鸦', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('280', '8', '5080', 'P80铁炮鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('281', '8', '5081', 'P81幸福蛋', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('282', '8', '5082', 'P82力壮鸡', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('283', '8', '5083', 'P83水跃鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('284', '8', '5084', 'P84橡实果', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('285', '8', '5085', 'P85果然翁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('286', '8', '5086', 'P86过动猿', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('287', '8', '5087', 'P87风铃铃', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('288', '8', '5088', 'P88雪童子', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('289', '8', '5089', 'P89珍珠贝', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('290', '8', '5090', 'P90樱花鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('291', '8', '5091', 'P91海魔狮', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('292', '8', '5092', 'P92美纳斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('293', '8', '5093', 'P93鲶鱼王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('294', '8', '3053', '应用宝53沙基拉斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('295', '8', '6056', '硬核56力壮鸡', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('296', '8', '6057', '硬核57沼跃鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('297', '8', '8078', '78巨沼怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('298', '8', '8079', '79蛇纹熊', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('299', '8', '5094', 'P94电萤虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('300', '8', '5095', 'P95蘑蘑菇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('301', '8', '5096', 'P96热带龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('302', '8', '5097', 'P97铁哑铃', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('303', '8', '5098', 'P98固拉多', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('304', '8', '5099', 'P99跳跳猪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('305', '8', '5100', 'P100基拉祈', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('306', '8', '5101', 'P101朝北鼻', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('307', '8', '8080', '80甲壳茧', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('308', '8', '8081', '81毒粉蛾', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('309', '8', '6058', '硬核58大狼犬', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('310', '8', '6059', '硬核59刺尾虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('311', '8', '3054', '应用宝54凤王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('312', '8', '3055', '应用宝55木守宫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('313', '8', '8082', '82乐天河童', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('314', '8', '8083', '83狡猾天狗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('315', '8', '8084', '84长翅鸥', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('316', '8', '6060', '硬核60盾甲茧', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('317', '8', '6061', '硬核61莲帽小童', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('318', '8', '3056', '应用宝56火稚鸡', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('319', '8', '5102', 'P102笨笨鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('320', '8', '5103', 'P103呆火驼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('321', '8', '8085', '85奇鲁莉安', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('322', '8', '8086', '86雨翅蛾', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('323', '8', '6062', '硬核62长鼻叶', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('324', '8', '6063', '硬核63大王燕', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('325', '8', '3057', '应用宝57水跃鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('326', '8', '3058', '应用宝58土狼犬', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('327', '8', '5104', 'P104向尾喵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('328', '8', '5105', 'P105盾甲茧', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('329', '8', '5106', 'P106土狼犬', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('330', '8', '5107', 'P107沼跃鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('331', '8', '5108', 'P108火焰鸡', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('332', '8', '5109', 'P109战舞郎', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('333', '8', '5110', 'P110电击怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('334', '8', '5111', 'P111树才怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('335', '8', '8087', '87懒人獭', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('336', '8', '8088', '88土居忍士', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('337', '8', '8089', '89咕妞妞', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('338', '8', '8090', '90幕下力士', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('339', '8', '8091', '91朝北鼻', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('340', '8', '8092', '92勾魂眼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('341', '8', '6064', '硬核64拉鲁拉丝', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('342', '8', '6065', '硬核65溜溜糖球', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('343', '8', '6066', '硬核66斗笠菇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('344', '8', '6067', '硬核67请假王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('345', '8', '6068', '硬核68脱壳忍者', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('346', '8', '5112', 'P112大尾立', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('347', '8', '5113', 'P113蔓藤怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('348', '8', '5114', 'P114飞腿郎', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('349', '8', '5115', 'P115摩鲁蛾', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('350', '8', '5116', 'P116尼多后', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('351', '8', '5117', 'P117勇基拉', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('352', '8', '5118', 'P118催眠貘', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('353', '8', '5119', 'P119快拳郎', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('354', '8', '5120', 'P120墨海马', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('355', '8', '3059', '应用宝59直冲熊', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('356', '8', '3060', '应用宝60狩猎凤蝶', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('357', '8', '3061', '应用宝61莲叶童子', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('358', '8', '3062', '应用宝62橡实果', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('359', '8', '8093', '93可多拉', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('360', '8', '8094', '94落雷兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('361', '8', '6069', '硬核69爆音怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('362', '8', '6070', '硬核70露力丽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('363', '8', '3063', '应用宝63傲骨燕', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('364', '8', '3064', '应用宝64大嘴鸥', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('365', '8', '5121', 'P121呆壳兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('366', '8', '5122', 'P122烈焰马', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('367', '8', '5123', 'P123三地鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('368', '8', '5124', 'P124尼多娜', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('369', '8', '5125', 'P125巨钳蟹', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('370', '8', '5126', 'P126金鱼王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('371', '8', '5127', 'P127凯罗斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('372', '8', '5128', 'P128暴鲤龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('373', '8', '5129', 'P129海刺龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('374', '8', '5130', 'P130雷伊布', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('375', '8', '5131', 'P131多边兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('376', '8', '5132', 'P132迷你龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('377', '8', '5133', 'P133卡比兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('378', '8', '5134', 'P134萌芽鹿', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('379', '8', '8095', '95负电拍拍', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('380', '8', '8096', '96毒蔷薇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('381', '8', '8097', '97利牙鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('382', '8', '8098', '98吼鲸王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('383', '8', '6071', '硬核71优雅猫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('384', '8', '6072', '硬核72可可多拉', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('385', '8', '6073', '硬核73恰雷姆', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('386', '8', '6074', '硬核74正电拍拍', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('387', '8', '3065', '应用宝65沙奈朵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('388', '8', '3066', '应用宝66蘑蘑菇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('389', '8', '5135', 'P135盖盖虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('390', '8', '5136', 'P136石丸子', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('391', '8', '5137', 'P137豆豆鸽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('392', '8', '5138', 'P138轻飘飘', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('393', '8', '8099', '99煤炭龟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('394', '8', '8100', '100晃晃斑', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('395', '8', '8101', '101青绵鸟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('396', '8', '6075', '硬核75甜甜萤', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('397', '8', '6076', '硬核76吞食兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('398', '8', '6077', '硬核77吼吼鲸', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('399', '8', '3067', '应用宝67过动猿', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('400', '8', '3068', '应用宝68铁面忍者', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('401', '8', '5139', 'P139波波鸽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('402', '8', '5140', 'P140花椰猿', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('403', '8', '5141', 'P141木棉球', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('404', '8', '5142', 'P142猫鼬斩', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('405', '8', '5143', 'P143天秤偶', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('406', '8', '5144', 'P144木守宫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('407', '8', '5145', 'P145懒人翁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('408', '8', '5146', 'P146爱心鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('409', '8', '5147', 'P147喷火驼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('410', '8', '5148', 'P148宝贝龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('411', '8', '5149', 'P149甲壳龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('412', '8', '5150', 'P150甲壳蛹', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('413', '8', '5151', 'P151冰鬼护', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('414', '8', '5152', 'P152盖欧卡', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('415', '8', '5153', 'P153晃晃斑', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('416', '8', '5154', 'P154海豹球', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('417', '8', '5155', 'P155金属怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('418', '8', '5156', 'P156大颚蚁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('419', '8', '5157', 'P157变隐龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('420', '8', '8102', '102饭匙蛇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('421', '8', '8103', '103泥泥鳅', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('422', '8', '8104', '104铁螯龙虾', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('423', '8', '6078', '硬核78喷火驼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('424', '8', '6079', '硬核79噗噗猪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('425', '8', '6080', '硬核80沙漠蜻蜓', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('426', '8', '3069', '应用宝69吼爆弹', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('427', '8', '3070', '应用宝70铁掌力士', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('428', '8', '8105', '105触手百合', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('429', '8', '8106', '106太古盔甲', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('430', '8', '8107', '107飘浮泡泡', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('431', '8', '6081', '硬核81猫鼬斩', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('432', '8', '6082', '硬核82太阳岩', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('433', '8', '6083', '硬核83龙虾小兵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('434', '8', '5158', 'P158咕妞妞', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('435', '8', '5159', 'P159吞食兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('436', '8', '5160', 'P160吼爆弹', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('437', '8', '5161', 'P161爆音怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('438', '8', '5162', 'P162夜骷颅', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('439', '8', '5163', 'P163吼吼鲸', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('440', '8', '3071', '应用宝71向尾喵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('441', '8', '3072', '应用宝72大嘴娃', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('442', '8', '5164', 'P164夜巨人', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('443', '8', '5165', 'P165草苗龟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('444', '8', '5166', 'P166姆克儿', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('445', '8', '5167', 'P167东施喵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('446', '8', '5168', 'P168由克希', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('447', '8', '5169', 'P169霏欧纳', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('448', '8', '5170', 'P170战槌龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('449', '8', '5171', 'P171霓虹鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('450', '8', '5172', 'P172玛纳霏', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('451', '8', '8108', '108诅咒娃娃', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('452', '8', '8109', '109彷徨夜灵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('453', '8', '8110', '110风铃铃', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('454', '8', '8111', '111小果然', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('455', '8', '8112', '112冰鬼护', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('456', '8', '6084', '硬核84念力土偶', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('457', '8', '6085', '硬核85太古羽虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('458', '8', '6086', '硬核86美纳斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1031', '8', '18017', '启智017超音蝠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('461', '8', '3073', '应用宝73玛沙那', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('462', '8', '3074', '应用宝74雷电兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('463', '8', '8113', '113海魔狮', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('464', '8', '8114', '114猎斑鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('465', '8', '8115', '115古空棘鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('466', '8', '8116', '116宝贝龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('467', '8', '6087', '硬核87怨影娃娃', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('468', '8', '6088', '硬核88夜巡灵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('469', '8', '6089', '硬核89热带龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('470', '8', '6090', '硬核90阿勃梭鲁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('471', '8', '6091', '硬核91雪童子', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('472', '8', '6092', '硬核92海豹球', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('473', '8', '5173', 'P173姆克鹰', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('474', '8', '5174', 'P174叶伊布', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('475', '8', '5175', 'P175海牛兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('476', '8', '5176', 'P176结草儿', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('477', '8', '5177', 'P177天蝎王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('478', '8', '5178', 'P178盆才怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('479', '8', '5179', 'P179钳尾蝎', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('480', '8', '5180', 'P180好运蛋', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('481', '8', '5181', 'P181龙王蝎', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('482', '8', '5182', 'P182烈焰猴', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('483', '8', '5183', 'P183圆法师', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('484', '8', '5184', 'P184绅士蛾', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('485', '8', '5185', 'P185随风球', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('486', '8', '5186', 'P186魔尼尼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('648', '8', '5242', 'P242地幔岩', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('489', '8', '5187', 'P187勒克猫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('490', '8', '5188', 'P188梦妖魔', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('491', '8', '5189', 'P189不良蛙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('492', '8', '5190', 'P190含羞苞', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('493', '8', '3075', '应用宝75电萤虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('494', '8', '3076', '应用宝76溶食兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1033', '8', '18019', '启智019派拉斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1034', '8', '18020', '启智020毛球', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1032', '8', '18018', '启智018走路草', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('500', '8', '8117', '117金属怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('501', '8', '8118', '118雷吉艾斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('502', '8', '8119', '119拉帝亚斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('503', '8', '8120', '120盖欧卡', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('504', '8', '8121', '121烈空座', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('505', '8', '8122', '122代欧奇希斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('506', '8', '8123', '123树林龟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('507', '8', '8124', '124猛火猴', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('508', '8', '6093', '硬核93珍珠贝', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('509', '8', '6094', '硬核94樱花鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('510', '8', '6095', '硬核95爱心鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('511', '8', '6096', '硬核96甲壳龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('512', '8', '6097', '硬核97铁哑铃', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('513', '8', '6098', '硬核98雷吉洛克', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('514', '8', '6099', '硬核99雷吉斯奇鲁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('515', '8', '6100', '硬核100拉帝欧斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('516', '8', '5191', 'P191花岩怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('517', '8', '5192', 'P192毒骷蛙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('518', '8', '5193', 'P193雪妖女', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('519', '8', '5194', 'P194浮潜鼬', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('520', '8', '5195', 'P195魅力喵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('521', '8', '5196', 'P196圆陆鲨', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('522', '8', '5197', 'P197尖牙笼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('523', '8', '5198', 'P198洛托姆', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('524', '8', '5199', 'P199由克希', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('525', '8', '5200', 'P200藤藤蛇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('526', '8', '5201', 'P201青藤蛇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('527', '8', '3077', '应用宝77巨牙鲨', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('528', '8', '3078', '应用宝78呆火驼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('529', '8', '3079', '应用宝79跳跳猪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('530', '8', '3080', '应用宝80大颚蚁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('531', '8', '5202', 'P202君主蛇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('532', '8', '5203', 'P203暖暖猪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('533', '8', '5204', 'P204炒炒猪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('534', '8', '5205', 'P205炎武王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('535', '8', '5206', 'P206水水獭', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('536', '8', '5207', 'P207双刃丸', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('537', '8', '5208', 'P208大剑鬼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('538', '8', '5209', 'P209探探鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('539', '8', '5210', 'P210步哨鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('540', '8', '5211', 'P211小约克', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('542', '8', '8125', '125帝王拿波', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('543', '8', '8126', '126姆克鹰', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('544', '8', '8127', '127圆法师', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('545', '8', '8128', '128勒克猫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('546', '8', '8129', '129罗丝雷朵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('547', '8', '8130', '130盾甲龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('548', '8', '8131', '131绅士蛾', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('549', '8', '8132', '132蜂女王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('550', '8', '6101', '硬核101固拉多', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('551', '8', '6102', '硬核102基拉祈', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('552', '8', '6103', '硬核103草苗龟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('553', '8', '6104', '硬核104小火焰猴', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('554', '8', '6105', '硬核105波皇子', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('555', '8', '6106', '硬核106姆克鸟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('556', '8', '6107', '硬核107大尾狸', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('557', '8', '6108', '硬核108小猫怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('558', '8', '3081', '应用宝81七夕青鸟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('559', '8', '3082', '应用宝82月石', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1075', '8', '9002', '海牛ios002妙蛙种子', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('563', '8', '5212', 'P212哈约克', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('564', '8', '5213', 'P213蒂安希', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('565', '8', '5214', 'P214冠军盟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('566', '8', '5215', 'P215长毛狗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('567', '8', '5216', 'P216扒手猫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('568', '8', '5217', 'P217花椰猴', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('569', '8', '5218', 'P218爆香猴', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('570', '8', '5219', 'P219食梦梦', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('571', '8', '5220', 'P220死神棺', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1023', '8', '5356', 'P356铁头槌', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1024', '8', '5357', 'P357子弹拳', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1025', '8', '5358', 'P358木叶锤', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1026', '8', '5360', 'P360火之牙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1027', '8', '5361', 'P361跳飞踢', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1028', '8', '5362', 'P362重臂锤', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('579', '8', '8133', '133泳圈鼬', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('580', '8', '8134', '134樱花儿', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('581', '8', '8135', '135海兔兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('582', '8', '8136', '136飘飘球', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('583', '8', '8137', '137卷卷耳', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('584', '8', '8138', '138梦妖魔', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('585', '8', '8139', '139魅力喵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('586', '8', '8140', '140铃铛响', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('587', '8', '8141', '141坦克臭鼬', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('588', '8', '8142', '142青铜钟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('589', '8', '8143', '143魔尼尼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('590', '8', '8144', '144聒噪鸟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('591', '8', '8145', '145圆陆鲨', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('592', '8', '8146', '146小卡比兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('593', '8', '8147', '147路卡利欧', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('594', '8', '8148', '148河马兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('595', '8', '6109', '硬核109含羞苞', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('596', '8', '6110', '硬核110战槌龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('597', '8', '6111', '硬核111结草贵妇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('598', '8', '6112', '硬核112三蜜蜂', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('599', '8', '6113', '硬核113帕奇利兹', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('600', '8', '6114', '硬核114樱花宝', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('601', '8', '6115', '硬核115无壳海兔', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('602', '8', '6116', '硬核116双尾怪手', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('603', '8', '6117', '硬核117随风球', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('604', '8', '6118', '硬核118长耳兔', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('605', '8', '6119', '硬核119乌鸦头头', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('606', '8', '6120', '硬核120东施喵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('607', '8', '6121', '硬核121臭鼬噗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('608', '8', '6122', '硬核122铜镜怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('609', '8', '6123', '硬核123盆才怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('610', '8', '6124', '硬核124小福蛋', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('611', '8', '3083', '应用宝83鲶鱼王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('612', '8', '3084', '应用宝84天秤偶', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('613', '8', '3085', '应用宝85摇篮百合', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('614', '8', '3086', '应用宝86丑丑鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('615', '8', '3087', '应用宝87变隐龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('616', '8', '3088', '应用宝88帝牙海狮', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('617', '8', '3089', '应用宝89暴飞龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('618', '8', '3090', '应用宝90巨金怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('619', '8', '3091', '应用宝91土台龟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('620', '8', '3092', '应用宝92烈焰猴', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('621', '8', '3093', '应用宝93波加曼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('622', '8', '5221', 'P221破破袋', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('623', '8', '5222', 'P222灰尘山', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('624', '8', '5223', 'P223索罗亚', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('625', '8', '5224', 'P224鸭宝宝', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('626', '8', '5225', 'P225舞天鹅', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('627', '8', '5226', 'P226胖嘟嘟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('628', '8', '5227', 'P227电电虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('629', '8', '5228', 'P228迷你冰', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('630', '8', '5229', 'P229多多冰', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('631', '8', '5230', 'P230四季鹿', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('632', '8', '5231', 'P231齿轮儿', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('633', '8', '5232', 'P232齿轮怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('634', '8', '5233', 'P233大宇怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('635', '8', '5234', 'P234烛光灵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('636', '8', '5235', 'P235电蜘蛛', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('637', '8', '5236', 'P236齿轮组', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('638', '8', '5237', 'P237麻麻鳗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('639', '8', '5238', 'P238小灰怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('640', '8', '5239', 'P239斧牙龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('641', '8', '5240', 'P240梦梦蚀', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('642', '8', '5241', 'P241斑斑马', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('643', '8', '11001', '火1皮卡丘', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('644', '8', '11002', '火2小火龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('645', '8', '11003', '火3杰尼龟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('646', '8', '11004', '火4妙蛙种子', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('647', '8', '11005', '火5可达鸭', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('649', '8', '5243', 'P243庞岩怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('650', '8', '5244', 'P244心蝙蝠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('651', '8', '5245', 'P245圆蝌蚪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('652', '8', '5246', 'P246蓝蟾蜍', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('653', '8', '5247', 'P247蟾蜍王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('654', '8', '5248', 'P248投摔鬼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('655', '8', '5249', 'P249打击鬼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('656', '8', '5250', 'P250虫宝包', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('657', '8', '5251', 'P251宝包茧', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('658', '8', '5252', 'P252保姆虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('659', '8', '5253', 'P253车轮毬', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('660', '8', '5254', 'P254蜈蚣王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('661', '8', '5255', 'P255风妖精', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('662', '8', '5256', 'P256混混鳄', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('663', '8', '5257', 'P257流氓鳄', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('664', '8', '5258', 'P258石居蟹', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('665', '8', '5259', 'P259象征鸟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('666', '8', '5260', 'P260喷嚏熊', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('667', '8', '5261', 'P261冻原熊', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('668', '8', '5262', 'P262小嘴蜗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('669', '8', '5263', 'P263敏捷虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('670', '8', '11006', '火6绿毛虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('671', '8', '11007', '火7小拉达', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('672', '8', '8149', '149龙王蝎', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('673', '8', '8150', '150毒骷蛙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('674', '8', '8151', '151荧光鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('675', '8', '8152', '152小球飞鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('676', '8', '8153', '153暴雪王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('677', '8', '8154', '154自爆磁怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('678', '8', '8155', '155超甲狂犀', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('679', '8', '8156', '156电击魔兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('680', '8', '6125', '硬核125花岩怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('681', '8', '6126', '硬核126尖牙陆鲨', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('682', '8', '6127', '硬核127利欧路', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('683', '8', '6128', '硬核128沙河马', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('684', '8', '6129', '硬核129钳尾蝎', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('685', '8', '6130', '硬核130不良蛙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('686', '8', '6131', '硬核131尖牙笼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('687', '8', '6132', '硬核132霓虹鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('688', '8', '3094', '应用宝94姆克儿', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('689', '8', '3095', '应用宝95大牙狸', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('690', '8', '3096', '应用宝96音箱蟀', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1029', '8', '5363', 'P363雷之牙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1030', '8', '5364', 'P364连续拳', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('693', '8', '5999', '测试服', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('694', '8', '11008', '火8阿柏蛇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('695', '8', '11009', '火9走路草', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('696', '8', '11010', '火10喇叭芽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('697', '8', '11011', '火11比比鸟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('698', '8', '11012', '火12瓦斯弹', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('699', '8', '11013', '火13大岩蛇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('700', '8', '11014', '火14小磁怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('701', '8', '11015', '火15墨海马', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('702', '8', '5264', 'P264泥巴鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('703', '8', '5265', 'P265鹊桥仙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('704', '8', '5266', 'P266平山海', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('705', '8', '5267', 'P267比翼鸟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('706', '8', '5268', 'P268功夫鼬', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('707', '8', '5269', 'P269师父鼬', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('708', '8', '5270', 'P270赤面龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('709', '8', '5271', 'P271勇士鹰', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('710', '8', '5272', 'P272秃鹰娜', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('711', '8', '5273', 'P273熔蚁兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('712', '8', '5274', 'P274单首龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('713', '8', '5275', 'P275双头龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('714', '8', '5276', 'P276三头龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('715', '8', '5277', 'P277燃烧虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('716', '8', '5278', 'P278火神虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('717', '8', '5279', 'P279龙卷云', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('718', '8', '8157', '157由克希', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('719', '8', '8158', '158帝牙卢卡', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('720', '8', '8159', '159雷吉奇卡斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('721', '8', '8160', '160霏欧纳', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('722', '8', '8161', '161谢米', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('723', '8', '8162', '162口袋新世代', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('724', '8', '8163', '163君主蛇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('725', '8', '8164', '164炎武王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('726', '8', '8165', '165大剑鬼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('727', '8', '8166', '166阿尔宙斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('728', '8', '8167', '167步哨鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('729', '8', '8168', '168哈约克', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('730', '8', '8169', '169扒手猫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('731', '8', '8170', '170花椰猴', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('732', '8', '8171', '171食梦梦', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('733', '8', '8172', '172豆豆鸽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('734', '8', '6133', '硬核133洛托姆', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('735', '8', '6134', '硬核134亚克诺姆', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('736', '8', '6135', '硬核135席多蓝恩', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('737', '8', '6136', '硬核136克雷色利亚', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('738', '8', '6137', '硬核137玛纳霏', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('739', '8', '6138', '硬核138口袋新世代', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('740', '8', '6139', '硬核139青藤蛇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('741', '8', '6140', '硬核140炒炒猪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('742', '8', '6141', '硬核141双刃丸', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('743', '8', '6142', '硬核142探探鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('744', '8', '6143', '硬核143小约克', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('745', '8', '6144', '硬核144长毛狗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('746', '8', '6145', '硬核145酷豹', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('747', '8', '6146', '硬核146爆香猴', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('748', '8', '6147', '硬核147梦梦蚀', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('749', '8', '6148', '硬核148咕咕鸽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('750', '8', '3097', '应用宝97雪妖女', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('751', '8', '3098', '应用宝98艾姆利多', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('752', '8', '3099', '应用宝99帕路奇亚', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('753', '8', '3100', '应用宝100骑拉帝纳', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('754', '8', '3101', '应用宝101达克莱伊', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('755', '8', '3102', '应用宝102藤藤蛇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('756', '8', '3103', '应用宝103暖暖猪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('757', '8', '3104', '应用宝104水水獭', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('758', '8', '5280', 'P280雷电云', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('759', '8', '5281', 'P281土地云', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('760', '8', '5282', 'P282酋雷姆', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('761', '8', '5283', 'P283哈力栗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('762', '8', '5284', 'P284火狐狸', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('763', '8', '5285', 'P285呱头蛙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('764', '8', '5286', 'P286掘掘兔', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('765', '8', '5287', 'P287掘地兔', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('766', '8', '5288', 'P288小箭雀', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('767', '8', '5289', 'P289火箭雀', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('768', '8', '5290', 'P290烈箭鹰', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('769', '8', '5291', 'P291粉蝶虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('770', '8', '5292', 'P292粉蝶蛹', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('771', '8', '5293', 'P293碧粉蝶', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('772', '8', '5294', 'P294小狮狮', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('773', '8', '5295', 'P295小炎狮', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('774', '8', '5296', 'P296花蓓蓓', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('775', '8', '5297', 'P297花叶蒂', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('776', '8', '5298', 'P298独剑鞘', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('777', '8', '5299', 'P299粉香香', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('778', '8', '8173', '173雷电斑马	', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('779', '8', '8174', '174庞岩怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('780', '8', '8175', '175螺钉地鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('781', '8', '8176', '176搬运小匠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('782', '8', '8177', '177圆蝌蚪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('783', '8', '8178', '178投摔鬼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('784', '8', '8179', '179虫宝包', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('785', '8', '8180', '180保姆虫			', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('786', '8', '8181', '181蜈蚣王			', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('787', '8', '8182', '182风妖精', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('788', '8', '8183', '183野蛮鲈鱼	', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('789', '8', '8184', '184混混鳄			', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('790', '8', '8185', '185达摩狒狒			', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('791', '8', '8186', '186石居蟹			', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('792', '8', '8187', '187滑滑小子			', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('793', '8', '8188', '188象征鸟			', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('794', '8', '8189', '189死神棺', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('795', '8', '8190', '190肋骨海龟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('796', '8', '8191', '191始祖大鸟			', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('797', '8', '8192', '192灰尘山', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('798', '8', '8193', '193索罗亚克			', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('799', '8', '8194', '194奇诺栗鼠			', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('800', '8', '8195', '195哥德小姐			', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('801', '8', '8196', '196双卵细胞球			', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('802', '8', '6149', '硬核149斑斑马', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('803', '8', '6150', '硬核150地幔岩', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('804', '8', '6151', '硬核151心蝙蝠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('805', '8', '6152', '硬核152差不多娃娃', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('806', '8', '6153', '硬核153铁骨土人', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('807', '8', '6154', '硬核154蓝蟾蜍', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('808', '8', '6155', '硬核155打击鬼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('809', '8', '6156', '硬核156宝包茧', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('810', '8', '6157', '硬核157车轮球', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('811', '8', '6158', '硬核158木棉球', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('812', '8', '6159', '硬核159裙儿小姐', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('813', '8', '6160', '硬核160黑眼鳄', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('814', '8', '6161', '硬核161火红不倒翁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('815', '8', '6162', '硬核162沙铃仙人掌', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('816', '8', '6163', '硬核163岩殿居蟹', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('817', '8', '6164', '硬核164头巾混混', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('818', '8', '6165', '硬核165哭哭面具', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('819', '8', '6166', '硬核166原盖海龟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('820', '8', '6167', '硬核167始祖小鸟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('821', '8', '6168', '硬核168破破袋', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('822', '8', '6169', '硬核169索罗亚', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('823', '8', '6170', '硬核170泡沫栗鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('824', '8', '6171', '硬核171哥德小童', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('825', '8', '6172', '硬核172单卵细胞球', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('826', '8', '3105', '应用宝105高傲雉鸡', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('827', '8', '3106', '应用宝106石丸子', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('828', '8', '3107', '应用宝107滚滚蝙蝠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('829', '8', '3108', '应用宝108龙头地鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('830', '8', '3109', '应用宝109修建老匠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('831', '8', '3110', '应用宝110蟾蜍王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('832', '8', '3111', '应用宝111百足蜈蚣', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('833', '8', '3112', '应用宝112百合根娃娃', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('834', '8', '3113', '应用宝113流氓鳄', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('835', '8', '3114', '应用宝114哥德宝宝', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('836', '8', '18001', '启智001妙蛙种子', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('837', '8', '18002', '启智002小火龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('838', '8', '18003', '启智003杰尼龟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('839', '8', '5300', 'P300芳香精', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('840', '8', '5301', 'P301胖甜妮', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('841', '8', '5302', 'P302乌贼王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('842', '8', '5303', 'P303龟脚脚', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('843', '8', '5304', 'P304垃垃藻', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('844', '8', '5305', 'P305毒藻龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('845', '8', '5306', 'P306伞电蜥', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('846', '8', '5307', 'P307怪颚龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('847', '8', '5308', 'P308冰雪龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('848', '8', '5309', 'P309咚咚鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('849', '8', '5310', 'P310小碎钻', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('850', '8', '5311', 'P311黏黏宝', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('851', '8', '5312', 'P312黏美儿', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('852', '8', '5313', 'P313黏美龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('853', '8', '5314', 'P314钥圈儿', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('854', '8', '5315', 'P315小木灵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('855', '8', '5316', 'P316朽木妖', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('856', '8', '5317', 'P317南瓜精', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('857', '8', '5318', 'P318音波龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('858', '8', '5319', 'P319冰岩怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('859', '8', '5320', 'P320木木枭', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('860', '8', '5321', 'P321投羽枭', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('861', '8', '5322', 'P322火斑喵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('862', '8', '11016', '火16鲤鱼王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('887', '8', '11030', '火30喵喵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('888', '8', '5323', 'P323炎热喵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('866', '8', '11019', '火19隆隆石', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('867', '8', '11020', '火20独角虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('890', '8', '5235', 'P325猫鼬少', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('870', '8', '11023', '火23穿山鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('871', '8', '11017', '火17角金鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('872', '8', '11024', '火24尼多朗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('873', '8', '11018', '火18雷丘', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('892', '8', '5327', 'P327花舞鸟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('889', '8', '5324', 'P324小笃儿', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('877', '8', '11021', '火21波波', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('878', '8', '11022', '火22烈雀', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('891', '8', '5326', 'P326虫电宝', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('881', '8', '11025', '火25皮皮', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('882', '8', '11026', '火26六尾', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('883', '8', '11027', '火27胖丁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('884', '8', '11028', '火28地鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('885', '8', '11029', '火29超音蝠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('893', '8', '5328', 'P328岩狗狗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('894', '8', '5329', 'P329弱丁鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('895', '8', '5330', 'P330好坏星', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('896', '8', '5331', 'P331超坏星', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('897', '8', '5332', 'P332泥驴仔', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('898', '8', '5333', 'P333滴蛛霸', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('899', '8', '5334', 'P334兰螳花', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('900', '8', '5335', 'P335伪螳草', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('901', '8', '5336', 'P336睡睡菇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('902', '8', '5337', 'P337焰后蜥', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('903', '8', '5338', 'P338童偶熊', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('904', '8', '5339', 'P339穿着熊', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('905', '8', '5340', 'P340甜竹竹', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('906', '8', '5341', 'P341甜舞妮', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('907', '8', '5342', 'P342智挥猩', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('910', '8', '8197', '197舞天鹅', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('911', '8', '8198', '198多多冰', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('912', '8', '6173', '硬核173鸭宝宝', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('913', '8', '6174', '硬核174迷你冰', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('914', '8', '3115', '应用宝115人造细胞卵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('915', '8', '3116', '应用宝116双倍多多冰', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('916', '8', '3117', '应用宝117四季鹿', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('917', '8', '3118', '应用宝118电飞鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('918', '8', '11031', '火31猴怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('919', '8', '11032', '火32卡蒂狗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('920', '8', '11033', '火33凯西', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('921', '8', '11034', '火34腕力', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('922', '8', '11035', '火35玛瑙水母', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('923', '8', '11036', '火36小火马', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('924', '8', '11037', '火37呆呆兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('925', '8', '11038', '火38小海狮', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('926', '8', '11039', '火39大舌贝', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('927', '8', '11040', '火40鬼斯', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('928', '8', '5343', 'P343投掷猴', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('929', '8', '5344', 'P344胆小虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('930', '8', '5345', 'P345沙丘娃', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('931', '8', '5346', 'P346拳海参', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('932', '8', '5347', 'P347小陨星', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('933', '8', '18004', '启智004绿毛虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('934', '8', '18005', '启智005独角虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('935', '8', '18006', '启智006波波', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('936', '8', '18007', '启智007小拉达', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('937', '8', '18008', '启智008烈雀', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('952', '8', '16003', '朋友玩-003神奇道馆', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('951', '8', '16002', '朋友玩-002口袋联盟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('950', '8', '16001', '朋友玩-001精灵学院', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('949', '8', '19001', '进化001皮卡丘', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('947', '8', '5348', 'P348谜拟Ｑ', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('948', '8', '5359', 'P359能量球', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('953', '8', '16004', '朋友玩-004宝贝起源', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('954', '8', '8199', '199骑士蜗牛', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('955', '8', '8200', '200败露球菇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('956', '8', '8201', '201保姆曼波', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('957', '8', '8202', '202电蜘蛛', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('958', '8', '8203', '203齿轮儿', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('959', '8', '8204', '204麻麻小鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('960', '8', '8205', '205麻麻鳗鱼王', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('961', '8', '8206', '206大宇怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('962', '8', '6175', '硬核175盖盖虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('963', '8', '6176', '硬核176哎呀球菇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('964', '8', '6177', '硬核177胖嘟嘟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('965', '8', '6178', '硬核178电电虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('966', '8', '6179', '硬核179坚果哑铃', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('967', '8', '6180', '硬核180齿轮怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('968', '8', '6181', '硬核181麻麻鳗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('969', '8', '6182', '硬核182小灰怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('970', '8', '3119', '应用宝119萌芽鹿', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('971', '8', '3120', '应用宝120轻飘飘', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('972', '8', '3121', '应用宝121种子铁球', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('973', '8', '3122', '应用宝122齿轮组', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('974', '8', '19002', '进化002妙蛙种子', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('975', '8', '19003', '进化003小火龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('976', '8', '19004', '进化004杰尼龟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('977', '8', '19005', '进化005绿毛虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('978', '8', '18009', '启智009阿柏蛇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('979', '8', '18010', '启智010皮卡丘', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('980', '8', '18011', '启智011穿山鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('981', '8', '18012', '启智012尼多兰', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('982', '8', '18013', '启智013尼多朗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('983', '8', '18014', '启智014皮皮', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('984', '8', '18015', '启智015六尾', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('985', '8', '18016', '启智016胖丁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('986', '8', '19006', '进化006独角虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('987', '8', '5350', 'P350心鳞宝', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('988', '8', '5351', 'P351爆肌蚊', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('989', '8', '5352', 'P352电束木', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('990', '8', '5353', 'P353纸御剑', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('991', '8', '5354', 'P354玛夏多', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('992', '8', '5355', 'P355阴影爪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('993', '8', '11041', '火41大钳蟹', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('994', '8', '11042', '火42顽皮球', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('995', '8', '11043', '火43椰树蛋', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('996', '8', '11044', '火44卡拉卡拉', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('997', '8', '11045', '火45飞天螳螂', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('998', '8', '11046', '火46电击兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('999', '8', '11047', '火47大甲', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1000', '8', '11048', '火48肯泰罗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1001', '8', '11049', '火49乘龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1002', '8', '11050', '火50百变怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1003', '8', '3123', '应用宝123烛光灵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1004', '8', '3124', '应用宝124牙牙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1005', '8', '3125', '应用宝125喷嚏熊', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1006', '8', '3126', '应用宝126泥偶小人', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1007', '8', '6183', '硬核183灯火幽灵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1008', '8', '6184', '硬核184斧牙龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1009', '8', '6185', '硬核185冻原熊', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1010', '8', '6186', '硬核186小嘴蜗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1011', '8', '6187', '硬核187泥巴鱼', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1012', '8', '6188', '硬核188师父鼬', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1013', '8', '6189', '硬核189泥偶巨人', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1014', '8', '6190', '硬核190劈斩司令', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1015', '8', '8207', '207水晶灯火灵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1016', '8', '8208', '208双斧战龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1017', '8', '8209', '209几何雪花', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1018', '8', '8210', '210敏捷虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1019', '8', '8211', '211功夫鼬', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1020', '8', '8212', '212赤面龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1021', '8', '8213', '213驹刀小兵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1022', '8', '8214', '214爆炸头水牛', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1035', '8', '18021', '启智021地鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1036', '8', '18022', '启智022喵喵', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1037', '8', '18023', '启智023可达鸭', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1038', '8', '18024', '启智024猴怪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1039', '8', '18025', '启智025卡蒂狗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1040', '8', '18026', '启智026蚊香蝌蚪', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1041', '8', '18027', '启智027凯西', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1042', '8', '6191', '硬核191勇士雄鹰', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1043', '8', '6192', '硬核192熔蚁兽', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1044', '8', '6193', '硬核193双首暴龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1045', '8', '6194', '硬核194火神蛾', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1046', '8', '6195', '硬核195毕力吉翁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1047', '8', '6196', '硬核196雷电云', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1048', '8', '6197', '硬核197捷克罗姆', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1049', '8', '6198', '硬核198酋雷姆', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1050', '8', '6199', '硬核199盖诺赛克特', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1051', '8', '6200', '硬核200胖胖哈力', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1052', '8', '8215', '215秃鹰丫头', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1053', '8', '8216', '216铁蚁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1054', '8', '8217', '217三首恶龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1055', '8', '8218', '218勾帕路翁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1056', '8', '8219', '219龙卷云', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1057', '8', '8220', '220莱希拉姆', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1058', '8', '8221', '221土地云', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1059', '8', '8222', '222凯路迪欧', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1060', '8', '8223', '223哈力栗', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1061', '8', '8224', '224布里卡隆', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1062', '8', '3127', '应用宝127毛头小鹰', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1063', '8', '3128', '应用宝128秃鹰娜', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1064', '8', '3129', '应用宝129单首龙', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1065', '8', '3130', '应用宝130燃烧虫', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1066', '8', '3131', '应用宝131代拉基翁', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1067', '8', '3132', '应用宝132美洛耶塔', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1068', '8', '19007', '进化007比比鸟', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1069', '8', '19008', '进化008小拉达', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1070', '8', '19009', '进化009大嘴雀', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1071', '8', '19010', '进化010阿柏蛇', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1072', '8', '19011', '进化011穿山鼠', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1073', '8', '19012', '进化012尼多兰', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1074', '8', '9001', '海牛ios001皮卡丘', '', '0', '', '', '', '0');
INSERT INTO `web_game_server` VALUES ('1076', '8', '12001', '深海IOS专服1服', '', '0', '', '', '', '0');

-- ----------------------------
-- Table structure for web_index_id
-- ----------------------------
DROP TABLE IF EXISTS `web_index_id`;
CREATE TABLE `web_index_id` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `addtime` int(3) DEFAULT '0',
  `game_id` smallint(4) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5161 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_index_id
-- ----------------------------

-- ----------------------------
-- Table structure for web_ipmobile_limit
-- ----------------------------
DROP TABLE IF EXISTS `web_ipmobile_limit`;
CREATE TABLE `web_ipmobile_limit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operator` varchar(25) NOT NULL,
  `addtime` datetime NOT NULL,
  `reason` text NOT NULL,
  `ipmobile` varchar(100) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1ip 2mobile',
  `status` smallint(1) NOT NULL DEFAULT '0' COMMENT '0正常1删除',
  `game_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1015 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_ipmobile_limit
-- ----------------------------

-- ----------------------------
-- Table structure for web_login_auto
-- ----------------------------
DROP TABLE IF EXISTS `web_login_auto`;
CREATE TABLE `web_login_auto` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` smallint(4) unsigned NOT NULL,
  `channel` varchar(30) NOT NULL,
  `account_id` int(11) unsigned NOT NULL,
  `token` varchar(255) NOT NULL,
  `expired_time` int(4) unsigned NOT NULL,
  `addtime` int(4) unsigned NOT NULL,
  `mac` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=11627726 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_login_auto
-- ----------------------------

-- ----------------------------
-- Table structure for web_manager
-- ----------------------------
DROP TABLE IF EXISTS `web_manager`;
CREATE TABLE `web_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(100) NOT NULL,
  `login_pass` char(32) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `nickname` varchar(100) NOT NULL,
  `login_num` smallint(4) DEFAULT '0',
  `login_time` int(4) DEFAULT '0',
  `reg_time` int(4) DEFAULT '0',
  `login_ip` varchar(50) DEFAULT '0',
  `reg_ip` varchar(50) DEFAULT NULL,
  `game_id` smallint(4) DEFAULT '0',
  `level` tinyint(1) unsigned DEFAULT '0',
  `channel_id` varchar(255) DEFAULT '0',
  `dwFenbao` varchar(255) DEFAULT '0',
  `server_id` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=450 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_manager
-- ----------------------------
INSERT INTO `web_manager` VALUES ('1', 'admin', 'c571637aa1a2e1b1bf862566ba7eae52', '1', '落雪', '1197', '1517467285', '0', '222.76.66.149', null, '8', '1', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('411', 'cp_zhangj', 'c571637aa1a2e1b1bf862566ba7eae52', '1', '张建', '41', '1491879315', '1461550744', '220.160.57.12', '::1', '7', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('412', 'cp_koudai', '04575b44b784bf064c3fb06b94e6b106', '1', '客服专用', '6829', '1517469952', '1468290256', '222.76.66.149', '110.90.12.140', '8', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('413', 'wenschan', 'eb263c77186fceb0f9e6703b7cfa3ab4', '1', 'wenschan', '976', '1517456463', '1469772579', '222.76.66.149', '110.90.15.112', '8', '1', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('414', 'cp_linlf', '36cc2c7f3e3841715166d64b501fff72', '1', '林连帆', '44', '1491754033', '1469787007', '121.204.24.115', '110.90.15.112', '0', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('415', 'water', '58b5c80d65b6e72743ef8a5af73cf74a', '1', '吴兴水', '2704', '1517453448', '1471920749', '222.76.66.149', '121.204.78.186', '8', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('416', 'td_tangxs', 'c571637aa1a2e1b1bf862566ba7eae52', '1', '汤晓森', '59', '1478318817', '1472179407', '110.90.13.167', '110.90.12.45', '0', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('418', 'td_wenglq', '36cc2c7f3e3841715166d64b501fff72', '1', '翁礼强', '511', '1517316760', '1477894861', '222.76.67.38', '110.90.14.135', '8', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('417', 'kefu', '36cc2c7f3e3841715166d64b501fff72', '1', '客服', '5', '1475992386', '1475991212', '110.90.14.223', '110.90.14.223', '8', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('429', 'cp_luoxue', '36cc2c7f3e3841715166d64b501fff72', '1', '落雪', '20', '1484703425', '1480479311', '121.204.104.117', '110.90.13.233', '8', '0', '134', '815001,816001,817001,818001,819001,820001,821001,822001,823001,824001', '8');
INSERT INTO `web_manager` VALUES ('430', 'wangning', 'cd1bc944482029720e09b1922ac4e2db', '1', '王宁', '411', '1517466553', '1480946944', '222.76.66.149', '110.90.13.172', '8', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('431', 'lianfanlin', '425a7909bc10e03d0da8fdda7e0ebaac', '1', '林连帆', '1148', '1517466575', '1481898722', '222.76.67.72', '220.160.57.87', '8', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('432', 'buguangwu', '56255de771392740a625da5528637a1d', '1', '吴步广', '961', '1517463593', '1481898916', '222.76.66.149', '220.160.57.87', '8', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('433', 'ka_play800', '9598dbd5217dc8f9c3dc22c877da1fdb', '1', 'play800', '371', '1517468200', '1484125367', '116.5.200.189', '121.204.104.33', '8', '0', '134', '815001,816001,817001,818001,819001,820001,821001,822001,823001,824001,825001,826001,827001,828001,829001,830001,831001,832001,833001,834001,835001,836001,837001,838001,839001,840001,841001,842001,843001,844001,845001,846001,847001,660001', '1,5');
INSERT INTO `web_manager` VALUES ('434', 'ka_shenhai', '9598dbd5217dc8f9c3dc22c877da1fdb', '1', 'shenhai_ios', '54', '1515738117', '1499322387', '219.135.155.98', '121.204.104.179', '8', '0', '160', '8102', '12');
INSERT INTO `web_manager` VALUES ('436', 'ka_huya', '7195b0e9f45005751bb5a585708c0e19', '1', 'huya', '66', '1517061367', '1500000932', '125.77.66.12', '121.204.104.30', '8', '0', '164', '680001', '14');
INSERT INTO `web_manager` VALUES ('438', 'qa', 'e5b746c9109933bd1e33cd49f260cc22', '1', 'qa', '68', '1516967682', '1500536060', '222.76.66.105', '121.204.104.30', '0', '0', '0', '', '0');
INSERT INTO `web_manager` VALUES ('439', 'chengxu', 'c1786f78e1081fc85e32446c78e9e221', '1', '程序', '19', '1516605577', '1500536259', '222.76.67.82', '121.204.104.30', '0', '0', '0', '', '0');
INSERT INTO `web_manager` VALUES ('440', 'shilan', '909cb0579ffb698617a2b35b272d8d91', '1', '陈诗兰', '621', '1517471210', '1500539207', '222.76.66.149', '121.204.104.30', '0', '0', '0', '', '0');
INSERT INTO `web_manager` VALUES ('441', 'danzhou', 'c4be18bba2e0eabfe7cd5d9b00fb46b2', '1', '刘丹舟', '46', '1505289574', '1500864505', '222.76.67.246', '121.204.104.100', '0', '0', '0', '', '0');
INSERT INTO `web_manager` VALUES ('443', 'huoshu', '49db7e08fcd22e51cd573d2c2824c70e', '1', '火树', '62', '1516432871', '1502090850', '218.19.98.144', '121.204.112.156', '8', '0', '157', '8005,8008', '11');
INSERT INTO `web_manager` VALUES ('444', 'ka_huya2', '5fd93645fda62a133b3409d902c3d97b', '1', '虎牙混服', '4', '1513825010', '1502879378', '121.204.112.39', '222.76.66.220', '8', '0', '164', '680002', '8');
INSERT INTO `web_manager` VALUES ('445', 'shuqing', '3c49149aec9c5ae31f73ae5f310529b5', '1', '李淑青', '9', '1503905936', '1503904107', '222.76.66.9', '222.76.66.9', '8', '0', '0', '', '0');
INSERT INTO `web_manager` VALUES ('446', 'yyyong', '5fd93645fda62a133b3409d902c3d97b', '1', '运营查询', '111', '1517293281', '1504086892', '222.76.66.149', '222.76.66.9', '0', '0', '0', '', '0');
INSERT INTO `web_manager` VALUES ('447', 'ka_pyw', '5fd93645fda62a133b3409d902c3d97b', '1', '朋友玩', '8', '1517403040', '1512724066', '183.236.51.90', '222.76.67.254', '8', '0', '166', '8206', '16');
INSERT INTO `web_manager` VALUES ('448', 'wupeng', '6abef3aebbf1d4046e4d3e22f8d14d6c', '1', '加武鹏', '49', '1517470603', '1513146390', '222.76.66.149', '222.76.67.254', '8', '0', '0', '', '0');
INSERT INTO `web_manager` VALUES ('449', 'askd', '5fd93645fda62a133b3409d902c3d97b', '1', '启智', '48', '1517465281', '1513824275', '119.123.132.83', '121.204.112.39', '8', '0', '178,43,25,114,172,174', '507001,506001,505001,504001,502001,501001', '18');

-- ----------------------------
-- Table structure for web_manual_log
-- ----------------------------
DROP TABLE IF EXISTS `web_manual_log`;
CREATE TABLE `web_manual_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` int(4) NOT NULL DEFAULT '0',
  `server_id` int(11) unsigned NOT NULL,
  `type` smallint(4) NOT NULL DEFAULT '0',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `order_id` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `dwFenBaoID` int(4) unsigned NOT NULL DEFAULT '0',
  `emoney` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addtime` int(4) NOT NULL DEFAULT '0',
  `operator` varchar(30) CHARACTER SET utf8 NOT NULL,
  `verify_time` int(4) NOT NULL DEFAULT '0',
  `verify_level` smallint(4) DEFAULT '0',
  `remark` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `account_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `payCode` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT 'CNY',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderId` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3800 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of web_manual_log
-- ----------------------------

-- ----------------------------
-- Table structure for web_menu
-- ----------------------------
DROP TABLE IF EXISTS `web_menu`;
CREATE TABLE `web_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `m_id` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL COMMENT '等级',
  `parentid` int(11) DEFAULT '0',
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `home` varchar(255) DEFAULT NULL COMMENT '主页',
  `closeable` int(11) DEFAULT '1' COMMENT '是否可关闭',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `ico` varchar(255) DEFAULT NULL,
  `lock` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `m_id` (`m_id`)
) ENGINE=MyISAM AUTO_INCREMENT=223 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单';

-- ----------------------------
-- Records of web_menu
-- ----------------------------
INSERT INTO `web_menu` VALUES ('6', '充值管理', '6', '1', '0', 'payLog', 'index', '', '1', '0', '1', '1', 'nav-inventory', '1');
INSERT INTO `web_menu` VALUES ('186', '时尚管理', '186', '1', '0', 'VgTask', 'index', '', '1', '0', '1', '3', null, '0');
INSERT INTO `web_menu` VALUES ('9', '运营管理', '9', '1', '0', 'codeExchange', 'index', '', '1', '0', '1', '2', 'nav-marketing', '1');
INSERT INTO `web_menu` VALUES ('195', '妆容、发型、皮肤', '186', '3', '189', 'VgModel', 'index', '', '1', '0', '1', '0', null, '0');
INSERT INTO `web_menu` VALUES ('196', '重新加载掉落', '9', '3', '159', 'operators', 'reloadDrop', '', '1', '0', '1', '13', null, '0');
INSERT INTO `web_menu` VALUES ('197', 'ip、机型封解', '9', '3', '159', 'ipmobileLimit', 'index', '', '1', '0', '1', '14', null, '0');
INSERT INTO `web_menu` VALUES ('198', '分包ID设置', '42', '3', '157', 'dwfenbao', 'index', '', '1', '0', '1', '5', null, '0');
INSERT INTO `web_menu` VALUES ('199', '渠道统计', '6', '3', '165', 'payLog', 'fenbaoStatistics', '', '1', '0', '1', '5', null, '0');
INSERT INTO `web_menu` VALUES ('200', '流程等级', '42', '3', '43', 'erpLevel', 'index', '', '1', '0', '1', '4', null, '0');
INSERT INTO `web_menu` VALUES ('202', '充值排行', '6', '3', '165', 'payLog', 'playerStatistics', '', '1', '0', '1', '4', null, '0');
INSERT INTO `web_menu` VALUES ('203', '区服统计', '6', '3', '165', 'payLog', 'serverStatistics', '', '1', '0', '1', '6', null, '0');
INSERT INTO `web_menu` VALUES ('42', '系统管理', '42', '1', '0', 'public', 'about', '', '1', '0', '1', '0', 'nav-home', '1');
INSERT INTO `web_menu` VALUES ('43', '首页', '42', '2', '42', '', '', '', '1', '0', '1', '43', null, '1');
INSERT INTO `web_menu` VALUES ('44', '菜单管理', '42', '3', '43', 'menu', 'index', '', '1', '0', '1', '0', null, '1');
INSERT INTO `web_menu` VALUES ('187', '任务管理', '186', '2', '186', '', '', '', '1', '0', '1', '187', null, '0');
INSERT INTO `web_menu` VALUES ('157', '设置', '42', '2', '42', '', '', '', '1', '0', '1', '157', null, '0');
INSERT INTO `web_menu` VALUES ('158', '修改密码', '42', '3', '157', 'manager', 'edit', '', '1', '0', '1', '0', null, '0');
INSERT INTO `web_menu` VALUES ('159', '运营管理', '9', '2', '9', '', '', '', '1', '0', '1', '159', null, '0');
INSERT INTO `web_menu` VALUES ('160', '激活码列表', '9', '3', '159', 'codeExchange', 'index', '', '1', '0', '1', '0', null, '0');
INSERT INTO `web_menu` VALUES ('161', '激活码生成', '9', '3', '159', 'codeExchange', 'add', '', '1', '0', '1', '1', null, '0');
INSERT INTO `web_menu` VALUES ('162', '关于系统', '42', '3', '157', 'public', 'about', '', '1', '1', '1', '1', null, '0');
INSERT INTO `web_menu` VALUES ('163', '游戏设置', '42', '3', '157', 'game', 'index', '', '1', '0', '1', '2', null, '0');
INSERT INTO `web_menu` VALUES ('164', '渠道管理', '42', '3', '157', 'channel', 'index', '', '1', '0', '1', '3', null, '0');
INSERT INTO `web_menu` VALUES ('165', '充值管理', '6', '2', '6', '', '', '', '1', '0', '1', '165', null, '0');
INSERT INTO `web_menu` VALUES ('166', '充值查询', '6', '3', '165', 'payLog', 'index', '', '1', '0', '1', '0', null, '0');
INSERT INTO `web_menu` VALUES ('168', '网站管理', '9', '2', '9', '', '', '', '1', '0', '1', '168', null, '0');
INSERT INTO `web_menu` VALUES ('169', '导航', '9', '3', '168', 'category', 'index', '', '1', '0', '1', '0', null, '0');
INSERT INTO `web_menu` VALUES ('170', '文章管理', '9', '3', '168', 'article', 'index', '', '1', '0', '1', '0', null, '0');
INSERT INTO `web_menu` VALUES ('201', '游服订单查询', '6', '3', '165', 'payLog', 'gameOrderList', '', '1', '0', '1', '3', null, '0');
INSERT INTO `web_menu` VALUES ('172', '手工充值', '6', '3', '165', 'manualLog', 'index', '', '1', '0', '1', '1', null, '0');
INSERT INTO `web_menu` VALUES ('173', '充值统计', '6', '3', '165', 'payLog', 'statistics', '', '1', '0', '1', '2', null, '0');
INSERT INTO `web_menu` VALUES ('174', '玩家封号', '9', '3', '159', 'operators', 'sealingSolutionLog', '', '1', '0', '1', '2', null, '0');
INSERT INTO `web_menu` VALUES ('175', '物品发放', '9', '3', '159', 'playergoodsLog', 'index', '', '1', '0', '1', '3', null, '0');
INSERT INTO `web_menu` VALUES ('176', '客服命令', '9', '3', '159', 'operators', 'serviceCommand', '', '1', '0', '1', '4', null, '0');
INSERT INTO `web_menu` VALUES ('177', '多服补偿', '9', '3', '159', 'compensateLog', 'index', '', '1', '0', '1', '6', null, '0');
INSERT INTO `web_menu` VALUES ('178', '账号信息查询', '9', '3', '159', 'operators', 'accountInfo', '', '1', '0', '1', '7', null, '0');
INSERT INTO `web_menu` VALUES ('179', '日志查看', '9', '3', '159', 'operators', 'log', '', '1', '0', '1', '9', null, '0');
INSERT INTO `web_menu` VALUES ('181', '角色信息查询', '9', '3', '159', 'operators', 'playerInfo', '', '1', '0', '1', '8', null, '0');
INSERT INTO `web_menu` VALUES ('184', '区服管理', '42', '3', '157', 'gameServer', 'index', '', '1', '0', '1', '4', null, '0');
INSERT INTO `web_menu` VALUES ('185', '游戏公告(多服)', '9', '3', '159', 'operators', 'bulletinLog', '', '1', '0', '1', '10', null, '0');
INSERT INTO `web_menu` VALUES ('117', '角色管理', '42', '3', '43', 'role', 'index', '', '1', '0', '1', '1', null, '0');
INSERT INTO `web_menu` VALUES ('116', '节点管理', '42', '3', '43', 'node', 'index', '', '1', '0', '1', '3', null, '0');
INSERT INTO `web_menu` VALUES ('118', '账号管理', '42', '3', '43', 'manager', 'index', '', '1', '0', '1', '3', null, '0');
INSERT INTO `web_menu` VALUES ('188', '任务查询', '186', '3', '187', 'VgTask', 'index', '', '1', '0', '1', '0', null, '0');
INSERT INTO `web_menu` VALUES ('189', '服饰管理', '186', '2', '186', '', '', '', '1', '0', '1', '189', null, '0');
INSERT INTO `web_menu` VALUES ('190', '服饰查询', '186', '3', '189', 'VgShopitem', 'index', '', '1', '0', '1', '0', null, '0');
INSERT INTO `web_menu` VALUES ('191', '服饰定价', '186', '3', '189', 'VgShopitem', 'setprice', '', '1', '0', '1', '0', null, '0');
INSERT INTO `web_menu` VALUES ('192', '惩罚查询', '9', '3', '159', 'operators', 'serviceCommandLog', '', '1', '0', '1', '5', null, '0');
INSERT INTO `web_menu` VALUES ('193', '自动登录', '9', '3', '159', 'loginAuto', 'index', '', '1', '0', '1', '11', null, '0');
INSERT INTO `web_menu` VALUES ('194', '角色封解', '9', '3', '159', 'operators', 'playerLimitLog', '', '1', '0', '1', '12', null, '0');
INSERT INTO `web_menu` VALUES ('204', '区间统计', '6', '3', '165', 'payLog', 'areaStatistics', '', '1', '0', '1', '7', null, '0');
INSERT INTO `web_menu` VALUES ('205', '账号转换', '9', '3', '159', 'operators', 'accountChange', '', '1', '0', '1', '15', null, '0');
INSERT INTO `web_menu` VALUES ('206', '游戏版图', '9', '3', '159', 'gameEdition', 'index', '', '1', '0', '1', '16', null, '0');
INSERT INTO `web_menu` VALUES ('207', '每月福利', '42', '3', '157', 'welfare', 'index', '', '1', '0', '1', '6', null, '0');
INSERT INTO `web_menu` VALUES ('208', '物品管理', '42', '3', '157', 'addGood', 'index', '', '1', '0', '1', '7', null, '0');
INSERT INTO `web_menu` VALUES ('209', '渠道发送信息', '9', '3', '159', 'OperatorsSe', 'sendFenBaoMessage', '', '1', '0', '1', '17', null, '0');
INSERT INTO `web_menu` VALUES ('210', '渠道查询', '6', '3', '165', 'payLog', 'fenbaoIndex', '', '1', '0', '1', '5', null, '0');
INSERT INTO `web_menu` VALUES ('214', 'T权限管理', '42', '3', '43', 'accessTable', 'index', '', '1', '0', '1', '5', null, '0');
INSERT INTO `web_menu` VALUES ('213', '配置信息', '42', '3', '157', 'config', 'update', '', '1', '0', '1', '0', null, '0');
INSERT INTO `web_menu` VALUES ('215', '内部账号', '42', '3', '157', 'empAccount', 'index', '', '1', '0', '1', '0', null, '0');
INSERT INTO `web_menu` VALUES ('216', '刷新充值方式', '9', '3', '159', 'operators', 'refreshway', '', '1', '0', '1', '20', null, '0');
INSERT INTO `web_menu` VALUES ('222', '运营活动', '9', '3', '159', 'gameEdition', 'actindex', '', '1', '0', '1', '0', null, '0');
INSERT INTO `web_menu` VALUES ('221', '区服ip查询', '9', '3', '159', 'operators', 'getip', '', '1', '0', '1', '0', null, '0');

-- ----------------------------
-- Table structure for web_message
-- ----------------------------
DROP TABLE IF EXISTS `web_message`;
CREATE TABLE `web_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` smallint(4) NOT NULL,
  `username` varchar(30) NOT NULL,
  `code` varchar(10) NOT NULL,
  `addtime` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phonetime` (`username`,`addtime`,`game_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=65589 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_message
-- ----------------------------

-- ----------------------------
-- Table structure for web_node
-- ----------------------------
DROP TABLE IF EXISTS `web_node`;
CREATE TABLE `web_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=536 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of web_node
-- ----------------------------
INSERT INTO `web_node` VALUES ('109', 'update', '修改', '1', '', null, '106', '3', '0', '0');
INSERT INTO `web_node` VALUES ('108', 'add', '新增', '1', '', null, '106', '3', '0', '0');
INSERT INTO `web_node` VALUES ('1', 'Admin', '后台管理', '1', '', null, '0', '1', '0', '0');
INSERT INTO `web_node` VALUES ('110', 'del', '删除', '1', '', null, '106', '3', '0', '0');
INSERT INTO `web_node` VALUES ('107', 'index', '显示', '1', '', null, '106', '3', '0', '0');
INSERT INTO `web_node` VALUES ('106', 'Node', '节点管理', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('111', 'Role', '角色管理', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('112', 'index', '显示', '1', '', null, '111', '3', '0', '0');
INSERT INTO `web_node` VALUES ('113', 'add', '新增', '1', '', null, '111', '3', '0', '0');
INSERT INTO `web_node` VALUES ('114', 'del', '删除', '1', '', null, '111', '3', '0', '0');
INSERT INTO `web_node` VALUES ('115', 'update', '更新', '1', '', null, '111', '3', '0', '0');
INSERT INTO `web_node` VALUES ('116', 'forbid', '禁用', '1', '', null, '111', '3', '0', '0');
INSERT INTO `web_node` VALUES ('117', 'resume', '恢复', '1', '', null, '111', '3', '0', '0');
INSERT INTO `web_node` VALUES ('118', 'app', '授权', '1', '', null, '111', '3', '0', '0');
INSERT INTO `web_node` VALUES ('119', 'setApp', '应用保存', '1', '', null, '111', '3', '0', '0');
INSERT INTO `web_node` VALUES ('120', 'model', '模块授权', '1', '', null, '111', '3', '0', '0');
INSERT INTO `web_node` VALUES ('121', 'setModel', '模块保存', '1', '', null, '111', '3', '0', '0');
INSERT INTO `web_node` VALUES ('122', 'operate', '操作授权', '1', '', null, '111', '3', '0', '0');
INSERT INTO `web_node` VALUES ('123', 'setOperate', '操作保存', '1', '', null, '111', '3', '0', '0');
INSERT INTO `web_node` VALUES ('164', 'Index', '入口', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('165', 'index', '显示', '1', '', null, '164', '3', '0', '0');
INSERT INTO `web_node` VALUES ('166', 'Manager', '账号管理', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('167', 'index', '显示', '1', '', null, '166', '3', '0', '0');
INSERT INTO `web_node` VALUES ('168', 'add', '添加', '1', '', null, '166', '3', '0', '0');
INSERT INTO `web_node` VALUES ('169', 'del', '删除', '1', '', null, '166', '3', '0', '0');
INSERT INTO `web_node` VALUES ('170', 'update', '修改', '1', '', null, '166', '3', '0', '0');
INSERT INTO `web_node` VALUES ('171', 'forbid', '禁用', '1', '', null, '166', '3', '0', '0');
INSERT INTO `web_node` VALUES ('172', 'resume', '恢复', '1', '', null, '166', '3', '0', '0');
INSERT INTO `web_node` VALUES ('403', 'add', '激活码生成', '1', '', null, '401', '3', '0', '0');
INSERT INTO `web_node` VALUES ('402', 'index', '显示', '1', '', null, '401', '3', '0', '0');
INSERT INTO `web_node` VALUES ('401', 'CodeExchange', '激活码', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('396', 'Game', '游戏设置', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('397', 'index', '显示', '1', '', null, '396', '3', '0', '0');
INSERT INTO `web_node` VALUES ('398', 'add', '添加', '1', '', null, '396', '3', '0', '0');
INSERT INTO `web_node` VALUES ('399', 'update', '修改', '1', '', null, '396', '3', '0', '0');
INSERT INTO `web_node` VALUES ('400', 'del', '删除', '1', '', null, '396', '3', '0', '0');
INSERT INTO `web_node` VALUES ('405', 'index', '显示', '1', '', null, '404', '3', '0', '0');
INSERT INTO `web_node` VALUES ('406', 'add', '添加', '1', '', null, '404', '3', '0', '0');
INSERT INTO `web_node` VALUES ('410', 'index', '显示', '1', '', null, '409', '3', '0', '0');
INSERT INTO `web_node` VALUES ('404', 'Channel', '渠道管理', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('336', 'manager', '用户列表', '1', '', null, '111', '3', '0', '0');
INSERT INTO `web_node` VALUES ('337', 'setUser', '保存', '1', '', null, '111', '3', '0', '0');
INSERT INTO `web_node` VALUES ('409', 'PayLog', '充值查询', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('408', 'del', '删除', '1', '', null, '404', '3', '0', '0');
INSERT INTO `web_node` VALUES ('407', 'update', '编辑', '1', '', null, '404', '3', '0', '0');
INSERT INTO `web_node` VALUES ('395', 'edit', '修改密码', '1', '', null, '166', '3', '0', '0');
INSERT INTO `web_node` VALUES ('491', 'areaStatistics', '区间统计', '1', '', null, '409', '3', '0', '0');
INSERT INTO `web_node` VALUES ('412', 'manual', '手工充值', '1', '', null, '409', '3', '0', '0');
INSERT INTO `web_node` VALUES ('413', 'statistics', '充值统计', '1', '', null, '409', '3', '0', '0');
INSERT INTO `web_node` VALUES ('414', 'Operators', '运营管理', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('415', 'sealingSolution', '账号封解', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('416', 'addGood', '添加物品', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('417', 'serviceCommand', '客服命令', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('418', 'compensateGood', '多服补偿', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('419', 'accountInfo', '账号信息查询', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('420', 'log', '日志查看', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('494', 'bulletinCancel', '取消多服公告', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('423', 'playerInfo', '角色信息查询', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('493', 'accountChange', '账号转换', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('426', 'GameServer', '区服管理', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('427', 'index', '显示', '1', '', null, '426', '3', '0', '0');
INSERT INTO `web_node` VALUES ('428', 'add', '新增', '1', '', null, '426', '3', '0', '0');
INSERT INTO `web_node` VALUES ('429', 'update', '编辑', '1', '', null, '426', '3', '0', '0');
INSERT INTO `web_node` VALUES ('430', 'del', '删除', '1', '', null, '426', '3', '0', '0');
INSERT INTO `web_node` VALUES ('431', 'bulletin', '添加多服公告', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('432', 'Category', '文章导航', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('433', 'update', '修改', '1', '', null, '432', '3', '0', '0');
INSERT INTO `web_node` VALUES ('439', 'index', '显示', '1', '', null, '432', '3', '0', '0');
INSERT INTO `web_node` VALUES ('438', 'del', '删除', '1', '', null, '432', '3', '0', '0');
INSERT INTO `web_node` VALUES ('437', 'add', '新增', '1', '', null, '432', '3', '0', '0');
INSERT INTO `web_node` VALUES ('440', 'Article', '文章管理', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('441', 'update', '修改', '1', '', null, '440', '3', '0', '0');
INSERT INTO `web_node` VALUES ('442', 'add', '新增', '1', '', null, '440', '3', '0', '0');
INSERT INTO `web_node` VALUES ('443', 'del', '删除', '1', '', null, '440', '3', '0', '0');
INSERT INTO `web_node` VALUES ('444', 'index', '显示', '1', '', null, '440', '3', '0', '0');
INSERT INTO `web_node` VALUES ('445', 'supplement', '补单', '1', '', null, '409', '3', '0', '0');
INSERT INTO `web_node` VALUES ('446', 'gameOrderList', '游服订单查询', '1', '', null, '409', '3', '0', '0');
INSERT INTO `web_node` VALUES ('447', 'playerStatistics', '充值排行', '1', '', null, '409', '3', '0', '0');
INSERT INTO `web_node` VALUES ('448', 'LoginAuto', '自动登录', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('449', 'index', '显示', '1', '', null, '448', '3', '0', '0');
INSERT INTO `web_node` VALUES ('492', 'bulletinLog', '游戏多服公告显示', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('451', 'cancelServiceCommand', '取消滚动消息', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('452', 'serviceCommandLog', '惩罚查询', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('453', 'sealingSolutionLog', '账号封解列表', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('454', 'playerLimitLog', '角色封解', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('455', 'playerLimit', '角色封解添加', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('456', 'reloadDrop', '重新加载掉落', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('457', 'IpmobileLimit', 'ip、机型封解', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('458', 'index', '显示', '1', '', null, '457', '3', '0', '0');
INSERT INTO `web_node` VALUES ('459', 'add', '添加', '1', '', null, '457', '3', '0', '0');
INSERT INTO `web_node` VALUES ('460', 'cancel', '取消', '1', '', null, '457', '3', '0', '0');
INSERT INTO `web_node` VALUES ('461', 'Menu', '菜单管理', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('462', 'index', '显示', '1', '', null, '461', '3', '0', '0');
INSERT INTO `web_node` VALUES ('463', 'add', '添加', '1', '', null, '461', '3', '0', '0');
INSERT INTO `web_node` VALUES ('464', 'update', '编辑', '1', '', null, '461', '3', '0', '0');
INSERT INTO `web_node` VALUES ('465', 'del', '删除', '1', '', null, '461', '3', '0', '0');
INSERT INTO `web_node` VALUES ('466', 'fenbaoStatistics', '渠道统计', '1', '', null, '409', '3', '0', '0');
INSERT INTO `web_node` VALUES ('467', 'serverStatistics', '区服统计', '1', '', null, '409', '3', '0', '0');
INSERT INTO `web_node` VALUES ('468', 'ErpLevel', '流程等级', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('469', 'index', '显示', '1', '', null, '468', '3', '0', '0');
INSERT INTO `web_node` VALUES ('470', 'add', '添加', '1', '', null, '468', '3', '0', '0');
INSERT INTO `web_node` VALUES ('471', 'update', '编辑', '1', '', null, '468', '3', '0', '0');
INSERT INTO `web_node` VALUES ('472', 'del', '删除', '1', '', null, '468', '3', '0', '0');
INSERT INTO `web_node` VALUES ('473', 'ManualLog', '手工充值', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('474', 'index', '显示', '1', '', null, '473', '3', '0', '0');
INSERT INTO `web_node` VALUES ('475', 'add', '添加', '1', '', null, '473', '3', '0', '0');
INSERT INTO `web_node` VALUES ('476', 'update', '编辑', '1', '', null, '473', '3', '0', '0');
INSERT INTO `web_node` VALUES ('477', 'pass', '通过', '1', '', null, '473', '3', '0', '0');
INSERT INTO `web_node` VALUES ('478', 'repass', '退回', '1', '', null, '473', '3', '0', '0');
INSERT INTO `web_node` VALUES ('479', 'PlayergoodsLog', '物品发放', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('480', 'index', '显示', '1', '', null, '479', '3', '0', '0');
INSERT INTO `web_node` VALUES ('481', 'add', '添加', '1', '', null, '479', '3', '0', '0');
INSERT INTO `web_node` VALUES ('482', 'update', '编辑', '1', '', null, '479', '3', '0', '0');
INSERT INTO `web_node` VALUES ('483', 'pass', '通过', '1', '', null, '479', '3', '0', '0');
INSERT INTO `web_node` VALUES ('484', 'repass', '退回', '1', '', null, '479', '3', '0', '0');
INSERT INTO `web_node` VALUES ('485', 'CompensateLog', '多服补偿', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('486', 'index', '显示', '1', '', null, '485', '3', '0', '0');
INSERT INTO `web_node` VALUES ('487', 'add', '添加', '1', '', null, '485', '3', '0', '0');
INSERT INTO `web_node` VALUES ('488', 'update', '编辑', '1', '', null, '485', '3', '0', '0');
INSERT INTO `web_node` VALUES ('489', 'pass', '通过', '1', '', null, '485', '3', '0', '0');
INSERT INTO `web_node` VALUES ('490', 'repass', '退回', '1', '', null, '485', '3', '0', '0');
INSERT INTO `web_node` VALUES ('495', 'GameEdition', '游戏版图', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('496', 'index', '显示', '1', '', null, '495', '3', '0', '0');
INSERT INTO `web_node` VALUES ('497', 'add', '添加', '1', '', null, '495', '3', '0', '0');
INSERT INTO `web_node` VALUES ('498', 'update', '编辑', '1', '', null, '495', '3', '0', '0');
INSERT INTO `web_node` VALUES ('499', 'codeLog', '激活码领取log', '1', '', null, '401', '3', '0', '0');
INSERT INTO `web_node` VALUES ('500', 'Dwfenbao', '分包ID设置', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('501', 'index', '显示', '1', '', null, '500', '3', '0', '0');
INSERT INTO `web_node` VALUES ('502', 'add', '添加', '1', '', null, '500', '3', '0', '0');
INSERT INTO `web_node` VALUES ('503', 'update', '编辑', '1', '', null, '500', '3', '0', '0');
INSERT INTO `web_node` VALUES ('504', 'del', '删除', '1', '', null, '500', '3', '0', '0');
INSERT INTO `web_node` VALUES ('505', 'AddGood', '物品管理', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('506', 'index', '显示', '1', '', null, '505', '3', '0', '0');
INSERT INTO `web_node` VALUES ('507', 'add', '添加', '1', '', null, '505', '3', '0', '0');
INSERT INTO `web_node` VALUES ('508', 'update', '编辑', '1', '', null, '505', '3', '0', '0');
INSERT INTO `web_node` VALUES ('509', 'del', '删除', '1', '', null, '505', '3', '0', '0');
INSERT INTO `web_node` VALUES ('510', 'OperatorsSe', '渠道发送消息', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('511', 'sendFenBaoMessage', '发送消息', '1', '', null, '510', '3', '0', '0');
INSERT INTO `web_node` VALUES ('512', 'oneKeyPass', '一键审核', '1', '', null, '479', '3', '0', '0');
INSERT INTO `web_node` VALUES ('513', 'fenbaoIndex', '渠道查询', '1', '', null, '409', '3', '0', '0');
INSERT INTO `web_node` VALUES ('514', 'Config', '配置信息', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('515', 'update', '修改', '1', '', null, '514', '3', '0', '0');
INSERT INTO `web_node` VALUES ('516', 'AccessTable', 'T权限管理', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('517', 'index', '显示', '1', '', null, '516', '3', '0', '0');
INSERT INTO `web_node` VALUES ('518', 'add', '添加', '1', '', null, '516', '3', '0', '0');
INSERT INTO `web_node` VALUES ('519', 'update', '更新', '1', '', null, '516', '3', '0', '0');
INSERT INTO `web_node` VALUES ('520', 'del', '删除', '1', '', null, '516', '3', '0', '0');
INSERT INTO `web_node` VALUES ('521', 'oneKeyPass', '一键补单', '1', '', null, '409', '3', '0', '0');
INSERT INTO `web_node` VALUES ('522', 'EmpAccount', '内部帐号', '1', '', null, '1', '2', '0', '0');
INSERT INTO `web_node` VALUES ('523', 'index', '显示', '1', '', null, '522', '3', '0', '0');
INSERT INTO `web_node` VALUES ('524', 'add', '新增', '1', '', null, '522', '3', '0', '0');
INSERT INTO `web_node` VALUES ('525', 'refreshway', '刷新充值配置', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('530', 'oneKeyPass', '一键审核', '1', '', null, '473', '3', '0', '0');
INSERT INTO `web_node` VALUES ('529', 'getip', '区服ip查询', '1', '', null, '414', '3', '0', '0');
INSERT INTO `web_node` VALUES ('531', 'upfile', '批量上传', '1', '', null, '479', '3', '0', '0');
INSERT INTO `web_node` VALUES ('532', 'actindex', '活动显示', '1', '', null, '495', '3', '0', '0');
INSERT INTO `web_node` VALUES ('533', 'actadd', '活动添加', '1', '', null, '495', '3', '0', '0');
INSERT INTO `web_node` VALUES ('534', 'actedit', '活动编辑', '1', '', null, '495', '3', '0', '0');
INSERT INTO `web_node` VALUES ('535', 'actupdate', '活动修改', '1', '', null, '495', '3', '0', '0');

-- ----------------------------
-- Table structure for web_pay_log
-- ----------------------------
DROP TABLE IF EXISTS `web_pay_log`;
CREATE TABLE `web_pay_log` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `PayID` int(4) DEFAULT NULL,
  `PayName` varchar(50) DEFAULT NULL,
  `ServerID` int(4) DEFAULT NULL,
  `PayMoney` float(10,2) DEFAULT '0.00',
  `OrderID` varchar(200) DEFAULT NULL,
  `CardNO` varchar(50) DEFAULT NULL,
  `CardPwd` varchar(50) DEFAULT NULL,
  `BankID` varchar(50) DEFAULT NULL,
  `BankOrderID` varchar(50) DEFAULT NULL,
  `rpCode` varchar(30) DEFAULT NULL,
  `rpTime` datetime DEFAULT NULL,
  `PayType` int(4) DEFAULT NULL,
  `dwFenBaoID` varchar(50) DEFAULT NULL,
  `Add_Time` datetime DEFAULT NULL,
  `PayCode` varchar(50) DEFAULT 'CNY',
  `SubStat` tinyint(1) NOT NULL DEFAULT '1',
  `IsUC` int(11) DEFAULT '0',
  `CPID` int(11) DEFAULT NULL,
  `tag` enum('0','1') NOT NULL DEFAULT '0',
  `game_id` smallint(3) NOT NULL DEFAULT '1',
  `clienttype` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `packageName` varchar(255) DEFAULT NULL,
  `channelID` varchar(255) DEFAULT NULL,
  `currency` varchar(30) DEFAULT NULL,
  `isbt` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `OrderID` (`OrderID`) USING BTREE,
  KEY `payIdGameId` (`PayID`,`game_id`),
  KEY `addTime` (`Add_Time`) USING BTREE,
  KEY `idx_cpid` (`CPID`)
) ENGINE=MyISAM AUTO_INCREMENT=3414112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_pay_log
-- ----------------------------

-- ----------------------------
-- Table structure for web_paypal_order
-- ----------------------------
DROP TABLE IF EXISTS `web_paypal_order`;
CREATE TABLE `web_paypal_order` (
  `id` int(11) NOT NULL,
  `orderid` varchar(255) NOT NULL,
  `Add_time` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `accountid` int(11) NOT NULL,
  `serverid` int(11) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_paypal_order
-- ----------------------------

-- ----------------------------
-- Table structure for web_player_limit
-- ----------------------------
DROP TABLE IF EXISTS `web_player_limit`;
CREATE TABLE `web_player_limit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `server_id` int(11) NOT NULL,
  `operator` varchar(25) NOT NULL,
  `addtime` datetime NOT NULL,
  `reason` text NOT NULL,
  `player_id` int(11) NOT NULL,
  `player_name` varchar(30) NOT NULL,
  `type` smallint(1) NOT NULL DEFAULT '0',
  `endtime` int(4) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_player_limit
-- ----------------------------

-- ----------------------------
-- Table structure for web_playergoods_log
-- ----------------------------
DROP TABLE IF EXISTS `web_playergoods_log`;
CREATE TABLE `web_playergoods_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` smallint(4) unsigned NOT NULL,
  `server_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `player_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `addtime` int(4) NOT NULL DEFAULT '0',
  `operator` varchar(30) NOT NULL,
  `verify_level` smallint(4) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `type1` smallint(4) unsigned NOT NULL,
  `param1` bigint(20) unsigned NOT NULL DEFAULT '0',
  `amount1` int(11) unsigned NOT NULL DEFAULT '0',
  `type2` smallint(4) DEFAULT NULL,
  `param2` bigint(20) unsigned DEFAULT '0',
  `amount2` int(11) unsigned DEFAULT '0',
  `type3` smallint(4) DEFAULT NULL,
  `param3` bigint(20) unsigned DEFAULT '0',
  `amount3` int(11) unsigned DEFAULT '0',
  `type4` smallint(4) DEFAULT NULL,
  `param4` bigint(20) unsigned DEFAULT '0',
  `amount4` int(11) unsigned DEFAULT '0',
  `remark` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59664 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_playergoods_log
-- ----------------------------

-- ----------------------------
-- Table structure for web_role
-- ----------------------------
DROP TABLE IF EXISTS `web_role`;
CREATE TABLE `web_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `ename` varchar(5) DEFAULT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `ename` (`ename`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of web_role
-- ----------------------------
INSERT INTO `web_role` VALUES ('14', '普通管理员', '0', '1', '运营操作', null, '1386894906', '1465353011');
INSERT INTO `web_role` VALUES ('11', '系统管理员', '0', '1', '', null, '1385429792', '1386894859');
INSERT INTO `web_role` VALUES ('17', '文章编辑', '0', '1', '', null, '1471416654', '1471416654');
INSERT INTO `web_role` VALUES ('18', '口袋妖怪', '0', '1', '', null, '1474437110', '1474437110');
INSERT INTO `web_role` VALUES ('19', '手工充值', '0', '1', '', null, '1474946793', '1474946793');
INSERT INTO `web_role` VALUES ('20', '渠道', '0', '1', '', null, '1479173064', '1479173064');
INSERT INTO `web_role` VALUES ('21', 'erp流程', '0', '1', '手工充值、物品发放、多服补偿', null, '1481870135', '1481870135');
INSERT INTO `web_role` VALUES ('22', '运营人员', '0', '1', '', null, '1481899015', '1481899015');
INSERT INTO `web_role` VALUES ('23', '审核', '0', '1', '', null, '1481900550', '1481900550');
INSERT INTO `web_role` VALUES ('24', 'test', '0', '1', '临时启用', null, '1501261021', '1501261021');
INSERT INTO `web_role` VALUES ('25', '运营查询', '0', '1', '运营查询', null, '1504086648', '1504086648');
INSERT INTO `web_role` VALUES ('26', '运营活动配置', '0', '1', '', null, '1513146278', '1513146278');
INSERT INTO `web_role` VALUES ('27', '渠道2', '0', '1', '', null, '1513851592', '1513851592');

-- ----------------------------
-- Table structure for web_role_user
-- ----------------------------
DROP TABLE IF EXISTS `web_role_user`;
CREATE TABLE `web_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of web_role_user
-- ----------------------------
INSERT INTO `web_role_user` VALUES ('24', '442');
INSERT INTO `web_role_user` VALUES ('18', '441');
INSERT INTO `web_role_user` VALUES ('18', '440');
INSERT INTO `web_role_user` VALUES ('21', '432');
INSERT INTO `web_role_user` VALUES ('25', '446');
INSERT INTO `web_role_user` VALUES ('17', '415');
INSERT INTO `web_role_user` VALUES ('17', '414');
INSERT INTO `web_role_user` VALUES ('18', '439');
INSERT INTO `web_role_user` VALUES ('14', '414');
INSERT INTO `web_role_user` VALUES ('18', '438');
INSERT INTO `web_role_user` VALUES ('18', '432');
INSERT INTO `web_role_user` VALUES ('19', '413');
INSERT INTO `web_role_user` VALUES ('18', '430');
INSERT INTO `web_role_user` VALUES ('18', '417');
INSERT INTO `web_role_user` VALUES ('18', '418');
INSERT INTO `web_role_user` VALUES ('18', '415');
INSERT INTO `web_role_user` VALUES ('18', '413');
INSERT INTO `web_role_user` VALUES ('20', '447');
INSERT INTO `web_role_user` VALUES ('17', '412');
INSERT INTO `web_role_user` VALUES ('18', '412');
INSERT INTO `web_role_user` VALUES ('20', '444');
INSERT INTO `web_role_user` VALUES ('20', '443');
INSERT INTO `web_role_user` VALUES ('11', '413');
INSERT INTO `web_role_user` VALUES ('21', '431');
INSERT INTO `web_role_user` VALUES ('21', '414');
INSERT INTO `web_role_user` VALUES ('21', '413');
INSERT INTO `web_role_user` VALUES ('21', '412');
INSERT INTO `web_role_user` VALUES ('22', '432');
INSERT INTO `web_role_user` VALUES ('23', '413');
INSERT INTO `web_role_user` VALUES ('11', '1');
INSERT INTO `web_role_user` VALUES ('22', '431');
INSERT INTO `web_role_user` VALUES ('20', '436');
INSERT INTO `web_role_user` VALUES ('17', '445');
INSERT INTO `web_role_user` VALUES ('20', '434');
INSERT INTO `web_role_user` VALUES ('20', '433');
INSERT INTO `web_role_user` VALUES ('18', '448');
INSERT INTO `web_role_user` VALUES ('26', '448');
INSERT INTO `web_role_user` VALUES ('20', '429');
INSERT INTO `web_role_user` VALUES ('27', '449');

-- ----------------------------
-- Table structure for web_share_log
-- ----------------------------
DROP TABLE IF EXISTS `web_share_log`;
CREATE TABLE `web_share_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL COMMENT '账号id',
  `logdate` int(11) NOT NULL COMMENT '分享日期',
  `server_id` int(11) NOT NULL COMMENT '区服',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk` (`player_id`,`logdate`,`server_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_share_log
-- ----------------------------

-- ----------------------------
-- Table structure for web_token
-- ----------------------------
DROP TABLE IF EXISTS `web_token`;
CREATE TABLE `web_token` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL,
  `game_id` smallint(4) NOT NULL DEFAULT '0',
  `token` text NOT NULL,
  `addtime` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accountIdOrGameId` (`account_id`,`game_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1110162 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_token
-- ----------------------------

-- ----------------------------
-- Table structure for web_user_code
-- ----------------------------
DROP TABLE IF EXISTS `web_user_code`;
CREATE TABLE `web_user_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `code_id` int(11) NOT NULL COMMENT '掉落id',
  `ctime` int(11) NOT NULL COMMENT '领取时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk` (`player_id`,`server_id`,`code_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_user_code
-- ----------------------------

-- ----------------------------
-- Table structure for web_welfare
-- ----------------------------
DROP TABLE IF EXISTS `web_welfare`;
CREATE TABLE `web_welfare` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `real_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `player_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `emoney` smallint(4) unsigned NOT NULL DEFAULT '1000',
  `server_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `player_id` int(11) unsigned NOT NULL DEFAULT '0',
  `pay_date` char(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pay_used_date` char(6) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of web_welfare
-- ----------------------------
