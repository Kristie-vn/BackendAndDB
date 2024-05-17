-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
CREATE DATABASE  IF NOT EXISTS `martfury_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `martfury_shop`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: martfury_shop
-- Host: 127.0.0.1    Database: martfury_shop
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `app_roles`
--

DROP TABLE IF EXISTS `app_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_roles`
--

LOCK TABLES `app_roles` WRITE;
/*!40000 ALTER TABLE `app_roles` DISABLE KEYS */;
INSERT INTO `app_roles` VALUES (1,'ROLE_USER'),(2,'ROLE_ADMIN');
/*!40000 ALTER TABLE `app_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_details`
--

DROP TABLE IF EXISTS `cart_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_details` (
  `cart_detail_id` bigint NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `cart_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`cart_detail_id`),
  KEY `FKkcochhsa891wv0s9wrtf36wgt` (`cart_id`),
  KEY `FK9rlic3aynl3g75jvedkx84lhv` (`product_id`),
  CONSTRAINT `FK9rlic3aynl3g75jvedkx84lhv` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKkcochhsa891wv0s9wrtf36wgt` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_details`
--

LOCK TABLES `cart_details` WRITE;
/*!40000 ALTER TABLE `cart_details` DISABLE KEYS */;
INSERT INTO `cart_details` VALUES (2,716000,1,3,24),(5,31000000,1,7,7);
/*!40000 ALTER TABLE `cart_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `cart_id` bigint NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `FKb5o626f86h46m4s7ms6ginnop` (`user_id`),
  CONSTRAINT `FKb5o626f86h46m4s7ms6ginnop` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,0,'Hà Tĩnh','0967291997',2),(2,0,'123, Xã Thượng Ân, Huyện Ngân Sơn, Tỉnh Bắc Kạn','0916891997',3),(3,0,'11, Phường Minh Xuân, Thành phố Tuyên Quang, Tỉnh Tuyên Quang','0916855648',4),(4,0,'so 10, Phường Đồng Xuân, Quận Hoàn Kiếm, Thành phố Hà Nội','0372651619',5),(5,0,'Số 20, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội','0987657656',6),(6,0,'134 Trương Công Định, phường 14, Quận Tân Bình, TP. Hồ Chí Minh','0917564487',7),(7,0,'an giang','0917564487',8);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Sách Chính trị – pháp luật'),(2,'Sách Khoa học công nghệ – Kinh tế'),(3,'Sách Văn học nghệ thuật'),(4,'Sách Văn hóa xã hội – Lịch sử'),(5,'Sách Giáo trình'),(6,'Sách Truyện, tiểu thuyết'),(7,'Sách Tâm lý, tâm linh, tôn giáo'),(8,' Sách thiếu nhi'),(9,'Sách Văn học');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `favorite_id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`favorite_id`),
  KEY `FK6sgu5npe8ug4o42bf9j71x20c` (`product_id`),
  KEY `FKk7du8b8ewipawnnpg76d55fus` (`user_id`),
  CONSTRAINT `FK6sgu5npe8ug4o42bf9j71x20c` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKk7du8b8ewipawnnpg76d55fus` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `order_detail_id` bigint NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`),
  CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,25088000,1,1,23),(2,680200,1,1,27),(3,29392999.999999996,1,1,51),(4,43290000,1,1,9),(5,31000000,1,1,7),(6,31890000,1,1,5),(7,716000,1,1,25),(8,716000,1,1,24),(9,93000000,3,2,7),(10,129870000,3,2,8),(11,52170000,3,2,12),(12,50670000,3,2,13),(13,23220000,2,2,55),(14,4644000,3,2,32),(15,5092500,3,2,29),(16,3052800,2,2,28),(17,716000,1,2,24),(18,402380,1,2,41),(19,448799.99999999994,1,2,42),(20,34790000,1,3,3),(21,33390000,1,3,4),(22,31890000,1,3,5),(23,48990000,1,3,6),(24,30890000,1,3,10),(25,43290000,1,3,9),(26,43290000,1,3,8),(27,17390000,1,3,12),(28,50970000,3,4,11),(29,93000000,3,4,7),(30,129870000,3,4,9),(31,129870000,3,4,8),(32,92670000,3,4,10),(33,50970000,3,4,14),(34,50670000,3,4,13),(35,1980000,3,4,37),(36,68600,2,4,38),(37,81900,2,4,39),(38,14049000,3,4,40),(39,43180000,2,4,16),(40,7526400,3,4,21),(41,71221500,3,4,20),(42,82290600,3,4,22),(43,75264000,3,4,23),(44,29602000,4,4,47),(45,8982000,2,4,46),(46,25350000,2,4,52),(47,58785999.99999999,2,4,51),(48,9900800,2,4,50),(49,16580000,2,4,53),(50,27300000,2,5,36),(51,1320000,2,6,37),(52,137200,4,6,38),(53,163800,4,6,39),(54,14049000,3,6,40),(55,5423760,3,6,44),(56,6029100,3,6,43),(57,2243999.9999999995,5,6,42),(58,2414280,6,6,41),(59,30922500,7,6,45),(60,2148000,3,6,25),(61,3346200,5,6,26),(62,2720800,4,6,27),(63,3234330,3,6,31),(64,4074000,3,6,30),(65,5092500,3,6,29),(66,2762560,2,6,33),(67,4644000,3,6,32),(68,20340450,3,6,34),(69,32343300,3,6,35),(70,54600000,4,6,36),(71,402380,1,7,41),(72,31890000,1,8,5),(73,40950000,3,9,36),(74,66780000,2,9,4),(75,31890000,1,9,5),(76,43290000,1,9,8),(77,2762560,2,10,33),(78,3096000,2,10,32),(79,2156220,2,10,31),(80,716000,1,11,24),(81,13650000,1,12,36),(82,48990000,1,13,6),(83,1548000,1,14,32),(84,43290000,1,14,9),(85,43290000,1,14,8),(86,4950400,1,15,50),(87,34790000,1,15,3),(88,21590000,1,16,16),(89,6780150,1,17,34),(90,448799.99999999994,1,18,42),(91,29392999.999999996,1,19,51),(92,7400500,1,20,47),(93,8835000,2,20,45),(94,660000,1,20,37),(95,3615840,2,21,44),(96,804760,2,21,41),(97,8835000,2,21,45),(98,4417500,1,22,45),(99,402380,1,22,41),(100,1807920,1,22,44),(101,8290000,1,22,53),(102,4417500,1,23,45),(103,402380,1,23,41),(104,1807920,1,23,44),(105,1807920,1,24,44),(106,34790000,1,25,3),(107,34300,1,25,38),(108,7400500,1,25,47),(109,1381280,1,25,33),(110,3089000,1,26,10),(111,27430200,1,26,22),(112,43290000,1,26,9),(113,33390000,1,26,4);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orders_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`),
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'68, Phường Gia Thụy, Quận Long Biên, Thành phố Hà Nội',162773200,'2022-03-20 22:18:21','0916891997',2,3),(2,'268, Xã Lương Sơn, Huyện Yên Lập, Tỉnh Phú Thọ',363286480,'2022-03-20 22:38:14','0916891997',2,3),(3,'22, Xã Đàm Thuỷ, Huyện Trùng Khánh, Tỉnh Cao Bằng',283920000,'2022-03-20 22:47:49','0916891997',2,3),(4,'68, Phường Thạch Quý, Thành phố Hà Tĩnh, Tỉnh Hà Tĩnh',1042882800,'2022-03-20 22:54:49','0916891997',2,3),(5,'86, Xã Động Đạt, Huyện Phú Lương, Tỉnh Thái Nguyên',27300000,'2022-03-20 23:11:09','0916891997',2,3),(6,'123, Xã Yên Hòa, Huyện Đà Bắc, Tỉnh Hoà Bình',198009780,'2022-03-20 23:16:10','0916891997',2,3),(7,'123, Xã Phúc Sơn, Huyện Chiêm Hóa, Tỉnh Tuyên Quang',402380,'2022-03-20 23:29:46','0916891997',0,3),(8,'123, Xã Thượng Ân, Huyện Ngân Sơn, Tỉnh Bắc Kạn',31890000,'2022-03-20 23:31:38','0916891997',0,3),(9,'68, Xã Vạn Khánh, Huyện Vạn Ninh, Tỉnh Khánh Hòa',182910000,'2022-03-23 20:53:51','0916855648',2,4),(10,'168, Xã Na Khê, Huyện Yên Minh, Tỉnh Hà Giang',8014780,'2022-03-23 20:55:25','0916855648',2,4),(11,'55, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội',716000,'2022-12-25 13:35:40','0372651619',2,5),(12,'gggg, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội',13650000,'2022-12-28 21:38:34','0372651619',2,5),(13,'11, Phường Đồng Mai, Quận Hà Đông, Thành phố Hà Nội',48990000,'2022-12-29 01:20:32','0372651619',3,5),(14,'12, Xã Thượng Phùng, Huyện Mèo Vạc, Tỉnh Hà Giang',88128000,'2023-01-06 00:10:47','0372651619',3,5),(15,'11, Phường Phúc Tân, Quận Hoàn Kiếm, Thành phố Hà Nội',39740400,'2023-01-12 20:55:32','0372651619',3,5),(16,'s1, Phường Nghĩa Tân, Quận Cầu Giấy, Thành phố Hà Nội',21590000,'2023-01-19 22:18:19','0372651619',3,5),(17,'1, Phường Quang Trung, Thành phố Hà Giang, Tỉnh Hà Giang',6780150,'2023-01-19 22:18:48','0372651619',3,5),(18,'1, Phường Trúc Bạch, Quận Ba Đình, Thành phố Hà Nội',448799.99999999994,'2023-01-19 22:24:25','0372651619',3,5),(19,'s1, Phường Trúc Bạch, Quận Ba Đình, Thành phố Hà Nội',29392999.999999996,'2023-01-21 17:27:06','0372651619',3,5),(20,'so 11, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội',16895500,'2023-02-02 08:27:00','0372651619',2,5),(21,'so 1, Phường Thượng Thanh, Quận Long Biên, Thành phố Hà Nội',13255600,'2023-02-02 12:44:47','0372651619',0,5),(22,'do 1, Phường 5, Thành phố Tân An, Tỉnh Long An',14917800,'2023-02-02 13:06:12','0372651619',0,5),(23,'số 20, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội',6627800,'2023-02-04 16:35:52','0987657656',2,6),(24,'Số 20, Phường Phúc Xá, Quận Ba Đình, Thành phố Hà Nội',1807920,'2023-02-04 16:43:38','0987657656',1,6),(25,'so 10, Phường Đồng Xuân, Quận Hoàn Kiếm, Thành phố Hà Nội',43606080,'2023-02-10 23:45:28','0372651619',2,5),(26,'11, Phường Minh Xuân, Thành phố Tuyên Quang, Tỉnh Tuyên Quang',107199200,'2023-04-12 20:36:57','0916855648',2,4);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) DEFAULT NULL,
  `discount` int NOT NULL,
  `entered_date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `sold` int NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (3,'Gần 50 năm từ ngày đầu ra mắt, Giết con chim nhại, tác phẩm đầu tay và cũng là cuối cùng của nữ nhà văn Mỹ Harper Lee vẫn đầy sức hút với độc giả ở nhiều lứa tuổi. Thông điệp yêu thương trải khắp các chương sách là một trong những lý do khiến Giết con chim nhại giữ sức sống lâu bền của mình trong trái tim độc giả ở nhiều quốc gia, nhiều thế hệ. Những độc giả nhí tìm cho mình các trò nghịch ngợm và cách nhìn dí dỏm về thế giới xung quanh. Người lớn lại tìm ra điều thú vị sâu xa trong tình cha con nhà Atticus, và đặc biệt là tình người trong cuộc sống, như bé Scout quả quyết nói “em nghĩ chỉ có một hạng người. Đó là người”.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710382631/products/ucvbvyfuhoiqq1nd0a1h.webp','Giết con chim nhại',105000,20,2,_binary '',9),(4,'Khắp làng trên xóm dưới Herfordshire xôn xao: Netherfield sắp có người thuê, mà còn là một quý ông chưa vợ với khoản lợi tức lên đến năm nghìn bảng mỗi năm. Chao ôi, quả là tin đáng mừng đối với gia đình ông bà Bennett, vốn có tới năm cô con gái cần phải gả chồng. Giữa những quay cuồng vũ hội cùng âm mưu toan tính của cả một xã hội ganh đua nhau tìm tấm chồng tốt cho các cô gái, nổi lên câu chuyện tình của cô con gái thứ cứng đầu Elizabeth và chàng quý tộc Darcy - nơi lòng Kiêu hãnh phải nhún nhường và Định kiến cần giải tỏa để có thể đi đến kết cục hoàn toàn viên mãn.\n\nSuốt hơn 200 năm qua, Kiêu hãnh và Định kiến luôn nằm trong số những tiểu thuyết tiếng Anh được yêu mến nhất. Chính Jane Austen cũng coi tác phẩm xuất sắc này là “đứa con cưng” của bà. Tài năng của Austen quả thực đã biến câu chuyện tình sôi nổi nơi miền quê nước Anh thành một bản châm biếm sắc sảo hóm hỉnh và một viên ngọc quý trong kho tàng Anh ngữ.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710382853/products/dwn020vbjq429s2skoug.webp','Kiêu hãnh và định kiến',116000,30,4,_binary '',9),(5,'“Việc nghĩ ra một bài toán vô cùng khó và việc giải bài toán đó, việc nào khó hơn?”\n\nKhi nhấn chuông cửa nhà nghi can chính của một vụ án mới, điều tra viên Kusanagi không biết rằng anh sắp phải đương đầu với một thiên tài ẩn dật. Kusanagi càng không thể ngờ rằng, chỉ một câu nói vô thưởng vô phạt của anh đã kéo người bạn thân, Manabu Yukawa, một phó giáo sư vật lý tài năng, vào vụ án. Và điều làm sững sờ nhất, đó là vụ án kia chẳng qua cũng chỉ như một bài toán cấp ba đơn giản, tuy nhiên ấn số X khi được phơi bày ra lại không đem đến hạnh phúc cho bất cứ ai…\n\nVới một giọng văn tỉnh táo và dung dị, Higashino Keigo đã đem đến cho độc giả hơn cả một cuốn tiểu thuyết trinh thám. Mô tả tội ác không phải điều hấp dẫn nhất ở đây, mà còn là những giằng xé nội tâm thầm kín, những nhân vật bình dị, và sự quan tâm sâu sa tới con người. Tác phẩm đã đem lại cho Higashino Keigo Giải Naoki lần thứ 134, một giải thưởng văn học lâu đời sánh ngang giải Akutagawa tại Nhật.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710382966/products/gxrgjwedvcddrkdtxriz.webp','Phía sau nghi can X',129000,40,3,_binary '',9),(6,'Hãy làm quen với Zezé, cậu bé tinh nghịch siêu hạng đồng thời cũng đáng yêu bậc nhất, với ước mơ lớn lên trở thành nhà thơ cổ thắt nơ bướm. Chẳng phải ai cũng công nhận khoản “đáng yêu” kia đâu nhé. Bởi vì, ở cái xóm ngoại ô nghèo ấy, nỗi khắc khổ bủa vây đã che mờ mắt người ta trước trái tim thiện lương cùng trí tưởng tượng tuyệt vời của cậu bé con năm tuổi.\n\nMở đầu bằng những thanh âm trong sáng và kết thúc lắng lại trong những nốt trầm hoài niệm, Cây cam ngọt của tôi khiến ta nhận ra vẻ đẹp thực sự của cuộc sống đến từ những điều giản dị như bông hoa trắng của cái cây sau nhà, và rằng cuộc đời thật khốn khổ nếu thiếu đi lòng yêu thương và niềm trắc ẩn. Cuốn sách kinh điển này bởi thế không ngừng khiến trái tim người đọc khắp thế giới thổn thức, kể từ khi ra mắt lần đầu năm 1968 tại Brazil.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710383594/products/edmssnujnrt7ubf4g3ms.webp','Cây cam ngọt của tôi',108000,20,1,_binary '',9),(7,'Một thoáng ta rực rỡ ở nhân gian viết dưới dạng một lá thư của nhân vật chính, Chó Con, gửi cho người mẹ không biết chữ của mình. Dưới dạng những mẩu chuyện nhỏ, xen kẽ với những đoạn trữ tình ngoại đề, triết lý, và những bài thơ, cuốn sách kể câu chuyện đời không chỉ của Chó Con (tên gọi yêu do bà ngoại đặt cho, nhưng cũng là cách tất cả mọi người trong sách gọi cậu) từ thuở nhỏ đến lúc chớm trưởng thành, mà cả ba thế hệ từ bà, đến mẹ, đến cậu, một cuộc di cư dài từ làng quê Việt Nam sang đất Mỹ, cũng như câu chuyện của những thanh niên Mỹ thế hệ cậu mà đặc trưng là người bạn trai Trevor.\n\nCuốn sách thường được đọc như một Bildungsroman (tiểu thuyết trưởng thành), nhưng cũng có nhiều người coi đây là một Künstlerroman (tiểu thuyết kể về quá trình một người nghệ sĩ trở thành nghệ sĩ).',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710383680/products/dzsjnhl9zgvbxyn98s2f.webp','Một thoáng ta rực rỡ ở nhân gian ',195000,15,7,_binary '',9),(8,'Chuyện con mèo dạy hải âu bay là kiệt tác dành cho thiếu nhi của nhà văn Chi Lê nổi tiếng Luis Sepúlveda – tác giả của cuốn Lão già mê đọc truyện tình đã bán được 18 triệu bản khắp thế giới. Tác phẩm không chỉ là một câu chuyện ấm áp, trong sáng, dễ thương về loài vật mà còn chuyển tải thông điệp về trách nhiệm với môi trường, về sự sẻ chia và yêu thương cũng như ý nghĩa của những nỗ lực – “Chỉ những kẻ dám mới có thể bay”.\n\nCuốn sách mở đầu cho mùa hè với minh họa dễ thương, hài hước là món quà dành cho mọi trẻ em và người lớn.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710385151/products/wgq71tbxyhuj5phonq6p.webp','Chuyện con mèo dạy hải âu bay',49000,20,8,_binary '',9),(9,'Tác giả: Rena\nNhà xuất bản: Nxb Hà Nội\nNhà phát hành: AZ books\nNối tiếp câu chuyện là quá trình hòa nhập vào với cuộc sống con người của Lôi Thần khi gặp những người bạn của Omura, trải nghiệm thế giới loài người mà anh chưa từng biết tới. Từ những thứ nhỏ nhặt nhất như món cơm nắm siêu to siêu ngon do ... Xem thêm',7,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710385505/products/bxgfwkulrr3pheisppgk.webp','Rừng Nauy',150000,20,6,_binary '',9),(10,'Tác giả: Rena\nNhà xuất bản: Nxb Hà Nội\nNhà phát hành: AZ books\nNối tiếp câu chuyện là quá trình hòa nhập vào với cuộc sống con người của Lôi Thần khi gặp những người bạn của Omura, trải nghiệm thế giới loài người mà anh chưa từng biết tới. Từ những thứ nhỏ nhặt nhất như món cơm nắm siêu to siêu ngon do ... Xem thêm',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710385604/products/jal1mefpeu8yg889cxy6.webp','Xứ cát',249000,35,5,_binary '',9),(11,'“Dorothy sống giữa vùng đồng cỏ Kansas bao la…” Bắt đầu như thế  là cuốn truyện thiếu nhi kinh điển của nước Mỹ. Cơn lốc xoáy đã vô tình cuốn Dorothy cùng chú chó nhỏ Toto đến một nơi lạ lùng, tên gọi xứ Oz; và cô bé sợ rằng mình chẳng bao giờ được về với Chú Henry, Dì Em trong căn nhà xám giữa đồng cỏ bao la.\nNhưng cô đã gặp những người Munchkin, họ chỉ cho cô Con đường Gạch vàng dẫn tới Thành phố Ngọc Lục bảo, nơi có Oz, vị Phù thủy có khả năng thỏa mãn mọi điều ước. Trên đường đi, cô gặp Bù nhìn rơm, Thợ rừng Thiếc, Sư tử Nhát, tất cả đồng lòng cùng cô dấn bước vào phiêu lưu, xuyên qua đồng anh túc chết chóc, đối mặt các quái thú, đối mặt phù thủy Ác… và cả Phù thủy xứ Oz hùng mạnh, để tìm ra chìa khóa cho điều họ mong mỏi nhất…',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710386126/products/gfwid3f2qd9rhw3fy6gx.webp','Phù thủy xứ Oz',60000,25,3,_binary '',9),(12,'Gồm 6 truyện ngắn: \"Người đàn bà ngoại tình\", \"Kẻ bỏ đạo hay một đầu óc mù mờ\", \"Những người hóa câm\", \"Người khách\", \"Jonas hay nhà nghệ sĩ lúc làm việc\" và \"Hòn đá mọc lên\". Mỗi câu chuyện trong cuốn sách này minh họa cho cảm giác bất mãn và thất bại của nhân vật chính, cũng như những khó khăn của anh ta trong cuộc tìm kiếm \"Vương quốc\", hình ảnh ẩn dụ cho ý nghĩa và hạnh phúc của cuộc đời.\n\nCác câu chuyện, các nhân vật trong cuốn sách này đều có một hành trình đi tìm \"Vương quốc\" của riêng mình, với các bối cảnh khác nhau, nhưng chủ yếu ở Algérie (sa mạc, thị trấn miền Nam, trường học trên núi, các khu phố công nhân...)',3,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710386208/products/toz3xojz1bkyqj7o3ryt.webp','Lưu đày và vương quốc ',130000,35,4,_binary '',9),(13,'Bầu trời và Mặt đất là nhiều câu chuyện khác nhau: một tình yêu đắm đuối giữa hai nhân vật chính, mối ràng buộc giữa những người anh em, một cuộc truy tầm ý nghĩa tối hậu của đời sống. Chúng được đan cài với nhau một cách khéo léo thành cuộc đời của một con người duy nhất, một nhân cách độc đáo phi thường đủ khả năng cuốn phăng người đọc vào thế giới riêng của nó cho đến trang cuối cùng.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710386338/products/vd0hq1h9pmzvqbikdffn.webp','Bầu trời và mặt đất',170000,20,6,_binary '',9),(14,'Những dòng nhật ký đầy dự cảm của David Parkin đưa ta quay ngược đồng hồ trở về nước Mỹ những năm đầu thế kỷ hai mươi, lần theo cuộc đời của David và MaryAnne khi họ tìm thấy nhau, trải qua thăng hoa ngây ngất lẫn tuyệt vọng tận cùng, để rồi khám phá ra sức mạnh của lòng trung thành, sự khoan thứ. Và vượt trên tất cả là tình yêu, là sự tử tế còn sống mãi, dù đôi khi tưởng như rung rinh sắp tắt lụi bởi kẹt giữa cám dỗ và hoài nghi.\n\nCũng giống như tác phẩm kinh điển Chiếc hộp Giáng sinh, \"Đồng hồ\" đã kể lại một câu chuyện đẹp đẽ, sưởi ấm tâm hồn con người giữa mùa đông lạnh giá, là câu chuyện để đọc trên chiếc ghế sofa, trong căn phòng ấm sực. Để rồi, tích tắc, tích tắc, tích tắc. Tiếng đồng hồ điểm giây giữa không gian vắng lặng như muốn nhắn nhủ ta rằng: Hãy sống như không có ngày mai, bởi sau tất cả, chúng ta chỉ là những ngôi sao băng vụt sáng trên bầu trời cuộc đời.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710386384/products/xr5afxduio6jrfgcj7yr.webp','Đồng hồ',90000,15,3,_binary '',8),(15,'Miền đất ấy lưu giữ mọi ký ức tuổi thơ trong trẻo, chan hòa, thi vị mà vẫn có chút hào sảng của đám trẻ tinh nghịch - Thủy, Linh, Kiên và cô chó đương độ dậy thì - Lệ Dung. Cùng nhau, nhóm bạn đã thực hiện nhiều “phi vụ” lớn nhỏ, hài hước mà vô cùng cảm động như lần kiếm tiền mua áo dài cho mẹ hay chiến dịch bảo vệ hạnh phúc gia đình. Hòa quyện trong những dòng văn ý nhị pha duyên ngầm về tình bạn hồn nhiên, chút tình đầu nhiều bối rối, đó là tình cảm gia đình thân thương và tình làng nghĩa xóm thân thuộc, dù có những khó khăn, mất mát, có cả những nỗi hoang mang, hổ thẹn. Nhưng sau cùng, tình yêu thương là thứ nâng đỡ tất cả.\n\nMột cuốn sách tươi vui dành cho trẻ em và một cuốn nhật ký đầy hoài niệm cho những ai đã-từng-là-trẻ-em.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710386450/products/a8wgrue0wdkslru7gz10.webp','Đu đưa trên ngọn cây bàng ',118000,25,0,_binary '',8),(16,'Một thế lực ma thuật đang phủ bóng đen lên khu rừng vốn đã thâm u, nhưng đây không hề là một câu chuyện u ám như bạn đang tưởng tượng đâu. Mà VUI CỰC KỲ!!! Một cuộc phiêu lưu tưng bừng với không ít những khúc ngoặt bất ngờ và chẳng thiếu những bài học sâu sắc. Một thế giới tưởng tượng hoàn toàn mới đến từ giọng kể chuyện và nét vẽ minh họa đã rất quen thuộc của tác giả Bí kíp luyện rồng, Cressida Cowell.',5,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710386521/products/sfltue93pe7fag7icbqs.webp','Pháp sư xứ Anh',150000,30,2,_binary '',8),(17,'Laptop Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H/8GB/512GB/144Hz/4GB GTX1650/Win11',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548239/products/e2gljp4rkux1puw8hyrd.jpg','thủy hủe',21590000,2000,0,_binary '\0',2),(18,'Laptop Dell Inspiron 15 3511 i3 (P112F001CBL) chiếc laptop hiện đại dành để phục vụ cho nhu cầu học tập - văn phòng và giải trí trong một thiết kế trẻ trung, tinh tế cùng sức mạnh hiệu năng ổn định đủ đáp ứng đa dạng nhu cầu sử dụng.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548239/products/e2gljp4rkux1puw8hyrd.jpg','truyền kỳ',15000000,10000,0,_binary '\0',2),(19,'Laptop HP 240 G8 i3 (519A7PA) là chiếc laptop nằm ở phân khúc học sinh - sinh viên, phù hợp với các công việc học tập - văn phòng cơ bản. Trong một thiết kế cơ bản và đơn giản, kết hợp cùng hiệu năng ổn định đến từ bộ xử lý Intel thế hệ thứ 10, chiếc laptop này sẽ trở thành sự lựa chọn tối ưu cho những nhu cầu công việc, học tập và giải trí cơ bản của người dùng.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548239/products/e2gljp4rkux1puw8hyrd.jpg','Đi Hết ',12090000,1000,0,_binary '\0',2),(20,'Intel NUC M15 i5 (BBC510EAUXBC1) thu hút mọi ánh nhìn nhờ vẻ ngoài tối giản mà sang trọng, cao cấp cùng sức mạnh của bộ vi xử lý Intel thế hệ 11 tân tiến, đảm bảo sẽ là một trong những chiếc laptop học tập - văn phòng lý tưởng dành cho bạn.',5,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548239/products/e2gljp4rkux1puw8hyrd.jpg',' Một Đời Anh Vẫn Là Của em',24990000,997,3,_binary '\0',2),(21,'Gọn nhẹ nhưng đầy mạnh mẽ, Lenovo Yoga Duet 7 13ITL6 i5 1135G7 (82MA000PVN) xứng tầm người cộng sự đắc lực khi sở hữu cấu hình mạnh mẽ đến từ chip Intel Gen 11, sẵn sàng cùng bạn chinh phục thành công các tác vụ làm việc học tập và giải trí.',2,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548477/products/indw7ymdph1aomnb7gfv.jpg','i Anh Vẫn Là Của em ',2560000,997,3,_binary '\0',2),(22,'Các fan của David Walliams, hãy sẵn sàng cho một cuộc phiêu lưu KHỔNG LỒ nào!!!\n\n\"Quái vật Băng\" là cuộc phiêu lưu lớn nhất của David Walliams từ trước đến nay! Đây là câu chuyện về một cô bé mồ côi mười tuổi và một chú voi đã sống 10.000 năm...\nQUÁI VẬT BĂNG ĐÃ ĐƯỢC TÌM THẤY Ở BẮC CỰC!\nKhi Elsie, một đứa trẻ mồ côi sống trên những con phố của London vào thời Victoria, nghe nói về con \"Quái vật Băng \" bí ẩn - một con voi lông dày được tìm thấy tại Bắc Cực - cô quyết tâm khám phá thêm... Một cơ hội tình cờ đưa Elsie đối diện với con quái vật, và bắt đầu cuộc phiêu lưu lớn nhất cuộc đời cô  - từ London đến trái tim của Bắc Cực!',10,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710386568/products/wwh7nf1sqlowupmmilmy.webp','Quái vật băng',180000,12,4,_binary '',8),(23,'“Một trong những câu chuyện dính nhất quả đất.\"\n\nĐã bao giờ bạn tự hỏi sẽ ra sao nếu mình có trong tay một triệu bảng? Hay một tỷ? Một tỷ tỷ? Hoặc thậm chí một tỷ tỷ tỷ? Joe Spud không phải tưởng tượng sẽ ra sao nếu nó có trong tay hàng nắm, hàng đống, hàng núi tiền. Dù mới mười hai tuổi, nó đã giàu đến nực cười, giàu đến phi lý.\n\nJoe có trong tay mọi thứ nó muốn. Trừ một điều Joe vẫn hằng mong mỏi, tha thiết, khát khao có được hơn bất cứ thứ gì khác trên đời... MỘT NGƯỜI BẠN!!!',5,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710386661/products/nfo0uffepvukwge2uzes.webp','Nhóc tì tỉ phú',109000,18,4,_binary '',8),(24,'Chú bé Peter Pan - chú bé không bao giờ lớn - một đêm mò đến phòng trẻ của nhà Darling gồm Wendy, Jonh và Micheal. Chú đã dạy cho chúng biết bay, và mang chúng qua bầu trời tới Neverland, xứ sở thần thoại có người Da đỏ, sói, tiên cá và... lũ cướp biển.\n\nCầm đầu lũ cướp biển là thuyền trưởng Hook nham hiểm. Một tay hẳn đã bị đớp mất bởi một con cá sấu, con vật mà, như Hook giải thích, \"đã thích tay tao đến mức nó cứ bám riết lấy tao từ đó, thèm thuồng muốn liếm nốt cái phần còn lại\". Sau rất nhiều biến cố, câu chuyện đạt tới đỉnh điểm khi Peter, Wendy và lũ trẻ phải đối mặt trong trận chiến với lũ cướp biển và đã giành chiến thắng giòn dã. Tất cả trở về nhà Wendy trong vòng tay yêu thương của ông bà Darling, chỉ có Peter Pen tiếp tục ở lại Nerverland, bởi cậu bé thích cuộc sống tự do, vô tư lự bên các nàng tiên hơn là trở thành một người lớn khuân mẫu và nghiêm nghị.',8,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710386705/products/h7ojmirnjkz0oav6dzjx.webp','Peter Pan',70000,20,3,_binary '',8),(25,'Chiến binh Cầu vồng có cả tình yêu trong sáng tuổi học trò lẫn những trò đùa tinh quái, cả nước mắt lẫn tiếng cười – một bức tranh chân thực về hố sâu ngăn cách giàu nghèo, một tác phẩm văn học cảm động truyền tải sâu sắc nhất ý nghĩa đích thực của việc làm thầy, việc làm trò và việc học.\n\nTác phẩm đã bán được trên năm triệu bản, được dịch ra 26 thứ tiếng, là một trong những đại diện xuất sắc nhất của  văn học Indonesia hiện đại.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710386774/products/uzhr72k1ykhhldxwnj6a.webp','Chiến binh cầu vồng',109000,22,4,_binary '',8),(26,'Cá hồi có tập quán sinh sản đặc biệt: chúng được sinh ra ở thượng nguồn những con suối rồi xuôi theo dòng nước ra đại dương. Sau khi vùng vẫy thỏa sức ở biển lớn, chúng tìm đường trở về nơi mình sinh ra để đẻ trứng, tiếp nối sự sống của giống loài.\n\nHành trình quay về của loài cá hồi đã gợi cảm hứng để Tâm Bùi suy nghĩ về hành trình của bản thân: trở về để hiểu chính mình, tìm ra phương thuốc chữa lành cho tâm hồn, vực dậy cho thân tâm trở nên mạnh mẽ và bắt đầu cho đi để làm cuộc sống tốt đẹp hơn.',2,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1710386836/products/y0d8b4mcdumfx67jkdxp.webp','Cá hồi - Hành trình tĩnh thức',99000,34,5,_binary '',7),(27,'Tác giả: Rena\r Nhà xuất bản: Nxb Hà Nội\r Nhà phát hành: AZ books\r Nối tiếp câu chuyện là quá trình hòa nhập vào với cuộc sống con người của Lôi Thần khi gặp những người bạn của Omura, trải nghiệm thế giới loài người mà anh chưa từng biết tới. Từ những thứ nhỏ nhặt nhất như món cơm nắm siêu to siêu ngon do ... Xem thêm',5,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Đám Ma Tôi',716000,995,5,_binary '\0',4),(28,'Tác giả: Rena',4,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548239/products/e2gljp4rkux1puw8hyrd.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',1590000,198,2,_binary '\0',4),(29,'Tác giả: Rena',3,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',1750000,2994,6,_binary '\0',4),(30,'Tác giả: Rena',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',1358000,597,3,_binary '\0',4),(31,'Tác giả: Rena',1,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548250/products/mn4damiiyjtm4pbeslxu.jpg','Sự Im ',1089000,795,5,_binary '\0',4),(32,'Sản phẩm đồng hồ mang thương hiệu Elio với nhiều mẫu mã năng động, trẻ trung nhưng không kém phần tinh tế và sang trọng, phù hợp với tất cả mọi người hoạt động ở nhiều lĩnh vực từ dân văn phòng đến doanh nhân.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',1548000,6860,8,_binary '\0',4),(33,'Sản phẩm đồng hồ mang thương hiệu Elio với nhiều mẫu mã năng động, trẻ trung nhưng không kém phần tinh tế và sang trọng, phù hợp với tất cả mọi người hoạt động ở nhiều lĩnh vực từ dân văn phòng đến doanh nhân.',3,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',1424000,8681,5,_binary '\0',4),(34,'Đồng hồ Orient đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ Orient với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ Orient chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.',5,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',7137000,197,3,_binary '\0',4),(35,'Đồng hồ Orient đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ Orient với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ Orient chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.',1,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548299/products/ldekbmnoaesji9jnzfcy.jpg',' Bầy Cừu',10890000,397,3,_binary '\0',4),(36,'Đồng hồ Orient đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ Orient với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ Orient chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.',35,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548402/products/byvkzoeemkmotbeinw8d.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',21000000,990,10,_binary '\0',4),(37,'Có 3 cách lấy nước gồm bơm tay, nút nhấn điện tử, chạm cốc lấy nước\nTùy theo nhu cầu, hoàn cảnh sử dụng mà bạn chọn cách lấy nước phù hợp',45,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',1200000,1994,6,_binary '\0',1),(38,'Bàn ủi hơi nước Hommy HJ-8060 mang thiết kế hiện đại, sang trọng, công suất lớn 2200W ủi đồ nhanh, dung tích bình chứa lớn 300 ml ủi được nhiều quần áo hơn.\nThiết kế của sản phẩm\n- Thiết kế tinh tế, gọn đẹp, màu xanh dương bắt mắt với trọng lượng chỉ khoảng 1.3 kg thuận tiện ủi quần áo mà không hề mỏi tay khi cầm lâu.',30,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',49000,993,7,_binary '\0',2),(39,'Máy vắt cam Hommy đa dạng chức năng, thích hợp sử dụng vắt các loại quả có múi\nSản phẩm thích hợp sử dụng cho gia đình có nhu cầu thích uống nước cam, canh, quýt,... vắt khoảng 10 trái trở lên hoặc nhu cầu kinh doanh quy mô nhỏ.',35,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',63000,1994,6,_binary '\0',3),(40,'Quạt điều hòa Kangaroo có 2 hộp đá khô kèm theo giúp làm mát hiệu quả hơn cho những ngày nắng nóng cao điểm\nĐá khô là 1 loại đá hóa học, khi muốn làm lạnh thì cho hộp đá khô vào ngăn đá tủ lạnh (đá này có thể tái sử dụng), sau đó cho vào bình chứa nước của quạt, đá khô sẽ có công dụng làm lạnh nước giúp hơi nước tỏa ra được mát mẻ hơn.',30,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',6690000,1994,6,_binary '\0',4),(41,'Máy xay sinh tố Sunhouse màu xanh lá cây nhẹ nhàng, có 3 cối xay thoải mái xay thực phẩm khác nhau mà không sợ bám mùi',38,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',649000,2992,8,_binary '\0',5),(42,'Nồi cơm điện nắp gài Kangaroo với kiểu dáng gọn gàng, tông màu tươi sáng',32,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',660000,4494,6,_binary '\0',6),(43,'Sunhouse Mama SHD5505 sử dụng công nghệ ép chậm hiện đại, giữ trọn dưỡng chất trong nguyên liệu xay ép\nNước ép thành phẩm không bị biến đổi màu sắc và hao hụt dưỡng chất do nhiệt như khi xay ép bằng lực ly tâm, vì thế nước ép thật màu hơn, sánh mịn thơm ngon và giữ nguyên lượng dinh dưỡng có lợi có sức khỏe.',37,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',3190000,3197,3,_binary '\0',7),(44,'Nồi chiên không dầu Joyoung có thể hẹn giờ lên đến 24 tiếng, chủ động thời gian chiên nướng thực phẩm\nNgười dùng chọn thời gian nấu phù hợp, sau đó rảnh tay để thuận tiện làm những công việc khác trong khi chờ món ăn chín, rất tiện lợi.',38,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',2916000,996,4,_binary '\0',8),(45,'Làm mát với 2 hộp đá khô tặng kèm giúp quạt giải nhiệt hiệu quả hơn cho không gian sống gia đình những ngày nắng nóng',25,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548239/products/e2gljp4rkux1puw8hyrd.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',5890000,990,10,_binary '\0',9),(46,'Thiết kế nhỏ gọn, chắc chắn\nSmart Tivi Casper 32 inch 32HX6200 thiết kế lịch lãm với gam màu đen sang trọng, màn hình tràn viền 3 cạnh, cho tầm nhìn của bạn \"khóa chặt\" vào nội dung đang được trình chiếu, hạn chế xao nhãng khi xem tivi. Chân đế chữ V úp ngược giữ tivi đứng ổn định trên mặt bàn, kệ.\nKích cỡ tivi 32 inch nhỏ gọn, bày trí phù hợp cho phòng ngủ, phòng khách, văn phòng nhỏ theo kiểu để bàn hoặc treo tường tùy theo thiết kế nội thất của ngôi nhà, công ty.',10,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',4990000,998,2,_binary '\0',8),(47,'Android Tivi Casper 43 inch 43FG5200 có kiểu dáng tối giản, sang trọng với gam màu đen thanh lịch, đứng vững vàng trên mặt bàn, kệ tivi nhờ có chân đế hình chữ V úp ngược cứng cáp. Nếu không thích kiểu bố trí để bàn, bạn cũng có thể chọn cách treo tường, tivi lắp đặt đơn giản và tiện lợi.',5,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548239/products/e2gljp4rkux1puw8hyrd.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',7790000,994,6,_binary '\0',7),(48,'Thiết kế đơn giản, màn hình tràn viền sang trọng\nSmart Tivi Casper 43 inch 43FX6200 được thiết kế với màn hình tràn viền ba cạnh sang trọng, mang lại trải nghiệm vô cùng hoàn hảo và ấn tượng. Chân đế chữ V úp ngược giúp tivi đứng vững vàng và ổn định. \nTivi Casper 43 inch gọn gàng, phù hợp đặt ở các vị trí như: phòng khách, phòng ngủ, văn phòng nhỏ...',9,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',7040000,300,0,_binary '\0',6),(49,'Thiết kế ấn tượng, sang trọng với màn hình tràn viền 3 cạnh\nAndroid Tivi AQUA 4K 50 inch LE50AQT6600UG tô điểm không gian lắp đặt nhờ thiết kế thanh mảnh, sang trọng, màn hình tràn viền độc đáo, tinh tế cả khi lắp đặt treo tường hay trên kệ tủ.\nTivi AQUA 50 inch phù hợp sử dụng cho các phòng vừa và nhỏ như phòng khách gia đình, phòng ngủ, phòng họp nhỏ…',21,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548239/products/e2gljp4rkux1puw8hyrd.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',12490000,686,0,_binary '\0',5),(50,'Thiết kế đơn giản, thanh lịch\nSmart Tivi Casper 32 inch 32HG5200 được thiết kế với vóc dáng vô cùng đơn giản, viền tivi mỏng 0,8 mm kết hợp với chân đế hình chữ V úp ngược mang lại tổng thể chiếc tivi trở nên sang trọng.\nTivi Casper 32 inch phù hợp trưng bày ở những nơi có không gian nhỏ như: Phòng ngủ, phòng khách nhỏ,...',9,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',5440000,1998,2,_binary '\0',4),(51,'Adaptive PictureAmbient Mode+Brightness/Color DetectionQuantum AI 4KChuyển động mượt Motion Xcelerator Turbo+Chế độ Game Motion PlusChống chói Anti ReflectionChống xé hình FreeSync Premium ProCông nghệ kiểm soát đèn nền Quantum MatrixGiảm độ trễ chơi game Auto Low Latency Mode (ALLM)Góc nhìn siêu rộng Ultra Viewing AngleHDR10+Quantum DotQuantum HDR 1500 nitsQuantum Mini LEDSuper Ultra Wide Game View & Game BarSupreme UHD Dimming',30,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',41990000,997,3,_binary '\0',3),(52,'Thiết kế AirSlim thanh mảnh, hài hoà\nSmart Tivi QLED 4K 43 inch Samsung QA43Q65A được mang lên trên mình thiết kế không viền 3 cạnh loại bỏ cảm giác hình ảnh bị giới hạn, chân tivi có dạng hình chữ L đẹp mắt và vững vàng. \nTivi Samsung 43 inch phù hợp cho các không gian vừa như: phòng ngủ, phòng khách,...',25,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',16900000,998,2,_binary '\0',2),(53,'Thiết kế sang trọng, chân đế chắc chắn\nAndroid Tivi TCL 43 inch L43S5200 có thiết kế hiện đại, gọn gàng, khung viền được làm mỏng cho màn hình phủ trọn tầm nhìn của bạn, mang đến trải nghiệm tuyệt vời, không bị giới hạn.\nTivi TCL 43 inch có chân đến chữ V úp ngược bằng kim loại bền bỉ, đứng vững trên mặt bàn, kệ, không sợ bị nghiêng, đổ khi lắp đặt trong không gian phòng ngủ, phòng khách hay phòng hội nghị.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',8290000,998,2,_binary '\0',1),(54,'Thiết kế tối giản, chân đế cứng cáp\nSmart Tivi Samsung 32 inch UA32T4500 gây ấn tượng mạnh với viền và chân đế màu đen tuyền cuốn hút, mạnh mẽ.\nKích cỡ tivi Samsung 32 inch nhỏ gọn, bố trí hài hòa trong các không gian có diện tích vừa và nhỏ như: phòng khách, phòng ngủ, phòng làm việc..',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548486/products/upy4yfzgpkfdx8kkzoqw.jpg','Sự Im Lặng Của Bầy Cừu (Tái Bản',8000000,1000,0,_binary '\0',2),(55,'Thiết kế gọn gàng, sang trọng\nTivi LED Sony KD-43X75 là tivi màn hình phẳng, cạnh viền được làm mỏng tinh tế cho bạn hoàn toàn đắm chìm vào nội dung đang được trình chiếu trên tivi. \nMàn hình tivi 43 inch sử dụng chân đế hình chữ V ngược thanh mảnh nhưng vẫn chắc chắn, dễ dàng bố trí gọn đẹp trong mọi không gian hoặc bạn có thể treo tường gọn gàng trong phòng khách, phòng họp của bạn thêm cao cấp.',10,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1686548239/products/e2gljp4rkux1puw8hyrd.jpg','Điểm Dối Lừa',12900000,998,2,_binary '\0',3),(56,'Holden Caulfield, 17 tuổi, đã từng bị đuổi học khỏi ba trường, và trường dự bị đại học Pencey Prep là ngôi trường thứ tư. Và rôi cậu lại trượt 4 trên 5 môn học và nhận được thông báo đuổi học. Câu chuyện kể về chuỗi ngày tiếp theo sau đó của Holden, với ánh nhìn cay độc, giễu cợt vào một cuộc đời tẻ nhạt, xấu xa, trụy lạc và vô phương hướng của một thanh niên trẻ.\n\nBắt trẻ đồng xanh đã từng trở thành chủ đề tranh luận hết sức sâu rộng tại Mỹ. Sau rất nhiều thị phi, tác phẩm đã được đưa vào giảng dạy tại chương trình trung học Mỹ. Và hơn thế, tạp chí Time đã xếp Bắt trẻ đồng xanh vào một trong 100 tác phẩm viết bằng tiếng Anh hay nhất từ năm 1923 đến nay.',0,'2024-03-13','https://res.cloudinary.com/martfury/image/upload/v1710334697/products/jkomyrffhli9n66qeytr.webp','Bắt trẻ đồng xanh',85000,50,0,_binary '',9),(57,'Làm sao học hết được nhân sinh? với những bài giảng súc tích, dung dị, đôi khi không kém phần dí dỏm của thiền sư Pomnyun sẽ gửi đến bạn - người đang quay cuồng giữa các hệ giá trị liên tục biến ảo của xã hội hiện đại – lời giải đáp vừa ân cần lại vừa thực tế cho câu hỏi “Mình có đang sống tốt không?” mà ai ai cũng từng ít nhất một lần trăn trở trong đời ấy.\n\nMột cuốn sách không chỉ vỗ về tâm hồn bạn đang tổn thương mà còn thức tỉnh tâm trí bạn vẫn còn mù mờ. Kể từ lần xuất bản đầu tiên năm 2013, Làm sao học hết được nhân sinh? đã nhiều tuần đứng đầu danh sách sách bán chạy và liên tục nằm trong top 10 sách Phật giáo được nhiều người đọc nhất tại Hàn Quốc.',1,'2024-03-14','https://res.cloudinary.com/martfury/image/upload/v1710386902/products/grqyrhvhibkao0lquo0v.jpg','Làm sao học hết được nhân sinh',169000,50,0,_binary '',7),(58,'Cuốn sách gồm 25 bài tập, được xếp vào bốn mục lớn, từ những bài tập căn bản như cách sử dụng hơi thở, cơ thể, ý thức vào giây phút hiện tại, cho tới những bài thực hành sâu như đối mặt với nỗi đau, ổn định cảm xúc, đạt được tâm an bình trong dòng chảy của cuộc đời. Và khép lại cuốn sách là phần sổ tay với những lời khuyên dành cho độc giả và để độc giả tự rút ra kinh nghiệm thiền định cho mình. Nếu bạn là người mới tập thiền, cuốn sách này có thể là một khởi đầu khiến bạn muốn đi xa hơn. Còn nếu bạn thiền đã lâu, các bài tập trong cuốn sách có thể làm tươi mới việc thực hành cá nhân của bạn.',0,'2024-03-14','https://res.cloudinary.com/martfury/image/upload/v1710386952/products/v02sncdorelqdto8mirk.webp','Thiền định mỗi ngày ',118000,26,0,_binary '',7),(59,'Bốn mùa (1938), Trời và Đất (1942), mượn ẩn dụ từ sự trải nghiệm cuộc sống, qua những quy luật linh thiêng mà hiển nhiên: đất- trời, cao- thấp, sự tuần hoàn luân chuyển của vạn vật qua nóng- lạnh, héo- tươi, sinh- diệt… để làm phát lộ những ẩn khuất trong mối tương quan giữa con người, giữa lý tưởng và bản năng, giữa những cách thức khác nhau để trở nên “vĩnh cửu” về mặt tinh thần, viết… Márai đã phát hiện khía cạnh nhân tính trong những ý niệm tưởng chừng vô luân, những giá trị cao cả trong điều vụn vặt. Một hình dung về F. R. Chateaubriand khi không mang “vòng hào quang” người đời gán ghép, nhanh nhảu rẽ vào nhà thổ. Một Goethe “cháu ông thợ may” chưa bao giờ thành đạt, ở Weirma. Lòng nhân từ trái khoáy khi mua được phẩm hạnh con người trong nhà chứa…',0,'2024-03-14','https://res.cloudinary.com/martfury/image/upload/v1710387219/products/udsreewi2fb1enl4owy4.webp','Bốn mùa, trời và đất',170000,30,0,_binary '',7),(60,'Con người nếu muốn phát triển lành mạnh thì cần hiểu được tâm trí của bản thân và tha nhân. Vì lẽ đó, các nhà tâm lý học luôn tìm cách phân tích, lý giải điều này. Tư duy như nhà tâm lý học chỉ ra cách thức họ đặt và trả lời các câu hỏi về hoạt động của tâm trí, nguyên nhân sâu xa của những hành xử và cảm xúc của chúng ta.\n\nMỗi chương trong cuốn sách này sẽ đi vào một vấn đề lớn và cho thấy các bộ óc vĩ đại đã giải quyết những vấn đề mà tất cả chúng ta phải đối mặt như thế nào – bản chất của tâm trí là gì và tại sao chúng ta làm những việc mà chúng ta làm.',0,'2024-03-14','https://res.cloudinary.com/martfury/image/upload/v1710387350/products/wico5qiwi5uewikgbuza.webp','Tư duy như nhà tâm lý học',139000,20,0,_binary '',7),(61,'Liệu đó có phải là sự thật? Liệu tiếng sét ái tình có tồn tại?\n\nNàng là người Mỹ, chàng là người Pháp.\n\nNàng rất béo, chàng rất to.\n\nChàng thích thứ chính xác, nàng thích thứ mơ hồ.\n\nChàng thích cô đơn, nàng yêu mọi người.\n\nChàng thích yên tĩnh, nàng thích ồn ã.\n\nThế như họ lại yêu nhau.\n\nHọ gặp nhau giữa lòng Jerusalem và làm tất cả để không rời xa nhau, bất chấp những khác biệt văn hóa về sở thích.\n\nDịu dàng, tinh tế, hài hước: không có ai có thể sánh với Susie Morgenstern trong việc kể chuyện tình điên rồ!',2,'2024-03-14','https://res.cloudinary.com/martfury/image/upload/v1710387411/products/h71ldfyfklgj5fbupipv.webp','Yêu và cưới',68000,20,0,_binary '',6),(62,'Một trái tim cuồng dại đâu thể mãi náu mình trong vẻ ngoài thơ ngây và lãnh đạm!\n\nVốn là cô gái sống bất chấp phép tắc, luôn sôi sục nhiệt huyết, nhưng sau cái chết của mẹ, Ella đã bỏ lại cuộc đời cũ cùng nụ hôn trên cầu với cậu bạn thân Micha để gò ép mình vào một bản ngã khác.\n\nSau tám tháng gặp lại, Micha không còn nhận ra Ella của mình nữa. Cô khoác lên mình những bộ cánh điệu đà cùng thái độ thờ ơ lạnh nhạt để giấu đi nhiều bí mật, trong đó có bí mật liên quan tới Micha. Và giờ Micha quyết tâm tìm lại Ella của ngày xưa, bất chấp cái giá mà cậu phải trả.\n\nVới lỗi viết khúc chiết mà sắc sảo, Jessica Sorensen đã khéo dồn vào cuốn sách của mình bao cảm xúc, bao đam mê của một mối tình thơ trẻ với những đau đớn dằng dai. Mối tình ấy, câm lặng nhưng sục sôi, sẽ khiên lòng ta ấm áp trong nỗi mơ hồ khó nắm bắt.',4,'2024-03-14','https://res.cloudinary.com/martfury/image/upload/v1710387465/products/tnsuvjelit8d9utiwyru.webp','Bí mật của Ella và Micha',72000,45,0,_binary '',6),(63,'Khi thân xác nằm lại, linh hồn trở nên lạc lối và cần nơi ẩn náu.\n\nHằng đêm, Makepeace luôn phải đấu tranh bảo vệ bản thân khỏi những hồn ma tìm cách xâm nhập vào tâm trí mình. Nhưng sau một sự kiện kinh hoàng khiến Makepeace mất cảnh giác, một linh hồn đã chui vào được bên trong cô. Ấy thế mà linh hồn hoang dã, tàn bạo và mạnh mẽ ấy lại chính là thứ duy nhất bảo vệ Makepeace, khi cô chuyển về sống với gia đình giàu có và quyền thế của cha mình – gia tộc Fellmotte.\n\nKhi nội chiến nổ ra, đất nước lâm vào loạn lạc; nhận ra bản thân sắp trở thành một con cờ trong tham vọng quyền lực của nhà Fellmotte, Makepeace quyết định thoát thân. Giữa một nước Anh bị giày xéo bởi chiến tranh, Makepeace thấy mình liên tục bị cuốn theo dòng chảy của số phận, từ nông thôn đến thành thị, từ phe này sang phe khác; và trong cuộc trốn chạy miên man không đích đến ấy, cô phải tìm mọi cách để không đánh mất chính mình.',10,'2024-03-14','https://res.cloudinary.com/martfury/image/upload/v1710387518/products/o4gskhv9r5hxesq6mmaq.webp','Vật chứa linh hồn',200000,50,0,_binary '',6),(64,'Tru Walls, 42 tuổi, là một hướng dẫn viên tham quan động vật hoang dã. Từ Zimbabwe, Tru lần đầu tới Sunset Beach để tìm hiểu về những năm tháng tuổi trẻ của mẹ, sau khi nhận được lá thư từ một người tự nhận là cha ruột của anh. Hope Anderson, 36 tuổi, là y tá chấn thương tại Bắc Carolina. Trong giai đoạn khủng hoảng cá nhân, cô quyết định tới ngôi nhà nhỏ của gia đình ở Sunset Beach để nghỉ ngơi và cân nhắc một số quyết định quan trọng.\n\nVô tình chạm mặt nhau, rồi tìm thấy ở nhau sự đồng cảm trong tâm hồn, định mệnh của Tru và Hope cứ thế đan vào với nhau, vấn vít mãi không rời.\n\nCâu chuyện về một cuộc gặp gỡ tình cờ lại xoay vần cuộc đời của hai con người hoàn toàn khác biệt, vượt qua không gian, thời gian, và cả những sắp đặt tréo ngoe của định mệnh.',0,'2024-03-14','https://res.cloudinary.com/martfury/image/upload/v1710387595/products/wycqbpyverletynoyvjt.webp','Trong từng hơi thở ',169000,20,0,_binary '',6),(65,'Lịch sử Việt Nam trải hàng nghìn năm đã sản sinh nên biết bao danh nhân lỗi lạc.\n\nHọ là những danh nhân về học vấn, chính trị, quân sự hoặc kỹ thuật,… nhưng tất cả đều kế tiếp nhau gom tài góp sức làm cho tổ quốc ngày một vẻ vang.\n\nCảm phục tài năng, phẩm chất tốt đẹp cùng những đóng góp lớn lao của tiền nhân, Doãn Kế Thiện đã kể lại những câu chuyện về các danh nhân nước Việt. Đó là chuyện về Nguyễn Công Trứ ngang tàng mà suốt đời lận đận vì dân vì nước, chuyện về Trạng Bùng Phùng Khắc Khoan đấu trí với ngoại bang để không làm mất thể diện nước nhà, chuyện về Nguyễn Văn Giai đến tranh hôn để trả nghĩa người con gái năm xưa,… Kể lại những câu chuyện trên, tác giả muốn lấy đó làm gương để những thế hệ sau “cùng ngắm cùng soi những con đường các người xưa đã vạch đã đi, sẽ cùng nhau tiếp bước theo chân, đưa dắt giống nòi mỗi ngày mỗi tiến”.',12,'2024-03-14','https://res.cloudinary.com/martfury/image/upload/v1710387742/products/jckieztid6sqwvnti5s3.webp','Danh nhân Việt Nam',62000,25,0,_binary '',4),(66,'Với Việt Nam sử lược, sử học Việt Nam lần đầu tiên có một công trình thoát ly được khỏi lối chép sử biên niên truyền thống của Trung Quốc vốn chỉ nêu lên từng sự kiện riêng lẻ, rời rạc. Việt Nam sử lược trình bày các diễn biến lịch sử thành một câu chuyện liên tục và hấp dẫn, cho người đọc thấy được mối liên lạc nhân quả, biện chứng giữa các sự kiện xảy ra theo dòng thời gian. Ngoài ra, khác với lối chép sử của các sử thần thời phong kiến thường chỉ chú ý ghi chép hành vi, hoạt động của vua chúa quan lại, những cuộc tranh bá đồ vương, Việt Nam sử lược trái lại đã bắt đầu chú ý nhiều đến những sự kiện liên quan đời sống thực tế của dân chúng, sinh hoạt của xã hội, phong tục, tín ngưỡng, v.v… Tất cả đều được thể hiện với một thái độ điềm tĩnh, khách quan, và công bằng đúng như một sử gia cần có.',11,'2024-03-14','https://res.cloudinary.com/martfury/image/upload/v1710387869/products/mtkqai7g7bzgglf7awwz.webp','Việt Nam sử lược - bìa cứng',380000,15,0,_binary '',4),(67,'Cái Đẹp là gì? Nghệ thuật, thị hiếu, thời trang là gì? Liệu Cái Đẹp có phải điều gì đó có thể định nghĩa một cách lý tính, hay chẳng qua đó chỉ là một đánh giá thuần tính chủ quan? Công cuộc khám phá Cái Đẹp của Umberto Eco bắt đầu như thế đó. Với việc nghiên cứu chi tiết và cặn kẽ những tác phẩm quan trọng nhất trong văn hóa phương Tây, từ tượng Vệ Nữ Milo đến Marilyn của Andy Warhol, từ các quái thú của Jérôme Bosch đến tranh Đức Mẹ của Botticelli hay các cung tần của Manet, Umberto Eco đã dựng nên bức tranh trọn vẹn, phản ánh các gương mặt khác nhau của Cái Đẹp, tạo nên chuyến du hành đích thực suốt từ thời Hy Lạp cổ đại đến tận ngày nay.\n\nTác phẩm thú vị này hẳn sẽ bóp nghẹt mọi định kiến xưa cũ và qua mỗi chương lại vẽ nên một tấm bản đồ thực sự về sự dịu dàng của Cái Đẹp.',9,'2024-03-14','https://res.cloudinary.com/martfury/image/upload/v1710387952/products/h7w5ktey8vtxjstn9fi1.webp','Lịch sử cái đẹp - bìa cứng',459000,52,0,_binary '',3),(68,'Sáng tạo nghệ thuật chỉ có thể nở rộ trong một xã hội hưng thịnh, phồn vinh, dưới sự cai trị của những ông hoàng giàu sang và nhờ vào một chế độ bảo trợ sáng suốt. Tất cả những điều đó đều thiếu vắng ở xứ An Nam, nơi đến cả những thú vui của cuộc sống thái bình cũng còn là điều hiếm. Ấy thế mà, các nghệ nhân xứ này, từ đời này sang đời khác, vẫn tạo ra được một dấu ấn riêng hết sức duyên dáng, thanh lịch, thậm chí quyến rũ, nhờ tài khéo léo đến hoàn hảo trong kỹ thuật chế tác.\n\nCuốn sách là cái nhìn khách quan và toàn cảnh của một người Pháp từng sinh sống và gắn bó với xứ An Nam một thời gian dài, được minh họa bằng 16 bức ảnh tư liệu quan trọng, giúp độc giả hình dung rõ hơn về bối cảnh chung của xã hội An Nam đầu thế kỷ 20, cũng như nghệ thuật kiến trúc, điêu khắc, hội họa và các ngành thủ công mỹ nghệ ở nước ta thời kỳ đó.',8,'2024-03-14','https://res.cloudinary.com/martfury/image/upload/v1710388078/products/ayyvgy0jmtmravgqjsbt.webp','Nghệ thuật xứ An Nam',89000,10,0,_binary '',3),(69,'Bắt nguồn từ triết lý tuyên truyền lợi dụng những lời dối trá hoang đường của Goebbels, các tập đoàn công nghiệp lớn đã áp dụng chúng để khiến công chúng rơi vào nghi ngờ chính niềm tin trước kia của mình, từ đó khiến cho các sản phẩm độc hại trở thành \"con gà đẻ trứng vàng\" mang đến một nguồn lợi nhuận khổng lồ. Cũng từ đây, một ngành làm ăn béo bở mới ra đời từ giữa thế kỷ 20, và vẫn còn tồn tại đầy mạnh mẽ đến tận bây giờ: Khoa học vụ lợi.\n\nVới nhiều năm kinh nghiệm khi phục vụ hai đời tổng thống Mỹ, cũng như kinh qua nhiều chức vụ quan trọng trong bộ máy chính quyền đất nước cờ hoa, David Michaels đã nhìn thấu và phơi bày chi tiết các mánh khóe của các tập đoàn công nghiệp nhằm làm suy yếu bằng chứng, định hướng dư luận, trì hoãn các quy định bảo vệ và thắng các vụ kiện tụng như những nguyên đơn đã và đang chịu thiệt hại.',10,'2024-03-14','https://res.cloudinary.com/martfury/image/upload/v1710388142/products/pysggxhtobwksaaplhnl.webp','Tiền bẩn và ngụy khoa học',209000,25,0,_binary '',2),(70,'Chiến lược hướng đến chất lượng xuất sắc toàn cầu của Hàn Quốc đã được phác họa qua những hình mẫu tiêu biểu là 6 công ty hàng đầu, Samsung Electronics, Hyundai, LG Chemical, Posco, KT, và YG-1, Với những chiến lược then chốt: đặt ra và kiên trì “độ dốc” chất lượng hàng đầu thế giới; áp dụng những quy trình kiểm soát chất lượng tiên tiến và nghiêm ngặt nhất; một ban lãnh đạo quyết tâm theo đuổi mục tiêu trở thành hàng đầu; ý chí, sự tận tụy và tinh thần kỷ luật của người dân Hàn Quốc, điểm tựa cho toàn bộ chiến lược; lãnh đạo quốc gia phải biết chọn cho Hàn Quốc những đối tác kinh tế quốc tế hàng đầu; cuốn sách này có thể được coi như một bản tổng kết khái quát về con đường phát triển của Hàn Quốc, từ một nền kinh tế sản xuất những sản phẩm giá rẻ, chất lượng thấp lên một nền kinh tế của những sản phẩm chất lượng hàng đầu thế giới.',7,'2024-03-14','https://res.cloudinary.com/martfury/image/upload/v1710388182/products/lbhrotcp0qldmv25h5sm.webp','Hàn quốc chất lượng cao ',260000,75,0,_binary '',2),(71,'Con người đối với con người không hơn gì ác thủ rừng sâu. Những bạo động, âm mưu, thanh toán đã xô đẩy con người vào những bị kịch đầy ắp hận thù, lo âu, nước mắt, máu và hối hận. Nhưng chỉ một trận chiến vừa qua đi là con người lại mưu toan, sửa soạn cho những trận chiến kế tiếp. Lịch sử nhân loại cận đại và hiện đại đã cho thấy nhiều cơn cuống bão như muốn hủy diệt bao công trình văn minh con người đã dày công xây đắp.\n\nRussell là một khuôn mặt lớn trong triết học và toán học. Ông là một triết gia lỗi lạc, nhưng công trình không chỉ giới hạn trong những tác phẩm triết học hoặc toán học, lòng yêu thương con người đã khiến ông viết rất nhiều về những vấn đề xã hội mà cuốn Quyền lực là một trong số đó. Ông đặc biệt nhấn mạnh đến sự tiến hóa của ý niệm quyền lực theo suốt dòng lịch sử, trên quan điểm nhân bản, đứng về đám đông nhân loại đang gào thét đòi hỏi công lý, đòi con người phải đối xử nhân đạo với chính con người.',2,'2024-03-14','https://res.cloudinary.com/martfury/image/upload/v1710388232/products/vunnkx5obnuwse7qpsdv.webp','Quyền lực ',155000,50,0,_binary '',1),(72,'Hơn cả lòng trung thành là cuốn hồi ký của một nhân vật đặc biệt. Tác giả cuốn sách, James Comey, đứng ở trung tâm các cơn lốc chính trị Hoa Kỳ suốt từ thời Tổng thống Bush, qua thời Tổng thống Obama và kết thúc ở đầu nhiệm kỳ Tổng thống Trump.\n\nLà một quan chức cao cấp trong lĩnh vực tư pháp và chấp pháp, với lập trường xuyên suốt là bảo vệ người dân Mỹ, bảo vệ hiến pháp Mỹ, bảo vệ sự chính trực của hệ thống tư pháp, đồng thời luôn đề cao đạo đức của người lãnh đạo, James Comey liên tục va chạm với Nhà Trắng trong những vụ việc cực kỳ sóng gió, trong đó có thể kể đến việc phản đối chính quyền Bush nghe lén người dân, vụ điều tra Hillary Clinton và vụ điều tra can thiệp của Nga vào bầu cử tổng thống Mỹ.\n\nCuộc “đụng độ” cuối cùng của ông với Tổng thống Donald Trump, người mà ông cho là vô nguyên tắc, bất chấp luật pháp, đạo đức và sự thật, người “lãnh đạo” nước Mỹ theo kiểu “trùm xã hội đen”, dẫn đến việc ông bị sa thải',3,'2024-03-14','https://res.cloudinary.com/martfury/image/upload/v1710388270/products/wsys2mydec6gvqrftr3s.webp','Hơn cả lòng trung thành ',175000,50,0,_binary '',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rates` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `rate_date` datetime DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `order_detail_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKoesgfm245y1ula1pn74fw9mkk` (`order_detail_id`),
  KEY `FK4mdsmkrr7od84tpgxto2v3t2e` (`product_id`),
  KEY `FKanlgavwqngljux10mtly8qr6f` (`user_id`),
  CONSTRAINT `FK4mdsmkrr7od84tpgxto2v3t2e` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKanlgavwqngljux10mtly8qr6f` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKoesgfm245y1ula1pn74fw9mkk` FOREIGN KEY (`order_detail_id`) REFERENCES `order_details` (`order_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` VALUES (23,'google: \"cách cướp tiền ngân hàng\" :))','2022-03-20 23:03:36',5,4,9,3);
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKihg20vygk8qb8lw0s573lqsmq` (`role_id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKihg20vygk8qb8lw0s573lqsmq` FOREIGN KEY (`role_id`) REFERENCES `app_roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(2,2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Hà Nội','greenyshop.adm@gmail.com',_binary '','https://res.cloudinary.com/martfury/image/upload/v1672120483/users/xdpatghjpfvi4z3dpofm.jpg','admin ','$2a$10$yvcT5zT/lDrM89Lofss6GeF0icqluuVVxo2QX4BehAh75k.eAzFIe','0967291997','2022-03-20',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJncmVlbnlzaG9wLmFkbUBnbWFpbC5jb20iLCJzY29wZXMiOlt7ImF1dGhvcml0eSI6IlJPTEVfQURNSU4ifV0sImlzcyI6Imh0dHA6Ly9kZXZnbGFuLmNvbSIsImlhdCI6MTY0Nzc4MjE4MywiZXhwIjoxNjQ3ODAwMTgzfQ.cLQLN6HPjClhuJFdBro1WHKEKfA7wYbBa3Eg3uHfNAE'),(3,'Hà Tĩnh','huudong297@gmail.com',_binary '','https://res.cloudinary.com/martfury/image/upload/v1673278740/users/tlyz4b113etd4z5xluaw.png','Vinh','$2a$10$FMNO9C77S9/Pae4.V11muuxKL0zKF1rdvJITCzZG61mKjygtMRhwu','0916891997','2022-03-20',_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJodXVkb25nMjk3QGdtYWlsLmNvbSIsInNjb3BlcyI6W3siYXV0aG9yaXR5IjoiUk9MRV9BRE1JTiJ9XSwiaXNzIjoiaHR0cDovL2RldmdsYW4uY29tIiwiaWF0IjoxNjQ3Nzg5NDI5LCJleHAiOjE2NDc4MDc0Mjl9.JfbZQ2D8lRg8UPWhnnLMO9R-lFW_8-r2hxV9kOVZRZM'),(4,'Hà Tĩnh','thaochi6404@gmail.com',_binary '','https://res.cloudinary.com/veggie-shop/image/upload/v1633795994/users/mnoryxp056ohm0b4gcrj.png','Trần Thảo Chi','$2a$10$EWTp2tH0Rc1osvewWztXM.ba02wWffEupaG0.jziUul7b8WYUal3K','0916855648','2022-03-23',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0aGFvY2hpNjQwNEBnbWFpbC5jb20iLCJzY29wZXMiOlt7ImF1dGhvcml0eSI6IlJPTEVfQURNSU4ifV0sImlzcyI6Imh0dHA6Ly9kZXZnbGFuLmNvbSIsImlhdCI6MTY0ODA0MzUzNywiZXhwIjoxNjQ4MDYxNTM3fQ.589LqMNNJ-NiF0s425cR_tfAr3cfhqf7rpQ_QU1AEIw'),(5,'Ha Noi','canhvinh931@gmail.com',_binary '','https://res.cloudinary.com/veggie-shop/image/upload/v1633795994/users/mnoryxp056ohm0b4gcrj.png','Nguyễn Cảnh Vinh','$2a$10$s.HWSdzRzb7mNToqyH2lJ.pOcPHVu8RmN.t.bNSVZtafGZRVQPgzu','0372651619','2022-12-25',_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJjYW5odmluaDkzMUBnbWFpbC5jb20iLCJzY29wZXMiOlt7ImF1dGhvcml0eSI6IlJPTEVfQURNSU4ifV0sImlzcyI6Imh0dHA6Ly9kZXZnbGFuLmNvbSIsImlhdCI6MTY3MTk0OTU5NCwiZXhwIjoxNjcxOTY3NTk0fQ.LYb5mqMc4MhE1HAvzYJUAyj5W7uxUSnVsZMA4NmPJ9M'),(6,'Hà Nội','thaivanha350@gmail.com',_binary '','https://res.cloudinary.com/veggie-shop/image/upload/v1633795994/users/mnoryxp056ohm0b4gcrj.png','Tháii Văn Hà','$2a$10$FHrlgpjpyFg.9ozNadJPHutS.Gm3.c0VzRVuzQr/WHCRPzKNgg0TC','0987657656','2023-02-04',_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0aGFpdmFuaGEzNTBAZ21haWwuY29tIiwic2NvcGVzIjpbeyJhdXRob3JpdHkiOiJST0xFX0FETUlOIn1dLCJpc3MiOiJodHRwOi8vZGV2Z2xhbi5jb20iLCJpYXQiOjE2NzU1MDMyMjQsImV4cCI6MTY3NTUyMTIyNH0.67IE-UXrpzeOuaSjqlH7IzSNTu5ok2KAqT4CzHIWSWQ'),(7,'134 Trương Công Định, phường 14, Quận Tân Bình, TP. Hồ Chí Minh','thanhcong.trinh2002@gmail.com',_binary '','https://res.cloudinary.com/veggie-shop/image/upload/v1633795994/users/mnoryxp056ohm0b4gcrj.png','công','$2a$10$UrXN46ci9CVu7O4lHF3nN.iXwzVvw9teAqzRlrMtjlPnZPjaZpmhi','0917564487','2024-03-01',_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0aGFuaGNvbmcudHJpbmgyMDAyQGdtYWlsLmNvbSIsInNjb3BlcyI6W3siYXV0aG9yaXR5IjoiUk9MRV9BRE1JTiJ9XSwiaXNzIjoiaHR0cDovL2RldmdsYW4uY29tIiwiaWF0IjoxNzA5MzAyODA3LCJleHAiOjE3MDkzMjA4MDd9.yxA_ENHnLw757ShEaozvLdyaZ83rMtuX9kU_VP6y5Mg'),(8,'an giang','ntdat3120411046@gmail.com',_binary '','https://res.cloudinary.com/veggie-shop/image/upload/v1633795994/users/mnoryxp056ohm0b4gcrj.png','nguyễn thành đạt','$2a$10$22ZULzpzkMOBKPBXjlG7P.plMM44MdCN4zyfHjhG20h1DjvTa7DH6','0917564487','2024-03-07',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJudGRhdDMxMjA0MTEwNDZAZ21haWwuY29tIiwic2NvcGVzIjpbeyJhdXRob3JpdHkiOiJST0xFX0FETUlOIn1dLCJpc3MiOiJodHRwOi8vZGV2Z2xhbi5jb20iLCJpYXQiOjE3MDk3Nzk1MTAsImV4cCI6MTcwOTc5NzUxMH0.G6frm6uQTJ4Sf789d1VuJeeAiipBXeYXpcAhQdw35Xw');
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

-- Dump completed on 2024-03-17 15:51:23
