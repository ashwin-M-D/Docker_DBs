CREATE DATABASE  IF NOT EXISTS `uni_sports_platform` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `uni_sports_platform`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: uni_sports_platform
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `attend`
--

DROP TABLE IF EXISTS `attend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attend` (
  `A-Class-ID` int NOT NULL,
  `A-P-HOGID` int NOT NULL,
  PRIMARY KEY (`A-Class-ID`,`A-P-HOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attend`
--

LOCK TABLES `attend` WRITE;
/*!40000 ALTER TABLE `attend` DISABLE KEYS */;
INSERT INTO `attend` VALUES (600,1),(600,11),(600,18),(600,20),(601,1),(601,2),(601,6),(601,15),(601,17),(601,18),(601,20),(602,1),(602,3),(602,5),(602,7),(602,8),(602,10),(602,13),(602,14),(602,16),(602,17),(602,20),(602,22),(602,23),(602,25),(603,18),(603,20),(603,27),(603,28),(604,2),(604,6),(604,9),(604,11),(604,15),(604,19),(604,20),(604,21),(604,23),(604,24),(604,26),(605,16),(605,18),(605,20),(605,25),(605,27),(605,28),(605,29),(605,30),(605,31),(605,32),(605,33),(606,1),(606,2),(606,6),(606,7),(606,8),(606,9),(606,11),(606,15),(606,17),(606,19),(606,20),(606,21),(606,22),(606,23),(606,24),(606,26),(607,9),(607,20),(607,41);
/*!40000 ALTER TABLE `attend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `Class-ID` int NOT NULL,
  `Days` varchar(50) DEFAULT NULL,
  `Class-Cost` int DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Sports-Name` varchar(50) DEFAULT NULL,
  `Class-Start-Time` time DEFAULT NULL,
  `Class-End-Time` time DEFAULT NULL,
  `I-HOGID` int NOT NULL,
  PRIMARY KEY (`Class-ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (600,'Monday',10,'Dungeons','Yoga','08:00:00','09:00:00',97),(601,'Tuesday',8,'Great Hall','Yoga','08:00:00','09:00:00',92),(602,'Wednesday',20,'Great Hall','Pilates','08:00:00','09:00:00',88),(603,'Thursday',20,'Quidditch Pitch','Quidditch','09:00:00','10:00:00',91),(604,'Friday',10,'Quidditch Pitch','Quidditch','09:00:00','10:00:00',93),(605,'Saturday',20,'Great Hall','Pilates','08:00:00','09:00:00',88),(606,'Sunday',9,'Quidditch Pitch','Yoga','08:00:00','09:00:00',88),(607,'Monday',5,'Quidditch Pitch','Quidditch','08:00:00','09:00:00',92);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game` (
  `Game-No` int NOT NULL,
  `G-Tourn-ID` int NOT NULL,
  `Score-team-home` int DEFAULT NULL,
  `Score-team-away` int DEFAULT NULL,
  PRIMARY KEY (`Game-No`,`G-Tourn-ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (1,300,200,10),(1,301,400,20),(1,302,200,199),(1,303,88,17),(1,304,40,19),(1,305,3,2),(1,306,14,10),(1,307,9,8),(1,308,21,10),(1,309,21,19),(1,310,17,4),(2,300,10,200),(2,301,80,159),(2,302,200,180),(2,303,30,18),(2,306,14,10),(2,307,9,8),(2,308,21,11),(2,309,21,17),(2,310,17,8),(3,300,200,10),(3,301,200,201),(3,302,200,190),(3,303,100,10),(3,306,14,10),(3,307,9,8),(3,308,21,19),(3,309,21,17),(3,310,17,10),(4,306,14,10),(4,307,9,8),(5,306,14,10),(5,307,9,8),(6,306,14,10),(6,307,9,8),(7,306,14,10),(7,307,9,8);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play_game`
--

DROP TABLE IF EXISTS `play_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `play_game` (
  `Team-ID-Home` int NOT NULL,
  `Team-ID-Away` int NOT NULL,
  `PG-Game-No` int NOT NULL,
  `PG-Tourn-ID` int NOT NULL,
  PRIMARY KEY (`PG-Game-No`,`PG-Tourn-ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_game`
--

LOCK TABLES `play_game` WRITE;
/*!40000 ALTER TABLE `play_game` DISABLE KEYS */;
INSERT INTO `play_game` VALUES (201,202,1,300),(201,203,1,301),(201,204,1,302),(207,209,1,303),(209,211,1,304),(210,211,1,305),(215,212,1,306),(215,212,1,307),(217,219,1,308),(214,216,1,309),(220,216,1,310),(203,204,2,300),(202,204,2,301),(202,203,2,302),(208,211,2,303),(214,216,2,306),(214,216,2,307),(214,220,2,308),(215,216,2,309),(213,212,2,310),(201,204,3,300),(201,204,3,301),(201,202,3,302),(207,208,3,303),(213,217,3,306),(213,217,3,307),(217,214,3,308),(215,214,3,309),(213,220,3,310),(220,218,4,306),(220,218,4,307),(220,215,5,306),(220,215,5,307),(213,214,6,306),(213,214,6,307),(213,220,7,306),(213,220,7,307);
/*!40000 ALTER TABLE `play_game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `P-HOGID` int NOT NULL,
  PRIMARY KEY (`P-HOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1),(2),(3),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plays_for`
--

DROP TABLE IF EXISTS `plays_for`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plays_for` (
  `Plays-P-HOGID` int NOT NULL,
  `Plays-Team-ID` int NOT NULL,
  PRIMARY KEY (`Plays-P-HOGID`,`Plays-Team-ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plays_for`
--

LOCK TABLES `plays_for` WRITE;
/*!40000 ALTER TABLE `plays_for` DISABLE KEYS */;
INSERT INTO `plays_for` VALUES (1,201),(1,207),(2,201),(2,208),(2,217),(3,202),(3,218),(5,204),(5,211),(6,202),(6,212),(6,216),(8,202),(8,210),(8,214),(9,201),(9,208),(10,208),(11,201),(11,209),(11,213),(13,204),(13,211),(13,220),(14,202),(14,210),(14,218),(15,219),(16,201),(16,207),(17,219),(18,215),(19,202),(19,207),(20,209),(20,212),(21,209),(21,216),(22,204),(22,211),(22,220),(23,209),(23,213),(24,203),(24,208),(24,210),(24,214),(25,210),(26,201),(26,208),(26,217),(27,203),(28,202),(28,207),(28,215),(29,202),(30,203),(31,203),(31,209),(31,210),(32,203),(33,203),(33,207),(34,204),(34,211),(35,204),(35,211),(36,204),(38,204),(39,202),(40,203),(41,201);
/*!40000 ALTER TABLE `plays_for` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `R-Team-ID` int NOT NULL,
  `R-Tourn-ID` int NOT NULL,
  PRIMARY KEY (`R-Team-ID`,`R-Tourn-ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (300,201),(300,202),(300,203),(300,204),(301,201),(301,202),(301,203),(301,204),(302,201),(302,202),(302,203),(302,204),(303,207),(303,208),(303,209),(303,211),(304,209),(304,211),(305,209),(305,210),(305,211),(306,212),(306,213),(306,214),(306,215),(306,216),(306,217),(306,218),(306,220),(307,212),(307,213),(307,214),(307,215),(307,216),(307,217),(307,218),(307,220),(308,214),(308,217),(308,219),(308,220),(309,214),(309,215),(309,216),(310,212),(310,213),(310,216),(310,220);
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `S-HOGID` int NOT NULL,
  PRIMARY KEY (`S-HOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `Team-ID` int NOT NULL,
  `Team-Name` varchar(50) NOT NULL,
  `C-HOGID` int NOT NULL,
  PRIMARY KEY (`Team-ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (201,'GRYFFINDOR',41),(202,'Ravenclaw',39),(203,'Hufflepuff',40),(204,'Slytherin',38),(207,'Girls Rule',19),(208,'Weasleys',2),(209,'Lightning Strikes',11),(210,'The Chudley Cannons',14),(211,'Draco Fan Club',22),(212,'Smarties',20),(213,'The Chosen Wons',11),(214,'Do I Have To Play',8),(215,'Twinning',18),(216,'Dumbledore\'s Army',21),(217,'Forge',2),(218,'Not Hogwarts',3),(219,'Dream Team',15),(220,'Terrible Twos',22);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament`
--

DROP TABLE IF EXISTS `tournament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tournament` (
  `Tourn-ID` int NOT NULL,
  `Sport` varchar(50) NOT NULL,
  `Price` int DEFAULT NULL,
  PRIMARY KEY (`Tourn-ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament`
--

LOCK TABLES `tournament` WRITE;
/*!40000 ALTER TABLE `tournament` DISABLE KEYS */;
INSERT INTO `tournament` VALUES (300,'Quidditch',140),(301,'Quidditch',140),(302,'Quidditch',140),(303,'Basketball',40),(304,'Hockey',40),(305,'Hockey',40),(306,'Tennis',30),(307,'Tennis',30),(308,'Ping Pong',40),(309,'Ping Pong',40),(310,'Volleyball',30);
/*!40000 ALTER TABLE `tournament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `HOGID` int NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`HOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Katie'),(2,'Fred'),(3,'Fleur'),(5,'Goyle'),(6,'Luna'),(7,'Charlie'),(8,'Penelope'),(9,'Ginny'),(10,'Bill'),(11,'Harry'),(12,'Dudley'),(13,'Crabbe'),(14,'Viktor'),(15,'Dean'),(16,'Angelina'),(17,'Seamus'),(18,'Pavarti'),(19,'Cho'),(20,'Hermione'),(21,'Neville'),(22,'Draco'),(23,'Ron'),(24,'Percy'),(25,'Lavender'),(26,'George'),(27,'Cedric'),(28,'Padma'),(29,'Michael'),(30,'Ernie'),(31,'Hannah'),(32,'Justin'),(33,'Susan'),(34,'Pansy'),(35,'Blaise'),(36,'Marcus'),(37,'Millicent'),(38,'Salazar'),(39,'Rowena'),(40,'Helga'),(41,'Godric'),(88,'Flitwick'),(89,'Moody'),(90,'Hooch'),(91,'McGonnagall'),(92,'Dumbledore'),(93,'Sprout'),(94,'Lupin'),(95,'Umbridge'),(96,'Quirrel/He Who Must Not Be Named'),(97,'Snape'),(98,'Serius'),(99,'Lockhart'),(100,'Hagrid');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works_at`
--

DROP TABLE IF EXISTS `works_at`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `works_at` (
  `W-S-HOGID` int NOT NULL,
  `W-Tourn-ID` int NOT NULL,
  PRIMARY KEY (`W-S-HOGID`,`W-Tourn-ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works_at`
--

LOCK TABLES `works_at` WRITE;
/*!40000 ALTER TABLE `works_at` DISABLE KEYS */;
INSERT INTO `works_at` VALUES (300,90),(300,91),(300,93),(301,88),(301,89),(301,90),(302,90),(302,97),(303,91),(304,89),(305,96),(306,95),(307,90),(308,88),(309,97),(310,92);
/*!40000 ALTER TABLE `works_at` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'uni_sports_platform'
--

--
-- Dumping routines for database 'uni_sports_platform'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-12 14:10:58
