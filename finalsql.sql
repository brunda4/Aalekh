-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: trial
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('Brunda','0104swaron');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `art_preferences`
--

DROP TABLE IF EXISTS `art_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `art_preferences` (
  `custid` varchar(20) NOT NULL,
  `g1` varchar(10) DEFAULT NULL,
  `g2` varchar(10) DEFAULT NULL,
  `g3` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`custid`),
  KEY `g1` (`g1`),
  KEY `g2` (`g2`),
  KEY `g3` (`g3`),
  CONSTRAINT `art_preferences_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customer` (`userid`),
  CONSTRAINT `art_preferences_ibfk_2` FOREIGN KEY (`g1`) REFERENCES `genre` (`gid`),
  CONSTRAINT `art_preferences_ibfk_3` FOREIGN KEY (`g2`) REFERENCES `genre` (`gid`),
  CONSTRAINT `art_preferences_ibfk_4` FOREIGN KEY (`g3`) REFERENCES `genre` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `art_preferences`
--

LOCK TABLES `art_preferences` WRITE;
/*!40000 ALTER TABLE `art_preferences` DISABLE KEYS */;
INSERT INTO `art_preferences` VALUES ('bru','g019','g010','g021'),('gvha','g012','g014','g021'),('johan','g017','g018','g019'),('maaruthi','g022','g023','g020');
/*!40000 ALTER TABLE `art_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `aid` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `middlename` varchar(15) DEFAULT NULL,
  `lastname` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `age` int(3) DEFAULT NULL,
  `nationality` varchar(20) NOT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `profession` varchar(20) DEFAULT NULL,
  `description` text NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES ('Ariel','5s4d4f2','Ariel','Ann','Suzzane','1995-04-11','annie@gmail.com',22,'Nationality','Ariel suzzane.png','Student','','female'),('Dav','abcdefg','David','B','Smith','1985-03-01','smithb@gmail.com',32,'Nationality','David B.png','Bussinessman','','male'),('ivory','gaauur','Ivy','Marie','Swanson','1976-06-23','Ivyms@gmail.com',41,'Germany','ivy swanson.png','home maker','','female'),('Lilac','123456','Alicia','James','spinnet','1979-09-09','alicia@gmail.com',29,'Berlin','Alicia Spinnet.png','model','','female'),('lilly','vhknug','Lillie','N','Rhodes','1969-09-15','rhodesl@yahoo.com',48,'India','Lillie Rhodes.png','Professor','','female'),('mac','512548','Marcus','','Cruz','1990-10-10','maccz@gmail.com',27,'Singapore','Marcuz cruz.png','Musician','','male'),('Merci','65487bs','Thalia','','Cobb','1980-12-24','thaliac@gmail.com',37,'France','Thalia Cobb.png','Curator','','female'),('paul','vhyvjc','Paul','Brown','Bach','1984-06-09','pbb@gmail.com',33,'France','Paul Bach.png','manager','','male'),('waydal','j cjhvj','Waylon','Nico','Dalton','1979-01-15','nicodalton@gmail.com',28,'Greece','Waylon Dalton.png','Dietician','','male');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trial`.`artist_AFTER_INSERT` AFTER INSERT ON `artist` FOR EACH ROW
BEGIN
insert into artlogin(aid,password)select aid,password from artist;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `artlogin`
--

DROP TABLE IF EXISTS `artlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artlogin` (
  `aid` varchar(10) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artlogin`
--

LOCK TABLES `artlogin` WRITE;
/*!40000 ALTER TABLE `artlogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `artlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artwork`
--

DROP TABLE IF EXISTS `artwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artwork` (
  `art_id` varchar(50) NOT NULL,
  `aid` varchar(10) NOT NULL,
  `artimg` varchar(255) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `size` varchar(20) NOT NULL,
  `cost` int(10) NOT NULL,
  `no_copies` int(5) NOT NULL,
  `date_upload` date NOT NULL,
  `frameid` varchar(10) DEFAULT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`art_id`),
  KEY `aid` (`aid`),
  KEY `type` (`type`),
  KEY `frameid` (`frameid`),
  CONSTRAINT `artwork_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `artist` (`aid`) ON DELETE CASCADE,
  CONSTRAINT `artwork_ibfk_2` FOREIGN KEY (`type`) REFERENCES `genre` (`gid`) ON DELETE CASCADE,
  CONSTRAINT `artwork_ibfk_3` FOREIGN KEY (`frameid`) REFERENCES `frame` (`fid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artwork`
--

LOCK TABLES `artwork` WRITE;
/*!40000 ALTER TABLE `artwork` DISABLE KEYS */;
INSERT INTO `artwork` VALUES ('AWAriel0','Ariel','Borrego in Green.png','Borrego In Green','g010','24-30 in',5500,5,'2017-04-15','f007','','Oil on Canvas'),('AWariel18','ariel','Screenshot_20171105-144917.png','Lola','g019','16-28 in',21000,5,'2017-11-05','f005','',''),('AWariel9','ariel','Screenshot_20171105-144036.png','Yellow','g014','30-15 in',6500,2,'2017-06-22','f019','',''),('AWdav1','dav','Screenshot_20171105-082710.png','CJWHO','g010','11-36 in',6600,5,'2017-03-25','f008','',''),('AWdav10','dav','Screenshot_20171105-144202.png','Gaze','g015','20-40 in',15000,1,'2017-11-15','f006','',''),('AWdav19','dav','Screenshot_20171105-144935.png','grace','g019','19-36 in',22000,3,'2017-09-15','f020','',''),('AWivory11','ivory','Screenshot_20171105-144518.png','Lady','g015','20-20 in',5600,2,'2017-10-10','f024','',''),('AWivory2','ivory','fauvism_2.jpg','Yacht Havre','g010','12-24 in',7400,2,'2017-06-22','f004','','Mood of breeziness and gaiety'),('AWivory20','ivory','Screenshot_20171105-145015.png','Hubert','g021','26-39 in',19500,1,'2017-03-05','f009','',''),('AWlilac12','lilac','Screenshot_20171105-144218.png','Dawn','g016','30-20 in',17600,6,'2017-01-18','f017','',''),('AWlilac21','lilac','Screenshot_20171105-145102.png','Bow','g021','17.3-28.7 in',20850,2,'2017-05-06','f005','',''),('AWlilac3','lilac','Abstract Art1.png','Sapphire','g011','17.7-23.6 in',9880,1,'2017-09-15','f021','',''),('AWlilly13','lilly','Screenshot_20171105-144535.png','Canavard','g016','20-25 in',9500,2,'2016-01-04','f003','',''),('AWlilly22','lilly','Screenshot_20171105-145159.png','Kings&Horses','g022','25-42 in',19780,3,'2017-07-17','f019','',''),('AWlilly4','lilly','Screenshot_20171105-090211.png','Blue Ocean','g011','40.2-40.2-1.2 in',15950,4,'2017-05-19','f011','','Acrylic paints on unstretched canvas. Coated with gloss coat to protect and preserve the work.'),('AWmac14','mac','Screenshot_20171105-144633.png','LandEscape','g017','18-35 in',19640,5,'2017-09-29','f001','',''),('AWmac23','mac','Screenshot_20171105-145229.png','Lotus','g022','12-26 in',11950,1,'2017-08-21','f024','',''),('AWmac5','mac','Screenshot_20171105-140914.png','illusions','g013','30-15 in',6000,1,'2017-08-11','f012','',''),('AWmerci15','merci','Screenshot_20171105-144706.png','Sight','g017','30-32 in',13000,2,'2017-08-15','f023','',''),('AWmerci24','merci','Screenshot_20171105-145312.png','will','g023','15-26 in',17650,2,'2017-03-16','f019','',''),('AWmerci6','merci','Screenshot_20171105-143709.png','Pearl','g012','20-25 in',21000,2,'2017-05-04','f024','',''),('AWpaul16','paul','Screenshot_20171105-144748.png','Race','g018','17.7-23.6 in',5500,3,'2016-12-17','f019','',''),('AWpaul25','paul','Screenshot_20171105-145342.png','Cream','g023','18-25 in',8900,2,'2017-07-14','f013','',''),('AWpaul7','paul','Screenshot_20171105-143744.png','Grey','g012','42-20 in',19800,3,'2017-08-01','f007','',''),('AWwaydal17','waydal','Screenshot_20171105-144837.png','Handson','g018','15-36in',16700,5,'2017-04-23','f025','',''),('AWwaydal26','waydal','Screenshot_20171105-145451.png','Paint','g020','15-15in',14560,2,'2017-07-08','f020','',''),('AWwaydal8','waydal','Screenshot_20171105-144016.png','Poppy','g014','21-30 in',9000,1,'2017-01-02','f010','','');
/*!40000 ALTER TABLE `artwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auction`
--

DROP TABLE IF EXISTS `auction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction` (
  `auc_no` int(5) NOT NULL,
  `aid` varchar(20) NOT NULL,
  `art_id` varchar(20) NOT NULL,
  `datebegin` date NOT NULL,
  `dateend` date NOT NULL,
  `govrate` int(5) NOT NULL,
  `aucimg` blob,
  `soldamt` float DEFAULT NULL,
  `cust_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`auc_no`),
  KEY `aid` (`aid`),
  KEY `art_id` (`art_id`),
  CONSTRAINT `auction_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `artist` (`aid`) ON DELETE CASCADE,
  CONSTRAINT `auction_ibfk_2` FOREIGN KEY (`art_id`) REFERENCES `artwork` (`art_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auction`
--

LOCK TABLES `auction` WRITE;
/*!40000 ALTER TABLE `auction` DISABLE KEYS */;
INSERT INTO `auction` VALUES (2,'merci','AWmerci6','2017-11-20','2017-11-30',5000,'Screenshot_20171105-143709.png',NULL,NULL);
/*!40000 ALTER TABLE `auction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auctiondetail`
--

DROP TABLE IF EXISTS `auctiondetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auctiondetail` (
  `art_id` varchar(20) NOT NULL,
  `cust_id` varchar(20) NOT NULL,
  `bidamt` varchar(10) DEFAULT NULL,
  KEY `art_id` (`art_id`),
  CONSTRAINT `auctiondetail_ibfk_1` FOREIGN KEY (`art_id`) REFERENCES `artwork` (`art_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auctiondetail`
--

LOCK TABLES `auctiondetail` WRITE;
/*!40000 ALTER TABLE `auctiondetail` DISABLE KEYS */;
INSERT INTO `auctiondetail` VALUES ('AWlilac12','merci','5500'),('AWlilac12','bru','9600');
/*!40000 ALTER TABLE `auctiondetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout`
--

DROP TABLE IF EXISTS `checkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkout` (
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `postalCode` int(11) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `nameOnCard` varchar(45) DEFAULT NULL,
  `creditCardType` varchar(45) DEFAULT NULL,
  `creditCardNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout`
--

LOCK TABLES `checkout` WRITE;
/*!40000 ALTER TABLE `checkout` DISABLE KEYS */;
INSERT INTO `checkout` VALUES ('fcvunkn','cgcvchbjcb','chvhbuj','gh',234567,'xdfcgvhbjnk','a@gmail.com','xdfcgvhjn','visa',2345678),('dfghj','dfgbhnjm','dcfgbhj','we',234,'sdfghj','a@gmail.com','xdcfvgbhn','visa',23445),('sdfgh','asdfgh',' hvcutj','gh',234,'bcjshcjsn','swayam@d3.com','xdfcgvhjn','visa',2345678),('Brunda','#18/1 3rd cross','banglore','ka',560030,'india','brunda@gmail.com','brunda s','visa',4142856),('null','null','null','null',NULL,'null','null','null','null',NULL);
/*!40000 ALTER TABLE `checkout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custlogin`
--

DROP TABLE IF EXISTS `custlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custlogin` (
  `custid` varchar(20) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custlogin`
--

LOCK TABLES `custlogin` WRITE;
/*!40000 ALTER TABLE `custlogin` DISABLE KEYS */;
INSERT INTO `custlogin` VALUES ('bru','null'),('gvha','null'),('johan','baangj'),('maaruthi','null'),('bru','brownie'),('gvha','null'),('jane','janey'),('johan','baangj'),('maaruthi','null');
/*!40000 ALTER TABLE `custlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `userid` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `middlename` varchar(15) DEFAULT NULL,
  `lastname` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(10) NOT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(10) NOT NULL,
  `zipcode` int(15) DEFAULT NULL,
  `phno` varchar(10) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('bru','brownie','bhavya','','rajagopal','1984-06-19','5th cross','banglore','karnataka','india',560072,'9800654123','bhavya84@yahoo.com','female'),('gvha','null','gvxha',' ahvx ','cgxha','1994-02-15','vxhabjx','xgvah','  xgavxj','xcavxja',245635,'  xgavhxb','gxva@chvxhn.com','male'),('jane','janey','jane',NULL,'adler','1997-09-27','#553','chennai','tamilnadu','india',154866,'9845601455','janeady@gmail.com','female'),('johan','baangj','Johan','August','Baang','1983-12-30','#2745 5th cross','mumbai','maharashtra','india',560021,'9845672345','JohanB30@gmail.com','male'),('maaruthi','null','maaruthi','','hanuman','1997-12-20','gvjxb','vhbj','hxj','india',25478965,'7406510116','hanuman@raama.com','male');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trial`.`customer_AFTER_INSERT` AFTER INSERT ON `customer` FOR EACH ROW
BEGIN
insert into custlogin(custid,password)select userid,password from customer;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `exhibition`
--

DROP TABLE IF EXISTS `exhibition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exhibition` (
  `exh_no` int(5) NOT NULL,
  `location` text NOT NULL,
  `aid` varchar(20) DEFAULT NULL,
  `noarts` int(5) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  PRIMARY KEY (`exh_no`),
  KEY `aid` (`aid`),
  CONSTRAINT `exhibition_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `artist` (`aid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibition`
--

LOCK TABLES `exhibition` WRITE;
/*!40000 ALTER TABLE `exhibition` DISABLE KEYS */;
INSERT INTO `exhibition` VALUES (1,'Downtown California','lilac',300,'2017-09-01','2017-09-25');
/*!40000 ALTER TABLE `exhibition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frame`
--

DROP TABLE IF EXISTS `frame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frame` (
  `fid` varchar(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `cost` int(10) NOT NULL,
  `colors` varchar(50) DEFAULT NULL,
  `fimage` blob,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frame`
--

LOCK TABLES `frame` WRITE;
/*!40000 ALTER TABLE `frame` DISABLE KEYS */;
INSERT INTO `frame` VALUES ('f001','floating frame','5-7in 8-10in 11-14in','acrylic frames',650,'black silver','floating frame.jpg'),('f002','poster frame','11-36in','acrylic frames',1853,'black','poster frame acrylic.jpg'),('f003','alpha aluminium frame','8-10in','aluminium-metal frames',1634,'shinyblack shinysilver brushedbronze','alpha aluminium.jpg'),('f004','cirrus frame','13-16in 18-22in 20-24in','aluminium-metal frames',2154,'satinblackfinish white','cirrus frame.jpg'),('f005','cosmopolitan frame','11-14in 16-20in 8-10in','aluminium-metal frames',2503,'blacksatin satingold satingermansilver','cosmopolitan frame.jpg'),('f006','double matted fineline frame','11-14in 16-20in 8-10in','aluminium-metal frames',1725,'blackpowdercoating white-acidfreematwithwhitecore','double matted fineline.jpg'),('f007','fineline frame','20-24in 11-14in 8-10in 18-24in 9-12in','aluminium-metal frames',1559,'black','fineline frame.jpg'),('f008','prisma frame','4-6in 5-7in','aluminium-metal frames',1046,'black copper brass','prisma frame.jpg'),('f009','senza frame','4-6in 5-7in','aluminium-metal frames',1046,'black chrome','senza.jpg'),('f010','tuscany florentine frame','16-20in 8-10in 11-14in','aluminium-metal frames',2675,'silver','Tuscany florentine.jpg'),('f011','vivid frame','16-20in 8-10in 11-14in','aluminium-metal frames',1876,'tornadored cybergreen galaticblue','vivid.jpg'),('f012','emerald cut inward frame','4-6in 5-7in','glass frames',1079,'','Emerald cut inward frame.jpg'),('f013','moda frame','4-6in 5-7in','glass frames',1046,'','moda frame.jpg'),('f014','spinner frame','4-6in 5-7in','glass frames',1330,'','spinner frame.jpg'),('f015','7 piece wall kit','4-6in 5-7in 8-12in','glass frames',2943,'matteblack mattewhite walnut','7 piece wall kit.jpg'),('f016','852 smooth arched embossed frame','11-14in 16-20in 18-24in 8-10in','resin frames',2179,'pewter','852 smooth arched.jpg'),('f017','stretched canvas floater frame','11-14in 16-20in 18-24in 24-30in 24-36in 30-40in','resin frames',2228,'black bronze','stretched canvas.jpg'),('f018','137 wide flat smooth frame','11-14in 16-20in 8-10in','wood frames',2670,'pine','137 wide flat.jpg'),('f019','barnwood finish frame','12-12in 12-24in 16-20in 8-10in','wood frames',2051,'greydrift','Barnwood finish.jpg'),('f020','adison frame','4-6in 5-7in','wood frames',740,'espresso','Adison.jpg'),('f021','arcadia frame','11-14in 16-20in 8-10in','wood frames',2464,'hazelnut','Arcadia.jpg'),('f022','casa frame','11-14in 16-20in 8-10in','wood frames',2105,'matteblack mattewhite','casa.jpg'),('f023','mesa frame','8-10in','wood frames',2248,'matteblack','mesa.jpg'),('f024','stratton frame','4-6in 5-7in 8-10in','wood frames',778,'charcoal walnut whiteoak black','Stratton.jpg'),('f025','tuscan frame','11-14in 8-10in 16-20in 12-15in','wood frames',2367,'black gold','Tuscan.jpg');
/*!40000 ALTER TABLE `frame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `gid` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `no_ug` int(5) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES ('g010','Fauvism',3),('g011','abstract art',2),('g012','surrealism',2),('g013','conceptual art',1),('g014','Pop art',2),('g015','Photorealism',2),('g016','Hyperrealism',2),('g017','minimalism',2),('g018','Futurism',2),('g019','Impressionism',2),('g020','Others',1),('g021','expressionism',2),('g022','cubism',2),('g023','eastern',2);
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'trial'
--
/*!50003 DROP PROCEDURE IF EXISTS `del_procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `del_procedure`(IN tname varchar(10))
BEGIN
 update `genre` set `no_ug`=no_ug-1 where `gid`=tname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`(IN tname varchar(10))
BEGIN
 update `genre` set `no_ug`=no_ug+1 where `gid`=tname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-22 12:35:50
