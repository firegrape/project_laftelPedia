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
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `seq` int NOT NULL AUTO_INCREMENT COMMENT '순번',
  `ani_idx` int NOT NULL COMMENT '애니 번호',
  `user_id` varchar(100) NOT NULL COMMENT '회원 닉네임',
  `content` varchar(1000) NOT NULL COMMENT '내용',
  `great` int DEFAULT '0' COMMENT '좋아요',
  `star_rating` decimal(7,1) DEFAULT '0.0' COMMENT '별점',
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='리뷰';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (3,41838,'test1','zha',0,5.0),(6,41858,'test1','test',0,4.0),(11,41857,'kim','이빨 썩는다 진짜',0,5.0),(14,36002,'Yoon','저장할때 왜 aniIdx값을 넘기시지않앗죠',0,5.0),(15,38486,'kim','이거왜봄',0,0.5),(16,33445,'kim','개꿀잼',0,3.5),(17,41853,'kim','개쩐다',0,4.5),(18,22605,'Yoon','시밤이게머야',0,2.0),(19,41708,'Yoon','유치함',0,0.5),(20,23258,'Yoon','찬해씨 왜 저장할때랑 삭제할때 aniIdx를 넘기시지않았나요',0,5.0),(22,40530,'mumin','안녕 클레오파트라 세상에서 제일가는 포테이토칩',0,4.0),(24,41822,'mumin','개사기',0,3.0),(27,39067,'na','ㅅ',0,2.0),(28,41364,'na','ㄷ',0,2.5),(29,41708,'na','ㅂ',0,3.0),(30,41822,'na','ㅂ',0,2.5),(33,41851,'kim','adfd',0,2.0),(36,41822,'kim','이거 너무 주인공이 너무 사기캐임. 이세계물에 먼치킨임.',0,3.0),(38,41890,'Yoon','아이거이상해',0,4.0),(39,41851,'pink','재밋어요 ~',0,5.0),(41,41679,'test1','god',0,1.0);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-12 11:39:46
