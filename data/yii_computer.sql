-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 12, 2011 at 12:48 PM
-- Server version: 5.1.50
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yii_computer`
--

-- --------------------------------------------------------

--
-- Table structure for table `yii_computer_bg_image`
--

CREATE TABLE IF NOT EXISTS `yii_computer_bg_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img_name` char(35) COLLATE utf8_unicode_ci NOT NULL,
  `status_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `yii_computer_bg_image`
--

INSERT INTO `yii_computer_bg_image` (`id`, `img_name`, `status_id`) VALUES
(3, 'bgimage_1304243532_g5e1uUbU.png', 1),
(4, 'bgimage_1304243539_iVlNp7R8.png', 1),
(5, 'bgimage_1304243546_hzHXFOTd.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `yii_computer_class_info`
--

CREATE TABLE IF NOT EXISTS `yii_computer_class_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `year_month` char(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `yii_computer_class_info`
--

INSERT INTO `yii_computer_class_info` (`id`, `class_name`, `year_month`) VALUES
(1, '第一期', '201104'),
(2, '第二期', '201105'),
(3, '第三期', '201106');

-- --------------------------------------------------------

--
-- Table structure for table `yii_computer_download`
--

CREATE TABLE IF NOT EXISTS `yii_computer_download` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(16) COLLATE utf8_unicode_ci NOT NULL,
  `filename` char(35) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_type` tinyint(3) unsigned NOT NULL,
  `status_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `yii_computer_download`
--

INSERT INTO `yii_computer_download` (`id`, `title`, `filename`, `description`, `file_type`, `status_id`) VALUES
(1, '测试文件1', 'download_1304229247_LwyXzbVn.zip', '添加做为测试用途', 1, 1),
(2, 'a new music', 'download_1304242736_0vNPRstg.zip', '一首很好听的歌曲', 5, 1),
(3, '影视片段', 'download_1304242763_mpwjb9fH.zip', '一段 avi', 6, 1),
(4, '一张ppt', 'download_1304242798_eNiAcTGj.zip', '演讲就靠他了。', 3, 1),
(5, 'zip使用教程', 'download_1304242825_fGUIMn3u.zip', 'zip格式下载文件。', 2, 1),
(6, '2011财务报表', 'download_1304242858_IFaoXD3J.zip', '需要的人执行下载。', 4, 1),
(7, '蓝色多瑙河', 'download_1304242879_VmmoF2rw.zip', '一首很好听的歌曲', 5, 1),
(8, 'png格式图片', 'download_1304242933_YkD0mCaz.zip', '一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png格式的图片,一张png', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `yii_computer_file_type`
--

CREATE TABLE IF NOT EXISTS `yii_computer_file_type` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `file_type_name` char(6) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `yii_computer_file_type`
--

INSERT INTO `yii_computer_file_type` (`id`, `file_type_name`) VALUES
(1, 'pdf'),
(2, 'zip'),
(3, 'ppt'),
(4, 'xls'),
(5, 'mp3'),
(6, 'avi'),
(7, 'rar'),
(8, 'png'),
(9, 'jpg');

-- --------------------------------------------------------

--
-- Table structure for table `yii_computer_img_lib`
--

CREATE TABLE IF NOT EXISTS `yii_computer_img_lib` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_name` char(35) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` tinyint(3) unsigned NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_user_id` int(10) unsigned DEFAULT NULL,
  `update_user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `yii_computer_img_lib`
--

INSERT INTO `yii_computer_img_lib` (`id`, `url`, `img_name`, `title`, `status_id`, `create_time`, `update_time`, `create_user_id`, `update_user_id`) VALUES
(7, 'http://www.yiiblog.info', 'imglib_1304254577_rsuUnXN4.jpg', 'YiiBlog.info官方宣传图片', 1, '2011-05-01 17:43:03', '2011-05-01 20:56:17', 1, 1),
(8, 'http://www.google.com', 'imglib_1304254595_sPvh5Kky.jpg', 'Google官方宣传图片', 1, '2011-05-01 17:43:29', '2011-05-01 20:56:35', 1, 1),
(9, 'http://www.yiiframework.com', 'imglib_1304254606_JBzNRdnJ.jpg', 'Yii官方网站宣传图片', 1, '2011-05-01 17:44:42', '2011-05-01 20:56:46', 1, 1),
(10, 'http://www.sju.js.cn', 'imglib_1304254800_PbK2in83.jpg', '三江学院官方宣传图片', 1, '2011-05-01 17:45:05', '2011-05-01 21:00:00', 1, 1),
(11, 'http://www.taobao.com', 'imglib_1304254979_zjWNqXfx.jpg', 'Tao女郎2011最佳人物', 1, '2011-05-01 21:02:59', '2011-05-01 21:02:59', 1, 1),
(12, '#', 'imglib_1304255005_YMIRvoRh.jpg', '报名就送图片上的美女!!', 1, '2011-05-01 21:03:25', '2011-05-01 21:03:25', 1, 1),
(13, 'http://www.cnbeta.com', 'imglib_1304255206_wevXHYb4.jpg', 'cnbeta免费送美女拉，来就送，丑不停。', 1, '2011-05-01 21:06:46', '2011-05-01 21:06:46', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `yii_computer_nav_menu`
--

CREATE TABLE IF NOT EXISTS `yii_computer_nav_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci DEFAULT '#',
  `status_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `yii_computer_nav_menu`
--

INSERT INTO `yii_computer_nav_menu` (`id`, `title`, `url`, `status_id`) VALUES
(2, 'YiiBlog', 'http://www.yiiblog.info', 1),
(3, 'Google', 'http://www.google.com', 1),
(4, '三江官网', 'http://www.sju.js.cn', 1),
(5, 'YiiBook', 'http://www.yiibook.com', 1),
(6, 'YiChina', 'http://www.yiichina.org', 1),
(7, 'BBC', 'http://www.bbc.co.uk', 1);

-- --------------------------------------------------------

--
-- Table structure for table `yii_computer_news`
--

CREATE TABLE IF NOT EXISTS `yii_computer_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `news_content` varchar(8000) COLLATE utf8_unicode_ci NOT NULL,
  `author_name` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_id` tinyint(3) unsigned NOT NULL,
  `status_id` tinyint(3) unsigned NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_user_id` int(10) unsigned DEFAULT NULL,
  `update_user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `yii_computer_news`
--

INSERT INTO `yii_computer_news` (`id`, `news_title`, `news_content`, `author_name`, `type_id`, `status_id`, `create_time`, `update_time`, `create_user_id`, `update_user_id`) VALUES
(1, '今天放假', '<p>\r\n	放假了，放假了。。。。</p>\r\n', 'Lee', 1, 1, '0000-00-00 00:00:00', '2011-05-02 13:04:42', NULL, 1),
(2, 'A pic', '<p>\r\n	<img alt="" src="/yii_computer/up/images/A Flying Tree.jpg" style="width: 1680px; height: 1050px; " /></p>\r\n', '', 1, 1, '0000-00-00 00:00:00', NULL, NULL, NULL),
(3, 'BoyLee is going..', '<p>\r\n	gogogo....</p>\r\n', '', 2, 1, '0000-00-00 00:00:00', NULL, NULL, NULL),
(4, 'GoodBye', '<p>\r\n	Goooooodbye</p>\r\n', '', 1, 1, '0000-00-00 00:00:00', NULL, NULL, NULL),
(5, '开班了', '<p>\r\n	111<a href="http://12">http://12</a></p>\r\n', 'BoyLee', 1, 1, '2011-04-27 13:16:12', '2011-05-01 14:20:32', 1, 1),
(6, '明天继续放假', '<p>\r\n	11122</p>\r\n', 'Lee', 2, 1, '2011-05-01 14:20:54', '2011-05-01 14:24:28', 1, 1),
(7, '清明节放假通知', '<p>\r\n	清明节放假通知</p>\r\n', 'BoyLee', 1, 1, '2011-05-02 12:47:13', '2011-05-02 12:47:13', 1, 1),
(8, '元宵节放假通知', '<p>\r\n	元宵节 放假咯。</p>\r\n', 'Gu', 1, 1, '2011-05-02 12:47:32', '2011-05-02 12:47:32', 1, 1),
(9, '中秋节放假通知', '<p>\r\n	中秋节放假咯。</p>\r\n', 'Fan', 1, 1, '2011-05-02 12:48:00', '2011-05-02 12:48:00', 1, 1),
(10, '本拉登死讯导致CNN手机网站宕机', '<p>\r\n	&nbsp;</p>\r\n<meta charset="utf-8" />\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; ">\r\n	<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-weight: bold; ">国外媒体报道，今天，在传出基地组织头目奥萨马&middot;本&middot;拉登身亡的消息后，CNN手机新闻网站因为流量过大导致宕机。</span>由于可能许多人都试图用手机观看美国总统奥巴马讲话的现场直播，而手机网站无法承受过大的视频负荷，因此这次宕机并不令人意外。</p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; ">\r\n	本拉登身亡的消息已经成为Twitter上最热门的话题，相信会有许多新闻网站会因此流量暴增，导致服务器响应缓慢。</p>\r\n', 'FY', 2, 1, '2011-05-02 12:49:34', '2011-05-02 12:49:34', 1, 1),
(11, 'Wine 1.3.19', '<p>\r\n	&nbsp;</p>\r\n<meta charset="utf-8" />\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; ">\r\n	开源 Win16/32/64 API 实现 Wine 发布了 1.3.19 版本，为 MMDevAPI 引入新的声卡驱动架构，<strong style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; ">改善 Direct3D 9 的支持</strong>。Wine是一个在X86、X86-64上容许类Unix操作系统在X&nbsp;Window&nbsp;System下运行Microsoft&nbsp;Windows程序的软件。 另一方面，计算机程序设计师能经由Wine的程序库将视窗的程序转移至类Unix操作系统中运行。也有不少软件经过&nbsp;Wine测试后发布，比如 Picasa，uTorrent，MediaCoder.</p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; ">\r\n	本次更新相比以往版本：</p>\r\n<p>\r\n	<li style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; ">\r\n		为 MMDevAPI 设计的新声卡驱动架构。</li>\r\n</p>\r\n<br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; " />\r\n<br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; " />\r\n<ul>\r\n	<li style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; ">\r\n		更好的支持在 DInput 中的相关鼠标事件。</li>\r\n	<li style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; ">\r\n		调试程序增加 ARM 平台支持。</li>\r\n	<li style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; ">\r\n		针对 D3DX9 的多项改善。</li>\r\n	<li style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; ">\r\n		支持更多的 MSVC 运行时函数。</li>\r\n	<li style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; ">\r\n		各种错误修复。</li>\r\n</ul>\r\n', 'Lee', 2, 1, '2011-05-02 12:50:14', '2011-05-02 12:50:14', 1, 1),
(12, 'AMD不会为ARM放弃x86处理器构架', '<p>\r\n	&nbsp;</p>\r\n<meta charset="utf-8" />\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; ">\r\n	<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-weight: bold; ">据国外媒体报道，AMD是英特尔公司生产的x86处理器的主要竞争对手，尤其是Fusion&nbsp;APU出现之后。曾有传言称ARM已经开始与AMD公司接洽，试图让AMD接受其设计的架构，放弃x86构架。</span>毫无疑问，该传言在业界引发轩然大波，影响范围很广。事实上，AMD公司并未放弃x86构架，传言不攻自破。</p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; ">\r\n	ARM芯片在移动领域有不可替代的优势，并能在PC和服务器市场中占有一席之地。然而事实是AMD的制造经验还停留在x86架构上，该公司已经在该架构上投入了大量的时间，金钱。<br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; " />\r\n	<br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; " />\r\n	Fusion架构仍然使用x86就足可以证明AMD还远未到放弃该架构的时候。</p>\r\n', 'Lee', 2, 1, '2011-05-02 12:53:58', '2011-05-02 12:53:58', 1, 1),
(13, 'iOS 5重新在3GS和三代iTouch上展开测试', '<p>\r\n	&nbsp;</p>\r\n<meta charset="utf-8" />\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; ">\r\n	<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-weight: bold; ">iOS 5.0版本将要发布的消息最近已经传遍了各个科技媒体，来自9to5mac的消息显示，这次iOS 5的测试范围再度扩大，除了iPhone4和iPod Touch第四代外，还向上邀请3GS和iPod Touch三代的测试人员一同参与，</span>采用多平台测试可能是为了检测是否有足够的兼容性，并不能保证未来的iOS 5可以在上述硬件上运行。</p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; ">\r\n	<img alt="http://img.cnbeta.com/newsimg/110502/10251101773356692.png" src="http://img.cnbeta.com/newsimg/110502/10251101773356692.png" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; " /></p>\r\n', 'FY', 2, 1, '2011-05-02 12:54:23', '2011-05-02 12:54:23', 1, 1),
(14, '基于Fusion的联想IdeaPad S205即将开卖', '<p>\r\n	&nbsp;</p>\r\n<meta charset="utf-8" />\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; ">\r\n	<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-weight: bold; ">联想在本周末低调发布了一款IdeaPad S205型号的产品，这款跨界上网本增强了性能，带来了1.6GHz AMD E-350处理器和Radeon HD 6310显卡，尺寸开始向普通笔记本靠拢的同时，性能也开始接近笔记本产品，</span>它可以处理1080p视频，320GB的硬盘，3GB内存，依据硬盘和内存大小不同，价格从499-599美元不等。</p>\r\n<p style="margin-top: 0px; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; ">\r\n	<img alt="http://img.cnbeta.com/newsimg/110502/1020110446803562.jpg" src="http://img.cnbeta.com/newsimg/110502/1020110446803562.jpg" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; " /></p>\r\n', 'FY', 2, 1, '2011-05-02 12:55:04', '2011-05-02 12:55:04', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `yii_computer_news_type`
--

CREATE TABLE IF NOT EXISTS `yii_computer_news_type` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `news_type_name` char(6) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `yii_computer_news_type`
--

INSERT INTO `yii_computer_news_type` (`id`, `news_type_name`) VALUES
(1, '公告'),
(2, '新闻');

-- --------------------------------------------------------

--
-- Table structure for table `yii_computer_status_type`
--

CREATE TABLE IF NOT EXISTS `yii_computer_status_type` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `status_name` char(4) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `yii_computer_status_type`
--

INSERT INTO `yii_computer_status_type` (`id`, `status_name`) VALUES
(1, '正常'),
(2, '异常');

-- --------------------------------------------------------

--
-- Table structure for table `yii_computer_user`
--

CREATE TABLE IF NOT EXISTS `yii_computer_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `realname` char(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` char(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(10) unsigned NOT NULL,
  `status_id` tinyint(3) unsigned NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_user_id` int(10) unsigned DEFAULT NULL,
  `update_user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `yii_computer_user`
--

INSERT INTO `yii_computer_user` (`id`, `username`, `password`, `realname`, `tel`, `sex`, `class_id`, `status_id`, `create_time`, `update_time`, `create_user_id`, `update_user_id`) VALUES
(1, 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', 'BoyLee', '13222071109', '1', 3, 1, '0000-00-00 00:00:00', '2011-04-27 20:34:07', NULL, 1),
(2, 'BoyLee', '5f4dcc3b5aa765d61d8327deb882cf99', 'BoyyLe', '13222071111', '1', 3, 1, '2011-04-26 14:02:02', '2011-04-26 14:07:06', 1, 1),
(3, 'FanYe', '5f4dcc3b5aa765d61d8327deb882cf99', 'LuoYe', '11111111111', '1', 3, 1, '2011-04-27 20:33:57', '2011-04-27 20:33:57', 1, 1),
(4, 'MrGu', '7c6483ddcd99eb112c060ecbe0543e86', 'Boss', '18988888888', '1', 3, 1, '2011-04-27 22:01:29', '2011-04-27 22:01:29', 1, 1);
