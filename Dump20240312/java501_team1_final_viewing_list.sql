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
-- Table structure for table `viewing_list`
--

DROP TABLE IF EXISTS `viewing_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viewing_list` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `ani_idx` int NOT NULL COMMENT '애니아이디번호',
  `ani_title` varchar(1000) NOT NULL,
  `ani_imgUrl` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='보는중 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewing_list`
--

LOCK TABLES `viewing_list` WRITE;
/*!40000 ALTER TABLE `viewing_list` DISABLE KEYS */;
INSERT INTO `viewing_list` VALUES (4,'kim',41882,'(더빙) SPY×FAMILY Season 2','https://image.laftel.net/items/thumbs/big/824e5090-9c9c-485a-9e88-58095d469b76.jpg'),(5,'kim',41838,'휴일의 악당','https://image.laftel.net/items/thumbs/big/8ccfa04a-75b3-4a81-b41b-6aad23b9e88e.jpg'),(12,'Yoon',39443,'원주민 공포만화','https://image.laftel.net/items/thumbs/big/4500a64e-54f8-48e3-afa9-8a56f1b183b1.jpg'),(13,'Yoon',22605,'아수라','https://image.laftel.net/items/thumbs/big/8af8cd4a-4aa3-4802-a253-c2d647f4b056.jpg'),(14,'Yoon',41708,'신비아파트 : 고스트볼 더블X 6개의 예언','https://image.laftel.net/items/thumbs/big/367a3ecb-2da6-46bc-a072-0413c65fc0df.jpg'),(15,'Yoon',23258,'콥스파티 -Tortured Souls-','https://image.laftel.net/items/thumbs/big/4f9c08a8-a8ce-4ecb-97f8-cc4f2136dc51.jpg'),(18,'mumin',40530,'삼각창의 밖은 밤','https://image.laftel.net/items/thumbs/big/82c76df4-10bb-4ad0-84cf-78db58cd3371.jpg'),(19,'mumin',41851,'마녀와 야수','https://image.laftel.net/items/thumbs/big/06481b88-0e4e-4838-b1bd-e958e742b452.jpg'),(20,'mumin',41822,'즉사 치트가 너무 최강이라 이세계 녀석들이 전혀 상대가 되지 않습니다만.','https://image.laftel.net/items/thumbs/big/0908e0ff-9914-4812-ba33-75d8270b1172.jpg'),(21,'na',41563,'연애제한구역','https://image.laftel.net/items/thumbs/big/80a9a20b-ceb5-494a-a50a-2e6f6554f99f.jpg'),(22,'na',41851,'마녀와 야수','https://image.laftel.net/items/thumbs/big/06481b88-0e4e-4838-b1bd-e958e742b452.jpg'),(23,'na',41840,'약캐 토모자키 군 2nd STAGE','https://image.laftel.net/items/thumbs/big/4b80aac9-91f0-4648-86d4-71d449246db4.jpg'),(24,'na',39067,'신비아파트 : 고스트볼의 비밀','https://image.laftel.net/items/thumbs/big/6bf91a16-2529-4de2-9dbc-92c4986de16d.jpg'),(25,'na',41364,'괴담클럽-무섭지만 재미있는 무서운 이야기','https://image.laftel.net/items/thumbs/big/bc38cf7d-d56e-4d68-b45e-404f81e85de4.jpg'),(27,'na',13739,'모노노케','https://image.laftel.net/items/thumbs/big/88e70cdc-9d86-4efc-b205-5b92a86d12b2.jpg'),(28,'na',40530,'삼각창의 밖은 밤','https://image.laftel.net/items/thumbs/big/82c76df4-10bb-4ad0-84cf-78db58cd3371.jpg'),(29,'na',38797,'살육의 천사','https://image.laftel.net/items/thumbs/big/636027e6-1739-4e7c-a231-7bb2834c569a.jpg'),(33,'kim',41822,'즉사 치트가 너무 최강이라 이세계 녀석들이 전혀 상대가 되지 않습니다만.','https://image.laftel.net/items/thumbs/big/0908e0ff-9914-4812-ba33-75d8270b1172.jpg'),(34,'test4',41840,'약캐 토모자키 군 2nd STAGE','https://image.laftel.net/items/thumbs/big/4b80aac9-91f0-4648-86d4-71d449246db4.jpg'),(35,'Yoon',41890,'(더빙) 언데드 언럭','https://image.laftel.net/items/thumbs/big/9dbfaacd-0ef4-410f-8959-4872fd1ea5ad.jpg'),(37,'pink',41852,'마도정병의 슬레이브','https://image.laftel.net/items/thumbs/big/a9ce824a-71a0-4ba1-a8ee-906311755cd5.jpg'),(38,'yoon1',41847,'내 마음의 위험한 녀석 2기','https://image.laftel.net/items/thumbs/big/70c97b67-8835-46f2-bc30-1407458a3fbc.jpg'),(39,'test1',41850,'루프 7회차 악역 영애는 적국에서 자유로운 신부 생활을 만끽한다','https://image.laftel.net/items/thumbs/big/01395474-0131-4aeb-a8fb-8e138a5859de.jpg');
/*!40000 ALTER TABLE `viewing_list` ENABLE KEYS */;
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
