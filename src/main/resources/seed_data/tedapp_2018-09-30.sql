# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.10)
# Database: tedapp
# Generation Time: 2018-09-30 01:48:59 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table flyway_schema_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `flyway_schema_history`;

CREATE TABLE `flyway_schema_history` (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `flyway_schema_history` WRITE;
/*!40000 ALTER TABLE `flyway_schema_history` DISABLE KEYS */;

INSERT INTO `flyway_schema_history` (`installed_rank`, `version`, `description`, `type`, `script`, `checksum`, `installed_by`, `installed_on`, `execution_time`, `success`)
VALUES
	(1,'1','db init','SQL','V1__db_init.sql',-444840199,'root','2018-09-30 04:51:35',136,1);

/*!40000 ALTER TABLE `flyway_schema_history` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rating_tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rating_tag`;

CREATE TABLE `rating_tag` (
  `id` bigint(20) NOT NULL,
  `name` varchar(500) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedat` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `rating_tag` WRITE;
/*!40000 ALTER TABLE `rating_tag` DISABLE KEYS */;

INSERT INTO `rating_tag` (`id`, `name`, `createdat`, `updatedat`, `deletedat`)
VALUES
	(1,'Beautiful','2018-09-30 04:52:26','2018-09-30 04:52:26',NULL),
	(2,'Confusing','2018-09-30 04:52:26','2018-09-30 04:52:26',NULL),
	(3,'Courageous','2018-09-30 04:52:26','2018-09-30 04:52:26',NULL),
	(7,'Funny','2018-09-30 04:52:26','2018-09-30 04:52:26',NULL),
	(9,'Ingenious','2018-09-30 04:52:26','2018-09-30 04:52:26',NULL),
	(11,'Longwinded','2018-09-30 04:52:26','2018-09-30 04:52:26',NULL);

/*!40000 ALTER TABLE `rating_tag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table related_talk
# ------------------------------------------------------------

DROP TABLE IF EXISTS `related_talk`;

CREATE TABLE `related_talk` (
  `id` bigint(20) NOT NULL,
  `hero` varchar(500) DEFAULT NULL,
  `speaker` varchar(500) DEFAULT NULL,
  `title` varchar(700) NOT NULL,
  `duration` bigint(20) DEFAULT '0',
  `slug` varchar(500) DEFAULT NULL,
  `viewed_count` bigint(20) DEFAULT '0',
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedat` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `related_talk` WRITE;
/*!40000 ALTER TABLE `related_talk` DISABLE KEYS */;

INSERT INTO `related_talk` (`id`, `hero`, `speaker`, `title`, `duration`, `slug`, `viewed_count`, `createdat`, `updatedat`, `deletedat`)
VALUES
	(865,'https://pe.tedcdn.com/images/ted/172559_800x600.jpg','Ken Robinson','Bring on the learning revolution!',1008,'sir_ken_robinson_bring_on_the_revolution',7266103,'2018-09-30 04:52:45','2018-09-30 04:52:45',NULL),
	(1738,'https://pe.tedcdn.com/images/ted/de98b161ad1434910ff4b56c89de71af04b8b873_1600x1200.jpg','Ken Robinson','How to escape education\'s death valley',1151,'ken_robinson_how_to_escape_education_s_death_valley',6657572,'2018-09-30 04:52:45','2018-09-30 04:52:45',NULL);

/*!40000 ALTER TABLE `related_talk` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL,
  `name` varchar(500) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedat` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;

INSERT INTO `tag` (`id`, `name`, `createdat`, `updatedat`, `deletedat`)
VALUES
	(1,'children','2018-09-30 04:52:45','2018-09-30 04:52:45',NULL),
	(2,'creativity','2018-09-30 04:52:45','2018-09-30 04:52:45',NULL),
	(3,'culture','2018-09-30 04:52:45','2018-09-30 04:52:45',NULL),
	(4,'dance','2018-09-30 04:52:45','2018-09-30 04:52:45',NULL),
	(5,'cars','2018-09-30 04:52:45','2018-09-30 04:52:45',NULL),
	(6,'climate change','2018-09-30 04:52:45','2018-09-30 04:52:45',NULL);

/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ted_related_talk_join
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ted_related_talk_join`;

CREATE TABLE `ted_related_talk_join` (
  `id` bigint(20) NOT NULL,
  `ted_talk_id` bigint(20) NOT NULL,
  `related_talk_id` bigint(20) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedat` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ted_talk_id_fk_1` (`ted_talk_id`),
  KEY `related_talk_id_fk_1` (`related_talk_id`),
  CONSTRAINT `related_talk_id_fk_1` FOREIGN KEY (`related_talk_id`) REFERENCES `related_talk` (`id`),
  CONSTRAINT `ted_talk_id_fk_1` FOREIGN KEY (`ted_talk_id`) REFERENCES `ted_talk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ted_related_talk_join` WRITE;
/*!40000 ALTER TABLE `ted_related_talk_join` DISABLE KEYS */;

INSERT INTO `ted_related_talk_join` (`id`, `ted_talk_id`, `related_talk_id`, `createdat`, `updatedat`, `deletedat`)
VALUES
	(1,1,865,'2018-09-30 04:55:04','2018-09-30 04:55:04',NULL),
	(2,1,1738,'2018-09-30 04:55:04','2018-09-30 04:55:04',NULL);

/*!40000 ALTER TABLE `ted_related_talk_join` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ted_talk
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ted_talk`;

CREATE TABLE `ted_talk` (
  `id` bigint(20) NOT NULL,
  `description` text,
  `event` varchar(500) NOT NULL,
  `main_speaker` varchar(500) NOT NULL,
  `name` text NOT NULL,
  `publishdate` datetime NOT NULL,
  `speaker_occupation` varchar(500) DEFAULT NULL,
  `title` varchar(700) NOT NULL,
  `url` text NOT NULL,
  `views` bigint(20) DEFAULT '0',
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedat` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ted_talk` WRITE;
/*!40000 ALTER TABLE `ted_talk` DISABLE KEYS */;

INSERT INTO `ted_talk` (`id`, `description`, `event`, `main_speaker`, `name`, `publishdate`, `speaker_occupation`, `title`, `url`, `views`, `createdat`, `updatedat`, `deletedat`)
VALUES
	(1,'Sir Ken Robinson makes an entertaining and profoundly moving case for creating an education system that nurtures (rather than undermines) creativity.','TED2006','Ken Robinson','Ken Robinson: Do schools kill creativity?','2006-06-27 12:11:00','Author/educator','Do schools kill creativity?','https://www.ted.com/talks/ken_robinson_says_schools_kill_creativity',47227110,'2018-09-30 04:55:01','2018-09-30 04:55:01',NULL),
	(2,'With the same humor and humanity he exuded in \"An Inconvenient Truth,\" Al Gore spells out 15 ways that individuals can address climate change immediately, from buying a hybrid to inventing a new, hotter brand name for global warming.','TED2007','Al Gore','Al Gore: Averting the climate crisis','2006-06-27 12:11:00','Climate advocate','Averting the climate crisis','https://www.ted.com/talks/al_gore_on_averting_climate_crisis',3200520,'2018-09-30 04:55:01','2018-09-30 05:11:59',NULL);

/*!40000 ALTER TABLE `ted_talk` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ted_talks_ratings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ted_talks_ratings`;

CREATE TABLE `ted_talks_ratings` (
  `id` bigint(20) NOT NULL,
  `rating_tag_id` bigint(20) NOT NULL,
  `ted_talk_id` bigint(20) NOT NULL,
  `count` bigint(20) DEFAULT '0',
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedat` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ted_talk_id_fk_3` (`ted_talk_id`),
  KEY `rating_tag_id_fk_3` (`rating_tag_id`),
  CONSTRAINT `rating_tag_id_fk_3` FOREIGN KEY (`rating_tag_id`) REFERENCES `rating_tag` (`id`),
  CONSTRAINT `ted_talk_id_fk_3` FOREIGN KEY (`ted_talk_id`) REFERENCES `ted_talk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ted_talks_ratings` WRITE;
/*!40000 ALTER TABLE `ted_talks_ratings` DISABLE KEYS */;

INSERT INTO `ted_talks_ratings` (`id`, `rating_tag_id`, `ted_talk_id`, `count`, `createdat`, `updatedat`, `deletedat`)
VALUES
	(1,7,1,19645,'2018-09-30 04:55:21','2018-09-30 04:55:21',NULL),
	(2,1,1,4573,'2018-09-30 04:55:21','2018-09-30 04:55:21',NULL),
	(3,9,1,6073,'2018-09-30 04:55:21','2018-09-30 04:55:21',NULL);

/*!40000 ALTER TABLE `ted_talks_ratings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ted_talks_tags_join
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ted_talks_tags_join`;

CREATE TABLE `ted_talks_tags_join` (
  `id` bigint(20) NOT NULL,
  `ted_talk_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedat` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ted_talk_id_fk_2` (`ted_talk_id`),
  KEY `tag_id_fk_2` (`tag_id`),
  CONSTRAINT `tag_id_fk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`),
  CONSTRAINT `ted_talk_id_fk_2` FOREIGN KEY (`ted_talk_id`) REFERENCES `ted_talk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ted_talks_tags_join` WRITE;
/*!40000 ALTER TABLE `ted_talks_tags_join` DISABLE KEYS */;

INSERT INTO `ted_talks_tags_join` (`id`, `ted_talk_id`, `tag_id`, `createdat`, `updatedat`, `deletedat`)
VALUES
	(1,1,1,'2018-09-30 04:55:21','2018-09-30 04:55:21',NULL),
	(2,1,2,'2018-09-30 04:55:21','2018-09-30 04:55:21',NULL),
	(3,1,3,'2018-09-30 04:55:21','2018-09-30 04:55:21',NULL),
	(4,1,4,'2018-09-30 04:55:21','2018-09-30 04:55:21',NULL);

/*!40000 ALTER TABLE `ted_talks_tags_join` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
