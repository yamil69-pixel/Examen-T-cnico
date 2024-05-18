CREATE DATABASE  IF NOT EXISTS `Bicicleta` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Bicicleta`;
-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (x86_64)
--
-- Host: 127.0.0.1    Database: Bicicleta
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Urbanas'),(2,'Ruta'),(3,'Triatlón y Contrarreloj'),(4,'Montaña'),(5,'Plegables'),(6,'Motocross'),(7,'Paseo'),(8,'Híbridas'),(9,'De Pista'),(10,'Eléctricas');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'Orbeta'),(2,'Escoza'),(3,'Meri'),(4,'Melfort');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `precio` decimal(10,2) unsigned NOT NULL,
  `id_categoria` int NOT NULL,
  `id_marca` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_producto_categoria` (`id_categoria`),
  KEY `fk_producto_marca_idx` (`id_marca`),
  CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`),
  CONSTRAINT `fk_producto_marca` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Allroad',1142.00,3,3),(2,'Alpine24',938.00,1,1),(3,'EagleXR 3',1437.00,6,2),(4,'Bianka394',1144.00,3,3),(5,'Explorer6',1233.00,3,3),(6,'Aluminum Max',727.00,7,4),(7,'Nirone FT4',694.00,9,3),(8,'Sora Pro',1443.00,6,4),(9,'BSB 91',306.00,1,1),(10,'RDO JK80',984.00,2,2),(11,'Rival 1',881.00,6,4),(12,'Cuadra350',824.00,5,2),(13,'Cuadra360',569.00,10,4),(14,'Royal',1392.00,10,2),(15,'BN170',1024.00,7,4),(16,'BST345',691.00,10,1),(17,'C-Sport 2',419.00,4,2),(18,'C-Sport F500',1398.00,1,3),(19,'Centaruao',597.00,8,4),(20,'ChopperMAX',311.00,7,3),(21,'Contrail 70',351.00,1,3),(22,'Curse 10',1000.00,2,1),(23,'Duel 29S',1129.00,8,3),(24,'E-Road',385.00,5,4),(25,'E-Road Aria',890.00,1,1),(26,'Fixie PROMAX',1347.00,4,1),(27,'FRT 450',1402.00,10,4),(28,'Gravel',1043.00,8,2),(29,'GRX 13v',1136.00,3,3),(30,'GRZ 12v',1005.00,1,3),(31,'Hydra Max',1224.00,2,1),(32,'Jump3000',1014.00,8,2),(33,'Magma100',491.00,2,1),(34,'Nero 430',1145.00,6,1),(35,'Pista Nero',1478.00,1,1),(36,'Pro Banel',861.00,2,4),(37,'Revox 489',1014.00,8,3),(38,'Revox TZ900',918.00,4,2),(39,'Thriathlon Pro',579.00,8,4),(40,'Tony 390',1447.00,2,4),(41,'Trailie rosa',995.00,1,4),(42,'Trailie verde',679.00,9,2),(43,'TRY 12',1357.00,5,3),(44,'TSE100',311.00,7,1),(45,'XES 100',416.00,8,2),(46,'XES 105',919.00,5,1),(47,'XR3',1189.00,6,2),(48,'XR4',689.00,2,3),(49,'XR5',1256.00,2,4),(50,'XR6',478.00,4,2),(51,'Zolder3000',467.00,3,1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-18  7:22:06
