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
-- Table structure for table `artikel`
--

DROP TABLE IF EXISTS `artikel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artikel` (
  `ArtikelNr` int NOT NULL,
  `Namn` varchar(45) NOT NULL,
  `Färg` varchar(45) NOT NULL,
  `Vikt` int NOT NULL,
  `Pris` int NOT NULL,
  `Antal` int NOT NULL,
  `Leverantör_ID` int NOT NULL,
  PRIMARY KEY (`ArtikelNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikel`
--

LOCK TABLES `artikel` WRITE;
/*!40000 ALTER TABLE `artikel` DISABLE KEYS */;
INSERT INTO `artikel` VALUES (10,'hammare','silver',7,150,50,201),(12,'skruv','silver',5,120,100,201),(14,'dörrstopp','grå',10,59,21,201),(16,'tejp','transparent',10,14,200,208),(18,'tidskriftssamlare','svart',1,35,20,208),(20,'häftapparat','vit',2,75,65,208),(22,'cirkelsåg','orange',40,2500,2,210),(24,'båtvax','vit',3,45,76,205),(26,'tågvirke','vit',4,175,12,205),(28,'boj','orange',2,275,4,205),(30,'skruvmejsel','gul',1,97,41,210),(32,'partytält','grå',12,1500,5,211),(34,'ankare','silver',75,1200,7,205),(36,'däck','svart',24,4500,8,206),(38,'batteri','gul',3,650,4,202),(40,'kikare','svart',2,350,5,204),(42,'termos','röd',7,340,67,203),(46,'batteritestare','röd',2,250,21,206),(48,'tält','grön',65,2100,2,204),(49,'stormkök','grön',34,575,23,204),(51,'hyllplan','vit',2,75,34,209),(53,'fönsterfärg','vit',4,225,35,207),(55,'täckfärg','vit',6,175,56,207),(57,'korg','grå',2,25,13,209),(59,'skruvdragare','grön',1,1275,16,210),(61,'kapsåg','grön',13,1750,5,210),(63,'utelampa','svart',15,675,1,212),(65,'\"visir grund\"','gul',21,240,54,207),(67,'grill','svart',34,1200,10,211),(69,'gardinlängd','blå',32,275,23,214),(71,'cafeset','blå',56,675,5,213),(73,'gräsklippare','röd',32,2300,1,211),(75,'loungegrupp','svart',67,2600,9,213);
/*!40000 ALTER TABLE `artikel` ENABLE KEYS */;
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
