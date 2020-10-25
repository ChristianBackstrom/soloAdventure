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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (5,'De tre bockarna som en kollektiv intelligens.',3,1),(6,'Trollet som bor under bron.',15,1),(22,'Skicka över endast en bock först',4,3),(23,'Skicka över alla bockarna samtidigt',7,3),(24,'Nästa',5,4),(25,'Nästa',6,5),(26,'Nästa',8,6),(27,'Nästa',8,7),(28,'Gåtan lyder som följande:',9,8),(29,'Du är mamma till Teresa',10,9),(30,'Du är Teresa',10,9),(31,'Du är barnbarn till Teresa',10,9),(32,'Du är dotter till Teresa',12,9),(33,'Nästa',1000,11),(34,'Börja om',1,1000),(35,'Nästa',11,10),(36,'Går över bron och äter dig fet på ängen',1000,12),(38,'Kolla vad eller vem det var som har gjort detta',13,12),(39,'Lämna trollet under bron och gå till ängen för att äta dig fet',1000,13),(40,'Spy på trollet för att ta över det och göra det till en del av din kollektiva intelligens',1000,13),(41,'Du låter de gå över din bro',19,15),(42,'Du låter de ej gå över bron om de inte klara av din gåta',16,15),(44,'Du låter de gå över din bro',19,17),(45,'Du går tillbaka till din dag',1000,19),(46,'Du blir arg och kliver upp på bron för att stoppa dem så att de inte går över bron',20,17),(47,'Du går under din bro och går tillbaka till din dag',1000,20),(48,'Deras svar:',17,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (1,'Vem vill du vela spela som?'),(2,' Du ser en äng över en flod som du vill till för att kunna föda och bli en större kollektiv intelligens.'),(3,'Vad vill du göra?'),(4,'När bocken är mitt på bron hör du ett skräckinjagande skrik! Vad kan det ha vart?'),(5,'De andra bockarna kommer fort rusande för att säkra bocken på bron. De inväntar tyst på att varelsen som gjort skricket skulle visa sig'),(6,'De hör en mörk grumlig röst säga \"Vilka är det som stampar på min bro?!\"'),(7,'Alla tre bockarna går över bron tills de hör en mörk grumlig rösta skricka! De stannar upp och inväntar vad det kan ha vart som skreck...'),(8,'Den mörka grumliga rösten säger att de måste lösa en gåta för att korsa bron och om de inte klarar den skall de svepas iväg av floden under bron'),(9,'Om Teresas dotter är min dotters mamma vad är då jag i förhållande till Teresa?'),(10,'Du har fel!'),(11,'Den mörka grumliga rösten säger \"Du har misslyckat och nu ska jag svepa iväg er!\". Han höjde sedan vattnet ända tills du sveps bort!'),(12,'Du har rätt och får passera bron!'),(13,'Du hoppar under bron och ser att det är ett troll med ögon som tallrikar och en lång näsa långt som en sop kvast'),(15,'Du sitter lugnt under din bro som alla andra dagar tills du hör ett par bockar trampa över din bro'),(16,'Om Teresas dotter är min dotters mamma vad är då jag i förhållande till Teresa?'),(17,'De lyckades svara korrekt på din gåta'),(18,'De lyckades inte svara korrekt på din gåta'),(19,'Du låter de gå över din bro'),(20,'Du stoppar bockarna och sveper iväg de med floden under bron'),(1000,'SLUT!');
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

-- Dump completed on 2020-10-25 12:41:01
