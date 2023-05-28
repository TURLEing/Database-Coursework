-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `userName` varchar(20) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`userName`,`address`),
  CONSTRAINT `userName_fk` FOREIGN KEY (`userName`) REFERENCES `user` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES ('bruce','No.88 Road Peace'),('david','No.114 Road 514'),('durant','No.1334 Road 88'),('hanser','No.35 Road Skyline'),('james','No.848 Road River'),('Jane','No.220 Road West'),('Jane','No.221 Road West'),('john','No.762 Road Rihana'),('john','No.7721 Road Hank'),('kevin','No.789 Road 001'),('Kobe','No.66 Road 67'),('lambo','No.045 Road Glock'),('lucy','No.43 Road King'),('lucy','No.99 Road SandRiver'),('mike','No.22 Road Peace'),('mike','No.667 Road Hank'),('monesy','No.232 Road King'),('Niko','No.66 Road 66'),('Niko','No.7 Road King'),('Rihana','No.0001 Road Origin'),('Rihana','No.035 Road Bond'),('Rihana','No.666 Road Skyline'),('ropz','No.61 Road Flex'),('ropz','No.8 Road King'),('sam','No.123 Road Bruce'),('shox','No.1 Road Peace'),('shox','No.479 Road 778'),('smith','No.1143 Road Sun'),('steve','No.007 Road Bond');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `userName` varchar(20) NOT NULL,
  `customerNo` int NOT NULL,
  `nickName` varchar(20) NOT NULL,
  PRIMARY KEY (`customerNo`),
  UNIQUE KEY `customerNo_UNIQUE` (`customerNo`),
  UNIQUE KEY `userNo_UNIQUE` (`userName`),
  CONSTRAINT `userName` FOREIGN KEY (`userName`) REFERENCES `user` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('Niko',1,'Simple'),('Kobe',2,'Fish'),('monesy',3,'Rider'),('ropz',4,'Dancer'),('david',5,'Ghost'),('lucy',6,'Kingkomg'),('sam',7,'Trump'),('bruce',8,'KD'),('mike',9,'Sakura'),('james',10,'Tiger'),('john',11,'Bird'),('steve',12,'Gagalady'),('hanser',13,'CJ'),('lambo',14,'BigBoy'),('durant',15,'hanker'),('shox',16,'IKUN'),('kevin',17,'holydog');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `discountNo` int NOT NULL,
  `productNo` int NOT NULL,
  `merchantNo` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `rate` float DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  PRIMARY KEY (`discountNo`),
  KEY `fk_DISCOUNT_MERCHANT_ITEM1_idx` (`merchantNo`,`productNo`),
  CONSTRAINT `fk_DISCOUNT_MERCHANT_ITEM1` FOREIGN KEY (`merchantNo`, `productNo`) REFERENCES `merchant_item` (`merchantNo`, `productNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (1,4,1,'Sprite',0.8,'2023-05-01 00:00:00','2023-05-02 00:00:00'),(2,12,1,'Macbook',0.9,'2023-05-02 00:00:00','2023-05-03 00:00:00'),(3,22,1,'Huawei P60',0.95,'2023-05-03 00:00:00','2023-05-04 00:00:00'),(4,33,1,'Suit',0.95,'2023-05-04 00:00:00','2023-05-05 00:00:00'),(5,16,2,'Starbarks Coffee',0.8,'2023-05-05 00:00:00','2023-05-06 00:00:00'),(6,23,2,'Iphone14 pro',0.9,'2023-05-06 00:00:00','2023-05-07 00:00:00'),(7,32,2,'Wristwatch',0.95,'2023-05-07 00:00:00','2023-05-08 00:00:00'),(8,9,3,'Grape',0.8,'2023-05-08 00:00:00','2023-05-09 00:00:00'),(9,13,3,'Airpods',0.7,'2023-05-09 00:00:00','2023-05-10 00:00:00'),(10,19,3,'Steak',0.85,'2023-05-10 00:00:00','2023-05-11 00:00:00'),(11,24,4,'Book',0.8,'2023-05-11 00:00:00','2023-05-12 00:00:00'),(12,27,4,'Shoes',0.8,'2023-05-12 00:00:00','2023-05-13 00:00:00'),(13,16,5,'Starbarks Coffee',0.7,'2023-05-13 00:00:00','2023-05-14 00:00:00'),(14,29,5,'Winter Jacket',0.6,'2023-05-14 00:00:00','2023-05-15 00:00:00'),(15,2,5,'Pepsi-Cola',0.7,'2023-05-15 00:00:00','2023-05-16 00:00:00');
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant`
--

DROP TABLE IF EXISTS `merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant` (
  `userName` varchar(20) NOT NULL,
  `merchantNo` int NOT NULL,
  `shopName` varchar(45) NOT NULL,
  `shopDiscription` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`merchantNo`),
  KEY `userName_idx` (`userName`),
  CONSTRAINT `userName_fk1` FOREIGN KEY (`userName`) REFERENCES `user` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant`
--

LOCK TABLES `merchant` WRITE;
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;
INSERT INTO `merchant` VALUES ('shox',1,'Wumei Shop','It is mainly a large store, which can provide daily consumables and some crafts for users in the nearby several kilometers.'),('kevin',2,'Carrefour market','Carrefour is a large one-stop shopping mall, which sells all kinds of goods related to clothing, food, housing and shopping.'),('Rihana',3,'RT-Mart','Rt-mart mainly engages in fresh food, leisure food, daily necessities, household textiles, hardware appliances, cultural and sporting goods, and more than 30,000 kinds of daily necessities.'),('smith',4,'Huarun Shop','Huarun mainly engaged in food, fresh and household appliances, low prices close to the people.'),('Jane',5,'lawson shop','includes box lunch, noodles, soup porridge, sushi, rice balls, bread, dessert, salad, steamed buns, coffee, soy milk, ice cream and other self-produced products.');
/*!40000 ALTER TABLE `merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_item`
--

DROP TABLE IF EXISTS `merchant_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_item` (
  `merchantNo` int NOT NULL,
  `productNo` int NOT NULL,
  `price` int NOT NULL,
  `inventory` int NOT NULL,
  PRIMARY KEY (`merchantNo`,`productNo`),
  KEY `productNo_idx` (`productNo`),
  CONSTRAINT `merchantNo` FOREIGN KEY (`merchantNo`) REFERENCES `merchant` (`merchantNo`),
  CONSTRAINT `productNo` FOREIGN KEY (`productNo`) REFERENCES `product` (`productNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_item`
--

LOCK TABLES `merchant_item` WRITE;
/*!40000 ALTER TABLE `merchant_item` DISABLE KEYS */;
INSERT INTO `merchant_item` VALUES (1,1,3,10),(1,4,3,10),(1,6,5,10),(1,10,6888,10),(1,11,8888,10),(1,12,12888,10),(1,13,1688,10),(1,17,8,10),(1,20,50,10),(1,22,5888,10),(1,23,9888,10),(1,26,288,10),(1,28,588,10),(1,30,388,10),(1,33,28888,10),(2,2,4,20),(2,3,4,20),(2,4,4,20),(2,14,788,20),(2,15,6,20),(2,16,20,20),(2,17,10,20),(2,18,22,20),(2,19,58,20),(2,20,58,20),(2,21,7288,20),(2,22,6288,20),(2,23,10888,20),(2,28,548,20),(2,29,688,20),(2,32,88888,20),(2,33,26888,20),(3,1,2,30),(3,2,2,30),(3,3,2,30),(3,4,2,30),(3,5,2,30),(3,6,4,30),(3,7,4,30),(3,8,9,30),(3,9,9,30),(3,10,7288,30),(3,11,9288,30),(3,12,13888,30),(3,13,1888,30),(3,14,788,30),(3,15,5,30),(3,16,15,30),(3,17,7,30),(3,18,18,30),(3,19,48,30),(3,20,48,30),(3,21,7088,30),(3,22,6088,30),(3,23,10888,30),(3,24,25,30),(3,25,15,30),(3,26,188,30),(3,27,1488,30),(3,28,488,30),(4,7,4,40),(4,8,12,40),(4,9,12,40),(4,10,6888,40),(4,11,8888,40),(4,12,12888,40),(4,13,1688,40),(4,14,1088,40),(4,15,8,40),(4,16,20,40),(4,17,10,40),(4,18,22,40),(4,19,52,40),(4,20,52,40),(4,21,6888,40),(4,22,5888,40),(4,23,9888,40),(4,24,24,40),(4,25,16,40),(4,26,228,40),(4,27,1688,40),(4,28,388,40),(4,29,588,40),(4,30,288,40),(4,31,1088,40),(4,32,88888,40),(5,1,3,50),(5,2,3,50),(5,3,3,50),(5,4,3,50),(5,5,3,50),(5,14,988,50),(5,15,8,50),(5,16,16,50),(5,26,288,50),(5,27,1588,50),(5,28,588,50),(5,29,688,50),(5,30,388,50);
/*!40000 ALTER TABLE `merchant_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `orderNo` int NOT NULL,
  `customerNo` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`orderNo`),
  UNIQUE KEY `orderNo_UNIQUE` (`orderNo`),
  KEY `customerNo_idx` (`customerNo`),
  CONSTRAINT `customerNo` FOREIGN KEY (`customerNo`) REFERENCES `customer` (`customerNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,1,'2023-01-22 23:55:02'),(2,5,'2023-02-12 11:23:22'),(3,7,'2023-03-03 09:34:02'),(4,9,'2023-03-10 10:22:03'),(5,9,'2023-03-10 15:20:20'),(6,11,'2023-04-04 23:59:59'),(7,11,'2023-05-20 11:03:55'),(8,11,'2023-05-02 12:30:22'),(9,17,'2023-05-02 22:23:50'),(10,17,'2023-05-02 22:23:55');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `orderNo` int NOT NULL,
  `productNo` int NOT NULL,
  `merchantNo` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`orderNo`,`productNo`,`merchantNo`),
  KEY `fk_ORDER_ITEM_MERCHANT_ITEM1_idx` (`merchantNo`,`productNo`),
  CONSTRAINT `fk_ORDER_ITEM_MERCHANT_ITEM1` FOREIGN KEY (`merchantNo`, `productNo`) REFERENCES `merchant_item` (`merchantNo`, `productNo`),
  CONSTRAINT `orderNo` FOREIGN KEY (`orderNo`) REFERENCES `order` (`orderNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,1,1,4),(1,4,1,10),(1,6,1,9),(2,4,1,2),(2,4,2,8),(2,10,1,7),(2,16,2,1),(2,17,1,3),(2,29,2,5),(3,4,3,7),(3,5,3,1),(3,33,1,6),(3,33,2,5),(4,7,3,2),(4,10,3,4),(4,11,4,7),(4,13,4,3),(4,16,4,6),(4,17,4,4),(5,12,1,7),(5,22,4,5),(5,23,4,1),(5,28,5,3),(6,12,1,5),(6,13,1,9),(6,28,5,4),(7,2,2,2),(8,3,2,1),(8,4,2,4),(8,14,2,7),(8,33,2,7),(9,1,3,2),(9,15,3,6),(9,27,3,5),(9,28,3,8),(10,2,2,4),(10,7,4,1),(10,8,4,7),(10,27,3,5),(10,28,3,6);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `paymentNo` int NOT NULL,
  `orderNo` int NOT NULL,
  `money` float NOT NULL,
  `date` datetime NOT NULL,
  `paymentMethod` varchar(45) NOT NULL,
  PRIMARY KEY (`paymentNo`),
  UNIQUE KEY `paymentNo_UNIQUE` (`paymentNo`),
  UNIQUE KEY `orderNo_UNIQUE` (`orderNo`),
  KEY `orderNo_idx` (`orderNo`),
  CONSTRAINT `orderNo_fk1` FOREIGN KEY (`orderNo`) REFERENCES `order` (`orderNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,71.6,'2023-05-05 12:00:00','wechat'),(2,2,51724.8,'2023-05-06 12:00:00','wechat'),(3,4,299118,'2023-05-06 12:00:00','alipay'),(4,5,122286,'2023-05-07 12:00:00','alipay'),(5,6,81984,'2023-05-08 12:00:00','wechat'),(6,8,193752,'2023-05-09 12:00:00','wechat'),(7,9,11378,'2023-05-10 12:00:00','visa'),(8,10,10472,'2023-05-11 12:00:00','visa');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productNo` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `discription` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`productNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Coca-Cola','The world\'s largest beverage company'),(2,'Pepsi-Cola','Better drink than Coca-Cola'),(3,'Lemon Tea','The world\'s largest beverage company'),(4,'Sprite','The world\'s largest beverage company'),(5,'Fenta','The world\'s largest beverage company'),(6,'Apple','Fuji apple from Yantai in Shandong province'),(7,'Banana','From Yunnan province'),(8,'Pineapple','From Taiwan province'),(9,'Grape','From Xinjiang province'),(10,'Iphone14','From Apple inc'),(11,'Ipad','From Apple inc'),(12,'Macbook','From Apple inc'),(13,'Airpods','From Apple inc'),(14,'Tea','From Hangzhou, Zhejiang province'),(15,'Nestle Coffee','From Nestle company'),(16,'Starbucks Coffee','From Starbucks company'),(17,'Potato Chips','From McDonald\'s company'),(18,'Hamburger','From McDonald\'s company'),(19,'Steak','From McDonald\'s company'),(20,'Sardine','From McDonald\'s company'),(21,'Huawei Mate60','From Huawei company'),(22,'Huawei P60','From Huawei company'),(23,'Iphone14 pro','From Huawei company'),(24,'Book',NULL),(25,'Umbrella',NULL),(26,'Basketball','From Spalding company'),(27,'Shoes','From Nike company'),(28,'Jean','From Northface company'),(29,'Winter Jacket','From Northface company'),(30,'Backpack','From Northface company'),(31,'Perfume','From Chanel company'),(32,'Wristwatch','From Rolex'),(33,'Suit',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `customerNo` int NOT NULL,
  `merchantNo` int NOT NULL,
  `productNo` int NOT NULL,
  `rating` int NOT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`customerNo`,`merchantNo`,`productNo`),
  KEY `customerNo_idx` (`customerNo`),
  KEY `fk_REVIEW_MERCHANT_ITEM1_idx` (`merchantNo`,`productNo`),
  CONSTRAINT `customerNo_fk` FOREIGN KEY (`customerNo`) REFERENCES `customer` (`customerNo`),
  CONSTRAINT `fk_REVIEW_MERCHANT_ITEM1` FOREIGN KEY (`merchantNo`, `productNo`) REFERENCES `merchant_item` (`merchantNo`, `productNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,1,5,'It\'s sweeter and fizzier than Sprite, and it tastes better.','2023-01-01 11:11:34'),(1,1,4,4,'It tastes great and the price is cheap.','2023-03-11 22:21:33'),(1,1,6,3,'','2023-01-01 00:00:30'),(1,1,10,3,'','2023-02-04 13:22:57'),(1,2,4,2,'','2023-03-10 14:12:44'),(2,1,4,1,'','2023-03-05 16:20:30'),(2,2,16,4,'It\'s the best coffee I\'ve ever bought. It\'s delicious.','2023-02-02 12:22:33'),(3,1,17,3,'','2023-02-26 19:22:48'),(3,2,29,4,'The fabric is good, it\'s comfortable to wear, and it keeps you warm.','2023-02-08 17:56:43'),(3,2,33,5,'','2023-02-09 20:22:34'),(4,1,33,2,'','2023-05-10 23:59:59'),(4,3,4,4,'','2023-01-03 19:20:39'),(4,3,5,3,'','2023-04-10 18:21:00'),(4,3,7,5,'Bananas are big and sweet. They are nutritious and delicious.','2023-05-04 19:23:11'),(4,3,10,4,'','2023-03-04 21:22:44'),(6,4,11,5,'Very portable computer replacement, convenient for office and entertainment.','2023-04-12 23:21:44'),(6,4,13,4,'The sound quality is good, noise reduction function is also very advanced, but too expensive.','2023-03-07 08:22:45'),(6,4,16,3,'','2023-03-07 08:22:44'),(6,4,17,5,'No need to explain, French fries are the best snack.','2023-03-09 23:59:59'),(6,4,22,4,'','2023-04-04 21:22:43'),(7,1,12,2,'The MacBooks of this generation have ugly grinding tools. ','2023-02-04 07:34:22'),(7,1,13,5,'','2023-04-05 09:23:44'),(7,2,2,3,'','2023-05-06 11:22:34'),(7,2,3,2,'It tastes so good.','2023-03-18 03:22:56'),(7,2,4,2,'','2023-03-27 22:33:22'),(7,2,14,4,'It\'s delicious and refreshing, perfect for working.','2023-02-22 22:22:22'),(7,2,33,3,'It feels so-so.','2023-03-23 23:23:23'),(7,3,1,4,'','2023-04-22 04:22:44'),(7,3,15,3,'A very average instant coffee with an average refreshing effect and taste.','2023-05-20 23:59:59'),(7,5,28,4,'','2023-01-03 18:22:11'),(8,3,27,3,'','2023-05-20 23:59:59'),(8,3,28,2,'It\'s hard to wear.','2023-01-22 13:44:23'),(8,4,7,5,'','2023-01-22 13:44:23'),(9,4,8,5,'','2023-01-22 13:44:23'),(9,4,32,3,'It\'s not comfortable to wear, it\'s not very fashionable, and it\'s very heavy.','2023-02-02 21:23:11'),(9,5,1,5,'','2023-01-03 01:33:11'),(10,3,20,5,'','2023-02-03 20:23:23'),(11,2,33,5,'','2023-02-01 20:33:44'),(11,3,1,1,'Coke can never match Pepsi.','2023-04-17 20:34:54'),(11,3,2,5,'Pepsi will rule the world sooner or later.','2023-04-17 20:34:54'),(11,3,3,4,'','2023-04-17 20:34:54'),(12,1,33,4,'','2023-04-17 20:34:54'),(12,2,2,4,'','2023-03-11 21:23:44'),(14,2,23,5,'','2023-05-09 19:22:44'),(14,2,28,1,'','2023-03-01 03:11:33'),(14,2,29,4,'','2023-04-09 12:22:45'),(14,3,27,4,'','2023-01-22 22:22:35'),(14,3,28,5,'','2023-03-04 18:22:34'),(14,4,7,5,'','2023-05-09 19:22:44'),(14,4,8,5,'Pineapple in Taiwan Province really tastes as good as the Internet says.','2023-05-09 19:22:44');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userName` varchar(20) NOT NULL,
  `userPassword` varchar(45) DEFAULT NULL,
  `E-mail` varchar(45) DEFAULT NULL,
  `tel` char(11) DEFAULT NULL,
  PRIMARY KEY (`userName`),
  UNIQUE KEY `userName_UNIQUE` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('bruce','wsburce000','18976773093@qq.com','13876676982'),('david','01020304','2677239515@163.com','13807681307'),('durant','012345kd','31415926@gmail.com','13688607002'),('hanser','54sb666','zhanghansheng00@gmail.com','13707898873'),('james','imking666','2021215111@163.com','13807698873'),('Jane','07060504JJ','0708900@sina.com','18977672233'),('john','2012john','114514@abc.com','18088482292'),('kevin','1314banai','banai520@gmail.com','13911919819'),('Kobe','001122aaa','123456789b@gmail.com','18911613517'),('lambo','hhh666777','18911613517@163.com','13899987667'),('lucy','0987654321','2960873540@qq.com','13861667757'),('mike','tt666666','2021212892@qq.com','13911613517'),('monesy','5kisme','123456789c@gmail.com','18907698873'),('Niko','123456abc','123456789a@gmail.com','18976773093'),('Rihana','31415926pai','987654321@sina.com','18084872262'),('ropz','kevery0ne','18976773093@163.com','13976773093'),('sam','simple666','liuenyang66@outlook.com','18907626691'),('shox','521522523nm','xqc000111222@outlook.com','13811414514'),('smith','012013014sina','1492762029@qq.com','012013'),('steve','114514homo','1919819@abc.com','18076773517');
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

-- Dump completed on 2023-05-25 13:38:09
