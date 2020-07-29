-- MariaDB dump 10.17  Distrib 10.4.12-MariaDB, for osx10.15 (x86_64)
--
-- Host: localhost    Database: ezoom
-- ------------------------------------------------------
-- Server version	10.5.4-MariaDB-1:10.5.4+maria~focal

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
-- Table structure for table `tb_courses`
--

DROP TABLE IF EXISTS `tb_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `course_desc` text NOT NULL,
  `course_img` varchar(512) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_courses`
--

LOCK TABLES `tb_courses` WRITE;
/*!40000 ALTER TABLE `tb_courses` DISABLE KEYS */;
INSERT INTO `tb_courses` VALUES (1,'Mecânica Avançada','\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vitae tortor urna. Aliquam ac dapibus ante, vel bibendum ligula. Aenean semper sem et felis vehicula, ut rutrum ante placerat. Praesent eget orci accumsan, dictum dui vitae, ornare libero. Mauris malesuada lorem id tortor sollicitudin gravida. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin nunc risus, lobortis et congue nec, blandit ac lorem. Duis vitae magna odio. Vestibulum ultricies elementum nulla sit amet elementum. Maecenas mattis, nisi placerat viverra cursus, enim purus porttitor dui, ut feugiat nulla tortor egestas nibh. Donec vel tortor a arcu mollis facilisis non sed lorem.\n\nSed molestie non ex ut commodo. Suspendisse vel sem in turpis sodales viverra. Donec scelerisque vitae nisi ac volutpat. Cras eu lacus congue, pretium ipsum sed, auctor augue. Donec accumsan gravida pulvinar. Duis ullamcorper dui eu leo lacinia malesuada. Sed viverra elit arcu. In congue vehicula mi et sodales. Donec tincidunt, odio eget euismod aliquet, nisi augue condimentum elit, semper dictum nisi justo vitae urna. Sed ac accumsan enim.\n\nAenean placerat felis at justo posuere eleifend. Praesent eu augue eros. Ut sed nisl auctor, volutpat lectus eu, elementum ligula. Proin dictum sit amet dolor eget scelerisque. Integer finibus nulla ac lectus feugiat elementum. Suspendisse lacinia ante a dolor tincidunt, sit amet faucibus ante placerat. Integer hendrerit lectus justo, quis convallis lacus mattis sed. Quisque justo tortor, dictum id ullamcorper et, facilisis at neque.\n\nIn ut urna a felis maximus dictum rhoncus laoreet libero. Nam at dignissim lacus, quis rhoncus erat. Nullam quis tortor ex. Vivamus pharetra mollis dui, quis finibus orci. Vivamus eget ultrices diam. Nulla facilisi. Phasellus vel orci sit amet mauris porta fermentum. Curabitur et massa euismod odio vehicula feugiat sed sed sem. Mauris gravida scelerisque nulla quis hendrerit. Integer semper, tortor sed vulputate pellentesque, nisi ligula convallis lacus, ac fringilla nisi eros sed tortor. Maecenas consectetur tincidunt justo, eget bibendum ipsum bibendum vel. Praesent dignissim, diam at tincidunt lacinia, enim ligula pretium turpis, id gravida odio lacus eu quam. Mauris nisl ante, dictum at blandit tincidunt, placerat quis nunc.\n\nAliquam feugiat arcu orci. Quisque egestas ipsum arcu, et lobortis erat dapibus in. Cras nec nulla fermentum, rhoncus felis eget, semper dui. Donec eget est ligula. In neque purus, venenatis et consectetur a, porttitor in arcu. Etiam eget eleifend nisi, ac elementum risus. Nullam in orci nunc.','https://images.yourstory.com/cs/1/26a30e50-0998-11e9-9820-1f4fb7912c4d/automobileengineering%20jobs1545889113843.jpg','2020-07-29 20:53:42'),(2,'Aviação','\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vitae tortor urna. Aliquam ac dapibus ante, vel bibendum ligula. Aenean semper sem et felis vehicula, ut rutrum ante placerat. Praesent eget orci accumsan, dictum dui vitae, ornare libero. Mauris malesuada lorem id tortor sollicitudin gravida. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin nunc risus, lobortis et congue nec, blandit ac lorem. Duis vitae magna odio. Vestibulum ultricies elementum nulla sit amet elementum. Maecenas mattis, nisi placerat viverra cursus, enim purus porttitor dui, ut feugiat nulla tortor egestas nibh. Donec vel tortor a arcu mollis facilisis non sed lorem.\n\nSed molestie non ex ut commodo. Suspendisse vel sem in turpis sodales viverra. Donec scelerisque vitae nisi ac volutpat. Cras eu lacus congue, pretium ipsum sed, auctor augue. Donec accumsan gravida pulvinar. Duis ullamcorper dui eu leo lacinia malesuada. Sed viverra elit arcu. In congue vehicula mi et sodales. Donec tincidunt, odio eget euismod aliquet, nisi augue condimentum elit, semper dictum nisi justo vitae urna. Sed ac accumsan enim.\n\nAenean placerat felis at justo posuere eleifend. Praesent eu augue eros. Ut sed nisl auctor, volutpat lectus eu, elementum ligula. Proin dictum sit amet dolor eget scelerisque. Integer finibus nulla ac lectus feugiat elementum. Suspendisse lacinia ante a dolor tincidunt, sit amet faucibus ante placerat. Integer hendrerit lectus justo, quis convallis lacus mattis sed. Quisque justo tortor, dictum id ullamcorper et, facilisis at neque.\n\nIn ut urna a felis maximus dictum rhoncus laoreet libero. Nam at dignissim lacus, quis rhoncus erat. Nullam quis tortor ex. Vivamus pharetra mollis dui, quis finibus orci. Vivamus eget ultrices diam. Nulla facilisi. Phasellus vel orci sit amet mauris porta fermentum. Curabitur et massa euismod odio vehicula feugiat sed sed sem. Mauris gravida scelerisque nulla quis hendrerit. Integer semper, tortor sed vulputate pellentesque, nisi ligula convallis lacus, ac fringilla nisi eros sed tortor. Maecenas consectetur tincidunt justo, eget bibendum ipsum bibendum vel. Praesent dignissim, diam at tincidunt lacinia, enim ligula pretium turpis, id gravida odio lacus eu quam. Mauris nisl ante, dictum at blandit tincidunt, placerat quis nunc.\n\nAliquam feugiat arcu orci. Quisque egestas ipsum arcu, et lobortis erat dapibus in. Cras nec nulla fermentum, rhoncus felis eget, semper dui. Donec eget est ligula. In neque purus, venenatis et consectetur a, porttitor in arcu. Etiam eget eleifend nisi, ac elementum risus. Nullam in orci nunc.','https://meskodiasadvogados.com/wp-content/uploads/2019/08/qual-o-valor-da-aposentadoria-do-piloto-de-aviao.jpg','2020-07-29 20:53:52');
/*!40000 ALTER TABLE `tb_courses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-29 17:55:39
