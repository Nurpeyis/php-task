# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.5-10.3.12-MariaDB)
# Database: phptask
# Generation Time: 2019-05-01 22:30:02 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `login`, `password`)
VALUES
	(2,'test1','test1'),
	(3,'test2','test2'),
	(4,'test123','test123'),
	(5,'qwewrqr','qwedwedew'),
	(6,'qwewrqr','qwedwedew'),
	(7,'qwewrqr','wedwefwef'),
	(8,'qwewrqr','wedwefwef'),
	(9,'qwewrqr','7f38eac21bbd8355db4f4dbc62739271'),
	(10,'qwewrqr','7f38eac21bbd8355db4f4dbc62739271'),
	(11,'qwewrqr','7f38eac21bbd8355db4f4dbc62739271'),
	(12,'qwewrqr','7f38eac21bbd8355db4f4dbc62739271'),
	(13,'qwewrqr','7f38eac21bbd8355db4f4dbc62739271'),
	(14,'qwewrqr','7f38eac21bbd8355db4f4dbc62739271'),
	(15,'qwewrqr','7f38eac21bbd8355db4f4dbc62739271'),
	(16,'csdcscd','3eb48ced5115cccbbecfa53f8a79f40b'),
	(17,'csdcscd','3eb48ced5115cccbbecfa53f8a79f40b'),
	(18,'csdcscd','3eb48ced5115cccbbecfa53f8a79f40b'),
	(19,'csdcscd','3eb48ced5115cccbbecfa53f8a79f40b'),
	(20,'csdcscd','3eb48ced5115cccbbecfa53f8a79f40b'),
	(21,'csdcscd','3eb48ced5115cccbbecfa53f8a79f40b'),
	(22,'csdcscd','3eb48ced5115cccbbecfa53f8a79f40b'),
	(23,'csdcscd','3eb48ced5115cccbbecfa53f8a79f40b'),
	(24,'csdcscd','3eb48ced5115cccbbecfa53f8a79f40b'),
	(25,'cdscscddscs','fe2d023c2790bd39c0b89ce9ed150c10'),
	(26,'csacascasc','1f85c4abe4501fcb3cefc262b03868f9'),
	(27,'csacascasc','1f85c4abe4501fcb3cefc262b03868f9'),
	(28,'test1234','16d7a4fca7442dda3ad93c9a726597e4');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
