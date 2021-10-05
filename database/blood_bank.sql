/*
 Navicat Premium Data Transfer

 Source Server         : MySQL-Localhost
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : 127.0.0.1:3306
 Source Schema         : blood_bank

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 06/10/2021 02:12:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for donates
-- ----------------------------
DROP TABLE IF EXISTS `donates`;
CREATE TABLE `donates`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `patient_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `donation_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of donates
-- ----------------------------
INSERT INTO `donates` VALUES (1, 9, 'Karim', 'Dhaka', '2021-06-01', '2021-10-06 01:57:05', '2021-10-06 01:57:05');
INSERT INTO `donates` VALUES (2, 9, 'Rahim', 'as das d', '2021-06-01', '2021-10-06 01:58:58', '2021-10-06 01:58:58');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2021_04_23_213908_create_roles_table', 1);
INSERT INTO `migrations` VALUES (5, '2021_04_23_214829_create_role_user_table', 1);
INSERT INTO `migrations` VALUES (6, '2021_10_06_013437_create_donates_table', 2);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES (1, 1, 1, NULL, NULL);
INSERT INTO `role_user` VALUES (2, 1, 2, NULL, NULL);
INSERT INTO `role_user` VALUES (3, 2, 2, NULL, NULL);
INSERT INTO `role_user` VALUES (4, 3, 2, NULL, NULL);
INSERT INTO `role_user` VALUES (5, 4, 2, NULL, NULL);
INSERT INTO `role_user` VALUES (6, 5, 2, NULL, NULL);
INSERT INTO `role_user` VALUES (7, 6, 2, NULL, NULL);
INSERT INTO `role_user` VALUES (8, 7, 2, NULL, NULL);
INSERT INTO `role_user` VALUES (9, 8, 2, NULL, NULL);
INSERT INTO `role_user` VALUES (10, 9, 2, NULL, NULL);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin', '2021-05-16 01:55:18', '2021-05-16 01:55:18');
INSERT INTO `roles` VALUES (2, 'Doner', '2021-05-16 01:55:18', '2021-05-16 01:55:18');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gender` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `blood_type` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `birth_date` date NULL DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `temperature` int(11) NULL DEFAULT NULL,
  `pulse` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `weight` int(11) NULL DEFAULT NULL,
  `hemoglobin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Parag', 'Adhikary', 'm', 'O+', '1998-02-13', 'East Razabazar, Firmgate, Dhaka', 'Dhaka', 98, '1', '87-116', 64, '17', '01717852644', 'pintu@gmail.com', '2021-05-16 01:55:18', '$2y$10$qYADufVydjdl8S9LMy9x0.shM6JuoAOMkhtkTTFEtXjdgiM4CuU8O', 'P1YOh8T1mC', '2021-05-16 01:55:18', '2021-05-24 05:42:52');
INSERT INTO `users` VALUES (4, 'Karim', 'Uddin', 'm', 'O+', '1998-02-13', 'Dhaka', 'Dhaka', 98, '1', '87-116', 64, '17', '01717852644', 'karim@gmail.com', NULL, '$2y$10$PAZNXxgfGTx/WhJDLNHC0ukZBufgswTeJ9mCTXZo0mZf3fDlKtNZK', NULL, '2021-05-24 05:54:14', '2021-05-24 05:54:14');
INSERT INTO `users` VALUES (9, 'Karim', 'Uddin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01717852644', 'nobopintu@gmail.com', NULL, '$2y$10$eFcBp32EowfhyVsInRnNOujKYvfZRUff3zIUzP6ArCn/QU727uzQG', NULL, '2021-10-05 02:18:17', '2021-10-05 02:18:17');

SET FOREIGN_KEY_CHECKS = 1;
