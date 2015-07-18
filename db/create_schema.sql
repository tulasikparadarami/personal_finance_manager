-- MySQL dump 10.13  Distrib 5.5.19, for Linux (i686)
-- ------------------------------------------------------
-- Server version	5.0.96-log

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `HFM_LOCATION`
--

DROP TABLE IF EXISTS `HFM_LOCATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HFM_LOCATION` (
  `LOC_KEY` int(11) NOT NULL auto_increment,
  `CITY` varchar(50) NOT NULL,
  `STATE` varchar(50) NOT NULL,
  PRIMARY KEY  (`LOC_KEY`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `HFM_MONTH`
--

DROP TABLE IF EXISTS `HFM_MONTH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HFM_MONTH` (
  `MONTH_KEY` int(11) NOT NULL auto_increment,
  `MONTH_NAME` varchar(50) NOT NULL,
  `MONTH_NAME_SHORT` varchar(50) NOT NULL,
  `MONTH_NUM` int(11) NOT NULL,
  PRIMARY KEY  (`MONTH_KEY`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `HFM_ORDER_DTL`
--

DROP TABLE IF EXISTS `HFM_ORDER_DTL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HFM_ORDER_DTL` (
  `ORD_DTL_KEY` int(11) NOT NULL auto_increment,
  `OWNER` varchar(50) default NULL,
  `CITY` varchar(50) default NULL,
  `STATE` varchar(50) default NULL,
  `TXN_TYPE` varchar(50) default NULL,
  `CARD_TYPE` varchar(50) default NULL,
  `LAST4` varchar(50) default NULL,
  `TXN_SUBTYPE1` varchar(50) default NULL,
  `TXN_SUBTYPE2` varchar(50) default NULL,
  `TXN_SUBTYPE3` varchar(50) default NULL,
  `AMOUNT` varchar(50) default NULL,
  `SYSDATE` varchar(50) default NULL,
  `YEAR_NUM` varchar(50) default NULL,
  `MONTH_NUM` varchar(50) default NULL,
  `MONTH_NAME` varchar(50) default NULL,
  `WEEK_NUM` varchar(50) default NULL,
  `WEEK_DAY` varchar(50) default NULL,
  `DAY_IN_YEAR` varchar(50) default NULL,
  `WEEK_IN_YEAR` varchar(50) default NULL,
  `QUARTER` varchar(50) default NULL,
  `CMNTS` varchar(255) default NULL,
  PRIMARY KEY  (`ORD_DTL_KEY`)
) ENGINE=MyISAM AUTO_INCREMENT=6273 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `HFM_ORDER_DTL_BCK`
--

DROP TABLE IF EXISTS `HFM_ORDER_DTL_BCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HFM_ORDER_DTL_BCK` (
  `ORD_DTL_KEY` int(11) NOT NULL default '0',
  `OWNER` varchar(50) character set latin1 default NULL,
  `CITY` varchar(50) character set latin1 default NULL,
  `STATE` varchar(50) character set latin1 default NULL,
  `TXN_TYPE` varchar(50) character set latin1 default NULL,
  `CARD_TYPE` varchar(50) character set latin1 default NULL,
  `LAST4` varchar(50) character set latin1 default NULL,
  `TXN_SUBTYPE1` varchar(50) character set latin1 default NULL,
  `TXN_SUBTYPE2` varchar(50) character set latin1 default NULL,
  `TXN_SUBTYPE3` varchar(50) character set latin1 default NULL,
  `AMOUNT` varchar(50) character set latin1 default NULL,
  `SYSDATE` varchar(50) character set latin1 default NULL,
  `YEAR_NUM` varchar(50) character set latin1 default NULL,
  `MONTH_NUM` varchar(50) character set latin1 default NULL,
  `MONTH_NAME` varchar(50) character set latin1 default NULL,
  `WEEK_NUM` varchar(50) character set latin1 default NULL,
  `WEEK_DAY` varchar(50) character set latin1 default NULL,
  `DAY_IN_YEAR` varchar(50) character set latin1 default NULL,
  `WEEK_IN_YEAR` varchar(50) character set latin1 default NULL,
  `QUARTER` varchar(50) character set latin1 default NULL,
  `CMNTS` varchar(255) character set latin1 default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `HFM_OWNER`
--

DROP TABLE IF EXISTS `HFM_OWNER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HFM_OWNER` (
  `OWNER_KEY` int(11) NOT NULL auto_increment,
  `OWNER_NAME` varchar(50) NOT NULL,
  PRIMARY KEY  (`OWNER_KEY`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `HFM_TXN_TYPE`
--

DROP TABLE IF EXISTS `HFM_TXN_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HFM_TXN_TYPE` (
  `TXN_TYPE_KEY` int(11) NOT NULL auto_increment,
  `TXN_SUBTYPE1` varchar(50) NOT NULL,
  `TXN_SUBTYPE2` varchar(50) NOT NULL,
  `TXN_SUBTYPE3` varchar(50) NOT NULL,
  `REPORT_FLAG` varchar(1) NOT NULL default 'Y',
  PRIMARY KEY  (`TXN_TYPE_KEY`)
) ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `HFM_USR`
--

DROP TABLE IF EXISTS `HFM_USR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HFM_USR` (
  `USR_KEY` int(11) NOT NULL auto_increment,
  `USR_NAME` varchar(50) NOT NULL,
  `PASSWD` varchar(255) NOT NULL,
  PRIMARY KEY  (`USR_KEY`),
  UNIQUE KEY `USR_NAME` (`USR_NAME`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
