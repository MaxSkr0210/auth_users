-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: users
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL DEFAULT 'Мужской',
  `photo` varchar(255) NOT NULL DEFAULT 'user.png',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'3dd33','','3ddffddd3df3@gmail.com','$2b$10$jqPIKUT0yHoXccuT6yOnA.zYMyvRV7zVST/hUbOR4VcMEyjAr2CXC','Мужской','user.png','2023-12-29 01:13:21'),(2,'qwer','','qwer@gmail.com','$2b$10$/2e.s46PcQKFgMxa3ZgbVO3DuMzA9J2u4KQWgNoEhemK3n0MOs4ui','Мужской','user.png','2023-12-29 01:14:46'),(3,'ddd','','ffff@gmail.com','$2b$10$lisOk0zVIUemH6T8ZKjjBuf389ltidEkwSAhoc5ir0ZPY7qkg.hkC','Мужской','user.png','2023-12-29 01:14:51'),(4,'dwdd','','ffweff@gmail.com','$2b$10$dk.BCoHeC15FTpqBAAs0DeSRK8Oq45Wx3ADLHFpZLX6mV2oueTH82','Мужской','user.png','2023-12-29 01:14:54'),(5,'dwtrdd','','frtfweff@gmail.com','$2b$10$H5NqZjbwQFZPRk8JS5.Pr.iZG57/qyUMGG6ZPuzlnWwTGb.WNaKkK','Мужской','user.png','2023-12-29 01:14:57'),(6,'dwtrdd','','sdfgf@gmail.com','$2b$10$XHipXORe.tm6qWwZGYqKJ.e/mdiRhyeOnM6mhHdy8esiazvI02rG2','Мужской','user.png','2023-12-29 01:15:05'),(7,'dsdfdfwtrdd','','werwer@gmail.com','$2b$10$ud4zNG/wInuecRx7/0G.Te97fUIFl59QPNOBq9QVpXcPVT1QhgRjG','Мужской','user.png','2023-12-29 01:15:10'),(8,'erty','','erty@gmail.com','$2b$10$hmdsxVvExou1qXRAgoflbOzQWHCDxAuD.gCKqg4fSxlYxY5dsdxKW','Мужской','user.png','2023-12-29 01:15:17'),(9,'eeeerty','','123@gmail.com','$2b$10$DJr/o8OYFE3LFH8Oc4BLQOdV4DEsS55R1jzxZ0l2ah0x.jaa7BtFy','Мужской','user.png','2023-12-29 01:15:22'),(10,'ee234eerty','','1ert23@gmail.com','$2b$10$HrrZ6sqbCxHH6hvYxOUFqeYRHeQcVLR7McMVdvHDInkYzn5JwKhiC','Мужской','user.png','2023-12-29 01:15:28'),(11,'ee234eerty','','1dffert23@gmail.com','$2b$10$2yr4GlffPh.VQQ3KpD0c1e61eMtqpHEZJiRr8IX.XFmeCjmsmCbpq','Мужской','user.png','2023-12-29 01:16:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-29  4:28:12
