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
-- Table structure for table `checks`
--

DROP TABLE IF EXISTS `checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `checkId` varchar(255) NOT NULL,
  `checkAmount` float DEFAULT '0',
  `claimable` tinyint(1) DEFAULT '0',
  `ChiefAccountSignature` varchar(255) DEFAULT NULL,
  `ChiefAdminSignature` varchar(255) DEFAULT NULL,
  `forApproval` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checks`
--

LOCK TABLES `checks` WRITE;
/*!40000 ALTER TABLE `checks` DISABLE KEYS */;
INSERT INTO `checks` VALUES (1,'CHK-001',13000,1,'e_sign','e_signChiefAdmin',1,'2026-05-13 13:39:03','2026-05-26 16:36:05'),(2,'CHK-002',13000,0,'e_sign',NULL,1,'2026-05-13 13:39:03','2026-05-28 09:31:50'),(3,'CHK-001',10000,1,'e_sign',NULL,0,'2026-05-13 13:39:25','2026-05-13 13:39:25'),(4,'CHK-002',8000,0,'e_sign',NULL,0,'2026-05-13 13:39:25','2026-05-13 13:39:25'),(5,'CHK-011',0,0,NULL,NULL,1,'2026-05-25 09:09:58','2026-05-25 09:09:58'),(6,'CHK-022',0,0,NULL,NULL,0,'2026-05-25 09:30:43','2026-05-25 09:30:43'),(7,'CHK-112',81770.5,1,NULL,NULL,0,'2026-05-25 09:47:22','2026-06-09 11:29:18');
/*!40000 ALTER TABLE `checks` ENABLE KEYS */;
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
