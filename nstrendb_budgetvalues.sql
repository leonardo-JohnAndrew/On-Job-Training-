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
-- Table structure for table `budgetvalues`
--

DROP TABLE IF EXISTS `budgetvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budgetvalues` (
  `id` int NOT NULL AUTO_INCREMENT,
  `approved_unit` varchar(255) DEFAULT NULL,
  `approved_rate` float DEFAULT NULL,
  `approved_qty` float DEFAULT NULL,
  `approved_amount` float DEFAULT NULL,
  `revision_qty` float DEFAULT NULL,
  `revision_rate` float DEFAULT NULL,
  `revision_cost` float DEFAULT NULL,
  `prev_qty` float DEFAULT NULL,
  `prev_amount` float DEFAULT NULL,
  `month_qty` float DEFAULT NULL,
  `month_amount` float DEFAULT NULL,
  `cumulative_qty` float DEFAULT NULL,
  `cumulative_amount` float DEFAULT NULL,
  `remaining_qty` float DEFAULT NULL,
  `remaining_amount` float DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `budget_item_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `budget_item_id` (`budget_item_id`),
  CONSTRAINT `budgetvalues_ibfk_1` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_10` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_11` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_12` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_13` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_14` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_15` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_16` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_17` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_18` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_19` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_2` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_20` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_3` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_4` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_5` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_6` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_7` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_8` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `budgetvalues_ibfk_9` FOREIGN KEY (`budget_item_id`) REFERENCES `budgetitems` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budgetvalues`
--

LOCK TABLES `budgetvalues` WRITE;
/*!40000 ALTER TABLE `budgetvalues` DISABLE KEYS */;
INSERT INTO `budgetvalues` VALUES (48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-05-08 14:54:56','2026-05-08 14:54:56',NULL),(60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-05-19 08:25:40','2026-05-19 08:25:40',60),(61,'People',8500,75,637500,0,5,0,51.34,416880,0,0,51.34,416880,23.66,220620,'2026-05-19 08:25:40','2026-05-19 08:25:40',61),(62,'People',20000,75,1500000,0,0,0,48.43,950024,0,0,48.43,950024,26.57,549976,'2026-05-19 08:25:40','2026-05-19 08:25:40',62),(63,'RT',17000,213,3621000,0,0,0,48.21,819889,1.46,24772,49.67,844.661,163.33,2776340,'2026-05-19 08:25:40','2026-05-19 08:25:40',63),(64,'RT',2120,231,489720,NULL,NULL,NULL,60.57,128720,1,2120,61.57,130840,169.43,358880,'2026-05-19 08:25:40','2026-05-19 08:25:40',64),(65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-05-19 08:25:40','2026-05-19 08:25:40',65),(66,'VEH-MO',95000,339,32205000,298.3,95000,28338200,298.29,28338200,NULL,NULL,298.29,28338200,0.01,NULL,'2026-05-19 08:25:40','2026-05-19 08:25:40',66);
/*!40000 ALTER TABLE `budgetvalues` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-15  9:07:02
