-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2024 at 04:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `authorized`
--

CREATE TABLE `authorized` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(200) NOT NULL,
  `network` int(200) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'tes', '2024-05-17 00:58:24', '2024-05-17 00:58:24'),
(2, 2, 'p', '2024-05-17 00:59:38', '2024-05-17 00:59:38'),
(3, 1, 'p', '2024-05-17 00:59:45', '2024-05-17 00:59:45'),
(4, 2, 'tes', '2024-05-17 01:01:10', '2024-05-17 01:01:10'),
(5, 2, 'p', '2024-05-17 01:01:19', '2024-05-17 01:01:19'),
(6, 1, 'tyt', '2024-05-17 01:01:23', '2024-05-17 01:01:23'),
(7, 6, 'trt', '2024-05-21 21:37:21', '2024-05-21 21:37:21'),
(8, 10, 'tes', '2024-05-21 21:38:53', '2024-05-21 21:38:53'),
(9, 10, 'okeylah', '2024-05-21 21:39:04', '2024-05-21 21:39:04'),
(10, 10, 'tes', '2024-05-21 23:24:29', '2024-05-21 23:24:29'),
(11, 1, 'tes', '2024-05-26 23:54:06', '2024-05-26 23:54:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_08_142412_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pat Crooks', 'moises84@example.com', '2024-05-17 00:57:10', '$2y$10$U2MHAM5///O5uGpIY9kigOEeFMoc6K.DROSd0i4ErizB7Fp1Em99u', 'XGZmlQ4Ufm', '2024-05-17 00:57:10', '2024-05-17 00:57:10'),
(2, 'Einar Quitzon', 'oherzog@example.com', '2024-05-17 00:57:10', '$2y$10$U2MHAM5///O5uGpIY9kigOEeFMoc6K.DROSd0i4ErizB7Fp1Em99u', 'Qty5w9juu1', '2024-05-17 00:57:10', '2024-05-17 00:57:10'),
(3, 'Prof. Murphy Glover MD', 'vkerluke@example.org', '2024-05-17 00:57:10', '$2y$10$U2MHAM5///O5uGpIY9kigOEeFMoc6K.DROSd0i4ErizB7Fp1Em99u', 'XwSXWXYy9Q', '2024-05-17 00:57:10', '2024-05-17 00:57:10'),
(4, 'Lillie Brown', 'allison.spencer@example.net', '2024-05-17 00:57:10', '$2y$10$U2MHAM5///O5uGpIY9kigOEeFMoc6K.DROSd0i4ErizB7Fp1Em99u', 'XkNwDXyHcG', '2024-05-17 00:57:10', '2024-05-17 00:57:10'),
(5, 'Kathryne Douglas', 'awilderman@example.net', '2024-05-17 00:57:10', '$2y$10$U2MHAM5///O5uGpIY9kigOEeFMoc6K.DROSd0i4ErizB7Fp1Em99u', '8LHNDz5Exa', '2024-05-17 00:57:10', '2024-05-17 00:57:10'),
(6, 'Shanny Hansen', 'gunner69@example.com', '2024-05-17 00:57:10', '$2y$10$U2MHAM5///O5uGpIY9kigOEeFMoc6K.DROSd0i4ErizB7Fp1Em99u', 'L2mKpF54s6', '2024-05-17 00:57:10', '2024-05-17 00:57:10'),
(7, 'Pat Emmerich', 'vicente.abernathy@example.org', '2024-05-17 00:57:10', '$2y$10$U2MHAM5///O5uGpIY9kigOEeFMoc6K.DROSd0i4ErizB7Fp1Em99u', 'UJUSPCfxxX', '2024-05-17 00:57:10', '2024-05-17 00:57:10'),
(8, 'Bailey Dibbert', 'edmund89@example.net', '2024-05-17 00:57:10', '$2y$10$U2MHAM5///O5uGpIY9kigOEeFMoc6K.DROSd0i4ErizB7Fp1Em99u', 'EP7qJCqSyy', '2024-05-17 00:57:10', '2024-05-17 00:57:10'),
(9, 'Clemmie Brakus', 'gerlach.jacquelyn@example.org', '2024-05-17 00:57:10', '$2y$10$U2MHAM5///O5uGpIY9kigOEeFMoc6K.DROSd0i4ErizB7Fp1Em99u', 'fpOmicqQ3H3sNpq2DffPAxYTEFiUpYTKXSfaPopPbTS3Q5kP7bMdDnmo972U', '2024-05-17 00:57:10', '2024-05-17 00:57:10'),
(10, 'Miss Kristin Jakubowski DDS', 'hyatt.anita@example.net', '2024-05-17 00:57:10', '$2y$10$U2MHAM5///O5uGpIY9kigOEeFMoc6K.DROSd0i4ErizB7Fp1Em99u', 'ZRrNjfqj4h', '2024-05-17 00:57:10', '2024-05-17 00:57:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authorized`
--
ALTER TABLE `authorized`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
