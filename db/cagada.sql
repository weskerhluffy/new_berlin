-- MySQL dump 10.13  Distrib 5.6.12, for osx10.7 (x86_64)
--
-- Host: localhost    Database: cagada
-- ------------------------------------------------------
-- Server version	5.6.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `RegisteredServiceImpl`
--

DROP TABLE IF EXISTS `RegisteredServiceImpl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RegisteredServiceImpl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `allowedToProxy` bit(1) NOT NULL,
  `anonymousAccess` bit(1) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `evaluation_order` int(11) NOT NULL,
  `ignoreAttributes` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `serviceId` varchar(255) DEFAULT NULL,
  `ssoEnabled` bit(1) NOT NULL,
  `theme` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RegisteredServiceImpl`
--

LOCK TABLES `RegisteredServiceImpl` WRITE;
/*!40000 ALTER TABLE `RegisteredServiceImpl` DISABLE KEYS */;
/*!40000 ALTER TABLE `RegisteredServiceImpl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SERVICETICKET`
--

DROP TABLE IF EXISTS `SERVICETICKET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SERVICETICKET` (
  `ID` varchar(255) NOT NULL,
  `NUMBER_OF_TIMES_USED` int(11) DEFAULT NULL,
  `CREATION_TIME` bigint(20) DEFAULT NULL,
  `EXPIRATION_POLICY` longblob NOT NULL,
  `LAST_TIME_USED` bigint(20) DEFAULT NULL,
  `PREVIOUS_LAST_TIME_USED` bigint(20) DEFAULT NULL,
  `FROM_NEW_LOGIN` bit(1) NOT NULL,
  `TICKET_ALREADY_GRANTED` bit(1) NOT NULL,
  `SERVICE` longblob NOT NULL,
  `ticketGrantingTicket_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK7645ADE132A2C0E5` (`ticketGrantingTicket_ID`),
  CONSTRAINT `FK7645ADE132A2C0E5` FOREIGN KEY (`ticketGrantingTicket_ID`) REFERENCES `TICKETGRANTINGTICKET` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SERVICETICKET`
--

LOCK TABLES `SERVICETICKET` WRITE;
/*!40000 ALTER TABLE `SERVICETICKET` DISABLE KEYS */;
/*!40000 ALTER TABLE `SERVICETICKET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TICKETGRANTINGTICKET`
--

DROP TABLE IF EXISTS `TICKETGRANTINGTICKET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TICKETGRANTINGTICKET` (
  `ID` varchar(255) NOT NULL,
  `NUMBER_OF_TIMES_USED` int(11) DEFAULT NULL,
  `CREATION_TIME` bigint(20) DEFAULT NULL,
  `EXPIRATION_POLICY` longblob NOT NULL,
  `LAST_TIME_USED` bigint(20) DEFAULT NULL,
  `PREVIOUS_LAST_TIME_USED` bigint(20) DEFAULT NULL,
  `AUTHENTICATION` longblob NOT NULL,
  `EXPIRED` bit(1) NOT NULL,
  `SERVICES_GRANTED_ACCESS_TO` longblob NOT NULL,
  `ticketGrantingTicket_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKB4C4CDDE32A2C0E5` (`ticketGrantingTicket_ID`),
  CONSTRAINT `FKB4C4CDDE32A2C0E5` FOREIGN KEY (`ticketGrantingTicket_ID`) REFERENCES `TICKETGRANTINGTICKET` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TICKETGRANTINGTICKET`
--

LOCK TABLES `TICKETGRANTINGTICKET` WRITE;
/*!40000 ALTER TABLE `TICKETGRANTINGTICKET` DISABLE KEYS */;
/*!40000 ALTER TABLE `TICKETGRANTINGTICKET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_DATA`
--

DROP TABLE IF EXISTS `USER_DATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_DATA` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_DATA`
--

LOCK TABLES `USER_DATA` WRITE;
/*!40000 ALTER TABLE `USER_DATA` DISABLE KEYS */;
INSERT INTO `USER_DATA` VALUES (1,'caca','caca@shit.com','orto'),(2,'a','a@mierda.com','culero'),(3,'codeisdesign','codeisdesign@crap.com','nomamesss');
/*!40000 ALTER TABLE `USER_DATA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_attributes`
--

DROP TABLE IF EXISTS `rs_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rs_attributes` (
  `RegisteredServiceImpl_id` bigint(20) NOT NULL,
  `a_name` varchar(255) NOT NULL,
  `a_id` int(11) NOT NULL,
  PRIMARY KEY (`RegisteredServiceImpl_id`,`a_id`),
  KEY `FK4322E15F0C8D661` (`RegisteredServiceImpl_id`),
  CONSTRAINT `FK4322E15F0C8D661` FOREIGN KEY (`RegisteredServiceImpl_id`) REFERENCES `RegisteredServiceImpl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_attributes`
--

LOCK TABLES `rs_attributes` WRITE;
/*!40000 ALTER TABLE `rs_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `rs_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'caca','mierda'),(2,'a','b'),(3,'codeisdesign','password');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-17  1:16:49
