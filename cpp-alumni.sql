-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: cpp-alumni
-- ------------------------------------------------------
-- Server version	5.7.10

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
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education` (
  `education_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `year_graduated` int(11) NOT NULL,
  `degree` varchar(45) NOT NULL,
  `major` varchar(45) NOT NULL,
  PRIMARY KEY (`education_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employment`
--

DROP TABLE IF EXISTS `employment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employment` (
  `employment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) NOT NULL,
  `employer` varchar(45) NOT NULL,
  `position` varchar(45) NOT NULL,
  `work_phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`employment_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employment`
--

LOCK TABLES `employment` WRITE;
/*!40000 ALTER TABLE `employment` DISABLE KEYS */;
INSERT INTO `employment` VALUES (1,'alejandro@email.com','CIS','Student','6195641131','akrasovsky@cpp.edu'),(2,'jsmith@cpp.edu','CIS','student','999','jsmith@cpp.edu'),(3,'jsmith@cpp.edu','cis','me','li','jsmith@cpp.edu'),(5,'jewilson@cpp.edu','CIS','student','909','jewilson@cpp.edu');
/*!40000 ALTER TABLE `employment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `diploma_last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `year_graduated` int(11) DEFAULT NULL,
  `degree` varchar(45) NOT NULL,
  `major` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'alejandro','krasovsky','krasovsky','alejandro@email.com','test',2016,'BS','CIS','6195641131','This is a test entry'),(2,'test','test',NULL,'test@email.com','123',2015,'BS','CIS',NULL,NULL),(3,'test','test',NULL,'test@email.com','123',2015,'BS','CIS',NULL,NULL),(4,'testto','totest',NULL,'test@gmail.com','alejandro',2016,'msba','marketing',NULL,NULL),(5,'testto','totest',NULL,'test@gmail.com','alejandro',2016,'msba','marketing',NULL,NULL),(6,'aleja','kraso',NULL,'aleja@email.com','alejandro',2014,'mba','finance',NULL,NULL),(7,'','',NULL,'','',2014,'bs','accounting',NULL,NULL),(8,'ake','aja',NULL,'alejandrok93@gmail.com','123',2014,'bs','accounting',NULL,NULL),(9,'aje','aje',NULL,'','',2014,'bs','accounting',NULL,NULL),(10,'aleja','Krasovsky',NULL,'alejandrok93@gmail.com','test',2014,'bs','accounting',NULL,NULL),(11,'alejandro','kr',NULL,'ak@yaya.com','test',2014,'bs','accounting','9999','ggg'),(12,'ale','kra','kra','test@gmail.com','t',2014,'bs','cis',NULL,NULL),(13,'al','kra',NULL,'test@gmail.com','t',2014,'msba','cis',NULL,NULL),(14,'ale','kra',NULL,'kra@email.com','test',2014,'msba','cis',NULL,NULL),(15,'alejandro','kr',NULL,'','test',2014,'bs','accounting',NULL,NULL),(16,'john','smith',NULL,'jsmith@cpp.edu','jsmith',2014,'msba','finance','777','eeee'),(17,'james','wilson',NULL,'jewilson@cpp.edu','test',2015,'bs','cis',NULL,NULL);
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

-- Dump completed on 2016-03-09 22:43:55
