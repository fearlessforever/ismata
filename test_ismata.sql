-- MySQL dump 10.16  Distrib 10.1.9-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: test_ismata
-- ------------------------------------------------------
-- Server version	10.1.9-MariaDB

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
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang` (
  `kode_barang` char(6) NOT NULL,
  `nama_barang` varchar(25) DEFAULT NULL,
  `satuan_barang` varchar(20) DEFAULT NULL,
  `stock_barang` smallint(4) DEFAULT NULL,
  PRIMARY KEY (`kode_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang`
--

LOCK TABLES `barang` WRITE;
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` VALUES ('KPR-1','KULKAS','BUAH',20);
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuti_karyawan`
--

DROP TABLE IF EXISTS `cuti_karyawan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuti_karyawan` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nomor_induk` varchar(10) NOT NULL,
  `Tanggal_mulai` date NOT NULL,
  `Lama_cuti` smallint(6) NOT NULL DEFAULT '0',
  `Keterangan` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuti_karyawan`
--

LOCK TABLES `cuti_karyawan` WRITE;
/*!40000 ALTER TABLE `cuti_karyawan` DISABLE KEYS */;
INSERT INTO `cuti_karyawan` VALUES (1,'IP06001','2018-02-01',3,''),(2,'IP06001','2018-02-13',2,''),(3,'IP07007','2018-02-15',1,''),(4,'IP06003','2018-02-17',1,'');
/*!40000 ALTER TABLE `cuti_karyawan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `karyawan`
--

DROP TABLE IF EXISTS `karyawan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `karyawan` (
  `Nomor_induk` varchar(10) NOT NULL DEFAULT '',
  `Nama` varchar(30) NOT NULL DEFAULT '',
  `Alamat` text NOT NULL,
  `Tanggal_lahir` date DEFAULT NULL,
  `Tanggal_masuk` date DEFAULT NULL,
  PRIMARY KEY (`Nomor_induk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `karyawan`
--

LOCK TABLES `karyawan` WRITE;
/*!40000 ALTER TABLE `karyawan` DISABLE KEYS */;
INSERT INTO `karyawan` VALUES ('IP06001','Agus','Jln. Gajah Mada 115A, Jakarta Pusat','1970-08-01','2006-07-07'),('IP06002','Amin','Jln. Bungur sari v No. 178, bandung','1977-05-03','2006-07-07'),('IP06003','Yusuf','Jln. Yosodpuro 15, surabaya','1973-08-09','2006-07-07'),('IP07004','Alyssa','Jln. Cendana No. 6 Bandung','1983-02-14','2007-01-05');
/*!40000 ALTER TABLE `karyawan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-24 13:54:13
