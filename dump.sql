-- MySQL dump 10.13  Distrib 5.7.18, for macos10.12 (x86_64)
--
-- Host: localhost    Database: djangoDataBase
-- ------------------------------------------------------
-- Server version	5.7.18

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add video',7,'add_video'),(20,'Can change video',7,'change_video'),(21,'Can delete video',7,'delete_video'),(22,'Can add video tag',8,'add_videotag'),(23,'Can change video tag',8,'change_videotag'),(24,'Can delete video tag',8,'delete_videotag'),(25,'Can add video question',9,'add_videoquestion'),(26,'Can change video question',9,'change_videoquestion'),(27,'Can delete video question',9,'delete_videoquestion');
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
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$5IJiS1Hd8F7Z$SqX6dA7ypjCPAAhIQI126BDENT0/vKlmdCmt0Rpla8s=','2017-07-03 17:30:41.640933',1,'johnny','','','johnny@bootkik.com',1,1,'2017-06-14 21:57:09.488930');
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
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-06-15 15:38:44.572858','2','What is Bootkik',1,'[{\"added\": {}}, {\"added\": {\"object\": \"Globe Intro\", \"name\": \"video tag\"}}, {\"added\": {\"object\": \"Profile Reveal\", \"name\": \"video tag\"}}, {\"added\": {\"object\": \"video_tag\", \"name\": \"video tag\"}}]',7,1),(2,'2017-06-15 15:39:58.814277','2','What is Bootkik',2,'[{\"changed\": {\"fields\": [\"title\"], \"object\": \"Sign up conclusion\", \"name\": \"video tag\"}}]',7,1),(3,'2017-06-15 17:24:24.004681','2','What is Bootkik',2,'[{\"added\": {\"object\": \"Are you interested?\", \"name\": \"video question\"}}]',7,1),(4,'2017-06-15 17:24:26.974118','2','What is Bootkik',2,'[]',7,1),(5,'2017-06-15 17:59:45.912177','2','What is Bootkik',2,'[{\"changed\": {\"fields\": [\"status\"], \"object\": \"Globe Intro\", \"name\": \"video tag\"}}, {\"changed\": {\"fields\": [\"status\"], \"object\": \"Profile Reveal\", \"name\": \"video tag\"}}, {\"changed\": {\"fields\": [\"status\"], \"object\": \"Sign up conclusion\", \"name\": \"video tag\"}}]',7,1),(6,'2017-06-15 21:56:13.671729','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"title\", \"vimeo_id\"]}}, {\"added\": {\"object\": \"Harnessing Resources\", \"name\": \"video tag\"}}, {\"added\": {\"object\": \"Managing Self\", \"name\": \"video tag\"}}, {\"added\": {\"object\": \"Business Models\", \"name\": \"video tag\"}}, {\"added\": {\"object\": \"Managing Self\", \"name\": \"video tag\"}}, {\"changed\": {\"fields\": [\"title\", \"end\", \"status\"], \"object\": \"Course - Entrepreneurship\", \"name\": \"video tag\"}}, {\"changed\": {\"fields\": [\"title\", \"start\", \"end\"], \"object\": \"Managing Self\", \"name\": \"video tag\"}}, {\"changed\": {\"fields\": [\"title\", \"start\", \"end\", \"status\"], \"object\": \"Product Ideas\", \"name\": \"video tag\"}}]',7,1),(7,'2017-06-15 21:56:21.909722','2','Video 1 - What Makes an Entrepreneur',2,'[{\"deleted\": {\"object\": \"Course - Entrepreneurship\", \"name\": \"video tag\"}}]',7,1),(8,'2017-06-16 15:31:58.121650','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"vimeo_id\"]}}]',7,1),(9,'2017-06-16 22:07:48.806621','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"status\"], \"object\": \"Product Ideas\", \"name\": \"video tag\"}}]',7,1),(10,'2017-06-19 20:50:23.972459','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"title\"], \"object\": \"#Managing Self\", \"name\": \"video tag\"}}, {\"changed\": {\"fields\": [\"title\"], \"object\": \"#Product Ideas\", \"name\": \"video tag\"}}]',7,1),(11,'2017-06-19 21:07:35.532672','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"title\"], \"object\": \"1Managing Self\", \"name\": \"video tag\"}}, {\"changed\": {\"fields\": [\"title\"], \"object\": \"1Product Ideas\", \"name\": \"video tag\"}}]',7,1),(12,'2017-06-19 21:26:08.906699','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"title\"], \"object\": \"1Harnessing Resources\", \"name\": \"video tag\"}}, {\"changed\": {\"fields\": [\"title\"], \"object\": \"1Managing Self\", \"name\": \"video tag\"}}, {\"changed\": {\"fields\": [\"title\"], \"object\": \"1Business Models\", \"name\": \"video tag\"}}, {\"changed\": {\"fields\": [\"title\"], \"object\": \"1Managing Self\", \"name\": \"video tag\"}}]',7,1),(13,'2017-06-19 21:38:53.603457','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"start\"], \"object\": \"1Managing Self\", \"name\": \"video tag\"}}]',7,1),(14,'2017-06-20 22:47:38.965067','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"title\", \"start\", \"end\"], \"object\": \"1Product Ideas\", \"name\": \"video tag\"}}, {\"changed\": {\"fields\": [\"title\", \"start\", \"end\"], \"object\": \"1Managing Self\", \"name\": \"video tag\"}}]',7,1),(15,'2017-06-21 20:41:50.156227','2','Video 1 - What Makes an Entrepreneur',2,'[{\"added\": {\"object\": \"1blah\", \"name\": \"video tag\"}}]',7,1),(16,'2017-06-21 22:47:36.006993','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"start\"], \"object\": \"1Product Ideas\", \"name\": \"video tag\"}}, {\"deleted\": {\"object\": \"1blah\", \"name\": \"video tag\"}}]',7,1),(17,'2017-06-21 22:47:44.855328','2','Video 1 - What Makes an Entrepreneur',2,'[{\"deleted\": {\"object\": \"1\", \"name\": \"video tag\"}}]',7,1),(18,'2017-06-21 22:47:56.268976','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"start\"], \"object\": \"1Product Ideas\", \"name\": \"video tag\"}}, {\"changed\": {\"fields\": [\"end\"], \"object\": \"1Managing Self\", \"name\": \"video tag\"}}]',7,1),(19,'2017-06-21 23:00:53.398486','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"end\"], \"object\": \"1Managing Self\", \"name\": \"video tag\"}}]',7,1),(20,'2017-06-21 23:01:23.894072','2','Video 1 - What Makes an Entrepreneur',2,'[{\"deleted\": {\"object\": \"1\", \"name\": \"video tag\"}}, {\"deleted\": {\"object\": \"1\", \"name\": \"video tag\"}}]',7,1),(21,'2017-06-21 23:01:53.678864','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"end\"], \"object\": \"1Managing Self\", \"name\": \"video tag\"}}]',7,1),(22,'2017-06-21 23:02:09.131753','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"status\"], \"object\": \"1\", \"name\": \"video tag\"}}]',7,1),(23,'2017-06-21 23:02:27.632364','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"title\"], \"object\": \"1asd\", \"name\": \"video tag\"}}]',7,1),(24,'2017-06-21 23:05:16.396206','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"status\"], \"object\": \"1asd\", \"name\": \"video tag\"}}]',7,1),(25,'2017-06-21 23:06:04.427166','2','Video 1 - What Makes an Entrepreneur',2,'[{\"deleted\": {\"object\": \"1asd\", \"name\": \"video tag\"}}]',7,1),(26,'2017-06-21 23:06:47.046966','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"title\"], \"object\": \"1\", \"name\": \"video tag\"}}]',7,1),(27,'2017-06-22 15:07:42.154487','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"title\"], \"object\": \"12323\", \"name\": \"video tag\"}}]',7,1),(28,'2017-06-22 15:07:57.117861','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"title\"], \"object\": \"1sdfsdfsdfdsf\", \"name\": \"video tag\"}}]',7,1),(29,'2017-06-22 15:21:31.518667','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"title\"], \"object\": \"1Harnessing\", \"name\": \"video tag\"}}, {\"changed\": {\"fields\": [\"title\"], \"object\": \"1\", \"name\": \"video tag\"}}]',7,1),(30,'2017-06-22 15:21:48.418224','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"title\"], \"object\": \"1asd\", \"name\": \"video tag\"}}]',7,1),(31,'2017-06-22 15:30:17.413219','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"title\"], \"object\": \"1\", \"name\": \"video tag\"}}]',7,1),(32,'2017-06-22 15:32:51.755533','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"title\"], \"object\": \"1asd\", \"name\": \"video tag\"}}]',7,1),(33,'2017-06-22 15:40:50.654779','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"title\"], \"object\": \"1\", \"name\": \"video tag\"}}]',7,1),(34,'2017-06-22 18:10:40.229740','2','Video 1 - What Makes an Entrepreneur',2,'[{\"deleted\": {\"object\": \"1\", \"name\": \"video tag\"}}]',7,1),(35,'2017-06-22 18:11:41.111018','2','Video 1 - What Makes an Entrepreneur',2,'[{\"deleted\": {\"object\": \"12\", \"name\": \"video tag\"}}]',7,1),(36,'2017-06-22 18:11:59.153398','2','Video 1 - What Makes an Entrepreneur',2,'[{\"deleted\": {\"object\": \"1\", \"name\": \"video tag\"}}]',7,1),(37,'2017-07-03 17:31:51.892799','2','Video 1 - What Makes an Entrepreneur',2,'[{\"deleted\": {\"object\": \"1\", \"name\": \"video tag\"}}]',7,1),(38,'2017-07-03 17:32:02.061309','2','Video 1 - What Makes an Entrepreneur',2,'[{\"changed\": {\"fields\": [\"end\"], \"object\": \"1Managing Self\", \"name\": \"video tag\"}}]',7,1);
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
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'videos','video'),(9,'videos','videoquestion'),(8,'videos','videotag');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-06-14 21:54:34.986170'),(2,'auth','0001_initial','2017-06-14 21:54:35.189944'),(3,'admin','0001_initial','2017-06-14 21:54:35.238581'),(4,'admin','0002_logentry_remove_auto_add','2017-06-14 21:54:35.262503'),(5,'contenttypes','0002_remove_content_type_name','2017-06-14 21:54:35.327861'),(6,'auth','0002_alter_permission_name_max_length','2017-06-14 21:54:35.341129'),(7,'auth','0003_alter_user_email_max_length','2017-06-14 21:54:35.362280'),(8,'auth','0004_alter_user_username_opts','2017-06-14 21:54:35.380061'),(9,'auth','0005_alter_user_last_login_null','2017-06-14 21:54:35.402300'),(10,'auth','0006_require_contenttypes_0002','2017-06-14 21:54:35.404419'),(11,'auth','0007_alter_validators_add_error_messages','2017-06-14 21:54:35.416288'),(12,'auth','0008_alter_user_username_max_length','2017-06-14 21:54:35.438501'),(13,'sessions','0001_initial','2017-06-14 21:54:35.463363'),(14,'videos','0001_initial','2017-06-14 22:56:58.442456'),(15,'videos','0002_auto_20170615_0938','2017-06-15 15:38:21.193176'),(16,'videos','0003_videoquestion','2017-06-15 16:16:20.936037'),(17,'videos','0004_auto_20170615_1019','2017-06-15 16:19:56.459147'),(18,'videos','0005_auto_20170615_1021','2017-06-15 16:21:31.061428'),(19,'videos','0006_auto_20170615_1121','2017-06-15 17:22:16.400865'),(20,'videos','0007_auto_20170615_1124','2017-06-15 17:24:06.735546'),(21,'videos','0008_videotag_status','2017-06-15 17:51:11.538671'),(22,'videos','0009_auto_20170615_1140','2017-06-15 17:51:11.540506'),(23,'videos','0010_auto_20170615_1142','2017-06-15 17:51:11.542193'),(24,'videos','0011_auto_20170615_1143','2017-06-15 17:51:11.543956'),(25,'videos','0012_auto_20170615_1144','2017-06-15 17:51:11.545605'),(26,'videos','0013_auto_20170615_1145','2017-06-15 17:51:11.547282'),(27,'videos','0014_auto_20170615_1149','2017-06-15 17:51:11.549039'),(28,'videos','0015_auto_20170615_1149','2017-06-15 17:51:11.550735'),(29,'videos','0016_auto_20170615_1151','2017-06-15 17:51:11.552309'),(30,'videos','0017_auto_20170615_1157','2017-06-15 17:57:08.297887');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6u4omgpnznoikgi9zalrcjhigy1zs7x3','MjFmMGJlNmQzY2M3NTAxZDQ1ZDYzZjc3ZjgwZjk4OWU0NGQwZjU4Nzp7Il9hdXRoX3VzZXJfaGFzaCI6IjY2ZjU1YjIyYzg2YWQ1OWEyMzk3MjYyZmUzYzY3ZTQzOWQyNzZhNDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-07-17 17:30:41.645277'),('hkr8jisr4z3wq9nd3ly93phleb14uf2i','MjFmMGJlNmQzY2M3NTAxZDQ1ZDYzZjc3ZjgwZjk4OWU0NGQwZjU4Nzp7Il9hdXRoX3VzZXJfaGFzaCI6IjY2ZjU1YjIyYzg2YWQ1OWEyMzk3MjYyZmUzYzY3ZTQzOWQyNzZhNDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-06-28 21:57:23.860740');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos_video`
--

DROP TABLE IF EXISTS `videos_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `vimeo_id` varchar(500) NOT NULL,
  `video_thumbnail` varchar(100) NOT NULL,
  `learning_level` smallint(5) unsigned NOT NULL,
  `unlock_lvl` smallint(5) unsigned NOT NULL,
  `reward_default` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos_video`
--

LOCK TABLES `videos_video` WRITE;
/*!40000 ALTER TABLE `videos_video` DISABLE KEYS */;
INSERT INTO `videos_video` VALUES (2,'Video 1 - What Makes an Entrepreneur','220508227','img/Bootkik_Emblem_positive_CMYK_dYtLo3x.png',1,0,50);
/*!40000 ALTER TABLE `videos_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos_videoquestion`
--

DROP TABLE IF EXISTS `videos_videoquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos_videoquestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(100) NOT NULL,
  `time` smallint(5) unsigned NOT NULL,
  `video_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `videos_videoquestion_video_id_d4ecf8ae_fk_videos_video_id` (`video_id`),
  CONSTRAINT `videos_videoquestion_video_id_d4ecf8ae_fk_videos_video_id` FOREIGN KEY (`video_id`) REFERENCES `videos_video` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos_videoquestion`
--

LOCK TABLES `videos_videoquestion` WRITE;
/*!40000 ALTER TABLE `videos_videoquestion` DISABLE KEYS */;
INSERT INTO `videos_videoquestion` VALUES (3,'Are you interested?',20,2);
/*!40000 ALTER TABLE `videos_videoquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos_videotag`
--

DROP TABLE IF EXISTS `videos_videotag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos_videotag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `start` smallint(5) unsigned NOT NULL,
  `end` smallint(5) unsigned NOT NULL,
  `video_id` int(11) DEFAULT NULL,
  `status` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `videos_videotag_video_id_80b585bc_fk_videos_video_id` (`video_id`),
  CONSTRAINT `videos_videotag_video_id_80b585bc_fk_videos_video_id` FOREIGN KEY (`video_id`) REFERENCES `videos_video` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos_videotag`
--

LOCK TABLES `videos_videotag` WRITE;
/*!40000 ALTER TABLE `videos_videotag` DISABLE KEYS */;
INSERT INTO `videos_videotag` VALUES (2,'1Product Ideas',64,124,2,'unseen'),(3,'1Managing Self',0,64,2,'seen'),(4,'1Harnessing',124,150,2,'unseen'),(5,'1Managing Self',150,187,2,'unseen'),(6,'1Business Models',187,270,2,'unseen'),(7,'1Managing Self',270,316,2,'unseen'),(8,'',0,64,NULL,'seen'),(9,'',0,124,NULL,'seen'),(10,'',0,150,NULL,'seen'),(11,'',0,187,NULL,'seen'),(12,'',0,270,NULL,'seen'),(13,'',0,64,NULL,'seen'),(14,'',0,124,NULL,'seen'),(15,'',0,150,NULL,'seen'),(16,'',0,187,NULL,'seen'),(17,'',0,270,NULL,'seen'),(18,'',0,64,NULL,'seen'),(19,'',0,124,NULL,'seen'),(20,'',0,150,NULL,'seen'),(21,'',0,187,NULL,'seen'),(22,'',0,270,NULL,'seen'),(23,'',0,64,NULL,'seen'),(24,'',0,124,NULL,'seen'),(25,'',0,150,NULL,'seen'),(26,'',0,187,NULL,'seen'),(27,'',0,270,NULL,'seen'),(28,'',0,64,NULL,'seen'),(29,'',0,124,NULL,'seen'),(30,'',0,150,NULL,'seen'),(31,'',0,187,NULL,'seen'),(32,'',0,270,NULL,'seen'),(33,'',0,64,NULL,'seen'),(34,'',0,124,NULL,'seen'),(35,'',0,150,NULL,'seen'),(36,'',0,187,NULL,'seen'),(37,'',0,270,NULL,'seen'),(38,'',0,64,NULL,'seen'),(39,'',0,124,NULL,'seen'),(40,'',0,150,NULL,'seen'),(41,'',0,187,NULL,'seen'),(42,'',0,270,NULL,'seen'),(43,'',0,64,NULL,'seen'),(44,'',0,124,NULL,'seen'),(45,'',0,150,NULL,'seen'),(46,'',0,187,NULL,'seen'),(47,'',0,270,NULL,'seen'),(48,'',0,64,NULL,'seen'),(49,'',0,124,NULL,'seen'),(50,'',0,150,NULL,'seen'),(51,'',0,187,NULL,'seen'),(52,'',0,270,NULL,'seen'),(53,'',0,64,NULL,'seen'),(54,'',0,124,NULL,'seen'),(55,'',0,150,NULL,'seen'),(56,'',0,187,NULL,'seen'),(57,'',0,270,NULL,'seen'),(58,'',0,64,NULL,'seen'),(59,'',0,124,NULL,'seen'),(60,'',0,150,NULL,'seen'),(61,'',0,187,NULL,'seen'),(62,'',0,270,NULL,'seen'),(63,'',0,64,NULL,'seen'),(64,'',0,124,NULL,'seen'),(65,'',0,150,NULL,'seen'),(66,'',0,187,NULL,'seen'),(67,'',0,270,NULL,'seen'),(68,'',0,64,NULL,'seen'),(69,'',0,124,NULL,'seen'),(70,'',0,150,NULL,'seen'),(71,'',0,187,NULL,'seen'),(72,'',0,270,NULL,'seen'),(74,'',0,64,NULL,'seen'),(75,'',0,124,NULL,'seen'),(76,'',0,150,NULL,'seen'),(77,'',0,187,NULL,'seen'),(78,'',0,270,NULL,'seen'),(79,'',0,340,NULL,'seen'),(80,'',0,64,NULL,'seen'),(81,'',0,124,NULL,'seen'),(82,'',0,150,NULL,'seen'),(83,'',0,187,NULL,'seen'),(84,'',0,270,NULL,'seen'),(85,'',0,340,NULL,'seen'),(86,'',0,64,NULL,'seen'),(87,'',0,124,NULL,'seen'),(88,'',0,150,NULL,'seen'),(89,'',0,187,NULL,'seen'),(90,'',0,270,NULL,'seen'),(91,'',0,340,NULL,'seen'),(92,'',0,64,NULL,'seen'),(93,'',0,124,NULL,'seen'),(94,'',0,150,NULL,'seen'),(95,'',0,187,NULL,'seen'),(96,'',0,270,NULL,'seen'),(97,'',0,340,NULL,'seen'),(98,'',0,64,NULL,'seen'),(99,'',0,124,NULL,'seen'),(100,'',0,150,NULL,'seen'),(101,'',0,187,NULL,'seen'),(102,'',0,270,NULL,'seen'),(103,'',0,340,NULL,'seen'),(104,'',0,64,NULL,'seen'),(105,'',0,124,NULL,'seen'),(106,'',0,150,NULL,'seen'),(107,'',0,187,NULL,'seen'),(108,'',0,270,NULL,'seen'),(109,'',0,340,NULL,'seen'),(110,'',0,64,NULL,'seen'),(111,'',0,124,NULL,'seen'),(112,'',0,150,NULL,'seen'),(113,'',0,187,NULL,'seen'),(114,'',0,270,NULL,'seen'),(115,'',0,340,NULL,'seen'),(116,'',0,64,NULL,'seen'),(117,'',0,124,NULL,'seen'),(118,'',0,150,NULL,'seen'),(119,'',0,187,NULL,'seen'),(120,'',0,270,NULL,'seen'),(121,'',0,340,NULL,'seen'),(122,'',0,64,NULL,'seen'),(123,'',0,124,NULL,'seen'),(124,'',0,150,NULL,'seen'),(125,'',0,187,NULL,'seen'),(126,'',0,270,NULL,'seen'),(127,'',0,340,NULL,'seen'),(128,'',0,64,NULL,'seen'),(129,'',0,124,NULL,'seen'),(130,'',0,150,NULL,'seen'),(131,'',0,187,NULL,'seen'),(132,'',0,270,NULL,'seen'),(133,'',0,340,NULL,'seen'),(134,'',0,64,NULL,'seen'),(135,'',0,124,NULL,'seen'),(136,'',0,150,NULL,'seen'),(137,'',0,187,NULL,'seen'),(138,'',0,270,NULL,'seen'),(139,'',0,340,NULL,'seen'),(140,'',0,64,NULL,'seen'),(141,'',0,124,NULL,'seen'),(142,'',0,150,NULL,'seen'),(143,'',0,187,NULL,'seen'),(144,'',0,270,NULL,'seen'),(145,'',0,340,NULL,'seen'),(146,'2',0,64,NULL,'seen'),(147,'2',0,124,NULL,'seen'),(148,'2',0,150,NULL,'seen'),(149,'2',0,187,NULL,'seen'),(150,'2',0,270,NULL,'seen'),(151,'2',0,340,NULL,'seen'),(152,'2',0,64,NULL,'seen'),(153,'2',0,124,NULL,'seen'),(154,'2',0,150,NULL,'seen'),(155,'2',0,187,NULL,'seen'),(156,'2',0,270,NULL,'seen'),(157,'2',0,340,NULL,'seen'),(158,'2',0,64,NULL,'seen'),(159,'2',0,124,NULL,'seen'),(160,'2',0,150,NULL,'seen'),(161,'2',0,187,NULL,'seen'),(162,'2',0,270,NULL,'seen'),(163,'2',0,340,NULL,'seen'),(164,'2',316,340,NULL,'seen'),(165,'1',316,340,NULL,'seen'),(166,'1',316,340,NULL,'seen'),(167,'1',316,340,NULL,'seen'),(168,'1',316,340,NULL,'seen'),(169,'1',316,340,NULL,'seen'),(170,'1',316,340,NULL,'seen'),(171,'1',316,340,NULL,'seen'),(172,'1',316,340,NULL,'seen');
/*!40000 ALTER TABLE `videos_videotag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-06 16:26:53
