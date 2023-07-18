-- MySQL dump 10.13  Distrib 5.5.10, for Win32 (x86)
--
-- Host: localhost    Database: gestao_financeira
-- ------------------------------------------------------
-- Server version	5.5.10

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
-- Table structure for table `contas_pagar`
--

DROP TABLE IF EXISTS `contas_pagar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contas_pagar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_despesas` int(11) DEFAULT NULL,
  `parcela` int(11) DEFAULT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_despesas` (`id_despesas`),
  CONSTRAINT `fk_id_despesas` FOREIGN KEY (`id_despesas`) REFERENCES `despesas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contas_pagar`
--

LOCK TABLES `contas_pagar` WRITE;
/*!40000 ALTER TABLE `contas_pagar` DISABLE KEYS */;
/*!40000 ALTER TABLE `contas_pagar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `despesas`
--

DROP TABLE IF EXISTS `despesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `despesas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` int(11) NOT NULL,
  `data_despesa` date DEFAULT NULL,
  `observacoes` varchar(50) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `condicao_pagamento` varchar(10) DEFAULT NULL,
  `gerar_parcelas` int(11) DEFAULT NULL,
  `data_pagamento` date DEFAULT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `codigo_tipo_despesas` int(11) DEFAULT NULL,
  `codigo_forma_pagamento` int(11) DEFAULT NULL,
  `numero_parcela` int(11) NOT NULL,
  `status` varchar(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_codigo_tipo_despesas` (`codigo_tipo_despesas`),
  KEY `fk_codigo_forma_pagamento` (`codigo_forma_pagamento`),
  CONSTRAINT `fk_codigo_forma_pagamento` FOREIGN KEY (`codigo_forma_pagamento`) REFERENCES `forma_pagamento` (`codigo`),
  CONSTRAINT `fk_codigo_tipo_despesas` FOREIGN KEY (`codigo_tipo_despesas`) REFERENCES `tipo_despesas` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `despesas`
--

LOCK TABLES `despesas` WRITE;
/*!40000 ALTER TABLE `despesas` DISABLE KEYS */;
/*!40000 ALTER TABLE `despesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_pagamento`
--

DROP TABLE IF EXISTS `forma_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forma_pagamento` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(30) NOT NULL,
  `banco` varchar(30) DEFAULT NULL,
  `agencia` varchar(6) DEFAULT NULL,
  `conta` varchar(15) DEFAULT NULL,
  `bandeira` varchar(15) DEFAULT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_pagamento`
--

LOCK TABLES `forma_pagamento` WRITE;
/*!40000 ALTER TABLE `forma_pagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `forma_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_despesas`
--

DROP TABLE IF EXISTS `tipo_despesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_despesas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) NOT NULL,
  `plano_de_contas` varchar(50) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_despesas`
--

LOCK TABLES `tipo_despesas` WRITE;
/*!40000 ALTER TABLE `tipo_despesas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_despesas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-16 21:28:45
