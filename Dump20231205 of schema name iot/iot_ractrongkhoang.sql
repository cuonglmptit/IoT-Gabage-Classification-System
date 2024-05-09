CREATE DATABASE  IF NOT EXISTS `iot` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `iot`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: iot
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `ractrongkhoang`
--

DROP TABLE IF EXISTS `ractrongkhoang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ractrongkhoang` (
  `ID_ractrongkhoang` int NOT NULL AUTO_INCREMENT,
  `ID_khoangrac` int NOT NULL,
  `AnhRac` varchar(255) NOT NULL,
  `NgayRacVao` date NOT NULL,
  `KhoiLuong` float NOT NULL,
  `id_thungrac` int DEFAULT NULL,
  PRIMARY KEY (`ID_ractrongkhoang`),
  KEY `ID_khoangrac` (`ID_khoangrac`),
  CONSTRAINT `ractrongkhoang_ibfk_1` FOREIGN KEY (`ID_khoangrac`) REFERENCES `khoangrac` (`ID_khoangrac`)
) ENGINE=InnoDB AUTO_INCREMENT=701 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ractrongkhoang`
--

LOCK TABLES `ractrongkhoang` WRITE;
/*!40000 ALTER TABLE `ractrongkhoang` DISABLE KEYS */;
INSERT INTO `ractrongkhoang` VALUES (619,2,'20231126220746571688.jpg','2023-11-26',10,1),(620,2,'20231126220859373074.jpg','2023-10-26',10,1),(621,2,'20231126221126212491.jpg','2023-10-26',10,1),(622,1,'20231126221230732216.jpg','2023-10-25',10,1),(623,1,'20231126221238404405.jpg','2023-10-26',10,1),(624,1,'20231126221239325607.jpg','2023-11-26',10,1),(625,1,'20231126221408132044.jpg','2023-11-26',10,1),(626,1,'20231126223836830077.jpg','2023-11-26',10,1),(627,1,'20231126223839897591.jpg','2023-11-26',10,1),(628,1,'20231126223840796552.jpg','2023-11-26',10,1),(629,1,'20231126223843602532.jpg','2023-11-26',10,1),(630,1,'20231126223843921586.jpg','2023-11-26',10,1),(631,4,'20231126224015428470.jpg','2023-11-26',10,1),(632,4,'20231126224015746857.jpg','2023-11-26',10,1),(633,4,'20231126224016057497.jpg','2023-11-26',10,1),(634,4,'20231126224016380480.jpg','2023-11-26',10,1),(635,4,'20231126224016670383.jpg','2023-11-26',10,1),(636,4,'20231126224016976326.jpg','2023-11-26',10,1),(637,4,'20231126224032330889.jpg','2023-11-26',10,1),(638,4,'20231126224032640775.jpg','2023-11-26',10,1),(639,4,'20231126224032956132.jpg','2023-11-26',10,1),(640,4,'20231126224033260425.jpg','2023-11-26',10,1),(641,4,'20231126224033573144.jpg','2023-11-26',10,1),(642,4,'20231126224033898221.jpg','2023-11-26',10,1),(643,2,'20231126224142689361.jpg','2023-10-26',10,1),(644,2,'20231126224143004507.jpg','2023-11-26',10,1),(645,2,'20231126224143314476.jpg','2023-11-26',10,1),(646,2,'20231126224143613173.jpg','2023-11-26',10,1),(647,2,'20231126224143918409.jpg','2023-11-26',10,1),(648,2,'20231126224146668448.jpg','2023-11-26',10,1),(649,4,'20231126224151598936.jpg','2023-11-26',10,1),(650,1,'20231126224247799312.jpg','2023-11-26',10,1),(651,1,'20231126224259049484.jpg','2023-11-26',10,1),(652,1,'20231126224300202501.jpg','2023-11-26',10,1),(653,1,'20231126224450388158.jpg','2023-11-26',10,1),(654,1,'20231126224450693732.jpg','2023-11-26',10,1),(655,1,'20231126224452534008.jpg','2023-11-26',10,1),(656,1,'20231126224452839573.jpg','2023-11-26',10,1),(657,1,'20231126224454367463.jpg','2023-11-26',10,1),(658,3,'20231126232130842167.jpg','2023-11-26',10,1),(659,3,'20231126232131486844.jpg','2023-11-26',10,1),(660,3,'20231126232132079621.jpg','2023-11-26',10,1),(661,3,'20231126232132704218.jpg','2023-11-26',10,1),(662,2,'20231126232311915143.jpg','2023-11-26',10,1),(663,3,'20231126232318671751.jpg','2023-11-26',10,1),(664,2,'20231126234118583182.jpg','2023-11-26',10,1),(665,4,'20231126234130859580.jpg','2023-11-26',10,1),(666,4,'20231127104136606552.jpg','2023-11-27',10,1),(667,4,'20231127104138473985.jpg','2023-11-27',10,1),(668,4,'20231127104143366651.jpg','2023-11-27',10,1),(669,4,'20231127104210695660.jpg','2023-11-27',10,1),(670,4,'20231127104212585788.jpg','2023-11-27',10,1),(671,4,'20231127104215018269.jpg','2023-11-27',10,1),(672,1,'20231203152436207952.jpg','2023-12-03',10,1),(673,1,'20231203152509086439.jpg','2023-12-03',10,1),(674,4,'20231203154347936552.jpg','2023-12-03',10,1),(675,3,'20231204190207755891.jpg','2023-12-04',10,1),(676,2,'20231204191503120165.jpg','2023-12-04',10,1),(677,2,'20231204191614489700.jpg','2023-12-04',10,2),(678,2,'20231204204303112393.jpg','2023-12-04',10,2),(679,1,'20231204204928030682.jpg','2023-12-04',10,2),(680,1,'20231204204935422627.jpg','2023-12-04',10,2),(681,3,'20231204205120469308.jpg','2023-12-04',10,2),(682,4,'20231204205136120196.jpg','2023-12-04',10,2),(683,4,'20231204205713758395.jpg','2023-12-04',10,2),(684,4,'20231204205719583233.jpg','2023-12-04',10,2),(685,4,'20231204210054013559.jpg','2023-12-04',10,3),(686,2,'20231204210113351363.jpg','2023-12-04',10,3),(687,3,'20231204210247698572.jpg','2023-12-04',10,3),(688,3,'20231204210542154656.jpg','2023-12-04',10,3),(689,3,'20231204210645465187.jpg','2023-12-04',10,3),(690,3,'20231204210651318260.jpg','2023-12-04',10,3),(691,1,'20231205112832253901.jpg','2023-12-05',10,1),(692,1,'20231205112853458903.jpg','2023-12-05',10,1),(693,1,'20231205151306600170.jpg','2023-12-05',10,3),(694,2,'20231205151318177535.jpg','2023-12-05',10,3),(695,2,'20231205151323343776.jpg','2023-12-05',10,3),(696,2,'20231205151331054846.jpg','2023-12-05',10,3),(697,1,'20231205151345052532.jpg','2023-12-05',10,3),(698,3,'20231205154504565337.jpg','2023-12-05',10,1),(699,3,'20231205170127094722.jpg','2023-12-05',10,1),(700,1,'20231205170309382144.jpg','2023-12-05',10,1);
/*!40000 ALTER TABLE `ractrongkhoang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 20:18:57