-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: local
-- ------------------------------------------------------
-- Server version 	8.0.16
-- Date: Sun, 20 Feb 2022 23:42:39 +0000

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
-- Table structure for table `wp_commentmeta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wp_commentmeta` with 0 row(s)
--

--
-- Table structure for table `wp_comments`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2022-02-19 12:43:26','2022-02-19 12:43:26','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wp_comments` with 1 row(s)
--

--
-- Table structure for table `wp_links`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wp_links` with 0 row(s)
--

--
-- Table structure for table `wp_njt_fastdup_entities`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_njt_fastdup_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_njt_fastdup_entities`
--

LOCK TABLES `wp_njt_fastdup_entities` WRITE;
/*!40000 ALTER TABLE `wp_njt_fastdup_entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_njt_fastdup_entities` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wp_njt_fastdup_entities` with 0 row(s)
--

--
-- Table structure for table `wp_njt_fastdup_packages`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_njt_fastdup_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `package` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_njt_fastdup_packages`
--

LOCK TABLES `wp_njt_fastdup_packages` WRITE;
/*!40000 ALTER TABLE `wp_njt_fastdup_packages` DISABLE KEYS */;
INSERT INTO `wp_njt_fastdup_packages` VALUES (1,'package','1645400555',30,'2022-02-20 23:42:35',0x4F3A32353A224E4A545C466173744475705C41646D696E5C5061636B616765223A32303A7B733A323A226964223B693A313B733A343A226E616D65223B733A373A227061636B616765223B733A343A2268617368223B693A313634353430303535353B733A393A226E616D655F68617368223B733A31383A227061636B6167655F31363435343030353535223B733A363A22737461747573223B693A31303B733A393A227363616E5F66696C65223B733A32383A227061636B6167655F313634353430303535355F7363616E2E6A736F6E223B733A383A22736974655F75726C223B733A32333A22687474703A2F2F6170696576656E746D6E672E74657374223B733A31313A2274656D706C6174655F6964223B733A393A2266756C6C5F73697465223B733A31313A2266696C7465725F65787473223B4E3B733A31323A2266696C7465725F66696C6573223B4E3B733A31313A2266696C7465725F64697273223B4E3B733A31333A2266696C7465725F7461626C6573223B4E3B733A31303A2273746F72655F70617468223B733A38353A222F55736572732F7061756C617269737461752F4C6F63616C2053697465732F6170696576656E746D6E672F6170702F7075626C69632F77702D636F6E74656E742F6E6A742D666173746475702F7061636B61676573223B733A393A2273746F72655F75726C223B733A35363A22687474703A2F2F6170696576656E746D6E672E746573742F77702D636F6E74656E742F6E6A742D666173746475702F7061636B616765732F223B733A31353A2273746F72655F706174685F74656D70223B733A38303A222F55736572732F7061756C617269737461752F4C6F63616C2053697465732F6170696576656E746D6E672F6170702F7075626C69632F77702D636F6E74656E742F6E6A742D666173746475702F746D70223B733A373A2241726368697665223B4F3A34313A224E4A545C466173744475705C41646D696E5C5061636B6167655C5061636B6167655F41726368697665223A32303A7B733A393A2269735F66696C746572223B693A303B733A31333A226578706F72745F6F6E6C796462223B623A303B733A31313A2266696C7465725F65787473223B613A303A7B7D733A31313A2266696C7465725F64697273223B613A313A7B693A303B733A37363A222F55736572732F7061756C617269737461752F4C6F63616C2053697465732F6170696576656E746D6E672F6170702F7075626C69632F77702D636F6E74656E742F6E6A742D66617374647570223B7D733A31323A2266696C7465725F66696C6573223B613A303A7B7D733A31313A22726561645F636865636B73223B613A303A7B7D733A31353A227265637572736976655F6C696E6B73223B613A303A7B7D733A31313A226164646F6E5F7369746573223B613A303A7B7D733A343A2266696C65223B733A33303A227061636B6167655F313634353430303535355F617263686976652E7A6970223B733A383A2273716C5F70617468223B4E3B733A31313A227A69705F61726368697665223B4E3B733A383A227A69705F70617468223B4E3B733A31323A22636F6D70726573735F646972223B733A35333A222F55736572732F7061756C617269737461752F4C6F63616C2053697465732F6170696576656E746D6E672F6170702F7075626C6963223B733A31343A22756E7265616461626C655F6C6F67223B613A303A7B7D733A31353A226469725F6578636C7564655F6C6F67223B613A303A7B7D733A31393A227265637572736976655F6C696E6B735F6C6F67223B613A303A7B7D733A31363A22657874735F6578636C7564655F6C6F67223B613A303A7B7D733A31383A226164645F66696C655F6572726F725F6C6F67223B613A303A7B7D733A31363A2266696C655F6578636C7564655F6C6F67223B613A303A7B7D733A31303A22002A007061636B616765223B4E3B7D733A383A224461746162617365223B4F3A34323A224E4A545C466173744475705C41646D696E5C5061636B6167655C5061636B6167655F4461746162617365223A363A7B733A393A2269735F66696C746572223B623A303B733A31333A2266696C7465725F7461626C6573223B613A303A7B7D733A343A2266696C65223B733A33313A227061636B6167655F313634353430303535355F64617461626173652E73716C223B733A363A22707265666978223B733A333A2277705F223B733A31303A22002A007061636B616765223B4E3B733A35373A22004E4A545C466173744475705C41646D696E5C5061636B6167655C5061636B6167655F44617461626173650064625F73746F72655F70617468223B4E3B7D733A373A2263726561746564223B733A31393A22323032322D30322D32302032333A34323A3335223B733A32343A226E6A745F666173746475705F617263686976655F6E616D65223B733A32323A2277702D636F6E74656E742F6E6A742D66617374647570223B733A32323A226E6A745F666173746475705F6469725F706C7567696E223B733A31383A2277702D636F6E74656E742F706C7567696E73223B7D);
/*!40000 ALTER TABLE `wp_njt_fastdup_packages` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wp_njt_fastdup_packages` with 1 row(s)
--

--
-- Table structure for table `wp_options`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (232,'_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9','1645436381','no'),(233,'_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9','1645393181','no'),(234,'_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b','1645436381','no'),(235,'_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b','<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2022/02/a-new-wordpress-news/\'>A New WordPress News</a></li><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2022/02/episode-24-three-goals-in-2022/\'>WP Briefing: Episode 24: Three Goals in 2022</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/unearthing-hidden-treasures-in-the-wabi-wordpress-block-theme\'>WPTavern: Unearthing Hidden Treasures in the Wabi WordPress Block Theme</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/updraftplus-1-22-3-patches-severe-vulnerability-through-forced-security-update-from-wordpress-org\'>WPTavern: UpdraftPlus 1.22.3 Patches Severe Vulnerability Through Forced Security Update from WordPress.org</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/piklist-is-shutting-down\'>WPTavern: Piklist Is Shutting Down</a></li></ul></div>','no'),(237,'_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a','1645404425','no'),(238,'_site_transient_poptags_40cd750bba9870f18aada2478b24840a','O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:5384;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4781;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2746;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2616;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2025;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1877;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1868;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1552;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1539;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1518;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1514;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1504;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1485;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1350;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1312;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1308;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1250;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1167;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1138;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1091;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:991;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:952;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:938;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:927;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:892;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:849;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:838;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:833;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:831;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:819;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:771;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:769;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:767;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:748;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:742;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:728;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:719;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:709;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:702;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:684;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:680;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:672;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:671;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:668;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:667;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:658;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:613;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:609;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:607;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:598;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:596;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:595;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:588;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:579;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:574;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:573;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:572;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:569;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:565;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:561;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:553;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:546;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:536;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:526;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:523;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:520;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:516;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:505;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:505;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:504;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:501;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:491;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:490;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:487;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:485;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:480;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:457;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:452;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:451;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:444;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:438;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:435;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:429;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:426;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:417;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:416;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:409;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:407;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:405;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:398;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:394;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:393;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:392;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:390;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:387;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:385;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:378;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:374;}s:7:\"gateway\";a:3:{s:4:\"name\";s:7:\"gateway\";s:4:\"slug\";s:7:\"gateway\";s:5:\"count\";i:370;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:367;}}','no'),(252,'_transient_timeout_global_styles_api','1645399620','no'),(253,'_transient_global_styles_api','body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}','no'),(254,'_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e','1645442765','no'),(255,'_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e','a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:0:{}}','no'),(257,'_site_transient_timeout_theme_roots','1645402211','no'),(258,'_site_transient_theme_roots','a:1:{s:3:\"api\";s:7:\"/themes\";}','no'),(260,'wpstg_settings','a:8:{s:17:\"lastAnalyticsSend\";s:10:\"1645400416\";s:10:\"queryLimit\";s:5:\"10000\";s:12:\"querySRLimit\";s:5:\"20000\";s:9:\"fileLimit\";s:2:\"50\";s:7:\"cpuLoad\";s:3:\"low\";s:9:\"batchSize\";s:1:\"2\";s:11:\"maxFileSize\";s:1:\"8\";s:9:\"optimizer\";s:1:\"1\";}','yes'),(261,'_transient_wpstg.directory_listing.last_checked','1645400416','yes'),(264,'wpstg_installDate','2022-02-20 11:40:16','yes'),(266,'wpstg_missing_cloneName_routine_executed','1','yes'),(267,'wpstg_version','2.9.5','yes'),(268,'wpstg_version_upgraded_from','','yes'),(269,'wpstg_access_token','mt5DrnMUHiJVFxe0i4yRdzFuVooJAS6ioMoJ4OcwHwuSKtYqUdQswKEhtXDR0SXi','yes'),(270,'wpstg_staging_sites','a:1:{i:1645400455411;a:23:{s:9:\"cloneName\";s:13:\"1645400455411\";s:13:\"directoryName\";s:13:\"1645400455411\";s:4:\"path\";s:68:\"/Users/paularistau/Local Sites/apieventmng/app/public/1645400455411/\";s:3:\"url\";s:37:\"http://apieventmng.test/1645400455411\";s:6:\"number\";i:1;s:7:\"version\";s:5:\"2.9.5\";s:6:\"status\";s:8:\"finished\";s:6:\"prefix\";s:7:\"wpstg0_\";s:8:\"datetime\";i:1645400463;s:12:\"databaseUser\";s:0:\"\";s:16:\"databasePassword\";s:0:\"\";s:16:\"databaseDatabase\";s:0:\"\";s:14:\"databaseServer\";s:9:\"localhost\";s:14:\"databasePrefix\";s:0:\"\";s:13:\"emailsAllowed\";b:1;s:16:\"uploadsSymlinked\";b:0;s:7:\"ownerId\";i:1;s:14:\"includedTables\";a:12:{i:0;s:14:\"wp_commentmeta\";i:1;s:11:\"wp_comments\";i:2;s:8:\"wp_links\";i:3;s:10:\"wp_options\";i:4;s:11:\"wp_postmeta\";i:5;s:8:\"wp_posts\";i:6;s:21:\"wp_term_relationships\";i:7;s:16:\"wp_term_taxonomy\";i:8;s:11:\"wp_termmeta\";i:9;s:8:\"wp_terms\";i:10;s:11:\"wp_usermeta\";i:11;s:8:\"wp_users\";}s:16:\"excludeSizeRules\";a:0:{}s:16:\"excludeGlobRules\";a:0:{}s:19:\"excludedDirectories\";a:1:{i:0;s:17:\"/wp-content/cache\";}s:16:\"extraDirectories\";a:1:{i:0;s:0:\"\";}s:12:\"networkClone\";b:0;}}','yes'),(271,'wpstg_analytics_event_184957496','{\"event\":\"event_staging_create\",\"job_identifier\":184957496,\"event_hash\":\"1645400455.5804386786763\",\"is_finished\":true,\"is_stale\":false,\"is_error\":false,\"is_cancelled\":false,\"is_requirement_check_fail\":false,\"requirement_fail_reason\":\"\",\"error_message\":null,\"last_debug_logs\":null,\"ready_to_send\":true,\"start_time\":1645400455,\"end_time\":1645400463,\"duration\":8,\"site_info\":{\"is_staging_site\":0,\"db_copy_query_limit\":\"10000\",\"db_sr_limit\":\"20000\",\"file_copy_limit\":\"50\",\"cpu_priority\":\"low\",\"file_copy_batch_size\":\"2\",\"max_file_size\":\"8\",\"optimizer\":\"1\",\"keep_permalinks\":false,\"disable_admin_login\":false,\"delay_between_requests\":0,\"debug_mode\":false,\"remove_data_on_uninstall\":false,\"check_directory_size\":false,\"access_permission\":[],\"users_with_staging_access\":\"\",\"php_version\":\"7.4.1\",\"blog_id\":1,\"network_id\":1,\"single_or_multi\":\"single\",\"wpstaging_free_or_pro\":\"free\",\"wpstaging_version\":\"2.9.5\",\"operating_system_family\":\"UNIX\",\"operating_system_family_raw\":\"Darwin\",\"active_theme\":\"api\",\"wordpress_version\":\"5.9\",\"wpdb_version\":51917,\"db_collate\":\"utf8mb4_unicode_520_ci\",\"db_charset\":\"utf8mb4\",\"sql_server_version_number\":\"8.0.16\",\"sql_server_version_engine\":\"UNDEFINED\",\"sql_server_version_engine_raw\":\"8.0.16\",\"site_active_plugins\":{\"wp-staging\\/wp-staging.php\":\"2.9.5\"},\"mu_plugins\":{\"wp-staging-optimizer.php\":\"1.5.1\"},\"network_active_plugins\":[],\"php_extensions\":[\"Core\",\"date\",\"libxml\",\"openssl\",\"pcre\",\"zlib\",\"bcmath\",\"bz2\",\"calendar\",\"ctype\",\"curl\",\"dom\",\"hash\",\"fileinfo\",\"filter\",\"ftp\",\"gd\",\"gettext\",\"SPL\",\"iconv\",\"json\",\"mbstring\",\"session\",\"standard\",\"pcntl\",\"mysqlnd\",\"PDO\",\"pdo_mysql\",\"Phar\",\"posix\",\"Reflection\",\"mysqli\",\"shmop\",\"SimpleXML\",\"soap\",\"sockets\",\"exif\",\"tokenizer\",\"xml\",\"xmlreader\",\"xmlrpc\",\"xmlwriter\",\"xsl\",\"zip\",\"cgi-fcgi\",\"imagick\",\"Zend OPcache\",\"xdebug\"]},\"is_allowing_email\":true,\"is_symlinking_uploads_folder\":false,\"is_external_database\":false,\"number_of_tables\":12}','no'),(272,'wpstg_analytics_notice_dismissed','1','no'),(273,'wpstg_analytics_has_consent','0','no'),(275,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1645400539;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"fastdup/fastdup.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/fastdup\";s:4:\"slug\";s:7:\"fastdup\";s:6:\"plugin\";s:19:\"fastdup/fastdup.php\";s:11:\"new_version\";s:5:\"2.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/fastdup/\";s:7:\"package\";s:50:\"https://downloads.wordpress.org/plugin/fastdup.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/fastdup/assets/icon-256x256.png?rev=2549527\";s:2:\"1x\";s:60:\"https://ps.w.org/fastdup/assets/icon-256x256.png?rev=2549527\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/fastdup/assets/banner-1544x500.png?rev=2549527\";s:2:\"1x\";s:62:\"https://ps.w.org/fastdup/assets/banner-772x250.png?rev=2549527\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.0\";}s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:48:\"w.org/plugins/jwt-authentication-for-wp-rest-api\";s:4:\"slug\";s:34:\"jwt-authentication-for-wp-rest-api\";s:6:\"plugin\";s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";s:11:\"new_version\";s:5:\"1.2.6\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/jwt-authentication-for-wp-rest-api/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/jwt-authentication-for-wp-rest-api.1.2.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=1238484\";s:3:\"svg\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=1238484\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/banner-772x250.jpg?rev=1238480\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.2\";}}s:7:\"checked\";a:2:{s:19:\"fastdup/fastdup.php\";s:5:\"2.1.1\";s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";s:5:\"1.2.6\";}}','no'),(276,'njt_fastdup_package_id_active','a:5:{s:10:\"package_id\";i:1;s:10:\"build_step\";s:8:\"database\";s:8:\"is_build\";b:1;s:12:\"time_process\";s:0:\"\";s:15:\"process_percent\";i:30;}','yes'),(277,'_transient_doing_cron','1645400559.1872859001159667968750','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wp_options` with 173 row(s)
--

--
-- Table structure for table `wp_postmeta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,5,'_edit_last','1'),(4,5,'_edit_lock','1645310444:1'),(5,5,'_wp_trash_meta_status','draft'),(6,5,'_wp_trash_meta_time','1645310455'),(7,5,'_wp_desired_post_slug',''),(8,6,'_edit_lock','1645400217:1'),(9,6,'name','Ice skating night'),(10,6,'_edit_last','1'),(11,6,'type','Ice skating'),(12,6,'name','Ice skating night'),(13,6,'description','A very nice evening of ice skating'),(14,6,'start_date','22/12/2022'),(15,6,'end_date','23/12/2022'),(17,6,'status','active'),(18,6,'pictures','https://imgur.com/eT1K3Hc');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wp_postmeta` with 17 row(s)
--

--
-- Table structure for table `wp_posts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2022-02-19 12:43:26','2022-02-19 12:43:26','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2022-02-19 12:43:26','2022-02-19 12:43:26','',0,'http://apieventmng.test/?p=1',0,'post','',1),(2,1,'2022-02-19 12:43:26','2022-02-19 12:43:26','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://apieventmng.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2022-02-19 12:43:26','2022-02-19 12:43:26','',0,'http://apieventmng.test/?page_id=2',0,'page','',0),(3,1,'2022-02-19 12:43:26','2022-02-19 12:43:26','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://apieventmng.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2022-02-19 12:43:26','2022-02-19 12:43:26','',0,'http://apieventmng.test/?page_id=3',0,'page','',0),(4,1,'2022-02-19 12:44:30','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2022-02-19 12:44:30','0000-00-00 00:00:00','',0,'http://apieventmng.test/?p=4',0,'post','',0),(5,1,'2022-02-19 22:40:55','2022-02-19 22:40:55','','Draft created on February 19, 2022 at 10:40 pm','','trash','closed','closed','','__trashed','','','2022-02-19 22:40:55','2022-02-19 22:40:55','',0,'http://apieventmng.test/?post_type=event&#038;p=5',0,'event','',0),(6,7,'2022-02-19 22:43:01','2022-02-19 22:43:01','','Ice skating night','','publish','closed','closed','','6','','','2022-02-20 23:38:38','2022-02-20 23:38:38','',0,'http://apieventmng.test/?post_type=event&#038;p=6',0,'event','',0),(7,1,'2022-02-19 22:53:08','2022-02-19 22:53:08','','Ice skating night','','inherit','closed','closed','','6-autosave-v1','','','2022-02-19 22:53:08','2022-02-19 22:53:08','',6,'http://apieventmng.test/?p=7',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wp_posts` with 7 row(s)
--

--
-- Table structure for table `wp_term_relationships`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wp_term_relationships` with 1 row(s)
--

--
-- Table structure for table `wp_term_taxonomy`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wp_term_taxonomy` with 1 row(s)
--

--
-- Table structure for table `wp_termmeta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wp_termmeta` with 0 row(s)
--

--
-- Table structure for table `wp_terms`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wp_terms` with 1 row(s)
--

--
-- Table structure for table `wp_usermeta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','eventmng'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(16,1,'session_tokens','a:2:{s:64:\"a78eb57f44052e5ad654db7f2a4409506542ad054ba091eae8dae7716cb7b5a6\";a:4:{s:10:\"expiration\";i:1645447468;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36\";s:5:\"login\";i:1645274668;}s:64:\"1858c9eb89f7b9d9ae271b47292aa6bbe820b168bb08c20d084ca99f51add66d\";a:4:{s:10:\"expiration\";i:1645447470;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36\";s:5:\"login\";i:1645274670;}}'),(17,1,'wp_dashboard_quick_press_last_post_id','4'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),(19,2,'nickname','Paula'),(20,2,'first_name',''),(21,2,'last_name',''),(22,2,'description',''),(23,2,'rich_editing','true'),(24,2,'syntax_highlighting','true'),(25,2,'comment_shortcuts','false'),(26,2,'admin_color','fresh'),(27,2,'use_ssl','0'),(28,2,'show_admin_bar_front','true'),(29,2,'locale',''),(30,2,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(31,2,'wp_user_level','0'),(32,3,'nickname','loca'),(33,3,'first_name',''),(34,3,'last_name',''),(35,3,'description',''),(36,3,'rich_editing','true'),(37,3,'syntax_highlighting','true'),(38,3,'comment_shortcuts','false'),(39,3,'admin_color','fresh'),(40,3,'use_ssl','0'),(41,3,'show_admin_bar_front','true'),(42,3,'locale',''),(43,3,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(44,3,'wp_user_level','0'),(45,4,'nickname','LOLO'),(46,4,'first_name',''),(47,4,'last_name',''),(48,4,'description',''),(49,4,'rich_editing','true'),(50,4,'syntax_highlighting','true'),(51,4,'comment_shortcuts','false'),(52,4,'admin_color','fresh'),(53,4,'use_ssl','0'),(54,4,'show_admin_bar_front','true'),(55,4,'locale',''),(56,4,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(57,4,'wp_user_level','0'),(58,5,'nickname','Pauladsd'),(59,5,'first_name',''),(60,5,'last_name',''),(61,5,'description',''),(62,5,'rich_editing','true'),(63,5,'syntax_highlighting','true'),(64,5,'comment_shortcuts','false'),(65,5,'admin_color','fresh'),(66,5,'use_ssl','0'),(67,5,'show_admin_bar_front','true'),(68,5,'locale',''),(69,5,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(70,5,'wp_user_level','0'),(71,6,'nickname','Pauladsddsa'),(72,6,'first_name',''),(73,6,'last_name',''),(74,6,'description',''),(75,6,'rich_editing','true'),(76,6,'syntax_highlighting','true'),(77,6,'comment_shortcuts','false'),(78,6,'admin_color','fresh'),(79,6,'use_ssl','0'),(80,6,'show_admin_bar_front','true'),(81,6,'locale',''),(82,6,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(83,6,'wp_user_level','0'),(84,7,'nickname','admin'),(85,7,'first_name',''),(86,7,'last_name',''),(87,7,'description',''),(88,7,'rich_editing','true'),(89,7,'syntax_highlighting','true'),(90,7,'comment_shortcuts','false'),(91,7,'admin_color','fresh'),(92,7,'use_ssl','0'),(93,7,'show_admin_bar_front','true'),(94,7,'locale',''),(95,7,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(96,7,'wp_user_level','10'),(97,8,'nickname','teste'),(98,8,'first_name',''),(99,8,'last_name',''),(100,8,'description',''),(101,8,'rich_editing','true'),(102,8,'syntax_highlighting','true'),(103,8,'comment_shortcuts','false'),(104,8,'admin_color','fresh'),(105,8,'use_ssl','0'),(106,8,'show_admin_bar_front','true'),(107,8,'locale',''),(108,8,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(109,8,'wp_user_level','0'),(110,9,'nickname','testee'),(111,9,'first_name',''),(112,9,'last_name',''),(113,9,'description',''),(114,9,'rich_editing','true'),(115,9,'syntax_highlighting','true'),(116,9,'comment_shortcuts','false'),(117,9,'admin_color','fresh'),(118,9,'use_ssl','0'),(119,9,'show_admin_bar_front','true'),(120,9,'locale',''),(121,9,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(122,9,'wp_user_level','0'),(123,10,'nickname','Kizuke'),(124,10,'first_name',''),(125,10,'last_name',''),(126,10,'description',''),(127,10,'rich_editing','true'),(128,10,'syntax_highlighting','true'),(129,10,'comment_shortcuts','false'),(130,10,'admin_color','fresh'),(131,10,'use_ssl','0'),(132,10,'show_admin_bar_front','true'),(133,10,'locale',''),(134,10,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(135,10,'wp_user_level','0'),(136,11,'nickname','Paula.souza'),(137,11,'first_name',''),(138,11,'last_name',''),(139,11,'description',''),(140,11,'rich_editing','true'),(141,11,'syntax_highlighting','true'),(142,11,'comment_shortcuts','false'),(143,11,'admin_color','fresh'),(144,11,'use_ssl','0'),(145,11,'show_admin_bar_front','true'),(146,11,'locale',''),(147,11,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(148,11,'wp_user_level','0');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wp_usermeta` with 148 row(s)
--

--
-- Table structure for table `wp_users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'eventmng','$P$BfQpxnJsTob0mb1fp2/vt5EMK.ACQS.','eventmng','dev-email@flywheel.local','http://apieventmng.test','2022-02-19 12:43:26','',0,'eventmng'),(2,'Paula','$P$BRppqDZv2UV4ddeK00PY2Z1XSlo/4b.','paula','paularistauf@gmail.com','','2022-02-19 13:23:06','',0,'Paula'),(3,'loca','$P$BdmBd7QxiFrKmzYEN5SX9kkw8i92bQ/','loca','loca@gmail.com','','2022-02-19 13:34:01','',0,'loca'),(4,'LOLO','$P$Bo.COa5E74pv3y/OuA0LgW.gmwFxIJ0','lolo','asa@gmail.com','','2022-02-19 13:49:07','',0,'LOLO'),(5,'Pauladsd','$P$BaU6/bljfadRTaEVilT.sd816yNBK/1','pauladsd','paularistausdaf@gmail.com','','2022-02-19 14:23:37','',0,'Pauladsd'),(6,'Pauladsddsa','$P$Bfioq98zRxAe.BHejLvOvt12ovTlPn.','pauladsddsa','paularistausadddaf@gmail.com','','2022-02-19 14:27:08','',0,'Pauladsddsa'),(7,'admin','$P$BzcXzCeBzOcpJEosU/SAcLPuNAItpU0','admin','admin@admin.com','','2022-02-19 14:42:27','',0,'admin'),(8,'teste','$P$BOQZSHvN4qu0ZYfmAGCKteURE8p.vf1','teste','test@test.com','','2022-02-19 22:10:55','',0,'teste'),(9,'testee','$P$BpGrfvx0wr41VyhhD1cP6MriK.6RmB.','testee','teste@test.com','','2022-02-19 22:11:31','',0,'testee'),(10,'Kizuke','$P$BwLgISBLGpCu4jOTRSTciNnLusoQfw1','kizuke','sosjoseneto@gmail.com','','2022-02-19 22:31:47','',0,'Kizuke'),(11,'Paula.souza','$P$B24FQcotF/UUSVbmhh7Cmpz9Rs2FNH.','paula-souza','paularistaufra@gmail.com','','2022-02-20 02:22:21','',0,'Paula.souza');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wp_users` with 11 row(s)
--

--
-- Table structure for table `wpstg0_commentmeta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wpstg0_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wpstg0_commentmeta`
--

LOCK TABLES `wpstg0_commentmeta` WRITE;
/*!40000 ALTER TABLE `wpstg0_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wpstg0_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wpstg0_commentmeta` with 0 row(s)
--

--
-- Table structure for table `wpstg0_comments`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wpstg0_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wpstg0_comments`
--

LOCK TABLES `wpstg0_comments` WRITE;
/*!40000 ALTER TABLE `wpstg0_comments` DISABLE KEYS */;
INSERT INTO `wpstg0_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2022-02-19 12:43:26','2022-02-19 12:43:26','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wpstg0_comments` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wpstg0_comments` with 1 row(s)
--

--
-- Table structure for table `wpstg0_links`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wpstg0_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wpstg0_links`
--

LOCK TABLES `wpstg0_links` WRITE;
/*!40000 ALTER TABLE `wpstg0_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wpstg0_links` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wpstg0_links` with 0 row(s)
--

--
-- Table structure for table `wpstg0_options`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wpstg0_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wpstg0_options`
--

LOCK TABLES `wpstg0_options` WRITE;
/*!40000 ALTER TABLE `wpstg0_options` DISABLE KEYS */;
INSERT INTO `wpstg0_options` VALUES (232,'_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9','1645436381','no'),(233,'_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9','1645393181','no'),(234,'_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b','1645436381','no'),(235,'_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b','<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2022/02/a-new-wordpress-news/\'>A New WordPress News</a></li><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2022/02/episode-24-three-goals-in-2022/\'>WP Briefing: Episode 24: Three Goals in 2022</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/unearthing-hidden-treasures-in-the-wabi-wordpress-block-theme\'>WPTavern: Unearthing Hidden Treasures in the Wabi WordPress Block Theme</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/updraftplus-1-22-3-patches-severe-vulnerability-through-forced-security-update-from-wordpress-org\'>WPTavern: UpdraftPlus 1.22.3 Patches Severe Vulnerability Through Forced Security Update from WordPress.org</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/piklist-is-shutting-down\'>WPTavern: Piklist Is Shutting Down</a></li></ul></div>','no'),(237,'_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a','1645404425','no'),(238,'_site_transient_poptags_40cd750bba9870f18aada2478b24840a','O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:5384;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4781;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2746;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2616;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2025;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1877;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1868;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1552;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1539;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1518;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1514;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1504;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1485;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1350;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1312;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1308;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1250;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1167;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1138;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1091;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:991;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:952;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:938;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:927;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:892;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:849;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:838;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:833;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:831;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:819;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:771;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:769;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:767;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:748;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:742;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:728;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:719;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:709;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:702;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:684;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:680;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:672;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:671;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:668;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:667;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:658;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:613;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:609;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:607;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:598;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:596;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:595;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:588;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:579;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:574;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:573;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:572;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:569;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:565;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:561;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:553;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:546;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:536;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:526;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:523;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:520;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:516;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:505;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:505;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:504;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:501;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:491;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:490;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:487;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:485;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:480;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:457;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:452;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:451;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:444;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:438;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:435;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:429;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:426;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:417;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:416;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:409;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:407;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:405;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:398;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:394;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:393;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:392;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:390;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:387;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:385;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:378;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:374;}s:7:\"gateway\";a:3:{s:4:\"name\";s:7:\"gateway\";s:4:\"slug\";s:7:\"gateway\";s:5:\"count\";i:370;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:367;}}','no'),(252,'_transient_timeout_global_styles_api','1645399620','no'),(253,'_transient_global_styles_api','body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}','no'),(254,'_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e','1645442765','no'),(255,'_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e','a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:0:{}}','no'),(257,'_site_transient_timeout_theme_roots','1645402211','no'),(258,'_site_transient_theme_roots','a:1:{s:3:\"api\";s:7:\"/themes\";}','no'),(259,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1645400415;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:48:\"w.org/plugins/jwt-authentication-for-wp-rest-api\";s:4:\"slug\";s:34:\"jwt-authentication-for-wp-rest-api\";s:6:\"plugin\";s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";s:11:\"new_version\";s:5:\"1.2.6\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/jwt-authentication-for-wp-rest-api/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/jwt-authentication-for-wp-rest-api.1.2.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=1238484\";s:3:\"svg\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=1238484\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/banner-772x250.jpg?rev=1238480\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.2\";}s:25:\"wp-staging/wp-staging.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/wp-staging\";s:4:\"slug\";s:10:\"wp-staging\";s:6:\"plugin\";s:25:\"wp-staging/wp-staging.php\";s:11:\"new_version\";s:5:\"2.9.5\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/wp-staging/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wp-staging.2.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/wp-staging/assets/icon-256x256.png?rev=2591012\";s:2:\"1x\";s:63:\"https://ps.w.org/wp-staging/assets/icon-256x256.png?rev=2591012\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-staging/assets/banner-1544x500.png?rev=2602209\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-staging/assets/banner-772x250.png?rev=2602209\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.6\";}}s:7:\"checked\";a:2:{s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";s:5:\"1.2.6\";s:25:\"wp-staging/wp-staging.php\";s:5:\"2.9.5\";}}','no'),(260,'wpstg_settings','a:8:{s:17:\"lastAnalyticsSend\";s:10:\"1645400416\";s:10:\"queryLimit\";s:5:\"10000\";s:12:\"querySRLimit\";s:5:\"20000\";s:9:\"fileLimit\";s:2:\"50\";s:7:\"cpuLoad\";s:3:\"low\";s:9:\"batchSize\";s:1:\"2\";s:11:\"maxFileSize\";s:1:\"8\";s:9:\"optimizer\";s:1:\"1\";}','yes'),(261,'_transient_wpstg.directory_listing.last_checked','1645400416','yes'),(264,'wpstg_installDate','2022-02-20 11:40:16','yes'),(266,'wpstg_missing_cloneName_routine_executed','1','yes'),(267,'wpstg_version','2.9.5','yes'),(268,'wpstg_version_upgraded_from','','yes'),(269,'wpstg_access_token','oEBaxoVDbHBbw8zDPL8MXbIIeuLx0xThgJryKoxidprm5uJH6SyoRefowkG91XFk','yes'),(270,'wpstg_staging_sites','a:0:{}','yes'),(271,'wpstg_analytics_event_184957496','{\"event\":\"event_staging_create\",\"job_identifier\":184957496,\"event_hash\":\"1645400455.5804386786763\",\"is_finished\":false,\"is_stale\":false,\"is_error\":false,\"is_cancelled\":false,\"is_requirement_check_fail\":false,\"requirement_fail_reason\":\"\",\"error_message\":null,\"last_debug_logs\":null,\"ready_to_send\":false,\"start_time\":1645400455,\"end_time\":null,\"duration\":null,\"site_info\":{\"is_staging_site\":0,\"db_copy_query_limit\":\"10000\",\"db_sr_limit\":\"20000\",\"file_copy_limit\":\"50\",\"cpu_priority\":\"low\",\"file_copy_batch_size\":\"2\",\"max_file_size\":\"8\",\"optimizer\":\"1\",\"keep_permalinks\":false,\"disable_admin_login\":false,\"delay_between_requests\":0,\"debug_mode\":false,\"remove_data_on_uninstall\":false,\"check_directory_size\":false,\"access_permission\":[],\"users_with_staging_access\":\"\",\"php_version\":\"7.4.1\",\"blog_id\":1,\"network_id\":1,\"single_or_multi\":\"single\",\"wpstaging_free_or_pro\":\"free\",\"wpstaging_version\":\"2.9.5\",\"operating_system_family\":\"UNIX\",\"operating_system_family_raw\":\"Darwin\",\"active_theme\":\"api\",\"wordpress_version\":\"5.9\",\"wpdb_version\":51917,\"db_collate\":\"utf8mb4_unicode_520_ci\",\"db_charset\":\"utf8mb4\",\"sql_server_version_number\":\"8.0.16\",\"sql_server_version_engine\":\"UNDEFINED\",\"sql_server_version_engine_raw\":\"8.0.16\",\"site_active_plugins\":{\"wp-staging\\/wp-staging.php\":\"2.9.5\"},\"mu_plugins\":{\"wp-staging-optimizer.php\":\"1.5.1\"},\"network_active_plugins\":[],\"php_extensions\":[\"Core\",\"date\",\"libxml\",\"openssl\",\"pcre\",\"zlib\",\"bcmath\",\"bz2\",\"calendar\",\"ctype\",\"curl\",\"dom\",\"hash\",\"fileinfo\",\"filter\",\"ftp\",\"gd\",\"gettext\",\"SPL\",\"iconv\",\"json\",\"mbstring\",\"session\",\"standard\",\"pcntl\",\"mysqlnd\",\"PDO\",\"pdo_mysql\",\"Phar\",\"posix\",\"Reflection\",\"mysqli\",\"shmop\",\"SimpleXML\",\"soap\",\"sockets\",\"exif\",\"tokenizer\",\"xml\",\"xmlreader\",\"xmlrpc\",\"xmlwriter\",\"xsl\",\"zip\",\"cgi-fcgi\",\"imagick\",\"Zend OPcache\",\"xdebug\"]},\"is_allowing_email\":true,\"is_symlinking_uploads_folder\":false,\"is_external_database\":false,\"number_of_tables\":12}','no'),(272,'wpstg_is_staging_site','true','yes'),(273,'wpstg_rmpermalinks_executed','true','yes'),(274,'blog_public','0','yes'),(276,'wpstg_clone_settings','O:8:\"stdClass\":2:{s:21:\"wpstg_emails_disabled\";b:0;s:16:\"excluded_plugins\";a:0:{}}','yes'),(277,'rewrite_rules','','yes'),(278,'permalink_structure','','yes'),(281,'wpstg_disabled_notice','1','yes');
/*!40000 ALTER TABLE `wpstg0_options` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wpstg0_options` with 173 row(s)
--

--
-- Table structure for table `wpstg0_postmeta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wpstg0_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wpstg0_postmeta`
--

LOCK TABLES `wpstg0_postmeta` WRITE;
/*!40000 ALTER TABLE `wpstg0_postmeta` DISABLE KEYS */;
INSERT INTO `wpstg0_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,5,'_edit_last','1'),(4,5,'_edit_lock','1645310444:1'),(5,5,'_wp_trash_meta_status','draft'),(6,5,'_wp_trash_meta_time','1645310455'),(7,5,'_wp_desired_post_slug',''),(8,6,'_edit_lock','1645400217:1'),(9,6,'name','Ice skating night'),(10,6,'_edit_last','1'),(11,6,'type','Ice skating'),(12,6,'name','Ice skating night'),(13,6,'description','A very nice evening of ice skating'),(14,6,'start_date','22/12/2022'),(15,6,'end_date','23/12/2022'),(17,6,'status','active'),(18,6,'pictures','https://imgur.com/eT1K3Hc');
/*!40000 ALTER TABLE `wpstg0_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wpstg0_postmeta` with 17 row(s)
--

--
-- Table structure for table `wpstg0_posts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wpstg0_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wpstg0_posts`
--

LOCK TABLES `wpstg0_posts` WRITE;
/*!40000 ALTER TABLE `wpstg0_posts` DISABLE KEYS */;
INSERT INTO `wpstg0_posts` VALUES (1,1,'2022-02-19 12:43:26','2022-02-19 12:43:26','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2022-02-19 12:43:26','2022-02-19 12:43:26','',0,'http://apieventmng.test/?p=1',0,'post','',1),(2,1,'2022-02-19 12:43:26','2022-02-19 12:43:26','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://apieventmng.test/1645400455411/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2022-02-19 12:43:26','2022-02-19 12:43:26','',0,'http://apieventmng.test/?page_id=2',0,'page','',0),(3,1,'2022-02-19 12:43:26','2022-02-19 12:43:26','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://apieventmng.test/1645400455411.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2022-02-19 12:43:26','2022-02-19 12:43:26','',0,'http://apieventmng.test/?page_id=3',0,'page','',0),(4,1,'2022-02-19 12:44:30','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2022-02-19 12:44:30','0000-00-00 00:00:00','',0,'http://apieventmng.test/?p=4',0,'post','',0),(5,1,'2022-02-19 22:40:55','2022-02-19 22:40:55','','Draft created on February 19, 2022 at 10:40 pm','','trash','closed','closed','','__trashed','','','2022-02-19 22:40:55','2022-02-19 22:40:55','',0,'http://apieventmng.test/?post_type=event&#038;p=5',0,'event','',0),(6,7,'2022-02-19 22:43:01','2022-02-19 22:43:01','','Ice skating night','','publish','closed','closed','','6','','','2022-02-20 23:38:38','2022-02-20 23:38:38','',0,'http://apieventmng.test/?post_type=event&#038;p=6',0,'event','',0),(7,1,'2022-02-19 22:53:08','2022-02-19 22:53:08','','Ice skating night','','inherit','closed','closed','','6-autosave-v1','','','2022-02-19 22:53:08','2022-02-19 22:53:08','',6,'http://apieventmng.test/?p=7',0,'revision','',0);
/*!40000 ALTER TABLE `wpstg0_posts` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wpstg0_posts` with 7 row(s)
--

--
-- Table structure for table `wpstg0_term_relationships`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wpstg0_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wpstg0_term_relationships`
--

LOCK TABLES `wpstg0_term_relationships` WRITE;
/*!40000 ALTER TABLE `wpstg0_term_relationships` DISABLE KEYS */;
INSERT INTO `wpstg0_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wpstg0_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wpstg0_term_relationships` with 1 row(s)
--

--
-- Table structure for table `wpstg0_term_taxonomy`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wpstg0_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wpstg0_term_taxonomy`
--

LOCK TABLES `wpstg0_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wpstg0_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wpstg0_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wpstg0_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wpstg0_term_taxonomy` with 1 row(s)
--

--
-- Table structure for table `wpstg0_termmeta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wpstg0_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wpstg0_termmeta`
--

LOCK TABLES `wpstg0_termmeta` WRITE;
/*!40000 ALTER TABLE `wpstg0_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wpstg0_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wpstg0_termmeta` with 0 row(s)
--

--
-- Table structure for table `wpstg0_terms`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wpstg0_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wpstg0_terms`
--

LOCK TABLES `wpstg0_terms` WRITE;
/*!40000 ALTER TABLE `wpstg0_terms` DISABLE KEYS */;
INSERT INTO `wpstg0_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wpstg0_terms` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wpstg0_terms` with 1 row(s)
--

--
-- Table structure for table `wpstg0_usermeta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wpstg0_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wpstg0_usermeta`
--

LOCK TABLES `wpstg0_usermeta` WRITE;
/*!40000 ALTER TABLE `wpstg0_usermeta` DISABLE KEYS */;
INSERT INTO `wpstg0_usermeta` VALUES (1,1,'nickname','eventmng'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wpstg0_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wpstg0_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(16,1,'session_tokens','a:2:{s:64:\"a78eb57f44052e5ad654db7f2a4409506542ad054ba091eae8dae7716cb7b5a6\";a:4:{s:10:\"expiration\";i:1645447468;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36\";s:5:\"login\";i:1645274668;}s:64:\"1858c9eb89f7b9d9ae271b47292aa6bbe820b168bb08c20d084ca99f51add66d\";a:4:{s:10:\"expiration\";i:1645447470;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36\";s:5:\"login\";i:1645274670;}}'),(17,1,'wpstg0_dashboard_quick_press_last_post_id','4'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),(19,2,'nickname','Paula'),(20,2,'first_name',''),(21,2,'last_name',''),(22,2,'description',''),(23,2,'rich_editing','true'),(24,2,'syntax_highlighting','true'),(25,2,'comment_shortcuts','false'),(26,2,'admin_color','fresh'),(27,2,'use_ssl','0'),(28,2,'show_admin_bar_front','true'),(29,2,'locale',''),(30,2,'wpstg0_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(31,2,'wpstg0_user_level','0'),(32,3,'nickname','loca'),(33,3,'first_name',''),(34,3,'last_name',''),(35,3,'description',''),(36,3,'rich_editing','true'),(37,3,'syntax_highlighting','true'),(38,3,'comment_shortcuts','false'),(39,3,'admin_color','fresh'),(40,3,'use_ssl','0'),(41,3,'show_admin_bar_front','true'),(42,3,'locale',''),(43,3,'wpstg0_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(44,3,'wpstg0_user_level','0'),(45,4,'nickname','LOLO'),(46,4,'first_name',''),(47,4,'last_name',''),(48,4,'description',''),(49,4,'rich_editing','true'),(50,4,'syntax_highlighting','true'),(51,4,'comment_shortcuts','false'),(52,4,'admin_color','fresh'),(53,4,'use_ssl','0'),(54,4,'show_admin_bar_front','true'),(55,4,'locale',''),(56,4,'wpstg0_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(57,4,'wpstg0_user_level','0'),(58,5,'nickname','Pauladsd'),(59,5,'first_name',''),(60,5,'last_name',''),(61,5,'description',''),(62,5,'rich_editing','true'),(63,5,'syntax_highlighting','true'),(64,5,'comment_shortcuts','false'),(65,5,'admin_color','fresh'),(66,5,'use_ssl','0'),(67,5,'show_admin_bar_front','true'),(68,5,'locale',''),(69,5,'wpstg0_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(70,5,'wpstg0_user_level','0'),(71,6,'nickname','Pauladsddsa'),(72,6,'first_name',''),(73,6,'last_name',''),(74,6,'description',''),(75,6,'rich_editing','true'),(76,6,'syntax_highlighting','true'),(77,6,'comment_shortcuts','false'),(78,6,'admin_color','fresh'),(79,6,'use_ssl','0'),(80,6,'show_admin_bar_front','true'),(81,6,'locale',''),(82,6,'wpstg0_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(83,6,'wpstg0_user_level','0'),(84,7,'nickname','admin'),(85,7,'first_name',''),(86,7,'last_name',''),(87,7,'description',''),(88,7,'rich_editing','true'),(89,7,'syntax_highlighting','true'),(90,7,'comment_shortcuts','false'),(91,7,'admin_color','fresh'),(92,7,'use_ssl','0'),(93,7,'show_admin_bar_front','true'),(94,7,'locale',''),(95,7,'wpstg0_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(96,7,'wpstg0_user_level','10'),(97,8,'nickname','teste'),(98,8,'first_name',''),(99,8,'last_name',''),(100,8,'description',''),(101,8,'rich_editing','true'),(102,8,'syntax_highlighting','true'),(103,8,'comment_shortcuts','false'),(104,8,'admin_color','fresh'),(105,8,'use_ssl','0'),(106,8,'show_admin_bar_front','true'),(107,8,'locale',''),(108,8,'wpstg0_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(109,8,'wpstg0_user_level','0'),(110,9,'nickname','testee'),(111,9,'first_name',''),(112,9,'last_name',''),(113,9,'description',''),(114,9,'rich_editing','true'),(115,9,'syntax_highlighting','true'),(116,9,'comment_shortcuts','false'),(117,9,'admin_color','fresh'),(118,9,'use_ssl','0'),(119,9,'show_admin_bar_front','true'),(120,9,'locale',''),(121,9,'wpstg0_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(122,9,'wpstg0_user_level','0'),(123,10,'nickname','Kizuke'),(124,10,'first_name',''),(125,10,'last_name',''),(126,10,'description',''),(127,10,'rich_editing','true'),(128,10,'syntax_highlighting','true'),(129,10,'comment_shortcuts','false'),(130,10,'admin_color','fresh'),(131,10,'use_ssl','0'),(132,10,'show_admin_bar_front','true'),(133,10,'locale',''),(134,10,'wpstg0_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(135,10,'wpstg0_user_level','0'),(136,11,'nickname','Paula.souza'),(137,11,'first_name',''),(138,11,'last_name',''),(139,11,'description',''),(140,11,'rich_editing','true'),(141,11,'syntax_highlighting','true'),(142,11,'comment_shortcuts','false'),(143,11,'admin_color','fresh'),(144,11,'use_ssl','0'),(145,11,'show_admin_bar_front','true'),(146,11,'locale',''),(147,11,'wpstg0_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(148,11,'wpstg0_user_level','0');
/*!40000 ALTER TABLE `wpstg0_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wpstg0_usermeta` with 148 row(s)
--

--
-- Table structure for table `wpstg0_users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wpstg0_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wpstg0_users`
--

LOCK TABLES `wpstg0_users` WRITE;
/*!40000 ALTER TABLE `wpstg0_users` DISABLE KEYS */;
INSERT INTO `wpstg0_users` VALUES (1,'eventmng','$P$BfQpxnJsTob0mb1fp2/vt5EMK.ACQS.','eventmng','dev-email@flywheel.local','http://apieventmng.test/1645400455411','2022-02-19 12:43:26','',0,'eventmng'),(2,'Paula','$P$BRppqDZv2UV4ddeK00PY2Z1XSlo/4b.','paula','paularistauf@gmail.com','','2022-02-19 13:23:06','',0,'Paula'),(3,'loca','$P$BdmBd7QxiFrKmzYEN5SX9kkw8i92bQ/','loca','loca@gmail.com','','2022-02-19 13:34:01','',0,'loca'),(4,'LOLO','$P$Bo.COa5E74pv3y/OuA0LgW.gmwFxIJ0','lolo','asa@gmail.com','','2022-02-19 13:49:07','',0,'LOLO'),(5,'Pauladsd','$P$BaU6/bljfadRTaEVilT.sd816yNBK/1','pauladsd','paularistausdaf@gmail.com','','2022-02-19 14:23:37','',0,'Pauladsd'),(6,'Pauladsddsa','$P$Bfioq98zRxAe.BHejLvOvt12ovTlPn.','pauladsddsa','paularistausadddaf@gmail.com','','2022-02-19 14:27:08','',0,'Pauladsddsa'),(7,'admin','$P$BzcXzCeBzOcpJEosU/SAcLPuNAItpU0','admin','admin@admin.com','','2022-02-19 14:42:27','',0,'admin'),(8,'teste','$P$BOQZSHvN4qu0ZYfmAGCKteURE8p.vf1','teste','test@test.com','','2022-02-19 22:10:55','',0,'teste'),(9,'testee','$P$BpGrfvx0wr41VyhhD1cP6MriK.6RmB.','testee','teste@test.com','','2022-02-19 22:11:31','',0,'testee'),(10,'Kizuke','$P$BwLgISBLGpCu4jOTRSTciNnLusoQfw1','kizuke','sosjoseneto@gmail.com','','2022-02-19 22:31:47','',0,'Kizuke'),(11,'Paula.souza','$P$B24FQcotF/UUSVbmhh7Cmpz9Rs2FNH.','paula-souza','paularistaufra@gmail.com','','2022-02-20 02:22:21','',0,'Paula.souza');
/*!40000 ALTER TABLE `wpstg0_users` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumped table `wpstg0_users` with 11 row(s)
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Sun, 20 Feb 2022 23:42:39 +0000