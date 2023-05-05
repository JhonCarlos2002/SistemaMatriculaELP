-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bdrc
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `acta`
--

DROP TABLE IF EXISTS `acta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acta` (
  `idacta` int NOT NULL AUTO_INCREMENT,
  `numacta` varchar(60) DEFAULT NULL,
  `libro` varchar(60) DEFAULT NULL,
  `folio` varchar(100) DEFAULT NULL,
  `fregistro` datetime DEFAULT NULL,
  PRIMARY KEY (`idacta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acta`
--

LOCK TABLES `acta` WRITE;
/*!40000 ALTER TABLE `acta` DISABLE KEYS */;
/*!40000 ALTER TABLE `acta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `declarante`
--

DROP TABLE IF EXISTS `declarante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `declarante` (
  `iddeclarante` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddeclarante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `declarante`
--

LOCK TABLES `declarante` WRITE;
/*!40000 ALTER TABLE `declarante` DISABLE KEYS */;
/*!40000 ALTER TABLE `declarante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defuncion`
--

DROP TABLE IF EXISTS `defuncion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `defuncion` (
  `iddefuncion` int NOT NULL AUTO_INCREMENT,
  `idacta` int DEFAULT NULL,
  `idpersona_fallecido` int DEFAULT NULL,
  `fdefuncion` date DEFAULT NULL,
  `idpersona_alcalde` int DEFAULT NULL,
  `idusuario` int DEFAULT NULL,
  `documento` text,
  `estado` int DEFAULT NULL,
  PRIMARY KEY (`iddefuncion`),
  KEY `fkactadefuncion_idx` (`idacta`),
  KEY `fkidfallecido_idx` (`idpersona_fallecido`),
  KEY `fkalcaldedefuncion_idx` (`idpersona_alcalde`),
  KEY `fkusuariodefuncion_idx` (`idusuario`),
  CONSTRAINT `fkactadefuncion` FOREIGN KEY (`idacta`) REFERENCES `acta` (`idacta`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fkalcaldedefuncion` FOREIGN KEY (`idpersona_alcalde`) REFERENCES `persona` (`idpersona`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fkidfallecido` FOREIGN KEY (`idpersona_fallecido`) REFERENCES `persona` (`idpersona`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fkusuariodefuncion` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defuncion`
--

LOCK TABLES `defuncion` WRITE;
/*!40000 ALTER TABLE `defuncion` DISABLE KEYS */;
/*!40000 ALTER TABLE `defuncion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `iddepartamento` int NOT NULL AUTO_INCREMENT,
  `nomdepartamento` varchar(120) DEFAULT NULL,
  `ubigeo` varchar(45) DEFAULT NULL,
  `longitud` decimal(20,0) DEFAULT NULL,
  `latitud` decimal(20,0) DEFAULT NULL,
  PRIMARY KEY (`iddepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distrito`
--

DROP TABLE IF EXISTS `distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distrito` (
  `iddistrito` int NOT NULL AUTO_INCREMENT,
  `nomdistrito` varchar(120) DEFAULT NULL,
  `ubigeo` varchar(45) DEFAULT NULL,
  `longitud` decimal(10,0) DEFAULT NULL,
  `latitud` decimal(10,0) DEFAULT NULL,
  `idprovincia` int DEFAULT NULL,
  PRIMARY KEY (`iddistrito`),
  KEY `fk_idprovincia_idx` (`idprovincia`),
  CONSTRAINT `fk_idprovincia` FOREIGN KEY (`idprovincia`) REFERENCES `provincia` (`idprovincia`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distrito`
--

LOCK TABLES `distrito` WRITE;
/*!40000 ALTER TABLE `distrito` DISABLE KEYS */;
/*!40000 ALTER TABLE `distrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matrimonio`
--

DROP TABLE IF EXISTS `matrimonio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matrimonio` (
  `idmatrimonio` int NOT NULL AUTO_INCREMENT,
  `idacta` int DEFAULT NULL,
  `idpersona_novio` int DEFAULT NULL,
  `idpersona_novia` int DEFAULT NULL,
  `fmatrimonio` date DEFAULT NULL,
  `fregistro` datetime DEFAULT NULL,
  `idpersona_testigo1` int DEFAULT NULL,
  `idpersona_testigo2` int DEFAULT NULL,
  `idpersona_testigo3` int DEFAULT NULL,
  `idpersona_alcalde` int DEFAULT NULL,
  `idusuario` int DEFAULT NULL,
  `documento` text,
  `estado` int DEFAULT NULL,
  PRIMARY KEY (`idmatrimonio`),
  KEY `fk_idacta_idx` (`idacta`),
  KEY `fknovio_idx` (`idpersona_novio`),
  KEY `fknovia_idx` (`idpersona_novia`),
  KEY `fktestigo1_idx` (`idpersona_testigo1`),
  KEY `fktestigo2_idx` (`idpersona_testigo2`),
  KEY `fktestigo3_idx` (`idpersona_testigo3`),
  KEY `fkalcalde_idx` (`idpersona_alcalde`),
  KEY `fkidusuario_idx` (`idusuario`),
  CONSTRAINT `fkacta` FOREIGN KEY (`idacta`) REFERENCES `acta` (`idacta`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fkalcalde` FOREIGN KEY (`idpersona_alcalde`) REFERENCES `persona` (`idpersona`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fkidusuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fknovia` FOREIGN KEY (`idpersona_novia`) REFERENCES `persona` (`idpersona`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fknovio` FOREIGN KEY (`idpersona_novio`) REFERENCES `persona` (`idpersona`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fktestigo1` FOREIGN KEY (`idpersona_testigo1`) REFERENCES `persona` (`idpersona`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fktestigo2` FOREIGN KEY (`idpersona_testigo2`) REFERENCES `persona` (`idpersona`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fktestigo3` FOREIGN KEY (`idpersona_testigo3`) REFERENCES `persona` (`idpersona`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matrimonio`
--

LOCK TABLES `matrimonio` WRITE;
/*!40000 ALTER TABLE `matrimonio` DISABLE KEYS */;
/*!40000 ALTER TABLE `matrimonio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nacimientos`
--

DROP TABLE IF EXISTS `nacimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nacimientos` (
  `idnacimientos` int NOT NULL AUTO_INCREMENT,
  `idacta` int DEFAULT NULL,
  `idpersona_nacimiento` int DEFAULT NULL,
  `idpersona_padre` int DEFAULT NULL,
  `idpersona_madre` int DEFAULT NULL,
  `iddeclarante` int DEFAULT NULL,
  `idpersona_declarante_otros` int DEFAULT NULL,
  `idpersona_alcalde` int DEFAULT NULL,
  `idusuario` int DEFAULT NULL,
  `fregistro` datetime DEFAULT NULL,
  `documento` text,
  `estado` int DEFAULT NULL,
  PRIMARY KEY (`idnacimientos`),
  KEY `fk_idacta_idx` (`idacta`),
  KEY `fk_idpersona_nacimiento_idx` (`idpersona_nacimiento`),
  KEY `fk_idpersonapadre_idx` (`idpersona_padre`),
  KEY `fk_idpersona_madre_idx` (`idpersona_madre`),
  KEY `fk_iddeclarante_idx` (`iddeclarante`),
  KEY `fk_idpersona_declarante_idx` (`idpersona_declarante_otros`),
  KEY `fk_idpersona_alcalde_idx` (`idpersona_alcalde`),
  KEY `fk_usuario_idx` (`idusuario`),
  CONSTRAINT `fk_idacta` FOREIGN KEY (`idacta`) REFERENCES `acta` (`idacta`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fk_iddeclarante` FOREIGN KEY (`iddeclarante`) REFERENCES `declarante` (`iddeclarante`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fk_idpersona_alcalde` FOREIGN KEY (`idpersona_alcalde`) REFERENCES `persona` (`idpersona`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fk_idpersona_declarante` FOREIGN KEY (`idpersona_declarante_otros`) REFERENCES `persona` (`idpersona`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fk_idpersona_madre` FOREIGN KEY (`idpersona_madre`) REFERENCES `persona` (`idpersona`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fk_idpersona_nacimiento` FOREIGN KEY (`idpersona_nacimiento`) REFERENCES `persona` (`idpersona`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fk_idpersona_padre` FOREIGN KEY (`idpersona_padre`) REFERENCES `persona` (`idpersona`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fk_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nacimientos`
--

LOCK TABLES `nacimientos` WRITE;
/*!40000 ALTER TABLE `nacimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `nacimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `idpersona` int NOT NULL AUTO_INCREMENT,
  `dni` varchar(15) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apaterno` varchar(30) DEFAULT NULL,
  `amaterno` varchar(30) DEFAULT NULL,
  `genero` varchar(30) DEFAULT NULL,
  `fnacimiento` date DEFAULT NULL,
  `nacionalidad` varchar(60) DEFAULT NULL,
  `direccion` varchar(120) DEFAULT NULL,
  `iddistrito` int DEFAULT NULL,
  `idtipopersona` int DEFAULT NULL,
  PRIMARY KEY (`idpersona`),
  KEY `fk_iddistrito_idx` (`iddistrito`),
  KEY `fk_idtipopersona_idx` (`idtipopersona`),
  CONSTRAINT `fk_iddistrito` FOREIGN KEY (`iddistrito`) REFERENCES `distrito` (`iddistrito`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fk_idtipopersona` FOREIGN KEY (`idtipopersona`) REFERENCES `tipopersona` (`idtipopersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincia` (
  `idprovincia` int NOT NULL AUTO_INCREMENT,
  `nomprovincia` varchar(120) DEFAULT NULL,
  `ubigeo` varchar(45) DEFAULT NULL,
  `longitud` decimal(20,0) DEFAULT NULL,
  `latitud` decimal(20,0) DEFAULT NULL,
  `iddepartamento` int DEFAULT NULL,
  PRIMARY KEY (`idprovincia`),
  KEY `fkid_departamento_idx` (`iddepartamento`),
  CONSTRAINT `fkid_departamento` FOREIGN KEY (`iddepartamento`) REFERENCES `departamento` (`iddepartamento`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipopersona`
--

DROP TABLE IF EXISTS `tipopersona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipopersona` (
  `idtipopersona` int NOT NULL,
  `descripcion` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idtipopersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopersona`
--

LOCK TABLES `tipopersona` WRITE;
/*!40000 ALTER TABLE `tipopersona` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipopersona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(120) DEFAULT NULL,
  `documento` varchar(15) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo` varchar(120) DEFAULT NULL,
  `foto` varchar(300) DEFAULT NULL,
  `rol` int DEFAULT NULL,
  `user` varchar(120) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-01 18:19:24
