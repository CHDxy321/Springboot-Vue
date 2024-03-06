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
-- Table structure for table `qiyedata`
--

DROP TABLE IF EXISTS `qiyedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qiyedata` (
  `id` int NOT NULL,
  `area` varchar(45) DEFAULT NULL,
  `qiyenum` varchar(45) DEFAULT NULL,
  `alertnum` varchar(45) DEFAULT NULL,
  `febalertnum` varchar(45) DEFAULT NULL,
  `percent` varchar(45) DEFAULT NULL,
  `weiguicar` varchar(45) DEFAULT NULL,
  `avernum` varchar(45) DEFAULT NULL,
  `overspeed` varchar(45) DEFAULT NULL,
  `tirednum` varchar(45) DEFAULT NULL,
  `fivenum` varchar(45) DEFAULT NULL,
  `offnum` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiyedata`
--

LOCK TABLES `qiyedata` WRITE;
/*!40000 ALTER TABLE `qiyedata` DISABLE KEYS */;
INSERT INTO `qiyedata` VALUES (1,'韩城市','2','2','3','50.00%','3','1','0','0','0','3'),(2,'商洛市','7','20','20','0.00%','16','1.25','0','9','2','9'),(3,'西安市','63','172','363','111.05%','256','1.42','20','151','1','191'),(4,'安康市','10','33','46','39.39%','32','1.44','1','19','1','25'),(5,'宝鸡市','20','181','195','7.73%','135','1.44','10','63','3','119'),(6,'铜川市','16','210','222','5.71%','126','1.76','8','49','0','165'),(7,'渭南市','42','407','443','8.85%','250','1.77','13','241','12','177'),(8,'咸阳市','52','641','525','-18.10%','293','1.79','102','178','7','238'),(9,'榆林市','128','1568','1071','-31.70%','589','1.82','114','422','0','535'),(10,'延安市','101','1123','1001','-10.86%','488','2.05','103','417','0','481'),(11,'汉中市','11','205','175','-14.63%','77','2.27','30','53','0','92'),(12,'西咸新区','8','22','73','231.82%','32','2.28','22','14','1','36'),(13,'杨凌区','1','0','3','100%','1','3','0','0','0','3');
/*!40000 ALTER TABLE `qiyedata` ENABLE KEYS */;
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
