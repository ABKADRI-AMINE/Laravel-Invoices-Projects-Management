-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2023 at 10:34 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoices`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_Date` date DEFAULT NULL,
  `Due_date` date DEFAULT NULL,
  `product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `Amount_collection` decimal(8,2) DEFAULT NULL,
  `Amount_Commission` decimal(8,2) NOT NULL,
  `Discount` decimal(8,2) NOT NULL,
  `Value_VAT` decimal(8,2) NOT NULL,
  `Rate_VAT` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Total` decimal(8,2) NOT NULL,
  `Status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `invoice_Date`, `Due_date`, `product`, `section_id`, `Amount_collection`, `Amount_Commission`, `Discount`, `Value_VAT`, `Rate_VAT`, `Total`, `Status`, `Value_Status`, `note`, `Payment_Date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'M1', '2023-02-24', '2023-02-25', 'جوالات ايفون', 1, '1500.00', '200.00', '100.00', '5.00', '5%', '105.00', 'غير مدفوعة', 2, NULL, NULL, NULL, '2023-02-24 16:34:25', '2023-02-24 16:34:25'),
(2, 'cc', '2023-02-26', '2023-02-27', 'شاشات', 2, '150000.00', '3000.00', '1500.00', '150.00', '10%', '1650.00', 'مدفوعة', 1, NULL, '2023-02-28', NULL, '2023-02-26 13:49:16', '2023-02-26 13:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `invoices_details`
--

CREATE TABLE `invoices_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Invoice` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Section` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `Payment_Date` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices_details`
--

INSERT INTO `invoices_details` (`id`, `id_Invoice`, `invoice_number`, `product`, `Section`, `Status`, `Value_Status`, `Payment_Date`, `note`, `user`, `created_at`, `updated_at`) VALUES
(1, 1, 'M1', 'جوالات ايفون', '1', 'غير مدفوعة', 2, NULL, NULL, 'k12', '2023-02-24 16:34:25', '2023-02-24 16:34:25'),
(2, 2, 'cc', 'شاشات', '2', 'غير مدفوعة', 2, NULL, NULL, 'k12', '2023-02-26 13:49:16', '2023-02-26 13:49:16'),
(9, 2, 'cc', 'شاشات', '2', 'مدفوعة', 1, '2023-02-28', NULL, 'k12', '2023-02-26 13:59:35', '2023-02-26 13:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_attachments`
--

CREATE TABLE `invoice_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Created_by` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2023_01_24_202352_create_sections_table', 1),
(6, '2023_01_25_110837_create_invoices_table', 1),
(7, '2023_01_26_115101_create_products_table', 1),
(8, '2023_01_28_121935_create_invoices_details_table', 1),
(9, '2023_01_28_125832_create_invoice_attachments_table', 1),
(10, '2023_02_24_131340_create_permission_tables', 1),
(11, '2023_02_26_125959_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'الفواتير', 'web', '2023-02-24 14:33:49', '2023-02-24 14:33:49'),
(2, 'قائمة الفواتير', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(3, 'الفواتير المدفوعة', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(4, 'الفواتير المدفوعة جزئيا', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(5, 'الفواتير الغير مدفوعة', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(6, 'ارشيف الفواتير', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(7, 'التقارير', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(8, 'تقرير الفواتير', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(9, 'تقرير العملاء', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(10, 'المستخدمين', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(11, 'قائمة المستخدمين', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(12, 'صلاحيات المستخدمين', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(13, 'الاعدادات', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(14, 'المنتجات', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(15, 'الاقسام', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(16, 'اضافة فاتورة', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(17, 'حذف الفاتورة', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(18, 'تصدير EXCEL', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(19, 'تغير حالة الدفع', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(20, 'تعديل الفاتورة', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(21, 'ارشفة الفاتورة', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(22, 'طباعةالفاتورة', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(23, 'اضافة مرفق', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(24, 'حذف المرفق', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(25, 'اضافة مستخدم', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(26, 'تعديل مستخدم', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(27, 'حذف مستخدم', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(28, 'عرض صلاحية', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(29, 'اضافة صلاحية', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(30, 'تعديل صلاحية', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(31, 'حذف صلاحية', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(32, 'اضافة منتج', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(33, 'تعديل منتج', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(34, 'حذف منتج', 'web', '2023-02-24 14:33:50', '2023-02-24 14:33:50'),
(35, 'اضافة قسم', 'web', '2023-02-24 14:33:51', '2023-02-24 14:33:51'),
(36, 'تعديل قسم', 'web', '2023-02-24 14:33:51', '2023-02-24 14:33:51'),
(37, 'حذف قسم', 'web', '2023-02-24 14:33:51', '2023-02-24 14:33:51'),
(38, 'الاشعارات', 'web', '2023-02-24 14:33:51', '2023-02-24 14:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Product_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Product_name`, `description`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 'جوالات ايفون', '--', 1, '2023-02-24 16:33:27', '2023-02-24 16:33:27'),
(2, 'شاشات', '***', 2, '2023-02-24 16:33:44', '2023-02-24 16:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'web', '2023-02-24 14:33:59', '2023-02-24 14:33:59'),
(2, 'user', 'web', '2023-02-24 14:36:33', '2023-02-24 14:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_by` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section_name`, `description`, `Created_by`, `created_at`, `updated_at`) VALUES
(1, 'محمد', '--', 'k12', '2023-02-24 16:32:27', '2023-02-24 16:32:27'),
(2, 'كرم', '*', 'k12', '2023-02-24 16:32:50', '2023-02-24 16:32:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'مفعل',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `roles_name`, `Status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mohammed', 'mohammed@gmail.com', NULL, '$2y$10$Lwozx46BENFr2TPx/lNFl.5g5twx8fz.6wOKR5VD9XoyumMfLE5mG', '[\"owner\"]', 'مفعل', NULL, '2023-02-24 14:33:59', '2023-02-24 14:33:59'),
(2, 'pal', 'pal@gmail.com', NULL, '$2y$10$j0XhazDZiGM2Ibinxj1qNepMgG0zzfrOXBvGpX3o21gNgfqQsCQoW', '[\"user\"]', 'مفعل', 'pTSiFNkb9g8gdaKCErlHJniZukxyFJ3qjPw0E0H94kWZTuHr5NO0pAz0aZcq', '2023-02-24 14:34:04', '2023-02-24 14:34:04'),
(3, 'k12', 'k@gmail.com', NULL, '$2y$10$di.EDRvI38ZFgHCBG2PNX.M76YKo2Xp2UnEUh98NHpv0PCsZ8v/ue', '[\"user\"]', 'مفعل', '7a4eOLTAOdToq4siBaRoy8tGqjEbBUNVF0RQH2wrWarWC7nzI5jAZ5OsumU8', '2023-02-24 14:39:06', '2023-02-24 15:15:15');

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
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_section_id_foreign` (`section_id`);

--
-- Indexes for table `invoices_details`
--
ALTER TABLE `invoices_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_details_id_invoice_foreign` (`id_Invoice`);

--
-- Indexes for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_attachments_invoice_id_foreign` (`invoice_id`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_section_id_foreign` (`section_id`);

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
-- Indexes for table `sections`
--
ALTER TABLE `sections`
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
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `invoices_details`
--
ALTER TABLE `invoices_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices_details`
--
ALTER TABLE `invoices_details`
  ADD CONSTRAINT `invoices_details_id_invoice_foreign` FOREIGN KEY (`id_Invoice`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD CONSTRAINT `invoice_attachments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

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
