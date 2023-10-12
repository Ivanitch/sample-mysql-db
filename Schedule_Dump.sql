-- MariaDB dump 10.19  Distrib 10.11.4-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: schedule
-- ------------------------------------------------------
-- Server version	10.11.4-MariaDB-1~deb12u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES
(1,'8 A'),
(2,'8 B'),
(3,'9 C'),
(4,'9 B'),
(5,'9 A'),
(6,'10 B'),
(7,'10 A'),
(8,'11 B'),
(9,'11 A'),
(10,'7 A'),
(11,'7 B'),
(12,'6 A'),
(13,'6 B'),
(14,'5 A');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `class` int(11) DEFAULT NULL,
  `number_pair` int(11) DEFAULT NULL,
  `teacher` int(11) DEFAULT NULL,
  `subject` int(11) DEFAULT NULL,
  `classroom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `schedule_classes_fk` (`class`),
  KEY `schedule_time_pair_fk` (`number_pair`),
  KEY `schedule_teacher_fk` (`teacher`),
  KEY `schedule_subject_fk` (`subject`),
  CONSTRAINT `schedule_classes_fk` FOREIGN KEY (`class`) REFERENCES `classes` (`id`),
  CONSTRAINT `schedule_subject_fk` FOREIGN KEY (`subject`) REFERENCES `subject` (`id`),
  CONSTRAINT `schedule_teacher_fk` FOREIGN KEY (`teacher`) REFERENCES `teacher` (`id`),
  CONSTRAINT `schedule_time_pair_fk` FOREIGN KEY (`number_pair`) REFERENCES `time_pair` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES
(1,'2019-09-01',9,1,11,1,47),
(2,'2019-09-01',9,2,8,2,13),
(3,'2019-09-01',9,3,4,3,13),
(4,'2019-09-02',9,1,4,3,13),
(5,'2019-09-02',9,2,2,4,34),
(6,'2019-09-02',9,3,6,5,35),
(7,'2019-09-03',9,1,5,6,36),
(8,'2019-09-03',9,2,13,7,37),
(9,'2019-09-03',9,3,6,8,38),
(10,'2019-09-04',9,1,9,9,39),
(11,'2019-09-04',9,2,10,10,40),
(12,'2019-09-04',9,3,3,11,41),
(13,'2019-09-05',9,1,3,13,43),
(14,'2019-09-05',9,2,11,1,47),
(15,'2019-09-05',9,3,5,6,36),
(16,'2019-09-06',9,1,2,4,34),
(17,'2019-09-06',9,2,8,2,13),
(18,'2019-09-06',9,3,6,5,35),
(19,'2019-09-06',9,4,10,1,47),
(20,'2019-09-06',9,4,10,10,40),
(21,'2019-09-07',8,1,7,9,53),
(22,'2019-09-07',8,2,7,9,53),
(23,'2019-09-07',8,3,8,2,38),
(24,'2019-09-09',8,4,11,1,43),
(25,'2019-09-09',8,5,8,3,39),
(26,'2019-09-09',8,2,2,4,34),
(27,'2019-09-09',8,3,6,5,35),
(28,'2019-09-09',8,4,12,6,36),
(29,'2019-09-10',8,5,13,7,37),
(30,'2019-09-10',8,3,6,8,38),
(31,'2019-09-10',8,4,7,9,53),
(32,'2019-09-10',8,1,10,10,40),
(33,'2019-09-11',8,2,7,9,53),
(34,'2019-09-11',8,1,1,11,4),
(35,'2019-09-12',8,2,1,12,42),
(36,'2019-09-12',8,3,3,13,43),
(37,'2019-09-14',8,4,8,2,42),
(38,'2019-09-14',8,5,11,1,43),
(39,'2019-09-14',8,2,11,1,43),
(40,'2019-09-15',9,3,11,1,43);
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES
(1,'Nikolaj','Fedorovich','Sokolov','2011-10-01','ul. Pushkina, d. 36, kv. 5'),
(2,'Vyacheslav','Evgenevich','Eliseev','2000-11-21','ul. Pushkina, d. 40, kv. 7'),
(3,'Ivan','Antonovich','Efremov','2000-09-19','ul. Pushkina, d. 58, kv. 16'),
(4,'Anatolij','Valentinovich','ZHdanov','2007-07-15','ul. Pushkina, d. 21, kv. 7'),
(5,'Georgij','Dmitrievich','Noskov','2000-03-03','ul. Pushkina, d. 45, kv. 65'),
(6,'Artyom','Borisovich','Sergeev','2007-01-01','ul. Pushkina, d. 1, kv. 5'),
(7,'Arina','Fyodorovna','Evseeva','2000-08-11','ul. Pushkina, d. 21, kv. 51'),
(8,'Angelina','Aleksandrovna','Voroncova','2000-05-21','ul. Pervomajskaya, d. 121, kv. 5'),
(9,'Ekaterina','Alekseevna','Ustinova','2000-01-04','ul. Pervomajskaya, d. 45, kv. 2'),
(10,'Raisa','Semyonovna','Lapina','2000-02-05','ul. Pervomajskaya, d. 56, kv. 7'),
(11,'Leonid','Nikitich','Ignatov','2007-12-30','ul. Pushkina, d. 78, kv. 9'),
(12,'Snezhana','YAkovlevna','Seliverstova','2000-07-23','ul. Pushkina, d. 78, kv. 56'),
(13,'Semyon','Vladislavovich','Biryukov','2000-09-11','ul. CHernova, d. 54, kv. 67'),
(14,'Georgij','Vyacheslavovich','Baranov','2001-01-11','ul. CHernova, d. 56, kv. 89'),
(15,'YUliya','Rostislavovna','Vishnyakova','2001-12-03','ul. Kuratova, d. 96, kv. 45'),
(16,'Valentina','Andreevna','Bolshakova','2001-05-30','ul. Pervomajskaya, d. 89, kv. 67'),
(17,'Leonid','Romanovich','Kryukov','2001-06-04','ul. Zapadnaya, d. 78, kv. 9'),
(18,'Vladislav','Sergeevich','Cvetkov','2001-04-05','ul. Karla Marksa, d. 89, kv. 7'),
(19,'Snezhana','Ivanovna','Morozova','2001-11-06','ul. Internacionalnaya, d. 7, kv. 9'),
(20,'Lyubov','Maksimovna','Borisova','2001-07-12','ul. Kirova, d. 23, kv. 13'),
(21,'Anfisa','Antonovna','Kalashnikova','2001-01-11','ul. Oplesnina, d. 4, kv. 4'),
(22,'Anna','Olegovna','Osipova','2001-04-16','ul. CHernova, d. 32, kv. 56'),
(23,'Kristina','Glebovna','Smirnova','2001-03-04','ul. Markova, d. 78, kv. 67'),
(24,'Kristina','Fyodorovna','Myasnikova','2001-02-03','ul. YUzhnaya, d. 45, kv. 56'),
(25,'Boris','Innokentevich','Simonov','2001-04-05','ul. Kuratova, d. 89, kv. 78'),
(26,'Dmitrij','Leonidovich','Trofimov','2001-05-06','ul. Pushkina, d. 78, kv. 9'),
(27,'YAkov','Leonidovich','Rozhkov','2001-06-07','ul. Karla Marksa, d. 45, kv. 7'),
(28,'Angelina','Aleksandrovna','Lukina','2001-09-10','ul. Internacionalnaya, d. 45, kv. 7'),
(29,'Nina','Ilinichna','Odincova','2001-10-11','ul. Kuratova, d. 4, kv. 76'),
(30,'Valeriya','Olegovna','Novikova','2001-11-12','ul. Kirova, d. 3, kv. 56'),
(31,'Grigorij','Gennadevich','Kapustin','2001-12-13','ul. Pervomajskaya, d. 45, kv. 6'),
(32,'Vitalij','Eduardovich','Panfilov','2001-01-01','ul. CHernova, d. 34, kv. 87'),
(33,'Svyatoslav','Vyacheslavovich','YAkushev','2002-02-15','ul. Zapadnaya, d. 7, kv. 8'),
(34,'Ilya','Stepanovich','Alekseev','2002-03-16','ul. Pervomajskaya, d. 9, kv. 12'),
(35,'Lyubov','Vyacheslavovna','Zaharova','2002-04-17','ul. CHernova, d. 12, kv. 13'),
(36,'Polina','Kirillovna','Sidorova','2002-05-18','ul. Kuratova, d. 13, kv. 14'),
(37,'Elizaveta','Fyodorovna','Samojlova','2002-06-19','ul. Karla Marksa, d. 46, kv. 45'),
(38,'YUliya','Daniilovna','Avdeeva','2002-07-20','ul. Internacionalnaya, d. 87, kv. 78'),
(39,'Matvej','Gennadevich','Bogdanov','2002-08-21','ul. Pervomajskaya, d. 9, kv. 8'),
(40,'Ilya','Egorovich','Filippov','2002-09-22','ul. CHernova, d. 100, kv. 90'),
(41,'Denis','Nikitich','Mel','2002-10-23','ul. Kirova, d. 123, kv. 45'),
(42,'Svyatoslav','Valentinovich','Muravyov','2002-11-24','ul. Pervomajskaya, d. 45, kv. 67'),
(43,'Anna','Denisovna','Kulagina','2002-12-25','ul. CHernova, d. 7, kv. 78'),
(44,'ZHanna','Ilinichna','Fokina','2002-01-26','ul. Karla Marksa, d. 8, kv. 9'),
(45,'Valeriya','YUrevna','Lapina','2002-02-27','ul. Oplesnina, d. 78, kv. 56'),
(46,'Valeriya','YUrevna','Lapina','2002-02-27','ul. Oplesnina, d. 78, kv. 56'),
(47,'Valentina','Andreevna','Sazonova','2002-03-01','ul. Zapadnaya, d. 84, kv. 48'),
(48,'Nataliya','Igorevna','Myasnikova','2002-04-02','ul. Pushkina, d. 1, kv. 23'),
(49,'Viktoriya','YAroslavovna','Makarova','2002-05-03','ul. Kirova, d. 5, kv. 8'),
(50,'Stanislav',NULL,'Lazarev','2002-06-04','ul. Internacionalnaya, d. 6, kv. 9'),
(51,'Gennadij','Denisovich','Ovchinnikov','2002-07-05','ul. Kuratova, d. 7, kv. 9'),
(52,'Roman','Nikolaevich','SHilov','2003-08-06','ul. Pushkina, d. 56, kv. 80'),
(53,'Timur','Ilich','Subbotin','2003-09-07','ul. Zapadnaya, d. 47, kv. 39'),
(54,'Danila','Ivanovich','Osipov','2003-10-08','ul. CHernova, d. 78, kv. 69'),
(55,'Arina','Timofeevna','Silina','2003-11-09','ul. CHernova, d. 75, kv. 39'),
(56,'Nadezhda','Ilinichna','Zaharova','2003-12-10','ul. Internacionalnaya, d. 70, kv. 84'),
(57,'Larisa','Stanislavovna','SHCHerbakova','2003-01-11','ul. Pervomajskaya, d. 94, kv. 4'),
(58,'Aleksandra','Andreevna','Belozyorova','2003-02-12','ul. Pushkina, d. 3, kv. 21'),
(59,'Natalya','Nikolaevna','Davydova','2003-03-13','ul. Zapadnaya, d. 4, kv. 2'),
(60,'Mariya','Valerievna','Fadeeva','2003-04-14','ul. CHernova, d. 8, kv. 5'),
(61,'YUrij','Denisovich','Markov','2003-05-15','ul. Kuratova, d. 9, kv. 5'),
(62,'Kirill',NULL,'SHubin','2003-06-16','ul. Zapadnaya, d. 6, kv. 3'),
(63,'Grigorij','Kirillovich','Kolobov','2003-07-17','ul. CHernova, d. 9, kv. 34'),
(64,'Semyon','Semyonovich','Trofimov','2003-08-18','ul. Karla Marksa, d. 11, kv. 56'),
(65,'Vasilij','Gennadevich','Ustinov','2003-09-17','ul. Oplesnina, d. 11, kv. 13'),
(66,'Valentina','YAkovlevna','SHarova','2003-10-04','ul. Pervomajskaya, d. 31, kv. 3'),
(67,'Larisa','Timurovna','Savina','2004-11-05','ul. Zapadnaya, d. 22, kv. 33'),
(68,'Galina','YAroslavovna','Orekhova','2004-12-07','ul. Internacionalnaya, d. 77, kv. 87'),
(69,'Arina','Ivanovna','SHarapova','2004-01-08','ul. Kirova, d. 47, kv. 94'),
(70,'Viktoriya','YUrevna','Sergeeva','2004-02-09','ul. Kuratova, d. 44, kv. 87'),
(71,'Vasilij','Glebovich','Krasilnikov','2004-03-15','ul. Zapadnaya, d. 101, kv. 92'),
(72,'Timur','Filippovich','Rusakov','2004-04-26','ul. CHernova, d. 197, kv. 56'),
(73,'Gleb','Timofeevich','Nesterov','2004-05-05','ul. Pervomajskaya, d. 91, kv. 71'),
(74,'Denis','Matveevich','Makarov','2004-05-09','ul. CHernova, d. 41, kv. 31'),
(75,'Elizaveta','Borisovna','SHilova','2004-06-14','ul. Karla Marksa, d. 68, kv. 15'),
(76,'Vera','Lvovna','Evseeva','2004-07-04','ul. Pushkina, d. 5, kv. 13'),
(77,'Margarita','Vladislavovna','Kabanova','2004-08-08','ul. Kuratova, d. 98, kv. 67'),
(78,'Angelina','Danilovna','Lazareva','2004-09-04','ul. Zapadnaya, d. 67, kv. 93'),
(79,'Semyon','Anatolevich','Voronov','2023-10-12','ul. Oplesnina, d. 89, kv. 89'),
(80,'Innokentij','Vyacheslavovich','Nekrasov','2004-10-05','ul. CHernova, d. 777, kv. 77'),
(81,'Artyom','Viktorovich','Nikitin','2004-01-06','ul. Internacionalnaya, d. 666, kv. 7'),
(82,'Egor','Petrovich','Belyakov','2004-11-07','ul. Zapadnaya, d. 87, kv. 9'),
(83,'Elizaveta',NULL,'Fadeeva','2004-12-08','ul. Zapadnaya, d. 7, kv. 19');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_in_class`
--

DROP TABLE IF EXISTS `student_in_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_in_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_in_class_classes_fk` (`class`),
  KEY `student_in_class_student_fk` (`student`),
  CONSTRAINT `student_in_class_classes_fk` FOREIGN KEY (`class`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_in_class_student_fk` FOREIGN KEY (`student`) REFERENCES `student` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_in_class`
--

LOCK TABLES `student_in_class` WRITE;
/*!40000 ALTER TABLE `student_in_class` DISABLE KEYS */;
INSERT INTO `student_in_class` VALUES
(67,9,1),
(68,9,2),
(69,9,3),
(70,9,4),
(71,9,5),
(72,9,6),
(73,9,7),
(74,9,8),
(75,9,9),
(76,9,10),
(77,9,11),
(78,9,12),
(79,9,13),
(80,8,14),
(81,8,15),
(82,8,16),
(83,8,17),
(84,8,18),
(85,8,19),
(86,8,20),
(87,8,21),
(88,8,22),
(89,8,23),
(90,8,24),
(91,7,25),
(92,7,26),
(93,7,27),
(94,7,28),
(95,7,29),
(96,7,30),
(97,7,31),
(98,7,32),
(99,7,33),
(100,7,34),
(101,6,35),
(102,6,36),
(103,6,37),
(104,6,38),
(105,6,39),
(106,6,40),
(107,6,41),
(108,6,42),
(109,6,43),
(110,6,44),
(111,6,45),
(112,5,46),
(113,5,47),
(114,5,48),
(115,5,49),
(116,5,50),
(117,5,51),
(118,5,52),
(119,5,53),
(120,4,54),
(121,4,55),
(122,4,56),
(123,4,57),
(124,4,58),
(125,4,59),
(126,4,60),
(127,4,61),
(128,4,62),
(129,3,63),
(130,3,64),
(131,3,65),
(132,3,66),
(133,3,67),
(134,3,68),
(135,3,69),
(136,3,70),
(137,2,71),
(138,2,72),
(139,2,73),
(140,2,74),
(141,2,75),
(142,2,76),
(143,2,77),
(144,1,78),
(145,1,79),
(146,1,80);
/*!40000 ALTER TABLE `student_in_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES
(1,'Math'),
(2,'Russian language'),
(3,'Literature'),
(4,'Physics'),
(5,'Chemistry'),
(6,'Geography'),
(7,'History'),
(8,'Biology'),
(9,'English language'),
(10,'Informatics'),
(11,'Physical Culture'),
(12,'Robotics'),
(13,'Technology');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES
(1,'Pavel','Petrovich','Romashkin'),
(2,'Vasilij','Antonovich','Kolesnikov'),
(3,'Mariya','Stepanovna','Vaulina'),
(4,'Taisiya','Timurovna','ZHedrinskaya'),
(5,'Marina','Gennadevna','Sosnovskaya'),
(6,'Ekaterina','YAkovlevna','Myasoedova'),
(7,'Liliya','Timurovna','Arakcheeva'),
(8,'Sofya','Dmitrievna','Krauze'),
(9,'Viktoriya','Nikolaevna','Ostrozhskaya'),
(10,'YUrij',NULL,'Krylov'),
(11,'Andrej','Antonovich','Evseev'),
(12,'Bogdan','Romanovich','Moiseev'),
(13,'Aleksandr','Vladimirovich','Sobolev');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_pair`
--

DROP TABLE IF EXISTS `time_pair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_pair` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_pair` time DEFAULT NULL,
  `end_pair` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_pair`
--

LOCK TABLES `time_pair` WRITE;
/*!40000 ALTER TABLE `time_pair` DISABLE KEYS */;
INSERT INTO `time_pair` VALUES
(1,'08:30:00','09:15:00'),
(2,'09:20:00','10:05:00'),
(3,'10:15:00','11:00:00'),
(4,'11:05:00','11:50:00'),
(5,'12:50:00','13:35:00'),
(6,'13:40:00','14:25:00'),
(7,'14:35:00','15:20:00'),
(8,'15:25:00','16:10:00');
/*!40000 ALTER TABLE `time_pair` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-12 20:13:56
