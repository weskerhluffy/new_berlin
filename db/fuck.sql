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
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `tx_username` varchar(255) NOT NULL,
  `tx_email` varchar(255) DEFAULT NULL,
  `bl_enabled` smallint(6) DEFAULT NULL,
  `bl_account_expired` smallint(6) DEFAULT NULL,
  `bl_account_locked` smallint(6) DEFAULT NULL,
  `bl_password_expired` smallint(6) DEFAULT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username_UNIQUE` (`tx_username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t001_user_cat`
--

LOCK TABLES `t001_user_cat` WRITE;
/*!40000 ALTER TABLE `t001_user_cat` DISABLE KEYS */;
INSERT INTO `t001_user_cat` VALUES (1,'codeisdesign','mierda@cagada.com',1,1,1,0,0),(2,'caca','dqwdwq',0,0,0,0,0);
/*!40000 ALTER TABLE `t001_user_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t002_role_cat`
--

DROP TABLE IF EXISTS `t002_role_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t002_role_cat` (
  `id_role` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `tx_authority` varchar(255) NOT NULL,
  PRIMARY KEY (`id_role`),
  UNIQUE KEY `UK_a46wvsbwqc499jl6ygq0cy8vd` (`tx_authority`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t002_role_cat`
--

LOCK TABLES `t002_role_cat` WRITE;
/*!40000 ALTER TABLE `t002_role_cat` DISABLE KEYS */;
INSERT INTO `t002_role_cat` VALUES (1,0,'ROLE_USER'),(2,0,'ROLE_NOMAMESSS'),(3,0,'fuck authority'),(4,0,'dwdqwwqqqqq');
/*!40000 ALTER TABLE `t002_role_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t003_user_role_cat`
--

DROP TABLE IF EXISTS `t003_user_role_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t003_user_role_cat` (
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`),
  CONSTRAINT `FK_ksrldypwamd2eyolbqxulbbtl` FOREIGN KEY (`role_id`) REFERENCES `t002_role_cat` (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t003_user_role_cat`
--

LOCK TABLES `t003_user_role_cat` WRITE;
/*!40000 ALTER TABLE `t003_user_role_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `t003_user_role_cat` ENABLE KEYS */;
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

-- Dump completed on 2014-07-17  1:16:59
