-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: peluqueriacanina
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `dueno`
--

DROP TABLE IF EXISTS `dueno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dueno` (
  `DNI` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dueno`
--

LOCK TABLES `dueno` WRITE;
/*!40000 ALTER TABLE `dueno` DISABLE KEYS */;
INSERT INTO `dueno` VALUES (20800700,'Jenifer','Lopez','3541-151515','Cuba 20'),(30000000,'Andres','Calamaro','3541-101010','Los Angeles 33'),(33333333,'Luciana','Sanchez','3541-202020','Cordoba 50');
/*!40000 ALTER TABLE `dueno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial`
--

DROP TABLE IF EXISTS `historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial` (
  `idHistorial` int NOT NULL,
  `Fecha` date DEFAULT NULL,
  `idPerro` int NOT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `Monto` int DEFAULT NULL,
  PRIMARY KEY (`idHistorial`),
  KEY `FK_pe_his` (`idPerro`),
  CONSTRAINT `FK_pe_his` FOREIGN KEY (`idPerro`) REFERENCES `perro` (`idPerro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial`
--

LOCK TABLES `historial` WRITE;
/*!40000 ALTER TABLE `historial` DISABLE KEYS */;
INSERT INTO `historial` VALUES (1,'2022-03-03',1,'vacunas',15000),(2,'2022-04-03',2,'corte y lavado',3000),(3,'2022-06-10',2,'corte',2000),(4,'2022-07-10',2,'lavado',2000),(5,'2022-08-10',3,'corte ,lavado y vacunas',18000);
/*!40000 ALTER TABLE `historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perro`
--

DROP TABLE IF EXISTS `perro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perro` (
  `idPerro` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Fecha_Nac` date DEFAULT NULL,
  `Sexo` varchar(45) DEFAULT NULL,
  `DNI` int NOT NULL,
  PRIMARY KEY (`idPerro`),
  KEY `FK_du_pe` (`DNI`),
  CONSTRAINT `FK_du_pe` FOREIGN KEY (`DNI`) REFERENCES `dueno` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perro`
--

LOCK TABLES `perro` WRITE;
/*!40000 ALTER TABLE `perro` DISABLE KEYS */;
INSERT INTO `perro` VALUES (1,'Sultan','2010-10-10','Macho',30000000),(2,'Luly','2020-10-15','Hembra',33333333),(3,'Pupy','2022-01-15','Hembra',20800700);
/*!40000 ALTER TABLE `perro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-12 19:47:59
