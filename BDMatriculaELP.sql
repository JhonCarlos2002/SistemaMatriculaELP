-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bdmatricula
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
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `idalumno` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `appaterno` varchar(200) DEFAULT NULL,
  `apmaterno` varchar(200) DEFAULT NULL,
  `dni` varchar(11) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `genero` varchar(5) DEFAULT NULL,
  `codigoalumno` varchar(45) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `correopersonal` varchar(255) DEFAULT NULL,
  `idusuario` int DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idalumno`),
  KEY `fk_idusuario_idx` (`idusuario`),
  CONSTRAINT `fk_idusuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carreras`
--

DROP TABLE IF EXISTS `carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carreras` (
  `idcarreras` int NOT NULL AUTO_INCREMENT,
  `nombrecarrera` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`idcarreras`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras`
--

LOCK TABLES `carreras` WRITE;
/*!40000 ALTER TABLE `carreras` DISABLE KEYS */;
/*!40000 ALTER TABLE `carreras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centroestudios`
--

DROP TABLE IF EXISTS `centroestudios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `centroestudios` (
  `idcentroestudios` int NOT NULL AUTO_INCREMENT,
  `nombreinstitucion` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`idcentroestudios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centroestudios`
--

LOCK TABLES `centroestudios` WRITE;
/*!40000 ALTER TABLE `centroestudios` DISABLE KEYS */;
/*!40000 ALTER TABLE `centroestudios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `idcursos` int NOT NULL AUTO_INCREMENT,
  `codigocurso` varchar(45) DEFAULT NULL,
  `nombrecurso` varchar(100) DEFAULT NULL,
  `sede` varchar(45) DEFAULT NULL,
  `credito` int DEFAULT NULL,
  `ciclo` varchar(5) DEFAULT NULL,
  `seccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcursos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallematricula`
--

DROP TABLE IF EXISTS `detallematricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallematricula` (
  `iddetallematricula` int NOT NULL AUTO_INCREMENT,
  `idmatricula` int DEFAULT NULL,
  PRIMARY KEY (`iddetallematricula`),
  KEY `fk_idmatricula_idx` (`idmatricula`),
  CONSTRAINT `fk_idmatricula` FOREIGN KEY (`idmatricula`) REFERENCES `matricula` (`idmatricula`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallematricula`
--

LOCK TABLES `detallematricula` WRITE;
/*!40000 ALTER TABLE `detallematricula` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallematricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `idmatricula` int NOT NULL AUTO_INCREMENT,
  `fechaderegistro` datetime DEFAULT NULL,
  `costo` decimal(10,0) DEFAULT NULL,
  `idalumno` int DEFAULT NULL,
  `idcarreras` int DEFAULT NULL,
  `idtipodealumno` int DEFAULT NULL,
  `idcentroestudios` int DEFAULT NULL,
  `idcursos` int DEFAULT NULL,
  PRIMARY KEY (`idmatricula`),
  KEY `fk-idalumno_idx` (`idalumno`),
  KEY `fk_idcarreras_idx` (`idcarreras`),
  KEY `fk_idtipodealumno_idx` (`idtipodealumno`),
  KEY `fk_idcursos_idx` (`idcursos`),
  KEY `fk_idcentroestudios_idx` (`idcentroestudios`),
  CONSTRAINT `fk-idalumno` FOREIGN KEY (`idalumno`) REFERENCES `alumno` (`idalumno`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fk_idcarreras` FOREIGN KEY (`idcarreras`) REFERENCES `carreras` (`idcarreras`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fk_idcentroestudios` FOREIGN KEY (`idcentroestudios`) REFERENCES `centroestudios` (`idcentroestudios`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fk_idcursos` FOREIGN KEY (`idcursos`) REFERENCES `cursos` (`idcursos`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fk_idtipodealumno` FOREIGN KEY (`idtipodealumno`) REFERENCES `tipodealumno` (`idtipodealumno`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula_seq`
--

DROP TABLE IF EXISTS `matricula_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula_seq`
--

LOCK TABLES `matricula_seq` WRITE;
/*!40000 ALTER TABLE `matricula_seq` DISABLE KEYS */;
INSERT INTO `matricula_seq` VALUES (1);
/*!40000 ALTER TABLE `matricula_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodealumno`
--

DROP TABLE IF EXISTS `tipodealumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipodealumno` (
  `idtipodealumno` int NOT NULL AUTO_INCREMENT,
  `tipodealumno` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`idtipodealumno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodealumno`
--

LOCK TABLES `tipodealumno` WRITE;
/*!40000 ALTER TABLE `tipodealumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipodealumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `nombredeusuario` varchar(120) DEFAULT NULL,
  `contraseña` varchar(90) DEFAULT NULL,
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

--
-- Dumping events for database 'bdmatricula'
--

--
-- Dumping routines for database 'bdmatricula'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-07 13:54:58
