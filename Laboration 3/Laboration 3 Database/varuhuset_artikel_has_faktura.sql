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
-- Table structure for table `artikel_has_faktura`
--

DROP TABLE IF EXISTS `artikel_has_faktura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artikel_has_faktura` (
  `ArtikelNr` int NOT NULL,
  `FakturaNr` int NOT NULL,
  `Antal` int NOT NULL,
  PRIMARY KEY (`FakturaNr`,`ArtikelNr`),
  KEY `fk_Artikel_has_Faktura_Faktura1_idx` (`FakturaNr`),
  KEY `fk_Artikel_has_Faktura_Artikel1_idx` (`ArtikelNr`),
  CONSTRAINT `fk_Artikel_has_Faktura_Artikel1` FOREIGN KEY (`ArtikelNr`) REFERENCES `artikel` (`ArtikelNr`),
  CONSTRAINT `fk_Artikel_has_Faktura_Faktura1` FOREIGN KEY (`FakturaNr`) REFERENCES `faktura` (`FakturaNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikel_has_faktura`
--

LOCK TABLES `artikel_has_faktura` WRITE;
/*!40000 ALTER TABLE `artikel_has_faktura` DISABLE KEYS */;
INSERT INTO `artikel_has_faktura` VALUES (14,1121,5),(16,1121,1),(28,1122,1),(40,1123,2),(59,1123,3),(71,1124,1),(73,1125,2),(63,1126,1);
/*!40000 ALTER TABLE `artikel_has_faktura` ENABLE KEYS */;
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
