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
-- Table structure for table `ass`
--

DROP TABLE IF EXISTS `ass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ass` (
  `id` int NOT NULL,
  `agebelow30` varchar(45) DEFAULT NULL,
  `agefrom30to40` varchar(45) DEFAULT NULL,
  `agefrom40to50` varchar(45) DEFAULT NULL,
  `ageupper50` varchar(45) DEFAULT NULL,
  `workagebelow2` varchar(45) DEFAULT NULL,
  `workagefrom2to5` varchar(45) DEFAULT NULL,
  `workageupper5` varchar(45) DEFAULT NULL,
  `breakscore` varchar(45) DEFAULT NULL,
  `vehiclenums` varchar(45) DEFAULT NULL,
  `vehicleone` varchar(45) DEFAULT NULL,
  `vehicletwo` varchar(45) DEFAULT NULL,
  `peoplenums` varchar(45) DEFAULT NULL,
  `trainnums` varchar(45) DEFAULT NULL,
  `traintime` varchar(45) DEFAULT NULL,
  `saftymoney` varchar(45) DEFAULT NULL,
  `drivekilometer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ass`
--

LOCK TABLES `ass` WRITE;
/*!40000 ALTER TABLE `ass` DISABLE KEYS */;
/*!40000 ALTER TABLE `ass` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19 20:14:51
