/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : bsp1

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 22/07/2020 15:08:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brd_brand
-- ----------------------------
DROP TABLE IF EXISTS `brd_brand`;
CREATE TABLE `brd_brand`  (
  `BRD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MAN_ID` int(11) NULL DEFAULT NULL,
  `NAME_EN` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME_CN` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`BRD_ID`) USING BTREE,
  INDEX `MAN_ID`(`MAN_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 217 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of brd_brand
-- ----------------------------
INSERT INTO `brd_brand` VALUES (1, 1, 'string', 'string', 'string', NULL, NULL, NULL, 0, '1', '1');
INSERT INTO `brd_brand` VALUES (2, 0, 's', 's', 's', '2020-07-03 11:41:51', 's', '2020-07-03 11:41:54', 1, 's', 's');
INSERT INTO `brd_brand` VALUES (3, 1, 's', 's', 's', '2020-07-03 11:42:09', 's', '2020-07-03 11:42:12', 1, 's', 's');
INSERT INTO `brd_brand` VALUES (4, 0, 'string', 'string', 'string', '2020-07-10 09:13:22', 'string', '2020-07-10 09:13:22', 0, 'string', 's');
INSERT INTO `brd_brand` VALUES (5, 1, 's', 's', 's', '2020-07-03 11:42:09', 's', '2020-07-03 11:42:12', 1, 's', 's');
INSERT INTO `brd_brand` VALUES (6, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (7, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (8, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (9, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (10, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (11, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (12, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (13, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (14, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (15, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (16, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (17, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (18, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (19, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (20, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (21, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (22, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (23, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (24, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (25, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (26, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (27, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (28, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (29, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (30, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (31, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (32, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (33, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (34, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (35, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (36, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (37, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (38, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (39, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (40, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (41, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (42, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (43, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (44, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (45, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (46, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (47, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (48, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (49, 0, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (50, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (51, 1, 'aaaaaaaaa', 'aaaaaaa', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (52, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (53, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (56, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (57, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (58, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (59, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (60, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (61, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (62, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (63, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (64, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (65, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (66, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (67, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (68, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (69, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (70, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (71, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (72, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (73, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (74, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (75, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (76, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (77, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (78, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (79, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (80, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (81, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (82, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (83, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (84, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (85, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (86, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (87, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (88, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (89, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (90, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (91, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (92, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (93, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (94, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (95, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (96, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (97, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (98, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (99, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (100, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (101, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (102, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (103, 1, 'string', 'string', 'string', '2020-07-18 10:26:33', 'string', '2020-07-18 10:26:33', 0, '1', '1');
INSERT INTO `brd_brand` VALUES (104, 1, 'sa', 'sa', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (105, 1, 's', 's', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (106, 1, 's', 's', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (107, 1, 's', 's', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (108, 1, 's', 's', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (109, 0, 'sss', 'sss', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (110, 0, 'a', 'a', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (111, 1, 'ssa', 'ssa', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (112, 0, 'qqqq', 'qqqq', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (113, 0, 'sss', 'sss', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (114, 1, 'ss', 'sss', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (115, 1, 'aa', 'aaa', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (116, 1, 'aas', 'saa', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (117, 1, 'aaaaaaa', 'aaaaaaaaaa', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (118, 1, 'fffffffffff', 'fffffffffffff', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (119, 1, 'bb', 'bbbbb', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (120, 1, 'sssssss', 'aaaaaaaa', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (121, 1, 'asd', 'dsa', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (122, 1, 'asdasd', 'asdasd', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (123, 1, 'adc', 'adc', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (124, 1, 'qwe', 'qwe', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (125, 1, 'eeeiiiii', 'eeeeiiii', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (126, 1, 'sad', 'ads', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (127, 1, 'wwww', 'wwww', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (128, 1, 'ppppppppppppp', 'ppppppppppp', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (129, 1, 'abc', 'abc', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (130, 1, 'aaa', 'aaa', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (131, 1, 'bb', 'bb', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (132, 1, 'aaaaa', 'aaaaa', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (133, 1, 'bab', 'bab', NULL, NULL, NULL, NULL, 0, NULL, NULL);
INSERT INTO `brd_brand` VALUES (145, 1, 'qq', 'aaa', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (146, 1, 'qqq', 'sqd', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (148, 1, 'a', 'a', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (149, 1, 'qqq', 'qq', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (150, 1, 'a', 'a', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (151, 1, 'ccc', 'ccc', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (152, 1, 'qs', 'sas', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (153, 1, 'adsds', 'sadas', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (154, 1, 'ddd', 'sss', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (155, 1, 'wwww', 'wwww', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (156, 1, 'qq', 'qq', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (157, 1, 'a', 'a', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (158, 1, 'x', 'x', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (159, 1, 'xa', 'xa', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (160, 1, 'ppp', 'ppp', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (161, 1, 'mmmmm', 'mmmm', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (162, 1, 'x', 'x', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (163, 1, 'vvv', 'vv', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (164, 1, 'opop', 'opopo', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (165, 1, 'uuuu', 'uuuuuu', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (166, 1, 'vv', 'vvv', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (167, 1, 'ccbbc', 'cbcbcb', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (168, 1, '23', '51', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (169, 1, '213', '123', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (170, 1, 'qq', 'qq', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (171, 1, 'x', 'x', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (172, 1, 'xx', 'xxx', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (173, 1, 'hkhjhl', 'hjlj', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (174, 1, 'x', 'x', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (175, 1, 'xxxxxx', 'xxxxxxxxxxxxxx', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (176, 1, 'das', 'das', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (177, 1, 'xxxxxxxx', 'xxxxxxxx', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (178, 1, '2222', '222222', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (179, 1, 'x', 'x', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (180, 1, 'adasasd', 'dasdasd', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (181, 1, 'xx', 'xxx', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (182, 1, 'x', 'x', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (183, 1, '123', '213', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (184, 1, 'xxxxxxxxx', 'xxxxxxxx', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (185, 1, '1', '1', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (187, 1, 'ppppppp', 'ppppppppp', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (188, 1, 'xxxxxxxxx', 'xxxxxxxx', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (189, 1, 'qqqqqqq', 'qqqqqqqqq', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (190, 1, 'x', 'x', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (191, 1, 'vv', 'vv', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (192, 1, 'z', 'z', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (193, 1, 'ccc', 'ccc', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (194, 1, 'x', 'x', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (200, 1, 'xx', 'xx', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (208, 1, 'vnvb', 'nvbnv', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (211, 1, 'qwe', 'xxx', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (212, 1, '312', '213', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (213, 18, 'x', 'x', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (214, 24, 'brands', '品牌', '', NULL, '', NULL, 0, '', '');
INSERT INTO `brd_brand` VALUES (215, 1, 'x', 'x', '', NULL, '', NULL, 0, '', '');

-- ----------------------------
-- Table structure for cdm_code_master
-- ----------------------------
DROP TABLE IF EXISTS `cdm_code_master`;
CREATE TABLE `cdm_code_master`  (
  `CDM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE_TYPE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TYPE_CD` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CODE_VAL` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SEQ_NO` int(11) NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CDM_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cdm_code_master
-- ----------------------------
INSERT INTO `cdm_code_master` VALUES (8, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (9, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (15, 'www', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (18, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (19, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (20, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (21, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (22, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (23, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (24, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (25, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (26, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (27, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (28, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (29, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (30, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (31, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (32, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (33, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (34, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (35, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (36, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (37, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (38, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (39, 'a', 'a', 'a', 'a', 0, 'a', '2020-07-17 09:18:22', 'a', '2020-07-17 09:18:44', 0, 'a', '0');
INSERT INTO `cdm_code_master` VALUES (40, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (41, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (42, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (43, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (44, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (45, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (46, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (47, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (48, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (49, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (50, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (51, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (52, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (53, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (54, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (55, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (56, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (57, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (68, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (69, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (70, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (71, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (72, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (73, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (74, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (75, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (76, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (77, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (78, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (79, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (80, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (81, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (82, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (83, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (84, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (85, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (86, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (87, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (88, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (89, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (90, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (91, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (92, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (93, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (94, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (95, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (96, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (101, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (102, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (103, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (104, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (105, 'string', 'string', 'string', 'string', 0, 'string', '2020-07-17 09:18:22', 'string', '2020-07-17 09:18:44', 0, 'string', '0');
INSERT INTO `cdm_code_master` VALUES (106, '1', '1', '1', '1', 1, '1', NULL, '1', NULL, 1, '1', '1');

-- ----------------------------
-- Table structure for drp_dropship_price
-- ----------------------------
DROP TABLE IF EXISTS `drp_dropship_price`;
CREATE TABLE `drp_dropship_price`  (
  `DRP_ID` int(11) NOT NULL,
  `OFP_ID` int(11) NULL DEFAULT NULL,
  `DSR_ID` int(11) NULL DEFAULT NULL,
  `WAR_ID` int(11) NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`DRP_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drp_dropship_price
-- ----------------------------

-- ----------------------------
-- Table structure for dsr_dropshipper
-- ----------------------------
DROP TABLE IF EXISTS `dsr_dropshipper`;
CREATE TABLE `dsr_dropshipper`  (
  `DSR_ID` int(11) NOT NULL,
  `NAME` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `REGISTER_DATE` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`DSR_ID`) USING BTREE,
  INDEX `DSR_ID`(`DSR_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dsr_dropshipper
-- ----------------------------
INSERT INTO `dsr_dropshipper` VALUES (1, '测试', 'me', '2019-04-22 13:47:54', '1', '2019-04-22 13:47:54', 1, '111@QQ.comQQ.com', '1', '2019-04-22 13:47:54');

-- ----------------------------
-- Table structure for eba_ebay_authorization
-- ----------------------------
DROP TABLE IF EXISTS `eba_ebay_authorization`;
CREATE TABLE `eba_ebay_authorization`  (
  `EBA_ID` int(11) NOT NULL,
  `STR_ID` int(11) NULL DEFAULT NULL,
  `APP_ID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SECRET_KEY` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TOKEN` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EXP_DATE` datetime(0) NULL DEFAULT NULL,
  `CANCLE_DATE` datetime(0) NULL DEFAULT NULL,
  `ACCOUNT_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`EBA_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eba_ebay_authorization
-- ----------------------------

-- ----------------------------
-- Table structure for goa_government_area
-- ----------------------------
DROP TABLE IF EXISTS `goa_government_area`;
CREATE TABLE `goa_government_area`  (
  `GOA_ID` int(11) NOT NULL,
  `ZIP_CODE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATE_SHORTHAND` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CITY` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`GOA_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goa_government_area
-- ----------------------------

-- ----------------------------
-- Table structure for img_image
-- ----------------------------
DROP TABLE IF EXISTS `img_image`;
CREATE TABLE `img_image`  (
  `IMG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WIDTH` int(11) NULL DEFAULT NULL,
  `HEIGHT` int(11) NULL DEFAULT NULL,
  `URI` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TYPE_CD` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ENTITY_ID` int(11) NULL DEFAULT NULL,
  `ENTITY_CD` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SEQ_NO` int(11) NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IMG_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of img_image
-- ----------------------------
INSERT INTO `img_image` VALUES (4, '1', 1, 1, 'http://localhost:8088/static/upload/Rem.jpg', '1', 50, 'brd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (5, '1', 1, 1, 'http://localhost:8088/static/upload/Rem.jpg', '1', 51, 'brd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (7, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 145, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (10, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 148, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (11, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 149, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (12, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 150, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (13, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 151, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (14, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 152, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (15, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 153, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (16, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 154, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (17, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 155, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (18, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 156, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (19, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 157, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (20, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 158, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (21, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 159, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (22, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 160, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (23, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 161, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (24, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 162, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (25, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 163, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (26, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 164, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (27, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 165, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (28, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 166, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (29, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 167, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (30, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 168, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (31, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 169, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (32, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 170, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (33, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 171, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (34, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 172, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (35, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 173, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (36, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 174, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (37, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 175, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (38, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 176, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (39, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 177, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (40, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 178, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (41, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 179, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (42, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 180, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (43, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 181, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (44, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 182, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (45, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 183, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (46, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 184, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (47, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 185, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (49, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 187, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (50, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 188, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (51, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 189, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (52, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 190, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (53, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 191, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (54, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 192, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (55, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 193, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (56, NULL, NULL, NULL, 'http://localhost:8088/static/upload/Rem.jpg', NULL, 194, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (62, NULL, NULL, NULL, 'http://localhost:8088/static/upload/e7f3258c-a8b9-4994-b920-234f1e06cb7f壁纸.jpg', NULL, 200, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (70, NULL, NULL, NULL, 'http://localhost:8088/static/upload/161dbae5-800b-4a62-b661-3aa4bffc95b9Rem.jpg', NULL, 208, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (73, NULL, NULL, NULL, 'http://localhost:8088/static/upload/acdb970a-1cc0-4b31-9f7d-87d31766cc0cRem.jpg', NULL, 211, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (74, NULL, NULL, NULL, 'http://localhost:8088/static/upload/55c455b5-c315-454f-9b99-84a6d1c3ec46EMT.jpg', NULL, 212, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (75, NULL, NULL, NULL, 'http://localhost:8088/static/upload/1722732d-f4c3-43a4-8def-0e5e03d7a2d1Rem.jpg', NULL, 213, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (76, NULL, NULL, NULL, 'http://localhost:8088/static/upload/d7398a59-0ac6-4f49-b64d-4b2de1ffa837EMT.jpg', NULL, 214, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (77, NULL, NULL, NULL, 'http://localhost:8088/static/upload/5d4ba898-97f9-4491-950a-60a87acb02b3屏幕快照 2019-12-06 上午11.00.13.png', NULL, 215, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (78, NULL, NULL, NULL, 'http://localhost:8088/static/upload/0595b27b-ed98-4872-96a6-01966d5b5b38EMT.jpg', NULL, 216, 'brd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (79, NULL, NULL, NULL, 'http://localhost:8088/static/upload/7d81b821-8f26-4169-b543-bb7a1d4ff819屏幕快照 2019-12-06 上午11.00.13.png', NULL, 2, 'pro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (81, NULL, NULL, NULL, 'http://localhost:8088/static/upload/f3f3330a-2bee-4b90-bcc1-f2131d792ae2屏幕快照 2019-12-06 上午11.00.13.png', NULL, 8, 'pro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image` VALUES (82, NULL, NULL, NULL, 'http://localhost:8088/static/upload/d53be593-579c-4f10-9589-b19170ae2e03firstmeet.jpg', NULL, 7, 'pro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for img_image1
-- ----------------------------
DROP TABLE IF EXISTS `img_image1`;
CREATE TABLE `img_image1`  (
  `IMG_ID` int(11) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WIDTH` int(11) NULL DEFAULT NULL,
  `HEIGHT` int(11) NULL DEFAULT NULL,
  `URL` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TYPE_CD` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ENTITY_ID` int(11) NULL DEFAULT NULL,
  `ENTITY_CD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SEQ_NO` int(11) NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IMG_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of img_image1
-- ----------------------------
INSERT INTO `img_image1` VALUES (1, '123', NULL, NULL, 'A.webp', NULL, 1, 'pro_product', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `img_image1` VALUES (2, NULL, NULL, NULL, 'B.webp', NULL, 2, 'pro_product', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for man_manufacturer
-- ----------------------------
DROP TABLE IF EXISTS `man_manufacturer`;
CREATE TABLE `man_manufacturer`  (
  `MAN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME_EN` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME_CN` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `GMC_REPORT_TYPE` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `GMC_REPORT_URL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`MAN_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of man_manufacturer
-- ----------------------------
INSERT INTO `man_manufacturer` VALUES (1, 'string', 'string', 'ag', 'ag', 'string', 'string', '2020-07-09 09:35:11', 'string', '2020-07-22 09:35:15', 0, 'string', '1');
INSERT INTO `man_manufacturer` VALUES (2, 'string', 'string', 'w', 'w', 'string', 'string', '1970-01-02 03:46:40', 'string', '1970-01-02 03:46:40', 0, 'string', 'w');
INSERT INTO `man_manufacturer` VALUES (3, 'string', 'string', 'w', 'w', 'string', 'string', '1970-01-19 10:42:22', 'string', '1970-01-19 10:42:22', 0, 'string', 'w');
INSERT INTO `man_manufacturer` VALUES (4, 'string', 'string', 'w', 'w', 'string', 'string', '1970-01-19 10:42:22', 'string', '1970-01-19 10:42:22', 0, 'string', 'w');
INSERT INTO `man_manufacturer` VALUES (5, 'string', 'string', 'w', 'w', 'string', 'string', '1970-01-31 00:29:02', 'string', '1970-01-31 00:29:02', 0, 'string', 'w');
INSERT INTO `man_manufacturer` VALUES (6, 'string', 'string', 's', 's', 'string', 'string', '2020-07-02 10:21:20', 'string', '2020-07-02 10:21:20', 0, 'string', '1');
INSERT INTO `man_manufacturer` VALUES (7, 'string', 'string', 's', 's', 'string', 'string', '2020-07-03 10:29:33', 'string', '2020-07-03 10:29:33', 0, 'string', 's');
INSERT INTO `man_manufacturer` VALUES (8, 'string', 'string', 's', 's', 'string', 'string', '2020-07-03 10:29:33', 'string', '2020-07-03 10:29:33', 0, 'string', 's');
INSERT INTO `man_manufacturer` VALUES (9, 'ss', 'ss', 'ss', 'sss', 'sssss', 'ssss', '2020-07-02 00:00:00', 'ss', '2020-07-02 00:00:00', 1, '1', '1');
INSERT INTO `man_manufacturer` VALUES (10, 'string', 'string', 's', 's', 's', 's', NULL, 's', NULL, 0, 'string', '1');
INSERT INTO `man_manufacturer` VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `man_manufacturer` VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `man_manufacturer` VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `man_manufacturer` VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `man_manufacturer` VALUES (15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `man_manufacturer` VALUES (16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `man_manufacturer` VALUES (17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `man_manufacturer` VALUES (18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `man_manufacturer` VALUES (19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `man_manufacturer` VALUES (20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `man_manufacturer` VALUES (21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `man_manufacturer` VALUES (22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `man_manufacturer` VALUES (23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `man_manufacturer` VALUES (24, 'no', '无', '1', '195 chuangxin road', '<p>1111</p>', NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for mor_monitor_result
-- ----------------------------
DROP TABLE IF EXISTS `mor_monitor_result`;
CREATE TABLE `mor_monitor_result`  (
  `MOR_ID` int(11) NOT NULL,
  `CLASS_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JSON_STRING` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATE_DATE` datetime(0) NULL DEFAULT NULL,
  `CREATE_BY` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UPDATE_DATE` datetime(0) NULL DEFAULT NULL,
  `UPDATE_BY` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`MOR_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mor_monitor_result
-- ----------------------------

-- ----------------------------
-- Table structure for ofp_offer_price
-- ----------------------------
DROP TABLE IF EXISTS `ofp_offer_price`;
CREATE TABLE `ofp_offer_price`  (
  `OFP_ID` int(11) NOT NULL,
  `MAN_ID` int(11) NULL DEFAULT NULL,
  `EFFETIVE_START_DATE` timestamp(0) NULL DEFAULT NULL,
  `EFFECTIVE_END_DATE` timestamp(0) NULL DEFAULT NULL,
  `PRO_ID` int(11) NULL DEFAULT NULL,
  `PRICE` decimal(8, 2) NULL DEFAULT NULL,
  `TYPE_CD` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DSR_ID` int(11) NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PERIOD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`OFP_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ofp_offer_price
-- ----------------------------

-- ----------------------------
-- Table structure for par_parameter
-- ----------------------------
DROP TABLE IF EXISTS `par_parameter`;
CREATE TABLE `par_parameter`  (
  `PAR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARAM_CD` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PARAM_VALUE` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`PAR_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of par_parameter
-- ----------------------------
INSERT INTO `par_parameter` VALUES (7, 'string', '1', 'string', 'string', '2020-07-14 15:39:22', 'string', '2020-07-14 15:39:33', 0, 's', '1');
INSERT INTO `par_parameter` VALUES (8, 'string', '1', 'string', 'string', '2020-07-14 15:39:22', 'string', '2020-07-14 15:39:33', 0, 's', '1');
INSERT INTO `par_parameter` VALUES (15, '777', 'ddd', 'dd', 'dddd', '2020-07-06 09:47:22', 'string', '2020-07-06 09:47:22', 0, 'string', '1');
INSERT INTO `par_parameter` VALUES (16, 'string', 'string', 'string', 'string', '2020-07-06 09:47:22', 'string', '2020-07-06 09:47:22', 0, 'string', '1');
INSERT INTO `par_parameter` VALUES (26, 'string', 'string', 'string', 'string', '2020-07-06 09:47:22', 'string', '2020-07-06 09:47:22', 0, 'string', '1');
INSERT INTO `par_parameter` VALUES (27, 'string', 'string', 'string', 'string', '2020-07-06 09:47:22', 'string', '2020-07-06 09:47:22', 0, 'string', '1');
INSERT INTO `par_parameter` VALUES (42, 'string', 'string', 'string', 'string', '2020-07-06 09:47:22', 'string', '2020-07-06 09:47:22', 0, 'string', '1');
INSERT INTO `par_parameter` VALUES (45, 'string', 'string', 'string', 'string', '2020-07-06 09:47:22', 'string', '2020-07-06 09:47:22', 0, 'string', '1');
INSERT INTO `par_parameter` VALUES (54, 'string', 'string', 'string', 'string', '2020-07-06 09:47:22', 'string', '2020-07-06 09:47:22', 0, 'string', '1');
INSERT INTO `par_parameter` VALUES (55, 'string', 'string', 'string', 'string', '2020-07-06 09:47:22', 'string', '2020-07-06 09:47:22', 0, 'string', '1');
INSERT INTO `par_parameter` VALUES (80, '213', '123', '1232', 's', '2020-07-16 11:37:33', 's', '2020-07-16 11:37:44', 1, '1', '1');
INSERT INTO `par_parameter` VALUES (83, '123', '123123', '123', 's', NULL, 's', NULL, 0, '', '');
INSERT INTO `par_parameter` VALUES (84, '31232', '3123123123', '3123213213', 'a', NULL, 'a', NULL, 1, '1', '1');
INSERT INTO `par_parameter` VALUES (85, '11', '111', '1111', '11111', '2020-07-16 12:22:10', '11111', '2020-07-16 12:22:22', 1, '无', '1');
INSERT INTO `par_parameter` VALUES (86, 's', 's', '1', 's', '2020-07-14 10:37:46', 's', '2020-07-14 10:37:49', 1, 's', '1');
INSERT INTO `par_parameter` VALUES (88, 'acd', 'abbb', 'abbbbb', 'abbbbb', NULL, 'a', NULL, 1, '1', '1');
INSERT INTO `par_parameter` VALUES (89, '', '', '', '', NULL, '', NULL, 0, '', '');
INSERT INTO `par_parameter` VALUES (90, '', '', '', '', NULL, '', NULL, 0, '', '');
INSERT INTO `par_parameter` VALUES (91, '123', '123', '123', '123', NULL, '123', NULL, 1, '1', '1');

-- ----------------------------
-- Table structure for pck_package_info
-- ----------------------------
DROP TABLE IF EXISTS `pck_package_info`;
CREATE TABLE `pck_package_info`  (
  `PCK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `WAR_ID` int(11) NULL DEFAULT NULL,
  `PRO_ID` int(11) NULL DEFAULT NULL,
  `TYPE_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WIDTH` decimal(7, 2) NULL DEFAULT NULL,
  `HEIGHT` decimal(7, 2) NULL DEFAULT NULL,
  `LENGTH` decimal(7, 2) NULL DEFAULT NULL,
  `WEIGHT` decimal(5, 2) NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `HEAVY_CARGO` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOGISTICS_COMPANY` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`PCK_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pck_package_info
-- ----------------------------
INSERT INTO `pck_package_info` VALUES (2, NULL, 1, NULL, 2.00, 2.00, 2.00, 2.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pck_package_info` VALUES (3, NULL, NULL, NULL, 2.00, 2.00, 2.00, 2.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pck_package_info` VALUES (4, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pck_package_info` VALUES (5, NULL, NULL, NULL, 234.00, 234.00, 234.00, 234.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pck_package_info` VALUES (6, NULL, NULL, NULL, 234.00, 234.00, 234.00, 234.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pck_package_info` VALUES (7, NULL, NULL, NULL, 12.00, 12.00, 12.00, 12.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pck_package_info` VALUES (8, NULL, 8, NULL, 1.00, 1.00, 1.00, 1.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pdn_product_descrition
-- ----------------------------
DROP TABLE IF EXISTS `pdn_product_descrition`;
CREATE TABLE `pdn_product_descrition`  (
  `PDN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRO_ID` int(11) NULL DEFAULT NULL,
  `TYPE_CD` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DESCRITION` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`PDN_ID`) USING BTREE,
  INDEX `PRO_ID`(`PRO_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pdn_product_descrition
-- ----------------------------
INSERT INTO `pdn_product_descrition` VALUES (6, 1, NULL, 'string1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pdn_product_descrition` VALUES (8, NULL, NULL, '<p>234</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pdn_product_descrition` VALUES (9, NULL, NULL, '<p>sdf</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pdn_product_descrition` VALUES (10, NULL, NULL, '<p>234</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pdn_product_descrition` VALUES (11, NULL, NULL, '<p>234</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pdn_product_descrition` VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pdn_product_descrition` VALUES (13, NULL, NULL, '<p>12</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pdn_product_descrition` VALUES (14, 8, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pdn_product_descrition1
-- ----------------------------
DROP TABLE IF EXISTS `pdn_product_descrition1`;
CREATE TABLE `pdn_product_descrition1`  (
  `PDN_ID` int(11) NOT NULL,
  `PRO_ID` int(11) NULL DEFAULT NULL,
  `TYPE_CD` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DESCRITION` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`PDN_ID`) USING BTREE,
  INDEX `PRO_ID`(`PRO_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pdn_product_descrition1
-- ----------------------------
INSERT INTO `pdn_product_descrition1` VALUES (1, 1, '1', '你没玩把戏，你只是在打破陈规。和adidas Predator一起，就是摆明了要在比赛中“得势不饶人”。这款无系带足球鞋，采用针织织物鞋面，舒适贴合。缀橡胶棱，助你球路“神鬼莫测”，外底分段，助你轻松奔跑。穿上它，驰骋绿茵。', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for prc_product_category
-- ----------------------------
DROP TABLE IF EXISTS `prc_product_category`;
CREATE TABLE `prc_product_category`  (
  `PRC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRO_ID` int(11) NULL DEFAULT NULL,
  `CATEGORY_ID` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CATEGORY_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CATEGORY_PATH` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PLATEFORM_TYPE` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`PRC_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prc_product_category
-- ----------------------------
INSERT INTO `prc_product_category` VALUES (1, 1, '1', '药品', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prc_product_category` VALUES (3, 2, '3', '电子产品', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prc_product_category` VALUES (4, 3, '4', '家具', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prc_product_category` VALUES (5, 6, NULL, '食品', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prc_product_category` VALUES (6, 7, NULL, '药品', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prc_product_category` VALUES (7, 8, NULL, '日常百货', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pro_product
-- ----------------------------
DROP TABLE IF EXISTS `pro_product`;
CREATE TABLE `pro_product`  (
  `PRO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SKU_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BRD_ID` int(11) NULL DEFAULT NULL,
  `MAN_ID` int(11) NULL DEFAULT NULL,
  `TITLE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UPC` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EAN` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MODEL` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WARRANTY_DAY` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RETAIL_PRICE` decimal(10, 2) NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MININUM_RETAIL_PRICE` decimal(10, 2) NULL DEFAULT NULL,
  `REPLENISHMENT_PERIOD` int(11) NULL DEFAULT NULL,
  `KEY_WORDS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WARRANTY` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `TIME_UNIT` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STOCKSETING` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`PRO_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pro_product
-- ----------------------------
INSERT INTO `pro_product` VALUES (1, '1', 1, 1, '111111', 's', 's', 's', '2020', 20.22, 's', '2020-07-06 09:34:00', 's', '2020-07-28 09:34:20', 1, '1', 'D', 1.00, 1, '1', '1', '1', 1);
INSERT INTO `pro_product` VALUES (2, '1', 1, 1, '111', 's', 's', 's', '2020', 20.22, 's', '2020-07-06 09:34:00', 's', '2020-07-28 09:34:20', 1, '1', 'A', 1.00, 1, '1', '1', '1', 1);
INSERT INTO `pro_product` VALUES (3, '1', 1, 2, '333333', 's', 's', 's', '2020', 20.22, 's', '2020-07-06 09:34:00', 's', '2020-07-28 09:34:20', 1, '1', 'A', 1.00, 1, '1', '1', '1', 1);
INSERT INTO `pro_product` VALUES (4, '1', 1, 2, '444444', 's', 's', 's', '2020', 20.22, 's', '2020-07-06 09:34:00', 's', '2020-07-28 09:34:20', 1, '1', 'A', 1.00, 1, '1', '1', '1', 1);
INSERT INTO `pro_product` VALUES (5, '1', 1, 2, '555555', 's', 's', 's', '2020', 20.22, 's', '2020-07-06 09:34:00', 's', '2020-07-28 09:34:20', 1, '1', 'A', 1.00, 1, '1', '1', '1', 1);
INSERT INTO `pro_product` VALUES (6, '234', NULL, 1, '234', '234', '234', '234', '234', 234.00, NULL, NULL, NULL, NULL, NULL, NULL, 'I', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pro_product` VALUES (7, '12', NULL, 1, '556', '12', '12', '12', '12', 12.00, NULL, NULL, NULL, NULL, NULL, NULL, 'I', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pro_product` VALUES (8, '', NULL, 1, 'www', '', '', '1', '', 1.00, NULL, NULL, NULL, NULL, NULL, NULL, 'I', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pro_product1
-- ----------------------------
DROP TABLE IF EXISTS `pro_product1`;
CREATE TABLE `pro_product1`  (
  `PRO_ID` int(11) NOT NULL,
  `SKU_CD` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BRD_ID` int(11) NULL DEFAULT NULL,
  `MAN_ID` int(11) NULL DEFAULT NULL,
  `TITLE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UPC` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EAN` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MODEL` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WARRANTY_DAY` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RETAIL_PRICE` decimal(10, 2) NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MININUM_RETAIL_PRICE` decimal(10, 2) NULL DEFAULT NULL,
  `REPLENISHMENT_PERIOD` int(11) NULL DEFAULT NULL,
  `KEY_WORDS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WARRANTY` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `TIME_UNIT` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STOCKSETING` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`PRO_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pro_product1
-- ----------------------------
INSERT INTO `pro_product1` VALUES (1, '1111', 1, 1, '足球鞋1', '1', '1', '1', '1', 14.00, NULL, NULL, NULL, NULL, NULL, NULL, 'a', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pro_product1` VALUES (2, '2222', 2, 2, '足球2', '1', '1', '1', '1', 15.00, NULL, NULL, NULL, NULL, NULL, NULL, 'a', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sal_sales_order_line_item
-- ----------------------------
DROP TABLE IF EXISTS `sal_sales_order_line_item`;
CREATE TABLE `sal_sales_order_line_item`  (
  `SAL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SAO_ID` int(11) NULL DEFAULT NULL,
  `PRO_ID` int(11) NULL DEFAULT NULL,
  `QTY` int(11) NULL DEFAULT NULL,
  `PRICE` decimal(8, 2) NULL DEFAULT NULL,
  `SOL_ID` int(11) NULL DEFAULT NULL,
  `TRACKING_NO` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WSP_NAME` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SAL_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sal_sales_order_line_item
-- ----------------------------
INSERT INTO `sal_sales_order_line_item` VALUES (1, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:09', 1, 'qs', '1', 1, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (2, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:09', 1, 'qs', '1', 2, 2, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (3, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:09', 1, 'qs', '1', 3, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (4, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:09', 1, 'qs', '1', 4, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (5, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:09', 1, 'qs', '1', 5, 3, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (6, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:09', 1, 'qs', '1', 6, 3, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (7, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 7, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (8, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 8, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (9, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 9, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (10, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 10, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (11, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 11, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (12, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 12, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (13, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 13, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (14, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 14, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (15, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 15, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (16, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 16, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (17, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 17, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (18, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 18, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (19, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 19, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (20, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 20, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (21, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 21, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (22, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 22, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (23, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 23, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (24, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 24, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (25, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 25, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (26, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 26, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (27, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 27, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (28, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 28, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (29, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 29, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (30, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 30, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (31, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 31, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (32, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 32, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (33, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 33, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (34, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 34, 1, 1, 1.00, 1, '1', 'sss');
INSERT INTO `sal_sales_order_line_item` VALUES (35, 'a', '2020-07-08 10:14:07', 'a', '2020-07-08 10:14:07', 1, 'qs', '1', 35, 1, 1, 1.00, 1, '1', 'sss');

-- ----------------------------
-- Table structure for sao_sales_order
-- ----------------------------
DROP TABLE IF EXISTS `sao_sales_order`;
CREATE TABLE `sao_sales_order`  (
  `SAO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CREATED_BY` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MAN_ID` int(11) NULL DEFAULT NULL,
  `WAR_ID` int(11) NULL DEFAULT NULL,
  `SYNC_DATE` timestamp(0) NULL DEFAULT NULL,
  `PAYMENT_DATE` timestamp(0) NULL DEFAULT NULL,
  `PUSH_DATE` timestamp(0) NULL DEFAULT NULL,
  `TRACK_NO_DATE` timestamp(0) NULL DEFAULT NULL,
  `FULFILLMENT_DATE` timestamp(0) NULL DEFAULT NULL,
  `SETTLEMENT_DATE` timestamp(0) NULL DEFAULT NULL,
  `PRODUCT_AMOUNT` decimal(8, 2) NULL DEFAULT NULL,
  `FREIGHT_COST` decimal(8, 2) NULL DEFAULT NULL,
  `HANDLING_FEE` decimal(8, 2) NULL DEFAULT NULL,
  `CUSTOMER_REMARK` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ORDER_NO` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ORDER_STS` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `REFUND_STS` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DELIVERY_STS` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STO_ID` int(11) NULL DEFAULT NULL,
  `LAST_FREIGHT_COST` decimal(8, 2) NULL DEFAULT NULL,
  `CANCLE_TIME` timestamp(0) NULL DEFAULT NULL,
  `AUTO_PAY_STATUS` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BUYER_CHECKOUT_MESSAGE` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `AUTO_PAY_TIME` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SAO_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sao_sales_order
-- ----------------------------
INSERT INTO `sao_sales_order` VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 999.00, 100.00, NULL, NULL, NULL, '1', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sao_sales_order` VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 555.00, NULL, NULL, NULL, NULL, '1', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sao_sales_order` VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 111.00, NULL, NULL, NULL, NULL, '2', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sao_sales_order` VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 333.00, NULL, NULL, NULL, NULL, '3', NULL, '2', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sao_sales_order` VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 444.00, NULL, NULL, NULL, NULL, '3', NULL, '3', 5, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sdi_store_dropship_item
-- ----------------------------
DROP TABLE IF EXISTS `sdi_store_dropship_item`;
CREATE TABLE `sdi_store_dropship_item`  (
  `DIL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRO_ID` int(11) NULL DEFAULT NULL,
  `STR_ID` int(11) NULL DEFAULT NULL,
  `STORE_RETENTION` int(11) NULL DEFAULT NULL,
  `DROPSHIP_PRICE` decimal(10, 2) NULL DEFAULT NULL,
  `DROPSHIP_STATUS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SHELF_STOCK` int(11) NULL DEFAULT NULL,
  `PREFER_DATE` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`DIL_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sdi_store_dropship_item
-- ----------------------------
INSERT INTO `sdi_store_dropship_item` VALUES (4, 1, 4, NULL, 14.00, '1', NULL, '2020-07-07 16:38:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sdi_store_dropship_item` VALUES (5, 1, 2, NULL, 14.00, '1', NULL, '2020-07-07 16:38:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sdi_store_dropship_item` VALUES (6, 1, 6, NULL, 14.00, '1', NULL, '2020-07-07 16:38:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sdi_store_dropship_item` VALUES (7, 1, 7, NULL, 14.00, '1', NULL, '2020-07-07 16:38:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sdi_store_dropship_item` VALUES (8, 1, 1, NULL, 14.00, '1', NULL, '2020-07-07 16:57:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sdi_store_dropship_item` VALUES (9, 1, 5, NULL, 14.00, '1', NULL, '2020-07-07 16:57:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sdi_store_dropship_item` VALUES (10, 1, 3, NULL, 14.00, '1', NULL, '2020-07-07 16:57:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sdi_store_dropship_item` VALUES (11, 1, 8, NULL, 14.00, '1', NULL, '2020-07-07 16:57:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sdi_store_dropship_item` VALUES (12, 1, 9, NULL, 14.00, '1', NULL, '2020-07-21 11:17:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sdi_store_dropship_item` VALUES (13, 1, 1, NULL, 14.00, '1', NULL, '2020-07-21 17:48:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sdi_store_dropship_item` VALUES (14, 1, 1, NULL, 14.00, '1', NULL, '2020-07-21 17:48:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sdi_store_dropship_item` VALUES (15, 1, 2, NULL, 14.00, '1', NULL, '2020-07-21 21:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sdi_store_dropship_item` VALUES (16, 1, 1, NULL, 14.00, '1', NULL, '2020-07-21 21:32:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sequence
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence`  (
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `current_value` int(11) NULL DEFAULT NULL,
  `increment` int(11) NULL DEFAULT NULL,
  `initial` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sequence
-- ----------------------------

-- ----------------------------
-- Table structure for sha_shipping_address
-- ----------------------------
DROP TABLE IF EXISTS `sha_shipping_address`;
CREATE TABLE `sha_shipping_address`  (
  `SHA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FAMILY_NAME` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `GIVEN_NAME` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `COUNTRY_NAME` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `COUNTRY_ISO_CD` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATE_OR_PROVINCE_NAME` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATE_OR_PROVINCE_CD` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CITY_NAME` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ADDRESS_LINE1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ADDRESS_LINE2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ADDRESS_LINE3` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `POSTAL_CD` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CONTACT_PHONE_NO` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EMAIL` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STO_ID` int(11) NULL DEFAULT NULL,
  `CARRIER_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SHA_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sha_shipping_address
-- ----------------------------
INSERT INTO `sha_shipping_address` VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '张', '丽丽', '中国', '010000', '内蒙古自治区', '15', '锡林郭勒盟', '阿巴嘎旗', '吉日嘎朗图苏木', '中共吉日嘎朗图苏木委员会', '111111', '+ 8615245459632', 'gg@gmail.com', 1, 'STO');

-- ----------------------------
-- Table structure for sol_store_order_line_item
-- ----------------------------
DROP TABLE IF EXISTS `sol_store_order_line_item`;
CREATE TABLE `sol_store_order_line_item`  (
  `SOL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_ITEM_ID` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STO_ID` int(11) NULL DEFAULT NULL,
  `SALES_PRICE` decimal(8, 2) NULL DEFAULT NULL,
  `QTY` int(11) NULL DEFAULT NULL,
  `SKU_NO` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BUYER_CHECKOUT_MESSAGE` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`SOL_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sol_store_order_line_item
-- ----------------------------
INSERT INTO `sol_store_order_line_item` VALUES (1, NULL, 1, 14.00, 3, '1111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sol_store_order_line_item` VALUES (2, NULL, 2, 15.00, 3, '22222222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sol_store_order_line_item` VALUES (3, NULL, 3, 30.00, 2, '3333333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sol_store_order_line_item` VALUES (4, NULL, 4, 16.00, 4, '444444444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sol_store_order_line_item` VALUES (5, NULL, 5, 18.00, 3, '4444445', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for spa_specific_attribute
-- ----------------------------
DROP TABLE IF EXISTS `spa_specific_attribute`;
CREATE TABLE `spa_specific_attribute`  (
  `SPA_ID` int(11) NOT NULL,
  `PRO_ID` int(11) NULL DEFAULT NULL,
  `NAME_EN` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME_CN` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SEQ_NO` int(11) NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SPA_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spa_specific_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for spv_specific_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS `spv_specific_attribute_value`;
CREATE TABLE `spv_specific_attribute_value`  (
  `SPV_ID` int(11) NOT NULL,
  `SPA_ID` int(11) NULL DEFAULT NULL,
  `NAME_EN` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME_CN` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SPV_ID`) USING BTREE,
  INDEX `SPA_ID`(`SPA_ID`) USING BTREE,
  CONSTRAINT `spv_specific_attribute_value_ibfk_1` FOREIGN KEY (`SPA_ID`) REFERENCES `spa_specific_attribute` (`SPA_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spv_specific_attribute_value
-- ----------------------------

-- ----------------------------
-- Table structure for sto_store_order
-- ----------------------------
DROP TABLE IF EXISTS `sto_store_order`;
CREATE TABLE `sto_store_order`  (
  `STO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `STR_ID` int(11) NULL DEFAULT NULL,
  `ORDER_ID` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ORDER_CREATED_TIME` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PAID_TIME` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_MODIFIED_TIME` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PLATEFORM_TYPE` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CANCEL_COMPLETE_DATE` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`STO_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sto_store_order
-- ----------------------------
INSERT INTO `sto_store_order` VALUES (1, 1, '11111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sto_store_order` VALUES (2, 1, '22222222222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sto_store_order` VALUES (3, 1, '2333333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sto_store_order` VALUES (4, 1, '444444444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sto_store_order` VALUES (5, 1, '3767678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for str_store
-- ----------------------------
DROP TABLE IF EXISTS `str_store`;
CREATE TABLE `str_store`  (
  `STR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DSR_ID` int(11) NULL DEFAULT NULL,
  `PLATAEFORM_TYPE` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STORE_NAME` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STORE_STS_CD` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`STR_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of str_store
-- ----------------------------
INSERT INTO `str_store` VALUES (1, 1, '1', 'ama', '3', NULL, '2020-07-05 10:40:57', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `str_store` VALUES (2, 1, '2', 'EBBBAy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `str_store` VALUES (3, 1, '1', '吃的舒服的·', '2', '1', '2020-07-06 09:51:25', '1', NULL, NULL, '1', NULL);
INSERT INTO `str_store` VALUES (4, 1, '2', '粉红色v阿法狗v四u部分', '2', '1', '2020-07-06 09:52:08', '1', NULL, NULL, '1', NULL);
INSERT INTO `str_store` VALUES (5, 1, '1', '回归大海v给', '2', '1', '2020-07-06 09:52:25', '1', NULL, NULL, '1', NULL);
INSERT INTO `str_store` VALUES (6, 1, '2', '对对对', '2', '1', '2020-07-06 09:57:13', '1', NULL, NULL, '1', NULL);
INSERT INTO `str_store` VALUES (7, 1, '2', 'adasd', '2', '1', '2020-07-06 11:48:55', '1', NULL, NULL, '1', NULL);
INSERT INTO `str_store` VALUES (8, 1, '1', '店铺1', '2', '1', '2020-07-07 16:50:49', '1', NULL, NULL, '1', NULL);
INSERT INTO `str_store` VALUES (9, 1, '1', '测试 ama', '2', '1', '2020-07-21 11:15:14', '1', NULL, NULL, '1', NULL);

-- ----------------------------
-- Table structure for sys_andorra
-- ----------------------------
DROP TABLE IF EXISTS `sys_andorra`;
CREATE TABLE `sys_andorra`  (
  `id` bigint(11) NULL DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adurl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publisher` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` datetime(0) NULL DEFAULT NULL,
  `uptime` datetime(0) NULL DEFAULT NULL,
  `starttime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `endtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tourl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_andorra
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `MENU_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MENU_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MENU_URL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PARENT_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MENU_ORDER` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MENU_ICON` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MENU_TYPE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MENU_HIDDEN` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (21, 'BVO', '#', NULL, '0', 'fa fa-adn', NULL, NULL);
INSERT INTO `sys_menu` VALUES (22, '我的信息(BVO)', '/bvo/myInfor', '21', '1', 'el-icon-folder', NULL, NULL);
INSERT INTO `sys_menu` VALUES (23, '店铺管理', '/bvo/store', '21', '222', 'fa fa-th-list', NULL, NULL);
INSERT INTO `sys_menu` VALUES (24, '商品浏览', '/bvo/proView', '21', '221', 'fa fa-th-list', NULL, NULL);
INSERT INTO `sys_menu` VALUES (25, '心愿单', '/bvo/proLoveList', '21', '220', 'fa fa-th-list', NULL, NULL);
INSERT INTO `sys_menu` VALUES (26, '订单管理(BVO)', '/bvo/orderManage', '21', '219', 'fa fa-th-list', NULL, NULL);
INSERT INTO `sys_menu` VALUES (27, '商品详情', '/bvo/proDetail', '21', '218', 'fa fa-th-list', NULL, 1);
INSERT INTO `sys_menu` VALUES (31, 'MVO', '#', NULL, '0', 'el-icon-folder', NULL, NULL);
INSERT INTO `sys_menu` VALUES (32, '我的信息(MVO)', '/mvo/mvo-myInfo', '31', '11', 'fa fa-th-list', NULL, NULL);
INSERT INTO `sys_menu` VALUES (33, '商品录入', '/mvo/mvo-goodsRecord', '31', '12', 'el-icon-folder', NULL, NULL);
INSERT INTO `sys_menu` VALUES (34, '订单管理(MVO)', '/mvo/mvo-orderManagement', '31', '13', 'el-icon-folder', NULL, NULL);
INSERT INTO `sys_menu` VALUES (35, '商品主图', '/mvo/mvo-goodsMain', '31', '14', 'fa fa-th-list', NULL, NULL);
INSERT INTO `sys_menu` VALUES (36, '我的钱包', '/mvo/mvo-myWallet', '31', '15', 'el-icon-folder', NULL, NULL);
INSERT INTO `sys_menu` VALUES (37, '初次见面', '/mvo/mvo-firstMeet', '31', '16', 'el-icon-folder', NULL, 1);
INSERT INTO `sys_menu` VALUES (38, '信息编辑', '/mvo/mvo-myInfo-edit', '31', '17', 'el-icon-folder', NULL, 1);
INSERT INTO `sys_menu` VALUES (39, '商品信息录入', '/mvo/mvo-goodsNewRecord', '31', '18', 'el-icon-folder', NULL, 1);
INSERT INTO `sys_menu` VALUES (40, '钱包账户', '/mvo/mvo-myWalletAccount', '31', '19', 'el-icon-folder', NULL, 1);
INSERT INTO `sys_menu` VALUES (41, '提现流水', '/mvo/mvo-withdrawDetail', '31', '20', 'el-icon-folder', NULL, 1);
INSERT INTO `sys_menu` VALUES (42, '菜单管理', '#', NULL, '55', 'el-icon-folder', NULL, NULL);
INSERT INTO `sys_menu` VALUES (43, '菜单列表', '/menu/menuList', '42', '21', 'el-icon-folder', NULL, NULL);
INSERT INTO `sys_menu` VALUES (44, '菜单授权', '/menu/menuAuth', '42', '33', 'el-icon-folder', NULL, NULL);
INSERT INTO `sys_menu` VALUES (45, '其他管理', '#', NULL, '0', 'el-icon-folder', NULL, NULL);
INSERT INTO `sys_menu` VALUES (46, '数据字典', '/cdm/index', '45', '223', 'fa fa-th-list', NULL, NULL);
INSERT INTO `sys_menu` VALUES (47, '参数管理', '/parameter/index', '45', '554', 'education', NULL, NULL);
INSERT INTO `sys_menu` VALUES (48, '钱包注册', '/mvo/mvo-myWalletRegis', '31', '234', 'fa fa-th-list', NULL, 1);
INSERT INTO `sys_menu` VALUES (49, '钱包Admin', '/wallet/walletAdmin', '45', '55', 'fa fa-th-list', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_frontend_menu_table
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_frontend_menu_table`;
CREATE TABLE `sys_role_frontend_menu_table`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色ID',
  `frontend_menu_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '前端菜单管理ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 374 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_frontend_menu_table
-- ----------------------------
INSERT INTO `sys_role_frontend_menu_table` VALUES (191, '3', '22');
INSERT INTO `sys_role_frontend_menu_table` VALUES (192, '3', '21');
INSERT INTO `sys_role_frontend_menu_table` VALUES (312, '2', '32');
INSERT INTO `sys_role_frontend_menu_table` VALUES (313, '2', '33');
INSERT INTO `sys_role_frontend_menu_table` VALUES (314, '2', '34');
INSERT INTO `sys_role_frontend_menu_table` VALUES (315, '2', '35');
INSERT INTO `sys_role_frontend_menu_table` VALUES (316, '2', '36');
INSERT INTO `sys_role_frontend_menu_table` VALUES (317, '2', '37');
INSERT INTO `sys_role_frontend_menu_table` VALUES (318, '2', '38');
INSERT INTO `sys_role_frontend_menu_table` VALUES (319, '2', '39');
INSERT INTO `sys_role_frontend_menu_table` VALUES (320, '2', '40');
INSERT INTO `sys_role_frontend_menu_table` VALUES (321, '2', '41');
INSERT INTO `sys_role_frontend_menu_table` VALUES (322, '2', '31');
INSERT INTO `sys_role_frontend_menu_table` VALUES (323, '2', '22');
INSERT INTO `sys_role_frontend_menu_table` VALUES (324, '2', '21');
INSERT INTO `sys_role_frontend_menu_table` VALUES (343, '1', '43');
INSERT INTO `sys_role_frontend_menu_table` VALUES (344, '1', '44');
INSERT INTO `sys_role_frontend_menu_table` VALUES (345, '1', '42');
INSERT INTO `sys_role_frontend_menu_table` VALUES (346, '1', '22');
INSERT INTO `sys_role_frontend_menu_table` VALUES (347, '1', '21');
INSERT INTO `sys_role_frontend_menu_table` VALUES (348, '1', '32');
INSERT INTO `sys_role_frontend_menu_table` VALUES (349, '1', '33');
INSERT INTO `sys_role_frontend_menu_table` VALUES (350, '1', '34');
INSERT INTO `sys_role_frontend_menu_table` VALUES (351, '1', '35');
INSERT INTO `sys_role_frontend_menu_table` VALUES (352, '1', '36');
INSERT INTO `sys_role_frontend_menu_table` VALUES (353, '1', '37');
INSERT INTO `sys_role_frontend_menu_table` VALUES (354, '1', '38');
INSERT INTO `sys_role_frontend_menu_table` VALUES (355, '1', '39');
INSERT INTO `sys_role_frontend_menu_table` VALUES (356, '1', '40');
INSERT INTO `sys_role_frontend_menu_table` VALUES (357, '1', '41');
INSERT INTO `sys_role_frontend_menu_table` VALUES (358, '1', '31');
INSERT INTO `sys_role_frontend_menu_table` VALUES (359, '1', '46');
INSERT INTO `sys_role_frontend_menu_table` VALUES (360, '1', '47');
INSERT INTO `sys_role_frontend_menu_table` VALUES (361, '1', '45');
INSERT INTO `sys_role_frontend_menu_table` VALUES (362, '1', '48');
INSERT INTO `sys_role_frontend_menu_table` VALUES (363, '1', '23');
INSERT INTO `sys_role_frontend_menu_table` VALUES (364, '1', '24');
INSERT INTO `sys_role_frontend_menu_table` VALUES (365, '1', '25');
INSERT INTO `sys_role_frontend_menu_table` VALUES (366, '1', '26');
INSERT INTO `sys_role_frontend_menu_table` VALUES (367, '1', '27');
INSERT INTO `sys_role_frontend_menu_table` VALUES (368, '3', '23');
INSERT INTO `sys_role_frontend_menu_table` VALUES (369, '3', '24');
INSERT INTO `sys_role_frontend_menu_table` VALUES (370, '3', '25');
INSERT INTO `sys_role_frontend_menu_table` VALUES (371, '3', '26');
INSERT INTO `sys_role_frontend_menu_table` VALUES (372, '3', '27');
INSERT INTO `sys_role_frontend_menu_table` VALUES (373, '1', '49');

-- ----------------------------
-- Table structure for sys_role_table
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_table`;
CREATE TABLE `sys_role_table`  (
  `role_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `role_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色ID',
  `description` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE INDEX `sys_role_table_pk`(`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_table
-- ----------------------------
INSERT INTO `sys_role_table` VALUES ('1', 'admin', '超级管理员');
INSERT INTO `sys_role_table` VALUES ('2', 'mvo', '品牌商');
INSERT INTO `sys_role_table` VALUES ('3', 'bvo', '借卖方');

-- ----------------------------
-- Table structure for sys_role_user_table
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user_table`;
CREATE TABLE `sys_role_user_table`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色ID',
  `user_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 325 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_user_table
-- ----------------------------
INSERT INTO `sys_role_user_table` VALUES (22, '2', '11');
INSERT INTO `sys_role_user_table` VALUES (233, '3', '123');
INSERT INTO `sys_role_user_table` VALUES (322, '1', '20');
INSERT INTO `sys_role_user_table` VALUES (324, '3', '1');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `USER_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PASSWORD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RIGHTS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ROLE_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_LOGIN` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IP` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BZ` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SKIN` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EMAIL` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NUMBER` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PHONE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MAN_BUYER_ID` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`USER_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '$2a$10$1H81ddXs9x/KqYC3IA.kBO7hFac5KXHz1Bgwt49GZbwvjXkXbLFTq', 'Kevin', NULL, '3', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_user` VALUES ('11', 'aa', '$2a$10$1H81ddXs9x/KqYC3IA.kBO7hFac5KXHz1Bgwt49GZbwvjXkXbLFTq', 'string', 'string', '2', 'string', 'string', '1', 'string', 'string', 'string', 'string', 'string', 0);
INSERT INTO `sys_user` VALUES ('123', 'bb', '$2a$10$1H81ddXs9x/KqYC3IA.kBO7hFac5KXHz1Bgwt49GZbwvjXkXbLFTq', 'bb', 'bb', '3', 'bb', 'bb', '1', 'b', 'b', 'b', 'b', 'v', 0);
INSERT INTO `sys_user` VALUES ('20', '1', '$2a$10$1H81ddXs9x/KqYC3IA.kBO7hFac5KXHz1Bgwt49GZbwvjXkXbLFTq', 'admin', 'w', '1', 'e', 'r', '1', 'string', 'string', 'string', 'string', 'string', 0);

-- ----------------------------
-- Table structure for ull_user_login_logout_log
-- ----------------------------
DROP TABLE IF EXISTS `ull_user_login_logout_log`;
CREATE TABLE `ull_user_login_logout_log`  (
  `ULL_ID` int(11) NOT NULL,
  `USI_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TOKEN` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TERMINAL_TYPE` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OPERATING_TYPE` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OPERATING_DATE` timestamp(0) NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ULL_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ull_user_login_logout_log
-- ----------------------------

-- ----------------------------
-- Table structure for waa_wallet_account
-- ----------------------------
DROP TABLE IF EXISTS `waa_wallet_account`;
CREATE TABLE `waa_wallet_account`  (
  `BUYER_ID` int(10) NOT NULL AUTO_INCREMENT,
  `ACCOUNT_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EMAIL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PASSWORD` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ACTIVE_TIME` datetime(0) NULL DEFAULT NULL,
  `IS_ACTIVE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` tinyint(2) NULL DEFAULT NULL,
  `CREATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATE_TIME` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_TIME` timestamp(0) NULL DEFAULT NULL,
  `ACCOUNT_TYPE` int(11) NULL DEFAULT NULL,
  `HOLD_ORDER_TIME` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AUTO_PAY_STATUS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`BUYER_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waa_wallet_account
-- ----------------------------
INSERT INTO `waa_wallet_account` VALUES (23, 'admin', '123', '123', NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for waa_wallet_account1
-- ----------------------------
DROP TABLE IF EXISTS `waa_wallet_account1`;
CREATE TABLE `waa_wallet_account1`  (
  `BUYER_ID` int(10) NOT NULL,
  `ACCOUNT_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EMAIL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PASSWORD` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ACTIVE_TIME` datetime(0) NULL DEFAULT NULL,
  `IS_ACTIVE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` tinyint(2) NULL DEFAULT NULL,
  `CREATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATE_TIME` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_TIME` timestamp(0) NULL DEFAULT NULL,
  `ACCOUNT_TYPE` int(11) NULL DEFAULT NULL,
  `HOLD_ORDER_TIME` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AUTO_PAY_STATUS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`BUYER_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of waa_wallet_account1
-- ----------------------------
INSERT INTO `waa_wallet_account1` VALUES (1, 'admin', NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for waf_wallet_account_fund
-- ----------------------------
DROP TABLE IF EXISTS `waf_wallet_account_fund`;
CREATE TABLE `waf_wallet_account_fund`  (
  `BUYER_ID` int(10) NOT NULL AUTO_INCREMENT,
  `AVAILABLE_MONEY` decimal(10, 4) NULL DEFAULT NULL,
  `DEPOSITING_MONEY` decimal(10, 4) NULL DEFAULT NULL,
  `WITHDRAWING_MONEY` decimal(10, 4) NULL DEFAULT NULL,
  `CREATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATE_TIME` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_TIME` timestamp(0) NULL DEFAULT NULL,
  `CURRENCY` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`BUYER_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waf_wallet_account_fund
-- ----------------------------
INSERT INTO `waf_wallet_account_fund` VALUES (23, 16.0000, 0.0000, 0.0000, NULL, NULL, NULL, '2020-07-22 10:02:51', 'RMB');

-- ----------------------------
-- Table structure for waf_wallet_account_fund1
-- ----------------------------
DROP TABLE IF EXISTS `waf_wallet_account_fund1`;
CREATE TABLE `waf_wallet_account_fund1`  (
  `BUYER_ID` int(10) NOT NULL,
  `AVAILABLE_MONEY` decimal(10, 4) NULL DEFAULT NULL,
  `DEPOSITING_MONEY` decimal(10, 4) NULL DEFAULT NULL,
  `WITHDRAWING_MONEY` decimal(10, 4) NULL DEFAULT NULL,
  `CREATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATE_TIME` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_TIME` timestamp(0) NULL DEFAULT NULL,
  `CURRENCY` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`BUYER_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of waf_wallet_account_fund1
-- ----------------------------
INSERT INTO `waf_wallet_account_fund1` VALUES (1, 7115.0000, 2000.0000, 100.0000, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for wit_wishlist
-- ----------------------------
DROP TABLE IF EXISTS `wit_wishlist`;
CREATE TABLE `wit_wishlist`  (
  `WIT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DSR_ID` int(11) NULL DEFAULT NULL,
  `PRO_ID` int(11) NULL DEFAULT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_DATE` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_DATE` timestamp(0) NULL DEFAULT NULL,
  `CALL_CNT` int(11) NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STS_CD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`WIT_ID`) USING BTREE,
  INDEX `DSR_ID`(`DSR_ID`) USING BTREE,
  INDEX `PRO_ID`(`PRO_ID`) USING BTREE,
  CONSTRAINT `wit_wishlist_ibfk_1` FOREIGN KEY (`DSR_ID`) REFERENCES `dsr_dropshipper` (`DSR_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wit_wishlist
-- ----------------------------

-- ----------------------------
-- Table structure for wta_wallet_transaction_aduit
-- ----------------------------
DROP TABLE IF EXISTS `wta_wallet_transaction_aduit`;
CREATE TABLE `wta_wallet_transaction_aduit`  (
  `TRANSACTION_AUDIT_ID` int(10) NOT NULL AUTO_INCREMENT,
  `BUYER_ID` int(10) NULL DEFAULT NULL,
  `TRANSACTION_ID` int(10) NULL DEFAULT NULL,
  `AVAILABLE_MONEY_BEFORE` decimal(10, 4) NULL DEFAULT NULL,
  `DEPOSITING_MONEY_BEFORE` decimal(10, 4) NULL DEFAULT NULL,
  `WITHDRAWING_MONEY_BEFORE` decimal(10, 4) NULL DEFAULT NULL,
  `OPERATE_MONEY` decimal(10, 4) NULL DEFAULT NULL,
  `OPERATE_TYPE` tinyint(2) NULL DEFAULT NULL,
  `AVAILABLE_MONEY_AFTER` decimal(10, 4) NULL DEFAULT NULL,
  `DEPOSITING_MONEY_AFTER` decimal(10, 4) NULL DEFAULT NULL,
  `WITHDRAWING_MONEY_AFTER` decimal(10, 4) NULL DEFAULT NULL,
  `OPERATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` tinyint(2) NULL DEFAULT NULL,
  `CREATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATE_TIME` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_TIME` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`TRANSACTION_AUDIT_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wta_wallet_transaction_aduit
-- ----------------------------
INSERT INTO `wta_wallet_transaction_aduit` VALUES (28, 23, 16, 0.0000, 1.0000, 0.0000, 1.0000, 1, 1.0000, 0.0000, 0.0000, NULL, 4, NULL, '2020-07-21 18:01:49', NULL, '2020-07-21 18:01:49');
INSERT INTO `wta_wallet_transaction_aduit` VALUES (29, 23, 17, 1.0000, 1.0000, 0.0000, 1.0000, 1, 2.0000, 0.0000, 0.0000, NULL, 4, NULL, '2020-07-22 09:23:22', NULL, '2020-07-22 09:23:22');
INSERT INTO `wta_wallet_transaction_aduit` VALUES (30, 23, 18, 2.0000, 1.0000, 0.0000, 1.0000, 1, 3.0000, 0.0000, 0.0000, NULL, 4, NULL, '2020-07-22 09:31:26', NULL, '2020-07-22 09:31:26');
INSERT INTO `wta_wallet_transaction_aduit` VALUES (31, 23, 19, 3.0000, 0.0000, 1.0000, 1.0000, 2, 2.0000, 0.0000, 0.0000, NULL, 4, NULL, '2020-07-22 09:32:33', NULL, '2020-07-22 09:32:33');
INSERT INTO `wta_wallet_transaction_aduit` VALUES (32, 23, 20, 2.0000, 2.0000, 0.0000, 2.0000, 1, 4.0000, 0.0000, 0.0000, NULL, 4, NULL, '2020-07-22 09:55:33', NULL, '2020-07-22 09:55:33');
INSERT INTO `wta_wallet_transaction_aduit` VALUES (33, 23, 21, 4.0000, 12.0000, 0.0000, 12.0000, 1, 16.0000, 0.0000, 0.0000, NULL, 4, NULL, '2020-07-22 10:02:21', NULL, '2020-07-22 10:02:21');
INSERT INTO `wta_wallet_transaction_aduit` VALUES (34, 23, 22, 4.0000, 12.0000, 2.0000, 2.0000, 2, 2.0000, 12.0000, 0.0000, NULL, 4, NULL, '2020-07-22 10:02:51', NULL, '2020-07-22 10:02:51');

-- ----------------------------
-- Table structure for wtr_wallet_transaction_record
-- ----------------------------
DROP TABLE IF EXISTS `wtr_wallet_transaction_record`;
CREATE TABLE `wtr_wallet_transaction_record`  (
  `TRANSACTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BUYER_ID` int(11) NULL DEFAULT NULL,
  `BANK_CARD_ID` int(11) NULL DEFAULT NULL,
  `TRANSACTION_NUMBER` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TRANSACTION_TYPE` tinyint(4) NULL DEFAULT NULL,
  `ACCOUNT_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TRANSACTION_MONEY` decimal(10, 4) NULL DEFAULT NULL,
  `COMMISSION` decimal(10, 4) NULL DEFAULT NULL,
  `DISCOUNT_COMMISSION` decimal(10, 4) NULL DEFAULT NULL,
  `TRANSACTION_METHOD` tinyint(4) NULL DEFAULT NULL,
  `COMPLETE_TIME` datetime(0) NULL DEFAULT NULL,
  `STATUS` tinyint(4) NULL DEFAULT NULL,
  `ACTUAL_MONEY` decimal(10, 4) NULL DEFAULT NULL,
  `ACTUAL_COMMISSION` decimal(10, 4) NULL DEFAULT NULL,
  `ACTUAL_DISCOUNT_COMMISSION` decimal(10, 4) NULL DEFAULT NULL,
  `BALANCE` decimal(10, 4) NULL DEFAULT NULL,
  `BUSINESS_ID` int(11) NULL DEFAULT NULL,
  `FINANCE_TYPE` tinyint(4) NULL DEFAULT NULL,
  `NOTE` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OPERATOR_NAME` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OPERATOR_IP` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATE_TIME` timestamp(0) NULL DEFAULT NULL,
  `LAST_UPDATE_BY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATE_TIME` timestamp(0) NULL DEFAULT NULL,
  `BANK_RECEIPT_URL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EXCHANGE_RATE` decimal(10, 4) NULL DEFAULT NULL,
  `TRANSACTION_DESC` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FOREIGN_EXCHANGE_FEE` decimal(10, 4) NULL DEFAULT NULL,
  `WITHDRAW_FEE` decimal(10, 4) NULL DEFAULT NULL,
  PRIMARY KEY (`TRANSACTION_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wtr_wallet_transaction_record
-- ----------------------------
INSERT INTO `wtr_wallet_transaction_record` VALUES (16, 23, 0, NULL, 1, 'admin', 1.0000, NULL, NULL, 0, NULL, 4, NULL, NULL, NULL, 0.0000, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-21 18:01:49', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `wtr_wallet_transaction_record` VALUES (17, 23, 0, NULL, 1, 'admin', 1.0000, NULL, NULL, 0, NULL, 4, NULL, NULL, NULL, 1.0000, 0, 1, NULL, NULL, NULL, NULL, '2020-07-22 09:23:22', NULL, '2020-07-22 09:23:22', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `wtr_wallet_transaction_record` VALUES (18, 23, 0, NULL, 1, 'admin', 1.0000, NULL, NULL, 0, NULL, 4, NULL, NULL, NULL, 2.0000, 0, 1, NULL, NULL, NULL, NULL, '2020-07-22 09:31:26', NULL, '2020-07-22 09:31:26', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `wtr_wallet_transaction_record` VALUES (19, 23, 0, NULL, 2, 'admin', 1.0000, NULL, NULL, 0, NULL, 4, NULL, NULL, NULL, 3.0000, 0, 2, NULL, NULL, NULL, NULL, '2020-07-22 09:32:33', NULL, '2020-07-22 09:32:33', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `wtr_wallet_transaction_record` VALUES (20, 23, 0, NULL, 1, 'admin', 2.0000, NULL, NULL, 0, NULL, 4, NULL, NULL, NULL, 2.0000, 0, 1, NULL, NULL, NULL, NULL, '2020-07-22 09:55:33', NULL, '2020-07-22 09:55:33', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `wtr_wallet_transaction_record` VALUES (21, 23, 0, NULL, 1, 'admin', 12.0000, NULL, NULL, 0, NULL, 4, NULL, NULL, NULL, 4.0000, 0, 1, NULL, NULL, NULL, NULL, '2020-07-22 10:02:21', NULL, '2020-07-22 10:02:21', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `wtr_wallet_transaction_record` VALUES (22, 23, 0, NULL, 2, 'admin', 2.0000, NULL, NULL, 0, NULL, 4, NULL, NULL, NULL, 4.0000, 0, 2, NULL, NULL, NULL, NULL, '2020-07-22 10:02:51', NULL, '2020-07-22 10:02:51', NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
