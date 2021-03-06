# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.25)
# Database: gw2_legendary
# Generation Time: 2015-07-30 09:17:52 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ingredients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ingredients`;

CREATE TABLE `ingredients` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;

INSERT INTO `ingredients` (`id`, `name`, `slug`, `created`, `modified`)
VALUES
	(1,'Kudzu','kudzu','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(2,'Gift of Mastery','gift-of-mastery','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(3,'Bloodstone Shard','bloodstone-shard','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(4,'Obsidian Shard','obsidian-shard','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(5,'Gift of Exploration','gift-of-exploration','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(6,'Gift of Battle','gift-of-battle','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(7,'Badges of Honor','badges-of-honor','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(8,'Gift of Fortune','gift-of-fortune','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(9,'Glob of Ectoplasm','glob-of-ectoplasm','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(10,'Mystic Clover','mystic-clover','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(11,'Mystic Coins','mystic-coins','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(14,'Crystals','crystals','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(15,'Philosopher\'s Stone','philosopher-s-stone','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(16,'Gift of Magic','gift-of-magic','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(17,'Vial of Powerful Blood','vial-of-powerful-blood','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(18,'Powerful Venom Sacs','powerful-venom-sacs','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(19,'Elaborate Totem','elaborate-totem','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(20,'Pile of Crystalline Dust','pile-of-crystalline-dust','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(21,'Gift of Might','gift-of-might','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(22,'Vicious Fang','vicious-fang','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(23,'Armored Scale','armored-scale','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(24,'Vicious Claw','vicious-claw','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(25,'Ancient Bone','ancient-bone','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(26,'Gift of Kudzu','gift-of-kudzu','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(27,'Icy Runestone','icy-runestone','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(28,'Superior Rune of Celerity','superior-rune-of-celerity','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(29,'Gift of Wood','gift-of-wood','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(30,'Ancient Wood Plank','ancient-wood-plank','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(31,'Elder Wood Plank','elder-wood-plank','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(32,'Hard Wood Plank','hard-wood-plank','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(33,'Seasoned Wood Plank','seasoned-wood-plank','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(34,'Gift of Nature','gift-of-nature','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(35,'Omnomberry','omnomberry','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(36,'Cured Hardened Leather Square','cured-hardened-leather-square','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(38,'Gift of Thorns','gift-of-thorns','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(39,'Deadly Bloom','deadly-bloom','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(40,'Leaf of Kudzu','leaf-of-kudzu','2015-07-29 11:52:38','2015-07-29 11:52:38'),
	(41,'The Bifrost','the-bifrost','2015-07-29 11:10:23','2015-07-29 11:10:23');

/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `legendary_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rght` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;

INSERT INTO `items` (`id`, `legendary_id`, `ingredient_id`, `quantity`, `parent_id`, `lft`, `rght`, `created`, `modified`)
VALUES
	(1,11,1,1,NULL,1,80,'2015-07-29 09:12:24','2015-07-29 09:12:24'),
	(2,11,2,1,1,2,13,'2015-07-29 09:15:12','2015-07-29 09:15:12'),
	(3,11,3,200,2,3,4,'2015-07-29 08:20:52','2015-07-29 08:20:52'),
	(4,11,4,250,2,5,6,'2015-07-29 08:21:52','2015-07-29 08:21:52'),
	(5,11,5,1,2,7,8,'2015-07-29 08:22:07','2015-07-29 08:22:07'),
	(6,11,6,1,2,9,12,'2015-07-29 08:22:18','2015-07-29 08:22:18'),
	(7,11,7,500,6,10,11,'2015-07-29 08:22:41','2015-07-29 08:22:41'),
	(8,11,8,1,1,14,49,'2015-07-29 08:25:13','2015-07-29 08:25:13'),
	(9,11,9,250,8,15,16,'2015-07-29 08:25:44','2015-07-29 08:25:44'),
	(10,11,10,77,8,17,28,'2015-07-29 08:26:23','2015-07-29 08:26:23'),
	(11,11,11,231,10,18,19,'2015-07-29 08:26:50','2015-07-29 08:26:50'),
	(12,11,9,231,10,20,21,'2015-07-29 08:27:09','2015-07-29 08:27:09'),
	(13,11,4,231,10,22,23,'2015-07-29 08:27:24','2015-07-29 08:27:24'),
	(14,11,14,231,10,24,25,'2015-07-29 08:27:49','2015-07-29 08:27:49'),
	(15,11,15,1386,10,26,27,'2015-07-29 08:28:13','2015-07-29 11:36:25'),
	(16,11,16,1,8,29,38,'2015-07-29 08:28:26','2015-07-29 08:28:26'),
	(17,11,17,250,16,30,31,'2015-07-29 08:29:00','2015-07-29 08:29:00'),
	(18,11,18,250,16,32,33,'2015-07-29 08:29:48','2015-07-29 08:29:48'),
	(19,11,19,250,16,34,35,'2015-07-29 08:31:11','2015-07-29 08:31:11'),
	(20,11,20,250,16,36,37,'2015-07-29 08:31:27','2015-07-29 08:31:27'),
	(21,11,21,1,8,39,48,'2015-07-29 08:33:22','2015-07-29 08:33:22'),
	(22,11,22,250,21,40,41,'2015-07-29 08:33:36','2015-07-29 08:33:36'),
	(23,11,23,250,21,42,43,'2015-07-29 08:33:51','2015-07-29 08:33:51'),
	(24,11,24,250,21,44,45,'2015-07-29 08:34:26','2015-07-29 08:34:26'),
	(25,11,25,250,21,46,47,'2015-07-29 08:34:40','2015-07-29 08:34:40'),
	(26,11,26,1,1,50,77,'2015-07-29 08:35:32','2015-07-29 08:35:32'),
	(27,11,27,100,26,51,52,'2015-07-29 08:35:57','2015-07-29 08:35:57'),
	(28,11,28,1,26,53,54,'2015-07-29 08:36:12','2015-07-29 08:36:12'),
	(29,11,29,1,26,55,64,'2015-07-29 08:36:24','2015-07-29 08:36:24'),
	(30,11,30,250,29,56,57,'2015-07-29 08:36:45','2015-07-29 08:36:45'),
	(31,11,31,250,29,58,59,'2015-07-29 08:37:00','2015-07-29 08:37:00'),
	(32,11,32,250,29,60,61,'2015-07-29 08:37:13','2015-07-29 08:37:13'),
	(33,11,33,250,29,62,63,'2015-07-29 08:37:28','2015-07-29 08:37:28'),
	(34,11,34,1,26,65,76,'2015-07-29 08:37:46','2015-07-29 08:37:46'),
	(35,11,35,250,34,66,67,'2015-07-29 08:38:03','2015-07-29 08:38:03'),
	(36,11,36,250,34,68,69,'2015-07-29 08:38:22','2015-07-29 08:38:22'),
	(37,11,30,250,34,70,71,'2015-07-29 08:38:41','2015-07-29 08:38:41'),
	(38,11,38,1,34,72,75,'2015-07-29 08:40:09','2015-07-29 08:40:09'),
	(39,11,39,500,38,73,74,'2015-07-29 08:40:23','2015-07-29 08:40:23'),
	(40,11,40,1,1,78,79,'2015-07-29 08:40:50','2015-07-29 08:40:50'),
	(43,1,41,1,NULL,1,6,'2015-07-29 11:23:27','2015-07-29 11:23:27'),
	(44,1,2,1,43,2,3,'2015-07-29 11:23:47','2015-07-29 11:23:47'),
	(45,1,8,1,43,4,5,'2015-07-29 11:24:13','2015-07-29 11:24:13');

/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table legendaries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `legendaries`;

CREATE TABLE `legendaries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `legendaries` WRITE;
/*!40000 ALTER TABLE `legendaries` DISABLE KEYS */;

INSERT INTO `legendaries` (`id`, `name`, `slug`, `type`, `created`, `modified`)
VALUES
	(1,'The Bifrost','the-bifrost','Staff','2015-07-29 11:45:53','2015-07-29 11:45:53'),
	(2,'Bolt','bolt','Sword','2015-07-29 11:45:59','2015-07-29 11:45:59'),
	(4,'The Dreamer','the-dreamer','Short bow','2015-07-29 11:46:16','2015-07-29 11:46:16'),
	(5,'The Flameseeker Prophecies','the-flameseeker-prophecies','Shield','2015-07-29 11:46:30','2015-07-29 11:46:30'),
	(6,'Frenzy','frenzy','Harpoon Gun','2015-07-29 11:46:36','2015-07-29 11:46:36'),
	(7,'Frostfang','frostfang','Axe','2015-07-29 11:47:16','2015-07-29 11:47:16'),
	(8,'Howler','howler','Warhorn','2015-07-29 11:47:24','2015-07-29 11:47:24'),
	(9,'Incinerator','incinerator','Dagger','2015-07-29 11:47:34','2015-07-29 11:47:34'),
	(10,'The Juggernaut','the-juggernaut','Hammer','2015-07-29 11:48:06','2015-07-29 11:48:06'),
	(11,'Kudzu','kudzu','Longbow','2015-07-29 11:48:17','2015-07-29 11:48:17'),
	(12,'Kraitkin','kraitkin','Trident','2015-07-29 11:48:54','2015-07-29 11:48:54'),
	(13,'Kamohoali\'i Kotaki','kamohoali-i-kotaki','Spear','2015-07-29 11:49:17','2015-07-29 11:49:17'),
	(14,'Meteorlogicus','meteorlogicus','Scepter','2015-07-29 11:49:39','2015-07-29 11:49:39'),
	(15,'The Minstrel','the-minstrel','Focus','2015-07-29 11:49:50','2015-07-29 11:49:50'),
	(16,'The Moot','the-moot','Mace','2015-07-29 11:49:58','2015-07-29 11:49:58'),
	(17,'The Predator','the-predator','Rifle','2015-07-29 11:50:07','2015-07-29 11:50:07'),
	(18,'Quip','quip','Pistol','2015-07-29 11:50:15','2015-07-29 11:50:15'),
	(19,'Rodgort','rodgort','Torch','2015-07-29 11:50:24','2015-07-29 11:50:24'),
	(20,'Sunrise','sunrise','Greatsword','2015-07-29 11:50:32','2015-07-29 11:50:32'),
	(21,'Twilight','twilight','Greatsword','2015-07-29 11:50:42','2015-07-29 11:50:42');

/*!40000 ALTER TABLE `legendaries` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
