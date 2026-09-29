-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 29, 2026 at 12:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `number-one`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_settings`
--

CREATE TABLE `addon_settings` (
  `id` char(36) NOT NULL,
  `key_name` varchar(191) DEFAULT NULL,
  `live_values` longtext DEFAULT NULL,
  `test_values` longtext DEFAULT NULL,
  `settings_type` varchar(255) DEFAULT NULL,
  `mode` varchar(20) NOT NULL DEFAULT 'live',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addon_settings`
--

INSERT INTO `addon_settings` (`id`, `key_name`, `live_values`, `test_values`, `settings_type`, `mode`, `is_active`, `created_at`, `updated_at`, `additional_data`) VALUES
('070c6bbd-d777-11ed-96f4-0c7a158e4469', 'twilio', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":\"0\",\"sid\":\"data\",\"messaging_service_sid\":\"data\",\"token\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":\"0\",\"sid\":\"data\",\"messaging_service_sid\":\"data\",\"token\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}', 'sms_config', 'live', 0, NULL, '2023-08-12 07:01:29', NULL),
('070c766c-d777-11ed-96f4-0c7a158e4469', '2factor', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\"}', 'sms_config', 'live', 0, NULL, '2023-08-12 07:01:36', NULL),
('0d8a9308-d6a5-11ed-962c-0c7a158e4469', 'mercadopago', '{\"gateway\":\"mercadopago\",\"mode\":\"live\",\"status\":0,\"access_token\":\"\",\"public_key\":\"\"}', '{\"gateway\":\"mercadopago\",\"mode\":\"live\",\"status\":0,\"access_token\":\"\",\"public_key\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-27 11:57:11', '{\"gateway_title\":\"Mercadopago\",\"gateway_image\":null}'),
('0d8a9e49-d6a5-11ed-962c-0c7a158e4469', 'liqpay', '{\"gateway\":\"liqpay\",\"mode\":\"live\",\"status\":0,\"private_key\":\"\",\"public_key\":\"\"}', '{\"gateway\":\"liqpay\",\"mode\":\"live\",\"status\":0,\"private_key\":\"\",\"public_key\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:32:31', '{\"gateway_title\":\"Liqpay\",\"gateway_image\":null}'),
('101befdf-d44b-11ed-8564-0c7a158e4469', 'paypal', '{\"gateway\":\"paypal\",\"mode\":\"live\",\"status\":\"0\",\"client_id\":\"\",\"client_secret\":\"\"}', '{\"gateway\":\"paypal\",\"mode\":\"live\",\"status\":\"0\",\"client_id\":\"\",\"client_secret\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 03:41:32', '{\"gateway_title\":\"Paypal\",\"gateway_image\":null}'),
('133d9647-cabb-11ed-8fec-0c7a158e4469', 'hyper_pay', '{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}', '{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:32:42', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('1821029f-d776-11ed-96f4-0c7a158e4469', 'msg91', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":\"0\",\"template_id\":\"data\",\"auth_key\":\"data\"}', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":\"0\",\"template_id\":\"data\",\"auth_key\":\"data\"}', 'sms_config', 'live', 0, NULL, '2023-08-12 07:01:48', NULL),
('18210f2b-d776-11ed-96f4-0c7a158e4469', 'nexmo', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 02:14:44', NULL),
('18fbb21f-d6ad-11ed-962c-0c7a158e4469', 'foloosi', '{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}', '{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:34:33', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('2767d142-d6a1-11ed-962c-0c7a158e4469', 'paytm', '{\"gateway\":\"paytm\",\"mode\":\"live\",\"status\":0,\"merchant_key\":\"\",\"merchant_id\":\"\",\"merchant_website_link\":\"\"}', '{\"gateway\":\"paytm\",\"mode\":\"live\",\"status\":0,\"merchant_key\":\"\",\"merchant_id\":\"\",\"merchant_website_link\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-22 06:30:55', '{\"gateway_title\":\"Paytm\",\"gateway_image\":null}'),
('3201d2e6-c937-11ed-a424-0c7a158e4469', 'amazon_pay', '{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}', '{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:36:07', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('4593b25c-d6a1-11ed-962c-0c7a158e4469', 'paytabs', '{\"gateway\":\"paytabs\",\"mode\":\"live\",\"status\":0,\"profile_id\":\"\",\"server_key\":\"\",\"base_url\":\"https:\\/\\/secure-egypt.paytabs.com\\/\"}', '{\"gateway\":\"paytabs\",\"mode\":\"live\",\"status\":0,\"profile_id\":\"\",\"server_key\":\"\",\"base_url\":\"https:\\/\\/secure-egypt.paytabs.com\\/\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:34:51', '{\"gateway_title\":\"Paytabs\",\"gateway_image\":null}'),
('4e9b8dfb-e7d1-11ed-a559-0c7a158e4469', 'bkash', '{\"gateway\":\"bkash\",\"mode\":\"live\",\"status\":\"0\",\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"}', '{\"gateway\":\"bkash\",\"mode\":\"live\",\"status\":\"0\",\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:39:42', '{\"gateway_title\":\"Bkash\",\"gateway_image\":null}'),
('544a24a4-c872-11ed-ac7a-0c7a158e4469', 'fatoorah', '{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:36:24', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('58c1bc8a-d6ac-11ed-962c-0c7a158e4469', 'ccavenue', '{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}', '{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 03:42:38', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-643783f01d386.png\"}'),
('5e2d2ef9-d6ab-11ed-962c-0c7a158e4469', 'thawani', '{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}', '{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:50:40', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-64378f9856f29.png\"}'),
('60cc83cc-d5b9-11ed-b56f-0c7a158e4469', 'sixcash', '{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:16:17', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-12-6436774e77ff9.png\"}'),
('68579846-d8e8-11ed-8249-0c7a158e4469', 'alphanet_sms', '{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('6857a2e8-d8e8-11ed-8249-0c7a158e4469', 'sms_to', '{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('74c30c00-d6a6-11ed-962c-0c7a158e4469', 'hubtel', '{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}', '{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:37:43', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('74e46b0a-d6aa-11ed-962c-0c7a158e4469', 'tap', '{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}', '{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:50:09', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('761ca96c-d1eb-11ed-87ca-0c7a158e4469', 'swish', '{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}', '{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:17:02', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('7b1c3c5f-d2bd-11ed-b485-0c7a158e4469', 'payfast', '{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}', '{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:18:13', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('8592417b-d1d1-11ed-a984-0c7a158e4469', 'esewa', '{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}', '{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:17:38', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('9162a1dc-cdf1-11ed-affe-0c7a158e4469', 'viva_wallet', '{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\", \"source_code\":\"\"}\n', '{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\", \"source_code\":\"\"}\n', 'payment_config', 'test', 0, NULL, NULL, NULL),
('998ccc62-d6a0-11ed-962c-0c7a158e4469', 'stripe', '{\"gateway\":\"stripe\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"published_key\":null}', '{\"gateway\":\"stripe\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"published_key\":null}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:18:55', '{\"gateway_title\":\"Stripe\",\"gateway_image\":null}'),
('a3313755-c95d-11ed-b1db-0c7a158e4469', 'iyzi_pay', '{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:20:02', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('a76c8993-d299-11ed-b485-0c7a158e4469', 'momo', '{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}', '{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}', 'payment_config', 'live', 0, NULL, '2023-08-30 04:19:28', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('a8608119-cc76-11ed-9bca-0c7a158e4469', 'moncash', '{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}', '{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:47:34', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('ad5af1c1-d6a2-11ed-962c-0c7a158e4469', 'razor_pay', '{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"api_secret\":null}', '{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"api_secret\":null}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:47:00', '{\"gateway_title\":\"Razor pay\",\"gateway_image\":null}'),
('ad5b02a0-d6a2-11ed-962c-0c7a158e4469', 'senang_pay', '{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"secret_key\":null,\"merchant_id\":null}', '{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"secret_key\":null,\"merchant_id\":null}', 'payment_config', 'test', 0, NULL, '2023-08-27 09:58:57', '{\"gateway_title\":\"Senang pay\",\"gateway_image\":null}'),
('b6c333f6-d8e9-11ed-8249-0c7a158e4469', 'akandit_sms', '{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('b6c33c87-d8e9-11ed-8249-0c7a158e4469', 'global_sms', '{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('b8992bd4-d6a0-11ed-962c-0c7a158e4469', 'paymob_accept', '{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\"}', '{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\"}', 'payment_config', 'test', 0, NULL, NULL, '{\"gateway_title\":\"Paymob accept\",\"gateway_image\":null}'),
('c41c0dcd-d119-11ed-9f67-0c7a158e4469', 'maxicash', '{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}', '{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:49:15', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('c9249d17-cd60-11ed-b879-0c7a158e4469', 'pvit', '{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}', '{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('cb0081ce-d775-11ed-96f4-0c7a158e4469', 'releans', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 02:14:44', NULL),
('d4f3f5f1-d6a0-11ed-962c-0c7a158e4469', 'flutterwave', '{\"gateway\":\"flutterwave\",\"mode\":\"live\",\"status\":0,\"secret_key\":\"\",\"public_key\":\"\",\"hash\":\"\"}', '{\"gateway\":\"flutterwave\",\"mode\":\"live\",\"status\":0,\"secret_key\":\"\",\"public_key\":\"\",\"hash\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:41:03', '{\"gateway_title\":\"Flutterwave\",\"gateway_image\":null}'),
('d822f1a5-c864-11ed-ac7a-0c7a158e4469', 'paystack', '{\"gateway\":\"paystack\",\"mode\":\"test\",\"status\":1,\"public_key\":\"pk_test_e09a4b03f9b99a727ad2d615f490b96abc59b343\",\"secret_key\":\"sk_test_ddcdc57297ccd575f546a342327832de4bad20f4\",\"merchant_email\":\"emmanuelemesue97@gmail.com\"}', '{\"gateway\":\"paystack\",\"mode\":\"test\",\"status\":1,\"public_key\":\"pk_test_e09a4b03f9b99a727ad2d615f490b96abc59b343\",\"secret_key\":\"sk_test_ddcdc57297ccd575f546a342327832de4bad20f4\",\"merchant_email\":\"emmanuelemesue97@gmail.com\"}', 'payment_config', 'test', 1, NULL, '2026-07-22 21:59:46', '{\"gateway_title\":\"Paystack\",\"gateway_image\":\"2026-07-22-6a614b6236023.png\"}'),
('daec8d59-c893-11ed-ac7a-0c7a158e4469', 'xendit', '{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:35:46', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('dc0f5fc9-d6a5-11ed-962c-0c7a158e4469', 'worldpay', '{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}', '{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:35:26', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('e0450278-d8eb-11ed-8249-0c7a158e4469', 'signal_wire', '{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('e0450b40-d8eb-11ed-8249-0c7a158e4469', 'paradox', '{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"sender_id\":\"\"}', '{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"sender_id\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-09-10 01:14:01', NULL),
('ea346efe-cdda-11ed-affe-0c7a158e4469', 'ssl_commerz', '{\"gateway\":\"ssl_commerz\",\"mode\":\"live\",\"status\":\"0\",\"store_id\":\"\",\"store_password\":\"\"}', '{\"gateway\":\"ssl_commerz\",\"mode\":\"live\",\"status\":\"0\",\"store_id\":\"\",\"store_password\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 03:43:49', '{\"gateway_title\":\"Ssl commerz\",\"gateway_image\":null}'),
('eed88336-d8ec-11ed-8249-0c7a158e4469', 'hubtel', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('f149c546-d8ea-11ed-8249-0c7a158e4469', 'viatech', '{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('f149cd9c-d8ea-11ed-8249-0c7a158e4469', '019_sms', '{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `add_fund_bonus_categories`
--

CREATE TABLE `add_fund_bonus_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `bonus_type` varchar(50) NOT NULL,
  `bonus_amount` double(14,2) NOT NULL DEFAULT 0.00,
  `min_add_money_amount` double(14,2) NOT NULL DEFAULT 0.00,
  `max_bonus_amount` double(14,2) NOT NULL DEFAULT 0.00,
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `admin_role_id` bigint(20) NOT NULL DEFAULT 2,
  `image` varchar(30) NOT NULL DEFAULT 'def.png',
  `identify_image` text DEFAULT NULL,
  `identify_type` varchar(255) DEFAULT NULL,
  `identify_number` int(11) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(80) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `admin_role_id`, `image`, `identify_image`, `identify_type`, `identify_number`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Master Admin', '0000000000', 1, 'def.png', NULL, NULL, NULL, 'admin@admin.com', NULL, '$2y$10$Xf7I9gjkV69wDWkeOJWgkO6.A18cl96Z3cT.soIs9ONVmd58p2aVe', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `module_access` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `module_access`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Master Admin', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallets`
--

CREATE TABLE `admin_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `inhouse_earning` double NOT NULL DEFAULT 0,
  `withdrawn` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_earned` double(8,2) NOT NULL DEFAULT 0.00,
  `delivery_charge_earned` double(8,2) NOT NULL DEFAULT 0.00,
  `pending_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `total_tax_collected` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_wallets`
--

INSERT INTO `admin_wallets` (`id`, `admin_id`, `inhouse_earning`, `withdrawn`, `created_at`, `updated_at`, `commission_earned`, `delivery_charge_earned`, `pending_amount`, `total_tax_collected`) VALUES
(1, 1, 0, 0, NULL, NULL, 0.00, 0.00, 1585.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallet_histories`
--

CREATE TABLE `admin_wallet_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `payment` varchar(191) NOT NULL DEFAULT 'received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Model', '2026-05-07 18:23:17', '2026-05-07 18:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `module` varchar(191) DEFAULT NULL,
  `action` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `payload` longtext DEFAULT NULL,
  `ip_address` varchar(191) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `admin_id`, `module`, `action`, `description`, `payload`, `ip_address`, `user_agent`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, 'Product', 'POST', 'Performed POST operation. Data: {\"name\":[\"test\"],\"lang\":[\"en\"],\"description\":[\"<p>test test<\\/p>\"],\"category_id\":\"2\",\"brand_id\":\"1\",\"product_type\":\"physical\",\"code\":\"172926\",\"unit\":\"kg\",\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"tags\":null,\"purchase_price\":null,\"unit_price\":\"5\",\"minimum_order_qty\":\"1\",\"current_stock\":\"0\",\"stock_status\":\"in_stock\",\"discount_type\":\"flat\",\"discount\":\"0\",\"tax\":\"0\",\"tax_type\":\"percent\",\"tax_model\":\"include\",\"shipping_cost\":\"0\",\"video_link\":null,\"meta_title\":null,\"meta_description\":null}', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/sku-combination', '2026-04-27 11:38:51', '2026-04-27 11:38:51'),
(2, 1, 'Product', 'POST', 'Performed POST operation. Data: {\"name\":[\"test\"],\"lang\":[\"en\"],\"description\":[\"<p>test test<\\/p>\"],\"category_id\":\"2\",\"brand_id\":\"1\",\"product_type\":\"physical\",\"code\":\"172926\",\"unit\":\"kg\",\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"tags\":null,\"purchase_price\":null,\"unit_price\":\"50\",\"minimum_order_qty\":\"1\",\"current_stock\":\"0\",\"stock_status\":\"in_stock\",\"discount_type\":\"flat\",\"discount\":\"0\",\"tax\":\"0\",\"tax_type\":\"percent\",\"tax_model\":\"include\",\"shipping_cost\":\"0\",\"video_link\":null,\"meta_title\":null,\"meta_description\":null}', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/sku-combination', '2026-04-27 11:38:52', '2026-04-27 11:38:52'),
(3, 1, 'Product', 'POST', 'Performed POST operation. Data: {\"name\":[\"test\"],\"lang\":[\"en\"],\"description\":[\"<p>test test<\\/p>\"],\"category_id\":\"2\",\"brand_id\":\"1\",\"product_type\":\"physical\",\"code\":\"172926\",\"unit\":\"kg\",\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"tags\":null,\"purchase_price\":null,\"unit_price\":\"500\",\"minimum_order_qty\":\"1\",\"current_stock\":\"0\",\"stock_status\":\"in_stock\",\"discount_type\":\"flat\",\"discount\":\"0\",\"tax\":\"0\",\"tax_type\":\"percent\",\"tax_model\":\"include\",\"shipping_cost\":\"0\",\"video_link\":null,\"meta_title\":null,\"meta_description\":null}', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/sku-combination', '2026-04-27 11:38:52', '2026-04-27 11:38:52'),
(4, 1, 'Product', 'POST', 'Performed POST operation. Data: {\"name\":[\"test\"],\"lang\":[\"en\"],\"description\":[\"<p>test test<\\/p>\"],\"category_id\":\"2\",\"brand_id\":\"1\",\"product_type\":\"physical\",\"code\":\"172926\",\"unit\":\"kg\",\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"tags\":null,\"purchase_price\":null,\"unit_price\":\"500\",\"minimum_order_qty\":\"1\",\"current_stock\":\"20\",\"stock_status\":\"in_stock\",\"discount_type\":\"flat\",\"discount\":\"0\",\"tax\":\"0\",\"tax_type\":\"percent\",\"tax_model\":\"include\",\"shipping_cost\":\"0\",\"video_link\":null,\"meta_title\":null,\"meta_description\":null,\"images\":[{}]}', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/store', '2026-04-27 11:49:29', '2026-04-27 11:49:29'),
(5, 1, 'Product', 'POST', 'Performed POST operation. Data: {\"name\":[\"test\"],\"lang\":[\"en\"],\"description\":[\"<p>test test<\\/p>\"],\"category_id\":\"2\",\"brand_id\":\"1\",\"product_type\":\"physical\",\"code\":\"172926\",\"unit\":\"kg\",\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"tags\":null,\"purchase_price\":\"4999.98\",\"unit_price\":\"500\",\"minimum_order_qty\":\"1\",\"current_stock\":\"20\",\"stock_status\":\"in_stock\",\"discount_type\":\"flat\",\"discount\":\"0\",\"tax\":\"0\",\"tax_type\":\"percent\",\"tax_model\":\"include\",\"shipping_cost\":\"0\",\"video_link\":null,\"meta_title\":null,\"meta_description\":null,\"images\":[{}]}', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/store', '2026-04-27 11:49:38', '2026-04-27 11:49:38'),
(6, 1, 'Product', 'POST', 'Performed POST operation. Data: {\"name\":[\"test\"],\"lang\":[\"en\"],\"description\":[\"<p>test test<\\/p>\"],\"category_id\":\"2\",\"brand_id\":\"1\",\"product_type\":\"physical\",\"code\":\"172926\",\"unit\":\"kg\",\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"tags\":null,\"purchase_price\":\"4999.98\",\"unit_price\":\"500\",\"minimum_order_qty\":\"1\",\"current_stock\":\"20\",\"stock_status\":\"in_stock\",\"discount_type\":\"flat\",\"discount\":\"0\",\"tax\":\"0\",\"tax_type\":\"percent\",\"tax_model\":\"include\",\"shipping_cost\":\"0\",\"video_link\":null,\"meta_title\":null,\"meta_description\":null,\"images\":[{}]}', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/store', '2026-04-27 11:49:39', '2026-04-27 11:49:39'),
(7, 1, 'Product', 'Deleted', 'Deleted Product', '{\"_method\":\"delete\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/delete/5', '2026-04-27 12:16:56', '2026-04-27 12:16:56'),
(8, 1, 'Pos', 'POST', 'POST Po. Data captured', '{\"customer\":null}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pos/view-all-hold-orders', '2026-04-27 12:19:26', '2026-04-27 12:19:26'),
(9, 1, 'Business settings', 'POST', 'Changed status of Business setting to 1', '{\"status\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/delivery-restriction/country-restriction-status-change', '2026-04-28 11:48:13', '2026-04-28 11:48:13'),
(10, 1, 'Business settings', 'Created', 'Created Business setting. Data captured', '{\"country_code\":[\"AX\"]}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/delivery-restriction/add-delivery-country', '2026-04-28 11:48:17', '2026-04-28 11:48:17'),
(11, 1, 'Business settings', 'Created', 'Created Business setting. Data captured', '{\"country_code\":[\"AL\"]}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/delivery-restriction/add-delivery-country', '2026-04-28 11:48:22', '2026-04-28 11:48:22'),
(12, 1, 'Pos', 'POST', 'POST Po. Data captured', '{\"customer\":null}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pos/view-all-hold-orders', '2026-04-28 11:58:57', '2026-04-28 11:58:57'),
(13, 1, 'Pos', 'POST', 'POST Po. Data captured', '{\"id\":\"4\",\"quantity\":\"1\",\"quantity_in_cart\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pos/variant_price', '2026-04-28 11:59:01', '2026-04-28 11:59:01'),
(14, 1, 'Product', 'Updated', 'Updated Product: \'Bain Marie (6 Pans)\'', '{\"name\":[\"Bain Marie (6 Pans)\"],\"lang\":[\"en\"],\"description\":[\"Detailed description for Bain Marie (6 Pans)\"],\"category_id\":\"4\",\"sub_category_id\":\"5\",\"product_type\":\"physical\",\"code\":\"168339\",\"unit\":\"pc\",\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"tags\":null,\"purchase_price\":\"691\",\"unit_price\":\"973\",\"stock_status\":\"in_stock\",\"minimum_order_qty\":\"1\",\"current_stock\":\"100\",\"discount_type\":\"flat\",\"discount\":\"0\",\"tax\":\"0\",\"tax_type\":\"percent\",\"tax_model\":\"exclude\",\"shipping_cost\":\"0\",\"video_link\":null,\"meta_title\":null,\"meta_description\":null}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/update/69', '2026-05-02 16:14:40', '2026-05-02 16:14:40'),
(15, 1, 'Product', 'Updated', 'Updated Product: \'Bain Marie (6 Pans)\'', '{\"name\":[\"Bain Marie (6 Pans)\"],\"lang\":[\"en\"],\"description\":[\"Detailed description for Bain Marie (6 Pans)\"],\"category_id\":\"4\",\"sub_category_id\":\"5\",\"brand_id\":\"1\",\"product_type\":\"physical\",\"code\":\"168339\",\"unit\":\"pc\",\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"tags\":null,\"purchase_price\":\"691\",\"unit_price\":\"973\",\"stock_status\":\"in_stock\",\"minimum_order_qty\":\"1\",\"current_stock\":\"100\",\"discount_type\":\"flat\",\"discount\":\"0\",\"tax\":\"0\",\"tax_type\":\"percent\",\"tax_model\":\"exclude\",\"shipping_cost\":\"0\",\"video_link\":null,\"meta_title\":null,\"meta_description\":null}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/update/69', '2026-05-02 16:14:50', '2026-05-02 16:14:50'),
(16, 1, 'Product', 'Updated', 'Updated Product: \'Bain Marie (6 Pans)\'', '{\"name\":[\"Bain Marie (6 Pans)\"],\"lang\":[\"en\"],\"description\":[\"Detailed description for Bain Marie (6 Pans)\"],\"category_id\":\"4\",\"sub_category_id\":\"5\",\"brand_id\":\"1\",\"product_type\":\"physical\",\"code\":\"168339\",\"unit\":\"pc\",\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"tags\":null,\"purchase_price\":\"691\",\"unit_price\":\"973\",\"stock_status\":\"in_stock\",\"minimum_order_qty\":\"1\",\"current_stock\":\"100\",\"discount_type\":\"flat\",\"discount\":\"0\",\"tax\":\"0\",\"tax_type\":\"percent\",\"tax_model\":\"exclude\",\"shipping_cost\":\"0\",\"video_link\":null,\"meta_title\":null,\"meta_description\":null}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/update/69', '2026-05-02 16:14:50', '2026-05-02 16:14:50'),
(17, 1, 'Product', 'POST', 'POST Product. Data captured', '{\"products_file\":{}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/bulk-import', '2026-05-04 08:30:55', '2026-05-04 08:30:55'),
(18, 1, 'Banner', 'Created', 'Created Banner. Data captured', '{\"id\":null,\"banner_type\":\"Footer Banner\",\"url\":\"https:\\/\\/no1kitchenequipment.com\\/\",\"resource_type\":\"category\",\"product_id\":\"1\",\"category_id\":\"3\",\"brand_id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/add-new', '2026-05-05 11:25:20', '2026-05-05 11:25:20'),
(19, 1, 'Banner', 'Created', 'Created Banner. Data captured', '{\"id\":null,\"banner_type\":\"Footer Banner\",\"url\":\"https:\\/\\/winediscount.ng\\/\",\"resource_type\":\"category\",\"product_id\":\"1\",\"category_id\":\"3\",\"brand_id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/add-new', '2026-05-05 11:25:42', '2026-05-05 11:25:42'),
(20, 1, 'Banner', 'Created', 'Created Banner. Data captured', '{\"id\":null,\"banner_type\":\"Main Banner\",\"url\":\"https:\\/\\/no1kitchenequipment.com\\/\",\"resource_type\":\"category\",\"product_id\":\"1\",\"category_id\":\"3\",\"brand_id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/add-new', '2026-05-05 11:26:36', '2026-05-05 11:26:36'),
(21, 1, 'Banner', 'Created', 'Created Banner. Data captured', '{\"id\":null,\"banner_type\":\"Main Banner\",\"url\":\"https:\\/\\/no1kitchenequipment.com\\/\",\"resource_type\":\"category\",\"product_id\":\"1\",\"category_id\":\"3\",\"brand_id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/add-new', '2026-05-05 11:55:51', '2026-05-05 11:55:51'),
(22, 1, 'Banner', 'Created', 'Created Banner. Data captured', '{\"id\":null,\"banner_type\":\"Main Banner\",\"url\":\"https:\\/\\/no1kitchenequipment.com\\/\",\"resource_type\":\"product\",\"product_id\":\"1\",\"category_id\":\"2\",\"brand_id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/add-new', '2026-05-05 12:02:05', '2026-05-05 12:02:05'),
(23, 1, 'Banner', 'Created', 'Created Banner. Data captured', '{\"id\":null,\"banner_type\":\"Main Banner\",\"url\":\"https:\\/\\/no1kitchenequipment.com\\/\",\"resource_type\":\"product\",\"product_id\":\"1\",\"category_id\":\"2\",\"brand_id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/add-new', '2026-05-05 12:02:23', '2026-05-05 12:02:23'),
(24, 1, 'Banner', 'Created', 'Created Banner. Data captured', '{\"id\":null,\"banner_type\":\"Main Banner\",\"url\":\"https:\\/\\/winediscount.ng\\/\",\"resource_type\":\"product\",\"product_id\":\"1\",\"category_id\":\"2\",\"brand_id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/add-new', '2026-05-05 12:02:59', '2026-05-05 12:02:59'),
(25, 1, 'Banner', 'Deleted', 'Deleted Banner. Data captured', '{\"id\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/delete', '2026-05-05 12:03:03', '2026-05-05 12:03:03'),
(26, 1, 'Banner', 'Created', 'Created Banner. Data captured', '{\"id\":null,\"banner_type\":\"Main Banner\",\"url\":\"https:\\/\\/no1kitchenequipment.com\\/\",\"resource_type\":\"product\",\"product_id\":\"1\",\"category_id\":\"2\",\"brand_id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/add-new', '2026-05-05 12:06:08', '2026-05-05 12:06:08'),
(27, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#9b5555\",\"phone_verification\":0}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 08:15:17', '2026-05-06 08:15:17'),
(28, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#9b5555\",\"phone_verification\":0,\"body_bg_img\":{}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 08:15:36', '2026-05-06 08:15:36'),
(29, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#d6d7cb\",\"phone_verification\":0,\"body_bg_img\":{}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 08:17:06', '2026-05-06 08:17:06'),
(30, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#d6d7cb\",\"phone_verification\":0,\"body_bg_img\":{}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 08:17:12', '2026-05-06 08:17:12'),
(31, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#d6d7cb\",\"phone_verification\":0,\"body_bg_img\":{}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 08:32:57', '2026-05-06 08:32:57'),
(32, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#d6d7cb\",\"phone_verification\":0,\"body_bg_img\":{}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 08:33:17', '2026-05-06 08:33:17'),
(33, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#f77d11\",\"body_bg_overlay\":\"rgba(255,255,255,0)\",\"phone_verification\":0}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 08:56:09', '2026-05-06 08:56:09'),
(34, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#f77d11\",\"body_bg_overlay\":\"rgba(255,255,255,0)\",\"phone_verification\":0}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 08:56:09', '2026-05-06 08:56:09'),
(35, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#f77d11\",\"body_bg_overlay\":\"rgba(255,250,250,0.5)\",\"phone_verification\":0,\"body_bg_img\":{}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 08:57:24', '2026-05-06 08:57:24'),
(36, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#f77d11\",\"body_bg_overlay\":\"rgba(255,250,250,0.5)\",\"phone_verification\":0,\"body_bg_img\":{}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 10:05:32', '2026-05-06 10:05:32'),
(37, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#f77d11\",\"body_bg_overlay\":\"rgba(255,250,250,0.5)\",\"phone_verification\":0,\"body_bg_img\":{}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 10:05:52', '2026-05-06 10:05:52'),
(38, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#f77d11\",\"body_bg_overlay\":\"rgba(255,250,250,0.5)\",\"phone_verification\":0,\"body_bg_img\":{}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 11:08:57', '2026-05-06 11:08:57'),
(39, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#f77d11\",\"body_bg_overlay\":\"rgba(255,250,250,0.5)\",\"phone_verification\":0,\"body_bg_img\":{}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 11:09:35', '2026-05-06 11:09:35'),
(40, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#f77d11\",\"body_bg_overlay\":\"rgba(255,250,250,0.5)\",\"phone_verification\":0,\"body_bg_img\":{}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 11:14:01', '2026-05-06 11:14:01'),
(41, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#f77d11\",\"body_bg_overlay\":\"rgba(255,250,250,0.5)\",\"phone_verification\":0,\"body_bg_img\":{}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 11:27:37', '2026-05-06 11:27:37'),
(42, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#ffffff\",\"body_bg_overlay\":\"rgba(255,250,250,0.5)\",\"phone_verification\":0}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 11:34:28', '2026-05-06 11:34:28'),
(43, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#ffffff\",\"body_bg_overlay\":\"rgba(255,250,250,0.5)\",\"phone_verification\":0,\"body_bg_img\":{}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 11:42:51', '2026-05-06 11:42:51'),
(44, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#000000\",\"body_bg_overlay\":\"rgba(255,250,250,0.5)\",\"phone_verification\":0}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 11:48:45', '2026-05-06 11:48:45'),
(45, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#ffffff\",\"body_bg_overlay\":\"rgba(255,250,250,0.5)\",\"phone_verification\":0}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 11:49:11', '2026-05-06 11:49:11'),
(46, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"Abuja\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"body_bg_color\":\"#ffffff\",\"body_bg_overlay\":\"rgba(255,250,250,0.5)\",\"phone_verification\":0,\"body_bg_img\":{}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-06 11:49:28', '2026-05-06 11:49:28'),
(47, 1, 'Business settings', 'POST', 'POST Business setting. Data captured', '{\"theme\":\"theme_flavor\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/web-config/theme/publish', '2026-05-06 12:23:01', '2026-05-06 12:23:01'),
(48, 1, 'Business settings', 'POST', 'POST Business setting. Data captured', '{\"theme\":\"theme_flavor\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/web-config/theme/publish', '2026-05-06 12:23:11', '2026-05-06 12:23:11'),
(49, 1, 'Business settings', 'POST', 'POST Business setting. Data captured', '{\"theme\":\"theme_flavor\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/web-config/theme/publish', '2026-05-06 12:23:30', '2026-05-06 12:23:30'),
(50, 1, 'Business settings', 'POST', 'POST Business setting. Data captured', '{\"theme\":\"theme_aster\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/web-config/theme/publish', '2026-05-06 12:23:33', '2026-05-06 12:23:33'),
(51, 1, 'Brand', 'Created', 'Created Brand: \'Amazon\'', '{\"name\":[\"Amazon\"],\"lang\":[\"en\"]}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/brand/add-new', '2026-05-07 10:00:42', '2026-05-07 10:00:42'),
(52, 1, 'Brand', 'Created', 'Created Brand: \'apacino\'', '{\"name\":[\"apacino\"],\"lang\":[\"en\"]}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/brand/add-new', '2026-05-07 10:00:56', '2026-05-07 10:00:56'),
(53, 1, 'Banner', 'Created', 'Created Banner. Data captured', '{\"id\":null,\"banner_type\":\"Main Banner\",\"url\":\"https:\\/\\/no1kitchenequipment.com\\/\",\"resource_type\":\"product\",\"product_id\":\"1\",\"category_id\":\"2\",\"brand_id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/add-new', '2026-05-07 12:18:37', '2026-05-07 12:18:37'),
(54, 1, 'Banner', 'POST', 'Changed status of Banner to 1', '{\"id\":\"5\",\"status\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/status', '2026-05-07 12:18:41', '2026-05-07 12:18:41'),
(55, 1, 'Banner', 'Updated', 'Updated Banner. Data captured', '{\"_method\":\"put\",\"id\":null,\"banner_type\":\"Main Section Banner\",\"url\":\"https:\\/\\/no1kitchenequipment.com\\/\",\"resource_type\":\"product\",\"product_id\":\"1\",\"category_id\":\"1\",\"brand_id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/update/5', '2026-05-07 12:18:47', '2026-05-07 12:18:47'),
(56, 1, 'Product', 'POST', 'Changed status of Product to 1', '{\"id\":\"658\",\"status\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/featured-status', '2026-05-07 12:22:18', '2026-05-07 12:22:18'),
(57, 1, 'Product', 'POST', 'Changed status of Product to 1', '{\"id\":\"656\",\"status\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/featured-status', '2026-05-07 12:22:21', '2026-05-07 12:22:21');
INSERT INTO `audit_logs` (`id`, `admin_id`, `module`, `action`, `description`, `payload`, `ip_address`, `user_agent`, `url`, `created_at`, `updated_at`) VALUES
(58, 1, 'Product', 'POST', 'Changed status of Product to 1', '{\"id\":\"654\",\"status\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/featured-status', '2026-05-07 12:22:23', '2026-05-07 12:22:23'),
(59, 1, 'Product', 'POST', 'Changed status of Product to 1', '{\"id\":\"652\",\"status\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/featured-status', '2026-05-07 12:22:26', '2026-05-07 12:22:26'),
(60, 1, 'Category', 'POST', 'Changed status of Category to ', '{\"id\":\"44\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/category/status', '2026-05-07 12:24:47', '2026-05-07 12:24:47'),
(61, 1, 'Category', 'POST', 'Changed status of Category to ', '{\"id\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/category/status', '2026-05-07 12:24:49', '2026-05-07 12:24:49'),
(62, 1, 'Category', 'POST', 'Changed status of Category to ', '{\"id\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/category/status', '2026-05-07 12:25:10', '2026-05-07 12:25:10'),
(63, 1, 'Category', 'POST', 'Changed status of Category to ', '{\"id\":\"12\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/category/status', '2026-05-07 12:25:12', '2026-05-07 12:25:12'),
(64, 1, 'Category', 'POST', 'Changed status of Category to ', '{\"id\":\"16\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/category/status', '2026-05-07 12:25:14', '2026-05-07 12:25:14'),
(65, 1, 'Category', 'POST', 'Changed status of Category to ', '{\"id\":\"20\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/category/status', '2026-05-07 12:25:16', '2026-05-07 12:25:16'),
(66, 1, 'Category', 'POST', 'Changed status of Category to ', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/category/status', '2026-05-07 12:25:19', '2026-05-07 12:25:19'),
(67, 1, 'Category', 'POST', 'Changed status of Category to ', '{\"id\":\"44\",\"home_status\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/category/status', '2026-05-07 12:25:43', '2026-05-07 12:25:43'),
(68, 1, 'Category', 'POST', 'Changed status of Category to ', '{\"id\":\"4\",\"home_status\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/category/status', '2026-05-07 12:25:45', '2026-05-07 12:25:45'),
(69, 1, 'Category', 'POST', 'Changed status of Category to ', '{\"id\":\"8\",\"home_status\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/category/status', '2026-05-07 12:25:47', '2026-05-07 12:25:47'),
(70, 1, 'Category', 'POST', 'Changed status of Category to ', '{\"id\":\"12\",\"home_status\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/category/status', '2026-05-07 12:25:49', '2026-05-07 12:25:49'),
(71, 1, 'Category', 'POST', 'Changed status of Category to ', '{\"id\":\"16\",\"home_status\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/category/status', '2026-05-07 12:25:52', '2026-05-07 12:25:52'),
(72, 1, 'Category', 'POST', 'Changed status of Category to ', '{\"id\":\"20\",\"home_status\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/category/status', '2026-05-07 12:25:54', '2026-05-07 12:25:54'),
(73, 1, 'Category', 'POST', 'Changed status of Category to ', '{\"id\":\"1\",\"home_status\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/category/status', '2026-05-07 12:25:57', '2026-05-07 12:25:57'),
(74, 1, 'Category', 'Updated', 'Updated Category: \'Other Equipment\'', '{\"name\":[\"Other Equipment\"],\"lang\":[\"en\"],\"priority\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/category/update/44', '2026-05-07 12:26:10', '2026-05-07 12:26:10'),
(75, 1, 'Banner', 'Created', 'Created Banner. Data captured', '{\"id\":null,\"banner_type\":\"Main Section Banner\",\"url\":\"https:\\/\\/winediscount.ng\\/\",\"resource_type\":\"product\",\"product_id\":\"1\",\"category_id\":\"2\",\"brand_id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/add-new', '2026-05-07 12:49:49', '2026-05-07 12:49:49'),
(76, 1, 'Banner', 'POST', 'Changed status of Banner to 1', '{\"id\":\"6\",\"status\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/status', '2026-05-07 12:50:31', '2026-05-07 12:50:31'),
(77, 1, 'Banner', 'POST', 'Changed status of Banner to ', '{\"id\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/status', '2026-05-07 13:03:10', '2026-05-07 13:03:10'),
(78, 1, 'Banner', 'POST', 'Changed status of Banner to ', '{\"id\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/status', '2026-05-07 13:03:12', '2026-05-07 13:03:12'),
(79, 1, 'Banner', 'POST', 'Changed status of Banner to 1', '{\"id\":\"5\",\"status\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/status', '2026-05-07 13:03:23', '2026-05-07 13:03:23'),
(80, 1, 'Banner', 'POST', 'Changed status of Banner to 1', '{\"id\":\"6\",\"status\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/status', '2026-05-07 13:04:28', '2026-05-07 13:04:28'),
(81, 1, 'Banner', 'Updated', 'Updated Banner. Data captured', '{\"_method\":\"put\",\"id\":null,\"banner_type\":\"Main Section Banner\",\"url\":\"https:\\/\\/winediscount.ng\\/\",\"resource_type\":\"category\",\"product_id\":\"1\",\"category_id\":\"1\",\"brand_id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/update/6', '2026-05-07 13:08:47', '2026-05-07 13:08:47'),
(82, 1, 'Banner', 'Updated', 'Updated Banner: \'Test Promotion\'', '{\"_method\":\"put\",\"id\":null,\"banner_type\":\"Main Section Banner\",\"url\":\"https:\\/\\/winediscount.ng\\/\",\"resource_type\":\"category\",\"product_id\":\"1\",\"category_id\":\"1\",\"brand_id\":\"1\",\"button_text\":\"Promotion\",\"background_color\":\"#000000\",\"title\":\"Test Promotion\",\"sub_title\":\"@nd Promotion\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/update/6', '2026-05-07 13:14:50', '2026-05-07 13:14:50'),
(83, 1, 'Banner', 'Updated', 'Updated Banner: \'Test Promotion\'', '{\"_method\":\"put\",\"id\":null,\"banner_type\":\"Main Section Banner\",\"url\":\"https:\\/\\/winediscount.ng\\/\",\"resource_type\":\"category\",\"product_id\":\"1\",\"category_id\":\"1\",\"brand_id\":\"1\",\"button_text\":\"Promotion\",\"background_color\":\"#ffffff\",\"title\":\"Test Promotion\",\"sub_title\":\"@nd Promotion\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/update/6', '2026-05-07 13:15:15', '2026-05-07 13:15:15'),
(84, 1, 'Banner', 'Updated', 'Updated Banner: \'Test Promotion\'', '{\"_method\":\"put\",\"id\":null,\"banner_type\":\"Main Section Banner\",\"url\":\"https:\\/\\/winediscount.ng\\/\",\"resource_type\":\"category\",\"product_id\":\"1\",\"category_id\":\"1\",\"brand_id\":\"1\",\"button_text\":\"Promotion\",\"background_color\":\"#000000\",\"title\":\"Test Promotion\",\"sub_title\":\"@nd Promotion\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/update/6', '2026-05-07 13:15:56', '2026-05-07 13:15:56'),
(85, 1, 'Banner', 'Updated', 'Updated Banner. Data captured', '{\"_method\":\"put\",\"id\":null,\"banner_type\":\"Main Section Banner\",\"url\":\"https:\\/\\/winediscount.ng\\/\",\"resource_type\":\"category\",\"product_id\":\"1\",\"category_id\":\"1\",\"brand_id\":\"1\",\"button_text\":\"Promotion\",\"background_color\":\"#000000\",\"title\":null,\"sub_title\":null}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/update/6', '2026-05-07 13:17:30', '2026-05-07 13:17:30'),
(86, 1, 'Banner', 'Updated', 'Updated Banner. Data captured', '{\"_method\":\"put\",\"id\":null,\"banner_type\":\"Header Banner\",\"url\":\"https:\\/\\/winediscount.ng\\/\",\"resource_type\":\"category\",\"product_id\":\"1\",\"category_id\":\"1\",\"brand_id\":\"1\",\"button_text\":\"Promotion\",\"background_color\":\"#000000\",\"title\":null,\"sub_title\":null}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/update/6', '2026-05-07 15:12:56', '2026-05-07 15:12:56'),
(87, 1, 'Banner', 'Updated', 'Updated Banner. Data captured', '{\"_method\":\"put\",\"id\":null,\"banner_type\":\"Top Promotion Banner\",\"url\":\"https:\\/\\/winediscount.ng\\/\",\"resource_type\":\"category\",\"product_id\":\"1\",\"category_id\":\"1\",\"brand_id\":\"1\",\"button_text\":\"Promotion\",\"background_color\":\"#000000\",\"title\":null,\"sub_title\":null}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/update/6', '2026-05-07 15:13:37', '2026-05-07 15:13:37'),
(88, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"status\":\"1\",\"cookie_text\":\"test cookie\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/cookie-settings-update', '2026-05-13 08:59:32', '2026-05-13 08:59:32'),
(89, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"status\":\"1\",\"cookie_text\":\"test cookie\",\"text_color\":\"#000000\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/cookie-settings-update', '2026-05-13 09:14:18', '2026-05-13 09:14:18'),
(90, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"000000000\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"9 Yenogoa St, off Area two, Garki, Abuja 900001, Federal Capital Territory\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"tertiary\":\"#000000\",\"body_bg_color\":\"#ffffff\",\"body_bg_overlay\":\"rgba(255,250,250,0.5)\",\"phone_verification\":0}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-13 09:33:46', '2026-05-13 09:33:46'),
(91, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"09037331520\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"9 Yenogoa St, off Area two, Garki, Abuja 900001, Federal Capital Territory\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"tertiary\":\"#000000\",\"body_bg_color\":\"#ffffff\",\"body_bg_overlay\":\"rgba(255,250,250,0.5)\",\"phone_verification\":0}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-13 09:34:09', '2026-05-13 09:34:09'),
(92, 1, 'Business settings', 'POST', 'POST Business setting. Data captured', '{\"status\":\"1\",\"value\":\"hello\",\"btn\":\"Submit\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/page/installation-policy', '2026-05-13 12:39:17', '2026-05-13 12:39:17'),
(93, 1, 'Product', 'POST', 'POST Product. Data captured', '{\"products_file\":{}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/bulk-import', '2026-05-13 13:20:45', '2026-05-13 13:20:45'),
(94, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"09037331520\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"9 Yenogoa St, off Area two, Garki, Abuja 900001, Federal Capital Territory\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"tertiary\":\"#000000\",\"body_bg_color\":\"#ffffff\",\"body_bg_overlay\":\"rgba(255,250,250,0.5)\",\"phone_verification\":0}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-15 09:53:09', '2026-05-15 09:53:09'),
(95, 1, 'Business settings', 'Updated', 'Updated Business setting. Data captured', '{\"company_name\":\"Number 1 Kitchen\",\"company_phone\":\"09037331520\",\"company_email\":\"info@no1kitchenequipment.com\",\"country\":\"NG\",\"timezone\":\"UTC\",\"language\":\"en\",\"shop_address\":\"9 Yenogoa St, off Area two, Garki, Abuja 900001, Federal Capital Territory\",\"latitude\":null,\"longitude\":null,\"currency_id\":\"8\",\"currency_symbol_position\":\"right\",\"forgot_password_verification\":\"email\",\"business_mode\":\"single\",\"email_verification\":\"1\",\"pagination_limit\":\"10\",\"company_copyright_text\":\"CopyRight no1kitchen.com\",\"decimal_point_settings\":\"2\",\"app_store_download_status\":\"1\",\"app_store_download_url\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\",\"play_store_download_status\":\"1\",\"play_store_download_url\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\",\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"tertiary\":\"#000000\",\"body_bg_color\":\"#ffffff\",\"body_bg_overlay\":\"rgba(255,250,250,0.5)\",\"phone_verification\":0}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/update-info', '2026-05-15 09:53:27', '2026-05-15 09:53:27'),
(96, 1, 'Product', 'Updated', 'Updated Product: \'Wire Rack (6FT)\'', '{\"name\":[\"Wire Rack (6FT)\"],\"lang\":[\"en\"],\"description\":[\"Wire Rack\"],\"category_id\":\"16\",\"sub_category_id\":\"43\",\"brand_id\":\"1\",\"product_type\":\"physical\",\"code\":null,\"unit\":\"pc\",\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"tags\":null,\"purchase_price\":\"120\",\"unit_price\":\"150\",\"installation_fee\":\"0\",\"stock_status\":\"in_stock\",\"minimum_order_qty\":\"1\",\"current_stock\":\"20\",\"discount_type\":\"percent\",\"discount\":\"0\",\"tax\":\"0\",\"tax_type\":\"percent\",\"tax_model\":\"exclude\",\"shipping_cost\":\"0\",\"video_link\":null,\"meta_title\":null,\"meta_description\":null,\"commercial_solution\":\"on\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/update/658', '2026-06-01 13:10:15', '2026-06-01 13:10:15'),
(97, 1, 'Product', 'Updated', 'Updated Product: \'Wire Rack (6FT)\'', '{\"name\":[\"Wire Rack (6FT)\"],\"lang\":[\"en\"],\"description\":[\"Wire Rack\"],\"category_id\":\"16\",\"sub_category_id\":\"43\",\"brand_id\":\"1\",\"product_type\":\"physical\",\"code\":\"131744\",\"unit\":\"pc\",\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"tags\":null,\"purchase_price\":\"120\",\"unit_price\":\"150\",\"installation_fee\":\"0\",\"stock_status\":\"in_stock\",\"minimum_order_qty\":\"1\",\"current_stock\":\"20\",\"discount_type\":\"percent\",\"discount\":\"0\",\"tax\":\"0\",\"tax_type\":\"percent\",\"tax_model\":\"exclude\",\"shipping_cost\":\"0\",\"video_link\":null,\"meta_title\":null,\"meta_description\":null,\"commercial_solution\":\"on\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/update/658', '2026-06-01 13:10:27', '2026-06-01 13:10:27'),
(98, 1, 'Product', 'Updated', 'Updated Product: \'Wire Rack (6FT)\'', '{\"name\":[\"Wire Rack (6FT)\"],\"lang\":[\"en\"],\"description\":[\"Wire Rack\"],\"category_id\":\"16\",\"sub_category_id\":\"43\",\"brand_id\":\"1\",\"product_type\":\"physical\",\"code\":\"131744\",\"unit\":\"pc\",\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"tags\":null,\"purchase_price\":\"120\",\"unit_price\":\"150\",\"installation_fee\":\"0\",\"stock_status\":\"in_stock\",\"minimum_order_qty\":\"1\",\"current_stock\":\"20\",\"discount_type\":\"percent\",\"discount\":\"0\",\"tax\":\"0\",\"tax_type\":\"percent\",\"tax_model\":\"exclude\",\"shipping_cost\":\"0\",\"video_link\":null,\"meta_title\":null,\"meta_description\":null,\"commercial_solution\":\"on\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/update/658', '2026-06-01 13:10:27', '2026-06-01 13:10:27'),
(99, 1, 'Blog', 'Created', 'Created Blog: \'Test\'', '{\"title\":\"Test\",\"content\":\"Test Blogs\",\"status\":\"on\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/blog/store', '2026-07-07 21:53:41', '2026-07-07 21:53:41'),
(100, 1, 'Business settings', 'PUT', 'PUT Business setting. Data captured', '{\"_method\":\"PUT\",\"status\":1,\"gateway\":\"paystack\",\"mode\":\"test\",\"public_key\":\"pk_test_e09a4b03f9b99a727ad2d615f490b96abc59b343\",\"secret_key\":\"sk_test_ddcdc57297ccd575f546a342327832de4bad20f4\",\"merchant_email\":\"emmanuelemesue97@gmail.com\",\"gateway_title\":\"Paystack\",\"gateway_image\":{}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/business-settings/payment-method/addon-payment-set', '2026-07-22 21:59:46', '2026-07-22 21:59:46'),
(101, 1, 'Product settings', 'Updated', 'Updated Product setting. Data captured', '{\"stock_limit\":\"10\",\"digital_product\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product-settings/update-product-settings', '2026-08-03 12:32:06', '2026-08-03 12:32:06'),
(102, 1, 'Pos', 'POST', 'POST Po. Data captured', '{\"customer\":null}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pos/view-all-hold-orders', '2026-08-03 18:29:26', '2026-08-03 18:29:26'),
(103, 1, 'Pos', 'POST', 'POST Po. Data captured', '{\"customer\":null}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pos/view-all-hold-orders', '2026-08-03 18:29:41', '2026-08-03 18:29:41'),
(104, 1, 'Pos', 'POST', 'POST Po. Data captured', '{\"customer\":null}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pos/view-all-hold-orders', '2026-08-03 18:29:51', '2026-08-03 18:29:51'),
(105, 1, 'Pos', 'POST', 'POST Po. Data captured', '{\"customer\":null}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pos/view-all-hold-orders', '2026-08-03 18:29:54', '2026-08-03 18:29:54'),
(106, 1, 'Pos', 'POST', 'POST Po. Data captured', '{\"customer\":null}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pos/view-all-hold-orders', '2026-08-03 18:29:56', '2026-08-03 18:29:56'),
(107, 1, 'Pos', 'POST', 'POST Po. Data captured', '{\"customer\":null}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pos/view-all-hold-orders', '2026-08-03 18:30:04', '2026-08-03 18:30:04'),
(108, 1, 'Product', 'Updated', 'Updated Product: \'Wire Rack (6FT)\'', '{\"name\":[\"Wire Rack (6FT)\"],\"lang\":[\"en\"],\"description\":[\"Wire Rack\"],\"category_id\":\"16\",\"sub_category_id\":\"43\",\"product_type\":\"physical\",\"code\":\"131744\",\"unit\":\"pc\",\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"tags\":null,\"purchase_price\":\"120\",\"unit_price\":\"150\",\"installation_fee\":\"0\",\"stock_status\":\"in_stock\",\"minimum_order_qty\":\"1\",\"current_stock\":\"18\",\"discount_type\":\"percent\",\"discount\":\"0\",\"tax\":\"0\",\"tax_type\":\"percent\",\"tax_model\":\"exclude\",\"shipping_cost\":\"0\",\"video_link\":null,\"meta_title\":null,\"meta_description\":null,\"commercial_solution\":\"on\",\"images\":[{}]}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/update/658', '2026-08-03 18:33:35', '2026-08-03 18:33:35'),
(109, 1, 'Product', 'Updated', 'Updated Product: \'Wire Rack (6FT)\'', '{\"name\":[\"Wire Rack (6FT)\"],\"lang\":[\"en\"],\"description\":[\"Wire Rack\"],\"category_id\":\"16\",\"sub_category_id\":\"43\",\"product_type\":\"physical\",\"code\":\"131744\",\"unit\":\"pc\",\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"tags\":null,\"purchase_price\":\"120\",\"unit_price\":\"150\",\"installation_fee\":\"0\",\"stock_status\":\"in_stock\",\"minimum_order_qty\":\"1\",\"current_stock\":\"18\",\"discount_type\":\"percent\",\"discount\":\"0\",\"tax\":\"0\",\"tax_type\":\"percent\",\"tax_model\":\"exclude\",\"shipping_cost\":\"0\",\"video_link\":null,\"meta_title\":null,\"meta_description\":null,\"commercial_solution\":\"on\",\"images\":[{}]}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/product/update/658', '2026-08-03 18:33:35', '2026-08-03 18:33:35'),
(110, 1, 'Pos', 'POST', 'POST Po. Data captured', '{\"customer\":null}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pos/view-all-hold-orders', '2026-08-03 18:33:46', '2026-08-03 18:33:46'),
(111, 1, 'Pos', 'POST', 'POST Po. Data captured', '{\"customer\":null}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pos/view-all-hold-orders', '2026-08-03 18:33:57', '2026-08-03 18:33:57'),
(112, 1, 'Pos', 'POST', 'POST Po. Data captured', '{\"customer\":null}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pos/view-all-hold-orders', '2026-08-03 18:36:22', '2026-08-03 18:36:22'),
(113, 1, 'Pos', 'POST', 'POST Po. Data captured', '{\"customer\":null}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pos/view-all-hold-orders', '2026-08-03 19:20:34', '2026-08-03 19:20:34'),
(114, 1, 'Blog', 'Created', 'Created Blog: \'test\'', '{\"title\":\"test\",\"content\":\"What if your next skill didn\\u2019t require another course?Sometimes, you don\'t need more information. You need someone who can help you apply what you already know.That\\u2019s the idea behind SkilLoop.A space where people can teach what they know, learn what they need, solve real problems together and build practical experience.Because growth shouldn\'t always mean consuming more content.Sometimes, it means connecting with the right person and doing the work.Join the SkilLoop early beta cohort:\",\"status\":\"on\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/blog/store', '2026-08-31 12:10:10', '2026-08-31 12:10:10'),
(115, 1, 'Blog', 'Created', 'Created Blog: \'Heritage bank depositors demand full payment, seek FG, CBN, NDIC intervention\'', '{\"title\":\"Heritage bank depositors demand full payment, seek FG, CBN, NDIC intervention\",\"slug\":\"heritage-bank-depositors-demand-full-payment-seek-fg-cbn-ndic-intervention\",\"content\":\"subsequently more than two long time of block, injured depositors of the defunct Heritage Bank have called on the Federal Government (FG), the Central Bank of Nigeria (CBN). Additionally, the Nigeria Deposit Insurance Corporation (NDIC), to enforce immediate payment of their legitimate funds trapped in the failed bank, saying prolonged delays have subjected thousands of Nigerians to severe financial hardship.Developments regarding Heritage Bank Depositor and Bank Depositor DemandCBN revoked the banking license and closed Heritage Bank Plc on June 3, 2024 citing inability of the bank to improve its poor financial performance and had no realistic prospects of recovery.The apex bank subsequently mandated the NDIC as the liquidator to manage the bank\\u2019s assets and refund depositors.Analysis of Bank Depositor DemandBut two years after, the depositors, under the umbrella of the Concerned Heritage Bank Depositors Forum, issued a statement claiming their monies have not been refunded.In a statement titled, \\u201cOur Money, Our Right: Pay Heritage Bank Depositors Their Full Funds Now\\u201d, the group said many depositors have remained unable to access their savings for months, adding that the funds represent earnings accumulated through years of work, sacrifice and responsible financial planning.Key details on Depositor Demand FullThe depositors said the situation had moved beyond a banking dispute, stressing that families were being forced to bear the consequences of inaccessible funds.They listed school fees, medical expenses, business capital and retirement needs among the pressing obligations affected by the delay in accessing their deposits.Insights and perspectives on Full PaymentThe group said that parents were struggling to meet school expenses, patients were unable to afford medical bills, entrepreneurs had their business capital locked up. Meanwhile, pensioners depended on their retirement savings for survival.Describing the matter as one of \\u201ctrust, dignity and economic justice,\\u201d the depositors called on the media, civil society organisations and other stakeholders to support their campaign for what they described as financial justice.Implications for CbnThey further warned that continued delays would deepen the hardship being experienced by affected Nigerians.They said: \\u201cBehind every trapped account is a Nigerian family facing real hardship, Let\\u2019s join hand to push the campaigns. Justice delayed is hardship prolonged, Nigerians had saved responsibly and that institutions must equally act responsibly in resolving the matter.\\u201d Depositor said.The group concluded with its central message: \\u201cWe saved responsibly. They must pay responsibly.\\u201dThe post Heritage bank depositors demand full payment, seek FG, CBN, NDIC intervention appeared first on Vanguard News.\",\"excerpt\":null,\"focus_keyword\":null,\"preview_device\":\"on\",\"meta_title\":\"Heritage bank depositors demand full payment, seek FG, CBN, NDIC intervention\",\"meta_description\":null,\"og_title\":null,\"og_description\":null,\"canonical_url\":null,\"status\":\"on\",\"published_at\":\"2026-08-31T14:53\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/blog/store', '2026-08-31 14:14:35', '2026-08-31 14:14:35');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `banner_type` varchar(255) NOT NULL,
  `theme` varchar(255) NOT NULL DEFAULT 'default',
  `published` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `resource_type` varchar(191) DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `sub_title` varchar(191) DEFAULT NULL,
  `button_text` varchar(191) DEFAULT NULL,
  `background_color` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `banner_type`, `theme`, `published`, `created_at`, `updated_at`, `url`, `resource_type`, `resource_id`, `title`, `sub_title`, `button_text`, `background_color`) VALUES
(3, '2026-04-24-69eb4368bf18b.webp', 'Main Banner', 'default', 1, '2026-04-24 09:18:16', '2026-04-24 09:18:24', 'https://winediscount.ng/', 'brand', 1, NULL, NULL, NULL, NULL),
(5, '2026-05-07-69fc912d27178.webp', 'Main Section Banner', 'default', 1, '2026-05-07 12:18:37', '2026-05-07 13:03:23', 'https://no1kitchenequipment.com/', 'product', 1, NULL, NULL, NULL, NULL),
(6, '2026-05-07-69fcba31348f4.gif', 'Top Promotion Banner', 'default', 1, '2026-05-07 12:49:49', '2026-05-07 15:13:37', 'https://winediscount.ng/', 'category', 1, NULL, NULL, 'Promotion', '#000000');

-- --------------------------------------------------------

--
-- Table structure for table `billing_addresses`
--

CREATE TABLE `billing_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contact_person_name` varchar(191) DEFAULT NULL,
  `address_type` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `zip` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `content` longtext NOT NULL,
  `excerpt` text DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `focus_keyword` varchar(191) DEFAULT NULL,
  `canonical_url` varchar(191) DEFAULT NULL,
  `og_title` varchar(191) DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `views_count` int(11) NOT NULL DEFAULT 0,
  `reading_time` int(11) NOT NULL DEFAULT 1,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `category_id`, `title`, `slug`, `content`, `excerpt`, `author_id`, `image`, `status`, `meta_title`, `meta_description`, `focus_keyword`, `canonical_url`, `og_title`, `og_description`, `og_image`, `is_featured`, `views_count`, `reading_time`, `published_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Test', 'test', '<p>Test Blogs</p>', NULL, NULL, '2026-07-07-6a4d83755062f.webp', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, '2026-07-07 21:53:41', '2026-07-07 21:53:41'),
(2, NULL, 'test', 'test-1', '<p><br>What if your next skill didn’t require another course?<br><br>Sometimes, you don\'t need more information. You need someone who can help you apply what you already know.<br><br>That’s the idea behind SkilLoop.<br><br>A space where people can teach what they know, learn what they need, solve real problems together and build practical experience.<br><br>Because growth shouldn\'t always mean consuming more content.<br><br>Sometimes, it means connecting with the right person and doing the work.<br><br>Join the SkilLoop early beta cohort:</p>', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, '2026-08-31 12:10:10', '2026-08-31 12:10:10'),
(3, NULL, 'Heritage bank depositors demand full payment, seek FG, CBN, NDIC intervention', 'heritage-bank-depositors-demand-full-payment-seek-fg-cbn-ndic-intervention', '<p>subsequently more than two long time of block, injured depositors of the defunct Heritage Bank have called on the Federal Government (FG), the Central Bank of Nigeria (CBN). Additionally, the Nigeria Deposit Insurance Corporation (NDIC), to enforce immediate payment of their legitimate funds trapped in the failed bank, saying prolonged delays have subjected thousands of Nigerians to severe financial hardship.</p><h2><strong>Developments regarding Heritage Bank Depositor and Bank Depositor Demand</strong></h2><p>CBN revoked the banking license and closed Heritage Bank Plc on June 3, 2024 citing inability of the bank to improve its poor financial performance and had no realistic prospects of recovery.</p><p>The apex bank subsequently mandated the NDIC as the liquidator to manage the bank’s assets and refund depositors.</p><h2><strong>Analysis of Bank Depositor Demand</strong></h2><p>But two years after, the depositors, under the umbrella of the Concerned Heritage Bank Depositors Forum, issued a statement claiming their monies have not been refunded.</p><p>In a statement titled, “Our Money, Our Right: Pay Heritage Bank Depositors Their Full Funds Now”, the group said many depositors have remained unable to access their savings for months, adding that the funds represent earnings accumulated through years of work, sacrifice and responsible financial planning.</p><h2><strong>Key details on Depositor Demand Full</strong></h2><p>The depositors said the situation had moved beyond a banking dispute, stressing that families were being forced to bear the consequences of inaccessible funds.</p><p>They listed school fees, medical expenses, business capital and retirement needs among the pressing obligations affected by the delay in accessing their deposits.</p><h2><strong>Insights and perspectives on Full Payment</strong></h2><p>The group said that parents were struggling to meet school expenses, patients were unable to afford medical bills, entrepreneurs had their business capital locked up. Meanwhile, pensioners depended on their retirement savings for survival.</p><p>Describing the matter as one of “trust, dignity and economic justice,” the depositors called on the media, civil society organisations and other stakeholders to support their campaign for what they described as financial justice.</p><h2><strong>Implications for Cbn</strong></h2><p>They further warned that continued delays would deepen the hardship being experienced by affected Nigerians.</p><p>They said: “Behind every trapped account is a Nigerian family facing real hardship, Let’s join hand to push the campaigns. Justice delayed is hardship prolonged, Nigerians had saved responsibly and that institutions must equally act responsibly in resolving the matter.” Depositor said.</p><p>The group concluded with its central message: “We saved responsibly. They must pay responsibly.”</p><p>The post <a href=\"https://www.vanguardngr.com/2026/08/heritage-bank-depositors-demand-full-payment-seek-fg-cbn-ndic-intervention/\">Heritage bank depositors demand full payment, seek FG, CBN, NDIC intervention</a> appeared first on <a href=\"https://www.vanguardngr.com/\">Vanguard News</a>.</p>', NULL, 1, NULL, 1, 'Heritage bank depositors demand full payment, seek FG, CBN, NDIC intervention', NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 3, '2026-08-31 13:53:00', '2026-08-31 14:14:35', '2026-08-31 14:33:28');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_tag`
--

CREATE TABLE `blog_post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_post_id` bigint(20) UNSIGNED NOT NULL,
  `blog_tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(50) NOT NULL DEFAULT 'def.png',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'No 1', 'default.png', 1, '2026-04-23 10:39:07', '2026-04-24 09:18:49'),
(2, 'Amazon', '2026-05-07-69fc70dad1bf0.webp', 1, '2026-05-07 10:00:42', '2026-05-07 10:00:42'),
(3, 'apacino', '2026-05-07-69fc70e81e5d1.webp', 1, '2026-05-07 10:00:56', '2026-05-07 10:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'system_default_currency', '8', '2020-10-11 07:43:44', '2021-06-04 18:25:29'),
(2, 'language', '[{\"id\":\"1\",\"name\":\"english\",\"direction\":\"ltr\",\"code\":\"en\",\"status\":1,\"default\":true}]', '2020-10-11 07:53:02', '2026-05-15 09:53:27'),
(3, 'mail_config', '{\"status\":\"1\",\"name\":\"No1Kitchen\",\"host\":\"mail.no1kitchenequipment.com\",\"driver\":\"smtp\",\"port\":\"587\",\"username\":\"info@no1kitchenequipment.com\",\"email_id\":\"info@no1kitchenequipment.com\",\"encryption\":\"tls\",\"password\":\"U$;JvkupZ0ZnBV%[\"}', '2020-10-12 10:29:18', '2026-04-20 11:50:19'),
(4, 'cash_on_delivery', '{\"status\":\"1\"}', NULL, '2021-05-25 21:21:15'),
(6, 'ssl_commerz_payment', '{\"status\":\"0\",\"environment\":\"sandbox\",\"store_id\":\"\",\"store_password\":\"\"}', '2020-11-09 08:36:51', '2023-01-10 05:51:56'),
(7, 'paypal', '{\"status\":\"0\",\"environment\":\"sandbox\",\"paypal_client_id\":\"\",\"paypal_secret\":\"\"}', '2020-11-09 08:51:39', '2023-01-10 05:51:56'),
(8, 'stripe', '{\"status\":\"0\",\"api_key\":null,\"published_key\":null}', '2020-11-09 09:01:47', '2021-07-06 12:30:05'),
(10, 'company_phone', '09037331520', NULL, '2020-12-08 14:15:01'),
(11, 'company_name', 'Number 1 Kitchen', NULL, '2021-02-27 18:11:53'),
(12, 'company_web_logo', '2021-05-25-60ad1b313a9d4.png', NULL, '2021-05-25 21:43:45'),
(13, 'company_mobile_logo', '2021-02-20-6030c88c91911.png', NULL, '2021-02-20 14:30:04'),
(14, 'terms_condition', '<p>terms and conditions</p>', NULL, '2021-06-11 01:51:36'),
(15, 'about_us', '<p>this is about us page. hello and hi from about page description..</p>', NULL, '2021-06-11 01:42:53'),
(16, 'sms_nexmo', '{\"status\":\"0\",\"nexmo_key\":\"custo5cc042f7abf4c\",\"nexmo_secret\":\"custo5cc042f7abf4c@ssl\"}', NULL, NULL),
(17, 'company_email', 'info@no1kitchenequipment.com', NULL, '2021-03-15 12:29:51'),
(18, 'colors', '{\"primary\":\"#1b7fed\",\"secondary\":\"#000000\",\"tertiary\":\"#000000\",\"primary_light\":\"#CFDFFB\",\"body_bg_color\":\"#ffffff\",\"body_bg_overlay\":\"rgba(255,250,250,0.5)\"}', '2020-10-11 13:53:02', '2023-10-30 11:02:55'),
(19, 'company_footer_logo', '2021-02-20-6030c8a02a5f9.png', NULL, '2021-02-20 14:30:24'),
(20, 'company_copyright_text', 'CopyRight no1kitchen.com', NULL, '2021-03-15 12:30:47'),
(21, 'download_app_apple_stroe', '{\"status\":\"1\",\"link\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\"}', NULL, '2020-12-08 12:54:53'),
(22, 'download_app_google_stroe', '{\"status\":\"1\",\"link\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\"}', NULL, '2020-12-08 12:54:48'),
(23, 'company_fav_icon', '2021-03-02-603df1634614f.png', '2020-10-11 13:53:02', '2021-03-02 14:03:48'),
(24, 'fcm_topic', '', NULL, NULL),
(25, 'fcm_project_id', '', NULL, NULL),
(26, 'push_notification_key', 'Put your firebase server key here.', NULL, NULL),
(27, 'order_pending_message', '{\"status\":\"1\",\"message\":\"order pen message\"}', NULL, NULL),
(28, 'order_confirmation_msg', '{\"status\":\"1\",\"message\":\"Order con Message\"}', NULL, NULL),
(29, 'order_processing_message', '{\"status\":\"1\",\"message\":\"Order pro Message\"}', NULL, NULL),
(30, 'out_for_delivery_message', '{\"status\":\"1\",\"message\":\"Order ouut Message\"}', NULL, NULL),
(31, 'order_delivered_message', '{\"status\":\"1\",\"message\":\"Order del Message\"}', NULL, NULL),
(32, 'razor_pay', '{\"status\":\"0\",\"razor_key\":null,\"razor_secret\":null}', NULL, '2021-07-06 12:30:14'),
(33, 'sales_commission', '0', NULL, '2021-06-11 18:13:13'),
(34, 'seller_registration', '1', NULL, '2021-06-04 21:02:48'),
(35, 'pnc_language', '[\"en\"]', NULL, NULL),
(36, 'order_returned_message', '{\"status\":\"1\",\"message\":\"Order hh Message\"}', NULL, NULL),
(37, 'order_failed_message', '{\"status\":null,\"message\":\"Order fa Message\"}', NULL, NULL),
(40, 'delivery_boy_assign_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(41, 'delivery_boy_start_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(42, 'delivery_boy_delivered_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(43, 'terms_and_conditions', '', NULL, NULL),
(44, 'minimum_order_value', '1', NULL, NULL),
(45, 'privacy_policy', '<p>my privacy policy</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2021-07-06 11:09:07'),
(46, 'paystack', '{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":\"https:\\/\\/api.paystack.co\",\"merchantEmail\":null}', NULL, '2021-07-06 12:30:35'),
(47, 'senang_pay', '{\"status\":\"0\",\"secret_key\":null,\"merchant_id\":null}', NULL, '2021-07-06 12:30:23'),
(48, 'currency_model', 'single_currency', NULL, NULL),
(49, 'social_login', '[{\"login_medium\":\"google\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":\"\"},{\"login_medium\":\"facebook\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":\"\"}]', NULL, NULL),
(50, 'digital_payment', '{\"status\":\"1\"}', NULL, NULL),
(51, 'phone_verification', '0', NULL, NULL),
(52, 'email_verification', '1', NULL, NULL),
(53, 'order_verification', '0', NULL, NULL),
(54, 'country_code', 'NG', NULL, NULL),
(55, 'pagination_limit', '10', NULL, NULL),
(56, 'shipping_method', 'inhouse_shipping', NULL, NULL),
(57, 'paymob_accept', '{\"status\":\"0\",\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\"}', NULL, NULL),
(58, 'bkash', '{\"status\":\"0\",\"environment\":\"sandbox\",\"api_key\":\"\",\"api_secret\":\"\",\"username\":\"\",\"password\":\"\"}', NULL, '2023-01-10 05:51:56'),
(59, 'forgot_password_verification', 'email', NULL, NULL),
(60, 'paytabs', '{\"status\":0,\"profile_id\":\"\",\"server_key\":\"\",\"base_url\":\"https:\\/\\/secure-egypt.paytabs.com\\/\"}', NULL, '2021-11-21 03:01:40'),
(61, 'stock_limit', '10', NULL, NULL),
(62, 'flutterwave', '{\"status\":0,\"public_key\":\"\",\"secret_key\":\"\",\"hash\":\"\"}', NULL, NULL),
(63, 'mercadopago', '{\"status\":0,\"public_key\":\"\",\"access_token\":\"\"}', NULL, NULL),
(64, 'announcement', '{\"status\":null,\"color\":null,\"text_color\":null,\"announcement\":null}', NULL, NULL),
(65, 'fawry_pay', '{\"status\":0,\"merchant_code\":\"\",\"security_key\":\"\"}', NULL, '2022-01-18 09:46:30'),
(66, 'recaptcha', '{\"status\":0,\"site_key\":\"\",\"secret_key\":\"\"}', NULL, '2022-01-18 09:46:30'),
(67, 'seller_pos', '0', NULL, NULL),
(68, 'liqpay', '{\"status\":0,\"public_key\":\"\",\"private_key\":\"\"}', NULL, NULL),
(69, 'paytm', '{\"status\":0,\"environment\":\"sandbox\",\"paytm_merchant_key\":\"\",\"paytm_merchant_mid\":\"\",\"paytm_merchant_website\":\"\",\"paytm_refund_url\":\"\"}', NULL, '2023-01-10 05:51:56'),
(70, 'refund_day_limit', '0', NULL, NULL),
(71, 'business_mode', 'single', NULL, NULL),
(72, 'mail_config_sendgrid', '{\"status\":0,\"name\":\"\",\"host\":\"\",\"driver\":\"\",\"port\":\"\",\"username\":\"\",\"email_id\":\"\",\"encryption\":\"\",\"password\":\"\"}', NULL, '2026-04-20 11:50:19'),
(73, 'decimal_point_settings', '2', NULL, NULL),
(74, 'shop_address', '9 Yenogoa St, off Area two, Garki, Abuja 900001, Federal Capital Territory', NULL, NULL),
(75, 'billing_input_by_customer', '1', NULL, NULL),
(76, 'wallet_status', '0', NULL, NULL),
(77, 'loyalty_point_status', '0', NULL, NULL),
(78, 'wallet_add_refund', '0', NULL, NULL),
(79, 'loyalty_point_exchange_rate', '0', NULL, NULL),
(80, 'loyalty_point_item_purchase_point', '0', NULL, NULL),
(81, 'loyalty_point_minimum_point', '0', NULL, NULL),
(82, 'minimum_order_limit', '1', NULL, NULL),
(83, 'product_brand', '0', NULL, NULL),
(84, 'digital_product', '1', NULL, NULL),
(85, 'delivery_boy_expected_delivery_date_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(86, 'order_canceled', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(87, 'refund-policy', '{\"status\":1,\"content\":\"\"}', NULL, '2023-03-04 06:25:36'),
(88, 'return-policy', '{\"status\":1,\"content\":\"\"}', NULL, '2023-03-04 06:25:36'),
(89, 'cancellation-policy', '{\"status\":1,\"content\":\"\"}', NULL, '2023-03-04 06:25:36'),
(90, 'offline_payment', '{\"status\":0}', NULL, '2023-03-04 06:25:36'),
(91, 'temporary_close', '{\"status\":0}', NULL, '2023-03-04 06:25:36'),
(92, 'vacation_add', '{\"status\":0,\"vacation_start_date\":null,\"vacation_end_date\":null,\"vacation_note\":null}', NULL, '2023-03-04 06:25:36'),
(93, 'cookie_setting', '{\"status\":\"1\",\"cookie_text\":\"test cookie\",\"text_color\":\"#000000\"}', NULL, '2026-05-13 09:14:18'),
(94, 'maximum_otp_hit', '0', NULL, '2023-06-13 13:04:49'),
(95, 'otp_resend_time', '0', NULL, '2023-06-13 13:04:49'),
(96, 'temporary_block_time', '0', NULL, '2023-06-13 13:04:49'),
(97, 'maximum_login_hit', '0', NULL, '2023-06-13 13:04:49'),
(98, 'temporary_login_block_time', '0', NULL, '2023-06-13 13:04:49'),
(99, 'maximum_otp_hit', '0', NULL, '2023-10-13 05:34:53'),
(100, 'otp_resend_time', '0', NULL, '2023-10-13 05:34:53'),
(101, 'temporary_block_time', '0', NULL, '2023-10-13 05:34:53'),
(102, 'maximum_login_hit', '0', NULL, '2023-10-13 05:34:53'),
(103, 'temporary_login_block_time', '0', NULL, '2023-10-13 05:34:53'),
(104, 'apple_login', '[{\"login_medium\":\"apple\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":0,\"team_id\":\"\",\"key_id\":\"\",\"service_file\":\"\",\"redirect_url\":\"\"}]', NULL, '2023-10-13 05:34:53'),
(105, 'ref_earning_status', '0', NULL, '2023-10-13 05:34:53'),
(106, 'ref_earning_exchange_rate', '0', NULL, '2023-10-13 05:34:53'),
(107, 'guest_checkout', '0', NULL, '2023-10-13 11:34:53'),
(108, 'minimum_order_amount', '0', NULL, '2023-10-13 11:34:53'),
(109, 'minimum_order_amount_by_seller', '0', NULL, '2023-10-13 11:34:53'),
(110, 'minimum_order_amount_status', '0', NULL, '2023-10-13 11:34:53'),
(111, 'admin_login_url', 'admin', NULL, '2023-10-13 11:34:53'),
(112, 'employee_login_url', 'employee', NULL, '2023-10-13 11:34:53'),
(113, 'free_delivery_status', '0', NULL, '2023-10-13 11:34:53'),
(114, 'free_delivery_responsibility', 'admin', NULL, '2023-10-13 11:34:53'),
(115, 'free_delivery_over_amount', '0', NULL, '2023-10-13 11:34:53'),
(116, 'free_delivery_over_amount_seller', '0', NULL, '2023-10-13 11:34:53'),
(117, 'add_funds_to_wallet', '0', NULL, '2023-10-13 11:34:53'),
(118, 'minimum_add_fund_amount', '0', NULL, '2023-10-13 11:34:53'),
(119, 'maximum_add_fund_amount', '0', NULL, '2023-10-13 11:34:53'),
(120, 'user_app_version_control', '{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}', NULL, '2023-10-13 11:34:53'),
(121, 'seller_app_version_control', '{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}', NULL, '2023-10-13 11:34:53'),
(122, 'delivery_man_app_version_control', '{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}', NULL, '2023-10-13 11:34:53'),
(123, 'whatsapp', '{\"status\":\"1\",\"phone\":\"09037331520\"}', '2026-04-24 15:44:14', '2026-04-24 15:44:14'),
(124, 'currency_symbol_position', 'right', NULL, '2023-10-13 11:34:53'),
(125, 'maximum_otp_hit', '0', NULL, '2023-10-30 11:02:55'),
(126, 'otp_resend_time', '0', NULL, '2023-10-30 11:02:55'),
(127, 'temporary_block_time', '0', NULL, '2023-10-30 11:02:55'),
(128, 'maximum_login_hit', '0', NULL, '2023-10-30 11:02:55'),
(129, 'temporary_login_block_time', '0', NULL, '2023-10-30 11:02:55'),
(130, 'ref_earning_status', '0', NULL, '2023-10-30 11:02:55'),
(131, 'ref_earning_exchange_rate', '0', NULL, '2023-10-30 11:02:55'),
(132, 'guest_checkout', '0', NULL, '2023-10-30 11:02:55'),
(133, 'minimum_order_amount', '0', NULL, '2023-10-30 11:02:55'),
(134, 'minimum_order_amount_by_seller', '0', NULL, '2023-10-30 11:02:55'),
(135, 'minimum_order_amount_status', '0', NULL, '2023-10-30 11:02:55'),
(136, 'admin_login_url', 'admin', NULL, '2023-10-30 11:02:55'),
(137, 'employee_login_url', 'employee', NULL, '2023-10-30 11:02:55'),
(138, 'free_delivery_status', '0', NULL, '2023-10-30 11:02:55'),
(139, 'free_delivery_responsibility', 'admin', NULL, '2023-10-30 11:02:55'),
(140, 'free_delivery_over_amount', '0', NULL, '2023-10-30 11:02:55'),
(141, 'free_delivery_over_amount_seller', '0', NULL, '2023-10-30 11:02:55'),
(142, 'add_funds_to_wallet', '0', NULL, '2023-10-30 11:02:55'),
(143, 'minimum_add_fund_amount', '0', NULL, '2023-10-30 11:02:55'),
(144, 'maximum_add_fund_amount', '0', NULL, '2023-10-30 11:02:55'),
(145, 'user_app_version_control', '{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}', NULL, '2023-10-30 11:02:55'),
(146, 'seller_app_version_control', '{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}', NULL, '2023-10-30 11:02:55'),
(147, 'delivery_man_app_version_control', '{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}', NULL, '2023-10-30 11:02:55'),
(148, 'company_reliability', '[{\"item\":\"delivery_info\",\"title\":\"Fast Delivery all across the country\",\"image\":\"\",\"status\":1},{\"item\":\"safe_payment\",\"title\":\"Safe Payment\",\"image\":\"\",\"status\":1},{\"item\":\"return_policy\",\"title\":\"7 Days Return Policy\",\"image\":\"\",\"status\":1},{\"item\":\"authentic_product\",\"title\":\"100% Authentic Products\",\"image\":\"\",\"status\":1}]', NULL, NULL),
(149, 'timezone', 'UTC', NULL, NULL),
(150, 'default_location', '{\"lat\":null,\"lng\":null}', NULL, NULL),
(151, 'kitchen_solutions_ui', '{\"header_bg_image\":\"2026-04-26-69ee3890d4cd0.jpg\",\"header_title\":\"ENCUIRY\",\"header_subtitle\":null,\"header_bg_color\":\"#000000\",\"header_text_color\":\"#ffffff\",\"form_title\":null,\"form_subtitle\":null,\"secondary_title\":null,\"secondary_description\":null}', NULL, NULL),
(152, 'delivery_country_restriction', '1', NULL, '2026-04-28 11:48:13'),
(153, 'body_bg_img', '', NULL, '2026-05-06 11:27:29'),
(154, 'installation-policy', '{\"status\":1,\"content\":\"<p>hello<\\/p>\"}', NULL, '2026-05-13 12:39:17'),
(155, 'testimonial_page_status', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `cart_group_id` varchar(191) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `product_type` varchar(20) NOT NULL DEFAULT 'physical',
  `digital_product_type` varchar(30) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `choices` text DEFAULT NULL,
  `variations` text DEFAULT NULL,
  `variant` text DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` double NOT NULL DEFAULT 1,
  `tax` double NOT NULL DEFAULT 1,
  `discount` double NOT NULL DEFAULT 1,
  `tax_model` varchar(20) NOT NULL DEFAULT 'exclude',
  `slug` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `thumbnail` varchar(191) DEFAULT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `seller_is` varchar(191) NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_info` varchar(191) DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `shipping_type` varchar(191) DEFAULT NULL,
  `is_guest` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_shippings`
--

CREATE TABLE `cart_shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_group_id` varchar(191) DEFAULT NULL,
  `shipping_method_id` bigint(20) DEFAULT NULL,
  `shipping_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_shippings`
--

INSERT INTO `cart_shippings` (`id`, `cart_group_id`, `shipping_method_id`, `shipping_cost`, `created_at`, `updated_at`) VALUES
(1, '3-iDvHL-1777028913', 2, 5.00, '2026-04-24 11:16:36', '2026-04-24 11:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `icon` varchar(250) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_status` tinyint(1) NOT NULL DEFAULT 0,
  `priority` int(11) DEFAULT NULL,
  `level_2_max` bigint(20) DEFAULT NULL,
  `level_3_max` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `parent_id`, `position`, `created_at`, `updated_at`, `home_status`, `priority`, `level_2_max`, `level_3_max`) VALUES
(1, 'Wines', 'wines', '2026-04-20-69e6097a1bd27.webp', 0, 0, '2026-04-20 09:26:13', '2026-05-07 12:25:57', 1, 2, NULL, NULL),
(2, 'Home Appliances', 'home-appliances', NULL, 0, 1, '2026-04-23 10:38:43', '2026-04-23 10:38:43', 1, 1, NULL, NULL),
(3, 'Kitchenware', 'kitchenware', NULL, 0, 1, '2026-04-23 10:38:43', '2026-04-23 10:38:43', 1, 1, NULL, NULL),
(4, 'Cooking Equipment', 'cooking-equipment', 'def.png', 0, 0, '2026-05-01 17:47:28', '2026-05-07 12:25:45', 1, 1, NULL, NULL),
(5, 'Gas Cookers', 'gas-cookers', 'def.png', 4, 1, '2026-05-01 17:47:28', '2026-05-01 17:47:28', 1, 1, NULL, NULL),
(6, 'Fryers', 'fryers', 'def.png', 4, 1, '2026-05-01 17:47:28', '2026-05-01 17:47:28', 1, 1, NULL, NULL),
(7, 'Ovens', 'ovens', 'def.png', 4, 1, '2026-05-01 17:47:28', '2026-05-01 17:47:28', 1, 1, NULL, NULL),
(8, 'Refrigeration', 'refrigeration', 'def.png', 0, 0, '2026-05-01 17:47:28', '2026-05-07 12:25:47', 1, 1, NULL, NULL),
(9, 'Chillers', 'chillers', 'def.png', 8, 1, '2026-05-01 17:47:28', '2026-05-01 17:47:28', 1, 1, NULL, NULL),
(10, 'Freezers', 'freezers', 'def.png', 8, 1, '2026-05-01 17:47:28', '2026-05-01 17:47:28', 1, 1, NULL, NULL),
(11, 'Display Fridges', 'display-fridges', 'def.png', 8, 1, '2026-05-01 17:47:28', '2026-05-01 17:47:28', 1, 1, NULL, NULL),
(12, 'Food Preparation', 'food-preparation', 'def.png', 0, 0, '2026-05-01 17:47:28', '2026-05-07 12:25:49', 1, 1, NULL, NULL),
(13, 'Mixers', 'mixers', 'def.png', 12, 1, '2026-05-01 17:47:28', '2026-05-01 17:47:28', 1, 1, NULL, NULL),
(14, 'Slicers', 'slicers', 'def.png', 12, 1, '2026-05-01 17:47:28', '2026-05-01 17:47:28', 1, 1, NULL, NULL),
(15, 'Blenders', 'blenders', 'def.png', 12, 1, '2026-05-01 17:47:28', '2026-05-01 17:47:28', 1, 1, NULL, NULL),
(16, 'Storage & Stainless Steel', 'storage-stainless-steel', 'def.png', 0, 0, '2026-05-01 17:47:28', '2026-05-07 12:25:52', 1, 1, NULL, NULL),
(17, 'Work Tables', 'work-tables', 'def.png', 16, 1, '2026-05-01 17:47:28', '2026-05-01 17:47:28', 1, 1, NULL, NULL),
(18, 'Sinks', 'sinks', 'def.png', 16, 1, '2026-05-01 17:47:28', '2026-05-01 17:47:28', 1, 1, NULL, NULL),
(19, 'Racks', 'racks', 'def.png', 16, 1, '2026-05-01 17:47:28', '2026-05-01 17:47:28', 1, 1, NULL, NULL),
(20, 'Bakery Equipment', 'bakery-equipment', 'def.png', 0, 0, '2026-05-01 17:47:28', '2026-05-07 12:25:54', 1, 1, NULL, NULL),
(21, 'Industrial Mixers', 'industrial-mixers', 'def.png', 20, 1, '2026-05-01 17:47:28', '2026-05-01 17:47:28', 1, 1, NULL, NULL),
(22, 'Baking Ovens', 'baking-ovens', 'def.png', 20, 1, '2026-05-01 17:47:28', '2026-05-01 17:47:28', 1, 1, NULL, NULL),
(23, 'Fast Food Equipment', 'fast-food-equipment', 'def.png', 4, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(24, 'Induction Cooker', 'induction-cooker', 'def.png', 4, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(25, 'Rice Cooker', 'rice-cooker', 'def.png', 4, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(26, 'Ice Cream Machine', 'ice-cream-machine', 'def.png', 8, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(27, 'Fried Ice Cream Machine', 'fried-ice-cream-machine', 'def.png', 8, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(28, 'Ice Maker', 'ice-maker', 'def.png', 8, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(29, 'Supermarket Showcase', 'supermarket-showcase', 'def.png', 8, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(30, 'Cake Showcase', 'cake-showcase', 'def.png', 8, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(31, 'Beverage Cooler', 'beverage-cooler', 'def.png', 8, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(32, 'Potato Peeler', 'potato-peeler', 'def.png', 12, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(33, 'Juice Dispenser', 'juice-dispenser', 'def.png', 12, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(34, 'Cereal Dispenser', 'cereal-dispenser', 'def.png', 12, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(35, 'Ice Crusher', 'ice-crusher', 'def.png', 12, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(36, 'Auto Orange Juicer', 'auto-orange-juicer', 'def.png', 12, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(37, 'Milk Shaker & Coffee Machine', 'milk-shaker-coffee-machine', 'def.png', 12, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(38, 'Commercial Dish Washer', 'commercial-dish-washer', 'def.png', 16, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(39, 'Sink Table', 'sink-table', 'def.png', 16, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(40, 'Trolley', 'trolley', 'def.png', 16, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(41, 'Dining Cart', 'dining-cart', 'def.png', 16, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(42, 'Cabinet Working Table', 'cabinet-working-table', 'def.png', 16, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(43, 'Wire Rack', 'wire-rack', 'def.png', 16, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(44, 'Other Equipment', 'other-equipment', 'def.png', 0, 0, '2026-05-04 07:18:38', '2026-05-07 12:26:10', 1, 2, NULL, NULL),
(45, 'Water Boiler', 'water-boiler', 'def.png', 44, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(46, 'Chafing Dish', 'chafing-dish', 'def.png', 44, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(47, 'Impulse Sealer & Vacuum Machine', 'impulse-sealer-vacuum-machine', 'def.png', 44, 1, '2026-05-04 07:18:38', '2026-05-04 07:18:38', 1, 1, NULL, NULL),
(48, 'Electrical Components', 'electrical-components', NULL, 0, 0, '2026-05-07 18:23:17', '2026-05-07 18:23:17', 1, NULL, NULL, NULL),
(49, 'Cable Management', 'cable-management', NULL, 48, 1, '2026-05-07 18:23:17', '2026-05-07 18:23:17', 0, NULL, NULL, NULL),
(50, 'Connectors & Terminals', 'connectors-terminals', NULL, 48, 1, '2026-05-07 18:23:17', '2026-05-07 18:23:17', 0, NULL, NULL, NULL),
(51, 'Cable Ties', 'cable-ties', NULL, 49, 2, '2026-05-07 18:23:17', '2026-05-07 18:23:17', 0, NULL, NULL, NULL),
(52, 'Cable Glands', 'cable-glands', NULL, 49, 2, '2026-05-07 18:23:17', '2026-05-07 18:23:17', 0, NULL, NULL, NULL),
(53, 'Insulated Terminals', 'insulated-terminals', NULL, 50, 2, '2026-05-07 18:23:17', '2026-05-07 18:23:17', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_shipping_costs`
--

CREATE TABLE `category_shipping_costs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `cost` double(8,2) DEFAULT NULL,
  `multiply_qty` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_shipping_costs`
--

INSERT INTO `category_shipping_costs` (`id`, `seller_id`, `category_id`, `cost`, `multiply_qty`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 0.00, NULL, '2026-04-20 11:01:43', '2026-04-20 11:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `chattings`
--

CREATE TABLE `chattings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attachment`)),
  `sent_by_customer` tinyint(1) NOT NULL DEFAULT 0,
  `sent_by_seller` tinyint(1) NOT NULL DEFAULT 0,
  `sent_by_admin` tinyint(1) DEFAULT NULL,
  `sent_by_delivery_man` tinyint(1) DEFAULT NULL,
  `seen_by_customer` tinyint(1) NOT NULL DEFAULT 1,
  `seen_by_seller` tinyint(1) NOT NULL DEFAULT 1,
  `seen_by_admin` tinyint(1) DEFAULT NULL,
  `seen_by_delivery_man` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `mobile_number` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` text NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `feedback` varchar(191) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reply` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `mobile_number`, `subject`, `message`, `seen`, `feedback`, `created_at`, `updated_at`, `reply`) VALUES
(1, 'EMESUE Emmanuel', 'emmanuelemesue97@gmail.com', '09037331520', 'Applications update', 'hello', 0, '0', '2026-04-27 08:23:42', '2026-04-27 08:23:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `added_by` varchar(191) NOT NULL DEFAULT 'admin',
  `coupon_type` varchar(50) DEFAULT NULL,
  `coupon_bearer` varchar(191) NOT NULL DEFAULT 'inhouse',
  `seller_id` bigint(20) DEFAULT NULL COMMENT 'NULL=in-house, 0=all seller',
  `customer_id` bigint(20) DEFAULT NULL COMMENT '0 = all customer',
  `title` varchar(100) DEFAULT NULL,
  `code` varchar(15) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(8,2) NOT NULL DEFAULT 0.00,
  `max_discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(15) NOT NULL DEFAULT 'percentage',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `symbol` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `exchange_rate` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `exchange_rate`, `status`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 'USD', '1', 1, NULL, '2021-06-27 13:39:37'),
(2, 'BDT', '৳', 'BDT', '84', 1, NULL, '2021-07-06 11:52:58'),
(3, 'Indian Rupi', '₹', 'INR', '60', 1, '2020-10-15 17:23:04', '2021-06-04 18:26:38'),
(4, 'Euro', '€', 'EUR', '100', 1, '2021-05-25 21:00:23', '2021-06-04 18:25:29'),
(5, 'YEN', '¥', 'JPY', '110', 1, '2021-06-10 22:08:31', '2021-06-26 14:21:10'),
(6, 'Ringgit', 'RM', 'MYR', '4.16', 1, '2021-07-03 11:08:33', '2021-07-03 11:10:37'),
(7, 'Rand', 'R', 'ZAR', '14.26', 1, '2021-07-03 11:12:38', '2021-07-03 11:12:42'),
(8, 'Naira', 'N', 'NGN', '1', 1, '2026-04-20 11:02:26', '2026-04-20 11:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `customer_wallets`
--

CREATE TABLE `customer_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT 0.00,
  `royality_points` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_wallet_histories`
--

CREATE TABLE `customer_wallet_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `transaction_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `transaction_type` varchar(20) DEFAULT NULL,
  `transaction_method` varchar(30) DEFAULT NULL,
  `transaction_id` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_of_the_days`
--

CREATE TABLE `deal_of_the_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(12) NOT NULL DEFAULT 'amount',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryman_notifications`
--

CREATE TABLE `deliveryman_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `description` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryman_wallets`
--

CREATE TABLE `deliveryman_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `current_balance` decimal(50,2) NOT NULL DEFAULT 0.00,
  `cash_in_hand` decimal(50,2) NOT NULL DEFAULT 0.00,
  `pending_withdraw` decimal(50,2) NOT NULL DEFAULT 0.00,
  `total_withdraw` decimal(50,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_country_codes`
--

CREATE TABLE `delivery_country_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_country_codes`
--

INSERT INTO `delivery_country_codes` (`id`, `country_code`, `created_at`, `updated_at`) VALUES
(1, 'AX', NULL, NULL),
(2, 'AL', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_histories`
--

CREATE TABLE `delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_man_transactions`
--

CREATE TABLE `delivery_man_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `transaction_id` char(36) NOT NULL,
  `debit` decimal(50,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(50,2) NOT NULL DEFAULT 0.00,
  `transaction_type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men`
--

CREATE TABLE `delivery_men` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `identity_number` varchar(30) DEFAULT NULL,
  `identity_type` varchar(50) DEFAULT NULL,
  `identity_image` varchar(191) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `branch` varchar(191) DEFAULT NULL,
  `account_no` varchar(191) DEFAULT NULL,
  `holder_name` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_online` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_token` varchar(191) NOT NULL DEFAULT '6yIRXJRRfp78qJsAoKZZ6TTqhzuNJ3TcdvPBmk6n',
  `fcm_token` varchar(191) DEFAULT NULL,
  `app_language` varchar(191) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_zip_codes`
--

CREATE TABLE `delivery_zip_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zipcode` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `digital_product_otp_verifications`
--

CREATE TABLE `digital_product_otp_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_details_id` varchar(255) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emergency_contacts`
--

CREATE TABLE `emergency_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `feature_deals`
--

CREATE TABLE `feature_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(191) DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `background_color` varchar(255) DEFAULT NULL,
  `text_color` varchar(255) DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `deal_type` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_products`
--

CREATE TABLE `flash_deal_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flash_deal_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guest_users`
--

CREATE TABLE `guest_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guest_users`
--

INSERT INTO `guest_users` (`id`, `ip_address`, `fcm_token`, `created_at`, `updated_at`) VALUES
(1, '::1', NULL, '2023-10-13 05:34:54', NULL),
(2, '::1', NULL, '2023-10-30 11:02:56', NULL),
(3, '127.0.0.1', NULL, '2026-04-18 00:45:28', NULL),
(4, '127.0.0.1', NULL, '2026-04-18 00:46:55', NULL),
(5, '127.0.0.1', NULL, '2026-04-20 07:21:33', NULL),
(6, '127.0.0.1', NULL, '2026-04-20 07:25:02', NULL),
(7, '127.0.0.1', NULL, '2026-04-20 09:27:18', NULL),
(8, NULL, NULL, '2026-04-20 11:56:57', NULL),
(9, NULL, NULL, '2026-04-20 11:57:56', NULL),
(10, '127.0.0.1', NULL, '2026-04-21 08:16:09', NULL),
(11, '127.0.0.1', NULL, '2026-04-23 10:34:11', NULL),
(12, '127.0.0.1', NULL, '2026-04-24 09:00:02', NULL),
(13, '127.0.0.1', NULL, '2026-04-24 14:51:31', NULL),
(14, '127.0.0.1', NULL, '2026-04-26 14:07:42', NULL),
(15, '127.0.0.1', NULL, '2026-04-27 07:57:32', NULL),
(16, '127.0.0.1', NULL, '2026-04-28 08:20:03', NULL),
(17, '127.0.0.1', NULL, '2026-04-28 10:46:08', NULL),
(18, '127.0.0.1', NULL, '2026-04-30 07:56:11', NULL),
(19, '127.0.0.1', NULL, '2026-04-30 13:13:03', NULL),
(20, '127.0.0.1', NULL, '2026-04-30 13:15:19', NULL),
(21, '127.0.0.1', NULL, '2026-04-30 17:02:53', NULL),
(22, '127.0.0.1', NULL, '2026-05-01 16:45:29', NULL),
(23, '127.0.0.1', NULL, '2026-05-01 16:46:14', NULL),
(24, '127.0.0.1', NULL, '2026-05-01 17:00:15', NULL),
(25, '127.0.0.1', NULL, '2026-05-02 16:12:20', NULL),
(26, '127.0.0.1', NULL, '2026-05-04 07:18:46', NULL),
(27, '127.0.0.1', NULL, '2026-05-04 08:28:31', NULL),
(28, '127.0.0.1', NULL, '2026-05-04 09:15:50', NULL),
(29, '127.0.0.1', NULL, '2026-05-04 15:18:51', NULL),
(30, '127.0.0.1', NULL, '2026-05-04 15:54:34', NULL),
(31, '127.0.0.1', NULL, '2026-05-05 02:54:40', NULL),
(32, '127.0.0.1', NULL, '2026-05-05 08:02:55', NULL),
(33, '127.0.0.1', NULL, '2026-05-05 09:10:46', NULL),
(34, '127.0.0.1', NULL, '2026-05-05 12:50:01', NULL),
(35, '127.0.0.1', NULL, '2026-05-05 15:10:47', NULL),
(36, '127.0.0.1', NULL, '2026-05-06 08:14:38', NULL),
(37, '127.0.0.1', NULL, '2026-05-06 08:55:12', NULL),
(38, NULL, NULL, '2026-05-06 11:05:50', NULL),
(39, NULL, NULL, '2026-05-06 11:06:39', NULL),
(40, '127.0.0.1', NULL, '2026-05-06 11:09:11', NULL),
(41, '127.0.0.1', NULL, '2026-05-06 13:23:55', NULL),
(42, '127.0.0.1', NULL, '2026-05-07 06:53:15', NULL),
(43, '127.0.0.1', NULL, '2026-05-07 09:59:58', NULL),
(44, '127.0.0.1', NULL, '2026-05-07 12:55:58', NULL),
(45, '127.0.0.1', NULL, '2026-05-07 13:02:54', NULL),
(46, '127.0.0.1', NULL, '2026-05-07 13:10:07', NULL),
(47, '127.0.0.1', NULL, '2026-05-12 14:30:25', NULL),
(48, '127.0.0.1', NULL, '2026-05-12 15:42:27', NULL),
(49, '127.0.0.1', NULL, '2026-05-13 08:11:02', NULL),
(50, '127.0.0.1', NULL, '2026-05-13 09:14:29', NULL),
(51, '127.0.0.1', NULL, '2026-05-14 14:04:10', NULL),
(52, '127.0.0.1', NULL, '2026-05-15 09:37:45', NULL),
(53, '127.0.0.1', NULL, '2026-05-18 08:22:11', NULL),
(54, '127.0.0.1', NULL, '2026-05-18 08:24:02', NULL),
(55, '127.0.0.1', NULL, '2026-05-18 13:28:07', NULL),
(56, '127.0.0.1', NULL, '2026-05-20 11:47:39', NULL),
(57, '127.0.0.1', NULL, '2026-05-20 14:29:47', NULL),
(58, '127.0.0.1', NULL, '2026-05-21 09:06:29', NULL),
(59, '127.0.0.1', NULL, '2026-05-21 09:07:22', NULL),
(60, '127.0.0.1', NULL, '2026-06-01 09:56:58', NULL),
(61, '127.0.0.1', NULL, '2026-07-06 13:02:52', NULL),
(62, '127.0.0.1', NULL, '2026-07-06 13:03:35', NULL),
(63, '127.0.0.1', NULL, '2026-07-06 18:32:16', NULL),
(64, '127.0.0.1', NULL, '2026-07-06 18:33:55', NULL),
(65, '127.0.0.1', NULL, '2026-07-06 18:35:25', NULL),
(66, '127.0.0.1', NULL, '2026-07-07 05:50:02', NULL),
(67, '127.0.0.1', NULL, '2026-07-07 05:51:02', NULL),
(68, '127.0.0.1', NULL, '2026-07-07 05:51:09', NULL),
(69, '127.0.0.1', NULL, '2026-07-07 05:51:35', NULL),
(70, '127.0.0.1', NULL, '2026-07-07 06:51:21', NULL),
(71, '127.0.0.1', NULL, '2026-07-07 07:16:25', NULL),
(72, '127.0.0.1', NULL, '2026-07-07 07:31:38', NULL),
(73, '127.0.0.1', NULL, '2026-07-07 07:31:39', NULL),
(74, '127.0.0.1', NULL, '2026-07-07 07:33:53', NULL),
(75, '127.0.0.1', NULL, '2026-07-07 20:30:51', NULL),
(76, '127.0.0.1', NULL, '2026-07-08 05:19:03', NULL),
(77, '127.0.0.1', NULL, '2026-07-10 05:03:05', NULL),
(78, '127.0.0.1', NULL, '2026-07-22 13:51:13', NULL),
(79, '127.0.0.1', NULL, '2026-07-22 21:57:45', NULL),
(80, '127.0.0.1', NULL, '2026-07-23 11:29:44', NULL),
(81, '127.0.0.1', NULL, '2026-08-03 12:05:20', NULL),
(82, '127.0.0.1', NULL, '2026-08-10 10:58:30', NULL),
(83, '127.0.0.1', NULL, '2026-08-13 12:43:39', NULL),
(84, '127.0.0.1', NULL, '2026-08-31 08:41:46', NULL),
(85, '127.0.0.1', NULL, '2026-08-31 14:14:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `help_topics`
--

CREATE TABLE `help_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `ranking` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `kitchen_inquiries`
--

CREATE TABLE `kitchen_inquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) NOT NULL,
  `project_details` text NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kitchen_inquiries`
--

INSERT INTO `kitchen_inquiries` (`id`, `name`, `email`, `phone`, `project_details`, `status`, `created_at`, `updated_at`) VALUES
(3, 'EMESUE Emmanuel', 'emmanuelemesue97@gmail.com', '09037331520', 'hello', 'pending', '2026-04-24 15:40:26', '2026-04-24 15:40:26');

-- --------------------------------------------------------

--
-- Table structure for table `loyalty_point_transactions`
--

CREATE TABLE `loyalty_point_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` char(36) NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `debit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `balance` decimal(24,3) NOT NULL DEFAULT 0.000,
  `reference` varchar(191) DEFAULT NULL,
  `transaction_type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_08_105159_create_admins_table', 1),
(5, '2020_09_08_111837_create_admin_roles_table', 1),
(6, '2020_09_16_142451_create_categories_table', 2),
(7, '2020_09_16_181753_create_categories_table', 3),
(8, '2020_09_17_134238_create_brands_table', 4),
(9, '2020_09_17_203054_create_attributes_table', 5),
(10, '2020_09_19_112509_create_coupons_table', 6),
(11, '2020_09_19_161802_create_curriencies_table', 7),
(12, '2020_09_20_114509_create_sellers_table', 8),
(13, '2020_09_23_113454_create_shops_table', 9),
(14, '2020_09_23_115615_create_shops_table', 10),
(15, '2020_09_23_153822_create_shops_table', 11),
(16, '2020_09_21_122817_create_products_table', 12),
(17, '2020_09_22_140800_create_colors_table', 12),
(18, '2020_09_28_175020_create_products_table', 13),
(19, '2020_09_28_180311_create_products_table', 14),
(20, '2020_10_04_105041_create_search_functions_table', 15),
(21, '2020_10_05_150730_create_customers_table', 15),
(22, '2020_10_08_133548_create_wishlists_table', 16),
(23, '2016_06_01_000001_create_oauth_auth_codes_table', 17),
(24, '2016_06_01_000002_create_oauth_access_tokens_table', 17),
(25, '2016_06_01_000003_create_oauth_refresh_tokens_table', 17),
(26, '2016_06_01_000004_create_oauth_clients_table', 17),
(27, '2016_06_01_000005_create_oauth_personal_access_clients_table', 17),
(28, '2020_10_06_133710_create_product_stocks_table', 17),
(29, '2020_10_06_134636_create_flash_deals_table', 17),
(30, '2020_10_06_134719_create_flash_deal_products_table', 17),
(31, '2020_10_08_115439_create_orders_table', 17),
(32, '2020_10_08_115453_create_order_details_table', 17),
(33, '2020_10_08_121135_create_shipping_addresses_table', 17),
(34, '2020_10_10_171722_create_business_settings_table', 17),
(35, '2020_09_19_161802_create_currencies_table', 18),
(36, '2020_10_12_152350_create_reviews_table', 18),
(37, '2020_10_12_161834_create_reviews_table', 19),
(38, '2020_10_12_180510_create_support_tickets_table', 20),
(39, '2020_10_14_140130_create_transactions_table', 21),
(40, '2020_10_14_143553_create_customer_wallets_table', 21),
(41, '2020_10_14_143607_create_customer_wallet_histories_table', 21),
(42, '2020_10_22_142212_create_support_ticket_convs_table', 21),
(43, '2020_10_24_234813_create_banners_table', 22),
(44, '2020_10_27_111557_create_shipping_methods_table', 23),
(45, '2020_10_27_114154_add_url_to_banners_table', 24),
(46, '2020_10_28_170308_add_shipping_id_to_order_details', 25),
(47, '2020_11_02_140528_add_discount_to_order_table', 26),
(48, '2020_11_03_162723_add_column_to_order_details', 27),
(49, '2020_11_08_202351_add_url_to_banners_table', 28),
(50, '2020_11_10_112713_create_help_topic', 29),
(51, '2020_11_10_141513_create_contacts_table', 29),
(52, '2020_11_15_180036_add_address_column_user_table', 30),
(53, '2020_11_18_170209_add_status_column_to_product_table', 31),
(54, '2020_11_19_115453_add_featured_status_product', 32),
(55, '2020_11_21_133302_create_deal_of_the_days_table', 33),
(56, '2020_11_20_172332_add_product_id_to_products', 34),
(57, '2020_11_27_234439_add__state_to_shipping_addresses', 34),
(58, '2020_11_28_091929_create_chattings_table', 35),
(59, '2020_12_02_011815_add_bank_info_to_sellers', 36),
(60, '2020_12_08_193234_create_social_medias_table', 37),
(61, '2020_12_13_122649_shop_id_to_chattings', 37),
(62, '2020_12_14_145116_create_seller_wallet_histories_table', 38),
(63, '2020_12_14_145127_create_seller_wallets_table', 38),
(64, '2020_12_15_174804_create_admin_wallets_table', 39),
(65, '2020_12_15_174821_create_admin_wallet_histories_table', 39),
(66, '2020_12_15_214312_create_feature_deals_table', 40),
(67, '2020_12_17_205712_create_withdraw_requests_table', 41),
(68, '2021_02_22_161510_create_notifications_table', 42),
(69, '2021_02_24_154706_add_deal_type_to_flash_deals', 43),
(70, '2021_03_03_204349_add_cm_firebase_token_to_users', 44),
(71, '2021_04_17_134848_add_column_to_order_details_stock', 45),
(72, '2021_05_12_155401_add_auth_token_seller', 46),
(73, '2021_06_03_104531_ex_rate_update', 47),
(74, '2021_06_03_222413_amount_withdraw_req', 48),
(75, '2021_06_04_154501_seller_wallet_withdraw_bal', 49),
(76, '2021_06_04_195853_product_dis_tax', 50),
(77, '2021_05_27_103505_create_product_translations_table', 51),
(78, '2021_06_17_054551_create_soft_credentials_table', 51),
(79, '2021_06_29_212549_add_active_col_user_table', 52),
(80, '2021_06_30_212619_add_col_to_contact', 53),
(81, '2021_07_01_160828_add_col_daily_needs_products', 54),
(82, '2021_07_04_182331_add_col_seller_sales_commission', 55),
(83, '2021_08_07_190655_add_seo_columns_to_products', 56),
(84, '2021_08_07_205913_add_col_to_category_table', 56),
(85, '2021_08_07_210808_add_col_to_shops_table', 56),
(86, '2021_08_14_205216_change_product_price_col_type', 56),
(87, '2021_08_16_201505_change_order_price_col', 56),
(88, '2021_08_16_201552_change_order_details_price_col', 56),
(89, '2019_09_29_154000_create_payment_cards_table', 57),
(90, '2021_08_17_213934_change_col_type_seller_earning_history', 57),
(91, '2021_08_17_214109_change_col_type_admin_earning_history', 57),
(92, '2021_08_17_214232_change_col_type_admin_wallet', 57),
(93, '2021_08_17_214405_change_col_type_seller_wallet', 57),
(94, '2021_08_22_184834_add_publish_to_products_table', 57),
(95, '2021_09_08_211832_add_social_column_to_users_table', 57),
(96, '2021_09_13_165535_add_col_to_user', 57),
(97, '2021_09_19_061647_add_limit_to_coupons_table', 57),
(98, '2021_09_20_020716_add_coupon_code_to_orders_table', 57),
(99, '2021_09_23_003059_add_gst_to_sellers_table', 57),
(100, '2021_09_28_025411_create_order_transactions_table', 57),
(101, '2021_10_02_185124_create_carts_table', 57),
(102, '2021_10_02_190207_create_cart_shippings_table', 57),
(103, '2021_10_03_194334_add_col_order_table', 57),
(104, '2021_10_03_200536_add_shipping_cost', 57),
(105, '2021_10_04_153201_add_col_to_order_table', 57),
(106, '2021_10_07_172701_add_col_cart_shop_info', 57),
(107, '2021_10_07_184442_create_phone_or_email_verifications_table', 57),
(108, '2021_10_07_185416_add_user_table_email_verified', 57),
(109, '2021_10_11_192739_add_transaction_amount_table', 57),
(110, '2021_10_11_200850_add_order_verification_code', 57),
(111, '2021_10_12_083241_add_col_to_order_transaction', 57),
(112, '2021_10_12_084440_add_seller_id_to_order', 57),
(113, '2021_10_12_102853_change_col_type', 57),
(114, '2021_10_12_110434_add_col_to_admin_wallet', 57),
(115, '2021_10_12_110829_add_col_to_seller_wallet', 57),
(116, '2021_10_13_091801_add_col_to_admin_wallets', 57),
(117, '2021_10_13_092000_add_col_to_seller_wallets_tax', 57),
(118, '2021_10_13_165947_rename_and_remove_col_seller_wallet', 57),
(119, '2021_10_13_170258_rename_and_remove_col_admin_wallet', 57),
(120, '2021_10_14_061603_column_update_order_transaction', 57),
(121, '2021_10_15_103339_remove_col_from_seller_wallet', 57),
(122, '2021_10_15_104419_add_id_col_order_tran', 57),
(123, '2021_10_15_213454_update_string_limit', 57),
(124, '2021_10_16_234037_change_col_type_translation', 57),
(125, '2021_10_16_234329_change_col_type_translation_1', 57),
(126, '2021_10_27_091250_add_shipping_address_in_order', 58),
(127, '2021_01_24_205114_create_paytabs_invoices_table', 59),
(128, '2021_11_20_043814_change_pass_reset_email_col', 59),
(129, '2021_11_25_043109_create_delivery_men_table', 60),
(130, '2021_11_25_062242_add_auth_token_delivery_man', 60),
(131, '2021_11_27_043405_add_deliveryman_in_order_table', 60),
(132, '2021_11_27_051432_create_delivery_histories_table', 60),
(133, '2021_11_27_051512_add_fcm_col_for_delivery_man', 60),
(134, '2021_12_15_123216_add_columns_to_banner', 60),
(135, '2022_01_04_100543_add_order_note_to_orders_table', 60),
(136, '2022_01_10_034952_add_lat_long_to_shipping_addresses_table', 60),
(137, '2022_01_10_045517_create_billing_addresses_table', 60),
(138, '2022_01_11_040755_add_is_billing_to_shipping_addresses_table', 60),
(139, '2022_01_11_053404_add_billing_to_orders_table', 60),
(140, '2022_01_11_234310_add_firebase_toke_to_sellers_table', 60),
(141, '2022_01_16_121801_change_colu_type', 60),
(142, '2022_01_22_101601_change_cart_col_type', 61),
(143, '2022_01_23_031359_add_column_to_orders_table', 61),
(144, '2022_01_28_235054_add_status_to_admins_table', 61),
(145, '2022_02_01_214654_add_pos_status_to_sellers_table', 61),
(146, '2019_12_14_000001_create_personal_access_tokens_table', 62),
(147, '2022_02_11_225355_add_checked_to_orders_table', 62),
(148, '2022_02_14_114359_create_refund_requests_table', 62),
(149, '2022_02_14_115757_add_refund_request_to_order_details_table', 62),
(150, '2022_02_15_092604_add_order_details_id_to_transactions_table', 62),
(151, '2022_02_15_121410_create_refund_transactions_table', 62),
(152, '2022_02_24_091236_add_multiple_column_to_refund_requests_table', 62),
(153, '2022_02_24_103827_create_refund_statuses_table', 62),
(154, '2022_03_01_121420_add_refund_id_to_refund_transactions_table', 62),
(155, '2022_03_10_091943_add_priority_to_categories_table', 63),
(156, '2022_03_13_111914_create_shipping_types_table', 63),
(157, '2022_03_13_121514_create_category_shipping_costs_table', 63),
(158, '2022_03_14_074413_add_four_column_to_products_table', 63),
(159, '2022_03_15_105838_add_shipping_to_carts_table', 63),
(160, '2022_03_16_070327_add_shipping_type_to_orders_table', 63),
(161, '2022_03_17_070200_add_delivery_info_to_orders_table', 63),
(162, '2022_03_18_143339_add_shipping_type_to_carts_table', 63),
(163, '2022_04_06_020313_create_subscriptions_table', 64),
(164, '2022_04_12_233704_change_column_to_products_table', 64),
(165, '2022_04_19_095926_create_jobs_table', 64),
(166, '2022_05_12_104247_create_wallet_transactions_table', 65),
(167, '2022_05_12_104511_add_two_column_to_users_table', 65),
(168, '2022_05_14_063309_create_loyalty_point_transactions_table', 65),
(169, '2022_05_26_044016_add_user_type_to_password_resets_table', 65),
(170, '2022_04_15_235820_add_provider', 66),
(171, '2022_07_21_101659_add_code_to_products_table', 66),
(172, '2022_07_26_103744_add_notification_count_to_notifications_table', 66),
(173, '2022_07_31_031541_add_minimum_order_qty_to_products_table', 66),
(174, '2022_08_11_172839_add_product_type_and_digital_product_type_and_digital_file_ready_to_products', 67),
(175, '2022_08_11_173941_add_product_type_and_digital_product_type_and_digital_file_to_order_details', 67),
(176, '2022_08_20_094225_add_product_type_and_digital_product_type_and_digital_file_ready_to_carts_table', 67),
(177, '2022_10_04_160234_add_banking_columns_to_delivery_men_table', 68),
(178, '2022_10_04_161339_create_deliveryman_wallets_table', 68),
(179, '2022_10_04_184506_add_deliverymanid_column_to_withdraw_requests_table', 68),
(180, '2022_10_11_103011_add_deliverymans_columns_to_chattings_table', 68),
(181, '2022_10_11_144902_add_deliverman_id_cloumn_to_reviews_table', 68),
(182, '2022_10_17_114744_create_order_status_histories_table', 68),
(183, '2022_10_17_120840_create_order_expected_delivery_histories_table', 68),
(184, '2022_10_18_084245_add_deliveryman_charge_and_expected_delivery_date', 68),
(185, '2022_10_18_130938_create_delivery_zip_codes_table', 68),
(186, '2022_10_18_130956_create_delivery_country_codes_table', 68),
(187, '2022_10_20_164712_create_delivery_man_transactions_table', 68),
(188, '2022_10_27_145604_create_emergency_contacts_table', 68),
(189, '2022_10_29_182930_add_is_pause_cause_to_orders_table', 68),
(190, '2022_10_31_150604_add_address_phone_country_code_column_to_delivery_men_table', 68),
(191, '2022_11_05_185726_add_order_id_to_reviews_table', 68),
(192, '2022_11_07_190749_create_deliveryman_notifications_table', 68),
(193, '2022_11_08_132745_change_transaction_note_type_to_withdraw_requests_table', 68),
(194, '2022_11_10_193747_chenge_order_amount_seller_amount_admin_commission_delivery_charge_tax_toorder_transactions_table', 68),
(195, '2022_12_17_035723_few_field_add_to_coupons_table', 69),
(196, '2022_12_26_231606_add_coupon_discount_bearer_and_admin_commission_to_orders', 69),
(197, '2023_01_04_003034_alter_billing_addresses_change_zip', 69),
(198, '2023_01_05_121600_change_id_to_transactions_table', 69),
(199, '2023_02_02_113330_create_product_tag_table', 70),
(200, '2023_02_02_114518_create_tags_table', 70),
(201, '2023_02_02_152248_add_tax_model_to_products_table', 70),
(202, '2023_02_02_152718_add_tax_model_to_order_details_table', 70),
(203, '2023_02_02_171034_add_tax_type_to_carts', 70),
(204, '2023_02_06_124447_add_color_image_column_to_products_table', 70),
(205, '2023_02_07_120136_create_withdrawal_methods_table', 70),
(206, '2023_02_07_175939_add_withdrawal_method_id_and_withdrawal_method_fields_to_withdraw_requests_table', 70),
(207, '2023_02_08_143314_add_vacation_start_and_vacation_end_and_vacation_not_column_to_shops_table', 70),
(208, '2023_02_09_104656_add_payment_by_and_payment_not_to_orders_table', 70),
(209, '2023_03_27_150723_add_expires_at_to_phone_or_email_verifications', 71),
(210, '2023_04_17_095721_create_shop_followers_table', 71),
(211, '2023_04_17_111249_add_bottom_banner_to_shops_table', 71),
(212, '2023_04_20_125423_create_product_compares_table', 71),
(213, '2023_04_30_165642_add_category_sub_category_and_sub_sub_category_add_in_product_table', 71),
(214, '2023_05_16_131006_add_expires_at_to_password_resets', 71),
(215, '2023_05_17_044243_add_visit_count_to_tags_table', 71),
(216, '2023_05_18_000403_add_title_and_subtitle_and_background_color_and_button_text_to_banners_table', 71),
(217, '2023_05_21_111300_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_users_table', 71),
(218, '2023_05_21_111600_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_phone_or_email_verifications_table', 71),
(219, '2023_05_21_112215_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_password_resets_table', 71),
(220, '2023_06_04_210726_attachment_lenght_change_to_reviews_table', 71),
(221, '2023_06_05_115153_add_referral_code_and_referred_by_to_users_table', 72),
(222, '2023_06_21_002658_add_offer_banner_to_shops_table', 72),
(223, '2023_07_08_210747_create_most_demandeds_table', 72),
(224, '2023_07_31_111419_add_minimum_order_amount_to_sellers_table', 72),
(225, '2023_08_03_105256_create_offline_payment_methods_table', 72),
(226, '2023_08_07_131013_add_is_guest_column_to_carts_table', 72),
(227, '2023_08_07_170601_create_offline_payments_table', 72),
(228, '2023_08_12_102355_create_add_fund_bonus_categories_table', 72),
(229, '2023_08_12_215346_create_guest_users_table', 72),
(230, '2023_08_12_215659_add_is_guest_column_to_orders_table', 72),
(231, '2023_08_12_215933_add_is_guest_column_to_shipping_addresses_table', 72),
(232, '2023_08_15_000957_add_email_column_toshipping_address_table', 72),
(233, '2023_08_17_222330_add_identify_related_columns_to_admins_table', 72),
(234, '2023_08_20_230624_add_sent_by_and_send_to_in_notifications_table', 72),
(235, '2023_08_20_230911_create_notification_seens_table', 72),
(236, '2023_08_21_042331_add_theme_to_banners_table', 72),
(237, '2023_08_24_150009_add_free_delivery_over_amount_and_status_to_seller_table', 72),
(238, '2023_08_26_161214_add_is_shipping_free_to_orders_table', 72),
(239, '2023_08_26_173523_add_payment_method_column_to_wallet_transactions_table', 72),
(240, '2023_08_26_204653_add_verification_status_column_to_orders_table', 72),
(241, '2023_08_26_225113_create_order_delivery_verifications_table', 72),
(242, '2023_09_03_212200_add_free_delivery_responsibility_column_to_orders_table', 72),
(243, '2023_09_23_153314_add_shipping_responsibility_column_to_orders_table', 72),
(244, '2023_09_25_152733_create_digital_product_otp_verifications_table', 72),
(245, '2023_09_27_191638_add_attachment_column_to_support_ticket_convs_table', 73),
(246, '2023_10_01_205117_add_attachment_column_to_chattings_table', 73),
(247, '2023_10_07_182714_create_notification_messages_table', 73),
(248, '2023_10_21_113354_add_app_language_column_to_users_table', 73),
(249, '2023_10_21_123433_add_app_language_column_to_sellers_table', 73),
(250, '2023_10_21_124657_add_app_language_column_to_delivery_men_table', 73),
(251, '2023_10_22_130225_add_attachment_to_support_tickets_table', 73),
(252, '2023_10_25_113233_make_message_nullable_in_chattings_table', 73),
(253, '2023_10_30_152005_make_attachment_column_type_change_to_reviews_table', 73),
(254, '2024_08_25_231319_add_nin_column_create_seller_media_table', 74),
(255, '2024_08_27_093533_change_status_column_sellers_table', 74),
(256, '2024_08_31_211216_create_review_ratings_table', 74),
(257, '2024_09_13_101508_category_level_prices', 74),
(258, '2026_04_24_103103_add_specifications_to_products_table', 75),
(259, '2026_04_24_130017_create_kitchen_inquiries_table', 76),
(260, '2026_04_27_000000_create_audit_logs_table', 77),
(261, '2026_04_27_131546_add_payload_to_audit_logs_table', 78),
(262, '2026_05_13_153633_add_installation_fee_to_products_table', 79),
(263, '2026_05_15_101822_create_testimonials_table', 80),
(264, '2026_06_01_122147_add_commercial_solution_to_products_table', 81),
(265, '2026_07_06_140000_create_blog_posts_table', 82),
(266, '2026_08_31_000000_create_blog_categories_table', 83),
(267, '2026_08_31_000001_create_blog_tags_tables', 83),
(268, '2026_08_31_000002_add_yoast_seo_and_wordpress_fields_to_blog_posts_table', 83);

-- --------------------------------------------------------

--
-- Table structure for table `most_demandeds`
--

CREATE TABLE `most_demandeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sent_by` varchar(255) NOT NULL DEFAULT 'system',
  `sent_to` varchar(255) NOT NULL DEFAULT 'customer',
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `notification_count` int(11) NOT NULL DEFAULT 0,
  `image` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_messages`
--

CREATE TABLE `notification_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) DEFAULT NULL,
  `key` varchar(191) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_messages`
--

INSERT INTO `notification_messages` (`id`, `user_type`, `key`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'customer', 'order_pending_message', 'order pen message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(2, 'customer', 'order_confirmation_message', 'Order con Message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(3, 'customer', 'order_processing_message', 'Order pro Message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(4, 'customer', 'out_for_delivery_message', 'Order ouut Message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(5, 'customer', 'order_delivered_message', 'Order del Message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(6, 'customer', 'order_returned_message', 'Order hh Message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(7, 'customer', 'order_failed_message', 'Order fa Message', 0, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(8, 'customer', 'order_canceled', '', 0, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(9, 'customer', 'order_refunded_message', 'customize your order refunded message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(10, 'customer', 'refund_request_canceled_message', 'customize your refund request canceled message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(11, 'customer', 'message_from_delivery_man', 'customize your message from delivery man message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(12, 'customer', 'message_from_seller', 'customize your message from seller message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(13, 'customer', 'fund_added_by_admin_message', 'customize your fund added by admin message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(14, 'seller', 'new_order_message', 'customize your new order message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(15, 'seller', 'refund_request_message', 'customize your refund request message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(16, 'seller', 'order_edit_message', 'customize your order edit message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(17, 'seller', 'withdraw_request_status_message', 'customize your withdraw request status message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(18, 'seller', 'message_from_customer', 'customize your message from customer message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(19, 'seller', 'delivery_man_assign_by_admin_message', 'customize your delivery man assign by admin message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(20, 'seller', 'order_delivered_message', 'customize your order delivered message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(21, 'seller', 'order_canceled', 'customize your order canceled message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(22, 'seller', 'order_refunded_message', 'customize your order refunded message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(23, 'seller', 'refund_request_canceled_message', 'customize your refund request canceled message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(24, 'seller', 'refund_request_status_changed_by_admin', 'customize your refund request status changed by admin message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(25, 'delivery_man', 'new_order_assigned_message', '', 0, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(26, 'delivery_man', 'expected_delivery_date', '', 0, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(27, 'delivery_man', 'delivery_man_charge', 'customize your delivery man charge message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(28, 'delivery_man', 'order_canceled', 'customize your order canceled message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(29, 'delivery_man', 'order_rescheduled_message', 'customize your order rescheduled message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(30, 'delivery_man', 'order_edit_message', 'customize your order edit message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(31, 'delivery_man', 'message_from_seller', 'customize your message from seller message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(32, 'delivery_man', 'message_from_admin', 'customize your message from admin message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(33, 'delivery_man', 'message_from_customer', 'customize your message from customer message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(34, 'delivery_man', 'cash_collect_by_admin_message', 'customize your cash collect by admin message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(35, 'delivery_man', 'cash_collect_by_seller_message', 'customize your cash collect by seller message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(36, 'delivery_man', 'withdraw_request_status_message', 'customize your withdraw request status message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(37, 'seller', 'message_from_delivery_man', 'customize your message from delivery man message', 1, '2026-04-20 11:01:07', '2026-04-20 11:01:07');

-- --------------------------------------------------------

--
-- Table structure for table `notification_seens`
--

CREATE TABLE `notification_seens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `notification_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('6840b7d4ed685bf2e0dc593affa0bd3b968065f47cc226d39ab09f1422b5a1d9666601f3f60a79c1', 98, 1, 'LaravelAuthApp', '[]', 1, '2021-07-05 09:25:41', '2021-07-05 09:25:41', '2022-07-05 15:25:41'),
('c42cdd5ae652b8b2cbac4f2f4b496e889e1a803b08672954c8bbe06722b54160e71dce3e02331544', 98, 1, 'LaravelAuthApp', '[]', 1, '2021-07-05 09:24:36', '2021-07-05 09:24:36', '2022-07-05 15:24:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) NOT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`, `provider`) VALUES
(1, NULL, '6amtech', 'GEUx5tqkviM6AAQcz4oi1dcm1KtRdJPgw41lj0eI', 'http://localhost', 1, 0, 0, '2020-10-21 18:27:22', '2020-10-21 18:27:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-21 18:27:23', '2020-10-21 18:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payments`
--

CREATE TABLE `offline_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payment_info`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payment_methods`
--

CREATE TABLE `offline_payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(255) NOT NULL,
  `method_fields` text NOT NULL,
  `method_informations` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(15) DEFAULT NULL,
  `is_guest` tinyint(4) NOT NULL DEFAULT 0,
  `customer_type` varchar(10) DEFAULT NULL,
  `payment_status` varchar(15) NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(50) NOT NULL DEFAULT 'pending',
  `payment_method` varchar(100) DEFAULT NULL,
  `transaction_ref` varchar(30) DEFAULT NULL,
  `payment_by` varchar(191) DEFAULT NULL,
  `payment_note` text DEFAULT NULL,
  `order_amount` double NOT NULL DEFAULT 0,
  `admin_commission` decimal(8,2) NOT NULL DEFAULT 0.00,
  `is_pause` varchar(20) NOT NULL DEFAULT '0',
  `cause` varchar(191) DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount_amount` double NOT NULL DEFAULT 0,
  `discount_type` varchar(30) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `coupon_discount_bearer` varchar(191) NOT NULL DEFAULT 'inhouse',
  `shipping_responsibility` varchar(255) DEFAULT NULL,
  `shipping_method_id` bigint(20) NOT NULL DEFAULT 0,
  `shipping_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `is_shipping_free` tinyint(1) NOT NULL DEFAULT 0,
  `order_group_id` varchar(191) NOT NULL DEFAULT 'def-order-group',
  `verification_code` varchar(191) NOT NULL DEFAULT '0',
  `verification_status` tinyint(4) NOT NULL DEFAULT 0,
  `seller_id` bigint(20) DEFAULT NULL,
  `seller_is` varchar(191) DEFAULT NULL,
  `shipping_address_data` text DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `deliveryman_charge` double NOT NULL DEFAULT 0,
  `expected_delivery_date` date DEFAULT NULL,
  `order_note` text DEFAULT NULL,
  `billing_address` bigint(20) UNSIGNED DEFAULT NULL,
  `billing_address_data` text DEFAULT NULL,
  `order_type` varchar(191) NOT NULL DEFAULT 'default_type',
  `extra_discount` double(8,2) NOT NULL DEFAULT 0.00,
  `extra_discount_type` varchar(191) DEFAULT NULL,
  `free_delivery_bearer` varchar(255) DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_type` varchar(191) DEFAULT NULL,
  `delivery_type` varchar(191) DEFAULT NULL,
  `delivery_service_name` varchar(191) DEFAULT NULL,
  `third_party_delivery_tracking_id` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `is_guest`, `customer_type`, `payment_status`, `order_status`, `payment_method`, `transaction_ref`, `payment_by`, `payment_note`, `order_amount`, `admin_commission`, `is_pause`, `cause`, `shipping_address`, `created_at`, `updated_at`, `discount_amount`, `discount_type`, `coupon_code`, `coupon_discount_bearer`, `shipping_responsibility`, `shipping_method_id`, `shipping_cost`, `is_shipping_free`, `order_group_id`, `verification_code`, `verification_status`, `seller_id`, `seller_is`, `shipping_address_data`, `delivery_man_id`, `deliveryman_charge`, `expected_delivery_date`, `order_note`, `billing_address`, `billing_address_data`, `order_type`, `extra_discount`, `extra_discount_type`, `free_delivery_bearer`, `checked`, `shipping_type`, `delivery_type`, `delivery_service_name`, `third_party_delivery_tracking_id`) VALUES
(100001, '3', 0, 'customer', 'paid', 'confirmed', 'paystack', 'w1epRSmtgpiZ2x5p440xfG8dn', NULL, NULL, 1430, 0.00, '0', NULL, '4', '2026-07-23 11:30:26', '2026-07-23 11:31:08', 0, NULL, '0', 'inhouse', 'inhouse_shipping', 2, 5.00, 0, '6000-1COpA-1784809825', '240249', 0, 1, 'admin', '{\"id\":4,\"customer_id\":0,\"is_guest\":0,\"contact_person_name\":\"EMESUE Nnaemeka Emmanuel\",\"email\":null,\"address_type\":\"permanent\",\"address\":\"Dantata estate Kubwa\",\"city\":\"Abuja\",\"zip\":\"900104\",\"phone\":\"09037331520\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"\\u00c5land Islands\",\"latitude\":\"\",\"longitude\":\"\",\"is_billing\":0}', NULL, 0, NULL, NULL, 5, '{\"id\":5,\"customer_id\":0,\"is_guest\":0,\"contact_person_name\":\"EMESUE Emmanuel\",\"email\":null,\"address_type\":\"permanent\",\"address\":\"number 6b pano street, federal housing estate, onitsha, anambra state.\",\"city\":\"onitsha\",\"zip\":\"430213\",\"phone\":\"09037331520\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"\\u00c5land Islands\",\"latitude\":\"\",\"longitude\":\"\",\"is_billing\":1}', 'default_type', 0.00, NULL, 'admin', 1, 'order_wise', NULL, NULL, NULL),
(100002, '3', 0, 'customer', 'paid', 'confirmed', 'paystack', 'mpF1soJBYkM543SVgL2NzkRwN', NULL, NULL, 155, 0.00, '0', NULL, '6', '2026-07-23 11:34:27', '2026-07-23 11:34:37', 0, NULL, '0', 'inhouse', 'inhouse_shipping', 2, 5.00, 0, '7745-hLpgr-1784810067', '832325', 0, 1, 'admin', '{\"id\":6,\"customer_id\":0,\"is_guest\":0,\"contact_person_name\":\"EMESUE Nnaemeka Emmanuel\",\"email\":null,\"address_type\":\"permanent\",\"address\":\"Dantata estate Kubwa\",\"city\":\"Abuja\",\"zip\":\"900104\",\"phone\":\"09037331520\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"\\u00c5land Islands\",\"latitude\":\"\",\"longitude\":\"\",\"is_billing\":0}', NULL, 0, NULL, NULL, 7, '{\"id\":7,\"customer_id\":0,\"is_guest\":0,\"contact_person_name\":\"EMESUE Emmanuel\",\"email\":null,\"address_type\":\"permanent\",\"address\":\"number 6b pano street, federal housing estate, onitsha, anambra state.\",\"city\":\"onitsha\",\"zip\":\"430213\",\"phone\":\"09037331520\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"\\u00c5land Islands\",\"latitude\":\"\",\"longitude\":\"\",\"is_billing\":1}', 'default_type', 0.00, NULL, 'admin', 1, 'order_wise', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery_verifications`
--

CREATE TABLE `order_delivery_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `digital_file_after_sell` varchar(191) DEFAULT NULL,
  `product_details` text DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `tax_model` varchar(20) NOT NULL DEFAULT 'exclude',
  `delivery_status` varchar(15) NOT NULL DEFAULT 'pending',
  `payment_status` varchar(15) NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_method_id` bigint(20) DEFAULT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `variation` varchar(255) DEFAULT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `is_stock_decreased` tinyint(1) NOT NULL DEFAULT 1,
  `refund_request` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `seller_id`, `digital_file_after_sell`, `product_details`, `qty`, `price`, `tax`, `discount`, `tax_model`, `delivery_status`, `payment_status`, `created_at`, `updated_at`, `shipping_method_id`, `variant`, `variation`, `discount_type`, `is_stock_decreased`, `refund_request`) VALUES
(1, 100001, 657, 1, NULL, '{\"id\":657,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Wire Rack (5FT)\",\"slug\":\"wire-rack-5ft-JmI7G6\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"16\\\",\\\"position\\\":1},{\\\"id\\\":\\\"43\\\",\\\"position\\\":2},{\\\"id\\\":\\\"0\\\",\\\"position\\\":3}]\",\"category_id\":\"16\",\"sub_category_id\":\"43\",\"sub_sub_category_id\":\"0\",\"brand_id\":1,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":0,\"digital_product_type\":null,\"digital_file_ready\":null,\"images\":\"[\\\"def.png\\\"]\",\"color_image\":\"\",\"thumbnail\":\"\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":\"\",\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"[]\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"published\":0,\"unit_price\":150,\"installation_fee\":0,\"purchase_price\":120,\"tax\":0,\"tax_type\":null,\"tax_model\":\"exclude\",\"discount\":0,\"discount_type\":\"percent\",\"current_stock\":20,\"minimum_order_qty\":1,\"details\":\"Wire Rack\",\"free_shipping\":0,\"attachment\":null,\"created_at\":null,\"updated_at\":null,\"status\":1,\"featured_status\":1,\"meta_title\":null,\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":null,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":null,\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"stock_status\":\"in_stock\",\"commercial_solution\":false,\"reviews_count\":0,\"translations\":[],\"reviews\":[]}', 1, 150, 0, 0, 'exclude', 'pending', 'unpaid', '2026-07-23 11:30:26', '2026-07-23 11:30:26', NULL, '', '[]', 'discount_on_product', 1, 0),
(2, 100001, 577, 1, NULL, '{\"id\":577,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Water Boiler (WB-010A)\",\"slug\":\"water-boiler-wb-010a-vNp2zE\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"44\\\",\\\"position\\\":1},{\\\"id\\\":\\\"45\\\",\\\"position\\\":2},{\\\"id\\\":\\\"0\\\",\\\"position\\\":3}]\",\"category_id\":\"44\",\"sub_category_id\":\"45\",\"sub_sub_category_id\":\"0\",\"brand_id\":1,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":0,\"digital_product_type\":null,\"digital_file_ready\":null,\"images\":\"[\\\"def.png\\\"]\",\"color_image\":\"\",\"thumbnail\":\"\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":\"\",\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"[]\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"published\":0,\"unit_price\":350,\"installation_fee\":0,\"purchase_price\":280,\"tax\":0,\"tax_type\":null,\"tax_model\":\"exclude\",\"discount\":0,\"discount_type\":\"percent\",\"current_stock\":20,\"minimum_order_qty\":1,\"details\":\"Water Boiler\",\"free_shipping\":0,\"attachment\":null,\"created_at\":null,\"updated_at\":null,\"status\":1,\"featured_status\":1,\"meta_title\":null,\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":null,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":null,\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"stock_status\":\"in_stock\",\"commercial_solution\":false,\"reviews_count\":0,\"translations\":[],\"reviews\":[]}', 1, 350, 0, 0, 'exclude', 'pending', 'unpaid', '2026-07-23 11:30:26', '2026-07-23 11:30:26', NULL, '', '[]', 'discount_on_product', 1, 0),
(3, 100001, 658, 1, NULL, '{\"id\":658,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Wire Rack (6FT)\",\"slug\":\"wire-rack-6ft-IVrSAP\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"16\\\",\\\"position\\\":1},{\\\"id\\\":\\\"43\\\",\\\"position\\\":2}]\",\"category_id\":\"16\",\"sub_category_id\":\"43\",\"sub_sub_category_id\":null,\"brand_id\":1,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":0,\"digital_product_type\":null,\"digital_file_ready\":null,\"images\":\"[\\\"def.png\\\"]\",\"color_image\":\"[]\",\"thumbnail\":\"\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"published\":0,\"unit_price\":150,\"installation_fee\":0,\"purchase_price\":120,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"exclude\",\"discount\":0,\"discount_type\":\"percent\",\"current_stock\":20,\"minimum_order_qty\":1,\"details\":\"<p>Wire Rack<\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":null,\"updated_at\":\"2026-06-01T14:10:27.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":null,\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"131744\",\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"stock_status\":\"in_stock\",\"commercial_solution\":true,\"reviews_count\":0,\"translations\":[],\"reviews\":[]}', 1, 150, 0, 0, 'exclude', 'pending', 'unpaid', '2026-07-23 11:30:26', '2026-07-23 11:30:26', NULL, '', '[]', 'discount_on_product', 1, 0),
(4, 100001, 57, 1, NULL, '{\"id\":57,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"2-Tank 2-Basket Electric Fryer (HEF-904)\",\"slug\":\"2-tank-2-basket-electric-fryer-hef-904-XyDdnA\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"4\\\",\\\"position\\\":1},{\\\"id\\\":\\\"6\\\",\\\"position\\\":2},{\\\"id\\\":\\\"0\\\",\\\"position\\\":3}]\",\"category_id\":\"4\",\"sub_category_id\":\"6\",\"sub_sub_category_id\":\"0\",\"brand_id\":1,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":0,\"digital_product_type\":null,\"digital_file_ready\":null,\"images\":\"[\\\"def.png\\\"]\",\"color_image\":\"\",\"thumbnail\":\"\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":\"\",\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"[]\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"published\":0,\"unit_price\":775,\"installation_fee\":0,\"purchase_price\":620,\"tax\":0,\"tax_type\":null,\"tax_model\":\"exclude\",\"discount\":0,\"discount_type\":\"percent\",\"current_stock\":20,\"minimum_order_qty\":1,\"details\":\"2-Tank 2-Basket Electric Fryer\",\"free_shipping\":0,\"attachment\":null,\"created_at\":null,\"updated_at\":null,\"status\":1,\"featured_status\":1,\"meta_title\":null,\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":null,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":null,\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"stock_status\":\"in_stock\",\"commercial_solution\":false,\"reviews_count\":0,\"translations\":[],\"reviews\":[]}', 1, 775, 0, 0, 'exclude', 'pending', 'unpaid', '2026-07-23 11:30:26', '2026-07-23 11:30:26', NULL, '', '[]', 'discount_on_product', 1, 0),
(5, 100002, 658, 1, NULL, '{\"id\":658,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Wire Rack (6FT)\",\"slug\":\"wire-rack-6ft-IVrSAP\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"16\\\",\\\"position\\\":1},{\\\"id\\\":\\\"43\\\",\\\"position\\\":2}]\",\"category_id\":\"16\",\"sub_category_id\":\"43\",\"sub_sub_category_id\":null,\"brand_id\":1,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":0,\"digital_product_type\":null,\"digital_file_ready\":null,\"images\":\"[\\\"def.png\\\"]\",\"color_image\":\"[]\",\"thumbnail\":\"\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"published\":0,\"unit_price\":150,\"installation_fee\":0,\"purchase_price\":120,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"exclude\",\"discount\":0,\"discount_type\":\"percent\",\"current_stock\":19,\"minimum_order_qty\":1,\"details\":\"<p>Wire Rack<\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":null,\"updated_at\":\"2026-07-23T12:30:26.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":null,\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"131744\",\"material\":null,\"capacity\":null,\"power_type\":null,\"dimensions\":null,\"stock_status\":\"in_stock\",\"commercial_solution\":true,\"reviews_count\":0,\"translations\":[],\"reviews\":[]}', 1, 150, 0, 0, 'exclude', 'pending', 'unpaid', '2026-07-23 11:34:27', '2026-07-23 11:34:27', NULL, '', '[]', 'discount_on_product', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_expected_delivery_histories`
--

CREATE TABLE `order_expected_delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `expected_delivery_date` date NOT NULL,
  `cause` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status_histories`
--

CREATE TABLE `order_status_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `cause` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status_histories`
--

INSERT INTO `order_status_histories` (`id`, `order_id`, `user_id`, `user_type`, `status`, `cause`, `created_at`, `updated_at`) VALUES
(1, 100001, 3, 'customer', 'confirmed', NULL, '2026-07-23 11:30:26', '2026-07-23 11:30:26'),
(2, 100002, 3, 'customer', 'confirmed', NULL, '2026-07-23 11:34:27', '2026-07-23 11:34:27');

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

CREATE TABLE `order_transactions` (
  `seller_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `order_amount` decimal(50,2) NOT NULL DEFAULT 0.00,
  `seller_amount` decimal(50,2) NOT NULL DEFAULT 0.00,
  `admin_commission` decimal(50,2) NOT NULL DEFAULT 0.00,
  `received_by` varchar(191) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `delivery_charge` decimal(50,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(50,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `seller_is` varchar(191) DEFAULT NULL,
  `delivered_by` varchar(191) NOT NULL DEFAULT 'admin',
  `payment_method` varchar(191) DEFAULT NULL,
  `transaction_id` varchar(191) DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_transactions`
--

INSERT INTO `order_transactions` (`seller_id`, `order_id`, `order_amount`, `seller_amount`, `admin_commission`, `received_by`, `status`, `delivery_charge`, `tax`, `created_at`, `updated_at`, `customer_id`, `seller_is`, `delivered_by`, `payment_method`, `transaction_id`, `id`) VALUES
(1, 100001, 1425.00, 1425.00, 0.00, 'admin', 'hold', 5.00, 0.00, '2026-07-23 11:30:26', '2026-07-23 11:30:26', 3, 'admin', 'admin', 'paystack', '3995-iZbbn-1784809826', 1),
(1, 100002, 150.00, 150.00, 0.00, 'admin', 'hold', 5.00, 0.00, '2026-07-23 11:34:27', '2026-07-23 11:34:27', 3, 'admin', 'admin', 'paystack', '9076-fauFd-1784810067', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `identity` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) NOT NULL DEFAULT 'customer',
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

CREATE TABLE `payment_requests` (
  `id` char(36) NOT NULL,
  `payer_id` varchar(64) DEFAULT NULL,
  `receiver_id` varchar(64) DEFAULT NULL,
  `payment_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `gateway_callback_url` varchar(191) DEFAULT NULL,
  `success_hook` varchar(100) DEFAULT NULL,
  `failure_hook` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `currency_code` varchar(20) NOT NULL DEFAULT 'USD',
  `payment_method` varchar(50) DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payer_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `external_redirect_link` varchar(255) DEFAULT NULL,
  `receiver_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `attribute_id` varchar(64) DEFAULT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `payment_platform` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_requests`
--

INSERT INTO `payment_requests` (`id`, `payer_id`, `receiver_id`, `payment_amount`, `gateway_callback_url`, `success_hook`, `failure_hook`, `transaction_id`, `currency_code`, `payment_method`, `additional_data`, `is_paid`, `created_at`, `updated_at`, `payer_information`, `external_redirect_link`, `receiver_information`, `attribute_id`, `attribute`, `payment_platform`) VALUES
('ff885dbf-fa48-4f20-bf18-c6a2708f344f', '3', '100', 655.00, NULL, 'digital_payment_success', 'digital_payment_fail', NULL, 'NGN', 'paystack', '{\"business_name\":\"Number 1 Kitchen\",\"business_logo\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/app\\/public\\/company\\/2021-05-25-60ad1b313a9d4.png\",\"payment_mode\":\"web\"}', 0, '2026-07-22 22:04:42', '2026-07-22 22:04:42', '{\"name\":\"EMESUE Nnaemeka Emmanuel\",\"email\":\"emmanuelemesue97@gmail.com\",\"phone\":\"09037331520\",\"address\":\"\"}', 'http://127.0.0.1:8000/web-payment', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '10001', 'order', 'web'),
('10f6ccdf-bddc-489c-bbe1-a67b8b11af2a', '3', '100', 1430.00, NULL, 'digital_payment_success', 'digital_payment_fail', 'w1epRSmtgpiZ2x5p440xfG8dn', 'NGN', 'paystack', '{\"business_name\":\"Number 1 Kitchen\",\"business_logo\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/app\\/public\\/company\\/2021-05-25-60ad1b313a9d4.png\",\"payment_mode\":\"web\"}', 1, '2026-07-23 11:30:11', '2026-07-23 11:30:25', '{\"name\":\"EMESUE Nnaemeka Emmanuel\",\"email\":\"emmanuelemesue97@gmail.com\",\"phone\":\"09037331520\",\"address\":\"\"}', 'http://127.0.0.1:8000/web-payment', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '10001', 'order', 'web'),
('6ceb6369-a796-471c-af7b-f98ddb4a50f6', '3', '100', 155.00, NULL, 'digital_payment_success', 'digital_payment_fail', 'mpF1soJBYkM543SVgL2NzkRwN', 'NGN', 'paystack', '{\"business_name\":\"Number 1 Kitchen\",\"business_logo\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/app\\/public\\/company\\/2021-05-25-60ad1b313a9d4.png\",\"payment_mode\":\"web\"}', 1, '2026-07-23 11:34:15', '2026-07-23 11:34:27', '{\"name\":\"EMESUE Nnaemeka Emmanuel\",\"email\":\"emmanuelemesue97@gmail.com\",\"phone\":\"09037331520\",\"address\":\"\"}', 'http://127.0.0.1:8000/web-payment', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '10001', 'order', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `paytabs_invoices`
--

CREATE TABLE `paytabs_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `result` text NOT NULL,
  `response_code` int(10) UNSIGNED NOT NULL,
  `pt_invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `currency` varchar(191) DEFAULT NULL,
  `transaction_id` int(10) UNSIGNED DEFAULT NULL,
  `card_brand` varchar(191) DEFAULT NULL,
  `card_first_six_digits` int(10) UNSIGNED DEFAULT NULL,
  `card_last_four_digits` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_or_email_verifications`
--

CREATE TABLE `phone_or_email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_or_email` varchar(191) DEFAULT NULL,
  `token` varchar(191) DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phone_or_email_verifications`
--

INSERT INTO `phone_or_email_verifications` (`id`, `phone_or_email`, `token`, `otp_hit_count`, `is_temp_blocked`, `temp_block_time`, `expires_at`, `created_at`, `updated_at`) VALUES
(2, 'emmanuelemesue97@gmail.com', '4269', 0, 0, NULL, NULL, '2026-04-20 12:00:02', '2026-04-20 12:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `added_by` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `product_type` varchar(20) NOT NULL DEFAULT 'physical',
  `category_ids` varchar(80) DEFAULT NULL,
  `category_id` varchar(191) DEFAULT NULL,
  `sub_category_id` varchar(191) DEFAULT NULL,
  `sub_sub_category_id` varchar(191) DEFAULT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `unit` varchar(191) DEFAULT NULL,
  `min_qty` int(11) NOT NULL DEFAULT 1,
  `refundable` tinyint(1) NOT NULL DEFAULT 1,
  `digital_product_type` varchar(30) DEFAULT NULL,
  `digital_file_ready` varchar(191) DEFAULT NULL,
  `images` longtext DEFAULT NULL,
  `color_image` text NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `featured` varchar(255) DEFAULT NULL,
  `flash_deal` varchar(255) DEFAULT NULL,
  `video_provider` varchar(30) DEFAULT NULL,
  `video_url` varchar(150) DEFAULT NULL,
  `colors` varchar(150) DEFAULT NULL,
  `variant_product` tinyint(1) NOT NULL DEFAULT 0,
  `attributes` varchar(255) DEFAULT NULL,
  `choice_options` text DEFAULT NULL,
  `variation` text DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `unit_price` double NOT NULL DEFAULT 0,
  `installation_fee` double(8,2) NOT NULL DEFAULT 0.00,
  `purchase_price` double NOT NULL DEFAULT 0,
  `tax` varchar(191) NOT NULL DEFAULT '0.00',
  `tax_type` varchar(80) DEFAULT NULL,
  `tax_model` varchar(20) NOT NULL DEFAULT 'exclude',
  `discount` varchar(191) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(80) DEFAULT NULL,
  `current_stock` int(11) DEFAULT NULL,
  `minimum_order_qty` int(11) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `attachment` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `featured_status` tinyint(1) NOT NULL DEFAULT 1,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` varchar(191) DEFAULT NULL,
  `meta_image` varchar(191) DEFAULT NULL,
  `request_status` tinyint(1) NOT NULL DEFAULT 0,
  `denied_note` varchar(191) DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `multiply_qty` tinyint(1) DEFAULT NULL,
  `temp_shipping_cost` double(8,2) DEFAULT NULL,
  `is_shipping_cost_updated` tinyint(1) DEFAULT NULL,
  `code` varchar(191) DEFAULT NULL,
  `material` varchar(191) DEFAULT NULL,
  `capacity` varchar(191) DEFAULT NULL,
  `power_type` varchar(191) DEFAULT NULL,
  `dimensions` varchar(191) DEFAULT NULL,
  `stock_status` varchar(191) NOT NULL DEFAULT 'in_stock',
  `commercial_solution` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `images`, `color_image`, `thumbnail`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `published`, `unit_price`, `installation_fee`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`, `material`, `capacity`, `power_type`, `dimensions`, `stock_status`, `commercial_solution`) VALUES
(1, 'admin', 1, 'Gas 6 Burner Range With Gas Oven (NGR-996)', 'gas-6-burner-range-with-gas-oven-ngr-996-cTOYB6', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 2300, 0.00, 1850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas 6 Burner Range With Gas Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(2, 'admin', 1, 'Gas 6 Burner Range With Gas Oven (NGR-776)', 'gas-6-burner-range-with-gas-oven-ngr-776-azRjnq', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 2300, 0.00, 1850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas 6 Burner Range With Gas Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(3, 'admin', 1, 'Gas 6 Burner Range With Cabinet (NGR-996B/NGR-996ZB)', 'gas-6-burner-range-with-cabinet-ngr-996bngr-996zb-tWycHM', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 2050, 0.00, 1650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas 6 Burner Range With Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(4, 'admin', 1, 'Gas 6 Burner Range With Cabinet (NGR-776B)', 'gas-6-burner-range-with-cabinet-ngr-776b-8KWM5c', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 2050, 0.00, 1650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas 6 Burner Range With Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(5, 'admin', 1, '4 Burner Gas Range With Gas/Electric Oven (NGR-705/HGR-705A)', '4-burner-gas-range-with-gaselectric-oven-ngr-705hgr-705a-tDlIh2', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1750, 0.00, 1400, '0', NULL, 'exclude', '0', 'percent', 20, 1, '4 Burner Gas Range With Gas/Electric Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(6, 'admin', 1, 'Gas 4-Burner Range With Gas/Electric Oven (NX-905Z/NX-905ZA)', 'gas-4-burner-range-with-gaselectric-oven-nx-905znx-905za-9ZsAoh', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1720, 0.00, 1380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas 4-Burner Range With Gas/Electric Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(7, 'admin', 1, 'Gas 4-Burner Range With Cabinet (NGR-905B/HGR-705B)', 'gas-4-burner-range-with-cabinet-ngr-905bhgr-705b-QoERpf', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas 4-Burner Range With Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(8, 'admin', 1, 'Gas 6-Burner Range With Electric Oven (NGR-996A/NGR-776A)', 'gas-6-burner-range-with-electric-oven-ngr-996angr-776a-4psy8e', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 2190, 0.00, 1750, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas 6-Burner Range With Electric Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(9, 'admin', 1, 'Gas 6-Burner Range With Gas/Electric Oven (NGR-996ZA//NGR-996Z)', 'gas-6-burner-range-with-gaselectric-oven-ngr-996zangr-996z-d2DdwO', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 2250, 0.00, 1800, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas 6-Burner Range With Gas/Electric Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(10, 'admin', 1, 'Gas Range 4-Burner Stove & Griddle & Electric Oven (NGR-998A)', 'gas-range-4-burner-stove-griddle-electric-oven-ngr-998a-x8FvNP', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 2000, 0.00, 1600, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Range 4-Burner Stove & Griddle & Electric Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(11, 'admin', 1, 'Gas Range 4-Burner Stove & Griddle & Oven (NGR-998A)', 'gas-range-4-burner-stove-griddle-oven-ngr-998a-M7RyOo', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1940, 0.00, 1550, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Range 4-Burner Stove & Griddle & Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(12, 'admin', 1, 'Gas Griddle(2/3 FLAT & 1/3 GROOVED) With Cabinet (NGR-906/NGR-706)', 'gas-griddle23-flat-13-grooved-with-cabinet-ngr-906ngr-706-yMjxxP', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle(2/3 Flat & 1/3 Grooved) With Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(13, 'admin', 1, 'Gas Griddle(2/3 FLAT & 1/3 GROOVED) With Gas, Electric Oven (NGR-013/NGR-913B/NG', 'gas-griddle23-flat-13-grooved-with-gas-electric-oven-ngr-013ngr-913bngr-713a-ZYgUl5', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle(2/3 Flat & 1/3 Grooved) With Gas, Electric Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(14, 'admin', 1, 'Gas 2-Tank Fryer With Cabinet (NGF-908/NGF-708)', 'gas-2-tank-fryer-with-cabinet-ngf-908ngf-708-O2O3QQ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1225, 0.00, 980, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas 2-Tank Fryer With Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(15, 'admin', 1, 'Gas Lava Rock Grill With Cabinet (NGL-907/HGL-707)', 'gas-lava-rock-grill-with-cabinet-ngl-907hgl-707-WhdNAa', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1375, 0.00, 1100, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Lava Rock Grill With Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(16, 'admin', 1, 'Gas Pasta Cooker With Cabinet (NGF-910/NGF-710)', 'gas-pasta-cooker-with-cabinet-ngf-910ngf-710-ODJL5v', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Pasta Cooker With Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(17, 'admin', 1, 'Gas Solid Top With Cabinet (NGZ-911)', 'gas-solid-top-with-cabinet-ngz-911-8StpMW', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1125, 0.00, 900, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Solid Top With Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(18, 'admin', 1, 'Gas Tilting Braising Pan (NH-RS80)', 'gas-tilting-braising-pan-nh-rs80-phSA6k', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 2750, 0.00, 2200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Tilting Braising Pan', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(19, 'admin', 1, 'Gas Indirect Jacket Boiling Pan (NGK -100)', 'gas-indirect-jacket-boiling-pan-ngk-100-LXl3wx', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 3500, 0.00, 2800, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Indirect Jacket Boiling Pan', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(20, 'admin', 1, 'Electric 1 - Tank Fryer With Cabinet (NEF - 968A/NEF-968A)', 'electric-1-tank-fryer-with-cabinet-nef-968anef-968a-pPucUW', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 975, 0.00, 780, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric 1 - Tank Fryer With Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(21, 'admin', 1, 'Electric Griddle (1/3 GROOVED) With Electric Oven (NER - 913A/NER-713A)', 'electric-griddle-13-grooved-with-electric-oven-ner-913aner-713a-4kXpHy', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Griddle (1/3 Grooved) With Electric Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(22, 'admin', 1, 'Electri Lava Rock Grill With Cabinet (NEL-907A/707A)', 'electri-lava-rock-grill-with-cabinet-nel-907a707a-waFI4h', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1315, 0.00, 1050, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electri Lava Rock Grill With Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(23, 'admin', 1, 'Electric 6-Hot Plate Cooker With Oven (NRQ-962A/NER-706A)', 'electric-6-hot-plate-cooker-with-oven-nrq-962aner-706a-z2nbeS', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1375, 0.00, 1100, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric 6-Hot Plate Cooker With Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(24, 'admin', 1, 'Electric 4-Hot-Plate Cooker With Oven (NRQ-912A/712A)', 'electric-4-hot-plate-cooker-with-oven-nrq-912a712a-nYbFRH', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1190, 0.00, 950, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric 4-Hot-Plate Cooker With Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(25, 'admin', 1, 'Electric 4-Hot Plate Cooker With Cabinet (NRQ-912/712)', 'electric-4-hot-plate-cooker-with-cabinet-nrq-912712-1RrJgX', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1125, 0.00, 900, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric 4-Hot Plate Cooker With Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(26, 'admin', 1, 'Electric 6-Hot Plate Cooker With Cabinet (NRQ-962/NRQ-762)', 'electric-6-hot-plate-cooker-with-cabinet-nrq-962nrq-762-bR7JYX', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1315, 0.00, 1050, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric 6-Hot Plate Cooker With Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(27, 'admin', 1, 'Electric 2-Tank Fryer With Cabinet (NEF-908A/708A)', 'electric-2-tank-fryer-with-cabinet-nef-908a708a-RmNYlD', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1025, 0.00, 820, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric 2-Tank Fryer With Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(28, 'admin', 1, 'Gas Bain Marie With Cabinet (NGR-909/709)', 'gas-bain-marie-with-cabinet-ngr-909709-BEs1hx', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 975, 0.00, 780, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Bain Marie With Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(29, 'admin', 1, 'Gas Pasta Cooker With Cabinet (NER-906A/706A)', 'gas-pasta-cooker-with-cabinet-ner-906a706a-S242yw', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Pasta Cooker With Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(30, 'admin', 1, 'Electric Pasta Cooker With Cabinet (NEN-910A/710A/915A/715A)', 'electric-pasta-cooker-with-cabinet-nen-910a710a915a715a-WyN0TX', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1025, 0.00, 820, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Pasta Cooker With Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(31, 'admin', 1, 'Electric Indirect Jacketed Boiling Pan (NEK-150/100)', 'electric-indirect-jacketed-boiling-pan-nek-150100-TNEiAg', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 3250, 0.00, 2600, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Indirect Jacketed Boiling Pan', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(32, 'admin', 1, 'Electric Hot Plate Cooker With Oven(SQUARE) (NSQ-962B/912B)', 'electric-hot-plate-cooker-with-ovensquare-nsq-962b912b-tI6NwN', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1100, 0.00, 880, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Hot Plate Cooker With Oven(Square)', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(33, 'admin', 1, 'Electric 4 Hot Plate Cooker With Cabinet(SQUARE) (NSQ-912C)', 'electric-4-hot-plate-cooker-with-cabinetsquare-nsq-912c-kBS3Pd', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1125, 0.00, 900, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric 4 Hot Plate Cooker With Cabinet(Square)', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(34, 'admin', 1, 'Counter Top 4-Burner Gas Range (HGR-605)', 'counter-top-4-burner-gas-range-hgr-605-iCRdLq', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 725, 0.00, 580, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Counter Top 4-Burner Gas Range', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(35, 'admin', 1, 'Counter To 2-Tank 2 Basket Gas Fryer (HGF-608)', 'counter-to-2-tank-2-basket-gas-fryer-hgf-608-oUGxHK', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 650, 0.00, 520, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Counter To 2-Tank 2 Basket Gas Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(36, 'admin', 1, 'Counter Top Gas Bain Marie (HGL-609)', 'counter-top-gas-bain-marie-hgl-609-IOBU8y', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 440, 0.00, 350, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Counter Top Gas Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(37, 'admin', 1, 'Counter Top Pasta Cooker (HGL-610)', 'counter-top-pasta-cooker-hgl-610-Jcw5Yv', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Counter Top Pasta Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(38, 'admin', 1, 'Gas 4-Burner Range With Cabinet (HGR-606)', 'gas-4-burner-range-with-cabinet-hgr-606-nkjVku', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas 4-Burner Range With Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(39, 'admin', 1, 'Gas 4-Burner Range Withj Gas /Electric Oven (HGL-607)', 'gas-4-burner-range-withj-gas-electric-oven-hgl-607-Dv9Ib9', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1690, 0.00, 1350, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas 4-Burner Range Withj Gas /Electric Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(40, 'admin', 1, 'Counter Top4-Plate Electric Cooker (HRQ-605E)', 'counter-top4-plate-electric-cooker-hrq-605e-M1cSy9', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Counter Top4-Plate Electric Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(41, 'admin', 1, 'Counter Top Electric Griddle(ALL FLAT) (HEG-606)', 'counter-top-electric-griddleall-flat-heg-606-ON0lFz', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Counter Top Electric Griddle(All Flat)', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(42, 'admin', 1, 'Counter Top Electric Lava Rock Grill (HEL-607)', 'counter-top-electric-lava-rock-grill-hel-607-IZ27sw', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 440, 0.00, 350, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Counter Top Electric Lava Rock Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(43, 'admin', 1, 'Counter Top Electric Lava Rock Grill (HEB-609)', 'counter-top-electric-lava-rock-grill-heb-609-cM01ts', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 440, 0.00, 350, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Counter Top Electric Lava Rock Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(44, 'admin', 1, 'Counter Top Electric Bain Marie (HEB-609)', 'counter-top-electric-bain-marie-heb-609-ofq9Nk', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Counter Top Electric Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(45, 'admin', 1, '1-Tank 1 Basket Electric Fryer (HEF-81/88/81A)', '1-tank-1-basket-electric-fryer-hef-818881a-2MfRy7', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Tank 1 Basket Electric Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(46, 'admin', 1, '2-Tank 2 Basket Electric Fryer (HEF-82/83/89)', '2-tank-2-basket-electric-fryer-hef-828389-YRBBbL', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 775, 0.00, 620, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Tank 2 Basket Electric Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(47, 'admin', 1, '2-Tank 2 Basket Electric Fryer (HEF-82A/83A)', '2-tank-2-basket-electric-fryer-hef-82a83a-OlPnSH', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 775, 0.00, 620, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Tank 2 Basket Electric Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(48, 'admin', 1, '1-Tank 1 Basket Electricfryer (HEF-4L/4L-2)', '1-tank-1-basket-electricfryer-hef-4l4l-2-D8klH2', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Tank 1 Basket Electricfryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(49, 'admin', 1, '2-Tank 2-Basket Electric Fryer (HEF-6L-2/8L-2)', '2-tank-2-basket-electric-fryer-hef-6l-28l-2-Gg1LLW', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 775, 0.00, 620, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Tank 2-Basket Electric Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(50, 'admin', 1, '1-Tank 1-Basket Electric Fryer (HEF-8L)', '1-tank-1-basket-electric-fryer-hef-8l-iooSB2', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Tank 1-Basket Electric Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(51, 'admin', 1, '1-Tank 1-Basket Electric Fryer (HEF-903)', '1-tank-1-basket-electric-fryer-hef-903-8uXihf', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Tank 1-Basket Electric Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(52, 'admin', 1, '1-Tank 1-Basket Electric Fryer (HEF-11L)', '1-tank-1-basket-electric-fryer-hef-11l-qHsAlz', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Tank 1-Basket Electric Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(53, 'admin', 1, '2-Tank 2 -Basket Electric Fryer (HEF-102V/132V/162V)', '2-tank-2-basket-electric-fryer-hef-102v132v162v-utXcJ5', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 775, 0.00, 620, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Tank 2 -Basket Electric Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(54, 'admin', 1, '2-Tank 2-Basket Electric Fryer (HEF-12L-2)', '2-tank-2-basket-electric-fryer-hef-12l-2-7gdxKu', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 775, 0.00, 620, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Tank 2-Basket Electric Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(55, 'admin', 1, '1-Tank 1-Basket Electric Fryer (HEF-901)', '1-tank-1-basket-electric-fryer-hef-901-P0OmZB', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Tank 1-Basket Electric Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(56, 'admin', 1, '2-Tank 1-Basket Electric Fryer (HEF902)', '2-tank-1-basket-electric-fryer-hef902-qsGB9I', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 650, 0.00, 520, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Tank 1-Basket Electric Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(57, 'admin', 1, '2-Tank 2-Basket Electric Fryer (HEF-904)', '2-tank-2-basket-electric-fryer-hef-904-XyDdnA', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 775, 0.00, 620, '0', NULL, 'exclude', '0', 'percent', 19, 1, '2-Tank 2-Basket Electric Fryer', 0, NULL, NULL, '2026-07-23 11:30:26', 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(58, 'admin', 1, '1-Tank 1-Basket Gas Fryer (HGF-71A)', '1-tank-1-basket-gas-fryer-hgf-71a-YT6EOO', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 525, 0.00, 420, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Tank 1-Basket Gas Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(59, 'admin', 1, '2-Tank 2-Basket Standing Electricfryer (HEF-912)', '2-tank-2-basket-standing-electricfryer-hef-912-FDypjs', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 875, 0.00, 700, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Tank 2-Basket Standing Electricfryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(60, 'admin', 1, '2-Tank 2-Basket Electric Fryer (HEF-906C)', '2-tank-2-basket-electric-fryer-hef-906c-Lk732R', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 775, 0.00, 620, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Tank 2-Basket Electric Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(61, 'admin', 1, '2-Tank 2-Basket Gas Fryer (HGF-907C)', '2-tank-2-basket-gas-fryer-hgf-907c-YY6Paj', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Tank 2-Basket Gas Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(62, 'admin', 1, '1-Tank 1-Basket Electric/Gas Fryer (HEF-779/HGF-779)', '1-tank-1-basket-electricgas-fryer-hef-779hgf-779-5gjk9d', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 525, 0.00, 420, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Tank 1-Basket Electric/Gas Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(63, 'admin', 1, 'Gas Fryer (1-TANK 2-BASKET) (HGF-74/75)', 'gas-fryer-1-tank-2-basket-hgf-7475-ACytKh', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 625, 0.00, 500, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Fryer (1-Tank 2-Basket)', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(64, 'admin', 1, '2-Tank 2 -Basket Electric Electric/Gas Fryer (HEF-780)', '2-tank-2-basket-electric-electricgas-fryer-hef-780-GxriiV', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 815, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Tank 2 -Basket Electric Electric/Gas Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(65, 'admin', 1, 'Electric Fryer (1-TANK 2-BASKET) (HEF-84/85)', 'electric-fryer-1-tank-2-basket-hef-8485-OAwhL8', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 625, 0.00, 500, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Fryer (1-Tank 2-Basket)', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(66, 'admin', 1, '2-Tank 2-Basket Gas Fryer (HGF-72A)', '2-tank-2-basket-gas-fryer-hgf-72a-7NPGDD', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Tank 2-Basket Gas Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(67, 'admin', 1, '2-Tank 2-Basket Gas Fryer (HGF-972)', '2-tank-2-basket-gas-fryer-hgf-972-HndYPz', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Tank 2-Basket Gas Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(68, 'admin', 1, '1-Tank 1  Basket Gas Fryer (HGF-7L)', '1-tank-1-basket-gas-fryer-hgf-7l-KsTxPS', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 625, 0.00, 500, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Tank 1  Basket Gas Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(69, 'admin', 1, '2-Tank 2-Basket Gas Fryer (HGF-772)', '2-tank-2-basket-gas-fryer-hgf-772-0zu8SN', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Tank 2-Basket Gas Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(70, 'admin', 1, '1-Tank 1-Basket Gas Fryer (HGF-971)', '1-tank-1-basket-gas-fryer-hgf-971-irgdz1', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 525, 0.00, 420, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Tank 1-Basket Gas Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(71, 'admin', 1, '2-Tank 2-Basket Gas Fryer (HGF-72/73)', '2-tank-2-basket-gas-fryer-hgf-7273-3XvbnB', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Tank 2-Basket Gas Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(72, 'admin', 1, '1-Tank 2-Basket Electric Fryer (HEF-26)', '1-tank-2-basket-electric-fryer-hef-26-ZO4EcV', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Tank 2-Basket Electric Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(73, 'admin', 1, '1-Tank 2-Basket Electric Fryer (HEF-871)', '1-tank-2-basket-electric-fryer-hef-871-xWBQRx', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Tank 2-Basket Electric Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(74, 'admin', 1, '2-Tank 4-Basket Electric Fryer (HEF-26-2)', '2-tank-4-basket-electric-fryer-hef-26-2-9cK1YQ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Tank 4-Basket Electric Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(75, 'admin', 1, '2-Tank 4-Basket Computer Fryer (HEF-872)', '2-tank-4-basket-computer-fryer-hef-872-m8pk34', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1375, 0.00, 1100, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Tank 4-Basket Computer Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(76, 'admin', 1, '2-Tank 2-Basket Electric Fryer (HEF-162C)', '2-tank-2-basket-electric-fryer-hef-162c-SWsCg7', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 775, 0.00, 620, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Tank 2-Basket Electric Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(77, 'admin', 1, '1-Tank 1-Basket Electric Fryer (HEF-161C)', '1-tank-1-basket-electric-fryer-hef-161c-Fs7fvu', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Tank 1-Basket Electric Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(78, 'admin', 1, '1-Tank 1-Basket Gas Fryer (HGF-181C)', '1-tank-1-basket-gas-fryer-hgf-181c-a8n8Kf', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 525, 0.00, 420, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Tank 1-Basket Gas Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(79, 'admin', 1, '2-Tank 2-Basket Gas Fryer (HGF-182C)', '2-tank-2-basket-gas-fryer-hgf-182c-Y06EaY', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Tank 2-Basket Gas Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(80, 'admin', 1, 'Electric Pressure Fryer (MDXZ-24)', 'electric-pressure-fryer-mdxz-24-6rCaiy', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 2250, 0.00, 1800, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Pressure Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(81, 'admin', 1, 'Gas Pressure Fryer (MDXZ-25)', 'gas-pressure-fryer-mdxz-25-OqA46R', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 2440, 0.00, 1950, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Pressure Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(82, 'admin', 1, 'Electric Pressure Fryer (MDXZ-16)', 'electric-pressure-fryer-mdxz-16-Hkn0sx', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 2250, 0.00, 1800, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Pressure Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(83, 'admin', 1, '1-Tank 2-Basket Gas Fryer (HGF-778)', '1-tank-2-basket-gas-fryer-hgf-778-7HtJQ2', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Tank 2-Basket Gas Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(84, 'admin', 1, '1-Tank 2-Basket Gas Fryer (HGF-778S(3 BURNER))', '1-tank-2-basket-gas-fryer-hgf-778s3-burner-qmZylR', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Tank 2-Basket Gas Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(85, 'admin', 1, '1-Tank 2-Basket Gas Fryer (HGF-778S2 (4 BURNER))', '1-tank-2-basket-gas-fryer-hgf-778s2-4-burner-RrCxyq', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Tank 2-Basket Gas Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0);
INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `images`, `color_image`, `thumbnail`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `published`, `unit_price`, `installation_fee`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`, `material`, `capacity`, `power_type`, `dimensions`, `stock_status`, `commercial_solution`) VALUES
(86, 'admin', 1, 'Electric Griddle (NEG-818)', 'electric-griddle-neg-818-BspL62', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(87, 'admin', 1, 'Electric Griddle (NEG-820)', 'electric-griddle-neg-820-XkDW6X', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(88, 'admin', 1, 'Elecvtric Griddle (NEG-822)', 'elecvtric-griddle-neg-822-6MjB7f', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Elecvtric Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(89, 'admin', 1, 'Electric Griddle (NEG-818A)', 'electric-griddle-neg-818a-KTM7I1', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(90, 'admin', 1, 'Electric Griddle (NEG-821)', 'electric-griddle-neg-821-TqcHYr', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(91, 'admin', 1, 'Electric Griddle (NEG-920)', 'electric-griddle-neg-920-KGZ43T', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(92, 'admin', 1, 'Electric Griddle (NEG-824)', 'electric-griddle-neg-824-A3uybk', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(93, 'admin', 1, 'Electric Griddle (NEG-922)', 'electric-griddle-neg-922-88DEYU', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(94, 'admin', 1, 'Electric Griddle With Electric Fryer (NEG-908)', 'electric-griddle-with-electric-fryer-neg-908-HXTaOs', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 940, 0.00, 750, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Griddle With Electric Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(95, 'admin', 1, 'Gas Griddle With Gas Fryer (NGG-751)', 'gas-griddle-with-gas-fryer-ngg-751-O8uk1p', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"6\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '6', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 975, 0.00, 780, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle With Gas Fryer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(96, 'admin', 1, 'Electric Hgriddle & Salamande (NEG-580)', 'electric-hgriddle-salamande-neg-580-Ufapf0', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 900, 0.00, 720, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Hgriddle & Salamande', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(97, 'admin', 1, 'Gas Griddle (NGG-700)', 'gas-griddle-ngg-700-tkjHPc', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(98, 'admin', 1, 'Electric Griddle (NEG-350)', 'electric-griddle-neg-350-UT2AID', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(99, 'admin', 1, 'Electric Griddle (NEG-500)', 'electric-griddle-neg-500-SqULlh', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(100, 'admin', 1, 'Electric Griddle (NEG-700)', 'electric-griddle-neg-700-RDbFSc', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(101, 'admin', 1, 'Gas Griddle (NGG-718)', 'gas-griddle-ngg-718-L0dMqY', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(102, 'admin', 1, 'Gas Griddle (NGG-530-2)', 'gas-griddle-ngg-530-2-juaBU7', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(103, 'admin', 1, 'Gasa Griddle (NGG-600-2)', 'gasa-griddle-ngg-600-2-7pmuHL', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gasa Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(104, 'admin', 1, 'Gas Griddle (NGG-350)', 'gas-griddle-ngg-350-n2ls2D', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(105, 'admin', 1, 'Gas Griddle (NGG-500)', 'gas-griddle-ngg-500-7Pbiig', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(106, 'admin', 1, 'Gas Griddle (NGG-720)', 'gas-griddle-ngg-720-hg5K0C', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(107, 'admin', 1, 'Gas Griddle (NGG-721)', 'gas-griddle-ngg-721-TrAUoD', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(108, 'admin', 1, 'Gas Half-Grooved Griddle (NGG-752)', 'gas-half-grooved-griddle-ngg-752-XReM28', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Half-Grooved Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(109, 'admin', 1, 'Gas Griddle (NGG-753)', 'gas-griddle-ngg-753-alfzlO', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(110, 'admin', 1, 'Gas Griddle (NGG-722)', 'gas-griddle-ngg-722-IQJ6YU', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(111, 'admin', 1, 'Gas Griddle (NGG-24)', 'gas-griddle-ngg-24-TbrkWk', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(112, 'admin', 1, 'Gas Griddle (NGG-36)', 'gas-griddle-ngg-36-uWiM4O', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(113, 'admin', 1, 'Gas Griddle (NGG-721)', 'gas-griddle-ngg-721-bRPmea', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(114, 'admin', 1, 'Gas Half-Grooved Griddle (NGG-752)', 'gas-half-grooved-griddle-ngg-752-cbChlb', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Half-Grooved Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(115, 'admin', 1, 'Gas Griddle (NGG-753)', 'gas-griddle-ngg-753-wedwLW', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(116, 'admin', 1, 'Gas Griddle (NGG-722)', 'gas-griddle-ngg-722-33hw3s', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(117, 'admin', 1, 'Gas Griddle (NGG-24)', 'gas-griddle-ngg-24-gLplvb', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(118, 'admin', 1, 'Gas Griddle (NGG-48)', 'gas-griddle-ngg-48-DhDDTQ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 820, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Griddle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(119, 'admin', 1, 'Counter Top Electric Pasta Cooker (NEN-4A)', 'counter-top-electric-pasta-cooker-nen-4a-BeW90Q', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 440, 0.00, 350, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Counter Top Electric Pasta Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(120, 'admin', 1, 'Counter Top Electric Pasta Cooker (NEN-6A)', 'counter-top-electric-pasta-cooker-nen-6a-q2FhPr', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 440, 0.00, 350, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Counter Top Electric Pasta Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(121, 'admin', 1, 'Electric Pasta Cooker (NEN-4HX)', 'electric-pasta-cooker-nen-4hx-flPtnB', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Pasta Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(122, 'admin', 1, 'Electric Pasta Cooker (NEN-6HX)', 'electric-pasta-cooker-nen-6hx-6OmFvp', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Pasta Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(123, 'admin', 1, 'Gas Pasta Cooker (NGN-4HX)', 'gas-pasta-cooker-ngn-4hx-SumTW6', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 650, 0.00, 520, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Pasta Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(124, 'admin', 1, 'Gas Pasta Cooker (NGN-6HX)', 'gas-pasta-cooker-ngn-6hx-puNDOl', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 650, 0.00, 520, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Pasta Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(125, 'admin', 1, 'Food Display Warmer (NW-2*2)', 'food-display-warmer-nw-22-WzSGZq', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(126, 'admin', 1, 'Food Display Warmer (NW-2*3)', 'food-display-warmer-nw-23-hCTFGx', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(127, 'admin', 1, 'Food Display Warmer (NW-6P-A(5 PANS))', 'food-display-warmer-nw-6p-a5-pans-Ps9nuN', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(128, 'admin', 1, 'Food Display Warmer (NW-6P(4 PANS))', 'food-display-warmer-nw-6p4-pans-K4Y69p', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(129, 'admin', 1, 'Food Display Warmer (NW-861)', 'food-display-warmer-nw-861-ee5eAI', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(130, 'admin', 1, 'Food Display Warmer (NW-863)', 'food-display-warmer-nw-863-1RriFi', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(131, 'admin', 1, 'Food Display Warmer (NW-2P)', 'food-display-warmer-nw-2p-WadGKU', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(132, 'admin', 1, 'Food Display Warmer (NW-862)', 'food-display-warmer-nw-862-OmEAfT', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(133, 'admin', 1, 'Food Display Warmer (NW-3P)', 'food-display-warmer-nw-3p-Z2u9OX', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(134, 'admin', 1, 'Sushi Display Warmer (NSD-1200)', 'sushi-display-warmer-nsd-1200-XGFk7S', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sushi Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(135, 'admin', 1, 'Sushi Display Warmer (NSD--1500)', 'sushi-display-warmer-nsd-1500-73flat', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sushi Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(136, 'admin', 1, 'Sushi Display Warmer (NSD-1800)', 'sushi-display-warmer-nsd-1800-C8iGIX', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sushi Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(137, 'admin', 1, 'Sushi Display Warmer (NSD-1200-2)', 'sushi-display-warmer-nsd-1200-2-nvTgpl', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sushi Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(138, 'admin', 1, 'Sushi Display Warmer (NSD-1500-2)', 'sushi-display-warmer-nsd-1500-2-LRHAkV', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sushi Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(139, 'admin', 1, 'Sushi Display Warmer (NSD-1800-2)', 'sushi-display-warmer-nsd-1800-2-caUm1n', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sushi Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(140, 'admin', 1, 'Food Warmer Cart (NW-22-21)', 'food-warmer-cart-nw-22-21-uNpbGK', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Warmer Cart', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(141, 'admin', 1, 'Food Display Warmer (NW-2D)', 'food-display-warmer-nw-2d-gGhF93', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(142, 'admin', 1, 'Food Display Warmer (NW-3D)', 'food-display-warmer-nw-3d-iyDuGh', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(143, 'admin', 1, 'Food Display Warmer (NW-4D)', 'food-display-warmer-nw-4d-WuFqJI', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(144, 'admin', 1, 'Food Display Warmer (NW-660)', 'food-display-warmer-nw-660-EfyFdK', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(145, 'admin', 1, 'Food Display Warmer (NW-900)', 'food-display-warmer-nw-900-kuVdX8', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(146, 'admin', 1, 'Food Display Warmer (NW-1200)', 'food-display-warmer-nw-1200-d8Q6xy', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(147, 'admin', 1, 'Food Display Warmer (NW-580)', 'food-display-warmer-nw-580-snrYuA', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(148, 'admin', 1, 'Food Display Warmer (NW-805)', 'food-display-warmer-nw-805-3fvG27', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(149, 'admin', 1, 'Food Display Warmer (NW-1002)', 'food-display-warmer-nw-1002-TMjxP3', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(150, 'admin', 1, 'Food Display Warmer (NW-1003)', 'food-display-warmer-nw-1003-9C9OZE', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(151, 'admin', 1, 'Food Display Warmer (NW-1004)', 'food-display-warmer-nw-1004-mNJWsa', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(152, 'admin', 1, 'Food Display Warmer (NW-500H)', 'food-display-warmer-nw-500h-6dqO1l', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(153, 'admin', 1, 'Food Display Warmer (NW-600H)', 'food-display-warmer-nw-600h-t0Tzj6', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(154, 'admin', 1, 'Food Display Warmer (NW-500HA)', 'food-display-warmer-nw-500ha-jcDM5q', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(155, 'admin', 1, 'Pie Warmer (NW-IP)', 'pie-warmer-nw-ip-hRJcRy', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Pie Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(156, 'admin', 1, 'Pizza Display Warmer (NW-815)', 'pizza-display-warmer-nw-815-yk1ZC6', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 525, 0.00, 420, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Pizza Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(157, 'admin', 1, 'Pizza Display Warmer (NW-816)', 'pizza-display-warmer-nw-816-1s5zrE', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 525, 0.00, 420, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Pizza Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(158, 'admin', 1, 'Electric Warming Tray (NTC-2F)', 'electric-warming-tray-ntc-2f-i8SKQQ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Warming Tray', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(159, 'admin', 1, 'Infared Warm Lamp (NW-819B)', 'infared-warm-lamp-nw-819b-PYOuMj', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 150, 0.00, 120, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Infared Warm Lamp', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(160, 'admin', 1, 'Food Warmer (NW-115F)', 'food-warmer-nw-115f-3tMjxa', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(161, 'admin', 1, 'Food Display Warmer (NW-60-1/NW-60-2/NW-60-3)', 'food-display-warmer-nw-60-1nw-60-2nw-60-3-H384b6', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(162, 'admin', 1, 'Food Display Warmer (NW-9002/NW-9003/NW-9004)', 'food-display-warmer-nw-9002nw-9003nw-9004-O606pw', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(163, 'admin', 1, 'Food Display Warmer (NW-2PS/NW-3PS)', 'food-display-warmer-nw-2psnw-3ps-Z23TNW', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Display Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(164, 'admin', 1, 'Food Dehydrator (NFD-6)', 'food-dehydrator-nfd-6-pP3Bgq', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Dehydrator', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(165, 'admin', 1, 'Food Dehydrator (NFD-12)', 'food-dehydrator-nfd-12-mZsDFO', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Dehydrator', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(166, 'admin', 1, 'Food Dehydrator (NFD-20)', 'food-dehydrator-nfd-20-YCqroc', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Dehydrator', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(167, 'admin', 1, 'Food Dehydrator (NFD-10)', 'food-dehydrator-nfd-10-RjbLqz', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Dehydrator', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(168, 'admin', 1, 'Food Dehydrator (NFD-16)', 'food-dehydrator-nfd-16-KMDDaY', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Dehydrator', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(169, 'admin', 1, 'Food Dehydrator (NFD-30)', 'food-dehydrator-nfd-30-Aie1G0', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Dehydrator', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(170, 'admin', 1, 'Infrared Lamps (A032)', 'infrared-lamps-a032-1lYDPI', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 120, 0.00, 95, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Infrared Lamps', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(171, 'admin', 1, 'Infrared Lamps (A031)', 'infrared-lamps-a031-N1mzrC', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 120, 0.00, 95, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Infrared Lamps', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(172, 'admin', 1, 'Infrared Lamps (A033)', 'infrared-lamps-a033-3z17Qy', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 120, 0.00, 95, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Infrared Lamps', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(173, 'admin', 1, 'Electric Popcorn Machine (NP-6B)', 'electric-popcorn-machine-np-6b-7QPgoJ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Popcorn Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(174, 'admin', 1, 'Electric Popcorn Machine (NP-6A)', 'electric-popcorn-machine-np-6a-hUDuex', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Popcorn Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(175, 'admin', 1, 'Electric Popcorn Machine (NP-6C)', 'electric-popcorn-machine-np-6c-SftWxV', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Popcorn Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(176, 'admin', 1, 'Popcorn Machine & Warminig Showcase (NW-P8)', 'popcorn-machine-warminig-showcase-nw-p8-kjxj9M', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Popcorn Machine & Warminig Showcase', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(177, 'admin', 1, 'Popcorn Machine & Warminig Showcase (NW-P16)', 'popcorn-machine-warminig-showcase-nw-p16-p8HiaL', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Popcorn Machine & Warminig Showcase', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(178, 'admin', 1, 'Electric Popcorn Machine (NP-800)', 'electric-popcorn-machine-np-800-I9Q3Aj', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Popcorn Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0);
INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `images`, `color_image`, `thumbnail`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `published`, `unit_price`, `installation_fee`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`, `material`, `capacity`, `power_type`, `dimensions`, `stock_status`, `commercial_solution`) VALUES
(179, 'admin', 1, 'Popcorn Machine Cart (NPC-6A)', 'popcorn-machine-cart-npc-6a-yIUnHU', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Popcorn Machine Cart', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(180, 'admin', 1, 'Popcorn Machine Cart (NPC-6)', 'popcorn-machine-cart-npc-6-gUFQTV', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Popcorn Machine Cart', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(181, 'admin', 1, 'Electric Popcorn Machine (NP-2488)', 'electric-popcorn-machine-np-2488-EKsN7B', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Popcorn Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(182, 'admin', 1, 'Popcorn Machine Cart (NP-LC)', 'popcorn-machine-cart-np-lc-LLYGPX', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Popcorn Machine Cart', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(183, 'admin', 1, 'Candy Floss Machine Plastic Cover (PC-C3/PC-C4)', 'candy-floss-machine-plastic-cover-pc-c3pc-c4-IFXvQo', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Candy Floss Machine Plastic Cover', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(184, 'admin', 1, 'Electric Candy Floss Machine (NEC-03)', 'electric-candy-floss-machine-nec-03-X2T0KX', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Candy Floss Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(185, 'admin', 1, 'Electric Candy Floss Machine (NEC-04)', 'electric-candy-floss-machine-nec-04-R5vAFk', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Candy Floss Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(186, 'admin', 1, 'Electric Candy Floss Machine With Cart (NEC=03C/NEC-04C)', 'electric-candy-floss-machine-with-cart-nec03cnec-04c-JJS5IL', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 440, 0.00, 350, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Candy Floss Machine With Cart', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(187, 'admin', 1, 'Gas Candy Floss Machine (NEC-03)', 'gas-candy-floss-machine-nec-03-jQSHta', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 315, 0.00, 250, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Candy Floss Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(188, 'admin', 1, 'Gas Candy Floss Machine With Cart (NGC-03C/NGC-04C)', 'gas-candy-floss-machine-with-cart-ngc-03cngc-04c-iYvOTy', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Candy Floss Machine With Cart', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(189, 'admin', 1, 'Gas Candyfloss Machine (NGC-04)', 'gas-candyfloss-machine-ngc-04-tKGsZn', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 315, 0.00, 250, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Candyfloss Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(190, 'admin', 1, 'Chocolate Stove (NW-22(2-PAN))', 'chocolate-stove-nw-222-pan-48f8BU', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"46\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '46', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Chocolate Stove', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(191, 'admin', 1, 'Chocolate Stove (NW-24 (3-PAN))', 'chocolate-stove-nw-24-3-pan-FEAvJD', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"46\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '46', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Chocolate Stove', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(192, 'admin', 1, 'Chocolate Stove (NW-24(4-PAN))', 'chocolate-stove-nw-244-pan-QD3gVA', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"46\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '46', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Chocolate Stove', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(193, 'admin', 1, 'Electric Bain Marie (NB-4)', 'electric-bain-marie-nb-4-B5eqjP', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(194, 'admin', 1, 'Electric Bain Marie (NB-4V)', 'electric-bain-marie-nb-4v-CVcYiP', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(195, 'admin', 1, 'Electric Bain Marie (NB-750)', 'electric-bain-marie-nb-750-X8HMzn', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(196, 'admin', 1, 'Electric Bain Marie (NB-6V)', 'electric-bain-marie-nb-6v-Gal4tu', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(197, 'admin', 1, 'Electric Bain Marie (NB-1080)', 'electric-bain-marie-nb-1080-MpKbE5', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(198, 'admin', 1, 'Electric Bain Marie (NB-2T)', 'electric-bain-marie-nb-2t-iajSVx', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(199, 'admin', 1, 'Electric Bain Marie (NB-904)', 'electric-bain-marie-nb-904-hJqUEj', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(200, 'admin', 1, 'Electric Bain Marie (NB-906)', 'electric-bain-marie-nb-906-Y0Spo5', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(201, 'admin', 1, 'Electric Bain Marie (NB-4TA)', 'electric-bain-marie-nb-4ta-VA7yMU', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(202, 'admin', 1, 'Electric Bain Marie (NB-4TA)', 'electric-bain-marie-nb-4ta-1frzCN', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(203, 'admin', 1, 'Electric Bain Marie (NB-6T)', 'electric-bain-marie-nb-6t-JeYt7F', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(204, 'admin', 1, 'Electric Bain Marie (NBM-100)', 'electric-bain-marie-nbm-100-3dJbGk', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(205, 'admin', 1, 'Electric Bain Marie (NBM-150)', 'electric-bain-marie-nbm-150-RBaMko', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(206, 'admin', 1, 'Electric Bain Marie (NBM-169)', 'electric-bain-marie-nbm-169-cJsBTG', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(207, 'admin', 1, 'Electric Bain Marie (NBM-204)', 'electric-bain-marie-nbm-204-N6h2kl', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(208, 'admin', 1, 'Tabletop Bain Marie (NBM-20-1)', 'tabletop-bain-marie-nbm-20-1-Q7JZZf', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Tabletop Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(209, 'admin', 1, 'Tabletop Bain Marie (NBM-20-2)', 'tabletop-bain-marie-nbm-20-2-e1ibf7', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Tabletop Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(210, 'admin', 1, 'Tabletop Bain Marie (NBM-20-3)', 'tabletop-bain-marie-nbm-20-3-eR1uiG', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Tabletop Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(211, 'admin', 1, 'Tabletop Bain Marie (NBM-22)', 'tabletop-bain-marie-nbm-22-nzlQve', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Tabletop Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(212, 'admin', 1, 'Tabletop Bain Marie (NBM-24)', 'tabletop-bain-marie-nbm-24-20AqlL', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Tabletop Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(213, 'admin', 1, 'Tabletop Bain Marie (NBM-21-1)', 'tabletop-bain-marie-nbm-21-1-02I7mj', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Tabletop Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(214, 'admin', 1, 'Tabletop Bain Marie (NBM-21-2)', 'tabletop-bain-marie-nbm-21-2-DgyHMk', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Tabletop Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(215, 'admin', 1, 'Tabletop Bain Marie (NBM-21-4)', 'tabletop-bain-marie-nbm-21-4-yYaf1E', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Tabletop Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(216, 'admin', 1, 'Tabletop Bain Marie (NBM-21-3)', 'tabletop-bain-marie-nbm-21-3-lhuwjO', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Tabletop Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(217, 'admin', 1, 'Electric Bain Marie (NBM-23)', 'electric-bain-marie-nbm-23-cDirZb', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(218, 'admin', 1, 'Electric Bain Marie (NBM-25)', 'electric-bain-marie-nbm-25-bE7LZw', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Bain Marie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(219, 'admin', 1, 'Electric Smokeless Barbecue Oven (NBO-70)', 'electric-smokeless-barbecue-oven-nbo-70-QqOsm2', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Smokeless Barbecue Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(220, 'admin', 1, 'Electric Smokeless Barbecue Oven (NBO-110)', 'electric-smokeless-barbecue-oven-nbo-110-paFXzy', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Smokeless Barbecue Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(221, 'admin', 1, 'Gas  Smokeless Barbecue Oven (NBQ-6B)', 'gas-smokeless-barbecue-oven-nbq-6b-qUGEsj', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 650, 0.00, 520, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas  Smokeless Barbecue Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(222, 'admin', 1, 'Electric Smokeless Barbecue Oven (NBQ-4B)', 'electric-smokeless-barbecue-oven-nbq-4b-CgjsSW', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Smokeless Barbecue Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(223, 'admin', 1, 'Gas Shawarma (NGS-R3)', 'gas-shawarma-ngs-r3-s1Tf3b', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 725, 0.00, 580, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Shawarma', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(224, 'admin', 1, 'Gas Shawarma (NGS-R5)', 'gas-shawarma-ngs-r5-TJaonp', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 725, 0.00, 580, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Shawarma', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(225, 'admin', 1, 'Gas Shawarma (NGS-R4)', 'gas-shawarma-ngs-r4-r8R4nd', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 725, 0.00, 580, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Shawarma', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(226, 'admin', 1, 'Electric Shawarma (NES-E2)', 'electric-shawarma-nes-e2-96zIWG', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 650, 0.00, 520, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Shawarma', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(227, 'admin', 1, 'Electric Kebab Slicer (NS-100E)', 'electric-kebab-slicer-ns-100e-NjvuuT', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Kebab Slicer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(228, 'admin', 1, 'Electric/Gas Rotisserie (NEJ-266)', 'electricgas-rotisserie-nej-266-eYz5j5', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric/Gas Rotisserie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(229, 'admin', 1, 'Electric/Gas Rotisserie (NGJ-366)', 'electricgas-rotisserie-ngj-366-SKSroA', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric/Gas Rotisserie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(230, 'admin', 1, 'Electric/Gas Rotisserie (NEJ-268)', 'electricgas-rotisserie-nej-268-9J3GCV', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric/Gas Rotisserie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(231, 'admin', 1, 'Electric/Gas Rotisserie (NGJ-368)', 'electricgas-rotisserie-ngj-368-RvqWKk', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric/Gas Rotisserie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(232, 'admin', 1, 'Electric/Gas Shawarma Broiler (NEJ-206)', 'electricgas-shawarma-broiler-nej-206-AIXFgO', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 775, 0.00, 620, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric/Gas Shawarma Broiler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(233, 'admin', 1, 'Electric/Gas Shawarma Broiler (NGJ-306)', 'electricgas-shawarma-broiler-ngj-306-elU5oj', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 775, 0.00, 620, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric/Gas Shawarma Broiler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(234, 'admin', 1, 'Electric Rostisseri (NEJ-201(SINGLE LAYER)', 'electric-rostisseri-nej-201single-layer-Ub9m67', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 725, 0.00, 580, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Rostisseri', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(235, 'admin', 1, 'Electric Rostisseri (NEJ-202(DOUBLE LAYER))', 'electric-rostisseri-nej-202double-layer-Ur9bek', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 725, 0.00, 580, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Rostisseri', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(236, 'admin', 1, 'Electric Rostisseri (NGJ-6P)', 'electric-rostisseri-ngj-6p-i3iVBV', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 725, 0.00, 580, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Rostisseri', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(237, 'admin', 1, 'Rotisserie (3-ROD) (NGJ-3P)', 'rotisserie-3-rod-ngj-3p-r04xcl', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 815, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Rotisserie (3-Rod)', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(238, 'admin', 1, 'Rotisserie (NEJ-9P)', 'rotisserie-nej-9p-Ho6e3d', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 815, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Rotisserie', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(239, 'admin', 1, 'Hanging Salamander (NES-937)', 'hanging-salamander-nes-937-iZllzM', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Hanging Salamander', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(240, 'admin', 1, 'Hanging Salamander (NES-938)', 'hanging-salamander-nes-938-dHPFjo', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Hanging Salamander', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(241, 'admin', 1, 'Hanging Salamander (NES-936)', 'hanging-salamander-nes-936-ohjnYF', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Hanging Salamander', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(242, 'admin', 1, 'Electric Lift Salamander (NES-450)', 'electric-lift-salamander-nes-450-GThP0a', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 775, 0.00, 620, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Lift Salamander', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(243, 'admin', 1, 'Electric Lift Salamander (NES-600)', 'electric-lift-salamander-nes-600-8RVo4A', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 775, 0.00, 620, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Lift Salamander', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(244, 'admin', 1, 'Gas Infrared Salamander (NGS-14)', 'gas-infrared-salamander-ngs-14-IPJr60', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 690, 0.00, 550, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Infrared Salamander', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(245, 'admin', 1, 'Gas Infrared Salamander (NGS-16)', 'gas-infrared-salamander-ngs-16-2M3bH4', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 690, 0.00, 550, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Infrared Salamander', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(246, 'admin', 1, 'Gas Char Grill (NGL-82)', 'gas-char-grill-ngl-82-ryVwwH', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Char Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(247, 'admin', 1, 'Gas Char Grill (NGL-84)', 'gas-char-grill-ngl-84-ySpT6R', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Char Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(248, 'admin', 1, 'Gas Char Grill (NGL-86)', 'gas-char-grill-ngl-86-vrx0KZ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Char Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(249, 'admin', 1, 'Gas Char Grill (NGL88)', 'gas-char-grill-ngl88-5pBYq2', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Char Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(250, 'admin', 1, 'Electric Lava Rock Grill (NEL-928)', 'electric-lava-rock-grill-nel-928-Qb2pTJ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 725, 0.00, 580, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Lava Rock Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(251, 'admin', 1, 'Gas Lava Rock Grill (NGL-978)', 'gas-lava-rock-grill-ngl-978-S9fVrm', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 775, 0.00, 620, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Lava Rock Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(252, 'admin', 1, 'Gas Lava Rock Grill (NGL-741)', 'gas-lava-rock-grill-ngl-741-uclsSP', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 775, 0.00, 620, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Lava Rock Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(253, 'admin', 1, 'Electric Lava Rock Grill (NEL-841)', 'electric-lava-rock-grill-nel-841-2UQdgR', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 725, 0.00, 580, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Lava Rock Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(254, 'admin', 1, 'Electric Pizza Oven (1 LAYER) (NEP-1)', 'electric-pizza-oven-1-layer-nep-1-klMYYX', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 900, 0.00, 720, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Pizza Oven (1 Layer)', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(255, 'admin', 1, 'Electric /Gas Pizza Oven (2-LAYER) (NEP-2)', 'electric-gas-pizza-oven-2-layer-nep-2-harVoV', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1190, 0.00, 950, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric /Gas Pizza Oven (2-Layer)', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(256, 'admin', 1, 'Electric Pizza Oven (NEP-01-1)', 'electric-pizza-oven-nep-01-1-7tSYdY', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 900, 0.00, 720, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Pizza Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(257, 'admin', 1, 'Electric Pizza Oven (NEP-2PR)', 'electric-pizza-oven-nep-2pr-nMYVtV', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 900, 0.00, 720, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Pizza Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(258, 'admin', 1, 'Electric/Gas Conveyor Pizza Oven (NEP-12)', 'electricgas-conveyor-pizza-oven-nep-12-pPABAr', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 2750, 0.00, 2200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric/Gas Conveyor Pizza Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(259, 'admin', 1, 'Electric/Gas Conveyor Pizza Oven (NEP-18)', 'electricgas-conveyor-pizza-oven-nep-18-v6ShrN', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 2750, 0.00, 2200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric/Gas Conveyor Pizza Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(260, 'admin', 1, 'Electric/Gas Conveyor Pizza Oven (NGP-18)', 'electricgas-conveyor-pizza-oven-ngp-18-NespCA', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 2750, 0.00, 2200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric/Gas Conveyor Pizza Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(261, 'admin', 1, 'Electric/Gas Conveyor Pizza Oven (NEP-32)', 'electricgas-conveyor-pizza-oven-nep-32-T5rSPt', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 2750, 0.00, 2200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric/Gas Conveyor Pizza Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(262, 'admin', 1, 'Electric/Gas Conveyor Pizza Oven (NGP-32)', 'electricgas-conveyor-pizza-oven-ngp-32-N7yS3k', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 2750, 0.00, 2200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric/Gas Conveyor Pizza Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(263, 'admin', 1, 'Electric Pizza Oven (NEP-1ST)', 'electric-pizza-oven-nep-1st-9LI9FW', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 900, 0.00, 720, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Pizza Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(264, 'admin', 1, 'Electric Pizza Oven (NEP-2ST)', 'electric-pizza-oven-nep-2st-PvRD7O', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 900, 0.00, 720, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Pizza Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(265, 'admin', 1, 'Electric Oven (NEO-12)', 'electric-oven-neo-12-GI7xG1', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(266, 'admin', 1, 'Electric Oven (NE0-13)', 'electric-oven-ne0-13-G4RKsq', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(267, 'admin', 1, 'Electric Oven (NEO-22)', 'electric-oven-neo-22-P4FqdR', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(268, 'admin', 1, 'Electric Oven (NEO-24)', 'electric-oven-neo-24-N5cppm', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(269, 'admin', 1, 'Electric Oven (NEO-26)', 'electric-oven-neo-26-PL8wNY', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(270, 'admin', 1, 'Electric Oven (NEO-36)', 'electric-oven-neo-36-CaKWZN', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0);
INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `images`, `color_image`, `thumbnail`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `published`, `unit_price`, `installation_fee`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`, `material`, `capacity`, `power_type`, `dimensions`, `stock_status`, `commercial_solution`) VALUES
(271, 'admin', 1, 'Electric Oven (NEO-39)', 'electric-oven-neo-39-A8c9gm', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(272, 'admin', 1, 'Gas Deck Oven (NGO-24)', 'gas-deck-oven-ngo-24-FnpUqa', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1375, 0.00, 1100, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Deck Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(273, 'admin', 1, 'Gas Deck Oven (NGO-26)', 'gas-deck-oven-ngo-26-6UY1Qs', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1375, 0.00, 1100, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Deck Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(274, 'admin', 1, 'Gas Deck Oven (NGO-11)', 'gas-deck-oven-ngo-11-SX3137', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1375, 0.00, 1100, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Deck Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(275, 'admin', 1, 'Gas Deck Oven (NGO-12)', 'gas-deck-oven-ngo-12-DhD4sE', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1375, 0.00, 1100, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Deck Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(276, 'admin', 1, 'Gas Deck Oven (NGO-13)', 'gas-deck-oven-ngo-13-xL9z35', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1375, 0.00, 1100, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Deck Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(277, 'admin', 1, 'Gas Deck Oven (NGO-36)', 'gas-deck-oven-ngo-36-jI2rkc', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1375, 0.00, 1100, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Deck Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(278, 'admin', 1, 'Gas Deck Oven (NG0-39)', 'gas-deck-oven-ng0-39-9o30zP', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1375, 0.00, 1100, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Deck Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(279, 'admin', 1, 'Electric Convection Oven (NE0-4F)', 'electric-convection-oven-ne0-4f-66S6pX', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1690, 0.00, 1350, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Convection Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(280, 'admin', 1, 'Electric Convection Oven (NEO-07)', 'electric-convection-oven-neo-07-BOhqG5', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1690, 0.00, 1350, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Convection Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(281, 'admin', 1, 'Electric Convection Oven (NEO-8F)', 'electric-convection-oven-neo-8f-FhefsE', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1690, 0.00, 1350, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Convection Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(282, 'admin', 1, 'Electric Convection Oven (NEO-08)', 'electric-convection-oven-neo-08-etmyFY', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1690, 0.00, 1350, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Convection Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(283, 'admin', 1, 'Electric Convection Oven (NEA-3)', 'electric-convection-oven-nea-3-K9JpZ3', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1690, 0.00, 1350, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Convection Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(284, 'admin', 1, 'Electric Convection Oven (NEA-8)', 'electric-convection-oven-nea-8-oWvjtB', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1690, 0.00, 1350, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Convection Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(285, 'admin', 1, 'Electric Convection Oven (NEA-16)', 'electric-convection-oven-nea-16-x5QH6j', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1690, 0.00, 1350, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Convection Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(286, 'admin', 1, 'Electric Convection Oven (NEA-5)', 'electric-convection-oven-nea-5-Vv1biI', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1690, 0.00, 1350, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Convection Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(287, 'admin', 1, 'Electric Convection Oven (NEA-12)', 'electric-convection-oven-nea-12-jJTsmE', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1690, 0.00, 1350, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Convection Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(288, 'admin', 1, 'Gas Convection Oven (NGA-5)', 'gas-convection-oven-nga-5-QDrpi3', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1815, 0.00, 1450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Convection Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(289, 'admin', 1, 'Gas Convection Oven (NGA-12)', 'gas-convection-oven-nga-12-amPAYC', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1815, 0.00, 1450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Convection Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(290, 'admin', 1, 'Gas Convection Oven (NGA-8)', 'gas-convection-oven-nga-8-nKyBUR', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1815, 0.00, 1450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Convection Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(291, 'admin', 1, 'Gas Convection Oven (NGA-16)', 'gas-convection-oven-nga-16-oeEWPm', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1815, 0.00, 1450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Convection Oven', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(292, 'admin', 1, 'Electric Prover (FJ-13 (201))', 'electric-prover-fj-13-201-riljqJ', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 975, 0.00, 780, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Prover', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(293, 'admin', 1, 'Electric Prover (FJ-16 (201))', 'electric-prover-fj-16-201-jT8CCs', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 975, 0.00, 780, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Prover', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(294, 'admin', 1, 'Electric Prover (FJ-26 (201))', 'electric-prover-fj-26-201-UCXjHb', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 975, 0.00, 780, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Prover', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(295, 'admin', 1, 'Electric Prover (FJ-32 (201))', 'electric-prover-fj-32-201-6NpPhJ', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 975, 0.00, 780, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Prover', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(296, 'admin', 1, 'Gas Stove (NGS-1)', 'gas-stove-ngs-1-HDVuU8', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Stove', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(297, 'admin', 1, 'Gas Stove (NGS-2)', 'gas-stove-ngs-2-FFEKqZ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Stove', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(298, 'admin', 1, 'Gas Stove (NGS-4)', 'gas-stove-ngs-4-jBzOHg', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Stove', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(299, 'admin', 1, 'Gas Stove (NGS-61)', 'gas-stove-ngs-61-rLueSC', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Stove', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(300, 'admin', 1, 'Hot Dog Grill (NHD-05(5-ROLLER))', 'hot-dog-grill-nhd-055-roller-Ellntb', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Hot Dog Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(301, 'admin', 1, 'Hot Dog Grill (NHD-07(7-ROLLER))', 'hot-dog-grill-nhd-077-roller-gFicHS', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Hot Dog Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(302, 'admin', 1, 'Hot Dog Grill (NHD-09(9-ROLLER))', 'hot-dog-grill-nhd-099-roller-9yN6mN', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Hot Dog Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(303, 'admin', 1, 'Electric Hot Dog Steamer (NHD-03)', 'electric-hot-dog-steamer-nhd-03-EKkHD4', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Hot Dog Steamer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(304, 'admin', 1, 'Electric Hot Dog Steamer (NHD-04)', 'electric-hot-dog-steamer-nhd-04-I2pwKY', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Hot Dog Steamer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(305, 'admin', 1, '9-Roller Hot Dog G & Food Warmer (NHD-09A)', '9-roller-hot-dog-g-food-warmer-nhd-09a-2FSbtE', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, '9-Roller Hot Dog G & Food Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(306, 'admin', 1, '11-Roller Hot Dog G & Food Warmer (NHDW-11A)', '11-roller-hot-dog-g-food-warmer-nhdw-11a-4oz1g0', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, '11-Roller Hot Dog G & Food Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(307, 'admin', 1, '4-Slice Toaster (NET-4)', '4-slice-toaster-net-4-h4H7pZ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 120, 0.00, 95, '0', NULL, 'exclude', '0', 'percent', 20, 1, '4-Slice Toaster', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(308, 'admin', 1, 'Electric Conveyor Toaster (NET-150)', 'electric-conveyor-toaster-net-150-3xruDa', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Conveyor Toaster', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(309, 'admin', 1, 'Electric Conveyor Toaster (NET-300)', 'electric-conveyor-toaster-net-300-Ml4r61', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Conveyor Toaster', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(310, 'admin', 1, 'Electric Conveyor Toaster (NET-450)', 'electric-conveyor-toaster-net-450-0E378p', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Conveyor Toaster', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(311, 'admin', 1, '6-Slice Toaster (NET-6)', '6-slice-toaster-net-6-3TpF8n', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 150, 0.00, 120, '0', NULL, 'exclude', '0', 'percent', 20, 1, '6-Slice Toaster', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(312, 'admin', 1, '9-Slice Toaster (NT-01)', '9-slice-toaster-nt-01-0bC4Ed', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 190, 0.00, 150, '0', NULL, 'exclude', '0', 'percent', 20, 1, '9-Slice Toaster', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(313, 'admin', 1, 'Electric 1-Plate Crepe Maker (NCM-1)', 'electric-1-plate-crepe-maker-ncm-1-uDfU9Z', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric 1-Plate Crepe Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(314, 'admin', 1, 'Electic Crepe Maker (NCM-400)', 'electic-crepe-maker-ncm-400-aoJsqs', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electic Crepe Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(315, 'admin', 1, 'Gas 1-Plate Crepe Maker (NCM-1G)', 'gas-1-plate-crepe-maker-ncm-1g-LeehhG', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 250, 0.00, 200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas 1-Plate Crepe Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(316, 'admin', 1, 'Electric 2-Plate Crepe Maker (NCM-2)', 'electric-2-plate-crepe-maker-ncm-2-dDuY6H', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric 2-Plate Crepe Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(317, 'admin', 1, 'Gas Crepe Maker (NCM-400G)', 'gas-crepe-maker-ncm-400g-7R87aP', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Crepe Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(318, 'admin', 1, 'Gas2-Plate Crepe Maker (NCM-2G)', 'gas2-plate-crepe-maker-ncm-2g-YJdkfp', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 315, 0.00, 250, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas2-Plate Crepe Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(319, 'admin', 1, 'Electric Contact Grill (NEG-811)', 'electric-contact-grill-neg-811-YEK9dN', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Contact Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(320, 'admin', 1, 'Electric Contact Grill (NEG-811E)', 'electric-contact-grill-neg-811e-l88IRm', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Contact Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(321, 'admin', 1, 'Electric Contact Grill (NEG-811A)', 'electric-contact-grill-neg-811a-XBHaD8', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Contact Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(322, 'admin', 1, 'Electric Contact Grill (NEG-811EA)', 'electric-contact-grill-neg-811ea-1v0V7R', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Contact Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(323, 'admin', 1, 'Electric Contact Grill (NEG-813A)', 'electric-contact-grill-neg-813a-juebVo', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Contact Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(324, 'admin', 1, 'Electric Contact Grill (NEG-813EA)', 'electric-contact-grill-neg-813ea-RXT88w', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Contact Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(325, 'admin', 1, 'Single Electric Contact Grill (FULL FLAT) (NEG-811B)', 'single-electric-contact-grill-full-flat-neg-811b-xppexJ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 940, 0.00, 750, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Single Electric Contact Grill (Full Flat)', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(326, 'admin', 1, 'Single Electric Contact Grill (FULL FLAT) (NEG-811EB)', 'single-electric-contact-grill-full-flat-neg-811eb-al051g', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 940, 0.00, 750, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Single Electric Contact Grill (Full Flat)', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(327, 'admin', 1, 'Double Electric Contact Grill (FULL FLAT) (NEG-813B(FULL FLAT))', 'double-electric-contact-grill-full-flat-neg-813bfull-flat-e8rP4k', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 940, 0.00, 750, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Double Electric Contact Grill (Full Flat)', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(328, 'admin', 1, 'Double Electric Contact Grill (FULL FLAT) (NEG-811EB(FULL FLAT))', 'double-electric-contact-grill-full-flat-neg-811ebfull-flat-dNKFtH', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 940, 0.00, 750, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Double Electric Contact Grill (Full Flat)', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(329, 'admin', 1, '1- Plate Waffle Baker (NWB-1)', '1-plate-waffle-baker-nwb-1-L4yvku', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 190, 0.00, 150, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1- Plate Waffle Baker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(330, 'admin', 1, '1-Plate Cone Baker (NCB-1)', '1-plate-cone-baker-ncb-1-yVbDyT', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 190, 0.00, 150, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Plate Cone Baker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(331, 'admin', 1, '2-Plate Waffle Baker (NWB-2)', '2-plate-waffle-baker-nwb-2-digPXs', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Plate Waffle Baker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(332, 'admin', 1, '2-Plate Cone Baker (NCB-2)', '2-plate-cone-baker-ncb-2-AHv8A4', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Plate Cone Baker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(333, 'admin', 1, '1-Plate Waffle Baker (NWB-1S)', '1-plate-waffle-baker-nwb-1s-Roxwlq', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 190, 0.00, 150, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Plate Waffle Baker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(334, 'admin', 1, '2-Plate Waffle Baker (NWB-2S)', '2-plate-waffle-baker-nwb-2s-scbZyw', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Plate Waffle Baker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(335, 'admin', 1, 'Electric Waffle Baker (NWB-3B)', 'electric-waffle-baker-nwb-3b-UZNCLL', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 250, 0.00, 200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Waffle Baker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(336, 'admin', 1, '2-Plate Rotate Waffle Baker (NR-6)', '2-plate-rotate-waffle-baker-nr-6-LX63eA', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Plate Rotate Waffle Baker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(337, 'admin', 1, 'Electric Donut Maker (NT-4T)', 'electric-donut-maker-nt-4t-OeuOon', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 440, 0.00, 350, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Donut Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(338, 'admin', 1, '5 Sticks Waffle Stick Maker (NX-117)', '5-sticks-waffle-stick-maker-nx-117-OYsFTd', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, '5 Sticks Waffle Stick Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(339, 'admin', 1, 'Lolly Waffle Maker (NX-2208)', 'lolly-waffle-maker-nx-2208-LKOMpR', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 200, 0.00, 160, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Lolly Waffle Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(340, 'admin', 1, '6 Sticks Waffle Stick Maker (NX-119)', '6-sticks-waffle-stick-maker-nx-119-lYpvHZ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 250, 0.00, 200, '0', NULL, 'exclude', '0', 'percent', 20, 1, '6 Sticks Waffle Stick Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(341, 'admin', 1, 'Corn Hot Dog Waffle Maker (NX-216)', 'corn-hot-dog-waffle-maker-nx-216-ayGQSh', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Corn Hot Dog Waffle Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(342, 'admin', 1, 'Korean Mini Taiyaki Maker (NX-112)', 'korean-mini-taiyaki-maker-nx-112-Xj1ixN', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 200, 0.00, 160, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Korean Mini Taiyaki Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(343, 'admin', 1, 'Lolly Waffle Maler (NX-116)', 'lolly-waffle-maler-nx-116-Fr2l0O', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 200, 0.00, 160, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Lolly Waffle Maler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(344, 'admin', 1, 'Six Corn Waffle Maker (NX-111)', 'six-corn-waffle-maker-nx-111-ZxyQfe', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Six Corn Waffle Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(345, 'admin', 1, 'Six Corn Waffle Maker (NDM-6)', 'six-corn-waffle-maker-ndm-6-H4xM2U', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Six Corn Waffle Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(346, 'admin', 1, 'Five Corn Waffle Maker (NX-229)', 'five-corn-waffle-maker-nx-229-Jh1ucB', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 200, 0.00, 160, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Five Corn Waffle Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(347, 'admin', 1, 'Sunflower Machine (NX-213)', 'sunflower-machine-nx-213-YOyCT0', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sunflower Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(348, 'admin', 1, 'Six Corn Waffle Maker (NX-111)', 'six-corn-waffle-maker-nx-111-VprGWo', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Six Corn Waffle Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(349, 'admin', 1, 'Lolly Waffle Maker (NX-214)', 'lolly-waffle-maker-nx-214-FbIJhB', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 200, 0.00, 160, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Lolly Waffle Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(350, 'admin', 1, 'Donut Maker (NDM-5)', 'donut-maker-ndm-5-BlNwFC', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Donut Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(351, 'admin', 1, 'Crispy Machine (NP-542)', 'crispy-machine-np-542-n03mw5', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Crispy Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(352, 'admin', 1, '1-Head Gas Fishball Grill (NX-34R)', '1-head-gas-fishball-grill-nx-34r-q7mG1i', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, '1-Head Gas Fishball Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(353, 'admin', 1, '3-Head Gas Fishball Grill (NX-65R)', '3-head-gas-fishball-grill-nx-65r-aVuifP', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, '3-Head Gas Fishball Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(354, 'admin', 1, 'Crispy Machine (NP-544)', 'crispy-machine-np-544-HMbxoD', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Crispy Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(355, 'admin', 1, '2-Head Gas Fishball Grill (NX-56R)', '2-head-gas-fishball-grill-nx-56r-0PyeYH', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, '2-Head Gas Fishball Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(356, 'admin', 1, '3-Head Electric Fishball Grill (NX-65)', '3-head-electric-fishball-grill-nx-65-ZqYNoE', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, '3-Head Electric Fishball Grill', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(357, 'admin', 1, 'Food Mixer (B10B)', 'food-mixer-b10b-h2n7Gu', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(358, 'admin', 1, 'Food Mixer (B15B)', 'food-mixer-b15b-M7vmVQ', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(359, 'admin', 1, 'Food Mixer (B20B)', 'food-mixer-b20b-zmAEVS', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(360, 'admin', 1, 'Food Mixer (B30B)', 'food-mixer-b30b-s08BYz', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(361, 'admin', 1, 'Food Mixer (B25F)', 'food-mixer-b25f-xSLUhz', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(362, 'admin', 1, 'Food Mixer (B40F)', 'food-mixer-b40f-fcw6th', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0);
INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `images`, `color_image`, `thumbnail`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `published`, `unit_price`, `installation_fee`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`, `material`, `capacity`, `power_type`, `dimensions`, `stock_status`, `commercial_solution`) VALUES
(363, 'admin', 1, 'Food Mixer (B50F)', 'food-mixer-b50f-8oXWmm', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(364, 'admin', 1, 'Food Mixer (B80F)', 'food-mixer-b80f-KSO79Z', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(365, 'admin', 1, 'Food Mixer (B10S)', 'food-mixer-b10s-o3DvQ6', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(366, 'admin', 1, 'Food Mixer (B15S)', 'food-mixer-b15s-Eo8WfG', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(367, 'admin', 1, 'Food Mixer (B20S)', 'food-mixer-b20s-EOELu1', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(368, 'admin', 1, 'Food Mixer (B30S)', 'food-mixer-b30s-G3ly3U', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(369, 'admin', 1, 'Food Mixer (B25S)', 'food-mixer-b25s-YEwxe7', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(370, 'admin', 1, 'Food Mixer (B40S)', 'food-mixer-b40s-GL7Lix', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(371, 'admin', 1, 'Food Mixer (B50S)', 'food-mixer-b50s-oGGZxA', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(372, 'admin', 1, 'Food Mixer (B60S)', 'food-mixer-b60s-sQuKMt', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(373, 'admin', 1, 'Food Mixer (B10K)', 'food-mixer-b10k-wEDPiP', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(374, 'admin', 1, 'Food Mixer (B15K)', 'food-mixer-b15k-RYw3kN', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(375, 'admin', 1, 'Food Mixer (B20K)', 'food-mixer-b20k-vDjLuJ', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(376, 'admin', 1, 'Food Mixer (B30K)', 'food-mixer-b30k-Hf7gJ2', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(377, 'admin', 1, 'Food Mixer (B40K)', 'food-mixer-b40k-ofgi10', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(378, 'admin', 1, 'Food Mixer (B20GS)', 'food-mixer-b20gs-97PXym', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(379, 'admin', 1, 'Food Mixer (B20AS)', 'food-mixer-b20as-j9Hq0G', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(380, 'admin', 1, 'Food Mixer (B30AS)', 'food-mixer-b30as-Do28yg', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(381, 'admin', 1, 'Food Mixer (B50AS)', 'food-mixer-b50as-htys6X', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"13\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '13', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Food Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(382, 'admin', 1, 'Spiral Mixer (HD20S)', 'spiral-mixer-hd20s-Ru8UTL', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"21\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '21', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Spiral Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(383, 'admin', 1, 'Spiral Mixer (HD30S)', 'spiral-mixer-hd30s-Tt4ETN', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"21\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '21', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Spiral Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(384, 'admin', 1, 'Spiral Mixer (HD20D)', 'spiral-mixer-hd20d-Sfncci', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"21\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '21', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Spiral Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(385, 'admin', 1, 'Spiral Mixer (HD30D)', 'spiral-mixer-hd30d-W8UZqo', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"21\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '21', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Spiral Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(386, 'admin', 1, 'Spiral Mixer (H20)', 'spiral-mixer-h20-PHZJvO', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"21\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '21', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Spiral Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(387, 'admin', 1, 'Spiral Mixer (H39)', 'spiral-mixer-h39-y4nE5p', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"21\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '21', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Spiral Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(388, 'admin', 1, 'Spiral Mixer (H40)', 'spiral-mixer-h40-Bz6m2P', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"21\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '21', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Spiral Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(389, 'admin', 1, 'Spiral Mixer (H50)', 'spiral-mixer-h50-jH02zR', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"21\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '21', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Spiral Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(390, 'admin', 1, 'Spiral Mixer (H60)', 'spiral-mixer-h60-RZtlL3', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"21\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '21', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Spiral Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(391, 'admin', 1, 'Spiral Mixer (H80)', 'spiral-mixer-h80-IDorgd', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"21\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '21', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Spiral Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(392, 'admin', 1, 'Spiral Mixer (H100)', 'spiral-mixer-h100-klhFjh', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"21\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '21', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Spiral Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(393, 'admin', 1, 'Spiral Mixer (H130)', 'spiral-mixer-h130-2n1xzf', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"21\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '21', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Spiral Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(394, 'admin', 1, 'Spiral Mixer (H200)', 'spiral-mixer-h200-RA0wm9', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"21\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '21', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Spiral Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(395, 'admin', 1, 'Spiral Mixer (H260)', 'spiral-mixer-h260-5J7dR8', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"21\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '21', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Spiral Mixer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(396, 'admin', 1, 'Noodle Machine (HNM-160)', 'noodle-machine-hnm-160-MkQZ36', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Noodle Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(397, 'admin', 1, 'Noodle Machine (HNM-180)', 'noodle-machine-hnm-180-RD8v02', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Noodle Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(398, 'admin', 1, 'Noodle Machine (HNM-200)', 'noodle-machine-hnm-200-lASnYE', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Noodle Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(399, 'admin', 1, 'Noodle Machine (HNM-220)', 'noodle-machine-hnm-220-hngUSN', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Noodle Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(400, 'admin', 1, 'Noodle Machine (HNM-240)', 'noodle-machine-hnm-240-gYDl01', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Noodle Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(401, 'admin', 1, 'Noodle Machine (HNM-160S)', 'noodle-machine-hnm-160s-YzNRX9', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Noodle Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(402, 'admin', 1, 'Noodle Machine (HNM-180S)', 'noodle-machine-hnm-180s-oTAepa', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Noodle Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(403, 'admin', 1, 'Noodle Machine (HNM200S)', 'noodle-machine-hnm200s-OqLWhO', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Noodle Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(404, 'admin', 1, 'Noodle Machine (HNM-220S)', 'noodle-machine-hnm-220s-h72GdJ', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Noodle Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(405, 'admin', 1, 'Noodle Machine (HNM-240S)', 'noodle-machine-hnm-240s-PbPgwl', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Noodle Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(406, 'admin', 1, 'Dough Sheetter (E520)', 'dough-sheetter-e520-5vRgHt', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Dough Sheetter', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(407, 'admin', 1, 'Dough Sheetter (E520L)', 'dough-sheetter-e520l-J4ltMy', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Dough Sheetter', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(408, 'admin', 1, 'Dough Sheetter (E60)', 'dough-sheetter-e60-f0mr6e', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Dough Sheetter', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(409, 'admin', 1, 'Dough Sheetter (E680)', 'dough-sheetter-e680-4CqIIF', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Dough Sheetter', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(410, 'admin', 1, 'Dough Sheetter (E520)', 'dough-sheetter-e520-ukMpLV', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Dough Sheetter', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(411, 'admin', 1, 'Dough Sheetter (E520L)', 'dough-sheetter-e520l-nL09K0', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Dough Sheetter', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(412, 'admin', 1, 'Dough Sheetter (E630)', 'dough-sheetter-e630-LoQwV4', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Dough Sheetter', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(413, 'admin', 1, 'Dough Sheetter (E680)', 'dough-sheetter-e680-g86I1k', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Dough Sheetter', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(414, 'admin', 1, 'Dough Sheetter (TPS380A)', 'dough-sheetter-tps380a-bAhhWC', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Dough Sheetter', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(415, 'admin', 1, 'Dough Sheetter (TPS450A)', 'dough-sheetter-tps450a-agSxag', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Dough Sheetter', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(416, 'admin', 1, 'Dough Sheetter (TPS520A)', 'dough-sheetter-tps520a-QxUs9o', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Dough Sheetter', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(417, 'admin', 1, 'Tornado Potato Cutter (LSP520)', 'tornado-potato-cutter-lsp520-QphiwK', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"32\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '32', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Tornado Potato Cutter', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(418, 'admin', 1, 'Tornado Potato Cutter (LSP650)', 'tornado-potato-cutter-lsp650-Ov05al', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"32\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '32', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Tornado Potato Cutter', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(419, 'admin', 1, 'Pizza Dough Sheeter (APD30 (AUTOMATIC))', 'pizza-dough-sheeter-apd30-automatic-nlQFU7', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 975, 0.00, 780, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Pizza Dough Sheeter', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(420, 'admin', 1, 'Pizza Dough Sheeter (APD40(SEMI-AUTOMATIC))', 'pizza-dough-sheeter-apd40semi-automatic-DH3231', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 975, 0.00, 780, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Pizza Dough Sheeter', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(421, 'admin', 1, 'Bread Slicer (TR-31)', 'bread-slicer-tr-31-YXY9Eq', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 725, 0.00, 580, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Bread Slicer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(422, 'admin', 1, 'Bread Slicer (TR-31A)', 'bread-slicer-tr-31a-UZkqSp', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 725, 0.00, 580, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Bread Slicer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(423, 'admin', 1, 'Semi-Auto Rounder & Divider (FK-30)', 'semi-auto-rounder-divider-fk-30-uBft58', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1190, 0.00, 950, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Semi-Auto Rounder & Divider', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(424, 'admin', 1, 'Fully Rounder & Divider (FK-30A)', 'fully-rounder-divider-fk-30a-e8jS6r', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Fully Rounder & Divider', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(425, 'admin', 1, 'Dough Divider (DD36)', 'dough-divider-dd36-Wwu2FJ', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 975, 0.00, 780, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Dough Divider', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(426, 'admin', 1, 'Bread Slicer (YB-36)', 'bread-slicer-yb-36-LryqSe', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 725, 0.00, 580, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Bread Slicer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(427, 'admin', 1, 'Dough Moulder (CG-38)', 'dough-moulder-cg-38-Qpy5MQ', 'physical', '[{\"id\":\"20\",\"position\":1},{\"id\":\"22\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '20', '22', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Dough Moulder', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(428, 'admin', 1, 'Meat Mincer (TC-42)', 'meat-mincer-tc-42-dbk1T2', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Mincer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(429, 'admin', 1, 'Meat Mincer (TC-52)', 'meat-mincer-tc-52-rp2Oz3', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Mincer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(430, 'admin', 1, 'Meat Mincer (TC-12)', 'meat-mincer-tc-12-s1E0HB', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Mincer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(431, 'admin', 1, 'Meat Mincer (TC-22)', 'meat-mincer-tc-22-jxhKZe', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Mincer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(432, 'admin', 1, 'Meat Mincer (TC-32)', 'meat-mincer-tc-32-9YjyZw', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Mincer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(433, 'admin', 1, 'Meat Mincer (TT-12)', 'meat-mincer-tt-12-SmmpZ1', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Mincer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(434, 'admin', 1, 'Meat Mincer (TT-22)', 'meat-mincer-tt-22-rqcfWs', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Mincer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(435, 'admin', 1, 'Meat Mincer (TT-32)', 'meat-mincer-tt-32-jdOdsA', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Mincer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(436, 'admin', 1, 'Meat Mincer (TT-8)', 'meat-mincer-tt-8-rg2Xrl', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Mincer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(437, 'admin', 1, 'Meat Mincer (HX128B)', 'meat-mincer-hx128b-l7cZlF', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Mincer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(438, 'admin', 1, 'Meat Mincer (HX128S)', 'meat-mincer-hx128s-dIRUlC', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Mincer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(439, 'admin', 1, 'Meat Mincer (HX228B)', 'meat-mincer-hx228b-POihfH', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Mincer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(440, 'admin', 1, 'Meat Mincer (HX228S)', 'meat-mincer-hx228s-AlYqDb', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Mincer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(441, 'admin', 1, 'Meat Mincer (MG12MGD)', 'meat-mincer-mg12mgd-hFd63Y', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Mincer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(442, 'admin', 1, 'Meat Mincer (MG22MGD)', 'meat-mincer-mg22mgd-ROOn7R', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Mincer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(443, 'admin', 1, 'Meat Mincer (MG32MGD)', 'meat-mincer-mg32mgd-kGemFq', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Mincer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(444, 'admin', 1, 'Meat Mincer (CG55SH)', 'meat-mincer-cg55sh-WcHAh6', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Mincer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(445, 'admin', 1, 'Meat Mincer (CG22DM)', 'meat-mincer-cg22dm-VgpTZb', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Mincer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(446, 'admin', 1, 'Meat Slicer (300ES-F)', 'meat-slicer-300es-f-qEsW6X', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 650, 0.00, 520, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Slicer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(447, 'admin', 1, 'Meat Slicer (300ES-A)', 'meat-slicer-300es-a-dxNzsI', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 650, 0.00, 520, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Slicer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(448, 'admin', 1, 'Meat Slicer (220ES-8)', 'meat-slicer-220es-8-37UGjL', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 650, 0.00, 520, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Slicer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(449, 'admin', 1, 'Meat Slicer (250ES-10)', 'meat-slicer-250es-10-HDseq9', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 650, 0.00, 520, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Slicer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(450, 'admin', 1, 'Meat Slicer (300ES-12)', 'meat-slicer-300es-12-ALwNax', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 650, 0.00, 520, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Slicer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(451, 'admin', 1, 'Bone Saw (J-210)', 'bone-saw-j-210-ApwjAu', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Bone Saw', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(452, 'admin', 1, 'Bone Saw (J-210S)', 'bone-saw-j-210s-YUZyrO', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Bone Saw', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(453, 'admin', 1, 'Bone Saw (J-310)', 'bone-saw-j-310-5ANf8F', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Bone Saw', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(454, 'admin', 1, 'Bone Saw (J-210A)', 'bone-saw-j-210a-yOhm3t', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Bone Saw', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(455, 'admin', 1, 'Bone Saw (J-210AC)', 'bone-saw-j-210ac-AvpzmV', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Bone Saw', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(456, 'admin', 1, 'Bone Saw (J-250A)', 'bone-saw-j-250a-blKKmS', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Bone Saw', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(457, 'admin', 1, 'Sausage Filler (TV-3L)', 'sausage-filler-tv-3l-iUtc9n', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sausage Filler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(458, 'admin', 1, 'Sausage Filler (TV-5L)', 'sausage-filler-tv-5l-BNVkjt', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sausage Filler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0);
INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `images`, `color_image`, `thumbnail`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `published`, `unit_price`, `installation_fee`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`, `material`, `capacity`, `power_type`, `dimensions`, `stock_status`, `commercial_solution`) VALUES
(459, 'admin', 1, 'Sausage Filler (TV-7L)', 'sausage-filler-tv-7l-hP1rc0', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sausage Filler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(460, 'admin', 1, 'Sausage Filler (TV-10L)', 'sausage-filler-tv-10l-bemrOc', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sausage Filler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(461, 'admin', 1, 'Sausage Filler (TV-12L)', 'sausage-filler-tv-12l-yzLyAe', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sausage Filler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(462, 'admin', 1, 'Sausage Filler (TV-15L)', 'sausage-filler-tv-15l-B5Rl1d', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sausage Filler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(463, 'admin', 1, 'Sausage Filler (TG-3L)', 'sausage-filler-tg-3l-lj2wZv', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sausage Filler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(464, 'admin', 1, 'Sausage Filler (TG-3L)', 'sausage-filler-tg-3l-aAD11a', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sausage Filler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(465, 'admin', 1, 'Sausage Filler (TG-5L)', 'sausage-filler-tg-5l-Xo71Mm', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sausage Filler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(466, 'admin', 1, 'Sausage Filler (TG-7L)', 'sausage-filler-tg-7l-LAxyr9', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sausage Filler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(467, 'admin', 1, 'Sausage Filler (TV-10LE)', 'sausage-filler-tv-10le-6NJh6i', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sausage Filler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(468, 'admin', 1, 'Sausage Filler (TV-15LE)', 'sausage-filler-tv-15le-6ZxZYX', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sausage Filler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(469, 'admin', 1, 'Sausage Filler (TV-20LE)', 'sausage-filler-tv-20le-ooMzWh', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sausage Filler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(470, 'admin', 1, 'Sausage Filler (TV-25LE)', 'sausage-filler-tv-25le-DIeJ8h', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sausage Filler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(471, 'admin', 1, 'Sausage Filler (TV-30LE)', 'sausage-filler-tv-30le-NnRhtV', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sausage Filler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(472, 'admin', 1, 'Sausage Filler (SF-250)', 'sausage-filler-sf-250-AfPjnn', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sausage Filler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(473, 'admin', 1, 'Sausage Filler (SF-350)', 'sausage-filler-sf-350-xl88aw', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"14\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '14', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 565, 0.00, 450, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Sausage Filler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(474, 'admin', 1, 'Vegetable And Fruit Cutter (HC-01)', 'vegetable-and-fruit-cutter-hc-01-et0pgR', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"23\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '23', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Vegetable And Fruit Cutter', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(475, 'admin', 1, 'Vegetable And Fruit Cutter (HC-02)', 'vegetable-and-fruit-cutter-hc-02-VcTPUV', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"23\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '23', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Vegetable And Fruit Cutter', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(476, 'admin', 1, 'Vegetable And Fruit Cutter (HC-03)', 'vegetable-and-fruit-cutter-hc-03-Itwb6H', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"23\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '23', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Vegetable And Fruit Cutter', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(477, 'admin', 1, 'Cup Dispenser (HCW-3)', 'cup-dispenser-hcw-3-x5q4Ci', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"23\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '23', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 150, 0.00, 120, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Cup Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(478, 'admin', 1, 'Cup Dispenser (HC3-4)', 'cup-dispenser-hc3-4-inrsMd', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"23\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '23', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 150, 0.00, 120, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Cup Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(479, 'admin', 1, 'Chips Dump (HCW-620)', 'chips-dump-hcw-620-e6zO83', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"23\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '23', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 190, 0.00, 150, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Chips Dump', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(480, 'admin', 1, 'Chps Dump (HCW-818)', 'chps-dump-hcw-818-9Blx5F', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"23\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '23', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 190, 0.00, 150, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Chps Dump', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(481, 'admin', 1, 'Cuo Dispenser With Ice Storage (HCS-02-A)', 'cuo-dispenser-with-ice-storage-hcs-02-a-X7bj26', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Cuo Dispenser With Ice Storage', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(482, 'admin', 1, 'Pedesytal Fries Warmer (HCW-833)', 'pedesytal-fries-warmer-hcw-833-u4jbRN', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"23\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '23', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 315, 0.00, 250, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Pedesytal Fries Warmer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(483, 'admin', 1, 'Wrapping Machine (HWM-430)', 'wrapping-machine-hwm-430-xlqfXR', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"23\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '23', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Wrapping Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(484, 'admin', 1, 'Wrapping Machine (HWM-550)', 'wrapping-machine-hwm-550-DQRDDI', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"23\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '23', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Wrapping Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(485, 'admin', 1, 'Hamburger Patty Press (WF-A100)', 'hamburger-patty-press-wf-a100-JkQ9zc', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"23\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '23', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Hamburger Patty Press', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(486, 'admin', 1, 'Hamburger Patty Press (WF-A130)', 'hamburger-patty-press-wf-a130-zskJS6', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"23\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '23', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Hamburger Patty Press', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(487, 'admin', 1, 'Hamburger Machine (HHM-212)', 'hamburger-machine-hhm-212-p5QRsZ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"23\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '23', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 725, 0.00, 580, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Hamburger Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(488, 'admin', 1, 'Meat Salting Machine (HML-900)', 'meat-salting-machine-hml-900-0d6Jtq', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"23\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '23', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Meat Salting Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(489, 'admin', 1, 'Electric Breading Table (HBT-1200)', 'electric-breading-table-hbt-1200-yyS43s', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"23\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '23', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Breading Table', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(490, 'admin', 1, 'Vacuum Meat Slting Machine (HML-809)', 'vacuum-meat-slting-machine-hml-809-Ophunm', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"23\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '23', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 815, 0.00, 650, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Vacuum Meat Slting Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(491, 'admin', 1, 'Breading Table (HBT-1000)', 'breading-table-hbt-1000-SdKgSw', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"23\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '23', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Breading Table', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(492, 'admin', 1, 'Single Induction Cooker (HSC-2203)', 'single-induction-cooker-hsc-2203-SGz5Ox', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"24\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '24', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Single Induction Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(493, 'admin', 1, 'Induction Cooker (HP-200)', 'induction-cooker-hp-200-7LNiCo', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"24\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '24', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Induction Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(494, 'admin', 1, 'Double Induction Cooker (HSC-2205)', 'double-induction-cooker-hsc-2205-QKySSl', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"24\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '24', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Double Induction Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(495, 'admin', 1, 'Induction Cooker (HP-4500)', 'induction-cooker-hp-4500-cyGmzh', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"24\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '24', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Induction Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(496, 'admin', 1, 'Electric Rice Cooker (ERC-8L)', 'electric-rice-cooker-erc-8l-pOvx7L', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"25\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '25', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Rice Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(497, 'admin', 1, 'Electric Rice Cooker (ERC-10L)', 'electric-rice-cooker-erc-10l-amGr9Q', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"25\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '25', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Rice Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(498, 'admin', 1, 'Electric Rice Cooker (ERC-13L)', 'electric-rice-cooker-erc-13l-cJsrPl', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"25\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '25', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Rice Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(499, 'admin', 1, 'Electric Rice Cooker (ERC-23L)', 'electric-rice-cooker-erc-23l-qzD8lG', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"25\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '25', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Electric Rice Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(500, 'admin', 1, 'Gas Rice Cooker (GF20Y-7L-A)', 'gas-rice-cooker-gf20y-7l-a-9riB5d', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"25\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '25', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Rice Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(501, 'admin', 1, 'Gas Rice Cooker (GF20Y-15L-A)', 'gas-rice-cooker-gf20y-15l-a-ThvMrs', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"25\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '25', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Rice Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(502, 'admin', 1, 'Gas Rice Cooker (GF20Y-23L-A)', 'gas-rice-cooker-gf20y-23l-a-odhQle', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"25\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '25', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Rice Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(503, 'admin', 1, 'Gas Rice Cooker (GF20Y-30L-A)', 'gas-rice-cooker-gf20y-30l-a-p0xko3', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"25\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '25', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gas Rice Cooker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(504, 'admin', 1, 'Hook Type Diss Washer (HYT-C88)', 'hook-type-diss-washer-hyt-c88-rbBrb7', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 4000, 0.00, 3200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Hook Type Diss Washer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(505, 'admin', 1, 'Channel Type Dish Washer (HC250)', 'channel-type-dish-washer-hc250-sdFoWJ', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"38\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '38', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 6000, 0.00, 4800, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Channel Type Dish Washer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(506, 'admin', 1, 'Potato Peeler (PP5)', 'potato-peeler-pp5-S4RzqL', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"32\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '32', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Potato Peeler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(507, 'admin', 1, 'Potato Peeler (PP15)', 'potato-peeler-pp15-FsQbcq', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"32\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '32', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Potato Peeler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(508, 'admin', 1, 'Potato Peeler (PP25)', 'potato-peeler-pp25-KcBOuw', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"32\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '32', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Potato Peeler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(509, 'admin', 1, 'Potato Peeler (QP-350)', 'potato-peeler-qp-350-tS9giR', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"32\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '32', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Potato Peeler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(510, 'admin', 1, 'Potato Peeler (QP-550)', 'potato-peeler-qp-550-rGos8g', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"32\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '32', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Potato Peeler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(511, 'admin', 1, 'Potato Peeler (QP-800)', 'potato-peeler-qp-800-dtQeTL', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"32\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '32', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Potato Peeler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(512, 'admin', 1, 'Ice Cream Machine (HIM-03)', 'ice-cream-machine-him-03-A5Tv4o', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"26\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '26', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Cream Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(513, 'admin', 1, 'Ice Cream Machine (HIM-02)', 'ice-cream-machine-him-02-XnB5w2', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"26\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '26', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Cream Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(514, 'admin', 1, 'Ice Cream Machine (HIM18)', 'ice-cream-machine-him18-3TaHTC', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"26\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '26', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Cream Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(515, 'admin', 1, 'Ice Cream Machine (HIM-32C)', 'ice-cream-machine-him-32c-R0icGT', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"26\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '26', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Cream Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(516, 'admin', 1, 'Fried Ice Cream Machine (FIM-A12)', 'fried-ice-cream-machine-fim-a12-wyNhOV', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"27\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '27', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Fried Ice Cream Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(517, 'admin', 1, 'Fried Ice Cream Machine (FIM-A22)', 'fried-ice-cream-machine-fim-a22-uac592', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"27\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '27', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1065, 0.00, 850, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Fried Ice Cream Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(518, 'admin', 1, 'Roller Ice Cream Machine (FIR-PFIR (ROUND TYPE))', 'roller-ice-cream-machine-fir-pfir-round-type-Sa4oiu', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"27\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '27', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1190, 0.00, 950, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Roller Ice Cream Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(519, 'admin', 1, 'Roller Ice Cream Machine (FIR-PFIR_SQUARETYPE))', 'roller-ice-cream-machine-fir-pfir-squaretype-Jml02N', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"27\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '27', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1190, 0.00, 950, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Roller Ice Cream Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(520, 'admin', 1, 'Roller Ice Cream Machine (FIR-PF2R(ROUND TYPE))', 'roller-ice-cream-machine-fir-pf2rround-type-uSgGzc', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"27\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '27', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1190, 0.00, 950, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Roller Ice Cream Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(521, 'admin', 1, 'Roller Ice Cream Machine (FIR-PFIR-6C(WITH COVER))', 'roller-ice-cream-machine-fir-pfir-6cwith-cover-XciBY7', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"27\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '27', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1190, 0.00, 950, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Roller Ice Cream Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(522, 'admin', 1, 'Ice Maker (SD-80/100)', 'ice-maker-sd-80100-Zy3e2w', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"28\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '28', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1225, 0.00, 980, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(523, 'admin', 1, 'Ice Maker (SD-260)', 'ice-maker-sd-260-X9aHQX', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"28\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '28', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1225, 0.00, 980, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(524, 'admin', 1, 'Ice Maker (SD-500)', 'ice-maker-sd-500-Siov6h', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"28\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '28', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1225, 0.00, 980, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(525, 'admin', 1, 'Ice Maker (SD-100)', 'ice-maker-sd-100-JTeOKu', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"28\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '28', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1225, 0.00, 980, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(526, 'admin', 1, 'Ice Maker (HX-GQ40/60)', 'ice-maker-hx-gq4060-CLpuHH', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"28\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '28', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1225, 0.00, 980, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(527, 'admin', 1, 'Ice Maker (HX-GQ90/120)', 'ice-maker-hx-gq90120-k2VQw7', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"28\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '28', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1225, 0.00, 980, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Maker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(528, 'admin', 1, 'Juice Dispenser (LSP501)', 'juice-dispenser-lsp501-eep9Y4', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(529, 'admin', 1, 'Juice Dispenser (CH5L)', 'juice-dispenser-ch5l-objLeY', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(530, 'admin', 1, 'Juice Dispenser (JD-81)', 'juice-dispenser-jd-81-sKfhIc', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(531, 'admin', 1, 'Juice Dispenser (JD-83)', 'juice-dispenser-jd-83-bbg8N0', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(532, 'admin', 1, 'Juice Dispenser (JD-81A)', 'juice-dispenser-jd-81a-nte4HV', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(533, 'admin', 1, 'Juice Dispenser (JD-82A)', 'juice-dispenser-jd-82a-wjOPbf', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(534, 'admin', 1, 'Juice Dispenser (JD-83A)', 'juice-dispenser-jd-83a-rhHmeb', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(535, 'admin', 1, 'Juice Dispenser (JD-16LA)', 'juice-dispenser-jd-16la-UMO8KM', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(536, 'admin', 1, 'Juice Dispenser (JD-16LB)', 'juice-dispenser-jd-16lb-LRJmMU', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(537, 'admin', 1, 'Juice Dispenser (JD-16LD)', 'juice-dispenser-jd-16ld-DZhyNN', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(538, 'admin', 1, 'Juice Dispenser (LSP10L)', 'juice-dispenser-lsp10l-beNNAR', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(539, 'admin', 1, 'Juice Dispenser (LSP10LX3)', 'juice-dispenser-lsp10lx3-cXHhSq', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(540, 'admin', 1, 'Juice Dispenser (LASP10LX4)', 'juice-dispenser-lasp10lx4-7weo6h', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(541, 'admin', 1, 'Juice Dispenser (SM-112)', 'juice-dispenser-sm-112-b3SkGP', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(542, 'admin', 1, 'Juice Dispenser (SM-212)', 'juice-dispenser-sm-212-ZRY4pD', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(543, 'admin', 1, 'Juice Dispenser (SM-312)', 'juice-dispenser-sm-312-nUbyRD', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(544, 'admin', 1, 'Juice Dispenser (SM-101)', 'juice-dispenser-sm-101-NBx1D6', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(545, 'admin', 1, 'Juice Dispenser (SM-102)', 'juice-dispenser-sm-102-oIHF2C', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(546, 'admin', 1, 'Juice Dispenser (SM-103)', 'juice-dispenser-sm-103-KWLeG5', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"33\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '33', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Juice Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(547, 'admin', 1, 'Cereal Dispenser (CR-71R)', 'cereal-dispenser-cr-71r-PZH8gc', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"34\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '34', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Cereal Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(548, 'admin', 1, 'Cereal Dispenser (CR-36R)', 'cereal-dispenser-cr-36r-EVep98', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"34\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '34', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Cereal Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(549, 'admin', 1, 'Cereal Dispenser (U20-1000)', 'cereal-dispenser-u20-1000-PjbRuZ', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"34\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '34', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Cereal Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(550, 'admin', 1, 'Cereal Dispenser (U13-1200)', 'cereal-dispenser-u13-1200-nbVAp9', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"34\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '34', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Cereal Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(551, 'admin', 1, 'Cereal Dispenser (U13-1300)', 'cereal-dispenser-u13-1300-FMYVof', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"34\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '34', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Cereal Dispenser', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(552, 'admin', 1, 'Ice Crusher (HCC-BO8)', 'ice-crusher-hcc-bo8-8978ur', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"35\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '35', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Crusher', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0);
INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `images`, `color_image`, `thumbnail`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `published`, `unit_price`, `installation_fee`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`, `material`, `capacity`, `power_type`, `dimensions`, `stock_status`, `commercial_solution`) VALUES
(553, 'admin', 1, 'Ice Crusher (HCC-B108P)', 'ice-crusher-hcc-b108p-Wp3dtv', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"35\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '35', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Crusher', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(554, 'admin', 1, 'Ice Crusher (HCC-B108P)', 'ice-crusher-hcc-b108p-6D6ej1', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"35\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '35', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Crusher', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(555, 'admin', 1, 'Ice Crusher (HCC-B118)', 'ice-crusher-hcc-b118-65oOOG', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"35\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '35', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Crusher', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(556, 'admin', 1, 'Ice Crusher (HCC-B128L)', 'ice-crusher-hcc-b128l-qRi2mX', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"35\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '35', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Crusher', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(557, 'admin', 1, 'Ice Crusher (HCC-A168)', 'ice-crusher-hcc-a168-97Za2n', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"35\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '35', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Crusher', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(558, 'admin', 1, 'Ice Crusher (HCC=A118)', 'ice-crusher-hcca118-qIHM25', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"35\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '35', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Crusher', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(559, 'admin', 1, 'Ice Crusher (HCC-B188)', 'ice-crusher-hcc-b188-FUfZZJ', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"35\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '35', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Crusher', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(560, 'admin', 1, 'Ice Crusher (HCC-A266)', 'ice-crusher-hcc-a266-zqj3Tv', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"35\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '35', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Ice Crusher', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(561, 'admin', 1, 'Milk Shaker (HBL-015)', 'milk-shaker-hbl-015-FPpNxa', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"37\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '37', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Milk Shaker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(562, 'admin', 1, 'Milk Shaker (HBL-018)', 'milk-shaker-hbl-018-00A4Z1', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"37\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '37', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Milk Shaker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(563, 'admin', 1, 'Milk Shaker (HBL-011)', 'milk-shaker-hbl-011-leYPl3', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"37\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '37', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Milk Shaker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(564, 'admin', 1, 'Milk Shaker (HBL-22)', 'milk-shaker-hbl-22-L1Sl9f', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"37\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '37', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Milk Shaker', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(565, 'admin', 1, 'Coffee Brewer (HCM-61)', 'coffee-brewer-hcm-61-0aorOz', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"37\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '37', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Coffee Brewer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(566, 'admin', 1, 'Coffee Brewer (HCM-112)', 'coffee-brewer-hcm-112-qLmyQ5', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"37\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '37', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Coffee Brewer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(567, 'admin', 1, 'Coffee Brewer (HCB-A)', 'coffee-brewer-hcb-a-cJXVbP', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"37\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '37', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Coffee Brewer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(568, 'admin', 1, 'Auto Orange Juicer (200)', 'auto-orange-juicer-200-uFeCl6', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"36\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '36', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Auto Orange Juicer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(569, 'admin', 1, 'Auto Orange Juicer (20)', 'auto-orange-juicer-20-Nyb8Py', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"36\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '36', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Auto Orange Juicer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(570, 'admin', 1, 'Auto Orange Juicer (2)', 'auto-orange-juicer-2-DQA9C7', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"36\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '36', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Auto Orange Juicer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(571, 'admin', 1, 'Auto Orange Juicer (0.2)', 'auto-orange-juicer-02-UyrsC7', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"36\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '36', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Auto Orange Juicer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(572, 'admin', 1, 'Auto Orange Juicer (0.02)', 'auto-orange-juicer-002-VKIhiU', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"36\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '36', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Auto Orange Juicer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(573, 'admin', 1, 'Auto Orange Juicer (HWF-HJ001)', 'auto-orange-juicer-hwf-hj001-bjtLDx', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"36\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '36', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Auto Orange Juicer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(574, 'admin', 1, 'Auto Orange Juicer (HWF-HJ001)', 'auto-orange-juicer-hwf-hj001-FYMylz', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"36\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '36', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Auto Orange Juicer', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(575, 'admin', 1, 'Commercial Blender (CB-676)', 'commercial-blender-cb-676-BbpkZf', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"15\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '15', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Commercial Blender', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(576, 'admin', 1, 'Water Boiler (WB-08A)', 'water-boiler-wb-08a-OYsqau', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"45\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '45', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Water Boiler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(577, 'admin', 1, 'Water Boiler (WB-010A)', 'water-boiler-wb-010a-vNp2zE', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"45\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '45', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 19, 1, 'Water Boiler', 0, NULL, NULL, '2026-07-23 11:30:26', 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(578, 'admin', 1, 'Water Boiler (WB-15A)', 'water-boiler-wb-15a-o8Cf8t', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"45\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '45', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Water Boiler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(579, 'admin', 1, 'Water Boiler (WB-25A)', 'water-boiler-wb-25a-zejLNV', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"45\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '45', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Water Boiler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(580, 'admin', 1, 'Water Boiler (WB-45A)', 'water-boiler-wb-45a-oQA3YB', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"45\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '45', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Water Boiler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(581, 'admin', 1, 'Water Boiler (WB-48B)', 'water-boiler-wb-48b-9uLuSr', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"45\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '45', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Water Boiler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(582, 'admin', 1, 'Water Boiler (WB50P)', 'water-boiler-wb50p-6hkhFS', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"45\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '45', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Water Boiler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(583, 'admin', 1, 'Water Boiler (WB-60P)', 'water-boiler-wb-60p-zXBuAO', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"45\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '45', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Water Boiler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(584, 'admin', 1, 'Water Boiler (HN-30LA/40LA/50LA)', 'water-boiler-hn-30la40la50la-WWXTvq', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"45\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '45', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Water Boiler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(585, 'admin', 1, 'Chocolate Fountan (CF-8060)', 'chocolate-fountan-cf-8060-mYcVwN', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"46\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '46', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 250, 0.00, 200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Chocolate Fountan', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(586, 'admin', 1, 'Chocolate Fountan (CF-8080)', 'chocolate-fountan-cf-8080-lKkT2i', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"46\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '46', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 250, 0.00, 200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Chocolate Fountan', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(587, 'admin', 1, 'Soup Kettle (81010SP)', 'soup-kettle-81010sp-SmJcQg', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"46\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '46', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Soup Kettle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(588, 'admin', 1, 'Soup Kettle (83013SP)', 'soup-kettle-83013sp-8eqddR', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"46\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '46', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Soup Kettle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(589, 'admin', 1, 'Soup Kettle (83010SP)', 'soup-kettle-83010sp-YOIaQx', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"46\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '46', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Soup Kettle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(590, 'admin', 1, 'Soup Kettle (81010SF)', 'soup-kettle-81010sf-AUE7Dk', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"46\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '46', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Soup Kettle', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(591, 'admin', 1, 'Chafing Dish (NCD-01)', 'chafing-dish-ncd-01-EXuoMI', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"46\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '46', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 150, 0.00, 120, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Chafing Dish', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(592, 'admin', 1, 'Chafing Dish (NCD-01V)', 'chafing-dish-ncd-01v-kekItI', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"46\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '46', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 150, 0.00, 120, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Chafing Dish', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(593, 'admin', 1, 'Chafing Dish (NCD-09)', 'chafing-dish-ncd-09-0holQX', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"46\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '46', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 150, 0.00, 120, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Chafing Dish', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(594, 'admin', 1, 'Chafing Dish (NCD-07)', 'chafing-dish-ncd-07-TqYu5k', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"46\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '46', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 150, 0.00, 120, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Chafing Dish', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(595, 'admin', 1, 'Chafing Dish (NCD-11)', 'chafing-dish-ncd-11-sSRRc8', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"46\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '46', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 150, 0.00, 120, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Chafing Dish', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(596, 'admin', 1, 'Impulse Sealer & Vacuum Packing Machine (SF200)', 'impulse-sealer-vacuum-packing-machine-sf200-37r7vT', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"47\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '47', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Impulse Sealer & Vacuum Packing Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(597, 'admin', 1, 'Impulse Sealer & Vacuum Packing Machine (DZ400/2C)', 'impulse-sealer-vacuum-packing-machine-dz4002c-cfFwKv', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"47\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '47', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Impulse Sealer & Vacuum Packing Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(598, 'admin', 1, 'Impulse Sealer & Vacuum Packing Machine (DZ260)', 'impulse-sealer-vacuum-packing-machine-dz260-QIuioL', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"47\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '47', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Impulse Sealer & Vacuum Packing Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(599, 'admin', 1, 'Impulse Sealer & Vacuum Packing Machine (DZ400S)', 'impulse-sealer-vacuum-packing-machine-dz400s-vv3GVf', 'physical', '[{\"id\":\"44\",\"position\":1},{\"id\":\"47\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '44', '47', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Impulse Sealer & Vacuum Packing Machine', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(600, 'admin', 1, 'Economic Single Sink Bench (SS6060)', 'economic-single-sink-bench-ss6060-pDkp4J', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"39\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '39', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Economic Single Sink Bench', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(601, 'admin', 1, 'Economic Single Sink Bench (SS1260)', 'economic-single-sink-bench-ss1260-JHJMTl', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"39\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '39', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Economic Single Sink Bench', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(602, 'admin', 1, 'Economic Single Sink Bench (SS1270)', 'economic-single-sink-bench-ss1270-rHcOyh', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"39\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '39', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Economic Single Sink Bench', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(603, 'admin', 1, 'Economic Double Sink Bench (DS1260)', 'economic-double-sink-bench-ds1260-6VoyMv', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"39\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '39', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Economic Double Sink Bench', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(604, 'admin', 1, 'Economic Double Sink Bench (DS1270)', 'economic-double-sink-bench-ds1270-TPiOGz', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"39\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '39', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Economic Double Sink Bench', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(605, 'admin', 1, 'Economic Double Sink Bench (DS1570)', 'economic-double-sink-bench-ds1570-f6OIGg', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"39\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '39', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 475, 0.00, 380, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Economic Double Sink Bench', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(606, 'admin', 1, 'Single Sink Bench (1819)', 'single-sink-bench-1819-Br1Co7', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"39\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '39', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Single Sink Bench', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(607, 'admin', 1, 'Single Sink Bench (1820)', 'single-sink-bench-1820-Wda51U', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"39\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '39', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Single Sink Bench', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(608, 'admin', 1, 'Economical Triple Sink (TS1756)', 'economical-triple-sink-ts1756-3Eypou', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"39\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '39', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Economical Triple Sink', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(609, 'admin', 1, 'Economical Triple Sink (TS1850)', 'economical-triple-sink-ts1850-BFkbbH', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"39\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '39', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Economical Triple Sink', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(610, 'admin', 1, 'Economical Triple Sink (TS1870)', 'economical-triple-sink-ts1870-7NHnhW', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"39\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '39', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Economical Triple Sink', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(611, 'admin', 1, 'Double Bowl Wash Sink With Drain Board (DSB-1756L/M/R)', 'double-bowl-wash-sink-with-drain-board-dsb-1756lmr-jRgd17', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"39\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '39', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 525, 0.00, 420, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Double Bowl Wash Sink With Drain Board', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(612, 'admin', 1, 'Double Bowl Wash Sink With Drain Board (DSB-1860L/M/R)', 'double-bowl-wash-sink-with-drain-board-dsb-1860lmr-N4ecUH', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"39\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '39', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 525, 0.00, 420, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Double Bowl Wash Sink With Drain Board', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(613, 'admin', 1, 'Double Bowl Wash Sink With Drain Board (DSB-1879L/M/R)', 'double-bowl-wash-sink-with-drain-board-dsb-1879lmr-CfS4hY', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"39\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '39', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 525, 0.00, 420, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Double Bowl Wash Sink With Drain Board', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(614, 'admin', 1, 'Triple Sink Bench (1824)', 'triple-sink-bench-1824-UMayFR', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"39\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '39', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 650, 0.00, 520, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Triple Sink Bench', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(615, 'admin', 1, 'Triple Sink Bench (1825)', 'triple-sink-bench-1825-xOUolD', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"39\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '39', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 650, 0.00, 520, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Triple Sink Bench', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(616, 'admin', 1, 'British Smoke Hood Series (FCS150-01)', 'british-smoke-hood-series-fcs150-01-L4GuoG', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'British Smoke Hood Series', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(617, 'admin', 1, 'British Smoke Hood Series (FCS150-03)', 'british-smoke-hood-series-fcs150-03-6WysYw', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'British Smoke Hood Series', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(618, 'admin', 1, 'Supermarket Showcase (FMG-15/20)', 'supermarket-showcase-fmg-1520-k048G5', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"29\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '29', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 2750, 0.00, 2200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Supermarket Showcase', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(619, 'admin', 1, 'Supermarket Showcase (FMG-15/20/25)', 'supermarket-showcase-fmg-152025-1H9i1h', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"29\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '29', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 2750, 0.00, 2200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Supermarket Showcase', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(620, 'admin', 1, 'Cake Showcase (XL-1200A)', 'cake-showcase-xl-1200a-PQa3Jt', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"30\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '30', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1875, 0.00, 1500, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Cake Showcase', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(621, 'admin', 1, 'Cake Showcase (ST-1800)', 'cake-showcase-st-1800-bFssA8', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"30\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '30', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1875, 0.00, 1500, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Cake Showcase', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(622, 'admin', 1, 'Cake Showcase (ST-2000)', 'cake-showcase-st-2000-HptIJh', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"30\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '30', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1875, 0.00, 1500, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Cake Showcase', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(623, 'admin', 1, 'Cake Showcase (XL-1800B1)', 'cake-showcase-xl-1800b1-aH4RvZ', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"30\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '30', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1875, 0.00, 1500, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Cake Showcase', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(624, 'admin', 1, 'Cake Showcase (XT-1200A1/1500A1)', 'cake-showcase-xt-1200a11500a1-bnv6tN', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"30\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '30', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1875, 0.00, 1500, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Cake Showcase', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(625, 'admin', 1, 'Refrigerated Table (TC0.4C4CT)', 'refrigerated-table-tc04c4ct-uZaiKy', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"30\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '30', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Refrigerated Table', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(626, 'admin', 1, 'Refrigerated Table (ST-1800)', 'refrigerated-table-st-1800-ugtDc9', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"30\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '30', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Refrigerated Table', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(627, 'admin', 1, 'Refrigerated Table (ST-2000)', 'refrigerated-table-st-2000-H7Vrcb', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"30\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '30', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1500, 0.00, 1200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Refrigerated Table', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(628, 'admin', 1, 'Economic Refrigerated Cabinet (KD0.5L2T)', 'economic-refrigerated-cabinet-kd05l2t-nYGQRP', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"30\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '30', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1225, 0.00, 980, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Economic Refrigerated Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(629, 'admin', 1, 'Economic Refrigerated Cabinet (KCD1.6L6T)', 'economic-refrigerated-cabinet-kcd16l6t-G1S451', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"30\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '30', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 1225, 0.00, 980, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Economic Refrigerated Cabinet', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(630, 'admin', 1, 'Beverage Cooler (LG-188B)', 'beverage-cooler-lg-188b-Zi15BL', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"31\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '31', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Beverage Cooler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(631, 'admin', 1, 'Beverage Cooler (LG-218B)', 'beverage-cooler-lg-218b-NobdLZ', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"31\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '31', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Beverage Cooler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(632, 'admin', 1, 'Beverage Cooler (LG-380B)', 'beverage-cooler-lg-380b-GObm3l', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"31\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '8', '31', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 850, 0.00, 680, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Beverage Cooler', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(633, 'admin', 1, 'Gn Pans (H5427)', 'gn-pans-h5427-HX8fHd', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 58, 0.00, 45, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gn Pans', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(634, 'admin', 1, 'Gn Pans (H5502)', 'gn-pans-h5502-MloOpI', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 58, 0.00, 45, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gn Pans', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(635, 'admin', 1, 'Gn Pans (H5507)', 'gn-pans-h5507-MbuX15', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 58, 0.00, 45, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Gn Pans', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(636, 'admin', 1, 'Plateform Handcart (X1402)', 'plateform-handcart-x1402-CynAMn', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"40\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '40', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Plateform Handcart', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(637, 'admin', 1, 'Plateform Handcart (X1406)', 'plateform-handcart-x1406-EnlxUp', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"40\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '40', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Plateform Handcart', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(638, 'admin', 1, 'Plateform Handcart (X11301)', 'plateform-handcart-x11301-JJ0vvv', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"40\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '40', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Plateform Handcart', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(639, 'admin', 1, 'Five Layer Dinning Cart (ROUND TUBE) (XXXX118)', 'five-layer-dinning-cart-round-tube-xxxx118-fFgmfy', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"41\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '41', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Five Layer Dinning Cart (Round Tube)', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(640, 'admin', 1, 'Bowl-Collected Cart (XXXX1202)', 'bowl-collected-cart-xxxx1202-EsMPL4', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"41\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '41', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 275, 0.00, 220, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Bowl-Collected Cart', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(641, 'admin', 1, 'Square Dirinking Cart (X1204)', 'square-dirinking-cart-x1204-mUakbe', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"41\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '41', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 250, 0.00, 200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Square Dirinking Cart', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(642, 'admin', 1, 'Square Dirinking Cart (X1206)', 'square-dirinking-cart-x1206-yMkYzs', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"41\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '41', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 250, 0.00, 200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Square Dirinking Cart', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(643, 'admin', 1, 'Kettle Cart (X1211)', 'kettle-cart-x1211-YZV7yH', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"41\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '41', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Kettle Cart', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(644, 'admin', 1, 'Saucing Cart (X1209)', 'saucing-cart-x1209-0KsWU7', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"41\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '41', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Saucing Cart', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(645, 'admin', 1, 'Collecting Cart (XXXXX1212)', 'collecting-cart-xxxxx1212-dQo9FD', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"41\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '41', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 250, 0.00, 200, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Collecting Cart', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0);
INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `images`, `color_image`, `thumbnail`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `published`, `unit_price`, `installation_fee`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`, `material`, `capacity`, `power_type`, `dimensions`, `stock_status`, `commercial_solution`) VALUES
(646, 'admin', 1, 'Assembly Roundlegs Worktable (TB-1270)', 'assembly-roundlegs-worktable-tb-1270-izt6ed', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"42\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '42', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Assembly Roundlegs Worktable', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(647, 'admin', 1, 'Assembly Roundlegs Worktable (TB-1570)', 'assembly-roundlegs-worktable-tb-1570-uUioKO', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"42\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '42', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 350, 0.00, 280, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Assembly Roundlegs Worktable', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(648, 'admin', 1, 'Assembly  Double Layers Perforated (TBP-1260)', 'assembly-double-layers-perforated-tbp-1260-JigLJX', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Assembly  Double Layers Perforated', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(649, 'admin', 1, 'Assembly  Double Layers Perforated (TBP-1880)', 'assembly-double-layers-perforated-tbp-1880-k2VAXM', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"5\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '5', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 400, 0.00, 320, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Assembly  Double Layers Perforated', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(650, 'admin', 1, 'Over Table Shelf (OS-1230)', 'over-table-shelf-os-1230-yRZBIz', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"42\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '42', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Over Table Shelf', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(651, 'admin', 1, 'Over Table Shelf (OS-1830)', 'over-table-shelf-os-1830-suPP7B', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"42\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '42', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 225, 0.00, 180, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Over Table Shelf', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(652, 'admin', 1, 'Assembly Three Layers Worktable (TB3-1870)', 'assembly-three-layers-worktable-tb3-1870-ml0OGr', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"42\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '42', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 440, 0.00, 350, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Assembly Three Layers Worktable', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(653, 'admin', 1, 'Multifunction High Speed Disintegrator (500A)', 'multifunction-high-speed-disintegrator-500a-hJjz0h', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"15\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '15', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Multifunction High Speed Disintegrator', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(654, 'admin', 1, 'Multifunction High Speed Disintegrator (2000A)', 'multifunction-high-speed-disintegrator-2000a-qFkMM8', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"15\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '15', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Multifunction High Speed Disintegrator', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(655, 'admin', 1, 'Multifunction High Speed Disintegrator (3000A)', 'multifunction-high-speed-disintegrator-3000a-3Q23HI', 'physical', '[{\"id\":\"12\",\"position\":1},{\"id\":\"15\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '12', '15', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 600, 0.00, 480, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Multifunction High Speed Disintegrator', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(656, 'admin', 1, 'Wire Rack (3FT)', 'wire-rack-3ft-HGEn5C', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"43\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '43', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 150, 0.00, 120, '0', NULL, 'exclude', '0', 'percent', 20, 1, 'Wire Rack', 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(657, 'admin', 1, 'Wire Rack (5FT)', 'wire-rack-5ft-JmI7G6', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"43\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '16', '43', '0', 1, 'pc', 1, 0, NULL, NULL, '[\"def.png\"]', '', '', NULL, NULL, 'youtube', '', '[]', 0, '[]', '[]', '[]', 0, 150, 0.00, 120, '0', NULL, 'exclude', '0', 'percent', 19, 1, 'Wire Rack', 0, NULL, NULL, '2026-07-23 11:30:26', 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in_stock', 0),
(658, 'admin', 1, 'Wire Rack (6FT)', 'wire-rack-6ft-IVrSAP', 'physical', '[{\"id\":\"16\",\"position\":1},{\"id\":\"43\",\"position\":2}]', '16', '43', NULL, NULL, 'pc', 1, 0, NULL, NULL, '[\"def.png\",\"2026-08-03-6a70ed0fbb42f.webp\"]', '[]', '2026-08-03-6a70ed0fc2c9a.webp', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 150, 0.00, 120, '0', 'percent', 'exclude', '0', 'percent', 18, 1, '<p>Wire Rack</p>', 0, NULL, NULL, '2026-08-03 18:33:35', 1, 1, NULL, NULL, NULL, 1, NULL, 0.00, 0, NULL, NULL, '131744', NULL, NULL, NULL, NULL, 'in_stock', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_compares`
--

CREATE TABLE `product_compares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'customer_id',
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `variant`, `sku`, `price`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 'GAB-101', 'GAB-101-fBy', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(2, 1, 'GAB-102', 'GAB-102-hdq', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(3, 1, 'GAB-103', 'GAB-103-xlT', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(4, 1, 'GAB-104', 'GAB-104-tRU', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(5, 1, 'GAB-105', 'GAB-105-kZh', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(6, 1, 'GAB-106', 'GAB-106-qBm', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(7, 1, 'GAB-107', 'GAB-107-bBs', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(8, 1, 'GAB-108', 'GAB-108-9wP', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(9, 1, 'GAB-109', 'GAB-109-B0p', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(10, 1, 'GAB-110', 'GAB-110-0S9', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(11, 1, 'GAB-111', 'GAB-111-J2B', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(12, 2, 'GAB-112', 'GAB-112-pzN', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(13, 2, 'GAB-113', 'GAB-113-ZHE', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(14, 2, 'GAB-114', 'GAB-114-bfy', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(15, 2, 'GAB-115', 'GAB-115-uYX', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(16, 2, 'GAB-116', 'GAB-116-luG', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(17, 2, 'GAB-117', 'GAB-117-vw0', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(18, 2, 'GAB-118', 'GAB-118-0Xw', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(19, 2, 'GAB-119', 'GAB-119-bbv', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(20, 2, 'GAB-120', 'GAB-120-mbx', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(21, 2, 'GAB-121', 'GAB-121-ll6', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(22, 2, 'GAB-122', 'GAB-122-6t9', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(23, 3, 'RF 1.25-3', 'RF 1.25-3-F6I', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(24, 3, 'RF 1.25-4', 'RF 1.25-4-2FP', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(25, 3, 'RF 1.25-5', 'RF 1.25-5-yTH', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(26, 3, 'RF 1.25-6', 'RF 1.25-6-UlO', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(27, 3, 'RF 1.25-8', 'RF 1.25-8-04n', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(28, 3, 'RF 1.25-10', 'RF 1.25-10-SFr', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(29, 4, 'RF 2-3', 'RF 2-3-PFr', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(30, 4, 'RF 2-4', 'RF 2-4-Dsi', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(31, 4, 'RF 2-5', 'RF 2-5-Mt2', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(32, 4, 'RF 2-6', 'RF 2-6-Hl2', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(33, 4, 'RF 2-8', 'RF 2-8-xke', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(34, 4, 'RF 2-10', 'RF 2-10-Rb4', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(35, 5, 'RF 5.5-4', 'RF 5.5-4-jox', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(36, 5, 'RF 5.5-5', 'RF 5.5-5-Hii', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(37, 5, 'RF 5.5-6', 'RF 5.5-6-Wmh', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(38, 5, 'RF 5.5-8', 'RF 5.5-8-cJn', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(39, 5, 'RF 5.5-10', 'RF 5.5-10-iYy', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(40, 5, 'RF 5.5-12', 'RF 5.5-12-zxX', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(41, 6, 'PG-7', 'PG-7-Uwn', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(42, 6, 'PG-9', 'PG-9-Svf', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(43, 6, 'PG-11', 'PG-11-ayL', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(44, 6, 'PG-13.5', 'PG-13.5-Tx6', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(45, 6, 'PG-16', 'PG-16-Wjz', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(46, 6, 'PG-19', 'PG-19-UMl', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(47, 6, 'PG-21', 'PG-21-CTE', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(48, 6, 'PG-25', 'PG-25-TF1', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(49, 6, 'PG-29', 'PG-29-Wyd', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(50, 6, 'PG-36', 'PG-36-dp1', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(51, 6, 'PG-42', 'PG-42-V1U', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(52, 6, 'PG-48', 'PG-48-Rdd', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(53, 6, 'PG-63', 'PG-63-5Hf', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(54, 7, 'PG-7', 'PG-7-vtK', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(55, 7, 'PG-9', 'PG-9-LAn', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(56, 7, 'PG-11', 'PG-11-Os2', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(57, 7, 'PG-13.5', 'PG-13.5-tku', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(58, 7, 'PG-16', 'PG-16-TkT', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(59, 7, 'PG-19', 'PG-19-ea1', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(60, 7, 'PG-21', 'PG-21-gng', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(61, 7, 'PG-25', 'PG-25-QFR', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(62, 7, 'PG-29', 'PG-29-5Vx', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(63, 7, 'PG-36', 'PG-36-MnV', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(64, 7, 'PG-42', 'PG-42-cmt', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(65, 7, 'PG-48', 'PG-48-vJh', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17'),
(66, 7, 'PG-63', 'PG-63-kLR', 100.00, 100, '2026-05-07 18:23:17', '2026-05-07 18:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_requests`
--

CREATE TABLE `refund_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `refund_reason` longtext NOT NULL,
  `images` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `approved_note` longtext DEFAULT NULL,
  `rejected_note` longtext DEFAULT NULL,
  `payment_info` longtext DEFAULT NULL,
  `change_by` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_statuses`
--

CREATE TABLE `refund_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `refund_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `change_by` varchar(191) DEFAULT NULL,
  `change_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_transactions`
--

CREATE TABLE `refund_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_for` varchar(191) DEFAULT NULL,
  `payer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_receiver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_by` varchar(191) DEFAULT NULL,
  `paid_to` varchar(191) DEFAULT NULL,
  `payment_method` varchar(191) DEFAULT NULL,
  `payment_status` varchar(191) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `transaction_type` varchar(191) DEFAULT NULL,
  `order_details_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attachment`)),
  `rating` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_saved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_ratings`
--

CREATE TABLE `review_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('product_quality','pricing','customer_service','delivery_timeline','order_accuracy','packaging') NOT NULL,
  `number` int(11) NOT NULL,
  `review_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `search_functions`
--

CREATE TABLE `search_functions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(150) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `visible_for` varchar(191) NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_functions`
--

INSERT INTO `search_functions` (`id`, `key`, `url`, `visible_for`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'admin/dashboard', 'admin', NULL, NULL),
(2, 'Order All', 'admin/orders/list/all', 'admin', NULL, NULL),
(3, 'Order Pending', 'admin/orders/list/pending', 'admin', NULL, NULL),
(4, 'Order Processed', 'admin/orders/list/processed', 'admin', NULL, NULL),
(5, 'Order Delivered', 'admin/orders/list/delivered', 'admin', NULL, NULL),
(6, 'Order Returned', 'admin/orders/list/returned', 'admin', NULL, NULL),
(7, 'Order Failed', 'admin/orders/list/failed', 'admin', NULL, NULL),
(8, 'Brand Add', 'admin/brand/add-new', 'admin', NULL, NULL),
(9, 'Brand List', 'admin/brand/list', 'admin', NULL, NULL),
(10, 'Banner', 'admin/banner/list', 'admin', NULL, NULL),
(11, 'Category', 'admin/category/view', 'admin', NULL, NULL),
(12, 'Sub Category', 'admin/category/sub-category/view', 'admin', NULL, NULL),
(13, 'Sub sub category', 'admin/category/sub-sub-category/view', 'admin', NULL, NULL),
(14, 'Attribute', 'admin/attribute/view', 'admin', NULL, NULL),
(15, 'Product', 'admin/product/list', 'admin', NULL, NULL),
(16, 'Coupon', 'admin/coupon/add-new', 'admin', NULL, NULL),
(17, 'Custom Role', 'admin/custom-role/create', 'admin', NULL, NULL),
(18, 'Employee', 'admin/employee/add-new', 'admin', NULL, NULL),
(19, 'Seller', 'admin/sellers/seller-list', 'admin', NULL, NULL),
(20, 'Contacts', 'admin/contact/list', 'admin', NULL, NULL),
(21, 'Flash Deal', 'admin/deal/flash', 'admin', NULL, NULL),
(22, 'Deal of the day', 'admin/deal/day', 'admin', NULL, NULL),
(23, 'Language', 'admin/business-settings/language', 'admin', NULL, NULL),
(24, 'Mail', 'admin/business-settings/mail', 'admin', NULL, NULL),
(25, 'Shipping method', 'admin/business-settings/shipping-method/add', 'admin', NULL, NULL),
(26, 'Currency', 'admin/currency/view', 'admin', NULL, NULL),
(27, 'Payment method', 'admin/business-settings/payment-method', 'admin', NULL, NULL),
(28, 'SMS Gateway', 'admin/business-settings/sms-gateway', 'admin', NULL, NULL),
(29, 'Support Ticket', 'admin/support-ticket/view', 'admin', NULL, NULL),
(30, 'FAQ', 'admin/helpTopic/list', 'admin', NULL, NULL),
(31, 'About Us', 'admin/business-settings/about-us', 'admin', NULL, NULL),
(32, 'Terms and Conditions', 'admin/business-settings/terms-condition', 'admin', NULL, NULL),
(33, 'Web Config', 'admin/business-settings/web-config', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(30) DEFAULT NULL,
  `l_name` varchar(30) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `image` varchar(30) NOT NULL DEFAULT 'def.png',
  `email` varchar(80) NOT NULL,
  `password` varchar(80) DEFAULT NULL,
  `status` enum('pending','suspended','approved-1','approved-2','rejected') DEFAULT 'pending',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `branch` varchar(191) DEFAULT NULL,
  `account_no` varchar(191) DEFAULT NULL,
  `holder_name` varchar(191) DEFAULT NULL,
  `auth_token` text DEFAULT NULL,
  `sales_commission_percentage` double(8,2) DEFAULT NULL,
  `gst` varchar(191) DEFAULT NULL,
  `cm_firebase_token` varchar(191) DEFAULT NULL,
  `pos_status` tinyint(1) NOT NULL DEFAULT 0,
  `minimum_order_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `free_delivery_status` int(11) NOT NULL DEFAULT 0,
  `free_delivery_over_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `app_language` varchar(191) NOT NULL DEFAULT 'en',
  `nin` bigint(20) DEFAULT NULL,
  `reg_level_completed` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_credentials`
--

CREATE TABLE `seller_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file_path` varchar(191) NOT NULL,
  `file_association` varchar(191) NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_wallets`
--

CREATE TABLE `seller_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `total_earning` double NOT NULL DEFAULT 0,
  `withdrawn` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_given` double(8,2) NOT NULL DEFAULT 0.00,
  `pending_withdraw` double(8,2) NOT NULL DEFAULT 0.00,
  `delivery_charge_earned` double(8,2) NOT NULL DEFAULT 0.00,
  `collected_cash` double(8,2) NOT NULL DEFAULT 0.00,
  `total_tax_collected` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_wallet_histories`
--

CREATE TABLE `seller_wallet_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `payment` varchar(191) NOT NULL DEFAULT 'received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addresses`
--

CREATE TABLE `shipping_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(15) DEFAULT NULL,
  `is_guest` tinyint(4) NOT NULL DEFAULT 0,
  `contact_person_name` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address_type` varchar(20) NOT NULL DEFAULT 'home',
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `is_billing` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_addresses`
--

INSERT INTO `shipping_addresses` (`id`, `customer_id`, `is_guest`, `contact_person_name`, `email`, `address_type`, `address`, `city`, `zip`, `phone`, `created_at`, `updated_at`, `state`, `country`, `latitude`, `longitude`, `is_billing`) VALUES
(1, '3', 0, 'EMESUE Nnaemeka Emmanuel', NULL, 'permanent', 'Dantata estate Kubwa', 'Abuja', '900104', '09037331520', NULL, NULL, NULL, 'Åland Islands', '', '', 0),
(2, '3', 0, 'EMESUE Nnaemeka Emmanuel', NULL, 'permanent', 'Dantata estate Kubwa', 'Abuja', '900104', '09037331520', NULL, NULL, NULL, 'Åland Islands', '', '', 0),
(3, '3', 0, 'EMESUE Emmanuel', NULL, 'permanent', 'number 6b pano street, federal housing estate, onitsha, anambra state.', 'onitsha', '430213', '09037331520', NULL, NULL, NULL, 'Åland Islands', '', '', 1),
(4, '0', 0, 'EMESUE Nnaemeka Emmanuel', NULL, 'permanent', 'Dantata estate Kubwa', 'Abuja', '900104', '09037331520', NULL, NULL, NULL, 'Åland Islands', '', '', 0),
(5, '0', 0, 'EMESUE Emmanuel', NULL, 'permanent', 'number 6b pano street, federal housing estate, onitsha, anambra state.', 'onitsha', '430213', '09037331520', NULL, NULL, NULL, 'Åland Islands', '', '', 1),
(6, '0', 0, 'EMESUE Nnaemeka Emmanuel', NULL, 'permanent', 'Dantata estate Kubwa', 'Abuja', '900104', '09037331520', NULL, NULL, NULL, 'Åland Islands', '', '', 0),
(7, '0', 0, 'EMESUE Emmanuel', NULL, 'permanent', 'number 6b pano street, federal housing estate, onitsha, anambra state.', 'onitsha', '430213', '09037331520', NULL, NULL, NULL, 'Åland Islands', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `creator_type` varchar(191) NOT NULL DEFAULT 'admin',
  `title` varchar(100) DEFAULT NULL,
  `cost` decimal(8,2) NOT NULL DEFAULT 0.00,
  `duration` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`id`, `creator_id`, `creator_type`, `title`, `cost`, `duration`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'admin', 'Company Vehicle', 5.00, '2 Week', 1, '2021-05-25 20:57:04', '2021-05-25 20:57:04'),
(9, 1, 'admin', 'Abuja (FCT) Delivery (Kwik/GIG)', 100.00, '25-48h', 1, '2026-04-24 11:21:00', '2026-04-24 11:21:00');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_types`
--

CREATE TABLE `shipping_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(25) NOT NULL,
  `image` varchar(30) NOT NULL DEFAULT 'def.png',
  `bottom_banner` varchar(191) DEFAULT NULL,
  `offer_banner` varchar(255) DEFAULT NULL,
  `vacation_start_date` date DEFAULT NULL,
  `vacation_end_date` date DEFAULT NULL,
  `vacation_note` varchar(255) DEFAULT NULL,
  `vacation_status` tinyint(4) NOT NULL DEFAULT 0,
  `temporary_close` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_followers`
--

CREATE TABLE `shop_followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'Customer ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

CREATE TABLE `social_medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `active_status` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_medias`
--

INSERT INTO `social_medias` (`id`, `name`, `link`, `icon`, `active_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'twitter', 'https://www.w3schools.com/howto/howto_css_table_responsive.asp', 'fa fa-twitter', 1, 1, '2020-12-31 21:18:03', '2020-12-31 21:18:25'),
(2, 'linkedin', 'https://dev.6amtech.com/', 'fa fa-linkedin', 1, 1, '2021-02-27 16:23:01', '2021-02-27 16:23:05'),
(3, 'google-plus', 'https://dev.6amtech.com/', 'fa fa-google-plus-square', 1, 1, '2021-02-27 16:23:30', '2021-02-27 16:23:33'),
(4, 'pinterest', 'https://dev.6amtech.com/', 'fa fa-pinterest', 1, 1, '2021-02-27 16:24:14', '2021-02-27 16:24:26'),
(5, 'instagram', 'https://dev.6amtech.com/', 'fa fa-instagram', 1, 1, '2021-02-27 16:24:36', '2021-02-27 16:24:41'),
(6, 'facebook', 'facebook.com', 'fa fa-facebook', 1, 1, '2021-02-27 19:19:42', '2021-06-11 17:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `soft_credentials`
--

CREATE TABLE `soft_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `subject` varchar(150) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `priority` varchar(15) NOT NULL DEFAULT 'low',
  `description` varchar(255) DEFAULT NULL,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attachment`)),
  `reply` varchar(255) DEFAULT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'open',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `customer_id`, `subject`, `type`, `priority`, `description`, `attachment`, `reply`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Test Ticket', 'Complaint', 'High', 'test', '[]', NULL, 'open', '2026-04-28 08:20:25', '2026-04-28 08:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_convs`
--

CREATE TABLE `support_ticket_convs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_ticket_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `customer_message` varchar(191) DEFAULT NULL,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attachment`)),
  `admin_message` varchar(191) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(191) NOT NULL,
  `visit_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `testimonial` text NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 5,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `payment_for` varchar(100) DEFAULT NULL,
  `payer_id` bigint(20) DEFAULT NULL,
  `payment_receiver_id` bigint(20) DEFAULT NULL,
  `paid_by` varchar(15) DEFAULT NULL,
  `paid_to` varchar(15) DEFAULT NULL,
  `payment_method` varchar(15) DEFAULT NULL,
  `payment_status` varchar(10) NOT NULL DEFAULT 'success',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `transaction_type` varchar(191) DEFAULT NULL,
  `order_details_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `translationable_type` varchar(191) NOT NULL,
  `translationable_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`translationable_type`, `translationable_id`, `locale`, `key`, `value`, `id`) VALUES
('App\\Model\\Product', 1, 'en', 'name', 'Heavy-duty Stainless Steel Gas Cooker', 1),
('App\\Model\\Product', 1, 'en', 'description', '“Heavy-duty stainless steel gas cooker designed for commercial kitchens, ensuring durability, high heat efficiency, and long-term performance.”', 2),
('App\\Model\\Product', 2, 'en', 'name', 'Smart Energy-Efficient Refrigerator', 3),
('App\\Model\\Product', 2, 'en', 'description', '“Maintain freshness with our Smart Energy-Efficient Refrigerator. Featuring advanced inverter technology, spacious compartments, and whisper-quiet operation.”', 4),
('App\\Model\\Product', 3, 'en', 'name', 'High-Performance Commercial Oven', 5),
('App\\Model\\Product', 3, 'en', 'description', '“Master the art of baking with our High-Performance Commercial Oven. Precision temperature control and even heat distribution for professional results every time.”', 6),
('App\\Model\\Product', 1, 'en', 'name', 'Heavy-duty Stainless Steel Gas Cooker', 7),
('App\\Model\\Product', 1, 'en', 'description', '“Heavy-duty stainless steel gas cooker designed for commercial kitchens, ensuring durability, high heat efficiency, and long-term performance.”', 8),
('App\\Model\\Product', 2, 'en', 'name', 'Smart Energy-Efficient Refrigerator', 9),
('App\\Model\\Product', 2, 'en', 'description', '“Maintain freshness with our Smart Energy-Efficient Refrigerator. Featuring advanced inverter technology, spacious compartments, and whisper-quiet operation.”', 10),
('App\\Model\\Product', 3, 'en', 'name', 'High-Performance Commercial Oven', 11),
('App\\Model\\Product', 3, 'en', 'description', '“Master the art of baking with our High-Performance Commercial Oven. Precision temperature control and even heat distribution for professional results every time.”', 12),
('App\\Model\\Product', 4, 'en', 'name', 'Insulated Ring Terminals (Blue)', 13),
('App\\Model\\Product', 4, 'en', 'description', 'Pre-insulated ring terminals, Blue color code.', 14),
('App\\Model\\Product', 5, 'en', 'name', 'Insulated Ring Terminals (Yellow)', 15),
('App\\Model\\Product', 5, 'en', 'description', 'Pre-insulated ring terminals, Yellow color code.', 16),
('App\\Model\\Product', 6, 'en', 'name', 'Nylon Cable Glands (White)', 17),
('App\\Model\\Product', 6, 'en', 'description', 'Nylon material cable glands, white color, IP68 waterproof rating.', 18),
('App\\Model\\Product', 7, 'en', 'name', 'Nylon Cable Glands (Black)', 19),
('App\\Model\\Product', 7, 'en', 'description', 'Nylon material cable glands, black color, IP68 waterproof rating.', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `phone` varchar(25) NOT NULL,
  `image` varchar(30) NOT NULL DEFAULT 'def.png',
  `email` varchar(80) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(80) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `street_address` varchar(250) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `house_no` varchar(50) DEFAULT NULL,
  `apartment_no` varchar(50) DEFAULT NULL,
  `cm_firebase_token` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `payment_card_last_four` varchar(191) DEFAULT NULL,
  `payment_card_brand` varchar(191) DEFAULT NULL,
  `payment_card_fawry_token` text DEFAULT NULL,
  `login_medium` varchar(191) DEFAULT NULL,
  `social_id` varchar(191) DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `temporary_token` varchar(191) DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `wallet_balance` double(8,2) DEFAULT NULL,
  `loyalty_point` double(8,2) DEFAULT NULL,
  `login_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `referral_code` varchar(255) DEFAULT NULL,
  `referred_by` int(11) DEFAULT NULL,
  `app_language` varchar(191) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `f_name`, `l_name`, `phone`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `street_address`, `country`, `city`, `zip`, `house_no`, `apartment_no`, `cm_firebase_token`, `is_active`, `payment_card_last_four`, `payment_card_brand`, `payment_card_fawry_token`, `login_medium`, `social_id`, `is_phone_verified`, `temporary_token`, `is_email_verified`, `wallet_balance`, `loyalty_point`, `login_hit_count`, `is_temp_blocked`, `temp_block_time`, `referral_code`, `referred_by`, `app_language`) VALUES
(0, 'walking customer', 'walking', 'customer', '000000000000', 'def.png', 'walking@customer.com', NULL, '', NULL, NULL, '2022-02-03 03:46:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 'en'),
(3, NULL, 'EMESUE', 'Nnaemeka Emmanuel', '09037331520', 'def.png', 'emmanuelemesue97@gmail.com', NULL, '$2y$10$BvE9RhwfJmwr2DMyKfqWluoWfpO0afNXg02UDcOPVDv5iOlAnQYvi', NULL, '2026-04-20 12:00:02', '2026-07-23 11:29:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 0, 0, NULL, 'YGSIRR8PYZAQRA1TLUS8', NULL, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` char(36) NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `debit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `admin_bonus` decimal(24,3) NOT NULL DEFAULT 0.000,
  `balance` decimal(24,3) NOT NULL DEFAULT 0.000,
  `transaction_type` varchar(191) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_methods`
--

CREATE TABLE `withdrawal_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(191) NOT NULL,
  `method_fields` text NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `amount` varchar(191) NOT NULL DEFAULT '0.00',
  `withdrawal_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `withdrawal_method_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `transaction_note` text DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_settings`
--
ALTER TABLE `addon_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_settings_id_index` (`id`);

--
-- Indexes for table `add_fund_bonus_categories`
--
ALTER TABLE `add_fund_bonus_categories`
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
-- Indexes for table `admin_wallet_histories`
--
ALTER TABLE `admin_wallet_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_slug_unique` (`slug`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_posts_slug_unique` (`slug`);

--
-- Indexes for table `blog_post_tag`
--
ALTER TABLE `blog_post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_post_tag_blog_post_id_foreign` (`blog_post_id`),
  ADD KEY `blog_post_tag_blog_tag_id_foreign` (`blog_tag_id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_tags_slug_unique` (`slug`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_shippings`
--
ALTER TABLE `cart_shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_shipping_costs`
--
ALTER TABLE `category_shipping_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chattings`
--
ALTER TABLE `chattings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_wallets`
--
ALTER TABLE `customer_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_wallet_histories`
--
ALTER TABLE `customer_wallet_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal_of_the_days`
--
ALTER TABLE `deal_of_the_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveryman_notifications`
--
ALTER TABLE `deliveryman_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveryman_wallets`
--
ALTER TABLE `deliveryman_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_country_codes`
--
ALTER TABLE `delivery_country_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_man_transactions`
--
ALTER TABLE `delivery_man_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_men`
--
ALTER TABLE `delivery_men`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_zip_codes`
--
ALTER TABLE `delivery_zip_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital_product_otp_verifications`
--
ALTER TABLE `digital_product_otp_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_deals`
--
ALTER TABLE `feature_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest_users`
--
ALTER TABLE `guest_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_topics`
--
ALTER TABLE `help_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `kitchen_inquiries`
--
ALTER TABLE `kitchen_inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loyalty_point_transactions`
--
ALTER TABLE `loyalty_point_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `most_demandeds`
--
ALTER TABLE `most_demandeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_messages`
--
ALTER TABLE `notification_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_seens`
--
ALTER TABLE `notification_seens`
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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_payment_methods`
--
ALTER TABLE `offline_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_delivery_verifications`
--
ALTER TABLE `order_delivery_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_expected_delivery_histories`
--
ALTER TABLE `order_expected_delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`identity`);

--
-- Indexes for table `paytabs_invoices`
--
ALTER TABLE `paytabs_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phone_or_email_verifications`
--
ALTER TABLE `phone_or_email_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_compares`
--
ALTER TABLE `product_compares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_requests`
--
ALTER TABLE `refund_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_statuses`
--
ALTER TABLE `refund_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_transactions`
--
ALTER TABLE `refund_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_ratings`
--
ALTER TABLE `review_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_functions`
--
ALTER TABLE `search_functions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sellers_email_unique` (`email`);

--
-- Indexes for table `seller_credentials`
--
ALTER TABLE `seller_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_wallets`
--
ALTER TABLE `seller_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_wallet_histories`
--
ALTER TABLE `seller_wallet_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_types`
--
ALTER TABLE `shipping_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_followers`
--
ALTER TABLE `shop_followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_medias`
--
ALTER TABLE `social_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_ticket_convs`
--
ALTER TABLE `support_ticket_convs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD UNIQUE KEY `transactions_id_unique` (`id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

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
-- Indexes for table `withdrawal_methods`
--
ALTER TABLE `withdrawal_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_fund_bonus_categories`
--
ALTER TABLE `add_fund_bonus_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_wallets`
--
ALTER TABLE `admin_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_wallet_histories`
--
ALTER TABLE `admin_wallet_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_post_tag`
--
ALTER TABLE `blog_post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart_shippings`
--
ALTER TABLE `cart_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `category_shipping_costs`
--
ALTER TABLE `category_shipping_costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chattings`
--
ALTER TABLE `chattings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_wallets`
--
ALTER TABLE `customer_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_wallet_histories`
--
ALTER TABLE `customer_wallet_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_of_the_days`
--
ALTER TABLE `deal_of_the_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveryman_notifications`
--
ALTER TABLE `deliveryman_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveryman_wallets`
--
ALTER TABLE `deliveryman_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_country_codes`
--
ALTER TABLE `delivery_country_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_man_transactions`
--
ALTER TABLE `delivery_man_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_men`
--
ALTER TABLE `delivery_men`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_zip_codes`
--
ALTER TABLE `delivery_zip_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `digital_product_otp_verifications`
--
ALTER TABLE `digital_product_otp_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feature_deals`
--
ALTER TABLE `feature_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guest_users`
--
ALTER TABLE `guest_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `help_topics`
--
ALTER TABLE `help_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kitchen_inquiries`
--
ALTER TABLE `kitchen_inquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loyalty_point_transactions`
--
ALTER TABLE `loyalty_point_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `most_demandeds`
--
ALTER TABLE `most_demandeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_messages`
--
ALTER TABLE `notification_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `notification_seens`
--
ALTER TABLE `notification_seens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offline_payments`
--
ALTER TABLE `offline_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offline_payment_methods`
--
ALTER TABLE `offline_payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100003;

--
-- AUTO_INCREMENT for table `order_delivery_verifications`
--
ALTER TABLE `order_delivery_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_expected_delivery_histories`
--
ALTER TABLE `order_expected_delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paytabs_invoices`
--
ALTER TABLE `paytabs_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_or_email_verifications`
--
ALTER TABLE `phone_or_email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=659;

--
-- AUTO_INCREMENT for table `product_compares`
--
ALTER TABLE `product_compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_requests`
--
ALTER TABLE `refund_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_statuses`
--
ALTER TABLE `refund_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_transactions`
--
ALTER TABLE `refund_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_ratings`
--
ALTER TABLE `review_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `search_functions`
--
ALTER TABLE `search_functions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_credentials`
--
ALTER TABLE `seller_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_wallets`
--
ALTER TABLE `seller_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_wallet_histories`
--
ALTER TABLE `seller_wallet_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shipping_types`
--
ALTER TABLE `shipping_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_followers`
--
ALTER TABLE `shop_followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_medias`
--
ALTER TABLE `social_medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `support_ticket_convs`
--
ALTER TABLE `support_ticket_convs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdrawal_methods`
--
ALTER TABLE `withdrawal_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_post_tag`
--
ALTER TABLE `blog_post_tag`
  ADD CONSTRAINT `blog_post_tag_blog_post_id_foreign` FOREIGN KEY (`blog_post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_post_tag_blog_tag_id_foreign` FOREIGN KEY (`blog_tag_id`) REFERENCES `blog_tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
