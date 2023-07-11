-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: katsenbd
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `campaña`
--

DROP TABLE IF EXISTS `campaña`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaña` (
  `idCampaña` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `fechaCampaña` datetime DEFAULT NULL,
  `estado` int DEFAULT '1',
  `fechaAlta` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idCampaña`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaña`
--

LOCK TABLES `campaña` WRITE;
/*!40000 ALTER TABLE `campaña` DISABLE KEYS */;
INSERT INTO `campaña` VALUES (1,'campa;a1','2023-07-09 17:34:03',1,'2023-07-09 17:34:03'),(2,'campa;a 2','2023-07-09 17:37:29',1,'2023-07-09 17:37:29'),(3,'Veronica','2023-07-09 17:37:29',1,'2023-07-09 19:39:50');
/*!40000 ALTER TABLE `campaña` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita`
--

DROP TABLE IF EXISTS `cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cita` (
  `idCita` int NOT NULL AUTO_INCREMENT,
  `costo` varchar(100) DEFAULT NULL,
  `anticipo` int DEFAULT NULL,
  `idCampaña` int DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `idPaciente` int DEFAULT NULL,
  `fechaAlta` datetime DEFAULT NULL,
  PRIMARY KEY (`idCita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita`
--

LOCK TABLES `cita` WRITE;
/*!40000 ALTER TABLE `cita` DISABLE KEYS */;
/*!40000 ALTER TABLE `cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especie`
--

DROP TABLE IF EXISTS `especie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especie` (
  `idEspecie` int NOT NULL AUTO_INCREMENT,
  `especie` varchar(45) NOT NULL,
  `fechaRegistro` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT '1',
  PRIMARY KEY (`idEspecie`,`especie`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especie`
--

LOCK TABLES `especie` WRITE;
/*!40000 ALTER TABLE `especie` DISABLE KEYS */;
INSERT INTO `especie` VALUES (1,'CANINO','2023-06-03 10:20:42',1),(2,'FELINO','2023-06-03 10:20:42',1),(3,'EQUINO','2023-06-03 10:20:42',1);
/*!40000 ALTER TABLE `especie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expediente`
--

DROP TABLE IF EXISTS `expediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expediente` (
  `idexpediente` int NOT NULL AUTO_INCREMENT,
  `noExpediente` varchar(45) DEFAULT NULL,
  `fechaAlta` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT '1',
  PRIMARY KEY (`idexpediente`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expediente`
--

LOCK TABLES `expediente` WRITE;
/*!40000 ALTER TABLE `expediente` DISABLE KEYS */;
INSERT INTO `expediente` VALUES (1,'20230623-55','2023-06-23 16:23:48',1),(2,'20230703-59','2023-07-03 15:12:08',1),(3,'20230709-64','2023-07-09 14:47:01',1),(4,'20230709-65','2023-07-09 15:02:55',1),(5,'20230709-66','2023-07-09 15:20:50',1),(6,'20230709-67','2023-07-09 15:22:28',1),(7,'20230709-69','2023-07-09 16:05:21',1);
/*!40000 ALTER TABLE `expediente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `idPaciente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `peso` int DEFAULT NULL,
  `idSexo` int DEFAULT NULL,
  `idEspecie` int DEFAULT NULL,
  `idRaza` int DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `img` varchar(150) DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `idExpediente` int DEFAULT NULL,
  `estado` int DEFAULT '1',
  `rasgosParticulares` varchar(150) DEFAULT NULL,
  `fechaAlta` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idPaciente`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (67,'EJEMPLO',32,4,2,172,'2023-07-09','fdsf','/img/carita-felipe.jpg',34,6,1,'fsdfd','2023-07-09 15:22:28'),(68,'EJEMPLO',32,5,1,8,'2023-07-09','dsf','/img/addPet/20230709152032.jpg',34,6,1,'hghdf','2023-07-09 15:25:45'),(69,'EJEMPLO',0,2,2,178,'2023-07-09','Blanco','/img/carita-felipe.jpg',33,7,1,'','2023-07-09 16:05:21'),(70,'EJEMPLO',0,3,1,8,'2023-07-09','dsf','/img/carita-felipe.jpg',34,6,1,'','2023-07-09 16:17:49');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `idperfil` int NOT NULL AUTO_INCREMENT,
  `perfil` varchar(45) DEFAULT NULL,
  `fechaAlta` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT '1',
  PRIMARY KEY (`idperfil`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'Usuario','2023-05-27 00:00:00',1),(2,'Cliente','2023-05-27 00:00:00',1),(3,'Admin','2023-05-27 00:00:00',1),(4,'Veterinario','2023-05-27 00:00:00',1);
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raza`
--

DROP TABLE IF EXISTS `raza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raza` (
  `idRaza` int NOT NULL AUTO_INCREMENT,
  `raza` varchar(100) DEFAULT NULL,
  `idEspecie` int DEFAULT NULL,
  `fechaRegistro` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT '1',
  PRIMARY KEY (`idRaza`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raza`
--

LOCK TABLES `raza` WRITE;
/*!40000 ALTER TABLE `raza` DISABLE KEYS */;
INSERT INTO `raza` VALUES (1,'Border collie',1,'2023-06-02 13:46:55',1),(2,'Caniche',1,'2023-06-02 13:46:55',1),(3,'Pastor alemán',1,'2023-06-02 13:46:55',1),(4,'Golden retriever',1,'2023-06-02 13:46:55',1),(5,'Dóberman pinscher',1,'2023-06-02 13:46:55',1),(6,'Perro ovejero de las Shetland',1,'2023-06-02 13:46:55',1),(7,'Labrador',1,'2023-06-02 13:46:55',1),(8,'Papillón',1,'2023-06-02 13:46:55',1),(9,'Rottweiler',1,'2023-06-02 13:46:55',1),(10,'Pastor ganadero australiano',1,'2023-06-02 13:46:55',1),(11,'Corgi Galés de Pembroke',1,'2023-06-02 13:46:55',1),(12,'Schnauzer mini',1,'2023-06-02 13:48:32',1),(13,'Springer spaniel inglés',1,'2023-06-02 13:48:32',1),(14,'Tervuren belga',1,'2023-06-02 14:01:01',1),(15,'Schipperke',1,'2023-06-02 14:01:01',1),(16,'Pastor belga',1,'2023-06-02 14:01:01',1),(17,'Collie',1,'2023-06-02 14:01:01',1),(18,'Keeshond',1,'2023-06-02 14:01:01',1),(19,'Pointer alemán de pelo corto',1,'2023-06-02 14:01:01',1),(20,'Retriever de pelo liso',1,'2023-06-02 14:01:01',1),(21,'Cocker spaniel inglés',1,'2023-06-02 14:01:01',1),(22,'Schnauzer',1,'2023-06-02 14:01:01',1),(23,'Spaniel bretón',1,'2023-06-02 14:01:01',1),(24,'Cocker spaniel',1,'2023-06-02 14:01:01',1),(25,'Retriever de Nueva Escocia',1,'2023-06-02 14:01:01',1),(26,'Braco de Weimar',1,'2023-06-02 14:01:01',1),(27,'Pastor belga malinois',1,'2023-06-02 14:01:01',1),(28,'Bernés de la montaña',1,'2023-06-02 14:01:01',1),(29,'Pomerano',1,'2023-06-02 14:01:01',1),(30,'Perro de agua irlandés',1,'2023-06-02 14:01:01',1),(31,'Vizsla',1,'2023-06-02 14:01:01',1),(32,'Corgi galés',1,'2023-06-02 14:01:01',1),(33,'Retriever de Chasepeake',1,'2023-06-02 14:01:01',1),(34,'Puli',1,'2023-06-02 14:01:01',1),(35,'Yorkshire terrier',1,'2023-06-02 14:01:01',1),(36,'Schnauzer gigante',1,'2023-06-02 14:01:01',1),(37,'Perro de aguas portugués',1,'2023-06-02 14:04:55',1),(38,'Airedale',1,'2023-06-02 14:04:55',1),(39,'Boyero de Flandes',1,'2023-06-02 14:04:55',1),(40,'Border terrier',1,'2023-06-02 14:04:55',1),(41,'Pastor de Brie',1,'2023-06-02 14:04:55',1),(42,'Springer spaniel galés',1,'2023-06-02 14:04:55',1),(43,'Manchester terrier',1,'2023-06-02 14:04:55',1),(44,'Samoyedo',1,'2023-06-02 14:04:55',1),(45,'Field spaniel',1,'2023-06-02 14:04:55',1),(46,'Terranova',1,'2023-06-02 14:04:55',1),(47,'Terrier australiano',1,'2023-06-02 14:04:55',1),(48,'American Staffordshire terrier',1,'2023-06-02 14:04:55',1),(49,'Setter escocés',1,'2023-06-02 14:04:55',1),(50,'Collie barbudo',1,'2023-06-02 14:04:55',1),(51,'Perro esquimal americano',1,'2023-06-02 14:04:55',1),(52,'Cairn terrier',1,'2023-06-02 14:04:55',1),(53,'Kerry blue terrier',1,'2023-06-02 14:04:55',1),(54,'Setter irlandés',1,'2023-06-02 14:04:55',1),(55,'Cazador de alces noruego',1,'2023-06-02 14:04:55',1),(56,'Affenpinscher',1,'2023-06-02 14:04:55',1),(57,'Silky terrier',1,'2023-06-02 14:04:55',1),(58,'Pinscher miniatura',1,'2023-06-02 14:04:55',1),(59,'Setter inglés',1,'2023-06-02 14:04:55',1),(60,'Podenco faraónico',1,'2023-06-02 14:04:55',1),(89,'Clumber spaniel',1,'2023-06-02 14:08:17',1),(90,'Terrier de Norwich',1,'2023-06-02 14:08:17',1),(91,'Dálmata',1,'2023-06-02 14:08:17',1),(92,'Soft coated wheaten terrier',1,'2023-06-02 14:08:17',1),(93,'Bedlington terrier',1,'2023-06-02 14:08:17',1),(94,'Terrier de pelo duro',1,'2023-06-02 14:08:17',1),(95,'Retriever de pelo rizado',1,'2023-06-02 14:08:17',1),(96,'Lobero irlandés',1,'2023-06-02 14:08:17',1),(97,'Kuvasz',1,'2023-06-02 14:08:17',1),(98,'Pastor australiano',1,'2023-06-02 14:08:17',1),(99,'Saluki',1,'2023-06-02 14:08:17',1),(100,'Spitz finlandés',1,'2023-06-02 14:08:17',1),(101,'Pointer',1,'2023-06-02 14:08:17',1),(102,'Cavalier King Charles spaniel',1,'2023-06-02 14:08:17',1),(103,'Pointer alemán de pelo corto',1,'2023-06-02 14:08:17',1),(104,'Perro negro y fuego para la caza del mapache',1,'2023-06-02 14:11:42',1),(105,'Perro de agua americano',1,'2023-06-02 14:11:42',1),(106,'Husky siberiano',1,'2023-06-02 14:11:42',1),(107,'Bichón Frisé',1,'2023-06-02 14:11:42',1),(108,'Toy spaniel inglés',1,'2023-06-02 14:11:42',1),(109,'Spaniel tibetano',1,'2023-06-02 14:11:42',1),(110,'Foxhound inglés',1,'2023-06-02 14:11:42',1),(111,'Perro nutria',1,'2023-06-02 14:11:42',1),(112,'Perro nutria americano',1,'2023-06-02 14:11:42',1),(113,'Galgo',1,'2023-06-02 14:11:42',1),(114,'Harrier',1,'2023-06-02 14:11:42',1),(115,'Parson Russel terrier',1,'2023-06-02 14:11:42',1),(116,'Griffon de pelo duro',1,'2023-06-02 14:11:42',1),(117,'Terrier blanco West Highland',1,'2023-06-02 14:11:42',1),(118,'Bichón habanero',1,'2023-06-02 14:11:42',1),(119,'Lebrel escocés',1,'2023-06-02 14:11:42',1),(120,'Bóxer',1,'2023-06-02 14:11:42',1),(121,'Gran danés',1,'2023-06-02 14:11:42',1),(122,'Teckel',1,'2023-06-02 14:11:42',1),(123,'Staffordshire bull terrier',1,'2023-06-02 14:11:42',1),(124,'Shiba Inu',1,'2023-06-02 14:11:42',1),(125,'Malamute de Alaska',1,'2023-06-02 14:13:47',1),(126,'Whippet',1,'2023-06-02 14:13:47',1),(127,'Shar pei',1,'2023-06-02 14:13:47',1),(128,'Fox terrier de pelo duro',1,'2023-06-02 14:13:47',1),(129,'Perro crestado rodesiano',1,'2023-06-02 14:13:47',1),(130,'Podenco ibicenco',1,'2023-06-02 14:13:47',1),(131,'Terrier de Gales',1,'2023-06-02 14:13:47',1),(132,'Terrier irlandés',1,'2023-06-02 14:13:47',1),(133,'Terrier de Bostón',1,'2023-06-02 14:13:47',1),(134,'Akita',1,'2023-06-02 14:13:47',1),(135,'Skye terrier',1,'2023-06-02 14:13:47',1),(136,'Terrier de Norfolk',1,'2023-06-02 14:13:47',1),(137,'Sealyham terrier',1,'2023-06-02 14:17:42',1),(138,'Carlino',1,'2023-06-02 14:17:42',1),(139,'Bulldog francés',1,'2023-06-02 14:17:42',1),(140,'Griffon de Bruselas',1,'2023-06-02 14:17:42',1),(141,'Terrier de Malta',1,'2023-06-02 14:17:42',1),(142,'Galgo italiano',1,'2023-06-02 14:17:42',1),(143,'Chinese crested',1,'2023-06-02 14:17:42',1),(144,'Dandie Dinmont terrier',1,'2023-06-02 14:17:42',1),(145,'Vendeano',1,'2023-06-02 14:17:42',1),(146,'Terrier tibetano',1,'2023-06-02 14:17:42',1),(147,'Spaniel japonés',1,'2023-06-02 14:17:42',1),(148,'Lakeland terrier',1,'2023-06-02 14:17:42',1),(149,'Pastor inglés antiguo',1,'2023-06-02 14:17:42',1),(150,'Perro de montaña de los Pirineos',1,'2023-06-02 14:17:42',1),(151,'Terrier escocés',1,'2023-06-02 14:17:42',1),(152,'San Bernardo',1,'2023-06-02 14:17:42',1),(153,'Bull terrier',1,'2023-06-02 14:17:42',1),(154,'Petit Basset Griffon',1,'2023-06-02 14:17:42',1),(155,'Basset Grifón Vendeano',1,'2023-06-02 14:17:42',1),(156,'Chihuahua',1,'2023-06-02 14:17:42',1),(157,'Lhasa apso',1,'2023-06-02 14:17:42',1),(158,'Mastín toro',1,'2023-06-02 14:17:42',1),(159,'Shih Tzu',1,'2023-06-02 14:20:44',1),(160,'Sabueso Basset',1,'2023-06-02 14:20:44',1),(161,'Mastín',1,'2023-06-02 14:20:44',1),(162,'Beagle',1,'2023-06-02 14:20:44',1),(163,'Pekinés',1,'2023-06-02 14:20:44',1),(164,'Sabueso',1,'2023-06-02 14:20:44',1),(165,'Borzoi',1,'2023-06-02 14:20:44',1),(166,'Chow chow',1,'2023-06-02 14:20:44',1),(167,'Bulldog',1,'2023-06-02 14:20:44',1),(168,'Basenji',1,'2023-06-02 14:20:44',1),(169,'Sabueso afgano',1,'2023-06-02 14:20:44',1),(170,'Siamés',2,'2023-06-02 14:52:20',1),(171,'Maine coon',2,'2023-06-02 14:52:20',1),(172,'Persa',2,'2023-06-02 14:52:20',1),(173,'Kohana',2,'2023-06-02 14:52:20',1),(174,'Británico de pelo corto',2,'2023-06-02 14:52:20',1),(175,'Elfo',2,'2023-06-02 14:52:20',1),(176,'Bambino',2,'2023-06-02 14:52:20',1),(177,'Levkoy ucraniano',2,'2023-06-02 14:52:20',1),(178,'Lykoi o gato lobo',2,'2023-06-02 14:52:20',1),(179,'Americano de pelo corto',2,'2023-06-02 14:52:20',1),(180,'Bengala o bengalí',2,'2023-06-02 14:52:20',1),(181,'Himalayo',2,'2023-06-02 14:52:20',1),(182,'Manx',2,'2023-06-02 14:52:20',1),(183,'Nebelung',2,'2023-06-02 14:52:20',1),(184,'Ceilán',2,'2023-06-02 14:53:04',1),(185,'Kurilian bobtail',2,'2023-06-02 15:31:49',1),(186,'Ragdoll',2,'2023-06-02 15:31:49',1),(187,'Thai o siamés tradicional',2,'2023-06-02 15:31:49',1),(188,'German rex o rex alemán',2,'2023-06-02 15:31:49',1),(189,'Don sphynx o donskoy',2,'2023-06-02 15:31:49',1),(190,'Neva masquerade',2,'2023-06-02 15:31:49',1),(191,'Van turco',2,'2023-06-02 15:31:49',1),(192,'Snowshoe',2,'2023-06-02 15:31:49',1),(193,'Chantilly-Tiffany',2,'2023-06-02 15:31:49',1),(194,'Colorpoint',2,'2023-06-02 15:31:49',1),(195,'Angora turco',2,'2023-06-02 15:31:49',1),(196,'Minskin',2,'2023-06-02 15:31:49',1),(197,'Habana',2,'2023-06-02 15:31:49',1),(198,'Común europeo',2,'2023-06-02 15:31:49',1),(199,'Ragamuffin',2,'2023-06-02 15:31:49',1),(200,'Ashera',2,'2023-06-02 15:31:49',1),(201,'Británico de pelo largo',2,'2023-06-02 15:31:49',1),(202,'Khao manee',2,'2023-06-02 15:31:49',1),(203,'Caracat',2,'2023-06-02 15:31:49',1),(204,'Singapura o singapur',2,'2023-06-02 15:31:49',1),(205,'Highland fold',2,'2023-06-02 15:38:48',1),(206,'Bobtail americano',2,'2023-06-02 15:38:48',1),(207,'Ural rex',2,'2023-06-02 15:38:48',1),(208,'Cymric',2,'2023-06-02 15:38:48',1),(209,'Skookum',2,'2023-06-02 15:38:48',1),(210,'Bobtail japonés',2,'2023-06-02 15:38:48',1),(211,'Toyger',2,'2023-06-02 15:38:48',1),(212,'Munchkin',2,'2023-06-02 15:38:48',1),(213,'American wirehair',2,'2023-06-02 15:38:48',1),(214,'Pixie bob',2,'2023-06-02 15:38:48',1),(215,'Tonkinés',2,'2023-06-02 15:38:48',1),(216,'LaPerm',2,'2023-06-02 15:38:48',1),(217,'Burmilla',2,'2023-06-02 15:38:48',1),(218,'Curl americano',2,'2023-06-02 15:38:48',1),(219,'Montés',2,'2023-06-02 15:38:48',1),(220,'Burmés',2,'2023-06-02 15:44:57',1),(221,'Chausie',2,'2023-06-02 15:44:57',1),(222,'Devon rex',2,'2023-06-02 15:44:57',1),(223,'Oriental de pelo largo o javanés',2,'2023-06-02 15:44:57',1),(224,'Scottish fold',2,'2023-06-02 15:44:57',1),(225,'Korat',2,'2023-06-02 15:44:57',1),(226,'Somalí',2,'2023-06-02 15:44:57',1),(227,'Sphynx o esfinge',2,'2023-06-02 15:44:57',1),(228,'Savannah',2,'2023-06-02 15:44:57',1),(229,'Cartujo o chartreux',2,'2023-06-02 15:44:57',1),(230,'Sokoke',2,'2023-06-02 15:44:57',1),(231,'Selkirk rex',2,'2023-06-02 15:44:57',1),(232,'Cornish rex',2,'2023-06-02 15:44:57',1),(233,'Ocelote',2,'2023-06-02 15:44:57',1),(234,'Peterbald',2,'2023-06-02 15:47:56',1),(235,'Oriental de pelo corto',2,'2023-06-02 15:47:56',1),(236,'Siberiano',2,'2023-06-02 22:15:30',1),(237,'Exótico de pelo corto',2,'2023-06-02 22:20:24',1),(238,'Birmano',2,'2023-06-02 22:20:24',1),(239,'Bosque de Noruega',2,'2023-06-02 22:20:24',1),(240,'Abisinio',2,'2023-06-02 22:20:24',1),(241,'Balinés',2,'2023-06-02 22:20:24',1),(242,'Azul ruso',2,'2023-06-02 22:22:51',1),(243,'Bombay',2,'2023-06-02 22:22:51',1),(244,'Mau egipcio',2,'2023-06-02 22:22:51',1),(245,'Australian Mist',2,'2023-06-02 22:22:51',1);
/*!40000 ALTER TABLE `raza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexo`
--

DROP TABLE IF EXISTS `sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sexo` (
  `idsexo` int NOT NULL AUTO_INCREMENT,
  `sexo` varchar(45) DEFAULT NULL,
  `fechaRegistro` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT '1',
  PRIMARY KEY (`idsexo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexo`
--

LOCK TABLES `sexo` WRITE;
/*!40000 ALTER TABLE `sexo` DISABLE KEYS */;
INSERT INTO `sexo` VALUES (1,'HEMBRA','2023-06-03 14:27:20',1),(2,'HEMBRA CASTRADA','2023-06-03 14:30:23',1),(3,'HEMBRA ENTERA','2023-06-03 14:30:23',1),(4,'MACHO','2023-06-03 14:30:23',1),(5,'MACHO CASTRADO','2023-06-03 14:30:23',1),(6,'MACHO ENTERO','2023-06-03 14:30:23',1);
/*!40000 ALTER TABLE `sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(100) DEFAULT NULL,
  `contrasena` varchar(100) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidoP` varchar(45) DEFAULT NULL,
  `apellidoM` varchar(45) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `fechaAlta` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT '1',
  `idPerfil` int DEFAULT '2',
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Siul09157','1','Luis Alfonso','Nino','Martinez','444444444','ejemplo',44,'luisk2ify@gmail.com','2023-05-19 10:56:58',1,1),(2,'SthePhelf','contra','Sthefany','Diaz','Perez','73648993','Hugo Sanchez',30,'sthefany@gmail.com','2023-05-27 11:14:41',1,1),(31,NULL,NULL,'VERONICA','HOHO','HAHA','3747848','SANTA FE',8,'vero@gmail.com','2023-07-08 10:35:00',1,2),(32,NULL,NULL,'VERONICA','HOHO','HAHA','3747848','SANTA FE',8,'vero@gmail.com','2023-07-09 14:39:17',1,2),(33,NULL,NULL,'EJEMPLO','LOPEZ','MTZ','3242343242','ASDAS',32,'luisk2ify@gmail.com','2023-07-09 14:43:38',1,2),(34,NULL,NULL,'EJEMPLO','LOPEZ','MTZ','3242343242','DFSD',32,'soldad_cowboy@hotmail.com','2023-07-09 14:44:22',1,2),(35,NULL,NULL,'FGDFG','NI;O','MTZ','3242343242','SDF',32,'soldad_cowboy@gmail.com','2023-07-09 14:45:43',1,2);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'katsenbd'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_campaña` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_campaña`(
IN v_nombre varchar(100),
IN v_fechaCam varchar(50)
)
BEGIN
   DECLARE MENSAJE VARCHAR(100) DEFAULT '';
   DECLARE EXITO INT DEFAULT 0;
   DECLARE MSG_ERROR VARCHAR(100) DEFAULT '';
   DECLARE RESULT INT DEFAULT 0;

	insert campaña (nombre,fechaCampaña) values(v_nombre,v_fechaCam);
    
    select 1, @MSG_ERROR ,@MENSAJE ;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_client` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_client`(
	IN v_nombre varchar(100),
	IN v_apellidoP varchar(100),
	IN v_apellidoM varchar(100),
	IN v_telefono varchar(10),
	IN v_direccion varchar(100),
	IN v_edad INT,
	IN v_email varchar(100)
)
BEGIN
	
     DECLARE MENSAJE VARCHAR(100) DEFAULT '';
   DECLARE EXITO INT DEFAULT 0;
   DECLARE MSG_ERROR VARCHAR(100) DEFAULT '';
   DECLARE RESULT INT DEFAULT 0;

	INSERT INTO usuario (nombreUsuario, contrasena, nombre, apellidoP, apellidoM, telefono, direccion, edad, email) 
    VALUES(NULL,NULL,UPPER(v_nombre),UPPER(v_apellidoP),UPPER(v_apellidoM),v_telefono,UPPER(v_direccion),v_edad,v_email);
   
   select 1, @MSG_ERROR ,@MENSAJE ;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_paciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_paciente`(
 IN v_nombre varchar(100),
 IN v_Peso INT,
 IN v_idSexo INT,
 IN v_idEspecie INT,
 IN v_idRaza INT,
 IN v_fechaNacimiento varchar(100),
 IN v_color varchar(100),
 IN v_img varchar(100),
 IN v_rasgosParticulares varchar(150),
 IN v_idCliente INT
)
BEGIN

   DECLARE MENSAJE VARCHAR(100) DEFAULT '';
   DECLARE EXITO INT DEFAULT 0;
   DECLARE MSG_ERROR VARCHAR(100) DEFAULT '';
   DECLARE RESULT INT DEFAULT 0;
   DECLARE V_IDPAC INT DEFAULT 0;
   DECLARE V_IDEXP INT DEFAULT 0;
   DECLARE V_FORMAT VARCHAR(100) DEFAULT "";
   
   
   insert into paciente (nombre,peso,idSexo,idEspecie,idRaza,fechaNacimiento,color,img, rasgosParticulares, idCliente,idExpediente) 
   values(UPPER(v_nombre),v_peso,v_idSexo,v_idEspecie,v_idRaza,now(),v_color,v_img, v_rasgosParticulares, v_idCliente,0);
   SET V_IDPAC = (SELECT LAST_INSERT_ID());
   
   SET RESULT =  (SELECT idExpediente from paciente
					 WHERE idCliente  = v_idCliente
					 AND estado = 1
					 Limit 1);
	if RESULT <> 0 
    THEN 
    
		UPDATE paciente SET
         idExpediente =  RESULT
         WHERE idPaciente = V_IDPAC;
    
		 
	ELSE
         SET V_FORMAT = (SELECT CONCAT(DATE_FORMAT(NOW(), "%Y%m%d"),"-",V_IDPAC));
        
         INSERT expediente(noExpediente) VALUES (V_FORMAT);
         SET V_IDEXP = (SELECT LAST_INSERT_ID());
        
         UPDATE paciente SET
         idExpediente =  V_IDEXP
         WHERE idPaciente = V_IDPAC;
    END IF;
   
   
	
    select 1, @MSG_ERROR ,@MENSAJE ;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_usuario`(
IN v_nombreUsuario varchar(100),
IN v_contrasena varchar(100),
IN v_nombre varchar(100),
IN v_apellidoP varchar(100),
IN v_apellidoM varchar(100),
IN v_telefono INT,
IN v_direccion varchar(100),
IN v_edad INT,
IN v_email varchar(100),
IN v_perfil INT
)
BEGIN

   DECLARE MENSAJE VARCHAR(100) DEFAULT '';
   DECLARE EXITO INT DEFAULT 0;
   DECLARE MSG_ERROR VARCHAR(100) DEFAULT '';
   DECLARE RESULT INT DEFAULT 0;

	INSERT INTO usuario (nombreUsuario, contrasena, nombre, apellidoP, apellidoM, telefono, direccion, edad, email, fechaAlta, status, idPerfil) 
    VALUES(v_nombreUsuario,v_contrasena,v_nombre,v_apellidoP,v_apellidoM,v_telefono,v_direccion,v_edad,v_email,now(),1,v_perfil);
   
   select 1, @MSG_ERROR ,@MENSAJE ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_combo_raza` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_combo_raza`(
IN v_id_especie INT
)
BEGIN
   
   SELECT idRaza, raza, idEspecie FROM raza
	WHERE idEspecie = v_id_especie
	AND status = 1;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_pet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_pet`(
IN v_id INT
)
BEGIN

  UPDATE paciente SET
		estado  = 0
	WHERE
		idPaciente = v_id;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_user`(
IN v_id INT
)
BEGIN

	 UPDATE usuario SET
		status = 0
	WHERE idUsuario = v_id;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_campaña` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_campaña`(
)
BEGIN

select idCampaña,nombre,fechaCampaña,fechaAlta from campaña where estado = 1 order by fechaAlta desc;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_clientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_clientes`(
)
BEGIN

	SELECT 
		idUsuario as idCliente, 
        concat(nombre, " ", apellidoP, " " , apellidoM) as cliente,
        telefono ,
        direccion,
        email,
		edad,
		DATE_FORMAT(fechaAlta, '%m/%d/%Y %H:%i') as fechaAlta
        FROM usuario
    WHERE status = 1
    AND idPerfil = 2
    ORDER BY fechaAlta DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_especie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_especie`(
)
BEGIN

	 SELECT idEspecie, especie FROM especie
     WHERE status = 1;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_pet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_pet`(
IN v_id INT
)
BEGIN

	   SELECT P.idPaciente, P.nombre, P.peso, S.sexo, E.especie, R.raza, DATE_FORMAT(P.fechaNacimiento, '%m/%d/%Y %H:%i') as fechaNacimiento, P.color, P.img, concat(C.nombre," " , C.apellidoP," ", C.apellidoM) as cliente
	   FROM paciente as P
	   INNER JOIN sexo as S
	   ON P.idsexo = S.idsexo
	   INNER JOIN especie E
	   ON E.idEspecie = P.idEspecie
	   INNER JOIN raza as R
	   ON P.idRaza = R.idRaza
	   INNER JOIN usuario as C
	   ON P.idCliente =  C.idUsuario
	   WHERE P.estado = 1
       AND idPaciente = v_id;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_pets` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_pets`()
BEGIN
   SELECT P.idPaciente, P.nombre, P.peso, S.sexo, E.especie, R.raza, DATE_FORMAT(P.fechaNacimiento, '%m/%d/%Y %H:%i') as fechaNacimiento, P.color, P.img, concat(C.nombre," " , C.apellidoP," ", C.apellidoM) as cliente
   FROM paciente as P
   INNER JOIN sexo as S
   ON P.idsexo = S.idsexo
   INNER JOIN especie E
   ON E.idEspecie = P.idEspecie
   INNER JOIN raza as R
   ON P.idRaza = R.idRaza
   INNER JOIN usuario as C
   ON P.idCliente =  C.idUsuario
   WHERE P.estado = 1;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_raza` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_raza`(
IN v_idEspecie INT
)
BEGIN
   
   SELECT idRaza, raza FROM raza
	WHERE idEspecie = v_idEspecie
	AND status = 1;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_sexo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_sexo`(
)
BEGIN

	 SELECT idSexo, sexo FROM sexo
     WHERE status = 1;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_usuario`(
IN v_id INT
)
BEGIN

	SELECT nombreUsuario,nombre,apellidoP,apellidoM,telefono,direccion,edad,email
	FROM usuario
	WHERE status = 1
    AND idUsuario = v_id;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_usuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_usuarios`(
)
BEGIN

	SELECT nombreUsuario,nombre,apellidoP,apellidoM,telefono,direccion,edad,email
	FROM usuario
	WHERE status = 1;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Login`(
 IN v_nombreUsuario varchar(100),
 IN v_contrasena varchar(100)
)
BEGIN

   DECLARE MENSAJE VARCHAR(100) DEFAULT '';
   DECLARE EXITO INT DEFAULT 0;
   DECLARE MSG_ERROR VARCHAR(100) DEFAULT '';
   DECLARE RESULT INT DEFAULT 0;
   
    
   SET @RESULT =  (SELECT count(*) FROM usuario
					   WHERE nombreUsuario  = v_nombreUsuario
					   AND contrasena = v_contrasena
					   AND status = 1
                       AND idPerfil = 1);
   
   IF @RESULT > 0 THEN
	   SET @EXITO = 1;
	   SET @MSG_ERROR = "";
	   SET @MENSAJE  = "Exito al iniciar sesión";
	
	   SELECT @EXITO as EXITO, @MSG_ERROR as MSG_ERROR ,@MENSAJE as MENSAJE, idUsuario,nombreUsuario  FROM usuario
	   WHERE nombreUsuario  = v_nombreUsuario
	   AND contrasena = v_contrasena
	   AND status = 1;
       
	ELSE
		SET @EXITO = 0;
        SET @MSG_ERROR = "";
        SET @MENSAJE  = "Datos incorrectos al iniciar sesión";
	    select @EXITO as EXITO, @MSG_ERROR as MSG_ERROR ,@MENSAJE as MENSAJE;
       
	END IF;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_paciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_paciente`(
 IN v_id INT,
 IN v_nombre varchar(100),
 IN v_peso INT,
 IN v_sexo varchar(100),
 IN v_especie varchar(100),
 IN v_fechaNacimiento varchar(100),
 IN v_color varchar(100),
 IN v_img varchar(100)
)
BEGIN

   DECLARE MENSAJE VARCHAR(100) DEFAULT '';
   DECLARE EXITO INT DEFAULT 0;
   DECLARE MSG_ERROR VARCHAR(100) DEFAULT '';
   DECLARE RESULT INT DEFAULT 0;
   
   
   UPDATE paciente SET 
		nombre = v_nombre,
		peso = v_peso,
		sexo =  v_sexo,
		especie = v_especie,
		fechaNacimiento = v_fechaNacimiento,
		color = v_color,
		img = v_img
	WHERE
		idPaciente = v_id;

	
    select 1, @MSG_ERROR ,@MENSAJE ;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_usuario`(
IN v_telefono INT,
IN v_direccion varchar(100),
IN v_edad INT,
IN v_id INT
)
BEGIN

   DECLARE MENSAJE VARCHAR(100) DEFAULT '';
   DECLARE EXITO INT DEFAULT 0;
   DECLARE MSG_ERROR VARCHAR(100) DEFAULT '';
   DECLARE RESULT INT DEFAULT 0;


	UPDATE usuario SET
	telefono = v_telefono,
	direccion = v_direccion,
	edad = v_edad
	WHERE idUsuario = v_id
	AND status = 1;


   select 1, @MSG_ERROR ,@MENSAJE ;
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

-- Dump completed on 2023-07-11 12:32:12
