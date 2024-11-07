-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 07, 2024 at 05:06 AM
-- Server version: 10.11.9-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u536447607_deotaxi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(60) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`, `country_code`, `country_id`, `mobile_number`, `remember_token`, `status`, `paid`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Marinaapp', 'dreamzcoderdgl@gmail.com', '$2y$10$SOKIkQn39RCt7X.Op.Mr0.tZEy19BCt/dthOYmzTsf1KUNzOsI8gW', '91', 99, '8607248802', NULL, 'Active', 0, '2022-02-18 12:35:20', '2023-10-25 08:17:20', NULL),
(2, 'rideinsuper', 'ankit.sinha19@gmail.com', '$2y$10$kUV/bQs1RLVqesZF12POM.xJJGGWSOdECmE.SKOh5/2ewrwHsvqHu', '91', 99, '8607248802', NULL, 'Active', 0, '2024-01-15 22:13:51', '2024-01-15 22:15:09', NULL),
(3, 'vasanth', 'vasanthkumar8122003@gmail', '$2y$10$BXzV.r0chnCW6f8Uim/Zvu053XNZnY94Z16Q6kCrRuhEJJxQMgBj2', '91', 99, '9940825170', NULL, 'Active', 0, '2024-04-06 02:01:28', '2024-06-02 01:53:26', NULL),
(4, 'ilava', 'ilavarasani847@gmail.com', '$2y$10$8WGNPXLKKHmEhFOfQ59Ck.8b2dbitREJ/K5CVfHssyC/Yf6PrMrKi', '91', 99, '9865514088', NULL, 'Active', 0, '2024-04-21 03:50:06', '2024-04-21 03:50:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `api_credentials`
--

CREATE TABLE `api_credentials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `site` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_credentials`
--

INSERT INTO `api_credentials` (`id`, `name`, `value`, `site`) VALUES
(1, 'key', 'AIzaSyDNZMjI6BykptQrTCZJiPX2iEwBmd9UZUU', 'GoogleMap'),
(2, 'server_key', 'AIzaSyDNZMjI6BykptQrTCZJiPX2iEwBmd9UZUU', 'GoogleMap'),
(3, 'sid', '#', 'Twillo'),
(4, 'token', '#', 'Twillo'),
(5, 'service_sid', '#', 'Twillo'),
(6, 'from', '#', 'Twillo'),
(7, 'server_key', 'AAAAGGM3l60:APA91bHe6Jz2eyEA4RBVZL_J_S8eNL7rNpKbfZegak0-WOwVGTZdA96FiJXxoiiXXkG3PuB4cB3SCgN-VH0VaKxGe3GUnBr3A1VeRtGCDt1F1nk4hE-f2z0AVVW9ZiquB2iWptHiomk_', 'FCM'),
(8, 'sender_id', '104743802797', 'FCM'),
(9, 'client_id', NULL, 'Facebook'),
(10, 'client_secret', NULL, 'Facebook'),
(11, 'client_id', NULL, 'Google'),
(12, 'client_secret', NULL, 'Google'),
(13, 'sinch_key', '#', 'Sinch'),
(14, 'sinch_secret_key', '#', 'Sinch'),
(15, 'service_id', '#', 'Apple'),
(16, 'team_id', '#', 'Apple'),
(17, 'key_id', '#', 'Apple'),
(18, 'key_file', '#', 'Apple'),
(19, 'database_url', 'https://buskart-74be5-default-rtdb.firebaseio.com/', 'Firebase'),
(20, 'service_account', '/resources/credentials//service_account.json', 'Firebase'),
(21, 'site_key', '#', 'Recaptcha'),
(22, 'secret_key', '#', 'Recaptcha');

-- --------------------------------------------------------

--
-- Table structure for table `applied_referrals`
--

CREATE TABLE `applied_referrals` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `currency_code` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_version`
--

CREATE TABLE `app_version` (
  `id` int(10) UNSIGNED NOT NULL,
  `version` decimal(10,2) NOT NULL,
  `device_type` tinyint(4) NOT NULL,
  `user_type` tinyint(4) NOT NULL,
  `force_update` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_version`
--

INSERT INTO `app_version` (`id`, `version`, `device_type`, `user_type`, `force_update`, `created_at`, `updated_at`) VALUES
(1, 1.00, 2, 0, 0, '2022-06-20 12:57:08', '2024-06-08 17:02:23'),
(2, 1.00, 2, 1, 0, '2022-06-20 12:57:27', '2024-06-08 17:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `cancel`
--

CREATE TABLE `cancel` (
  `id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `cancel_reason_id` int(10) UNSIGNED NOT NULL,
  `cancel_comments` text NOT NULL,
  `cancelled_by` enum('Rider','Driver') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cancel`
--

INSERT INTO `cancel` (`id`, `trip_id`, `user_id`, `cancel_reason_id`, `cancel_comments`, `cancelled_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, 10021, 1, 'theva', 'Rider', '2024-05-11 13:52:23', '2024-05-11 13:52:23', NULL),
(2, 7, 10030, 5, '', 'Driver', '2024-05-11 14:12:32', '2024-05-11 14:12:32', NULL),
(3, 10, 10021, 1, '', 'Rider', '2024-05-14 12:12:45', '2024-05-14 12:12:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cancel_reasons`
--

CREATE TABLE `cancel_reasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `reason` varchar(100) NOT NULL,
  `cancelled_by` enum('Rider','Driver','Admin','Company') DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cancel_reasons`
--

INSERT INTO `cancel_reasons` (`id`, `reason`, `cancelled_by`, `status`) VALUES
(1, 'Driver Not Available', 'Rider', 'Active'),
(2, 'Driver not respond proper	', 'Rider', 'Active'),
(3, 'Wrong Route', 'Rider', 'Active'),
(4, 'Rider Not Available', 'Driver', 'Active'),
(5, 'Rider not respond proper', 'Driver', 'Active'),
(6, 'Rider not yet come', 'Driver', 'Active'),
(7, 'Rider ask for Cancel', 'Admin', 'Active'),
(8, 'Other Reasons', 'Admin', 'Active'),
(9, 'Rider Cancelled', 'Company', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cancel_reason_translations`
--

CREATE TABLE `cancel_reason_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `cancel_reason_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(5) NOT NULL,
  `reason` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `car_type`
--

CREATE TABLE `car_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `car_name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `vehicle_image` varchar(191) NOT NULL,
  `active_image` varchar(191) NOT NULL,
  `app_image` varchar(191) NOT NULL,
  `is_pool` enum('Yes','No') NOT NULL DEFAULT 'No',
  `status` enum('Active','Inactive') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_type`
--

INSERT INTO `car_type` (`id`, `car_name`, `description`, `vehicle_image`, `active_image`, `app_image`, `is_pool`, `status`) VALUES
(1, 'Hatchback', 'WagonR, Swift or Similar', 'vehicle_image_1698220372.png', 'active_image_1698220372.png', 'app_image_1698220372.png', 'No', 'Active'),
(2, 'Sedan', 'Dzire, Etios Or Similar', 'vehicle_image_1698220424.png', 'active_image_1698220424.png', 'app_image_1698220424.png', 'No', 'Active'),
(3, 'Suv', 'Xylo, Innova Or Similar', 'vehicle_image_1698220467.png', 'active_image_1698220467.png', 'app_image_1698220467.png', 'No', 'Active'),
(4, 'Shared', 'Dzire, Etios Or Similar', 'vehicle_image_1698220519.png', 'active_image_1698220519.png', 'app_image_1698220519.png', 'Yes', 'Active'),
(5, 'Auto', 'Bajaj, Piaggio or Similar', 'vehicle_image_1698220558.png', 'active_image_1698220558.png', 'app_image_1698220558.png', 'No', 'Active'),
(6, 'Bike', 'Splendor, Activa or Similar', 'vehicle_image_1698220631.png', 'active_image_1698220631.png', 'app_image_1698220631.png', 'No', 'Active'),
(7, 'E-Rickshaw', 'Mahindra, Udaan or similar', 'vehicle_image_1698220686.png', 'active_image_1698220686.png', 'app_image_1698220686.png', 'No', 'Active'),
(8, 'Bus', 'bus', 'vehicle_image_1715423276.jpg', 'active_image_1715423276.jpg', 'app_image_1715423276.png', 'No', 'Active'),
(9, 'Tempo Traveller', 'Tempo Traveller', 'vehicle_image_1716163961.jpeg', 'active_image_1716163961.jpeg', 'app_image_1716163961.jpeg', 'Yes', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `country_code` varchar(100) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `vat_number` varchar(100) DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `status` enum('Pending','Active','Inactive') NOT NULL DEFAULT 'Pending',
  `device_type` enum('1','2') DEFAULT NULL,
  `device_id` text NOT NULL,
  `language` varchar(50) NOT NULL,
  `address` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `postal_code` varchar(191) DEFAULT NULL,
  `company_commission` varchar(5) NOT NULL DEFAULT '0',
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `profile`, `email`, `country_code`, `mobile_number`, `vat_number`, `password`, `remember_token`, `status`, `device_type`, `device_id`, `language`, `address`, `city`, `state`, `country`, `postal_code`, `company_commission`, `country_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '', 'admin@dc.in', '91', '9999999999', NULL, '$2y$10$VRsBUxH84yuXPE9lqp/M5uGpt3oEV4tVRvGpB65R4QkdybwYI8NPS', NULL, 'Active', NULL, '', '', 'india', NULL, NULL, '91', '10032140000', '', 99, '2016-04-16 22:00:00', '2024-03-26 16:54:48', NULL),
(7, 'parthi', '', 'parthiv@gmail.com', '91', '9876543210', NULL, '$2y$10$zUg4d2U5aGN7S4OxnQTr5Os8/VHw1nDE1HihU.JQM1MCALUnT.lTW', NULL, 'Active', NULL, '', '', 'dindigul', 'dindigul', 'tamilnadu', '91', '624001', '6', 99, '2024-04-01 04:52:35', '2024-05-10 12:20:45', NULL),
(9, 'Ilavarasan', '', 'ilavarasani847@gmail.com', '91', '9865514088', 'BKT0123', '$2y$10$T9JqjxXimzsfWghUeezk2.LueK/65dwT2P6S867PTSqzUzl2L0PFK', NULL, 'Active', NULL, '', '', 'peelamedu covai', 'coimbatore', 'india', '91', '641028', '30', 99, '2024-04-21 04:12:45', '2024-04-21 04:14:07', NULL),
(10, 'PALANISAMY', 'https://buskart.in/book/public/images/companies/10/profile_1715428574.jpg', 'vasanthkumar822003@gmail.com', '91', '9865514077', NULL, '$2y$10$83uz6HnJ2wuc7zca0aOmSey75QcZQgW4a3D1nacdmX38.Q9jtqByO', NULL, 'Active', NULL, '', '', 'peelamedu covai', 'coimbatore', 'tamilnadu', '91', '641028', '20', 99, '2024-05-11 11:56:14', '2024-05-13 04:26:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_documents`
--

CREATE TABLE `company_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(50) NOT NULL,
  `document` text NOT NULL,
  `expired_date` date DEFAULT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_payout_credentials`
--

CREATE TABLE `company_payout_credentials` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `preference_id` varchar(10) NOT NULL,
  `default` enum('no','yes') NOT NULL,
  `type` varchar(30) NOT NULL,
  `payout_id` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_payout_preference`
--

CREATE TABLE `company_payout_preference` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `address1` varchar(191) NOT NULL,
  `address2` varchar(191) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `postal_code` varchar(25) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `payout_method` varchar(20) NOT NULL,
  `paypal_email` varchar(191) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `routing_number` varchar(100) DEFAULT NULL,
  `account_number` varchar(100) DEFAULT NULL,
  `holder_name` varchar(100) NOT NULL,
  `holder_type` enum('Individual','Company') NOT NULL,
  `document_id` varchar(100) DEFAULT NULL,
  `document_image` varchar(100) DEFAULT NULL,
  `additional_document_id` varchar(100) DEFAULT NULL,
  `additional_document_image` varchar(100) DEFAULT NULL,
  `phone_number` varchar(100) DEFAULT NULL,
  `address_kanji` varchar(255) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `bank_location` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `branch_code` varchar(100) DEFAULT NULL,
  `ssn_last_4` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) UNSIGNED NOT NULL,
  `short_name` varchar(5) NOT NULL,
  `long_name` varchar(100) NOT NULL,
  `iso3` varchar(10) DEFAULT NULL,
  `num_code` varchar(10) DEFAULT NULL,
  `phone_code` varchar(10) NOT NULL,
  `stripe_country` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `short_name`, `long_name`, `iso3`, `num_code`, `phone_code`, `stripe_country`) VALUES
(1, 'AF', 'Afghanistan', 'AFG', '4', '93', 'No'),
(2, 'AL', 'Albania', 'ALB', '8', '355', 'No'),
(3, 'DZ', 'Algeria', 'DZA', '12', '213', 'No'),
(4, 'AS', 'American Samoa', 'ASM', '16', '1', 'No'),
(5, 'AD', 'Andorra', 'AND', '20', '376', 'No'),
(6, 'AO', 'Angola', 'AGO', '24', '244', 'No'),
(7, 'AI', 'Anguilla', 'AIA', '660', '1', 'No'),
(8, 'AQ', 'Antarctica', NULL, NULL, '0', 'No'),
(9, 'AG', 'Antigua and Barbuda', 'ATG', '28', '1', 'No'),
(10, 'AR', 'Argentina', 'ARG', '32', '54', 'No'),
(11, 'AM', 'Armenia', 'ARM', '51', '374', 'No'),
(12, 'AW', 'Aruba', 'ABW', '533', '297', 'No'),
(13, 'AU', 'Australia', 'AUS', '36', '61', 'Yes'),
(14, 'AT', 'Austria', 'AUT', '40', '43', 'Yes'),
(15, 'AZ', 'Azerbaijan', 'AZE', '31', '994', 'No'),
(16, 'BS', 'Bahamas', 'BHS', '44', '1', 'No'),
(17, 'BH', 'Bahrain', 'BHR', '48', '973', 'No'),
(18, 'BD', 'Bangladesh', 'BGD', '50', '880', 'No'),
(19, 'BB', 'Barbados', 'BRB', '52', '1', 'No'),
(20, 'BY', 'Belarus', 'BLR', '112', '375', 'No'),
(21, 'BE', 'Belgium', 'BEL', '56', '32', 'Yes'),
(22, 'BZ', 'Belize', 'BLZ', '84', '501', 'No'),
(23, 'BJ', 'Benin', 'BEN', '204', '229', 'No'),
(24, 'BM', 'Bermuda', 'BMU', '60', '1', 'No'),
(25, 'BT', 'Bhutan', 'BTN', '64', '975', 'No'),
(26, 'BO', 'Bolivia', 'BOL', '68', '591', 'No'),
(27, 'BA', 'Bosnia and Herzegovina', 'BIH', '70', '387', 'No'),
(28, 'BW', 'Botswana', 'BWA', '72', '267', 'No'),
(29, 'BV', 'Bouvet Island', NULL, NULL, '0', 'No'),
(30, 'BR', 'Brazil', 'BRA', '76', '55', 'No'),
(31, 'IO', 'British Indian Ocean Territory', NULL, NULL, '246', 'No'),
(32, 'BN', 'Brunei Darussalam', 'BRN', '96', '673', 'No'),
(33, 'BG', 'Bulgaria', 'BGR', '100', '359', 'No'),
(34, 'BF', 'Burkina Faso', 'BFA', '854', '226', 'No'),
(35, 'BI', 'Burundi', 'BDI', '108', '257', 'No'),
(36, 'KH', 'Cambodia', 'KHM', '116', '855', 'No'),
(37, 'CM', 'Cameroon', 'CMR', '120', '237', 'No'),
(38, 'CA', 'Canada', 'CAN', '124', '1', 'Yes'),
(39, 'CV', 'Cape Verde', 'CPV', '132', '238', 'No'),
(40, 'KY', 'Cayman Islands', 'CYM', '136', '1', 'No'),
(41, 'CF', 'Central African Republic', 'CAF', '140', '236', 'No'),
(42, 'TD', 'Chad', 'TCD', '148', '235', 'No'),
(43, 'CL', 'Chile', 'CHL', '152', '56', 'No'),
(44, 'CN', 'China', 'CHN', '156', '86', 'No'),
(45, 'CX', 'Christmas Island', NULL, NULL, '61', 'No'),
(46, 'CC', 'Cocos (Keeling) Islands', NULL, NULL, '672', 'No'),
(47, 'CO', 'Colombia', 'COL', '170', '57', 'No'),
(48, 'KM', 'Comoros', 'COM', '174', '269', 'No'),
(49, 'CG', 'Congo', 'COG', '178', '242', 'No'),
(50, 'CD', 'Democratic Republic of the Congo', 'COD', '180', '242', 'No'),
(51, 'CK', 'Cook Islands', 'COK', '184', '682', 'No'),
(52, 'CR', 'Costa Rica', 'CRI', '188', '506', 'No'),
(53, 'CI', 'Cote D\'Ivoire', 'CIV', '384', '225', 'No'),
(54, 'HR', 'Croatia', 'HRV', '191', '385', 'No'),
(55, 'CU', 'Cuba', 'CUB', '192', '53', 'No'),
(56, 'CY', 'Cyprus', 'CYP', '196', '357', 'No'),
(57, 'CZ', 'Czech Republic', 'CZE', '203', '420', 'No'),
(58, 'DK', 'Denmark', 'DNK', '208', '45', 'Yes'),
(59, 'DJ', 'Djibouti', 'DJI', '262', '253', 'No'),
(60, 'DM', 'Dominica', 'DMA', '212', '1', 'No'),
(61, 'DO', 'Dominican Republic', 'DOM', '214', '1', 'No'),
(62, 'EC', 'Ecuador', 'ECU', '218', '593', 'No'),
(63, 'EG', 'Egypt', 'EGY', '818', '20', 'No'),
(64, 'SV', 'El Salvador', 'SLV', '222', '503', 'No'),
(65, 'GQ', 'Equatorial Guinea', 'GNQ', '226', '240', 'No'),
(66, 'ER', 'Eritrea', 'ERI', '232', '291', 'No'),
(67, 'EE', 'Estonia', 'EST', '233', '372', 'No'),
(68, 'ET', 'Ethiopia', 'ETH', '231', '251', 'No'),
(69, 'FK', 'Falkland Islands (Malvinas)', 'FLK', '238', '500', 'No'),
(70, 'FO', 'Faroe Islands', 'FRO', '234', '298', 'No'),
(71, 'FJ', 'Fiji', 'FJI', '242', '679', 'No'),
(72, 'FI', 'Finland', 'FIN', '246', '358', 'Yes'),
(73, 'FR', 'France', 'FRA', '250', '33', 'Yes'),
(74, 'GF', 'French Guiana', 'GUF', '254', '594', 'No'),
(75, 'PF', 'French Polynesia', 'PYF', '258', '689', 'No'),
(76, 'TF', 'French Southern Territories', NULL, NULL, '0', 'No'),
(77, 'GA', 'Gabon', 'GAB', '266', '241', 'No'),
(78, 'GM', 'Gambia', 'GMB', '270', '220', 'No'),
(79, 'GE', 'Georgia', 'GEO', '268', '995', 'No'),
(80, 'DE', 'Germany', 'DEU', '276', '49', 'Yes'),
(81, 'GH', 'Ghana', 'GHA', '288', '233', 'No'),
(82, 'GI', 'Gibraltar', 'GIB', '292', '350', 'No'),
(83, 'GR', 'Greece', 'GRC', '300', '30', 'No'),
(84, 'GL', 'Greenland', 'GRL', '304', '299', 'No'),
(85, 'GD', 'Grenada', 'GRD', '308', '1', 'No'),
(86, 'GP', 'Guadeloupe', 'GLP', '312', '590', 'No'),
(87, 'GU', 'Guam', 'GUM', '316', '1', 'No'),
(88, 'GT', 'Guatemala', 'GTM', '320', '502', 'No'),
(89, 'GN', 'Guinea', 'GIN', '324', '224', 'No'),
(90, 'GW', 'Guinea-Bissau', 'GNB', '624', '245', 'No'),
(91, 'GY', 'Guyana', 'GUY', '328', '592', 'No'),
(92, 'HT', 'Haiti', 'HTI', '332', '509', 'No'),
(93, 'HM', 'Heard Island and Mcdonald Islands', NULL, NULL, '0', 'No'),
(94, 'VA', 'Holy See (Vatican City State)', 'VAT', '336', '39', 'No'),
(95, 'HN', 'Honduras', 'HND', '340', '504', 'No'),
(96, 'HK', 'Hong Kong', 'HKG', '344', '852', 'Yes'),
(97, 'HU', 'Hungary', 'HUN', '348', '36', 'No'),
(98, 'IS', 'Iceland', 'ISL', '352', '354', 'No'),
(99, 'IN', 'India', 'IND', '356', '91', 'No'),
(100, 'ID', 'Indonesia', 'IDN', '360', '62', 'No'),
(101, 'IR', 'Iran, Islamic Republic of', 'IRN', '364', '98', 'No'),
(102, 'IQ', 'Iraq', 'IRQ', '368', '964', 'No'),
(103, 'IE', 'Ireland', 'IRL', '372', '353', 'Yes'),
(104, 'IL', 'Israel', 'ISR', '376', '972', 'No'),
(105, 'IT', 'Italy', 'ITA', '380', '39', 'Yes'),
(106, 'JM', 'Jamaica', 'JAM', '388', '1', 'No'),
(107, 'JP', 'Japan', 'JPN', '392', '81', 'Yes'),
(108, 'JO', 'Jordan', 'JOR', '400', '962', 'No'),
(109, 'KZ', 'Kazakhstan', 'KAZ', '398', '7', 'No'),
(110, 'KE', 'Kenya', 'KEN', '404', '254', 'No'),
(111, 'KI', 'Kiribati', 'KIR', '296', '686', 'No'),
(112, 'KP', 'Korea, Democratic People\'s Republic of', 'PRK', '408', '850', 'No'),
(113, 'KR', 'Korea, Republic of', 'KOR', '410', '82', 'No'),
(114, 'KW', 'Kuwait', 'KWT', '414', '965', 'No'),
(115, 'KG', 'Kyrgyzstan', 'KGZ', '417', '996', 'No'),
(116, 'LA', 'Lao People\'s Democratic Republic', 'LAO', '418', '856', 'No'),
(117, 'LV', 'Latvia', 'LVA', '428', '371', 'No'),
(118, 'LB', 'Lebanon', 'LBN', '422', '961', 'No'),
(119, 'LS', 'Lesotho', 'LSO', '426', '266', 'No'),
(120, 'LR', 'Liberia', 'LBR', '430', '231', 'No'),
(121, 'LY', 'Libyan Arab Jamahiriya', 'LBY', '434', '218', 'No'),
(122, 'LI', 'Liechtenstein', 'LIE', '438', '423', 'No'),
(123, 'LT', 'Lithuania', 'LTU', '440', '370', 'No'),
(124, 'LU', 'Luxembourg', 'LUX', '442', '352', 'Yes'),
(125, 'MO', 'Macao', 'MAC', '446', '853', 'No'),
(126, 'MK', 'Macedonia, the Former Yugoslav Republic of', 'MKD', '807', '389', 'No'),
(127, 'MG', 'Madagascar', 'MDG', '450', '261', 'No'),
(128, 'MW', 'Malawi', 'MWI', '454', '265', 'No'),
(129, 'MY', 'Malaysia', 'MYS', '458', '60', 'No'),
(130, 'MV', 'Maldives', 'MDV', '462', '960', 'No'),
(131, 'ML', 'Mali', 'MLI', '466', '223', 'No'),
(132, 'MT', 'Malta', 'MLT', '470', '356', 'No'),
(133, 'MH', 'Marshall Islands', 'MHL', '584', '692', 'No'),
(134, 'MQ', 'Martinique', 'MTQ', '474', '596', 'No'),
(135, 'MR', 'Mauritania', 'MRT', '478', '222', 'No'),
(136, 'MU', 'Mauritius', 'MUS', '480', '230', 'No'),
(137, 'YT', 'Mayotte', NULL, NULL, '269', 'No'),
(138, 'MX', 'Mexico', 'MEX', '484', '52', 'No'),
(139, 'FM', 'Micronesia, Federated States of', 'FSM', '583', '691', 'No'),
(140, 'MD', 'Moldova, Republic of', 'MDA', '498', '373', 'No'),
(141, 'MC', 'Monaco', 'MCO', '492', '377', 'No'),
(142, 'MN', 'Mongolia', 'MNG', '496', '976', 'No'),
(143, 'MS', 'Montserrat', 'MSR', '500', '1', 'No'),
(144, 'MA', 'Morocco', 'MAR', '504', '212', 'No'),
(145, 'MZ', 'Mozambique', 'MOZ', '508', '258', 'No'),
(146, 'MM', 'Myanmar', 'MMR', '104', '95', 'No'),
(147, 'NA', 'Namibia', 'NAM', '516', '264', 'No'),
(148, 'NR', 'Nauru', 'NRU', '520', '674', 'No'),
(149, 'NP', 'Nepal', 'NPL', '524', '977', 'No'),
(150, 'NL', 'Netherlands', 'NLD', '528', '31', 'Yes'),
(151, 'AN', 'Netherlands Antilles', 'ANT', '530', '599', 'No'),
(152, 'NC', 'New Caledonia', 'NCL', '540', '687', 'No'),
(153, 'NZ', 'New Zealand', 'NZL', '554', '64', 'Yes'),
(154, 'NI', 'Nicaragua', 'NIC', '558', '505', 'No'),
(155, 'NE', 'Niger', 'NER', '562', '227', 'No'),
(156, 'NG', 'Nigeria', 'NGA', '566', '234', 'No'),
(157, 'NU', 'Niue', 'NIU', '570', '683', 'No'),
(158, 'NF', 'Norfolk Island', 'NFK', '574', '672', 'No'),
(159, 'MP', 'Northern Mariana Islands', 'MNP', '580', '1', 'No'),
(160, 'NO', 'Norway', 'NOR', '578', '47', 'Yes'),
(161, 'OM', 'Oman', 'OMN', '512', '968', 'No'),
(162, 'PK', 'Pakistan', 'PAK', '586', '92', 'No'),
(163, 'PW', 'Palau', 'PLW', '585', '680', 'No'),
(164, 'PS', 'Palestinian Territory, Occupied', NULL, NULL, '970', 'No'),
(165, 'PA', 'Panama', 'PAN', '591', '507', 'No'),
(166, 'PG', 'Papua New Guinea', 'PNG', '598', '675', 'No'),
(167, 'PY', 'Paraguay', 'PRY', '600', '595', 'No'),
(168, 'PE', 'Peru', 'PER', '604', '51', 'No'),
(169, 'PH', 'Philippines', 'PHL', '608', '63', 'No'),
(170, 'PN', 'Pitcairn', 'PCN', '612', '0', 'No'),
(171, 'PL', 'Poland', 'POL', '616', '48', 'No'),
(172, 'PT', 'Portugal', 'PRT', '620', '351', 'Yes'),
(173, 'PR', 'Puerto Rico', 'PRI', '630', '1', 'No'),
(174, 'QA', 'Qatar', 'QAT', '634', '974', 'No'),
(175, 'RE', 'Reunion', 'REU', '638', '262', 'No'),
(176, 'RO', 'Romania', 'ROM', '642', '40', 'No'),
(177, 'RU', 'Russian Federation', 'RUS', '643', '70', 'No'),
(178, 'RW', 'Rwanda', 'RWA', '646', '250', 'No'),
(179, 'SH', 'Saint Helena', 'SHN', '654', '290', 'No'),
(180, 'KN', 'Saint Kitts and Nevis', 'KNA', '659', '1', 'No'),
(181, 'LC', 'Saint Lucia', 'LCA', '662', '1', 'No'),
(182, 'PM', 'Saint Pierre and Miquelon', 'SPM', '666', '508', 'No'),
(183, 'VC', 'Saint Vincent and the Grenadines', 'VCT', '670', '1', 'No'),
(184, 'WS', 'Samoa', 'WSM', '882', '684', 'No'),
(185, 'SM', 'San Marino', 'SMR', '674', '378', 'No'),
(186, 'ST', 'Sao Tome and Principe', 'STP', '678', '239', 'No'),
(187, 'SA', 'Saudi Arabia', 'SAU', '682', '966', 'No'),
(188, 'SN', 'Senegal', 'SEN', '686', '221', 'No'),
(189, 'RS', 'Serbia and Montenegro', NULL, NULL, '381', 'No'),
(190, 'SC', 'Seychelles', 'SYC', '690', '248', 'No'),
(191, 'SL', 'Sierra Leone', 'SLE', '694', '232', 'No'),
(192, 'SG', 'Singapore', 'SGP', '702', '65', 'Yes'),
(193, 'SK', 'Slovakia', 'SVK', '703', '421', 'No'),
(194, 'SI', 'Slovenia', 'SVN', '705', '386', 'No'),
(195, 'SB', 'Solomon Islands', 'SLB', '90', '677', 'No'),
(196, 'SO', 'Somalia', 'SOM', '706', '252', 'No'),
(197, 'ZA', 'South Africa', 'ZAF', '710', '27', 'No'),
(198, 'GS', 'South Georgia and the South Sandwich Islands', NULL, NULL, '0', 'No'),
(199, 'ES', 'Spain', 'ESP', '724', '34', 'Yes'),
(200, 'LK', 'Sri Lanka', 'LKA', '144', '94', 'No'),
(201, 'SD', 'Sudan', 'SDN', '736', '249', 'No'),
(202, 'SS', 'South Sudan', 'SSD', '728', '211', 'No'),
(203, 'SR', 'Suriname', 'SUR', '740', '597', 'No'),
(204, 'SJ', 'Svalbard and Jan Mayen', 'SJM', '744', '47', 'No'),
(205, 'SZ', 'Swaziland', 'SWZ', '748', '268', 'No'),
(206, 'SE', 'Sweden', 'SWE', '752', '46', 'Yes'),
(207, 'CH', 'Switzerland', 'CHE', '756', '41', 'Yes'),
(208, 'SY', 'Syrian Arab Republic', 'SYR', '760', '963', 'No'),
(209, 'TW', 'Taiwan, Province of China', 'TWN', '158', '886', 'No'),
(210, 'TJ', 'Tajikistan', 'TJK', '762', '992', 'No'),
(211, 'TZ', 'Tanzania, United Republic of', 'TZA', '834', '255', 'No'),
(212, 'TH', 'Thailand', 'THA', '764', '66', 'No'),
(213, 'TL', 'Timor-Leste', NULL, NULL, '670', 'No'),
(214, 'TG', 'Togo', 'TGO', '768', '228', 'No'),
(215, 'TK', 'Tokelau', 'TKL', '772', '690', 'No'),
(216, 'TO', 'Tonga', 'TON', '776', '676', 'No'),
(217, 'TT', 'Trinidad and Tobago', 'TTO', '780', '1', 'No'),
(218, 'TN', 'Tunisia', 'TUN', '788', '216', 'No'),
(219, 'TR', 'Turkey', 'TUR', '792', '90', 'No'),
(220, 'TM', 'Turkmenistan', 'TKM', '795', '7370', 'No'),
(221, 'TC', 'Turks and Caicos Islands', 'TCA', '796', '1', 'No'),
(222, 'TV', 'Tuvalu', 'TUV', '798', '688', 'No'),
(223, 'UG', 'Uganda', 'UGA', '800', '256', 'No'),
(224, 'UA', 'Ukraine', 'UKR', '804', '380', 'No'),
(225, 'AE', 'United Arab Emirates', 'ARE', '784', '971', 'No'),
(226, 'GB', 'United Kingdom', 'GBR', '826', '44', 'Yes'),
(227, 'US', 'United States', 'USA', '840', '1', 'Yes'),
(228, 'UM', 'United States Minor Outlying Islands', NULL, NULL, '1', 'No'),
(229, 'UY', 'Uruguay', 'URY', '858', '598', 'No'),
(230, 'UZ', 'Uzbekistan', 'UZB', '860', '998', 'No'),
(231, 'VU', 'Vanuatu', 'VUT', '548', '678', 'No'),
(232, 'VE', 'Venezuela', 'VEN', '862', '58', 'No'),
(233, 'VN', 'Viet Nam', 'VNM', '704', '84', 'No'),
(234, 'VG', 'Virgin Islands, British', 'VGB', '92', '1', 'No'),
(235, 'VI', 'Virgin Islands, U.s.', 'VIR', '850', '1', 'No'),
(236, 'WF', 'Wallis and Futuna', 'WLF', '876', '681', 'No'),
(237, 'EH', 'Western Sahara', 'ESH', '732', '212', 'No'),
(238, 'YE', 'Yemen', 'YEM', '887', '967', 'No'),
(239, 'ZM', 'Zambia', 'ZMB', '894', '260', 'No'),
(240, 'ZW', 'Zimbabwe', 'ZWE', '716', '263', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `default_currency` enum('1','0') NOT NULL,
  `paypal_currency` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `rate`, `status`, `default_currency`, `paypal_currency`) VALUES
(1, 'US Dollar', 'USD', '&#36;', 1.00, 'Active', '0', 'Yes'),
(2, 'Pound Sterling', 'GBP', '&pound;', 0.78, 'Active', '0', 'Yes'),
(3, 'Europe', 'EUR', '&euro;', 0.90, 'Active', '0', 'Yes'),
(4, 'Australian Dollar', 'AUD', '&#36;', 1.46, 'Active', '0', 'Yes'),
(5, 'Singapore', 'SGD', '&#36;', 1.36, 'Active', '0', 'Yes'),
(6, 'Swedish Krona', 'SEK', 'kr', 9.65, 'Active', '0', 'Yes'),
(7, 'Danish Krone', 'DKK', 'kr', 6.70, 'Active', '0', 'Yes'),
(8, 'Mexican Peso', 'MXN', '$', 19.12, 'Active', '0', 'Yes'),
(9, 'Brazilian Real', 'BRL', 'R$', 4.12, 'Active', '0', 'Yes'),
(10, 'Malaysian Ringgit', 'MYR', 'RM', 4.19, 'Active', '0', 'Yes'),
(11, 'Philippine Peso', 'PHP', 'P', 51.35, 'Active', '0', 'Yes'),
(12, 'Swiss Franc', 'CHF', '&euro;', 0.99, 'Active', '0', 'Yes'),
(13, 'India', 'INR', '&#x20B9;', 70.99, 'Active', '1', 'Yes'),
(14, 'Argentine Peso', 'ARS', '&#36;', 58.13, 'Active', '0', 'No'),
(15, 'Canadian Dollar', 'CAD', '&#36;', 1.31, 'Active', '0', 'Yes'),
(16, 'Chinese Yuan', 'CNY', '&#165;', 7.07, 'Active', '0', 'No'),
(17, 'Czech Republic Koruna', 'CZK', 'K&#269;', 22.98, 'Active', '0', 'Yes'),
(18, 'Hong Kong Dollar', 'HKD', '&#36;', 7.84, 'Active', '0', 'Yes'),
(19, 'Hungarian Forint', 'HUF', 'Ft', 296.75, 'Active', '0', 'Yes'),
(20, 'Indonesian Rupiah', 'IDR', 'Rp', 14117.00, 'Active', '0', 'No'),
(21, 'Israeli New Sheqel', 'ILS', '&#8362;', 3.54, 'Active', '0', 'Yes'),
(22, 'Japanese Yen', 'JPY', '&#165;', 108.50, 'Active', '0', 'Yes'),
(23, 'South Korean Won', 'KRW', '&#8361;', 1173.91, 'Active', '0', 'No'),
(24, 'Norwegian Krone', 'NOK', 'kr', 9.16, 'Active', '0', 'Yes'),
(25, 'New Zealand Dollar', 'NZD', '&#36;', 1.56, 'Active', '0', 'Yes'),
(26, 'Polish Zloty', 'PLN', 'z&#322;', 3.84, 'Active', '0', 'Yes'),
(27, 'Russian Ruble', 'RUB', 'p', 63.80, 'Active', '0', 'Yes'),
(28, 'Thai Baht', 'THB', '&#3647;', 30.27, 'Active', '0', 'Yes'),
(29, 'Turkish Lira', 'TRY', '&#8378;', 5.79, 'Active', '0', 'No'),
(30, 'New Taiwan Dollar', 'TWD', '&#36;', 30.56, 'Active', '0', 'Yes'),
(31, 'Vietnamese Dong', 'VND', '&#8363;', 23161.61, 'Active', '0', 'No'),
(32, 'South African Rand', 'ZAR', 'R', 14.80, 'Active', '0', 'No'),
(33, 'Peso Dominicano', 'DOP', 'RD$', 100.00, 'Active', '0', 'No'),
(34, 'Dinar', 'RSD', 'din', 1.00, 'Active', '0', 'No'),
(35, 'Nigerian', 'NGN', '₦', 1.00, 'Active', '0', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_name` varchar(191) NOT NULL,
  `type` enum('Driver','Vehicle','Company') NOT NULL,
  `country_code` varchar(191) NOT NULL,
  `expire_on_date` enum('Yes','No') NOT NULL DEFAULT 'No',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `document_name`, `type`, `country_code`, `expire_on_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'License', 'Driver', 'all', 'Yes', 'Active', '2021-12-18 15:00:05', '2022-06-23 01:43:50'),
(2, 'Insurance', 'Vehicle', 'all', 'Yes', 'Active', '2021-12-18 15:00:20', '2022-06-23 01:44:09'),
(3, 'Insurance', 'Driver', 'all', 'Yes', 'Active', '2022-06-27 06:23:09', '2022-06-27 06:23:09'),
(4, 'Rc book', 'Driver', 'all', 'No', 'Active', '2024-03-26 16:58:24', '2024-03-26 16:58:24'),
(5, 'Permite', 'Driver', 'all', 'Yes', 'Active', '2024-06-03 06:34:50', '2024-06-03 06:34:50'),
(6, 'FC Details', 'Driver', 'all', 'Yes', 'Active', '2024-06-03 06:35:16', '2024-06-03 06:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `documents_langs`
--

CREATE TABLE `documents_langs` (
  `id` int(10) UNSIGNED NOT NULL,
  `documents_id` int(10) UNSIGNED NOT NULL,
  `document_name` varchar(191) NOT NULL,
  `locale` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_address`
--

CREATE TABLE `driver_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address_line1` varchar(191) NOT NULL,
  `address_line2` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) NOT NULL,
  `postal_code` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_address`
--

INSERT INTO `driver_address` (`id`, `user_id`, `address_line1`, `address_line2`, `city`, `state`, `postal_code`) VALUES
(1, 10002, '', '', 'Mumbai', '', ''),
(10, 10019, 'kuriji', 'ggj', 'Dindigul', 'tamilnadu', '624001'),
(13, 10023, 'Dindigul', 'Dindigul', 'Dindigul', 'tamilnadu', '624001'),
(14, 10025, 'k.a complex', '', 'dindigul', 'Tamil Nadu', '624001'),
(16, 10027, '', '', 'coimbatore', 'Tamil Nadu', '641028'),
(17, 10028, '345tytre', 'wertghgfd', 'Active', 'tamil nadu', '641028'),
(18, 10029, '', '', 'coimbatore', '', '641028'),
(19, 10030, '', '', 'Coimbatore', '', '641028'),
(20, 10031, '', '', 'Coimbatore', '', '641028'),
(21, 10032, '', '', 'coimbatore', 'tamil nadu', '641028'),
(23, 10035, '', '', 'Madurai', '', ''),
(24, 10036, '', '', 'Madurai', '', ''),
(26, 10045, '', '', 'Tamilnadu', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `driver_documents`
--

CREATE TABLE `driver_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('Driver','Vehicle') NOT NULL DEFAULT 'Driver',
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(50) NOT NULL,
  `document` text NOT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '0',
  `expired_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_documents`
--

INSERT INTO `driver_documents` (`id`, `type`, `vehicle_id`, `user_id`, `document_id`, `document`, `status`, `expired_date`) VALUES
(1, 'Vehicle', 1, 10002, '2', 'https://uat.ridein.in/images/vehicle/1/insurance_1698221302.jpg', '1', '2038-12-18'),
(3, 'Driver', 0, 10012, '1', 'https://ridein.in/images/users/10012/license_1655958954.jpg', '1', '2037-06-23'),
(4, 'Vehicle', 10, 10012, '2', 'https://ridein.in/public/images/vehicle/10/insurance_1655967376.png', '1', '2023-01-18'),
(5, 'Vehicle', 11, 10013, '2', 'https://ridein.in/public/images/vehicle/11/insurance_1655993542.png', '1', '2022-07-09'),
(6, 'Driver', 0, 10013, '1', 'https://ridein.in/images/users/10013/license_1655993625.jpg', '1', '2022-06-30'),
(7, 'Driver', 0, 10016, '1', 'https://ridein.in/images/users/10016/license_1655996343.png', '1', '2025-07-17'),
(8, 'Vehicle', 13, 10016, '2', 'https://ridein.in/public/images/vehicle/13/insurance_1655996471.png', '1', '2022-08-19'),
(9, 'Vehicle', 14, 10018, '2', 'https://ridein.in/images/users/10018/insurance_1656006001.jpg', '0', '2022-09-30'),
(10, 'Driver', 0, 10018, '1', 'https://ridein.in/public/images/users/10018/license_1656007343.png', '1', '2023-01-07'),
(11, 'Vehicle', 15, 10018, '2', 'https://ridein.in/public/images/vehicle/15/insurance_1656007193.png', '1', '2023-01-06'),
(12, 'Vehicle', 16, 10018, '2', 'https://ridein.in/public/images/vehicle/16/insurance_1656007307.png', '1', '2022-09-15'),
(13, 'Driver', 0, 10021, '1', 'https://ridein.in/images/users/10021/license_1656310641.jpg', '1', '2046-06-27'),
(14, 'Vehicle', 18, 10021, '2', 'https://ridein.in/public/images/vehicle/18/insurance_1656310813.png', '1', '2023-01-07'),
(15, 'Driver', 0, 10021, '3', 'https://ridein.in/public/images/users/10021/insurance_1656311185.png', '1', '2023-03-11'),
(16, 'Vehicle', 19, 10022, '2', 'https://ridein.in/images/users/10022/insurance_1656312884.jpg', '0', '2023-01-01'),
(17, 'Driver', 0, 10022, '1', 'https://ridein.in/images/users/10022/license_1656312733.jpg', '1', '2023-12-01'),
(18, 'Driver', 0, 10022, '3', 'https://ridein.in/images/users/10022/insurance_1656312758.jpg', '1', '2022-12-01'),
(19, 'Vehicle', 20, 10022, '2', 'https://ridein.in/images/users/10022/insurance_1656313364.jpg', '0', '2023-01-21'),
(20, 'Vehicle', 21, 10022, '2', 'https://ridein.in/public/images/vehicle/21/insurance_1656313455.jpg', '1', '2022-09-10'),
(21, 'Vehicle', 22, 10025, '2', 'https://ridein.in/images/users/10025/insurance_1656340106.jpg', '0', '2023-05-05'),
(22, 'Vehicle', 23, 10027, '2', 'https://ridein.in/public/images/vehicle/23/insurance_1656478349.jpg', '1', '2022-10-14'),
(23, 'Vehicle', 24, 10025, '2', 'https://ridein.in/public/images/vehicle/24/insurance_1656478412.png', '1', '2022-08-20'),
(24, 'Driver', 0, 10027, '1', 'https://buskart.in/book/public/images/users/10027/license_1715424160.jpg', '0', '2025-02-21'),
(25, 'Driver', 0, 10027, '3', 'https://buskart.in/book/public/images/users/10027/insurance_1715424194.jpg', '0', '2024-07-26'),
(26, 'Driver', 0, 10025, '1', 'https://buskart.in/book/public/images/users/10025/license_1715342800.jpg', '2', '2025-07-09'),
(27, 'Driver', 0, 10025, '3', 'https://ridein.in/public/images/users/10025/insurance_1656478500.png', '1', '2024-08-08'),
(28, 'Driver', 0, 10028, '1', 'https://buskart.in/book/public/images/users/10028/license_1716105076.jpg', '1', '2025-05-02'),
(29, 'Driver', 0, 10028, '3', 'https://buskart.in/book/public/images/users/10028/insurance_1716105095.jpg', '1', '2025-05-08'),
(30, 'Vehicle', 25, 10028, '2', 'https://ridein.in/public/images/vehicle/25/insurance_1656486749.jpg', '1', '2025-07-31'),
(31, 'Vehicle', 26, 10028, '2', 'https://ridein.in/public/images/vehicle/26/insurance_1656487588.JPG', '1', '2022-08-26'),
(32, 'Vehicle', 27, 10034, '2', 'https://ridein.in/images/users/10034/insurance_1656601518.jpg', '0', '2022-07-02'),
(33, 'Driver', 0, 10034, '1', 'https://buskart.in/book/public/images/users/10034/license_1715691625.jpg', '1', '2025-01-23'),
(34, 'Driver', 0, 10034, '3', 'https://buskart.in/book/public/images/users/10034/insurance_1715690464.jpg', '1', '2050-05-14'),
(35, 'Vehicle', 28, 10034, '2', 'https://ridein.in/public/images/vehicle/28/insurance_1656736270.png', '1', '2023-03-17'),
(36, 'Vehicle', 29, 10037, '2', 'https://ridein.in/public/images/vehicle/29/insurance_1656736665.png', '1', '2022-10-15'),
(37, 'Driver', 0, 10037, '1', 'https://ridein.in/public/images/users/10037/license_1656736720.png', '1', '2023-04-08'),
(38, 'Driver', 0, 10037, '3', 'https://ridein.in/public/images/users/10037/insurance_1656736720.png', '1', '2022-12-17'),
(39, 'Driver', 0, 10017, '1', 'http://rideinapril.test/images/users/10017/license_1682558122.png', '1', '2029-06-06'),
(40, 'Driver', 0, 10017, '3', 'http://rideinapril.test/images/users/10017/insurance_1682558122.png', '1', '2028-10-24'),
(41, 'Vehicle', 31, 10017, '2', 'http://rideinapril.test/images/vehicle/31/insurance_1682558268.png', '1', '2030-11-28'),
(42, 'Driver', 0, 10002, '1', 'https://uat.ridein.in/images/users/10002/license_1698220079.jpg', '1', '2024-06-29'),
(43, 'Driver', 0, 10002, '3', 'https://uat.ridein.in/images/users/10002/insurance_1698220079.jpg', '1', '2024-12-28'),
(44, 'Driver', 0, 10019, '1', 'https://buskart.in/book/public/images/users/10019/license_1711431796.jpg', '1', '2024-05-10'),
(45, 'Driver', 0, 10019, '3', 'https://buskart.in/book/public/images/users/10019/insurance_1711431817.jpg', '1', '2024-05-10'),
(46, 'Vehicle', 32, 10019, '2', 'https://buskart.in/book/public/images/users/10019/insurance_1711431849.jpg', '1', '2024-03-26'),
(47, 'Driver', 0, 10022, '1', 'https://buskart.in/book/public/images/users/10022/license_1711948165.jpg', '0', '2024-04-02'),
(48, 'Driver', 0, 10022, '3', 'https://buskart.in/book/public/images/users/10022/insurance_1711948165.jpg', '0', '2028-06-21'),
(49, 'Driver', 0, 10022, '4', 'https://buskart.in/book/public/images/users/10022/rc_book_1711948165.jpg', '0', NULL),
(50, 'Driver', 0, 10019, '4', 'https://buskart.in/book/public/images/users/10019/rc_book_1715341147.jpg', '1', NULL),
(51, 'Vehicle', 33, 10019, '2', 'https://buskart.in/book/public/images/vehicle/33/insurance_1715341378.jpg', '1', '2029-07-18'),
(52, 'Driver', 0, 10023, '1', 'https://buskart.in/book/public/images/users/10023/license_1715342070.jpg', '1', '2027-05-10'),
(53, 'Driver', 0, 10023, '3', 'https://buskart.in/book/public/images/users/10023/insurance_1715342087.jpg', '1', '2028-05-10'),
(54, 'Driver', 0, 10023, '4', 'https://buskart.in/book/public/images/users/10023/rc_book_1715342097.jpg', '1', NULL),
(55, 'Vehicle', 35, 10023, '2', 'https://buskart.in/book/public/images/vehicle/35/insurance_1715342172.jpg', '1', '2029-08-22'),
(56, 'Vehicle', 34, 10023, '2', 'https://buskart.in/book/public/images/vehicle/34/insurance_1715342319.jpg', '1', '2030-04-11'),
(57, 'Driver', 0, 10025, '1', 'https://buskart.in/book/public/images/users/10025/license_1715342656.png', '1', '2025-07-09'),
(58, 'Driver', 0, 10025, '3', 'https://buskart.in/book/public/images/users/10025/insurance_1715342656.png', '1', '2024-08-08'),
(59, 'Driver', 0, 10025, '4', 'https://buskart.in/book/public/images/users/10025/rc_book_1715342656.png', '2', NULL),
(60, 'Vehicle', 36, 10025, '2', 'https://buskart.in/book/public/images/vehicle/36/insurance_1715342764.jpg', '1', '2025-02-27'),
(61, 'Vehicle', 37, 10026, '2', 'https://buskart.in/book/public/images/users/10026/insurance_1715416062.jpg', '1', '2024-09-18'),
(62, 'Driver', 0, 10026, '1', 'https://buskart.in/book/public/images/users/10026/license_1715416127.jpg', '1', '2025-06-14'),
(63, 'Driver', 0, 10026, '3', 'https://buskart.in/book/public/images/users/10026/insurance_1715416149.jpg', '1', '2042-05-17'),
(64, 'Driver', 0, 10026, '4', 'https://buskart.in/book/public/images/users/10026/rc_book_1715416166.jpg', '1', NULL),
(65, 'Driver', 0, 10027, '4', 'https://buskart.in/book/public/images/users/10027/rc_book_1715417370.jpg', '1', NULL),
(66, 'Vehicle', 38, 10027, '2', 'https://buskart.in/book/public/images/vehicle/38/insurance_1715417495.jpg', '1', '2025-07-10'),
(67, 'Vehicle', 39, 10027, '2', 'https://buskart.in/book/public/images/vehicle/39/insurance_1715418976.jpg', '1', '2025-03-12'),
(68, 'Vehicle', 40, 10027, '2', 'https://buskart.in/book/public/images/vehicle/40/insurance_1715424261.jpg', '1', '2025-07-24'),
(69, 'Driver', 0, 10029, '1', 'https://buskart.in/book/public/images/users/10029/license_1715431145.jpg', '1', '2025-06-20'),
(70, 'Driver', 0, 10029, '3', 'https://buskart.in/book/public/images/users/10029/insurance_1715431179.jpg', '1', '2026-07-18'),
(71, 'Driver', 0, 10029, '4', 'https://buskart.in/book/public/images/users/10029/rc_book_1715431218.jpg', '1', NULL),
(72, 'Driver', 0, 10030, '1', 'https://buskart.in/book/public/images/users/10030/license_1715434260.jpg', '1', '2025-05-17'),
(73, 'Driver', 0, 10030, '3', 'https://buskart.in/book/public/images/users/10030/insurance_1715434277.jpg', '1', '2024-05-11'),
(74, 'Driver', 0, 10030, '4', 'https://buskart.in/book/public/images/users/10030/rc_book_1715434290.jpg', '1', NULL),
(75, 'Vehicle', 42, 10030, '2', 'https://buskart.in/book/public/images/users/10030/insurance_1715434454.jpg', '1', '2026-05-15'),
(76, 'Vehicle', 43, 10031, '2', 'https://buskart.in/book/public/images/users/10031/insurance_1715435107.jpg', '1', '2025-06-20'),
(77, 'Driver', 0, 10031, '1', 'https://buskart.in/book/public/images/users/10031/license_1715435173.jpg', '1', '2025-06-11'),
(78, 'Driver', 0, 10031, '3', 'https://buskart.in/book/public/images/users/10031/insurance_1715435206.jpg', '1', '2026-05-11'),
(79, 'Driver', 0, 10031, '4', 'https://buskart.in/book/public/images/users/10031/rc_book_1715435222.jpg', '1', NULL),
(80, 'Vehicle', 41, 10029, '2', 'https://buskart.in/book/public/images/vehicle/41/insurance_1715436241.jpg', '1', '2025-03-12'),
(81, 'Driver', 0, 10032, '1', 'https://buskart.in/book/public/images/users/10032/license_1715574851.jpg', '1', '2026-02-06'),
(82, 'Driver', 0, 10032, '3', 'https://buskart.in/book/public/images/users/10032/insurance_1715574877.jpg', '1', '2025-05-13'),
(83, 'Driver', 0, 10032, '4', 'https://buskart.in/book/public/images/users/10032/rc_book_1715574918.jpg', '1', NULL),
(84, 'Vehicle', 44, 10032, '2', 'https://buskart.in/book/public/images/vehicle/44/insurance_1715688395.jpg', '1', '2026-02-13'),
(85, 'Vehicle', 45, 10034, '2', 'https://buskart.in/book/public/images/users/10034/insurance_1715690415.jpg', '1', '2025-05-10'),
(86, 'Driver', 0, 10034, '4', 'https://buskart.in/book/public/images/users/10034/rc_book_1715690442.jpg', '1', NULL),
(87, 'Vehicle', 46, 10029, '2', 'https://buskart.in/book/public/images/users/10029/insurance_1715917927.jpg', '1', '2025-02-09'),
(88, 'Driver', 0, 10044, '1', 'https://buskart.in/book/public/images/users/10044/license_1715918872.jpg', '1', '2030-03-19'),
(89, 'Driver', 0, 10044, '3', 'https://buskart.in/book/public/images/users/10044/insurance_1715918872.JPG', '1', '2029-04-27'),
(90, 'Driver', 0, 10044, '4', 'https://buskart.in/book/public/images/users/10044/rc_book_1715918872.jpg', '0', NULL),
(91, 'Driver', 0, 10045, '1', 'https://buskart.in/book/public/images/users/10045/license_1715921449.jpg', '1', '2026-01-28'),
(92, 'Driver', 0, 10045, '3', 'https://buskart.in/book/public/images/users/10045/insurance_1715921496.jpg', '1', '2025-02-09'),
(93, 'Driver', 0, 10045, '4', 'https://buskart.in/book/public/images/users/10045/rc_book_1715921530.jpg', '1', NULL),
(94, 'Vehicle', 47, 10045, '2', 'https://buskart.in/book/public/images/vehicle/47/insurance_1715922489.jpg', '1', '2026-04-10'),
(95, 'Driver', 0, 10028, '4', 'https://buskart.in/book/public/images/users/10028/rc_book_1716105108.jpg', '1', NULL),
(96, 'Vehicle', 48, 10028, '2', 'https://buskart.in/book/public/images/users/10028/insurance_1716105140.jpg', '1', '2025-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `driver_location`
--

CREATE TABLE `driver_location` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `car_id` int(10) UNSIGNED NOT NULL,
  `pool_trip_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('Online','Offline','Trip','Pool Trip') NOT NULL DEFAULT 'Offline',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_location`
--

INSERT INTO `driver_location` (`id`, `user_id`, `latitude`, `longitude`, `car_id`, `pool_trip_id`, `status`, `created_at`, `updated_at`) VALUES
(48, 10002, '28.691375', '76.931405', 1, NULL, 'Offline', '2022-06-29 04:24:10', '2023-10-25 11:38:46'),
(59, 10002, '28.691375', '76.931405', 1, NULL, 'Offline', '2023-10-25 09:02:33', '2023-10-25 10:09:27'),
(63, 10002, '28.691375', '76.931405', 6, NULL, 'Offline', '2023-10-25 09:02:33', '2023-10-25 11:38:46'),
(64, 10002, '28.691375', '76.931405', 7, NULL, 'Offline', '2023-10-25 09:02:33', '2023-10-25 11:38:46'),
(65, 10002, '28.691375', '76.931405', 2, NULL, 'Offline', '2023-10-25 10:08:55', '2023-10-25 11:38:46'),
(66, 10002, '28.691375', '76.931405', 3, NULL, 'Offline', '2023-10-25 10:57:15', '2023-10-25 11:38:46'),
(67, 10002, '28.691375', '76.931405', 4, NULL, 'Offline', '2023-10-25 10:57:15', '2023-10-25 11:38:46'),
(68, 10002, '28.691375', '76.931405', 5, NULL, 'Offline', '2023-10-25 10:57:15', '2023-10-25 11:38:46'),
(73, 10019, '10.2826728', '77.9277315', 1, NULL, 'Offline', '2024-05-10 11:43:40', '2024-06-08 10:02:38'),
(74, 10019, '10.2826728', '77.9277315', 4, NULL, 'Offline', '2024-05-10 11:43:40', '2024-06-08 10:02:38'),
(75, 10019, '10.2826728', '77.9277315', 5, NULL, 'Offline', '2024-05-10 11:43:40', '2024-06-08 10:02:38'),
(76, 10019, '10.2826728', '77.9277315', 6, NULL, 'Offline', '2024-05-10 11:43:40', '2024-06-08 10:02:38'),
(82, 10023, '10.3685923', '77.982077', 7, NULL, 'Offline', '2024-05-10 11:56:25', '2024-05-10 12:27:02'),
(85, 10025, '10.3686435', '77.9820752', 2, NULL, 'Online', '2024-05-10 12:08:38', '2024-05-15 06:20:45'),
(89, 10027, '10.3686635', '77.9821034', 8, NULL, 'Online', '2024-05-11 10:47:25', '2024-05-14 07:08:31'),
(90, 10030, '11.0172867', '76.9715417', 2, NULL, 'Online', '2024-05-11 13:39:36', '2024-05-30 11:26:18'),
(92, 10029, '11.0131964', '77.0029081', 2, NULL, 'Offline', '2024-05-11 14:04:44', '2024-05-17 03:34:28'),
(93, 10031, '11.0201461', '77.0009132', 2, NULL, 'Online', '2024-05-11 14:08:53', '2024-05-11 14:20:53'),
(94, 10032, '11.0130439', '77.0028162', 2, NULL, 'Online', '2024-05-14 12:07:58', '2024-05-16 15:43:28'),
(96, 10035, '', '', 1, NULL, 'Offline', '2024-05-15 09:44:04', '2024-05-15 09:44:04'),
(97, 10036, '', '', 1, NULL, 'Offline', '2024-05-15 09:53:57', '2024-05-15 09:53:57'),
(99, 10045, '11.0508704', '76.9737579', 2, NULL, 'Offline', '2024-05-17 05:08:25', '2024-06-05 09:28:48'),
(100, 10028, '11.0128242', '77.0026934', 2, NULL, 'Offline', '2024-05-19 07:57:58', '2024-05-23 01:11:40');

-- --------------------------------------------------------

--
-- Table structure for table `driver_owe_amounts`
--

CREATE TABLE `driver_owe_amounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_owe_amounts`
--

INSERT INTO `driver_owe_amounts` (`id`, `user_id`, `amount`, `currency_code`) VALUES
(1, 10002, 0.00, 'INR'),
(13, 10019, 0.00, 'INR'),
(16, 10023, 0.00, 'INR'),
(17, 10025, 0.00, 'INR'),
(19, 10027, 3.56, 'INR'),
(20, 10028, 17.00, 'INR'),
(21, 10029, 165.40, 'INR'),
(22, 10030, 0.00, 'INR'),
(23, 10031, 2.14, 'INR'),
(24, 10032, 0.00, 'INR'),
(26, 10035, 0.00, 'INR'),
(27, 10036, 0.00, 'INR'),
(29, 10045, 205846.75, 'INR');

-- --------------------------------------------------------

--
-- Table structure for table `driver_owe_amount_payments`
--

CREATE TABLE `driver_owe_amount_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `transaction_id` varchar(70) DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `currency_code` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_payment`
--

CREATE TABLE `driver_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `last_trip_id` int(10) UNSIGNED NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `paid_amount` decimal(7,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `name`, `value`) VALUES
(1, 'driver', 'smtp'),
(2, 'host', 'smtp.gmail.com'),
(3, 'port', '25'),
(4, 'from_address', 'cabme@gmail.com'),
(5, 'from_name', 'cabme'),
(6, 'encryption', 'tls'),
(7, 'username', 'cabme@gmail.com'),
(8, 'password', 'cabme'),
(9, 'domain', 'sandboxcc51fc42882e46ccbffd90316d4731e7.mailgun.org'),
(10, 'secret', 'key-3160b23116332e595b861f60d77fa720');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_sos`
--

CREATE TABLE `emergency_sos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `country_code` varchar(5) DEFAULT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `value` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `name`, `value`) VALUES
(1, 'access_fee', '0'),
(2, 'driver_peak_fare', '2'),
(3, 'driver_access_fee', '10'),
(4, 'additional_fee', 'No'),
(5, 'additional_rider_fare', '0');

-- --------------------------------------------------------

--
-- Table structure for table `filter_objects`
--

CREATE TABLE `filter_objects` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('vehicle','rider') NOT NULL,
  `object_id` int(11) NOT NULL,
  `filter_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filter_objects`
--

INSERT INTO `filter_objects` (`id`, `type`, `object_id`, `filter_id`, `created_at`, `updated_at`) VALUES
(1, 'vehicle', 1, 2, '2021-12-18 14:58:33', '2021-12-18 14:58:33'),
(2, 'vehicle', 1, 3, '2021-12-18 14:58:33', '2021-12-18 14:58:33'),
(3, 'vehicle', 2, 2, '2022-06-20 16:57:36', '2022-06-20 16:57:36'),
(4, 'vehicle', 2, 3, '2022-06-20 16:57:36', '2022-06-20 16:57:36'),
(7, 'vehicle', 4, 2, '2022-06-21 03:41:59', '2022-06-21 03:41:59'),
(8, 'vehicle', 4, 3, '2022-06-21 03:41:59', '2022-06-21 03:41:59'),
(9, 'vehicle', 5, 2, '2022-06-21 03:42:56', '2022-06-21 03:42:56'),
(10, 'vehicle', 5, 3, '2022-06-21 03:42:56', '2022-06-21 03:42:56'),
(11, 'vehicle', 6, 2, '2022-06-21 03:43:46', '2022-06-21 03:43:46'),
(12, 'vehicle', 6, 3, '2022-06-21 03:43:46', '2022-06-21 03:43:46'),
(13, 'vehicle', 7, 2, '2022-06-21 03:44:25', '2022-06-21 03:44:25'),
(14, 'vehicle', 7, 3, '2022-06-21 03:44:25', '2022-06-21 03:44:25'),
(15, 'vehicle', 8, 2, '2022-06-21 03:49:42', '2022-06-21 03:49:42'),
(16, 'vehicle', 8, 3, '2022-06-21 03:49:42', '2022-06-21 03:49:42'),
(17, 'vehicle', 10, 2, '2022-06-23 06:56:16', '2022-06-23 06:56:16'),
(18, 'vehicle', 10, 3, '2022-06-23 06:56:16', '2022-06-23 06:56:16'),
(19, 'vehicle', 11, 2, '2022-06-23 14:12:22', '2022-06-23 14:12:22'),
(20, 'vehicle', 11, 3, '2022-06-23 14:12:22', '2022-06-23 14:12:22'),
(23, 'vehicle', 13, 2, '2022-06-23 15:01:11', '2022-06-23 15:01:11'),
(24, 'vehicle', 13, 3, '2022-06-23 15:01:11', '2022-06-23 15:01:11'),
(25, 'vehicle', 15, 2, '2022-06-23 17:59:53', '2022-06-23 17:59:53'),
(26, 'vehicle', 15, 3, '2022-06-23 17:59:53', '2022-06-23 17:59:53'),
(27, 'vehicle', 16, 2, '2022-06-23 18:01:47', '2022-06-23 18:01:47'),
(28, 'vehicle', 16, 3, '2022-06-23 18:01:47', '2022-06-23 18:01:47'),
(31, 'vehicle', 17, 2, '2022-06-27 06:16:15', '2022-06-27 06:16:15'),
(32, 'vehicle', 17, 3, '2022-06-27 06:16:15', '2022-06-27 06:16:15'),
(33, 'vehicle', 18, 2, '2022-06-27 06:20:13', '2022-06-27 06:20:13'),
(34, 'vehicle', 18, 3, '2022-06-27 06:20:13', '2022-06-27 06:20:13'),
(35, 'vehicle', 19, 2, '2022-06-27 06:45:30', '2022-06-27 06:45:30'),
(36, 'vehicle', 19, 3, '2022-06-27 06:45:30', '2022-06-27 06:45:30'),
(37, 'vehicle', 20, 2, '2022-06-27 06:57:25', '2022-06-27 06:57:25'),
(38, 'vehicle', 20, 3, '2022-06-27 06:57:25', '2022-06-27 06:57:25'),
(39, 'vehicle', 21, 2, '2022-06-27 07:04:15', '2022-06-27 07:04:15'),
(40, 'vehicle', 21, 3, '2022-06-27 07:04:15', '2022-06-27 07:04:15'),
(41, 'vehicle', 22, 2, '2022-06-27 14:27:12', '2022-06-27 14:27:12'),
(42, 'vehicle', 22, 3, '2022-06-27 14:27:12', '2022-06-27 14:27:12'),
(43, 'vehicle', 23, 2, '2022-06-29 04:52:29', '2022-06-29 04:52:29'),
(44, 'vehicle', 23, 3, '2022-06-29 04:52:29', '2022-06-29 04:52:29'),
(45, 'vehicle', 24, 2, '2022-06-29 04:53:32', '2022-06-29 04:53:32'),
(46, 'vehicle', 24, 3, '2022-06-29 04:53:32', '2022-06-29 04:53:32'),
(47, 'vehicle', 26, 2, '2022-06-29 07:26:28', '2022-06-29 07:26:28'),
(48, 'vehicle', 26, 3, '2022-06-29 07:26:28', '2022-06-29 07:26:28'),
(51, 'rider', 10001, 2, '2022-07-01 06:03:13', '2022-07-01 06:03:13'),
(52, 'rider', 10001, 3, '2022-07-01 06:03:13', '2022-07-01 06:03:13'),
(53, 'vehicle', 28, 2, '2022-07-02 04:31:10', '2022-07-02 04:31:10'),
(54, 'vehicle', 28, 3, '2022-07-02 04:31:10', '2022-07-02 04:31:10'),
(55, 'vehicle', 29, 2, '2022-07-02 04:37:45', '2022-07-02 04:37:45'),
(56, 'vehicle', 29, 3, '2022-07-02 04:37:45', '2022-07-02 04:37:45'),
(59, 'vehicle', 31, 2, '2023-04-26 19:47:48', '2023-04-26 19:47:48'),
(60, 'vehicle', 31, 3, '2023-04-26 19:47:48', '2023-04-26 19:47:48'),
(69, 'vehicle', 36, 2, '2024-05-10 12:06:04', '2024-05-10 12:06:04'),
(75, 'vehicle', 42, 2, '2024-05-11 13:29:37', '2024-05-11 13:29:37'),
(76, 'rider', 10047, 3, '2024-05-27 02:22:01', '2024-05-27 02:22:01'),
(77, 'rider', 10047, 4, '2024-05-27 02:22:01', '2024-05-27 02:22:01'),
(78, 'rider', 10051, 2, '2024-06-12 07:13:28', '2024-06-12 07:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `filter_options`
--

CREATE TABLE `filter_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filter_options`
--

INSERT INTO `filter_options` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Prefer Female Riders only', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(2, 'Prefer Handicap Accessibility', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(3, 'Prefer Child Seat Accessibility', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(4, 'Prefer Female Drivers only', '2021-12-18 13:35:24', '2021-12-18 13:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `filter_options_translations`
--

CREATE TABLE `filter_options_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `filter_option_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `locale` varchar(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filter_options_translations`
--

INSERT INTO `filter_options_translations` (`id`, `filter_option_id`, `name`, `locale`, `created_at`, `updated_at`) VALUES
(1, 1, 'تفضل الفرسان الإناث فقط', 'ar', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(2, 1, 'Preferir solo mujeres jinetes', 'es', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(3, 1, 'فقط زن سوارکار را ترجیح دهید', 'fa', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(4, 1, 'Prefira apenas mulheres', 'pt', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(5, 2, 'تفضل الوصول للمعاقين', 'ar', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(6, 2, 'Prefiero la accesibilidad para discapacitados', 'es', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(7, 2, 'دسترسی معلولیت را ترجیح دهید', 'fa', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(8, 2, 'Prefira acessibilidade para deficientes', 'pt', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(9, 3, 'تفضل الوصول إلى مقعد الطفل', 'ar', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(10, 3, 'Prefiero la accesibilidad del asiento para niños', 'es', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(11, 3, 'دسترسی صندلی کودک را ترجیح دهید', 'fa', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(12, 3, 'Acessibilidade preferencial para cadeirinha de criança', 'pt', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(13, 4, 'تفضل السائقات الإناث فقط', 'ar', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(14, 4, 'Prefiero solo mujeres conductoras', 'es', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(15, 4, 'فقط رانندگان زن را ترجیح دهید', 'fa', '2021-12-18 13:35:24', '2021-12-18 13:35:24'),
(16, 4, 'Prefira apenas motoristas', 'pt', '2021-12-18 13:35:24', '2021-12-18 13:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `help`
--

CREATE TABLE `help` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `question` varchar(191) NOT NULL,
  `answer` mediumblob DEFAULT NULL,
  `suggested` enum('yes','no') NOT NULL DEFAULT 'no',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_category`
--

CREATE TABLE `help_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_category_lang`
--

CREATE TABLE `help_category_lang` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `locale` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_subcategory`
--

CREATE TABLE `help_subcategory` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_sub_category_lang`
--

CREATE TABLE `help_sub_category_lang` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `locale` varchar(5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_translations`
--

CREATE TABLE `help_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `help_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `locale` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"f545bc36-eac8-41a3-8bf7-69f9d1bee322\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:5:\\\"Rider\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:14:\\\"info@ridein.in\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(2, 'default', '{\"uuid\":\"228ee4de-80f3-4748-9c88-78e28a50d904\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:5:\\\"Rider\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:14:\\\"info@ridein.in\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(3, 'default', '{\"uuid\":\"637970e8-7134-4ea2-98cf-ac99b7735a6f\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:5:\\\"Muthu\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:28:\\\"dharshinipriya1906@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(4, 'default', '{\"uuid\":\"613aafe6-924d-4d12-b17b-3fd5d62fc296\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:5:\\\"Muthu\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:28:\\\"dharshinipriya1906@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(5, 'default', '{\"uuid\":\"cd0977e1-261d-4291-8444-d8de7c6895d3\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:7:\\\"Vasanth\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"vasanthkumar8122003@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(6, 'default', '{\"uuid\":\"00c14f80-8817-45da-ba4a-8a0dd5105f50\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:7:\\\"Vasanth\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"vasanthkumar8122003@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(7, 'default', '{\"uuid\":\"c80764c1-7f51-4888-8156-1534a61e9814\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:6:\\\"parthi\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:17:\\\"parthi1@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(8, 'default', '{\"uuid\":\"9730bb77-1378-4613-8f66-f01ee5b89975\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:5:\\\"Abdul\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:22:\\\"parthiasho99@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(9, 'default', '{\"uuid\":\"ccebca10-1db8-43fe-a206-cae06fc8cc5d\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:6:\\\"Parthi\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"aparthiv09@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(10, 'default', '{\"uuid\":\"0ee31811-9f20-4291-9b79-d31c3d3c15b9\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:7:\\\"parthiv\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"aparthi9@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(11, 'default', '{\"uuid\":\"1ff00ae7-38e6-4f3b-abce-7c22ca3864f1\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:7:\\\"Vasanth\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"hrais@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(12, 'default', '{\"uuid\":\"6ab51546-49b9-4f01-98cc-be2e5623e0ac\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:10:\\\"ILAVARASAN\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"ilavarasani847@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(13, 'default', '{\"uuid\":\"f9a7f1b9-f1df-4683-8b79-fb23b60c09a4\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:7:\\\"Vasanth\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:27:\\\"vasanthkumar81223@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(14, 'default', '{\"uuid\":\"ca4cf147-affa-42fa-bc52-3566ce7056e4\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:6:\\\"Vinoth\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:26:\\\"vinoth9629263298@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(15, 'default', '{\"uuid\":\"64e4c2e6-11b0-43ab-823f-f5ab3a247c9c\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:5:\\\"Divya\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"divyapranesh77@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(16, 'default', '{\"uuid\":\"065ba46c-b339-423a-9d0f-e9d2432e3106\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:7:\\\"Yuvaraj\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:19:\\\"yuva82926@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(17, 'default', '{\"uuid\":\"453dea80-2deb-4923-9a47-27c5bfd76e59\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:8:\\\"VIP wddd\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:22:\\\"ammu03082003@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(18, 'default', '{\"uuid\":\"ef9aa986-7b95-4a9e-b56f-45efb9a19a8b\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:6:\\\"parthi\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:17:\\\"parthiv@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(19, 'default', '{\"uuid\":\"f31fe897-b080-4500-b430-6d74605f92cb\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:5:\\\"kumat\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:25:\\\"vasanthkumar8122003@gmail\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(20, 'default', '{\"uuid\":\"dcbc833f-58d5-4bb3-8392-dee831f3de9f\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:10:\\\"Ilavarasan\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"ilavarasani847@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(21, 'default', '{\"uuid\":\"151f71fc-6283-409c-8c91-73b8e84f94dd\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:10:\\\"PALANISAMY\\\";s:7:\\\"content\\\";s:3:\\\"hii\\\";s:7:\\\"subject\\\";s:2:\\\"df\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:28:\\\"vasanthkumar822003@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685038, 1715685038),
(22, 'default', '{\"uuid\":\"1eb41810-8620-4bc6-b449-1802f58605c4\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:5:\\\"Rider\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:14:\\\"info@ridein.in\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(23, 'default', '{\"uuid\":\"09ee411b-c547-4daf-b205-20ba7b74d5ab\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:5:\\\"Rider\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:14:\\\"info@ridein.in\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(24, 'default', '{\"uuid\":\"3120614d-22e9-40ab-b886-0f76ef54ea29\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:5:\\\"Muthu\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:28:\\\"dharshinipriya1906@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(25, 'default', '{\"uuid\":\"867729a3-9d51-4bd7-b67b-096c6a78510f\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:5:\\\"Muthu\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:28:\\\"dharshinipriya1906@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(26, 'default', '{\"uuid\":\"cd7ad366-8611-4f81-b356-9789052236a4\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:7:\\\"Vasanth\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"vasanthkumar8122003@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(27, 'default', '{\"uuid\":\"7324527e-2785-4ff5-a7ec-f5e978e4d398\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:7:\\\"Vasanth\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"vasanthkumar8122003@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(28, 'default', '{\"uuid\":\"b2059a62-ed9b-46b6-955a-2f73f07c8e0e\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:6:\\\"parthi\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:17:\\\"parthi1@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(29, 'default', '{\"uuid\":\"610a26ee-d94c-4fce-939b-6db21dc332c1\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:5:\\\"Abdul\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:22:\\\"parthiasho99@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(30, 'default', '{\"uuid\":\"5f2a80a6-ad63-4595-88f3-b05ba32e3827\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:6:\\\"Parthi\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"aparthiv09@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(31, 'default', '{\"uuid\":\"7ab0d73b-54e5-4c6e-a002-b5b93eef6d98\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:7:\\\"parthiv\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"aparthi9@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(32, 'default', '{\"uuid\":\"9b72d3d6-c517-4489-b14f-96ce17edc13f\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:7:\\\"Vasanth\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"hrais@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(33, 'default', '{\"uuid\":\"aa0458aa-7c6b-4bff-a166-9bfce3449cbd\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:10:\\\"ILAVARASAN\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"ilavarasani847@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(34, 'default', '{\"uuid\":\"dcfaddae-77a2-4225-8cb9-71fb8f1f9e7b\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:7:\\\"Vasanth\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:27:\\\"vasanthkumar81223@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(35, 'default', '{\"uuid\":\"1241b456-998c-4b6e-ba32-ec1a590a8b4f\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:6:\\\"Vinoth\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:26:\\\"vinoth9629263298@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(36, 'default', '{\"uuid\":\"1a3378ae-ef44-4763-9296-f32d7f93df14\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:5:\\\"Divya\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"divyapranesh77@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(37, 'default', '{\"uuid\":\"d4b8065c-7a85-417a-88fa-d455f370733b\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:7:\\\"Yuvaraj\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:19:\\\"yuva82926@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(38, 'default', '{\"uuid\":\"63a5b388-97c2-47f7-abad-3915d3a8ca5a\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:8:\\\"VIP wddd\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:22:\\\"ammu03082003@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(39, 'default', '{\"uuid\":\"a7829610-ec41-41dc-86ce-a44734e52729\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:6:\\\"parthi\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:17:\\\"parthiv@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(40, 'default', '{\"uuid\":\"c2f7c3b5-6df3-4fd8-a4a8-dd8b072a6c9a\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:5:\\\"kumat\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:25:\\\"vasanthkumar8122003@gmail\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(41, 'default', '{\"uuid\":\"d8258b29-f7f2-463d-8c7c-568f3b8caa07\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:10:\\\"Ilavarasan\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"ilavarasani847@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(42, 'default', '{\"uuid\":\"ffd8e2af-cd21-40f3-bec3-2c8ce75bfde2\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:10:\\\"PALANISAMY\\\";s:7:\\\"content\\\";s:3:\\\"wsa\\\";s:7:\\\"subject\\\";s:19:\\\"vasanthkumar8122003\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:28:\\\"vasanthkumar822003@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1715685106, 1715685106),
(43, 'default', '{\"uuid\":\"0046a52d-8ec2-4fc0-946d-d760b83de61b\",\"displayName\":\"App\\\\Mail\\\\MailQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\MailQueue\\\":26:{s:7:\\\"\\u0000*\\u0000data\\\";a:6:{s:3:\\\"url\\\";s:31:\\\"https:\\/\\/buskart.in\\/book\\/public\\/\\\";s:6:\\\"locale\\\";s:2:\\\"en\\\";s:10:\\\"first_name\\\";s:7:\\\"Vasanth\\\";s:7:\\\"content\\\";s:3:\\\"qww\\\";s:7:\\\"subject\\\";s:7:\\\"wertswd\\\";s:9:\\\"view_file\\\";s:19:\\\"emails.custom_email\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"vasanthkumar8122003@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1716218431, 1716218431);

-- --------------------------------------------------------

--
-- Table structure for table `join_us`
--

CREATE TABLE `join_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `join_us`
--

INSERT INTO `join_us` (`id`, `name`, `value`) VALUES
(1, 'facebook', 'https://www.facebook.com/sourcemonster'),
(2, 'google_plus', ''),
(3, 'twitter', '#'),
(4, 'linkedin', '#'),
(5, 'pinterest', '#'),
(6, 'youtube', '#'),
(7, 'instagram', 'https://www.instagram.com/source_monster/'),
(8, 'app_store_rider', '#'),
(9, 'app_store_driver', '#'),
(10, 'play_store_rider', 'https://drive.google.com/file/d/1R_J4aRNlt8JAQzz04_XSRkeT8DkqjB7w/view?usp=sharing'),
(11, 'play_store_driver', 'https://drive.google.com/file/d/1H8cXjT1_YSpvVYPSOyGvPmGI_ZlrHSSr/view?usp=sharing');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` varchar(5) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `default_language` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `value`, `status`, `default_language`) VALUES
(1, 'English', 'en', 'Active', '1'),
(2, 'Persian', 'fa', 'Active', '0'),
(3, 'Arabic', 'ar', 'Active', '0'),
(4, 'Spanish', 'es', 'Active', '0'),
(5, 'Português', 'pt', 'Active', '0'),
(6, 'Turkey', 'tr', 'Active', '0'),
(7, 'Francais', 'FR', 'Active', '0'),
(8, 'Русский', 'RU', 'Active', '0'),
(9, 'Romania', 'RO', 'Active', '0'),
(10, 'Austria', 'EUR', 'Active', '0');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `coordinates` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `coordinates`, `status`) VALUES
(3, 'dindigul', 'POLYGON((10.313071 77.951035, 10.338910 77.934041, 10.363902 77.926573, 10.386613 77.957729, 10.395731 77.993521, 10.357570 78.028711, 10.347354 77.996182, 10.320587 77.984252, 10.292129 77.974896, 10.334520 77.961506, 10.313071 77.951035, 10.313071 77.951035, 10.313071 77.951035 ))', 'Active'),
(9, 'coimbatore', 'POLYGON((10.941822 76.949944, 11.032820 76.887459, 11.196010 76.962113, 11.093609 77.030778, 11.065981 77.113175, 11.038461 77.130341, 11.012176 77.127595, 10.998022 77.042451, 10.941822 76.949944 ))', 'Active'),
(10, 'Chennai', 'POLYGON((12.939180 80.260182, 12.937841 80.055562, 12.996725 79.899007, 13.107764 79.883901, 13.162595 79.852315, 13.214741 79.967671, 13.233457 79.971791, 13.240141 80.032216, 13.258856 80.173665, 13.260192 80.261556, 13.248162 80.317860, 13.209393 80.338460, 13.131838 80.374165, 13.072986 80.368672, 12.999402 80.319234, 12.939180 80.260182 ))', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `manage_fare`
--

CREATE TABLE `manage_fare` (
  `id` int(10) UNSIGNED NOT NULL,
  `location_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL DEFAULT 0,
  `base_fare` decimal(5,2) NOT NULL,
  `capacity` int(11) NOT NULL,
  `min_fare` decimal(5,2) NOT NULL,
  `per_min` decimal(5,2) NOT NULL,
  `per_km` decimal(5,2) NOT NULL,
  `schedule_fare` decimal(5,2) NOT NULL,
  `schedule_cancel_fare` decimal(5,2) NOT NULL,
  `waiting_time` int(11) DEFAULT NULL,
  `waiting_charge` decimal(5,2) NOT NULL,
  `currency_code` varchar(10) DEFAULT NULL,
  `apply_peak` enum('Yes','No') NOT NULL,
  `apply_night` enum('Yes','No') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_fare`
--

INSERT INTO `manage_fare` (`id`, `location_id`, `vehicle_id`, `base_fare`, `capacity`, `min_fare`, `per_min`, `per_km`, `schedule_fare`, `schedule_cancel_fare`, `waiting_time`, `waiting_charge`, `currency_code`, `apply_peak`, `apply_night`) VALUES
(3, 10, 1, 70.00, 4, 100.00, 1.00, 10.00, 10.00, 0.00, 10, 1.00, 'INR', 'No', 'No'),
(4, 10, 2, 70.00, 4, 100.00, 1.00, 15.00, 10.00, 0.00, 10, 1.00, 'INR', 'No', 'No'),
(5, 3, 3, 120.00, 4, 150.00, 1.00, 19.00, 50.00, 0.00, 10, 1.00, 'INR', 'No', 'No'),
(6, 3, 4, 40.00, 2, 40.00, 1.00, 10.00, 10.00, 0.00, 10, 1.00, 'INR', 'No', 'No'),
(18, 10, 5, 40.00, 3, 50.00, 1.00, 8.00, 20.00, 0.00, 5, 1.00, 'INR', 'No', 'No'),
(19, 10, 6, 30.00, 1, 40.00, 1.00, 5.00, 20.00, 0.00, 5, 1.00, 'INR', 'No', 'No'),
(20, 3, 7, 20.00, 4, 40.00, 1.00, 2.00, 10.00, 0.00, 5, 1.00, 'INR', 'No', 'No'),
(23, 9, 2, 85.00, 4, 85.00, 2.00, 26.00, 25.00, 0.00, 10, 2.00, 'INR', 'Yes', 'Yes'),
(24, 9, 9, 999.99, 14, 999.99, 6.60, 80.00, 999.99, 0.00, 25, 7.00, 'INR', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `metas`
--

CREATE TABLE `metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metas`
--

INSERT INTO `metas` (`id`, `url`, `title`, `description`, `keywords`) VALUES
(1, '/', 'Home Pge', 'Home Page', ''),
(2, 'signin', 'Sign In', 'Sign In', ''),
(3, 'signin_driver', 'Sign In Driver', 'Sign In Driver', ''),
(4, 'signin_rider', 'Sign In Rider', 'Sign In Rider', ''),
(5, 'signup', 'Sing Up', 'Sing Up', ''),
(6, 'signup_driver', 'Sign Up Driver', 'Sign Up Driver', ''),
(7, 'signup_rider', 'Sign Up Rider', 'Sign Up Rider', ''),
(8, 'ride', 'Rider Home Page', 'Rider Home Page', ''),
(9, 'drive', 'Driver Home Page', 'Driver Home Page', ''),
(10, 'safety', 'Trip safety', 'Trip safety', ''),
(11, 'how_it_works', 'How its works', 'How its works', ''),
(12, 'requirements', 'Driver requirements', 'Driver requirements', ''),
(13, 'driver_app', 'Driver App', 'Driver App', ''),
(14, 'drive_safety', 'Driver Safety', 'Driver Safety', ''),
(15, 'driver_profile', 'Driver Profile', 'Driver Profile', ''),
(16, 'documents/{id}', 'Driver Documents', 'Driver Documents', ''),
(17, 'driver_payment', 'Driver Payment', 'Driver Payment', ''),
(18, 'driver_invoice', 'Driver Invoice', 'Driver Invoice', ''),
(19, 'driver_trip', 'Driver Trips', 'Driver Trips', ''),
(20, 'driver_trip_detail/{id}', 'Driver Trips Details', 'Driver Trips Details', ''),
(21, 'download_invoice/{id}', 'Invoice', 'Invoice', ''),
(22, 'trip', 'Trips', 'Trips', ''),
(23, 'profile', 'Profile', 'Profile', ''),
(24, 'forgot_password_driver', 'Forgot Password', 'Forgot Password', ''),
(25, 'reset_password', 'Reset Password', 'Reset Password', ''),
(26, 'forgot_password_rider', 'Forgot Password', 'Forgot Password', ''),
(27, 'forgot_password_link/{id}', 'Forgot Password Link', 'Forgot Password Link', ''),
(28, 'payout_preferences', 'Payout Preferences', 'Payout Preferences', ''),
(29, 'help', 'Help Center', 'Help Center', ''),
(30, 'help/topic/{id}/{category}', 'Help Center', 'Help Center', ''),
(31, 'help/article/{id}/{question}', 'Help Center', 'Help Center', ''),
(32, 'signin_company', 'Sign In Company', 'Sign In Company', ''),
(33, 'signup_company', 'Sign Up Company', 'Sign Up Company', ''),
(34, 'forgot_password_company', 'Forgot Password', 'Forgot Password', ''),
(35, 'company/reset_password', 'Reset Password', 'Reset Password', ''),
(36, 'admin', 'Admin Panel', 'Admin Panel', ''),
(37, 'company', 'Company Panel', 'Company Panel', ''),
(38, 'app/driver', 'Diver App', 'Diver App', ''),
(39, 'app/rider', 'Rider App', 'Rider App', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_08_25_160119_create_country_table', 1),
(2, '2014_10_11_095317_create_companies_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2015_08_17_142217_create_session_table', 1),
(6, '2015_08_23_070159_create_site_settings_table', 1),
(7, '2015_09_24_163220_create_admins_table', 1),
(8, '2016_03_25_173347_create_pages_table', 1),
(9, '2016_03_27_084526_create_join_us_table', 1),
(10, '2016_04_02_160807_create_metas_table', 1),
(11, '2016_05_09_140352_create_help_category_table', 1),
(12, '2016_05_09_140411_create_help_subcategory_table', 1),
(13, '2016_05_09_140500_create_help_table', 1),
(14, '2016_10_13_114638_create_currency_table', 1),
(15, '2017_04_18_070421_create_profile_picture_table', 1),
(16, '2017_04_18_080501_create_driver_documents_table', 1),
(17, '2017_04_24_071834_create_driver_address_table', 1),
(18, '2017_04_24_141629_create_car_type_table', 1),
(19, '2017_04_25_063221_create_driver_location_table', 1),
(20, '2017_04_27_101812_create_request_table', 1),
(21, '2017_05_08_123453_create_toll_reason_table', 1),
(22, '2017_05_09_044810_create_trips_table', 1),
(23, '2017_05_23_060535_create_rider_location_table', 1),
(24, '2017_05_24_092403_create_rating_table', 1),
(25, '2017_05_24_095832_create_cancel_reasons_table', 1),
(26, '2017_05_24_095833_create_cancel_table', 1),
(27, '2017_06_01_130626_create_fees_table', 1),
(28, '2017_06_08_085929_create_api_credentials_table', 1),
(29, '2017_06_08_102833_create_payment_gateway_table', 1),
(30, '2017_06_16_112151_create_payment_table', 1),
(31, '2017_06_16_112152_create_driver_payment_table', 1),
(32, '2017_09_21_115741_create_jobs_table', 1),
(33, '2017_11_12_133719_create_wallet_table', 1),
(34, '2017_11_17_071107_create_promo_code_table', 1),
(35, '2017_11_17_072500_create_users_promo_code_table', 1),
(36, '2018_03_09_193432_create_help_category_lang_table', 1),
(37, '2018_03_09_193447_create_help_sub_category_lang_table', 1),
(38, '2018_04_02_130448_create_language_table', 1),
(39, '2018_05_26_000018_create_payout_preference_table', 1),
(40, '2018_05_26_000020_create_payment_method_table', 1),
(41, '2018_07_13_063641_CreateEmergencySosTable', 1),
(42, '2018_07_13_073129_create_schedule_ride_table', 1),
(43, '2018_07_16_063607_entrust_setup_tables', 1),
(44, '2018_08_08_100000_create_telescope_entries_table', 1),
(45, '2019_01_09_111401_create_locations_table', 1),
(46, '2019_01_09_115510_create_manage_fare_table', 1),
(47, '2019_01_09_120028_create_peak_fare_details_table', 1),
(48, '2019_01_19_062416_create_email_settings_table', 1),
(49, '2019_01_19_132454_create_payout_credentials', 1),
(50, '2019_02_06_055025_create_help_translations_table', 1),
(51, '2019_03_07_131731_create_schedule_cancel_table', 1),
(52, '2019_04_01_100347_create_company_documents_table', 1),
(53, '2019_04_08_125114_create_company_payout_credentials_table', 1),
(54, '2019_04_09_051226_create_company_payout_preference_table', 1),
(55, '2019_04_11_115908_create_vehicle_table', 1),
(56, '2019_06_22_052259_create_referral_settings_table', 1),
(57, '2019_06_22_053324_create_referral_users_table', 1),
(58, '2019_09_24_051053_create_driver_owe_amounts_table', 1),
(59, '2019_09_25_104410_create_driver_owe_amount_payments_table', 1),
(60, '2019_10_18_130612_create_trip_toll_reasons_table', 1),
(61, '2019_10_21_123628_create_applied_referrals_table', 1),
(62, '2020_02_24_070641_create_failed_jobs_table', 1),
(63, '2020_05_28_105123_create_pool_trips_table', 1),
(64, '2020_07_10_061326_create_vehicle_make', 1),
(65, '2020_07_10_090927_create_vehicle_model', 1),
(66, '2020_07_10_135338_create_documents_table', 1),
(67, '2020_07_25_061824_create_documents_langs_table', 1),
(68, '2020_10_20_113351_create_filter_options_table', 1),
(69, '2020_10_22_070142_create_filter_objects_table', 1),
(70, '2020_10_22_123351_create_filter_options_translations', 1),
(71, '2020_11_05_132127_create_supports_table', 1),
(72, '2021_03_11_102950_create_app_version_table', 1),
(73, '2021_05_17_082442_create_cancel_reason_translations_table', 1),
(74, '2021_05_19_044410_create_pages_translations', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `footer` enum('yes','no') NOT NULL,
  `under` enum('company','discover','hosting') NOT NULL,
  `content` longtext NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `url`, `footer`, `under`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Terms of Service', 'terms_of_service', 'yes', '', '<span id=\"docs-internal-guid-f7e67a51-7fff-1c1d-45ae-29ad878ff34a\"><h4 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 24pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">Terms Of Service</span></h4><br><h4 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap;\">Last updated: February 15, 2024</span></h4><br><h4 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">Contractual Relationship</span></h4><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">These Terms of Use (\"Terms\") administer the entrance or use by you, a person, from inside any nation in the realm of utilizations, sites, substance, items, and administrations (the \"Administrations\") </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">It would be ideal if you READ THESE TERMS CAREFULLY BEFORE ACCESSING OR USING THE SERVICES. </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">Your entrance and utilization of the Services comprises your consent to be bound by these Terms, which builds up a legally binding connection among you and RideIn. In the event that you don\'t consent to these Terms, you may not access or utilize the Services. These Terms explicitly override earlier understandings or courses of action with you. ridein may quickly end these Terms or any Services as for you, or by and large stop offering or deny access to the Services or any segment thereof, whenever for any reason. </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">Supplemental terms may apply to specific Services, for example, approaches for a specific occasion, movement or advancement, and such supplemental terms will be unveiled to you regarding the material Services. Supplemental terms are notwithstanding, and will be esteemed a piece of, the Terms for the motivations behind the material Services. Supplemental terms will beat these Terms in case of a contention regarding the pertinent Services. </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">ridein may correct the Terms identified with the Services every once in a while. Alterations will be compelling upon ridein\' posting of such refreshed Terms at this area or the changed arrangements or supplemental terms on the relevant Service. Your proceeded with access or utilization of the Services after such presenting establishes your assent on be bound by the Terms, as altered. </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">ridein may give to a cases processor or a safety net provider any fundamental data (counting your contact data) if there is a dissension, debate or strife, which may incorporate a mishap, including you and a Third Party Provider and such data or information is important to determine the grumbling, question or struggle.</span></p><br><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">License.</span></h5><br><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap;\">Subject to your consistence with these Terms, ridein awards you a constrained, non-elite, non-sublicensable, revocable, non-transferrable permit to: (I) access and utilize the Applications on your own gadget exclusively regarding your utilization of the Services; and (ii) access and utilize any substance, data and related materials that might be made accessible through the Services, for each situation exclusively for your own, noncommercial use. Any rights not explicitly allowed in this are held by ridein and ridein\' licensors.</span></h5><br><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">Restrictions.</span></h5><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">You may not: (I) evacuate any copyright, trademark or other exclusive notification from any bit of the Services; (ii) replicate, change, get ready subsidiary works dependent on, circulate, permit, rent, move, exchange, exchange, freely show, openly perform, transmit, stream, communicate or generally misuse the Services aside from as explicitly allowed by ridein; (iii) decompile, figure out or dismantle the Services with the exception of as might be allowed by material law; (iv) connection to, mirror or edge any bit of the Services; (v) cause or dispatch any projects or contents to scrape, ordering, looking over, or generally information mining any part of the Services or unduly loading or frustrating the task as well as usefulness of any part of the Services; or (vi) endeavor to increase unapproved access to or disable any part of the Services or its related frameworks or systems.</span></p><br><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">Ownership.</span></h5><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">The Services and all rights in that are and will remain ridein\' property or the property of ridein\' licensors. Neither these Terms nor your utilization of the Services pass on or concede to you any rights: (I) in or identified with the Services aside from the constrained permit allowed above; or (ii) to utilize or reference in any way ridein\' organization names, logos, item and administration names, trademarks or administrations marks or those of ridein licensors.</span></p><br><h4 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">Your Use of the Services</span></h4><br><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">User Accounts.</span></h5><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">So as to utilize most parts of the Services, you should enroll for and keep up a functioning individual client Services (\"Account\"). You should be around 18 years old, or the time of lawful larger part in your locale (if not quite the same as 18), to acquire an Account. Record enlistment expects you to submit to ridein certain individual data, for example, your name, address, cell phone number and age, and additionally no less than one substantial installment technique (either a charge card or acknowledged installment accomplice). You consent to keep up exact, finish, and up and coming data in your Account. Your inability to keep up exact, finish, and up and coming Account </span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">data, including having an invalid or lapsed installment strategy on document, may result in your powerlessness to access and utilize the Services or ridein\' end of these Terms with you. You are in charge of all movement that happens under your Account, and you consent to keep up the security and mystery of your Account username and secret key consistently. Except if generally allowed by ridein in thinking of, you may just have one Account.</span></p><br><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">User Requirements and Conduct.</span></h5><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">The Service isn\'t accessible for use by people younger than 18. You may not approve outsiders to utilize your Account, and you may not permit people younger than 18 to get transportation or coordinations administrations from Third Party Providers except if they are joined by you. You may not relegate or generally exchange your Account to some other individual or substance. You consent to follow every single pertinent law when utilizing the Services, and you may just utilize the Services for legal purposes (e.g., no vehicle of unlawful or perilous materials). You won\'t, in your utilization of the Services, cause disturbance, irritation, burden, or property harm, regardless of whether to the Third Party Provider or some other gathering. In specific occurrences you might be solicited to give confirmation from identity to access or utilize the Services, and you concur that you might be denied access to or utilization of the Services in the event that you decline to give evidence of personality.</span></p><br><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">Promotional Codes.</span></h5><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">ridein may, in ridein sole circumspection, make limited time codes that might be reclaimed for Account credit, or different highlights or advantages identified with the Services as well as a Third Party Provider\'s administrations, subject to any extra terms that ridein sets up on a for every special code premise (\"Promo Codes\"). You concur that Promo Codes: (I) must be utilized for the target group and reason, and in a legal way; (ii) may not be copied, sold or moved in any way, or made accessible to the overall population (regardless of whether presented on an open frame or something else), except if explicitly allowed by ridein; (iii) might be crippled by ridein whenever for any reason without risk to ridein; (iv) may just be utilized as per the explicit terms that ridein sets up for such Promo Code; (v) are not substantial for money; and (vi) may lapse preceding your utilization. ridein maintains whatever authority is needed to retain or deduct credits or different highlights or advantages acquired using Promo Codes by you or some other client if ridein decides or trusts that the utilization or reclamation of the Promo Code was in blunder, deceitful, unlawful, or disregarding the pertinent Promo Code terms or these Terms.</span></p><br><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">User Provided Content.</span></h5><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">ridein may, in ridein sole carefulness, allow you now and again to submit, transfer, distribute or generally make accessible to ridein through the Services literary, sound, or potentially visual substance and data, including critique and criticism identified with the Services, commencement of help solicitations, and accommodation of passages for rivalries and advancements (\"User Content\"). Any User Content given by you remains your property. In any case, by giving User Content to ridein, you give ridein an around the world, unending, permanent, transferrable, eminence free permit, with the privilege to sublicense, to utilize, duplicate, adjust, make subordinate works of, appropriate, openly show, freely perform, and generally misuse in any way such User Content in all arrangements and dissemination channels currently known or in the future contrived (incorporating into association with the Services and ridein the same old thing and on outsider locales and administrations), without further notice to or assent from you, and without the prerequisite of installment to you or some other individual or element. </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">You speak to and warrant that: (I) you either are the sole and select proprietor of all User Content or you have all rights, licenses, assents and discharges important to give ridein the permit to the User Content as put forward above; and (ii) neither the User Content nor your accommodation, transferring, distributing or generally making accessible of such User Content nor ridein utilization of the User Content as allowed in this will encroach, abuse or damage an outsider\'s protected innovation or exclusive rights, or privileges of exposure or security, or result in the infringement of any relevant law or direction. </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">You consent to not give User Content that is slanderous, derogatory, contemptuous, savage, profane, obscene, unlawful, or generally hostile, as controlled by ridein in its sole watchfulness, regardless of whether such material might be secured by law. ridein may, however will not be committed to, survey, screen, or evacuate User Content, at ridein\' sole prudence and whenever and for any reason, without notice to you. </span></p><br><h5 dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">Network Access and Devices.</span></h5><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">You are in charge of getting the information arrange get to important to utilize the Services. Your portable system\'s information and informing rates and expenses may apply on the off chance that you access or utilize the Services from a remote empowered gadget and you will be in charge of such rates and charges. You are in charge of getting and refreshing perfect equipment or gadgets important to access and utilize the Services and Applications and any updates thereto. ridein does not ensure that the Services, or any segment thereof, will work on a specific equipment or gadgets. Also, the Services might be liable to glitches</span></p><br><p dir=\"ltr\" style=\"line-height:2.057148;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">Payment</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">You comprehend that utilization of the Services may result in charges to you for the administrations or merchandise you get from a Third Party Provider (\"Charges\"). After you have gotten administrations or products acquired through your utilization of the Service, ridein will encourage your installment of the material Charges for the benefit of the Third Party Provider thusly Third Party Provider\'s constrained installment accumulation operator. Installment of the Charges in such way will be viewed as equivalent to installment made straightforwardly by you to the Third Party Provider. Charges will be comprehensive of relevant expenses where required by law. Charges paid by you are conclusive and non-refundable, except if generally dictated by ridein. You hold the privilege to ask for lower Charges from a Third Party Provider for administrations or products gotten by you from such Third Party Provider at the time you get such administrations or merchandise. ridein will react in like manner to any demand from a Third Party Provider to adjust the Charges for a specific administration or great. </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">All Charges are expected quickly and installment will be encouraged by ridein utilizing the favored installment technique assigned in your Account, after which ridein will send you a receipt by email. In the event that your essential Account installment strategy is resolved to be terminated, invalid or generally not ready to be charged, you concur that ridein may, as the Third Party Provider\'s constrained installment accumulation specialist, utilize an optional installment technique in your Account, if accessible. </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">As among you and ridein, ridein claims all authority to set up, expel as well as change Charges for any or all administrations or products acquired using the Services whenever in ridein sole caution. Further, you recognize and concur that Charges material in certain topographical zones may increment significantly amid times of appeal. ridein will utilize sensible endeavors to advise you of Charges that may apply, gave that you will be in charge of Charges brought about under your Account paying little mind to your consciousness of such Charges or the sums thereof. ridein may every once in a while give certain clients special offers and limits that may result in various sums charged for the equivalent or comparative administrations or products got using the Services, and you concur that such special offers and limits, except if likewise made accessible to you, will make little difference to your utilization of the Services or the Charges connected to you. You may choose to drop your demand for administrations or merchandise from a Third Party Provider whenever before such Third Party Provider\'s landing, in which case you might be charged an abrogation expense. </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">This installment structure is planned to completely repay the Third Party Provider for the administrations or products gave. Aside from as for cab transportation administrations asked for through the Application, ridein does not assign any bit of your installment as a tip or tip to the Third Party Provider. Any portrayal by ridein (on ridein\' site, in the Application, or in ridein advertising materials) such that tipping is \"deliberate,\" \"not required,\" as well as \"included\" in the installments you make for administrations or products gave isn\'t proposed to recommend that ridein gives any extra sums, past those depicted above, to the Third Party Provider. You comprehend and concur that, while you are allowed to give extra installment as a tip to any Third Party Provider who gives you administrations or products acquired through the Service, you are under no commitment to do as such. Tips are deliberate. After you have gotten administrations or merchandise acquired through the Service, you will have the chance to rate your experience and leave extra criticism about your Third Party Provider.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; vertical-align: baseline; white-space: pre-wrap;\">General </span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">You may not dole out or move these Terms in entire or partially without ridein earlier composed endorsement. You give your endorsement to ridein for it to appoint or move these Terms in entire or to some extent, including to: (I) a backup or associate; (ii) an acquirer of rideinvalue, business or resources; or (iii) a successor by merger. No joint endeavor, association, business or office relationship exists between you, ridein or any Third Party Provider because of the agreement among you and ridein or utilization of the Services. </span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\">On the off chance that any arrangement of these Terms is held to be unlawful, invalid or unenforceable, in entire or to some extent, under any law, such arrangement or part thereof will to that degree be regarded not to frame some portion of these Terms but rather the lawfulness, legitimacy and enforceability of alternate arrangements in these Terms will not be influenced. In that occasion, the gatherings will supplant the illicit, invalid or unenforceable arrangement or part thereof with an arrangement or part thereof that is legitimate, substantial and enforceable and that has, to the best degree conceivable, a comparable impact as the unlawful, invalid or unenforceable arrangement or part thereof, given the substance and reason for these Terms. These Terms comprise the whole ascension and comprehension of the gatherings as for its topic and replaces and overrides all earlier or contemporaneous understandings or endeavors with respect to such topic. In these Terms, the words \"counting\" and \"incorporate\" signify \"counting, however not restricted to.\"</span></p><br><br></span>', 'Active', '2016-03-26 13:50:11', '2024-06-08 08:59:59'),
(2, 'Privacy Policy', 'privacy_policy', 'yes', '', '<p>Privacy Policy   Introduction   When you use Marina, you confide in us with your data. We are focused on keeping that trust. That begins with helping you comprehend our security rehearses.    This policy portrays the data we gather, how it is utilized and shared, and your decisions in regards to this data.    Last adjusted: 15 Feb 2023    Powerful date: 15 Feb 2025 Data collection and use  Scope  This Policy applies to user of Marina services anywhere in the world, including user of Marina\' applications, websites, highlights or different services.    This Policy depicts how Marina and its partners gather and utilize individual data to give our services.      This Policy explicitly applies to:      Drivers: user who give transport independently or through accomplice transport organizations to deliver food.  Riders : users who request for the ride to travel.      This policy likewise applies to the individuals who furnish data to Marina regarding an application to utilize our services, or whose data Marina generally gets regarding its services.      The practices portrayed in this policy are liable to appropriate laws in the spots in which we work. This implies we just take part in the practices portrayed in this policy in a specific nation or area whenever allowed under the laws of those spots. If you don\'t mind get in touch with us in the event that you have inquiries on our practices in your nation or area.      Data controller  The information we collect  Marina collects::      &bull; Data that you give to Marina, for example, when you make your Marina account.      &bull; Data made when you utilize our services, for example, area, utilization and gadget data.      &bull; Information from other sources, such as Marina partners and third parties that use Marina APIs.      The accompanying data is gathered by or for Marina:      Information you provide      This may include:      User profile : We gather data when you make or refresh your Marina account. This may incorporate your name, email address, telephone number, login name and secret key, address, installment or keeping money data (counting related installment check data), government recognizable proof numbers, for example, Social Security number, driving permit or identification whenever required by law, date of birth, photograph and mark. This likewise incorporates driver vehicle or protection data. This likewise incorporates the inclinations and settings that you empower for your Marina account.      Background check information We may gather historical verification data in the event that you join to utilize Marina\' services as a driver or delivery partner. This may incorporate data, for example, your driving history or criminal record (where allowed by law). This data might be gathered by a seller for Marina\' sake.      User content: We may gather data that you submit when you contact Marina customer support, give appraisals or compliments to different user, or generally contact Marina.      Information created when you use our services      This may include:      &#61607; Location information      Depending upon the Marina services you use and your application settings or gadget consents, we may gather your exact or inexact area data as decided through information, for example, GPS, IP address and Wi-Fi.      On the off chance that you are a driver, Marina gathers area data when the Marina application is running in the closer view (application open and onscreen) or background (application open yet not onscreen) of your gadget.      Riders and drivers can utilize the Marina application without permitting Marina to gather their location information. Be that as it may, this may influence the usefulness accessible on your Marina application. For instance, on the off chance that you don\'t permit Marina to gather your area data, you should enter your get address physically. What\'s more, area data will be gathered from the driver amid your excursion and connected to your record, regardless of whether you have not permitted Marina to gather your area data.      Transaction information      We gather transaction information identified with your utilization of our services, including the kind of services you asked for or gave, your request subtleties, delivery information, date and time the administration was given, sum charged, separate voyaged, and installment Policy. Likewise, on the off chance that somebody utilizes your advancement code, we may connect your name with that individual.      Usage information      We gather data about how you interface with our services. This incorporates data, for example, get to dates and times, application highlights or pages saw, application crashes and other framework action, kind of program, and outsider destinations or services you were utilizing before cooperating with our services. Sometimes, we gather this data through treats, pixel labels and comparable advancements that make and keep up remarkable identifiers. To discover increasingly about these advancements, if it\'s not too much trouble see our Cookie Statement.      Communications data      We empower user to speak with one another and Marina by means of the Marina applications, sites and other services. For instance, we empower drivers and riders, are beneficiaries, to call one another (in a few nations, without uncovering their phone numbers to one another). To give this administration, Marina gets some data with respect to the calls, including the date and time of the call/content and the substance of the interchanges. Marina may likewise utilize this data for customer support services (counting to determine question between user), for wellbeing and security purposes, to enhance our items and services, and for investigation.      Information from other sources      This may include:      &bull; User feedback, such as ratings or compliments.  &bull; user furnishing your data regarding referral programs.  &bull; user asking for services for you or for your benefit.  &bull; user or others giving data in association claims or debate.  &bull; Marina colleagues through which you make or access your Marina account, for example, installment suppliers, internet based life services, on-request music services, or applications or sites who utilize Marina\' APIs or whose APIs Marina utilizes, (for example, when you arrange a stumble on Google Maps).  &bull; Protection suppliers (on the off chance that you are a driver or delivery partner).  &bull; Money related services suppliers (on the off chance that you are a driver or delivery partner).  &bull; Accomplice transport organizations (in the event that you are a driver who utilizes our services through a record related with such an organization).  &bull; The proprietor of a Marina for Business or Marina Family profile that you use.  &bull; Publicly available sources.  &bull; Marketing service providers.  Marina may consolidate the data gathered from these sources with other data in its ownership.      How we utilize your data      Marina gathers and uses data to empower dependable and helpful transportation, conveyance and different items and services. We likewise utilize the data we gather:      &bull; To improve the wellbeing and security of our user and services  &bull; For customer support  &bull; For innovative work  &bull; To empower interchanges to or between user  &bull; To give advancements or challenges  &bull; Regarding legitimate procedures      Marina does not offer or share your own data to outsiders for outsider direct showcasing purposes.      Marina utilizes the data it gathers for purposes including:      Providing services and features      Marina utilizes the data we gather to give, customize, keep up and enhance our items and services. This incorporates utilizing the data to:      &bull; Make and refresh your record.  &bull; Verify your identity.  &bull; Process or encourage installments for those services.  Offer, acquire, give or encourage protection or financing policies regarding our services.  &bull; Track the advancement of your trek or conveyance.  &bull; Empower highlights that enable you to impart data to other individuals, for example, when you present a compliment about a driver, allude a companion to Marina, split charges or offer your ETA.  &bull; Empower highlights to customize your Marina account, for example, making bookmarks for your most loved spots, and to empower speedy access to past goals.  &bull; Empower availability includes that make it less demanding for user with handicaps to utilize our services, for example, those that empower hard of hearing or in need of a hearing aide drivers to alarm their riders of their incapacities, permit just instant messages from riders, and to get blazing outing demand warnings rather than sound notices.  &bull; Perform inward tasks important to give our services, including to investigate programming bugs and operational issues, to lead information examination, testing and look into, and to screen and dissect use and movement patterns.      Cookies and third-party technologies      Marina and its accomplices use cookies and other identification technologies on our applications, sites, messages and online promotions for purposes portrayed in this approach.      Cookies are little content documents that are put away on your program or gadget by sites, applications, online media and commercials. Marina utilizes treats and comparable advancements for purposes, for example,      &bull; Validating clients  &bull; Recollecting client inclinations and settings  &bull; Deciding the prevalence of substance  &bull; Conveying and estimating the viability of publicizing efforts  &bull; Investigating webpage traffic and inclines, and by and large understanding the online conduct and premiums of individuals who associate with our administrations We may likewise enable others to give group of onlookers estimation and examination administrations for us, to serve promotions for our benefit over the Internet, and to track and give an account of the execution of those ads. These substances may utilize treats, web reference points, SDKs and different innovations to recognize your gadget when you visit our webpage and utilize our administrations, and in addition when you visit other online locales and administrations. It would be ideal if you see our Cookie Statement for more data with respect to the utilization of cookies and different advances portrayed in this area, including in regards to your decisions identifying with such advances.   Choice and transparency    Marina gives the way to you to see and control the data that Marina gathers, including through:   in-app privacy settings  &#61607; device permissions  &#61607; in-app ratings pages  &#61607; marketing opt-outs  You can likewise ask Marina to give you clarification, duplicates or revision of your information.    PRIVACY SETTINGS   The Privacy Settings menu in the Marina Rider application enables clients to set or refresh their area and contacts sharing inclinations, and their inclinations for getting portable notices from Marina. Data on these settings, how to set or change these settings, and the impact of killing these settings are depicted underneath.   Location information    &bull; Marina utilizes riders\' gadget area administrations to make it simpler to get a sheltered, dependable excursion at whatever point you require one. Area information enhances our administrations, including pick-ups, route and client bolster.   You can empower/incapacitate or change Marina\' accumulation of rider area data whenever through the Privacy Settings menu in the Marina application, or by means of the settings on your cell phone. On the off chance that you cripple the gadget area benefits on your gadget, your utilization of the Marina application will be influenced. For instance, you should enter your get or drop-off areas physically. What\'s more, area data will be gathered from the driver amid your outing and connected to your record, regardless of whether you have not empowered Marina to gather your area data.   Notifications: Account and trip updates    Marina gives clients arrange status warnings and updates identified with your record. These warnings are an important piece of utilizing the Marina application and can\'t be handicapped. In any case, you can pick the strategy by which you get these notices through the Privacy Settings menu in the Marina application.   Notifications: Discounts and news   You can empower Marina to send you push warnings about limits and news from Marina. You can empower/impair these notices whenever through the Privacy Settings menu in the Marina application.    DEVICE PERMISSIONS   Most portable stages (iOS, Android, and so on.) have characterized specific kinds of gadget information that applications can\'t access without your assent. These stages have diverse authorization frameworks for acquiring your assent. The iOS stage will caution you the first run through the Marina application needs authorization to get to particular sorts of information and will give you a chance to assent (or not assent) to that ask. Android gadgets will advise you of the authorizations that the Marina application looks for before you first utilize the application, and your utilization of the application establishes your assent.    Updates to this policy   We may sometimes refresh this arrangement.   We may sometimes refresh this arrangement. On the off chance that we roll out huge improvements, we will inform you of the progressions through the Marina applications or through others implies, for example, email. To the degree allowed under pertinent law, by utilizing our administrations after such notice, you agree to our updates to this strategy.      We urge you to occasionally survey this strategy for the most recent data on our protection rehearses. We will likewise make earlier forms of our protection strategies accessible for survey.    </p>', 'Active', '2016-03-26 15:26:38', '2024-06-08 08:53:17'),
(3, 'About Us', 'about_us', 'yes', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size: 10.5pt; font-family: &quot;Product Sans Regular&quot;, &quot;serif&quot;; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp; &nbsp;</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-font-kerning:0pt;mso-ligatures:none\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 15pt 0in 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 22.5pt; font-family: &quot;Product Sans Regular&quot;, &quot;serif&quot;;\">About Us<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: &quot;Product Sans Regular&quot;, &quot;serif&quot;;\">&nbsp; Founded in Jan of\r\n2024 and based in India, Marina is a trusted community marketplace for people\r\nto list, discover, and book unique accommodations around the world — online or\r\nfrom a mobile phone or tablet.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: &quot;Product Sans Regular&quot;, &quot;serif&quot;;\">&nbsp; Whether an\r\napartment for a night, a castle for a week, or a villa for a month, Marina\r\nconnects people to unique travel experiences, at any price point, in more than\r\n4 cities and 1 countries. And with world-class customer service and a growing\r\ncommunity of users, Marina is the easiest way for people to monetize their\r\nextra space and showcase it to an audience of millions.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>', 'Active', '2016-03-26 17:22:05', '2024-06-08 08:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `pages_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `locale` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `correlation_id` text DEFAULT NULL,
  `admin_transaction_id` text DEFAULT NULL,
  `driver_transaction_id` text DEFAULT NULL,
  `admin_payout_status` enum('Pending','Processing','Paid') NOT NULL DEFAULT 'Pending',
  `driver_payout_status` enum('Pending','Processing','Paid') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `trip_id`, `correlation_id`, `admin_transaction_id`, `driver_transaction_id`, `admin_payout_status`, `driver_payout_status`) VALUES
(3, 3, NULL, NULL, NULL, 'Pending', 'Pending'),
(4, 4, NULL, NULL, NULL, 'Pending', 'Pending'),
(5, 6, NULL, NULL, NULL, 'Pending', 'Pending'),
(6, 8, NULL, NULL, NULL, 'Pending', 'Pending'),
(7, 9, NULL, NULL, NULL, 'Pending', 'Pending'),
(8, 11, NULL, NULL, NULL, 'Pending', 'Pending'),
(9, 12, NULL, NULL, NULL, 'Pending', 'Pending'),
(10, 13, NULL, NULL, NULL, 'Pending', 'Pending'),
(11, 14, NULL, NULL, NULL, 'Pending', 'Pending'),
(12, 15, NULL, NULL, NULL, 'Pending', 'Pending'),
(13, 16, NULL, NULL, NULL, 'Pending', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway`
--

CREATE TABLE `payment_gateway` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `value` varchar(355) NOT NULL,
  `site` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateway`
--

INSERT INTO `payment_gateway` (`id`, `name`, `value`, `site`) VALUES
(1, 'trip_default', 'cash', 'Common'),
(2, 'payout_methods', 'bank_transfer,paypal,stripe', 'Common'),
(3, 'is_enabled', '1', 'Cash'),
(4, 'is_enabled', '0', 'Paypal'),
(5, 'paypal_id', '#', 'Paypal'),
(6, 'mode', 'sandbox', 'Paypal'),
(7, 'client', '#', 'Paypal'),
(8, 'secret', '#', 'Paypal'),
(9, 'access_token', '#', 'Paypal'),
(10, 'is_enabled', '1', 'Stripe'),
(11, 'publish', '#', 'Stripe'),
(12, 'secret', '#', 'Stripe'),
(13, 'api_version', '2020-08-27', 'Stripe'),
(14, 'is_enabled', '0', 'Braintree'),
(15, 'mode', 'sandbox', 'Braintree'),
(16, 'merchant_id', '#', 'Braintree'),
(17, 'public_key', '#', 'Braintree'),
(18, 'private_key', '#', 'Braintree'),
(19, 'tokenization_key', '#', 'Braintree'),
(20, 'merchant_account_id', '', 'Braintree'),
(21, 'is_web_payment', '1', 'Common'),
(22, 'is_enabled', '0', 'Flutterwave'),
(24, 'key', '#', 'Flutterwave'),
(25, 'secret', '#', 'Flutterwave'),
(26, 'hash', '#', 'Flutterwave'),
(27, 'mode', 'local', 'Paytm'),
(28, 'merchant_id', '#', 'Paytm'),
(29, 'key', '#', 'Paytm'),
(30, 'website', 'WEBSTAGING', 'Paytm'),
(31, 'channel', 'WEB', 'Paytm'),
(32, 'type', 'Retail', 'Paytm'),
(33, 'is_enabled', '0', 'Paytm'),
(43, 'is_enabled', '1', 'Razorpay'),
(44, 'key', '#', 'Razorpay'),
(45, 'secret', '#', 'Razorpay'),
(46, 'mode', 'sandbox', 'Razorpay');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `customer_id` varchar(100) DEFAULT NULL,
  `intent_id` varchar(100) DEFAULT NULL,
  `payment_method_id` varchar(100) DEFAULT NULL,
  `brand` varchar(20) DEFAULT NULL,
  `last4` varchar(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `user_id`, `customer_id`, `intent_id`, `payment_method_id`, `brand`, `last4`, `created_at`, `updated_at`) VALUES
(3, 10001, 'cus_LyYZ29ynfXj6V4', 'seti_1LGbScGMjHXYwnE05Dc0hAi1', 'pm_1LGbSZGMjHXYwnE0bAg6UXWK', 'visa', '1111', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payout_credentials`
--

CREATE TABLE `payout_credentials` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `preference_id` varchar(10) NOT NULL,
  `default` enum('no','yes') NOT NULL,
  `type` varchar(30) NOT NULL,
  `payout_id` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payout_credentials`
--

INSERT INTO `payout_credentials` (`id`, `user_id`, `preference_id`, `default`, `type`, `payout_id`, `created_at`, `updated_at`) VALUES
(1, 10002, '1', 'yes', 'BankTransfer', '12345678982829', '2021-12-18 16:13:31', '2023-10-25 09:57:02'),
(2, 10013, '2', 'yes', 'Paypal', 'mapeshos@yahoo.co.uk', '2022-06-23 13:42:00', '2022-06-23 13:42:00'),
(3, 10021, '3', 'yes', 'BankTransfer', '1234567890', '2022-06-27 09:24:40', '2022-06-27 09:24:40'),
(4, 10017, '4', 'yes', 'BankTransfer', '123123123', '2023-04-26 19:45:22', '2023-04-26 19:45:22'),
(5, 10022, '5', 'yes', 'BankTransfer', '988776783621', '2024-04-01 05:09:25', '2024-04-01 05:09:25'),
(6, 10025, '6', 'yes', 'BankTransfer', '279874891049', '2024-05-10 12:04:16', '2024-05-10 12:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `payout_preference`
--

CREATE TABLE `payout_preference` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address1` varchar(191) NOT NULL,
  `address2` varchar(191) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `postal_code` varchar(25) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `payout_method` varchar(20) NOT NULL,
  `paypal_email` varchar(191) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `routing_number` varchar(100) DEFAULT NULL,
  `account_number` varchar(100) DEFAULT NULL,
  `holder_name` varchar(100) NOT NULL,
  `holder_type` enum('Individual','Company') NOT NULL,
  `document_id` varchar(100) DEFAULT NULL,
  `document_image` varchar(100) DEFAULT NULL,
  `additional_document_id` varchar(100) DEFAULT NULL,
  `additional_document_image` varchar(100) DEFAULT NULL,
  `phone_number` varchar(100) DEFAULT NULL,
  `address_kanji` varchar(255) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `bank_location` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `branch_code` varchar(100) DEFAULT NULL,
  `ssn_last_4` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payout_preference`
--

INSERT INTO `payout_preference` (`id`, `user_id`, `address1`, `address2`, `city`, `state`, `postal_code`, `country`, `payout_method`, `paypal_email`, `currency_code`, `routing_number`, `account_number`, `holder_name`, `holder_type`, `document_id`, `document_image`, `additional_document_id`, `additional_document_image`, `phone_number`, `address_kanji`, `bank_name`, `bank_location`, `branch_name`, `branch_code`, `ssn_last_4`, `created_at`, `updated_at`) VALUES
(1, 10002, '', '', NULL, NULL, NULL, NULL, 'BankTransfer', '12345678982829', '', '', '12345678982829', 'RIDEIN  SOLUTIONS', 'Company', NULL, NULL, NULL, NULL, '', '[]', 'Demog', 'Demo', '', 'Demo', '', '2021-12-18 16:13:31', '2023-10-25 10:56:01'),
(2, 10013, 'Mululu', '18', 'Kalulushi', 'Copperbelt', '260213', 'ZM', 'Paypal', 'mapeshos@yahoo.co.uk', 'INR', '', '', '', 'Company', NULL, NULL, NULL, NULL, '', '[]', '', '', '', '', '', '2022-06-23 13:42:00', '2022-06-23 13:42:00'),
(3, 10021, '', '', NULL, NULL, NULL, NULL, 'BankTransfer', '1234567890', '', '', '1234567890', 'Vishnu', 'Company', NULL, NULL, NULL, NULL, '', '[]', 'test', 'Madurai', '', 'ind1234', '', '2022-06-27 09:24:40', '2022-06-27 09:24:40'),
(4, 10017, '', NULL, NULL, NULL, NULL, 'IN', 'BankTransfer', '123123123', '', NULL, '123123123', 'qweqw', 'Company', NULL, NULL, NULL, NULL, '9999999955', '[]', 'eqweqwe', '13123', NULL, '2eqwe', NULL, '2023-04-26 19:45:22', '2023-04-26 19:49:11'),
(5, 10022, '', NULL, NULL, NULL, NULL, 'IN', 'BankTransfer', '988776783621', '', NULL, '988776783621', 'sbi', 'Company', NULL, NULL, NULL, NULL, '9876543211', '[]', 'sbi', 'asidjcsa', NULL, 'sbin1000', NULL, '2024-04-01 05:09:25', '2024-04-01 05:09:25'),
(6, 10025, '', NULL, NULL, NULL, NULL, 'IN', 'BankTransfer', '279874891049', '', NULL, '279874891049', 'posdo', 'Company', NULL, NULL, NULL, NULL, '8807342425', '[]', 'RQWE', 'EWRER', NULL, 'SBIN0008765', NULL, '2024-05-10 12:04:16', '2024-06-05 08:32:20');

-- --------------------------------------------------------

--
-- Table structure for table `peak_fare_details`
--

CREATE TABLE `peak_fare_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `fare_id` int(10) UNSIGNED NOT NULL,
  `type` enum('Peak','Night') NOT NULL,
  `day` tinyint(4) DEFAULT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peak_fare_details`
--

INSERT INTO `peak_fare_details` (`id`, `fare_id`, `type`, `day`, `start_time`, `end_time`, `price`) VALUES
(2, 23, 'Peak', 1, '07:00:00', '10:00:00', 30.00),
(3, 23, 'Night', NULL, '00:00:00', '12:00:00', 30.00),
(4, 24, 'Peak', 1, '04:00:00', '10:00:00', 2500.00),
(5, 24, 'Night', NULL, '00:00:00', '23:00:00', 2500.00);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'manage_admin', 'Manage Admin', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(2, 'create_rider', 'Create Rider', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(3, 'view_rider', 'View Rider', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(4, 'update_rider', 'Update Rider', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(5, 'delete_rider', 'Delete Rider', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(6, 'create_driver', 'Create Driver', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(7, 'view_driver', 'View Driver', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(8, 'update_driver', 'Update Driver', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(9, 'delete_driver', 'Delete Driver', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(10, 'create_company', 'Create Company', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(11, 'view_company', 'View Company', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(12, 'update_company', 'Update Company', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(13, 'delete_company', 'Delete Company', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(14, 'manage_vehicle_type', 'Manage Vehicle Type', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(15, 'manage_send_message', 'Manage Send Message', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(16, 'manage_api_credentials', 'Manage Api Credentials', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(17, 'manage_payment_gateway', 'Manage Payment Gateway', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(18, 'manage_site_settings', 'Manage Site Settings', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(19, 'manage_map', 'Manage Map', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(20, 'manage_statements', 'Manage Statements', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(21, 'manage_trips', 'Manage Trips', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(22, 'manage_wallet', 'Manage Wallet', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(23, 'manage_owe_amount', 'Manage Owe Amount', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(24, 'manage_promo_code', 'Manage Promo Code', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(25, 'manage_driver_payments', 'Manage Driver Payments', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(26, 'manage_cancel_trips', 'Manage Cancel Trips', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(27, 'manage_rating', 'Manage Rating', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(28, 'manage_fees', 'Manage Fees', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(29, 'manage_join_us', 'Manage Join Us', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(30, 'manage_requests', 'Manage Requests', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(31, 'manage_currency', 'Manage Currency', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(32, 'manage_static_pages', 'Manage Static Pages', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(33, 'manage_metas', 'Manage Metas', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(34, 'manage_locations', 'Manage Locations', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(35, 'manage_peak_based_fare', 'Manage Peak Based Fare', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(36, 'manage_send_email', 'Manage Send Email', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(37, 'manage_email_settings', 'Manage Email Settings', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(38, 'manage_language', 'Manage Language', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(39, 'manage_help', 'Manage Help', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(40, 'manage_country', 'Manage Country', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(41, 'manage_heat_map', 'Manage Heat Map', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(42, 'manage_manual_booking', 'Manage Manual Booking', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(43, 'manage_company_payment', 'Manage Company Payment', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(44, 'manage_payments', 'Manage Payments', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(45, 'manage_vehicle', 'Manage Vehicle', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(46, 'manage_referral_settings', 'Manage Referral Settings', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(47, 'manage_rider_referrals', 'Manage Rider Referrals', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(48, 'manage_driver_referrals', 'Manage Driver Referrals', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(49, 'create_manage_reason', 'Create Manage Reason', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(50, 'view_manage_reason', 'View Manage Reason', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(51, 'update_manage_reason', 'Update Manage Reason', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(52, 'delete_manage_reason', 'Delete Manage Reason', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(53, 'create_additional_reason', 'Create Additional Reason', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(54, 'view_additional_reason', 'View Additional Reason', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(55, 'update_additional_reason', 'Update Additional Reason', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(56, 'delete_additional_reason', 'Delete Additional Reason', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(57, 'create_vehicle_make', 'Create Vehicle Make', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(58, 'view_vehicle_make', 'View Vehicle Make', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(59, 'update_vehicle_make', 'Update Vehicle Make', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(60, 'delete_vehicle_make', 'Delete Vehicle Make', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(61, 'create_vehicle_model', 'Create Vehicle Model', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(62, 'view_vehicle_model', 'View Vehicle Model', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(63, 'update_vehicle_model', 'Update Vehicle Model', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(64, 'delete_vehicle_model', 'Delete Vehicle Model', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(65, 'create_documents', 'Create Documents', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(66, 'view_documents', 'View Documents', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(67, 'update_documents', 'Update Documents', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(68, 'delete_documents', 'Delete Documents', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(69, 'manage_support', 'Manage Support', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(70, 'manage_mobile_app_version', 'Manage Mobile App Version', NULL, '2021-12-18 12:35:24', '2021-12-18 12:35:24'),
(71, 'edit_static_page', 'Edit Static Page', NULL, '2021-12-18 07:05:24', '2021-12-18 07:05:24'),
(72, 'create_static_page', 'Create Static Page', NULL, '2021-12-18 07:05:24', '2021-12-18 07:05:24'),
(73, 'delete_static_page', 'Delete Static Page', NULL, '2021-12-18 07:05:24', '2021-12-18 07:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(2, 5),
(3, 1),
(3, 2),
(3, 3),
(3, 5),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 3),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(12, 4),
(13, 1),
(13, 3),
(14, 1),
(14, 3),
(15, 1),
(15, 3),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
(72, 1),
(72, 3),
(73, 1),
(73, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pool_trips`
--

CREATE TABLE `pool_trips` (
  `id` int(10) UNSIGNED NOT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `car_id` int(10) UNSIGNED NOT NULL,
  `seats` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `pickup_latitude` varchar(100) NOT NULL,
  `pickup_longitude` varchar(100) NOT NULL,
  `drop_latitude` varchar(100) NOT NULL,
  `drop_longitude` varchar(100) NOT NULL,
  `pickup_location` varchar(255) NOT NULL,
  `drop_location` varchar(255) NOT NULL,
  `trip_path` text NOT NULL,
  `map_image` text NOT NULL,
  `total_time` decimal(7,2) NOT NULL,
  `total_km` decimal(7,2) NOT NULL,
  `time_fare` decimal(11,2) NOT NULL,
  `distance_fare` decimal(11,2) NOT NULL,
  `base_fare` decimal(11,2) NOT NULL,
  `additional_rider_amount` decimal(11,2) NOT NULL,
  `peak_fare` decimal(11,2) NOT NULL,
  `peak_amount` decimal(11,2) NOT NULL,
  `driver_peak_amount` decimal(11,2) NOT NULL,
  `schedule_fare` decimal(11,2) NOT NULL,
  `access_fee` decimal(11,2) NOT NULL,
  `tips` decimal(11,2) NOT NULL DEFAULT 0.00,
  `waiting_charge` decimal(11,2) NOT NULL DEFAULT 0.00,
  `toll_reason_id` int(10) UNSIGNED DEFAULT NULL,
  `toll_fee` decimal(11,2) NOT NULL DEFAULT 0.00,
  `wallet_amount` decimal(11,2) NOT NULL,
  `promo_amount` decimal(11,2) NOT NULL,
  `subtotal_fare` decimal(11,2) NOT NULL,
  `total_fare` decimal(11,2) NOT NULL,
  `driver_payout` decimal(11,2) NOT NULL,
  `driver_or_company_commission` decimal(11,2) NOT NULL,
  `owe_amount` decimal(11,2) NOT NULL,
  `remaining_owe_amount` decimal(11,2) NOT NULL,
  `applied_owe_amount` decimal(11,2) NOT NULL,
  `arrive_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `begin_trip` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_trip` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `currency_code` varchar(10) NOT NULL,
  `status` varchar(12) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pool_trips`
--

INSERT INTO `pool_trips` (`id`, `driver_id`, `car_id`, `seats`, `pickup_latitude`, `pickup_longitude`, `drop_latitude`, `drop_longitude`, `pickup_location`, `drop_location`, `trip_path`, `map_image`, `total_time`, `total_km`, `time_fare`, `distance_fare`, `base_fare`, `additional_rider_amount`, `peak_fare`, `peak_amount`, `driver_peak_amount`, `schedule_fare`, `access_fee`, `tips`, `waiting_charge`, `toll_reason_id`, `toll_fee`, `wallet_amount`, `promo_amount`, `subtotal_fare`, `total_fare`, `driver_payout`, `driver_or_company_commission`, `owe_amount`, `remaining_owe_amount`, `applied_owe_amount`, `arrive_time`, `begin_trip`, `end_trip`, `currency_code`, `status`, `created_at`, `updated_at`) VALUES
(2, 10002, 4, 2, '-33.4352245', '-70.5907442', '-33.4230012', '-70.6556616', 'Av. Francisco Bilbao 2870-2880, Providencia, Región Metropolitana, Chile', 'Avenida Independencia 740, Independencia, Chile', 'fiakE~gzmLXER|BBb@DJHp@HvAb@tFRhD\\lFd@fIZjEN|Ad@dDx@~F~@|GjAxHaF`A_FzAmFzAyA\\_ElAyFvAqC`ANnAp@`FdBpMv@zFvCjXb@zB|AlGf@|CFf@TjCFfAFrB?tBK~CK|@Gr@MxAYtBa@jBs@rBeBnCW`@x@`Ax@bAfC~BdDdEb@r@j@|A`@nAbA~Cx@`CxApEVv@fAfEPfADfBAtAGpAEf@Hd@JdALjAYDq@DiB@uDVc@DP~F?|@i@rFI`ATBBx@CVM`AGf@Iz@@nA?j@G|B]~Bg@fDg@hDsAvJcAdHaAtGoAxIwAdJmAhJaA`H]rB}@tCyA`DcAzC[lAa@zCi@dEOt@w@xCWVQZWP]FWE[SYe@EMYgBCUO@WTsCr@uAXmCx@cIjBiAT{Cx@aCsRoAoK}@mHfAK~B[', '', 0.00, 0.00, 1561.78, 638.91, 4969.30, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 7179.99, 0.00, 7169.99, 0.00, 6462.99, 717.00, 0.00, 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'INR', 'Completed', '2022-06-23 20:35:06', '2022-06-24 01:03:30');

-- --------------------------------------------------------

--
-- Table structure for table `profile_picture`
--

CREATE TABLE `profile_picture` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `src` text NOT NULL,
  `photo_source` enum('Facebook','Google','Local') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_picture`
--

INSERT INTO `profile_picture` (`user_id`, `src`, `photo_source`) VALUES
(10001, 'https://uat.ridein.in/images/users/10001/profile_pic_1698232482.jpg', 'Local'),
(10002, '', 'Local'),
(10018, '', 'Local'),
(10019, 'https://buskart.in/book/public/images/user.jpeg', 'Local'),
(10021, '', 'Local'),
(10023, 'https://buskart.in/book/public/images/user.jpeg', 'Local'),
(10024, 'https://buskart.in/book/public/images/users/10024/profile_pic_1715440763.jpg', 'Local'),
(10025, '', 'Local'),
(10027, '', 'Local'),
(10028, '', 'Local'),
(10029, '', 'Local'),
(10030, '', 'Local'),
(10031, '', 'Local'),
(10032, '', 'Local'),
(10033, '', 'Local'),
(10035, '', 'Local'),
(10036, '', 'Local'),
(10039, '', 'Local'),
(10040, '', 'Local'),
(10041, '', 'Local'),
(10042, '', 'Local'),
(10043, '', 'Local'),
(10045, '', 'Local'),
(10046, '', 'Local'),
(10048, '', 'Local'),
(10049, '', 'Local'),
(10050, 'https://buskart.in/book/public/images/user.jpeg', 'Local'),
(10051, '', 'Local'),
(10052, '', 'Local');

-- --------------------------------------------------------

--
-- Table structure for table `promo_code`
--

CREATE TABLE `promo_code` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `amount` int(11) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `expire_date` varchar(191) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_code`
--

INSERT INTO `promo_code` (`id`, `code`, `amount`, `currency_code`, `expire_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'foodpanda', 20, 'INR', '2022-06-30', 'Active', '2022-06-26 13:32:08', '2022-06-26 13:32:08'),
(2, 'baskart10', 10, 'INR', '2024-05-27', 'Active', '2024-05-11 17:24:11', '2024-05-11 17:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `rider_rating` int(11) NOT NULL,
  `rider_comments` text NOT NULL,
  `driver_rating` int(11) NOT NULL,
  `driver_comments` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `trip_id`, `user_id`, `driver_id`, `rider_rating`, `rider_comments`, `driver_rating`, `driver_comments`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 3, 10024, 10025, 5, 'hi', 5, 'good', '2024-05-11 06:45:59', '2024-05-11 06:46:02', NULL),
(4, 4, 10024, 10027, 5, '', 5, '', '2024-05-11 09:21:53', '2024-05-11 09:21:56', NULL),
(5, 6, 10021, 10031, 0, '', 5, '', '2024-05-11 13:59:25', '2024-05-11 13:59:25', NULL),
(6, 8, 10024, 10029, 5, '', 5, '', '2024-05-11 15:17:40', '2024-05-11 15:17:42', NULL),
(7, 9, 10024, 10029, 0, '', 5, '', '2024-05-13 04:02:17', '2024-05-13 04:02:17', NULL),
(8, 11, 10018, 10025, 0, '', 5, '', '2024-05-15 06:10:43', '2024-05-15 06:10:43', NULL),
(9, 12, 10018, 10025, 4, '', 4, '', '2024-05-15 06:14:48', '2024-05-15 06:14:56', NULL),
(10, 13, 10021, 10028, 5, '', 5, 'ok', '2024-05-19 08:02:59', '2024-05-19 08:03:09', NULL),
(11, 14, 10021, 10028, 0, '', 5, '', '2024-05-19 08:38:15', '2024-05-19 08:38:15', NULL),
(12, 15, 10021, 10045, 0, '', 5, '', '2024-05-20 16:09:32', '2024-05-20 16:09:32', NULL),
(13, 16, 10021, 10045, 0, '', 5, '', '2024-05-21 11:36:02', '2024-05-21 11:36:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `referral_settings`
--

CREATE TABLE `referral_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `value` varchar(25) NOT NULL,
  `user_type` enum('Driver','Rider') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referral_settings`
--

INSERT INTO `referral_settings` (`id`, `name`, `value`, `user_type`) VALUES
(1, 'apply_referral', '1', 'Driver'),
(2, 'number_of_trips', '5', 'Driver'),
(3, 'number_of_days', '30', 'Driver'),
(4, 'currency_code', 'INR', 'Driver'),
(5, 'referral_amount', '5', 'Driver'),
(6, 'apply_referral', '1', 'Rider'),
(7, 'number_of_trips', '5', 'Rider'),
(8, 'number_of_days', '3', 'Rider'),
(9, 'currency_code', 'USD', 'Rider'),
(10, 'referral_amount', '10', 'Rider');

-- --------------------------------------------------------

--
-- Table structure for table `referral_users`
--

CREATE TABLE `referral_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `referral_id` int(10) UNSIGNED NOT NULL,
  `user_type` enum('Rider','Driver') NOT NULL,
  `days` int(10) UNSIGNED NOT NULL,
  `trips` int(10) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `currency_code` varchar(10) DEFAULT NULL,
  `amount` decimal(11,2) NOT NULL,
  `pending_amount` decimal(11,2) NOT NULL,
  `payment_status` enum('Pending','Expired','Completed') NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referral_users`
--

INSERT INTO `referral_users` (`id`, `user_id`, `referral_id`, `user_type`, `days`, `trips`, `start_date`, `end_date`, `currency_code`, `amount`, `pending_amount`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 10030, 10031, 'Driver', 3, 5, '2024-05-11', '2024-05-14', 'USD', 10.00, 10.00, 'Pending', '2024-05-11 13:43:01', '2024-05-11 13:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `seats` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `pickup_latitude` varchar(100) NOT NULL,
  `pickup_longitude` varchar(100) NOT NULL,
  `drop_latitude` varchar(100) NOT NULL,
  `drop_longitude` varchar(100) NOT NULL,
  `pickup_location` varchar(255) NOT NULL,
  `drop_location` varchar(255) NOT NULL,
  `car_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `payment_mode` varchar(50) NOT NULL DEFAULT 'Credit Card',
  `schedule_id` varchar(100) NOT NULL DEFAULT 'Null',
  `location_id` int(10) UNSIGNED NOT NULL,
  `additional_fare` enum('Peak') NOT NULL,
  `peak_fare` varchar(100) NOT NULL,
  `additional_rider` varchar(10) NOT NULL,
  `timezone` varchar(100) NOT NULL,
  `trip_path` text NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Null',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `user_id`, `seats`, `pickup_latitude`, `pickup_longitude`, `drop_latitude`, `drop_longitude`, `pickup_location`, `drop_location`, `car_id`, `group_id`, `driver_id`, `payment_mode`, `schedule_id`, `location_id`, `additional_fare`, `peak_fare`, `additional_rider`, `timezone`, `trip_path`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(96, 10001, 0, '28.6544891', '77.404905', '28.6105073', '77.1145653', 'F-252, Pratap Vihar, Ghaziabad, Uttar Pradesh 201009, India', 'Delhi Cantt Railway Station, Jail Road, Nangal Village, Delhi Cantonment, New Delhi, Delhi, India', 1, 1, 10002, 'Cash', '', 3, '', '0', '0', 'Asia/Calcutta', 'kr{mDq~lwMdFn@dBiRt@wHF]VBbM`BtPzB`JfAzOjBtBRlCLtBBdCG^ADGDOHa@AQ{AyGb@Cr@SNIJIb@tBnB~IpDzPVnAjAdF`C`LpAdGhBdJCLH`@Jd@pBpJ|BpKjDbPnCjMnB~IlAfGf@`DVdCb@hIDdRDhJGhJIb]CpLGby@IlZEhZ?lDA~CAzIFzI@pHAdBMPCNCtBAfDE|AGv@AlD?`AA~GCjM?tBLbD`@lDr@hDxC`N|FvW`BvHzCjMxI|_@rHx[xBjKlB~HvOdp@|C|M`J``@fEhQj@nBlAxD~@hCzAvCt@rArBrCzArBdDrDlBdBvBbBfDdC|ApAhEbErF~ExCjCpDvE|@zAjBhDhB`FbCbHt@zBpDtJlBvFzEjN|@lBbApBdH`SpHzSlAlDvAvEv@zCZxACdAMjCAb@Hp@i@LmBZaOfDyGpAcIdBiLfCwLrCgPlDqFfAsEjAwCj@qAv@k@b@Ud@Gb@Cj@X~AvAxCp@hBR`APjDAn@IzAK`@Ul@}@lByAbE}@nCaApCqAfDc@~AA\\LnAHf@^jAhDpJvAhEfBfFp@bCXb@`@Vt@XxFLpDJrAHfA`@`@`@NJNf@r@vBn@hBdAnCp@tBJp@BZ?ZM~@Ut@cCxE{@~Ai@pAa@vAGx@H~A`CfH`ApCFCZ@RJJPDN?^KZGDNb@B`@~BhHZt@j@`BlAnDh@bBvAfEPZFHTd@BHHAd@Cn@H|@l@PJXd@Th@BVEp@O^a@d@OP?f@?n@L\\dCtGRj@xFjQDRz@f@L?PDTLPRFZ?^I\\IN@`AHVtAdEz@pBf@tBd@jArAtDvClIb@t@VAVDTJVXDRCj@MZUTUJW@UCWZ{CdGmGrMcAnBeBzDR^Fh@Kj@KPMNFLLZ~CtJzEpNZz@DAJAVAV@RJZd@DZ@ZEXEJ_@f@WL[@MAEFW\\W\\q@|Bm@jBSd@aAtAeFjGsDtEOP@Nc@bBDVhBbCjC`E|ApC~@~BjAdCYL`DlHz@bCv@lBl@lAlB|EzKhWpEjK`J|SrG`OnBtExD`J`DdJtBtGnA|DAdAI`@I^OZcBbC{@bBk@`B]fAsD|LyDvMeBfGkB|FoAlEy@fD{@nDmCfJgGfSmO~h@qChKsKh_@mAtDeCzIcIvXSp@cA|BwA|GOj@DH@JgBtHyBpHsAhEOJ]C]KKX{AdDMI', 'Cancelled', '2023-10-25 16:28:18', '2023-10-25 16:29:04', NULL),
(97, 10001, 0, '28.6546025', '77.4046991', '28.648641200000004', '77.3151717', 'MC33+QQF, Pratap Vihar, Ghaziabad, Uttar Pradesh 201009, India', 'Anand Vihar Railway Station, Block D, Anand Vihar, Delhi, India', 1, 97, 10002, 'Cash', '', 3, '', '0', '0', 'Asia/Calcutta', '{r{mDu~lwMtFr@dBiRReC`@qDF]VBbM`BtPzB`JfAzOjBtBRlCLtBBdCG^ADGDOHa@AQ{AyGb@Cr@SNIJIb@tBnB~IbD|NL|@VnAjAdF`C`LpAdGhBdJCLH`@Jd@pBpJjAfFh@lCFZdB~HdAbFRt@zBtKnB~IlAfGf@`DVdCRpCNvDDdRDhJGrE?tC@z@Kf[AfCAhHGby@IlZEhZ?lDA~CAzIFzI@pHApEMzVCdNE`DBrAH`BLtATjBPdAh@hCtCfMbBvH|CpN`BhHr@|CZh@v@dCf@vBnEjRFb@FHDPLl@@n@ENKLSLKDU?MCICECm@@gAXgHvBiBj@IA[MgEfAgCp@mD~@yC`AiBh@sD|@_Eb@kBNiADiCMg@EwAUmBc@uCm@uEiA{Bm@aA]mBi@iD{@_G{AcA~@Q\\GXAf@BzFNxI@ZEj@Yh@{@x@gKeOU]cAqAe@j@KLS[kAwA', 'Cancelled', '2023-10-25 16:30:59', '2023-10-25 16:31:47', NULL),
(98, 10001, 0, '28.6545663', '77.404814', '28.6105073', '77.1145653', 'F-252, Pratap Vihar, Ghaziabad, Uttar Pradesh 201009, India', 'Delhi Cantt Railway Station, Jail Road, Nangal Village, Delhi Cantonment, New Delhi, Delhi, India', 1, 98, 10002, 'Cash', '', 3, '', '0', '0', 'Asia/Calcutta', 'wr{mDu~lwMpFr@dBiRt@wHF]VBbM`BtPzB`JfAzOjBtBRlCLtBBdCG^ADGDOHa@AQ{AyGb@Cr@SNIJIb@tBnB~IpDzPVnAjAdF`C`LpAdGhBdJCLH`@Jd@pBpJ|BpKjDbPnCjMnB~IlAfGf@`DVdCb@hIDdRDhJGhJIb]CpLGby@IlZEhZ?lDA~CAzIFzI@pHAdBMPCNCtBAfDE|AGv@AlD?`AA~GCjM?tBLbD`@lDr@hDxC`N|FvW`BvHzCjMxI|_@rHx[xBjKlB~HvOdp@|C|M`J``@fEhQj@nBlAxD~@hCzAvCt@rArBrCzArBdDrDlBdBvBbBfDdC|ApAhEbErF~ExCjCpDvE|@zAjBhDhB`FbCbHt@zBpDtJlBvFzEjN|@lBbApBdH`SpHzSlAlDvAvEv@zCZxACdAMjCAb@Hp@i@LmBZaOfDyGpAcIdBiLfCwLrCgPlDqFfAsEjAwCj@qAv@k@b@Ud@Gb@Cj@X~AvAxCp@hBR`APjDAn@IzAK`@Ul@}@lByAbE}@nCaApCqAfDc@~AA\\LnAHf@^jAhDpJvAhEfBfFp@bCXb@`@Vt@XxFLpDJrAHfA`@`@`@NJNf@r@vBn@hBdAnCp@tBJp@BZ?ZM~@Ut@cCxE{@~Ai@pAa@vAGx@H~A`CfH`ApCFCZ@RJJPDN?^KZGDNb@B`@~BhHZt@j@`BlAnDh@bBvAfEPZFHTd@BHHAd@Cn@H|@l@PJXd@Th@BVEp@O^a@d@OP?f@?n@L\\dCtGRj@xFjQDRz@f@L?PDTLPRFZ?^I\\IN@`AHVtAdEz@pBf@tBd@jArAtDvClIb@t@VAVDTJVXDRCj@MZUTUJW@UCWZ{CdGmGrMcAnBeBzDR^Fh@Kj@KPMNFLLZ~CtJzEpNZz@DAJAVAV@RJZd@DZ@ZEXEJ_@f@WL[@MAEFW\\W\\q@|Bm@jBSd@aAtAeFjGsDtEOP@Nc@bBDVhBbCjC`E|ApC~@~BjAdCYL`DlHz@bCv@lBl@lAlB|EzKhWpEjK`J|SrG`OnBtExD`J`DdJtBtGnA|DAdAI`@I^OZcBbC{@bBk@`B]fAsD|LyDvMeBfGkB|FoAlEy@fD{@nDmCfJgGfSmO~h@qChKsKh_@mAtDeCzIcIvXSp@cA|BwA|GOj@DH@JgBtHyBpHsAhEOJ]C]KKX{AdDMI', 'Cancelled', '2023-10-25 16:45:30', '2023-10-25 16:46:17', NULL),
(99, 10024, 0, '10.3686249', '77.9820325', '10.361654999999999', '77.979629', 'Vivekananda Nagar 91, 32/G1, Trichy - Dindugal Rd, opp. St.Joseph Hospital, Nehruji Nagar, Dindigul, Tamil Nadu 624001, India', 'Dindigul bus stand, Spencer Compound, Dindigul, Tamil Nadu, India', 2, 99, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'ech~@gz}zMr@d@x@jAfA`B|BxDzDpBhFjC|@p@zBbC~A`Bj@f@RFLAPKFwBCs@Gm@E_@bAAl@?H?\\[d@aAjB}C', 'Cancelled', '2024-05-10 17:39:29', '2024-05-10 17:40:15', NULL),
(100, 10024, 0, '10.3686249', '77.9820325', '10.361654999999999', '77.979629', 'Vivekananda Nagar 91, 32/G1, Trichy - Dindugal Rd, opp. St.Joseph Hospital, Nehruji Nagar, Dindigul, Tamil Nadu 624001, India', 'Dindigul bus stand, Spencer Compound, Dindigul, Tamil Nadu, India', 2, 100, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'ech~@gz}zMr@d@x@jAfA`B|BxDzDpBhFjC|@p@zBbC~A`Bj@f@RFLAPKFwBCs@Gm@E_@bAAl@?H?\\[d@aAjB}C', 'Cancelled', '2024-05-10 17:41:08', '2024-05-10 17:41:54', NULL),
(101, 10024, 0, '10.368627049211801', '77.98202890902758', '10.361654999999999', '77.979629', 'Vivekananda Nagar 91, 32/G1, Trichy - Dindugal Rd, opp. St.Joseph Hospital, Nehruji Nagar, Dindigul, Tamil Nadu 624001, India', 'Dindigul bus stand, Spencer Compound, Dindigul, Tamil Nadu, India', 2, 101, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'ech~@gz}zMr@d@x@jAfA`B|BxDzDpBhFjC|@p@zBbC~A`Bj@f@RFLAPKFwBCs@Gm@E_@bAAl@?H?\\[d@aAjB}C', 'Cancelled', '2024-05-10 17:41:54', '2024-05-10 17:42:40', NULL),
(102, 10024, 0, '10.368616495575637', '77.98204232007265', '10.361654999999999', '77.979629', 'Vivekananda Nagar 91, 32/G1, Trichy - Dindugal Rd, opp. St.Joseph Hospital, Nehruji Nagar, Dindigul, Tamil Nadu 624001, India', 'Dindigul bus stand, Spencer Compound, Dindigul, Tamil Nadu, India', 2, 102, 10025, 'Onlinepayment', '', 3, '', '0', '0', 'Asia/Kolkata', 'ech~@ez}zMr@b@x@jAfA`B|BxDzDpBhFjC|@p@zBbC~A`Bj@f@RFLAPKFwBCs@Gm@E_@bAAl@?H?\\[d@aAjB}C', 'Cancelled', '2024-05-10 17:44:35', '2024-05-10 17:45:21', NULL),
(103, 10024, 0, '10.36861418696768', '77.98204533755779', '10.361654999999999', '77.979629', 'Vivekananda Nagar 91, 32/G1, Trichy - Dindugal Rd, opp. St.Joseph Hospital, Nehruji Nagar, Dindigul, Tamil Nadu 624001, India', 'Dindigul bus stand, Spencer Compound, Dindigul, Tamil Nadu, India', 2, 103, 10025, 'Onlinepayment', '', 3, '', '0', '0', 'Asia/Kolkata', 'ech~@ez}zMr@b@x@jAfA`B|BxDzDpBhFjC|@p@zBbC~A`Bj@f@RFLAPKFwBCs@Gm@E_@bAAl@?H?\\[d@aAjB}C', 'Cancelled', '2024-05-10 17:45:24', '2024-05-10 17:46:11', NULL),
(104, 10024, 0, '10.368578', '77.9820749', '10.361654999999999', '77.979629', 'Vivekananda Nagar 91, 32/G1, Trichy - Dindugal Rd, opp. St.Joseph Hospital, Nehruji Nagar, Dindigul, Tamil Nadu 624001, India', 'Dindigul bus stand, Spencer Compound, Dindigul, Tamil Nadu, India', 2, 104, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'cch~@ez}zMp@b@x@jAfA`B|BxDzDpBhFjC|@p@zBbC~A`Bj@f@RFLAPKFwBCs@Gm@E_@bAAl@?H?\\[d@aAjB}C', 'Cancelled', '2024-05-10 17:48:45', '2024-05-10 17:49:32', NULL),
(105, 10024, 0, '10.368605', '77.9821317', '10.361654999999999', '77.979629', '32/G1, Anna Nagar, Tamil Nadu 624001, India', 'Dindigul bus stand, Spencer Compound, Dindigul, Tamil Nadu, India', 2, 105, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'mch~@kz}zMz@h@x@jAfA`B|BxDzDpBhFjC|@p@zBbC~A`Bj@f@RFLAPKFwBCs@Gm@E_@bAAl@?H?\\[d@aAjB}C', 'Cancelled', '2024-05-10 17:49:35', '2024-05-10 17:50:21', NULL),
(106, 10024, 0, '10.368605', '77.9821317', '10.361654999999999', '77.979629', '32/G1, Anna Nagar, Tamil Nadu 624001, India', 'Dindigul bus stand, Spencer Compound, Dindigul, Tamil Nadu, India', 2, 106, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'mch~@kz}zMz@h@x@jAfA`B|BxDzDpBhFjC|@p@zBbC~A`Bj@f@RFLAPKFwBCs@Gm@E_@bAAl@?H?\\[d@aAjB}C', 'Cancelled', '2024-05-10 17:52:49', '2024-05-10 17:53:35', NULL),
(107, 10018, 0, '10.3571686', '77.9768501', '10.3623794', '77.9694579', 'Vivekananda Nagar 91, 32/G1, Trichy - Dindugal Rd, opp. St.Joseph Hospital, Nehruji Nagar, Dindigul, Tamil Nadu 624001, India', 'Dindigul, Tamil Nadu 624001, India', 2, 107, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'c{e~@g{|zMuAO_@AWBa@Ne@\\ON_@d@i@x@MHHXiCjDeBrB_@f@eAtC]x@Ih@Wx@_@p@]XoBx@kBKQZCd@@vBHxAL~B@lBCpB{@G', 'Cancelled', '2024-05-10 17:56:15', '2024-05-10 17:57:01', NULL),
(108, 10018, 0, '10.3623794', '77.9694579', '10.276959962841795', '77.92647868394852', 'Dindigul, Tamil Nadu 624001, India', '7WHH+75P, Chinnalapatti, Tamil Nadu 624302, India', 2, 108, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'a|f~@qj{zMvDVhAPvAd@nG|BnCfAvGhC~DpAn@X`CxAvA^zCr@jA^d@LzAZnFdBtAd@rA\\tBz@x@ZzBhAFDbAr@^RnE`CdBdA~@p@TNh@d@HL\\JtBdA`@PjA`@^J|BVjC\\vBl@zAd@tA`@rCn@nATjBTvATjDr@dBf@v@XpClArFfCn@Z\\THJFPVZh@RLF^Fd@HzBh@v@V`E|AvAb@bGpA|EdAjHxBvE~AlCfAhC`AvAd@jHxBjPvEjDdAtAf@dChAtBhAjCfBnDxCtHrGlAv@t@^z@^`A\\hD|@bCt@|CjApKtEzCbAdDv@fBd@l@RbC~@tCfA|DhA~EnApEjApCn@lJ|AfCl@|Bt@jBt@~BlA~SbMjJnG|@r@bFpDt@p@tBzBjCpCjDzDbBzAjBlAbGlDrDpB|ExC`DjB^VDC@?PDj@\\|@p@n@j@t@x@bCzCrArAtAhArBzA|FhE~C|B~BxApFpCzDrBvBjA|BsDr@cAnCoEh@{@sAi@{BaBoEgC', 'Cancelled', '2024-05-10 18:05:02', '2024-05-10 18:05:48', NULL),
(109, 10024, 0, '10.3685994', '77.9821484', '10.361654999999999', '77.979629', '32/G1, Anna Nagar, Tamil Nadu 624001, India', 'Dindigul bus stand, Spencer Compound, Dindigul, Tamil Nadu, India', 2, 109, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'mch~@kz}zMz@h@x@jAfA`B|BxDzDpBhFjC|@p@zBbC~A`Bj@f@RFLAPKFwBCs@Gm@E_@bAAl@?H?\\[d@aAjB}C', 'Cancelled', '2024-05-10 18:18:01', '2024-05-10 18:18:48', NULL),
(110, 10018, 0, '10.3623794', '77.9694579', '10.237337499999999', '77.91007809999999', 'Dindigul, Tamil Nadu 624001, India', '6WP6+W2P Kamalapuram, Tamil Nadu 624206, India', 2, 110, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'a|f~@qj{zMvDVhAPvAd@nG|BnCfAvGhC~DpAn@X`CxAvA^zCr@jA^d@LzAZnFdBtAd@rA\\tBz@x@ZzBhAFDbAr@^RnE`CdBdA~@p@TNh@d@HL\\JtBdA`@PjA`@^J|BVjC\\vBl@zAd@tA`@rCn@nATjBTvATjDr@dBf@v@XpClArFfCn@Z\\THJFPVZh@RLF^Fd@HzBh@v@V`E|AvAb@bGpA|EdAjHxBvE~AlCfAhC`AvAd@jHxBjPvEjDdAtAf@dChAtBhAjCfBnDxCtHrGlAv@t@^z@^`A\\hD|@bCt@|CjApKtEzCbAdDv@fBd@l@RbC~@tCfA|DhA~EnApEjApCn@lJ|AfCl@|Bt@jBt@~BlA~SbMjJnG|@r@bFpDt@p@tBzBjCpCjDzDbBzAjBlAbGlDrDpB|ExC`DjBfCjBz@|@jBbCfArAtArAhDfCpDnCrA`A~BdBzCtB|FxC|GjD`DbBpBnAfAx@`At@|ApAn@x@t@x@`B|BV`@zB~DpAjB`A`AxAdA`@T`Ab@`AXfARvBRdDNfBRdB\\pEpArCr@bEfAzErAbLzCfB^dJvArE^f@FxL|AfFp@vB`@fBb@bF`BhFlBnBl@|A`@xCj@nC`@`EZxBHvB@fEGrCSrL_AnAExA@vCNvAR|Ch@dDh@`Df@XF', 'Cancelled', '2024-05-10 18:19:41', '2024-05-10 18:20:28', NULL),
(111, 10024, 0, '10.3685779', '77.9820938', '10.361654999999999', '77.979629', 'Vivekananda Nagar 91, 32/G1, Trichy - Dindugal Rd, opp. St.Joseph Hospital, Nehruji Nagar, Dindigul, Tamil Nadu 624001, India', 'Dindigul bus stand, Spencer Compound, Dindigul, Tamil Nadu, India', 2, 111, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'ech~@ez}zMr@b@x@jAfA`B|BxDzDpBhFjC|@p@zBbC~A`Bj@f@RFLAPKFwBCs@Gm@E_@bAAl@?H?\\[d@aAjB}C', 'Cancelled', '2024-05-10 18:22:17', '2024-05-10 18:23:04', NULL),
(112, 10024, 0, '10.3685779', '77.9820938', '10.361654999999999', '77.979629', 'Vivekananda Nagar 91, 32/G1, Trichy - Dindugal Rd, opp. St.Joseph Hospital, Nehruji Nagar, Dindigul, Tamil Nadu 624001, India', 'Dindigul bus stand, Spencer Compound, Dindigul, Tamil Nadu, India', 2, 112, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'ech~@ez}zMr@b@x@jAfA`B|BxDzDpBhFjC|@p@zBbC~A`Bj@f@RFLAPKFwBCs@Gm@E_@bAAl@?H?\\[d@aAjB}C', 'Cancelled', '2024-05-10 18:23:13', '2024-05-10 18:24:00', NULL),
(113, 10024, 0, '10.3685416', '77.982066', '10.366704632557989', '77.98241849988699', 'Vivekananda Nagar 91, 32/G1, Trichy - Dindugal Rd, opp. St.Joseph Hospital, Nehruji Nagar, Dindigul, Tamil Nadu 624001, India', '9X8J+MVH, Aarthi Theatre Rd, V O C Nagar, Karunanidhi Nagar, Dindigul, Tamil Nadu 624001, India', 2, 113, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', '_ch~@az}zMl@^j@x@p@~@hBtCv@vALEl@cCTu@?Iu@OOGGQCi@D_@HKJO?sAA_Ax@E', 'Cancelled', '2024-05-11 10:12:02', '2024-05-11 10:12:49', NULL),
(114, 10024, 0, '10.3685416', '77.982066', '10.36868740281172', '77.98211339861155', 'Vivekananda Nagar 91, 32/G1, Trichy - Dindugal Rd, opp. St.Joseph Hospital, Nehruji Nagar, Dindigul, Tamil Nadu 624001, India', '32/G1, Anna Nagar, Tamil Nadu 624001, India', 2, 114, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', '_ch~@az}zMl@^OLu@e@oCaBk@e@s@y@q@y@WUi@SE?IEEGAKBOLEN?HDBH@H?@NJVRvAhB|@t@vA|@r@b@', 'Cancelled', '2024-05-11 10:48:13', '2024-05-11 10:49:00', NULL),
(115, 10018, 0, '10.3686349', '77.9820529', '10.3623794', '77.9694579', '32/G1, Anna Nagar, Tamil Nadu 624001, India', 'Dindigul, Tamil Nadu 624001, India', 2, 115, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'ich~@iz}zMv@f@x@jAfA`B|BxDNFKb@A`@r@jEbChNh@fDh@pCNbAf@jCd@fDDdAErAEh@QxCIdBInBCb@FTRFx@FnBJ~AH|BRzB@rAF', 'Cancelled', '2024-05-11 10:59:23', '2024-05-11 11:00:09', NULL),
(116, 10018, 0, '10.3686349', '77.9820529', '10.3623794', '77.9694579', '32/G1, Anna Nagar, Tamil Nadu 624001, India', 'Dindigul, Tamil Nadu 624001, India', 2, 116, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'ich~@iz}zMv@f@x@jAfA`B|BxDNFKb@A`@r@jEbChNh@fDh@pCNbAf@jCd@fDDdAErAEh@QxCIdBInBCb@FTRFx@FnBJ~AH|BRzB@rAF', 'Cancelled', '2024-05-11 11:01:10', '2024-05-11 11:01:56', NULL),
(117, 10018, 0, '10.3686301', '77.9820717', '10.3623794', '77.9694579', '32/G1, Anna Nagar, Tamil Nadu 624001, India', 'Dindigul, Tamil Nadu 624001, India', 2, 117, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'kch~@iz}zMx@f@x@jAfA`B|BxDNFKb@A`@r@jEbChNh@fDh@pCNbAf@jCd@fDDdAErAEh@QxCIdBInBCb@FTRFx@FnBJ~AH|BRzB@rAF', 'Cancelled', '2024-05-11 11:03:00', '2024-05-11 11:03:46', NULL),
(118, 10018, 0, '10.3686301', '77.9820717', '10.3623794', '77.9694579', '32/G1, Anna Nagar, Tamil Nadu 624001, India', 'Dindigul, Tamil Nadu 624001, India', 2, 118, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'kch~@iz}zMx@f@x@jAfA`B|BxDNFKb@A`@r@jEbChNh@fDh@pCNbAf@jCd@fDDdAErAEh@QxCIdBInBCb@FTRFx@FnBJ~AH|BRzB@rAF', 'Cancelled', '2024-05-11 11:08:16', '2024-05-11 11:09:02', NULL),
(119, 10018, 0, '10.3686301', '77.9820717', '10.3623794', '77.9694579', '32/G1, Anna Nagar, Tamil Nadu 624001, India', 'Dindigul, Tamil Nadu 624001, India', 2, 119, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'kch~@iz}zMx@f@x@jAfA`B|BxDNFKb@A`@r@jEbChNh@fDh@pCNbAf@jCd@fDDdAErAEh@QxCIdBInBCb@FTRFx@FnBJ~AH|BRzB@rAF', 'Cancelled', '2024-05-11 11:09:35', '2024-05-11 11:10:21', NULL),
(120, 10018, 0, '10.3686301', '77.9820717', '10.3623794', '77.9694579', '32/G1, Anna Nagar, Tamil Nadu 624001, India', 'Dindigul, Tamil Nadu 624001, India', 2, 120, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'kch~@iz}zMx@f@x@jAfA`B|BxDNFKb@A`@r@jEbChNh@fDh@pCNbAf@jCd@fDDdAErAEh@QxCIdBInBCb@FTRFx@FnBJ~AH|BRzB@rAF', 'Cancelled', '2024-05-11 11:36:14', '2024-05-11 11:37:01', NULL),
(121, 10018, 0, '10.3686427', '77.9820768', '10.3623794', '77.9694579', '32/G1, Anna Nagar, Tamil Nadu 624001, India', 'Dindigul, Tamil Nadu 624001, India', 2, 121, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'mch~@kz}zMz@h@x@jAfA`B|BxDNFKb@A`@r@jEbChNh@fDh@pCNbAf@jCd@fDDdAErAEh@QxCIdBInBCb@FTRFx@FnBJ~AH|BRzB@rAF', 'Cancelled', '2024-05-11 11:50:48', '2024-05-11 11:51:35', NULL),
(122, 10024, 0, '10.368509', '77.9820144', '10.3640818', '77.9813597', 'Vivekananda Nagar 91, 32/G1, Trichy - Dindugal Rd, opp. St.Joseph Hospital, Nehruji Nagar, Dindigul, Tamil Nadu 624001, India', '26/14, Y.M.R. Patty, Telephone Colony, Karunanidhi Nagar, Dindigul, Tamil Nadu 624001, India', 2, 122, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'ubh~@{y}zMb@Xj@x@p@~@hBtCv@vANFbDdBlAj@ZPb@eBBEBAh@FBAVkAHeA@u@N}@HY@a@?]nCHX@', 'Cancelled', '2024-05-11 11:51:58', '2024-05-11 11:52:45', NULL),
(123, 10024, 0, '10.368509', '77.9820144', '10.3640818', '77.9813597', 'Vivekananda Nagar 91, 32/G1, Trichy - Dindugal Rd, opp. St.Joseph Hospital, Nehruji Nagar, Dindigul, Tamil Nadu 624001, India', '26/14, Y.M.R. Patty, Telephone Colony, Karunanidhi Nagar, Dindigul, Tamil Nadu 624001, India', 2, 123, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'ubh~@{y}zMb@Xj@x@p@~@hBtCv@vANFbDdBlAj@ZPb@eBBEBAh@FBAVkAHeA@u@N}@HY@a@?]nCHX@', 'Accepted', '2024-05-11 12:14:38', '2024-05-11 06:44:45', NULL),
(124, 10024, 0, '10.3685931', '77.9820903', '10.3640818', '77.9813597', '32/G1, Anna Nagar, Tamil Nadu 624001, India', '26/14, Y.M.R. Patty, Telephone Colony, Karunanidhi Nagar, Dindigul, Tamil Nadu 624001, India', 2, 124, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'gch~@gz}zMt@d@x@jAfA`B|BxDzDpB`Bx@d@iBBCf@FD?BIXwAB_@@y@Jw@Nm@@_AhDJ', 'Cancelled', '2024-05-11 12:35:44', '2024-05-11 12:36:30', NULL),
(125, 10024, 0, '11.0084657', '77.0150396', '11.016844500000001', '76.9558321', '18/411, G.V. Residency, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore, Tamil Nadu, India', 2, 125, 10027, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', '}aebAc_auMwNb@MlB?Zr@hG_CTkBPqBDYPsChA}Cb@mGz@iANuCVqEb@eABy@AeBJ{@NgAX}@Xw@\\e@RSFU@WCeB]wCa@i@?kAd@mC`AaAP{CRsAFi@DNfA^rDVvCNrBd@nGr@lEd@nDZjEVlBd@dBlAjDbAfCv@rBNn@Fl@NnCH|AHjDNtBTzBXfB|@rD~@pDV~@^x@Zn@vAfC^j@`@b@\\X~A~@|@h@INqC_Bc@Y[YEFq@x@WPSXSj@Ox@e@bCEb@J|AD|@Mr@a@zASv@CZKzAMdEFTFHLJz@XDH?HSr@Ij@e@hFEjA@nIDJDpBCL?l@Af@?zC?hD@bFHfHNlRFvKTrBZdDfAlJJfA^dC^jDRvBFHPzAHfAh@tEZtCp@fGRxA\\rENlB@@@B?@z@NnFEnAEZ~HFbB?`C?vEC~B', 'Accepted', '2024-05-11 14:48:42', '2024-05-11 09:18:59', NULL),
(126, 10024, 0, '11.0095791', '77.015067', '11.4064125', '76.6932344', '347, 347, Sowripalayam Rd, G.V. Residency, Pudur, Coimbatore, Tamil Nadu 641015, India', 'Ooty hills station, Kathadimattam, Ooty, Tamil Nadu, India', 8, 126, 10027, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', '{hebA}~`uMxDCZnEi@nC{IfAoLfAaO|CgUfBmJbCgJk@cObCbGrl@fGxQbDb]~GpPnEvCmD{AkCz@cAvK{ApPP`Mx@~nAjLbfA?B`IF|AxNVxW{@~BoHcAcUrHgXjCi[t@_Zv@ol@lLkThGeZnB}v@hIa}@`MkmAjHcVfNi[n@gpAdAm}@tM_cA`CqR^ca@mMab@oSaQ}Ik_@aGsc@}BeUVwXkFwVqOqf@mW_s@uUwVoRsRsGc`@yDgSv@ey@}XqWsJqZnBu^jFyStJgS|Lw[pEuh@p@eWuDeRtAya@`SqkBh_@or@bNwZ`BmUfImYpOkf@|R_|@|N{MhB_DjEm`@z\\iTxG{b@|u@md@p|@mPp[wLrNcExOwErR{AtRxAhOgDxP}EpFmK|OkAdK_DtHoGnFmAdKyArVdA|G`D~^gCoAsKwJoBqCi\\eIc@j@fJ`EzIzLbEv@fBdGv@tKnClFM|FiD~AInBcDdExGtHxDp@pAhC`AvF@tE{E~C{Hx@{DnDdDdGfFrAf@vC}B`CqBtBjCr@H|DxB`GgEp@{RYkG~DtIdDiE]pChGhD|AdCxHnF_AJrBlG~HSfEoEz@bBrCeCnEtHf@rBvDtArIqIpHpB|ChIxBR~GeKdP|HlAfLrEfHhHBpLqDmKmKmFiHbAzDw@xDfEhCtBMjGoBrEtA_B}BmCKiFmFsBiApBlAmAdBjB?lGy@dIVlGxEpHvB`C`B_BxA`GInFxBHnAlGwDcEuCo@FuGa@pC~AlH~AJVlK~BfIdDnFkGsEyDyJRnE\\`E|E`CnBjGlE|F_@tCpBJnJlFzDb@FjDaAxEk@vKNtEuDrC}Hv@pB|HzEbDdBvFuAfG}BdA`@fFeIxBm@dFwCJ{FdGfEdGHzH}@eF_LwFdAuGbCwCjCcOjCqGm@sDyEoBeEH_Jr@qElCsCt@eKb@qB|L}G`Hs@|MuIlFsDlFcT|JEbIoMeBgErDuEeAuKrGqEeAqKfCxBtI{JtAkA|J_JxAj@fLvBpCb@`IeCw@gRiCmH~l@GjKiHrIgQjRcCxHN|GeOI}AvQlDhEcBhEkGOwAxCaCxEl@pD~B~FgCrEwGtEeEfHvEhJsC~JgBYwCpFo@pHiPrDp@fRl@fEaErAaGl@qFgBuDMoCtDuDrApDrGKxJaD@MtD_@pHp@hOpAhLmInRZnE_GxDyLfDoCiE}\\bA_XhOqNRuO~E{I~IeHrMa@Z_AhAFrDmBI{@Z]N}@xAxAjSyJdNgCdBtD`D[nDrBnKhEjPv@bEhAaCtDYtMiBdQ`J', 'Cancelled', '2024-05-11 16:17:43', '2024-05-11 16:18:29', NULL),
(127, 10024, 0, '11.0095791', '77.015067', '11.4064125', '76.6932344', '347, 347, Sowripalayam Rd, G.V. Residency, Pudur, Coimbatore, Tamil Nadu 641015, India', 'Ooty hills station, Kathadimattam, Ooty, Tamil Nadu, India', 8, 127, 10027, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', '{hebA}~`uMxDCZnEi@nC{IfAoLfAaO|CgUfBmJbCgJk@cObCbGrl@fGxQbDb]~GpPnEvCmD{AkCz@cAvK{ApPP`Mx@~nAjLbfA?B`IF|AxNVxW{@~BoHcAcUrHgXjCi[t@_Zv@ol@lLkThGeZnB}v@hIa}@`MkmAjHcVfNi[n@gpAdAm}@tM_cA`CqR^ca@mMab@oSaQ}Ik_@aGsc@}BeUVwXkFwVqOqf@mW_s@uUwVoRsRsGc`@yDgSv@ey@}XqWsJqZnBu^jFyStJgS|Lw[pEuh@p@eWuDeRtAya@`SqkBh_@or@bNwZ`BmUfImYpOkf@|R_|@|N{MhB_DjEm`@z\\iTxG{b@|u@md@p|@mPp[wLrNcExOwErR{AtRxAhOgDxP}EpFmK|OkAdK_DtHoGnFmAdKyArVdA|G`D~^gCoAsKwJoBqCi\\eIc@j@fJ`EzIzLbEv@fBdGv@tKnClFM|FiD~AInBcDdExGtHxDp@pAhC`AvF@tE{E~C{Hx@{DnDdDdGfFrAf@vC}B`CqBtBjCr@H|DxB`GgEp@{RYkG~DtIdDiE]pChGhD|AdCxHnF_AJrBlG~HSfEoEz@bBrCeCnEtHf@rBvDtArIqIpHpB|ChIxBR~GeKdP|HlAfLrEfHhHBpLqDmKmKmFiHbAzDw@xDfEhCtBMjGoBrEtA_B}BmCKiFmFsBiApBlAmAdBjB?lGy@dIVlGxEpHvB`C`B_BxA`GInFxBHnAlGwDcEuCo@FuGa@pC~AlH~AJVlK~BfIdDnFkGsEyDyJRnE\\`E|E`CnBjGlE|F_@tCpBJnJlFzDb@FjDaAxEk@vKNtEuDrC}Hv@pB|HzEbDdBvFuAfG}BdA`@fFeIxBm@dFwCJ{FdGfEdGHzH}@eF_LwFdAuGbCwCjCcOjCqGm@sDyEoBeEH_Jr@qElCsCt@eKb@qB|L}G`Hs@|MuIlFsDlFcT|JEbIoMeBgErDuEeAuKrGqEeAqKfCxBtI{JtAkA|J_JxAj@fLvBpCb@`IeCw@gRiCmH~l@GjKiHrIgQjRcCxHN|GeOI}AvQlDhEcBhEkGOwAxCaCxEl@pD~B~FgCrEwGtEeEfHvEhJsC~JgBYwCpFo@pHiPrDp@fRl@fEaErAaGl@qFgBuDMoCtDuDrApDrGKxJaD@MtD_@pHp@hOpAhLmInRZnE_GxDyLfDoCiE}\\bA_XhOqNRuO~E{I~IeHrMa@Z_AhAFrDmBI{@Z]N}@xAxAjSyJdNgCdBtD`D[nDrBnKhEjPv@bEhAaCtDYtMiBdQ`J', 'Cancelled', '2024-05-11 16:18:34', '2024-05-11 16:19:21', NULL),
(128, 10021, 0, '11.0200626', '77.0009189', '11.030432399999999', '77.03909279999999', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 128, 10030, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'ojgbAqf~tMk@NIHw@PsDl@_CAg@@a@TVn@Nn@PrBDhAYBCiAGu@QqA]cA{AcEcAsCk@sBQ_ASeBK}ASmB_AsG]kCQuBQ_DOiBM}Ao@yFUcC]wE[cHG_EEyDMgBUuCYaFWuB{@cHc@kDQcBSs@kAwCy@uBkAuDsAsDu@}AmAoBmBwCoDaGeAyAuEcG}AwB_CwD_CwDgFgHqAyAoIuJ{AuBmAkBo@}@_BuBu@aAPOrAzAx@MfKu@dBO`I[vHWTEj@a@VWOQIWAOBONa@\\c@LKH?PLzA~A', 'Cancelled', '2024-05-11 19:20:49', '2024-05-11 19:21:35', NULL),
(129, 10021, 0, '11.0200626', '77.0009189', '11.030432399999999', '77.03909279999999', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 129, 10030, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'ojgbAqf~tMk@NIHw@PsDl@_CAg@@a@TVn@Nn@PrBDhAYBCiAGu@QqA]cA{AcEcAsCk@sBQ_ASeBK}ASmB_AsG]kCQuBQ_DOiBM}Ao@yFUcC]wE[cHG_EEyDMgBUuCYaFWuB{@cHc@kDQcBSs@kAwCy@uBkAuDsAsDu@}AmAoBmBwCoDaGeAyAuEcG}AwB_CwD_CwDgFgHqAyAoIuJ{AuBmAkBo@}@_BuBu@aAPOrAzAx@MfKu@dBO`I[vHWTEj@a@VWOQIWAOBONa@\\c@LKH?PLzA~A', 'Accepted', '2024-05-11 19:21:40', '2024-05-11 13:51:49', NULL),
(130, 10021, 0, '11.0201129', '77.0009237', '11.016844500000001', '76.9558321', '80/77, P P M Rd, Peelamedu Pudur, Sowri Palayam, Coimbatore, Tamil Nadu 641028, India', 'Coimbatore, Tamil Nadu, India', 2, 130, 10030, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'sjgbAqf~tMg@NIHw@PsDl@_CAg@@a@TVn@Nn@PrBFxALnEFxAXvCTxAJv@v@`DJ^^xAb@fB^bAZh@fAtBt@rATVp@l@|ChBINiBcAy@g@m@g@s@|@QHWZOZOn@e@~BMt@?h@NjB?ZEX]lAWbAKp@Ch@Gv@KfC?bABHFLJJRHn@V?TQn@Gb@_@dEKtAClADbHDRB|ACZ?|@AdC?tD@lAA|@DfDFnHHbLFfG@hGPjBVlCnA|KNvAr@jF\\pDHLLnAFRBz@RbB`@xDLbA`@dEZrB^zDVvDBB?Bp@JHBbC?`CGx@CFdBPrDBdADbA?xA?lA?hDAhBA\\', 'Cancelled', '2024-05-11 19:22:54', '2024-05-11 19:23:40', NULL),
(131, 10021, 0, '11.0201207', '77.0009308', '11.030432399999999', '77.03909279999999', '80/77, P P M Rd, Peelamedu Pudur, Sowri Palayam, Coimbatore, Tamil Nadu 641028, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 131, 10030, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'ujgbAof~tMe@LIHw@PsDl@_CAg@@a@TVn@Nn@PrBDhAYBCiAGu@QqA]cA{AcEcAsCk@sBQ_ASeBK}ASmB_AsG]kCQuBQ_DOiBM}Ao@yFUcC]wE[cHG_EEyDMgBUuCYaFWuB{@cHc@kDQcBSs@kAwCy@uBkAuDsAsDu@}AmAoBmBwCoDaGeAyAuEcG}AwB_CwD_CwDgFgHqAyAoIuJ{AuBmAkBo@}@_BuBu@aAPOrAzAx@MfKu@dBO`I[vHWTEj@a@VWOQIWAOBONa@\\c@LKH?PLzA~A', 'Cancelled', '2024-05-11 19:24:07', '2024-05-11 19:24:54', NULL),
(132, 10021, 0, '11.0199534', '77.001004', '11.030432399999999', '77.03909279999999', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 132, 10031, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'iigbAig~tM@Rg@Bk@NIHw@PsDl@_CAg@@a@TVn@Nn@PrBDhAYBCiAGu@QqAkAgDcAmCqAcEYuASeBIqAOuAe@qDo@gE[kDUsD]gEo@yFKmASwBSuC[cHMyJYqDc@mHk@yEq@oFg@iECUSs@yAsDk@yAkAuDsAsDu@}AoB}CkAiByAeCqBcDqCoDkE}F_CwD_CwDgFgHqAyA{EuFsB_C{AuB}BiD_BuBu@aAPOrAzAx@MfKu@dBOdCMhJYhCKTEbAy@OQIWAOBONa@LS\\[N@dBjB@?', 'Accepted', '2024-05-11 19:25:16', '2024-05-11 13:55:42', NULL),
(133, 10024, 0, '11.0200775', '77.0009528', '11.0283259', '77.0272806', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore Institute of Technology, Avinashi Road, Civil Aerodrome Post, Coimbatore, Tamil Nadu, India', 2, 133, 10030, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'qjgbA}f~tM@J]HSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoCiBwCPKp@jA`@Od@GxB]hAO[gC', 'Cancelled', '2024-05-11 19:31:53', '2024-05-11 19:32:40', NULL),
(134, 10024, 0, '11.0200775', '77.0009528', '11.0283259', '77.0272806', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore Institute of Technology, Avinashi Road, Civil Aerodrome Post, Coimbatore, Tamil Nadu, India', 2, 134, 10030, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'qjgbA}f~tM@J]HSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoCiBwCPKp@jA`@Od@GxB]hAO[gC', 'Cancelled', '2024-05-11 19:32:40', '2024-05-11 19:33:26', NULL),
(135, 10024, 0, '11.0200204', '77.0009454', '11.030432399999999', '77.03909279999999', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 135, 10029, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'cjgbAsf~tMi@JSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoC_DgFqAwBi@u@qE}FiBgCwAuBoDaGgFgHg@i@uBiC{EoFeAuA{AsBeD{EoA}APOrAzApAOjL{@~BOfFSnFQxAGPId@a@PSMOGQCKBYFUHMX_@RMH?HF~AdB', 'Cancelled', '2024-05-11 19:35:50', '2024-05-11 19:36:36', NULL),
(136, 10024, 0, '11.0200204', '77.0009454', '11.030432399999999', '77.03909279999999', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 135, 10030, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'cjgbAsf~tMi@JSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoC_DgFqAwBi@u@qE}FiBgCwAuBoDaGgFgHg@i@uBiC{EoFeAuA{AsBeD{EoA}APOrAzApAOjL{@~BOfFSnFQxAGPId@a@PSMOGQCKBYFUHMX_@RMH?HF~AdB', 'Cancelled', '2024-05-11 19:36:36', '2024-05-11 19:37:24', NULL),
(137, 10024, 0, '11.0200204', '77.0009454', '11.030432399999999', '77.03909279999999', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 137, 10029, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'cjgbAsf~tMi@JSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoC_DgFqAwBi@u@qE}FiBgCwAuBoDaGgFgHg@i@uBiC{EoFeAuA{AsBeD{EoA}APOrAzApAOjL{@~BOfFSnFQxAGPId@a@PSMOGQCKBYFUHMX_@RMH?HF~AdB', 'Cancelled', '2024-05-11 19:36:40', '2024-05-11 19:37:26', NULL),
(138, 10024, 0, '11.0200204', '77.0009454', '11.030432399999999', '77.03909279999999', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 138, 10030, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'cjgbAsf~tMi@JSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoC_DgFqAwBi@u@qE}FiBgCwAuBoDaGgFgHg@i@uBiC{EoFeAuA{AsBeD{EoA}APOrAzApAOjL{@~BOfFSnFQxAGPId@a@PSMOGQCKBYFUHMX_@RMH?HF~AdB', 'Cancelled', '2024-05-11 19:37:24', '2024-05-11 19:38:10', NULL),
(139, 10024, 0, '11.0200204', '77.0009454', '11.030432399999999', '77.03909279999999', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 139, 10029, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'cjgbAsf~tMi@JSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoC_DgFqAwBi@u@qE}FiBgCwAuBoDaGgFgHg@i@uBiC{EoFeAuA{AsBeD{EoA}APOrAzApAOjL{@~BOfFSnFQxAGPId@a@PSMOGQCKBYFUHMX_@RMH?HF~AdB', 'Cancelled', '2024-05-11 19:37:40', '2024-05-11 19:38:26', NULL),
(140, 10024, 0, '11.0200204', '77.0009454', '11.030432399999999', '77.03909279999999', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 137, 10030, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'cjgbAsf~tMi@JSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoC_DgFqAwBi@u@qE}FiBgCwAuBoDaGgFgHg@i@uBiC{EoFeAuA{AsBeD{EoA}APOrAzApAOjL{@~BOfFSnFQxAGPId@a@PSMOGQCKBYFUHMX_@RMH?HF~AdB', 'Cancelled', '2024-05-11 19:38:10', '2024-05-11 19:40:12', NULL),
(141, 10024, 0, '11.0200204', '77.0009454', '11.030432399999999', '77.03909279999999', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 138, 10029, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'cjgbAsf~tMi@JSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoC_DgFqAwBi@u@qE}FiBgCwAuBoDaGgFgHg@i@uBiC{EoFeAuA{AsBeD{EoA}APOrAzApAOjL{@~BOfFSnFQxAGPId@a@PSMOGQCKBYFUHMX_@RMH?HF~AdB', 'Cancelled', '2024-05-11 19:38:26', '2024-05-11 19:39:13', NULL),
(142, 10024, 0, '11.0200204', '77.0009454', '11.030432399999999', '77.03909279999999', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 139, 10031, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'cjgbAsf~tMi@JSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoC_DgFqAwBi@u@qE}FiBgCwAuBoDaGgFgHg@i@uBiC{EoFeAuA{AsBeD{EoA}APOrAzApAOjL{@~BOfFSnFQxAGPId@a@PSMOGQCKBYFUHMX_@RMH?HF~AdB', 'Cancelled', '2024-05-11 19:39:04', '2024-05-11 19:41:06', NULL),
(143, 10024, 0, '11.0200204', '77.0009454', '11.030432399999999', '77.03909279999999', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 143, 10030, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'cjgbAsf~tMi@JSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoC_DgFqAwBi@u@qE}FiBgCwAuBoDaGgFgHg@i@uBiC{EoFeAuA{AsBeD{EoA}APOrAzApAOjL{@~BOfFSnFQxAGPId@a@PSMOGQCKBYFUHMX_@RMH?HF~AdB', 'Cancelled', '2024-05-11 19:40:12', '2024-05-11 19:40:59', NULL),
(144, 10024, 0, '11.0201223', '77.0009472', '11.030432399999999', '77.03909279999999', '80/77, P P M Rd, Peelamedu Pudur, Sowri Palayam, Coimbatore, Tamil Nadu 641028, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 144, 10030, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'qjgbA}f~tM@J]HSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoC_DgFqAwBi@u@qE}FiBgCwAuBoDaGgFgHg@i@uBiC{EoFeAuA{AsBeD{EoA}APOrAzApAOjL{@~BOfFSnFQxAGPId@a@PSMOGQCKBYFUHMX_@RMH?HF~AdB', 'Accepted', '2024-05-11 19:40:59', '2024-05-11 14:11:27', NULL),
(145, 10024, 0, '11.0200204', '77.0009454', '11.030432399999999', '77.03909279999999', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 143, 10029, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'cjgbAsf~tMi@JSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoC_DgFqAwBi@u@qE}FiBgCwAuBoDaGgFgHg@i@uBiC{EoFeAuA{AsBeD{EoA}APOrAzApAOjL{@~BOfFSnFQxAGPId@a@PSMOGQCKBYFUHMX_@RMH?HF~AdB', 'Accepted', '2024-05-11 19:40:59', '2024-05-11 14:11:28', NULL),
(146, 10024, 0, '11.0201223', '77.0009472', '11.030432399999999', '77.03909279999999', '80/77, P P M Rd, Peelamedu Pudur, Sowri Palayam, Coimbatore, Tamil Nadu 641028, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 146, 10031, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'qjgbA}f~tM@J]HSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoC_DgFqAwBi@u@qE}FiBgCwAuBoDaGgFgHg@i@uBiC{EoFeAuA{AsBeD{EoA}APOrAzApAOjL{@~BOfFSnFQxAGPId@a@PSMOGQCKBYFUHMX_@RMH?HF~AdB', 'Cancelled', '2024-05-11 19:41:10', '2024-05-11 19:41:57', NULL),
(147, 10024, 0, '11.0200717', '77.000948', '11.030432399999999', '77.03909279999999', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 147, 10031, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'ojgbA}f~tM?J]HSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoC_DgFqAwBi@u@qE}FiBgCwAuBoDaGgFgHg@i@uBiC{EoFeAuA{AsBeD{EoA}APOrAzApAOjL{@~BOfFSnFQxAGPId@a@PSMOGQCKBYFUHMX_@RMH?HF~AdB', 'Cancelled', '2024-05-11 20:44:36', '2024-05-11 20:45:22', NULL),
(148, 10024, 0, '11.0200717', '77.000948', '11.030432399999999', '77.03909279999999', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 147, 10030, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'ojgbA}f~tM?J]HSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoC_DgFqAwBi@u@qE}FiBgCwAuBoDaGgFgHg@i@uBiC{EoFeAuA{AsBeD{EoA}APOrAzApAOjL{@~BOfFSnFQxAGPId@a@PSMOGQCKBYFUHMX_@RMH?HF~AdB', 'Cancelled', '2024-05-11 20:45:22', '2024-05-11 20:46:09', NULL),
(149, 10024, 0, '11.0200397', '77.0009685', '11.0283259', '77.0272806', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore Institute of Technology, Avinashi Road, Civil Aerodrome Post, Coimbatore, Tamil Nadu, India', 2, 149, 10029, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'qjgbA_g~tM@L]HSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoCiBwCPKp@jA`@Od@GxB]hAO[gC', 'Accepted', '2024-05-11 20:48:03', '2024-05-11 15:18:10', NULL),
(150, 10021, 0, '11.0128045', '77.0027028', '11.664325', '78.1460142', '18/1, Thirumagal Nagar, Masakalipalayam, Coimbatore, Tamil Nadu 641028, India', 'Selam, Tamil Nadu, India', 2, 150, 10032, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'a}ebAcr~tMy@k@_H]yGFaJ\\mB}FeF~@_E~AoG~EkH`BjA|CwC{Gq@mEgC{TcC{XmGw}@cM{ZcSuYq{@inAgZyu@cQ__@k^ii@gVef@aEi_AwZafAwe@i`A{kAgwBad@}w@aXm}@oNkv@cQud@sP}d@_Mwe@cYwo@wSc[wWaM_XoUgg@su@kSkTiWkFuf@oZk\\wFcfAmk@qYol@wMqYcQeRg]w_@oa@ub@cRqZa@ms@|B{j@HwRfNol@n@uTeO}cAoIiJ_r@aMmQsF}FwHmNoPgP}OqM_`@iGu[r@qv@mPumAqPslAyCcMuGgHij@aO}NgQcDai@dEy^`^wt@vQoWdB}KpA_z@tIos@rYs~@fGsX~CmiAyCqQ}g@}{@aImSsDkSig@ap@wN_RuD}L{EkYkJmQeQcSiKi^kSgWcHcLeHe[aFyV_Osb@uEeU{HqMuHqU|EaYlLyZeAwS}IqPsFwFeS}\\mQid@wQciAoJ}c@cV_h@aKwQsQoKu^mLsP}ByuA}WwQmGwGuGgM}TmHcVoHef@{@eYCw_@_Dqb@e^cm@mL{PyOaKu_@gVgIkOkYu\\ub@us@}N{U_WeQsXeNin@{@oKeBqJsGoQ_i@wLgPmNmH}^sIeo@cLge@}Ece@wLgk@iZmOkBsM|@eh@|PsRdAeLkB{a@cYaMcMkLwUgMwWyDkNwMgb@sLmJaMgDmZZuUnC{XpA_HgD_GmNlDgw@O}TyR{y@oMej@cIuM_WgRcKcV_AuM^}VwAaTeFsu@mBc|@`Bif@_L{g@oMwa@g@ak@xGkZaCuLqN{SgDkLa@sZiAiw@{Cq]Wij@eCoo@sIgQaLkJcQ{Gk^yIkP_Ns[il@ii@{m@{m@ex@}Qyb@eOarBxEydApFe{@k@uUg\\et@cZaZ}t@aw@yh@ay@sSgf@sM_d@od@uy@mM_VyOqJsKeH}B_Ia@mb@qb@khA{Zg_AkLgl@aIyV{a@ky@_`@moAwZsm@y@wH~ANfEk@|DmFdJiNxEs@hCcGnDkKbHmLpB{JyFcMaEkAhA}CjDgN~C_GzD_BrQd@fGeKdOaQbOoFjBiAnA_H~E}H_AoEyFaGmIqOwCuHaJoDwY_HcZaFon@cQc]wDmVkGmOuHcU}Ck_A_J_HSqDiEsI{XeHyVaJsOak@sr@uVcYaKqNuXiKac@aMsPaJwRgb@}TuNebAyBuEuHaHmB{_@gBukA{EcMsDoMcGsE}EjEyTjLwR?MvWmSr[e[iCgWa@{MsScDwCMyFyAwEkAcC|C{@jAeA~@A@', 'Accepted', '2024-05-14 17:42:02', '2024-05-14 12:12:24', NULL),
(151, 10021, 0, '11.0129473', '77.0027813', '11.4102038', '76.6950324', '101, Thirumagal Nagar, Masakalipalayam, Coimbatore, Tamil Nadu 641028, India', 'Ooty, Tamil Nadu, India', 2, 151, 10032, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', '{}ebA}q~tMfAWlBhA_BpMbBbRmN|KuMx@uL|F_CbCsAnBnEvCoGeAiApBgAnMo@zLnAbAcA`VNj`@~@nf@vI|u@z@xJp@LnGCrAtGHzMXjRuAt@_CaAyLnBoS|F}ZpAgVjAq`@bAyi@|Ngo@pIor@fHkiA|NgeA~GqPxLi`@L{j@Kuh@xB}v@`My_AbB{Ix@qR}CaZuL{e@eVyPcGkc@wEsa@}@cPIa[oJ_Q{Lyg@mVsr@gWiZcSiSeFu]eBoQKqYiIec@mRkQuEg]|Ci_@hHiTnLmOrI}ZxDan@IwTeDwR~EqQnJcOtDaw@dOiiBt]oYrDyQvG{GbHmTxH{g@zR_}@`MwEfAuHpJsa@h[gNbDae@vy@me@v_AaQ~ZyJnLmE|RgEpTXpb@cV|_@aBtOmHbIyGzYhBp]`CxUwD}CmKkImE}CoY{GtMjHrG|InFbAn@jHt@bKfCrJeG|EfAdBwD`GpKnFvDdEz@|Fo@lE}FfC_Hv@wCbFrFtEfFlBaDlDQtBmAbBhCtA|AjMw]RkBfBbBdAfFdCoC_@nB`IzDjCd@tD~CYpDEWdEpHjGs@hDgExAvAfCuBxDzJnBXxC|AxDuDjHkCbCbEjDlFdD}@tHeHxMnBvApIWjMrIvAjENbKmDyLuOeFgB~AfGfA`DnAp@xLgCrCzAcCeCwBi@qEgFgAQz@|DdA{@zQGhGfFrIpEYjAlHHjE`Cl@nAbFkB{D{F}AOoGAxEnBxFjBxAD|JhCtGbCtEiI{F}BgI|AfL|DdChCbHtDdFSzCvBO|JdGdDXKjE_ApEcAzKTrFmGvBoFtAnDdHtEnDGhNcCfAXzE{IhCq@jE{BN}FjG|EjIO|E{A_HkJkFvCiGBkDpEkQzBuEuAiD{FqByD|AyIIuDhE{EYyIpC{CnMmE`HaArLoIzFgGbFcHhDiHdEhAtBa@rCaDDwKK_F`@cPhHmIeA{Ex@HzDpAjD}ApAsIfDqAxGgInCnBbKfBzCKdHyDs@oH}BoGNkCn[oCvS{ApL{EtEgSvRu@pEz@xAgAbGeITiD}@eBzH`CrIdApDeF|DyCUwA~FwB`CnClFAzH}Cj@qLxPxEhMyC|FgBa@wClGk@nH{J^{CzCu@nH~BjIDbEkFf@mF@wHeC}AdCsGlBZlCzCfJoBnFqB`@ErDErI|Ap\\eIbRHlFaOvCmEhBsBkEyKjBuQAqZ~OqLe@sNtGeJnKeFdK_BrAFrDmBI{@ZcAv@k@~CTbFvAxHeDzHyC~C{CDdB~EFvFdJbb@jIgD~CkA', 'Cancelled', '2024-05-14 17:43:10', '2024-05-14 17:43:57', NULL),
(153, 10021, 0, '11.0130615', '77.0028519', '12.9811068', '80.159623', '30, Annamar Kovil St, Thirumagal Nagar, Masakalipalayam, Udayampalayam, Coimbatore, Tamil Nadu 641045, India', 'Chennai International Airport (MAA), Airport Road, Meenambakkam, Chennai, Tamil Nadu, India', 2, 153, 10032, 'Cash', '', 8, '', '0', '0', 'Asia/Kolkata', 'u~ebAos~tMo^}Fi]~QePu~AmgC{iFuw@orAk]cyBkjCagFk_CyeHwpAiuAsy@cjAo_Agb@ov@qU}gAyiAysBolC|RwtDkYerAelAa]cn@maA}F_vAca@{vCuv@_j@cVwz@zb@{sArX{}Ald@ovBnLybBeR}k@sw@k_B_zAukCygAqaDmRsr@rPy{@iaA_aCg^oyAwiAudAmzBad@mi@a{AaAay@}`@cpAurA{qAscAo|AcaAub@ij@oBi]cp@owAwl@{rAqTyiAqc@shAdU_l@eXkm@g`A{`@m}@_rAjBsTgK`AouAo`@ocBk`@qa@eSopBwEshBwSsnAg@_hAaTu}@eG_pBwLylBy~@_`@w[wa@_wAyjBwg@{iAmLsrBbLyfBaJiv@ueA{pAeyAk|B{aAmwBa`@yl@qeBkwFepAsbDzQqXr`@op@gLmVfK}Znu@a`@nVwZmRu]_i@qWyfBc^m~A}[mn@aKqRap@sbAinAmsAmx@od@sl@wy@sRm_@eB`@}Q|b@qG~r@_sA~NujBmXslAalA}y@seAkyBeq@}jBcb@iaGxJgyIuIwqAxRmh@~gAkeC_QegD|^a~Cot@acCnZgqDnRgtHviAapCpwAcvBf_AeiC|ZiyDdZccB`aAan@zLsvAJ{yAzYyoFrS}hDuDuaE}p@m{FjD}oBqa@}gAm}BeiEooCqsCca@iyAmp@{aA{gE_xDa|C{qCyj@_p@uOghAs|@y}@_a@i~@lKwvEkV{gExu@wfHzmAspEoAmlBjKieB|i@uyApAs{@sYm{@fg@}iE`e@s}B|h@meArdBq\\cAgmAqd@ogCyl@yi@cj@cOguAg_A_c@{s@ceCisCir@iy@{`AicAk`Ga{DqdE{cB_gGk~Aov@eSwG{i@izAmdAwo@}_@mw@j@w~Ail@_aBnPgy@}e@_aAodC}cCyhA{mAiZgvAsgBuaDa}@uvCg\\aeBwk@ssEyaCwd@gt@moB}cAs~DazB}iCqkA}eCopAqKkt@Umx@{k@{Z{eAiQ{e@zJyjCykBccAwaAmn@sxAwyBiqEodBiqC}tAuxA}y@u\\odAdM_hBuV_gBy`AglCibCkOuj@aqAao@yrCaw@}{Dc|Bi|BouA{`CamBq|BmrAe|Cqy@{sBue@aaC_Hu}D_jAkzAgr@_u@NsQuUnC{wAoZcRy`@|LigC}IajBe|AuoB{f@wz@iNaw@qo@{|DwfBitDadBy~DmpCwtCufC{pD}nAa{Dm}BenAweBqaCavBecB}z@{hAk`AkUgH', 'Cancelled', '2024-05-14 18:38:10', '2024-05-14 18:38:57', NULL),
(154, 10018, 0, '10.3686493', '77.9820963', '10.3623794', '77.9694579', '32/G1, Anna Nagar, Tamil Nadu 624001, India', 'Dindigul, Tamil Nadu 624001, India', 2, 154, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'och~@mz}zM|@j@x@jAfA`B|BxDNFKb@A`@r@jEbChNh@fDh@pCNbAf@jCd@fDDdAErAEh@QxCIdBInBCb@FTRFx@FnBJ~AH|BRzB@rAF', 'Accepted', '2024-05-15 11:39:38', '2024-05-15 06:09:50', NULL),
(155, 10018, 0, '10.3686512', '77.9820696', '10.3623794', '77.9694579', '32/G1, Anna Nagar, Tamil Nadu 624001, India', 'Dindigul, Tamil Nadu 624001, India', 2, 155, 10025, 'Cash', '', 3, '', '0', '0', 'Asia/Kolkata', 'mch~@kz}zMz@h@x@jAfA`B|BxDNFKb@A`@r@jEbChNh@fDh@pCNbAf@jCd@fDDdAErAEh@QxCIdBInBCb@FTRFx@FnBJ~AH|BRzB@rAF', 'Accepted', '2024-05-15 11:43:35', '2024-05-15 06:16:18', NULL),
(156, 10021, 0, '11.0130892', '77.0027884', '11.034576', '77.01556029999999', '19/2/1, Thirumagal Nagar, Masakalipalayam, Coimbatore, Tamil Nadu 641028, India', 'peelamedu, Peelamedu, Coimbatore, Tamil Nadu, India', 2, 156, 10028, 'Cash', '', 9, '', '0', '0', 'Asia/Kolkata', 'q~ebAwq~tMrAUHGUQUIS?w@DkAPuBN}@JA_A?GCCOCaDAiCL}CHkDNGsGeALsBXuAR}Bp@eBj@KL]^w@t@kDhCc@PuE`AkAZVr@^`ARh@SH]_AUm@qAcEYuASeBIqAOuAuAyJ[kDUsD]gEo@yFKmASwBSuC[cHMyJYqDc@mHk@yEyAyLCUSs@yAsDk@yAkAuDOFMT?H`CdH`@lADT?\\GX{@nAuEfGsAhBwChE{@bAU^q@p@c@Ta@VOFaALcBPyEn@{H`A{B`@PnA', 'Accepted', '2024-05-19 13:30:32', '2024-05-19 08:01:13', NULL),
(157, 10021, 0, '11.0130279', '77.0028372', '11.034576', '77.01556029999999', '30, Annamar Kovil St, Thirumagal Nagar, Masakalipalayam, Udayampalayam, Coimbatore, Tamil Nadu 641045, India', 'Peelamedu, Maheshwari Nagar, Coimbatore, Tamil Nadu, India', 2, 157, 10028, 'Cash', '', 9, '', '0', '0', 'Asia/Kolkata', 'o~ebAos~tMeANa@DuBN}@JA_A?GGEe@AyD@uFRkDNGsGeALaCZgAP]JeEpAUXkAhA{DtCiFfAkAZVr@^`ARh@SH]_AUm@m@eBk@sBQ_ASeBK}ASmB}A_LQuBQ_DOiBM}Ao@yFUcC]wE[cHG_EEyDMgBUuCYaFWuB{@cHu@oGSs@kAwCy@uBkAuDOFMT?H@F`DjJFd@CXSb@wEhG_C`DwChE{@bAm@z@YTc@Ta@VOFaALcBPeALsEl@kC\\{Cb@oATPnA', 'Cancelled', '2024-05-19 13:36:34', '2024-05-19 13:37:20', NULL),
(158, 10021, 0, '11.012876', '77.0027736', '10.4500374', '77.5161356', '29/1, Thirumagal Nagar, Masakalipalayam, Coimbatore, Tamil Nadu 641028, India', 'Palani, Tamil Nadu, India', 2, 158, 10028, 'Cash', '', 9, '', '0', '0', 'Asia/Kolkata', 'm}ebAar~tMx@Sp@CjADh@gDJg@FGlBaCdDqEv@mBsA}@H}BjA{Fd@}BbDaAdD_@`BmAbDyJPaFIsG?eA@}@nCOrDQnDQhIe@vHc@nMi@vBcAcBuZoBsPiEcVcDu]wGeg@}G_g@ZaPxCsTjDeZmAmYuA{PsA_DmBkFyCcIoLwToDyFGsCg@sNcC{OcHcTsNm_@sRiRaNeb@yFuJ}DuLuOmo@kJyc@kBkRx@yOuAw[VgLoBsGkCsDgFmFiAaKH{b@lAaOL{MHce@N}XZ}_@~@uJ~EmUzBiNxA}QToQBqNxF}M~E_KzEaOjSs[bM{R~GcNzHyYfCsQfE_IrDiLbE{NfBaFp@iJfCaP|FuOnHsMrGgOtHeb@h@kNtByHrHgNvD{]?cLwBiRyGqMaAeIy@cS@mPqDkMWkQXeMpByMlDaZzEcXfAsShCkOlGcWvHo_@|@u@vC@`Bs@l@uBHcEWoKkD{P}@_HbAyItDqKtBqIb@wAxAk@xEsAfNaE~EoCfEo@nPaDjWaNf_@u^~Y{SvQkMzJeF~UwIlPkG`FcEpC}B~DqAzFsCbHeGlN_S`ZsNfGcAlJWnOuE|RQxLgBfGWxOz@|KNtN{ArNiFzHwDzLMdN|@pFk@fK{BpJwCjE{HjBeB|HgCxJ]~JuBtEaBlAyCfBiQnCoH`BmHl@kJ|DgZ`B_M`B_GrEkFfKmJ~HyEnN{EnGSfOyAjSeJ`LaFbPgF|@sD^eI|C}MxBec@|Dit@`AeFpFyLfMsXrWwn@fU_l@hJg`@tAyPlDeO|CaLxEuKpGsIhEwIrSqXhJg[`Gc[xD{O|HgUbGkWdC{FzCeDnRaWdCcDbIaKk@s@x@eHJyJ^qUvC}VtBwSJ{Ls@yAUSlDc@bKQpHTnNQ~Qe@p\\iF`M_Flx@we@vOwJdHkEzYuKjN}FdVwLh]uOlc@}R~u@{[~BuAhFeI|E}OfFkH|JgIdTyQ|RqOnLyElW{JvKiHzMwJvGuAtQpDvFf@x{@gCbj@jIfFUxJoCj_@mKdDmBbB}BhB{C@IpEaHxLiVpf@_z@pA_GU_H_@mJeCePuAeLMmAjAAz@@pPk@jVg@t|@yB`mBnKrlA`HxtBlLje@lCxm@pKxo@nLjWnEhMv@n`AKzx@MrZr@pg@`CrTnBtO~Cl`@bKtb@nLdO`B~ThA|m@vBnNBxXfAtcArDfl@tBnLSnKfAvNrArPUv\\cD|k@cIz_@eFx`@qCxh@}DrO{EfWpEjOdArInBda@`O~XtIrZ`Llp@nRl`@zKtt@lTvKvBpBaI?G', 'Accepted', '2024-05-19 14:05:32', '2024-05-19 08:36:09', NULL),
(159, 10021, 0, '11.0127995', '77.0027025', '11.030432399999999', '77.03909279999999', '18/1, Thirumagal Nagar, Masakalipalayam, Coimbatore, Tamil Nadu 641028, India', 'Coimbatore Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 159, 10045, 'Cash', '', 9, '', '0', '0', 'Asia/Kolkata', 'a}ebAcr~tM\\ELE@EIIQKKE_A@gAR_BJgBPCiAKEaC?g@AoBHaJ\\GsGWBmAP_D`@eA\\{C|@OHSVg@f@_BpAuB|AQFkH`BjA|CSJk@aBwAeEUiAKk@OwAOwBUoB_AmGIm@WwCMkBc@}Fw@mHYcDY{DWgGE_DEcDCqAUcCc@mHa@qDw@sGw@eG{A_E_@aAs@uBoB_Gw@eBm@gA}@uAk@y@iBwCgCgEiCiDqBiCiBgCwAuBoDaGgFgHg@i@uBiC{EoFeAuA{AsBiAeB{AuBoA}APOrAzApAOjPkAdJ[jEQPId@a@PSMOGQCKBYPc@d@i@FCH?`@`@fAjA', 'Accepted', '2024-05-20 21:19:04', '2024-05-20 15:49:45', NULL),
(160, 10021, 0, '11.0034112', '77.0200051', '9.4217809', '77.8367282', '23/33A, Housing Unit, Coimbatore, Tamil Nadu 641015, India', 'Virudhunagar District, Tamil Nadu, India', 2, 160, 10045, 'Cash', '', 9, 'Peak', '30.00', '0', 'Asia/Kolkata', 'obdbAa~auMdDdHdFPpLcFQq]iEcSsLueAoGcl@fGmg@q@oz@m\\}r@oQ{`A}`@ko@_w@urCcBi}@mJe\\wC}w@|AqkAnEscA`Hwb@n@}d@hJyXx`@wv@d_@mbA~g@uhBrg@yiBjCg^oEy^yJ}|@cCie@bImq@jLq|@~Pot@vHeB^gMcCgo@hLeWxlAac@``Akx@bu@w\\v[}P|^i`@tn@oPjc@cFvf@m@pv@kOdn@mCnOkN~PyDtSoDxEiKrKoo@dE_]lLsV`X{PvYaEn{@w]bJefAfP{fAbf@_iA|f@amBx\\ap@r^{{@ve@_}Ab^_k@pB}m@tEsu@bgAeElg@uPpr@ya@j|Ait@vbAad@pr@gZfXsf@xs@wk@zx@ka@zReEz^`D~t@cBdh@hIxt@cSpFiId}@e`BmHsxAbDiZ~LqMxh@}g@~Tow@|j@swArsAolBpeCmqAbzAkdBfo@ap@pQaf@jgA_n@fdAmeA|QoXt`@iK|i@}_@js@ck@zh@aX`s@_rAr^cf@p^oH~}BmoAzxAqd@xXgQxGaZrjAkg@~h@sVrIGVqUjBwTlTgbAda@ec@jc@mIx|@{PvMg\\tLu\\nIye@|Se@bl@|MnSl@vUkR|m@kb@pi@kTzk@_Zh]aZ|KxBtQmEza@mOtt@kM`lAaEfKiFzEiQxHa[hRyD`j@yOvd@wIrBoLb_@cSjh@}Ybs@}Sv}@cV|{@mGxnAc[hj@ud@xT{ElXwL~l@uKxfAgXrp@eNhIgBzo@kSrz@_Dtv@mNrx@aVd[wJxXaX|Yad@}Fo^n@{\\tIkS~PuAxe@^juAwBfpBmNzc@gElaB{c@bSkG|YxGjl@CbaBy_@vx@{V~rBsiAvd@a^|Ny`@jKsu@rVim@za@u}@fOqMjWoDfr@f@pi@mC``@yGxTuWjr@}`A|RyQv_@u~@jMiRtk@_RxxA}Ohf@cEhiAs\\pXgQdY}Afp@iOb^qPj`AcQtpBm|Bbf@{Zrl@qD`eB|`@bzBnl@th@p^fb@ne@nm@pb@rc@qBteArg@fyAhk@xYlG`RzSly@vcAeJp}AdYpx@vXlEpoBwf@`j@aNbx@{Ar~A~NloAvHt_A`Ol|@kMzv@_Mh{@bS`uCtc@jcAbG~h@`MjiChVbf@oDdaAhTliAtNx{Cb[x{@dObq@xfAzd@NzsAoSjeAoWthCfYbmBjM`cCrGtrBrChtAb`@flD~bA`m@d]`tBhYppB}@nNz@nCzE`@`NCbNsD~h@_Jfi@ac@|tAadAveEkUrm@iG|i@wFfU_LeKkAcB', 'Accepted', '2024-05-21 11:34:23', '2024-05-21 06:04:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rider_location`
--

CREATE TABLE `rider_location` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `home` text NOT NULL,
  `work` text NOT NULL,
  `home_latitude` varchar(100) NOT NULL,
  `home_longitude` varchar(100) NOT NULL,
  `work_latitude` varchar(100) NOT NULL,
  `work_longitude` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rider_location`
--

INSERT INTO `rider_location` (`id`, `user_id`, `home`, `work`, `home_latitude`, `home_longitude`, `work_latitude`, `work_longitude`, `latitude`, `longitude`) VALUES
(1, 10001, 'Delhi Cantt Railway Station, Jail Road, Nangal Village, Delhi Cantonment, New Delhi, Delhi, India', '', '28.7040592', '77.10249019999999', '33.664435', '73.0522878', '28.654623566782437', '77.40467503666878'),
(2, 10018, 'Dindigul, Tamil Nadu 624001, India', 'Dindigul, Tamil Nadu 624001, India', '10.3623794', '77.9694579', '10.3623794', '77.9694579', '10.09122636033716', '77.92013794183731'),
(3, 10021, '', '', '', '', '', '', '11.003411115039293', '77.02000502496958'),
(4, 10024, '26/14, Y.M.R. Patty, Telephone Colony, Karunanidhi Nagar, Dindigul, Tamil Nadu 624001, India', '', '10.3640818', '77.9813597', '', '', '11.02012230787155', '77.00094725936651'),
(5, 10033, 'covai', '30-32 Av. de la République, 94800 Villejuif, France', '', '', '48.78871819999999', '2.3637513', '', ''),
(6, 10042, '', '', '', '', '', '', '10.091696737406497', '77.91824128478765'),
(8, 10048, '', '', '', '', '', '', '11.012093629125733', '77.00084667652845'),
(9, 10049, '', '', '', '', '', '', '10.368561418781193', '77.9820929467678'),
(10, 10036, '', '', '', '', '', '', '9.910739970189253', '78.13880536705256'),
(11, 10050, '', '', '', '', '', '', '13.11152003570776', '80.10244991630316'),
(12, 10051, '', '', '', '', '', '', '13.11155758729942', '80.10250423103571'),
(13, 10052, '', '', '', '', '', '', '22.471494427961563', '2.109719328582287');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'sathiya', 'update driver', 'Admin', '2021-12-18 12:35:24', '2024-05-14 05:14:24'),
(2, 'Manager', 'Manager', 'Manager', '2024-04-01 17:33:38', '2024-04-01 17:33:38'),
(3, 'Ilavarasan', 'manage', 'I am Ilavarasan', '2024-04-21 04:00:52', '2024-04-21 04:00:52'),
(4, 'employetr', 'em[loye', 'new employe', '2024-05-11 08:13:48', '2024-05-11 08:13:48'),
(5, 'sathiya123', 'update driver', 'sathiya', '2024-05-16 15:30:39', '2024-05-16 15:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_cancel`
--

CREATE TABLE `schedule_cancel` (
  `id` int(10) UNSIGNED NOT NULL,
  `schedule_ride_id` int(10) UNSIGNED NOT NULL,
  `cancel_reason` varchar(191) NOT NULL,
  `cancel_reason_id` int(10) UNSIGNED NOT NULL,
  `cancel_by` enum('Rider','Driver','Admin','Company') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_ride`
--

CREATE TABLE `schedule_ride` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `schedule_date` varchar(255) NOT NULL,
  `schedule_time` varchar(255) NOT NULL,
  `schedule_end_date` varchar(100) NOT NULL,
  `schedule_end_time` varchar(100) NOT NULL,
  `pickup_latitude` varchar(100) NOT NULL,
  `pickup_longitude` varchar(100) NOT NULL,
  `drop_latitude` varchar(100) NOT NULL,
  `drop_longitude` varchar(100) NOT NULL,
  `pickup_location` varchar(255) NOT NULL,
  `drop_location` varchar(255) NOT NULL,
  `trip_path` text NOT NULL,
  `car_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `peak_id` int(10) UNSIGNED NOT NULL,
  `booking_type` enum('Manual Booking','Schedule Booking') NOT NULL DEFAULT 'Schedule Booking',
  `driver_id` int(11) NOT NULL DEFAULT 0,
  `status` enum('Pending','Completed','Cancelled','Car Not Found') DEFAULT NULL,
  `timezone` varchar(100) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `fare_estimation` varchar(15) NOT NULL,
  `is_wallet` enum('Yes','No') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedule_ride`
--

INSERT INTO `schedule_ride` (`id`, `user_id`, `company_id`, `schedule_date`, `schedule_time`, `schedule_end_date`, `schedule_end_time`, `pickup_latitude`, `pickup_longitude`, `drop_latitude`, `drop_longitude`, `pickup_location`, `drop_location`, `trip_path`, `car_id`, `location_id`, `peak_id`, `booking_type`, `driver_id`, `status`, `timezone`, `payment_method`, `fare_estimation`, `is_wallet`, `created_at`, `updated_at`) VALUES
(1, 10001, NULL, '2022-06-26', '12:50', '', '', '-33.4352323', '-70.5907791', '-33.4230012', '-70.6556616', 'Av. Francisco Bilbao 2870-2880, Providencia, Región Metropolitana, Chile', 'Avenida Independencia 740, Independencia, Chile', 'hiakE~gzmLVER|BBb@DJHp@HvAb@tFRhD\\lFd@fIZjEN|Ad@dDx@~F~@|GjAxHaF`A_FzAmFzAyA\\_ElAyFvAqC`ANnAp@`FdBpMv@zFvCjXb@zB|AlGf@|CFf@TjCFfAFrB?tBK~CK|@Gr@MxAYtBa@jBs@rBeBnCW`@x@`Ax@bAfC~BdDdEb@r@j@|A`@nAbA~Cx@`CxApEVv@fAfEPfADfBAtAGpAEf@Hd@JdALjAYDq@DiB@uDVc@DP~F?|@i@rFI`ATBBx@CVM`AGf@Iz@@nA?j@G|B]~Bg@fDg@hDsAvJcAdHaAtGoAxIwAdJmAhJaA`H]rB}@tCyA`DcAzC[lAa@zCi@dEOt@w@xCWVQZWP]FWE[SYe@EMYgBCUO@WTsCr@uAXmCx@cIjBiAT{Cx@aCsRoAoK}@mHfAK~B[', 1, 3, 0, 'Schedule Booking', 0, 'Pending', 'America/Santiago', 'Cash', '101.00', 'No', NULL, NULL),
(2, 10001, NULL, '2022-06-26', '14:48', '', '', '-33.4352573', '-70.5907811', '-33.4230012', '-70.6556616', 'Av. Francisco Bilbao 2870-2880, Providencia, Región Metropolitana, Chile', 'Avenida Independencia 740, Independencia, Chile', 'liakE|gzmLRCR|BBb@DJHp@HvAb@tFRhD\\lFd@fIZjEN|Ad@dDx@~F~@|GjAxHaF`A_FzAmFzAyA\\_ElAyFvAqC`ANnAp@`FdBpMv@zFvCjXb@zB|AlGf@|CFf@TjCFfAFrB?tBK~CK|@Gr@MxAYtBa@jBs@rBeBnCW`@x@`Ax@bAfC~BdDdEb@r@j@|A`@nAbA~Cx@`CxApEVv@fAfEPfADfBAtAGpAEf@Hd@JdALjAYDq@DiB@uDVc@DP~F?|@i@rFI`ATBBx@CVM`AGf@Iz@@nA?j@G|B]~Bg@fDg@hDsAvJcAdHaAtGoAxIwAdJmAhJaA`H]rB}@tCyA`DcAzC[lAa@zCi@dEOt@w@xCWVQZWP]FWE[SYe@EMYgBCUO@WTsCr@uAXmCx@cIjBiAT{Cx@aCsRoAoK}@mHfAK~B[', 1, 3, 0, 'Schedule Booking', 0, 'Pending', 'America/Santiago', 'Cash', '101.00', 'No', NULL, NULL),
(3, 10035, NULL, '2022-06-26', '10:00', '', '', '-33.4352323', '-70.5907811', '-33.4230012', '-70.6556616', 'Av. Francisco Bilbao 2870-2880, Providencia, Región Metropolitana, Chile', 'Avenida Independencia 740, Independencia, Chile', '', 1, 3, 0, 'Schedule Booking', 0, 'Pending', 'America/Santiago', 'cash', '202.00', NULL, NULL, NULL),
(4, 10035, NULL, '2022-06-26', '10:00', '', '', '-33.4352323', '-70.5907811', '-33.4230012', '-70.6556616', 'Av. Francisco Bilbao 2870-2880, Providencia, Región Metropolitana, Chile', 'Avenida Independencia 740, Independencia, Chile', '', 1, 3, 0, 'Schedule Booking', 0, 'Pending', 'America/Santiago', 'cash', '202.00', NULL, NULL, NULL),
(6, 10035, NULL, '2022-05-16', '10:00', '', '', '-33.4352323', '-70.5907811', '-33.4230012', '-70.6556616', 'dindigal', 'madurai', '', 1, 3, 0, 'Schedule Booking', 0, 'Pending', 'America/Santiago', 'cash', '202.00', NULL, NULL, NULL),
(8, 10035, NULL, '2022-06-26', '10:00', '', '', '-33.4352323', '-70.5907811', '-33.4230012', '-70.6556616', 'Av. Francisco Bilbao 2870-2880, Providencia, Región Metropolitana, Chile', 'Avenida Independencia 740, Independencia, Chile', '', 1, 3, 0, 'Schedule Booking', 0, 'Pending', 'America/Santiago', 'cash', '202.00', NULL, NULL, NULL),
(9, 10035, NULL, '2022-05-17', '10:00', '', '', '-33.4352323', '-70.5907811', '-33.4230012', '-70.6556616', 'dindigal', 'madurai', '', 1, 3, 0, 'Schedule Booking', 0, 'Pending', 'America/Santiago', 'cash', '202.00', NULL, NULL, NULL),
(13, 10039, NULL, '2022-05-20', '10:00', '', '', '-33.4352323', '-70.5907811', '-33.4230012', '-70.6556616', 'dindigal', 'madurai', '', 2, 3, 0, 'Schedule Booking', 0, 'Pending', 'America/Santiago', 'cash', '257.00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1E0E5LbUF74dhE1hE6f49jbZWOhWxviNsP8LHe3z', NULL, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkIwVEhuUHRwZUdGNGJtWGZWaTdONWlNZFVldXdtclVQdG5NblZsRXEiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890007),
('27pcft6cb0ss9olBZF80f3IIKeBCUr48nrOFdmrN', NULL, '66.249.84.117', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImdwaHJTNlZRYml3cHNoN2ZLRVRnTDJQelZUZktQUmtxdUlBQ3dyQ3AiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890805),
('2c1gHDgmQL20LhILPOrxoB8pDZvN8x3Y27zmiaqL', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InVhd2dUYmw2U0JyZWFRSVBYZlZ3aWJ1MmE0S2JwNkZMS3J2U1hlYVQiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891186),
('2OzXMZouBDvoKNIKVoDiJE3BUXF7JES4uhH1A72R', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Inc2dG1jaWkwSnpnTW1XUkQ3S3lRUGFIc3U4VlpCYzlZVmVzVkExUnMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9kcml2ZXJfcHJvZmlsZT90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891186),
('3KpsT9U8IDB9Hu2H0G6h0HuBHL6nVJ5WJVw5spr0', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkxYZTA5NklSdkF1Wkt5WThFc0F5MnhPb1lGMFBPczE1NjZhaE1oWEYiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890052),
('43pmKTWUAZxlXK6iItNI5D5U9VIuL7zwNtlkKpk8', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjFUTlkxRUNmbElnbWp3Mk1tUUlBOEoyTHIzcHdrZ0ZqYlVpZmZTaXYiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639889999),
('4EpWfALT5ue5vVroKNGn1UBg8o4D1QpJoFuU6iza', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImlsU3h6cnRScXhUQjU1OUpaVWFuRW93bUpISGJrdVdHSm1tdzVoUjQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639892462),
('69RPnrM6nTVevatYJaHZye7BrdB1lawFZQ2WeViZ', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkRDczY5cmVKUjVSallpUTJYV214aWVUelN6MldNQTk2b2FYeGx6QXQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNToiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9yaWRlcl9wcm9maWxlP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE16a3pOalVzSW1WNGNDSTZNVFkwTWpRMk56TTJOU3dpYm1KbUlqb3hOak01T0RNNU16WTFMQ0pxZEdraU9pSTVRbTA1V0ZjMlNFOWFTVE5RWmxsVklpd2ljM1ZpSWpveE1EQXdNU3dpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS5lLXVULU9LbFRGV0ZqOG5ZZkdvR004aHI1QldYM2s3SXJqWnFVN2ZJck9vIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890008),
('6bHCNnt0yPq0CPr5zSGeXO3oj82KS7Lu96mQlm5n', NULL, '108.177.7.87', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkFtTGNmejhURGpYQldqTFZKaEpxcjVJU2dUdDdBb0lYZFNGUWZtYVMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890524),
('75LU1Yvaa8yF6KfGAAJhJk9jrW57vlAm0ytQmYps', NULL, '66.102.8.51', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IklIZzlUdTZYbmlkYWJ1bTR1djVYVzRJajBkU2dQbVR0b2RrNW91bk8iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890888),
('8JVb0RspWPWoAogzS2Vk1nqTKyk1pee0Fucm90Xr', NULL, '66.249.84.115', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Imlod245RktBeFBrZ2ZSNkF3VFl1Sld5WDRranpZZHJjQmE2dVAxUkQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890724),
('A1b9WBhjEH1SpHdJhVh28MwjfnPpyo8bwEFLbYWx', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IklaZE9aWTdvcHBXTGl6cjZTM0MzalNxU2dFN1Z2RHpOSEVQZHY0Q0wiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890043),
('A6LH68XqJQ7u3oJDigsqqVLogd1xAHehe3XNyr8A', NULL, '66.102.8.51', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImNSTklJSXVyY01EQkZ3cHBXeEZQY0JmTVhUNElxeUtsOUw4NXVBeXEiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890739),
('AcDdBU4E7ImzF1LdQZpzaG34YWkuHYlbguGTkN7X', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InhjMmhKVzd6ZlFyTkJsQUZIMXUxbGE4S3ZDRzRUc09WcVRnUWt6d1AiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891254),
('ae7og9TScL6Nmr1Z6X1Urc84xEOB8RMGWHHiexVz', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Im0zYUFUVUpaWDJzSlZubk9jQnRSbllGcGYxcFhsMmZVTUdDOGxFVk4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890351),
('b22tcTp0F1v79uzNoNiyKSzjGZnQS7HsGaMsLIh3', NULL, '66.102.8.49', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkEzUGRpaWZUVGc3aUpwSzEzUFNwU2x2UkhFTlJXc05wa1B5MkNCZXIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890923),
('bayZMQvLSINeTL0lLRtv2dovlNClfJFZZ9lp3VGR', NULL, '66.249.84.119', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkFmM0JWbWplVHNWOTlRYnpaR2NaWFZTUTBaVHV2YlNieHF0SWNjaGQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890809),
('BIb0741rUDD9wSXuytXpZIQ74EgMFSywv6PpIIRT', NULL, '66.102.6.155', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlcyNUQzd0UyajF1UjFuYXdVemgzcmZoUk9FWmFBUFFxWmF4TllpWHIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890835),
('brJhWGm3WwH4X8TNCCWJwhflsKPMJ5QrqgWAQlBd', NULL, '66.102.8.49', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InhHOGJ3cFpTR1YzcnVjN3Z0aTcyc3dQN1JzV3JuVjdJY0tkdDI5b1kiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890952),
('cVVzkrWruP3c5SZmLkV9PIhVg5KzrdBFG67OH2fD', NULL, '66.249.84.119', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkNMUUxRdmhIOFdScHJsR3ZsYjllU0pJWVJkTzhmTzlSdFZRaTVLc3UiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890783),
('CZjDL3oJ48aWP2khYGmp1czegfjxPGAM7lYauIf8', NULL, '66.102.8.53', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Ik1rQkNrMkhXZG1aaU0yQWdyMTYybTlQajlWVzNQbzBqTlVtRkVqVVYiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890732),
('d2zcpqBfhxazUIrIB5BylRmDSFgY9dsuqVCXnWuo', NULL, '66.102.8.51', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImtFS3ZpV0o5Ujl2WnR2SkpRQm5EV2ZuMFRsNjJPUVZqSVRKTXZmd2wiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890802),
('dF8XYl3yw78fheO3NBIbOQ1fRHbgYIDLupuf1nUL', NULL, '66.102.6.156', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlJkSTdHaHk0bWtmZDZiS3B1eEN2YWc1S1RrTTlQNDA3MWVvWHBaazIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890785),
('dlbE0ieNlqpR5EJqhifLZUh5FB4KwmBVHkaGlK41', NULL, '66.102.8.49', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImV0NHk4MUlDUnFQbVExZXUwNlBzSzFHdzVQRWdyZkRYN05PM2h4cnQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639889953),
('DWIJWQboYxyY1dQmy7O2LPfSqmKOhCCoPprAFewX', NULL, '107.181.177.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo3OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Ik9Ha1pQSVN6Y0dmU2Mwbm5xYVVWQUZIaHo5Y3ZDUElUSkhYWUpDNjMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjc1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9kZW1vL3B1YmxpYy9pbnN0YWxsL2Vudmlyb25tZW50L2NsYXNzaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YToxOntpOjA7czo3OiJtZXNzYWdlIjt9czozOiJuZXciO2E6MDp7fX1zOjc6Im1lc3NhZ2UiO3M6NDA6IllvdXIgLmVudiBmaWxlIHNldHRpbmdzIGhhdmUgYmVlbiBzYXZlZC4iO30=', 1639893929),
('e0NcSmojiXhy4lHCS3PbAZdvlOLLzSRwLgRrZ4Es', NULL, '108.177.7.87', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjFqeFBaS3FoSG5rcVJkOGVHQ1pIVFNXNk1PenA0b2h2UXBTVjl4dGQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890565),
('ETZJwtUIE3O8CPXwtd9qEHtBUnNlsCHida28vobf', NULL, '108.177.7.87', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlU2aFdmY2NqZjJFQTlsR0hlRDRRM0EyN1VRSWpLZFA2djZxT1drWEwiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890575),
('f2oxh0jdxNjZLHWbfXiOLEZM6SPxbKBJSMu0O7Q5', NULL, '108.177.7.80', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IktZVWZoMXZaTzFFbm5GWEdIWUZNNURxUVdsQUZZeHJTRWRjS1dIV1IiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890593),
('fHP1oeZ8CVb0xLW7hL4CWOuHXEITJoiwozQGOXcv', NULL, '66.249.84.117', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlZ4eU5tRlpFWFpvampRS1J0WTdOUURlZGJlQ0tJOHk3Q2laa3RFeDEiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890742),
('fmQYpPx0C97TFzZrucLrgrbhEtqFGTlOuUSLVrXB', NULL, '103.142.198.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo3OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Ik4zOUhYSTl2dk1ueGs2Y1l0anhqRk1yRlZFV0FEMHQzNHQ2bkVpT1QiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjU3OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hZG1pbi9hcGlfY3JlZGVudGlhbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1639891984),
('fTpU2eJ61LZeTKqTqWWekJjfwueBMUhSCFQmvBRa', NULL, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlJYUThvTmtTcWtUS3pEZmdwZWNCNEFJWkNSVFBreHRzdVlicFdJanciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639889816),
('GGkvMOLp75Vxf2kny4h75yUDwCbWubBoRFi5amQ2', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Ik1JdldJYVZYRGNjTXNKNlBKQkt4Vko5RnNtT3QxV2lYQlE4cWt3bGgiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ4ODoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3VwZGF0ZXJpZGVybG9jYXRpb24/bGF0aXR1ZGU9MTkuMTQ0MzA3OTQ5MjM3MjMmbG9uZ2l0dWRlPTcyLjgzNzQ3NTI0MDIzMDU2JnBvbHlsaW5lPSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRNemt6TmpVc0ltVjRjQ0k2TVRZME1qUTJOek0yTlN3aWJtSm1Jam94TmpNNU9ETTVNelkxTENKcWRHa2lPaUk1UW0wNVdGYzJTRTlhU1ROUVpsbFZJaXdpYzNWaUlqb3hNREF3TVN3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuZS11VC1PS2xURldGajhuWWZHb0dNOGhyNUJXWDNrN0lyalpxVTdmSXJPbyZ1c2VyX3R5cGU9cmlkZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890008),
('gjMsnAG7t21sDpPbVqIqTovIBu1uKXyVjhcvkteN', NULL, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Inc2Yjc5aHNjN0t1a2JYYWNHQTN5NmVuUFpsWjYyUklyQ2N2Q3pWd00iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639889822),
('GNHkmyazvNwHWHV0rmLgSMNy27jZaI7iLbkeZoSa', NULL, '108.177.7.80', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlEzelFSNFk0Q21tdmV5RXNjVjdyZHVpQnU5Zk0xWTlWcUVpb0JNYjIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890636),
('GPkbaBedogfO0phXfFcialNGrLi3ic0jaYkK6iqU', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImZTVFVzU0t3bVpXTVdmWmxvcTFNM2dPVUtaNEJzTVA0dHd5UjMxT3MiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjYwODoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3VwZGF0ZV9kZXZpY2U/ZGV2aWNlX2lkPWVKcGJmOWRFUnc2THdSdnpCN0pwcHQlM0FBUEE5MWJILWx2MEVyQ1FlbmJ5enprWGkwWGMyR2pBanYtTHFQbFotUGNGUHdmSThHazNBNWdnd2RyWlhaTUVuTERseTdRc05UTFI1emREMUh1NjN4NzV5clZMeU0tRkJaR05JYTk0RDhMazR4QWVHMmdlRFhadWR2aTNLbnRvNlJMWDZsZHpUWVpTVCZkZXZpY2VfdHlwZT0yJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnJnVzZXJfdHlwZT1kcml2ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890030),
('H1ll15pJMuAwIjf2k6iAMB0L6oKL9dtBj1alYUJd', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjBhSWhMeXFvaTdTUE5GSTVYMmU1R3VrR3FPY2pIRUV6WXhpUUNTa3ciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxMjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9wZW5kaW5nX3RyaXBzP3BhZ2U9MSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891252),
('hhIEM8MwoFMg3zTZ7dpgJ5oWKaSJkMFXjD1DXvju', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Iko4SG1iMnBlVkNvM21SOVVZNHNSODViWU9ENmREMGxEWGo5d3RrdEUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890672),
('hKjx2xR2h43MPiWNtrQ6HA5VXtKB4QzW2AEZTXmD', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Im4yMk9DbVRXZVVIRFRrZ1dXZHZhYmxkbDRWcVVmVHlMQUNsSmREQzciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNToiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9yaWRlcl9wcm9maWxlP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE16a3pOalVzSW1WNGNDSTZNVFkwTWpRMk56TTJOU3dpYm1KbUlqb3hOak01T0RNNU16WTFMQ0pxZEdraU9pSTVRbTA1V0ZjMlNFOWFTVE5RWmxsVklpd2ljM1ZpSWpveE1EQXdNU3dpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS5lLXVULU9LbFRGV0ZqOG5ZZkdvR004aHI1QldYM2s3SXJqWnFVN2ZJck9vIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890003),
('hzMG8j6eL7psJtREXEFy33TBKPo46KkiFOcERC0v', NULL, '66.249.84.117', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InFRMWFFREdaTFd4b3hQV1NzaGYyVW1aeHVpdGpTZWNHd285WmxjSksiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890764),
('IMqknh0u630MdUsqLto8muV0pUbIbQ5jaVQotKLK', NULL, '66.102.8.49', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjhOR3FoVFFUTTlsaUFGaERjZmdTTlRBVjlxV3ZWVWtwSDlJNWhzaVUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890695),
('jBAOjuy6LFbyE8qxMvPJxqzQhyqz4M7kYoVPSBvJ', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkJiOTdHb2YxaTZ6WjdlQkZQUWFsTXYweGw4TEpqZHBGb3F4N1dFaUoiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ4OToiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3VwZGF0ZXJpZGVybG9jYXRpb24/bGF0aXR1ZGU9MTkuMTQ0Mjc2Mjc1ODQ2NDk3JmxvbmdpdHVkZT03Mi44Mzc0NTg0NzY0MjQyMiZwb2x5bGluZT0mdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnBjM01pT2lKb2RIUndjem92TDJOaFltMWxMbU5zYjI1bFlYQndjMjlzZFhScGIyNXpMbU52YlM5aGNHa3ZjbVZuYVhOMFpYSWlMQ0pwWVhRaU9qRTJNems0TXprek5qVXNJbVY0Y0NJNk1UWTBNalEyTnpNMk5Td2libUptSWpveE5qTTVPRE01TXpZMUxDSnFkR2tpT2lJNVFtMDVXRmMyU0U5YVNUTlFabGxWSWl3aWMzVmlJam94TURBd01Td2ljSEoySWpvaU1qTmlaRFZqT0RrME9XWTJNREJoWkdJek9XVTNNREZqTkRBd09EY3laR0kzWVRVNU56Wm1OeUo5LmUtdVQtT0tsVEZXRmo4bllmR29HTThocjVCV1gzazdJcmpacVU3ZklyT28mdXNlcl90eXBlPXJpZGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639889818),
('JBAu2I2GGOD7ZktwFuHOFOm83h76jQqcA5ZfySMO', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImxrTVFiS3ZaQ01OcEVQd3phWkJMVVJiSlRXYVoyemtaMnhXeUZjQ0oiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9kcml2ZXJfcHJvZmlsZT90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890031),
('jh60usUplQ3ueRq79xb54GeePZg4ppMTcE1b9mes', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImZheU43THA3b0dUcDRaeEJVMVZZRzBRcUllWXhzRmVaT3loWWVEY0giO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639891865),
('JnWFwSxOJhcZCsSBCrqLSwpGUtZEAlJABsm9JO0Y', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IllSU1ZmRGl3UVprMHBwQ28xRkRCV1RZcm9VRzNvbndFS3hPVWxUTmMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890939),
('jNzG9Dt0g8LluFZfU69okOXM6J1V5jUvZOndXn4i', NULL, '66.102.6.157', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjFsN3NxNGpxdWFyblZzVllySWNUcVo0Y253NWpreW1tQjdpSHNMUlIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890793),
('K6fDG0M4x5Ki6Kf0odQDMNp6GSJYbF1QBkzLfBO4', NULL, '108.177.7.80', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjJmTHh4Tnlsd0xzT2JhTmNzcWNqSmU5ZGpra0NxbmRHNlFYcUpwVnoiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890615),
('kOn5CGXyi4C3TjqNtTHGo0deFoZQQty7DmTIJwyg', NULL, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjFpRWlzUHpaUEc0ZjNUZWlIOWs5NzI4V2pNN2V2UG54WlZnbVdOM0wiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890029),
('l3Ue2DgApjWu5FjJ5kro8ynjWuHCSjJOkTjbmrzq', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImtlODdQMGFnNTlKRnJtVXR2OVR6Q2Y3ajV2eTl5Yk1qbEVybks2RmgiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwODoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3ZlaGljbGVfZGVzY3JpcHRpb25zP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890056),
('laHqMBbrGZqXW8maVThW3fDCs9QEnotT6zl230An', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkhPMVFFM3Vha1FiaVZQWlllNEVOczQyVVRLTXhDaFE4bkZscm5NQjciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9kcml2ZXJfcHJvZmlsZT90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890052),
('lEop3CfgAU8fPnokuDyCj0KKeYpjp30nvgVqDIUM', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImFiN2pVcVJYdmROeWpNQkpGRDdraE43YUc0NTV5bWZ6OVJYcnpmZlMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9kcml2ZXJfcHJvZmlsZT90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891190),
('lhFVii1tqepJvQo7yvJ77Urmxu8c0K0OdGwr863e', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjN5MXJNSFhDa0hEd2V0R2lZWWd5dDI0OUVzZ2RpMkVnQVRyakphSlIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639892806),
('lj1i1slz1dbUI25eKyxYNqn1r47DbmmQoJQ3TM8Q', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlV5aUFKTzZhT3pCbTlzenE4ZFowYlowMVJUa1JHOVMyTGNXejRreWMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxMjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9wZW5kaW5nX3RyaXBzP3BhZ2U9MSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891195),
('LNaX4CBAajnAIsH9YE8NGjumZR3yDNJEpKhT7aiZ', NULL, '66.102.8.51', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkRYdUlrenBmRGRYWlZHcElCZFZTRjNxR0U0MXlVSUdrbm8yU080UHoiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639889818),
('LpJ1RRm4mb47QIUkUZyv6qwfiaZd6sFhQkRhTorI', NULL, '66.102.8.51', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjJFYVR6R0M2eXhXUk14SGptYk1VY0ZQMkl3dWxGQ3VzZmJrYk1pd2MiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890868),
('LQmJ1T4vhLaxHZ4fHtwNGqORPrssnhIFeNenVOXm', NULL, '66.102.6.157', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Ilp5M3VCUzlPYUhCbWM4eTlyOVR1WEJUZVQxamRCTDVpWFhvVFhDdFUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890842),
('lz5i2HKx2knad9u9H6tQi15YWiIXagmhQRiu9uCd', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlpmYzlEYUNMcks3Nk9WMEJhUnFvRXZ3alhiSDlVWU9kRjhsTDVrN3ciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9kcml2ZXJfcHJvZmlsZT90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891204),
('mFF4JJdIBmA04S58rIT3MqF9dKXhSIcvVrKvBKUT', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjE2ek9OYWZ1a1ZKQmEwRUdzdE9nc3NSeEZPQjZLVFo2OEU0U2tiUDIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxMzoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF90cmlwX2RldGFpbHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnBjM01pT2lKb2RIUndjem92TDJOaFltMWxMbU5zYjI1bFlYQndjMjlzZFhScGIyNXpMbU52YlM5aGNHa3ZjbVZuYVhOMFpYSWlMQ0pwWVhRaU9qRTJNems0TXprek5qVXNJbVY0Y0NJNk1UWTBNalEyTnpNMk5Td2libUptSWpveE5qTTVPRE01TXpZMUxDSnFkR2tpT2lJNVFtMDVXRmMyU0U5YVNUTlFabGxWSWl3aWMzVmlJam94TURBd01Td2ljSEoySWpvaU1qTmlaRFZqT0RrME9XWTJNREJoWkdJek9XVTNNREZqTkRBd09EY3laR0kzWVRVNU56Wm1OeUo5LmUtdVQtT0tsVEZXRmo4bllmR29HTThocjVCV1gzazdJcmpacVU3ZklyT28mdHJpcF9pZD0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890008),
('N3a1PT39hNrql83exTvobgPuw3I3A96AwlG7aBjV', NULL, '108.177.7.87', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InFoaFN6VDVMOUppNjFXcnQydHhXandjTTRxNDFhWUpiRVd6RjBQVzkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890585),
('n6vslKAHTjFz7E8mu1Db4TD8ZibdNMLhoWKaNzSj', NULL, '66.102.6.157', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InRDYnlmQ0VHeFNhdXE3dlo4RlZVbWdPVklCQW9uTEJ1QjAxVDFlZlMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890859),
('NdzYJPxpKmoEM2Ga112eAGFp3bxe0HfYAsosIek9', NULL, '66.102.8.49', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjlNQkhMNXByOGxxUzNhdVFSZEU2V2E5UUx4djNETkpzcHFqNW40MkEiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890776),
('NerBKj1sq2cuokqbjcCDCFg2yX2BAqeHPQjlHnxv', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InlneEgzVlNrTXZRY3VzWVpKekNzUWVBeU53TEtrUlU4VG5NMGhYeHYiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9kcml2ZXJfcHJvZmlsZT90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891212),
('NKfyqXomud9m2yeB5bwSrgBM1UcDvmwZyB9eaYAL', NULL, '66.249.84.117', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlBsa1haSU94MVBvTXYzYWIxWmdKbW9pVmxwVjZrejdxcnRyb2hKY1oiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890768),
('NNQEWSTughilAE5m52obgt47npgjoiPZ6PtMT7Oa', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Im9oMm9wNjl0Y1cwNjdDY3pRbzVGUkRIdXUxVW0ySllrTktkcFQyTkoiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ4MzoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3VwZGF0ZWxvY2F0aW9uP2Nhcl9pZD0mbGF0aXR1ZGU9MTkuMTQ0Mjk1NSZsb25naXR1ZGU9NzIuODM3NDY0NSZzdGF0dXM9T2ZmbGluZSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyZ1c2VyX3R5cGU9ZHJpdmVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890030),
('nPnbGSNxXcKGOD4zOc4s6HTVbs9Ur8RraSvKC1ct', NULL, '108.177.7.87', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkI4ODhBWHZpZ1U3VHpyOE1UOG82UHpwTFpSTjc0b1dzNDZBcjVwMHkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890557),
('ogikkBxoraVdI8JrbYCMFDsr4HkmfZxZo7z7Zvq2', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjlzQkxXNGVIY2w4d0VaaWZtSkh3aGJFRE1wdnlVdzc5MU5PYzdjNHkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3dlZWtseV90cmlwP3BhZ2U9MSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891201),
('OJn1rRZsWT9D4RAW2WBWBKLOC1OPvMDUWSIYM5sU', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjBteTZiUGhMSDg1RGdqdFpLanVWb1JwVmQ3bWR1b1BEejFuUDZhd08iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639893638),
('ooqDv2VsIOAiYY47VXYP6sE4EUqlSKSGRWQxGpC4', NULL, '66.102.6.155', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Im81MG1Tc2xxNlZkU3d0R0xCMU5vVXlZWUpHOTNXVHRuTmVLYWE2Zk4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890956),
('oQvbIOPfjvIwnDHNWaWyM0l5MyVKqTvJti0HMOEy', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlJWc2l3bG45a2Z6aDZHS3NmME5ESm0zSVBDemUwZmp1M3hHU3k3RXQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ2MDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2Vhcm5pbmdfY2hhcnQ/ZW5kX2RhdGU9MjAyMS0xMi0xOSZzdGFydF9kYXRlPTIwMjEtMTItMTMmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnBjM01pT2lKb2RIUndjem92TDJOaFltMWxMbU5zYjI1bFlYQndjMjlzZFhScGIyNXpMbU52YlM5aGNHa3ZjbVZuYVhOMFpYSWlMQ0pwWVhRaU9qRTJNems0TkRNd056Y3NJbVY0Y0NJNk1UWTBNalEzTVRBM055d2libUptSWpveE5qTTVPRFF6TURjM0xDSnFkR2tpT2lKRmEzZGpOMGxEYUdaS1RVMVJWVEJCSWl3aWMzVmlJam94TURBd01pd2ljSEoySWpvaU1qTmlaRFZqT0RrME9XWTJNREJoWkdJek9XVTNNREZqTkRBd09EY3laR0kzWVRVNU56Wm1OeUo5LjFiY2tST1dDMDc3bDJRcHJYSlNvNm10cjlKUDlFa3FwYk5lem5CYmFsR2cmdXNlcl90eXBlPWRyaXZlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891249),
('PAIaCN9aJHakcCmpWKsMEmyQzbyXks54hfLCQ2l5', NULL, '66.249.84.117', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjBPbG85anJtVm1NNzNMZ1lHTzlIYUFLT0gzblZrbzRVT2h4OTB5YUkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890833),
('pE3ALrD9rGIHSEqb3fmoezfraeCNgix4vOQeq9Zu', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkJqV1h3WTBiZERHT0FSUjRGeWk5Vk9YTERvcDRDRkJUa3VjS3EzVjciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639891232),
('PFGlL9iq78zuOqYozpnWmeq12Ed74WZDHAWo82G5', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InFuUDJ6Nms2ZlNqa2VuZmJzVVM1UWVrNWhUdmROZERQcFI3NGpueU0iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNToiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9yaWRlcl9wcm9maWxlP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE16a3pOalVzSW1WNGNDSTZNVFkwTWpRMk56TTJOU3dpYm1KbUlqb3hOak01T0RNNU16WTFMQ0pxZEdraU9pSTVRbTA1V0ZjMlNFOWFTVE5RWmxsVklpd2ljM1ZpSWpveE1EQXdNU3dpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS5lLXVULU9LbFRGV0ZqOG5ZZkdvR004aHI1QldYM2s3SXJqWnFVN2ZJck9vIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890020);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('PtD5qyCDMzIQoXBvT6eicIhRJ1tyb5NdnI8oud1a', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjdFT09OYzFLVkVoNjRWbWY3a2NaZEJWVDd4ZEFGWXBWYVBrRWdDU3oiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ2MDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2Vhcm5pbmdfY2hhcnQ/ZW5kX2RhdGU9MjAyMS0xMi0xOSZzdGFydF9kYXRlPTIwMjEtMTItMTMmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnBjM01pT2lKb2RIUndjem92TDJOaFltMWxMbU5zYjI1bFlYQndjMjlzZFhScGIyNXpMbU52YlM5aGNHa3ZjbVZuYVhOMFpYSWlMQ0pwWVhRaU9qRTJNems0TkRNd056Y3NJbVY0Y0NJNk1UWTBNalEzTVRBM055d2libUptSWpveE5qTTVPRFF6TURjM0xDSnFkR2tpT2lKRmEzZGpOMGxEYUdaS1RVMVJWVEJCSWl3aWMzVmlJam94TURBd01pd2ljSEoySWpvaU1qTmlaRFZqT0RrME9XWTJNREJoWkdJek9XVTNNREZqTkRBd09EY3laR0kzWVRVNU56Wm1OeUo5LjFiY2tST1dDMDc3bDJRcHJYSlNvNm10cjlKUDlFa3FwYk5lem5CYmFsR2cmdXNlcl90eXBlPWRyaXZlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891193),
('Q6wkGNIxFFWX4DS1oZtzhPFC4J5RmrcsmHctJ4pr', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IncxaGxOR0xsSUJqZEJjMEVNYmYyRUYySFdCR25XMmI2Y0pta3g3ckMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639893047),
('qeufLl23FLiTNc3cuddFepfqv1vZSW1ZwdpaEgK7', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImJyeTF0RnA5dzVoRTRGUW91QjFIT0NOZjZDVjBnQ0ZoWEZDcUZPRHIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639891626),
('QEUZW3IiC0xV18C09PFd9xSP1EBturc3VjXCzTAZ', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkpwYWRiWjNZbEZvSkhaOUVNVnNsWXBOMWRncU9lN2Q2UjFkdmxoMnIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9kcml2ZXJfcHJvZmlsZT90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890043),
('qFYNkDFeiN86xzYxEY4gUYSt1yJx5BgpsBLFFArh', NULL, '108.177.7.87', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InBlQVpaNGNQWThqWk92VUhHcDh5RXA2eHJFTHZKdE5iQWVqVDVQa1IiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890718),
('QKJgPUag2OBhTs19nYt9rVzYS6ZjsoghHg3bGxCf', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImEwTXc0YkEybG9RaXpJZjl5NTZtcWgySHZ0NmdOR2liR3pUR3JoMTMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890030),
('qUCQAr4332eOsYHrHZtGNX79RHFtY2tDIj0TRIj6', NULL, '66.102.8.53', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkhUbThIaHhoUHllWU1QU0xkcGdmYTB6bmxkemltUXhvS3FpWGRUV0YiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890948),
('r52okcioggmIL1M7kmNXO76ORrnzp1UdnAzq81Qx', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Ik5LZHJockV5M1hYcEZuempOTTNNSGVtNjZIeEJWQUdhdng1Y042SEgiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639894241),
('RraLblQWhryirzJhzYoGlmoTCnsxooZaDV26MxLZ', NULL, '108.177.7.80', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImFyUGEzaEdnTkxhMklXekgzOFFjZ1RLUDA0TmdNZzhtbHFuUjF5enciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890634),
('Rv3jasP24SRmXUanlsIzEYqDRydESuxqIPOE8F06', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImNSR1NobVJHMkRjWGpUZ3J0d003d0pSZTh3NHhSc0FXNlYwMWY3dmwiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639889823),
('rVZs50InGAvwmY34MgRU9rDW8WA9tKz5sfhDYtEF', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlhhSUl2a1BTcGg2OFpjd1RXMHlGYkxPckdpMGtKNm0yQ0xGZzVsOVMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639893346),
('rwA8KjGYeQUkMSvbqddWlwOQVmUaFMQR4RqMZtwg', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlBvbWJ1aTh6WTR1V0pETEhKcmNiUlk2R1c4NGRlc2o4WUZzVWIyQU4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjYxNToiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3VwZGF0ZV9yaWRlcl9wcm9maWxlP2NvdW50cnlfY29kZT1JTiZlbWFpbF9pZD1jbG9uZWFwcHNvbHV0aW9ucyU0MGdtYWlsLmNvbSZmaXJzdF9uYW1lPUNsb25lJTIwQXBwJTIwU29sdXRpb25zJmxhc3RfbmFtZT1Vc2VyJm1vYmlsZV9udW1iZXI9ODQxOTkwNjA4NyZwcm9maWxlX2ltYWdlPWh0dHBzJTNBJTJGJTJGY2FibWUuY2xvbmVhcHBzb2x1dGlvbnMuY29tJTJGaW1hZ2VzJTJGdXNlci5qcGVnJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE16a3pOalVzSW1WNGNDSTZNVFkwTWpRMk56TTJOU3dpYm1KbUlqb3hOak01T0RNNU16WTFMQ0pxZEdraU9pSTVRbTA1V0ZjMlNFOWFTVE5RWmxsVklpd2ljM1ZpSWpveE1EQXdNU3dpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS5lLXVULU9LbFRGV0ZqOG5ZZkdvR004aHI1QldYM2s3SXJqWnFVN2ZJck9vIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890001),
('rYpCNU1MDTAq458oL08f2kgjL5AURKrZ8NDOzOcU', NULL, '108.177.7.87', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImxPTWFYbHlsNHNhVURsZGtCZ2FzYlF6NXF1QlRIZHhGYkdVRmpkdkoiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890601),
('S6oCiW9lXkkPpkiOuck1PCHfbuAFDc9YXXGTf3nG', NULL, '66.102.8.53', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkhWNkdpVFJvemdnM21lcjgyWEM2VWQ2SmpHdWdGb3F6M0p5RGJaNUUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890756),
('SAwlRm1XWS9OREAyyoK1pKL5E3GCrlscKUbdluZD', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Im1nc2FCNkxoTlRtcDBYV0hDTjdUUUk4elI3UmU0WXlVM1RrNXJ3bk8iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxNDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9jb21wbGV0ZWRfdHJpcHM/cGFnZT0xJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639891252),
('sMGefJPGXTXmH8e7Y7YkBaptb3pVd2SdYP5Biyfv', NULL, '66.249.84.117', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlhwR0pPbU5TSW95Q2lCUFl3UUtRZENYak96TTEwbFZ5bGR2SnpiYWkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890825),
('SscnQYFaE4bbtxhF7fNdQUITsA2TXNdIRJ4XGQgh', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Ilo2elo5eXhLZ0VzNnNrY3Z2ZklRczM1WmJkRU1JMjdZSzI1akV6NmkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxMzoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF90cmlwX2RldGFpbHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnBjM01pT2lKb2RIUndjem92TDJOaFltMWxMbU5zYjI1bFlYQndjMjlzZFhScGIyNXpMbU52YlM5aGNHa3ZjbVZuYVhOMFpYSWlMQ0pwWVhRaU9qRTJNems0TXprek5qVXNJbVY0Y0NJNk1UWTBNalEyTnpNMk5Td2libUptSWpveE5qTTVPRE01TXpZMUxDSnFkR2tpT2lJNVFtMDVXRmMyU0U5YVNUTlFabGxWSWl3aWMzVmlJam94TURBd01Td2ljSEoySWpvaU1qTmlaRFZqT0RrME9XWTJNREJoWkdJek9XVTNNREZqTkRBd09EY3laR0kzWVRVNU56Wm1OeUo5LmUtdVQtT0tsVEZXRmo4bllmR29HTThocjVCV1gzazdJcmpacVU3ZklyT28mdHJpcF9pZD0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639889817),
('ssSK7ftni13um4y7loUkfFzcvQcnt1ZsmRgXgQi6', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImUwdWQ2MzBpdTZEY3BGUDZ2ZHhORHJZOFp4MndOcGoxN00wdUEwQXQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639892134),
('t0s57lAJpADisrMPEzYJhApnJC24BlKflwN83ZoT', NULL, '66.102.6.156', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkhoZEhnYzdzQnpjRjNJY2FUb3VrblBZWlJhZEYzT3pIdXNITUFRTzYiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890907),
('T2CaLe0GftieTEmXqQAr4mXwJhopxClyrIqjAaIY', NULL, '66.102.8.51', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IndPTE5XbzJaRGNkQ3kzQWtXOVdDbEVBeDNadHlVUDM5bjJ5RzRoZmciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890843),
('TEEP9DEiNQc2ncgc7z1Vf55Yfa0XRaeil6GhX5DY', NULL, '66.102.6.156', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InFRZDNCUDZyR3F6a1RqdHIyb3VMOHJDeWVpUExIMXdUc3dWbmFucU8iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890808),
('TkXe0ZW1L4PzdDAlC34aj6zd1y5yuSzEUK4Pwajz', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkdMWWppdkRlWFlCMWRRbDl0T3R0dVR2UmE3d2I3TXNnQXR2WjFKdGYiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890008),
('tU5BWNCLQdaHbBw3J3e8zJmI9tnIptCdmNAAoHe1', NULL, '66.102.8.49', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjZ1RGNNN3JVMU9hV0o1UnBGT2R4UGpUaEduRlBGRFkzd2RGN0RQdlAiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890783),
('Tw7Svr84nR7e35XHYZpSr3Eys1Um2mehQYooCDpF', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjE5T093VzdZZml2S2c4WGVtMkRnalBkYmRDRTRWSEdhbGdVek1qM3QiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyMDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2hlYXRfbWFwP3RpbWV6b25lPUFzaWElMkZLb2xrYXRhJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639893939),
('UDFG2Fn84GRMYUixPuF9cQfCnKxb7qRycK6RdsiS', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Ijc2eUVXaVNRaXo3amNkZ0Nidjc2dG0wNjU5UThDMFhQZ1FzaDAxY24iO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639889817),
('ueGPVby5brDpQIFV6XiaKtxSYt1yapHAtZkTc80S', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InA2SzVXRWpUZjRYdDZKQ0VvVEczS3NjTGJMa2I5bzFyalg1cm4yNDAiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjYxNToiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3VwZGF0ZV9yaWRlcl9wcm9maWxlP2NvdW50cnlfY29kZT1JTiZlbWFpbF9pZD1jbG9uZWFwcHNvbHV0aW9ucyU0MGdtYWlsLmNvbSZmaXJzdF9uYW1lPUNsb25lJTIwQXBwJTIwU29sdXRpb25zJmxhc3RfbmFtZT1Vc2VyJm1vYmlsZV9udW1iZXI9ODQxOTkwNjA4NyZwcm9maWxlX2ltYWdlPWh0dHBzJTNBJTJGJTJGY2FibWUuY2xvbmVhcHBzb2x1dGlvbnMuY29tJTJGaW1hZ2VzJTJGdXNlci5qcGVnJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE16a3pOalVzSW1WNGNDSTZNVFkwTWpRMk56TTJOU3dpYm1KbUlqb3hOak01T0RNNU16WTFMQ0pxZEdraU9pSTVRbTA1V0ZjMlNFOWFTVE5RWmxsVklpd2ljM1ZpSWpveE1EQXdNU3dpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS5lLXVULU9LbFRGV0ZqOG5ZZkdvR004aHI1QldYM2s3SXJqWnFVN2ZJck9vIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890018),
('UpFSc82qqO7H4foPOT5wpJut6V31Di1uy9A8LbFP', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImVpOHd3dVdzMENmUjJlY2lwbDhmVWtIbmVPa0JDMEtYYWw5WDY0TWYiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNToiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9yaWRlcl9wcm9maWxlP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE16a3pOalVzSW1WNGNDSTZNVFkwTWpRMk56TTJOU3dpYm1KbUlqb3hOak01T0RNNU16WTFMQ0pxZEdraU9pSTVRbTA1V0ZjMlNFOWFTVE5RWmxsVklpd2ljM1ZpSWpveE1EQXdNU3dpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS5lLXVULU9LbFRGV0ZqOG5ZZkdvR004aHI1QldYM2s3SXJqWnFVN2ZJck9vIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639889823),
('VCyoYsWzgz2IAHOjNrdAwF6Z2mZQHmIJAGe0t1RM', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IllFMFdoU3FUbkNvcUdTTUVNRXB3dE54amRSYk5LR093aEtZYjZGWEYiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891189),
('vICnuAPMiTYGQ9stw4K0UKXstW7xL17GwxZRes5L', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InVXSmhuejN0VHlSRVdQU0NTd0pwdGpDTUQ0RWxnTWtXT1ZhOFp6TEkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNjoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9kcml2ZXJfcHJvZmlsZT90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMk5oWW0xbExtTnNiMjVsWVhCd2MyOXNkWFJwYjI1ekxtTnZiUzloY0drdmNtVm5hWE4wWlhJaUxDSnBZWFFpT2pFMk16azRORE13Tnpjc0ltVjRjQ0k2TVRZME1qUTNNVEEzTnl3aWJtSm1Jam94TmpNNU9EUXpNRGMzTENKcWRHa2lPaUpGYTNkak4wbERhR1pLVFUxUlZUQkJJaXdpYzNWaUlqb3hNREF3TWl3aWNISjJJam9pTWpOaVpEVmpPRGswT1dZMk1EQmhaR0l6T1dVM01ERmpOREF3T0RjeVpHSTNZVFU1TnpabU55SjkuMWJja1JPV0MwNzdsMlFwclhKU282bXRyOUpQOUVrcXBiTmV6bkJiYWxHZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891254),
('VMsqKHumGd6XnMSmojgniCvnLZn4N9az56dFTRQP', NULL, '66.102.8.51', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImIyRnFXZG5ZVDBhMWQ2cWh2bTlvS2JVcG9KbnhTTGZSQkxIUnJKREUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890912),
('vpn8M7Cw8Mj5Ai5ZJxWWJqbQZ9kzZhoNXxQ3S0na', NULL, '66.102.7.87', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Ik52WjZCTTZwQXBZRGpGZUVnVFUzSHJyVjBtVG5tb3Q2YzBYMGFFRVEiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890130),
('vZ3a7HdiIiLfJBBtbylRwC6mNnyuANuNIJv9plfX', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlpjRWIxaE52WmZ4ZGwwS2h4SFlsT1dHcTlEdXlDdTY1WGVVUXhQWUgiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxNDoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9jb21wbGV0ZWRfdHJpcHM/cGFnZT0xJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639891196),
('WbMnumkw6RL2ltXMuEEyClpWnKOje9Oe5rkYCKgX', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkNGZFZzUDdZMVgyZjM2anhoT2JoNTVweE40ZzRyOXBpbmdXc1Vya0UiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891212),
('wJ2gO6Jlf9FzO13MFMchXxzT4gc0G1Wo9Dy7t6TO', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkNyS25xdEROMkN5WGxreTVPZkxkU2w0M2lPUDlEeEo2TmFYMTFzdXgiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890031),
('WMqFoBK5MVPw9rxcw1qqpbXEixs1fSZaphUHYUq5', NULL, '108.177.7.87', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IktsVlE4QVlFTVBoSnVqSmptaGRIbTdwRGxKZnJ3SGpLNVMySWNRVnUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk1OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1yaWRlciZ2ZXJzaW9uPTEuMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890609),
('WRm5zoUzS0XShS3SsI3NY8TRuLdNE2NwYlXUF1Xj', NULL, '108.177.7.80', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkpTQlRIdGtEVFg4WHlsWVRoc05pOFJ5WTZqenZBWlZzTVlPTUZWYkQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890749),
('Xk5arC5s7iLWUhf0iDfMBNmSkyG6Qa2W8jduwbRl', NULL, '66.102.6.157', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Iko4am5tWXE5V3dtSTcwd0FVTXRZcElUOGNTMGdmRVQ3aE5SekhGcW0iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890815),
('XkAc8pNUJihks14ZyY4QhFuMB37jgyR6SqTXjC84', NULL, '108.177.7.80', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Im5iU1FqZ2liRzhGZER5SW1NWEZQclp6WnhXV3FKNnJ1Uk1YMnFSeGEiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890752),
('XUZ1SQIJ8VMd2TWH3nQMSzDy6cNQzp37qQNhrA12', NULL, '66.249.84.119', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlQ0bk5jbFFPNHVOTmhMeEhNN3ZWbXZlYnJtVVd2RDFpUnB2VnZBQk0iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890690),
('xVHGZZqy0KG6IeSfwNLS4CZTtiRf7U0JDqIBvyGL', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImhLanBaWko2TEZLMTBkdnhkUHN6OTRCOHlCSzFkc25wenNjQjRXcTciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxMzoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF90cmlwX2RldGFpbHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnBjM01pT2lKb2RIUndjem92TDJOaFltMWxMbU5zYjI1bFlYQndjMjlzZFhScGIyNXpMbU52YlM5aGNHa3ZjbVZuYVhOMFpYSWlMQ0pwWVhRaU9qRTJNems0TkRNd056Y3NJbVY0Y0NJNk1UWTBNalEzTVRBM055d2libUptSWpveE5qTTVPRFF6TURjM0xDSnFkR2tpT2lKRmEzZGpOMGxEYUdaS1RVMVJWVEJCSWl3aWMzVmlJam94TURBd01pd2ljSEoySWpvaU1qTmlaRFZqT0RrME9XWTJNREJoWkdJek9XVTNNREZqTkRBd09EY3laR0kzWVRVNU56Wm1OeUo5LjFiY2tST1dDMDc3bDJRcHJYSlNvNm10cjlKUDlFa3FwYk5lem5CYmFsR2cmdHJpcF9pZD0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890030),
('XZBw00hJ9Tm773wNaoJyKbSGeGlm9PnRxtrdjULM', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IlFqMVpSek53TWpGNXNSaDNHQ1NRMHg2T3hTVmI3OEw1UDhlbU9SdkQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwODoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3ZlaGljbGVfZGVzY3JpcHRpb25zP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE5ETXdOemNzSW1WNGNDSTZNVFkwTWpRM01UQTNOeXdpYm1KbUlqb3hOak01T0RRek1EYzNMQ0pxZEdraU9pSkZhM2RqTjBsRGFHWktUVTFSVlRCQklpd2ljM1ZpSWpveE1EQXdNaXdpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS4xYmNrUk9XQzA3N2wyUXByWEpTbzZtdHI5SlA5RWtxcGJOZXpuQmJhbEdnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639890036),
('y3LPFzX07XE0CFiPo4bwA8CgBuD567ZLFVjDkhUh', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Im9YSFZRSVBUbHFscG40Mld6dWJVV2pBYVJsM0dpQlh6Ym5GTEx5RkMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwNToiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF9yaWRlcl9wcm9maWxlP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyTmhZbTFsTG1Oc2IyNWxZWEJ3YzI5c2RYUnBiMjV6TG1OdmJTOWhjR2t2Y21WbmFYTjBaWElpTENKcFlYUWlPakUyTXprNE16a3pOalVzSW1WNGNDSTZNVFkwTWpRMk56TTJOU3dpYm1KbUlqb3hOak01T0RNNU16WTFMQ0pxZEdraU9pSTVRbTA1V0ZjMlNFOWFTVE5RWmxsVklpd2ljM1ZpSWpveE1EQXdNU3dpY0hKMklqb2lNak5pWkRWak9EazBPV1kyTURCaFpHSXpPV1UzTURGak5EQXdPRGN5WkdJM1lUVTVOelptTnlKOS5lLXVULU9LbFRGV0ZqOG5ZZkdvR004aHI1QldYM2s3SXJqWnFVN2ZJck9vIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639889817),
('yk9Dg1QZJdnDDMzltAJxB9xokgzsY5ZfelL3iz5U', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6Inh6b01RRlVBSllldmJkWGRsdGJQaVJjTzRmNVVUbzdKd3FQaHJteDUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ4OToiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL3VwZGF0ZXJpZGVybG9jYXRpb24/bGF0aXR1ZGU9MTkuMTQ0MzAwOTgxMDkxNzk2JmxvbmdpdHVkZT03Mi44Mzc0NjE0OTM5MDkzNyZwb2x5bGluZT0mdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnBjM01pT2lKb2RIUndjem92TDJOaFltMWxMbU5zYjI1bFlYQndjMjlzZFhScGIyNXpMbU52YlM5aGNHa3ZjbVZuYVhOMFpYSWlMQ0pwWVhRaU9qRTJNems0TXprek5qVXNJbVY0Y0NJNk1UWTBNalEyTnpNMk5Td2libUptSWpveE5qTTVPRE01TXpZMUxDSnFkR2tpT2lJNVFtMDVXRmMyU0U5YVNUTlFabGxWSWl3aWMzVmlJam94TURBd01Td2ljSEoySWpvaU1qTmlaRFZqT0RrME9XWTJNREJoWkdJek9XVTNNREZqTkRBd09EY3laR0kzWVRVNU56Wm1OeUo5LmUtdVQtT0tsVEZXRmo4bllmR29HTThocjVCV1gzazdJcmpacVU3ZklyT28mdXNlcl90eXBlPXJpZGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639889823),
('YonZGpwDwq03ZmLuwKk11w77WtohKqOvhUceG9K1', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6InJiR0xhN1ZiM2dGREV5RnNiV0FnMG1wUVBNYktXS3V0VWI2RmI1ZDkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxMzoiaHR0cHM6Ly9jYWJtZS5jbG9uZWFwcHNvbHV0aW9ucy5jb20vYXBpL2dldF90cmlwX2RldGFpbHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnBjM01pT2lKb2RIUndjem92TDJOaFltMWxMbU5zYjI1bFlYQndjMjlzZFhScGIyNXpMbU52YlM5aGNHa3ZjbVZuYVhOMFpYSWlMQ0pwWVhRaU9qRTJNems0TXprek5qVXNJbVY0Y0NJNk1UWTBNalEyTnpNMk5Td2libUptSWpveE5qTTVPRE01TXpZMUxDSnFkR2tpT2lJNVFtMDVXRmMyU0U5YVNUTlFabGxWSWl3aWMzVmlJam94TURBd01Td2ljSEoySWpvaU1qTmlaRFZqT0RrME9XWTJNREJoWkdJek9XVTNNREZqTkRBd09EY3laR0kzWVRVNU56Wm1OeUo5LmUtdVQtT0tsVEZXRmo4bllmR29HTThocjVCV1gzazdJcmpacVU3ZklyT28mdHJpcF9pZD0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639889823),
('YTPLFLnlqnDW1xSrUAuD17fOHI7ljRvUfzi53dc4', 10001, '103.142.198.16', 'okhttp/3.14.9', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IjJWamhqc2RYRXhpdjFEQzN4OWxxTW5wUGxPUUJGRnNDV3dsVVVzRGUiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639890015),
('Ze0WwHJbELAx7RrYoIX42wGwWneW4uT6ASvAyizj', NULL, '66.102.6.157', 'okhttp/4.9.0', 'YTo2OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6ImxYU0JHMzlja1BsdVpBb1JtZG5UYnBOZk1CYVpJUEJ4MzM5Mkc0ZUMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwczovL2NhYm1lLmNsb25lYXBwc29sdXRpb25zLmNvbS9hcGkvY2hlY2tfdmVyc2lvbj9kZXZpY2VfdHlwZT0yJnVzZXJfdHlwZT1kcml2ZXImdmVyc2lvbj0xLjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1639890746),
('zXKoo1rSsEyVx49BY2C92lOcKrEB9JSO8ERKXKJF', 10002, '103.142.198.16', 'okhttp/4.9.0', 'YTo1OntzOjg6ImN1cnJlbmN5IjtzOjM6IlVTRCI7czo2OiJzeW1ib2wiO3M6MToiJCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo2OiJfdG9rZW4iO3M6NDA6IkpYSzFoY1ZhQ2xwQVppM3NwMzN5ZG5IaDE3Y0RMdWdGbVdMYWdERWsiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639891204);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `name`, `value`) VALUES
(1, 'site_name', 'Marina'),
(2, 'payment_currency', 'INR'),
(3, 'version', '1.0'),
(4, 'logo', 'logo.png'),
(5, 'page_logo', 'page_logo.png'),
(6, 'favicon', 'favicon.png'),
(7, 'driver_km', '10'),
(8, 'head_code', ''),
(9, 'admin_contact', '8607248802'),
(10, 'admin_country_code', '99'),
(11, 'site_url', 'https://sourcemonster.in/'),
(12, 'heat_map', 'On'),
(13, 'heat_map_hours', '1'),
(14, 'update_loc_interval', '10'),
(15, 'offline_hours', '1'),
(16, 'pickup_km', '10'),
(17, 'drop_km', '1'),
(18, 'max_waiting_time', '2'),
(19, 'social_logins', ''),
(20, 'otp_verification', '1'),
(21, 'covid_enable', '1'),
(22, 'driver_request_seconds', '45'),
(23, 'driver_request_limit', '10'),
(24, 'copyright_year', '2024'),
(25, 'copyright_url', 'http://renixe.com/'),
(26, 'copyright_name', 'Marin App'),
(27, 'driver_payout_limit', '150');

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `link` varchar(191) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supports`
--

INSERT INTO `supports` (`id`, `name`, `link`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Whatsapp', '918607248802', 'Active', 'category-image1656214242.png', NULL, NULL),
(2, 'Skype', '4', 'Inactive', 'skype.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `batch_id` char(36) NOT NULL,
  `family_hash` varchar(191) DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(20) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) NOT NULL,
  `tag` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toll_reasons`
--

CREATE TABLE `toll_reasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `reason` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `toll_reasons`
--

INSERT INTO `toll_reasons` (`id`, `reason`, `status`) VALUES
(1, 'Other Fees', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `pool_id` int(10) UNSIGNED NOT NULL,
  `pickup_latitude` varchar(100) NOT NULL,
  `pickup_longitude` varchar(100) NOT NULL,
  `drop_latitude` varchar(100) NOT NULL,
  `drop_longitude` varchar(100) NOT NULL,
  `pickup_location` varchar(255) NOT NULL,
  `drop_location` varchar(255) NOT NULL,
  `car_id` int(10) UNSIGNED NOT NULL,
  `request_id` int(10) UNSIGNED NOT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `trip_path` text NOT NULL,
  `map_image` text NOT NULL,
  `seats` tinyint(3) UNSIGNED NOT NULL,
  `total_time` decimal(7,2) NOT NULL,
  `total_km` decimal(7,2) NOT NULL,
  `time_fare` decimal(11,2) NOT NULL,
  `distance_fare` decimal(11,2) NOT NULL,
  `base_fare` decimal(11,2) NOT NULL,
  `additional_rider` int(10) UNSIGNED NOT NULL,
  `additional_rider_amount` decimal(11,2) NOT NULL,
  `peak_fare` decimal(11,2) NOT NULL,
  `peak_amount` decimal(11,2) NOT NULL,
  `driver_peak_amount` decimal(11,2) NOT NULL,
  `schedule_fare` decimal(11,2) NOT NULL,
  `access_fee` decimal(11,2) NOT NULL,
  `tips` decimal(11,2) NOT NULL DEFAULT 0.00,
  `waiting_charge` decimal(11,2) NOT NULL DEFAULT 0.00,
  `toll_reason_id` int(10) UNSIGNED DEFAULT NULL,
  `toll_fee` decimal(11,2) NOT NULL DEFAULT 0.00,
  `wallet_amount` decimal(11,2) NOT NULL,
  `promo_amount` decimal(11,2) NOT NULL,
  `subtotal_fare` decimal(11,2) NOT NULL,
  `total_fare` decimal(11,2) NOT NULL,
  `driver_payout` decimal(11,2) NOT NULL,
  `driver_or_company_commission` decimal(11,2) NOT NULL,
  `owe_amount` decimal(11,2) NOT NULL,
  `remaining_owe_amount` decimal(11,2) NOT NULL,
  `applied_owe_amount` decimal(11,2) NOT NULL,
  `to_trip_id` varchar(100) NOT NULL,
  `arrive_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `begin_trip` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_trip` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paykey` text NOT NULL,
  `payment_mode` varchar(50) NOT NULL DEFAULT 'Braintree',
  `payment_status` enum('Pending','Completed','Trip Cancelled') NOT NULL DEFAULT 'Pending',
  `is_calculation` enum('1','0') NOT NULL DEFAULT '0',
  `currency_code` varchar(10) NOT NULL,
  `fare_estimation` text NOT NULL,
  `status` enum('Scheduled','Cancelled','Begin trip','End trip','Payment','Rating','Completed','Null') NOT NULL DEFAULT 'Null',
  `otp` varchar(10) NOT NULL DEFAULT 'Null',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `user_id`, `pool_id`, `pickup_latitude`, `pickup_longitude`, `drop_latitude`, `drop_longitude`, `pickup_location`, `drop_location`, `car_id`, `request_id`, `driver_id`, `trip_path`, `map_image`, `seats`, `total_time`, `total_km`, `time_fare`, `distance_fare`, `base_fare`, `additional_rider`, `additional_rider_amount`, `peak_fare`, `peak_amount`, `driver_peak_amount`, `schedule_fare`, `access_fee`, `tips`, `waiting_charge`, `toll_reason_id`, `toll_fee`, `wallet_amount`, `promo_amount`, `subtotal_fare`, `total_fare`, `driver_payout`, `driver_or_company_commission`, `owe_amount`, `remaining_owe_amount`, `applied_owe_amount`, `to_trip_id`, `arrive_time`, `begin_trip`, `end_trip`, `paykey`, `payment_mode`, `payment_status`, `is_calculation`, `currency_code`, `fare_estimation`, `status`, `otp`, `created_at`, `updated_at`) VALUES
(3, 10024, 0, '10.3686244', '77.982075', '10.3686302', '77.9820825', '32/G1, Anna Nagar, Tamil Nadu 624001, India', '32/G1, Anna Nagar, Tamil Nadu 624001, India', 2, 123, 10025, 'ubh~@{y}zMb@Xj@x@p@~@hBtCv@vANFbDdBlAj@ZPb@eBBEBAh@FBAVkAHeA@u@N}@HY@a@?]nCHX@', '3a8fe69b.jpg', 0, 0.00, 0.67, 0.00, 10.05, 89.95, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 0.00, 100.00, 100.00, 0.00, 6.00, 6.00, 0.00, 0.00, '', '2024-05-11 12:15:29', '2024-05-11 12:15:42', '2024-05-11 12:15:52', '', 'Cash', 'Completed', '1', 'INR', '{\"status\":\"success\",\"distance\":835,\"time\":140}', 'Completed', '0', '2024-05-11 12:14:46', '2024-05-11 06:46:01'),
(4, 10024, 0, '11.0084544', '77.015002', '11.0084593', '77.015009', '39, G.V. Residency, Coimbatore, Tamil Nadu 641004, India', '39, G.V. Residency, Coimbatore, Tamil Nadu 641004, India', 2, 125, 10027, '}aebAc_auMwNb@MlB?Zr@hG_CTkBPqBDYPsChA}Cb@mGz@iANuCVqEb@eABy@AeBJ{@NgAX}@Xw@\\e@RSFU@WCeB]wCa@i@?kAd@mC`AaAP{CRsAFi@DNfA^rDVvCNrBd@nGr@lEd@nDZjEVlBd@dBlAjDbAfCv@rBNn@Fl@NnCH|AHjDNtBTzBXfB|@rD~@pDV~@^x@Zn@vAfC^j@`@b@\\X~A~@|@h@INqC_Bc@Y[YEFq@x@WPSXSj@Ox@e@bCEb@J|AD|@Mr@a@zASv@CZKzAMdEFTFHLJz@XDH?HSr@Ij@e@hFEjA@nIDJDpBCL?l@Af@?zC?hD@bFHfHNlRFvKTrBZdDfAlJJfA^dC^jDRvBFHPzAHfAh@tEZtCp@fGRxA\\rENlB@@@B?@z@NnFEnAEZ~HFbB?`C?vEC~B', '55e4afb1.jpg', 0, 1.00, 0.68, 2.00, 13.60, 20.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 0.00, 35.60, 35.60, 0.00, 3.56, 3.56, 0.00, 0.00, '', '2024-05-11 14:50:04', '2024-05-11 14:50:35', '2024-05-11 14:51:41', '', 'Cash', 'Completed', '1', 'INR', '{\"status\":\"success\",\"distance\":8762,\"time\":1243}', 'Completed', '0', '2024-05-11 14:49:00', '2024-05-11 09:22:33'),
(5, 10021, 0, '11.0200626', '77.0009189', '11.030432399999999', '77.03909279999999', '14/6, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 129, 10030, 'ojgbAqf~tMk@NIHw@PsDl@_CAg@@a@TVn@Nn@PrBDhAYBCiAGu@QqA]cA{AcEcAsCk@sBQ_ASeBK}ASmB_AsG]kCQuBQ_DOiBM}Ao@yFUcC]wE[cHG_EEyDMgBUuCYaFWuB{@cHc@kDQcBSs@kAwCy@uBkAuDsAsDu@}AmAoBmBwCoDaGeAyAuEcG}AwB_CwD_CwDgFgHqAyAoIuJ{AuBmAkBo@}@_BuBu@aAPOrAzAx@MfKu@dBO`I[vHWTEj@a@VWOQIWAOBONa@\\c@LKH?PLzA~A', '', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Cash', 'Trip Cancelled', '0', 'INR', '{\"status\":\"success\",\"distance\":6220,\"time\":933}', 'Cancelled', '1367', '2024-05-11 19:21:49', '2024-05-11 13:52:23'),
(6, 10021, 0, '11.0201486', '77.0006363', '11.0201503', '77.0007919', '12/16, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', '14/42, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', 2, 132, 10031, 'iigbAig~tM@Rg@Bk@NIHw@PsDl@_CAg@@a@TVn@Nn@PrBDhAYBCiAGu@QqAkAgDcAmCqAcEYuASeBIqAOuAe@qDo@gE[kDUsD]gEo@yFKmASwBSuC[cHMyJYqDc@mHk@yEq@oFg@iECUSs@yAsDk@yAkAuDsAsDu@}AoB}CkAiByAeCqBcDqCoDkE}F_CwD_CwDgFgHqAyA{EuFsB_C{AuB}BiD_BuBu@aAPOrAzAx@MfKu@dBOdCMhJYhCKTEbAy@OQIWAOBONa@LS\\[N@dBjB@?', '28111f9a.jpg', 0, 0.00, 0.07, 0.00, 1.40, 20.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 0.00, 21.40, 21.40, 0.00, 2.14, 2.14, 0.00, 0.00, '', '2024-05-11 19:26:46', '2024-05-11 19:27:18', '2024-05-11 19:27:55', '', 'Cash', 'Completed', '1', 'INR', '{\"status\":\"success\",\"distance\":6253,\"time\":949}', 'Completed', '0', '2024-05-11 19:25:43', '2024-05-11 13:59:30'),
(7, 10024, 0, '11.0201223', '77.0009472', '11.030432399999999', '77.03909279999999', '80/77, P P M Rd, Peelamedu Pudur, Sowri Palayam, Coimbatore, Tamil Nadu 641028, India', 'Coimbatore International Airport, Peelamedu - Pudur Main Road, Coimbatore, Tamil Nadu, India', 2, 144, 10030, 'qjgbA}f~tM@J]HSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoC_DgFqAwBi@u@qE}FiBgCwAuBoDaGgFgHg@i@uBiC{EoFeAuA{AsBeD{EoA}APOrAzApAOjL{@~BOfFSnFQxAGPId@a@PSMOGQCKBYFUHMX_@RMH?HF~AdB', '', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '2024-05-11 19:42:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Cash', 'Trip Cancelled', '0', 'INR', '{\"status\":\"success\",\"distance\":6227,\"time\":946}', 'Cancelled', '1819', '2024-05-11 19:41:28', '2024-05-11 14:12:32'),
(8, 10024, 0, '11.0201158', '77.0009106', '11.0201279', '77.000929', '80/77, P P M Rd, Peelamedu Pudur, Sowri Palayam, Coimbatore, Tamil Nadu 641028, India', '80/77, P P M Rd, Peelamedu Pudur, Sowri Palayam, Coimbatore, Tamil Nadu 641028, India', 2, 145, 10029, 'cjgbAsf~tMi@JSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoC_DgFqAwBi@u@qE}FiBgCwAuBoDaGgFgHg@i@uBiC{EoFeAuA{AsBeD{EoA}APOrAzApAOjL{@~BOfFSnFQxAGPId@a@PSMOGQCKBYFUHMX_@RMH?HF~AdB', 'd5f8a240.jpg', 0, 0.00, 0.03, 0.00, 0.60, 20.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 0.00, 20.60, 20.60, 0.00, 2.06, 2.06, 0.00, 0.00, '', '2024-05-11 20:46:11', '2024-05-11 20:46:45', '2024-05-11 20:47:36', '', 'Cash', 'Completed', '1', 'INR', '{\"status\":\"success\",\"distance\":6227,\"time\":937}', 'Completed', '0', '2024-05-11 19:41:28', '2024-05-11 15:17:46'),
(9, 10024, 0, '11.020149', '77.0006549', '11.0133764', '77.002923', '12/16, Jaganathan Colony, Peelamedu, Peelamedu Pudur, Coimbatore, Tamil Nadu 641004, India', '28/60, Thirumagal Nagar, Masakalipalayam, Coimbatore, Tamil Nadu 641028, India', 2, 149, 10029, 'qjgbA_g~tM@L]HSJQHiCb@gBTaCA]FUNVn@Nn@Fl@NnCYBCeAEk@Eo@Q{@wA{DkAaD{@sC]gBWcDQ}AcAkHQmA[iDYyEm@uG]uCIaA[uDMgBWgGE_DEcDCqA]_E[qFMmAy@wGa@kD_@}CG[_@iA{AwDcDuJw@eBm@gAiBoCiBwCPKp@jA`@Od@GxB]hAO[gC', '17cb1dce.jpg', 0, 761.00, 4.57, 1522.00, 91.40, 20.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 0.00, 1633.40, 1633.40, 0.00, 163.34, 163.34, 0.00, 0.00, '', '2024-05-11 20:49:47', '2024-05-11 20:50:38', '2024-05-13 09:32:12', '', 'Cash', 'Completed', '1', 'INR', '{\"status\":\"success\",\"distance\":3938,\"time\":650}', 'Completed', '0', '2024-05-11 20:48:11', '2024-05-13 04:02:23'),
(10, 10021, 0, '11.0128045', '77.0027028', '11.664325', '78.1460142', '18/1, Thirumagal Nagar, Masakalipalayam, Coimbatore, Tamil Nadu 641028, India', 'Selam, Tamil Nadu, India', 2, 150, 10032, 'a}ebAcr~tMy@k@_H]yGFaJ\\mB}FeF~@_E~AoG~EkH`BjA|CwC{Gq@mEgC{TcC{XmGw}@cM{ZcSuYq{@inAgZyu@cQ__@k^ii@gVef@aEi_AwZafAwe@i`A{kAgwBad@}w@aXm}@oNkv@cQud@sP}d@_Mwe@cYwo@wSc[wWaM_XoUgg@su@kSkTiWkFuf@oZk\\wFcfAmk@qYol@wMqYcQeRg]w_@oa@ub@cRqZa@ms@|B{j@HwRfNol@n@uTeO}cAoIiJ_r@aMmQsF}FwHmNoPgP}OqM_`@iGu[r@qv@mPumAqPslAyCcMuGgHij@aO}NgQcDai@dEy^`^wt@vQoWdB}KpA_z@tIos@rYs~@fGsX~CmiAyCqQ}g@}{@aImSsDkSig@ap@wN_RuD}L{EkYkJmQeQcSiKi^kSgWcHcLeHe[aFyV_Osb@uEeU{HqMuHqU|EaYlLyZeAwS}IqPsFwFeS}\\mQid@wQciAoJ}c@cV_h@aKwQsQoKu^mLsP}ByuA}WwQmGwGuGgM}TmHcVoHef@{@eYCw_@_Dqb@e^cm@mL{PyOaKu_@gVgIkOkYu\\ub@us@}N{U_WeQsXeNin@{@oKeBqJsGoQ_i@wLgPmNmH}^sIeo@cLge@}Ece@wLgk@iZmOkBsM|@eh@|PsRdAeLkB{a@cYaMcMkLwUgMwWyDkNwMgb@sLmJaMgDmZZuUnC{XpA_HgD_GmNlDgw@O}TyR{y@oMej@cIuM_WgRcKcV_AuM^}VwAaTeFsu@mBc|@`Bif@_L{g@oMwa@g@ak@xGkZaCuLqN{SgDkLa@sZiAiw@{Cq]Wij@eCoo@sIgQaLkJcQ{Gk^yIkP_Ns[il@ii@{m@{m@ex@}Qyb@eOarBxEydApFe{@k@uUg\\et@cZaZ}t@aw@yh@ay@sSgf@sM_d@od@uy@mM_VyOqJsKeH}B_Ia@mb@qb@khA{Zg_AkLgl@aIyV{a@ky@_`@moAwZsm@y@wH~ANfEk@|DmFdJiNxEs@hCcGnDkKbHmLpB{JyFcMaEkAhA}CjDgN~C_GzD_BrQd@fGeKdOaQbOoFjBiAnA_H~E}H_AoEyFaGmIqOwCuHaJoDwY_HcZaFon@cQc]wDmVkGmOuHcU}Ck_A_J_HSqDiEsI{XeHyVaJsOak@sr@uVcYaKqNuXiKac@aMsPaJwRgb@}TuNebAyBuEuHaHmB{_@gBukA{EcMsDoMcGsE}EjEyTjLwR?MvWmSr[e[iCgWa@{MsScDwCMyFyAwEkAcC|C{@jAeA~@A@', '', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Cash', 'Trip Cancelled', '0', 'INR', '{\"status\":\"success\",\"distance\":167980,\"time\":11898}', 'Cancelled', '9257', '2024-05-14 17:42:25', '2024-05-14 12:12:46'),
(11, 10018, 0, '10.3686608', '77.9821059', '10.3686554', '77.9821116', '32/G1, Anna Nagar, Tamil Nadu 624001, India', '32/G1, Anna Nagar, Tamil Nadu 624001, India', 2, 154, 10025, 'och~@mz}zM|@j@x@jAfA`B|BxDNFKb@A`@r@jEbChNh@fDh@pCNbAf@jCd@fDDdAErAEh@QxCIdBInBCb@FTRFx@FnBJ~AH|BRzB@rAF', '145c645d.jpg', 0, 0.00, 0.67, 0.00, 10.05, 89.95, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 0.00, 100.00, 100.00, 0.00, 6.00, 6.00, 0.00, 0.00, '', '2024-05-15 11:40:17', '2024-05-15 11:40:30', '2024-05-15 11:40:34', '', 'Cash', 'Completed', '1', 'INR', '{\"status\":\"success\",\"distance\":1808,\"time\":319}', 'Completed', '0', '2024-05-15 11:39:50', '2024-05-15 06:10:45'),
(12, 10018, 0, '10.3686485', '77.9820704', '10.3686464', '77.9820715', '32/G1, Anna Nagar, Tamil Nadu 624001, India', '32/G1, Anna Nagar, Tamil Nadu 624001, India', 2, 155, 10025, 'mch~@kz}zMz@h@x@jAfA`B|BxDNFKb@A`@r@jEbChNh@fDh@pCNbAf@jCd@fDDdAErAEh@QxCIdBInBCb@FTRFx@FnBJ~AH|BRzB@rAF', 'ee0178d8.jpg', 0, 0.00, 0.00, 0.00, 0.00, 100.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 0.00, 100.00, 100.00, 0.00, 6.00, 6.00, 0.00, 0.00, '', '2024-05-15 11:43:53', '2024-05-15 11:44:00', '2024-05-15 11:44:43', '', 'Cash', 'Completed', '1', 'INR', '{\"status\":\"success\",\"distance\":1807,\"time\":319}', 'Completed', '0', '2024-05-15 11:43:40', '2024-05-15 06:16:23'),
(13, 10021, 0, '11.0130933', '77.00284', '11.0130933', '77.00284', '30, Annamar Kovil St, Thirumagal Nagar, Masakalipalayam, Udayampalayam, Coimbatore, Tamil Nadu 641045, India', '30, Annamar Kovil St, Thirumagal Nagar, Masakalipalayam, Udayampalayam, Coimbatore, Tamil Nadu 641045, India', 2, 156, 10028, 'q~ebAwq~tMrAUHGUQUIS?w@DkAPuBN}@JA_A?GCCOCaDAiCL}CHkDNGsGeALsBXuAR}Bp@eBj@KL]^w@t@kDhCc@PuE`AkAZVr@^`ARh@SH]_AUm@qAcEYuASeBIqAOuAuAyJ[kDUsD]gEo@yFKmASwBSuC[cHMyJYqDc@mHk@yEyAyLCUSs@yAsDk@yAkAuDOFMT?H`CdH`@lADT?\\GX{@nAuEfGsAhBwChE{@bAU^q@p@c@Ta@VOFaALcBPyEn@{H`A{B`@PnA', 'b775d9bb.jpg', 0, 0.00, 0.15, 0.00, 3.75, 81.25, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 0.00, 85.00, 85.00, 0.00, 8.50, 8.50, 0.00, 0.00, '', '2024-05-19 13:32:19', '2024-05-19 13:32:37', '2024-05-19 13:32:43', '', 'Cash', 'Completed', '1', 'INR', '{\"status\":\"success\",\"distance\":5592,\"time\":933}', 'Completed', '0', '2024-05-19 13:31:13', '2024-05-19 08:33:57'),
(14, 10021, 0, '11.013085', '77.00283', '11.013085', '77.00283', '30, Annamar Kovil St, Thirumagal Nagar, Masakalipalayam, Udayampalayam, Coimbatore, Tamil Nadu 641045, India', '30, Annamar Kovil St, Thirumagal Nagar, Masakalipalayam, Udayampalayam, Coimbatore, Tamil Nadu 641045, India', 2, 158, 10028, 'm}ebAar~tMx@Sp@CjADh@gDJg@FGlBaCdDqEv@mBsA}@H}BjA{Fd@}BbDaAdD_@`BmAbDyJPaFIsG?eA@}@nCOrDQnDQhIe@vHc@nMi@vBcAcBuZoBsPiEcVcDu]wGeg@}G_g@ZaPxCsTjDeZmAmYuA{PsA_DmBkFyCcIoLwToDyFGsCg@sNcC{OcHcTsNm_@sRiRaNeb@yFuJ}DuLuOmo@kJyc@kBkRx@yOuAw[VgLoBsGkCsDgFmFiAaKH{b@lAaOL{MHce@N}XZ}_@~@uJ~EmUzBiNxA}QToQBqNxF}M~E_KzEaOjSs[bM{R~GcNzHyYfCsQfE_IrDiLbE{NfBaFp@iJfCaP|FuOnHsMrGgOtHeb@h@kNtByHrHgNvD{]?cLwBiRyGqMaAeIy@cS@mPqDkMWkQXeMpByMlDaZzEcXfAsShCkOlGcWvHo_@|@u@vC@`Bs@l@uBHcEWoKkD{P}@_HbAyItDqKtBqIb@wAxAk@xEsAfNaE~EoCfEo@nPaDjWaNf_@u^~Y{SvQkMzJeF~UwIlPkG`FcEpC}B~DqAzFsCbHeGlN_S`ZsNfGcAlJWnOuE|RQxLgBfGWxOz@|KNtN{ArNiFzHwDzLMdN|@pFk@fK{BpJwCjE{HjBeB|HgCxJ]~JuBtEaBlAyCfBiQnCoH`BmHl@kJ|DgZ`B_M`B_GrEkFfKmJ~HyEnN{EnGSfOyAjSeJ`LaFbPgF|@sD^eI|C}MxBec@|Dit@`AeFpFyLfMsXrWwn@fU_l@hJg`@tAyPlDeO|CaLxEuKpGsIhEwIrSqXhJg[`Gc[xD{O|HgUbGkWdC{FzCeDnRaWdCcDbIaKk@s@x@eHJyJ^qUvC}VtBwSJ{Ls@yAUSlDc@bKQpHTnNQ~Qe@p\\iF`M_Flx@we@vOwJdHkEzYuKjN}FdVwLh]uOlc@}R~u@{[~BuAhFeI|E}OfFkH|JgIdTyQ|RqOnLyElW{JvKiHzMwJvGuAtQpDvFf@x{@gCbj@jIfFUxJoCj_@mKdDmBbB}BhB{C@IpEaHxLiVpf@_z@pA_GU_H_@mJeCePuAeLMmAjAAz@@pPk@jVg@t|@yB`mBnKrlA`HxtBlLje@lCxm@pKxo@nLjWnEhMv@n`AKzx@MrZr@pg@`CrTnBtO~Cl`@bKtb@nLdO`B~ThA|m@vBnNBxXfAtcArDfl@tBnLSnKfAvNrArPUv\\cD|k@cIz_@eFx`@qCxh@}DrO{EfWpEjOdArInBda@`O~XtIrZ`Llp@nRl`@zKtt@lTvKvBpBaI?G', 'd52e46fb.jpg', 0, 1.00, 0.00, 1.60, 0.00, 83.40, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 0.00, 85.00, 85.00, 0.00, 8.50, 8.50, 0.00, 0.00, '', '2024-05-19 14:06:29', '2024-05-19 14:06:55', '2024-05-19 14:08:11', '', 'Cash', 'Completed', '1', 'INR', '{\"status\":\"success\",\"distance\":112106,\"time\":8484}', 'Completed', '0', '2024-05-19 14:06:10', '2024-05-19 08:38:19'),
(15, 10021, 0, '11.0131014', '77.0028412', '11.0131234', '77.0029073', '30, Annamar Kovil St, Thirumagal Nagar, Masakalipalayam, Udayampalayam, Coimbatore, Tamil Nadu 641045, India', '30, Annamar Kovil St, Thirumagal Nagar, Masakalipalayam, Udayampalayam, Coimbatore, Tamil Nadu 641045, India', 2, 159, 10045, 'a}ebAcr~tM\\ELE@EIIQKKE_A@gAR_BJgBPCiAKEaC?g@AoBHaJ\\GsGWBmAP_D`@eA\\{C|@OHSVg@f@_BpAuB|AQFkH`BjA|CSJk@aBwAeEUiAKk@OwAOwBUoB_AmGIm@WwCMkBc@}Fw@mHYcDY{DWgGE_DEcDCqAUcCc@mHa@qDw@sGw@eG{A_E_@aAs@uBoB_Gw@eBm@gA}@uAk@y@iBwCgCgEiCiDqBiCiBgCwAuBoDaGgFgHg@i@uBiC{EoFeAuA{AsBiAeB{AuBoA}APOrAzApAOjPkAdJ[jEQPId@a@PSMOGQCKBYPc@d@i@FCH?`@`@fAjA', 'bb4acfd5.jpg', 0, 19.00, 1.40, 38.00, 37.80, 27.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 0.00, 102.80, 102.80, 0.00, 10.28, 10.28, 0.00, 0.00, '', '2024-05-20 21:20:04', '2024-05-20 21:20:13', '2024-05-20 21:39:28', '', 'Cash', 'Completed', '1', 'INR', '{\"status\":\"success\",\"distance\":7112,\"time\":1126}', 'Completed', '0', '2024-05-20 21:19:46', '2024-05-20 16:13:19'),
(16, 10021, 0, '11.0030331', '77.0190151', '9.6006608', '77.7340719', '36, Brindavan Colony, Uppilipalayam, Coimbatore, Tamil Nadu 641015, India', 'JP2M+7J2, Natham Patti, Tamil Nadu 626138, India', 2, 160, 10045, 'obdbAa~auMdDdHdFPpLcFQq]iEcSsLueAoGcl@fGmg@q@oz@m\\}r@oQ{`A}`@ko@_w@urCcBi}@mJe\\wC}w@|AqkAnEscA`Hwb@n@}d@hJyXx`@wv@d_@mbA~g@uhBrg@yiBjCg^oEy^yJ}|@cCie@bImq@jLq|@~Pot@vHeB^gMcCgo@hLeWxlAac@``Akx@bu@w\\v[}P|^i`@tn@oPjc@cFvf@m@pv@kOdn@mCnOkN~PyDtSoDxEiKrKoo@dE_]lLsV`X{PvYaEn{@w]bJefAfP{fAbf@_iA|f@amBx\\ap@r^{{@ve@_}Ab^_k@pB}m@tEsu@bgAeElg@uPpr@ya@j|Ait@vbAad@pr@gZfXsf@xs@wk@zx@ka@zReEz^`D~t@cBdh@hIxt@cSpFiId}@e`BmHsxAbDiZ~LqMxh@}g@~Tow@|j@swArsAolBpeCmqAbzAkdBfo@ap@pQaf@jgA_n@fdAmeA|QoXt`@iK|i@}_@js@ck@zh@aX`s@_rAr^cf@p^oH~}BmoAzxAqd@xXgQxGaZrjAkg@~h@sVrIGVqUjBwTlTgbAda@ec@jc@mIx|@{PvMg\\tLu\\nIye@|Se@bl@|MnSl@vUkR|m@kb@pi@kTzk@_Zh]aZ|KxBtQmEza@mOtt@kM`lAaEfKiFzEiQxHa[hRyD`j@yOvd@wIrBoLb_@cSjh@}Ybs@}Sv}@cV|{@mGxnAc[hj@ud@xT{ElXwL~l@uKxfAgXrp@eNhIgBzo@kSrz@_Dtv@mNrx@aVd[wJxXaX|Yad@}Fo^n@{\\tIkS~PuAxe@^juAwBfpBmNzc@gElaB{c@bSkG|YxGjl@CbaBy_@vx@{V~rBsiAvd@a^|Ny`@jKsu@rVim@za@u}@fOqMjWoDfr@f@pi@mC``@yGxTuWjr@}`A|RyQv_@u~@jMiRtk@_RxxA}Ohf@cEhiAs\\pXgQdY}Afp@iOb^qPj`AcQtpBm|Bbf@{Zrl@qD`eB|`@bzBnl@th@p^fb@ne@nm@pb@rc@qBteArg@fyAhk@xYlG`RzSly@vcAeJp}AdYpx@vXlEpoBwf@`j@aNbx@{Ar~A~NloAvHt_A`Ol|@kMzv@_Mh{@bS`uCtc@jcAbG~h@`MjiChVbf@oDdaAhTliAtNx{Cb[x{@dObq@xfAzd@NzsAoSjeAoWthCfYbmBjM`cCrGtrBrChtAb`@flD~bA`m@d]`tBhYppB}@nNz@nCzE`@`NCbNsD~h@_Jfi@ac@|tAadAveEkUrm@iG|i@wFfU_LeKkAcB', 'e383f589.jpg', 0, 330.00, 248.37, 660.00, 6457.62, 85.00, 0, 0.00, 30.00, 208875.98, 4177.52, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0.00, 0.00, 7202.62, 216078.60, 0.00, 1138.01, 205836.47, 0.00, 0.00, '', '2024-05-21 11:35:09', '2024-05-21 11:35:32', '2024-05-21 17:05:58', '', 'Cash', 'Completed', '1', 'INR', '{\"status\":\"success\",\"distance\":269287,\"time\":17465}', 'Completed', '0', '2024-05-21 11:34:29', '2024-05-21 11:36:29');

-- --------------------------------------------------------

--
-- Table structure for table `trip_toll_reasons`
--

CREATE TABLE `trip_toll_reasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `country_code` varchar(100) NOT NULL,
  `gender` enum('1','2') DEFAULT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `password` varchar(191) DEFAULT NULL,
  `user_type` enum('Rider','Driver') DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `firebase_token` text DEFAULT NULL,
  `fb_id` varchar(50) DEFAULT NULL,
  `google_id` varchar(50) DEFAULT NULL,
  `apple_id` varchar(191) DEFAULT NULL,
  `status` enum('Active','Inactive','Pending','Car_details','Document_details') DEFAULT NULL,
  `device_type` enum('1','2') DEFAULT NULL,
  `device_id` text NOT NULL,
  `referral_code` varchar(12) NOT NULL,
  `used_referral_code` varchar(12) DEFAULT NULL,
  `currency_code` varchar(10) DEFAULT NULL,
  `language` varchar(50) NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `country_code`, `gender`, `mobile_number`, `password`, `user_type`, `company_id`, `remember_token`, `firebase_token`, `fb_id`, `google_id`, `apple_id`, `status`, `device_type`, `device_id`, `referral_code`, `used_referral_code`, `currency_code`, `language`, `country_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10001, 'Rider', 'Test', 'info@ridein.in', '91', '1', '9999999999', '$2y$10$jY9n5fgu0caKUQYbhSroweuZnv3BzPAewSiOcL0EDJHhgoifm3.c6', 'Rider', NULL, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay1ydXd5bEByaWRlaW4tNTRkOWQuaWFtLmdzZXJ2aWNlYWNjb3VudC5jb20iLCJzdWIiOiJmaXJlYmFzZS1hZG1pbnNkay1ydXd5bEByaWRlaW4tNTRkOWQuaWFtLmdzZXJ2aWNlYWNjb3VudC5jb20iLCJhdWQiOiJodHRwczovL2lkZW50aXR5dG9vbGtpdC5nb29nbGVhcGlzLmNvbS9nb29nbGUuaWRlbnRpdHkuaWRlbnRpdHl0b29sa2l0LnYxLklkZW50aXR5VG9vbGtpdCIsInVpZCI6ImluZm9AcmlkZWluLmluIC0gUmlkZXIiLCJpYXQiOjE2OTgyMzU1MTUuMjgxMDMyLCJleHAiOjE2OTgyMzkxMTUuMjgxMDMyfQ.BYAbwBfspj2YPQjyfWaJO5Y-VM4zPl5Xbtps8iPXvyMU5j7XKQ2dDJh-t3nuFjQqhfH_uZD58WsJdMhCuMRNivOZZtVwOmz-PakROhsAVmK6WnU9lMZQjWaRXVrpsY64P1JKeijY8GtvHRnjbjZ-SXJbrFv3qk59EHMEufgFIaw6k2b5TjCpMeSloySAr3jCEMuQkhED9-LjRtOd_eYnAp1nnBJJwfFB_RHRz3EI-i1dvR77SPgkZw1WAp5oe_XHGGBu2F_TMT0GrEIMNdEfbZZQ_ZvMomfrZ3yR8F1XgYGimlIqPz-jNVzfnni2g_60pWVIOqhC7SZVvC2cLeO97Q', NULL, NULL, NULL, 'Active', '2', 'd2U-iKqST5CaooUMSmdOTD:APA91bGGI0JMmBZiuf19maj0rIOQwY1XZMC0beL__Yy_X-hfQp_Wr_mtNfO21qHO3ZEBlT5_a8WcmF5Q3qBSEdN3FPucJZg81702JfRO6uitszC_RRzmu31Xq6IXYhLwAIZ3YmNUC1oW', 'QKPBGESSIW', '', 'INR', 'en', 99, '2022-01-18 13:56:05', '2023-10-25 12:05:15', NULL),
(10002, 'DriverRidein', 'driver', 'info@ridein.in', '91', '1', '9999999999', '$2y$10$/j4vxzGvMzKao3frVoXulOgoTg/tkfBxFAltBKuce0PaMB8VMBsx2', 'Driver', 1, NULL, NULL, NULL, NULL, NULL, 'Active', '2', 'ecpEJ8Y1Qk2Kgf38Td7FI3:APA91bEyT4j5u8-whbo4oRSeMmifU3d0UIAMfupaTdLOvdodCk8g_bZXjr1RZ2cnSaitZl4qcvRxvGTscPlu-3svDINYLAFEjLCjuACCAjCu5VnIUGRcfWiXS5beOElDMb2gr7AgR1R-', 'N2IYFPKMVC', '', 'INR', 'en', 99, '2022-01-18 14:57:57', '2023-10-25 12:06:26', NULL),
(10018, 'Muthu', 'k', 'dharshinipriya1906@gmail.com', '91', '1', '9787698254', '$2y$10$Zdb10IkuI7ygerx0/loK/.tu2EPMMBROXPV/FdwmbBo/qHsVLBg1W', 'Rider', NULL, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay04em9yMkBidXNrYXJ0LTc0YmU1LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstOHpvcjJAYnVza2FydC03NGJlNS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tL2dvb2dsZS5pZGVudGl0eS5pZGVudGl0eXRvb2xraXQudjEuSWRlbnRpdHlUb29sa2l0IiwidWlkIjoiZGhhcnNoaW5pcHJpeWExOTA2QGdtYWlsLmNvbSAtIFJpZGVyIiwiaWF0IjoxNzE3ODY0ODkwLjI2NDM5MywiZXhwIjoxNzE3ODY4NDkwLjI2NDM5M30.WKGwGZHqQa38Su9LW-6I7OikmWyjt_qfEZMFuvrjsO0sSDFv_JtO207sXP-0pQAXKbHzfQhfbL0ryi2ZErsdKUDzacdTtbdY1Ml31nymL1J3bifShjbJ3RdAENbsuL1zNcjFEupPh4DYTbL15LVxkxgT5Wd--OuVJh4sYJ2bu4tRCRrCiLiyH1rbE-lwSvfTiS6muud98WgsHYUVQDbncMDNPwRDfVje7hve-GvDAkGR1IQAyYTibRLpWkIwzS5jb-yXzWMfFWXZ10omPlzYD_fDLhjprfHbEqTWsbGmKUbfsWbe7TnA-oi9uWPRWDBaoqDNiXUvC51b6fuNhSqdbg', NULL, NULL, NULL, 'Active', NULL, '', '5KJONKCR0N', '', 'INR', 'en', 99, '2024-03-26 05:15:35', '2024-06-08 16:41:30', NULL),
(10019, 'Muthu', 'k', 'dharshinipriya1906@gmail.com', '91', '1', '9787698254', '$2y$10$vhWd5dPJseaMCN900JEf4ufEj/Rpn.TLaJFDJJuOE.fnYVgNXQQIy', 'Driver', 1, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay04em9yMkBidXNrYXJ0LTc0YmU1LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstOHpvcjJAYnVza2FydC03NGJlNS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tL2dvb2dsZS5pZGVudGl0eS5pZGVudGl0eXRvb2xraXQudjEuSWRlbnRpdHlUb29sa2l0IiwidWlkIjoiZGhhcnNoaW5pcHJpeWExOTA2QGdtYWlsLmNvbSAtIERyaXZlciIsImlhdCI6MTcxNzg0MDk4OS4xNDM2NSwiZXhwIjoxNzE3ODQ0NTg5LjE0MzY1fQ.CaDpb4_9zc_DiMjgXKlmXNgAo7YYpHpOKRl_rPdVt5nv3gZyGnimkSlTfRkypOxwfSL7SvY12UIEIzRPaOCFf7DXlX6BYZqBX7ej8XTfFvui2m46YSmoC5-Kih9Akuf6GHcIqibjruuSy10ILi39QxmNIDtqElIKCPJWMerL3rb8GJEcYxX1njZaXp2KNLeKFZO8_JBr62hNduExJHl4PxU11lOzdO5aG56_99nPQ09YfQ6eiOD9wnUQA29mLZIac59tYomhhDWAXeNwyeUpHcrRbgC7JNea0be0QCzMuiiUYjzY2U4bM5UNswPo_RJd0o-tI60bsjvUkHlQ0zY_Ew', NULL, NULL, NULL, 'Car_details', '2', 'erVSrQSaSDuto9TIlbvk2t:APA91bGq2U8CIuIxytDayGIRU2Ki-TRp5L5UXO9aZyswH21sn6LkB3CWYqamBPbGZAjisbIHQVK9Ry978ssjTPNqpZlx5oP1_O-DGQMbq-GXGIIYPsjvISe4cifH_2dv5d3VZ8MS7rKC', 'ZN2XHJ46UR', '', 'INR', 'en', 99, '2024-03-26 05:41:30', '2024-06-08 10:03:09', '2024-06-03 18:07:30'),
(10021, 'Vasanth', 'Kumar', 'vasanthkumar8122003@gmail.com', '91', '1', '9940825170', '$2y$10$HWLI8hvUcdgi.W4FQ355oeuAVFTM9eJrSlJqoHHRnBJ7lAUlTxc8.', 'Rider', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2', 'cqgvKaX5TsCliSoOKop94R:APA91bFL-gVDaixCLzau_pFnvW7BGU62lheYJWrqJq3RC3AC1EPYAirWqM6BtrvVVTxD4irsk4bSXI3qmxK2cTza-U8Qet7s1Hvn2Vd95xsphKJW6obRiq3Oni-uXphdb6hH3bYvOuV_', 'ECABANG9BE', '', 'INR', 'en', 99, '2024-03-26 11:37:43', '2024-06-02 12:25:11', NULL),
(10023, 'Abdul', 'bro', 'parthiasho99@gmail.com', '91', '1', '9876543210', '$2y$10$45yilFnqU.osQlyvovskyOlgrwYhfXVfAl6RJqsBowgg5o8wM7BCO', 'Driver', 1, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay04em9yMkBidXNrYXJ0LTc0YmU1LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstOHpvcjJAYnVza2FydC03NGJlNS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tL2dvb2dsZS5pZGVudGl0eS5pZGVudGl0eXRvb2xraXQudjEuSWRlbnRpdHlUb29sa2l0IiwidWlkIjoicGFydGhpYXNobzk5QGdtYWlsLmNvbSAtIERyaXZlciIsImlhdCI6MTcxNTM0NDAwOS4yNDUxMSwiZXhwIjoxNzE1MzQ3NjA5LjI0NTExfQ.iexh6UU9suI_dEztpw7wl3KR9Bcv1Po9RGlVUUf9KL11nHjny98cko5iZ71wfzXt7Ky7i3xyvSiS3a4VyGn63deR0OG58sK5eFOIS-eo7cGwh6PzNhcF1TBj8ucmhBjlWsojEEzvo3zANq7IGP1tAqTXAZ_66Ynl7i4Oh9bivmv_Q3ZC32nToRsdyafENyomqqcoJ73-9v9HaCifKV95woPBPV7jbnZHGEN02PCtYn4LAg8h314BwEqavl7RwJdGuglGWnmbXHzwS52MgcHHta7OL8lyn8Znp3uX_O_qI7KjlOrn2pqJ2gNJFEUpto-sDmeonI_nARXwH88uSs5bEw', NULL, NULL, NULL, 'Car_details', NULL, '', 'RPW1FLOGUJ', '', 'INR', 'en', 99, '2024-05-10 11:52:35', '2024-05-10 12:27:02', NULL),
(10024, 'Parthi', 'a', 'aparthiv09@gmail.com', '91', '1', '7558103852', '$2y$10$uRT6/oFZu9SavKFjkFLaJe4goYmRMVuOMrsPbVmQKTFq9KwVKmwW.', 'Rider', NULL, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay04em9yMkBidXNrYXJ0LTc0YmU1LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstOHpvcjJAYnVza2FydC03NGJlNS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tL2dvb2dsZS5pZGVudGl0eS5pZGVudGl0eXRvb2xraXQudjEuSWRlbnRpdHlUb29sa2l0IiwidWlkIjoiYXBhcnRoaXYwOUBnbWFpbC5jb20gLSBSaWRlciIsImlhdCI6MTcxNTY3MDUyNi4yOTE4NTcsImV4cCI6MTcxNTY3NDEyNi4yOTE4NTd9.NIO0FUJDcMJ7x1mDzTeMFtLogspNCrMzA7uHYXMXnCUkC1NmygB0VZ-3X-cZkKVfUs1wf440EHpjo9J7pQfBmXUiuXR_un_lfUmRcSeDtcP1gtzeJD2pWyoykVYlEcdJ-GlN69A8AgpuR55f_AmWkBEFRzWLmFHd5G0GIuMX_3t8gu4ZXMlwPXqZLkfEXGRMrg12GbCfoMypurfWc4stpBONYb6XridzljLKLrp0GNie1rhcT6s0eIoEtz1vINTF1Ivx92RKb0eNcX0yZK0u22NssUOCoF1Imm4Pq77uWjqsQQyV-b3XGFmLOIWCdDWBpAM20WchaKIJ5mZxx3QYQA', NULL, NULL, NULL, 'Active', '2', 'fhlvpbOfSjKPa4-TMWkEMT:APA91bFlruTNpzcZ7k13Lxecvaq39LWtswgTxM6fsSjH0_zX5lD2zpA1VqJsP5FAJrit0IlJPiUE3-AE6gDG4v0ZDMudV1iWf4HqMOolId03YLQltUeUqLWa1LBNe6_JJD4NaT4sTwCh', 'KYHFUS87A0', '', 'INR', 'en', 99, '2024-05-10 11:57:36', '2024-06-08 16:59:16', NULL),
(10025, 'parthiv', 'A', 'aparthi9@gmail.com', '91', '1', '8807342425', '$2y$10$kZ9CTrpDOfjwXGq92ihuxOL9F9trPmPkMJRBMv/pSHB7VKE7OVMlW', 'Driver', 7, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay04em9yMkBidXNrYXJ0LTc0YmU1LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstOHpvcjJAYnVza2FydC03NGJlNS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tL2dvb2dsZS5pZGVudGl0eS5pZGVudGl0eXRvb2xraXQudjEuSWRlbnRpdHlUb29sa2l0IiwidWlkIjoiYXBhcnRoaTlAZ21haWwuY29tIC0gRHJpdmVyIiwiaWF0IjoxNzE1NzUzNzg2LjI0NDg0OSwiZXhwIjoxNzE1NzU3Mzg2LjI0NDg0OX0.LtYGj9fhDNheAx0pOR2gm-GXLrHYOmqLx78sfTahWUuCpDadhV04mj0PDUaR0VztvDjXFPKUo2rcx-Hjj1IgkoX0Q8qxvEHLyFnMWVnFcOoBxfSVc0iZhZxMmKkNz4Kp0z2SxEX9wKYleuW2E4ydocTWQJwO02OdyF61pprably7P-v-sUiqytUvTnY4rb0lPU7EjR_kCMMwTh-53svJ8KdBBuJdfCoLMqiBmqS236tjfvFTyGdUohmkUYBf5rFTAeTQYoEMB5a5XOKQss6aNsR0dF_Pqc8D-2rbW4FJQ3nQRLpgyOvxTlReOCJm5Sw9AwUkNBUNYnAwPD7eLm61QQ', NULL, NULL, NULL, 'Active', '2', 'dyy0n_12Q3ORUt4ovXU_2i:APA91bGMYbXNt1dUGo5I1cYCcDbSzmIXvjpFwikSpFAqIxrhhTeaHMhPeMP_ploKDsFybLInIEWV3XzaCWAXtCtENUSpwemoGS1gvT_v3v9S22FfeoHS7tdTmYPgdoa6bBpr_6QCFg34', 'SPVYS1SMEH', NULL, 'INR', 'en', 99, '2024-05-10 12:04:16', '2024-05-15 06:16:26', NULL),
(10027, 'Vasanth', 'Kumar', 'hrais@gmail.com', '91', '1', '9876543201', '$2y$10$YA9KXTMgnN2Z83i4DztXjeLpiF0SANvWb/mJ4RzjI01.HgA3zTvhu', 'Driver', 1, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay04em9yMkBidXNrYXJ0LTc0YmU1LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstOHpvcjJAYnVza2FydC03NGJlNS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tL2dvb2dsZS5pZGVudGl0eS5pZGVudGl0eXRvb2xraXQudjEuSWRlbnRpdHlUb29sa2l0IiwidWlkIjoiaHJhaXNAZ21haWwuY29tIC0gRHJpdmVyIiwiaWF0IjoxNzE1NjcwNTEzLjkyMTI2MiwiZXhwIjoxNzE1Njc0MTEzLjkyMTI2Mn0.dwUt7ZE0O4Hx9yrn7U5EReIdwokuDbFG9AvX3jxS1CHGRpBmVxtnArh3v_AIIzK8oZAAR8vU1dx2sIuvqofJ_1mV_ZfcQfetZ9yb3TvyhXZB-ywQ1mTUekHR9O6w6Xh_hdnWwqPizaC664I7WUy4Kw6SzX0WY6KJ79U2HVl8YMb2_vfneugOGBz9ZKZrh4UL2B2_EKwsxMv5WfX5jPvr_ALqkg12ocQqybu8_5eJsTxEHnIPjmYT9CRkYVV3e1oo9cpVVRs4vlbubqxL-Oe2quvEzp4CvJc-yxPccXUej12QgrOfWWLfYaCQBad8r7U4w1-guTZY8atgoKKchzx7Hw', NULL, NULL, NULL, 'Active', '2', 'ep1mMBEWQ3q0_w8m1lI1h-:APA91bG-6CFl9f-ZraDUs28Z7vwZZY6cvjxru3iVi8FlXOsoE3viCA1wfajUrVqnsPjaRjtk_44Gt9AgvhnhFLr4gW9d5c3we-i05qDjH3MXvrwPrAhzyH4DyTg9OvqDTUw0Q7bJhCHk', 'B9BQJI5NAQ', '', 'INR', 'en', 99, '2024-05-11 08:46:50', '2024-05-14 07:08:33', NULL),
(10028, 'ILAVARASAN', 'P', 'ilavarasani847@gmail.com', '91', '1', '9655311949', '$2y$10$r9KXNd0HGYC38uvI4XUb2OFKm3scqPLrt10W4LdMzIq2TApDI.O0q', 'Driver', 1, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay04em9yMkBidXNrYXJ0LTc0YmU1LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstOHpvcjJAYnVza2FydC03NGJlNS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tL2dvb2dsZS5pZGVudGl0eS5pZGVudGl0eXRvb2xraXQudjEuSWRlbnRpdHlUb29sa2l0IiwidWlkIjoiaWxhdmFyYXNhbmk4NDdAZ21haWwuY29tIC0gRHJpdmVyIiwiaWF0IjoxNzE2NDI2NjgxLjAxMjg2MywiZXhwIjoxNzE2NDMwMjgxLjAxMjg2M30.g9WelaK2gzrcUE6otgtMb_zjmoEZxly60ugMukLJ1I6oJe5gZ8JOwc_vVsDrvRNtfgrgWdNH1KO9bD4D6N2xvNihDqkVDZCpruaCSAkJa1mX3OpwxupTafMNRZXClNvR4aXoKmu47n1Vxu-GjL3Rws5QBa-hiDzCqWfDEV4XI6TRKh96_xrOxf_bSXQkUr3iup6s_AftgHg1ZJtmoy6XBYbbO58VhI4VeFL1BakZtjadt-t8OpyJWMLvzB6eT6hHCt90QTiX8LAT57VvS-ysGbVBz00hQ_CFDh06RJ5D7C2s8HBJdq00qeuLJObDLbOPmr9F-k9Mt3LsO1EDzgh-Lg', NULL, NULL, NULL, 'Active', '2', 'ewGt_OGuSB6bh4na3uq80w:APA91bHQuR6t62YCtMgk61t6A9_e7I5GYxBg-pHX5HmZq9fBIdaYrMHpUQKX_lvlJ6hK_r2-fI8ok78MdcMqEUg9p5O5dTIf4c4AOGsxjPMNA3outP4s5PaX1ofk0abIeVV5k_4a7pCk', '5QPYAVA4ZE', '', 'INR', 'en', 99, '2024-05-11 12:32:02', '2024-05-23 01:11:21', NULL),
(10029, 'Vasanth', 'Kumar', 'vasanthkumar81223@gmail.com', '91', '1', '7558103886', '$2y$10$sJASySTf3A0KJkDsa7Q1seOJqgCBgQEP0j1gqxFPLGi9jpZCeRKn.', 'Driver', 1, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay04em9yMkBidXNrYXJ0LTc0YmU1LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstOHpvcjJAYnVza2FydC03NGJlNS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tL2dvb2dsZS5pZGVudGl0eS5pZGVudGl0eXRvb2xraXQudjEuSWRlbnRpdHlUb29sa2l0IiwidWlkIjoidmFzYW50aGt1bWFyODEyMjNAZ21haWwuY29tIC0gRHJpdmVyIiwiaWF0IjoxNzE1OTIwNDA0Ljk3OTQ1OCwiZXhwIjoxNzE1OTI0MDA0Ljk3OTQ1OH0.SAoI-ofPAohaytLs36Fvtj1wn_KvJbv9WE4qNHHQFOK5qm9AXHqC2x03Hk_PST44IfigxTux-vOfJW7GNTyySuGSfx-AOexaA9QE90bBJh-OFEQqswZB7dLLN-L1tQGmLJoUDb6xMpqOwzLTUft60c5tpPjeGEDEHsFtVIxfNRxMMVBgz-fVzQ8sOT3pGFsDbpn5G5JxcizzAGrav5UBxwelcPdMrfgv-rX-K5iMZriFQR19msPLIFXO3_amYioEVjNmyEnB3msS7cV2dPKOGGnz_gko60HJ4o3SHxzl-r7VYjd_IZJ5KoxefhNnxSqGVPiZdmHkYMWRzRGxMzpGEg', NULL, NULL, NULL, 'Active', '2', 'dd9LjGg-TNe9rffNi1woua:APA91bH8-Rbsu9jgUlrEOMj9yWGPOn7qcbaElCXqIebxXHndFfiNJUO2fusueyJSHCrmZEhY50b_FCWGc5vDNqVxEjryPz1jkES6OtYita0JYaYBLR79j2QTQyMcahLMiv1yRVWQJAeD', 'VGJDEQTMNI', '', 'INR', 'en', 99, '2024-05-11 12:35:52', '2024-05-17 04:33:24', NULL),
(10030, 'Vinoth', 'Kumar', 'vinoth9629263298@gmail.com', '91', '1', '9943800582', '$2y$10$.pQUg7b7py9VyY8kiHQFSeoUYHI.zPDa7XzThB91gSL41SjFzyHxi', 'Driver', 1, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay04em9yMkBidXNrYXJ0LTc0YmU1LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstOHpvcjJAYnVza2FydC03NGJlNS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tL2dvb2dsZS5pZGVudGl0eS5pZGVudGl0eXRvb2xraXQudjEuSWRlbnRpdHlUb29sa2l0IiwidWlkIjoidmlub3RoOTYyOTI2MzI5OEBnbWFpbC5jb20gLSBEcml2ZXIiLCJpYXQiOjE3MTcwNjgzNTUuMzAwNTU0LCJleHAiOjE3MTcwNzE5NTUuMzAwNTU0fQ.aB2ab5jb2PRB90Q9R5QdVN5mboPhJf_T0bum3qZDhu0dTUfwXNT6ruut50IpJjI6B6sgvJ8B4LPJdtkAbfiv4bLgWQfAjby9PksXvbLYWaktNIG17owity9MgoCYlpjVob5MxU8wxs_VIid3BHZw_4SgAxvaKxrGdK1_KMjc8ApQ2IbTdRsEJyGyjI5Xzm4tHQzWQVWDJ67Qd1m12kO6KrqSxYgmmtlSEbrSguMaBpTORVnAZANGdIS1hyk6jeKNxoHsclSYmcW_JJ75CtECkNa4ZBfDsHbYfTI-xmnDncsbmfSWLCMvw5fs4PH_yO12qWL0fBi6puK1pjkcFyovLg', NULL, NULL, NULL, 'Active', '2', 'f-ap9LvtSGKHLKvrhLqBTn:APA91bGiSIgjeN6Ap6F9WDRH3aebzC-gxBN0ylLxt-XAhcDP5s8jrAG1NsezOkz77m5e0ygdyntBdtASquOOi7J4XaUAbwfAbWbUf_T219EzLFaPcKLExKy8zLHdasWGU38yTsxWo_5e', '29PNIBTBFO', '', 'INR', 'en', 99, '2024-05-11 13:26:16', '2024-05-30 11:25:55', NULL),
(10031, 'Divya', 'Pranesh', 'divyapranesh77@gmail.com', '91', '1', '917010027066', '$2y$10$M.8xhViwPnDU/2kVG85zuuHSxyBkFzkkReeHTGH8s.IyRiakZxRwG', 'Driver', 1, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay04em9yMkBidXNrYXJ0LTc0YmU1LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstOHpvcjJAYnVza2FydC03NGJlNS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tL2dvb2dsZS5pZGVudGl0eS5pZGVudGl0eXRvb2xraXQudjEuSWRlbnRpdHlUb29sa2l0IiwidWlkIjoiZGl2eWFwcmFuZXNoNzdAZ21haWwuY29tIC0gRHJpdmVyIiwiaWF0IjoxNzE1NDM2NjgzLjkxODE3MSwiZXhwIjoxNzE1NDQwMjgzLjkxODE3MX0.hS0w0MyCchlWOU4RqD-lObRVwD2igcqbIJFyqiWYdG0MATc6KN67KhquvaKX1_yc7mbc6AHvbbLPeJRZ28IadpRTDr3EaTp8sMGQG1ZQYpv9CVd3dTr-2Kv99n6xtlCvOD5UDT5nfajz65x7UgNjPrvJRn-ArFkVDHqznQCWWC7aBGBQ06qwBWDdWNWHMHxd5dLysr4RSG4R9qzTxddpjHz5NrfrjOBcQG0Y6YxpYmuR9rQMRsW1vq7NzpwlW8nXnL0hOz2fQuqRAm_swouq5C5ZiGygvdbQD_sQXU_lai1_GgNAxkWGIFfl8unMUekFDiT-3kTjhoffaWn9bP6frg', NULL, NULL, NULL, 'Active', '2', 'dOKBf_-vRUqMBi_uqjN-Lv:APA91bGJoSDzRT2BD-e8k_uVYnE6boT6fGOfXvB9ikLT7RtZ-UAZa48TsGguraoU2_BpOKXZBYmUbAvVmkAylV3qHmH1HKHU0CBvEZ9-oP5BhbUJRaBYNV8HhzvKTR3lHyzi6gu-bGaN', 'AWELNUFTBU', '29PNIBTBFO', 'INR', 'en', 99, '2024-05-11 13:43:01', '2024-05-11 14:11:23', NULL),
(10032, 'Yuvaraj', 'Yuva', 'yuva82926@gmail.com', '91', '1', '8925023655', '$2y$10$iyfNUK05dDLkFudoFHxyheUxOPPiWxeWuxBu1n0qmPNPP.vQP/ilW', 'Driver', 1, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay04em9yMkBidXNrYXJ0LTc0YmU1LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstOHpvcjJAYnVza2FydC03NGJlNS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tL2dvb2dsZS5pZGVudGl0eS5pZGVudGl0eXRvb2xraXQudjEuSWRlbnRpdHlUb29sa2l0IiwidWlkIjoieXV2YTgyOTI2QGdtYWlsLmNvbSAtIERyaXZlciIsImlhdCI6MTcxNTg3NDIwOS4zMTM0NjgsImV4cCI6MTcxNTg3NzgwOS4zMTM0Njh9.IOebc6A0Wx0srtetdiDZ0I_qHxnLitgZILfkeODQ3OVPrkUQs1nquQrGYmWd1xoJ2NCtdEeOGwYHXb-NGbIUWjAyfKAxLkjLiPlRZGL8fIDNZ1fon_KbFlBEmlgYxOsFS7wVro8Sjp02DskX7lteRyaz8DBlKd_mAIrf7wE977DnRs_i3EZ5FRl3LcJChqNhFTC9o4gAecDDISUBA3nN32YkjQZKfEZgzJzlFPHaQGEEYniJxL3JiWqrRnLeqMIhfm815exoInhDVsCELLg-59netPma_apCtQxF31i1D4J9k2JuxlwuJKyQIncEuSSrZ6NveubGPyE9jfXNNwprEg', NULL, NULL, NULL, 'Active', '2', 'eiFgW9SWTjOW-yzPqHc1q3:APA91bF5zc7bYAvFCXVNkRPQY0veiTrq4EyC5Y2i5yR0npHGHkGM7TcXP-1Nr-d6mDlIoAIE8CoiBBaeGMjEAZArs7HHD3KGWJkBTDqlNw0zZTr1URRPrL841T_UovKv11wYXQuR7ruy', 'YL5ETNLA4Q', '', 'INR', 'en', 99, '2024-05-13 04:29:34', '2024-05-19 13:28:28', NULL),
(10033, 'VIP wddd', 'Travels', 'ammu03082003@gmail.com', '91', '1', '0987654321', '$2y$10$BaF3ryn.qvRkaMLHgbrAy.Kf6I.0LrwWreFRUBGh8789CUKjmyuRS', 'Rider', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, '', 'OHK1JXRFPC', NULL, NULL, '', 99, '2024-05-14 10:50:05', '2024-05-14 10:50:05', NULL),
(10035, 'naga', 'nandhini', 'nn0021896@gmail.com', '91', '2', '55550745547', '$2y$10$D2QwH6NwpIYENsbASb0pjuAqIZOQOGuO1au/.t52C31/bVzgsvN4q', 'Rider', 1, NULL, NULL, NULL, NULL, NULL, 'Active', '2', '2', 'HRPRO7OJMR', '', 'INR', '', 99, '2024-05-15 08:06:40', '2024-05-16 07:43:42', NULL),
(10036, 'naga', 'nandhini', 'itsnaga47@gmail.com', '91', '2', '9360745547', '$2y$10$0eQYTjA9A9OovubIuzbtQ.GkclCqhIz7.BB4N/0hYGJJy6X4Divgu', 'Rider', 1, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay04em9yMkBidXNrYXJ0LTc0YmU1LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstOHpvcjJAYnVza2FydC03NGJlNS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tL2dvb2dsZS5pZGVudGl0eS5pZGVudGl0eXRvb2xraXQudjEuSWRlbnRpdHlUb29sa2l0IiwidWlkIjoiaXRzbmFnYTQ3QGdtYWlsLmNvbSAtIFJpZGVyIiwiaWF0IjoxNzE3NTAwMDQwLjAwOTg4LCJleHAiOjE3MTc1MDM2NDAuMDA5ODh9.Hz_jEmWML9TrKIkQNeN39i4NtVDF-AKPPIlKKb8Ttm5g1Jh01UpKH1ykH_zgOXzbFzsvcZgibufsrOwewD3P2qmisQgsvojNlLgdZnjoalTXPYI4j7DCtFCX9HgQSKYNuWYs5e_4s4fNqxnXM3BvMuQiaMx1l10SCxSiI5dEKQlWoGz753p_0pe-Q7Z6ppF5xNShsol14a1pq38MfCtVcQ8PYp3rJX_GI1krjgR4I9rvkoG5HghL1UlkuvwjWtFIT7uoI8lgzXnZk7Y6FBvKuXuo7cG0Xg5tZGRwRDT4R6RFu7qzSadYgT86vux11TZ6yRR5qVGPjZ4Yopnoay3grw', NULL, NULL, NULL, 'Car_details', '2', 'f3z6HgggTKWN3wlCkCDljU:APA91bFZGsZPSeUpPyr71IYhhBKBH_fH7AfPy1nCX9BwWSKAuqSHQGL_ejlnlJ3uvXL3gHNd4mJPboJ9GzCvjFwHZEpT7rUHmaGfFdFKawMwEkLvZYMM6MJF_dP-0Wj03iUN8B3vyYhl', '3DGMTWAND9', '', 'INR', 'en', 99, '2024-05-15 09:53:38', '2024-06-04 11:20:40', NULL),
(10039, 'naga', 'nandhini', 'safrin@gmail.com', '91', '2', '7530057501', '$2y$10$O1vWIA6v.uSDso7nGMfzUuchU1tiYGclJl4WQXclCy9aXhblSStla', 'Rider', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2', 'eM3dWJNxQdGDzLonNn6_3g:APA91bHjzM7mWTn5vWy0LJlo9V0vb2j-UGH6dsojwkZg_Lv3umpVWFh9F01Av4X7aE3p-gyyVcyjK3Bx170E1ngV4FV3obpm5BisuJTovwl2xJZHy2deAq3FRwI7TUJZmuVKjSrRGygJ', 'Z7CCPLGB5F', '', 'INR', 'en', 99, '2024-05-16 05:50:00', '2024-05-16 11:51:29', NULL),
(10040, 'Muthu', 'k', 'parthiaok99@gmail.com', '91', '1', '9787698253', '$2y$10$qlD7lthoxF8RIUOgleJbwexhMRDFWUDqi1DaUAgpbNmOEO7APMEZi', 'Rider', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2', 'cUbbdN9xSJuy2z4TyPhb5y:APA91bHgBPPUGrVQh3JF3O432YJ51FO6N1dIGVOLnKTWtlMgGItyDcYh7sRUrsTH_nC9lImrNmPfAOtUmjO6qxtjDE2m1Fe8eKip-q_MBuBnCgwNpF0D2hZ3GB70wF29WYNEQvfRKVS4', 'WO7R1LRZA0', '', 'INR', 'en', 99, '2024-05-16 06:30:30', '2024-05-16 14:04:34', NULL),
(10041, 'sala', 'safrin', 'safrin2@gmail.com', '91', '2', '7530057503', '$2y$10$u9vFxFECV.Wzzn3PVpps8u1Ru3//IS1.g6RkXGFr2Ws9CduvUHIPO', 'Rider', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2', '2', '8B8K6FOK19', '', 'INR', 'en', 99, '2024-05-16 11:46:09', '2024-05-16 11:55:00', NULL),
(10042, 'Raj', 'k', 'raj@gmail.com', '91', '1', '7098765432', '$2y$10$7UFy8rYHn4olccEmSuRmHufT/MSf37vYDzOr9oatQRIeILl16Q1PO', 'Rider', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2', 'cUbbdN9xSJuy2z4TyPhb5y:APA91bHgBPPUGrVQh3JF3O432YJ51FO6N1dIGVOLnKTWtlMgGItyDcYh7sRUrsTH_nC9lImrNmPfAOtUmjO6qxtjDE2m1Fe8eKip-q_MBuBnCgwNpF0D2hZ3GB70wF29WYNEQvfRKVS4', 'ALKDE9MQB6', '', 'INR', 'en', 99, '2024-05-16 14:05:13', '2024-05-16 14:06:52', NULL),
(10043, 'Babu', 'j', 'babu@gmail.com', '91', '1', '8098765432', '$2y$10$x6EpfXhnQzGAe7dY2RjUdelfCFZ/23edUtjFDE2uNR3.r22e2/cKG', 'Rider', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2', 'cbdzAomlRmKRWlODbehAB2:APA91bFnKKvB1f2KpxnF7AjAdDbmwLxkRm8kEvB_vlXnM8BKrnyAjxIWSdvxOv2eVwF-NJ9CPcE_TXd3Zu8xX_7J8RfS3lHcn06jqTh4rkStLcpf9FWBnurJrzS2X61QffFEaSJwhi6O', 'ONVXZPXTQB', '', 'INR', 'en', 99, '2024-05-16 14:08:42', '2024-05-16 14:09:20', NULL),
(10045, 'Hari', 'haran', 'palanipalani8080u@gmail.com', '91', '1', '6381296004', '$2y$10$lYwirDRYCBdtFoq6dR.clevzrmYWSKdfq04.fb5oKo9e3tRXAZ7UW', 'Driver', 1, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay04em9yMkBidXNrYXJ0LTc0YmU1LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstOHpvcjJAYnVza2FydC03NGJlNS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tL2dvb2dsZS5pZGVudGl0eS5pZGVudGl0eXRvb2xraXQudjEuSWRlbnRpdHlUb29sa2l0IiwidWlkIjoicGFsYW5pcGFsYW5pODA4MHVAZ21haWwuY29tIC0gRHJpdmVyIiwiaWF0IjoxNzE3NTc5Nzk2LjQ4MDg4MiwiZXhwIjoxNzE3NTgzMzk2LjQ4MDg4Mn0.PLi4Mb7vPpME1gIEh-D-G5-UWzDG-wDSp7xYfJ6lduNvtiaOeYjgd4EKgkOh0c6pkRFPHkesz_4F_tyAS-ZDQpf3o0JPCJS2KRb1ci70KG2oOmFA8V2weIzoKD-PHdduWtINFzcFalufUJ-dv4MFp5bPwiTn56ZMazQiBahOMDwWAR8hSgzxxmdRVYfkIFGgvsYnqgSdK69Tq48W4KE3S7-CHv9RROXEpnguf_lPBAnl-cmi_se75dKHZuS_dFoUfMu7psyZaWhTa1jIMFWV7qBVToNwkF_Sg2ymyKeUWZFwM0J05F6zDjKYfZ7giF7nRTIRUIRjw1BK9qa8L9C_tw', NULL, NULL, NULL, 'Active', '2', 'f1k27yQgRJGsB4IJ5v9r9q:APA91bESmz6pVRFXUfhwGolcOqJk9l474U3l2dSVNlkFnRSy7MBb2oRxdcoWPGTuSk2zV1K15vCsu_Hum0oN1VaS6Prko0wcKdiYAlhvZwMA4qiw9iVEC7Ev849VvxA-0-9cASne8-iq', 'OEVYOXKRLN', '', 'INR', 'en', 99, '2024-05-17 04:46:42', '2024-06-05 09:29:56', NULL),
(10046, 'Manu', 'Xavior', 'manu.xavior@puma.com', '91', NULL, '9900243704', NULL, 'Rider', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'K6EDABSI7G', NULL, NULL, '', 99, '2024-05-17 05:18:33', '2024-05-17 05:18:33', NULL),
(10048, 'Vasanth', 'Kumar', 'vasanthkumar8uyy122003@gmail.com', '91', '1', '9940825270', '$2y$10$0Mnqmzr23w1k0Icus0tVh.SlFvFxK456.KAiXw4LXkhGc.CDUN19G', 'Rider', NULL, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay04em9yMkBidXNrYXJ0LTc0YmU1LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstOHpvcjJAYnVza2FydC03NGJlNS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tL2dvb2dsZS5pZGVudGl0eS5pZGVudGl0eXRvb2xraXQudjEuSWRlbnRpdHlUb29sa2l0IiwidWlkIjoidmFzYW50aGt1bWFyOHV5eTEyMjAwM0BnbWFpbC5jb20gLSBSaWRlciIsImlhdCI6MTcxNzU3OTYzMS4zNTE4MTIsImV4cCI6MTcxNzU4MzIzMS4zNTE4MTJ9.nqqOxgltEuWP9vN-2s0g6JEf7z8LMhI_SrITla-AA2pv0KBWcPTBnVqrkXGP1tCETxUlkUQ2uqUmwmwVkhDTgEOvx3T0p7yBc5R7MNizVWoK29_VJF78vJpubHjQ9LK-2gh9ipPC1LIExC6c8ldoHq3ML903_KccKY61T_yAKn__y8RtPZCoqP9E_0fdtQ3ErVlG6fY25YwrAuyUjT0EtCe3GRPfHMIUnk63hD7gBKNa2lje3x3UOG68x6DWenJT4VE2b7MIHDMpdv-3TRZMJN7vyxYRwG5zspBTv1bUAPI7ri-QGbcuoGy6THd3gVsUp_Zh-EQqNNuaq8T3R6ZVJg', NULL, NULL, NULL, 'Active', '2', 'cqgvKaX5TsCliSoOKop94R:APA91bFL-gVDaixCLzau_pFnvW7BGU62lheYJWrqJq3RC3AC1EPYAirWqM6BtrvVVTxD4irsk4bSXI3qmxK2cTza-U8Qet7s1Hvn2Vd95xsphKJW6obRiq3Oni-uXphdb6hH3bYvOuV_', 'VATNALGCGM', '', 'INR', 'en', 99, '2024-06-02 12:25:43', '2024-06-05 09:27:11', NULL),
(10049, 'Ram', 'kumar', 'ram@gmail.com', '91', '1', '9876543210', '$2y$10$EgibZIW3MXVw.x9ziL4kdeCCkwOY/kNIyp.lPF0mdax/E3GkGERE6', 'Rider', NULL, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay04em9yMkBidXNrYXJ0LTc0YmU1LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstOHpvcjJAYnVza2FydC03NGJlNS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tL2dvb2dsZS5pZGVudGl0eS5pZGVudGl0eXRvb2xraXQudjEuSWRlbnRpdHlUb29sa2l0IiwidWlkIjoicmFtQGdtYWlsLmNvbSAtIFJpZGVyIiwiaWF0IjoxNzE3NTAwNTE2LjY5NzE3OSwiZXhwIjoxNzE3NTA0MTE2LjY5NzE3OX0.nvS77-EX9BXvqk_qKEue9lnS4brAsqs5kZiBf7Fk02zccW9AWxb8gJ184j2wQm73Wcr5wNatQhrr2pvqhNqx_bk5Kz-PRlfyLIXPReJa9VMFeMbiHrEisPTSDPoYOt0euy1dFRmq48ofqyf1sDuA0lb2I_dnKEnrk8r_GzMx_Ur658-CfY2ZhgD1_zaXhaMA2WAdJYF8T3-DXhl3DyzHEBfc1mYq7tee2IPpERCKmrLAcwU0pKONg-xjfUz-WogihdHIMT_Z7iHbGKH6JbY19Fi3s8m_ggWYa0vWEmcYpIb449SbXKPb4wswLCe2yxwx1cpikCuaVJIxov429d10GQ', NULL, NULL, NULL, 'Active', '2', 'cAUYJot-QjusP9HdGve3KT:APA91bE4XnXC88onAQC2YvcOhTggCi4HYeMiYrbRICgTU0pKibnfH88a3-D4OlbpHVIu9g4CgpRT14qlY6x8EeuDDyJlDzPn4z2jfx-wGYFz_BVfJt5wO2JzHb904XXLayhK7g-ESzn6', '4IMHSCEE7C', '', 'INR', 'en', 99, '2024-06-04 10:57:22', '2024-06-04 11:28:36', NULL),
(10050, 'Vinodh', 'kumar', 'vinothmedia@gmail.com', '91', '1', '9941221132', '$2y$10$vtq5viBb4AFTcJ8BJmSUdeAFCAn1xr1a0hLMgf69pnLHhifZ8Wuz2', 'Rider', NULL, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay04em9yMkBidXNrYXJ0LTc0YmU1LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstOHpvcjJAYnVza2FydC03NGJlNS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tL2dvb2dsZS5pZGVudGl0eS5pZGVudGl0eXRvb2xraXQudjEuSWRlbnRpdHlUb29sa2l0IiwidWlkIjoidmlub3RobWVkaWFAZ21haWwuY29tIC0gUmlkZXIiLCJpYXQiOjE3MTc3NDE5NDAuNTYyODc5LCJleHAiOjE3MTc3NDU1NDAuNTYyODc5fQ.HoAyC_a6pqnwfk8uY0a5emJo86JXY17cMMitw33WcWiwt7zZhTzLGJGk1GiFTJAZZrccRzBr8fncP2ga9ECz7oPrYONuBr_HFD3eZKKKpUX2o9FVbDjg7sP4W2Sq8h15rWZWuO0ayxKjWVnbriFhCw00sZTGfeX9VtOIxqxGbuzgz4U65THBxIpW_aPnzHlcc1jSGt29TNI35m8zF0moNKKbcEqVOQB8zzkxnlVxo1kLESFD4q3ASooq0MqiqG26FKtmlnmcBo95byJSY4cvnY_NALDOuTz0BmKe33tBg3yK_cJIMjs5ubpMGlfiznTIUqoRERrgoWPPK9YidUzGug', NULL, NULL, NULL, 'Active', '2', 'eFuzEAQyQA2MzCo0GrcAej:APA91bEX_A9iwEIypOkWaZAWVSsnWSdNuwuD4oqMkd92lUqA7efIJ-tcE9acfGhNUsFgjLxgRsCY71tezqFBhwSf26bd3qhmdJag6zpNNsLq9Z_vRtCLi7FTCFOwbLWH9yWns1zol-b5', 'BGDTMMYUKD', '', 'INR', 'en', 99, '2024-06-07 06:27:46', '2024-06-07 06:32:42', NULL),
(10051, 'sanjai', 'm', 'sanjaijeppiaarcse@gmail.com', '91', '1', '9361557446', '$2y$10$a95Gw5GyPoCeiNLYeu6W9.nc6VCrelaUKMyNQmtMPXd5TfADQ0bIK', 'Rider', NULL, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay04em9yMkBidXNrYXJ0LTc0YmU1LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstOHpvcjJAYnVza2FydC03NGJlNS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tL2dvb2dsZS5pZGVudGl0eS5pZGVudGl0eXRvb2xraXQudjEuSWRlbnRpdHlUb29sa2l0IiwidWlkIjoic2FuamFpamVwcGlhYXJjc2VAZ21haWwuY29tIC0gUmlkZXIiLCJpYXQiOjE3MTgxNzcxNTIuNjUyNzMxLCJleHAiOjE3MTgxODA3NTIuNjUyNzMxfQ.OHh1BmFuvIKLQc4G4iUT5RrLHdNUWqDFiUjBMNOhml4wbbrP1GmrX6ksXZiymmD_dvWegl6zuGg5TofubDIewyZAPEJA-hBJlgP42OvibzNL-vtGJlS8eE_v144vGMoQFNC_tvMHbM_i6k5wmwqwAhThw3Sn8SujzW5k8MJkzEsLLK7Sbdgib5fBRmVs1aGxcyj0vvLKoIhrByKiWdOVdiaR9Zlwo55kfpah6uWJ2E5ViB90BQ1Xet4M0duejlQJuQa4vQ9jPSxCj3XTzVESbW4Eiy_PkDpMkSJPGmAS-CR26h2vc9NIZYqozOSrI_-xeRFcYQcux9S-CwbX_xMgGA', NULL, NULL, NULL, 'Active', '2', 'dTX0oo5WSS-LKQMVxFT6SA:APA91bH-GNpa2w7-eGcjY34pZ-DhK24Jcy18kdPP9Hexu1KmuMMH9zXOkOhG0E-rC5wpm-zdI9sq26nCY084Erlk0-AzmypnoyBr2bA-yg7qgRMTEbq8qDAAR0n_Rj349v-fF_L5NlZI', 'IJYEIATGDU', '', 'INR', 'en', 99, '2024-06-08 14:56:10', '2024-06-12 07:25:52', NULL),
(10052, 'sanjai', 'm', 'sa@gmail.com', '91', '1', '9384745000', '$2y$10$LpO/VCJvdMyS7mgtp7pHQOe9iCxX.yLkDOYwtUNQ7OGUo4fN0xWra', 'Rider', NULL, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay04em9yMkBidXNrYXJ0LTc0YmU1LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstOHpvcjJAYnVza2FydC03NGJlNS5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsImF1ZCI6Imh0dHBzOi8vaWRlbnRpdHl0b29sa2l0Lmdvb2dsZWFwaXMuY29tL2dvb2dsZS5pZGVudGl0eS5pZGVudGl0eXRvb2xraXQudjEuSWRlbnRpdHlUb29sa2l0IiwidWlkIjoic2FAZ21haWwuY29tIC0gUmlkZXIiLCJpYXQiOjE3MTc4NTg4NjIuODcwMzc5LCJleHAiOjE3MTc4NjI0NjIuODcwMzc5fQ.Xu7xzWXTYqSQUk4KnadKZEgMfHSi1n0u0m-mg8asPWAzKJHBAWH82yQji744Sp17l7gim8YA3wtwag3nACMD3KOHkDefFQLEWQwpJ0rio-B4W83nfkYDluq1aztas3MsddfTgBUB1qaXUlnY_gttleWu7csILM0Cjm9LVkF29EkZJexCsS8BIett8P8fvtzxSYZVRLdi_DJjqlcl5AZvt2MMijmZEzJ8oOaC_jtyIFBpHHLfI_CQG-U57AG4OKiNVvK0p9NpTyfZ0d8yA6peopFh111PAO_TaAV8LB2ZUmHjsjm-JZXB-3O7N0xviGeBs-SYkP9HCrvnte8DvcChSg', NULL, NULL, NULL, 'Active', '2', 'cnitTvJwRsS4tzwz-0-27u:APA91bHoY5hdZjxx9lXgWBwgXYpPWKsvXz84UQtVCBBrwxQeb5q9zCYvXp7ukN9S3Tbo8_b9pZz2SNTADHiaMML_TKBlhyifeOxVo3GhvXp2_WH_WFjUOHWZHwehx_YBgzSydu-2ZOxH', 'QO8VNWXJZO', '', 'INR', 'en', 99, '2024-06-08 15:00:59', '2024-06-08 15:01:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_promo_code`
--

CREATE TABLE `users_promo_code` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `promo_code_id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `vehicle_make_id` int(11) NOT NULL,
  `vehicle_model_id` int(11) NOT NULL,
  `vehicle_id` varchar(255) NOT NULL,
  `vehicle_type` varchar(100) NOT NULL,
  `vehicle_name` varchar(100) NOT NULL,
  `vehicle_number` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `year` varchar(191) NOT NULL,
  `color` varchar(191) NOT NULL,
  `default_type` enum('0','1') NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `user_id`, `company_id`, `vehicle_make_id`, `vehicle_model_id`, `vehicle_id`, `vehicle_type`, `vehicle_name`, `vehicle_number`, `is_active`, `year`, `color`, `default_type`, `status`) VALUES
(1, 10002, 1, 3, 5, '1,2,3,4,5,6,7', 'Hatchback,Sedan,Suv,Shared,Auto,Bike,E-Rickshaw', 'Nissan Terrano', 'CH1243', 1, '2023', 'Yellow', '1', 'Active'),
(32, 10019, 1, 2, 4, '6', 'Bike', 'Hyundai Grand i10', 'hdjdx', 1, '1997', 'hxhxxk', '0', 'Active'),
(33, 10019, 1, 2, 3, '1,4,5,6', 'Hatchback,Shared,Auto,Bike', 'Hyundai Elite i20', 'TN573748', 1, '2018', 'black', '1', 'Active'),
(34, 10023, 1, 1, 1, '7', 'E-Rickshaw', 'Maruti Swift', 'TN568966', 1, '2019', 'red', '1', 'Active'),
(36, 10025, 7, 2, 3, '2', 'Sedan', 'Hyundai Elite i20', '3259823UR', 1, '2024', 'REDS', '1', 'Active'),
(39, 10027, 1, 1, 7, '2', 'Sedan', 'Maruti Swift desier', 'tn36bu5688', 1, '2022', 'red', '0', 'Active'),
(40, 10027, 1, 1, 1, '8', 'Bus', 'Maruti Swift', 'tn36ef2445', 1, '2000', 'red', '1', 'Active'),
(41, 10029, 1, 1, 1, '2', 'Sedan', 'Maruti Swift', 'tn36gb6789', 1, '2021', 'red', '1', 'Active'),
(42, 10030, 1, 1, 1, '2', 'Sedan', 'Maruti Swift', '689719', 1, '2023', 'red', '1', 'Active'),
(43, 10031, 1, 1, 1, '2', 'Sedan', 'Maruti Swift', 'TN36gh2598', 1, '1994', 'red', '1', 'Active'),
(44, 10032, 1, 1, 1, '2', 'Sedan', 'Maruti Swift', 'tn25ty2556', 1, '1997', 'red', '1', 'Active'),
(46, 10029, 1, 1, 1, '2', 'Sedan', 'Maruti Swift', 'TN37DA4726', 1, '2018', 'white', '0', 'Active'),
(47, 10045, 1, 1, 1, '2', 'Sedan', 'Maruti Swift', 'TN37DA4626', 1, '2018', 'white', '1', 'Active'),
(48, 10028, 1, 1, 7, '2', 'Sedan', 'Maruti Swift desier', 'TN36hh1245', 1, '2003', 'white', '1', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_make`
--

CREATE TABLE `vehicle_make` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `make_vehicle_name` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_make`
--

INSERT INTO `vehicle_make` (`id`, `make_vehicle_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Maruti', 'Active', '2021-12-18 12:35:23', '2021-12-18 12:35:23'),
(2, 'Hyundai', 'Inactive', '2021-12-18 12:35:23', '2021-12-18 12:35:23'),
(3, 'Nissan', 'Inactive', '2021-12-18 12:35:23', '2021-12-18 12:35:23'),
(6, 'SUV', 'Active', NULL, NULL),
(7, 'HATCHBACK', 'Active', NULL, NULL),
(8, 'SEDAN', 'Active', NULL, NULL),
(9, 'MUV', 'Active', NULL, NULL),
(10, 'BUS', 'Active', NULL, NULL),
(11, 'tempo traveller', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_model`
--

CREATE TABLE `vehicle_model` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_make_id` int(11) NOT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_model`
--

INSERT INTO `vehicle_model` (`id`, `vehicle_make_id`, `model_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Swift', 'Active', '2021-12-18 12:35:23', '2021-12-18 12:35:23'),
(2, 1, 'Wagon R', 'Active', '2021-12-18 12:35:23', '2021-12-18 12:35:23'),
(3, 2, 'Elite i20', 'Active', '2021-12-18 12:35:23', '2021-12-18 12:35:23'),
(4, 2, 'Grand i10', 'Active', '2021-12-18 12:35:23', '2021-12-18 12:35:23'),
(5, 3, 'Terrano', 'Active', '2021-12-18 12:35:23', '2021-12-18 12:35:23'),
(7, 1, 'Swift desier', 'Active', NULL, NULL),
(8, 10, 'Eicher Pro 3009', 'Active', NULL, NULL),
(9, 11, 'Tempo Traveller 3050', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(7,2) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `paykey` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`user_id`, `amount`, `currency_code`, `paykey`) VALUES
(10001, 750.00, 'INR', 'pay_LiOd9ggoEimc94');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `api_credentials`
--
ALTER TABLE `api_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applied_referrals`
--
ALTER TABLE `applied_referrals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applied_referrals_user_id_foreign` (`user_id`),
  ADD KEY `applied_referrals_currency_code_foreign` (`currency_code`);

--
-- Indexes for table `app_version`
--
ALTER TABLE `app_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancel`
--
ALTER TABLE `cancel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cancel_trip_id_foreign` (`trip_id`),
  ADD KEY `cancel_user_id_foreign` (`user_id`),
  ADD KEY `cancel_cancel_reason_id_foreign` (`cancel_reason_id`);

--
-- Indexes for table `cancel_reasons`
--
ALTER TABLE `cancel_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancel_reason_translations`
--
ALTER TABLE `cancel_reason_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cancel_reason_translations_cancel_reason_id_locale_unique` (`cancel_reason_id`,`locale`),
  ADD KEY `cancel_reason_translations_locale_index` (`locale`);

--
-- Indexes for table `car_type`
--
ALTER TABLE `car_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_type_status_index` (`status`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_country_id_foreign` (`country_id`),
  ADD KEY `companies_status_index` (`status`);

--
-- Indexes for table `company_documents`
--
ALTER TABLE `company_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_documents_company_id_foreign` (`company_id`);

--
-- Indexes for table `company_payout_credentials`
--
ALTER TABLE `company_payout_credentials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_payout_credentials_company_id_foreign` (`company_id`);

--
-- Indexes for table `company_payout_preference`
--
ALTER TABLE `company_payout_preference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_payout_preference_company_id_foreign` (`company_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country_short_name_unique` (`short_name`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_code_unique` (`code`),
  ADD KEY `currency_status_default_currency_paypal_currency_index` (`status`,`default_currency`,`paypal_currency`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_status_index` (`status`);

--
-- Indexes for table `documents_langs`
--
ALTER TABLE `documents_langs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documents_langs_documents_id_locale_unique` (`documents_id`,`locale`),
  ADD KEY `documents_langs_locale_index` (`locale`);

--
-- Indexes for table `driver_address`
--
ALTER TABLE `driver_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `driver_address_user_id_unique` (`user_id`);

--
-- Indexes for table `driver_documents`
--
ALTER TABLE `driver_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_documents_type_vehicle_id_user_id_index` (`type`,`vehicle_id`,`user_id`);

--
-- Indexes for table `driver_location`
--
ALTER TABLE `driver_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_location_user_id_foreign` (`user_id`),
  ADD KEY `driver_location_car_id_foreign` (`car_id`),
  ADD KEY `driver_location_status_latitude_longitude_index` (`status`,`latitude`,`longitude`);

--
-- Indexes for table `driver_owe_amounts`
--
ALTER TABLE `driver_owe_amounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_owe_amounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `driver_owe_amount_payments`
--
ALTER TABLE `driver_owe_amount_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_owe_amount_payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `driver_payment`
--
ALTER TABLE `driver_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_payment_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_sos`
--
ALTER TABLE `emergency_sos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emergency_sos_user_id_foreign` (`user_id`),
  ADD KEY `emergency_sos_country_id_foreign` (`country_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filter_objects`
--
ALTER TABLE `filter_objects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filter_objects_filter_id_foreign` (`filter_id`);

--
-- Indexes for table `filter_options`
--
ALTER TABLE `filter_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filter_options_translations`
--
ALTER TABLE `filter_options_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filter_options_translations_filter_option_id_foreign` (`filter_option_id`);

--
-- Indexes for table `help`
--
ALTER TABLE `help`
  ADD PRIMARY KEY (`id`),
  ADD KEY `help_category_id_foreign` (`category_id`);

--
-- Indexes for table `help_category`
--
ALTER TABLE `help_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_category_lang`
--
ALTER TABLE `help_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `help_category_lang_category_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `help_category_lang_locale_index` (`locale`);

--
-- Indexes for table `help_subcategory`
--
ALTER TABLE `help_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `help_subcategory_category_id_foreign` (`category_id`);

--
-- Indexes for table `help_sub_category_lang`
--
ALTER TABLE `help_sub_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `help_sub_category_lang_sub_category_id_locale_unique` (`sub_category_id`,`locale`),
  ADD KEY `help_sub_category_lang_locale_index` (`locale`);

--
-- Indexes for table `help_translations`
--
ALTER TABLE `help_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `help_translations_help_id_locale_unique` (`help_id`,`locale`),
  ADD KEY `help_translations_locale_index` (`locale`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `join_us`
--
ALTER TABLE `join_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_value_index` (`value`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_fare`
--
ALTER TABLE `manage_fare`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manage_fare_currency_code_foreign` (`currency_code`);

--
-- Indexes for table `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_translations_pages_id_locale_unique` (`pages_id`,`locale`),
  ADD KEY `pages_translations_locale_index` (`locale`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_trip_id_foreign` (`trip_id`);

--
-- Indexes for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_method_user_id_foreign` (`user_id`);

--
-- Indexes for table `payout_credentials`
--
ALTER TABLE `payout_credentials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payout_credentials_type_index` (`type`);

--
-- Indexes for table `payout_preference`
--
ALTER TABLE `payout_preference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peak_fare_details`
--
ALTER TABLE `peak_fare_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peak_fare_details_fare_id_foreign` (`fare_id`),
  ADD KEY `peak_fare_details_day_start_time_end_time_index` (`day`,`start_time`,`end_time`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `pool_trips`
--
ALTER TABLE `pool_trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pool_trips_driver_id_foreign` (`driver_id`),
  ADD KEY `pool_trips_toll_reason_id_foreign` (`toll_reason_id`),
  ADD KEY `pool_trips_currency_code_foreign` (`currency_code`);

--
-- Indexes for table `profile_picture`
--
ALTER TABLE `profile_picture`
  ADD UNIQUE KEY `profile_picture_user_id_unique` (`user_id`);

--
-- Indexes for table `promo_code`
--
ALTER TABLE `promo_code`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promo_code_currency_code_foreign` (`currency_code`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_trip_id_foreign` (`trip_id`),
  ADD KEY `rating_user_id_foreign` (`user_id`),
  ADD KEY `rating_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `referral_settings`
--
ALTER TABLE `referral_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_users`
--
ALTER TABLE `referral_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referral_users_user_id_foreign` (`user_id`),
  ADD KEY `referral_users_referral_id_foreign` (`referral_id`),
  ADD KEY `referral_users_currency_code_foreign` (`currency_code`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_user_id_foreign` (`user_id`),
  ADD KEY `request_car_id_foreign` (`car_id`),
  ADD KEY `request_driver_id_foreign` (`driver_id`),
  ADD KEY `request_status_index` (`status`);

--
-- Indexes for table `rider_location`
--
ALTER TABLE `rider_location`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rider_location_user_id_unique` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `schedule_cancel`
--
ALTER TABLE `schedule_cancel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_cancel_schedule_ride_id_foreign` (`schedule_ride_id`),
  ADD KEY `schedule_cancel_cancel_reason_id_foreign` (`cancel_reason_id`);

--
-- Indexes for table `schedule_ride`
--
ALTER TABLE `schedule_ride`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_ride_user_id_foreign` (`user_id`),
  ADD KEY `schedule_ride_company_id_foreign` (`company_id`),
  ADD KEY `schedule_ride_car_id_foreign` (`car_id`),
  ADD KEY `schedule_ride_status_index` (`status`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supports_status_index` (`status`);

--
-- Indexes for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`),
  ADD KEY `telescope_entries_created_at_index` (`created_at`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`);

--
-- Indexes for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Indexes for table `toll_reasons`
--
ALTER TABLE `toll_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trips_user_id_foreign` (`user_id`),
  ADD KEY `trips_car_id_foreign` (`car_id`),
  ADD KEY `trips_request_id_foreign` (`request_id`),
  ADD KEY `trips_driver_id_foreign` (`driver_id`),
  ADD KEY `trips_toll_reason_id_foreign` (`toll_reason_id`),
  ADD KEY `trips_currency_code_foreign` (`currency_code`);

--
-- Indexes for table `trip_toll_reasons`
--
ALTER TABLE `trip_toll_reasons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trip_toll_reasons_trip_id_foreign` (`trip_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_fb_id_unique` (`fb_id`),
  ADD UNIQUE KEY `users_google_id_unique` (`google_id`),
  ADD UNIQUE KEY `users_apple_id_unique` (`apple_id`),
  ADD KEY `users_company_id_foreign` (`company_id`),
  ADD KEY `users_country_id_foreign` (`country_id`),
  ADD KEY `users_status_user_type_index` (`status`,`user_type`);

--
-- Indexes for table `users_promo_code`
--
ALTER TABLE `users_promo_code`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_promo_code_user_id_foreign` (`user_id`),
  ADD KEY `users_promo_code_promo_code_id_foreign` (`promo_code_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_user_id_foreign` (`user_id`),
  ADD KEY `vehicle_company_id_foreign` (`company_id`),
  ADD KEY `vehicle_status_index` (`status`);

--
-- Indexes for table `vehicle_make`
--
ALTER TABLE `vehicle_make`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD UNIQUE KEY `wallet_user_id_unique` (`user_id`),
  ADD KEY `wallet_currency_code_foreign` (`currency_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `api_credentials`
--
ALTER TABLE `api_credentials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `applied_referrals`
--
ALTER TABLE `applied_referrals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_version`
--
ALTER TABLE `app_version`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cancel`
--
ALTER TABLE `cancel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cancel_reasons`
--
ALTER TABLE `cancel_reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cancel_reason_translations`
--
ALTER TABLE `cancel_reason_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car_type`
--
ALTER TABLE `car_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `company_documents`
--
ALTER TABLE `company_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_payout_credentials`
--
ALTER TABLE `company_payout_credentials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_payout_preference`
--
ALTER TABLE `company_payout_preference`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `documents_langs`
--
ALTER TABLE `documents_langs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_address`
--
ALTER TABLE `driver_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `driver_documents`
--
ALTER TABLE `driver_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `driver_location`
--
ALTER TABLE `driver_location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `driver_owe_amounts`
--
ALTER TABLE `driver_owe_amounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `driver_owe_amount_payments`
--
ALTER TABLE `driver_owe_amount_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `driver_payment`
--
ALTER TABLE `driver_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `emergency_sos`
--
ALTER TABLE `emergency_sos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `filter_objects`
--
ALTER TABLE `filter_objects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `filter_options`
--
ALTER TABLE `filter_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `filter_options_translations`
--
ALTER TABLE `filter_options_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `help`
--
ALTER TABLE `help`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_category`
--
ALTER TABLE `help_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_category_lang`
--
ALTER TABLE `help_category_lang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_subcategory`
--
ALTER TABLE `help_subcategory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_sub_category_lang`
--
ALTER TABLE `help_sub_category_lang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_translations`
--
ALTER TABLE `help_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `join_us`
--
ALTER TABLE `join_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `manage_fare`
--
ALTER TABLE `manage_fare`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages_translations`
--
ALTER TABLE `pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payout_credentials`
--
ALTER TABLE `payout_credentials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payout_preference`
--
ALTER TABLE `payout_preference`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `peak_fare_details`
--
ALTER TABLE `peak_fare_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `pool_trips`
--
ALTER TABLE `pool_trips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `promo_code`
--
ALTER TABLE `promo_code`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `referral_settings`
--
ALTER TABLE `referral_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `referral_users`
--
ALTER TABLE `referral_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `rider_location`
--
ALTER TABLE `rider_location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schedule_cancel`
--
ALTER TABLE `schedule_cancel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule_ride`
--
ALTER TABLE `schedule_ride`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toll_reasons`
--
ALTER TABLE `toll_reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `trip_toll_reasons`
--
ALTER TABLE `trip_toll_reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10053;

--
-- AUTO_INCREMENT for table `users_promo_code`
--
ALTER TABLE `users_promo_code`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `vehicle_make`
--
ALTER TABLE `vehicle_make`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applied_referrals`
--
ALTER TABLE `applied_referrals`
  ADD CONSTRAINT `applied_referrals_currency_code_foreign` FOREIGN KEY (`currency_code`) REFERENCES `currency` (`code`),
  ADD CONSTRAINT `applied_referrals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cancel`
--
ALTER TABLE `cancel`
  ADD CONSTRAINT `cancel_cancel_reason_id_foreign` FOREIGN KEY (`cancel_reason_id`) REFERENCES `cancel_reasons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cancel_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cancel_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cancel_reason_translations`
--
ALTER TABLE `cancel_reason_translations`
  ADD CONSTRAINT `cancel_reason_translations_cancel_reason_id_foreign` FOREIGN KEY (`cancel_reason_id`) REFERENCES `cancel_reasons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_documents`
--
ALTER TABLE `company_documents`
  ADD CONSTRAINT `company_documents_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_payout_credentials`
--
ALTER TABLE `company_payout_credentials`
  ADD CONSTRAINT `company_payout_credentials_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `company_payout_preference`
--
ALTER TABLE `company_payout_preference`
  ADD CONSTRAINT `company_payout_preference_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `documents_langs`
--
ALTER TABLE `documents_langs`
  ADD CONSTRAINT `documents_langs_documents_id_foreign` FOREIGN KEY (`documents_id`) REFERENCES `documents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_address`
--
ALTER TABLE `driver_address`
  ADD CONSTRAINT `driver_address_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_location`
--
ALTER TABLE `driver_location`
  ADD CONSTRAINT `driver_location_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `car_type` (`id`),
  ADD CONSTRAINT `driver_location_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_owe_amounts`
--
ALTER TABLE `driver_owe_amounts`
  ADD CONSTRAINT `driver_owe_amounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `driver_owe_amount_payments`
--
ALTER TABLE `driver_owe_amount_payments`
  ADD CONSTRAINT `driver_owe_amount_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `driver_payment`
--
ALTER TABLE `driver_payment`
  ADD CONSTRAINT `driver_payment_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `emergency_sos`
--
ALTER TABLE `emergency_sos`
  ADD CONSTRAINT `emergency_sos_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `emergency_sos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filter_objects`
--
ALTER TABLE `filter_objects`
  ADD CONSTRAINT `filter_objects_filter_id_foreign` FOREIGN KEY (`filter_id`) REFERENCES `filter_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filter_options_translations`
--
ALTER TABLE `filter_options_translations`
  ADD CONSTRAINT `filter_options_translations_filter_option_id_foreign` FOREIGN KEY (`filter_option_id`) REFERENCES `filter_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `help`
--
ALTER TABLE `help`
  ADD CONSTRAINT `help_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `help_category` (`id`);

--
-- Constraints for table `help_category_lang`
--
ALTER TABLE `help_category_lang`
  ADD CONSTRAINT `help_category_lang_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `help_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `help_subcategory`
--
ALTER TABLE `help_subcategory`
  ADD CONSTRAINT `help_subcategory_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `help_category` (`id`);

--
-- Constraints for table `help_sub_category_lang`
--
ALTER TABLE `help_sub_category_lang`
  ADD CONSTRAINT `help_sub_category_lang_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `help_subcategory` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `help_translations`
--
ALTER TABLE `help_translations`
  ADD CONSTRAINT `help_translations_help_id_foreign` FOREIGN KEY (`help_id`) REFERENCES `help` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `manage_fare`
--
ALTER TABLE `manage_fare`
  ADD CONSTRAINT `manage_fare_currency_code_foreign` FOREIGN KEY (`currency_code`) REFERENCES `currency` (`code`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD CONSTRAINT `payment_method_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `peak_fare_details`
--
ALTER TABLE `peak_fare_details`
  ADD CONSTRAINT `peak_fare_details_fare_id_foreign` FOREIGN KEY (`fare_id`) REFERENCES `manage_fare` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pool_trips`
--
ALTER TABLE `pool_trips`
  ADD CONSTRAINT `pool_trips_currency_code_foreign` FOREIGN KEY (`currency_code`) REFERENCES `currency` (`code`),
  ADD CONSTRAINT `pool_trips_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pool_trips_toll_reason_id_foreign` FOREIGN KEY (`toll_reason_id`) REFERENCES `toll_reasons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profile_picture`
--
ALTER TABLE `profile_picture`
  ADD CONSTRAINT `profile_picture_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promo_code`
--
ALTER TABLE `promo_code`
  ADD CONSTRAINT `promo_code_currency_code_foreign` FOREIGN KEY (`currency_code`) REFERENCES `currency` (`code`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `referral_users`
--
ALTER TABLE `referral_users`
  ADD CONSTRAINT `referral_users_currency_code_foreign` FOREIGN KEY (`currency_code`) REFERENCES `currency` (`code`),
  ADD CONSTRAINT `referral_users_referral_id_foreign` FOREIGN KEY (`referral_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `referral_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `car_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `request_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `request_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rider_location`
--
ALTER TABLE `rider_location`
  ADD CONSTRAINT `rider_location_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedule_cancel`
--
ALTER TABLE `schedule_cancel`
  ADD CONSTRAINT `schedule_cancel_cancel_reason_id_foreign` FOREIGN KEY (`cancel_reason_id`) REFERENCES `cancel_reasons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_cancel_schedule_ride_id_foreign` FOREIGN KEY (`schedule_ride_id`) REFERENCES `schedule_ride` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedule_ride`
--
ALTER TABLE `schedule_ride`
  ADD CONSTRAINT `schedule_ride_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `car_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_ride_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `schedule_ride_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `trips_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `car_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trips_currency_code_foreign` FOREIGN KEY (`currency_code`) REFERENCES `currency` (`code`),
  ADD CONSTRAINT `trips_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trips_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trips_toll_reason_id_foreign` FOREIGN KEY (`toll_reason_id`) REFERENCES `toll_reasons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trips_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trip_toll_reasons`
--
ALTER TABLE `trip_toll_reasons`
  ADD CONSTRAINT `trip_toll_reasons_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_promo_code`
--
ALTER TABLE `users_promo_code`
  ADD CONSTRAINT `users_promo_code_promo_code_id_foreign` FOREIGN KEY (`promo_code_id`) REFERENCES `promo_code` (`id`),
  ADD CONSTRAINT `users_promo_code_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `vehicle_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_currency_code_foreign` FOREIGN KEY (`currency_code`) REFERENCES `currency` (`code`),
  ADD CONSTRAINT `wallet_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
