-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: empleos
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',3,'add_permission'),(6,'Can change permission',3,'change_permission'),(7,'Can delete permission',3,'delete_permission'),(8,'Can view permission',3,'view_permission'),(9,'Can add user',2,'add_user'),(10,'Can change user',2,'change_user'),(11,'Can delete user',2,'delete_user'),(12,'Can view user',2,'view_user'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add persona',7,'add_persona'),(26,'Can change persona',7,'change_persona'),(27,'Can delete persona',7,'delete_persona'),(28,'Can view persona',7,'view_persona'),(29,'Can add postulacion',8,'add_postulacion'),(30,'Can change postulacion',8,'change_postulacion'),(31,'Can delete postulacion',8,'delete_postulacion'),(32,'Can view postulacion',8,'view_postulacion'),(33,'Can add anuncio',9,'add_anuncio'),(34,'Can change anuncio',9,'change_anuncio'),(35,'Can delete anuncio',9,'delete_anuncio'),(36,'Can view anuncio',9,'view_anuncio');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$f08czo29d1TL$HGZHLqhhofMIihPFYnpfu9tfO5GnEDi32YFgYEB3UJs=','2020-02-29 07:44:01.239035',1,'casv','','','casv@hotmail.com',1,1,'2020-01-06 03:17:36.554973'),(2,'pbkdf2_sha256$150000$thYxMYTmfY4F$d4eFjNbD/cb1cvPfbEYSVwZDwUb/ZIrvJlePrsT80Bc=','2020-02-28 17:03:25.015273',0,'usuario','userr','123456','',0,1,'2020-02-28 17:02:18.000000');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-01-06 03:18:39.039151','1','Persona object (1)',1,'[{\"added\": {}}]',7,1),(2,'2020-01-26 21:55:57.208803','1','Anuncio object (1)',1,'[{\"added\": {}}]',9,1),(3,'2020-01-26 21:56:41.862235','1','Postulacion object (1)',1,'[{\"added\": {}}]',8,1),(4,'2020-01-27 04:56:48.832679','2','Anuncio object (2)',1,'[{\"added\": {}}]',9,1),(5,'2020-02-28 17:02:18.871620','2','usuario',1,'[{\"added\": {}}]',2,1),(6,'2020-02-28 17:02:55.902048','2','usuario',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]',2,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(2,'auth','user'),(5,'contenttypes','contenttype'),(9,'modelo','anuncio'),(7,'modelo','persona'),(8,'modelo','postulacion'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-01-06 00:29:38.981976'),(2,'auth','0001_initial','2020-01-06 00:29:41.201608'),(3,'admin','0001_initial','2020-01-06 00:29:48.165472'),(4,'admin','0002_logentry_remove_auto_add','2020-01-06 00:29:49.741691'),(5,'admin','0003_logentry_add_action_flag_choices','2020-01-06 00:29:49.808372'),(6,'contenttypes','0002_remove_content_type_name','2020-01-06 00:29:50.890930'),(7,'auth','0002_alter_permission_name_max_length','2020-01-06 00:29:51.702217'),(8,'auth','0003_alter_user_email_max_length','2020-01-06 00:29:52.524865'),(9,'auth','0004_alter_user_username_opts','2020-01-06 00:29:52.678037'),(10,'auth','0005_alter_user_last_login_null','2020-01-06 00:29:53.235025'),(11,'auth','0006_require_contenttypes_0002','2020-01-06 00:29:53.290013'),(12,'auth','0007_alter_validators_add_error_messages','2020-01-06 00:29:53.363294'),(13,'auth','0008_alter_user_username_max_length','2020-01-06 00:29:54.311483'),(14,'auth','0009_alter_user_last_name_max_length','2020-01-06 00:29:55.143078'),(15,'auth','0010_alter_group_name_max_length','2020-01-06 00:29:55.943285'),(16,'auth','0011_update_proxy_permissions','2020-01-06 00:29:56.015822'),(17,'modelo','0001_initial','2020-01-06 00:29:57.523388'),(18,'sessions','0001_initial','2020-01-06 00:30:00.239200');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('jhx85lf9jgmr10ybgjiy1qz0ag90vcbb','Y2IwYTRjZmZiOGY3ZGE2YWE2MGM4MmZhZDc4MDYwYTg0MjJkNjQzOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMjFjYmIyOTI3Nzg2MDc2OTc5M2U0ZTRjNzI5NjExOTQ3MDI4ODEzIn0=','2020-02-09 21:52:29.049972'),('jtj5zfld2y02bifuyj8e1s8l3a7cdoso','NmE5ZDAyODg2NDU1YzExYmYwY2NiN2U0Y2I5ODg4N2E1NGFhM2Y1YTp7Il9hdXRoX3VzZXJfaGFzaCI6IjMyMWNiYjI5Mjc3ODYwNzY5NzkzZTRlNGM3Mjk2MTE5NDcwMjg4MTMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2020-03-14 07:44:01.383316'),('mnymtdqxdbu94746ijvlw9o7lovtld0n','NmE5ZDAyODg2NDU1YzExYmYwY2NiN2U0Y2I5ODg4N2E1NGFhM2Y1YTp7Il9hdXRoX3VzZXJfaGFzaCI6IjMyMWNiYjI5Mjc3ODYwNzY5NzkzZTRlNGM3Mjk2MTE5NDcwMjg4MTMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2020-02-10 04:55:38.280858'),('ybo5zcyd27y93w8se7f32t3f6hv6vsvp','NmE5ZDAyODg2NDU1YzExYmYwY2NiN2U0Y2I5ODg4N2E1NGFhM2Y1YTp7Il9hdXRoX3VzZXJfaGFzaCI6IjMyMWNiYjI5Mjc3ODYwNzY5NzkzZTRlNGM3Mjk2MTE5NDcwMjg4MTMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2020-01-20 03:18:16.224176');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_anuncio`
--

DROP TABLE IF EXISTS `modelo_anuncio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelo_anuncio` (
  `anuncio_id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `area` longtext NOT NULL,
  `pais` varchar(10) NOT NULL,
  `provincia` varchar(20) NOT NULL,
  `ciudad` varchar(20) NOT NULL,
  `direccion` varchar(20) NOT NULL,
  `persona_id` int(11) NOT NULL,
  PRIMARY KEY (`anuncio_id`),
  KEY `modelo_anuncio_persona_id_d3ef7314_fk_modelo_persona_persona_id` (`persona_id`),
  CONSTRAINT `modelo_anuncio_persona_id_d3ef7314_fk_modelo_persona_persona_id` FOREIGN KEY (`persona_id`) REFERENCES `modelo_persona` (`persona_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_anuncio`
--

LOCK TABLES `modelo_anuncio` WRITE;
/*!40000 ALTER TABLE `modelo_anuncio` DISABLE KEYS */;
INSERT INTO `modelo_anuncio` VALUES (1,'Se busca ingeniero en sistemas','Ingenieria','Holi','Ingeniero en sistemas','Ecuador','Loja','Loja','Ciudad Alegria',1),(2,'Se solicita mayordomo','Mayordomo','brgfbrbreree','Servicios publicos','Ecuador','Loja','Loja','La Argelia',2),(4,'Se busca camarero','Camarero','Se busca camarero para atender restaurant 24H','Servicio al cliente','Ecuador','Loja','Loja','La Argelia',1),(6,'Se necesita Chef','Chef','Asdaj','Cocina','Ecuador','Loja','Loja','Las Paltas',1),(8,'Se busca jardinero','Cortador de cesped','Se busca para que corte el cesped','Jardineria','Ecuador','Loja','Loja','Motupe',3);
/*!40000 ALTER TABLE `modelo_anuncio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_persona`
--

DROP TABLE IF EXISTS `modelo_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelo_persona` (
  `persona_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `celular` varchar(10) NOT NULL,
  `correo` varchar(50) NOT NULL,
  PRIMARY KEY (`persona_id`),
  UNIQUE KEY `celular` (`celular`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_persona`
--

LOCK TABLES `modelo_persona` WRITE;
/*!40000 ALTER TABLE `modelo_persona` DISABLE KEYS */;
INSERT INTO `modelo_persona` VALUES (1,'Vicente','Fernandez','2020-01-06','0939694489','123@unl.edu.ec'),(2,'Tyrion','Lannister','2000-04-20','0990521426','12345@unl.edu.ec'),(3,'Cesar','Salazar','2019-04-20','0939291234','csalazar5197@hotmail.es'),(4,'Johnny','Test','2000-05-14','0939392212','123@gmail.com'),(5,'Mike','Wasawski','2000-04-20','0932231123','mw@gmail.com'),(6,'Dona','Die','1980-02-22','08796621','DD@gmail.com');
/*!40000 ALTER TABLE `modelo_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_postulacion`
--

DROP TABLE IF EXISTS `modelo_postulacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelo_postulacion` (
  `postulacion_id` int(11) NOT NULL AUTO_INCREMENT,
  `salario` varchar(50) NOT NULL,
  `mensaje` varchar(500) NOT NULL,
  `anuncio_id` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL,
  PRIMARY KEY (`postulacion_id`),
  KEY `modelo_postulacion_anuncio_id_8ed291ea_fk_modelo_an` (`anuncio_id`),
  KEY `modelo_postulacion_persona_id_4a1c3737_fk_modelo_pe` (`persona_id`),
  CONSTRAINT `modelo_postulacion_anuncio_id_8ed291ea_fk_modelo_an` FOREIGN KEY (`anuncio_id`) REFERENCES `modelo_anuncio` (`anuncio_id`),
  CONSTRAINT `modelo_postulacion_persona_id_4a1c3737_fk_modelo_pe` FOREIGN KEY (`persona_id`) REFERENCES `modelo_persona` (`persona_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_postulacion`
--

LOCK TABLES `modelo_postulacion` WRITE;
/*!40000 ALTER TABLE `modelo_postulacion` DISABLE KEYS */;
INSERT INTO `modelo_postulacion` VALUES (1,'1000','Podria enviarme más información al siguiente número 0993232',1,3),(2,'240','Podría enviarme más información al siguiente número?\r\n093929321',1,1),(4,'250','Hola, busco empleo',1,1),(5,'1000','Mi numero es 09323923 para mas informacion',2,1),(6,'210','Más info plox',6,1),(7,'10','No sé nada',1,1),(9,'330','Me podría enviar más información al siguiente número 0393943823',4,1),(10,'330','Me gustaría hablar personalmente, mi número telefónico es 093342212',6,1),(11,'200','Me gustaría que me dieran la oportunidad, mi número es 032342322',8,1);
/*!40000 ALTER TABLE `modelo_postulacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-04  1:29:12
