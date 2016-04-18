# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.11)
# Database: lux_test
# Generation Time: 2016-04-18 22:11:56 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table author
# ------------------------------------------------------------

DROP TABLE IF EXISTS `author`;

CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;

INSERT INTO `author` (`id`, `created_at`, `updated_at`, `name`)
VALUES
	(1,'2016-04-16 19:02:28','2016-04-16 19:02:28','New Author 1'),
	(2,'2016-04-16 19:02:31','2016-04-16 19:02:31','New Author 2');

/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table post
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT '0',
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;

INSERT INTO `post` (`id`, `created_at`, `updated_at`, `title`, `body`, `is_public`, `author_id`)
VALUES
	(1,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 1','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(2,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 2','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(3,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 5','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(4,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 3','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(5,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 6','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(6,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 4','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(7,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 7','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(8,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 12','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(9,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 11','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(10,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 10','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(11,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 8','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(12,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 9','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(13,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 13','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(14,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 14','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(15,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 15','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(16,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 17','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(17,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 16','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(18,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 19','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(19,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 18','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(20,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 20','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(21,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 23','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(22,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 22','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(23,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 21','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(24,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 24','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(25,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 25','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,1),
	(26,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 26','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(27,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 27','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(28,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 29','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(29,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 28','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(30,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 31','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(31,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 30','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(32,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 34','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(33,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 35','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(34,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 32','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(35,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 33','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(36,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 36','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(37,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 39','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(38,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 40','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(39,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 41','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(40,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 37','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(41,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 38','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(42,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 42','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(43,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 43','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(44,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 48','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(45,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 46','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(46,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 45','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(47,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 44','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(48,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 47','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(49,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 49','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2),
	(50,'2016-04-16 19:00:53','2016-04-16 19:10:04','New Post 50','Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,2);

/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
