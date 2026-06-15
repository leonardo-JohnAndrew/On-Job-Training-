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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userID` varchar(255) NOT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middle` varchar(255) DEFAULT 'N/A',
  `department` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` enum('Active','InActive') DEFAULT NULL,
  `e_signature` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Cruz - 3',NULL,'Cruz','Laarni','N/A','Accounting','Head','Admin','Active','/uploads/signatures/1781162804214-photo_2023-06-19_16-07-31.jpg','$2b$10$ut19FV2Gsvm2FUD28dygYeEOZc1fAdXxMaiOvF12yJBUHeV6iuWS6','2026-06-11 15:21:43','2026-06-11 15:26:44',''),('gragasin - 2',NULL,'Gragasin','Justine Ace','f','IT','OJT','SuperAdmin','Active','/uploads/signatures/1781139564256-photo_2026-06-08_16-24-53.jpg','$2b$10$1Xqbnga6LlIwRTO4uJZMM.r.XdyoGAVoPC.QwVhaearSGnEsHW2BO','2026-06-05 11:25:55','2026-06-11 08:59:24','justinacefajardogragasin0721@gmail.com'),('last1 - 7',NULL,'last1','jstn','N/A','IT','admin','Admin','Active','/uploads/signatures/1781158549097-photo_2023-06-19_16-07-31.jpg','$2b$10$1JSIY2gHprj3aEHo7d.s8OE7SOrX7CBgsQBoWMfeDdvVKtYA6Cq1y','2026-06-10 13:33:11','2026-06-11 14:15:49','gragasinace0721@gmail.com'),('Miso - 5',NULL,'Miso','Albert ','N/A','IT','Head II','Admin','Active','/uploads/signatures/1781166524494-photo_2023-06-19_16-07-31.jpg','$2b$10$1UaaEK8v.HLYX//FJ9ycJOZjXIY6evm4GNO6/1JH3VRe0DWCJvAL6','2026-06-11 16:23:07','2026-06-11 16:28:44','gragasinace0721@gmail.com'),('Msd - 8',NULL,'Msd','Peyn','N/A','Admin','Head Admin','Admin','Active','/uploads/signatures/1781147842797-photo_2026-06-08_16-32-07.jpg','$2b$10$eMy1kyZFj3KOOfeeODaRrOcGTaP1QeCDYHJ636r9rM5E9b5vgqQl2','2026-06-11 08:41:57','2026-06-11 11:17:22','josephinemosada25@gmail.com'),('Rosqueta - 4',NULL,'Rosqueta','JM','N/A','IT','Head II','SuperAdmin','Active','/uploads/signatures/1781165900375-photo_2023-06-19_16-07-31.jpg','$2b$10$yNzBswnY.xyXhoHsosgX9ejkm1UnqJOoAW3czdcPnWwbSVzAaCcUC','2026-06-11 16:13:45','2026-06-11 16:18:20','gragasinace0721@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
