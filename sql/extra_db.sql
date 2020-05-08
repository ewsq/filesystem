/*
 Navicat Premium Data Transfer

 Source Server         : 本机(MySQL8 端口13306 密码12345678)
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:13306
 Source Schema         : extra_db

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 07/05/2020 19:21:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `size` double NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `mapping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES ('1258353908280008704', '港珠澳大桥.jpg', 'image/jpeg', 448674, '2020-05-07 11:12:05', 'http://localhost:8080/file/view/港珠澳大桥.jpg');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `result` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1258344319425789952', '127.0.0.1', '2020-05-07 10:33:59', '/file/index', '{}', '请求成功');
INSERT INTO `log` VALUES ('1258344693226356736', '127.0.0.1', '2020-05-07 10:35:28', '/file/index', '{}', '请求成功');
INSERT INTO `log` VALUES ('1258345641944367104', '127.0.0.1', '2020-05-07 10:39:15', '/file/index', '{}', '请求成功');
INSERT INTO `log` VALUES ('1258346400245170176', '127.0.0.1', '2020-05-07 10:42:15', '/file/index', '{}', '请求成功');
INSERT INTO `log` VALUES ('1258346471057604608', '127.0.0.1', '2020-05-07 10:42:32', '/file/index', '{}', '请求成功');
INSERT INTO `log` VALUES ('1258346685281681408', '127.0.0.1', '2020-05-07 10:43:23', '/file/index', '{}', '请求成功');
INSERT INTO `log` VALUES ('1258351316980285440', '127.0.0.1', '2020-05-07 11:01:48', '/file/index', '{}', '请求成功');
INSERT INTO `log` VALUES ('1258351869823107072', '127.0.0.1', '2020-05-07 11:03:59', '/file/index', '{}', '请求成功');
INSERT INTO `log` VALUES ('1258352003659137024', '127.0.0.1', '2020-05-07 11:04:31', '/file/index', '{}', '请求成功');
INSERT INTO `log` VALUES ('1258352009317253120', '127.0.0.1', '2020-05-07 11:04:33', '/file/page', '{name=, pageSize=5, pageIndex=0, _=1588849471563}', '请求成功');
INSERT INTO `log` VALUES ('1258352060185772032', '127.0.0.1', '2020-05-07 11:04:45', '/file/upload', '{action=UploadVMKImagePath}', '请求成功');
INSERT INTO `log` VALUES ('1258352278889365504', '127.0.0.1', '2020-05-07 11:05:37', '/file/upload', '{action=UploadVMKImagePath}', '请求成功');
INSERT INTO `log` VALUES ('1258353603295416320', '127.0.0.1', '2020-05-07 11:10:53', '/file/index', '{}', '请求成功');
INSERT INTO `log` VALUES ('1258353607942705152', '127.0.0.1', '2020-05-07 11:10:54', '/file/page', '{name=, pageSize=5, pageIndex=0, _=1588849853020}', '请求成功');
INSERT INTO `log` VALUES ('1258353645733384192', '127.0.0.1', '2020-05-07 11:11:03', '/file/upload', '{action=UploadVMKImagePath}', '请求成功');
INSERT INTO `log` VALUES ('1258353865464553472', '127.0.0.1', '2020-05-07 11:11:55', '/file/index', '{}', '请求成功');
INSERT INTO `log` VALUES ('1258353869453336576', '127.0.0.1', '2020-05-07 11:11:56', '/file/page', '{name=, pageSize=5, pageIndex=0, _=1588849915510}', '请求成功');
INSERT INTO `log` VALUES ('1258353909446025216', '127.0.0.1', '2020-05-07 11:12:06', '/file/upload', '{action=UploadVMKImagePath}', '请求成功');
INSERT INTO `log` VALUES ('1258353910083559424', '127.0.0.1', '2020-05-07 11:12:06', '/file/page', '{name=, pageSize=5, pageIndex=0, _=1588849915511}', '请求成功');
INSERT INTO `log` VALUES ('1258353926512648192', '0:0:0:0:0:0:0:1', '2020-05-07 11:12:10', '/file/view/%E6%B8%AF%E7%8F%A0%E6%BE%B3%E5%A4%A7%E6%A1%A5.jpg', '{}', '请求成功');
INSERT INTO `log` VALUES ('1258353945890332672', '0:0:0:0:0:0:0:1', '2020-05-07 11:12:14', '/file/download/%E6%B8%AF%E7%8F%A0%E6%BE%B3%E5%A4%A7%E6%A1%A5.jpg', '{}', '请求成功');
INSERT INTO `log` VALUES ('1258354468278312960', '127.0.0.1', '2020-05-07 11:14:19', '/file/index', '{}', '请求成功');
INSERT INTO `log` VALUES ('1258354469763096576', '127.0.0.1', '2020-05-07 11:14:19', '/file/page', '{name=, pageSize=5, pageIndex=0, _=1588850059241}', '请求成功');
INSERT INTO `log` VALUES ('1258355354702503936', '127.0.0.1', '2020-05-07 11:17:50', '/file/index', '{}', '请求成功');
INSERT INTO `log` VALUES ('1258355359681142784', '127.0.0.1', '2020-05-07 11:17:52', '/file/page', '{name=, pageSize=5, pageIndex=0, _=1588850270736}', '请求成功');

SET FOREIGN_KEY_CHECKS = 1;
