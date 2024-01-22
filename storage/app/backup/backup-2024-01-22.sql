-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: laravel
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cars_category_id_foreign` (`category_id`),
  CONSTRAINT `cars_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Wisozk, Cole and Casper','Natus aut repellendus tempore fuga veritatis.',1,'a8df007d9ad4b62118ea2bdbd9333719.png',10,NULL,'2024-01-21 00:07:10','2024-01-21 00:07:10'),(2,'Beahan LLC','Possimus voluptas eveniet nihil voluptatem facilis doloremque.',0,'9b9178d50300cb9d01563366827360cc.png',10,NULL,'2024-01-21 00:07:10','2024-01-21 00:07:10'),(3,'Nicolas Group','Exercitationem est ut repellendus illo sit ea.',0,'9d31e4d32fdd6decabaeebc508ca9d18.png',10,NULL,'2024-01-21 00:07:10','2024-01-21 00:07:10'),(4,'Stracke, Schinner and O\'Conner','Corrupti blanditiis ea natus tenetur quis pariatur velit.',0,'91ec5e745926bb7e000ff37950fa0a9f.png',5,NULL,'2024-01-21 00:07:10','2024-01-21 00:07:10'),(5,'Lakin Group','Blanditiis omnis praesentium exercitationem excepturi.',0,'f130c2c501090bb1b52d1367f78350a5.png',4,NULL,'2024-01-21 00:07:10','2024-01-21 00:07:10'),(6,'Haag, Barrows and Bins','Possimus sed veritatis neque omnis voluptatum.',1,'a4093ee56ed618d05c96a98bdebf200f.png',1,NULL,'2024-01-21 00:07:10','2024-01-21 00:07:10'),(7,'Reichert Ltd','Totam qui vel id est facilis delectus iste.',0,'9621dba8a1056b6cd6713dad9f9ffe3f.png',3,NULL,'2024-01-21 00:07:10','2024-01-21 00:07:10'),(8,'Kunze Inc','Aut et incidunt hic fugit enim et dolores.',1,'d4655be83d35a20c3bf08106a801ff81.png',5,NULL,'2024-01-21 00:07:10','2024-01-21 00:07:10'),(9,'Ernser-Klocko','Est est in et non nihil non error.',1,'fab7164404bb38939115249b1b1c9100.png',7,NULL,'2024-01-21 00:07:10','2024-01-21 00:07:10'),(10,'Kshlerin-Carter','Molestiae molestiae vero cumque nostrum.',1,'e708d2823a303512befa9b43c92e25e6.png',8,NULL,'2024-01-21 00:07:10','2024-01-21 00:07:10'),(11,'Hoeger-Barrows','Occaecati quae enim deserunt sed voluptatem.',0,'c218b8e4b5542439a4bb4af3d777cd2a.png',1,NULL,'2024-01-21 00:07:11','2024-01-21 00:07:11'),(12,'Bode Group','Natus quos dolores doloribus maiores doloremque accusantium est.',0,'594dbde9435b271e3e18d2c840e40156.png',6,NULL,'2024-01-21 00:07:11','2024-01-21 00:07:11'),(13,'Greenholt, Hoppe and McGlynn','Illo quia officiis fugit explicabo aut in.',1,'b7ff6145d88037d6538780d0f9000439.png',7,NULL,'2024-01-21 00:07:11','2024-01-21 00:07:11'),(14,'Pacocha Group','Mollitia dolor dolorem tempora ab et maxime.',1,'cd34a76efd7fbbe5a1e96a5b4bff8230.png',3,NULL,'2024-01-21 00:07:11','2024-01-21 00:07:11'),(15,'O\'Hara, Waters and Bartoletti','Sequi ipsa reiciendis libero sequi eius magni delectus.',1,'d32312ccc36e96776ccd2be5014d7507.png',4,NULL,'2024-01-21 00:07:11','2024-01-21 00:07:11'),(16,'Weissnat and Sons','Est doloremque aut voluptatem dolores cupiditate.',1,'7733e49d58ea0e407f3ba2afc7712887.png',4,NULL,'2024-01-21 00:07:11','2024-01-21 00:07:11'),(17,'Bergstrom, Turner and Walker','Deleniti ea nihil fugiat sit.',1,'affbc791ac07bf7cbed076debfcac135.png',9,NULL,'2024-01-21 00:07:11','2024-01-21 00:07:11'),(18,'Sanford PLC','Dicta ipsa facilis nisi ullam.',0,'25d9939aabfbaec1a656ebfc19722159.png',5,NULL,'2024-01-21 00:07:11','2024-01-21 00:07:11'),(19,'Ziemann LLC','Quo id qui temporibus qui distinctio repellendus.',0,'92edd3382e55dbe0db69eea9c7f824c5.png',5,NULL,'2024-01-21 00:07:11','2024-01-21 00:07:11'),(20,'Reichel Ltd','Neque et ut in.',0,'bec735238ac2115c1bca55ee546980e2.png',7,NULL,'2024-01-21 00:07:11','2024-01-21 00:07:11');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ryan Inc','2024-01-21 00:06:39','2024-01-21 00:06:39'),(2,'Bins, Roob and Oberbrunner','2024-01-21 00:06:39','2024-01-21 00:06:39'),(3,'Wisoky, Rosenbaum and Ziemann','2024-01-21 00:06:39','2024-01-21 00:06:39'),(4,'Stehr LLC','2024-01-21 00:06:39','2024-01-21 00:06:39'),(5,'Jacobson-Reynolds','2024-01-21 00:06:39','2024-01-21 00:06:39'),(6,'Bergnaum, Ziemann and Bednar','2024-01-21 00:06:39','2024-01-21 00:06:39'),(7,'Hartmann, Nader and Erdman','2024-01-21 00:06:39','2024-01-21 00:06:39'),(8,'Monahan, Mitchell and Pfannerstill','2024-01-21 00:06:40','2024-01-21 00:06:40'),(9,'Breitenberg Group','2024-01-21 00:06:40','2024-01-21 00:06:40'),(10,'Prohaska-Gibson','2024-01-21 00:06:40','2024-01-21 00:06:40');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_12_1_191425_create_categories_table',1),(7,'2023_12_09_080232_create_cars_table',1),(8,'2023_12_11_132512_create_posts_table',1),(9,'2024_01_13_170821_create_contacts_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
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
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `postTitle` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `author` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `expired` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Prof. Jaime Schneider','frunolfsson@example.com','2024-01-21 00:06:38','$2y$12$TuMQNXMuzEwToeSRe8rMF.9IzpjZLWO/KcF8aedTO3kFFAYPjxB1u',0,'TbK1ZxXeoi','2024-01-21 00:06:38','2024-01-21 00:43:42'),(2,'Dr. Kristofer Morissette IV','halvorson.alana@example.com','2024-01-21 00:06:38','$2y$12$TuMQNXMuzEwToeSRe8rMF.9IzpjZLWO/KcF8aedTO3kFFAYPjxB1u',0,'CFJPMVMLz7','2024-01-21 00:06:39','2024-01-21 00:43:42'),(3,'Dr. Demarcus Terry','jerrell.schultz@example.com','2024-01-21 00:06:38','$2y$12$TuMQNXMuzEwToeSRe8rMF.9IzpjZLWO/KcF8aedTO3kFFAYPjxB1u',0,'Zrl4FxS2sL','2024-01-21 00:06:39','2024-01-21 00:43:42'),(4,'Dr. Hailie Wisoky','braxton.ferry@example.net','2024-01-21 00:06:38','$2y$12$TuMQNXMuzEwToeSRe8rMF.9IzpjZLWO/KcF8aedTO3kFFAYPjxB1u',0,'FUYRQRFpdA','2024-01-21 00:06:39','2024-01-21 00:43:43'),(5,'Timmothy Windler','richmond83@example.org','2024-01-21 00:06:38','$2y$12$TuMQNXMuzEwToeSRe8rMF.9IzpjZLWO/KcF8aedTO3kFFAYPjxB1u',0,'qsdJ9hKda3','2024-01-21 00:06:39','2024-01-21 00:43:43'),(6,'Prof. Coby Emard Sr.','karley.dibbert@example.net','2024-01-21 00:06:38','$2y$12$TuMQNXMuzEwToeSRe8rMF.9IzpjZLWO/KcF8aedTO3kFFAYPjxB1u',0,'84yzKiCpZU','2024-01-21 00:06:39','2024-01-21 00:43:43'),(7,'Dr. Jada Hickle','prohaska.cortez@example.com','2024-01-21 00:06:38','$2y$12$TuMQNXMuzEwToeSRe8rMF.9IzpjZLWO/KcF8aedTO3kFFAYPjxB1u',0,'qdUHr7ZVxU','2024-01-21 00:06:39','2024-01-21 00:43:43'),(8,'Zora Koss DVM','hyman93@example.com','2024-01-21 00:06:38','$2y$12$TuMQNXMuzEwToeSRe8rMF.9IzpjZLWO/KcF8aedTO3kFFAYPjxB1u',0,'Hlnk5gSQXN','2024-01-21 00:06:39','2024-01-21 00:43:43'),(9,'Mrs. Kaia Torphy','macey.jast@example.net','2024-01-21 00:06:38','$2y$12$TuMQNXMuzEwToeSRe8rMF.9IzpjZLWO/KcF8aedTO3kFFAYPjxB1u',0,'mVqjpjNRQP','2024-01-21 00:06:39','2024-01-21 00:43:43'),(10,'Mrs. Adelle Marquardt Sr.','marjolaine47@example.com','2024-01-21 00:06:38','$2y$12$TuMQNXMuzEwToeSRe8rMF.9IzpjZLWO/KcF8aedTO3kFFAYPjxB1u',0,'zfFkd85V8E','2024-01-21 00:06:39','2024-01-21 00:43:43');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-22 11:19:33
