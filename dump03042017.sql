CREATE DATABASE  IF NOT EXISTS `newsrucom_trial` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `newsrucom_trial`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: newsrucom_trial
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
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
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add user login datetime',7,'add_userlogindatetime'),(20,'Can change user login datetime',7,'change_userlogindatetime'),(21,'Can delete user login datetime',7,'delete_userlogindatetime'),(22,'Can add question order',8,'add_questionorder'),(23,'Can change question order',8,'change_questionorder'),(24,'Can delete question order',8,'delete_questionorder'),(25,'Can add question options',9,'add_questionoptions'),(26,'Can change question options',9,'change_questionoptions'),(27,'Can delete question options',9,'delete_questionoptions'),(28,'Can add question',10,'add_question'),(29,'Can change question',10,'change_question'),(30,'Can delete question',10,'delete_question'),(31,'Can add survey',11,'add_survey'),(32,'Can change survey',11,'change_survey'),(33,'Can delete survey',11,'delete_survey'),(34,'Can add answer',12,'add_answer'),(35,'Can change answer',12,'change_answer'),(36,'Can delete answer',12,'delete_answer'),(37,'Can add user survey',13,'add_usersurvey'),(38,'Can change user survey',13,'change_usersurvey'),(39,'Can delete user survey',13,'delete_usersurvey');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$ifmjXkV6uF4P$6+Gydw4kCTWBUX2r4ZdZeoMqF4jqGtXYG972h3vFTwA=','2017-04-02 22:12:15.881006',1,'django','','','django@local.local',1,1,'2017-04-02 22:10:24.751717');
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
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(12,'PollsApp','answer'),(10,'PollsApp','question'),(9,'PollsApp','questionoptions'),(8,'PollsApp','questionorder'),(11,'PollsApp','survey'),(13,'PollsApp','usersurvey'),(6,'sessions','session'),(7,'UserManagementApp','userlogindatetime');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'MainApp','0001_initial','2017-04-02 21:55:35.065533'),(2,'MainApp','0002_delete_userlogindatetime','2017-04-02 21:55:35.100309'),(3,'contenttypes','0001_initial','2017-04-02 21:55:35.199572'),(4,'auth','0001_initial','2017-04-02 21:55:40.465010'),(5,'PollsApp','0001_initial','2017-04-02 21:55:42.257594'),(6,'UserManagementApp','0001_initial','2017-04-02 21:55:42.306673'),(7,'admin','0001_initial','2017-04-02 21:55:42.542715'),(8,'admin','0002_logentry_remove_auto_add','2017-04-02 21:55:42.558342'),(9,'contenttypes','0002_remove_content_type_name','2017-04-02 21:55:43.011442'),(10,'auth','0002_alter_permission_name_max_length','2017-04-02 21:55:43.193976'),(11,'auth','0003_alter_user_email_max_length','2017-04-02 21:55:43.309790'),(12,'auth','0004_alter_user_username_opts','2017-04-02 21:55:43.337495'),(13,'auth','0005_alter_user_last_login_null','2017-04-02 21:55:43.481043'),(14,'auth','0006_require_contenttypes_0002','2017-04-02 21:55:43.481043'),(15,'auth','0007_alter_validators_add_error_messages','2017-04-02 21:55:43.512189'),(16,'auth','0008_alter_user_username_max_length','2017-04-02 21:55:43.663950'),(17,'sessions','0001_initial','2017-04-02 21:55:43.828328');
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
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('zf1upwj5cenm5373njlcrwxeq7awgy35','ZDI4NmYwYWQwMWVmNDNjZjI5ZjNiNzM0YWI5MmMzNmI0NGNiODM2ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMmQxOWQ5Y2U1M2M2MWE4OWEwOWU4NjUxMzk3MTM0NzJlN2YzZjU1MCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-16 22:12:15.902022');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollsapp_answer`
--

DROP TABLE IF EXISTS `pollsapp_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollsapp_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text_answer` varchar(300) NOT NULL,
  `option_id_id` int(11) NOT NULL,
  `question_id_id` int(11) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  `user_survey_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `PollsApp_an_option_id_id_4d0222df_fk_PollsApp_questionoptions_id` (`option_id_id`),
  KEY `PollsApp_answer_question_id_id_2fc68e00_fk_PollsApp_question_id` (`question_id_id`),
  KEY `PollsApp_answer_user_id_id_fd1c2cda_fk_auth_user_id` (`user_id_id`),
  KEY `PollsApp_an_user_survey_id_id_080746a2_fk_PollsApp_usersurvey_id` (`user_survey_id_id`),
  CONSTRAINT `PollsApp_an_option_id_id_4d0222df_fk_PollsApp_questionoptions_id` FOREIGN KEY (`option_id_id`) REFERENCES `pollsapp_questionoptions` (`id`),
  CONSTRAINT `PollsApp_an_user_survey_id_id_080746a2_fk_PollsApp_usersurvey_id` FOREIGN KEY (`user_survey_id_id`) REFERENCES `pollsapp_usersurvey` (`id`),
  CONSTRAINT `PollsApp_answer_question_id_id_2fc68e00_fk_PollsApp_question_id` FOREIGN KEY (`question_id_id`) REFERENCES `pollsapp_question` (`id`),
  CONSTRAINT `PollsApp_answer_user_id_id_fd1c2cda_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollsapp_answer`
--

LOCK TABLES `pollsapp_answer` WRITE;
/*!40000 ALTER TABLE `pollsapp_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollsapp_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollsapp_question`
--

DROP TABLE IF EXISTS `pollsapp_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollsapp_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(300) NOT NULL,
  `question_update` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollsapp_question`
--

LOCK TABLES `pollsapp_question` WRITE;
/*!40000 ALTER TABLE `pollsapp_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollsapp_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollsapp_questionoptions`
--

DROP TABLE IF EXISTS `pollsapp_questionoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollsapp_questionoptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_text` varchar(100) NOT NULL,
  `question_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `PollsApp_questio_question_id_id_32e90609_fk_PollsApp_question_id` (`question_id_id`),
  CONSTRAINT `PollsApp_questio_question_id_id_32e90609_fk_PollsApp_question_id` FOREIGN KEY (`question_id_id`) REFERENCES `pollsapp_question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollsapp_questionoptions`
--

LOCK TABLES `pollsapp_questionoptions` WRITE;
/*!40000 ALTER TABLE `pollsapp_questionoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollsapp_questionoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollsapp_questionorder`
--

DROP TABLE IF EXISTS `pollsapp_questionorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollsapp_questionorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` int(11) NOT NULL,
  `question_id_id` int(11) NOT NULL,
  `survey_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `PollsApp_questio_question_id_id_363cd3af_fk_PollsApp_question_id` (`question_id_id`),
  KEY `PollsApp_questionord_survey_id_id_8648bcda_fk_PollsApp_survey_id` (`survey_id_id`),
  CONSTRAINT `PollsApp_questio_question_id_id_363cd3af_fk_PollsApp_question_id` FOREIGN KEY (`question_id_id`) REFERENCES `pollsapp_question` (`id`),
  CONSTRAINT `PollsApp_questionord_survey_id_id_8648bcda_fk_PollsApp_survey_id` FOREIGN KEY (`survey_id_id`) REFERENCES `pollsapp_survey` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollsapp_questionorder`
--

LOCK TABLES `pollsapp_questionorder` WRITE;
/*!40000 ALTER TABLE `pollsapp_questionorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollsapp_questionorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollsapp_survey`
--

DROP TABLE IF EXISTS `pollsapp_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollsapp_survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_name` varchar(100) NOT NULL,
  `survey_description` varchar(1000) NOT NULL,
  `survey_update` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollsapp_survey`
--

LOCK TABLES `pollsapp_survey` WRITE;
/*!40000 ALTER TABLE `pollsapp_survey` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollsapp_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollsapp_usersurvey`
--

DROP TABLE IF EXISTS `pollsapp_usersurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollsapp_usersurvey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `response_update` datetime(6) NOT NULL,
  `survey_id_id` int(11) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `PollsApp_usersurvey_survey_id_id_932ba78a_fk_PollsApp_survey_id` (`survey_id_id`),
  KEY `PollsApp_usersurvey_user_id_id_dfc48f91_fk_auth_user_id` (`user_id_id`),
  CONSTRAINT `PollsApp_usersurvey_survey_id_id_932ba78a_fk_PollsApp_survey_id` FOREIGN KEY (`survey_id_id`) REFERENCES `pollsapp_survey` (`id`),
  CONSTRAINT `PollsApp_usersurvey_user_id_id_dfc48f91_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollsapp_usersurvey`
--

LOCK TABLES `pollsapp_usersurvey` WRITE;
/*!40000 ALTER TABLE `pollsapp_usersurvey` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollsapp_usersurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermanagementapp_userlogindatetime`
--

DROP TABLE IF EXISTS `usermanagementapp_userlogindatetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermanagementapp_userlogindatetime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(16) NOT NULL,
  `user_login_datetime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermanagementapp_userlogindatetime`
--

LOCK TABLES `usermanagementapp_userlogindatetime` WRITE;
/*!40000 ALTER TABLE `usermanagementapp_userlogindatetime` DISABLE KEYS */;
INSERT INTO `usermanagementapp_userlogindatetime` VALUES (1,'django','2017-04-02 22:12:15.881006');
/*!40000 ALTER TABLE `usermanagementapp_userlogindatetime` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-03  3:47:09
