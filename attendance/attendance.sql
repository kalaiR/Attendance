CREATE DATABASE  IF NOT EXISTS `attendance` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `attendance`;
-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: attendance
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

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
-- Table structure for table `attendance_attendance`
--

DROP TABLE IF EXISTS `attendance_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id_id` int(11) NOT NULL,
  `empid` varchar(20) NOT NULL,
  `empname` varchar(20) NOT NULL,
  `working_days` varchar(20) NOT NULL,
  `leave_days` int(11) NOT NULL,
  `permissions` int(11) NOT NULL,
  `present_days` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attendance_attendance_6c390469` (`ref_id_id`),
  CONSTRAINT `ref_id_id_refs_id_28eb9387` FOREIGN KEY (`ref_id_id`) REFERENCES `attendance_employeedetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_attendance`
--

LOCK TABLES `attendance_attendance` WRITE;
/*!40000 ALTER TABLE `attendance_attendance` DISABLE KEYS */;
INSERT INTO `attendance_attendance` VALUES (35,34,'001','Damayanthi','0',0,0,0),(37,36,'003','Kiruthika','0',0,0,0),(38,37,'004','Shalini','0',0,0,0),(39,38,'005','Sabari','0',0,0,0),(40,39,'006','Arun raj','0',0,0,0),(41,40,'007','Suresh','0',0,0,0),(42,41,'008','Nanda kumar','0',1,0,0),(45,44,'011','Udhaya kumaran','0',2,0,0),(46,45,'012','Kalaiarasi','0',0,0,0),(49,48,'015','Sathiyavathi','0',0,0,0),(50,49,'016','Masrura begam','0',0,0,0),(51,50,'017','Vidhya','0',0,0,0),(52,51,'018','Prasath','0',0,0,0),(53,52,'019','Shankar','1',0,0,0),(55,54,'021','Nithya','0',0,0,0),(58,57,'024','Usharani','0',0,0,0),(59,58,'025','Sastha','0',0,0,0),(60,59,'026','Vinothini','0',0,0,0),(62,61,'19','Viji','0',0,0,0),(63,62,'20','Yathiga','0',0,0,0),(64,63,'21','Shasi','0',0,0,0),(65,64,'22','Thamotharan','0',0,0,0),(66,65,'23','Felixe','0',0,0,0),(67,66,'24','Karthikeyan','0',0,0,0);
/*!40000 ALTER TABLE `attendance_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance_employeedetails`
--

DROP TABLE IF EXISTS `attendance_employeedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance_employeedetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empid` varchar(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phoneno` varchar(12) NOT NULL,
  `accountno` varchar(20) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `empid` (`empid`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_employeedetails`
--

LOCK TABLES `attendance_employeedetails` WRITE;
/*!40000 ALTER TABLE `attendance_employeedetails` DISABLE KEYS */;
INSERT INTO `attendance_employeedetails` VALUES (34,'001','Damayanthi','aaaaa','bbbbb','63575488','654754','2015-02-04 06:19:13','2015-02-04 17:50:41'),(36,'003','Kiruthika','aaaaa','bbbbb','63575488','654754','2015-02-04 06:21:38','2015-02-04 17:52:03'),(37,'004','Shalini','aaaaa','bbbbb','63575488','654754','2015-02-04 06:22:12','2015-02-04 17:52:30'),(38,'005','Sabari','aaaaa','bbbbb','63575488','654754','2015-02-04 06:22:33','2015-02-04 17:52:52'),(39,'006','Arun raj','aaaaa','bbbbb','63575488','654754','2015-02-04 06:22:57','2015-02-04 17:53:14'),(40,'007','Suresh','aaaaa','bbbbb','63575488','654754','2015-02-04 06:23:17','2015-02-04 17:53:37'),(41,'008','Nanda kumar','aaaaa','bbbbb','63575488','654754','2015-02-04 06:23:40','2015-02-04 17:54:01'),(44,'011','Udhaya kumaran','aaaaa','bbbbb','63575488','654754','2015-02-04 06:25:55','2015-02-04 17:56:24'),(45,'012','Kalaiarasi','aaaaa','bbbbb','63575488','654754','2015-02-04 06:26:41','2015-02-04 17:57:06'),(48,'015','Sathiyavathi','aaaaa','bbbbb','63575488','654754','2015-02-04 06:28:20','2015-02-04 17:58:47'),(49,'016','Masrura begam','aaaaa','bbbbb','63575488','654754','2015-02-04 06:28:50','2015-02-04 17:59:28'),(50,'017','Vidhya','aaaaa','bbbbb','63575488','654754','2015-02-04 06:29:34','2015-02-04 18:00:17'),(51,'018','Prasath','aaaaa','bbbbb','63575488','654754','2015-02-04 06:30:21','2015-02-04 18:00:37'),(52,'019','Shankar','aaaaa','bbbbb','63575488','654754','2015-02-04 06:30:40','2015-02-04 18:01:04'),(54,'021','Nithya','aaaaa','bbbbb','63575488','654754','2015-02-04 06:31:28','2015-02-04 18:01:48'),(57,'024','Usharani','aaaaa','bbbbb','63575488','654754','2015-02-17 03:55:19','2015-02-17 15:25:55'),(58,'025','Sastha','gshsfhfh','gsdfghsfh','5246475','45765857','2015-03-14 09:19:23','2015-03-14 19:49:51'),(59,'026','Vinothini','fsgfhf','sdghfsh','432543675','556754864','2015-03-14 09:20:21','2015-03-14 19:50:38'),(61,'19','Viji','obmlm','nknjkn','nkngknk','gksnvsk','2015-03-31 10:17:13','2015-03-31 20:47:58'),(62,'20','Yathiga','abdakbnak','agagnkn','agkeangk','knvaknk','2015-03-31 10:18:02','2015-03-31 20:48:29'),(63,'21','Shasi','babaknk','b,dnbkdbaknbk','basbak','babnkan','2015-03-31 10:18:34','2015-03-31 20:48:52'),(64,'22','Thamotharan','basa','abanfan','abaa','ahagae','2015-03-31 10:19:19','2015-03-31 20:49:35'),(65,'23','Felixe','bdbaba','adga','agdaga','agaega','2015-03-31 10:19:47','2015-03-31 20:50:01'),(66,'24','Karthikeyan','baehgag','hahaha','gsaga','agagae','2015-03-31 10:20:13','2015-03-31 20:50:30');
/*!40000 ALTER TABLE `attendance_employeedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance_timingsheet`
--

DROP TABLE IF EXISTS `attendance_timingsheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance_timingsheet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id_id` int(11) NOT NULL,
  `empid` varchar(4) NOT NULL,
  `empname` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `empid` (`empid`),
  KEY `attendance_timingsheet_6c390469` (`ref_id_id`),
  CONSTRAINT `ref_id_id_refs_id_7caabbf6` FOREIGN KEY (`ref_id_id`) REFERENCES `attendance_employeedetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_timingsheet`
--

LOCK TABLES `attendance_timingsheet` WRITE;
/*!40000 ALTER TABLE `attendance_timingsheet` DISABLE KEYS */;
INSERT INTO `attendance_timingsheet` VALUES (38,34,'001','Damayanthi'),(40,36,'003','Kiruthika'),(41,37,'004','Shalini'),(42,38,'005','Sabari'),(43,39,'006','Arun raj'),(44,40,'007','Suresh'),(45,41,'008','Nanda kumar'),(48,44,'011','Udhaya kumaran'),(49,45,'012','Kalaiarasi'),(52,48,'015','Sathiyavathi'),(53,49,'016','Masrura begam'),(54,50,'017','Vidhya'),(55,51,'018','Prasath'),(56,52,'019','Shankar'),(58,54,'021','Nithya'),(61,57,'024','Usharani'),(62,58,'025','Sastha'),(63,59,'026','Vinothini'),(65,61,'19','Viji'),(66,62,'20','Yathiga'),(67,63,'21','Shasi'),(68,64,'22','Thamotharan'),(69,65,'23','Felixe'),(70,66,'24','Karthikeyan');
/*!40000 ALTER TABLE `attendance_timingsheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_5886d21f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add employee details',8,'add_employeedetails'),(23,'Can change employee details',8,'change_employeedetails'),(24,'Can delete employee details',8,'delete_employeedetails'),(25,'Can add timing sheet',9,'add_timingsheet'),(26,'Can change timing sheet',9,'change_timingsheet'),(27,'Can delete timing sheet',9,'delete_timingsheet'),(28,'Can add attendance',10,'add_attendance'),(29,'Can change attendance',10,'change_attendance'),(30,'Can delete attendance',10,'delete_attendance');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'admin','','','admin@gmail.com','pbkdf2_sha256$10000$L3JWYLr3AP3x$cJ+irB6Ti4xVJvarZICBw4LQjvvOh/Hq81eVUg/pRho=',1,1,1,'2015-03-31 10:16:02','2014-12-21 01:55:41');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`),
  CONSTRAINT `group_id_refs_id_f116770` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_7ceef80f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_dfbab7d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2014-12-21 02:01:14',1,8,'5','kalai',1,''),(2,'2014-12-21 02:29:59',1,10,'1','0',2,'Changed working_days, leave_days and permissions.'),(3,'2014-12-21 02:30:59',1,10,'1','0',2,'No fields changed.'),(4,'2014-12-21 02:31:48',1,8,'5','kalai',2,'Changed department.'),(5,'2014-12-21 02:32:44',1,10,'3','0',3,''),(6,'2014-12-21 02:32:44',1,10,'1','0',3,''),(7,'2014-12-21 02:56:24',1,10,'6','29',1,''),(8,'2014-12-21 02:58:29',1,8,'6','geetha',1,''),(9,'2014-12-21 02:58:58',1,10,'7','geetha',2,'Changed working_days, leave_days and permissions.'),(10,'2014-12-21 03:16:08',1,8,'6','geetha',3,''),(11,'2014-12-21 03:16:08',1,8,'5','kalai',3,''),(12,'2014-12-21 03:17:08',1,8,'7','kalai',1,''),(13,'2014-12-21 03:18:55',1,10,'8','kalai',2,'Changed working_days and leave_days.'),(14,'2014-12-21 03:19:06',1,10,'8','kalai',2,'Changed leave_days.'),(15,'2014-12-21 03:20:39',1,10,'8','kalai',2,'No fields changed.'),(16,'2014-12-21 03:26:26',1,8,'7','kalai',3,''),(17,'2014-12-21 03:27:53',1,8,'8','Damayanthi',1,''),(18,'2014-12-21 03:28:40',1,8,'9','kani Mozhi',1,''),(19,'2014-12-21 03:31:18',1,8,'10','Kiruthika',1,''),(20,'2014-12-21 03:31:38',1,8,'11','Shalini',1,''),(21,'2014-12-21 03:32:30',1,8,'12','Sabari',1,''),(22,'2014-12-21 03:32:50',1,8,'13','Arun Raj',1,''),(23,'2014-12-21 03:33:14',1,8,'14','Suresh',1,''),(24,'2014-12-21 03:34:04',1,8,'15','Nanda Kumar',1,''),(25,'2014-12-21 03:34:25',1,8,'16','Saravanan',1,''),(26,'2014-12-21 03:34:53',1,8,'17','Yuvarani',1,''),(27,'2014-12-21 03:35:23',1,8,'18','Jeevitha Mary',1,''),(28,'2014-12-21 03:35:58',1,8,'19','Jaya Chitra',1,''),(29,'2014-12-21 03:37:01',1,8,'20','Udhaya Kumaran',1,''),(30,'2014-12-21 03:37:26',1,8,'21','Kalaiarasi',1,''),(31,'2014-12-21 03:38:05',1,8,'22','Geetha',1,''),(32,'2014-12-21 03:38:40',1,8,'23','Lourdu Jenifer',1,''),(33,'2014-12-21 03:39:12',1,8,'24','Fathima Beevi',1,''),(34,'2014-12-21 03:39:34',1,8,'25','Sathiyavathi',1,''),(35,'2014-12-21 03:40:13',1,8,'26','Masrura Begum',1,''),(36,'2014-12-21 03:40:37',1,8,'27','Vidhya',1,''),(37,'2014-12-21 03:40:59',1,8,'28','Prasath',1,''),(38,'2014-12-21 03:41:20',1,8,'29','Shankar',1,''),(39,'2014-12-21 03:41:47',1,8,'30','Iswarya',1,''),(40,'2014-12-21 03:42:09',1,8,'31','Nithya',1,''),(41,'2014-12-21 07:06:14',1,8,'31','Nithya',2,'No fields changed.'),(42,'2014-12-21 07:09:06',1,10,'9','Damayanthi',2,'No fields changed.'),(43,'2014-12-21 07:09:14',1,8,'31','Nithya',2,'No fields changed.'),(44,'2014-12-21 07:09:42',1,9,'35','Nithya',3,''),(45,'2014-12-21 07:09:42',1,9,'34','Nithya',3,''),(46,'2014-12-22 04:21:53',1,10,'9','Damayanthi',2,'Changed working_days and leave_days.'),(47,'2014-12-22 07:10:19',1,8,'31','Nithya',2,'No fields changed.'),(48,'2014-12-22 07:11:54',1,9,'34','Nithya',3,''),(49,'2014-12-22 07:12:09',1,8,'31','Nithya',2,'No fields changed.'),(50,'2014-12-22 07:12:25',1,10,'36','Nithya',3,''),(51,'2014-12-22 07:12:25',1,10,'35','Nithya',3,''),(52,'2014-12-22 09:15:58',1,8,'31','Nithya',2,'No fields changed.'),(53,'2014-12-22 09:16:12',1,10,'37','Nithya',3,''),(54,'2014-12-22 09:16:23',1,9,'36','Nithya',3,''),(55,'2014-12-22 09:16:23',1,9,'35','Nithya',3,''),(56,'2014-12-22 09:16:32',1,8,'31','Nithya',2,'No fields changed.'),(57,'2014-12-22 09:17:06',1,8,'31','Nithya',2,'No fields changed.'),(58,'2014-12-22 09:17:29',1,10,'39','Nithya',3,''),(59,'2014-12-22 09:17:29',1,10,'38','Nithya',3,''),(60,'2014-12-22 09:18:11',1,9,'38','Nithya',3,''),(61,'2014-12-22 09:18:11',1,9,'37','Nithya',3,''),(62,'2014-12-22 09:22:39',1,8,'31','Nithya',2,'No fields changed.'),(63,'2014-12-22 09:23:17',1,10,'40','Nithya',3,''),(64,'2014-12-22 09:23:26',1,9,'39','Nithya',3,''),(65,'2014-12-22 09:25:24',1,8,'31','Nithya',2,'No fields changed.'),(66,'2014-12-22 09:25:51',1,10,'41','Nithya',3,''),(67,'2014-12-22 09:26:03',1,9,'40','Nithya',3,''),(68,'2014-12-22 09:57:32',1,8,'31','Nithya',2,'No fields changed.'),(69,'2014-12-23 04:54:35',1,10,'42','Nithya',3,''),(70,'2014-12-23 04:54:42',1,9,'41','Nithya',3,''),(71,'2014-12-23 04:54:53',1,8,'31','Nithya',2,'No fields changed.'),(72,'2014-12-23 04:55:02',1,10,'43','Nithya',3,''),(73,'2014-12-23 05:15:10',1,9,'42','Nithya',3,''),(74,'2014-12-23 05:53:52',1,8,'31','Nithya1',2,'Changed name.'),(75,'2014-12-23 05:54:06',1,8,'31','Nithya1',2,'Changed address.'),(76,'2014-12-23 05:58:58',1,8,'31','Nithya2',2,'Changed name.'),(77,'2014-12-23 06:01:47',1,9,'992','Nithya2',3,''),(78,'2014-12-23 06:01:53',1,10,'992','Nithya2',3,''),(79,'2014-12-23 06:19:38',1,8,'31','Nithya2',2,'No fields changed.'),(80,'2014-12-23 06:19:53',1,8,'31','Nithya3',2,'Changed name.'),(81,'2014-12-23 06:20:08',1,10,'996','Nithya3',3,''),(82,'2014-12-23 06:20:08',1,10,'995','Nithya2',3,''),(83,'2014-12-23 06:20:15',1,9,'999','Nithya3',3,''),(84,'2014-12-23 06:20:15',1,9,'998','Nithya2',3,''),(85,'2014-12-23 06:21:17',1,8,'31','Nithya4',2,'Changed name.'),(86,'2014-12-23 06:21:28',1,8,'31','Nithya5',2,'Changed name.'),(87,'2014-12-23 06:22:23',1,10,'998','Nithya5',3,''),(88,'2014-12-23 06:22:23',1,10,'997','Nithya4',3,''),(89,'2014-12-23 06:22:31',1,9,'1001','Nithya5',3,''),(90,'2014-12-23 06:22:31',1,9,'1000','Nithya4',3,''),(91,'2014-12-23 06:22:43',1,8,'31','Nithya6',2,'Changed name.'),(92,'2014-12-23 06:27:12',1,8,'32','ssssss',1,''),(93,'2014-12-23 06:27:29',1,9,'1003','adfasdf',2,'Changed empname.'),(94,'2014-12-23 06:28:07',1,9,'1003','safasfsafd',2,'Changed empname.'),(95,'2014-12-23 06:29:43',1,8,'32','ssssss',3,''),(96,'2014-12-23 06:29:51',1,10,'999','Nithya6',3,''),(97,'2014-12-23 06:30:00',1,9,'1002','Nithya6',3,''),(98,'2014-12-23 06:30:12',1,8,'31','Nithya7',2,'Changed name.'),(99,'2014-12-23 09:42:46',1,8,'31','Nithya8',2,'Changed name.'),(100,'2014-12-23 09:45:51',1,9,'1011','Nithya8',3,''),(101,'2014-12-23 09:52:36',1,8,'31','Nithya8',2,'No fields changed.'),(102,'2014-12-23 09:53:04',1,9,'1018','Nithya8',3,''),(103,'2014-12-23 09:53:40',1,8,'31','Nithya9',2,'Changed name.'),(104,'2014-12-23 10:11:56',1,8,'31','Nithya9',2,'No fields changed.'),(105,'2014-12-23 10:12:23',1,8,'31','Nithya9',2,'No fields changed.'),(106,'2014-12-23 10:12:28',1,8,'31','Nithya9',2,'No fields changed.'),(107,'2014-12-23 11:35:33',1,8,'31','Nithya9',2,'No fields changed.'),(108,'2014-12-23 11:35:41',1,8,'31','Nithya10',2,'Changed name.'),(109,'2014-12-23 11:35:57',1,10,'1003','Nithya10',3,''),(110,'2014-12-23 11:35:58',1,10,'1002','Nithya9',3,''),(111,'2014-12-23 11:36:13',1,9,'1024','Nithya10',3,''),(112,'2014-12-23 11:36:13',1,9,'1023','Nithya9',3,''),(113,'2014-12-23 11:38:22',1,8,'31','Nithya11',2,'Changed name.'),(114,'2014-12-23 11:38:39',1,10,'1004','Nithya11',3,''),(115,'2014-12-23 11:38:47',1,9,'1025','Nithya11',3,''),(116,'2014-12-23 11:53:52',1,8,'31','Nithya11',2,'No fields changed.'),(117,'2014-12-23 11:54:27',1,9,'1026','Nithya11',3,''),(118,'2015-01-06 06:58:09',1,10,'24','Lourdu Jenifer',2,'Changed working_days and leave_days.'),(119,'2015-01-06 06:58:41',1,10,'16','Nanda Kumar',2,'Changed working_days and leave_days.'),(120,'2015-01-06 06:59:01',1,10,'20','Jaya Chitra',2,'Changed working_days and leave_days.'),(121,'2015-01-06 06:59:15',1,10,'12','Shalini',2,'Changed working_days and permissions.'),(122,'2015-01-06 06:59:25',1,10,'10','kani Mozhi',2,'Changed working_days and permissions.'),(123,'2015-02-02 03:50:33',1,8,'32','Mohamed Uzair',1,''),(124,'2015-02-02 04:21:09',1,8,'23','Lourdu Jenifer',3,''),(125,'2015-02-02 04:21:09',1,8,'19','Jaya Chitra',3,''),(126,'2015-02-02 04:21:09',1,8,'17','Yuvarani',3,''),(127,'2015-02-02 05:35:52',1,8,'11','Shalini',3,''),(128,'2015-02-02 05:36:42',1,8,'33','Shalini',1,''),(129,'2015-02-02 05:39:02',1,9,'11','Kani Mozhi',2,'Changed empname.'),(130,'2015-02-04 06:18:43',1,8,'33','Shalini',3,''),(131,'2015-02-04 06:18:43',1,8,'32','Mohamed Uzair',3,''),(132,'2015-02-04 06:18:43',1,8,'31','Nithya',3,''),(133,'2015-02-04 06:18:43',1,8,'30','Iswarya',3,''),(134,'2015-02-04 06:18:43',1,8,'29','Shankar',3,''),(135,'2015-02-04 06:18:43',1,8,'28','Prasath',3,''),(136,'2015-02-04 06:18:43',1,8,'27','Vidhya',3,''),(137,'2015-02-04 06:18:44',1,8,'26','Masrura Begum',3,''),(138,'2015-02-04 06:18:44',1,8,'25','Sathiyavathi',3,''),(139,'2015-02-04 06:18:44',1,8,'24','Fathima Beevi',3,''),(140,'2015-02-04 06:18:44',1,8,'22','Geetha',3,''),(141,'2015-02-04 06:18:44',1,8,'21','Kalaiarasi',3,''),(142,'2015-02-04 06:18:44',1,8,'20','Udhaya Kumaran',3,''),(143,'2015-02-04 06:18:44',1,8,'18','Jeevitha Mary',3,''),(144,'2015-02-04 06:18:44',1,8,'16','Saravanan',3,''),(145,'2015-02-04 06:18:44',1,8,'15','Nanda Kumar',3,''),(146,'2015-02-04 06:18:44',1,8,'14','Suresh',3,''),(147,'2015-02-04 06:18:44',1,8,'13','Arun Raj',3,''),(148,'2015-02-04 06:18:44',1,8,'12','Sabari',3,''),(149,'2015-02-04 06:18:44',1,8,'10','Kiruthika',3,''),(150,'2015-02-04 06:18:44',1,8,'9','kani Mozhi',3,''),(151,'2015-02-04 06:18:44',1,8,'8','Damayanthi',3,''),(152,'2015-02-04 06:20:42',1,8,'34','Damayanthi',1,''),(153,'2015-02-04 06:21:35',1,8,'35','Kanimozhi',1,''),(154,'2015-02-04 06:22:08',1,8,'36','Kiruthika',1,''),(155,'2015-02-04 06:22:31',1,8,'37','Shalini',1,''),(156,'2015-02-04 06:22:56',1,8,'38','Sabari',1,''),(157,'2015-02-04 06:23:15',1,8,'39','Arun raj',1,''),(158,'2015-02-04 06:23:39',1,8,'40','Suresh',1,''),(159,'2015-02-04 06:24:02',1,8,'41','Nanda kumar',1,''),(160,'2015-02-04 06:25:17',1,8,'42','Saravanan',1,''),(161,'2015-02-04 06:25:52',1,8,'43','Jeevitha mary',1,''),(162,'2015-02-04 06:26:26',1,8,'44','Udhaya kumaran',1,''),(163,'2015-02-04 06:27:07',1,8,'45','Kalaiarasi',1,''),(164,'2015-02-04 06:27:23',1,8,'46','Geetha',1,''),(165,'2015-02-04 06:27:49',1,8,'47','Fathima beevi',1,''),(166,'2015-02-04 06:28:48',1,8,'48','Sathiyavathi',1,''),(167,'2015-02-04 06:29:32',1,8,'49','Masrura begam',1,''),(168,'2015-02-04 06:30:18',1,8,'50','Vidhya',1,''),(169,'2015-02-04 06:30:39',1,8,'51','Prasath',1,''),(170,'2015-02-04 06:31:04',1,8,'52','Shankar',1,''),(171,'2015-02-04 06:31:26',1,8,'53','Iswarya',1,''),(172,'2015-02-04 06:31:49',1,8,'54','Nithya',1,''),(173,'2015-02-04 06:32:10',1,8,'55','Mohamed Uzair',1,''),(174,'2015-02-17 03:55:17',1,8,'56','Vinoth ',1,''),(175,'2015-02-17 03:55:57',1,8,'57','Usharani',1,''),(176,'2015-02-27 12:37:46',1,8,'56','Vinoth ',3,''),(177,'2015-02-27 12:37:46',1,8,'53','Iswarya',3,''),(178,'2015-02-27 12:37:46',1,8,'42','Saravanan',3,''),(179,'2015-02-27 12:37:46',1,8,'35','Kanimozhi',3,''),(180,'2015-03-14 09:20:12',1,8,'58','Sastha',1,''),(181,'2015-03-14 09:20:39',1,8,'59','Vinothini',1,''),(182,'2015-03-14 09:23:07',1,8,'60','Niyazara',1,''),(183,'2015-03-14 09:26:39',1,8,'47','Fathima beevi',3,''),(184,'2015-03-14 09:26:39',1,8,'46','Geetha',3,''),(185,'2015-03-31 10:16:45',1,8,'60','Niyazara',3,''),(186,'2015-03-31 10:16:45',1,8,'55','Mohamed Uzair',3,''),(187,'2015-03-31 10:16:45',1,8,'43','Jeevitha mary',3,''),(188,'2015-03-31 10:18:00',1,8,'61','Viji',1,''),(189,'2015-03-31 10:18:31',1,8,'62','Yathiga',1,''),(190,'2015-03-31 10:18:54',1,8,'63','Shasi',1,''),(191,'2015-03-31 10:19:37',1,8,'64','Thamotharan',1,''),(192,'2015-03-31 10:20:03',1,8,'65','Felixe',1,''),(193,'2015-03-31 10:20:32',1,8,'66','Karthikeyan',1,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'employee details','attendance','employeedetails'),(9,'timing sheet','attendance','timingsheet'),(10,'attendance','attendance','attendance');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1abcced40845441ba02a8e987024498b','NTMzYjhiOWQyYmJiNDNiODNhMzJhZTg3ZTc4NjNkYWQ4N2Y0ZjRkOTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-01-04 01:56:40'),('1debde9e9052a1c8c08ee1ec19aae3c4','MjI4NGE2MDcwMDgwNDNmNmQyMzNlZjFlNDc1NmEwZDEyYWRmMTBlNTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2015-01-05 11:00:24'),('2ec20de6aee07b88180753dd7b6485bc','NTMzYjhiOWQyYmJiNDNiODNhMzJhZTg3ZTc4NjNkYWQ4N2Y0ZjRkOTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-02-16 03:49:57'),('3129fc5ec73684556365e3bdbe843743','MjI4NGE2MDcwMDgwNDNmNmQyMzNlZjFlNDc1NmEwZDEyYWRmMTBlNTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2015-01-07 14:07:14'),('331f74b5e010a0207b1b41c45bb2a86b','NTMzYjhiOWQyYmJiNDNiODNhMzJhZTg3ZTc4NjNkYWQ4N2Y0ZjRkOTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-04-14 10:16:03'),('40875f81387283a8a2cce518ee800bdc','NTMzYjhiOWQyYmJiNDNiODNhMzJhZTg3ZTc4NjNkYWQ4N2Y0ZjRkOTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-03-13 12:36:42'),('6e1303b90e6ba0eb46896ae5c6f3892b','NTMzYjhiOWQyYmJiNDNiODNhMzJhZTg3ZTc4NjNkYWQ4N2Y0ZjRkOTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-01-06 11:14:41'),('71522a2c1f86b8afec2ae1cda943dd96','NTMzYjhiOWQyYmJiNDNiODNhMzJhZTg3ZTc4NjNkYWQ4N2Y0ZjRkOTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-02-18 06:18:12'),('84dbcef110e0358626689d0472bd84d2','NTMzYjhiOWQyYmJiNDNiODNhMzJhZTg3ZTc4NjNkYWQ4N2Y0ZjRkOTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-01-05 07:09:51'),('ce09ab432db7fda8d7b4856e0307aed3','NTMzYjhiOWQyYmJiNDNiODNhMzJhZTg3ZTc4NjNkYWQ4N2Y0ZjRkOTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-01-20 06:51:12'),('d4ab689b8daafa8ad798d486fab41386','NTMzYjhiOWQyYmJiNDNiODNhMzJhZTg3ZTc4NjNkYWQ4N2Y0ZjRkOTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-03-28 09:18:43'),('d8a908d0c0debbd44ee25a472b27c911','MjI4NGE2MDcwMDgwNDNmNmQyMzNlZjFlNDc1NmEwZDEyYWRmMTBlNTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2015-01-19 13:37:12'),('df6d3c150c2127a08227140a465884d8','NTMzYjhiOWQyYmJiNDNiODNhMzJhZTg3ZTc4NjNkYWQ4N2Y0ZjRkOTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-03-03 03:53:44'),('e1a46402a6274cbaed404e7a0e0bea9e','NTMzYjhiOWQyYmJiNDNiODNhMzJhZTg3ZTc4NjNkYWQ4N2Y0ZjRkOTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-02-16 05:12:07');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-06 10:20:49
