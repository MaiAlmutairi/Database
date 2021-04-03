-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2021 at 09:33 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nsl`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `email_verified_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'mai@admin.com', '$2y$10$8AI3z1kph9l/jS1UljjVk.tXLQmWsttYK829vlLhc3oHbIR/uANLe', '2021-03-14 16:07:35', '2021-03-14 16:07:35', '2021-03-14 16:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 1, 'ttt1', 'tttt1', '_blog1615968932.png', '2021-03-17 06:15:32', '2021-03-17 06:15:32', NULL),
(12, 1, 'tt22', 'rrr222', '[000058].png', '2021-03-17 06:23:37', '2021-03-17 19:19:23', '2021-03-17 19:19:23'),
(13, 1, 'rrrrrrrrrrrrrrrrrrrr33', '3rrrrrrrrrrrrrrrrrrrr', '_blog1616015921.png', '2021-03-17 19:18:41', '2021-03-17 19:18:41', NULL),
(15, 1, 'ttttttttttttttttttttttttttt222', 'tttttttttttttttttttthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhtttttttttttttttttttthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhtttttttttttttttttttthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhtttttttttttttttttttthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhtttttttttttttttttttthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhtttttttttttttttttttthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhtttttttttttttttttttthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhtttttttttttttttttttthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '_blog1616016647.jpg', '2021-03-17 19:30:47', '2021-03-18 17:37:49', '2021-03-18 17:37:49'),
(16, 1, 'retret', 'retret', '_blog1616098934.png', '2021-03-18 18:22:14', '2021-03-18 18:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `author` varchar(191) DEFAULT NULL,
  `details` text NOT NULL,
  `year` bigint(111) DEFAULT NULL,
  `semester` int(11) DEFAULT 1,
  `library` int(11) DEFAULT 1,
  `book` int(11) NOT NULL DEFAULT 1,
  `bookFile` text NOT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `details`, `year`, `semester`, `library`, `book`, `bookFile`, `status`, `created_at`, `deleted_at`, `updated_at`) VALUES
(20, 'ww333', 'www333', 'www3333333', 1212, 1, 1, 3, '20_book1616098008.pdf', 0, '2021-03-17 08:49:17', NULL, '2021-03-19 17:44:21'),
(21, 'rr', 'rr', 'rr', 1112, 1, 2, 1, '21_book1616098144.pdf', 1, '2021-03-17 08:51:02', NULL, '2021-03-18 18:09:04'),
(23, 'eee', '3e3e', '3ee2', 222, 1, 1, 1, 'book1615978498.pdf', 1, '2021-03-17 08:54:58', NULL, '2021-03-17 09:05:28'),
(24, 'ss', 'ss', 'sssq', 212, 1, 1, 3, 'book1615978656.docx', 1, '2021-03-17 08:57:36', NULL, '2021-03-17 09:05:29'),
(25, 'eee44', '4444', '44ewrtewr', 333, 1, 1, 3, 'book1615978928.pdf', 1, '2021-03-17 09:02:08', NULL, '2021-03-17 09:06:00'),
(26, 'tttttttttttttttttttttttttttttt', 'ttttttttttttttttt', 'tttttttttttttttttttttttt5555', 34, 1, 2, 3, 'book1616098430.pdf', 1, '2021-03-18 18:13:50', NULL, '2021-03-18 18:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `chartformat`
--

CREATE TABLE `chartformat` (
  `id` int(11) NOT NULL,
  `chart` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chartformat`
--

INSERT INTO `chartformat` (`id`, `chart`, `created_at`, `updated_at`) VALUES
(1, ' <div id=\"container\" style=\"width: 85%;\">\r\n        <canvas id=\"canvas\"></canvas>\r\n    </div>\r\n    <script>\r\n        var ticksStyle = {\r\n            fontColor: \'#495057\',\r\n            fontStyle: \'bold\'\r\n        }\r\n\r\n        var mode      = \'index\';\r\n        var intersect = true;\r\n        var $visitorsChart = $(\'#canvas\');\r\n        var visitorsChart  = new Chart($visitorsChart, {\r\n          \r\n               datassss\r\n            ,\r\n            options: {\r\n                maintainAspectRatio: false,\r\n                tooltips           : {\r\n                    mode     : mode,\r\n                    intersect: intersect\r\n                },\r\n                hover              : {\r\n                    mode     : mode,\r\n                    intersect: intersect\r\n                },\r\n                legend             : {\r\n                    display: false\r\n                },\r\n                scales             : {\r\n                    yAxes: [{\r\n stacked: true,\r\n                         display: true,\r\n                        gridLines: {\r\n                            display      : true,\r\n                            lineWidth    : \'4px\',\r\n                            color        : \'rgba(0, 0, 0, .2)\',\r\n                            zeroLineColor: \'transparent\'\r\n                        },\r\n                        ticks    : $.extend({\r\n                            beginAtZero : true,\r\n                            suggestedMax: maxValue\r\n                        }, ticksStyle)\r\n                    }],\r\n                    xAxes: [{\r\n  stacked: true,\r\n                        display  : true,\r\n                        gridLines: {\r\n                            display: false\r\n                        },\r\n                        ticks    : ticksStyle\r\n                    }]\r\n                }\r\n            }\r\n        });\r\n    </script>', '2021-03-18 17:43:14', '2021-03-18 17:43:14');

-- --------------------------------------------------------

--
-- Table structure for table `charts`
--

CREATE TABLE `charts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `x` bigint(20) NOT NULL,
  `y` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `charts`
--

INSERT INTO `charts` (`id`, `x`, `y`, `created_at`, `updated_at`) VALUES
(1, 1, 5, '0000-00-00 00:00:00', '2021-03-19 16:09:23'),
(2, 15, 30, '2021-03-19 16:09:28', '2021-03-19 16:09:28'),
(3, 5, 0, '2021-03-19 16:09:34', '2021-03-19 16:09:34'),
(4, 17, 12, '2021-03-19 16:09:39', '2021-03-19 16:09:39'),
(5, 5, 30, '2021-03-19 17:43:37', '2021-03-19 17:43:37'),
(6, 25, 2, '2021-03-19 17:43:59', '2021-03-19 17:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(255) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(7, 4, 1, 'hoih iio', '2021-03-14 16:31:17', '2021-03-14 16:31:17'),
(8, 4, 1, 'assa', '2021-03-14 16:36:59', '2021-03-14 16:36:59'),
(9, 4, 1, '8328238328', '2021-03-14 16:45:47', '2021-03-14 16:45:47'),
(19, 13, 1, 'eee', '2021-03-17 19:45:32', '2021-03-17 19:45:32'),
(20, 13, 1, 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', '2021-03-17 19:45:45', '2021-03-17 19:45:45'),
(21, 13, 1, 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', '2021-03-17 19:45:48', '2021-03-17 19:45:48'),
(22, 16, 1, 'errrrrrrrrrrrrrr', '2021-03-18 18:22:30', '2021-03-18 18:22:30'),
(23, 16, 1, 'errrrrrrrrrrrrrr', '2021-03-18 18:22:33', '2021-03-18 18:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'thaer', 'thaer@t.o', 'tttttttttttttt', '2021-03-08 06:51:48', NULL, '2021-03-08 06:51:48'),
(2, 'eeeeeeeee', 'eee@rr.oo', 'tytrytry', '2021-03-19 19:36:34', NULL, '2021-03-19 19:36:34'),
(3, 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 'eeeeeeeeeee@ss.ujjh', 'eeeeeeeeeeeeee3233', '2021-03-19 20:38:43', NULL, '2021-03-19 20:38:43'),
(4, 'uuu', 'ttt@rr.oo', 'tyty', '2021-03-19 20:38:55', NULL, '2021-03-19 20:38:55');

-- --------------------------------------------------------

--
-- Table structure for table `layers`
--

CREATE TABLE `layers` (
  `id` int(11) NOT NULL,
  `layer` int(20) NOT NULL,
  `title_threats` varchar(150) NOT NULL,
  `descriptions_threats` text NOT NULL,
  `img_threats` varchar(100) NOT NULL,
  `title_protocol` varchar(200) NOT NULL,
  `descriptions_protocol` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `layers`
--

INSERT INTO `layers` (`id`, `layer`, `title_threats`, `descriptions_threats`, `img_threats`, `title_protocol`, `descriptions_protocol`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 3, 'ttttt222', 'tdddddddddqqq22', '4_layer1615584627.png', 'eee22', 'wwwewe222', '2021-03-12 19:18:44', '2021-03-12 19:30:27', NULL),
(5, 1, 'app layer', 'app layerapp layerapp layer', '_layer1616098634.png', 'app layer protocolxxxx', 'app layer protocolapp layer protocolxxx', '2021-03-18 18:17:14', '2021-03-18 18:19:14', NULL);

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
(3, '2021_03_07_102842_create_books_table', 1),
(4, '2021_03_07_103030_create_resources_table', 1),
(5, '2021_03_07_103056_create_admins_table', 1),
(6, '2021_03_07_112320_create_contacts_table', 1),
(7, '2021_03_08_083748_create_posts_table', 1),
(8, '2021_03_08_084138_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `image`, `description`, `short_description`, `created_at`, `updated_at`) VALUES
(1, 'ttttttttttttt', '_news1616018529.png', 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrqwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww', 'rrrrrrrrrrrr', '2021-03-17 20:02:09', '2021-03-17 20:02:09'),
(2, 'fffffff', '_news1616143656.png', 'fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', 'ffffffffffffffffff', '2021-03-19 06:47:36', '2021-03-19 06:47:36'),
(3, 'wwww', '_news1616145482.png', 'ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo', 'ooooooooooooooo', '2021-03-19 07:18:02', '2021-03-19 07:18:02'),
(4, 'rrrr', '_news1616189414.png', 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', 'rrrrrrrrrrrrrrrrrrrrrr', '2021-03-19 19:30:14', '2021-03-19 19:30:14');

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
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `link` varchar(191) NOT NULL,
  `filed` varchar(191) NOT NULL,
  `icon` varchar(300) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `title`, `link`, `filed`, `icon`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'google1', 'www.google.com', 'security if google1', '1_icon1615196232.png', '2021-03-08 07:00:27', NULL, '2021-03-08 07:37:12'),
(2, 'github1', 'www.github.com', 'github1', '_icon1615195041.png', '2021-03-08 07:17:21', NULL, '2021-03-08 07:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `type`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohammed', 'Mohammed@gmail.com', 1, NULL, '$2y$10$nj6UdKkhCnvkfdXN9duW5unTLirwj2/f3o2pCNYv5Ytyp0qTfEXTe', NULL, '2021-03-14 16:08:25', '2021-03-14 16:08:25'),
(2, 'thaer', 'thaer@thaer.com', 2, NULL, '$2y$10$jBMmga66dyfVEembuFsHwOfoJ1BRBvhO5ZEimnaVZdJYncixe17oK', NULL, '2021-03-15 19:01:43', '2021-03-15 19:01:43'),
(3, 't', 't@t.com', 2, NULL, '$2y$10$u5ilm.KF5dp7JYuRwCZWgOcdQLH0baCwq0ISit2Hc/lWsDOShSMXC', NULL, '2021-03-16 13:57:52', '2021-03-16 13:57:52'),
(4, 'tha', 'rrr@rr.vv', 2, NULL, '$2y$10$i1ExQbYK/KoAB3tzkNAAO.rlgozgRl0NOW5XoQ.DRJjNy/GeXrBFy', NULL, '2021-03-16 14:51:26', '2021-03-16 14:51:26'),
(5, 'thaerfff', 'thaer@email.com', 2, NULL, '$2y$10$x3jLsMWyV8KhaDkCuloEQu4qwx3ek60rlxJQap1nI32vcqLkFOoVy', NULL, '2021-03-17 07:44:56', '2021-03-17 07:44:56'),
(6, 'ttttttttttt', 'ttttttttttt@tt.com', 2, NULL, '$2y$10$tzVehERbTunIE/LzqGnLfO7pkM2D.L.GxSQftemGaHVYlyYWlORLW', NULL, '2021-03-19 05:03:41', '2021-03-19 05:03:41'),
(7, 'rrrrrrrrr', 'ttttttttttt@wwtt.com', 1, NULL, '$2y$10$Qua8aw1dvLDFuui1SWrQN.UKrE5iyr4r9OL9FWbl/ZAHDmBWkhUXy', NULL, '2021-03-19 05:05:20', '2021-03-19 05:05:20'),
(8, 'eee', 'ee@ee.oo', 2, NULL, '$2y$10$4Ikfx6HDodozO8tcCFLwROhWeQaECs1Zp./RbBsgKhYfC9tiJY62S', NULL, '2021-03-19 05:05:38', '2021-03-19 05:05:38'),
(9, 'eee', 'ww@ww.oo', 2, NULL, '$2y$10$jKuIvRtv6XHOiovbPBND4uVZAqETWIuEqYhY7fPUk9HPaO8WNQh52', NULL, '2021-03-19 05:06:39', '2021-03-19 05:06:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chartformat`
--
ALTER TABLE `chartformat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charts`
--
ALTER TABLE `charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layers`
--
ALTER TABLE `layers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `chartformat`
--
ALTER TABLE `chartformat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `charts`
--
ALTER TABLE `charts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `layers`
--
ALTER TABLE `layers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
