-- MySQL dump 10.13  Distrib 5.6.25, for Linux (x86_64)
--
-- Host: localhost    Database: limpiamas
-- ------------------------------------------------------
-- Server version	5.6.25

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
-- Table structure for table `agenciastrans`
--

DROP TABLE IF EXISTS `agenciastrans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agenciastrans` (
  `codtrans` varchar(8) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `telefono` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `web` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`codtrans`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenciastrans`
--

LOCK TABLES `agenciastrans` WRITE;
/*!40000 ALTER TABLE `agenciastrans` DISABLE KEYS */;
/*!40000 ALTER TABLE `agenciastrans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agentes`
--

DROP TABLE IF EXISTS `agentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agentes` (
  `apellidos` varchar(100) COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `codagente` varchar(10) COLLATE utf8_bin NOT NULL,
  `coddepartamento` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dnicif` varchar(15) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `idusuario` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `nombreap` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `porcomision` double DEFAULT NULL,
  `provincia` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `telefono` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `seg_social` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cargo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `banco` varchar(34) COLLATE utf8_bin DEFAULT NULL,
  `f_alta` date DEFAULT NULL,
  `f_baja` date DEFAULT NULL,
  `f_nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`codagente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agentes`
--

LOCK TABLES `agentes` WRITE;
/*!40000 ALTER TABLE `agentes` DISABLE KEYS */;
INSERT INTO `agentes` VALUES ('Pepe',NULL,'1',NULL,NULL,NULL,NULL,'00000014Z',NULL,NULL,NULL,NULL,NULL,'Paco',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Lopez',NULL,'2',NULL,NULL,NULL,NULL,'12345678','lopez.desarrollo@gmail.com',NULL,NULL,NULL,NULL,'Alberto',NULL,0,NULL,'5555-55555',NULL,NULL,NULL,'2015-12-06',NULL,'2015-12-06'),('F.','','3',NULL,NULL,NULL,'','8888111','',NULL,NULL,NULL,NULL,'Norma',NULL,10,'','5555','','','','2015-12-13',NULL,'1990-05-23'),('Peralta',NULL,'4',NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'Pedro',NULL,0,NULL,'',NULL,NULL,NULL,'2016-02-27',NULL,'2016-02-27'),('Franco',NULL,'5',NULL,NULL,NULL,NULL,'123456','alder@gmail.com',NULL,NULL,NULL,NULL,'Alder',NULL,0,NULL,'',NULL,NULL,NULL,'2016-02-29',NULL,'2016-02-29');
/*!40000 ALTER TABLE `agentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albaranescli`
--

DROP TABLE IF EXISTS `albaranescli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albaranescli` (
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cifnif` varchar(20) COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddir` int(11) DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `codpago` varchar(10) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `fecha` date NOT NULL,
  `hora` time DEFAULT '00:00:00',
  `idalbaran` int(11) NOT NULL AUTO_INCREMENT,
  `idfactura` int(11) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `irpf` double NOT NULL DEFAULT '0',
  `neto` double NOT NULL DEFAULT '0',
  `nombrecliente` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `numero` varchar(12) COLLATE utf8_bin NOT NULL,
  `numero2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `porcomision` double DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ptefactura` tinyint(1) NOT NULL DEFAULT '1',
  `recfinanciero` double NOT NULL DEFAULT '0',
  `tasaconv` double NOT NULL DEFAULT '1',
  `total` double NOT NULL DEFAULT '0',
  `totaleuros` double NOT NULL DEFAULT '0',
  `totalirpf` double NOT NULL DEFAULT '0',
  `totaliva` double NOT NULL DEFAULT '0',
  `totalrecargo` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`idalbaran`),
  UNIQUE KEY `uniq_codigo_albaranescli` (`codigo`),
  KEY `ca_albaranescli_series2` (`codserie`),
  KEY `ca_albaranescli_ejercicios2` (`codejercicio`),
  CONSTRAINT `ca_albaranescli_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  CONSTRAINT `ca_albaranescli_series2` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albaranescli`
--

LOCK TABLES `albaranescli` WRITE;
/*!40000 ALTER TABLE `albaranescli` DISABLE KEYS */;
INSERT INTO `albaranescli` VALUES (NULL,'888-55','Encarnacion','2','ALG','000002',NULL,'PRY','2016','REM2016A1','CONT','PRY','','A','','2016-03-05','07:57:32',1,NULL,NULL,0,9672,'Jose luis','1','','',0,'Encarnacion',1,0,1,9672,9672,0,0,0);
/*!40000 ALTER TABLE `albaranescli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albaranesprov`
--

DROP TABLE IF EXISTS `albaranesprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albaranesprov` (
  `cifnif` varchar(20) COLLATE utf8_bin NOT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `codpago` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL DEFAULT '00:00:00',
  `idalbaran` int(11) NOT NULL AUTO_INCREMENT,
  `idfactura` int(11) DEFAULT NULL,
  `irpf` double NOT NULL DEFAULT '0',
  `neto` double NOT NULL DEFAULT '0',
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `numero` varchar(12) COLLATE utf8_bin NOT NULL,
  `numproveedor` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `ptefactura` tinyint(1) NOT NULL DEFAULT '1',
  `recfinanciero` double NOT NULL DEFAULT '0',
  `tasaconv` double NOT NULL DEFAULT '1',
  `total` double NOT NULL DEFAULT '0',
  `totaleuros` double NOT NULL DEFAULT '0',
  `totalirpf` double NOT NULL DEFAULT '0',
  `totaliva` double NOT NULL DEFAULT '0',
  `totalrecargo` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`idalbaran`),
  UNIQUE KEY `uniq_codigo_albaranesprov` (`codigo`),
  KEY `ca_albaranesprov_series2` (`codserie`),
  KEY `ca_albaranesprov_ejercicios2` (`codejercicio`),
  CONSTRAINT `ca_albaranesprov_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  CONSTRAINT `ca_albaranesprov_series2` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albaranesprov`
--

LOCK TABLES `albaranesprov` WRITE;
/*!40000 ALTER TABLE `albaranesprov` DISABLE KEYS */;
INSERT INTO `albaranesprov` VALUES ('80022458-2','2','ALG','PRY','2016','REM2016A1C','CONT','000001','A','2016-03-14','14:40:15',1,9,0,29000,'Proquitec S.A.','1','5555-333-888','',0,0,1,31900,31900,0,2900,0),('80022458-2','4','ALG','PRY','2016','REM2016B1C','CONT','000001','B','2016-03-14','22:05:50',2,NULL,0,2900,'Proquitec S.A.','1','','',1,0,1,3190,3190,0,290,0),('80022458-2','2','ALG','PRY','2016','REM2016A2C','CONT','000001','A','2016-03-14','22:20:43',3,12,0,14500,'Proquitec S.A.','2','','',0,0,1,15950,15950,0,1450,0),('88888833-1','4','ALG','PRY','2016','REM2016A3C','CONT','000003','A','2016-03-15','20:53:52',4,NULL,0,201000,'Quimanfla','3','0111-555-333','',1,0,1,221100,221100,0,20100,0);
/*!40000 ALTER TABLE `albaranesprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `almacenes`
--

DROP TABLE IF EXISTS `almacenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `almacenes` (
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `contacto` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `observaciones` text COLLATE utf8_bin,
  `poblacion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `porpvp` double DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `telefono` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `tipovaloracion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`codalmacen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacenes`
--

LOCK TABLES `almacenes` WRITE;
/*!40000 ALTER TABLE `almacenes` DISABLE KEYS */;
INSERT INTO `almacenes` VALUES (NULL,'ALG','PRY','','','','',NULL,'ALMACEN GENERAL',NULL,'',NULL,'Encarnacion','',NULL);
/*!40000 ALTER TABLE `almacenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulo_propiedades`
--

DROP TABLE IF EXISTS `articulo_propiedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulo_propiedades` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `referencia` varchar(18) COLLATE utf8_bin NOT NULL,
  `text` text COLLATE utf8_bin,
  PRIMARY KEY (`name`,`referencia`),
  KEY `ca_articulo_propiedades_articulos` (`referencia`),
  CONSTRAINT `ca_articulo_propiedades_articulos` FOREIGN KEY (`referencia`) REFERENCES `articulos` (`referencia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo_propiedades`
--

LOCK TABLES `articulo_propiedades` WRITE;
/*!40000 ALTER TABLE `articulo_propiedades` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulo_propiedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos` (
  `factualizado` date DEFAULT NULL,
  `bloqueado` tinyint(1) DEFAULT '0',
  `equivalencia` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `idsubcuentairpfcom` int(11) DEFAULT NULL,
  `idsubcuentacom` int(11) DEFAULT NULL,
  `stockmin` double DEFAULT '0',
  `observaciones` text COLLATE utf8_bin,
  `codbarras` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `stockfis` double DEFAULT '0',
  `stockmax` double DEFAULT '0',
  `costemedio` double DEFAULT '0',
  `preciocoste` double DEFAULT '0',
  `tipocodbarras` varchar(8) COLLATE utf8_bin DEFAULT 'Code39',
  `nostock` tinyint(1) DEFAULT NULL,
  `codsubcuentacom` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` text COLLATE utf8_bin NOT NULL,
  `codsubcuentairpfcom` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `secompra` tinyint(1) DEFAULT NULL,
  `codfamilia` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `imagen` text COLLATE utf8_bin,
  `controlstock` tinyint(1) DEFAULT '0',
  `referencia` varchar(18) COLLATE utf8_bin NOT NULL,
  `tipo` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `pvp` double DEFAULT '0',
  `sevende` tinyint(1) DEFAULT NULL,
  `publico` tinyint(1) DEFAULT '0',
  `codfabricante` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`referencia`),
  KEY `ca_articulos_impuestos2` (`codimpuesto`),
  CONSTRAINT `ca_articulos_impuestos2` FOREIGN KEY (`codimpuesto`) REFERENCES `impuestos` (`codimpuesto`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES ('2016-03-14',0,'Ácido-sulfonico',NULL,NULL,0,'','','IVA10',1,0,12150,12150,'Code39',0,NULL,'Ácido-sulfonico',NULL,1,'QUIM',NULL,1,'ACI-SULF',NULL,0,1,0,'PROV'),('2016-03-13',0,NULL,NULL,NULL,0,'','','IVA10',12,0,5000,4000,'Code39',0,NULL,'Anilina en polvo',NULL,1,'QUIM',NULL,1,'ANILINA-0001',NULL,5000,1,0,'PROV'),('2016-03-14',0,'BASE-SUAVE001',NULL,NULL,0,'','','IVA10',1,0,24000,22000,'Code39',0,NULL,'Base suave color 1',NULL,1,'Mt',NULL,1,'BASE-SUAVE',NULL,24000,1,0,'PROV'),('2016-03-05',0,NULL,NULL,NULL,0,'','','IVA10',17,0,2900,0,'Code39',0,NULL,'Bidon de 5Lts',NULL,1,'VARI',NULL,1,'BIDON-5L-001',NULL,2900,1,0,'PROV'),('2016-03-13',0,NULL,NULL,NULL,0,'','','IVA10',5,0,5000,4000,'Code39',0,NULL,'Carburante',NULL,1,'QUIM',NULL,1,'CARBUR-0014',NULL,5000,1,0,'PROV'),('2016-03-14',0,'Colorante Fluoreceina Kg.',NULL,NULL,0,'','','IVA10',1,0,220000,0,'Code39',0,NULL,'Colorante Fluoreceina Kg.',NULL,1,'Mt',NULL,1,'COLOR-FLUOR',NULL,242000,1,0,'PROV'),('2016-03-13',0,'colorante rojo',NULL,NULL,0,'','','IVA10',2,0,201000,201000,'Code39',0,NULL,'colorante químico',NULL,1,'QUIM',NULL,1,'COLOR-ROJO',NULL,201000,1,0,'PROV'),('2015-12-11',0,NULL,NULL,NULL,0,'','','IVA10',98,0,0,0,'Code39',0,NULL,'Detergente Neutro sin tensan al 30%',NULL,1,'DETER',NULL,1,'DETER-0002',NULL,2929,1,0,'PROPIO'),('2015-12-11',0,NULL,NULL,NULL,0,'','','IVA10',93,0,0,0,'Code39',0,NULL,'Detergente Neutro',NULL,1,'DETER',NULL,1,'DETER-0003',NULL,864,1,0,'PROPIO'),('2015-12-11',0,NULL,NULL,NULL,0,'','','IVA10',297,0,0,0,'Code39',0,NULL,'Detergente Neutro sin tensan',NULL,1,'DETER',NULL,1,'DETER-0020',NULL,864,1,0,'PROPIO'),('2015-12-11',0,NULL,NULL,NULL,50,'','','IVA10',57,0,0,0,'Code39',0,NULL,'Detergente Neutro 30 %',NULL,1,'DETER',NULL,1,'DETER-3001',NULL,3224,1,0,'PROPIO'),('2016-03-14',0,'Enturbiante',NULL,NULL,0,'','','IVA10',3,0,9350,9350,'Code39',0,NULL,'Enturbiante',NULL,1,'QUIM',NULL,1,'Enturbiante-001',NULL,10000,1,0,'PROV'),('2015-12-11',0,NULL,NULL,NULL,0,'','','IVA10',41,0,0,0,'Code39',0,NULL,'Jabon Liquido Mano',NULL,1,'JABON LI',NULL,1,'JABON-LIQM',NULL,777,1,0,'PROPIO'),('2015-12-11',0,NULL,NULL,NULL,0,'','','IVA10',188,0,0,0,'Code39',0,NULL,'Jabon Liquido para Ropa',NULL,1,'JABON LI',NULL,1,'JABON-LIQR',NULL,2222,1,0,'PROPIO'),('2016-03-05',0,NULL,NULL,NULL,0,'','','IVA10',5,0,14776,0,'Code39',0,NULL,'Trietanolamina TEA 85',NULL,1,'QUIM',NULL,1,'TRIETANOLAMI-TEA85',NULL,14776,1,0,'PROV');
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulosprov`
--

DROP TABLE IF EXISTS `articulosprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulosprov` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `referencia` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin NOT NULL,
  `refproveedor` varchar(25) COLLATE utf8_bin NOT NULL,
  `descripcion` text COLLATE utf8_bin,
  `precio` double DEFAULT NULL,
  `dto` double DEFAULT NULL,
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `stock` double DEFAULT NULL,
  `nostock` tinyint(1) DEFAULT '1',
  `nombre` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_articulo_proveedor2` (`codproveedor`,`refproveedor`),
  CONSTRAINT `ca_articulosprov_proveedores` FOREIGN KEY (`codproveedor`) REFERENCES `proveedores` (`codproveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulosprov`
--

LOCK TABLES `articulosprov` WRITE;
/*!40000 ALTER TABLE `articulosprov` DISABLE KEYS */;
INSERT INTO `articulosprov` VALUES (1,'7','000001','7','Trietanolamina TEA 85',14776,0,'IVA10',0,1,NULL,NULL),(2,'8','000001','8','Bidon de 5Lts',2900,0,'IVA10',0,1,NULL,NULL),(3,'Anilina','000003','Anilina','',16,0,'IVA10',0,1,NULL,NULL),(4,'carburante','000003','carburante','',5,0,'IVA10',0,1,NULL,NULL),(5,'COLOR-ROJO','000004','colorante rojo','colorante químico',201000,0,'IVA10',0,1,NULL,NULL),(6,'9','000004','9','Anilina en polvo',5000,0,'IVA10',0,1,NULL,NULL),(7,'COLOR-FLUOR','000004','Colorante Fluoreceina Kg.','Colorante Fluoreceina Kg.',220000,0,'IVA10',0,1,NULL,NULL),(8,'ACI-SULF','000005','Ácido-sulfonico','Ácido-sulfonico',12150,0,'IVA10',0,1,NULL,NULL),(9,'001-Enturbiante','000005','Enturbiante','Enturbiante',9350,0,'IVA10',0,1,NULL,NULL),(10,'10','000004','10','Carburante',5000,0,'IVA10',0,1,NULL,NULL),(11,'Bidon_5L','000001','Bidon_5L','Bidon de 5Lts',2900,0,'IVA10',0,1,NULL,NULL),(12,'BASE-SUAVE','000003','BASE-SUAVE001','Base suave color 1',24000,0,'IVA10',0,1,NULL,NULL),(13,'COLOR-ROJO','000003','COLOR-ROJO','colorante químico',201000,0,'IVA10',0,1,NULL,NULL),(14,'BIDON-5L-001','000001','BIDON-5L-001','Bidon de 5Lts',2900,0,'IVA10',0,1,NULL,NULL);
/*!40000 ALTER TABLE `articulosprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cajas`
--

DROP TABLE IF EXISTS `cajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cajas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fs_id` int(11) NOT NULL,
  `codagente` varchar(10) COLLATE utf8_bin NOT NULL,
  `f_inicio` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `d_inicio` double NOT NULL DEFAULT '0',
  `f_fin` timestamp NULL DEFAULT NULL,
  `d_fin` double DEFAULT NULL,
  `tickets` int(11) DEFAULT NULL,
  `ip` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cajas`
--

LOCK TABLES `cajas` WRITE;
/*!40000 ALTER TABLE `cajas` DISABLE KEYS */;
INSERT INTO `cajas` VALUES (1,1,'2','2015-12-13 10:32:56',250000,'2015-12-13 10:40:33',273522,3,'127.0.0.1'),(2,1,'2','2015-12-13 10:40:48',600000,'2016-02-27 22:48:28',605666,1,'127.0.0.1'),(3,1,'2','2016-02-27 22:48:37',9000,'2016-02-27 22:56:37',9000,0,'127.0.0.1'),(4,1,'4','2016-02-27 22:59:20',50000,'2016-02-27 23:04:19',50000,0,'::1'),(5,2,'2','2016-02-27 23:00:03',50000,'2016-02-27 23:03:30',69597,2,'127.0.0.1'),(6,2,'2','2016-02-27 23:03:39',70000,'2016-02-27 23:03:56',70000,0,'127.0.0.1'),(7,1,'2','2016-02-28 23:03:46',5000,'2016-02-28 23:08:07',16981.2,1,'127.0.0.1'),(8,1,'4','2016-03-05 15:35:40',50000,NULL,66630,2,'::1');
/*!40000 ALTER TABLE `cajas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cajas_terminales`
--

DROP TABLE IF EXISTS `cajas_terminales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cajas_terminales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `tickets` text COLLATE utf8_bin,
  `anchopapel` int(11) DEFAULT NULL,
  `comandocorte` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `comandoapertura` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `num_tickets` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cajas_terminales`
--

LOCK TABLES `cajas_terminales` WRITE;
/*!40000 ALTER TABLE `cajas_terminales` DISABLE KEYS */;
INSERT INTO `cajas_terminales` VALUES (1,'ALG','A',NULL,'p0\np0\np0\np0\n!8 Limpia Mas S.A.\n!\n       C/ Falsa, 123 - Encarnacion      \n              CIF: 00000014             \n\n\nFactura simplificada: FAC2015A2\n13-12-2015 07:34\nCliente: Juan peres\nEmpleado: 2\n\nUd. Articulo                       TOTAL\n--- ------------------------  ----------\n  4 2                              3 802\n  3 5                              7 333\n----------------------------------------\n   IVA: 1 012 PRY   Total: 11 134 PRY   \n\n\n\n\n\n\n\ni\np0\n!8 Limpia Mas S.A.\n!\n       C/ Falsa, 123 - Encarnacion      \n              CIF: 00000014             \n\n\nFactura simplificada: FAC2015A3\n13-12-2015 07:37\nCliente: Norma\nEmpleado: 2\n\nUd. Articulo                       TOTAL\n--- ------------------------  ----------\n  3 2                              2 851\n  1 5                              2 444\n----------------------------------------\n     IVA: 481 PRY   Total: 5 295 PRY    \n\n\n\n\n\n\n\ni\np0\n!8 Limpia Mas S.A.\n!\n       C/ Falsa, 123 - Encarnacion      \n              CIF: 00000014             \n\n\nFactura simplificada: FAC2015A4\n13-12-2015 07:40\nCliente: Juan peres\nEmpleado: 2\n\nUd. Articulo                       TOTAL\n--- ------------------------  ----------\n  2 1                              7 093\n----------------------------------------\n     IVA: 645 PRY   Total: 7 093 PRY    \n\n\n\n\n\n\n\ni\np0\np0\np0\n!8\nCIERRE DE CAJA:\n\n!Empleado: 2 Alberto Lopez\nCaja: 1\nFecha inicial: 13-12-2015 07:32:56\nDinero inicial: 250 000 PRY\nFecha fin: 13-12-2015 07:40:33\nDinero fin: 273 522 PRY\nDiferencia: 23 522 PRY\nTickets: 3\n\nDinero pesado:\n\n\nObservaciones:\n\n\n\nFirma:\n\n\n\n\n\n\n\n\n\ni\np0\np0\np0\n!8 Limpia Mas S.A.\n!\n       C/ Falsa, 123 - Encarnacion      \n              CIF: 00000014             \n\n\nFactura simplificada: FAC2016A1\n27-02-2016 19:48\nCliente: Norma\nEmpleado: 2\n\nUd. Articulo                       TOTAL\n--- ------------------------  ----------\n  1 3                              3 222\n  1 5                              2 444\n----------------------------------------\n     IVA: 515 PRY   Total: 5 666 PRY    \n\n\n\n\n\n\n\ni\n!8\nCIERRE DE CAJA:\n\n!Empleado: 2 Alberto Lopez\nCaja: 1\nFecha inicial: 13-12-2015 07:40:48\nDinero inicial: 600 000 PRY\nFecha fin: 27-02-2016 19:48:28\nDinero fin: 605 666 PRY\nDiferencia: 5 666 PRY\nTickets: 1\n\nDinero pesado:\n\n\nObservaciones:\n\n\n\nFirma:\n\n\n\n\n\n\n\n\n\ni\np0\np0\np0\np0\n!8\nCIERRE DE CAJA:\n\n!Empleado: 4 Pedro Peralta\nCaja: 1\nFecha inicial: 27-02-2016 19:59:20\nDinero inicial: 50 000 PRY\nFecha fin: 27-02-2016 20:04:19\nDinero fin: 50 000 PRY\nDiferencia: 0 PRY\nTickets: 0\n\nDinero pesado:\n\n\nObservaciones:\n\n\n\nFirma:\n\n\n\n\n\n\n\n\n\ni\np0\np0\np0\np0\np0\n!8 Limpia Mas S.A.\n!\n       C/ Falsa, 123 - Encarnacion      \n              CIF: 00000014             \n\n\nFactura simplificada: FAC2016A4\n28-02-2016 20:04\nCliente: Jose luis\nEmpleado: 2\n\nUd. Articulo                       TOTAL\n--- ------------------------  ----------\n  2 1                           7 092.80\n  2 5                           4 888.40\n----------------------------------------\nIVA: 1 089.20 PRY   Total: 11 981.20 PRY\n\n\n\n\n\n\n\ni\n!8\nCIERRE DE CAJA:\n\n!Empleado: 2 Alberto Lopez\nCaja: 1\nFecha inicial: 28-02-2016 20:03:46\nDinero inicial: 5 000.00 PRY\nFecha fin: 28-02-2016 20:08:07\nDinero fin: 16 981.20 PRY\nDiferencia: 11 981.20 PRY\nTickets: 1\n\nDinero pesado:\n\n\nObservaciones:\n\n\n\nFirma:\n\n\n\n\n\n\n\n\n\ni\np0\np0\np0\np0\n!8 Limpia Mas S.A.\n!\n       C/ Falsa, 123 - Encarnacion      \n              CIF: 00000014             \n\n\nFactura simplificada: FAC2016A5\n05-03-2016 12:39\nCliente: Jose luis\nEmpleado: 4\n\nUd. Articulo                       TOTAL\n--- ------------------------  ----------\n  3 1                             10 639\n----------------------------------------\n    IVA: 967 PRY   Total: 10 639 PRY    \n\n\n\n\n\n\n\ni\np0\n!8 Limpia Mas S.A.\n!\n       C/ Falsa, 123 - Encarnacion      \n              CIF: 00000014             \n\n\nFactura simplificada: FAC2016A6\n12-03-2016 17:10\nCliente: Norma\nEmpleado: 4\n\nUd. Articulo                       TOTAL\n--- ------------------------  ----------\n  1 1                              3 546\n  1 5                              2 444\n----------------------------------------\n     IVA: 545 PRY   Total: 5 991 PRY    \n\n\n\n\n\n\n\ni\n',40,'27.105','27.112.48',1),(2,'ALG','A',NULL,'p0\np0\n!8 Limpia Mas S.A.\n!\n       C/ Falsa, 123 - Encarnacion      \n              CIF: 00000014             \n\n\nFactura simplificada: FAC2016A2\n27-02-2016 20:01\nCliente: Jose luis\nEmpleado: 2\n\nUd. Articulo                       TOTAL\n--- ------------------------  ----------\n  2 1                              7 093\n  1 3                              3 222\n----------------------------------------\n    IVA: 938 PRY   Total: 10 315 PRY    \n\n\n\n\n\n\n\ni\np0\n!8 Limpia Mas S.A.\n!\n       C/ Falsa, 123 - Encarnacion      \n              CIF: 00000014             \n\n\nFactura simplificada: FAC2016A3\n27-02-2016 20:03\nCliente: Jose luis\nEmpleado: 2\n\nUd. Articulo                       TOTAL\n--- ------------------------  ----------\n  8 6                              6 838\n  1 5                              2 444\n----------------------------------------\n     IVA: 844 PRY   Total: 9 282 PRY    \n\n\n\n\n\n\n\ni\n!8\nCIERRE DE CAJA:\n\n!Empleado: 2 Alberto Lopez\nCaja: 2\nFecha inicial: 27-02-2016 20:00:03\nDinero inicial: 50 000 PRY\nFecha fin: 27-02-2016 20:03:30\nDinero fin: 69 597 PRY\nDiferencia: 19 597 PRY\nTickets: 2\n\nDinero pesado:\n\n\nObservaciones:\n\n\n\nFirma:\n\n\n\n\n\n\n\n\n\ni\np0\np0\n!8\nCIERRE DE CAJA:\n\n!Empleado: 2 Alberto Lopez\nCaja: 2\nFecha inicial: 27-02-2016 20:03:39\nDinero inicial: 70 000 PRY\nFecha fin: 27-02-2016 20:03:56\nDinero fin: 70 000 PRY\nDiferencia: 0 PRY\nTickets: 0\n\nDinero pesado:\n\n\nObservaciones:\n\n\n\nFirma:\n\n\n\n\n\n\n\n\n\ni\np0\np0\n',40,'27.105','27.112.48',1);
/*!40000 ALTER TABLE `cajas_terminales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `capitalimpagado` double DEFAULT NULL,
  `cifnif` varchar(20) COLLATE utf8_bin NOT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin NOT NULL,
  `codcontacto` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codcuentadom` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codcuentarem` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `codedi` varchar(17) COLLATE utf8_bin DEFAULT NULL,
  `codgrupo` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codtiporappel` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `contacto` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `copiasfactura` int(11) DEFAULT NULL,
  `debaja` tinyint(1) DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `fechabaja` date DEFAULT NULL,
  `fechaalta` date DEFAULT NULL,
  `idsubcuenta` int(11) DEFAULT NULL,
  `ivaincluido` tinyint(1) DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `razonsocial` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `recargo` tinyint(1) DEFAULT NULL,
  `regimeniva` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `riesgoalcanzado` double DEFAULT NULL,
  `riesgomax` double DEFAULT NULL,
  `telefono1` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `telefono2` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `tipoidfiscal` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT 'NIF',
  `web` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`codcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (NULL,'444-333',NULL,'000001',NULL,NULL,NULL,'EUR',NULL,NULL,'CONT','A',NULL,NULL,NULL,NULL,0,'','',NULL,'2015-12-06',NULL,NULL,'Juan peres','Juan peres','',0,'General',NULL,NULL,'','','NIF',''),(NULL,'888-55',NULL,'000002',NULL,NULL,NULL,'PRY',NULL,NULL,'CONT','A',NULL,NULL,NULL,NULL,0,'','',NULL,'2015-12-06',NULL,NULL,'Jose luis','Jose luis','',0,'General',NULL,NULL,'','','NIF',''),(NULL,'71356',NULL,'000003',NULL,NULL,NULL,'PRY',NULL,NULL,'CONT','A',NULL,NULL,NULL,NULL,0,'','',NULL,'2015-12-06',NULL,NULL,'Lili Ramirez','Lili Ramirez','',0,'General',NULL,NULL,'','','NIF',''),(NULL,'5555 3333-2',NULL,'000004',NULL,NULL,NULL,'PRY',NULL,NULL,'CONT','A',NULL,NULL,NULL,NULL,0,'','',NULL,'2015-12-13',NULL,NULL,'Norma','Norma','',0,'General',NULL,NULL,'','','NIF','');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_asientos`
--

DROP TABLE IF EXISTS `co_asientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_asientos` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codplanasiento` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `concepto` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `documento` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `editable` tinyint(1) NOT NULL,
  `fecha` date NOT NULL,
  `idasiento` int(11) NOT NULL AUTO_INCREMENT,
  `idconcepto` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `importe` double DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `tipodocumento` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idasiento`),
  KEY `ca_co_asientos_ejercicios2` (`codejercicio`),
  CONSTRAINT `ca_co_asientos_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_asientos`
--

LOCK TABLES `co_asientos` WRITE;
/*!40000 ALTER TABLE `co_asientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_asientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_codbalances08`
--

DROP TABLE IF EXISTS `co_codbalances08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_codbalances08` (
  `descripcion4ba` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `descripcion4` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nivel4` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `descripcion3` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `orden3` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `nivel3` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `descripcion2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nivel2` int(11) DEFAULT NULL,
  `descripcion1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nivel1` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `naturaleza` varchar(15) COLLATE utf8_bin NOT NULL,
  `codbalance` varchar(15) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`codbalance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_codbalances08`
--

LOCK TABLES `co_codbalances08` WRITE;
/*!40000 ALTER TABLE `co_codbalances08` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_codbalances08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_conceptospar`
--

DROP TABLE IF EXISTS `co_conceptospar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_conceptospar` (
  `concepto` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `idconceptopar` varchar(4) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idconceptopar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_conceptospar`
--

LOCK TABLES `co_conceptospar` WRITE;
/*!40000 ALTER TABLE `co_conceptospar` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_conceptospar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_cuentas`
--

DROP TABLE IF EXISTS `co_cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_cuentas` (
  `codbalance` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codepigrafe` varchar(6) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `idcuenta` int(11) NOT NULL AUTO_INCREMENT,
  `idcuentaesp` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `idepigrafe` int(11) NOT NULL,
  PRIMARY KEY (`idcuenta`),
  KEY `ca_co_cuentas_ejercicios` (`codejercicio`),
  KEY `ca_co_cuentas_epigrafes2` (`idepigrafe`),
  CONSTRAINT `ca_co_cuentas_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ca_co_cuentas_epigrafes2` FOREIGN KEY (`idepigrafe`) REFERENCES `co_epigrafes` (`idepigrafe`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_cuentas`
--

LOCK TABLES `co_cuentas` WRITE;
/*!40000 ALTER TABLE `co_cuentas` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_cuentascbba`
--

DROP TABLE IF EXISTS `co_cuentascbba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_cuentascbba` (
  `desccuenta` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin NOT NULL,
  `codbalance` varchar(15) COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_cuentascbba`
--

LOCK TABLES `co_cuentascbba` WRITE;
/*!40000 ALTER TABLE `co_cuentascbba` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_cuentascbba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_cuentasesp`
--

DROP TABLE IF EXISTS `co_cuentasesp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_cuentasesp` (
  `codcuenta` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `idcuentaesp` varchar(6) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idcuentaesp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_cuentasesp`
--

LOCK TABLES `co_cuentasesp` WRITE;
/*!40000 ALTER TABLE `co_cuentasesp` DISABLE KEYS */;
INSERT INTO `co_cuentasesp` VALUES (NULL,NULL,'Cuentas de acreedores','ACREED'),(NULL,NULL,'Cuentas de caja','CAJA'),(NULL,NULL,'Cuentas de diferencias negativas de cambio','CAMNEG'),(NULL,NULL,'Cuentas de diferencias positivas de cambio','CAMPOS'),(NULL,NULL,'Cuentas de clientes','CLIENT'),(NULL,NULL,'Cuentas de compras','COMPRA'),(NULL,NULL,'Devoluciones de compras','DEVCOM'),(NULL,NULL,'Devoluciones de ventas','DEVVEN'),(NULL,NULL,'Cuentas por diferencias positivas en divisa extranjera','DIVPOS'),(NULL,NULL,'Cuentas por diferencias negativas de conversión a la moneda local','EURNEG'),(NULL,NULL,'Cuentas por diferencias positivas de conversión a la moneda local','EURPOS'),(NULL,NULL,'Gastos por recargo financiero','GTORF'),(NULL,NULL,'Ingresos por recargo financiero','INGRF'),(NULL,NULL,'Cuentas de retenciones IRPF','IRPF'),(NULL,NULL,'Cuentas de retenciones para proveedores IRPFPR','IRPFPR'),(NULL,NULL,'Cuentas acreedoras de IVA en la regularización','IVAACR'),(NULL,NULL,'Cuentas deudoras de IVA en la regularización','IVADEU'),(NULL,NULL,'IVA en entregas intracomunitarias U.E.','IVAEUE'),(NULL,NULL,'Cuentas de IVA repercutido','IVAREP'),(NULL,NULL,'Cuentas de IVA repercutido para clientes exentos de IVA','IVAREX'),(NULL,NULL,'Cuentas de IVA soportado UE','IVARUE'),(NULL,NULL,'Cuentas de IVA repercutido en exportaciones','IVARXP'),(NULL,NULL,'Cuentas de IVA soportado en importaciones','IVASIM'),(NULL,NULL,'Cuentas de IVA soportado','IVASOP'),(NULL,NULL,'Cuentas de IVA soportado UE','IVASUE'),(NULL,NULL,'Cuentas relativas al ejercicio previo','PREVIO'),(NULL,NULL,'Cuentas de proveedores','PROVEE'),(NULL,NULL,'Pérdidas y ganancias','PYG'),(NULL,NULL,'Cuentas de ventas','VENTAS');
/*!40000 ALTER TABLE `co_cuentasesp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_epigrafes`
--

DROP TABLE IF EXISTS `co_epigrafes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_epigrafes` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codepigrafe` varchar(6) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `idepigrafe` int(11) NOT NULL AUTO_INCREMENT,
  `idgrupo` int(11) DEFAULT NULL,
  `idpadre` int(11) DEFAULT NULL,
  PRIMARY KEY (`idepigrafe`),
  KEY `ca_co_epigrafes_ejercicios` (`codejercicio`),
  KEY `ca_co_epigrafes_gruposepigrafes2` (`idgrupo`),
  CONSTRAINT `ca_co_epigrafes_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ca_co_epigrafes_gruposepigrafes2` FOREIGN KEY (`idgrupo`) REFERENCES `co_gruposepigrafes` (`idgrupo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_epigrafes`
--

LOCK TABLES `co_epigrafes` WRITE;
/*!40000 ALTER TABLE `co_epigrafes` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_epigrafes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_gruposepigrafes`
--

DROP TABLE IF EXISTS `co_gruposepigrafes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_gruposepigrafes` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codgrupo` varchar(6) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `idgrupo` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idgrupo`),
  KEY `ca_co_gruposepigrafes_ejercicios` (`codejercicio`),
  CONSTRAINT `ca_co_gruposepigrafes_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_gruposepigrafes`
--

LOCK TABLES `co_gruposepigrafes` WRITE;
/*!40000 ALTER TABLE `co_gruposepigrafes` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_gruposepigrafes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_regiva`
--

DROP TABLE IF EXISTS `co_regiva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_regiva` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codsubcuentaacr` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentadeu` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `fechaasiento` date NOT NULL,
  `fechafin` date NOT NULL,
  `fechainicio` date NOT NULL,
  `idasiento` int(11) NOT NULL,
  `idregiva` int(11) NOT NULL AUTO_INCREMENT,
  `idsubcuentaacr` int(11) DEFAULT NULL,
  `idsubcuentadeu` int(11) DEFAULT NULL,
  `periodo` varchar(8) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idregiva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_regiva`
--

LOCK TABLES `co_regiva` WRITE;
/*!40000 ALTER TABLE `co_regiva` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_regiva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_secuencias`
--

DROP TABLE IF EXISTS `co_secuencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_secuencias` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `idsecuencia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `valor` int(11) DEFAULT NULL,
  `valorout` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsecuencia`),
  KEY `ca_co_secuencias_ejercicios` (`codejercicio`),
  CONSTRAINT `ca_co_secuencias_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_secuencias`
--

LOCK TABLES `co_secuencias` WRITE;
/*!40000 ALTER TABLE `co_secuencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_secuencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_subcuentas`
--

DROP TABLE IF EXISTS `co_subcuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_subcuentas` (
  `codcuenta` varchar(6) COLLATE utf8_bin NOT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin NOT NULL,
  `debe` double NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `haber` double NOT NULL,
  `idcuenta` int(11) DEFAULT NULL,
  `idsubcuenta` int(11) NOT NULL AUTO_INCREMENT,
  `iva` double NOT NULL,
  `recargo` double NOT NULL,
  `saldo` double NOT NULL,
  PRIMARY KEY (`idsubcuenta`),
  KEY `ca_co_subcuentas_ejercicios` (`codejercicio`),
  KEY `ca_co_subcuentas_cuentas2` (`idcuenta`),
  CONSTRAINT `ca_co_subcuentas_cuentas2` FOREIGN KEY (`idcuenta`) REFERENCES `co_cuentas` (`idcuenta`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ca_co_subcuentas_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_subcuentas`
--

LOCK TABLES `co_subcuentas` WRITE;
/*!40000 ALTER TABLE `co_subcuentas` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_subcuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_subcuentascli`
--

DROP TABLE IF EXISTS `co_subcuentascli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_subcuentascli` (
  `codcliente` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsubcuenta` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ca_co_subcuentascli_ejercicios` (`codejercicio`),
  KEY `ca_co_subcuentascli_clientes` (`codcliente`),
  CONSTRAINT `ca_co_subcuentascli_clientes` FOREIGN KEY (`codcliente`) REFERENCES `clientes` (`codcliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ca_co_subcuentascli_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_subcuentascli`
--

LOCK TABLES `co_subcuentascli` WRITE;
/*!40000 ALTER TABLE `co_subcuentascli` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_subcuentascli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_subcuentasprov`
--

DROP TABLE IF EXISTS `co_subcuentasprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_subcuentasprov` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsubcuenta` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ca_co_subcuentasprov_ejercicios` (`codejercicio`),
  KEY `ca_co_subcuentasprov_proveedores` (`codproveedor`),
  CONSTRAINT `ca_co_subcuentasprov_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ca_co_subcuentasprov_proveedores` FOREIGN KEY (`codproveedor`) REFERENCES `proveedores` (`codproveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_subcuentasprov`
--

LOCK TABLES `co_subcuentasprov` WRITE;
/*!40000 ALTER TABLE `co_subcuentasprov` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_subcuentasprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentasbanco`
--

DROP TABLE IF EXISTS `cuentasbanco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentasbanco` (
  `sufijo` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `ctaagencia` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `idsubcuentaecgc` int(11) DEFAULT NULL,
  `ctaentidad` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `entidad` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `agencia` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `cuenta` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaecgc` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `iban` varchar(34) COLLATE utf8_bin DEFAULT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin NOT NULL,
  `idsubcuenta` int(11) DEFAULT NULL,
  `swift` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`codcuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentasbanco`
--

LOCK TABLES `cuentasbanco` WRITE;
/*!40000 ALTER TABLE `cuentasbanco` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuentasbanco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentasbcocli`
--

DROP TABLE IF EXISTS `cuentasbcocli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentasbcocli` (
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `swift` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `ctaentidad` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `iban` varchar(34) COLLATE utf8_bin DEFAULT NULL,
  `agencia` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `entidad` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin NOT NULL,
  `ctaagencia` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin NOT NULL,
  `cuenta` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`codcuenta`),
  KEY `ca_cuentasbcocli_clientes` (`codcliente`),
  CONSTRAINT `ca_cuentasbcocli_clientes` FOREIGN KEY (`codcliente`) REFERENCES `clientes` (`codcliente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentasbcocli`
--

LOCK TABLES `cuentasbcocli` WRITE;
/*!40000 ALTER TABLE `cuentasbcocli` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuentasbcocli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentasbcopro`
--

DROP TABLE IF EXISTS `cuentasbcopro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentasbcopro` (
  `agencia` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin NOT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin NOT NULL,
  `ctaagencia` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `ctaentidad` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `cuenta` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `entidad` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `iban` varchar(34) COLLATE utf8_bin DEFAULT NULL,
  `swift` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`codcuenta`),
  KEY `ca_cuentasbcopro_proveedores` (`codproveedor`),
  CONSTRAINT `ca_cuentasbcopro_proveedores` FOREIGN KEY (`codproveedor`) REFERENCES `proveedores` (`codproveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentasbcopro`
--

LOCK TABLES `cuentasbcopro` WRITE;
/*!40000 ALTER TABLE `cuentasbcopro` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuentasbcopro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dirclientes`
--

DROP TABLE IF EXISTS `dirclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dirclientes` (
  `codcliente` varchar(6) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `domenvio` tinyint(1) DEFAULT NULL,
  `domfacturacion` tinyint(1) DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `ca_dirclientes_clientes` (`codcliente`),
  CONSTRAINT `ca_dirclientes_clientes` FOREIGN KEY (`codcliente`) REFERENCES `clientes` (`codcliente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dirclientes`
--

LOCK TABLES `dirclientes` WRITE;
/*!40000 ALTER TABLE `dirclientes` DISABLE KEYS */;
INSERT INTO `dirclientes` VALUES ('000001','PRY','',NULL,'Central','','','',1,1,'Principal',1),('000002','PRY','',NULL,'Encarnacion','Encarnacion','','',1,1,'Principal',2),('000003','PRY','',NULL,'Central','Asuncion','','',1,1,'Principal',3),('000004','PRY','',NULL,'Central','Asuncion','','',1,1,'Principal',4);
/*!40000 ALTER TABLE `dirclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dirproveedores`
--

DROP TABLE IF EXISTS `dirproveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dirproveedores` (
  `codproveedor` varchar(6) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `direccionppal` tinyint(1) DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `ca_dirproveedores_proveedores` (`codproveedor`),
  CONSTRAINT `ca_dirproveedores_proveedores` FOREIGN KEY (`codproveedor`) REFERENCES `proveedores` (`codproveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dirproveedores`
--

LOCK TABLES `dirproveedores` WRITE;
/*!40000 ALTER TABLE `dirproveedores` DISABLE KEYS */;
INSERT INTO `dirproveedores` VALUES ('000002','PRY','',NULL,'ITAPUA','ENCARNACIÓN','','Antequera 1375 c/ T.R. Pereira',1,'Principal',1),('000006','PRY','',NULL,'CENTRAL','Encarnacion','','',1,'Principal',2),('000007','PRY','',NULL,'FASDFADAS','FASDFASDFasdfasdf','gfdgsdfg','fasdfasd',1,'Principal',3),('000008','PRY','',NULL,'Itapua','Encarnacion','','calle 122345',1,'Principal',4),('000009','PRY','',NULL,'Itapua','Encarnacion','','',1,'Principal',5),('000010','PRY','',NULL,'Central','','','',1,'Principal',6),('000011','PRY','',NULL,'ITAPUA','ENCARNACIÓN','','BARRIO 123',1,'Principal',7),('000012','PRY','',NULL,'ITAPUA','ENCARNACIÓN','','ASDFASDF',1,'Principal',8);
/*!40000 ALTER TABLE `dirproveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `divisas`
--

DROP TABLE IF EXISTS `divisas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `divisas` (
  `bandera` text COLLATE utf8_bin,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codiso` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `simbolo` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `tasaconv` double NOT NULL,
  `tasaconv_compra` double DEFAULT NULL,
  PRIMARY KEY (`coddivisa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divisas`
--

LOCK TABLES `divisas` WRITE;
/*!40000 ALTER TABLE `divisas` DISABLE KEYS */;
INSERT INTO `divisas` VALUES (NULL,'ARS','32','PESOS (ARG)',NULL,'$(Arg)',340,370),(NULL,'EUR','978','EUROS',NULL,'€',6050,6450),(NULL,'PRY','555','GUARANIES',NULL,'Grs.',1,1),(NULL,'USD','840','DÓLARES EE.UU.',NULL,'$',5630,5680),(NULL,'VEF','937','BOLÍVARES',NULL,'Bs',660,835);
/*!40000 ALTER TABLE `divisas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejercicios`
--

DROP TABLE IF EXISTS `ejercicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ejercicios` (
  `idasientocierre` int(11) DEFAULT NULL,
  `idasientopyg` int(11) DEFAULT NULL,
  `idasientoapertura` int(11) DEFAULT NULL,
  `plancontable` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `longsubcuenta` int(11) DEFAULT NULL,
  `estado` varchar(15) COLLATE utf8_bin NOT NULL,
  `fechafin` date NOT NULL,
  `fechainicio` date NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`codejercicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejercicios`
--

LOCK TABLES `ejercicios` WRITE;
/*!40000 ALTER TABLE `ejercicios` DISABLE KEYS */;
INSERT INTO `ejercicios` VALUES (NULL,NULL,NULL,'08',10,'ABIERTO','2015-12-31','2015-01-01','2015','2015'),(NULL,NULL,NULL,'08',10,'ABIERTO','2016-12-31','2016-01-01','2016','2016');
/*!40000 ALTER TABLE `ejercicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `administrador` varchar(100) COLLATE utf8_bin NOT NULL,
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cifnif` varchar(20) COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcuentarem` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `codedi` varchar(17) COLLATE utf8_bin DEFAULT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `contintegrada` tinyint(1) DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email_firma` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email_password` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `horario` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprovincia` int(11) DEFAULT NULL,
  `lema` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `logo` text COLLATE utf8_bin,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `nombrecorto` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `pie_factura` text COLLATE utf8_bin,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `recequivalencia` tinyint(1) DEFAULT NULL,
  `stockpedidos` tinyint(1) DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `web` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES ('','','00000014','ENCARNACIÓN','ALG',NULL,'PRY',NULL,'2016','CONT','PRY','','A',0,'C/ Falsa, 123','lopez.desarrollo@gmail.com','Saludos\r\nAL','tbtlnowakzrbrezk','','',1,NULL,'',NULL,'Limpia Mas S.A.','Limpia Mas','','ITAPUA',0,0,'','desarrollo.lopez.com');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricantes`
--

DROP TABLE IF EXISTS `fabricantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabricantes` (
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `codfabricante` varchar(8) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`codfabricante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricantes`
--

LOCK TABLES `fabricantes` WRITE;
/*!40000 ALTER TABLE `fabricantes` DISABLE KEYS */;
INSERT INTO `fabricantes` VALUES ('PROPIOS','PROPIO'),('Proveedores','PROV');
/*!40000 ALTER TABLE `fabricantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturascli`
--

DROP TABLE IF EXISTS `facturascli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturascli` (
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `automatica` tinyint(1) DEFAULT NULL,
  `cifnif` varchar(20) COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddir` int(11) DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `codigorect` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `deabono` tinyint(1) DEFAULT '0',
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `editable` tinyint(1) DEFAULT '0',
  `fecha` date NOT NULL,
  `vencimiento` date DEFAULT NULL,
  `hora` time NOT NULL DEFAULT '00:00:00',
  `idasiento` int(11) DEFAULT NULL,
  `idfactura` int(11) NOT NULL AUTO_INCREMENT,
  `idfacturarect` int(11) DEFAULT NULL,
  `idpagodevol` int(11) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `irpf` double NOT NULL,
  `neto` double NOT NULL,
  `nogenerarasiento` tinyint(1) DEFAULT NULL,
  `nombrecliente` varchar(100) COLLATE utf8_bin NOT NULL,
  `numero` varchar(12) COLLATE utf8_bin NOT NULL,
  `numero2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `pagada` tinyint(1) NOT NULL DEFAULT '0',
  `porcomision` double DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `recfinanciero` double DEFAULT NULL,
  `tasaconv` double NOT NULL,
  `total` double NOT NULL,
  `totaleuros` double NOT NULL,
  `totalirpf` double NOT NULL,
  `totaliva` double NOT NULL,
  `totalrecargo` double DEFAULT NULL,
  `tpv` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idfactura`),
  UNIQUE KEY `uniq_codigo_facturascli` (`codigo`),
  KEY `ca_facturascli_series2` (`codserie`),
  KEY `ca_facturascli_ejercicios2` (`codejercicio`),
  KEY `ca_facturascli_asiento2` (`idasiento`),
  CONSTRAINT `ca_facturascli_asiento2` FOREIGN KEY (`idasiento`) REFERENCES `co_asientos` (`idasiento`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ca_facturascli_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  CONSTRAINT `ca_facturascli_series2` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturascli`
--

LOCK TABLES `facturascli` WRITE;
/*!40000 ALTER TABLE `facturascli` DISABLE KEYS */;
INSERT INTO `facturascli` VALUES (NULL,NULL,'888-55','Encarnacion','2','ALG','000002',NULL,'PRY','2015','FAC2015A1',NULL,'CONT','PRY','','A',0,'',0,'2015-12-13','2016-01-13','07:26:25',NULL,1,NULL,NULL,NULL,0,22154,NULL,'Jose luis','1','','',1,0,'Encarnacion',NULL,1,24369,24369,0,2215,0,NULL),('',NULL,'444-333','','2','ALG','000001',1,'PRY','2015','FAC2015A2',NULL,'CONT','PRY','','A',0,'',0,'2015-12-13','2016-01-13','07:34:33',NULL,2,NULL,NULL,NULL,0,10122,NULL,'Juan peres','2','','',1,0,'Central',NULL,1,11134,11134,0,1012,0,NULL),('',NULL,'5555 3333-2','Asuncion','2','ALG','000004',4,'PRY','2015','FAC2015A3',NULL,'CONT','PRY','','A',0,'',0,'2015-12-13','2016-01-13','07:37:32',NULL,3,NULL,NULL,NULL,0,4814,NULL,'Norma','3','','',1,0,'Central',NULL,1,5295,5295,0,481,0,NULL),('',NULL,'444-333','','2','ALG','000001',1,'PRY','2015','FAC2015A4',NULL,'CONT','PRY','','A',0,'',0,'2015-12-13','2016-01-13','07:40:06',NULL,4,NULL,NULL,NULL,0,6448,NULL,'Juan peres','4','','',1,0,'Central',NULL,1,7093,7093,0,645,0,NULL),('',NULL,'5555 3333-2','Asuncion','2','ALG','000004',4,'PRY','2016','FAC2016A1',NULL,'CONT','PRY','','A',0,'',0,'2016-02-27','2016-03-27','19:48:15',NULL,5,NULL,NULL,NULL,0,5151,NULL,'Norma','1','','',1,0,'Central',NULL,1,5666,5666,0,515,0,NULL),('',NULL,'888-55','Encarnacion','2','ALG','000002',2,'PRY','2016','FAC2016A2',NULL,'CONT','PRY','','A',0,'',0,'2016-02-27','2016-03-27','20:01:28',NULL,6,NULL,NULL,NULL,0,9377,NULL,'Jose luis','2','','',1,0,'Encarnacion',NULL,1,10315,10315,0,938,0,NULL),('',NULL,'888-55','Encarnacion','2','ALG','000002',2,'PRY','2016','FAC2016A3',NULL,'CONT','PRY','','A',0,'',0,'2016-02-27','2016-03-27','20:03:13',NULL,7,NULL,NULL,NULL,0,8438,NULL,'Jose luis','3','','',1,0,'Encarnacion',NULL,1,9282,9282,0,844,0,NULL),('',NULL,'888-55','Encarnacion','2','ALG','000002',2,'PRY','2016','FAC2016A4',NULL,'CONT','PRY','','A',0,'',0,'2016-02-28','2016-03-28','20:04:33',NULL,8,NULL,NULL,NULL,0,10892,NULL,'Jose luis','4','','',1,0,'Encarnacion',NULL,1,11981.2,11981.2,0,1089.2,0,NULL),('',NULL,'888-55','Encarnacion','4','ALG','000002',2,'PRY','2016','FAC2016A5',NULL,'CONT','PRY','','A',0,'',0,'2016-03-05','2016-04-05','12:39:20',NULL,9,NULL,NULL,NULL,0,9672,NULL,'Jose luis','5','','',1,0,'Encarnacion',NULL,1,10639,10639,0,967,0,NULL),('',NULL,'5555 3333-2','Asuncion','4','ALG','000004',4,'PRY','2016','FAC2016A6',NULL,'CONT','PRY','','A',0,'',0,'2016-03-12','2016-04-12','17:10:07',NULL,10,NULL,NULL,NULL,0,5446,NULL,'Norma','6','','',1,0,'Central',NULL,1,5991,5991,0,545,0,NULL),(NULL,NULL,'888-55','Encarnacion','2','ALG','000002',NULL,'PRY','2016','FAC2016A7',NULL,'CONT','PRY','','A',0,'',0,'2016-03-13','2016-04-13','16:51:20',NULL,11,NULL,NULL,NULL,0,4001,NULL,'Jose luis','7','','',1,0,'Encarnacion',NULL,1,4401,4401,0,400,0,NULL);
/*!40000 ALTER TABLE `facturascli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturasprov`
--

DROP TABLE IF EXISTS `facturasprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturasprov` (
  `automatica` tinyint(1) DEFAULT NULL,
  `cifnif` varchar(20) COLLATE utf8_bin NOT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `codigorect` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin NOT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `deabono` tinyint(1) DEFAULT '0',
  `editable` tinyint(1) DEFAULT '0',
  `fecha` date NOT NULL,
  `hora` time NOT NULL DEFAULT '00:00:00',
  `idasiento` int(11) DEFAULT NULL,
  `idfactura` int(11) NOT NULL AUTO_INCREMENT,
  `idfacturarect` int(11) DEFAULT NULL,
  `idpagodevol` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `neto` double DEFAULT NULL,
  `nogenerarasiento` tinyint(1) DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `numero` varchar(12) COLLATE utf8_bin NOT NULL,
  `numproveedor` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `pagada` tinyint(1) NOT NULL DEFAULT '0',
  `recfinanciero` double DEFAULT NULL,
  `tasaconv` double NOT NULL,
  `total` double DEFAULT NULL,
  `totaleuros` double DEFAULT NULL,
  `totalirpf` double DEFAULT NULL,
  `totaliva` double DEFAULT NULL,
  `totalrecargo` double DEFAULT NULL,
  PRIMARY KEY (`idfactura`),
  UNIQUE KEY `uniq_codigo_facturasprov` (`codigo`),
  KEY `ca_facturasprov_series2` (`codserie`),
  KEY `ca_facturasprov_ejercicios2` (`codejercicio`),
  KEY `ca_facturasprov_asiento2` (`idasiento`),
  CONSTRAINT `ca_facturasprov_asiento2` FOREIGN KEY (`idasiento`) REFERENCES `co_asientos` (`idasiento`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ca_facturasprov_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  CONSTRAINT `ca_facturasprov_series2` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturasprov`
--

LOCK TABLES `facturasprov` WRITE;
/*!40000 ALTER TABLE `facturasprov` DISABLE KEYS */;
INSERT INTO `facturasprov` VALUES (NULL,'80022458-2','4','ALG','PRY','2016','FAC2016A1C',NULL,'CONT','000001','A',0,0,'2016-03-05','15:43:15',NULL,1,NULL,NULL,0,76780,NULL,'Proquitec S.A.','1','333-888-7894','',1,NULL,1,84458,84458,0,7678,0),(NULL,'88888833-1','2','ALG','USD','2016','FAC2016A2C',NULL,'CONT','000003','A',0,0,'2016-03-13','09:44:39',NULL,2,NULL,NULL,0,21,NULL,'Quimanfla','2','556-211-1001','',1,NULL,5500,23,126500,0,2,0),(NULL,'88888833-1','4','ALG','USD','2016','FAC2016A3C',NULL,'CONT','000003','A',0,0,'2016-03-13','11:54:43',NULL,3,NULL,NULL,0,95,NULL,'Quimanfla','3','546-100-12345','',1,NULL,5680,105,596400,0,10,0),(NULL,'555555-3','4','ALG','PRY','2016','FAC2016A4C',NULL,'CONT','000004','A',0,0,'2016-03-13','17:14:56',NULL,4,NULL,NULL,0,201000,NULL,'Quimicos S.A','4','001-001-00013','',1,NULL,1,221100,221100,0,20100,0),(NULL,'555555-3','4','ALG','PRY','2016','FAC2016B1C',NULL,'CONT','000004','B',0,0,'2016-03-13','23:11:10',NULL,5,NULL,NULL,0,30000,NULL,'Quimicos S.A','1','002-003-44563','',0,NULL,1,33000,33000,0,3000,0),(NULL,'555555-3','2','ALG','PRY','2016','FAC2016A5C',NULL,'CONT','000004','A',0,0,'2016-03-14','14:12:19',NULL,6,NULL,NULL,0,220000,NULL,'Quimicos S.A','5','0001-0001-5555','',0,NULL,1,242000,242000,0,22000,0),(NULL,'555555-8','2','ALG','PRY','2016','FAC2016A6C',NULL,'CONT','000005','A',0,0,'2016-03-14','14:20:53',NULL,7,NULL,NULL,0,12150,NULL,'COLORANTES SA','6','888-555-333','',1,NULL,1,13365,13365,0,1215,0),(NULL,'555555-8','2','ALG','PRY','2016','FAC2016A7C',NULL,'CONT','000005','A',0,0,'2016-03-14','14:31:56',NULL,8,NULL,NULL,0,28050,NULL,'COLORANTES SA','7','555-444-333','',0,NULL,1,30855,30855,0,2805,0),(NULL,'80022458-2','2','ALG','PRY','2016','FAC2016A8C',NULL,'CONT','000001','A',0,0,'2016-03-14','14:43:32',NULL,9,NULL,NULL,0,29000,NULL,'Proquitec S.A.','8','5555-333-888','',0,NULL,1,31900,31900,0,2900,0),(NULL,'555555-3','2','ALG','PRY','2016','FAC2016A9C',NULL,'CONT','000004','A',0,0,'2016-03-14','15:48:40',NULL,10,NULL,NULL,0,5000,NULL,'Quimicos S.A','9','333-444-111','',0,NULL,1,5500,5500,0,500,0),(NULL,'88888833-1','2','ALG','PRY','2016','FAC2016A10C',NULL,'CONT','000003','A',0,0,'2016-03-14','22:15:30',NULL,11,NULL,NULL,0,24000,NULL,'Quimanfla','10','1032-456-00798','',0,NULL,1,26400,26400,0,2400,0),(NULL,'80022458-2','2','ALG','PRY','2016','FAC2016A11C',NULL,'CONT','000001','A',0,0,'2016-03-18','21:37:31',NULL,12,NULL,NULL,0,14500,NULL,'Proquitec S.A.','11','','',0,NULL,1,15950,15950,0,1450,0);
/*!40000 ALTER TABLE `facturasprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familias`
--

DROP TABLE IF EXISTS `familias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familias` (
  `descripcion` varchar(100) COLLATE utf8_bin NOT NULL,
  `codfamilia` varchar(8) COLLATE utf8_bin NOT NULL,
  `madre` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`codfamilia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familias`
--

LOCK TABLES `familias` WRITE;
/*!40000 ALTER TABLE `familias` DISABLE KEYS */;
INSERT INTO `familias` VALUES ('Detergentes','DETER',NULL),('Jabon liquido','JABON LI',NULL),('Materia Pri','Mt',NULL),('Quimicos','QUIM','Mt'),('VARIOS','VARI',NULL);
/*!40000 ALTER TABLE `familias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formaspago`
--

DROP TABLE IF EXISTS `formaspago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formaspago` (
  `codpago` varchar(10) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `genrecibos` varchar(10) COLLATE utf8_bin NOT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `domiciliado` tinyint(1) DEFAULT NULL,
  `vencimiento` varchar(20) COLLATE utf8_bin DEFAULT '+1month',
  PRIMARY KEY (`codpago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formaspago`
--

LOCK TABLES `formaspago` WRITE;
/*!40000 ALTER TABLE `formaspago` DISABLE KEYS */;
INSERT INTO `formaspago` VALUES ('CONT','Al contado','Emitidos',NULL,0,'+1month'),('PAGADA','Credito','Emitidos',NULL,0,'+1week'),('PAYPAL','PayPal','Emitidos',NULL,0,'+1week');
/*!40000 ALTER TABLE `formaspago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs_access`
--

DROP TABLE IF EXISTS `fs_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs_access` (
  `fs_user` varchar(12) COLLATE utf8_bin NOT NULL,
  `fs_page` varchar(30) COLLATE utf8_bin NOT NULL,
  `allow_delete` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`fs_user`,`fs_page`),
  KEY `fs_access_page2` (`fs_page`),
  CONSTRAINT `fs_access_page2` FOREIGN KEY (`fs_page`) REFERENCES `fs_pages` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fs_access_user2` FOREIGN KEY (`fs_user`) REFERENCES `fs_users` (`nick`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs_access`
--

LOCK TABLES `fs_access` WRITE;
/*!40000 ALTER TABLE `fs_access` DISABLE KEYS */;
INSERT INTO `fs_access` VALUES ('Alder','admin_empresa',0),('Alder','admin_home',0),('Alder','admin_info',0),('Alder','admin_user',0),('Alder','admin_users',0),('Alder','compras_pedido',0),('Alder','compras_pedidos',0),('Alder','imprimir_presu_pedi',0),('Alder','informe_pedidos',0),('Alder','informe_presupuestos',0),('Alder','productos',0),('Alder','ventas_pedido',0),('Alder','ventas_pedidos',0),('Alder','ventas_presupuesto',0),('Alder','ventas_presupuestos',0),('alberto','admin_empresa',0),('alberto','admin_home',0),('alberto','admin_info',0),('alberto','admin_user',0),('alberto','admin_users',0),('alberto','compras_pedido',0),('alberto','compras_pedidos',0),('alberto','imprimir_presu_pedi',0),('alberto','informe_pedidos',0),('alberto','informe_presupuestos',0),('alberto','productos',0),('alberto','ventas_pedido',0),('alberto','ventas_pedidos',0),('alberto','ventas_presupuesto',0),('alberto','ventas_presupuestos',0),('test','compras_actualiza_arts',1),('test','compras_agrupar_albaranes',1),('test','compras_factura',1),('test','compras_facturas',1),('test','compras_imprimir',1),('test','compras_pedido',1),('test','compras_pedidos',1),('test','compras_proveedor',1),('test','compras_proveedores',1),('test','nueva_compra',1);
/*!40000 ALTER TABLE `fs_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs_extensions2`
--

DROP TABLE IF EXISTS `fs_extensions2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs_extensions2` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `page_from` varchar(30) COLLATE utf8_bin NOT NULL,
  `page_to` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `text` text COLLATE utf8_bin,
  `params` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`name`,`page_from`),
  KEY `ca_fs_extensions2_fs_pages` (`page_from`),
  CONSTRAINT `ca_fs_extensions2_fs_pages` FOREIGN KEY (`page_from`) REFERENCES `fs_pages` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs_extensions2`
--

LOCK TABLES `fs_extensions2` WRITE;
/*!40000 ALTER TABLE `fs_extensions2` DISABLE KEYS */;
INSERT INTO `fs_extensions2` VALUES ('agrupar_albaranes','compras_agrupar_albaranes','compras_albaranes','button','<span class=\"glyphicon glyphicon-duplicate\"></span><span class=\"hidden-xs\">&nbsp; Agrupar</span>',''),('agrupar_albaranes','ventas_agrupar_albaranes','ventas_albaranes','button','<span class=\"glyphicon glyphicon-duplicate\"></span><span class=\"hidden-xs\">&nbsp; Agrupar</span>',''),('albaranes_agente','compras_albaranes','admin_agente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Remisiones de proveedor',''),('albaranes_agente','ventas_albaranes','admin_agente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Remisiones de cliente',''),('albaranes_articulo','compras_albaranes','ventas_articulo','tab_button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Remisiones de proveedor',''),('albaranes_articulo','ventas_albaranes','ventas_articulo','tab_button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Remisiones de cliente',''),('albaranes_cliente','ventas_albaranes','ventas_cliente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Remisiones',''),('albaranes_proveedor','compras_albaranes','compras_proveedor','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Remisiones',''),('api_remote_printer','tpv_recambios',NULL,'api','remote_printer',NULL),('articulo_subcuentas','articulo_subcuentas','ventas_articulo','tab','<span class=\"glyphicon glyphicon-book\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Subcuentas</span>',NULL),('bootstrap','admin_user','admin_user','css','view/css/bootstrap.min.css',''),('bootstrap-table','admin_info','admin_info','head','<link rel=\"stylesheet\" href=\"//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.8.1/bootstrap-table.min.css\"/>\n   <!-- Latest compiled and minified JavaScript -->\n   <script src=\"//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.8.1/bootstrap-table.min.js\"></script>\n   <!-- Latest compiled and minified Locales -->\n   <script src=\"//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.8.1/locale/bootstrap-table-es-SP.min.js\"></script>',NULL),('btn_albaran','compras_actualiza_arts','compras_albaran','button','<span class=\"glyphicon glyphicon-dollar\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Precios</span>','&doc=albaran'),('btn_fabricantes','ventas_fabricantes','ventas_articulos','button','<span class=\"glyphicon glyphicon-folder-open\" aria-hidden=\"true\"></span><span class=\"hidden-xs\"> &nbsp; Fabricantes</span>',NULL),('btn_familias','ventas_familias','ventas_articulos','button','<span class=\"glyphicon glyphicon-folder-open\" aria-hidden=\"true\"></span><span class=\"hidden-xs\"> &nbsp; Familias</span>',NULL),('btn_pedido','compras_actualiza_arts','compras_pedido','button','<span class=\"glyphicon glyphicon-dollar\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Precios</span>','&doc=pedido'),('cosmo','admin_user','admin_user','css','view/css/bootstrap-cosmo.min.css',''),('darkly','admin_user','admin_user','css','view/css/bootstrap-darkly.min.css',''),('email_albaran','ventas_imprimir','ventas_albaran','email','Remision simple','&albaran=TRUE'),('email_albaran_proveedor','compras_imprimir','compras_albaran','email','Remision simple','&albaran=TRUE'),('email_factura','ventas_imprimir','ventas_factura','email','Factura simple','&factura=TRUE&tipo=simple'),('email_pedido','imprimir_presu_pedi','ventas_pedido','email','Pedido simple','&pedido=TRUE'),('email_pedido_proveedor','imprimir_presu_pedi','compras_pedido','email','Pedido simple','&pedido_p=TRUE'),('email_presupuesto','imprimir_presu_pedi','ventas_presupuesto','email','Presupuesto simple','&presupuesto=TRUE'),('facturas_agente','compras_facturas','admin_agente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Facturas de proveedor',''),('facturas_agente','ventas_facturas','admin_agente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Facturas de cliente',''),('facturas_articulo','compras_facturas','ventas_articulo','tab_button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Facturas de proveedor',''),('facturas_articulo','ventas_facturas','ventas_articulo','tab_button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Facturas de cliente',''),('facturas_cliente','ventas_facturas','ventas_cliente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Facturas',''),('facturas_proveedor','compras_facturas','compras_proveedor','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Facturas',''),('flatly','admin_user','admin_user','css','view/css/bootstrap-flatly.min.css',''),('imprimir_albaran','ventas_imprimir','ventas_albaran','pdf','Remision simple','&albaran=TRUE'),('imprimir_albaran_proveedor','compras_imprimir','compras_albaran','pdf','Remision simple','&albaran=TRUE'),('imprimir_factura','ventas_imprimir','ventas_factura','pdf','Factura simple','&factura=TRUE&tipo=simple'),('imprimir_factura_carta','ventas_imprimir','ventas_factura','pdf','Modelo carta','&factura=TRUE&tipo=carta'),('imprimir_factura_firma','ventas_imprimir','ventas_factura','pdf','Factura con firma','&factura=TRUE&tipo=firma'),('imprimir_factura_proveedor','compras_imprimir','compras_factura','pdf','Factura simple','&factura=TRUE'),('imprimir_pedido','imprimir_presu_pedi','ventas_pedido','pdf','Pedido simple','&pedido=TRUE'),('imprimir_pedido_proveedor','imprimir_presu_pedi','compras_pedido','pdf','Pedido simple','&pedido_p=TRUE'),('imprimir_presupuesto','imprimir_presu_pedi','ventas_presupuesto','pdf','Presupuesto simple','&presupuesto=TRUE'),('informe_articulo','informe_articulos','ventas_articulo','tab_button','<span class=\"glyphicon glyphicon-list-alt\" aria-hidden=\"true\"></span> &nbsp; Informe','&tab=search'),('lumen','admin_user','admin_user','css','view/css/bootstrap-lumen.min.css',''),('paper','admin_user','admin_user','css','view/css/bootstrap-paper.min.css',''),('pedidos_agente','compras_pedidos','admin_agente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Pedidos a proveedor',''),('pedidos_agente','ventas_pedidos','admin_agente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Pedidos de cliente',''),('pedidos_articulo','compras_pedidos','ventas_articulo','tab_button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Pedidos a proveedor',''),('pedidos_articulo','ventas_pedidos','ventas_articulo','tab_button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Pedidos de cliente',''),('pedidos_cliente','ventas_pedidos','ventas_cliente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Pedidos',''),('pedidos_proveedor','compras_pedidos','compras_proveedor','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Pedidos',''),('presupuestos_agente','ventas_presupuestos','admin_agente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Presupuestos de cliente',''),('presupuestos_articulo','ventas_presupuestos','ventas_articulo','tab_button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Presupuestos de cliente',''),('presupuestos_cliente','ventas_presupuestos','ventas_cliente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Presupuestos',''),('sandstone','admin_user','admin_user','css','view/css/bootstrap-sandstone.min.css',''),('simplex','admin_user','admin_user','css','view/css/bootstrap-simplex.min.css',''),('spacelab','admin_user','admin_user','css','view/css/bootstrap-spacelab.min.css',''),('united','admin_user','admin_user','css','view/css/bootstrap-united.min.css',''),('yeti','admin_user','admin_user','css','view/css/bootstrap-yeti.min.css','');
/*!40000 ALTER TABLE `fs_extensions2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs_logs`
--

DROP TABLE IF EXISTS `fs_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) COLLATE utf8_bin NOT NULL,
  `detalle` text COLLATE utf8_bin NOT NULL,
  `fecha` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `usuario` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `ip` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `alerta` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=588 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs_logs`
--

LOCK TABLES `fs_logs` WRITE;
/*!40000 ALTER TABLE `fs_logs` DISABLE KEYS */;
INSERT INTO `fs_logs` VALUES (1,'login','Login correcto.','2015-12-06 05:21:46','admin','::1',0),(2,'error','Usuario no encontrado.','2015-12-06 05:22:15','admin','::1',0),(3,'error','Empleado no encontrado.','2015-12-06 05:22:36','admin','::1',0),(4,'error','Artículo no encontrado.','2015-12-06 05:22:38','admin','::1',0),(5,'error','Empleado no encontrado.','2015-12-06 05:22:38','admin','::1',0),(6,'error','Artículo no encontrado.','2015-12-06 05:22:39','admin','::1',0),(7,'error','Faltan datos.','2015-12-06 05:22:39','admin','::1',0),(8,'error','¡albarán de proveedor no encontrado!','2015-12-06 05:22:41','admin','::1',0),(9,'error','¡Factura de proveedor no encontrada!','2015-12-06 05:22:42','admin','::1',0),(10,'error','¡Proveedor no encontrado!','2015-12-06 05:22:44','admin','::1',0),(11,'error','Asiento no encontrado.','2015-12-06 05:22:46','admin','::1',0),(12,'error','Cuenta no encontrada.','2015-12-06 05:22:46','admin','::1',0),(13,'error','Ejercicio no encontrado.','2015-12-06 05:22:47','admin','::1',0),(14,'error','Subcuenta no encontrada.','2015-12-06 05:22:50','admin','::1',0),(15,'error','¡albarán de cliente no encontrado!','2015-12-06 05:22:56','admin','::1',0),(16,'error','Artículo no encontrado.','2015-12-06 05:22:56','admin','::1',0),(17,'error','¡Cliente no encontrado!','2015-12-06 05:22:57','admin','::1',0),(18,'error','Fabricante no encontrado.','2015-12-06 05:22:57','admin','::1',0),(19,'error','¡Factura de cliente no encontrada!','2015-12-06 05:22:57','admin','::1',0),(20,'error','Familia no encontrada.','2015-12-06 05:22:59','admin','::1',0),(21,'error','Grupo no encontrado.','2015-12-06 05:22:59','admin','::1',0),(22,'error','Faltan datos.','2015-12-06 05:23:00','admin','::1',0),(23,'error','¡albarán de proveedor no encontrado!','2015-12-06 05:23:00','admin','::1',0),(24,'error','¡Factura de proveedor no encontrada!','2015-12-06 05:23:00','admin','::1',0),(25,'error','¡Proveedor no encontrado!','2015-12-06 05:23:01','admin','::1',0),(26,'error','Asiento no encontrado.','2015-12-06 05:23:01','admin','::1',0),(27,'error','Cuenta no encontrada.','2015-12-06 05:23:01','admin','::1',0),(28,'error','Ejercicio no encontrado.','2015-12-06 05:23:02','admin','::1',0),(29,'error','Subcuenta no encontrada.','2015-12-06 05:23:03','admin','::1',0),(30,'error','¡albarán de cliente no encontrado!','2015-12-06 05:23:04','admin','::1',0),(31,'error','Artículo no encontrado.','2015-12-06 05:23:05','admin','::1',0),(32,'error','¡Cliente no encontrado!','2015-12-06 05:23:05','admin','::1',0),(33,'error','Fabricante no encontrado.','2015-12-06 05:23:05','admin','::1',0),(34,'error','¡Factura de cliente no encontrada!','2015-12-06 05:23:05','admin','::1',0),(35,'error','Familia no encontrada.','2015-12-06 05:23:06','admin','::1',0),(36,'error','Grupo no encontrado.','2015-12-06 05:23:06','admin','::1',0),(37,'login','El usuario ha cerrado la sesión.','2015-12-06 05:27:43','admin','::1',0),(38,'error','¡Contraseña incorrecta!','2015-12-06 05:27:48',NULL,'::1',0),(39,'login','Login correcto.','2015-12-06 05:27:52','admin','::1',0),(40,'error','¡Pedido de proveedor no encontrado!','2015-12-06 05:30:21','admin','::1',0),(41,'error','¡Pedido de cliente no encontrado!','2015-12-06 05:30:24','admin','::1',0),(42,'error','¡Presupuesto de cliente no encontrado!','2015-12-06 05:30:24','admin','::1',0),(43,'login','El usuario ha cerrado la sesión.','2015-12-06 09:18:31','admin','::1',0),(44,'login','Login correcto.','2015-12-06 09:29:06','admin','::1',0),(45,'login','El usuario ha cerrado la sesión.','2015-12-06 09:30:11','admin','::1',0),(46,'login','El usuario ha cerrado la sesión.','2015-12-06 09:30:27','admin','::1',0),(47,'login','El usuario ha cerrado la sesión.','2015-12-06 09:30:35','admin','::1',0),(48,'login','Login correcto.','2015-12-06 09:49:55','admin','::1',0),(49,'login','El usuario ha cerrado la sesión.','2015-12-06 09:50:07','admin','::1',0),(50,'login','Login correcto.','2015-12-06 09:56:29','admin','::1',0),(51,'login','El usuario ha cerrado la sesión.','2015-12-06 05:01:47','admin','::1',0),(52,'login','Login correcto.','2015-12-06 05:01:53','admin','::1',0),(53,'error','No se ha podido conectar por email. ¿La contraseña es correcta?','2015-12-06 05:07:56','admin','::1',0),(54,'error','Aunque la contraseña de gmail sea correcta, en ciertas situaciones los servidores de gmail bloquean la conexión. Para superar esta situación debes crear y usar una <a href=\"https://support.google.com/accounts/answer/185833?hl=es\" target=\"_blank\">contraseña de aplicación</a>','2015-12-06 05:07:56','admin','::1',0),(55,'login','El usuario ha cerrado la sesión.','2015-12-06 05:12:17','admin','::1',0),(56,'login','Login correcto.','2015-12-06 10:03:14','admin','::1',0),(57,'login','Login correcto.','2015-12-06 10:05:56','admin','::1',0),(58,'login','El usuario ha cerrado la sesión.','2015-12-06 10:59:23','admin','::1',0),(59,'login','Login correcto.','2015-12-06 10:59:30','admin','::1',0),(60,'login','El usuario ha cerrado la sesión.','2015-12-06 11:02:49','admin','::1',0),(61,'login','Login correcto.','2015-12-06 11:02:54','admin','::1',0),(62,'login','El usuario ha cerrado la sesión.','2015-12-06 11:04:29','admin','::1',0),(63,'login','Login correcto.','2015-12-06 11:04:34','admin','::1',0),(64,'login','El usuario ha cerrado la sesión.','2015-12-06 11:56:51','admin','::1',0),(65,'login','Login correcto.','2015-12-06 11:56:55','admin','::1',0),(66,'login','El usuario ha cerrado la sesión.','2015-12-06 11:57:50','admin','::1',0),(67,'login','Login correcto.','2015-12-06 11:57:54','admin','::1',0),(68,'login','Login correcto.','2015-12-06 12:21:14','admin','127.0.0.1',0),(69,'login','Login correcto.','2015-12-06 12:24:04','admin','::1',0),(70,'login','El usuario ha cerrado la sesión.','2015-12-06 12:32:48','admin','::1',0),(71,'login','Login correcto.','2015-12-06 12:32:52','admin','::1',0),(72,'login','Login correcto.','2015-12-06 12:35:36','admin','::1',0),(73,'login','El usuario ha cerrado la sesión.','2015-12-06 15:21:47','admin','::1',0),(74,'login','Login correcto.','2015-12-06 15:21:56','admin','::1',0),(75,'error','Error al descargar la lista de plugins.','2015-12-06 17:03:51','admin','::1',0),(76,'error','Error al descargar la lista de plugins.','2015-12-06 17:04:27','admin','::1',0),(77,'error','Error al descargar la lista de plugins.','2015-12-06 17:06:51','admin','::1',0),(78,'error','No se ha podido conectar por email. ¿La contraseña es correcta?','2015-12-06 17:07:35','admin','::1',0),(79,'error','Aunque la contraseña de gmail sea correcta, en ciertas situaciones los servidores de gmail bloquean la conexión. Para superar esta situación debes crear y usar una <a href=\"https://support.google.com/accounts/answer/185833?hl=es\" target=\"_blank\">contraseña de aplicación</a>','2015-12-06 17:07:35','admin','::1',0),(80,'error','No se ha podido conectar por email. ¿La contraseña es correcta?','2015-12-06 17:08:45','admin','::1',0),(81,'error','Aunque la contraseña de gmail sea correcta, en ciertas situaciones los servidores de gmail bloquean la conexión. Para superar esta situación debes crear y usar una <a href=\"https://support.google.com/accounts/answer/185833?hl=es\" target=\"_blank\">contraseña de aplicación</a>','2015-12-06 17:08:45','admin','::1',0),(82,'error','Error al descargar la lista de plugins.','2015-12-06 17:09:21','admin','::1',0),(83,'error','Error al descargar la lista de plugins.','2015-12-06 17:21:28','admin','::1',0),(84,'error','Error al descargar la lista de plugins.','2015-12-06 17:21:46','admin','::1',0),(85,'error','Error al descargar la lista de plugins.','2015-12-06 17:21:46','admin','::1',0),(86,'error','Error al descargar la lista de plugins.','2015-12-06 17:22:12','admin','::1',0),(87,'login','El usuario ha cerrado la sesión.','2015-12-06 17:22:57','admin','::1',0),(88,'login','Login correcto.','2015-12-06 17:23:02','admin','::1',0),(89,'error','Error al descargar la lista de plugins.','2015-12-06 17:23:02','admin','::1',0),(90,'error','Error al descargar la lista de plugins.','2015-12-06 17:23:50','admin','::1',0),(91,'error','Error al descargar la lista de plugins.','2015-12-06 17:24:27','admin','::1',0),(92,'error','Error al descargar la lista de plugins.','2015-12-06 17:24:28','admin','::1',0),(93,'error','Error al descargar la lista de plugins.','2015-12-06 17:28:26','admin','::1',0),(94,'error','Error al descargar la lista de plugins.','2015-12-06 17:29:54','admin','::1',0),(95,'error','Error al descargar la lista de plugins.','2015-12-06 17:31:30','admin','::1',0),(96,'login','El usuario ha cerrado la sesión.','2015-12-06 17:34:01','admin','::1',0),(97,'login','Login correcto.','2015-12-06 17:34:06','admin','::1',0),(98,'error','Error al descargar la lista de plugins.','2015-12-06 17:34:06','admin','::1',0),(99,'error','Error al descargar la lista de plugins.','2015-12-06 17:34:13','admin','::1',0),(100,'error','Error al descargar la lista de plugins.','2015-12-06 17:34:13','admin','::1',0),(101,'error','Error al descargar la lista de plugins.','2015-12-06 17:35:21','admin','::1',0),(102,'error','Error al descargar la lista de plugins.','2015-12-06 17:35:40','admin','::1',0),(103,'error','Error al descargar la lista de plugins.','2015-12-06 17:35:43','admin','::1',0),(104,'error','Error al descargar la lista de plugins.','2015-12-06 17:36:32','admin','::1',0),(105,'error','Error al descargar la lista de plugins.','2015-12-06 17:36:39','admin','::1',0),(106,'error','Error al descargar la lista de plugins.','2015-12-06 17:37:12','admin','::1',0),(107,'login','El usuario ha cerrado la sesión.','2015-12-06 17:45:47','admin','::1',0),(108,'login','Login correcto.','2015-12-06 17:45:51','admin','::1',0),(109,'error','Error al descargar la lista de plugins.','2015-12-06 17:45:51','admin','::1',0),(110,'login','El usuario ha cerrado la sesión.','2015-12-06 17:53:25','admin','::1',0),(111,'login','Login correcto.','2015-12-06 17:53:30','admin','::1',0),(112,'error','Error al descargar la lista de plugins.','2015-12-06 17:53:30','admin','::1',0),(113,'login','El usuario ha cerrado la sesión.','2015-12-06 17:55:07','admin','127.0.0.1',0),(114,'login','Login correcto.','2015-12-06 17:55:11','admin','127.0.0.1',0),(115,'error','Error al descargar la lista de plugins.','2015-12-06 17:55:11','admin','127.0.0.1',0),(116,'login','Login correcto.','2015-12-06 17:55:23','admin','127.0.0.1',0),(117,'error','Error al descargar la lista de plugins.','2015-12-06 17:55:23','admin','127.0.0.1',0),(118,'error','Error al descargar la lista de plugins.','2015-12-06 17:55:24','admin','127.0.0.1',0),(119,'login','Login correcto.','2015-12-06 18:11:42','admin','127.0.0.1',0),(120,'error','Error al descargar la lista de plugins.','2015-12-06 18:11:42','admin','127.0.0.1',0),(121,'login','El usuario ha cerrado la sesión.','2015-12-06 19:18:55','admin','::1',0),(122,'login','Login correcto.','2015-12-06 19:19:02','admin','::1',0),(123,'error','Error al descargar la lista de plugins.','2015-12-06 19:19:02','admin','::1',0),(124,'error','Error al descargar la lista de plugins.','2015-12-06 19:19:10','admin','::1',0),(125,'error','Error al descargar la lista de plugins.','2015-12-06 19:19:42','admin','::1',0),(126,'error','Error al descargar la lista de plugins.','2015-12-06 19:20:34','admin','::1',0),(127,'error','Error al descargar la lista de plugins.','2015-12-06 19:21:22','admin','::1',0),(128,'error','Error al descargar la lista de plugins.','2015-12-06 19:22:36','admin','::1',0),(129,'login','El usuario ha cerrado la sesión.','2015-12-08 14:15:11','admin','127.0.0.1',0),(130,'login','Login correcto.','2015-12-08 14:15:16','admin','127.0.0.1',0),(131,'error','Error al descargar la lista de plugins.','2015-12-08 14:15:16','admin','127.0.0.1',0),(132,'error','Error al descargar la lista de plugins.','2015-12-08 14:15:16','admin','127.0.0.1',0),(133,'error','Error al descargar la lista de plugins.','2015-12-08 14:15:56','admin','127.0.0.1',0),(134,'error','Error al descargar la lista de plugins.','2015-12-08 14:15:56','admin','127.0.0.1',0),(135,'error','Error al descargar la lista de plugins.','2015-12-08 14:16:43','admin','127.0.0.1',0),(136,'error','Error al descargar la lista de plugins.','2015-12-08 14:16:55','admin','127.0.0.1',0),(137,'error','Error al descargar la lista de plugins.','2015-12-08 14:36:42','admin','127.0.0.1',0),(138,'error','Error al descargar la lista de plugins.','2015-12-08 14:37:28','admin','127.0.0.1',0),(139,'error','Error al descargar la lista de plugins.','2015-12-08 14:37:31','admin','127.0.0.1',0),(140,'error','Error al descargar la lista de plugins.','2015-12-08 14:38:40','admin','127.0.0.1',0),(141,'error','Error al descargar la lista de plugins.','2015-12-08 14:38:41','admin','127.0.0.1',0),(142,'error','Error al descargar la lista de plugins.','2015-12-08 14:39:51','admin','127.0.0.1',0),(143,'error','Error al descargar la lista de plugins.','2015-12-08 14:39:59','admin','127.0.0.1',0),(144,'error','Error al descargar la lista de plugins.','2015-12-08 14:40:01','admin','127.0.0.1',0),(145,'error','Error al descargar la lista de plugins.','2015-12-08 14:40:32','admin','127.0.0.1',0),(146,'error','Error al descargar la lista de plugins.','2015-12-08 14:40:38','admin','127.0.0.1',0),(147,'error','Error al descargar la lista de plugins.','2015-12-08 14:40:40','admin','127.0.0.1',0),(148,'error','Error al descargar la lista de plugins.','2015-12-08 14:40:40','admin','127.0.0.1',0),(149,'error','Error al descargar la lista de plugins.','2015-12-08 14:41:13','admin','127.0.0.1',0),(150,'error','Error al descargar la lista de plugins.','2015-12-08 14:41:18','admin','127.0.0.1',0),(151,'error','Error al descargar la lista de plugins.','2015-12-08 14:41:20','admin','127.0.0.1',0),(152,'error','Error al descargar la lista de plugins.','2015-12-08 14:45:18','admin','127.0.0.1',0),(153,'error','Error al descargar la lista de plugins.','2015-12-08 14:46:02','admin','127.0.0.1',0),(154,'error','Error al descargar la lista de plugins.','2015-12-08 14:46:04','admin','127.0.0.1',0),(155,'error','Error al descargar la lista de plugins.','2015-12-08 14:47:11','admin','127.0.0.1',0),(156,'error','Error al descargar la lista de plugins.','2015-12-08 14:47:13','admin','127.0.0.1',0),(157,'login','El usuario ha cerrado la sesión.','2015-12-08 14:53:36','admin','::1',0),(158,'error','Error al descargar la lista de plugins.','2015-12-08 14:53:49','admin','127.0.0.1',0),(159,'error','Error al descargar la lista de plugins.','2015-12-08 14:53:51','admin','127.0.0.1',0),(160,'error','Error al descargar la lista de plugins.','2015-12-08 14:57:39','admin','127.0.0.1',0),(161,'error','Error al descargar la lista de plugins.','2015-12-08 14:57:40','admin','127.0.0.1',0),(162,'error','Error al descargar la lista de plugins.','2015-12-08 14:57:41','admin','127.0.0.1',0),(163,'error','Error al descargar la lista de plugins.','2015-12-08 14:58:45','admin','127.0.0.1',0),(164,'error','Error al descargar la lista de plugins.','2015-12-08 14:58:47','admin','127.0.0.1',0),(165,'error','Error al descargar la lista de plugins.','2015-12-08 16:25:37','admin','127.0.0.1',0),(166,'error','Error al descargar la lista de plugins.','2015-12-08 16:25:37','admin','127.0.0.1',0),(167,'error','Error al descargar la lista de plugins.','2015-12-08 16:26:21','admin','127.0.0.1',0),(168,'error','Error al descargar la lista de plugins.','2015-12-08 16:26:25','admin','127.0.0.1',0),(169,'error','Error al descargar la lista de plugins.','2015-12-08 16:26:28','admin','127.0.0.1',0),(170,'error','Error al descargar la lista de plugins.','2015-12-08 16:26:28','admin','127.0.0.1',0),(171,'error','Error al descargar la lista de plugins.','2015-12-08 16:26:32','admin','127.0.0.1',0),(172,'error','Error al descargar la lista de plugins.','2015-12-08 16:37:41','admin','127.0.0.1',0),(173,'error','Error al descargar la lista de plugins.','2015-12-08 16:38:02','admin','127.0.0.1',0),(174,'error','Error al descargar la lista de plugins.','2015-12-08 23:45:42','admin','127.0.0.1',0),(175,'error','Error al descargar la lista de plugins.','2015-12-08 23:45:43','admin','127.0.0.1',0),(176,'error','Error al descargar la lista de plugins.','2015-12-10 17:20:28','admin','127.0.0.1',0),(177,'error','Error al descargar la lista de plugins.','2015-12-10 17:20:37','admin','127.0.0.1',0),(178,'error','Error al descargar la lista de plugins.','2015-12-10 17:22:56','admin','127.0.0.1',0),(179,'error','Error al descargar la lista de plugins.','2015-12-10 17:30:54','admin','127.0.0.1',0),(180,'error','Error al descargar la lista de plugins.','2015-12-10 17:35:52','admin','127.0.0.1',0),(181,'error','Error al descargar la lista de plugins.','2015-12-10 17:38:06','admin','127.0.0.1',0),(182,'error','Error al descargar la lista de plugins.','2015-12-10 17:41:06','admin','127.0.0.1',0),(183,'login','El usuario ha cerrado la sesión.','2015-12-10 17:54:26','admin','127.0.0.1',0),(184,'login','Login correcto.','2015-12-10 17:54:30','admin','127.0.0.1',0),(185,'error','Error al descargar la lista de plugins.','2015-12-12 17:22:27','admin','127.0.0.1',0),(186,'error','Error al descargar la lista de plugins.','2015-12-12 17:22:38','admin','127.0.0.1',0),(187,'error','Error al descargar la lista de plugins.','2015-12-12 17:22:53','admin','127.0.0.1',0),(188,'login','El usuario ha cerrado la sesión.','2015-12-13 10:25:06','admin','127.0.0.1',0),(189,'login','Login correcto.','2015-12-13 10:25:14','admin','127.0.0.1',0),(190,'error','Error al descargar la lista de plugins.','2015-12-13 10:25:34','admin','127.0.0.1',0),(191,'login','Login correcto.','2016-01-09 12:42:01','admin','::1',0),(192,'login','El usuario ha cerrado la sesión.','2016-01-18 22:22:35','admin','::1',0),(193,'login','Login correcto.','2016-01-18 22:22:44','admin','::1',0),(194,'login','El usuario ha cerrado la sesión.','2016-02-12 05:56:18','admin','127.0.0.1',0),(195,'login','Login correcto.','2016-02-12 05:56:22','admin','127.0.0.1',0),(196,'error','Error al descargar la lista de plugins.','2016-02-12 05:56:22','admin','127.0.0.1',0),(197,'error','Error al descargar la lista de plugins.','2016-02-12 06:06:12','admin','127.0.0.1',0),(198,'login','El usuario ha cerrado la sesión.','2016-02-17 23:27:04','admin','::1',0),(199,'login','Login correcto.','2016-02-17 23:27:16','admin','::1',0),(200,'error','Error al descargar la lista de plugins.','2016-02-27 22:35:26','admin','::1',0),(201,'error','Error al descargar la lista de plugins.','2016-02-27 22:36:35','admin','::1',0),(202,'error','Error al descargar la lista de plugins.','2016-02-27 22:36:51','admin','::1',0),(203,'error','Error al descargar la lista de plugins.','2016-02-27 22:36:51','admin','::1',0),(204,'error','Error al descargar la lista de plugins.','2016-02-27 22:37:13','admin','::1',0),(205,'error','Error al descargar la lista de plugins.','2016-02-27 22:42:02','admin','::1',0),(206,'login','El usuario ha cerrado la sesión.','2016-02-27 22:42:58','admin','127.0.0.1',0),(207,'error','¡Contraseña incorrecta!','2016-02-27 22:43:08',NULL,'127.0.0.1',0),(208,'login','Login correcto.','2016-02-27 22:43:13','admin','127.0.0.1',0),(209,'error','Error al descargar la lista de plugins.','2016-02-27 22:43:13','admin','127.0.0.1',0),(210,'error','Error al descargar la lista de plugins.','2016-02-27 22:43:14','admin','127.0.0.1',0),(211,'login','El usuario ha cerrado la sesión.','2016-02-27 22:43:32','admin','127.0.0.1',0),(212,'login','Login correcto.','2016-02-27 22:44:01','alberto','127.0.0.1',0),(213,'error','Error al descargar la lista de plugins.','2016-02-27 22:44:01','alberto','127.0.0.1',0),(214,'error','Sólo un administrador puede hacer cambios en esta página.','2016-02-27 22:44:01','alberto','127.0.0.1',0),(215,'login','El usuario ha cerrado la sesión.','2016-02-27 22:44:12','admin','::1',0),(216,'login','Login correcto.','2016-02-27 22:44:26','admin','::1',0),(217,'error','Error al descargar la lista de plugins.','2016-02-27 22:44:26','admin','::1',0),(218,'error','Error al descargar la lista de plugins.','2016-02-27 22:44:36','admin','::1',0),(219,'error','Error al descargar la lista de plugins.','2016-02-27 22:45:24','admin','::1',0),(220,'error','Sólo un administrador puede abrir la caja.','2016-02-27 22:48:44','alberto','127.0.0.1',0),(221,'error','Sólo un administrador puede abrir la caja.','2016-02-27 22:48:51','alberto','127.0.0.1',0),(222,'error','Sólo un administrador puede abrir la caja.','2016-02-27 22:48:53','alberto','127.0.0.1',0),(223,'error','Error al descargar la lista de plugins.','2016-02-27 22:48:53','alberto','127.0.0.1',0),(224,'error','Sólo un administrador puede abrir la caja.','2016-02-27 22:48:55','alberto','127.0.0.1',0),(225,'error','Error al descargar la lista de plugins.','2016-02-27 22:53:24','alberto','127.0.0.1',0),(226,'error','Sólo un administrador puede hacer cambios en esta página.','2016-02-27 22:53:24','alberto','127.0.0.1',0),(227,'error','Error al descargar la lista de plugins.','2016-02-27 22:54:01','admin','::1',0),(228,'error','Error al descargar la lista de plugins.','2016-02-27 22:55:37','admin','::1',0),(229,'error','Error al descargar la lista de plugins.','2016-02-27 22:56:38','admin','::1',0),(230,'error','Error al descargar la lista de plugins.','2016-02-27 22:57:41','admin','::1',0),(231,'error','Error al descargar la lista de plugins.','2016-02-27 22:59:03','admin','::1',0),(232,'error','Error al descargar la lista de plugins.','2016-02-27 22:59:35','alberto','127.0.0.1',0),(233,'error','Error al descargar la lista de plugins.','2016-02-27 23:00:03','alberto','127.0.0.1',0),(234,'error','Error al descargar la lista de plugins.','2016-02-27 23:03:30','alberto','127.0.0.1',0),(235,'error','Error al descargar la lista de plugins.','2016-02-27 23:03:56','alberto','127.0.0.1',0),(236,'error','Error al descargar la lista de plugins.','2016-02-27 23:04:20','admin','::1',0),(237,'error','¡Contraseña incorrecta!','2016-02-28 22:41:35',NULL,'127.0.0.1',0),(238,'login','Login correcto.','2016-02-28 22:41:41','Alder','127.0.0.1',0),(239,'login','El usuario ha cerrado la sesión.','2016-02-28 22:42:30','Alder','127.0.0.1',0),(240,'login','Login correcto.','2016-02-28 22:42:38','admin','127.0.0.1',0),(241,'error','Error al descargar la lista de plugins.','2016-02-28 22:43:27','admin','127.0.0.1',0),(242,'error','Error al descargar la lista de plugins.','2016-02-28 22:43:27','admin','127.0.0.1',0),(243,'error','Error al descargar la lista de plugins.','2016-02-28 22:43:35','admin','127.0.0.1',0),(244,'error','Error al descargar la lista de plugins.','2016-02-28 22:43:59','admin','127.0.0.1',0),(245,'error','Empleado no encontrado.','2016-02-28 22:44:00','admin','127.0.0.1',0),(246,'error','Artículo no encontrado.','2016-02-28 22:44:01','admin','127.0.0.1',0),(247,'error','Faltan datos.','2016-02-28 22:44:01','admin','127.0.0.1',0),(248,'error','¡albarán de proveedor no encontrado!','2016-02-28 22:44:02','admin','127.0.0.1',0),(249,'error','¡Factura de proveedor no encontrada!','2016-02-28 22:44:02','admin','127.0.0.1',0),(250,'error','¡Proveedor no encontrado!','2016-02-28 22:44:03','admin','127.0.0.1',0),(251,'error','Asiento no encontrado.','2016-02-28 22:44:03','admin','127.0.0.1',0),(252,'error','Cuenta no encontrada.','2016-02-28 22:44:04','admin','127.0.0.1',0),(253,'error','Ejercicio no encontrado.','2016-02-28 22:44:04','admin','127.0.0.1',0),(254,'error','Subcuenta no encontrada.','2016-02-28 22:44:05','admin','127.0.0.1',0),(255,'error','¡albarán de cliente no encontrado!','2016-02-28 22:44:08','admin','127.0.0.1',0),(256,'error','Artículo no encontrado.','2016-02-28 22:44:08','admin','127.0.0.1',0),(257,'error','¡Cliente no encontrado!','2016-02-28 22:44:08','admin','127.0.0.1',0),(258,'error','Fabricante no encontrado.','2016-02-28 22:44:08','admin','127.0.0.1',0),(259,'error','Error al descargar la lista de plugins.','2016-02-28 22:44:09','admin','127.0.0.1',0),(260,'error','¡Factura de cliente no encontrada!','2016-02-28 22:44:09','admin','127.0.0.1',0),(261,'error','Error al descargar la lista de plugins.','2016-02-28 22:44:10','admin','127.0.0.1',0),(262,'error','Familia no encontrada.','2016-02-28 22:44:10','admin','127.0.0.1',0),(263,'error','Grupo no encontrado.','2016-02-28 22:44:10','admin','127.0.0.1',0),(264,'error','Error al descargar la lista de plugins.','2016-02-28 22:44:16','admin','127.0.0.1',0),(265,'error','Error al descargar la lista de plugins.','2016-02-28 22:44:16','admin','127.0.0.1',0),(266,'error','Error al descargar la lista de plugins.','2016-02-28 22:44:18','admin','127.0.0.1',0),(267,'error','¡Pedido de proveedor no encontrado!','2016-02-28 22:44:19','admin','127.0.0.1',0),(268,'error','¡Pedido de cliente no encontrado!','2016-02-28 22:44:20','admin','127.0.0.1',0),(269,'error','¡Presupuesto de cliente no encontrado!','2016-02-28 22:44:21','admin','127.0.0.1',0),(270,'error','Error al descargar la lista de plugins.','2016-02-28 22:44:24','admin','127.0.0.1',0),(271,'login','El usuario ha cerrado la sesión.','2016-02-28 22:44:33','admin','127.0.0.1',0),(272,'login','Login correcto.','2016-02-28 22:44:36','admin','127.0.0.1',0),(273,'error','Error al descargar la lista de plugins.','2016-02-28 22:44:36','admin','127.0.0.1',0),(274,'error','Error al descargar la lista de plugins.','2016-02-28 22:44:36','admin','127.0.0.1',0),(275,'error','Error al descargar la lista de plugins.','2016-02-28 22:45:12','admin','127.0.0.1',0),(276,'error','Error al descargar la lista de plugins.','2016-02-28 22:45:12','admin','127.0.0.1',0),(277,'login','El usuario ha cerrado la sesión.','2016-02-28 22:45:33','admin','127.0.0.1',0),(278,'login','Login correcto.','2016-02-28 22:45:42','alberto','127.0.0.1',0),(279,'error','Error al descargar la lista de plugins.','2016-02-28 22:45:42','alberto','127.0.0.1',0),(280,'error','Sólo un administrador puede hacer cambios en esta página.','2016-02-28 22:45:43','alberto','127.0.0.1',0),(281,'error','Error al descargar la lista de plugins.','2016-02-28 22:45:43','alberto','127.0.0.1',0),(282,'error','Sólo un administrador puede hacer cambios en esta página.','2016-02-28 22:45:43','alberto','127.0.0.1',0),(283,'error','Error al descargar la lista de plugins.','2016-02-28 22:45:56','alberto','127.0.0.1',0),(284,'error','Sólo un administrador puede hacer cambios en esta página.','2016-02-28 22:45:57','alberto','127.0.0.1',0),(285,'error','Error al descargar la lista de plugins.','2016-02-28 22:46:01','alberto','127.0.0.1',0),(286,'error','Sólo un administrador puede hacer cambios en esta página.','2016-02-28 22:46:01','alberto','127.0.0.1',0),(287,'error','Error al descargar la lista de plugins.','2016-02-28 22:46:01','alberto','127.0.0.1',0),(288,'error','Sólo un administrador puede hacer cambios en esta página.','2016-02-28 22:46:01','alberto','127.0.0.1',0),(289,'login','El usuario ha cerrado la sesión.','2016-02-28 22:46:06','alberto','127.0.0.1',0),(290,'error','¡Contraseña incorrecta!','2016-02-28 22:46:11',NULL,'127.0.0.1',0),(291,'login','Login correcto.','2016-02-28 22:46:21','Alder','127.0.0.1',0),(292,'login','El usuario ha cerrado la sesión.','2016-02-28 22:48:38','Alder','127.0.0.1',0),(293,'login','Login correcto.','2016-02-28 22:48:53','admin','127.0.0.1',0),(294,'error','Error al descargar la lista de plugins.','2016-02-28 22:48:53','admin','127.0.0.1',0),(295,'error','Error al descargar la lista de plugins.','2016-02-28 22:48:54','admin','127.0.0.1',0),(296,'error','Error al descargar la lista de plugins.','2016-02-28 22:49:27','admin','127.0.0.1',0),(297,'login','El usuario ha cerrado la sesión.','2016-02-28 22:49:44','admin','127.0.0.1',0),(298,'login','El usuario ha cerrado la sesión.','2016-02-28 22:51:06','admin','127.0.0.1',0),(299,'login','Login correcto.','2016-02-28 22:53:48','admin','127.0.0.1',0),(300,'error','Error al descargar la lista de plugins.','2016-02-28 22:53:48','admin','127.0.0.1',0),(301,'error','Error al descargar la lista de plugins.','2016-02-28 22:53:48','admin','127.0.0.1',0),(302,'login','El usuario ha cerrado la sesión.','2016-02-28 22:54:52','admin','127.0.0.1',0),(303,'login','Login correcto.','2016-02-28 22:55:18','admin','127.0.0.1',0),(304,'error','Error al descargar la lista de plugins.','2016-02-28 22:55:18','admin','127.0.0.1',0),(305,'error','Error al descargar la lista de plugins.','2016-02-28 22:55:18','admin','127.0.0.1',0),(306,'login','El usuario ha cerrado la sesión.','2016-02-28 22:55:44','admin','127.0.0.1',0),(307,'login','El usuario ha cerrado la sesión.','2016-02-28 22:57:40','admin','127.0.0.1',0),(308,'login','El usuario ha cerrado la sesión.','2016-02-28 22:57:43','admin','127.0.0.1',0),(309,'login','Login correcto.','2016-02-28 22:58:40','admin','127.0.0.1',0),(310,'error','Error al descargar la lista de plugins.','2016-02-28 22:58:40','admin','127.0.0.1',0),(311,'error','Error al descargar la lista de plugins.','2016-02-28 22:58:41','admin','127.0.0.1',0),(312,'login','El usuario ha cerrado la sesión.','2016-02-28 22:58:46','admin','127.0.0.1',0),(313,'login','El usuario ha cerrado la sesión.','2016-02-28 23:00:03','admin','127.0.0.1',0),(314,'login','Login correcto.','2016-02-28 23:00:12','admin','127.0.0.1',0),(315,'error','Error al descargar la lista de plugins.','2016-02-28 23:00:12','admin','127.0.0.1',0),(316,'error','Error al descargar la lista de plugins.','2016-02-28 23:00:12','admin','127.0.0.1',0),(317,'login','El usuario ha cerrado la sesión.','2016-02-28 23:00:17','admin','127.0.0.1',0),(318,'login','Login correcto.','2016-02-28 23:00:29','admin','127.0.0.1',0),(319,'error','Error al descargar la lista de plugins.','2016-02-28 23:00:29','admin','127.0.0.1',0),(320,'error','Error al descargar la lista de plugins.','2016-02-28 23:00:29','admin','127.0.0.1',0),(321,'login','El usuario ha cerrado la sesión.','2016-02-28 23:00:42','admin','127.0.0.1',0),(322,'error','¡Contraseña incorrecta!','2016-02-28 23:00:49',NULL,'127.0.0.1',0),(323,'error','¡Contraseña incorrecta!','2016-02-28 23:00:56',NULL,'127.0.0.1',0),(324,'login','Login correcto.','2016-02-28 23:01:05','Alder','127.0.0.1',0),(325,'error','Error al descargar la lista de plugins.','2016-02-28 23:01:05','Alder','127.0.0.1',0),(326,'error','Error al descargar la lista de plugins.','2016-02-28 23:01:06','Alder','127.0.0.1',0),(327,'error','No tienes un <a href=\"index.php?page=admin_user&snick=Alder\">agente asociado</a>\n               a tu usuario, y por tanto no puedes hacer tickets.','2016-02-28 23:01:18','Alder','127.0.0.1',0),(328,'error','No tienes un <a href=\"index.php?page=admin_user&snick=Alder\">agente asociado</a>\n               a tu usuario, y por tanto no puedes hacer tickets.','2016-02-28 23:01:45','Alder','127.0.0.1',0),(329,'error','No tienes un <a href=\"index.php?page=admin_user&snick=Alder\">agente asociado</a>\n               a tu usuario, y por tanto no puedes hacer tickets.','2016-02-28 23:02:15','Alder','127.0.0.1',0),(330,'login','El usuario ha cerrado la sesión.','2016-02-28 23:02:24','Alder','127.0.0.1',0),(331,'login','Login correcto.','2016-02-28 23:02:35','alberto','127.0.0.1',0),(332,'error','Error al descargar la lista de plugins.','2016-02-28 23:02:35','alberto','127.0.0.1',0),(333,'error','Error al descargar la lista de plugins.','2016-02-28 23:03:42','alberto','127.0.0.1',0),(334,'error','Error al descargar la lista de plugins.','2016-02-28 23:04:57','alberto','127.0.0.1',0),(335,'error','Error al descargar la lista de plugins.','2016-02-28 23:05:56','alberto','127.0.0.1',0),(336,'error','Error al descargar la lista de plugins.','2016-02-28 23:06:31','alberto','127.0.0.1',0),(337,'login','El usuario ha cerrado la sesión.','2016-02-28 23:06:49','alberto','127.0.0.1',0),(338,'login','Login correcto.','2016-02-28 23:07:02','alberto','127.0.0.1',0),(339,'error','Error al descargar la lista de plugins.','2016-02-28 23:07:02','alberto','127.0.0.1',0),(340,'error','No se ha podido conectar por email. ¿La contraseña es correcta?','2016-02-28 23:07:39','alberto','127.0.0.1',0),(341,'error','Aunque la contraseña de gmail sea correcta, en ciertas situaciones los servidores de gmail bloquean la conexión. Para superar esta situación debes crear y usar una <a href=\"https://support.google.com/accounts/answer/185833?hl=es\" target=\"_blank\">contraseña de aplicación</a>','2016-02-28 23:07:39','alberto','127.0.0.1',0),(342,'error','Error al descargar la lista de plugins.','2016-02-28 23:07:57','alberto','127.0.0.1',0),(343,'error','Error al descargar la lista de plugins.','2016-02-28 23:08:19','alberto','127.0.0.1',0),(344,'login','El usuario ha cerrado la sesión.','2016-02-28 23:08:53','alberto','127.0.0.1',0),(345,'error','¡Contraseña incorrecta!','2016-02-29 20:49:35',NULL,'::1',0),(346,'error','¡Contraseña incorrecta!','2016-02-29 20:49:45',NULL,'::1',0),(347,'login','Login correcto.','2016-02-29 20:49:57','admin','::1',0),(348,'error','Error al descargar la lista de plugins.','2016-02-29 20:49:57','admin','::1',0),(349,'error','Error al descargar la lista de plugins.','2016-02-29 20:49:57','admin','::1',0),(350,'error','Error al descargar la lista de plugins.','2016-02-29 20:51:49','admin','::1',0),(351,'error','Error al descargar la lista de plugins.','2016-02-29 20:51:50','admin','::1',0),(352,'error','Error al descargar la lista de plugins.','2016-02-29 20:52:49','admin','::1',0),(353,'error','Error al descargar la lista de plugins.','2016-02-29 20:53:26','admin','::1',0),(354,'error','Error al descargar la lista de plugins.','2016-02-29 20:53:35','admin','::1',0),(355,'error','Error al descargar la lista de plugins.','2016-02-29 20:53:56','admin','::1',0),(356,'error','Error al descargar la lista de plugins.','2016-02-29 21:08:54','admin','::1',0),(357,'error','Error al descargar la lista de plugins.','2016-02-29 21:09:00','admin','::1',0),(358,'error','Error al descargar la lista de plugins.','2016-02-29 21:09:32','admin','::1',0),(359,'error','Error al descargar la lista de plugins.','2016-02-29 21:11:24','admin','::1',0),(360,'error','Error al descargar la lista de plugins.','2016-02-29 21:21:09','admin','::1',0),(361,'error','Error al descargar la lista de plugins.','2016-02-29 21:24:17','admin','::1',0),(362,'error','Error al descargar la lista de plugins.','2016-02-29 21:37:49','admin','::1',0),(363,'error','Error al descargar la lista de plugins.','2016-02-29 21:42:46','admin','::1',0),(364,'error','Error al descargar la lista de plugins.','2016-02-29 21:42:55','admin','::1',0),(365,'error','Error al descargar la lista de plugins.','2016-02-29 21:42:57','admin','::1',0),(366,'error','Error al descargar la lista de plugins.','2016-02-29 21:43:16','admin','::1',0),(367,'error','Error al descargar la lista de plugins.','2016-02-29 21:43:16','admin','::1',0),(368,'error','Error al descargar la lista de plugins.','2016-02-29 21:43:18','admin','::1',0),(369,'error','Error al descargar la lista de plugins.','2016-02-29 21:43:20','admin','::1',0),(370,'error','Error al descargar la lista de plugins.','2016-02-29 21:43:20','admin','::1',0),(371,'error','Error al descargar la lista de plugins.','2016-02-29 21:43:27','admin','::1',0),(372,'error','Error al descargar la lista de plugins.','2016-02-29 21:43:32','admin','::1',0),(373,'error','Error al descargar la lista de plugins.','2016-02-29 21:43:35','admin','::1',0),(374,'error','Empleado no encontrado.','2016-02-29 21:43:35','admin','::1',0),(375,'error','Artículo no encontrado.','2016-02-29 21:43:36','admin','::1',0),(376,'error','Faltan datos.','2016-02-29 21:43:36','admin','::1',0),(377,'error','¡remision de proveedor no encontrado!','2016-02-29 21:43:37','admin','::1',0),(378,'error','¡Factura de proveedor no encontrada!','2016-02-29 21:43:37','admin','::1',0),(379,'error','¡Proveedor no encontrado!','2016-02-29 21:43:38','admin','::1',0),(380,'error','Asiento no encontrado.','2016-02-29 21:43:38','admin','::1',0),(381,'error','Cuenta no encontrada.','2016-02-29 21:43:39','admin','::1',0),(382,'error','Ejercicio no encontrado.','2016-02-29 21:43:39','admin','::1',0),(383,'error','Subcuenta no encontrada.','2016-02-29 21:43:40','admin','::1',0),(384,'error','¡remision de cliente no encontrado!','2016-02-29 21:43:43','admin','::1',0),(385,'error','Artículo no encontrado.','2016-02-29 21:43:43','admin','::1',0),(386,'error','¡Cliente no encontrado!','2016-02-29 21:43:43','admin','::1',0),(387,'error','Fabricante no encontrado.','2016-02-29 21:43:44','admin','::1',0),(388,'error','¡Factura de cliente no encontrada!','2016-02-29 21:43:44','admin','::1',0),(389,'error','Familia no encontrada.','2016-02-29 21:43:45','admin','::1',0),(390,'error','Grupo no encontrado.','2016-02-29 21:43:45','admin','::1',0),(391,'error','Error al descargar la lista de plugins.','2016-02-29 21:43:53','admin','::1',0),(392,'error','Error al descargar la lista de plugins.','2016-02-29 21:43:53','admin','::1',0),(393,'error','Error al descargar la lista de plugins.','2016-02-29 21:52:53','admin','::1',0),(394,'error','Error al descargar la lista de plugins.','2016-02-29 22:25:31','admin','::1',0),(395,'error','Error al descargar la lista de plugins.','2016-02-29 22:25:35','admin','::1',0),(396,'error','¡País no encontrado!','2016-02-29 22:29:05','admin','::1',0),(397,'error','Error al descargar la lista de plugins.','2016-02-29 22:29:17','admin','::1',0),(398,'error','Error al descargar la lista de plugins.','2016-02-29 22:29:33','admin','::1',0),(399,'error','Error al descargar la lista de plugins.','2016-02-29 22:29:39','admin','::1',0),(400,'error','Empleado no encontrado.','2016-02-29 22:29:39','admin','::1',0),(401,'error','Artículo no encontrado.','2016-02-29 22:29:40','admin','::1',0),(402,'error','Faltan datos.','2016-02-29 22:29:41','admin','::1',0),(403,'error','¡remision de proveedor no encontrado!','2016-02-29 22:29:41','admin','::1',0),(404,'error','¡Factura de proveedor no encontrada!','2016-02-29 22:29:41','admin','::1',0),(405,'error','¡Proveedor no encontrado!','2016-02-29 22:29:42','admin','::1',0),(406,'error','Asiento no encontrado.','2016-02-29 22:29:42','admin','::1',0),(407,'error','Cuenta no encontrada.','2016-02-29 22:29:43','admin','::1',0),(408,'error','Ejercicio no encontrado.','2016-02-29 22:29:43','admin','::1',0),(409,'error','Subcuenta no encontrada.','2016-02-29 22:29:44','admin','::1',0),(410,'error','¡remision de cliente no encontrado!','2016-02-29 22:29:46','admin','::1',0),(411,'error','Artículo no encontrado.','2016-02-29 22:29:47','admin','::1',0),(412,'error','¡Cliente no encontrado!','2016-02-29 22:29:47','admin','::1',0),(413,'error','Fabricante no encontrado.','2016-02-29 22:29:47','admin','::1',0),(414,'error','¡Factura de cliente no encontrada!','2016-02-29 22:29:48','admin','::1',0),(415,'error','Familia no encontrada.','2016-02-29 22:29:48','admin','::1',0),(416,'error','Grupo no encontrado.','2016-02-29 22:29:48','admin','::1',0),(417,'error','Error al descargar la lista de plugins.','2016-02-29 22:29:49','admin','::1',0),(418,'error','Error al descargar la lista de plugins.','2016-02-29 22:29:57','admin','::1',0),(419,'error','Error al descargar la lista de plugins.','2016-02-29 22:39:08','admin','::1',0),(420,'error','Error al descargar la lista de plugins.','2016-02-29 22:39:22','admin','::1',0),(421,'error','Error al descargar la lista de plugins.','2016-02-29 22:39:22','admin','::1',0),(422,'error','Error al descargar la lista de plugins.','2016-02-29 22:47:32','admin','::1',0),(423,'error','Error al descargar la lista de plugins.','2016-02-29 22:48:37','admin','::1',0),(424,'error','Error al descargar la lista de plugins.','2016-02-29 22:57:55','admin','::1',0),(425,'error','Error al descargar la lista de plugins.','2016-02-29 23:01:41','admin','::1',0),(426,'error','Error al descargar la lista de plugins.','2016-02-29 23:01:41','admin','::1',0),(427,'error','Error al descargar la lista de plugins.','2016-02-29 23:13:08','admin','::1',0),(428,'error','Error al descargar la lista de plugins.','2016-02-29 23:13:08','admin','::1',0),(429,'error','Error al descargar la lista de plugins.','2016-03-01 03:44:56','admin','::1',0),(430,'error','Error al descargar la lista de plugins.','2016-03-01 03:46:32','admin','::1',0),(431,'error','Error al descargar la lista de plugins.','2016-03-01 03:46:32','admin','::1',0),(432,'error','Error al descargar la lista de plugins.','2016-03-01 03:53:06','admin','::1',0),(433,'error','Error al descargar la lista de plugins.','2016-03-01 03:56:04','admin','::1',0),(434,'error','Error al descargar la lista de plugins.','2016-03-01 03:56:26','admin','::1',0),(435,'error','Error al descargar la lista de plugins.','2016-03-01 04:00:35','admin','::1',0),(436,'error','Error al descargar la lista de plugins.','2016-03-01 04:00:37','admin','::1',0),(437,'error','¡Contraseña incorrecta!','2016-03-03 01:18:02',NULL,'127.0.0.1',0),(438,'error','¡Contraseña incorrecta!','2016-03-03 01:18:08',NULL,'127.0.0.1',0),(439,'error','¡Contraseña incorrecta!','2016-03-03 01:18:11',NULL,'127.0.0.1',0),(440,'error','¡Contraseña incorrecta!','2016-03-03 01:18:22',NULL,'127.0.0.1',0),(441,'error','¡Contraseña incorrecta!','2016-03-03 01:18:25',NULL,'127.0.0.1',0),(442,'login','Login correcto.','2016-03-03 01:18:32','admin','127.0.0.1',0),(443,'error','Las contraseñas no coinciden.','2016-03-04 00:03:32','admin','127.0.0.1',0),(444,'error','Las contraseñas no coinciden.','2016-03-04 00:04:40','admin','127.0.0.1',0),(445,'login','Login correcto.','2016-03-04 00:07:08','alberto','127.0.0.1',0),(446,'login','El usuario ha cerrado la sesión.','2016-03-04 00:14:07','admin','127.0.0.1',0),(447,'login','Login correcto.','2016-03-04 00:14:12','alberto','127.0.0.1',0),(448,'login','El usuario ha cerrado la sesión.','2016-03-04 04:16:52','alberto','127.0.0.1',0),(449,'login','Login correcto.','2016-03-04 04:16:55','alberto','127.0.0.1',0),(450,'login','El usuario ha cerrado la sesión.','2016-03-04 04:17:12','alberto','127.0.0.1',0),(451,'login','Login correcto.','2016-03-04 04:17:17','admin','127.0.0.1',0),(452,'error','¡Pedido de proveedor no encontrado!','2016-03-04 04:18:18','admin','127.0.0.1',0),(453,'error','¡Pedido de cliente no encontrado!','2016-03-04 04:18:20','admin','127.0.0.1',0),(454,'error','¡Presupuesto de cliente no encontrado!','2016-03-04 04:18:20','admin','127.0.0.1',0),(455,'login','El usuario ha cerrado la sesión.','2016-03-04 00:20:59','alberto','127.0.0.1',0),(456,'login','Login correcto.','2016-03-04 00:21:04','alberto','127.0.0.1',0),(457,'login','El usuario ha cerrado la sesión.','2016-03-04 00:43:07','admin','::1',0),(458,'login','El usuario ha cerrado la sesión.','2016-03-05 18:25:26','admin','127.0.0.1',0),(459,'login','Login correcto.','2016-03-05 18:34:01','admin','127.0.0.1',0),(460,'error','Empleado no encontrado.','2016-03-05 15:20:53','admin','127.0.0.1',0),(461,'error','Artículo no encontrado.','2016-03-05 15:20:54','admin','127.0.0.1',0),(462,'error','Faltan datos.','2016-03-05 15:20:54','admin','127.0.0.1',0),(463,'error','¡remision de proveedor no encontrado!','2016-03-05 15:20:54','admin','127.0.0.1',0),(464,'error','¡Factura de proveedor no encontrada!','2016-03-05 15:20:55','admin','127.0.0.1',0),(465,'error','¡Proveedor no encontrado!','2016-03-05 15:20:55','admin','127.0.0.1',0),(466,'error','Asiento no encontrado.','2016-03-05 15:20:55','admin','127.0.0.1',0),(467,'error','Cuenta no encontrada.','2016-03-05 15:20:56','admin','127.0.0.1',0),(468,'error','Ejercicio no encontrado.','2016-03-05 15:20:56','admin','127.0.0.1',0),(469,'error','Subcuenta no encontrada.','2016-03-05 15:20:57','admin','127.0.0.1',0),(470,'error','¡remision de cliente no encontrado!','2016-03-05 15:20:59','admin','127.0.0.1',0),(471,'error','Artículo no encontrado.','2016-03-05 15:21:00','admin','127.0.0.1',0),(472,'error','¡Cliente no encontrado!','2016-03-05 15:21:00','admin','127.0.0.1',0),(473,'error','Fabricante no encontrado.','2016-03-05 15:21:00','admin','127.0.0.1',0),(474,'error','¡Factura de cliente no encontrada!','2016-03-05 15:21:00','admin','127.0.0.1',0),(475,'error','Familia no encontrada.','2016-03-05 15:21:01','admin','127.0.0.1',0),(476,'error','Grupo no encontrado.','2016-03-05 15:21:01','admin','127.0.0.1',0),(477,'error','Empleado no encontrado.','2016-03-05 15:23:06','admin','127.0.0.1',0),(478,'error','Artículo no encontrado.','2016-03-05 15:23:07','admin','127.0.0.1',0),(479,'error','Faltan datos.','2016-03-05 15:23:07','admin','127.0.0.1',0),(480,'error','¡remision de proveedor no encontrado!','2016-03-05 15:23:08','admin','127.0.0.1',0),(481,'error','¡Factura de proveedor no encontrada!','2016-03-05 15:23:08','admin','127.0.0.1',0),(482,'error','¡Proveedor no encontrado!','2016-03-05 15:23:09','admin','127.0.0.1',0),(483,'error','Asiento no encontrado.','2016-03-05 15:23:09','admin','127.0.0.1',0),(484,'error','Cuenta no encontrada.','2016-03-05 15:23:10','admin','127.0.0.1',0),(485,'error','Ejercicio no encontrado.','2016-03-05 15:23:10','admin','127.0.0.1',0),(486,'error','Subcuenta no encontrada.','2016-03-05 15:23:11','admin','127.0.0.1',0),(487,'error','¡remision de cliente no encontrado!','2016-03-05 15:23:13','admin','127.0.0.1',0),(488,'error','Artículo no encontrado.','2016-03-05 15:23:13','admin','127.0.0.1',0),(489,'error','¡Cliente no encontrado!','2016-03-05 15:23:13','admin','127.0.0.1',0),(490,'error','Fabricante no encontrado.','2016-03-05 15:23:14','admin','127.0.0.1',0),(491,'error','¡Factura de cliente no encontrada!','2016-03-05 15:23:14','admin','127.0.0.1',0),(492,'error','Familia no encontrada.','2016-03-05 15:23:15','admin','127.0.0.1',0),(493,'error','Grupo no encontrado.','2016-03-05 15:23:15','admin','127.0.0.1',0),(494,'error','¡Contraseña incorrecta!','2016-03-05 18:16:43',NULL,'192.168.1.14',0),(495,'login','Login correcto.','2016-03-05 18:16:49','Alder','192.168.1.14',0),(496,'login','Login correcto.','2016-03-05 20:10:04','Alder','192.168.1.16',0),(497,'login','Login correcto.','2016-03-05 20:10:17','Alder','192.168.1.12',0),(498,'login','El usuario ha cerrado la sesión.','2016-03-05 20:10:30','Alder','192.168.1.16',0),(499,'login','Login correcto.','2016-03-05 20:10:47','admin','192.168.1.16',0),(500,'error','¡Contraseña incorrecta!','2016-03-12 19:48:56',NULL,'::1',0),(501,'login','Login correcto.','2016-03-12 19:49:30','admin','::1',0),(502,'login','Login correcto.','2016-03-12 20:13:41','admin','::1',0),(503,'login','El usuario ha cerrado la sesión.','2016-03-12 20:14:11','admin','::1',0),(504,'login','Login correcto.','2016-03-12 20:14:33','admin','::1',0),(505,'login','El usuario ha cerrado la sesión.','2016-03-12 20:15:23','admin','::1',0),(506,'login','El usuario ha cerrado la sesión.','2016-03-12 21:27:29','admin','127.0.0.1',0),(507,'login','Login correcto.','2016-03-12 21:32:42','test','127.0.0.1',0),(508,'login','El usuario ha cerrado la sesión.','2016-03-12 21:33:57','test','127.0.0.1',0),(509,'error','¡Contraseña incorrecta!','2016-03-12 21:34:00',NULL,'127.0.0.1',0),(510,'login','Login correcto.','2016-03-12 21:34:06','test','127.0.0.1',0),(511,'login','El usuario ha cerrado la sesión.','2016-03-12 23:49:50','test','127.0.0.1',0),(512,'error','¡Contraseña incorrecta!','2016-03-12 23:50:28',NULL,'127.0.0.1',0),(513,'error','¡Contraseña incorrecta!','2016-03-12 23:53:29',NULL,'127.0.0.1',0),(514,'login','Login correcto.','2016-03-12 23:53:34','test','127.0.0.1',0),(515,'login','El usuario ha cerrado la sesión.','2016-03-13 00:20:35','admin','::1',0),(516,'login','Login correcto.','2016-03-13 00:20:47','test','::1',0),(517,'login','El usuario ha cerrado la sesión.','2016-03-13 00:24:49','test','127.0.0.1',0),(518,'login','Login correcto.','2016-03-13 00:24:57','admin','127.0.0.1',0),(519,'error','Las contraseñas no coinciden.','2016-03-13 00:25:58','admin','127.0.0.1',0),(520,'error','Serie no encontrada.','2016-03-13 19:41:22','test','::1',0),(521,'error','¡Imposible guardar la serie!','2016-03-14 02:07:30','admin','127.0.0.1',0),(522,'error','No se ha podido conectar por email. ¿La contraseña es correcta?','2016-03-14 17:52:50','alberto','127.0.0.1',0),(523,'error','Aunque la contraseña de gmail sea correcta, en ciertas situaciones los servidores de gmail bloquean la conexión. Para superar esta situación debes crear y usar una <a href=\"https://support.google.com/accounts/answer/185833?hl=es\" target=\"_blank\">contraseña de aplicación</a>','2016-03-14 17:52:50','alberto','127.0.0.1',0),(524,'error','¡remision de proveedor no encontrado!','2016-03-14 18:09:30','test','::1',0),(525,'error','¡remision de proveedor no encontrado!','2016-03-14 18:09:36','test','::1',0),(526,'login','Login correcto.','2016-03-14 22:18:42','test','127.0.0.1',0),(527,'login','El usuario ha cerrado la sesión.','2016-03-14 22:19:08','test','127.0.0.1',0),(528,'login','Login correcto.','2016-03-14 22:19:14','admin','127.0.0.1',0),(529,'error','¡Pedido de proveedor no encontrado!','2016-03-14 22:19:52','admin','127.0.0.1',0),(530,'error','¡Pedido de cliente no encontrado!','2016-03-14 22:19:53','admin','127.0.0.1',0),(531,'error','¡Presupuesto de cliente no encontrado!','2016-03-14 22:19:53','admin','127.0.0.1',0),(532,'login','El usuario ha cerrado la sesión.','2016-03-14 18:23:54','test','::1',0),(533,'login','Login correcto.','2016-03-14 18:24:00','test','::1',0),(534,'login','El usuario ha cerrado la sesión.','2016-03-14 18:26:19','admin','127.0.0.1',0),(535,'error','¡Contraseña incorrecta!','2016-03-14 18:26:27',NULL,'127.0.0.1',0),(536,'login','Login correcto.','2016-03-14 18:26:31','admin','127.0.0.1',0),(537,'error','Las contraseñas no coinciden.','2016-03-14 18:27:46','admin','127.0.0.1',0),(538,'login','El usuario ha cerrado la sesión.','2016-03-14 18:28:04','test','::1',0),(539,'login','Login correcto.','2016-03-14 18:28:08','test','::1',0),(540,'login','El usuario ha cerrado la sesión.','2016-03-14 18:51:45','test','::1',0),(541,'login','Login correcto.','2016-03-14 18:52:58','test','::1',0),(542,'login','El usuario ha cerrado la sesión.','2016-03-14 18:53:09','test','::1',0),(543,'login','Login correcto.','2016-03-14 18:57:59','test','::1',0),(544,'login','El usuario ha cerrado la sesión.','2016-03-15 05:02:04','admin','127.0.0.1',0),(545,'login','Login correcto.','2016-03-15 05:02:15','admin','127.0.0.1',0),(546,'login','El usuario ha cerrado la sesión.','2016-03-15 01:04:17','admin','127.0.0.1',0),(547,'error','¡Contraseña incorrecta!','2016-03-15 01:04:24',NULL,'127.0.0.1',0),(548,'login','Login correcto.','2016-03-15 01:04:31','admin','127.0.0.1',0),(549,'login','El usuario ha cerrado la sesión.','2016-03-15 13:25:40','admin','127.0.0.1',0),(550,'login','El usuario ha cerrado la sesión.','2016-03-15 09:26:33','admin','127.0.0.1',0),(551,'login','Login correcto.','2016-03-15 09:26:44','test','127.0.0.1',0),(552,'login','El usuario ha cerrado la sesión.','2016-03-15 09:27:39','test','::1',0),(553,'error','¡Contraseña incorrecta!','2016-03-15 09:27:49',NULL,'::1',0),(554,'login','Login correcto.','2016-03-15 09:27:59','admin','::1',0),(555,'login','El usuario ha cerrado la sesión.','2016-03-15 09:28:39','admin','::1',0),(556,'login','Login correcto.','2016-03-15 22:20:58','test','::1',0),(557,'error','¡País no encontrado!','2016-03-15 22:22:47','alberto','127.0.0.1',0),(558,'login','El usuario ha cerrado la sesión.','2016-03-15 22:23:07','alberto','127.0.0.1',0),(559,'login','El usuario ha cerrado la sesión.','2016-03-15 23:13:37','test','::1',0),(560,'login','Login correcto.','2016-03-15 23:13:47','test','::1',0),(561,'login','El usuario ha cerrado la sesión.','2016-03-15 23:52:58','test','::1',0),(562,'login','Login correcto.','2016-03-15 23:53:09','admin','::1',0),(563,'login','El usuario ha cerrado la sesión.','2016-03-18 03:40:25','test','127.0.0.1',0),(564,'login','Login correcto.','2016-03-18 03:40:32','test','127.0.0.1',0),(565,'login','Login correcto.','2016-03-19 01:22:21','admin','127.0.0.1',0),(566,'login','El usuario ha cerrado la sesión.','2016-03-19 01:23:09','admin','127.0.0.1',0),(567,'login','El usuario ha cerrado la sesión.','2016-03-20 21:14:35','admin','::1',0),(568,'login','Login correcto.','2016-03-20 21:14:41','admin','::1',0),(569,'login','Login correcto.','2016-03-20 21:15:53','admin','::1',0),(570,'error','¡Pedido de proveedor no encontrado!','2016-03-21 02:01:22','admin','::1',0),(571,'error','¡Pedido de proveedor no encontrado!','2016-03-21 02:01:32','admin','::1',0),(572,'error','¡Pedido de proveedor no encontrado!','2016-03-21 02:02:10','admin','::1',0),(573,'error','¡Pedido de proveedor no encontrado!','2016-03-21 02:02:42','admin','::1',0),(574,'login','Login correcto.','2016-03-21 02:53:31','admin','::1',0),(575,'login','Login correcto.','2016-03-21 02:54:25','admin','::1',0),(576,'login','El usuario ha cerrado la sesión.','2016-03-21 02:54:47','admin','::1',0),(577,'login','Login correcto.','2016-03-21 02:54:51','admin','::1',0),(578,'login','El usuario ha cerrado la sesión.','2016-03-21 02:54:52','admin','::1',0),(579,'login','Login correcto.','2016-03-21 02:55:27','alberto','127.0.0.1',0),(580,'login','El usuario ha cerrado la sesión.','2016-03-22 21:07:56','admin','::1',0),(581,'login','El usuario ha cerrado la sesión.','2016-03-22 21:08:45','admin','::1',0),(582,'login','Login correcto.','2016-03-22 21:16:13','admin','::1',0),(583,'login','El usuario ha cerrado la sesión.','2016-03-22 21:16:22','admin','::1',0),(584,'login','Login correcto.','2016-03-22 21:16:29','test','::1',0),(585,'login','El usuario ha cerrado la sesión.','2016-03-22 22:58:41','test','::1',0),(586,'login','Login correcto.','2016-03-22 22:58:46','test','::1',0),(587,'login','El usuario ha cerrado la sesión.','2016-03-22 23:57:45','test','::1',0);
/*!40000 ALTER TABLE `fs_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs_pages`
--

DROP TABLE IF EXISTS `fs_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs_pages` (
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `title` varchar(40) COLLATE utf8_bin NOT NULL,
  `folder` varchar(15) COLLATE utf8_bin NOT NULL,
  `version` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `show_on_menu` tinyint(1) NOT NULL DEFAULT '1',
  `important` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs_pages`
--

LOCK TABLES `fs_pages` WRITE;
/*!40000 ALTER TABLE `fs_pages` DISABLE KEYS */;
INSERT INTO `fs_pages` VALUES ('admin_agente','Empleado','admin','2015.044',0,0),('admin_agentes','Empleados','admin','2015.044',1,0),('admin_almacenes','Almacenes','admin','2015.044',1,0),('admin_divisas','Divisas','admin','2015.044',1,0),('admin_empresa','Empresa','admin','2015.044',1,0),('admin_home','Panel de control','admin','2015.044',1,1),('admin_info','Información del sistema','admin','2015.044',1,0),('admin_paises','Paises','admin','2015.044',1,0),('admin_user','Usuario','admin','2015.044',0,0),('admin_users','Usuarios','admin','2015.044',1,0),('articulo_subcuentas','Subcuentas','ventas','2015.044',0,0),('base_wizard','Asistente de instalación','admin','2015.044',0,0),('compras_actualiza_arts','Artículos documento','compras','2015.044',0,0),('compras_agrupar_albaranes','Agrupar remisiones','compras','2015.044',0,0),('compras_albaran','remision de proveedor','compras','2015.044',0,0),('compras_albaranes','Remisiones de compra','compras','2015.044',1,1),('compras_factura','Factura de proveedor','compras','2015.044',0,0),('compras_facturas','Facturas de compra','compras','2015.044',1,0),('compras_imprimir','imprimir','compras','2015.044',0,0),('compras_pedido','Pedido','compras','2015.044',0,0),('compras_pedidos','Pedidos de compra','compras','2015.044',1,0),('compras_proveedor','Proveedor','compras','2015.044',0,0),('compras_proveedores','Proveedores / Acreedores','compras','2015.044',1,0),('contabilidad_asiento','Asiento','contabilidad','2015.044',0,0),('contabilidad_asientos','Asientos','contabilidad','2015.044',1,0),('contabilidad_cuenta','Cuenta','contabilidad','2015.044',0,0),('contabilidad_cuentas','Cuentas','contabilidad','2015.044',1,0),('contabilidad_ejercicio','Ejercicio','contabilidad','2015.044',0,0),('contabilidad_ejercicios','Ejercicios','contabilidad','2015.044',1,0),('contabilidad_epigrafes','Grupos y epígrafes','contabilidad','2015.044',1,0),('contabilidad_formas_pago','Formas de Pago','contabilidad','2015.044',1,0),('contabilidad_impuestos','Impuestos','contabilidad','2015.044',1,0),('contabilidad_nuevo_asiento','nuevo asiento','contabilidad','2015.044',0,0),('contabilidad_regusiva','Regularizaciones de IVA','contabilidad','2015.044',1,0),('contabilidad_series','Series','contabilidad','2015.044',1,0),('contabilidad_subcuenta','Subcuenta','contabilidad','2015.044',0,0),('cuentas_especiales','Cuentas Especiales','contabilidad','2015.044',0,0),('imprimir_presu_pedi','imprimir','ventas','2015.044',0,0),('informe_albaranes','Remisiones','informes','2015.044',1,0),('informe_articulos','Artículos','informes','2015.044',1,0),('informe_contabilidad','Contabilidad','informes','2015.044',1,0),('informe_errores','Errores','informes','2015.044',1,0),('informe_facturas','Facturas','informes','2015.044',1,0),('informe_pedidos','Pedidos','informes','2015.044',1,0),('informe_presupuestos','Presupuestos','informes','2015.044',1,0),('nueva_compra','nueva compra','compras','2015.044',0,0),('nueva_venta','nueva venta','ventas','2015.044',0,0),('productos','productos','productos','2015.044',1,0),('subcuenta_asociada','Asignar subcuenta...','contabilidad','2015.044',0,0),('tpv_caja','Cajas','TPV','2015.044',1,0),('tpv_recambios','TPV Genérico','TPV','2015.044',1,0),('ventas_agrupar_albaranes','Agrupar remisiones','ventas','2015.044',0,0),('ventas_albaran','remision de cliente','ventas','2015.044',0,0),('ventas_albaranes','Remisiones de cliente','ventas','2015.044',1,1),('ventas_articulo','Articulo','ventas','2015.044',0,0),('ventas_articulos','Artículos','ventas','2015.044',1,0),('ventas_cliente','Cliente','ventas','2015.044',0,0),('ventas_clientes','Clientes','ventas','2015.044',1,0),('ventas_clientes_opciones','Opciones','clientes','2015.044',0,0),('ventas_fabricante','Familia','ventas','2015.044',0,0),('ventas_fabricantes','Fabricantes','ventas','2015.044',0,0),('ventas_factura','Factura de cliente','ventas','2015.044',0,0),('ventas_facturas','Facturas de cliente','ventas','2015.044',1,0),('ventas_familia','Familia','ventas','2015.044',0,0),('ventas_familias','Familias','ventas','2015.044',0,0),('ventas_grupo','Grupo','ventas','2015.044',0,0),('ventas_imprimir','imprimir','ventas','2015.044',0,0),('ventas_pedido','Pedido','ventas','2015.044',0,0),('ventas_pedidos','Pedidos de cliente','ventas','2015.044',1,0),('ventas_presupuesto','Presupuesto','ventas','2015.044',0,0),('ventas_presupuestos','Presupuestos de cliente','ventas','2015.044',1,1);
/*!40000 ALTER TABLE `fs_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs_users`
--

DROP TABLE IF EXISTS `fs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs_users` (
  `nick` varchar(12) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `log_key` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `last_login` date DEFAULT NULL,
  `last_login_time` time DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `last_browser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fs_page` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `css` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`nick`),
  KEY `ca_fs_users_pages` (`fs_page`),
  CONSTRAINT `ca_fs_users_pages` FOREIGN KEY (`fs_page`) REFERENCES `fs_pages` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs_users`
--

LOCK TABLES `fs_users` WRITE;
/*!40000 ALTER TABLE `fs_users` DISABLE KEYS */;
INSERT INTO `fs_users` VALUES ('Alder','8cb2237d0679ca88db6464eac60da96345513964','6fed1723d85d1083b108dbeb124a011de6759396',1,'5','2016-03-05','17:10:17','192.168.1.12','Mozilla/5.0 (Linux; Android 4.1.2; GT-S5310L Build/JZO54K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.94 Mobile Safari/537.36',NULL,'view/css/bootstrap.min.css',''),('admin','ab0b22ab421c001462af4a9f382dc9284747b43d','ba72ec223cd6c95345feaab9797c723eafef281f',1,'4','2016-03-22','18:16:13','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/48.0.2564.82 Chrome/48.0.2564.82 Safari/537.36',NULL,'view/css/bootstrap.min.css',''),('alberto','ab0b22ab421c001462af4a9f382dc9284747b43d','62a2ad4b8be1c1c559972d0386c8256c55e94bb2',1,'2','2016-03-22','04:23:42','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:44.0) Gecko/20100101 Firefox/44.0',NULL,'view/css/bootstrap.min.css',''),('test','a94a8fe5ccb19ba61c4c0873d391e987982fbbd3','db666845be2361534197a57f50921b702a1f6dd9',0,'2','2016-03-22','19:58:46','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/48.0.2564.82 Chrome/48.0.2564.82 Safari/537.36',NULL,'view/css/bootstrap.min.css','');
/*!40000 ALTER TABLE `fs_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs_vars`
--

DROP TABLE IF EXISTS `fs_vars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs_vars` (
  `name` varchar(35) COLLATE utf8_bin NOT NULL,
  `varchar` text COLLATE utf8_bin,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs_vars`
--

LOCK TABLES `fs_vars` WRITE;
/*!40000 ALTER TABLE `fs_vars` DISABLE KEYS */;
INSERT INTO `fs_vars` VALUES ('install_step','5'),('last_download_check','2016-03-15'),('mail_enc','ssl'),('mail_host','smtp.gmail.com'),('mail_port','465'),('mail_user',''),('numeracion_personalizada','1'),('print_alb','0'),('print_dto','1'),('print_ref','1'),('updates','true');
/*!40000 ALTER TABLE `fs_vars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gruposclientes`
--

DROP TABLE IF EXISTS `gruposclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gruposclientes` (
  `codgrupo` varchar(6) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `codtarifa` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`codgrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gruposclientes`
--

LOCK TABLES `gruposclientes` WRITE;
/*!40000 ALTER TABLE `gruposclientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `gruposclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impuestos`
--

DROP TABLE IF EXISTS `impuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `impuestos` (
  `codimpuesto` varchar(10) COLLATE utf8_bin NOT NULL,
  `codsubcuentaacr` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentadeu` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivadedadue` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivadevadue` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivadeventue` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivarepexe` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivarepexp` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivarepre` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivasopagra` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivasopexe` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivasopimp` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentarep` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentasop` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `idsubcuentaacr` int(11) DEFAULT NULL,
  `idsubcuentadeu` int(11) DEFAULT NULL,
  `idsubcuentaivadedadue` int(11) DEFAULT NULL,
  `idsubcuentaivadevadue` int(11) DEFAULT NULL,
  `idsubcuentaivadeventue` int(11) DEFAULT NULL,
  `idsubcuentaivarepexe` int(11) DEFAULT NULL,
  `idsubcuentaivarepexp` int(11) DEFAULT NULL,
  `idsubcuentaivarepre` int(11) DEFAULT NULL,
  `idsubcuentaivasopagra` int(11) DEFAULT NULL,
  `idsubcuentaivasopexe` int(11) DEFAULT NULL,
  `idsubcuentaivasopimp` int(11) DEFAULT NULL,
  `idsubcuentarep` int(11) DEFAULT NULL,
  `idsubcuentasop` int(11) DEFAULT NULL,
  `iva` double NOT NULL,
  `recargo` double NOT NULL,
  PRIMARY KEY (`codimpuesto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impuestos`
--

LOCK TABLES `impuestos` WRITE;
/*!40000 ALTER TABLE `impuestos` DISABLE KEYS */;
INSERT INTO `impuestos` VALUES ('IVA0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IVA 0%',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('IVA10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IVA 10%',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1.4),('IVA21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IVA 21%',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,21,5.2),('IVA4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IVA 4%',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,0.5);
/*!40000 ALTER TABLE `impuestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineasalbaranescli`
--

DROP TABLE IF EXISTS `lineasalbaranescli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineasalbaranescli` (
  `cantidad` double NOT NULL DEFAULT '0',
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` text COLLATE utf8_bin,
  `dtolineal` double DEFAULT '0',
  `dtopor` double NOT NULL DEFAULT '0',
  `idalbaran` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL AUTO_INCREMENT,
  `idlineapedido` int(11) DEFAULT NULL,
  `idpedido` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `iva` double NOT NULL DEFAULT '0',
  `porcomision` double DEFAULT NULL,
  `pvpsindto` double NOT NULL DEFAULT '0',
  `pvptotal` double NOT NULL DEFAULT '0',
  `pvpunitario` double NOT NULL DEFAULT '0',
  `recargo` double DEFAULT '0',
  `referencia` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idlinea`),
  KEY `ca_lineasalbaranescli_albaranescli2` (`idalbaran`),
  CONSTRAINT `ca_lineasalbaranescli_albaranescli2` FOREIGN KEY (`idalbaran`) REFERENCES `albaranescli` (`idalbaran`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineasalbaranescli`
--

LOCK TABLES `lineasalbaranescli` WRITE;
/*!40000 ALTER TABLE `lineasalbaranescli` DISABLE KEYS */;
INSERT INTO `lineasalbaranescli` VALUES (3,'IVA0','Detergente Neutro 30 %',0,0,1,1,NULL,NULL,0,0,NULL,9672,9672,3224,0,'DETER-3001');
/*!40000 ALTER TABLE `lineasalbaranescli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineasalbaranesprov`
--

DROP TABLE IF EXISTS `lineasalbaranesprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineasalbaranesprov` (
  `cantidad` double NOT NULL DEFAULT '0',
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` text COLLATE utf8_bin,
  `dtolineal` double DEFAULT '0',
  `dtopor` double NOT NULL DEFAULT '0',
  `idalbaran` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL AUTO_INCREMENT,
  `idlineapedido` int(11) DEFAULT NULL,
  `idpedido` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `iva` double NOT NULL DEFAULT '0',
  `pvpsindto` double NOT NULL DEFAULT '0',
  `pvptotal` double NOT NULL DEFAULT '0',
  `pvpunitario` double NOT NULL DEFAULT '0',
  `recargo` double DEFAULT '0',
  `referencia` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idlinea`),
  KEY `ca_lineasalbaranesprov_albaranesprov2` (`idalbaran`),
  CONSTRAINT `ca_lineasalbaranesprov_albaranesprov2` FOREIGN KEY (`idalbaran`) REFERENCES `albaranesprov` (`idalbaran`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineasalbaranesprov`
--

LOCK TABLES `lineasalbaranesprov` WRITE;
/*!40000 ALTER TABLE `lineasalbaranesprov` DISABLE KEYS */;
INSERT INTO `lineasalbaranesprov` VALUES (10,'IVA10','Bidon de 5Lts',0,0,1,1,NULL,NULL,0,10,29000,29000,2900,0,'Bidon 5L'),(1,'IVA10','Bidon de 5Lts',0,0,2,2,NULL,NULL,0,10,2900,2900,2900,0,'BIDON-5L-001'),(5,'IVA10','Bidon de 5Lts',0,0,3,3,1,1,0,10,14500,14500,2900,0,'BIDON-5L-001'),(1,'IVA10','colorante químico',0,0,4,4,NULL,NULL,0,10,201000,201000,201000,0,'COLOR-ROJO');
/*!40000 ALTER TABLE `lineasalbaranesprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineasfacturascli`
--

DROP TABLE IF EXISTS `lineasfacturascli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineasfacturascli` (
  `cantidad` double NOT NULL,
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` text COLLATE utf8_bin,
  `dtolineal` double DEFAULT '0',
  `dtopor` double NOT NULL,
  `idalbaran` int(11) DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL AUTO_INCREMENT,
  `irpf` double DEFAULT NULL,
  `iva` double NOT NULL,
  `porcomision` double DEFAULT NULL,
  `pvpsindto` double NOT NULL,
  `pvptotal` double NOT NULL,
  `pvpunitario` double NOT NULL,
  `recargo` double DEFAULT NULL,
  `referencia` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idlinea`),
  KEY `ca_linea_facturascli2` (`idfactura`),
  CONSTRAINT `ca_linea_facturascli2` FOREIGN KEY (`idfactura`) REFERENCES `facturascli` (`idfactura`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineasfacturascli`
--

LOCK TABLES `lineasfacturascli` WRITE;
/*!40000 ALTER TABLE `lineasfacturascli` DISABLE KEYS */;
INSERT INTO `lineasfacturascli` VALUES (4,'IVA10','Detergente Neutro 30 %',0,0,NULL,1,1,0,10,NULL,12896,12896,3224,0,'DETER-3001'),(3,'IVA10','Jabon Liquido para Ropa',0,0,NULL,1,2,0,10,NULL,6666,6666,2222,0,'DETER-0003'),(3,'IVA10','Detergente Neutro sin tensan',0,0,NULL,1,3,0,10,NULL,2592,2592,864,0,'DETER-0020'),(4,'IVA10','Detergente Neutro',0,0,NULL,2,4,0,10,NULL,3456,3456,864,0,'DETER-0003'),(3,'IVA10','Jabon Liquido para Ropa',0,0,NULL,2,5,0,10,NULL,6666,6666,2222,0,'DETER-0003'),(3,'IVA10','Detergente Neutro',0,0,NULL,3,6,0,10,NULL,2592,2592,864,0,'DETER-0003'),(1,'IVA10','Jabon Liquido para Ropa',0,0,NULL,3,7,0,10,NULL,2222,2222,2222,0,'DETER-0003'),(2,'IVA10','Detergente Neutro 30 %',0,0,NULL,4,8,0,10,NULL,6448,6448,3224,0,'DETER-3001'),(1,'IVA10','Detergente Neutro sin tensan al 30%',0,0,NULL,5,9,0,10,NULL,2929,2929,2929,0,'DETER-0002'),(1,'IVA10','Jabon Liquido para Ropa',0,0,NULL,5,10,0,10,NULL,2222,2222,2222,0,'DETER-0003'),(2,'IVA10','Detergente Neutro 30 %',0,0,NULL,6,11,0,10,NULL,6448,6448,3224,0,'DETER-3001'),(1,'IVA10','Detergente Neutro sin tensan al 30%',0,0,NULL,6,12,0,10,NULL,2929,2929,2929,0,'DETER-0002'),(8,'IVA10','Jabon Liquido Mano',0,0,NULL,7,13,0,10,NULL,6216,6216,777,0,'JABON-LIQM'),(1,'IVA10','Jabon Liquido para Ropa',0,0,NULL,7,14,0,10,NULL,2222,2222,2222,0,'DETER-0003'),(2,'IVA10','Detergente Neutro 30 %',0,0,NULL,8,15,0,10,NULL,6448,6448,3224,0,'DETER-3001'),(2,'IVA10','Jabon Liquido para Ropa',0,0,NULL,8,16,0,10,NULL,4444,4444,2222,0,'DETER-0003'),(3,'IVA10','Detergente Neutro 30 %',0,0,NULL,9,17,0,10,NULL,9672,9672,3224,0,'DETER-3001'),(1,'IVA10','Detergente Neutro 30 %',0,0,NULL,10,18,0,10,NULL,3224,3224,3224,0,'DETER-3001'),(1,'IVA10','Jabon Liquido para Ropa',0,0,NULL,10,19,0,10,NULL,2222,2222,2222,0,'DETER-0003'),(1,'IVA10','Detergente Neutro 30 %',0,0,NULL,11,20,0,10,NULL,3224,3224,3224,0,'DETER-3001'),(1,'IVA10','Jabon Liquido Mano',0,0,NULL,11,21,0,10,NULL,777,777,777,0,'JABON-LIQM');
/*!40000 ALTER TABLE `lineasfacturascli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineasfacturasprov`
--

DROP TABLE IF EXISTS `lineasfacturasprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineasfacturasprov` (
  `cantidad` double NOT NULL,
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` text COLLATE utf8_bin,
  `dtolineal` double DEFAULT '0',
  `dtopor` double NOT NULL,
  `idalbaran` int(11) DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL AUTO_INCREMENT,
  `idsubcuenta` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `iva` double NOT NULL,
  `pvpsindto` double NOT NULL,
  `pvptotal` double DEFAULT NULL,
  `pvpunitario` double NOT NULL,
  `recargo` double DEFAULT NULL,
  `referencia` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idlinea`),
  KEY `ca_linea_facturasprov2` (`idfactura`),
  CONSTRAINT `ca_linea_facturasprov2` FOREIGN KEY (`idfactura`) REFERENCES `facturasprov` (`idfactura`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineasfacturasprov`
--

LOCK TABLES `lineasfacturasprov` WRITE;
/*!40000 ALTER TABLE `lineasfacturasprov` DISABLE KEYS */;
INSERT INTO `lineasfacturasprov` VALUES (5,'IVA10',NULL,'Trietanolamina TEA 85',0,0,NULL,1,1,NULL,0,10,73880,73880,14776,0,'TRIETANOLAMI-TEA85'),(1,'IVA10',NULL,'Bidon de 5Lts',0,0,NULL,1,2,NULL,0,10,2900,2900,2900,0,'Bidon 5L'),(1,'IVA10',NULL,'',0,0,NULL,2,3,NULL,0,10,16,16,16,0,''),(1,'IVA10',NULL,'',0,0,NULL,2,4,NULL,0,10,5,5,5,0,'CARBUR-0014'),(5,'IVA10',NULL,'',0,0,NULL,3,5,NULL,0,10,80,80,16,0,''),(3,'IVA10',NULL,'',0,0,NULL,3,6,NULL,0,10,15,15,5,0,'CARBUR-0014'),(1,'IVA10',NULL,'colorante químico rojo',0,0,NULL,4,7,NULL,0,10,201000,201000,201000,0,'COLOR-ROJO'),(6,'IVA10',NULL,'Anilina en polvo',0,0,NULL,5,8,NULL,0,10,30000,30000,5000,0,'ANILINA-0001'),(1,'IVA10',NULL,'Colorante Fluoreceina Kg.',0,0,NULL,6,9,NULL,0,10,220000,220000,220000,0,'COLOR-FLUOR'),(1,'IVA10',NULL,'Ácido-sulfonico',0,0,NULL,7,10,NULL,0,10,12150,12150,12150,0,'ACI-SULF'),(3,'IVA10',NULL,'Enturbiante',0,0,NULL,8,11,NULL,0,10,28050,28050,9350,0,'Enturbiante-001'),(10,'IVA10',NULL,'Bidon de 5Lts',0,0,1,9,12,NULL,0,10,29000,29000,2900,0,'Bidon 5L'),(1,'IVA10',NULL,'Carburante',0,0,NULL,10,13,NULL,0,10,5000,5000,5000,0,'CARBUR-0014'),(1,'IVA10',NULL,'Base suave color 1',0,0,NULL,11,14,NULL,0,10,24000,24000,24000,0,'BASE-SUAVE'),(5,'IVA10',NULL,'Bidon de 5Lts',0,0,3,12,15,NULL,0,10,14500,14500,2900,0,'BIDON-5L-001');
/*!40000 ALTER TABLE `lineasfacturasprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineasivafactcli`
--

DROP TABLE IF EXISTS `lineasivafactcli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineasivafactcli` (
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL AUTO_INCREMENT,
  `iva` double NOT NULL DEFAULT '0',
  `neto` double NOT NULL DEFAULT '0',
  `recargo` double NOT NULL DEFAULT '0',
  `totaliva` double NOT NULL DEFAULT '0',
  `totallinea` double NOT NULL DEFAULT '0',
  `totalrecargo` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`idlinea`),
  KEY `ca_lineaiva_facturascli2` (`idfactura`),
  CONSTRAINT `ca_lineaiva_facturascli2` FOREIGN KEY (`idfactura`) REFERENCES `facturascli` (`idfactura`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineasivafactcli`
--

LOCK TABLES `lineasivafactcli` WRITE;
/*!40000 ALTER TABLE `lineasivafactcli` DISABLE KEYS */;
INSERT INTO `lineasivafactcli` VALUES ('IVA10',5,1,10,5151,0,515,5666,0),('IVA10',6,2,10,9377,0,938,10315,0),('IVA10',7,3,10,8438,0,844,9282,0),('IVA10',8,4,10,10892,0,1089,11981,0),('IVA10',9,5,10,9672,0,967,10639,0),('IVA10',10,6,10,5446,0,545,5991,0),('IVA10',11,7,10,4001,0,400,4401,0);
/*!40000 ALTER TABLE `lineasivafactcli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineasivafactprov`
--

DROP TABLE IF EXISTS `lineasivafactprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineasivafactprov` (
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL AUTO_INCREMENT,
  `iva` double NOT NULL DEFAULT '0',
  `neto` double NOT NULL DEFAULT '0',
  `recargo` double NOT NULL DEFAULT '0',
  `totaliva` double NOT NULL DEFAULT '0',
  `totallinea` double NOT NULL DEFAULT '0',
  `totalrecargo` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`idlinea`),
  KEY `ca_lineaiva_facturasprov2` (`idfactura`),
  CONSTRAINT `ca_lineaiva_facturasprov2` FOREIGN KEY (`idfactura`) REFERENCES `facturasprov` (`idfactura`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineasivafactprov`
--

LOCK TABLES `lineasivafactprov` WRITE;
/*!40000 ALTER TABLE `lineasivafactprov` DISABLE KEYS */;
INSERT INTO `lineasivafactprov` VALUES ('IVA10',1,1,10,76780,0,7678,84458,0),('IVA10',2,2,10,21,0,2,23,0),('IVA10',3,3,10,95,0,10,105,0),('IVA10',4,4,10,201000,0,20100,221100,0),('IVA10',5,5,10,30000,0,3000,33000,0),('IVA10',6,6,10,220000,0,22000,242000,0),('IVA10',7,7,10,12150,0,1215,13365,0),('IVA10',9,8,10,29000,0,2900,31900,0),('IVA10',8,9,10,28050,0,2805,30855,0),('IVA10',10,10,10,5000,0,500,5500,0),('IVA10',11,11,10,24000,0,2400,26400,0),('IVA10',12,12,10,14500,0,1450,15950,0);
/*!40000 ALTER TABLE `lineasivafactprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineaspedidosprov`
--

DROP TABLE IF EXISTS `lineaspedidosprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineaspedidosprov` (
  `pvptotal` double NOT NULL,
  `cantidad` double NOT NULL,
  `irpf` double DEFAULT NULL,
  `recargo` double DEFAULT NULL,
  `dtolineal` double DEFAULT NULL,
  `descripcion` text COLLATE utf8_bin,
  `idlinea` int(11) NOT NULL AUTO_INCREMENT,
  `idpedido` int(11) NOT NULL,
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cerrada` tinyint(1) DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `dtopor` double NOT NULL,
  `pvpsindto` double NOT NULL,
  `pvpunitario` double NOT NULL,
  `referencia` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `totalenalbaran` double DEFAULT NULL,
  PRIMARY KEY (`idlinea`),
  KEY `ca_lineaspedidosprov_pedidosprov` (`idpedido`),
  CONSTRAINT `ca_lineaspedidosprov_pedidosprov` FOREIGN KEY (`idpedido`) REFERENCES `pedidosprov` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineaspedidosprov`
--

LOCK TABLES `lineaspedidosprov` WRITE;
/*!40000 ALTER TABLE `lineaspedidosprov` DISABLE KEYS */;
INSERT INTO `lineaspedidosprov` VALUES (14500,5,0,0,NULL,'Bidon de 5Lts',1,1,'IVA10',NULL,10,0,14500,2900,'Bidon_5L',NULL),(17400,6,0,0,NULL,'Bidon de 5Lts',2,2,'IVA10',NULL,10,0,17400,2900,'BIDON-5L-001',NULL);
/*!40000 ALTER TABLE `lineaspedidosprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineasregstocks`
--

DROP TABLE IF EXISTS `lineasregstocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineasregstocks` (
  `cantidadfin` double NOT NULL DEFAULT '0',
  `cantidadini` double NOT NULL DEFAULT '0',
  `codalmacendest` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idstock` int(11) NOT NULL,
  `motivo` text COLLATE utf8_bin,
  `nick` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ca_lineasregstocks_stocks` (`idstock`),
  CONSTRAINT `ca_lineasregstocks_stocks` FOREIGN KEY (`idstock`) REFERENCES `stocks` (`idstock`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineasregstocks`
--

LOCK TABLES `lineasregstocks` WRITE;
/*!40000 ALTER TABLE `lineasregstocks` DISABLE KEYS */;
INSERT INTO `lineasregstocks` VALUES (75,0,'ALG','2015-12-11','16:35:02',1,1,'','admin'),(100,0,'ALG','2015-12-11','16:37:32',2,2,'','admin'),(100,0,'ALG','2015-12-11','17:01:49',3,3,'','admin'),(300,0,'ALG','2015-12-11','17:02:57',4,4,'','admin'),(200,0,'ALG','2015-12-11','17:07:05',5,5,'','admin'),(50,0,'ALG','2015-12-11','17:10:26',6,6,'','admin');
/*!40000 ALTER TABLE `lineasregstocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paises` (
  `validarprov` tinyint(1) DEFAULT NULL,
  `codiso` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `bandera` text COLLATE utf8_bin,
  `nombre` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codpais` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`codpais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (NULL,'AR',NULL,'Argentina','ARG'),(NULL,'BO',NULL,'Bolivia','BOL'),(NULL,'BR',NULL,'Brasil','BRA'),(NULL,'CL',NULL,'Chile','CHL'),(NULL,'PY',NULL,'Paraguay','PRY');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidoscli`
--

DROP TABLE IF EXISTS `pedidoscli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidoscli` (
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cifnif` varchar(12) COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddir` int(11) DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `codpago` varchar(10) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `editable` tinyint(1) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time DEFAULT '00:00:00',
  `fechasalida` date DEFAULT NULL,
  `idpedido` int(11) NOT NULL AUTO_INCREMENT,
  `idalbaran` int(11) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `irpf` double NOT NULL,
  `neto` double NOT NULL,
  `nombrecliente` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `numero` varchar(12) COLLATE utf8_bin NOT NULL,
  `numero2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `porcomision` double DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `recfinanciero` double DEFAULT NULL,
  `servido` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `tasaconv` double NOT NULL,
  `total` double NOT NULL,
  `totaleuros` double NOT NULL,
  `totalirpf` double NOT NULL,
  `totaliva` double NOT NULL,
  `totalrecargo` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpedido`),
  UNIQUE KEY `uniq_codigo_pedidoscli` (`codigo`),
  KEY `ca_pedidoscli_series` (`codserie`),
  KEY `ca_pedidoscli_ejercicios` (`codejercicio`),
  CONSTRAINT `ca_pedidoscli_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  CONSTRAINT `ca_pedidoscli_series` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidoscli`
--

LOCK TABLES `pedidoscli` WRITE;
/*!40000 ALTER TABLE `pedidoscli` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidoscli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidosprov`
--

DROP TABLE IF EXISTS `pedidosprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidosprov` (
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `totaleuros` double NOT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `tasaconv` double NOT NULL,
  `total` double NOT NULL,
  `irpf` double DEFAULT NULL,
  `idpedido` int(11) NOT NULL AUTO_INCREMENT,
  `idalbaran` int(11) DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `servido` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `editable` tinyint(1) NOT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `numproveedor` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `cifnif` varchar(20) COLLATE utf8_bin NOT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `fechaentrada` date DEFAULT NULL,
  `totalrecargo` double DEFAULT NULL,
  `recfinanciero` double DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time DEFAULT '00:00:00',
  `neto` double NOT NULL,
  `totalirpf` double DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `totaliva` double NOT NULL,
  `numero` varchar(12) COLLATE utf8_bin NOT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idpedido`),
  UNIQUE KEY `uniq_codigo_pedidosprov` (`codigo`),
  KEY `ca_pedidosprov_series` (`codserie`),
  KEY `ca_pedidosprov_ejercicios` (`codejercicio`),
  CONSTRAINT `ca_pedidosprov_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  CONSTRAINT `ca_pedidosprov_series` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidosprov`
--

LOCK TABLES `pedidosprov` WRITE;
/*!40000 ALTER TABLE `pedidosprov` DISABLE KEYS */;
INSERT INTO `pedidosprov` VALUES ('PED2016A1C',15950,'2','CONT','2016',1,15950,0,1,3,'',NULL,0,'ALG','','80022458-2','000001',NULL,0,NULL,'Proquitec S.A.','2016-03-14','22:19:20',14500,0,'A',1450,'1','PRY'),('PED2016A2C',19140,'4','CONT','2016',1,19140,0,2,NULL,'',NULL,1,'ALG','','80022458-2','000001',NULL,0,NULL,'PROQUITEC S.A.','2016-03-18','21:39:12',17400,0,'A',1740,'2','PRY');
/*!40000 ALTER TABLE `pedidosprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presupuestoscli`
--

DROP TABLE IF EXISTS `presupuestoscli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presupuestoscli` (
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cifnif` varchar(12) COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddir` int(11) DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `codoportunidad` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `editable` tinyint(1) NOT NULL,
  `estado` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time DEFAULT '00:00:00',
  `finoferta` date DEFAULT NULL,
  `fechasalida` date DEFAULT NULL,
  `idpresupuesto` int(11) NOT NULL AUTO_INCREMENT,
  `idpedido` int(11) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `irpf` double NOT NULL,
  `neto` double NOT NULL,
  `nombrecliente` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `numero` varchar(12) COLLATE utf8_bin NOT NULL,
  `numero2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `porcomision` double DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `recfinanciero` double DEFAULT NULL,
  `tasaconv` double NOT NULL,
  `total` double NOT NULL,
  `totaleuros` double NOT NULL,
  `totalirpf` double NOT NULL,
  `totaliva` double NOT NULL,
  `totalrecargo` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpresupuesto`),
  UNIQUE KEY `uniq_codigo_presupuestoscli` (`codigo`),
  KEY `ca_presupuestoscli_series` (`codserie`),
  KEY `ca_presupuestoscli_ejercicios` (`codejercicio`),
  CONSTRAINT `ca_presupuestoscli_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  CONSTRAINT `ca_presupuestoscli_series` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presupuestoscli`
--

LOCK TABLES `presupuestoscli` WRITE;
/*!40000 ALTER TABLE `presupuestoscli` DISABLE KEYS */;
/*!40000 ALTER TABLE `presupuestoscli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `cifnif` varchar(20) COLLATE utf8_bin NOT NULL,
  `codcontacto` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codcuentadom` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codcuentapago` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin NOT NULL,
  `codserie` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `contacto` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `idsubcuenta` int(11) DEFAULT NULL,
  `ivaportes` double DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `razonsocial` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `recfinanciero` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `regimeniva` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `telefono1` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `telefono2` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `tipoidfiscal` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT 'NIF',
  `web` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `acreedor` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`codproveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES ('80022458-2',NULL,NULL,NULL,'PRY','CONT','000001',NULL,NULL,NULL,'albertoariel07@gmail.com','',NULL,NULL,'PROQUITEC S.A.','PROQUITEC S.A.','',NULL,'General','','','NIF','',0),('1175106-1',NULL,NULL,NULL,'USD','CONT','000002',NULL,NULL,NULL,'cedu@itacom.com.py','',NULL,NULL,'CASA EDUARDO','CASA EDUARDO','',NULL,'General','071-203 972','','NIF','',0),('88888833-1',NULL,NULL,NULL,'USD','CONT','000003',NULL,NULL,NULL,'','',NULL,NULL,'QUIMANFLA','QUIMANFLA','',NULL,'General','','','NIF','',0),('555555-3',NULL,NULL,NULL,'PRY','CONT','000004',NULL,NULL,NULL,'','',NULL,NULL,'QUIMICOS S.A','QUIMICOS S.A','',NULL,'General','','','NIF','',0),('555555-8',NULL,NULL,NULL,'PRY','CONT','000005',NULL,NULL,NULL,'aad.dfsd@gmail.com','',NULL,NULL,'COLORANTES SA','COLORANTES SA','',NULL,'General','','','NIF','prueba.com.py',0),('4173100-1',NULL,NULL,NULL,'PRY','CONT','000006',NULL,NULL,NULL,'','',NULL,NULL,'QUIMICOS SAECA','QUIMICOS SAECA','',NULL,'General','','','NIF','',0),('45445545',NULL,NULL,NULL,'PRY','CONT','000007','A',NULL,NULL,'','',NULL,NULL,'DADDFA','DADDFA','',NULL,'General','','','NIF','',1),('456789',NULL,NULL,NULL,'PRY','CONT','000008',NULL,NULL,NULL,'','',NULL,NULL,'RIMOFA','RIMOFA','',NULL,'General','','','NIF','',0),('4561335568',NULL,NULL,NULL,'PRY','CONT','000009',NULL,NULL,NULL,'','',NULL,NULL,'PINTULATEX','PINTULATEX','',NULL,'General','','','NIF','',0),('333666688',NULL,NULL,NULL,'PRY','CONT','000010',NULL,NULL,NULL,'','',NULL,NULL,'ANDE','ANDE','',NULL,'General','','','NIF','',1),('7896354689',NULL,NULL,NULL,'PRY','CONT','000011','A',NULL,NULL,'','',NULL,NULL,'ESAP','ESAP','',NULL,'General','','','NIF','',0),('AAAAAAA',NULL,NULL,NULL,'PRY','CONT','000012','A',NULL,NULL,'','',NULL,NULL,'EEEE','EEEE','',NULL,'General','','','NIF','',0);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secuencias`
--

DROP TABLE IF EXISTS `secuencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secuencias` (
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `id` int(11) NOT NULL,
  `idsec` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `valor` int(11) DEFAULT NULL,
  `valorout` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsec`),
  KEY `ca_secuencias_secuenciasejercicios` (`id`),
  CONSTRAINT `ca_secuencias_secuenciasejercicios` FOREIGN KEY (`id`) REFERENCES `secuenciasejercicios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secuencias`
--

LOCK TABLES `secuencias` WRITE;
/*!40000 ALTER TABLE `secuencias` DISABLE KEYS */;
INSERT INTO `secuencias` VALUES ('Secuencia del ejercicio 2015 y la serie A',1,1,'nfacturacli',1,5),('Secuencia del ejercicio 2016 y la serie A',2,2,'nfacturacli',1,8),('Secuencia del ejercicio 2016 y la serie A',2,3,'nalbarancli',1,2),('Secuencia del ejercicio 2016 y la serie A',2,4,'nfacturaprov',1,12),('Secuencia del ejercicio 2016 y la serie B',3,5,'nfacturaprov',1,2),('Secuencia del ejercicio 2016 y la serie A',2,6,'nalbaranprov',1,4),('Secuencia del ejercicio 2016 y la serie B',3,7,'nalbaranprov',1,2),('Secuencia del ejercicio 2016 y la serie A',2,8,'npedidoprov',1,3);
/*!40000 ALTER TABLE `secuencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secuenciasejercicios`
--

DROP TABLE IF EXISTS `secuenciasejercicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secuenciasejercicios` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nalbarancli` int(11) NOT NULL,
  `nalbaranprov` int(11) NOT NULL,
  `nfacturacli` int(11) NOT NULL,
  `nfacturaprov` int(11) NOT NULL,
  `npedidocli` int(11) NOT NULL,
  `npedidoprov` int(11) NOT NULL,
  `npresupuestocli` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ca_secuenciasejercicios_ejercicios` (`codejercicio`),
  CONSTRAINT `ca_secuenciasejercicios_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secuenciasejercicios`
--

LOCK TABLES `secuenciasejercicios` WRITE;
/*!40000 ALTER TABLE `secuenciasejercicios` DISABLE KEYS */;
INSERT INTO `secuenciasejercicios` VALUES ('2015','A',1,1,1,1,1,1,1,1),('2016','A',2,1,1,1,1,1,1,1),('2016','B',3,1,1,1,1,1,1,1),('2016','S',4,1,1,1,1,1,1,1),('2015','B',5,1,1,1,1,1,1,1),('2015','S',6,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `secuenciasejercicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `series` (
  `irpf` double DEFAULT NULL,
  `idcuenta` int(11) DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `siniva` tinyint(1) DEFAULT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `numfactura` int(11) DEFAULT '1',
  PRIMARY KEY (`codserie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (0,NULL,'A','SERIE A',0,NULL,NULL,1),(0,NULL,'B','SERIE B',0,NULL,'2016',1),(0,NULL,'S','SIN IVA',1,NULL,'2016',1);
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stocks` (
  `referencia` varchar(18) COLLATE utf8_bin NOT NULL,
  `disponible` double NOT NULL,
  `stockmin` double NOT NULL DEFAULT '0',
  `reservada` double NOT NULL,
  `horaultreg` time DEFAULT '00:00:00',
  `nombre` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `pterecibir` double NOT NULL,
  `fechaultreg` date DEFAULT '0000-00-00',
  `codalmacen` varchar(4) COLLATE utf8_bin NOT NULL,
  `cantidadultreg` double NOT NULL DEFAULT '0',
  `idstock` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` double NOT NULL DEFAULT '0',
  `stockmax` double NOT NULL DEFAULT '0',
  `ubicacion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idstock`),
  UNIQUE KEY `uniq_stocks_almacen_referencia` (`codalmacen`,`referencia`),
  KEY `ca_stocks_articulos2` (`referencia`),
  CONSTRAINT `ca_stocks_almacenes3` FOREIGN KEY (`codalmacen`) REFERENCES `almacenes` (`codalmacen`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ca_stocks_articulos2` FOREIGN KEY (`referencia`) REFERENCES `articulos` (`referencia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` VALUES ('DETER-3001',57,0,0,'00:00:00','',0,'0000-00-00','ALG',0,1,57,0,''),('DETER-0003',93,0,0,'00:00:00','',0,'0000-00-00','ALG',0,2,93,0,''),('DETER-0002',98,0,0,'00:00:00','',0,'0000-00-00','ALG',0,3,98,0,''),('DETER-0020',297,0,0,'00:00:00','',0,'0000-00-00','ALG',0,4,297,0,''),('JABON-LIQR',188,0,0,'00:00:00','',0,'0000-00-00','ALG',0,5,188,0,''),('JABON-LIQM',41,0,0,'00:00:00','',0,'0000-00-00','ALG',0,6,41,0,''),('TRIETANOLAMI-TEA85',5,0,0,'00:00:00','',0,'0000-00-00','ALG',0,7,5,0,NULL),('BIDON-5L-001',17,0,0,'00:00:00','',0,'0000-00-00','ALG',0,8,17,0,NULL),('ANILINA-0001',12,0,0,'00:00:00','',0,'0000-00-00','ALG',0,9,12,0,NULL),('CARBUR-0014',5,0,0,'00:00:00','',0,'0000-00-00','ALG',0,10,5,0,NULL),('COLOR-ROJO',2,0,0,'00:00:00','',0,'0000-00-00','ALG',0,11,2,0,NULL),('COLOR-FLUOR',1,0,0,'00:00:00','',0,'0000-00-00','ALG',0,12,1,0,NULL),('ACI-SULF',1,0,0,'00:00:00','',0,'0000-00-00','ALG',0,13,1,0,NULL),('Enturbiante-001',3,0,0,'00:00:00','',0,'0000-00-00','ALG',0,14,3,0,NULL),('BASE-SUAVE',1,0,0,'00:00:00','',0,'0000-00-00','ALG',0,15,1,0,NULL);
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarifas`
--

DROP TABLE IF EXISTS `tarifas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifas` (
  `incporcentual` double NOT NULL,
  `inclineal` double NOT NULL,
  `aplicar_a` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `mincoste` tinyint(1) DEFAULT '0',
  `maxpvp` tinyint(1) DEFAULT '0',
  `codtarifa` varchar(6) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`codtarifa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifas`
--

LOCK TABLES `tarifas` WRITE;
/*!40000 ALTER TABLE `tarifas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarifas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-23 20:02:17
