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
-- Table structure for table `cososudung`
--

DROP TABLE IF EXISTS `cososudung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cososudung` (
  `ID_cososudung` int NOT NULL AUTO_INCREMENT,
  `DiaDiem` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_cososudung`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `khoangrac`
--

DROP TABLE IF EXISTS `khoangrac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khoangrac` (
  `ID_khoangrac` int NOT NULL AUTO_INCREMENT,
  `ID_Thungrac` int NOT NULL,
  `SoLanDo` int NOT NULL,
  `TenNhan` varchar(255) NOT NULL,
  `NgayDoRac` date DEFAULT NULL,
  PRIMARY KEY (`ID_khoangrac`),
  KEY `ID_Thungrac` (`ID_Thungrac`),
  CONSTRAINT `khoangrac_ibfk_1` FOREIGN KEY (`ID_Thungrac`) REFERENCES `thungrac` (`ID_thungrac`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  PRIMARY KEY (`ID_ractrongkhoang`),
  KEY `ID_khoangrac` (`ID_khoangrac`),
  CONSTRAINT `ractrongkhoang_ibfk_1` FOREIGN KEY (`ID_khoangrac`) REFERENCES `khoangrac` (`ID_khoangrac`)
) ENGINE=InnoDB AUTO_INCREMENT=619 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `thungrac`
--

DROP TABLE IF EXISTS `thungrac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thungrac` (
  `ID_thungrac` int NOT NULL AUTO_INCREMENT,
  `ID_cososudung` int NOT NULL,
  `ViTriThungRac` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_thungrac`),
  KEY `ID_cososudung` (`ID_cososudung`),
  CONSTRAINT `thungrac_ibfk_1` FOREIGN KEY (`ID_cososudung`) REFERENCES `cososudung` (`ID_cososudung`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID_users` int NOT NULL AUTO_INCREMENT,
  `accounts` varchar(255) NOT NULL,
  `passwords` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_users`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'iot'
--

--
-- Dumping routines for database 'iot'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-26 21:47:08
