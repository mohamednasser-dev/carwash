-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2022 at 10:28 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usmart_carwash`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `add_data` tinyint(1) NOT NULL DEFAULT 0,
  `update_data` tinyint(1) NOT NULL DEFAULT 0,
  `delete_data` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `created_at`, `updated_at`, `password`, `add_data`, `update_data`, `delete_data`) VALUES
(1, 'Super Admin', 'admin@admin.com', '2020-02-19 08:44:50', '2020-02-24 14:06:28', '$2y$10$IQ8M6C.879gvIw54Y08.N.D5ATolN9AktgFXBvAlTBxXE5PzRmd5G', 1, 1, 1),
(3, 'manager33', 'admin@admin3.com', '2020-02-19 10:50:31', '2020-02-19 11:06:12', '$2y$10$Ui0gZLEUy6YarW7okzvNgeBsoLfu4h2CndJkPLnZbu2Tcn9AfkQle', 0, 0, 0),
(4, 'test name', 'admin22@admin.com', '2020-02-19 12:43:40', '2020-02-19 12:43:40', '$2y$10$/7h98VQ0XrGgZ14TXiZn4OHMTmrWKoUykt1x5Q6o7h2Kdylo6k/CG', 0, 0, 0),
(5, 'manager4', 'manager@manager.co', '2020-02-19 13:00:00', '2020-02-19 13:00:00', '$2y$10$MHvXZVU8iSMTUhXtO4t8h.JuA80GcGADmmtMyp02DvI7hG5w7wtgi', 0, 0, 0),
(6, 'sadsa', 'asda@hgh.com', '2020-02-19 13:01:11', '2020-02-19 13:01:11', '$2y$10$861HYnfj/D68ZmEFBbaXqOpC7VegdABOBswCG1S00bc9I4HTtY5X.', 0, 0, 0),
(7, 'manager Name', 'manager@man.com', '2020-02-19 13:05:12', '2020-02-19 13:05:12', '$2y$10$dJiHXbxdeQeZk1PGVHEV7.pRrUT.sL7KOXrD4nfXItaOqh8qA1dXa', 0, 0, 0),
(8, 'Admin With Permition', 'admin@admin18.com', '2020-02-19 13:25:11', '2020-02-19 13:25:11', '$2y$10$2rELqWaPoWf/qFmOFiKYn.cCuOVQauWRe.MfKBZUk2jnT2aTtTK2m', 0, 0, 0),
(9, 'test', 'test@test.com', '2020-02-20 05:30:10', '2020-02-20 05:30:10', '$2y$10$7fHeRr886MOh.5E/2AoSTOI3nD9UpmHoIFG1tRbASiLfEk5XZT48O', 0, 0, 0),
(10, 'Admin Tested', 'tested@gmail.com', '2020-02-20 07:17:27', '2020-02-20 07:17:27', '$2y$10$B3TkLlv/T42Z//vMUuSYauAGEk44ae9JDNirmUZwyQ8xbkkzSzPpm', 0, 0, 0),
(11, 'Admin', 'admin28@admin.com', '2020-02-24 08:54:51', '2020-02-24 08:54:51', '$2y$10$tIjEcMcLtdoe5mjscdQrKOvm0rnhwVYpubw/MyBEliDPJQC1HfG2W', 0, 0, 0),
(12, 'gfgf', 'fdf@gh.vom', '2020-02-24 09:01:18', '2020-02-24 09:12:40', '$2y$10$eY.gEsu.8ule1zgs1Pfw1u7gnMKDC5wo.W7MfEj3zQmoD9zPeqGUS', 0, 1, 1),
(13, 'test', 'tets@tetst.com', '2020-04-12 13:26:02', '2020-04-12 13:26:02', '$2y$10$sKuir65TxpW.RrRhzCqRKe/nUKDUnWtv9cujab7ZqDVnFCNSl5UkC', 1, 1, 1),
(14, 'islam', 'islam@islam.com', '2020-07-12 05:22:46', '2020-07-12 05:22:46', '$2y$10$Bv3xrrl0TiSRSwnhrb5q.Oo2M/fYsuR84ioVkalSuR3b1QhQKGj5m', 0, 0, 0),
(15, 'محمد', 'sdfdsfds@sdfsdfsd.com', '2020-09-10 08:43:56', '2020-09-10 08:43:56', '$2y$10$F0jvUoN1.kK819cLUIKx/ejyBudoXvKh63qFjgcgv.AQpmLls7wdq', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `admin_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(27, 8, 1, '2020-02-20 07:16:53', '2020-02-20 07:16:53'),
(28, 8, 4, '2020-02-20 07:16:53', '2020-02-20 07:16:53'),
(29, 8, 5, '2020-02-20 07:16:53', '2020-02-20 07:16:53'),
(30, 8, 8, '2020-02-20 07:16:53', '2020-02-20 07:16:53'),
(31, 8, 9, '2020-02-20 07:16:53', '2020-02-20 07:16:53'),
(61, 10, 4, '2020-02-20 10:39:07', '2020-02-20 10:39:07'),
(62, 10, 5, '2020-02-20 10:39:07', '2020-02-20 10:39:07'),
(63, 10, 6, '2020-02-20 10:39:07', '2020-02-20 10:39:07'),
(64, 10, 7, '2020-02-20 10:39:07', '2020-02-20 10:39:07'),
(65, 10, 8, '2020-02-20 10:39:07', '2020-02-20 10:39:07'),
(66, 10, 9, '2020-02-20 10:39:07', '2020-02-20 10:39:07'),
(67, 10, 10, '2020-02-20 10:39:07', '2020-02-20 10:39:07'),
(116, 1, 1, '2020-02-20 11:18:23', '2020-02-20 11:18:23'),
(117, 1, 2, '2020-02-20 11:18:24', '2020-02-20 11:18:24'),
(118, 1, 3, '2020-02-20 11:18:24', '2020-02-20 11:18:24'),
(119, 1, 4, '2020-02-20 11:18:24', '2020-02-20 11:18:24'),
(120, 1, 5, '2020-02-20 11:18:24', '2020-02-20 11:18:24'),
(121, 1, 6, '2020-02-20 11:18:24', '2020-02-20 11:18:24'),
(122, 1, 7, '2020-02-20 11:18:24', '2020-02-20 11:18:24'),
(123, 1, 8, '2020-02-20 11:18:24', '2020-02-20 11:18:24'),
(124, 1, 9, '2020-02-20 11:18:24', '2020-02-20 11:18:24'),
(125, 1, 10, '2020-02-20 11:18:24', '2020-02-20 11:18:24'),
(126, 3, 1, '2020-02-20 11:21:03', '2020-02-20 11:21:03'),
(127, 3, 2, '2020-02-20 11:21:03', '2020-02-20 11:21:03'),
(128, 3, 3, '2020-02-20 11:21:03', '2020-02-20 11:21:03'),
(129, 3, 4, '2020-02-20 11:21:03', '2020-02-20 11:21:03'),
(130, 3, 5, '2020-02-20 11:21:03', '2020-02-20 11:21:03'),
(131, 3, 6, '2020-02-20 11:21:03', '2020-02-20 11:21:03'),
(132, 3, 7, '2020-02-20 11:21:03', '2020-02-20 11:21:03'),
(133, 3, 8, '2020-02-20 11:21:03', '2020-02-20 11:21:03'),
(134, 3, 9, '2020-02-20 11:21:03', '2020-02-20 11:21:03'),
(135, 3, 10, '2020-02-20 11:21:03', '2020-02-20 11:21:03'),
(136, 9, 1, '2020-02-20 11:21:09', '2020-02-20 11:21:09'),
(137, 9, 2, '2020-02-20 11:21:09', '2020-02-20 11:21:09'),
(138, 9, 3, '2020-02-20 11:21:09', '2020-02-20 11:21:09'),
(139, 9, 4, '2020-02-20 11:21:09', '2020-02-20 11:21:09'),
(140, 9, 5, '2020-02-20 11:21:09', '2020-02-20 11:21:09'),
(141, 9, 6, '2020-02-20 11:21:09', '2020-02-20 11:21:09'),
(142, 9, 7, '2020-02-20 11:21:09', '2020-02-20 11:21:09'),
(143, 9, 8, '2020-02-20 11:21:09', '2020-02-20 11:21:09'),
(144, 9, 9, '2020-02-20 11:21:09', '2020-02-20 11:21:09'),
(145, 9, 10, '2020-02-20 11:21:09', '2020-02-20 11:21:09'),
(146, 7, 1, '2020-02-20 11:21:18', '2020-02-20 11:21:18'),
(147, 7, 2, '2020-02-20 11:21:18', '2020-02-20 11:21:18'),
(148, 7, 3, '2020-02-20 11:21:18', '2020-02-20 11:21:18'),
(149, 7, 4, '2020-02-20 11:21:18', '2020-02-20 11:21:18'),
(150, 7, 5, '2020-02-20 11:21:18', '2020-02-20 11:21:18'),
(151, 7, 6, '2020-02-20 11:21:18', '2020-02-20 11:21:18'),
(152, 7, 7, '2020-02-20 11:21:18', '2020-02-20 11:21:18'),
(153, 7, 8, '2020-02-20 11:21:18', '2020-02-20 11:21:18'),
(154, 7, 9, '2020-02-20 11:21:18', '2020-02-20 11:21:18'),
(155, 7, 10, '2020-02-20 11:21:18', '2020-02-20 11:21:18'),
(156, 6, 5, '2020-02-20 11:21:26', '2020-02-20 11:21:26'),
(157, 6, 9, '2020-02-20 11:21:26', '2020-02-20 11:21:26'),
(158, 5, 6, '2020-02-20 11:21:31', '2020-02-20 11:21:31'),
(159, 5, 10, '2020-02-20 11:21:31', '2020-02-20 11:21:31'),
(160, 4, 6, '2020-02-20 11:21:36', '2020-02-20 11:21:36'),
(161, 4, 10, '2020-02-20 11:21:36', '2020-02-20 11:21:36'),
(162, 11, 1, '2020-02-24 08:54:51', '2020-02-24 08:54:51'),
(163, 11, 2, '2020-02-24 08:54:51', '2020-02-24 08:54:51'),
(164, 11, 3, '2020-02-24 08:54:51', '2020-02-24 08:54:51'),
(165, 11, 4, '2020-02-24 08:54:51', '2020-02-24 08:54:51'),
(166, 11, 5, '2020-02-24 08:54:51', '2020-02-24 08:54:51'),
(167, 11, 6, '2020-02-24 08:54:52', '2020-02-24 08:54:52'),
(168, 11, 7, '2020-02-24 08:54:52', '2020-02-24 08:54:52'),
(169, 11, 8, '2020-02-24 08:54:52', '2020-02-24 08:54:52'),
(170, 11, 9, '2020-02-24 08:54:52', '2020-02-24 08:54:52'),
(171, 11, 10, '2020-02-24 08:54:52', '2020-02-24 08:54:52'),
(212, 12, 1, '2020-02-24 09:12:40', '2020-02-24 09:12:40'),
(213, 12, 2, '2020-02-24 09:12:40', '2020-02-24 09:12:40'),
(214, 12, 3, '2020-02-24 09:12:40', '2020-02-24 09:12:40'),
(215, 12, 4, '2020-02-24 09:12:40', '2020-02-24 09:12:40'),
(216, 12, 5, '2020-02-24 09:12:40', '2020-02-24 09:12:40'),
(217, 12, 6, '2020-02-24 09:12:40', '2020-02-24 09:12:40'),
(218, 12, 7, '2020-02-24 09:12:40', '2020-02-24 09:12:40'),
(219, 12, 8, '2020-02-24 09:12:40', '2020-02-24 09:12:40'),
(220, 12, 9, '2020-02-24 09:12:40', '2020-02-24 09:12:40'),
(221, 12, 10, '2020-02-24 09:12:40', '2020-02-24 09:12:40'),
(222, 13, 2, '2020-04-12 13:26:02', '2020-04-12 13:26:02'),
(223, 13, 4, '2020-04-12 13:26:02', '2020-04-12 13:26:02'),
(224, 13, 6, '2020-04-12 13:26:02', '2020-04-12 13:26:02'),
(225, 13, 7, '2020-04-12 13:26:02', '2020-04-12 13:26:02'),
(226, 13, 10, '2020-04-12 13:26:02', '2020-04-12 13:26:02'),
(227, 13, 11, '2020-04-12 13:26:02', '2020-04-12 13:26:02'),
(228, 1, 11, '2020-04-11 21:00:00', '2020-04-11 21:00:00'),
(229, 1, 13, '2021-01-28 15:46:40', '2021-01-28 15:46:50'),
(230, 1, 14, '2020-07-08 22:00:00', '2020-07-08 22:00:00'),
(231, 14, 1, '2020-07-12 05:22:47', '2020-07-12 05:22:47'),
(232, 14, 2, '2020-07-12 05:22:47', '2020-07-12 05:22:47'),
(233, 14, 4, '2020-07-12 05:22:47', '2020-07-12 05:22:47'),
(234, 14, 13, '2020-07-12 05:22:47', '2020-07-12 05:22:47'),
(235, 14, 14, '2020-07-12 05:22:47', '2020-07-12 05:22:47'),
(236, 15, 3, '2020-09-10 08:43:56', '2020-09-10 08:43:56'),
(237, 15, 6, '2020-09-10 08:43:56', '2020-09-10 08:43:56'),
(239, 1, 16, '2021-01-28 15:46:40', '2021-01-28 15:46:50'),
(240, 1, 17, '2021-01-28 15:46:40', '2021-01-28 15:46:50'),
(241, 1, 18, '2021-01-28 15:46:40', '2021-01-28 15:46:50'),
(242, 1, 19, '2021-01-28 15:46:40', '2021-01-28 15:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `image`, `type`, `content`, `place`, `created_at`, `updated_at`) VALUES
(16, 'bsjedlq4sutdzwpavf4g.png', 'link', 'https://u-smart.co/', 3, '2021-04-21 13:07:40', '2021-04-21 13:07:40'),
(19, 'joly54wb2qqsfdteht0v.png', 'link', 'https://u-smart.co/', 1, '2021-07-13 11:21:17', '2021-07-13 11:21:17'),
(20, 'dhshqyjn3c6nma91hb14.png', 'id', '83', 1, '2021-08-02 15:28:08', '2021-08-02 15:28:08'),
(21, 'jbtvd2scndegjxn3yxhu.jpg', 'link', 'http://127.0.0.1:8000/admin-panel/ads/add', 1, '2022-01-11 05:36:11', '2022-01-11 05:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `image`, `title_ar`, `title_en`, `deleted`, `city_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'عبدالله السالم', 'Abdullah al-Salem', '0', 1, '2021-03-01 13:50:15', '2021-04-18 15:33:12'),
(2, NULL, 'العديلية', 'Adailiya', '0', 1, '2021-04-18 15:33:26', '2021-04-18 15:33:26'),
(3, NULL, 'بنيد القار', 'Bnied Al-Gar', '0', 1, '2021-04-18 15:33:36', '2021-04-18 15:33:36'),
(4, NULL, 'الدعية', 'Daiya', '0', 1, '2021-04-18 15:33:49', '2021-04-18 15:33:49'),
(5, NULL, 'الدسمة', 'Dasma', '0', 1, '2021-04-18 15:34:02', '2021-04-18 15:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `balance_packages`
--

CREATE TABLE `balance_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `amount` double NOT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `balance_packages`
--

INSERT INTO `balance_packages` (`id`, `name_ar`, `name_en`, `desc_ar`, `desc_en`, `price`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(2, 'الباقة 1', 'package 1', 'ستحصل على 100 رصيد اعلانى', 'you will got 100 ad balance', 75, 100, 'show', '2021-02-07 05:14:17', '2021-02-07 06:27:58'),
(3, 'الباقة 2', 'package 2', 'ستحصل على 200 رصيد اعلانى', 'you will got 200 ad balance', 20, 200, 'show', '2021-03-02 09:57:54', '2021-03-02 09:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(10) UNSIGNED NOT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offers_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `sort` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `image`, `title_en`, `title_ar`, `desc_ar`, `desc_en`, `offers_image`, `deleted`, `sort`, `created_at`, `updated_at`) VALUES
(10, 'pyjuqlrntdm9z6amxnp0.jpg', 'salon', 'صالون', 'صالون', 'salon', NULL, 0, NULL, '2022-01-08 14:19:29', '2022-01-08 14:19:29'),
(11, 'ikxkxaxdosxrrnkwo2dy.jpg', 'normal jeep', 'جيب عادي', NULL, NULL, NULL, 0, NULL, '2022-01-08 14:27:08', '2022-01-08 14:27:08'),
(12, 'vjpu5foacnke5a1bkomt.jpg', 'شسيشسي', 'سسش', NULL, NULL, NULL, 1, NULL, '2022-02-01 01:03:32', '2022-02-01 01:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories_ads`
--

CREATE TABLE `categories_ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `ad_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_ads`
--

INSERT INTO `categories_ads` (`id`, `image`, `type`, `cat_id`, `deleted`, `ad_type`, `content`, `created_at`, `updated_at`) VALUES
(1, 'i7ysog5kpnkpuza1lxvq.jpg', 'category', 3, '0', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-02-14 12:31:08', '2021-02-14 12:31:08'),
(2, 'kffd2paeqypitjhr4fwt.jpg', 'category', 3, '0', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-02-14 12:31:44', '2021-02-14 12:31:44'),
(3, 'qpo55bdsrks3fysf4ngb.jpg', 'category', 3, '0', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-02-14 12:39:09', '2021-02-14 12:39:09'),
(4, 'qpo55bdsrks3fysf4ngb.jpg', 'category', 2, '1', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-02-14 12:39:09', '2021-07-13 11:11:57'),
(5, 'qpo55bdsrks3fysf4ngb.jpg', 'category', 1, '0', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-02-14 12:39:09', '2021-02-14 12:39:09'),
(6, 'vv4obdwllatydp56819d.jpg', 'sub_category', 1, '1', 'link', 'https://www.youtube.com/', '2021-02-14 12:42:56', '2021-08-04 11:44:30'),
(7, 'jsvtaqrbymle0d3vlq2q.jpg', 'sub_category', 2, '0', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-02-14 14:55:44', '2021-02-14 14:55:44'),
(8, 'trnbas98ofm0bzbpwu8r.jpg', 'category', 6, '0', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-06-01 09:27:05', '2021-06-01 09:27:05'),
(9, 'dxjcdladmbx0d6uesrjt.png', 'category', 9, '1', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-07-13 11:10:39', '2021-08-04 11:42:50'),
(10, 'dxjcdladmbx0d6uesrjt.png', 'category', 7, '1', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-07-13 11:10:39', '2021-08-04 11:42:18'),
(11, 'dxjcdladmbx0d6uesrjt.png', 'category', 2, '1', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-07-13 11:10:39', '2021-08-04 11:41:49'),
(12, 'jxae2qwgseuyjfzr3vr4.png', 'category', 9, '1', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-07-13 11:11:33', '2021-08-04 11:42:47'),
(13, 'jxae2qwgseuyjfzr3vr4.png', 'category', 7, '1', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-07-13 11:11:33', '2021-08-04 11:42:15'),
(14, 'jxae2qwgseuyjfzr3vr4.png', 'category', 2, '1', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-07-13 11:11:33', '2021-08-04 11:41:46'),
(15, 'y2oyktnltmnznplmzytj.jpg', 'sub_category', 1, '1', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-07-25 13:50:01', '2021-08-04 11:44:35'),
(16, 'ja0cjeyiivdpbtc3mpwr.jpg', 'sub_two_category', 1, '1', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-07-25 13:50:32', '2021-08-04 11:46:06'),
(17, 'mezc4swxc6movkz5lqqs.jpg', 'category', 9, '1', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-07-25 14:00:25', '2021-08-04 11:42:44'),
(18, 'mezc4swxc6movkz5lqqs.jpg', 'category', 7, '1', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-07-25 14:00:25', '2021-08-04 11:42:12'),
(19, 'mezc4swxc6movkz5lqqs.jpg', 'category', 2, '1', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-07-25 14:00:25', '2021-08-04 11:41:44'),
(20, 'ovi4ks4ivbvx2yomoyvz.jpg', 'sub_three_category', 6, '1', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-07-27 10:00:19', '2021-08-04 11:47:04'),
(21, 'ovi4ks4ivbvx2yomoyvz.jpg', 'sub_three_category', 4, '1', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-07-27 10:00:19', '2021-08-04 11:46:55'),
(22, 'ovi4ks4ivbvx2yomoyvz.jpg', 'sub_three_category', 3, '1', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-07-27 10:00:19', '2021-08-04 11:46:46'),
(23, 'ovi4ks4ivbvx2yomoyvz.jpg', 'sub_three_category', 1, '1', 'link', 'https://www.figma.com/proto/X2DDNsVzCPXWsU6GcVLPCQ/da3aya?node-id=1%3A75&viewport=2683%2C2924%2C0.25&scaling=min-zoom', '2021-07-27 10:00:19', '2021-08-04 11:46:29'),
(24, 'zafwqdr87bvhoqtyeamf.jpg', 'sub_category', 16, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:38:41', '2021-08-04 11:38:41'),
(25, 'zafwqdr87bvhoqtyeamf.jpg', 'sub_category', 15, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:38:41', '2021-08-04 11:38:41'),
(26, 'zafwqdr87bvhoqtyeamf.jpg', 'sub_category', 14, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:38:41', '2021-08-04 11:38:41'),
(27, 'zafwqdr87bvhoqtyeamf.jpg', 'sub_category', 1, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:38:41', '2021-08-04 11:38:41'),
(28, 'spxjrfh3ww4njbsitqwd.jpg', 'sub_two_category', 1, '0', 'id', '16', '2021-08-04 11:39:10', '2021-08-04 11:39:10'),
(29, 'ipj7h2hotmqhtgail5kz.jpg', 'sub_three_category', 6, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:39:29', '2021-08-04 11:39:29'),
(30, 'ipj7h2hotmqhtgail5kz.jpg', 'sub_three_category', 4, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:39:29', '2021-08-04 11:39:29'),
(31, 'ipj7h2hotmqhtgail5kz.jpg', 'sub_three_category', 3, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:39:29', '2021-08-04 11:39:29'),
(32, 'ipj7h2hotmqhtgail5kz.jpg', 'sub_three_category', 1, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:39:29', '2021-08-04 11:39:29'),
(33, 'va9esgbujwgn6i7mtavf.jpg', 'category', 2, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:42:00', '2021-08-04 11:42:00'),
(34, 'biuvglfdqcbrpwf3vqhn.jpg', 'category', 7, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:42:31', '2021-08-04 11:42:31'),
(35, 'h8tgmskrq6v8qvy5ku2a.jpg', 'category', 9, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:43:28', '2021-08-04 11:43:28'),
(36, 'wadqicgraxtwo16lgjvz.jpg', 'category', 2, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:44:16', '2021-08-04 11:44:16'),
(37, 'pfpibcpjbxlga41ngdvw.jpg', 'sub_category', 1, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:44:52', '2021-08-04 11:44:52'),
(38, 'ailh7dmrgjgecdqq0enw.jpg', 'sub_category', 14, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:45:11', '2021-08-04 11:45:11'),
(39, 'fiymdlytxzixcaumrquo.jpg', 'sub_category', 15, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:45:30', '2021-08-04 11:45:30'),
(40, 'vqlr8uoce6uopw8yiizu.jpg', 'sub_category', 16, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:45:53', '2021-08-04 11:45:53'),
(41, 'olcvqk1xresfqkkw9lta.jpg', 'sub_two_category', 1, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:46:17', '2021-08-04 11:46:17'),
(42, 'v8ar3hivfa4b0z8htjvu.jpg', 'sub_three_category', 6, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:46:41', '2021-08-04 11:46:41'),
(43, 'v8ar3hivfa4b0z8htjvu.jpg', 'sub_three_category', 4, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:46:41', '2021-08-04 11:46:41'),
(44, 'v8ar3hivfa4b0z8htjvu.jpg', 'sub_three_category', 3, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:46:41', '2021-08-04 11:46:41'),
(45, 'v8ar3hivfa4b0z8htjvu.jpg', 'sub_three_category', 1, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:46:41', '2021-08-04 11:46:41'),
(46, 'kfegggdxybdfogzzhqoo.jpg', 'sub_four_category', 6, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:50:43', '2021-08-04 11:50:43'),
(47, 'kfegggdxybdfogzzhqoo.jpg', 'sub_four_category', 5, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:50:43', '2021-08-04 11:50:43'),
(48, 'jmjnds8ocnxyrwrahomd.jpg', 'sub_four_category', 6, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:50:55', '2021-08-04 11:50:55'),
(49, 'jmjnds8ocnxyrwrahomd.jpg', 'sub_four_category', 5, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:50:55', '2021-08-04 11:50:55'),
(50, 'b7fdyatpppujbxwzjpdn.jpg', 'sub_four_category', 8, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:51:26', '2021-08-04 11:51:26'),
(51, 'b7fdyatpppujbxwzjpdn.jpg', 'sub_four_category', 7, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:51:26', '2021-08-04 11:51:26'),
(52, 'jcl0mmpuidiswdi1ayy5.jpg', 'sub_four_category', 8, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:51:38', '2021-08-04 11:51:38'),
(53, 'jcl0mmpuidiswdi1ayy5.jpg', 'sub_four_category', 7, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:51:38', '2021-08-04 11:51:38'),
(54, 'spcljuoihpqofru8jxew.jpg', 'sub_four_category', 10, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:52:09', '2021-08-04 11:52:09'),
(55, 'spcljuoihpqofru8jxew.jpg', 'sub_four_category', 9, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:52:09', '2021-08-04 11:52:09'),
(56, 'ja1ek0tt7evareurrqps.jpg', 'sub_five_category', 2, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:53:40', '2021-08-04 11:53:40'),
(57, 'b3re6mbrsmv38brqzfej.jpg', 'sub_five_category', 2, '0', 'link', 'http://u-smart.co/', '2021-08-04 11:53:49', '2021-08-04 11:53:49'),
(58, 'pvm6eysw3edmvwklycs0.jpg', 'category', 9, '0', 'link', 'http://u-smart.co/', '2021-08-04 14:46:03', '2021-08-04 14:46:03'),
(59, 'bzapwge57hispmlxnrxp.jpg', 'category', 7, '0', 'link', 'https://u-smart.co/', '2021-08-04 14:47:38', '2021-08-04 14:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `category_options`
--

CREATE TABLE `category_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cat_type` enum('category','subcategory') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'category',
  `is_required` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_option_values`
--

CREATE TABLE `category_option_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `image`, `title_ar`, `title_en`, `deleted`, `created_at`, `updated_at`) VALUES
(1, NULL, 'مدينة الكويت', 'Kuwait city', '0', '2021-03-01 13:46:37', '2021-04-18 15:29:53'),
(2, NULL, 'c', 'Class 3', '1', '2021-04-18 15:28:43', '2021-04-18 15:30:11'),
(3, NULL, 'محافظة حولي', 'Hawalli Governorate', '0', '2021-04-18 15:30:56', '2021-04-18 15:30:56'),
(4, NULL, 'محافظة الفروانية', 'Farwaniya Governorate', '0', '2021-04-18 15:31:20', '2021-04-18 15:31:20'),
(5, NULL, 'محافظة الأحمدي', 'Ahmadi Governorate', '0', '2021-04-18 15:31:38', '2021-04-18 15:31:38'),
(6, NULL, 'محافظة الجهراء', 'Jahra Governorate', '0', '2021-04-18 15:32:02', '2021-04-18 15:32:02'),
(7, NULL, 'محافظة مبارك الكبير', 'Mubarak Al-Kabeer Governorate', '0', '2021-04-18 15:32:26', '2021-04-18 15:32:26');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `last_message_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `day_times`
--

CREATE TABLE `day_times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` int(11) NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL,
  `deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `work_time` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `day_times`
--

INSERT INTO `day_times` (`id`, `day`, `time_from`, `time_to`, `deleted`, `work_time`, `created_at`, `updated_at`) VALUES
(1, 0, '10:00:00', '11:00:00', '0', 0, '2022-02-01 01:46:25', '2022-02-01 02:18:58'),
(2, 0, '11:00:00', '12:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(3, 0, '12:00:00', '13:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(4, 0, '13:00:00', '14:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(5, 0, '14:00:00', '15:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(6, 0, '15:00:00', '16:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(7, 0, '16:00:00', '17:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(8, 0, '17:00:00', '18:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(9, 0, '18:00:00', '19:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(10, 0, '19:00:00', '20:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(11, 0, '20:00:00', '21:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(12, 0, '21:00:00', '22:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(13, 0, '22:00:00', '23:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(14, 3, '09:00:00', '10:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(15, 3, '10:00:00', '11:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(16, 3, '11:00:00', '12:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(17, 3, '12:00:00', '13:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(18, 3, '13:00:00', '14:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(19, 3, '14:00:00', '15:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(20, 3, '15:00:00', '16:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(21, 3, '16:00:00', '17:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(22, 3, '17:00:00', '18:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(23, 3, '18:00:00', '19:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(24, 3, '19:00:00', '20:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(25, 3, '20:00:00', '21:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(26, 3, '21:00:00', '22:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(27, 5, '08:00:00', '09:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(28, 5, '09:00:00', '10:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(29, 5, '10:00:00', '11:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(30, 5, '11:00:00', '12:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(31, 5, '12:00:00', '13:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(32, 5, '13:00:00', '14:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(33, 5, '14:00:00', '15:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(34, 5, '15:00:00', '16:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(35, 5, '16:00:00', '17:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(36, 5, '17:00:00', '18:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(37, 5, '18:00:00', '19:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(38, 5, '19:00:00', '20:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(39, 5, '20:00:00', '21:00:00', '0', 1, '2022-02-01 01:46:26', '2022-02-01 01:46:26');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `type` enum('product','category') NOT NULL DEFAULT 'product',
  `category_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `type`, `category_type`, `created_at`, `updated_at`) VALUES
(362, 103, 2, 'category', '0', '2021-09-06 12:08:20', '2021-09-06 12:08:20'),
(363, 103, 1, 'category', '0', '2021-09-06 12:09:23', '2021-09-06 12:09:23'),
(364, 103, 1, 'category', '1', '2021-09-06 12:24:29', '2021-09-06 12:24:29'),
(365, 103, 128, 'product', NULL, '2021-10-13 15:21:15', '2021-10-13 15:21:15'),
(366, 103, 1, 'category', '2', '2021-11-06 14:10:27', '2021-11-06 14:10:27'),
(367, 103, 1, 'category', '3', '2021-11-16 09:37:01', '2021-11-16 09:37:01'),
(368, 103, 1, 'category', '4', '2021-11-16 09:38:51', '2021-11-16 09:38:51'),
(369, 103, 1, 'category', '5', '2021-11-16 09:40:34', '2021-11-16 09:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `image`, `title_ar`, `title_en`, `desc_ar`, `desc_en`, `cat_id`, `city_id`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(2, 'thbuhc8whgt5wg8rvxdx.jpg', 'sdsad', 'asdasd', 'asdsad', 'SAdsaddsa', 1, 1, 'show', '0', '2021-08-28 15:30:11', '2021-08-28 15:34:54'),
(3, 'wi1dhulxfnymhsdxv9s2.jpg', 'افضل الاطعمة', 'best foods', 'اطعمة اطعمة اطعمة اطعمة', 'foods foods foodsfoods', 2, 3, 'show', '0', '2021-08-28 15:37:12', '2021-08-28 15:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `forum_categories`
--

CREATE TABLE `forum_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_cat_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_categories`
--

INSERT INTO `forum_categories` (`id`, `image`, `title_ar`, `title_en`, `parent_cat_id`, `type`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'o9raxsybz0brsd2psczo.jpg', 'السيارات', 'cars', NULL, 'category', '0', '2021-08-28 10:41:45', '2021-08-28 11:06:40'),
(2, 'n6a7l1seymojnf4gttme.jpg', 'مطاعم', 'resturants', NULL, 'category', '0', '2021-08-28 10:51:55', '2021-08-28 13:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `main_ads`
--

CREATE TABLE `main_ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_ads`
--

INSERT INTO `main_ads` (`id`, `image`, `deleted`, `created_at`, `updated_at`) VALUES
(3, 'ri4euo1vt80cisjyi9g0.jpg', '1', '2021-03-01 08:43:31', '2021-04-18 14:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `markas`
--

CREATE TABLE `markas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` bigint(20) NOT NULL,
  `deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `markas`
--

INSERT INTO `markas` (`id`, `image`, `title_en`, `title_ar`, `cat_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '', 'sAudi', 'اودى', 0, '1', '2021-01-25 21:04:58', '2021-01-29 10:02:26'),
(2, '', 'sheverolle', 'شيفورليه', 0, '0', '2021-01-19 21:05:04', '2021-01-20 21:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `marka_types`
--

CREATE TABLE `marka_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `marka_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cat_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marka_types`
--

INSERT INTO `marka_types` (`id`, `image`, `title_en`, `title_ar`, `deleted`, `marka_id`, `cat_id`, `created_at`, `updated_at`) VALUES
(2, '', 'Type1', 'النوع الاول', '0', 1, 0, '2021-01-04 11:30:21', '2021-01-19 11:30:25'),
(3, '', 'type 2020', 'نوع 2020', '0', 2, 0, '2021-01-13 11:30:27', '2021-01-12 11:30:29'),
(5, NULL, 'atype', 'النوع a', '1', 2, 0, '2021-01-29 09:39:25', '2021-01-29 09:57:09'),
(6, NULL, 'sad', 'asd', '0', 2, 0, '2021-01-29 10:02:47', '2021-01-29 10:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `mazad_times`
--

CREATE TABLE `mazad_times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day_num` bigint(20) UNSIGNED NOT NULL,
  `deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mazad_times`
--

INSERT INTO `mazad_times` (`id`, `day_num`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 3, '0', '2021-08-21 11:22:51', '2021-08-21 11:22:51'),
(2, 7, '0', '2021-08-21 11:23:04', '2021-08-21 11:23:04'),
(3, 15, '0', '2021-08-21 11:23:12', '2021-08-21 11:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `ad_product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meta_tags`
--

CREATE TABLE `meta_tags` (
  `id` int(11) NOT NULL,
  `home_meta_en` text DEFAULT NULL,
  `home_meta_ar` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `meta_tags`
--

INSERT INTO `meta_tags` (`id`, `home_meta_en`, `home_meta_ar`, `created_at`, `updated_at`) VALUES
(1, 'test meta tag english22', 'ميتا تاج عربي1', '2020-02-18 12:45:58', '2020-02-18 10:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(216, '2014_10_12_000000_create_users_table', 1),
(217, '2014_10_12_100000_create_password_resets_table', 1),
(218, '2019_08_19_000000_create_failed_jobs_table', 1),
(219, '2020_01_22_160948_create_ads_table', 1),
(220, '2020_01_23_102549_create_categories_table', 1),
(221, '2020_01_23_114523_create_settings_table', 1),
(222, '2020_01_23_122840_create_contact_us_table', 1),
(223, '2020_01_27_153233_create_doctors_lawyers_table', 1),
(224, '2020_01_28_090727_create_favorites_table', 1),
(225, '2020_01_28_120020_create_rates_table', 1),
(226, '2020_01_28_121824_create_reservations_table', 1),
(227, '2020_01_29_121840_create_services_table', 1),
(228, '2020_01_29_122258_create_doctor_lawyer_services_table', 1),
(229, '2020_01_29_122545_create_place_images_table', 1),
(230, '2020_01_29_123248_create_holidays_table', 1),
(231, '2020_01_29_124130_create_times_of_works_table', 1),
(232, '2021_01_25_204546_create_markas_table', 2),
(233, '2021_01_25_204641_create_marka_types_table', 2),
(234, '2021_01_25_204702_create_type_models_table', 2),
(235, '2021_01_30_194124_create_mndobs_table', 3),
(236, '2021_01_31_170741_create_product_views_table', 4),
(237, '2021_02_01_195859_create_product_features_table', 5),
(238, '2021_02_03_073507_create_category_options_table', 6),
(239, '2021_02_03_073527_create_category_option_values_table', 6),
(240, '2021_02_03_103018_create_main_ads_table', 7),
(241, '2021_02_04_071812_create_wallet_transactions_table', 8),
(242, '2021_02_07_063618_create_balance_packages_table', 9),
(244, '2021_02_10_102827_create_vistors_table', 10),
(245, '2021_02_11_141842_create_categories_ads_table', 11),
(246, '2021_02_11_123410_create_sub_five_categories_table', 12),
(247, '2021_03_01_151256_create_cities_table', 13),
(248, '2021_03_01_151306_create_areas_table', 13),
(249, '2021_02_17_102345_create_conversations_table', 14),
(250, '2021_02_17_102435_create_messages_table', 15),
(251, '2021_08_15_124033_create_product_mazads_table', 16),
(252, '2021_08_21_125206_create_mazad_times_table', 17),
(253, '2021_08_28_111747_create_forum_categories_table', 18),
(254, '2021_08_28_111748_create_forums_table', 19),
(255, '2021_09_05_140540_update_favorites_table', 20),
(256, '2022_01_11_081304_create_times_of_works_table', 7),
(257, '2022_01_18_143551_create_orders_table', 21),
(258, '2022_01_18_143552_create_order_details_table', 21),
(259, '2022_01_18_152310_create_order_times_table', 22),
(260, '2022_02_01_005841_create_day_times_table', 23),
(261, '2022_02_01_010115_create_order_times_table', 23);

-- --------------------------------------------------------

--
-- Table structure for table `mndobs`
--

CREATE TABLE `mndobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `watsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mndobs`
--

INSERT INTO `mndobs` (`id`, `name_ar`, `name_en`, `image`, `phone`, `watsapp`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(2, 'ونج', 'wong', 'b5n26ycilxqv9bkvt4iy.jpg', '012015555', 'sadasdwqdesa', 'show', '0', '2021-01-30 19:33:09', '2021-02-04 06:39:38');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `body`, `image`, `created_at`, `updated_at`) VALUES
(5, 'fdssdf', 'dsffds', NULL, '2020-02-18 07:53:57', '2020-02-18 07:53:57'),
(6, 'fdssdf', 'dsffds', NULL, '2020-02-18 07:54:29', '2020-02-18 07:54:29'),
(7, 'fdssdf', 'dsffds', NULL, '2020-02-18 07:55:28', '2020-02-18 07:55:28'),
(8, 'dg', 'dg', NULL, '2020-02-18 07:56:19', '2020-02-18 07:56:19'),
(9, 'fdsafds', 'fdsfds', NULL, '2020-02-18 07:59:14', '2020-02-18 07:59:14'),
(10, 'testy', 'test body', NULL, '2020-02-18 08:04:13', '2020-02-18 08:04:13'),
(11, 'test', 'test', NULL, '2020-02-18 08:06:42', '2020-02-18 08:06:42'),
(12, 'test title', 'test body', NULL, '2020-02-18 08:20:55', '2020-02-18 08:20:55'),
(13, 'test title', 'test body', NULL, '2020-02-18 08:34:20', '2020-02-18 08:34:20'),
(14, 'test title', 'test body', NULL, '2020-02-18 08:35:09', '2020-02-18 08:35:09'),
(15, 'test title', 'test body', NULL, '2020-02-18 08:36:22', '2020-02-18 08:36:22'),
(16, 'test title', 'test body', NULL, '2020-02-18 08:36:54', '2020-02-18 08:36:54'),
(17, 'dsfds', 'dsfdsf', NULL, '2020-02-18 08:37:54', '2020-02-18 08:37:54'),
(18, 'dsfds', 'dsfdsf', NULL, '2020-02-18 08:38:16', '2020-02-18 08:38:16'),
(19, 'fdsfdsfds', 'fdsfdsfds', NULL, '2020-02-18 08:38:30', '2020-02-18 08:38:30'),
(20, 'fdsfdsfds', 'fdsfdsfds', NULL, '2020-02-18 08:54:51', '2020-02-18 08:54:51'),
(21, 'fdsfdsfds', 'fdsfdsfds', NULL, '2020-02-18 08:55:30', '2020-02-18 08:55:30'),
(22, 'fdsfdsfds', 'fdsfdsfds', NULL, '2020-02-18 08:56:04', '2020-02-18 08:56:04'),
(23, 'test', 'test', 'fq6jmy7et4peztea3l8b.jpg', '2020-02-18 09:00:34', '2020-02-18 09:00:34'),
(24, 'test15', 'test', 'ai3t1cmrm9u1rgvhaz0u.jpg', '2020-02-18 09:01:07', '2020-02-18 09:01:07'),
(25, 'test notification', 'body of notification', NULL, '2020-04-05 15:46:01', '2020-04-05 15:46:01'),
(26, 'عنوان التنبيه', 'محتوي التنبيه', 'dx0dtkuqxpurdk0zisv0.jpg', '2020-04-05 15:52:55', '2020-04-05 15:52:55'),
(27, 'تجربة تنبيهات المشروع الاساسي', 'تجربة تنبيهات المشروع الاساسي', 'h6ouw1vxkznnwstb9alw.png', '2020-04-09 15:56:16', '2020-04-09 15:56:16'),
(28, 'تجربة تنبيهات المشروع الاساسي', 'تجربة تنبيهات المشروع الاساسي', 'mvdhb0hopuwicnkkvvuy.png', '2020-04-09 16:00:58', '2020-04-09 16:00:58'),
(29, 'تجربة تنبيهات المشروع الاساسي', 'تجربة تنبيهات المشروع الاساسي', 'qsiyls7q1zi7iekmpidr.jpg', '2020-04-09 16:01:23', '2020-04-09 16:01:23'),
(30, 'Station title', 'body of notification', 'nghr5rp3fodgtolhujuk.png', '2020-04-12 08:11:45', '2020-04-12 08:11:45'),
(31, 'Station title', 'محتوي التنبيه', 'jfllgeese8rcvzwmwcxd.jpg', '2020-04-12 09:33:44', '2020-04-12 09:33:44'),
(32, 'test', 'test', 'qtanf7wvpu3twivexxlk.jpg', '2020-04-12 09:41:37', '2020-04-12 09:41:37'),
(33, 'test', 'test', 'rulwoahqi97pevyn5qb5.jpg', '2020-04-12 09:42:00', '2020-04-12 09:42:00'),
(34, 'test', 'test', 'fzpxjvzfhhjiwzafoaiu.jpg', '2020-04-12 09:43:55', '2020-04-12 09:43:55'),
(35, 'new test', 'test', 'rwanlczldh5nhf4bdynt.jpg', '2020-04-12 09:44:14', '2020-04-12 09:44:14'),
(36, 'test notification', 'body of notification', 'ew9aeb3f7gqeutpi0f7r.jpg', '2020-04-12 12:58:35', '2020-04-12 12:58:35'),
(37, 'عنوان التنبيه', 'المحتوي', 'tmfj7vkyj7ukje6ltxx8.jpg', '2020-04-12 13:32:38', '2020-04-12 13:32:38'),
(38, 'عنوان التنبيه', 'محتوي التنبيه', 'oos4vgryeuxyb7cuhlpw.jpg', '2020-04-12 13:34:26', '2020-04-12 13:34:26'),
(39, 'تجربة تنبيه الخميس', 'تجربة إرسال تنبيه لكل التليفونات لتطبيق جمعية الدرة النسائية', NULL, '2020-04-15 09:20:42', '2020-04-15 09:20:42'),
(40, 'Directions Service (Complex)', 'تجربة إرسال تنبيه لكل التليفونات لتطبيق جمعية الدرة النسائية', 'j7thnwktslalm1etras3.png', '2020-04-15 10:20:21', '2020-04-15 10:20:21'),
(41, 'Basic Project Notifications', 'Basic Project Notifications details to see text aligned at left side', 'yd87gqafq2sii8hjxcia.png', '2020-04-15 10:23:02', '2020-04-15 10:23:02'),
(42, 'Mahmoud Alam', 'Mahmoud Alam Notifications', 'objdnasw1n3unwb39bsb.jpg', '2020-04-15 10:27:35', '2020-04-15 10:27:35'),
(43, 'التطبيق الأساسي', 'تجربة إرسال تنبيهات للتطبيق الأساسي', 'wjgx6vyyhktvstoez780.jpg', '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(44, 'Directions Service (Complex)', 'تنبيه تجربة من لوحة التحكم الخاصة بالتطبيق', NULL, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(45, 'نظام لتقييم الموظفين أون لاين', 'Basic Project Notifications details to see text aligned at left side', NULL, '2020-04-15 10:29:54', '2020-04-15 10:29:54'),
(46, 'Directions Service (Complex)', 'Basic Project Notifications details to see text aligned at left side', 'udkqbtzkq3dvwemgyn84.jpg', '2020-04-15 10:30:15', '2020-04-15 10:30:15'),
(47, 'Directions Service (Complex)', 'Basic Project Notifications details to see text aligned at left side', NULL, '2020-04-15 10:32:31', '2020-04-15 10:32:31'),
(48, 'Directions Service (Complex)', 'Basic Project Notifications details to see text aligned at left side', 'dx4zp9na4qf4bkbtch25.jpg', '2020-04-15 10:33:07', '2020-04-15 10:33:07'),
(49, 'موقع للتوظيف', 'test send notification with image from dashboard', 'amr5cp2zs2fthvlvxq6d.png', '2020-04-20 18:24:03', '2020-04-20 18:24:03'),
(50, 'موقع للتوظيف', 'test send notification with image from dashboard', 'oaizrxn2aokeudlwmnmy.png', '2020-04-20 18:25:24', '2020-04-20 18:25:24'),
(52, 'تجربة تنبيه الخميس', 'تجربة تنبيه تطبيق الإعلانات من خلال لوحة التحكم', NULL, '2020-06-25 09:43:48', '2020-06-25 09:43:48'),
(53, 'تجربة تنبيه الخميس', 'تنبيه تجربة من لوحة التحكم الخاصة بالتطبيق', 'gehdgvm4gtllyr3gqhsq.png', '2020-06-25 09:44:13', '2020-06-25 09:44:13'),
(54, 'test', 'test', 'yieqs7c6ftrgpaavuzm5.png', '2020-07-19 09:16:53', '2020-07-19 09:16:53'),
(55, 'lkk', 'kkjj', NULL, '2020-07-21 10:22:07', '2020-07-21 10:22:07'),
(56, 'lkklk', 'lklklk', NULL, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(57, 'title', '123', 'shoqulfcnydgeytft9aj.jpg', '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(58, 'test', 'body test', 'j2bfpvmjgwqgwqjxk8qy.jpg', '2021-02-10 09:07:59', '2021-02-10 09:07:59'),
(59, 'sdada', 'asdadad', 'jaagz5vy2dmbqxqxsmmu.jpg', '2021-02-10 09:10:27', '2021-02-10 09:10:27'),
(60, 'sdf', 'sadf', 'dfd1pe6yucvdqynm4ocy.jpg', '2021-02-10 09:12:12', '2021-02-10 09:12:12'),
(61, 'تجربة تنبيه', 'تجربة تنبيه', NULL, '2021-04-18 16:11:28', '2021-04-18 16:11:28'),
(62, 'صباح الخير', 'صباح الخير', NULL, '2021-04-21 12:38:46', '2021-04-21 12:38:46'),
(63, 'تجربة إرسال تنبيه من لوحة التحكم', 'السلام عليكم ورحمة الله وبركاته', NULL, '2021-06-23 15:35:57', '2021-06-23 15:35:57'),
(64, 'تجربة إرسال تنبيه من لوحة التحكم', 'السلام عليكم ورحمة الله وبركاته', 'wfywyv8djlfoc7lfptuk.png', '2021-06-23 15:36:24', '2021-06-23 15:36:24'),
(65, 'تجربة تنبيه', 'تجربة تنبيه', 'ufo3cwk3jkmj1c8pyfk6.png', '2021-07-13 11:03:50', '2021-07-13 11:03:50'),
(66, 'تجربة', 'تجربة', NULL, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(67, 'تم انتهاء المزاد', 'تم انتهاء المزاد الخاص بك - مزايده على فندق', NULL, '2021-12-12 09:49:19', '2021-12-12 09:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total` double UNSIGNED NOT NULL,
  `status` enum('paid','not_paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'paid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `status`, `created_at`, `updated_at`) VALUES
(2, 103, 5450, 'paid', '2022-01-22 11:16:13', '2022-01-22 11:16:13'),
(3, 103, 2500, 'paid', '2022-02-01 02:55:45', '2022-02-01 02:55:45');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_date` date NOT NULL,
  `status` enum('pinding','rejected','done') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pinding',
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_date`, `status`, `plan_id`, `user_id`, `category_id`, `sub_category_id`, `order_id`, `address_id`, `created_at`, `updated_at`) VALUES
(2, '2022-01-20', 'rejected', 31, 103, 11, 17, 2, 16, '2022-01-18 14:38:47', '2022-02-01 04:41:24'),
(3, '2022-01-20', 'rejected', 28, 103, 10, NULL, 2, 16, '2022-01-18 14:40:19', '2022-01-22 11:16:13'),
(4, '2022-01-23', 'pinding', 29, 103, 11, 17, 2, 16, '2022-01-22 10:46:51', '2022-01-22 11:16:13'),
(5, '2022-01-23', 'pinding', 29, 103, 11, 17, 2, 16, '2022-01-22 10:53:54', '2022-01-22 11:16:13'),
(6, '2022-01-23', 'pinding', 29, 103, 11, 17, 2, 16, '2022-01-22 10:58:26', '2022-01-22 11:16:13'),
(7, '2022-01-23', 'done', 30, 103, 11, 17, 3, 16, '2022-01-22 11:25:18', '2022-02-01 04:38:25'),
(8, '2022-02-06', 'pinding', 30, 104, 11, 17, NULL, 16, '2022-02-01 02:28:51', '2022-02-01 02:28:51'),
(9, '2022-02-06', 'pinding', 30, 104, 11, 17, NULL, 16, '2022-02-01 04:26:48', '2022-02-01 04:26:48');

-- --------------------------------------------------------

--
-- Table structure for table `order_times`
--

CREATE TABLE `order_times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_id` bigint(20) UNSIGNED NOT NULL,
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_times`
--

INSERT INTO `order_times` (`id`, `time_id`, `order_details_id`, `created_at`, `updated_at`) VALUES
(1, 2, 8, '2022-02-01 02:28:51', '2022-02-01 02:28:51'),
(2, 2, 9, '2022-02-01 04:26:48', '2022-02-01 04:26:48');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `other_user_id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `ad_product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `status` enum('show','hide') NOT NULL DEFAULT 'show',
  `permission_ar` varchar(255) NOT NULL,
  `permission_en` varchar(255) NOT NULL,
  `order_by_it` bigint(20) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `status`, `permission_ar`, `permission_en`, `order_by_it`, `created_at`, `updated_at`) VALUES
(1, 'show', 'المستخدمين', 'Users', 1, '2020-02-19 14:04:33', '2020-02-19 14:04:33'),
(2, 'show', 'صفحات التطبيق', 'App Pages', 11, '2020-02-19 14:05:13', '2020-02-19 14:05:13'),
(3, 'show', 'الإعلانات', 'Ads', 5, '2020-02-19 14:06:10', '2020-02-19 14:06:10'),
(4, 'show', 'الأقسام', 'Categories', 3, '2020-02-19 14:06:44', '2020-02-19 14:06:44'),
(5, 'show', 'إتصل بنا', 'Contact Us', 9, '2020-02-19 14:07:10', '2020-02-19 14:07:10'),
(6, 'show', 'التبيهات', 'Notifications', 10, '2020-02-19 14:07:55', '2020-02-19 14:07:55'),
(7, 'show', 'الإعدادات', 'Settings', 12, '2020-02-19 14:08:34', '2020-02-19 14:08:34'),
(8, 'show', 'وسوم البحث', 'Meta Tags', 0, '2020-02-19 14:09:06', '2020-02-19 14:09:06'),
(9, 'show', 'المديرين', 'Managers', 13, '2020-02-19 14:09:59', '2020-02-19 14:09:59'),
(10, 'show', 'تنزيل النسخة الإحتياطية', 'Database Backup', 14, '2020-02-19 14:10:21', '2020-02-19 14:10:21'),
(13, 'show', 'اعلانات المستخدمين', 'user ads', 2, '2020-07-08 22:00:00', '2020-07-08 22:00:00'),
(14, 'show', 'المنتدى', 'Forum', 6, '2020-07-08 22:00:00', '2020-07-08 22:00:00'),
(16, 'show', 'أوقات المزايدة', 'mazad times', 7, '2020-07-08 22:00:00', '2020-07-08 22:00:00'),
(17, 'hide', 'المبيعات', 'payments', 7, '2020-07-08 22:00:00', '2020-07-08 22:00:00'),
(18, 'show', 'الطلبات', 'orders', 8, '2020-07-08 22:00:00', '2020-07-08 22:00:00'),
(19, 'show', 'المحافظات', 'Provinces', 4, '2020-07-08 22:00:00', '2020-07-08 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `cat_id` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `work_hours` int(11) NOT NULL DEFAULT 1,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  `status` enum('show','hide') NOT NULL DEFAULT 'show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `title_ar`, `title_en`, `cat_id`, `price`, `work_hours`, `deleted`, `status`, `created_at`, `updated_at`) VALUES
(28, 'باقه الجولد', 'gold package', '10', 100.00, 1, '0', 'show', '2022-01-08 15:32:36', '2022-01-08 15:32:36'),
(29, 'باقه الجيب الذهبيه7', 'jeep package Gold7', '11', 1700.00, 1, '0', 'show', '2022-01-08 15:38:09', '2022-01-08 15:47:31'),
(30, 'باقة بلاتونيوم', 'platenume package', '11', 2500.00, 3, '0', 'show', '2022-01-08 15:58:27', '2022-02-01 04:26:13'),
(31, 'باقه الساعتين', 'two houres package', '11', 250.00, 2, '0', 'show', '2022-01-18 09:17:01', '2022-01-18 09:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `plan_details`
--

CREATE TABLE `plan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_details`
--

INSERT INTO `plan_details` (`id`, `title_ar`, `title_en`, `plan_id`, `status`, `created_at`, `updated_at`) VALUES
(33, 'باقة تفصيل 1ar', 'باقة تفصيل 1en', 28, 'show', '2022-01-08 15:32:36', '2022-01-08 15:36:07'),
(35, 'تفاصيل واحد', 'one package', 29, 'show', '2022-01-08 15:38:09', '2022-01-08 15:38:09'),
(36, 'تفاصيل ثاني', 'second package', 29, 'show', '2022-01-08 15:38:09', '2022-01-08 15:38:09'),
(37, 'سجاد1', 'carbenter1', 29, 'hide', '2022-01-08 15:45:51', '2022-01-08 15:46:48'),
(38, 'شسيسشي', 'سشيسشي', 30, 'show', '2022-01-08 15:58:27', '2022-01-08 15:58:27'),
(39, 'شيسشي', 'شسيسشيسشي', 30, 'show', '2022-01-08 15:58:27', '2022-01-08 15:58:27'),
(40, 'سيبيببي', 'يبسيبلسيسي', 30, 'show', '2022-01-08 15:58:27', '2022-01-08 15:58:27'),
(41, 'بلالبالبلب', 'البالبالبا', 30, 'show', '2022-01-08 15:58:27', '2022-01-08 15:58:27'),
(42, 'اللالاتلات', 'لاتلاتلاتلا', 30, 'show', '2022-01-08 15:58:27', '2022-01-08 15:58:27'),
(43, 'لاتلاتلاتتت', 'تتتتتت', 30, 'show', '2022-01-08 15:58:27', '2022-01-08 15:58:27'),
(44, 'نتنننتن', 'تنتنتنتنتن', 30, 'show', '2022-01-08 15:58:27', '2022-01-08 15:58:27'),
(45, 'sadadsad', 'asdsadsadsadd', 31, 'show', '2022-01-18 09:17:01', '2022-01-18 09:17:01'),
(46, 'retrtretret', 'ertretertretret', 31, 'show', '2022-01-18 09:17:01', '2022-01-18 09:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `sub_category_two_id` int(11) DEFAULT NULL,
  `sub_category_three_id` int(11) DEFAULT NULL,
  `sub_category_four_id` int(11) DEFAULT NULL,
  `sub_category_five_id` bigint(20) UNSIGNED DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `views` int(11) NOT NULL DEFAULT 0,
  `offer` tinyint(1) NOT NULL DEFAULT 0,
  `choose_it` int(11) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  `deleted` int(20) NOT NULL DEFAULT 0,
  `publish` enum('Y','N') NOT NULL DEFAULT 'N',
  `publication_date` timestamp NULL DEFAULT NULL,
  `expiry_date` timestamp NULL DEFAULT NULL,
  `expire_pin_date` timestamp NULL DEFAULT NULL,
  `feature` int(11) NOT NULL DEFAULT 0,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `share_location` int(11) NOT NULL DEFAULT 0,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `pin` int(11) NOT NULL DEFAULT 0,
  `re_post` enum('0','1') NOT NULL DEFAULT '0',
  `re_post_date` timestamp NULL DEFAULT NULL,
  `is_special` enum('0','1') NOT NULL DEFAULT '0',
  `day_count_id` bigint(11) UNSIGNED NOT NULL DEFAULT 0,
  `min_price` double(8,2) NOT NULL DEFAULT 0.00,
  `expire_special_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `show_whatsapp` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_features`
--

CREATE TABLE `product_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `image` varchar(300) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_mazads`
--

CREATE TABLE `product_mazads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('new','winner') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_views`
--

CREATE TABLE `product_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `rate` int(11) NOT NULL,
  `admin_approval` tinyint(1) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `user_id`, `text`, `rate`, `admin_approval`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 17, 'test', 3, 1, 1, '2020-03-22 06:19:48', '2020-03-22 06:19:48'),
(2, 21, 'test', 4, 1, 1, '2020-04-07 20:37:47', '2020-04-15 17:45:26'),
(3, 25, 'اهلا وسهلا', 5, 1, 1, '2020-04-12 20:03:13', '2020-04-15 17:45:01'),
(4, 26, 'Hhh', 5, 1, 1, '2020-04-13 13:44:29', '2020-04-15 17:45:24'),
(5, 27, 'تجربة إرسال تقييم من البوستمان', 4, 1, 1, '2020-04-15 17:10:00', '2020-04-15 17:12:48'),
(6, 27, 'this product is very sweet and good packing', 5, 1, 2, '2020-04-15 17:44:48', '2020-04-15 17:44:58'),
(7, 27, 'this product is very sweet and good packing', 5, 1, 3, '2020-04-15 17:46:26', '2020-04-15 17:46:35'),
(8, 27, 'this product is very sweet and good packing', 5, 1, 5, '2020-04-15 17:50:07', '2020-04-15 17:50:52'),
(9, 27, 'this product is very sweet and good packing', 5, 1, 4, '2020-04-15 17:50:32', '2020-04-15 17:50:53'),
(10, 27, 'this product is very sweet and good packing', 5, 1, 6, '2020-04-15 17:51:53', '2020-04-15 17:52:16'),
(11, 27, 'test', 3, 0, 10, '2020-04-21 12:31:24', '2020-04-21 12:31:24'),
(12, 27, 'test', 4, 0, 100, '2020-04-21 12:31:38', '2020-04-21 12:31:38'),
(13, 27, 'test', 4, 0, 111, '2020-04-21 12:38:58', '2020-04-21 12:38:58'),
(14, 27, 'على فكره في صوره صباحيه رسائل اسلامية رسائل نكت', 4, 0, 112, '2020-04-21 12:40:55', '2020-04-21 12:40:55'),
(15, 27, 'test', 4, 0, 141, '2020-04-21 12:43:28', '2020-04-21 12:43:28'),
(16, 27, 'تحميل برنامج ايه يا عم الشيخ الحويني في مجال المبيعات اونلاين', 5, 0, 156, '2020-04-21 13:00:52', '2020-04-21 13:00:52'),
(17, 27, 'على فكره في صوره صباحيه رسائل اسلامية رسائل نكت', 4, 0, 166, '2020-04-21 13:07:01', '2020-04-21 13:07:01'),
(18, 22, 'test', 3, 0, 1, '2020-04-29 17:43:38', '2020-04-29 17:43:38');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `termsandconditions_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `termsandconditions_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `aboutapp_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `aboutapp_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `app_name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instegram` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snap_chat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_loop_free_balance` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `free_loop_period` bigint(20) NOT NULL,
  `free_loop_balance` double(8,2) NOT NULL,
  `free_loop_date` timestamp NULL DEFAULT NULL,
  `post_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_balance` double(8,2) NOT NULL DEFAULT 0.00,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_ads_count` int(11) NOT NULL,
  `ad_period` int(11) NOT NULL,
  `offer_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_image_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_buy` tinyint(1) NOT NULL DEFAULT 0,
  `cars_service_num` int(11) NOT NULL DEFAULT 8
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `app_phone`, `termsandconditions_en`, `termsandconditions_ar`, `aboutapp_en`, `aboutapp_ar`, `counter_image`, `created_at`, `updated_at`, `app_name_en`, `app_name_ar`, `logo`, `email`, `phone`, `address_en`, `address_ar`, `facebook`, `youtube`, `twitter`, `instegram`, `map_url`, `latitude`, `longitude`, `snap_chat`, `is_loop_free_balance`, `free_loop_period`, `free_loop_balance`, `free_loop_date`, `post_address`, `free_balance`, `fax`, `free_ads_count`, `ad_period`, `offer_image`, `offer_image_en`, `show_buy`, `cars_service_num`) VALUES
(1, '0096566848259', '<p>hello terms test</p>', '<p><br />\r\n<br />\r\nمرحباً بك فى ( وينر) ، هذه هي سياسة الإستخدام والشروط والأحكام الخاصة بالتطبيق وإستخدامك له وكل متعلقاته و خدماته ، بموافقتك على (الشروط والأحكام) بالإضافة إلى المعلومات ذات العلاقة المدرجة في هذه الإتفاقية وبإستخدامك التطبيق ، فإنك توضح لنا أنك ملزم بهذه الشروط الخاصة بــ ( وينر ).<br />\r\n<br />\r\nإن استخدامك لتطبيق ( وينر ) يعني موافقتك على تفعيل إتفاقية المستخدم، وان كنت غير موافق على إتفاقية المستخدم، فمن فضلك لا تدخل أو تسجل أو تستخدم هذا التطبيق .<br />\r\n<br />\r\nقبل أن تكون أو تستمر كعضو معنا , لابد أن تقرأ وتوافق على إتفاقية المستخدم وعلى سياسة الخصوصية الخاصة بـ ( وينر ) والدخول إلى أى معلومات متصلة أخرى بخصوص إتفاقية المستخدم مثل أى معلومات مرتبطة بسياسة الإستخدام المطبقة على المستخدم، كل هذه المعلومات وسياسة الخصوصية يتم تطبيقها بموجب هذا القانون الموجود فى إتفاقية المستخدم .<br />\r\n<br />\r\n<br />\r\n<br />\r\nنود في ( وينر ) أن نتأكد من قدرة كل الأعضاء على تكوين عقود إلزام قانونية يحتفظ بحقه فى وضع حد أو إستبعاد عضوية أى شخص يخالف السياسة ، من جهة أخرى، ففى حالة الدخول إلى التطبيق ككيان تجاري أو شخصية إعتبارية, فإنك تؤكد أنك يمكنك إخضاع هذا الكيان إلى إتفاقية المستخدم وأنك والكيان التجاري خاضعين لكافة القوانين المرتبطة بالتجارة عبر الإنترنت.<br />\r\n<br />\r\n<br />\r\n<br />\r\nعند التسجيل كعضو فى التطبيق، يجب عليك تقديم معلومات معينة وتسجيل إسم المستخدم والرقم السرى الخاص بك .<br />\r\n<br />\r\nعندما تصبح عضو بالتطبيق فإنك توافق على الآتي:<br />\r\n<br />\r\nأ- مسؤوليتك في الحفاظ على خصوصية وتقييد إستخدام حسابك الخاص والرقم السرى الخاص بك.<br />\r\n<br />\r\nب- إقرارك بمسؤليتك الكاملة تجاه الأنشطة التي تحدث من خلال حسابك الخاص ورقمك السري، وأنك ستقوم بإبلاغ ( وينر ) عن أي إستخدام غير مشروع لرقمك السري أو حسابك الخاص أو أي خرق أمني.<br />\r\n<br />\r\nج- لن يكون تطبيق ( وينر ) مسئولاً عن أى خسارة مباشرة أو غير مباشرة فى فساد البضاعة من ناحيتك .<br />\r\n<br />\r\nد- لا يمكنك إستخدام الحساب الخاص بشخص آخر بدون إظهار تصريح القبول لحامل الحساب.<br />\r\n<br />\r\nهـ- أن عضويتك تعنى موافقتك على تعويض ( وينر ) عن أى إستخدام غير مشروع لحسابك الخاص عن طريقك أو عن طريق أي شخص آخر يستطيع الوصول للتطبيق والخدمات من خلال استخدام إسم المستخدم الخاص بك ورقمك السري سواء كنت تعلم أو لا تعلم بهذا الإستخدام.<br />\r\n<br />\r\nو- أن تمنحنا معلومات صحيحة ودقيقة وحالية وكاملة عنك كما هو مطلوب فى إستمارة التسجيل (بيانات التسجيل) الخاصة بـ ( وينر ) .<br />\r\n<br />\r\nز- أن لا تضع كلمة &quot; ( وينر ) &quot; في إسم المستخدم الخاص بك.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<p>hello ther ^_^</p>', '<p><span style=\"font-size:18px\">تطبيق فستان أول تطبيق كويتي لعرض وبيع الملابس الجديدة والمستعملة حيث يوفر لك عرض منتجاتك بكل سهولة والتصفح المعروضات والتواصل مع المعلن بضغطة زر</span></p>', 'ardumevbg8l4xsyjpn7q.jpg', '2020-02-05 09:15:45', '2022-01-31 23:57:34', NULL, 'Wash Posh', 'po7dsng6l9vac8dzxcns.png', 'info@fastan-store.com', '0096566848259', 'Kuwait', 'كويت', 'facebook.com', 'youtube.com', 'twitter.com', 'Fastan_store.com', 'https://www.google.com/maps/@30.0430715,31.4056989,16z', '30.0430715', '31.4056989', 'Fastanstore20.com', 'n', 20, 50.00, '2021-03-09 04:10:00', '2222222', 50.00, '1111111', 3, 365, 'shv8x6wplvhzma3ylyic.png', 'opp8hr7gqocatteasg4o.png', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `category_id` bigint(11) UNSIGNED NOT NULL,
  `sort` int(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `title_en`, `title_ar`, `image`, `deleted`, `category_id`, `sort`, `created_at`, `updated_at`) VALUES
(17, '2 كرسي', '2 كرسي', 'oxdbipo64fkfeujh7h7u.jpg', 0, 11, NULL, '2022-01-08 16:28:17', '2022-01-08 16:28:17'),
(18, '5 كرسي', '5 كرسي', 'crfxhfdg697kvncburvo.jpg', 0, 11, NULL, '2022-01-08 16:28:39', '2022-01-08 16:28:39'),
(19, '7 كرسي', '7 كرسي', 'w410dtkans9n7zo4ffwk.jpg', 0, 11, NULL, '2022-01-08 16:29:03', '2022-01-08 16:29:03'),
(20, 'fsfsdf', 'szfsd', 'mtktdt6hx7mlgqw3wa0j.png', 1, 10, NULL, '2022-02-01 03:38:59', '2022-02-01 03:39:23');

-- --------------------------------------------------------

--
-- Table structure for table `sub_five_categories`
--

CREATE TABLE `sub_five_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sort` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_four_categories`
--

CREATE TABLE `sub_four_categories` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `sub_category_id` bigint(11) UNSIGNED NOT NULL,
  `sort` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_three_categories`
--

CREATE TABLE `sub_three_categories` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `sub_category_id` bigint(11) UNSIGNED NOT NULL,
  `sort` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_two_categories`
--

CREATE TABLE `sub_two_categories` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `sub_category_id` bigint(11) UNSIGNED NOT NULL,
  `sort` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `times_of_works`
--

CREATE TABLE `times_of_works` (
  `id` int(10) UNSIGNED NOT NULL,
  `day` int(11) NOT NULL,
  `holiday` tinyint(1) NOT NULL,
  `from` time DEFAULT NULL,
  `to` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `times_of_works`
--

INSERT INTO `times_of_works` (`id`, `day`, `holiday`, `from`, `to`, `created_at`, `updated_at`) VALUES
(1, 0, 0, '10:00:00', '22:00:00', '2022-02-01 01:46:25', '2022-02-01 01:46:25'),
(2, 1, 1, NULL, NULL, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(3, 2, 1, NULL, NULL, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(4, 3, 0, '09:00:00', '21:00:00', '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(5, 4, 1, NULL, NULL, '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(6, 5, 0, '08:00:00', '20:00:00', '2022-02-01 01:46:26', '2022-02-01 01:46:26'),
(7, 6, 1, NULL, NULL, '2022-02-01 01:46:26', '2022-02-01 01:46:26');

-- --------------------------------------------------------

--
-- Table structure for table `type_models`
--

CREATE TABLE `type_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` bigint(20) DEFAULT NULL,
  `deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `marka_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_models`
--

INSERT INTO `type_models` (`id`, `image`, `year`, `deleted`, `marka_type_id`, `created_at`, `updated_at`) VALUES
(1, '', 2018, '0', 3, '2021-01-12 12:48:24', '2021-01-29 11:44:51'),
(2, '', 2001, '0', 2, '2021-01-12 12:48:27', NULL),
(4, NULL, 2013, '0', 3, '2021-01-29 11:42:21', '2021-01-29 11:42:21'),
(5, NULL, 2015, '0', 3, '2021-01-29 12:00:55', '2021-01-29 12:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `watsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `my_wallet` double(8,2) NOT NULL DEFAULT 0.00,
  `free_balance` double(8,2) NOT NULL DEFAULT 0.00,
  `payed_balance` double(8,2) NOT NULL DEFAULT 0.00,
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `seen` tinyint(1) DEFAULT 0,
  `free_ads_count` int(11) NOT NULL,
  `paid_ads_count` int(11) NOT NULL DEFAULT 0,
  `main_address_id` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `watsapp`, `email`, `phone_verified_at`, `password`, `image`, `my_wallet`, `free_balance`, `payed_balance`, `fcm_token`, `verified`, `remember_token`, `created_at`, `updated_at`, `active`, `seen`, `free_ads_count`, `paid_ads_count`, `main_address_id`) VALUES
(103, 'test user', '01201636129', '', 'test@gmail.com', NULL, '$2y$10$MhZXXgZipzVXZn/wiH7lW.eR/aJb1PyjMBDqLwFdldeUMkofB6iBG', 'yuwnf56m7ib1xawmbuzc.jpg', 279.00, 179.00, 100.00, 'test', 1, NULL, '2021-01-26 09:44:53', '2021-10-16 11:29:43', 1, 0, 3, 150, NULL),
(104, 'mohamed nasser', '+201111651415', NULL, 'nasser@gmail.com', NULL, '$2y$10$MhZXXgZipzVXZn/wiH7lW.eR/aJb1PyjMBDqLwFdldeUMkofB6iBG', NULL, 105.00, 105.00, 0.00, 'test', 1, NULL, '2021-02-07 03:39:21', '2022-01-18 12:13:57', 1, 0, 0, 0, 15),
(105, 'mohamed nasser2', '01111651455', NULL, 'nasser2@gmail.com', NULL, '$2y$10$C2VjvUQiIu4K27RJtX7iZOvIHd.XTm6abFgugXXwvbj6i54BVZSGG', NULL, 50.00, 50.00, 0.00, '11111', 1, NULL, '2021-02-10 08:55:12', '2021-02-10 08:55:12', 1, 0, 0, 0, NULL),
(106, 'ahmed ali', '+96501116344148', NULL, 'nasser@gmai1l.com', NULL, '$2y$10$X0f8P0NIUlJBjT5g8RJOV.e0kk8IH7NRN7ox.YmHxsp25EWokpQz6', 'z8prntlqxxklczmplbrv.png', 1468.50, 1468.50, 0.00, 'd9miWnKoSdy4SvX7Vsu51J:APA91bGUPyZXJirwgz3ClGujOsM3z4tiWLxVUBlIv_L_SwVPV_G2ySLeKIc7p_38CbXLnfVQ598jf3xd0ih3E-kiPEd3xCIg-hpwQGLCrt-tvsya8y5Ja0NqB-8zG6GPnRk1j6bt6I2V', 1, NULL, '2021-03-20 12:35:30', '2021-07-11 06:39:54', 1, 0, 0, 0, NULL),
(107, 'mostafa', '+96501115353169', NULL, 'sasasa@sdasdsa.com', NULL, '$2y$10$8cB2.IO.l4rx3thMSAtws.jvX5YxzAdPgGdufZsmwukKzBT1gS/jK', 'rgjuphpl68xptooshaix.png', 957.50, 957.50, 0.00, 'null', 1, NULL, '2021-04-12 11:48:21', '2021-05-19 10:24:36', 1, 0, 1000, 0, NULL),
(108, 'Nouh', '9687374', NULL, 'ttt@gmail.com', NULL, '$2y$10$x7ZGxJaUeHec4MOSkTvzx.NZJSbaMwnw0cwj16LgUTNF14zCjvpfq', NULL, 50.00, 50.00, 0.00, '11111', 1, NULL, '2021-04-18 14:31:58', '2021-04-18 14:31:58', 1, 0, 0, 0, NULL),
(109, 'mahmoudalam1973', '+96560099892', NULL, 'mahmoud.alam1973@gmail.com', NULL, '$2y$10$11yLHNA9sRN6gziFasD0hOLeUqpoFdIgCqloZHkSdkeDYuyp2qrQu', 'z8prntlqxxklczmplbrv.png', 114.50, 114.50, 0.00, 'test', 1, NULL, '2021-06-10 14:13:29', '2021-09-06 14:26:47', 1, 1, 0, 0, NULL),
(110, 'nooh', '+96555730551', NULL, 'dydyf6f@fufuf7.com', NULL, '$2y$10$LSda27Ne7A596xMLB5C04uKPedy.jd8Dxm2ZV4rS5FbMXA8I2ivq6', NULL, 491.00, 491.00, 0.00, 'test', 1, NULL, '2021-07-13 10:22:32', '2021-07-13 14:33:44', 1, 0, 0, 0, NULL),
(111, 'test', '+965123456789', NULL, 'kfdsfdslkj@gkjfdhgkj.com', NULL, '$2y$10$ePGb9Xw/wC0UKPBGopgx8.x7hhJc7UPYHDToziWN/5nPPsvzRwrmi', NULL, 794.00, 794.00, 0.00, 'ct--pITERrCGyQoRsx6o2w:APA91bEg92T7tnQpSlK-yx_XwFkWDiIMrcaijmD0eZ31pjGkOzcl9v9GLnppMokCcvd4kVCnc7ftONa9CCJthaIt82NyHu5ag0xi-uBFR0XNaBmPFIoadgXntOCctxPZOgDZRoIvJV3V', 1, NULL, '2021-08-01 12:34:35', '2021-08-04 14:43:20', 1, 1, 3, 0, NULL),
(112, 'Adam', '+96598758330', NULL, 'adam@gmail.com', NULL, '$2y$10$MhZXXgZipzVXZn/wiH7lW.eR/aJb1PyjMBDqLwFdldeUMkofB6iBG', NULL, 600.00, 100.00, 500.00, 'test', 1, NULL, '2021-08-09 09:26:56', '2021-09-06 14:30:53', 1, 0, 3, 100, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` int(11) NOT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `gaddah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `building` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `piece` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `main_address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `latitude`, `longitude`, `title`, `address_type`, `area_id`, `gaddah`, `building`, `floor`, `apartment_number`, `street`, `extra_details`, `user_id`, `phone`, `piece`, `created_at`, `updated_at`, `deleted`, `main_address_id`) VALUES
(15, '31.33322', '29.9999', 'title', 1, 3, 'gadddah', 'kksk', '454 kk', '44 m', 'sksk', 'extra details', 104, '+2058589656', 'dkdkd', '2022-01-18 12:09:15', '2022-01-18 12:14:38', 1, NULL),
(16, '31.33322', '29.9999', 'title', 1, 3, 'gadddah', 'kksk', '454 kk', '44 m', 'sksk', 'extra details', 104, '+2058589656', 'dkdkd', '2022-01-18 12:14:52', '2022-01-18 12:14:52', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visitor_id` int(20) DEFAULT NULL,
  `notification_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `visitor_id`, `notification_id`, `created_at`, `updated_at`) VALUES
(1, 23, NULL, 25, '2020-04-05 15:46:01', '2020-04-05 15:46:01'),
(2, 23, NULL, 26, '2020-04-05 15:52:55', '2020-04-05 15:52:55'),
(3, 24, NULL, 27, '2020-04-09 15:56:16', '2020-04-09 15:56:16'),
(4, 24, NULL, 31, '2020-04-12 09:33:44', '2020-04-12 09:33:44'),
(5, 24, NULL, 32, '2020-04-12 09:41:37', '2020-04-12 09:41:37'),
(6, 1, NULL, 34, '2020-04-12 09:43:55', '2020-04-12 09:43:55'),
(7, 2, NULL, 34, '2020-04-12 09:43:55', '2020-04-12 09:43:55'),
(8, 3, NULL, 34, '2020-04-12 09:43:55', '2020-04-12 09:43:55'),
(9, 4, NULL, 34, '2020-04-12 09:43:55', '2020-04-12 09:43:55'),
(10, 5, NULL, 34, '2020-04-12 09:43:55', '2020-04-12 09:43:55'),
(11, 6, NULL, 34, '2020-04-12 09:43:55', '2020-04-12 09:43:55'),
(12, 7, NULL, 34, '2020-04-12 09:43:55', '2020-04-12 09:43:55'),
(13, 8, NULL, 34, '2020-04-12 09:43:55', '2020-04-12 09:43:55'),
(14, 9, NULL, 34, '2020-04-12 09:43:55', '2020-04-12 09:43:55'),
(15, 10, NULL, 34, '2020-04-12 09:43:55', '2020-04-12 09:43:55'),
(16, 11, NULL, 34, '2020-04-12 09:43:55', '2020-04-12 09:43:55'),
(17, 16, NULL, 34, '2020-04-12 09:43:55', '2020-04-12 09:43:55'),
(18, 17, NULL, 34, '2020-04-12 09:43:55', '2020-04-12 09:43:55'),
(19, 21, NULL, 34, '2020-04-12 09:43:55', '2020-04-12 09:43:55'),
(20, 22, NULL, 34, '2020-04-12 09:43:56', '2020-04-12 09:43:56'),
(21, 23, NULL, 34, '2020-04-12 09:43:56', '2020-04-12 09:43:56'),
(22, 24, NULL, 34, '2020-04-12 09:43:56', '2020-04-12 09:43:56'),
(23, 1, NULL, 35, '2020-04-12 09:44:14', '2020-04-12 09:44:14'),
(24, 2, NULL, 35, '2020-04-12 09:44:14', '2020-04-12 09:44:14'),
(25, 3, NULL, 35, '2020-04-12 09:44:14', '2020-04-12 09:44:14'),
(26, 4, NULL, 35, '2020-04-12 09:44:14', '2020-04-12 09:44:14'),
(27, 5, NULL, 35, '2020-04-12 09:44:14', '2020-04-12 09:44:14'),
(28, 6, NULL, 35, '2020-04-12 09:44:14', '2020-04-12 09:44:14'),
(29, 7, NULL, 35, '2020-04-12 09:44:15', '2020-04-12 09:44:15'),
(30, 8, NULL, 35, '2020-04-12 09:44:15', '2020-04-12 09:44:15'),
(31, 9, NULL, 35, '2020-04-12 09:44:15', '2020-04-12 09:44:15'),
(32, 10, NULL, 35, '2020-04-12 09:44:15', '2020-04-12 09:44:15'),
(33, 11, NULL, 35, '2020-04-12 09:44:15', '2020-04-12 09:44:15'),
(34, 16, NULL, 35, '2020-04-12 09:44:15', '2020-04-12 09:44:15'),
(35, 17, NULL, 35, '2020-04-12 09:44:15', '2020-04-12 09:44:15'),
(36, 21, NULL, 35, '2020-04-12 09:44:15', '2020-04-12 09:44:15'),
(37, 22, NULL, 35, '2020-04-12 09:44:15', '2020-04-12 09:44:15'),
(38, 23, NULL, 35, '2020-04-12 09:44:15', '2020-04-12 09:44:15'),
(39, 24, NULL, 35, '2020-04-12 09:44:15', '2020-04-12 09:44:15'),
(40, 24, NULL, 36, '2020-04-12 12:58:35', '2020-04-12 12:58:35'),
(41, 24, NULL, 37, '2020-04-12 13:32:38', '2020-04-12 13:32:38'),
(42, 24, NULL, 38, '2020-04-12 13:34:26', '2020-04-12 13:34:26'),
(43, 27, NULL, 39, '2020-04-15 09:20:42', '2020-04-15 09:20:42'),
(44, 27, NULL, 40, '2020-04-15 10:20:21', '2020-04-15 10:20:21'),
(45, 27, NULL, 41, '2020-04-15 10:23:02', '2020-04-15 10:23:02'),
(46, 27, NULL, 42, '2020-04-15 10:27:35', '2020-04-15 10:27:35'),
(47, 1, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(48, 2, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(49, 3, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(50, 4, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(51, 5, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(52, 6, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(53, 7, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(54, 8, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(55, 9, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(56, 10, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(57, 11, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(58, 13, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(59, 16, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(60, 17, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(61, 21, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(62, 22, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(63, 23, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(64, 24, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(65, 25, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(66, 26, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(67, 27, NULL, 43, '2020-04-15 10:28:28', '2020-04-15 10:28:28'),
(68, 1, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(69, 2, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(70, 3, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(71, 4, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(72, 5, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(73, 6, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(74, 7, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(75, 8, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(76, 9, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(77, 10, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(78, 11, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(79, 13, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(80, 16, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(81, 17, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(82, 21, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(83, 22, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(84, 23, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(85, 24, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(86, 25, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(87, 26, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(88, 27, NULL, 44, '2020-04-15 10:29:11', '2020-04-15 10:29:11'),
(89, 27, NULL, 45, '2020-04-15 10:29:54', '2020-04-15 10:29:54'),
(90, 27, NULL, 46, '2020-04-15 10:30:15', '2020-04-15 10:30:15'),
(91, 27, NULL, 47, '2020-04-15 10:32:31', '2020-04-15 10:32:31'),
(92, 27, NULL, 48, '2020-04-15 10:33:07', '2020-04-15 10:33:07'),
(93, 27, NULL, 49, '2020-04-20 18:24:03', '2020-04-20 18:24:03'),
(94, 27, NULL, 50, '2020-04-20 18:25:24', '2020-04-20 18:25:24'),
(95, 22, NULL, 51, '2020-06-23 05:49:54', '2020-06-23 05:49:54'),
(96, 22, NULL, 52, '2020-06-25 09:43:48', '2020-06-25 09:43:48'),
(97, 22, NULL, 53, '2020-06-25 09:44:13', '2020-06-25 09:44:13'),
(98, 1, NULL, 54, '2020-07-19 09:16:53', '2020-07-19 09:16:53'),
(99, 2, NULL, 54, '2020-07-19 09:16:53', '2020-07-19 09:16:53'),
(100, 3, NULL, 54, '2020-07-19 09:16:53', '2020-07-19 09:16:53'),
(101, 4, NULL, 54, '2020-07-19 09:16:53', '2020-07-19 09:16:53'),
(102, 5, NULL, 54, '2020-07-19 09:16:53', '2020-07-19 09:16:53'),
(103, 6, NULL, 54, '2020-07-19 09:16:54', '2020-07-19 09:16:54'),
(104, 7, NULL, 54, '2020-07-19 09:16:54', '2020-07-19 09:16:54'),
(105, 8, NULL, 54, '2020-07-19 09:16:54', '2020-07-19 09:16:54'),
(106, 9, NULL, 54, '2020-07-19 09:16:54', '2020-07-19 09:16:54'),
(107, 10, NULL, 54, '2020-07-19 09:16:54', '2020-07-19 09:16:54'),
(108, 11, NULL, 54, '2020-07-19 09:16:54', '2020-07-19 09:16:54'),
(109, 13, NULL, 54, '2020-07-19 09:16:54', '2020-07-19 09:16:54'),
(110, 16, NULL, 54, '2020-07-19 09:16:54', '2020-07-19 09:16:54'),
(111, 17, NULL, 54, '2020-07-19 09:16:54', '2020-07-19 09:16:54'),
(112, 21, NULL, 54, '2020-07-19 09:16:54', '2020-07-19 09:16:54'),
(113, 22, NULL, 54, '2020-07-19 09:16:54', '2020-07-19 09:16:54'),
(114, 23, NULL, 54, '2020-07-19 09:16:54', '2020-07-19 09:16:54'),
(115, 24, NULL, 54, '2020-07-19 09:16:55', '2020-07-19 09:16:55'),
(116, 25, NULL, 54, '2020-07-19 09:16:55', '2020-07-19 09:16:55'),
(117, 26, NULL, 54, '2020-07-19 09:16:55', '2020-07-19 09:16:55'),
(118, 27, NULL, 54, '2020-07-19 09:16:55', '2020-07-19 09:16:55'),
(119, 31, NULL, 54, '2020-07-19 09:16:55', '2020-07-19 09:16:55'),
(120, 32, NULL, 54, '2020-07-19 09:16:55', '2020-07-19 09:16:55'),
(121, 33, NULL, 54, '2020-07-19 09:16:55', '2020-07-19 09:16:55'),
(122, 34, NULL, 54, '2020-07-19 09:16:55', '2020-07-19 09:16:55'),
(123, 35, NULL, 54, '2020-07-19 09:16:55', '2020-07-19 09:16:55'),
(124, 13, NULL, 55, '2020-07-21 10:22:07', '2020-07-21 10:22:07'),
(125, 1, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(126, 2, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(127, 3, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(128, 4, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(129, 5, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(130, 6, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(131, 7, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(132, 8, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(133, 9, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(134, 10, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(135, 11, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(136, 13, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(137, 16, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(138, 17, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(139, 21, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(140, 22, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(141, 23, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(142, 24, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(143, 25, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(144, 26, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(145, 27, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(146, 31, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(147, 32, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(148, 33, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(149, 34, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(150, 35, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(151, 37, NULL, 56, '2020-07-21 10:22:34', '2020-07-21 10:22:34'),
(152, 13, NULL, 57, '2020-07-21 10:56:16', '2020-07-21 10:56:16'),
(153, 13, NULL, 58, '2020-07-21 10:56:51', '2020-07-21 10:56:51'),
(154, 13, NULL, 59, '2020-07-21 10:57:23', '2020-07-21 10:57:23'),
(155, 13, NULL, 60, '2020-07-21 11:04:32', '2020-07-21 11:04:32'),
(156, 1, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(157, 2, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(158, 3, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(159, 4, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(160, 5, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(161, 6, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(162, 7, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(163, 8, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(164, 9, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(165, 10, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(166, 11, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(167, 13, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(168, 16, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(169, 17, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(170, 21, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(171, 22, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(172, 23, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(173, 24, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(174, 25, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(175, 26, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(176, 27, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(177, 31, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(178, 32, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(179, 33, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(180, 34, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(181, 35, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(182, 37, NULL, 61, '2020-07-21 11:08:30', '2020-07-21 11:08:30'),
(183, 22, NULL, 62, '2020-07-21 11:21:49', '2020-07-21 11:21:49'),
(184, 22, NULL, 63, '2020-07-21 11:22:50', '2020-07-21 11:22:50'),
(185, 22, NULL, 64, '2020-07-21 11:24:31', '2020-07-21 11:24:31'),
(186, 40, NULL, 65, '2020-07-23 12:38:48', '2020-07-23 12:38:48'),
(187, 1, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(188, 2, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(189, 3, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(190, 4, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(191, 5, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(192, 6, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(193, 7, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(194, 8, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(195, 9, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(196, 10, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(197, 11, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(198, 13, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(199, 16, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(200, 17, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(201, 21, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(202, 22, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(203, 23, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(204, 24, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(205, 25, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(206, 26, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(207, 27, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(208, 31, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(209, 32, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(210, 33, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(211, 34, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(212, 35, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(213, 37, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(214, 38, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(215, 40, NULL, 66, '2020-07-23 12:42:36', '2020-07-23 12:42:36'),
(216, 40, NULL, 67, '2020-07-23 12:48:02', '2020-07-23 12:48:02'),
(217, 22, NULL, 68, '2020-07-23 12:49:24', '2020-07-23 12:49:24'),
(218, 22, NULL, 69, '2020-07-23 12:49:35', '2020-07-23 12:49:35'),
(219, 40, NULL, 70, '2020-07-23 12:51:19', '2020-07-23 12:51:19'),
(220, 40, NULL, 71, '2020-07-23 12:52:29', '2020-07-23 12:52:29'),
(221, 40, NULL, 72, '2020-07-23 12:53:29', '2020-07-23 12:53:29'),
(222, 22, NULL, 73, '2020-07-23 13:05:15', '2020-07-23 13:05:15'),
(223, 1, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(224, 2, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(225, 3, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(226, 4, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(227, 5, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(228, 6, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(229, 7, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(230, 8, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(231, 9, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(232, 10, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(233, 11, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(234, 13, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(235, 16, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(236, 17, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(237, 21, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(238, 22, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(239, 23, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(240, 24, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(241, 25, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(242, 26, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(243, 27, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(244, 31, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(245, 32, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(246, 33, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(247, 34, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(248, 35, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(249, 37, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(250, 38, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(251, 40, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(252, 41, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(253, 42, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(254, 43, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(255, 44, NULL, 74, '2020-09-10 08:41:38', '2020-09-10 08:41:38'),
(256, 1, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(257, 2, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(258, 3, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(259, 4, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(260, 5, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(261, 6, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(262, 7, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(263, 8, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(264, 9, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(265, 10, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(266, 11, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(267, 13, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(268, 16, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(269, 17, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(270, 21, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(271, 22, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(272, 23, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(273, 24, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(274, 25, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(275, 26, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(276, 27, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(277, 31, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(278, 32, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(279, 33, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(280, 34, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(281, 35, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(282, 37, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(283, 38, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(284, 40, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(285, 41, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(286, 42, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(287, 43, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(288, 44, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(289, 45, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(290, 46, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(291, 47, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(292, 48, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(293, 49, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(294, 50, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(295, 51, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(296, 52, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(297, 53, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(298, 54, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(299, 55, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(300, 56, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(301, 57, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(302, 58, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(303, 59, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(304, 60, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(305, 61, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(306, 62, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(307, 63, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(308, 64, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(309, 65, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(310, 66, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(311, 67, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(312, 68, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(313, 69, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(314, 70, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(315, 71, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(316, 72, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(317, 73, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(318, 74, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(319, 75, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(320, 76, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(321, 77, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(322, 78, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(323, 79, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(324, 80, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(325, 81, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(326, 82, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(327, 83, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(328, 84, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(329, 85, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(330, 86, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(331, 87, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(332, 88, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(333, 89, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(334, 90, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(335, 91, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(336, 92, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(337, 93, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(338, 94, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(339, 95, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(340, 96, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(341, 97, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(342, 98, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(343, 99, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(344, 100, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(345, 101, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(346, 102, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(347, 103, NULL, 57, '2021-02-01 17:36:10', '2021-02-01 17:36:10'),
(348, 1, 1, 58, '2021-02-10 09:07:59', '2021-02-10 09:07:59'),
(349, 105, 1, 59, '2021-02-10 09:10:27', '2021-02-10 09:10:27'),
(350, 105, 1, 60, '2021-02-10 09:12:12', '2021-02-10 09:12:12'),
(351, 108, 1, 61, '2021-04-18 16:11:28', '2021-04-18 16:11:28'),
(352, 103, 2, 61, '2021-04-18 16:11:28', '2021-04-18 16:11:28'),
(353, 106, 3, 61, '2021-04-18 16:11:28', '2021-04-18 16:11:28'),
(354, 106, 4, 61, '2021-04-18 16:11:28', '2021-04-18 16:11:28'),
(355, 107, 5, 61, '2021-04-18 16:11:28', '2021-04-18 16:11:28'),
(356, 106, 6, 61, '2021-04-18 16:11:28', '2021-04-18 16:11:28'),
(357, 106, 7, 61, '2021-04-18 16:11:28', '2021-04-18 16:11:28'),
(358, 108, 1, 62, '2021-04-21 12:38:47', '2021-04-21 12:38:47'),
(359, 103, 2, 62, '2021-04-21 12:38:47', '2021-04-21 12:38:47'),
(360, 106, 3, 62, '2021-04-21 12:38:47', '2021-04-21 12:38:47'),
(361, 106, 4, 62, '2021-04-21 12:38:47', '2021-04-21 12:38:47'),
(362, 107, 5, 62, '2021-04-21 12:38:47', '2021-04-21 12:38:47'),
(363, 106, 6, 62, '2021-04-21 12:38:47', '2021-04-21 12:38:47'),
(364, 106, 7, 62, '2021-04-21 12:38:47', '2021-04-21 12:38:47'),
(365, 109, NULL, 63, '2021-06-23 15:35:57', '2021-06-23 15:35:57'),
(366, 109, NULL, 64, '2021-06-23 15:36:24', '2021-06-23 15:36:24'),
(367, 108, 1, 65, '2021-07-13 11:03:50', '2021-07-13 11:03:50'),
(368, 103, 2, 65, '2021-07-13 11:03:50', '2021-07-13 11:03:50'),
(369, 106, 3, 65, '2021-07-13 11:03:50', '2021-07-13 11:03:50'),
(370, 106, 4, 65, '2021-07-13 11:03:50', '2021-07-13 11:03:50'),
(371, 107, 5, 65, '2021-07-13 11:03:51', '2021-07-13 11:03:51'),
(372, 106, 6, 65, '2021-07-13 11:03:51', '2021-07-13 11:03:51'),
(373, 107, 7, 65, '2021-07-13 11:03:51', '2021-07-13 11:03:51'),
(374, 107, 8, 65, '2021-07-13 11:03:51', '2021-07-13 11:03:51'),
(375, 109, 9, 65, '2021-07-13 11:03:51', '2021-07-13 11:03:51'),
(376, 109, 10, 65, '2021-07-13 11:03:51', '2021-07-13 11:03:51'),
(377, 109, 11, 65, '2021-07-13 11:03:51', '2021-07-13 11:03:51'),
(378, 109, 12, 65, '2021-07-13 11:03:51', '2021-07-13 11:03:51'),
(379, 109, 13, 65, '2021-07-13 11:03:51', '2021-07-13 11:03:51'),
(380, 109, 14, 65, '2021-07-13 11:03:51', '2021-07-13 11:03:51'),
(381, 103, 15, 65, '2021-07-13 11:03:51', '2021-07-13 11:03:51'),
(382, 109, 16, 65, '2021-07-13 11:03:51', '2021-07-13 11:03:51'),
(383, NULL, 17, 65, '2021-07-13 11:03:51', '2021-07-13 11:03:51'),
(384, 110, 18, 65, '2021-07-13 11:03:51', '2021-07-13 11:03:51'),
(385, 108, 1, 66, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(386, 103, 2, 66, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(387, 106, 3, 66, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(388, 106, 4, 66, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(389, 107, 5, 66, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(390, 106, 6, 66, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(391, 107, 7, 66, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(392, 107, 8, 66, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(393, 109, 9, 66, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(394, 109, 10, 66, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(395, 109, 11, 66, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(396, 109, 12, 66, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(397, 109, 13, 66, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(398, 109, 14, 66, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(399, 103, 15, 66, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(400, 109, 16, 66, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(401, 109, 17, 66, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(402, 110, 18, 66, '2021-07-13 14:10:02', '2021-07-13 14:10:02'),
(403, 103, NULL, 67, '2021-12-12 09:49:19', '2021-12-12 09:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` bigint(20) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `unique_id`, `fcm_token`, `type`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2222222', '11111', 1, 108, '2021-02-10 08:52:14', '2021-04-18 14:31:58'),
(2, 'unique_id', 'test', 2, 104, '2021-02-14 14:33:28', '2022-01-18 12:08:44'),
(3, '528244d378adc2f4', 'fGcN6kKIQiOirT3ubW9HkN:APA91bE0HGJMDRVT1PM5TvEWqXdPWbHZLvOjByBkkHQgEoKgW-fkXkhuQneySO3xbDw1fbcq32UMDr-plYxIr4NxqimVwepQsxxxb7o2VPsRy09s4NcVsJ8ZebAGCA7hwqpB9TlPFwMD', 2, 106, '2021-03-20 12:37:35', '2021-03-20 12:37:35'),
(4, 'd17eb533a4012171', 'dC_x-1E2TKealr3Zf-Yf4q:APA91bGi_xB8vAuWcphvMSE4OPv6tCMtJx9-GTfG2C8j2Nem4jOVKoySr4px3qoOS091n7QPX-RexVmWl6T-oeoAkRwrDgsbEu7HwLenmaW8VHTTSbjv12xtD5uMfDfzx-ey2fsfYUQi', 2, 106, '2021-03-20 16:35:36', '2021-03-20 16:35:36'),
(5, 'a6b555ac991f43f0', 'null', 2, 107, '2021-04-12 11:49:55', '2021-04-12 11:49:55'),
(6, '565759728b1ce7bd', 'null', 2, 106, '2021-04-13 13:15:32', '2021-04-13 13:15:32'),
(7, '475fc210f037a76a', 'null', 2, 107, '2021-04-18 15:11:44', '2021-04-21 13:04:12'),
(8, 'b8fa86d537ec75d1', 'null', 2, 111, '2021-04-25 12:48:27', '2021-08-01 12:34:47'),
(9, 'd240c30d64470031', 'faaqAjZ8TvK8mJG9pgihHE:APA91bG9kpyyDChVeLmSsr_Vu6-9Qprh8vv3s3c1OWpP432KtYI7eDGlZSkz4yFVl3vKGaqdHYGssdHft8m-qOcIucWCfJLSWhKY3vtRqBRQnHaZgZ04poGpFnS03KjC6DjJYqHhwEaH', 2, 109, '2021-06-10 10:41:54', '2021-06-10 14:24:05'),
(10, 'dd999a9894485103', 'fEZgfIsPT-GwsgE6GynKFE:APA91bF_yNfB8iOx9Cxw_n4Q_D0Rmewq5Rhx5khJ_2pR_pMPiN44NzgcgtxLDzc7kb0sCZQesOJAmdVslKJ7qzcMAdmq0s69LvkAnd5pCXseJRE3PLTDdZEqxx0iLT6weqcpi4dJ_k3m', 2, 109, '2021-06-10 11:28:37', '2021-06-10 14:13:29'),
(11, '6e4b5432da63e3a8', 'eXMFXnS1Thyvtr6EOZzzVt:APA91bHeuHDMdZ4G4ZlwmJT9FZ7UqLyTyYPqL1-J5byr9CxIIASuNfDTjdRK20MfFQewOtGWYTI4aKC7cZgwVbFBA1sUVSvvbwRZLCl_-3CfHPvpQ2i0s_D0MjwVk3Ai8gOeHEdSurwL', 2, 109, '2021-06-10 14:40:04', '2021-06-10 14:40:38'),
(12, 'c3cc20fbae619b13', 'emwQlIQcQeSpkWAVY8gB-L:APA91bH76zVBfy7-ymojd3hkennWn29yyxlF0HmsBV44allZRIwMySu60r77i6K2vCrGLME8IZS0sKCOiFpk4GuqtCu_ksdkiZFgbQnoiJDal_pVKnb7mPGgVo2v4o_Y0prx02MmFnUE', 2, 109, '2021-06-22 15:16:05', '2021-06-22 15:16:30'),
(13, '2a55dc77412a211d', 'd7Vq_uN3RH2PPl-gBXrolN:APA91bGDQz6x300fA6puuuZ8cRq47GrqbkMT6AY3S9NvkuguPrhizD8WRonSykgdo7n80CR267Zbqts1MTE2QSIAdLEfA-8uQyYpqnqp-AziZFqNEeNW0PORJOJTtZZB5b_Pj5KVq8Po', 2, 109, '2021-06-23 15:54:12', '2021-06-23 15:54:29'),
(14, 'a741a48d05143d0f', 'empty', 2, 109, '2021-07-09 23:48:15', '2021-07-09 23:49:35'),
(15, 'BDB54316-AC13-4526-A2B9-8403617CC168', 'test', 1, 103, '2021-07-10 22:39:34', '2021-07-10 22:39:34'),
(16, '6d6c1fc4601b4017', 'f3OhI2AJS6CcXYPaT01SNT:APA91bGmmSvkbT2ae00yiJwRz9j7uUxQiFCrVf4rpbNkOId6HPcsnaZxFsL0ClXzF1siPZY85b4mI9aisu2gYCWy0oPXxX0H_Scxz_lw_qSfIPBWFvVJ4QZabVZyMYbDkoRDUKxsSLmj', 2, 109, '2021-07-11 06:59:56', '2021-07-11 07:00:11'),
(17, '29c245229faaed74', 'cKu6Bn-TQ_q6yvWZmTY3Ut:APA91bHgwl21WS-Kg674zxtH06gR--Ov0wHLorM68MKyRrKOfb8MQ5Y9BCU59jTwf74HpSuDclBx69xZ_ATvFUDsFt_7dTHQj6c9Htv4mwbmTiubzTZbCE6UUCWgeB80ieZViroAVYYE', 2, 109, '2021-07-11 09:32:47', '2021-07-13 11:39:35'),
(18, 'eee669be80ea3ff1', 'cO8YE_HpR3ejaRpnFzq824:APA91bHHOsITAqM7jJeXIuvh2QKyL4Hi2ZMCTlzxjp5l2LHLuer9bEmYd651lruvK4mAUFWu1SRiUgAogYi-X7b6e1hCn6_Om6Rc_R6-m1k8Kv0X4zBLE50LZMnFrIKK7p1ujLBGtvnz', 2, 110, '2021-07-13 10:16:22', '2021-07-13 10:22:32'),
(19, 'fd8e56ed6eb4ed40', 'clnNyP6-QsW7AOPmVC9fY1:APA91bG8NrJUKUFyVLVIS1RqLNGt01DV1C2AsJz2x5Zr-8gp3SA36KaG1gDnjdL1E5XszC4T2A1XxWHUjeWpq_Dps9y4KtKAyQJ6TVXZoo4w242llVaqpaGTQr9JZuigQSrCN8yLorB8', 2, 103, '2021-07-17 14:23:31', '2021-07-18 16:44:26'),
(20, '23853ab240a0c32e', 'ftWdMkLEQA2MiJD70wfrbQ:APA91bH1ks-8IJFcHBsxpLevvKv9Au4pxo2ESX0bJW_sUEsm-VzlwUcABDsf_jQilz73JnePvpQV_vqcvG8AKh4hARl0BMImjhzlW9SrjgBsdb3oMKhsHCqch0XeTqRq3yNlwoAtWH0f', 2, 103, '2021-07-31 19:26:36', '2021-08-04 21:23:31'),
(21, '490a1582f9c5919c', 'empty', 2, 109, '2021-08-01 10:08:11', '2021-08-01 10:13:59'),
(22, 'b0c9678787e04934', 'empty', 2, 109, '2021-08-01 13:23:37', '2021-08-01 13:24:26'),
(23, '63c1e872057f258c', 'fgWMKfAMQO6KMIDHalKMLS:APA91bEzQZNzhyGm8LdbEz8KRxrw772TZxIHrTiqV6d9vsNrc3LzFOPWEBE7kBHI4YysyYIcle_Fxq17QKogc47LpxWqr_QQAxEbQKPB3B2R0p8um5_iM0_-rPY1QxjY7-cTf83h4mxd', 2, 112, '2021-08-01 15:20:22', '2021-08-09 09:29:08'),
(24, '1cc37fc0a00f6bee', 'empty', 2, 109, '2021-08-01 16:04:03', '2021-08-01 16:06:12'),
(25, '4098d4743f501585', 'fe4Z11vOT8a-7aploNJv2f:APA91bHt6zBBgIjTtz6zPnuPZbP7RtN_uxhnOL11cgFAvZCAZiJhmcZjRPpXeE-balVAdGtotK2OdWErxwIxCd1EaHdjLTuSTZmH7IXM5t6rbZk2heVenG0e10w5-fPmfW5Agd0EdQZw', 2, NULL, '2021-08-05 08:08:09', '2021-08-05 08:08:09'),
(26, '20ed40ee87fcacad', 'ezY6b6lYQvSR25dlQpdcvS:APA91bEsEbX5PJfWuCZe_9XJ6cC4NPWOJp9SzvGwRYfcTNe9n2Yum_f5_fZ6rmsj4W9fAd-msSyOhtqoacX5sVV2K6E512ApmZJBqJyy43vvyVJJt-XzZrtZchXGFo8cuzvZ6z0ivTEQ', 2, NULL, '2021-08-05 10:25:59', '2021-08-05 10:25:59');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` double(8,2) NOT NULL,
  `price` double(8,2) DEFAULT NULL,
  `type` enum('payed','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'payed',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_transactions`
--

INSERT INTO `wallet_transactions` (`id`, `value`, `price`, `type`, `user_id`, `package_id`, `created_at`, `updated_at`) VALUES
(7, 200.00, 20.00, 'payed', 103, 3, '2021-03-10 09:04:41', '2021-03-02 09:04:45'),
(8, 100.00, 14.75, 'payed', 103, 2, '2021-05-13 09:31:10', '2021-02-01 09:31:10'),
(9, 1000.00, NULL, 'free', 107, NULL, '2021-04-12 11:48:32', '2021-04-12 11:48:32'),
(10, 1000.00, NULL, 'free', 106, NULL, '2021-04-20 13:50:16', '2021-04-20 13:50:16'),
(11, 500.00, NULL, 'free', 106, NULL, '2021-04-25 15:02:20', '2021-04-25 15:02:20'),
(12, 100.00, NULL, 'free', 109, NULL, '2021-06-23 15:35:32', '2021-06-23 15:35:32'),
(13, 150.00, NULL, 'free', 109, NULL, '2021-07-01 05:16:47', '2021-07-01 05:16:47'),
(14, 500.00, NULL, 'free', 110, NULL, '2021-07-13 14:26:08', '2021-07-13 14:26:08'),
(15, 1000.00, NULL, 'free', 111, NULL, '2021-08-01 12:42:36', '2021-08-01 12:42:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_city_id_foreign` (`city_id`);

--
-- Indexes for table `balance_packages`
--
ALTER TABLE `balance_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_ads`
--
ALTER TABLE `categories_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_options`
--
ALTER TABLE `category_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_options_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `category_option_values`
--
ALTER TABLE `category_option_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_option_values_option_id_foreign` (`option_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `day_times`
--
ALTER TABLE `day_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forums_cat_id_foreign` (`cat_id`),
  ADD KEY `forums_city_id_foreign` (`city_id`);

--
-- Indexes for table `forum_categories`
--
ALTER TABLE `forum_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_ads`
--
ALTER TABLE `main_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markas`
--
ALTER TABLE `markas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marka_types`
--
ALTER TABLE `marka_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marka_types_marka_id_foreign` (`marka_id`);

--
-- Indexes for table `mazad_times`
--
ALTER TABLE `mazad_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`),
  ADD KEY `messages_conversation_id_foreign` (`conversation_id`),
  ADD KEY `messages_ad_product_id_foreign` (`ad_product_id`);

--
-- Indexes for table `meta_tags`
--
ALTER TABLE `meta_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mndobs`
--
ALTER TABLE `mndobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_plan_id_foreign` (`plan_id`),
  ADD KEY `order_details_user_id_foreign` (`user_id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_address_id_foreign` (`address_id`),
  ADD KEY `order_details_category_id_foreign` (`category_id`),
  ADD KEY `order_details_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `order_times`
--
ALTER TABLE `order_times`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_times_time_id_foreign` (`time_id`),
  ADD KEY `order_times_order_details_id_foreign` (`order_details_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `participants_user_id_foreign` (`user_id`),
  ADD KEY `participants_conversation_id_foreign` (`conversation_id`),
  ADD KEY `participants_product_id_foreign` (`ad_product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_details`
--
ALTER TABLE `plan_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_fk` (`plan_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_fk` (`user_id`),
  ADD KEY `day_count_id_fk` (`day_count_id`);

--
-- Indexes for table `product_features`
--
ALTER TABLE `product_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_id_fk` (`option_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_mazads`
--
ALTER TABLE `product_mazads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_views`
--
ALTER TABLE `product_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_views_user_id_foreign` (`ip`(191)),
  ADD KEY `product_views_product_id_foreign` (`product_id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_fk` (`category_id`);

--
-- Indexes for table `sub_five_categories`
--
ALTER TABLE `sub_five_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_five_categories_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `sub_four_categories`
--
ALTER TABLE `sub_four_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_sub_sub_cat_fk` (`sub_category_id`);

--
-- Indexes for table `sub_three_categories`
--
ALTER TABLE `sub_three_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_sub_cat_fk` (`sub_category_id`);

--
-- Indexes for table `sub_two_categories`
--
ALTER TABLE `sub_two_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_cat_fk` (`sub_category_id`);

--
-- Indexes for table `times_of_works`
--
ALTER TABLE `times_of_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_models`
--
ALTER TABLE `type_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_models_marka_type_id_foreign` (`marka_type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_addresses_area_id_foreign` (`area_id`),
  ADD KEY `user_addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitors_user_id_foreign` (`user_id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_transactions_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `balance_packages`
--
ALTER TABLE `balance_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories_ads`
--
ALTER TABLE `categories_ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `category_options`
--
ALTER TABLE `category_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `category_option_values`
--
ALTER TABLE `category_option_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `day_times`
--
ALTER TABLE `day_times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `forum_categories`
--
ALTER TABLE `forum_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_ads`
--
ALTER TABLE `main_ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `markas`
--
ALTER TABLE `markas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `marka_types`
--
ALTER TABLE `marka_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mazad_times`
--
ALTER TABLE `mazad_times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meta_tags`
--
ALTER TABLE `meta_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `mndobs`
--
ALTER TABLE `mndobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_times`
--
ALTER TABLE `order_times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `plan_details`
--
ALTER TABLE `plan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `product_features`
--
ALTER TABLE `product_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_mazads`
--
ALTER TABLE `product_mazads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_views`
--
ALTER TABLE `product_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sub_five_categories`
--
ALTER TABLE `sub_five_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_four_categories`
--
ALTER TABLE `sub_four_categories`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sub_three_categories`
--
ALTER TABLE `sub_three_categories`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_two_categories`
--
ALTER TABLE `sub_two_categories`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `times_of_works`
--
ALTER TABLE `times_of_works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `type_models`
--
ALTER TABLE `type_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `areas_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `category_options`
--
ALTER TABLE `category_options`
  ADD CONSTRAINT `category_options_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `category_option_values`
--
ALTER TABLE `category_option_values`
  ADD CONSTRAINT `category_option_values_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `category_options` (`id`);

--
-- Constraints for table `forums`
--
ALTER TABLE `forums`
  ADD CONSTRAINT `forums_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `forum_categories` (`id`),
  ADD CONSTRAINT `forums_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `marka_types`
--
ALTER TABLE `marka_types`
  ADD CONSTRAINT `marka_types_marka_id_foreign` FOREIGN KEY (`marka_id`) REFERENCES `markas` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ad_product_id_foreign` FOREIGN KEY (`ad_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`),
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `user_addresses` (`id`),
  ADD CONSTRAINT `order_details_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`),
  ADD CONSTRAINT `order_details_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`),
  ADD CONSTRAINT `order_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_times`
--
ALTER TABLE `order_times`
  ADD CONSTRAINT `order_times_order_details_id_foreign` FOREIGN KEY (`order_details_id`) REFERENCES `order_details` (`id`),
  ADD CONSTRAINT `order_times_time_id_foreign` FOREIGN KEY (`time_id`) REFERENCES `day_times` (`id`);

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`),
  ADD CONSTRAINT `participants_product_id_foreign` FOREIGN KEY (`ad_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `plan_details`
--
ALTER TABLE `plan_details`
  ADD CONSTRAINT `plan_fk` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `day_count_id_fk` FOREIGN KEY (`day_count_id`) REFERENCES `mazad_times` (`id`),
  ADD CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `product_features`
--
ALTER TABLE `product_features`
  ADD CONSTRAINT `option_id_fk` FOREIGN KEY (`option_id`) REFERENCES `category_options` (`id`);

--
-- Constraints for table `product_views`
--
ALTER TABLE `product_views`
  ADD CONSTRAINT `product_views_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `cat_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `sub_five_categories`
--
ALTER TABLE `sub_five_categories`
  ADD CONSTRAINT `sub_five_categories_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_four_categories` (`id`);

--
-- Constraints for table `sub_four_categories`
--
ALTER TABLE `sub_four_categories`
  ADD CONSTRAINT `sub_sub_sub_cat_fk` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_three_categories` (`id`);

--
-- Constraints for table `sub_three_categories`
--
ALTER TABLE `sub_three_categories`
  ADD CONSTRAINT `sub_sub_cat_fk` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_two_categories` (`id`);

--
-- Constraints for table `sub_two_categories`
--
ALTER TABLE `sub_two_categories`
  ADD CONSTRAINT `sub_cat_fk` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`);

--
-- Constraints for table `type_models`
--
ALTER TABLE `type_models`
  ADD CONSTRAINT `type_models_marka_type_id_foreign` FOREIGN KEY (`marka_type_id`) REFERENCES `marka_types` (`id`);

--
-- Constraints for table `visitors`
--
ALTER TABLE `visitors`
  ADD CONSTRAINT `visitors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD CONSTRAINT `wallet_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
