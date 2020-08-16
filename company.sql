/*
 Navicat Premium Data Transfer

 Source Server         : LaoFu
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : company

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 19/07/2020 12:36:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 169 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add bookmark', 1, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (2, 'Can change bookmark', 1, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (3, 'Can delete bookmark', 1, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (4, 'Can view bookmark', 1, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (5, 'Can add pinned application', 2, 'add_pinnedapplication');
INSERT INTO `auth_permission` VALUES (6, 'Can change pinned application', 2, 'change_pinnedapplication');
INSERT INTO `auth_permission` VALUES (7, 'Can delete pinned application', 2, 'delete_pinnedapplication');
INSERT INTO `auth_permission` VALUES (8, 'Can view pinned application', 2, 'view_pinnedapplication');
INSERT INTO `auth_permission` VALUES (9, 'Can add log entry', 3, 'add_logentry');
INSERT INTO `auth_permission` VALUES (10, 'Can change log entry', 3, 'change_logentry');
INSERT INTO `auth_permission` VALUES (11, 'Can delete log entry', 3, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (12, 'Can view log entry', 3, 'view_logentry');
INSERT INTO `auth_permission` VALUES (13, 'Can add permission', 4, 'add_permission');
INSERT INTO `auth_permission` VALUES (14, 'Can change permission', 4, 'change_permission');
INSERT INTO `auth_permission` VALUES (15, 'Can delete permission', 4, 'delete_permission');
INSERT INTO `auth_permission` VALUES (16, 'Can view permission', 4, 'view_permission');
INSERT INTO `auth_permission` VALUES (17, 'Can add group', 5, 'add_group');
INSERT INTO `auth_permission` VALUES (18, 'Can change group', 5, 'change_group');
INSERT INTO `auth_permission` VALUES (19, 'Can delete group', 5, 'delete_group');
INSERT INTO `auth_permission` VALUES (20, 'Can view group', 5, 'view_group');
INSERT INTO `auth_permission` VALUES (21, 'Can add user', 6, 'add_user');
INSERT INTO `auth_permission` VALUES (22, 'Can change user', 6, 'change_user');
INSERT INTO `auth_permission` VALUES (23, 'Can delete user', 6, 'delete_user');
INSERT INTO `auth_permission` VALUES (24, 'Can view user', 6, 'view_user');
INSERT INTO `auth_permission` VALUES (25, 'Can add content type', 7, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (26, 'Can change content type', 7, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (27, 'Can delete content type', 7, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (28, 'Can view content type', 7, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (29, 'Can add session', 8, 'add_session');
INSERT INTO `auth_permission` VALUES (30, 'Can change session', 8, 'change_session');
INSERT INTO `auth_permission` VALUES (31, 'Can delete session', 8, 'delete_session');
INSERT INTO `auth_permission` VALUES (32, 'Can view session', 8, 'view_session');
INSERT INTO `auth_permission` VALUES (33, 'Can add 2关于南西-1简介致辞', 9, 'add_about');
INSERT INTO `auth_permission` VALUES (34, 'Can change 2关于南西-1简介致辞', 9, 'change_about');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 2关于南西-1简介致辞', 9, 'delete_about');
INSERT INTO `auth_permission` VALUES (36, 'Can view 2关于南西-1简介致辞', 9, 'view_about');
INSERT INTO `auth_permission` VALUES (37, 'Can add 1首页-6陪伴式教育', 10, 'add_accompanying');
INSERT INTO `auth_permission` VALUES (38, 'Can change 1首页-6陪伴式教育', 10, 'change_accompanying');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 1首页-6陪伴式教育', 10, 'delete_accompanying');
INSERT INTO `auth_permission` VALUES (40, 'Can view 1首页-6陪伴式教育', 10, 'view_accompanying');
INSERT INTO `auth_permission` VALUES (41, 'Can add 点击咨询信息', 11, 'add_advertising1');
INSERT INTO `auth_permission` VALUES (42, 'Can change 点击咨询信息', 11, 'change_advertising1');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 点击咨询信息', 11, 'delete_advertising1');
INSERT INTO `auth_permission` VALUES (44, 'Can view 点击咨询信息', 11, 'view_advertising1');
INSERT INTO `auth_permission` VALUES (45, 'Can add 立即领取信息', 12, 'add_advertising2');
INSERT INTO `auth_permission` VALUES (46, 'Can change 立即领取信息', 12, 'change_advertising2');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 立即领取信息', 12, 'delete_advertising2');
INSERT INTO `auth_permission` VALUES (48, 'Can view 立即领取信息', 12, 'view_advertising2');
INSERT INTO `auth_permission` VALUES (49, 'Can add 1轮播图-7底部', 13, 'add_bottom_carousel');
INSERT INTO `auth_permission` VALUES (50, 'Can change 1轮播图-7底部', 13, 'change_bottom_carousel');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 1轮播图-7底部', 13, 'delete_bottom_carousel');
INSERT INTO `auth_permission` VALUES (52, 'Can view 1轮播图-7底部', 13, 'view_bottom_carousel');
INSERT INTO `auth_permission` VALUES (53, 'Can add 4教学体系-1选择南西', 14, 'add_choose_nancy');
INSERT INTO `auth_permission` VALUES (54, 'Can change 4教学体系-1选择南西', 14, 'change_choose_nancy');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 4教学体系-1选择南西', 14, 'delete_choose_nancy');
INSERT INTO `auth_permission` VALUES (56, 'Can view 4教学体系-1选择南西', 14, 'view_choose_nancy');
INSERT INTO `auth_permission` VALUES (57, 'Can add 1首页-2选择我们', 15, 'add_choose_us');
INSERT INTO `auth_permission` VALUES (58, 'Can change 1首页-2选择我们', 15, 'change_choose_us');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 1首页-2选择我们', 15, 'delete_choose_us');
INSERT INTO `auth_permission` VALUES (60, 'Can view 1首页-2选择我们', 15, 'view_choose_us');
INSERT INTO `auth_permission` VALUES (61, 'Can add 6小南编程-4国内一流的课程体系', 16, 'add_class_teach');
INSERT INTO `auth_permission` VALUES (62, 'Can change 6小南编程-4国内一流的课程体系', 16, 'change_class_teach');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 6小南编程-4国内一流的课程体系', 16, 'delete_class_teach');
INSERT INTO `auth_permission` VALUES (64, 'Can view 6小南编程-4国内一流的课程体系', 16, 'view_class_teach');
INSERT INTO `auth_permission` VALUES (65, 'Can add 7联系我们', 17, 'add_contact');
INSERT INTO `auth_permission` VALUES (66, 'Can change 7联系我们', 17, 'change_contact');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 7联系我们', 17, 'delete_contact');
INSERT INTO `auth_permission` VALUES (68, 'Can view 7联系我们', 17, 'view_contact');
INSERT INTO `auth_permission` VALUES (69, 'Can add 3课程介绍-1科目', 18, 'add_course');
INSERT INTO `auth_permission` VALUES (70, 'Can change 3课程介绍-1科目', 18, 'change_course');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 3课程介绍-1科目', 18, 'delete_course');
INSERT INTO `auth_permission` VALUES (72, 'Can view 3课程介绍-1科目', 18, 'view_course');
INSERT INTO `auth_permission` VALUES (73, 'Can add 3课程介绍-2定制一对一', 19, 'add_custom');
INSERT INTO `auth_permission` VALUES (74, 'Can change 3课程介绍-2定制一对一', 19, 'change_custom');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 3课程介绍-2定制一对一', 19, 'delete_custom');
INSERT INTO `auth_permission` VALUES (76, 'Can view 3课程介绍-2定制一对一', 19, 'view_custom');
INSERT INTO `auth_permission` VALUES (77, 'Can add 4教学体系-2教学体系', 20, 'add_education');
INSERT INTO `auth_permission` VALUES (78, 'Can change 4教学体系-2教学体系', 20, 'change_education');
INSERT INTO `auth_permission` VALUES (79, 'Can delete 4教学体系-2教学体系', 20, 'delete_education');
INSERT INTO `auth_permission` VALUES (80, 'Can view 4教学体系-2教学体系', 20, 'view_education');
INSERT INTO `auth_permission` VALUES (81, 'Can add 2关于南西-2企业文化', 21, 'add_enterprise');
INSERT INTO `auth_permission` VALUES (82, 'Can change 2关于南西-2企业文化', 21, 'change_enterprise');
INSERT INTO `auth_permission` VALUES (83, 'Can delete 2关于南西-2企业文化', 21, 'delete_enterprise');
INSERT INTO `auth_permission` VALUES (84, 'Can view 2关于南西-2企业文化', 21, 'view_enterprise');
INSERT INTO `auth_permission` VALUES (85, 'Can add 6小南编程-3国内一流的教研团队', 22, 'add_first_class');
INSERT INTO `auth_permission` VALUES (86, 'Can change 6小南编程-3国内一流的教研团队', 22, 'change_first_class');
INSERT INTO `auth_permission` VALUES (87, 'Can delete 6小南编程-3国内一流的教研团队', 22, 'delete_first_class');
INSERT INTO `auth_permission` VALUES (88, 'Can view 6小南编程-3国内一流的教研团队', 22, 'view_first_class');
INSERT INTO `auth_permission` VALUES (89, 'Can add 6小南编程-5精选国内顶尖赛事', 23, 'add_first_match');
INSERT INTO `auth_permission` VALUES (90, 'Can change 6小南编程-5精选国内顶尖赛事', 23, 'change_first_match');
INSERT INTO `auth_permission` VALUES (91, 'Can delete 6小南编程-5精选国内顶尖赛事', 23, 'delete_first_match');
INSERT INTO `auth_permission` VALUES (92, 'Can view 6小南编程-5精选国内顶尖赛事', 23, 'view_first_match');
INSERT INTO `auth_permission` VALUES (93, 'Can add 3课程介绍-3趣味课堂', 24, 'add_interest');
INSERT INTO `auth_permission` VALUES (94, 'Can change 3课程介绍-3趣味课堂', 24, 'change_interest');
INSERT INTO `auth_permission` VALUES (95, 'Can delete 3课程介绍-3趣味课堂', 24, 'delete_interest');
INSERT INTO `auth_permission` VALUES (96, 'Can view 3课程介绍-3趣味课堂', 24, 'view_interest');
INSERT INTO `auth_permission` VALUES (97, 'Can add 1首页-4南西师资', 25, 'add_nancy_teacher');
INSERT INTO `auth_permission` VALUES (98, 'Can change 1首页-4南西师资', 25, 'change_nancy_teacher');
INSERT INTO `auth_permission` VALUES (99, 'Can delete 1首页-4南西师资', 25, 'delete_nancy_teacher');
INSERT INTO `auth_permission` VALUES (100, 'Can view 1首页-4南西师资', 25, 'view_nancy_teacher');
INSERT INTO `auth_permission` VALUES (101, 'Can add 6小南编程-1小南编程', 26, 'add_programming');
INSERT INTO `auth_permission` VALUES (102, 'Can change 6小南编程-1小南编程', 26, 'change_programming');
INSERT INTO `auth_permission` VALUES (103, 'Can delete 6小南编程-1小南编程', 26, 'delete_programming');
INSERT INTO `auth_permission` VALUES (104, 'Can view 6小南编程-1小南编程', 26, 'view_programming');
INSERT INTO `auth_permission` VALUES (105, 'Can add 1首页-5读书点亮生活', 27, 'add_reading_life');
INSERT INTO `auth_permission` VALUES (106, 'Can change 1首页-5读书点亮生活', 27, 'change_reading_life');
INSERT INTO `auth_permission` VALUES (107, 'Can delete 1首页-5读书点亮生活', 27, 'delete_reading_life');
INSERT INTO `auth_permission` VALUES (108, 'Can view 1首页-5读书点亮生活', 27, 'view_reading_life');
INSERT INTO `auth_permission` VALUES (109, 'Can add 4教学体系-3教育服务', 28, 'add_service');
INSERT INTO `auth_permission` VALUES (110, 'Can change 4教学体系-3教育服务', 28, 'change_service');
INSERT INTO `auth_permission` VALUES (111, 'Can delete 4教学体系-3教育服务', 28, 'delete_service');
INSERT INTO `auth_permission` VALUES (112, 'Can view 4教学体系-3教育服务', 28, 'view_service');
INSERT INTO `auth_permission` VALUES (113, 'Can add 1首页-3南西六步教学法', 29, 'add_six_teach');
INSERT INTO `auth_permission` VALUES (114, 'Can change 1首页-3南西六步教学法', 29, 'change_six_teach');
INSERT INTO `auth_permission` VALUES (115, 'Can delete 1首页-3南西六步教学法', 29, 'delete_six_teach');
INSERT INTO `auth_permission` VALUES (116, 'Can view 1首页-3南西六步教学法', 29, 'view_six_teach');
INSERT INTO `auth_permission` VALUES (117, 'Can add 3课程介绍-4六步教学法', 30, 'add_sixstep');
INSERT INTO `auth_permission` VALUES (118, 'Can change 3课程介绍-4六步教学法', 30, 'change_sixstep');
INSERT INTO `auth_permission` VALUES (119, 'Can delete 3课程介绍-4六步教学法', 30, 'delete_sixstep');
INSERT INTO `auth_permission` VALUES (120, 'Can view 3课程介绍-4六步教学法', 30, 'view_sixstep');
INSERT INTO `auth_permission` VALUES (121, 'Can add 5最新动态-关键字', 31, 'add_tag');
INSERT INTO `auth_permission` VALUES (122, 'Can change 5最新动态-关键字', 31, 'change_tag');
INSERT INTO `auth_permission` VALUES (123, 'Can delete 5最新动态-关键字', 31, 'delete_tag');
INSERT INTO `auth_permission` VALUES (124, 'Can view 5最新动态-关键字', 31, 'view_tag');
INSERT INTO `auth_permission` VALUES (125, 'Can add 广告--链接及背景', 32, 'add_teacher_select');
INSERT INTO `auth_permission` VALUES (126, 'Can change 广告--链接及背景', 32, 'change_teacher_select');
INSERT INTO `auth_permission` VALUES (127, 'Can delete 广告--链接及背景', 32, 'delete_teacher_select');
INSERT INTO `auth_permission` VALUES (128, 'Can view 广告--链接及背景', 32, 'view_teacher_select');
INSERT INTO `auth_permission` VALUES (129, 'Can add 1轮播图-1顶部-广告电话', 33, 'add_top_carousel');
INSERT INTO `auth_permission` VALUES (130, 'Can change 1轮播图-1顶部-广告电话', 33, 'change_top_carousel');
INSERT INTO `auth_permission` VALUES (131, 'Can delete 1轮播图-1顶部-广告电话', 33, 'delete_top_carousel');
INSERT INTO `auth_permission` VALUES (132, 'Can view 1轮播图-1顶部-广告电话', 33, 'view_top_carousel');
INSERT INTO `auth_permission` VALUES (133, 'Can add 6小南编程-2为什么选择小南编程', 34, 'add_why_choose');
INSERT INTO `auth_permission` VALUES (134, 'Can change 6小南编程-2为什么选择小南编程', 34, 'change_why_choose');
INSERT INTO `auth_permission` VALUES (135, 'Can delete 6小南编程-2为什么选择小南编程', 34, 'delete_why_choose');
INSERT INTO `auth_permission` VALUES (136, 'Can view 6小南编程-2为什么选择小南编程', 34, 'view_why_choose');
INSERT INTO `auth_permission` VALUES (137, 'Can add 5最新动态', 35, 'add_dynamic');
INSERT INTO `auth_permission` VALUES (138, 'Can change 5最新动态', 35, 'change_dynamic');
INSERT INTO `auth_permission` VALUES (139, 'Can delete 5最新动态', 35, 'delete_dynamic');
INSERT INTO `auth_permission` VALUES (140, 'Can view 5最新动态', 35, 'view_dynamic');
INSERT INTO `auth_permission` VALUES (141, 'Can add 1首页-7底部导航栏', 36, 'add_bt_nav');
INSERT INTO `auth_permission` VALUES (142, 'Can change 1首页-7底部导航栏', 36, 'change_bt_nav');
INSERT INTO `auth_permission` VALUES (143, 'Can delete 1首页-7底部导航栏', 36, 'delete_bt_nav');
INSERT INTO `auth_permission` VALUES (144, 'Can view 1首页-7底部导航栏', 36, 'view_bt_nav');
INSERT INTO `auth_permission` VALUES (145, 'Can add 2关于南西-3底部图', 37, 'add_about_bt');
INSERT INTO `auth_permission` VALUES (146, 'Can change 2关于南西-3底部图', 37, 'change_about_bt');
INSERT INTO `auth_permission` VALUES (147, 'Can delete 2关于南西-3底部图', 37, 'delete_about_bt');
INSERT INTO `auth_permission` VALUES (148, 'Can view 2关于南西-3底部图', 37, 'view_about_bt');
INSERT INTO `auth_permission` VALUES (149, 'Can add 7联系我们-2底部', 38, 'add_contact_bt');
INSERT INTO `auth_permission` VALUES (150, 'Can change 7联系我们-2底部', 38, 'change_contact_bt');
INSERT INTO `auth_permission` VALUES (151, 'Can delete 7联系我们-2底部', 38, 'delete_contact_bt');
INSERT INTO `auth_permission` VALUES (152, 'Can view 7联系我们-2底部', 38, 'view_contact_bt');
INSERT INTO `auth_permission` VALUES (153, 'Can add 3课程介绍-5底部', 39, 'add_course_bt');
INSERT INTO `auth_permission` VALUES (154, 'Can change 3课程介绍-5底部', 39, 'change_course_bt');
INSERT INTO `auth_permission` VALUES (155, 'Can delete 3课程介绍-5底部', 39, 'delete_course_bt');
INSERT INTO `auth_permission` VALUES (156, 'Can view 3课程介绍-5底部', 39, 'view_course_bt');
INSERT INTO `auth_permission` VALUES (157, 'Can add 5最新动态-3底部', 40, 'add_dynamic_bt');
INSERT INTO `auth_permission` VALUES (158, 'Can change 5最新动态-3底部', 40, 'change_dynamic_bt');
INSERT INTO `auth_permission` VALUES (159, 'Can delete 5最新动态-3底部', 40, 'delete_dynamic_bt');
INSERT INTO `auth_permission` VALUES (160, 'Can view 5最新动态-3底部', 40, 'view_dynamic_bt');
INSERT INTO `auth_permission` VALUES (161, 'Can add 6小南编程-6底部', 41, 'add_program_bt');
INSERT INTO `auth_permission` VALUES (162, 'Can change 6小南编程-6底部', 41, 'change_program_bt');
INSERT INTO `auth_permission` VALUES (163, 'Can delete 6小南编程-6底部', 41, 'delete_program_bt');
INSERT INTO `auth_permission` VALUES (164, 'Can view 6小南编程-6底部', 41, 'view_program_bt');
INSERT INTO `auth_permission` VALUES (165, 'Can add 4教学体系-4底部', 42, 'add_teach_bt');
INSERT INTO `auth_permission` VALUES (166, 'Can change 4教学体系-4底部', 42, 'change_teach_bt');
INSERT INTO `auth_permission` VALUES (167, 'Can delete 4教学体系-4底部', 42, 'delete_teach_bt');
INSERT INTO `auth_permission` VALUES (168, 'Can view 4教学体系-4底部', 42, 'view_teach_bt');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$180000$8uVqjqhuwlAQ$Y6MFGLQpTfYTLdkm5yjQYD/7RMBfiLAjPZ1vqg8aCyk=', '2020-07-10 15:47:42.240675', 1, 'admin', '', '', '', 1, 1, '2020-06-21 14:23:41.496062');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for companyinfo_about
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_about`;
CREATE TABLE `companyinfo_about`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sltuation` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `president1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `preimg1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `president2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `preimg2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_about
-- ----------------------------
INSERT INTO `companyinfo_about` VALUES (1, '学校简介', 'SCHOOL SITUATION', 'about/about_us.jpg', '<p>一大段学校简介。爱如手中沙，抓太紧反而会从指缝间流失；</p>\r\n\r\n<p>情如是水中月，试图捞起反而愈觉虚幻；红尘如镜里花，几场花开花谢就是一片水云。</p>\r\n\r\n<p>想一个人，就是把水变成泪；爱一个人，就是把泪变成血；恨一个人，就是把血泪凝固成的玫瑰。忘记一个人，是撕开胸膛，打开血管，把玫瑰一朵一朵地从里面掏出来，碾碎，踩烂，还原成血，成泪，成水。随着时光的流逝，有的伤口愈合了，有的永远也无法痊愈，<strong>春风秋雨</strong>走过，依然会开出大片大片的繁花，长出无边的青草苍苔。</p>', '校长致辞', 'MESSAGE PRESIDENT', '<p>爱如手中沙，抓太紧反而会从指缝间流失；情如是水中月，试图捞起反而愈觉虚幻；红尘如镜里花，几场花开花谢就是一片水云。想一个人，就是把水变成泪；爱一个人，就是把泪变成血；恨一个人，就是把血泪凝固成的玫瑰。忘记一个人，是撕开胸膛，打开血管，把玫瑰一朵一朵地从里面掏出来，碾碎，踩烂，还原成血，成泪，成水。随着时光的流逝，有的伤口愈合了，有的永远也无法痊愈，春风秋雨走过，依然会开出大片大片的繁花，长出无边的青草苍苔。</p>', 'about/1.jpg', '2020年5月1日', '<p>爱如手中沙，抓太紧反而会从指缝间流失；情如是水中月，试图捞起反而愈觉虚幻；红尘如镜里花，几场花开花谢就是一片水云。想一个人，就是把水变成泪；爱一个人，就是把泪变成血；恨一个人，就是把血泪凝固成的玫瑰。忘记一个人，是撕开胸膛，打开血管，把玫瑰一朵一朵地从里面掏出来，碾碎，踩烂，还原成血，成泪，成水。随着时光的流逝，有的伤口愈合了，有的永远也无法痊愈，春风秋雨走过，依然会开出大片大片的繁花，长出无边的青草苍苔。</p>', 'about/2.jpg', '2020年5月1日');

-- ----------------------------
-- Table structure for companyinfo_about_bt
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_about_bt`;
CREATE TABLE `companyinfo_about_bt`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_about_bt
-- ----------------------------
INSERT INTO `companyinfo_about_bt` VALUES (1, '学校简介', 'SCHOOL SITUATION', 'carousel/1_qFCVcEi.jpg', 'carousel/2_CM4NElB.jpg', 'carousel/3_l5yAyFp.jpg');

-- ----------------------------
-- Table structure for companyinfo_accompanying
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_accompanying`;
CREATE TABLE `companyinfo_accompanying`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accompany1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accompany1_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accompany1_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accompany2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accompany2_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accompany2_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accompany3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accompany3_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accompany3_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accompany4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accompany4_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accompany4_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accompany5` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accompany5_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accompany5_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accompany6` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accompany6_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accompany6_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_accompanying
-- ----------------------------
INSERT INTO `companyinfo_accompanying` VALUES (1, '陪伴式教育', 'ACCOMPANYING EDUCATION', '入学测试', 'read_life/1_oEOM0lL.jpg', '<p>Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>\r\n\r\n<p>&nbsp;</p>', '分析学情', 'read_life/2_hImTzwi.jpg', '<p>Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>', '分配老师', 'read_life/3_W9bpblq.jpg', '<p>Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>', '定制计划', 'read_life/4_gobAhey.jpg', '<p>Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>', '建立档案', 'read_life/5_KU2pMxh.jpg', '<p>Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>', '学习报告', 'read_life/6_IaopExM.jpg', '<p>Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>');

-- ----------------------------
-- Table structure for companyinfo_advertising1
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_advertising1`;
CREATE TABLE `companyinfo_advertising1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_handle` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_advertising1
-- ----------------------------
INSERT INTO `companyinfo_advertising1` VALUES (1, '咨询测试', '1888888', '电子校', '18', 1);

-- ----------------------------
-- Table structure for companyinfo_advertising2
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_advertising2`;
CREATE TABLE `companyinfo_advertising2`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_handle` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_advertising2
-- ----------------------------
INSERT INTO `companyinfo_advertising2` VALUES (1, '领取测试', '188888', '10', 1);

-- ----------------------------
-- Table structure for companyinfo_bottom_carousel
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_bottom_carousel`;
CREATE TABLE `companyinfo_bottom_carousel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `carousel` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_bottom_carousel
-- ----------------------------
INSERT INTO `companyinfo_bottom_carousel` VALUES (1, '学校简介', 'SCHOOL SITUATION', 'first', 'carousel/1_f0bhHlH.jpg', 'carousel/2_MLJzO0n.jpg', 'carousel/3_dbd2Kgx.jpg');
INSERT INTO `companyinfo_bottom_carousel` VALUES (2, '学校简介', 'SCHOOL SITUATION', 'second', 'carousel/4_HEZ4Wt8.jpg', 'carousel/5_tLmcrst.jpg', 'carousel/6.jpg');
INSERT INTO `companyinfo_bottom_carousel` VALUES (3, '学校简介', 'SCHOOL SITUATION', 'third', 'carousel/7.jpg', 'carousel/8.jpg', 'carousel/9.jpg');
INSERT INTO `companyinfo_bottom_carousel` VALUES (4, '学校简介', 'SCHOOL SITUATION', 'fourth', 'carousel/10.jpg', 'carousel/11.jpg', 'carousel/12.jpg');
INSERT INTO `companyinfo_bottom_carousel` VALUES (5, '学校简介', 'SCHOOL SITUATION', 'fifth', 'carousel/13.jpg', 'carousel/14.jpg', 'carousel/15.jpg');

-- ----------------------------
-- Table structure for companyinfo_bt_nav
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_bt_nav`;
CREATE TABLE `companyinfo_bt_nav`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `record1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `record2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imprimatur` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `License` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `other` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qrcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_bt_nav
-- ----------------------------
INSERT INTO `companyinfo_bt_nav` VALUES (1, '杨家坪校区', '保利时代广场B栋12楼（杨家坪步行街正西50米）', '023-68686325', '渝IC P备00000000号00', 'https://www.beianx.cn/', '渝公网安备00000000000000号', 'https://www.beianx.cn/', '出版物经营许可证新出发渝零字第V000号', '营业执照00000000MA05JPR99 J', 'Copysdfght◎2020 AII rights sdfsdfs', 'advertising/erweima.png');
INSERT INTO `companyinfo_bt_nav` VALUES (2, '渝北校区1', '渝北金童路轻轨站旁复城国际2楼', '023-68686325', '渝IC P备00000000号00', 'https://www.beianx.cn/', '渝公网安备00000000000000号', 'https://www.beianx.cn/', '出版物经营许可证新出发渝零字第V000号', '营业执照00000000MA05JPR99 J', 'Copysdfght◎2020 AII rights sdfsdfs', 'advertising/erweima_3acJyP8.png');

-- ----------------------------
-- Table structure for companyinfo_choose_nancy
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_choose_nancy`;
CREATE TABLE `companyinfo_choose_nancy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `second1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `second2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `third1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `third2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fourth1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fourth2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fifth1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fifth2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_choose_nancy
-- ----------------------------
INSERT INTO `companyinfo_choose_nancy` VALUES (1, '选择南西', 'CHOOSE NANCY', '强大的教学实力', '<p>南西教育作为K12升学辅导培训的资深品牌， 有数年的教育培训和应试辅导经验，已有数万名学子升入理想学校的成功见证。</p>\r\n\r\n<p>&nbsp;</p>', '丰富的教研活动', '<p>每周进行学科教研活动，形成完整的教学设计方案，每月集中分析学生学习情况， 教研针对性辅导方案，每季度举行教师赛课，激励教师不断的提高教学质量。</p>', '优质的师训系统', '<p>学校总部拥有完整的教师培训体系，新教师侧重教学技能的扎实 ，中级教师侧重教学方式的创新，高级教师侧重教研学术的研究。</p>', '自主研发的多层次教材', '<p>教材由教研部数位经验丰富的教研大牛自主研发而成， 根据不同层次的学生学情，研发不同层次的教材，教学层次分明，实用性强</p>', '强大的教学实力', '<p>南西教育作为K12升学辅导培训的资深品牌，有数年的教育培训和应试辅导经验 已有数万名靴子升入理想学校的成功见证。</p>');

-- ----------------------------
-- Table structure for companyinfo_choose_us
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_choose_us`;
CREATE TABLE `companyinfo_choose_us`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `choose` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `choose_img1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `choose_name1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `choose_img2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `choose_name2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `choose_img3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `choose_name3` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `choose_img4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `choose_name4` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `choose_img5` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `choose_name5` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `choose_img6` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `choose_name6` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_choose_us
-- ----------------------------
INSERT INTO `companyinfo_choose_us` VALUES (1, '选择我们', 'CHOOSE Us', 'first', 'choose_teach/1.jpg', 'choose_teach/1-1.jpg', 'AA', 'choose_teach/1-2.jpg', 'SS', 'choose_teach/1-3.jpg', 'DD', 'choose_teach/1-4.jpg', 'FF', 'choose_teach/1-5.jpg', 'GG', 'choose_teach/1-6.jpg', 'HH');
INSERT INTO `companyinfo_choose_us` VALUES (2, '选择我们', 'CHOOSE Us', 'second', 'choose_teach/2.jpg', 'choose_teach/2-1.jpg', 'ZZ', 'choose_teach/2-2.jpg', 'XX', 'choose_teach/2-3.jpg', 'CC', 'choose_teach/2-4.jpg', 'VV', 'choose_teach/2-5.jpg', 'BB', 'choose_teach/2-6.jpg', 'NN');
INSERT INTO `companyinfo_choose_us` VALUES (3, '选择我们', 'CHOOSE Us', 'third', 'choose_teach/3.jpg', 'choose_teach/3-1.jpg', 'QQ', 'choose_teach/3-2.jpg', 'WW', 'choose_teach/3-3.jpg', 'EE', 'choose_teach/3-4.jpg', 'RR', 'choose_teach/3-5.jpg', 'TT', 'choose_teach/3-6.jpg', 'YY');

-- ----------------------------
-- Table structure for companyinfo_class_teach
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_class_teach`;
CREATE TABLE `companyinfo_class_teach`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_title1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course1_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `inner1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_title2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course2_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `inner2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_title3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course3_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age3` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `inner3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_title4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course4_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age4` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `inner4` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_class_teach
-- ----------------------------
INSERT INTO `companyinfo_class_teach` VALUES (1, '国内一流的课程体系', 'FIRST CLASS TEACHING', '图形化编程课程', 'programming/1_rWRGQTV.jpg', '零基础入门首选让编程像搭积木一样好', '6-9岁', '<p>知识：理解计算机编程的基本概念，设计有趣的游戏和动画作品， 分析分解项目，完成从无到有的创作，规划研究管理小型项目。 能力:建立逻辑思维，树立解决问题意识，增加对学习的兴趣和信心，掌握编程基础知识</p>\r\n\r\n<p><strong>加强</strong>：理解计算机编程的基本概念，设计有趣的游戏和动画作品，</p>', 'python编程课', 'programming/2_ObOeIRL.jpg', '零基础入门首选让编程像搭积木一样好', '6-8岁', '<p>知识：理解计算机编程的基本概念，设计有趣的游戏和动画作品， 分析分解项目，完成从无到有的创作，规划研究管理小型项目。 能力:建立逻辑思维，树立解决问题意识，增加对学习的兴趣和信心，掌握编程基础知识</p>', 'C++编程课', 'programming/3_2eKvCBB.jpg', '零基础入门首选让编程像搭积木一样好', '6-8岁', '<p>知识：理解计算机编程的基本概念，设计有趣的游戏和动画作品， 分析分解项目，完成从无到有的创作，规划研究管理小型项目。 能力:建立逻辑思维，树立解决问题意识，增加对学习的兴趣和信心，掌握编程基础知识</p>', '竞赛培训', 'programming/4_FPuyxOu.jpg', '零基础入门首选让编程像搭积木一样好', '6-8岁', '<p>知识：理解计算机编程的基本概念，设计有趣的游戏和动画作品， 分析分解项目，完成从无到有的创作，规划研究管理小型项目。 能力:建立逻辑思维，树立解决问题意识，增加对学习的兴趣和信心，掌握编程基础知识</p>');

-- ----------------------------
-- Table structure for companyinfo_contact
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_contact`;
CREATE TABLE `companyinfo_contact`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `information` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contact_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wechat` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contact_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_contact
-- ----------------------------
INSERT INTO `companyinfo_contact` VALUES (1, '南西教育', '地址：保利时代广场B栋12楼', '（杨家坪步行街正西50米）', '电话：南西教育总机（023）00000000', '南西教育，为解决孩子各项问题的转向联系方式', '联系电话：（023）12345678', '邮箱 12333@qq.com', '微信号：censxc', 'contact/联系我们_02_hilq1Fo.jpg');

-- ----------------------------
-- Table structure for companyinfo_contact_bt
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_contact_bt`;
CREATE TABLE `companyinfo_contact_bt`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_contact_bt
-- ----------------------------
INSERT INTO `companyinfo_contact_bt` VALUES (1, '学校简介', 'SCHOOL SITUATION', 'carousel/1_qyOToCO.jpg', 'carousel/1_dcLr0ZO.jpg', 'carousel/3_zKLmjEB.jpg');

-- ----------------------------
-- Table structure for companyinfo_course
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_course`;
CREATE TABLE `companyinfo_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course1_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course1_int` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course2_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course2_int` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course3_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course3_int` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course4_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course4_int` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course5` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course5_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course5_int` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_course
-- ----------------------------
INSERT INTO `companyinfo_course` VALUES (1, '科目', 'COURSE', '语文', 'course/语文.jpg', '这是语文', '数学', 'course/数学.jpg', '这是数学', '英语', 'course/英语.jpg', '这是英语', '物理', 'course/物理.jpg', '这是物理', '化学', 'course/化学.jpg', '这是化学');

-- ----------------------------
-- Table structure for companyinfo_course_bt
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_course_bt`;
CREATE TABLE `companyinfo_course_bt`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_course_bt
-- ----------------------------
INSERT INTO `companyinfo_course_bt` VALUES (1, '学校简介', 'SCHOOL SITUATION', 'carousel/1_N68IC2Z.jpg', 'carousel/2_csXoI7A.jpg', 'carousel/3_qpBGGOY.jpg');

-- ----------------------------
-- Table structure for companyinfo_custom
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_custom`;
CREATE TABLE `companyinfo_custom`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course1_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course1_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course2_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course2_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course3_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course3_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course4_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course4_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course5` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course5_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course5_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course6` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course6_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course6_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `situation1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `situation2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `situation3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `situation4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `situation_img1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `situation5` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `situation6` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `situation7` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `situation8` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `situation_img2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_custom
-- ----------------------------
INSERT INTO `companyinfo_custom` VALUES (1, '定制一对一', 'CUSTOM ONE-TO-ONE', '分析学情', 'course/13.png', '<p>这是</p>\r\n\r\n<p>3</p>\r\n\r\n<p>4</p>', '定制计划', 'course/13_FsMLWvg.png', '<p>这是</p>', '学习报告', 'course/13_hezKmvu.png', '<p>这是</p>', '入学测试', 'course/13_y69HJhr.png', '<p>这是</p>', '分配老师', 'course/13_WuEHO6p.png', '<p>这是</p>', '建立档案', 'course/13_vjycuG4.png', '<p>这是</p>', '基础薄弱', '偏科严重', '方法不当', '备考盲目', 'course/left.png', '巩固复习', '专项提高', '提升效率', '方向指引', 'course/right.png');

-- ----------------------------
-- Table structure for companyinfo_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_dynamic`;
CREATE TABLE `companyinfo_dynamic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `articles_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `companyinfo_dynamic_articles_id_8aeeb9bd_fk_companyinfo_tag_id`(`articles_id`) USING BTREE,
  CONSTRAINT `companyinfo_dynamic_articles_id_8aeeb9bd_fk_companyinfo_tag_id` FOREIGN KEY (`articles_id`) REFERENCES `companyinfo_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_dynamic
-- ----------------------------
INSERT INTO `companyinfo_dynamic` VALUES (1, '活动1', 'hd', 'news/17.jpg', '2020-06-21 15:35:00.000000', '<p>活动数据1</p>', 1);
INSERT INTO `companyinfo_dynamic` VALUES (2, '咨询冷门测试', 'zx', 'news/jyfw.jpg', '2020-06-21 16:06:00.000000', '<p>冷门测试222</p>', 2);
INSERT INTO `companyinfo_dynamic` VALUES (3, '活动3', 'hd', 'news/xzzc.jpg', '2020-06-21 16:06:00.000000', '<p>活动3测试</p>', 3);
INSERT INTO `companyinfo_dynamic` VALUES (4, '活动4', 'hd', 'news/qwkt.jpg', '2020-06-21 16:07:00.000000', '<p><span style=\"font-size:16px\">教材由教研部数位经验丰富的教研大牛自主研发而成， 根据不同层次的学生学情，研发不同层次的教材，教学层次分明，实用性强教材由教研部数位经验丰富的教研大牛自主研发而成， 根据不同层次的学生学情，研发不同层次的教材，教学层次分明，实用性强教材由教研部数位经验丰富的教研大牛自主研发而成， 根据不同层次的学生学情，研发不同层次的教材，教学层次分明，实用性强教材由教研部数位经验丰富的教研大牛自主研发而成， 根据不同层次的学生学情，研发不同层次的教材，教学层次分明，实用性强</span></p>', 1);
INSERT INTO `companyinfo_dynamic` VALUES (5, '咨询测试', 'zx', 'news/left.png', '2020-06-21 16:07:00.000000', '<p>吃瓜咨询测试</p>', 1);
INSERT INTO `companyinfo_dynamic` VALUES (6, '热点', 'hd', 'news/lastSwipeIMG.jpg', '2020-06-21 16:07:00.000000', '<p>活动6活动6活动6活动6活动6活动6</p>', 3);
INSERT INTO `companyinfo_dynamic` VALUES (7, '咨询111', 'zx', 'news/right.png', '2020-06-21 16:08:00.000000', '<p>冷门咨询测试</p>', 2);

-- ----------------------------
-- Table structure for companyinfo_dynamic_bt
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_dynamic_bt`;
CREATE TABLE `companyinfo_dynamic_bt`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_dynamic_bt
-- ----------------------------
INSERT INTO `companyinfo_dynamic_bt` VALUES (1, '学校简介', 'SCHOOL SITUATION', 'carousel/1_JrH4uYP.jpg', 'carousel/2_PqWdV2P.jpg', 'carousel/3_wf3IqV1.jpg');

-- ----------------------------
-- Table structure for companyinfo_education
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_education`;
CREATE TABLE `companyinfo_education`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `second1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `third1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fourth1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fifth1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_education
-- ----------------------------
INSERT INTO `companyinfo_education` VALUES (1, '教育体系', 'EDUCATION SYSTEM', '基于国际知名的认知发展潜能去ZPD学习理论，独创“南西教育体系”', '还原学校上课模式。任课老师，班主任老师，定班教学', '目的性强的学习任务，自主学习能力培养', '科学定位，分层教学。基于现有理论水平教学', '搞笑有趣的教学活动，精准适度的悉心指导', '激发发现问题-解决问题-反思问题的潜力所在');

-- ----------------------------
-- Table structure for companyinfo_enterprise
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_enterprise`;
CREATE TABLE `companyinfo_enterprise`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `corpcrate1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `corpcrate2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `corpcrate3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `corpcrate4` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `corpcrate5` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `corpcrate6` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `corpcrate7` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `corpcrate8` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `corpcrate9` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `corpcrate10` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_enterprise
-- ----------------------------
INSERT INTO `companyinfo_enterprise` VALUES (1, '企业文化', 'ENTERPRISE CULTURE', '我们的愿景', '打造具有..', '我们的使命', '为天地..', '我们的价值', '与祖国..', '我们的理念', '永不作恶', '我们的精神', '为求其实');

-- ----------------------------
-- Table structure for companyinfo_first_class
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_first_class`;
CREATE TABLE `companyinfo_first_class`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `inner` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class1_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class1_int` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class2_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class2_int` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class3_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class3_int` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class4_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class4_int` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_first_class
-- ----------------------------
INSERT INTO `companyinfo_first_class` VALUES (1, '国内一流的教研团队', 'FIRST CLASS TEACHING AND RESEARCH', '打造专属于中国孩子的编程课', '基于“PIE”理念（项目教学/激发兴趣/鼓励探索） 进行编程教学大纲开发设计，倡导通过项目实战的方式，去激发学生的兴趣， 进一步提高学习的自我驱动力，获取新知识', 'XXX', 'programming/小南编程_05.jpg', '这是人的介绍', 'YYY', 'programming/小南编程_06.jpg', '这是人的介绍', 'ZZZ', 'programming/小南编程_07.jpg', '这是人的介绍', 'AAA', 'programming/小南编程_08.jpg', '这是人的介绍');

-- ----------------------------
-- Table structure for companyinfo_first_match
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_first_match`;
CREATE TABLE `companyinfo_first_match`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `carousel` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `match_title1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `match1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `inner1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `match2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `inner2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `match1_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `match2_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `match3_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_first_match
-- ----------------------------
INSERT INTO `companyinfo_first_match` VALUES (1, '精选国内顶尖赛事，真正做到学以致用', 'FIRST CLASS TEACHING AND RESEARCH', 'fourth', '信息学奥林匹克竞赛', 'SCRATCH', '<p>知识：理解计算机编程的基本概念，设计有趣的游戏和动画作品， 分析分解项目，完成从无到有的创作，规划研究管理小型项目。 能力:建立逻辑思维，树立解决问题意识，增加对学习的兴趣和信心，掌握编程基础知识</p>', 'PYTHON', '<p>知识：理解计算机编程的基本概念，设计有趣的游戏和动画作品， 分析分解项目，完成从无到有的创作，规划研究管理小型项目。 能力:建立逻辑思维，树立解决问题意识，增加对学习的兴趣和信心，掌握编程基础知识</p>', 'programming/小南编程_11.jpg', 'programming/小南编程_11_evNo4FS.jpg', 'programming/小南编程_11_UR6sjSB.jpg');
INSERT INTO `companyinfo_first_match` VALUES (2, '精选国内顶尖赛事，真正做到学以致用', 'FIRST CLASS TEACHING AND RESEARCH', 'third', '蓝桥杯大赛', 'SCRATCH', '<p>知识：理解计算机编程的基本概念，设计有趣的游戏和动画作品， 分析分解项目，完成从无到有的创作，规划研究管理小型项目。 能力:建立逻辑思维，树立解决问题意识，增加对学习的兴趣和信心，掌握编程基础知识</p>', 'PYTHON', '<p>知识：理解计算机编程的基本概念，设计有趣的游戏和动画作品， 分析分解项目，完成从无到有的创作，规划研究管理小型项目。 能力:建立逻辑思维，树立解决问题意识，增加对学习的兴趣和信心，掌握编程基础知识</p>', 'programming/小南编程_11_Ai5WACu.jpg', 'programming/小南编程_11_gLOu0bP.jpg', 'programming/小南编程_11_G3zmi7M.jpg');
INSERT INTO `companyinfo_first_match` VALUES (3, '精选国内顶尖赛事，真正做到学以致用', 'FIRST CLASS TEACHING AND RESEARCH', 'second', '全国青少年电子设计大赛', 'SCRATCH', '<p>知识：理解计算机编程的基本概念，设计有趣的游戏和动画作品， 分析分解项目，完成从无到有的创作，规划研究管理小型项目。 能力:建立逻辑思维，树立解决问题意识，增加对学习的兴趣和信心，掌握编程基础知识</p>\r\n\r\n<p><strong>强化：</strong></p>', 'PYTHON', '<p>知识：理解计算机编程的基本概念，设计有趣的游戏和动画作品， 分析分解项目，完成从无到有的创作，规划研究管理小型项目。 能力:建立逻辑思维，树立解决问题意识，增加对学习的兴趣和信心，掌握编程基础知识</p>', 'programming/小南编程_11_hDGsr11.jpg', 'programming/小南编程_11_qaP0c0g.jpg', 'programming/小南编程_11_SU3KOM2.jpg');
INSERT INTO `companyinfo_first_match` VALUES (4, '精选国内顶尖赛事，真正做到学以致用', 'FIRST CLASS TEACHING AND RESEARCH', 'first', '全国青少年创意编程设计大赛', 'SCRATCH', '<p>教育部门</p>\r\n\r\n<p><strong>主办单位</strong></p>\r\n\r\n<p><strong>举办时间：</strong></p>\r\n\r\n<p><strong>建议学习阶段</strong></p>\r\n\r\n<p><strong>知识点</strong></p>\r\n\r\n<p><strong>赛事难度：</strong></p>', 'PYTHON', '<p>教育部门</p>\r\n\r\n<p><strong>主办单位</strong></p>\r\n\r\n<p><strong>举办时间：</strong></p>\r\n\r\n<p><strong>建议学习阶段</strong></p>\r\n\r\n<p><strong>知识点</strong></p>\r\n\r\n<p><strong>赛事难度：</strong></p>', 'programming/小南编程_11_lNd7Hkj.jpg', 'programming/小南编程_11_WK49Doc.jpg', 'programming/小南编程_11_bWoKelu.jpg');

-- ----------------------------
-- Table structure for companyinfo_interest
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_interest`;
CREATE TABLE `companyinfo_interest`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `carousel` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course1_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course1_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course2_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course2_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course3_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course3_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_interest
-- ----------------------------
INSERT INTO `companyinfo_interest` VALUES (1, '趣味课堂', 'INTERESTING CLASSROOM', 'primary', '常规同步课', 'course/小学1.jpg', '<p>这是小学最左边第一个常规同步课程</p>', '专项训练课', 'course/小学2.jpg', '<p>这是小学中间的专项训练课</p>', '冲刺突破课', 'course/小学3.jpg', '<p>这是小学右边的冲刺突破课程</p>');
INSERT INTO `companyinfo_interest` VALUES (2, '趣味课堂', 'INTERESTING CLASSROOM', 'middle', '常规同步课', 'course/中学1.jpg', '<p>这是中学最左边第一个常规同步课程</p>\r\n\r\n<p>常规同步课程</p>', '专项训练课', 'course/中学2.jpg', '<p>这是中学中间的专项训练课</p>\r\n\r\n<p>常规同步课程</p>', '冲刺突破课', 'course/中学3.jpg', '<p>这是中学右边的冲刺突破课程</p>\r\n\r\n<p>常规同步课程</p>');

-- ----------------------------
-- Table structure for companyinfo_nancy_teacher
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_nancy_teacher`;
CREATE TABLE `companyinfo_nancy_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `carousel` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teach_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name3` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name4` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name5` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name6` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_nancy_teacher
-- ----------------------------
INSERT INTO `companyinfo_nancy_teacher` VALUES (1, '南西师资', 'PERSONS QUALIFIED TO TEACH', 'first', 'choose_teach/1.png', '第一个', '第二个', '第三个', '第四个', '第五个', '第六个');
INSERT INTO `companyinfo_nancy_teacher` VALUES (2, '南西师资', 'PERSONS QUALIFIED TO TEACH', 'second', 'choose_teach/2.png', '第一个', '第二个', '第三个', '第四个', '第五个', '第六个');
INSERT INTO `companyinfo_nancy_teacher` VALUES (3, '南西师资', 'PERSONS QUALIFIED TO TEACH', 'third', 'choose_teach/3.png', '第一个', '第二个', '第三个', '第四个', '第五个', '第六个');
INSERT INTO `companyinfo_nancy_teacher` VALUES (4, '南西师资', 'PERSONS QUALIFIED TO TEACH', 'fourth', 'choose_teach/4.png', '第一个', '第二个', '第三个', '第四个', '第五个', '第六个');
INSERT INTO `companyinfo_nancy_teacher` VALUES (5, '南西师资', 'PERSONS QUALIFIED TO TEACH', 'fifth', 'choose_teach/5.png', '第一个', '第二个', '第三个', '第四个', '第五个', '第六个');
INSERT INTO `companyinfo_nancy_teacher` VALUES (6, '南西师资', 'PERSONS QUALIFIED TO TEACH', 'sixth', 'choose_teach/6.png', '第一个', '第二个', '第三个', '第四个', '第五个', '第六个');

-- ----------------------------
-- Table structure for companyinfo_program_bt
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_program_bt`;
CREATE TABLE `companyinfo_program_bt`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_program_bt
-- ----------------------------
INSERT INTO `companyinfo_program_bt` VALUES (1, '学校简介', 'SCHOOL SITUATION', 'carousel/1_sm3CrDW.jpg', 'carousel/2_R7bXJGj.jpg', 'carousel/4_NCgv5SK.jpg');

-- ----------------------------
-- Table structure for companyinfo_programming
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_programming`;
CREATE TABLE `companyinfo_programming`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title2` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `program1_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `program1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `program1_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `program2_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `program2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `program2_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_programming
-- ----------------------------
INSERT INTO `companyinfo_programming` VALUES (1, '小南编程', 'PROGRAMMING PROGRAMMING', '线下双师+先上课后辅导', 'programming/1.jpg', '学习编程有什么好处', '<p>这是富文本编辑器</p>\r\n\r\n<p>1.这是</p>\r\n\r\n<p>1.这是</p>\r\n\r\n<p>1.这是</p>\r\n\r\n<p>1.这是</p>', 'programming/2.jpg', '什么是编程', '<p>这是富文本编辑器</p>\r\n\r\n<p>1.这是</p>\r\n\r\n<p>1.这是</p>\r\n\r\n<p>1.这是</p>');

-- ----------------------------
-- Table structure for companyinfo_reading_life
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_reading_life`;
CREATE TABLE `companyinfo_reading_life`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `carousel` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course1_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course1_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course2_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course2_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course3_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course3_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_reading_life
-- ----------------------------
INSERT INTO `companyinfo_reading_life` VALUES (1, '读书点亮生活', 'Reading LIGHTENS LIFE', 'first', 'read_life/1.jpg', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 这是</p>\r\n\r\n<p>需要总监定稿1读书</p>\r\n\r\n<p>点亮生活读书点亮生活</p>\r\n\r\n<h5><span style=\"color:#999999\"><span style=\"font-size:18px\">这里是有颜色的大号字体</span></span></h5>\r\n\r\n<p><span style=\"color:#999999\"><span style=\"font-size:18px\">这里是有颜色的大号字体</span></span></p>\r\n\r\n<p><span style=\"color:#999999\"><span style=\"font-size:18px\">这里是有颜色的大号字体</span></span></p>\r\n\r\n<p>这里是有颜色的大号字体</p>\r\n\r\n<p>这里是有颜色的大号字体</p>', 'read_life/2.jpg', '<p>这是需要总监定稿2</p>\r\n\r\n<p>读书点亮生活</p>', 'read_life/3.jpg', '<p>这是需要总监定稿3</p>\r\n\r\n<p>读书点亮生活</p>');
INSERT INTO `companyinfo_reading_life` VALUES (2, '读书点亮生活', 'Reading LIGHTENS LIFE', 'second', 'read_life/4.jpg', '<p>这是需要总监定稿1</p>', 'read_life/5.jpg', '<p>这是需要总监定稿2</p>', 'read_life/6.jpg', '<p>这是需要总监定稿3</p>');

-- ----------------------------
-- Table structure for companyinfo_service
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_service`;
CREATE TABLE `companyinfo_service`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `before_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `before_inner` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `in_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `in_inner` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `after_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `after_inner` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_service
-- ----------------------------
INSERT INTO `companyinfo_service` VALUES (1, '教育服务', 'EDUCATION SYSTEM', 'teach/课前.jpg', '<p>生活中，有许多这样的人，他们对人生有着种种设想与规划，有着十分完美的理想与愿望，可就是不用实际行动来实现它，这样一来，即使构想出再有价值的东西，也是胎死腹中，令人惋惜。</p>\r\n\r\n<p>&nbsp;</p>', 'teach/课中.jpg', '<p>这是课中的内容</p>', 'teach/课后.jpg', '<p>这是课后的内容</p>');

-- ----------------------------
-- Table structure for companyinfo_six_teach
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_six_teach`;
CREATE TABLE `companyinfo_six_teach`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `six_teach1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `six_teach2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `six_teach3` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `six_teach4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `six_teach5` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `six_teach6` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `six_teach7` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `six_teach8` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `six_teach9` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `six_teach10` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `six_teach11` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `six_teach12` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_six_teach
-- ----------------------------
INSERT INTO `companyinfo_six_teach` VALUES (1, '南西六步教学法', 'SIX STEP TEACHING METHOD', '课后跟踪', 'AFTER CLASS TRACKING', '情景导入', 'SCENARIO IMPORT', '知识梳理', 'KNOWLEDGE SORTING', '例题精讲', 'EXEPLIFICATION', '拓展巩固', 'EXPANSION ANDCONS OLIDATION', '落实效果', 'IMPLEMENT TATION EFFECT');

-- ----------------------------
-- Table structure for companyinfo_sixstep
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_sixstep`;
CREATE TABLE `companyinfo_sixstep`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `second1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `second2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `third1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `third2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fourth1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fourth2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fifth1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fifth2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sixth1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sixth2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_sixstep
-- ----------------------------
INSERT INTO `companyinfo_sixstep` VALUES (1, '六部教学法', 'SIX STEP TEACHING METHOD', '情景导入', '情景导入学习法', '知识梳理', '知识梳理的方法', '例题精讲', '例题精讲的方法', '拓展巩固', '拓展巩固的情况', '落实效果', '落实的效果', '课后跟踪', '课后的跟踪');

-- ----------------------------
-- Table structure for companyinfo_tag
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_tag`;
CREATE TABLE `companyinfo_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_tag
-- ----------------------------
INSERT INTO `companyinfo_tag` VALUES (1, '吃瓜');
INSERT INTO `companyinfo_tag` VALUES (2, '冷门');
INSERT INTO `companyinfo_tag` VALUES (3, '热点');
INSERT INTO `companyinfo_tag` VALUES (4, '关键字');
INSERT INTO `companyinfo_tag` VALUES (5, '关键字');
INSERT INTO `companyinfo_tag` VALUES (6, '关键字');
INSERT INTO `companyinfo_tag` VALUES (7, '关键字');
INSERT INTO `companyinfo_tag` VALUES (8, '关键字');
INSERT INTO `companyinfo_tag` VALUES (9, '关键字');

-- ----------------------------
-- Table structure for companyinfo_teach_bt
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_teach_bt`;
CREATE TABLE `companyinfo_teach_bt`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bt_carousel_img3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_teach_bt
-- ----------------------------
INSERT INTO `companyinfo_teach_bt` VALUES (1, '学校简介', 'SCHOOL SITUATION', 'carousel/1_Bautmgz.jpg', 'carousel/2_C3ebrII.jpg', 'carousel/3_G38DpaA.jpg');

-- ----------------------------
-- Table structure for companyinfo_teacher_select
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_teacher_select`;
CREATE TABLE `companyinfo_teacher_select`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `advertising1_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `urls` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `advertising2_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_teacher_select
-- ----------------------------
INSERT INTO `companyinfo_teacher_select` VALUES (1, '教师选拔', 'TEACHER SELECTION', 'advertising/tipLeft.jpg', 'https://cq.tantuw.com/School/6739', 'advertising/tipLeft_phPcHNl.jpg');

-- ----------------------------
-- Table structure for companyinfo_top_carousel
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_top_carousel`;
CREATE TABLE `companyinfo_top_carousel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `carousel_figure1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `carousel_figure2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `carousel_figure3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `carousel_figure4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `carousel_figure5` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_top_carousel
-- ----------------------------
INSERT INTO `companyinfo_top_carousel` VALUES (1, '023-00008888', 'carousel/1.jpg', 'carousel/2.jpg', 'carousel/3.jpg', 'carousel/4.jpg', 'carousel/5.jpg', 'http://www.nanxijy.com/');

-- ----------------------------
-- Table structure for companyinfo_why_choose
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo_why_choose`;
CREATE TABLE `companyinfo_why_choose`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_title2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `why1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `why1_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `why1_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `why2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `why2_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `why2_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `why3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `why3_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `why3_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `why4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `why4_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `why4_int` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companyinfo_why_choose
-- ----------------------------
INSERT INTO `companyinfo_why_choose` VALUES (1, '为什么选择小南编程', 'WHY CHOOSE PROGRAMMING', '线下双师+先上课后辅导', '激活孩子的学习热情，主动学习', 'programming/1_8330BFN.jpg', '<p>这是</p>\r\n\r\n<p>激活孩子的学习热情，主动学习</p>', '小南编程三大特色', 'programming/2_jN4LizK.jpg', '<p>这是</p>\r\n\r\n<p>小南编程三大特色</p>', '小南编程三大优势', 'programming/3.jpg', '<p>这是</p>\r\n\r\n<p>小南编程三大优势</p>', 'CSTA课程设计指标', 'programming/4.jpg', '<p>这是</p>\r\n\r\n<p><strong>CSTA课程设计指标</strong></p>');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 164 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2020-06-21 14:25:02.750047', '1', 'Tag object (1)', 1, '[{\"added\": {}}]', 31, 1);
INSERT INTO `django_admin_log` VALUES (2, '2020-06-21 14:25:06.995038', '2', 'Tag object (2)', 1, '[{\"added\": {}}]', 31, 1);
INSERT INTO `django_admin_log` VALUES (3, '2020-06-21 14:56:34.880104', '1', 'Top_Carousel object (1)', 1, '[{\"added\": {}}]', 33, 1);
INSERT INTO `django_admin_log` VALUES (4, '2020-06-21 15:02:30.456275', '1', 'Bottom_carousel object (1)', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (5, '2020-06-21 15:03:31.836893', '2', 'Bottom_carousel object (2)', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (6, '2020-06-21 15:03:44.007901', '3', 'Bottom_carousel object (3)', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (7, '2020-06-21 15:03:55.721711', '4', 'Bottom_carousel object (4)', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (8, '2020-06-21 15:04:06.686767', '5', 'Bottom_carousel object (5)', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (9, '2020-06-21 15:06:54.317051', '1', 'CHOOSE Us', 1, '[{\"added\": {}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (10, '2020-06-21 15:07:38.548119', '2', 'CHOOSE Us', 1, '[{\"added\": {}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (11, '2020-06-21 15:08:24.795426', '3', 'CHOOSE Us', 1, '[{\"added\": {}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (12, '2020-06-21 15:08:48.333761', '1', 'Six_Teach object (1)', 1, '[{\"added\": {}}]', 29, 1);
INSERT INTO `django_admin_log` VALUES (13, '2020-06-21 15:09:19.938661', '1', 'Nancy_Teacher object (1)', 1, '[{\"added\": {}}]', 25, 1);
INSERT INTO `django_admin_log` VALUES (14, '2020-06-21 15:09:40.608534', '2', 'Nancy_Teacher object (2)', 1, '[{\"added\": {}}]', 25, 1);
INSERT INTO `django_admin_log` VALUES (15, '2020-06-21 15:10:14.201894', '1', 'Reading_Life object (1)', 1, '[{\"added\": {}}]', 27, 1);
INSERT INTO `django_admin_log` VALUES (16, '2020-06-21 15:11:09.842151', '1', 'Accompanying object (1)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (17, '2020-06-21 15:13:02.025487', '1', 'About object (1)', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (18, '2020-06-21 15:13:18.990671', '1', 'Enterprise object (1)', 1, '[{\"added\": {}}]', 21, 1);
INSERT INTO `django_admin_log` VALUES (19, '2020-06-21 15:13:51.768350', '1', 'Course object (1)', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (20, '2020-06-21 15:14:44.709901', '1', 'Custom object (1)', 1, '[{\"added\": {}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (21, '2020-06-21 15:15:23.082137', '1', 'SixStep object (1)', 1, '[{\"added\": {}}]', 30, 1);
INSERT INTO `django_admin_log` VALUES (22, '2020-06-21 15:15:30.556161', '1', 'Choose_Nancy object (1)', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (23, '2020-06-21 15:15:37.583085', '1', 'Education object (1)', 1, '[{\"added\": {}}]', 20, 1);
INSERT INTO `django_admin_log` VALUES (24, '2020-06-21 15:16:02.776500', '1', 'Service object (1)', 1, '[{\"added\": {}}]', 28, 1);
INSERT INTO `django_admin_log` VALUES (25, '2020-06-21 15:17:05.058194', '1', 'Programming object (1)', 1, '[{\"added\": {}}]', 26, 1);
INSERT INTO `django_admin_log` VALUES (26, '2020-06-21 15:17:34.551496', '1', 'Why_Choose object (1)', 1, '[{\"added\": {}}]', 34, 1);
INSERT INTO `django_admin_log` VALUES (27, '2020-06-21 15:17:52.918046', '1', 'First_Class object (1)', 1, '[{\"added\": {}}]', 22, 1);
INSERT INTO `django_admin_log` VALUES (28, '2020-06-21 15:18:30.945508', '1', 'Class_Teach object (1)', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (29, '2020-06-21 15:18:57.517718', '1', 'First_Match object (1)', 1, '[{\"added\": {}}]', 23, 1);
INSERT INTO `django_admin_log` VALUES (30, '2020-06-21 15:19:26.688110', '2', 'First_Match object (2)', 1, '[{\"added\": {}}]', 23, 1);
INSERT INTO `django_admin_log` VALUES (31, '2020-06-21 15:19:41.818106', '3', 'First_Match object (3)', 1, '[{\"added\": {}}]', 23, 1);
INSERT INTO `django_admin_log` VALUES (32, '2020-06-21 15:19:56.857528', '4', 'First_Match object (4)', 1, '[{\"added\": {}}]', 23, 1);
INSERT INTO `django_admin_log` VALUES (33, '2020-06-21 15:21:21.245058', '4', 'First_Match object (4)', 2, '[{\"changed\": {\"fields\": [\"\\u7b2c\\u51e0\\u7ec4\", \"\\u7b80\\u4ecb\", \"\\u7b80\\u4ecb\"]}}]', 23, 1);
INSERT INTO `django_admin_log` VALUES (34, '2020-06-21 15:23:04.587692', '4', 'First_Match object (4)', 2, '[{\"changed\": {\"fields\": [\"\\u7b80\\u4ecb\"]}}]', 23, 1);
INSERT INTO `django_admin_log` VALUES (35, '2020-06-21 15:23:53.387232', '3', 'First_Match object (3)', 2, '[{\"changed\": {\"fields\": [\"\\u6bd4\\u8d5b\\u6807\\u9898\\u4e00\"]}}]', 23, 1);
INSERT INTO `django_admin_log` VALUES (36, '2020-06-21 15:24:07.965569', '2', 'First_Match object (2)', 2, '[{\"changed\": {\"fields\": [\"\\u7b2c\\u51e0\\u7ec4\", \"\\u6bd4\\u8d5b\\u6807\\u9898\\u4e00\"]}}]', 23, 1);
INSERT INTO `django_admin_log` VALUES (37, '2020-06-21 15:25:12.569424', '1', 'First_Match object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u7b2c\\u51e0\\u7ec4\", \"\\u6bd4\\u8d5b\\u6807\\u9898\\u4e00\"]}}]', 23, 1);
INSERT INTO `django_admin_log` VALUES (38, '2020-06-21 15:25:35.725647', '3', 'First_Match object (3)', 2, '[{\"changed\": {\"fields\": [\"\\u7b2c\\u51e0\\u7ec4\"]}}]', 23, 1);
INSERT INTO `django_admin_log` VALUES (39, '2020-06-21 15:26:02.311559', '1', 'Contact object (1)', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (40, '2020-06-21 15:26:49.601889', '1', 'Teacher_select object (1)', 1, '[{\"added\": {}}]', 32, 1);
INSERT INTO `django_admin_log` VALUES (41, '2020-06-21 15:30:47.877832', '3', 'Tag object (3)', 1, '[{\"added\": {}}]', 31, 1);
INSERT INTO `django_admin_log` VALUES (42, '2020-06-21 15:35:54.485008', '1', 'Dynamic object (1)', 1, '[{\"added\": {}}]', 35, 1);
INSERT INTO `django_admin_log` VALUES (43, '2020-06-21 16:06:48.334356', '2', 'Dynamic object (2)', 1, '[{\"added\": {}}]', 35, 1);
INSERT INTO `django_admin_log` VALUES (44, '2020-06-21 16:07:11.141478', '3', 'Dynamic object (3)', 1, '[{\"added\": {}}]', 35, 1);
INSERT INTO `django_admin_log` VALUES (45, '2020-06-21 16:07:28.382472', '4', 'Dynamic object (4)', 1, '[{\"added\": {}}]', 35, 1);
INSERT INTO `django_admin_log` VALUES (46, '2020-06-21 16:07:46.104131', '5', 'Dynamic object (5)', 1, '[{\"added\": {}}]', 35, 1);
INSERT INTO `django_admin_log` VALUES (47, '2020-06-21 16:08:04.643623', '6', 'Dynamic object (6)', 1, '[{\"added\": {}}]', 35, 1);
INSERT INTO `django_admin_log` VALUES (48, '2020-06-21 16:08:24.240294', '7', 'Dynamic object (7)', 1, '[{\"added\": {}}]', 35, 1);
INSERT INTO `django_admin_log` VALUES (49, '2020-06-21 17:02:52.441259', '3', 'Tag object (3)', 2, '[{\"changed\": {\"fields\": [\"\\u5173\\u952e\\u5b57\"]}}]', 31, 1);
INSERT INTO `django_admin_log` VALUES (50, '2020-06-21 17:02:58.381571', '2', 'Tag object (2)', 2, '[{\"changed\": {\"fields\": [\"\\u5173\\u952e\\u5b57\"]}}]', 31, 1);
INSERT INTO `django_admin_log` VALUES (51, '2020-06-21 17:03:03.730738', '1', 'Tag object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u5173\\u952e\\u5b57\"]}}]', 31, 1);
INSERT INTO `django_admin_log` VALUES (52, '2020-06-21 17:04:02.247780', '6', 'Dynamic object (6)', 2, '[{\"changed\": {\"fields\": [\"\\u5173\\u952e\\u5b57\", \"\\u65b0\\u95fb\\u6807\\u9898\"]}}]', 35, 1);
INSERT INTO `django_admin_log` VALUES (53, '2020-06-21 17:04:19.675955', '7', 'Dynamic object (7)', 2, '[{\"changed\": {\"fields\": [\"\\u65b0\\u95fb\\u5185\\u5bb9\"]}}]', 35, 1);
INSERT INTO `django_admin_log` VALUES (54, '2020-06-21 17:04:45.799760', '5', 'Dynamic object (5)', 2, '[{\"changed\": {\"fields\": [\"\\u65b0\\u95fb\\u7c7b\\u522b\", \"\\u65b0\\u95fb\\u5185\\u5bb9\"]}}]', 35, 1);
INSERT INTO `django_admin_log` VALUES (55, '2020-06-21 17:06:19.334605', '2', 'Dynamic object (2)', 2, '[{\"changed\": {\"fields\": [\"\\u65b0\\u95fb\\u6807\\u9898\", \"\\u65b0\\u95fb\\u7c7b\\u522b\", \"\\u65b0\\u95fb\\u5185\\u5bb9\"]}}]', 35, 1);
INSERT INTO `django_admin_log` VALUES (56, '2020-06-21 17:07:33.127233', '5', 'Dynamic object (5)', 2, '[{\"changed\": {\"fields\": [\"\\u65b0\\u95fb\\u6807\\u9898\"]}}]', 35, 1);
INSERT INTO `django_admin_log` VALUES (57, '2020-06-21 17:07:42.507291', '2', 'Dynamic object (2)', 2, '[{\"changed\": {\"fields\": [\"\\u65b0\\u95fb\\u6807\\u9898\"]}}]', 35, 1);
INSERT INTO `django_admin_log` VALUES (58, '2020-06-21 17:53:41.508876', '4', 'Tag object (4)', 1, '[{\"added\": {}}]', 31, 1);
INSERT INTO `django_admin_log` VALUES (59, '2020-06-21 17:53:48.515809', '5', 'Tag object (5)', 1, '[{\"added\": {}}]', 31, 1);
INSERT INTO `django_admin_log` VALUES (60, '2020-06-21 17:53:51.353221', '6', 'Tag object (6)', 1, '[{\"added\": {}}]', 31, 1);
INSERT INTO `django_admin_log` VALUES (61, '2020-06-21 17:53:54.808147', '7', 'Tag object (7)', 1, '[{\"added\": {}}]', 31, 1);
INSERT INTO `django_admin_log` VALUES (62, '2020-06-21 17:53:57.414159', '8', 'Tag object (8)', 1, '[{\"added\": {}}]', 31, 1);
INSERT INTO `django_admin_log` VALUES (63, '2020-06-21 17:54:00.008431', '9', 'Tag object (9)', 1, '[{\"added\": {}}]', 31, 1);
INSERT INTO `django_admin_log` VALUES (64, '2020-06-21 20:08:51.045269', '1', 'Advertising2 object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u662f\\u5426\\u5904\\u7406\"]}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (65, '2020-06-21 20:08:59.971769', '1', 'Advertising1 object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u662f\\u5426\\u5904\\u7406\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (66, '2020-06-21 22:21:49.943693', '1', 'Interest object (1)', 1, '[{\"added\": {}}]', 24, 1);
INSERT INTO `django_admin_log` VALUES (67, '2020-06-21 22:22:17.749368', '2', 'Interest object (2)', 1, '[{\"added\": {}}]', 24, 1);
INSERT INTO `django_admin_log` VALUES (68, '2020-06-21 22:22:36.893456', '1', 'Interest object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u4ecb\\u7ecd\", \"\\u4ecb\\u7ecd\", \"\\u4ecb\\u7ecd\"]}}]', 24, 1);
INSERT INTO `django_admin_log` VALUES (69, '2020-06-23 00:14:05.650458', '1', 'Bt_Nav object (1)', 1, '[{\"added\": {}}]', 36, 1);
INSERT INTO `django_admin_log` VALUES (70, '2020-06-23 00:15:29.566607', '2', 'Bt_Nav object (2)', 1, '[{\"added\": {}}]', 36, 1);
INSERT INTO `django_admin_log` VALUES (71, '2020-06-23 00:27:22.851999', '2', 'Bt_Nav object (2)', 2, '[{\"changed\": {\"fields\": [\"\\u6821\\u533a\\u540d\\u79f0\", \"\\u5907\\u6848\\u53f71\\u94fe\\u63a5\", \"\\u5907\\u6848\\u53f72\\u94fe\\u63a5\"]}}]', 36, 1);
INSERT INTO `django_admin_log` VALUES (72, '2020-06-23 00:27:43.968737', '1', 'Bt_Nav object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u5907\\u6848\\u53f71\\u94fe\\u63a5\", \"\\u5907\\u6848\\u53f72\\u94fe\\u63a5\"]}}]', 36, 1);
INSERT INTO `django_admin_log` VALUES (73, '2020-06-23 20:14:49.789372', '1', 'Service object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u8bfe\\u524d\\u5185\\u5bb9\"]}}]', 28, 1);
INSERT INTO `django_admin_log` VALUES (74, '2020-06-23 20:18:13.782174', '1', 'Service object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u8bfe\\u524d\\u5185\\u5bb9\"]}}]', 28, 1);
INSERT INTO `django_admin_log` VALUES (75, '2020-06-23 20:24:02.822848', '4', 'Dynamic object (4)', 2, '[{\"changed\": {\"fields\": [\"\\u65b0\\u95fb\\u5185\\u5bb9\"]}}]', 35, 1);
INSERT INTO `django_admin_log` VALUES (76, '2020-06-23 20:29:43.272422', '4', 'Dynamic object (4)', 2, '[{\"changed\": {\"fields\": [\"\\u65b0\\u95fb\\u5185\\u5bb9\"]}}]', 35, 1);
INSERT INTO `django_admin_log` VALUES (77, '2020-06-23 21:51:05.697059', '1', 'Bt_Nav object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u7535\\u8bdd\\u53f7\\u7801\"]}}]', 36, 1);
INSERT INTO `django_admin_log` VALUES (78, '2020-06-24 16:01:11.602447', '1', 'Custom object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u4ecb\\u7ecd\", \"\\u4ecb\\u7ecd\", \"\\u4ecb\\u7ecd\", \"\\u4ecb\\u7ecd\", \"\\u4ecb\\u7ecd\", \"\\u4ecb\\u7ecd\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (79, '2020-06-24 16:15:12.349482', '1', 'Reading_Life object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u4ecb\\u7ecd\\u4e00\", \"\\u4ecb\\u7ecd\\u4e8c\", \"\\u4ecb\\u7ecd\\u4e09\"]}}]', 27, 1);
INSERT INTO `django_admin_log` VALUES (80, '2020-06-24 16:15:55.844607', '1', 'Reading_Life object (1)', 2, '[]', 27, 1);
INSERT INTO `django_admin_log` VALUES (81, '2020-06-24 16:24:17.501788', '2', 'Interest object (2)', 2, '[{\"changed\": {\"fields\": [\"\\u4ecb\\u7ecd\", \"\\u4ecb\\u7ecd\", \"\\u4ecb\\u7ecd\"]}}]', 24, 1);
INSERT INTO `django_admin_log` VALUES (82, '2020-06-24 16:29:44.682397', '3', 'CHOOSE Us', 2, '[]', 15, 1);
INSERT INTO `django_admin_log` VALUES (83, '2020-06-24 16:30:11.884513', '3', 'CHOOSE Us', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u72471\", \"\\u56fe\\u72472\", \"\\u56fe\\u72473\", \"\\u56fe\\u72474\"]}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (84, '2020-06-24 16:32:20.132570', '3', 'CHOOSE Us', 2, '[{\"changed\": {\"fields\": [\"\\u9009\\u62e9\\u6211\\u4eec\", \"\\u9009\\u62e9\\u6211\\u4eec\\u65b9\\u5757\\u56fe\"]}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (85, '2020-06-24 16:32:37.967102', '3', 'CHOOSE Us', 2, '[{\"changed\": {\"fields\": [\"\\u9009\\u62e9\\u6211\\u4eec\", \"\\u9009\\u62e9\\u6211\\u4eec\\u65b9\\u5757\\u56fe\"]}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (86, '2020-06-24 17:07:25.704574', '1', 'Reading_Life object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u4ecb\\u7ecd\\u4e00\"]}}]', 27, 1);
INSERT INTO `django_admin_log` VALUES (87, '2020-06-24 17:08:17.414360', '1', 'Reading_Life object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u4ecb\\u7ecd\\u4e00\"]}}]', 27, 1);
INSERT INTO `django_admin_log` VALUES (88, '2020-06-24 17:50:38.319950', '1', 'Reading_Life object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u4ecb\\u7ecd\\u4e00\"]}}]', 27, 1);
INSERT INTO `django_admin_log` VALUES (89, '2020-06-24 17:50:55.900105', '1', 'Reading_Life object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u4ecb\\u7ecd\\u4e00\"]}}]', 27, 1);
INSERT INTO `django_admin_log` VALUES (90, '2020-06-24 17:53:39.727245', '1', 'Reading_Life object (1)', 2, '[]', 27, 1);
INSERT INTO `django_admin_log` VALUES (91, '2020-06-24 17:57:34.329939', '1', 'Service object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u8bfe\\u524d\\u5185\\u5bb9\", \"\\u8bfe\\u4e2d\\u5185\\u5bb9\", \"\\u8bfe\\u540e\\u5185\\u5bb9\"]}}]', 28, 1);
INSERT INTO `django_admin_log` VALUES (92, '2020-06-24 19:14:06.128198', '1', 'About object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u5b66\\u6821\\u7b80\\u4ecb\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (93, '2020-06-24 19:14:11.778584', '1', 'About object (1)', 2, '[]', 9, 1);
INSERT INTO `django_admin_log` VALUES (94, '2020-06-24 19:25:06.862248', '1', 'Reading_Life object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u4ecb\\u7ecd\\u4e00\"]}}]', 27, 1);
INSERT INTO `django_admin_log` VALUES (95, '2020-06-24 19:25:12.121309', '1', 'Reading_Life object (1)', 2, '[]', 27, 1);
INSERT INTO `django_admin_log` VALUES (96, '2020-06-24 19:59:09.597629', '1', 'Reading_Life object (1)', 2, '[]', 27, 1);
INSERT INTO `django_admin_log` VALUES (97, '2020-06-24 20:08:53.816178', '1', 'Reading_Life object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u4ecb\\u7ecd\\u4e00\"]}}]', 27, 1);
INSERT INTO `django_admin_log` VALUES (98, '2020-06-24 20:09:21.651847', '1', 'Reading_Life object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u4ecb\\u7ecd\\u4e00\"]}}]', 27, 1);
INSERT INTO `django_admin_log` VALUES (99, '2020-06-24 20:09:35.270044', '1', 'Reading_Life object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u4ecb\\u7ecd\\u4e00\"]}}]', 27, 1);
INSERT INTO `django_admin_log` VALUES (100, '2020-06-24 20:13:27.124153', '2', 'Interest object (2)', 2, '[]', 24, 1);
INSERT INTO `django_admin_log` VALUES (101, '2020-06-24 20:23:43.654817', '1', 'Service object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u8bfe\\u524d\\u5185\\u5bb9\"]}}]', 28, 1);
INSERT INTO `django_admin_log` VALUES (102, '2020-06-24 20:27:00.313928', '1', 'Accompanying object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u4ecb\\u7ecd\", \"\\u4ecb\\u7ecd\", \"\\u4ecb\\u7ecd\", \"\\u4ecb\\u7ecd\", \"\\u4ecb\\u7ecd\", \"\\u4ecb\\u7ecd\"]}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (103, '2020-06-24 20:33:08.041512', '1', 'Choose_Nancy object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u7b2c\\u4e00\\u4ecb\\u7ecd\", \"\\u7b2c\\u4e8c\\u4ecb\\u7ecd\", \"\\u7b2c\\u4e09\\u4ecb\\u7ecd\", \"\\u7b2c\\u56db\\u4ecb\\u7ecd\", \"\\u7b2c\\u4e94\\u4ecb\\u7ecd\"]}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (104, '2020-06-24 20:33:18.753929', '1', 'Choose_Nancy object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u7b2c\\u4e00\\u4ecb\\u7ecd\"]}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (105, '2020-06-24 20:33:28.935766', '1', 'Choose_Nancy object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u7b2c\\u4e00\\u4ecb\\u7ecd\"]}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (106, '2020-06-24 20:33:43.423990', '1', 'Choose_Nancy object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u7b2c\\u4e00\\u4ecb\\u7ecd\"]}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (107, '2020-06-24 20:35:19.715102', '1', 'Why_Choose object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u4ecb\\u7ecd\", \"\\u4ecb\\u7ecd\", \"\\u4ecb\\u7ecd\", \"\\u4ecb\\u7ecd\"]}}]', 34, 1);
INSERT INTO `django_admin_log` VALUES (108, '2020-06-24 20:37:30.114654', '1', 'Class_Teach object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u7b80\\u4ecb\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (109, '2020-06-24 20:40:29.311723', '1', 'Service object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u8bfe\\u524d\\u5185\\u5bb9\"]}}]', 28, 1);
INSERT INTO `django_admin_log` VALUES (110, '2020-06-25 22:01:09.598878', '1', 'About_Bt object (1)', 1, '[{\"added\": {}}]', 37, 1);
INSERT INTO `django_admin_log` VALUES (111, '2020-06-25 22:09:08.273816', '1', 'Course_Bt object (1)', 1, '[{\"added\": {}}]', 39, 1);
INSERT INTO `django_admin_log` VALUES (112, '2020-06-25 22:09:38.594876', '1', 'Teach_Bt object (1)', 1, '[{\"added\": {}}]', 42, 1);
INSERT INTO `django_admin_log` VALUES (113, '2020-06-25 22:10:20.532086', '1', 'Dynamic_Bt object (1)', 1, '[{\"added\": {}}]', 40, 1);
INSERT INTO `django_admin_log` VALUES (114, '2020-06-25 22:10:47.407037', '1', 'Program_Bt object (1)', 1, '[{\"added\": {}}]', 41, 1);
INSERT INTO `django_admin_log` VALUES (115, '2020-06-25 22:11:01.255863', '1', 'Contact_Bt object (1)', 1, '[{\"added\": {}}]', 38, 1);
INSERT INTO `django_admin_log` VALUES (116, '2020-06-25 22:12:17.504044', '1', 'About_Bt object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u4e00\", \"\\u56fe\\u7247\\u4e8c\", \"\\u56fe\\u7247\\u4e09\"]}}]', 37, 1);
INSERT INTO `django_admin_log` VALUES (117, '2020-06-25 22:16:47.559587', '4', 'First_Match object (4)', 2, '[{\"changed\": {\"fields\": [\"\\u6bd4\\u8d5b\\u6807\\u9898\\u4e00\"]}}]', 23, 1);
INSERT INTO `django_admin_log` VALUES (118, '2020-07-01 21:03:58.702266', '1', 'Accompanying object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\"]}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (119, '2020-07-01 21:23:28.965785', '1', 'Contact object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u90ae\\u7bb1\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (120, '2020-07-03 17:19:19.737204', '1', 'Accompanying object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\"]}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (121, '2020-07-03 20:58:20.874822', '1', 'Custom object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (122, '2020-07-03 21:00:48.934271', '1', 'Accompanying object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\"]}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (123, '2020-07-06 23:21:03.876359', '1', 'Top_Carousel object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u9876\\u90e8\\u8f6e\\u64ad\\u56fe1\", \"\\u9876\\u90e8\\u8f6e\\u64ad\\u56fe2\", \"\\u9876\\u90e8\\u8f6e\\u64ad\\u56fe3\", \"\\u9876\\u90e8\\u8f6e\\u64ad\\u56fe4\", \"\\u9876\\u90e8\\u8f6e\\u64ad\\u56fe5\"]}}]', 33, 1);
INSERT INTO `django_admin_log` VALUES (124, '2020-07-06 23:21:30.798827', '1', 'Bottom_carousel object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u4e00\", \"\\u56fe\\u7247\\u4e8c\", \"\\u56fe\\u7247\\u4e09\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (125, '2020-07-06 23:21:42.723406', '2', 'Bottom_carousel object (2)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u4e00\", \"\\u56fe\\u7247\\u4e8c\", \"\\u56fe\\u7247\\u4e09\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (126, '2020-07-06 23:21:59.036670', '3', 'Bottom_carousel object (3)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u4e00\", \"\\u56fe\\u7247\\u4e8c\", \"\\u56fe\\u7247\\u4e09\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (127, '2020-07-06 23:22:11.271647', '4', 'Bottom_carousel object (4)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u4e00\", \"\\u56fe\\u7247\\u4e8c\", \"\\u56fe\\u7247\\u4e09\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (128, '2020-07-06 23:22:20.837201', '5', 'Bottom_carousel object (5)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u4e00\", \"\\u56fe\\u7247\\u4e8c\", \"\\u56fe\\u7247\\u4e09\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (129, '2020-07-06 23:23:11.012688', '1', 'CHOOSE Us', 2, '[{\"changed\": {\"fields\": [\"\\u9009\\u62e9\\u6211\\u4eec\\u65b9\\u5757\\u56fe\", \"\\u56fe\\u72471\", \"\\u56fe\\u72472\", \"\\u56fe\\u72473\", \"\\u56fe\\u72474\", \"\\u56fe\\u72475\", \"\\u56fe\\u72476\"]}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (130, '2020-07-06 23:23:39.571315', '2', 'CHOOSE Us', 2, '[{\"changed\": {\"fields\": [\"\\u9009\\u62e9\\u6211\\u4eec\\u65b9\\u5757\\u56fe\", \"\\u56fe\\u72471\", \"\\u56fe\\u72472\", \"\\u56fe\\u72473\", \"\\u56fe\\u72474\", \"\\u56fe\\u72475\", \"\\u56fe\\u72476\"]}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (131, '2020-07-06 23:24:04.676595', '3', 'CHOOSE Us', 2, '[{\"changed\": {\"fields\": [\"\\u9009\\u62e9\\u6211\\u4eec\\u65b9\\u5757\\u56fe\", \"\\u56fe\\u72471\", \"\\u56fe\\u72472\", \"\\u56fe\\u72473\", \"\\u56fe\\u72474\", \"\\u56fe\\u72475\", \"\\u56fe\\u72476\"]}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (132, '2020-07-06 23:24:36.971743', '1', 'Nancy_Teacher object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u5e08\\u8d44\\u5927\\u56fe\\uff08\\u516d\\u5408\\u4e00\\uff09\"]}}]', 25, 1);
INSERT INTO `django_admin_log` VALUES (133, '2020-07-06 23:24:43.053116', '2', 'Nancy_Teacher object (2)', 2, '[{\"changed\": {\"fields\": [\"\\u5e08\\u8d44\\u5927\\u56fe\\uff08\\u516d\\u5408\\u4e00\\uff09\"]}}]', 25, 1);
INSERT INTO `django_admin_log` VALUES (134, '2020-07-06 23:24:52.414179', '3', 'Nancy_Teacher object (3)', 1, '[{\"added\": {}}]', 25, 1);
INSERT INTO `django_admin_log` VALUES (135, '2020-07-06 23:24:59.031033', '4', 'Nancy_Teacher object (4)', 1, '[{\"added\": {}}]', 25, 1);
INSERT INTO `django_admin_log` VALUES (136, '2020-07-06 23:25:04.904979', '5', 'Nancy_Teacher object (5)', 1, '[{\"added\": {}}]', 25, 1);
INSERT INTO `django_admin_log` VALUES (137, '2020-07-06 23:25:10.925341', '6', 'Nancy_Teacher object (6)', 1, '[{\"added\": {}}]', 25, 1);
INSERT INTO `django_admin_log` VALUES (138, '2020-07-06 23:25:44.640970', '1', 'Reading_Life object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u4e00\", \"\\u56fe\\u7247\\u4e8c\", \"\\u56fe\\u7247\\u4e09\"]}}]', 27, 1);
INSERT INTO `django_admin_log` VALUES (139, '2020-07-06 23:26:00.349743', '2', 'Reading_Life object (2)', 1, '[{\"added\": {}}]', 27, 1);
INSERT INTO `django_admin_log` VALUES (140, '2020-07-06 23:26:47.187585', '1', 'Accompanying object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\"]}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (141, '2020-07-06 23:28:18.000797', '1', 'About object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u5de6\\u8fb9\\u56fe\\u7247\", \"\\u53f3\\u8fb9\\u56fe\\u7247\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (142, '2020-07-06 23:28:37.815209', '1', 'About_Bt object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u4e00\", \"\\u56fe\\u7247\\u4e8c\", \"\\u56fe\\u7247\\u4e09\"]}}]', 37, 1);
INSERT INTO `django_admin_log` VALUES (143, '2020-07-06 23:29:08.321497', '1', 'Course object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\"]}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (144, '2020-07-06 23:29:55.912907', '1', 'Custom object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (145, '2020-07-06 23:30:17.702135', '1', 'Interest object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\", \"\\u4ecb\\u7ecd\", \"\\u56fe\\u7247\", \"\\u4ecb\\u7ecd\", \"\\u56fe\\u7247\", \"\\u4ecb\\u7ecd\"]}}]', 24, 1);
INSERT INTO `django_admin_log` VALUES (146, '2020-07-06 23:30:29.396384', '2', 'Interest object (2)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\"]}}]', 24, 1);
INSERT INTO `django_admin_log` VALUES (147, '2020-07-06 23:30:52.339585', '1', 'Course_Bt object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u4e00\", \"\\u56fe\\u7247\\u4e8c\", \"\\u56fe\\u7247\\u4e09\"]}}]', 39, 1);
INSERT INTO `django_admin_log` VALUES (148, '2020-07-06 23:31:25.465768', '1', 'Service object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u8bfe\\u524d\\u56fe\\u7247\", \"\\u8bfe\\u4e2d\\u56fe\\u7247\", \"\\u8bfe\\u540e\\u56fe\\u7247\"]}}]', 28, 1);
INSERT INTO `django_admin_log` VALUES (149, '2020-07-06 23:31:42.801756', '1', 'Teach_Bt object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u4e00\", \"\\u56fe\\u7247\\u4e8c\", \"\\u56fe\\u7247\\u4e09\"]}}]', 42, 1);
INSERT INTO `django_admin_log` VALUES (150, '2020-07-06 23:32:14.297472', '1', 'Dynamic_Bt object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u4e00\", \"\\u56fe\\u7247\\u4e8c\", \"\\u56fe\\u7247\\u4e09\"]}}]', 40, 1);
INSERT INTO `django_admin_log` VALUES (151, '2020-07-06 23:32:32.233190', '1', 'Programming object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\", \"\\u56fe\\u7247\"]}}]', 26, 1);
INSERT INTO `django_admin_log` VALUES (152, '2020-07-06 23:32:54.808867', '1', 'Why_Choose object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\"]}}]', 34, 1);
INSERT INTO `django_admin_log` VALUES (153, '2020-07-06 23:33:48.075139', '1', 'Class_Teach object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (154, '2020-07-06 23:34:14.618767', '1', 'Program_Bt object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u4e00\", \"\\u56fe\\u7247\\u4e8c\", \"\\u56fe\\u7247\\u4e09\"]}}]', 41, 1);
INSERT INTO `django_admin_log` VALUES (155, '2020-07-06 23:34:32.166907', '1', 'Contact object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u80cc\\u666f\\u56fe\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (156, '2020-07-06 23:34:47.416628', '1', 'Contact_Bt object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u4e00\", \"\\u56fe\\u7247\\u4e8c\", \"\\u56fe\\u7247\\u4e09\"]}}]', 38, 1);
INSERT INTO `django_admin_log` VALUES (157, '2020-07-06 23:39:27.746607', '1', 'Contact_Bt object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\\u4e8c\"]}}]', 38, 1);
INSERT INTO `django_admin_log` VALUES (158, '2020-07-06 23:39:47.745098', '1', 'Contact object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u80cc\\u666f\\u56fe\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (159, '2020-07-06 23:43:19.625271', '1', 'Custom object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u5b9a\\u5236\\u5185\\u5bb9\\u5de6\\u8fb9\\u56fe\\u7247\", \"\\u5b9a\\u5236\\u5185\\u5bb9\\u53f3\\u8fb9\\u56fe\\u7247\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (160, '2020-07-06 23:45:04.345990', '1', 'Custom object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\", \"\\u56fe\\u7247\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (161, '2020-07-08 11:01:50.687369', '1', 'Contact object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u80cc\\u666f\\u56fe\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (162, '2020-07-08 11:09:42.223518', '1', 'Contact object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u90ae\\u7bb1\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (163, '2020-07-10 15:48:35.063512', '3', 'First_Match object (3)', 2, '[{\"changed\": {\"fields\": [\"\\u7b80\\u4ecb\"]}}]', 23, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (3, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (5, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (6, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (9, 'companyinfo', 'about');
INSERT INTO `django_content_type` VALUES (37, 'companyinfo', 'about_bt');
INSERT INTO `django_content_type` VALUES (10, 'companyinfo', 'accompanying');
INSERT INTO `django_content_type` VALUES (11, 'companyinfo', 'advertising1');
INSERT INTO `django_content_type` VALUES (12, 'companyinfo', 'advertising2');
INSERT INTO `django_content_type` VALUES (13, 'companyinfo', 'bottom_carousel');
INSERT INTO `django_content_type` VALUES (36, 'companyinfo', 'bt_nav');
INSERT INTO `django_content_type` VALUES (14, 'companyinfo', 'choose_nancy');
INSERT INTO `django_content_type` VALUES (15, 'companyinfo', 'choose_us');
INSERT INTO `django_content_type` VALUES (16, 'companyinfo', 'class_teach');
INSERT INTO `django_content_type` VALUES (17, 'companyinfo', 'contact');
INSERT INTO `django_content_type` VALUES (38, 'companyinfo', 'contact_bt');
INSERT INTO `django_content_type` VALUES (18, 'companyinfo', 'course');
INSERT INTO `django_content_type` VALUES (39, 'companyinfo', 'course_bt');
INSERT INTO `django_content_type` VALUES (19, 'companyinfo', 'custom');
INSERT INTO `django_content_type` VALUES (35, 'companyinfo', 'dynamic');
INSERT INTO `django_content_type` VALUES (40, 'companyinfo', 'dynamic_bt');
INSERT INTO `django_content_type` VALUES (20, 'companyinfo', 'education');
INSERT INTO `django_content_type` VALUES (21, 'companyinfo', 'enterprise');
INSERT INTO `django_content_type` VALUES (22, 'companyinfo', 'first_class');
INSERT INTO `django_content_type` VALUES (23, 'companyinfo', 'first_match');
INSERT INTO `django_content_type` VALUES (24, 'companyinfo', 'interest');
INSERT INTO `django_content_type` VALUES (25, 'companyinfo', 'nancy_teacher');
INSERT INTO `django_content_type` VALUES (26, 'companyinfo', 'programming');
INSERT INTO `django_content_type` VALUES (41, 'companyinfo', 'program_bt');
INSERT INTO `django_content_type` VALUES (27, 'companyinfo', 'reading_life');
INSERT INTO `django_content_type` VALUES (28, 'companyinfo', 'service');
INSERT INTO `django_content_type` VALUES (30, 'companyinfo', 'sixstep');
INSERT INTO `django_content_type` VALUES (29, 'companyinfo', 'six_teach');
INSERT INTO `django_content_type` VALUES (31, 'companyinfo', 'tag');
INSERT INTO `django_content_type` VALUES (32, 'companyinfo', 'teacher_select');
INSERT INTO `django_content_type` VALUES (42, 'companyinfo', 'teach_bt');
INSERT INTO `django_content_type` VALUES (33, 'companyinfo', 'top_carousel');
INSERT INTO `django_content_type` VALUES (34, 'companyinfo', 'why_choose');
INSERT INTO `django_content_type` VALUES (7, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (1, 'jet', 'bookmark');
INSERT INTO `django_content_type` VALUES (2, 'jet', 'pinnedapplication');
INSERT INTO `django_content_type` VALUES (8, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-06-21 14:22:34.916322');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-06-21 14:22:35.220475');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-06-21 14:22:37.587148');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-06-21 14:22:37.690880');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-06-21 14:22:37.696855');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-06-21 14:22:37.800605');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-06-21 14:22:37.840471');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-06-21 14:22:37.910284');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-06-21 14:22:37.916267');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-06-21 14:22:37.972118');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-06-21 14:22:37.975113');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-06-21 14:22:37.982119');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-06-21 14:22:38.031985');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-06-21 14:22:38.074844');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-06-21 14:22:38.125739');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-06-21 14:22:38.132716');
INSERT INTO `django_migrations` VALUES (17, 'companyinfo', '0001_initial', '2020-06-21 14:22:38.990398');
INSERT INTO `django_migrations` VALUES (18, 'jet', '0001_initial', '2020-06-21 14:22:39.126059');
INSERT INTO `django_migrations` VALUES (19, 'jet', '0002_delete_userdashboardmodule', '2020-06-21 14:22:39.145001');
INSERT INTO `django_migrations` VALUES (20, 'sessions', '0001_initial', '2020-06-21 14:22:39.173930');
INSERT INTO `django_migrations` VALUES (21, 'companyinfo', '0002_auto_20200621_1735', '2020-06-21 17:35:24.390315');
INSERT INTO `django_migrations` VALUES (22, 'companyinfo', '0003_auto_20200623_0012', '2020-06-23 00:12:37.320964');
INSERT INTO `django_migrations` VALUES (23, 'companyinfo', '0004_auto_20200623_2112', '2020-06-23 21:12:53.849452');
INSERT INTO `django_migrations` VALUES (24, 'companyinfo', '0005_auto_20200624_2043', '2020-06-24 20:43:45.897763');
INSERT INTO `django_migrations` VALUES (25, 'companyinfo', '0006_auto_20200625_2146', '2020-06-25 21:46:30.593684');
INSERT INTO `django_migrations` VALUES (26, 'companyinfo', '0007_auto_20200701_2122', '2020-07-01 21:22:58.012609');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('08mnps3tbvapq71v7k53kded9uts1m8o', 'MDI4MjI4NTc4NDI2MjljNmQ2ZDZmMTM2MTVjOTg0N2UyNzIwOGEyMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNzk2ZDZkNWNjYjFlNDlhY2QxYTM4ZGJlNWQ2MjBhMDU3NmRjZGY1In0=', '2020-07-07 21:11:18.877011');
INSERT INTO `django_session` VALUES ('1tkrhwzg8wrdj9cf8oopnlmzmtc3ukl4', 'NzBlZDI0ZmJhYjg1Y2RhNmFjM2IwODZmYTMxNTUyODU1ZGI3ZGFjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZTM5ZGZlMGQwOGMyZGYzMGNiNWJiZmNiNGY0MDEyM2FjMDNiNDIxIn0=', '2020-07-05 15:22:50.135947');
INSERT INTO `django_session` VALUES ('54zo6oij1opeps3li20a1h9xc9aoftx4', 'YWNjYTc3ZjA0YWIzYzFmODljOTQ3Mjk3Y2ZhNTlkODQzYzk3ZmJlMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjAzNmZlNTczNTQwZmZiMjlkNWE3ZWFkZDEyM2ZiZDBhZjhkMmEyIn0=', '2020-07-07 21:50:44.546279');
INSERT INTO `django_session` VALUES ('567i9fkqz5m5qtxk6mfdhhodw2fc9ebq', 'OGY2MmE3MjA5NmU2MjhhZDI3NWQzZGY5MjNmNjFhNjk2ZWMxMGRlNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMDhiZjc0OWEyMWUxNjZjMTA0YTNkOTM1ZWEzMTY2NTVmNzMyMzVkIn0=', '2020-07-08 16:29:40.934364');
INSERT INTO `django_session` VALUES ('5u7ha5z7c3m3y73vj84hzrrwdsgqui7x', 'OTJjODE4YjUzMTdkMzcwYTI0Mjc4YTEyNmY3MDY4Zjg5OWE3OWUyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDBkMmQ4YmJhZTNhYjkyODJmYTY3ZWU0ZTFhYTIxODQxNGJjM2U0In0=', '2020-07-24 15:47:42.242675');
INSERT INTO `django_session` VALUES ('8hwbnr10grur5r743i0pga5vpj8bvqt0', 'MDI4MjI4NTc4NDI2MjljNmQ2ZDZmMTM2MTVjOTg0N2UyNzIwOGEyMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNzk2ZDZkNWNjYjFlNDlhY2QxYTM4ZGJlNWQ2MjBhMDU3NmRjZGY1In0=', '2020-07-07 20:13:46.527442');
INSERT INTO `django_session` VALUES ('901qm9kwwkas801b09104nnc5n9jrpma', 'ZDc4N2JiZmUzNjM3M2VhYTYxMThhNjRlMTA2Nzg1NjdmOTBlMDkyODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzUyOWYxMTQyZWZiZWNkMjViYjVjYTkxOGZiMjgwYjk4NzM4ZWVhIn0=', '2020-07-05 17:42:42.918675');
INSERT INTO `django_session` VALUES ('dqxr9x2055qhjj47lfaxpbs2715rltgf', 'MTI5YWJkY2UzNzJkYmE1YTUwNDE2ZjI1ZGFlMmNkZDJhMjJjMWYxZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMDNhYzgwMDRiYjdlOTRjZDJiMDVmYmIzNDAxNWY5NDBjMTU5YmYxIn0=', '2020-07-06 15:44:17.897110');
INSERT INTO `django_session` VALUES ('exy5ynntnb8h8p53ehjoey0caw8zuesc', 'NzBlZDI0ZmJhYjg1Y2RhNmFjM2IwODZmYTMxNTUyODU1ZGI3ZGFjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZTM5ZGZlMGQwOGMyZGYzMGNiNWJiZmNiNGY0MDEyM2FjMDNiNDIxIn0=', '2020-07-05 14:24:45.136384');
INSERT INTO `django_session` VALUES ('eyji9fhe3pon5ji0i15sx1898aifnndm', 'NzBlZDI0ZmJhYjg1Y2RhNmFjM2IwODZmYTMxNTUyODU1ZGI3ZGFjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZTM5ZGZlMGQwOGMyZGYzMGNiNWJiZmNiNGY0MDEyM2FjMDNiNDIxIn0=', '2020-07-05 15:59:36.752046');
INSERT INTO `django_session` VALUES ('fl533a276vazzz2smbze8vewn3n3xeq0', 'OGY2MmE3MjA5NmU2MjhhZDI3NWQzZGY5MjNmNjFhNjk2ZWMxMGRlNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMDhiZjc0OWEyMWUxNjZjMTA0YTNkOTM1ZWEzMTY2NTVmNzMyMzVkIn0=', '2020-07-08 17:50:00.483720');
INSERT INTO `django_session` VALUES ('g6axew9h8qhz3gs0zjw7jwrf0hoajnwq', 'OGY2MmE3MjA5NmU2MjhhZDI3NWQzZGY5MjNmNjFhNjk2ZWMxMGRlNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMDhiZjc0OWEyMWUxNjZjMTA0YTNkOTM1ZWEzMTY2NTVmNzMyMzVkIn0=', '2020-07-08 16:31:46.883619');
INSERT INTO `django_session` VALUES ('h8r0olye0a95ra4khuimxrkv1xe72dwz', 'NjJmMjM2MzNmZWY2YjFkYzE2YzQ1YjNkYmRhODU5Zjk4ZmQ0ZGM1MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MTZlYmRlMjM2YmNmZWI3MzcxMDQ2MjU2NGEyYzRkZGVhMTdlNjJlIn0=', '2020-07-07 09:53:54.986275');
INSERT INTO `django_session` VALUES ('leiytw2cq9yw7rby6w5lu647t27j4sbr', 'ODdhYWM2MzdkMWYzYjczYTJiYjYxMDYyZTZkZGNkM2NjNGY0MzE5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4M2MyMzFjNzFmMzg2MjM5NzI2NGQwMmJkY2I1ZDM5ZTNlOTJlNTRmIn0=', '2020-07-07 21:23:40.396351');
INSERT INTO `django_session` VALUES ('pwds6w5esd074bgioprfeqrwumn0d0lm', 'ZDc4N2JiZmUzNjM3M2VhYTYxMThhNjRlMTA2Nzg1NjdmOTBlMDkyODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzUyOWYxMTQyZWZiZWNkMjViYjVjYTkxOGZiMjgwYjk4NzM4ZWVhIn0=', '2020-07-05 17:35:31.900459');
INSERT INTO `django_session` VALUES ('qr2vc1gyff7aneeou6ow581u9kkqcfb3', 'NzVlYjkxYzI3MTlkNjExYTA4NTA2NDFhYjhjNmI5NjFjZmM2MTI5Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDBkOTA1MTYyOTZkYWI2NTQyZGYxNDAxOTMwZjNjMTlhZGFmYjU1In0=', '2020-07-07 00:12:51.333746');
INSERT INTO `django_session` VALUES ('xyxntligg4m4cio22784w9ambblq67fe', 'OGY2MmE3MjA5NmU2MjhhZDI3NWQzZGY5MjNmNjFhNjk2ZWMxMGRlNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMDhiZjc0OWEyMWUxNjZjMTA0YTNkOTM1ZWEzMTY2NTVmNzMyMzVkIn0=', '2020-07-08 16:14:30.136226');
INSERT INTO `django_session` VALUES ('z430oybaqnmwaf68i0nhillqyf4vzf83', 'OGY2MmE3MjA5NmU2MjhhZDI3NWQzZGY5MjNmNjFhNjk2ZWMxMGRlNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMDhiZjc0OWEyMWUxNjZjMTA0YTNkOTM1ZWEzMTY2NTVmNzMyMzVkIn0=', '2020-07-08 19:22:33.941149');

-- ----------------------------
-- Table structure for jet_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `jet_bookmark`;
CREATE TABLE `jet_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `date_add` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jet_pinnedapplication
-- ----------------------------
DROP TABLE IF EXISTS `jet_pinnedapplication`;
CREATE TABLE `jet_pinnedapplication`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `date_add` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
