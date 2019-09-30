-- MySQL dump 10.13  Distrib 5.5.42, for Win32 (x86)
--
-- Host: localhost    Database: login
-- ------------------------------------------------------
-- Server version	5.5.42

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
-- Table structure for table `indict`
--

DROP TABLE IF EXISTS `indict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indict` (
  `id` int(11) DEFAULT NULL,
  `intensifier` varchar(100) NOT NULL,
  `polarity` float DEFAULT NULL,
  PRIMARY KEY (`intensifier`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indict`
--

LOCK TABLES `indict` WRITE;
/*!40000 ALTER TABLE `indict` DISABLE KEYS */;
INSERT INTO `indict` VALUES (18,'absolutely',4),(43,'almost',1.5),(11,'amazingly',4.5),(36,'astoundingly',3.5),(45,'barely',-1.1),(25,'bitterly',3.5),(19,'completely',3),(49,'damn',4),(17,'enough',2),(41,'essentially',1.5),(12,'exceptionally',5),(10,'extremely',5),(31,'fairly',3),(28,'far',2),(46,'hardly',-1.5),(24,'highly',4.6),(13,'incredibly',5),(44,'less',-1.1),(35,'little',-1.5),(27,'lot',3),(42,'mainly',1.2),(26,'much',2.5),(34,'nearly',0.2),(8,'never',-2.5),(7,'not',-1),(15,'particularly',3.5),(47,'partly',0.5),(32,'pretty',3.3),(22,'quite',4),(33,'rather',2),(9,'really',3.5),(39,'reasonably',1.5),(48,'relatively',1.3),(14,'remarkably',4.8),(23,'seriously',4.5),(3,'so',4),(38,'somewhat',2),(5,'strikingly',3.4),(30,'strongly',3.4),(37,'super',4.9),(2,'too',4.5),(20,'totally',3.6),(4,'undoubtedly',3.5),(6,'unexpectedly',2),(16,'unusually',3),(29,'utter',3),(21,'utterly',3.9),(1,'very',5),(40,'virtually',0.3);
/*!40000 ALTER TABLE `indict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `regdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'a','a','a@gmail.com','a','a','2015-02-25'),(2,'b','b','b@gmail.com','b','b','2015-02-25');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `old_opdict`
--

DROP TABLE IF EXISTS `old_opdict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `old_opdict` (
  `id` int(255) DEFAULT NULL,
  `opinion_word` varchar(100) DEFAULT NULL,
  `polarity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `old_opdict`
--

LOCK TABLES `old_opdict` WRITE;
/*!40000 ALTER TABLE `old_opdict` DISABLE KEYS */;
INSERT INTO `old_opdict` VALUES (1,'excellent',5),(2,'awesome',4),(3,'beautiful',4),(4,'agreeable',2.5),(5,'good',3),(6,'able',2),(7,'accept',2.5),(8,'acceptance',2.5),(9,'acceptable',2.7),(10,'accepted',3),(11,'accepting',2.5),(12,'admirable',4.2),(13,'adorable',4.5),(14,'advantage',4.2),(15,'affordable',4.6),(16,'best',5),(17,'achievement',4.8),(18,'accountable',4.4),(19,'accomplishment',4);
/*!40000 ALTER TABLE `old_opdict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opdict`
--

DROP TABLE IF EXISTS `opdict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opdict` (
  `id` varchar(1000) DEFAULT NULL,
  `opinion` varchar(50) NOT NULL DEFAULT '',
  `polarity` float DEFAULT NULL,
  PRIMARY KEY (`opinion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opdict`
--

LOCK TABLES `opdict` WRITE;
/*!40000 ALTER TABLE `opdict` DISABLE KEYS */;
INSERT INTO `opdict` VALUES ('355',':(',-4),('1','abridged',2),('2','absorbed',3),('3','achievement',4),('309','action-packed',3),('310','addictive',3),('5','admirable',3.5),('4','admire',3.5),('6','adorable',3.5),('7','adore',3.5),('8','advantage',3.5),('311','adventurous',2.5),('27','affection',2),('28','affectionate',2),('138','allegorical',2.5),('139','allegorically',2.5),('11','allure',3.5),('12','alluring',3.7),('9','altruism',3),('10','altruistic',3),('29','amazed',1),('30','amazing',3),('13','amiable',2.5),('31','amusing',1),('14','angel',2),('15','angelic',2),('16','appreciate',4),('17','appreciation',4),('18','appreciative',4),('19','appreciativeness',4),('20','ardent',3.8),('21','aroused',2),('23','astonished',3.7),('22','astonishing',3.7),('24','astounding',4.5),('25','attraction',4),('26','attractive',4),('32','autobiographical',0.5),('33','awareness',2.5),('34','awe',-1),('312','awe-inspiring',2),('35','awed',-1),('36','awesome',4),('340','awesomebook',4),('37','balance',1),('38','balanced',1),('40','beautiful',3),('345','beautifully',3.5),('39','beauty',0.5),('313','believable',1),('41','beloved',0.5),('42','beneficial',1),('43','benefit',1),('44','benevolent',0.2),('45','best',5),('357','BestCast',5),('46','better',2.5),('47','biographical',1),('140','biographically',0.5),('48','blastic',-1),('49','blasting',-0.5),('50','blazing',1),('51','bless',1),('53','blessed',1),('52','blessing',1),('54','bliss',2),('56','blissful',2),('55','blissfulness',2),('57','bloom',0.5),('58','blossom',0.2),('59','boldness',0.1),('60','bored',-2),('61','boring',-2),('62','bravery',1),('314','breath-taking',2),('63','breathtaking',1.5),('66','bright',1),('67','brightness',1),('64','brilliance',1.5),('65','brilliant',1.5),('152','bst',5),('68','calm',0.5),('71','candor',1),('70','capability',0.1),('69','capable',0.1),('315','captivating',3.2),('72','caring',0.1),('73','celebrate',0.5),('74','celebration',0.5),('75','challenging',1),('76','charisma',1.2),('77','charismatic',2),('78','charm',0.5),('80','charmer',0.2),('79','charming',0.5),('81','cheerful',0.5),('82','cheerfulness',0.5),('83','cheers',2.5),('84','clarity',1.5),('85','classic',4.5),('316','comforting',1),('90','compassion',1),('91','compassionate',1),('92','compelling',1.4),('94','competence',1.5),('93','competent',1.5),('317','complex',-1),('318','complicated',-1),('87','confidence',2),('86','confident',2),('319','confusing',-1.5),('88','consistency',0.5),('89','consistent',0.5),('95','contentment',2),('320','conversational',0.2),('96','convincing',2),('97','cool',3),('99','courteous',0.5),('98','courtesy',0.5),('100','creative',3),('101','creativity',3),('321','creepy',-2),('103','curiosity',0.5),('102','curious',0.5),('104','cute',2.5),('308','dandy',3),('322','dangerous',-0.5),('105','daring',0.1),('323','dark',-0.1),('305','dazzled',3),('324','dazzling',4),('106','decent',1),('325','deceptive',-2),('326','deep',0.5),('107','delicate',0.1),('108','delicious',0.1),('109','delight',1.5),('110','delighted',1.5),('111','delightful',1.5),('113','desirable',0.1),('112','desire',0.1),('168','despise',-3.5),('296','determination',1),('327','devious',-0.5),('307','devoted',1),('114','devotion',1),('115','dignity',0.1),('297','diligence',2.5),('116','disappointment',-3),('298','discipline',0.1),('299','discovery',0.1),('300','discretion',0.1),('306','disney',0.5),('328','diverse',1.5),('301','diversity',0.5),('304','divine',2),('117','dream',0.5),('118','dreamy',0.5),('329','dreary',-2),('302','drive',0.1),('303','duty',0.1),('119','dynamic',0.5),('331','easy-to-read',2),('332','educational',3),('333','elusive',-0.5),('334','emotional',2),('335','enchanting',1.5),('120','epic',3),('336','erratic',-1),('337','evocative',1.5),('338','evolving',1),('339','exciting',1),('341','exhilarating',3.5),('342','fanciful',-1.5),('352','fascinating',1.5),('346','fav',4.5),('352','favorite',4.5),('147','favourite',4.5),('121','fictional',1),('122','fictitious',1),('123','filmic',1),('148','flop',-4),('124','folklore',1),('351','forget',2),('146','good',4),('126','gory',-1),('354','graphic',2.5),('144','great',4.5),('145','gripping',3.5),('353','gud',4),('137','hardluck',-1),('150','hilarious',3),('125','historical',1),('149','hit',4),('164','immaculate',3),('141','impressive',4),('143','incredible',4),('142','interesting',4),('127','juicy',2),('128','knockabout',2.5),('129','legendary',1.5),('155','like',3.5),('347','lov',3.5),('154','love',3.5),('151','loved',3.5),('153','lovved',3.5),('344','memorable',3),('343','moved',2.5),('130','mythic',-0.5),('131','mythical',-0.5),('132','non-linear',-1),('133','overripe',-1),('134','picaresque',1),('135','racy',-1),('158','rapt',3.5),('295','rapturous',3.5),('189','reassuring',2),('190','reclusive',1),('169','redundant',-2),('156','reflective',2),('159','rejuvenate',4.5),('161','rejuvenated',4.5),('160','rejuvenating',4.5),('356','relaxing',3.5),('191','reliable',2.5),('192','reluctant',1),('162','remorse',-4),('163','renowned',2),('170','repetitive',-4),('193','resentful',-3),('194','reserved',-2.5),('195','resigned',-2),('196','resourceful',3),('197','respected',3.5),('198','respectful',3.5),('199','responsible',3.5),('200','restless',-2),('167','revamped',2.5),('201','revered',3.5),('157','rhapsodic',3.5),('171','riveting',2.5),('136','romantic',3),('202','sad',-2.5),('203','sassy',3.5),('204','saucy',-1),('172','scary',-1),('205','sedate',2),('206','self-assured',1.5),('207','selfish',-2),('208','sensible',2),('209','sensitive',1),('210','sentimental',2.5),('211','serene',3.5),('212','sharp',1),('213','short-tempered',2),('165','shrewd',3.5),('214','shy',1),('173','silly',-5),('174','simple',1.5),('215','sincere',2),('216','sleepy',-5),('217','sloppy',-2),('218','slothful',-3),('219','slovenly',-3.5),('220','slow',-4),('221','smart',2),('222','snazzy',3),('223','sneered',-3.5),('225','sober',1),('224','somber',-4),('226','sophisticated',1.5),('227','soulful',4),('228','soulless',-4),('229','sour',1),('175','spectacular',5),('176','spell-binding',4.5),('177','spell-tingling',4),('230','spirited',2.5),('231','spiteful',3),('232','stable',1),('233','staid',-5),('234','steady',1),('235','stern',-3.5),('236','stoically',-2),('238','stupid',-2),('239','sturdy',3),('240','subtle',-1),('242','sulky',-3),('241','sullen',-1.5),('243','superficial',-2.5),('244','surly',-3.5),('178','surprising',3),('245','suspicious',-1),('237','swearing',-5),('246','sweet',1),('348','swts',2.5),('247','tactful',1.5),('248','tactles',-1.5),('249','talented',2),('179','tear-jerking',1.5),('350','teary',1.5),('180','terrifying',-5),('250','testy',-2),('181','thought-provoking',4.5),('251','thoughtful',3),('252','thoughtless',-3),('253','timid',-2),('254','tired',-1.5),('255','tolerant',1),('182','touching',4),('256','touchy',3),('183','tragic',3.5),('257','tranquil',2),('184','triumpant',2.5),('185','twisted',2),('258','ugly',-5),('259','unaffected',-1),('260','unbalanced',-2.5),('261','uncertain',-3),('262','uncooperative',-3),('263','undependable',-2.5),('264','unemotional',-4),('265','unfriendly',-5),('266','unguarded',-4),('267','unhelpful',-3.5),('268','unimaginative',-2.5),('186','unique',3),('269','unmotivated',-3),('270','unpleasant',-4.5),('271','unpopular',-3.5),('272','unreliable',-4),('273','unsophisticated',-4),('274','unstable',-1),('275','unsure',-2.5),('276','unthinking',-4),('277','unwilling',-2),('278','venal',-2),('279','versatile',1.5),('280','vigilant',2.5),('292','volcanic',-2.5),('293','vulnerable',-5),('281','warm',2),('282','warmhearted',2),('283','watchful',3.5),('284','weak',-3),('285','well-behaved',-2),('286','well-developed',3.5),('287','well-intentioned',3),('288','well-respected',3),('289','well-rounded',2.5),('187','whimsical',3.5),('358','wildest',1),('290','willing',2),('166','wimp',-2),('188','witty',3.5),('291','wonderful',4),('355','worth',4),('294','zealous',-3);
/*!40000 ALTER TABLE `opdict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sentiwn`
--

DROP TABLE IF EXISTS `sentiwn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sentiwn` (
  `pos` varchar(64) DEFAULT NULL,
  `id` varchar(32) DEFAULT NULL,
  `p` int(11) DEFAULT NULL,
  `n` int(11) DEFAULT NULL,
  `synset` varchar(64) DEFAULT '',
  `gloss` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sentiwn`
--

LOCK TABLES `sentiwn` WRITE;
/*!40000 ALTER TABLE `sentiwn` DISABLE KEYS */;
/*!40000 ALTER TABLE `sentiwn` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-17 21:10:43
