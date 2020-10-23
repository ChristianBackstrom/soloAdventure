-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: te18
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `target_id` int unsigned DEFAULT NULL,
  `story_id` int unsigned DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `story_id` (`story_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (5,'Du är de tre bockarna som en kollektiv intelligens.',2,1),(6,'Du är trollet som bor under bron.',3,1),(7,'Du skickar över endast en bock',4,4),(8,'Du skickar över alla bockar',7,4),(9,'de andra bockarna kommer rusande',5,4),(10,'de inväntar troll',6,5),(11,'de inväntar skricket',8,6),(12,'de hör ett skrick under bron',8,7),(13,'du säger åt trollet att berätta gåtan',9,8),(14,'du struntar i vad trollet har att säga!',10,8),(15,'du lyssnar på gåtan',11,9),(16,'du har fel',12,13),(17,'du har fel',12,14),(18,'du har fel',12,15),(19,'Du har rätt',17,16),(20,'Du går över bron',NULL,18),(21,'Du tar över trollet och går sedan över bron',NULL,19);
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `story` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `body` text,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (1,'De tre bockarna brus och trollet. Vilken av dessa skulle du vela spela som?'),(2,' Du ser en äng över en flod som du vill till för att kunna föda och bli en större kollektiv intelligens.'),(3,'Du är nu trollet som bor under bron'),(4,'Vilka ska gå över bron?'),(5,'De andra bockarna kommer rusande mot bocken på bron för att de är starkare tillsammans!'),(6,'Alla bockarna stannar på bron för att invänta vad det var för skrick de har hört...'),(7,'Alla bockarna går över bron tillsammans tills de hör ett troll skricka'),(8,'Trollet visar sig för bockarna och säger \"Om ni vill passera denna bro skall ni lösa denna mycket kluriga gåta jag haver!\"'),(9,'\"Kom igen då trollet! Visa din gåta så kommer jag att klå den\" säger du'),(10,'\"Jag struntar i vad du har att säga!\" och förbereder dig inför infestation'),(11,'Om Teresas dotter är min dotters mamma vad är då jag i förhållande till Teresa?'),(12,'\"Du har fel!\" skriker trollet'),(13,'Du är mamma till Teresa'),(14,'Du är Teresa'),(15,'Du är barnbarn'),(16,'Du är dotter'),(17,'Du ha rätt'),(18,'Vill du gå över bron?'),(19,'Vill du ta över trollet och göra honom till en del av den kollektiva intelligensen och sedan gå över bron?');
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-23  8:38:07
