-- MySQL dump 10.13  Distrib 8.4.4, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: farmart
-- ------------------------------------------------------
-- Server version	8.4.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'0ydFKQTUtmCp6O1nSy2tw1x9BkNqibuI',1,'2025-06-10 07:57:09','2025-06-10 07:57:09','2025-06-10 07:57:09');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2030-06-10 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2025-06-10 07:58:04','2025-06-10 07:58:04',1,NULL,NULL,NULL,NULL),(2,'Homepage middle 1','2030-06-10 00:00:00','not_set','IZ6WU8KUALYD','promotion/2.png','/products',0,2,'published','2025-06-10 07:58:04','2025-06-10 07:58:04',1,NULL,NULL,NULL,NULL),(3,'Homepage middle 2','2030-06-10 00:00:00','not_set','ILSFJVYFGCPZ','promotion/3.png','/products',0,3,'published','2025-06-10 07:58:04','2025-06-10 07:58:04',1,NULL,NULL,NULL,NULL),(4,'Homepage middle 3','2030-06-10 00:00:00','not_set','ZDOZUZZIU7FT','promotion/4.png','/products',0,4,'published','2025-06-10 07:58:04','2025-06-10 07:58:04',1,NULL,NULL,NULL,NULL),(5,'Products list 1','2030-06-10 00:00:00','not_set','ZDOZUZZIU7FZ','promotion/5.png','/products/beat-headphone',0,5,'published','2025-06-10 07:58:04','2025-06-10 07:58:04',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` bigint unsigned NOT NULL,
  `actor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Ratione aut dignissimos dolorem quae in dolorum. Porro ut neque distinctio exercitationem saepe iste eos ea. Non laboriosam ab ex illo. Sint qui odio autem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2025-06-10 07:58:02','2025-06-10 07:58:02'),(2,'Fashion',0,'Fugiat ratione quasi dolorum. Totam debitis excepturi at sapiente ea quo dicta et. Necessitatibus tenetur qui enim laudantium molestiae et. Qui adipisci dignissimos illo repellendus.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-06-10 07:58:02','2025-06-10 07:58:02'),(3,'Electronic',0,'Eveniet beatae deleniti quas eius corporis fuga dicta. Minus qui placeat consequatur quasi laboriosam. Magnam perspiciatis repudiandae explicabo sed.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-06-10 07:58:02','2025-06-10 07:58:02'),(4,'Commercial',0,'Corrupti at sint adipisci reiciendis eos adipisci reiciendis temporibus. Omnis illo sint fugiat non necessitatibus voluptatum officia. Maxime voluptates ducimus ut a quo nostrum qui non.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-06-10 07:58:02','2025-06-10 07:58:02');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Tanner Nader','cremin.carissa@example.com','(747) 607-4506','4775 Nat Motorway Suite 474\nNew Kieranville, IA 49219','Ut quia voluptas molestias qui voluptatibus.','Blanditiis qui cupiditate aut et. Error dignissimos provident sapiente sunt. Aut expedita quibusdam quibusdam mollitia dolor. Repudiandae nobis officia voluptas. Molestiae voluptatem iure alias impedit explicabo voluptas tempora. Dolor totam assumenda et ut sit eveniet eos. Non quaerat aut a dolor. Voluptates beatae assumenda occaecati. Numquam rem ut voluptas rerum earum dicta. Consequatur minima adipisci illum praesentium. Natus ab ea doloremque corporis voluptas.',NULL,'unread','2025-06-10 07:58:00','2025-06-10 07:58:00'),(2,'Mr. Leon Okuneva','wolff.raina@example.org','820.435.6925','380 Benedict Drives\nLake Herman, OR 73184','Et qui id illo commodi et quidem accusamus ut.','Culpa consectetur qui omnis reprehenderit laboriosam totam. Quo occaecati nemo similique consequatur aut fugit. Est doloribus voluptates odit id corporis. Eum sint omnis quis dolorem. Rerum deleniti ut expedita perferendis quia quidem repellendus non. Voluptatibus aut blanditiis dolor doloremque animi. Sunt consequatur esse quasi iste libero. Ut nisi aut quam maiores.',NULL,'read','2025-06-10 07:58:00','2025-06-10 07:58:00'),(3,'Mike Funk','ezra37@example.net','972.503.2826','29012 Stehr Isle\nNew Theashire, DE 85760-4909','Reprehenderit magnam soluta id totam enim dolor.','Sint repudiandae veniam molestiae eum voluptatem deserunt optio. Doloremque ea enim et iure eos qui velit. Rerum velit non numquam incidunt. Ea quis aut optio dolor et eos neque. Enim labore ad deserunt hic qui sed. Quos voluptas dolorum repellat recusandae et quae est. Doloremque reiciendis quo iure rem. Exercitationem quia et ea fuga optio. Dicta optio laborum qui deleniti et minima dolorum quasi.',NULL,'read','2025-06-10 07:58:00','2025-06-10 07:58:00'),(4,'Prof. Bobbie Pfannerstill','mokon@example.net','+16238575387','20937 Cartwright Walk\nDenisstad, AL 26387-8529','Fugit a quia ipsum.','Rerum libero et dolorem repellat nobis molestias provident. Voluptatem eos facilis consequatur dolor. Officia maxime dolorem aut cupiditate modi quod officia. Soluta neque magni facilis molestiae qui. Hic eos animi consequatur soluta possimus aut quod. Ut dicta consequatur illo atque laboriosam. Aut harum et dolore nobis vitae voluptatum. Eligendi aut nostrum eveniet et id. Aut qui fugiat consequuntur ut omnis quisquam corporis. Iusto placeat iste ut beatae. Reprehenderit fuga sed fugit sunt.',NULL,'read','2025-06-10 07:58:00','2025-06-10 07:58:00'),(5,'Tara Lynch','dasia98@example.org','1-283-799-5005','5456 Ebert Row Apt. 985\nSouth Cecilhaven, VA 18930','Velit in minus in soluta dolores odit quia.','Est ipsam quo iure excepturi. Porro error excepturi aut qui. Dolor natus qui consectetur dolores in accusamus. Consequatur occaecati non ut ut ducimus facilis consectetur. A rerum incidunt quisquam et. Doloribus laborum quis repudiandae dignissimos qui dolores laudantium tenetur. Qui quis molestiae dolor dolor excepturi id eius voluptas. Possimus quaerat id debitis qui.',NULL,'read','2025-06-10 07:58:00','2025-06-10 07:58:00'),(6,'Taya Runolfsson','raina.schinner@example.org','(361) 992-7437','12116 Samanta Roads Suite 136\nJosephville, NC 63734-6609','Eum dolor adipisci atque dolores sunt.','Praesentium ut et qui nulla. Ut magnam qui et quia odit nam. Incidunt dolore dignissimos dolorum est illum reprehenderit corporis. Architecto et blanditiis ut est. Ex dolor voluptatem qui autem. Et est nisi amet aut soluta. Ut beatae possimus ut. Nesciunt eius et dolorum. Numquam qui aliquam quibusdam ex a nihil delectus. Dolor aut ipsum nesciunt. Non corporis nulla repellendus ut odit. Ipsa voluptatem a nostrum vel fuga.',NULL,'unread','2025-06-10 07:58:00','2025-06-10 07:58:00'),(7,'Cade Heller','vito68@example.net','916-909-5129','13155 Isabella Park Apt. 542\nNew Taureanborough, TN 32109-0196','Consequuntur pariatur est exercitationem aut.','In quae nam natus ut. Ut aperiam voluptate asperiores autem. Possimus quo enim ad exercitationem. Molestiae facere molestias a ea laudantium illo. Mollitia ad consequatur est omnis fugit quis autem. Voluptas est vel magni quo. Voluptas ut soluta vero non dignissimos aut. Tempora est omnis in et omnis debitis tempora. Tempora ut iusto tenetur quasi cupiditate voluptate. Minima sed dolorem quaerat voluptate et nihil.',NULL,'read','2025-06-10 07:58:00','2025-06-10 07:58:00'),(8,'Brycen Kuhic DVM','johnston.royce@example.net','1-765-272-1082','65236 Dena Loop Apt. 095\nPort Margarettmouth, NH 52195','Dolorum nisi et quisquam.','Fugiat laboriosam ea officiis id libero. Modi facere commodi molestiae quia modi sit. Provident sunt ut architecto reiciendis voluptatum quos. Libero est consequuntur deleniti id eum fugiat. Accusantium tenetur placeat dolore quia. Id in quis et quia. Voluptas ut commodi laboriosam odio saepe qui. Impedit necessitatibus suscipit ea dolor ut iure. Enim autem et voluptates ex. Eum nisi consectetur ut illo sit quia.',NULL,'unread','2025-06-10 07:58:00','2025-06-10 07:58:00'),(9,'Izaiah VonRueden','francesco.cole@example.com','(541) 773-5958','246 Kenton Turnpike\nMcDermottshire, FL 42176','Dolor rerum tenetur qui eligendi sunt.','Sit sunt officia est illo magnam eligendi corrupti. Sint libero illo qui et vero ut. Non aspernatur voluptatem et ab. Enim et hic ea voluptas. Rerum ea voluptatem modi excepturi beatae et quis. Nihil consequatur natus voluptate odit cumque totam repudiandae. Dolor quisquam est et. Porro veniam optio quae dolore debitis ullam. Voluptas laboriosam mollitia quae voluptas ab. Et cum et voluptatem est voluptatem laborum et harum. Aut qui et eos amet maiores provident enim.',NULL,'read','2025-06-10 07:58:00','2025-06-10 07:58:00'),(10,'Mr. Keagan Bergnaum DVM','fweissnat@example.net','+1-417-313-1851','6304 Evalyn Glen Suite 858\nPort Name, CO 60764-6891','Occaecati voluptas cupiditate blanditiis et.','Vitae quo ut rerum voluptatem. Maiores est facere esse consequuntur dolorem. Necessitatibus ea repellat praesentium in sunt quisquam. Qui porro perspiciatis aspernatur ipsam voluptatum. Eaque molestiae minima repellendus aut et esse accusantium. Ipsum omnis eaque ab necessitatibus. Quo officiis quis est assumenda dolore maxime in. Est vitae omnis quae. Aut dolorem optio fuga quia asperiores esse. Omnis numquam amet dignissimos illo.',NULL,'unread','2025-06-10 07:58:00','2025-06-10 07:58:00');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,'brands/1.png','published',0,1,'2025-06-10 07:57:10','2025-06-10 07:57:10'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,'brands/2.png','published',1,1,'2025-06-10 07:57:10','2025-06-10 07:57:10'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'brands/3.png','published',2,1,'2025-06-10 07:57:10','2025-06-10 07:57:10'),(4,'Farmart','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'brands/4.png','published',3,1,'2025-06-10 07:57:10','2025-06-10 07:57:10'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'brands/3.png','published',4,1,'2025-06-10 07:57:10','2025-06-10 07:57:10');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2025-06-10 07:57:10','2025-06-10 07:57:10'),(2,'EUR','€',0,2,1,0,0.84,'2025-06-10 07:57:10','2025-06-10 07:57:10'),(3,'VND','₫',0,0,2,0,23203,'2025-06-10 07:57:10','2025-06-10 07:57:10'),(4,'NGN','₦',1,2,2,0,895.52,'2025-06-10 07:57:10','2025-06-10 07:57:10');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Norene Bergstrom II','customer@botble.com','+16789313963','KR','Arizona','Port Dejabury','212 Lebsack Mount',1,1,'2025-06-10 07:57:17','2025-06-10 07:57:17','75077'),(2,'Norene Bergstrom II','customer@botble.com','+15803355459','BT','Connecticut','Dimitriland','9353 Maybell Stravenue',1,0,'2025-06-10 07:57:17','2025-06-10 07:57:17','58438'),(3,'Dr. Keegan Schuster Jr.','vendor@botble.com','+18202480339','VA','Missouri','Gleichnerborough','190 Marquardt Keys Apt. 648',2,1,'2025-06-10 07:57:18','2025-06-10 07:57:18','08605-4032'),(4,'Dr. Keegan Schuster Jr.','vendor@botble.com','+19178129299','BT','Alabama','Nelliebury','62905 Fatima Port Suite 528',2,0,'2025-06-10 07:57:18','2025-06-10 07:57:18','29897'),(5,'Murray Lebsack','konopelski.timmy@example.net','+15628013127','DO','Colorado','Boscostad','488 Darwin Ridge',3,1,'2025-06-10 07:57:18','2025-06-10 07:57:18','67624'),(6,'Prof. Casey Kirlin V','zwill@example.net','+17747457659','YE','Illinois','Lake Carleeburgh','43010 Goldner Creek',4,1,'2025-06-10 07:57:19','2025-06-10 07:57:19','58013'),(7,'Myron Klocko','sschmeler@example.org','+16097660841','SO','Arizona','East Preston','5849 Wyman Mountain Suite 689',5,1,'2025-06-10 07:57:20','2025-06-10 07:57:20','26848-9702'),(8,'Brendan Bruen','pearlie01@example.net','+13253178111','JM','North Carolina','Herzoghaven','27749 Swaniawski Crescent',6,1,'2025-06-10 07:57:20','2025-06-10 07:57:20','76662'),(9,'Carson Thiel','kendrick.kreiger@example.com','+19412758935','PL','Virginia','Medhurstside','592 Larson Forge',7,1,'2025-06-10 07:57:21','2025-06-10 07:57:21','39716'),(10,'Dovie Weissnat','parker.donato@example.org','+14588309486','CD','California','Schusterville','279 Quinn Square',8,1,'2025-06-10 07:57:22','2025-06-10 07:57:22','22835'),(11,'Alf Cole','fhansen@example.org','+15414137973','ST','Rhode Island','Lake Cicerotown','275 Andrew Viaduct',9,1,'2025-06-10 07:57:24','2025-06-10 07:57:24','66720'),(12,'Mrs. Sasha Daniel','fisher.hazle@example.com','+16788899069','EC','New Mexico','Damienside','150 Kautzer Crescent',10,1,'2025-06-10 07:57:25','2025-06-10 07:57:25','05023');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `block_reason` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `stripe_account_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_account_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Norene Bergstrom II','customer@botble.com','$2y$12$s2zqjQvQKLmno/eLA4x/f.vRtdBmZhJVQxaeCDPuoGQnKv8iRXYlG','customers/8.jpg','1983-06-03','+17124930448',NULL,'2025-06-10 07:57:17','2025-06-10 07:57:17','2025-06-10 14:57:16',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(2,'Dr. Keegan Schuster Jr.','vendor@botble.com','$2y$12$ykte5y.uBZYc7HZXFdMLTe/EOs1hhdC/oF//1hfWUtnv5Z.i6p10.','customers/7.jpg','1993-05-21','+18788992890',NULL,'2025-06-10 07:57:18','2025-06-10 07:57:53','2025-06-10 14:57:16',NULL,'activated',NULL,NULL,1,'2025-06-10 14:57:53',NULL,0),(3,'Murray Lebsack','konopelski.timmy@example.net','$2y$12$ZjbpUFkTWpCrsC5Usk3w4eKhL9FAit4YBZxNe3XDsn9s8UwAdLQ0a','customers/1.jpg','2004-05-22','+16899514973',NULL,'2025-06-10 07:57:18','2025-06-10 07:57:54','2025-06-10 14:57:16',NULL,'activated',NULL,NULL,1,'2025-06-10 14:57:53',NULL,0),(4,'Prof. Casey Kirlin V','zwill@example.net','$2y$12$ZiG.CEgLl/PXMNXQh4oE/OoOcPgyA7Rf1BoXmhFfmYpK3LVO9G9xe','customers/2.jpg','1978-05-13','+15208300576',NULL,'2025-06-10 07:57:19','2025-06-10 07:57:55','2025-06-10 14:57:16',NULL,'activated',NULL,NULL,1,'2025-06-10 14:57:53',NULL,0),(5,'Myron Klocko','sschmeler@example.org','$2y$12$W1EE7vfKvVks4O/Cc0OkZOVe0hRh3ipgD7SYiZhJZnD5QtaUtI6D.','customers/3.jpg','2001-05-16','+16465702954',NULL,'2025-06-10 07:57:20','2025-06-10 07:57:56','2025-06-10 14:57:16',NULL,'activated',NULL,NULL,1,'2025-06-10 14:57:53',NULL,0),(6,'Brendan Bruen','pearlie01@example.net','$2y$12$wR1NtagIIHB3sO42u8gISenoJeJEkAkuBKDUlxB3fsx5lbR0iLZEK','customers/4.jpg','2003-05-31','+15519584684',NULL,'2025-06-10 07:57:20','2025-06-10 07:57:57','2025-06-10 14:57:16',NULL,'activated',NULL,NULL,1,'2025-06-10 14:57:53',NULL,0),(7,'Carson Thiel','kendrick.kreiger@example.com','$2y$12$Mh8wO8N2gfqyFSpyk./QEO8Ef7odcvM9t.hYNfhh19uMR7P4sUzAG','customers/5.jpg','2003-05-16','+13529558152',NULL,'2025-06-10 07:57:21','2025-06-10 07:57:58','2025-06-10 14:57:16',NULL,'activated',NULL,NULL,1,'2025-06-10 14:57:53',NULL,0),(8,'Dovie Weissnat','parker.donato@example.org','$2y$12$hk79BJRCrJ1qIOkOc2RksOGjPC70zDeT0XYxM9rBpjJxqrbWJV1/u','customers/6.jpg','1991-05-20','+17854177452',NULL,'2025-06-10 07:57:22','2025-06-10 07:57:59','2025-06-10 14:57:16',NULL,'activated',NULL,NULL,1,'2025-06-10 14:57:53',NULL,0),(9,'Alf Cole','fhansen@example.org','$2y$12$3uz1rSovXBLFLHA.LMTBUOFKSPtD8G9RODq6jgoqzdhzE/FpmTOzm','customers/7.jpg','1984-05-19','+19568709509',NULL,'2025-06-10 07:57:24','2025-06-10 07:57:59','2025-06-10 14:57:16',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(10,'Mrs. Sasha Daniel','fisher.hazle@example.com','$2y$12$NFBA.NFGcOIxDB676yAmUO1WJ1rxNaVrNp8/kZGZmiOoV3RC40sWq','customers/8.jpg','2003-05-19','+15056687123',NULL,'2025-06-10 07:57:25','2025-06-10 07:57:59','2025-06-10 14:57:16',NULL,'activated',NULL,NULL,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','91QFG0XNGP2L','2025-06-09 14:57:51','2025-07-03 14:57:51',NULL,0,529,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-06-10 07:57:51','2025-06-10 07:57:51',NULL,NULL),(2,'Discount 2','ZFNNKH1XSAT5','2025-06-09 14:57:51','2025-06-21 14:57:51',NULL,0,352,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-06-10 07:57:51','2025-06-10 07:57:51',NULL,NULL),(3,'Discount 3','WMBXWRVPX1FC','2025-06-09 14:57:51',NULL,NULL,0,125,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-06-10 07:57:51','2025-06-10 07:57:51',NULL,NULL),(4,'Discount 4','YHYCPMWS3OLH','2025-06-09 14:57:51',NULL,NULL,0,94,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-06-10 07:57:51','2025-06-10 07:57:51',NULL,NULL),(5,'Discount 5','LP4NFBXCDUCD','2025-06-09 14:57:51',NULL,NULL,0,55,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-06-10 07:57:51','2025-06-10 07:57:51',NULL,NULL),(6,'Discount 6','YFNDKFXJ7ZFB','2025-06-09 14:57:51','2025-07-09 14:57:51',NULL,0,40,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-06-10 07:57:51','2025-06-10 07:57:51',NULL,NULL),(7,'Discount 7','YH9AY2WJLREG','2025-06-09 14:57:51',NULL,NULL,0,272,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-06-10 07:57:51','2025-06-10 07:57:51',NULL,NULL),(8,'Discount 8','ERQSIPNGQYFI','2025-06-09 14:57:51',NULL,NULL,0,693,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-06-10 07:57:51','2025-06-10 07:57:51',NULL,NULL),(9,'Discount 9','XEWIGOOVOMOM','2025-06-09 14:57:51',NULL,NULL,0,144,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-06-10 07:57:51','2025-06-10 07:57:51',NULL,NULL),(10,'Discount 10','DGHQRWXVCJCB','2025-06-09 14:57:51',NULL,NULL,0,387,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-06-10 07:57:51','2025-06-10 07:57:51',NULL,NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,32,121.54,9,1),(1,10,441.2,11,5),(1,54,848.22,10,3),(1,34,76.48,12,5),(1,59,217.35,13,5),(1,25,928.08,17,1),(1,41,36.45,13,5),(1,16,90.82,20,5),(1,50,16.06,6,3),(1,43,241.12,16,1);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2025-07-10 00:00:00','published','2025-06-10 07:57:51','2025-06-10 07:57:51');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2025-06-10 07:57:14','2025-06-10 07:57:14'),(2,1,'2 Year',10,9999,0,'2025-06-10 07:57:14','2025-06-10 07:57:14'),(3,1,'3 Year',20,9999,0,'2025-06-10 07:57:14','2025-06-10 07:57:14'),(4,2,'4GB',0,9999,0,'2025-06-10 07:57:14','2025-06-10 07:57:14'),(5,2,'8GB',10,9999,0,'2025-06-10 07:57:14','2025-06-10 07:57:14'),(6,2,'16GB',20,9999,0,'2025-06-10 07:57:14','2025-06-10 07:57:14'),(7,3,'Core i5',0,9999,0,'2025-06-10 07:57:14','2025-06-10 07:57:14'),(8,3,'Core i7',10,9999,0,'2025-06-10 07:57:14','2025-06-10 07:57:14'),(9,3,'Core i9',20,9999,0,'2025-06-10 07:57:14','2025-06-10 07:57:14'),(10,4,'128GB',0,9999,0,'2025-06-10 07:57:14','2025-06-10 07:57:14'),(11,4,'256GB',10,9999,0,'2025-06-10 07:57:14','2025-06-10 07:57:14'),(12,4,'512GB',20,9999,0,'2025-06-10 07:57:14','2025-06-10 07:57:14');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-06-10 07:57:14','2025-06-10 07:57:14'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-06-10 07:57:14','2025-06-10 07:57:14'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-06-10 07:57:14','2025-06-10 07:57:14'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2025-06-10 07:57:14','2025-06-10 07:57:14');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double DEFAULT '0',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2025-06-10 07:57:13','2025-06-10 07:57:13',0),(2,'Size','size','text',1,1,1,'published',1,'2025-06-10 07:57:13','2025-06-10 07:57:13',0),(3,'Weight','weight','text',1,1,1,'published',0,'2025-06-10 07:57:13','2025-06-10 07:57:13',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2025-06-10 07:57:13','2025-06-10 07:57:13',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(2,1,'Blue','blue','#333333',NULL,0,2,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(3,1,'Red','red','#DA323F',NULL,0,3,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(4,1,'Black','black','#2F366C',NULL,0,4,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(6,2,'S','s',NULL,NULL,1,1,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(7,2,'M','m',NULL,NULL,0,2,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(8,2,'L','l',NULL,NULL,0,3,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(9,2,'XL','xl',NULL,NULL,0,4,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2025-06-10 07:57:13','2025-06-10 07:57:13'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2025-06-10 07:57:13','2025-06-10 07:57:13');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Fruits & Vegetables',0,NULL,'published',0,'product-categories/1.png',1,'2025-06-10 07:57:11','2025-06-10 07:57:11','icon-star',NULL),(2,'Fruits',1,NULL,'published',0,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(3,'Apples',2,NULL,'published',0,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(4,'Bananas',2,NULL,'published',1,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(5,'Berries',2,NULL,'published',2,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(6,'Oranges & Easy Peelers',2,NULL,'published',3,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(7,'Grapes',2,NULL,'published',4,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(8,'Lemons & Limes',2,NULL,'published',5,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(9,'Peaches & Nectarines',2,NULL,'published',6,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(10,'Pears',2,NULL,'published',7,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(11,'Melon',2,NULL,'published',8,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(12,'Avocados',2,NULL,'published',9,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(13,'Plums & Apricots',2,NULL,'published',10,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(14,'Vegetables',1,NULL,'published',1,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(15,'Potatoes',14,NULL,'published',0,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(16,'Carrots & Root Vegetables',14,NULL,'published',1,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(17,'Broccoli & Cauliflower',14,NULL,'published',2,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(18,'Cabbage, Spinach & Greens',14,NULL,'published',3,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(19,'Onions, Leeks & Garlic',14,NULL,'published',4,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(20,'Mushrooms',14,NULL,'published',5,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(21,'Tomatoes',14,NULL,'published',6,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(22,'Beans, Peas & Sweetcorn',14,NULL,'published',7,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(23,'Freshly Drink Orange Juice',14,NULL,'published',8,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(24,'Breads Sweets',0,NULL,'published',1,'product-categories/2.png',1,'2025-06-10 07:57:11','2025-06-10 07:57:11','icon-bread',NULL),(25,'Crisps, Snacks & Nuts',24,NULL,'published',0,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(26,'Crisps & Popcorn',25,NULL,'published',0,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(27,'Nuts & Seeds',25,NULL,'published',1,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(28,'Lighter Options',25,NULL,'published',2,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(29,'Cereal Bars',25,NULL,'published',3,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(30,'Breadsticks & Pretzels',25,NULL,'published',4,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(31,'Fruit Snacking',25,NULL,'published',5,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(32,'Rice & Corn Cakes',25,NULL,'published',6,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(33,'Protein & Energy Snacks',25,NULL,'published',7,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(34,'Toddler Snacks',25,NULL,'published',8,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(35,'Meat Snacks',25,NULL,'published',9,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(36,'Beans',25,NULL,'published',10,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(37,'Lentils',25,NULL,'published',11,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(38,'Chickpeas',25,NULL,'published',12,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(39,'Tins & Cans',24,NULL,'published',1,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(40,'Tomatoes',39,NULL,'published',0,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(41,'Baked Beans, Spaghetti',39,NULL,'published',1,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(42,'Fish',39,NULL,'published',2,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(43,'Beans & Pulses',39,NULL,'published',3,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(44,'Fruit',39,NULL,'published',4,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(45,'Coconut Milk & Cream',39,NULL,'published',5,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(46,'Lighter Options',39,NULL,'published',6,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(47,'Olives',39,NULL,'published',7,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(48,'Sweetcorn',39,NULL,'published',8,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(49,'Carrots',39,NULL,'published',9,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(50,'Peas',39,NULL,'published',10,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(51,'Mixed Vegetables',39,NULL,'published',11,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(52,'Frozen Seafoods',0,NULL,'published',2,'product-categories/3.png',1,'2025-06-10 07:57:11','2025-06-10 07:57:11','icon-hamburger',NULL),(53,'Raw Meats',0,NULL,'published',3,'product-categories/4.png',1,'2025-06-10 07:57:11','2025-06-10 07:57:11','icon-steak',NULL),(54,'Wines & Alcohol Drinks',0,NULL,'published',4,'product-categories/5.png',1,'2025-06-10 07:57:11','2025-06-10 07:57:11','icon-glass',NULL),(55,'Ready Meals',54,NULL,'published',0,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(56,'Meals for 1',55,NULL,'published',0,NULL,0,'2025-06-10 07:57:11','2025-06-10 07:57:11',NULL,NULL),(57,'Meals for 2',55,NULL,'published',1,NULL,0,'2025-06-10 07:57:12','2025-06-10 07:57:12',NULL,NULL),(58,'Indian',55,NULL,'published',2,NULL,0,'2025-06-10 07:57:12','2025-06-10 07:57:12',NULL,NULL),(59,'Italian',55,NULL,'published',3,NULL,0,'2025-06-10 07:57:12','2025-06-10 07:57:12',NULL,NULL),(60,'Chinese',55,NULL,'published',4,NULL,0,'2025-06-10 07:57:12','2025-06-10 07:57:12',NULL,NULL),(61,'Traditional British',55,NULL,'published',5,NULL,0,'2025-06-10 07:57:12','2025-06-10 07:57:12',NULL,NULL),(62,'Thai & Oriental',55,NULL,'published',6,NULL,0,'2025-06-10 07:57:12','2025-06-10 07:57:12',NULL,NULL),(63,'Mediterranean & Moroccan',55,NULL,'published',7,NULL,0,'2025-06-10 07:57:12','2025-06-10 07:57:12',NULL,NULL),(64,'Mexican & Caribbean',55,NULL,'published',8,NULL,0,'2025-06-10 07:57:12','2025-06-10 07:57:12',NULL,NULL),(65,'Lighter Meals',55,NULL,'published',9,NULL,0,'2025-06-10 07:57:12','2025-06-10 07:57:12',NULL,NULL),(66,'Lunch & Veg Pots',55,NULL,'published',10,NULL,0,'2025-06-10 07:57:12','2025-06-10 07:57:12',NULL,NULL),(67,'Salad & Herbs',54,NULL,'published',1,NULL,0,'2025-06-10 07:57:12','2025-06-10 07:57:12',NULL,NULL),(68,'Salad Bags',67,NULL,'published',0,NULL,0,'2025-06-10 07:57:12','2025-06-10 07:57:12',NULL,NULL),(69,'Cucumber',67,NULL,'published',1,NULL,0,'2025-06-10 07:57:12','2025-06-10 07:57:12',NULL,NULL),(70,'Tomatoes',67,NULL,'published',2,NULL,0,'2025-06-10 07:57:12','2025-06-10 07:57:12',NULL,NULL),(71,'Lettuce',67,NULL,'published',3,NULL,0,'2025-06-10 07:57:12','2025-06-10 07:57:12',NULL,NULL),(72,'Lunch Salad Bowls',67,NULL,'published',4,NULL,0,'2025-06-10 07:57:13','2025-06-10 07:57:13',NULL,NULL),(73,'Lunch Salad Bowls',67,NULL,'published',5,NULL,0,'2025-06-10 07:57:13','2025-06-10 07:57:13',NULL,NULL),(74,'Fresh Herbs',67,NULL,'published',6,NULL,0,'2025-06-10 07:57:13','2025-06-10 07:57:13',NULL,NULL),(75,'Avocados',67,NULL,'published',7,NULL,0,'2025-06-10 07:57:13','2025-06-10 07:57:13',NULL,NULL),(76,'Peppers',67,NULL,'published',8,NULL,0,'2025-06-10 07:57:13','2025-06-10 07:57:13',NULL,NULL),(77,'Coleslaw & Potato Salad',67,NULL,'published',9,NULL,0,'2025-06-10 07:57:13','2025-06-10 07:57:13',NULL,NULL),(78,'Spring Onions',67,NULL,'published',10,NULL,0,'2025-06-10 07:57:13','2025-06-10 07:57:13',NULL,NULL),(79,'Chilli, Ginger & Garlic',67,NULL,'published',11,NULL,0,'2025-06-10 07:57:13','2025-06-10 07:57:13',NULL,NULL),(80,'Tea & Coffee',0,NULL,'published',5,'product-categories/6.png',1,'2025-06-10 07:57:13','2025-06-10 07:57:13','icon-teacup',NULL),(81,'Milks and Dairies',0,NULL,'published',6,'product-categories/7.png',1,'2025-06-10 07:57:13','2025-06-10 07:57:13','icon-coffee-cup',NULL),(82,'Pet Foods',0,NULL,'published',7,'product-categories/8.png',1,'2025-06-10 07:57:13','2025-06-10 07:57:13','icon-hotdog',NULL),(83,'Food Cupboard',0,NULL,'published',8,'product-categories/1.png',1,'2025-06-10 07:57:13','2025-06-10 07:57:13','icon-cheese',NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,28),(1,29),(1,33),(1,39),(1,57),(1,65),(2,15),(2,41),(3,14),(3,30),(3,58),(3,63),(4,9),(4,13),(4,23),(4,28),(4,44),(4,53),(4,61),(5,11),(5,28),(5,40),(5,41),(5,55),(6,45),(6,54),(7,38),(7,64),(8,1),(8,12),(8,19),(8,31),(8,39),(8,44),(9,63),(10,8),(10,43),(11,6),(11,32),(11,54),(12,59),(13,9),(13,26),(13,41),(13,55),(14,10),(14,14),(14,29),(14,31),(15,1),(15,10),(15,14),(15,24),(16,1),(16,43),(17,35),(17,46),(18,26),(18,37),(18,49),(19,6),(19,13),(19,33),(19,59),(20,17),(20,19),(20,36),(20,37),(20,52),(21,8),(21,23),(21,38),(21,53),(21,58),(21,63),(22,25),(22,51),(23,5),(23,16),(23,34),(23,49),(23,51),(23,57),(24,20),(24,27),(24,40),(24,57),(24,64),(25,4),(25,33),(25,36),(27,6),(27,14),(27,18),(27,30),(27,31),(27,55),(27,61),(27,65),(28,22),(28,59),(28,62),(29,8),(29,45),(29,58),(30,2),(30,60),(31,1),(31,12),(31,44),(31,60),(32,24),(32,47),(32,54),(33,20),(33,50),(33,65),(34,47),(34,60),(34,63),(36,7),(36,20),(37,3),(37,25),(37,34),(38,27),(38,29),(38,40),(38,53),(39,18),(39,25),(39,56),(40,12),(40,27),(40,30),(40,35),(40,48),(42,15),(42,48),(42,49),(42,62),(43,8),(43,16),(43,34),(43,55),(43,56),(43,62),(44,11),(44,43),(44,60),(45,21),(45,37),(45,42),(46,7),(46,32),(46,64),(47,47),(48,15),(48,17),(48,23),(49,16),(49,32),(49,56),(50,12),(50,52),(51,4),(51,7),(51,9),(51,11),(52,16),(52,17),(52,42),(52,50),(52,61),(53,2),(53,7),(53,18),(53,19),(53,21),(53,32),(54,5),(54,20),(54,27),(54,38),(54,41),(55,9),(55,35),(56,18),(56,39),(56,46),(57,5),(57,21),(58,17),(59,29),(61,10),(61,39),(62,15),(62,22),(62,45),(62,46),(62,56),(63,51),(63,53),(64,3),(64,4),(64,59),(65,13),(65,23),(65,38),(65,58),(65,61),(66,31),(66,37),(67,11),(68,45),(68,50),(69,30),(69,43),(70,13),(70,22),(70,24),(70,28),(70,65),(71,26),(72,2),(72,3),(72,36),(72,47),(72,48),(72,57),(73,25),(73,35),(73,52),(74,10),(74,24),(74,40),(74,46),(75,50),(77,21),(77,26),(77,48),(77,62),(78,49),(79,6),(79,33),(79,42),(80,19),(80,36),(80,42),(81,52),(82,4),(82,5),(82,22),(82,51),(82,64),(83,2),(83,3),(83,34),(83,44),(83,54);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,7),(1,11),(1,14),(1,20),(1,21),(1,27),(1,29),(1,33),(1,37),(1,40),(1,45),(1,46),(1,47),(1,48),(1,50),(1,51),(1,52),(1,54),(1,58),(1,59),(1,61),(1,65),(2,6),(2,8),(2,10),(2,12),(2,13),(2,16),(2,18),(2,22),(2,23),(2,24),(2,25),(2,30),(2,31),(2,38),(2,39),(2,41),(2,42),(2,53),(2,55),(2,57),(2,60),(2,62),(2,63),(2,64),(3,5),(3,9),(3,15),(3,17),(3,19),(3,26),(3,28),(3,32),(3,34),(3,35),(3,36),(3,43),(3,44),(3,49),(3,56);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2025-06-10 07:57:13','2025-06-10 07:57:13',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2025-06-10 07:57:13','2025-06-10 07:57:13',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2025-06-10 07:57:13','2025-06-10 07:57:13',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,17,0,0.00,'fixed',1),(1,26,0,0.00,'fixed',1),(1,27,0,0.00,'fixed',1),(1,31,0,0.00,'fixed',1),(1,39,0,0.00,'fixed',1),(1,41,0,0.00,'fixed',1),(1,59,0,0.00,'fixed',1),(2,3,0,0.00,'fixed',1),(2,29,0,0.00,'fixed',1),(2,33,0,0.00,'fixed',1),(2,36,0,0.00,'fixed',1),(2,52,0,0.00,'fixed',1),(3,8,0,0.00,'fixed',1),(3,38,0,0.00,'fixed',1),(3,41,0,0.00,'fixed',1),(3,42,0,0.00,'fixed',1),(3,52,0,0.00,'fixed',1),(3,55,0,0.00,'fixed',1),(3,65,0,0.00,'fixed',1),(4,5,0,0.00,'fixed',1),(4,8,0,0.00,'fixed',1),(4,26,0,0.00,'fixed',1),(4,35,0,0.00,'fixed',1),(4,47,0,0.00,'fixed',1),(4,50,0,0.00,'fixed',1),(4,57,0,0.00,'fixed',1),(5,14,0,0.00,'fixed',1),(5,23,0,0.00,'fixed',1),(5,43,0,0.00,'fixed',1),(5,49,0,0.00,'fixed',1),(5,52,0,0.00,'fixed',1),(5,55,0,0.00,'fixed',1),(5,59,0,0.00,'fixed',1),(6,4,0,0.00,'fixed',1),(6,15,0,0.00,'fixed',1),(6,35,0,0.00,'fixed',1),(6,41,0,0.00,'fixed',1),(6,45,0,0.00,'fixed',1),(6,56,0,0.00,'fixed',1),(7,12,0,0.00,'fixed',1),(7,13,0,0.00,'fixed',1),(7,19,0,0.00,'fixed',1),(7,21,0,0.00,'fixed',1),(7,34,0,0.00,'fixed',1),(7,58,0,0.00,'fixed',1),(7,60,0,0.00,'fixed',1),(8,27,0,0.00,'fixed',1),(8,31,0,0.00,'fixed',1),(8,34,0,0.00,'fixed',1),(8,35,0,0.00,'fixed',1),(8,41,0,0.00,'fixed',1),(8,60,0,0.00,'fixed',1),(8,62,0,0.00,'fixed',1),(9,1,0,0.00,'fixed',1),(9,3,0,0.00,'fixed',1),(9,15,0,0.00,'fixed',1),(9,24,0,0.00,'fixed',1),(9,34,0,0.00,'fixed',1),(9,40,0,0.00,'fixed',1),(9,49,0,0.00,'fixed',1),(10,3,0,0.00,'fixed',1),(10,8,0,0.00,'fixed',1),(10,26,0,0.00,'fixed',1),(10,32,0,0.00,'fixed',1),(10,44,0,0.00,'fixed',1),(10,46,0,0.00,'fixed',1),(10,47,0,0.00,'fixed',1),(11,2,0,0.00,'fixed',1),(11,30,0,0.00,'fixed',1),(11,35,0,0.00,'fixed',1),(11,43,0,0.00,'fixed',1),(11,44,0,0.00,'fixed',1),(11,61,0,0.00,'fixed',1),(12,5,0,0.00,'fixed',1),(12,6,0,0.00,'fixed',1),(12,15,0,0.00,'fixed',1),(12,24,0,0.00,'fixed',1),(12,32,0,0.00,'fixed',1),(12,36,0,0.00,'fixed',1),(12,39,0,0.00,'fixed',1),(13,12,0,0.00,'fixed',1),(13,18,0,0.00,'fixed',1),(13,31,0,0.00,'fixed',1),(13,48,0,0.00,'fixed',1),(13,51,0,0.00,'fixed',1),(13,58,0,0.00,'fixed',1),(13,63,0,0.00,'fixed',1),(14,2,0,0.00,'fixed',1),(14,4,0,0.00,'fixed',1),(14,11,0,0.00,'fixed',1),(14,34,0,0.00,'fixed',1),(14,35,0,0.00,'fixed',1),(14,37,0,0.00,'fixed',1),(14,59,0,0.00,'fixed',1),(15,16,0,0.00,'fixed',1),(15,21,0,0.00,'fixed',1),(15,31,0,0.00,'fixed',1),(15,33,0,0.00,'fixed',1),(15,54,0,0.00,'fixed',1),(15,59,0,0.00,'fixed',1),(15,64,0,0.00,'fixed',1),(16,8,0,0.00,'fixed',1),(16,13,0,0.00,'fixed',1),(16,17,0,0.00,'fixed',1),(16,27,0,0.00,'fixed',1),(16,51,0,0.00,'fixed',1),(16,60,0,0.00,'fixed',1),(17,5,0,0.00,'fixed',1),(17,6,0,0.00,'fixed',1),(17,21,0,0.00,'fixed',1),(17,24,0,0.00,'fixed',1),(17,37,0,0.00,'fixed',1),(17,45,0,0.00,'fixed',1),(17,59,0,0.00,'fixed',1),(18,3,0,0.00,'fixed',1),(18,8,0,0.00,'fixed',1),(18,30,0,0.00,'fixed',1),(18,41,0,0.00,'fixed',1),(18,56,0,0.00,'fixed',1),(18,62,0,0.00,'fixed',1),(19,30,0,0.00,'fixed',1),(19,31,0,0.00,'fixed',1),(19,36,0,0.00,'fixed',1),(19,41,0,0.00,'fixed',1),(19,42,0,0.00,'fixed',1),(19,52,0,0.00,'fixed',1),(19,63,0,0.00,'fixed',1),(20,1,0,0.00,'fixed',1),(20,2,0,0.00,'fixed',1),(20,21,0,0.00,'fixed',1),(20,31,0,0.00,'fixed',1),(20,41,0,0.00,'fixed',1),(20,42,0,0.00,'fixed',1),(20,63,0,0.00,'fixed',1),(21,1,0,0.00,'fixed',1),(21,7,0,0.00,'fixed',1),(21,9,0,0.00,'fixed',1),(21,11,0,0.00,'fixed',1),(21,52,0,0.00,'fixed',1),(21,60,0,0.00,'fixed',1),(21,65,0,0.00,'fixed',1),(22,2,0,0.00,'fixed',1),(22,15,0,0.00,'fixed',1),(22,16,0,0.00,'fixed',1),(22,23,0,0.00,'fixed',1),(22,30,0,0.00,'fixed',1),(22,47,0,0.00,'fixed',1),(22,61,0,0.00,'fixed',1),(23,7,0,0.00,'fixed',1),(23,27,0,0.00,'fixed',1),(23,29,0,0.00,'fixed',1),(23,46,0,0.00,'fixed',1),(23,49,0,0.00,'fixed',1),(23,54,0,0.00,'fixed',1),(24,19,0,0.00,'fixed',1),(24,34,0,0.00,'fixed',1),(24,37,0,0.00,'fixed',1),(24,44,0,0.00,'fixed',1),(24,65,0,0.00,'fixed',1),(25,6,0,0.00,'fixed',1),(25,9,0,0.00,'fixed',1),(25,16,0,0.00,'fixed',1),(25,27,0,0.00,'fixed',1),(25,30,0,0.00,'fixed',1),(25,35,0,0.00,'fixed',1),(25,54,0,0.00,'fixed',1),(26,1,0,0.00,'fixed',1),(26,4,0,0.00,'fixed',1),(26,27,0,0.00,'fixed',1),(26,48,0,0.00,'fixed',1),(26,54,0,0.00,'fixed',1),(26,58,0,0.00,'fixed',1),(26,59,0,0.00,'fixed',1),(27,21,0,0.00,'fixed',1),(27,23,0,0.00,'fixed',1),(27,42,0,0.00,'fixed',1),(27,43,0,0.00,'fixed',1),(27,61,0,0.00,'fixed',1),(27,64,0,0.00,'fixed',1),(28,13,0,0.00,'fixed',1),(28,17,0,0.00,'fixed',1),(28,24,0,0.00,'fixed',1),(28,32,0,0.00,'fixed',1),(28,43,0,0.00,'fixed',1),(28,59,0,0.00,'fixed',1),(28,62,0,0.00,'fixed',1),(29,2,0,0.00,'fixed',1),(29,11,0,0.00,'fixed',1),(29,21,0,0.00,'fixed',1),(29,27,0,0.00,'fixed',1),(29,40,0,0.00,'fixed',1),(29,58,0,0.00,'fixed',1),(29,59,0,0.00,'fixed',1),(30,7,0,0.00,'fixed',1),(30,15,0,0.00,'fixed',1),(30,31,0,0.00,'fixed',1),(30,33,0,0.00,'fixed',1),(30,35,0,0.00,'fixed',1),(30,43,0,0.00,'fixed',1),(30,60,0,0.00,'fixed',1),(31,21,0,0.00,'fixed',1),(31,25,0,0.00,'fixed',1),(31,28,0,0.00,'fixed',1),(31,33,0,0.00,'fixed',1),(31,39,0,0.00,'fixed',1),(31,45,0,0.00,'fixed',1),(32,10,0,0.00,'fixed',1),(32,19,0,0.00,'fixed',1),(32,24,0,0.00,'fixed',1),(32,30,0,0.00,'fixed',1),(32,47,0,0.00,'fixed',1),(32,49,0,0.00,'fixed',1),(32,63,0,0.00,'fixed',1),(33,22,0,0.00,'fixed',1),(33,36,0,0.00,'fixed',1),(33,37,0,0.00,'fixed',1),(33,51,0,0.00,'fixed',1),(33,57,0,0.00,'fixed',1),(33,60,0,0.00,'fixed',1),(33,65,0,0.00,'fixed',1),(34,16,0,0.00,'fixed',1),(34,29,0,0.00,'fixed',1),(34,31,0,0.00,'fixed',1),(34,38,0,0.00,'fixed',1),(34,47,0,0.00,'fixed',1),(34,59,0,0.00,'fixed',1),(34,65,0,0.00,'fixed',1),(35,2,0,0.00,'fixed',1),(35,6,0,0.00,'fixed',1),(35,12,0,0.00,'fixed',1),(35,15,0,0.00,'fixed',1),(35,26,0,0.00,'fixed',1),(35,50,0,0.00,'fixed',1),(35,61,0,0.00,'fixed',1),(36,32,0,0.00,'fixed',1),(36,37,0,0.00,'fixed',1),(36,41,0,0.00,'fixed',1),(36,48,0,0.00,'fixed',1),(36,53,0,0.00,'fixed',1),(36,60,0,0.00,'fixed',1),(36,62,0,0.00,'fixed',1),(37,14,0,0.00,'fixed',1),(37,15,0,0.00,'fixed',1),(37,18,0,0.00,'fixed',1),(37,35,0,0.00,'fixed',1),(37,39,0,0.00,'fixed',1),(37,58,0,0.00,'fixed',1),(37,63,0,0.00,'fixed',1),(38,6,0,0.00,'fixed',1),(38,18,0,0.00,'fixed',1),(38,36,0,0.00,'fixed',1),(38,47,0,0.00,'fixed',1),(38,60,0,0.00,'fixed',1),(38,62,0,0.00,'fixed',1),(39,2,0,0.00,'fixed',1),(39,5,0,0.00,'fixed',1),(39,20,0,0.00,'fixed',1),(39,21,0,0.00,'fixed',1),(39,25,0,0.00,'fixed',1),(39,29,0,0.00,'fixed',1),(39,45,0,0.00,'fixed',1),(40,3,0,0.00,'fixed',1),(40,29,0,0.00,'fixed',1),(40,37,0,0.00,'fixed',1),(40,53,0,0.00,'fixed',1),(40,56,0,0.00,'fixed',1),(40,59,0,0.00,'fixed',1),(40,62,0,0.00,'fixed',1),(41,29,0,0.00,'fixed',1),(41,32,0,0.00,'fixed',1),(41,44,0,0.00,'fixed',1),(41,48,0,0.00,'fixed',1),(41,60,0,0.00,'fixed',1),(41,63,0,0.00,'fixed',1),(42,16,0,0.00,'fixed',1),(42,35,0,0.00,'fixed',1),(42,44,0,0.00,'fixed',1),(42,50,0,0.00,'fixed',1),(42,51,0,0.00,'fixed',1),(42,59,0,0.00,'fixed',1),(42,62,0,0.00,'fixed',1),(43,2,0,0.00,'fixed',1),(43,8,0,0.00,'fixed',1),(43,9,0,0.00,'fixed',1),(43,10,0,0.00,'fixed',1),(43,22,0,0.00,'fixed',1),(43,44,0,0.00,'fixed',1),(43,64,0,0.00,'fixed',1),(44,3,0,0.00,'fixed',1),(44,11,0,0.00,'fixed',1),(44,18,0,0.00,'fixed',1),(44,34,0,0.00,'fixed',1),(44,36,0,0.00,'fixed',1),(44,39,0,0.00,'fixed',1),(44,60,0,0.00,'fixed',1),(45,6,0,0.00,'fixed',1),(45,10,0,0.00,'fixed',1),(45,26,0,0.00,'fixed',1),(45,27,0,0.00,'fixed',1),(45,40,0,0.00,'fixed',1),(45,63,0,0.00,'fixed',1),(45,65,0,0.00,'fixed',1),(46,5,0,0.00,'fixed',1),(46,11,0,0.00,'fixed',1),(46,14,0,0.00,'fixed',1),(46,29,0,0.00,'fixed',1),(46,40,0,0.00,'fixed',1),(46,48,0,0.00,'fixed',1),(46,56,0,0.00,'fixed',1),(47,2,0,0.00,'fixed',1),(47,9,0,0.00,'fixed',1),(47,10,0,0.00,'fixed',1),(47,23,0,0.00,'fixed',1),(47,36,0,0.00,'fixed',1),(47,43,0,0.00,'fixed',1),(47,64,0,0.00,'fixed',1),(48,4,0,0.00,'fixed',1),(48,6,0,0.00,'fixed',1),(48,20,0,0.00,'fixed',1),(48,29,0,0.00,'fixed',1),(48,41,0,0.00,'fixed',1),(48,63,0,0.00,'fixed',1),(49,9,0,0.00,'fixed',1),(49,26,0,0.00,'fixed',1),(49,34,0,0.00,'fixed',1),(49,43,0,0.00,'fixed',1),(49,44,0,0.00,'fixed',1),(49,57,0,0.00,'fixed',1),(49,60,0,0.00,'fixed',1),(50,14,0,0.00,'fixed',1),(50,21,0,0.00,'fixed',1),(50,31,0,0.00,'fixed',1),(50,38,0,0.00,'fixed',1),(50,46,0,0.00,'fixed',1),(50,55,0,0.00,'fixed',1),(50,63,0,0.00,'fixed',1),(51,6,0,0.00,'fixed',1),(51,11,0,0.00,'fixed',1),(51,19,0,0.00,'fixed',1),(51,23,0,0.00,'fixed',1),(51,39,0,0.00,'fixed',1),(51,42,0,0.00,'fixed',1),(51,56,0,0.00,'fixed',1),(52,2,0,0.00,'fixed',1),(52,12,0,0.00,'fixed',1),(52,19,0,0.00,'fixed',1),(52,31,0,0.00,'fixed',1),(52,39,0,0.00,'fixed',1),(52,55,0,0.00,'fixed',1),(52,60,0,0.00,'fixed',1),(53,21,0,0.00,'fixed',1),(53,37,0,0.00,'fixed',1),(53,40,0,0.00,'fixed',1),(53,42,0,0.00,'fixed',1),(53,54,0,0.00,'fixed',1),(53,62,0,0.00,'fixed',1),(53,64,0,0.00,'fixed',1),(54,3,0,0.00,'fixed',1),(54,11,0,0.00,'fixed',1),(54,15,0,0.00,'fixed',1),(54,27,0,0.00,'fixed',1),(54,39,0,0.00,'fixed',1),(54,44,0,0.00,'fixed',1),(54,45,0,0.00,'fixed',1),(55,4,0,0.00,'fixed',1),(55,6,0,0.00,'fixed',1),(55,15,0,0.00,'fixed',1),(55,44,0,0.00,'fixed',1),(55,47,0,0.00,'fixed',1),(55,57,0,0.00,'fixed',1),(55,61,0,0.00,'fixed',1),(56,6,0,0.00,'fixed',1),(56,24,0,0.00,'fixed',1),(56,35,0,0.00,'fixed',1),(56,37,0,0.00,'fixed',1),(56,40,0,0.00,'fixed',1),(56,65,0,0.00,'fixed',1),(57,6,0,0.00,'fixed',1),(57,12,0,0.00,'fixed',1),(57,14,0,0.00,'fixed',1),(57,22,0,0.00,'fixed',1),(57,37,0,0.00,'fixed',1),(57,58,0,0.00,'fixed',1),(57,61,0,0.00,'fixed',1),(58,6,0,0.00,'fixed',1),(58,16,0,0.00,'fixed',1),(58,23,0,0.00,'fixed',1),(58,33,0,0.00,'fixed',1),(58,34,0,0.00,'fixed',1),(58,52,0,0.00,'fixed',1),(58,61,0,0.00,'fixed',1),(59,9,0,0.00,'fixed',1),(59,19,0,0.00,'fixed',1),(59,20,0,0.00,'fixed',1),(59,35,0,0.00,'fixed',1),(59,42,0,0.00,'fixed',1),(59,48,0,0.00,'fixed',1),(59,57,0,0.00,'fixed',1),(60,7,0,0.00,'fixed',1),(60,10,0,0.00,'fixed',1),(60,12,0,0.00,'fixed',1),(60,31,0,0.00,'fixed',1),(60,40,0,0.00,'fixed',1),(60,51,0,0.00,'fixed',1),(60,53,0,0.00,'fixed',1),(61,28,0,0.00,'fixed',1),(61,32,0,0.00,'fixed',1),(61,38,0,0.00,'fixed',1),(61,43,0,0.00,'fixed',1),(61,44,0,0.00,'fixed',1),(61,53,0,0.00,'fixed',1),(61,65,0,0.00,'fixed',1),(62,5,0,0.00,'fixed',1),(62,30,0,0.00,'fixed',1),(62,42,0,0.00,'fixed',1),(62,43,0,0.00,'fixed',1),(62,54,0,0.00,'fixed',1),(62,56,0,0.00,'fixed',1),(62,57,0,0.00,'fixed',1),(63,7,0,0.00,'fixed',1),(63,14,0,0.00,'fixed',1),(63,20,0,0.00,'fixed',1),(63,23,0,0.00,'fixed',1),(63,28,0,0.00,'fixed',1),(63,45,0,0.00,'fixed',1),(63,56,0,0.00,'fixed',1),(64,33,0,0.00,'fixed',1),(64,35,0,0.00,'fixed',1),(64,38,0,0.00,'fixed',1),(64,39,0,0.00,'fixed',1),(64,44,0,0.00,'fixed',1),(64,46,0,0.00,'fixed',1),(64,48,0,0.00,'fixed',1),(65,5,0,0.00,'fixed',1),(65,18,0,0.00,'fixed',1),(65,29,0,0.00,'fixed',1),(65,34,0,0.00,'fixed',1),(65,55,0,0.00,'fixed',1),(65,57,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/4.jpg','{\"filename\":\"4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"4\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(2,4,'ecommerce/digital-product-files/4-1.jpg','{\"filename\":\"4-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"4-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(3,8,'ecommerce/digital-product-files/8.jpg','{\"filename\":\"8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"8\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(4,8,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(5,12,'ecommerce/digital-product-files/12.jpg','{\"filename\":\"12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"12\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(6,12,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(7,16,'ecommerce/digital-product-files/16.jpg','{\"filename\":\"16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"16\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(8,20,'ecommerce/digital-product-files/20.jpg','{\"filename\":\"20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"20\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(9,20,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(10,24,'ecommerce/digital-product-files/24.jpg','{\"filename\":\"24.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"24\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(11,24,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(12,28,'ecommerce/digital-product-files/28.jpg','{\"filename\":\"28.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"28\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(13,28,'ecommerce/digital-product-files/28-1.jpg','{\"filename\":\"28-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"28-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(14,32,'ecommerce/digital-product-files/32.jpg','{\"filename\":\"32.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"32\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(15,32,'ecommerce/digital-product-files/32-1.jpg','{\"filename\":\"32-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"32-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(16,36,'ecommerce/digital-product-files/36.jpg','{\"filename\":\"36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"36\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(17,36,'ecommerce/digital-product-files/36-1.jpg','{\"filename\":\"36-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"36-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(18,40,'ecommerce/digital-product-files/40.jpg','{\"filename\":\"40.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"40\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(19,40,'ecommerce/digital-product-files/40-1.jpg','{\"filename\":\"40-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"40-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(20,44,'ecommerce/digital-product-files/44.jpg','{\"filename\":\"44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"44\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(21,44,'ecommerce/digital-product-files/44-1.jpg','{\"filename\":\"44-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"44-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(22,48,'ecommerce/digital-product-files/48.jpg','{\"filename\":\"48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"48\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(23,48,'ecommerce/digital-product-files/48-1.jpg','{\"filename\":\"48-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"48-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(24,52,'ecommerce/digital-product-files/52.jpg','{\"filename\":\"52.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"52\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(25,52,'ecommerce/digital-product-files/52-1.jpg','{\"filename\":\"52-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"52-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(26,56,'ecommerce/digital-product-files/56.jpg','{\"filename\":\"56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"56\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(27,56,'ecommerce/digital-product-files/56-1.jpg','{\"filename\":\"56-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/56-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"56-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(28,60,'ecommerce/digital-product-files/60.jpg','{\"filename\":\"60.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/60.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"60\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(29,60,'ecommerce/digital-product-files/60-1.jpg','{\"filename\":\"60-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/60-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"60-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(30,64,'ecommerce/digital-product-files/64.jpg','{\"filename\":\"64.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/64.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"64\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(31,64,'ecommerce/digital-product-files/64-1.jpg','{\"filename\":\"64-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/64-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"64-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(32,71,'ecommerce/digital-product-files/4-1.jpg','{\"filename\":\"4-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"4-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(33,72,'ecommerce/digital-product-files/4-2.jpg','{\"filename\":\"4-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"4-2\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(34,81,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(35,82,'ecommerce/digital-product-files/8-2.jpg','{\"filename\":\"8-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"8-2\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(36,83,'ecommerce/digital-product-files/8-3.jpg','{\"filename\":\"8-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"8-3\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(37,122,'ecommerce/digital-product-files/40-1.jpg','{\"filename\":\"40-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"40-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(38,123,'ecommerce/digital-product-files/40.jpg','{\"filename\":\"40.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"40\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(39,124,'ecommerce/digital-product-files/40.jpg','{\"filename\":\"40.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"40\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(40,125,'ecommerce/digital-product-files/44-1.jpg','{\"filename\":\"44-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"44-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(41,126,'ecommerce/digital-product-files/44-2.jpg','{\"filename\":\"44-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"44-2\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(42,129,'ecommerce/digital-product-files/48-1.jpg','{\"filename\":\"48-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"48-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(43,142,'ecommerce/digital-product-files/56-1.jpg','{\"filename\":\"56-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/56-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"56-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(44,143,'ecommerce/digital-product-files/56-2.jpg','{\"filename\":\"56-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/56-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"56-2\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51'),(45,155,'ecommerce/digital-product-files/64-1.jpg','{\"filename\":\"64-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/64-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-06-10 14:57:51\",\"name\":\"64-1\",\"extension\":\"jpg\"}','2025-06-10 07:57:51','2025-06-10 07:57:51');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,18),(1,27),(1,39),(1,42),(1,45),(1,63),(2,12),(2,30),(2,33),(2,36),(2,48),(2,51),(3,3),(3,6),(3,9),(3,15),(3,21),(3,24),(3,54),(3,57),(3,60);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2025-06-10 07:57:13','2025-06-10 07:57:13',NULL),(2,'New','#02856e','published','2025-06-10 07:57:13','2025-06-10 07:57:13',NULL),(3,'Sale','#fe9931','published','2025-06-10 07:57:13','2025-06-10 07:57:13',NULL);
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,1,'39.08 cm',0,0),(1,2,'3.6 cm',0,0),(1,3,'19.86 cm',0,0),(1,4,'26.04 cm',0,0),(1,5,'56.15 cm',0,0),(2,1,'81.43 cm',0,0),(2,2,'10.09 cm',0,0),(2,3,'14.4 cm',0,0),(2,4,'18.97 cm',0,0),(2,5,'76.65 cm',0,0),(3,6,'5.57 cm',0,0),(3,7,'35.09 cm',0,0),(3,8,'2560x1440',0,0),(4,6,'75.68 cm',0,0),(4,7,'71.11 cm',0,0),(4,8,'2560x1440',0,0),(5,1,'19.74 cm',0,0),(5,2,'50.11 cm',0,0),(5,3,'57.56 cm',0,0),(5,4,'24.64 cm',0,0),(5,5,'10.3 cm',0,0),(6,6,'80.55 cm',0,0),(6,7,'30.18 cm',0,0),(6,8,'3840x2160',0,0),(7,1,'57.12 cm',0,0),(7,2,'68.89 cm',0,0),(7,3,'89 cm',0,0),(7,4,'83.36 cm',0,0),(7,5,'13.1 cm',0,0),(8,6,'24.27 cm',0,0),(8,7,'75.21 cm',0,0),(8,8,'2560x1440',0,0),(9,1,'25.05 cm',0,0),(9,2,'23.04 cm',0,0),(9,3,'82.71 cm',0,0),(9,4,'15.12 cm',0,0),(9,5,'86.33 cm',0,0),(10,1,'57.24 cm',0,0),(10,2,'48.92 cm',0,0),(10,3,'45.11 cm',0,0),(10,4,'95.34 cm',0,0),(10,5,'93.36 cm',0,0),(11,1,'31.65 cm',0,0),(11,2,'24.92 cm',0,0),(11,3,'49.13 cm',0,0),(11,4,'86.81 cm',0,0),(11,5,'72.21 cm',0,0),(12,1,'70.04 cm',0,0),(12,2,'17.39 cm',0,0),(12,3,'19.62 cm',0,0),(12,4,'50.44 cm',0,0),(12,5,'80.46 cm',0,0),(13,1,'87.14 cm',0,0),(13,2,'2.4 cm',0,0),(13,3,'41.05 cm',0,0),(13,4,'34.91 cm',0,0),(13,5,'8.59 cm',0,0),(14,6,'63.79 cm',0,0),(14,7,'16.3 cm',0,0),(14,8,'2560x1440',0,0),(15,1,'53.52 cm',0,0),(15,2,'83.09 cm',0,0),(15,3,'38.4 cm',0,0),(15,4,'18.22 cm',0,0),(15,5,'52.5 cm',0,0),(16,1,'3.91 cm',0,0),(16,2,'66.86 cm',0,0),(16,3,'16.56 cm',0,0),(16,4,'43.21 cm',0,0),(16,5,'92.06 cm',0,0),(17,6,'53.43 cm',0,0),(17,7,'75.26 cm',0,0),(17,8,'2560x1440',0,0),(18,6,'89.97 cm',0,0),(18,7,'89.25 cm',0,0),(18,8,'2560x1440',0,0),(19,6,'90.02 cm',0,0),(19,7,'65.04 cm',0,0),(19,8,'2560x1440',0,0),(20,1,'5.2 cm',0,0),(20,2,'76.04 cm',0,0),(20,3,'41.47 cm',0,0),(20,4,'41.92 cm',0,0),(20,5,'98.11 cm',0,0),(21,1,'75.24 cm',0,0),(21,2,'31.53 cm',0,0),(21,3,'6.88 cm',0,0),(21,4,'74.43 cm',0,0),(21,5,'33.03 cm',0,0),(22,1,'67.9 cm',0,0),(22,2,'28.33 cm',0,0),(22,3,'40.3 cm',0,0),(22,4,'39.06 cm',0,0),(22,5,'80.56 cm',0,0),(23,1,'40.45 cm',0,0),(23,2,'2.55 cm',0,0),(23,3,'40.45 cm',0,0),(23,4,'95.26 cm',0,0),(23,5,'79.87 cm',0,0),(24,1,'17.34 cm',0,0),(24,2,'78.24 cm',0,0),(24,3,'2.41 cm',0,0),(24,4,'47.18 cm',0,0),(24,5,'60.81 cm',0,0),(25,1,'32.44 cm',0,0),(25,2,'29.35 cm',0,0),(25,3,'27.41 cm',0,0),(25,4,'72.52 cm',0,0),(25,5,'3.49 cm',0,0),(26,6,'68.4 cm',0,0),(26,7,'53.13 cm',0,0),(26,8,'3840x2160',0,0),(27,1,'55.51 cm',0,0),(27,2,'88.89 cm',0,0),(27,3,'24.82 cm',0,0),(27,4,'58.82 cm',0,0),(27,5,'81.91 cm',0,0),(28,1,'11.8 cm',0,0),(28,2,'80.72 cm',0,0),(28,3,'58.95 cm',0,0),(28,4,'19.24 cm',0,0),(28,5,'14.7 cm',0,0),(29,1,'24.1 cm',0,0),(29,2,'42.32 cm',0,0),(29,3,'15.46 cm',0,0),(29,4,'90.33 cm',0,0),(29,5,'64.68 cm',0,0),(30,6,'17.06 cm',0,0),(30,7,'4.45 cm',0,0),(30,8,'2560x1440',0,0),(31,6,'80.7 cm',0,0),(31,7,'18.5 cm',0,0),(31,8,'3840x2160',0,0),(32,6,'73.83 cm',0,0),(32,7,'75.24 cm',0,0),(32,8,'3840x2160',0,0),(33,1,'77.53 cm',0,0),(33,2,'59.41 cm',0,0),(33,3,'86.44 cm',0,0),(33,4,'44.39 cm',0,0),(33,5,'3.81 cm',0,0),(34,1,'19.1 cm',0,0),(34,2,'14.32 cm',0,0),(34,3,'40.41 cm',0,0),(34,4,'82.77 cm',0,0),(34,5,'51.39 cm',0,0),(35,1,'35.65 cm',0,0),(35,2,'76.8 cm',0,0),(35,3,'49.63 cm',0,0),(35,4,'43.23 cm',0,0),(35,5,'14.38 cm',0,0),(36,6,'88.79 cm',0,0),(36,7,'40.38 cm',0,0),(36,8,'3840x2160',0,0),(37,1,'29.48 cm',0,0),(37,2,'41.3 cm',0,0),(37,3,'73.04 cm',0,0),(37,4,'13.9 cm',0,0),(37,5,'83.69 cm',0,0),(38,6,'30.58 cm',0,0),(38,7,'42.55 cm',0,0),(38,8,'2560x1440',0,0),(39,6,'40.82 cm',0,0),(39,7,'6.66 cm',0,0),(39,8,'1920x1080',0,0),(40,6,'81.82 cm',0,0),(40,7,'24.29 cm',0,0),(40,8,'3840x2160',0,0),(41,6,'36.46 cm',0,0),(41,7,'4.24 cm',0,0),(41,8,'2560x1440',0,0),(42,6,'74.44 cm',0,0),(42,7,'33.66 cm',0,0),(42,8,'3840x2160',0,0),(43,6,'77.42 cm',0,0),(43,7,'66.25 cm',0,0),(43,8,'3840x2160',0,0),(44,6,'23.52 cm',0,0),(44,7,'4.42 cm',0,0),(44,8,'2560x1440',0,0),(45,1,'95.12 cm',0,0),(45,2,'90.26 cm',0,0),(45,3,'48.14 cm',0,0),(45,4,'43.09 cm',0,0),(45,5,'75.25 cm',0,0),(46,6,'39.46 cm',0,0),(46,7,'68.44 cm',0,0),(46,8,'2560x1440',0,0),(47,1,'60.62 cm',0,0),(47,2,'54.21 cm',0,0),(47,3,'96.5 cm',0,0),(47,4,'97.63 cm',0,0),(47,5,'56.42 cm',0,0),(48,6,'39.46 cm',0,0),(48,7,'26.86 cm',0,0),(48,8,'1920x1080',0,0),(49,1,'78.52 cm',0,0),(49,2,'93.43 cm',0,0),(49,3,'45.85 cm',0,0),(49,4,'83.55 cm',0,0),(49,5,'32.49 cm',0,0),(50,1,'79.58 cm',0,0),(50,2,'30.34 cm',0,0),(50,3,'87.71 cm',0,0),(50,4,'84.73 cm',0,0),(50,5,'25.88 cm',0,0),(51,6,'32.07 cm',0,0),(51,7,'98.86 cm',0,0),(51,8,'1920x1080',0,0),(52,6,'94.79 cm',0,0),(52,7,'60.64 cm',0,0),(52,8,'1920x1080',0,0),(53,1,'92.39 cm',0,0),(53,2,'7.44 cm',0,0),(53,3,'83.73 cm',0,0),(53,4,'13.18 cm',0,0),(53,5,'89.03 cm',0,0),(54,1,'21.02 cm',0,0),(54,2,'93.21 cm',0,0),(54,3,'13.68 cm',0,0),(54,4,'59.27 cm',0,0),(54,5,'75.23 cm',0,0),(55,6,'3.76 cm',0,0),(55,7,'96.21 cm',0,0),(55,8,'1920x1080',0,0),(56,1,'68.85 cm',0,0),(56,2,'63.75 cm',0,0),(56,3,'83.07 cm',0,0),(56,4,'12.75 cm',0,0),(56,5,'85.79 cm',0,0),(57,1,'9.38 cm',0,0),(57,2,'49.58 cm',0,0),(57,3,'81.9 cm',0,0),(57,4,'87.41 cm',0,0),(57,5,'45.74 cm',0,0),(58,1,'37.83 cm',0,0),(58,2,'84.64 cm',0,0),(58,3,'32.14 cm',0,0),(58,4,'76.95 cm',0,0),(58,5,'19.26 cm',0,0),(59,6,'46.86 cm',0,0),(59,7,'31.92 cm',0,0),(59,8,'3840x2160',0,0),(60,6,'23.61 cm',0,0),(60,7,'88.52 cm',0,0),(60,8,'2560x1440',0,0),(61,6,'46.38 cm',0,0),(61,7,'5.85 cm',0,0),(61,8,'3840x2160',0,0),(62,1,'4.36 cm',0,0),(62,2,'27.36 cm',0,0),(62,3,'12.4 cm',0,0),(62,4,'49.97 cm',0,0),(62,5,'24.22 cm',0,0),(63,1,'1.56 cm',0,0),(63,2,'58.94 cm',0,0),(63,3,'97.15 cm',0,0),(63,4,'3.82 cm',0,0),(63,5,'19.64 cm',0,0),(64,1,'20.5 cm',0,0),(64,2,'15.98 cm',0,0),(64,3,'46.6 cm',0,0),(64,4,'69.04 cm',0,0),(64,5,'57.29 cm',0,0),(65,1,'72.41 cm',0,0),(65,2,'19.78 cm',0,0),(65,3,'75.62 cm',0,0),(65,4,'39.93 cm',0,0),(65,5,'90.62 cm',0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,3),(1,6),(2,1),(2,2),(2,5),(3,1),(3,2),(3,6),(4,1),(4,4),(4,6),(5,3),(5,4),(5,5),(6,3),(6,5),(6,6),(7,1),(7,2),(7,3),(8,2),(8,3),(8,4),(9,1),(9,2),(9,3),(10,1),(10,3),(10,4),(11,2),(11,4),(11,6),(12,3),(12,4),(12,6),(13,2),(13,5),(13,6),(14,2),(14,4),(14,5),(15,3),(15,4),(15,6),(16,1),(16,5),(16,6),(17,1),(17,4),(17,5),(18,2),(18,3),(18,4),(19,2),(19,5),(19,6),(20,2),(20,4),(20,6),(21,2),(21,4),(21,5),(22,3),(22,4),(22,5),(23,1),(23,2),(23,6),(24,1),(24,2),(24,4),(25,1),(25,2),(25,3),(26,2),(26,3),(26,5),(27,2),(27,3),(27,4),(28,1),(28,5),(28,6),(29,1),(29,4),(29,6),(30,3),(30,4),(30,5),(31,1),(31,3),(31,6),(32,1),(32,4),(32,6),(33,1),(33,3),(33,4),(34,1),(34,2),(34,4),(35,1),(35,2),(35,3),(36,3),(36,5),(36,6),(37,4),(37,5),(37,6),(38,1),(38,2),(38,5),(39,3),(39,4),(39,5),(40,1),(40,4),(40,6),(41,4),(41,5),(41,6),(42,2),(42,3),(42,6),(43,3),(43,5),(43,6),(44,2),(44,4),(44,6),(45,3),(45,4),(45,6),(46,1),(46,2),(46,5),(47,3),(47,5),(47,6),(48,4),(48,5),(48,6),(49,1),(49,4),(49,5),(50,3),(50,5),(50,6),(51,1),(51,2),(51,3),(52,3),(52,4),(52,5),(53,3),(53,5),(53,6),(54,1),(54,3),(54,4),(55,2),(55,3),(55,6),(56,1),(56,2),(56,5),(57,2),(57,3),(57,6),(58,4),(58,5),(58,6),(59,1),(59,4),(59,6),(60,3),(60,5),(60,6),(61,1),(61,2),(61,3),(62,2),(62,4),(62,5),(63,3),(63,4),(63,6),(64,2),(64,4),(64,5),(65,2),(65,3),(65,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2025-06-10 07:57:25','2025-06-10 07:57:25'),(2,'Mobile',NULL,'published','2025-06-10 07:57:25','2025-06-10 07:57:25'),(3,'Iphone',NULL,'published','2025-06-10 07:57:25','2025-06-10 07:57:25'),(4,'Printer',NULL,'published','2025-06-10 07:57:25','2025-06-10 07:57:25'),(5,'Office',NULL,'published','2025-06-10 07:57:25','2025-06-10 07:57:25'),(6,'IT',NULL,'published','2025-06-10 07:57:25','2025-06-10 07:57:25');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(23,1,12),(41,1,21),(47,1,24),(51,1,26),(55,1,28),(79,1,40),(87,1,44),(3,2,2),(5,2,3),(7,2,4),(9,2,5),(17,2,9),(27,2,14),(31,2,16),(35,2,18),(39,2,20),(71,2,36),(19,3,10),(21,3,11),(43,3,22),(45,3,23),(59,3,30),(73,3,37),(85,3,43),(89,3,45),(93,3,47),(11,4,6),(33,4,17),(37,4,19),(53,4,27),(57,4,29),(67,4,34),(75,4,38),(77,4,39),(83,4,42),(13,5,7),(15,5,8),(25,5,13),(29,5,15),(49,5,25),(61,5,31),(63,5,32),(65,5,33),(69,5,35),(81,5,41),(91,5,46),(95,5,48),(12,6,6),(26,6,13),(38,6,19),(40,6,20),(42,6,21),(46,6,23),(48,6,24),(50,6,25),(58,6,29),(62,6,31),(66,6,33),(82,6,41),(18,7,9),(28,7,14),(30,7,15),(44,7,22),(56,7,28),(60,7,30),(68,7,34),(70,7,35),(92,7,46),(94,7,47),(10,8,5),(14,8,7),(22,8,11),(34,8,17),(36,8,18),(64,8,32),(72,8,36),(78,8,39),(80,8,40),(6,9,3),(8,9,4),(20,9,10),(32,9,16),(54,9,27),(74,9,37),(84,9,42),(86,9,43),(96,9,48),(2,10,1),(4,10,2),(16,10,8),(24,10,12),(52,10,26),(76,10,38),(88,10,44),(90,10,45),(97,11,49),(99,11,50),(101,11,51),(113,11,57),(117,11,59),(119,11,60),(125,11,63),(127,11,64),(139,11,70),(149,11,75),(109,12,55),(111,12,56),(129,12,65),(151,12,76),(159,12,80),(165,12,83),(177,12,89),(121,13,61),(135,13,68),(137,13,69),(141,13,71),(143,13,72),(147,13,74),(161,13,81),(163,13,82),(167,13,84),(173,13,87),(175,13,88),(179,13,90),(103,14,52),(123,14,62),(131,14,66),(133,14,67),(145,14,73),(153,14,77),(169,14,85),(105,15,53),(107,15,54),(115,15,58),(155,15,78),(157,15,79),(171,15,86),(100,16,50),(102,16,51),(118,16,59),(122,16,61),(146,16,73),(156,16,78),(176,16,88),(110,17,55),(112,17,56),(128,17,64),(138,17,69),(160,17,80),(168,17,84),(172,17,86),(174,17,87),(178,17,89),(106,18,53),(108,18,54),(134,18,67),(136,18,68),(142,18,71),(148,18,74),(150,18,75),(154,18,77),(158,18,79),(162,18,81),(104,19,52),(120,19,60),(124,19,62),(126,19,63),(140,19,70),(144,19,72),(152,19,76),(170,19,85),(98,20,49),(114,20,57),(116,20,58),(130,20,65),(132,20,66),(164,20,82),(166,20,83),(180,20,90);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,66,2,1),(2,67,2,0),(3,68,2,0),(4,69,2,0),(5,70,3,1),(6,71,4,1),(7,72,4,0),(8,73,5,1),(9,74,5,0),(10,75,5,0),(11,76,5,0),(12,77,7,1),(13,78,7,0),(14,79,7,0),(15,80,7,0),(16,81,8,1),(17,82,8,0),(18,83,8,0),(19,84,9,1),(20,85,9,0),(21,86,9,0),(22,87,9,0),(23,88,10,1),(24,89,10,0),(25,90,11,1),(26,91,11,0),(27,92,11,0),(28,93,11,0),(29,94,13,1),(30,95,14,1),(31,96,14,0),(32,97,17,1),(33,98,18,1),(34,99,18,0),(35,100,18,0),(36,101,22,1),(37,102,23,1),(38,103,23,0),(39,104,25,1),(40,105,25,0),(41,106,25,0),(42,107,25,0),(43,108,26,1),(44,109,27,1),(45,110,27,0),(46,111,27,0),(47,112,30,1),(48,113,30,0),(49,114,35,1),(50,115,35,0),(51,116,37,1),(52,117,38,1),(53,118,38,0),(54,119,39,1),(55,120,39,0),(56,121,39,0),(57,122,40,1),(58,123,40,0),(59,124,40,0),(60,125,44,1),(61,126,44,0),(62,127,47,1),(63,128,47,0),(64,129,48,1),(65,130,49,1),(66,131,49,0),(67,132,49,0),(68,133,51,1),(69,134,51,0),(70,135,51,0),(71,136,53,1),(72,137,53,0),(73,138,54,1),(74,139,54,0),(75,140,54,0),(76,141,54,0),(77,142,56,1),(78,143,56,0),(79,144,57,1),(80,145,57,0),(81,146,57,0),(82,147,57,0),(83,148,57,0),(84,149,59,1),(85,150,62,1),(86,151,62,0),(87,152,62,0),(88,153,63,1),(89,154,63,0),(90,155,64,1);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2025-06-10',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(1,25,0),(2,25,0),(1,26,0),(2,26,0),(1,27,0),(2,27,0),(1,30,0),(2,30,0),(3,35,0),(4,35,0),(3,37,0),(4,37,0),(3,38,0),(4,38,0),(3,39,0),(4,39,0),(3,40,0),(4,40,0),(3,44,0),(4,44,0),(3,47,0),(4,47,0),(3,48,0),(4,48,0),(3,49,0),(4,49,0),(3,51,0),(4,51,0),(3,53,0),(4,53,0),(3,54,0),(4,54,0),(3,56,0),(4,56,0),(3,57,0),(4,57,0),(3,59,0),(4,59,0),(3,62,0),(4,62,0),(3,63,0),(4,63,0),(3,64,0),(4,64,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `video_media` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double DEFAULT NULL,
  `wide` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  `specification_table_id` bigint unsigned DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]',NULL,'2I-171',0,10,0,1,'in_stock',1,1,0,0,80.25,19.25,NULL,NULL,12,11,12,865,NULL,111663,'2025-06-10 07:57:46','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','4515265524520',NULL,0,0,0,0,1,8,0),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]',NULL,'IO-176-A1',0,16,0,1,'in_stock',1,5,0,0,40.5,NULL,NULL,NULL,14,10,12,713,NULL,144794,'2025-06-10 07:57:46','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','1017894309408',NULL,0,0,0,0,1,6,0),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]',NULL,'ZH-144-A1',0,19,0,1,'in_stock',1,5,0,0,20,NULL,NULL,NULL,13,10,16,658,NULL,72096,'2025-06-10 07:57:46','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','2118743833378',NULL,0,0,0,0,2,6,0),(4,'Red &amp; Black Headphone (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]',NULL,'VN-149-A1',0,14,0,1,'in_stock',1,2,0,0,588,493.92,NULL,NULL,16,16,12,862,NULL,10921,'2025-06-10 07:57:46','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'digital','1286285801856',NULL,0,0,0,0,2,1,0),(5,'Smart Watch External','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]',NULL,'UY-192-A1',0,18,0,1,'in_stock',1,3,0,0,864,NULL,NULL,NULL,17,13,20,706,NULL,31846,'2025-06-10 07:57:46','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','8488579956188',NULL,0,0,0,0,1,5,0),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]',NULL,'I8-134',0,17,0,1,'in_stock',1,4,0,0,437,414,NULL,NULL,12,11,19,508,NULL,103637,'2025-06-10 07:57:46','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','0006806840512',NULL,0,0,0,0,2,8,0),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]',NULL,'PB-154-A1',0,19,0,1,'in_stock',1,4,0,0,537,NULL,NULL,NULL,16,16,12,582,NULL,34120,'2025-06-10 07:57:46','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','0103116493466',NULL,0,0,0,0,1,4,0),(8,'Smart Televisions (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]',NULL,'B4-162-A1',0,19,0,1,'in_stock',1,1,0,0,1159,1043.1,NULL,NULL,16,20,10,555,NULL,114707,'2025-06-10 07:57:46','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'digital','3760067865161',NULL,0,0,0,0,2,6,0),(9,'Samsung Smart Phone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]',NULL,'LZ-159-A1',0,19,0,1,'in_stock',1,4,0,0,521,NULL,NULL,NULL,17,16,13,895,NULL,137396,'2025-06-10 07:57:46','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','6675954365587',NULL,0,0,0,0,1,6,0),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]',NULL,'HD-159-A1',0,17,0,1,'in_stock',1,5,0,0,1103,NULL,NULL,NULL,11,13,10,787,NULL,1036,'2025-06-10 07:57:46','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','7090684333269',NULL,0,0,0,0,1,1,0),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]',NULL,'TA-161-A1',0,17,0,1,'in_stock',0,2,0,0,1282,NULL,NULL,NULL,14,14,11,792,NULL,74035,'2025-06-10 07:57:46','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','7686336586680',NULL,0,0,0,0,1,8,0),(12,'EPSION Plaster Printer (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]',NULL,'JP-157',0,10,0,1,'in_stock',0,3,0,0,560,154,NULL,NULL,11,12,18,735,NULL,192679,'2025-06-10 07:57:46','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'digital','9619552254703',NULL,0,0,0,0,1,7,0),(13,'Sound Intone I65 Earphone White Version','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]',NULL,'XO-191-A1',0,15,0,1,'in_stock',1,3,0,0,581,NULL,NULL,NULL,17,14,18,645,NULL,173773,'2025-06-10 07:57:46','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','1058703711982',NULL,0,0,0,0,1,6,0),(14,'B&amp;O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]',NULL,'FI-150-A1',0,12,0,1,'in_stock',1,4,0,0,568,NULL,NULL,NULL,18,17,14,696,NULL,155757,'2025-06-10 07:57:46','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','0784777653576',NULL,0,0,0,0,2,6,0),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]',NULL,'IR-119',0,11,0,1,'in_stock',1,5,0,0,526,75,NULL,NULL,18,11,18,568,NULL,134378,'2025-06-10 07:57:46','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','0839861151619',NULL,0,0,0,0,1,2,0),(16,'Apple MacBook Air Retina 12-Inch Laptop (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]',NULL,'TH-160',0,10,0,1,'in_stock',0,1,0,0,586,239,NULL,NULL,17,10,16,885,NULL,174760,'2025-06-10 07:57:46','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'digital','9259809627463',NULL,0,0,0,0,1,7,0),(17,'Samsung Gear VR Virtual Reality Headset','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]',NULL,'BM-180-A1',0,15,0,1,'in_stock',1,1,0,0,524,NULL,NULL,NULL,11,11,20,692,NULL,27156,'2025-06-10 07:57:46','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','1784964260234',NULL,0,0,0,0,2,5,0),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]',NULL,'NV-102-A1',0,11,0,1,'in_stock',1,5,0,0,1057,NULL,NULL,NULL,13,14,14,716,NULL,149756,'2025-06-10 07:57:46','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','9367854859972',NULL,0,0,0,0,2,5,0),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]',NULL,'ZD-197',0,11,0,1,'in_stock',1,3,0,0,955,384,NULL,NULL,12,10,14,895,NULL,173642,'2025-06-10 07:57:47','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','1731293870368',NULL,0,0,0,0,2,6,0),(20,'NYX Beauty Couton Pallete Makeup 12 (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]',NULL,'YP-148',0,19,0,1,'in_stock',1,3,0,0,797,531,NULL,NULL,17,14,16,655,NULL,52511,'2025-06-10 07:57:47','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'digital','4064929895921',NULL,0,0,0,0,1,3,0),(21,'MVMTH Classical Leather Watch In Black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]',NULL,'ZD-160',0,12,0,1,'in_stock',1,1,0,0,795,227,NULL,NULL,17,10,16,526,NULL,62423,'2025-06-10 07:57:47','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','9192360195722',NULL,0,0,0,0,1,4,0),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]',NULL,'HF-183-A1',0,20,0,1,'in_stock',1,1,0,0,606,NULL,NULL,NULL,12,11,14,503,NULL,54614,'2025-06-10 07:57:47','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','6233622590145',NULL,0,0,0,0,1,8,0),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]',NULL,'XU-111-A1',0,14,0,1,'in_stock',1,2,0,0,976,NULL,NULL,NULL,16,16,19,790,NULL,84989,'2025-06-10 07:57:47','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','7951809161344',NULL,0,0,0,0,1,8,0),(24,'Vimto Squash Remix Apple 1.5 Litres (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\",\"products\\/24-2.jpg\"]',NULL,'1T-129',0,11,0,1,'in_stock',1,2,0,0,640,536,NULL,NULL,20,12,20,795,NULL,25881,'2025-06-10 07:57:47','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'digital','8594529528203',NULL,0,0,0,0,1,1,0),(25,'Crock Pot Slow Cooker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/25.jpg\",\"products\\/25-1.jpg\",\"products\\/25-2.jpg\"]',NULL,'BD-200-A1',0,15,0,1,'in_stock',0,3,0,0,1289,NULL,NULL,NULL,11,12,18,718,NULL,58626,'2025-06-10 07:57:47','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','0895882369259',NULL,0,0,0,0,1,3,0),(26,'Taylors of Harrogate Yorkshire Coffee','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/26.jpg\",\"products\\/26-1.jpg\"]',NULL,'ZB-120-A1',0,17,0,1,'in_stock',0,4,0,0,962,NULL,NULL,NULL,20,11,14,707,NULL,199794,'2025-06-10 07:57:47','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','2864778219952',NULL,0,0,0,0,2,7,0),(27,'Soft Mochi &amp; Galeto Ice Cream','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/27.jpg\",\"products\\/27-1.jpg\"]',NULL,'KY-117-A1',0,10,0,1,'in_stock',1,4,0,0,838,NULL,NULL,NULL,16,19,12,787,NULL,25611,'2025-06-10 07:57:47','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','8307921179108',NULL,0,0,0,0,1,6,0),(28,'Naked Noodle Egg Noodles Singapore (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/28.jpg\",\"products\\/28-1.jpg\",\"products\\/28-2.jpg\"]',NULL,'XN-101',0,20,0,1,'in_stock',1,5,0,0,908,289,NULL,NULL,19,16,10,589,NULL,101695,'2025-06-10 07:57:47','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'digital','7411921737174',NULL,0,0,0,0,1,1,0),(29,'Saute Pan Silver','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/29.jpg\",\"products\\/29-1.jpg\",\"products\\/29-2.jpg\"]',NULL,'F1-165',0,14,0,1,'in_stock',1,1,0,0,1095,602,NULL,NULL,11,10,12,874,NULL,58922,'2025-06-10 07:57:47','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','5011151091590',NULL,0,0,0,0,1,1,0),(30,'Bar S – Classic Bun Length Franks','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/30.jpg\",\"products\\/30-1.jpg\",\"products\\/30-2.jpg\"]',NULL,'PQ-184-A1',0,14,0,1,'in_stock',0,5,0,0,1266,NULL,NULL,NULL,13,11,17,826,NULL,179805,'2025-06-10 07:57:47','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','3975242343642',NULL,0,0,0,0,2,2,0),(31,'Broccoli Crowns','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/31.jpg\",\"products\\/31-1.jpg\"]',NULL,'D1-173',0,20,0,1,'in_stock',0,4,0,0,504,290,NULL,NULL,18,15,11,656,NULL,50188,'2025-06-10 07:57:47','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','6063827962467',NULL,0,0,0,0,2,7,0),(32,'Slimming World Vegan Mac Greens (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/32.jpg\",\"products\\/32-1.jpg\",\"products\\/32-2.jpg\"]',NULL,'QO-129',0,15,0,1,'in_stock',1,2,0,0,984,206,NULL,NULL,13,19,17,510,NULL,160498,'2025-06-10 07:57:47','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'digital','2190920075054',NULL,0,0,0,0,2,5,0),(33,'Häagen-Dazs Salted Caramel','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/33.jpg\",\"products\\/33-1.jpg\",\"products\\/33-2.jpg\"]',NULL,'DP-162',0,19,0,1,'in_stock',0,4,0,0,706,398,NULL,NULL,15,13,10,658,NULL,166259,'2025-06-10 07:57:47','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','0582040784329',NULL,0,0,0,0,1,8,0),(34,'Iceland 3 Solo Exotic Burst','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/34.jpg\",\"products\\/34-1.jpg\"]',NULL,'AJ-190',0,10,0,1,'in_stock',1,2,0,0,850,239,NULL,NULL,13,16,12,730,NULL,31007,'2025-06-10 07:57:47','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','8209586448127',NULL,0,0,0,0,1,1,0),(35,'Extreme Budweiser Light Can','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/35.jpg\",\"products\\/35-1.jpg\"]',NULL,'TQ-142-A1',0,17,0,1,'in_stock',1,3,0,0,937,NULL,NULL,NULL,17,10,15,866,NULL,139318,'2025-06-10 07:57:47','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','7846056616771',NULL,0,0,0,0,1,2,0),(36,'Iceland Macaroni Cheese Traybake (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/36.jpg\",\"products\\/36-1.jpg\",\"products\\/36-2.jpg\"]',NULL,'OP-136',0,17,0,1,'in_stock',1,5,0,0,775,477,NULL,NULL,13,13,12,643,NULL,149687,'2025-06-10 07:57:47','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'digital','8184399335171',NULL,0,0,0,0,2,5,0),(37,'Dolmio Bolognese Pasta Sauce','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/37.jpg\",\"products\\/37-1.jpg\",\"products\\/37-2.jpg\"]',NULL,'FK-183-A1',0,10,0,1,'in_stock',1,5,0,0,721,NULL,NULL,NULL,18,14,14,542,NULL,21640,'2025-06-10 07:57:47','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','2800717020227',NULL,0,0,0,0,1,2,0),(38,'Sitema BakeIT Plastic Box','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/38.jpg\",\"products\\/38-1.jpg\",\"products\\/38-2.jpg\",\"products\\/38-3.jpg\"]',NULL,'AX-198-A1',0,14,0,1,'in_stock',1,4,0,0,841,NULL,NULL,NULL,15,16,15,828,NULL,29136,'2025-06-10 07:57:47','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','4966561344655',NULL,0,0,0,0,2,2,0),(39,'Wayfair Basics Dinner Plate Storage','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/39.jpg\",\"products\\/39-1.jpg\",\"products\\/39-2.jpg\"]',NULL,'8N-170-A1',0,16,0,1,'in_stock',1,4,0,0,904,NULL,NULL,NULL,13,10,20,882,NULL,189885,'2025-06-10 07:57:47','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','2548895536481',NULL,0,0,0,0,2,8,0),(40,'Miko The Panda Water Bottle (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/40.jpg\",\"products\\/40-1.jpg\"]',NULL,'KG-192-A1',0,20,0,1,'in_stock',0,1,0,0,1131,904.8,NULL,NULL,11,17,15,696,NULL,172353,'2025-06-10 07:57:47','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'digital','1961694490432',NULL,0,0,0,0,2,6,0),(41,'Sesame Seed Bread','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/41.jpg\",\"products\\/41-1.jpg\",\"products\\/41-2.jpg\"]',NULL,'JP-190',0,16,0,1,'in_stock',0,5,0,0,619,81,NULL,NULL,11,17,14,539,NULL,34084,'2025-06-10 07:57:47','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','3748005658020',NULL,0,0,0,0,2,7,0),(42,'Morrisons The Best Beef','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/42.jpg\",\"products\\/42-1.jpg\",\"products\\/42-2.jpg\"]',NULL,'AJ-191',0,14,0,1,'in_stock',0,1,0,0,634,405,NULL,NULL,12,12,11,893,NULL,13711,'2025-06-10 07:57:47','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','7628375572866',NULL,0,0,0,0,2,5,0),(43,'Avocado, Hass Large','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/43.jpg\",\"products\\/43-1.jpg\",\"products\\/43-2.jpg\"]',NULL,'5J-167',0,15,0,1,'in_stock',1,5,0,0,894,274,NULL,NULL,20,11,13,558,NULL,26490,'2025-06-10 07:57:47','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','2012124302920',NULL,0,0,0,0,2,2,0),(44,'Italia Beef Lasagne (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/44.jpg\",\"products\\/44-1.jpg\",\"products\\/44-2.jpg\"]',NULL,'HR-104-A1',0,15,0,1,'in_stock',0,1,0,0,802,641.6,NULL,NULL,19,18,13,769,NULL,138361,'2025-06-10 07:57:47','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'digital','6132133614688',NULL,0,0,0,0,2,6,0),(45,'Maxwell House Classic Roast Mocha','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/45.jpg\",\"products\\/45-1.jpg\"]',NULL,'WV-170',0,16,0,1,'in_stock',0,1,0,0,830,332,NULL,NULL,16,19,18,518,NULL,43856,'2025-06-10 07:57:47','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','2333735033585',NULL,0,0,0,0,1,4,0),(46,'Bottled Pure Water 500ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/46.jpg\",\"products\\/46-1.jpg\"]',NULL,'KW-165',0,13,0,1,'in_stock',0,4,0,0,591,175,NULL,NULL,14,19,12,749,NULL,174869,'2025-06-10 07:57:47','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','6169440737830',NULL,0,0,0,0,2,4,0),(47,'Famart Farmhouse Soft White','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/47.jpg\",\"products\\/47-1.jpg\"]',NULL,'ZK-198-A1',0,19,0,1,'in_stock',1,4,0,0,1148,NULL,NULL,NULL,17,18,18,668,NULL,7905,'2025-06-10 07:57:47','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','9906584562785',NULL,0,0,0,0,1,5,0),(48,'Coca-Cola Original Taste (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/48.jpg\",\"products\\/48-1.jpg\",\"products\\/48-2.jpg\"]',NULL,'L7-180-A1',0,20,0,1,'in_stock',0,5,0,0,730,525.6,NULL,NULL,11,13,17,810,NULL,32638,'2025-06-10 07:57:47','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'digital','1627656066212',NULL,0,0,0,0,2,4,0),(49,'Casillero Diablo Cabernet Sauvignon','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/49.jpg\",\"products\\/49-1.jpg\",\"products\\/49-2.jpg\"]',NULL,'VT-183-A1',0,16,0,1,'in_stock',0,2,0,0,530,NULL,NULL,NULL,18,20,15,717,NULL,90316,'2025-06-10 07:57:47','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','7860530167207',NULL,0,0,0,0,1,7,0),(50,'Arla Organic Free Range Milk','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/50.jpg\",\"products\\/50-1.jpg\"]',NULL,'WW-154',0,16,0,1,'in_stock',0,4,0,0,758,22,NULL,NULL,19,10,15,745,NULL,80878,'2025-06-10 07:57:47','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','2656751412654',NULL,0,0,0,0,1,4,0),(51,'Aptamil Follow On Baby Milk','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/51.jpg\"]',NULL,'HQ-134-A1',0,13,0,1,'in_stock',1,1,0,0,1222,NULL,NULL,NULL,13,17,17,709,NULL,189190,'2025-06-10 07:57:47','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','3447646504238',NULL,0,0,0,0,2,2,0),(52,'Cuisinart Chef’S Classic Hard-Anodized (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/52.jpg\",\"products\\/52-1.jpg\",\"products\\/52-2.jpg\"]',NULL,'C1-115',0,19,0,1,'in_stock',1,3,0,0,599,155,NULL,NULL,11,15,17,861,NULL,124439,'2025-06-10 07:57:47','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'digital','3072029754568',NULL,0,0,0,0,2,2,0),(53,'Corn, Yellow Sweet','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/53.jpg\",\"products\\/53-1.jpg\"]',NULL,'VF-186-A1',0,12,0,1,'in_stock',0,3,0,0,759,NULL,NULL,NULL,14,12,11,667,NULL,74662,'2025-06-10 07:57:48','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','3708082185574',NULL,0,0,0,0,1,3,0),(54,'Hobnobs The Nobbly Biscuit','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/54.jpg\",\"products\\/54-1.jpg\"]',NULL,'FE-122-A1',0,16,0,1,'in_stock',1,4,0,0,1266,NULL,NULL,NULL,20,11,18,604,NULL,21583,'2025-06-10 07:57:48','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','4773988128030',NULL,0,0,0,0,1,4,0),(55,'Honest Organic Still Lemonade','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/55.jpg\",\"products\\/55-1.jpg\",\"products\\/55-2.jpg\"]',NULL,'PE-188',0,19,0,1,'in_stock',1,3,0,0,1253,915,NULL,NULL,16,16,10,637,NULL,161775,'2025-06-10 07:57:48','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','3260719657897',NULL,0,0,0,0,2,4,0),(56,'Ice Beck’s Beer 350ml x 24 Pieces (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/56.jpg\",\"products\\/56-1.jpg\",\"products\\/56-2.jpg\"]',NULL,'SM-196-A1',0,12,0,1,'in_stock',1,3,0,0,878,676.06,NULL,NULL,19,13,19,678,NULL,111938,'2025-06-10 07:57:48','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'digital','3327601123523',NULL,0,0,0,0,1,7,0),(57,'Iceland 6 Hot Cross Buns','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/57.jpg\",\"products\\/57-1.jpg\"]',NULL,'WU-131-A1',0,11,0,1,'in_stock',1,2,0,0,873,NULL,NULL,NULL,18,11,14,814,NULL,114801,'2025-06-10 07:57:48','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','4262533912823',NULL,0,0,0,0,1,1,0),(58,'Iceland Luxury 4 Panini Rolls','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/58.jpg\",\"products\\/58-1.jpg\",\"products\\/58-2.jpg\"]',NULL,'ZO-130',0,13,0,1,'in_stock',1,1,0,0,1214,303,NULL,NULL,12,19,17,700,NULL,53183,'2025-06-10 07:57:48','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','8032959238175',NULL,0,0,0,0,1,3,0),(59,'Iceland Soft Scoop Vanilla','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/59.jpg\",\"products\\/59-1.jpg\",\"products\\/59-2.jpg\",\"products\\/59-3.jpg\"]',NULL,'72-187-A1',0,11,0,1,'in_stock',1,5,0,0,621,NULL,NULL,NULL,10,10,13,535,NULL,144666,'2025-06-10 07:57:48','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','4309353449181',NULL,0,0,0,0,2,3,0),(60,'Iceland Spaghetti Bolognese (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/60.jpg\",\"products\\/60-1.jpg\",\"products\\/60-2.jpg\"]',NULL,'ZV-113',0,13,0,1,'in_stock',1,2,0,0,919,535,NULL,NULL,16,18,14,861,NULL,80780,'2025-06-10 07:57:48','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'digital','3062743038754',NULL,0,0,0,0,2,4,0),(61,'Kellogg’s Coco Pops Cereal','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/61.jpg\",\"products\\/61-1.jpg\"]',NULL,'YH-182',0,10,0,1,'in_stock',1,1,0,0,1021,278,NULL,NULL,11,18,14,556,NULL,166691,'2025-06-10 07:57:48','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','6917187611940',NULL,0,0,0,0,2,3,0),(62,'Kit Kat Chunky Milk Chocolate','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/62.jpg\",\"products\\/62-1.jpg\"]',NULL,'JT-195-A1',0,19,0,1,'in_stock',1,5,0,0,1123,NULL,NULL,NULL,13,19,17,840,NULL,45647,'2025-06-10 07:57:48','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','5351454363285',NULL,0,0,0,0,1,3,0),(63,'Large Green Bell Pepper','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/63.jpg\",\"products\\/63-1.jpg\"]',NULL,'JR-168-A1',0,18,0,1,'in_stock',1,1,0,0,754,NULL,NULL,NULL,11,11,11,513,NULL,182508,'2025-06-10 07:57:48','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','5178018257756',NULL,0,0,0,0,1,2,0),(64,'Pice 94w Beasley Journal (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/64.jpg\",\"products\\/64-1.jpg\"]',NULL,'7S-101-A1',0,18,0,1,'in_stock',0,1,0,0,1008,836.64,NULL,NULL,18,20,14,745,NULL,8237,'2025-06-10 07:57:48','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'digital','8726589880377',NULL,0,0,0,0,1,4,0),(65,'Province Piece Glass Drinking Glass','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/65.jpg\",\"products\\/65-1.jpg\",\"products\\/65-2.jpg\"]',NULL,'M4-117',0,17,0,1,'in_stock',0,5,0,0,658,242,NULL,NULL,14,17,13,827,NULL,175761,'2025-06-10 07:57:48','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','2619311458608',NULL,0,0,0,0,1,7,0),(66,'Smart Watches',NULL,NULL,'published','[\"products\\/2-1.jpg\"]',NULL,'IO-176-A1',0,16,0,1,'in_stock',0,5,1,0,40.5,NULL,NULL,NULL,14,10,12,713,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','0825845762612',NULL,0,0,0,0,NULL,NULL,0),(67,'Smart Watches',NULL,NULL,'published','[\"products\\/2-2.jpg\"]',NULL,'IO-176-A1-A2',0,16,0,1,'in_stock',0,5,1,0,40.5,NULL,NULL,NULL,14,10,12,713,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','8878111418425',NULL,0,0,0,0,NULL,NULL,0),(68,'Smart Watches',NULL,NULL,'published','[\"products\\/2-3.jpg\"]',NULL,'IO-176-A1-A3',0,16,0,1,'in_stock',0,5,1,0,40.5,NULL,NULL,NULL,14,10,12,713,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','7425001667657',NULL,0,0,0,0,NULL,NULL,0),(69,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]',NULL,'IO-176-A1-A4',0,16,0,1,'in_stock',0,5,1,0,40.5,NULL,NULL,NULL,14,10,12,713,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','6635647510977',NULL,0,0,0,0,NULL,NULL,0),(70,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]',NULL,'ZH-144-A1',0,19,0,1,'in_stock',0,5,1,0,20,NULL,NULL,NULL,13,10,16,658,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','7681035959780',NULL,0,0,0,0,NULL,NULL,0),(71,'Red & Black Headphone (Digital)',NULL,NULL,'published','[\"products\\/4-1.jpg\"]',NULL,'VN-149-A1',0,14,0,1,'in_stock',0,2,1,0,588,493.92,NULL,NULL,16,16,12,862,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'digital','8128969717028',NULL,0,0,0,0,NULL,NULL,0),(72,'Red & Black Headphone (Digital)',NULL,NULL,'published','[\"products\\/4-2.jpg\"]',NULL,'VN-149-A1-A2',0,14,0,1,'in_stock',0,2,1,0,588,458.64,NULL,NULL,16,16,12,862,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'digital','8885928682628',NULL,0,0,0,0,NULL,NULL,0),(73,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-1.jpg\"]',NULL,'UY-192-A1',0,18,0,1,'in_stock',0,3,1,0,864,NULL,NULL,NULL,17,13,20,706,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','2922048509544',NULL,0,0,0,0,NULL,NULL,0),(74,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-2.jpg\"]',NULL,'UY-192-A1-A2',0,18,0,1,'in_stock',0,3,1,0,864,NULL,NULL,NULL,17,13,20,706,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','9838611813068',NULL,0,0,0,0,NULL,NULL,0),(75,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-3.jpg\"]',NULL,'UY-192-A1-A3',0,18,0,1,'in_stock',0,3,1,0,864,NULL,NULL,NULL,17,13,20,706,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','6021420012279',NULL,0,0,0,0,NULL,NULL,0),(76,'Smart Watch External',NULL,NULL,'published','[\"products\\/5.jpg\"]',NULL,'UY-192-A1-A4',0,18,0,1,'in_stock',0,3,1,0,864,NULL,NULL,NULL,17,13,20,706,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','9321642952252',NULL,0,0,0,0,NULL,NULL,0),(77,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]',NULL,'PB-154-A1',0,19,0,1,'in_stock',0,4,1,0,537,NULL,NULL,NULL,16,16,12,582,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','9987122276241',NULL,0,0,0,0,NULL,NULL,0),(78,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]',NULL,'PB-154-A1-A2',0,19,0,1,'in_stock',0,4,1,0,537,NULL,NULL,NULL,16,16,12,582,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','8623755080909',NULL,0,0,0,0,NULL,NULL,0),(79,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]',NULL,'PB-154-A1-A3',0,19,0,1,'in_stock',0,4,1,0,537,NULL,NULL,NULL,16,16,12,582,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','3423172473002',NULL,0,0,0,0,NULL,NULL,0),(80,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]',NULL,'PB-154-A1-A4',0,19,0,1,'in_stock',0,4,1,0,537,NULL,NULL,NULL,16,16,12,582,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','0063908236308',NULL,0,0,0,0,NULL,NULL,0),(81,'Smart Televisions (Digital)',NULL,NULL,'published','[\"products\\/8-1.jpg\"]',NULL,'B4-162-A1',0,19,0,1,'in_stock',0,1,1,0,1159,1043.1,NULL,NULL,16,20,10,555,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'digital','7204438449148',NULL,0,0,0,0,NULL,NULL,0),(82,'Smart Televisions (Digital)',NULL,NULL,'published','[\"products\\/8-2.jpg\"]',NULL,'B4-162-A1-A2',0,19,0,1,'in_stock',0,1,1,0,1159,1031.51,NULL,NULL,16,20,10,555,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'digital','2573459761535',NULL,0,0,0,0,NULL,NULL,0),(83,'Smart Televisions (Digital)',NULL,NULL,'published','[\"products\\/8-3.jpg\"]',NULL,'B4-162-A1-A3',0,19,0,1,'in_stock',0,1,1,0,1159,996.74,NULL,NULL,16,20,10,555,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'digital','5032316459475',NULL,0,0,0,0,NULL,NULL,0),(84,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9-1.jpg\"]',NULL,'LZ-159-A1',0,19,0,1,'in_stock',0,4,1,0,521,NULL,NULL,NULL,17,16,13,895,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','7129509904022',NULL,0,0,0,0,NULL,NULL,0),(85,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9-2.jpg\"]',NULL,'LZ-159-A1-A2',0,19,0,1,'in_stock',0,4,1,0,521,NULL,NULL,NULL,17,16,13,895,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','9000612295826',NULL,0,0,0,0,NULL,NULL,0),(86,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9.jpg\"]',NULL,'LZ-159-A1-A3',0,19,0,1,'in_stock',0,4,1,0,521,NULL,NULL,NULL,17,16,13,895,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','8707806091561',NULL,0,0,0,0,NULL,NULL,0),(87,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9.jpg\"]',NULL,'LZ-159-A1-A4',0,19,0,1,'in_stock',0,4,1,0,521,NULL,NULL,NULL,17,16,13,895,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','9684283408541',NULL,0,0,0,0,NULL,NULL,0),(88,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-1.jpg\"]',NULL,'HD-159-A1',0,17,0,1,'in_stock',0,5,1,0,1103,NULL,NULL,NULL,11,13,10,787,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','6489221230436',NULL,0,0,0,0,NULL,NULL,0),(89,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-2.jpg\"]',NULL,'HD-159-A1-A2',0,17,0,1,'in_stock',0,5,1,0,1103,NULL,NULL,NULL,11,13,10,787,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','9601900043336',NULL,0,0,0,0,NULL,NULL,0),(90,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-1.jpg\"]',NULL,'TA-161-A1',0,17,0,1,'in_stock',0,2,1,0,1282,NULL,NULL,NULL,14,14,11,792,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','5321399920317',NULL,0,0,0,0,NULL,NULL,0),(91,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-2.jpg\"]',NULL,'TA-161-A1-A2',0,17,0,1,'in_stock',0,2,1,0,1282,NULL,NULL,NULL,14,14,11,792,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','2366223702731',NULL,0,0,0,0,NULL,NULL,0),(92,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-3.jpg\"]',NULL,'TA-161-A1-A3',0,17,0,1,'in_stock',0,2,1,0,1282,NULL,NULL,NULL,14,14,11,792,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','6162441774163',NULL,0,0,0,0,NULL,NULL,0),(93,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]',NULL,'TA-161-A1-A4',0,17,0,1,'in_stock',0,2,1,0,1282,NULL,NULL,NULL,14,14,11,792,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','1624780823056',NULL,0,0,0,0,NULL,NULL,0),(94,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13-1.jpg\"]',NULL,'XO-191-A1',0,15,0,1,'in_stock',0,3,1,0,581,NULL,NULL,NULL,17,14,18,645,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','4875543464505',NULL,0,0,0,0,NULL,NULL,0),(95,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]',NULL,'FI-150-A1',0,12,0,1,'in_stock',0,4,1,0,568,NULL,NULL,NULL,18,17,14,696,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','1574141551831',NULL,0,0,0,0,NULL,NULL,0),(96,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]',NULL,'FI-150-A1-A2',0,12,0,1,'in_stock',0,4,1,0,568,NULL,NULL,NULL,18,17,14,696,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','5733054961199',NULL,0,0,0,0,NULL,NULL,0),(97,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17-1.jpg\"]',NULL,'BM-180-A1',0,15,0,1,'in_stock',0,1,1,0,524,NULL,NULL,NULL,11,11,20,692,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','3725545208816',NULL,0,0,0,0,NULL,NULL,0),(98,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-1.jpg\"]',NULL,'NV-102-A1',0,11,0,1,'in_stock',0,5,1,0,1057,NULL,NULL,NULL,13,14,14,716,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','0749761531933',NULL,0,0,0,0,NULL,NULL,0),(99,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-2.jpg\"]',NULL,'NV-102-A1-A2',0,11,0,1,'in_stock',0,5,1,0,1057,NULL,NULL,NULL,13,14,14,716,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','2202696384350',NULL,0,0,0,0,NULL,NULL,0),(100,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-3.jpg\"]',NULL,'NV-102-A1-A3',0,11,0,1,'in_stock',0,5,1,0,1057,NULL,NULL,NULL,13,14,14,716,NULL,0,'2025-06-10 07:57:48','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','3356309522796',NULL,0,0,0,0,NULL,NULL,0),(101,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-1.jpg\"]',NULL,'HF-183-A1',0,20,0,1,'in_stock',0,1,1,0,606,NULL,NULL,NULL,12,11,14,503,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','5319971477526',NULL,0,0,0,0,NULL,NULL,0),(102,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-1.jpg\"]',NULL,'XU-111-A1',0,14,0,1,'in_stock',0,2,1,0,976,NULL,NULL,NULL,16,16,19,790,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','5829210975206',NULL,0,0,0,0,NULL,NULL,0),(103,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-2.jpg\"]',NULL,'XU-111-A1-A2',0,14,0,1,'in_stock',0,2,1,0,976,NULL,NULL,NULL,16,16,19,790,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','1880242256767',NULL,0,0,0,0,NULL,NULL,0),(104,'Crock Pot Slow Cooker',NULL,NULL,'published','[\"products\\/25-1.jpg\"]',NULL,'BD-200-A1',0,15,0,1,'in_stock',0,3,1,0,1289,NULL,NULL,NULL,11,12,18,718,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','1135493688929',NULL,0,0,0,0,NULL,NULL,0),(105,'Crock Pot Slow Cooker',NULL,NULL,'published','[\"products\\/25-2.jpg\"]',NULL,'BD-200-A1-A2',0,15,0,1,'in_stock',0,3,1,0,1289,NULL,NULL,NULL,11,12,18,718,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','8037746939570',NULL,0,0,0,0,NULL,NULL,0),(106,'Crock Pot Slow Cooker',NULL,NULL,'published','[\"products\\/25.jpg\"]',NULL,'BD-200-A1-A3',0,15,0,1,'in_stock',0,3,1,0,1289,NULL,NULL,NULL,11,12,18,718,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','3687925394574',NULL,0,0,0,0,NULL,NULL,0),(107,'Crock Pot Slow Cooker',NULL,NULL,'published','[\"products\\/25.jpg\"]',NULL,'BD-200-A1-A4',0,15,0,1,'in_stock',0,3,1,0,1289,NULL,NULL,NULL,11,12,18,718,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','0306534573387',NULL,0,0,0,0,NULL,NULL,0),(108,'Taylors of Harrogate Yorkshire Coffee',NULL,NULL,'published','[\"products\\/26-1.jpg\"]',NULL,'ZB-120-A1',0,17,0,1,'in_stock',0,4,1,0,962,NULL,NULL,NULL,20,11,14,707,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','3046791266604',NULL,0,0,0,0,NULL,NULL,0),(109,'Soft Mochi & Galeto Ice Cream',NULL,NULL,'published','[\"products\\/27-1.jpg\"]',NULL,'KY-117-A1',0,10,0,1,'in_stock',0,4,1,0,838,NULL,NULL,NULL,16,19,12,787,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','0644205417784',NULL,0,0,0,0,NULL,NULL,0),(110,'Soft Mochi & Galeto Ice Cream',NULL,NULL,'published','[\"products\\/27.jpg\"]',NULL,'KY-117-A1-A2',0,10,0,1,'in_stock',0,4,1,0,838,NULL,NULL,NULL,16,19,12,787,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','2529819549404',NULL,0,0,0,0,NULL,NULL,0),(111,'Soft Mochi & Galeto Ice Cream',NULL,NULL,'published','[\"products\\/27.jpg\"]',NULL,'KY-117-A1-A3',0,10,0,1,'in_stock',0,4,1,0,838,NULL,NULL,NULL,16,19,12,787,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','5904724817973',NULL,0,0,0,0,NULL,NULL,0),(112,'Bar S – Classic Bun Length Franks',NULL,NULL,'published','[\"products\\/30-1.jpg\"]',NULL,'PQ-184-A1',0,14,0,1,'in_stock',0,5,1,0,1266,NULL,NULL,NULL,13,11,17,826,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','2854517447432',NULL,0,0,0,0,NULL,NULL,0),(113,'Bar S – Classic Bun Length Franks',NULL,NULL,'published','[\"products\\/30-2.jpg\"]',NULL,'PQ-184-A1-A2',0,14,0,1,'in_stock',0,5,1,0,1266,NULL,NULL,NULL,13,11,17,826,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:05',0,'Botble\\ACL\\Models\\User',NULL,'physical','6347288480549',NULL,0,0,0,0,NULL,NULL,0),(114,'Extreme Budweiser Light Can',NULL,NULL,'published','[\"products\\/35-1.jpg\"]',NULL,'TQ-142-A1',0,17,0,1,'in_stock',0,3,1,0,937,NULL,NULL,NULL,17,10,15,866,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','0411649834312',NULL,0,0,0,0,NULL,NULL,0),(115,'Extreme Budweiser Light Can',NULL,NULL,'published','[\"products\\/35.jpg\"]',NULL,'TQ-142-A1-A2',0,17,0,1,'in_stock',0,3,1,0,937,NULL,NULL,NULL,17,10,15,866,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','5050804269481',NULL,0,0,0,0,NULL,NULL,0),(116,'Dolmio Bolognese Pasta Sauce',NULL,NULL,'published','[\"products\\/37-1.jpg\"]',NULL,'FK-183-A1',0,10,0,1,'in_stock',0,5,1,0,721,NULL,NULL,NULL,18,14,14,542,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','3575409916629',NULL,0,0,0,0,NULL,NULL,0),(117,'Sitema BakeIT Plastic Box',NULL,NULL,'published','[\"products\\/38-1.jpg\"]',NULL,'AX-198-A1',0,14,0,1,'in_stock',0,4,1,0,841,NULL,NULL,NULL,15,16,15,828,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','1548886942339',NULL,0,0,0,0,NULL,NULL,0),(118,'Sitema BakeIT Plastic Box',NULL,NULL,'published','[\"products\\/38-2.jpg\"]',NULL,'AX-198-A1-A2',0,14,0,1,'in_stock',0,4,1,0,841,NULL,NULL,NULL,15,16,15,828,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','7383650258650',NULL,0,0,0,0,NULL,NULL,0),(119,'Wayfair Basics Dinner Plate Storage',NULL,NULL,'published','[\"products\\/39-1.jpg\"]',NULL,'8N-170-A1',0,16,0,1,'in_stock',0,4,1,0,904,NULL,NULL,NULL,13,10,20,882,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','8485230816164',NULL,0,0,0,0,NULL,NULL,0),(120,'Wayfair Basics Dinner Plate Storage',NULL,NULL,'published','[\"products\\/39-2.jpg\"]',NULL,'8N-170-A1-A2',0,16,0,1,'in_stock',0,4,1,0,904,NULL,NULL,NULL,13,10,20,882,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','5176153099606',NULL,0,0,0,0,NULL,NULL,0),(121,'Wayfair Basics Dinner Plate Storage',NULL,NULL,'published','[\"products\\/39.jpg\"]',NULL,'8N-170-A1-A3',0,16,0,1,'in_stock',0,4,1,0,904,NULL,NULL,NULL,13,10,20,882,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','0902499097618',NULL,0,0,0,0,NULL,NULL,0),(122,'Miko The Panda Water Bottle (Digital)',NULL,NULL,'published','[\"products\\/40-1.jpg\"]',NULL,'KG-192-A1',0,20,0,1,'in_stock',0,1,1,0,1131,904.8,NULL,NULL,11,17,15,696,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'digital','1989220773507',NULL,0,0,0,0,NULL,NULL,0),(123,'Miko The Panda Water Bottle (Digital)',NULL,NULL,'published','[\"products\\/40.jpg\"]',NULL,'KG-192-A1-A2',0,20,0,1,'in_stock',0,1,1,0,1131,836.94,NULL,NULL,11,17,15,696,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'digital','8767126682450',NULL,0,0,0,0,NULL,NULL,0),(124,'Miko The Panda Water Bottle (Digital)',NULL,NULL,'published','[\"products\\/40.jpg\"]',NULL,'KG-192-A1-A3',0,20,0,1,'in_stock',0,1,1,0,1131,882.18,NULL,NULL,11,17,15,696,NULL,0,'2025-06-10 07:57:49','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'digital','7853332691872',NULL,0,0,0,0,NULL,NULL,0),(125,'Italia Beef Lasagne (Digital)',NULL,NULL,'published','[\"products\\/44-1.jpg\"]',NULL,'HR-104-A1',0,15,0,1,'in_stock',0,1,1,0,802,641.6,NULL,NULL,19,18,13,769,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'digital','1648094244192',NULL,0,0,0,0,NULL,NULL,0),(126,'Italia Beef Lasagne (Digital)',NULL,NULL,'published','[\"products\\/44-2.jpg\"]',NULL,'HR-104-A1-A2',0,15,0,1,'in_stock',0,1,1,0,802,697.74,NULL,NULL,19,18,13,769,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'digital','6638222631180',NULL,0,0,0,0,NULL,NULL,0),(127,'Famart Farmhouse Soft White',NULL,NULL,'published','[\"products\\/47-1.jpg\"]',NULL,'ZK-198-A1',0,19,0,1,'in_stock',0,4,1,0,1148,NULL,NULL,NULL,17,18,18,668,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','9491975195869',NULL,0,0,0,0,NULL,NULL,0),(128,'Famart Farmhouse Soft White',NULL,NULL,'published','[\"products\\/47.jpg\"]',NULL,'ZK-198-A1-A2',0,19,0,1,'in_stock',0,4,1,0,1148,NULL,NULL,NULL,17,18,18,668,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','9533776198608',NULL,0,0,0,0,NULL,NULL,0),(129,'Coca-Cola Original Taste (Digital)',NULL,NULL,'published','[\"products\\/48-1.jpg\"]',NULL,'L7-180-A1',0,20,0,1,'in_stock',0,5,1,0,730,525.6,NULL,NULL,11,13,17,810,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'digital','6464042592499',NULL,0,0,0,0,NULL,NULL,0),(130,'Casillero Diablo Cabernet Sauvignon',NULL,NULL,'published','[\"products\\/49-1.jpg\"]',NULL,'VT-183-A1',0,16,0,1,'in_stock',0,2,1,0,530,NULL,NULL,NULL,18,20,15,717,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','4962963673638',NULL,0,0,0,0,NULL,NULL,0),(131,'Casillero Diablo Cabernet Sauvignon',NULL,NULL,'published','[\"products\\/49-2.jpg\"]',NULL,'VT-183-A1-A2',0,16,0,1,'in_stock',0,2,1,0,530,NULL,NULL,NULL,18,20,15,717,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','6658079238844',NULL,0,0,0,0,NULL,NULL,0),(132,'Casillero Diablo Cabernet Sauvignon',NULL,NULL,'published','[\"products\\/49.jpg\"]',NULL,'VT-183-A1-A3',0,16,0,1,'in_stock',0,2,1,0,530,NULL,NULL,NULL,18,20,15,717,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','2637448062185',NULL,0,0,0,0,NULL,NULL,0),(133,'Aptamil Follow On Baby Milk',NULL,NULL,'published','[\"products\\/51.jpg\"]',NULL,'HQ-134-A1',0,13,0,1,'in_stock',0,1,1,0,1222,NULL,NULL,NULL,13,17,17,709,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','7275632987798',NULL,0,0,0,0,NULL,NULL,0),(134,'Aptamil Follow On Baby Milk',NULL,NULL,'published','[\"products\\/51.jpg\"]',NULL,'HQ-134-A1-A2',0,13,0,1,'in_stock',0,1,1,0,1222,NULL,NULL,NULL,13,17,17,709,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','2045216475578',NULL,0,0,0,0,NULL,NULL,0),(135,'Aptamil Follow On Baby Milk',NULL,NULL,'published','[\"products\\/51.jpg\"]',NULL,'HQ-134-A1-A3',0,13,0,1,'in_stock',0,1,1,0,1222,NULL,NULL,NULL,13,17,17,709,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','1518812264460',NULL,0,0,0,0,NULL,NULL,0),(136,'Corn, Yellow Sweet',NULL,NULL,'published','[\"products\\/53-1.jpg\"]',NULL,'VF-186-A1',0,12,0,1,'in_stock',0,3,1,0,759,NULL,NULL,NULL,14,12,11,667,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','0971762357384',NULL,0,0,0,0,NULL,NULL,0),(137,'Corn, Yellow Sweet',NULL,NULL,'published','[\"products\\/53.jpg\"]',NULL,'VF-186-A1-A2',0,12,0,1,'in_stock',0,3,1,0,759,NULL,NULL,NULL,14,12,11,667,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','7369128871989',NULL,0,0,0,0,NULL,NULL,0),(138,'Hobnobs The Nobbly Biscuit',NULL,NULL,'published','[\"products\\/54-1.jpg\"]',NULL,'FE-122-A1',0,16,0,1,'in_stock',0,4,1,0,1266,NULL,NULL,NULL,20,11,18,604,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','1641471854724',NULL,0,0,0,0,NULL,NULL,0),(139,'Hobnobs The Nobbly Biscuit',NULL,NULL,'published','[\"products\\/54.jpg\"]',NULL,'FE-122-A1-A2',0,16,0,1,'in_stock',0,4,1,0,1266,NULL,NULL,NULL,20,11,18,604,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','7449833105682',NULL,0,0,0,0,NULL,NULL,0),(140,'Hobnobs The Nobbly Biscuit',NULL,NULL,'published','[\"products\\/54.jpg\"]',NULL,'FE-122-A1-A3',0,16,0,1,'in_stock',0,4,1,0,1266,NULL,NULL,NULL,20,11,18,604,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','3196060972719',NULL,0,0,0,0,NULL,NULL,0),(141,'Hobnobs The Nobbly Biscuit',NULL,NULL,'published','[\"products\\/54.jpg\"]',NULL,'FE-122-A1-A4',0,16,0,1,'in_stock',0,4,1,0,1266,NULL,NULL,NULL,20,11,18,604,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','3227370970611',NULL,0,0,0,0,NULL,NULL,0),(142,'Ice Beck’s Beer 350ml x 24 Pieces (Digital)',NULL,NULL,'published','[\"products\\/56-1.jpg\"]',NULL,'SM-196-A1',0,12,0,1,'in_stock',0,3,1,0,878,676.06,NULL,NULL,19,13,19,678,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'digital','3880581833771',NULL,0,0,0,0,NULL,NULL,0),(143,'Ice Beck’s Beer 350ml x 24 Pieces (Digital)',NULL,NULL,'published','[\"products\\/56-2.jpg\"]',NULL,'SM-196-A1-A2',0,12,0,1,'in_stock',0,3,1,0,878,658.5,NULL,NULL,19,13,19,678,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'digital','9588675864017',NULL,0,0,0,0,NULL,NULL,0),(144,'Iceland 6 Hot Cross Buns',NULL,NULL,'published','[\"products\\/57-1.jpg\"]',NULL,'WU-131-A1',0,11,0,1,'in_stock',0,2,1,0,873,NULL,NULL,NULL,18,11,14,814,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','7190321893283',NULL,0,0,0,0,NULL,NULL,0),(145,'Iceland 6 Hot Cross Buns',NULL,NULL,'published','[\"products\\/57.jpg\"]',NULL,'WU-131-A1-A2',0,11,0,1,'in_stock',0,2,1,0,873,NULL,NULL,NULL,18,11,14,814,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','3717909416210',NULL,0,0,0,0,NULL,NULL,0),(146,'Iceland 6 Hot Cross Buns',NULL,NULL,'published','[\"products\\/57.jpg\"]',NULL,'WU-131-A1-A3',0,11,0,1,'in_stock',0,2,1,0,873,NULL,NULL,NULL,18,11,14,814,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','4285376329900',NULL,0,0,0,0,NULL,NULL,0),(147,'Iceland 6 Hot Cross Buns',NULL,NULL,'published','[\"products\\/57.jpg\"]',NULL,'WU-131-A1-A4',0,11,0,1,'in_stock',0,2,1,0,873,NULL,NULL,NULL,18,11,14,814,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','7125802244490',NULL,0,0,0,0,NULL,NULL,0),(148,'Iceland 6 Hot Cross Buns',NULL,NULL,'published','[\"products\\/57.jpg\"]',NULL,'WU-131-A1-A5',0,11,0,1,'in_stock',0,2,1,0,873,NULL,NULL,NULL,18,11,14,814,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','1728689061813',NULL,0,0,0,0,NULL,NULL,0),(149,'Iceland Soft Scoop Vanilla',NULL,NULL,'published','[\"products\\/59-1.jpg\"]',NULL,'72-187-A1',0,11,0,1,'in_stock',0,5,1,0,621,NULL,NULL,NULL,10,10,13,535,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','6807268849969',NULL,0,0,0,0,NULL,NULL,0),(150,'Kit Kat Chunky Milk Chocolate',NULL,NULL,'published','[\"products\\/62-1.jpg\"]',NULL,'JT-195-A1',0,19,0,1,'in_stock',0,5,1,0,1123,NULL,NULL,NULL,13,19,17,840,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','1063491586209',NULL,0,0,0,0,NULL,NULL,0),(151,'Kit Kat Chunky Milk Chocolate',NULL,NULL,'published','[\"products\\/62.jpg\"]',NULL,'JT-195-A1-A2',0,19,0,1,'in_stock',0,5,1,0,1123,NULL,NULL,NULL,13,19,17,840,NULL,0,'2025-06-10 07:57:50','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','7231645036861',NULL,0,0,0,0,NULL,NULL,0),(152,'Kit Kat Chunky Milk Chocolate',NULL,NULL,'published','[\"products\\/62.jpg\"]',NULL,'JT-195-A1-A3',0,19,0,1,'in_stock',0,5,1,0,1123,NULL,NULL,NULL,13,19,17,840,NULL,0,'2025-06-10 07:57:51','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','5043338297778',NULL,0,0,0,0,NULL,NULL,0),(153,'Large Green Bell Pepper',NULL,NULL,'published','[\"products\\/63-1.jpg\"]',NULL,'JR-168-A1',0,18,0,1,'in_stock',0,1,1,0,754,NULL,NULL,NULL,11,11,11,513,NULL,0,'2025-06-10 07:57:51','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','9707998658824',NULL,0,0,0,0,NULL,NULL,0),(154,'Large Green Bell Pepper',NULL,NULL,'published','[\"products\\/63.jpg\"]',NULL,'JR-168-A1-A2',0,18,0,1,'in_stock',0,1,1,0,754,NULL,NULL,NULL,11,11,11,513,NULL,0,'2025-06-10 07:57:51','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'physical','0340933339328',NULL,0,0,0,0,NULL,NULL,0),(155,'Pice 94w Beasley Journal (Digital)',NULL,NULL,'published','[\"products\\/64-1.jpg\"]',NULL,'7S-101-A1',0,18,0,1,'in_stock',0,1,1,0,1008,836.64,NULL,NULL,18,20,14,745,NULL,0,'2025-06-10 07:57:51','2025-06-10 07:58:06',0,'Botble\\ACL\\Models\\User',NULL,'digital','4993378752441',NULL,0,0,0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,1,NULL,NULL,13,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/13-1.jpg\",\"products\\/38-1.jpg\",\"products\\/49-2.jpg\",\"products\\/62-1.jpg\"]'),(2,7,NULL,NULL,34,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/20-3.jpg\",\"products\\/40.jpg\",\"products\\/52.jpg\"]'),(3,7,NULL,NULL,62,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/29-2.jpg\",\"products\\/49.jpg\"]'),(4,2,NULL,NULL,21,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/15.jpg\",\"products\\/37-1.jpg\"]'),(5,7,NULL,NULL,49,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9-2.jpg\"]'),(6,1,NULL,NULL,2,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/55.jpg\",\"products\\/61.jpg\"]'),(7,4,NULL,NULL,25,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-2.jpg\",\"products\\/5-3.jpg\",\"products\\/21.jpg\",\"products\\/41-2.jpg\"]'),(8,5,NULL,NULL,14,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/3.jpg\",\"products\\/36-2.jpg\"]'),(9,9,NULL,NULL,54,1,'Best ecommerce CMS online store!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/12-2.jpg\",\"products\\/25.jpg\",\"products\\/37-1.jpg\"]'),(10,7,NULL,NULL,50,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2.jpg\",\"products\\/5-1.jpg\",\"products\\/24.jpg\",\"products\\/61-1.jpg\"]'),(11,9,NULL,NULL,58,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8.jpg\",\"products\\/23-2.jpg\",\"products\\/36.jpg\",\"products\\/38-3.jpg\"]'),(12,3,NULL,NULL,48,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/44-1.jpg\"]'),(13,2,NULL,NULL,48,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/25.jpg\",\"products\\/30-2.jpg\"]'),(14,6,NULL,NULL,40,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/38-2.jpg\",\"products\\/43-1.jpg\",\"products\\/64.jpg\"]'),(15,7,NULL,NULL,24,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2.jpg\",\"products\\/40-1.jpg\"]'),(16,3,NULL,NULL,22,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9-2.jpg\"]'),(17,9,NULL,NULL,3,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/16.jpg\",\"products\\/47.jpg\"]'),(18,2,NULL,NULL,49,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/29-1.jpg\",\"products\\/33-2.jpg\"]'),(19,4,NULL,NULL,9,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/48-2.jpg\"]'),(20,7,NULL,NULL,45,5,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4-2.jpg\",\"products\\/6.jpg\",\"products\\/11-1.jpg\",\"products\\/29.jpg\"]'),(21,3,NULL,NULL,53,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-3.jpg\",\"products\\/20.jpg\",\"products\\/60.jpg\"]'),(22,4,NULL,NULL,31,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/34-1.jpg\",\"products\\/63-1.jpg\"]'),(23,10,NULL,NULL,64,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8.jpg\",\"products\\/45-1.jpg\"]'),(24,8,NULL,NULL,32,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-2.jpg\"]'),(25,10,NULL,NULL,36,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-1.jpg\"]'),(26,2,NULL,NULL,6,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/50.jpg\"]'),(27,9,NULL,NULL,60,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/19-3.jpg\",\"products\\/37.jpg\"]'),(28,4,NULL,NULL,17,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/15-1.jpg\",\"products\\/30-2.jpg\",\"products\\/40.jpg\",\"products\\/44.jpg\"]'),(29,1,NULL,NULL,52,3,'Good app, good backup service and support. Good documentation.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/12-3.jpg\"]'),(30,5,NULL,NULL,27,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/30-2.jpg\",\"products\\/31.jpg\",\"products\\/63.jpg\"]'),(31,7,NULL,NULL,20,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/22-1.jpg\",\"products\\/49-1.jpg\",\"products\\/53-1.jpg\",\"products\\/61-1.jpg\"]'),(32,9,NULL,NULL,21,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/42-2.jpg\",\"products\\/47-1.jpg\",\"products\\/50.jpg\",\"products\\/65-2.jpg\"]'),(34,7,NULL,NULL,9,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/31.jpg\"]'),(36,2,NULL,NULL,5,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/29-2.jpg\"]'),(37,2,NULL,NULL,65,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4-2.jpg\",\"products\\/42-2.jpg\",\"products\\/50-1.jpg\"]'),(38,1,NULL,NULL,45,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/20-1.jpg\",\"products\\/32-2.jpg\",\"products\\/36-1.jpg\"]'),(39,2,NULL,NULL,28,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/60-1.jpg\"]'),(40,2,NULL,NULL,51,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/39-2.jpg\"]'),(42,7,NULL,NULL,57,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4-3.jpg\",\"products\\/22.jpg\"]'),(43,3,NULL,NULL,23,5,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4.jpg\",\"products\\/12-3.jpg\",\"products\\/63-1.jpg\"]'),(44,5,NULL,NULL,49,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8-1.jpg\"]'),(45,3,NULL,NULL,33,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10-1.jpg\",\"products\\/25.jpg\",\"products\\/52-2.jpg\"]'),(46,6,NULL,NULL,8,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/12-3.jpg\",\"products\\/41-1.jpg\"]'),(47,3,NULL,NULL,21,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/43.jpg\"]'),(48,7,NULL,NULL,22,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/3.jpg\",\"products\\/10-2.jpg\",\"products\\/23-2.jpg\",\"products\\/40.jpg\"]'),(49,4,NULL,NULL,21,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-1.jpg\",\"products\\/53-1.jpg\",\"products\\/60-2.jpg\"]'),(50,1,NULL,NULL,25,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/28-2.jpg\",\"products\\/34-1.jpg\",\"products\\/46-1.jpg\",\"products\\/46.jpg\"]'),(51,5,NULL,NULL,34,4,'Best ecommerce CMS online store!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5.jpg\"]'),(53,10,NULL,NULL,38,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9-2.jpg\",\"products\\/25-2.jpg\",\"products\\/37-2.jpg\",\"products\\/52-2.jpg\"]'),(54,9,NULL,NULL,46,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/29.jpg\",\"products\\/58-2.jpg\"]'),(55,10,NULL,NULL,22,3,'Good app, good backup service and support. Good documentation.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4-1.jpg\",\"products\\/23-3.jpg\",\"products\\/24-1.jpg\",\"products\\/31.jpg\"]'),(57,9,NULL,NULL,11,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/62.jpg\"]'),(58,2,NULL,NULL,15,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-3.jpg\",\"products\\/26-1.jpg\"]'),(59,7,NULL,NULL,18,5,'Good app, good backup service and support. Good documentation.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/22.jpg\",\"products\\/59-2.jpg\"]'),(60,6,NULL,NULL,14,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/16.jpg\",\"products\\/35.jpg\",\"products\\/49-1.jpg\"]'),(61,4,NULL,NULL,19,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-1.jpg\",\"products\\/4-3.jpg\"]'),(62,5,NULL,NULL,20,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-1.jpg\",\"products\\/17.jpg\",\"products\\/61-1.jpg\",\"products\\/62.jpg\"]'),(63,9,NULL,NULL,64,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-3.jpg\",\"products\\/3.jpg\",\"products\\/56.jpg\"]'),(64,10,NULL,NULL,46,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/36-1.jpg\",\"products\\/42-2.jpg\",\"products\\/55-2.jpg\"]'),(65,1,NULL,NULL,7,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/44-1.jpg\",\"products\\/54.jpg\"]'),(66,2,NULL,NULL,9,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2.jpg\",\"products\\/22-2.jpg\",\"products\\/22.jpg\"]'),(67,9,NULL,NULL,38,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11-3.jpg\",\"products\\/29-1.jpg\",\"products\\/39-2.jpg\",\"products\\/52-1.jpg\"]'),(68,8,NULL,NULL,50,2,'Best ecommerce CMS online store!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8-2.jpg\",\"products\\/32.jpg\"]'),(69,7,NULL,NULL,39,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/17-2.jpg\",\"products\\/20-2.jpg\",\"products\\/48-2.jpg\"]'),(71,5,NULL,NULL,39,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11-3.jpg\",\"products\\/26-1.jpg\",\"products\\/29-2.jpg\"]'),(72,4,NULL,NULL,53,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10.jpg\"]'),(73,4,NULL,NULL,52,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8.jpg\",\"products\\/10-1.jpg\",\"products\\/24.jpg\",\"products\\/41.jpg\"]'),(74,10,NULL,NULL,21,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/34-1.jpg\",\"products\\/43-1.jpg\",\"products\\/48-1.jpg\"]'),(75,5,NULL,NULL,60,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-2.jpg\"]'),(76,4,NULL,NULL,35,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8.jpg\",\"products\\/19-3.jpg\",\"products\\/58-2.jpg\",\"products\\/59.jpg\"]'),(77,2,NULL,NULL,47,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/17-3.jpg\",\"products\\/49.jpg\",\"products\\/56-2.jpg\"]'),(78,6,NULL,NULL,17,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-2.jpg\",\"products\\/12.jpg\",\"products\\/40-1.jpg\",\"products\\/65-1.jpg\"]'),(79,7,NULL,NULL,65,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/41.jpg\",\"products\\/52-1.jpg\",\"products\\/55-2.jpg\"]'),(80,1,NULL,NULL,48,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10-2.jpg\",\"products\\/20.jpg\",\"products\\/58-1.jpg\",\"products\\/60.jpg\"]'),(81,4,NULL,NULL,22,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/1.jpg\",\"products\\/5-3.jpg\",\"products\\/59-1.jpg\"]'),(82,7,NULL,NULL,42,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/18-2.jpg\",\"products\\/21.jpg\",\"products\\/30.jpg\",\"products\\/44.jpg\"]'),(83,2,NULL,NULL,64,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/36-2.jpg\",\"products\\/43-1.jpg\",\"products\\/51.jpg\",\"products\\/58-1.jpg\"]'),(84,1,NULL,NULL,6,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/15.jpg\",\"products\\/41-1.jpg\"]'),(85,10,NULL,NULL,15,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/40.jpg\",\"products\\/49.jpg\"]'),(86,3,NULL,NULL,36,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-1.jpg\",\"products\\/16.jpg\"]'),(87,7,NULL,NULL,12,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/12-2.jpg\",\"products\\/13.jpg\",\"products\\/39-1.jpg\",\"products\\/59-1.jpg\"]'),(88,1,NULL,NULL,51,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/7.jpg\",\"products\\/22.jpg\",\"products\\/27.jpg\",\"products\\/56-1.jpg\"]'),(89,3,NULL,NULL,62,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/51.jpg\"]'),(90,10,NULL,NULL,14,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/18-3.jpg\"]'),(91,2,NULL,NULL,27,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/21-1.jpg\"]'),(92,10,NULL,NULL,59,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/18.jpg\",\"products\\/24-2.jpg\",\"products\\/40.jpg\",\"products\\/55-1.jpg\"]'),(93,2,NULL,NULL,43,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/29-2.jpg\",\"products\\/60-2.jpg\",\"products\\/61.jpg\",\"products\\/65-2.jpg\"]'),(94,6,NULL,NULL,23,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/43-1.jpg\"]'),(95,4,NULL,NULL,39,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/25.jpg\",\"products\\/27.jpg\"]'),(96,3,NULL,NULL,30,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/46-1.jpg\",\"products\\/58.jpg\"]'),(97,7,NULL,NULL,46,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5.jpg\"]'),(98,5,NULL,NULL,46,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2.jpg\",\"products\\/5-2.jpg\",\"products\\/28-2.jpg\"]'),(99,10,NULL,NULL,47,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10.jpg\",\"products\\/15.jpg\",\"products\\/43-1.jpg\",\"products\\/54.jpg\"]'),(100,10,NULL,NULL,2,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/18.jpg\",\"products\\/38-2.jpg\",\"products\\/59-2.jpg\",\"products\\/62.jpg\"]'),(101,5,NULL,NULL,29,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-2.jpg\",\"products\\/23-2.jpg\",\"products\\/33-1.jpg\"]'),(102,4,NULL,NULL,47,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/12-3.jpg\",\"products\\/30-2.jpg\",\"products\\/64-1.jpg\"]'),(103,3,NULL,NULL,1,3,'Best ecommerce CMS online store!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/24.jpg\"]'),(104,1,NULL,NULL,22,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/65-2.jpg\"]'),(105,2,NULL,NULL,39,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11.jpg\",\"products\\/39-1.jpg\",\"products\\/65.jpg\"]'),(106,7,NULL,NULL,47,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/64-1.jpg\"]'),(107,5,NULL,NULL,44,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8.jpg\",\"products\\/15-1.jpg\",\"products\\/23-3.jpg\",\"products\\/24.jpg\"]'),(108,5,NULL,NULL,56,3,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/37-2.jpg\",\"products\\/47-1.jpg\"]'),(109,8,NULL,NULL,29,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-2.jpg\"]'),(110,6,NULL,NULL,39,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-1.jpg\",\"products\\/8.jpg\",\"products\\/11-3.jpg\",\"products\\/60-2.jpg\"]'),(111,8,NULL,NULL,61,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/44-1.jpg\"]'),(112,5,NULL,NULL,30,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/18-3.jpg\",\"products\\/28.jpg\",\"products\\/47-1.jpg\",\"products\\/59-3.jpg\"]'),(113,5,NULL,NULL,43,1,'Good app, good backup service and support. Good documentation.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11-2.jpg\",\"products\\/65-1.jpg\"]'),(114,10,NULL,NULL,42,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/41-1.jpg\",\"products\\/42-1.jpg\",\"products\\/56.jpg\"]'),(115,5,NULL,NULL,64,2,'Good app, good backup service and support. Good documentation.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/34.jpg\"]'),(116,9,NULL,NULL,61,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11.jpg\"]'),(117,9,NULL,NULL,32,3,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/28-2.jpg\"]'),(118,10,NULL,NULL,63,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/64.jpg\"]'),(119,10,NULL,NULL,39,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/45.jpg\",\"products\\/60.jpg\"]'),(120,4,NULL,NULL,46,1,'Good app, good backup service and support. Good documentation.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/34-1.jpg\"]'),(121,9,NULL,NULL,19,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/1.jpg\"]'),(122,7,NULL,NULL,1,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10-1.jpg\",\"products\\/38-1.jpg\",\"products\\/42.jpg\"]'),(123,5,NULL,NULL,47,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-2.jpg\",\"products\\/6.jpg\"]'),(124,10,NULL,NULL,49,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/31-1.jpg\"]'),(126,2,NULL,NULL,45,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/21-2.jpg\"]'),(127,4,NULL,NULL,7,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/12-2.jpg\",\"products\\/33-2.jpg\"]'),(128,3,NULL,NULL,13,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/17-2.jpg\",\"products\\/48-1.jpg\",\"products\\/48-2.jpg\",\"products\\/49-1.jpg\"]'),(130,2,NULL,NULL,10,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/30-2.jpg\",\"products\\/54-1.jpg\"]'),(131,10,NULL,NULL,53,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/14.jpg\",\"products\\/65-1.jpg\"]'),(133,8,NULL,NULL,38,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8-3.jpg\",\"products\\/12-3.jpg\",\"products\\/20-1.jpg\",\"products\\/42.jpg\"]'),(134,3,NULL,NULL,40,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4.jpg\",\"products\\/11.jpg\",\"products\\/20-1.jpg\",\"products\\/41.jpg\"]'),(135,4,NULL,NULL,8,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9.jpg\",\"products\\/23-3.jpg\",\"products\\/31-1.jpg\",\"products\\/38.jpg\"]'),(136,8,NULL,NULL,11,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/7.jpg\",\"products\\/8.jpg\",\"products\\/43.jpg\"]'),(137,2,NULL,NULL,31,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/25-2.jpg\",\"products\\/27-1.jpg\"]'),(138,7,NULL,NULL,55,5,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/31.jpg\",\"products\\/56.jpg\",\"products\\/64.jpg\"]'),(139,8,NULL,NULL,6,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/22-1.jpg\",\"products\\/25-2.jpg\"]'),(140,3,NULL,NULL,60,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/27.jpg\"]'),(141,6,NULL,NULL,41,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-1.jpg\",\"products\\/12-3.jpg\",\"products\\/44-2.jpg\"]'),(142,1,NULL,NULL,30,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/13-1.jpg\",\"products\\/22-3.jpg\",\"products\\/37.jpg\",\"products\\/63-1.jpg\"]'),(143,4,NULL,NULL,11,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/13.jpg\",\"products\\/20-1.jpg\"]'),(144,2,NULL,NULL,61,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/56-2.jpg\"]'),(145,2,NULL,NULL,57,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/37.jpg\"]'),(146,5,NULL,NULL,5,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/12-3.jpg\"]'),(147,9,NULL,NULL,9,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/32-1.jpg\",\"products\\/60-1.jpg\",\"products\\/65.jpg\"]'),(149,8,NULL,NULL,34,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4-2.jpg\",\"products\\/42-1.jpg\"]'),(150,3,NULL,NULL,10,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/28.jpg\"]'),(151,9,NULL,NULL,4,1,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/48-1.jpg\",\"products\\/60-1.jpg\"]'),(152,1,NULL,NULL,57,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-2.jpg\",\"products\\/11.jpg\",\"products\\/50-1.jpg\"]'),(153,9,NULL,NULL,26,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/28.jpg\",\"products\\/39-2.jpg\",\"products\\/49.jpg\",\"products\\/52.jpg\"]'),(154,4,NULL,NULL,4,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/1.jpg\",\"products\\/2-1.jpg\",\"products\\/3.jpg\",\"products\\/41-2.jpg\"]'),(156,1,NULL,NULL,18,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4.jpg\",\"products\\/44-2.jpg\",\"products\\/48.jpg\"]'),(157,3,NULL,NULL,45,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/44.jpg\"]'),(158,3,NULL,NULL,37,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-3.jpg\",\"products\\/8-1.jpg\",\"products\\/59-1.jpg\"]'),(159,8,NULL,NULL,7,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/3.jpg\",\"products\\/18-2.jpg\",\"products\\/23-1.jpg\",\"products\\/36-2.jpg\"]'),(160,2,NULL,NULL,50,5,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/21.jpg\",\"products\\/38-1.jpg\",\"products\\/43.jpg\",\"products\\/62.jpg\"]'),(161,9,NULL,NULL,42,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/57.jpg\",\"products\\/61.jpg\"]'),(162,4,NULL,NULL,15,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-1.jpg\",\"products\\/19.jpg\",\"products\\/37.jpg\",\"products\\/65-2.jpg\"]'),(163,5,NULL,NULL,33,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/29.jpg\",\"products\\/51.jpg\"]'),(164,4,NULL,NULL,61,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/25.jpg\",\"products\\/52-1.jpg\",\"products\\/54.jpg\",\"products\\/65-2.jpg\"]'),(165,10,NULL,NULL,61,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-3.jpg\",\"products\\/10-2.jpg\"]'),(167,6,NULL,NULL,6,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/24-1.jpg\",\"products\\/40.jpg\",\"products\\/59-2.jpg\"]'),(170,9,NULL,NULL,31,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/17-2.jpg\"]'),(172,8,NULL,NULL,59,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/28-2.jpg\",\"products\\/37.jpg\",\"products\\/39-1.jpg\",\"products\\/54-1.jpg\"]'),(173,4,NULL,NULL,64,3,'Best ecommerce CMS online store!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/23-3.jpg\"]'),(174,1,NULL,NULL,24,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8-1.jpg\",\"products\\/20-3.jpg\",\"products\\/47-1.jpg\",\"products\\/56.jpg\"]'),(176,3,NULL,NULL,9,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5.jpg\",\"products\\/35-1.jpg\"]'),(177,5,NULL,NULL,26,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/33-2.jpg\",\"products\\/51.jpg\",\"products\\/52-1.jpg\",\"products\\/54-1.jpg\"]'),(181,5,NULL,NULL,8,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/57.jpg\"]'),(183,2,NULL,NULL,60,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10-1.jpg\",\"products\\/37-1.jpg\",\"products\\/41-2.jpg\",\"products\\/56-1.jpg\"]'),(186,1,NULL,NULL,46,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-3.jpg\",\"products\\/41-1.jpg\",\"products\\/47-1.jpg\",\"products\\/54-1.jpg\"]'),(188,7,NULL,NULL,43,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5.jpg\",\"products\\/48.jpg\"]'),(189,5,NULL,NULL,59,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/15.jpg\",\"products\\/21.jpg\",\"products\\/26.jpg\",\"products\\/43-1.jpg\"]'),(190,3,NULL,NULL,3,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/22-1.jpg\",\"products\\/63-1.jpg\",\"products\\/65.jpg\"]'),(193,7,NULL,NULL,17,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/30-1.jpg\",\"products\\/30-2.jpg\",\"products\\/42-2.jpg\"]'),(196,7,NULL,NULL,31,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/31-1.jpg\"]'),(197,7,NULL,NULL,63,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/22.jpg\",\"products\\/30-1.jpg\",\"products\\/38-2.jpg\"]'),(198,3,NULL,NULL,31,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/36-2.jpg\",\"products\\/54.jpg\",\"products\\/58-1.jpg\"]'),(199,8,NULL,NULL,49,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/18.jpg\",\"products\\/38.jpg\",\"products\\/40.jpg\",\"products\\/48.jpg\"]'),(200,2,NULL,NULL,56,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/65-2.jpg\"]'),(203,9,NULL,NULL,51,2,'Good app, good backup service and support. Good documentation.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/13-1.jpg\",\"products\\/19-3.jpg\",\"products\\/43.jpg\",\"products\\/52-1.jpg\"]'),(206,5,NULL,NULL,4,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/43-1.jpg\",\"products\\/52.jpg\",\"products\\/57.jpg\"]'),(207,3,NULL,NULL,32,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/43-2.jpg\",\"products\\/45.jpg\"]'),(208,6,NULL,NULL,26,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/1.jpg\",\"products\\/30.jpg\",\"products\\/53-1.jpg\"]'),(209,5,NULL,NULL,28,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11.jpg\",\"products\\/57-1.jpg\"]'),(210,9,NULL,NULL,59,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8-1.jpg\",\"products\\/11-1.jpg\"]'),(211,7,NULL,NULL,2,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/27.jpg\",\"products\\/28-1.jpg\",\"products\\/47-1.jpg\"]'),(212,3,NULL,NULL,14,1,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/34-1.jpg\",\"products\\/41-1.jpg\",\"products\\/49.jpg\"]'),(214,8,NULL,NULL,57,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/12-3.jpg\",\"products\\/20-3.jpg\",\"products\\/24.jpg\"]'),(215,6,NULL,NULL,56,5,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/58-2.jpg\"]'),(216,1,NULL,NULL,55,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/63.jpg\"]'),(217,3,NULL,NULL,26,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4-2.jpg\",\"products\\/36-1.jpg\",\"products\\/62-1.jpg\",\"products\\/63.jpg\"]'),(218,1,NULL,NULL,10,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/38-2.jpg\",\"products\\/43.jpg\"]'),(219,4,NULL,NULL,45,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2.jpg\",\"products\\/19.jpg\",\"products\\/62.jpg\"]'),(221,4,NULL,NULL,63,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4-1.jpg\",\"products\\/30-1.jpg\",\"products\\/35-1.jpg\"]'),(222,2,NULL,NULL,11,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11-2.jpg\",\"products\\/38-1.jpg\",\"products\\/43.jpg\"]'),(225,3,NULL,NULL,51,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/29-1.jpg\",\"products\\/52-1.jpg\"]'),(226,5,NULL,NULL,18,4,'Best ecommerce CMS online store!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/21-2.jpg\"]'),(228,3,NULL,NULL,34,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/22.jpg\",\"products\\/30-1.jpg\",\"products\\/50-1.jpg\"]'),(229,10,NULL,NULL,41,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/38-1.jpg\",\"products\\/59-3.jpg\"]'),(232,10,NULL,NULL,31,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8-3.jpg\",\"products\\/24-1.jpg\"]'),(233,4,NULL,NULL,43,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/23-3.jpg\"]'),(234,8,NULL,NULL,45,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/30-2.jpg\",\"products\\/32-1.jpg\",\"products\\/36.jpg\",\"products\\/62.jpg\"]'),(236,8,NULL,NULL,17,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-2.jpg\",\"products\\/15.jpg\",\"products\\/39-1.jpg\",\"products\\/59.jpg\"]'),(238,4,NULL,NULL,49,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/23-1.jpg\",\"products\\/33.jpg\"]'),(239,3,NULL,NULL,46,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/12.jpg\",\"products\\/36.jpg\",\"products\\/51.jpg\",\"products\\/56-2.jpg\"]'),(240,4,NULL,NULL,37,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/20.jpg\"]'),(241,5,NULL,NULL,38,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/57-1.jpg\",\"products\\/63.jpg\"]'),(244,2,NULL,NULL,35,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/17-3.jpg\",\"products\\/22.jpg\",\"products\\/39-2.jpg\"]'),(245,4,NULL,NULL,27,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/18-1.jpg\"]'),(246,2,NULL,NULL,37,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-3.jpg\",\"products\\/45-1.jpg\",\"products\\/48.jpg\"]'),(249,2,NULL,NULL,42,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/56-1.jpg\"]'),(250,3,NULL,NULL,63,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4-3.jpg\",\"products\\/62.jpg\"]'),(254,5,NULL,NULL,16,1,'Good app, good backup service and support. Good documentation.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/39.jpg\"]'),(256,7,NULL,NULL,15,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/22-2.jpg\",\"products\\/48-2.jpg\",\"products\\/55-1.jpg\"]'),(257,6,NULL,NULL,44,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11-3.jpg\",\"products\\/43-1.jpg\",\"products\\/53.jpg\",\"products\\/56.jpg\"]'),(259,10,NULL,NULL,23,2,'Good app, good backup service and support. Good documentation.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-2.jpg\",\"products\\/19-2.jpg\"]'),(261,2,NULL,NULL,54,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/39-1.jpg\",\"products\\/41-2.jpg\",\"products\\/65.jpg\"]'),(262,10,NULL,NULL,28,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8-3.jpg\",\"products\\/52-1.jpg\",\"products\\/54.jpg\",\"products\\/58-1.jpg\"]'),(264,3,NULL,NULL,12,2,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8-1.jpg\",\"products\\/65-1.jpg\"]'),(265,6,NULL,NULL,59,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/22-1.jpg\",\"products\\/24-1.jpg\",\"products\\/34-1.jpg\"]'),(266,2,NULL,NULL,40,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/36-1.jpg\",\"products\\/49-1.jpg\",\"products\\/53-1.jpg\",\"products\\/58.jpg\"]'),(267,9,NULL,NULL,24,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8-3.jpg\",\"products\\/21-1.jpg\",\"products\\/29-2.jpg\",\"products\\/65.jpg\"]'),(268,4,NULL,NULL,14,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-3.jpg\",\"products\\/10.jpg\",\"products\\/30-2.jpg\",\"products\\/63.jpg\"]'),(269,7,NULL,NULL,3,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-3.jpg\",\"products\\/4-3.jpg\"]'),(270,4,NULL,NULL,33,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/20-2.jpg\"]'),(271,1,NULL,NULL,12,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/6.jpg\",\"products\\/31-1.jpg\",\"products\\/38.jpg\",\"products\\/42-2.jpg\"]'),(272,3,NULL,NULL,27,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/7.jpg\",\"products\\/11-1.jpg\",\"products\\/25-1.jpg\",\"products\\/29.jpg\"]'),(273,9,NULL,NULL,55,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/65-2.jpg\"]'),(274,3,NULL,NULL,56,2,'Good app, good backup service and support. Good documentation.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/24.jpg\",\"products\\/33-2.jpg\",\"products\\/34-1.jpg\",\"products\\/47.jpg\"]'),(277,2,NULL,NULL,13,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-1.jpg\",\"products\\/18-3.jpg\",\"products\\/58.jpg\",\"products\\/60-2.jpg\"]'),(281,4,NULL,NULL,58,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/43-2.jpg\",\"products\\/56.jpg\"]'),(283,9,NULL,NULL,40,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9-2.jpg\",\"products\\/14.jpg\",\"products\\/43.jpg\"]'),(285,9,NULL,NULL,39,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-2.jpg\",\"products\\/10.jpg\",\"products\\/23-2.jpg\",\"products\\/42.jpg\"]'),(286,6,NULL,NULL,4,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-3.jpg\",\"products\\/53-1.jpg\",\"products\\/57.jpg\"]'),(287,2,NULL,NULL,12,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11-2.jpg\",\"products\\/38-2.jpg\",\"products\\/49-2.jpg\",\"products\\/50-1.jpg\"]'),(289,4,NULL,NULL,38,5,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/30-1.jpg\",\"products\\/55-1.jpg\"]'),(291,10,NULL,NULL,27,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/45.jpg\"]'),(292,5,NULL,NULL,12,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8-2.jpg\",\"products\\/29-2.jpg\",\"products\\/35.jpg\",\"products\\/56-2.jpg\"]'),(293,6,NULL,NULL,18,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10.jpg\",\"products\\/30-1.jpg\",\"products\\/47-1.jpg\"]'),(294,3,NULL,NULL,4,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/18.jpg\"]'),(296,1,NULL,NULL,28,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4-1.jpg\",\"products\\/36.jpg\"]'),(297,6,NULL,NULL,13,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11-3.jpg\",\"products\\/33-2.jpg\"]'),(299,7,NULL,NULL,10,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11-2.jpg\",\"products\\/12-2.jpg\",\"products\\/44-2.jpg\"]'),(300,4,NULL,NULL,55,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/24-2.jpg\",\"products\\/37-1.jpg\",\"products\\/64-1.jpg\"]'),(301,6,NULL,NULL,21,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/31-1.jpg\",\"products\\/39-1.jpg\",\"products\\/44-2.jpg\",\"products\\/44.jpg\"]'),(302,10,NULL,NULL,58,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/12.jpg\"]'),(303,2,NULL,NULL,18,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/13-1.jpg\",\"products\\/49.jpg\"]'),(305,1,NULL,NULL,14,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8-2.jpg\",\"products\\/9.jpg\",\"products\\/11-2.jpg\",\"products\\/22-1.jpg\"]'),(306,9,NULL,NULL,50,4,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/53.jpg\"]'),(307,8,NULL,NULL,39,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/42.jpg\",\"products\\/48-2.jpg\"]'),(309,1,NULL,NULL,58,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/19-1.jpg\",\"products\\/19-3.jpg\"]'),(313,10,NULL,NULL,3,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/6.jpg\",\"products\\/48-1.jpg\"]'),(314,8,NULL,NULL,43,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/18-1.jpg\",\"products\\/49-1.jpg\",\"products\\/49.jpg\",\"products\\/53-1.jpg\"]'),(315,8,NULL,NULL,27,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/37-2.jpg\",\"products\\/40-1.jpg\",\"products\\/43-2.jpg\"]'),(316,3,NULL,NULL,43,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/47-1.jpg\"]'),(317,6,NULL,NULL,30,3,'Best ecommerce CMS online store!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-3.jpg\"]'),(320,1,NULL,NULL,63,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/61.jpg\"]'),(324,4,NULL,NULL,10,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/23-3.jpg\",\"products\\/36-1.jpg\",\"products\\/57.jpg\",\"products\\/59.jpg\"]'),(325,1,NULL,NULL,49,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/31-1.jpg\"]'),(327,4,NULL,NULL,6,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-3.jpg\",\"products\\/26.jpg\",\"products\\/41-1.jpg\"]'),(329,8,NULL,NULL,12,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/12-1.jpg\",\"products\\/21-1.jpg\",\"products\\/28-2.jpg\"]'),(331,9,NULL,NULL,6,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/22-3.jpg\",\"products\\/23.jpg\"]'),(332,10,NULL,NULL,65,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/51.jpg\",\"products\\/63-1.jpg\"]'),(333,9,NULL,NULL,56,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/17-2.jpg\"]'),(336,3,NULL,NULL,39,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/3.jpg\",\"products\\/42-2.jpg\",\"products\\/61.jpg\"]'),(337,3,NULL,NULL,19,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8-3.jpg\"]'),(338,1,NULL,NULL,56,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11-3.jpg\",\"products\\/53-1.jpg\"]'),(339,5,NULL,NULL,21,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/55-2.jpg\"]'),(341,7,NULL,NULL,58,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4-1.jpg\"]'),(344,3,NULL,NULL,65,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5.jpg\",\"products\\/8-1.jpg\",\"products\\/45.jpg\"]'),(347,8,NULL,NULL,56,4,'Best ecommerce CMS online store!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/18-1.jpg\",\"products\\/37-2.jpg\",\"products\\/43-1.jpg\"]'),(348,1,NULL,NULL,26,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/29-2.jpg\",\"products\\/65-2.jpg\"]'),(350,8,NULL,NULL,4,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/17-1.jpg\",\"products\\/21-1.jpg\",\"products\\/48-2.jpg\",\"products\\/53.jpg\"]'),(351,1,NULL,NULL,64,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/29-2.jpg\"]'),(353,2,NULL,NULL,17,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10.jpg\",\"products\\/11-2.jpg\",\"products\\/11.jpg\"]'),(356,1,NULL,NULL,59,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/7.jpg\",\"products\\/26-1.jpg\"]'),(357,7,NULL,NULL,16,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8-2.jpg\",\"products\\/24-2.jpg\",\"products\\/25-1.jpg\",\"products\\/28.jpg\"]'),(358,10,NULL,NULL,8,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/37.jpg\"]'),(359,6,NULL,NULL,37,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10.jpg\",\"products\\/18-3.jpg\",\"products\\/49.jpg\"]'),(360,3,NULL,NULL,18,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9-1.jpg\"]'),(361,4,NULL,NULL,51,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/35.jpg\",\"products\\/37-1.jpg\"]'),(362,6,NULL,NULL,51,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/23-3.jpg\",\"products\\/29.jpg\"]'),(363,5,NULL,NULL,50,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2.jpg\"]'),(364,7,NULL,NULL,30,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/34-1.jpg\",\"products\\/64-1.jpg\"]'),(365,6,NULL,NULL,9,2,'Best ecommerce CMS online store!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/48-2.jpg\"]'),(366,7,NULL,NULL,11,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/1.jpg\",\"products\\/53-1.jpg\"]'),(367,7,NULL,NULL,32,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/20-1.jpg\",\"products\\/41-2.jpg\"]'),(368,5,NULL,NULL,35,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8-1.jpg\",\"products\\/14.jpg\",\"products\\/20-1.jpg\"]'),(369,9,NULL,NULL,2,4,'Best ecommerce CMS online store!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/43-1.jpg\"]'),(370,10,NULL,NULL,62,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-2.jpg\",\"products\\/23-3.jpg\",\"products\\/47-1.jpg\"]'),(371,2,NULL,NULL,62,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4-1.jpg\",\"products\\/41-1.jpg\"]'),(372,3,NULL,NULL,59,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/21-2.jpg\",\"products\\/22.jpg\",\"products\\/53-1.jpg\"]'),(375,4,NULL,NULL,2,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/44-2.jpg\"]'),(379,10,NULL,NULL,1,5,'Best ecommerce CMS online store!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/28.jpg\"]'),(380,7,NULL,NULL,23,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/16.jpg\",\"products\\/43.jpg\",\"products\\/63-1.jpg\"]'),(384,6,NULL,NULL,15,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/7.jpg\",\"products\\/27-1.jpg\",\"products\\/38-1.jpg\"]'),(387,2,NULL,NULL,8,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4.jpg\",\"products\\/12-3.jpg\",\"products\\/23-1.jpg\",\"products\\/38-3.jpg\"]'),(390,3,NULL,NULL,35,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/41.jpg\"]'),(393,8,NULL,NULL,8,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/18-2.jpg\"]'),(395,1,NULL,NULL,61,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/15-1.jpg\",\"products\\/60-2.jpg\"]'),(398,6,NULL,NULL,22,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/48-1.jpg\"]'),(402,8,NULL,NULL,35,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/12-3.jpg\",\"products\\/44.jpg\"]'),(403,6,NULL,NULL,16,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/6.jpg\",\"products\\/25-1.jpg\",\"products\\/36.jpg\",\"products\\/39-2.jpg\"]'),(405,6,NULL,NULL,34,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/46.jpg\"]'),(410,9,NULL,NULL,20,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/13-1.jpg\",\"products\\/21.jpg\",\"products\\/60-1.jpg\"]'),(412,10,NULL,NULL,43,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-1.jpg\",\"products\\/4-1.jpg\",\"products\\/9-1.jpg\"]'),(413,9,NULL,NULL,62,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/36-2.jpg\",\"products\\/65-1.jpg\"]'),(414,10,NULL,NULL,10,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/18.jpg\"]'),(416,1,NULL,NULL,38,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-1.jpg\",\"products\\/44-2.jpg\",\"products\\/58.jpg\",\"products\\/59-1.jpg\"]'),(417,1,NULL,NULL,8,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4-1.jpg\",\"products\\/13-1.jpg\",\"products\\/35-1.jpg\",\"products\\/60-1.jpg\"]'),(418,6,NULL,NULL,3,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/48-2.jpg\"]'),(421,4,NULL,NULL,12,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/3.jpg\",\"products\\/18.jpg\",\"products\\/36-2.jpg\"]'),(424,9,NULL,NULL,10,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10-2.jpg\",\"products\\/44.jpg\",\"products\\/60-1.jpg\"]'),(425,5,NULL,NULL,31,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/31.jpg\",\"products\\/59-1.jpg\"]'),(426,3,NULL,NULL,28,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/22-3.jpg\"]'),(428,2,NULL,NULL,32,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/62-1.jpg\"]'),(429,10,NULL,NULL,48,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/48-1.jpg\"]'),(433,9,NULL,NULL,41,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-1.jpg\",\"products\\/28-2.jpg\",\"products\\/41-1.jpg\"]'),(437,9,NULL,NULL,36,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/32.jpg\",\"products\\/63.jpg\"]'),(438,10,NULL,NULL,51,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-1.jpg\",\"products\\/47-1.jpg\"]'),(439,5,NULL,NULL,65,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/33-1.jpg\",\"products\\/43.jpg\",\"products\\/45.jpg\"]'),(440,10,NULL,NULL,13,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/23-3.jpg\",\"products\\/26-1.jpg\",\"products\\/37-2.jpg\",\"products\\/65-2.jpg\"]'),(441,8,NULL,NULL,3,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/18-2.jpg\",\"products\\/25.jpg\",\"products\\/48-1.jpg\"]'),(442,10,NULL,NULL,4,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11-1.jpg\",\"products\\/58-1.jpg\",\"products\\/59-1.jpg\"]'),(444,7,NULL,NULL,35,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/39-1.jpg\"]'),(445,2,NULL,NULL,29,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/17.jpg\",\"products\\/23-3.jpg\",\"products\\/29-1.jpg\",\"products\\/55-1.jpg\"]'),(447,2,NULL,NULL,24,5,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/15.jpg\",\"products\\/38-3.jpg\",\"products\\/61-1.jpg\",\"products\\/64-1.jpg\"]'),(449,10,NULL,NULL,50,5,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/27.jpg\"]'),(450,1,NULL,NULL,39,2,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/17-1.jpg\",\"products\\/35.jpg\",\"products\\/42-2.jpg\",\"products\\/63.jpg\"]'),(453,7,NULL,NULL,19,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/23-1.jpg\",\"products\\/27.jpg\",\"products\\/32-2.jpg\",\"products\\/50.jpg\"]'),(454,5,NULL,NULL,37,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/59-3.jpg\"]'),(456,7,NULL,NULL,48,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/46-1.jpg\",\"products\\/56-2.jpg\"]'),(457,3,NULL,NULL,29,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8-3.jpg\",\"products\\/30-2.jpg\",\"products\\/48-2.jpg\",\"products\\/60.jpg\"]'),(459,4,NULL,NULL,32,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/20-2.jpg\"]'),(460,2,NULL,NULL,26,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/20-2.jpg\",\"products\\/54-1.jpg\",\"products\\/64-1.jpg\"]'),(461,7,NULL,NULL,25,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8-1.jpg\"]'),(462,3,NULL,NULL,16,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/19-3.jpg\",\"products\\/21-1.jpg\",\"products\\/25.jpg\",\"products\\/28-1.jpg\"]'),(463,7,NULL,NULL,37,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/55-1.jpg\"]'),(465,5,NULL,NULL,52,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/60-2.jpg\",\"products\\/62-1.jpg\"]'),(471,7,NULL,NULL,27,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/13.jpg\",\"products\\/25-1.jpg\",\"products\\/44-2.jpg\",\"products\\/44.jpg\"]'),(477,9,NULL,NULL,7,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/44.jpg\"]'),(480,4,NULL,NULL,60,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-2.jpg\"]'),(482,3,NULL,NULL,2,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9-1.jpg\",\"products\\/40.jpg\",\"products\\/49-1.jpg\",\"products\\/50-1.jpg\"]'),(483,8,NULL,NULL,25,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/32.jpg\",\"products\\/50-1.jpg\"]'),(485,5,NULL,NULL,10,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/32.jpg\",\"products\\/65-1.jpg\"]'),(491,7,NULL,NULL,21,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/38-1.jpg\",\"products\\/54.jpg\",\"products\\/58-1.jpg\"]'),(493,7,NULL,NULL,6,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/20-1.jpg\",\"products\\/25-1.jpg\",\"products\\/56-2.jpg\"]'),(495,3,NULL,NULL,15,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-3.jpg\",\"products\\/49.jpg\",\"products\\/63-1.jpg\"]'),(496,9,NULL,NULL,37,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/21-2.jpg\",\"products\\/29.jpg\",\"products\\/36-2.jpg\",\"products\\/42-1.jpg\"]'),(501,10,NULL,NULL,33,1,'Good app, good backup service and support. Good documentation.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9.jpg\",\"products\\/33.jpg\",\"products\\/53-1.jpg\"]'),(502,8,NULL,NULL,65,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/12-2.jpg\",\"products\\/19-1.jpg\",\"products\\/21-1.jpg\"]'),(504,7,NULL,NULL,64,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/26-1.jpg\",\"products\\/30.jpg\"]'),(505,6,NULL,NULL,1,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/38.jpg\",\"products\\/42-2.jpg\"]'),(507,4,NULL,NULL,36,2,'Best ecommerce CMS online store!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10-1.jpg\",\"products\\/13.jpg\",\"products\\/31-1.jpg\"]'),(509,1,NULL,NULL,34,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/65-1.jpg\"]'),(510,5,NULL,NULL,54,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-3.jpg\",\"products\\/28.jpg\"]'),(511,9,NULL,NULL,12,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10-2.jpg\",\"products\\/46-1.jpg\",\"products\\/56.jpg\"]'),(513,6,NULL,NULL,36,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/13.jpg\"]'),(514,2,NULL,NULL,63,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/30.jpg\",\"products\\/48-2.jpg\"]'),(518,6,NULL,NULL,57,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/19-2.jpg\",\"products\\/32-2.jpg\",\"products\\/52.jpg\",\"products\\/64-1.jpg\"]'),(519,9,NULL,NULL,48,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/23-1.jpg\",\"products\\/33-2.jpg\"]'),(523,10,NULL,NULL,9,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9-2.jpg\"]'),(528,2,NULL,NULL,14,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9-1.jpg\",\"products\\/39-1.jpg\",\"products\\/47-1.jpg\",\"products\\/62.jpg\"]'),(530,1,NULL,NULL,23,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9.jpg\",\"products\\/52.jpg\",\"products\\/56-1.jpg\"]'),(536,4,NULL,NULL,50,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/21.jpg\",\"products\\/28.jpg\",\"products\\/64.jpg\"]'),(540,1,NULL,NULL,65,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/24.jpg\",\"products\\/41-1.jpg\",\"products\\/56-1.jpg\"]'),(541,5,NULL,NULL,48,2,'Best ecommerce CMS online store!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/16.jpg\",\"products\\/29-1.jpg\",\"products\\/43.jpg\",\"products\\/58-1.jpg\"]'),(542,10,NULL,NULL,26,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/41-1.jpg\",\"products\\/50.jpg\"]'),(544,8,NULL,NULL,13,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/24.jpg\",\"products\\/39-2.jpg\",\"products\\/63.jpg\"]'),(546,1,NULL,NULL,31,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/17-3.jpg\",\"products\\/63.jpg\"]'),(547,4,NULL,NULL,57,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/36-2.jpg\",\"products\\/39-2.jpg\",\"products\\/45.jpg\",\"products\\/50-1.jpg\"]'),(549,8,NULL,NULL,24,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/30.jpg\",\"products\\/44-2.jpg\",\"products\\/63.jpg\"]'),(550,8,NULL,NULL,1,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/15.jpg\",\"products\\/17-1.jpg\",\"products\\/20.jpg\",\"products\\/24.jpg\"]'),(553,8,NULL,NULL,19,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/17-2.jpg\",\"products\\/32-2.jpg\",\"products\\/42-2.jpg\",\"products\\/52-1.jpg\"]'),(554,4,NULL,NULL,59,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-3.jpg\"]'),(556,8,NULL,NULL,36,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/18-1.jpg\",\"products\\/19-3.jpg\",\"products\\/21.jpg\",\"products\\/26-1.jpg\"]'),(557,8,NULL,NULL,46,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9.jpg\",\"products\\/39-2.jpg\",\"products\\/48-2.jpg\",\"products\\/49-1.jpg\"]'),(559,3,NULL,NULL,20,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/15.jpg\",\"products\\/16.jpg\",\"products\\/30.jpg\",\"products\\/53-1.jpg\"]'),(562,3,NULL,NULL,58,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/15.jpg\",\"products\\/30-1.jpg\",\"products\\/65-2.jpg\"]'),(563,10,NULL,NULL,20,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/13-1.jpg\",\"products\\/18-3.jpg\",\"products\\/23-1.jpg\"]'),(564,10,NULL,NULL,7,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9-2.jpg\",\"products\\/15.jpg\",\"products\\/22-3.jpg\",\"products\\/55-2.jpg\"]'),(565,3,NULL,NULL,24,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/43-2.jpg\"]'),(568,1,NULL,NULL,62,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/61-1.jpg\"]'),(570,9,NULL,NULL,23,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/23.jpg\"]'),(571,2,NULL,NULL,38,5,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/23-2.jpg\",\"products\\/48.jpg\"]'),(573,1,NULL,NULL,4,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/25-2.jpg\",\"products\\/42.jpg\",\"products\\/49.jpg\"]'),(576,4,NULL,NULL,44,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/19-3.jpg\",\"products\\/33-2.jpg\"]'),(578,3,NULL,NULL,57,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9-2.jpg\",\"products\\/23-1.jpg\"]'),(579,1,NULL,NULL,42,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/39-2.jpg\"]'),(581,4,NULL,NULL,13,1,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/40-1.jpg\"]'),(583,8,NULL,NULL,63,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/29-2.jpg\",\"products\\/38-3.jpg\",\"products\\/44.jpg\"]'),(587,3,NULL,NULL,41,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11-1.jpg\",\"products\\/12-3.jpg\",\"products\\/19-2.jpg\"]'),(589,1,NULL,NULL,1,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/64.jpg\"]'),(590,8,NULL,NULL,62,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10-2.jpg\",\"products\\/26-1.jpg\"]'),(591,2,NULL,NULL,25,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/29-2.jpg\",\"products\\/33-1.jpg\"]'),(592,6,NULL,NULL,48,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/20-1.jpg\",\"products\\/29-1.jpg\",\"products\\/38-1.jpg\"]'),(594,2,NULL,NULL,55,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-2.jpg\",\"products\\/9-1.jpg\",\"products\\/55-1.jpg\"]'),(595,1,NULL,NULL,50,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4-3.jpg\",\"products\\/12-3.jpg\",\"products\\/28.jpg\"]'),(596,5,NULL,NULL,24,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/38-1.jpg\",\"products\\/44-1.jpg\",\"products\\/65.jpg\"]'),(597,10,NULL,NULL,32,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/60.jpg\"]'),(599,10,NULL,NULL,17,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-3.jpg\",\"products\\/25-2.jpg\"]'),(607,3,NULL,NULL,47,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/56.jpg\",\"products\\/63.jpg\"]'),(608,8,NULL,NULL,22,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/12-2.jpg\",\"products\\/15.jpg\"]'),(610,5,NULL,NULL,17,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4-1.jpg\",\"products\\/24.jpg\",\"products\\/57.jpg\",\"products\\/63-1.jpg\"]'),(612,7,NULL,NULL,29,4,'Good app, good backup service and support. Good documentation.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9.jpg\",\"products\\/35-1.jpg\"]'),(614,8,NULL,NULL,54,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/43-1.jpg\"]'),(616,5,NULL,NULL,25,2,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/33-1.jpg\",\"products\\/48-1.jpg\",\"products\\/59-2.jpg\"]'),(620,6,NULL,NULL,20,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/55-2.jpg\"]'),(625,9,NULL,NULL,28,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9.jpg\",\"products\\/12-1.jpg\",\"products\\/15.jpg\",\"products\\/23-2.jpg\"]'),(628,3,NULL,NULL,17,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/13-1.jpg\",\"products\\/17-1.jpg\"]'),(630,8,NULL,NULL,30,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/43-2.jpg\",\"products\\/44-1.jpg\",\"products\\/52-2.jpg\",\"products\\/57.jpg\"]'),(632,7,NULL,NULL,7,2,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/17-2.jpg\",\"products\\/22-1.jpg\",\"products\\/23-1.jpg\"]'),(639,5,NULL,NULL,32,5,'Good app, good backup service and support. Good documentation.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/22-2.jpg\"]'),(645,8,NULL,NULL,53,1,'Good app, good backup service and support. Good documentation.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/19-1.jpg\",\"products\\/38-2.jpg\",\"products\\/61-1.jpg\",\"products\\/62-1.jpg\"]'),(649,7,NULL,NULL,59,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11.jpg\",\"products\\/27-1.jpg\",\"products\\/44.jpg\"]'),(650,5,NULL,NULL,23,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/18-1.jpg\",\"products\\/45-1.jpg\",\"products\\/54.jpg\",\"products\\/58-2.jpg\"]'),(653,5,NULL,NULL,9,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/60-2.jpg\"]'),(654,8,NULL,NULL,23,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4-1.jpg\",\"products\\/10-1.jpg\",\"products\\/20-3.jpg\",\"products\\/39-2.jpg\"]'),(656,9,NULL,NULL,8,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/19-1.jpg\",\"products\\/25-1.jpg\",\"products\\/37.jpg\"]'),(657,7,NULL,NULL,61,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/51.jpg\",\"products\\/64.jpg\"]'),(658,5,NULL,NULL,62,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8-1.jpg\",\"products\\/17-2.jpg\",\"products\\/18-1.jpg\"]'),(659,10,NULL,NULL,34,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/25.jpg\"]'),(661,4,NULL,NULL,16,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/3.jpg\",\"products\\/41-2.jpg\",\"products\\/52-1.jpg\",\"products\\/61.jpg\"]'),(666,9,NULL,NULL,17,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/16.jpg\",\"products\\/29-2.jpg\",\"products\\/41-1.jpg\"]'),(670,7,NULL,NULL,60,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/55-2.jpg\"]'),(673,10,NULL,NULL,11,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/55.jpg\"]'),(674,7,NULL,NULL,38,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-3.jpg\",\"products\\/12-3.jpg\",\"products\\/23.jpg\",\"products\\/45.jpg\"]'),(675,5,NULL,NULL,57,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/13.jpg\",\"products\\/21-1.jpg\",\"products\\/47-1.jpg\"]'),(681,10,NULL,NULL,44,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9-1.jpg\",\"products\\/12.jpg\",\"products\\/19.jpg\",\"products\\/32-2.jpg\"]'),(682,1,NULL,NULL,9,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/37.jpg\"]'),(683,6,NULL,NULL,47,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/17-3.jpg\",\"products\\/18-1.jpg\",\"products\\/47-1.jpg\",\"products\\/57.jpg\"]'),(684,6,NULL,NULL,25,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/28-1.jpg\"]'),(685,10,NULL,NULL,55,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11-2.jpg\",\"products\\/12-3.jpg\"]'),(687,5,NULL,NULL,6,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/54.jpg\",\"products\\/59-2.jpg\"]'),(688,6,NULL,NULL,45,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9.jpg\"]'),(689,6,NULL,NULL,33,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/24-1.jpg\",\"products\\/28.jpg\",\"products\\/30-1.jpg\",\"products\\/41-2.jpg\"]'),(691,4,NULL,NULL,28,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/14.jpg\",\"products\\/38.jpg\"]'),(693,3,NULL,NULL,25,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2.jpg\",\"products\\/27-1.jpg\",\"products\\/49-2.jpg\"]'),(694,3,NULL,NULL,54,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/7.jpg\",\"products\\/23-2.jpg\",\"products\\/64.jpg\",\"products\\/65.jpg\"]'),(697,9,NULL,NULL,57,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4.jpg\",\"products\\/37-1.jpg\",\"products\\/41-1.jpg\",\"products\\/50-1.jpg\"]'),(698,9,NULL,NULL,14,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/22-1.jpg\"]'),(699,5,NULL,NULL,7,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/20-3.jpg\"]'),(701,10,NULL,NULL,5,5,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/58.jpg\"]'),(705,1,NULL,NULL,27,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-1.jpg\",\"products\\/4-1.jpg\",\"products\\/37-2.jpg\",\"products\\/65.jpg\"]'),(706,8,NULL,NULL,47,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-2.jpg\",\"products\\/8.jpg\",\"products\\/41-2.jpg\",\"products\\/45.jpg\"]'),(713,7,NULL,NULL,56,4,'Good app, good backup service and support. Good documentation.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/29.jpg\"]'),(714,1,NULL,NULL,43,4,'Best ecommerce CMS online store!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/38.jpg\"]'),(715,6,NULL,NULL,2,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/21.jpg\",\"products\\/25-2.jpg\",\"products\\/29-2.jpg\",\"products\\/45-1.jpg\"]'),(717,7,NULL,NULL,41,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10-1.jpg\",\"products\\/30-1.jpg\"]'),(722,10,NULL,NULL,40,5,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-2.jpg\",\"products\\/17-3.jpg\",\"products\\/22-1.jpg\",\"products\\/55-1.jpg\"]'),(725,4,NULL,NULL,48,5,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/28-2.jpg\"]'),(726,4,NULL,NULL,26,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11-3.jpg\"]'),(730,5,NULL,NULL,55,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/22.jpg\",\"products\\/49.jpg\"]'),(732,9,NULL,NULL,65,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/19-2.jpg\",\"products\\/46-1.jpg\"]'),(735,4,NULL,NULL,24,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/28-1.jpg\"]'),(741,2,NULL,NULL,16,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/19-1.jpg\"]'),(744,10,NULL,NULL,25,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/25-2.jpg\",\"products\\/58-1.jpg\"]'),(747,4,NULL,NULL,30,5,'Best ecommerce CMS online store!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8-3.jpg\"]'),(752,3,NULL,NULL,44,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/28.jpg\",\"products\\/32-1.jpg\",\"products\\/41-2.jpg\"]'),(756,1,NULL,NULL,32,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-2.jpg\"]'),(759,4,NULL,NULL,5,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/3.jpg\",\"products\\/4.jpg\",\"products\\/18-1.jpg\"]'),(760,6,NULL,NULL,38,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10-1.jpg\"]'),(765,5,NULL,NULL,36,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2.jpg\",\"products\\/5-2.jpg\",\"products\\/41-2.jpg\",\"products\\/49-1.jpg\"]'),(769,9,NULL,NULL,52,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10-1.jpg\",\"products\\/12-1.jpg\",\"products\\/13-1.jpg\"]'),(771,1,NULL,NULL,16,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/12-3.jpg\",\"products\\/34.jpg\"]'),(779,6,NULL,NULL,28,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9.jpg\",\"products\\/12-3.jpg\",\"products\\/26-1.jpg\",\"products\\/56.jpg\"]'),(780,4,NULL,NULL,40,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/21-1.jpg\",\"products\\/35-1.jpg\",\"products\\/44-1.jpg\"]'),(781,5,NULL,NULL,61,2,'Best ecommerce CMS online store!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11-3.jpg\",\"products\\/28.jpg\",\"products\\/37.jpg\",\"products\\/44.jpg\"]'),(788,1,NULL,NULL,5,3,'Best ecommerce CMS online store!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/12-2.jpg\",\"products\\/22-2.jpg\",\"products\\/34.jpg\",\"products\\/65-2.jpg\"]'),(790,9,NULL,NULL,47,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/8.jpg\"]'),(794,2,NULL,NULL,52,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10-1.jpg\",\"products\\/11.jpg\",\"products\\/48-1.jpg\"]'),(796,5,NULL,NULL,3,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10-2.jpg\",\"products\\/29.jpg\"]'),(799,3,NULL,NULL,8,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/28-2.jpg\",\"products\\/48-2.jpg\",\"products\\/57.jpg\"]'),(801,8,NULL,NULL,51,2,'Good app, good backup service and support. Good documentation.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/33-1.jpg\",\"products\\/59-1.jpg\",\"products\\/59-2.jpg\"]'),(803,7,NULL,NULL,52,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/24-2.jpg\",\"products\\/34.jpg\",\"products\\/35.jpg\",\"products\\/59-2.jpg\"]'),(811,6,NULL,NULL,42,2,'Good app, good backup service and support. Good documentation.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5.jpg\",\"products\\/21.jpg\",\"products\\/22-3.jpg\"]'),(813,1,NULL,NULL,60,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/42-2.jpg\"]'),(826,5,NULL,NULL,13,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/52-2.jpg\"]'),(831,1,NULL,NULL,47,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/40-1.jpg\",\"products\\/59-2.jpg\"]'),(845,6,NULL,NULL,50,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/12-2.jpg\",\"products\\/57-1.jpg\",\"products\\/60.jpg\"]'),(846,2,NULL,NULL,7,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/10-1.jpg\"]'),(857,9,NULL,NULL,35,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4.jpg\",\"products\\/27-1.jpg\",\"products\\/62-1.jpg\"]'),(859,5,NULL,NULL,53,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/11-3.jpg\",\"products\\/32-1.jpg\",\"products\\/37.jpg\",\"products\\/54.jpg\"]'),(862,6,NULL,NULL,61,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/39.jpg\",\"products\\/45.jpg\",\"products\\/60.jpg\"]'),(863,10,NULL,NULL,54,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/21-1.jpg\",\"products\\/30.jpg\",\"products\\/52-2.jpg\"]'),(865,5,NULL,NULL,19,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/19-1.jpg\",\"products\\/63-1.jpg\"]'),(868,3,NULL,NULL,11,4,'Best ecommerce CMS online store!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/58.jpg\"]'),(870,7,NULL,NULL,51,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/36.jpg\",\"products\\/40.jpg\"]'),(879,2,NULL,NULL,53,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/12.jpg\"]'),(884,8,NULL,NULL,20,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-3.jpg\",\"products\\/48-2.jpg\"]'),(885,9,NULL,NULL,53,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4-3.jpg\"]'),(887,7,NULL,NULL,54,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/33.jpg\"]'),(891,8,NULL,NULL,21,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/7.jpg\",\"products\\/49-2.jpg\",\"products\\/64.jpg\"]'),(892,6,NULL,NULL,24,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/23-3.jpg\",\"products\\/31.jpg\",\"products\\/42.jpg\"]'),(894,6,NULL,NULL,55,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/33-2.jpg\"]'),(895,9,NULL,NULL,33,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/19-2.jpg\",\"products\\/29.jpg\",\"products\\/37-1.jpg\",\"products\\/57.jpg\"]'),(896,6,NULL,NULL,35,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/17-1.jpg\",\"products\\/48-1.jpg\"]'),(903,3,NULL,NULL,7,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5.jpg\",\"products\\/9-2.jpg\",\"products\\/38.jpg\"]'),(906,2,NULL,NULL,4,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/20-3.jpg\"]'),(908,1,NULL,NULL,54,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/37-2.jpg\",\"products\\/38-2.jpg\",\"products\\/43.jpg\",\"products\\/60.jpg\"]'),(909,2,NULL,NULL,2,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/9-2.jpg\",\"products\\/23.jpg\",\"products\\/37-2.jpg\"]'),(913,10,NULL,NULL,30,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-3.jpg\",\"products\\/12.jpg\"]'),(915,4,NULL,NULL,65,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/22-3.jpg\",\"products\\/30.jpg\",\"products\\/41-2.jpg\"]'),(918,1,NULL,NULL,3,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/13.jpg\",\"products\\/17.jpg\",\"products\\/32-1.jpg\",\"products\\/48.jpg\"]'),(923,3,NULL,NULL,49,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/4-3.jpg\",\"products\\/9-1.jpg\",\"products\\/17-1.jpg\",\"products\\/35-1.jpg\"]'),(929,3,NULL,NULL,42,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/21.jpg\",\"products\\/30-2.jpg\",\"products\\/61-1.jpg\"]'),(931,4,NULL,NULL,41,1,'Clean & perfect source code','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/6.jpg\",\"products\\/30-1.jpg\",\"products\\/38-3.jpg\",\"products\\/49-2.jpg\"]'),(938,3,NULL,NULL,55,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/27.jpg\"]'),(944,2,NULL,NULL,58,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/61.jpg\"]'),(951,1,NULL,NULL,37,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/65.jpg\"]'),(958,8,NULL,NULL,10,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/41.jpg\"]'),(960,10,NULL,NULL,24,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/25-1.jpg\",\"products\\/50.jpg\"]'),(961,10,NULL,NULL,16,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/59-1.jpg\"]'),(963,2,NULL,NULL,1,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/22-3.jpg\",\"products\\/43-2.jpg\"]'),(980,9,NULL,NULL,15,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/47-1.jpg\",\"products\\/50-1.jpg\",\"products\\/50.jpg\"]'),(987,1,NULL,NULL,20,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-1.jpg\",\"products\\/11-1.jpg\",\"products\\/13-1.jpg\",\"products\\/20.jpg\"]'),(993,6,NULL,NULL,31,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/5-3.jpg\",\"products\\/39.jpg\"]'),(997,6,NULL,NULL,53,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/19.jpg\",\"products\\/30-1.jpg\",\"products\\/48-1.jpg\"]'),(999,7,NULL,NULL,5,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/2-1.jpg\",\"products\\/23-3.jpg\",\"products\\/41.jpg\"]'),(1000,8,NULL,NULL,55,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-06-10 07:57:51','2025-06-10 07:57:51','[\"products\\/24-2.jpg\",\"products\\/38.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double DEFAULT '0',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2025-06-10 07:57:25','2025-06-10 07:57:25');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2025-06-10 07:57:25','2025-06-10 07:57:25'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2025-06-10 07:57:25','2025-06-10 07:57:25'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2025-06-10 07:57:25','2025-06-10 07:57:25');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes`
--

DROP TABLE IF EXISTS `ec_specification_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes`
--

LOCK TABLES `ec_specification_attributes` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,NULL),(8,4,'Resolution','select','[\"1920x1080\",\"2560x1440\",\"3840x2160\"]',NULL,'2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes_translations`
--

DROP TABLE IF EXISTS `ec_specification_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_attributes_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes_translations`
--

LOCK TABLES `ec_specification_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups`
--

DROP TABLE IF EXISTS `ec_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups`
--

LOCK TABLES `ec_specification_groups` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups` DISABLE KEYS */;
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,NULL),(2,'Performance',NULL,'2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,NULL),(3,'Battery',NULL,'2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,NULL),(4,'Display',NULL,'2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups_translations`
--

DROP TABLE IF EXISTS `ec_specification_groups_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_groups_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_groups_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups_translations`
--

LOCK TABLES `ec_specification_groups_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_groups_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_table_group`
--

DROP TABLE IF EXISTS `ec_specification_table_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`table_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_table_group`
--

LOCK TABLES `ec_specification_table_group` WRITE;
/*!40000 ALTER TABLE `ec_specification_table_group` DISABLE KEYS */;
INSERT INTO `ec_specification_table_group` VALUES (1,1,0),(1,2,0),(2,3,0),(2,4,0);
/*!40000 ALTER TABLE `ec_specification_table_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables`
--

DROP TABLE IF EXISTS `ec_specification_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables`
--

LOCK TABLES `ec_specification_tables` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables` DISABLE KEYS */;
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,NULL),(2,'Technical Specification',NULL,'2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables_translations`
--

DROP TABLE IF EXISTS `ec_specification_tables_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_tables_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_tables_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables_translations`
--

LOCK TABLES `ec_specification_tables_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_tables_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Farmart','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2025-06-10 07:57:52','2025-06-10 07:57:52',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,4),(1,6),(1,17),(1,24),(1,28),(1,30),(1,31),(1,36),(1,37),(1,38),(1,39),(1,46),(1,53),(1,57),(1,58),(1,60),(1,61),(1,65),(2,3),(2,5),(2,8),(2,14),(2,16),(2,21),(2,22),(2,23),(2,27),(2,32),(2,33),(2,35),(2,40),(2,42),(2,43),(2,45),(2,47),(2,48),(2,49),(2,50),(2,52),(2,54),(2,55),(2,56),(2,59),(2,63),(3,7),(3,9),(3,10),(3,11),(3,12),(3,13),(3,15),(3,18),(3,19),(3,20),(3,25),(3,26),(3,29),(3,34),(3,41),(3,44),(3,51),(3,62),(3,64);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10,1,'published','2025-06-10 07:57:25','2025-06-10 07:57:25'),(2,'None',0,2,'published','2025-06-10 07:57:25','2025-06-10 07:57:25'),(3,'Import Tax',15,3,'published','2025-06-10 07:57:25','2025-06-10 07:57:25');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes_translations`
--

DROP TABLE IF EXISTS `ec_taxes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_taxes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_taxes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes_translations`
--

LOCK TABLES `ec_taxes_translations` WRITE;
/*!40000 ALTER TABLE `ec_taxes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_taxes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2025-06-10 07:57:09','2025-06-10 07:57:09',NULL),(2,'PAYMENT',1,'published','2025-06-10 07:57:09','2025-06-10 07:57:09',NULL),(3,'ORDER &amp; RETURNS',2,'published','2025-06-10 07:57:09','2025-06-10 07:57:09',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2025-06-10 07:57:09','2025-06-10 07:57:09'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2025-06-10 07:57:09','2025-06-10 07:57:09'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2025-06-10 07:57:09','2025-06-10 07:57:09'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2025-06-10 07:57:09','2025-06-10 07:57:09'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2025-06-10 07:57:09','2025-06-10 07:57:09'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2025-06-10 07:57:09','2025-06-10 07:57:09'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2025-06-10 07:57:09','2025-06-10 07:57:09'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2025-06-10 07:57:09','2025-06-10 07:57:09'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2025-06-10 07:57:09','2025-06-10 07:57:09'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2025-06-10 07:57:09','2025-06-10 07:57:09');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','fa7dddbc0ca4b1596b7acee159edaf9d',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','c8fd624947a221b1b65b77fe6985cfa3',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','29ed710bb667e4d9124237b3944e6bea',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','80c7bf4c432fd33d4fdd85a3a0eae827',2,'Botble\\Menu\\Models\\MenuLocation'),(5,'en_US','cf633ab018d6f9f2437637915b3d3c0c',2,'Botble\\Menu\\Models\\Menu'),(6,'en_US','3677514dfd30be8d6a8def83f93de15e',3,'Botble\\Menu\\Models\\Menu'),(7,'en_US','dcba5252384067dc8c0edae3bcd9a01e',4,'Botble\\Menu\\Models\\Menu'),(8,'en_US','60eaba5fc59d26ec1818aa7be263e93f',5,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/png',5403,'brands/1.png','[]','2025-06-10 07:57:09','2025-06-10 07:57:09',NULL,'public'),(2,0,'2','2',1,'image/png',5403,'brands/2.png','[]','2025-06-10 07:57:09','2025-06-10 07:57:09',NULL,'public'),(3,0,'3','3',1,'image/png',5403,'brands/3.png','[]','2025-06-10 07:57:09','2025-06-10 07:57:09',NULL,'public'),(4,0,'4','4',1,'image/png',5403,'brands/4.png','[]','2025-06-10 07:57:10','2025-06-10 07:57:10',NULL,'public'),(5,0,'1','1',2,'image/png',5327,'product-categories/1.png','[]','2025-06-10 07:57:10','2025-06-10 07:57:10',NULL,'public'),(6,0,'2','2',2,'image/png',5327,'product-categories/2.png','[]','2025-06-10 07:57:10','2025-06-10 07:57:10',NULL,'public'),(7,0,'3','3',2,'image/png',5327,'product-categories/3.png','[]','2025-06-10 07:57:10','2025-06-10 07:57:10',NULL,'public'),(8,0,'4','4',2,'image/png',5327,'product-categories/4.png','[]','2025-06-10 07:57:10','2025-06-10 07:57:10',NULL,'public'),(9,0,'5','5',2,'image/png',5327,'product-categories/5.png','[]','2025-06-10 07:57:10','2025-06-10 07:57:10',NULL,'public'),(10,0,'6','6',2,'image/png',5327,'product-categories/6.png','[]','2025-06-10 07:57:10','2025-06-10 07:57:10',NULL,'public'),(11,0,'7','7',2,'image/png',5327,'product-categories/7.png','[]','2025-06-10 07:57:10','2025-06-10 07:57:10',NULL,'public'),(12,0,'8','8',2,'image/png',5327,'product-categories/8.png','[]','2025-06-10 07:57:10','2025-06-10 07:57:10',NULL,'public'),(13,0,'1','1',3,'image/jpeg',9803,'customers/1.jpg','[]','2025-06-10 07:57:14','2025-06-10 07:57:14',NULL,'public'),(14,0,'10','10',3,'image/jpeg',9803,'customers/10.jpg','[]','2025-06-10 07:57:14','2025-06-10 07:57:14',NULL,'public'),(15,0,'2','2',3,'image/jpeg',9803,'customers/2.jpg','[]','2025-06-10 07:57:14','2025-06-10 07:57:14',NULL,'public'),(16,0,'3','3',3,'image/jpeg',9803,'customers/3.jpg','[]','2025-06-10 07:57:15','2025-06-10 07:57:15',NULL,'public'),(17,0,'4','4',3,'image/jpeg',9803,'customers/4.jpg','[]','2025-06-10 07:57:15','2025-06-10 07:57:15',NULL,'public'),(18,0,'5','5',3,'image/jpeg',9803,'customers/5.jpg','[]','2025-06-10 07:57:15','2025-06-10 07:57:15',NULL,'public'),(19,0,'6','6',3,'image/jpeg',9803,'customers/6.jpg','[]','2025-06-10 07:57:15','2025-06-10 07:57:15',NULL,'public'),(20,0,'7','7',3,'image/jpeg',9803,'customers/7.jpg','[]','2025-06-10 07:57:15','2025-06-10 07:57:15',NULL,'public'),(21,0,'8','8',3,'image/jpeg',9803,'customers/8.jpg','[]','2025-06-10 07:57:16','2025-06-10 07:57:16',NULL,'public'),(22,0,'9','9',3,'image/jpeg',9803,'customers/9.jpg','[]','2025-06-10 07:57:16','2025-06-10 07:57:16',NULL,'public'),(23,0,'1','1',4,'image/jpeg',9803,'products/1.jpg','[]','2025-06-10 07:57:25','2025-06-10 07:57:25',NULL,'public'),(24,0,'10-1','10-1',4,'image/jpeg',9803,'products/10-1.jpg','[]','2025-06-10 07:57:25','2025-06-10 07:57:25',NULL,'public'),(25,0,'10-2','10-2',4,'image/jpeg',9803,'products/10-2.jpg','[]','2025-06-10 07:57:25','2025-06-10 07:57:25',NULL,'public'),(26,0,'10','10',4,'image/jpeg',9803,'products/10.jpg','[]','2025-06-10 07:57:25','2025-06-10 07:57:25',NULL,'public'),(27,0,'11-1','11-1',4,'image/jpeg',9803,'products/11-1.jpg','[]','2025-06-10 07:57:26','2025-06-10 07:57:26',NULL,'public'),(28,0,'11-2','11-2',4,'image/jpeg',9803,'products/11-2.jpg','[]','2025-06-10 07:57:26','2025-06-10 07:57:26',NULL,'public'),(29,0,'11-3','11-3',4,'image/jpeg',9803,'products/11-3.jpg','[]','2025-06-10 07:57:26','2025-06-10 07:57:26',NULL,'public'),(30,0,'11','11',4,'image/jpeg',9803,'products/11.jpg','[]','2025-06-10 07:57:26','2025-06-10 07:57:26',NULL,'public'),(31,0,'12-1','12-1',4,'image/jpeg',9803,'products/12-1.jpg','[]','2025-06-10 07:57:26','2025-06-10 07:57:26',NULL,'public'),(32,0,'12-2','12-2',4,'image/jpeg',9803,'products/12-2.jpg','[]','2025-06-10 07:57:26','2025-06-10 07:57:26',NULL,'public'),(33,0,'12-3','12-3',4,'image/jpeg',9803,'products/12-3.jpg','[]','2025-06-10 07:57:27','2025-06-10 07:57:27',NULL,'public'),(34,0,'12','12',4,'image/jpeg',9803,'products/12.jpg','[]','2025-06-10 07:57:27','2025-06-10 07:57:27',NULL,'public'),(35,0,'13-1','13-1',4,'image/jpeg',9803,'products/13-1.jpg','[]','2025-06-10 07:57:27','2025-06-10 07:57:27',NULL,'public'),(36,0,'13','13',4,'image/jpeg',9803,'products/13.jpg','[]','2025-06-10 07:57:27','2025-06-10 07:57:27',NULL,'public'),(37,0,'14','14',4,'image/jpeg',9803,'products/14.jpg','[]','2025-06-10 07:57:27','2025-06-10 07:57:27',NULL,'public'),(38,0,'15-1','15-1',4,'image/jpeg',9803,'products/15-1.jpg','[]','2025-06-10 07:57:27','2025-06-10 07:57:27',NULL,'public'),(39,0,'15','15',4,'image/jpeg',9803,'products/15.jpg','[]','2025-06-10 07:57:28','2025-06-10 07:57:28',NULL,'public'),(40,0,'16','16',4,'image/jpeg',9803,'products/16.jpg','[]','2025-06-10 07:57:28','2025-06-10 07:57:28',NULL,'public'),(41,0,'17-1','17-1',4,'image/jpeg',9803,'products/17-1.jpg','[]','2025-06-10 07:57:28','2025-06-10 07:57:28',NULL,'public'),(42,0,'17-2','17-2',4,'image/jpeg',9803,'products/17-2.jpg','[]','2025-06-10 07:57:28','2025-06-10 07:57:28',NULL,'public'),(43,0,'17-3','17-3',4,'image/jpeg',9803,'products/17-3.jpg','[]','2025-06-10 07:57:28','2025-06-10 07:57:28',NULL,'public'),(44,0,'17','17',4,'image/jpeg',9803,'products/17.jpg','[]','2025-06-10 07:57:28','2025-06-10 07:57:28',NULL,'public'),(45,0,'18-1','18-1',4,'image/jpeg',9803,'products/18-1.jpg','[]','2025-06-10 07:57:28','2025-06-10 07:57:28',NULL,'public'),(46,0,'18-2','18-2',4,'image/jpeg',9803,'products/18-2.jpg','[]','2025-06-10 07:57:29','2025-06-10 07:57:29',NULL,'public'),(47,0,'18-3','18-3',4,'image/jpeg',9803,'products/18-3.jpg','[]','2025-06-10 07:57:29','2025-06-10 07:57:29',NULL,'public'),(48,0,'18','18',4,'image/jpeg',9803,'products/18.jpg','[]','2025-06-10 07:57:29','2025-06-10 07:57:29',NULL,'public'),(49,0,'19-1','19-1',4,'image/jpeg',9803,'products/19-1.jpg','[]','2025-06-10 07:57:29','2025-06-10 07:57:29',NULL,'public'),(50,0,'19-2','19-2',4,'image/jpeg',9803,'products/19-2.jpg','[]','2025-06-10 07:57:29','2025-06-10 07:57:29',NULL,'public'),(51,0,'19-3','19-3',4,'image/jpeg',9803,'products/19-3.jpg','[]','2025-06-10 07:57:29','2025-06-10 07:57:29',NULL,'public'),(52,0,'19','19',4,'image/jpeg',9803,'products/19.jpg','[]','2025-06-10 07:57:29','2025-06-10 07:57:29',NULL,'public'),(53,0,'2-1','2-1',4,'image/jpeg',9803,'products/2-1.jpg','[]','2025-06-10 07:57:30','2025-06-10 07:57:30',NULL,'public'),(54,0,'2-2','2-2',4,'image/jpeg',9803,'products/2-2.jpg','[]','2025-06-10 07:57:30','2025-06-10 07:57:30',NULL,'public'),(55,0,'2-3','2-3',4,'image/jpeg',9803,'products/2-3.jpg','[]','2025-06-10 07:57:30','2025-06-10 07:57:30',NULL,'public'),(56,0,'2','2',4,'image/jpeg',9803,'products/2.jpg','[]','2025-06-10 07:57:30','2025-06-10 07:57:30',NULL,'public'),(57,0,'20-1','20-1',4,'image/jpeg',9803,'products/20-1.jpg','[]','2025-06-10 07:57:30','2025-06-10 07:57:30',NULL,'public'),(58,0,'20-2','20-2',4,'image/jpeg',9803,'products/20-2.jpg','[]','2025-06-10 07:57:30','2025-06-10 07:57:30',NULL,'public'),(59,0,'20-3','20-3',4,'image/jpeg',9803,'products/20-3.jpg','[]','2025-06-10 07:57:30','2025-06-10 07:57:30',NULL,'public'),(60,0,'20','20',4,'image/jpeg',9803,'products/20.jpg','[]','2025-06-10 07:57:31','2025-06-10 07:57:31',NULL,'public'),(61,0,'21-1','21-1',4,'image/jpeg',9803,'products/21-1.jpg','[]','2025-06-10 07:57:31','2025-06-10 07:57:31',NULL,'public'),(62,0,'21-2','21-2',4,'image/jpeg',9803,'products/21-2.jpg','[]','2025-06-10 07:57:31','2025-06-10 07:57:31',NULL,'public'),(63,0,'21','21',4,'image/jpeg',9803,'products/21.jpg','[]','2025-06-10 07:57:31','2025-06-10 07:57:31',NULL,'public'),(64,0,'22-1','22-1',4,'image/jpeg',9803,'products/22-1.jpg','[]','2025-06-10 07:57:31','2025-06-10 07:57:31',NULL,'public'),(65,0,'22-2','22-2',4,'image/jpeg',9803,'products/22-2.jpg','[]','2025-06-10 07:57:31','2025-06-10 07:57:31',NULL,'public'),(66,0,'22-3','22-3',4,'image/jpeg',9803,'products/22-3.jpg','[]','2025-06-10 07:57:31','2025-06-10 07:57:31',NULL,'public'),(67,0,'22','22',4,'image/jpeg',9803,'products/22.jpg','[]','2025-06-10 07:57:32','2025-06-10 07:57:32',NULL,'public'),(68,0,'23-1','23-1',4,'image/jpeg',9803,'products/23-1.jpg','[]','2025-06-10 07:57:32','2025-06-10 07:57:32',NULL,'public'),(69,0,'23-2','23-2',4,'image/jpeg',9803,'products/23-2.jpg','[]','2025-06-10 07:57:32','2025-06-10 07:57:32',NULL,'public'),(70,0,'23-3','23-3',4,'image/jpeg',9803,'products/23-3.jpg','[]','2025-06-10 07:57:32','2025-06-10 07:57:32',NULL,'public'),(71,0,'23','23',4,'image/jpeg',9803,'products/23.jpg','[]','2025-06-10 07:57:32','2025-06-10 07:57:32',NULL,'public'),(72,0,'24-1','24-1',4,'image/jpeg',9803,'products/24-1.jpg','[]','2025-06-10 07:57:32','2025-06-10 07:57:32',NULL,'public'),(73,0,'24-2','24-2',4,'image/jpeg',9803,'products/24-2.jpg','[]','2025-06-10 07:57:32','2025-06-10 07:57:32',NULL,'public'),(74,0,'24','24',4,'image/jpeg',9803,'products/24.jpg','[]','2025-06-10 07:57:32','2025-06-10 07:57:32',NULL,'public'),(75,0,'25-1','25-1',4,'image/jpeg',9803,'products/25-1.jpg','[]','2025-06-10 07:57:32','2025-06-10 07:57:32',NULL,'public'),(76,0,'25-2','25-2',4,'image/jpeg',9803,'products/25-2.jpg','[]','2025-06-10 07:57:33','2025-06-10 07:57:33',NULL,'public'),(77,0,'25','25',4,'image/jpeg',9803,'products/25.jpg','[]','2025-06-10 07:57:33','2025-06-10 07:57:33',NULL,'public'),(78,0,'26-1','26-1',4,'image/jpeg',9803,'products/26-1.jpg','[]','2025-06-10 07:57:33','2025-06-10 07:57:33',NULL,'public'),(79,0,'26','26',4,'image/jpeg',9803,'products/26.jpg','[]','2025-06-10 07:57:33','2025-06-10 07:57:33',NULL,'public'),(80,0,'27-1','27-1',4,'image/jpeg',9803,'products/27-1.jpg','[]','2025-06-10 07:57:34','2025-06-10 07:57:34',NULL,'public'),(81,0,'27','27',4,'image/jpeg',9803,'products/27.jpg','[]','2025-06-10 07:57:34','2025-06-10 07:57:34',NULL,'public'),(82,0,'28-1','28-1',4,'image/jpeg',9803,'products/28-1.jpg','[]','2025-06-10 07:57:34','2025-06-10 07:57:34',NULL,'public'),(83,0,'28-2','28-2',4,'image/jpeg',9803,'products/28-2.jpg','[]','2025-06-10 07:57:34','2025-06-10 07:57:34',NULL,'public'),(84,0,'28','28',4,'image/jpeg',9803,'products/28.jpg','[]','2025-06-10 07:57:34','2025-06-10 07:57:34',NULL,'public'),(85,0,'29-1','29-1',4,'image/jpeg',9803,'products/29-1.jpg','[]','2025-06-10 07:57:34','2025-06-10 07:57:34',NULL,'public'),(86,0,'29-2','29-2',4,'image/jpeg',9803,'products/29-2.jpg','[]','2025-06-10 07:57:34','2025-06-10 07:57:34',NULL,'public'),(87,0,'29','29',4,'image/jpeg',9803,'products/29.jpg','[]','2025-06-10 07:57:35','2025-06-10 07:57:35',NULL,'public'),(88,0,'3','3',4,'image/jpeg',9803,'products/3.jpg','[]','2025-06-10 07:57:35','2025-06-10 07:57:35',NULL,'public'),(89,0,'30-1','30-1',4,'image/jpeg',9803,'products/30-1.jpg','[]','2025-06-10 07:57:35','2025-06-10 07:57:35',NULL,'public'),(90,0,'30-2','30-2',4,'image/jpeg',9803,'products/30-2.jpg','[]','2025-06-10 07:57:35','2025-06-10 07:57:35',NULL,'public'),(91,0,'30','30',4,'image/jpeg',9803,'products/30.jpg','[]','2025-06-10 07:57:35','2025-06-10 07:57:35',NULL,'public'),(92,0,'31-1','31-1',4,'image/jpeg',9803,'products/31-1.jpg','[]','2025-06-10 07:57:35','2025-06-10 07:57:35',NULL,'public'),(93,0,'31','31',4,'image/jpeg',9803,'products/31.jpg','[]','2025-06-10 07:57:35','2025-06-10 07:57:35',NULL,'public'),(94,0,'32-1','32-1',4,'image/jpeg',9803,'products/32-1.jpg','[]','2025-06-10 07:57:35','2025-06-10 07:57:35',NULL,'public'),(95,0,'32-2','32-2',4,'image/jpeg',9803,'products/32-2.jpg','[]','2025-06-10 07:57:35','2025-06-10 07:57:35',NULL,'public'),(96,0,'32','32',4,'image/jpeg',9803,'products/32.jpg','[]','2025-06-10 07:57:36','2025-06-10 07:57:36',NULL,'public'),(97,0,'33-1','33-1',4,'image/jpeg',9803,'products/33-1.jpg','[]','2025-06-10 07:57:36','2025-06-10 07:57:36',NULL,'public'),(98,0,'33-2','33-2',4,'image/jpeg',9803,'products/33-2.jpg','[]','2025-06-10 07:57:36','2025-06-10 07:57:36',NULL,'public'),(99,0,'33','33',4,'image/jpeg',9803,'products/33.jpg','[]','2025-06-10 07:57:36','2025-06-10 07:57:36',NULL,'public'),(100,0,'34-1','34-1',4,'image/jpeg',9803,'products/34-1.jpg','[]','2025-06-10 07:57:36','2025-06-10 07:57:36',NULL,'public'),(101,0,'34','34',4,'image/jpeg',9803,'products/34.jpg','[]','2025-06-10 07:57:36','2025-06-10 07:57:36',NULL,'public'),(102,0,'35-1','35-1',4,'image/jpeg',9803,'products/35-1.jpg','[]','2025-06-10 07:57:37','2025-06-10 07:57:37',NULL,'public'),(103,0,'35','35',4,'image/jpeg',9803,'products/35.jpg','[]','2025-06-10 07:57:37','2025-06-10 07:57:37',NULL,'public'),(104,0,'36-1','36-1',4,'image/jpeg',9803,'products/36-1.jpg','[]','2025-06-10 07:57:37','2025-06-10 07:57:37',NULL,'public'),(105,0,'36-2','36-2',4,'image/jpeg',9803,'products/36-2.jpg','[]','2025-06-10 07:57:37','2025-06-10 07:57:37',NULL,'public'),(106,0,'36','36',4,'image/jpeg',9803,'products/36.jpg','[]','2025-06-10 07:57:37','2025-06-10 07:57:37',NULL,'public'),(107,0,'37-1','37-1',4,'image/jpeg',9803,'products/37-1.jpg','[]','2025-06-10 07:57:37','2025-06-10 07:57:37',NULL,'public'),(108,0,'37-2','37-2',4,'image/jpeg',9803,'products/37-2.jpg','[]','2025-06-10 07:57:38','2025-06-10 07:57:38',NULL,'public'),(109,0,'37','37',4,'image/jpeg',9803,'products/37.jpg','[]','2025-06-10 07:57:38','2025-06-10 07:57:38',NULL,'public'),(110,0,'38-1','38-1',4,'image/jpeg',9803,'products/38-1.jpg','[]','2025-06-10 07:57:38','2025-06-10 07:57:38',NULL,'public'),(111,0,'38-2','38-2',4,'image/jpeg',9803,'products/38-2.jpg','[]','2025-06-10 07:57:38','2025-06-10 07:57:38',NULL,'public'),(112,0,'38-3','38-3',4,'image/jpeg',9803,'products/38-3.jpg','[]','2025-06-10 07:57:38','2025-06-10 07:57:38',NULL,'public'),(113,0,'38','38',4,'image/jpeg',9803,'products/38.jpg','[]','2025-06-10 07:57:38','2025-06-10 07:57:38',NULL,'public'),(114,0,'39-1','39-1',4,'image/jpeg',9803,'products/39-1.jpg','[]','2025-06-10 07:57:38','2025-06-10 07:57:38',NULL,'public'),(115,0,'39-2','39-2',4,'image/jpeg',9803,'products/39-2.jpg','[]','2025-06-10 07:57:38','2025-06-10 07:57:38',NULL,'public'),(116,0,'39','39',4,'image/jpeg',9803,'products/39.jpg','[]','2025-06-10 07:57:38','2025-06-10 07:57:38',NULL,'public'),(117,0,'4-1','4-1',4,'image/jpeg',9803,'products/4-1.jpg','[]','2025-06-10 07:57:38','2025-06-10 07:57:38',NULL,'public'),(118,0,'4-2','4-2',4,'image/jpeg',9803,'products/4-2.jpg','[]','2025-06-10 07:57:39','2025-06-10 07:57:39',NULL,'public'),(119,0,'4-3','4-3',4,'image/jpeg',9803,'products/4-3.jpg','[]','2025-06-10 07:57:39','2025-06-10 07:57:39',NULL,'public'),(120,0,'4','4',4,'image/jpeg',9803,'products/4.jpg','[]','2025-06-10 07:57:39','2025-06-10 07:57:39',NULL,'public'),(121,0,'40-1','40-1',4,'image/jpeg',9803,'products/40-1.jpg','[]','2025-06-10 07:57:39','2025-06-10 07:57:39',NULL,'public'),(122,0,'40','40',4,'image/jpeg',9803,'products/40.jpg','[]','2025-06-10 07:57:39','2025-06-10 07:57:39',NULL,'public'),(123,0,'41-1','41-1',4,'image/jpeg',9803,'products/41-1.jpg','[]','2025-06-10 07:57:39','2025-06-10 07:57:39',NULL,'public'),(124,0,'41-2','41-2',4,'image/jpeg',9803,'products/41-2.jpg','[]','2025-06-10 07:57:39','2025-06-10 07:57:39',NULL,'public'),(125,0,'41','41',4,'image/jpeg',9803,'products/41.jpg','[]','2025-06-10 07:57:39','2025-06-10 07:57:39',NULL,'public'),(126,0,'42-1','42-1',4,'image/jpeg',9803,'products/42-1.jpg','[]','2025-06-10 07:57:39','2025-06-10 07:57:39',NULL,'public'),(127,0,'42-2','42-2',4,'image/jpeg',9803,'products/42-2.jpg','[]','2025-06-10 07:57:39','2025-06-10 07:57:39',NULL,'public'),(128,0,'42','42',4,'image/jpeg',9803,'products/42.jpg','[]','2025-06-10 07:57:39','2025-06-10 07:57:39',NULL,'public'),(129,0,'43-1','43-1',4,'image/jpeg',9803,'products/43-1.jpg','[]','2025-06-10 07:57:40','2025-06-10 07:57:40',NULL,'public'),(130,0,'43-2','43-2',4,'image/jpeg',9803,'products/43-2.jpg','[]','2025-06-10 07:57:40','2025-06-10 07:57:40',NULL,'public'),(131,0,'43','43',4,'image/jpeg',9803,'products/43.jpg','[]','2025-06-10 07:57:40','2025-06-10 07:57:40',NULL,'public'),(132,0,'44-1','44-1',4,'image/jpeg',9803,'products/44-1.jpg','[]','2025-06-10 07:57:40','2025-06-10 07:57:40',NULL,'public'),(133,0,'44-2','44-2',4,'image/jpeg',9803,'products/44-2.jpg','[]','2025-06-10 07:57:40','2025-06-10 07:57:40',NULL,'public'),(134,0,'44','44',4,'image/jpeg',9803,'products/44.jpg','[]','2025-06-10 07:57:40','2025-06-10 07:57:40',NULL,'public'),(135,0,'45-1','45-1',4,'image/jpeg',9803,'products/45-1.jpg','[]','2025-06-10 07:57:40','2025-06-10 07:57:40',NULL,'public'),(136,0,'45','45',4,'image/jpeg',9803,'products/45.jpg','[]','2025-06-10 07:57:40','2025-06-10 07:57:40',NULL,'public'),(137,0,'46-1','46-1',4,'image/jpeg',9803,'products/46-1.jpg','[]','2025-06-10 07:57:40','2025-06-10 07:57:40',NULL,'public'),(138,0,'46','46',4,'image/jpeg',9803,'products/46.jpg','[]','2025-06-10 07:57:41','2025-06-10 07:57:41',NULL,'public'),(139,0,'47-1','47-1',4,'image/jpeg',9803,'products/47-1.jpg','[]','2025-06-10 07:57:41','2025-06-10 07:57:41',NULL,'public'),(140,0,'47','47',4,'image/jpeg',9803,'products/47.jpg','[]','2025-06-10 07:57:41','2025-06-10 07:57:41',NULL,'public'),(141,0,'48-1','48-1',4,'image/jpeg',9803,'products/48-1.jpg','[]','2025-06-10 07:57:41','2025-06-10 07:57:41',NULL,'public'),(142,0,'48-2','48-2',4,'image/jpeg',9803,'products/48-2.jpg','[]','2025-06-10 07:57:41','2025-06-10 07:57:41',NULL,'public'),(143,0,'48','48',4,'image/jpeg',9803,'products/48.jpg','[]','2025-06-10 07:57:41','2025-06-10 07:57:41',NULL,'public'),(144,0,'49-1','49-1',4,'image/jpeg',9803,'products/49-1.jpg','[]','2025-06-10 07:57:41','2025-06-10 07:57:41',NULL,'public'),(145,0,'49-2','49-2',4,'image/jpeg',9803,'products/49-2.jpg','[]','2025-06-10 07:57:41','2025-06-10 07:57:41',NULL,'public'),(146,0,'49','49',4,'image/jpeg',9803,'products/49.jpg','[]','2025-06-10 07:57:41','2025-06-10 07:57:41',NULL,'public'),(147,0,'5-1','5-1',4,'image/jpeg',9803,'products/5-1.jpg','[]','2025-06-10 07:57:41','2025-06-10 07:57:41',NULL,'public'),(148,0,'5-2','5-2',4,'image/jpeg',9803,'products/5-2.jpg','[]','2025-06-10 07:57:42','2025-06-10 07:57:42',NULL,'public'),(149,0,'5-3','5-3',4,'image/jpeg',9803,'products/5-3.jpg','[]','2025-06-10 07:57:42','2025-06-10 07:57:42',NULL,'public'),(150,0,'5','5',4,'image/jpeg',9803,'products/5.jpg','[]','2025-06-10 07:57:42','2025-06-10 07:57:42',NULL,'public'),(151,0,'50-1','50-1',4,'image/jpeg',9803,'products/50-1.jpg','[]','2025-06-10 07:57:42','2025-06-10 07:57:42',NULL,'public'),(152,0,'50','50',4,'image/jpeg',9803,'products/50.jpg','[]','2025-06-10 07:57:42','2025-06-10 07:57:42',NULL,'public'),(153,0,'51','51',4,'image/jpeg',9803,'products/51.jpg','[]','2025-06-10 07:57:42','2025-06-10 07:57:42',NULL,'public'),(154,0,'52-1','52-1',4,'image/jpeg',9803,'products/52-1.jpg','[]','2025-06-10 07:57:42','2025-06-10 07:57:42',NULL,'public'),(155,0,'52-2','52-2',4,'image/jpeg',9803,'products/52-2.jpg','[]','2025-06-10 07:57:42','2025-06-10 07:57:42',NULL,'public'),(156,0,'52','52',4,'image/jpeg',9803,'products/52.jpg','[]','2025-06-10 07:57:42','2025-06-10 07:57:42',NULL,'public'),(157,0,'53-1','53-1',4,'image/jpeg',9803,'products/53-1.jpg','[]','2025-06-10 07:57:42','2025-06-10 07:57:42',NULL,'public'),(158,0,'53','53',4,'image/jpeg',9803,'products/53.jpg','[]','2025-06-10 07:57:42','2025-06-10 07:57:42',NULL,'public'),(159,0,'54-1','54-1',4,'image/jpeg',9803,'products/54-1.jpg','[]','2025-06-10 07:57:42','2025-06-10 07:57:42',NULL,'public'),(160,0,'54','54',4,'image/jpeg',9803,'products/54.jpg','[]','2025-06-10 07:57:43','2025-06-10 07:57:43',NULL,'public'),(161,0,'55-1','55-1',4,'image/jpeg',9803,'products/55-1.jpg','[]','2025-06-10 07:57:43','2025-06-10 07:57:43',NULL,'public'),(162,0,'55-2','55-2',4,'image/jpeg',9803,'products/55-2.jpg','[]','2025-06-10 07:57:43','2025-06-10 07:57:43',NULL,'public'),(163,0,'55','55',4,'image/jpeg',9803,'products/55.jpg','[]','2025-06-10 07:57:43','2025-06-10 07:57:43',NULL,'public'),(164,0,'56-1','56-1',4,'image/jpeg',9803,'products/56-1.jpg','[]','2025-06-10 07:57:43','2025-06-10 07:57:43',NULL,'public'),(165,0,'56-2','56-2',4,'image/jpeg',9803,'products/56-2.jpg','[]','2025-06-10 07:57:43','2025-06-10 07:57:43',NULL,'public'),(166,0,'56','56',4,'image/jpeg',9803,'products/56.jpg','[]','2025-06-10 07:57:43','2025-06-10 07:57:43',NULL,'public'),(167,0,'57-1','57-1',4,'image/jpeg',9803,'products/57-1.jpg','[]','2025-06-10 07:57:43','2025-06-10 07:57:43',NULL,'public'),(168,0,'57','57',4,'image/jpeg',9803,'products/57.jpg','[]','2025-06-10 07:57:43','2025-06-10 07:57:43',NULL,'public'),(169,0,'58-1','58-1',4,'image/jpeg',9803,'products/58-1.jpg','[]','2025-06-10 07:57:43','2025-06-10 07:57:43',NULL,'public'),(170,0,'58-2','58-2',4,'image/jpeg',9803,'products/58-2.jpg','[]','2025-06-10 07:57:43','2025-06-10 07:57:43',NULL,'public'),(171,0,'58','58',4,'image/jpeg',9803,'products/58.jpg','[]','2025-06-10 07:57:43','2025-06-10 07:57:43',NULL,'public'),(172,0,'59-1','59-1',4,'image/jpeg',9803,'products/59-1.jpg','[]','2025-06-10 07:57:43','2025-06-10 07:57:43',NULL,'public'),(173,0,'59-2','59-2',4,'image/jpeg',9803,'products/59-2.jpg','[]','2025-06-10 07:57:44','2025-06-10 07:57:44',NULL,'public'),(174,0,'59-3','59-3',4,'image/jpeg',9803,'products/59-3.jpg','[]','2025-06-10 07:57:44','2025-06-10 07:57:44',NULL,'public'),(175,0,'59','59',4,'image/jpeg',9803,'products/59.jpg','[]','2025-06-10 07:57:44','2025-06-10 07:57:44',NULL,'public'),(176,0,'6','6',4,'image/jpeg',9803,'products/6.jpg','[]','2025-06-10 07:57:44','2025-06-10 07:57:44',NULL,'public'),(177,0,'60-1','60-1',4,'image/jpeg',9803,'products/60-1.jpg','[]','2025-06-10 07:57:44','2025-06-10 07:57:44',NULL,'public'),(178,0,'60-2','60-2',4,'image/jpeg',9803,'products/60-2.jpg','[]','2025-06-10 07:57:44','2025-06-10 07:57:44',NULL,'public'),(179,0,'60','60',4,'image/jpeg',9803,'products/60.jpg','[]','2025-06-10 07:57:44','2025-06-10 07:57:44',NULL,'public'),(180,0,'61-1','61-1',4,'image/jpeg',9803,'products/61-1.jpg','[]','2025-06-10 07:57:44','2025-06-10 07:57:44',NULL,'public'),(181,0,'61','61',4,'image/jpeg',9803,'products/61.jpg','[]','2025-06-10 07:57:44','2025-06-10 07:57:44',NULL,'public'),(182,0,'62-1','62-1',4,'image/jpeg',9803,'products/62-1.jpg','[]','2025-06-10 07:57:44','2025-06-10 07:57:44',NULL,'public'),(183,0,'62','62',4,'image/jpeg',9803,'products/62.jpg','[]','2025-06-10 07:57:44','2025-06-10 07:57:44',NULL,'public'),(184,0,'63-1','63-1',4,'image/jpeg',9803,'products/63-1.jpg','[]','2025-06-10 07:57:44','2025-06-10 07:57:44',NULL,'public'),(185,0,'63','63',4,'image/jpeg',9803,'products/63.jpg','[]','2025-06-10 07:57:44','2025-06-10 07:57:44',NULL,'public'),(186,0,'64-1','64-1',4,'image/jpeg',9803,'products/64-1.jpg','[]','2025-06-10 07:57:45','2025-06-10 07:57:45',NULL,'public'),(187,0,'64','64',4,'image/jpeg',9803,'products/64.jpg','[]','2025-06-10 07:57:45','2025-06-10 07:57:45',NULL,'public'),(188,0,'65-1','65-1',4,'image/jpeg',9803,'products/65-1.jpg','[]','2025-06-10 07:57:45','2025-06-10 07:57:45',NULL,'public'),(189,0,'65-2','65-2',4,'image/jpeg',9803,'products/65-2.jpg','[]','2025-06-10 07:57:45','2025-06-10 07:57:45',NULL,'public'),(190,0,'65','65',4,'image/jpeg',9803,'products/65.jpg','[]','2025-06-10 07:57:45','2025-06-10 07:57:45',NULL,'public'),(191,0,'7','7',4,'image/jpeg',9803,'products/7.jpg','[]','2025-06-10 07:57:45','2025-06-10 07:57:45',NULL,'public'),(192,0,'8-1','8-1',4,'image/jpeg',9803,'products/8-1.jpg','[]','2025-06-10 07:57:45','2025-06-10 07:57:45',NULL,'public'),(193,0,'8-2','8-2',4,'image/jpeg',9803,'products/8-2.jpg','[]','2025-06-10 07:57:45','2025-06-10 07:57:45',NULL,'public'),(194,0,'8-3','8-3',4,'image/jpeg',9803,'products/8-3.jpg','[]','2025-06-10 07:57:45','2025-06-10 07:57:45',NULL,'public'),(195,0,'8','8',4,'image/jpeg',9803,'products/8.jpg','[]','2025-06-10 07:57:45','2025-06-10 07:57:45',NULL,'public'),(196,0,'9-1','9-1',4,'image/jpeg',9803,'products/9-1.jpg','[]','2025-06-10 07:57:45','2025-06-10 07:57:45',NULL,'public'),(197,0,'9-2','9-2',4,'image/jpeg',9803,'products/9-2.jpg','[]','2025-06-10 07:57:46','2025-06-10 07:57:46',NULL,'public'),(198,0,'9','9',4,'image/jpeg',9803,'products/9.jpg','[]','2025-06-10 07:57:46','2025-06-10 07:57:46',NULL,'public'),(199,0,'1','1',5,'image/png',2691,'stores/1.png','[]','2025-06-10 07:57:52','2025-06-10 07:57:52',NULL,'public'),(200,0,'10','10',5,'image/png',2691,'stores/10.png','[]','2025-06-10 07:57:52','2025-06-10 07:57:52',NULL,'public'),(201,0,'11','11',5,'image/png',2691,'stores/11.png','[]','2025-06-10 07:57:52','2025-06-10 07:57:52',NULL,'public'),(202,0,'12','12',5,'image/png',2691,'stores/12.png','[]','2025-06-10 07:57:52','2025-06-10 07:57:52',NULL,'public'),(203,0,'13','13',5,'image/png',2691,'stores/13.png','[]','2025-06-10 07:57:52','2025-06-10 07:57:52',NULL,'public'),(204,0,'14','14',5,'image/png',2691,'stores/14.png','[]','2025-06-10 07:57:52','2025-06-10 07:57:52',NULL,'public'),(205,0,'15','15',5,'image/png',2691,'stores/15.png','[]','2025-06-10 07:57:52','2025-06-10 07:57:52',NULL,'public'),(206,0,'16','16',5,'image/png',2732,'stores/16.png','[]','2025-06-10 07:57:53','2025-06-10 07:57:53',NULL,'public'),(207,0,'17','17',5,'image/png',2732,'stores/17.png','[]','2025-06-10 07:57:53','2025-06-10 07:57:53',NULL,'public'),(208,0,'2','2',5,'image/png',2691,'stores/2.png','[]','2025-06-10 07:57:53','2025-06-10 07:57:53',NULL,'public'),(209,0,'3','3',5,'image/png',2691,'stores/3.png','[]','2025-06-10 07:57:53','2025-06-10 07:57:53',NULL,'public'),(210,0,'4','4',5,'image/png',2691,'stores/4.png','[]','2025-06-10 07:57:53','2025-06-10 07:57:53',NULL,'public'),(211,0,'5','5',5,'image/png',2691,'stores/5.png','[]','2025-06-10 07:57:53','2025-06-10 07:57:53',NULL,'public'),(212,0,'6','6',5,'image/png',2691,'stores/6.png','[]','2025-06-10 07:57:53','2025-06-10 07:57:53',NULL,'public'),(213,0,'7','7',5,'image/png',2691,'stores/7.png','[]','2025-06-10 07:57:53','2025-06-10 07:57:53',NULL,'public'),(214,0,'8','8',5,'image/png',2691,'stores/8.png','[]','2025-06-10 07:57:53','2025-06-10 07:57:53',NULL,'public'),(215,0,'9','9',5,'image/png',2691,'stores/9.png','[]','2025-06-10 07:57:53','2025-06-10 07:57:53',NULL,'public'),(216,0,'background-1','background-1',5,'image/jpeg',5286,'stores/background-1.jpg','[]','2025-06-10 07:57:53','2025-06-10 07:57:53',NULL,'public'),(217,0,'background-2','background-2',5,'image/jpeg',5286,'stores/background-2.jpg','[]','2025-06-10 07:57:53','2025-06-10 07:57:53',NULL,'public'),(218,0,'1','1',6,'image/jpeg',9803,'news/1.jpg','[]','2025-06-10 07:58:01','2025-06-10 07:58:01',NULL,'public'),(219,0,'10','10',6,'image/jpeg',9803,'news/10.jpg','[]','2025-06-10 07:58:01','2025-06-10 07:58:01',NULL,'public'),(220,0,'11','11',6,'image/jpeg',9803,'news/11.jpg','[]','2025-06-10 07:58:01','2025-06-10 07:58:01',NULL,'public'),(221,0,'2','2',6,'image/jpeg',9803,'news/2.jpg','[]','2025-06-10 07:58:01','2025-06-10 07:58:01',NULL,'public'),(222,0,'3','3',6,'image/jpeg',9803,'news/3.jpg','[]','2025-06-10 07:58:01','2025-06-10 07:58:01',NULL,'public'),(223,0,'4','4',6,'image/jpeg',9803,'news/4.jpg','[]','2025-06-10 07:58:02','2025-06-10 07:58:02',NULL,'public'),(224,0,'5','5',6,'image/jpeg',9803,'news/5.jpg','[]','2025-06-10 07:58:02','2025-06-10 07:58:02',NULL,'public'),(225,0,'6','6',6,'image/jpeg',9803,'news/6.jpg','[]','2025-06-10 07:58:02','2025-06-10 07:58:02',NULL,'public'),(226,0,'7','7',6,'image/jpeg',9803,'news/7.jpg','[]','2025-06-10 07:58:02','2025-06-10 07:58:02',NULL,'public'),(227,0,'8','8',6,'image/jpeg',9803,'news/8.jpg','[]','2025-06-10 07:58:02','2025-06-10 07:58:02',NULL,'public'),(228,0,'9','9',6,'image/jpeg',9803,'news/9.jpg','[]','2025-06-10 07:58:02','2025-06-10 07:58:02',NULL,'public'),(229,0,'01-sm','01-sm',7,'image/jpeg',10737,'sliders/01-sm.jpg','[]','2025-06-10 07:58:03','2025-06-10 07:58:03',NULL,'public'),(230,0,'01','01',7,'image/jpeg',11704,'sliders/01.jpg','[]','2025-06-10 07:58:03','2025-06-10 07:58:03',NULL,'public'),(231,0,'02-sm','02-sm',7,'image/jpeg',10737,'sliders/02-sm.jpg','[]','2025-06-10 07:58:03','2025-06-10 07:58:03',NULL,'public'),(232,0,'02','02',7,'image/jpeg',11704,'sliders/02.jpg','[]','2025-06-10 07:58:03','2025-06-10 07:58:03',NULL,'public'),(233,0,'1','1',8,'image/jpeg',7935,'promotion/1.jpg','[]','2025-06-10 07:58:04','2025-06-10 07:58:04',NULL,'public'),(234,0,'2','2',8,'image/png',14659,'promotion/2.png','[]','2025-06-10 07:58:04','2025-06-10 07:58:04',NULL,'public'),(235,0,'3','3',8,'image/png',10632,'promotion/3.png','[]','2025-06-10 07:58:04','2025-06-10 07:58:04',NULL,'public'),(236,0,'4','4',8,'image/png',10076,'promotion/4.png','[]','2025-06-10 07:58:04','2025-06-10 07:58:04',NULL,'public'),(237,0,'5','5',8,'image/png',12274,'promotion/5.png','[]','2025-06-10 07:58:04','2025-06-10 07:58:04',NULL,'public'),(238,0,'cod','cod',9,'image/png',12121,'payments/cod.png','[]','2025-06-10 07:58:04','2025-06-10 07:58:04',NULL,'public'),(239,0,'bank-transfer','bank-transfer',9,'image/png',29089,'payments/bank-transfer.png','[]','2025-06-10 07:58:04','2025-06-10 07:58:04',NULL,'public'),(240,0,'stripe','stripe',9,'image/webp',7516,'payments/stripe.webp','[]','2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,'public'),(241,0,'paypal','paypal',9,'image/png',3001,'payments/paypal.png','[]','2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,'public'),(242,0,'mollie','mollie',9,'image/png',8968,'payments/mollie.png','[]','2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,'public'),(243,0,'paystack','paystack',9,'image/png',31015,'payments/paystack.png','[]','2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,'public'),(244,0,'razorpay','razorpay',9,'image/png',8489,'payments/razorpay.png','[]','2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,'public'),(245,0,'sslcommerz','sslcommerz',9,'image/png',3482,'payments/sslcommerz.png','[]','2025-06-10 07:58:05','2025-06-10 07:58:05',NULL,'public'),(246,0,'404','404',10,'image/png',31297,'general/404.png','[]','2025-06-10 07:58:06','2025-06-10 07:58:06',NULL,'public'),(247,0,'app-android','app-android',10,'image/png',630,'general/app-android.png','[]','2025-06-10 07:58:06','2025-06-10 07:58:06',NULL,'public'),(248,0,'app-bg','app-bg',10,'image/png',11530,'general/app-bg.png','[]','2025-06-10 07:58:06','2025-06-10 07:58:06',NULL,'public'),(249,0,'app-ios','app-ios',10,'image/png',630,'general/app-ios.png','[]','2025-06-10 07:58:06','2025-06-10 07:58:06',NULL,'public'),(250,0,'background','background',10,'image/jpeg',26676,'general/background.jpg','[]','2025-06-10 07:58:07','2025-06-10 07:58:07',NULL,'public'),(251,0,'blog-bg','blog-bg',10,'image/jpeg',81226,'general/blog-bg.jpg','[]','2025-06-10 07:58:07','2025-06-10 07:58:07',NULL,'public'),(252,0,'coming-soon','coming-soon',10,'image/jpeg',26506,'general/coming-soon.jpg','[]','2025-06-10 07:58:07','2025-06-10 07:58:07',NULL,'public'),(253,0,'facebook','facebook',10,'image/png',732,'general/facebook.png','[]','2025-06-10 07:58:07','2025-06-10 07:58:07',NULL,'public'),(254,0,'favicon','favicon',10,'image/png',6337,'general/favicon.png','[]','2025-06-10 07:58:07','2025-06-10 07:58:07',NULL,'public'),(255,0,'footer-payments','footer-payments',10,'image/png',439,'general/footer-payments.png','[]','2025-06-10 07:58:07','2025-06-10 07:58:07',NULL,'public'),(256,0,'icon-protect','icon-protect',10,'image/png',1677,'general/icon-protect.png','[]','2025-06-10 07:58:07','2025-06-10 07:58:07',NULL,'public'),(257,0,'icon-reload','icon-reload',10,'image/png',1457,'general/icon-reload.png','[]','2025-06-10 07:58:07','2025-06-10 07:58:07',NULL,'public'),(258,0,'icon-rocket','icon-rocket',10,'image/png',1640,'general/icon-rocket.png','[]','2025-06-10 07:58:07','2025-06-10 07:58:07',NULL,'public'),(259,0,'icon-support','icon-support',10,'image/png',1854,'general/icon-support.png','[]','2025-06-10 07:58:07','2025-06-10 07:58:07',NULL,'public'),(260,0,'icon-tag','icon-tag',10,'image/png',1151,'general/icon-tag.png','[]','2025-06-10 07:58:07','2025-06-10 07:58:07',NULL,'public'),(261,0,'instagram','instagram',10,'image/png',2476,'general/instagram.png','[]','2025-06-10 07:58:08','2025-06-10 07:58:08',NULL,'public'),(262,0,'logo-light','logo-light',10,'image/png',12206,'general/logo-light.png','[]','2025-06-10 07:58:08','2025-06-10 07:58:08',NULL,'public'),(263,0,'logo','logo',10,'image/png',18245,'general/logo.png','[]','2025-06-10 07:58:08','2025-06-10 07:58:08',NULL,'public'),(264,0,'newsletter-popup','newsletter-popup',10,'image/png',17253,'general/newsletter-popup.png','[]','2025-06-10 07:58:08','2025-06-10 07:58:08',NULL,'public'),(265,0,'open-graph-image','open-graph-image',10,'image/png',406719,'general/open-graph-image.png','[]','2025-06-10 07:58:08','2025-06-10 07:58:08',NULL,'public'),(266,0,'pinterest','pinterest',10,'image/png',2103,'general/pinterest.png','[]','2025-06-10 07:58:08','2025-06-10 07:58:08',NULL,'public'),(267,0,'placeholder','placeholder',10,'image/png',2675,'general/placeholder.png','[]','2025-06-10 07:58:08','2025-06-10 07:58:08',NULL,'public'),(268,0,'slider-bg','slider-bg',10,'image/jpeg',26676,'general/slider-bg.jpg','[]','2025-06-10 07:58:08','2025-06-10 07:58:08',NULL,'public'),(269,0,'twitter','twitter',10,'image/png',1749,'general/twitter.png','[]','2025-06-10 07:58:09','2025-06-10 07:58:09',NULL,'public'),(270,0,'youtube','youtube',10,'image/png',1035,'general/youtube.png','[]','2025-06-10 07:58:09','2025-06-10 07:58:09',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2025-06-10 07:57:09','2025-06-10 07:57:09',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2025-06-10 07:57:10','2025-06-10 07:57:10',NULL),(3,0,'customers',NULL,'customers',0,'2025-06-10 07:57:14','2025-06-10 07:57:14',NULL),(4,0,'products',NULL,'products',0,'2025-06-10 07:57:25','2025-06-10 07:57:25',NULL),(5,0,'stores',NULL,'stores',0,'2025-06-10 07:57:52','2025-06-10 07:57:52',NULL),(6,0,'news',NULL,'news',0,'2025-06-10 07:58:00','2025-06-10 07:58:00',NULL),(7,0,'sliders',NULL,'sliders',0,'2025-06-10 07:58:03','2025-06-10 07:58:03',NULL),(8,0,'promotion',NULL,'promotion',0,'2025-06-10 07:58:04','2025-06-10 07:58:04',NULL),(9,0,'payments',NULL,'payments',0,'2025-06-10 07:58:04','2025-06-10 07:58:04',NULL),(10,0,'general',NULL,'general',0,'2025-06-10 07:58:06','2025-06-10 07:58:06',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-06-10 07:58:06','2025-06-10 07:58:06'),(2,2,'header-navigation','2025-06-10 07:58:06','2025-06-10 07:58:06');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/products/smart-watches','icon icon-tag',0,'Special Prices',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(2,1,0,NULL,NULL,'#',NULL,1,'Pages',NULL,'_self',1,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,1,'Terms Of Use',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,2,'Terms & Conditions',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,3,'Refund Policy',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,4,'Coming soon',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(8,1,0,NULL,NULL,'/products',NULL,2,'Shop',NULL,'_self',1,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'Products Of Category',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,2,'Product Single',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(12,1,0,NULL,NULL,'/stores',NULL,3,'Stores',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(13,1,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Blog',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(14,1,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,5,'FAQs',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(15,1,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,6,'Contact',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(16,2,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About Us',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(17,2,0,NULL,NULL,'wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(18,2,0,NULL,NULL,'orders/tracking',NULL,2,'Order Tracking',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(19,3,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Terms Of Use',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(20,3,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Terms & Conditions',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(21,3,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Refund Policy',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(22,3,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,3,'FAQs',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(23,3,0,NULL,NULL,'/nothing',NULL,4,'404 Page',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(24,4,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About us',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(25,4,0,10,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Affiliate',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(26,4,0,11,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Career',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(27,4,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Contact us',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(28,5,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Our blog',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(29,5,0,NULL,NULL,'/cart',NULL,1,'Cart',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(30,5,0,NULL,NULL,'/customer/overview',NULL,2,'My account',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06'),(31,5,0,NULL,NULL,'/products',NULL,3,'Shop',NULL,'_self',0,'2025-06-10 07:58:06','2025-06-10 07:58:06');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-06-10 07:58:06','2025-06-10 07:58:06'),(2,'Header menu','header-menu','published','2025-06-10 07:58:06','2025-06-10 07:58:06'),(3,'Useful Links','useful-links','published','2025-06-10 07:58:06','2025-06-10 07:58:06'),(4,'Help Center','help-center','published','2025-06-10 07:58:06','2025-06-10 07:58:06'),(5,'Business','business','published','2025-06-10 07:58:06','2025-06-10 07:58:06');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'faq_ids','[[1,3,4,9,10]]',1,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:46','2025-06-10 07:57:46'),(2,'faq_ids','[[1,3,7,8,9]]',2,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:46','2025-06-10 07:57:46'),(3,'faq_ids','[[3,4,5,6,9]]',3,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:46','2025-06-10 07:57:46'),(4,'faq_ids','[[4,5,6,7,10]]',4,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:46','2025-06-10 07:57:46'),(5,'faq_ids','[[3,4,5,9,10]]',5,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:46','2025-06-10 07:57:46'),(6,'faq_ids','[[1,5,7,8,9]]',6,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:46','2025-06-10 07:57:46'),(7,'faq_ids','[[1,3,6,8,10]]',7,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:46','2025-06-10 07:57:46'),(8,'faq_ids','[[2,3,4,7,10]]',8,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:46','2025-06-10 07:57:46'),(9,'faq_ids','[[1,5,6,7,10]]',9,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:46','2025-06-10 07:57:46'),(10,'faq_ids','[[1,5,6,8,10]]',10,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:46','2025-06-10 07:57:46'),(11,'faq_ids','[[3,4,5,6,7]]',11,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:46','2025-06-10 07:57:46'),(12,'faq_ids','[[1,3,6,8,9]]',12,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:46','2025-06-10 07:57:46'),(13,'faq_ids','[[3,4,5,7,8]]',13,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:46','2025-06-10 07:57:46'),(14,'faq_ids','[[1,2,5,6,8]]',14,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:46','2025-06-10 07:57:46'),(15,'faq_ids','[[2,3,5,6,8]]',15,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:46','2025-06-10 07:57:46'),(16,'faq_ids','[[2,4,6,7,10]]',16,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:46','2025-06-10 07:57:46'),(17,'faq_ids','[[1,3,6,8,9]]',17,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:46','2025-06-10 07:57:46'),(18,'faq_ids','[[2,4,6,9,10]]',18,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:46','2025-06-10 07:57:46'),(19,'faq_ids','[[1,2,4,6,10]]',19,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(20,'faq_ids','[[4,5,7,9,10]]',20,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(21,'faq_ids','[[2,3,6,7,10]]',21,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(22,'faq_ids','[[2,4,7,8,10]]',22,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(23,'faq_ids','[[1,5,8,9,10]]',23,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(24,'faq_ids','[[1,3,4,8,9]]',24,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(25,'faq_ids','[[4,5,6,8,9]]',25,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(26,'faq_ids','[[1,2,5,8,9]]',26,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(27,'faq_ids','[[4,5,6,7,10]]',27,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(28,'faq_ids','[[3,4,6,7,9]]',28,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(29,'faq_ids','[[2,5,6,9,10]]',29,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(30,'faq_ids','[[2,4,5,6,8]]',30,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(31,'faq_ids','[[1,6,7,9,10]]',31,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(32,'faq_ids','[[2,4,5,6,8]]',32,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(33,'faq_ids','[[2,3,7,9,10]]',33,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(34,'faq_ids','[[1,3,4,5,10]]',34,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(35,'faq_ids','[[1,4,5,6,9]]',35,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(36,'faq_ids','[[1,4,8,9,10]]',36,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(37,'faq_ids','[[1,6,7,9,10]]',37,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(38,'faq_ids','[[3,4,5,9,10]]',38,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(39,'faq_ids','[[1,5,6,9,10]]',39,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(40,'faq_ids','[[1,4,6,7,8]]',40,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(41,'faq_ids','[[2,3,7,8,9]]',41,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(42,'faq_ids','[[2,3,4,5,7]]',42,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(43,'faq_ids','[[2,5,6,7,8]]',43,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(44,'faq_ids','[[2,3,5,7,10]]',44,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(45,'faq_ids','[[1,2,3,4,8]]',45,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(46,'faq_ids','[[3,4,5,7,10]]',46,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(47,'faq_ids','[[2,6,7,9,10]]',47,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(48,'faq_ids','[[1,2,3,4,10]]',48,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(49,'faq_ids','[[2,3,7,9,10]]',49,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(50,'faq_ids','[[2,4,5,6,7]]',50,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(51,'faq_ids','[[3,4,5,7,8]]',51,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(52,'faq_ids','[[1,4,7,9,10]]',52,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:47','2025-06-10 07:57:47'),(53,'faq_ids','[[1,3,7,8,10]]',53,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:48','2025-06-10 07:57:48'),(54,'faq_ids','[[1,3,4,5,6]]',54,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:48','2025-06-10 07:57:48'),(55,'faq_ids','[[1,2,6,8,10]]',55,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:48','2025-06-10 07:57:48'),(56,'faq_ids','[[1,2,3,7,10]]',56,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:48','2025-06-10 07:57:48'),(57,'faq_ids','[[2,4,5,7,10]]',57,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:48','2025-06-10 07:57:48'),(58,'faq_ids','[[1,2,3,8,9]]',58,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:48','2025-06-10 07:57:48'),(59,'faq_ids','[[4,5,7,9,10]]',59,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:48','2025-06-10 07:57:48'),(60,'faq_ids','[[2,3,8,9,10]]',60,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:48','2025-06-10 07:57:48'),(61,'faq_ids','[[3,4,5,6,9]]',61,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:48','2025-06-10 07:57:48'),(62,'faq_ids','[[1,2,5,6,10]]',62,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:48','2025-06-10 07:57:48'),(63,'faq_ids','[[4,5,6,9,10]]',63,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:48','2025-06-10 07:57:48'),(64,'faq_ids','[[1,4,5,6,10]]',64,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:48','2025-06-10 07:57:48'),(65,'faq_ids','[[1,3,4,6,10]]',65,'Botble\\Ecommerce\\Models\\Product','2025-06-10 07:57:48','2025-06-10 07:57:48'),(66,'background','[\"stores\\/background-1.jpg\"]',1,'Botble\\Marketplace\\Models\\Store','2025-06-10 07:58:00','2025-06-10 07:58:00'),(67,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',1,'Botble\\Marketplace\\Models\\Store','2025-06-10 07:58:00','2025-06-10 07:58:00'),(68,'background','[\"stores\\/background-2.jpg\"]',2,'Botble\\Marketplace\\Models\\Store','2025-06-10 07:58:00','2025-06-10 07:58:00'),(69,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',2,'Botble\\Marketplace\\Models\\Store','2025-06-10 07:58:00','2025-06-10 07:58:00'),(70,'background','[\"stores\\/background-1.jpg\"]',3,'Botble\\Marketplace\\Models\\Store','2025-06-10 07:58:00','2025-06-10 07:58:00'),(71,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',3,'Botble\\Marketplace\\Models\\Store','2025-06-10 07:58:00','2025-06-10 07:58:00'),(72,'background','[\"stores\\/background-2.jpg\"]',4,'Botble\\Marketplace\\Models\\Store','2025-06-10 07:58:00','2025-06-10 07:58:00'),(73,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',4,'Botble\\Marketplace\\Models\\Store','2025-06-10 07:58:00','2025-06-10 07:58:00'),(74,'background','[\"stores\\/background-1.jpg\"]',5,'Botble\\Marketplace\\Models\\Store','2025-06-10 07:58:00','2025-06-10 07:58:00'),(75,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',5,'Botble\\Marketplace\\Models\\Store','2025-06-10 07:58:00','2025-06-10 07:58:00'),(76,'background','[\"stores\\/background-1.jpg\"]',6,'Botble\\Marketplace\\Models\\Store','2025-06-10 07:58:00','2025-06-10 07:58:00'),(77,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',6,'Botble\\Marketplace\\Models\\Store','2025-06-10 07:58:00','2025-06-10 07:58:00'),(78,'background','[\"stores\\/background-2.jpg\"]',7,'Botble\\Marketplace\\Models\\Store','2025-06-10 07:58:00','2025-06-10 07:58:00'),(79,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',7,'Botble\\Marketplace\\Models\\Store','2025-06-10 07:58:00','2025-06-10 07:58:00'),(80,'background','[\"stores\\/background-1.jpg\"]',8,'Botble\\Marketplace\\Models\\Store','2025-06-10 07:58:00','2025-06-10 07:58:00'),(81,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',8,'Botble\\Marketplace\\Models\\Store','2025-06-10 07:58:00','2025-06-10 07:58:00'),(82,'tablet_image','[\"sliders\\/01.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-06-10 07:58:03','2025-06-10 07:58:03'),(83,'mobile_image','[\"sliders\\/01-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-06-10 07:58:03','2025-06-10 07:58:03'),(84,'tablet_image','[\"sliders\\/02.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-06-10 07:58:03','2025-06-10 07:58:03'),(85,'mobile_image','[\"sliders\\/02-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-06-10 07:58:03','2025-06-10 07:58:03');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2016_06_10_230148_create_acl_tables',1),(7,'2016_06_14_230857_create_menus_table',1),(8,'2016_06_28_221418_create_pages_table',1),(9,'2016_10_05_074239_create_setting_table',1),(10,'2016_11_28_032840_create_dashboard_widget_tables',1),(11,'2016_12_16_084601_create_widgets_table',1),(12,'2017_05_09_070343_create_media_tables',1),(13,'2017_11_03_070450_create_slug_table',1),(14,'2019_01_05_053554_create_jobs_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2019_12_14_000001_create_personal_access_tokens_table',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(28,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(29,'2023_08_21_090810_make_page_content_nullable',1),(30,'2023_09_14_021936_update_index_for_slugs_table',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(34,'2024_05_04_030654_improve_social_links',1),(35,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(36,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(37,'2024_07_12_100000_change_random_hash_for_media',1),(38,'2024_09_30_024515_create_sessions_table',1),(39,'2020_11_18_150916_ads_create_ads_table',2),(40,'2021_12_02_035301_add_ads_translations_table',2),(41,'2023_04_17_062645_add_open_in_new_tab',2),(42,'2023_11_07_023805_add_tablet_mobile_image',2),(43,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(44,'2025_04_21_000000_add_tablet_mobile_image_to_ads_translations_table',2),(45,'2024_04_27_100730_improve_analytics_setting',3),(46,'2015_06_29_025744_create_audit_history',4),(47,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(48,'2025_05_05_000001_add_user_type_to_audit_histories_table',4),(49,'2015_06_18_033822_create_blog_table',5),(50,'2021_02_16_092633_remove_default_value_for_author_type',5),(51,'2021_12_03_030600_create_blog_translations',5),(52,'2022_04_19_113923_add_index_to_table_posts',5),(53,'2023_08_29_074620_make_column_author_id_nullable',5),(54,'2024_07_30_091615_fix_order_column_in_categories_table',5),(55,'2025_01_06_033807_add_default_value_for_categories_author_type',5),(56,'2016_06_17_091537_create_contacts_table',6),(57,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(58,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(59,'2024_03_25_000001_update_captcha_settings_for_contact',6),(60,'2024_04_19_063914_create_custom_fields_table',6),(61,'2020_03_05_041139_create_ecommerce_tables',7),(62,'2021_01_01_044147_ecommerce_create_flash_sale_table',7),(63,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',7),(64,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',7),(65,'2021_02_18_073505_update_table_ec_reviews',7),(66,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',7),(67,'2021_03_10_025153_change_column_tax_amount',7),(68,'2021_03_20_033103_add_column_availability_to_table_ec_products',7),(69,'2021_04_28_074008_ecommerce_create_product_label_table',7),(70,'2021_05_31_173037_ecommerce_create_ec_products_translations',7),(71,'2021_08_17_105016_remove_column_currency_id_in_some_tables',7),(72,'2021_08_30_142128_add_images_column_to_ec_reviews_table',7),(73,'2021_10_04_030050_add_column_created_by_to_table_ec_products',7),(74,'2021_10_05_122616_add_status_column_to_ec_customers_table',7),(75,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',7),(76,'2021_11_23_071403_correct_languages_for_product_variations',7),(77,'2021_11_28_031808_add_product_tags_translations',7),(78,'2021_12_01_031123_add_featured_image_to_ec_products',7),(79,'2022_01_01_033107_update_table_ec_shipments',7),(80,'2022_02_16_042457_improve_product_attribute_sets',7),(81,'2022_03_22_075758_correct_product_name',7),(82,'2022_04_19_113334_add_index_to_ec_products',7),(83,'2022_04_28_144405_remove_unused_table',7),(84,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',7),(85,'2022_05_18_143720_add_index_to_table_ec_product_categories',7),(86,'2022_06_16_095633_add_index_to_some_tables',7),(87,'2022_06_30_035148_create_order_referrals_table',7),(88,'2022_07_24_153815_add_completed_at_to_ec_orders_table',7),(89,'2022_08_14_032836_create_ec_order_returns_table',7),(90,'2022_08_14_033554_create_ec_order_return_items_table',7),(91,'2022_08_15_040324_add_billing_address',7),(92,'2022_08_30_091114_support_digital_products_table',7),(93,'2022_09_13_095744_create_options_table',7),(94,'2022_09_13_104347_create_option_value_table',7),(95,'2022_10_05_163518_alter_table_ec_order_product',7),(96,'2022_10_12_041517_create_invoices_table',7),(97,'2022_10_12_142226_update_orders_table',7),(98,'2022_10_13_024916_update_table_order_returns',7),(99,'2022_10_21_030830_update_columns_in_ec_shipments_table',7),(100,'2022_10_28_021046_update_columns_in_ec_shipments_table',7),(101,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',7),(102,'2022_11_19_041643_add_ec_tax_product_table',7),(103,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',7),(104,'2022_12_17_041532_fix_address_in_order_invoice',7),(105,'2022_12_26_070329_create_ec_product_views_table',7),(106,'2023_01_04_033051_fix_product_categories',7),(107,'2023_01_09_050400_add_ec_global_options_translations_table',7),(108,'2023_01_10_093754_add_missing_option_value_id',7),(109,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',7),(110,'2023_01_26_021854_add_ec_customer_used_coupons_table',7),(111,'2023_02_08_015900_update_options_column_in_ec_order_product_table',7),(112,'2023_02_27_095752_remove_duplicate_reviews',7),(113,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',7),(114,'2023_04_21_082427_create_ec_product_categorizables_table',7),(115,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',7),(116,'2023_05_17_025812_fix_invoice_issue',7),(117,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',7),(118,'2023_05_27_144611_fix_exchange_rate_setting',7),(119,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',7),(120,'2023_06_30_042512_create_ec_order_tax_information_table',7),(121,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',7),(122,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',7),(123,'2023_08_15_064505_create_ec_tax_rules_table',7),(124,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',7),(125,'2023_08_22_094114_drop_unique_for_barcode',7),(126,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',7),(127,'2023_09_07_094312_add_index_to_product_sku_and_translations',7),(128,'2023_09_19_024955_create_discount_product_categories_table',7),(129,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',7),(130,'2023_11_22_154643_add_unique_in_table_ec_products_variations',7),(131,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',7),(132,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',7),(133,'2023_12_25_040604_ec_create_review_replies_table',7),(134,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',7),(135,'2024_01_16_070706_fix_translation_tables',7),(136,'2024_01_23_075227_add_proof_file_to_ec_orders_table',7),(137,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',7),(138,'2024_03_27_062402_create_ec_customer_deletion_requests_table',7),(139,'2024_03_29_042242_migrate_old_captcha_settings',7),(140,'2024_03_29_093946_create_ec_order_return_histories_table',7),(141,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',7),(142,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',7),(143,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',7),(144,'2024_05_07_073153_improve_table_wishlist',7),(145,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',7),(146,'2024_05_15_021503_fix_invoice_path',7),(147,'2024_06_20_160724_create_ec_shared_wishlists_table',7),(148,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',7),(149,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',7),(150,'2024_07_14_071826_make_customer_email_nullable',7),(151,'2024_07_15_104916_add_video_media_column_to_ec_products_table',7),(152,'2024_07_26_052530_add_percentage_to_tax_rules_table',7),(153,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',7),(154,'2024_08_19_132849_create_specification_tables',7),(155,'2024_09_07_060744_add_author_column_to_specification_tables',7),(156,'2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table',7),(157,'2024_09_25_073928_remove_wrong_product_slugs',7),(158,'2025_01_15_050230_migrate_old_theme_options',7),(159,'2025_01_17_082713_correct_column_barcode_and_cost_per_item_to_product_table',7),(160,'2025_01_24_044641_migrate_old_country_data',7),(161,'2025_01_28_233602_add_private_notes_into_ec_orders_table',7),(162,'2025_02_13_021247_add_tax_translations',7),(163,'2025_02_24_152621_add_text_color_to_product_labels_table',7),(164,'2025_04_12_000001_add_payment_fee_to_ec_orders_table',7),(165,'2025_04_12_000002_add_payment_fee_to_ec_invoices_table',7),(166,'2025_05_05_092036_make_user_id_and_tax_amount_nullable',7),(167,'2025_05_15_082342_drop_email_unique_index_in_ec_customers_table',7),(168,'2025_06_07_081731_add_translations_for_specification_groups_and_tables',7),(169,'2018_07_09_221238_create_faq_table',8),(170,'2021_12_03_082134_create_faq_translations',8),(171,'2023_11_17_063408_add_description_column_to_faq_categories_table',8),(172,'2016_10_03_032336_create_languages_table',9),(173,'2023_09_14_022423_add_index_for_language_table',9),(174,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(175,'2021_12_03_075608_create_page_translations',10),(176,'2023_07_06_011444_create_slug_translations_table',10),(177,'2019_11_18_061011_create_country_table',11),(178,'2021_12_03_084118_create_location_translations',11),(179,'2021_12_03_094518_migrate_old_location_data',11),(180,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',11),(181,'2022_01_16_085908_improve_plugin_location',11),(182,'2022_08_04_052122_delete_location_backup_tables',11),(183,'2023_04_23_061847_increase_state_translations_abbreviation_column',11),(184,'2023_07_26_041451_add_more_columns_to_location_table',11),(185,'2023_07_27_041451_add_more_columns_to_location_translation_table',11),(186,'2023_08_15_073307_drop_unique_in_states_cities_translations',11),(187,'2023_10_21_065016_make_state_id_in_table_cities_nullable',11),(188,'2024_08_17_094600_add_image_into_countries',11),(189,'2025_01_08_093652_add_zip_code_to_cities',11),(190,'2021_07_06_030002_create_marketplace_table',12),(191,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',12),(192,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',12),(193,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',12),(194,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',12),(195,'2021_12_06_031304_update_table_mp_customer_revenues',12),(196,'2022_10_19_152916_add_columns_to_mp_stores_table',12),(197,'2022_10_20_062849_create_mp_category_sale_commissions_table',12),(198,'2022_11_02_071413_add_more_info_for_store',12),(199,'2022_11_02_080444_add_tax_info',12),(200,'2023_02_01_062030_add_store_translations',12),(201,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',12),(202,'2023_02_17_023648_fix_store_prefix',12),(203,'2024_04_03_062451_add_cover_image_to_table_mp_stores',12),(204,'2024_05_07_082630_create_mp_messages_table',12),(205,'2024_07_19_131849_add_documents_to_mp_stores_table',12),(206,'2024_08_18_083119_add_tax_id_column_to_mp_stores_table',12),(207,'2024_08_27_141244_add_block_reason_to_ec_customers_table',12),(208,'2024_09_17_125408_add_square_logo_to_stores_table',12),(209,'2017_10_24_154832_create_newsletter_table',13),(210,'2024_03_25_000001_update_captcha_settings_for_newsletter',13),(211,'2017_05_18_080441_create_payment_tables',14),(212,'2021_03_27_144913_add_customer_type_into_table_payments',14),(213,'2021_05_24_034720_make_column_currency_nullable',14),(214,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(215,'2021_10_19_020859_update_metadata_field',14),(216,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(217,'2022_07_07_153354_update_charge_id_in_table_payments',14),(218,'2024_07_04_083133_create_payment_logs_table',14),(219,'2025_04_12_000003_add_payment_fee_to_payments_table',14),(220,'2025_05_22_000001_add_payment_fee_type_to_settings_table',14),(221,'2017_07_11_140018_create_simple_slider_table',15),(222,'2025_04_08_040931_create_social_logins_table',16),(223,'2024_09_14_100108_add_stripe_connect_details_to_ec_customers_table',17),(224,'2016_10_07_193005_create_translations_table',18),(225,'2023_12_12_105220_drop_translations_table',18);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) unsigned DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_square` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `government_id_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','cbosco@example.org','+12709885470','13570 Mayer Streets','MS','California','Lake Madalynmouth',2,'stores/1.png',NULL,NULL,'Minima quis quae pariatur velit aperiam facere. Laudantium blanditiis voluptate voluptate distinctio. Iusto magnam aut commodi blanditiis magni. Voluptatum aut sint sunt molestias. Recusandae impedit omnis excepturi debitis natus. Voluptate accusantium nihil enim sed. Voluptates velit facilis quo laudantium eum aliquam et qui.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2025-06-10 07:57:59','2025-06-10 07:57:59',NULL,NULL,NULL,NULL,NULL),(2,'Global Office','orolfson@example.net','+16512358997','23925 Walsh Squares','TD','Delaware','South Elza',3,'stores/2.png',NULL,NULL,'Aspernatur autem autem vero dolorem optio quam. Earum et qui voluptatum quam sapiente ipsam animi. Omnis aliquam consectetur repellendus velit. Voluptatum et doloribus soluta. Corrupti fugiat odio dignissimos id. Itaque quis iste cupiditate. Voluptatem corrupti est sint consequatur perferendis recusandae quas. Perferendis libero et perspiciatis facilis iure quam.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2025-06-10 07:57:59','2025-06-10 07:57:59',NULL,NULL,NULL,NULL,NULL),(3,'Young Shop','emard.lamont@example.org','+17819783766','8476 Karley Park Suite 727','AO','Georgia','Braunland',3,'stores/3.png',NULL,NULL,'In aliquam fugiat quae exercitationem et. Nisi commodi non ut consequatur quaerat tempore. Atque provident et doloremque dolor quo. Dicta necessitatibus velit vitae vel corporis praesentium. Blanditiis eos aut qui quae. Et perspiciatis iste commodi nobis adipisci enim cumque. Mollitia aut repellendus alias nihil repellat.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2025-06-10 07:57:59','2025-06-10 07:57:59',NULL,NULL,NULL,NULL,NULL),(4,'Global Store','kara.cronin@example.net','+17193338124','896 Khalil Trace','BH','Oregon','Joaquinfort',3,'stores/4.png',NULL,NULL,'Totam sit magnam rerum quis. Et est aut et et quos ipsum quas. Qui consequatur et et enim ipsum. Est nobis architecto iste ea. Ad consequatur dicta eveniet sed omnis provident. Voluptas amet sit vitae sed ad. Ipsa omnis eligendi debitis sit accusantium. Et voluptatem voluptatum vel aut.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2025-06-10 07:57:59','2025-06-10 07:57:59',NULL,NULL,NULL,NULL,NULL),(5,'Robert’s Store','yvette69@example.org','+14238248216','8964 Bo Walks Suite 659','VN','District of Columbia','East Hassan',2,'stores/5.png',NULL,NULL,'Perspiciatis sapiente dolorem ut tempore eos quos consequuntur. Quia ut repudiandae laudantium sed. Sunt rem fugit labore. Et libero aut pariatur dolores dolorum. Sapiente ut molestias voluptatem fuga quisquam consequatur. Aperiam reprehenderit odit eos praesentium. Et hic voluptas voluptatem repellendus atque dolore. Dolorum reiciendis delectus est eaque dolorem sint et.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2025-06-10 07:57:59','2025-06-10 07:57:59',NULL,NULL,NULL,NULL,NULL),(6,'Stouffer','devan.huels@example.org','+15075769549','96039 Spencer Pass Suite 194','MK','Missouri','Altenwerthhaven',7,'stores/6.png',NULL,NULL,'Cum quia vel molestiae suscipit voluptates odit. Sit quo quis earum dolorem. Autem ut cumque voluptatem. Quos nobis consequatur deleniti maiores deleniti iste aliquid. Ut velit expedita nobis porro. Est rerum ipsam recusandae temporibus aut. Ut nam iure voluptatum reprehenderit voluptas fugiat. Dolorem enim non beatae harum.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2025-06-10 07:57:59','2025-06-10 07:57:59',NULL,NULL,NULL,NULL,NULL),(7,'StarKist','naltenwerth@example.net','+17743230869','45050 Janiya Canyon Suite 010','GP','Kentucky','Parkerport',2,'stores/7.png',NULL,NULL,'Expedita cupiditate sed natus nisi. Saepe minima excepturi sit pariatur nemo earum. Et impedit quo explicabo nostrum minus ipsa. Cupiditate numquam fugit quasi doloribus. Nobis dolores molestiae provident sint. Rerum corrupti error ea vel. Voluptas tempora fugit hic ipsa vel. Rerum et quam iusto est vitae veniam nemo doloribus.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2025-06-10 07:57:59','2025-06-10 07:57:59',NULL,NULL,NULL,NULL,NULL),(8,'Old El Paso','easter18@example.net','+19064200572','392 Toy Hill','LB','Maine','Wolfbury',8,'stores/8.png',NULL,NULL,'Omnis veniam placeat minima praesentium. Tenetur et illum ut quisquam ducimus. Eveniet ut quia dolores nostrum ducimus dicta qui. Vel vero neque sunt nemo. Ut ut itaque labore maiores accusamus ipsum quidem et. Nihil sit voluptates assumenda odio ipsam quos. Minus laudantium ut sint iusto iste. Ex animi aut qui sed est. Modi nostrum eos qui voluptatem et odio.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2025-06-10 07:57:59','2025-06-10 07:57:59',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$NIUJH43P4.84RnOm3gwgJu44LW9CmtsAqPf.cpJ0W1UmuFQC4wxLu','{\"name\":\"Kristian Glover\",\"number\":\"+18043346439\",\"full_name\":\"Loyal Huel Jr.\",\"description\":\"Roman Mitchell\"}','2025-06-10 07:57:54','2025-06-10 07:57:54','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$TGRKZTqT8i6TQ46vC2yZ7.2Mjx7Z2aZ0VCayVy8V9hfcJ4h20bISy','{\"name\":\"Angel Pouros\",\"number\":\"+17374346203\",\"full_name\":\"Mr. Rogelio Oberbrunner\",\"description\":\"Mrs. Freda Cartwright III\"}','2025-06-10 07:57:55','2025-06-10 07:57:55','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$xwXaZr4JGOdYqNlUucL0POqGdGtQYAx57HmT7ixVDGAqgAO4kkZTO','{\"name\":\"Winifred Koepp Jr.\",\"number\":\"+14798752988\",\"full_name\":\"Dr. Abelardo Breitenberg V\",\"description\":\"Miss Lessie Leannon\"}','2025-06-10 07:57:56','2025-06-10 07:57:56','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$0VYvxIFZKCdt.xQN8xY0XOdiNmECVyoL0ZScAbk5k147ajRRm1qhi','{\"name\":\"Ettie Bergnaum\",\"number\":\"+17377150899\",\"full_name\":\"Valentine Mosciski Sr.\",\"description\":\"Mr. Colten Goodwin\"}','2025-06-10 07:57:57','2025-06-10 07:57:57','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$VNNARmgpY4TurnKOiHJSO.TW5rpn3GNQnBxPUK/jGMqtURr9qAn/.','{\"name\":\"Ms. Juliet Price I\",\"number\":\"+17064236946\",\"full_name\":\"Bertrand Boyer Jr.\",\"description\":\"Dr. Laurel Kuhic DDS\"}','2025-06-10 07:57:58','2025-06-10 07:57:58','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$eEJGY4fmKfuG6SnEzWVa6uP/2O0syrowSAssc/I4w5ZMPxsGd5nuW','{\"name\":\"Prof. Thad Frami I\",\"number\":\"+13207405561\",\"full_name\":\"Makenna Rempel\",\"description\":\"Mr. Kurt Kling\"}','2025-06-10 07:57:59','2025-06-10 07:57:59','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$7dH0sgI0o3C0f9GHEz4YS.nofvO1p3kBBpAWilNoU0ELl1s6Ixu7K','{\"name\":\"Prof. Guido Hirthe\",\"number\":\"+16039238798\",\"full_name\":\"Kenna Reichel\",\"description\":\"Mr. Lennie Wintheiser\"}','2025-06-10 07:57:59','2025-06-10 07:57:59','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" is_autoplay=\"yes\" autoplay_speed=\"5000\" ads=\"VC2C8Q1UGCBG\" background=\"general/slider-bg.jpg\"][/simple-slider]</div><div>[featured-product-categories title=\"Browse by Category\"][/featured-product-categories]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[flash-sale title=\"Top Saver Today\" flash_sale_id=\"1\"][/flash-sale]</div><div>[product-category-products title=\"Just Landing\" category_id=\"23\"][/product-category-products]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[product-collections title=\"Essential Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[featured-posts title=\"Health Daily\" background=\"general/blog-bg.jpg\"\n                        app_enabled=\"1\"\n                        app_title=\"Shop faster with Farmart App\"\n                        app_description=\"Available on both iOS & Android\"\n                        app_bg=\"general/app-bg.png\"\n                        app_android_img=\"general/app-android.png\"\n                        app_android_link=\"#\"\n                        app_ios_img=\"general/app-ios.png\"\n                        app_ios_link=\"#\"][/featured-posts]</div>',1,NULL,'homepage',NULL,'published','2025-06-10 07:58:03','2025-06-10 07:58:03'),(2,'About us',NULL,1,NULL,NULL,NULL,'published','2025-06-10 07:58:03','2025-06-10 07:58:03'),(3,'Terms Of Use',NULL,1,NULL,NULL,NULL,'published','2025-06-10 07:58:03','2025-06-10 07:58:03'),(4,'Terms &amp; Conditions',NULL,1,NULL,NULL,NULL,'published','2025-06-10 07:58:03','2025-06-10 07:58:03'),(5,'Refund Policy',NULL,1,NULL,NULL,NULL,'published','2025-06-10 07:58:03','2025-06-10 07:58:03'),(6,'Blog','<p>---</p>',1,NULL,'full-width',NULL,'published','2025-06-10 07:58:04','2025-06-10 07:58:04'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,NULL,NULL,'published','2025-06-10 07:58:04','2025-06-10 07:58:04'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Info\" subtitle=\"Location\" name_1=\"Store\" address_1=\"68 Atlantic Ave St, Brooklyn, NY 90002, USA\" phone_1=\"(+005) 5896 72 78 79\" email_1=\"support@farmart.com\" name_2=\"Warehouse\" address_2=\"172 Richmond Hill Ave St, Stamford, NY 90002, USA\" phone_2=\"(+005) 5896 03 04 05\" show_contact_form=\"1\" ][/contact-info-boxes]</div>',1,NULL,NULL,NULL,'published','2025-06-10 07:58:04','2025-06-10 07:58:04'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2025-06-10 07:58:04','2025-06-10 07:58:04'),(10,'Affiliate',NULL,1,NULL,NULL,NULL,'published','2025-06-10 07:58:04','2025-06-10 07:58:04'),(11,'Career',NULL,1,NULL,NULL,NULL,'published','2025-06-10 07:58:04','2025-06-10 07:58:04'),(12,'Coming soon','<div>[coming-soon time=\"2026-06-10 14:58:03\" title=\"We’re coming soon.\" subtitle=\"Currently we’re working on our brand new website and will be\nlaunching soon.\" social_title=\"Connect us on social networks\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2025-06-10 07:58:04','2025-06-10 07:58:04');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(4,1),(1,2),(3,2),(1,3),(4,3),(1,4),(3,4),(2,5),(4,5),(1,6),(3,6),(2,7),(4,7),(1,8),(3,8),(1,9),(4,9),(1,10),(4,10),(2,11),(3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',729,NULL,'2025-06-10 07:58:02','2025-06-10 07:58:02'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',2255,NULL,'2025-06-10 07:58:02','2025-06-10 07:58:02'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',396,NULL,'2025-06-10 07:58:02','2025-06-10 07:58:02'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1904,NULL,'2025-06-10 07:58:02','2025-06-10 07:58:02'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',2241,NULL,'2025-06-10 07:58:03','2025-06-10 07:58:03'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1819,NULL,'2025-06-10 07:58:03','2025-06-10 07:58:03'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',2064,NULL,'2025-06-10 07:58:03','2025-06-10 07:58:03'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',900,NULL,'2025-06-10 07:58:03','2025-06-10 07:58:03'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',148,NULL,'2025-06-10 07:58:03','2025-06-10 07:58:03'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',2496,NULL,'2025-06-10 07:58:03','2025-06-10 07:58:03'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1525,NULL,'2025-06-10 07:58:03','2025-06-10 07:58:03');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"marketplace.messages.index\":true,\"marketplace.messages.edit\":true,\"marketplace.messages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-06-10 07:57:09','2025-06-10 07:57:09');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','2990f3382065cc9dfb5fdf1077dc6875',NULL,'2025-06-10 07:58:09'),(2,'api_enabled','0',NULL,'2025-06-10 07:58:09'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"stripe-connect\",\"translation\"]',NULL,'2025-06-10 07:58:09'),(4,'analytics_dashboard_widgets','0','2025-06-10 07:57:02','2025-06-10 07:57:02'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2025-06-10 07:57:03','2025-06-10 07:57:03'),(6,'api_layer_api_key','',NULL,'2025-06-10 07:58:09'),(9,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2025-06-10 07:57:08','2025-06-10 07:57:08'),(10,'payment_cod_fee_type','fixed',NULL,'2025-06-10 07:58:09'),(11,'payment_bank_transfer_fee_type','fixed',NULL,'2025-06-10 07:58:09'),(12,'theme','farmart',NULL,'2025-06-10 07:58:09'),(13,'show_admin_bar','1',NULL,'2025-06-10 07:58:09'),(14,'language_hide_default','1',NULL,'2025-06-10 07:58:09'),(16,'language_display','all',NULL,'2025-06-10 07:58:09'),(17,'language_hide_languages','[]',NULL,'2025-06-10 07:58:09'),(18,'ecommerce_store_name','Farmart',NULL,'2025-06-10 07:58:09'),(19,'ecommerce_store_phone','1800979769',NULL,'2025-06-10 07:58:09'),(20,'ecommerce_store_address','502 New Street',NULL,'2025-06-10 07:58:09'),(21,'ecommerce_store_state','Brighton VIC',NULL,'2025-06-10 07:58:09'),(22,'ecommerce_store_city','Brighton VIC',NULL,'2025-06-10 07:58:09'),(23,'ecommerce_store_country','AU',NULL,'2025-06-10 07:58:09'),(24,'simple_slider_using_assets','0',NULL,'2025-06-10 07:58:09'),(25,'language_switcher_display','dropdown',NULL,'2025-06-10 07:58:09'),(26,'admin_favicon','general/favicon.png',NULL,'2025-06-10 07:58:09'),(27,'admin_logo','general/logo-light.png',NULL,'2025-06-10 07:58:09'),(28,'payment_cod_status','1',NULL,'2025-06-10 07:58:09'),(29,'payment_bank_transfer_status','1',NULL,'2025-06-10 07:58:09'),(30,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2025-06-10 07:58:09'),(31,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2025-06-10 07:58:09'),(32,'payment_stripe_payment_type','stripe_checkout',NULL,'2025-06-10 07:58:09'),(33,'plugins_ecommerce_customer_new_order_status','0',NULL,'2025-06-10 07:58:09'),(34,'plugins_ecommerce_admin_new_order_status','0',NULL,'2025-06-10 07:58:09'),(35,'ecommerce_is_enabled_support_digital_products','1',NULL,'2025-06-10 07:58:09'),(36,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2025-06-10 07:58:09'),(37,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2025-06-10 07:58:09'),(38,'ecommerce_store_order_prefix','SF',NULL,'2025-06-10 07:58:09'),(39,'ecommerce_enable_product_specification','1',NULL,'2025-06-10 07:58:09'),(40,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2025-06-10 07:58:09'),(41,'payment_cod_logo','payments/cod.png',NULL,'2025-06-10 07:58:09'),(42,'payment_bank_transfer_logo','payments/bank-transfer.png',NULL,'2025-06-10 07:58:09'),(43,'payment_stripe_logo','payments/stripe.webp',NULL,'2025-06-10 07:58:09'),(44,'payment_paypal_logo','payments/paypal.png',NULL,'2025-06-10 07:58:09'),(45,'payment_mollie_logo','payments/mollie.png',NULL,'2025-06-10 07:58:09'),(46,'payment_paystack_logo','payments/paystack.png',NULL,'2025-06-10 07:58:09'),(47,'payment_razorpay_logo','payments/razorpay.png',NULL,'2025-06-10 07:58:09'),(48,'payment_sslcommerz_logo','payments/sslcommerz.png',NULL,'2025-06-10 07:58:09'),(49,'permalink-botble-blog-models-post','blog',NULL,'2025-06-10 07:58:09'),(50,'permalink-botble-blog-models-category','blog',NULL,'2025-06-10 07:58:09'),(51,'theme-farmart-site_title','Farmart - Laravel Ecommerce system',NULL,NULL),(52,'theme-farmart-seo_description','Farmart is a modern and flexible Multipurpose Marketplace Laravel script. This script is suited for electronic, organic and grocery store, furniture store, clothing store, hitech store and accessories store… With the theme, you can create your own marketplace and allow vendors to sell just like Amazon, Envato, eBay…',NULL,NULL),(53,'theme-farmart-copyright','© %Y Farmart. All Rights Reserved.',NULL,NULL),(54,'theme-farmart-favicon','general/favicon.png',NULL,NULL),(55,'theme-farmart-logo','general/logo.png',NULL,NULL),(56,'theme-farmart-seo_og_image','general/open-graph-image.png',NULL,NULL),(57,'theme-farmart-image-placeholder','general/placeholder.png',NULL,NULL),(58,'theme-farmart-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(59,'theme-farmart-hotline','8 800 332 65-66',NULL,NULL),(60,'theme-farmart-email','contact@fartmart.co',NULL,NULL),(61,'theme-farmart-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(62,'theme-farmart-payment_methods_image','general/footer-payments.png',NULL,NULL),(63,'theme-farmart-homepage_id','1',NULL,NULL),(64,'theme-farmart-blog_page_id','6',NULL,NULL),(65,'theme-farmart-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(66,'theme-farmart-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(67,'theme-farmart-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(68,'theme-farmart-number_of_products_per_page','40',NULL,NULL),(69,'theme-farmart-number_of_cross_sale_product','6',NULL,NULL),(70,'theme-farmart-logo_in_the_checkout_page','general/logo.png',NULL,NULL),(71,'theme-farmart-logo_in_invoices','general/logo.png',NULL,NULL),(72,'theme-farmart-logo_vendor_dashboard','general/logo.png',NULL,NULL),(73,'theme-farmart-404_page_image','general/404.png',NULL,NULL),(74,'theme-farmart-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background-color\",\"value\":\"#3b5999\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background-color\",\"value\":\"#000\"}],[{\"key\":\"name\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background-color\",\"value\":\"#0a66c2\"}]]',NULL,NULL),(75,'theme-farmart-social_sharing','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#3b5999\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#55acee\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#b10c0c\"}],[{\"key\":\"name\",\"value\":\"Linkedin\"},{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#0271ae\"}],[{\"key\":\"name\",\"value\":\"Whatsapp\"},{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#25d366\"}]]',NULL,NULL),(76,'theme-farmart-primary_font','Mulish',NULL,NULL),(77,'theme-farmart-newsletter_popup_enable','1',NULL,NULL),(78,'theme-farmart-newsletter_popup_image','general/newsletter-popup.png',NULL,NULL),(79,'theme-farmart-newsletter_popup_title','Subscribe Now',NULL,NULL),(80,'theme-farmart-newsletter_popup_subtitle','Newsletter',NULL,NULL),(81,'theme-farmart-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/01.jpg','/products',NULL,1,'2025-06-10 07:58:03','2025-06-10 07:58:03'),(2,1,'Slider 2','sliders/02.jpg','/products',NULL,2,'2025-06-10 07:58:03','2025-06-10 07:58:03');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2025-06-10 07:58:03','2025-06-10 07:58:03');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2025-06-10 07:57:10','2025-06-10 07:57:10'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2025-06-10 07:57:10','2025-06-10 07:57:10'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2025-06-10 07:57:10','2025-06-10 07:57:10'),(4,'farmart',4,'Botble\\Ecommerce\\Models\\Brand','brands','2025-06-10 07:57:10','2025-06-10 07:57:10'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2025-06-10 07:57:10','2025-06-10 07:57:10'),(6,'fruits-vegetables',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(7,'fruits',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(8,'apples',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(9,'bananas',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(10,'berries',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(11,'oranges-easy-peelers',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(12,'grapes',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(13,'lemons-limes',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(14,'peaches-nectarines',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(15,'pears',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(16,'melon',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(17,'avocados',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(18,'plums-apricots',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(19,'vegetables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(20,'potatoes',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(21,'carrots-root-vegetables',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(22,'broccoli-cauliflower',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(23,'cabbage-spinach-greens',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(24,'onions-leeks-garlic',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(25,'mushrooms',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(26,'tomatoes',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(27,'beans-peas-sweetcorn',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(28,'freshly-drink-orange-juice',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(29,'breads-sweets',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(30,'crisps-snacks-nuts',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(31,'crisps-popcorn',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(32,'nuts-seeds',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(33,'lighter-options',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(34,'cereal-bars',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(35,'breadsticks-pretzels',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(36,'fruit-snacking',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(37,'rice-corn-cakes',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(38,'protein-energy-snacks',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(39,'toddler-snacks',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(40,'meat-snacks',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(41,'beans',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(42,'lentils',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(43,'chickpeas',38,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(44,'tins-cans',39,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(45,'tomatoes',40,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(46,'baked-beans-spaghetti',41,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(47,'fish',42,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(48,'beans-pulses',43,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(49,'fruit',44,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(50,'coconut-milk-cream',45,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(51,'lighter-options',46,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(52,'olives',47,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(53,'sweetcorn',48,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(54,'carrots',49,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(55,'peas',50,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(56,'mixed-vegetables',51,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(57,'frozen-seafoods',52,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(58,'raw-meats',53,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(59,'wines-alcohol-drinks',54,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(60,'ready-meals',55,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:11','2025-06-10 07:57:11'),(61,'meals-for-1',56,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:12','2025-06-10 07:57:12'),(62,'meals-for-2',57,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:12','2025-06-10 07:57:12'),(63,'indian',58,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:12','2025-06-10 07:57:12'),(64,'italian',59,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:12','2025-06-10 07:57:12'),(65,'chinese',60,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:12','2025-06-10 07:57:12'),(66,'traditional-british',61,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:12','2025-06-10 07:57:12'),(67,'thai-oriental',62,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:12','2025-06-10 07:57:12'),(68,'mediterranean-moroccan',63,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:12','2025-06-10 07:57:12'),(69,'mexican-caribbean',64,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:12','2025-06-10 07:57:12'),(70,'lighter-meals',65,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:12','2025-06-10 07:57:12'),(71,'lunch-veg-pots',66,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:12','2025-06-10 07:57:12'),(72,'salad-herbs',67,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:12','2025-06-10 07:57:12'),(73,'salad-bags',68,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:12','2025-06-10 07:57:12'),(74,'cucumber',69,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:12','2025-06-10 07:57:12'),(75,'tomatoes',70,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:12','2025-06-10 07:57:12'),(76,'lettuce',71,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:12','2025-06-10 07:57:12'),(77,'lunch-salad-bowls',72,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:13','2025-06-10 07:57:13'),(78,'lunch-salad-bowls',73,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:13','2025-06-10 07:57:13'),(79,'fresh-herbs',74,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:13','2025-06-10 07:57:13'),(80,'avocados',75,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:13','2025-06-10 07:57:13'),(81,'peppers',76,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:13','2025-06-10 07:57:13'),(82,'coleslaw-potato-salad',77,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:13','2025-06-10 07:57:13'),(83,'spring-onions',78,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:13','2025-06-10 07:57:13'),(84,'chilli-ginger-garlic',79,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:13','2025-06-10 07:57:13'),(85,'tea-coffee',80,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:13','2025-06-10 07:57:13'),(86,'milks-and-dairies',81,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:13','2025-06-10 07:57:13'),(87,'pet-foods',82,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:13','2025-06-10 07:57:13'),(88,'food-cupboard',83,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-06-10 07:57:13','2025-06-10 07:57:13'),(89,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-06-10 07:57:25','2025-06-10 07:57:25'),(90,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-06-10 07:57:25','2025-06-10 07:57:25'),(91,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-06-10 07:57:25','2025-06-10 07:57:25'),(92,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-06-10 07:57:25','2025-06-10 07:57:25'),(93,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-06-10 07:57:25','2025-06-10 07:57:25'),(94,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-06-10 07:57:25','2025-06-10 07:57:25'),(95,'dual-camera-20mp',1,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:46','2025-06-10 07:57:46'),(96,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:46','2025-06-10 07:57:46'),(97,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:46','2025-06-10 07:57:46'),(98,'red-black-headphone-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:46','2025-06-10 07:58:09'),(99,'smart-watch-external',5,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:46','2025-06-10 07:57:46'),(100,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:46','2025-06-10 07:57:46'),(101,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:46','2025-06-10 07:57:46'),(102,'smart-televisions-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:46','2025-06-10 07:58:09'),(103,'samsung-smart-phone',9,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:46','2025-06-10 07:57:46'),(104,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:46','2025-06-10 07:57:46'),(105,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:46','2025-06-10 07:57:46'),(106,'epsion-plaster-printer-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:46','2025-06-10 07:58:09'),(107,'sound-intone-i65-earphone-white-version',13,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:46','2025-06-10 07:57:46'),(108,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:46','2025-06-10 07:57:46'),(109,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:46','2025-06-10 07:57:46'),(110,'apple-macbook-air-retina-12-inch-laptop-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:46','2025-06-10 07:58:09'),(111,'samsung-gear-vr-virtual-reality-headset',17,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:46','2025-06-10 07:57:46'),(112,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:46','2025-06-10 07:57:46'),(113,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(114,'nyx-beauty-couton-pallete-makeup-12-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:58:09'),(115,'mvmth-classical-leather-watch-in-black',21,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(116,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(117,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(118,'vimto-squash-remix-apple-15-litres-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:58:09'),(119,'crock-pot-slow-cooker',25,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(120,'taylors-of-harrogate-yorkshire-coffee',26,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(121,'soft-mochi-galeto-ice-cream',27,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(122,'naked-noodle-egg-noodles-singapore-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:58:09'),(123,'saute-pan-silver',29,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(124,'bar-s-classic-bun-length-franks',30,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(125,'broccoli-crowns',31,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(126,'slimming-world-vegan-mac-greens-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:58:09'),(127,'haagen-dazs-salted-caramel',33,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(128,'iceland-3-solo-exotic-burst',34,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(129,'extreme-budweiser-light-can',35,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(130,'iceland-macaroni-cheese-traybake-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:58:09'),(131,'dolmio-bolognese-pasta-sauce',37,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(132,'sitema-bakeit-plastic-box',38,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(133,'wayfair-basics-dinner-plate-storage',39,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(134,'miko-the-panda-water-bottle-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:58:09'),(135,'sesame-seed-bread',41,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(136,'morrisons-the-best-beef',42,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(137,'avocado-hass-large',43,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(138,'italia-beef-lasagne-digital',44,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:58:09'),(139,'maxwell-house-classic-roast-mocha',45,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(140,'bottled-pure-water-500ml',46,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(141,'famart-farmhouse-soft-white',47,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(142,'coca-cola-original-taste-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:58:09'),(143,'casillero-diablo-cabernet-sauvignon',49,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(144,'arla-organic-free-range-milk',50,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(145,'aptamil-follow-on-baby-milk',51,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:57:47'),(146,'cuisinart-chefs-classic-hard-anodized-digital',52,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:47','2025-06-10 07:58:09'),(147,'corn-yellow-sweet',53,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:48','2025-06-10 07:57:48'),(148,'hobnobs-the-nobbly-biscuit',54,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:48','2025-06-10 07:57:48'),(149,'honest-organic-still-lemonade',55,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:48','2025-06-10 07:57:48'),(150,'ice-becks-beer-350ml-x-24-pieces-digital',56,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:48','2025-06-10 07:58:09'),(151,'iceland-6-hot-cross-buns',57,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:48','2025-06-10 07:57:48'),(152,'iceland-luxury-4-panini-rolls',58,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:48','2025-06-10 07:57:48'),(153,'iceland-soft-scoop-vanilla',59,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:48','2025-06-10 07:57:48'),(154,'iceland-spaghetti-bolognese-digital',60,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:48','2025-06-10 07:58:09'),(155,'kelloggs-coco-pops-cereal',61,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:48','2025-06-10 07:57:48'),(156,'kit-kat-chunky-milk-chocolate',62,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:48','2025-06-10 07:57:48'),(157,'large-green-bell-pepper',63,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:48','2025-06-10 07:57:48'),(158,'pice-94w-beasley-journal-digital',64,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:48','2025-06-10 07:58:09'),(159,'province-piece-glass-drinking-glass',65,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:57:48','2025-06-10 07:57:48'),(160,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2025-06-10 07:57:59','2025-06-10 07:57:59'),(161,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2025-06-10 07:57:59','2025-06-10 07:57:59'),(162,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2025-06-10 07:57:59','2025-06-10 07:57:59'),(163,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2025-06-10 07:57:59','2025-06-10 07:57:59'),(164,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2025-06-10 07:57:59','2025-06-10 07:57:59'),(165,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2025-06-10 07:57:59','2025-06-10 07:57:59'),(166,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2025-06-10 07:57:59','2025-06-10 07:57:59'),(167,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2025-06-10 07:57:59','2025-06-10 07:57:59'),(168,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2025-06-10 07:58:02','2025-06-10 07:58:05'),(169,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2025-06-10 07:58:02','2025-06-10 07:58:05'),(170,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2025-06-10 07:58:02','2025-06-10 07:58:05'),(171,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2025-06-10 07:58:02','2025-06-10 07:58:05'),(172,'general',1,'Botble\\Blog\\Models\\Tag','tag','2025-06-10 07:58:02','2025-06-10 07:58:02'),(173,'design',2,'Botble\\Blog\\Models\\Tag','tag','2025-06-10 07:58:02','2025-06-10 07:58:02'),(174,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2025-06-10 07:58:02','2025-06-10 07:58:02'),(175,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2025-06-10 07:58:02','2025-06-10 07:58:02'),(176,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2025-06-10 07:58:02','2025-06-10 07:58:02'),(177,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2025-06-10 07:58:02','2025-06-10 07:58:05'),(178,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2025-06-10 07:58:02','2025-06-10 07:58:05'),(179,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2025-06-10 07:58:02','2025-06-10 07:58:05'),(180,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2025-06-10 07:58:03','2025-06-10 07:58:05'),(181,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2025-06-10 07:58:03','2025-06-10 07:58:05'),(182,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2025-06-10 07:58:03','2025-06-10 07:58:05'),(183,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2025-06-10 07:58:03','2025-06-10 07:58:05'),(184,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2025-06-10 07:58:03','2025-06-10 07:58:05'),(185,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2025-06-10 07:58:03','2025-06-10 07:58:05'),(186,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2025-06-10 07:58:03','2025-06-10 07:58:05'),(187,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2025-06-10 07:58:03','2025-06-10 07:58:05'),(188,'home',1,'Botble\\Page\\Models\\Page','','2025-06-10 07:58:03','2025-06-10 07:58:03'),(189,'about-us',2,'Botble\\Page\\Models\\Page','','2025-06-10 07:58:03','2025-06-10 07:58:03'),(190,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2025-06-10 07:58:03','2025-06-10 07:58:03'),(191,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2025-06-10 07:58:03','2025-06-10 07:58:03'),(192,'refund-policy',5,'Botble\\Page\\Models\\Page','','2025-06-10 07:58:04','2025-06-10 07:58:04'),(193,'blog',6,'Botble\\Page\\Models\\Page','','2025-06-10 07:58:04','2025-06-10 07:58:04'),(194,'faqs',7,'Botble\\Page\\Models\\Page','','2025-06-10 07:58:04','2025-06-10 07:58:04'),(195,'contact',8,'Botble\\Page\\Models\\Page','','2025-06-10 07:58:04','2025-06-10 07:58:04'),(196,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2025-06-10 07:58:04','2025-06-10 07:58:04'),(197,'affiliate',10,'Botble\\Page\\Models\\Page','','2025-06-10 07:58:04','2025-06-10 07:58:04'),(198,'career',11,'Botble\\Page\\Models\\Page','','2025-06-10 07:58:04','2025-06-10 07:58:04'),(199,'coming-soon',12,'Botble\\Page\\Models\\Page','','2025-06-10 07:58:04','2025-06-10 07:58:04'),(200,'smart-watches',66,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:09','2025-06-10 07:58:09'),(201,'smart-watches',67,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:09','2025-06-10 07:58:09'),(202,'smart-watches',68,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:09','2025-06-10 07:58:09'),(203,'smart-watches',69,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:09','2025-06-10 07:58:09'),(204,'beat-headphone',70,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:09','2025-06-10 07:58:09'),(205,'red-black-headphone-digital',71,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(206,'red-black-headphone-digital',72,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(207,'smart-watch-external',73,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(208,'smart-watch-external',74,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(209,'smart-watch-external',75,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(210,'smart-watch-external',76,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(211,'audio-equipment',77,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(212,'audio-equipment',78,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(213,'audio-equipment',79,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(214,'audio-equipment',80,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(215,'smart-televisions-digital',81,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(216,'smart-televisions-digital',82,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(217,'smart-televisions-digital',83,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(218,'samsung-smart-phone',84,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(219,'samsung-smart-phone',85,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(220,'samsung-smart-phone',86,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(221,'samsung-smart-phone',87,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(222,'herschel-leather-duffle-bag-in-brown-color',88,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(223,'herschel-leather-duffle-bag-in-brown-color',89,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(224,'xbox-one-wireless-controller-black-color',90,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(225,'xbox-one-wireless-controller-black-color',91,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(226,'xbox-one-wireless-controller-black-color',92,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(227,'xbox-one-wireless-controller-black-color',93,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(228,'sound-intone-i65-earphone-white-version',94,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(229,'bo-play-mini-bluetooth-speaker',95,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(230,'bo-play-mini-bluetooth-speaker',96,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(231,'samsung-gear-vr-virtual-reality-headset',97,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(232,'aveeno-moisturizing-body-shower-450ml',98,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(233,'aveeno-moisturizing-body-shower-450ml',99,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(234,'aveeno-moisturizing-body-shower-450ml',100,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(235,'baxter-care-hair-kit-for-bearded-mens',101,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(236,'ciate-palemore-lipstick-bold-red-color',102,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(237,'ciate-palemore-lipstick-bold-red-color',103,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(238,'crock-pot-slow-cooker',104,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(239,'crock-pot-slow-cooker',105,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(240,'crock-pot-slow-cooker',106,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(241,'crock-pot-slow-cooker',107,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(242,'taylors-of-harrogate-yorkshire-coffee',108,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(243,'soft-mochi-galeto-ice-cream',109,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(244,'soft-mochi-galeto-ice-cream',110,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(245,'soft-mochi-galeto-ice-cream',111,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(246,'bar-s-classic-bun-length-franks',112,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(247,'bar-s-classic-bun-length-franks',113,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(248,'extreme-budweiser-light-can',114,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(249,'extreme-budweiser-light-can',115,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(250,'dolmio-bolognese-pasta-sauce',116,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(251,'sitema-bakeit-plastic-box',117,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(252,'sitema-bakeit-plastic-box',118,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(253,'wayfair-basics-dinner-plate-storage',119,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(254,'wayfair-basics-dinner-plate-storage',120,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(255,'wayfair-basics-dinner-plate-storage',121,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(256,'miko-the-panda-water-bottle-digital',122,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(257,'miko-the-panda-water-bottle-digital',123,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(258,'miko-the-panda-water-bottle-digital',124,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(259,'italia-beef-lasagne-digital',125,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(260,'italia-beef-lasagne-digital',126,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(261,'famart-farmhouse-soft-white',127,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(262,'famart-farmhouse-soft-white',128,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(263,'coca-cola-original-taste-digital',129,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(264,'casillero-diablo-cabernet-sauvignon',130,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(265,'casillero-diablo-cabernet-sauvignon',131,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(266,'casillero-diablo-cabernet-sauvignon',132,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(267,'aptamil-follow-on-baby-milk',133,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(268,'aptamil-follow-on-baby-milk',134,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(269,'aptamil-follow-on-baby-milk',135,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(270,'corn-yellow-sweet',136,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(271,'corn-yellow-sweet',137,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(272,'hobnobs-the-nobbly-biscuit',138,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(273,'hobnobs-the-nobbly-biscuit',139,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(274,'hobnobs-the-nobbly-biscuit',140,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(275,'hobnobs-the-nobbly-biscuit',141,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(276,'ice-becks-beer-350ml-x-24-pieces-digital',142,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(277,'ice-becks-beer-350ml-x-24-pieces-digital',143,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(278,'iceland-6-hot-cross-buns',144,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(279,'iceland-6-hot-cross-buns',145,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(280,'iceland-6-hot-cross-buns',146,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(281,'iceland-6-hot-cross-buns',147,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(282,'iceland-6-hot-cross-buns',148,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(283,'iceland-soft-scoop-vanilla',149,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(284,'kit-kat-chunky-milk-chocolate',150,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(285,'kit-kat-chunky-milk-chocolate',151,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(286,'kit-kat-chunky-milk-chocolate',152,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(287,'large-green-bell-pepper',153,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(288,'large-green-bell-pepper',154,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10'),(289,'pice-94w-beasley-journal-digital',155,'Botble\\Ecommerce\\Models\\Product','products','2025-06-10 07:58:10','2025-06-10 07:58:10');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_logins`
--

DROP TABLE IF EXISTS `social_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_logins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `refresh_token` text COLLATE utf8mb4_unicode_ci,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_logins`
--

LOCK TABLES `social_logins` WRITE;
/*!40000 ALTER TABLE `social_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-06-10 07:58:02','2025-06-10 07:58:02'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-06-10 07:58:02','2025-06-10 07:58:02'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-06-10 07:58:02','2025-06-10 07:58:02'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-06-10 07:58:02','2025-06-10 07:58:02'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-06-10 07:58:02','2025-06-10 07:58:02');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'hlang@frami.com',NULL,'$2y$12$c9T.Y4ApWzSHr7P5/UIuhuXUFb526aM/LXrMXBOzD/EY8vIi5chE.',NULL,'2025-06-10 07:57:09','2025-06-10 07:57:09','Shawna','Stracke','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','farmart',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Farmart \\u2013 Your Online Foods & Grocery\",\"about\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed finibus viverra iaculis. Etiam vulputate et justo eget scelerisque.\",\"phone\":\"(+965) 7492-4277\",\"address\":\"959 Homestead Street Eastlake, NYC\",\"email\":\"support@farmart.com\",\"working_time\":\"Mon - Fri: 07AM - 06PM\"}','2025-06-10 07:58:09','2025-06-10 07:58:09'),(2,'CustomMenuWidget','footer_sidebar','farmart',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Useful Links\",\"menu_id\":\"useful-links\"}','2025-06-10 07:58:09','2025-06-10 07:58:09'),(3,'CustomMenuWidget','footer_sidebar','farmart',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Help Center\",\"menu_id\":\"help-center\"}','2025-06-10 07:58:09','2025-06-10 07:58:09'),(4,'CustomMenuWidget','footer_sidebar','farmart',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2025-06-10 07:58:09','2025-06-10 07:58:09'),(5,'NewsletterWidget','footer_sidebar','farmart',4,'{\"id\":\"NewsletterWidget\",\"title\":\"Newsletter\",\"subtitle\":\"Register now to get updates on promotions and coupon. Don\\u2019t worry! We not spam\"}','2025-06-10 07:58:09','2025-06-10 07:58:09'),(6,'BlogSearchWidget','primary_sidebar','farmart',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2025-06-10 07:58:09','2025-06-10 07:58:09'),(7,'BlogCategoriesWidget','primary_sidebar','farmart',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2025-06-10 07:58:09','2025-06-10 07:58:09'),(8,'RecentPostsWidget','primary_sidebar','farmart',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2025-06-10 07:58:09','2025-06-10 07:58:09'),(9,'BlogTagsWidget','primary_sidebar','farmart',4,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\"}','2025-06-10 07:58:09','2025-06-10 07:58:09'),(10,'SiteFeaturesWidget','pre_footer_sidebar','farmart',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-rocket.png\",\"title\":\"Free Shipping\",\"subtitle\":\"For all orders over $200\"},\"2\":{\"icon\":\"general\\/icon-reload.png\",\"title\":\"1 & 1 Returns\",\"subtitle\":\"Cancellation after 1 day\"},\"3\":{\"icon\":\"general\\/icon-protect.png\",\"title\":\"100% Secure Payment\",\"subtitle\":\"Guarantee secure payments\"},\"4\":{\"icon\":\"general\\/icon-support.png\",\"title\":\"24\\/7 Dedicated Support\",\"subtitle\":\"Anywhere & anytime\"},\"5\":{\"icon\":\"general\\/icon-tag.png\",\"title\":\"Daily Offers\",\"subtitle\":\"Discount up to 70% OFF\"}}}','2025-06-10 07:58:09','2025-06-10 07:58:09'),(11,'AdsWidget','products_list_sidebar','farmart',1,'{\"id\":\"AdsWidget\",\"title\":\"Ads\",\"ads_key\":\"ZDOZUZZIU7FZ\",\"background\":\"general\\/background.jpg\",\"size\":\"full-width\"}','2025-06-10 07:58:09','2025-06-10 07:58:09'),(12,'SiteFeaturesWidget','product_detail_sidebar','farmart',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-rocket.png\",\"title\":\"Free Shipping\",\"subtitle\":\"For all orders over $200\"},\"2\":{\"icon\":\"general\\/icon-reload.png\",\"title\":\"1 & 1 Returns\",\"subtitle\":\"Cancellation after 1 day\"},\"3\":{\"icon\":\"general\\/icon-protect.png\",\"title\":\"Secure Payment\",\"subtitle\":\"Guarantee secure payments\"}}}','2025-06-10 07:58:09','2025-06-10 07:58:09'),(13,'SiteInfoWidget','product_detail_sidebar','farmart',2,'{\"id\":\"SiteInfoWidget\",\"name\":\"Store information\",\"phone\":\"(+965) 7492-4277\",\"working_time\":\"Mon - Fri: 07AM - 06PM\"}','2025-06-10 07:58:09','2025-06-10 07:58:09'),(14,'BecomeVendorWidget','product_detail_sidebar','farmart',3,'{\"id\":\"BecomeVendorWidget\",\"name\":\"Become a Vendor?\"}','2025-06-10 07:58:09','2025-06-10 07:58:09'),(15,'ProductCategoriesWidget','bottom_footer_sidebar','farmart',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2025-06-10 07:58:09','2025-06-10 07:58:09'),(16,'ProductCategoriesWidget','bottom_footer_sidebar','farmart',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2025-06-10 07:58:09','2025-06-10 07:58:09'),(17,'ProductCategoriesWidget','bottom_footer_sidebar','farmart',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2025-06-10 07:58:09','2025-06-10 07:58:09'),(18,'ProductCategoriesWidget','bottom_footer_sidebar','farmart',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2025-06-10 07:58:09','2025-06-10 07:58:09'),(19,'ProductCategoriesWidget','bottom_footer_sidebar','farmart',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2025-06-10 07:58:09','2025-06-10 07:58:09');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-10 21:58:15
