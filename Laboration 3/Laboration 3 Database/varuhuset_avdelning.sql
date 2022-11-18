-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: varuhuset
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `avdelning`
--

DROP TABLE IF EXISTS `avdelning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avdelning` (
  `ID` int NOT NULL,
  `Namn` varchar(45) NOT NULL,
  `Varuhus_ID` varchar(42) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Avdelning_Varuhus1_idx` (`Varuhus_ID`),
  CONSTRAINT `fk_Avdelning_Varuhus1` FOREIGN KEY (`Varuhus_ID`) REFERENCES `varuhus` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avdelning`
--

LOCK TABLES `avdelning` WRITE;
/*!40000 ALTER TABLE `avdelning` DISABLE KEYS */;
INSERT INTO `avdelning` VALUES (201,'bygg','101'),(202,'elektronik','101'),(203,'husgeråd','101'),(204,'fritid','101'),(205,'båtvård','101'),(206,'bilvård','101'),(207,'färg','101'),(208,'kontor','101'),(209,'småförvaring','101'),(210,'verktyg','101'),(211,'trädgård','101'),(212,'belysning','101'),(213,'utemöbler','101'),(214,'textil','101');
/*!40000 ALTER TABLE `avdelning` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-18  9:08:46
