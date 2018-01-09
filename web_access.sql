/*
Navicat MySQL Data Transfer

Source Server         : 时尚web
Source Server Version : 50636
Source Host           : localhost:3306
Source Database       : u591

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2018-01-08 11:21:30
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
INSERT INTO `web_access` VALUES ('11', '415', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '413', '3', '409', null);
INSERT INTO `web_access` VALUES ('11', '426', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '414', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '409', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '107', '3', '106', null);
INSERT INTO `web_access` VALUES ('11', '108', '3', '106', null);
INSERT INTO `web_access` VALUES ('11', '109', '3', '106', null);
INSERT INTO `web_access` VALUES ('11', '110', '3', '106', null);
INSERT INTO `web_access` VALUES ('11', '112', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '113', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '114', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '115', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '116', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '117', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '118', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '119', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '120', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '121', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '122', '3', '111', null);
INSERT INTO `web_access` VALUES ('11', '123', '3', '111', null);
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
INSERT INTO `web_access` VALUES ('11', '412', '3', '409', null);
INSERT INTO `web_access` VALUES ('11', '411', '3', '409', null);
INSERT INTO `web_access` VALUES ('11', '410', '3', '409', null);
INSERT INTO `web_access` VALUES ('11', '403', '3', '401', null);
INSERT INTO `web_access` VALUES ('11', '402', '3', '401', null);
INSERT INTO `web_access` VALUES ('11', '395', '3', '166', null);
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
INSERT INTO `web_access` VALUES ('14', '426', '2', '1', null);
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
INSERT INTO `web_access` VALUES ('14', '414', '2', '1', null);
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
INSERT INTO `web_access` VALUES ('14', '409', '2', '1', null);
INSERT INTO `web_access` VALUES ('14', '166', '2', '1', null);
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
INSERT INTO `web_access` VALUES ('11', '401', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '166', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('11', '416', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '417', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '418', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '419', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '420', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '421', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '422', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '423', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '424', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '425', '3', '414', null);
INSERT INTO `web_access` VALUES ('14', '431', '3', '414', null);
INSERT INTO `web_access` VALUES ('11', '429', '3', '426', null);
INSERT INTO `web_access` VALUES ('11', '428', '3', '426', null);
INSERT INTO `web_access` VALUES ('11', '427', '3', '426', null);
INSERT INTO `web_access` VALUES ('17', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('17', '432', '2', '1', null);
INSERT INTO `web_access` VALUES ('17', '440', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('17', '439', '3', '432', null);
INSERT INTO `web_access` VALUES ('17', '437', '3', '432', null);
INSERT INTO `web_access` VALUES ('17', '433', '3', '432', null);
INSERT INTO `web_access` VALUES ('17', '441', '3', '440', null);
INSERT INTO `web_access` VALUES ('17', '442', '3', '440', null);
INSERT INTO `web_access` VALUES ('17', '443', '3', '440', null);
INSERT INTO `web_access` VALUES ('17', '444', '3', '440', null);
INSERT INTO `web_access` VALUES ('18', '426', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '414', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '409', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '401', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '166', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '165', '3', '164', null);
INSERT INTO `web_access` VALUES ('18', '395', '3', '166', null);
INSERT INTO `web_access` VALUES ('18', '455', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '402', '3', '401', null);
INSERT INTO `web_access` VALUES ('19', '445', '3', '409', null);
INSERT INTO `web_access` VALUES ('18', '446', '3', '409', null);
INSERT INTO `web_access` VALUES ('18', '413', '3', '409', null);
INSERT INTO `web_access` VALUES ('18', '410', '3', '409', null);
INSERT INTO `web_access` VALUES ('18', '427', '3', '426', null);
INSERT INTO `web_access` VALUES ('18', '428', '3', '426', null);
INSERT INTO `web_access` VALUES ('18', '429', '3', '426', null);
INSERT INTO `web_access` VALUES ('18', '430', '3', '426', null);
INSERT INTO `web_access` VALUES ('18', '454', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '447', '3', '409', null);
INSERT INTO `web_access` VALUES ('18', '453', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '452', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '451', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '450', '3', '414', null);
INSERT INTO `web_access` VALUES ('19', '409', '2', '1', null);
INSERT INTO `web_access` VALUES ('19', '401', '2', '1', null);
INSERT INTO `web_access` VALUES ('19', '412', '3', '409', null);
INSERT INTO `web_access` VALUES ('19', '165', '3', '164', null);
INSERT INTO `web_access` VALUES ('19', '411', '3', '409', null);
INSERT INTO `web_access` VALUES ('19', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('19', '416', '3', '414', null);
INSERT INTO `web_access` VALUES ('19', '418', '3', '414', null);
INSERT INTO `web_access` VALUES ('19', '414', '2', '1', null);
INSERT INTO `web_access` VALUES ('19', '403', '3', '401', null);
INSERT INTO `web_access` VALUES ('18', '431', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '448', '2', '1', null);
INSERT INTO `web_access` VALUES ('18', '449', '3', '448', null);
INSERT INTO `web_access` VALUES ('18', '423', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '420', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '419', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '417', '3', '414', null);
INSERT INTO `web_access` VALUES ('18', '415', '3', '414', null);
INSERT INTO `web_access` VALUES ('20', '1', '1', '0', null);
INSERT INTO `web_access` VALUES ('20', '166', '2', '1', null);
INSERT INTO `web_access` VALUES ('20', '164', '2', '1', null);
INSERT INTO `web_access` VALUES ('20', '165', '3', '164', null);
INSERT INTO `web_access` VALUES ('20', '419', '3', '414', null);
INSERT INTO `web_access` VALUES ('20', '423', '3', '414', null);
INSERT INTO `web_access` VALUES ('20', '452', '3', '414', null);
INSERT INTO `web_access` VALUES ('20', '454', '3', '414', null);
INSERT INTO `web_access` VALUES ('20', '414', '2', '1', null);
INSERT INTO `web_access` VALUES ('20', '395', '3', '166', null);
INSERT INTO `web_access` VALUES ('18', '456', '3', '414', null);

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_account_limit
-- ----------------------------

-- ----------------------------
-- Table structure for web_add_good
-- ----------------------------
DROP TABLE IF EXISTS `web_add_good`;
CREATE TABLE `web_add_good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL DEFAULT '0',
  `itemtype_id` bigint(11) NOT NULL DEFAULT '0',
  `amount_limit` int(11) NOT NULL DEFAULT '0',
  `sql_string_1` varchar(500) CHARACTER SET gbk NOT NULL DEFAULT '',
  `sql_string_2` varchar(500) CHARACTER SET gbk NOT NULL DEFAULT '',
  `sql_string_3` varchar(500) CHARACTER SET gbk NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `game_id` (`game_id`,`itemtype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1242 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_add_good
-- ----------------------------

-- ----------------------------
-- Table structure for web_article
-- ----------------------------
DROP TABLE IF EXISTS `web_article`;
CREATE TABLE `web_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `images` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `come` varchar(20) NOT NULL,
  `author` varchar(20) NOT NULL,
  `visits` smallint(6) NOT NULL,
  `seo_title` varchar(100) NOT NULL,
  `seo_keyword` varchar(150) NOT NULL,
  `seo_desc` varchar(200) NOT NULL,
  `cate_name` varchar(30) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `addtime` int(11) NOT NULL,
  `game_id` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_article
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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_channel
-- ----------------------------
INSERT INTO `web_channel` VALUES ('1', '48', 'lenovo充值', '1');
INSERT INTO `web_channel` VALUES ('2', '9', '手工充值', '0');
INSERT INTO `web_channel` VALUES ('3', '22', 'pp助手充值', '1');
INSERT INTO `web_channel` VALUES ('4', '12', '91充值', '0');
INSERT INTO `web_channel` VALUES ('5', '21', '当乐充值', '0');
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
INSERT INTO `web_channel` VALUES ('49', '91', '爱思充值', '0');
INSERT INTO `web_channel` VALUES ('50', '92', '游龙充值', '0');
INSERT INTO `web_channel` VALUES ('51', '93', '起点充值', '0');
INSERT INTO `web_channel` VALUES ('52', '94', '蜗牛充值', '0');
INSERT INTO `web_channel` VALUES ('53', '95', '人人充值', '0');
INSERT INTO `web_channel` VALUES ('54', '96', '平安充值', '0');
INSERT INTO `web_channel` VALUES ('55', '97', 'XY苹果助手', '1');
INSERT INTO `web_channel` VALUES ('56', '98', '海马充值', '0');
INSERT INTO `web_channel` VALUES ('57', '99', '冒泡充值', '0');
INSERT INTO `web_channel` VALUES ('58', '100', 'wo商城', '0');
INSERT INTO `web_channel` VALUES ('59', '101', '绿岸充值', '0');
INSERT INTO `web_channel` VALUES ('60', '102', 'momo充值', '0');
INSERT INTO `web_channel` VALUES ('61', '103', '豌豆荚充值', '0');
INSERT INTO `web_channel` VALUES ('62', '104', 'YY充值', '0');
INSERT INTO `web_channel` VALUES ('63', '105', '海马android充值', '0');
INSERT INTO `web_channel` VALUES ('64', '106', '金立充值', '0');
INSERT INTO `web_channel` VALUES ('65', '107', '游酷充值', '0');
INSERT INTO `web_channel` VALUES ('66', '108', '同步充值', '0');
INSERT INTO `web_channel` VALUES ('67', '109', '柴米充值', '0');
INSERT INTO `web_channel` VALUES ('68', '110', '37wan-ios2', '0');
INSERT INTO `web_channel` VALUES ('69', '111', '百度91充值', '1');
INSERT INTO `web_channel` VALUES ('70', '112', '靠谱充值', '1');
INSERT INTO `web_channel` VALUES ('71', '113', '海港', '1');
INSERT INTO `web_channel` VALUES ('72', '114', 'ysdk', '1');
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_id` (`code_id`),
  KEY `account_id` (`account_id`),
  KEY `user_type` (`used_type`)
) ENGINE=MyISAM AUTO_INCREMENT=6541589 DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_code_exchange_log
-- ----------------------------

-- ----------------------------
-- Table structure for web_code_website
-- ----------------------------
DROP TABLE IF EXISTS `web_code_website`;
CREATE TABLE `web_code_website` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `code_id` varchar(30) COLLATE utf8_bin DEFAULT '',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `used_time` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_id` (`code_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10102 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of web_code_website
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
-- Table structure for web_game
-- ----------------------------
DROP TABLE IF EXISTS `web_game`;
CREATE TABLE `web_game` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` int(10) unsigned NOT NULL,
  `game_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_game
-- ----------------------------
INSERT INTO `web_game` VALUES ('1', '7', '合金弹头');
INSERT INTO `web_game` VALUES ('2', '5', '三国');
INSERT INTO `web_game` VALUES ('3', '8', '口袋妖怪');

-- ----------------------------
-- Table structure for web_game_server
-- ----------------------------
DROP TABLE IF EXISTS `web_game_server`;
CREATE TABLE `web_game_server` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` int(10) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `server_name` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_game_server
-- ----------------------------
INSERT INTO `web_game_server` VALUES ('2', '7', '1102', '1102服-测试', '0');
INSERT INTO `web_game_server` VALUES ('3', '7', '701', 'server1', '0');
INSERT INTO `web_game_server` VALUES ('6', '8', '8001', '皮卡丘', '0');
INSERT INTO `web_game_server` VALUES ('7', '8', '8002', '妙蛙种子', '0');
INSERT INTO `web_game_server` VALUES ('9', '8', '1101', 'test', '0');
INSERT INTO `web_game_server` VALUES ('10', '8', '8003', '小火龙', '1');
INSERT INTO `web_game_server` VALUES ('11', '8', '8004', '杰尼龟', '1');
INSERT INTO `web_game_server` VALUES ('12', '8', '8005', '绿毛虫', '1');
INSERT INTO `web_game_server` VALUES ('13', '8', '8006', '独角虫', '1');
INSERT INTO `web_game_server` VALUES ('14', '8', '8007', '比比鸟', '1');
INSERT INTO `web_game_server` VALUES ('15', '8', '8008', '小拉达', '1');
INSERT INTO `web_game_server` VALUES ('16', '8', '8009', '大嘴雀', '1');
INSERT INTO `web_game_server` VALUES ('17', '8', '8010', '阿柏蛇', '1');
INSERT INTO `web_game_server` VALUES ('18', '8', '3001', '3001-皮卡丘', '0');
INSERT INTO `web_game_server` VALUES ('19', '8', '3002', '3002-妙蛙种子', '0');
INSERT INTO `web_game_server` VALUES ('20', '8', '3003', '3003-小火龙', '0');
INSERT INTO `web_game_server` VALUES ('21', '8', '6001', '6001-皮卡丘', '0');
INSERT INTO `web_game_server` VALUES ('22', '8', '6002', '6002-妙蛙种子', '0');
INSERT INTO `web_game_server` VALUES ('23', '8', '6003', '6003-小火龙', '0');
INSERT INTO `web_game_server` VALUES ('24', '8', '6004', '6004-杰尼龟', '0');
INSERT INTO `web_game_server` VALUES ('25', '8', '5001', '5001-皮卡丘', '0');

-- ----------------------------
-- Table structure for web_gift
-- ----------------------------
DROP TABLE IF EXISTS `web_gift`;
CREATE TABLE `web_gift` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `addtime` datetime NOT NULL,
  `desc` varchar(100) NOT NULL,
  `used_type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_gift
-- ----------------------------

-- ----------------------------
-- Table structure for web_gift_log
-- ----------------------------
DROP TABLE IF EXISTS `web_gift_log`;
CREATE TABLE `web_gift_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL,
  `server_id` int(11) unsigned NOT NULL,
  `addtime` int(4) NOT NULL,
  `startdate` int(4) NOT NULL,
  `enddate` int(4) NOT NULL,
  `game_id` smallint(4) unsigned NOT NULL,
  `grade` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_gift_log
-- ----------------------------

-- ----------------------------
-- Table structure for web_gift_record
-- ----------------------------
DROP TABLE IF EXISTS `web_gift_record`;
CREATE TABLE `web_gift_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `server_id` int(11) unsigned NOT NULL,
  `player_id` int(11) unsigned NOT NULL,
  `gift_id` int(11) unsigned NOT NULL,
  `addtime` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gift` (`server_id`,`player_id`,`gift_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3808 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_gift_record
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108930 DEFAULT CHARSET=utf8;

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
INSERT INTO `web_manager` VALUES ('1', 'admin', 'c571637aa1a2e1b1bf862566ba7eae52', '1', '落雪', '1116', '1514965592', '0', '121.204.112.204', null, '8', '1', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('411', 'cp_zhangj', 'c571637aa1a2e1b1bf862566ba7eae52', '1', '张建', '41', '1491879315', '1461550744', '220.160.57.12', '::1', '7', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('412', 'cp_koudai', '04575b44b784bf064c3fb06b94e6b106', '1', '客服专用', '6328', '1514170657', '1468290256', '121.204.112.219', '110.90.12.140', '8', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('413', 'wenschan', 'eb263c77186fceb0f9e6703b7cfa3ab4', '1', 'wenschan', '888', '1514170254', '1469772579', '121.204.112.219', '110.90.15.112', '8', '1', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('414', 'cp_linlf', '36cc2c7f3e3841715166d64b501fff72', '1', '林连帆', '44', '1491754033', '1469787007', '121.204.24.115', '110.90.15.112', '0', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('415', 'water', '58b5c80d65b6e72743ef8a5af73cf74a', '1', '吴兴水', '2576', '1514109218', '1471920749', '140.243.5.132', '121.204.78.186', '8', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('416', 'td_tangxs', 'c571637aa1a2e1b1bf862566ba7eae52', '1', '汤晓森', '59', '1478318817', '1472179407', '110.90.13.167', '110.90.12.45', '0', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('418', 'td_wenglq', '36cc2c7f3e3841715166d64b501fff72', '1', '翁礼强', '494', '1513825429', '1477894861', '121.204.112.39', '110.90.14.135', '8', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('417', 'kefu', '36cc2c7f3e3841715166d64b501fff72', '1', '客服', '5', '1475992386', '1475991212', '110.90.14.223', '110.90.14.223', '8', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('429', 'cp_luoxue', '36cc2c7f3e3841715166d64b501fff72', '1', '落雪', '20', '1484703425', '1480479311', '121.204.104.117', '110.90.13.233', '8', '0', '134', '815001,816001,817001,818001,819001,820001,821001,822001,823001,824001', '8');
INSERT INTO `web_manager` VALUES ('430', 'wangning', 'cd1bc944482029720e09b1922ac4e2db', '1', '王宁', '382', '1513568359', '1480946944', '222.76.67.254', '110.90.13.172', '8', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('431', 'lianfanlin', '425a7909bc10e03d0da8fdda7e0ebaac', '1', '林连帆', '1022', '1514166654', '1481898722', '121.204.112.77', '220.160.57.87', '8', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('432', 'buguangwu', '56255de771392740a625da5528637a1d', '1', '吴步广', '832', '1514018023', '1481898916', '121.204.112.219', '220.160.57.87', '8', '0', '0', '0', '0');
INSERT INTO `web_manager` VALUES ('433', 'ka_play800', '9598dbd5217dc8f9c3dc22c877da1fdb', '1', 'play800', '267', '1513853825', '1484125367', '119.130.16.238', '121.204.104.33', '8', '0', '134', '815001,816001,817001,818001,819001,820001,821001,822001,823001,824001,825001,826001,827001,828001,829001,830001,831001,832001,833001,834001,835001,836001,837001,838001,839001,840001,841001,842001,843001,844001,845001,846001,847001,660001', '1,5');
INSERT INTO `web_manager` VALUES ('434', 'ka_shenhai', '9598dbd5217dc8f9c3dc22c877da1fdb', '1', 'shenhai_ios', '50', '1504748516', '1499322387', '222.76.67.97', '121.204.104.179', '8', '0', '160', '8102', '12');
INSERT INTO `web_manager` VALUES ('436', 'ka_huya', '7195b0e9f45005751bb5a585708c0e19', '1', 'huya', '65', '1506900793', '1500000932', '121.207.204.54', '121.204.104.30', '8', '0', '164', '680001', '14');
INSERT INTO `web_manager` VALUES ('438', 'qa', 'e5b746c9109933bd1e33cd49f260cc22', '1', 'qa', '48', '1512552436', '1500536060', '222.76.67.254', '121.204.104.30', '0', '0', '0', '', '0');
INSERT INTO `web_manager` VALUES ('439', 'chengxu', 'c1786f78e1081fc85e32446c78e9e221', '1', '程序', '16', '1512627441', '1500536259', '222.76.67.254', '121.204.104.30', '0', '0', '0', '', '0');
INSERT INTO `web_manager` VALUES ('440', 'shilan', '909cb0579ffb698617a2b35b272d8d91', '1', '陈诗兰', '472', '1514167819', '1500539207', '121.204.112.219', '121.204.104.30', '0', '0', '0', '', '0');
INSERT INTO `web_manager` VALUES ('441', 'danzhou', 'c4be18bba2e0eabfe7cd5d9b00fb46b2', '1', '刘丹舟', '46', '1505289574', '1500864505', '222.76.67.246', '121.204.104.100', '0', '0', '0', '', '0');
INSERT INTO `web_manager` VALUES ('443', 'huoshu', '49db7e08fcd22e51cd573d2c2824c70e', '1', '火树', '58', '1513566434', '1502090850', '119.145.82.253', '121.204.112.156', '8', '0', '157', '8005,8008', '11');
INSERT INTO `web_manager` VALUES ('444', 'ka_huya2', '5fd93645fda62a133b3409d902c3d97b', '1', '虎牙混服', '4', '1513825010', '1502879378', '121.204.112.39', '222.76.66.220', '8', '0', '164', '680002', '8');
INSERT INTO `web_manager` VALUES ('445', 'shuqing', '3c49149aec9c5ae31f73ae5f310529b5', '1', '李淑青', '9', '1503905936', '1503904107', '222.76.66.9', '222.76.66.9', '8', '0', '0', '', '0');
INSERT INTO `web_manager` VALUES ('446', 'yyyong', '5fd93645fda62a133b3409d902c3d97b', '1', '运营查询', '77', '1514167765', '1504086892', '121.204.112.219', '222.76.66.9', '0', '0', '0', '', '0');
INSERT INTO `web_manager` VALUES ('447', 'ka_pyw', '5fd93645fda62a133b3409d902c3d97b', '1', '朋友玩', '5', '1513842450', '1512724066', '183.236.51.90', '222.76.67.254', '8', '0', '166', '8206', '16');
INSERT INTO `web_manager` VALUES ('448', 'wupeng', '6abef3aebbf1d4046e4d3e22f8d14d6c', '1', '加武鹏', '10', '1514168722', '1513146390', '121.204.112.219', '222.76.67.254', '8', '0', '0', '', '0');
INSERT INTO `web_manager` VALUES ('449', 'askd', '5fd93645fda62a133b3409d902c3d97b', '1', '启智', '24', '1514169782', '1513824275', '219.133.100.172', '121.204.112.39', '8', '0', '178,43,25,114,172', '507001,506001,505001,504001,502001,501001,', '18');

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
) ENGINE=MyISAM AUTO_INCREMENT=542 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_message
-- ----------------------------
INSERT INTO `web_message` VALUES ('541', '8', '13559133266', '7589', '1515121325');

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
  `PayCode` varchar(50) DEFAULT NULL,
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
  PRIMARY KEY (`id`),
  KEY `Add_Time` (`Add_Time`),
  KEY `OrderID` (`OrderID`)
) ENGINE=MyISAM AUTO_INCREMENT=14693 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_pay_log
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_player_limit
-- ----------------------------

-- ----------------------------
-- Table structure for web_problem
-- ----------------------------
DROP TABLE IF EXISTS `web_problem`;
CREATE TABLE `web_problem` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(100) DEFAULT NULL,
  `server_id` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `system` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `operate` varchar(100) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_problem
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
INSERT INTO `web_role_user` VALUES ('19', '413');
INSERT INTO `web_role_user` VALUES ('18', '438');
INSERT INTO `web_role_user` VALUES ('18', '432');
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
) ENGINE=InnoDB AUTO_INCREMENT=5086 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_token
-- ----------------------------
INSERT INTO `web_token` VALUES ('5006', '4729317', '8', 'WGwPZQ1jCWJcDV1sWDUBOlwxVHFUdwl5DmFRJgxmA2RRb1o0BDoJNVpjXTVdbQw6UzdTZlM9VWEOIQAxV2NTJFh6DyoNbQloXD9dI1gwAWRcalQ4VHcJZA5wUQsMYQNhUT9aZQQwCTVabV02XWUMPVMgUzVTfVUmDm0Ad1c2UzFYNg81DTsJNlxmXTxYZwE_aXDFUY1Qw', '1514968842');
INSERT INTO `web_token` VALUES ('5007', '4729317', '8', 'VWEKYFA_bWzANXAw9AG0HPAJvUHVScQFxAG8DdFY8VTJUalk3DDINMQozXzcOPlFnUjZUYVA_bADQAL1hpVmIDdFV3Ci9QMFs6DW4McgBoB2ICNFA8UnEBbAB_bA1lWO1U3VDpZZgw4DTEKPV80DjZRYFIhVDJQfgBzAGNYL1Y3A2FVOwowUGZbZA03DG0APwc5Am9QZ1Iy', '1514968846');
INSERT INTO `web_token` VALUES ('5008', '4729317', '8', 'UWUJY1U7XTYAUVprAG1XbFM_bDShQcwh4WzQCdQFrA2RRbwBuAjxdYQ00AGhfb1JkUDQMOVM9VGAPIFRlAzcDdFFzCSxVNV08AGNaJABoVzJTZQ1hUHMIZVslAlgBbANhUT8APwI2XWENOgBrX2dSY1AjDGpTfVQnD2xUIwNiA2FRPwkzVWNdYgA6WjsAP1dpUz4NO1A2', '1514968850');
INSERT INTO `web_token` VALUES ('5009', '4729317', '8', 'UmYAagxiWDNcDQo7XDEEP1U4AidXdFYmD2BUIwBqAmUEOlwyAz1YZF1kAGgOPlJkVTEANVE_aAjYLJAc2UmZWIVJwACUMbFg5XD8KdFw0BGFVYwJuV3RWOw9xVA4AbQJgBGpcYwM3WGRdagBrDjZSY1UmAGZRfwJxC2gHcFIzVjRSPAA6DDpYZ1xmCmtcYwQ6VTgCNFcy', '1514968853');
INSERT INTO `web_token` VALUES ('5010', '4729319', '8', 'BTFcNlc5DWYIWQAxAG0EPwJvACUAI1MjDGNXIABqA2QDPQ5gUG4OYQwwCWgNZVBmBmMGPFQ3BTRdMQdgDDBUYQUzXDRXNw06CGcAPQBtBDICbgA7AGdTMQw2V2cANAMxA2IOZ1AyDmQMNwllDTNQNQZlBmNUYAUgXTYHYQxrVD0FI1w5VyANXAhvADwANAQ2AmAAMQBvU2MMN1drACIDYAMoDnVQOg5yDGcJNQ05UGcGZgY0VDYFP11hBzoMMFRqBWc=', '1514968881');
INSERT INTO `web_token` VALUES ('5011', '4729319', '8', 'WGwOZFA_bXTYIWQ08DGFWbVU4DCkDIFEhDmEAdw1nBWJSbA1jUmxYN1hkC2pbMw07VzIAOgVmADELZ1YxAz8BNFhuDmZQMF1qCGcNMAxhVmBVOQw3A2RRMw40ADANOQU3UjMNZFIwWDJYYwtnW2UNaFc0AGUFMQAlC2BWMANkAWhYfg5rUCddDAhvDTEMOFZkVTcMPQNsUWEONQA8DS8FZlJ5DXZSOFgkWDMLN1tvDTpXNwAyBWcAOgs3VmsDPgE2WD8=', '1514968914');
INSERT INTO `web_token` VALUES ('5012', '4729319', '8', 'BTEAagJsXDcKWw4_aD2JVblM_bAidXdAd3CWZRJgBqBGNUag9hBzkKZVhkCmtdNQQyVjNWbFEyUWBbNwNkVmoCNwUzAGgCYlxrCmUOMw9iVWNTPwI5VzAHZQkzUWEANAQ2VDUPZgdlCmBYYwpmXWMEYVY1VjNRZVF0WzADZVYxAmsFIwBlAnVcDQptDjIPO1VnUzECM1c4BzcJMlFtACIEZ1R_aD3QHbQp2WDMKNl1pBDNWNlZkUTNRa1tnAz5WawI2BWY=', '1514968920');
INSERT INTO `web_token` VALUES ('5013', '4729319', '8', 'U2cKYAVrWDMJWFtqAG0FPlwxACUFJlEhCmVTJFU_aB2AHOVo0VmgOYVpmWzoLYw07AWRRa1c0UmMMYFI1BzsHMlNlCmIFZVhvCWZbZgBtBTNcMAA7BWJRMwowU2NVYQc1B2ZaM1Y0DmRaYVs3CzUNaAFiUTRXY1J3DGdSNAdgB25TdQpvBXJYCQluW2cANAU3XD4AMQVqUWEKMVNvVXcHZAcsWiFWPA5yWjFbZws_aDToBYVFjVzVSaAwwUm8HOgcyUzg=', '1514968938');
INSERT INTO `web_token` VALUES ('5014', '4729320', '8', 'UWVeNFA_bD2QIWQ08C2YGPVQ5ByJWdQNzWjUEcwBqBGMHOQ5gV2lcIV07DjkIdgFlATsMdlNyUj1bIAcnBDRWYFEzXmNQYA8vCGUNOgtvBiZUYAdnVmMDb1olBG8AcARdBz0OYVdpXGZdZA5kCDgBNAFmDD9TI1I0WykHcgRpViJRZ14xUG4PMAgzDWQLNgY5VDcHPVYwAzBaZw==', '1514969007');
INSERT INTO `web_token` VALUES ('5015', '4729321', '8', 'U2daMARqXzQAUQAxWDVQa1I_aBiNQc1MjD2AHcFY8VDMHOVk3BjhaJ1o8WG8KdA1pAjgGfAAhATNcOgVxUnMGNFMwWmAEMV9iACAAO1g_bUDtSIQZkUGVTMw9qB3dWPFQmBwtZOwZhWmlaYFg3CjENMgJkBjcAZwEkXDMFeFImBmlTclo0BGNfbAA_aAG1YYFBiUj4GM1A_aU2APNgcw', '1514969032');
INSERT INTO `web_token` VALUES ('5016', '4729321', '8', 'BzNaMFI8CWJaC1tqWjcDOFwxDClScQZ2XDNQJwJoCW5SbA5gDTMIdQ5oCT5aJAdjUGpULll4AzELbVcjBCUIOgdkWmBSZwk0WnpbYFo8A2hcLwxuUmcGZlw5UCACaAl7Ul4ObA1qCDsONAlmWmEHOFA2VGVZPgMmC2RXKgRwCGcHJlo0UjUJOlplWzZaYgMxXDAMOVI9BjVcY1Bm', '1514969053');
INSERT INTO `web_token` VALUES ('5017', '4729321', '8', 'VmIJYwFvWDMBUA08AWwDOFM_bAyZYewNzDmFQJwRuUzRZZw9hAD4Ocw5oXGtdI1E1U2kCeFBxU2EMalElV3YFN1Y1CTMBNFhlASENNgFnA2hTIANhWG0DYw5rUCAEblMhWVUPbQBnDj0ONFwzXWZRblM1AjNQN1N2DGNRLFcjBWpWdwlnAWZYawE_bDWABOQMxUz8DNlg3AzEOM1Bg', '1514969175');
INSERT INTO `web_token` VALUES ('5018', '4729321', '8', 'AjZbMVU7CWIJWFxtCWRVblQ5AidZelMjCGcFclA6UTZVa1wyAjxaJwttCzwNcwxoBT9WLFFwUWNcOlAkV3YHNQJhW2FVYAk0CSlcZwlvVT5UJwJgWWxTMwhtBXVQOlEjVVlcPgJlWmkLMQtkDTYMMwVjVmdRNlF0XDNQLVcjB2gCI1s1VTIJOgk2XDEJMVVnVDgCN1k2U2EINQU5', '1514969179');
INSERT INTO `web_token` VALUES ('5019', '4729321', '8', 'BTEJY1I8AWoNXAs6WDUCOVwxVHEHJAl5XjFSJQdtCG8HOVs1AT9bJlo8XWoOcFUxVW8Be1FwVWcAZgN3UHFRYwVmCTNSZwE8DS0LMFg_bAmlcL1Q2BzIJaV47UiIHbQh6BwtbOQFmW2haYF0yDjVValUzATBRNlVwAG8DflAkUT4FJAlnUjUBMg0yC2ZYYAIwXDBUYAdlCTheZVJk', '1514974213');
INSERT INTO `web_token` VALUES ('5020', '4729321', '8', 'BDABawVrCmEBUFhpDmMEPwVoBSADIANzXTJVIgFrBmEEOgtlAjxbJls9DDsAfg1pXWcGfAUkVmRbPQVxV3ZUZgRnATsFMAo3ASFYYw5oBG8FdgVnAzYDY104VSUBawZ0BAgLaQJlW2hbYQxjADsNMl07BjcFYlZzWzQFeFcjVDsEJQFvBWIKOQE_bWDUONgQ2BWkFMQNhAzJdYVVp', '1514974269');
INSERT INTO `web_token` VALUES ('5021', '4729321', '8', 'UWVbMVY4XTYOX1xtCGVQa1I_aDClRclEhC2RUIwNpAmVSbFk3DTNaJ1g_bATZdIwRgVmxULlR1CDoKbAJ2UXBTYVEyW2FWY11gDi5cZwhuUDtSIQxuUWRRMQtuVCQDaQJwUl5ZOw1qWmlYYgFuXWYEO1YwVGVUMwgtCmUCf1ElUzxRcFs1VjFdbg4xXDEIMFBiUj4MOFEyUWILMFRl', '1514975014');
INSERT INTO `web_token` VALUES ('5022', '4729321', '8', 'VWFaMARqWzAIWQ08XDEFPgZrUXQDIAl5C2RVIgNpVDNUal4wUmwMcQxqCj1aJANnBz1QKgAhVmRcOgN3VXQJO1U2WmAEMVtmCCgNNlw6BW4GdVEzAzYJaQtuVSUDaVQmVFhePFI1DD8MNgplWmEDPAdhUGEAZ1ZzXDMDflUhCWZVdFo0BGNbaAg3DWBcZAU3BmpRZQNgCToLMlVg', '1514975030');
INSERT INTO `web_token` VALUES ('5023', '4729321', '8', 'VWELYQJsXzRYCVhpC2YBOlwxV3JScQd3WzQHcANpVDNYZg1jUmwPclo8W2xbJQRgUWtTKVh5CTtZPwN3ACECMFU2CzECN19iWHhYYwttAWpcL1c1UmcHZ1s_bB3cDaVQmWFQNb1I1DzxaYFs0W2AEO1E3U2JYPwksWTYDfgB0Am1VdAtlAmVfbFhnWDULMwEzXDBXY1IxBzVbYwcy', '1514975120');
INSERT INTO `web_token` VALUES ('5024', '4729321', '8', 'UmZaMAZoAWoNXAw9C2ZXbFc6UHVScQBwWTZYLwBqUTZUag1jBjgPclo8DDsNc1I2BT8DeVR1CTsIblktAiNUZlIxWmAGMwE8DS0MNwttVzxXJFAyUmcAYFk8WCgAalEjVFgNbwZhDzxaYAxjDTZSbQVjAzJUMwksCGdZJAJ2VDtSc1o0BmEBMg0yDGELM1dlVztQZFIxADJZYFhk', '1514975139');
INSERT INTO `web_token` VALUES ('5025', '4729321', '8', 'UWUNZ1U7D2QJWAw9XzIGPVI_aBCFTcAR0WTZWIQFrVTJSbAxiBTsKdw1rDjkIdgxoBT8NdwAhBTdeOFUhAiMFN1EyDTdVYA8yCSkMN185Bm1SIQRmU2YEZFk8ViYBa1UnUl4MbgViCjkNNw5hCDMMMwVjDTwAZwUgXjFVKAJ2BWpRcA1jVTIPPAk2DGFfZwY0Uj4EMFMwBDRZalZj', '1514975390');
INSERT INTO `web_token` VALUES ('5026', '4729343', '8', 'VmIOZAFvD2RcDQ8_bAWwCOVc6U3ZYewV1DGNUI1Y8BmFYZglnDTMOMVtnXDcALAIwUjdRIwUiVHkLYlc9Vj8HJ1ZkDmYBYQ9uXCcPOQF8AltXa1M0WDMFMgwxVGNWawYzWD8JMQ0oDmVbLVx0AGACdlJiUTYFblRmCzRXY1ZmBzhWMg4wATYPMVxh', '1514975403');
INSERT INTO `web_token` VALUES ('5027', '4729343', '8', 'BTEIYgdpXDdaC1hpCWRSaV0wBiMHJFYmDWICdQNpBWJUaglnAz0BPl9jXDcKJg0_aUTQFd1J1VntcNQRuA2oEJAU3CGAHZ1w9WiFYbgl0UgtdYQZhB2xWYQ0wAjUDPgUwVDMJMQMmAWpfKVx0CmoNeVFhBWJSOVZkXGMEMAMzBDsFYQg2BzBcYFps', '1514975428');
INSERT INTO `web_token` VALUES ('5028', '4729343', '8', 'VWEOZABuC2BfDlxtCWRVblY7V3JTcFIiAW4CdVU_aAWZZZ10zAD5dYg4yDmUIJAAyVDFTIQMkVXgKY1c9B24EJFVnDmYAYAtqXyRcagl0VQxWalcwUzhSZQE8AjVVaAE0WT5dZQAlXTYOeA4mCGgAdFRkUzQDaFVnCjVXYwc3BDtVMQ4wADYLMV9h', '1514975540');
INSERT INTO `web_token` VALUES ('5029', '4729343', '8', 'VWEMZlA_bC2BaC1tqC2YEPwZrACUEJwV1CGcEcwxmAWZZZ10zBTtYZwk1WDMKJgU3VDEBc1J1Un8JYFkzAWhSclVnDGRQMAtqWiFbbQt2BF0GOgBnBG8FMgg1BDMMMQE0WT5dZQUgWDMJf1hwCmoFcVRkAWZSOVJgCTZZbQExUm1VMQwyUGsLMFpk', '1514975850');
INSERT INTO `web_token` VALUES ('5030', '4729343', '8', 'WGxbMVE_aAGsBUF1sAWwEP1c6BiNRclYmDWJXIAVvB2ACPAlnAT9fYA0xDWYALAIwUzZWJAIlBShdNFQ_bVz4AIFhqWzNRMQBhAXpdawF8BF1XawZhUTpWYQ0wV2AFOAcyAmUJMQEkXzQNew0lAGACdlNjVjECaQU3XWJUYFdnAD9YPFtmUWIAPgE_b', '1514976001');
INSERT INTO `web_token` VALUES ('5031', '4729343', '8', 'VWEJY1E_aXDdYCQAxDGFWbQBtACUEJwZ2DmEFcgVvBGNXaVs1Az0BPltnXTYIJAY0XDlXJVJ1Ai8IYQJoAGlSclVnCWFRMVw9WCMANgxxVg8APABnBG8GMQ4zBTIFOAQxVzBbYwMmAWpbLV11CGgGclxsVzBSOQIwCDcCNgAwUm1VMQk0UWNcY1hi', '1514976114');
INSERT INTO `web_token` VALUES ('5032', '4729343', '8', 'BDAMZgxiCGMPXg8_bDGEMN10wUXRVdgh4WzQCdQZsBmFUalo0BzkNMlhkXTYOIlFjBmNXJVJ1BitaM1M5Bm9ScgQ2DGQMbAhpD3QPOQxxDFVdYVE2VT4IP1tmAjUGOwYzVDNaYgciDWZYLl11Dm5RJQY2VzBSOQY0WmVTZwY2Um0EYAwxDD4IMw84', '1514976159');
INSERT INTO `web_token` VALUES ('5033', '4729363', '8', 'BTEOZFU7XDddDF9uXDEGPQVoDCkHJFMjWTZUIw1nB2BRbwBuDDJYZ1ptCmJaZgcyAWUANlcwBCIKNFdiViMAdwV4DmZVOVw_aXXVfZlw2BmMFPwx6Bz9TJFkMVDgNbQc8UTYAPAw9WG9aZwpkWmAHJwExAHtXcQRuCnJXN1Y2ADsFZw4wVWdcZl1qXzBcbQY4BWMMNw==', '1514978838');
INSERT INTO `web_token` VALUES ('5034', '4729343', '8', 'U2dcNlc5AGsJWFhpWzZXbAFsACVVdlEhAG9VIgFrUzQEOgxiAT9fYA4yD2QKJlJgVjMAcll_bAC0JYFE7UTgCIlNhXDRXNwBhCXJYblsmVw4BPQBnVT5RZgA9VWIBPFNmBGMMNAEkXzQOeA8nCmpSJlZmAGdZMgAyCTZRZVFhAj1TN1xvV2wAOAkw', '1514978867');
INSERT INTO `web_token` VALUES ('5035', '4729363', '8', 'AzcIYlA_bXzRbCgo7WDUAOwFsU3ZZegd3XDNTJAZsBGMHOQlnV2lcY1tsAWkOMgYzBmJUYgNkACZaZAM2DHlVIgN_bCGBQPF88W3MKM1gyAGUBO1MlWWEHcFwJUz8GZgQ_aB2AJNVdmXGtbZgFvDjQGJgY2VC8DJQBqWiIDYwxsVW4DYQg2UGJfZVtsCmVYaAA3AWZTZw==', '1514979127');
INSERT INTO `web_token` VALUES ('5036', '4729371', '8', 'ADRcNg1jAGsMXQo7WzYBOlc6VnNZelYmXjFTJFI4UjVSbA1jV2lbYlhiC2cBPFV2UDEDMFZxBXcLL1g_bDWYIYwB1XDYNbQBtDG0KJ1s8AXNXXVY8WWtWaF5gU2FSZFJtUjINMVdlW3NYMwsrAXhVOlB3A2VWZAU7CzBYaA04CDoAalxgDTcANgwwCmc=', '1514979825');
INSERT INTO `web_token` VALUES ('5037', '4729371', '8', 'AjYAalI8DmUPXgk4AG0BOgZrDShScQNzAG9WIQJoB2BRbwxiBzkIMQgyWDQLNgIhXTxXZAcgVScBJVI0VzxROgJ3AGpSMg5jD24JJABnAXMGDA1nUmADPQA_bVmQCNAc4UTEMMAc1CCAIY1h4C3ICbV16VzEHNVVrATpSYldiUWMCaAAzUmEOMg84CWg=', '1514980299');
INSERT INTO `web_token` VALUES ('5038', '4729371', '8', 'VmIBawFvDGcOX19uCWRQa1I_aASQHJAJyAG8FcgZsB2BVawpkUG4PNgA6D2MPMlBzVTQGNVN0UiAMKFM1B2xTOFYjAWsBYQxhDm9fcgluUCJSWAFrBzUCPAA_bBTcGMAc4VTUKNlBiDycAaw8vD3ZQP1VyBmBTYVJsDDdTYwcyU2FWPAEyATIMNg4yXzI=', '1514980425');
INSERT INTO `web_token` VALUES ('5039', '4729371', '8', 'BDAOZARqXzQNXFprWDUMN1I_aUHVQcwh4WTZZLlc9AWYHOVk3VWsJMAowAGxbZg0uUjMGNVl_bUiBafgVjUjkHbARxDmQEZF8yDWxad1g_aDH5SWFA6UGIINllnWWtXYQE_bB2dZZVVnCSEKYQAgWyINYlJ1BmBZa1JsWmEFNVJnBzUEbg49BDNfYw00Wjo=', '1514984278');
INSERT INTO `web_token` VALUES ('5040', '4729371', '8', 'UGQOZFc5C2BaCw08CWRWbQZrASRZelMjDGNTJAFrCW5QbgpkUW9aY1hiWjZfYgEiUDFRYldwBHYBJQBmAWpTOFAlDmRXNwtmWjsNIAluViQGDAFrWWtTbQwyU2EBNwk2UDAKNlFjWnJYM1p6XyYBblB3UTdXZQQ6AToAMAE0U2FQOg49V2ALNlphDWQ=', '1514984351');
INSERT INTO `web_token` VALUES ('5041', '4729371', '8', 'WGwAag1jAWpYCQo7WzZWbVc6V3IEJ1YmD2AAd1A6VDNWaA9hBDoBOFxmDWFdYAUmXD1TYFl_bBXdeelcxUDsIY1gtAGoNbQFsWDkKJ1s8ViRXXVc9BDZWaA8xADJQZlRrVjYPMwQ2ASlcNw0tXSQFalx7UzVZawU7XmVXZ1BlCDpYMgAzDToBO1hgCmU=', '1514984467');
INSERT INTO `web_token` VALUES ('5042', '4729371', '8', 'WGxeNFc5CWJYCQk4WDUFPlQ5VnNVdgBwWzQDdAdtB2BWaFk3AD4BOA81AGwOM1d0VjdUZ1l_bBHYBJVg_bA2hROlgtXjRXNwlkWDkJJFg_aBXdUXlY8VWcAPltlAzEHMQc4VjZZZQAyASkPZAAgDndXOFZxVDJZawQ6ATpYaAM2UWNYMl5tV2AJMlhjCWk=', '1514984558');
INSERT INTO `web_token` VALUES ('5043', '4729371', '8', 'BzNaMAFvAWoMXVhpDmNRalc6DSgHJFYmCGdYLwxmBGNYZghmBTsBOA03DWFYZQAjXTwBMldwViQKLgVjUjkDaAdyWjABYQFsDG1YdQ5pUSNXXQ1nBzVWaAg2WGoMOgQ7WDgINAU3ASkNZg0tWCEAb116AWdXZVZoCjEFNVJnAzEHbVppATYBOQw2WDc=', '1514984647');
INSERT INTO `web_token` VALUES ('5044', '4729371', '8', 'V2MIYg1jAWoNXAAxDGEBOgdqDCkEJwJyXDNXIAFrVTIDPVk3AjwNNAE7WzcMMQ0uUDEHNFN0ViQKLlQyVT5TOFciCGINbQFsDWwALQxrAXMHDQxmBDYCPFxiV2UBN1VqA2NZZQIwDSUBalt7DHUNYlB3B2FTYVZoCjFUZFVgU2FXPQg7DTsBOQ03AGA=', '1514985648');
INSERT INTO `web_token` VALUES ('5045', '4729371', '8', 'AzdaMABuAWoOXw8_bWDUBOlwxVnNVdgJyWTZQJ1E7BGNUaghmUW8MNQ40XDBYZQAjAGEGNVl_bUiAJLVk_aDWZROgN2WjAAYAFsDm8PIlg_aAXNcVlY8VWcCPFlnUGJRZwQ7VDQINFFjDCQOZVx8WCEAbwAnBmBZa1JsCTJZaQ04UWMDaVppADsBPQ43D2A=', '1514988277');
INSERT INTO `web_token` VALUES ('5046', '4729371', '8', 'VGBZMwBuCGNdDAEwDmMFPlY7DSgHJFMjC2QAdwJoVDNRbwBuV2kJMA81XDBdYFJxVDUHNFh_aB3UPKwBmAmkHbFQhWTMAYAhlXTwBLA5pBXdWXA1nBzVTbQs1ADICNFRrUTEAPFdlCSEPZFx8XSRSPVRzB2FYagc5DzQAMAI3BzRUN1lmADQIMl1iAW4=', '1515047417');
INSERT INTO `web_token` VALUES ('5047', '4729371', '8', 'AzdZM1I8WDMLWg8_bWjdXbAVoBSBWdQFxCmUDdFA6CG9SbFwyVWtaYw03D2NYZQ0uAmMCMVZxCXtdeVYwAWoGbQN2WTNSMlg1C2oPIlo9VyUFDwVvVmQBPwo0AzFQZgg3UjJcYFVnWnINZg8vWCENYgIlAmRWZAk3XWZWZgE0BjUDYFlmUmZYbws8D2I=', '1515047995');
INSERT INTO `web_token` VALUES ('5048', '4729371', '8', 'UWUKYAJsWDMOXwo7WzYMN1Q5DShZelYmDWJVIgFrCG9XaV4wUmxdZAE7WDQBPFBzXD0ENwUiCXteegdhAWoDaFEkCmACYlg1Dm8KJ1s8DH5UXg1nWWtWaA0zVWcBNwg3VzdeYlJgXXUBalh4AXhQP1x7BGIFNwk3XmUHNwE0AzBRMgo0AjJYZw42CmA=', '1515053162');
INSERT INTO `web_token` VALUES ('5049', '4729689', '8', 'AjYBa1E_aCmEIWQEwCWQAO1A9BCFXdFIiAG9YL1A6UjVQbg1jUG5aYgE6WmQLMlU3VzcCZVZiVW9bNAA3DG1UMAIwAT9RYwoiCGcBOgljAGlQcARpV3VSDgBjWDlQaVJgUDQNNFBqWmIBN1o7CyRVNld6AnFWaVUkWzQAYQw1VGMCZAE7UWcKNAgzAWwJOAAzUDU=', '1515055850');
INSERT INTO `web_token` VALUES ('5050', '4729690', '8', 'VGABa1U7CWINXFxtXDEGPVY7BSBUdwV1WzRWIQFrAWZQbgBuAT9fYApnXDUKYVVjVmcFM1Q3UTFbY1lkDT5RYVQwAT5VZwkhDWJcZ1w2Bm9WdgVoVHYFWVs4VjcBOAEzUDQAOQE7X2cKPVw0CiVVNlZ7BXZUa1EgWzRZOA00UWZUMgE7VWMJNw02XDFcbQY2Vjo=', '1515055869');
INSERT INTO `web_token` VALUES ('5051', '4729696', '8', 'UmZcNgdpCWJbCgw9XDFXbFc6BSBQc1QkC2QDdAFrVjEAPgFvAjxcEF8SAG0OQQFBUzJXZwIRATRdE1JgATIGMFIxXGcHNAkhWzQMN1w2Vz5XdwVoUHJUCAtoA2IBOFZkAGQBOAI4XGRfaABuDiEBYlN_bVyQCPQFwXTJSMwE4BjFSNFxmBzEJN1tgDGJcYFdkVzQ=', '1515056556');
INSERT INTO `web_token` VALUES ('5052', '4729700', '8', 'BzNbMQBuDGcNXFhpCGVSaV0wAyZVdlQkWjUAdw1nVTJWaF0zUG4NYQthXGcBPVVqXTxTMVZiB2cMZFU0VmEBMgc3WzQAYgwkDWJYYwhiUjtdfQNuVXdUCFo5AGENNFVnVjJdZFBqDTQLNVw0AS5VNl1wUyBWaQd2DGNVNFZvATYHYVthADYMMg02WDYIOVJsXTg=', '1515056880');
INSERT INTO `web_token` VALUES ('5053', '4729758', '8', 'VGAIYgZoDmUAUV1sDWABOlM_bByJScQR0D2BWIVc9CG9UagBuAD5abAE7Dm5cNw1pUjIGYwQ0ATYAaABjBWJUM1QxCDQGZw4mAG9dZg1nAWhTcwdqUnAEWA9sVjdXbgg6VDAAOQA6WmMBOg5uXHMNblJ_aBnUEOwFwAG8AYQU8VGNUMggyBjAOMAA4XTMNNQE_bUzM=', '1515066195');
INSERT INTO `web_token` VALUES ('5054', '4729758', '8', 'VGALYVc5CGMNXFtqWDUMN1Y7BSBQcwBwDGMFcg1nBmFUagpkDDILPVxmDW0LYARgUzMBZAMzBTJZMVIxB2AGYVQxCzdXNgggDWJbYFgyDGVWdgVoUHIAXAxvBWQNNAY0VDAKMww2CzJcZw1tCyQEZ1N_bAXIDPAV0WTZSMwc_bBjFUMgsxV2EINg01WzVYaAw7VjA=', '1515066913');
INSERT INTO `web_token` VALUES ('5055', '4729837', '8', 'WGxbMVU7CmFYCQAxDGFVblI_aBSAAIwBwXjECdQFrCW5UaghmBTsNNwE2ATxfb1ZnB2dTaFU7BWJaZgAwBWdVY1hvWzVVbgoiWDcAOwxmVTxScgVoACIAXF49AmMBOAk7VDAIMQU_aDTsBPAFuX3BWNQcqUyBVagV0WjUAYQU8VWJYPlthVWMKNFhhAG4MN1VrUjE=', '1515076286');
INSERT INTO `web_token` VALUES ('5056', '4729929', '8', 'VWFaMAVrAGsPXgw9WDUNNlU4DCkCIQFxCmVZLgBqVjFUal4wUmxdNQlhXzABOQAzVjQCNlIwCGkPMAJmUWEBN1VkWmAFNQAoD2AMN1gyDWRVdQxhAiABXQppWTgAOVZkVDBeZ1JoXWoJNV8_bAS4AY1Z7AnFSbQh5D2ACY1FoATZVM1pgBTMAPw8wDGNYZw06VTg=', '1515117618');
INSERT INTO `web_token` VALUES ('5057', '4729933', '8', 'BDBZM1U7AGsAUV9uXzJSaQJvAicHJABwDGMAdwVvCW4FOwxiAT9bbVhiAWpdN1doAjIGYQJjAjFbYlA2VmIHZARiWWRVZwAoAG9fZF81UjsCIgJvByUAXAxvAGEFPAk7BWEMNQE7W2xYZQFqXXJXNAIvBnUCPQJzWzRQMVZvBzAEYlljVWMAPwA_aXz5fZVJiAmA=', '1515119367');
INSERT INTO `web_token` VALUES ('5058', '4729936', '8', 'UGQBawxiD2QMXVhpWzZXbFQ5BSBQc1QkCWZSJVI4BGNTbVwyDDJdNQt9CCMMYVE6BitWcFAyBDcPNFlqUGcBKVBgAWUMYg8nDGNYY1sxVz5UdAVoUHJUCAlqUjNSawQ2UzdcZQw2XWoLNghmDCNRMgYrViVQbwR1D2BZOFBpATZQNgE7DDoPMAwzWDlba1djVDI=', '1515119923');
INSERT INTO `web_token` VALUES ('5059', '4729937', '8', 'BDAMZlE_aDGdbCgEwXzICOQdqBSBXdANzDGMDdFA6VjFZZwtlUmwPOQwyCzIONFVgBWJWbAVjVGEINVY3DDkCPQRmDDJRNwwkWzQBOl81AmsHJwVoV3UDXwxvA2JQaVZkWT0LMlJoDzgMMQtkDiFVNgUoViUFOlQlCGdWNww1AjUEYgw2UWcMM1tnAWlfZwIzB2M=', '1515120171');
INSERT INTO `web_token` VALUES ('5060', '4729943', '8', 'UWVaMARqDmUAUQEwWjcEP1A9AidUdwFxDGNZLlc9BmFUal0zAz1dYgxnDWZdYgw6UjBWNlMxAzQINgMzUDIJbFE3WjAEMA4mAG8BOlowBG1QcAJvVHYBXQxvWThXbgY0VDBdZAM5XWoMNg1mXXIMb1J_aViVTbANyCGcDYlBpCT5RN1pgBDIOMQA8AWhaYAQyUDw=', '1515121309');
INSERT INTO `web_token` VALUES ('5061', '4729944', '8', 'VWFaMFY4WjEAUQk4CmdSaVA9UXQFJlEhXjFXIFI4VTJXaVwyUmxYZ1pnAWxdYQY5UzcGNlM2CTgMMFJhDC5SNVVlWjJWOlohAGAJJQpcUj1QYVFvBWdRZV5mV2tSb1VnVzBccVI0WC5aJAEwXSYGZVNiBjhTNAk_aDDdSYgw5UmZVN1piVmZaYg==', '1515121336');
INSERT INTO `web_token` VALUES ('5062', '4729933', '8', 'WGwOZFA_bXzQLWlxtXTANNlM_bUHUFJgZ2XDMDdAxmCW5XaQ9hVWsKPFpgCGMKYFdoUmJXMFMyAjEPNlk_aVWFTMFg_bDjNQYl93C2RcZ103DWRTc1A9BScGWlw_aA2IMNQk7VzMPNlVvCj1aZwhjCiVXNFJ_aVyRTbAJzD2BZOFVsU2RYPg40UGZfYAs3XDJdZA07Uzc=', '1515126001');
INSERT INTO `web_token` VALUES ('5063', '4729371', '8', 'BzMMZlI8AWoJWAs6WDVSaQZrByJWdVQkDmEDdANpUjVTbQ9hUG4KMw40XTEBPAUmAWAHNAcgCHoKLgVjB2xTOAdyDGZSMgFsCWgLJlg_aUiAGDAdtVmRUag4wAzEDNVJtUzMPM1BiCiIOZV19AXgFagEmB2EHNQg2CjEFNQcyU2AHZQwzUmEBPwkwC2E=', '1515140072');
INSERT INTO `web_token` VALUES ('5064', '4729371', '8', 'WGwBa1U7CmFbCgo7WDUFPgJvBCEDIFIiXTJVIgdtBmEAPl4wAjxbYlpgXzNfYlV2BmcAM1N0AXMILFM1UDtROlgtAWtVNQpnWzoKJ1g_aBXcCCARuAzFSbF1jVWcHMQY5AGBeYgIwW3NaMV9_aXyZVOgYhAGZTYQE_aCDNTY1BlUWJYOgE_bVWcKPFtmCmc=', '1515141835');
INSERT INTO `web_token` VALUES ('5065', '4729371', '8', 'ADQAagFvDWYNXAg5WjdSaQZrByIEJ1UlD2BWIVI4UzQAPghmDDINNAA6DmJYZVV2UzJRYlVyA3EOKlYwBW5UPwB1AGoBYQ1gDWwIJVo9UiAGDAdtBDZVaw8xVmRSZFNsAGAINAw_bDSUAaw4uWCFVOlN0UTdVZwM9DjVWZgUwVGcAYgA_aATMNOg0wCGY=', '1515141936');
INSERT INTO `web_token` VALUES ('5066', '4729371', '8', 'BDBaMFA_bDWZfDlhpXTAHPFI_aDShRclEhAW4HcAdtBWJUal0zUW8NNAkzXTFYZQAjAmNUZ1J1BnRdeQJkUToDaARxWjBQMA1gXz5YdV06B3VSWA1nUWNRbwE_aBzUHMQU6VDRdYVFjDSUJYl19WCEAbwIlVDJSYAY4XWYCMlFkAzAEZlplUGINOl9nWDg=', '1515141968');
INSERT INTO `web_token` VALUES ('5067', '4729371', '8', 'U2cOZFc5C2BcDV1sCWQGPVE8BiNQc1YmWTZVIgxmUjVTbQFvUmxdZFpgXTELNgQnUzJTYFF2BXcNKQRiUDsDaFMmDmRXNwtmXD1dcAluBnRRWwZsUGJWaFlnVWcMOlJtUzMBPVJgXXVaMV19C3IEa1N0UzVRYwU7DTYENFBlAzBTMQ4xV2YLNVxhXTY=', '1515142033');
INSERT INTO `web_token` VALUES ('5068', '4730031', '8', 'VmIPZQVrCmEBUA4_aWDVWbVc6UHUCIQl5DWJSJVE7CW4EOgpkBTtdZAE7WDQKMFJxVDVXZAUiViRdeQBmUDsIY1YjD2UFZQpnAWAOI1g_aViRXXVA6AjAJNw0zUmBRZgk_aBGcKMgU3XXUBalh4CnNSPVRzVzEFN1ZoXWYAMFBlCDtWNA8wBTQKNwE3DmY=', '1515142380');
INSERT INTO `web_token` VALUES ('5069', '4730031', '8', 'UmZdN1U7WDNYCVhpCWQCOV0wAicEJwNzDGMCdVA6BGNTbQBuAjwLMgkzCGRdZwwvVDUGNVN0BnRbf1YwBG9VPlInXTdVNVg1WDlYdQluAnBdVwJoBDYDPQwyAjBQZwQyUzAAOAIwCyMJYggoXSQMY1RzBmBTYQY4W2BWZgQxVWZSMF1iVWRYYFhgWDI=', '1515142662');
INSERT INTO `web_token` VALUES ('5070', '4730031', '8', 'UGRaMAVrWDMBUA4_aC2YNNlA9BiNUd1EhCmVYLwJoA2RVawFvVWtcZVthCGRdZ1d0VzYNPlRzAXNeelYwBG9ROlAlWjAFZVg1AWAOIwtsDX9QWgZsVGZRbwo0WGoCNQM1VTYBOVVnXHRbMAgoXSRXOFdwDWtUZgE_aXmVWZgQxUWJQMlplBTRYYQE_bDmI=', '1515142714');
INSERT INTO `web_token` VALUES ('5071', '4730031', '8', 'UGQJYwBuC2AOX1hpCmcBOlc6UXQDIFEhAW5UIwRuAGdQbg5gBzkAOVhiCWUONAckVTQDMAMkUyEILFI0Bm0CaVAlCWMAYAtmDm9YdQptAXNXXVE7AzFRbwE_aVGYEMwA2UDMONgc1AChYMwkpDncHaFVyA2UDMVNtCDNSYgYzAjFQMgk2ADELPA40WDc=', '1515142947');
INSERT INTO `web_token` VALUES ('5072', '4729371', '8', 'UGQBawNtC2AAUQg5WDVVbgdqU3ZQcwBwCGcAd1Y8BWJZZw9hUG4IMQsxXTEPMlBzUDEEN1N0BXcJLQJkAWoJYlAlAWsDYwtmAGEIJVg_aVScHDVM5UGIAPgg2ADJWYAU6WTkPM1BiCCALYF19D3ZQP1B3BGJTYQU7CTICMgE0CTpQMgE_bAzILPAA7CGg=', '1515142958');
INSERT INTO `web_token` VALUES ('5073', '4729371', '8', 'BzMKYANtXTYJWF1sXzIGPQFsU3YDIFMjC2RYLwNpBmECPA1jUG4ONwkzD2MINQAjXTxXZAQjA3FeegVjVT5ROgdyCmADY10wCWhdcF84BnQBC1M5AzFTbQs1WGoDNQY5AmINMVBiDiYJYg8vCHEAb116VzEENgM9XmUFNVVgUWIHZQo1AzNdYAkzXTc=', '1515143342');
INSERT INTO `web_token` VALUES ('5074', '4729371', '8', 'WGwBawZoCWIPXlhpD2IGPVQ5U3YEJwV1D2BQJwJoUTYAPlwyUmwNNFxmD2MPMgwvUTANPgcgVCZbfwVjAWpUP1gtAWsGZglkD25YdQ9oBnRUXlM5BDYFOw8xUGICNFFuAGBcYFJgDSVcNw8vD3YMY1F2DWsHNVRqW2AFNQE0VGdYOgE_bBjYJMw84WDA=', '1515143490');
INSERT INTO `web_token` VALUES ('5075', '4729371', '8', 'BzMBawZoCmEPXlhpCGVWbVI_aDShVdgFxC2RSJVU_aBGNTbVk3VWtfZl9lC2cJNAAjUTAEN1F2UyENKVA2VT5VPgdyAWsGZgpnD25YdQhvViRSWA1nVWcBPws1UmBVYwQ7UzNZZVVnX3dfNAsrCXAAb1F2BGJRY1NtDTZQYFVgVWYHZQE_bBjYKMQ8yWDQ=', '1515143534');
INSERT INTO `web_token` VALUES ('5076', '4729371', '8', 'BTFbMVE_aD2QMXQg5DmMAO1A9AidYewFxCWYCdQBqCW5Rb1k3AjxdZAA6CmZfYgQnVzYFNlRzVCZdeVcxUDsJYgVwWzFRMQ9iDG0IJQ5pAHJQWgJoWGoBPwk3AjAANgk2UTFZZQIwXXUAawoqXyYEa1dwBWNUZlRqXWZXZ1BlCToFZ1tkUWEPNAw0CGA=', '1515143560');
INSERT INTO `web_token` VALUES ('5077', '4729371', '8', 'VWEMZlA_bCWIIWVprWzYHPFQ5V3JQcwFxWjVRJlA6AWYHOQBuUmxbYg81XTEKNwAjUDFUZwQjAHIOKgJkBG8HbFUgDGZQMAlkCGlad1s8B3VUXlc9UGIBP1pkUWNQZgE_bB2cAPFJgW3MPZF19CnMAb1B3VDIENgA_bDjUCMgQxBzRVNwwzUGAJMQgwWjA=', '1515143662');
INSERT INTO `web_token` VALUES ('5078', '4729371', '8', 'BDBZMwdpCmEIWQ08WzYCOQBtDShScQNzXjFXIAdtBmECPA5gVmgON19lC2cKN1d0XTwENwMkUSNeelA2VT4EbwRxWTMHZwpnCGkNIFs8AnAACg1nUmADPV5gV2UHMQY5AmIOMlZkDiZfNAsrCnNXOF16BGIDMVFvXmVQYFVgBDcEZllmBzAKNAgyDW0=', '1515144048');
INSERT INTO `web_token` VALUES ('5079', '4729371', '8', 'AzdcNgNtDWYOX11sC2YCOVA9ACVXdAh4WzRYL1c9AmVWaF0zBjgJMA03C2cMMQ0uBWRTYFF2UyFZfQVjAWpTOAN2XDYDYw1gDm9dcAtsAnBQWgBqV2UINltlWGpXYQI9VjZdYQY0CSENZgsrDHUNYgUiUzVRY1NtWWIFNQE0U2ADYVxjAzQNNw44XTc=', '1515144482');
INSERT INTO `web_token` VALUES ('5080', '4729371', '8', 'VGBbMQdpDWZdDAs6DWAMN1Q5AicCIVEhAG9UIwdtCG9XaQ5gBjgMNQw2CmZbZgAjUzIDMAQjA3FdeVk_aA2hUP1QhWzEHZw1gXTwLJg1qDH5UXgJoAjBRbwA_bVGYHMQg3VzcOMgY0DCQMZwoqWyIAb1N0A2UENgM9XWZZaQM2VGdUNltkBzANNl1rC2s=', '1515144588');
INSERT INTO `web_token` VALUES ('5081', '4729371', '8', 'U2cPZQxiDGddDA8_bXDFWbVU4AyZTcAV1XDNXIFE7B2BQbl4wUmwLMlhiDmINMAEiAWANPgUiBXcJLVI0VzxSOVMmD2UMbAxhXTwPIlw7ViRVXwNpU2EFO1xiV2VRZwc4UDBeYlJgCyNYMw4uDXQBbgEmDWsFNwU7CTJSYldiUmFTMQ8wDDsMNV1mD2U=', '1515144752');
INSERT INTO `web_token` VALUES ('5082', '4729371', '8', 'AzdZM1E_aAGsNXA8_bWDVVblM_bDClZelUlCWYHcAZsVjFWaFs1BjhYYV9lDmIINVBzUTAENwUiVSdbf1cxVj1UPwN2WTNRMQBtDWwPIlg_aVSdTWQxmWWtVawk3BzUGMFZpVjZbZwY0WHBfNA4uCHFQP1F2BGIFN1VrW2BXZ1ZjVGcDYVlmUWYANg0yD2Q=', '1515144813');
INSERT INTO `web_token` VALUES ('5083', '4729371', '8', 'V2MOZAxiWjEIWV9uDmMHPAFsASRZegl5DGNVIgVvUjUCPF0zVWtcZVthXDBaZwEiAGFXZFdwUSNceFM1AmlWPVciDmQMbFo3CGlfcg5pB3UBCwFrWWsJNwwyVWcFM1JtAmJdYVVnXHRbMFx8WiMBbgAnVzFXZVFvXGdTYwI3VmVXNQ4xDDtabAg0Xz8=', '1515144828');
INSERT INTO `web_token` VALUES ('5084', '4729343', '8', 'UWUIYgZoWDNdDF1sD2IMN1c6AyZScQl5XjEHcABqVTJUagtlBDpdYgA8DGcLJ1ZkVjMAclF2BSgIYQdtVTwBIVFjCGAGZlg5XSZdaw9yDFVXawNkUjkJPl5jBzAAPVVgVDMLMwQhXTYAdgwkC2tWIlZmAGdROgU3CDcHM1VkATVRMAg2BjNYYV1k', '1515225677');
INSERT INTO `web_token` VALUES ('5085', '4729936', '8', 'WW1bMQZoXDdfDgAxXzIMN1M_bAidRclIiXDNZLlE7VDNRbwFvAjwNZQF3DSYOY1c8UH0NK1Q2AzBdZldkDDsCKllpWz8GaFx0XzAAO181DGVTcwJvUXNSDlw_aWThRaFRmUTUBOAI4DToBPA1jDiFXNFB9DX5UawNyXTJXNgw1AjVZP1thBjBcYV9pAGhfZgw7UzU=', '1515380013');
