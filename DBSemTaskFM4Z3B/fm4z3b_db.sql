-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: fm4z3b_db
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

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
-- Table structure for table `hajó`
--

DROP TABLE IF EXISTS `hajó`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hajó` (
  `hajó_id` int(11) NOT NULL,
  `max_rakomány_szám` int(11) DEFAULT NULL,
  `súlyterhelés` int(11) DEFAULT NULL,
  `márka` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hajó_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hajó`
--

LOCK TABLES `hajó` WRITE;
/*!40000 ALTER TABLE `hajó` DISABLE KEYS */;
INSERT INTO `hajó` VALUES (1,4,5400,'Ever Golden'),(2,2,3200,'Madrid Maersk'),(3,6,7600,'CMA CGM'),(4,4,4600,'COSCO'),(5,2,2100,'OOCL'),(6,6,7300,'HMM'),(7,4,3900,'MA CGM'),(8,5,6700,'MSC'),(9,5,6100,'MSC'),(10,4,4900,'HMM'),(11,6,5700,'OOCL'),(12,2,3300,'HMM'),(13,8,8000,'Ever Golden'),(14,6,6400,'OOCL'),(15,6,7100,'Madrid Maersk'),(16,4,5300,'MA CGM'),(17,4,4700,'Ever Golden'),(18,4,5200,'HMM'),(19,2,2900,'MA CGM'),(20,8,9000,'Madrid Maersk');
/*!40000 ALTER TABLE `hajó` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hajó_út`
--

DROP TABLE IF EXISTS `hajó_út`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hajó_út` (
  `indulási_idő` date DEFAULT NULL,
  `érkezési_idő` date DEFAULT NULL,
  `hajó_id` int(11) DEFAULT NULL,
  `út_id` int(11) DEFAULT NULL,
  KEY `id_út` (`út_id`),
  KEY `id_hajó` (`hajó_id`),
  CONSTRAINT `id_hajó` FOREIGN KEY (`hajó_id`) REFERENCES `hajó` (`hajó_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_út` FOREIGN KEY (`út_id`) REFERENCES `út` (`út_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hajó_út`
--

LOCK TABLES `hajó_út` WRITE;
/*!40000 ALTER TABLE `hajó_út` DISABLE KEYS */;
INSERT INTO `hajó_út` VALUES ('2020-11-12','2020-11-15',20,1),('2020-02-26','2020-02-27',19,2),('2021-04-01','2021-04-04',18,3),('2022-01-27','2022-01-31',17,4),('2019-07-25','2019-07-29',16,5),('2020-12-01','2020-12-04',10,6),('2022-08-20','2022-08-24',9,7),('2021-04-20','2021-04-24',8,8),('2019-02-14','2019-02-15',7,9),('2020-11-02','2020-11-05',6,10),('2022-09-01','2022-09-01',15,11),('2019-05-17','2019-05-19',14,12),('2021-01-12','2021-01-13',13,13),('2018-06-05','2018-06-07',12,14),('2021-04-02','2021-04-06',11,15),('2020-10-12','2020-10-15',5,16),('2022-05-23','2022-05-25',4,17),('2020-03-21','2020-03-24',3,18),('2019-09-12','2019-09-15',2,19),('2022-04-01','2022-04-01',1,20),('2018-10-10','2018-10-14',4,21),('2019-02-22','2019-02-25',8,22),('2019-03-26','2019-03-30',2,23),('2021-10-02','2021-10-05',12,24),('2019-11-11','2019-11-14',14,25),('2020-03-03','2020-03-04',1,26),('2022-10-24','2022-10-27',5,27),('2018-07-14','2018-07-17',3,28),('2018-06-30','2018-07-03',13,29),('2021-01-29','2021-02-01',17,30);
/*!40000 ALTER TABLE `hajó_út` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kapitány`
--

DROP TABLE IF EXISTS `kapitány`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kapitány` (
  `id` int(11) NOT NULL,
  `név` varchar(45) DEFAULT NULL,
  `nemzetiség` varchar(45) DEFAULT NULL,
  `születési_dátum` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `id` FOREIGN KEY (`id`) REFERENCES `hajó` (`hajó_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kapitány`
--

LOCK TABLES `kapitány` WRITE;
/*!40000 ALTER TABLE `kapitány` DISABLE KEYS */;
INSERT INTO `kapitány` VALUES (1,'Katona Ferenc','magyar','1974-02-14'),(2,'Charles Thompson','angol','1982-11-24'),(3,'Fernando Oliveira','portugál','1969-07-21'),(4,'Taylor Scott','egyesült államok','1982-04-20'),(5,'Cristopher Briggs','egyesült államok','1976-12-12'),(6,'Roberto Ramírez','spanyol','1979-06-05'),(7,'Alberto Siqueira Bosco','brazil','1961-09-01'),(8,'Kentaro Miura','japán','1966-07-11'),(9,'Ranjan Kumar','india','1980-10-30'),(10,'Morgan Campbell','angol','1973-05-19'),(11,'Bodnár Áron','magyar','1978-01-29'),(12,'Younes Al-Habib','marokkó','1966-06-23'),(13,'Ruben Latupapua','indonéz','1970-03-12'),(14,'Gregorio Hernández','argentin','1977-11-23'),(15,'Belay Adriaanse','dél-afrika','1990-09-29'),(16,'Freddie Black','kanada','1989-07-14'),(17,'Lucas Porter','egyesült államok','1975-04-29'),(18,'Urayama Sozen','japán','1992-12-29'),(19,'Jesse Hood','ausztrál','1969-06-09'),(20,'Jojo Diawuo','ghána','1972-10-01');
/*!40000 ALTER TABLE `kapitány` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kikötő`
--

DROP TABLE IF EXISTS `kikötő`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kikötő` (
  `kikötő_id` int(11) NOT NULL,
  `hajó_férőhely` int(11) DEFAULT NULL,
  PRIMARY KEY (`kikötő_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kikötő`
--

LOCK TABLES `kikötő` WRITE;
/*!40000 ALTER TABLE `kikötő` DISABLE KEYS */;
INSERT INTO `kikötő` VALUES (1,16),(2,10),(3,25),(4,20),(5,9),(6,14),(7,11),(8,13),(9,10),(10,21),(11,7),(12,12),(13,17),(14,16),(15,18);
/*!40000 ALTER TABLE `kikötő` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kikötő_helység`
--

DROP TABLE IF EXISTS `kikötő_helység`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kikötő_helység` (
  `kikötő_id` int(11) DEFAULT NULL,
  `város` varchar(45) DEFAULT NULL,
  `ország` varchar(45) DEFAULT NULL,
  KEY `id_kikötő` (`kikötő_id`),
  CONSTRAINT `id_kikötő` FOREIGN KEY (`kikötő_id`) REFERENCES `kikötő` (`kikötő_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kikötő_helység`
--

LOCK TABLES `kikötő_helység` WRITE;
/*!40000 ALTER TABLE `kikötő_helység` DISABLE KEYS */;
INSERT INTO `kikötő_helység` VALUES (1,'Rio de Janeiro','Brazília'),(2,'Piraeus','Görögország'),(3,'Shanghai','Kína'),(4,'Szingapúr','Szingapúr'),(5,'Busan','Dél-Korea'),(6,'Rotterdam','Hollandia'),(7,'Antwerp','Belgium'),(8,'Hamburg','Németország'),(9,'Laem Chabang','Thaiföld'),(10,'Yokohama','Japán'),(11,'New York','Egyesült Államok'),(12,'Valencia','Spanyolország'),(13,'Mumbai','India'),(14,'Colón','Panama'),(15,'	Tanjung Priok','Indonézia');
/*!40000 ALTER TABLE `kikötő_helység` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rakomány`
--

DROP TABLE IF EXISTS `rakomány`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rakomány` (
  `rakomány_id` int(11) NOT NULL,
  `súly` int(11) DEFAULT NULL,
  `hajó_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`rakomány_id`),
  KEY `hajó_id` (`hajó_id`),
  CONSTRAINT `hajó_id` FOREIGN KEY (`hajó_id`) REFERENCES `hajó` (`hajó_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rakomány`
--

LOCK TABLES `rakomány` WRITE;
/*!40000 ALTER TABLE `rakomány` DISABLE KEYS */;
INSERT INTO `rakomány` VALUES (1,1000,1),(2,2100,1),(3,1300,2),(4,1800,2),(5,4400,3),(6,1200,3),(7,2000,4),(8,1500,4),(9,900,5),(10,1000,5),(11,2000,6),(12,1100,6),(13,2300,7),(14,1000,7),(15,2400,8),(16,1600,8),(17,2000,9),(18,2000,9),(19,1500,10),(20,1200,10),(21,1900,11),(22,2000,11),(23,1300,12),(24,1900,12),(25,2000,13),(26,2000,13),(27,1300,14),(28,1100,14),(29,1900,15),(30,1700,15),(31,2400,16),(32,2700,16),(33,1100,17),(34,1200,17),(35,1200,18),(36,3000,18),(37,1200,19),(38,1600,19),(39,2100,20),(40,2200,20),(41,700,3),(42,1000,3),(43,1300,6),(44,1600,6),(45,1300,8),(46,2000,9),(47,2000,13),(48,2000,13),(49,2000,13),(50,1600,20),(51,1200,20),(52,1400,20),(53,900,11),(54,500,11),(55,1200,14),(56,1000,14),(57,1000,15),(58,3000,15),(59,900,17),(60,600,17);
/*!40000 ALTER TABLE `rakomány` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rakomány_típus`
--

DROP TABLE IF EXISTS `rakomány_típus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rakomány_típus` (
  `rakomány_id` int(11) DEFAULT NULL,
  `jármű` int(11) DEFAULT NULL,
  `textil_termék` int(11) DEFAULT NULL,
  KEY `rakomány_id_1` (`rakomány_id`),
  CONSTRAINT `rakomány_id_1` FOREIGN KEY (`rakomány_id`) REFERENCES `rakomány` (`rakomány_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rakomány_típus`
--

LOCK TABLES `rakomány_típus` WRITE;
/*!40000 ALTER TABLE `rakomány_típus` DISABLE KEYS */;
INSERT INTO `rakomány_típus` VALUES (1,0,1),(2,1,0),(5,1,0),(6,0,1),(8,0,1),(9,0,1),(11,1,0),(13,1,0),(14,0,1),(15,1,0),(16,0,1),(17,1,0),(18,1,0),(21,0,1),(22,0,1),(25,1,0),(26,1,0),(28,0,1),(29,1,0),(30,0,1),(31,1,0),(32,1,0),(33,0,1),(35,0,1),(36,1,0),(39,1,0),(40,1,0),(41,0,1),(44,0,1),(45,0,1),(46,1,0),(47,1,0),(48,1,0),(49,1,0),(51,0,1),(52,0,1),(54,0,1),(58,1,0),(59,0,1);
/*!40000 ALTER TABLE `rakomány_típus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rakomány_étel_alapanyag`
--

DROP TABLE IF EXISTS `rakomány_étel_alapanyag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rakomány_étel_alapanyag` (
  `rakomány_id` int(11) DEFAULT NULL,
  `gyümölcs` int(11) DEFAULT NULL,
  `zöldség` int(11) DEFAULT NULL,
  `tejtermék` int(11) DEFAULT NULL,
  KEY `rakomány_id_2` (`rakomány_id`),
  CONSTRAINT `rakomány_id_2` FOREIGN KEY (`rakomány_id`) REFERENCES `rakomány` (`rakomány_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rakomány_étel_alapanyag`
--

LOCK TABLES `rakomány_étel_alapanyag` WRITE;
/*!40000 ALTER TABLE `rakomány_étel_alapanyag` DISABLE KEYS */;
INSERT INTO `rakomány_étel_alapanyag` VALUES (3,1,0,0),(4,0,1,0),(7,0,0,1),(10,0,1,0),(12,0,0,1),(19,1,0,0),(20,0,1,0),(23,0,0,1),(24,1,0,0),(27,0,0,1),(34,0,1,0),(37,1,0,0),(38,0,1,0),(42,1,0,0),(43,0,1,0),(50,0,1,0),(53,1,0,0),(55,0,0,1),(56,1,0,0),(57,0,0,1),(60,1,0,0);
/*!40000 ALTER TABLE `rakomány_étel_alapanyag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `út`
--

DROP TABLE IF EXISTS `út`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `út` (
  `út_id` int(11) NOT NULL,
  `út_hossz` int(11) DEFAULT NULL,
  PRIMARY KEY (`út_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `út`
--

LOCK TABLES `út` WRITE;
/*!40000 ALTER TABLE `út` DISABLE KEYS */;
INSERT INTO `út` VALUES (1,9841),(2,3576),(3,10500),(4,12410),(5,13673),(6,11759),(7,12977),(8,12793),(9,3447),(10,10018),(11,2275),(12,7706),(13,5216),(14,6676),(15,13471),(16,11613),(17,6293),(18,11908),(19,591),(20,12793),(21,12515),(22,10061),(23,13345),(24,10152),(25,11110),(26,5203),(27,10041),(28,9444),(29,10965),(30,11567);
/*!40000 ALTER TABLE `út` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `út_kikötő`
--

DROP TABLE IF EXISTS `út_kikötő`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `út_kikötő` (
  `út_id` int(11) DEFAULT NULL,
  `indulási_kikötő` int(11) DEFAULT NULL,
  `érkezési_kikötő` int(11) DEFAULT NULL,
  KEY `út_id` (`út_id`),
  KEY `indulási_kikötő` (`indulási_kikötő`),
  KEY `érkezési_kikötő` (`érkezési_kikötő`),
  CONSTRAINT `indulási_kikötő` FOREIGN KEY (`indulási_kikötő`) REFERENCES `kikötő` (`kikötő_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `érkezési_kikötő` FOREIGN KEY (`érkezési_kikötő`) REFERENCES `kikötő` (`kikötő_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `út_id` FOREIGN KEY (`út_id`) REFERENCES `út` (`út_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `út_kikötő`
--

LOCK TABLES `út_kikötő` WRITE;
/*!40000 ALTER TABLE `út_kikötő` DISABLE KEYS */;
INSERT INTO `út_kikötő` VALUES (1,1,3),(2,2,8),(3,3,6),(4,4,11),(5,5,1),(6,6,4),(7,7,10),(8,8,5),(9,9,13),(10,10,2),(11,11,14),(12,12,15),(13,13,12),(14,14,7),(15,15,14),(16,1,9),(17,2,4),(18,3,7),(19,4,15),(20,5,8),(21,6,5),(22,7,9),(23,8,10),(24,9,6),(25,10,12),(26,11,2),(27,12,3),(28,13,1),(29,14,13),(30,15,11);
/*!40000 ALTER TABLE `út_kikötő` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-27 20:26:08
