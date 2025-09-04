-- MySQL dump 10.13  Distrib 8.0.43, for Linux (x86_64)
--
-- Host: localhost    Database: singitronic_nextjs
-- ------------------------------------------------------
-- Server version	8.0.43-0ubuntu0.24.04.1

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
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Category` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Category_name_key` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES ('659a91b9-3ff6-47d5-9830-5e7ac905b961','cameras'),('ss6412b4-22fd-4fbb-9741-d77580dfdcd2','computers'),('1cb9439a-ea47-4a33-913b-e9bf935bcc0b','earbuds'),('4c2cc9ec-7504-4b7c-8ecd-2379a854a423','headphones'),('8d2a091c-4b90-4d60-b191-114b895f3e54','juicers'),('782e7829-806b-489f-8c3a-2689548d7153','laptops'),('6c3b8591-b01e-4842-bce1-2f5585bf3a28','mixer-grinders'),('da6413b4-22fd-4fbb-9741-d77580dfdcd5','mouses'),('d30b85e2-e544-4f48-8434-33fe0b591579','phone-gimbals'),('fs6412b4-22fd-4fbb-9741-d77512dfdfa3','printers'),('3117a1b0-6369-491e-8b8b-9fdd5ad9912e','smart-phones'),('7a241318-624f-48f7-9921-1818f6c20d85','speakers'),('ada699e5-e764-4da0-8d3e-18a8c8c5ed24','tablets'),('313eee86-bc11-4dc1-8cb0-6b2c2a2a1ccb','trimmers'),('a6896b67-197c-4b2a-b5e2-93954474d8b4','watches');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer_order`
--

DROP TABLE IF EXISTS `Customer_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer_order` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postalCode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateTime` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderNotice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_order`
--

LOCK TABLES `Customer_order` WRITE;
/*!40000 ALTER TABLE `Customer_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `Customer_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Image`
--

DROP TABLE IF EXISTS `Image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Image` (
  `imageID` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productID` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`imageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Image`
--

LOCK TABLES `Image` WRITE;
/*!40000 ALTER TABLE `Image` DISABLE KEYS */;
/*!40000 ALTER TABLE `Image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mainImage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL DEFAULT '0',
  `rating` int NOT NULL DEFAULT '0',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inStock` int NOT NULL DEFAULT '1',
  `categoryId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Product_slug_key` (`slug`),
  KEY `Product_categoryId_fkey` (`categoryId`),
  CONSTRAINT `Product_categoryId_fkey` FOREIGN KEY (`categoryId`) REFERENCES `Category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES ('1','smart-phone-demo','Smart phone','product1.webp',22,5,'This is smart phone description','Samsung',0,'3117a1b0-6369-491e-8b8b-9fdd5ad9912e'),('10','smart-watch-demo','Smart watch','product10.webp',64,3,'This is smart watch description','Samsung',1,'a6896b67-197c-4b2a-b5e2-93954474d8b4'),('11','notebook-horizon-demo','Notebook horizon','product11.webp',52,5,'This is notebook description','HP',1,'782e7829-806b-489f-8c3a-2689548d7153'),('12','mens-trimmer-demo','Mens trimmer','product12.webp',54,5,'This is trimmer description','Gillete',0,'313eee86-bc11-4dc1-8cb0-6b2c2a2a1ccb'),('2','slr-camera-demo','SLR camera','product2.webp',24,0,'This is slr description','Canon',0,'659a91b9-3ff6-47d5-9830-5e7ac905b961'),('3','mixed-grinder-demo','Mixer grinder','product3.webp',25,4,'This is mixed grinder description','ZunVolt',1,'6c3b8591-b01e-4842-bce1-2f5585bf3a28'),('4','phone-gimbal-demo','Phone gimbal','product4.webp',21,5,'This is phone gimbal description','Samsung',1,'d30b85e2-e544-4f48-8434-33fe0b591579'),('5','tablet-keyboard-demo','Tablet keyboard','product5.webp',52,4,'This is tablet keyboard description','Samsung',1,'ada699e5-e764-4da0-8d3e-18a8c8c5ed24'),('6','wireless-earbuds-demo','Wireless earbuds','product6.webp',74,3,'This is earbuds description','Samsung',1,'1cb9439a-ea47-4a33-913b-e9bf935bcc0b'),('7','party-speakers-demo','Party speakers','product7.webp',35,5,'This is party speakers description','SOWO',1,'7a241318-624f-48f7-9921-1818f6c20d85'),('8','slow-juicer-demo','Slow juicer','product8.webp',69,5,'Slow juicer desc','Bosch',1,'8d2a091c-4b90-4d60-b191-114b895f3e54'),('9','wireless-headphones-demo','Wireless headphones','product9.webp',89,3,'This is wireless headphones description','Sony',1,'4c2cc9ec-7504-4b7c-8ecd-2379a854a423');
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `User_email_key` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('IMdTlYi-3qL_4IIXMbel3','moa@gmail.com','$2a$05$Itgyv4T.nWFbuIr8.WzS7OB3AOI1MQf4R1dZflr7JlVH61fhMDDku','user'),('XKd2-YONMIebXD-PxODi_','mo@gmail.com','$2a$05$qA01df/W3FHCXRYyrLLZsedg2c8inW51w0/igTdS.bZ0T87bJKaB6','admin');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Wishlist`
--

DROP TABLE IF EXISTS `Wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Wishlist` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Wishlist_productId_fkey` (`productId`),
  KEY `Wishlist_userId_fkey` (`userId`),
  CONSTRAINT `Wishlist_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Wishlist_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Wishlist`
--

LOCK TABLES `Wishlist` WRITE;
/*!40000 ALTER TABLE `Wishlist` DISABLE KEYS */;
INSERT INTO `Wishlist` VALUES ('ced1c7b0-f1ab-4bbc-af89-f76f23de86a7','10','XKd2-YONMIebXD-PxODi_'),('e58c41c3-7b34-41a5-9f8b-8239af9c1737','4','XKd2-YONMIebXD-PxODi_');
/*!40000 ALTER TABLE `Wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('0c808bb7-0c8e-43f3-a119-59e337b43ab2','67c9e2357bd89d4fcb90b31bc545204c0c18325bbc01508649857d395b385211','2025-08-26 12:38:06.465','20250826123805_init',NULL,NULL,'2025-08-26 12:38:05.995',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_order_product`
--

DROP TABLE IF EXISTS `customer_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_order_product` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customerOrderId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_order_product_customerOrderId_fkey` (`customerOrderId`),
  KEY `customer_order_product_productId_fkey` (`productId`),
  CONSTRAINT `customer_order_product_customerOrderId_fkey` FOREIGN KEY (`customerOrderId`) REFERENCES `Customer_order` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `customer_order_product_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Product` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_order_product`
--

LOCK TABLES `customer_order_product` WRITE;
/*!40000 ALTER TABLE `customer_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_order_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-01 15:52:44
