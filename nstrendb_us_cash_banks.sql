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
-- Table structure for table `us_cash_banks`
--

DROP TABLE IF EXISTS `us_cash_banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `us_cash_banks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slipNo` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `A_C_code` varchar(255) DEFAULT NULL,
  `job_No` varchar(255) DEFAULT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `payee_payer_no` varchar(255) DEFAULT NULL,
  `payee_payer` varchar(255) DEFAULT NULL,
  `receipt` float DEFAULT '0',
  `payment` float DEFAULT '0',
  `balance` float DEFAULT '0',
  `others` varchar(255) DEFAULT NULL,
  `glCount` varchar(255) DEFAULT NULL,
  `CRM` int DEFAULT NULL,
  `Claimable` enum('Non-Claimable','Claimable') DEFAULT 'Non-Claimable',
  `code_invoice_DOTR_1` varchar(255) DEFAULT 'N/A',
  `reimbursable_description` varchar(255) DEFAULT NULL,
  `code_invoice_DOTR_2` varchar(255) DEFAULT 'N/A',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `cashbook_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slipNo` (`slipNo`),
  UNIQUE KEY `slipNo_2` (`slipNo`),
  UNIQUE KEY `slipNo_3` (`slipNo`),
  UNIQUE KEY `slipNo_4` (`slipNo`),
  UNIQUE KEY `slipNo_5` (`slipNo`),
  UNIQUE KEY `slipNo_6` (`slipNo`),
  UNIQUE KEY `slipNo_7` (`slipNo`),
  UNIQUE KEY `slipNo_8` (`slipNo`),
  UNIQUE KEY `slipNo_9` (`slipNo`),
  UNIQUE KEY `slipNo_10` (`slipNo`),
  UNIQUE KEY `slipNo_11` (`slipNo`),
  UNIQUE KEY `slipNo_12` (`slipNo`),
  UNIQUE KEY `slipNo_13` (`slipNo`),
  UNIQUE KEY `slipNo_14` (`slipNo`),
  UNIQUE KEY `slipNo_15` (`slipNo`),
  UNIQUE KEY `slipNo_16` (`slipNo`),
  UNIQUE KEY `slipNo_17` (`slipNo`),
  UNIQUE KEY `slipNo_18` (`slipNo`),
  UNIQUE KEY `slipNo_19` (`slipNo`),
  UNIQUE KEY `slipNo_20` (`slipNo`),
  KEY `cashbook_id` (`cashbook_id`),
  CONSTRAINT `us_cash_banks_ibfk_1` FOREIGN KEY (`cashbook_id`) REFERENCES `cashbooks` (`cashbook_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `us_cash_banks`
--

LOCK TABLES `us_cash_banks` WRITE;
/*!40000 ALTER TABLE `us_cash_banks` DISABLE KEYS */;
/*!40000 ALTER TABLE `us_cash_banks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-15  9:07:06
