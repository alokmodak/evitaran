-- MySQL dump 10.13  Distrib 5.5.16, for Win64 (x86)
--
-- Host: localhost    Database: jds
-- ------------------------------------------------------
-- Server version	5.5.16

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



---
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `city_UNIQUE` (`city`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (23,'Agra'),(5,'Ahmedabad'),(123,'Ahmednagar'),(148,'Aizawl'),(80,'Ajmer'),(103,'Akola'),(54,'Aligarh'),(36,'Allahabad'),(136,'Alwar'),(93,'Ambattur'),(168,'Ambernath'),(66,'Amravati'),(34,'Amritsar'),(164,'Anantapur'),(165,'Arrah'),(77,'Asansol'),(32,'Aurangabad'),(126,'Avadi'),(147,'Bally'),(216,'Bangarpet'),(172,'Baranagar'),(137,'Bardhaman'),(51,'Bareilly'),(204,'Baripada'),(152,'Bathinda'),(91,'Belgaum'),(108,'Bellary'),(3,'Bengaluru'),(111,'Bhagalpur'),(170,'Bharatpur'),(114,'Bhatpara'),(74,'Bhavnagar'),(68,'Bhilai'),(120,'Bhilwara'),(61,'Bhiwandi'),(16,'Bhopal'),(57,'Bhubaneswar'),(208,'Bhuj'),(184,'Bidar'),(183,'Bidhan Nagar'),(144,'Bihar Sharif'),(131,'Bijapur'),(65,'Bikaner'),(129,'Bilaspur'),(106,'Bokaro'),(121,'Brahmapur'),(48,'Chandigarh'),(134,'Chandrapur'),(6,'Chennai'),(39,'Coimbatore'),(71,'Cuttack'),(146,'Darbhanga'),(101,'Davanagere'),(209,'Davangere'),(75,'Dehradun'),(2,'Delhi'),(191,'Deoli'),(149,'Dewas'),(33,'Dhanbad'),(117,'Dhule'),(160,'Durg'),(76,'Durgapur'),(167,'Etawah'),(25,'Faridabad'),(158,'Farrukhabad'),(72,'Firozabad'),(185,'Gandhinagar'),(96,'Gaya'),(21,'Ghaziabad'),(110,'Gopalpur'),(63,'Gorakhpur'),(81,'Gulbarga'),(64,'Guntur'),(47,'Guwahati'),(41,'Gwalior'),(163,'Hapur'),(142,'Hisar'),(186,'Hosapete'),(38,'Howrah'),(50,'Hubballi-Dharwad'),(4,'Hyderabad'),(150,'Ichalkaranji'),(161,'Imphal'),(14,'Indore'),(40,'Jabalpur'),(10,'Jaipur'),(55,'Jalandhar'),(97,'Jalgaon'),(153,'Jalna'),(89,'Jammu'),(82,'Jamnagar'),(69,'Jamshedpur'),(86,'Jhansi'),(43,'Jodhpur'),(139,'Kakinada'),(28,'Kalyan-Dombivali'),(128,'Kamarhati'),(12,'Kanpur'),(203,'Kanyakumari'),(166,'Karimnagar'),(73,'Kochi'),(79,'Kolhapur'),(7,'Kolkata'),(125,'Kollam (Quilon)'),(119,'Korba'),(46,'Kota'),(102,'Kozhikode (Calicut)'),(138,'Kulti'),(104,'Kurnool'),(207,'Kushalnagar'),(116,'Latur'),(84,'Loni'),(11,'Lucknow'),(22,'Ludhiana'),(44,'Madurai'),(99,'Maheshtala'),(95,'Malegaon'),(92,'Mangalore'),(124,'Mathura'),(156,'Mau'),(26,'Meerut'),(59,'Mira-Bhayandar'),(175,'Mirzapur'),(190,'Mohali'),(52,'Moradabad'),(1,'Mumbai'),(113,'Muzaffarnagar'),(122,'Muzaffarpur'),(53,'Mysore'),(214,'Nagercoil'),(13,'Nagpur'),(181,'Naihati'),(78,'Nanded'),(187,'Nangloi Jat'),(24,'Nashik'),(35,'Navi Mumbai'),(88,'Nellore'),(171,'New Delhi'),(140,'Nizamabad'),(67,'Noida'),(169,'North Dumdum'),(143,'Ozhukarai'),(177,'Pali'),(115,'Panihati'),(145,'Panipat'),(189,'Panvel'),(141,'Parbhani'),(109,'Patiala'),(19,'Patna'),(18,'Pimpri-Chinchwad'),(210,'Puducherry'),(9,'Pune'),(154,'Purnia'),(176,'Raichur'),(45,'Raipur'),(127,'Rajahmundry'),(27,'Rajkot'),(105,'Rajpur Sonarpur'),(178,'Ramagundam'),(132,'Rampur'),(37,'Ranchi'),(162,'Ratlam'),(174,'Rewa'),(118,'Rohtak'),(159,'Sagar'),(62,'Saharanpur'),(58,'Salem'),(90,'Sangli-Miraj & Kupwad'),(155,'Satna'),(130,'Shahjahanpur'),(133,'Shivamogga (Shimoga)'),(85,'Siliguri'),(182,'Singrauli'),(212,'Sivakasi'),(49,'Solapur'),(157,'Sonipat'),(107,'South Dumdum'),(179,'Sri Ganganagar'),(31,'Srinagar'),(213,'Sriperumbudur'),(188,'Srirampur'),(8,'Surat'),(215,'Surathkal'),(15,'Thane'),(60,'Thiruvananthapuram'),(135,'Thrissur'),(56,'Tiruchirappalli'),(94,'Tirunelveli'),(151,'Tirupati'),(100,'Tirupur'),(173,'Tiruvottiyur'),(112,'Tumakuru (Tumkur)'),(98,'Udaipur'),(83,'Ujjain'),(87,'Ulhasnagar'),(180,'Uluberia'),(20,'Vadodara'),(30,'Varanasi'),(29,'Vasai-Virar'),(42,'Vijayawada'),(17,'Visakhapatnam'),(70,'Warangal'),(211,'Yamunanagar');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `country_UNIQUE` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (4,'China'),(1,'India'),(3,'Japan'),(5,'Sri Lanka'),(2,'USA');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(20) NOT NULL,
  `conversion_factor` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currency_UNIQUE` (`currency`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'INR',1),(2,'USD',0.02);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `districts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `district` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `district_idx_1` (`district`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=588 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES (538,'24 Parganas North'),(539,'24 Parganas South'),(1,'Adilabad'),(2,'Agra'),(3,'Ahmedabad'),(4,'Ahmednagar'),(5,'Aizawl'),(6,'Ajmer'),(7,'Akola'),(8,'Alappuzha'),(9,'Aligarh'),(10,'Allahabad'),(11,'Almora'),(12,'Alwar'),(13,'Ambala'),(14,'Ambedkar Nagar'),(15,'Amravati'),(16,'Amreli'),(17,'Amritsar'),(18,'Anand'),(19,'Anantapur'),(20,'Anantnag'),(21,'Andaman Islands'),(22,'Angul'),(23,'Araria'),(24,'Ariyalur'),(25,'Auraiya'),(26,'Aurangabad'),(27,'Azamgarh'),(28,'Badaun'),(29,'Badgam'),(30,'Bagalkot'),(31,'Bageshwar'),(32,'Baghpat'),(33,'Bahraich'),(34,'Balaghat'),(35,'Baleshwar'),(36,'Ballia'),(37,'Balrampur'),(38,'Banas Kantha'),(39,'Banda'),(41,'Bangalore Rural'),(42,'Banka'),(43,'Bankura'),(44,'Banswara'),(45,'Barabanki'),(46,'Baragarh'),(47,'Baramula'),(48,'Baran'),(49,'Bardhaman'),(50,'Bareilly'),(51,'Barmer'),(52,'Barpeta'),(53,'Barwani'),(54,'Bastar'),(55,'Basti'),(56,'Bathinda'),(57,'Begusarai'),(58,'Belgaum'),(59,'Bellary'),(40,'Bengaluru'),(60,'Betul'),(61,'Bhadrak'),(62,'Bhagalpur'),(63,'Bhandara'),(64,'Bharatpur'),(65,'Bharuch'),(66,'Bhavnagar'),(67,'Bhilwara'),(68,'Bhind'),(69,'Bhiwani'),(70,'Bhojpur'),(71,'Bhopal'),(72,'Bid'),(73,'Bidar'),(74,'Bijapur'),(75,'Bijnor'),(76,'Bikaner'),(77,'Bilaspur'),(78,'Birbhum'),(79,'Bishnupur'),(80,'Bokaro'),(81,'Bolangir'),(82,'Bongaigaon'),(83,'Boudh'),(84,'Bulandshahr'),(85,'Buldhana'),(86,'Bundi'),(87,'Buxar'),(88,'Cachar'),(89,'Chamba'),(90,'Chamoli'),(91,'Champawat'),(92,'Champhai'),(93,'Chamrajnagar'),(94,'Chandauli'),(95,'Chandel'),(96,'Chandigarh'),(97,'Chandrapur'),(98,'Changlang'),(99,'Chatra'),(100,'Chennai'),(101,'Chhatarpur'),(102,'Chhindwara'),(103,'Chikmagalur'),(104,'Chitradurga'),(105,'Chitrakoot'),(106,'Chittoor'),(107,'Chittorgarh'),(108,'Churachandpur'),(109,'Churu'),(110,'Coimbatore'),(111,'Cuddalore'),(112,'Cuddapah'),(113,'Cuttack'),(114,'Dadra and Nagar Haveli'),(115,'Dahod'),(117,'Dakshin Dinajpur'),(116,'Dakshina Kannada'),(118,'Daman'),(119,'Damoh'),(120,'Dantewada'),(121,'Darbhanga'),(122,'Darjeeling'),(123,'Darrang'),(124,'Datia'),(125,'Dausa'),(126,'Davanagere'),(586,'Davangere'),(127,'Dehradun'),(128,'Delhi'),(129,'Deogarh'),(130,'Deoghar'),(131,'Deoria'),(132,'Dewas'),(133,'Dhalai'),(134,'Dhamtari'),(135,'Dhanbad'),(136,'Dhar'),(137,'Dharmapuri'),(138,'Dharwad'),(139,'Dhemaji'),(140,'Dhenkanal'),(141,'Dholpur'),(142,'Dhubri'),(143,'Dhule'),(144,'Dibang Valley'),(145,'Dibrugarh'),(146,'Dimapur'),(147,'Dindigul'),(148,'Dindori'),(149,'Diu'),(150,'Doda'),(151,'Dumka'),(152,'Dungarpur'),(153,'Durg'),(154,'East Garo Hills'),(155,'East Godavari'),(156,'East Imphal'),(157,'East Kameng'),(158,'East Khasi Hills'),(159,'East Nimar'),(160,'East Siang'),(161,'East Sikkim'),(162,'Ernakulam'),(163,'Erode'),(164,'Etah'),(165,'Etawah'),(166,'Faizabad'),(167,'Faridabad'),(168,'Faridkot'),(169,'Farrukhabad'),(170,'Fatehabad'),(171,'Fatehgarh Sahib'),(172,'Fatehpur'),(173,'Firozabad'),(174,'Firozpur'),(175,'Gadag'),(176,'Gadchiroli'),(177,'Gajapati'),(178,'Gandhinagar'),(179,'Ganganagar'),(180,'Ganjam'),(181,'Garhwa'),(583,'Garhwal'),(182,'Gautam Buddha Nagar'),(183,'Gaya'),(184,'Ghaziabad'),(185,'Ghazipur'),(186,'Giridih'),(187,'Goalpara'),(188,'Godda'),(189,'Golaghat'),(190,'Gonda'),(191,'Gondiya'),(192,'Gopalganj'),(193,'Gorakhpur'),(194,'Gulbarga'),(195,'Gumla'),(196,'Guna'),(197,'Guntur'),(198,'Gurdaspur'),(199,'Gurgaon'),(200,'Gwalior'),(201,'Hailakandi'),(202,'Hamirpur'),(203,'Hanumangarh'),(204,'Harda'),(205,'Hardoi'),(206,'Haridwar'),(207,'Hassan'),(208,'Hathras'),(209,'Haveri'),(210,'Hazaribagh'),(211,'Hingoli'),(212,'Hissar'),(213,'Hooghly'),(214,'Hoshangabad'),(215,'Hoshiarpur'),(216,'Howrah'),(217,'Hyderabad'),(218,'Idukki'),(219,'Indore'),(220,'Jabalpur'),(221,'Jagatsinghpur'),(222,'Jaintia Hills'),(223,'Jaipur'),(224,'Jaisalmer'),(225,'Jajpur'),(226,'Jalandhar'),(227,'Jalaun'),(228,'Jalgaon'),(229,'Jalna'),(230,'Jalore'),(231,'Jalpaiguri'),(232,'Jammu'),(233,'Jamnagar'),(234,'Jamui'),(235,'Janjgir-Champa'),(236,'Jashpur'),(237,'Jaunpur'),(238,'Jehanabad'),(239,'Jhabua'),(240,'Jhajjar'),(241,'Jhalawar'),(242,'Jhansi'),(243,'Jharsuguda'),(244,'Jhunjhunun'),(245,'Jind'),(246,'Jodhpur'),(247,'Jorhat'),(248,'Junagadh'),(249,'Jyotiba Phule Nagar'),(250,'Kachchh'),(251,'Kaimur'),(252,'Kaithal'),(253,'Kalahandi'),(254,'Kamrup'),(255,'Kancheepuram'),(256,'Kandhamal'),(257,'Kangra'),(258,'Kanker'),(259,'Kannauj'),(260,'Kannur'),(261,'Kanpur'),(262,'Kanpur Dehat'),(263,'Kanyakumari'),(264,'Kapurthala'),(265,'Karaikal'),(266,'Karauli'),(267,'Karbi Anglong'),(268,'Kargil'),(269,'Karimganj'),(270,'Karimnagar'),(271,'Karnal'),(272,'Karur'),(582,'Kasaragod'),(273,'Kasargod'),(274,'Kathua'),(275,'Katihar'),(276,'Katni'),(277,'Kaushambi'),(278,'Kawardha'),(279,'Kendrapara'),(280,'Keonjhar'),(281,'Khagaria'),(282,'Khammam'),(283,'Kheda'),(284,'Khordha'),(285,'Kinnaur'),(286,'Kishanganj'),(287,'Koch Bihar'),(288,'Kodagu'),(289,'Koderma'),(290,'Kohima'),(291,'Kokrajhar'),(292,'Kolar'),(293,'Kolasib'),(294,'Kolhapur'),(295,'Kolkata'),(296,'Kollam'),(297,'Koppal'),(298,'Koraput'),(299,'Korba'),(300,'Koriya'),(301,'Kota'),(302,'Kottayam'),(303,'Kozhikode'),(304,'Krishna'),(305,'Kulu'),(306,'Kupwara'),(307,'Kurnool'),(308,'Kurukshetra'),(309,'Kushinagar'),(310,'Lahaul and Spiti'),(311,'Lakhimpur'),(312,'Lakhimpur Kheri'),(313,'Lakhisarai'),(314,'Lakshadweep'),(315,'Lalitpur'),(316,'Latur'),(317,'Lawngtlai'),(318,'Leh'),(319,'Lohardaga'),(320,'Lohit'),(321,'Lower Subansiri'),(322,'Lucknow'),(323,'Ludhiana'),(324,'Lunglei'),(325,'Madhepura'),(326,'Madhubani'),(327,'Madurai'),(330,'Mahabubnagar'),(328,'Maharajganj'),(329,'Mahasamund'),(331,'Mahe'),(332,'Mahendragarh'),(333,'Mahesana'),(334,'Mahoba'),(335,'Mainpuri'),(336,'Malappuram'),(337,'Malda'),(338,'Malkangiri'),(339,'Mamit'),(340,'Mandi'),(341,'Mandla'),(342,'Mandsaur'),(343,'Mandya'),(344,'Mansa'),(345,'Marigaon'),(346,'Mathura'),(347,'Maunathbhanjan'),(348,'Mayurbhanj'),(349,'Medak'),(350,'Meerut'),(351,'Midnapore'),(352,'Mirzapur'),(353,'Moga'),(354,'Mokokchung'),(355,'Mon'),(356,'Moradabad'),(357,'Morena'),(358,'Muktsar'),(359,'Mumbai City'),(360,'Mumbai Suburban'),(361,'Munger'),(362,'Murshidabad'),(363,'Muzaffarnagar'),(364,'Muzaffarpur'),(365,'Mysore'),(366,'Nabarangpur'),(367,'Nadia'),(368,'Nagaon'),(369,'Nagapattinam'),(370,'Nagaur'),(371,'Nagpur'),(372,'Nainital'),(373,'Nalanda'),(374,'Nalbari'),(375,'Nalgonda'),(376,'Namakkal'),(377,'Nanded'),(378,'Nandurbar'),(379,'Narmada'),(380,'Narsinghpur'),(381,'Nashik'),(382,'Navsari'),(383,'Nawada'),(384,'Nawan Shehar'),(385,'Nayagarh'),(386,'Neemuch'),(387,'Nellore'),(388,'Nicobar Islands'),(389,'Nilgiris'),(390,'Nizamabad'),(391,'North Cachar Hills'),(392,'North Goa'),(393,'North Sikkim'),(394,'North Tripura'),(395,'Nuapada'),(396,'Osmanabad'),(397,'Pakur'),(398,'Palakkad'),(399,'Palamu'),(400,'Pali'),(402,'Panch Mahals'),(401,'Panchkula'),(403,'Panipat'),(404,'Panna'),(405,'Papum Pare'),(406,'Parbhani'),(407,'Pashchim Champaran'),(408,'Pashchim Singhbhum'),(409,'Patan'),(410,'Pathanamthitta'),(411,'Patiala'),(412,'Patna'),(413,'Pauri Garhwal'),(414,'Perambalur'),(415,'Phek'),(416,'Pilibhit'),(417,'Pithoragarh'),(419,'Poonch'),(420,'Porbandar'),(421,'Prakasam'),(422,'Pratapgarh'),(418,'Puducherry'),(423,'Pudukkottai'),(424,'Pulwama'),(425,'Pune'),(426,'Purba Champaran'),(427,'Purba Singhbhum'),(428,'Puri'),(429,'Purnia'),(430,'Purulia'),(431,'Rae Bareli'),(432,'Raichur'),(433,'Raigarh'),(434,'Raipur'),(435,'Raisen'),(436,'Rajauri'),(437,'Rajgarh'),(438,'Rajkot'),(439,'Rajnandgaon'),(440,'Rajsamand'),(441,'Ramanathapuram'),(442,'Rampur'),(443,'Ranchi'),(444,'Rangareddi'),(445,'Ratlam'),(446,'Ratnagiri'),(447,'Rayagada'),(448,'Rewa'),(449,'Rewari'),(450,'Ri-Bhoi'),(451,'Rohtak'),(452,'Rohtas'),(453,'Rudra Prayag'),(454,'Rupnagar'),(455,'Sabar Kantha'),(456,'Sagar'),(457,'Saharanpur'),(458,'Saharsa'),(459,'Sahibganj'),(460,'Saiha'),(461,'Salem'),(462,'Samastipur'),(463,'Sambalpur'),(464,'Sangli'),(465,'Sangrur'),(466,'Sant Kabir Nagar'),(467,'Sant Ravi Das Nagar'),(468,'Saran'),(469,'Satara'),(470,'Satna'),(471,'Sawai Madhopur'),(472,'Sehore'),(473,'Senapati'),(474,'Seoni'),(475,'Serchhip'),(476,'Shahdol'),(477,'Shahjahanpur'),(478,'Shajapur'),(479,'Sheikhpura'),(480,'Sheohar'),(481,'Sheopur'),(482,'Shimla'),(483,'Shimoga'),(484,'Shivpuri'),(485,'Shravasti'),(486,'Sibsagar'),(487,'Siddharth Nagar'),(488,'Sidhi'),(489,'Sikar'),(490,'Sindhudurg'),(491,'Sirmaur'),(492,'Sirohi'),(493,'Sirsa'),(494,'Sitamarhi'),(495,'Sitapur'),(496,'Sivaganga'),(497,'Siwan'),(498,'Solan'),(499,'Solapur'),(500,'Sonbhadra'),(501,'Sonepat'),(502,'Sonepur'),(503,'Sonitpur'),(504,'South Garo Hills'),(505,'South Goa'),(506,'South Sikkim'),(507,'South Tripura'),(508,'Srikakulam'),(509,'Srinagar'),(510,'Sultanpur'),(511,'Sundargarh'),(512,'Supaul'),(513,'Surat'),(514,'Surendranagar'),(515,'Surguja'),(516,'Tamenglong'),(517,'Tawang'),(518,'Tehri Garhwal'),(519,'Thane'),(520,'Thanjavur'),(521,'The Dangs'),(522,'Theni'),(523,'Thiruvallur'),(524,'Thiruvananthapuram'),(525,'Thiruvarur'),(526,'Thoothukudi'),(527,'Thoubal'),(528,'Thrissur'),(529,'Tikamgarh'),(530,'Tinsukia'),(531,'Tirap'),(532,'Tiruchirappalli'),(533,'Tirunelveli'),(534,'Tiruvannamalai'),(535,'Tonk'),(536,'Tuensang'),(537,'Tumkur'),(540,'Udaipur'),(542,'Udham Singh Nagar'),(541,'Udhampur'),(543,'Udupi'),(544,'Ujjain'),(545,'Ukhrul'),(546,'Umaria'),(547,'Una'),(548,'Unnao'),(549,'Upper Siang'),(550,'Upper Subansiri'),(552,'Uttar Dinajpur'),(551,'Uttara Kannada'),(553,'Uttarkashi'),(554,'Vadodara'),(555,'Vaishali'),(556,'Valsad'),(557,'Varanasi'),(558,'Vellore'),(559,'Vidisha'),(560,'Villupuram'),(561,'Virudhunagar'),(562,'Vishakhapatnam'),(563,'Vizianagaram'),(564,'Warangal'),(565,'Wardha'),(566,'Washim'),(567,'Wayanad'),(568,'West Garo Hills'),(569,'West Godavari'),(570,'West Imphal'),(571,'West Kameng'),(572,'West Khasi Hills'),(573,'West Nimar'),(574,'West Siang'),(575,'West Sikkim'),(576,'West Tripura'),(577,'Wokha'),(578,'Yamuna Nagar'),(587,'Yamunanagar'),(579,'Yanam'),(580,'Yavatmal'),(581,'Zunheboto');
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ias_info`
--

DROP TABLE IF EXISTS `ias_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ias_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `address` text NOT NULL,
  `phone_1` varchar(20) NOT NULL,
  `phone_2` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(64) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Stores data about IAS like address, phone number, email etc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ias_info`
--

LOCK TABLES `ias_info` WRITE;
/*!40000 ALTER TABLE `ias_info` DISABLE KEYS */;
INSERT INTO `ias_info` VALUES (1,'Indian Academy Of Sciences\r\nP.B. No. 8005, C. V. Raman Avenue\r\nBangalore  560 080\r\nIndia','080','080','080','ias.com');
/*!40000 ALTER TABLE `ias_info` ENABLE KEYS */;
UNLOCK TABLES;




--
-- Table structure for table `inward_purpose`
--

DROP TABLE IF EXISTS `inward_purpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inward_purpose` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purpose` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `purpose_UNIQUE` (`purpose`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inward_purpose`
--

LOCK TABLES `inward_purpose` WRITE;
/*!40000 ALTER TABLE `inward_purpose` DISABLE KEYS */;
INSERT INTO `inward_purpose` VALUES (3,'Address Change'),(7,'Advertisement'),(8,'Manuscript'),(5,'Missing Issue'),(1,'New Subscription'),(9,'Others'),(2,'Renew Subscription'),(6,'Reprint'),(4,'Request For Invoice');
/*!40000 ALTER TABLE `inward_purpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inward_return_reasons`
--

DROP TABLE IF EXISTS `inward_return_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inward_return_reasons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `return_reason` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `return_reason_UNIQUE` (`return_reason`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inward_return_reasons`
--

LOCK TABLES `inward_return_reasons` WRITE;
/*!40000 ALTER TABLE `inward_return_reasons` DISABLE KEYS */;
INSERT INTO `inward_return_reasons` VALUES (3,'Cheque/ DD not in favour of Indian Academy of Sciences'),(11,'Cheque/DD to be corrected'),(1,'For want of Client\'s address'),(9,'Insufficient funds'),(8,'Only one Cheque/DD to be drawn for all the journals'),(13,'Others'),(6,'Payment already received for current year'),(4,'Personal Subscription accepted for minimum of TWO years only'),(12,'Provide residential address for Personal Subscription'),(10,'Revalidate the Cheque/DD'),(2,'Short Payment'),(5,'Subscriptions are accepted for Calendar year only (Jan-Dec)'),(7,'The issues ordered are out of stock');
/*!40000 ALTER TABLE `inward_return_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issueNumber` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24);
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_group_contents`
--

DROP TABLE IF EXISTS `journal_group_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journal_group_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journalGroupId` int(11) NOT NULL,
  `journalId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_group_contents`
--

LOCK TABLES `journal_group_contents` WRITE;
/*!40000 ALTER TABLE `journal_group_contents` DISABLE KEYS */;
INSERT INTO `journal_group_contents` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,1),(13,12,2),(14,12,3),(15,12,4),(16,12,5),(17,12,6),(18,12,7),(19,12,8),(20,12,9),(21,12,10),(22,12,11),(23,13,2),(24,13,3),(25,13,4),(26,13,5),(27,13,6),(28,13,7),(29,13,8),(30,13,9),(31,13,10),(32,13,11);
/*!40000 ALTER TABLE `journal_group_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_groups`
--

DROP TABLE IF EXISTS `journal_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journal_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journalGroupName` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_groups`
--

LOCK TABLES `journal_groups` WRITE;
/*!40000 ALTER TABLE `journal_groups` DISABLE KEYS */;
INSERT INTO `journal_groups` VALUES (1,'Current Science'),(2,'Resonanace - Journal of Science Education'),(3,'Pramana - Journal of Physics'),(4,'Journal of Astrophysics and Astronomy'),(5,'Journal of Earth System Science (formerly Proc. Earth Planet Sci.)'),(6,'Journal of Chemical Sciences (formerly Proc. Chemical Sci.)'),(7,'Bulletin of Materials Science'),(8,'Sadhana (Engineering Sciences)'),(9,'Journal of Biosciences'),(10,'Journal of Genetics'),(11,'Proceedings (Mathematical Sciences)'),(12,'All Journals'),(13,'1-10 Journals');
/*!40000 ALTER TABLE `journal_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journals`
--

DROP TABLE IF EXISTS `journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journalCode` varchar(4) NOT NULL,
  `journalName` varchar(128) NOT NULL,
  `issnNo` text NOT NULL,
  `pages` int(11) NOT NULL DEFAULT '0',
  `startYear` int(11) DEFAULT NULL,
  `issues` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`journalName`,`journalCode`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journals`
--

LOCK TABLES `journals` WRITE;
/*!40000 ALTER TABLE `journals` DISABLE KEYS */;
INSERT INTO `journals` VALUES (1,'CURR','Current Science','0011-3891',3000,2000,24),(2,'RES','Resonanace - Journal of Science Education','0971-8044',1200,2000,12),(3,'P','Pramana - Journal of Physics','0304-4289',1800,1987,12),(4,'JAA','Journal of Astrophysics and Astronomy','0250-6335',400,1234,4),(5,'EPS','Journal of Earth System Science (formerly Proc. Earth Planet Sci.)','0253-4126',600,1991,6),(6,'CS','Journal of Chemical Sciences (formerly Proc. Chemical Sci.)','0253-4134',600,2000,6),(7,'BMS','Bulletin of Materials Science','0250-4707',600,1995,6),(8,'S','Sadhana (Engineering Sciences)','0256-2499',600,1980,6),(9,'JB','Journal of Biosciences','0250-5991',500,2010,4),(10,'JG','Journal of Genetics','0022-1333',400,2011,3),(11,'MS','Proceedings (Mathematical Sciences)','0253-4142',400,2010,4);
/*!40000 ALTER TABLE `journals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English'),(2,'Hindi'),(3,'Others');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `months`
--

DROP TABLE IF EXISTS `months`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `months` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `month` char(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `months`
--

LOCK TABLES `months` WRITE;
/*!40000 ALTER TABLE `months` DISABLE KEYS */;
INSERT INTO `months` VALUES (1,'January'),(2,'February'),(3,'March'),(4,'April'),(5,'May'),(6,'June'),(7,'July'),(8,'August'),(9,'September'),(10,'October'),(11,'November'),(12,'December');
/*!40000 ALTER TABLE `months` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_mode`
--

DROP TABLE IF EXISTS `payment_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_mode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_mode` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `payment_mode_UNIQUE` (`payment_mode`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_mode`
--

LOCK TABLES `payment_mode` WRITE;
/*!40000 ALTER TABLE `payment_mode` DISABLE KEYS */;
INSERT INTO `payment_mode` VALUES (5,'Bank Transfer'),(4,'Cash'),(1,'Cheque'),(2,'Demand Draft'),(3,'Money Order');
/*!40000 ALTER TABLE `payment_mode` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `state_UNIQUE` (`state`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Andhra Pradesh'),(2,'Arunachal Pradesh'),(3,'Assam'),(4,'Bihar'),(5,'Chattisgarh'),(7,'Goa'),(8,'Gujarat'),(10,'Haryana'),(9,'Himachal Pradesh'),(12,'Jammu & Kashmir'),(11,'Jharkhand'),(13,'Karnataka'),(14,'Kerala'),(18,'Madhya Pradesh'),(17,'Maharastra'),(15,'Manipur'),(16,'Meghalaya'),(19,'Mizoram'),(20,'Nagaland'),(6,'New Delhi'),(21,'Odisha'),(23,'Pondicherry'),(22,'Punjab'),(24,'Rajasthan'),(25,'Sikkim'),(26,'Tamil Nadu'),(27,'Tripura'),(28,'Uttar Pradesh'),(29,'Uttarakhand'),(30,'West Bengal');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;






--
-- Table structure for table `subscriber_type`
--

DROP TABLE IF EXISTS `subscriber_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriber_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subtypecode` char(5) NOT NULL,
  `subtypedesc` char(64) NOT NULL,
  `subtype` char(32) NOT NULL,
  `nationality` char(1) NOT NULL,
  `institutional` char(1) NOT NULL,
  `freejrnl` int(8) DEFAULT NULL,
  `discount` float(8,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_UNIQUE` (`subtypecode`,`subtypedesc`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriber_type`
--

LOCK TABLES `subscriber_type` WRITE;
/*!40000 ALTER TABLE `subscriber_type` DISABLE KEYS */;
INSERT INTO `subscriber_type` VALUES (1,'FELJM','Fellows','Free','I','P',2,0.000),(2,'AS','Associate','Free','I','P',2,0.000),(3,'EBALL','Editorial Borad Member','Free','I','P',1,0.000),(4,'EI','Indian Exchange','Paid','I','I',0,0.000),(5,'EF','Foreign Exchange','Free','F','I',0,0.000),(6,'GRANT','Grant','Free','I','P',2,0.000),(7,'AUTH','AUTHOR','Free','I','P',1,0.000),(8,'II','Indian Isntitutions','Paid','I','I',0,0.000),(9,'IC','Indian Schools and Colleges','Paid','I','I',0,0.000),(10,'IN','Industry Corporates','Paid','I','I',0,0.000),(11,'IP','Indian Personnel','Paid','I','P',0,0.000),(12,'FP','Foreign Personnel','Paid','F','P',0,0.000),(13,'FI','Foreign Institutions','Paid','F','I',0,0.000),(14,'SF','Summer Fellows','Free','I','P',1,0.000),(15,'KVPY','Kishore Vaigyanik Protsahan Yojana','Paid','I','I',0,0.000);
/*!40000 ALTER TABLE `subscriber_type` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `subscription_rates`
--

DROP TABLE IF EXISTS `subscription_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journalGroupId` int(11) NOT NULL,
  `subtypeId` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `period` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_rates`
--

LOCK TABLES `subscription_rates` WRITE;
/*!40000 ALTER TABLE `subscription_rates` DISABLE KEYS */;
INSERT INTO `subscription_rates` VALUES (1,1,8,2011,1,3000),(2,1,8,2011,2,7500),(3,1,8,2011,3,10000),(4,1,8,2011,5,12000),(5,1,8,2012,1,3000),(6,1,8,2012,2,7500),(7,1,8,2012,3,10000),(8,1,8,2012,5,12000),(9,1,9,2011,1,1000),(10,1,9,2011,2,2250),(11,1,9,2011,3,3500),(12,1,9,2011,5,6000),(13,1,9,2012,1,1000),(14,1,9,2012,2,2250),(15,1,9,2012,3,3500),(16,1,9,2012,5,6000),(17,1,11,2011,1,1000),(18,1,11,2011,2,2000),(19,1,11,2012,1,1000),(20,1,11,2012,2,2000),(21,1,10,2011,1,3000),(22,1,10,2011,2,7500),(23,1,10,2011,3,10000),(24,1,10,2011,5,12000),(25,1,10,2012,1,3000),(26,1,10,2012,2,7500),(27,1,10,2012,3,10000),(28,1,10,2012,5,12000),(29,2,8,2011,1,500),(30,2,8,2011,2,900),(31,2,8,2011,3,1300),(32,2,8,2011,5,2000),(33,2,8,2012,1,500),(34,2,8,2012,2,900),(35,2,8,2012,3,1300),(36,2,8,2012,5,2000),(37,2,10,2011,1,500),(38,2,10,2011,2,900),(39,2,10,2011,3,1300),(40,2,10,2011,5,2000),(41,2,10,2012,1,500),(42,2,10,2012,2,900),(43,2,10,2012,3,1300),(44,2,10,2012,5,2000),(45,2,9,2011,1,500),(46,2,9,2011,2,900),(47,2,9,2011,3,1300),(48,2,9,2011,5,2000),(49,2,9,2012,1,500),(50,2,9,2012,2,900),(51,2,9,2012,3,1300),(52,2,9,2012,5,2000),(53,2,11,2011,1,400),(54,2,11,2011,2,800),(55,2,11,2012,1,400),(56,2,11,2012,2,800),(57,3,9,2011,1,750),(58,3,8,2011,1,750),(59,3,10,2011,1,750),(60,3,11,2011,1,700),(61,3,9,2012,1,750),(62,3,8,2012,1,750),(63,3,10,2012,1,750),(64,3,11,2012,1,700),(65,4,9,2011,1,300),(66,4,8,2011,1,300),(67,4,10,2011,1,300),(68,4,11,2011,1,400),(69,4,9,2012,1,300),(70,4,8,2012,1,300),(71,4,10,2012,1,300),(72,4,11,2012,1,400),(73,5,9,2011,1,400),(74,5,8,2011,1,400),(75,5,10,2011,1,400),(76,5,11,2011,1,500),(77,5,9,2012,1,400),(78,5,8,2012,1,400),(79,5,10,2012,1,400),(80,5,11,2012,1,500),(81,6,9,2011,1,400),(82,6,8,2011,1,400),(83,6,10,2011,1,400),(84,6,11,2011,1,500),(85,6,9,2012,1,400),(86,6,8,2012,1,400),(87,6,10,2012,1,400),(88,6,11,2012,1,500),(89,7,9,2011,1,400),(90,7,8,2011,1,400),(91,7,10,2011,1,400),(92,7,11,2011,1,500),(93,7,9,2012,1,400),(94,7,8,2012,1,400),(95,7,10,2012,1,400),(96,7,11,2012,1,500),(97,8,9,2011,1,400),(98,8,8,2011,1,400),(99,8,10,2011,1,400),(100,8,11,2011,1,500),(101,8,9,2012,1,400),(102,8,8,2012,1,400),(103,8,10,2012,1,400),(104,8,11,2012,1,500),(105,9,9,2011,1,400),(106,9,8,2011,1,400),(107,9,10,2011,1,400),(108,9,11,2011,1,500),(109,9,9,2012,1,400),(110,9,8,2012,1,400),(111,9,10,2012,1,400),(112,9,11,2012,1,500),(113,10,9,2011,1,300),(114,10,8,2011,1,300),(115,10,10,2011,1,300),(116,10,11,2011,1,400),(117,10,9,2012,1,300),(118,10,8,2012,1,300),(119,10,10,2012,1,300),(120,10,11,2012,1,400),(121,11,9,2011,1,300),(122,11,8,2011,1,300),(123,11,10,2011,1,300),(124,11,11,2011,1,400),(125,11,9,2012,1,300),(126,11,8,2012,1,300),(127,11,10,2012,1,300),(128,11,11,2012,1,400),(129,12,9,2011,1,4800),(130,13,9,2011,1,3300),(131,12,9,2012,1,4800),(132,13,9,2012,1,3300),(133,12,8,2011,1,7000),(134,13,8,2011,1,3300),(135,12,8,2012,1,7000),(136,13,8,2012,1,3300),(137,12,10,2011,1,7000),(138,13,10,2011,1,3300),(139,12,10,2012,1,7000),(140,13,10,2012,1,3300);
/*!40000 ALTER TABLE `subscription_rates` ENABLE KEYS */;
UNLOCK TABLES;

 ;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `username` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`username`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES ('admin@ias.com','admin'),('jds@ias.com','admin'),('shail@ias.com','user'),('tomcat','manager-script');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--


--
-- Table structure for table `year`
--

DROP TABLE IF EXISTS `year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `year` (
  `yearId` int(11) NOT NULL AUTO_INCREMENT,
  `year` text NOT NULL,
  PRIMARY KEY (`yearId`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `year`
--

LOCK TABLES `year` WRITE;
/*!40000 ALTER TABLE `year` DISABLE KEYS */;
INSERT INTO `year` VALUES (1,'2005'),(2,'2006'),(3,'2007'),(4,'2008'),(5,'2009'),(6,'2010'),(7,'2011'),(8,'2012'),(9,'2013'),(10,'2014'),(11,'2015'),(12,'2016'),(13,'2017'),(14,'2018'),(15,'2019'),(16,'2020'),(17,'2021'),(18,'2022'),(19,'2023'),(20,'2024'),(21,'2025'),(22,'2026'),(23,'2027'),(24,'2028'),(25,'2029'),(41,'2030'),(42,'2031'),(43,'2032'),(44,'2033'),(45,'2034'),(46,'2035'),(47,'2036'),(48,'2037'),(49,'2038'),(50,'2039'),(51,'2040'),(52,'2041'),(53,'2042'),(54,'2043'),(55,'2044'),(56,'2045'),(57,'2046'),(58,'2047'),(59,'2048'),(60,'2049'),(61,'2050');
/*!40000 ALTER TABLE `year` ENABLE KEYS */;
UNLOCK TABLES;
