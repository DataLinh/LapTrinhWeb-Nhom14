/*
 Navicat Premium Data Transfer

 Source Server         : Web
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : ltw

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 03/12/2022 23:30:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cartitems
-- ----------------------------
DROP TABLE IF EXISTS `cartitems`;
CREATE TABLE `cartitems`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `QUANTITY` int NULL DEFAULT NULL,
  `PRODUCT_ID` int NULL DEFAULT NULL,
  `CART_ID` int NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `PRODUCT_ID`(`PRODUCT_ID`) USING BTREE,
  INDEX `CART_ID`(`CART_ID`) USING BTREE,
  CONSTRAINT `cartitems_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `cartitems_ibfk_2` FOREIGN KEY (`CART_ID`) REFERENCES `carts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cartitems
-- ----------------------------
INSERT INTO `cartitems` VALUES (36, 1, 1, 41);
INSERT INTO `cartitems` VALUES (37, 1, 6, 106);
INSERT INTO `cartitems` VALUES (38, 1, 4, 107);
INSERT INTO `cartitems` VALUES (39, 69, 8, 107);
INSERT INTO `cartitems` VALUES (40, 1, 1, 108);
INSERT INTO `cartitems` VALUES (41, 2, 5, 108);
INSERT INTO `cartitems` VALUES (42, 1, 5, 109);
INSERT INTO `cartitems` VALUES (43, 1, 2, 109);
INSERT INTO `cartitems` VALUES (44, 1, 10, 109);
INSERT INTO `cartitems` VALUES (45, 2, 8, 110);
INSERT INTO `cartitems` VALUES (46, 0, 3, 112);
INSERT INTO `cartitems` VALUES (47, 0, 7, 112);
INSERT INTO `cartitems` VALUES (48, 1, 4, 113);
INSERT INTO `cartitems` VALUES (49, 1, 2, 42);
INSERT INTO `cartitems` VALUES (50, 1, 4, 42);
INSERT INTO `cartitems` VALUES (51, 1, 10, 42);
INSERT INTO `cartitems` VALUES (52, 1, 6, 115);
INSERT INTO `cartitems` VALUES (53, 1, 9, 115);
INSERT INTO `cartitems` VALUES (54, 1, 6, 116);
INSERT INTO `cartitems` VALUES (55, 1, 7, 116);
INSERT INTO `cartitems` VALUES (56, 1, 1, 117);
INSERT INTO `cartitems` VALUES (57, 2, 9, 118);
INSERT INTO `cartitems` VALUES (58, 22, 4, 119);
INSERT INTO `cartitems` VALUES (59, 1, 1, 120);
INSERT INTO `cartitems` VALUES (60, 1, 6, 121);
INSERT INTO `cartitems` VALUES (61, 10, 1, 122);
INSERT INTO `cartitems` VALUES (62, 1, 7, 122);
INSERT INTO `cartitems` VALUES (63, 1, 7, 123);
INSERT INTO `cartitems` VALUES (64, 1, 6, 123);
INSERT INTO `cartitems` VALUES (65, 1, 3, 124);
INSERT INTO `cartitems` VALUES (66, 1, 1, 125);
INSERT INTO `cartitems` VALUES (67, 1, 7, 125);
INSERT INTO `cartitems` VALUES (68, 1, 2, 126);
INSERT INTO `cartitems` VALUES (69, 1, 2, 127);
INSERT INTO `cartitems` VALUES (70, 1, 3, 128);
INSERT INTO `cartitems` VALUES (71, 1, 7, 129);
INSERT INTO `cartitems` VALUES (72, 1, 7, 44);
INSERT INTO `cartitems` VALUES (73, 1, 3, 44);
INSERT INTO `cartitems` VALUES (74, 2, 3, 131);
INSERT INTO `cartitems` VALUES (75, 2, 2, 131);
INSERT INTO `cartitems` VALUES (76, 1, 5, 131);
INSERT INTO `cartitems` VALUES (77, 1, 1, 131);
INSERT INTO `cartitems` VALUES (78, 1, 4, 131);
INSERT INTO `cartitems` VALUES (79, 2, 3, 133);
INSERT INTO `cartitems` VALUES (80, 1, 2, 133);
INSERT INTO `cartitems` VALUES (81, 1, 1, 133);
INSERT INTO `cartitems` VALUES (82, 1, 4, 133);
INSERT INTO `cartitems` VALUES (83, 3, 3, 134);
INSERT INTO `cartitems` VALUES (84, 2, 2, 134);
INSERT INTO `cartitems` VALUES (85, 1, 2, 135);
INSERT INTO `cartitems` VALUES (86, 1, 1, 135);
INSERT INTO `cartitems` VALUES (87, 1, 4, 135);
INSERT INTO `cartitems` VALUES (88, 1, 3, 136);
INSERT INTO `cartitems` VALUES (89, 1, 2, 136);
INSERT INTO `cartitems` VALUES (90, 3, 1, 136);
INSERT INTO `cartitems` VALUES (91, 2, 1, 137);
INSERT INTO `cartitems` VALUES (92, 1, 3, 137);
INSERT INTO `cartitems` VALUES (93, 1, 2, 137);
INSERT INTO `cartitems` VALUES (94, 1, 4, 137);
INSERT INTO `cartitems` VALUES (95, 3, 1, 138);
INSERT INTO `cartitems` VALUES (96, 1, 8, 139);
INSERT INTO `cartitems` VALUES (97, 1, 9, 139);
INSERT INTO `cartitems` VALUES (98, 1, 5, 139);
INSERT INTO `cartitems` VALUES (99, 2, 6, 139);
INSERT INTO `cartitems` VALUES (100, 6, 8, 140);
INSERT INTO `cartitems` VALUES (101, 2, 6, 141);
INSERT INTO `cartitems` VALUES (102, 2, 5, 141);
INSERT INTO `cartitems` VALUES (103, 2, 5, 142);
INSERT INTO `cartitems` VALUES (104, 3, 9, 142);
INSERT INTO `cartitems` VALUES (105, 1, 6, 142);
INSERT INTO `cartitems` VALUES (106, 2, 6, 143);
INSERT INTO `cartitems` VALUES (107, 2, 5, 143);
INSERT INTO `cartitems` VALUES (108, 1, 9, 143);
INSERT INTO `cartitems` VALUES (109, 5, 8, 144);
INSERT INTO `cartitems` VALUES (110, 3, 5, 145);
INSERT INTO `cartitems` VALUES (111, 1, 6, 145);

-- ----------------------------
-- Table structure for carts
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TOTAL` int NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of carts
-- ----------------------------
INSERT INTO `carts` VALUES (1, 0);
INSERT INTO `carts` VALUES (24, 0);
INSERT INTO `carts` VALUES (25, 0);
INSERT INTO `carts` VALUES (26, 0);
INSERT INTO `carts` VALUES (27, 0);
INSERT INTO `carts` VALUES (28, 0);
INSERT INTO `carts` VALUES (29, 0);
INSERT INTO `carts` VALUES (30, 0);
INSERT INTO `carts` VALUES (31, 0);
INSERT INTO `carts` VALUES (32, 0);
INSERT INTO `carts` VALUES (33, 0);
INSERT INTO `carts` VALUES (34, 0);
INSERT INTO `carts` VALUES (35, 0);
INSERT INTO `carts` VALUES (36, 0);
INSERT INTO `carts` VALUES (37, 0);
INSERT INTO `carts` VALUES (38, 0);
INSERT INTO `carts` VALUES (39, 0);
INSERT INTO `carts` VALUES (40, 0);
INSERT INTO `carts` VALUES (41, 200000);
INSERT INTO `carts` VALUES (42, 870000);
INSERT INTO `carts` VALUES (43, 0);
INSERT INTO `carts` VALUES (44, 710000);
INSERT INTO `carts` VALUES (45, 0);
INSERT INTO `carts` VALUES (46, 0);
INSERT INTO `carts` VALUES (47, 0);
INSERT INTO `carts` VALUES (48, 0);
INSERT INTO `carts` VALUES (49, 0);
INSERT INTO `carts` VALUES (50, 0);
INSERT INTO `carts` VALUES (51, 0);
INSERT INTO `carts` VALUES (52, 0);
INSERT INTO `carts` VALUES (53, 0);
INSERT INTO `carts` VALUES (54, 0);
INSERT INTO `carts` VALUES (55, 0);
INSERT INTO `carts` VALUES (56, 0);
INSERT INTO `carts` VALUES (57, 0);
INSERT INTO `carts` VALUES (58, 0);
INSERT INTO `carts` VALUES (59, 0);
INSERT INTO `carts` VALUES (60, 0);
INSERT INTO `carts` VALUES (61, 0);
INSERT INTO `carts` VALUES (62, 0);
INSERT INTO `carts` VALUES (63, 0);
INSERT INTO `carts` VALUES (64, 0);
INSERT INTO `carts` VALUES (65, 0);
INSERT INTO `carts` VALUES (66, 0);
INSERT INTO `carts` VALUES (67, 0);
INSERT INTO `carts` VALUES (68, 0);
INSERT INTO `carts` VALUES (69, 0);
INSERT INTO `carts` VALUES (70, 0);
INSERT INTO `carts` VALUES (71, 0);
INSERT INTO `carts` VALUES (72, 0);
INSERT INTO `carts` VALUES (73, 0);
INSERT INTO `carts` VALUES (74, 0);
INSERT INTO `carts` VALUES (75, 0);
INSERT INTO `carts` VALUES (76, 0);
INSERT INTO `carts` VALUES (77, 0);
INSERT INTO `carts` VALUES (78, 0);
INSERT INTO `carts` VALUES (79, 0);
INSERT INTO `carts` VALUES (80, 0);
INSERT INTO `carts` VALUES (81, 0);
INSERT INTO `carts` VALUES (82, 0);
INSERT INTO `carts` VALUES (83, 0);
INSERT INTO `carts` VALUES (84, 0);
INSERT INTO `carts` VALUES (85, 0);
INSERT INTO `carts` VALUES (86, 0);
INSERT INTO `carts` VALUES (87, 0);
INSERT INTO `carts` VALUES (88, 0);
INSERT INTO `carts` VALUES (89, 0);
INSERT INTO `carts` VALUES (90, 0);
INSERT INTO `carts` VALUES (91, 0);
INSERT INTO `carts` VALUES (92, 0);
INSERT INTO `carts` VALUES (93, 0);
INSERT INTO `carts` VALUES (94, 0);
INSERT INTO `carts` VALUES (95, 0);
INSERT INTO `carts` VALUES (96, 0);
INSERT INTO `carts` VALUES (97, 0);
INSERT INTO `carts` VALUES (98, 0);
INSERT INTO `carts` VALUES (99, 0);
INSERT INTO `carts` VALUES (100, 0);
INSERT INTO `carts` VALUES (101, 0);
INSERT INTO `carts` VALUES (102, 0);
INSERT INTO `carts` VALUES (103, 0);
INSERT INTO `carts` VALUES (104, 0);
INSERT INTO `carts` VALUES (105, 0);
INSERT INTO `carts` VALUES (106, 550000);
INSERT INTO `carts` VALUES (107, 62400000);
INSERT INTO `carts` VALUES (108, 1120000);
INSERT INTO `carts` VALUES (109, 1030000);
INSERT INTO `carts` VALUES (110, 1800000);
INSERT INTO `carts` VALUES (111, 0);
INSERT INTO `carts` VALUES (112, 0);
INSERT INTO `carts` VALUES (113, 300000);
INSERT INTO `carts` VALUES (114, 0);
INSERT INTO `carts` VALUES (115, 830000);
INSERT INTO `carts` VALUES (116, 910000);
INSERT INTO `carts` VALUES (117, 200000);
INSERT INTO `carts` VALUES (118, 560000);
INSERT INTO `carts` VALUES (119, 6600000);
INSERT INTO `carts` VALUES (120, 200000);
INSERT INTO `carts` VALUES (121, 550000);
INSERT INTO `carts` VALUES (122, 2360000);
INSERT INTO `carts` VALUES (123, 910000);
INSERT INTO `carts` VALUES (124, 350000);
INSERT INTO `carts` VALUES (125, 560000);
INSERT INTO `carts` VALUES (126, 250000);
INSERT INTO `carts` VALUES (127, 250000);
INSERT INTO `carts` VALUES (128, 350000);
INSERT INTO `carts` VALUES (129, 360000);
INSERT INTO `carts` VALUES (130, 0);
INSERT INTO `carts` VALUES (131, 2160000);
INSERT INTO `carts` VALUES (132, 0);
INSERT INTO `carts` VALUES (133, 1450000);
INSERT INTO `carts` VALUES (134, 1550000);
INSERT INTO `carts` VALUES (135, 750000);
INSERT INTO `carts` VALUES (136, 1200000);
INSERT INTO `carts` VALUES (137, 1300000);
INSERT INTO `carts` VALUES (138, 600000);
INSERT INTO `carts` VALUES (139, 2740000);
INSERT INTO `carts` VALUES (140, 5400000);
INSERT INTO `carts` VALUES (141, 2020000);
INSERT INTO `carts` VALUES (142, 2310000);
INSERT INTO `carts` VALUES (143, 2300000);
INSERT INTO `carts` VALUES (144, 4500000);
INSERT INTO `carts` VALUES (145, 1930000);
INSERT INTO `carts` VALUES (146, 0);

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NULL DEFAULT NULL,
  `DESCRIPTION` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NULL,
  `isDeleted` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `ID`(`ID`) USING BTREE,
  INDEX `ID_2`(`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Balo', 'Loại túi đựng bằng vải có hai dây vắt qua vai để đeo trên lưng, ngoài ra còn có những trường hợp ngoại lệ. Những loại ba lô nhẹ đôi khi chỉ có một dây đeo chéo vai.\r\n', b'0');
INSERT INTO `categories` VALUES (2, 'Mũ lưỡi trai', 'Mũ lưỡi trai là tên gọi của miền Bắc  và Bắc Trung Bộ. Còn nón kết là tên gọi của miền Nam và Nam Trung Bộ. Mặc dù hai tên gọi khác nhau, nhưng chúng cùng chỉ chung một loại mũ. Và loại mũ này hây như ai cũng đã từng sử dụng và đã quá quen thuộc với món phụ kiện cá tính này.', b'0');
INSERT INTO `categories` VALUES (3, 'Mũ', 'Mũ là vật dụng để che đầu. Nó có thể dùng để bảo vệ đầu hoặc vì các lý do nghi lễ hoặc tôn giáo, vì lý do an toàn hoặc được dùng như một phụ kiện thời trang', b'0');
INSERT INTO `categories` VALUES (4, 'Áo hoodie', 'Áo hoodie là kiểu áo có form rộng rãi, độ dài ngang đến hông hoặc dài hơn, có mũ trùm, đi kèm cùng dây rút để giữ ấm phần đầu. Vải nỉ, vải thun,... là những chất liệu sản xuất hoodie phổ biến và thông dụng.', b'0');
INSERT INTO `categories` VALUES (5, 'Áo khoác', 'Áo khoác là loại áo mặc bên ngoài, được sử dụng bởi cả nam và nữ, nhằm mục đích giữ ấm hoặc tạo tính thời trang.[1] Áo khoác thường có thiết kế với tay áo dài và phần thân áo dài hơn các loại áo thông thường. Tùy từng loại áo khoác mà các nhà thiết kế sẽ sử dụng khuy áo, dây kéo phéc-mơ-tuya, dây đai lưng, đóng bằng nút bấm, dây kéo...hoặc sự kết hợp của một số loại trên.', b'0');
INSERT INTO `categories` VALUES (6, 'Giày', 'Giày là một vật dụng đi vào bàn chân con người để bảo vệ và làm êm chân trong khi thực hiện các hoạt động khác nhau. Giày cũng được sử dụng như một món đồ trang tr', b'0');
INSERT INTO `categories` VALUES (7, 'Áo thun', 'Áo thun (phương ngữ miền Nam) hay áo phông (phương ngữ miền Bắc) thường được dệt theo nốt jersey và bằng sợi cotton, đôi khi bằng chất liệu khác, tạo sự mềm mại đặc trưng. Áo thun có thể được trang trí bằng chữ và/hoặc hình ảnh thường dùng để quảng bá điều gì đó hoặc quảng cáo sản phẩm, công ty hoặc trang web.', b'0');

-- ----------------------------
-- Table structure for discounts
-- ----------------------------
DROP TABLE IF EXISTS `discounts`;
CREATE TABLE `discounts`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TYPE` bit(1) NULL DEFAULT NULL,
  `EFFECTIVE_DATE` datetime NULL DEFAULT NULL,
  `EXPIRATION_DATE` datetime NULL DEFAULT NULL,
  `VALUE` int NULL DEFAULT NULL,
  `isDeleted` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `ID`(`ID`) USING BTREE,
  INDEX `ID_2`(`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of discounts
-- ----------------------------
INSERT INTO `discounts` VALUES (1, 'Ngày hội FA', b'1', '2022-11-01 22:26:04', '2022-11-02 22:26:12', 20, b'0');
INSERT INTO `discounts` VALUES (2, 'Chào mừng năm mới 2023\r\n', b'0', '2022-12-01 22:26:42', '2023-01-31 22:26:50', 50000, b'0');

-- ----------------------------
-- Table structure for feed_backs
-- ----------------------------
DROP TABLE IF EXISTS `feed_backs`;
CREATE TABLE `feed_backs`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `LAST_NAME` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `EMAIL` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `PHONE_NUMBER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SUBJECT_NAME` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NULL,
  `isDeleted` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_backs
-- ----------------------------
INSERT INTO `feed_backs` VALUES (1, 'Long', 'Lê', 'lelong@gmail.com', '1111111111', 'Đánh giá sản phẩm', 'Sản phẩm đẹp chất lượng', b'0');
INSERT INTO `feed_backs` VALUES (2, 'Linh', 'Đức', 'duclinh@gmail.com', '2222222222', 'Đánh giá sản phẩm', 'Sản phẩm tuyệt vời ông mặt trời', b'0');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int NULL DEFAULT NULL,
  `FULL_NAME` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `EMAIL` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `PHONE_NUMBER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ADDRESS` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `NOTE` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NULL,
  `ORDER_DATE` datetime NULL DEFAULT NULL,
  `STATUS` int NULL DEFAULT NULL,
  `TOTAL_MONEY` int NULL DEFAULT NULL,
  `isDeleted` bit(1) NULL DEFAULT NULL,
  `CART_ID` int NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `FKodpu7ljn8tsfvwhk95kp4nugq`(`USER_ID`) USING BTREE,
  INDEX `ID`(`ID`) USING BTREE,
  INDEX `FK4x1fw2owp8vlfcgebibmx1wkr`(`CART_ID`) USING BTREE,
  CONSTRAINT `FK4x1fw2owp8vlfcgebibmx1wkr` FOREIGN KEY (`CART_ID`) REFERENCES `carts` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKodpu7ljn8tsfvwhk95kp4nugq` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (3, 2, 'Trí Lê', 'buithi2@gmail.com', '0935405781', 'Lào Cai', '', '2022-12-03 00:00:00', 0, 550000, b'0', 106);
INSERT INTO `orders` VALUES (4, 2, 'Trí Lê', 'buithi2@gmail.com', '0935405781', 'Lào Cai', '', '2022-12-03 00:00:00', 0, 62400000, b'0', 107);
INSERT INTO `orders` VALUES (5, 2, 'Trí Lê', 'buithi2@gmail.com', '0935405781', 'Lào Cai', '', '2022-12-03 00:00:00', 0, 1120000, b'0', 108);
INSERT INTO `orders` VALUES (6, 2, 'Trí Lê', 'buithi2@gmail.com', '0935405781', 'Lào Cai', '', '2022-12-03 00:00:00', 0, 1030000, b'0', 109);
INSERT INTO `orders` VALUES (7, 2, 'Trí Lê', 'buithi2@gmail.com', '0935405781', 'Lào Cai', '', '2022-12-03 00:00:00', 0, 0, b'0', 111);
INSERT INTO `orders` VALUES (8, 2, 'Trí Lê', 'buithi2@gmail.com', '0935405781', 'Lào Cai', '', '2022-12-03 00:00:00', 0, 0, b'0', 112);
INSERT INTO `orders` VALUES (9, 2, 'Trí Lê', 'buithi2@gmail.com', '0935405781', 'Lào Cai', '', '2022-12-03 00:00:00', 0, 300000, b'0', 113);
INSERT INTO `orders` VALUES (10, 3, 'Tú Trị', 'xuantu3@gmail.com', '0958101396', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 870000, b'0', 42);
INSERT INTO `orders` VALUES (11, 3, 'Tú Trị', 'xuantu3@gmail.com', '0958101396', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 830000, b'0', 115);
INSERT INTO `orders` VALUES (12, 3, 'Tú Trị', 'xuantu3@gmail.com', '0958101396', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 910000, b'0', 116);
INSERT INTO `orders` VALUES (13, 3, 'Tú Trị', 'xuantu3@gmail.com', '0958101396', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 200000, b'0', 117);
INSERT INTO `orders` VALUES (14, 3, 'Tú Trị', 'xuantu3@gmail.com', '0958101396', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 560000, b'0', 118);
INSERT INTO `orders` VALUES (15, 3, 'Tú Trị', 'xuantu3@gmail.com', '0958101396', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 6600000, b'0', 119);
INSERT INTO `orders` VALUES (16, 3, 'Tú Trị', 'xuantu3@gmail.com', '0958101396', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 200000, b'0', 120);
INSERT INTO `orders` VALUES (17, 3, 'Tú Trị', 'xuantu3@gmail.com', '0958101396', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 550000, b'0', 121);
INSERT INTO `orders` VALUES (18, 3, 'Tú Trị', 'xuantu3@gmail.com', '0958101396', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 2360000, b'0', 122);
INSERT INTO `orders` VALUES (19, 3, 'Tú Trị', 'xuantu3@gmail.com', '0958101396', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 910000, b'0', 123);
INSERT INTO `orders` VALUES (20, 3, 'Tú Trị', 'xuantu3@gmail.com', '0958101396', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 350000, b'0', 124);
INSERT INTO `orders` VALUES (21, 3, 'Tú Trị', 'xuantu3@gmail.com', '0958101396', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 560000, b'0', 125);
INSERT INTO `orders` VALUES (22, 3, 'Tú Trị', 'xuantu3@gmail.com', '0958101396', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 250000, b'0', 126);
INSERT INTO `orders` VALUES (23, 3, 'Tú Trị', 'xuantu3@gmail.com', '0958101396', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 250000, b'0', 127);
INSERT INTO `orders` VALUES (24, 3, 'Tú Trị', 'xuantu3@gmail.com', '0958101396', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 360000, b'0', 129);
INSERT INTO `orders` VALUES (25, 5, 'Tú Trị', 'builinh5@gmail.com', '01026633257', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 710000, b'0', 44);
INSERT INTO `orders` VALUES (26, 5, 'Tú Trị', 'builinh5@gmail.com', '01026633257', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 2160000, b'0', 131);
INSERT INTO `orders` VALUES (27, 5, 'Tú Trị', 'builinh5@gmail.com', '01026633257', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 0, b'0', 132);
INSERT INTO `orders` VALUES (28, 5, 'Tú Trị', 'builinh5@gmail.com', '01026633257', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 1450000, b'0', 133);
INSERT INTO `orders` VALUES (29, 5, 'Tú Trị', 'builinh5@gmail.com', '01026633257', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 1550000, b'0', 134);
INSERT INTO `orders` VALUES (30, 5, 'Tú Trị', 'builinh5@gmail.com', '01026633257', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 750000, b'0', 135);
INSERT INTO `orders` VALUES (31, 5, 'Tú Trị', 'builinh5@gmail.com', '01026633257', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 1200000, b'0', 136);
INSERT INTO `orders` VALUES (32, 5, 'Tú Trị', 'builinh5@gmail.com', '01026633257', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 1300000, b'0', 137);
INSERT INTO `orders` VALUES (33, 5, 'Tú Trị', 'builinh5@gmail.com', '01026633257', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 600000, b'0', 138);
INSERT INTO `orders` VALUES (34, 5, 'Tú Trị', 'builinh5@gmail.com', '01026633257', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 2740000, b'0', 139);
INSERT INTO `orders` VALUES (35, 5, 'Tú Trị', 'builinh5@gmail.com', '01026633257', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 5400000, b'0', 140);
INSERT INTO `orders` VALUES (36, 5, 'Tú Trị', 'builinh5@gmail.com', '01026633257', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 2020000, b'0', 141);
INSERT INTO `orders` VALUES (37, 5, 'Tú Trị', 'builinh5@gmail.com', '01026633257', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 2310000, b'0', 142);
INSERT INTO `orders` VALUES (38, 5, 'Tú Trị', 'builinh5@gmail.com', '01026633257', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 2300000, b'0', 143);
INSERT INTO `orders` VALUES (39, 5, 'Tú Trị', 'builinh5@gmail.com', '01026633257', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 4500000, b'0', 144);
INSERT INTO `orders` VALUES (40, 5, 'Tú Trị', 'builinh5@gmail.com', '01026633257', 'Đà Lạt', '', '2022-12-03 00:00:00', 0, 1930000, b'0', 145);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CATEGORY_ID` int NULL DEFAULT NULL,
  `TITLE` varchar(350) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `PRICE` int NULL DEFAULT NULL,
  `QUANTITY` int NULL DEFAULT NULL,
  `IMAGE` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DESCRIPTION` text CHARACTER SET utf8mb3 COLLATE utf8mb3_vietnamese_ci NULL,
  `CREATED_AT` datetime NULL DEFAULT NULL,
  `UPDATE_AT` datetime NULL DEFAULT NULL,
  `DISCOUNT_ID` int NULL DEFAULT NULL,
  `isDeleted` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `FK89flbvp09klukqvnbbq6hmyhj`(`CATEGORY_ID`) USING BTREE,
  INDEX `FKc64bvca5hri8pyf5q1k1ks20c`(`DISCOUNT_ID`) USING BTREE,
  INDEX `ID`(`ID`) USING BTREE,
  CONSTRAINT `FK89flbvp09klukqvnbbq6hmyhj` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `categories` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKc64bvca5hri8pyf5q1k1ks20c` FOREIGN KEY (`DISCOUNT_ID`) REFERENCES `discounts` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 1, 'Balo Herschel Little America', 200000, 50, 'img/product/Backpack/Backpack1', 'Trẻ trung, phóng khoáng nhưng không kém phần thanh lịch theo đúng tinh thần của Herschel. Little America sở hữu gam màu thời thượng khẳng định luôn là sản phẩm best seller của hãng.', '2021-01-08 00:00:00', '2022-01-08 00:00:00', NULL, b'0');
INSERT INTO `products` VALUES (2, 1, 'Balo Herschel Retreat ', 250000, 50, 'img/product/Backpack/Backpack2', 'Herschel Classic bền bỉ cùng thời gian bởi chính sự đơn giản đến tinh tế, không cần quá nhiều chi tiết nhưng luôn để lại ấn tượng sâu đậm. Ngăn trữ đồ nhỏ gọn, tiện lợi phía trước. Quai đeo êm ái, thoáng khí. Khoá kéo kim loại ấn tượng với nút thắt đẹp mắt', '2021-01-08 00:00:00', '2022-01-08 00:00:00', NULL, b'0');
INSERT INTO `products` VALUES (3, 1, 'Balo Herschel Settlement', 350000, 50, 'img/product/Backpack/Backpack3', 'Trẻ trung, phóng khoáng nhưng không kém phần thanh lịch theo đúng tinh thần của Herschel. Settlement Standard sở hữu gam màu thời thượng khẳng định luôn là sản phẩm best seller của hãng. Tương thích với dòng MacBook/Laptop kích thước lên đến 15 inch. Trang bị ngăn chống sốc, bảo vệ tối ưu cho laptop. Ngăn lưu trữ đồ nhỏ gọn phía trước. Dây đai gài ấn tượng, chắc chắn. Quai đeo êm ái, thoáng khí', '2021-01-08 00:00:00', '2022-01-08 00:00:00', NULL, b'0');
INSERT INTO `products` VALUES (4, 1, 'Balo Herschel Supply Co. Settlement', 300000, 50, 'img/product/Backpack/Backpack4', 'Trẻ trung, phóng khoáng nhưng không kém phần thanh lịch theo đúng tinh thần của Herschel. Settlement Standard sở hữu gam màu thời thượng khẳng định luôn là sản phẩm best seller của hãng. Tương thích với dòng MacBook/Laptop kích thước lên đến 15 inch. Trang bị ngăn chống sốc, bảo vệ tối ưu cho laptop. Ngăn lưu trữ đồ nhỏ gọn phía trước. Dây đai gài ấn tượng, chắc chắn. Quai đeo êm ái, thoáng khí', '2021-01-08 00:00:00', '2022-01-08 00:00:00', NULL, b'0');
INSERT INTO `products` VALUES (5, 1, 'Balo Herschel Heritage Youth', 460000, 50, 'img/product/Backpack/Backpack5', '\"Less is more\"- lược giản tất cả những chi tiết không cần thiết, Heritage pha trộn một chút cá tính trên nền minimal khiến chiếc balo không chỉ hiện đại mà còn vô cùng tinh tế. Tương thích với dòng MacBook/Laptop kích thước lên đến 13 inch. Trang bị ngăn chống sốc, bảo vệ tối ưu cho Laptop. Ngăn lưu trữ đồ nhỏ gọn phía trước. Khoá kéo ấn tượng với nút thắt đẹp mắt. Quai đeo êm ái, thoáng khí', '2021-01-08 00:00:00', '2022-01-08 00:00:00', NULL, b'0');
INSERT INTO `products` VALUES (6, 1, 'Balo Carhartt Legacy Standard Work', 550000, 50, 'img/product/Backpack/Backpack6', 'Một người bạn tốt nhất của một người đi làm, gói bền này giữ cho thiết bị làm việc của bạn được tổ chức và dễ dàng truy cập. Nó có một ngăn chính zip, hai túi zip phía trước và hai túi bên hoàn hảo để cất một cái ô hoặc chai nước. Túi được làm bằng vật liệu nặng làm mưa làm mưa, với một cơ sở được gia cố để có thêm sức mạnh.', '2021-01-08 00:00:00', '2022-01-08 00:00:00', NULL, b'0');
INSERT INTO `products` VALUES (7, 1, 'Balo Sprayground The Gateway', 360000, 50, 'img/product/Backpack/Backpack7', 'Kết hợp ảnh hưởng ngoài trời với chức năng hiện đại,  được thiết kế để phù hợp với máy tính xách tay 15 inch, túi máy tính bảng và túi chai nước.', '2021-01-08 00:00:00', '2022-01-08 00:00:00', NULL, b'0');
INSERT INTO `products` VALUES (8, 1, 'Balo Bean Pole Outdoor', 900000, 50, 'img/product/Backpack/Backpack8', 'Bền bỉ cùng thời gian bởi chính sự đơn giản đến tinh tế, không cần quá nhiều chi tiết nhưng luôn để lại ấn tượng sâu đậm. Ngăn trữ đồ nhỏ gọn, tiện lợi phía trước. Quai đeo êm ái, thoáng khí. hiết kế nhỏ gọn, dễ dàng di chuyển', '2021-01-08 00:00:00', '2022-01-08 00:00:00', NULL, b'0');
INSERT INTO `products` VALUES (9, 1, 'Balo Fjallraven Raven 20', 280000, 50, 'img/product/Backpack/Backpack9', 'Chất liệu: Outer: 100% nylon - Lining: 100% polyester chống thấm nước. - Thiết kế độc đáo có ngăn để giày phía sau balo. Có quai xách tay phía trên. Quai đeo và đệm lưng sử dụng đệm cao su xốp giúp thoáng khí cho cảm giác thoải mái khi đeo.', '2021-01-08 00:00:00', '2022-01-08 00:00:00', NULL, b'0');
INSERT INTO `products` VALUES (10, 1, 'Balo Raccoon MK2', 320000, 50, 'img/product/Backpack/Backpack10', 'Thoải mái & bền bỉ: quai đeo được thiết kế bằng đệm thoái khí trợ lực làm giảm trọng lực cho Balo và đảm bảo thoải mái khi mang trên vai mà không cảm thấy mệt mỏi. Được làm từ chất liệu thương hiệu bền và Sử dụng khóa kéo hàng đầu của Nhật (YKK) và phần nhựa cứng DuraFlex được đánh giá là phụ kiện hàng đầu cho Balo', '2021-01-08 00:00:00', '2022-01-08 00:00:00', NULL, b'0');
INSERT INTO `products` VALUES (11, 1, 'Balo Mockup', 350000, 50, 'img/product/Backpack/Backpack11', 'Một người bạn tốt nhất của một người đi làm, gói bền này giữ cho thiết bị làm việc của bạn được tổ chức và dễ dàng truy cập. Nó có một ngăn chính zip, hai túi zip phía trước và hai túi bên hoàn hảo để cất một cái ô hoặc chai nước. Túi được làm bằng vật liệu nặng làm mưa làm mưa, với một cơ sở được gia cố để có thêm sức mạnh.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (12, 1, 'Balo Tumi Alpha Bravo Knox', 450000, 50, 'img/product/Backpack/Backpack12', 'Kích thước: 30cm x 16cm x 44cm. Thể tích thông thường 22 lít, gòn gàng để sử dụng hàng ngày. Thể tích mở rộng 37 lít – tha hồ đựng đồ khi cần đi xa. Chất liệu siêu bền, thiết kế đầy tính năng tiện dụng. Nhiều ngăn đựng đồ tiện lợi, ngăn chống sốc laptop, ipad.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (13, 1, 'Balo Herschel Pop', 250000, 50, 'img/product/Backpack/Backpack13', 'Thoải mái & bền bỉ: quai đeo được thiết kế bằng đệm thoái khí trợ lực làm giảm trọng lực cho Balo và đảm bảo thoải mái khi mang trên vai mà không cảm thấy mệt mỏi. Được làm từ chất liệu thương hiệu bền và Sử dụng khóa kéo hàng đầu của Nhật (YKK) và phần nhựa cứng DuraFlex được đánh giá là phụ kiện hàng đầu cho Balo', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (14, 1, 'Balo Peak Design Everyday v2', 600000, 50, 'img/product/Backpack/Backpack14', 'Tương thích với dòng MacBook/Laptop kích thước lên đến 15 inch. Có đệm và lót lông cừu ngăn laptop. Ngăn lưu trữ đồ nhỏ gọn phía trước\r\nĐệm lưng lưới khí. Dây gài từ tính đóng bằng kẹp ghim kim loại', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (15, 1, 'Balo Velocity Backpack', 750000, 50, 'img/product/Backpack/Backpack15', 'Ba lô máy tính xách tay đa chức năng. Sức suất lớn, linh hoạt, bền bỉ được thiết kế cẩn thận và sản xuất cho phù hợp với nhu cầu cá nhân của bạn cho các hoạt động học tập, kinh doanh và ngoài trời.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (16, 1, 'Balo Carhartt Legacy Standard', 800000, 50, 'img/product/Backpack/Backpack16', 'Kích Thước: 40cm x 28cm x 11cm. Trọng lượng: 1.2kg. Loại túi: Balo Da Thật, balo da đựng laptop, Balo da du lịch. Khả năng chứa: Laptop 13,14,15,16 inch,Ipad, quần áo, ví, sổ tay, điện thoại, sạc dự phòng, vật dụng cá nhân...', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (17, 1, 'Balo Jo By Idigo', 450000, 50, 'img/product/Backpack/Backpack17', 'Kích thước: 31 x 7 x 43 cm. Có thể mở rộng thêm khi cần thiết!. Chất liệu: Vải Oxford chất lượng cực cao. Chống thấm nước, đa năng, tiện lợi, nhỏ gọn.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (18, 2, 'Mũ luỡi trai vải bò', 150000, 30, 'img/product/Cap/Cap1', 'Chất liệu cao cấp, thấm hút mồ hôi, tạo cảm giác thoải mái và thông thoáng. Thiết kế đơn giản, dễ dàng kết hợp với các loại trang phục khác.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 1, b'0');
INSERT INTO `products` VALUES (19, 2, 'Mũ luỡi trai Voboom Len Tweed Sừng Trâu', 160000, 30, 'img/product/Cap/Cap2', 'Làm từ chất liệu cotton thoáng mát, mềm mại mang lại cảm giác thoải mái cho người sử dụng.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 1, b'0');
INSERT INTO `products` VALUES (20, 2, 'Mũ luỡi trai Sauer Cam', 60000, 30, 'img/product/Cap/Cap3', 'Chất liệu cao cấp, thấm hút mồ hôi, tạo cảm giác thoải mái và thông thoáng. Thiết kế đơn giản, dễ dàng kết hợp với các loại trang phục khác.\r\n', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 1, b'0');
INSERT INTO `products` VALUES (21, 2, 'Mũ luỡi trai Golf Trắng', 35000, 30, 'img/product/Cap/Cap4', 'Làm từ chất liệu cotton thoáng mát, mềm mại mang lại cảm giác thoải mái cho người sử dụng.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 1, b'0');
INSERT INTO `products` VALUES (22, 2, 'Mũ luỡi trai Golf Xám', 35000, 30, 'img/product/Cap/Cap5', 'Chất liệu cao cấp, thấm hút mồ hôi, tạo cảm giác thoải mái và thông thoáng. Thiết kế đơn giản, dễ dàng kết hợp với các loại trang phục khác.\r\n', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 1, b'0');
INSERT INTO `products` VALUES (23, 2, 'Mũ luỡi trai Lucky Ball', 80000, 30, 'img/product/Cap/Cap6', 'Sở hữu form chuẩn đẹp, các đường may rất chắc chắn và tinh tế hài lòng ngay cả với khách hàng khó tính. Không phai, dễ giặt, bảo quản.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 1, b'0');
INSERT INTO `products` VALUES (24, 2, 'Mũ luỡi trai Red and White', 165000, 30, 'img/product/Cap/Cap7', 'Sở hữu form chuẩn đẹp, các đường may rất chắc chắn và tinh tế hài lòng ngay cả với khách hàng khó tính. Không phai, dễ giặt, bảo quản.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 1, b'0');
INSERT INTO `products` VALUES (25, 2, 'Mũ luỡi trai Alamy Đen', 150000, 30, 'img/product/Cap/Cap8', 'Chất liệu cao cấp, thấm hút mồ hôi, tạo cảm giác thoải mái và thông thoáng. Thiết kế đơn giản, dễ dàng kết hợp với các loại trang phục khác.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 1, b'0');
INSERT INTO `products` VALUES (26, 2, 'Mũ luỡi trai Alamy Sữa', 150000, 30, 'img/product/Cap/Cap9', 'Sở hữu form chuẩn đẹp, các đường may rất chắc chắn và tinh tế hài lòng ngay cả với khách hàng khó tính. Không phai, dễ giặt, bảo quản.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 1, b'0');
INSERT INTO `products` VALUES (27, 2, 'Mũ luỡi trai Blue and White', 165000, 30, 'img/product/Cap/Cap10', 'Chất liệu cao cấp, thấm hút mồ hôi, tạo cảm giác thoải mái và thông thoáng. Thiết kế đơn giản, dễ dàng kết hợp với các loại trang phục khác.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 1, b'0');
INSERT INTO `products` VALUES (28, 2, 'Mũ luỡi trai AFF Vàng', 135000, 30, 'img/product/Cap/Cap11', 'Sở hữu form chuẩn đẹp, các đường may rất chắc chắn và tinh tế hài lòng ngay cả với khách hàng khó tính. Không phai, dễ giặt, bảo quản.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 1, b'0');
INSERT INTO `products` VALUES (29, 2, 'Mũ luỡi trai AFF Đỏ', 135000, 30, 'img/product/Cap/Cap12', 'Sở hữu form chuẩn đẹp, các đường may rất chắc chắn và tinh tế hài lòng ngay cả với khách hàng khó tính. Không phai, dễ giặt, bảo quản.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 1, b'0');
INSERT INTO `products` VALUES (30, 2, 'Mũ luỡi trai AFF Lục', 135000, 30, 'img/product/Cap/Cap13', 'Sở hữu form chuẩn đẹp, các đường may rất chắc chắn và tinh tế hài lòng ngay cả với khách hàng khó tính. Không phai, dễ giặt, bảo quản.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 1, b'0');
INSERT INTO `products` VALUES (31, 3, 'Mũ Len LTW', 50000, 30, 'img/product/Hat/Hat1', 'Tạo sự ấm áp đặc biệt. Chất liệu vải dệt kim gân chunky phù hợp với bất kỳ trang phục nào.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (32, 3, 'Mũ Long Cừu LTW', 60000, 30, 'img/product/Hat/Hat2', 'Phong cách Hàn Quốc được đánh giá cao về tính đa dạng trong phong cách với vẻ trẻ trung và năng động. Không chỉ các cô gái mà các chàng trai cũng rất hợp với những chiếc mũ  nam kiểu hàn quốc để vừa sành điệu vừa ấm áp.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (33, 3, 'Mũ Phớt Vành Rộng LTW', 70000, 30, 'img/product/Hat/Hat3', 'Thiết kế mang phong cách thời trang và lịch lãm, các sản phẩm nón phớt được rất nhiều các nam nhân hiện nay tin dùng. Sức hút của chiếc mũ cao cấp này tạo nên niềm say mê đối với phái mạnh, không chỉ những người trung niên mà ngay cả những người trẻ tuổi.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (34, 3, 'Mũ Phới Truyền Thống LTW', 85000, 30, 'img/product/Hat/Hat4', 'Sức hút của chiếc mũ cao cấp này tạo nên niềm say mê đối với phái mạnh, không chỉ những người trung niên mà ngay cả những người trẻ tuổi.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (35, 3, 'Mũ Cao Bồi Da Bò', 50000, 30, 'img/product/Hat/Hat5', 'Mũ phù hợp với các bác tài đội tránh nắng lúc rời khỏi ô tô ra ngoài, là phụ kiện thời trang đội hàng ngày dành cho người có phong cách cá tính riêng, là phụ kiện hữu ích chống nắng cho các nam nữ golf thủ…', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (36, 3, 'Mũ Ảo Thuật Gia', 80000, 30, 'img/product/Hat/Hat6', '1. Kết cấu mềm mại và thoải mái, đường may tinh tế, không dễ biến dạng; 2. Đây là sự lựa chọn tốt nhất cho phong cách mặc hàng ngày. Có thể được kết hợp với áo khoác thông thường, áo khoác, bộ vest và quần jean, v.v.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (37, 3, 'Mũ Quý Ông', 90000, 30, 'img/product/Hat/Hat7', 'Sức hút của chiếc mũ cao cấp này tạo nên niềm say mê đối với phái mạnh, không chỉ những người trung niên mà ngay cả những người trẻ tuổi.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (38, 3, 'Mũ Mũ Cao Bồi', 120000, 30, 'img/product/Hat/Hat8', 'Thiết kế mang phong cách thời trang và lịch lãm, các sản phẩm nón phớt được rất nhiều các nam nhân hiện nay tin dùng. Sức hút của chiếc mũ cao cấp này tạo nên niềm say mê đối với phái mạnh, không chỉ những người trung niên mà ngay cả những người trẻ tuổi.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (39, 3, 'Mũ Hoàng Gia Campu', 150000, 30, 'img/product/Hat/Hat9', 'Thiết kế mang phong cách thời trang và lịch lãm, các sản phẩm nón phớt được rất nhiều các nam nhân hiện nay tin dùng. Sức hút của chiếc mũ cao cấp này tạo nên niềm say mê đối với phái mạnh, không chỉ những người trung niên mà ngay cả những người trẻ tuổi.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (40, 3, 'Mũ Lãng Tử', 50000, 30, 'img/product/Hat/Hat10', 'Sức hút của chiếc mũ cao cấp này tạo nên niềm say mê đối với phái mạnh, không chỉ những người trung niên mà ngay cả những người trẻ tuổi.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (41, 4, 'Áo hoodies Trơn Lót Lông Mịn', 250000, 60, 'img/product/Hoodies/Hoodies1', 'Áo nỉ hoodie trơn lót lông mịn nhiều màu ,áo hãng taobao quảng châu loại 1 form rộng nam nữ đều mặc được', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (42, 4, 'Áo hoodies Camo Có Mũ', 250000, 60, 'img/product/Hoodies/Hoodies2', 'Item áo khoác cực ấm cho các bạn mùa đông chưa có GẤU!!  HUSTLE mang đến 1 Camo Jacket cực ngầu và dễ phối đồ để bạn có thể tự tin thể hiện phong cách thời trang của mình trong mùa đông này!', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (43, 4, 'Áo hoodies Siêu Nhẹ Màu Loang Cá Tính', 300000, 60, 'img/product/Hoodies/Hoodies3', 'Áo gió nam(áo khoác dù) siêu nhẹ Uniqlo màu loang cá tính chống thấm nước, chịu được mưa bụi, mưa nhỏ, mỏng và nhẹ nhưng cản gió và tia UV rất tốt. Khi không dùng có thể gấp gọn cho vào túi kèm áo, để trong túi xách, cốp xe.. rất tiện.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (44, 4, 'Áo hoodies Dạ Nam Màu Kem', 300000, 60, 'img/product/Hoodies/Hoodies4', 'Áo khoác dạ nam có mũ vừa là một trong những sản phẩm được nhiều bạn nam lựa chọn mặc trong mùa đông để tạo nên phong cách thời trang chuẩn hàn: đẹp, bắt mắt. Áo được làm bằng chất liệu dạ cao cấp mềm mịn, không phai màu, không xù lông nên sẽ tạo được cảm giác thoải mái khi mặc. Đặc biệt, bên trong áo có 1 lớp lót giữ nhiệt, giúp bảo vệ cơ thể bạn ngay cả trong những ngày thời tiết gió mùa đông bắc về. Áo được thiết kế đơn giản, đẹp, màu sắc dễ phối đồ. Áo măng tô nam fom rộng được các thợ may lành nghề cắt và may nên đường kim mũi chỉ đẹp, chắc chắn.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (45, 4, 'Áo hoodies Nam Trơn Có Mũ', 275000, 60, 'img/product/Hoodies/Hoodies5', 'Kiểu dáng thời trang, áo tay dài, có mũ trùm đầu, có túi ốp ở bụng,khóa kéo chất lượng tốt. Áo dáng xuông, mặc rất thoải mái, dễ phối đồ. Kiểu dáng trẻ trung, nam hay nữ đều mặc được.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (46, 4, 'Áo hoodies Fog Double Hood', 320000, 60, 'img/product/Hoodies/Hoodies6', 'Áo Hoodie được in cao cấp công nghệ in mới nhất, bền mầu. Form rộng Unisex mặc rất thoải mái. Chất liệu: Nỉ bông 100% cotton cao cấp, dòng vải nỉ rất phù hợp vs mùa thu đông vải mềm, vải mịn, thoáng mát, không xù lông, vải co giãn 2 chiều giữ form. Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn. Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại. Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (47, 4, 'Áo hoodies Liên Quân Mobile', 450000, 60, 'img/product/Hoodies/Hoodies7', 'Áo Hoodie kiểu dáng thời trang. Chất vải nỉ bông dầy ấm. Có mũ trùm và túi ốp phí trước. Dáng vừa, có đủ size cho khách từ 40kg-80kg. Hoodie Liên Quân Mobile Mẫu Áo Khoác Game Liên Quân Mới. Áo Hoodie kiểu dáng thời trang. Chất vải nỉ bông dầy ấm. Có mũ trùm và túi ốp phí trước. Dáng vừa, có đủ size cho khách từ 40kg-80kg', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (48, 4, 'Áo hoodies Diamond 4', 400000, 60, 'img/product/Hoodies/Hoodies8', 'Áo hoodie nam trơn Diamond 4 màu xuất dư. Bề mặt vải của mã này rất mịn nhé, bên trong có trần bông ấm áp. Kiểu dáng đơn giản dễ mặc', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (49, 4, 'Áo hoodies Haliky Tiếng Ả Rập', 250000, 60, 'img/product/Hoodies/Hoodies9', 'Có cảm giác nào tuyệt vời hơn khi được rút người vào trong một chiếc áo hoodie chứ. Dẫu bạn đang cần giữ ấm cơ thể hay đang muốn khoác lên mình một bộ đồ thoải mái thì áo hoodie đều lo được tất. Sản phẩm còn có phần túi trước bụng! Sản phẩm này thích hợp với tất cả mọi người vì có kích cỡ unisex. Vì vậy khách hàng có thể tha hồ chọn cho mình một chiếc áo hoodie vừa vặn nhất từ cỡ nhỏ đến cỡ 2XL.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (50, 4, 'Áo hoodies Ngọn Cờ USA', 650000, 60, 'img/product/Hoodies/Hoodies10', 'Chất liệu: Cotton + Polyester (Mềm Mại, thoải mái, dễ chăm sóc); Phong cách: Đơn Giản, Thời Trang, Hip-Hop, Trang Phục Dạo Phố, Punk,Normcore/Tối Giản. Unisex, nam nữ vừa có thể mặc nếu kích thước vừa vặn; Thiết kế độc quyền; Nhân dịp: Phù Hợp cho Trong Nhà Ngoài Trời, Tiệc sinh nhật, Những Buổi Họp Mặt Gia Đình, Phong Trào, Mua Sắm, Du Lịch, trường……', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (51, 5, 'Áo khoác Degrey quằng quện', 190000, 80, 'img/product/Jacket/Jacket1', '- Chất liệu: Kaki. Huoạ tiết: Logo Tag được thêu mặt trước và In hoa tiết Quằng Quện mặt sau. Size: S/ M/ L. Thương hiệu: Degrey. Sản xuất: Việt Nam. Màu sắc và họa tiết được thiết kế riêng bởi team design DEGREY', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (52, 5, 'Áo khoác Kaki Chống UV', 500000, 80, 'img/product/Jacket/Jacket2', 'Áo Khoác Kaki nam với kiểu dáng Hàn Quốc dường như đã không còn xa lạ với phái mạnh chúng ta. Áo khoác với chất liệu Kaki nhập khẩu cho xớ vải dày và mềm bên trong có lớp dù mỏng giúp thấm hút mồ hối mang đến cảm giác thoải mái và không bị hầm hơi khó chịu. Tuy với giá cả rất phái chăng nhưng chất lượng mà áo khoác Kaki mang lại luôn xứng đáng. Điều này đã được thực tế chứng minh khi trong tủ đồ của hầu hết các chàng trai đều không thể thiếu những chiếc áo khoác để đi ngoài đường.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (53, 5, 'Áo khoác Dù Nylon', 430000, 80, 'img/product/Jacket/Jacket3', 'Áo khoác gió với Chất liệu vải gió 320 nhập khẩu, mềm mại và chống nước, gió, bụi tuyệt đối. 2 Lớp được phối 2 tông màu thời trang khác nhau. Phong cách hàn quốc cực thịnh hành. Bảng màu theo xu hướng tối giản mà sang trọng', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (54, 5, 'Áo khoác Kaki OLD Navy', 230000, 80, 'img/product/Jacket/Jacket4', 'Chất áo dày dặn siêu ấm 3 lớp, lớp ngoài kaki, lớp trong dạ, lớp giữa trần bông. Kiểu dáng thời trang, vintage, mặc lên cực sang chảnh tôn dáng. Áo có túi trong tiện lợi', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (55, 5, 'Áo khoác Bomber Đen Chất Nhung', 450000, 80, 'img/product/Jacket/Jacket5', 'Form áo hiện đại, thoải máy, giúp che khuyết điểm tốt. Túi trong để đựng các vật dụng quan trọng như điện thoại, ví tiền', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (56, 5, 'Áo khoác Bomber Giả Da', 200000, 80, 'img/product/Jacket/Jacket6', 'Áo khoác cổ ve lật, dài tay. Có túi có nắp hai bên hông. Bo viền bằng vải gân. Cài phía trước bằng khóa kéo.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (57, 5, 'Áo khoác Vải Dù, Cán Hai Lớp', 150000, 80, 'img/product/Jacket/Jacket7', 'Áo khoác nam đẹp màu đen cao cấp giá rẻ 2 lớp, áo khoác dù nam thời trang chống nắng, chống gió trẻ trung', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (58, 5, 'Áo khoác Lông Cừu 3 Lớp', 90000, 80, 'img/product/Jacket/Jacket8', '️Kháng nước, kháng gió giữ nhiệt mùa đông .️Lớp thứ 2 trần bông giữ nhiệt cản gió lạnh. ️Trong cùng lót lông cừu dày dặn giúp giữ ấm cho cở thể và tạo cảm giác êm ái khi mặc Đồng hành suốt mùa đông, không lo giá rét!', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (59, 5, 'Áo khoác Bomber Dạ Da Lộn', 600000, 80, 'img/product/Jacket/Jacket9', '– Hàng chuẩn VN sản xuất, tem mác chuẩn chính hãng. Chất liệu: Chất liệu Dù 2 Lớp Cao Cấp,Phối Bo Viền. Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn. Thiết kế hiện đại, trẻ trung, năng động, dễ phối đồ. Thêu logo nổi bật', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (60, 5, 'Áo khoác Jean Nam Cổ Bẻ', 300000, 80, 'img/product/Jacket/Jacket10', 'Chất liệu: 98% cotton, 2% spandex. Màu sắc: Xanh chàm đậm. Form dáng: Regular. Size: S, M, L, XL. Tính năng nổi bật: Chất vải jean mang lại sự năng động, khỏe khoắn cho các chàng trai cá tính, bụi bặm. Chất vải jean co giãn tốt mang lại sự thoải mái khi mặc cũng như khi vận động.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (61, 6, 'Giày Nike Air Max', 590000, 80, 'img/product/Shoes/Shoes1', 'Được làm từ chất liệu gồm 32% Leather, 23% Synthetic, và 45% Textile cho giày Nike độ bền đẹp cao, mềm mịn và chống thấm nước tốt. Nike Air Max Plus Se DC9332-001 sử dụng công nghệ Air Max mang lại khả năng đàn hồi hiệu quả và êm ái hơn. Thiết kế giày cổ thấp giúp bạn dễ dàng kết hợp với nhiều mẫu quần áo thường ngày khác nhau.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (62, 6, 'Giày cổ thấp trượt ván', 600000, 80, 'img/product/Shoes/Shoes2', 'Làm từ một nhóm chất liệu tái chế và có chứa ít nhất 50% thành phần tái chế, sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (63, 6, 'Giày Adidas Originals Ultra', 1250000, 80, 'img/product/Shoes/Shoes3', 'Rất dễ nhận biết một item chủ đạo trong tủ đồ. Với phong cách gọn gàng đặc trưng phong cách thập niên 80, đôi giày adidas này kết hợp hoàn hảo với cả quần jeans bạc màu và quần jogger thoải mái. Giày mang phong cách trượt ván với lớp đệm Cloudfoam cho cảm giác dễ chịu.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (64, 6, 'Giày Ryka Journey', 2000000, 80, 'img/product/Shoes/Shoes4', 'Một đôi giày sneaker thiết yếu cho thể dục nhịp điệu nước, chèo thuyền kayak hoặc bất kỳ tập luyện nước nào, máy huấn luyện chéo này với hệ thống thoát nước sáng tạo và hỗ trợ nổi bật là một người hâm mộ yêu thích. Tốt nhất cho: Thể dục nước và các hoạt động nước ngoài trời + Tập luyện cường độ cao. Tech Performance: Hệ thống thoát nước đa cổng + Hỗ trợ tích hợp đặc biệt dưới chân giữa. Được làm cho phụ nữ phù hợp: Được thiết kế cho hình dạng chân độc đáo của một người phụ nữ với gót chân hẹp hơn, ngón chân rộng hơn và đệm chân mềm hơn. VẬT LIỆU: Dấy khô nhanh, lưới thân thiện với clo + lớp phủ da giả để có thêm độ bền. Đóng: Chuyển đổi hệ thống viền để dễ dàng bật/tắt + cổ áo để đệm thêm. Bấm: đế Nitracel đệm có thể tháo rời với lỗ thoát nước. Midsole: EVA nhẹ cho đệm mềm với các lỗ thoát nước. Outsole: đế cao su dính để thêm lực kéo trên bề mặt ướt. Trọng lượng: 239 g/8.4 oz mỗi giày. Giảm gót chân đến chân: 12 mm.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (65, 6, ' Giày Bershka Auth', 1750000, 80, 'img/product/Shoes/Shoes5', 'Kiểu dáng giày sneaker thời trang. Thiết kế lấy cảm hứng từ hiệp hội bóng chày MLB. Cộng hưởng cùng chi tiết logo bóng chày in ở gót .Đế cao su chống trơn trượt. Gam màu hiện đại dễ dàng phối với nhiều trang phục và phụ kiện', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (66, 6, 'Giày Thể Thao M2k', 2350000, 80, 'img/product/Shoes/Shoes6', 'Sản phẩm ứng dụng công nghệ tiên tiến, giúp tạo độ êm, lực hỗ trợ và giảm áp lực mỏi chân. Thiết kế chuyên dụng, hỗ trợ tối ưu các hoạt động tập luyện thể thao Vải lưới cao cấp, có độ bền cao, có hệ thống lỗ thoát khí Công nghệ khử mùi, thoáng khí Kết cấu đế được sản xuất với chất liệu cao cấp, siêu nhẹ để tạo lực đẩy và lực nâng tối ưu cho lòng bàn chânSản phẩm ứng dụng công nghệ tiên tiến, giúp tạo độ êm, lực hỗ trợ và giảm áp lực mỏi chân. Thiết kế chuyên dụng, hỗ trợ tối ưu các hoạt động tập luyện thể thao Vải lưới cao cấp, có độ bền cao, có hệ thống lỗ thoát khí Công nghệ khử mùi, thoáng khí Kết cấu đế được sản xuất với chất liệu cao cấp, siêu nhẹ để tạo lực đẩy và lực nâng tối ưu cho lòng bàn chânSản phẩm ứng dụng công nghệ tiên tiến, giúp tạo độ êm, lực hỗ trợ và giảm áp lực mỏi chân. Thiết kế chuyên dụng, hỗ trợ tối ưu các hoạt động tập luyện thể thao Vải lưới cao cấp, có độ bền cao, có hệ thống lỗ thoát khí Công nghệ khử mùi,  tối ưu cho lòng bàn chân', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (67, 6, 'Giày Hunter X Cut-Out', 999000, 80, 'img/product/Shoes/Shoes7', 'Thiết kế đế mới cao hơn, êm hơn, \"chất\" hơn trên từng trải nghiệm. Thiết kế đế LiteFlex 2.0 chắc chắn sẽ khiến các bạn trẻ \"đổ gục\" với những màu sắc tươi mới hơn, hứa hẹn một đôi giày cực kỳ \"hot\" vào năm 2022 này.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (68, 6, 'Giày Converse Chuck', 1200000, 80, 'img/product/Shoes/Shoes8', 'Với vẻ ngoài cổ điển, Converse Chuck Taylor All Star luôn là một trong những đôi giày dễ nhận biết nhất thế giới. Màu sắc Vintage và chất lượng bền bỉ của dòng giày này đã định hình thế giới Sneaker. Phần thân được làm từ chất vải mềm mại, ôm chân, thông thoáng và có độ bền cao. Đế cao su được đúc từ chất liệu cao cấp với các đường vân ở mặt đế để tăng cường độ ma sát. Đường viền đặc trưng chạy xung quanh đế tạo nên điểm nhấn riêng nổi bật. Logo All Star được in 3D ở phần gót giày và lưỡi gà. Phần dây giày dạng dẹt được xỏ trong những chiếc khoen kim loại màu trắng làm nổi bật hơn màu sắc ở phần thân giày. Các lỗ thoáng khí được bố trí giúp hạn chế sự khó chịu cho người dùng khi phải hoạt động liên tục trong một thời gian dài. Dọc hai bên thân giày là những đường chỉ trắng được may một cách tỉ mỉ và cẩn thận.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (69, 6, 'Giày Puma Rs Z Lth White', 800000, 80, 'img/product/Shoes/Shoes9', 'Giày thể thao running phối nhiều chất liệu. Có quai nắm phía sau và ở lưỡi gà. Đế dày, có rãnh răng cưa.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', NULL, b'0');
INSERT INTO `products` VALUES (70, 7, 'Áo thun Cổ Tròn Giordano', 80000, 80, 'img/product/TShirt/TShirt1', 'Áo thun với chất liệu cotton, rất mềm và thoáng mát, giúp bạn thoải mái vận động suốt ngày dài. Với thiết kế năng động phù hợp cho các dịp đi dạo phố, dã ngoại hoặc hẹn hò.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 2, b'0');
INSERT INTO `products` VALUES (71, 7, 'Áo thun Dragon Fire', 90000, 80, 'img/product/TShirt/TShirt2', 'Vải được dệt thủ công từ bông tự nhiên, hoàn toàn không pha trộn. Công nghệ in kỹ thuật số, hình in hoạ tiết, bền đẹp, không lo bong tróc, giặt thoải mái. Mực in và máy in được nhập khẩu chính hãng tại Hoa Kỳ.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 2, b'0');
INSERT INTO `products` VALUES (72, 7, 'Áo thun Freedom', 90000, 80, 'img/product/TShirt/TShirt3', 'Chất liệu vải Cotton được xử lý bằng công nghệ Nano pha Spandex mềm mát, thoáng khí, thấm hút mồ hôi tốt đồng thời có khả năng co giãn nhẹ nhàng, tạo cảm giác thoải mái trong mọi hoạt động. Áo phông có thiết kế kiểu cơ bản với dáng ôm vừa phải, cổ tròn, tay ngắn, ngực áo thêu logo nhỏ.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 2, b'0');
INSERT INTO `products` VALUES (73, 7, 'Áo thun  Cotton Gildan', 90000, 80, 'img/product/TShirt/TShirt4', 'Chất liệu: Vải KhaKi Lanh nhập khẩu Hàn Quốc. Kiểu dáng: Regular Fit (dáng rộng rãi, không ôm). Thiết kế: Cổ ve mềm và bẻ rộng, ống tay ngắn', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 2, b'0');
INSERT INTO `products` VALUES (74, 7, 'Áo thun Titleist', 90000, 80, 'img/product/TShirt/TShirt5', 'Vật liệu cotton pique cao cấp với độ đàn hồi hoàn hảo. Thiết kế sang trọng đi cùng với tinh thần Tommy Hilfiger. Màu sắc phối hợp với tinh thần biểu tượng lấy cảm hứng từ phong cách vintage', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 2, b'0');
INSERT INTO `products` VALUES (75, 7, 'Áo thun Cổ Trụ Trơn', 100000, 80, 'img/product/TShirt/TShirt6', 'Chất liệu: Vải cotton mát mẻ, mềm mịn, thấm hút mồ hôi tốt. Thiết kế gọn nhẹ, thời trang, tuy đơn giản nhưng cực chất.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 2, b'0');
INSERT INTO `products` VALUES (76, 7, 'Áo thun Cổ Bẻ Tay Ngắn Hàn Quốc', 80000, 80, 'img/product/TShirt/TShirt7', 'Được may từ chất liệu vải mềm, mát, thoáng khí, thấm hút mồ hôi tốt. Sản phẩm có đường chỉ may tỉ mỉ, tinh tế .Với thiết kể kiểu sơ mi dáng cổ điển cổ đức, cài khuy dọc đơn giản, dễ mặc, dễ kết hợp với nhiều kiểu trang phục khác nhau cho nhiều dịp và nhiều hoàn cảnh chắc chắn sẽ giúp các bạn nam thể hiện phong cách lịch lãm, trẻ trung của mình mỗi khi ra ngoài.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 2, b'0');
INSERT INTO `products` VALUES (77, 7, 'Áo thun Vải Dệt PIQUE', 90000, 80, 'img/product/TShirt/TShirt8', 'Áo polo vải cotton dệt kiểu pique. Cổ ve lật, cài khuy phía trước. Tay ngắn, bo viền bằng vải gân. Gấu xẻ hai bên.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 2, b'0');
INSERT INTO `products` VALUES (78, 7, 'Áo thun DLO Vải Cotton Cá Sấu', 90000, 80, 'img/product/TShirt/TShirt9', 'Chất liệu 98% Cotton + 2% Spandex, vân vải Cá sấu. Chất vải dày dặn mịn màng, không bị bạc màu sau thời gian dài sử dụng. Thấm hút tốt, thun co giãn 4 chiều thông thoáng. Sợi Cotton pha Spandex được xử lí bề mặt giúp chống nhăn và không bị xù lông khi giặc.Công nghệ in True HD Max chất lượng hình in, mạc in sắc nét, không bong tróc, phai màu. Kĩ thuật may thêu vi tính tinh vi, áo không bị bung chỉ và không có chỉ thừa.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 2, b'0');
INSERT INTO `products` VALUES (79, 7, 'Áo thun Tay Lỡ Cổ Đứng', 60000, 80, 'img/product/TShirt/TShirt10', '+ Chât vải 100% Cotton cho độ dày dặn, co giãn tốt và quan trọng độ bền màu cao. Giặt không đổ lông hay bay màu, thấm hút mồ hôi và thoải mái ko gò bó khi vận động. Thiệt kế cấu trúc lỗ thoáng, mắt vải to tạo sự thoáng mát cho người mặc. Màu sắc & kích cỡ Áo thun nam thoải mái ko gò bó khi vận động tạo nên sự nặng động,trẻ trung.', '2021-01-08 22:32:55', '2022-01-08 22:36:13', 2, b'0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FULLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `EMAIL` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `PHONE_NUMBER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ADDRESS` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `PASSWORD` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ROLE` bit(1) NULL DEFAULT NULL,
  `CREATED_AT` datetime NULL DEFAULT NULL,
  `UPDATE_AT` datetime NULL DEFAULT NULL,
  `isDeleted` bit(1) NULL DEFAULT NULL,
  `CART_ID` int NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `CART_ID`(`CART_ID`) USING BTREE,
  INDEX `ID`(`ID`) USING BTREE,
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`CART_ID`) REFERENCES `carts` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Admin', 'Admin@nhom.14', '0965002228', 'Thu Duc, HCM', '1', b'1', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 1);
INSERT INTO `users` VALUES (2, 'Trí Lê', 'buithi2@gmail.com', '0935405781', 'Lào cai', '1', b'0', '2022-12-03 00:00:00', '2022-12-03 00:00:00', b'0', 114);
INSERT INTO `users` VALUES (3, 'Tú Trị', 'xuantu3@gmail.com', '0958101396', 'Đà Lạt', '1', b'0', '2022-12-03 00:00:00', '2022-12-03 00:00:00', b'0', 130);
INSERT INTO `users` VALUES (4, 'Long Xuân', 'nguyenanh4@gmail.com', '0978817887', 'Thủ Đức, HCM', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 43);
INSERT INTO `users` VALUES (5, 'Tú Trị', 'builinh5@gmail.com', '01026633257', 'Đà Lạt', '1', b'0', '2022-12-03 00:00:00', '2022-12-03 00:00:00', b'0', 146);
INSERT INTO `users` VALUES (6, 'Sơn Nguyễn', 'daothi6@gmail.com', '01074973313', 'Hà Nội', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 45);
INSERT INTO `users` VALUES (7, 'Trí Lê', 'daotu7@gmail.com', '01090825777', 'Nha Trang', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 46);
INSERT INTO `users` VALUES (8, 'Long Minh', 'binhnhu8@gmail.com', '01114650808', 'Đà Nẵng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 47);
INSERT INTO `users` VALUES (9, 'Tú Phong', 'xuantu9@gmail.com', '01158996833', 'Đà Nẵng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 48);
INSERT INTO `users` VALUES (10, 'Linh Trần', 'nguyentuan10@gmail.com', '01163165278', 'Lào cai', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 49);
INSERT INTO `users` VALUES (11, 'Long Lê', 'xuanlinh11@gmail.com', '01163492925', 'Lào cai', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 50);
INSERT INTO `users` VALUES (12, 'Tuấn Phúc', 'binhha12@gmail.com', '01174246104', 'Nha Trang', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 51);
INSERT INTO `users` VALUES (13, 'Linh Phong', 'nguyenthi13@gmail.com', '01207415931', 'Đà Nẵng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 52);
INSERT INTO `users` VALUES (14, 'Toàn Trị', 'phuongtuan14@gmail.com', '01212068726', 'Lâm Đồng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 53);
INSERT INTO `users` VALUES (15, 'Linh Bảo', 'xuananh15@gmail.com', '01284717714', 'Lâm Đồng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 54);
INSERT INTO `users` VALUES (16, 'Tú Lê', 'binhtuan16@gmail.com', '01323258411', 'Lào cai', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 55);
INSERT INTO `users` VALUES (17, 'Tuấn Trần', 'buinhu17@gmail.com', '01371795505', 'Nha Trang', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 56);
INSERT INTO `users` VALUES (18, 'Trung Bảo', 'xuananh18@gmail.com', '01385604180', 'Đà Nẵng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 57);
INSERT INTO `users` VALUES (19, 'Trí Trần', 'nguyenlinh19@gmail.com', '01407811593', 'Lào cai', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 58);
INSERT INTO `users` VALUES (20, 'Trung Xuân', 'phuonganh20@gmail.com', '01485115266', 'Đà Lạt', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 59);
INSERT INTO `users` VALUES (21, 'Sơn Phong', 'minhtuan21@gmail.com', '01555904701', 'Nha Trang', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 60);
INSERT INTO `users` VALUES (22, 'Toàn Trần', 'daotu22@gmail.com', '01585319782', 'Thủ Đức, HCM', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 61);
INSERT INTO `users` VALUES (23, 'Toàn Phúc', 'trananh23@gmail.com', '01636667330', 'Lào cai', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 62);
INSERT INTO `users` VALUES (24, 'Linh Bảo', 'nguyentuan24@gmail.com', '01689184048', 'Vũng Tàu', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 63);
INSERT INTO `users` VALUES (25, 'Trung Phúc', 'xuanlinh25@gmail.com', '01735204575', 'Nha Trang', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 64);
INSERT INTO `users` VALUES (26, 'Sơn Phúc', 'daoxuan26@gmail.com', '01799698783', 'Đà Nẵng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 65);
INSERT INTO `users` VALUES (27, 'Tú Trị', 'nguyenlinh27@gmail.com', '01835242567', 'Lâm Đồng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 66);
INSERT INTO `users` VALUES (28, 'Trí Phúc', 'trantuan28@gmail.com', '01870448731', 'Hà Nội', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 67);
INSERT INTO `users` VALUES (29, 'Trí Nguyễn', 'minhlinh29@gmail.com', '01930754966', 'Đà Lạt', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 68);
INSERT INTO `users` VALUES (30, 'Long Phong', 'xuanthi30@gmail.com', '01937538247', 'Đà Nẵng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 69);
INSERT INTO `users` VALUES (31, 'Trí Trị', 'nguyenha31@gmail.com', '01965795932', 'Nha Trang', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 70);
INSERT INTO `users` VALUES (32, 'Linh Trị', 'nguyenthi32@gmail.com', '01991522351', 'Thủ Đức, HCM', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 71);
INSERT INTO `users` VALUES (33, 'Ý Bảo', 'xuanha33@gmail.com', '02031684992', 'Vũng Tàu', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 72);
INSERT INTO `users` VALUES (34, 'Sơn Xuân', 'minhtu34@gmail.com', '02072071893', 'Đà Nẵng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 73);
INSERT INTO `users` VALUES (35, 'Long Trị', 'daoxuan35@gmail.com', '02137785514', 'Vũng Tàu', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 74);
INSERT INTO `users` VALUES (36, 'Ý Xuân', 'trananh36@gmail.com', '02214759884', 'Lào cai', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 75);
INSERT INTO `users` VALUES (37, 'Linh Phúc', 'binhlinh37@gmail.com', '02223372181', 'Đà Lạt', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 76);
INSERT INTO `users` VALUES (38, 'Trung Phong', 'xuanlinh38@gmail.com', '02296465495', 'Nha Trang', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 77);
INSERT INTO `users` VALUES (39, 'Toàn Xuân', 'daolinh39@gmail.com', '02330963831', 'Hà Nội', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 78);
INSERT INTO `users` VALUES (40, 'Tuấn Trần', 'daothi40@gmail.com', '02351449878', 'Hà Nội', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 79);
INSERT INTO `users` VALUES (41, 'Toàn Bảo', 'trannhu41@gmail.com', '02381463357', 'Thủ Đức, HCM', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 80);
INSERT INTO `users` VALUES (42, 'Long Xuân', 'nguyenlinh42@gmail.com', '02413499809', 'Nha Trang', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 81);
INSERT INTO `users` VALUES (43, 'Tú Trần', 'daoha43@gmail.com', '02419634016', 'Đà Nẵng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 82);
INSERT INTO `users` VALUES (44, 'Sơn Lê', 'tranthi44@gmail.com', '02466037627', 'Nha Trang', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 83);
INSERT INTO `users` VALUES (45, 'Long Xuân', 'nguyenxuan45@gmail.com', '02504199186', 'Thủ Đức, HCM', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 84);
INSERT INTO `users` VALUES (46, 'Tuấn Lê', 'nguyennhu46@gmail.com', '02555001420', 'Lâm Đồng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 85);
INSERT INTO `users` VALUES (47, 'Long Nguyễn', 'phuongnhu47@gmail.com', '02561715794', 'Vũng Tàu', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 86);
INSERT INTO `users` VALUES (48, 'Trung Trần', 'xuananh48@gmail.com', '02572275651', 'Hà Nội', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 87);
INSERT INTO `users` VALUES (49, 'Ý Trần', 'xuannhu49@gmail.com', '02618472761', 'Vũng Tàu', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 88);
INSERT INTO `users` VALUES (50, 'Tuấn Phúc', 'xuannhu50@gmail.com', '02640494328', 'Nha Trang', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 89);
INSERT INTO `users` VALUES (51, 'Trung Xuân', 'trantuan51@gmail.com', '02668674552', 'Đà Lạt', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 90);
INSERT INTO `users` VALUES (52, 'Long Phong', 'xuanlinh52@gmail.com', '02728954203', 'Lâm Đồng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 91);
INSERT INTO `users` VALUES (53, 'Trí Lê', 'nguyenha53@gmail.com', '02764851124', 'Nha Trang', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 92);
INSERT INTO `users` VALUES (54, 'Trung Bảo', 'daoxuan54@gmail.com', '02812532904', 'Đà Nẵng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 93);
INSERT INTO `users` VALUES (55, 'Trung Xuân', 'binhtuan55@gmail.com', '02858798989', 'Đà Nẵng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 94);
INSERT INTO `users` VALUES (56, 'Ý Phúc', 'binhtu56@gmail.com', '02862712289', 'Lâm Đồng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 95);
INSERT INTO `users` VALUES (57, 'Sơn Trần', 'minhtu57@gmail.com', '02919973945', 'Nha Trang', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 96);
INSERT INTO `users` VALUES (58, 'Sơn Lê', 'xuanthi58@gmail.com', '02967867962', 'Đà Nẵng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 97);
INSERT INTO `users` VALUES (59, 'Ý Nguyễn', 'phuongtuan59@gmail.com', '03045305526', 'Vũng Tàu', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 98);
INSERT INTO `users` VALUES (60, 'Tú Lê', 'binhlinh60@gmail.com', '03117890194', 'Lào cai', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 99);
INSERT INTO `users` VALUES (61, 'Toàn Xuân', 'phuongxuan61@gmail.com', '03125164284', 'Đà Nẵng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 100);
INSERT INTO `users` VALUES (62, 'Long Phong', 'tranthi62@gmail.com', '03167745579', 'Đà Nẵng', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 101);
INSERT INTO `users` VALUES (63, 'Tuấn Lê', 'binhtuan63@gmail.com', '03173359979', 'Thủ Đức, HCM', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 102);
INSERT INTO `users` VALUES (64, 'Trí Trị', 'binhha64@gmail.com', '03187736501', 'Nha Trang', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 103);
INSERT INTO `users` VALUES (65, 'Toàn Bảo', 'trananh65@gmail.com', '03233576070', 'Hà Nội', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 104);
INSERT INTO `users` VALUES (66, 'Trung Minh', 'binhtu66@gmail.com', '03247397667', 'Thủ Đức, HCM', '1', b'0', '2022-12-03 22:10:00', '2022-12-03 22:10:00', b'0', 105);

SET FOREIGN_KEY_CHECKS = 1;
