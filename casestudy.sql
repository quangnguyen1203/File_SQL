-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: casestudy
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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(45) NOT NULL,
  `isSell` int NOT NULL DEFAULT '0',
  `isAdmin` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'admin','admin','admin@gmail.com',1,1),(2,'quang','123','quang@gmail.com',1,0),(3,'khánh','123','khanh@gmail.com',1,0),(4,'nam','123','nam@gmail.com',1,0),(5,'long','123','long@gmail.com',0,0),(9,'chuong','123','chuong@gmail.com',0,0),(10,'binh','123','binh@gmail.com',1,1);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_name` varchar(250) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Adidas'),(2,'Nike'),(3,'Converse'),(4,'Gucci'),(5,'Louis Vuitton'),(6,'Puma'),(7,'Clothing');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `price` double NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `cat_id` int NOT NULL,
  `sell_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`),
  KEY `sell_id` (`sell_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`c_id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`sell_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'LV Louis Vuitton VIP90','https://louiskimmi.vn/wp-content/uploads/2020/04/tui-nu-LV-ch%C3%ADnh-hieu.jpg',500,'Túi xách nữ','Chất lượng sản phẩm như hình ảnh mô tả trên website.',5,1),(3,'Gucci 1955 Horsebit','https://louiskimmi.vn/wp-content/uploads/2020/04/tui-nu-LV-ch%C3%ADnh-hieu.jpg',400,'Outer: Canvas 100%, Leather 100%','Gucci recreates an archival design that dates back to 1955, merging original House codes of beige monogram canvas and also draws attention to their equestrian roots with the Horsebit detail to the front of the flap closure on the bag. Adjust the strap to wear on the shoulder or across the body, Gucci would never leave you without options, Featuring an adjustable shoulder strap, a monogram pattern, a front flap closure, a horsebit detail, interior compartments divided by a partition and an internal zipped pocket.',4,1),(4,'Nike Air Force 1 Para Noise','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqa23XnbetasW6oWM56Nv8u9pqO6Nnnw4t3g&usqp=CAU',200,'Air Force 1 “G-Dragon Peaceminusone Para-Noise” ','Supplied by a premier sneaker marketplace dealing with unworn, already sold out, in demand rarities. Each product is rigorously inspected by experienced experts guaranteeing authenticity. The G-Dragon x Nike Air Force 1 Low \"Para-Noise\" is the Korean pop star’s interpretation of one of his favorite childhood shoes. The international superstar fondly recalls memories of wearing oversized clothes, hats and matching Air Force 1s once upon a time, and that sentiment serves as the inspiration behind this limited collaboration. Using premium black leather as a base for the upper, Dragon opts for a simple white leather Swoosh on the mid-panel with contrasting white laces and a cheery flower motif on the tongue. When worn away, the black leather reveals the artist’s artwork underneath the leather construction.',2,1),(6,'ULTRABOOST 20','https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/73a74629da924dd0b185aaea00ddd47e_9366/Giay_UltraBoost_20_Xam_EG0715_01_standard.jpg',220,'HIGH PERFORMANCE RUNNING','Confidence from the ground up. This adidas running shoe is designed to keep you up to speed on your everyday running miles. Knitted upper for support from the inner seams based on motion capture technology. Soft, comfortable elastane heel allows natural heel movement. Elastic cushioning for smooth movement and fluid energy.',1,2),(8,'Nike Pegasus Trail 3','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/0bc465c9-6813-46cf-899c-f08f946010d0/pegasus-trail-3-trail-running-shoe-zzBdpt.png',343,'RUGGED AND RESPONSIVE.','Find your wings with an off-road run.The Nike Pegasus Trail 3 has the same cushioned comfort you love, with a design that nods to the classic Pegasus look.It\'s got tough traction to help you stay moving through rocky terrain.More support around the midfoot helps you feel secure on your journey.\r\n\r\n',2,2),(9,'Nike Blazer Mid \'77','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/50a52504-af25-4f2c-b97d-dcf4def22103/blazer-mid-77-shoe-2PCxLw.png',100,'Nike Blazer Mid \'77','Nike Blazer Mid \'77',2,1),(13,'LVXNBA ZIP-THROUGH HOODIE','https://us.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-lvxnba-zip-through-hoodie-ready-to-wear--HLA01WUZD650_PM2_Front%20view.png?wid=656&hei=656',2880,'100% Cotton','This relaxed hoodie channels the season\'s NBA theme in an array of embroidered patches, with cream topstitching. It is tailored in a slightly loose fit, from a cotton jacquard Monogram base that has been specially washed to create a vintage effect. Details include a gold zip, adjustable hood, kangaroo pockets and an elasticated waist and cuffs.',5,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-03 18:15:58
