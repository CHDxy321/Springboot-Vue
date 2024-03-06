-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: demoblog
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `money`
--

DROP TABLE IF EXISTS `money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `money` (
  `id` int NOT NULL,
  `enid` varchar(45) DEFAULT NULL,
  `entollgateid` varchar(45) DEFAULT NULL,
  `enname` varchar(45) DEFAULT NULL,
  `entime` varchar(45) DEFAULT NULL,
  `exid` varchar(45) DEFAULT NULL,
  `exname` varchar(45) DEFAULT NULL,
  `extime` varchar(45) DEFAULT NULL,
  `exvehicleid` varchar(45) DEFAULT NULL,
  `exvehicletype` varchar(45) DEFAULT NULL,
  `feevehicletype` varchar(45) DEFAULT NULL,
  `exvehicleclass` varchar(45) DEFAULT NULL,
  `pathmileage` varchar(45) DEFAULT NULL,
  `mediatype` varchar(45) DEFAULT NULL,
  `envehicleid` varchar(45) DEFAULT NULL,
  `obuvehicleid` varchar(45) DEFAULT NULL,
  `enaxlecount` varchar(45) DEFAULT NULL,
  `envehicletype` varchar(45) DEFAULT NULL,
  `envehicleclass` varchar(45) DEFAULT NULL,
  `sdistantce` varchar(45) DEFAULT NULL,
  `sgrantrynum` varchar(45) DEFAULT NULL,
  `new_distance` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money`
--

LOCK TABLES `money` WRITE;
/*!40000 ALTER TABLE `money` DISABLE KEYS */;
/*!40000 ALTER TABLE `money` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19 20:14:53
