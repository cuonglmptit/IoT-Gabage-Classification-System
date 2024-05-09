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
-- Table structure for table `khoangrac`
--

DROP TABLE IF EXISTS `khoangrac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khoangrac` (
  `id` int NOT NULL,
  `ID_khoangrac` int NOT NULL AUTO_INCREMENT,
  `ID_Thungrac` int NOT NULL,
  `SoLanDo` int NOT NULL,
  `TenNhan` varchar(255) NOT NULL,
  `NgayDoRac` date DEFAULT NULL,
  `khoangraccol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_khoangrac`,`id`),
  KEY `ID_Thungrac` (`ID_Thungrac`),
  CONSTRAINT `khoangrac_ibfk_1` FOREIGN KEY (`ID_Thungrac`) REFERENCES `thungrac` (`ID_thungrac`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khoangrac`
--

LOCK TABLES `khoangrac` WRITE;
/*!40000 ALTER TABLE `khoangrac` DISABLE KEYS */;
INSERT INTO `khoangrac` VALUES (1,1,1,0,'box_cardboard_paper','2023-10-01',NULL),(5,1,2,0,'box_cardboard_paper','2023-10-01',NULL),(9,1,3,0,'box_cardboard_paper','2023-10-01',NULL),(2,2,1,2,'glass_metal_plastic','2023-10-01',NULL),(6,2,2,1,'glass_metal_plastic','2023-10-01',NULL),(10,2,3,2,'glass_metal_plastic','2023-10-01',NULL),(3,3,1,1,'organic','2023-12-05',NULL),(7,3,2,1,'organic','2023-10-01',NULL),(11,3,3,2,'organic','2023-10-01',NULL),(4,4,1,2,'other','2023-11-26',NULL),(8,4,2,2,'other','2023-11-26',NULL),(12,4,3,3,'other','2023-10-01',NULL);
/*!40000 ALTER TABLE `khoangrac` ENABLE KEYS */;
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
