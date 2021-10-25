# SQL-Front 5.1  (Build 4.16)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost:3308    Database: grupo07
# ------------------------------------------------------
# Server version 5.5.5-10.1.13-MariaDB

DROP DATABASE IF EXISTS `grupo07`;
CREATE DATABASE `grupo07` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `grupo07`;

#
# Source for table libro
#

DROP TABLE IF EXISTS `libro`;
CREATE TABLE `libro` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `titulo` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `autor` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `editorial` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

#
# Dumping data for table libro
#

/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (2,'456321987','La Odisea','Homero','Editorial 1');
INSERT INTO `libro` VALUES (3,'789654123','La Eneida','Virgilio','Editorial 2');
INSERT INTO `libro` VALUES (4,'78541258','Don Quijote','Miguel de Cervantes','Editorial 3');
INSERT INTO `libro` VALUES (5,'123524587','Narraciones Extraordinarias','Edgar Allan Poe','Clasicos Literario');
INSERT INTO `libro` VALUES (7,'12369654','Luz Negra','Albaro Menen Desleal','Clasicos Roxyl');
INSERT INTO `libro` VALUES (8,'12369654','Flores en el atico','Virginia Cleo Andrews','Simon&Schuster');
INSERT INTO `libro` VALUES (9,'456987412','El llano en llamas','Juan Rulfo','Fondo de cultura economica');
INSERT INTO `libro` VALUES (10,'12369657','Fisica Universitaria','Sears Zemansky','Addison Wesley');
INSERT INTO `libro` VALUES (11,'123456789','IT','Stephen King','Editorial 4');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;

#
# Source for table users
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'Anonimo',
  `password` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'm1sm4',
  `nombre` varchar(100) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'Anonimo Anonimo',
  `nivel` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

#
# Dumping data for table users
#

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Mon16','m1sm4','Monica Castillo',1);
INSERT INTO `users` VALUES (2,'Dan115','00a00b','Daniela Andrade',2);
INSERT INTO `users` VALUES (3,'Ale13','Azul12','Alexander Lovo',1);
INSERT INTO `users` VALUES (4,'Gab14','Ga016','Gabriela Hernandez',2);
INSERT INTO `users` VALUES (5,'Edu62','Ed115a','Eduardo De La Cruz',1);
INSERT INTO `users` VALUES (6,'Daniel01','Lavaca02','Daniel Cortez',2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
