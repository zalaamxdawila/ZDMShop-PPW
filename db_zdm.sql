-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 05, 2024 at 11:23 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_zdm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(3, 1, 1, '2024-06-23 03:01:30', '2024-06-23 03:01:30'),
(8, 1, 12, '2024-06-23 04:10:40', '2024-06-23 04:10:40'),
(18, 5, 12, '2024-06-23 10:01:54', '2024-06-23 10:01:54'),
(19, 5, 5, '2024-06-23 10:01:57', '2024-06-23 10:01:57'),
(20, 5, 6, '2024-06-23 10:12:35', '2024-06-23 10:12:35'),
(29, 3, 1, '2024-07-10 22:51:36', '2024-07-10 22:51:36'),
(30, 3, 2, '2024-07-10 23:03:07', '2024-07-10 23:03:07'),
(31, 3, 2, '2024-07-10 23:05:40', '2024-07-10 23:05:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(7, 'Computers', '2024-06-22 00:40:01', '2024-06-22 00:40:01'),
(8, 'Electronics', '2024-06-22 00:40:09', '2024-06-22 00:40:09'),
(10, 'Laptops', '2024-06-22 01:24:09', '2024-06-22 01:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_22_064419_create_categories_table', 2),
(5, '2024_06_22_114438_create_products_table', 3),
(6, '2024_06_23_093620_create_carts_table', 4),
(7, '2024_06_23_112711_create_orders_table', 5),
(8, '2024_06_23_153005_add_payment_status_to_orders_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rec_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in progress',
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash on delivery',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `rec_address`, `phone`, `status`, `user_id`, `product_id`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'M Dicky Desriansyah', 'USA', '1242341323', 'On the way', 3, 4, 'cash on delivery', '2024-06-23 05:19:46', '2024-06-23 06:29:58'),
(2, 'M Dicky Desriansyah', 'USA', '1242341323', 'Delivered', 3, 6, 'cash on delivery', '2024-06-23 05:19:46', '2024-06-23 06:30:04'),
(3, 'Dicky', 'Unidha', '12432', 'in progress', 4, 2, 'cash on delivery', '2024-06-23 08:10:58', '2024-06-23 08:10:58'),
(4, 'Dicky', 'Unidha', '12432', 'On the way', 4, 6, 'cash on delivery', '2024-06-23 08:10:58', '2024-06-24 09:34:29'),
(5, 'Dicky', 'Unidha', '12432', 'in progress', 4, 3, 'cash on delivery', '2024-06-23 08:10:58', '2024-06-23 08:10:58'),
(6, 'Dicky', 'Unidha', '12432', 'in progress', 4, 4, 'cash on delivery', '2024-06-23 08:10:58', '2024-06-23 08:10:58'),
(7, 'Dicky', 'Unidha', '12432', 'in progress', 4, 5, 'cash on delivery', '2024-06-23 08:10:58', '2024-06-23 08:10:58'),
(8, 'misari', 'UNIDHA', '08526666751', 'in progress', 6, 1, 'cash on delivery', '2024-06-23 22:20:43', '2024-06-23 22:20:43'),
(9, 'M Dicky Desriansyah', 'USA', '1242341323', 'in progress', 3, 6, 'cash on delivery', '2024-06-24 09:13:30', '2024-06-24 09:13:30'),
(10, 'M Dicky Desriansyah', 'USA', '1242341323', 'in progress', 3, 2, 'cash on delivery', '2024-06-24 09:49:18', '2024-06-24 09:49:18'),
(11, 'M Dicky Desriansyah', 'USA', '1242341323', 'in progress', 3, 3, 'cash on delivery', '2024-06-24 09:49:18', '2024-06-24 09:49:18'),
(12, 'M Dicky Desriansyah', 'USA', '1242341323', 'in progress', 3, 4, 'cash on delivery', '2024-06-24 09:49:18', '2024-06-24 09:49:18'),
(13, 'M Dicky Desriansyah', 'USA', '1242341323', 'in progress', 3, 1, 'cash on delivery', '2024-06-24 09:49:18', '2024-06-24 09:49:18'),
(14, 'M Dicky Desriansyah', 'USA', '1242341323', 'in progress', 3, 2, 'cash on delivery', '2024-07-09 05:11:35', '2024-07-09 05:11:35'),
(15, 'M Dicky Desriansyah', 'USA', '1242341323', 'in progress', 3, 1, 'cash on delivery', '2024-07-09 05:11:35', '2024-07-09 05:11:35'),
(16, 'misari', 'UNIDHA', '08526666751', 'in progress', 6, 2, 'cash on delivery', '2024-07-10 23:08:52', '2024-07-10 23:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$12$bxq6Fv4T/Re5/PUzJpIdeugi874oekcr2IQl0RZ1DB18VxTwA1oJa', '2024-10-05 04:15:11'),
('deepzalaam7@gmail.com', '$2y$12$q2DIY7FIz8NT42XM.ntQEeic09vvJb.wKjQ9pFYWsPSYlH0LLHF4q', '2024-06-23 08:09:11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `price`, `category`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'Acer Nitro 5', 'Acer Nitro adalah lini laptop gaming yang terkenal dengan performa tinggi dan harga terjangkau. Ditenagai oleh prosesor Intel atau AMD terbaru, GPU NVIDIA, dan fitur-fitur seperti layar refresh rate tinggi dan pendinginan efisien, laptop ini ideal untuk gaming dan multitasking berat.', '1719130854.png', '10000000', 'Laptops', '10', '2024-06-22 05:43:44', '2024-06-23 01:20:54'),
(2, 'Monitor Asus', 'Monitor adalah perangkat output visual yang menampilkan informasi dari komputer. Tersedia dalam berbagai ukuran dan resolusi, monitor digunakan untuk produktivitas, gaming, dan multimedia. Teknologi seperti LED, IPS, dan OLED meningkatkan kualitas gambar. Konektivitas umum meliputi HDMI, DisplayPort, dan USB-C.', '1719062231.png', '3000000', 'Computers', '26', '2024-06-22 06:17:11', '2024-06-23 01:21:49'),
(3, 'Mouse RGB', 'Mouse adalah perangkat input komputer yang mengontrol kursor pada layar. Menggunakan sensor optik atau laser untuk mendeteksi gerakan, mouse memiliki tombol untuk klik dan roda gulir untuk navigasi. Berbagai jenis termasuk mouse kabel, nirkabel, dan gaming dengan tombol tambahan dan sensitivitas tinggi.', '1719062755.png', '300000', 'Computers', '400', '2024-06-22 06:25:55', '2024-06-23 01:22:14'),
(4, 'Keyboard RGB', 'Keyboard RGB adalah papan ketik dengan lampu latar yang dapat berubah warna. Setiap tombol memiliki LED yang dapat dikustomisasi untuk berbagai efek dan warna melalui perangkat lunak. Populer di kalangan gamer dan penggemar estetika, keyboard ini meningkatkan pengalaman visual dan memudahkan penggunaan dalam gelap.', '1719062819.png', '500000', 'Computers', '300', '2024-06-22 06:26:59', '2024-06-23 01:22:47'),
(5, 'Electric Plug', 'Electric plug adalah perangkat yang menghubungkan peralatan listrik ke sumber daya melalui soket. Terdiri dari dua atau tiga pin untuk konduksi listrik, plug memastikan arus mengalir ke perangkat. Standar dan bentuk bervariasi antar negara. Penting untuk mengoperasikan peralatan listrik dengan aman dan efisien.', '1719062855.png', '30000', 'Electronics', '700', '2024-06-22 06:27:35', '2024-06-23 01:23:29'),
(6, 'Personal Computer(PC) Gaming & Editing', 'PC gaming & editing adalah komputer berperforma tinggi yang dirancang untuk bermain game dan mengedit multimedia. Dilengkapi prosesor kuat, GPU canggih, RAM besar, dan penyimpanan cepat. Mendukung grafis intensif dan multitasking berat, menjadikannya ideal untuk gamer, desainer, dan kreator konten profesional.', '1719062921.png', '20000000', 'Computers', '5', '2024-06-22 06:28:41', '2024-06-23 01:24:04'),
(11, 'Photo Presser', 'Photo presser adalah perangkat atau perangkat lunak untuk mencetak foto. Menggunakan teknologi inkjet atau laser, alat ini menghasilkan gambar berkualitas tinggi dari file digital. Umumnya digunakan oleh fotografer, desainer, dan pengguna rumahan untuk membuat cetakan fisik dari foto atau karya seni digital.', '1719128298.png', '2500000', 'Computers', '34', '2024-06-23 00:38:18', '2024-06-23 01:24:58'),
(12, 'Printer', 'Printer adalah perangkat output yang menghasilkan salinan fisik dari dokumen atau gambar digital. Menggunakan teknologi inkjet, laser, atau thermal, printer mencetak pada kertas atau media lain. Digunakan di rumah, kantor, dan industri, printer memudahkan pembuatan laporan, foto, dan materi pemasaran.', '1719131155.png', '2000000', 'Electronics', '37', '2024-06-23 01:25:55', '2024-06-23 01:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8DCnHfMMELHUbNHCJYssE0sgCtjMEckIxy0PifVl', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoia2NINnJoSVMyY2RndzVWRGNBVE5kZ1A5UWRMWnVCUWhRZTJyQkRrVCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNToiaHR0cDovL3pkbXNob3AtcHB3LnRlc3Qvdmlld19vcmRlcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1728127025);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', 'user', '1525548', 'canada', NULL, '$2y$12$/SagudAeUwM54sCh4ftWkut7TJiUSQcLjKzWi4W3m7f4Qmm7RFcTm', NULL, '2024-06-21 02:44:28', '2024-06-21 02:44:28'),
(2, 'admin', 'admin@gmail.com', 'admin', '14485418', 'USA', NULL, '$2y$12$xy8gjWlEnbr7E3c4iI2tDuPSw0QqWRijuJObDj0tKM8hgjmZDHtmS', NULL, '2024-06-21 02:46:14', '2024-06-21 02:46:14'),
(3, 'user2', 'user2@gmail.com', 'user', '1242341323', 'USA', NULL, '$2y$12$Av132kmGWnnp2Ub9pXhUc.SKGyBvfVdoGsCzIcNDzOPu6R7E/LaDC', NULL, '2024-06-23 01:39:54', '2024-06-23 01:39:54'),
(4, 'user3', 'user3@gmail.com', 'user', '12432', 'SWISS', NULL, '$2y$12$AYO7ZAEvt5iE6F.1Ug68.O5R3ffeWE5pidH6mPCCl6WvDB7eGg6g6', NULL, '2024-06-23 08:08:58', '2024-06-23 08:08:58'),
(5, 'user4', 'user4@gmail.com', 'user', '32421432', 'UNIDHA', NULL, '$2y$12$79/tRSBzSW5h0PDfsJGCDujSjTO26OSQ/QUi69H67Hf7GTxjWdRZG', NULL, '2024-06-23 10:01:35', '2024-06-23 10:01:35'),
(6, 'user5', 'user5@gmail.com', 'user', '7368', 'UNIDHA', NULL, '$2y$12$W6F44JMSHmbcDaFb4wVdueDSzZWPKFDHb5mjtQxacphbJzgc9E7NG', NULL, '2024-06-23 22:19:44', '2024-06-23 22:19:44');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
