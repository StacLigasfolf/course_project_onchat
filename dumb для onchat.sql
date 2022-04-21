-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_22
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-cll-lve

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
-- Table structure for table `chat_types`
--

DROP TABLE IF EXISTS `chat_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interest_id` bigint(20) unsigned NOT NULL,
  `criterion_id` bigint(20) unsigned NOT NULL,
  `admin_user_id` bigint(20) unsigned NOT NULL,
  `create_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `chats_name_idx` (`name`),
  KEY `interest_id` (`interest_id`),
  KEY `criterion_id` (`criterion_id`),
  CONSTRAINT `chat_types_ibfk_1` FOREIGN KEY (`interest_id`) REFERENCES `chats` (`id`),
  CONSTRAINT `chat_types_ibfk_2` FOREIGN KEY (`criterion_id`) REFERENCES `chats` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_types`
--

LOCK TABLES `chat_types` WRITE;
/*!40000 ALTER TABLE `chat_types` DISABLE KEYS */;
INSERT INTO `chat_types` VALUES (1,'cupiditate',1,1,1,'2006-12-17 11:45:13'),(2,'accusamus',2,2,2,'1998-06-01 01:32:01'),(3,'eos',3,3,3,'1990-12-29 09:45:03'),(4,'est',4,4,4,'1970-04-12 14:51:47'),(5,'quia',5,5,5,'2005-05-19 09:23:26'),(6,'soluta',6,6,6,'1982-09-08 14:27:37'),(7,'qui',7,7,7,'2015-03-04 15:49:23'),(8,'in',8,8,8,'1984-07-06 09:33:58'),(9,'corrupti',9,9,9,'1992-09-07 01:26:55'),(10,'aperiam',10,10,10,'1975-09-09 02:21:54'),(11,'dolores',11,11,11,'1973-08-27 22:18:03'),(12,'deleniti',12,12,12,'2006-12-14 01:07:42'),(13,'exercitationem',13,13,13,'1997-03-05 18:02:46'),(14,'officiis',14,14,14,'1980-12-01 03:45:01'),(15,'dolor',15,15,15,'1995-12-21 03:12:00'),(16,'est',1,1,1,'2012-02-29 10:52:29'),(17,'ipsam',2,2,2,'1980-07-17 15:49:39'),(18,'sit',3,3,3,'1994-10-10 04:17:45'),(19,'voluptatum',4,4,4,'1976-09-27 21:55:11'),(20,'eius',5,5,5,'1996-07-11 13:52:20');
/*!40000 ALTER TABLE `chat_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chats` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interest` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `criterion` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_user_id` bigint(20) unsigned NOT NULL,
  `create_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `chats_name_idx` (`name`),
  KEY `admin_user_id` (`admin_user_id`),
  CONSTRAINT `chats_ibfk_1` FOREIGN KEY (`admin_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
INSERT INTO `chats` VALUES (1,'possimus','maxime','facilis',1,'1991-01-03 10:46:39'),(2,'sunt','et','aliquid',2,'2011-11-13 03:17:28'),(3,'facilis','voluptate','qui',3,'2014-04-30 14:26:24'),(4,'debitis','in','possimus',4,'1992-08-19 13:25:41'),(5,'aut','veritatis','ad',5,'1979-11-15 06:12:07'),(6,'doloremque','quod','dignissimos',6,'2013-08-30 14:41:14'),(7,'ut','maxime','accusamus',7,'1995-12-27 13:03:17'),(8,'dolorem','eos','quis',8,'1987-07-11 11:09:55'),(9,'quasi','minima','voluptatibus',9,'1998-07-14 00:31:56'),(10,'minima','doloremque','nostrum',10,'2012-06-08 06:20:02'),(11,'et','voluptates','explicabo',11,'1972-06-10 04:04:31'),(12,'rerum','expedita','qui',12,'1979-05-26 08:31:55'),(13,'autem','earum','et',13,'1986-07-05 12:10:03'),(14,'aperiam','quasi','ipsum',14,'1976-03-25 16:56:24'),(15,'quis','necessitatibus','et',15,'2006-03-02 05:45:42');
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frends`
--

DROP TABLE IF EXISTS `frends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frends` (
  `initiator_user_id` bigint(20) unsigned NOT NULL,
  `target_user_id` bigint(20) unsigned NOT NULL,
  `status` enum('requested','approved','declined','unfriended') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `criterion` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interest` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`initiator_user_id`,`target_user_id`),
  KEY `target_user_id` (`target_user_id`),
  CONSTRAINT `frends_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `frends_ibfk_2` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`initiator_user_id` <> `target_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frends`
--

LOCK TABLES `frends` WRITE;
/*!40000 ALTER TABLE `frends` DISABLE KEYS */;
/*!40000 ALTER TABLE `frends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_user`
--

DROP TABLE IF EXISTS `info_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `interest_id` bigint(20) unsigned NOT NULL,
  `criterion_id` bigint(20) unsigned NOT NULL,
  `create_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `interest_id` (`interest_id`),
  KEY `criterion_id` (`criterion_id`),
  CONSTRAINT `info_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `info_user_ibfk_2` FOREIGN KEY (`interest_id`) REFERENCES `users` (`id`),
  CONSTRAINT `info_user_ibfk_3` FOREIGN KEY (`criterion_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_user`
--

LOCK TABLES `info_user` WRITE;
/*!40000 ALTER TABLE `info_user` DISABLE KEYS */;
INSERT INTO `info_user` VALUES (1,1,1,1,'2013-06-18 04:43:54'),(2,2,2,2,'2016-07-10 07:40:46'),(3,3,3,3,'2001-09-23 23:22:48'),(4,4,4,4,'1973-09-26 14:46:32'),(5,5,5,5,'2018-11-29 18:25:56'),(6,6,6,6,'1993-09-28 19:40:49'),(7,7,7,7,'1986-04-23 04:04:43'),(8,8,8,8,'2008-02-17 00:56:18'),(9,9,9,9,'2018-06-28 01:00:00'),(10,10,10,10,'1976-03-20 07:31:25'),(11,11,11,11,'2003-03-16 03:56:41'),(12,12,12,12,'2011-10-27 22:57:31'),(13,13,13,13,'2005-04-24 14:30:47'),(14,14,14,14,'2000-10-23 21:22:52'),(15,15,15,15,'1984-07-26 09:42:13');
/*!40000 ALTER TABLE `info_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,1,1,'1981-08-16 09:53:18'),(2,2,2,'2020-03-22 05:15:21'),(3,3,3,'1996-09-27 06:06:40'),(4,4,4,'1975-06-30 12:51:43'),(5,5,5,'1971-12-06 20:46:24'),(6,6,6,'1971-10-17 00:58:36'),(7,7,7,'1999-04-03 18:32:47'),(8,8,8,'2009-08-21 19:26:30'),(9,9,9,'1977-11-05 10:08:20'),(10,10,10,'1971-06-06 03:29:04'),(11,11,11,'2017-12-25 07:51:40'),(12,12,12,'1981-08-27 06:23:56'),(13,13,13,'1981-02-05 14:24:08'),(14,14,14,'2018-08-24 17:18:26'),(15,15,15,'2000-01-24 14:52:13');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,1,'Pariatur possimus dignissimos quibusdam qui quia sed dolores et. Quia cumque dignissimos sed dignissimos. Est cum voluptatem magnam aliquid aliquid enim rerum. Et laboriosam nesciunt voluptatum minus vel sint.','nisi',0,NULL,'2000-02-01 01:58:33','1991-01-25 23:49:45'),(2,2,2,'Itaque iure recusandae voluptate ea quidem voluptas et. Accusamus labore ex autem ut maxime est consequatur et. Et et placeat rerum neque.','eum',592,NULL,'1993-02-17 21:04:13','1977-01-28 16:25:04'),(3,3,3,'Atque ut voluptatum iusto. Consequatur totam deleniti voluptatem quia. Rerum consectetur sunt omnis quo sit iste unde incidunt. Cupiditate molestiae optio blanditiis ipsa placeat aut odio.','dolore',13117034,NULL,'1982-04-26 12:38:59','2005-02-18 06:41:46'),(4,4,4,'Eveniet quo aut eos asperiores nulla. Doloribus enim culpa minus earum. Nulla corporis nisi blanditiis aut. Voluptatem ut et porro saepe consectetur quas.','molestiae',82291,NULL,'1973-08-03 13:52:41','1990-04-27 03:51:13'),(5,5,5,'Praesentium velit dolor quia ut possimus rerum veritatis. Aliquid sint tempore dignissimos impedit voluptatem molestiae porro. Voluptates odit itaque eaque voluptatum provident neque quo. Sint dolorem hic voluptatem cupiditate repudiandae.','optio',2657490,NULL,'1982-11-15 05:37:06','2004-04-25 05:23:09'),(6,6,6,'Est eos et nemo accusamus nemo exercitationem est vel. Nam facere dolorem placeat quia fuga molestiae necessitatibus. Esse harum rerum praesentium ut dolorum. Doloremque laboriosam placeat ut qui.','ipsum',823,NULL,'1997-04-05 03:46:43','1994-12-01 07:00:03'),(7,7,7,'Corporis eos quam commodi voluptatum molestiae qui. Enim debitis optio laborum. Hic maxime odit vero non modi rerum aut. Fugit est quam veniam voluptas dolor suscipit. Repellat inventore omnis iste dolorem ea eius.','illo',872074444,NULL,'1990-06-17 15:38:14','1998-06-24 02:37:21'),(8,8,8,'Omnis corrupti at vel consequatur accusantium. Totam sed non sit sed. At eos voluptate et aut.','et',0,NULL,'1992-01-27 21:31:36','1999-01-22 16:01:55'),(9,9,9,'Rerum repudiandae corrupti eum consectetur et debitis. Iure ut sequi adipisci dicta libero. Quia laborum iusto animi sit.','dicta',76,NULL,'2007-11-06 02:27:08','2016-11-21 06:42:09'),(10,10,10,'Voluptas et voluptatem voluptas eos quas eos ducimus. Iure voluptas quas et dolores nihil dolore. Minus ut cum saepe ea cupiditate provident modi. Mollitia eligendi numquam ut tempore.','sed',640,NULL,'2014-05-10 09:04:12','2021-01-14 16:45:01'),(11,11,11,'Enim tenetur voluptas assumenda ut facere. Laudantium sunt et cum enim perferendis omnis. Aut eveniet dicta est quaerat. Et non quas atque.','voluptas',772733108,NULL,'1987-08-16 19:47:26','1992-02-12 13:38:39'),(12,12,12,'Sint doloremque non magnam in iste ipsa commodi. Veritatis autem repellat deserunt in consequatur.','pariatur',85,NULL,'1993-08-31 11:48:06','2014-05-06 12:56:17'),(13,13,13,'Corrupti vero quos illo tenetur consequatur vero. Neque error qui et tenetur aliquam occaecati placeat odio. Aut est ipsa rerum maiores molestiae.','ab',77,NULL,'2019-03-19 14:34:18','1998-07-17 08:27:55'),(14,14,14,'Atque autem enim sint corrupti sit a officiis blanditiis. Numquam illo quia quia sequi totam quo. Omnis cum architecto molestias laboriosam.','et',0,NULL,'1987-09-04 00:06:52','2009-05-30 16:54:12'),(15,15,15,'Sequi voluptas id sed pariatur deleniti assumenda explicabo. Laborum id vero voluptatibus est ut maiores. Quas earum similique sequi. Aut ducimus velit et perspiciatis hic molestiae et.','voluptatum',861896,NULL,'2001-01-01 21:37:26','2019-09-30 14:50:41');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `namme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'consectetur','2018-08-08 15:42:52','2006-02-21 13:06:22'),(2,'velit','1971-04-01 05:38:31','1989-10-27 23:50:52'),(3,'ipsam','2010-02-27 09:24:03','2016-04-18 10:33:32'),(4,'non','2014-01-12 01:42:17','1998-05-14 16:57:17'),(5,'iste','2003-11-27 11:17:52','1984-12-13 07:48:31'),(6,'molestias','1979-04-17 13:13:42','1974-07-22 17:09:19'),(7,'accusantium','2019-08-19 03:31:06','1975-03-21 23:19:41'),(8,'sint','2013-08-25 05:41:03','2021-02-01 02:50:29'),(9,'et','2003-04-15 10:06:36','1972-09-06 15:55:26'),(10,'qui','1984-07-02 22:11:14','2020-06-27 20:41:57'),(11,'pariatur','1985-08-26 07:56:07','1990-12-31 05:35:29'),(12,'architecto','2008-12-17 07:23:05','1995-10-14 21:41:05'),(13,'repellendus','1999-07-03 06:53:27','1989-04-15 17:41:59'),(14,'reprehenderit','2010-07-11 06:32:33','2001-06-10 05:43:54'),(15,'ut','1994-10-29 14:54:58','2008-10-10 22:56:12');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_chat_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_chat_id` (`to_chat_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_chat_id`) REFERENCES `chats` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,1,1,'deserunt','2004-07-24 15:15:49'),(2,2,2,'sunt','1989-03-09 18:46:29'),(3,3,3,'et','1973-03-29 23:24:39'),(4,4,4,'sint','1977-07-10 02:32:04'),(5,5,5,'accusamus','1985-03-04 02:44:17'),(6,6,6,'officia','2001-05-04 22:28:15'),(7,7,7,'est','1979-10-01 17:55:01'),(8,8,8,'recusandae','2019-02-11 11:12:34'),(9,9,9,'dolor','1973-05-24 08:24:28'),(10,10,10,'quisquam','1986-09-22 18:07:21'),(11,11,11,'ducimus','1972-01-18 17:14:52'),(12,12,12,'et','2007-06-13 14:12:19'),(13,13,13,'vel','1970-02-15 17:34:19'),(14,14,14,'omnis','1999-09-27 06:16:18'),(15,15,15,'alias','2012-12-20 13:03:21');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,1,1),(17,2,2),(18,3,3),(19,4,4),(20,5,5);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interest` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` bigint(20) unsigned DEFAULT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) unsigned DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `user_name_interest_idx` (`name`,`interest`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'voluptas','nam',746871363,'aimee94@example.org',89510687082,'6bb51a3ca866bab2a08d926e6f3b2a3f9acabee8'),(2,'dicta','corporis',433,'ethel32@example.com',89742802055,'939c471c073be79fca53b3fe64b8ac341112ae05'),(3,'ut','natus',41879998,'noe.klein@example.net',89103553243,'090f20c6e390ee7ff162060f6fe9334264973b29'),(4,'voluptate','quia',26864,'hgleichner@example.com',89222180279,'91a9948c3f622b9f6990669068776b720c89b6b6'),(5,'odit','voluptatem',169,'morissette.tatyana@example.org',89108772138,'a8658705ed7c7f919719cfe795f3b5fd45bbceb1'),(6,'tempora','voluptates',242,'ariel.raynor@example.net',89546260746,'419d3c8b54215e3ab0f2e72f65ad846963aa71f3'),(7,'consequuntur','quod',71875670,'tmraz@example.net',89722262533,'99d028ae8ce454710f8edeb4201780ab35744077'),(8,'voluptas','consequatur',71,'demond93@example.com',89369235667,'405ee5c59298af0c64c765b0c070c911b6fcf22c'),(9,'blanditiis','tenetur',631,'breitenberg.hubert@example.net',89480378224,'349e3d9945e287efb28078f85118a174b2d385ad'),(10,'nihil','nobis',99477993,'fsimonis@example.net',89223147843,'659ef7fb79b5fb8bd68c2aec60c201350086f255'),(11,'quaerat','voluptatum',3860,'schiller.juston@example.net',89797811775,'2f86c0fadbf2e6bd88e02b714451e66cd81c291f'),(12,'nisi','id',3585819,'ubaldo.lind@example.org',89396061243,'f656ebb0ad1838bc9e391d098576d3ce2a786490'),(13,'sed','labore',12,'bertrand.schmeler@example.net',89588927866,'36f5ae41e39771cd5ceaade61ee5de3b37f168bd'),(14,'magnam','laudantium',2753,'effie72@example.net',89558358130,'363930d4aee3444da7862296788187a5717e9453'),(15,'veniam','tempore',7969325,'schinner.kathryn@example.org',89128831441,'952c8468fbae6ec289ece79155edc279db36b1d1');
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

-- Dump completed on 2022-04-20 13:18:02
