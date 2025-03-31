-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: db_correcao
-- ------------------------------------------------------
-- Server version	8.0.34

drop database db_correcao;
create database db_correcao;
use db_correcao;

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
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id_curso` int NOT NULL AUTO_INCREMENT,
  `nome_curso` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'TI'),(2,'Administração'),(3,'Biotecnologia'),(6,'TI'),(7,'Administração'),(9,'Biotecnologia');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gabarito`
--

DROP TABLE IF EXISTS `gabarito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gabarito` (
  `id_gabarito` int NOT NULL AUTO_INCREMENT,
  `id_curso` int DEFAULT NULL,
  `r1` varchar(1) NOT NULL,
  `r2` varchar(1) NOT NULL,
  `r3` varchar(1) NOT NULL,
  `r4` varchar(1) NOT NULL,
  `r5` varchar(1) NOT NULL,
  `r6` varchar(1) NOT NULL,
  `r7` varchar(1) NOT NULL,
  `r8` varchar(1) NOT NULL,
  `r9` varchar(1) NOT NULL,
  `r10` varchar(1) NOT NULL,
  `r11` varchar(1) NOT NULL,
  `r12` varchar(1) NOT NULL,
  `r13` varchar(1) NOT NULL,
  `r14` varchar(1) NOT NULL,
  `r15` varchar(1) NOT NULL,
  `r16` varchar(1) NOT NULL,
  `r17` varchar(1) NOT NULL,
  `r18` varchar(1) NOT NULL,
  `r19` varchar(1) NOT NULL,
  `r20` varchar(1) NOT NULL,
  PRIMARY KEY (`id_gabarito`),
  UNIQUE KEY `unique_gabarito_curso` (`id_curso`),
  CONSTRAINT `fk_gabarito_curso` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gabarito`
--

LOCK TABLES `gabarito` WRITE;
/*!40000 ALTER TABLE `gabarito` DISABLE KEYS */;
INSERT INTO `gabarito` VALUES (1,1,'C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C'),(2,3,'A','B','B','B','C','A','B','B','B','A','A','A','A','A','A','A','A','A','A','A');
/*!40000 ALTER TABLE `gabarito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrutores`
--

DROP TABLE IF EXISTS `instrutores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instrutores` (
  `id_instrutores` int NOT NULL AUTO_INCREMENT,
  `cpf` varchar(14) DEFAULT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `email` varchar(85) DEFAULT NULL,
  `senha` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_instrutores`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrutores`
--

LOCK TABLES `instrutores` WRITE;
/*!40000 ALTER TABLE `instrutores` DISABLE KEYS */;
INSERT INTO `instrutores` VALUES (1,'12345678910','Ana','ana@gmail.com','1234'),(2,'10987654321','Ana','ana@gmail.com','12345'),(3,'7676767676','fghbjvcgghbj','fdgfd@gmail.com','65656565'),(4,'12345678910','ana','ana@gmail.com','666');
/*!40000 ALTER TABLE `instrutores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relatorio`
--

DROP TABLE IF EXISTS `relatorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relatorio` (
  `id_relatorio` int NOT NULL AUTO_INCREMENT,
  `id_curso` int DEFAULT NULL,
  `data_criacao` date DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id_relatorio`),
  KEY `id_curso` (`id_curso`),
  CONSTRAINT `relatorio_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relatorio`
--

LOCK TABLES `relatorio` WRITE;
/*!40000 ALTER TABLE `relatorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `relatorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resposta`
--

DROP TABLE IF EXISTS `resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resposta` (
  `id_resposta` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(20) NOT NULL,
  `id_curso` int DEFAULT NULL,
  `nome_aluno` varchar(255) NOT NULL,
  `acertos` int NOT NULL,
  `diagnostico` text,
  PRIMARY KEY (`id_resposta`),
  KEY `id_curso` (`id_curso`),
  CONSTRAINT `resposta_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resposta`
--

LOCK TABLES `resposta` WRITE;
/*!40000 ALTER TABLE `resposta` DISABLE KEYS */;
INSERT INTO `resposta` VALUES (1,'12345678',1,'Ana',19,'[\"Questão 1: Você respondeu \'B\', resposta correta era \'A\'\"]'),(2,'666',1,'maria',6,'[\"Questão 3: Você respondeu \'C\', resposta correta era \'D\'\",\"Questão 4: Você respondeu \'C\', resposta correta era \'D\'\",\"Questão 5: Você respondeu \'B\', resposta correta era \'D\'\",\"Questão 6: Você respondeu \'C\', resposta correta era \'D\'\",\"Questão 9: Você respondeu \'C\', resposta correta era \'D\'\",\"Questão 11: Você respondeu \'B\', resposta correta era \'D\'\",\"Questão 12: Você respondeu \'A\', resposta correta era \'D\'\",\"Questão 13: Você respondeu \'B\', resposta correta era \'D\'\",\"Questão 14: Você respondeu \'C\', resposta correta era \'D\'\",\"Questão 16: Você respondeu \'C\', resposta correta era \'D\'\",\"Questão 17: Você respondeu \'C\', resposta correta era \'D\'\",\"Questão 18: Você respondeu \'B\', resposta correta era \'D\'\",\"Questão 19: Você respondeu \'B\', resposta correta era \'D\'\",\"Questão 20: Você respondeu \'B\', resposta correta era \'D\'\"]'),(3,'9090',3,'Maria',12,'[\"Questão 4: Você respondeu \'A\', resposta correta era \'B\'\",\"Questão 5: Você respondeu \'B\', resposta correta era \'C\'\",\"Questão 8: Você respondeu \'A\', resposta correta era \'B\'\",\"Questão 11: Você respondeu \'B\', resposta correta era \'A\'\",\"Questão 13: Você respondeu \'B\', resposta correta era \'A\'\",\"Questão 15: Você respondeu \'B\', resposta correta era \'A\'\",\"Questão 17: Você respondeu \'B\', resposta correta era \'A\'\",\"Questão 19: Você respondeu \'B\', resposta correta era \'A\'\"]'),(4,'8767',1,'Leila',19,'[\"Questão 6: O aluno respondeu \'D\', resposta correta era \'C\'\"]');
/*!40000 ALTER TABLE `resposta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-25  9:37:32
