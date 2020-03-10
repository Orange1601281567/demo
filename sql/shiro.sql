/*
 Navicat MySQL Data Transfer

 Source Server         : cc
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : shiro

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 09/08/2019 14:05:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for roles_permissions
-- ----------------------------
DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE `roles_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_roles_permissions`(`rolename`, `permission`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles_permissions
-- ----------------------------
INSERT INTO `roles_permissions` VALUES (1, 'admin', 'user:add');
INSERT INTO `roles_permissions` VALUES (4, 'admin', 'user:del');
INSERT INTO `roles_permissions` VALUES (2, 'admin', 'user:edit');
INSERT INTO `roles_permissions` VALUES (3, 'admin', 'user:list');
INSERT INTO `roles_permissions` VALUES (5, 'li', 'null');

-- ----------------------------
-- Table structure for testusers
-- ----------------------------
DROP TABLE IF EXISTS `testusers`;
CREATE TABLE `testusers`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `face` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_users_username`(`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of testusers
-- ----------------------------
INSERT INTO `testusers` VALUES (4, 'asd', 'a8f5f167f44f4964e6c998dee827110c', '14', '女', 'img/d.jpg', '1357995@qq.com', '停用', '13576957508', 'common', '2019-08-09 11:11:28');
INSERT INTO `testusers` VALUES (10, 'a4', 'b79cefdcbbccf120c5a6640952e9b16b', '123', '女', 'img/d.jpg', '4545@qq.com', '停用', '456456546', 'common', '2019-08-09 10:16:21');
INSERT INTO `testusers` VALUES (11, '4565', '850c1e2d492c4af16ac2c5c524d48caf', '12', '女', 'img/d.jpg', '4545@qq.com', '停用', '12124567897', 'common', '2019-08-07 17:38:32');
INSERT INTO `testusers` VALUES (12, 'as', 'c310b874cf9be15581a25cd8cbda571c', '126324', '女', 'img/d.jpg', '1524@qq.com', '停用', '21355789541', 'common', '2019-08-07 17:40:42');
INSERT INTO `testusers` VALUES (13, 'asd4545', '922fc6a717053f4e8afac962dfbceeae', '121', '男', 'img/d.jpg', '454@qq.com', '停用', '45684781354', 'common', '2019-08-07 17:42:08');
INSERT INTO `testusers` VALUES (14, 'asdytr', 'cf8b424f11ff0e74cd2ba2a34fbf9c63', 'ty', '男', 'img/d.jpg', '12@qq.com', '停用', '12345678974', 'common', '2019-08-07 18:09:09');
INSERT INTO `testusers` VALUES (15, 'asd546', 'f62c1fac1453296e916a1694b25a055c', '532', '女', 'img/d.jpg', '45@qq.com', '停用', '54657894564', 'common', '2019-08-07 18:11:36');
INSERT INTO `testusers` VALUES (17, '546', '09b44332d4ca67849638258355fa68d3', '45654', '女', 'img/d.jpg', '45642@qq.com', '停用', '45678978544', 'common', '2019-08-07 18:17:53');
INSERT INTO `testusers` VALUES (19, '2', '09b44332d4ca67849638258355fa68d3', '56', '女', 'img/d.jpg', '45642@qq.com', '停用', '45678978544', 'common', '2019-08-21 14:25:28');
INSERT INTO `testusers` VALUES (20, '89', '09b44332d4ca67849638258355fa68d3', '565', '女', 'img/d.jpg', '45642@qq.com', '停用', '45678978544', 'common', '2019-08-29 14:27:23');
INSERT INTO `testusers` VALUES (23, '55', '09b44332d4ca67849638258355fa68d3', '5652', '女', 'img/d.jpg', '45642@qq.com', '停用', '45678978544', 'common', '2019-08-08 15:17:30');
INSERT INTO `testusers` VALUES (24, 'rth', '669a7b1da1a022b49a0bc941111ccf6f', 'gh', '女', 'img/d.jpg', '41542@qq.com', '停用', '15489675345', 'common', '2019-08-08 16:55:37');
INSERT INTO `testusers` VALUES (25, '65467', '9aa09a7941b03cf7e5c094cb5a37e0dd', '45654', '女', 'img/d.jpg', '456546@qq.com', '停用', '13578956724', 'common', '2019-08-09 10:48:20');

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rolename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_user_roles`(`userid`, `rolename`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES (1, 'asd', 'admin');
INSERT INTO `user_roles` VALUES (2, 'asd', 'role2');

SET FOREIGN_KEY_CHECKS = 1;
