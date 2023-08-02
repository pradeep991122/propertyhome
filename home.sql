-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2023 at 11:29 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `home`
--

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
(5, '2023_07_27_093310_create_properties_table', 1);

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
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `file` varchar(255) NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `description`, `file`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'Good environment, near by park  and metro', 'private_folder/354ryTGSNiaSMhURaWlO1iXUwWeITfUjD6e7oPCN.jpg', 1, '2023-07-28 03:27:07', '2023-07-28 03:27:07'),
(2, 'Real Home', 'good place', 'private_folder/ZcnxeIL0T07QVS13YxJrVHayJPgsgQLOGIatfe6Q.jpg', 2, '2023-07-28 03:27:48', '2023-07-28 03:27:48'),
(3, 'Nandini Home', 'near by bus stand', 'private_folder/GSwZEHG3kLH4gxwPZr9cWVt3u7xA0WA7RRGVyo14.jpg', 3, '2023-07-28 03:29:04', '2023-07-28 03:29:04'),
(4, 'bmtc', 'super', 'private_folder/4TjaBVwg3EfaObgpsSfNSd3JUy7caNRaPytETwJa.jpg', 2, '2023-07-28 03:29:26', '2023-07-28 03:29:26'),
(5, 'bmtc-2', 'super nice', 'private_folder/8VnXNKQTCyTdkfR2JNfciRbRNvICVgSUMapC8UVs.jpg', 2, '2023-07-28 03:29:38', '2023-07-28 03:29:38'),
(6, 'bmtc-2', 'super nice', 'private_folder/5NjupXObYppV53QGBICZulOvPLHMzLEPmtq8Ntd3.jpg', 3, '2023-07-28 03:29:47', '2023-07-28 03:29:47'),
(7, 'bmtc', 'super nice', 'private_folder/mI0rzoJCa9XqE50YAkW2yIHHPTvoDcm5oHdJ6wpx.jpg', 3, '2023-07-28 03:29:55', '2023-07-28 03:29:55'),
(8, 'bmtc', 'super nice', 'private_folder/PH88GxP56Oj2oShoLywU45gnV2cokUL7vGCZNeQV.jpg', 3, '2023-07-28 03:29:56', '2023-07-28 03:29:56'),
(9, 'bmtc', 'super nice', 'private_folder/H0KFHpHcmTTgPrQ1vrIjOZ0jCkXChG1aWxzlPef5.jpg', 3, '2023-07-28 03:29:57', '2023-07-28 03:29:57'),
(10, 'bmtc', 'super nice', 'private_folder/TobbFqixqGehJSqO0eieKxYBQfDTQjlccYlM82T8.jpg', 3, '2023-07-28 03:29:58', '2023-07-28 03:29:58'),
(11, 'bmtc', 'super nice', 'private_folder/JsuVHS751QYft3iJ4pfsIZU3prUlWi5kkmt0HSxu.jpg', 3, '2023-07-28 03:30:00', '2023-07-28 03:30:00'),
(12, 'bmtc', 'super nice', 'private_folder/YeN0ve2XWnDI8mYLm3aQLYJxRHdWplRW2wmUApDa.jpg', 3, '2023-07-28 03:30:03', '2023-07-28 03:30:03'),
(13, 'bmtc', 'super nice', 'private_folder/SHSAVvtCWrc5KngfJET4ca7cUpB885Kmqi3gxF8L.jpg', 3, '2023-07-28 03:30:05', '2023-07-28 03:30:05'),
(14, 'bmtc', 'super nice', 'private_folder/fAGFZlJ4NpcJfCW6v7vx09EBo6qDXKYmtiboyIDI.jpg', 3, '2023-07-28 03:30:06', '2023-07-28 03:30:06'),
(15, 'bmtc', 'super nice', 'private_folder/GiX3uVHpFDHwpDoPCLhzNkCKtYmNV5dBV31OrgaX.jpg', 2, '2023-07-28 03:30:11', '2023-07-28 03:30:11'),
(16, 'bmtc', 'super nice', 'private_folder/MMsg18j6v4qehdcshLataS92LgQoqQfXeqNdNR0O.jpg', 2, '2023-07-28 03:30:12', '2023-07-28 03:30:12'),
(17, 'bmtc', 'super nice', 'private_folder/D8C8I4kQl1P55Nmo0yOlM4u0fcTtz1XCOkV73TFX.jpg', 2, '2023-07-28 03:30:13', '2023-07-28 03:30:13'),
(18, 'bmtc', 'super nice', 'private_folder/t0uEPyOCkNASNMMLsORQ2Yl9BsFmA3QfvgGreZQL.jpg', 2, '2023-07-28 03:30:14', '2023-07-28 03:30:14'),
(19, 'bmtc', 'super nice', 'private_folder/e8Y2mwsKFdMdq41kT7sHf0k97hPbJWDqcwM6bkh9.jpg', 2, '2023-07-28 03:30:16', '2023-07-28 03:30:16'),
(20, 'bmtc', 'super nice', 'private_folder/9T6kswlVR3PEb1ys2SrZHaUjyHaPFEeyoZLoX0DV.jpg', 1, '2023-07-28 03:30:22', '2023-07-28 03:30:22'),
(21, 'bmtc', 'super nice', 'private_folder/lbDJ3hSdUtgSV7eec5YIT1xsKBdFQSwkK9ISKxVq.jpg', 1, '2023-07-28 03:30:24', '2023-07-28 03:30:24'),
(22, 'bmtc', 'super nice', 'private_folder/kFVAbo2ZAixHQXTEIg8UVyrNxe0InqTVu1mSt8EH.jpg', 1, '2023-07-28 03:30:25', '2023-07-28 03:30:25'),
(23, 'bmtc', 'super nice', 'private_folder/vqRBrlbl8JxyQiqoUaPHphyfL90wNfpjRLD6Pvii.jpg', 1, '2023-07-28 03:30:26', '2023-07-28 03:30:26'),
(24, 'bmtc', 'super nice', 'private_folder/s22l8VY2aDMz5dYBthucvTX5xUrMAhGBI3zXKAJ1.jpg', 1, '2023-07-28 03:30:27', '2023-07-28 03:30:27'),
(25, 'bmtc', 'super nice', 'private_folder/aLUZ9QS891wJgkJuvEFuG5c0BytExTXb6dsnmX6Q.jpg', 1, '2023-07-28 03:30:28', '2023-07-28 03:30:28'),
(26, 'bmtc', 'super nice', 'private_folder/SWI9WxXzFM66OgQdD9QTiDPCUPJRShtApSIxKZ5y.jpg', 1, '2023-07-28 03:30:29', '2023-07-28 03:30:29'),
(27, 'mahalakshimi', 'god', 'private_folder/Gg7NlZRVPm2v4FGGr8BqalQpVYawg6I9Uen5VFxR.jpg', 3, '2023-07-28 03:31:21', '2023-07-28 03:31:21'),
(28, 'mahalakshimi', 'god', 'private_folder/P7s4gkcZAAxsBhAuu9BQANPgLcuNDFGKxiZql4FY.jpg', 3, '2023-07-28 03:31:22', '2023-07-28 03:31:22'),
(29, 'mahalakshimi', 'god', 'private_folder/JdZjNzojxBzLzvpZLLVtVVTmwhCnrBUlvwaGsBkP.jpg', 3, '2023-07-28 03:31:24', '2023-07-28 03:31:24'),
(30, 'mahalakshimi', 'god', 'private_folder/fspu5J6TsCbGHIXbjl0vOFb7Af0wwaSutGO7g2eq.jpg', 3, '2023-07-28 03:31:26', '2023-07-28 03:31:26'),
(31, 'mahalakshimi', 'god', 'private_folder/D5zDlb78wuAdm0AKkNLzySvnT3Std2wXxcAvHTBb.jpg', 3, '2023-07-28 03:31:32', '2023-07-28 03:31:32'),
(32, 'mahalakshimi', 'god', 'private_folder/BmSSYi9axvjllv5E7gq7AOxXYvgAnbs7uSYTyC6Z.jpg', 2, '2023-07-28 03:32:02', '2023-07-28 03:32:02'),
(33, 'mahalakshimi', 'god', 'private_folder/CvB2Ps5DQ2PDJbFwFrkolsnNuzMevURx7Y6huIlq.jpg', 2, '2023-07-28 03:32:03', '2023-07-28 03:32:03'),
(34, 'mahalakshimi', 'god', 'private_folder/yUXw3H0fiFNpDBONqRHJRXO0ZG6FkCXwN8jMYNX7.jpg', 2, '2023-07-28 03:32:05', '2023-07-28 03:32:05'),
(35, 'mahalakshimi', 'god', 'private_folder/DObN92hZoRnORRQwSw23XpBeekx1O3fvkERhu7EH.jpg', 2, '2023-07-28 03:32:07', '2023-07-28 03:32:07'),
(36, 'mahalakshimi', 'god', 'private_folder/Li4AitQAyxm5gNo6B6fYX3fTae1OklODCwDQWXPK.jpg', 2, '2023-07-28 03:53:18', '2023-07-28 03:53:18'),
(37, 'Pradeep', 'Hi', 'private_folder/dNr1BnIpN4sdUe130GLU19Vgor962DEMdlZvC3B8.jpg', 1, '2023-07-28 03:55:58', '2023-07-28 03:55:58');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `properties`
--
ALTER TABLE `properties`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
