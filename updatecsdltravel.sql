-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: travel1
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `binhluan`
--

DROP TABLE IF EXISTS `binhluan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `binhluan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngayBinhLuan` date DEFAULT NULL,
  `noiDung` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tintuc_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tintuc_id` (`tintuc_id`),
  KEY `cs_idx` (`customer_id`),
  CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`tintuc_id`) REFERENCES `tintuc` (`id`),
  CONSTRAINT `cs` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binhluan`
--

LOCK TABLES `binhluan` WRITE;
/*!40000 ALTER TABLE `binhluan` DISABLE KEYS */;
INSERT INTO `binhluan` VALUES (1,'2000-01-01','yen',2,1),(2,'2000-01-01','thanh',2,1);
/*!40000 ALTER TABLE `binhluan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `bookingDay` date DEFAULT NULL,
  `totalMoney` decimal(10,0) DEFAULT NULL,
  `soNguoiLonDi` int DEFAULT NULL,
  `thongTinLienLac_id` int DEFAULT NULL,
  `soNguoiNhoDi` int DEFAULT NULL,
  `tour_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `thongTinLienLac_id` (`thongTinLienLac_id`),
  CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`thongTinLienLac_id`) REFERENCES `thongtinlienlac` (`id`),
  CONSTRAINT `tour_id` FOREIGN KEY (`id`) REFERENCES `tour` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_user_kh` FOREIGN KEY (`id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1),(3);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `h+fk` FOREIGN KEY (`id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (2),(4);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaitour`
--

DROP TABLE IF EXISTS `loaitour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaitour` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaitour`
--

LOCK TABLES `loaitour` WRITE;
/*!40000 ALTER TABLE `loaitour` DISABLE KEYS */;
INSERT INTO `loaitour` VALUES (1,'Cao cấp'),(2,'Bình thường'),(3,'Gia đình'),(4,'Siêu rẻ');
/*!40000 ALTER TABLE `loaitour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thich`
--

DROP TABLE IF EXISTS `thich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thich` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trangThai` tinyint(1) DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `tintuc_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tintuc_id` (`tintuc_id`),
  KEY `kh_ik_2_idx` (`customerId`),
  CONSTRAINT `kh_ik_2` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `thich_ibfk_2` FOREIGN KEY (`tintuc_id`) REFERENCES `tintuc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thich`
--

LOCK TABLES `thich` WRITE;
/*!40000 ALTER TABLE `thich` DISABLE KEYS */;
INSERT INTO `thich` VALUES (8,0,1,2),(9,0,3,3);
/*!40000 ALTER TABLE `thich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongtinlienlac`
--

DROP TABLE IF EXISTS `thongtinlienlac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thongtinlienlac` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tenNguoiDi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sdt` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `diaChi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongtinlienlac`
--

LOCK TABLES `thongtinlienlac` WRITE;
/*!40000 ALTER TABLE `thongtinlienlac` DISABLE KEYS */;
/*!40000 ALTER TABLE `thongtinlienlac` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `tintuc`
--

DROP TABLE IF EXISTS `tintuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tintuc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `moTaNgan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `moTaDai` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ngayDang` date DEFAULT NULL,
  `trangThai` tinyint(1) DEFAULT NULL,
  `anh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `emloyee_id` int DEFAULT NULL,
  `soLuotThich` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Kg_nv_tintuc_idx` (`emloyee_id`),
  CONSTRAINT `kg_nv` FOREIGN KEY (`id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tintuc`
--

LOCK TABLES `tintuc` WRITE;
/*!40000 ALTER TABLE `tintuc` DISABLE KEYS */;
INSERT INTO `tintuc` VALUES (2,'Du lịch vui vẻ','Bao giờ code xong ',NULL,0,'/admin/anhtintuc/LR-29-scaled.jpg',NULL,0),(3,'Con ngoan trò giỏi đi du lịch','ủa',NULL,0,'/admin/anhtintuc/anime-girl-happy-face-twintails-aqua-hair-wallpaper-preview.png',2,0),(4,'Con ngoan trò giỏi đi du lịch','nooo',NULL,0,'/admin/anhtintuc/giai nhat thuyen hoa.jpg',NULL,0);
/*!40000 ALTER TABLE `tintuc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gia` decimal(10,0) DEFAULT NULL,
  `diemDen_id` int DEFAULT NULL,
  `diemDi_id` int DEFAULT NULL,
  `gioiHanNDi` int DEFAULT NULL,
  `ngayKetThuc` date DEFAULT NULL,
  `ngayKhoiHanh` date DEFAULT NULL,
  `loaiTour_id` int DEFAULT NULL,
  `mota` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loaiTour_id` (`loaiTour_id`),
  KEY `diemDi_id` (`diemDi_id`),
  KEY `tour_ibfk_1_idx` (`diemDen_id`),
  CONSTRAINT `tour_ibfk_1` FOREIGN KEY (`diemDen_id`) REFERENCES `tinhthanh` (`id`),
  CONSTRAINT `tour_ibfk_2` FOREIGN KEY (`loaiTour_id`) REFERENCES `loaitour` (`id`),
  CONSTRAINT `tour_ibfk_3` FOREIGN KEY (`diemDi_id`) REFERENCES `tinhthanh` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (1,'PHÚ QUÝ - NGẮM BÌNH MINH NÚI CAO CÁT',2490000,1,1,100,'2021-05-07','2020-02-05',1,'TP. HỒ CHÍ MINH – TP. PHAN THIẾT - ĐẢO PHÚ QUÝ\r\n\r\n19h00: HDV đón quý khách tại điểm hẹn, khởi hành đi Phan Thiết.\r\n\r\n\r\nTrên đường đi Phan Thiết, xe dừng tại điểm dừng chân để quý khách nghỉ ngơi, vệ sinh cá nhân, ăn khuya ( chi phí tự túc)\r\n\r\n23h00: Đoàn nhận phòng khách sạn tại Phan Thiết nghỉ ngơi, ngủ 1 giấc thật ngon để chuẩn bị cho hành trình khám phá Đảo Phú Quý ngày hôm sau.\r\n\r\nNGÀY 2\r\n\r\nKHÁM PHÁ ĐẢO PHÚ QUÝ – BBQ HẢI SẢN – NGẮM HOÀNG HÔN (Ăn sáng,trưa,tối)\r\n\r\n06h00: Đoàn dùng điểm tâm sáng, do lịch tàu sớm nên quý Khách sẽ được phát 1 combo bao gồm 1 phần ăn và 1 suất nước. Sau đó di chuyển ra cảng Phan Thiết để lên tàu và khởi hành di chuyển sang đảo Phú Quý. Ước tính thời  gian di chuyển khoảng 2 giờ 30 phút.\r\n\r\n10h00: Quý khách bắt đầu đặt trên lên đảo, quý khách nhận xe máy 2 người một chiếc xe :\r\n\r\nHDV đưa quý khách đi tham quan Vạn An Thạnh nơi có bộ xương cá voi (Cá Ông) lớn thứ 2 tại tỉnh Bình Thuận.\r\n\r\n11h30: Quý khách về nhận phòng khách sạn, nghỉ ngơi\r\n\r\n13h00: HDV cùng quý Khách lên xe máy tiếp tục hành trinh khám phá Phú Quý\r\n\r\nCột Cờ Chủ Quyền Biển Đảo: Đến đây du khách sẽ được tham quan, tìm hiểu về sự thiêng liêng cũng như sự khó khăn của người dân trong việc bảo vệ chủ quyền biển đảo của Việt Nam. “Nhìn cột cờ cao, hướng thẳng đứng lên trời, lá cờ bay “phần phật”, kiêu hãnh giữa biển trời Tổ quốc, khiến chúng ta thật tự hào”\r\n\r\nMũi Dinh Thầy hay Mộ Doi Thầy: Đối với người dân là một nơi vô cùng thiêng liêng và kính trọng. Đây là doi đất nhô ra biển, điểm ngắm bình minh đẹp nhất của đảo. Mộ Thầy Nại được người dân địa phương tôn thờ như là vị thần bảo trợ cho hòn đảo. Nằm dưới chân núi Cao Cát. Nơi đây là nơi giao thoa văn hóa giữa người Việt và người Hoa. Du khách có thể tham quan, ngắm cảnh thư giãn. Bởi bên cạnh Đền thờ là một vùng biển lộng gió, cùng không gian kiến trúc cổ kính ở đây sẽ làm bạn không khỏi ấn tượng.\r\n\r\n16h00: Đoàn về khách sạn nghỉ ngơi. Sao đó đoàn di chuyển đến Bãi Doi hoặc Vịnh Triều Dương để ngắm hoàng hôn về trên Phú Quý. Ăn tối tại nhà hàng, trải nghiệm ẩm thực địa phương, tự do khám phá Phú Quý về đêm.\r\n\r\nNGÀY 3\r\n\r\nPHÚ QUÝ - NGẮM BÌNH MINH NÚI CAO CẢT - PHAN THIẾT – TP. HỒ CHÍ MINH ( Ăn sáng, trưa )\r\n\r\n05h00: Đoàn dậy sớm, di chuyến đến Núi Cao Cát để ngắm bình minh.\r\n\r\nChùa Linh Sơn tọa lạc trên đỉnh núi Cao Cát, đây được xem là “nóc nhà của Phú Quý”. Ngôi chùa nổi tiếng linh thiêng khắp đảo với tượng Phật Bà uy nghi. Ngoài chùa Linh Sơn, bạn còn được trải nghiệm cảm giác nhìn cả hòn đảo xinh đẹp đang ẩn mình dưới những tán cây xanh ngát nữa đấy.\r\n\r\nNgọn Hải Đăng : Quý khách chinh phục ngon hải đăng ở đảo Phú Quý, đến đây quý khách có thể nhìn toàn bộ phong cảnh ở đảo Phú Quý từ trên cao, quý khách có thể chụp hình check in với phong cảnh siêu đẹp từ trên cao.\r\n\r\nTrên đường về, đoàn chụp ảnh “Phong Điện” với những chong chóng điện gió khổng lồ, đây là nguồn cung cấp điện chính cho hòn đảo này.\r\n\r\nSau đó quý khách trở về khách sạn dùng bữa sáng và trả phòng.\r\n\r\n11h00: Đoàn dung buổi trưa tại đảo Phú Quý hoặc Phan Thiết (do phụ thuộc vào giờ tàu chạy)\r\n\r\nĐoàn lên tàu về lại Phan Thiết.\r\n\r\nXe đưa đoàn di chuyển về Tp. Hồ Chí Minh dừng chân tham quan mua sắm đặc sản địa phương về làm quà. \r\n\r\n18h30: Về điểm đón ban đầu. Kết thúc chuyến tham quan. Chia tay Quý khách và hẹn ngày gặp lại.\r\n\r\n***Chú ý: Giờ khởi hành của tàu ra đảo và chương trình có thể thay đổi phụ thuộc vào thời tiết, nhưng vẫn đảm bảo đầy đủ điểm tham quan cho du khách','/admin/anhadmin/hòn-khô-1.jpg'),(3,'PHÚ QUÝ - NGẮM BÌNH MINH NÚI CAO CÁT',2490000,1,1,100,'2021-05-07','2020-02-05',1,'TP. HỒ CHÍ MINH – TP. PHAN THIẾT - ĐẢO PHÚ QUÝ\r\n\r\n19h00: HDV đón quý khách tại điểm hẹn, khởi hành đi Phan Thiết.\r\n\r\n\r\nTrên đường đi Phan Thiết, xe dừng tại điểm dừng chân để quý khách nghỉ ngơi, vệ sinh cá nhân, ăn khuya ( chi phí tự túc)\r\n\r\n23h00: Đoàn nhận phòng khách sạn tại Phan Thiết nghỉ ngơi, ngủ 1 giấc thật ngon để chuẩn bị cho hành trình khám phá Đảo Phú Quý ngày hôm sau.\r\n\r\nNGÀY 2\r\n\r\nKHÁM PHÁ ĐẢO PHÚ QUÝ – BBQ HẢI SẢN – NGẮM HOÀNG HÔN (Ăn sáng,trưa,tối)\r\n\r\n06h00: Đoàn dùng điểm tâm sáng, do lịch tàu sớm nên quý Khách sẽ được phát 1 combo bao gồm 1 phần ăn và 1 suất nước. Sau đó di chuyển ra cảng Phan Thiết để lên tàu và khởi hành di chuyển sang đảo Phú Quý. Ước tính thời  gian di chuyển khoảng 2 giờ 30 phút.\r\n\r\n10h00: Quý khách bắt đầu đặt trên lên đảo, quý khách nhận xe máy 2 người một chiếc xe :\r\n\r\nHDV đưa quý khách đi tham quan Vạn An Thạnh nơi có bộ xương cá voi (Cá Ông) lớn thứ 2 tại tỉnh Bình Thuận.\r\n\r\n11h30: Quý khách về nhận phòng khách sạn, nghỉ ngơi\r\n\r\n13h00: HDV cùng quý Khách lên xe máy tiếp tục hành trinh khám phá Phú Quý\r\n\r\nCột Cờ Chủ Quyền Biển Đảo: Đến đây du khách sẽ được tham quan, tìm hiểu về sự thiêng liêng cũng như sự khó khăn của người dân trong việc bảo vệ chủ quyền biển đảo của Việt Nam. “Nhìn cột cờ cao, hướng thẳng đứng lên trời, lá cờ bay “phần phật”, kiêu hãnh giữa biển trời Tổ quốc, khiến chúng ta thật tự hào”\r\n\r\nMũi Dinh Thầy hay Mộ Doi Thầy: Đối với người dân là một nơi vô cùng thiêng liêng và kính trọng. Đây là doi đất nhô ra biển, điểm ngắm bình minh đẹp nhất của đảo. Mộ Thầy Nại được người dân địa phương tôn thờ như là vị thần bảo trợ cho hòn đảo. Nằm dưới chân núi Cao Cát. Nơi đây là nơi giao thoa văn hóa giữa người Việt và người Hoa. Du khách có thể tham quan, ngắm cảnh thư giãn. Bởi bên cạnh Đền thờ là một vùng biển lộng gió, cùng không gian kiến trúc cổ kính ở đây sẽ làm bạn không khỏi ấn tượng.\r\n\r\n16h00: Đoàn về khách sạn nghỉ ngơi. Sao đó đoàn di chuyển đến Bãi Doi hoặc Vịnh Triều Dương để ngắm hoàng hôn về trên Phú Quý. Ăn tối tại nhà hàng, trải nghiệm ẩm thực địa phương, tự do khám phá Phú Quý về đêm.\r\n\r\nNGÀY 3\r\n\r\nPHÚ QUÝ - NGẮM BÌNH MINH NÚI CAO CẢT - PHAN THIẾT – TP. HỒ CHÍ MINH ( Ăn sáng, trưa )\r\n\r\n05h00: Đoàn dậy sớm, di chuyến đến Núi Cao Cát để ngắm bình minh.\r\n\r\nChùa Linh Sơn tọa lạc trên đỉnh núi Cao Cát, đây được xem là “nóc nhà của Phú Quý”. Ngôi chùa nổi tiếng linh thiêng khắp đảo với tượng Phật Bà uy nghi. Ngoài chùa Linh Sơn, bạn còn được trải nghiệm cảm giác nhìn cả hòn đảo xinh đẹp đang ẩn mình dưới những tán cây xanh ngát nữa đấy.\r\n\r\nNgọn Hải Đăng : Quý khách chinh phục ngon hải đăng ở đảo Phú Quý, đến đây quý khách có thể nhìn toàn bộ phong cảnh ở đảo Phú Quý từ trên cao, quý khách có thể chụp hình check in với phong cảnh siêu đẹp từ trên cao.\r\n\r\nTrên đường về, đoàn chụp ảnh “Phong Điện” với những chong chóng điện gió khổng lồ, đây là nguồn cung cấp điện chính cho hòn đảo này.\r\n\r\nSau đó quý khách trở về khách sạn dùng bữa sáng và trả phòng.\r\n\r\n11h00: Đoàn dung buổi trưa tại đảo Phú Quý hoặc Phan Thiết (do phụ thuộc vào giờ tàu chạy)\r\n\r\nĐoàn lên tàu về lại Phan Thiết.\r\n\r\nXe đưa đoàn di chuyển về Tp. Hồ Chí Minh dừng chân tham quan mua sắm đặc sản địa phương về làm quà. \r\n\r\n18h30: Về điểm đón ban đầu. Kết thúc chuyến tham quan. Chia tay Quý khách và hẹn ngày gặp lại.\r\n\r\n***Chú ý: Giờ khởi hành của tàu ra đảo và chương trình có thể thay đổi phụ thuộc vào thời tiết, nhưng vẫn đảm bảo đầy đủ điểm tham quan cho du khách','/admin/anhadmin/doan-van-noi-ve-mua-he-tu-3-den-5-cau-1.jpg');
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT '0',
  `passWord` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `sdt` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ngaySinh` date DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `avatar` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `diaChi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hoTen` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gioiTinh` tinyint(1) DEFAULT NULL,
  `userrole` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,0,'abc','2000-01-01','056430117','2000-01-01','doremon','abc','dak lak','Doremon',1,'Customer'),(2,0,NULL,NULL,NULL,NULL,'Duong',NULL,NULL,'Duong',NULL,'Employee'),(3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Customer'),(4,0,'acb',NULL,'1222',NULL,'yen','abc','dlak alk','yen',1,'Employee');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-03 23:23:32
