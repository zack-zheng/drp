-- MySQL dump 10.13  Distrib 5.6.10, for Win64 (x86_64)
--
-- Host: localhost    Database: drp
-- ------------------------------------------------------
-- Server version	5.6.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cost_stock_in`
--

DROP TABLE IF EXISTS `cost_stock_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cost_stock_in` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `for_date` date DEFAULT NULL,
  `for_year_month` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` decimal(10,0) NOT NULL,
  `total` decimal(19,2) DEFAULT NULL,
  `unit_price` decimal(10,3) DEFAULT NULL,
  `invoice` bigint(20) DEFAULT NULL,
  `ware` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK91A413208B2E6707` (`invoice`),
  KEY `FK91A413202B3CF997` (`ware`),
  CONSTRAINT `FK91A413202B3CF997` FOREIGN KEY (`ware`) REFERENCES `wares` (`id`),
  CONSTRAINT `FK91A413208B2E6707` FOREIGN KEY (`invoice`) REFERENCES `invoice_stock_in` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost_stock_in`
--

LOCK TABLES `cost_stock_in` WRITE;
/*!40000 ALTER TABLE `cost_stock_in` DISABLE KEYS */;
INSERT INTO `cost_stock_in` VALUES (1,'admin','2015-03-19 12:40:22',NULL,'admin','2015-03-19 12:40:22','2015-03-06','2015-03',6,9816.00,1636.000,2,1),(2,'admin','2015-03-19 12:43:15',NULL,'admin','2015-03-19 12:43:15','2015-03-06','2015-03',50,81800.00,1636.000,2,2),(3,'admin','2015-03-19 12:49:58',NULL,'admin','2015-03-19 12:49:58','2015-03-06','2015-03',44,40524.00,921.000,4,3),(4,'admin','2015-03-19 12:55:27',NULL,'admin','2015-03-19 12:55:27','2015-03-10','2015-03',40,22000.00,550.000,5,4);
/*!40000 ALTER TABLE `cost_stock_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cost_stock_out`
--

DROP TABLE IF EXISTS `cost_stock_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cost_stock_out` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `for_date` date DEFAULT NULL,
  `for_year_month` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` decimal(10,0) NOT NULL,
  `total` decimal(19,2) DEFAULT NULL,
  `unit_price` decimal(10,3) DEFAULT NULL,
  `invoice` bigint(20) DEFAULT NULL,
  `ware` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA2DE68B3B164F3DA` (`invoice`),
  KEY `FKA2DE68B32B3CF997` (`ware`),
  CONSTRAINT `FKA2DE68B32B3CF997` FOREIGN KEY (`ware`) REFERENCES `wares` (`id`),
  CONSTRAINT `FKA2DE68B3B164F3DA` FOREIGN KEY (`invoice`) REFERENCES `invoice_stock_out` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost_stock_out`
--

LOCK TABLES `cost_stock_out` WRITE;
/*!40000 ALTER TABLE `cost_stock_out` DISABLE KEYS */;
INSERT INTO `cost_stock_out` VALUES (1,'admin','2015-03-19 13:00:41',NULL,NULL,'2015-03-19 13:00:41','2015-03-19','2015-03',20,12000.00,600.000,1,4);
/*!40000 ALTER TABLE `cost_stock_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventories_monthend`
--

DROP TABLE IF EXISTS `inventories_monthend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventories_monthend` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `for_year_month` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `last_month_left` decimal(10,0) NOT NULL,
  `month_in` decimal(10,0) NOT NULL,
  `month_left` decimal(10,0) NOT NULL,
  `month_out` decimal(10,0) NOT NULL,
  `ware` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2DED3E002B3CF997` (`ware`),
  CONSTRAINT `FK2DED3E002B3CF997` FOREIGN KEY (`ware`) REFERENCES `wares` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventories_monthend`
--

LOCK TABLES `inventories_monthend` WRITE;
/*!40000 ALTER TABLE `inventories_monthend` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventories_monthend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_stock_in`
--

DROP TABLE IF EXISTS `invoice_stock_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_stock_in` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `for_date` date DEFAULT NULL,
  `for_year_month` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `manager` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receive_man` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regulator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` decimal(15,2) NOT NULL,
  `ware_keeper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_stock_in`
--

LOCK TABLES `invoice_stock_in` WRITE;
/*!40000 ALTER TABLE `invoice_stock_in` DISABLE KEYS */;
INSERT INTO `invoice_stock_in` VALUES (1,'','2015-03-19 12:36:32',NULL,NULL,'2015-03-19 12:36:32','','2015-03-06','2015-03','王','新天地','',0.00,'文慧'),(2,'','2015-03-19 12:39:36',NULL,'admin','2015-03-19 12:43:23','','2015-03-06','2015-03','reedmi','新天地','',91616.00,'文慧'),(3,'admin','2015-03-19 12:47:40',NULL,NULL,'2015-03-19 12:47:40','','2015-03-06','2015-03','reedmi','丰农','',0.00,'文慧'),(4,'admin','2015-03-19 12:49:25',NULL,'admin','2015-03-19 12:50:11','','2015-03-06','2015-03','reedmi','丰农','',40524.00,'文慧'),(5,'admin','2015-03-19 12:54:49',NULL,'admin','2015-03-19 12:55:35','','2015-03-10','2015-03','reedmi','云南磷肥-','',22000.00,'文慧');
/*!40000 ALTER TABLE `invoice_stock_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_stock_out`
--

DROP TABLE IF EXISTS `invoice_stock_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_stock_out` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `for_date` date DEFAULT NULL,
  `for_year_month` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `manager` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receive_man` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regulator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` decimal(15,2) NOT NULL,
  `ware_keeper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receive_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receive_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_stock_out`
--

LOCK TABLES `invoice_stock_out` WRITE;
/*!40000 ALTER TABLE `invoice_stock_out` DISABLE KEYS */;
INSERT INTO `invoice_stock_out` VALUES (1,'admin','2015-03-19 12:59:34',NULL,'admin','2015-03-19 13:00:48','','2015-03-19','2015-03','reedmi','单兴吉','',12000.00,'文慧','','');
/*!40000 ALTER TABLE `invoice_stock_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traders`
--

DROP TABLE IF EXISTS `traders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_man` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traders`
--

LOCK TABLES `traders` WRITE;
/*!40000 ALTER TABLE `traders` DISABLE KEYS */;
/*!40000 ALTER TABLE `traders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'2015-03-18 11:25:34','ACTIVE',NULL,'2015-03-18 12:10:12','','admin','','MALE','admin','17a73b924892695ff91e16b35ce100b7c64928e43d5a170a','1324332345','MANAGER',NULL),(2,NULL,'2015-03-18 13:42:46','ACTIVE',NULL,'2015-03-18 13:42:46','','reedmi','','MALE','reedmi','518b8d80192e52b7134396b3ea517e09d6655cf4ff8d4a1d','13652508097','MANAGER',NULL),(3,NULL,'2015-03-18 17:26:15','ACTIVE',NULL,'2015-03-18 17:26:15','','12345','','MALE','jianlong','b10ba989311e40ec03647f52edde881e7242529277d9a5c1','12345','MANAGER',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_man` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1,'admin','2015-03-19 13:03:19',NULL,NULL,'2015-03-19 13:03:19','将台','新天地','万里','','13222243454'),(2,'admin','2015-03-19 13:49:45',NULL,NULL,'2015-03-19 13:49:45','啛啛喳喳','丰农','详细信息','','2124344445'),(3,'admin','2015-03-19 13:50:39',NULL,NULL,'2015-03-19 13:50:39','发达','云南','帝国饭店','辅导费','2232312');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ware_categories`
--

DROP TABLE IF EXISTS `ware_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ware_categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK279C891EB929D6E2` (`parent`),
  CONSTRAINT `FK279C891EB929D6E2` FOREIGN KEY (`parent`) REFERENCES `ware_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ware_categories`
--

LOCK TABLES `ware_categories` WRITE;
/*!40000 ALTER TABLE `ware_categories` DISABLE KEYS */;
INSERT INTO `ware_categories` VALUES (1,NULL,'2015-03-19 12:37:41',NULL,NULL,'2015-03-19 12:37:41','','新天地',NULL),(2,NULL,'2015-03-19 12:45:41',NULL,NULL,'2015-03-19 12:45:41','','丰农',NULL),(3,NULL,'2015-03-19 12:52:29',NULL,NULL,'2015-03-19 12:52:29','1111','云南磷肥',NULL),(4,NULL,'2015-03-19 13:10:50',NULL,NULL,'2015-03-19 13:10:50','','中石化niNSU',NULL);
/*!40000 ALTER TABLE `ware_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wares`
--

DROP TABLE IF EXISTS `wares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wares` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `produce_on` date DEFAULT NULL,
  `storage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` bigint(20) DEFAULT NULL,
  `vendor` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6BABD96F7818B36` (`category`),
  KEY `FK6BABD964CE86BED` (`vendor`),
  CONSTRAINT `FK6BABD964CE86BED` FOREIGN KEY (`vendor`) REFERENCES `vendors` (`id`),
  CONSTRAINT `FK6BABD96F7818B36` FOREIGN KEY (`category`) REFERENCES `ware_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wares`
--

LOCK TABLES `wares` WRITE;
/*!40000 ALTER TABLE `wares` DISABLE KEYS */;
INSERT INTO `wares` VALUES (1,'admin','2015-03-19 12:38:48',NULL,NULL,'2015-03-19 12:38:48','','50','玉米混合肥','','2015-03-06','','吨',1,NULL),(2,'admin','2015-03-19 12:41:53',NULL,NULL,'2015-03-19 12:41:53','','50','通用肥','','2015-03-19','','吨',1,NULL),(3,'admin','2015-03-19 12:46:39',NULL,NULL,'2015-03-19 12:46:39','','40','硫酸锌铵','','2015-03-19','','千克',2,NULL),(4,'admin','2015-03-19 12:53:33',NULL,'admin','2015-11-09 22:10:07','','40kg','颗粒磷肥','','2015-03-19','三年','吨',3,NULL);
/*!40000 ALTER TABLE `wares` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-14 11:42:01
