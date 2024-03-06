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
-- Table structure for table `monitor`
--

DROP TABLE IF EXISTS `monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monitor` (
  `carnum` varchar(45) NOT NULL,
  `alert` varchar(45) DEFAULT NULL,
  `starttime` varchar(45) DEFAULT NULL,
  `alerttime` varchar(45) DEFAULT NULL,
  `level` varchar(45) DEFAULT NULL,
  `comp` varchar(45) DEFAULT NULL,
  `speed` varchar(45) DEFAULT NULL,
  `condation` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`carnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitor`
--

LOCK TABLES `monitor` WRITE;
/*!40000 ALTER TABLE `monitor` DISABLE KEYS */;
INSERT INTO `monitor` VALUES ('蓝:陕A03F0U','超速报警','2021/4/13 5:41','2021/4/13 5:44','1','陕西骞腾汽车运输服务有限公司','104','正常',''),('蓝:陕A39X0E','超速报警','2021/4/20 22:00','2021/4/20 22:04','1','陕西恒丰客运有限公司','105','正常',''),('蓝:陕UES670','超速报警','2021/4/2 22:42','2021/4/2 22:46','1','陕西恒丰客运有限公司','99','正常',''),('黄:陕AK5598','超速报警','2021/4/14 23:35','2021/4/14 23:38','1','陕西交运运输集团有限公司','84','正常',''),('黄:陕AL5460','离线位移报警(74.63)km','2021/4/10 13:45','2021/4/10 15:53','1','陕西华龙运输有限责任公司','0','正常',''),('黄:陕AQ1707','离线位移报警(50.88)km','2021/4/3 18:09','2021/4/4 14:44','1','西安市汽车客运总公司','0','正常',''),('黄:陕AQ5055','离线位移报警(54.38)km','2021/4/1 16:03','2021/4/2 13:07','1','陕西恒丰客运有限公司','0','正常',''),('黄:陕AR1706','离线位移报警(63.75)km','2021/4/3 14:59','2021/4/3 16:15','1','西安西康高速客运有限公司','0','正常',''),('黄:陕AU0156','超速报警','2021/4/7 22:39','2021/4/7 22:42','1','周至县捷安达客运有限责任公司','89','正常',''),('黄:陕AU1630','疲劳驾驶(日间)','2021/4/2 12:31','2021/4/2 16:33','1','周至县捷安达客运有限责任公司','45','正常',''),('黄:陕AU3095','离线位移报警(53.60)km','2021/4/2 20:15','2021/4/2 21:57','1','周至县捷安达客运有限责任公司','0','正常',''),('黄:陕AU3567','疲劳驾驶(日间)','2021/4/3 8:10','2021/4/3 12:11','1','地方国营周至县汽车客运公司','19','正常',''),('黄:陕AU3612','超速报警','2021/4/24 5:37','2021/4/24 5:39','1','周至县捷安达客运有限责任公司','88','正常',''),('黄:陕AU3800','疲劳驾驶(日间)','2021/4/3 6:15','2021/4/3 10:25','1','地方国营周至县汽车客运公司','30','正常',''),('黄:陕AU3885','疲劳驾驶(日间)','2021/4/3 6:05','2021/4/3 10:20','1','地方国营周至县汽车客运公司','31','正常',''),('黄:陕AU3886','疲劳驾驶(日间)','2021/4/2 8:16','2021/4/2 12:19','1','地方国营周至县汽车客运公司','46','正常',''),('黄:陕AU5006','疲劳驾驶(日间)','2021/4/2 14:13','2021/4/2 18:15','1','周至县捷安达客运有限责任公司','44','正常',''),('黄:陕AU5018','离线位移报警(62.26)km','2021/4/3 7:53','2021/4/3 10:37','1','周至县捷安达客运有限责任公司','0','正常',''),('黄:陕AU5233','疲劳驾驶(日间)','2021/4/2 13:32','2021/4/2 17:32','1','周至县捷安达客运有限责任公司','16','正常',''),('黄:陕AW5906','超速报警','2021/4/20 5:15','2021/4/20 5:18','1','蓝田县蓝通运输有限责任公司','92','正常',''),('黄:陕AW7772','疲劳驾驶(日间)','2021/4/2 14:31','2021/4/2 18:32','1','蓝田县蓝通运输有限责任公司','56','正常',''),('黄:陕AW8827','离线位移报警(87.48)km','2021/4/1 7:16','2021/4/1 9:41','1','陕西西铜高速客运有限公司','0','正常',''),('黄:陕AW9786','超速报警','2021/4/9 1:33','2021/4/9 3:16','1','陕西平安运输集团有限公司','89','正常',''),('黄:陕AY1025','离线位移报警(67.62)km','2021/4/22 9:27','2021/4/22 10:40','1','陕西省迎宾汽车有限公司','0','正常',''),('黄:陕AY6778','超速报警','2021/4/2 22:13','2021/4/2 22:17','1','陕西宏华客运有限责任公司','87','正常',''),('黄:陕AY7769','离线位移报警(83.99)km','2021/4/4 17:45','2021/4/4 19:57','1','陕西祥龙汇通汽车运输有限公司','0','正常',''),('黄:陕AY8895','超速报警','2021/4/14 4:48','2021/4/14 4:52','1','陕西林苑春旅游汽车有限公司','84','正常',''),('黄绿:陕A29123D','离线位移报警(58.07)km','2021/4/1 14:17','2021/4/1 16:16','1','周至县捷安达客运有限责任公司','0','正常','');
/*!40000 ALTER TABLE `monitor` ENABLE KEYS */;
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
