-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: project1
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `itemid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int DEFAULT NULL,
  `image_url` text,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`name`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (55,'Rahul','4','Iphone',90000,'https://img.freepik.com/free-vector/realistic-grey-smartphone-with-three-cameras_52683-29937.jpg?t=st=1735376793~exp=1735380393~hmac=1707a2d4f3905fd72ed261156557686739c41b29f01b2003f214597cb47b9439&w=1060'),(57,'Mahesh Balaji','15','Sofas Set',25000,'https://img.freepik.com/premium-photo/sofa-set-3d-modeling-jpeg-file-realistic-sofa-set_788415-4124.jpg?w=1060');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `price` int DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `image_url` text,
  `status` varchar(50) DEFAULT 'pending',
  `delivery_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`name`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (21,'Rahul','Shoes',3000,'2025-01-02 04:33:42','https://img.freepik.com/premium-photo/blue-white-sneaker-with-blue-band-side_970631-10045.jpg?w=1060','pending',NULL),(22,'Rahul','Water heater',5000,'2025-01-02 04:37:09','https://img.freepik.com/premium-vector/water-heater-set_251819-77.jpg?w=1800','pending',NULL),(23,'Rahul','Ac Machine',35000,'2025-01-02 07:45:31','https://img.freepik.com/free-photo/air-conditioner-mounted-white-wall_53876-128235.jpg?t=st=1735382742~exp=1735386342~hmac=5f0ba64bd3e57d6fecec3bb9a3011c5256eb962054111dde94fecc4453f122d7&w=1800','pending',NULL),(24,'Rahul','Mens Dress 3',5999,'2025-01-02 08:40:17','/static/men/3.jpg','pending',NULL),(25,'Rahul','Ac Machine',35000,'2025-01-03 03:59:48','https://img.freepik.com/free-photo/air-conditioner-mounted-white-wall_53876-128235.jpg?t=st=1735382742~exp=1735386342~hmac=5f0ba64bd3e57d6fecec3bb9a3011c5256eb962054111dde94fecc4453f122d7&w=1800','pending',NULL),(26,'Rahul','Laptop',45000,'2025-01-03 04:03:12','https://images.pexels.com/photos/205421/pexels-photo-205421.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load','pending',NULL),(27,'Rahul','Iphone',90000,'2025-01-03 04:04:19','https://img.freepik.com/free-vector/realistic-grey-smartphone-with-three-cameras_52683-29937.jpg?t=st=1735376793~exp=1735380393~hmac=1707a2d4f3905fd72ed261156557686739c41b29f01b2003f214597cb47b9439&w=1060','pending',NULL),(28,'Rahul','Iphone',90000,'2025-01-03 11:08:22','https://img.freepik.com/free-vector/realistic-grey-smartphone-with-three-cameras_52683-29937.jpg?t=st=1735376793~exp=1735380393~hmac=1707a2d4f3905fd72ed261156557686739c41b29f01b2003f214597cb47b9439&w=1060','pending',NULL),(29,'Mahesh Balaji','Sofas Set',25000,'2025-01-23 04:41:32','https://img.freepik.com/premium-photo/sofa-set-3d-modeling-jpeg-file-realistic-sofa-set_788415-4124.jpg?w=1060','pending',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
  `image_url` text,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Watch','https://img.freepik.com/premium-photo/photo-watch-white-background_1077802-134680.jpg?w=1060',5000),(2,'Shoes','https://img.freepik.com/premium-photo/blue-white-sneaker-with-blue-band-side_970631-10045.jpg?w=1060',3000),(3,'Laptop','https://images.pexels.com/photos/205421/pexels-photo-205421.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',45000),(4,'Iphone','https://img.freepik.com/free-vector/realistic-grey-smartphone-with-three-cameras_52683-29937.jpg?t=st=1735376793~exp=1735380393~hmac=1707a2d4f3905fd72ed261156557686739c41b29f01b2003f214597cb47b9439&w=1060',90000),(5,'Food Items','/static/Photos/food.jpg',500),(6,'Camera','https://images.pexels.com/photos/249597/pexels-photo-249597.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',30000),(7,'Washing Machine','https://img.freepik.com/free-vector/realistic-washing-machine-set-with-isolated-images-working-standby-laundry-machines-with-cleaning-detergents-vector-illustration_1284-83891.jpg?t=st=1735375982~exp=1735379582~hmac=f4b04d638c2407680dae2ba6b71afd46ed901f6c03242e8c5c7cf521d5f7fe93&w=1480',20000),(8,'Ac Machine','https://img.freepik.com/free-photo/air-conditioner-mounted-white-wall_53876-128235.jpg?t=st=1735382742~exp=1735386342~hmac=5f0ba64bd3e57d6fecec3bb9a3011c5256eb962054111dde94fecc4453f122d7&w=1800',35000),(9,'Musical KeyBoards','https://img.freepik.com/free-photo/music-keys-headphones-recorder-microphone-black-background-flat-lay_169016-16378.jpg?t=st=1735386642~exp=1735390242~hmac=fc7e72d51111fc326249be9743b2aa1cd2cd913dfb99a4d533f5681f4db9247e&w=1800',8000),(10,'Neem Plants','https://img.freepik.com/premium-photo/ornamental-potted-fatsia-japonica-isolated-white_126745-2492.jpg?w=1480',700),(11,'Electric Kettles','https://img.freepik.com/premium-photo/electric-water-kettle_615801-6.jpg?w=1800',1500),(12,'Electric Bulbs','https://images.pexels.com/photos/3946155/pexels-photo-3946155.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',200),(13,'Water heater','https://img.freepik.com/premium-vector/water-heater-set_251819-77.jpg?w=1800',5000),(14,'Sports','https://img.freepik.com/premium-vector/set-sport-equipment_37787-1199.jpg?w=1800',4000),(15,'Sofas Set','https://img.freepik.com/premium-photo/sofa-set-3d-modeling-jpeg-file-realistic-sofa-set_788415-4124.jpg?w=1060',25000),(16,'Bags','https://img.freepik.com/premium-photo/leather-suitcase_73762-411.jpg?w=740',3500),(17,'Mens Dress 1','/static/men/1.jpg',1999),(18,'Mens Dress 2','/static/men/2.jpg',3999),(19,'Mens Dress 3','/static/men/3.jpg',5999),(20,'Mens Dress 4','/static/men/4.jpg',4999),(21,'Mens Dress 5','/static/men/5.jpg',2999),(22,'Mens Dress 6','/static/men/6.jpg',7999),(23,'Womens Dress 1','/static/women/1.jpg',6999),(24,'Womens Dress 2','/static/women/2.jpg',2999),(25,'Womens Dress 3','/static/women/3.jpg',2499),(26,'Womens Dress 4','/static/women/4.jpg',3999),(27,'Womens Dress 5','/static/women/5.jpg',4999),(28,'Womens Dress 6','/static/women/6.jpg',4499);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Rahul','Rahul@gmail.com','scrypt:32768:8:1$BNwPkeGCA4DexKfz$900b9725b925162f12e15fb96412d6faecce54d26e4883ca483ec83960917a5b01b8877225ea17b7d1bccd4468eaac674a6f7d332eea6840dec929dee9a5ab68'),(2,'venkat','venkat@gmail.com','scrypt:32768:8:1$bnAKnCk93AzOJqK2$9d8a12a51f79d13330a2d7935d41f858304e6f7f620d7b6a091d93d413922bac48ba23e6ecc5ca568670ec14484f208feaa37981e0072d390d4dca34638f467c'),(3,'Ravi','Ravi@gmail.com','scrypt:32768:8:1$gOj14xI8yoWx9ek0$45b26a3ce21a852e6606c23ade4b27eaca772e44d46cae27996b05749f03a2ed51da6d0b2ced6c3b67eb262d5f51474886de19f3a851072753758fd70d4da7c2'),(5,'Mahesh Balaji','maheshbalaji1183@gmail.com','scrypt:32768:8:1$6fjZ2eOp9aY1HKjX$6e0b0311fb29b93d631cc9568c53f17ac202d8f03ff1ce6e5c48cef8d360cdc3f02f5be2557b8c09cc4d8a09465a417b95ad02e3636afa0f55db798d32fecdba');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `itemid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int DEFAULT NULL,
  `image_url` text,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`name`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (38,'Rahul','7','Washing Machine',20000,'https://img.freepik.com/free-vector/realistic-washing-machine-set-with-isolated-images-working-standby-laundry-machines-with-cleaning-detergents-vector-illustration_1284-83891.jpg?t=st=1735375982~exp=1735379582~hmac=f4b04d638c2407680dae2ba6b71afd46ed901f6c03242e8c5c7cf521d5f7fe93&w=1480'),(39,'Rahul','15','Sofas Set',25000,'https://img.freepik.com/premium-photo/sofa-set-3d-modeling-jpeg-file-realistic-sofa-set_788415-4124.jpg?w=1060');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-23 10:46:00
