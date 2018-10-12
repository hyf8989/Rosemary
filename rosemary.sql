/*
 Navicat Premium Data Transfer

 Source Server         : huaidan
 Source Server Type    : MySQL
 Source Server Version : 50515
 Source Host           : localhost:3306
 Source Schema         : rosemary

 Target Server Type    : MySQL
 Target Server Version : 50515
 File Encoding         : 65001

 Date: 13/10/2018 01:32:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address_info
-- ----------------------------
DROP TABLE IF EXISTS `address_info`;
CREATE TABLE `address_info`  (
  `addressId` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址表编号',
  `addressInfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '详细地址',
  `userId` int(11) NOT NULL COMMENT '用户编号',
  `receiverName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货姓名',
  `receiverPhone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收获电话',
  `receiverProvince` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份',
  `receiverCity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '市',
  `receiverDistrict` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区/县',
  `receiverZip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮编',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`addressId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `adminId` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `adminName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员账户',
  `adminPwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `adminStatus` int(255) NULL DEFAULT 1 COMMENT '管理员状态：0 :锁定 1：解锁;',
  `adminLevel` int(255) NULL DEFAULT 0 COMMENT '管理员身份：0：系统管理员 1：店铺管理员',
  PRIMARY KEY (`adminId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车编号',
  `userId` int(11) NOT NULL COMMENT '用户编号',
  `flowerId` int(11) NOT NULL COMMENT '花编号',
  `quantity` int(255) NULL DEFAULT NULL COMMENT '数量',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `commentId` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论编号',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `messageId` int(11) NOT NULL COMMENT '被评论的留言编号',
  `criticsId` int(11) NOT NULL COMMENT '评论者编号',
  `commentTime` datetime NOT NULL COMMENT '评论发布时间',
  PRIMARY KEY (`commentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for flower_info
-- ----------------------------
DROP TABLE IF EXISTS `flower_info`;
CREATE TABLE `flower_info`  (
  `flowerId` int(11) NOT NULL AUTO_INCREMENT COMMENT '鲜花编号',
  `flowerName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '花名',
  `price` decimal(10, 0) NOT NULL COMMENT '价格',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '华语',
  `sPicture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缩略图',
  `bPicture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大图',
  `stock` int(255) NULL DEFAULT NULL,
  `typeId` int(11) NOT NULL COMMENT '所属类别编号',
  PRIMARY KEY (`flowerId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for flower_type
-- ----------------------------
DROP TABLE IF EXISTS `flower_type`;
CREATE TABLE `flower_type`  (
  `typeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别编号',
  `typeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类别名',
  PRIMARY KEY (`typeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for leave_message
-- ----------------------------
DROP TABLE IF EXISTS `leave_message`;
CREATE TABLE `leave_message`  (
  `messageId` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言编号',
  `Content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  `userId` int(11) NOT NULL COMMENT '留言者',
  `flowerId` int(11) NOT NULL COMMENT '评论的花的编号',
  `publishTime` datetime NOT NULL COMMENT '发表时间',
  PRIMARY KEY (`messageId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `orderInfoId` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单明细表编号',
  `flowerId` int(11) NOT NULL COMMENT '花编号',
  `orderId` int(11) NOT NULL COMMENT '订单表编号',
  `quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数量',
  `totalPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '总价',
  PRIMARY KEY (`orderInfoId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `orderId` int(11) NOT NULL COMMENT '订单编号',
  `userId` int(11) NULL DEFAULT NULL COMMENT '用户编号',
  `orderStatus` int(11) NOT NULL COMMENT '订单状态(0:未付款.1：已付款。2：未发货。3：已发货。4：交易成功)',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `postage` decimal(11, 0) NOT NULL COMMENT '运费',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `sendTime` datetime NULL DEFAULT NULL COMMENT '发货时间',
  `payment` decimal(10, 0) NULL DEFAULT NULL COMMENT '实际付款',
  `orderType` int(255) NOT NULL COMMENT '订单类型:0 进货订单 1：售货订单',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货地址',
  PRIMARY KEY (`orderId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_basicinfo
-- ----------------------------
DROP TABLE IF EXISTS `user_basicinfo`;
CREATE TABLE `user_basicinfo`  (
  `userId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `userName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `userPwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`userId`) USING BTREE,
  UNIQUE INDEX `uq_userName`(`userName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_basicinfo
-- ----------------------------
INSERT INTO `user_basicinfo` VALUES (1, '大黄', '12345', '2018-10-11 20:11:06', '2018-10-11 20:11:06');
INSERT INTO `user_basicinfo` VALUES (2, 'admin3', '827ccb0eea8a706c4c34a16891f84e7b', '2018-10-12 23:06:02', '2018-10-12 23:06:02');
INSERT INTO `user_basicinfo` VALUES (3, 'xiaoxie1', '827ccb0eea8a706c4c34a16891f84e7b', '2018-10-13 00:54:28', '2018-10-13 00:54:28');
INSERT INTO `user_basicinfo` VALUES (4, 'admin5', '827ccb0eea8a706c4c34a16891f84e7b', '2018-10-13 00:56:47', '2018-10-13 00:56:47');

-- ----------------------------
-- Table structure for user_detailsinfo
-- ----------------------------
DROP TABLE IF EXISTS `user_detailsinfo`;
CREATE TABLE `user_detailsinfo`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户详情表ID',
  `userId` int(11) NOT NULL COMMENT '用户ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `userTel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户联系方式',
  `userEmail` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_detailsinfo
-- ----------------------------
INSERT INTO `user_detailsinfo` VALUES (1, 1, NULL, '17720838367', NULL, '2018-10-13 00:37:10', '2018-10-13 00:37:10');
INSERT INTO `user_detailsinfo` VALUES (2, 3, NULL, '18016661776', NULL, '2018-10-13 00:54:28', '2018-10-13 00:54:28');
INSERT INTO `user_detailsinfo` VALUES (3, 4, NULL, '17720838367', NULL, '2018-10-13 00:56:47', '2018-10-13 00:56:47');

SET FOREIGN_KEY_CHECKS = 1;
