/*
 Navicat Premium Data Transfer

 Source Server         : link
 Source Server Type    : MySQL
 Source Server Version : 80038 (8.0.38)
 Source Host           : localhost:3306
 Source Schema         : book

 Target Server Type    : MySQL
 Target Server Version : 80038 (8.0.38)
 File Encoding         : 65001

 Date: 29/07/2024 18:17:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id` ASC, `codename` ASC) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add book', 7, 'add_book');
INSERT INTO `auth_permission` VALUES (26, 'Can change book', 7, 'change_book');
INSERT INTO `auth_permission` VALUES (27, 'Can delete book', 7, 'delete_book');
INSERT INTO `auth_permission` VALUES (28, 'Can view book', 7, 'view_book');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add tag', 9, 'add_tag');
INSERT INTO `auth_permission` VALUES (34, 'Can change tag', 9, 'change_tag');
INSERT INTO `auth_permission` VALUES (35, 'Can delete tag', 9, 'delete_tag');
INSERT INTO `auth_permission` VALUES (36, 'Can view tag', 9, 'view_tag');
INSERT INTO `auth_permission` VALUES (37, 'Can add user', 10, 'add_user');
INSERT INTO `auth_permission` VALUES (38, 'Can change user', 10, 'change_user');
INSERT INTO `auth_permission` VALUES (39, 'Can delete user', 10, 'delete_user');
INSERT INTO `auth_permission` VALUES (40, 'Can view user', 10, 'view_user');
INSERT INTO `auth_permission` VALUES (41, 'Can add record', 11, 'add_record');
INSERT INTO `auth_permission` VALUES (42, 'Can change record', 11, 'change_record');
INSERT INTO `auth_permission` VALUES (43, 'Can delete record', 11, 'delete_record');
INSERT INTO `auth_permission` VALUES (44, 'Can view record', 11, 'view_record');
INSERT INTO `auth_permission` VALUES (45, 'Can add comment', 12, 'add_comment');
INSERT INTO `auth_permission` VALUES (46, 'Can change comment', 12, 'change_comment');
INSERT INTO `auth_permission` VALUES (47, 'Can delete comment', 12, 'delete_comment');
INSERT INTO `auth_permission` VALUES (48, 'Can view comment', 12, 'view_comment');
INSERT INTO `auth_permission` VALUES (49, 'Can add login log', 13, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (50, 'Can change login log', 13, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (51, 'Can delete login log', 13, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (52, 'Can view login log', 13, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (53, 'Can add role', 14, 'add_role');
INSERT INTO `auth_permission` VALUES (54, 'Can change role', 14, 'change_role');
INSERT INTO `auth_permission` VALUES (55, 'Can delete role', 14, 'delete_role');
INSERT INTO `auth_permission` VALUES (56, 'Can view role', 14, 'view_role');
INSERT INTO `auth_permission` VALUES (57, 'Can add borrow log', 15, 'add_borrowlog');
INSERT INTO `auth_permission` VALUES (58, 'Can change borrow log', 15, 'change_borrowlog');
INSERT INTO `auth_permission` VALUES (59, 'Can delete borrow log', 15, 'delete_borrowlog');
INSERT INTO `auth_permission` VALUES (60, 'Can view borrow log', 15, 'view_borrowlog');
INSERT INTO `auth_permission` VALUES (61, 'Can add borrow', 16, 'add_borrow');
INSERT INTO `auth_permission` VALUES (62, 'Can change borrow', 16, 'change_borrow');
INSERT INTO `auth_permission` VALUES (63, 'Can delete borrow', 16, 'delete_borrow');
INSERT INTO `auth_permission` VALUES (64, 'Can view borrow', 16, 'view_borrow');
INSERT INTO `auth_permission` VALUES (65, 'Can add op log', 17, 'add_oplog');
INSERT INTO `auth_permission` VALUES (66, 'Can change op log', 17, 'change_oplog');
INSERT INTO `auth_permission` VALUES (67, 'Can delete op log', 17, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (68, 'Can view op log', 17, 'view_oplog');
INSERT INTO `auth_permission` VALUES (69, 'Can add banner', 18, 'add_banner');
INSERT INTO `auth_permission` VALUES (70, 'Can change banner', 18, 'change_banner');
INSERT INTO `auth_permission` VALUES (71, 'Can delete banner', 18, 'delete_banner');
INSERT INTO `auth_permission` VALUES (72, 'Can view banner', 18, 'view_banner');
INSERT INTO `auth_permission` VALUES (73, 'Can add ad', 19, 'add_ad');
INSERT INTO `auth_permission` VALUES (74, 'Can change ad', 19, 'change_ad');
INSERT INTO `auth_permission` VALUES (75, 'Can delete ad', 19, 'delete_ad');
INSERT INTO `auth_permission` VALUES (76, 'Can view ad', 19, 'view_ad');
INSERT INTO `auth_permission` VALUES (77, 'Can add notice', 20, 'add_notice');
INSERT INTO `auth_permission` VALUES (78, 'Can change notice', 20, 'change_notice');
INSERT INTO `auth_permission` VALUES (79, 'Can delete notice', 20, 'delete_notice');
INSERT INTO `auth_permission` VALUES (80, 'Can view notice', 20, 'view_notice');
INSERT INTO `auth_permission` VALUES (81, 'Can add error log', 21, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (82, 'Can change error log', 21, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (83, 'Can delete error log', 21, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (84, 'Can view error log', 21, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (85, 'Can add address', 22, 'add_address');
INSERT INTO `auth_permission` VALUES (86, 'Can change address', 22, 'change_address');
INSERT INTO `auth_permission` VALUES (87, 'Can delete address', 22, 'delete_address');
INSERT INTO `auth_permission` VALUES (88, 'Can view address', 22, 'view_address');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id` ASC, `group_id` ASC) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (3, 'ad/1674045324510.jpeg', 'http://www.baidu.com/a/b', '2023-01-18 20:35:31.419766');

-- ----------------------------
-- Table structure for b_address
-- ----------------------------
DROP TABLE IF EXISTS `b_address`;
CREATE TABLE `b_address`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `desc` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `default` tinyint(1) NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_address_user_id_a37a8d6a_fk_b_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `b_address_user_id_a37a8d6a_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_address
-- ----------------------------
INSERT INTO `b_address` VALUES (1, '啊啊啊点点滴滴点点滴滴', 1, '2023-02-22 21:36:57.675983', NULL, '112', '嗷嗷');
INSERT INTO `b_address` VALUES (11, '北京市海淀区颐和园路5号北京大学南门', 1, '2023-02-23 19:55:19.749075', 17, '132****7777', '刘*华');

-- ----------------------------
-- Table structure for b_banner
-- ----------------------------
DROP TABLE IF EXISTS `b_banner`;
CREATE TABLE `b_banner`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `book_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_banner_book_id_4e844b1d_fk_b_book_id`(`book_id` ASC) USING BTREE,
  CONSTRAINT `b_banner_book_id_4e844b1d_fk_b_book_id` FOREIGN KEY (`book_id`) REFERENCES `b_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_banner
-- ----------------------------
INSERT INTO `b_banner` VALUES (1, 'banner/1721907721307.png', '2024-07-25 19:42:02.475363', 110);

-- ----------------------------
-- Table structure for b_book
-- ----------------------------
DROP TABLE IF EXISTS `b_book`;
CREATE TABLE `b_book`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `author` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `translator` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `press` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `page_count` int NOT NULL,
  `price` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `isbn` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `pub_date` date NULL DEFAULT NULL,
  `online_time` datetime(6) NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `repertory` int NOT NULL,
  `score` int NOT NULL,
  `layout` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `pv` int NOT NULL,
  `classification_id` bigint NULL DEFAULT NULL,
  `original_title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `recommend_count` int NOT NULL,
  `wish_count` int NOT NULL,
  `collect_count` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_book_classification_id_97dfec4c_fk_b_classification_id`(`classification_id` ASC) USING BTREE,
  CONSTRAINT `b_book_classification_id_97dfec4c_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 311 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_book
-- ----------------------------
INSERT INTO `b_book` VALUES (1, '再见了，卡西尼', 'cover/1.jpg', '周深', '', '在这本引人入胜的小说中，我们跟随主人公穿越宇宙的无垠广阔，目睹了人类与外星文明的首次接触。随着卡西尼号探测器的最后一刻，一段跨越光年的友谊悄然萌芽。然而，当两个世界的观念和命运发生冲突时，我们的主角必须做出一个决定，这不仅会改变他的生命轨迹，更可能影响整个人类的未来。\r\n在这本引人入胜的小说中，我们跟随主人公穿越宇宙的无垠广阔，目睹了人类与外星文明的首次接触。随着卡西尼号探测器的最后一刻，一段跨越光年的友谊悄然萌芽。然而，当两个世界的观念和命运发生冲突时，我们的主角必须做出一个决定，这不仅会改变他的生命轨迹，更可能影响整个人类的未来。', '火星人民出版社', 323, '2', '9787532761727', '2013-10-26', NULL, '0', 82, 0, '平装', 0, 41, '', '2023-02-27 21:09:04.657075', 0, 0, 0);
INSERT INTO `b_book` VALUES (2, '从你的头上走过', 'cover/2.jpg', '杨红樱', '', '这是一部充满幽默与机智的都市奇幻小说。讲述一个普通上班族突然发现自己能够通过别人的头顶看到他们未来的片段。这种能力初看是福，却不料引来无数麻烦。从躲避同事的私生活秘密到解决街头随机发生的犯罪，我们的主角在混乱中寻找着控制和使用这份能力的方法，同时也试图保护他所爱的人免受未知的威胁。', '启明星出版社', 292, '11', '978753276173', '2013-08-26', NULL, '0', 68, 0, '平装', 0, 29, '', '2023-02-27 21:11:38.740782', 0, 0, 0);
INSERT INTO `b_book` VALUES (3, '月光光', 'cover/3.jpg', '郎朗', '', '《月光光》是一本描绘青春校园生活的温馨小说。故事围绕一群高中生的生活展开，他们在月光下许下的愿望、经历的初恋、以及面对的成长挑战。书中不仅展现了青春的美好和痛苦，还深刻探讨了友情和家庭的主题，是一部能触动人心弦的作品。', '启明星出版社', 283, '32', '978753276174', '2013-08-26', NULL, '0', 91, 0, '平装', 0, 3, '', '2023-02-27 21:11:38.780358', 0, 0, 0);
INSERT INTO `b_book` VALUES (4, '罗密欧与杰克船长', 'cover/4.jpg', '莎士比亚', '', '在这部创意十足的幻想小说中，著名的文学角色罗密欧被神秘力量送到了海盗的世界，并遇到了传奇的杰克船长。两位英雄的合作带领读者进入一场激动人心的冒险，他们一起寻找回到各自世界的方式，途中不仅要对抗邪恶的海盗，还要解决来自不同世界的文化冲突。', '启明星出版社', 318, '58', '978753276175', '2013-08-26', NULL, '0', 93, 0, '平装', 0, 29, '', '2023-02-27 21:11:38.820979', 0, 0, 0);
INSERT INTO `b_book` VALUES (5, 'Vue速成：从入门到放弃', 'cover/5.jpg', '白宇悦', '', '这本书以幽默诙谐的方式介绍了Vue.js框架的学习之旅。作者用自嘲的语气讲述了一个编程新手试图在短时间内掌握Vue的经历，其中充满了初学者可能遇到的错误和误解。尽管标题看似悲观，但书中实际上提供了大量实用的技巧和建议，帮助读者避免常见的陷阱。', '启明星出版社', 75, '55', '978753276176', '2013-08-26', NULL, '0', 22, 0, '平装', 0, 38, NULL, '2023-02-27 21:11:38.864434', 0, 0, 0);
INSERT INTO `b_book` VALUES (6, '算法导论：12小时极限速成', 'cover/6.jpg', '朱淑丽', '', '这是一本为那些临时抱佛脚的计算机科学学生准备的实用指南。书中以极快的节奏介绍了算法的基本概念和核心原理，旨在帮助读者在极短的时间内对算法有一个基本的了解和掌握。虽然书名带有幽默感，但内容却是严谨的，适合任何需要在短期内快速提升算法知识的人士。', '启明星出版社', 378, '39', '9787532761716', '2013-08-26', NULL, '0', 13, 0, '平装', 0, 38, '', '2023-02-27 21:11:39.379358', 0, 0, 0);
INSERT INTO `b_book` VALUES (7, '如何在不工作的情况下获得薪水', 'cover/7.jpg', '', '', '', '', 10, '', '', NULL, NULL, '0', 5, 0, NULL, 0, 41, '', '2024-07-26 01:16:12.311159', 0, 1, 1);
INSERT INTO `b_book` VALUES (8, '我会飞', 'cover/8.jpg', '康斯坦丁', '', '康斯坦丁以十页纸的精炼语言揭示了飞翔的奥秘。无论是物理上的飞行，还是精神上的升华，这本书都将带你翱翔天际。读完之后，你可能不会真的学会飞，但你肯定会开始考虑用不同的视角看待这个世界——从空中俯瞰的那种视角！', '', 10, '', '', NULL, NULL, '0', 2, 0, NULL, 0, 40, '', '2024-07-26 08:48:06.048156', 0, 0, 0);
INSERT INTO `b_book` VALUES (9, '命运交响曲', 'cover/9.jpg', '贝多芬', '', '贝多芬用50页纸谱写的命运之曲，不仅是音乐史上的不朽经典，更是一本关于如何面对命运玩笑的实用指南。这本书将教你如何在生活的跌宕起伏中找到自己的节奏，甚至在最糟糕的情况下也能翩翩起舞。', '', 50, '', '', NULL, NULL, '0', 65, 0, NULL, 0, 3, '', '2024-07-26 08:48:32.954991', 0, 0, 0);
INSERT INTO `b_book` VALUES (10, '微积分概论', 'cover/10.jpg', '牛顿', '', '牛顿重磅推出的超长篇巨作，讲述微积分的起源与应用。传说中的5240页长书，不仅仅是数学爱好者的圣经，还是失眠者的救命稻草。读完这本书，你不仅能解决所有数学难题，还能对宇宙万物有更深的理解，甚至可能会开始质疑现实的存在！', '', 5240, '', '', NULL, NULL, '0', 80, 0, NULL, 0, 40, '', '2024-07-26 08:49:22.796018', 0, 0, 0);
INSERT INTO `b_book` VALUES (11, '天才不睡觉', 'cover/11.jpg', '佚名', '', '在这本书中，作者侠名告诉我们，真正的天才根本不需要睡觉。他们不仅在睡觉时仍然能思考，还能在梦中找到下一个世界难题的解答。如果你想成为下一个爱因斯坦，那么就准备好告别你的枕头吧！', '', 70, '', '', NULL, NULL, '0', 7, 0, NULL, 0, 40, '', '2024-07-26 08:50:24.486481', 0, 0, 0);

-- ----------------------------
-- Table structure for b_book_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_book_collect`;
CREATE TABLE `b_book_collect`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `book_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_book_collect_book_id_user_id_4d5fbd66_uniq`(`book_id` ASC, `user_id` ASC) USING BTREE,
  INDEX `b_book_collect_user_id_3d47677a_fk_b_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `b_book_collect_book_id_8315b2aa_fk_b_book_id` FOREIGN KEY (`book_id`) REFERENCES `b_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_book_collect_user_id_3d47677a_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_book_collect
-- ----------------------------
INSERT INTO `b_book_collect` VALUES (22, 7, 27);

-- ----------------------------
-- Table structure for b_book_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_book_tag`;
CREATE TABLE `b_book_tag`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `book_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_book_tag_book_id_tag_id_830acd4d_uniq`(`book_id` ASC, `tag_id` ASC) USING BTREE,
  INDEX `b_book_tag_tag_id_6f01bb2b_fk_b_tag_id`(`tag_id` ASC) USING BTREE,
  CONSTRAINT `b_book_tag_book_id_ae8baebe_fk_b_book_id` FOREIGN KEY (`book_id`) REFERENCES `b_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_book_tag_tag_id_6f01bb2b_fk_b_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `b_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 175 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_book_tag
-- ----------------------------
INSERT INTO `b_book_tag` VALUES (174, 6, 15);
INSERT INTO `b_book_tag` VALUES (173, 7, 16);
INSERT INTO `b_book_tag` VALUES (172, 8, 27);
INSERT INTO `b_book_tag` VALUES (171, 9, 22);
INSERT INTO `b_book_tag` VALUES (170, 10, 18);
INSERT INTO `b_book_tag` VALUES (169, 11, 27);

-- ----------------------------
-- Table structure for b_book_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_book_wish`;
CREATE TABLE `b_book_wish`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `book_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_book_wish_book_id_user_id_5712007e_uniq`(`book_id` ASC, `user_id` ASC) USING BTREE,
  INDEX `b_book_wish_user_id_2113e71c_fk_b_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `b_book_wish_book_id_79314cb6_fk_b_book_id` FOREIGN KEY (`book_id`) REFERENCES `b_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_book_wish_user_id_2113e71c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_book_wish
-- ----------------------------
INSERT INTO `b_book_wish` VALUES (28, 7, 27);

-- ----------------------------
-- Table structure for b_borrow
-- ----------------------------
DROP TABLE IF EXISTS `b_borrow`;
CREATE TABLE `b_borrow`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `borrow_time` datetime(6) NULL DEFAULT NULL,
  `book_id` bigint NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `return_time` datetime(6) NULL DEFAULT NULL,
  `expect_time` datetime(6) NULL DEFAULT NULL,
  `delayed` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_borrow_book_id_e01aec1d_fk_b_book_id`(`book_id` ASC) USING BTREE,
  INDEX `b_borrow_user_id_a9d86b1d_fk_b_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `b_borrow_book_id_e01aec1d_fk_b_book_id` FOREIGN KEY (`book_id`) REFERENCES `b_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_borrow_user_id_a9d86b1d_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_borrow
-- ----------------------------
INSERT INTO `b_borrow` VALUES (64, '1', '2024-07-29 10:17:20.984094', 11, 28, NULL, '2024-09-27 10:17:20.977086', 0);
INSERT INTO `b_borrow` VALUES (65, '1', '2024-07-29 10:17:50.642492', 11, 27, NULL, '2024-09-27 10:17:50.636448', 0);
INSERT INTO `b_borrow` VALUES (66, '2', '2024-07-29 10:24:42.093121', 10, 27, NULL, '2024-09-27 10:24:42.087284', 0);
INSERT INTO `b_borrow` VALUES (67, '1', '2024-07-29 10:25:19.291500', 5, 27, NULL, '2024-09-27 10:25:19.284991', 0);
INSERT INTO `b_borrow` VALUES (68, '1', '2024-07-29 10:45:07.472028', 9, 27, NULL, '2024-09-27 10:45:07.466215', 0);

-- ----------------------------
-- Table structure for b_borrow_log
-- ----------------------------
DROP TABLE IF EXISTS `b_borrow_log`;
CREATE TABLE `b_borrow_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  `book_id` bigint NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_borrow_log_book_id_1406c733_fk_b_book_id`(`book_id` ASC) USING BTREE,
  INDEX `b_borrow_log_user_id_c4182f45_fk_b_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `b_borrow_log_book_id_1406c733_fk_b_book_id` FOREIGN KEY (`book_id`) REFERENCES `b_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_borrow_log_user_id_c4182f45_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_borrow_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (2, '小说', '2023-01-03 20:29:03.379531', -1);
INSERT INTO `b_classification` VALUES (3, '娱乐', '2023-01-09 22:24:27.689763', -1);
INSERT INTO `b_classification` VALUES (4, '计算机', '2023-01-09 22:24:34.338028', -1);
INSERT INTO `b_classification` VALUES (6, '财经', '2023-01-15 19:44:08.212906', -1);
INSERT INTO `b_classification` VALUES (29, '文学', '2023-01-16 22:05:29.623095', -1);
INSERT INTO `b_classification` VALUES (38, '科技', '2023-02-27 21:26:43.415114', -1);
INSERT INTO `b_classification` VALUES (39, '历史', '2023-02-27 21:26:55.346282', -1);
INSERT INTO `b_classification` VALUES (40, '教育', '2023-02-27 21:27:05.039525', -1);
INSERT INTO `b_classification` VALUES (41, '生活', '2023-02-27 21:39:07.692345', -1);

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int NOT NULL,
  `book_id` bigint NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_book_id_4a166c01_fk_b_book_id`(`book_id` ASC) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `b_comment_book_id_4a166c01_fk_b_book_id` FOREIGN KEY (`book_id`) REFERENCES `b_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (41, '一般吧', '2024-07-29 13:14:50.326542', 7, 7, 27);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------
INSERT INTO `b_error_log` VALUES (6, '127.0.0.1', '/myapp/index/book/detail', 'GET', '对象不存在', '2024-07-26 09:00:26.475749');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (82, '127.0.0.1', '2024-07-29 10:17:41.279143', '1197936911@qq.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (5, '我梦想的是一种更隐秘的默认，或更柔软的回应。对我而言，生命宛如一匹马，须先尽力驯服调教，然后配合它一起律动', '2023-02-16 21:36:31.762079', '测试通知');
INSERT INTO `b_notice` VALUES (6, '我梦想的是一种更隐秘的默认，或更柔软的回应。对我而言，生命宛如一匹马，须先尽力驯服调教，然后配合它一起律动', '2023-02-16 21:38:33.626216', '新书推荐');
INSERT INTO `b_notice` VALUES (7, '法语小说家、诗人、翻译家、文学批评家，16岁即以长诗《幻想园》崭露头角，1951年出版的《哈德良回忆录》同时得到费米纳奖和法兰西学院大奖', '2023-02-16 21:39:14.476040', '新书推荐');
INSERT INTO `b_notice` VALUES (8, '我来测试一下', '2024-07-25 19:36:53.642313', '哈哈哈，新官上任');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11470 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (10389, '127.0.0.1', '2024-07-25 19:34:18.445294', '/myapp/admin/opLog/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10390, '127.0.0.1', '2024-07-25 19:34:21.526913', '/myapp/admin/loginLog/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10391, '127.0.0.1', '2024-07-25 19:34:22.108592', '/myapp/admin/errorLog/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10392, '127.0.0.1', '2024-07-25 19:34:22.588324', '/myapp/admin/opLog/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10393, '127.0.0.1', '2024-07-25 19:34:41.168402', '/myapp/admin/opLog/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (10394, '127.0.0.1', '2024-07-25 19:34:49.331470', '/myapp/admin/opLog/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (10395, '127.0.0.1', '2024-07-25 19:34:51.112666', '/myapp/admin/opLog/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10396, '127.0.0.1', '2024-07-25 19:34:52.985989', '/myapp/admin/opLog/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10397, '127.0.0.1', '2024-07-25 19:34:54.361423', '/myapp/admin/opLog/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10398, '127.0.0.1', '2024-07-25 19:35:01.283518', '/myapp/admin/opLog/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (10399, '127.0.0.1', '2024-07-25 19:35:03.557834', '/myapp/admin/opLog/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10400, '127.0.0.1', '2024-07-25 19:35:04.647406', '/myapp/admin/opLog/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10401, '127.0.0.1', '2024-07-25 19:35:05.496630', '/myapp/admin/opLog/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10402, '127.0.0.1', '2024-07-25 19:35:32.301992', '/myapp/admin/loginLog/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (10403, '127.0.0.1', '2024-07-25 19:35:32.973643', '/myapp/admin/opLog/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10404, '127.0.0.1', '2024-07-25 19:35:33.677624', '/myapp/admin/errorLog/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10405, '127.0.0.1', '2024-07-25 19:35:34.768898', '/myapp/admin/opLog/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10406, '127.0.0.1', '2024-07-25 19:35:47.922338', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10407, '127.0.0.1', '2024-07-25 19:36:17.915253', '/myapp/admin/banner/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (10408, '127.0.0.1', '2024-07-25 19:36:18.752035', '/myapp/admin/ad/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10409, '127.0.0.1', '2024-07-25 19:36:18.805054', '/upload/ad/1674045324510.jpeg', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (10410, '127.0.0.1', '2024-07-25 19:36:28.069890', '/myapp/admin/notice/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10411, '127.0.0.1', '2024-07-25 19:36:53.649313', '/myapp/admin/notice/create', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (10412, '127.0.0.1', '2024-07-25 19:36:53.684894', '/myapp/admin/notice/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10413, '127.0.0.1', '2024-07-25 19:36:58.550297', '/myapp/admin/notice/delete', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (10414, '127.0.0.1', '2024-07-25 19:36:58.580846', '/myapp/admin/notice/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10415, '127.0.0.1', '2024-07-25 19:37:01.436038', '/myapp/admin/notice/delete', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (10416, '127.0.0.1', '2024-07-25 19:37:01.463477', '/myapp/admin/notice/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10417, '127.0.0.1', '2024-07-25 19:37:09.483337', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (10418, '127.0.0.1', '2024-07-25 19:37:10.703588', '/myapp/admin/banner/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10419, '127.0.0.1', '2024-07-25 19:37:13.916881', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (10420, '127.0.0.1', '2024-07-25 19:37:24.484203', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10421, '127.0.0.1', '2024-07-25 19:37:24.488227', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (10422, '127.0.0.1', '2024-07-25 19:37:24.489227', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (10423, '127.0.0.1', '2024-07-25 19:37:24.498227', '/myapp/index/book/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (10424, '127.0.0.1', '2024-07-25 19:37:24.588863', '/upload/cover/5.jpg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (10425, '127.0.0.1', '2024-07-25 19:37:24.588863', '/upload/cover/5.jpg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10426, '127.0.0.1', '2024-07-25 19:37:24.589863', '/upload/cover/5.jpg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10427, '127.0.0.1', '2024-07-25 19:37:24.590864', '/upload/cover/3.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10428, '127.0.0.1', '2024-07-25 19:37:24.592143', '/upload/cover/2.jpg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (10429, '127.0.0.1', '2024-07-25 19:37:24.592143', '/upload/cover/1.jpg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (10430, '127.0.0.1', '2024-07-25 19:37:27.096293', '/myapp/index/book/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (10431, '127.0.0.1', '2024-07-25 19:37:28.072492', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (10432, '127.0.0.1', '2024-07-25 19:37:28.872907', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10433, '127.0.0.1', '2024-07-25 19:37:29.328315', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (10434, '127.0.0.1', '2024-07-25 19:37:29.802910', '/myapp/index/book/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (10435, '127.0.0.1', '2024-07-25 19:37:31.198070', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10436, '127.0.0.1', '2024-07-25 19:37:32.327621', '/myapp/index/book/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (10437, '127.0.0.1', '2024-07-25 19:37:33.496635', '/myapp/index/book/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (10438, '127.0.0.1', '2024-07-25 19:37:34.253584', '/myapp/index/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (10439, '127.0.0.1', '2024-07-25 19:37:34.857314', '/myapp/index/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (10440, '127.0.0.1', '2024-07-25 19:37:35.366724', '/myapp/index/book/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (10441, '127.0.0.1', '2024-07-25 19:37:39.754949', '/myapp/admin/book/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (10442, '127.0.0.1', '2024-07-25 19:37:42.009433', '/myapp/admin/classification/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10443, '127.0.0.1', '2024-07-25 19:37:42.014433', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10444, '127.0.0.1', '2024-07-25 19:37:47.618393', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10445, '127.0.0.1', '2024-07-25 19:37:47.636262', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (10446, '127.0.0.1', '2024-07-25 19:37:52.494013', '/myapp/admin/book/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (10447, '127.0.0.1', '2024-07-25 19:37:52.548087', '/myapp/admin/book/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (10448, '127.0.0.1', '2024-07-25 19:37:55.187533', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10449, '127.0.0.1', '2024-07-25 19:37:55.206891', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (10450, '127.0.0.1', '2024-07-25 19:38:01.005715', '/myapp/admin/book/update', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (10451, '127.0.0.1', '2024-07-25 19:38:01.085147', '/myapp/admin/book/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (10452, '127.0.0.1', '2024-07-25 19:38:02.651973', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10453, '127.0.0.1', '2024-07-25 19:38:02.665306', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (10454, '127.0.0.1', '2024-07-25 19:38:07.918372', '/myapp/admin/book/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (10455, '127.0.0.1', '2024-07-25 19:38:08.009565', '/myapp/admin/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (10456, '127.0.0.1', '2024-07-25 19:38:09.524920', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (10457, '127.0.0.1', '2024-07-25 19:38:09.525928', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (10458, '127.0.0.1', '2024-07-25 19:38:17.153856', '/myapp/admin/book/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (10459, '127.0.0.1', '2024-07-25 19:38:17.260894', '/myapp/admin/book/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (10460, '127.0.0.1', '2024-07-25 19:38:21.653040', '/myapp/index/book/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (10461, '127.0.0.1', '2024-07-25 19:38:22.166608', '/myapp/index/book/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (10462, '127.0.0.1', '2024-07-25 19:38:23.070485', '/myapp/index/book/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (10463, '127.0.0.1', '2024-07-25 19:38:23.459347', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (10464, '127.0.0.1', '2024-07-25 19:38:24.073276', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (10465, '127.0.0.1', '2024-07-25 19:38:24.583673', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10466, '127.0.0.1', '2024-07-25 19:38:25.382628', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (10467, '127.0.0.1', '2024-07-25 19:38:25.889186', '/myapp/index/book/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (10468, '127.0.0.1', '2024-07-25 19:38:27.107912', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10469, '127.0.0.1', '2024-07-25 19:38:27.604848', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (10470, '127.0.0.1', '2024-07-25 19:38:28.424596', '/myapp/index/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (10471, '127.0.0.1', '2024-07-25 19:38:29.274485', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10472, '127.0.0.1', '2024-07-25 19:38:30.494914', '/myapp/index/book/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (10473, '127.0.0.1', '2024-07-25 19:38:30.885247', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10474, '127.0.0.1', '2024-07-25 19:38:31.771312', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10475, '127.0.0.1', '2024-07-25 19:38:32.181393', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10476, '127.0.0.1', '2024-07-25 19:38:32.723613', '/myapp/index/book/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (10477, '127.0.0.1', '2024-07-25 19:38:33.222538', '/myapp/index/book/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (10478, '127.0.0.1', '2024-07-25 19:38:38.113800', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10479, '127.0.0.1', '2024-07-25 19:38:38.119310', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10480, '127.0.0.1', '2024-07-25 19:38:44.367068', '/myapp/admin/book/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (10481, '127.0.0.1', '2024-07-25 19:38:44.429625', '/myapp/admin/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (10482, '127.0.0.1', '2024-07-25 19:40:09.112548', '/myapp/admin/loginLog/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (10483, '127.0.0.1', '2024-07-25 19:40:10.177757', '/myapp/admin/opLog/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10484, '127.0.0.1', '2024-07-25 19:40:11.604287', '/myapp/admin/loginLog/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10485, '127.0.0.1', '2024-07-25 19:40:12.212291', '/myapp/admin/opLog/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (10486, '127.0.0.1', '2024-07-25 19:40:12.764473', '/myapp/admin/errorLog/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (10487, '127.0.0.1', '2024-07-25 19:40:14.044043', '/myapp/admin/opLog/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10488, '127.0.0.1', '2024-07-25 19:40:33.200075', '/myapp/admin/loginLog/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (10489, '127.0.0.1', '2024-07-25 19:40:34.277869', '/myapp/admin/opLog/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (10490, '127.0.0.1', '2024-07-25 19:40:36.375442', '/myapp/admin/loginLog/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (10491, '127.0.0.1', '2024-07-25 19:40:37.300419', '/myapp/admin/errorLog/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (10492, '127.0.0.1', '2024-07-25 19:40:51.604391', '/myapp/admin/opLog/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10493, '127.0.0.1', '2024-07-25 19:40:53.026731', '/myapp/admin/loginLog/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10494, '127.0.0.1', '2024-07-25 19:40:53.901741', '/myapp/admin/opLog/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10495, '127.0.0.1', '2024-07-25 19:40:57.013971', '/myapp/admin/ad/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (10496, '127.0.0.1', '2024-07-25 19:41:34.458842', '/myapp/admin/banner/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (10497, '127.0.0.1', '2024-07-25 19:41:44.011109', '/myapp/admin/notice/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10498, '127.0.0.1', '2024-07-25 19:41:45.119666', '/myapp/admin/banner/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10499, '127.0.0.1', '2024-07-25 19:41:47.509817', '/myapp/admin/book/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (10500, '127.0.0.1', '2024-07-25 19:42:02.482984', '/myapp/admin/banner/create', 'POST', NULL, '179');
INSERT INTO `b_op_log` VALUES (10501, '127.0.0.1', '2024-07-25 19:42:02.528115', '/myapp/admin/banner/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (10502, '127.0.0.1', '2024-07-25 19:42:02.571046', '/upload/banner/1721907721307.png', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10503, '127.0.0.1', '2024-07-25 19:42:04.886028', '/myapp/admin/notice/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10504, '127.0.0.1', '2024-07-25 19:42:07.112957', '/myapp/admin/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10505, '127.0.0.1', '2024-07-25 19:42:07.939347', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (10506, '127.0.0.1', '2024-07-25 19:42:08.551706', '/myapp/admin/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10507, '127.0.0.1', '2024-07-25 19:42:09.324712', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10508, '127.0.0.1', '2024-07-25 21:36:15.598887', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10509, '127.0.0.1', '2024-07-25 23:56:53.186636', '/myapp/index/book/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (10510, '127.0.0.1', '2024-07-25 23:56:53.238070', '/upload/cover/1.jpg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10511, '127.0.0.1', '2024-07-25 23:56:54.633621', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10512, '127.0.0.1', '2024-07-25 23:56:54.639636', '/myapp/index/book/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (10513, '127.0.0.1', '2024-07-25 23:56:54.648601', '/myapp/index/book/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (10514, '127.0.0.1', '2024-07-25 23:56:54.661719', '/myapp/index/book/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (10515, '127.0.0.1', '2024-07-25 23:56:54.746492', '/upload/cover/6.jpg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (10516, '127.0.0.1', '2024-07-25 23:56:54.780947', '/upload/cover/3.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10517, '127.0.0.1', '2024-07-25 23:56:54.782952', '/upload/cover/2.jpg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10518, '127.0.0.1', '2024-07-25 23:56:54.782952', '/upload/cover/3.jpg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10519, '127.0.0.1', '2024-07-25 23:56:54.783952', '/upload/cover/2.jpg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10520, '127.0.0.1', '2024-07-25 23:56:59.550695', '/myapp/index/book/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (10521, '127.0.0.1', '2024-07-25 23:56:59.952551', '/myapp/index/book/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (10522, '127.0.0.1', '2024-07-25 23:57:00.271068', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10523, '127.0.0.1', '2024-07-25 23:57:00.702968', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10524, '127.0.0.1', '2024-07-25 23:57:01.081271', '/myapp/index/book/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (10525, '127.0.0.1', '2024-07-25 23:57:02.464486', '/myapp/index/book/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (10526, '127.0.0.1', '2024-07-25 23:57:02.871964', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10527, '127.0.0.1', '2024-07-25 23:57:03.297267', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10528, '127.0.0.1', '2024-07-25 23:57:03.716586', '/myapp/index/book/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (10529, '127.0.0.1', '2024-07-25 23:57:04.188535', '/myapp/index/book/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (10530, '127.0.0.1', '2024-07-25 23:57:04.615227', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (10531, '127.0.0.1', '2024-07-25 23:57:05.450759', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (10532, '127.0.0.1', '2024-07-25 23:57:05.901878', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10533, '127.0.0.1', '2024-07-25 23:57:06.433996', '/myapp/index/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (10534, '127.0.0.1', '2024-07-25 23:57:08.342179', '/myapp/index/book/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (10535, '127.0.0.1', '2024-07-25 23:57:10.086628', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10536, '127.0.0.1', '2024-07-25 23:57:11.223438', '/myapp/index/book/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (10537, '127.0.0.1', '2024-07-25 23:57:19.144258', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10538, '127.0.0.1', '2024-07-25 23:57:26.955340', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10539, '127.0.0.1', '2024-07-25 23:57:28.366996', '/myapp/index/book/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (10540, '127.0.0.1', '2024-07-25 23:57:28.840159', '/myapp/index/book/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (10541, '127.0.0.1', '2024-07-25 23:57:29.137544', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10542, '127.0.0.1', '2024-07-25 23:57:29.757315', '/myapp/index/book/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (10543, '127.0.0.1', '2024-07-25 23:57:35.465280', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10544, '127.0.0.1', '2024-07-25 23:57:36.513629', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (10545, '127.0.0.1', '2024-07-25 23:57:37.121324', '/myapp/index/book/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (10546, '127.0.0.1', '2024-07-25 23:57:39.199939', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10547, '127.0.0.1', '2024-07-25 23:57:40.089569', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (10548, '127.0.0.1', '2024-07-25 23:57:40.823968', '/myapp/index/book/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (10549, '127.0.0.1', '2024-07-25 23:57:41.417230', '/myapp/index/book/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (10550, '127.0.0.1', '2024-07-25 23:57:42.088354', '/myapp/index/book/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (10551, '127.0.0.1', '2024-07-25 23:57:42.498910', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10552, '127.0.0.1', '2024-07-25 23:57:43.481536', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10553, '127.0.0.1', '2024-07-25 23:57:44.886882', '/myapp/index/book/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (10554, '127.0.0.1', '2024-07-25 23:58:32.479568', '/myapp/index/book/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (10555, '127.0.0.1', '2024-07-26 00:02:12.671961', '/myapp/index/notice/list_api', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (10556, '127.0.0.1', '2024-07-26 00:02:12.716135', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (10557, '127.0.0.1', '2024-07-26 00:02:12.722163', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (10558, '127.0.0.1', '2024-07-26 00:02:12.733669', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (10559, '127.0.0.1', '2024-07-26 00:02:12.775482', '/upload/avatar/1721799050444.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (10560, '127.0.0.1', '2024-07-26 00:02:16.008461', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10561, '127.0.0.1', '2024-07-26 00:02:17.372068', '/myapp/index/borrow/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (10562, '127.0.0.1', '2024-07-26 00:04:59.674058', '/myapp/admin/overview/count', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (10563, '127.0.0.1', '2024-07-26 00:26:56.737179', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (10564, '127.0.0.1', '2024-07-26 00:26:57.734574', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10565, '127.0.0.1', '2024-07-26 00:26:57.784441', '/upload/avatar/1721799050444.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10566, '127.0.0.1', '2024-07-26 00:26:58.568008', '/myapp/index/book/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (10567, '127.0.0.1', '2024-07-26 00:26:58.566007', '/myapp/index/book/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (10568, '127.0.0.1', '2024-07-26 00:26:58.571172', '/myapp/index/book/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (10569, '127.0.0.1', '2024-07-26 00:26:58.601891', '/myapp/index/book/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (10570, '127.0.0.1', '2024-07-26 00:28:07.647366', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (10571, '127.0.0.1', '2024-07-26 00:28:07.652365', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (10572, '127.0.0.1', '2024-07-26 00:28:07.678872', '/myapp/index/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (10573, '127.0.0.1', '2024-07-26 00:28:07.767383', '/upload/cover/1.jpg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (10574, '127.0.0.1', '2024-07-26 00:28:07.771383', '/upload/cover/4.jpg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10575, '127.0.0.1', '2024-07-26 00:28:07.773383', '/upload/cover/1.jpg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10576, '127.0.0.1', '2024-07-26 00:28:07.777383', '/upload/cover/2.jpg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (10577, '127.0.0.1', '2024-07-26 00:28:07.779383', '/upload/cover/3.jpg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (10578, '127.0.0.1', '2024-07-26 00:28:07.780383', '/upload/cover/4.jpg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (10579, '127.0.0.1', '2024-07-26 00:28:07.808383', '/upload/cover/5.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10580, '127.0.0.1', '2024-07-26 01:12:55.508853', '/myapp/admin/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (10581, '127.0.0.1', '2024-07-26 01:12:57.429991', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10582, '127.0.0.1', '2024-07-26 01:12:57.431039', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10583, '127.0.0.1', '2024-07-26 01:15:06.612993', '/myapp/admin/book/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (10584, '127.0.0.1', '2024-07-26 01:15:08.213226', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (10585, '127.0.0.1', '2024-07-26 01:15:08.216224', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (10586, '127.0.0.1', '2024-07-26 01:16:12.333905', '/myapp/admin/book/create', 'POST', NULL, '477');
INSERT INTO `b_op_log` VALUES (10587, '127.0.0.1', '2024-07-26 01:16:12.435392', '/myapp/admin/book/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (10588, '127.0.0.1', '2024-07-26 08:46:45.919238', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10589, '127.0.0.1', '2024-07-26 08:46:45.921239', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10590, '127.0.0.1', '2024-07-26 08:46:45.922239', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10591, '127.0.0.1', '2024-07-26 08:46:45.941361', '/myapp/index/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (10592, '127.0.0.1', '2024-07-26 08:46:46.071294', '/upload/cover/4.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10593, '127.0.0.1', '2024-07-26 08:46:46.072293', '/upload/cover/3.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10594, '127.0.0.1', '2024-07-26 08:46:46.073294', '/upload/cover/2.jpg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10595, '127.0.0.1', '2024-07-26 08:46:46.073294', '/upload/cover/2.jpg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (10596, '127.0.0.1', '2024-07-26 08:46:46.074296', '/upload/cover/2.jpg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (10597, '127.0.0.1', '2024-07-26 08:46:46.074296', '/upload/cover/2.jpg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10598, '127.0.0.1', '2024-07-26 08:46:46.089247', '/upload/cover/1.jpg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10599, '127.0.0.1', '2024-07-26 08:47:13.381921', '/myapp/admin/overview/count', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (10600, '127.0.0.1', '2024-07-26 08:47:14.568731', '/myapp/admin/borrow/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (10601, '127.0.0.1', '2024-07-26 08:47:15.087460', '/myapp/admin/book/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (10602, '127.0.0.1', '2024-07-26 08:47:32.456237', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10603, '127.0.0.1', '2024-07-26 08:47:32.461053', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (10604, '127.0.0.1', '2024-07-26 08:48:06.077424', '/myapp/admin/book/create', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (10605, '127.0.0.1', '2024-07-26 08:48:06.204823', '/myapp/admin/book/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (10606, '127.0.0.1', '2024-07-26 08:48:08.214952', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10607, '127.0.0.1', '2024-07-26 08:48:08.216951', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (10608, '127.0.0.1', '2024-07-26 08:48:32.996717', '/myapp/admin/book/create', 'POST', NULL, '76');
INSERT INTO `b_op_log` VALUES (10609, '127.0.0.1', '2024-07-26 08:48:33.149064', '/myapp/admin/book/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (10610, '127.0.0.1', '2024-07-26 08:48:34.243083', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (10611, '127.0.0.1', '2024-07-26 08:48:34.247083', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (10612, '127.0.0.1', '2024-07-26 08:49:22.830349', '/myapp/admin/book/create', 'POST', NULL, '68');
INSERT INTO `b_op_log` VALUES (10613, '127.0.0.1', '2024-07-26 08:49:22.977785', '/myapp/admin/book/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (10614, '127.0.0.1', '2024-07-26 08:49:35.891397', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10615, '127.0.0.1', '2024-07-26 08:49:35.892397', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10616, '127.0.0.1', '2024-07-26 08:50:24.512106', '/myapp/admin/book/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (10617, '127.0.0.1', '2024-07-26 08:50:24.686408', '/myapp/admin/book/list', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (10618, '127.0.0.1', '2024-07-26 08:51:25.618728', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10619, '127.0.0.1', '2024-07-26 08:51:25.628942', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (10620, '127.0.0.1', '2024-07-26 08:51:28.327374', '/myapp/admin/book/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (10621, '127.0.0.1', '2024-07-26 08:51:28.405884', '/myapp/admin/book/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (10622, '127.0.0.1', '2024-07-26 08:51:39.768414', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10623, '127.0.0.1', '2024-07-26 08:51:39.784406', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (10624, '127.0.0.1', '2024-07-26 08:51:42.309616', '/myapp/admin/book/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (10625, '127.0.0.1', '2024-07-26 08:51:42.405970', '/myapp/admin/book/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (10626, '127.0.0.1', '2024-07-26 08:51:52.418866', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10627, '127.0.0.1', '2024-07-26 08:51:52.419794', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10628, '127.0.0.1', '2024-07-26 08:51:54.600669', '/myapp/admin/book/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (10629, '127.0.0.1', '2024-07-26 08:51:54.680598', '/myapp/admin/book/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (10630, '127.0.0.1', '2024-07-26 08:52:05.527696', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10631, '127.0.0.1', '2024-07-26 08:52:05.527696', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10632, '127.0.0.1', '2024-07-26 08:52:08.066350', '/myapp/admin/book/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (10633, '127.0.0.1', '2024-07-26 08:52:08.148593', '/myapp/admin/book/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (10634, '127.0.0.1', '2024-07-26 08:52:31.923384', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10635, '127.0.0.1', '2024-07-26 08:52:31.926383', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (10636, '127.0.0.1', '2024-07-26 08:52:31.929383', '/myapp/index/book/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (10637, '127.0.0.1', '2024-07-26 08:52:31.951429', '/myapp/index/book/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (10638, '127.0.0.1', '2024-07-26 08:52:33.689143', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (10639, '127.0.0.1', '2024-07-26 08:52:33.701189', '/myapp/index/book/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (10640, '127.0.0.1', '2024-07-26 08:52:33.703260', '/myapp/index/book/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (10641, '127.0.0.1', '2024-07-26 08:52:33.747211', '/myapp/index/notice/list_api', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (10642, '127.0.0.1', '2024-07-26 09:00:26.481752', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (10643, '127.0.0.1', '2024-07-26 09:00:26.482752', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (10644, '127.0.0.1', '2024-07-26 09:00:26.499751', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (10645, '127.0.0.1', '2024-07-26 09:00:29.386136', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10646, '127.0.0.1', '2024-07-26 09:00:29.388558', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10647, '127.0.0.1', '2024-07-26 09:00:29.392006', '/myapp/index/book/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10648, '127.0.0.1', '2024-07-26 09:00:29.412962', '/myapp/index/book/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (10649, '127.0.0.1', '2024-07-26 09:00:30.328144', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10650, '127.0.0.1', '2024-07-26 09:00:30.340143', '/myapp/index/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10651, '127.0.0.1', '2024-07-26 09:00:30.341143', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10652, '127.0.0.1', '2024-07-26 09:00:30.374527', '/myapp/index/book/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (10653, '127.0.0.1', '2024-07-26 09:00:31.700269', '/myapp/index/book/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (10654, '127.0.0.1', '2024-07-26 09:00:31.758270', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10655, '127.0.0.1', '2024-07-26 09:00:31.779624', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (10656, '127.0.0.1', '2024-07-26 09:00:31.812024', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10657, '127.0.0.1', '2024-07-26 09:00:33.512296', '/myapp/index/book/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (10658, '127.0.0.1', '2024-07-26 09:00:33.562419', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (10659, '127.0.0.1', '2024-07-26 09:00:33.565421', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (10660, '127.0.0.1', '2024-07-26 09:00:33.654934', '/myapp/index/notice/list_api', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (10661, '127.0.0.1', '2024-07-26 09:00:37.043579', '/myapp/admin/book/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (10662, '127.0.0.1', '2024-07-26 09:00:39.732591', '/myapp/index/book/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (10663, '127.0.0.1', '2024-07-26 09:00:39.761590', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10664, '127.0.0.1', '2024-07-26 09:00:39.763590', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10665, '127.0.0.1', '2024-07-26 09:00:39.852824', '/myapp/index/notice/list_api', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (10666, '127.0.0.1', '2024-07-26 09:00:41.737983', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10667, '127.0.0.1', '2024-07-26 09:00:41.750968', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (10668, '127.0.0.1', '2024-07-26 09:00:41.752983', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (10669, '127.0.0.1', '2024-07-26 09:00:41.806694', '/myapp/index/notice/list_api', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (10670, '127.0.0.1', '2024-07-26 09:00:43.712135', '/myapp/index/book/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (10671, '127.0.0.1', '2024-07-26 09:00:43.758135', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10672, '127.0.0.1', '2024-07-26 09:00:43.766134', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (10673, '127.0.0.1', '2024-07-26 09:00:43.837142', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10674, '127.0.0.1', '2024-07-26 09:00:45.408511', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (10675, '127.0.0.1', '2024-07-26 09:00:45.429984', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10676, '127.0.0.1', '2024-07-26 09:00:45.434982', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (10677, '127.0.0.1', '2024-07-26 09:00:45.549935', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10678, '127.0.0.1', '2024-07-26 09:00:50.675571', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (10679, '127.0.0.1', '2024-07-26 09:00:50.683617', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (10680, '127.0.0.1', '2024-07-26 09:00:50.696342', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (10681, '127.0.0.1', '2024-07-26 09:00:50.748439', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10682, '127.0.0.1', '2024-07-26 09:00:52.576036', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (10683, '127.0.0.1', '2024-07-26 09:00:52.577414', '/myapp/index/book/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (10684, '127.0.0.1', '2024-07-26 09:00:52.598909', '/myapp/index/book/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (10685, '127.0.0.1', '2024-07-26 09:00:52.625908', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10686, '127.0.0.1', '2024-07-26 09:21:11.032682', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (10687, '127.0.0.1', '2024-07-26 09:21:11.056419', '/myapp/index/comment/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (10688, '127.0.0.1', '2024-07-26 09:21:11.102238', '/myapp/index/comment/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (10689, '127.0.0.1', '2024-07-26 09:21:11.198555', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (10690, '127.0.0.1', '2024-07-26 09:21:14.624382', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10691, '127.0.0.1', '2024-07-26 09:21:14.628005', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10692, '127.0.0.1', '2024-07-26 09:21:14.631005', '/myapp/index/book/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (10693, '127.0.0.1', '2024-07-26 09:21:14.673996', '/myapp/index/book/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (10694, '127.0.0.1', '2024-07-26 09:21:14.911181', '/upload/cover/7.jpg', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (10695, '127.0.0.1', '2024-07-26 09:21:14.912180', '/upload/cover/7.jpg', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (10696, '127.0.0.1', '2024-07-26 09:21:14.914180', '/upload/cover/7.jpg', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (10697, '127.0.0.1', '2024-07-26 09:21:14.917779', '/upload/cover/7.jpg', 'GET', NULL, '165');
INSERT INTO `b_op_log` VALUES (10698, '127.0.0.1', '2024-07-26 09:21:14.918156', '/upload/cover/7.jpg', 'GET', NULL, '172');
INSERT INTO `b_op_log` VALUES (10699, '127.0.0.1', '2024-07-26 09:21:15.454697', '/myapp/index/book/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (10700, '127.0.0.1', '2024-07-26 09:21:15.814033', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10701, '127.0.0.1', '2024-07-26 09:21:16.154973', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10702, '127.0.0.1', '2024-07-26 09:21:16.543052', '/myapp/index/book/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (10703, '127.0.0.1', '2024-07-26 09:21:16.929059', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (10704, '127.0.0.1', '2024-07-26 09:21:17.148072', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10705, '127.0.0.1', '2024-07-26 09:21:17.506099', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10706, '127.0.0.1', '2024-07-26 09:21:17.882225', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10707, '127.0.0.1', '2024-07-26 09:21:18.163583', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (10708, '127.0.0.1', '2024-07-26 09:21:18.415050', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10709, '127.0.0.1', '2024-07-26 09:21:18.965997', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10710, '127.0.0.1', '2024-07-26 09:21:19.412446', '/myapp/index/book/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (10711, '127.0.0.1', '2024-07-26 09:21:19.459982', '/upload/cover/7.jpg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (10712, '127.0.0.1', '2024-07-26 09:21:19.865395', '/myapp/index/book/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (10713, '127.0.0.1', '2024-07-26 09:21:19.943244', '/upload/cover/8.jpg', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (10714, '127.0.0.1', '2024-07-26 09:21:19.947039', '/upload/cover/8.jpg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (10715, '127.0.0.1', '2024-07-26 09:21:19.947039', '/upload/cover/8.jpg', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (10716, '127.0.0.1', '2024-07-26 09:21:19.948275', '/upload/cover/8.jpg', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (10717, '127.0.0.1', '2024-07-26 09:21:21.360444', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (10718, '127.0.0.1', '2024-07-26 09:21:21.373879', '/myapp/index/comment/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (10719, '127.0.0.1', '2024-07-26 09:21:21.394538', '/myapp/index/comment/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (10720, '127.0.0.1', '2024-07-26 09:21:21.429046', '/myapp/index/notice/list_api', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (10721, '127.0.0.1', '2024-07-26 09:21:21.433046', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (10722, '127.0.0.1', '2024-07-26 09:21:28.205077', '/myapp/admin/book/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (10723, '127.0.0.1', '2024-07-26 09:21:29.404626', '/upload/cover/11.jpg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (10724, '127.0.0.1', '2024-07-26 09:21:29.411152', '/upload/cover/11.jpg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (10725, '127.0.0.1', '2024-07-26 09:21:29.421443', '/upload/cover/11.jpg', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (10726, '127.0.0.1', '2024-07-26 09:21:47.019155', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10727, '127.0.0.1', '2024-07-26 09:21:52.234028', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10728, '127.0.0.1', '2024-07-26 09:22:00.522037', '/myapp/admin/tag/delete', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (10729, '127.0.0.1', '2024-07-26 09:22:00.570064', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10730, '127.0.0.1', '2024-07-26 09:22:02.372052', '/myapp/admin/tag/delete', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (10731, '127.0.0.1', '2024-07-26 09:22:02.434518', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10732, '127.0.0.1', '2024-07-26 09:22:04.017336', '/myapp/admin/tag/delete', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (10733, '127.0.0.1', '2024-07-26 09:22:04.066820', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (10734, '127.0.0.1', '2024-07-26 09:22:11.016911', '/myapp/admin/tag/update', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (10735, '127.0.0.1', '2024-07-26 09:22:11.056151', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10736, '127.0.0.1', '2024-07-26 09:22:16.150006', '/myapp/admin/tag/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (10737, '127.0.0.1', '2024-07-26 09:22:16.198719', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (10738, '127.0.0.1', '2024-07-26 09:22:24.459661', '/myapp/admin/tag/delete', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (10739, '127.0.0.1', '2024-07-26 09:22:24.495974', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10740, '127.0.0.1', '2024-07-26 09:22:27.877221', '/myapp/admin/tag/delete', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (10741, '127.0.0.1', '2024-07-26 09:22:27.925982', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10742, '127.0.0.1', '2024-07-26 09:22:29.904339', '/myapp/admin/tag/delete', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (10743, '127.0.0.1', '2024-07-26 09:22:29.935333', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10744, '127.0.0.1', '2024-07-26 09:22:38.006021', '/myapp/admin/tag/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (10745, '127.0.0.1', '2024-07-26 09:22:38.051125', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (10746, '127.0.0.1', '2024-07-26 09:22:43.694440', '/myapp/admin/tag/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (10747, '127.0.0.1', '2024-07-26 09:22:43.768534', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (10748, '127.0.0.1', '2024-07-26 09:22:45.424159', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10749, '127.0.0.1', '2024-07-26 09:22:46.105985', '/myapp/admin/book/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (10750, '127.0.0.1', '2024-07-26 09:22:48.164135', '/upload/cover/11.jpg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10751, '127.0.0.1', '2024-07-26 09:22:48.166642', '/upload/cover/11.jpg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (10752, '127.0.0.1', '2024-07-26 09:22:48.191228', '/upload/cover/11.jpg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (10753, '127.0.0.1', '2024-07-26 09:23:10.826822', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10754, '127.0.0.1', '2024-07-26 09:23:15.691375', '/myapp/admin/tag/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (10755, '127.0.0.1', '2024-07-26 09:23:15.740272', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10756, '127.0.0.1', '2024-07-26 09:23:17.204861', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (10757, '127.0.0.1', '2024-07-26 09:23:17.887152', '/myapp/admin/book/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (10758, '127.0.0.1', '2024-07-26 09:23:18.339401', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (10759, '127.0.0.1', '2024-07-26 09:23:20.562306', '/myapp/admin/book/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (10760, '127.0.0.1', '2024-07-26 09:23:22.489565', '/upload/cover/11.jpg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (10761, '127.0.0.1', '2024-07-26 09:23:22.493564', '/upload/cover/11.jpg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (10762, '127.0.0.1', '2024-07-26 09:23:22.514089', '/upload/cover/11.jpg', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (10763, '127.0.0.1', '2024-07-26 09:23:25.921171', '/myapp/admin/book/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (10764, '127.0.0.1', '2024-07-26 09:23:26.069103', '/myapp/admin/book/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (10765, '127.0.0.1', '2024-07-26 09:23:26.731434', '/upload/cover/10.jpg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (10766, '127.0.0.1', '2024-07-26 09:23:26.733433', '/upload/cover/10.jpg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (10767, '127.0.0.1', '2024-07-26 09:23:26.736958', '/upload/cover/10.jpg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (10768, '127.0.0.1', '2024-07-26 09:23:29.714632', '/myapp/admin/book/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (10769, '127.0.0.1', '2024-07-26 09:23:29.902203', '/myapp/admin/book/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (10770, '127.0.0.1', '2024-07-26 09:23:31.299856', '/upload/cover/9.jpg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10771, '127.0.0.1', '2024-07-26 09:23:31.307822', '/upload/cover/9.jpg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (10772, '127.0.0.1', '2024-07-26 09:23:31.316053', '/upload/cover/9.jpg', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (10773, '127.0.0.1', '2024-07-26 09:23:34.878879', '/myapp/admin/book/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (10774, '127.0.0.1', '2024-07-26 09:23:35.049654', '/myapp/admin/book/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (10775, '127.0.0.1', '2024-07-26 09:23:37.219248', '/upload/cover/8.jpg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (10776, '127.0.0.1', '2024-07-26 09:23:37.229142', '/upload/cover/8.jpg', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (10777, '127.0.0.1', '2024-07-26 09:23:37.234142', '/upload/cover/8.jpg', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (10778, '127.0.0.1', '2024-07-26 09:23:40.897995', '/myapp/admin/book/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (10779, '127.0.0.1', '2024-07-26 09:23:41.054751', '/myapp/admin/book/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (10780, '127.0.0.1', '2024-07-26 09:23:42.236120', '/upload/cover/7.jpg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (10781, '127.0.0.1', '2024-07-26 09:23:42.238981', '/upload/cover/7.jpg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (10782, '127.0.0.1', '2024-07-26 09:23:42.264365', '/upload/cover/7.jpg', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (10783, '127.0.0.1', '2024-07-26 09:23:48.403371', '/myapp/admin/book/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (10784, '127.0.0.1', '2024-07-26 09:23:48.558164', '/myapp/admin/book/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (10785, '127.0.0.1', '2024-07-26 09:23:50.542988', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10786, '127.0.0.1', '2024-07-26 09:23:50.547005', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (10787, '127.0.0.1', '2024-07-26 09:23:53.569367', '/myapp/admin/book/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (10788, '127.0.0.1', '2024-07-26 09:23:53.714610', '/myapp/admin/book/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (10789, '127.0.0.1', '2024-07-26 09:24:28.175935', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10790, '127.0.0.1', '2024-07-26 09:24:28.178965', '/myapp/index/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (10791, '127.0.0.1', '2024-07-26 09:24:28.181959', '/myapp/index/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (10792, '127.0.0.1', '2024-07-26 09:24:28.238012', '/myapp/index/tag/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (10793, '127.0.0.1', '2024-07-26 09:24:28.332572', '/upload/cover/9.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10794, '127.0.0.1', '2024-07-26 09:24:28.337532', '/upload/cover/7.jpg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10795, '127.0.0.1', '2024-07-26 09:24:28.352698', '/upload/cover/7.jpg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (10796, '127.0.0.1', '2024-07-26 09:24:28.353699', '/upload/cover/7.jpg', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (10797, '127.0.0.1', '2024-07-26 09:24:28.354696', '/upload/cover/7.jpg', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (10798, '127.0.0.1', '2024-07-26 09:24:28.730177', '/myapp/index/book/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (10799, '127.0.0.1', '2024-07-26 09:24:29.303073', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10800, '127.0.0.1', '2024-07-26 09:24:30.114448', '/myapp/index/book/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (10801, '127.0.0.1', '2024-07-26 09:24:30.428452', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10802, '127.0.0.1', '2024-07-26 09:24:30.809088', '/myapp/index/book/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (10803, '127.0.0.1', '2024-07-26 09:24:31.113724', '/myapp/index/book/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (10804, '127.0.0.1', '2024-07-26 09:24:31.142424', '/upload/cover/7.jpg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (10805, '127.0.0.1', '2024-07-26 09:24:31.438018', '/myapp/index/book/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (10806, '127.0.0.1', '2024-07-26 09:24:31.814410', '/myapp/index/book/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (10807, '127.0.0.1', '2024-07-26 09:24:31.881974', '/upload/cover/9.jpg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (10808, '127.0.0.1', '2024-07-26 09:24:32.473059', '/myapp/index/book/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (10809, '127.0.0.1', '2024-07-26 09:24:35.496817', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (10810, '127.0.0.1', '2024-07-26 09:24:35.538541', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (10811, '127.0.0.1', '2024-07-26 09:24:35.593172', '/myapp/index/comment/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (10812, '127.0.0.1', '2024-07-26 09:24:35.613592', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (10813, '127.0.0.1', '2024-07-26 09:27:14.162436', '/myapp/admin/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (10814, '127.0.0.1', '2024-07-26 09:27:14.739047', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (10815, '127.0.0.1', '2024-07-26 09:27:24.126958', '/myapp/admin/user/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (10816, '127.0.0.1', '2024-07-26 09:27:38.128380', '/myapp/admin/overview/count', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (10817, '127.0.0.1', '2024-07-26 09:27:38.416490', '/myapp/admin/borrow/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (10818, '127.0.0.1', '2024-07-26 09:27:51.645979', '/myapp/admin/borrow/return_book', 'POST', NULL, '688');
INSERT INTO `b_op_log` VALUES (10819, '127.0.0.1', '2024-07-26 09:27:51.654000', '/myapp/admin/borrow/return_book', 'POST', NULL, '695');
INSERT INTO `b_op_log` VALUES (10820, '127.0.0.1', '2024-07-26 09:28:02.521982', '/myapp/admin/book/list', 'GET', NULL, '142');
INSERT INTO `b_op_log` VALUES (10821, '127.0.0.1', '2024-07-26 09:28:07.204487', '/myapp/admin/overview/count', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (10822, '127.0.0.1', '2024-07-26 09:28:11.472345', '/myapp/admin/borrow/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (10823, '127.0.0.1', '2024-07-26 09:28:14.517132', '/myapp/admin/borrow/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (10824, '127.0.0.1', '2024-07-26 09:28:17.219325', '/myapp/admin/overview/count', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (10825, '127.0.0.1', '2024-07-26 14:31:13.335323', '/myapp/admin/borrow/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (10826, '127.0.0.1', '2024-07-26 14:31:17.494696', '/myapp/admin/overview/count', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (10827, '127.0.0.1', '2024-07-26 14:31:31.793455', '/myapp/admin/overview/count', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (10828, '127.0.0.1', '2024-07-26 15:19:47.978085', '/myapp/admin/overview/count', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (10829, '127.0.0.1', '2024-07-26 15:19:48.759824', '/myapp/admin/overview/count', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (10830, '127.0.0.1', '2024-07-26 15:19:52.588296', '/myapp/admin/overview/count', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (10831, '127.0.0.1', '2024-07-26 15:20:00.361997', '/myapp/admin/overview/count', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (10832, '127.0.0.1', '2024-07-26 15:20:00.388076', '/myapp/admin/overview/count', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (10833, '127.0.0.1', '2024-07-26 15:20:35.013002', '/myapp/admin/overview/count', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (10834, '127.0.0.1', '2024-07-26 15:20:42.685980', '/myapp/admin/overview/count', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (10835, '127.0.0.1', '2024-07-26 15:20:44.846393', '/myapp/admin/overview/count', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (10836, '127.0.0.1', '2024-07-26 15:20:50.859113', '/myapp/admin/overview/count', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (10837, '127.0.0.1', '2024-07-26 15:21:01.259881', '/myapp/index/book/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (10838, '127.0.0.1', '2024-07-26 15:21:01.270087', '/myapp/index/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (10839, '127.0.0.1', '2024-07-26 15:21:01.282914', '/myapp/index/book/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (10840, '127.0.0.1', '2024-07-26 15:21:01.329875', '/myapp/index/book/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (10841, '127.0.0.1', '2024-07-26 15:21:01.433506', '/upload/cover/8.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10842, '127.0.0.1', '2024-07-26 15:21:01.456654', '/upload/cover/6.jpg', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (10843, '127.0.0.1', '2024-07-26 15:21:01.484781', '/upload/cover/4.jpg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10844, '127.0.0.1', '2024-07-26 15:21:01.484781', '/upload/cover/4.jpg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10845, '127.0.0.1', '2024-07-26 15:21:01.512206', '/upload/cover/2.jpg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10846, '127.0.0.1', '2024-07-26 15:21:01.512206', '/upload/cover/2.jpg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10847, '127.0.0.1', '2024-07-26 15:21:01.523697', '/upload/cover/1.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10848, '127.0.0.1', '2024-07-26 15:21:01.641823', '/upload/cover/1.jpg', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (10849, '127.0.0.1', '2024-07-26 15:21:01.642866', '/upload/cover/1.jpg', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (10850, '127.0.0.1', '2024-07-26 15:21:01.643867', '/upload/cover/1.jpg', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (10851, '127.0.0.1', '2024-07-26 15:21:01.643867', '/upload/cover/1.jpg', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (10852, '127.0.0.1', '2024-07-26 15:21:02.326703', '/myapp/admin/borrow/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (10853, '127.0.0.1', '2024-07-26 15:21:04.812067', '/myapp/admin/overview/count', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (10854, '127.0.0.1', '2024-07-26 15:25:17.860489', '/myapp/admin/overview/count', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (10855, '127.0.0.1', '2024-07-26 15:25:26.633820', '/myapp/admin/overview/count', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (10856, '127.0.0.1', '2024-07-26 15:25:29.278897', '/myapp/admin/overview/count', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (10857, '127.0.0.1', '2024-07-26 15:25:31.062861', '/myapp/admin/overview/count', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10858, '127.0.0.1', '2024-07-26 15:25:32.320859', '/myapp/admin/overview/count', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (10859, '127.0.0.1', '2024-07-26 15:25:46.683759', '/myapp/admin/overview/count', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (10860, '127.0.0.1', '2024-07-27 00:54:16.799783', '/myapp/index/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (10861, '127.0.0.1', '2024-07-27 00:54:16.811656', '/myapp/index/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (10862, '127.0.0.1', '2024-07-27 00:54:16.805390', '/myapp/index/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (10863, '127.0.0.1', '2024-07-27 00:54:16.869235', '/myapp/index/tag/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (10864, '127.0.0.1', '2024-07-27 00:54:16.964578', '/upload/cover/6.jpg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (10865, '127.0.0.1', '2024-07-27 00:54:16.967586', '/upload/cover/6.jpg', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (10866, '127.0.0.1', '2024-07-27 00:54:16.995672', '/upload/cover/3.jpg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10867, '127.0.0.1', '2024-07-27 00:54:17.018521', '/upload/cover/4.jpg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (10868, '127.0.0.1', '2024-07-27 00:54:17.020543', '/upload/cover/4.jpg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10869, '127.0.0.1', '2024-07-27 00:54:17.035554', '/upload/cover/1.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10870, '127.0.0.1', '2024-07-27 00:54:17.065279', '/upload/cover/1.jpg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10871, '127.0.0.1', '2024-07-27 00:54:17.167547', '/upload/cover/1.jpg', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (10872, '127.0.0.1', '2024-07-27 00:54:17.167547', '/upload/cover/1.jpg', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (10873, '127.0.0.1', '2024-07-27 00:54:17.168547', '/upload/cover/1.jpg', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (10874, '127.0.0.1', '2024-07-27 00:54:17.172153', '/upload/cover/1.jpg', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (10875, '127.0.0.1', '2024-07-27 01:09:06.911840', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10876, '127.0.0.1', '2024-07-27 01:09:06.919839', '/myapp/index/book/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (10877, '127.0.0.1', '2024-07-27 01:09:06.924840', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (10878, '127.0.0.1', '2024-07-27 01:09:06.970840', '/myapp/index/book/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (10879, '127.0.0.1', '2024-07-27 01:09:07.135407', '/upload/cover/8.jpg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (10880, '127.0.0.1', '2024-07-27 01:09:07.137409', '/upload/cover/7.jpg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10881, '127.0.0.1', '2024-07-27 01:09:07.138407', '/upload/cover/6.jpg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (10882, '127.0.0.1', '2024-07-27 01:09:07.139407', '/upload/cover/6.jpg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (10883, '127.0.0.1', '2024-07-27 01:09:07.141408', '/upload/cover/6.jpg', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (10884, '127.0.0.1', '2024-07-27 01:09:07.142408', '/upload/cover/6.jpg', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (10885, '127.0.0.1', '2024-07-27 01:09:07.171448', '/upload/cover/5.jpg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (10886, '127.0.0.1', '2024-07-27 01:09:07.172447', '/upload/cover/2.jpg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10887, '127.0.0.1', '2024-07-27 01:09:07.173447', '/upload/cover/2.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10888, '127.0.0.1', '2024-07-27 01:09:07.173447', '/upload/cover/2.jpg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10889, '127.0.0.1', '2024-07-27 01:09:07.173447', '/upload/cover/2.jpg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10890, '127.0.0.1', '2024-07-27 01:09:11.967690', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (10891, '127.0.0.1', '2024-07-27 01:09:12.008694', '/myapp/index/comment/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (10892, '127.0.0.1', '2024-07-27 01:09:12.058685', '/myapp/index/comment/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (10893, '127.0.0.1', '2024-07-27 01:09:12.085578', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (10894, '127.0.0.1', '2024-07-27 01:09:12.086572', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10895, '127.0.0.1', '2024-07-27 01:10:26.025872', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10896, '127.0.0.1', '2024-07-27 01:10:26.027872', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10897, '127.0.0.1', '2024-07-27 01:10:26.034332', '/myapp/index/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (10898, '127.0.0.1', '2024-07-27 01:10:26.060332', '/myapp/index/tag/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (10899, '127.0.0.1', '2024-07-27 01:10:26.116903', '/upload/cover/7.jpg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (10900, '127.0.0.1', '2024-07-27 01:10:26.119902', '/upload/cover/7.jpg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10901, '127.0.0.1', '2024-07-27 01:10:26.120902', '/upload/cover/7.jpg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10902, '127.0.0.1', '2024-07-27 01:10:26.121902', '/upload/cover/7.jpg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (10903, '127.0.0.1', '2024-07-27 09:39:58.038152', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10904, '127.0.0.1', '2024-07-27 09:39:58.040153', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (10905, '127.0.0.1', '2024-07-27 09:39:58.042152', '/myapp/index/book/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (10906, '127.0.0.1', '2024-07-27 09:39:58.064221', '/myapp/index/book/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (10907, '127.0.0.1', '2024-07-27 09:39:58.114221', '/upload/cover/10.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10908, '127.0.0.1', '2024-07-27 09:39:58.115221', '/upload/cover/10.jpg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10909, '127.0.0.1', '2024-07-27 09:39:58.115221', '/upload/cover/10.jpg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10910, '127.0.0.1', '2024-07-27 09:39:58.116221', '/upload/cover/7.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10911, '127.0.0.1', '2024-07-27 09:39:58.116221', '/upload/cover/6.jpg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (10912, '127.0.0.1', '2024-07-27 09:39:58.116221', '/upload/cover/6.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10913, '127.0.0.1', '2024-07-27 09:39:58.132563', '/upload/cover/5.jpg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (10914, '127.0.0.1', '2024-07-27 09:39:58.133563', '/upload/cover/3.jpg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (10915, '127.0.0.1', '2024-07-27 09:39:58.133563', '/upload/cover/3.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10916, '127.0.0.1', '2024-07-27 09:39:58.162074', '/upload/cover/1.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10917, '127.0.0.1', '2024-07-27 09:39:58.162074', '/upload/cover/1.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10918, '127.0.0.1', '2024-07-27 10:37:21.252559', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (10919, '127.0.0.1', '2024-07-27 10:37:21.281567', '/myapp/index/comment/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (10920, '127.0.0.1', '2024-07-27 10:37:21.302562', '/myapp/index/comment/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (10921, '127.0.0.1', '2024-07-27 10:37:21.372247', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10922, '127.0.0.1', '2024-07-27 10:37:34.187061', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (10923, '127.0.0.1', '2024-07-27 10:37:34.193062', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (10924, '127.0.0.1', '2024-07-27 10:37:34.199061', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (10925, '127.0.0.1', '2024-07-27 10:37:34.205072', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (10926, '127.0.0.1', '2024-07-27 10:37:43.021057', '/myapp/admin/overview/count', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (10927, '127.0.0.1', '2024-07-27 10:37:45.932033', '/myapp/admin/borrow/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (10928, '127.0.0.1', '2024-07-27 10:37:52.729437', '/myapp/admin/book/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (10929, '127.0.0.1', '2024-07-27 10:37:58.781185', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10930, '127.0.0.1', '2024-07-27 13:30:47.960881', '/myapp/index/book/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (10931, '127.0.0.1', '2024-07-27 13:30:47.962928', '/myapp/index/book/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (10932, '127.0.0.1', '2024-07-27 13:30:47.964569', '/myapp/index/book/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (10933, '127.0.0.1', '2024-07-27 13:30:47.989256', '/myapp/index/book/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (10934, '127.0.0.1', '2024-07-27 13:30:48.104094', '/upload/cover/11.jpg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (10935, '127.0.0.1', '2024-07-27 13:30:48.106177', '/upload/cover/9.jpg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (10936, '127.0.0.1', '2024-07-27 13:30:48.107181', '/upload/cover/8.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10937, '127.0.0.1', '2024-07-27 13:30:48.107181', '/upload/cover/6.jpg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (10938, '127.0.0.1', '2024-07-27 13:30:48.107181', '/upload/cover/7.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10939, '127.0.0.1', '2024-07-27 13:30:48.108181', '/upload/cover/6.jpg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (10940, '127.0.0.1', '2024-07-27 13:30:48.112601', '/upload/cover/5.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10941, '127.0.0.1', '2024-07-27 13:30:48.122922', '/upload/cover/4.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10942, '127.0.0.1', '2024-07-27 13:30:48.123972', '/upload/cover/3.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10943, '127.0.0.1', '2024-07-27 13:30:48.136091', '/upload/cover/1.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10944, '127.0.0.1', '2024-07-27 13:30:48.136091', '/upload/cover/1.jpg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (10945, '127.0.0.1', '2024-07-27 13:55:00.439839', '/myapp/admin/overview/count', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (10946, '127.0.0.1', '2024-07-27 13:55:03.083401', '/myapp/admin/borrow/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (10947, '127.0.0.1', '2024-07-27 20:50:07.089576', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10948, '127.0.0.1', '2024-07-27 20:50:07.091575', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10949, '127.0.0.1', '2024-07-27 20:50:07.109584', '/myapp/index/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (10950, '127.0.0.1', '2024-07-27 20:50:07.116575', '/myapp/index/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (10951, '127.0.0.1', '2024-07-27 20:50:07.173578', '/upload/cover/8.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10952, '127.0.0.1', '2024-07-27 20:50:07.174578', '/upload/cover/11.jpg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (10953, '127.0.0.1', '2024-07-27 20:50:07.174578', '/upload/cover/6.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10954, '127.0.0.1', '2024-07-27 20:50:07.175578', '/upload/cover/7.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10955, '127.0.0.1', '2024-07-27 20:50:07.175578', '/upload/cover/8.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10956, '127.0.0.1', '2024-07-27 20:50:07.175578', '/upload/cover/7.jpg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (10957, '127.0.0.1', '2024-07-27 20:50:07.193578', '/upload/cover/4.jpg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (10958, '127.0.0.1', '2024-07-27 20:50:07.194578', '/upload/cover/5.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10959, '127.0.0.1', '2024-07-27 20:50:07.197578', '/upload/cover/3.jpg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (10960, '127.0.0.1', '2024-07-27 20:50:07.215588', '/upload/cover/2.jpg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (10961, '127.0.0.1', '2024-07-27 20:50:07.216579', '/upload/cover/1.jpg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10962, '127.0.0.1', '2024-07-27 22:29:15.792829', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (10963, '127.0.0.1', '2024-07-27 22:29:15.807064', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (10964, '127.0.0.1', '2024-07-27 22:29:15.826518', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (10965, '127.0.0.1', '2024-07-27 22:29:15.900342', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10966, '127.0.0.1', '2024-07-27 22:29:26.904443', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (10967, '127.0.0.1', '2024-07-27 22:29:26.918442', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (10968, '127.0.0.1', '2024-07-27 22:29:26.973704', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10969, '127.0.0.1', '2024-07-27 22:29:26.976707', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (10970, '127.0.0.1', '2024-07-27 22:30:52.956444', '/myapp/index/book/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (10971, '127.0.0.1', '2024-07-27 22:30:52.992443', '/myapp/index/book/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (10972, '127.0.0.1', '2024-07-27 22:30:52.995443', '/myapp/index/book/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (10973, '127.0.0.1', '2024-07-27 22:30:53.107445', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (10974, '127.0.0.1', '2024-07-27 22:30:55.556745', '/myapp/index/book/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (10975, '127.0.0.1', '2024-07-27 22:30:55.573718', '/myapp/index/book/detail', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (10976, '127.0.0.1', '2024-07-27 22:30:55.593211', '/myapp/index/book/detail', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (10977, '127.0.0.1', '2024-07-27 22:30:55.662328', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10978, '127.0.0.1', '2024-07-27 22:35:22.126027', '/myapp/admin/overview/count', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (10979, '127.0.0.1', '2024-07-27 22:35:24.328405', '/myapp/admin/book/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (10980, '127.0.0.1', '2024-07-27 22:37:03.758032', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10981, '127.0.0.1', '2024-07-27 22:37:03.762031', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10982, '127.0.0.1', '2024-07-27 22:37:38.068894', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (10983, '127.0.0.1', '2024-07-27 22:37:38.083894', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (10984, '127.0.0.1', '2024-07-29 10:10:07.781849', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10985, '127.0.0.1', '2024-07-29 10:10:07.784856', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10986, '127.0.0.1', '2024-07-29 10:10:07.786859', '/myapp/index/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (10987, '127.0.0.1', '2024-07-29 10:10:07.808799', '/myapp/index/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (10988, '127.0.0.1', '2024-07-29 10:10:07.941487', '/upload/cover/6.jpg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (10989, '127.0.0.1', '2024-07-29 10:10:07.942487', '/upload/cover/6.jpg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (10990, '127.0.0.1', '2024-07-29 10:10:07.942487', '/upload/cover/6.jpg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (10991, '127.0.0.1', '2024-07-29 10:10:07.943487', '/upload/cover/6.jpg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (10992, '127.0.0.1', '2024-07-29 10:10:07.943487', '/upload/cover/6.jpg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (10993, '127.0.0.1', '2024-07-29 10:10:07.943487', '/upload/cover/6.jpg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (10994, '127.0.0.1', '2024-07-29 10:10:07.969871', '/upload/cover/4.jpg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (10995, '127.0.0.1', '2024-07-29 10:10:07.978388', '/upload/cover/4.jpg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10996, '127.0.0.1', '2024-07-29 10:10:07.979712', '/upload/cover/4.jpg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10997, '127.0.0.1', '2024-07-29 10:10:07.997689', '/upload/cover/1.jpg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10998, '127.0.0.1', '2024-07-29 10:10:08.009123', '/upload/cover/1.jpg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10999, '127.0.0.1', '2024-07-29 10:10:18.244450', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (11000, '127.0.0.1', '2024-07-29 10:10:18.264389', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (11001, '127.0.0.1', '2024-07-29 10:10:18.272482', '/myapp/index/book/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (11002, '127.0.0.1', '2024-07-29 10:10:18.330372', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (11003, '127.0.0.1', '2024-07-29 10:10:49.829989', '/myapp/admin/overview/count', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (11004, '127.0.0.1', '2024-07-29 10:13:53.220937', '/myapp/admin/overview/count', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (11005, '127.0.0.1', '2024-07-29 10:13:58.878639', '/myapp/admin/overview/count', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (11006, '127.0.0.1', '2024-07-29 10:15:53.795366', '/myapp/admin/overview/count', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (11007, '127.0.0.1', '2024-07-29 10:15:56.817648', '/myapp/admin/overview/count', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (11008, '127.0.0.1', '2024-07-29 10:17:16.150753', '/myapp/index/book/getCollectBookList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (11009, '127.0.0.1', '2024-07-29 10:17:16.163752', '/myapp/index/book/getWishBookList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (11010, '127.0.0.1', '2024-07-29 10:17:16.169761', '/myapp/index/book/getWishBookList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (11011, '127.0.0.1', '2024-07-29 10:17:16.173753', '/myapp/index/book/getWishBookList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (11012, '127.0.0.1', '2024-07-29 10:17:17.257687', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (11013, '127.0.0.1', '2024-07-29 10:17:17.261688', '/myapp/index/book/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (11014, '127.0.0.1', '2024-07-29 10:17:17.264679', '/myapp/index/book/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (11015, '127.0.0.1', '2024-07-29 10:17:17.307679', '/myapp/index/book/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (11016, '127.0.0.1', '2024-07-29 10:17:18.674512', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (11017, '127.0.0.1', '2024-07-29 10:17:18.677544', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (11018, '127.0.0.1', '2024-07-29 10:17:18.717528', '/myapp/index/comment/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (11019, '127.0.0.1', '2024-07-29 10:17:18.736048', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (11020, '127.0.0.1', '2024-07-29 10:17:20.996627', '/myapp/index/borrow/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (11021, '127.0.0.1', '2024-07-29 10:17:21.041934', '/myapp/index/book/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (11022, '127.0.0.1', '2024-07-29 10:17:23.791925', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (11023, '127.0.0.1', '2024-07-29 10:17:23.798933', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (11024, '127.0.0.1', '2024-07-29 10:17:23.807926', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (11025, '127.0.0.1', '2024-07-29 10:17:23.812110', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (11026, '127.0.0.1', '2024-07-29 10:17:25.912907', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (11027, '127.0.0.1', '2024-07-29 10:17:25.924439', '/myapp/index/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (11028, '127.0.0.1', '2024-07-29 10:17:25.940634', '/myapp/index/classification/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (11029, '127.0.0.1', '2024-07-29 10:17:25.975725', '/myapp/index/classification/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (11030, '127.0.0.1', '2024-07-29 10:17:41.288060', '/myapp/index/user/login', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (11031, '127.0.0.1', '2024-07-29 10:17:41.361089', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (11032, '127.0.0.1', '2024-07-29 10:17:41.368515', '/myapp/index/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (11033, '127.0.0.1', '2024-07-29 10:17:41.373589', '/myapp/index/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (11034, '127.0.0.1', '2024-07-29 10:17:41.414582', '/myapp/index/classification/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (11035, '127.0.0.1', '2024-07-29 10:17:47.965909', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (11036, '127.0.0.1', '2024-07-29 10:17:47.974917', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (11037, '127.0.0.1', '2024-07-29 10:17:47.994909', '/myapp/index/comment/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (11038, '127.0.0.1', '2024-07-29 10:17:48.063909', '/myapp/index/notice/list_api', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (11039, '127.0.0.1', '2024-07-29 10:17:50.668437', '/myapp/index/borrow/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (11040, '127.0.0.1', '2024-07-29 10:17:50.718259', '/myapp/index/book/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (11041, '127.0.0.1', '2024-07-29 10:17:56.151869', '/myapp/admin/overview/count', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (11042, '127.0.0.1', '2024-07-29 10:19:01.205791', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (11043, '127.0.0.1', '2024-07-29 10:19:01.219791', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (11044, '127.0.0.1', '2024-07-29 10:19:01.256791', '/myapp/index/comment/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (11045, '127.0.0.1', '2024-07-29 10:19:01.340791', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (11046, '127.0.0.1', '2024-07-29 10:19:05.404821', '/myapp/index/book/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (11047, '127.0.0.1', '2024-07-29 10:19:05.408324', '/myapp/index/book/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (11048, '127.0.0.1', '2024-07-29 10:19:05.415428', '/myapp/index/book/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (11049, '127.0.0.1', '2024-07-29 10:19:05.466358', '/myapp/index/book/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (11050, '127.0.0.1', '2024-07-29 10:24:32.080063', '/myapp/admin/overview/count', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (11051, '127.0.0.1', '2024-07-29 10:24:35.128953', '/myapp/admin/overview/count', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (11052, '127.0.0.1', '2024-07-29 10:24:40.035234', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (11053, '127.0.0.1', '2024-07-29 10:24:40.038232', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (11054, '127.0.0.1', '2024-07-29 10:24:40.065896', '/myapp/index/comment/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (11055, '127.0.0.1', '2024-07-29 10:24:40.131321', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (11056, '127.0.0.1', '2024-07-29 10:24:42.106625', '/myapp/index/borrow/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (11057, '127.0.0.1', '2024-07-29 10:24:42.155519', '/myapp/index/book/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (11058, '127.0.0.1', '2024-07-29 10:24:44.265625', '/myapp/admin/overview/count', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (11059, '127.0.0.1', '2024-07-29 10:25:01.086389', '/myapp/index/book/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (11060, '127.0.0.1', '2024-07-29 10:25:02.265423', '/myapp/index/book/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (11061, '127.0.0.1', '2024-07-29 10:25:02.936135', '/myapp/index/book/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (11062, '127.0.0.1', '2024-07-29 10:25:03.405918', '/myapp/index/book/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (11063, '127.0.0.1', '2024-07-29 10:25:07.241335', '/myapp/index/book/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (11064, '127.0.0.1', '2024-07-29 10:25:07.765432', '/myapp/index/book/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (11065, '127.0.0.1', '2024-07-29 10:25:09.040055', '/myapp/index/book/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (11066, '127.0.0.1', '2024-07-29 10:25:09.432123', '/myapp/index/book/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (11067, '127.0.0.1', '2024-07-29 10:25:10.653537', '/myapp/index/book/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (11068, '127.0.0.1', '2024-07-29 10:25:12.365687', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (11069, '127.0.0.1', '2024-07-29 10:25:12.369687', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (11070, '127.0.0.1', '2024-07-29 10:25:12.376583', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (11071, '127.0.0.1', '2024-07-29 10:25:12.441609', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (11072, '127.0.0.1', '2024-07-29 10:25:17.417039', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (11073, '127.0.0.1', '2024-07-29 10:25:17.436585', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (11074, '127.0.0.1', '2024-07-29 10:25:17.454556', '/myapp/index/comment/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (11075, '127.0.0.1', '2024-07-29 10:25:17.551077', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (11076, '127.0.0.1', '2024-07-29 10:25:19.315176', '/myapp/index/borrow/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (11077, '127.0.0.1', '2024-07-29 10:25:19.370462', '/myapp/index/book/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (11078, '127.0.0.1', '2024-07-29 10:25:21.889494', '/myapp/admin/overview/count', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (11079, '127.0.0.1', '2024-07-29 10:34:38.858815', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (11080, '127.0.0.1', '2024-07-29 10:34:38.859816', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (11081, '127.0.0.1', '2024-07-29 10:34:38.900225', '/myapp/index/book/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (11082, '127.0.0.1', '2024-07-29 10:34:43.253079', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (11083, '127.0.0.1', '2024-07-29 10:34:43.254215', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (11084, '127.0.0.1', '2024-07-29 10:34:43.255212', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (11085, '127.0.0.1', '2024-07-29 10:34:43.276546', '/myapp/index/book/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (11086, '127.0.0.1', '2024-07-29 10:34:44.385995', '/myapp/index/book/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (11087, '127.0.0.1', '2024-07-29 10:34:45.816416', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (11088, '127.0.0.1', '2024-07-29 10:34:45.818671', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (11089, '127.0.0.1', '2024-07-29 10:34:45.835233', '/myapp/index/book/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (11090, '127.0.0.1', '2024-07-29 10:34:45.859788', '/myapp/index/book/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (11091, '127.0.0.1', '2024-07-29 10:34:50.332391', '/myapp/index/book/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (11092, '127.0.0.1', '2024-07-29 10:34:52.710342', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (11093, '127.0.0.1', '2024-07-29 10:34:52.715227', '/myapp/index/book/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (11094, '127.0.0.1', '2024-07-29 10:34:52.719226', '/myapp/index/book/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (11095, '127.0.0.1', '2024-07-29 10:34:52.780523', '/myapp/index/book/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (11096, '127.0.0.1', '2024-07-29 10:34:54.185420', '/myapp/index/book/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (11097, '127.0.0.1', '2024-07-29 10:34:54.833808', '/myapp/index/book/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (11098, '127.0.0.1', '2024-07-29 10:34:55.386020', '/myapp/index/book/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (11099, '127.0.0.1', '2024-07-29 10:34:55.806397', '/myapp/index/book/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (11100, '127.0.0.1', '2024-07-29 10:34:56.320328', '/myapp/index/book/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (11101, '127.0.0.1', '2024-07-29 10:34:57.198876', '/myapp/index/book/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (11102, '127.0.0.1', '2024-07-29 10:34:58.183740', '/myapp/index/book/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (11103, '127.0.0.1', '2024-07-29 10:34:58.380009', '/myapp/index/book/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (11104, '127.0.0.1', '2024-07-29 10:34:58.582224', '/myapp/index/book/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (11105, '127.0.0.1', '2024-07-29 10:34:58.757585', '/myapp/index/book/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (11106, '127.0.0.1', '2024-07-29 10:34:58.989117', '/myapp/index/book/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (11107, '127.0.0.1', '2024-07-29 10:44:38.223297', '/myapp/index/book/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (11108, '127.0.0.1', '2024-07-29 10:44:40.281131', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (11109, '127.0.0.1', '2024-07-29 10:44:40.284275', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (11110, '127.0.0.1', '2024-07-29 10:44:40.307149', '/myapp/index/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (11111, '127.0.0.1', '2024-07-29 10:44:40.390341', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (11112, '127.0.0.1', '2024-07-29 10:44:44.684507', '/myapp/index/book/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (11113, '127.0.0.1', '2024-07-29 10:44:51.175101', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (11114, '127.0.0.1', '2024-07-29 10:44:51.209252', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (11115, '127.0.0.1', '2024-07-29 10:44:51.215332', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (11116, '127.0.0.1', '2024-07-29 10:44:51.217338', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (11117, '127.0.0.1', '2024-07-29 10:44:51.242322', '/upload/avatar/1721799050444.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (11118, '127.0.0.1', '2024-07-29 10:44:54.641980', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (11119, '127.0.0.1', '2024-07-29 10:44:54.639459', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (11120, '127.0.0.1', '2024-07-29 10:44:54.644915', '/myapp/index/book/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (11121, '127.0.0.1', '2024-07-29 10:44:54.671315', '/myapp/index/book/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (11122, '127.0.0.1', '2024-07-29 10:44:55.843134', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (11123, '127.0.0.1', '2024-07-29 10:44:55.872300', '/myapp/index/comment/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (11124, '127.0.0.1', '2024-07-29 10:44:55.908269', '/myapp/index/comment/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (11125, '127.0.0.1', '2024-07-29 10:44:55.933422', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (11126, '127.0.0.1', '2024-07-29 10:45:03.003415', '/myapp/index/book/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (11127, '127.0.0.1', '2024-07-29 10:45:03.040151', '/myapp/index/book/detail', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (11128, '127.0.0.1', '2024-07-29 10:45:03.065301', '/myapp/index/book/detail', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (11129, '127.0.0.1', '2024-07-29 10:45:03.151322', '/myapp/index/notice/list_api', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (11130, '127.0.0.1', '2024-07-29 10:45:07.487360', '/myapp/index/borrow/create', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (11131, '127.0.0.1', '2024-07-29 10:45:07.529257', '/myapp/index/book/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (11132, '127.0.0.1', '2024-07-29 10:45:09.556246', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (11133, '127.0.0.1', '2024-07-29 10:45:09.568728', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (11134, '127.0.0.1', '2024-07-29 10:45:09.627503', '/myapp/index/notice/list_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (11135, '127.0.0.1', '2024-07-29 10:45:09.646272', '/myapp/index/notice/list_api', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (11136, '127.0.0.1', '2024-07-29 10:45:12.375307', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (11137, '127.0.0.1', '2024-07-29 10:45:12.383999', '/myapp/index/book/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (11138, '127.0.0.1', '2024-07-29 10:45:12.440249', '/myapp/index/book/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (11139, '127.0.0.1', '2024-07-29 10:45:12.491296', '/myapp/index/notice/list_api', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (11140, '127.0.0.1', '2024-07-29 10:45:13.846347', '/myapp/index/borrow/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (11141, '127.0.0.1', '2024-07-29 10:45:18.091969', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (11142, '127.0.0.1', '2024-07-29 10:45:18.096356', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (11143, '127.0.0.1', '2024-07-29 10:45:18.132152', '/myapp/index/comment/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (11144, '127.0.0.1', '2024-07-29 10:45:18.179197', '/myapp/index/notice/list_api', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (11145, '127.0.0.1', '2024-07-29 10:45:20.574521', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (11146, '127.0.0.1', '2024-07-29 10:45:20.580364', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (11147, '127.0.0.1', '2024-07-29 10:45:20.612093', '/myapp/index/comment/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (11148, '127.0.0.1', '2024-07-29 10:45:20.692234', '/myapp/index/notice/list_api', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (11149, '127.0.0.1', '2024-07-29 10:45:22.749826', '/myapp/index/borrow/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (11150, '127.0.0.1', '2024-07-29 10:45:27.609214', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (11151, '127.0.0.1', '2024-07-29 10:45:27.630147', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (11152, '127.0.0.1', '2024-07-29 10:45:27.634369', '/myapp/index/book/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (11153, '127.0.0.1', '2024-07-29 10:45:27.696544', '/myapp/index/book/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (11154, '127.0.0.1', '2024-07-29 10:45:36.319612', '/myapp/admin/overview/count', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (11155, '127.0.0.1', '2024-07-29 10:45:42.707230', '/myapp/admin/borrow/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (11156, '127.0.0.1', '2024-07-29 10:45:52.862149', '/myapp/admin/borrow/return_book', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (11157, '127.0.0.1', '2024-07-29 10:45:52.942301', '/myapp/admin/borrow/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (11158, '127.0.0.1', '2024-07-29 10:46:01.014505', '/myapp/admin/borrow/return_book', 'POST', NULL, '1078');
INSERT INTO `b_op_log` VALUES (11159, '127.0.0.1', '2024-07-29 10:46:01.023082', '/myapp/admin/borrow/return_book', 'POST', NULL, '1088');
INSERT INTO `b_op_log` VALUES (11160, '127.0.0.1', '2024-07-29 10:47:50.689300', '/myapp/admin/borrow/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (11161, '127.0.0.1', '2024-07-29 10:48:02.702078', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (11162, '127.0.0.1', '2024-07-29 10:48:02.705177', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (11163, '127.0.0.1', '2024-07-29 10:48:02.710426', '/myapp/index/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (11164, '127.0.0.1', '2024-07-29 10:48:02.744116', '/myapp/index/classification/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (11165, '127.0.0.1', '2024-07-29 10:48:05.385832', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (11166, '127.0.0.1', '2024-07-29 10:48:05.388833', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (11167, '127.0.0.1', '2024-07-29 10:48:05.391383', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (11168, '127.0.0.1', '2024-07-29 10:48:05.458059', '/myapp/index/classification/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (11169, '127.0.0.1', '2024-07-29 10:48:07.241293', '/myapp/index/book/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (11170, '127.0.0.1', '2024-07-29 10:48:08.334605', '/myapp/index/book/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (11171, '127.0.0.1', '2024-07-29 10:48:09.208093', '/myapp/index/book/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (11172, '127.0.0.1', '2024-07-29 10:48:30.405157', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (11173, '127.0.0.1', '2024-07-29 10:48:30.407588', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (11174, '127.0.0.1', '2024-07-29 10:48:30.422718', '/myapp/index/book/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (11175, '127.0.0.1', '2024-07-29 10:54:46.992562', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (11176, '127.0.0.1', '2024-07-29 10:54:46.994087', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (11177, '127.0.0.1', '2024-07-29 10:54:47.034287', '/myapp/index/book/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (11178, '127.0.0.1', '2024-07-29 10:54:51.464210', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (11179, '127.0.0.1', '2024-07-29 10:54:51.465199', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (11180, '127.0.0.1', '2024-07-29 10:54:51.482695', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (11181, '127.0.0.1', '2024-07-29 10:54:54.732904', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (11182, '127.0.0.1', '2024-07-29 10:54:54.733919', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (11183, '127.0.0.1', '2024-07-29 10:54:54.751804', '/myapp/index/book/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (11184, '127.0.0.1', '2024-07-29 10:54:58.132606', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (11185, '127.0.0.1', '2024-07-29 10:54:58.140663', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (11186, '127.0.0.1', '2024-07-29 10:54:58.142771', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (11187, '127.0.0.1', '2024-07-29 10:54:58.169120', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (11188, '127.0.0.1', '2024-07-29 10:54:58.832051', '/myapp/index/book/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (11189, '127.0.0.1', '2024-07-29 10:54:59.361893', '/myapp/index/book/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (11190, '127.0.0.1', '2024-07-29 10:54:59.825758', '/myapp/index/book/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (11191, '127.0.0.1', '2024-07-29 11:09:50.787838', '/myapp/index/book/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (11192, '127.0.0.1', '2024-07-29 11:11:12.411120', '/myapp/index/book/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (11193, '127.0.0.1', '2024-07-29 11:11:13.217650', '/myapp/index/book/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (11194, '127.0.0.1', '2024-07-29 11:11:17.205659', '/myapp/index/book/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (11195, '127.0.0.1', '2024-07-29 11:12:00.767052', '/myapp/index/book/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (11196, '127.0.0.1', '2024-07-29 11:12:34.606824', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (11197, '127.0.0.1', '2024-07-29 11:12:34.609824', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (11198, '127.0.0.1', '2024-07-29 11:12:34.640243', '/myapp/index/book/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (11199, '127.0.0.1', '2024-07-29 11:12:36.520838', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (11200, '127.0.0.1', '2024-07-29 11:12:36.526140', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (11201, '127.0.0.1', '2024-07-29 11:12:36.544941', '/myapp/index/book/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (11202, '127.0.0.1', '2024-07-29 11:12:39.235262', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (11203, '127.0.0.1', '2024-07-29 11:12:39.237262', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (11204, '127.0.0.1', '2024-07-29 11:12:39.258447', '/myapp/index/book/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (11205, '127.0.0.1', '2024-07-29 11:12:43.911936', '/myapp/index/book/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (11206, '127.0.0.1', '2024-07-29 11:12:48.107396', '/myapp/index/book/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (11207, '127.0.0.1', '2024-07-29 11:12:49.782669', '/myapp/index/book/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (11208, '127.0.0.1', '2024-07-29 11:12:51.761748', '/myapp/index/book/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (11209, '127.0.0.1', '2024-07-29 11:14:59.308991', '/myapp/index/book/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (11210, '127.0.0.1', '2024-07-29 11:15:17.813856', '/myapp/index/book/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (11211, '127.0.0.1', '2024-07-29 11:15:40.676738', '/myapp/index/book/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (11212, '127.0.0.1', '2024-07-29 11:16:40.605665', '/myapp/index/book/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (11213, '127.0.0.1', '2024-07-29 11:17:27.450712', '/myapp/index/book/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (11214, '127.0.0.1', '2024-07-29 11:18:28.400488', '/myapp/index/book/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (11215, '127.0.0.1', '2024-07-29 11:19:17.731043', '/myapp/index/book/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (11216, '127.0.0.1', '2024-07-29 11:29:17.062666', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (11217, '127.0.0.1', '2024-07-29 11:29:17.069381', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (11218, '127.0.0.1', '2024-07-29 11:29:17.071381', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (11219, '127.0.0.1', '2024-07-29 11:29:17.073381', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (11220, '127.0.0.1', '2024-07-29 11:29:19.628544', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (11221, '127.0.0.1', '2024-07-29 11:29:19.631022', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (11222, '127.0.0.1', '2024-07-29 11:29:19.631022', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (11223, '127.0.0.1', '2024-07-29 11:29:19.660126', '/myapp/index/book/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (11224, '127.0.0.1', '2024-07-29 11:30:41.817728', '/myapp/index/book/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (11225, '127.0.0.1', '2024-07-29 11:32:58.503348', '/myapp/index/book/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (11226, '127.0.0.1', '2024-07-29 11:34:16.492541', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (11227, '127.0.0.1', '2024-07-29 11:34:16.510260', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (11228, '127.0.0.1', '2024-07-29 11:34:16.519898', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (11229, '127.0.0.1', '2024-07-29 11:34:16.606084', '/myapp/index/notice/list_api', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (11230, '127.0.0.1', '2024-07-29 11:34:20.728345', '/myapp/index/book/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (11231, '127.0.0.1', '2024-07-29 11:34:21.621877', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (11232, '127.0.0.1', '2024-07-29 11:34:21.635799', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (11233, '127.0.0.1', '2024-07-29 11:34:21.649714', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (11234, '127.0.0.1', '2024-07-29 11:34:21.703518', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (11235, '127.0.0.1', '2024-07-29 11:39:05.733851', '/myapp/admin/borrow/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (11236, '127.0.0.1', '2024-07-29 11:39:08.242608', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (11237, '127.0.0.1', '2024-07-29 11:39:08.250466', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (11238, '127.0.0.1', '2024-07-29 11:39:08.278497', '/myapp/index/comment/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (11239, '127.0.0.1', '2024-07-29 11:39:08.309689', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (11240, '127.0.0.1', '2024-07-29 11:39:09.946603', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (11241, '127.0.0.1', '2024-07-29 11:39:09.951659', '/myapp/index/book/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (11242, '127.0.0.1', '2024-07-29 11:39:09.958170', '/myapp/index/book/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (11243, '127.0.0.1', '2024-07-29 11:39:10.015630', '/myapp/index/book/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (11244, '127.0.0.1', '2024-07-29 11:39:11.164080', '/myapp/index/book/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (11245, '127.0.0.1', '2024-07-29 11:39:12.573770', '/myapp/index/book/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (11246, '127.0.0.1', '2024-07-29 11:39:12.580229', '/myapp/index/book/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (11247, '127.0.0.1', '2024-07-29 11:39:12.588247', '/myapp/index/book/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (11248, '127.0.0.1', '2024-07-29 11:39:12.645283', '/myapp/index/book/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (11249, '127.0.0.1', '2024-07-29 11:39:13.993504', '/myapp/index/book/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (11250, '127.0.0.1', '2024-07-29 11:39:14.603897', '/myapp/index/book/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (11251, '127.0.0.1', '2024-07-29 11:42:53.558622', '/myapp/index/book/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (11252, '127.0.0.1', '2024-07-29 11:42:53.553612', '/myapp/index/book/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (11253, '127.0.0.1', '2024-07-29 11:42:53.564140', '/myapp/index/book/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (11254, '127.0.0.1', '2024-07-29 11:42:53.610781', '/myapp/index/book/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (11255, '127.0.0.1', '2024-07-29 11:43:07.173475', '/myapp/index/book/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (11256, '127.0.0.1', '2024-07-29 11:46:50.935664', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (11257, '127.0.0.1', '2024-07-29 11:46:50.938302', '/myapp/index/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (11258, '127.0.0.1', '2024-07-29 11:46:50.947383', '/myapp/index/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (11259, '127.0.0.1', '2024-07-29 11:46:50.955748', '/myapp/index/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (11260, '127.0.0.1', '2024-07-29 11:46:52.727319', '/myapp/index/book/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (11261, '127.0.0.1', '2024-07-29 11:46:53.446171', '/myapp/index/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (11262, '127.0.0.1', '2024-07-29 11:46:54.305260', '/myapp/index/book/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (11263, '127.0.0.1', '2024-07-29 11:48:52.564655', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (11264, '127.0.0.1', '2024-07-29 11:48:52.578566', '/myapp/index/book/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (11265, '127.0.0.1', '2024-07-29 11:48:52.582607', '/myapp/index/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (11266, '127.0.0.1', '2024-07-29 11:48:52.609315', '/myapp/index/book/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (11267, '127.0.0.1', '2024-07-29 11:49:00.119278', '/myapp/index/book/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (11268, '127.0.0.1', '2024-07-29 11:49:13.226725', '/myapp/index/book/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (11269, '127.0.0.1', '2024-07-29 11:51:41.470495', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (11270, '127.0.0.1', '2024-07-29 11:51:41.473495', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (11271, '127.0.0.1', '2024-07-29 11:51:41.475495', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (11272, '127.0.0.1', '2024-07-29 11:51:41.511662', '/myapp/index/book/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (11273, '127.0.0.1', '2024-07-29 11:51:42.681141', '/myapp/index/book/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (11274, '127.0.0.1', '2024-07-29 11:51:44.936572', '/myapp/index/book/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (11275, '127.0.0.1', '2024-07-29 11:51:45.499053', '/myapp/index/book/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (11276, '127.0.0.1', '2024-07-29 11:51:47.298390', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (11277, '127.0.0.1', '2024-07-29 11:51:47.302479', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (11278, '127.0.0.1', '2024-07-29 11:51:47.304480', '/myapp/index/book/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (11279, '127.0.0.1', '2024-07-29 11:51:47.343493', '/myapp/index/book/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (11280, '127.0.0.1', '2024-07-29 11:51:48.771557', '/myapp/index/book/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (11281, '127.0.0.1', '2024-07-29 11:54:00.034654', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (11282, '127.0.0.1', '2024-07-29 11:54:00.037653', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (11283, '127.0.0.1', '2024-07-29 11:54:00.036653', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (11284, '127.0.0.1', '2024-07-29 11:54:00.071410', '/myapp/index/book/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (11285, '127.0.0.1', '2024-07-29 11:54:00.932423', '/myapp/index/book/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (11286, '127.0.0.1', '2024-07-29 11:54:04.278443', '/myapp/index/book/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (11287, '127.0.0.1', '2024-07-29 11:54:04.746473', '/myapp/index/book/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (11288, '127.0.0.1', '2024-07-29 11:54:05.256460', '/myapp/index/book/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (11289, '127.0.0.1', '2024-07-29 11:54:05.741226', '/myapp/index/book/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (11290, '127.0.0.1', '2024-07-29 11:54:06.923562', '/myapp/index/book/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (11291, '127.0.0.1', '2024-07-29 11:55:18.854012', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (11292, '127.0.0.1', '2024-07-29 11:55:18.855012', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (11293, '127.0.0.1', '2024-07-29 11:55:18.887752', '/myapp/index/book/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (11294, '127.0.0.1', '2024-07-29 11:55:47.682878', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (11295, '127.0.0.1', '2024-07-29 11:55:47.684891', '/myapp/index/book/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (11296, '127.0.0.1', '2024-07-29 11:55:47.700515', '/myapp/index/book/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (11297, '127.0.0.1', '2024-07-29 11:55:47.722499', '/myapp/index/book/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (11298, '127.0.0.1', '2024-07-29 11:55:48.691471', '/myapp/index/book/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (11299, '127.0.0.1', '2024-07-29 11:55:49.535189', '/myapp/index/book/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (11300, '127.0.0.1', '2024-07-29 11:55:50.031574', '/myapp/index/book/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (11301, '127.0.0.1', '2024-07-29 11:55:50.592958', '/myapp/index/book/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (11302, '127.0.0.1', '2024-07-29 11:55:51.027471', '/myapp/index/book/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (11303, '127.0.0.1', '2024-07-29 11:55:51.507390', '/myapp/index/book/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (11304, '127.0.0.1', '2024-07-29 11:55:51.869492', '/myapp/index/book/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (11305, '127.0.0.1', '2024-07-29 11:56:12.882115', '/myapp/index/book/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (11306, '127.0.0.1', '2024-07-29 11:56:14.405616', '/myapp/index/book/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (11307, '127.0.0.1', '2024-07-29 11:56:14.822505', '/myapp/index/book/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (11308, '127.0.0.1', '2024-07-29 11:56:16.682561', '/myapp/index/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (11309, '127.0.0.1', '2024-07-29 11:56:16.685539', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (11310, '127.0.0.1', '2024-07-29 11:56:16.686539', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (11311, '127.0.0.1', '2024-07-29 11:56:16.734653', '/myapp/index/book/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (11312, '127.0.0.1', '2024-07-29 11:56:17.881763', '/myapp/index/book/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (11313, '127.0.0.1', '2024-07-29 11:56:23.374355', '/myapp/index/book/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (11314, '127.0.0.1', '2024-07-29 11:57:05.402564', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (11315, '127.0.0.1', '2024-07-29 11:57:05.404565', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (11316, '127.0.0.1', '2024-07-29 11:57:05.405565', '/myapp/index/book/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (11317, '127.0.0.1', '2024-07-29 11:57:05.445931', '/myapp/index/book/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (11318, '127.0.0.1', '2024-07-29 11:57:07.411610', '/myapp/index/book/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (11319, '127.0.0.1', '2024-07-29 11:57:19.228478', '/myapp/index/book/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (11320, '127.0.0.1', '2024-07-29 11:57:19.668248', '/myapp/index/book/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (11321, '127.0.0.1', '2024-07-29 11:57:21.428894', '/myapp/index/book/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (11322, '127.0.0.1', '2024-07-29 12:00:10.738544', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (11323, '127.0.0.1', '2024-07-29 12:00:10.736529', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (11324, '127.0.0.1', '2024-07-29 12:00:10.740932', '/myapp/index/book/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (11325, '127.0.0.1', '2024-07-29 12:00:10.785942', '/myapp/index/book/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (11326, '127.0.0.1', '2024-07-29 12:00:12.138501', '/myapp/index/book/list', 'GET', NULL, '218');
INSERT INTO `b_op_log` VALUES (11327, '127.0.0.1', '2024-07-29 12:00:12.673817', '/myapp/index/book/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (11328, '127.0.0.1', '2024-07-29 13:06:36.421716', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (11329, '127.0.0.1', '2024-07-29 13:06:36.424779', '/myapp/index/book/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (11330, '127.0.0.1', '2024-07-29 13:06:36.426778', '/myapp/index/book/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (11331, '127.0.0.1', '2024-07-29 13:06:36.453278', '/myapp/index/book/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (11332, '127.0.0.1', '2024-07-29 13:06:40.936713', '/myapp/index/book/list', 'GET', NULL, '547');
INSERT INTO `b_op_log` VALUES (11333, '127.0.0.1', '2024-07-29 13:06:40.943256', '/myapp/index/book/list', 'GET', NULL, '552');
INSERT INTO `b_op_log` VALUES (11334, '127.0.0.1', '2024-07-29 13:06:41.205835', '/myapp/index/book/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (11335, '127.0.0.1', '2024-07-29 13:06:41.952109', '/myapp/index/book/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (11336, '127.0.0.1', '2024-07-29 13:06:42.620895', '/myapp/index/book/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (11337, '127.0.0.1', '2024-07-29 13:06:44.646386', '/myapp/index/book/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (11338, '127.0.0.1', '2024-07-29 13:06:45.473426', '/myapp/index/book/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (11339, '127.0.0.1', '2024-07-29 13:07:49.110169', '/myapp/index/book/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (11340, '127.0.0.1', '2024-07-29 13:07:50.427974', '/myapp/index/book/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (11341, '127.0.0.1', '2024-07-29 13:08:56.762424', '/myapp/index/book/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (11342, '127.0.0.1', '2024-07-29 13:08:57.551193', '/myapp/index/book/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (11343, '127.0.0.1', '2024-07-29 13:08:58.666595', '/myapp/index/book/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (11344, '127.0.0.1', '2024-07-29 13:09:01.033164', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (11345, '127.0.0.1', '2024-07-29 13:09:01.062821', '/myapp/index/book/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (11346, '127.0.0.1', '2024-07-29 13:09:01.064796', '/myapp/index/book/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (11347, '127.0.0.1', '2024-07-29 13:09:01.111209', '/myapp/index/book/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (11348, '127.0.0.1', '2024-07-29 13:09:01.113208', '/myapp/index/book/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (11349, '127.0.0.1', '2024-07-29 13:09:02.413506', '/myapp/index/book/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (11350, '127.0.0.1', '2024-07-29 13:09:03.011860', '/myapp/index/book/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (11351, '127.0.0.1', '2024-07-29 13:09:03.457921', '/myapp/index/book/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (11352, '127.0.0.1', '2024-07-29 13:09:14.040927', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (11353, '127.0.0.1', '2024-07-29 13:09:14.909928', '/myapp/index/book/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (11354, '127.0.0.1', '2024-07-29 13:09:16.756087', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (11355, '127.0.0.1', '2024-07-29 13:09:16.766346', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (11356, '127.0.0.1', '2024-07-29 13:09:16.776890', '/myapp/index/book/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (11357, '127.0.0.1', '2024-07-29 13:09:16.812022', '/myapp/index/book/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (11358, '127.0.0.1', '2024-07-29 13:09:17.610052', '/myapp/index/book/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (11359, '127.0.0.1', '2024-07-29 13:09:18.103657', '/myapp/index/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (11360, '127.0.0.1', '2024-07-29 13:09:18.618097', '/myapp/index/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (11361, '127.0.0.1', '2024-07-29 13:09:19.105051', '/myapp/index/book/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (11362, '127.0.0.1', '2024-07-29 13:09:34.998133', '/myapp/index/book/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (11363, '127.0.0.1', '2024-07-29 13:09:35.731195', '/myapp/index/book/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (11364, '127.0.0.1', '2024-07-29 13:09:48.380188', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (11365, '127.0.0.1', '2024-07-29 13:09:48.420986', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (11366, '127.0.0.1', '2024-07-29 13:09:48.421987', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (11367, '127.0.0.1', '2024-07-29 13:09:48.454279', '/myapp/index/book/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (11368, '127.0.0.1', '2024-07-29 13:10:05.362299', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (11369, '127.0.0.1', '2024-07-29 13:10:05.364337', '/myapp/index/book/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (11370, '127.0.0.1', '2024-07-29 13:10:05.365337', '/myapp/index/book/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (11371, '127.0.0.1', '2024-07-29 13:10:05.388963', '/myapp/index/book/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (11372, '127.0.0.1', '2024-07-29 13:10:06.059083', '/myapp/index/book/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (11373, '127.0.0.1', '2024-07-29 13:10:06.674255', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (11374, '127.0.0.1', '2024-07-29 13:10:07.258094', '/myapp/index/book/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (11375, '127.0.0.1', '2024-07-29 13:10:08.886700', '/myapp/index/book/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (11376, '127.0.0.1', '2024-07-29 13:12:51.295620', '/myapp/index/book/addCollectUser', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (11377, '127.0.0.1', '2024-07-29 13:12:55.360885', '/myapp/index/user/info', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (11378, '127.0.0.1', '2024-07-29 13:12:55.362884', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (11379, '127.0.0.1', '2024-07-29 13:13:00.083682', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (11380, '127.0.0.1', '2024-07-29 13:13:00.123806', '/myapp/index/book/getWishBookList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (11381, '127.0.0.1', '2024-07-29 13:13:00.131488', '/myapp/index/book/getWishBookList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (11382, '127.0.0.1', '2024-07-29 13:13:00.146684', '/myapp/index/book/getCollectBookList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (11383, '127.0.0.1', '2024-07-29 13:13:04.815961', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (11384, '127.0.0.1', '2024-07-29 13:13:04.826655', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (11385, '127.0.0.1', '2024-07-29 13:13:04.840847', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (11386, '127.0.0.1', '2024-07-29 13:13:04.894343', '/myapp/index/notice/list_api', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (11387, '127.0.0.1', '2024-07-29 13:13:05.851518', '/myapp/index/book/addCollectUser', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (11388, '127.0.0.1', '2024-07-29 13:13:06.995545', '/myapp/index/book/addCollectUser', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (11389, '127.0.0.1', '2024-07-29 13:13:09.478140', '/myapp/index/book/addCollectUser', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (11390, '127.0.0.1', '2024-07-29 13:13:14.199653', '/myapp/index/book/removeCollectUser', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (11391, '127.0.0.1', '2024-07-29 13:13:14.242101', '/myapp/index/book/getCollectBookList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (11392, '127.0.0.1', '2024-07-29 13:13:18.732668', '/myapp/index/book/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (11393, '127.0.0.1', '2024-07-29 13:13:18.739485', '/myapp/index/book/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (11394, '127.0.0.1', '2024-07-29 13:13:18.743629', '/myapp/index/book/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (11395, '127.0.0.1', '2024-07-29 13:13:18.841419', '/myapp/index/notice/list_api', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (11396, '127.0.0.1', '2024-07-29 13:13:19.818922', '/myapp/index/book/addCollectUser', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (11397, '127.0.0.1', '2024-07-29 13:13:37.199553', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (11398, '127.0.0.1', '2024-07-29 13:13:37.200554', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (11399, '127.0.0.1', '2024-07-29 13:13:37.217554', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (11400, '127.0.0.1', '2024-07-29 13:13:37.243783', '/myapp/index/book/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (11401, '127.0.0.1', '2024-07-29 13:13:39.292633', '/myapp/index/book/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (11402, '127.0.0.1', '2024-07-29 13:13:40.967632', '/myapp/index/book/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (11403, '127.0.0.1', '2024-07-29 13:13:41.488512', '/myapp/index/book/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (11404, '127.0.0.1', '2024-07-29 13:14:13.728362', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (11405, '127.0.0.1', '2024-07-29 13:14:13.732354', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (11406, '127.0.0.1', '2024-07-29 13:14:13.736393', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (11407, '127.0.0.1', '2024-07-29 13:14:13.812496', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (11408, '127.0.0.1', '2024-07-29 13:14:50.347643', '/myapp/index/comment/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (11409, '127.0.0.1', '2024-07-29 13:14:50.414905', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (11410, '127.0.0.1', '2024-07-29 13:14:52.250535', '/myapp/index/comment/like', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (11411, '127.0.0.1', '2024-07-29 13:14:52.299737', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (11412, '127.0.0.1', '2024-07-29 13:14:53.378110', '/myapp/index/comment/like', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (11413, '127.0.0.1', '2024-07-29 13:14:53.414314', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (11414, '127.0.0.1', '2024-07-29 13:14:55.513037', '/myapp/index/comment/like', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (11415, '127.0.0.1', '2024-07-29 13:14:55.540661', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (11416, '127.0.0.1', '2024-07-29 13:14:55.728588', '/myapp/index/comment/like', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (11417, '127.0.0.1', '2024-07-29 13:14:55.754547', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (11418, '127.0.0.1', '2024-07-29 13:14:55.893971', '/myapp/index/comment/like', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (11419, '127.0.0.1', '2024-07-29 13:14:55.942355', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (11420, '127.0.0.1', '2024-07-29 13:14:56.195731', '/myapp/index/comment/like', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (11421, '127.0.0.1', '2024-07-29 13:14:56.226731', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (11422, '127.0.0.1', '2024-07-29 13:14:56.384127', '/myapp/index/comment/like', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (11423, '127.0.0.1', '2024-07-29 13:14:56.418888', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (11424, '127.0.0.1', '2024-07-29 13:15:01.758638', '/myapp/index/book/addWishUser', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (11425, '127.0.0.1', '2024-07-29 13:15:02.370867', '/myapp/index/book/addWishUser', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (11426, '127.0.0.1', '2024-07-29 13:15:47.204638', '/myapp/index/book/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (11427, '127.0.0.1', '2024-07-29 13:15:47.812254', '/myapp/index/book/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (11428, '127.0.0.1', '2024-07-29 13:17:17.068471', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (11429, '127.0.0.1', '2024-07-29 13:17:17.075024', '/myapp/index/book/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (11430, '127.0.0.1', '2024-07-29 13:17:17.079151', '/myapp/index/book/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (11431, '127.0.0.1', '2024-07-29 13:17:17.128082', '/myapp/index/book/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (11432, '127.0.0.1', '2024-07-29 13:17:17.969118', '/myapp/index/book/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (11433, '127.0.0.1', '2024-07-29 13:17:18.933101', '/myapp/index/book/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (11434, '127.0.0.1', '2024-07-29 13:17:20.601583', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (11435, '127.0.0.1', '2024-07-29 13:17:20.612110', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (11436, '127.0.0.1', '2024-07-29 13:17:20.622552', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (11437, '127.0.0.1', '2024-07-29 13:17:20.681010', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (11438, '127.0.0.1', '2024-07-29 13:17:22.669489', '/myapp/index/book/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (11439, '127.0.0.1', '2024-07-29 13:17:22.685421', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (11440, '127.0.0.1', '2024-07-29 13:17:22.695089', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (11441, '127.0.0.1', '2024-07-29 13:17:22.746303', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (11442, '127.0.0.1', '2024-07-29 13:17:31.914150', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (11443, '127.0.0.1', '2024-07-29 13:17:31.917348', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (11444, '127.0.0.1', '2024-07-29 13:17:31.916349', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (11445, '127.0.0.1', '2024-07-29 13:17:31.946030', '/myapp/index/book/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (11446, '127.0.0.1', '2024-07-29 13:17:33.191298', '/myapp/index/book/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (11447, '127.0.0.1', '2024-07-29 13:17:34.428781', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (11448, '127.0.0.1', '2024-07-29 13:17:34.434300', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (11449, '127.0.0.1', '2024-07-29 13:17:34.437182', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (11450, '127.0.0.1', '2024-07-29 13:17:34.528500', '/myapp/index/notice/list_api', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (11451, '127.0.0.1', '2024-07-29 13:18:18.791373', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (11452, '127.0.0.1', '2024-07-29 13:18:18.795309', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (11453, '127.0.0.1', '2024-07-29 13:18:18.819476', '/myapp/index/book/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (11454, '127.0.0.1', '2024-07-29 13:18:23.059399', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (11455, '127.0.0.1', '2024-07-29 13:18:23.073215', '/myapp/index/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (11456, '127.0.0.1', '2024-07-29 13:18:23.075214', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (11457, '127.0.0.1', '2024-07-29 13:18:23.101959', '/myapp/index/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (11458, '127.0.0.1', '2024-07-29 13:18:23.464747', '/myapp/index/book/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (11459, '127.0.0.1', '2024-07-29 13:18:24.844802', '/myapp/index/book/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (11460, '127.0.0.1', '2024-07-29 13:18:25.339262', '/myapp/index/book/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (11461, '127.0.0.1', '2024-07-29 13:18:26.052606', '/myapp/index/book/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (11462, '127.0.0.1', '2024-07-29 13:18:27.675405', '/myapp/index/book/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (11463, '127.0.0.1', '2024-07-29 13:20:00.952846', '/myapp/index/book/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (11464, '127.0.0.1', '2024-07-29 13:21:05.678094', '/myapp/index/book/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (11465, '127.0.0.1', '2024-07-29 14:23:59.386321', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (11466, '127.0.0.1', '2024-07-29 14:24:00.559343', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (11467, '127.0.0.1', '2024-07-29 14:24:01.336128', '/myapp/admin/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (11468, '127.0.0.1', '2024-07-29 14:24:08.921684', '/myapp/admin/comment/delete', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (11469, '127.0.0.1', '2024-07-29 14:24:08.968175', '/myapp/admin/comment/list', 'GET', NULL, '13');

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `record_time` datetime(6) NULL DEFAULT NULL,
  `book_id` bigint NULL DEFAULT NULL,
  `classification_id` bigint NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_book_id_6e6a0cc5_fk_b_book_id`(`book_id` ASC) USING BTREE,
  INDEX `b_record_classification_id_52591cc9_fk_b_classification_id`(`classification_id` ASC) USING BTREE,
  INDEX `b_record_user_id_7e5958b0_fk_b_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `b_record_book_id_6e6a0cc5_fk_b_book_id` FOREIGN KEY (`book_id`) REFERENCES `b_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_classification_id_52591cc9_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_user_id_7e5958b0_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------
INSERT INTO `b_tag` VALUES (15, '编程', '2024-07-25 20:51:16.000000');
INSERT INTO `b_tag` VALUES (16, '科幻', '2024-07-25 20:51:25.000000');
INSERT INTO `b_tag` VALUES (18, '教育', '2024-07-25 20:52:00.000000');
INSERT INTO `b_tag` VALUES (22, '艺术', '2024-07-25 20:53:47.000000');
INSERT INTO `b_tag` VALUES (24, '文艺', '2024-07-26 09:22:16.140055');
INSERT INTO `b_tag` VALUES (25, '小说', '2024-07-26 09:22:37.989188');
INSERT INTO `b_tag` VALUES (26, '言情', '2024-07-26 09:22:43.676711');
INSERT INTO `b_tag` VALUES (27, '奇幻', '2024-07-26 09:23:15.681335');

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `score` int NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (17, '2', '0', 'addwww3哈哈', 'avatar/1677240189427.png', '', NULL, '2dd哈哈哈扣扣空间', '08f8e0260c64418510cefb2b06eee5cd', 'bbb', '2023-01-13 21:33:30.000000', 'aswas@qq.com', '08f8e0260c64418510cefb2b06eee5cd', '08f8e0260c64418510cefb2b06eee5cd', 11, 'add333@11.cc', 1);
INSERT INTO `b_user` VALUES (25, '1', '0', '超管', '', NULL, NULL, NULL, '0192023a7bbd73250516f069df18b500', 'admin123', '2023-02-28 21:34:06.332276', NULL, '0192023a7bbd73250516f069df18b500', NULL, 0, NULL, 0);
INSERT INTO `b_user` VALUES (27, '2', '0', '巴赫', 'avatar/1721799050444.jpeg', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', '1197936911@qq.com', '2024-07-24 13:29:24.238100', NULL, NULL, '71fdc0829b2d1b5e3442e3272b1c7504', 0, NULL, 0);
INSERT INTO `b_user` VALUES (28, '2', '0', '小透明', '', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', '123', '2024-07-25 13:57:24.682447', NULL, NULL, '202cb962ac59075b964b07152d234b70', 0, NULL, 0);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id` ASC) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label` ASC, `model` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (19, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (22, 'myapp', 'address');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'banner');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'book');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'borrow');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'borrowlog');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (21, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (20, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'role');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-01-03 20:27:44.615242');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-01-03 20:27:44.897724');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-01-03 20:27:44.953495');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-01-03 20:27:44.962673');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-03 20:27:44.978198');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-01-03 20:27:45.041158');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-01-03 20:27:45.078398');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-01-03 20:27:45.104344');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-01-03 20:27:45.117748');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-01-03 20:27:45.155021');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-01-03 20:27:45.159680');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-01-03 20:27:45.171067');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-01-03 20:27:45.224974');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-01-03 20:27:45.250804');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-01-03 20:27:45.282141');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-01-03 20:27:45.291184');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-01-03 20:27:45.316854');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2023-01-03 20:27:45.520965');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_user_password_user_username_alter_user_id', '2023-01-03 20:27:45.564345');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_alter_user_avatar_alter_user_description', '2023-01-03 20:27:45.597640');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_alter_user_password_alter_user_username', '2023-01-03 20:27:45.633857');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_alter_user_password_alter_user_username', '2023-01-03 20:27:45.674871');
INSERT INTO `django_migrations` VALUES (23, 'myapp', '0006_alter_book_layout', '2023-01-03 20:27:45.708082');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0007_book_original_title', '2023-01-03 20:27:45.734250');
INSERT INTO `django_migrations` VALUES (25, 'myapp', '0008_alter_book_cover', '2023-01-03 20:27:45.741932');
INSERT INTO `django_migrations` VALUES (26, 'myapp', '0009_book_create_time', '2023-01-03 20:27:45.775651');
INSERT INTO `django_migrations` VALUES (27, 'myapp', '0010_classification_create_time_tag_create_time_and_more', '2023-01-03 20:27:45.854694');
INSERT INTO `django_migrations` VALUES (28, 'myapp', '0011_remove_book_tag_book_tag', '2023-01-03 20:27:46.312973');
INSERT INTO `django_migrations` VALUES (29, 'myapp', '0012_alter_book_classification_alter_book_layout_and_more', '2023-01-03 20:27:46.334417');
INSERT INTO `django_migrations` VALUES (30, 'myapp', '0013_alter_book_tag', '2023-01-03 20:27:46.349593');
INSERT INTO `django_migrations` VALUES (31, 'sessions', '0001_initial', '2023-01-03 20:27:46.385664');
INSERT INTO `django_migrations` VALUES (32, 'myapp', '0014_alter_user_role', '2023-01-03 21:08:00.533634');
INSERT INTO `django_migrations` VALUES (33, 'myapp', '0015_user_email', '2023-01-03 21:31:54.825373');
INSERT INTO `django_migrations` VALUES (34, 'myapp', '0016_loginlog', '2023-01-05 21:21:04.722531');
INSERT INTO `django_migrations` VALUES (35, 'myapp', '0017_role_alter_user_role', '2023-01-05 21:47:13.455479');
INSERT INTO `django_migrations` VALUES (36, 'myapp', '0018_borrowlog_borrow', '2023-01-08 16:14:10.817634');
INSERT INTO `django_migrations` VALUES (37, 'myapp', '0019_borrow_return_time', '2023-01-08 16:34:51.014779');
INSERT INTO `django_migrations` VALUES (38, 'myapp', '0020_borrow_expect_time_alter_borrow_return_time', '2023-01-08 17:12:37.647740');
INSERT INTO `django_migrations` VALUES (39, 'myapp', '0021_borrow_delayed', '2023-01-08 19:24:41.148617');
INSERT INTO `django_migrations` VALUES (40, 'myapp', '0022_alter_borrow_delayed', '2023-01-08 19:27:02.797600');
INSERT INTO `django_migrations` VALUES (41, 'myapp', '0023_user_admin_token_user_token', '2023-01-11 20:59:53.270232');
INSERT INTO `django_migrations` VALUES (42, 'myapp', '0024_alter_user_role_delete_role', '2023-01-13 19:50:58.226903');
INSERT INTO `django_migrations` VALUES (43, 'myapp', '0025_remove_loginlog_user_loginlog_username', '2023-01-14 21:52:21.060006');
INSERT INTO `django_migrations` VALUES (44, 'myapp', '0026_oplog', '2023-01-14 22:29:42.849406');
INSERT INTO `django_migrations` VALUES (45, 'myapp', '0027_classification_pid', '2023-01-16 20:30:22.234557');
INSERT INTO `django_migrations` VALUES (46, 'myapp', '0028_banner', '2023-01-17 21:42:22.859463');
INSERT INTO `django_migrations` VALUES (47, 'myapp', '0029_ad', '2023-01-18 20:21:39.028250');
INSERT INTO `django_migrations` VALUES (48, 'myapp', '0030_notice', '2023-01-18 20:44:18.219782');
INSERT INTO `django_migrations` VALUES (49, 'myapp', '0031_loginlog_ua', '2023-01-19 21:18:56.544927');
INSERT INTO `django_migrations` VALUES (50, 'myapp', '0032_errorlog', '2023-01-27 10:09:41.720208');
INSERT INTO `django_migrations` VALUES (51, 'myapp', '0033_book_recommend_count_book_wish_count', '2023-02-12 19:33:57.162233');
INSERT INTO `django_migrations` VALUES (52, 'myapp', '0034_book_wish', '2023-02-12 20:12:16.244582');
INSERT INTO `django_migrations` VALUES (53, 'myapp', '0035_notice_title', '2023-02-16 21:34:07.128596');
INSERT INTO `django_migrations` VALUES (54, 'myapp', '0036_book_collect', '2023-02-17 19:55:28.167557');
INSERT INTO `django_migrations` VALUES (55, 'myapp', '0037_alter_book_collect_alter_book_wish', '2023-02-17 20:14:01.595001');
INSERT INTO `django_migrations` VALUES (56, 'myapp', '0038_book_collect_count', '2023-02-18 21:08:13.933964');
INSERT INTO `django_migrations` VALUES (57, 'myapp', '0039_user_score', '2023-02-19 20:20:16.498357');
INSERT INTO `django_migrations` VALUES (58, 'myapp', '0040_user_push_email_user_push_switch', '2023-02-19 20:58:22.350408');
INSERT INTO `django_migrations` VALUES (59, 'myapp', '0041_address', '2023-02-22 21:24:02.200424');
INSERT INTO `django_migrations` VALUES (60, 'myapp', '0042_rename_address_content_address_desc_address_mobile_and_more', '2023-02-22 21:29:49.165761');
INSERT INTO `django_migrations` VALUES (61, 'myapp', '0002_alter_classification_table', '2024-07-24 13:12:31.872424');
INSERT INTO `django_migrations` VALUES (62, 'myapp', '0003_alter_classification_table', '2024-07-24 13:12:31.893554');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
