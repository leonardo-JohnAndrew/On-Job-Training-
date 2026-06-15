-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: nstrendb
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `PurchaseID` varchar(255) NOT NULL,
  `PRCode` varchar(255) DEFAULT NULL,
  `RequestorDepartment` varchar(255) DEFAULT NULL,
  `EmployeeSign` varchar(255) DEFAULT NULL,
  `AdminSign` varchar(255) DEFAULT NULL,
  `ChiefAdminManageSign` varchar(255) DEFAULT NULL,
  `ProjectDirectorSign` varchar(255) DEFAULT NULL,
  `Total` int DEFAULT '0',
  `Status` varchar(255) DEFAULT NULL,
  `timeStamp` datetime DEFAULT NULL,
  `isOnTheBudget` tinyint(1) DEFAULT '0',
  `mode` enum('Small Amount','Service Invoice') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PurchaseID`),
  UNIQUE KEY `PRCode` (`PRCode`),
  UNIQUE KEY `PRCode_2` (`PRCode`),
  UNIQUE KEY `PRCode_3` (`PRCode`),
  UNIQUE KEY `PRCode_4` (`PRCode`),
  UNIQUE KEY `PRCode_5` (`PRCode`),
  UNIQUE KEY `PRCode_6` (`PRCode`),
  UNIQUE KEY `PRCode_7` (`PRCode`),
  UNIQUE KEY `PRCode_8` (`PRCode`),
  UNIQUE KEY `PRCode_9` (`PRCode`),
  UNIQUE KEY `PRCode_10` (`PRCode`),
  UNIQUE KEY `PRCode_11` (`PRCode`),
  UNIQUE KEY `PRCode_12` (`PRCode`),
  UNIQUE KEY `PRCode_13` (`PRCode`),
  UNIQUE KEY `PRCode_14` (`PRCode`),
  UNIQUE KEY `PRCode_15` (`PRCode`),
  UNIQUE KEY `PRCode_16` (`PRCode`),
  UNIQUE KEY `PRCode_17` (`PRCode`),
  UNIQUE KEY `PRCode_18` (`PRCode`),
  UNIQUE KEY `PRCode_19` (`PRCode`),
  UNIQUE KEY `PRCode_20` (`PRCode`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `purchases_ibfk_3` FOREIGN KEY (`UserID`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-15  9:07:03
