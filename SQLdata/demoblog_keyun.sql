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
-- Table structure for table `keyun`
--

DROP TABLE IF EXISTS `keyun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keyun` (
  `id` int NOT NULL,
  `company` varchar(45) DEFAULT NULL,
  `carnum` varchar(45) DEFAULT NULL,
  `yichangcar` varchar(45) DEFAULT NULL,
  `weishangbaocar` varchar(45) DEFAULT NULL,
  `jiashiyuancar` varchar(45) DEFAULT NULL,
  `jiahiyuannum` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyun`
--

LOCK TABLES `keyun` WRITE;
/*!40000 ALTER TABLE `keyun` DISABLE KEYS */;
INSERT INTO `keyun` VALUES (1,'渭南市汽车运输（集团）有限责任公司','613','431','119','250','0','渭南市'),(2,'陕西省汉中市汽车运输总公司','454','89','35','267','0','汉中市'),(3,'榆林市恒泰汽车运输集团有限公司','404','79','58','225','0','榆林市'),(4,'陕西咸运集团有限公司','209','74','19','131','0','咸阳市'),(5,'商洛市汽车运输总公司','346','91','10','104','1','商洛市'),(6,'陕西咸阳福银高速客运有限公司','128','75','13','97','0','咸阳市'),(7,'陕西交运运输集团有限公司','261','67','11','97','1','西安市'),(8,'西安西旅集团旅游汽车有限公司','307','56','52','66','0','西安市'),(9,'安康市金州运输集团世纪汽车客运有限公司','115','91','2','79','0','安康市'),(10,'铜川市第一汽车客运集团有限责任公司','166','65','5','94','1','铜川市'),(11,'志丹县汽车运输公司','46','57','1','84','0','延安市'),(12,'吴起县金海运输有限责任公司','32','51','2','85','0','延安市'),(13,'延安市汽车运输（集团）有限责任公司','112','44','29','48','0','延安市'),(14,'宝鸡市宝运汽车运输（集团）有限公司','310','26','5','88','0','宝鸡市'),(15,'陕西盛世腾辉客运有限公司','137','64','0','54','0','西安市'),(16,'陕西长安旅游汽车服务有限公司','218','27','37','48','0','西安市'),(17,'陕西恒丰通远汽车运输有限公司','74','33','67','4','0','西安市'),(18,'陕西友谊汽车有限责任公司','205','28','7','68','0','西安市'),(19,'咸阳福兴高速客运有限公司','67','63','0','35','0','咸阳市'),(20,'陕西永安运业有限责任公司','230','10','46','40','0','西安市'),(21,'城固县汽车运输公司','74','36','0','59','0','汉中市'),(22,'陕西平安运输集团有限公司','188','29','7','54','0','西安市'),(23,'咸阳兴源汽车运输有限公司','72','22','4','59','0','咸阳市'),(24,'安康市安运运输集团紫阳县通达客运有限公司','66','35','1','44','0','安康市'),(25,'西安咸阳国际机场汽车运输有限责任公司','132','9','31','40','0','西安市'),(26,'陕西秦运旅游汽车服务有限公司','53','37','0','42','0','咸阳市'),(27,'西安市临潼区汽车运输公司','76','7','70','2','0','西安市'),(28,'榆林市大众旅游出租有限公司','81','31','4','42','0','榆林市'),(29,'乾县交通运输有限责任公司','46','41','2','33','0','咸阳市'),(30,'咸阳宏图运输有限责任公司','73','27','4','43','0','咸阳市'),(31,'泾阳县宏安客运有限公司','83','54','15','4','0','咸阳市'),(32,'安康市西康高速客运有限公司','69','54','2','16','0','安康市'),(33,'安康市安运运输集团汽车运输有限公司','64','52','14','6','0','安康市'),(34,'陕西省旅游汽车有限公司','67','35','3','32','0','西安市'),(35,'陕西顺通旅游汽车有限公司','111','29','29','12','0','西安市'),(36,'延安市龙庆客运服务有限责任公司','69','24','3','40','0','延安市'),(37,'陕西秦汉君运输有限公司','46','34','6','26','0','咸阳市'),(38,'陕西明之旅汽车服务有限公司','65','21','11','34','0','咸阳市'),(39,'陕西省府谷县长亨通村客运有限公司','52','23','6','36','0','榆林市'),(40,'周至县捷安达客运有限责任公司','78','17','29','19','0','西安市'),(41,'蓝田县蓝通运输有限责任公司','85','45','7','12','0','西安市'),(42,'子长市客运有限责任公司','43','31','0','30','0','延安市'),(43,'延安市方圆旅游汽车有限责任公司','72','23','14','21','0','延安市'),(44,'榆林市塞上运输有限公司','68','5','8','43','0','榆林市'),(45,'延安市安塞区汽车运输股份合作公司','45','15','1','39','0','延安市'),(46,'白水县威远运业有限责任公司','38','30','0','24','0','渭南市'),(47,'咸阳丰原汽车运输有限公司','49','36','3','14','0','咸阳市'),(48,'陕西恒丰客运有限公司','73','17','25','9','0','西安市'),(49,'汉中公共交通集团有限公司','36','21','10','19','0','汉中市'),(50,'洛川县汽车运输公司','38','15','3','31','0','延安市'),(51,'西安市长安区秦顺星文化旅游发展有限责任公司','50','3','44','2','0','西安市'),(52,'榆林市长运汽车运输集团绥德分公司','28','23','0','24','0','榆林市'),(53,'延安市汽车运输（集团）有限责任公司客运二公司','38','20','0','27','0','延安市'),(54,'陕西平安红星汽车旅游服务有限公司','114','8','4','35','0','西安市'),(55,'西安市鄠邑区公共交通运输有限公司','61','27','5','14','0','西安市'),(56,'榆林市恒泰汽车运输集团定边金岫运输公司','42','9','7','29','0','榆林市'),(57,'陕西宏安旅游客运有限公司','33','25','0','19','0','咸阳市'),(58,'陕西広客汽车运输有限责任公司','82','21','5','18','0','西安市'),(59,'陕西海外旅游汽车有限公司','125','11','12','21','0','西安市'),(60,'咸阳腾辉汽车服务有限公司','25','18','0','22','0','咸阳市'),(61,'西咸新区旅游客运有限公司','38','22','1','16','0','西咸新区'),(62,'澄城县远登运输有限公司','32','18','0','21','0','渭南市'),(63,'延川县顺安客运有限责任公司','28','18','0','21','0','延安市'),(64,'陕西省迎宾汽车有限公司','63','23','6','9','0','西安市'),(65,'杨凌迅达客运有限公司','43','16','8','14','0','杨凌示范区'),(66,'榆林市恒泰汽车运输集团有限公司府谷盛源分公司','36','13','4','21','0','榆林市'),(67,'黄陵县汽车运输股份合作公司','26','15','0','22','0','延安市'),(68,'宝鸡秦龙运输集团宝鸡市洪达旅游客运汽车服务有限责任公司','46','12','4','21','0','宝鸡市'),(69,'陕西省富平县联运有限责任公司','35','35','1','0','0','渭南市'),(70,'汉中十天高速客运有限公司','48','22','3','11','0','汉中市'),(71,'陕西秦旅汽车服务有限公司','40','15','4','16','0','咸阳市'),(72,'陕西西咸新区公共交通集团有限公司','30','30','4','0','0','西咸新区'),(73,'礼泉县交通运输公司','23','20','1','13','0','咸阳市'),(74,'安康市安运运输集团汽车运输公司平利顺捷客运有限公司','21','17','2','15','0','安康市'),(75,'陕西太白山旅游交通运输有限公司','127','9','25','0','0','宝鸡市'),(76,'镇安县久安运输有限责任公司','52','33','0','0','0','商洛市'),(77,'陕西旬运集团运输有限公司','28','23','0','9','1','安康市'),(78,'陕西城际运输有限公司','78','15','0','18','0','西安市'),(79,'陕西新颖旅游客运有限公司','32','18','1','13','0','渭南市'),(80,'延安市汽车运输（集团）有限责任公司延长客运分公司','25','13','1','18','0','延安市'),(81,'宝鸡市宝运旅游汽车有限责任公司','82','12','0','20','0','宝鸡市'),(82,'陕西骞腾汽车运输服务有限公司','43','7','16','9','0','西安市'),(83,'陕西光大外事旅游车务有限公司','59','2','12','18','0','西安市'),(84,'宜川县汽车运输有限责任公司','23','12','1','18','0','延安市'),(85,'汉中军明旅游运输有限公司','34','11','0','20','0','汉中市'),(86,'宝鸡秦龙集团扶风鑫安运输有限责任公司','38','6','3','22','0','宝鸡市'),(87,'乾县安捷旅游客运服务有限公司','20','16','6','8','0','咸阳市'),(88,'榆林市长运汽车运输集团有限公司榆阳区分公司','27','12','3','15','0','榆林市'),(89,'西安市高陵区昌通运输有限责任公司','20','12','0','18','0','西安市'),(90,'延安市公共交通有限责任公司','50','6','6','18','0','延安市'),(91,'陕西晟昊联泰新能源汽车有限公司','32','21','0','8','0','西安市'),(92,'榆林市长运集团定边县运通客运有限公司','56','10','3','16','0','榆林市'),(93,'陕西刚达顺运输有限公司','20','13','4','11','0','咸阳市'),(94,'汉阴县易通汽车运输有限公司','26','24','2','1','0','安康市'),(95,'汉阴县安达汽车运输有限责任公司','25','21','2','4','0','安康市'),(96,'西安古韵旅游汽车服务有限公司','35','11','0','16','0','西安市'),(97,'陕西祥龙汇通汽车运输有限公司','81','11','8','8','0','西安市'),(98,'陕西翔通富瑞汽车运输有限公司','45','7','6','14','0','西安市'),(99,'榆林市恒泰汽车运输集团有限公司子洲第十二公司','54','5','3','19','0','榆林市'),(100,'白河安达运输有限公司','27','12','1','13','0','安康市'),(101,'陕西恒丰汽车运输集团有限公司','89','10','7','9','0','西安市'),(102,'渭南市华州区第二运输公司','18','17','1','7','0','渭南市'),(103,'西安秦之风旅游汽车有限公司','70','14','1','10','0','西安市'),(104,'彬县沐洋洋旅游客运服务有限公司','15','14','3','8','0','咸阳市'),(105,'延安市汽车运输（集团）有限责任公司客运一公司','16','13','0','12','0','延安市'),(106,'渭南市运业有限责任公司','17','12','6','7','0','渭南市'),(107,'延安市汽车运输（集团）有限责任公司客运三公司','28','12','7','6','0','延安市'),(108,'陕西兴新汽车运输服务有限公司','32','11','8','6','0','西安市'),(109,'商洛恒丰汽车运输有限责任公司','44','7','3','15','0','商洛市'),(110,'陕西鸿驰旅游汽车服务有限公司','28','6','1','18','0','西安市'),(111,'咸阳金凯汽车客运有限公司','21','15','2','7','0','咸阳市'),(112,'陕西中超旅游汽车有限公司','44','12','1','11','0','西安市'),(113,'榆林市长运汽车运输集团靖边分公司','22','10','2','12','0','榆林市'),(114,'蒲城县通达客货运输有限责任公司','19','15','4','4','0','渭南市'),(115,'陕西安运汽车有限责任公司','62','13','3','7','0','西安市'),(116,'榆林市长运集团清涧县分公司','28','9','3','11','0','榆林市'),(117,'榆林市长运集团神木客运有限公司','23','5','7','11','0','榆林市'),(118,'陕西恒丰神州旅游商务汽车有限公司','55','3','15','5','0','西安市'),(119,'榆林塞鑫航运输有限公司','20','13','1','7','0','榆林市'),(120,'延安市汽车运输（集团）有限责任公司旅游分公司','14','10','0','11','0','延安市'),(121,'汉中百仕达运输有限公司','16','7','1','13','0','汉中市'),(122,'华阴市鑫客汽车运输有限公司','14','11','2','7','0','渭南市'),(123,'岚皋县安运公共交通客运有限公司','21','9','1','10','0','安康市'),(124,'汉中军明运输有限公司','14','8','0','12','0','汉中市'),(125,'宝鸡市秦龙运输（集团）有限公司','36','4','0','16','0','宝鸡市'),(126,'宝鸡秦通运输集团太白县泰达运输有限责任公司','37','1','4','15','0','宝鸡市'),(127,'陕西泰鑫汽车服务有限公司','29','14','0','5','0','西安市'),(128,'韩城汽车运输有限责任公司','15','8','0','11','0','韩城市'),(129,'安康市岚皋县顺康通达客运有限公司','20','5','3','11','0','安康市'),(130,'榆林市恒泰汽车运输集团有限公司横山通达运输分公司','23','2','0','17','0','榆林市'),(131,'洋县运输有限责任公司','18','1','5','13','0','汉中市'),(132,'渭南市平顺运业有限责任公司','14','13','1','4','0','渭南市'),(133,'陕西伟远旅游汽车有限公司','25','11','4','3','0','西安市'),(134,'西安蜗牛旅行汽车服务有限公司','16','10','1','7','0','西安市'),(135,'西安西康高速客运有限公司','32','9','0','9','0','西安市'),(136,'延安红旅客运旅游汽车有限责任公司','29','8','3','7','0','延安市'),(137,'陕西大秦之旅汽车服务有限公司','20','4','0','14','0','咸阳市'),(138,'西安海洋旅游汽车服务有限公司','25','12','0','5','0','西安市'),(139,'西安市阎良区公路运输公司','41','8','9','0','0','西安市'),(140,'榆林市长运集团吴堡县融通客运有限公司','14','7','0','10','0','榆林市'),(141,'宝鸡金航旅游汽车运输有限公司','28','6','1','10','0','宝鸡市'),(142,'安康市安运运输集团汽车运输汉阴宏业汽车运输有限公司','17','1','8','8','0','安康市'),(143,'长武县汽车客运有限责任公司','16','11','0','5','0','咸阳市'),(144,'延安市汽车运输（集团）有限责任公司高速客运分公司','11','7','7','2','0','延安市'),(145,'陕西黄河壶口文化旅游发展有限责任公司','48','5','1','10','0','延安市'),(146,'陕西通鸿源旅游汽车有限公司','33','5','0','11','0','西安市'),(147,'商洛市汽车运输总公司洛南隆发公司','30','4','0','12','0','商洛市'),(148,'汉中西汉高速客运有限公司','30','2','1','13','0','汉中市'),(149,'合阳县腾达客货有限责任公司','11','9','2','4','0','渭南市'),(150,'陕西世纪明德客运服务有限公司','38','9','1','5','0','西安市'),(151,'陕西秦达旅游有限公司','41','5','0','10','0','西安市'),(152,'宝鸡秦龙旅游汽车有限公司','34','1','2','12','0','宝鸡市'),(153,'西安市汽车客运总公司','24','1','9','5','0','西安市'),(154,'府谷县亿通运输有限责任公司','16','7','1','6','0','榆林市'),(155,'陕西西商高速客运有限公司','33','6','0','8','0','西安市'),(156,'陕西宏华客运有限责任公司','37','4','2','8','0','西安市'),(157,'安康市安运集团石泉高速客运有限公司','13','12','0','1','0','安康市'),(158,'富平迅达运业有限责任公司','9','9','0','4','0','渭南市'),(159,'榆林长运汽车运输集团旅游服务有限公司','21','8','0','5','0','榆林市'),(160,'延安延运圣友运输有限公司','10','6','1','6','0','延安市'),(161,'陕西军辉汽车服务有限公司','13','6','0','7','0','西安市'),(162,'宝鸡宝蔡广乐旅游运输有限公司','32','5','1','7','0','宝鸡市'),(163,'陕西恒丰铜川客运有限公司','19','3','1','9','0','铜川市'),(164,'宝鸡秦通高速客运有限责任公司','26','2','0','11','0','宝鸡市'),(165,'陕西宇诺旅游汽车有限责任公司','36','2','0','11','0','西安市'),(166,'西安近代军民物流有限公司','7','2','1','10','0','西安市'),(167,'华阴市华山旅游汽车客运有限公司','54','12','0','0','0','渭南市'),(168,'咸阳得成公交客运有限公司','15','10','2','0','0','咸阳市'),(169,'西安启航运输有限责任公司','22','9','0','3','0','西安市'),(170,'西安市瑞旅旅游汽车有限公司','52','6','2','4','0','西安市'),(171,'宝鸡秦通运输集团麟游县运输公司','29','2','1','9','0','宝鸡市'),(172,'地方国营周至县汽车客运公司','21','0','1','11','0','西安市'),(173,'陕西华山风景名胜区客运管理有限公司','27','8','0','3','0','渭南市'),(174,'甘泉县旅游开发集团有限公司','19','6','0','5','0','延安市'),(175,'陕西嘉秦旅游汽车有限公司','21','3','1','7','0','西安市'),(176,'榆林耀兴运通运输有限责任公司','14','3','0','8','0','榆林市'),(177,'神木市旅游汽车出租公司','21','3','3','5','0','榆林市'),(178,'宝鸡秦龙运输集团宇通运输有限责任公司','29','2','0','9','0','宝鸡市'),(179,'陕西西铜高速客运有限公司','18','1','0','10','0','西安市'),(180,'留坝文旅紫柏客运有限公司','10','1','7','3','0','汉中市'),(181,'陕西西宝高速客运有限公司','25','1','2','8','0','西安市'),(182,'陕西恒丰泾原汽车运输有限公司','12','10','0','0','0','咸阳市'),(183,'榆林市恒泰汽车运输集团有限公司山丹丹旅游客运分公司','17','10','0','0','0','榆林市'),(184,'延安旅游汽车服务有限公司','29','4','5','1','0','延安市'),(185,'汉中诚邦汽车服务有限公司','10','3','0','7','0','汉中市'),(186,'白水四圣故里旅游客运有限公司','9','2','6','2','0','渭南市'),(187,'陕西西安包茂高速客运有限公司','18','2','0','8','0','西安市'),(188,'兴平市第一汽车运输有限公司','8','8','0','1','0','咸阳市'),(189,'陕西木王森林公园有限责任公司','15','7','0','2','0','商洛市'),(190,'合阳县城乡公交有限责任公司','9','7','2','0','0','渭南市'),(191,'陕西翔瑞运输有限公司','20','6','0','3','0','西安市'),(192,'安康市世纪顺康市内高速汽车客运有限公司','5','4','0','5','0','安康市'),(193,'榆林市长运集团府谷客运有限公司','7','4','0','5','0','榆林市'),(194,'延安市汽车运输（集团）有限责任公司吴起客运分公司','8','3','1','5','0','延安市'),(195,'安康市安运运输集团寜摩客运有限公司','10','2','0','7','0','安康市'),(196,'汉中黎坪景区旅游客运有限公司','11','2','0','7','0','汉中市'),(197,'陕西乐趣旅游汽车有限公司','22','2','0','7','0','西安市'),(198,'神木市昊通交通运输有限责任公司','12','1','0','8','0','榆林市'),(199,'柞水县秦楚锦濠运输有限公司','9','0','9','0','0','商洛市'),(200,'陕西恒丰周至通达客运有限责任公司','18','0','0','9','0','西安市'),(201,'石泉县美之程旅游汽车有限公司','8','7','0','1','0','商洛市'),(202,'安康市安运集团石泉客运有限公司','12','6','0','2','0','安康市'),(203,'陕西大健实业集团有限公司汽车运输分公司','9','6','0','2','0','安康市'),(204,'西安恒润汽车服务有限公司','7','5','0','3','0','西安市'),(205,'陕西长征运输集团城飞汽车客运有限责任公司','13','4','1','3','0','汉中市'),(206,'渭南国运通新能源汽车服务有限公司','5','4','0','4','0','渭南市'),(207,'榆林市长运汽车运输集团佳县分公司','23','4','0','4','0','榆林市'),(208,'延安市汽车运输（集团）有限责任公司宜川客运分公司','7','4','0','4','0','延安市'),(209,'黄龙县兴龙客运有限责任公司','6','3','0','5','0','延安市'),(210,'陕西华龙运输有限责任公司','28','3','0','5','0','西安市'),(211,'宝鸡秦通运输（集团）有限责任公司','16','0','0','8','0','宝鸡市'),(212,'陕西好运客运服务有限公司','10','4','0','3','0','西安市'),(213,'陕西牛背梁生态开发有限责任公司','11','3','0','4','0','商洛市'),(214,'西安千诺汽车服务有限公司','10','1','1','5','0','西安市'),(215,'西安曲江旅游汽车有限公司','6','1','0','6','0','西安市'),(216,'安康市安运集团宁陕万达客运有限公司','10','0','3','4','0','安康市'),(217,'西安优博汽车服务有限公司','11','0','0','7','0','西安市'),(218,'宝鸡宝钛运输实业有限公司','15','0','0','7','0','宝鸡市'),(219,'陕西易路沣行新能源汽车租赁有限公司','8','5','0','1','0','西咸新区'),(220,'陕西源祥华业运输有限公司','6','5','0','1','0','榆林市'),(221,'陕西秦通汽车运输有限公司','6','3','0','3','0','西安市'),(222,'淳化明吉客运有限公司','15','3','0','3','0','咸阳市'),(223,'西安四超客运有限责任公司','12','3','0','3','0','西安市'),(224,'陕西信元物业管理有限公司宝鸡分公司','10','1','0','5','0','宝鸡市'),(225,'西安绿迪汽车服务有限公司','10','1','3','2','0','西安市'),(226,'西安聚仁新能源汽车运输服务有限公司','15','0','1','5','0','西安市'),(227,'长安区客运公司','22','0','6','0','0','西安市'),(228,'西安市亿车嘉汽车服务有限公司','8','0','0','6','0','西安市'),(229,'西安蔚航新能源汽车科技有限公司','15','0','0','6','0','西安市'),(230,'渭南市鑫悦平汽车服务有限公司.','7','4','0','1','0','渭南市'),(231,'陕西好运旅游汽车有限公司','10','4','0','1','0','西安市'),(232,'榆林润达客运服务有限责任公司','10','4','0','1','0','榆林市'),(233,'蒲城县通达客货运输有限责任公司运通分公司','3','3','0','2','0','渭南市'),(234,'陕西秦都旅游服务有限公司','7','3','1','1','0','榆林市'),(235,'延安富县长盛汽车运输有限责任公司','3','2','0','3','0','延安市'),(236,'榆林市恒泰汽车运输集团第十三客运公司','7','2','0','3','0','榆林市'),(237,'安康市世纪客运有限公司白河安凯运输有限公司','4','2','0','3','0','安康市'),(238,'榆林市长运汽车运输集团米脂分公司','4','1','2','2','0','榆林市'),(239,'宝鸡秦通运输集团眉县第一运输有限公司','5','1','0','4','0','宝鸡市'),(240,'榆林市恒泰汽车运输集团有限公司米脂城乡客运分公司','6','1','0','4','0','榆林市'),(241,'延安市安塞区安运公交汽车运输有限责任公司','10','1','0','4','0','延安市'),(242,'陕西熙和旅游汽车有限责任公司','12','1','1','3','0','西安市'),(243,'榆林市恒泰汽车运输集团第十五客运公司','7','0','0','5','0','榆林市'),(244,'陕西国达新能源汽车服务有限公司','20','0','0','5','0','西安市'),(245,'陕西泽途汽车服务有限公司','10','3','0','1','0','西安市'),(246,'西安沣北汽车运输有限公司','15','3','0','1','0','西安市'),(247,'西安阳光假期汽车服务有限责任公司','5','2','0','2','0','西安市'),(248,'榆林市长运汽车运输集团有限公司','4','2','1','1','0','榆林市'),(249,'韩城市客货联营服务有限责任公司','5','2','0','2','0','韩城市'),(250,'西安山水汽车服务有限公司','5','2','0','2','0','西安市'),(251,'榆林市恒泰汽车运输集团第十一客运公司','5','2','0','2','0','榆林市'),(252,'洋县客运公司','5','2','2','0','0','汉中市'),(253,'榆林市恒泰汽车运输集团第十四客运公司','3','1','2','1','0','榆林市'),(254,'延川县旅游运输服务有限责任公司','6','1','0','3','0','延安市'),(255,'周至悦腾客运有限公司','13','1','0','3','0','西安市'),(256,'西安市灞柳客运有限公司','30','0','4','0','0','西安市'),(257,'眉县龙越太白山旅游客运有限公司','4','0','4','0','0','宝鸡市'),(258,'陕西百荣旅游汽车服务有限公司','11','0','0','4','0','西安市'),(259,'洋县朱鹮旅游汽车有限责任公司','4','0','0','4','0','汉中市'),(260,'山阳县宏图旅游开发有限公司','11','0','0','4','0','商洛市'),(261,'宝鸡秦通集团凤县运输公司','10','0','0','4','0','宝鸡市'),(262,'杨凌凯达汽车服务有限公司','8','0','0','4','0','杨凌示范区'),(263,'商洛平安旅游汽车有限责任公司','18','3','0','0','0','商洛市'),(264,'宝鸡万里公共交通有限公司','10','3','0','0','0','宝鸡市'),(265,'安康市安运运输集团十天高速客运有限公司','5','3','0','0','0','安康市'),(266,'延安市汽车运输（集团）有限责任公司圣友旅游分公司','3','2','0','1','0','延安市'),(267,'延安市甘泉客运服务中心','12','2','0','1','0','延安市'),(268,'宝运集团宝鸡新路旅游汽车有限责任公司','7','2','1','0','0','宝鸡市'),(269,'大荔县荔北客运有限公司','6','2','1','0','0','渭南市'),(270,'渭南黾畅盛汽车服务有限公司','2','1','0','2','0','渭南市'),(271,'扶风隆兴运输有限公司','7','1','0','2','0','宝鸡市'),(272,'商洛盛泰运输有限责任公司','4','1','1','1','0','商洛市'),(273,'西安西汉高速客运有限公司','12','1','0','2','0','西安市'),(274,'榆林市恒泰汽车运输集团枫尚旅游客运有限公司','6','0','1','2','0','榆林市'),(275,'榆林市阳光汽车运输有限责任公司','10','0','3','0','0','榆林市'),(276,'榆林市恒泰汽车运输集团有限公司靖边第十客运公司','4','0','1','2','0','榆林市'),(277,'陕西新出行客运有限公司','5','0','3','0','0','西咸新区'),(278,'陕西平安运输集团有限公司杨凌分公司','4','0','1','2','0','杨凌示范区'),(279,'榆林市恒泰汽车运输集团有限公司靖边顺达运输公司','4','0','1','2','0','榆林市'),(280,'陕西牧泽阳旅游汽车有限公司','12','0','0','3','0','西安市'),(281,'陕西五环客运有限公司','58','0','0','3','0','西安市'),(282,'潼关县通达汽车客运有限责任公司','3','2','0','0','0','渭南市'),(283,'华阴市永泰公交客运公司','2','2','0','0','0','渭南市'),(284,'中核陕铀汉中实业有限公司','2','1','0','1','0','汉中市'),(285,'蒲城县西路客运有限公司','1','1','1','0','0','渭南市'),(286,'西安方洋汽车服务有限公司','7','1','0','1','0','西安市'),(287,'榆林市恒泰汽车运输集团神木锦隆通勤服务有限公司','2','1','1','0','0','榆林市'),(288,'西安永昕汽车服务有限公司','8','1','0','1','0','西安市'),(289,'西安康仟汽车服务有限公司','10','1','1','0','0','西安市'),(290,'榆林市恒泰集团邑通高速客运有限公司','2','0','1','1','0','榆林市'),(291,'西安欣源客运服务有限责任公司','2','0','2','0','0','西安市'),(292,'渭南市华州区少华山景区客运有限责任公司','15','0','2','0','0','渭南市'),(293,'西安旅商旅游汽车有限责任公司','14','0','1','1','0','西安市'),(294,'商南县金丝峡景源汽车旅游服务有限责任公司','2','0','0','2','0','商洛市'),(295,'凤县凤凰旅游客运有限责任公司','5','0','0','2','0','宝鸡市'),(296,'陕西亿汇缘通旅游汽车有限公司','3','0','0','2','0','宝鸡市'),(297,'黄陵黄帝文化园区旅游汽车服务有限公司','1','1','0','0','0','延安市'),(298,'黄陵县腰坪乡客运有限公司','1','1','0','0','0','延安市'),(299,'礼泉县宏伟汽车客运有限责任公司','1','0','1','0','0','咸阳市'),(300,'泾阳县公共交通客运有限公司','1','0','1','0','0','咸阳市'),(301,'陕西恒丰中青旅游汽车有限公司','4','0','0','1','0','西安市'),(302,'宝鸡市华宇乐达旅游有限责任公司','6','0','0','1','0','宝鸡市'),(303,'榆林市恒泰汽车运输集团神木山丹丹旅游客运有限公司','1','0','0','1','0','榆林市');
/*!40000 ALTER TABLE `keyun` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19 20:14:52
