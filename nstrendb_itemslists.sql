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
-- Table structure for table `itemslists`
--

DROP TABLE IF EXISTS `itemslists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemslists` (
  `ItemsID` int NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(255) DEFAULT NULL,
  `RequiredBalance` int NOT NULL DEFAULT '0',
  `UnitPrice` int NOT NULL DEFAULT '0',
  `Unit` varchar(255) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`ItemsID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemslists`
--

LOCK TABLES `itemslists` WRITE;
/*!40000 ALTER TABLE `itemslists` DISABLE KEYS */;
INSERT INTO `itemslists` VALUES (1,'TISSUE',90,29,'bxs','2026-03-25 06:18:32','2026-05-26 10:32:34'),(2,'Coffee (Folgers)',30,1500,'can ','2026-03-25 06:18:32','2026-03-25 06:18:32'),(3,'Creamer',80,100,'pcks','2026-03-25 06:18:32','2026-03-25 06:18:32'),(4,'Green tea',20,900,'bxs','2026-03-25 06:18:32','2026-03-25 06:18:32'),(5,'Sugar',30,90,'kilo','2026-03-25 06:18:32','2026-05-26 10:32:34'),(6,'Yellow tea',10,32,'bxs','2026-03-25 06:24:55','2026-05-26 10:32:34'),(7,'Joy dishwashing liquid soap',30,250,'btls','2026-03-25 06:24:55','2026-03-25 06:24:55'),(8,'Alcohol',30,80,'pcs','2026-03-25 06:24:55','2026-05-26 10:32:34'),(9,'Ajax MPC lavender 2L',20,250,'pcs','2026-03-25 06:24:55','2026-05-26 10:32:34'),(10,'Lysol spray',25,600,'pcs','2026-03-25 06:24:55','2026-03-25 06:24:55'),(11,'Coffee capsule cappuccino',3,500,'bxs','2026-03-25 06:31:34','2026-03-25 06:31:34'),(12,'Pledge',30,35,'pcs','2026-03-25 06:31:34','2026-05-26 10:32:34'),(13,'Scotch Brite sponge 3\'s',25,25,'pcks','2026-03-25 06:31:34','2026-05-26 10:32:34'),(14,'Domex stain & limescale cleaner white',20,350,'pcs','2026-03-25 06:31:34','2026-03-25 06:31:34'),(17,'HDMI ',0,500,'pcs','2026-04-30 09:29:13','2026-05-26 10:32:34');
/*!40000 ALTER TABLE `itemslists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-15  9:07:05
