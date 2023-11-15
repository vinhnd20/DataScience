-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: fake_voice_detection
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `label`
--

USE pthttm;

DROP TABLE IF EXISTS `label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `label` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `label`
--

LOCK TABLES `label` WRITE;
/*!40000 ALTER TABLE `label` DISABLE KEYS */;
INSERT INTO `label` VALUES (1,'Real voice',1),(2,'Fake voice',0);
/*!40000 ALTER TABLE `label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `training_date` date NOT NULL,
  `accuracy` float DEFAULT NULL,
  `precision` float DEFAULT NULL,
  `recall` float DEFAULT NULL,
  `f1_score` float DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  `sample_quantity` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (1,'model55','data/model/model1.keras','2023-10-24',1,1,1,1,'',1,100),(2,'model2','data/model/model2.keras','2023-10-24',0.64,0.5,1,0.666667,'',0,100),(3,'model3','data/model/model3.keras','2023-10-24',0.55,0.470588,1,0.64,'',0,100),(4,'model4','data/model/model4.keras','2023-10-24',1,1,1,1,'',0,100),(5,'model5','data/model/model5.keras','2023-10-24',0.933333,0.833333,1,0.909091,'',0,100),(6,'model6','data/model/model6.keras','2023-10-24',0.933333,0.833333,1,0.909091,'',0,100),(8,'model8','data/model/model8.keras','2023-10-24',0.933333,0.833333,1,0.909091,'',0,100),(10,'model10','data/model/model10.keras','2023-10-25',0.933333,0.833333,1,0.909091,'',0,100),(11,'model11','data/model/model11.keras','2023-11-03',0.933333,0.833333,1,0.909091,'',0,100),(12,'model12','data/model/model12.keras','2023-11-03',0.933333,0.833333,1,0.909091,'',0,100),(13,'model13','data/model/model13.keras','2023-11-03',0.928571,0.875,1,0.933333,'',0,92),(16,'model16','data/model/model16.keras','2023-11-08',0.933333,0.857143,1,0.923077,'',0,96),(17,'model17','data/model/model17.keras','2023-11-08',0.933333,0.833333,1,0.909091,'',0,100),(18,'model18','data/model/model18.keras','2023-11-08',0.933333,0.857143,1,0.923077,'',0,96);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_sample`
--

DROP TABLE IF EXISTS `model_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_sample` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Sampleid` int NOT NULL,
  `Modelid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKModel_Samp435092` (`Sampleid`),
  KEY `FKModel_Samp678685` (`Modelid`),
  CONSTRAINT `FKModel_Samp435092` FOREIGN KEY (`Sampleid`) REFERENCES `sample` (`id`),
  CONSTRAINT `FKModel_Samp678685` FOREIGN KEY (`Modelid`) REFERENCES `model` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1370 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_sample`
--

LOCK TABLES `model_sample` WRITE;
/*!40000 ALTER TABLE `model_sample` DISABLE KEYS */;
INSERT INTO `model_sample` VALUES (1,156,1),(2,157,1),(3,158,1),(4,159,1),(5,160,1),(6,161,1),(7,162,1),(8,163,1),(9,164,1),(10,165,1),(11,166,1),(12,167,1),(13,168,1),(14,169,1),(15,170,1),(16,171,1),(17,172,1),(18,173,1),(19,174,1),(20,175,1),(21,176,1),(22,177,1),(23,178,1),(24,179,1),(25,180,1),(26,181,1),(27,182,1),(28,183,1),(29,184,1),(30,185,1),(31,186,1),(32,187,1),(33,188,1),(34,189,1),(35,190,1),(36,191,1),(37,192,1),(38,193,1),(39,194,1),(40,195,1),(41,196,1),(42,197,1),(43,198,1),(44,199,1),(45,200,1),(46,201,1),(47,202,1),(48,203,1),(49,204,1),(50,205,1),(51,206,1),(52,207,1),(53,208,1),(54,209,1),(55,210,1),(56,211,1),(57,212,1),(58,213,1),(59,214,1),(60,215,1),(61,216,1),(62,217,1),(63,218,1),(64,219,1),(65,220,1),(66,221,1),(67,222,1),(68,223,1),(69,224,1),(70,225,1),(71,226,1),(72,227,1),(73,228,1),(74,229,1),(75,230,1),(76,231,1),(77,232,1),(78,233,1),(79,234,1),(80,235,1),(81,236,1),(82,237,1),(83,238,1),(84,239,1),(85,240,1),(86,241,1),(87,242,1),(88,243,1),(89,244,1),(90,245,1),(91,246,1),(92,247,1),(93,248,1),(94,249,1),(95,250,1),(96,251,1),(97,252,1),(98,253,1),(99,254,1),(100,255,1),(101,156,2),(102,157,2),(103,158,2),(104,159,2),(105,160,2),(106,161,2),(107,162,2),(108,163,2),(109,164,2),(110,165,2),(111,166,2),(112,167,2),(113,168,2),(114,169,2),(115,170,2),(116,171,2),(117,172,2),(118,173,2),(119,174,2),(120,175,2),(121,176,2),(122,177,2),(123,178,2),(124,179,2),(125,180,2),(126,181,2),(127,182,2),(128,183,2),(129,184,2),(130,185,2),(131,186,2),(132,187,2),(133,188,2),(134,189,2),(135,190,2),(136,191,2),(137,192,2),(138,193,2),(139,194,2),(140,195,2),(141,196,2),(142,197,2),(143,198,2),(144,199,2),(145,200,2),(146,201,2),(147,202,2),(148,203,2),(149,204,2),(150,205,2),(151,206,2),(152,207,2),(153,208,2),(154,209,2),(155,210,2),(156,211,2),(157,212,2),(158,213,2),(159,214,2),(160,215,2),(161,216,2),(162,217,2),(163,218,2),(164,219,2),(165,220,2),(166,221,2),(167,222,2),(168,223,2),(169,224,2),(170,225,2),(171,226,2),(172,227,2),(173,228,2),(174,229,2),(175,230,2),(176,231,2),(177,232,2),(178,233,2),(179,234,2),(180,235,2),(181,236,2),(182,237,2),(183,238,2),(184,239,2),(185,240,2),(186,241,2),(187,242,2),(188,243,2),(189,244,2),(190,245,2),(191,246,2),(192,247,2),(193,248,2),(194,249,2),(195,250,2),(196,251,2),(197,252,2),(198,253,2),(199,254,2),(200,255,2),(201,156,3),(202,157,3),(203,158,3),(204,159,3),(205,160,3),(206,161,3),(207,162,3),(208,163,3),(209,164,3),(210,165,3),(211,166,3),(212,167,3),(213,168,3),(214,169,3),(215,170,3),(216,171,3),(217,172,3),(218,173,3),(219,174,3),(220,175,3),(221,176,3),(222,177,3),(223,178,3),(224,179,3),(225,180,3),(226,181,3),(227,182,3),(228,183,3),(229,184,3),(230,185,3),(231,186,3),(232,187,3),(233,188,3),(234,189,3),(235,190,3),(236,191,3),(237,192,3),(238,193,3),(239,194,3),(240,195,3),(241,196,3),(242,197,3),(243,198,3),(244,199,3),(245,200,3),(246,201,3),(247,202,3),(248,203,3),(249,204,3),(250,205,3),(251,206,3),(252,207,3),(253,208,3),(254,209,3),(255,210,3),(256,211,3),(257,212,3),(258,213,3),(259,214,3),(260,215,3),(261,216,3),(262,217,3),(263,218,3),(264,219,3),(265,220,3),(266,221,3),(267,222,3),(268,223,3),(269,224,3),(270,225,3),(271,226,3),(272,227,3),(273,228,3),(274,229,3),(275,230,3),(276,231,3),(277,232,3),(278,233,3),(279,234,3),(280,235,3),(281,236,3),(282,237,3),(283,238,3),(284,239,3),(285,240,3),(286,241,3),(287,242,3),(288,243,3),(289,244,3),(290,245,3),(291,246,3),(292,247,3),(293,248,3),(294,249,3),(295,250,3),(296,251,3),(297,252,3),(298,253,3),(299,254,3),(300,255,3),(301,156,4),(302,157,4),(303,158,4),(304,159,4),(305,160,4),(306,161,4),(307,162,4),(308,163,4),(309,164,4),(310,165,4),(311,166,4),(312,167,4),(313,168,4),(314,169,4),(315,170,4),(316,171,4),(317,172,4),(318,173,4),(319,174,4),(320,175,4),(321,176,4),(322,177,4),(323,178,4),(324,179,4),(325,180,4),(326,181,4),(327,182,4),(328,183,4),(329,184,4),(330,185,4),(331,186,4),(332,187,4),(333,188,4),(334,189,4),(335,190,4),(336,191,4),(337,192,4),(338,193,4),(339,194,4),(340,195,4),(341,196,4),(342,197,4),(343,198,4),(344,199,4),(345,200,4),(346,201,4),(347,202,4),(348,203,4),(349,204,4),(350,205,4),(351,206,4),(352,207,4),(353,208,4),(354,209,4),(355,210,4),(356,211,4),(357,212,4),(358,213,4),(359,214,4),(360,215,4),(361,216,4),(362,217,4),(363,218,4),(364,219,4),(365,220,4),(366,221,4),(367,222,4),(368,223,4),(369,224,4),(370,225,4),(371,226,4),(372,227,4),(373,228,4),(374,229,4),(375,230,4),(376,231,4),(377,232,4),(378,233,4),(379,234,4),(380,235,4),(381,236,4),(382,237,4),(383,238,4),(384,239,4),(385,240,4),(386,241,4),(387,242,4),(388,243,4),(389,244,4),(390,245,4),(391,246,4),(392,247,4),(393,248,4),(394,249,4),(395,250,4),(396,251,4),(397,252,4),(398,253,4),(399,254,4),(400,255,4),(401,156,5),(402,157,5),(403,158,5),(404,159,5),(405,160,5),(406,161,5),(407,162,5),(408,163,5),(409,164,5),(410,165,5),(411,166,5),(412,167,5),(413,168,5),(414,169,5),(415,170,5),(416,171,5),(417,172,5),(418,173,5),(419,174,5),(420,175,5),(421,176,5),(422,177,5),(423,178,5),(424,179,5),(425,180,5),(426,181,5),(427,182,5),(428,183,5),(429,184,5),(430,185,5),(431,186,5),(432,187,5),(433,188,5),(434,189,5),(435,190,5),(436,191,5),(437,192,5),(438,193,5),(439,194,5),(440,195,5),(441,196,5),(442,197,5),(443,198,5),(444,199,5),(445,200,5),(446,201,5),(447,202,5),(448,203,5),(449,204,5),(450,205,5),(451,206,5),(452,207,5),(453,208,5),(454,209,5),(455,210,5),(456,211,5),(457,212,5),(458,213,5),(459,214,5),(460,215,5),(461,216,5),(462,217,5),(463,218,5),(464,219,5),(465,220,5),(466,221,5),(467,222,5),(468,223,5),(469,224,5),(470,225,5),(471,226,5),(472,227,5),(473,228,5),(474,229,5),(475,230,5),(476,231,5),(477,232,5),(478,233,5),(479,234,5),(480,235,5),(481,236,5),(482,237,5),(483,238,5),(484,239,5),(485,240,5),(486,241,5),(487,242,5),(488,243,5),(489,244,5),(490,245,5),(491,246,5),(492,247,5),(493,248,5),(494,249,5),(495,250,5),(496,251,5),(497,252,5),(498,253,5),(499,254,5),(500,255,5),(501,156,8),(502,157,8),(503,158,8),(504,159,8),(505,160,8),(506,161,8),(507,162,8),(508,163,8),(509,164,8),(510,165,8),(511,166,8),(512,167,8),(513,168,8),(514,169,8),(515,170,8),(516,171,8),(517,172,8),(518,173,8),(519,174,8),(520,175,8),(521,176,8),(522,177,8),(523,178,8),(524,179,8),(525,180,8),(526,181,8),(527,182,8),(528,183,8),(529,184,8),(530,185,8),(531,186,8),(532,187,8),(533,188,8),(534,189,8),(535,190,8),(536,191,8),(537,192,8),(538,193,8),(539,194,8),(540,195,8),(541,196,8),(542,197,8),(543,198,8),(544,199,8),(545,200,8),(546,201,8),(547,202,8),(548,203,8),(549,204,8),(550,205,8),(551,206,8),(552,207,8),(553,208,8),(554,209,8),(555,210,8),(556,211,8),(557,212,8),(558,213,8),(559,214,8),(560,215,8),(561,216,8),(562,217,8),(563,218,8),(564,219,8),(565,220,8),(566,221,8),(567,222,8),(568,223,8),(569,224,8),(570,225,8),(571,226,8),(572,227,8),(573,228,8),(574,229,8),(575,230,8),(576,231,8),(577,232,8),(578,233,8),(579,234,8),(580,235,8),(581,236,8),(582,237,8),(583,238,8),(584,239,8),(585,240,8),(586,241,8),(587,242,8),(588,243,8),(589,244,8),(590,245,8),(591,246,8),(592,247,8),(593,248,8),(594,249,8),(595,250,8),(596,251,8),(597,252,8),(598,253,8),(599,254,8),(600,255,8),(982,156,16),(983,158,16),(984,160,16),(985,161,16),(986,162,16),(987,163,16),(988,164,16),(989,165,16),(990,166,16),(991,167,16),(992,168,16),(993,169,16),(994,170,16),(995,171,16),(996,172,16),(997,173,16),(998,174,16),(999,175,16),(1000,176,16),(1001,177,16),(1002,178,16),(1003,179,16),(1004,180,16),(1005,181,16),(1006,182,16),(1007,183,16),(1008,184,16),(1009,185,16),(1010,186,16),(1011,187,16),(1012,188,16),(1013,189,16),(1014,190,16),(1015,191,16),(1016,192,16),(1017,193,16),(1018,194,16),(1019,195,16),(1020,196,16),(1021,197,16),(1022,198,16),(1023,199,16),(1024,200,16),(1025,201,16),(1026,202,16),(1027,203,16),(1028,204,16),(1029,205,16),(1030,206,16),(1031,207,16),(1032,208,16),(1033,209,16),(1034,210,16),(1035,211,16),(1036,212,16),(1037,213,16),(1038,214,16),(1039,215,16),(1040,216,16),(1041,217,16),(1042,218,16),(1043,219,16),(1044,220,16),(1045,221,16),(1046,222,16),(1047,223,16),(1048,224,16),(1049,225,16),(1050,226,16),(1051,227,16),(1052,228,16),(1053,229,16),(1054,230,16),(1055,231,16),(1056,232,16),(1057,233,16),(1058,234,16),(1059,235,16),(1060,236,16),(1061,237,16),(1062,238,16),(1063,239,16),(1064,240,16),(1065,241,16),(1066,242,16),(1067,243,16),(1068,244,16),(1069,245,16),(1070,246,16),(1071,247,16),(1072,248,16),(1073,249,16),(1074,250,16),(1075,251,16),(1076,254,16),(1077,255,16),(1078,156,17),(1079,157,17),(1080,158,17),(1081,159,17),(1082,160,17),(1083,161,17),(1084,162,17),(1085,163,17),(1086,164,17),(1087,165,17),(1088,166,17),(1089,167,17),(1090,168,17),(1091,169,17),(1092,170,17),(1093,171,17),(1094,172,17),(1095,173,17),(1096,174,17),(1097,175,17),(1098,176,17),(1099,177,17),(1100,178,17),(1101,179,17),(1102,180,17),(1103,181,17),(1104,182,17),(1105,183,17),(1106,184,17),(1107,185,17),(1108,186,17),(1109,187,17),(1110,188,17),(1111,189,17),(1112,190,17),(1113,191,17),(1114,192,17),(1115,193,17),(1116,194,17),(1117,195,17),(1118,196,17),(1119,197,17),(1120,198,17),(1121,199,17),(1122,200,17),(1123,201,17),(1124,202,17),(1125,203,17),(1126,204,17),(1127,205,17),(1128,206,17),(1129,207,17),(1130,208,17),(1131,209,17),(1132,210,17),(1133,211,17),(1134,212,17),(1135,213,17),(1136,214,17),(1137,215,17),(1138,216,17),(1139,217,17),(1140,218,17),(1141,219,17),(1142,220,17),(1143,221,17),(1144,222,17),(1145,223,17),(1146,224,17),(1147,225,17),(1148,226,17),(1149,227,17),(1150,228,17),(1151,229,17),(1152,230,17),(1153,231,17),(1154,232,17),(1155,233,17),(1156,234,17),(1157,235,17),(1158,236,17),(1159,237,17),(1160,238,17),(1161,239,17),(1162,240,17),(1163,241,17),(1164,242,17),(1165,243,17),(1166,244,17),(1167,245,17),(1168,246,17),(1169,247,17),(1170,248,17),(1171,249,17),(1172,250,17),(1173,251,17),(1174,252,17),(1175,253,17),(1176,254,17),(1177,255,17),(1274,156,18),(1275,157,18),(1276,158,18),(1277,160,18),(1278,161,18),(1279,162,18),(1280,163,18),(1281,164,18),(1282,165,18),(1283,166,18),(1284,167,18),(1285,168,18),(1286,169,18),(1287,170,18),(1288,171,18),(1289,172,18),(1290,173,18),(1291,174,18),(1292,175,18),(1293,176,18),(1294,178,18),(1295,179,18),(1296,180,18),(1297,181,18),(1298,182,18),(1299,183,18),(1300,184,18),(1301,185,18),(1302,186,18),(1303,187,18),(1304,188,18),(1305,189,18),(1306,190,18),(1307,191,18),(1308,192,18),(1309,193,18),(1310,194,18),(1311,195,18),(1312,196,18),(1313,197,18),(1314,198,18),(1315,199,18),(1316,200,18),(1317,201,18),(1318,202,18),(1319,203,18),(1320,204,18),(1321,205,18),(1322,206,18),(1323,207,18),(1324,208,18),(1325,209,18),(1326,210,18),(1327,211,18),(1328,212,18),(1329,213,18),(1330,214,18),(1331,215,18),(1332,216,18),(1333,217,18),(1334,218,18),(1335,219,18),(1336,220,18),(1337,221,18),(1338,222,18),(1339,223,18),(1340,224,18),(1341,225,18),(1342,226,18),(1343,227,18),(1344,228,18),(1345,229,18),(1346,230,18),(1347,231,18),(1348,232,18),(1349,233,18),(1350,234,18),(1351,235,18),(1352,238,18),(1353,239,18),(1354,240,18),(1355,241,18),(1356,242,18),(1357,243,18),(1358,244,18),(1359,245,18),(1360,246,18),(1361,247,18),(1362,248,18),(1363,249,18),(1364,250,18),(1365,251,18),(1366,252,18),(1367,253,18),(1368,254,18),(1369,255,18);
/*!40000 ALTER TABLE `model_sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample`
--

DROP TABLE IF EXISTS `sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sample` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `Labelid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKSample178223` (`Labelid`),
  CONSTRAINT `FKSample178223` FOREIGN KEY (`Labelid`) REFERENCES `label` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample`
--

LOCK TABLES `sample` WRITE;
/*!40000 ALTER TABLE `sample` DISABLE KEYS */;
INSERT INTO `sample` VALUES (156,'speaker5_7.wav','data/wav/real_voice/speaker5_7.wav',1,1),(157,'speaker2_9.wav','data/wav/real_voice/speaker2_9.wav',1,1),(158,'speaker3_1.wav','data/wav/real_voice/speaker3_1.wav',1,1),(159,'speaker1_5.wav','data/wav/real_voice/speaker1_5.wav',1,1),(160,'speaker4_1.wav','data/wav/real_voice/speaker4_1.wav',1,1),(161,'speaker4_8.wav','data/wav/real_voice/speaker4_8.wav',1,1),(162,'speaker3_10.wav','data/wav/real_voice/speaker3_10.wav',1,1),(163,'speaker2_8.wav','data/wav/real_voice/speaker2_8.wav',1,1),(164,'speaker5_6.wav','data/wav/real_voice/speaker5_6.wav',1,1),(165,'speaker2_6.wav','data/wav/real_voice/speaker2_6.wav',1,1),(166,'speaker1_9.wav','data/wav/real_voice/speaker1_9.wav',1,1),(167,'speaker2_1.wav','data/wav/real_voice/speaker2_1.wav',1,1),(168,'speaker5_9.wav','data/wav/real_voice/speaker5_9.wav',1,1),(169,'speaker4_3.wav','data/wav/real_voice/speaker4_3.wav',1,1),(170,'speaker3_9.wav','data/wav/real_voice/speaker3_9.wav',1,1),(171,'speaker3_8.wav','data/wav/real_voice/speaker3_8.wav',1,1),(172,'speaker3_5.wav','data/wav/real_voice/speaker3_5.wav',1,1),(173,'speaker5_8.wav','data/wav/real_voice/speaker5_8.wav',1,1),(174,'speaker4_9.wav','data/wav/real_voice/speaker4_9.wav',1,1),(175,'speaker1_6.wav','data/wav/real_voice/speaker1_6.wav',1,1),(176,'speaker3_3.wav','data/wav/real_voice/speaker3_3.wav',1,1),(177,'speaker1_1.wav','data/wav/real_voice/speaker1_1.wav',1,1),(178,'speaker2_4.wav','data/wav/real_voice/speaker2_4.wav',1,1),(179,'speaker4_7.wav','data/wav/real_voice/speaker4_7.wav',1,1),(180,'speaker5_10.wav','data/wav/real_voice/speaker5_10.wav',1,1),(181,'speaker1_2.wav','data/wav/real_voice/speaker1_2.wav',1,1),(182,'speaker3_2.wav','data/wav/real_voice/speaker3_2.wav',1,1),(183,'speaker1_4.wav','data/wav/real_voice/speaker1_4.wav',1,1),(184,'speaker4_6.wav','data/wav/real_voice/speaker4_6.wav',1,1),(185,'speaker4_2.wav','data/wav/real_voice/speaker4_2.wav',1,1),(186,'speaker3_4.wav','data/wav/real_voice/speaker3_4.wav',1,1),(187,'speaker4_5.wav','data/wav/real_voice/speaker4_5.wav',1,1),(188,'speaker4_10.wav','data/wav/real_voice/speaker4_10.wav',1,1),(189,'speaker3_6.wav','data/wav/real_voice/speaker3_6.wav',1,1),(190,'speaker1_3.wav','data/wav/real_voice/speaker1_3.wav',1,1),(191,'speaker2_2.wav','data/wav/real_voice/speaker2_2.wav',1,1),(192,'speaker5_4.wav','data/wav/real_voice/speaker5_4.wav',1,1),(193,'speaker5_2.wav','data/wav/real_voice/speaker5_2.wav',1,1),(194,'speaker1_8.wav','data/wav/real_voice/speaker1_8.wav',1,1),(195,'speaker5_1.wav','data/wav/real_voice/speaker5_1.wav',1,1),(196,'speaker2_5.wav','data/wav/real_voice/speaker2_5.wav',1,1),(197,'speaker4_4.wav','data/wav/real_voice/speaker4_4.wav',1,1),(198,'speaker2_3.wav','data/wav/real_voice/speaker2_3.wav',1,1),(199,'speaker3_7.wav','data/wav/real_voice/speaker3_7.wav',1,1),(200,'speaker1_10.wav','data/wav/real_voice/speaker1_10.wav',1,1),(201,'speaker2_7.wav','data/wav/real_voice/speaker2_7.wav',1,1),(202,'speaker1_7.wav','data/wav/real_voice/speaker1_7.wav',1,1),(203,'speaker5_3.wav','data/wav/real_voice/speaker5_3.wav',1,1),(204,'speaker2_10.wav','data/wav/real_voice/speaker2_10.wav',1,1),(205,'speaker5_5.wav','data/wav/real_voice/speaker5_5.wav',1,1),(206,'fake2_6.wav','data/wav/fake_voice/fake2_6.wav',1,2),(207,'fake1_7.wav','data/wav/fake_voice/fake1_7.wav',1,2),(208,'fake2_1.wav','data/wav/fake_voice/fake2_1.wav',1,2),(209,'fake1_4.wav','data/wav/fake_voice/fake1_4.wav',1,2),(210,'fake5_7.wav','data/wav/fake_voice/fake5_7.wav',1,2),(211,'fake1_1.wav','data/wav/fake_voice/fake1_1.wav',1,2),(212,'fake5_9.wav','data/wav/fake_voice/fake5_9.wav',1,2),(213,'fake1_8.wav','data/wav/fake_voice/fake1_8.wav',1,2),(214,'fake3_3.wav','data/wav/fake_voice/fake3_3.wav',1,2),(215,'fake3_6.wav','data/wav/fake_voice/fake3_6.wav',1,2),(216,'fake5_4.wav','data/wav/fake_voice/fake5_4.wav',1,2),(217,'fake3_8.wav','data/wav/fake_voice/fake3_8.wav',1,2),(218,'fake4_8.wav','data/wav/fake_voice/fake4_8.wav',1,2),(219,'fake1_9.wav','data/wav/fake_voice/fake1_9.wav',1,2),(220,'fake4_2.wav','data/wav/fake_voice/fake4_2.wav',1,2),(221,'fake2_9.wav','data/wav/fake_voice/fake2_9.wav',1,2),(222,'fake5_6.wav','data/wav/fake_voice/fake5_6.wav',1,2),(223,'fake5_8.wav','data/wav/fake_voice/fake5_8.wav',1,2),(224,'fake4_9.wav','data/wav/fake_voice/fake4_9.wav',1,2),(225,'fake3_1.wav','data/wav/fake_voice/fake3_1.wav',1,2),(226,'fake4_7.wav','data/wav/fake_voice/fake4_7.wav',1,2),(227,'fake2_3.wav','data/wav/fake_voice/fake2_3.wav',1,2),(228,'fake2_7.wav','data/wav/fake_voice/fake2_7.wav',1,2),(229,'fake3_10.wav','data/wav/fake_voice/fake3_10.wav',1,2),(230,'fake5_3.wav','data/wav/fake_voice/fake5_3.wav',1,2),(231,'fake3_2.wav','data/wav/fake_voice/fake3_2.wav',1,2),(232,'fake4_10.wav','data/wav/fake_voice/fake4_10.wav',1,2),(233,'fake1_5.wav','data/wav/fake_voice/fake1_5.wav',1,2),(234,'fake1_6.wav','data/wav/fake_voice/fake1_6.wav',1,2),(235,'fake4_4.wav','data/wav/fake_voice/fake4_4.wav',1,2),(236,'fake2_5.wav','data/wav/fake_voice/fake2_5.wav',1,2),(237,'fake3_4.wav','data/wav/fake_voice/fake3_4.wav',1,2),(238,'fake3_5.wav','data/wav/fake_voice/fake3_5.wav',1,2),(239,'fake4_6.wav','data/wav/fake_voice/fake4_6.wav',1,2),(240,'fake5_5.wav','data/wav/fake_voice/fake5_5.wav',1,2),(241,'fake2_2.wav','data/wav/fake_voice/fake2_2.wav',1,2),(242,'fake4_1.wav','data/wav/fake_voice/fake4_1.wav',1,2),(243,'fake1_10.wav','data/wav/fake_voice/fake1_10.wav',1,2),(244,'fake3_7.wav','data/wav/fake_voice/fake3_7.wav',1,2),(245,'fake5_2.wav','data/wav/fake_voice/fake5_2.wav',1,2),(246,'fake2_4.wav','data/wav/fake_voice/fake2_4.wav',1,2),(247,'fake5_10.wav','data/wav/fake_voice/fake5_10.wav',1,2),(248,'fake3_9.wav','data/wav/fake_voice/fake3_9.wav',1,2),(249,'fake4_5.wav','data/wav/fake_voice/fake4_5.wav',1,2),(250,'fake2_10.wav','data/wav/fake_voice/fake2_10.wav',1,2),(251,'fake4_3.wav','data/wav/fake_voice/fake4_3.wav',1,2),(252,'fake1_2.wav','data/wav/fake_voice/fake1_2.wav',1,2),(253,'fake1_3.wav','data/wav/fake_voice/fake1_3.wav',1,2),(254,'fake2_8.wav','data/wav/fake_voice/fake2_8.wav',1,2),(255,'fake5_1.wav','data/wav/fake_voice/fake5_1.wav',1,2);
/*!40000 ALTER TABLE `sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `role` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'1','1','1',1),(2,'1234','1','Phạm Văn Tới - B20DCCN606',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-14 11:56:28