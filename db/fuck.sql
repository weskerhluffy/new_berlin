-- MySQL dump 10.13  Distrib 5.6.12, for osx10.7 (x86_64)
--
-- Host: localhost    Database: fuck
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
-- Table structure for table `t001_user_cat`
--

DROP TABLE IF EXISTS `t001_user_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t001_user_cat` (
  `id_user` int(11) NOT NULL,
  `tx_username` varchar(255) NOT NULL,
  `tx_email` varchar(255) DEFAULT NULL,
  `bl_enabled` smallint(6) DEFAULT NULL,
  `bl_account_expired` smallint(6) DEFAULT NULL,
  `bl_account_locked` smallint(6) DEFAULT NULL,
  `bl_password_expired` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username_UNIQUE` (`tx_username`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t001_user_cat`
--

LOCK TABLES `t001_user_cat` WRITE;
/*!40000 ALTER TABLE `t001_user_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `t001_user_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t002_role_cat`
--

DROP TABLE IF EXISTS `t002_role_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t002_role_cat` (
  `id_role` int(11) NOT NULL,
  `tx_authority` varchar(255) NOT NULL COMMENT 'menuda mierda',
  PRIMARY KEY (`id_role`),
  UNIQUE KEY `tx_authority_UNIQUE` (`tx_authority`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t002_role_cat`
--

LOCK TABLES `t002_role_cat` WRITE;
/*!40000 ALTER TABLE `t002_role_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `t002_role_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t003_user_role_tab`
--

DROP TABLE IF EXISTS `t003_user_role_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t003_user_role_tab` (
  `id_user` int(11) NOT NULL,
  `id_role` int(11) NOT NULL COMMENT 'BIATCH!',
  PRIMARY KEY (`id_role`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t003_user_role_tab`
--

LOCK TABLES `t003_user_role_tab` WRITE;
/*!40000 ALTER TABLE `t003_user_role_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `t003_user_role_tab` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-12 15:11:21
