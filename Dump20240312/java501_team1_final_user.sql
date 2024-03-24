-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 58.239.58.243    Database: java501_team1_final
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `seq` int NOT NULL AUTO_INCREMENT COMMENT '순번',
  `id` varchar(45) NOT NULL COMMENT '회원 아이디',
  `pw` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT '회원닉네임',
  `email` varchar(200) NOT NULL COMMENT '유저 이메일',
  `membership` date DEFAULT NULL,
  `cookie` int DEFAULT '0' COMMENT '결제용 쿠키',
  `create_date` datetime NOT NULL,
  `genre` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`seq`,`name`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='유저테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'test1','1234','테스터','test@naver.com',NULL,0,'2024-02-20 00:00:00',NULL),(2,'test2','1234','테스트2','',NULL,0,'2024-03-04 11:30:38',NULL),(3,'123','123','1234','',NULL,0,'2024-03-04 14:55:46',NULL),(4,'Yoon','1234','윤씨','Yoon@naver.com',NULL,0,'2024-03-04 14:58:31','공포,스릴러,범죄,개그,재난'),(5,'kim','1234','kim','',NULL,0,'2024-03-04 14:59:08',NULL),(9,'nana','1234','나나','nana@naver.com',NULL,0,'2024-03-05 15:22:11','공포,음악,드라마,이세계,범죄'),(10,'dlfma','1234','이름','dlfma@gmail.com',NULL,0,'2024-03-05 15:31:54','드라마,이세계,범죄,특촬,SF'),(11,'sachenuro','123456','리운지','2gg@kakao.com',NULL,0,'2024-03-06 16:23:16','추리,드라마,범죄,로맨스,재난'),(12,'vkvkdia','1234','윤성훈','vkvkdia@gmail.com',NULL,0,'2024-03-07 17:31:37','공포,아이돌,하렘'),(13,'na','na','na','na@na',NULL,0,'2024-03-07 17:54:18','공포'),(14,'mumin','1234','무민','mumin@naver.com',NULL,0,'2024-03-08 09:16:07','미스터리,이세계,범죄,일상,개그'),(21,'hello','1234','헬로','hello@naver.com',NULL,0,'2024-03-08 09:51:04','미스터리,이세계,로맨스,액션,개그'),(64,'ok','1234','확인','ok@gmail.com',NULL,0,'2024-03-08 10:06:14','음악,GL 백합,스포츠,치유'),(65,'kimyu','1234','김유정','test1@gmail.com',NULL,0,'2024-03-08 10:07:14','로맨스,액션,개그'),(66,'ex','1234','윤성훈','ex@gmail.com',NULL,0,'2024-03-08 10:09:14',''),(67,'rhkr','1234','곽석철','rhkr@naver.com',NULL,0,'2024-03-08 10:12:09',''),(68,'test4','1234','test4','test4@naver.com',NULL,0,'2024-03-08 16:14:03','로맨스,미스터리,하렘,이세계'),(69,'pink','1234','장전동','rnthfyd@naver.com',NULL,0,'2024-03-08 18:01:07','미스터리,이세계,SF,드라마'),(70,'yoon1','1234','yoon1','yoon1@naver.com',NULL,0,'2024-03-11 11:15:46','공포,스릴러'),(71,'nch','nch','nch','nch@naver.com',NULL,0,'2024-03-12 09:34:30','무협,추리,드라마,모험,판타지');
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

-- Dump completed on 2024-03-12 11:39:45
