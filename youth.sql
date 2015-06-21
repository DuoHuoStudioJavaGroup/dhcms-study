-- MySQL dump 10.13  Distrib 5.7.7-rc, for Linux (x86_64)
--
-- Host: localhost    Database: youth
-- ------------------------------------------------------
-- Server version	5.7.7-rc

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `deleteflag` int(11) DEFAULT '0',
  `columnid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (8,'多火工作室换届','<p>一年',0,6),(11,'多火工作室换届','<p>多火工作室换届了</p>\r\n\r\n<p>你们还好么</p>\r\n\r\n<p>未来是属于你们的</p>\r\n\r\n<p><img alt=\"\" src=\"http://7qna7i.com1.z0.glb.clouddn.com/6.6%E5%90%88%E7%85%A7.jpg\" style=\"float:left; height:159px; width:259px\" /></p>\r\n',0,7),(12,'test','<p>地方；啊过来打分开就</p>\r\n\r\n<p>啊；两地分居阿斯科利</p>\r\n\r\n<p><img alt=\"\" src=\"http://7qna7i.com1.z0.glb.clouddn.com/6.6%E5%90%88%E7%85%A7.jpg\" style=\"height:246px; width:400px\" /></p>\r\n',0,8),(13,'通知公告1','<p>dslvjdoi 阿里的空间放</p>\r\n\r\n<p>代理商福建啊</p>\r\n\r\n<p>算了的附近公司的考虑</p>\r\n\r\n<p>判断经费</p>\r\n',0,9),(14,'新闻动态1','<p>新闻动态1</p>\r\n\r\n<p>新闻动态1新闻动态1新闻动态1</p>\r\n\r\n<p>新闻动态1</p>\r\n\r\n<p>新闻动态1</p>\r\n\r\n<p>新闻动态1</p>\r\n',0,10),(15,'新闻动态1','<p>新闻动态1</p>\r\n\r\n<p>新闻动态1新闻动态1新闻动态1</p>\r\n\r\n<p>新闻动态1</p>\r\n\r\n<p>新闻动态1</p>\r\n\r\n<p>新闻动态1</p>\r\n',0,10),(16,'多火简介323','<p><strong>我看了好各位让</strong></p>\r\n\r\n<p><em>恶化如风</em></p>\r\n\r\n<ol>\r\n	<li>二货节</li>\r\n</ol>\r\n\r\n<p><a href=\"http://duohuo.org\">http://duohuo.org</a></p>\r\n\r\n<p>&nbsp;</p>\r\n',0,10);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dhcolumn`
--

DROP TABLE IF EXISTS `dhcolumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dhcolumn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `column_name` varchar(45) NOT NULL,
  `column_index` int(11) NOT NULL,
  `column_description` varchar(45) NOT NULL,
  `column_isuse` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dhcolumn`
--

LOCK TABLES `dhcolumn` WRITE;
/*!40000 ALTER TABLE `dhcolumn` DISABLE KEYS */;
INSERT INTO `dhcolumn` VALUES (5,'团委简介',1,'介绍团委的相关信息',1),(6,'社团简介',1,'介绍多火工作室...',0),(7,'团队介绍',1,'介绍团队',0),(8,'成果展示',1,'展示社团的作品',0),(9,'通知公告',2,'社团的相关信息告知页面',0),(10,'新闻动态',2,'社团的动态信息通知',0);
/*!40000 ALTER TABLE `dhcolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(255) NOT NULL,
  `nickName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin','f17405de10a1ff32fe5cd38f5f8a819cab4d2f51',1,1);
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

-- Dump completed on 2015-06-21 13:12:04
