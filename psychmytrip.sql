-- MySQL dump 10.13  Distrib 8.0.24, for macos11 (x86_64)
--
-- Host: localhost    Database: psychmytrip
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Current Database: `psychmytrip`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `psychmytrip` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `psychmytrip`;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `Cust_No` int NOT NULL,
  `Cust_Name` varchar(20) DEFAULT NULL,
  `P_ID` int DEFAULT NULL,
  `Emp_ID` int DEFAULT NULL,
  PRIMARY KEY (`Cust_No`),
  KEY `Emp_ID` (`Emp_ID`),
  KEY `P_ID` (`P_ID`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Emp_ID`) REFERENCES `Employee` (`Emp_ID`),
  CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`P_ID`) REFERENCES `TripPackages` (`P_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Manjesh',16,12),(2,'Yadava',18,11),(3,'Kumar',7,10),(4,'Joshi',14,12),(5,'Nidhima',5,11),(6,'Diya',12,10),(7,'Eshaan',15,10),(8,'Jitendra',2,11),(9,'Madhushree',17,12),(10,'Binod',11,10),(11,'Vaishnavi',13,12),(12,'Rakshith',13,11),(13,'Hrishikesh',3,10),(14,'Chandan',9,11),(15,'Naveen',6,12),(16,'Rajesh',1,10),(17,'Sharath',6,11),(18,'Pratima',7,12),(19,'Raghavendra',15,10),(20,'Adeep',16,11),(21,'Holla',4,12),(22,'Amaan',7,10),(23,'Arya',4,11),(24,'Srushti',12,12),(25,'Bhat',18,10),(26,'Sindhu',8,11),(27,'Bindu',9,12),(28,'Mary',10,10),(29,'Goku',11,11),(30,'Vegeta',14,12),(31,'Sujan',4,10),(32,'Neha',3,11);
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `Emp_ID` int NOT NULL,
  `Emp_Name` varchar(20) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `Designation` varchar(20) DEFAULT NULL,
  `Date_of_Join` date DEFAULT NULL,
  `Manager_ID` int DEFAULT NULL,
  `Part_No` int DEFAULT NULL,
  `Emp_Rating` int DEFAULT NULL,
  PRIMARY KEY (`Emp_ID`),
  KEY `Part_No` (`Part_No`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Part_No`) REFERENCES `Partners` (`Part_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'Akash',45,214286,'Manager','2005-05-10',1,1,5),(2,'Ramesh',42,214286,'Manager','2005-05-10',2,1,5),(3,'Suresh',40,214286,'Manager','2005-05-10',3,1,5),(4,'Ganesh',35,44000,'Security','2009-09-12',1,1,5),(5,'Govinda',30,71200,'Travel Agent','2010-08-22',2,1,4),(6,'Sebastian',27,70400,'Travel Agent','2015-06-30',3,1,3),(7,'Anvitha',25,90000,'Receptionist','2017-06-30',1,2,4),(8,'Suzie',29,150000,'Trip Planner','2018-04-06',2,2,4),(9,'Arun',22,124286,'Trip Manager','2020-01-25',1,2,3),(10,'Ansari',32,175714,'Customer Executive','2013-02-19',3,2,5),(11,'Angel',31,171429,'Customer Executive','2014-04-19',1,2,5),(12,'Bharath',28,167143,'Customer Executive','2019-04-22',2,2,3);
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `empsal`
--

DROP TABLE IF EXISTS `empsal`;
/*!50001 DROP VIEW IF EXISTS `empsal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `empsal` AS SELECT 
 1 AS `Total_Sal_2020`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Expenses`
--

DROP TABLE IF EXISTS `Expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Expenses` (
  `Sl_no` int DEFAULT NULL,
  `Exp_name` varchar(20) DEFAULT NULL,
  `Cost_per_year` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Expenses`
--

LOCK TABLES `Expenses` WRITE;
/*!40000 ALTER TABLE `Expenses` DISABLE KEYS */;
INSERT INTO `Expenses` VALUES (1,'Electricity',6000),(2,'Water Bill',1000),(3,'WiFi',4800),(4,'Rent',80000),(5,'Food&misc',133333),(6,'Tax',33333),(7,'Phone Bill',2000),(8,'New items',33333);
/*!40000 ALTER TABLE `Expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `officeexp`
--

DROP TABLE IF EXISTS `officeexp`;
/*!50001 DROP VIEW IF EXISTS `officeexp`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `officeexp` AS SELECT 
 1 AS `Total_OfficeExp_2020`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Partners`
--

DROP TABLE IF EXISTS `Partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Partners` (
  `Part_No` int NOT NULL,
  `Part_Name` varchar(20) DEFAULT NULL,
  `Part_Stake` int DEFAULT NULL,
  PRIMARY KEY (`Part_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Partners`
--

LOCK TABLES `Partners` WRITE;
/*!40000 ALTER TABLE `Partners` DISABLE KEYS */;
INSERT INTO `Partners` VALUES (1,'Sharma',50),(2,'Rohit',50);
/*!40000 ALTER TABLE `Partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `profdisplay`
--

DROP TABLE IF EXISTS `profdisplay`;
/*!50001 DROP VIEW IF EXISTS `profdisplay`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `profdisplay` AS SELECT 
 1 AS `P_Name`,
 1 AS `PackageCount`,
 1 AS `Price`,
 1 AS `Profit`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `TripPackages`
--

DROP TABLE IF EXISTS `TripPackages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TripPackages` (
  `P_ID` int NOT NULL,
  `P_Name` varchar(20) DEFAULT NULL,
  `Destination` varchar(20) DEFAULT NULL,
  `Number_of_Days` int DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Profit` int DEFAULT NULL,
  PRIMARY KEY (`P_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TripPackages`
--

LOCK TABLES `TripPackages` WRITE;
/*!40000 ALTER TABLE `TripPackages` DISABLE KEYS */;
INSERT INTO `TripPackages` VALUES (1,'4P:Dandeli','Dandeli',5,60000,20000),(2,'6P:Dandeli','Dandeli',5,84000,30000),(3,'Honeymoon:Paris','Paris',9,480000,180000),(4,'Honeymoon:Andaman','Andaman&Nicobar',9,300000,110000),(5,'Honeymoon:Bali','Bali',9,400000,190000),(6,'Honeymoon:Maldives','Maldives',9,340000,160000),(7,'Honeymoon:Monaco','Monaco',9,500000,230000),(8,'2P:Manali','Manali',6,50000,10000),(9,'2P:Kedarnath','Kedarnath',5,40000,9000),(10,'2P:Mumbai','Mumbai',5,70000,14000),(11,'2P:Delhi','Delhi',5,65000,15000),(12,'10P:HimalayaTrek','Himachal Pradesh',10,800000,300000),(13,'2P:HimalayaTrek','Himachal Pradesh',10,200000,50000),(14,'2P:Goa','Goa',6,18000,4000),(15,'4P:Shirdi','Shirdi',4,20000,5000),(16,'2P:Ooty','Ooty',3,10000,3000),(17,'2P:Kodaikanal','Kodaikanal',4,16000,5000),(18,'2P:MysuruLocalTour','Mysuru',3,8000,4000);
/*!40000 ALTER TABLE `TripPackages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `psychmytrip`
--

USE `psychmytrip`;

--
-- Final view structure for view `empsal`
--

/*!50001 DROP VIEW IF EXISTS `empsal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empsal` AS select sum(`employee`.`Salary`) AS `Total_Sal_2020` from `employee` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `officeexp`
--

/*!50001 DROP VIEW IF EXISTS `officeexp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `officeexp` AS select sum(`expenses`.`Cost_per_year`) AS `Total_OfficeExp_2020` from `expenses` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `profdisplay`
--

/*!50001 DROP VIEW IF EXISTS `profdisplay`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `profdisplay` AS select `trippackages`.`P_Name` AS `P_Name`,count(`customer`.`P_ID`) AS `PackageCount`,`trippackages`.`Price` AS `Price`,`trippackages`.`Profit` AS `Profit` from (`customer` left join `trippackages` on((`customer`.`P_ID` = `trippackages`.`P_ID`))) group by `customer`.`P_ID` */;
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

-- Dump completed on 2022-02-03  4:10:12
