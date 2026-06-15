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
-- Table structure for table `budgetitems`
--

DROP TABLE IF EXISTS `budgetitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budgetitems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `level` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `json_detailed` json DEFAULT NULL,
  `total` json DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `budgetitems_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_10` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_11` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_12` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_13` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_14` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_15` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_16` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_17` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_18` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_19` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_2` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_20` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_3` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_4` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_5` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_6` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_7` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_8` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetitems_ibfk_9` FOREIGN KEY (`parent_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budgetitems`
--

LOCK TABLES `budgetitems` WRITE;
/*!40000 ALTER TABLE `budgetitems` DISABLE KEYS */;
INSERT INTO `budgetitems` VALUES (60,'1','Travel Expenses (fixed rate)',1,NULL,1,NULL,NULL,'2026-05-19 08:25:40','2026-05-19 08:25:40'),(61,'1.1','Temporary Visa for International Staff',2,60,1,'[{\"Name\": \"Jorge R Muller\", \"code\": \"A1\", \"position\": \"Project Director\", \"Claim Amount\": 0, \"Actual Amount\": 0, \"Approved Cost\": 8500.0, \"Previous Claimed\": 0, \"Remaining Balance\": 8500}, {\"Name\": \"David M Noms/David Hills\", \"code\": \"A2\", \"position\": \"Chief Contract and Financial Manager\", \"Claim Amount\": 0, \"Actual Amount\": 0, \"Approved Cost\": 8500.0, \"Previous Claimed\": 20000, \"Remaining Balance\": 0}]','{\"TotalClaim Amount\": 0, \"TotalActual Amount\": 0, \"TotalApproved Cost\": 40000, \"TotalPrevious Claimed\": 20000, \"TotalRemaining Balance\": 0}','2026-05-19 08:25:40','2026-05-19 08:25:40'),(62,'1.2','Working Visa Process for International Staff',2,60,1,NULL,NULL,'2026-05-19 08:25:40','2026-05-19 08:25:40'),(63,'1.3','Working Visa Process for renewal',2,60,1,NULL,NULL,'2026-05-19 08:25:40','2026-05-19 08:25:40'),(64,'1.4','ECC - Emigration Clearance Certificate',2,60,1,NULL,NULL,'2026-05-19 08:25:40','2026-05-19 08:25:40'),(65,'2','Local Transportation Cost (at cost)',1,NULL,1,NULL,NULL,'2026-05-19 08:25:40','2026-05-19 08:25:40'),(66,'2.1','Rental car (MVP) with driver fuel, O&M, insurance, parking',2,65,1,NULL,NULL,'2026-05-19 08:25:40','2026-05-19 08:25:40');
/*!40000 ALTER TABLE `budgetitems` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-15  9:07:04
