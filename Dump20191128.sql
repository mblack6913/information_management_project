-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tss
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `clubhouse_room`
--

DROP TABLE IF EXISTS `clubhouse_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clubhouse_room` (
  `Name` varchar(20) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Pin_Code` char(4) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubhouse_room`
--

LOCK TABLES `clubhouse_room` WRITE;
/*!40000 ALTER TABLE `clubhouse_room` DISABLE KEYS */;
INSERT INTO `clubhouse_room` VALUES ('Away 1','Dressing Room','2389'),('Away 2','Dressing Room','9364'),('Away 3','Dressing Room','8293'),('Entrance','Clubhouse','7683'),('Home 1','Dressing Room','4734'),('Home 2','Dressing Room','2848'),('Home 3','Dressing Room','8462'),('Showers','Hygiene',NULL),('Store_Room 1','Storage','1234'),('Store_Room 2','Storage','2341'),('Toilet','Hygiene',NULL);
/*!40000 ALTER TABLE `clubhouse_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `Set_ID` int(11) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Set_Size` int(11) NOT NULL,
  PRIMARY KEY (`Set_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (123,'Cones',20),(124,'Cones',20),(125,'Cones',50),(223,'Poles',20),(243,'Poles',20),(254,'Bibs',50),(273,'Balls',20),(274,'Balls',20),(303,'Ladders',3);
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `Email_Address` varchar(30) NOT NULL,
  `Telephone_No` int(11) NOT NULL,
  `FName` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `Team_Name` varchar(20) NOT NULL,
  PRIMARY KEY (`Email_Address`,`Telephone_No`),
  KEY `Team_Name` (`Team_Name`),
  CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`Team_Name`) REFERENCES `team` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('bren123@gmail.com',854347767,'Mike','Brennen','TSS Inters'),('doug@gmail.com',876673425,'Alan','Douglas','TSS Junior C'),('ger123@gmail.com',876673425,'Ger','Smith','TSS Seniors'),('goffer98@gmail.com',893899261,'Peter','Goff','TSS Junior B'),('jsmith3@gmail.com',833434543,'Jack','Smith','TSS Junior A');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `manager_restricted`
--

DROP TABLE IF EXISTS `manager_restricted`;
/*!50001 DROP VIEW IF EXISTS `manager_restricted`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `manager_restricted` AS SELECT 
 1 AS `FName`,
 1 AS `LName`,
 1 AS `Team_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `match_`
--

DROP TABLE IF EXISTS `match_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `match_` (
  `Match_ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Opponent` varchar(30) NOT NULL,
  `Venue` varchar(20) NOT NULL,
  `Throw_In` time NOT NULL,
  PRIMARY KEY (`Match_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_`
--

LOCK TABLES `match_` WRITE;
/*!40000 ALTER TABLE `match_` DISABLE KEYS */;
INSERT INTO `match_` VALUES (100000,'2020-01-17','O’Dwyers','Bremore Park','11:00:00'),(100022,'2020-02-06','Thomas Davis 2','Kiltipper Road','12:00:00'),(100028,'2020-02-21','Erins Isle','Finglas','19:30:00'),(100102,'2020-02-29','Round Towers C','Monastery Road','12:00:00'),(100182,'2020-03-02','St Brigids','Russel Park','12:00:00'),(100200,'2020-03-11','Thomas Davis 1','Kiltipper Road','20:00:00'),(100202,'2020-03-17','Croabh Chiarain','Clonshaugh','11:00:00'),(100254,'2020-03-02','Na Gael Oga','St Catherines Park','19:30:00'),(100265,'2020-03-11','St Maurs','Rush','19:30:00'),(100284,'2020-03-17','Kilmacud Crokes','Silver Park','11:00:00');
/*!40000 ALTER TABLE `match_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play`
--

DROP TABLE IF EXISTS `play`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `play` (
  `Match_ID` int(11) NOT NULL,
  `Team_Name` varchar(20) NOT NULL,
  PRIMARY KEY (`Match_ID`,`Team_Name`),
  KEY `Team_Name` (`Team_Name`),
  CONSTRAINT `play_ibfk_1` FOREIGN KEY (`Match_ID`) REFERENCES `match_` (`Match_ID`),
  CONSTRAINT `play_ibfk_2` FOREIGN KEY (`Team_Name`) REFERENCES `team` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play`
--

LOCK TABLES `play` WRITE;
/*!40000 ALTER TABLE `play` DISABLE KEYS */;
INSERT INTO `play` VALUES (100102,'TSS Inters'),(100200,'TSS Inters'),(100254,'TSS Junior A'),(100265,'TSS Junior A'),(100182,'TSS Junior B'),(100284,'TSS Junior B'),(100022,'TSS Junior C'),(100202,'TSS Junior C'),(100000,'TSS Seniors'),(100028,'TSS Seniors');
/*!40000 ALTER TABLE `play` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `Registration_No` int(11) NOT NULL,
  `FName` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `Age` int(11) NOT NULL,
  `Telephone_No` int(11) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Team_Name` varchar(20) NOT NULL,
  PRIMARY KEY (`Registration_No`),
  KEY `Team_Name` (`Team_Name`),
  CONSTRAINT `player_ibfk_1` FOREIGN KEY (`Team_Name`) REFERENCES `team` (`Name`),
  CONSTRAINT `Registration_No` CHECK ((`Registration_No` >= 100000))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (100034,'Tom','Alan',25,841233456,'12 Main Street','TSS Seniors'),(100788,'Mick','Doherty',26,871233454,'2 Lower Key','TSS Inters'),(100990,'Jack','Murphy',24,841233777,'1 New Park','TSS Seniors'),(102334,'Kevin','Keogh',35,88233456,'12 Orwell Park','TSS Junior B'),(102344,'James','Lynch',32,823333456,'34 Orwell Lane','TSS Inters'),(102654,'Seamus','Smith',21,891233455,'32 Fork Road','TSS Seniors'),(103542,'Alex','Hughes',26,841233336,'12 Mile View','TSS Junior C'),(108876,'Conor','Quinn',19,857676556,'6 Long Road','TSS Inters'),(108931,'Aaron','Foley',37,841239996,'10 Spoon Rd','TSS Junior B'),(109777,'Sam','Baker',39,861233456,'15 Kimmage Rd','TSS Junior A');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `player_restricted`
--

DROP TABLE IF EXISTS `player_restricted`;
/*!50001 DROP VIEW IF EXISTS `player_restricted`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `player_restricted` AS SELECT 
 1 AS `Registration_No`,
 1 AS `FName`,
 1 AS `LName`,
 1 AS `Age`,
 1 AS `Team_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `Set_ID` int(11) NOT NULL,
  `Store_Room` varchar(20) NOT NULL,
  PRIMARY KEY (`Set_ID`,`Store_Room`),
  KEY `Store_Room` (`Store_Room`),
  CONSTRAINT `store_ibfk_1` FOREIGN KEY (`Set_ID`) REFERENCES `equipment` (`Set_ID`),
  CONSTRAINT `store_ibfk_2` FOREIGN KEY (`Store_Room`) REFERENCES `clubhouse_room` (`Name`),
  CONSTRAINT `chk_valid` CHECK (((`Store_Room` = _utf8mb4'Store_Room 1') or (`Store_Room` = _utf8mb4'Store_Room 2')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (123,'Store_Room 1'),(124,'Store_Room 1'),(125,'Store_Room 1'),(223,'Store_Room 1'),(243,'Store_Room 1'),(254,'Store_Room 2'),(273,'Store_Room 2'),(274,'Store_Room 2'),(303,'Store_Room 2');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `Name` varchar(50) NOT NULL,
  `Captain` varchar(20) NOT NULL,
  `Division` int(11) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES ('TSS Inters','G. Alan',3),('TSS Junior A','B. Howard',5),('TSS Junior B','T. Baker',7),('TSS Junior C','D. Murphy',9),('TSS Seniors','T. Alan',1);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `team_BEFORE_DELETE` BEFORE DELETE ON `team` FOR EACH ROW BEGIN
UPDATE Player SET Player.Team_Name = NULL 
WHERE Player.Team_Name = Old.Name;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'tss'
--

--
-- Dumping routines for database 'tss'
--

--
-- Final view structure for view `manager_restricted`
--

/*!50001 DROP VIEW IF EXISTS `manager_restricted`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `manager_restricted` AS select `manager`.`FName` AS `FName`,`manager`.`LName` AS `LName`,`manager`.`Team_Name` AS `Team_Name` from `manager` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `player_restricted`
--

/*!50001 DROP VIEW IF EXISTS `player_restricted`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `player_restricted` AS select `player`.`Registration_No` AS `Registration_No`,`player`.`FName` AS `FName`,`player`.`LName` AS `LName`,`player`.`Age` AS `Age`,`player`.`Team_Name` AS `Team_Name` from `player` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-28 18:48:15
