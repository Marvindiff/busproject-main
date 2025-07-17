-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2025 at 09:12 AM
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
-- Database: `busproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `seat_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `travel_date` date NOT NULL,
  `travel_time` time NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_proof` varchar(255) DEFAULT NULL,
  `payment_status` enum('pending','confirmed','rejected') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `trip_id`, `seat_number`, `created_at`, `updated_at`, `origin`, `destination`, `travel_date`, `travel_time`, `status`, `payment_method`, `payment_proof`, `payment_status`) VALUES
(25, 6, 4, 'S5', '2025-07-15 12:06:50', '2025-07-15 12:07:32', 'Tawi tawi', 'Pampanga', '2025-07-15', '21:09:09', 'approved', 'GCash', NULL, 'confirmed'),
(28, 13, 8, 'S2', '2025-07-17 07:03:41', '2025-07-17 07:04:18', 'San Fernando, Pampanga', 'Bikini Bottom', '2025-07-17', '20:00:00', 'approved', 'PayMaya', NULL, 'confirmed'),
(29, 13, 7, 'S1', '2025-07-17 07:05:10', '2025-07-17 07:05:33', 'San Fernando, Pampanga', 'Mabalacat, Pampanga', '2025-07-17', '17:30:00', 'approved', 'PayMaya', NULL, 'confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_0f0fa580e6eca429f3adad4dedb32d01', 'i:1;', 1752697844),
('laravel_cache_0f0fa580e6eca429f3adad4dedb32d01:timer', 'i:1752697844;', 1752697844),
('laravel_cache_4e22c13f9596353025d27267b44449a5', 'i:1;', 1752698294),
('laravel_cache_4e22c13f9596353025d27267b44449a5:timer', 'i:1752698294;', 1752698294),
('laravel_cache_580071baad7b227a20e85017933acecb', 'i:1;', 1752733359),
('laravel_cache_580071baad7b227a20e85017933acecb:timer', 'i:1752733359;', 1752733359),
('laravel_cache_859624d46525eb6a0ed71211601eb538', 'i:1;', 1752730043),
('laravel_cache_859624d46525eb6a0ed71211601eb538:timer', 'i:1752730043;', 1752730043),
('laravel_cache_dc44958e29ffba8b810d21377ae366b5', 'i:1;', 1752730120),
('laravel_cache_dc44958e29ffba8b810d21377ae366b5:timer', 'i:1752730120;', 1752730120),
('laravel_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:0:{}s:11:\"permissions\";a:0:{}s:5:\"roles\";a:0:{}}', 1752780892);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_08_055409_add_two_factor_columns_to_users_table', 1),
(5, '2025_07_08_055452_create_personal_access_tokens_table', 1),
(6, '2025_07_08_055836_create_permission_tables', 2),
(7, '2025_07_08_060726_create_bookings_table', 3),
(8, '2025_07_10_042557_create_trips_table', 4),
(9, '2025_07_10_043322_add_trip_id_to_bookings_table', 5),
(10, '2025_07_10_050618_remove_old_trip_columns_from_bookings_table', 6),
(11, '2025_07_11_053831_add_trip_fields_to_bookings_table', 7),
(12, '2025_07_11_054054_remove_trip_id_from_bookings_table', 8),
(13, '2025_07_11_071303_add_status_to_bookings_table', 9),
(14, '2025_07_12_070951_add_role_to_users_table', 10),
(15, '2025_07_12_115119_add_bus_name_to_trips_table', 11),
(16, '2025_07_12_115716_add_bus_name_to_trips_table', 12),
(17, '2025_07_12_121845_add_seat_capacity_to_trips_table', 13),
(18, '2025_07_12_122142_add_seat_capacity_to_trips_table', 14),
(19, '2025_07_12_170839_add_seat_capacity_to_trips_table', 15),
(20, '2025_07_12_171048_add_price_to_trips_table', 16),
(21, '2025_07_12_144740_add_seat_capacity_to_trips_table', 17),
(25, '2025_07_12_150520_add_price_to_trips_table', 18),
(27, '2025_07_14_092133_add_is_approved_to_users_table', 19),
(28, '2025_07_13_110926_add_status_to_users_table', 20),
(29, '2025_07_14_153326_add_seats_available_to_trips_table', 21),
(31, '2025_07_15_180539_add_payment_method_to_bookings_table', 22),
(32, '2025_07_15_185135_update_payment_status_enum_in_bookings_table', 23);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'web', '2025-07-11 00:52:29', '2025-07-11 00:52:29'),
(2, 'admin', 'web', '2025-07-11 00:52:29', '2025-07-11 00:52:29'),
(3, 'user', 'web', '2025-07-11 00:52:29', '2025-07-11 00:52:29'),
(4, 'super_admin', 'web', '2025-07-16 10:52:05', '2025-07-16 10:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AkGlxbqZwquxQID7nk9XfEYRlscHtnUXqm0poH9p', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiMk9PU2ZMSXVEZ0tseGVwWjhpYWJ6cTJxMmRORUhLeG1OVTZ3U2J4VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi91c2VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRCOU9teGxaLmlvTEJCOFBpVjJsU3BlTTdmZWlwWWxWLjlYczhndHFGVE8vWGkuVzkwTHpRSyI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1752736102),
('CnkR2SlVVSt2vtPJVE96O2rBYW6izx7s6QBPPpwo', 15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUTVxU1JDY2ZOT3pUYTU0TnZsZVBKdkJzY3dWSjNIdldLMXJkUTNIYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9ib29raW5ncyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE1O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkeVhpY1d0d21KeVNPRFJEdlhpc2k0ZTFEOWwwRlNUWWFxUmZsTUN0akc5VkxWRm1RcVd4NEciO30=', 1752736119),
('SeyxVdZamsoXaHdhoWJWoE27md8dl4XJiKIJxHRx', 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiVmZRZTlweXVKVDluR2t6T0t0ZjdqdlBta2dJTnhuYXczVG84VlJCViI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTM7czo3OiJ0cmlwX2lkIjtpOjc7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTIkc2VWRUdmZmRiUGpSSW02Ykx1ZzU2ZXY4YXlldXpvNHYvSlowaThJdmR0MU1IRFVCZFZrbnUiO30=', 1752735972);

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `travel_date` date NOT NULL,
  `travel_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bus_name` varchar(255) DEFAULT NULL,
  `seat_capacity` int(11) NOT NULL DEFAULT 30,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `status` varchar(255) NOT NULL DEFAULT 'approved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `origin`, `destination`, `travel_date`, `travel_time`, `created_at`, `updated_at`, `bus_name`, `seat_capacity`, `price`, `status`) VALUES
(4, 'Tawi tawi', 'Pampanga', '2025-07-15', '21:09:09', '2025-07-14 06:36:17', '2025-07-14 08:11:53', 'BUSBUS', 10, 3000.00, 'approved'),
(5, 'Pangasinan', 'Pampanga', '2025-07-17', '02:00:00', '2025-07-16 09:40:38', '2025-07-16 09:40:38', 'Sky Way to Heaven', 40, 2000.00, 'approved'),
(6, 'Pomel', 'Tarantado', '2025-07-17', '02:22:22', '2025-07-16 09:42:31', '2025-07-16 09:42:31', 'Skibidi dopdop', 24, 500.00, 'approved'),
(7, 'San Fernando, Pampanga', 'Mabalacat, Pampanga', '2025-07-17', '17:30:00', '2025-07-16 21:30:39', '2025-07-16 21:30:39', 'Tralalero Tralala', 6, 2000.00, 'approved'),
(8, 'San Fernando, Pampanga', 'Bikini Bottom', '2025-07-17', '20:00:00', '2025-07-17 06:11:42', '2025-07-17 06:11:42', 'Bombardino Crocodildo', 3, 99999.00, 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `is_approved` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `status`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `role`, `is_approved`) VALUES
(4, 'Super Admin', 'superadmin@example.com', 'approved', NULL, '$2y$12$B9OmxlZ.ioLBB8PiV2lSpeM7feipYlV.9Xs8gtqFTO/Xi.W90LzQK', NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-11 00:39:08', '2025-07-11 23:59:12', 'super_admin', 0),
(5, 'Admin User', 'admin@example.com', 'approved', NULL, '$2y$12$RHeX4Ls0ez3tMJh1HBguHOW1QSkUTT7JDl9VQ6SnMIUHPnpLpP.R.', NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-11 00:39:08', '2025-07-14 06:20:06', 'admin', 1),
(6, 'Normal User', 'user@example.com', 'approved', NULL, '$2y$12$EJT3rXxKRYvDOqglBmwMZOh/mzGnt090NRRGlZ8rqCDYXNeQ//KVS', NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-11 00:39:08', '2025-07-11 00:58:05', 'user', 0),
(7, 'art', 'artmurit@gmail.com', 'pending', NULL, '$2y$12$Ssq9YUkVLXO9SbDnQ/5EUOx5eHNS6FItcSeHJnRcwqa2l0rnzA0.e', NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-12 02:26:09', '2025-07-12 02:26:09', 'user', 0),
(10, 'marvin', 'marvinpamintuan60@gmail.com', 'pending', '2025-07-14 11:05:20', '$2y$12$VnpQm0B9VjvIGc8Q3svB/uM03izwXJ65Ya.NlaDiQz0cHcKvO8kTa', NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-14 11:03:12', '2025-07-14 11:05:20', 'user', 0),
(13, 'Maslam', 'aissiecruz00@gmail.com', 'pending', '2025-07-15 12:16:44', '$2y$12$seVEGffdbPjRIm6bLug56ev8ayeuzo4v/JZ0i8Ivdt1MHDUBdVknu', NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-15 12:13:57', '2025-07-15 12:16:44', 'user', 0),
(14, 'marvin', 'sirabuntok@gmail.com', 'approved', NULL, '$2y$12$yJ3oRdeQacio.YsxELWYE.7cj3to1S8HjBNfy2zxvBy9sayR36jEa', NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-16 10:18:35', '2025-07-16 10:24:35', 'admin', 0),
(15, 'butu', 'tanga23@gmail.com', 'approved', NULL, '$2y$12$yXicWtwmJySODRDvXisi4e1D9l0FSTYaqRflMCtjG9VLVFmQqWx4G', NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-17 07:07:38', '2025-07-17 07:08:12', 'admin', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
