CREATE DATABASE  IF NOT EXISTS `fluxit_db` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `fluxit_db`;
-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: fluxit_db
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.16.04.1

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
-- Table structure for table `tbl_candidate`
--

DROP TABLE IF EXISTS `tbl_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_candidate` (
  `dni` int(11) NOT NULL,
  `address` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` datetime NOT NULL,
  `date_birth` date NOT NULL,
  `email` varchar(320) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `phone_number` varchar(40) COLLATE utf8_bin NOT NULL,
  `sur_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `updated_date` datetime NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `updated_by_id` int(11) NOT NULL,
  PRIMARY KEY (`dni`),
  KEY `FK2gjnr3i18e030aiffh3d1jq3j` (`created_by_id`),
  KEY `FKpw2pugg73bwl6jq3dpswjgvty` (`updated_by_id`),
  CONSTRAINT `FK2gjnr3i18e030aiffh3d1jq3j` FOREIGN KEY (`created_by_id`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `FKpw2pugg73bwl6jq3dpswjgvty` FOREIGN KEY (`updated_by_id`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_candidate`
--

LOCK TABLES `tbl_candidate` WRITE;
/*!40000 ALTER TABLE `tbl_candidate` DISABLE KEYS */;
INSERT INTO `tbl_candidate` VALUES (14314989,'Carretera 445','2022-06-14 17:20:11','2022-06-12','maria@gmail.com','Maria','+54 0236 1554878993','Torres','2022-06-14 17:20:11',1,1),(23654789,'Avenida Siempre Viva 234','2022-06-14 17:16:48','2022-06-12','pedro@gmail.com','Pedro','+54 266 4878993','Torres','2022-06-14 17:16:48',1,1),(24296782,'Ruta 66','2022-06-14 17:20:52','2022-06-12','pascual@gmail.com','Pascual','+54 299 2366841','Torres','2022-06-14 17:20:52',1,1),(24314989,'Avenida Brazil 14234','2022-06-14 17:17:57','2022-06-12','lalo@gmail.com','Lalo','+54 011 44554878993','Landa','2022-06-14 17:17:57',1,1),(28336588,'Otra direccion 4','2022-06-14 17:27:02','2022-06-12','juanp@gmail.com','Juan','261 455633841','Perez','2022-06-14 17:27:02',1,1),(32665789,'Valle Los Olmos 22','2022-06-14 17:24:02','2022-06-12','pablot@gmail.com','Pablo','+54 266 74466841','Toranzo','2022-06-14 17:24:02',1,1),(32698112,'San Juan 45','2022-06-14 17:25:22','2022-06-12','mariott@gmail.com','Mario','0354 24466841','Tolosa','2022-06-14 17:25:22',1,1),(33219836,'Avenida 95','2022-06-14 17:26:20','2022-06-12','marctte@gmail.com','Marcos','2354 455633841','Tenembau','2022-06-14 17:26:20',1,1);
/*!40000 ALTER TABLE `tbl_candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pass` varchar(72) COLLATE utf8_bin NOT NULL,
  `user_name` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6jr81l5qqpxjp72fgi23ubqc9` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'$2a$10$mVKksizszA447gmRi2xJeelFfz.Mp0y.y9h4.bOBvXl.nS19htvS6','fluxit1'),(2,'$2a$10$K8GHVznIxozRuV6hEs1dr.9bDUN.rQ2.IvAVTX8p/UjEZh5mv60jO','fluxit2');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-14 17:37:20
