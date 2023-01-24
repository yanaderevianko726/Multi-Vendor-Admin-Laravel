-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 31, 2022 at 04:39 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idelvrco_swushd_app_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_transactions`
--

CREATE TABLE `account_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `current_balance` decimal(24,2) NOT NULL,
  `amount` decimal(24,2) NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `add_ons`
--

CREATE TABLE `add_ons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(24,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_ons`
--

INSERT INTO `add_ons` (`id`, `name`, `price`, `created_at`, `updated_at`, `restaurant_id`, `status`) VALUES
(1, 'Mushrooms', '12.00', '2022-07-15 19:12:06', '2022-08-11 06:57:11', 1, 1),
(2, 'Ice Cream', '2.00', '2022-07-20 22:21:22', '2022-07-22 14:10:44', 2, 1),
(3, 'Tomato Salad', '16.99', '2022-07-22 14:02:30', '2022-07-22 14:02:30', 1, 1),
(4, 'Chocolette', '8.00', '2022-07-22 14:03:16', '2022-07-22 14:03:16', 2, 1),
(5, 'Ice Cream', '2.00', '2022-07-22 14:03:35', '2022-07-22 14:03:35', 1, 1),
(6, 'Chicken Sandwich', '10.00', '2022-07-22 14:04:15', '2022-08-11 06:50:25', 1, 1),
(7, 'Tomato Salad', '5.00', '2022-07-22 14:04:36', '2022-07-22 14:04:36', 3, 1),
(8, 'Chicken Sandwich', '2.00', '2022-07-22 14:04:47', '2022-07-22 14:04:47', 3, 1),
(9, 'Chocolette', '3.00', '2022-07-22 14:04:57', '2022-07-22 14:04:57', 3, 1),
(10, 'Platter', '5.00', '2022-07-22 14:05:16', '2022-07-22 14:05:16', 1, 1),
(11, 'Platter', '3.00', '2022-07-22 14:05:30', '2022-07-22 14:05:30', 2, 1),
(12, 'Ice Cream', '3.00', '2022-07-22 14:06:02', '2022-07-22 14:06:02', 3, 1),
(13, 'Starter', '2.00', '2022-07-22 14:06:17', '2022-07-22 14:06:17', 3, 1),
(14, 'Egg Sandwich', '3.00', '2022-07-22 14:06:57', '2022-07-22 14:06:57', 3, 1),
(15, 'Fried Bread', '2.00', '2022-07-22 14:07:27', '2022-07-22 14:07:27', 3, 1),
(16, 'Ice Cream', '3.00', '2022-07-22 14:07:40', '2022-07-22 14:07:40', 4, 1),
(17, 'Tomato Salad', '5.00', '2022-07-22 14:07:49', '2022-07-22 14:07:49', 4, 1),
(18, 'Egg Sandwich', '3.00', '2022-07-22 14:08:02', '2022-07-22 14:08:02', 4, 1),
(19, 'Tomato Salad', '2.00', '2022-07-22 14:09:20', '2022-07-22 14:09:20', 5, 1),
(20, 'Egg Sandwich', '3.00', '2022-07-22 14:09:32', '2022-07-22 14:09:32', 5, 1),
(21, 'Ice Cream', '3.00', '2022-07-22 14:09:42', '2022-07-22 14:09:42', 5, 1),
(22, 'Chocolette', '2.00', '2022-07-22 14:09:57', '2022-07-22 14:09:57', 5, 1),
(23, 'Chicken Sandwich', '5.00', '2022-07-22 14:10:15', '2022-07-22 14:10:15', 5, 1),
(24, 'Egg Sandwich', '2.00', '2022-07-22 14:11:13', '2022-07-22 14:11:13', 2, 1),
(25, 'Chocolette', '3.00', '2022-07-22 14:11:48', '2022-07-22 14:11:48', 4, 1),
(26, 'Pletter', '5.00', '2022-07-22 14:12:05', '2022-07-22 14:12:05', 4, 1),
(27, 'Tomato Salad', '3.00', '2022-07-22 14:12:40', '2022-07-22 14:12:40', 6, 1),
(28, 'Chocolette', '5.00', '2022-07-22 14:12:54', '2022-07-22 14:12:54', 6, 1),
(29, 'Egg Sandwich', '3.00', '2022-07-22 14:13:07', '2022-07-22 14:13:07', 6, 1),
(30, 'Chicken Sandwich', '5.00', '2022-07-22 14:13:29', '2022-07-22 14:13:29', 6, 1),
(31, 'Tomato Salad', '3.00', '2022-07-22 14:14:06', '2022-07-22 14:14:06', 7, 1),
(32, 'Egg Sandwich', '5.00', '2022-07-22 14:14:31', '2022-07-22 14:14:31', 7, 1),
(33, 'Chocolette', '3.00', '2022-07-22 14:14:43', '2022-07-22 14:14:43', 7, 1),
(34, 'Chicken Sandwich', '6.00', '2022-07-22 14:14:56', '2022-07-22 14:14:56', 7, 1),
(35, 'Tomato Salad', '5.00', '2022-07-22 14:15:17', '2022-07-22 14:15:17', 8, 1),
(36, 'Ice Cream', '6.00', '2022-07-22 14:15:29', '2022-07-22 14:15:29', 8, 1),
(37, 'Egg Sandwich', '6.00', '2022-07-22 14:15:37', '2022-07-22 14:15:37', 8, 1),
(38, 'Chocolette', '6.00', '2022-07-22 14:15:50', '2022-07-22 14:15:50', 8, 1),
(39, 'Cold Juice', '5.00', '2022-07-25 19:39:11', '2022-07-25 19:39:11', 5, 1),
(40, 'Veg Salad', '2.00', '2022-07-25 19:39:30', '2022-07-25 19:39:30', 5, 1),
(41, 'Chocolette', '5.00', '2022-07-25 19:43:38', '2022-07-25 19:43:38', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `f_name`, `l_name`, `phone`, `email`, `image`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `zone_id`) VALUES
(1, 'Admin', 'Admin', '+380-123-456-789', 'admin@admin.com', '2022-07-15-62d145f413a59.png', '$2y$10$twlRaSHDR2O5qlCV5tsxNuLWElQoHI3yb0RuzexmyuGpiN0IlRVO.', 'ZkJYhbKT0bdoNgPxFBcdcLKAi2iBIesuMJ61HWp4xnUwhgwrMUUrKUKO468Z', '2022-07-12 07:30:43', '2022-07-24 17:53:34', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modules` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `modules`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Master Admin', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallets`
--

CREATE TABLE `admin_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `total_commission_earning` decimal(24,2) NOT NULL DEFAULT '0.00',
  `digital_received` decimal(24,2) NOT NULL DEFAULT '0.00',
  `manual_received` decimal(24,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_charge` decimal(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_wallets`
--

INSERT INTO `admin_wallets` (`id`, `admin_id`, `total_commission_earning`, `digital_received`, `manual_received`, `created_at`, `updated_at`, `delivery_charge`) VALUES
(6, 1, '58.89', '1424.74', '0.00', '2022-08-22 11:11:18', '2022-08-30 06:32:57', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Small', '2022-07-15 20:02:18', '2022-07-15 20:02:18', 1),
(2, 'Medium', '2022-07-15 20:02:30', '2022-07-15 20:02:30', 1),
(3, 'Large', '2022-07-15 20:02:48', '2022-07-15 20:02:48', 1),
(4, 'Family-Size', '2022-07-15 20:03:03', '2022-07-15 20:10:42', 1),
(5, 'Jumbo', '2022-07-15 20:03:14', '2022-07-15 20:03:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `data` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `type`, `image`, `status`, `data`, `created_at`, `updated_at`, `zone_id`) VALUES
(2, 'Test', 'restaurant_wise', '2022-07-28-62e2ef6e010fd.png', 1, '1', '2022-07-28 19:19:58', '2022-07-29 00:40:36', 3),
(3, 'Up to 50%', 'item_wise', '2022-07-29-62e3a43571dc3.png', 1, '9', '2022-07-29 08:11:17', '2022-07-29 08:11:17', 3);

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` int(20) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`id`, `business_name`, `website`, `phone`, `email`, `address`, `fax`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Venues', 'https://swushd.app/admin', '+380 (95) 699 90 55', 'admin@admin.com', 'Vulytsya Naberezhna, 12', '+380', 1, '2022-07-18 11:39:30', '2022-07-18 12:47:33'),
(2, 'SWUSHD Kitchens', 'https://swushd.app/admin', '+44-7840-695-559', 'RobertShields@SWUSHD.com', 'Vulytsya Naberezhna, 12', '+44', 1, '2022-07-18 18:24:06', '2022-07-18 18:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'cash_on_delivery', '{\"status\":\"0\"}', '2021-05-11 03:56:38', '2022-07-12 19:18:53'),
(2, 'stripe', '{\"status\":\"1\",\"api_key\":\"sk_test_86OovrQkQ2E0uTDazfakcPLV00w6Lni8Zw\",\"published_key\":\"pk_test_EbpeoK3pymvC0aBaKx6IBVkp001BwRDHhY\"}', '2021-05-11 03:57:02', '2022-07-27 07:07:13'),
(4, 'mail_config', NULL, NULL, '2021-05-11 04:14:06'),
(5, 'fcm_project_id', 'swushd-kitchens-21e4a', NULL, NULL),
(6, 'push_notification_key', 'AAAAmduCzVk:APA91bHtsFVhDCyuB4BmGry-pvedySHnLAC1JJ7RwRiH8Xn8Q0bJfCIC4TOgtmw0pBg5U_VE9qCrffJkCe1LDmqtnoFvyrIPFhvlid0m9dvU0Czz2z6GABxwg1q6Tejmgv7HLFTOxPlf', NULL, NULL),
(7, 'order_pending_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(8, 'order_confirmation_msg', '{\"status\":1,\"message\":null}', NULL, NULL),
(9, 'order_processing_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(10, 'out_for_delivery_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(11, 'order_delivered_message', '{\"status\":1,\"message\":null}', NULL, NULL),
(12, 'delivery_boy_assign_message', '{\"status\":1,\"message\":null}', NULL, NULL),
(13, 'delivery_boy_start_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(14, 'delivery_boy_delivered_message', '{\"status\":1,\"message\":null}', NULL, NULL),
(15, 'terms_and_conditions', NULL, NULL, '2021-06-29 06:44:49'),
(16, 'business_name', 'SWUSHD Kitchens', NULL, NULL),
(17, 'currency', 'USD', NULL, NULL),
(18, 'logo', '2022-07-28-62e2f6af17abf.png', NULL, NULL),
(19, 'phone', '0123456789', NULL, NULL),
(20, 'email_address', 'admin@admin.com', NULL, NULL),
(21, 'address', '307 AVENUE, BERTHELOT, 69008 LYON', NULL, NULL),
(22, 'footer_text', 'SWUSHD Kitchens', NULL, NULL),
(23, 'customer_verification', '1', NULL, NULL),
(24, 'map_api_key', 'AIzaSyB1mKCbALIgKFhgeIvjFsdbsnqM6g80vAo', NULL, NULL),
(25, 'privacy_policy', NULL, NULL, '2021-06-28 09:46:55'),
(26, 'about_us', NULL, NULL, '2021-06-29 06:43:25'),
(27, 'minimum_shipping_charge', '0', NULL, NULL),
(28, 'per_km_shipping_charge', '0', NULL, NULL),
(29, 'ssl_commerz_payment', '{\"status\":\"0\",\"store_id\":null,\"store_password\":null}', '2021-07-04 08:52:20', '2021-09-09 22:28:30'),
(30, 'razor_pay', '{\"status\":\"0\",\"razor_key\":null,\"razor_secret\":null}', '2021-07-04 08:53:04', '2021-09-09 22:28:25'),
(31, 'digital_payment', '{\"status\":\"1\"}', '2021-07-04 08:53:10', '2021-10-16 03:11:55'),
(32, 'paypal', '{\"status\":\"0\",\"paypal_client_id\":null,\"paypal_secret\":null}', '2021-07-04 08:53:18', '2022-08-06 13:46:31'),
(33, 'paystack', '{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":null,\"merchantEmail\":null}', '2021-07-04 09:14:07', '2021-10-16 03:12:17'),
(34, 'senang_pay', '{\"status\":null,\"secret_key\":null,\"published_key\":null,\"merchant_id\":null}', '2021-07-04 09:14:13', '2021-09-09 22:28:04'),
(35, 'order_handover_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(36, 'order_cancled_message', '{\"status\":1,\"message\":null}', NULL, NULL),
(37, 'timezone', 'America/Los_Angeles', NULL, NULL),
(38, 'order_delivery_verification', '1', NULL, NULL),
(39, 'currency_symbol_position', 'left', NULL, NULL),
(40, 'schedule_order', '1', NULL, NULL),
(41, 'app_minimum_version', '0', NULL, NULL),
(42, 'tax', NULL, NULL, NULL),
(43, 'admin_commission', '1', NULL, NULL),
(44, 'country', 'US', NULL, NULL),
(45, 'app_url', 'up_comming', NULL, NULL),
(46, 'default_location', '{\"lat\":\"0\",\"lng\":\"0\"}', NULL, NULL),
(47, 'twilio_sms', '{\"status\":\"1\",\"sid\":\"AC9beb6b879dc8bc42d63e76bbaee2005a\",\"messaging_service_id\":\"MG6dbfea44b12d177bf9d729dc7a5cb4f6\",\"token\":\"7f01539499822947bc31a575451bbea6\",\"from\":\"+15737422244\",\"otp_template\":\"Your otp is #OTP#.\"}', '2022-07-12 08:03:16', '2022-07-12 08:03:16'),
(48, 'nexmo_sms', '{\"status\":0,\"api_key\":null,\"api_secret\":null,\"signature_secret\":\"\",\"private_key\":\"\",\"application_id\":\"\",\"from\":null,\"otp_template\":\"Your otp is #OTP#.\"}', '2022-07-12 08:03:16', '2022-07-12 08:03:16'),
(49, '2factor_sms', '{\"status\":0,\"api_key\":\"Your otp is #OTP#.\"}', '2022-07-12 08:03:16', '2022-07-12 08:03:16'),
(50, 'msg91_sms', '{\"status\":0,\"template_id\":null,\"authkey\":null}', '2022-07-12 08:03:16', '2022-07-12 08:03:16'),
(51, 'admin_order_notification', '1', NULL, NULL),
(52, 'free_delivery_over', NULL, NULL, NULL),
(53, 'maintenance_mode', '1', '2021-09-09 21:33:55', '2022-07-12 07:48:14'),
(54, 'app_minimum_version_android', NULL, NULL, NULL),
(55, 'app_minimum_version_ios', NULL, NULL, NULL),
(56, 'app_url_android', NULL, NULL, NULL),
(57, 'app_url_ios', NULL, NULL, NULL),
(58, 'dm_maximum_orders', '1', NULL, NULL),
(59, 'flutterwave', '{\"status\":\"0\",\"public_key\":null,\"secret_key\":null,\"hash\":null}', '2021-09-23 06:51:28', '2022-07-31 17:26:37'),
(60, 'order_confirmation_model', 'deliveryman', NULL, NULL),
(61, 'mercadopago', '{\"status\":null,\"public_key\":null,\"access_token\":null}', NULL, '2021-10-16 03:12:09'),
(62, 'popular_food', '1', NULL, NULL),
(63, 'popular_restaurant', '1', NULL, NULL),
(64, 'new_restaurant', '1', NULL, NULL),
(65, 'landing_page_text', '{\"header_title_1\":\"Food App\",\"header_title_2\":\"Why stay hungry when you can order from StackFood\",\"header_title_3\":\"Get 10% OFF on your first order\",\"about_title\":\"StackFood is Best Delivery Service Near You\",\"why_choose_us\":\"Why Choose Us?\",\"why_choose_us_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"testimonial_title\":\"Trusted by Customer & Restaurant Owner\",\"footer_article\":\"Suspendisse ultrices at diam lectus nullam. Nisl, sagittis viverra enim erat tortor ultricies massa turpis. Arcu pulvinar.\"}', '2021-10-31 15:21:57', '2021-10-31 15:21:57'),
(66, 'landing_page_links', '{\"app_url_android_status\":\"1\",\"app_url_android\":\"https:\\/\\/play.google.com\",\"app_url_ios_status\":\"1\",\"app_url_ios\":\"https:\\/\\/www.apple.com\\/app-store\",\"web_app_url_status\":\"1\",\"web_app_url\":\"https:\\/\\/stackfood.6amtech.com\\/\"}', '2021-10-31 15:21:57', '2021-10-31 15:21:57'),
(67, 'speciality', '[{\"img\":\"clean_&_cheap_icon.png\",\"title\":\"Clean & Cheap Price\"},{\"img\":\"best_dishes_icon.png\",\"title\":\"Best Dishes Near You\"},{\"img\":\"virtual_restaurant_icon.png\",\"title\":\"Your Own Virtual Restaurant\"}]', '2021-10-31 15:21:57', '2021-10-31 15:21:57'),
(68, 'testimonial', '[{\"img\":\"2021-10-28-617aa5a9e4b4a.png\",\"name\":\"Barry Allen\",\"position\":\"Web Designer\",\"detail\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. A\\r\\n                    aliquam amet animi blanditiis consequatur debitis dicta\\r\\n                    distinctio, enim error eum iste libero modi nam natus\\r\\n                    perferendis possimus quasi sint sit tempora voluptatem. Est,\\r\\n                    exercitationem id ipsa ipsum laboriosam perferendis temporibus!\"},{\"img\":\"2021-10-28-617aa9b13c57b.png\",\"name\":\"Sophia Martino\",\"position\":\"Web Designer\",\"detail\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquam amet animi blanditiis consequatur debitis dicta distinctio, enim error eum iste libero modi nam natus perferendis possimus quasi sint sit tempora voluptatem. Est, exercitationem id ipsa ipsum laboriosam perferendis temporibus!\"},{\"img\":\"2021-10-28-617aa9db9752d.png\",\"name\":\"Alan Turing\",\"position\":\"Web Designer\",\"detail\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquam amet animi blanditiis consequatur debitis dicta distinctio, enim error eum iste libero modi nam natus perferendis possimus quasi sint sit tempora voluptatem. Est, exercitationem id ipsa ipsum laboriosam perferendis temporibus!\"},{\"img\":\"2021-10-28-617aa9faa8c78.png\",\"name\":\"Ann Marie\",\"position\":\"Web Designer\",\"detail\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquam amet animi blanditiis consequatur debitis dicta distinctio, enim error eum iste libero modi nam natus perferendis possimus quasi sint sit tempora voluptatem. Est, exercitationem id ipsa ipsum laboriosam perferendis temporibus!\"}]', '2021-10-31 15:21:57', '2021-10-31 15:21:57'),
(69, 'most_reviewed_foods', '1', NULL, NULL),
(70, 'paymob_accept', '{\"status\":\"0\",\"api_key\":null,\"iframe_id\":null,\"integration_id\":null,\"hmac\":null}', NULL, '2021-11-12 21:02:39'),
(71, 'timeformat', '24', NULL, NULL),
(72, 'canceled_by_restaurant', '0', NULL, NULL),
(73, 'canceled_by_deliveryman', '0', NULL, NULL),
(74, 'show_dm_earning', '0', NULL, NULL),
(75, 'toggle_veg_non_veg', '0', NULL, NULL),
(76, 'toggle_dm_registration', '0', NULL, NULL),
(77, 'toggle_restaurant_registration', '0', NULL, NULL),
(78, 'recaptcha', '{\"status\":\"0\",\"site_key\":null,\"secret_key\":null}', '2022-08-24 06:05:28', '2022-08-24 06:05:28'),
(79, 'language', '[\"en\"]', NULL, NULL),
(80, 'schedule_order_slot_duration', '0', NULL, NULL),
(81, 'digit_after_decimal_point', '0', NULL, NULL),
(82, 'icon', '2022-07-12-62cd34ce58665.png', NULL, NULL),
(83, 'ref_earning_status', '0', '2022-05-28 21:02:38', '2022-05-28 21:02:38'),
(84, 'ref_earning_exchange_rate', '0', '2022-05-28 21:02:38', '2022-05-28 21:02:38'),
(85, 'dm_tips_status', '0', '2022-05-28 21:02:38', '2022-05-28 21:02:38'),
(86, 'theme', '1', '2022-05-28 21:02:38', '2022-05-28 21:02:38'),
(87, 'map_api_key_server', 'AIzaSyB1mKCbALIgKFhgeIvjFsdbsnqM6g80vAo', NULL, NULL),
(88, 'order_refunded_message', '{\"status\":1,\"message\":null}', NULL, NULL),
(89, 'card_commission', '2.9', NULL, NULL),
(90, 'flat_card_commission', '0.3', NULL, NULL),
(91, 'foreign_card_commission', '0.1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_restaurant`
--

CREATE TABLE `campaign_restaurant` (
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `parent_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `parent_id`, `position`, `status`, `created_at`, `updated_at`, `priority`) VALUES
(1, 'Starters', '2022-07-12-62cd3ac0a3673.png', 0, 0, 1, '2022-07-12 08:11:28', '2022-07-27 22:14:23', 0),
(2, 'Main Course', '2022-07-12-62cd3ae09c5ee.png', 0, 0, 1, '2022-07-12 08:12:00', '2022-07-12 08:12:00', 0),
(3, 'Side Dish', '2022-07-12-62cd3b038b258.png', 0, 0, 1, '2022-07-12 08:12:35', '2022-07-12 08:12:35', 0),
(4, 'Dessert', '2022-07-12-62cd3b1e805ad.png', 0, 0, 1, '2022-07-12 08:13:02', '2022-07-12 08:13:02', 0),
(5, 'Drink', '2022-07-12-62cd3b3bc11c0.png', 0, 0, 1, '2022-07-12 08:13:31', '2022-07-12 08:13:31', 0),
(6, 'Platter', '2022-07-12-62cd3b5f2a1a3.png', 0, 0, 1, '2022-07-12 08:14:07', '2022-07-27 22:14:47', 0),
(7, 'Snack', '2022-07-12-62cd3b81791b6.png', 0, 0, 1, '2022-07-12 08:14:41', '2022-07-27 22:15:02', 0),
(8, 'Hors D\'oeuvres', '2022-07-27-62e1c87b63eec.png', 0, 0, 1, '2022-07-12 08:15:29', '2022-07-27 22:21:31', 0),
(9, 'Alcoholic Drinks', '2022-07-27-62e22bec85ab6.png', 0, 1, 1, '2022-07-12 08:15:44', '2022-07-28 05:25:48', 0),
(10, 'Non-Alcoholic Drinks', '2022-07-27-62e22bccc62d6.png', 0, 1, 1, '2022-07-12 08:16:05', '2022-07-28 05:25:16', 0),
(11, 'Pies', '2022-07-27-62e22ba69bf2c.png', 0, 1, 1, '2022-07-12 08:16:37', '2022-07-28 05:24:38', 0),
(12, 'Meat', '2022-07-27-62e22b84df102.png', 0, 1, 1, '2022-07-12 08:16:51', '2022-07-28 05:24:04', 0),
(13, 'Fish', '2022-07-27-62e22b6b604ef.png', 0, 1, 1, '2022-07-14 11:17:27', '2022-07-28 05:23:39', 0),
(14, 'Protein', '2022-07-27-62e22b436d166.png', 0, 1, 1, '2022-07-14 11:35:55', '2022-07-28 05:22:59', 0),
(15, 'Sallad', '2022-07-27-62e22b1debfd1.png', 0, 1, 1, '2022-07-14 19:42:33', '2022-07-28 05:22:21', 0),
(16, 'Vegetable', '2022-07-27-62e22ad6ae0d7.png', 0, 1, 1, '2022-07-14 19:43:26', '2022-07-28 05:21:10', 0),
(19, 'Soup', '2022-07-27-62e223590eb6b.png', 0, 1, 1, '2022-07-18 05:41:34', '2022-07-28 04:49:13', 0),
(20, 'Bread', '2022-07-27-62e222de19f8c.png', 0, 1, 1, '2022-07-18 05:44:18', '2022-07-28 04:47:10', 0),
(21, 'Cereals', '2022-07-27-62e21b730eeca.png', 0, 1, 1, '2022-07-18 05:44:41', '2022-07-28 04:15:31', 0),
(22, 'Pasta', '2022-07-27-62e21b0d7482a.png', 0, 1, 1, '2022-07-18 05:44:55', '2022-07-28 04:13:49', 0),
(23, 'Rice', '2022-07-27-62e21a79d522b.png', 0, 1, 1, '2022-07-18 05:49:03', '2022-07-28 04:11:21', 0),
(24, 'Fast Food', '2022-07-27-62e22c2760aee.png', 0, 2, 1, '2022-07-22 01:10:13', '2022-07-28 05:26:47', 0),
(25, 'Kids', '2022-07-27-62e22c4503734.png', 0, 2, 1, '2022-07-22 14:18:35', '2022-07-28 05:27:17', 0),
(26, 'Special', '2022-07-27-62e22c9b19c35.png', 0, 2, 1, '2022-07-22 14:19:08', '2022-07-28 05:28:43', 0),
(27, 'Giveaway', '2022-07-27-62e22d201b074.png', 0, 2, 1, '2022-07-22 14:19:29', '2022-07-28 05:30:56', 0),
(28, 'Specialty', '2022-07-27-62e22ce1ca7df.png', 0, 2, 1, '2022-07-22 14:19:40', '2022-07-28 05:29:53', 0),
(29, 'Deal', '2022-07-27-62e22d08ca34d.png', 0, 2, 1, '2022-07-22 14:19:53', '2022-07-28 05:30:32', 0),
(30, 'New', '2022-07-27-62e22d35c8618.png', 0, 2, 1, '2022-07-22 14:20:37', '2022-07-28 05:31:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(24,2) NOT NULL DEFAULT '0.00',
  `max_discount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `coupon_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `limit` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_uses` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cuisines`
--

CREATE TABLE `cuisines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `active_status` int(11) NOT NULL DEFAULT '1',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(5) NOT NULL DEFAULT '0',
  `c_featured` int(5) NOT NULL DEFAULT '0',
  `c_trending` int(5) NOT NULL DEFAULT '0',
  `c_is_new` int(5) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuisines`
--

INSERT INTO `cuisines` (`id`, `name`, `image`, `active_status`, `description`, `priority`, `c_featured`, `c_trending`, `c_is_new`, `created_at`, `updated_at`) VALUES
(7, 'Tomato Salad', '2022-07-15-62d1292454eac.png', 1, 'This is Tomato Salad.', 0, 0, 0, 0, '2022-07-15 07:45:24', '2022-07-18 07:13:54'),
(8, 'Fried Cooks', '2022-07-28-62e332a99976b.png', 1, 'This is Potato Salad.', 1, 1, 0, 0, '2022-07-15 07:46:40', '2022-07-29 08:58:51'),
(12, 'Oil-rich Fish', '2022-07-28-62e332fbf362a.png', 1, 'This is Oil-rich fish.', 0, 0, 0, 0, '2022-07-18 05:49:47', '2022-07-29 00:08:11'),
(13, 'Bread', '2022-07-27-62e22d9c57e8d.png', 1, 'This is Vegetable Salad Type.', 1, 1, 1, 0, '2022-07-18 07:24:42', '2022-07-29 08:59:02'),
(14, 'Beers', '2022-07-18-62d51b1d2424b.png', 1, 'This is Beers cuisine.', 0, 0, 0, 0, '2022-07-18 07:34:37', '2022-07-18 07:34:37'),
(15, 'Veg Cook', '2022-07-27-62e22d6e2a710.png', 1, 'This is vegetable cooks.', 1, 0, 0, 0, '2022-07-20 21:02:51', '2022-07-29 08:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country`, `currency_code`, `currency_symbol`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', '$', '1.00', NULL, NULL),
(2, 'Canadian Dollar', 'CAD', 'CA$', '1.00', NULL, NULL),
(3, 'Euro', 'EUR', '€', '1.00', NULL, NULL),
(4, 'United Arab Emirates Dirham', 'AED', 'د.إ.‏', '1.00', NULL, NULL),
(5, 'Afghan Afghani', 'AFN', '؋', '1.00', NULL, NULL),
(6, 'Albanian Lek', 'ALL', 'L', '1.00', NULL, NULL),
(7, 'Armenian Dram', 'AMD', '֏', '1.00', NULL, NULL),
(8, 'Argentine Peso', 'ARS', '$', '1.00', NULL, NULL),
(9, 'Australian Dollar', 'AUD', '$', '1.00', NULL, NULL),
(10, 'Azerbaijani Manat', 'AZN', '₼', '1.00', NULL, NULL),
(11, 'Bosnia-Herzegovina Convertible Mark', 'BAM', 'KM', '1.00', NULL, NULL),
(12, 'Bangladeshi Taka', 'BDT', '৳', '1.00', NULL, NULL),
(13, 'Bulgarian Lev', 'BGN', 'лв.', '1.00', NULL, NULL),
(14, 'Bahraini Dinar', 'BHD', 'د.ب.‏', '1.00', NULL, NULL),
(15, 'Burundian Franc', 'BIF', 'FBu', '1.00', NULL, NULL),
(16, 'Brunei Dollar', 'BND', 'B$', '1.00', NULL, NULL),
(17, 'Bolivian Boliviano', 'BOB', 'Bs', '1.00', NULL, NULL),
(18, 'Brazilian Real', 'BRL', 'R$', '1.00', NULL, NULL),
(19, 'Botswanan Pula', 'BWP', 'P', '1.00', NULL, NULL),
(20, 'Belarusian Ruble', 'BYN', 'Br', '1.00', NULL, NULL),
(21, 'Belize Dollar', 'BZD', '$', '1.00', NULL, NULL),
(22, 'Congolese Franc', 'CDF', 'FC', '1.00', NULL, NULL),
(23, 'Swiss Franc', 'CHF', 'CHf', '1.00', NULL, NULL),
(24, 'Chilean Peso', 'CLP', '$', '1.00', NULL, NULL),
(25, 'Chinese Yuan', 'CNY', '¥', '1.00', NULL, NULL),
(26, 'Colombian Peso', 'COP', '$', '1.00', NULL, NULL),
(27, 'Costa Rican Colón', 'CRC', '₡', '1.00', NULL, NULL),
(28, 'Cape Verdean Escudo', 'CVE', '$', '1.00', NULL, NULL),
(29, 'Czech Republic Koruna', 'CZK', 'Kč', '1.00', NULL, NULL),
(30, 'Djiboutian Franc', 'DJF', 'Fdj', '1.00', NULL, NULL),
(31, 'Danish Krone', 'DKK', 'Kr.', '1.00', NULL, NULL),
(32, 'Dominican Peso', 'DOP', 'RD$', '1.00', NULL, NULL),
(33, 'Algerian Dinar', 'DZD', 'د.ج.‏', '1.00', NULL, NULL),
(34, 'Estonian Kroon', 'EEK', 'kr', '1.00', NULL, NULL),
(35, 'Egyptian Pound', 'EGP', 'E£‏', '1.00', NULL, NULL),
(36, 'Eritrean Nakfa', 'ERN', 'Nfk', '1.00', NULL, NULL),
(37, 'Ethiopian Birr', 'ETB', 'Br', '1.00', NULL, NULL),
(38, 'British Pound Sterling', 'GBP', '£', '1.00', NULL, NULL),
(39, 'Georgian Lari', 'GEL', 'GEL', '1.00', NULL, NULL),
(40, 'Ghanaian Cedi', 'GHS', 'GH¢', '1.00', NULL, NULL),
(41, 'Guinean Franc', 'GNF', 'FG', '1.00', NULL, NULL),
(42, 'Guatemalan Quetzal', 'GTQ', 'Q', '1.00', NULL, NULL),
(43, 'Hong Kong Dollar', 'HKD', 'HK$', '1.00', NULL, NULL),
(44, 'Honduran Lempira', 'HNL', 'L', '1.00', NULL, NULL),
(45, 'Croatian Kuna', 'HRK', 'kn', '1.00', NULL, NULL),
(46, 'Hungarian Forint', 'HUF', 'Ft', '1.00', NULL, NULL),
(47, 'Indonesian Rupiah', 'IDR', 'Rp', '1.00', NULL, NULL),
(48, 'Israeli New Sheqel', 'ILS', '₪', '1.00', NULL, NULL),
(49, 'Indian Rupee', 'INR', '₹', '1.00', NULL, NULL),
(50, 'Iraqi Dinar', 'IQD', 'ع.د', '1.00', NULL, NULL),
(51, 'Iranian Rial', 'IRR', '﷼', '1.00', NULL, NULL),
(52, 'Icelandic Króna', 'ISK', 'kr', '1.00', NULL, NULL),
(53, 'Jamaican Dollar', 'JMD', '$', '1.00', NULL, NULL),
(54, 'Jordanian Dinar', 'JOD', 'د.ا‏', '1.00', NULL, NULL),
(55, 'Japanese Yen', 'JPY', '¥', '1.00', NULL, NULL),
(56, 'Kenyan Shilling', 'KES', 'Ksh', '1.00', NULL, NULL),
(57, 'Cambodian Riel', 'KHR', '៛', '1.00', NULL, NULL),
(58, 'Comorian Franc', 'KMF', 'FC', '1.00', NULL, NULL),
(59, 'South Korean Won', 'KRW', 'CF', '1.00', NULL, NULL),
(60, 'Kuwaiti Dinar', 'KWD', 'د.ك.‏', '1.00', NULL, NULL),
(61, 'Kazakhstani Tenge', 'KZT', '₸.', '1.00', NULL, NULL),
(62, 'Lebanese Pound', 'LBP', 'ل.ل.‏', '1.00', NULL, NULL),
(63, 'Sri Lankan Rupee', 'LKR', 'Rs', '1.00', NULL, NULL),
(64, 'Lithuanian Litas', 'LTL', 'Lt', '1.00', NULL, NULL),
(65, 'Latvian Lats', 'LVL', 'Ls', '1.00', NULL, NULL),
(66, 'Libyan Dinar', 'LYD', 'د.ل.‏', '1.00', NULL, NULL),
(67, 'Moroccan Dirham', 'MAD', 'د.م.‏', '1.00', NULL, NULL),
(68, 'Moldovan Leu', 'MDL', 'L', '1.00', NULL, NULL),
(69, 'Malagasy Ariary', 'MGA', 'Ar', '1.00', NULL, NULL),
(70, 'Macedonian Denar', 'MKD', 'Ден', '1.00', NULL, NULL),
(71, 'Myanma Kyat', 'MMK', 'K', '1.00', NULL, NULL),
(72, 'Macanese Pataca', 'MOP', 'MOP$', '1.00', NULL, NULL),
(73, 'Mauritian Rupee', 'MUR', 'Rs', '1.00', NULL, NULL),
(74, 'Mexican Peso', 'MXN', '$', '1.00', NULL, NULL),
(75, 'Malaysian Ringgit', 'MYR', 'RM', '1.00', NULL, NULL),
(76, 'Mozambican Metical', 'MZN', 'MT', '1.00', NULL, NULL),
(77, 'Namibian Dollar', 'NAD', 'N$', '1.00', NULL, NULL),
(78, 'Nigerian Naira', 'NGN', '₦', '1.00', NULL, NULL),
(79, 'Nicaraguan Córdoba', 'NIO', 'C$', '1.00', NULL, NULL),
(80, 'Norwegian Krone', 'NOK', 'kr', '1.00', NULL, NULL),
(81, 'Nepalese Rupee', 'NPR', 'Re.', '1.00', NULL, NULL),
(82, 'New Zealand Dollar', 'NZD', '$', '1.00', NULL, NULL),
(83, 'Omani Rial', 'OMR', 'ر.ع.‏', '1.00', NULL, NULL),
(84, 'Panamanian Balboa', 'PAB', 'B/.', '1.00', NULL, NULL),
(85, 'Peruvian Nuevo Sol', 'PEN', 'S/', '1.00', NULL, NULL),
(86, 'Philippine Peso', 'PHP', '₱', '1.00', NULL, NULL),
(87, 'Pakistani Rupee', 'PKR', 'Rs', '1.00', NULL, NULL),
(88, 'Polish Zloty', 'PLN', 'zł', '1.00', NULL, NULL),
(89, 'Paraguayan Guarani', 'PYG', '₲', '1.00', NULL, NULL),
(90, 'Qatari Rial', 'QAR', 'ر.ق.‏', '1.00', NULL, NULL),
(91, 'Romanian Leu', 'RON', 'lei', '1.00', NULL, NULL),
(92, 'Serbian Dinar', 'RSD', 'din.', '1.00', NULL, NULL),
(93, 'Russian Ruble', 'RUB', '₽.', '1.00', NULL, NULL),
(94, 'Rwandan Franc', 'RWF', 'FRw', '1.00', NULL, NULL),
(95, 'Saudi Riyal', 'SAR', 'ر.س.‏', '1.00', NULL, NULL),
(96, 'Sudanese Pound', 'SDG', 'ج.س.', '1.00', NULL, NULL),
(97, 'Swedish Krona', 'SEK', 'kr', '1.00', NULL, NULL),
(98, 'Singapore Dollar', 'SGD', '$', '1.00', NULL, NULL),
(99, 'Somali Shilling', 'SOS', 'Sh.so.', '1.00', NULL, NULL),
(100, 'Syrian Pound', 'SYP', 'LS‏', '1.00', NULL, NULL),
(101, 'Thai Baht', 'THB', '฿', '1.00', NULL, NULL),
(102, 'Tunisian Dinar', 'TND', 'د.ت‏', '1.00', NULL, NULL),
(103, 'Tongan Paʻanga', 'TOP', 'T$', '1.00', NULL, NULL),
(104, 'Turkish Lira', 'TRY', '₺', '1.00', NULL, NULL),
(105, 'Trinidad and Tobago Dollar', 'TTD', '$', '1.00', NULL, NULL),
(106, 'New Taiwan Dollar', 'TWD', 'NT$', '1.00', NULL, NULL),
(107, 'Tanzanian Shilling', 'TZS', 'TSh', '1.00', NULL, NULL),
(108, 'Ukrainian Hryvnia', 'UAH', '₴', '1.00', NULL, NULL),
(109, 'Ugandan Shilling', 'UGX', 'USh', '1.00', NULL, NULL),
(110, 'Uruguayan Peso', 'UYU', '$', '1.00', NULL, NULL),
(111, 'Uzbekistan Som', 'UZS', 'so\'m', '1.00', NULL, NULL),
(112, 'Venezuelan Bolívar', 'VEF', 'Bs.F.', '1.00', NULL, NULL),
(113, 'Vietnamese Dong', 'VND', '₫', '1.00', NULL, NULL),
(114, 'CFA Franc BEAC', 'XAF', 'FCFA', '1.00', NULL, NULL),
(115, 'CFA Franc BCEAO', 'XOF', 'CFA', '1.00', NULL, NULL),
(116, 'Yemeni Rial', 'YER', '﷼‏', '1.00', NULL, NULL),
(117, 'South African Rand', 'ZAR', 'R', '1.00', NULL, NULL),
(118, 'Zambian Kwacha', 'ZMK', 'ZK', '1.00', NULL, NULL),
(119, 'Zimbabwean Dollar', 'ZWL', 'Z$', '1.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contact_person_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `floor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `road` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `address_type`, `contact_person_number`, `address`, `latitude`, `longitude`, `user_id`, `contact_person_name`, `created_at`, `updated_at`, `zone_id`, `floor`, `road`, `house`) VALUES
(1, 'home', '+380501552037', 'Vinnytsia, Vinnytsia Oblast, Ukraine', '49.23308290019022', '28.468217141926285', 1, 'Yana Derevianko', '2022-07-12 12:05:55', '2022-07-12 12:05:55', 3, NULL, NULL, NULL),
(4, 'home', '+447840695559', 'Hrushevs\'koho St, 46/21, Vinnytsia, Vinnyts\'ka oblast, Ukraine, 21000', '49.235555868697034', '28.468217141926285', 92, 'Robert Shields', '2022-08-14 16:09:27', '2022-08-14 16:09:27', 3, '3rd Floor', '12', 'Clark Hall'),
(5, 'home', '+447865076771', 'Hrushevs\'koho St, 17, Vinnytsia, Vinnyts\'ka oblast, Ukraine, 21000', '49.23507336933662', '28.467213660478592', 95, 'Helga Kokes', '2022-08-29 07:07:53', '2022-08-29 07:07:53', 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_histories`
--

CREATE TABLE `delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_histories`
--

INSERT INTO `delivery_histories` (`id`, `order_id`, `delivery_man_id`, `time`, `longitude`, `latitude`, `location`, `created_at`, `updated_at`) VALUES
(2031, NULL, 1, '2022-08-12 22:21:58', '102.6493478', '17.9235513', 'WJFX+FV4, , LA', '2022-08-13 04:21:58', '2022-08-13 04:21:58'),
(2032, NULL, 1, '2022-08-12 22:22:05', '102.6493469', '17.9235523', 'WJFX+FV4, , LA', '2022-08-13 04:22:05', '2022-08-13 04:22:05'),
(2033, NULL, 1, '2022-08-12 22:22:15', '102.6493495', '17.9235517', 'WJFX+FV4, , LA', '2022-08-13 04:22:15', '2022-08-13 04:22:15'),
(2034, NULL, 1, '2022-08-12 22:22:25', '102.6493478', '17.9235507', 'WJFX+FV4, , LA', '2022-08-13 04:22:25', '2022-08-13 04:22:25'),
(2035, NULL, 1, '2022-08-12 22:22:35', '102.6493477', '17.9235508', 'WJFX+FV4, , LA', '2022-08-13 04:22:35', '2022-08-13 04:22:35'),
(2036, NULL, 1, '2022-08-12 22:22:45', '102.6493477', '17.9235519', 'WJFX+FV4, , LA', '2022-08-13 04:22:45', '2022-08-13 04:22:45'),
(2037, NULL, 1, '2022-08-12 22:22:56', '102.6485937', '17.9232995', 'WJFX+FV4, , LA', '2022-08-13 04:22:56', '2022-08-13 04:22:56'),
(2038, NULL, 1, '2022-08-12 22:23:06', '102.6492958', '17.9234444', 'WJFX+FV4, , LA', '2022-08-13 04:23:06', '2022-08-13 04:23:06'),
(2039, NULL, 1, '2022-08-12 22:23:15', '102.6493544', '17.9235491', 'WJFX+FV4, , LA', '2022-08-13 04:23:15', '2022-08-13 04:23:15'),
(2040, NULL, 1, '2022-08-12 22:23:25', '102.6493488', '17.9235513', 'WJFX+FV4, , LA', '2022-08-13 04:23:25', '2022-08-13 04:23:25'),
(2041, NULL, 1, '2022-08-12 22:23:35', '102.649345', '17.9235527', 'WJFX+FV4, , LA', '2022-08-13 04:23:35', '2022-08-13 04:23:35'),
(2042, NULL, 1, '2022-08-12 22:23:46', '102.6493459', '17.92355', 'WJFX+FV4, , LA', '2022-08-13 04:23:46', '2022-08-13 04:23:46'),
(2043, NULL, 1, '2022-08-12 22:23:55', '102.6493462', '17.9235485', 'WJFX+FV4, , LA', '2022-08-13 04:23:55', '2022-08-13 04:23:55'),
(2044, NULL, 1, '2022-08-12 22:24:06', '102.6484573', '17.9229865', 'WJFX+FV4, , LA', '2022-08-13 04:24:06', '2022-08-13 04:24:06'),
(2045, NULL, 1, '2022-08-12 22:24:21', '102.6493316', '17.923541', 'WJFX+FV4, , LA', '2022-08-13 04:24:21', '2022-08-13 04:24:21'),
(2046, NULL, 1, '2022-08-12 22:24:25', '102.6493555', '17.9235561', 'WJFX+FV4, , LA', '2022-08-13 04:24:25', '2022-08-13 04:24:25'),
(2047, NULL, 1, '2022-08-12 22:24:35', '102.6493486', '17.9235508', 'WJFX+FV4, , LA', '2022-08-13 04:24:35', '2022-08-13 04:24:35'),
(2048, NULL, 1, '2022-08-12 22:24:45', '102.649347', '17.9235526', 'WJFX+FV4, , LA', '2022-08-13 04:24:45', '2022-08-13 04:24:45'),
(2049, NULL, 1, '2022-08-12 22:24:58', '102.6493567', '17.9236595', 'WJFX+FV4, , LA', '2022-08-13 04:24:58', '2022-08-13 04:24:58'),
(2050, NULL, 1, '2022-08-12 22:25:05', '102.6493586', '17.9236552', 'WJFX+FV4, , LA', '2022-08-13 04:25:05', '2022-08-13 04:25:05'),
(2051, NULL, 1, '2022-08-12 22:25:15', '102.6493563', '17.9235855', 'WJFX+FV4, , LA', '2022-08-13 04:25:15', '2022-08-13 04:25:15'),
(2052, NULL, 1, '2022-08-12 22:25:25', '102.6493471', '17.9235526', 'WJFX+FV4, , LA', '2022-08-13 04:25:25', '2022-08-13 04:25:25'),
(2053, NULL, 1, '2022-08-12 22:25:37', '102.6493477', '17.923553', 'WJFX+FV4, , LA', '2022-08-13 04:25:37', '2022-08-13 04:25:37'),
(2054, NULL, 1, '2022-08-12 22:25:45', '102.6493454', '17.923551', 'WJFX+FV4, , LA', '2022-08-13 04:25:45', '2022-08-13 04:25:45'),
(2055, NULL, 1, '2022-08-12 22:25:55', '102.6493468', '17.9235528', 'WJFX+FV4, , LA', '2022-08-13 04:25:55', '2022-08-13 04:25:55'),
(2056, NULL, 1, '2022-08-12 22:26:05', '102.649351', '17.9235534', 'WJFX+FV4, , LA', '2022-08-13 04:26:05', '2022-08-13 04:26:05'),
(2057, NULL, 1, '2022-08-12 22:26:16', '102.649347', '17.9235522', 'WJFX+FV4, , LA', '2022-08-13 04:26:16', '2022-08-13 04:26:16'),
(2058, NULL, 1, '2022-08-12 22:26:26', '102.6493471', '17.9235526', 'WJFX+FV4, , LA', '2022-08-13 04:26:26', '2022-08-13 04:26:26'),
(2059, NULL, 1, '2022-08-12 22:26:35', '102.6493453', '17.9235527', 'WJFX+FV4, , LA', '2022-08-13 04:26:35', '2022-08-13 04:26:35'),
(2060, NULL, 1, '2022-08-12 22:26:45', '102.6493445', '17.9235565', 'WJFX+FV4, , LA', '2022-08-13 04:26:45', '2022-08-13 04:26:45'),
(2061, NULL, 1, '2022-08-12 22:26:58', '102.6493501', '17.9235511', 'WJFX+FV4, , LA', '2022-08-13 04:26:58', '2022-08-13 04:26:58'),
(2062, NULL, 1, '2022-08-12 22:27:05', '102.6493472', '17.9235522', 'WJFX+FV4, , LA', '2022-08-13 04:27:05', '2022-08-13 04:27:05'),
(2063, NULL, 1, '2022-08-12 22:27:15', '102.6493472', '17.9235503', 'WJFX+FV4, , LA', '2022-08-13 04:27:15', '2022-08-13 04:27:15'),
(2064, NULL, 1, '2022-08-12 22:27:25', '102.6493467', '17.9235529', 'WJFX+FV4, , LA', '2022-08-13 04:27:25', '2022-08-13 04:27:25'),
(2065, NULL, 1, '2022-08-12 22:27:38', '102.6493477', '17.9235562', 'WJFX+FV4, , LA', '2022-08-13 04:27:38', '2022-08-13 04:27:38'),
(2066, NULL, 1, '2022-08-12 22:27:47', '102.6493456', '17.9235523', 'WJFX+FV4, , LA', '2022-08-13 04:27:47', '2022-08-13 04:27:47'),
(2067, NULL, 1, '2022-08-12 22:27:55', '102.6493483', '17.9235524', 'WJFX+FV4, , LA', '2022-08-13 04:27:55', '2022-08-13 04:27:55'),
(2068, NULL, 1, '2022-08-12 22:28:05', '102.6493471', '17.9235531', 'WJFX+FV4, , LA', '2022-08-13 04:28:05', '2022-08-13 04:28:05'),
(2069, NULL, 1, '2022-08-12 22:28:15', '102.6493476', '17.9235503', 'WJFX+FV4, , LA', '2022-08-13 04:28:15', '2022-08-13 04:28:15'),
(2070, NULL, 1, '2022-08-12 22:28:27', '102.6493472', '17.9235501', 'WJFX+FV4, , LA', '2022-08-13 04:28:27', '2022-08-13 04:28:27'),
(2071, NULL, 1, '2022-08-12 22:28:37', '102.6493449', '17.9235521', 'WJFX+FV4, , LA', '2022-08-13 04:28:37', '2022-08-13 04:28:37'),
(2072, NULL, 1, '2022-08-12 22:28:45', '102.6493479', '17.9235512', 'WJFX+FV4, , LA', '2022-08-13 04:28:45', '2022-08-13 04:28:45'),
(2073, NULL, 1, '2022-08-12 22:28:55', '102.6493477', '17.9235519', 'WJFX+FV4, , LA', '2022-08-13 04:28:55', '2022-08-13 04:28:55'),
(2074, NULL, 1, '2022-08-12 22:29:08', '102.6493355', '17.9235568', 'WJFX+FV4, , LA', '2022-08-13 04:29:08', '2022-08-13 04:29:08'),
(2075, NULL, 1, '2022-08-12 22:29:17', '102.6493448', '17.9235518', 'WJFX+FV4, , LA', '2022-08-13 04:29:17', '2022-08-13 04:29:17'),
(2076, NULL, 1, '2022-08-12 22:29:25', '102.6493478', '17.9235517', 'WJFX+FV4, , LA', '2022-08-13 04:29:25', '2022-08-13 04:29:25'),
(2077, NULL, 1, '2022-08-12 22:29:35', '102.6493467', '17.9235519', 'WJFX+FV4, , LA', '2022-08-13 04:29:35', '2022-08-13 04:29:35'),
(2078, NULL, 1, '2022-08-12 22:29:47', '102.6493478', '17.9235521', 'WJFX+FV4, , LA', '2022-08-13 04:29:47', '2022-08-13 04:29:47'),
(2079, NULL, 1, '2022-08-12 22:29:58', '102.6493479', '17.9235519', 'WJFX+FV4, , LA', '2022-08-13 04:29:58', '2022-08-13 04:29:58'),
(2080, NULL, 1, '2022-08-12 22:30:05', '102.6493479', '17.9235516', 'WJFX+FV4, , LA', '2022-08-13 04:30:05', '2022-08-13 04:30:05'),
(2081, NULL, 1, '2022-08-12 22:30:15', '102.6493479', '17.9235511', 'WJFX+FV4, , LA', '2022-08-13 04:30:15', '2022-08-13 04:30:15'),
(2082, NULL, 1, '2022-08-12 22:30:25', '102.6493478', '17.9235506', 'WJFX+FV4, , LA', '2022-08-13 04:30:25', '2022-08-13 04:30:25'),
(2083, NULL, 1, '2022-08-12 22:30:35', '102.6493418', '17.9235518', 'WJFX+FV4, , LA', '2022-08-13 04:30:35', '2022-08-13 04:30:35'),
(2084, NULL, 1, '2022-08-12 22:30:46', '102.6493494', '17.9235512', 'WJFX+FV4, , LA', '2022-08-13 04:30:46', '2022-08-13 04:30:46'),
(2085, NULL, 1, '2022-08-12 22:30:55', '102.649346', '17.9235518', 'WJFX+FV4, , LA', '2022-08-13 04:30:55', '2022-08-13 04:30:55'),
(2086, NULL, 1, '2022-08-12 22:31:05', '102.6493478', '17.9235504', 'WJFX+FV4, , LA', '2022-08-13 04:31:05', '2022-08-13 04:31:05'),
(2087, NULL, 1, '2022-08-12 22:31:17', '102.6493497', '17.92355', 'WJFX+FV4, , LA', '2022-08-13 04:31:17', '2022-08-13 04:31:17'),
(2088, NULL, 1, '2022-08-12 22:31:26', '102.6493415', '17.9235561', 'WJFX+FV4, , LA', '2022-08-13 04:31:26', '2022-08-13 04:31:26'),
(2089, NULL, 1, '2022-08-12 22:31:35', '102.6493474', '17.9235501', 'WJFX+FV4, , LA', '2022-08-13 04:31:35', '2022-08-13 04:31:35'),
(2090, NULL, 1, '2022-08-12 22:31:45', '102.6493485', '17.9235522', 'WJFX+FV4, , LA', '2022-08-13 04:31:45', '2022-08-13 04:31:45'),
(2091, NULL, 1, '2022-08-12 22:31:55', '102.6493477', '17.9235522', 'WJFX+FV4, , LA', '2022-08-13 04:31:55', '2022-08-13 04:31:55'),
(2092, NULL, 1, '2022-08-12 22:32:07', '102.6493473', '17.9235523', 'WJFX+FV4, , LA', '2022-08-13 04:32:07', '2022-08-13 04:32:07'),
(2093, NULL, 1, '2022-08-12 22:32:17', '102.649346', '17.9235523', 'WJFX+FV4, , LA', '2022-08-13 04:32:17', '2022-08-13 04:32:17'),
(2094, NULL, 1, '2022-08-12 22:32:27', '102.6493437', '17.9235562', 'WJFX+FV4, , LA', '2022-08-13 04:32:27', '2022-08-13 04:32:27'),
(2095, NULL, 1, '2022-08-12 22:32:36', '102.6493429', '17.923552', 'WJFX+FV4, , LA', '2022-08-13 04:32:36', '2022-08-13 04:32:36'),
(2096, NULL, 1, '2022-08-12 22:32:45', '102.6493469', '17.9235524', 'WJFX+FV4, , LA', '2022-08-13 04:32:45', '2022-08-13 04:32:45'),
(2097, NULL, 1, '2022-08-12 22:32:54', '102.6493471', '17.9235522', 'WJFX+FV4, , LA', '2022-08-13 04:32:54', '2022-08-13 04:32:54'),
(2098, NULL, 1, '2022-08-12 22:33:08', '102.6493449', '17.9235514', 'WJFX+FV4, , LA', '2022-08-13 04:33:08', '2022-08-13 04:33:08'),
(2099, NULL, 1, '2022-08-14 11:42:20', '102.6493508', '17.9235532', 'WJFX+FV4, , LA', '2022-08-14 17:42:20', '2022-08-14 17:42:20'),
(2100, NULL, 1, '2022-08-14 11:42:30', '102.6493472', '17.9235527', 'WJFX+FV4, , LA', '2022-08-14 17:42:30', '2022-08-14 17:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_man_wallets`
--

CREATE TABLE `delivery_man_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) UNSIGNED NOT NULL,
  `collected_cash` decimal(24,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_earning` decimal(24,2) NOT NULL DEFAULT '0.00',
  `total_withdrawn` decimal(24,2) NOT NULL DEFAULT '0.00',
  `pending_withdraw` decimal(24,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men`
--

CREATE TABLE `delivery_men` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_number` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `earning` tinyint(1) NOT NULL DEFAULT '1',
  `current_orders` int(11) NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'zone_wise',
  `restaurant_id` bigint(20) DEFAULT NULL,
  `application_status` enum('approved','denied','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `order_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `assigned_order_count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_men`
--

INSERT INTO `delivery_men` (`id`, `f_name`, `l_name`, `phone`, `email`, `identity_number`, `identity_type`, `identity_image`, `image`, `password`, `auth_token`, `fcm_token`, `zone_id`, `created_at`, `updated_at`, `status`, `active`, `earning`, `current_orders`, `type`, `restaurant_id`, `application_status`, `order_count`, `assigned_order_count`) VALUES
(1, 'Yevhenii', 'Derevianko', '+380501552037', 'yevhenii@gmail.com', 'DH-24344H-LS', 'passport', '[]', '2022-08-02-62ea1a0dd7ccc.png', '$2y$10$qNdNlrsZPYEvrHCxFRtQIesSn1Dt2TSr2wIqlk/etoBwK15DAU/ce', 'iboCAVa6RCgmaIKGJ6bAjYsuNtLFvsI7VLFOuRo68QaOw3EEe6fXQvwYuxyaIB0Dp6W1Z7Po3MCl8ssACErIfonRWSfIakCIPpiSEFSvlwu1x1jRpX6ROUrQ', 'ewGEksrsTHmbWfILhEqiHe:APA91bF8l_Yb6UZN1DDvRMUbgEF1UErbbL-5lZqRQRtWvBK0QaKBjj-0Rs36DTatvqGvSGDa551e3ywBKlXZ8Luj7wztH9P_uxRUt7tv_J4sWxr8A6YjS03KlTvNEZc7gPJZZjdDZSoZ', 3, '2022-08-03 05:47:42', '2022-08-14 17:42:05', 1, 1, 0, 1, 'zone_wise', NULL, 'approved', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `min_purchase` decimal(24,2) NOT NULL DEFAULT '0.00',
  `max_discount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `start_date`, `end_date`, `start_time`, `end_time`, `min_purchase`, `max_discount`, `discount`, `discount_type`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, '2022-07-12', '2022-07-31', '01:00:00', '23:00:00', '1.00', '2.00', '2.00', 'percent', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `d_m_reviews`
--

CREATE TABLE `d_m_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_roles`
--

CREATE TABLE `employee_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modules` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured_venues`
--

CREATE TABLE `featured_venues` (
  `id` int(11) NOT NULL,
  `venue_id` int(5) NOT NULL DEFAULT '0',
  `zone_id` int(5) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `venue_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `featured_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'def.png',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `featured_venues`
--

INSERT INTO `featured_venues` (`id`, `venue_id`, `zone_id`, `title`, `description`, `venue_name`, `featured_image`, `created_at`, `updated_at`, `status`) VALUES
(5, 1, 3, 'Featured Rental Venue', 'This is featured rental venue. You can visit this venue and can get best reservation service from there, they provide Table Service, Pick-Up and Dine-In Services.', 'Yevhenii Cafe', '2022-08-31-630f2680446e3.png', '2022-08-31 08:14:40', '2022-08-31 08:14:40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variations` text COLLATE utf8mb4_unicode_ci,
  `add_ons` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choice_options` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(24,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(24,2) NOT NULL DEFAULT '0.00',
  `tax_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `discount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `available_time_starts` time DEFAULT NULL,
  `available_time_ends` time DEFAULT NULL,
  `veg` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_count` int(11) NOT NULL DEFAULT '0',
  `avg_rating` double(16,14) NOT NULL DEFAULT '0.00000000000000',
  `rating_count` int(11) NOT NULL DEFAULT '0',
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(5) NOT NULL DEFAULT '0',
  `f_featured` int(11) NOT NULL DEFAULT '0',
  `f_trending` int(11) NOT NULL DEFAULT '0',
  `f_isNew` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `description`, `image`, `category_id`, `category_ids`, `variations`, `add_ons`, `attributes`, `choice_options`, `price`, `tax`, `tax_type`, `discount`, `discount_type`, `available_time_starts`, `available_time_ends`, `veg`, `status`, `restaurant_id`, `created_at`, `updated_at`, `order_count`, `avg_rating`, `rating_count`, `rating`, `priority`, `f_featured`, `f_trending`, `f_isNew`) VALUES
(1, 'Sandwich', 'Chicken Sandwich', '2022-07-12-62cd45ec82268.png', 2, '[{\"id\":\"20\",\"position\":1},{\"id\":\"26\",\"position\":2}]', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Large\",\"options\":\"Large\"}]', '5.00', '0.00', 'percent', '1.00', 'percent', '01:00:00', '23:00:00', 0, 1, 4, '2022-07-12 08:59:08', '2022-07-28 06:40:27', 0, 0.00000000000000, 0, NULL, 0, 0, 0, 0),
(2, 'Fillet Fish', 'This is Fillet Fish.', '2022-07-12-62cd46a2837a7.png', 6, '[{\"id\":\"9\",\"position\":1},{\"id\":\"25\",\"position\":2}]', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Medium\",\"options\":\"Medium\"}]', '6.00', '0.00', 'percent', '2.00', 'percent', '01:00:00', '23:00:00', 0, 1, 4, '2022-07-12 09:02:10', '2022-07-12 09:02:10', 0, 0.00000000000000, 0, NULL, 0, 0, 0, 0),
(3, 'Pizza', 'This is Pizza.', '2022-07-12-62cd481f7486d.png', 8, '[{\"id\":\"2\",\"position\":1},{\"id\":\"8\",\"position\":2}]', '[{\"type\":\"Medium\",\"price\":\"0\"}]', '[]', '[\"2\"]', '[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}]', '12.00', '0.00', 'percent', '3.00', 'percent', '01:00:00', '23:00:00', 0, 1, 6, '2022-07-12 09:08:31', '2022-07-12 09:08:31', 0, 0.00000000000000, 0, NULL, 0, 0, 0, 0),
(4, 'Fillet Fish', 'This is Fillet Fish.', '2022-07-12-62cd4889c58ad.png', 10, '[{\"id\":\"3\",\"position\":1},{\"id\":\"10\",\"position\":2}]', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Medium\",\"options\":\"Medium\"}]', '15.00', '0.00', 'percent', '2.00', 'percent', '01:00:00', '23:00:00', 0, 1, 6, '2022-07-12 09:10:17', '2022-07-12 09:10:17', 0, 0.00000000000000, 0, NULL, 0, 0, 0, 0),
(5, 'Dessert', 'This is Dessert.', '2022-07-12-62cd493bc7359.png', 4, '[{\"id\":\"9\",\"position\":1},{\"id\":\"25\",\"position\":2}]', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Medium\",\"options\":\"Medium\"}]', '8.00', '0.00', 'percent', '2.00', 'percent', '01:00:00', '23:00:00', 0, 1, 5, '2022-07-12 09:13:15', '2022-07-12 09:13:15', 0, 0.00000000000000, 0, NULL, 0, 0, 0, 0),
(6, 'Chow Mein', 'This is Chow Mein.', '2022-07-12-62cd4982c2895.png', 10, '[{\"id\":\"3\",\"position\":1},{\"id\":\"10\",\"position\":2}]', '[{\"type\":\"Medium\",\"price\":\"0\"}]', '[]', '[\"2\"]', '[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}]', '9.00', '0.00', 'percent', '1.00', 'percent', '01:00:00', '23:00:00', 0, 1, 5, '2022-07-12 09:14:26', '2022-07-12 09:14:26', 0, 0.00000000000000, 0, NULL, 0, 0, 0, 0),
(7, 'Grilled Cheese', 'This is Grilled Cheese.', '2022-07-12-62cd4acb586f6.png', 4, '[{\"id\":\"9\",\"position\":1},{\"id\":\"25\",\"position\":2}]', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Medium\",\"options\":\"Medium\"}]', '8.00', '0.00', 'percent', '2.00', 'percent', '01:00:00', '23:00:00', 0, 1, 3, '2022-07-12 09:19:55', '2022-07-12 09:19:55', 0, 0.00000000000000, 0, NULL, 0, 0, 0, 0),
(8, 'Sandwich', 'This is Sea Food Sandwich.', '2022-07-12-62cd4b177dbb2.png', 9, '[{\"id\":\"2\",\"position\":1},{\"id\":\"9\",\"position\":2}]', '[{\"type\":\"Medium\",\"price\":\"0\"}]', '[]', '[\"2\"]', '[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}]', '12.00', '0.00', 'percent', '3.00', 'percent', '01:00:00', '23:00:00', 0, 1, 3, '2022-07-12 09:21:11', '2022-07-12 09:21:11', 0, 0.00000000000000, 0, NULL, 0, 0, 0, 0),
(9, 'Sandwich', 'This is Olive Sandwich.', '2022-07-12-62cd4b944f0fa.png', 8, '[{\"id\":\"2\",\"position\":1},{\"id\":\"8\",\"position\":2}]', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[\"1\"]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Medium\",\"options\":\"Medium\"}]', '5.00', '0.00', 'percent', '1.00', 'percent', '01:00:00', '23:00:00', 0, 1, 1, '2022-07-12 09:23:16', '2022-07-12 09:23:16', 0, 0.00000000000000, 0, NULL, 0, 0, 0, 0),
(10, 'Chow Mein', 'This is Chow Mein.', '2022-07-12-62cd4bdf791b2.png', 1, '[{\"id\":\"9\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '[{\"type\":\"Medium\",\"price\":\"0\"}]', '[\"1\"]', '[\"2\"]', '[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}]', '12.00', '0.00', 'percent', '1.00', 'percent', '00:00:00', '23:55:00', 0, 1, 1, '2022-07-12 09:24:31', '2022-08-25 20:23:27', 1, 5.00000000000000, 1, '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":1}', 1, 1, 1, 0),
(11, 'Drink', 'This is Drink.', '2022-07-12-62cd4c482c404.png', 5, '[{\"id\":\"9\",\"position\":1},{\"id\":\"25\",\"position\":2}]', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Medium\",\"options\":\"Medium\"}]', '11.00', '0.00', 'percent', '2.00', 'percent', '01:00:00', '23:00:00', 0, 1, 2, '2022-07-12 09:26:16', '2022-08-19 08:01:28', 0, 5.00000000000000, 1, '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":1}', 0, 0, 0, 0),
(12, 'Main Course', 'This is Main Course.', '2022-07-12-62cd4c99d56c3.png', 3, '[{\"id\":\"9\",\"position\":1},{\"id\":\"25\",\"position\":2}]', '[{\"type\":\"Medium\",\"price\":\"0\"}]', '[]', '[\"2\"]', '[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}]', '12.00', '0.00', 'percent', '3.00', 'percent', '01:00:00', '23:00:00', 0, 1, 2, '2022-07-12 09:27:37', '2022-08-19 08:01:41', 0, 5.00000000000000, 1, '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":1}', 1, 1, 0, 0),
(15, 'Juice', 'This is Test 1.', '2022-07-17-62d4fe31f1d10.png', 5, '[{\"id\":\"10\",\"position\":1},{\"id\":\"29\",\"position\":2}]', '[{\"type\":\"Medium\",\"price\":\"0\"}]', '[\"1\",\"3\",\"5\",\"6\"]', '[\"2\"]', '[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}]', '22.00', '0.00', 'percent', '0.00', 'percent', '00:00:00', '23:55:00', 0, 1, 1, '2022-07-17 22:46:57', '2022-08-25 20:29:57', 2, 5.00000000000000, 2, '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":2}', 1, 1, 1, 0),
(16, 'Choco Pie', 'This is Choco Pie.', '2022-07-17-62d4fe16b77f2.png', 4, '[{\"id\":\"11\",\"position\":1},{\"id\":\"28\",\"position\":2}]', '[{\"type\":\"Medium\",\"price\":\"0\"}]', '[]', '[\"2\"]', '[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}]', '1.00', '0.00', 'percent', '0.00', 'percent', '01:00:00', '23:00:00', 0, 1, 2, '2022-07-18 00:26:48', '2022-08-18 12:48:54', 0, 5.00000000000000, 1, '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":1}', 1, 1, 0, 0),
(17, 'Ice Cream', 'This is Ice Cream.', '2022-07-18-62d50a5d7bc28.png', 3, '[{\"id\":\"14\",\"position\":1},{\"id\":\"25\",\"position\":2}]', '[{\"type\":\"Medium\",\"price\":\"0\"}]', '[\"1\",\"5\"]', '[\"2\"]', '[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}]', '22.00', '0.00', 'percent', '0.00', 'amount', '01:00:00', '23:55:00', 0, 1, 1, '2022-07-18 06:23:09', '2022-08-25 19:55:13', 1, 5.00000000000000, 3, '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":3}', 0, 0, 1, 0),
(18, 'Spain Pizza', 'This is Spain Pizza.', '2022-07-18-62d50a96dba9c.png', 4, '[{\"id\":\"20\",\"position\":1},{\"id\":\"26\",\"position\":2}]', '[{\"type\":\"Large\",\"price\":\"0\"}]', '[]', '[\"3\"]', '[{\"name\":\"choice_3\",\"title\":\"Large\",\"options\":\"Large\"}]', '1.00', '0.00', 'percent', '0.00', 'percent', '01:00:00', '23:00:00', 0, 1, 2, '2022-07-18 06:24:06', '2022-08-18 12:48:56', 0, 5.00000000000000, 1, '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":1}', 1, 1, 1, 0),
(20, 'Test 1', 'This is a test 1.', '2022-08-11-62f4c58ce5865.png', 7, '[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}]', '[{\"type\":\"Family-Size\",\"price\":\"0\"}]', '[\"6\",\"5\",\"10\"]', '[\"4\"]', '[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}]', '51.00', '0.00', 'percent', '0.00', 'percent', '00:10:00', '23:55:00', 0, 1, 1, '2022-08-11 08:02:04', '2022-08-25 20:29:57', 3, 5.00000000000000, 1, '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":1}', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_campaigns`
--

CREATE TABLE `item_campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variations` text COLLATE utf8mb4_unicode_ci,
  `add_ons` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choice_options` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(24,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(24,2) NOT NULL DEFAULT '0.00',
  `tax_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `discount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `veg` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loyalty_point_transactions`
--

CREATE TABLE `loyalty_point_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `debit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `balance` decimal(24,3) NOT NULL DEFAULT '0.000',
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_configs`
--

CREATE TABLE `mail_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_05_081114_create_admins_table', 1),
(5, '2021_05_05_102600_create_attributes_table', 1),
(6, '2021_05_05_102742_create_categories_table', 1),
(7, '2021_05_06_102004_create_vendors_table', 1),
(8, '2021_05_06_153204_create_restaurants_table', 1),
(9, '2021_05_08_113436_create_add_ons_table', 2),
(47, '2021_05_08_123446_create_food_table', 10),
(48, '2021_05_08_141209_create_currencies_table', 10),
(49, '2021_05_09_050232_create_orders_table', 10),
(50, '2021_05_09_051907_create_reviews_table', 10),
(51, '2021_05_09_054237_create_order_details_table', 10),
(52, '2021_05_10_105324_create_mail_configs_table', 10),
(53, '2021_05_10_152713_create_business_settings_table', 10),
(54, '2021_05_11_111722_create_banners_table', 11),
(55, '2021_05_11_134442_create_coupons_table', 11),
(56, '2021_05_12_053344_create_conversations_table', 11),
(57, '2021_05_12_055454_create_delivery_men_table', 12),
(58, '2021_05_12_060138_create_d_m_reviews_table', 12),
(59, '2021_05_12_060527_create_track_deliverymen_table', 12),
(60, '2021_05_12_061345_create_email_verifications_table', 12),
(61, '2021_05_12_061454_create_delivery_histories_table', 12),
(62, '2021_05_12_061718_create_wishlists_table', 12),
(63, '2021_05_12_061924_create_notifications_table', 12),
(64, '2021_05_12_062152_create_customer_addresses_table', 12),
(68, '2021_05_12_062412_create_order_delivery_histories_table', 13),
(69, '2021_05_19_115112_create_zones_table', 13),
(70, '2021_05_19_120612_create_restaurant_zone_table', 13),
(71, '2021_06_07_103835_add_column_to_vendor_table', 14),
(73, '2021_06_07_112335_add_column_to_vendors_table', 15),
(74, '2021_06_08_162354_add_column_to_restaurants_table', 16),
(77, '2021_06_09_115719_add_column_to_add_ons_table', 17),
(78, '2021_06_10_091547_add_column_to_coupons_table', 18),
(79, '2021_06_12_070530_rename_banners_table', 19),
(80, '2021_06_12_091154_add_column_on_campaigns_table', 20),
(87, '2021_06_12_091848_create_item_campaigns_table', 21),
(92, '2021_06_13_155531_create_campaign_restaurant_table', 22),
(93, '2021_06_14_090520_add_item_campaign_id_column_to_reviews_table', 23),
(94, '2021_06_14_091735_add_item_campaign_id_column_to_order_details_table', 24),
(95, '2021_06_14_120713_create_new_banners_table', 25),
(96, '2021_06_15_103656_add_zone_id_column_to_banners_table', 26),
(97, '2021_06_16_110322_create_discounts_table', 27),
(100, '2021_06_17_150243_create_withdraw_requests_table', 28),
(103, '2016_06_01_000001_create_oauth_auth_codes_table', 30),
(104, '2016_06_01_000002_create_oauth_access_tokens_table', 30),
(105, '2016_06_01_000003_create_oauth_refresh_tokens_table', 30),
(106, '2016_06_01_000004_create_oauth_clients_table', 30),
(107, '2016_06_01_000005_create_oauth_personal_access_clients_table', 30),
(108, '2021_06_21_051135_add_delivery_charge_to_orders_table', 31),
(110, '2021_06_23_080009_add_role_id_to_admins_table', 32),
(111, '2021_06_27_140224_add_interest_column_to_users_table', 33),
(113, '2021_06_27_142558_change_column_to_restaurants_table', 34),
(114, '2021_06_27_152139_add_restaurant_id_column_to_wishlists_table', 35),
(115, '2021_06_28_142443_add_restaurant_id_column_to_customer_addresses_table', 36),
(118, '2021_06_29_134119_add_schedule_column_to_orders_table', 37),
(122, '2021_06_30_084854_add_cm_firebase_token_column_to_users_table', 38),
(123, '2021_06_30_133932_add_code_column_to_coupons_table', 39),
(127, '2021_07_01_151103_change_column_food_id_from_admin_wallet_histories_table', 40),
(129, '2021_07_04_142159_add_callback_column_to_orders_table', 41),
(131, '2021_07_05_155506_add_cm_firebase_token_to_vendors_table', 42),
(133, '2021_07_05_162404_add_otp_to_orders_table', 43),
(134, '2021_07_13_133941_create_admin_roles_table', 44),
(135, '2021_07_14_074431_add_status_to_delivery_men_table', 45),
(136, '2021_07_14_104102_create_vendor_employees_table', 46),
(137, '2021_07_14_110011_create_employee_roles_table', 46),
(138, '2021_07_15_124141_add_cover_photo_to_restaurants_table', 47),
(143, '2021_06_17_145949_create_wallets_table', 48),
(144, '2021_06_19_052600_create_admin_wallets_table', 48),
(145, '2021_07_19_103748_create_delivery_man_wallets_table', 48),
(146, '2021_07_19_105442_create_account_transactions_table', 48),
(147, '2021_07_19_110152_create_order_transactions_table', 48),
(148, '2021_07_19_134356_add_column_to_notifications_table', 49),
(149, '2021_07_25_125316_add_available_to_delivery_men_table', 50),
(150, '2021_07_25_154722_add_columns_to_restaurants_table', 51),
(151, '2021_07_29_162336_add_schedule_order_column_to_restaurants_table', 52),
(152, '2021_07_31_140756_create_phone_verifications_table', 53),
(153, '2021_08_01_151717_add_column_to_order_transactions_table', 54),
(154, '2021_08_01_163520_add_column_to_admin_wallets_table', 54),
(155, '2021_08_02_141909_change_time_column_to_restaurants_table', 55),
(157, '2021_08_02_183356_add_tax_column_to_restaurants_table', 56),
(158, '2021_08_04_215618_add_zone_id_column_to_restaurants_table', 57),
(159, '2021_08_06_123001_add_address_column_to_orders_table', 58),
(160, '2021_08_06_123326_add_zone_wise_topic_column_to_zones_table', 58),
(161, '2021_08_08_112127_add_scheduled_column_on_orders_table', 59),
(162, '2021_08_08_203108_add_status_column_to_users_table', 60),
(163, '2021_08_11_193805_add_product_discount_ammount_column_to_orders_table', 61),
(165, '2021_08_12_112511_add_addons_column_to_order_details_table', 62),
(166, '2021_08_12_195346_add_zone_id_to_notifications_table', 63),
(167, '2021_08_14_110131_create_user_notifications_table', 64),
(168, '2021_08_14_175657_add_order_count_column_to_foods_table', 65),
(169, '2021_08_14_180044_add_order_count_column_to_users_table', 65),
(170, '2021_08_19_051055_add_earnign_column_to_deliverymen_table', 66),
(171, '2021_08_19_051721_add_original_delivery_charge_column_to_orders_table', 66),
(172, '2021_08_19_055839_create_provide_d_m_earnings_table', 67),
(173, '2021_08_19_112810_add_original_delivery_charge_column_to_order_transactions_table', 67),
(174, '2021_08_19_114851_add_columns_to_delivery_man_wallets_table', 67),
(175, '2021_08_21_162616_change_comission_column_to_restaurants_table', 68),
(176, '2021_06_17_054551_create_soft_credentials_table', 69),
(177, '2021_08_22_232507_add_failed_column_to_orders_table', 69),
(178, '2021_09_04_172723_add_column_reviews_section_to_restaurants_table', 69),
(179, '2021_09_11_164936_change_delivery_address_column_to_orders_table', 70),
(180, '2021_09_11_165426_change_address_column_to_customer_addresses_table', 70),
(181, '2021_09_23_120332_change_available_column_to_delivery_men_table', 71),
(182, '2021_10_03_214536_add_active_column_to_restaurants_table', 72),
(183, '2021_10_04_123739_add_priority_column_to_categories_table', 72),
(184, '2021_10_06_200730_add_restaurant_id_column_to_demiverymen_table', 72),
(185, '2021_10_07_223332_add_self_delivery_column_to_restaurants_table', 72),
(186, '2021_10_11_214123_change_add_ons_column_to_order_details_table', 72),
(187, '2021_10_11_215352_add_adjustment_column_to_orders_table', 72),
(188, '2021_10_24_184553_change_column_to_account_transactions_table', 73),
(189, '2021_10_24_185143_change_column_to_add_ons_table', 73),
(190, '2021_10_24_185525_change_column_to_admin_roles_table', 73),
(191, '2021_10_24_185831_change_column_to_admin_wallets_table', 73),
(192, '2021_10_24_190550_change_column_to_coupons_table', 73),
(193, '2021_10_24_190826_change_column_to_delivery_man_wallets_table', 73),
(194, '2021_10_24_191018_change_column_to_discounts_table', 73),
(195, '2021_10_24_191209_change_column_to_employee_roles_table', 73),
(196, '2021_10_24_191343_change_column_to_food_table', 73),
(197, '2021_10_24_191514_change_column_to_item_campaigns_table', 73),
(198, '2021_10_24_191626_change_column_to_orders_table', 73),
(199, '2021_10_24_191938_change_column_to_order_details_table', 73),
(200, '2021_10_24_192341_change_column_to_order_transactions_table', 73),
(201, '2021_10_24_192621_change_column_to_provide_d_m_earnings_table', 73),
(202, '2021_10_24_192820_change_column_type_to_restaurants_table', 73),
(203, '2021_10_24_192959_change_column_type_to_restaurant_wallets_table', 73),
(204, '2021_11_02_123115_add_delivery_time_column_to_restaurants_table', 74),
(205, '2021_11_02_170217_add_total_uses_column_to_coupons_table', 74),
(206, '2021_12_01_131746_add_status_column_to_reviews_table', 75),
(207, '2021_12_01_135115_add_status_column_to_d_m_reviews_table', 75),
(208, '2021_12_13_125126_rename_comlumn_set_menu_to_food_table', 75),
(209, '2021_12_13_132438_add_zone_id_column_to_admins_table', 75),
(210, '2021_12_18_174714_add_application_status_column_to_delivery_men_table', 75),
(211, '2021_12_20_185736_change_status_column_to_vendors_table', 75),
(212, '2021_12_22_114414_create_translations_table', 75),
(213, '2022_01_05_133920_add_sosial_data_column_to_users_table', 75),
(214, '2022_01_05_172441_add_veg_non_veg_column_to_restaurants_table', 75),
(215, '2022_01_20_151449_add_restaurant_id_column_on_employee_roles_table', 76),
(216, '2022_01_31_124517_add_veg_column_to_item_campaigns_table', 76),
(217, '2022_02_01_101248_change_coupon_code_column_length_to_coupons_table', 76),
(218, '2022_02_01_104336_change_column_length_to_notifications_table', 76),
(219, '2022_02_06_160701_change_column_length_to_item_campaigns_table', 76),
(220, '2022_02_06_161110_change_column_length_to_campaigns_table', 76),
(221, '2022_02_07_091359_add_zone_id_column_on_orders_table', 76),
(222, '2022_02_07_101547_change_name_column_to_categories_table', 76),
(223, '2022_02_07_152844_add_zone_id_column_to_order_transactions_table', 76),
(224, '2022_02_07_162330_add_zone_id_column_to_users_table', 76),
(225, '2022_02_07_173644_add_column_to_food_table', 76),
(226, '2022_02_07_181314_add_column_to_delivery_men_table', 76),
(227, '2022_02_07_183001_add_total_order_count_column_to_restaurants_table', 76),
(228, '2022_01_19_060356_create_restaurant_schedule_table', 77),
(229, '2022_03_31_103418_create_wallet_transactions_table', 78),
(230, '2022_03_31_103827_create_loyalty_point_transactions_table', 78),
(231, '2022_04_09_161150_add_wallet_point_columns_to_users_table', 78),
(232, '2022_04_12_121040_create_social_media_table', 78),
(233, '2022_04_17_140353_change_column_transaction_referance_to_orders_table', 78),
(234, '2022_04_10_030533_create_newsletters_table', 79),
(235, '2022_05_14_122133_add_dm_tips_column_to_orders_table', 80),
(236, '2022_05_14_122603_add_dm_tips_column_to_order_transactions_table', 80),
(237, '2022_05_14_131338_add_processing_time_column_to_orders_table', 80),
(238, '2022_05_17_153333_add_ref_code_to_users_table', 80),
(239, '2022_05_22_162129_add_new_columns_to_customer_addresses_table', 80),
(240, '2022_07_13_233610_create_cuisines_table', 81),
(241, '2022_07_14_135922_create_cuisines_table', 82),
(242, '2022_07_18_035420_create_businesses_table', 83),
(243, '2022_07_19_120250_create_reservations_table', 84),
(244, '2022_07_19_123048_create_food_orders_table', 85),
(245, '2022_07_20_123536_create_tables_table', 86);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Subscribers email',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tergat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`, `tergat`, `zone_id`) VALUES
(1, 'SWUSHD Notification', 'Test notification', '2022-08-24-6305cfc928b0d.png', 1, '2022-08-24 06:07:55', '2022-08-24 06:14:17', 'customer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('02c187400441f53687a30af580361503d21ab9e30fc263f729536e3e6fb8e013c5f10f170df66154', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-14 07:26:44', '2021-08-14 07:26:44', '2022-08-14 13:26:44'),
('03652f98734cb46633be656afd61eb9d6bef93da6cb3f97e5d862e758bc8a7458f4271c9fc525a03', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-07-04 04:56:56', '2021-07-04 04:56:56', '2022-07-04 10:56:56'),
('06fe5283336362fd767c05d917afccee22a52ca409c73ec0502de6461cd697bd4d351ed6bdc880c2', 92, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-22 11:25:05', '2022-08-22 11:25:05', '2023-08-22 05:25:05'),
('0a386561d2a41a35e5620fe90b3357839aaeb88e5e784b37046139514d668c28ca6c283fd9dff3f7', 84, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-09 21:42:52', '2022-08-09 21:42:52', '2023-08-09 15:42:52'),
('0ce77d214106aa7d2691f22e57a52d61e83c4a74e232b6cf6409728c337a731412d5f011c265abf9', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-08 14:51:24', '2021-08-08 14:51:24', '2022-08-08 20:51:24'),
('16f86ef7cc88208da0508e39ce3a7d6fd6fa09ea89d11de532e6d0eaf9a9284866881b244104fd38', 94, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-15 13:34:07', '2022-08-15 13:34:07', '2023-08-15 07:34:07'),
('173577d68e88b51b1f0befaac070693c6f9dec3550920503bb57ce7e496e15cdf1d60cb0cedb0b59', 90, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-30 13:33:19', '2022-08-30 13:33:19', '2023-08-30 07:33:19'),
('1796645666d7dd6ef53186e095fb9c39d2128e5cca19f2e1ac8e7e7da82d6174fe98b14e94925188', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-04 07:35:29', '2021-08-04 07:35:29', '2022-08-04 13:35:29'),
('1866681fc118269610bf533fdc1c4a6e1d4b880b42c42c7ae76bc3a687f8e5c5e8e2603b23ab9470', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-07-12 11:43:35', '2022-07-12 11:43:35', '2023-07-12 05:43:35'),
('189fcc24a1e5be583eb8fb29fcb0dbdca68b62e051e76032206137d1c48227e0dcab413d6514acb3', 88, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-09 21:51:35', '2022-08-09 21:51:35', '2023-08-09 15:51:35'),
('1de68cbb2144eb7f81172d6fd1597f9ed35fafe2f73c7716c6a0fd6cec1d7496bb2b85a987b7f6bf', 71, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-08 23:12:21', '2022-08-08 23:12:21', '2023-08-08 17:12:21'),
('1f295181d954ad8d85d52c54f89314067f1520400b021369881e07d0e1cb20a4c98dfd0fdb014fe7', 95, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-29 06:26:36', '2022-08-29 06:26:36', '2023-08-29 00:26:36'),
('1f6167794eb5c7e61d2ee262269336a93bdab331fb9d12613bf4b3fb148e2feb0c9f3a9439202162', 66, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-08 22:08:07', '2022-08-08 22:08:07', '2023-08-08 16:08:07'),
('2608a717bf5a2dc0c667ba2a12c60d56ba1cebb7b0e241b6e84060cbe7e9c2550f0f6f6345cfbb33', 66, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-08 21:27:29', '2022-08-08 21:27:29', '2023-08-08 15:27:29'),
('2919672ecc1e3dd9f2759d15f8cc54882d1d9f780cfda82fb83c8359de8654492ea6703956a7c50d', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-07-15 08:22:28', '2021-07-15 08:22:28', '2022-07-15 14:22:28'),
('2bb1de3c1dd9a9eaee9edd35e981a5aa80df05e9fc8048578f96612e9ac4702e7b950b7064472a71', 70, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-08 23:05:59', '2022-08-08 23:05:59', '2023-08-08 17:05:59'),
('2e824f81da6eb8b379b5f9ba71d78232dd42e3db051b616fcfdb90cf4e6f26a89e37b6bafb2218e6', 86, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-09 21:47:39', '2022-08-09 21:47:39', '2023-08-09 15:47:39'),
('2f49586a4ac33179f846e60afba15e655ceef494cd64f6812d4ab109336f5fb008cb3005137f700c', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-03 13:21:13', '2021-08-03 13:21:13', '2022-08-03 19:21:13'),
('2f5eeb5c47a51b66453801932d6399f8974ec4735f12e5df504d49ba65c792ac2d1198fcd1135503', 93, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-15 13:11:30', '2022-08-15 13:11:30', '2023-08-15 07:11:30'),
('3115e428f22908fa2d94bf2804d1ed2d9929cb27da233aedf24c8bc71dc8066f91b0c63a795c26e9', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-07-31 08:33:37', '2021-07-31 08:33:37', '2022-07-31 14:33:37'),
('36217e984b8904eb4dfd30ed62eef9d725c1e8e63a6c1485bb084ef323ad5eea852c84e17560bd54', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-07-14 00:51:51', '2021-07-14 00:51:51', '2022-07-14 06:51:51'),
('371da002108c5da6747f90bca457731152349d5452dcff4020c594c20afcd656b164b59023ee3a48', 94, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-15 13:15:42', '2022-08-15 13:15:42', '2023-08-15 07:15:42'),
('3abfb4980fdf3c858e1c371352db40dae9e1e40f095b00dcd09c84ff7c8189a305f1be985e4274b3', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-19 03:50:53', '2021-06-19 03:50:53', '2022-06-19 09:50:53'),
('3cd3269423e543961a7b64e8169875725eb47f8d0f309c69a4a770258de65e9c02057ed9000942da', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-04 07:35:04', '2021-08-04 07:35:04', '2022-08-04 13:35:04'),
('3e923b1f4084faba1a2e5448bd8b72e09b74db6ed25fbe14f6960a5f005107496cc507c1ba15c6e1', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-22 01:32:58', '2021-06-22 01:32:58', '2022-06-22 07:32:58'),
('3ee4ea07f51b085fc437ef49236ec0729a7e953e1ed24a19c0278cfcaff04d4fa044b4c34c9ff221', 89, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-09 22:00:23', '2022-08-09 22:00:23', '2023-08-09 16:00:23'),
('4140d5b9b3d16e4bbef1b676b01f13f75d9c3fb2cada6548e50b0b2679562aace3b9b44f82f15f30', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-19 17:10:26', '2021-08-19 17:10:26', '2022-08-19 23:10:26'),
('4c1b8f3dc4cdf975a8030a1981a6abe4522713397f0e16a57b0991a2c56017ce3f126150ccf90ff6', 95, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-23 07:57:54', '2022-08-23 07:57:54', '2023-08-23 01:57:54'),
('4cfad08796e4a1eecfe8bbdc20e512e0954570168990fa60442ad41b5ecf05e4005cadcae08fbddd', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-19 03:29:52', '2021-06-19 03:29:52', '2022-06-19 09:29:52'),
('52f7e424c4c11469af168401bc1a8fb27f8bb556a0938c125bd695e2b904a68c811717ec04c75880', 66, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-08 21:30:26', '2022-08-08 21:30:26', '2023-08-08 15:30:26'),
('53afc11b36d08435d8ec82c42305f7aa4397d10b2d296f6e7d819e091d0d7c6d48e14cdc5e66e6c9', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-23 23:08:01', '2021-06-23 23:08:01', '2022-06-24 05:08:01'),
('55fa3fa7909049956ad160e42f7d0d6eb301a318147d05c4ef6b30b35c55429bfe27445a6e563683', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-07-13 19:27:28', '2022-07-13 19:27:28', '2023-07-13 13:27:28'),
('5646d6337aaed0e662c059ed368372e2da241ff97a42df56310667ec321fdbf2252d92771988640a', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-04 07:37:55', '2021-08-04 07:37:55', '2022-08-04 13:37:55'),
('59551e481bc1fb037bee07e1501d81dad38d4ff34fdca68a49c40d0cf423176ca111940acd359aeb', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-08 14:50:59', '2021-08-08 14:50:59', '2022-08-08 20:50:59'),
('5b19b8223e0c302c8b45cefb4e4aefa32d56472229f1d1e7b6a8094fb9ac6a22f7a0f5adc128ec86', 94, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-15 13:14:24', '2022-08-15 13:14:24', '2023-08-15 07:14:24'),
('5b6e9cdb197ebc2dc1e5a8b6db61b1acdf6e298cf6da8e801e38a376b1e99614d7cfcab096db1f7a', 91, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-14 15:21:15', '2022-08-14 15:21:15', '2023-08-14 09:21:15'),
('6596f7e8c7aa8cf259ab307dbf9b36347ea0842c2d987ce42f8a7b07a92c9a4b942850768f6e01df', 92, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-14 15:54:29', '2022-08-14 15:54:29', '2023-08-14 09:54:29'),
('68b06321c4bbbea81e7dfcbd8d5fae1a94a2fa0500041ee5774be2d9300c1ff7590d03604b77514a', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-07-28 02:33:54', '2021-07-28 02:33:54', '2022-07-28 08:33:54'),
('719300cdb37a893fc52427072ae5ea770b9a82a46a9705077ae99ab658c94a26a23aee551958c35b', 82, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-09 21:39:00', '2022-08-09 21:39:00', '2023-08-09 15:39:00'),
('723ceee668cd1a7fc2e977be48cab3f31aed1ace0883692711b5cc2ddf42c2f23c6d75461172105f', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-07-01 05:46:27', '2021-07-01 05:46:27', '2022-07-01 11:46:27'),
('72eb2869af579713dfa40047b4ee156248d3b06dcc40cf7f25c6608f1da162a979b7421e22627f09', 90, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-29 07:24:55', '2022-08-29 07:24:55', '2023-08-29 01:24:55'),
('74c1f18543dddfead3307189671574ac94ad6dce9b7f5b37c3fe6af76fd6734b29a8f432bb946f40', 67, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-08 22:32:56', '2022-08-08 22:32:56', '2023-08-08 16:32:56'),
('74e2dd27429bb92c12e33f891ccff32f48c22463166666705d145cfd8968d96ec992fa2cc3a36e76', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-23 23:08:23', '2021-06-23 23:08:23', '2022-06-24 05:08:23'),
('77c9389b2ab3031e09005a7e7be90d00496ff073dbbefeb57229cee5d0a240376c1f7c3c8a94faff', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-19 03:38:22', '2021-06-19 03:38:22', '2022-06-19 09:38:22'),
('77df9ac502ae1d0ebf14d70726ddd095b01a6006e8fd149d8531a3a22c66ab9e6f28b930ac4d04de', 65, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-08 18:50:33', '2022-08-08 18:50:33', '2023-08-08 12:50:33'),
('86257dd84cfa9c22e9f661681f15784820bafd1cf2d700baa8ba49bab77c82644a841908bffec596', 90, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-12 22:12:04', '2022-08-12 22:12:04', '2023-08-12 16:12:04'),
('8a20c4f8656e404615f9abc15a95f6754dd87e4e894677647dd17236b95d8a5d7cc243c38457b048', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-07-04 02:36:57', '2021-07-04 02:36:57', '2022-07-04 08:36:57'),
('8be1af0d554a8e0d6d89c2a2a8f332f969d549075c35f092941286211357b5dd22552b860dda4933', 68, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-08 22:43:52', '2022-08-08 22:43:52', '2023-08-08 16:43:52'),
('8ffc458ddbcbbbec17035dc2153c4baeebb5c54796b3a9008f24c8699197a8a2fc1111c36cc1d7da', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-14 07:27:12', '2021-08-14 07:27:12', '2022-08-14 13:27:12'),
('91b2a336c45a8063e719ee1f89a0ad85ff3834048b1a5ba594585311d58aaa7e55b5d8f69adf355a', 72, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-09 21:11:47', '2022-08-09 21:11:47', '2023-08-09 15:11:47'),
('a092dc4a49ec27a06d8c9c335446de3d90e03363c6059cdf6fbf2113edaab5fe752053a794ac9236', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-08 10:12:49', '2021-08-08 10:12:49', '2022-08-08 16:12:49'),
('b238424a888b40737c0f04dfd62df7981820b49b1442c2c953cfd24c2ab467b87f0eb05baa35a312', 90, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-13 09:46:09', '2022-08-13 09:46:09', '2023-08-13 03:46:09'),
('b4651c7e8bbe8a68b4959504c3a7e3705208cbdb79fcc2498b9b3d0efa9c7cadc77699590cf8f2d4', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-20 03:59:46', '2021-06-20 03:59:46', '2022-06-20 09:59:46'),
('b5170fa023d67af894b3e713d3a7507faa7c2626d11da5dfdd53af7b5593f1cb82f44819fca44863', 95, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-22 11:49:48', '2022-08-22 11:49:48', '2023-08-22 05:49:48'),
('b9a2b51aa8889c9cdebaf83cfddfda3124ab3dac286eb16db24a15632846dfe647a06120c3e41af3', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-07-18 18:01:07', '2022-07-18 18:01:07', '2023-07-18 12:01:07'),
('bf24e16194d82c4e2982724df0fef68f7923d6d01ce8c5e1b64e2716d2412db6e62891f0f8dae8a6', 57, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-07-31 08:34:19', '2021-07-31 08:34:19', '2022-07-31 14:34:19'),
('bf72d53309d04d125d16c2c14c22be3cc375657b5f11b93860ac94c4f6be68fe75a462e0bc2ce7b7', 90, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-30 07:56:07', '2022-08-30 07:56:07', '2023-08-30 01:56:07'),
('c1b7df78e7373f5eca5f64083ac9bbc6c9bd582adf6c143f520c8a65420d3ee050044e6f65f0a033', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-24 03:40:43', '2021-06-24 03:40:43', '2022-06-24 09:40:43'),
('d3a4942dea8556e6240d4b41b3088ef168b3cd2aabea1804d8c356709a98f306b935af9b9d931a50', 87, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-09 21:48:24', '2022-08-09 21:48:24', '2023-08-09 15:48:24'),
('dd6578c99fc90f666b9433871d28f9913fefc860d9a60427388cfcf727be6f5c10eb8b764b39c557', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-28 10:20:50', '2021-06-28 10:20:50', '2022-06-28 16:20:50'),
('e27feb462e1d378412c1fa39d2c30c1488b8dd3ef6825057b167614a6f678fb2817d22766cde322f', 69, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-08 22:57:22', '2022-08-08 22:57:22', '2023-08-08 16:57:22'),
('e4e0141d4fd230ce1db58b4e0d66a95eca4dba73acc3ddac9079a24bbb76fc52458b82650f30f1a7', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-07-18 17:58:16', '2022-07-18 17:58:16', '2023-07-18 11:58:16'),
('ea3ca170bd7935fe3f2a9c80c74d1e8e6eda8cc197ce2066305a286d175ad250475a4657e498779b', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-21 01:24:25', '2021-06-21 01:24:25', '2022-06-21 07:24:25'),
('edef567c2969eadee121022742175cf0cb8e91e9394a16a749405cc19b6af5b3ac9c2038a6b92f56', 85, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-09 21:46:26', '2022-08-09 21:46:26', '2023-08-09 15:46:26'),
('f58064b140b90c1d8b8589a9919bd468f88748d3b279dc35e66fc779d28d19d6c44a42b03f2c00f9', 82, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-08-09 21:44:02', '2022-08-09 21:44:02', '2023-08-09 15:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'qFAwGhxq8A6SDmolyxZunXyQ4mxOH0jEezXsgaxP', NULL, 'http://localhost', 1, 0, 0, '2021-06-19 03:27:59', '2021-06-19 03:27:59'),
(2, NULL, 'Laravel Password Grant Client', 'qdV021R3MGGAwRxvvqG0mWgnypwzolzusBq1L5W6', 'users', 'http://localhost', 0, 1, 0, '2021-06-19 03:27:59', '2021-06-19 03:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-06-19 03:27:59', '2021-06-19 03:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_amount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `coupon_discount_amount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `coupon_discount_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `total_tax_amount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `service_charge` decimal(10,0) NOT NULL DEFAULT '0',
  `tax` decimal(10,0) NOT NULL DEFAULT '0',
  `server_tip_amount` decimal(10,0) NOT NULL DEFAULT '0',
  `server_tip_method` int(11) NOT NULL DEFAULT '0',
  `promo` decimal(10,0) NOT NULL DEFAULT '0',
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_note` text COLLATE utf8mb4_unicode_ci,
  `order_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'delivery',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_charge` decimal(24,2) NOT NULL DEFAULT '0.00',
  `schedule_at` timestamp NULL DEFAULT NULL,
  `callback` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pending` timestamp NULL DEFAULT NULL,
  `accepted` timestamp NULL DEFAULT NULL,
  `confirmed` timestamp NULL DEFAULT NULL,
  `processing` timestamp NULL DEFAULT NULL,
  `handover` timestamp NULL DEFAULT NULL,
  `picked_up` timestamp NULL DEFAULT NULL,
  `delivered` timestamp NULL DEFAULT NULL,
  `canceled` timestamp NULL DEFAULT NULL,
  `refund_requested` timestamp NULL DEFAULT NULL,
  `refunded` timestamp NULL DEFAULT NULL,
  `delivery_address` text COLLATE utf8mb4_unicode_ci,
  `scheduled` tinyint(1) NOT NULL DEFAULT '0',
  `restaurant_discount_amount` decimal(24,2) NOT NULL,
  `original_delivery_charge` decimal(24,2) NOT NULL DEFAULT '0.00',
  `failed` timestamp NULL DEFAULT NULL,
  `adjusment` decimal(24,2) NOT NULL DEFAULT '0.00',
  `edited` tinyint(1) NOT NULL DEFAULT '0',
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `device_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dm_tips` double(24,2) NOT NULL DEFAULT '0.00',
  `processing_time` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_amount`, `coupon_discount_amount`, `coupon_discount_title`, `payment_status`, `order_status`, `total_tax_amount`, `service_charge`, `tax`, `server_tip_amount`, `server_tip_method`, `promo`, `payment_method`, `transaction_reference`, `delivery_address_id`, `delivery_man_id`, `coupon_code`, `order_note`, `order_type`, `checked`, `restaurant_id`, `created_at`, `updated_at`, `delivery_charge`, `schedule_at`, `callback`, `otp`, `pending`, `accepted`, `confirmed`, `processing`, `handover`, `picked_up`, `delivered`, `canceled`, `refund_requested`, `refunded`, `delivery_address`, `scheduled`, `restaurant_discount_amount`, `original_delivery_charge`, `failed`, `adjusment`, `edited`, `zone_id`, `device_id`, `dm_tips`, `processing_time`) VALUES
(100001, 90, '198.63', '0.00', '', 'paid', 'delivered', '7.64', '1', '1', '1', 1, '1', 'stripe', 'Ts1BSX-399', NULL, NULL, NULL, 'asdf', 'reservation', 1, 1, '2022-08-22 11:09:44', '2022-08-22 11:29:17', '0.00', '2022-08-22 22:30:00', NULL, '3718', '2022-08-22 11:09:44', NULL, '2022-08-22 11:11:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"Reservation\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100002, 90, '173.67', '0.00', '', 'paid', 'confirmed', '6.68', '1', '1', '1', 1, '1', 'stripe', 'NuWvKM-472', NULL, NULL, NULL, 'qsfy', 'reservation', 1, 1, '2022-08-22 11:37:30', '2022-08-22 11:53:59', '0.00', '2022-08-22 22:30:00', NULL, '8775', '2022-08-22 11:37:30', NULL, '2022-08-22 11:38:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"Reservation\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100003, 90, '108.16', '0.00', '', 'paid', 'confirmed', '4.16', '1', '1', '1', 1, '1', 'stripe', 'Ee1Frd-377', NULL, NULL, NULL, 'sgsgsgs', 'reservation', 1, 1, '2022-08-22 21:50:12', '2022-08-22 21:51:35', '0.00', '2022-08-23 08:30:00', NULL, '4279', '2022-08-22 21:50:12', NULL, '2022-08-22 21:51:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"Reservation\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100004, 90, '161.20', '0.00', '', 'paid', 'confirmed', '6.20', '1', '1', '1', 1, '1', 'stripe', 'WoNzRT-122', NULL, NULL, NULL, 'sgsgdh', 'reservation', 1, 1, '2022-08-24 00:06:02', '2022-08-24 05:29:56', '0.00', '2022-08-24 11:30:00', NULL, '9522', '2022-08-24 00:06:02', NULL, '2022-08-24 00:07:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"Reservation\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100005, 90, '136.23', '0.00', '', 'paid', 'delivered', '5.24', '1', '1', '1', 1, '1', 'stripe', 'hga8pw-119', NULL, NULL, NULL, 'asdf', 'reserveplace', 1, 1, '2022-08-25 20:28:47', '2022-08-29 13:06:26', '0.00', '2022-08-25 06:27:00', NULL, '9659', '2022-08-25 20:28:47', NULL, '2022-08-25 20:29:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"ReservePlace\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100006, 90, '136.23', '0.00', '', 'paid', 'delivered', '5.24', '1', '1', '1', 1, '1', 'stripe', 'rp5Vo2-14', NULL, NULL, NULL, 'qwerty', 'reserveplace', 1, 1, '2022-08-25 20:37:48', '2022-08-29 19:52:52', '0.00', '2022-08-25 06:36:00', NULL, '2469', '2022-08-25 20:37:48', NULL, '2022-08-25 20:38:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"ReservePlace\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100007, 90, '136.23', '0.00', '', 'paid', 'confirmed', '5.24', '1', '1', '1', 1, '1', 'stripe', '7icAp5-435', NULL, NULL, NULL, 'asdf', 'reservation', 1, 1, '2022-08-25 20:42:57', '2022-08-25 20:45:07', '0.00', '2022-08-26 07:30:00', NULL, '3588', '2022-08-25 20:42:57', NULL, '2022-08-25 20:44:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"Reservation\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100008, 90, '62.40', '0.00', '', 'paid', 'delivered', '2.40', '1', '1', '1', 1, '1', 'stripe', 'nKAmnF-625', NULL, NULL, NULL, 'asdf', 'reserveplace', 1, 1, '2022-08-25 21:05:24', '2022-08-29 13:19:10', '0.00', '2022-08-25 07:04:00', NULL, '6538', '2022-08-25 21:05:24', NULL, '2022-08-25 21:06:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"ReservePlace\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100009, 95, '74.16', '0.00', '', 'paid', 'confirmed', '2.16', '0', '0', '0', 0, '0', 'stripe', 'DS7ia0-184', NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2022-08-29 07:10:08', '2022-08-29 10:32:24', '0.00', '2022-08-29 07:10:08', NULL, '7888', '2022-08-29 07:10:08', NULL, '2022-08-29 07:18:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Helga Kokes\",\"contact_person_number\":\"+447865076771\",\"address_type\":\"others\",\"address\":\"Vinnitsa, Vinnytsia Oblast, Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.468217141926285\",\"latitude\":\"49.23308290019022\"}', 0, '0.00', '0.00', NULL, '0.00', 0, 3, '05b9cc176575b317', 0.00, NULL),
(100010, 95, '35.02', '0.00', '', 'paid', 'confirmed', '1.02', '0', '0', '0', 0, '0', 'stripe', '3q9IVt-535', NULL, NULL, NULL, NULL, 'delivery', 1, 1, '2022-08-29 11:37:42', '2022-08-29 12:48:00', '0.00', '2022-08-29 11:37:42', NULL, '6597', '2022-08-29 11:37:42', NULL, '2022-08-29 11:40:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Helga Kokes\",\"contact_person_number\":\"+447865076771\",\"address_type\":\"others\",\"address\":\"Vinnitsa, Vinnytsia Oblast, Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.468217141926285\",\"latitude\":\"49.23308290019022\"}', 0, '0.00', '0.00', NULL, '0.00', 0, 3, '05b9cc176575b317', 0.00, NULL),
(100011, 90, '239.98', '0.00', '', 'unpaid', 'pending', '6.99', '1', '1', '1', 0, '1', 'cash_on_delivery', NULL, NULL, NULL, NULL, 'shdjf', 'reservation', 1, 1, '2022-08-29 22:48:11', '2022-08-29 22:50:22', '0.00', '2022-08-30 09:30:00', NULL, '6132', '2022-08-29 22:48:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"Reservation\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100012, 90, '214.24', '0.00', '', 'unpaid', 'pending', '8.24', '1', '1', '1', 1, '1', 'cash_on_delivery', NULL, NULL, NULL, NULL, 'asfg', 'reservation', 1, 1, '2022-08-30 00:07:08', '2022-08-30 00:10:09', '0.00', '2022-08-30 10:55:00', NULL, '5910', '2022-08-30 00:07:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"Reservation\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100013, 90, '147.28', '0.00', '', 'unpaid', 'pending', '4.29', '1', '1', '1', 0, '1', 'cash_on_delivery', NULL, NULL, NULL, NULL, 'sfg', 'reservation', 1, 1, '2022-08-30 00:12:23', '2022-08-30 00:12:58', '0.00', '2022-08-30 10:55:00', NULL, '2244', '2022-08-30 00:12:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"Reservation\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100014, 90, '147.28', '0.00', '', 'unpaid', 'pending', '4.29', '1', '1', '1', 0, '1', 'cash_on_delivery', NULL, NULL, NULL, NULL, 'sfg', 'reservation', 1, 1, '2022-08-30 00:24:35', '2022-08-30 00:24:49', '0.00', '2022-08-30 10:55:00', NULL, '3094', '2022-08-30 00:24:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"Reservation\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100015, 90, '147.28', '0.00', '', 'unpaid', 'pending', '4.29', '1', '1', '1', 0, '1', 'cash_on_delivery', NULL, NULL, NULL, NULL, 'sfg', 'reservation', 1, 1, '2022-08-30 00:25:08', '2022-08-30 00:25:14', '0.00', '2022-08-30 10:55:00', NULL, '7122', '2022-08-30 00:25:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"Reservation\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100016, 90, '147.28', '0.00', '', 'unpaid', 'pending', '4.29', '1', '1', '1', 0, '1', 'cash_on_delivery', NULL, NULL, NULL, NULL, 'sfg', 'reservation', 1, 1, '2022-08-30 00:28:34', '2022-08-30 00:28:52', '0.00', '2022-08-30 10:55:00', NULL, '3356', '2022-08-30 00:28:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"Reservation\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100017, 90, '147.28', '0.00', '', 'unpaid', 'pending', '4.29', '1', '1', '1', 0, '1', 'cash_on_delivery', NULL, NULL, NULL, NULL, 'sfg', 'reservation', 1, 1, '2022-08-30 00:30:22', '2022-08-30 00:30:39', '0.00', '2022-08-30 10:55:00', NULL, '4541', '2022-08-30 00:30:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"Reservation\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100018, 90, '147.28', '0.00', '', 'unpaid', 'pending', '4.29', '1', '1', '1', 0, '1', 'cash_on_delivery', NULL, NULL, NULL, NULL, 'sfg', 'reservation', 1, 1, '2022-08-30 00:31:42', '2022-08-30 00:32:04', '0.00', '2022-08-30 10:55:00', NULL, '1452', '2022-08-30 00:31:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"Reservation\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100019, 90, '147.28', '0.00', '', 'unpaid', 'pending', '4.29', '1', '1', '1', 0, '1', 'cash_on_delivery', NULL, NULL, NULL, NULL, 'sfg', 'reservation', 1, 1, '2022-08-30 00:40:02', '2022-08-30 05:52:09', '0.00', '2022-08-30 10:55:00', NULL, '1247', '2022-08-30 00:40:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"Reservation\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100020, 90, '147.28', '0.00', '', 'unpaid', 'pending', '4.29', '1', '1', '1', 0, '1', 'cash_on_delivery', NULL, NULL, NULL, NULL, 'sfg', 'reservation', 1, 1, '2022-08-30 00:40:41', '2022-08-30 05:52:09', '0.00', '2022-08-30 10:55:00', NULL, '9649', '2022-08-30 00:40:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"Reservation\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100021, 90, '108.16', '0.00', '', 'paid', 'confirmed', '4.16', '1', '1', '1', 1, '1', 'stripe', 'FMyWHN-715', NULL, NULL, NULL, 'asdf', 'reservation', 0, 1, '2022-08-30 05:55:16', '2022-08-30 05:57:23', '0.00', '2022-08-30 16:40:00', NULL, '6846', '2022-08-30 05:55:16', NULL, '2022-08-30 05:57:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"Reservation\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100022, 90, '42.64', '0.00', '', 'paid', 'confirmed', '1.64', '1', '1', '1', 1, '1', 'stripe', '4BTD9Y-275', NULL, NULL, NULL, 'asdf zxcv', 'reservation', 0, 1, '2022-08-30 06:00:02', '2022-08-30 06:16:32', '0.00', '2022-08-30 16:50:00', NULL, '1342', '2022-08-30 06:00:02', NULL, '2022-08-30 06:16:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"Reservation\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL),
(100023, 90, '136.23', '0.00', '', 'paid', 'confirmed', '5.24', '1', '1', '1', 1, '1', 'stripe', '0izyRE-688', NULL, NULL, NULL, 'asdf', 'reserveplace', 0, 1, '2022-08-30 06:32:04', '2022-08-30 06:32:56', '0.00', '2022-08-29 16:31:00', NULL, '2824', '2022-08-30 06:32:04', NULL, '2022-08-30 06:32:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"contact_person_name\":\"Yana Dereviank  Guest\",\"contact_person_number\":\"+703926\",\"address_type\":\"ReservePlace\",\"address\":\"Ksaveribska City, Vinnytsia Oblast in Ukraine\",\"floor\":null,\"road\":null,\"house\":null,\"longitude\":\"28.47624557963165\",\"latitude\":\"49.28383254937856\"}', 1, '0.00', '0.00', NULL, '0.00', 0, 3, '18d8d2f2c804ad90', 0.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery_histories`
--

CREATE TABLE `order_delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` decimal(24,2) NOT NULL DEFAULT '0.00',
  `food_details` text COLLATE utf8mb4_unicode_ci,
  `variation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_ons` text COLLATE utf8mb4_unicode_ci,
  `discount_on_food` decimal(24,2) DEFAULT NULL,
  `discount_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `quantity` int(11) NOT NULL DEFAULT '1',
  `tax_amount` decimal(24,2) NOT NULL DEFAULT '1.00',
  `variant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_campaign_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_add_on_price` decimal(24,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `food_id`, `order_id`, `price`, `food_details`, `variation`, `add_ons`, `discount_on_food`, `discount_type`, `quantity`, `tax_amount`, `variant`, `created_at`, `updated_at`, `item_campaign_id`, `total_add_on_price`) VALUES
(140, 20, 100001, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-18T09:56:08.000000Z\",\"order_count\":0,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.51', 'null', '2022-08-22 11:09:44', '2022-08-22 11:09:44', NULL, '17.00'),
(141, 17, 100001, '22.00', '{\"id\":17,\"name\":\"Ice Cream\",\"description\":\"This is Ice Cream.\",\"image\":\"2022-07-18-62d50a5d7bc28.png\",\"category_id\":3,\"category_ids\":[{\"id\":\"14\",\"position\":1},{\"id\":\"25\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"01:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-18T07:23:09.000000Z\",\"updated_at\":\"2022-08-18T09:56:19.000000Z\",\"order_count\":0,\"avg_rating\":5,\"rating_count\":3,\"priority\":0,\"f_featured\":0,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.22', 'null', '2022-08-22 11:09:44', '2022-08-22 11:09:44', NULL, '14.00'),
(142, 15, 100001, '22.00', '{\"id\":15,\"name\":\"Juice\",\"description\":\"This is Test 1.\",\"image\":\"2022-07-17-62d4fe31f1d10.png\",\"category_id\":5,\"category_ids\":[{\"id\":\"10\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"created_at\":\"2022-07-22T15:02:30.000000Z\",\"updated_at\":\"2022-07-22T15:02:30.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-17T23:46:57.000000Z\",\"updated_at\":\"2022-08-09T23:12:44.000000Z\",\"order_count\":0,\"avg_rating\":5,\"rating_count\":2,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.22', 'null', '2022-08-22 11:09:44', '2022-08-22 11:09:44', NULL, '40.99'),
(143, 10, 100001, '12.00', '{\"id\":10,\"name\":\"Chow Mein\",\"description\":\"This is Chow Mein.\",\"image\":\"2022-07-12-62cd4bdf791b2.png\",\"category_id\":1,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"24\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":12,\"tax\":1,\"tax_type\":\"percent\",\"discount\":1,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-12T10:24:31.000000Z\",\"updated_at\":\"2022-08-11T09:18:35.000000Z\",\"order_count\":0,\"avg_rating\":5,\"rating_count\":1,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1}]', '0.12', 'discount_on_product', 1, '0.12', 'null', '2022-08-22 11:09:44', '2022-08-22 11:09:44', NULL, '12.00'),
(144, 20, 100002, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-18T09:56:08.000000Z\",\"order_count\":0,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.51', 'null', '2022-08-22 11:37:30', '2022-08-22 11:37:30', NULL, '17.00'),
(145, 17, 100002, '22.00', '{\"id\":17,\"name\":\"Ice Cream\",\"description\":\"This is Ice Cream.\",\"image\":\"2022-07-18-62d50a5d7bc28.png\",\"category_id\":3,\"category_ids\":[{\"id\":\"14\",\"position\":1},{\"id\":\"25\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"01:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-18T07:23:09.000000Z\",\"updated_at\":\"2022-08-18T09:56:19.000000Z\",\"order_count\":0,\"avg_rating\":5,\"rating_count\":3,\"priority\":0,\"f_featured\":0,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.22', 'null', '2022-08-22 11:37:30', '2022-08-22 11:37:30', NULL, '14.00'),
(146, 15, 100002, '22.00', '{\"id\":15,\"name\":\"Juice\",\"description\":\"This is Test 1.\",\"image\":\"2022-07-17-62d4fe31f1d10.png\",\"category_id\":5,\"category_ids\":[{\"id\":\"10\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"created_at\":\"2022-07-22T15:02:30.000000Z\",\"updated_at\":\"2022-07-22T15:02:30.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-17T23:46:57.000000Z\",\"updated_at\":\"2022-08-09T23:12:44.000000Z\",\"order_count\":0,\"avg_rating\":5,\"rating_count\":2,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.22', 'null', '2022-08-22 11:37:30', '2022-08-22 11:37:30', NULL, '40.99'),
(147, 17, 100003, '22.00', '{\"id\":17,\"name\":\"Ice Cream\",\"description\":\"This is Ice Cream.\",\"image\":\"2022-07-18-62d50a5d7bc28.png\",\"category_id\":3,\"category_ids\":[{\"id\":\"14\",\"position\":1},{\"id\":\"25\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"01:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-18T07:23:09.000000Z\",\"updated_at\":\"2022-08-18T09:56:19.000000Z\",\"order_count\":0,\"avg_rating\":5,\"rating_count\":3,\"priority\":0,\"f_featured\":0,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.22', 'null', '2022-08-22 21:50:12', '2022-08-22 21:50:12', NULL, '14.00'),
(148, 17, 100003, '22.00', '{\"id\":17,\"name\":\"Ice Cream\",\"description\":\"This is Ice Cream.\",\"image\":\"2022-07-18-62d50a5d7bc28.png\",\"category_id\":3,\"category_ids\":[{\"id\":\"14\",\"position\":1},{\"id\":\"25\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"01:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-18T07:23:09.000000Z\",\"updated_at\":\"2022-08-18T09:56:19.000000Z\",\"order_count\":0,\"avg_rating\":5,\"rating_count\":3,\"priority\":0,\"f_featured\":0,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[]', '0.00', 'discount_on_product', 1, '0.22', 'null', '2022-08-22 21:50:12', '2022-08-22 21:50:12', NULL, '0.00'),
(149, 10, 100003, '12.00', '{\"id\":10,\"name\":\"Chow Mein\",\"description\":\"This is Chow Mein.\",\"image\":\"2022-07-12-62cd4bdf791b2.png\",\"category_id\":1,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"24\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":12,\"tax\":1,\"tax_type\":\"percent\",\"discount\":1,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-12T10:24:31.000000Z\",\"updated_at\":\"2022-08-11T09:18:35.000000Z\",\"order_count\":0,\"avg_rating\":5,\"rating_count\":1,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1}]', '0.12', 'discount_on_product', 1, '0.12', 'null', '2022-08-22 21:50:12', '2022-08-22 21:50:12', NULL, '12.00'),
(150, 9, 100003, '5.00', '{\"id\":9,\"name\":\"Sandwich\",\"description\":\"This is Olive Sandwich.\",\"image\":\"2022-07-12-62cd4b944f0fa.png\",\"category_id\":8,\"category_ids\":[{\"id\":\"2\",\"position\":1},{\"id\":\"8\",\"position\":2}],\"variations\":[{\"type\":\"Large\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":5,\"tax\":1,\"tax_type\":\"percent\",\"discount\":1,\"discount_type\":\"percent\",\"available_time_starts\":\"01:00:00\",\"available_time_ends\":\"23:00:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-12T10:23:16.000000Z\",\"updated_at\":\"2022-07-12T10:23:16.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1}]', '0.05', 'discount_on_product', 1, '0.05', 'null', '2022-08-22 21:50:12', '2022-08-22 21:50:12', NULL, '12.00'),
(151, 9, 100003, '5.00', '{\"id\":9,\"name\":\"Sandwich\",\"description\":\"This is Olive Sandwich.\",\"image\":\"2022-07-12-62cd4b944f0fa.png\",\"category_id\":8,\"category_ids\":[{\"id\":\"2\",\"position\":1},{\"id\":\"8\",\"position\":2}],\"variations\":[{\"type\":\"Large\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":5,\"tax\":1,\"tax_type\":\"percent\",\"discount\":1,\"discount_type\":\"percent\",\"available_time_starts\":\"01:00:00\",\"available_time_ends\":\"23:00:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-12T10:23:16.000000Z\",\"updated_at\":\"2022-07-12T10:23:16.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[]', '0.05', 'discount_on_product', 1, '0.05', 'null', '2022-08-22 21:50:12', '2022-08-22 21:50:12', NULL, '0.00'),
(152, 20, 100004, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-18T09:56:08.000000Z\",\"order_count\":0,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.51', 'null', '2022-08-24 00:06:02', '2022-08-24 00:06:02', NULL, '17.00'),
(153, 20, 100004, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-18T09:56:08.000000Z\",\"order_count\":0,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[]', '0.00', 'discount_on_product', 1, '0.51', 'null', '2022-08-24 00:06:02', '2022-08-24 00:06:02', NULL, '0.00'),
(154, 17, 100004, '22.00', '{\"id\":17,\"name\":\"Ice Cream\",\"description\":\"This is Ice Cream.\",\"image\":\"2022-07-18-62d50a5d7bc28.png\",\"category_id\":3,\"category_ids\":[{\"id\":\"14\",\"position\":1},{\"id\":\"25\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"01:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-18T07:23:09.000000Z\",\"updated_at\":\"2022-08-18T09:56:19.000000Z\",\"order_count\":0,\"avg_rating\":5,\"rating_count\":3,\"priority\":0,\"f_featured\":0,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.22', 'null', '2022-08-24 00:06:02', '2022-08-24 00:06:02', NULL, '14.00'),
(169, 20, 100005, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-25T21:23:27.000000Z\",\"order_count\":2,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.51', 'null', '2022-08-25 20:28:47', '2022-08-25 20:28:47', NULL, '17.00'),
(170, 15, 100005, '22.00', '{\"id\":15,\"name\":\"Juice\",\"description\":\"This is Test 1.\",\"image\":\"2022-07-17-62d4fe31f1d10.png\",\"category_id\":5,\"category_ids\":[{\"id\":\"10\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"created_at\":\"2022-07-22T15:02:30.000000Z\",\"updated_at\":\"2022-07-22T15:02:30.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-17T23:46:57.000000Z\",\"updated_at\":\"2022-08-25T21:23:27.000000Z\",\"order_count\":1,\"avg_rating\":5,\"rating_count\":2,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.22', 'null', '2022-08-25 20:28:47', '2022-08-25 20:28:47', NULL, '40.99'),
(171, 20, 100006, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":3,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.51', 'null', '2022-08-25 20:37:48', '2022-08-25 20:37:48', NULL, '17.00'),
(172, 15, 100006, '22.00', '{\"id\":15,\"name\":\"Juice\",\"description\":\"This is Test 1.\",\"image\":\"2022-07-17-62d4fe31f1d10.png\",\"category_id\":5,\"category_ids\":[{\"id\":\"10\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"created_at\":\"2022-07-22T15:02:30.000000Z\",\"updated_at\":\"2022-07-22T15:02:30.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-17T23:46:57.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":2,\"avg_rating\":5,\"rating_count\":2,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.22', 'null', '2022-08-25 20:37:48', '2022-08-25 20:37:48', NULL, '40.99'),
(173, 20, 100007, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":3,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.51', 'null', '2022-08-25 20:42:57', '2022-08-25 20:42:57', NULL, '17.00'),
(174, 15, 100007, '22.00', '{\"id\":15,\"name\":\"Juice\",\"description\":\"This is Test 1.\",\"image\":\"2022-07-17-62d4fe31f1d10.png\",\"category_id\":5,\"category_ids\":[{\"id\":\"10\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"created_at\":\"2022-07-22T15:02:30.000000Z\",\"updated_at\":\"2022-07-22T15:02:30.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-17T23:46:57.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":2,\"avg_rating\":5,\"rating_count\":2,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.22', 'null', '2022-08-25 20:42:57', '2022-08-25 20:42:57', NULL, '40.99'),
(175, 17, 100008, '22.00', '{\"id\":17,\"name\":\"Ice Cream\",\"description\":\"This is Ice Cream.\",\"image\":\"2022-07-18-62d50a5d7bc28.png\",\"category_id\":3,\"category_ids\":[{\"id\":\"14\",\"position\":1},{\"id\":\"25\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"01:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-18T07:23:09.000000Z\",\"updated_at\":\"2022-08-25T20:55:13.000000Z\",\"order_count\":1,\"avg_rating\":5,\"rating_count\":3,\"priority\":0,\"f_featured\":0,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.22', 'null', '2022-08-25 21:05:24', '2022-08-25 21:05:24', NULL, '14.00'),
(176, 10, 100008, '12.00', '{\"id\":10,\"name\":\"Chow Mein\",\"description\":\"This is Chow Mein.\",\"image\":\"2022-07-12-62cd4bdf791b2.png\",\"category_id\":1,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"24\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":12,\"tax\":1,\"tax_type\":\"percent\",\"discount\":1,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-12T10:24:31.000000Z\",\"updated_at\":\"2022-08-25T21:23:27.000000Z\",\"order_count\":1,\"avg_rating\":5,\"rating_count\":1,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1}]', '0.12', 'discount_on_product', 1, '0.12', 'null', '2022-08-25 21:05:24', '2022-08-25 21:05:24', NULL, '12.00'),
(177, 17, 100009, '22.00', '{\"id\":17,\"name\":\"Ice Cream\",\"description\":\"This is Ice Cream.\",\"image\":\"2022-07-18-62d50a5d7bc28.png\",\"category_id\":3,\"category_ids\":[{\"id\":\"14\",\"position\":1},{\"id\":\"25\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"01:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-18T07:23:09.000000Z\",\"updated_at\":\"2022-08-25T20:55:13.000000Z\",\"order_count\":1,\"avg_rating\":5,\"rating_count\":3,\"priority\":0,\"f_featured\":0,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":2},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":2}]', '0.00', 'discount_on_product', 2, '0.22', 'null', '2022-08-29 07:10:08', '2022-08-29 07:10:08', NULL, '28.00'),
(178, 17, 100010, '22.00', '{\"id\":17,\"name\":\"Ice Cream\",\"description\":\"This is Ice Cream.\",\"image\":\"2022-07-18-62d50a5d7bc28.png\",\"category_id\":3,\"category_ids\":[{\"id\":\"14\",\"position\":1},{\"id\":\"25\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"01:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-18T07:23:09.000000Z\",\"updated_at\":\"2022-08-25T20:55:13.000000Z\",\"order_count\":1,\"avg_rating\":5,\"rating_count\":3,\"priority\":0,\"f_featured\":0,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[]', '0.00', 'discount_on_product', 1, '0.22', 'null', '2022-08-29 11:37:42', '2022-08-29 11:37:42', NULL, '0.00'),
(179, 10, 100010, '12.00', '{\"id\":10,\"name\":\"Chow Mein\",\"description\":\"This is Chow Mein.\",\"image\":\"2022-07-12-62cd4bdf791b2.png\",\"category_id\":1,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"24\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":12,\"tax\":1,\"tax_type\":\"percent\",\"discount\":1,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-12T10:24:31.000000Z\",\"updated_at\":\"2022-08-25T21:23:27.000000Z\",\"order_count\":1,\"avg_rating\":5,\"rating_count\":1,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[]', '0.12', 'discount_on_product', 1, '0.12', 'null', '2022-08-29 11:37:42', '2022-08-29 11:37:42', NULL, '0.00'),
(180, 20, 100011, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":3,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.51', 'null', '2022-08-29 22:48:11', '2022-08-29 22:48:11', NULL, '17.00'),
(181, 17, 100011, '22.00', '{\"id\":17,\"name\":\"Ice Cream\",\"description\":\"This is Ice Cream.\",\"image\":\"2022-07-18-62d50a5d7bc28.png\",\"category_id\":3,\"category_ids\":[{\"id\":\"14\",\"position\":1},{\"id\":\"25\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"01:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-18T07:23:09.000000Z\",\"updated_at\":\"2022-08-25T20:55:13.000000Z\",\"order_count\":1,\"avg_rating\":5,\"rating_count\":3,\"priority\":0,\"f_featured\":0,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1}]', '0.00', 'discount_on_product', 2, '0.22', 'null', '2022-08-29 22:48:11', '2022-08-29 22:48:11', NULL, '14.00'),
(182, 15, 100011, '22.00', '{\"id\":15,\"name\":\"Juice\",\"description\":\"This is Test 1.\",\"image\":\"2022-07-17-62d4fe31f1d10.png\",\"category_id\":5,\"category_ids\":[{\"id\":\"10\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"created_at\":\"2022-07-22T15:02:30.000000Z\",\"updated_at\":\"2022-07-22T15:02:30.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-17T23:46:57.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":2,\"avg_rating\":5,\"rating_count\":2,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1}]', '0.00', 'discount_on_product', 3, '0.22', 'null', '2022-08-29 22:48:12', '2022-08-29 22:48:12', NULL, '40.99');
INSERT INTO `order_details` (`id`, `food_id`, `order_id`, `price`, `food_details`, `variation`, `add_ons`, `discount_on_food`, `discount_type`, `quantity`, `tax_amount`, `variant`, `created_at`, `updated_at`, `item_campaign_id`, `total_add_on_price`) VALUES
(183, 20, 100012, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":3,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"quantity\":1}]', '0.00', 'discount_on_product', 3, '0.51', 'null', '2022-08-30 00:07:08', '2022-08-30 00:07:08', NULL, '17.00'),
(184, 17, 100012, '22.00', '{\"id\":17,\"name\":\"Ice Cream\",\"description\":\"This is Ice Cream.\",\"image\":\"2022-07-18-62d50a5d7bc28.png\",\"category_id\":3,\"category_ids\":[{\"id\":\"14\",\"position\":1},{\"id\":\"25\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"01:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-18T07:23:09.000000Z\",\"updated_at\":\"2022-08-25T20:55:13.000000Z\",\"order_count\":1,\"avg_rating\":5,\"rating_count\":3,\"priority\":0,\"f_featured\":0,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.22', 'null', '2022-08-30 00:07:08', '2022-08-30 00:07:08', NULL, '14.00'),
(185, 20, 100013, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":3,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.51', 'null', '2022-08-30 00:12:23', '2022-08-30 00:12:23', NULL, '17.00'),
(186, 15, 100013, '22.00', '{\"id\":15,\"name\":\"Juice\",\"description\":\"This is Test 1.\",\"image\":\"2022-07-17-62d4fe31f1d10.png\",\"category_id\":5,\"category_ids\":[{\"id\":\"10\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"created_at\":\"2022-07-22T15:02:30.000000Z\",\"updated_at\":\"2022-07-22T15:02:30.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-17T23:46:57.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":2,\"avg_rating\":5,\"rating_count\":2,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1}]', '0.00', 'discount_on_product', 2, '0.22', 'null', '2022-08-30 00:12:23', '2022-08-30 00:12:23', NULL, '30.99'),
(187, 20, 100014, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":3,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.51', 'null', '2022-08-30 00:24:35', '2022-08-30 00:24:35', NULL, '17.00'),
(188, 15, 100014, '22.00', '{\"id\":15,\"name\":\"Juice\",\"description\":\"This is Test 1.\",\"image\":\"2022-07-17-62d4fe31f1d10.png\",\"category_id\":5,\"category_ids\":[{\"id\":\"10\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"created_at\":\"2022-07-22T15:02:30.000000Z\",\"updated_at\":\"2022-07-22T15:02:30.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-17T23:46:57.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":2,\"avg_rating\":5,\"rating_count\":2,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1}]', '0.00', 'discount_on_product', 2, '0.22', 'null', '2022-08-30 00:24:35', '2022-08-30 00:24:35', NULL, '30.99'),
(189, 20, 100015, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":3,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.51', 'null', '2022-08-30 00:25:08', '2022-08-30 00:25:08', NULL, '17.00'),
(190, 15, 100015, '22.00', '{\"id\":15,\"name\":\"Juice\",\"description\":\"This is Test 1.\",\"image\":\"2022-07-17-62d4fe31f1d10.png\",\"category_id\":5,\"category_ids\":[{\"id\":\"10\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"created_at\":\"2022-07-22T15:02:30.000000Z\",\"updated_at\":\"2022-07-22T15:02:30.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-17T23:46:57.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":2,\"avg_rating\":5,\"rating_count\":2,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1}]', '0.00', 'discount_on_product', 2, '0.22', 'null', '2022-08-30 00:25:08', '2022-08-30 00:25:08', NULL, '30.99'),
(191, 20, 100016, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":3,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.51', 'null', '2022-08-30 00:28:34', '2022-08-30 00:28:34', NULL, '17.00'),
(192, 15, 100016, '22.00', '{\"id\":15,\"name\":\"Juice\",\"description\":\"This is Test 1.\",\"image\":\"2022-07-17-62d4fe31f1d10.png\",\"category_id\":5,\"category_ids\":[{\"id\":\"10\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"created_at\":\"2022-07-22T15:02:30.000000Z\",\"updated_at\":\"2022-07-22T15:02:30.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-17T23:46:57.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":2,\"avg_rating\":5,\"rating_count\":2,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1}]', '0.00', 'discount_on_product', 2, '0.22', 'null', '2022-08-30 00:28:34', '2022-08-30 00:28:34', NULL, '30.99'),
(193, 20, 100017, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":3,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.51', 'null', '2022-08-30 00:30:22', '2022-08-30 00:30:22', NULL, '17.00'),
(194, 15, 100017, '22.00', '{\"id\":15,\"name\":\"Juice\",\"description\":\"This is Test 1.\",\"image\":\"2022-07-17-62d4fe31f1d10.png\",\"category_id\":5,\"category_ids\":[{\"id\":\"10\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"created_at\":\"2022-07-22T15:02:30.000000Z\",\"updated_at\":\"2022-07-22T15:02:30.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-17T23:46:57.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":2,\"avg_rating\":5,\"rating_count\":2,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1}]', '0.00', 'discount_on_product', 2, '0.22', 'null', '2022-08-30 00:30:22', '2022-08-30 00:30:22', NULL, '30.99'),
(195, 20, 100018, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":3,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.51', 'null', '2022-08-30 00:31:42', '2022-08-30 00:31:42', NULL, '17.00'),
(196, 15, 100018, '22.00', '{\"id\":15,\"name\":\"Juice\",\"description\":\"This is Test 1.\",\"image\":\"2022-07-17-62d4fe31f1d10.png\",\"category_id\":5,\"category_ids\":[{\"id\":\"10\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"created_at\":\"2022-07-22T15:02:30.000000Z\",\"updated_at\":\"2022-07-22T15:02:30.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-17T23:46:57.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":2,\"avg_rating\":5,\"rating_count\":2,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1}]', '0.00', 'discount_on_product', 2, '0.22', 'null', '2022-08-30 00:31:42', '2022-08-30 00:31:42', NULL, '30.99'),
(197, 20, 100019, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":3,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.51', 'null', '2022-08-30 00:40:02', '2022-08-30 00:40:02', NULL, '17.00'),
(198, 15, 100019, '22.00', '{\"id\":15,\"name\":\"Juice\",\"description\":\"This is Test 1.\",\"image\":\"2022-07-17-62d4fe31f1d10.png\",\"category_id\":5,\"category_ids\":[{\"id\":\"10\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"created_at\":\"2022-07-22T15:02:30.000000Z\",\"updated_at\":\"2022-07-22T15:02:30.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-17T23:46:57.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":2,\"avg_rating\":5,\"rating_count\":2,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1}]', '0.00', 'discount_on_product', 2, '0.22', 'null', '2022-08-30 00:40:02', '2022-08-30 00:40:02', NULL, '30.99'),
(199, 20, 100020, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":3,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.51', 'null', '2022-08-30 00:40:41', '2022-08-30 00:40:41', NULL, '17.00'),
(200, 15, 100020, '22.00', '{\"id\":15,\"name\":\"Juice\",\"description\":\"This is Test 1.\",\"image\":\"2022-07-17-62d4fe31f1d10.png\",\"category_id\":5,\"category_ids\":[{\"id\":\"10\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"created_at\":\"2022-07-22T15:02:30.000000Z\",\"updated_at\":\"2022-07-22T15:02:30.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-17T23:46:57.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":2,\"avg_rating\":5,\"rating_count\":2,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1}]', '0.00', 'discount_on_product', 2, '0.22', 'null', '2022-08-30 00:40:41', '2022-08-30 00:40:41', NULL, '30.99'),
(201, 20, 100021, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":3,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.51', 'null', '2022-08-30 05:55:16', '2022-08-30 05:55:16', NULL, '17.00'),
(202, 17, 100021, '22.00', '{\"id\":17,\"name\":\"Ice Cream\",\"description\":\"This is Ice Cream.\",\"image\":\"2022-07-18-62d50a5d7bc28.png\",\"category_id\":3,\"category_ids\":[{\"id\":\"14\",\"position\":1},{\"id\":\"25\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"01:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-18T07:23:09.000000Z\",\"updated_at\":\"2022-08-25T20:55:13.000000Z\",\"order_count\":1,\"avg_rating\":5,\"rating_count\":3,\"priority\":0,\"f_featured\":0,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.22', 'null', '2022-08-30 05:55:16', '2022-08-30 05:55:16', NULL, '14.00'),
(203, 10, 100022, '12.00', '{\"id\":10,\"name\":\"Chow Mein\",\"description\":\"This is Chow Mein.\",\"image\":\"2022-07-12-62cd4bdf791b2.png\",\"category_id\":1,\"category_ids\":[{\"id\":\"9\",\"position\":1},{\"id\":\"24\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":12,\"tax\":1,\"tax_type\":\"percent\",\"discount\":1,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-12T10:24:31.000000Z\",\"updated_at\":\"2022-08-25T21:23:27.000000Z\",\"order_count\":1,\"avg_rating\":5,\"rating_count\":1,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1}]', '0.12', 'discount_on_product', 1, '0.12', 'null', '2022-08-30 06:00:02', '2022-08-30 06:00:02', NULL, '12.00'),
(204, 9, 100022, '5.00', '{\"id\":9,\"name\":\"Sandwich\",\"description\":\"This is Olive Sandwich.\",\"image\":\"2022-07-12-62cd4b944f0fa.png\",\"category_id\":8,\"category_ids\":[{\"id\":\"2\",\"position\":1},{\"id\":\"8\",\"position\":2}],\"variations\":[{\"type\":\"Large\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"3\"],\"choice_options\":[{\"name\":\"choice_3\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":5,\"tax\":1,\"tax_type\":\"percent\",\"discount\":1,\"discount_type\":\"percent\",\"available_time_starts\":\"01:00:00\",\"available_time_ends\":\"23:00:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-12T10:23:16.000000Z\",\"updated_at\":\"2022-07-12T10:23:16.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1}]', '0.05', 'discount_on_product', 1, '0.05', 'null', '2022-08-30 06:00:02', '2022-08-30 06:00:02', NULL, '12.00'),
(205, 20, 100023, '51.00', '{\"id\":20,\"name\":\"Test 1\",\"description\":\"This is a test 1.\",\"image\":\"2022-08-11-62f4c58ce5865.png\",\"category_id\":7,\"category_ids\":[{\"id\":\"23\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Family-Size\",\"price\":0}],\"add_ons\":[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"created_at\":\"2022-07-22T15:05:16.000000Z\",\"updated_at\":\"2022-07-22T15:05:16.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"4\"],\"choice_options\":[{\"name\":\"choice_4\",\"title\":\"Family-Size\",\"options\":\"Family-Size\"}],\"price\":51,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:10:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-08-11T09:02:04.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":3,\"avg_rating\":5,\"rating_count\":1,\"priority\":0,\"f_featured\":0,\"f_trending\":0,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1},{\"id\":10,\"name\":\"Platter\",\"price\":5,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.51', 'null', '2022-08-30 06:32:04', '2022-08-30 06:32:04', NULL, '17.00'),
(206, 15, 100023, '22.00', '{\"id\":15,\"name\":\"Juice\",\"description\":\"This is Test 1.\",\"image\":\"2022-07-17-62d4fe31f1d10.png\",\"category_id\":5,\"category_ids\":[{\"id\":\"10\",\"position\":1},{\"id\":\"29\",\"position\":2}],\"variations\":[{\"type\":\"Medium\",\"price\":0}],\"add_ons\":[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"created_at\":\"2022-07-15T20:12:06.000000Z\",\"updated_at\":\"2022-08-11T07:57:11.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"created_at\":\"2022-07-22T15:02:30.000000Z\",\"updated_at\":\"2022-07-22T15:02:30.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"created_at\":\"2022-07-22T15:03:35.000000Z\",\"updated_at\":\"2022-07-22T15:03:35.000000Z\",\"restaurant_id\":1,\"status\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"created_at\":\"2022-07-22T15:04:15.000000Z\",\"updated_at\":\"2022-08-11T07:50:25.000000Z\",\"restaurant_id\":1,\"status\":1}],\"attributes\":[\"2\"],\"choice_options\":[{\"name\":\"choice_2\",\"title\":\"Medium\",\"options\":\"Medium\"}],\"price\":22,\"tax\":1,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"00:00:00\",\"available_time_ends\":\"23:55:00\",\"veg\":0,\"status\":1,\"restaurant_id\":1,\"created_at\":\"2022-07-17T23:46:57.000000Z\",\"updated_at\":\"2022-08-25T21:29:57.000000Z\",\"order_count\":2,\"avg_rating\":5,\"rating_count\":2,\"priority\":1,\"f_featured\":1,\"f_trending\":1,\"f_isNew\":0,\"restaurant_name\":\"Yevhenii Cafe\",\"restaurant_discount\":0,\"restaurant_opening_time\":null,\"restaurant_closing_time\":null,\"schedule_order\":true}', '[]', '[{\"id\":1,\"name\":\"Mushrooms\",\"price\":12,\"quantity\":1},{\"id\":3,\"name\":\"Tomato Salad\",\"price\":16.989999999999998436805981327779591083526611328125,\"quantity\":1},{\"id\":5,\"name\":\"Ice Cream\",\"price\":2,\"quantity\":1},{\"id\":6,\"name\":\"Chicken Sandwich\",\"price\":10,\"quantity\":1}]', '0.00', 'discount_on_product', 1, '0.22', 'null', '2022-08-30 06:32:04', '2022-08-30 06:32:04', NULL, '40.99');

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

CREATE TABLE `order_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_amount` decimal(24,2) NOT NULL,
  `restaurant_amount` decimal(24,2) NOT NULL,
  `admin_commission` decimal(24,2) NOT NULL,
  `received_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_charge` decimal(24,2) NOT NULL DEFAULT '0.00',
  `original_delivery_charge` decimal(24,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(24,2) NOT NULL DEFAULT '0.00',
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dm_tips` double(24,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_transactions`
--

INSERT INTO `order_transactions` (`id`, `vendor_id`, `delivery_man_id`, `order_id`, `order_amount`, `restaurant_amount`, `admin_commission`, `received_by`, `status`, `created_at`, `updated_at`, `delivery_charge`, `original_delivery_charge`, `tax`, `zone_id`, `dm_tips`) VALUES
(9, 1, 0, 100001, '198.63', '190.42', '8.21', 'admin', NULL, '2022-08-22 11:11:18', '2022-08-22 11:11:18', '0.00', '0.00', '7.64', 3, 0.00),
(10, 1, 0, 100002, '173.67', '166.49', '7.18', 'admin', NULL, '2022-08-22 11:38:43', '2022-08-22 11:38:43', '0.00', '0.00', '6.68', 3, 0.00),
(11, 1, 0, 100003, '108.16', '103.69', '4.47', 'admin', NULL, '2022-08-22 21:51:29', '2022-08-22 21:51:29', '0.00', '0.00', '4.16', 3, 0.00),
(12, 1, 0, 100004, '161.20', '154.54', '6.67', 'admin', NULL, '2022-08-24 00:07:28', '2022-08-24 00:07:28', '0.00', '0.00', '6.20', 3, 0.00),
(13, 1, 0, 100005, '161.19', '154.53', '6.66', 'admin', NULL, '2022-08-25 19:40:00', '2022-08-25 19:40:00', '0.00', '0.00', '6.20', 3, 0.00),
(14, 1, 0, 100006, '136.23', '130.60', '5.63', 'admin', NULL, '2022-08-25 20:38:49', '2022-08-25 20:38:49', '0.00', '0.00', '5.24', 3, 0.00),
(15, 1, 0, 100007, '136.23', '130.60', '5.63', 'admin', NULL, '2022-08-25 20:44:18', '2022-08-25 20:44:18', '0.00', '0.00', '5.24', 3, 0.00),
(16, 1, 0, 100008, '62.40', '59.82', '2.58', 'admin', NULL, '2022-08-25 21:06:36', '2022-08-25 21:06:36', '0.00', '0.00', '2.40', 3, 0.00),
(17, 1, 0, 100021, '108.16', '103.69', '4.47', 'admin', NULL, '2022-08-30 05:57:28', '2022-08-30 05:57:28', '0.00', '0.00', '4.16', 3, 0.00),
(18, 1, 0, 100022, '42.64', '40.88', '1.76', 'admin', NULL, '2022-08-30 06:16:34', '2022-08-30 06:16:34', '0.00', '0.00', '1.64', 3, 0.00),
(19, 1, 0, 100023, '136.23', '130.60', '5.63', 'admin', NULL, '2022-08-30 06:32:57', '2022-08-30 06:32:57', '0.00', '0.00', '5.24', 3, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_verifications`
--

CREATE TABLE `phone_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phone_verifications`
--

INSERT INTO `phone_verifications` (`id`, `phone`, `token`, `created_at`, `updated_at`) VALUES
(4, '+6281235377375', '8904', '2022-08-15 13:11:30', '2022-08-15 13:11:30'),
(5, '+6285956132376', '1483', '2022-08-15 13:14:24', '2022-08-15 13:14:24');

-- --------------------------------------------------------

--
-- Table structure for table `provide_d_m_earnings`
--

CREATE TABLE `provide_d_m_earnings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reserve_type` int(11) NOT NULL DEFAULT '0',
  `venue_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `chef_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `customer_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `table_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `device_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `number_in_party` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `table_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `venue_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `chef_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `chef_phone` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `customer_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customer_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customer_phone` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `venue_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `special_notes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `reserve_date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `end_time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `duration` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `payment_method` int(11) DEFAULT '1',
  `payment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `status` int(1) NOT NULL DEFAULT '1',
  `reserve_status` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `table_image` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `reserve_type`, `venue_id`, `chef_id`, `customer_id`, `table_id`, `order_id`, `device_id`, `number_in_party`, `table_name`, `venue_name`, `order_name`, `chef_name`, `chef_phone`, `customer_name`, `customer_email`, `customer_phone`, `venue_address`, `special_notes`, `description`, `reserve_date`, `start_time`, `end_time`, `duration`, `payment_method`, `payment_status`, `price`, `status`, `reserve_status`, `created_at`, `updated_at`, `table_image`) VALUES
(95, 0, 1, 1, 90, 1, 100001, '18d8d2f2c804ad90', '1', 'Table-01', 'Yevhenii Cafe', '#100001', 'Yevhenii Derevianko', '+380 (95) 699 90 54', 'Yana Dereviank  Guest', 'yanadereviank@gmail.com', '+703926', 'Ksaveribska City, Vinnytsia Oblast in Ukraine', 'asdf', '', '2022-08-22', '15:30', '16:30', '1 h 0 min', 1, 'paid', '198.63', 1, 3, '2022-08-22 11:09:46', '2022-08-30 06:32:57', '2022-07-21-62d9010c9308e.png'),
(96, 0, 1, 1, 90, 1, 100002, '18d8d2f2c804ad90', '1', 'Table-01', 'Yevhenii Cafe', '#100002', 'Yevhenii Derevianko', '+380 (95) 699 90 54', 'Yana Dereviank  Guest', 'yanadereviank@gmail.com', '+703926', 'Ksaveribska City, Vinnytsia Oblast in Ukraine', 'qsfy', '', '2022-08-22', '15:55', '16:30', '35 min', 1, 'paid', '173.67', 1, 1, '2022-08-22 11:37:33', '2022-08-30 06:32:57', '2022-07-21-62d9010c9308e.png'),
(97, 0, 1, 1, 90, 1, 100003, '18d8d2f2c804ad90', '1', 'Table-01', 'Yevhenii Cafe', '#100003', 'Yevhenii Derevianko', '+380 (95) 699 90 54', 'Yana Dereviank  Guest', 'derevianko.yana21@gmail.com', '+703926', 'Ksaveribska City, Vinnytsia Oblast in Ukraine', 'sgsgsgs', '', '2022-08-23', '02:10', '02:30', '20 min', 1, 'paid', '108.16', 1, 0, '2022-08-22 21:50:16', '2022-08-30 06:32:57', '2022-07-21-62d9010c9308e.png'),
(98, 0, 1, 1, 90, 1, 100004, '18d8d2f2c804ad90', '1', 'Table-01', 'Yevhenii Cafe', '#100004', 'Yevhenii Derevianko', '+380 (95) 699 90 54', 'Yana Dereviank  Guest', 'derevianko.yana21@gmail.com', '+703926', 'Ksaveribska City, Vinnytsia Oblast in Ukraine', 'sgsgdh', '', '2022-08-24', '04:30', '05:30', '1 h 0 min', 1, 'paid', '161.20', 1, 2, '2022-08-24 00:06:06', '2022-08-30 06:32:57', '2022-07-21-62d9010c9308e.png'),
(99, 1, 1, 1, 90, 0, 100005, '18d8d2f2c804ad90', '5', 'Place1', 'Yevhenii Cafe', '#100005', 'Yevhenii Derevianko', '+380 (95) 699 90 54', 'Yana Dereviank  Guest', 'derevianko.yana21@gmail.com', '+703926', 'Ksaveribska City, Vinnytsia Oblast in Ukraine', 'asdf', '', '2022-08-25', '00:27', '00:27', '0 min', 1, 'paid', '136.23', 1, 3, '2022-08-25 20:28:48', '2022-08-30 06:32:57', ''),
(100, 1, 1, 1, 90, 0, 100006, '18d8d2f2c804ad90', '5', 'Place2', 'Yevhenii Cafe', '#100006', 'Yevhenii Derevianko', '+380 (95) 699 90 54', 'Yana Dereviank  Guest', 'derevianko.yana21@gmail.com', '+703926', 'Ksaveribska City, Vinnytsia Oblast in Ukraine', 'qwerty', '', '2022-08-25', '00:36', '00:36', '0 min', 1, 'paid', '136.23', 1, 3, '2022-08-25 20:37:49', '2022-08-30 06:32:57', ''),
(101, 0, 1, 1, 90, 1, 100007, '18d8d2f2c804ad90', '1', 'Table-01', 'Yevhenii Cafe', '#100007', 'Yevhenii Derevianko', '+380 (95) 699 90 54', 'Yana Dereviank  Guest', 'derevianko.yana21@gmail.com', '+703926', 'Ksaveribska City, Vinnytsia Oblast in Ukraine', 'asdf', '', '2022-08-26', '00:55', '01:30', '35 min', 1, 'paid', '136.23', 1, 0, '2022-08-25 20:43:01', '2022-08-30 06:32:57', '2022-07-21-62d9010c9308e.png'),
(102, 1, 1, 1, 90, 0, 100008, '18d8d2f2c804ad90', '5', 'Place3', 'Yevhenii Cafe', '#100008', 'Yevhenii Derevianko', '+380 (95) 699 90 54', 'Yana Dereviank  Guest', 'derevianko.yana21@gmail.com', '+703926', 'Ksaveribska City, Vinnytsia Oblast in Ukraine', 'asdf', '', '2022-08-25', '01:04', '01:04', '0 min', 1, 'paid', '62.40', 1, 3, '2022-08-25 21:05:26', '2022-08-30 06:32:57', ''),
(103, 0, 1, 1, 90, 1, 100021, '18d8d2f2c804ad90', '1', 'Table-01', 'Yevhenii Cafe', '#100021', 'Yevhenii Derevianko', '+380 (95) 699 90 54', 'Yana Dereviank  Guest', 'derevianko.yana21@gmail.com', '+703926', 'Ksaveribska City, Vinnytsia Oblast in Ukraine', 'asdf', '', '2022-08-30', '10:30', '10:40', '10 min', 1, 'paid', '108.16', 1, 0, '2022-08-30 05:55:23', '2022-08-30 06:32:57', '2022-07-21-62d9010c9308e.png'),
(104, 0, 1, 1, 90, 1, 100022, '18d8d2f2c804ad90', '1', 'Table-01', 'Yevhenii Cafe', '#100022', 'Yevhenii Derevianko', '+380 (95) 699 90 54', 'Yana Dereviank  Guest', 'derevianko.yana21@gmail.com', '+703926', 'Ksaveribska City, Vinnytsia Oblast in Ukraine', 'asdf zxcv', '', '2022-08-30', '10:45', '10:50', '5 min', 1, 'paid', '42.64', 1, 0, '2022-08-30 06:00:09', '2022-08-30 06:32:57', '2022-07-21-62d9010c9308e.png'),
(105, 1, 1, 1, 90, 0, 100023, '18d8d2f2c804ad90', '5', 'Place 4', 'Yevhenii Cafe', '#100023', 'Yevhenii Derevianko', '+380 (95) 699 90 54', 'Yana Dereviank  Guest', 'derevianko.yana21@gmail.com', '+703926', 'Ksaveribska City, Vinnytsia Oblast in Ukraine', 'asdf', '', '2022-08-29', '10:31', '10:31', '0 min', 1, 'paid', '136.23', 1, 0, '2022-08-30 06:32:10', '2022-08-30 06:32:57', '');

-- --------------------------------------------------------

--
-- Table structure for table `reserve_places`
--

CREATE TABLE `reserve_places` (
  `id` int(11) NOT NULL,
  `place_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL DEFAULT '0',
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `notes` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `payment_status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `footer_text` text COLLATE utf8mb4_unicode_ci,
  `minimum_order` decimal(24,2) NOT NULL DEFAULT '0.00',
  `comission` decimal(24,2) DEFAULT NULL,
  `schedule_order` tinyint(1) NOT NULL DEFAULT '0',
  `opening_time` time DEFAULT '10:00:00',
  `closeing_time` time DEFAULT '23:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `free_delivery` tinyint(1) NOT NULL DEFAULT '0',
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery` tinyint(1) NOT NULL DEFAULT '1',
  `take_away` tinyint(1) NOT NULL DEFAULT '1',
  `food_section` tinyint(1) NOT NULL DEFAULT '1',
  `tax` decimal(24,2) NOT NULL DEFAULT '0.00',
  `service_charge` double NOT NULL DEFAULT '0',
  `server_tip` double NOT NULL DEFAULT '0',
  `promo` double NOT NULL DEFAULT '0',
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reviews_section` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `off_day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `gst` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `self_delivery_system` tinyint(1) NOT NULL DEFAULT '0',
  `pos_system` tinyint(1) NOT NULL DEFAULT '0',
  `delivery_charge` decimal(24,2) NOT NULL DEFAULT '0.00',
  `delivery_time` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '30-40',
  `veg` tinyint(1) NOT NULL DEFAULT '1',
  `non_veg` tinyint(1) NOT NULL DEFAULT '1',
  `order_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `venue_type` int(10) NOT NULL DEFAULT '0',
  `classify` int(5) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '0',
  `featured` int(11) NOT NULL DEFAULT '0',
  `trending` int(11) NOT NULL DEFAULT '0',
  `isNew` int(11) NOT NULL DEFAULT '0',
  `business_id` int(11) NOT NULL DEFAULT '0',
  `cuisine_id` int(11) NOT NULL DEFAULT '0',
  `business_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cuisine_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `featured_image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `phone`, `email`, `logo`, `latitude`, `longitude`, `address`, `footer_text`, `minimum_order`, `comission`, `schedule_order`, `opening_time`, `closeing_time`, `status`, `vendor_id`, `created_at`, `updated_at`, `free_delivery`, `rating`, `cover_photo`, `delivery`, `take_away`, `food_section`, `tax`, `service_charge`, `server_tip`, `promo`, `zone_id`, `reviews_section`, `active`, `off_day`, `gst`, `self_delivery_system`, `pos_system`, `delivery_charge`, `delivery_time`, `veg`, `non_veg`, `order_count`, `total_order`, `venue_type`, `classify`, `priority`, `featured`, `trending`, `isNew`, `business_id`, `cuisine_id`, `business_name`, `cuisine_name`, `featured_image`) VALUES
(1, 'Yevhenii Cafe', '+380 (95) 699 90 54', 'yevhenii@gmail.com', '2022-07-12-62cd3d200b187.png', '49.28383254937856', '28.47624557963165', 'Ksaveribska City, Vinnytsia Oblast in Ukraine', NULL, '0.00', '0.00', 1, NULL, NULL, 1, 1, '2022-07-12 08:21:36', '2022-08-30 16:17:11', 1, '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":7}', '2022-07-12-62cd3d200c8f1.png', 1, 1, 1, '1.00', 1, 1, 1, 3, 1, 1, '', '{\"status\":null,\"code\":null}', 1, 0, '1.00', '30-40', 1, 1, 3, 31, 0, 5, 0, 1, 1, 1, 1, 14, 'Venues', 'Beers', '0'),
(2, 'Ksaveribska Cafe', '+380 (95) 699 90 55', 'borys@gmail.com', '2022-07-12-62cd3d963a2e8.png', '49.272185584028314', '28.499591526897277', 'Ksaveribska, Vinnytsia Oblast in Ukraine', NULL, '0.00', NULL, 1, NULL, NULL, 1, 2, '2022-07-12 08:23:34', '2022-08-30 16:20:34', 1, '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":4}', '2022-07-12-62cd3d963bcbd.png', 1, 1, 1, '2.00', 2, 2, 2, 3, 1, 1, ' ', NULL, 0, 0, '0.00', '30-40', 1, 1, 0, 4, 0, 5, 0, 0, 1, 0, 1, 8, 'Venues', 'Fried Cooks', '0'),
(3, 'SWUSHD Kitchen Center', '+44-7840-638-231', 'robert@gmail.com', '2022-07-12-62cd4004ed54e.png', '39.98822473823214', '-86.15580039749302', 'City Center in United State', NULL, '0.00', NULL, 0, '10:00:00', '23:00:00', 1, 3, '2022-07-12 08:33:56', '2022-07-20 18:51:15', 1, NULL, '2022-07-12-62cd4004eecc7.png', 1, 1, 1, '2.00', 0, 0, 0, 2, 1, 1, ' ', NULL, 0, 0, '0.00', '30-40', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 13, 'SWUSHD Kitchens', 'Breads', '0'),
(4, 'SWUSHD Kitchen 1', '1 765-938-0015', 'bill@gmail.com', '2022-07-12-62cd40658e580.png', '37.550653428187914', '-77.40514554901222', 'Richmond, Virginia, USA Central Business District', NULL, '0.00', NULL, 0, '10:00:00', '23:00:00', 1, 4, '2022-07-12 08:35:33', '2022-07-20 18:51:43', 1, NULL, '2022-07-12-62cd4065903c7.png', 1, 1, 1, '2.00', 0, 0, 0, 1, 1, 1, ' ', NULL, 0, 0, '0.00', '30-40', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 14, 'Venues', 'Beers', '0'),
(5, 'SWUSHD Kitchen 2', '1 765-938-0014', 'anna@gmail.com', '2022-07-12-62cd40bb91ec9.png', '37.55283092738092', '-77.3982790939341', 'Richmond, Virginia, USA Central Business District', NULL, '0.00', NULL, 0, '10:00:00', '23:00:00', 1, 5, '2022-07-12 08:36:59', '2022-07-20 18:50:47', 1, NULL, '2022-07-12-62cd40bb934cf.png', 1, 1, 1, '2.00', 0, 0, 0, 1, 1, 1, ' ', NULL, 0, 0, '0.00', '30-40', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 7, 'Venues', 'Tomato Salad', '0'),
(6, 'SWUSHD Kitchen 3', '1 765-938-0012', 'RobertShields@SWUSHD.com', '2022-07-12-62cd4105759b6.png', '39.97349258318602', '-86.14584403762974', 'City Center in United State', NULL, '0.00', NULL, 0, '10:00:00', '23:00:00', 1, 6, '2022-07-12 08:38:13', '2022-07-27 20:28:32', 0, NULL, '2022-07-12-62cd410576e2c.png', 1, 1, 1, '2.00', 0, 0, 0, 2, 1, 1, ' ', NULL, 0, 0, '0.00', '30-40', 1, 1, 0, 0, 0, 4, 0, 1, 1, 1, 1, 14, 'Venues', 'Beers', '0'),
(7, 'SWUSHD Kitchen 4', '+380 (95) 699 90 56', 'naza@gmail.com', '2022-07-12-62cd4f3026fe5.png', '49.27756144826594', '28.477618870647277', 'Vinnytsia Oblast in Ukraine', NULL, '0.00', NULL, 0, '10:00:00', '23:00:00', 1, 7, '2022-07-12 09:38:40', '2022-08-16 08:17:53', 0, NULL, '2022-07-12-62cd4f30305f8.png', 1, 1, 1, '2.00', 0, 0, 0, 3, 1, 1, ' ', NULL, 0, 0, '0.00', '30-40', 1, 1, 0, 0, 1, 2, 1, 1, 1, 1, 2, 12, 'SWUSHD Kitchens', 'Oil-rich Fish', '0'),
(8, 'SWUSHD Kitchen 5', '+44-7840-638-241', 'robert1@gmail.com', '2022-07-12-62cd5169dfb37.png', '39.976123558115866', '-86.13966422805943', 'City Center in United State', NULL, '0.00', NULL, 0, '10:00:00', '23:00:00', 0, 8, '2022-07-12 09:48:09', '2022-08-16 07:30:10', 0, NULL, '2022-07-12-62cd5169e0297.png', 1, 1, 1, '2.00', 0, 0, 0, 2, 1, 1, ' ', NULL, 0, 0, '0.00', '30-40', 1, 1, 0, 0, 0, 5, 1, 1, 1, 0, 1, 12, 'Venues', 'Oil-rich Fish', '0'),
(9, 'SWUSHD 2', '+380 (95) 699 90 51', 'admin@admin.com', '2022-07-16-62d275500e2dd.png', '49.30353653296644', '28.505084690959777', 'Vinnytsia Oblast in Ukraine', NULL, '0.00', NULL, 0, '10:00:00', '23:00:00', 1, 9, '2022-07-16 07:22:40', '2022-08-15 07:27:48', 0, NULL, '2022-07-16-62d275500ed4d.png', 1, 1, 1, '5.00', 0, 0, 0, 3, 1, 1, ' ', NULL, 0, 0, '0.00', '30-40', 1, 1, 0, 0, 1, 4, 0, 1, 1, 0, 2, 13, 'SWUSHD Kitchens', 'Breads', '0'),
(10, 'SWUSHD 6', '+380 (95) 699 90 59', 'anna2@admin.com', '2022-07-18-62d5ed9c44b28.png', '49.30737005746687', '28.532550511272277', 'Vinnytsia Oblast in Ukraine', NULL, '0.00', NULL, 0, '10:00:00', '23:00:00', 1, 10, '2022-07-18 22:32:44', '2022-08-16 08:16:37', 0, NULL, '2022-07-18-62d5ed9c44e4c.png', 1, 1, 1, '5.00', 0, 0, 0, 3, 1, 1, ' ', NULL, 0, 0, '0.00', '30-40', 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 12, 'Venues', 'Oil-rich Fish', '0');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_schedule`
--

CREATE TABLE `restaurant_schedule` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `day` int(11) NOT NULL,
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_schedule`
--

INSERT INTO `restaurant_schedule` (`id`, `restaurant_id`, `day`, `opening_time`, `closing_time`, `created_at`, `updated_at`) VALUES
(8, 2, 1, '01:00:00', '23:00:00', NULL, NULL),
(9, 2, 2, '01:00:00', '23:00:00', NULL, NULL),
(10, 2, 3, '01:00:00', '23:00:00', NULL, NULL),
(11, 2, 4, '01:00:00', '23:00:00', NULL, NULL),
(12, 2, 5, '01:00:00', '23:00:00', NULL, NULL),
(13, 2, 6, '01:00:00', '23:00:00', NULL, NULL),
(14, 2, 0, '01:00:00', '23:00:00', NULL, NULL),
(15, 3, 1, '01:00:00', '23:00:00', NULL, NULL),
(16, 3, 2, '01:00:00', '23:00:00', NULL, NULL),
(17, 3, 3, '01:00:00', '23:00:00', NULL, NULL),
(18, 3, 4, '01:00:00', '23:00:00', NULL, NULL),
(19, 3, 5, '01:00:00', '23:00:00', NULL, NULL),
(20, 3, 6, '01:00:00', '23:00:00', NULL, NULL),
(21, 3, 0, '01:00:00', '23:00:00', NULL, NULL),
(22, 4, 1, '01:00:00', '23:00:00', NULL, NULL),
(23, 4, 2, '01:00:00', '23:00:00', NULL, NULL),
(24, 4, 3, '01:00:00', '23:00:00', NULL, NULL),
(25, 4, 4, '01:00:00', '23:00:00', NULL, NULL),
(26, 4, 5, '01:00:00', '23:00:00', NULL, NULL),
(27, 4, 6, '01:00:00', '23:00:00', NULL, NULL),
(28, 4, 0, '01:00:00', '23:00:00', NULL, NULL),
(29, 5, 1, '01:00:00', '23:00:00', NULL, NULL),
(30, 5, 2, '01:00:00', '23:00:00', NULL, NULL),
(31, 5, 3, '01:00:00', '23:00:00', NULL, NULL),
(32, 5, 4, '01:00:00', '23:00:00', NULL, NULL),
(33, 5, 5, '01:00:00', '23:00:00', NULL, NULL),
(34, 5, 6, '01:00:00', '23:00:00', NULL, NULL),
(35, 5, 0, '01:00:00', '23:00:00', NULL, NULL),
(36, 6, 1, '01:00:00', '23:00:00', NULL, NULL),
(37, 6, 2, '01:00:00', '23:00:00', NULL, NULL),
(38, 6, 3, '01:00:00', '23:00:00', NULL, NULL),
(39, 6, 4, '01:00:00', '23:00:00', NULL, NULL),
(40, 6, 5, '01:00:00', '23:00:00', NULL, NULL),
(41, 6, 6, '01:00:00', '23:00:00', NULL, NULL),
(42, 6, 0, '01:00:00', '23:00:00', NULL, NULL),
(44, 10, 3, '01:00:00', '23:00:00', NULL, NULL),
(45, 10, 4, '01:00:00', '23:00:00', NULL, NULL),
(46, 10, 5, '01:00:00', '23:00:00', NULL, NULL),
(47, 10, 6, '01:00:00', '23:00:00', NULL, NULL),
(48, 10, 0, '01:00:00', '23:00:00', NULL, NULL),
(58, 1, 1, '00:10:00', '23:55:00', NULL, NULL),
(59, 1, 2, '00:10:00', '23:55:00', NULL, NULL),
(60, 1, 3, '00:10:00', '23:55:00', NULL, NULL),
(61, 1, 4, '00:10:00', '23:55:00', NULL, NULL),
(62, 1, 5, '00:10:00', '23:55:00', NULL, NULL),
(63, 1, 6, '00:10:00', '23:55:00', NULL, NULL),
(64, 1, 0, '00:10:00', '23:55:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_wallets`
--

CREATE TABLE `restaurant_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `total_earning` decimal(24,2) NOT NULL DEFAULT '0.00',
  `total_withdrawn` decimal(24,2) NOT NULL DEFAULT '0.00',
  `pending_withdraw` decimal(24,2) NOT NULL DEFAULT '0.00',
  `collected_cash` decimal(24,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_wallets`
--

INSERT INTO `restaurant_wallets` (`id`, `vendor_id`, `total_earning`, `total_withdrawn`, `pending_withdraw`, `collected_cash`, `created_at`, `updated_at`) VALUES
(16, 1, '1365.86', '0.00', '0.00', '0.00', '2022-08-22 11:01:57', '2022-08-30 06:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_zone`
--

CREATE TABLE `restaurant_zone` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_campaign_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `food_id`, `user_id`, `comment`, `attachment`, `rating`, `order_id`, `created_at`, `updated_at`, `item_campaign_id`, `status`) VALUES
(1, 15, 71, 'Like this,', '[]', 5, 100003, '2022-08-09 13:43:15', '2022-08-09 13:43:15', NULL, 1),
(2, 17, 71, 'Very good!', '[]', 5, 100003, '2022-08-09 13:43:35', '2022-08-09 13:43:35', NULL, 1),
(3, 10, 90, 'Good', '[]', 5, 100005, '2022-08-09 22:12:38', '2022-08-09 22:12:38', NULL, 1),
(4, 15, 90, 'Liked food', '[]', 5, 100005, '2022-08-09 22:12:44', '2022-08-09 22:12:44', NULL, 1),
(5, 17, 90, 'Very good food', '[]', 5, 100005, '2022-08-09 22:12:51', '2022-08-09 22:12:51', NULL, 1),
(6, 20, 90, 'Good', '[]', 5, 100001, '2022-08-18 08:56:08', '2022-08-18 08:56:08', NULL, 1),
(7, 17, 90, 'Good', '[]', 5, 100001, '2022-08-18 08:56:19', '2022-08-18 08:56:19', NULL, 1),
(8, 16, 90, 'Dghfd', '[]', 5, 100012, '2022-08-18 12:48:54', '2022-08-18 12:48:54', NULL, 1),
(9, 18, 90, 'Adfgh', '[]', 5, 100012, '2022-08-18 12:48:56', '2022-08-18 12:48:56', NULL, 1),
(10, 11, 90, 'Very good', '[]', 5, 100002, '2022-08-19 08:01:28', '2022-08-19 08:01:28', NULL, 1),
(11, 12, 90, 'Very good', '[]', 5, 100002, '2022-08-19 08:01:41', '2022-08-19 08:01:41', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soft_credentials`
--

CREATE TABLE `soft_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `venue_id` int(11) NOT NULL DEFAULT '0',
  `reserved_status` int(11) NOT NULL DEFAULT '0',
  `schedules` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `capacity` int(11) NOT NULL DEFAULT '5',
  `floor_number` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `table_name`, `image`, `venue_id`, `reserved_status`, `schedules`, `capacity`, `floor_number`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Table-01', '2022-07-21-62d9010c9308e.png', 1, 0, '[\"{\\\"date\\\":\\\"2022-08-22\\\",\\\"start_time\\\":\\\"15:55\\\",\\\"end_time\\\":\\\"16:30\\\"}\",\"{\\\"date\\\":\\\"2022-08-23\\\",\\\"start_time\\\":\\\"02:10\\\",\\\"end_time\\\":\\\"02:30\\\"}\",\"{\\\"date\\\":\\\"2022-08-24\\\",\\\"start_time\\\":\\\"04:30\\\",\\\"end_time\\\":\\\"05:30\\\"}\",\"{\\\"date\\\":\\\"2022-08-26\\\",\\\"start_time\\\":\\\"00:55\\\",\\\"end_time\\\":\\\"01:30\\\"}\",\"{\\\"date\\\":\\\"2022-08-30\\\",\\\"start_time\\\":\\\"10:30\\\",\\\"end_time\\\":\\\"10:40\\\"}\",\"{\\\"date\\\":\\\"2022-08-30\\\",\\\"start_time\\\":\\\"10:45\\\",\\\"end_time\\\":\\\"10:50\\\"}\"]', 5, 1, 1, '2022-07-21 06:32:28', '2022-08-30 06:00:07'),
(2, 'Table-02', '2022-07-21-62d91ba73781a.png', 1, 0, '', 5, 1, 1, '2022-07-21 08:25:59', '2022-08-08 06:20:54'),
(3, 'Table-03', '2022-07-21-62d91c343c4bc.png', 1, 0, '', 5, 1, 1, '2022-07-21 08:28:20', '2022-08-08 06:23:16'),
(4, 'Table-04', '2022-07-21-62d91ca57d7f2.png', 1, 1, '', 5, 1, 1, '2022-07-21 08:30:13', '2022-08-08 06:34:43'),
(6, 'Table-01', '2022-07-21-62d937192dd10.png', 2, 0, '[]', 5, 1, 1, '2022-07-21 10:23:05', '2022-08-22 09:47:48'),
(7, 'Table-02', '2022-07-21-62d9372a56ff5.png', 2, 0, '', 10, 1, 1, '2022-07-21 10:23:22', '2022-07-21 11:32:37'),
(8, 'Table-01', '2022-07-22-62dac47be4d0b.png', 9, 0, '', 10, 1, 1, '2022-07-22 14:38:35', '2022-07-22 14:38:35'),
(9, 'Table-02', '2022-07-22-62dac48d797e1.png', 9, 0, '', 5, 1, 1, '2022-07-22 14:38:53', '2022-07-22 14:38:53'),
(10, 'Table-03', '2022-07-22-62dac4a0a0da5.png', 9, 0, '', 5, 1, 1, '2022-07-22 14:39:12', '2022-07-22 14:39:12'),
(11, 'Table-01', '2022-07-22-62dac4b555475.png', 10, 0, '', 10, 1, 1, '2022-07-22 14:39:33', '2022-07-22 14:39:33'),
(12, 'Table-02', '2022-07-22-62dac4d790f81.png', 10, 0, '', 10, 1, 1, '2022-07-22 14:40:07', '2022-07-22 14:49:40'),
(13, 'Table-01', '2022-07-22-62dac4e968279.png', 4, 0, '', 5, 1, 1, '2022-07-22 14:40:25', '2022-07-22 14:40:25'),
(14, 'Table-02', '2022-07-22-62dac4f834bdf.png', 4, 0, '', 5, 1, 1, '2022-07-22 14:40:40', '2022-07-22 14:40:40'),
(15, 'Table-03', '2022-07-22-62dac51051912.png', 4, 0, '', 5, 1, 1, '2022-07-22 14:41:04', '2022-07-22 14:50:15'),
(16, 'Table-01', '2022-07-22-62dac5277ee83.png', 5, 0, '', 10, 4, 1, '2022-07-22 14:41:27', '2022-07-22 14:41:27'),
(17, 'Table-02', '2022-07-22-62dac53933b84.png', 5, 0, '', 5, 1, 1, '2022-07-22 14:41:45', '2022-07-22 14:41:45'),
(18, 'Table-03', '2022-07-22-62dac5491f405.png', 5, 0, '', 5, 1, 1, '2022-07-22 14:42:01', '2022-07-22 14:50:32'),
(19, 'Table-01', '2022-07-22-62dac5594db9d.png', 6, 0, '', 4, 1, 1, '2022-07-22 14:42:17', '2022-07-22 14:42:17'),
(20, 'Table-02', '2022-07-22-62dac56aa92fb.png', 6, 0, '', 5, 1, 1, '2022-07-22 14:42:34', '2022-07-22 14:42:34'),
(21, 'Table-03', '2022-07-22-62dac579c87b5.png', 6, 0, '', 5, 1, 1, '2022-07-22 14:42:49', '2022-07-22 14:42:49'),
(22, 'Table-04', '2022-07-22-62dac5931df8b.png', 6, 0, '', 5, 1, 1, '2022-07-22 14:43:15', '2022-07-22 14:43:15'),
(23, 'Table-05', '2022-07-22-62dac5a764d80.png', 7, 0, '', 10, 1, 1, '2022-07-22 14:43:35', '2022-07-22 14:48:51'),
(24, 'Table-06', '2022-07-22-62dac5bd3f6e8.png', 7, 0, '', 10, 5, 1, '2022-07-22 14:43:57', '2022-07-22 14:49:17'),
(25, 'Table-03', '2022-07-22-62dac5d80e32a.png', 2, 0, '', 5, 1, 1, '2022-07-22 14:44:24', '2022-07-22 14:49:58'),
(26, 'Table-01', '2022-07-22-62dac5e8568a7.png', 3, 0, '', 5, 1, 1, '2022-07-22 14:44:40', '2022-07-22 14:44:40'),
(27, 'Table-02', '2022-07-22-62dac5f8d413b.png', 3, 0, '', 5, 1, 1, '2022-07-22 14:44:56', '2022-07-22 14:44:56'),
(28, 'Table-03', '2022-07-22-62dac60c18b81.png', 3, 0, '', 5, 1, 1, '2022-07-22 14:45:16', '2022-07-22 14:45:16'),
(29, 'Table-01', '2022-07-22-62dac621bf42f.png', 7, 0, '', 5, 1, 1, '2022-07-22 14:45:37', '2022-07-22 14:45:37'),
(30, 'Table-02', '2022-07-22-62dac6335fb33.png', 7, 0, '', 5, 1, 1, '2022-07-22 14:45:55', '2022-07-22 14:45:55'),
(31, 'Table-03', '2022-07-22-62dac646511e5.png', 7, 0, '', 5, 1, 1, '2022-07-22 14:46:14', '2022-07-22 14:46:14'),
(32, 'Table-04', '2022-07-22-62dac657cf215.png', 7, 0, '', 5, 1, 1, '2022-07-22 14:46:31', '2022-07-22 14:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `track_deliverymen`
--

CREATE TABLE `track_deliverymen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `longitude` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `translationable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translationable_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `interest` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cm_firebase_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `order_count` int(11) NOT NULL DEFAULT '0',
  `login_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `device_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `wallet_balance` decimal(24,3) NOT NULL DEFAULT '0.000',
  `loyalty_point` decimal(24,3) NOT NULL DEFAULT '0.000',
  `is_guest` int(11) NOT NULL DEFAULT '0',
  `ref_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `phone`, `email`, `guest_email`, `image`, `is_phone_verified`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `interest`, `cm_firebase_token`, `status`, `order_count`, `login_medium`, `social_id`, `zone_id`, `device_id`, `wallet_balance`, `loyalty_point`, `is_guest`, `ref_code`) VALUES
(1, 'Yana', 'Derevianko', '+380501552237', 'derevianko.yana22@gmail.com', '', '2022-07-12-62cd718de6bd2.png', 1, NULL, '$2y$10$IZS8p8zyVQgfTxpdIFfwK.AOC7KsO3fj8vkUs2x9mLo4nqW2Ew/ou', NULL, '2022-07-12 11:43:35', '2022-07-12 12:05:17', '[1,2,3,4,5,6,7]', '@', 1, 0, NULL, NULL, 3, '', '0.000', '0.000', 0, 'Dereviank1'),
(71, 'Yana', 'Derev', '+380105552037', 'guest18d8d2f2c804ad90@swushd.app', '', '2022-08-08-62f1a6e08f599.png', 1, NULL, '$2y$10$K3s2whHMQMAd7LzOcBB9jOeX9oSLyXt6Y5kgysMzmEhCMTIlnxRMC', NULL, '2022-08-08 23:12:21', '2022-08-09 07:08:44', '[1,2,3]', 'eotmwmPKQTeruQHpwELnlh:APA91bG_dNHQ9U3bAHohMZwxdFlPS_JZE-pYykG-9bCkyc6M4vNZw6WX2pdJEKBTxOdiQ5u0LPiRGcQqYCphZfXDflRXFZMm1Xg5vNM2q-jEq2ZWN7k-vatEP-EyGf-AWBNkGOgdmIIe', 1, 0, NULL, NULL, 3, '18d8d2f2c804ad90', '0.000', '0.000', 1, '7100000000'),
(90, 'Yana Dereviank', ' Guest', '+703926', 'derevianko.yana21@gmail.com', '', 'def.png', 1, NULL, '$2y$10$xReqDr6AB8AfvZ.9HJzD8OQJpBnjwBCKJUcRegUacV9fcuC8lhk/.', NULL, '2022-08-12 22:12:03', '2022-08-25 20:29:57', '[1,2,3]', 'fw0pTCkSTMi0KYOrim3ZbJ:APA91bGrwma-PuKt1qUa0-OPtd2fr7tiJ170n09lG7bUHYgDt8CI4omxnV5dWTHBAcj07hU8ALiBPsSuQJ3UL5BFJ2f5K9RGH5scyUoeqV3u4P-ih5_No4Y48HkIDyNJV4Tlo_kFuiP-', 1, 3, NULL, NULL, 3, '18d8d2f2c804ad90', '0.000', '0.000', 1, 'Guest90000'),
(91, 'Roberta Shields', ' Guest', '+498379', 'robert.shields@outlook.com', '', 'def.png', 1, NULL, '$2y$10$iVFLpH0EMIZjNMh23kiDeOvfymfHvHDmz1R/iiIvm.F.zd7K5R4Pe', NULL, '2022-08-14 15:21:15', '2022-08-14 15:21:15', '[1,2,3]', 'es5G8zjQQliFGOy0vglssG:APA91bGM6ra9tKD3O2KZMyK88xCZhCdE414B80ZFMX2ORW8DjPAKgVMNK6JjsxeIJTgRTp0rCOOW4qu61j7zwTayZmxcosMHgnAI98J1ber5yDLCPJeQzkQItn0SkHBcM8Fl_8RCOjAC', 1, 0, NULL, NULL, NULL, '05b9cc176575b317', '0.000', '0.000', 1, 'Guest91000'),
(92, 'Robert', 'Shields', '+447840695559', 'robertshields@hotmail.com', '', NULL, 1, NULL, '$2y$10$yMR/Uu/dHnpjQO/iX5W3HuFeDru7Pg8ZY9H53DE7hJqjVU/UL932a', NULL, '2022-08-14 15:54:29', '2022-08-14 15:57:36', '[1,2,3,4,5,6,7,8]', 'cHGwMlr4SYuQACiUcl6Q8J:APA91bGVJwK-GtNXEMlGdtuS7DNkUz2nL6kiRK1oT-KuMhucd2-rzdB0wAUf8e7KFJwoXHDW4tH87nZhzRaqGA4zfCpR0Fge2Za3x1U5-w0jlzYOH5qRMfeED3Xv9ARuGNEixcaJz4Zj', 1, 0, NULL, NULL, 3, '', '0.000', '0.000', 0, 'Shields920'),
(93, 'Abdus', 'Axyter', '+6281235377375', 'abdus@swushd.com', '', NULL, 0, NULL, '$2y$10$wDzrIghlmRSg1b1pSxTLUu7ImRYoLPk1uGXwutOHg8qxDIAyjqbO2', NULL, '2022-08-15 13:11:29', '2022-08-15 13:11:29', NULL, NULL, 1, 0, NULL, NULL, NULL, '', '0.000', '0.000', 0, 'Axyter9300'),
(94, 'Abdus', 'Axyter', '+6285956132376', 'iamaxyter@gmail.com', '', NULL, 0, NULL, '$2y$10$fwyLgzV.klP7ElaO7cmgDeTsoNfjgoYejmGutBJ2Xv9tmoWtjx7Fe', NULL, '2022-08-15 13:14:24', '2022-08-15 13:14:24', NULL, NULL, 1, 0, NULL, NULL, NULL, '', '0.000', '0.000', 0, 'Axyter9400'),
(95, 'Helga', 'Kokes', '+447865076771', 'helgakokes@outlook.com', '', '2022-08-24-6306293ef2937.png', 1, NULL, '$2y$10$f17KvrIffNVknf.fUcvq6eyfqYRR4Vnkzi7l1KAOE/IUOacq5KJ4a', NULL, '2022-08-22 11:49:48', '2022-08-24 12:35:58', '[2,5,6]', 'e9k4xgk1T-i4yZ6pj4ycYk:APA91bFmlpIyVUjfCbjmsy5wf7mGc39OJHIT5OLY9r7lxF5ytWoQmQQxfYT7oNGkTk5C6AF2h7fl-rxR3nh-FFRTsdQGIxzTgF4Cxj0UxcTK4XRawINuQl07V5R0vl5QsNVIiYBFLV3P', 1, 0, NULL, NULL, 3, '', '0.000', '0.000', 0, 'Kokes95000');

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `data`, `status`, `user_id`, `vendor_id`, `delivery_man_id`, `created_at`, `updated_at`) VALUES
(6, '{\"title\":\"Reservation\",\"description\":\"New reservation placed\",\"order_id\":100005,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2022-08-25 11:19:58', '2022-08-25 11:19:58'),
(7, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100009,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2022-08-29 07:18:23', '2022-08-29 07:18:23'),
(8, '{\"title\":\"Order\",\"description\":\"New order placed\",\"order_id\":100010,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2022-08-29 11:40:12', '2022-08-29 11:40:12'),
(9, '{\"title\":\"Reservation\",\"description\":\"New reservation placed\",\"order_id\":100011,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2022-08-29 22:48:12', '2022-08-29 22:48:12'),
(10, '{\"title\":\"Reservation\",\"description\":\"New reservation placed\",\"order_id\":100012,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2022-08-30 00:07:08', '2022-08-30 00:07:08'),
(11, '{\"title\":\"Reservation\",\"description\":\"New reservation placed\",\"order_id\":100013,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2022-08-30 00:12:23', '2022-08-30 00:12:23'),
(12, '{\"title\":\"Reservation\",\"description\":\"New reservation placed\",\"order_id\":100014,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2022-08-30 00:24:35', '2022-08-30 00:24:35'),
(13, '{\"title\":\"Reservation\",\"description\":\"New reservation placed\",\"order_id\":100015,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2022-08-30 00:25:08', '2022-08-30 00:25:08'),
(14, '{\"title\":\"Reservation\",\"description\":\"New reservation placed\",\"order_id\":100016,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2022-08-30 00:28:35', '2022-08-30 00:28:35'),
(15, '{\"title\":\"Reservation\",\"description\":\"New reservation placed\",\"order_id\":100017,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2022-08-30 00:30:23', '2022-08-30 00:30:23'),
(16, '{\"title\":\"Reservation\",\"description\":\"New reservation placed\",\"order_id\":100018,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2022-08-30 00:31:42', '2022-08-30 00:31:42'),
(17, '{\"title\":\"Reservation\",\"description\":\"New reservation placed\",\"order_id\":100019,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2022-08-30 00:40:02', '2022-08-30 00:40:02'),
(18, '{\"title\":\"Reservation\",\"description\":\"New reservation placed\",\"order_id\":100020,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2022-08-30 00:40:41', '2022-08-30 00:40:41'),
(19, '{\"title\":\"Reservation\",\"description\":\"New reservation placed\",\"order_id\":100021,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2022-08-30 05:55:16', '2022-08-30 05:55:16'),
(20, '{\"title\":\"Reservation\",\"description\":\"New reservation placed\",\"order_id\":100022,\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 1, NULL, '2022-08-30 06:00:02', '2022-08-30 06:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `firebase_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_featured` int(11) NOT NULL DEFAULT '0',
  `v_trending` int(11) NOT NULL DEFAULT '0',
  `v_isNew` int(11) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '0',
  `cuisine_id` int(11) NOT NULL DEFAULT '0',
  `business_id` int(11) NOT NULL DEFAULT '0',
  `restaurant_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `f_name`, `l_name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `bank_name`, `branch`, `holder_name`, `account_no`, `image`, `status`, `firebase_token`, `auth_token`, `v_featured`, `v_trending`, `v_isNew`, `priority`, `cuisine_id`, `business_id`, `restaurant_id`) VALUES
(1, 'Yevhenii', 'Derevianko', '+380 (95) 699 90 54', 'yevhenii@gmail.com', NULL, '$2y$10$mXzdC82ozaaRAA/s9.NrRudIZoqizisbvAO5PowWTuRA42xI3qLm6', 'ZSK8KqM0ONULArkmWUfIHNa7e0ALFxAraJ9vx6Zy9AAyywc8UQiBoxUTXf4k', '2022-07-12 08:21:36', '2022-08-12 11:30:28', NULL, NULL, NULL, NULL, '2022-07-12-62cd44ec37ad6.png', 1, 'fsYVK5TxS-yc-U1PsuhsG7:APA91bFhvN63tnGTNHq1O-MTqdfpxwGRFhsE4PGQq7Q1H0ZaFQIrbHfVARD7fhr5oNN8FAn0gRcEgbZ6kSmqSFE2_36TFa9-eThts2dNtgNtbxzettJ-B59cMpATtZQIwqQ_cfriVw5b', 'xXNHgPgs65AqiEGb9Xkx1RZGzGO2xwEEQ8W13wXnwttJ8MCqRo47TJdRyM7B4hVmMJtGMYBBJ42LxXg6LvFYe8354jja5phKZwTDKXLnJVCtmjlH1T1FGRn5', 1, 0, 0, 0, 12, 1, 1),
(2, 'Borys', 'Hozhebskiy', '+380 (95) 699 90 55', 'borys@gmail.com', NULL, '$2y$10$Gvu83K3B.cRqVjf2UFhM7u7LK3.t3F6hlEcXlxuwFUhk1abDzTWxG', 'LGPNoCdbA9k7wvMFJTnSuDDPpmOZClkbP4VedH4DRANiVjyCm1yVsgpqZ14X', '2022-07-12 08:23:34', '2022-07-18 19:10:03', NULL, NULL, NULL, NULL, '2022-07-12-62cd454471a4b.png', 1, NULL, NULL, 0, 0, 0, 0, 8, 1, 2),
(3, 'Robert', 'Shields', '+44-7840-638-231', 'robert@gmail.com', NULL, '$2y$10$MjgHGraRARxPuexkhlQlA.bFI3SMyuCjB6Mv43C3SJaMmrf2cd5y6', NULL, '2022-07-12 08:33:56', '2022-07-20 18:51:15', NULL, NULL, NULL, NULL, '2022-07-12-62cd4a934486c.png', 1, NULL, NULL, 0, 0, 0, 0, 13, 2, 3),
(4, 'Bill', 'Croford', '1 765-938-0015', 'bill@gmail.com', NULL, '$2y$10$KQcL5jfnP5G5bMBIpTl3TO1ZZ0GYWvgjoci1q3gsWukE44wLl1mrS', NULL, '2022-07-12 08:35:33', '2022-07-29 08:04:58', NULL, NULL, NULL, NULL, '2022-07-12-62cd4579186d4.png', 1, NULL, NULL, 1, 0, 0, 1, 14, 1, 4),
(5, 'Anna', 'Shields', '1 765-938-0014', 'anna@gmail.com', NULL, '$2y$10$z3pFz7904u39gDWPh43TG.zOOJRqVNDpwBwyjvC6ba8LoJBhajLIG', NULL, '2022-07-12 08:36:59', '2022-07-20 18:50:47', NULL, NULL, NULL, NULL, '2022-07-12-62cd490697c11.png', 1, NULL, NULL, 0, 0, 0, 0, 7, 1, 5),
(6, 'Michale', 'Croford', '1 765-938-0012', 'RobertShields@SWUSHD.com', NULL, '$2y$10$IzjlSpWdMlF0gAn8qx1efenBghR43LFPZxnUweGyuFyw75383oDYO', NULL, '2022-07-12 08:38:13', '2022-07-20 18:50:09', NULL, NULL, NULL, NULL, '2022-07-12-62cd473f6c6c4.png', 1, NULL, NULL, 0, 0, 0, 0, 14, 1, 6),
(7, 'Naza', 'Noshikova', '+380 (95) 699 90 56', 'naza@gmail.com', NULL, '$2y$10$JLO/UJBvVVVuoI3wDT7QkuHHSXQSsB/JviUrpwI9GveINacBIJvTy', NULL, '2022-07-12 09:38:40', '2022-08-16 08:24:24', NULL, NULL, NULL, NULL, '2022-07-12-62cd6e3a6e5dc.png', 1, NULL, NULL, 1, 0, 0, 0, 13, 2, 7),
(8, 'Robert', 'Croford', '+44-7840-638-241', 'robert1@gmail.com', NULL, '$2y$10$mDiZYZz6vDXqbfQiDu87wu0H8qxgp3/8WLja9JMCFfFYwkDC2r/Fi', NULL, '2022-07-12 09:48:09', '2022-07-29 08:04:50', NULL, NULL, NULL, NULL, '2022-07-18-62d5e92371add.png', 1, NULL, NULL, 1, 0, 0, 1, 12, 1, 8),
(9, 'Boryss', 'Shields', '+380 (95) 699 90 51', 'admin@admin.com', NULL, '$2y$10$H8AkVu198U2f4IAVItYE6.V477YXXiuzFYw.Hg/UO2ai/0hLUqE6e', NULL, '2022-07-16 07:22:40', '2022-07-18 22:11:10', NULL, NULL, NULL, NULL, '2022-07-18-62d5e88e765b6.png', 1, NULL, NULL, 0, 0, 0, 0, 13, 2, 9),
(10, 'Anna', 'Shields', '+380 (95) 699 90 59', 'anna2@admin.com', NULL, '$2y$10$/Ah2Pgi6c14vtQPIOf8Vc.MFhTUUARsDawRGAUXjmw8Glml1Ms74i', NULL, '2022-07-18 22:32:44', '2022-07-29 07:25:19', NULL, NULL, NULL, NULL, '2022-07-18-62d5ed9c3ebb0.png', 1, NULL, NULL, 1, 1, 0, 0, 12, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_employees`
--

CREATE TABLE `vendor_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_role_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firebase_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `debit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `admin_bonus` decimal(24,3) NOT NULL DEFAULT '0.000',
  `balance` decimal(24,3) NOT NULL DEFAULT '0.000',
  `transaction_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `food_id`, `created_at`, `updated_at`, `restaurant_id`, `vendor_id`) VALUES
(3, 1, 11, '2022-07-13 07:30:12', '2022-07-13 07:30:12', NULL, 0),
(4, 1, 10, '2022-07-13 08:05:54', '2022-07-13 08:05:54', NULL, 0),
(5, 1, 17, '2022-08-03 01:09:56', '2022-08-03 01:09:56', NULL, 0),
(8, 90, 17, '2022-08-16 09:02:39', '2022-08-16 09:02:39', NULL, 0),
(9, 90, 18, '2022-08-16 09:03:23', '2022-08-16 09:03:23', NULL, 0),
(11, 90, NULL, '2022-08-16 13:38:34', '2022-08-16 13:38:34', 7, 0),
(15, 90, NULL, '2022-08-16 14:13:24', '2022-08-16 14:13:24', 10, 0),
(16, 90, NULL, '2022-08-16 14:29:24', '2022-08-16 14:29:24', NULL, 7),
(17, 90, NULL, '2022-08-16 15:43:29', '2022-08-16 15:43:29', NULL, 1),
(18, 90, NULL, '2022-08-16 19:49:39', '2022-08-16 19:49:39', NULL, 9),
(19, 95, 17, '2022-08-22 12:32:13', '2022-08-22 12:32:13', NULL, 0),
(20, 90, 20, '2022-08-26 08:47:04', '2022-08-26 08:47:04', NULL, 0),
(21, 90, NULL, '2022-08-31 09:14:11', '2022-08-31 09:14:11', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordinates` polygon NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_wise_topic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_wise_topic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deliveryman_wise_topic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `name`, `coordinates`, `status`, `created_at`, `updated_at`, `restaurant_wise_topic`, `customer_wise_topic`, `deliveryman_wise_topic`) VALUES
(1, 'Richmond, Virginia, USA Central Business District', 0x0000000001030000000100000008000000fe0cc168a95f53c00f40b25900cb42402a0dc1e8ae6153c087aa302e26c54240fe0cc168415e53c0d41ab6e67abd4240070dc1e8145653c06e1cde45bcbe4240fe0cc168995153c0a85e1a3991c54240f50cc1e8255453c0e51a7eae7bce4240210dc168af5953c01f28c799d9d04240fe0cc168a95f53c00f40b25900cb4240, 1, '2022-07-12 08:08:39', '2022-07-12 08:08:39', 'zone_1_restaurant', 'zone_1_customer', 'zone_1_delivery_man'),
(2, 'City Center in United State', 0x000000000103000000010000000600000061bf9c5b5b8a55c098fda1622f0044405cbf9c9baf8c55c032e3190225fc43406abf9cdb9e8a55c04e1defa850f9434042bf9c1bdd8455c0d63fc9123eff43404fbf9c5b508655c00d1c2044b900444061bf9c5b5b8a55c098fda1622f004440, 1, '2022-07-12 08:09:19', '2022-07-12 08:09:19', 'zone_2_restaurant', 'zone_2_customer', 'zone_2_delivery_man'),
(3, 'Vinnytsia Oblast in Ukraine', 0x0000000001030000000100000008000000a6da51ad35623c409a64b828e6ab484079db51ada9573c40a74edb7e45a24840a6da51ad05653c402efd4f6e2b984840a6da51ada5973c40efd3a411a198484079db51adc9a03c4093926809d0a14840a6da51ad759a3c4059df863c36ab4840ecda51add17a3c40bc8a06acefb04840a6da51ad35623c409a64b828e6ab4840, 1, '2022-07-12 08:09:51', '2022-07-12 08:09:51', 'zone_3_restaurant', 'zone_3_customer', 'zone_3_delivery_man');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_ons`
--
ALTER TABLE `add_ons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_wallets`
--
ALTER TABLE `admin_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `cuisines`
--
ALTER TABLE `cuisines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_man_wallets`
--
ALTER TABLE `delivery_man_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_men`
--
ALTER TABLE `delivery_men`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_men_phone_unique` (`phone`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_roles`
--
ALTER TABLE `employee_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `featured_venues`
--
ALTER TABLE `featured_venues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_campaigns`
--
ALTER TABLE `item_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loyalty_point_transactions`
--
ALTER TABLE `loyalty_point_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_configs`
--
ALTER TABLE `mail_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_delivery_histories`
--
ALTER TABLE `order_delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_transactions_zone_id_index` (`zone_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_verifications_phone_unique` (`phone`);

--
-- Indexes for table `provide_d_m_earnings`
--
ALTER TABLE `provide_d_m_earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reserve_places`
--
ALTER TABLE `reserve_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurants_phone_unique` (`phone`);

--
-- Indexes for table `restaurant_schedule`
--
ALTER TABLE `restaurant_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_wallets`
--
ALTER TABLE `restaurant_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_zone`
--
ALTER TABLE `restaurant_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_deliverymen`
--
ALTER TABLE `track_deliverymen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_translationable_id_index` (`translationable_id`),
  ADD KEY `translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_ref_code_unique` (`ref_code`),
  ADD KEY `users_zone_id_index` (`zone_id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_phone_unique` (`phone`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`);

--
-- Indexes for table `vendor_employees`
--
ALTER TABLE `vendor_employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendor_employees_email_unique` (`email`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zones_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_transactions`
--
ALTER TABLE `account_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_ons`
--
ALTER TABLE `add_ons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_wallets`
--
ALTER TABLE `admin_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cuisines`
--
ALTER TABLE `cuisines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2101;

--
-- AUTO_INCREMENT for table `delivery_man_wallets`
--
ALTER TABLE `delivery_man_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_men`
--
ALTER TABLE `delivery_men`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_roles`
--
ALTER TABLE `employee_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featured_venues`
--
ALTER TABLE `featured_venues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `item_campaigns`
--
ALTER TABLE `item_campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loyalty_point_transactions`
--
ALTER TABLE `loyalty_point_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail_configs`
--
ALTER TABLE `mail_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100024;

--
-- AUTO_INCREMENT for table `order_delivery_histories`
--
ALTER TABLE `order_delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `provide_d_m_earnings`
--
ALTER TABLE `provide_d_m_earnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `reserve_places`
--
ALTER TABLE `reserve_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `restaurant_schedule`
--
ALTER TABLE `restaurant_schedule`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `restaurant_wallets`
--
ALTER TABLE `restaurant_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `restaurant_zone`
--
ALTER TABLE `restaurant_zone`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `track_deliverymen`
--
ALTER TABLE `track_deliverymen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vendor_employees`
--
ALTER TABLE `vendor_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
