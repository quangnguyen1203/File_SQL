-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: exercisespringdata
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `country_id` bigint NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'VN'),(2,'US'),(3,'UK');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_customers`
--

DROP TABLE IF EXISTS `countries_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_customers` (
  `Country_country_id` bigint NOT NULL,
  `customers_id` bigint NOT NULL,
  UNIQUE KEY `UK_14g06cxmbh3fg4u226q513w0i` (`customers_id`),
  KEY `FK5ft2u2yblqkvd2w1icnghy1rq` (`Country_country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_customers`
--

LOCK TABLES `countries_customers` WRITE;
/*!40000 ALTER TABLE `countries_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7b7p2myt0y31l4nyj1p7sk0b1` (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (15,'Eligendi fugiat dol','weric@mailinator.com','Vance Strong','+1 (517) 173-1264',3),(126,'Temporibus est volup','vitihy@mailinator.com','Kai Clark','+1 (194) 254-9036',2),(129,'Aute ad aut libero l','huzypero@mailinator.com','Simon Duncan','+1 (914) 981-7236',2),(130,'Mollit omnis officia','tylafyco@mailinator.com','Blair Rios','+1 (647) 115-7441',1),(131,'Possimus occaecat q','vyvygix@mailinator.com','Kareem Mayer','+1 (623) 639-4984',2),(132,'Ex aut Nam animi at','pewu@mailinator.com','Iliana Berger','+1 (306) 387-1303',3),(133,'Tempora molestiae il','zusyho@mailinator.com','Eugenia Pearson','+1 (202) 557-8911',1),(134,'Cum rerum qui aliqui','secef@mailinator.com','Ursa Wilcox','+1 (639) 879-9936',3),(135,'Enim ea maxime sint ','lavise@mailinator.com','MacKensie Hickman','+1 (285) 671-4272',2),(137,'Dolore minima quisqu','hexiza@mailinator.com','Karina Griffin','+1 (467) 203-5414',2),(140,'Do esse modi reprehe','lywahenece@mailinator.com','Kirby Hewitt','+1 (116) 598-5959',2),(141,'Et atque eum sint hi','novad@mailinator.com','Lewis Slater','+1 (899) 274-4779',3),(142,'Error sit minus sit','cybadusyz@mailinator.com','Shellie Nash','+1 (862) 148-6925',3),(143,'Quaerat accusamus in','fiqewuzyro@mailinator.com','Xavier Bowen','+1 (956) 304-4087',3),(144,'Quaerat accusamus in','fiqewuzyro@mailinator.com','Xavier Bowen','+1 (956) 304-4087',3),(145,'Corrupti saepe numq','qarypiqiv@mailinator.com','Rama Parrish','+1 (467) 371-9293',2),(146,'Sit omnis iusto ulla','tohono@mailinator.com','Jerome Brady','+1 (202) 935-6163',3),(148,'Sit est sed enim si','qetafozu@mailinator.com','Rahim Cote','+1 (357) 916-7439',2),(149,'Proident ad consequ','cyxan@mailinator.com','Steel Mcintyre','+1 (185) 344-1287',1),(150,'Quia pariatur Ullam','nomoli@mailinator.com','Vivian Marks','+1 (892) 632-3156',2),(151,'Et nulla ullamco pro','bywuho@mailinator.com','Amy Farley','+1 (129) 933-2099',2),(152,'Corrupti saepe numq','qarypiqiv@mailinator.com','Rama Parrishsdfsdfgdgf','+1 (467) 371-9293',2),(177,'Eius aut culpa aliqu','nalum@mailinator.com','Abbot Wong123','+1 (906) 391-3908',2),(178,'Ut deserunt omnis qu','gidiq@mailinator.com','Hillary Knox123','+1 (536) 401-7909',3),(179,'Sed libero dolor exp','lisafibety@mailinator.com','Dillon Boyd','+1 (371) 991-4177',2),(180,'Quia voluptatem Id ','jytyh@mailinator.com','Wendy Beard','+1 (438) 816-9391',2),(181,'A et proident ut qu','sotukefi@mailinator.com','Kelsie','+1 (354) 898-2395',3),(182,'Exercitation aliquip','biwakac@mailinator.com','Chaim Bryant','+1 (639) 299-2187',3),(185,'Eius voluptate ipsa','katykadubi@mailinator.com','Richard Bernard','+1 (895) 265-5083',3),(186,'Aut labore est autem','qewil@mailinator.com','Hedy Shepard','+1 (526) 286-9684',1),(187,'Dolorem labore rerum','quqotary@mailinator.com','Denton Riddle','+1 (821) 524-1897',1),(188,'Dolorem labore rerum','quqotary@mailinator.com','Denton Riddle','+1 (821) 524-1897',1),(189,'Error ut quis illo e','ziny@.com','Vivian Serrano','+1 (269) 774-2135',2),(190,'Optio incidunt vel','diqo@mailinator.com','Myles Clark','+1 (754) 402-5906',1),(191,'Quo distinctio Id t','zoqysek@mailinator.com','Naida Sargent','+1 (907) 541-4827',3),(192,'Sed do omnis et irur','jado@mailinator.com','Buffy Sanford','+1 (833) 258-7784',2),(193,'Ut ad sit iusto exc','solyf@mailinator.com','Amity Forbes','+1 (301) 333-4701',1);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-03 18:22:18
