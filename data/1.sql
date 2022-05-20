-- MySQL dump 10.13  Distrib 5.1.33, for Win32 (ia32)
--
-- Host: localhost    Database: sfydb_6522647
-- ------------------------------------------------------
-- Server version	5.1.33-community

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
-- Table structure for table `ay_area`
--

DROP TABLE IF EXISTS `ay_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '区域编号',
  `acode` varchar(20) NOT NULL COMMENT '区域编码',
  `pcode` varchar(20) NOT NULL COMMENT '区域父编码',
  `name` varchar(50) NOT NULL COMMENT '区域名称',
  `domain` varchar(100) NOT NULL COMMENT '区域绑定域名',
  `is_default` char(1) NOT NULL DEFAULT '0' COMMENT '是否默认',
  `create_user` varchar(30) NOT NULL COMMENT '添加人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '添加时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_area_acode` (`acode`),
  KEY `ay_area_pcode` (`pcode`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_area`
--

LOCK TABLES `ay_area` WRITE;
/*!40000 ALTER TABLE `ay_area` DISABLE KEYS */;
INSERT INTO `ay_area` VALUES (1,'cn','0','中文','','1','admin','admin','2017-11-30 13:55:37','2018-04-13 11:40:49');
/*!40000 ALTER TABLE `ay_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_company`
--

DROP TABLE IF EXISTS `ay_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '站点编号',
  `acode` varchar(20) NOT NULL COMMENT '区域代码',
  `name` varchar(100) NOT NULL COMMENT '公司名称',
  `address` varchar(200) NOT NULL COMMENT '公司地址',
  `postcode` varchar(6) NOT NULL COMMENT '邮政编码',
  `contact` varchar(10) NOT NULL COMMENT '公司联系人',
  `mobile` varchar(50) NOT NULL COMMENT '手机号码',
  `phone` varchar(50) NOT NULL COMMENT '电话号码',
  `fax` varchar(50) NOT NULL COMMENT '公司传真',
  `email` varchar(30) NOT NULL COMMENT '电子邮箱',
  `qq` varchar(50) NOT NULL COMMENT '公司QQ',
  `weixin` varchar(100) NOT NULL COMMENT '微信图标',
  `blicense` varchar(20) NOT NULL COMMENT '营业执照代码',
  `other` varchar(200) NOT NULL COMMENT '其他信息',
  PRIMARY KEY (`id`),
  KEY `ay_company_acode` (`acode`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_company`
--

LOCK TABLES `ay_company` WRITE;
/*!40000 ALTER TABLE `ay_company` DISABLE KEYS */;
INSERT INTO `ay_company` VALUES (1,'cn','原阳县兴佳装配式建筑科技有限公司','河南省新乡市原阳县产业集聚区S311省道与原包路交叉口向西1000米','453506','蒋经理','150-3822-1032','0371-8221032','0371-8221032','370675324@qq.com','370675324','','91410725MA9GMW0T20','');
/*!40000 ALTER TABLE `ay_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_config`
--

DROP TABLE IF EXISTS `ay_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(30) NOT NULL COMMENT '名称',
  `value` varchar(200) NOT NULL COMMENT '值',
  `type` char(1) NOT NULL DEFAULT '1' COMMENT '配置类型',
  `sorting` int(10) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  `description` varchar(30) NOT NULL COMMENT '描述文本',
  PRIMARY KEY (`id`),
  KEY `ay_config_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_config`
--

LOCK TABLES `ay_config` WRITE;
/*!40000 ALTER TABLE `ay_config` DISABLE KEYS */;
INSERT INTO `ay_config` VALUES (1,'open_wap','0','1',255,'手机版'),(2,'message_check_code','1','1',255,'留言验证码'),(3,'smtp_server','smtp.qq.com','2',255,'邮件SMTP服务器'),(4,'smtp_port','465','2',255,'邮件SMTP端口'),(5,'smtp_ssl','1','1',255,'邮件是否安全连接'),(6,'smtp_username','','2',255,'邮件发送账号'),(7,'smtp_password','','2',255,'邮件发送密码'),(8,'admin_check_code','1','1',255,'后台验证码'),(9,'weixin_appid','','2',255,'微信APPID'),(10,'weixin_secret','','2',255,'微信SECRET'),(11,'message_send_mail','1','1',255,'留言发送邮件开关'),(12,'message_send_to','','1',255,'留言发送到邮箱'),(13,'api_open','0','2',255,'API开关'),(14,'api_auth','1','2',255,'API强制认证'),(15,'api_appid','','2',255,'API认证用户'),(16,'api_secret','','2',255,'API认证密钥'),(17,'baidu_zz_token','','2',255,'百度站长密钥'),(18,'baidu_xzh_appid','','2',255,'熊掌号appid'),(19,'baidu_xzh_token','','2',255,'熊掌号token'),(20,'wap_domain','','2',255,'手机绑定域名'),(21,'gzip','0','2',255,'GZIP压缩'),(22,'content_tags_replace_num','','2',255,'内容关键字替换次数'),(23,'smtp_username_test','','2',255,'测试邮箱'),(24,'form_send_mail','0','2',255,'表单发送邮件'),(25,'baidu_xzh_type','0','2',255,'熊掌号推送类型'),(26,'watermark_open','0','2',255,'水印开关'),(27,'watermark_text','PbootCMS','2',255,'水印文本'),(28,'watermark_text_font','','2',255,'水印文本字体'),(29,'watermark_text_size','20','2',255,'水印文本字号'),(30,'watermark_text_color','100,100,100','2',255,'水印文本字体颜色'),(31,'watermark_pic','/static/images/logo.png','2',255,'水印图片'),(32,'watermark_position','4','2',255,'水印位置'),(33,'message_verify','1','2',255,'留言审核'),(34,'form_check_code','0','2',255,'表单验证码'),(35,'lock_count','5','2',255,'登陆锁定阈值'),(36,'lock_time','900','2',255,'登录锁定时间'),(37,'url_rule_type','3','2',255,'路径类型'),(38,'message_status','1','2',255,'留言开关'),(39,'form_status','1','2',255,'表单开关'),(40,'tpl_html_dir','html','2',255,'模板HTML目录'),(41,'ip_deny','','2',255,'IP黑名单'),(42,'ip_allow','','2',255,'IP白名单'),(43,'close_site','0','2',255,''),(44,'close_site_note','','2',255,''),(45,'lgautosw','1','2',255,''),(46,'spiderlog','1','2',255,''),(47,'to_https','0','2',255,''),(48,'to_main_domain','0','2',255,''),(49,'main_domain','ftp6522647.host116.sanfengyun.cn','2',255,''),(50,'content_keyword_replace','','2',255,''),(51,'sn','6E8A093733','2',255,''),(52,'sn_user','','2',255,''),(53,'licensecode','NkU4QTA5MzczMy8=E','2',255,'');
/*!40000 ALTER TABLE `ay_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_content`
--

DROP TABLE IF EXISTS `ay_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `acode` varchar(20) NOT NULL COMMENT '区域',
  `scode` varchar(20) NOT NULL COMMENT '内容栏目',
  `subscode` varchar(20) NOT NULL COMMENT '副栏目',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `titlecolor` varchar(7) NOT NULL COMMENT '标题颜色',
  `subtitle` varchar(100) NOT NULL COMMENT '副标题',
  `filename` varchar(50) NOT NULL COMMENT '自定义文件名',
  `author` varchar(30) NOT NULL COMMENT '作者',
  `source` varchar(30) NOT NULL COMMENT '来源',
  `outlink` varchar(100) NOT NULL COMMENT '外链地址',
  `date` datetime NOT NULL COMMENT '发布日期',
  `ico` varchar(100) NOT NULL COMMENT '缩略图',
  `pics` varchar(1000) NOT NULL COMMENT '多图片',
  `picstitle` varchar(1000) NOT NULL COMMENT '多图片标题',
  `content` mediumtext NOT NULL COMMENT '内容',
  `tags` varchar(500) NOT NULL COMMENT 'tag关键字',
  `enclosure` varchar(100) NOT NULL COMMENT '附件',
  `keywords` varchar(200) NOT NULL COMMENT '关键字',
  `description` varchar(500) NOT NULL COMMENT '描述',
  `sorting` int(10) unsigned NOT NULL DEFAULT '255' COMMENT '内容排序',
  `status` char(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `istop` char(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `isrecommend` char(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `isheadline` char(1) NOT NULL DEFAULT '0' COMMENT '是否头条',
  `visits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问数',
  `likes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `oppose` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '反对数',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `update_user` varchar(20) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `gtype` char(1) NOT NULL DEFAULT '4',
  `gid` varchar(20) NOT NULL DEFAULT '',
  `gnote` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ay_content_scode` (`scode`),
  KEY `ay_content_subscode` (`subscode`),
  KEY `ay_content_acode` (`acode`),
  KEY `ay_content_filename` (`filename`),
  KEY `ay_content_date` (`date`),
  KEY `ay_content_sorting` (`sorting`),
  KEY `ay_content_status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_content`
--

LOCK TABLES `ay_content` WRITE;
/*!40000 ALTER TABLE `ay_content` DISABLE KEYS */;
INSERT INTO `ay_content` VALUES (1,'cn','1','','公司简介','#333333','','','admin','本站','','2018-04-11 17:26:11','/static/upload/image/20220518/1652833165932160.png','','','&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;; font-size: 24px;&quot;&gt;&lt;strong&gt;企业简介：&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;PingFang SC&amp;quot;, -apple-system, BlinkMacSystemFont, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Source Han Sans&amp;quot;, &amp;quot;Noto Sans CJK Sc&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Microsoft Jhenghei&amp;quot;, sans-serif; font-size: 20px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;兴佳别墅成立于2020年1月18日，注册资金1000万元。公司注册地在宰相故里新乡原阳，公司拥有4000平方研发及生产基地。&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-size: 20px; font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 兴佳别墅是一家专业从事绿色集成住宅系统的运营商，集研发、设计、生产、建造、贸易于一身，生产基地位于河南省新乡市。我们的产品与服务包括:超轻钢(LGS)绿色集成住宅系统、轻钢龙骨系统及别墅设计、重钢以及轻重钢龙骨系统及别墅设计制造。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;strong style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;; font-size: 24px; white-space: normal;&quot;&gt;企业文化：&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-size: 20px; font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;兴佳定位----中国富贵家庭住所一站式搭建服务平台&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-size: 20px; font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;兴佳使命----帮助100万家庭体验富贵生活&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-size: 20px; font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;兴佳愿景----愿每个家庭生活富足，人丁兴旺，事业久远&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/static/upload/image/20220518/1652833165932160.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/static/upload/image/20220518/1652833192347468.png&quot;/&gt;&lt;/p&gt;','','','','PbootCMS是全新内核且永久开源免费的PHP企业网站开发建设管理系统，是一套高效、简洁、 强悍的可免费商用的PHP CMS源码，能够满足各类企业网站开发建设的需要。系统采用简单到想哭的模板标签，只要懂HTML就可快速开发企业网站。官方提供了大量网站模板免费下载和使用，将致力于为广大开发者和企',255,'1','0','0','0',99,0,0,'admin','admin','2018-04-11 17:26:11','2022-05-18 17:42:22','4','',''),(2,'cn','10','','在线留言','#333333','','','admin','本站','','2018-04-11 17:30:36','','','','','','','','',255,'1','0','0','0',75,0,0,'admin','admin','2018-04-11 17:30:36','2018-04-11 17:30:36','4','',''),(3,'cn','11','','联系我们','#333333','','','admin','本站','','2018-04-11 17:31:29','','','','<p>官方网站：<a href=\"http://www.pbootcms.com\">www.pbootcms.com</a><br/></p><p>技术交流群： 137083872</p><p><br/></p><p>我们一直秉承大道至简分享便可改变世界的理念，坚持做最简约灵活的PbootCMS开源软件！</p><p>您的每一份帮助都将支持PbootCMS做的更好，走的更远！</p><p>我们一直在坚持不懈地努力，并尽可能让PbootCMS完全开源免费，您的帮助将使我们更有动力和信心^_^！</p><p>扫一扫官网付款码赞助我们，您的支持是开发者不断前进的动力！</p><p><br/></p><p><strong>您的每一份捐赠将用来：</strong></p><p>深入PbootCMS核心的开发、</p><p>做丰富的应用；</p><p>设计更爽的用户界面；</p><p>吸引更多的模板开发者和应用开发者；</p><p>奖励更多优秀贡献者。</p><p>把PbootCMS技术交流群137083872推荐给伱自己有兴趣的群做宣传，也是对我们的帮助哟！~~</p><p><img src=\"/static/upload/image/20180413/1523583018133454.png\"/></p><p><br/></p>','','','','',255,'1','0','0','0',62,0,0,'admin','admin','2018-04-11 17:31:29','2018-04-13 09:30:19','4','',''),(18,'cn','2','','轻钢别墅对于房屋建设的作用及设计细节化','#333333','这几年我国的国民经济还有科学技术都在不断的发展，一直推进的城镇化建设也是取得了不错的效果，发展速度很快，因此面对这种不断发展的东西，势必会产生一些之前从未出现过的矛盾，而且加上人民生活质量的提高，所以','','超级管理员','本站','','2022-05-17 23:07:41','/static/upload/image/20220517/1652800131648971.png','','','&lt;p style=&quot;white-space: normal;&quot;&gt;这几年我国的国民经济还有科学技术都在不断的发展，一直推进的城镇化建设也是取得了不错的效果，发展速度很快，因此面对这种不断发展的东西，势必会产生一些之前从未出现过的矛盾，而且加上人民生活质量的提高，所以人们的要求也是越来越变得更加严格一些，为了满足这些不断上涨的需求。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;轻钢别墅解决了传统的混凝土结构建筑模式的一些缺点，能够更好的满足大家对于居住的需求，同时这种新型结构的建筑对于环境的保护还有能源的节省以及居住an quan性的问题都有着很好的改变。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;轻钢别墅是以钢材为主要材料制作建造的建筑结构，他的结构体系具有很多优势性，而且这对于推动我国未来钢铁企业的结构调整，转型升级都有着很好的作用。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;轻钢别墅对于建筑行业房屋结构的调整具有很好的作用，因为钢材加工的特殊性，我们能够通过工业化，产业化的生产来降低我们的施工工期&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&amp;nbsp;轻钢别墅建筑特点营造出艺术氛围，轻钢结构房屋能够很好的利用与发挥周围自然资源与景色，轻钢别墅建筑无论是从材料，还是施工过程都较为环保，减少了资源浪费，保持着整个建筑的结构的合理性，所能带来的用户体验的也能具备非常不错的特色。&lt;/p&gt;&lt;p style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;/static/upload/image/20220517/1652800131648971.png&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&amp;nbsp;轻钢别墅型的建筑内部配套设施也较为完善，能够满足建筑的设计主体，同时注重后期的使用性能，让在其中的每一个人能够非常自在的生活娱乐，对于一些公共开放空间的合理利用，能够让建筑内部的设施丰富起来，从而满足客户的多方面需求。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','','这几年我国的国民经济还有科学技术都在不断的发展，一直推进的城镇化建设也是取得了不错的效果，发展速度很快，因此面对这种不断发展的东西，势必会产生一些之前从未出现过的矛盾，而且加上人民生活质量的提高，所以人们的要求也是越来越变得更加严格一些，为了满足这些不断上涨的需求。轻钢别墅解决了传统的混凝土结构建筑',255,'1','0','0','0',4,0,0,'admin','admin','2022-05-17 23:08:53','2022-05-18 10:43:40','4','0',''),(19,'cn','2','','如何保养轻钢结构别墅','#333333','轻钢别墅在全国各地逐渐崛起,很多人选择了建立自己的别墅,轻钢别墅定制轻钢结构别墅就成了他们不二的选择,但是别墅建成之后后期的保养也是至关重要的。那么它的保养方法都有哪些呢?现在就让我们来了解下:','','超级管理员','本站','','2022-05-17 23:08:55','/static/upload/image/20220518/1652833900756519.png','','','&lt;p style=&quot;white-space: normal;&quot;&gt;轻钢别墅在全国各地逐渐崛起,很多人选择了建立自己的别墅,轻钢别墅定制轻钢结构别墅就成了他们不二的选择,但是别墅建成之后后期的保养也是至关重要的。那么它的保养方法都有哪些呢?现在就让我们来了解下:&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;别墅建成完工之后业主如果需要改动的话应该找zhuan ye的施工人员进行改动。因为轻钢别墅是不可以进行自主进行结构的更改,轻钢别墅的部件是整体链接的,这一点与普通混凝土建筑是不一样的,更不能拆卸任何一个螺栓构件,因为它会破坏房屋的整体稳定性,轻钢别墅定制不能擅自增加或拆除墙体。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;由于轻钢别墅的结构部件是整体链接的,用户在设置用电线路时,是不可以将线路缠绕在钢结构体上,应该设置线路管道或线路隔离槽进行设置,以免发生电路短路。另外轻钢结构别墅的保养方法也包括对轻钢别墅进行专用油漆的维护,轻钢别墅生产厂家屋顶沥青瓦根据实际情况实施五年一次的更换。这些基本的维护都是可以增加我们轻钢别墅的使用寿命的。只要我们好好的参考这些方法,小编相信别墅的寿命会很长久。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;建造轻钢房屋对施工单位来说，省时省力，避免了繁琐的施工工序，减轻工人劳动强度及完结大部分墙外装修和室内装修。缔造轻钢房屋不需要二次找平，只需构造完结后可随时布线穿管。无梁无柱，增加可利用空间，大大简化装修流程，同时材料、用工成本可节省许多。钢架构造具有强度高、抗震功能好、组装施工简略方便等特色。轻钢结构房屋为绿色循环建筑，建筑物多数的建筑材料可以回收再利用，大幅减少建筑垃圾和碳排放，对比传统房屋的综合社会效益大幅提高，全成本价远远低于传统建筑。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;较好的保温隔音结构设计，100mm厚度的玻璃棉保温层，其保温性能相当于1m厚度的砖墙。该结构体系外墙导热系数仅为0.46;轻钢结构复合墙体的隔音性能可达到50dB以上;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;优良的保温隔音性能，不仅为居住者提供了一个健康舒服的居住环境，而且与钢筋混凝土结构比较，节能达百分之65～百分之75。冷弯薄壁装配式房屋体系全部采用冷弯薄壁型轻钢C型钢或U型钢框架，钢材是可以百分之100回收的资源，其他配套材料回收利用率也高达百分之80以上。轻钢别墅的造价可以通过预算确保建房过程中不会超支&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','','轻钢别墅在全国各地逐渐崛起,很多人选择了建立自己的别墅,轻钢别墅定制轻钢结构别墅就成了他们不二的选择,但是别墅建成之后后期的保养也是至关重要的。那么它的保养方法都有哪些呢?现在就让我们来了解下:别墅建成完工之后业主如果需要改动的话应该找zhuan ye的施工人员进行改动。因为轻钢别墅是不可以进行自主进行结构的更改',255,'1','0','0','0',5,0,0,'admin','admin','2022-05-17 23:09:29','2022-05-18 10:43:31','4','0',''),(34,'cn','5','','轻钢别墅','#333333','Light steel villa','','超级管理员','本站','','2022-05-18 15:10:32','/static/upload/image/20220518/1652858198243339.png','','','','','','','',255,'1','0','0','0',1,0,0,'admin','admin','2022-05-18 15:12:35','2022-05-18 15:16:39','4','0',''),(35,'cn','5','','自建别墅','#333333','Self-built villas','','超级管理员','本站','','2022-05-18 15:13:40','/static/upload/image/20220518/1652858054608710.jpg','','','','','','','',255,'1','0','0','0',1,0,0,'admin','admin','2022-05-18 15:14:15','2022-05-18 15:14:38','4','0',''),(36,'cn','5','','重钢别墅','#333333','Chongqing steel villa','','超级管理员','本站','','2022-05-18 15:35:24','/static/upload/image/20220518/1652859459606930.jpg','','','','','','','',255,'1','0','0','0',0,0,0,'admin','admin','2022-05-18 15:37:42','2022-05-18 15:37:42','4','0',''),(37,'cn','5','','重钢别墅','#333333','Chongqing steel villa','','超级管理员','本站','','2022-05-18 15:37:43','/static/upload/image/20220518/1652859482676308.jpg','','','','','','','',255,'1','0','0','0',0,0,0,'admin','admin','2022-05-18 15:38:04','2022-05-18 15:38:13','4','0',''),(38,'cn','5','','重钢别墅','#333333','Chongqing steel villa','','超级管理员','本站','','2022-05-18 15:38:14','/static/upload/image/20220518/1652859539545943.jpg','','','','','','','',255,'1','0','0','0',0,0,0,'admin','admin','2022-05-18 15:39:05','2022-05-18 15:39:05','4','0',''),(39,'cn','5','','自建房','#333333','Self-built villas','','超级管理员','本站','','2022-05-18 15:39:06','/static/upload/image/20220518/1652859866141984.jpg','','','','','','','',255,'1','0','0','0',0,0,0,'admin','admin','2022-05-18 15:41:02','2022-05-18 15:44:27','4','0',''),(40,'cn','5','','农村建房','#333333','Self-establish building','','超级管理员','本站','','2022-05-18 15:44:28','/static/upload/image/20220518/1652860017291685.jpg','','','','','','','',255,'1','0','0','0',0,0,0,'admin','admin','2022-05-18 15:46:58','2022-05-18 15:46:58','4','0',''),(41,'cn','5','','重钢别墅','#333333','Chongqing steel villa','','超级管理员','本站','','2022-05-18 15:46:59','/static/upload/image/20220518/1652860038214168.jpg','','','','','','','',255,'1','0','0','0',0,0,0,'admin','admin','2022-05-18 15:47:19','2022-05-18 15:47:19','4','0',''),(28,'cn','2','','轻钢别墅好不好？','#333333','轻钢别墅每平米价格并不是很低，特殊的高，但是主要照旧依据品牌差别地方差别，都有着好多的要素与影响，价钱并没有一个定夺的数字，轻钢别墅好不好，进行购置之后的人们都说好，由于这些别墅所树立的地方就有着很大','','超级管理员','本站','','2022-05-17 23:21:37','/static/upload/image/20220518/1652833875837142.png','','','&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;/span&gt;&lt;strong&gt;轻钢别墅好不好？&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;1、抗震抗风&lt;/p&gt;&lt;p&gt;建树房屋轻钢房屋体系，抗震能力达9级，抗风能力达13级。&lt;/p&gt;&lt;p&gt;2、防火防潮&lt;/p&gt;&lt;p&gt;3、墙体采用阻燃材料玻璃纤维棉填充，屋顶有天沟设计，屋面铺有一层单向防潮呼吸纸。&lt;/p&gt;&lt;p&gt;4、保温隔热&lt;/p&gt;&lt;p&gt;建树房屋轻钢别墅体系，保温隔热、冬暖夏凉。&lt;/p&gt;&lt;p&gt;5、隔音环保&lt;/p&gt;&lt;p&gt;由冷弯薄壁轻钢骨架、隔音材料和环保板材组成的墙体、楼面和屋面系统，均具备优良的隔音效果。&lt;/p&gt;&lt;p&gt;6、防虫蚁耐腐蚀不生锈&lt;/p&gt;&lt;p&gt;主体结构采用镀铝锌冷弯薄壁轻钢，终生不受腐蚀不生锈（强酸、强碱环境除外）。&lt;/p&gt;&lt;p&gt;7、性价比／得房&lt;/p&gt;&lt;p&gt;工厂生产现场组装及标准化的成本控制。同样大小的房子，建树轻钢房屋多出5％～13％的&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;使用面积&lt;/span&gt;&lt;/p&gt;&lt;p&gt;8、使用寿命长达90年&lt;/p&gt;&lt;p&gt;采用高强度冷弯薄壁型钢构件体系组成，构件采用双面热镀铝锌防腐冷轧钢板制造，有效避免锈蚀的影响，增加使用寿命。&lt;/p&gt;&lt;p&gt;9、施工周期短&lt;/p&gt;&lt;p&gt;轻钢别墅龙骨材料工厂化生产，在施工现场组合安装，施工速度快、周期短、效，不受季节影响，全天候施工。&lt;/p&gt;&lt;p&gt;10、绿色节能环保建筑&lt;/p&gt;&lt;p&gt;施工过程干法作业，节约用水；房屋轻钢结构材料可100％回收，其他配套材料80％以上也可回收。&lt;/p&gt;&lt;p&gt;轻钢别墅每平米价格并不是很低，特殊的高，但是主要照旧依据品牌差别地方差别，都有着好多的要素与影响，价钱并没有一个定夺的数字，轻钢别墅好不好，进行购置之后的人们都说好，由于这些别墅所树立的地方就有着很大的优点了，也值得人们完全放心的进行选购。&lt;/p&gt;&lt;p&gt;&lt;br style=&quot;white-space: normal;&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','','轻钢别墅好不好？1、抗震抗风建树房屋轻钢房屋体系，抗震能力达9级，抗风能力达13级。2、防火防潮3、墙体采用阻燃材料玻璃纤维棉填充，屋顶有天沟设计，屋面铺有一层单向防潮呼吸纸。4、保温隔热建树房屋轻钢别墅体系，保温隔热、冬暖夏凉。5、隔音环保由冷弯薄壁轻钢骨架、隔音材料和环保板材组成的墙体',255,'1','0','0','0',10,0,0,'admin','admin','2022-05-17 23:22:12','2022-05-18 10:45:31','4','0',''),(27,'cn','2','','轻钢别墅的保温性能解析','#333333','首先，老房子尽管价格比新房子低，但是各种小费用却不少。二手房生意的手续费用不低。而且老房子的家具还有装修都年久失修，要操办起这些来也是要花不少钱的。  其次，面子问题。假设是新人成婚，却给他买个老房子','','超级管理员','本站','','2022-05-17 23:21:00','/static/upload/image/20220517/1652800894235493.png','','','&lt;p&gt;首先，老房子尽管价格比新房子低，但是各种小费用却不少。二手房生意的手续费用不低。而且老房子的家具还有装修都年久失修，要操办起这些来也是要花不少钱的。&lt;/p&gt;&lt;p&gt;其次，面子问题。假设是新人成婚，却给他买个老房子，关于年轻人来说是很没面子的作业。&lt;/p&gt;&lt;p&gt;第三、老房子年久失修，会有不少an quan隐患。&lt;/p&gt;&lt;p&gt;第四，老房子一般设备比较老旧，没有电梯，要搬个东西十分不方便。每天朝五晚九的去上班，回家还要爬良久的楼梯，真是让人溃散了。而且老房子住的一般白叟较多，十分怕吵，住老房子在舒服指数方面会有所降低。&lt;/p&gt;&lt;p&gt;这几个方面的问题另老房子在商场的位置十分低，假设想要一栋房子，但是预算有限的华，那么完全可以换一个思路，选择在自己的家乡盖一栋轻钢别墅。‍&lt;/p&gt;&lt;p&gt;假设在家里盖一栋轻钢别墅的话，那需求的钱可连一栋房子的shou fu都不到呢，但是幸福感却会大大提高。&lt;/p&gt;&lt;p&gt;近几年来，轻钢结构别墅尤其是轻钢小型房子，各种功用办理亭等轻钢设备开始遭到人们的关注。现代人日子压力大，盼望回归自然，盼望在家庭日子中有着良好的环境与轻松的享受。具有时髦、推重环保、健康日子理念的人们，成为轻钢别墅的首要追捧者‍。&lt;/p&gt;&lt;p style=&quot;text-align:center&quot;&gt;&lt;img src=&quot;/static/upload/image/20220517/1652800894235493.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;轻钢别墅的许多长处让他成为了许多修建办法中一颗闪烁的新星。&lt;/p&gt;&lt;p&gt;1、保温性能好。轻钢房子运用三层保温（1.6cm聚氨酯、4cm挤塑板、10cm玻璃纤维棉），比传统房子节能百分之40以上。&lt;/p&gt;&lt;p&gt;2、竣工速率快。轻钢别墅不受气候影响竣工速率ji快。一栋二百平的别墅不到一个月底子就可以结束。&lt;/p&gt;&lt;p&gt;3、抗震。轻钢房子骨架是笼体结构，内外墙资料均为轻质板材。由于自重轻（仅相当于砖混修建的1/5的分量），所以在地震中所遭到的冲击力小，再加上轻钢结构的耐性好，足以抵挡9级以上地震。‍&lt;/p&gt;&lt;p&gt;&lt;br style=&quot;white-space: normal;&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','','首先，老房子尽管价格比新房子低，但是各种小费用却不少。二手房生意的手续费用不低。而且老房子的家具还有装修都年久失修，要操办起这些来也是要花不少钱的。其次，面子问题。假设是新人成婚，却给他买个老房子，关于年轻人来说是很没面子的作业。第三、老房子年久失修，会有不少an quan隐患。第四，老房子一般设备比较老旧',255,'1','0','0','0',3,0,0,'admin','admin','2022-05-17 23:21:36','2022-05-18 10:43:10','4','0',''),(25,'cn','5','','农村建房','#333333','Rural construction','','超级管理员','本站','','2022-05-17 23:18:55','/static/upload/image/20220517/1652800772366361.png','','','','','','','',255,'1','0','1','0',6,0,0,'admin','admin','2022-05-17 23:19:34','2022-05-18 15:38:32','4','0',''),(26,'cn','2','','轻钢别墅建设需要着重注意的几点','#333333','随着社会和科技的发展，轻钢房屋，轻钢别墅走进了大众的视野，目前很多人都已经在这样的居住环境之中了，越来越多的人也开始关注这种新型房屋，那么我们来了解一下他在建设过程中应该注意的点是什么吧。','','超级管理员','本站','','2022-05-17 23:20:28','/static/upload/image/20220518/1652833891473636.png','','','&lt;p style=&quot;white-space: normal;&quot;&gt;随着社会和科技的发展，轻钢房屋，轻钢别墅走进了大众的视野，目前很多人都已经在这样的居住环境之中了，越来越多的人也开始关注这种新型房屋，那么我们来了解一下他在建设过程中应该注意的点是什么吧。&lt;/p&gt;&lt;p style=&quot;white-space: normal; text-align: center;&quot;&gt;&lt;img src=&quot;/static/upload/image/20220518/1652833891473636.png&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;首先，如果你想建造一个轻钢房屋，轻钢别墅，那么一定选择一家口碑好的施工单位，这样的单位经验丰富，能够及时的处理各种突发的未知情况，还有材料的购买一定要注意，一定要选择质量好的，没有an quan隐患的，这样自己的屋子自己住起来放心，施工也会很便利，材料差的房子建造起来后可能会出现很多质量的问题，an quan隐患等，比如漏水，侧墙裂缝等影响居住的现象。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;其次，在施工过程中，an quan因素很重要，一定要做好关键点的控制和着重位置的防护。选择晴天的天气下进行施工，这样材料能够快速的干燥，有害气体能够快速的散发出去，这样房子会更加舒服。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;轻钢房屋在建造时使用的材料主体架构时轻钢龙骨，现在市面上主要流行两种轻钢龙骨的原材料，一种是镀锌钢带，另一种是镀铝锌钢带，后者在加工成轻钢龙骨的时候比前者更加的耐腐蚀防锈，利达集团在建造轻钢房屋轻钢别墅的时候使用的是种镀铝锌材质，经过众多的实验，我们发现雨季施工也没有生锈的痕迹。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;轻钢房屋的的墙体材料也很新颖特别，使用保温隔音棉，也叫做玻璃纤维棉；墙体的结构使用高强度的纤维水泥压力板—OSB板。材料使用金属雕花板，设计美观大方，款式新颖。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','','随着社会和科技的发展，轻钢房屋，轻钢别墅走进了大众的视野，目前很多人都已经在这样的居住环境之中了，越来越多的人也开始关注这种新型房屋，那么我们来了解一下他在建设过程中应该注意的点是什么吧。首先，如果你想建造一个轻钢房屋，轻钢别墅，那么一定选择一家口碑好的施工单位，这样的单位经验丰富，能够及时的处理各',255,'1','0','0','0',5,0,0,'admin','admin','2022-05-17 23:20:59','2022-05-18 10:46:23','4','0',''),(20,'cn','5','','农村建房','#333333','Self-establish building','','超级管理员','本站','','2022-05-17 23:14:39','/static/upload/image/20220517/1652800509551183.png','','','','','','','',255,'1','0','1','0',0,0,0,'admin','admin','2022-05-17 23:15:10','2022-05-18 15:47:42','4','0',''),(21,'cn','5','','重钢别墅','#333333','Chongqing steel villa','','超级管理员','本站','','2022-05-17 23:15:28','/static/upload/image/20220517/1652800583990447.png','','','','','','','',255,'1','0','0','0',1,0,0,'admin','admin','2022-05-17 23:16:28','2022-05-17 23:16:28','4','0',''),(22,'cn','5','','轻钢别墅','#333333','Light steel villa','','超级管理员','本站','','2022-05-17 23:16:31','/static/upload/image/20220518/1652858309708504.jpg','','','','','','','',255,'1','0','0','0',2,0,0,'admin','admin','2022-05-17 23:16:56','2022-05-18 15:18:31','4','0',''),(23,'cn','5','','自建房','#333333','Self-built villas','','超级管理员','本站','','2022-05-17 23:16:57','/static/upload/image/20220517/1652800654255596.png','','','&lt;p&gt;兴佳别墅成立于2020年1月18日，注册资金1000万元。公司注册地在宰相故里新乡原阳，公司拥有4000平方研发及生产基地。&lt;/p&gt;&lt;p&gt;兴佳别墅是一家专业从事绿色集成住宅系统的运营商，集研发、设计、生产、建造、贸易于一身，生产基地位于河南省新乡市。我们的产品与服务包括:超轻钢(LGS)绿色集成住宅系统、轻钢龙骨系统及别墅设计、重钢以及轻重钢龙骨系统及别墅设计制造。&lt;/p&gt;&lt;p&gt;兴佳别墅成立于2020年1月18日，注册资金1000万元。公司注册地在宰相故里新乡原阳，公司拥有4000平方研发及生产基地。&lt;/p&gt;&lt;p&gt;兴佳别墅是一家专业从事绿色集成住宅系统的运营商，集研发、设计、生产、建造、贸易于一身，生产基地位于河南省新乡市。我们的产品与服务包括:超轻钢(LGS)绿色集成住宅系统、轻钢龙骨系统及别墅设计、重钢以及轻重钢龙骨系统及别墅设计制造。&lt;/p&gt;&lt;p&gt;&lt;br style=&quot;white-space: normal;&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','','兴佳别墅成立于2020年1月18日，注册资金1000万元。公司注册地在宰相故里新乡原阳，公司拥有4000平方研发及生产基地。兴佳别墅是一家专业从事绿色集成住宅系统的运营商，集研发、设计、生产、建造、贸易于一身，生产基地位于河南省新乡市。我们的产品与服务包括:超轻钢(LGS)绿色集成住宅系统、轻钢龙骨系统及别墅设计、重钢以',255,'1','0','0','0',0,0,0,'admin','admin','2022-05-17 23:17:35','2022-05-18 15:13:38','4','0',''),(24,'cn','5','','轻钢建筑别墅','#333333','Light steel building villa','','超级管理员','本站','','2022-05-17 23:17:36','/static/upload/image/20220517/1652800733750316.png','','','&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif; text-indent: 28px; font-size: 18px;&quot;&gt;轻钢别墅，又被称为轻钢结构房屋，其主要材料是由热镀锌铝钢带经冷轧技术合成的轻钢龙骨。&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif; text-indent: 2em;&quot;&gt;&lt;span style=&quot;font-size: 18px; text-indent: 28px;&quot;&gt;镀铝锌钢板&lt;/span&gt;的铝锌合金结构是由55%铝、43.4%锌与1.6%&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E7%A1%85/2142941&quot; style=&quot;font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif; white-space: normal; text-indent: 2em; color: rgb(19, 110, 194);&quot;&gt;硅&lt;/a&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif; text-indent: 2em;&quot;&gt;在600℃高温下固化而组成，其整个结构由铝－铁－硅－锌，形成致密的四元结晶体，从而形成一层强有效防止腐蚀因子透穿的屏障&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif; text-indent: 2em; font-size: 18px;&quot;&gt;。&lt;/span&gt;&lt;/p&gt;','','','','轻钢别墅，又被称为轻钢结构房屋，其主要材料是由热镀锌铝钢带经冷轧技术合成的轻钢龙骨。镀铝锌钢板的铝锌合金结构是由55%铝、43.4%锌与1.6%硅在600℃高温下固化而组成，其整个结构由铝－铁－硅－锌，形成致密的四元结晶体，从而形成一层强有效防止腐蚀因子透穿的屏障。',255,'1','0','1','0',7,0,0,'admin','admin','2022-05-17 23:18:09','2022-05-18 15:15:18','4','0',''),(29,'cn','8','','轻钢别墅工程案例','#333333','','','超级管理员','本站','','2022-05-18 08:23:08','/static/upload/image/20220518/1652840619737321.png','','','&lt;p&gt;&lt;img src=&quot;/static/upload/image/20220518/1652833470830108.jpg&quot; style=&quot;width:100%&quot;/&gt; &amp;nbsp; &amp;nbsp;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/static/upload/image/20220518/1652833490903102.jpg&quot; style=&quot;width:100%&quot;/&gt; &amp;nbsp; &amp;nbsp;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/static/upload/image/20220518/1652833536991328.jpg&quot; style=&quot;width:100%&quot;/&gt;&amp;nbsp;&amp;nbsp;&lt;br/&gt;&lt;/p&gt;','','','','',255,'1','0','0','0',0,0,0,'admin','admin','2022-05-18 08:26:34','2022-05-18 10:23:40','4','0',''),(30,'cn','8','','重钢别墅案例','#333333','','','超级管理员','本站','','2022-05-18 08:26:35','/static/upload/image/20220518/1652833815752256.png','','','&lt;p&gt;&lt;img src=&quot;/static/upload/image/20220518/1652833644596219.jpg&quot; style=&quot;width:100%&quot;/&gt;&amp;nbsp;&amp;nbsp;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/static/upload/image/20220518/1652833673411583.jpg&quot; style=&quot;width:100%&quot;/&gt;&amp;nbsp;&amp;nbsp;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/static/upload/image/20220518/1652833694470460.jpg&quot; style=&quot;width:100%&quot;/&gt;&amp;nbsp;&amp;nbsp;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/static/upload/image/20220518/1652833714775087.jpg&quot; style=&quot;width:100%&quot;/&gt;&amp;nbsp;&amp;nbsp;&lt;br/&gt;&lt;/p&gt;','','','','',255,'1','0','0','0',0,0,0,'admin','admin','2022-05-18 08:28:53','2022-05-18 08:30:17','4','0',''),(31,'cn','8','','农村建房项目','#333333','','','超级管理员','本站','','2022-05-18 08:28:54','/static/upload/image/20220518/1652833782186880.png','','','&lt;p style=&quot;white-space: normal;&quot;&gt;一、地基的处理&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;在建造地基的时候，需要注意防潮、防水、防蚁，防鼠等&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;防潮做法：&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;如为混凝土结构，即可起到自防潮作用，不必再作防潮处理；如为砖砌体结构，墙基应设置防水砂浆防潮层。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;防水做法：&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可采用防水混凝土、卷材防水、涂料防水，以及水泥砂浆等对地基做防水处理。农村房屋建成后需要做散水，以防地面水灌入地基。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;img src=&quot;http://xjzpjz.com/static/upload/image/20220511/1652234272111112.jpg&quot; title=&quot;1652234272111112.jpg&quot; alt=&quot;轻钢别墅 (16).jpg&quot;/&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;二、雨蓬、挑梁、外檐沟　　&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;雨蓬和挑梁是常见的悬挑构件，其受力模式为上部受拉力，所以受力钢筋需要放置在顶部。其底部模板支撑须在砼强度达到百分之95以上才能拆除。施工常见的错误就是把受力钢筋放置在底部，在模板拆除后导致梁板顶部出现裂缝，严重的出现倒塌。　&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;img src=&quot;http://xjzpjz.com/static/upload/image/20220511/1652234283543190.jpg&quot; title=&quot;1652234283543190.jpg&quot; alt=&quot;墙体材料 (1).jpg&quot; style=&quot;width: 1200px;&quot;/&gt;　&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;三、墙体&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;墙体在房屋中是承重和维护结构。外墙上有外脚手架拉结留下的孔，在粉刷前需要先将孔洞用砖等堵实，然后用水泥砂浆粉刷，否则该部位及易渗水。砌体应上下错缝、内外搭砌，采用一顺一丁的砌筑形式，砌体灰缝砂浆应饱满，头缝也要饱满，不可留有透亮孔。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;四、构造柱、框架柱&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;构造柱主要起到拉结墙体作用，在结构上不承受结构荷载。框架柱主要承受结构荷载——竖向压力和弯矩。一般框架柱的截面尺寸比构造柱大，柱内配钢筋数量也比构造柱多。构造柱和墙体连接采取马牙槎型式，而框架柱和墙体连接才用竖向预留拉结钢筋型式。因此在施工中一定要注意二者区别。　　&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;五、简支梁、框架梁&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;简支梁是两端支承在砖砌体等支座上的梁，其纵向受力钢筋放置在梁下部；框架梁是两端支承在框架柱等支座上的梁，其纵向受力钢筋在支座部位放置在梁上部，在跨中部位放置在梁下部。在现场施工时主要注意纵向受力钢筋的放置位置，防止材料用了，却没用对位置，造成an quan隐患或浪费。　&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;六、门窗&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;窗口两边抹灰要垂直，门口抹灰前一定要检查门框安装位置、垂直度，避免门框与墙不平行和门框距墙中宽度不一。门窗框与墙体间的缝隙，应采用保温材料填堵，宜采用施工现场灌注聚氨酯泡沫塑料或堵塞聚乙烯泡沫塑料棒，再从内外侧用嵌缝密封膏（胶）密封，以减少该部位的开裂、结露和空气shen透。&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;img src=&quot;http://xjzpjz.com/static/upload/image/20220511/1652234299205903.jpg&quot; title=&quot;1652234299205903.jpg&quot; alt=&quot;微信图片_202204191414171.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','','一、地基的处理在建造地基的时候，需要注意防潮、防水、防蚁，防鼠等 防潮做法：如为混凝土结构，即可起到自防潮作用，不必再作防潮处理；如为砖砌体结构，墙基应设置防水砂浆防潮层。防水做法：可采用防水混凝土、卷材防水、涂料防水，以及水泥砂浆等对地基做防水处理。农村房',255,'1','0','0','0',2,0,0,'admin','admin','2022-05-18 08:29:43','2022-05-18 08:29:43','4','0',''),(15,'cn','9','','信息审核专员','#333333','','','admin','本站','','2018-04-12 10:34:24','','','','<p><strong>岗位职责：</strong></p><p>1、根据业务规范对全平台音视图文内容进行审核、筛选及处理；</p><p>2、对平台内容进行监管处理和备案，维持网络秩序；</p><p>3、为用户提供平台业务咨询服务，保障产品活动顺利进行；</p><p>4、受理客户投诉，在授权范围内予以解决；</p><p>5、参与修订审核标准，优化审核流程与规范。</p><p>&nbsp;</p><p><strong>岗位要求：</strong></p><p>1、大专以上学历，专业不限，有视频网站内容审核经验者优先；</p><p>2、熟悉互联网信息安全，有敏感的风险意识，针对突发热点话题具备一定的判断处理能力；</p><p>3、耐心、细致、踏实、严谨，具备高度的责任心和团队合作精神；</p><p>4、有一定沟通协调能力及组织领导力，能够承担一定的压力与挑战。</p><p>说明：上班时间遵从部门内部排班安排，能适应夜班。</p><p>岗位升值空间：组长、主管、平台运营专员、网络推广、音乐编辑…</p><p><br/></p><p><strong>工作地址：</strong>\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><h2>北京市朝阳区</h2><p><br/></p>','','','','',255,'1','0','0','0',4,0,0,'admin','admin','2018-04-12 10:37:25','2018-04-13 09:43:29','4','',''),(16,'cn','9','','平台运营','#333333','','','admin','本站','','2018-04-12 10:37:31','','','','<p><strong><span style=\";font-family:宋体\">岗位职责： </span></strong></p><p>1、 负责平台运营的业务支撑工作，保证平台业务稳定发展；</p><p>2、 参与和优化部门业务操作流程，保证团队协同工作；</p><p>3、 为用户提供平台业务咨询服务；</p><p>4、 受理客户投诉，在授权范围内予以解决；</p><p>5、 网络活动视频录像与剪辑，挖掘优秀作品,后台信息简单编辑处理；</p><p>6、 与公司其他部门配合工作。</p><p><br/></p><p><strong><span style=\";font-family:宋体\">任职要求： </span></strong></p><p>1、 专科及以上学历，热爱互联网行业；</p><p>2、 较强的工作责任心，踏实勤恳，积极向上，性格开朗；</p><p>3、 形象佳，口齿伶俐，普通话标准；</p><p>4、 熟练使用电脑，经常上网，会使用office等相关办公软件；</p><p>5、 能适应白班、夜班倒班工作制；</p><p>注：根据个人能力和特长，公司给予更多的发展及晋升空间。</p><p><br/></p><p><strong>工作地址：</strong>\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><h2>北京市朝阳区北苑路</h2><p><br/></p>','','','','',255,'1','0','0','0',3,0,0,'admin','admin','2018-04-12 10:37:57','2018-04-13 09:41:28','4','',''),(17,'cn','9','','高级Linux运维工程师','#333333','','','admin','本站','','2018-04-12 10:38:09','','','','<p style=\"line-height: 150%\"><strong><span style=\"font-size:16px;line-height: 150%;font-family:宋体\">岗位职责：</span></strong></p><p>1、负责公司服务器基础环境的部署、配置、日常巡检、维护、故障的应急响应和问题处理；</p><p>2、负责公司kvm虚拟化平台的管理工作，基础环境部署，性能容量管理，漏洞扫描、安全加固，保证其稳定、高效运行；</p><p>3、负责维护公司集中监控系统，根据业务需求调整监控策略、告警阀值，处理告警信息和问题跟踪；</p><p>4、编写系统维护文档，完善并更新运维流程文档；</p><p style=\"line-height:150%\"><span style=\"font-size: 16px;line-height:150%\">&nbsp;</span></p><p style=\"line-height:150%\"><strong><span style=\"font-size:16px;line-height:150%;font-family:宋体\">任职要求：</span></strong></p><p>1、计算机等相关专业，本科以上学历，2年以上linux系统管理工作经验，经验丰富可适当放宽学历条件；</p><p>2、熟悉基础网络知识，熟悉TCP/IP协议工作原理，有大流量网站服务器管理经验者优先，熟悉自动化运维工具（三选一puppet/saltstack/ansible）优先；</p><p>3、熟悉linux系统高可用技术和负载均衡技术，熟悉WEB相关技术，包括Apache/Nginx/tomcat/squid 等应用程序的安装、配置和维护；</p><p>4、熟悉服务器硬件，具备排错及故障定位、处理的能力；熟练使用各种工具进行系统状态监控（cacti、Nagios、ganglia等），有虚拟化平台相关经验者优先（vmware/kvm/docker）；</p><p>5、有良好的沟通能力和团队合作精神，有强烈的事业心和责任感，工作细心，热爱学习和分享，具有RHCE、RHCA认证者优先；</p><p>6、熟练撑握shell/python/perl等1至2种语言。</p><p><br/></p><p><strong>工作地址：</strong>\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><h2>北京市朝阳区</h2><p><br/></p>','','','','',255,'1','0','0','0',5,0,0,'admin','admin','2018-04-12 10:39:40','2018-04-13 09:40:52','4','','');
/*!40000 ALTER TABLE `ay_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_content_ext`
--

DROP TABLE IF EXISTS `ay_content_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_content_ext` (
  `extid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contentid` int(10) unsigned NOT NULL,
  `ext_price` varchar(100) DEFAULT NULL COMMENT '产品价格',
  `ext_type` varchar(100) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`extid`),
  KEY `ay_content_ext_contentid` (`contentid`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_content_ext`
--

LOCK TABLES `ay_content_ext` WRITE;
/*!40000 ALTER TABLE `ay_content_ext` DISABLE KEYS */;
INSERT INTO `ay_content_ext` VALUES (9,23,'','自建房'),(8,22,'','轻钢别墅'),(7,21,'','重钢别墅'),(6,20,'','轻钢别墅,农村建房'),(10,24,'',''),(11,25,'','农村建房'),(14,34,'','轻钢别墅'),(15,35,'','自建房'),(16,36,'','重钢别墅'),(17,37,'','重钢别墅'),(18,38,'','重钢别墅'),(19,39,'','自建房'),(20,40,'','农村建房'),(21,41,'','重钢别墅');
/*!40000 ALTER TABLE `ay_content_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_content_sort`
--

DROP TABLE IF EXISTS `ay_content_sort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_content_sort` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `acode` varchar(20) NOT NULL COMMENT '区域编码',
  `mcode` varchar(20) NOT NULL COMMENT '内容模型编码',
  `pcode` varchar(20) NOT NULL COMMENT '父编码',
  `scode` varchar(20) NOT NULL COMMENT '分类编码',
  `name` varchar(100) NOT NULL COMMENT '分类名称',
  `listtpl` varchar(50) NOT NULL COMMENT '列表页模板',
  `contenttpl` varchar(50) NOT NULL COMMENT '内容页模板',
  `status` char(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `outlink` varchar(100) NOT NULL COMMENT '转外链接',
  `subname` varchar(200) NOT NULL COMMENT '附加名称',
  `def1` varchar(1000) NOT NULL COMMENT '栏目描述1',
  `def2` varchar(1000) NOT NULL COMMENT '栏目描述2',
  `def3` varchar(1000) NOT NULL COMMENT '栏目描述3',
  `ico` varchar(100) NOT NULL COMMENT '分类缩略图',
  `pic` varchar(100) NOT NULL COMMENT '分类大图',
  `title` varchar(100) NOT NULL COMMENT 'seo标题',
  `keywords` varchar(200) NOT NULL COMMENT '分类关键字',
  `description` varchar(500) NOT NULL COMMENT '分类描述',
  `filename` varchar(30) NOT NULL COMMENT '自定义文件名',
  `sorting` int(10) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `gtype` char(1) NOT NULL DEFAULT '4',
  `gid` varchar(20) NOT NULL DEFAULT '',
  `gnote` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_content_sort_scode` (`scode`),
  KEY `ay_content_sort_pcode` (`pcode`),
  KEY `ay_content_sort_acode` (`acode`),
  KEY `ay_content_sort_mcode` (`mcode`),
  KEY `ay_content_sort_filename` (`filename`),
  KEY `ay_content_sort_sorting` (`sorting`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_content_sort`
--

LOCK TABLES `ay_content_sort` WRITE;
/*!40000 ALTER TABLE `ay_content_sort` DISABLE KEYS */;
INSERT INTO `ay_content_sort` VALUES (1,'cn','1','0','1','关于我们','','about.html','1','','网站建设「一站式」服务商','','','','','','','','','aboutus',1,'admin','admin','2018-04-11 17:26:11','2022-05-17 23:06:15','4','0',''),(2,'cn','2','0','2','新闻中心','newslist.html','news.html','1','','了解最新公司动态及行业资讯','','','','','','','','','article',4,'admin','admin','2018-04-11 17:26:46','2022-05-17 23:06:15','4','',''),(5,'cn','3','0','5','产品中心','productlist.html','product.html','1','','服务创造价值、存在造就未来','','','','','','','','','product',2,'admin','admin','2018-04-11 17:27:54','2022-05-17 23:06:15','4','',''),(8,'cn','4','0','8','工程案例','caselist.html','case.html','1','','服务创造价值、存在造就未来','','','','','','','','','case',3,'admin','admin','2018-04-11 17:29:16','2022-05-17 23:06:15','4','0',''),(9,'cn','5','0','9','招贤纳士','joblist.html','job.html','0','','诚聘优秀人士加入我们的团队','','','','','','','','','job',255,'admin','admin','2018-04-11 17:30:02','2022-05-17 23:06:15','4','',''),(10,'cn','1','0','10','在线留言','','message.html','1','','有什么问题欢迎您随时反馈','','','','','','','','','gbook',5,'admin','admin','2018-04-11 17:30:36','2022-05-18 09:47:24','4','0',''),(11,'cn','1','0','11','联系我们','','contact.html','1','','能为您服务是我们的荣幸','','','','','','','','','contact',6,'admin','admin','2018-04-11 17:31:29','2022-05-18 08:22:15','4','0','');
/*!40000 ALTER TABLE `ay_content_sort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_diy_telephone`
--

DROP TABLE IF EXISTS `ay_diy_telephone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_diy_telephone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `tel` varchar(20) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_diy_telephone`
--

LOCK TABLES `ay_diy_telephone` WRITE;
/*!40000 ALTER TABLE `ay_diy_telephone` DISABLE KEYS */;
/*!40000 ALTER TABLE `ay_diy_telephone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_extfield`
--

DROP TABLE IF EXISTS `ay_extfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_extfield` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `mcode` varchar(20) NOT NULL COMMENT '模型编码',
  `name` varchar(30) NOT NULL COMMENT '字段名称',
  `type` char(2) NOT NULL COMMENT '字段类型',
  `value` varchar(500) NOT NULL COMMENT '单选或多选值',
  `description` varchar(30) NOT NULL COMMENT '描述文本',
  `sorting` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `ay_extfield_mcode` (`mcode`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_extfield`
--

LOCK TABLES `ay_extfield` WRITE;
/*!40000 ALTER TABLE `ay_extfield` DISABLE KEYS */;
INSERT INTO `ay_extfield` VALUES (1,'3','ext_price','1','','产品价格',255),(2,'3','ext_type','4','轻钢别墅,重钢别墅,自建房,农村建房','类型',255);
/*!40000 ALTER TABLE `ay_extfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_form`
--

DROP TABLE IF EXISTS `ay_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_form` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `fcode` varchar(20) NOT NULL COMMENT '表单编码',
  `form_name` varchar(30) NOT NULL COMMENT '表单名称',
  `table_name` varchar(30) NOT NULL COMMENT '表名称',
  `create_user` varchar(30) NOT NULL COMMENT '添加人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '添加时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_form_fcode` (`fcode`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_form`
--

LOCK TABLES `ay_form` WRITE;
/*!40000 ALTER TABLE `ay_form` DISABLE KEYS */;
INSERT INTO `ay_form` VALUES (1,'1','在线留言','ay_message','admin','admin','2018-04-11 17:31:29','2018-04-11 17:31:29'),(2,'2','搜集电话','ay_diy_telephone','admin','admin','2018-11-30 15:17:40','2018-11-30 15:17:40');
/*!40000 ALTER TABLE `ay_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_form_field`
--

DROP TABLE IF EXISTS `ay_form_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_form_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `fcode` varchar(20) NOT NULL COMMENT '表单编码',
  `name` varchar(30) NOT NULL COMMENT '字段名称',
  `length` int(10) unsigned NOT NULL COMMENT '字段长度',
  `required` char(1) NOT NULL DEFAULT '0' COMMENT '是否必填',
  `description` varchar(30) NOT NULL COMMENT '描述文本',
  `sorting` int(10) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  `create_user` varchar(30) NOT NULL COMMENT '添加人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '添加时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `ay_form_field_fcode` (`fcode`),
  KEY `ay_form_field_sorting` (`sorting`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_form_field`
--

LOCK TABLES `ay_form_field` WRITE;
/*!40000 ALTER TABLE `ay_form_field` DISABLE KEYS */;
INSERT INTO `ay_form_field` VALUES (1,'1','contacts',10,'1','联系人',255,'admin','admin','2018-07-14 18:24:02','2018-07-15 17:47:43'),(2,'1','mobile',12,'1','手机',255,'admin','admin','2018-07-14 18:24:02','2018-07-15 17:47:44'),(3,'1','content',500,'1','内容',255,'admin','admin','2018-07-14 18:24:02','2018-07-15 17:47:45'),(4,'2','tel',20,'1','电话号码',255,'admin','admin','2018-11-30 15:18:00','2018-11-30 15:18:00');
/*!40000 ALTER TABLE `ay_form_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_label`
--

DROP TABLE IF EXISTS `ay_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_label` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `value` varchar(500) NOT NULL COMMENT '值',
  `type` char(1) NOT NULL DEFAULT '1' COMMENT '字段类型',
  `description` varchar(30) NOT NULL COMMENT '描述',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `update_user` varchar(20) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_label`
--

LOCK TABLES `ay_label` WRITE;
/*!40000 ALTER TABLE `ay_label` DISABLE KEYS */;
INSERT INTO `ay_label` VALUES (1,'downlink','https://gitee.com/hnaoyun/PbootCMS/releases','1','下载地址','admin','admin','2018-04-11 16:52:19','2022-05-17 23:30:56'),(2,'erweima','/static/upload/image/20220517/1652801453248839.png','4','weixi','admin','admin','2022-05-17 23:30:08','2022-05-17 23:30:56');
/*!40000 ALTER TABLE `ay_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_link`
--

DROP TABLE IF EXISTS `ay_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `acode` varchar(20) NOT NULL COMMENT '区域编码',
  `gid` int(10) unsigned NOT NULL COMMENT '分组序号',
  `name` varchar(50) NOT NULL COMMENT '链接名称',
  `link` varchar(100) NOT NULL COMMENT '跳转链接',
  `logo` varchar(100) NOT NULL COMMENT '图片地址',
  `sorting` int(11) NOT NULL COMMENT '排序',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `ay_link_acode` (`acode`),
  KEY `ay_link_gid` (`gid`),
  KEY `ay_link_sorting` (`sorting`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_link`
--

LOCK TABLES `ay_link` WRITE;
/*!40000 ALTER TABLE `ay_link` DISABLE KEYS */;
INSERT INTO `ay_link` VALUES (1,'cn',1,'PbootCMS','https://www.pbootcms.com','/static/upload/image/20180412/1523501605180536.png',255,'admin','admin','2018-04-12 10:53:06','2018-04-12 10:53:26');
/*!40000 ALTER TABLE `ay_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_member`
--

DROP TABLE IF EXISTS `ay_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucode` varchar(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `useremail` varchar(50) NOT NULL DEFAULT '',
  `usermobile` varchar(11) NOT NULL DEFAULT '',
  `nickname` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `headpic` varchar(200) NOT NULL,
  `status` char(1) NOT NULL,
  `activation` char(1) NOT NULL DEFAULT '1',
  `gid` varchar(20) NOT NULL,
  `wxid` varchar(50) NOT NULL,
  `qqid` varchar(50) NOT NULL,
  `wbid` varchar(50) NOT NULL,
  `score` int(10) unsigned NOT NULL DEFAULT '0',
  `register_time` datetime NOT NULL,
  `login_count` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` varchar(11) NOT NULL,
  `last_login_time` varchar(11) NOT NULL,
  `sex` varchar(2) NOT NULL DEFAULT '',
  `birthday` varchar(20) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_member_ucode` (`ucode`),
  UNIQUE KEY `ay_member_username` (`username`),
  KEY `ay_member_gid` (`gid`),
  KEY `ay_member_wxid` (`wxid`),
  KEY `ay_member_qqid` (`qqid`),
  KEY `ay_member_wbid` (`wbid`),
  KEY `ay_member_useremail` (`useremail`),
  KEY `ay_member_usermobile` (`usermobile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_member`
--

LOCK TABLES `ay_member` WRITE;
/*!40000 ALTER TABLE `ay_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `ay_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_member_comment`
--

DROP TABLE IF EXISTS `ay_member_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_member_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `contentid` int(10) unsigned NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `puid` int(10) unsigned NOT NULL,
  `likes` int(10) unsigned NOT NULL DEFAULT '0',
  `oppose` int(10) unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL,
  `user_ip` varchar(11) NOT NULL,
  `user_os` varchar(30) NOT NULL,
  `user_bs` varchar(30) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_user` varchar(30) NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ay_member_comment_pid` (`pid`),
  KEY `ay_member_comment_contentid` (`contentid`),
  KEY `ay_member_comment_uid` (`uid`),
  KEY `ay_member_comment_puid` (`puid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_member_comment`
--

LOCK TABLES `ay_member_comment` WRITE;
/*!40000 ALTER TABLE `ay_member_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ay_member_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_member_field`
--

DROP TABLE IF EXISTS `ay_member_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_member_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `length` int(10) unsigned NOT NULL,
  `required` char(1) NOT NULL,
  `description` varchar(30) NOT NULL,
  `sorting` int(10) unsigned NOT NULL,
  `status` char(1) NOT NULL,
  `create_user` varchar(30) NOT NULL,
  `update_user` varchar(30) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_member_field`
--

LOCK TABLES `ay_member_field` WRITE;
/*!40000 ALTER TABLE `ay_member_field` DISABLE KEYS */;
INSERT INTO `ay_member_field` VALUES (1,'sex',2,'0','性别',255,'1','admin','admin','2020-06-25 00:00:00','2020-06-25 00:00:00'),(2,'birthday',20,'0','生日',255,'1','admin','admin','2020-06-25 00:00:00','2020-06-25 00:00:00'),(3,'qq',15,'0','QQ',255,'1','admin','admin','2020-06-25 00:00:00','2020-06-25 00:00:00');
/*!40000 ALTER TABLE `ay_member_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_member_group`
--

DROP TABLE IF EXISTS `ay_member_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_member_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gcode` varchar(20) NOT NULL,
  `gname` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` varchar(1) NOT NULL,
  `lscore` int(10) unsigned NOT NULL DEFAULT '0',
  `uscore` int(10) unsigned NOT NULL DEFAULT '0',
  `create_user` varchar(30) NOT NULL,
  `update_user` varchar(30) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_member_group_gcode` (`gcode`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_member_group`
--

LOCK TABLES `ay_member_group` WRITE;
/*!40000 ALTER TABLE `ay_member_group` DISABLE KEYS */;
INSERT INTO `ay_member_group` VALUES (1,'1','初级会员','初级会员具备基本的权限','1',0,999,'admin','admin','2020-06-25 00:00:00','2020-06-25 00:00:00'),(2,'2','中级会员','中级会员具备部分特殊权限','1',1000,9999,'admin','admin','2020-06-25 00:00:00','2020-06-25 00:00:00'),(3,'3','高级会员','高级会员具备全部特殊权限','1',10000,4294967295,'admin','admin','2020-06-25 00:00:00','2020-06-25 00:00:00');
/*!40000 ALTER TABLE `ay_member_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_menu`
--

DROP TABLE IF EXISTS `ay_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单编号',
  `mcode` varchar(20) NOT NULL COMMENT '菜单编码',
  `pcode` varchar(20) NOT NULL COMMENT '上级菜单',
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `url` varchar(100) NOT NULL COMMENT '菜单地址',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '菜单排序',
  `status` char(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `shortcut` char(1) NOT NULL DEFAULT '0' COMMENT '桌面图标',
  `ico` varchar(30) NOT NULL COMMENT '菜单图标',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_menu_mcode` (`mcode`),
  KEY `ay_menu_pcode` (`pcode`),
  KEY `ay_menu_sorting` (`sorting`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_menu`
--

LOCK TABLES `ay_menu` WRITE;
/*!40000 ALTER TABLE `ay_menu` DISABLE KEYS */;
INSERT INTO `ay_menu` VALUES (1,'M101','0','系统管理','/admin/M101/index',900,'1','0','fa-cog','admin','admin','0000-00-00 00:00:00','2018-04-30 14:52:57'),(2,'M102','M101','数据区域','/admin/Area/index',901,'1','1','fa-sitemap','admin','admin','0000-00-00 00:00:00','2018-04-30 14:54:23'),(3,'M103','M101','系统菜单','/admin/Menu/index',902,'0','0','fa-bars','admin','admin','0000-00-00 00:00:00','2018-04-30 14:54:35'),(4,'M104','M101','系统角色','/admin/Role/index',903,'1','1','fa-hand-stop-o','admin','admin','0000-00-00 00:00:00','2018-04-30 14:54:43'),(5,'M105','M101','系统用户','/admin/User/index',904,'1','1','fa-users','admin','admin','0000-00-00 00:00:00','2018-04-30 14:54:51'),(6,'M106','M101','系统日志','/admin/Syslog/index',905,'1','1','fa-history','admin','admin','0000-00-00 00:00:00','2018-04-30 14:55:00'),(7,'M107','M101','类型管理','/admin/Type/index',906,'0','0','fa-tags','admin','admin','0000-00-00 00:00:00','2018-04-30 14:55:13'),(8,'M108','M101','数据库管理','/admin/Database/index',907,'1','1','fa-database','admin','admin','0000-00-00 00:00:00','2018-04-30 14:55:24'),(9,'M109','M101','服务器信息','/admin/Site/server',908,'1','1','fa-info-circle','admin','admin','0000-00-00 00:00:00','2018-04-30 14:55:34'),(10,'M110','0','基础内容','/admin/M110/index',300,'1','0','fa-sliders','admin','admin','2017-11-28 11:13:05','2018-04-30 14:48:29'),(11,'M111','M110','站点信息','/admin/Site/index',301,'1','1','fa-cog','admin','admin','0000-00-00 00:00:00','2018-04-07 18:45:57'),(12,'M112','M110','公司信息','/admin/Company/index',302,'1','1','fa-copyright','admin','admin','0000-00-00 00:00:00','2018-04-07 18:46:09'),(29,'M129','M110','内容栏目','/admin/ContentSort/index',303,'1','1','fa-bars','admin','admin','2017-12-26 10:42:40','2018-04-07 18:46:25'),(30,'M130','0','文章内容','/admin/M130/index',400,'1','0','fa-file-text-o','admin','admin','2017-12-26 10:45:36','2018-04-30 14:49:47'),(31,'M131','M130','单页内容','/admin/Single/index',401,'0','0','fa-file-o','admin','admin','2017-12-26 10:46:35','2018-04-07 18:46:35'),(32,'M132','M130','列表内容','/admin/Content/index',402,'0','0','fa-file-text-o','admin','admin','2017-12-26 10:48:17','2018-04-07 21:52:15'),(36,'M136','M156','定制标签','/admin/Label/index',203,'1','1','fa-wrench','admin','admin','2018-01-03 11:52:40','2018-04-07 18:44:31'),(50,'M150','M157','留言信息','/admin/Message/index',501,'1','1','fa-question-circle-o','admin','admin','2018-02-01 13:20:17','2018-07-07 23:45:09'),(51,'M151','M157','轮播图片','/admin/Slide/index',502,'1','1','fa-picture-o','admin','admin','2018-03-01 14:57:41','2018-04-07 18:47:07'),(52,'M152','M157','友情链接','/admin/Link/index',503,'1','1','fa-link','admin','admin','2018-03-01 14:58:45','2018-04-07 18:47:16'),(53,'M153','M156','配置参数','/admin/Config/index',201,'1','1','fa-sliders','admin','admin','2018-03-21 14:52:05','2018-04-07 18:44:02'),(61,'M1000','M157','文章内链','/admin/Tags/index',505,'1','0','fa-random','admin','admin','2019-07-12 08:25:41','2019-07-12 08:26:23'),(55,'M155','M156','模型管理','/admin/Model/index',204,'1','1','fa-codepen','admin','admin','2018-03-25 17:16:06','2018-04-07 18:44:40'),(56,'M156','0','全局配置','/admin/M156/index',200,'1','0','fa-globe','admin','admin','2018-03-25 17:20:43','2018-04-30 14:43:56'),(58,'M158','M156','模型字段','/admin/ExtField/index',205,'1','1','fa-external-link','admin','admin','2018-03-25 21:24:43','2018-04-07 18:44:49'),(57,'M157','0','扩展内容','/admin/M157/index',500,'1','0','fa-arrows-alt','admin','admin','2018-03-25 17:27:57','2018-04-30 14:50:34'),(60,'M160','M157','自定义表单','/admin/Form/index',504,'1','1','fa-plus-square-o','admin','admin','2018-05-30 18:25:41','2018-05-31 23:55:10'),(62,'M1001','0','会员中心','/admin/M1001/index',600,'1','0','fa-user-o','admin','admin','2019-10-04 08:25:41','2019-10-04 08:26:23'),(63,'M1002','M1001','会员等级','/admin/MemberGroup/index',601,'1','0','fa-signal','admin','admin','2019-10-04 08:25:41','2019-10-04 08:26:23'),(64,'M1003','M1001','会员字段','/admin/MemberField/index',602,'1','0','fa-wpforms','admin','admin','2019-10-04 08:25:41','2019-10-04 08:26:23'),(65,'M1004','M1001','会员管理','/admin/Member/index',603,'1','0','fa-users','admin','admin','2019-10-04 08:25:41','2019-10-04 08:26:23'),(66,'M1005','M1001','文章评论','/admin/MemberComment/index',604,'1','0','fa-commenting-o','admin','admin','2019-10-04 08:25:41','2019-10-04 08:26:23');
/*!40000 ALTER TABLE `ay_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_menu_action`
--

DROP TABLE IF EXISTS `ay_menu_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_menu_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mcode` varchar(20) NOT NULL COMMENT '菜单编码',
  `action` varchar(20) NOT NULL COMMENT '类型编码',
  PRIMARY KEY (`id`),
  KEY `ay_menu_action_mcode` (`mcode`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_menu_action`
--

LOCK TABLES `ay_menu_action` WRITE;
/*!40000 ALTER TABLE `ay_menu_action` DISABLE KEYS */;
INSERT INTO `ay_menu_action` VALUES (1,'M102','mod'),(2,'M102','del'),(3,'M102','add'),(4,'M103','mod'),(5,'M103','del'),(6,'M103','add'),(7,'M104','mod'),(8,'M104','del'),(9,'M104','add'),(10,'M105','mod'),(11,'M105','del'),(12,'M105','add'),(13,'M107','mod'),(14,'M107','del'),(15,'M107','add'),(16,'M111','mod'),(17,'M112','mod'),(18,'M114','mod'),(19,'M114','del'),(20,'M114','add'),(21,'M120','mod'),(22,'M120','del'),(23,'M120','add'),(24,'M129','mod'),(25,'M129','del'),(26,'M129','add'),(27,'M131','mod'),(28,'M132','mod'),(29,'M132','del'),(30,'M132','add'),(31,'M136','mod'),(32,'M136','del'),(33,'M136','add'),(34,'M141','mod'),(35,'M141','del'),(36,'M141','add'),(37,'M142','mod'),(38,'M142','del'),(39,'M142','add'),(40,'M143','mod'),(41,'M143','del'),(42,'M143','add'),(43,'M144','mod'),(44,'M144','del'),(45,'M144','add'),(46,'M145','mod'),(47,'M145','del'),(48,'M145','add'),(49,'M150','del'),(50,'M150','mod'),(51,'M151','mod'),(52,'M151','del'),(53,'M151','add'),(54,'M152','mod'),(55,'M152','del'),(56,'M152','add'),(57,'M155','mod'),(58,'M155','del'),(59,'M155','add'),(60,'M158','mod'),(61,'M158','del'),(62,'M158','add'),(63,'M160','add'),(64,'M160','del'),(65,'M160','mod'),(66,'M1000','add'),(67,'M1000','del'),(68,'M1000','mod'),(69,'M1002','add'),(70,'M1002','del'),(71,'M1002','mod'),(72,'M1003','add'),(73,'M1003','del'),(74,'M1003','mod'),(75,'M1004','add'),(76,'M1004','del'),(77,'M1004','mod'),(78,'M1005','del');
/*!40000 ALTER TABLE `ay_menu_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_message`
--

DROP TABLE IF EXISTS `ay_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `acode` varchar(20) NOT NULL COMMENT '区域编码',
  `contacts` varchar(10) DEFAULT NULL COMMENT '联系人',
  `mobile` varchar(12) DEFAULT NULL COMMENT '联系电话',
  `content` varchar(500) DEFAULT NULL COMMENT '留言内容',
  `user_ip` varchar(11) NOT NULL DEFAULT '0' COMMENT 'IP地址',
  `user_os` varchar(30) NOT NULL COMMENT '操作系统',
  `user_bs` varchar(30) NOT NULL COMMENT '浏览器',
  `recontent` varchar(500) NOT NULL COMMENT '回复内容',
  `status` char(1) NOT NULL DEFAULT '1' COMMENT '是否前台显示',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ay_message_acode` (`acode`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_message`
--

LOCK TABLES `ay_message` WRITE;
/*!40000 ALTER TABLE `ay_message` DISABLE KEYS */;
INSERT INTO `ay_message` VALUES (1,'cn','星梦','16888888888','PbootCMS真心很不错哦！','2130706433','Windows 10','Firefox','谢谢您对我们的大力支持与肯定！','0','admin','admin','2018-04-12 10:56:09','2022-05-18 08:33:14',0);
/*!40000 ALTER TABLE `ay_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_model`
--

DROP TABLE IF EXISTS `ay_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_model` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `mcode` varchar(20) NOT NULL COMMENT '模型编号',
  `name` varchar(50) NOT NULL COMMENT '模型名称',
  `type` char(1) NOT NULL DEFAULT '2' COMMENT '是否列表类型',
  `urlname` varchar(100) NOT NULL DEFAULT '' COMMENT 'URL名称',
  `listtpl` varchar(50) NOT NULL COMMENT '列表页模板',
  `contenttpl` varchar(50) NOT NULL COMMENT '内容页模板',
  `status` char(1) NOT NULL DEFAULT '1' COMMENT '模型状态',
  `issystem` char(1) NOT NULL DEFAULT '0' COMMENT '系统模型',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_model_mcode` (`mcode`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_model`
--

LOCK TABLES `ay_model` WRITE;
/*!40000 ALTER TABLE `ay_model` DISABLE KEYS */;
INSERT INTO `ay_model` VALUES (1,'1','专题','1','about','','about.html','1','1','admin','admin','2018-04-11 17:16:01','2019-08-05 11:11:44'),(2,'2','新闻','2','list','newslist.html','news.html','1','1','admin','admin','2018-04-11 17:17:16','2019-08-05 11:12:04'),(3,'3','产品','2','list','productlist.html','product.html','1','0','admin','admin','2018-04-11 17:17:46','2019-08-05 11:12:17'),(4,'4','案例','2','list','caselist.html','case.html','1','0','admin','admin','2018-04-11 17:19:53','2019-08-05 11:12:26'),(5,'5','招聘','2','list','joblist.html','job.html','1','0','admin','admin','2018-04-11 17:24:34','2019-08-05 11:12:37');
/*!40000 ALTER TABLE `ay_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_role`
--

DROP TABLE IF EXISTS `ay_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `rcode` varchar(20) NOT NULL COMMENT '角色编码',
  `name` varchar(30) NOT NULL COMMENT '角色名称',
  `description` varchar(50) NOT NULL COMMENT '角色描述',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_role_rcode` (`rcode`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_role`
--

LOCK TABLES `ay_role` WRITE;
/*!40000 ALTER TABLE `ay_role` DISABLE KEYS */;
INSERT INTO `ay_role` VALUES (1,'R101','系统管理员','系统管理员具有所有权限','admin','admin','2017-03-22 11:33:32','2019-08-05 11:22:02'),(2,'R102','内容管理员','内容管理员具有基本内容管理权限','admin','admin','2017-06-01 00:32:02','2019-08-05 11:22:12');
/*!40000 ALTER TABLE `ay_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_role_area`
--

DROP TABLE IF EXISTS `ay_role_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_role_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rcode` varchar(20) NOT NULL,
  `acode` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ay_role_area_rcode` (`rcode`),
  KEY `ay_role_area_acode` (`acode`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_role_area`
--

LOCK TABLES `ay_role_area` WRITE;
/*!40000 ALTER TABLE `ay_role_area` DISABLE KEYS */;
INSERT INTO `ay_role_area` VALUES (3,'R101','cn'),(4,'R102','cn');
/*!40000 ALTER TABLE `ay_role_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_role_level`
--

DROP TABLE IF EXISTS `ay_role_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_role_level` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `rcode` varchar(20) NOT NULL COMMENT '角色编码',
  `level` varchar(50) NOT NULL COMMENT '权限地址',
  PRIMARY KEY (`id`),
  KEY `ay_role_level_rcode` (`rcode`)
) ENGINE=MyISAM AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_role_level`
--

LOCK TABLES `ay_role_level` WRITE;
/*!40000 ALTER TABLE `ay_role_level` DISABLE KEYS */;
INSERT INTO `ay_role_level` VALUES (165,'R101','/admin/Role/index'),(164,'R101','/admin/Menu/mod'),(163,'R101','/admin/Menu/del'),(162,'R101','/admin/Menu/add'),(161,'R101','/admin/Menu/index'),(160,'R101','/admin/Area/mod'),(159,'R101','/admin/Area/del'),(158,'R101','/admin/Area/add'),(157,'R101','/admin/Area/index'),(156,'R101','/admin/M101/index'),(155,'R101','/admin/Tags/mod'),(154,'R101','/admin/Tags/del'),(153,'R101','/admin/Tags/add'),(152,'R101','/admin/Tags/index'),(151,'R101','/admin/Form/mod'),(150,'R101','/admin/Form/del'),(149,'R101','/admin/Form/add'),(148,'R101','/admin/Form/index'),(147,'R101','/admin/Link/mod'),(146,'R101','/admin/Link/del'),(145,'R101','/admin/Link/add'),(144,'R101','/admin/Link/index'),(143,'R101','/admin/Slide/mod'),(142,'R101','/admin/Slide/del'),(141,'R101','/admin/Slide/add'),(140,'R101','/admin/Slide/index'),(139,'R101','/admin/Message/mod'),(138,'R101','/admin/Message/del'),(137,'R101','/admin/Message/index'),(136,'R101','/admin/M157/index'),(135,'R101','/admin/Content/mod'),(134,'R101','/admin/Content/del'),(133,'R101','/admin/Content/add'),(132,'R101','/admin/Content/index'),(131,'R101','/admin/Single/mod'),(130,'R101','/admin/Single/index'),(129,'R101','/admin/M130/index'),(128,'R101','/admin/ContentSort/mod'),(127,'R101','/admin/ContentSort/del'),(126,'R101','/admin/ContentSort/add'),(125,'R101','/admin/ContentSort/index'),(124,'R101','/admin/Company/mod'),(123,'R101','/admin/Company/index'),(122,'R101','/admin/Site/mod'),(121,'R101','/admin/Site/index'),(120,'R101','/admin/M110/index'),(119,'R101','/admin/ExtField/mod'),(118,'R101','/admin/ExtField/del'),(117,'R101','/admin/ExtField/add'),(116,'R101','/admin/ExtField/index'),(115,'R101','/admin/Model/mod'),(114,'R101','/admin/Model/del'),(113,'R101','/admin/Model/add'),(112,'R101','/admin/Model/index'),(111,'R101','/admin/Label/mod'),(110,'R101','/admin/Label/del'),(109,'R101','/admin/Label/add'),(108,'R101','/admin/Label/index'),(107,'R101','/admin/Config/index'),(106,'R101','/admin/M156/index'),(205,'R102','/admin/Link/add'),(204,'R102','/admin/Link/index'),(203,'R102','/admin/Slide/mod'),(202,'R102','/admin/Slide/del'),(201,'R102','/admin/Slide/add'),(200,'R102','/admin/Slide/index'),(199,'R102','/admin/Message/mod'),(198,'R102','/admin/Message/del'),(197,'R102','/admin/Message/index'),(196,'R102','/admin/M157/index'),(195,'R102','/admin/Content/mod'),(194,'R102','/admin/Content/del'),(193,'R102','/admin/Content/add'),(192,'R102','/admin/Content/index'),(191,'R102','/admin/Single/mod'),(190,'R102','/admin/Single/index'),(189,'R102','/admin/M130/index'),(188,'R102','/admin/ContentSort/mod'),(187,'R102','/admin/ContentSort/del'),(186,'R102','/admin/ContentSort/add'),(185,'R102','/admin/ContentSort/index'),(184,'R102','/admin/Company/mod'),(183,'R102','/admin/Company/index'),(182,'R102','/admin/Site/mod'),(181,'R102','/admin/Site/index'),(180,'R102','/admin/M110/index'),(166,'R101','/admin/Role/add'),(167,'R101','/admin/Role/del'),(168,'R101','/admin/Role/mod'),(169,'R101','/admin/User/index'),(170,'R101','/admin/User/add'),(171,'R101','/admin/User/del'),(172,'R101','/admin/User/mod'),(173,'R101','/admin/Syslog/index'),(174,'R101','/admin/Type/index'),(175,'R101','/admin/Type/add'),(176,'R101','/admin/Type/del'),(177,'R101','/admin/Type/mod'),(178,'R101','/admin/Database/index'),(179,'R101','/admin/Site/server'),(206,'R102','/admin/Link/del'),(207,'R102','/admin/Link/mod'),(208,'R102','/admin/Form/index'),(209,'R102','/admin/Form/add'),(210,'R102','/admin/Form/del'),(211,'R102','/admin/Form/mod'),(212,'R102','/admin/Tags/index'),(213,'R102','/admin/Tags/add'),(214,'R102','/admin/Tags/del'),(215,'R102','/admin/Tags/mod');
/*!40000 ALTER TABLE `ay_role_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_site`
--

DROP TABLE IF EXISTS `ay_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_site` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '站点编号',
  `acode` varchar(20) NOT NULL COMMENT '区域代码',
  `title` varchar(100) NOT NULL COMMENT '站点标题',
  `subtitle` varchar(200) NOT NULL COMMENT '站点副标题',
  `domain` varchar(50) NOT NULL COMMENT '站点地址',
  `logo` varchar(100) NOT NULL COMMENT '站点LOGO地址',
  `keywords` varchar(200) NOT NULL COMMENT '站点关键字',
  `description` varchar(500) NOT NULL COMMENT '站点描述',
  `icp` varchar(30) NOT NULL COMMENT '站点备案',
  `theme` varchar(30) NOT NULL COMMENT '站点主题',
  `statistical` varchar(500) NOT NULL COMMENT '站点统计码',
  `copyright` varchar(200) NOT NULL COMMENT '版权信息',
  PRIMARY KEY (`id`),
  KEY `ay_site_acode` (`acode`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_site`
--

LOCK TABLES `ay_site` WRITE;
/*!40000 ALTER TABLE `ay_site` DISABLE KEYS */;
INSERT INTO `ay_site` VALUES (1,'cn','兴佳别墅','早住早福','','/static/upload/image/20220517/1652797978602513.png','兴佳别墅  早住早富','兴佳别墅  早住早富兴佳别墅  早住早富兴佳别墅  早住早富兴佳别墅  早住早富兴佳别墅  早住早富','','default','','Copyright © 2018-2020 PbootCMS All Rights Reserved.');
/*!40000 ALTER TABLE `ay_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_slide`
--

DROP TABLE IF EXISTS `ay_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `acode` varchar(20) NOT NULL COMMENT '区域编码',
  `gid` int(10) unsigned NOT NULL COMMENT '分组序号',
  `pic` varchar(100) NOT NULL COMMENT '图片地址',
  `link` varchar(100) NOT NULL COMMENT '跳转链接',
  `title` varchar(50) NOT NULL COMMENT '说明文字',
  `subtitle` varchar(100) NOT NULL COMMENT '副标题/描述',
  `sorting` int(11) NOT NULL COMMENT '排序',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `ay_slide_acode` (`acode`),
  KEY `ay_slide_gid` (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_slide`
--

LOCK TABLES `ay_slide` WRITE;
/*!40000 ALTER TABLE `ay_slide` DISABLE KEYS */;
INSERT INTO `ay_slide` VALUES (1,'cn',1,'/static/upload/image/20220518/1652840539658285.jpg','','PbootCMS','永久开源、免费的PHP建站系统',255,'admin','admin','2018-03-01 16:19:03','2022-05-18 10:22:22'),(2,'cn',1,'/static/upload/image/20220518/1652840551906352.jpg','','PbootCMS','高效、简洁、强悍的PHP建站源码',255,'admin','admin','2018-04-12 10:46:07','2022-05-18 10:22:32'),(3,'cn',1,'/static/upload/image/20220518/1652840560225638.jpg','','','',255,'admin','admin','2022-05-17 22:35:51','2022-05-18 10:22:41');
/*!40000 ALTER TABLE `ay_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_syslog`
--

DROP TABLE IF EXISTS `ay_syslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_syslog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志编号',
  `level` varchar(20) NOT NULL COMMENT '信息等级',
  `event` varchar(200) NOT NULL COMMENT '事件',
  `user_ip` varchar(11) NOT NULL DEFAULT '0' COMMENT '客户端IP',
  `user_os` varchar(30) NOT NULL COMMENT '客户端系统',
  `user_bs` varchar(30) NOT NULL COMMENT '客户端浏览器',
  `create_user` varchar(30) NOT NULL COMMENT '创建人员',
  `create_time` datetime NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_syslog`
--

LOCK TABLES `ay_syslog` WRITE;
/*!40000 ALTER TABLE `ay_syslog` DISABLE KEYS */;
INSERT INTO `ay_syslog` VALUES (1,'info','登录成功!','-1233721310','Windows 10','Chrome','admin','2022-05-17 22:14:41'),(2,'info','修改参数配置成功！','-1233721310','Windows 10','Chrome','admin','2022-05-17 22:14:50'),(3,'info','登录失败!','-1233721310','Windows 10','Chrome','','2022-05-17 22:30:38'),(4,'info','登录成功!','-1233721310','Windows 10','Chrome','admin','2022-05-17 22:30:54'),(5,'info','用户资料成功！','-1233721310','Windows 10','Chrome','admin','2022-05-17 22:31:11'),(6,'info','修改站点信息成功！','-1233721310','Windows 10','Chrome','admin','2022-05-17 22:33:52'),(7,'info','登录成功!','-1233721310','Windows 10','Chrome','admin','2022-05-17 22:35:13'),(8,'info','修改轮播图1成功！','-1233721310','Windows 10','Chrome','admin','2022-05-17 22:35:26'),(9,'info','修改轮播图1成功！','-1233721310','Windows 10','Chrome','admin','2022-05-17 22:35:35'),(10,'info','修改轮播图2成功！','-1233721310','Windows 10','Chrome','admin','2022-05-17 22:35:44'),(11,'info','新增轮播图成功！','-1233721310','Windows 10','Chrome','admin','2022-05-17 22:35:51'),(12,'info','登录成功!','-1233721310','Windows 10','Chrome','admin','2022-05-17 22:38:38'),(13,'info','修改数据内容栏目9状态0成功！','-1233721310','Windows 10','Chrome','admin','2022-05-17 22:42:02'),(14,'info','登录成功!','3061245986','Windows 10','Chrome','admin','2022-05-17 22:48:03'),(15,'info','登录成功!','3061245986','Windows 10','Chrome','admin','2022-05-17 23:03:01'),(16,'info','修改数据内容栏目1成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:05:19'),(17,'info','修改数据内容栏目8成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:05:42'),(18,'info','批量修改栏目排序成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:06:15'),(19,'info','修改单页内容1成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:07:07'),(20,'info','删除文章8成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:07:27'),(21,'info','删除文章7成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:07:31'),(22,'info','删除文章6成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:07:34'),(23,'info','删除文章5成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:07:37'),(24,'info','删除文章4成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:07:40'),(25,'info','新增文章成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:08:53'),(26,'info','新增文章成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:09:29'),(27,'info','修改扩展字段2成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:14:15'),(28,'info','删除扩展字段3成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:14:23'),(29,'info','批量删除文章成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:14:38'),(30,'info','新增文章成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:15:10'),(31,'info','修改文章20成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:15:26'),(32,'info','新增文章成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:16:28'),(33,'info','新增文章成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:16:56'),(34,'info','新增文章成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:17:35'),(35,'info','新增文章成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:18:09'),(36,'info','修改文章24成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:18:54'),(37,'info','新增文章成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:19:34'),(38,'info','新增文章成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:20:59'),(39,'info','新增文章成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:21:36'),(40,'info','新增文章成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:22:12'),(41,'info','删除文章14成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:22:41'),(42,'info','登录成功!','3061245986','Windows 10','Chrome','admin','2022-05-17 23:24:13'),(43,'info','修改自定义标签erweima成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:30:08'),(44,'info','修改自定义标签字段2成功！','3061245986','Windows 10','Chrome','admin','2022-05-17 23:30:30'),(45,'info','登录成功!','719483114','Windows 10','Chrome','admin','2022-05-18 08:17:32'),(46,'info','修改单页内容1成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:20:24'),(47,'info','修改数据内容栏目11成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:22:15'),(48,'info','删除数据内容栏目3成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:22:23'),(49,'info','删除数据内容栏目4成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:22:29'),(50,'info','删除数据内容栏目6成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:22:35'),(51,'info','删除数据内容栏目7成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:22:43'),(52,'info','新增文章成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:26:34'),(53,'info','新增文章成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:28:53'),(54,'info','新增文章成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:29:43'),(55,'info','修改文章30成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:30:17'),(56,'info','修改文章29成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:30:48'),(57,'info','修改文章28成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:31:16'),(58,'info','修改文章26成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:31:32'),(59,'info','修改文章19成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:31:41'),(60,'info','修改文章18成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:32:24'),(61,'info','修改文章28成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:32:30'),(62,'info','修改文章27成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:33:04'),(63,'info','修改站点信息成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:34:15'),(64,'info','修改公司信息成功！','719483114','Windows 10','Chrome','admin','2022-05-18 08:39:14'),(65,'info','修改公司信息成功！','719483114','Windows 10','Chrome','admin','2022-05-18 09:33:14'),(66,'info','登录成功!','719483114','Windows 10','Chrome','admin','2022-05-18 09:46:58'),(67,'info','修改数据内容栏目10成功！','719483114','Windows 10','Chrome','admin','2022-05-18 09:47:24'),(68,'info','登录成功!','719483114','Windows 10','Chrome','admin','2022-05-18 09:52:08'),(69,'info','登录成功!','719483114','Windows 10','Chrome','admin','2022-05-18 09:57:06'),(70,'info','登录成功!','1901132463','Windows 10','Chrome','admin','2022-05-18 10:04:27'),(71,'info','修改参数配置成功！','1901132463','Windows 10','Chrome','admin','2022-05-18 10:06:18'),(72,'info','登录成功!','1901132463','Windows 10','Chrome','admin','2022-05-18 10:09:40'),(73,'info','登录成功!','719483114','Windows 10','Chrome','admin','2022-05-18 10:21:47'),(74,'info','修改轮播图1成功！','719483114','Windows 10','Chrome','admin','2022-05-18 10:22:22'),(75,'info','修改轮播图2成功！','719483114','Windows 10','Chrome','admin','2022-05-18 10:22:32'),(76,'info','修改轮播图3成功！','719483114','Windows 10','Chrome','admin','2022-05-18 10:22:41'),(77,'info','修改文章29成功！','719483114','Windows 10','Chrome','admin','2022-05-18 10:23:40'),(78,'info','留言提交成功！','1901132463','Windows 10','Chrome','admin','2022-05-18 10:27:11'),(79,'info','留言提交成功！','1901132463','Windows 10','Chrome','admin','2022-05-18 10:28:29'),(80,'info','留言提交成功！','719483114','Windows 10','Chrome','','2022-05-18 10:30:34'),(81,'info','登录成功!','719483114','Windows 10','Chrome','admin','2022-05-18 10:31:19'),(82,'info','删除留言4成功！','719483114','Windows 10','Chrome','admin','2022-05-18 10:31:26'),(83,'info','删除留言3成功！','719483114','Windows 10','Chrome','admin','2022-05-18 10:31:29'),(84,'info','删除留言2成功！','719483114','Windows 10','Chrome','admin','2022-05-18 10:31:32'),(85,'info','修改单页内容1成功！','719483114','Windows 10','Chrome','admin','2022-05-18 10:39:27'),(86,'info','修改文章28成功！','719483114','Windows 10','Chrome','admin','2022-05-18 10:42:11'),(87,'info','修改文章27成功！','719483114','Windows 10','Chrome','admin','2022-05-18 10:43:10'),(88,'info','修改文章26成功！','719483114','Windows 10','Chrome','admin','2022-05-18 10:43:21'),(89,'info','修改文章19成功！','719483114','Windows 10','Chrome','admin','2022-05-18 10:43:31'),(90,'info','修改文章18成功！','719483114','Windows 10','Chrome','admin','2022-05-18 10:43:40'),(91,'info','修改文章28成功！','719483114','Windows 10','Chrome','admin','2022-05-18 10:44:16'),(92,'info','登录成功!','719483114','Windows 10','Chrome','admin','2022-05-18 10:44:49'),(93,'info','修改文章28成功！','719483114','Windows 10','Chrome','admin','2022-05-18 10:45:01'),(94,'info','修改文章28成功！','719483114','Windows 10','Chrome','admin','2022-05-18 10:45:31'),(95,'info','修改文章26成功！','719483114','Windows 10','Chrome','admin','2022-05-18 10:46:23'),(96,'info','登录成功!','719456455','Windows 10','Chrome','admin','2022-05-18 14:55:45'),(97,'info','新增文章成功！','719456455','Windows 10','Chrome','admin','2022-05-18 14:58:03'),(98,'info','删除文章32成功！','719456455','Windows 10','Chrome','admin','2022-05-18 14:59:30'),(99,'info','新增文章成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:03:48'),(100,'info','登录成功!','719456455','Windows 10','Chrome','admin','2022-05-18 15:04:52'),(101,'info','删除文章33成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:05:06'),(102,'info','修改文章20成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:10:31'),(103,'info','新增文章成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:12:35'),(104,'info','修改文章34成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:12:58'),(105,'info','修改文章23成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:13:38'),(106,'info','新增文章成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:14:15'),(107,'info','修改文章35成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:14:38'),(108,'info','修改文章22成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:15:53'),(109,'info','修改文章34成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:16:39'),(110,'info','修改文章22成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:18:31'),(111,'info','新增文章成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:37:42'),(112,'info','新增文章成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:38:04'),(113,'info','修改文章37成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:38:13'),(114,'info','新增文章成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:39:05'),(115,'info','新增文章成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:41:02'),(116,'info','修改文章39成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:44:27'),(117,'info','新增文章成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:46:58'),(118,'info','新增文章成功！','719456455','Windows 10','Chrome','admin','2022-05-18 15:47:19'),(119,'info','修改单页内容1成功！','719456455','Windows 10','Chrome','admin','2022-05-18 17:42:22'),(120,'info','登录成功!','1755365018','Windows 10','Chrome','admin','2022-05-19 09:30:31'),(121,'info','修改参数配置成功！','1755365018','Windows 10','Chrome','admin','2022-05-19 09:30:40'),(122,'info','登录成功!','719456455','Windows 10','Chrome','admin','2022-05-19 10:03:40'),(123,'info','修改参数配置成功！','719456455','Windows 10','Chrome','admin','2022-05-19 10:03:47'),(124,'info','登录成功!','719456455','Windows 10','Chrome','admin','2022-05-19 16:54:16');
/*!40000 ALTER TABLE `ay_syslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_tags`
--

DROP TABLE IF EXISTS `ay_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `acode` varchar(20) NOT NULL COMMENT '区域',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `link` varchar(200) NOT NULL COMMENT '链接',
  `create_user` varchar(30) NOT NULL COMMENT '添加人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新人员',
  `create_time` datetime NOT NULL COMMENT '添加时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `ay_tags_acode` (`acode`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_tags`
--

LOCK TABLES `ay_tags` WRITE;
/*!40000 ALTER TABLE `ay_tags` DISABLE KEYS */;
INSERT INTO `ay_tags` VALUES (1,'cn','PbootCMS','https://www.pbootcms.com','admin','admin','2019-07-12 14:33:13','2019-07-12 14:33:13');
/*!40000 ALTER TABLE `ay_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_type`
--

DROP TABLE IF EXISTS `ay_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '类型编号',
  `tcode` varchar(20) NOT NULL COMMENT '类型编码',
  `name` varchar(30) NOT NULL COMMENT '类型名称',
  `item` varchar(30) NOT NULL COMMENT '类型项',
  `value` varchar(20) NOT NULL DEFAULT '0' COMMENT '类型值',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_user` varchar(30) NOT NULL COMMENT '添加人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新时间',
  `create_time` datetime NOT NULL COMMENT '添加时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `ay_type_tcode` (`tcode`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_type`
--

LOCK TABLES `ay_type` WRITE;
/*!40000 ALTER TABLE `ay_type` DISABLE KEYS */;
INSERT INTO `ay_type` VALUES (1,'T101','菜单功能','新增','add',1,'admin','admin','2017-04-27 07:28:34','2017-08-09 15:25:56'),(2,'T101','菜单功能','删除','del',2,'admin','admin','2017-04-27 07:29:08','2017-08-09 15:23:34'),(3,'T101','菜单功能','修改','mod',3,'admin','admin','2017-04-27 07:29:34','2017-08-09 15:23:32'),(4,'T101','菜单功能','导出','export',4,'admin','admin','2017-04-27 07:30:42','2017-08-09 15:23:29'),(5,'T101','菜单功能','导入','import',5,'admin','admin','2017-04-27 07:31:38','2017-08-09 15:23:27');
/*!40000 ALTER TABLE `ay_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_user`
--

DROP TABLE IF EXISTS `ay_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `ucode` varchar(20) NOT NULL COMMENT '用户编码',
  `username` varchar(30) NOT NULL COMMENT '用户账号',
  `realname` varchar(30) NOT NULL COMMENT '真实名字',
  `password` char(32) NOT NULL COMMENT '用户密码',
  `status` char(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `login_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `last_login_ip` varchar(11) NOT NULL DEFAULT '0' COMMENT '最后登录IP',
  `create_user` varchar(30) NOT NULL COMMENT '添加人员',
  `update_user` varchar(30) NOT NULL COMMENT '更新用户',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ay_user_ucode` (`ucode`),
  KEY `ay_user_username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_user`
--

LOCK TABLES `ay_user` WRITE;
/*!40000 ALTER TABLE `ay_user` DISABLE KEYS */;
INSERT INTO `ay_user` VALUES (1,'10001','admin','超级管理员','c3284d0f94606de1fd2af172aba15bf3','1',21,'719456455','admin','admin','2017-05-08 18:50:30','2022-05-19 16:54:16');
/*!40000 ALTER TABLE `ay_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ay_user_role`
--

DROP TABLE IF EXISTS `ay_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ay_user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `ucode` varchar(20) NOT NULL COMMENT '用户编码',
  `rcode` varchar(20) NOT NULL COMMENT '角色编码',
  PRIMARY KEY (`id`),
  KEY `ay_user_role_ucode` (`ucode`),
  KEY `ay_user_role_rcode` (`rcode`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ay_user_role`
--

LOCK TABLES `ay_user_role` WRITE;
/*!40000 ALTER TABLE `ay_user_role` DISABLE KEYS */;
INSERT INTO `ay_user_role` VALUES (1,'10001','R101');
/*!40000 ALTER TABLE `ay_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-20  0:40:35
