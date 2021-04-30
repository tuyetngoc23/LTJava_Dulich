-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: dulichyenngocdb
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `tinhthanh`
--

DROP TABLE IF EXISTS `tinhthanh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tinhthanh` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tinhthanh`
--

LOCK TABLES `tinhthanh` WRITE;
/*!40000 ALTER TABLE `tinhthanh` DISABLE KEYS */;
INSERT INTO `tinhthanh` VALUES (1,'An Giang'),(2,'Bà Rịa - Vũng Tàu'),(3,'Bắc Giang'),(4,'Bắc Kạn'),(5,'Bạc Liêu'),(6,'Bắc Ninh'),(7,'Bến Tre'),(8,'Bình Định'),(9,'Bình Dương'),(10,'Bình Phước'),(11,'Bình Thuận'),(12,'Cà Mau'),(13,'Cao Bằng'),(14,'Cần Thơ'),(15,'Đà Nẵng'),(16,'Đắk Lắk'),(17,'Đắk Nông'),(18,'Điện Biên'),(19,'Đồng Nai'),(20,'Đồng Tháp'),(21,'Gia Lai'),(22,'Hà Giang'),(23,'Hà Nam'),(24,'Hà Tĩnh'),(25,'Hà Nội'),(26,'Hải Phòng'),(27,'Hải Dương'),(28,'Hậu Giang'),(29,'Hòa Bình'),(30,'Hưng Yên'),(31,'Khánh Hòa'),(32,'Kiên Giang'),(33,'Kon Tum'),(34,'Lai Châu'),(35,'Lâm Đồng'),(36,'Lạng Sơn'),(37,'Lào Cai'),(38,'Long An'),(39,'Nam Định'),(40,'Nghệ An'),(41,'Ninh Bình'),(42,'Ninh Thuận'),(43,'Phú Thọ'),(44,'Quảng Bình'),(45,'Quảng Nam'),(46,'Quảng Ngãi'),(47,'Quảng Ninh'),(48,'Quảng Trị'),(49,'Sóc Trăng'),(50,'Sơn La'),(51,'Tây Ninh'),(52,'Thái Bình'),(53,'Thái Nguyên'),(54,'Thanh Hóa'),(55,'Thừa Thiên Huế'),(56,'Tiền Giang'),(57,'Trà Vinh'),(58,'Tuyên Quang'),(59,'Vĩnh Long'),(60,'Vĩnh Phúc'),(61,'Yên Bái'),(62,'Phú Yên'),(63,'TP HCM');
/*!40000 ALTER TABLE `tinhthanh` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-28 20:37:45
