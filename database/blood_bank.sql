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

 Date: 11/10/2021 16:13:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blood_types
-- ----------------------------
DROP TABLE IF EXISTS `blood_types`;
CREATE TABLE `blood_types`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blood_types
-- ----------------------------
INSERT INTO `blood_types` VALUES (1, 'A Positive', 'A+', '2021-10-11 05:07:03', '2021-10-11 05:07:03');
INSERT INTO `blood_types` VALUES (2, 'O Positive', 'O+', '2021-10-11 05:07:11', '2021-10-11 05:07:11');

-- ----------------------------
-- Table structure for districts
-- ----------------------------
DROP TABLE IF EXISTS `districts`;
CREATE TABLE `districts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `bn_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of districts
-- ----------------------------
INSERT INTO `districts` VALUES (1, 'Comilla', 1, 'কুমিল্লা', '23.4682747', '91.1788135', 'www.comilla.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (2, 'Feni', 1, 'ফেনী', '23.023231', '91.3840844', 'www.feni.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (3, 'Brahmanbaria', 1, 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286', 'www.brahmanbaria.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (4, 'Rangamati', 1, 'রাঙ্গামাটি', NULL, NULL, 'www.rangamati.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (5, 'Noakhali', 1, 'নোয়াখালী', '22.869563', '91.099398', 'www.noakhali.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (6, 'Chandpur', 1, 'চাঁদপুর', '23.2332585', '90.6712912', 'www.chandpur.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (7, 'Lakshmipur', 1, 'লক্ষ্মীপুর', '22.942477', '90.841184', 'www.lakshmipur.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (8, 'Chattogram', 1, 'চট্টগ্রাম', '22.335109', '91.834073', 'www.chittagong.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (9, 'Coxsbazar', 1, 'কক্সবাজার', NULL, NULL, 'www.coxsbazar.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (10, 'Khagrachhari', 1, 'খাগড়াছড়ি', '23.119285', '91.984663', 'www.khagrachhari.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (11, 'Bandarban', 1, 'বান্দরবান', '22.1953275', '92.2183773', 'www.bandarban.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (12, 'Sirajganj', 2, 'সিরাজগঞ্জ', '24.4533978', '89.7006815', 'www.sirajganj.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (13, 'Pabna', 2, 'পাবনা', '23.998524', '89.233645', 'www.pabna.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (14, 'Bogura', 2, 'বগুড়া', '24.8465228', '89.377755', 'www.bogra.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (15, 'Rajshahi', 2, 'রাজশাহী', NULL, NULL, 'www.rajshahi.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (16, 'Natore', 2, 'নাটোর', '24.420556', '89.000282', 'www.natore.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (17, 'Joypurhat', 2, 'জয়পুরহাট', NULL, NULL, 'www.joypurhat.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (18, 'Chapainawabganj', 2, 'চাঁপাইনবাবগঞ্জ', '24.5965034', '88.2775122', 'www.chapainawabganj.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (19, 'Naogaon', 2, 'নওগাঁ', NULL, NULL, 'www.naogaon.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (20, 'Jashore', 3, 'যশোর', '23.16643', '89.2081126', 'www.jessore.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (21, 'Satkhira', 3, 'সাতক্ষীরা', NULL, NULL, 'www.satkhira.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (22, 'Meherpur', 3, 'মেহেরপুর', '23.762213', '88.631821', 'www.meherpur.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (23, 'Narail', 3, 'নড়াইল', '23.172534', '89.512672', 'www.narail.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (24, 'Chuadanga', 3, 'চুয়াডাঙ্গা', '23.6401961', '88.841841', 'www.chuadanga.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (25, 'Kushtia', 3, 'কুষ্টিয়া', '23.901258', '89.120482', 'www.kushtia.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (26, 'Magura', 3, 'মাগুরা', '23.487337', '89.419956', 'www.magura.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (27, 'Khulna', 3, 'খুলনা', '22.815774', '89.568679', 'www.khulna.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (28, 'Bagerhat', 3, 'বাগেরহাট', '22.651568', '89.785938', 'www.bagerhat.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (29, 'Jhenaidah', 3, 'ঝিনাইদহ', '23.5448176', '89.1539213', 'www.jhenaidah.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (30, 'Jhalakathi', 4, 'ঝালকাঠি', NULL, NULL, 'www.jhalakathi.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (31, 'Patuakhali', 4, 'পটুয়াখালী', '22.3596316', '90.3298712', 'www.patuakhali.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (32, 'Pirojpur', 4, 'পিরোজপুর', NULL, NULL, 'www.pirojpur.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (33, 'Barisal', 4, 'বরিশাল', NULL, NULL, 'www.barisal.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (34, 'Bhola', 4, 'ভোলা', '22.685923', '90.648179', 'www.bhola.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (35, 'Barguna', 4, 'বরগুনা', NULL, NULL, 'www.barguna.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (36, 'Sylhet', 5, 'সিলেট', '24.8897956', '91.8697894', 'www.sylhet.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (37, 'Moulvibazar', 5, 'মৌলভীবাজার', '24.482934', '91.777417', 'www.moulvibazar.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (38, 'Habiganj', 5, 'হবিগঞ্জ', '24.374945', '91.41553', 'www.habiganj.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (39, 'Sunamganj', 5, 'সুনামগঞ্জ', '25.0658042', '91.3950115', 'www.sunamganj.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (40, 'Narsingdi', 6, 'নরসিংদী', '23.932233', '90.71541', 'www.narsingdi.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (41, 'Gazipur', 6, 'গাজীপুর', '24.0022858', '90.4264283', 'www.gazipur.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (42, 'Shariatpur', 6, 'শরীয়তপুর', NULL, NULL, 'www.shariatpur.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (43, 'Narayanganj', 6, 'নারায়ণগঞ্জ', '23.63366', '90.496482', 'www.narayanganj.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (44, 'Tangail', 6, 'টাঙ্গাইল', '24.26361358', '89.91794786', 'www.tangail.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (45, 'Kishoreganj', 6, 'কিশোরগঞ্জ', '24.444937', '90.776575', 'www.kishoreganj.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (46, 'Manikganj', 6, 'মানিকগঞ্জ', NULL, NULL, 'www.manikganj.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (47, 'Dhaka', 6, 'ঢাকা', '23.7115253', '90.4111451', 'www.dhaka.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (48, 'Munshiganj', 6, 'মুন্সিগঞ্জ', NULL, NULL, 'www.munshiganj.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (49, 'Rajbari', 6, 'রাজবাড়ী', '23.7574305', '89.6444665', 'www.rajbari.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (50, 'Madaripur', 6, 'মাদারীপুর', '23.164102', '90.1896805', 'www.madaripur.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (51, 'Gopalganj', 6, 'গোপালগঞ্জ', '23.0050857', '89.8266059', 'www.gopalganj.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (52, 'Faridpur', 6, 'ফরিদপুর', '23.6070822', '89.8429406', 'www.faridpur.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (53, 'Panchagarh', 7, 'পঞ্চগড়', '26.3411', '88.5541606', 'www.panchagarh.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (54, 'Dinajpur', 7, 'দিনাজপুর', '25.6217061', '88.6354504', 'www.dinajpur.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (55, 'Lalmonirhat', 7, 'লালমনিরহাট', NULL, NULL, 'www.lalmonirhat.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (56, 'Nilphamari', 7, 'নীলফামারী', '25.931794', '88.856006', 'www.nilphamari.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (57, 'Gaibandha', 7, 'গাইবান্ধা', '25.328751', '89.528088', 'www.gaibandha.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (58, 'Thakurgaon', 7, 'ঠাকুরগাঁও', '26.0336945', '88.4616834', 'www.thakurgaon.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (59, 'Rangpur', 7, 'রংপুর', '25.7558096', '89.244462', 'www.rangpur.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (60, 'Kurigram', 7, 'কুড়িগ্রাম', '25.805445', '89.636174', 'www.kurigram.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (61, 'Sherpur', 8, 'শেরপুর', '25.0204933', '90.0152966', 'www.sherpur.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (62, 'Mymensingh', 8, 'ময়মনসিংহ', '24.7465670', '90.4072093', 'www.mymensingh.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (63, 'Jamalpur', 8, 'জামালপুর', '24.937533', '89.937775', 'www.jamalpur.gov.bd', NULL, NULL);
INSERT INTO `districts` VALUES (64, 'Netrokona', 8, 'নেত্রকোণা', '24.870955', '90.727887', 'www.netrokona.gov.bd', NULL, NULL);

-- ----------------------------
-- Table structure for donations
-- ----------------------------
DROP TABLE IF EXISTS `donations`;
CREATE TABLE `donations`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `donation_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of donations
-- ----------------------------

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
) ENGINE = MyISAM AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (22, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (23, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (24, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (25, '2021_04_23_213908_create_roles_table', 1);
INSERT INTO `migrations` VALUES (26, '2021_04_23_214829_create_role_user_table', 1);
INSERT INTO `migrations` VALUES (27, '2021_10_11_032639_create_districts_table', 1);
INSERT INTO `migrations` VALUES (28, '2021_10_11_033650_create_blood_types_table', 1);
INSERT INTO `migrations` VALUES (29, '2021_10_11_044855_create_donations_table', 1);

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
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES (1, 1, 2, NULL, NULL);

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
INSERT INTO `roles` VALUES (1, 'Admin', '2021-10-11 05:04:51', '2021-10-11 05:04:51');
INSERT INTO `roles` VALUES (2, 'Donor', '2021-10-11 05:04:57', '2021-10-11 05:04:57');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `blood_type` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `birth_date` date NULL DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `district_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `temperature` int(11) NULL DEFAULT NULL,
  `pulse` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `weight` int(11) NULL DEFAULT NULL,
  `hemoglobin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Karim', 'Uddin', 'karim@gmail.com', NULL, '$2y$10$/JjntI3F/xqZCMXsafD4Xu3Kb9PnnZmgaHdnQE7ia/qbuFEDrlJpa', NULL, 2, NULL, NULL, 47, NULL, NULL, NULL, NULL, NULL, '01717852644', NULL, '2021-10-11 05:37:54', '2021-10-11 05:37:54');

SET FOREIGN_KEY_CHECKS = 1;
