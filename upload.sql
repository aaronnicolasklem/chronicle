-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: chronicle
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adjectives`
--

DROP TABLE IF EXISTS `adjectives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adjectives` (
  `id` int NOT NULL AUTO_INCREMENT,
  `word` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `word_UNIQUE` (`word`)
) ENGINE=InnoDB AUTO_INCREMENT=1797 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adjectives`
--

LOCK TABLES `adjectives` WRITE;
/*!40000 ALTER TABLE `adjectives` DISABLE KEYS */;
INSERT INTO `adjectives` VALUES (1717,'Ageless'),(1747,'Ancient'),(1748,'Ashen'),(1749,'Black'),(1718,'Blessed'),(1719,'Blighted'),(1750,'Bloody'),(1751,'Blue'),(1752,'Bright'),(1753,'Broken'),(1754,'Burning'),(1755,'Clouded'),(1720,'Cold'),(1756,'Copper'),(1757,'Cracked'),(1721,'Cursed'),(1758,'Dark'),(1759,'Dead'),(1722,'Deadly'),(1723,'Deep'),(1724,'Desolate'),(1725,'Diamond'),(1726,'Dim'),(1727,'Dismal'),(1760,'Doomed'),(1728,'Dun'),(1729,'Eerie'),(1761,'Endless'),(1762,'Fallen'),(1763,'Far'),(1764,'Fearsome'),(1730,'Fell'),(1731,'Flamming'),(1765,'Floating'),(1766,'Forbidden'),(1732,'Forgotten'),(1733,'Forsaken'),(1767,'Frozen'),(1768,'Ghostly'),(1734,'Glittering'),(1769,'Gloomy'),(1770,'Golden'),(1735,'Green'),(1771,'Grim'),(1772,'Hidden'),(1773,'High'),(1736,'Holy'),(1737,'Impassable'),(1774,'Iron'),(1775,'Jagged'),(1738,'Light'),(1776,'Lonely'),(1739,'Long'),(1777,'Lost'),(1778,'Low'),(1740,'Misty'),(1779,'Near'),(1741,'Perilous'),(1780,'Pertified'),(1742,'Purple'),(1781,'Red'),(1743,'Savage'),(1782,'Screaming'),(1744,'Shadowy'),(1783,'Sharp'),(1784,'Shattered'),(1785,'Shifting'),(1786,'Shining'),(1787,'Shivering'),(1788,'Shrouded'),(1789,'Silver'),(1790,'Stalwart'),(1791,'Stoney'),(1792,'Sunken'),(1793,'Thorny'),(1794,'Thundering'),(1795,'White'),(1745,'Wicked'),(1796,'Withered'),(1746,'Yellow');
/*!40000 ALTER TABLE `adjectives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creatures`
--

DROP TABLE IF EXISTS `creatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creatures` (
  `creaturesID` int NOT NULL AUTO_INCREMENT,
  `creaturesName` varchar(45) DEFAULT NULL,
  `creaturesHearts` int DEFAULT '1',
  `creaturesAppearing` varchar(45) DEFAULT '1',
  `creatureBonus` int DEFAULT '0',
  `creaturesTreasureType` varchar(10) DEFAULT 'Z',
  `creaturesMorale` int DEFAULT '5',
  `creaturesXPworth` int DEFAULT '25',
  PRIMARY KEY (`creaturesID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creatures`
--

LOCK TABLES `creatures` WRITE;
/*!40000 ALTER TABLE `creatures` DISABLE KEYS */;
INSERT INTO `creatures` VALUES (1,'Skeleton, Basic',1,'3d6',1,'Z',12,25),(2,'Troll',6,'1d8',6,'D',10,555);
/*!40000 ALTER TABLE `creatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creaturestagsmap`
--

DROP TABLE IF EXISTS `creaturestagsmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creaturestagsmap` (
  `tagMapID` int NOT NULL AUTO_INCREMENT,
  `creaturesID` int DEFAULT NULL,
  `tagsID` int DEFAULT NULL,
  PRIMARY KEY (`tagMapID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creaturestagsmap`
--

LOCK TABLES `creaturestagsmap` WRITE;
/*!40000 ALTER TABLE `creaturestagsmap` DISABLE KEYS */;
INSERT INTO `creaturestagsmap` VALUES (1,1,8),(2,1,14),(3,1,19),(4,2,1),(5,2,15),(6,2,18);
/*!40000 ALTER TABLE `creaturestagsmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nouns`
--

DROP TABLE IF EXISTS `nouns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nouns` (
  `id` int NOT NULL AUTO_INCREMENT,
  `word` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `word_UNIQUE` (`word`)
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nouns`
--

LOCK TABLES `nouns` WRITE;
/*!40000 ALTER TABLE `nouns` DISABLE KEYS */;
INSERT INTO `nouns` VALUES (95,'Arm'),(1,'Ash'),(96,'Blood'),(3,'Bone'),(41,'Bronze'),(97,'Child'),(98,'Cinder'),(40,'Copper'),(99,'Corpse'),(100,'Crystal'),(101,'Dagger'),(4,'Darkness'),(5,'Dead'),(6,'Death'),(102,'Demon'),(8,'Desolate'),(7,'Desolation'),(9,'Despair'),(10,'Devil'),(11,'Doom'),(12,'Dragon'),(408,'Eye'),(409,'Fane'),(13,'Fate'),(14,'Fear'),(410,'Finger'),(15,'Fire'),(411,'Foot'),(16,'Fury'),(17,'Ghost'),(18,'Giant'),(412,'Goblin'),(19,'God'),(20,'Godling'),(21,'Gold'),(413,'Hant'),(414,'Head'),(415,'Heart'),(22,'Heaven'),(23,'Hell'),(416,'Hero'),(24,'Honor'),(25,'Hope'),(26,'Horror'),(27,'King'),(417,'Knave'),(418,'Knight'),(28,'Life'),(29,'Light'),(30,'Lord'),(422,'Magus'),(31,'Mist'),(419,'Muck'),(420,'Mud'),(32,'Peril'),(421,'Priest'),(33,'Queen'),(34,'Rain'),(35,'Refuge'),(36,'Regret'),(432,'Sage'),(423,'Sailor'),(37,'Savior'),(38,'Shadow'),(39,'Silver'),(42,'Skull'),(43,'Sky'),(44,'Smoke'),(45,'Snake'),(46,'Sorrow'),(424,'Souls'),(425,'Spear'),(426,'Spirit'),(427,'Stone'),(47,'Storm'),(48,'Sun'),(428,'Sword'),(429,'Thief'),(49,'Thorn'),(50,'Thunder'),(51,'Traitor'),(52,'Troll'),(53,'Victory'),(430,'Warrior'),(431,'Water'),(54,'Witch');
/*!40000 ALTER TABLE `nouns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `places` (
  `id` int NOT NULL AUTO_INCREMENT,
  `word` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES (1,'Bay'),(2,'Bluffs'),(3,'Bog'),(4,'Cliffs'),(5,'Desert'),(6,'Downs'),(7,'Dunes'),(8,'Expanse'),(9,'Fells'),(10,'Fen'),(11,'Flats'),(12,'Foothills'),(13,'Forest'),(14,'Groves'),(15,'Heath'),(16,'Heights'),(17,'Hills'),(18,'Hollow'),(19,'Hollows'),(20,'Jungle'),(21,'Lake'),(22,'Lowland'),(23,'March'),(24,'Marsh'),(25,'Meadows'),(26,'Moor'),(27,'Moorland'),(28,'Morass'),(29,'Mounds'),(30,'Mountains'),(31,'Peaks'),(32,'Plains'),(33,'Prairie'),(34,'Quagmire'),(35,'Range'),(36,'Grange'),(37,'Reach'),(38,'Sands'),(39,'Savanna'),(40,'Scarps'),(41,'Sea'),(42,'Slough'),(43,'Sound'),(44,'Steppe'),(45,'Steppes'),(46,'Swamp'),(47,'Mire'),(48,'Sweep'),(49,'Seep'),(50,'Teeth'),(51,'Thicket'),(52,'Upland'),(53,'Wall'),(54,'Waste'),(55,'Wastes'),(56,'Wasteland'),(57,'Woods'),(58,'Barrier'),(59,'Beach'),(60,'Bowl'),(61,'Caves'),(62,'Circle'),(63,'Cliff'),(64,'Cratter'),(65,'Crossing'),(66,'Crypt'),(67,'Den'),(68,'Ditches'),(69,'Falls'),(70,'Fence'),(71,'Field'),(72,'Fields'),(73,'Fort'),(74,'Gate'),(75,'Grove'),(76,'Hill'),(77,'Lake'),(78,'Meadows'),(79,'Meadow'),(80,'Ridge'),(81,'Ring'),(82,'Rise'),(83,'Rock'),(84,'Ruins'),(85,'Spire'),(86,'Spring'),(87,'Springs'),(88,'Tangle'),(89,'Throne'),(90,'Vale'),(91,'Valley'),(92,'Refuge'),(93,'Encampment'),(94,'Township'),(95,'Sanctuary'),(96,'Sanctum'),(97,'Fane'),(98,'Arch'),(99,'Flats'),(100,'Mesa'),(101,'Barrens'),(102,'Badlands'),(103,'River'),(104,'Channel'),(105,'Coast'),(106,'Bog'),(107,'Cataract'),(108,'Cataracts'),(109,'Gorge'),(110,'Woodland'),(111,'Nexus'),(112,'Marshes'),(113,'Enclave'),(114,'Shelf'),(115,'Pool'),(116,'Pools'),(117,'Brushland'),(118,'Caldera'),(119,'Vista'),(120,'Canopy'),(121,'Canyon'),(122,'Cascade'),(123,'Cavern'),(124,'Caverns'),(125,'Colonnade'),(126,'Garden'),(127,'Gardens'),(128,'Estuary'),(129,'Aquifer'),(130,'Gorge'),(131,'Gorges'),(132,'Atoll'),(133,'Cradle'),(134,'Tar pits'),(135,'Crucible'),(136,'Vestige'),(137,'Shores'),(138,'Grotto'),(139,'Backwater'),(140,'Summit'),(141,'Reef'),(142,'Arbors'),(143,'Everglades'),(144,'Haven'),(145,'Havens'),(146,'Conclave'),(147,'Islet'),(148,'Strand'),(149,'Strand'),(150,'Orchard'),(151,'Snarl'),(152,'Floodplain'),(153,'Chasm'),(154,'shore'),(155,'Burrows'),(156,'Grasslands'),(157,'Cairns'),(158,'Backwoods'),(159,'Oasis'),(160,'Heart'),(161,'Heartland'),(162,'Henge'),(163,'Woodlot'),(164,'Hinterland'),(165,'Weald'),(166,'Deadlands'),(167,'Vantage'),(168,'Rivulet'),(169,'Basin'),(170,'Plateau'),(171,'Megaliths'),(172,'Run'),(173,'Verge'),(174,'Sandbar'),(175,'Tributary'),(176,'Moorland'),(177,'Grounds'),(178,'Peatland'),(179,'Delta'),(180,'Ravine'),(181,'Edge'),(182,'Rainforest'),(183,'Haunt'),(184,'Mouth'),(185,'Bosk'),(186,'Isle'),(187,'Crag'),(188,'Tarn'),(189,'Scrubland'),(190,'Inlet'),(191,'Quay'),(192,'Wreckage'),(193,'Vent'),(194,'Vents'),(195,'Clearing'),(196,'Sink'),(197,'Bed'),(198,'Knoll'),(199,'Knolls'),(200,'Canal'),(201,'Pasture'),(202,'Wildwood'),(203,'Quarry'),(204,'Pass'),(205,'Taiga'),(206,'Lowlands'),(207,'Center'),(208,'North'),(209,'South'),(210,'West'),(211,'East'),(212,'Wood'),(213,'Territory'),(214,'Tundra'),(215,'Frontier'),(216,'Fjord'),(217,'Fjords'),(218,'Veldt'),(219,'Fumarole'),(220,'Hub'),(221,'Chasms');
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagscreatures`
--

DROP TABLE IF EXISTS `tagscreatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tagscreatures` (
  `tagCreatureID` int NOT NULL AUTO_INCREMENT,
  `tagName` varchar(45) DEFAULT NULL,
  `tagDescription` varchar(255) DEFAULT NULL,
  `tagCategory` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`tagCreatureID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagscreatures`
--

LOCK TABLES `tagscreatures` WRITE;
/*!40000 ALTER TABLE `tagscreatures` DISABLE KEYS */;
INSERT INTO `tagscreatures` VALUES (1,'CE','This creature is Chaotic and Evil','Alignment'),(2,'CG','This creature is Chaotic and Good','Alignment'),(3,'CN','This creature is Chaotic and Neutral','Alignment'),(4,'LG','This creature is Lawful and Good','Alignment'),(5,'LE','This creature is Lawful and Evil','Alignment'),(6,'LN','This creature is Lawful and Neutral','Alignment'),(7,'N','This creature is fully Neutral','Alignment'),(8,'NE','This creature is Neutral and Evil','Alignment'),(9,'NG','This creature is Neutral and Good','Alignment'),(10,'UA','This creature is unaligned','Alignment'),(11,'Tiny','This creature takes up less than a 5x5ft space, allowing multiple TINY creatures to share the sames space. Their reach is often 0ft','Size'),(12,'Tiny','This creature takes up less than a 5x5ft space, allowing multiple TINY creatures to share the sames space. Their reach is often 0ft','Size'),(13,'Small','This creature takes up a 5x5ft space. Their reach is often 5ft','Size'),(14,'Medium','This creature takes up a 5x5ft space. Their reach is often 5ft','Size'),(15,'Large','This creature takes up a 10x10ft space. Their reach is often 5ft or 10ft','Size'),(16,'Huge','This creature takes up a 15x15ft space. Their reach is often 15ft or 10ft','Size'),(17,'Gargantuan','This creature takes up at least 20x20ft space. Their reach is often 15ft or 20ft, but could be larger.','Size'),(18,'Giant','This creature is descendent from the Eldest, those giant humanoids who ruled before mortals','Type'),(19,'Undead','Once living, this creature has been brough back by the infusion of foul magics.','Type'),(20,'Abberration','This creature descends from some manipulation of the natural order or a crack from the Deep.','Type');
/*!40000 ALTER TABLE `tagscreatures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-22 11:35:30
