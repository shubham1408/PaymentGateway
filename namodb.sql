-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: namodb
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
  `name` varchar(150) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add log table',7,'add_logtable'),(26,'Can change log table',7,'change_logtable'),(27,'Can delete log table',7,'delete_logtable'),(28,'Can view log table',7,'view_logtable'),(29,'Can add payment details',8,'add_paymentdetails'),(30,'Can change payment details',8,'change_paymentdetails'),(31,'Can delete payment details',8,'delete_paymentdetails'),(32,'Can view payment details',8,'view_paymentdetails');
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
  `last_name` varchar(150) NOT NULL,
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$o2r1pdEcCgDY$WJAY8vBIMrxhMD+H0cn6yLM6z+FrAPD+iyKEDg60iGI=','2020-07-12 11:21:37.050320',1,'namouser','','','dwivedishubham953@gmail.com',1,1,'2020-07-12 10:39:48.325822');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'payment','logtable'),(8,'payment','paymentdetails'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-07-12 10:39:01.257680'),(2,'auth','0001_initial','2020-07-12 10:39:01.741623'),(3,'admin','0001_initial','2020-07-12 10:39:03.189488'),(4,'admin','0002_logentry_remove_auto_add','2020-07-12 10:39:03.546085'),(5,'admin','0003_logentry_add_action_flag_choices','2020-07-12 10:39:03.561284'),(6,'contenttypes','0002_remove_content_type_name','2020-07-12 10:39:03.816926'),(7,'auth','0002_alter_permission_name_max_length','2020-07-12 10:39:03.853944'),(8,'auth','0003_alter_user_email_max_length','2020-07-12 10:39:03.912618'),(9,'auth','0004_alter_user_username_opts','2020-07-12 10:39:03.939710'),(10,'auth','0005_alter_user_last_login_null','2020-07-12 10:39:04.056116'),(11,'auth','0006_require_contenttypes_0002','2020-07-12 10:39:04.064733'),(12,'auth','0007_alter_validators_add_error_messages','2020-07-12 10:39:04.082125'),(13,'auth','0008_alter_user_username_max_length','2020-07-12 10:39:04.119034'),(14,'auth','0009_alter_user_last_name_max_length','2020-07-12 10:39:04.161901'),(15,'auth','0010_alter_group_name_max_length','2020-07-12 10:39:04.195895'),(16,'auth','0011_update_proxy_permissions','2020-07-12 10:39:04.214758'),(17,'payment','0001_initial','2020-07-12 10:39:04.407120'),(18,'payment','0002_auto_20200712_0829','2020-07-12 10:39:04.586524'),(19,'payment','0003_auto_20200712_1009','2020-07-12 10:39:04.779308'),(20,'payment','0004_auto_20200712_1020','2020-07-12 10:39:04.937137'),(21,'sessions','0001_initial','2020-07-12 10:39:05.016956'),(22,'payment','0005_auto_20200712_1047','2020-07-12 10:47:40.935980');
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
INSERT INTO `django_session` VALUES ('xkz1mlzueh3rm9fmjw5ij87ew3t0fgyd','OWUxZDk1NWI3YzkzMzdmMzg2N2NkYmIyZDljNzRhOTViNDczMzdlNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZmFjNzEzNjdlOGRjMmU1MDFiMTcwN2ExYjExZWE5YjM4N2ZmZTdlIn0=','2020-07-26 11:21:37.060855');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logtable`
--

DROP TABLE IF EXISTS `payment_logtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_logtable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_method` varchar(20) NOT NULL,
  `request_url` varchar(200) NOT NULL,
  `request_body` longtext NOT NULL,
  `request_headers` longtext NOT NULL,
  `response_code` varchar(80) NOT NULL,
  `response_body_text` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logtable`
--

LOCK TABLES `payment_logtable` WRITE;
/*!40000 ALTER TABLE `payment_logtable` DISABLE KEYS */;
INSERT INTO `payment_logtable` VALUES (1,'POST','http://127.0.0.1:8000/payment/api/v1/post/','<QueryDict: {\'csrfmiddlewaretoken\': [\'M570nRCN9vlopNicyRdxHycJdmHIhpWFALqmMciz69SXH0td6SegPAAX9RBJqDJW\'], \'amount\': [\'13\'], \'currency\': [\'IND\'], \'type\': [\'Credit Card\'], \'card.card_number\': [\'4367788888888\'], \'card.card_expiration_month\': [\'1\'], \'card.card_expiration_year\': [\'1900\'], \'card.card_cvv\': [\'4784\']}>','{\'Content-Length\': \'959\', \'Content-Type\': \'multipart/form-data; boundary=----WebKitFormBoundaryi7nHAQ7Isuub9K33\', \'Host\': \'127.0.0.1:8000\', \'Connection\': \'keep-alive\', \'Cache-Control\': \'max-age=0\', \'Upgrade-Insecure-Requests\': \'1\', \'Origin\': \'http://127.0.0.1:8000\', \'User-Agent\': \'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36\', \'Accept\': \'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\', \'Sec-Fetch-Site\': \'same-origin\', \'Sec-Fetch-Mode\': \'navigate\', \'Sec-Fetch-User\': \'?1\', \'Sec-Fetch-Dest\': \'document\', \'Referer\': \'http://127.0.0.1:8000/payment/api/v1/post/\', \'Accept-Encoding\': \'gzip, deflate, br\', \'Accept-Language\': \'en-GB,en-US;q=0.9,en;q=0.8\', \'Cookie\': \'_ga=GA1.1.128381469.1571255375; djdt=hide; tabstyle=html-tab; csrftoken=haRKC1AkoxSzhj5uBDsCfqo3cjlSLZTz5Qa61mg6lbp8zwgv9EtlnsMh8OfTUdGQ; sessionid=fw8ke4sngo87hvyc1jvtxkwwuj9ea452\'}','201','{\'amount\': \'13\', \'currency\': \'IND\', \'type\': \'Credit Card\', \'card\': {\'number\': \'4367788888888\'}, \'status\': \'success\', \'authorization_code\': \'ZGMOKF13GB34\', \'time\': \'12-Jul-2020 (10:40:30)\'}','2020-07-12 10:40:30.079998'),(2,'POST','http://127.0.0.1:8000/payment/api/v1/post/','<QueryDict: {\'csrfmiddlewaretoken\': [\'U1Qh47v5tZsh2heptY0Ew9hoBZGku9qeIH9DtsbRqDZQkupq1Z1nEbFCxuAlDndv\'], \'amount\': [\'1290\'], \'currency\': [\'IND\'], \'type\': [\'Debit Card\'], \'card.card_number\': [\'46342920282373536\'], \'card.card_expiration_month\': [\'6\'], \'card.card_expiration_year\': [\'2037\'], \'card.card_cvv\': [\'789\']}>','{\'Content-Length\': \'963\', \'Content-Type\': \'multipart/form-data; boundary=----WebKitFormBoundaryp0YIoe9l8L3EBQuj\', \'Host\': \'127.0.0.1:8000\', \'Connection\': \'keep-alive\', \'Cache-Control\': \'max-age=0\', \'Upgrade-Insecure-Requests\': \'1\', \'Origin\': \'http://127.0.0.1:8000\', \'User-Agent\': \'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36\', \'Accept\': \'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\', \'Sec-Fetch-Site\': \'same-origin\', \'Sec-Fetch-Mode\': \'navigate\', \'Sec-Fetch-User\': \'?1\', \'Sec-Fetch-Dest\': \'document\', \'Referer\': \'http://127.0.0.1:8000/payment/api/v1/post/\', \'Accept-Encoding\': \'gzip, deflate, br\', \'Accept-Language\': \'en-GB,en-US;q=0.9,en;q=0.8\', \'Cookie\': \'_ga=GA1.1.128381469.1571255375; djdt=hide; tabstyle=html-tab; csrftoken=haRKC1AkoxSzhj5uBDsCfqo3cjlSLZTz5Qa61mg6lbp8zwgv9EtlnsMh8OfTUdGQ; sessionid=fw8ke4sngo87hvyc1jvtxkwwuj9ea452\'}','201','{\'amount\': \'1290\', \'currency\': \'IND\', \'type\': \'Debit Card\', \'card\': {\'number\': \'46342920282373536\'}, \'status\': \'success\', \'authorization_code\': \'M9CCLXJCP5UM\', \'time\': \'12-Jul-2020 (10:41:02)\'}','2020-07-12 10:41:02.383002'),(3,'POST','http://127.0.0.1:8000/payment/api/v1/post/','<QueryDict: {\'csrfmiddlewaretoken\': [\'gaI5UFDFrHQj6j7X7DgGF9wdVQ4WmPLl4Q1rj0jrolnSowiYFEhpNbUrRlYXv3yC\'], \'amount\': [\'100\'], \'currency\': [\'IND\'], \'type\': [\'Credit Card\'], \'card.card_number\': [\'4648383993939393\'], \'card.card_expiration_month\': [\'1\'], \'card.card_expiration_year\': [\'1930\'], \'card.card_cvv\': [\'789\']}>','{\'Content-Length\': \'962\', \'Content-Type\': \'multipart/form-data; boundary=----WebKitFormBoundaryIag8sQL1OpCEkLbc\', \'Host\': \'127.0.0.1:8000\', \'Connection\': \'keep-alive\', \'Pragma\': \'no-cache\', \'Cache-Control\': \'no-cache\', \'Upgrade-Insecure-Requests\': \'1\', \'User-Agent\': \'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36\', \'Origin\': \'http://127.0.0.1:8000\', \'Accept\': \'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\', \'Sec-Fetch-Site\': \'same-origin\', \'Sec-Fetch-Mode\': \'navigate\', \'Sec-Fetch-User\': \'?1\', \'Sec-Fetch-Dest\': \'document\', \'Referer\': \'http://127.0.0.1:8000/payment/api/v1/post/\', \'Accept-Encoding\': \'gzip, deflate, br\', \'Accept-Language\': \'en-GB,en-US;q=0.9,en;q=0.8\', \'Cookie\': \'_ga=GA1.1.128381469.1571255375; djdt=hide; csrftoken=haRKC1AkoxSzhj5uBDsCfqo3cjlSLZTz5Qa61mg6lbp8zwgv9EtlnsMh8OfTUdGQ\'}','201','{\'amount\': \'100\', \'currency\': \'IND\', \'type\': \'Credit Card\', \'card\': {\'number\': \'4648383993939393\'}, \'status\': \'success\', \'authorization_code\': \'1Y8KKWFKMGUG\', \'time\': \'12-Jul-2020 (10:53:55)\'}','2020-07-12 10:53:55.429779'),(4,'POST','http://127.0.0.1:8000/payment/api/v1/post/','<QueryDict: {\'csrfmiddlewaretoken\': [\'5MFHngF5ZtyUL3EJj3loZZki4njmJ4ozTsY3MBlRW75t3gPKR4m771Iw0SdnSibQ\'], \'amount\': [\'1290\'], \'currency\': [\'IND\'], \'type\': [\'Credit Card\'], \'card.card_number\': [\'436431442035454598\'], \'card.card_expiration_month\': [\'1\'], \'card.card_expiration_year\': [\'2018\'], \'card.card_cvv\': [\'890\']}>','{\'Content-Length\': \'965\', \'Content-Type\': \'multipart/form-data; boundary=----WebKitFormBoundaryYlWMXHAplelwA1nR\', \'Host\': \'127.0.0.1:8000\', \'Connection\': \'keep-alive\', \'Cache-Control\': \'max-age=0\', \'Upgrade-Insecure-Requests\': \'1\', \'Origin\': \'http://127.0.0.1:8000\', \'User-Agent\': \'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36\', \'Accept\': \'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\', \'Sec-Fetch-Site\': \'same-origin\', \'Sec-Fetch-Mode\': \'navigate\', \'Sec-Fetch-User\': \'?1\', \'Sec-Fetch-Dest\': \'document\', \'Referer\': \'http://127.0.0.1:8000/payment/api/v1/post/\', \'Accept-Encoding\': \'gzip, deflate, br\', \'Accept-Language\': \'en-GB,en-US;q=0.9,en;q=0.8\', \'Cookie\': \'_ga=GA1.1.128381469.1571255375; djdt=hide; csrftoken=ga2AKFAry9i7Mz30RC8iCtFpWj9b3XlHmYbylGmxo7itx2og0vHfO7ZwxMPqeEKA\'}','201','{\'amount\': \'1290\', \'currency\': \'IND\', \'type\': \'Credit Card\', \'card\': {\'number\': \'436431442035454598\'}, \'status\': \'success\', \'authorization_code\': \'RFRSUK062DOO\', \'time\': \'12-Jul-2020 (10:56:31)\'}','2020-07-12 10:56:31.197810');
/*!40000 ALTER TABLE `payment_logtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_paymentdetails`
--

DROP TABLE IF EXISTS `payment_paymentdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_paymentdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `currency` varchar(200) NOT NULL,
  `card_type` varchar(20) NOT NULL,
  `card_number` bigint(20) NOT NULL,
  `card_expiration_month` int(11) NOT NULL,
  `card_expiration_year` int(11) NOT NULL,
  `card_cvv` int(11) NOT NULL,
  `authorization_code` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_paymentdetails_created_by_id_ca27119c_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `payment_paymentdetails_created_by_id_ca27119c_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_paymentdetails`
--

LOCK TABLES `payment_paymentdetails` WRITE;
/*!40000 ALTER TABLE `payment_paymentdetails` DISABLE KEYS */;
INSERT INTO `payment_paymentdetails` VALUES (1,13,'IND','Credit Card',4367788888888,1,1900,4784,'ZGMOKF13GB34','2020-07-12 10:40:30.076018',1),(2,1290,'IND','Debit Card',46342920282373536,6,2037,789,'M9CCLXJCP5UM','2020-07-12 10:41:02.377792',1),(3,100,'IND','Credit Card',4648383993939393,1,1930,789,'1Y8KKWFKMGUG','2020-07-12 10:53:55.422330',NULL),(4,1290,'IND','Credit Card',436431442035454598,1,2018,890,'RFRSUK062DOO','2020-07-12 10:56:31.194204',NULL);
/*!40000 ALTER TABLE `payment_paymentdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-12 17:17:43
