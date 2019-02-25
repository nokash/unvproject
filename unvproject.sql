-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Feb 24, 2019 at 03:21 PM
-- Server version: 5.7.24
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unvproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `continent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `continent`) VALUES
(1, 'Kenya', 'Africa'),
(2, 'Uganda', 'Africa'),
(3, 'Commoros', 'Africa'),
(4, 'Tanzania', 'Africa'),
(5, 'Brazil', 'South America'),
(6, 'Panama', 'South America'),
(7, 'Albania', 'Europe'),
(8, 'Romania\r\n', 'Europe'),
(9, 'Costa Rica', 'South America'),
(10, 'Dominican Republic', 'South America'),
(11, 'Egypt', 'Africa'),
(12, 'Morocco', 'Africa'),
(13, 'Sudan', 'Africa'),
(14, 'Honduras', 'South America'),
(15, 'Jordan', 'Asia'),
(16, 'Madagascar', 'Africa'),
(17, 'Malaysia', 'Asia'),
(18, 'Maldives', 'Asia'),
(19, 'Mauritania', 'Africa'),
(20, 'Mauritius', 'Africa'),
(21, 'Mongolia', 'Asia'),
(22, 'Montenegro', 'Europe'),
(23, 'Myanmar', 'Asia'),
(24, 'Nepal', 'Asia'),
(25, 'Niger', 'Africa'),
(26, 'Pakistan', 'Asia'),
(27, 'Palestine', 'Asia'),
(28, 'Serbia', 'Europe'),
(29, 'South Sudan', 'Africa'),
(30, 'Egypt', 'Africa'),
(31, 'Swaziland', 'Africa'),
(32, 'Tonga', 'Asia'),
(33, 'Zimbabwe', 'Africa'),
(34, 'Jordan PPFA', '');

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
(3, '2019_02_23_100512_create_projects_table', 2),
(4, '2019_02_23_100609_create_project_countries_table', 2),
(5, '2019_02_23_100648_create_offices_table', 2),
(6, '2019_02_23_100715_create_countries_table', 2),
(7, '2019_02_23_143749_add_gcf_date_to_project_countries_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `country_id`, `name`) VALUES
(1, 1, 'Europe Office'),
(2, 2, 'Economy Division'),
(3, 6, 'Latin America Office'),
(4, 2, 'Ecosystems'),
(5, 3, 'CTCN'),
(6, 4, 'West Asia Office'),
(7, 7, 'Asia Pacific Office'),
(8, 1, 'Africa Office'),
(10, 8, 'Policy & Programme Division');

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
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_id` int(11) NOT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `stop_date` datetime NOT NULL,
  `readiness_nap` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `readiness_type` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_disbursement` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_id`, `office_id`, `title`, `amount`, `start_date`, `stop_date`, `readiness_nap`, `readiness_type`, `first_disbursement`, `status`, `created_at`, `updated_at`) VALUES
(47, 'MDV-RS-001', 1, 'Establishing and strengthening National Designated Authority (NDA), and developing strategic framework for engagement with the GCF in Maldives', 100000000, '2015-02-24 00:00:00', '2019-02-24 00:00:00', 'Readiness', 'REDD+', 147500, 'Completed', '2019-02-24 19:37:04', '2019-02-24 19:37:04'),
(48, 'JOR-RS-001', 1, 'Post One', 100000000, '2019-02-24 00:00:00', '2019-02-24 00:00:00', 'Readiness', 'NAP', 350575, 'cd', '2019-02-24 20:12:51', '2019-02-24 20:12:51'),
(50, 'JOR-RS-002', 1, 'Post One', 100000000, '2019-02-24 00:00:00', '2019-02-24 00:00:00', 'Readiness', 'NAP', 350575, 'cd', '2019-02-24 20:13:16', '2019-02-24 20:13:16'),
(51, 'JOR-RS-003', 1, 'Post One', 100000000, '2019-02-24 00:00:00', '2019-02-24 00:00:00', 'Readiness', 'NAP', 350575, 'cd', '2019-02-24 20:13:27', '2019-02-24 20:13:27');

-- --------------------------------------------------------

--
-- Table structure for table `project_countries`
--

CREATE TABLE `project_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `gcf_date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_countries`
--

INSERT INTO `project_countries` (`id`, `project_id`, `country_id`, `gcf_date`, `created_at`, `updated_at`) VALUES
(6, '1', 2, '2019-02-24 00:00:00', '2019-02-24 19:00:56', '2019-02-24 19:00:56'),
(7, '1', 3, '2019-02-24 00:00:00', '2019-02-24 19:00:57', '2019-02-24 19:00:57'),
(8, 'JOR-RS-001', 2, '2019-02-24 00:00:00', '2019-02-24 19:02:08', '2019-02-24 19:02:08'),
(9, 'JOR-RS-001', 3, '2019-02-24 00:00:00', '2019-02-24 19:02:08', '2019-02-24 19:02:08'),
(10, 'JOR-RS-001', 2, '2019-02-24 00:00:00', '2019-02-24 19:55:48', '2019-02-24 19:55:48'),
(11, 'JOR-RS-002', 3, '2019-02-24 00:00:00', '2019-02-24 21:58:23', '2019-02-24 21:58:23'),
(12, 'JOR-RS-002', 4, '2019-02-24 00:00:00', '2019-02-24 21:58:23', '2019-02-24 21:58:23'),
(13, 'JOR-RS-002', 25, '2019-02-24 00:00:00', '2019-02-24 21:58:23', '2019-02-24 21:58:23'),
(14, 'MDV-RS-001', 23, '2009-02-24 00:00:00', '2019-02-24 22:37:03', '2019-02-24 22:37:03'),
(15, 'MDV-RS-001', 24, '2009-02-24 00:00:00', '2019-02-24 22:37:04', '2019-02-24 22:37:04'),
(16, 'JOR-RS-001', 1, '2019-02-24 00:00:00', '2019-02-24 23:12:50', '2019-02-24 23:12:50'),
(17, 'JOR-RS-001', 2, '2019-02-24 00:00:00', '2019-02-24 23:12:50', '2019-02-24 23:12:50'),
(18, 'JOR-RS-001', 3, '2019-02-24 00:00:00', '2019-02-24 23:12:51', '2019-02-24 23:12:51'),
(19, 'JOR-RS-001', 1, '2019-02-24 00:00:00', '2019-02-24 23:13:03', '2019-02-24 23:13:03'),
(20, 'JOR-RS-001', 2, '2019-02-24 00:00:00', '2019-02-24 23:13:03', '2019-02-24 23:13:03'),
(21, 'JOR-RS-001', 3, '2019-02-24 00:00:00', '2019-02-24 23:13:03', '2019-02-24 23:13:03'),
(22, 'JOR-RS-002', 1, '2019-02-24 00:00:00', '2019-02-24 23:13:15', '2019-02-24 23:13:15'),
(23, 'JOR-RS-002', 2, '2019-02-24 00:00:00', '2019-02-24 23:13:16', '2019-02-24 23:13:16'),
(24, 'JOR-RS-002', 3, '2019-02-24 00:00:00', '2019-02-24 23:13:16', '2019-02-24 23:13:16'),
(25, 'JOR-RS-003', 1, '2019-02-24 00:00:00', '2019-02-24 23:13:27', '2019-02-24 23:13:27'),
(26, 'JOR-RS-003', 2, '2019-02-24 00:00:00', '2019-02-24 23:13:27', '2019-02-24 23:13:27'),
(27, 'JOR-RS-003', 3, '2019-02-24 00:00:00', '2019-02-24 23:13:27', '2019-02-24 23:13:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ashford Musya Ngui', 'ashfordnokash@gmail.com', NULL, '$2y$10$F15PbMyKCibpbfi5lxc4r.OuSxkNOuz6y4oU2ZgCjk.K0FZDhJ6xi', 'TfvaZYAAxM3D8LH6LnhbPaYudrW7W9IY8fFnsr4xy3v6ru3nNwH4LO53Sk62', '2019-02-23 15:47:42', '2019-02-23 15:47:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_id_2` (`project_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `project_countries`
--
ALTER TABLE `project_countries`
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
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `project_countries`
--
ALTER TABLE `project_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
