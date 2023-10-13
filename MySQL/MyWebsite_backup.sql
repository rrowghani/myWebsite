-- MySQL dump 10.13  Distrib 8.1.0, for Linux (x86_64)
--
-- Host: localhost    Database: MyWebsite
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `GUESTBOOK`
--

DROP TABLE IF EXISTS `GUESTBOOK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GUESTBOOK` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  `TimeStamp` date DEFAULT NULL,
  `Country` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GUESTBOOK`
--

LOCK TABLES `GUESTBOOK` WRITE;
/*!40000 ALTER TABLE `GUESTBOOK` DISABLE KEYS */;
INSERT INTO `GUESTBOOK` VALUES (1,'Reza Rowghani','Im the first!','2023-09-13','CA');
/*!40000 ALTER TABLE `GUESTBOOK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PICTURES`
--

DROP TABLE IF EXISTS `PICTURES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PICTURES` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) DEFAULT NULL,
  `Path` varchar(255) DEFAULT NULL,
  `TimeStamp` timestamp NULL DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `SubCategory` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PICTURES`
--

LOCK TABLES `PICTURES` WRITE;
/*!40000 ALTER TABLE `PICTURES` DISABLE KEYS */;
INSERT INTO `PICTURES` VALUES (2,'Woman staring - Toronto, 2018','People/1','2023-09-24 16:19:18','People','People'),(3,'Woman passing by - Toronto, 2018','People/2','2023-09-24 16:19:18','People','People'),(4,'Side of man - Toronto, 2018','People/3','2023-09-24 16:19:18','People','People'),(5,'Man riding bike - Berlin, 2021','People/4','2023-09-24 16:19:18','People','People'),(6,'Meeting Nic in the streets - Toronto, 2018','People/5','2023-09-24 16:19:18','People','People'),(7,'Woman with cool heels - Montreal, 2022','People/6','2023-09-24 16:19:18','People','People'),(8,'Man surprised by my camera - Toronto, 2018','People/7','2023-09-24 16:19:18','People','People'),(9,'Woman with checked dress - Baltimore, 2018','People/8','2023-09-24 16:19:18','People','People'),(10,'Man on bike - Baltimore, 2018','People/9','2023-09-24 16:19:18','People','People'),(11,'Man with suitcase - Toronto, 2018','People/10','2023-09-24 16:19:18','People','People'),(12,'Man ready for church - Detroit, 2020','People/11','2023-09-24 16:19:18','People','People'),(13,'Man with dog - Detroit, 2020','People/12','2023-09-24 16:19:18','People','People'),(14,'Portrait of random woman - Toronto, 2018','People/13','2023-09-24 16:19:18','People','People'),(15,'Portrait of random man - Toronto, 2020','People/14','2023-09-24 16:19:18','People','People'),(16,'Posing on the streets - Baltimore, 2018','People/15','2023-09-24 16:19:18','People','People'),(17,'Car strapyard - Ramallah','Places/Westbank/1','2023-09-24 16:37:42','Places','West Bank'),(18,'Portable pumping station - Ramallah','Places/Westbank/2','2023-09-24 16:37:42','Places','West Bank'),(19,'Trump graffiti - Near wall','Places/Westbank/3','2023-09-24 16:37:42','Places','West Bank'),(20,'Bus station from up top - Hebron','Places/Westbank/4','2023-09-24 16:37:42','Places','West Bank'),(21,'Near Jesuralem','Places/Westbank/5','2023-09-24 16:37:42','Places','West Bank'),(22,'Settler camp from far - Near Hebron','Places/Westbank/6','2023-09-24 16:37:42','Places','West Bank'),(23,'Pepsi machine - Ramallah','Places/Westbank/7','2023-09-24 16:37:42','Places','West Bank'),(24,'Store front - Ramallah','Places/Westbank/8','2023-09-24 16:37:42','Places','West Bank'),(25,'Lady from behind - Ramallah','Places/Westbank/9','2023-09-24 16:37:42','Places','West Bank'),(26,'Firefighters - Ramallah','Places/Westbank/10','2023-09-24 16:37:42','Places','West Bank'),(27,'Colourful top in front of car','Places/Cuba/1','2023-09-27 19:26:01','Places','Cuba'),(28,'Graffiti','Places/Cuba/2','2023-09-27 19:26:01','Places','Cuba'),(29,'Keychain','Places/Cuba/3','2023-09-27 19:26:01','Places','Cuba'),(30,'Old cars','Places/Cuba/4','2023-09-27 19:26:01','Places','Cuba'),(31,'Dress hanging out to dry','Places/Cuba/5','2023-09-27 19:26:01','Places','Cuba'),(32,'Living room','Places/Cuba/6','2023-09-27 19:26:01','Places','Cuba'),(33,'Taxi sign','Places/Cuba/7','2023-09-27 19:26:01','Places','Cuba'),(34,'Truck sign','Places/Cuba/8','2023-09-27 19:26:01','Places','Cuba'),(35,'Soviet style buildings','Places/Cuba/9','2023-09-27 19:26:01','Places','Cuba'),(36,'Cool lamp','Places/Cuba/10','2023-09-27 19:26:01','Places','Cuba'),(37,'Man on the streets','Places/Cuba/11','2023-09-27 19:26:01','Places','Cuba'),(38,'Sunset in the city','Places/Cuba/12','2023-09-27 19:26:01','Places','Cuba'),(39,'Front of old car','Places/Cuba/13','2023-09-27 19:26:01','Places','Cuba'),(40,'Two monks posing','Places/Cambodia/1','2023-09-27 19:32:22','Places','Cambodia'),(41,'Two monks posing part 2','Places/Cambodia/2','2023-09-27 19:32:22','Places','Cambodia'),(42,'Two monks posing part 3','Places/Cambodia/3','2023-09-27 19:32:22','Places','Cambodia'),(43,'Sitting monks','Places/Cambodia/4','2023-09-27 19:32:22','Places','Cambodia'),(44,'Young monk preparing','Places/Cambodia/5','2023-09-27 19:32:22','Places','Cambodia'),(45,'Monks on the street','Places/Cambodia/6','2023-09-27 19:32:22','Places','Cambodia'),(46,'Kids playing','Places/Cambodia/7','2023-09-27 19:32:22','Places','Cambodia'),(47,'Portrait','Places/Cambodia/8','2023-09-27 19:32:22','Places','Cambodia'),(48,'Portrait #2','Places/Cambodia/9','2023-09-27 19:32:22','Places','Cambodia'),(49,'Portrait #3','Places/Cambodia/10','2023-09-27 19:32:22','Places','Cambodia'),(50,'Security','Places/Cambodia/11','2023-09-27 19:32:22','Places','Cambodia'),(51,'Monk hitching a ride','Places/Cambodia/12','2023-09-27 19:32:22','Places','Cambodia'),(52,'Monk with umbrella','Places/Cambodia/13','2023-09-27 19:32:22','Places','Cambodia'),(54,'Boy with balloons','Places/Egypt/1','2023-09-27 19:38:21','Places','Egypt'),(55,'Satellite dishes on rooftop','Places/Egypt/2','2023-09-27 19:38:21','Places','Egypt'),(56,'Pipes','Places/Egypt/3','2023-09-27 19:38:21','Places','Egypt'),(57,'Wires and woman in black','Places/Egypt/4','2023-09-27 19:38:21','Places','Egypt'),(58,'Back of truck','Places/Egypt/5','2023-09-27 19:38:21','Places','Egypt'),(59,'Man on donkey','Places/Egypt/6','2023-09-27 19:38:21','Places','Egypt'),(60,'Man smoking sheesha on highway','Places/Egypt/7','2023-09-27 19:38:21','Places','Egypt'),(61,'Xyrox machine on the street','Places/Egypt/8','2023-09-27 19:38:21','Places','Egypt'),(62,'Cairo market from up top','Places/Egypt/9','2023-09-27 19:38:21','Places','Egypt'),(63,'Man staring into my camera','Places/Egypt/10','2023-09-27 19:38:21','Places','Egypt'),(64,'Woman balancing cabbage on head','Places/Egypt/11','2023-09-27 19:38:21','Places','Egypt'),(65,'Woman balancing rug on head','Places/Egypt/12','2023-09-27 19:38:21','Places','Egypt'),(66,'Cairo streets ','Places/Egypt/13','2023-09-27 19:38:21','Places','Egypt'),(67,'Cairo streets #2','Places/Egypt/14','2023-09-27 19:38:21','Places','Egypt'),(68,'Pyramids','Places/Egypt/15','2023-09-27 19:38:21','Places','Egypt'),(69,'Cairo streets #3','Places/Egypt/16','2023-09-27 19:38:21','Places','Egypt'),(70,'Vent on the side of house - Toronto, 2020','As_It_Is/1','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(71,'Car shadows - Toronto, 2020','As_It_Is/2','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(72,'Trees behind curtain - Toronto, 2018','As_It_Is/3','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(73,'Pinup woman tattoo - Buffalo, 2018','As_It_Is/4','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(74,'Car in driveway - Miami, 2019','As_It_Is/5','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(75,'Skirt on the streets - Berlin, 2021','As_It_Is/6','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(76,'Skirt in subway - Berlin, 2021','As_It_Is/7','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(77,'Wires - Toronto, 2018','As_It_Is/8','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(78,'Banner - Berlin, 2020','As_It_Is/9','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(79,'Side of store - Toronto, 2018','As_It_Is/10','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(80,'Shopping carts crashing into each other - Toronto, 2018','As_It_Is/11','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(81,'Street lights - Toronto, 2020','As_It_Is/12','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(82,'Spooky window - Miami, 2020','As_It_Is/13','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(83,'Car in bushes - Toronto, 2019','As_It_Is/14','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(84,'Snow on store entrance - Toronto, 2020','As_It_Is/15','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(85,'Store sign - Canada, 2020','As_It_Is/16','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(86,'Fans after football match - Germany, 2018','As_It_Is/17','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(87,'Weird door - Detroit, 2018','As_It_Is/18','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(88,'Symmetrical bananas - Toronto, 2018','As_It_Is/19','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(89,'Back of truck on a rainy day - Toronto, 2018','As_It_Is/20','2023-09-27 19:44:25','As_It_Is','As_It_Is'),(100,'Man in supermarket - Toronto, 2018','Black_And_White/1','2023-09-27 19:56:27','Black_And_White','Black_And_White'),(101,'Jewish man in Subway - New York, 2016','Black_And_White/2','2023-09-27 19:56:27','Black_And_White','Black_And_White'),(102,'Man stares back - Toronto, 2018','Black_And_White/3','2023-09-27 19:56:27','Black_And_White','Black_And_White'),(103,'Man in suit - Toronto, 2018','Black_And_White/4','2023-09-27 19:56:27','Black_And_White','Black_And_White'),(104,'Street photography - Toronto, 2018','Black_And_White/5','2023-09-27 19:56:27','Black_And_White','Black_And_White'),(105,'Woman posing - Toronto, 2018','Black_And_White/6','2023-09-27 19:56:27','Black_And_White','Black_And_White'),(106,'Man in helmet posing - Toronto, 2018','Black_And_White/7','2023-09-27 19:56:27','Black_And_White','Black_And_White'),(107,'Woman with clock bag - Toronto, 2018','Black_And_White/8','2023-09-27 19:56:27','Black_And_White','Black_And_White'),(108,'Man stares back - Toronto, 2018','Black_And_White/9','2023-09-27 19:56:27','Black_And_White','Black_And_White');
/*!40000 ALTER TABLE `PICTURES` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-30 16:42:51
