CREATE DATABASE  IF NOT EXISTS `uni_sports_platform_mongo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `uni_sports_platform_mongo`;
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: uni_sports_platform_mongo
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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `Class_ID` int NOT NULL,
  `Days` varchar(50) DEFAULT NULL,
  `Class_Cost` int DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Sports_Name` varchar(50) DEFAULT NULL,
  `Class_Start_Time` time DEFAULT NULL,
  `Class_End_Time` time DEFAULT NULL,
  `I_HOGID` int NOT NULL,
  `I_Name` varchar(50) NOT NULL,
  `A_HOGID` int NOT NULL,
  `A_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Class_ID`,`A_HOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (600,'Monday',10,'Dungeons','Yoga','08:00:00','09:00:00',97,'Snape',1,'Katie'),(600,'Monday',10,'Dungeons','Yoga','08:00:00','09:00:00',97,'Snape',11,'Harry'),(600,'Monday',10,'Dungeons','Yoga','08:00:00','09:00:00',97,'Snape',18,'Pavarti'),(600,'Monday',10,'Dungeons','Yoga','08:00:00','09:00:00',97,'Snape',20,'Hermione'),(601,'Tuesday',8,'Great Hall','Yoga','08:00:00','09:00:00',92,'Dumbledore',1,'Katie'),(601,'Tuesday',8,'Great Hall','Yoga','08:00:00','09:00:00',92,'Dumbledore',2,'Fred'),(601,'Tuesday',8,'Great Hall','Yoga','08:00:00','09:00:00',92,'Dumbledore',6,'Luna'),(601,'Tuesday',8,'Great Hall','Yoga','08:00:00','09:00:00',92,'Dumbledore',15,'Dean'),(601,'Tuesday',8,'Great Hall','Yoga','08:00:00','09:00:00',92,'Dumbledore',17,'Seamus'),(601,'Tuesday',8,'Great Hall','Yoga','08:00:00','09:00:00',92,'Dumbledore',18,'Pavarti'),(601,'Tuesday',8,'Great Hall','Yoga','08:00:00','09:00:00',92,'Dumbledore',20,'Hermione'),(602,'Wednesday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',1,'Katie'),(602,'Wednesday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',3,'Fleur'),(602,'Wednesday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',5,'Goyle'),(602,'Wednesday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',7,'Charlie'),(602,'Wednesday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',8,'Penelope'),(602,'Wednesday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',10,'Bill'),(602,'Wednesday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',13,'Crabbe'),(602,'Wednesday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',14,'Viktor'),(602,'Wednesday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',16,'Angelina'),(602,'Wednesday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',17,'Seamus'),(602,'Wednesday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',20,'Hermione'),(602,'Wednesday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',22,'Draco'),(602,'Wednesday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',23,'Ron'),(602,'Wednesday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',25,'Lavender'),(603,'Thursday',20,'Quidditch Pitch','Quidditch','09:00:00','10:00:00',91,'McGonnagall',18,'Pavarti'),(603,'Thursday',20,'Quidditch Pitch','Quidditch','09:00:00','10:00:00',91,'McGonnagall',20,'Hermione'),(603,'Thursday',20,'Quidditch Pitch','Quidditch','09:00:00','10:00:00',91,'McGonnagall',27,'Cedric'),(603,'Thursday',20,'Quidditch Pitch','Quidditch','09:00:00','10:00:00',91,'McGonnagall',28,'Padma'),(604,'Friday',10,'Quidditch Pitch','Quidditch','09:00:00','10:00:00',93,'Sprout',2,'Fred'),(604,'Friday',10,'Quidditch Pitch','Quidditch','09:00:00','10:00:00',93,'Sprout',6,'Luna'),(604,'Friday',10,'Quidditch Pitch','Quidditch','09:00:00','10:00:00',93,'Sprout',9,'Ginny'),(604,'Friday',10,'Quidditch Pitch','Quidditch','09:00:00','10:00:00',93,'Sprout',11,'Harry'),(604,'Friday',10,'Quidditch Pitch','Quidditch','09:00:00','10:00:00',93,'Sprout',15,'Dean'),(604,'Friday',10,'Quidditch Pitch','Quidditch','09:00:00','10:00:00',93,'Sprout',19,'Cho'),(604,'Friday',10,'Quidditch Pitch','Quidditch','09:00:00','10:00:00',93,'Sprout',20,'Hermione'),(604,'Friday',10,'Quidditch Pitch','Quidditch','09:00:00','10:00:00',93,'Sprout',21,'Neville'),(604,'Friday',10,'Quidditch Pitch','Quidditch','09:00:00','10:00:00',93,'Sprout',23,'Ron'),(604,'Friday',10,'Quidditch Pitch','Quidditch','09:00:00','10:00:00',93,'Sprout',24,'Percy'),(604,'Friday',10,'Quidditch Pitch','Quidditch','09:00:00','10:00:00',93,'Sprout',26,'George'),(605,'Saturday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',16,'Angelina'),(605,'Saturday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',18,'Pavarti'),(605,'Saturday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',20,'Hermione'),(605,'Saturday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',25,'Lavender'),(605,'Saturday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',27,'Cedric'),(605,'Saturday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',28,'Padma'),(605,'Saturday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',29,'Michael'),(605,'Saturday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',30,'Ernie'),(605,'Saturday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',31,'Hannah'),(605,'Saturday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',32,'Justin'),(605,'Saturday',20,'Great Hall','Pilates','08:00:00','09:00:00',88,'Flitwick',33,'Susan'),(606,'Sunday',9,'Quidditch Pitch','Yoga','08:00:00','09:00:00',88,'Flitwick',1,'Katie'),(606,'Sunday',9,'Quidditch Pitch','Yoga','08:00:00','09:00:00',88,'Flitwick',2,'Fred'),(606,'Sunday',9,'Quidditch Pitch','Yoga','08:00:00','09:00:00',88,'Flitwick',6,'Luna'),(606,'Sunday',9,'Quidditch Pitch','Yoga','08:00:00','09:00:00',88,'Flitwick',7,'Charlie'),(606,'Sunday',9,'Quidditch Pitch','Yoga','08:00:00','09:00:00',88,'Flitwick',8,'Penelope'),(606,'Sunday',9,'Quidditch Pitch','Yoga','08:00:00','09:00:00',88,'Flitwick',9,'Ginny'),(606,'Sunday',9,'Quidditch Pitch','Yoga','08:00:00','09:00:00',88,'Flitwick',11,'Harry'),(606,'Sunday',9,'Quidditch Pitch','Yoga','08:00:00','09:00:00',88,'Flitwick',15,'Dean'),(606,'Sunday',9,'Quidditch Pitch','Yoga','08:00:00','09:00:00',88,'Flitwick',17,'Seamus'),(606,'Sunday',9,'Quidditch Pitch','Yoga','08:00:00','09:00:00',88,'Flitwick',19,'Cho'),(606,'Sunday',9,'Quidditch Pitch','Yoga','08:00:00','09:00:00',88,'Flitwick',20,'Hermione'),(606,'Sunday',9,'Quidditch Pitch','Yoga','08:00:00','09:00:00',88,'Flitwick',21,'Neville'),(606,'Sunday',9,'Quidditch Pitch','Yoga','08:00:00','09:00:00',88,'Flitwick',22,'Draco'),(606,'Sunday',9,'Quidditch Pitch','Yoga','08:00:00','09:00:00',88,'Flitwick',23,'Ron'),(606,'Sunday',9,'Quidditch Pitch','Yoga','08:00:00','09:00:00',88,'Flitwick',24,'Percy'),(606,'Sunday',9,'Quidditch Pitch','Yoga','08:00:00','09:00:00',88,'Flitwick',26,'George'),(607,'Monday',5,'Quidditch Pitch','Quidditch','08:00:00','09:00:00',92,'Dumbledore',9,'Ginny'),(607,'Monday',5,'Quidditch Pitch','Quidditch','08:00:00','09:00:00',92,'Dumbledore',20,'Hermione'),(607,'Monday',5,'Quidditch Pitch','Quidditch','08:00:00','09:00:00',92,'Dumbledore',41,'Godric');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game` (
  `Team_ID_Home` int NOT NULL,
  `Team_Name_Home` varchar(50) NOT NULL,
  `Team_ID_Away` int NOT NULL,
  `Team_Name_Away` varchar(50) NOT NULL,
  `Game_No` int NOT NULL,
  `Tourn_ID` int NOT NULL,
  `Score_team_home` int DEFAULT NULL,
  `Score_team_away` int DEFAULT NULL,
  `Sport` varchar(50) NOT NULL,
  PRIMARY KEY (`Tourn_ID`,`Game_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (201,'GRYFFINDOR',202,'Ravenclaw',1,300,200,10,'Quidditch'),(203,'Hufflepuff',204,'Slytherin',2,300,10,200,'Quidditch'),(201,'GRYFFINDOR',204,'Slytherin',3,300,200,10,'Quidditch'),(201,'GRYFFINDOR',203,'Hufflepuff',1,301,400,20,'Quidditch'),(202,'Ravenclaw',204,'Slytherin',2,301,80,159,'Quidditch'),(201,'GRYFFINDOR',204,'Slytherin',3,301,200,201,'Quidditch'),(201,'GRYFFINDOR',204,'Slytherin',1,302,200,199,'Quidditch'),(202,'Ravenclaw',203,'Hufflepuff',2,302,200,180,'Quidditch'),(201,'GRYFFINDOR',202,'Ravenclaw',3,302,200,190,'Quidditch'),(207,'Girls Rule',209,'Lightning Strikes',1,303,88,17,'Basketball'),(208,'Weasleys',211,'Draco Fan Club',2,303,30,18,'Basketball'),(207,'Girls Rule',208,'Weasleys',3,303,100,10,'Basketball'),(209,'Lightning Strikes',211,'Draco Fan Club',1,304,40,19,'Hockey'),(210,'The Chudley Cannons',211,'Draco Fan Club',1,305,3,2,'Hockey'),(215,'Twinning',212,'Smarties',1,306,14,10,'Tennis'),(214,'Do I Have To Play',216,'Dumbledore\'s Army',2,306,14,10,'Tennis'),(213,'The Chosen Wons',217,'Forge',3,306,14,10,'Tennis'),(220,'Terrible Twos',218,'Not Hogwarts',4,306,14,10,'Tennis'),(220,'Terrible Twos',215,'Twinning',5,306,14,10,'Tennis'),(213,'The Chosen Wons',214,'Do I Have To Play',6,306,14,10,'Tennis'),(213,'The Chosen Wons',220,'Terrible Twos',7,306,14,10,'Tennis'),(215,'Twinning',212,'Smarties',1,307,9,8,'Tennis'),(214,'Do I Have To Play',216,'Dumbledore\'s Army',2,307,9,8,'Tennis'),(213,'The Chosen Wons',217,'Forge',3,307,9,8,'Tennis'),(220,'Terrible Twos',218,'Not Hogwarts',4,307,9,8,'Tennis'),(220,'Terrible Twos',215,'Twinning',5,307,9,8,'Tennis'),(213,'The Chosen Wons',214,'Do I Have To Play',6,307,9,8,'Tennis'),(213,'The Chosen Wons',220,'Terrible Twos',7,307,9,8,'Tennis'),(217,'Forge',219,'Dream Team',1,308,21,10,'Ping Pong'),(214,'Do I Have To Play',220,'Terrible Twos',2,308,21,11,'Ping Pong'),(217,'Forge',214,'Do I Have To Play',3,308,21,19,'Ping Pong'),(214,'Do I Have To Play',216,'Dumbledore\'s Army',1,309,21,19,'Ping Pong'),(215,'Twinning',216,'Dumbledore\'s Army',2,309,21,17,'Ping Pong'),(215,'Twinning',214,'Do I Have To Play',3,309,21,17,'Ping Pong'),(220,'Terrible Twos',216,'Dumbledore\'s Army',1,310,17,4,'Volleyball'),(213,'The Chosen Wons',212,'Smarties',2,310,17,8,'Volleyball'),(213,'The Chosen Wons',220,'Terrible Twos',3,310,17,10,'Volleyball');
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plays_for`
--

DROP TABLE IF EXISTS `plays_for`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plays_for` (
  `P_HOGID` int NOT NULL,
  `P_Name` varchar(50) NOT NULL,
  `Team_ID` int NOT NULL,
  `Team_Name` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  PRIMARY KEY (`Team_ID`,`P_HOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plays_for`
--

LOCK TABLES `plays_for` WRITE;
/*!40000 ALTER TABLE `plays_for` DISABLE KEYS */;
INSERT INTO `plays_for` VALUES (1,'Katie',201,'GRYFFINDOR','Player'),(2,'Fred',201,'GRYFFINDOR','Player'),(9,'Ginny',201,'GRYFFINDOR','Player'),(11,'Harry',201,'GRYFFINDOR','Player'),(16,'Angelina',201,'GRYFFINDOR','Player'),(26,'George',201,'GRYFFINDOR','Player'),(41,'Godric',201,'GRYFFINDOR','Captain'),(3,'Fleur',202,'Ravenclaw','Player'),(6,'Luna',202,'Ravenclaw','Player'),(8,'Penelope',202,'Ravenclaw','Player'),(14,'Viktor',202,'Ravenclaw','Player'),(19,'Cho',202,'Ravenclaw','Player'),(28,'Padma',202,'Ravenclaw','Player'),(29,'Michael',202,'Ravenclaw','Player'),(39,'Rowena',202,'Ravenclaw','Captain'),(24,'Percy',203,'Hufflepuff','Player'),(27,'Cedric',203,'Hufflepuff','Player'),(30,'Ernie',203,'Hufflepuff','Player'),(31,'Hannah',203,'Hufflepuff','Player'),(32,'Justin',203,'Hufflepuff','Player'),(33,'Susan',203,'Hufflepuff','Player'),(40,'Helga',203,'Hufflepuff','Captain'),(5,'Goyle',204,'Slytherin','Player'),(13,'Crabbe',204,'Slytherin','Player'),(22,'Draco',204,'Slytherin','Player'),(34,'Pansy',204,'Slytherin','Player'),(35,'Blaise',204,'Slytherin','Player'),(36,'Marcus',204,'Slytherin','Player'),(38,'Salazar',204,'Slytherin','Captain'),(1,'Katie',207,'Girls Rule','Player'),(16,'Angelina',207,'Girls Rule','Player'),(19,'Cho',207,'Girls Rule','Captain'),(28,'Padma',207,'Girls Rule','Player'),(33,'Susan',207,'Girls Rule','Player'),(2,'Fred',208,'Weasleys','Captain'),(9,'Ginny',208,'Weasleys','Player'),(10,'Bill',208,'Weasleys','Player'),(24,'Percy',208,'Weasleys','Player'),(26,'George',208,'Weasleys','Player'),(11,'Harry',209,'Lightning Strikes','Captain'),(20,'Hermione',209,'Lightning Strikes','Player'),(21,'Neville',209,'Lightning Strikes','Player'),(23,'Ron',209,'Lightning Strikes','Player'),(31,'Hannah',209,'Lightning Strikes','Player'),(8,'Penelope',210,'The Chudley Cannons','Player'),(14,'Viktor',210,'The Chudley Cannons','Captain'),(24,'Percy',210,'The Chudley Cannons','Player'),(25,'Lavender',210,'The Chudley Cannons','Player'),(31,'Hannah',210,'The Chudley Cannons','Player'),(5,'Goyle',211,'Draco Fan Club','Player'),(13,'Crabbe',211,'Draco Fan Club','Player'),(22,'Draco',211,'Draco Fan Club','Captain'),(34,'Pansy',211,'Draco Fan Club','Player'),(35,'Blaise',211,'Draco Fan Club','Player'),(6,'Luna',212,'Smarties','Player'),(20,'Hermione',212,'Smarties','Captain'),(11,'Harry',213,'The Chosen Wons','Captain'),(23,'Ron',213,'The Chosen Wons','Player'),(8,'Penelope',214,'Do I Have To Play','Captain'),(24,'Percy',214,'Do I Have To Play','Player'),(18,'Pavarti',215,'Twinning','Captain'),(28,'Padma',215,'Twinning','Player'),(6,'Luna',216,'Dumbledore\'s Army','Player'),(21,'Neville',216,'Dumbledore\'s Army','Captain'),(2,'Fred',217,'Forge','Captain'),(26,'George',217,'Forge','Player'),(3,'Fleur',218,'Not Hogwarts','Captain'),(14,'Viktor',218,'Not Hogwarts','Player'),(15,'Dean',219,'Dream Team','Captain'),(17,'Seamus',219,'Dream Team','Player'),(13,'Crabbe',220,'Terrible Twos','Player'),(22,'Draco',220,'Terrible Twos','Captain');
/*!40000 ALTER TABLE `plays_for` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament_registration`
--

DROP TABLE IF EXISTS `tournament_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tournament_registration` (
  `Tourn_ID` int NOT NULL,
  `Sport` varchar(50) NOT NULL,
  `Price` int DEFAULT NULL,
  `Team_ID` int NOT NULL,
  `Team_Name` varchar(50) NOT NULL,
  `C_HOGID` int NOT NULL,
  `C_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Tourn_ID`,`Team_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament_registration`
--

LOCK TABLES `tournament_registration` WRITE;
/*!40000 ALTER TABLE `tournament_registration` DISABLE KEYS */;
INSERT INTO `tournament_registration` VALUES (300,'Quidditch',140,201,'GRYFFINDOR',41,'Godric'),(300,'Quidditch',140,202,'Ravenclaw',39,'Rowena'),(300,'Quidditch',140,203,'Hufflepuff',40,'Helga'),(300,'Quidditch',140,204,'Slytherin',38,'Salazar'),(301,'Quidditch',140,201,'GRYFFINDOR',41,'Godric'),(301,'Quidditch',140,202,'Ravenclaw',39,'Rowena'),(301,'Quidditch',140,203,'Hufflepuff',40,'Helga'),(301,'Quidditch',140,204,'Slytherin',38,'Salazar'),(302,'Quidditch',140,201,'GRYFFINDOR',41,'Godric'),(302,'Quidditch',140,202,'Ravenclaw',39,'Rowena'),(302,'Quidditch',140,203,'Hufflepuff',40,'Helga'),(302,'Quidditch',140,204,'Slytherin',38,'Salazar'),(303,'Basketball',40,207,'Girls Rule',19,'Cho'),(303,'Basketball',40,208,'Weasleys',2,'Fred'),(303,'Basketball',40,209,'Lightning Strikes',11,'Harry'),(303,'Basketball',40,211,'Draco Fan Club',22,'Draco'),(304,'Hockey',40,209,'Lightning Strikes',11,'Harry'),(304,'Hockey',40,211,'Draco Fan Club',22,'Draco'),(305,'Hockey',40,209,'Lightning Strikes',11,'Harry'),(305,'Hockey',40,210,'The Chudley Cannons',14,'Viktor'),(305,'Hockey',40,211,'Draco Fan Club',22,'Draco'),(306,'Tennis',30,212,'Smarties',20,'Hermione'),(306,'Tennis',30,213,'The Chosen Wons',11,'Harry'),(306,'Tennis',30,214,'Do I Have To Play',8,'Penelope'),(306,'Tennis',30,215,'Twinning',18,'Pavarti'),(306,'Tennis',30,216,'Dumbledore\'s Army',21,'Neville'),(306,'Tennis',30,217,'Forge',2,'Fred'),(306,'Tennis',30,218,'Not Hogwarts',3,'Fleur'),(306,'Tennis',30,220,'Terrible Twos',22,'Draco'),(307,'Tennis',30,212,'Smarties',20,'Hermione'),(307,'Tennis',30,213,'The Chosen Wons',11,'Harry'),(307,'Tennis',30,214,'Do I Have To Play',8,'Penelope'),(307,'Tennis',30,215,'Twinning',18,'Pavarti'),(307,'Tennis',30,216,'Dumbledore\'s Army',21,'Neville'),(307,'Tennis',30,217,'Forge',2,'Fred'),(307,'Tennis',30,218,'Not Hogwarts',3,'Fleur'),(307,'Tennis',30,220,'Terrible Twos',22,'Draco'),(308,'Ping Pong',40,214,'Do I Have To Play',8,'Penelope'),(308,'Ping Pong',40,217,'Forge',2,'Fred'),(308,'Ping Pong',40,219,'Dream Team',15,'Dean'),(308,'Ping Pong',40,220,'Terrible Twos',22,'Draco'),(309,'Ping Pong',40,214,'Do I Have To Play',8,'Penelope'),(309,'Ping Pong',40,215,'Twinning',18,'Pavarti'),(309,'Ping Pong',40,216,'Dumbledore\'s Army',21,'Neville'),(310,'Volleyball',30,212,'Smarties',20,'Hermione'),(310,'Volleyball',30,213,'The Chosen Wons',11,'Harry'),(310,'Volleyball',30,216,'Dumbledore\'s Army',21,'Neville'),(310,'Volleyball',30,220,'Terrible Twos',22,'Draco');
/*!40000 ALTER TABLE `tournament_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament_workers`
--

DROP TABLE IF EXISTS `tournament_workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tournament_workers` (
  `Tourn_ID` int NOT NULL,
  `W_Name` varchar(50) NOT NULL,
  `W_HOGID` int NOT NULL,
  PRIMARY KEY (`Tourn_ID`,`W_HOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament_workers`
--

LOCK TABLES `tournament_workers` WRITE;
/*!40000 ALTER TABLE `tournament_workers` DISABLE KEYS */;
INSERT INTO `tournament_workers` VALUES (300,'Hooch',90),(300,'McGonnagall',91),(300,'Sprout',93),(301,'Flitwick',88),(301,'Moody',89),(301,'Hooch',90),(302,'Hooch',90),(302,'Snape',97),(303,'McGonnagall',91),(304,'Moody',89),(305,'Quirrel/He Who Must Not Be Named',96),(306,'Umbridge',95),(307,'Hooch',90),(308,'Flitwick',88),(309,'Snape',97),(310,'Dumbledore',92);
/*!40000 ALTER TABLE `tournament_workers` ENABLE KEYS */;
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
  `Type` varchar(50) NOT NULL,
  PRIMARY KEY (`HOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Katie','Player'),(2,'Fred','Player'),(3,'Fleur','Player'),(5,'Goyle','Player'),(6,'Luna','Player'),(7,'Charlie','Player'),(8,'Penelope','Player'),(9,'Ginny','Player'),(10,'Bill','Player'),(11,'Harry','Player'),(12,'Dudley','Player'),(13,'Crabbe','Player'),(14,'Viktor','Player'),(15,'Dean','Player'),(16,'Angelina','Player'),(17,'Seamus','Player'),(18,'Pavarti','Player'),(19,'Cho','Player'),(20,'Hermione','Player'),(21,'Neville','Player'),(22,'Draco','Player'),(23,'Ron','Player'),(24,'Percy','Player'),(25,'Lavender','Player'),(26,'George','Player'),(27,'Cedric','Player'),(28,'Padma','Player'),(29,'Michael','Player'),(30,'Ernie','Player'),(31,'Hannah','Player'),(32,'Justin','Player'),(33,'Susan','Player'),(34,'Pansy','Player'),(35,'Blaise','Player'),(36,'Marcus','Player'),(37,'Millicent','Player'),(38,'Salazar','Player'),(39,'Rowena','Player'),(40,'Helga','Player'),(41,'Godric','Player'),(88,'Flitwick','Instructor'),(89,'Moody','Instructor'),(90,'Hooch','Instructor'),(91,'McGonnagall','Instructor'),(92,'Dumbledore','Instructor'),(93,'Sprout','Instructor'),(94,'Lupin','Instructor'),(95,'Umbridge','Instructor'),(96,'Quirrel/He Who Must Not Be Named','Instructor'),(97,'Snape','Instructor'),(98,'Serius','Instructor'),(99,'Lockhart','Instructor'),(100,'Hagrid','Instructor');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'uni_sports_platform_mongo'
--

--
-- Dumping routines for database 'uni_sports_platform_mongo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-13 14:38:42
