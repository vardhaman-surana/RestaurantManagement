-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: restaurant
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admins` (
  `email_id` varchar(30) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES ('admin1@gmail.com','admin1','$2a$10$h1FHQ7pI0z896XhdG6gD6O7.v4olBvFrXAu9jPEv5zjvUHB6BoLyq'),('admin2@gmail.com','admin2','$2a$10$FbwuxwM3Aa4qXg/JNW12/uYAur3pb3JE97bmsyuw0.hwZYzT/QVuC'),('admin3@gmail.com','admin3','$2a$10$w3.bOf52K4Yp7vgnqhfOcupLQnSK/c8kUqMWCpLeTcS6zFQuUaerW');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dishes`
--

DROP TABLE IF EXISTS `dishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dishes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `price` float(7,2) NOT NULL,
  `res_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dishes`
--

LOCK TABLES `dishes` WRITE;
/*!40000 ALTER TABLE `dishes` DISABLE KEYS */;
INSERT INTO `dishes` VALUES (1,'dish1',10.00,1),(2,'dish2',20.00,1),(4,'dish1',100.00,1),(6,'dish3',300.00,1),(10,'dish1',100.00,1),(11,'dish2',200.00,1),(12,'dish3',300.00,1);
/*!40000 ALTER TABLE `dishes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owners`
--

DROP TABLE IF EXISTS `owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `owners` (
  `email_id` varchar(30) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `creator_id` varchar(30) NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owners`
--

LOCK TABLES `owners` WRITE;
/*!40000 ALTER TABLE `owners` DISABLE KEYS */;
INSERT INTO `owners` VALUES ('owner1@gmail.com','owner1','$2a$10$K6J7R6FNGUMZO0PY5dJCq.2IQHdriHU8hRSSuEHFp33YiB.FGSqr6','admin1@gmail.com'),('owner3@gmail.com','owner3','$2a$10$sKFaC2qVLpaIT/2qUI1R2.StT/YiQlCfLcoqj4vjsEjoP0dkIXLcG','admin1@gmail.com');
/*!40000 ALTER TABLE `owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point`
--

DROP TABLE IF EXISTS `point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `point` (
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point`
--

LOCK TABLES `point` WRITE;
/*!40000 ALTER TABLE `point` DISABLE KEYS */;
/*!40000 ALTER TABLE `point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `creator_id` varchar(30) DEFAULT NULL,
  `owner_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (1,'Restaurant1',10.230000,11.540000,'admin2@gmail.com','owner1@gmail.com'),(2,'Restaurant2',10.100000,11.100000,'admin2@gmail.com','owner3@gmail.com'),(5,'Restaurant3',10.100000,11.100000,'admin2@gmail.com','owner3@gmail.com');
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `super_admins`
--

DROP TABLE IF EXISTS `super_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `super_admins` (
  `email_id` varchar(30) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `super_admins`
--

LOCK TABLES `super_admins` WRITE;
/*!40000 ALTER TABLE `super_admins` DISABLE KEYS */;
INSERT INTO `super_admins` VALUES ('superadmin1@gmail.com','superadmin1','$2a$10$vxBO8ibkTCLG9OQQUjUH4.qf/cNSHoE4VEPPN/f9.I8xEWFdzFlHq'),('superadmin2@gmail.com','superadmin2','$2a$10$7RhNSfOgbvjL0fHJ5IYzReLRU1wxlDusRSiWWSDM.p9Z0bs7nbuyy');
/*!40000 ALTER TABLE `super_admins` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-05 20:08:02
