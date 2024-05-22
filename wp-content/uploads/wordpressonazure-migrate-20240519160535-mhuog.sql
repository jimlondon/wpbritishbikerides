# WordPress MySQL database migration
#
# Generated: Sunday 19. May 2024 16:05 UTC
# Hostname: bikemaps-ac19ce445e070a5e666c9897-dbserver.mysql.database.azure.com
# Database: `bikemaps_ac19ce445e070a5e666c9897_database`
# URL: //localhost:8888
# Path: /var/www/wordpress
# Tables: wp_azure_email_logs, wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_smush_dir_images, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users
# Table Prefix: wp_
# Post Types: revision, custom_css, et_pb_layout, layout, page, post, wp_navigation
# Protocol: https
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_azure_email_logs`
#

DROP TABLE IF EXISTS `wp_azure_email_logs`;


#
# Table structure of table `wp_azure_email_logs`
#

CREATE TABLE `wp_azure_email_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `to_email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sent_date` datetime NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `error_message` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_azure_email_logs`
#
INSERT INTO `wp_azure_email_logs` ( `id`, `to_email`, `subject`, `sent_date`, `status`, `error_message`) VALUES
(1, 'mail@jameshouston.com', '[WordPress on Azure] Password Reset', '2024-05-19 14:06:10', 'Success', '') ;

#
# End of data contents of table `wp_azure_email_logs`
# --------------------------------------------------------



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2024-05-19 13:51:27', '2024-05-19 13:51:27', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://en.gravatar.com/">Gravatar</a>.', 0, '1', '', 'comment', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888', 'yes'),
(2, 'home', 'http://localhost:8888', 'yes'),
(3, 'blogname', 'WordPress on Azure', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mail@jameshouston.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:302:{s:10:"project/?$";s:27:"index.php?post_type=project";s:40:"project/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=project&feed=$matches[1]";s:35:"project/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=project&feed=$matches[1]";s:27:"project/page/([0-9]{1,})/?$";s:45:"index.php?post_type=project&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"layout/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"layout/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"layout/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"layout/([^/]+)/embed/?$";s:54:"index.php?post_type=layout&name=$matches[1]&embed=true";s:27:"layout/([^/]+)/trackback/?$";s:48:"index.php?post_type=layout&name=$matches[1]&tb=1";s:35:"layout/([^/]+)/page/?([0-9]{1,})/?$";s:61:"index.php?post_type=layout&name=$matches[1]&paged=$matches[2]";s:42:"layout/([^/]+)/comment-page-([0-9]{1,})/?$";s:61:"index.php?post_type=layout&name=$matches[1]&cpage=$matches[2]";s:31:"layout/([^/]+)(?:/([0-9]+))?/?$";s:60:"index.php?post_type=layout&name=$matches[1]&page=$matches[2]";s:23:"layout/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"layout/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"layout/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:56:"layout_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?layout_category=$matches[1]&feed=$matches[2]";s:51:"layout_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?layout_category=$matches[1]&feed=$matches[2]";s:32:"layout_category/([^/]+)/embed/?$";s:48:"index.php?layout_category=$matches[1]&embed=true";s:44:"layout_category/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?layout_category=$matches[1]&paged=$matches[2]";s:26:"layout_category/([^/]+)/?$";s:37:"index.php?layout_category=$matches[1]";s:51:"layout_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?layout_tag=$matches[1]&feed=$matches[2]";s:46:"layout_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?layout_tag=$matches[1]&feed=$matches[2]";s:27:"layout_tag/([^/]+)/embed/?$";s:43:"index.php?layout_tag=$matches[1]&embed=true";s:39:"layout_tag/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?layout_tag=$matches[1]&paged=$matches[2]";s:21:"layout_tag/([^/]+)/?$";s:32:"index.php?layout_tag=$matches[1]";s:56:"et_tb_item_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?et_tb_item_type=$matches[1]&feed=$matches[2]";s:51:"et_tb_item_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?et_tb_item_type=$matches[1]&feed=$matches[2]";s:32:"et_tb_item_type/([^/]+)/embed/?$";s:48:"index.php?et_tb_item_type=$matches[1]&embed=true";s:44:"et_tb_item_type/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?et_tb_item_type=$matches[1]&paged=$matches[2]";s:26:"et_tb_item_type/([^/]+)/?$";s:37:"index.php?et_tb_item_type=$matches[1]";s:38:"et_tb_item/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"et_tb_item/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"et_tb_item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"et_tb_item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"et_tb_item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"et_tb_item/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"et_tb_item/([^/]+)/embed/?$";s:58:"index.php?post_type=et_tb_item&name=$matches[1]&embed=true";s:31:"et_tb_item/([^/]+)/trackback/?$";s:52:"index.php?post_type=et_tb_item&name=$matches[1]&tb=1";s:39:"et_tb_item/([^/]+)/page/?([0-9]{1,})/?$";s:65:"index.php?post_type=et_tb_item&name=$matches[1]&paged=$matches[2]";s:46:"et_tb_item/([^/]+)/comment-page-([0-9]{1,})/?$";s:65:"index.php?post_type=et_tb_item&name=$matches[1]&cpage=$matches[2]";s:35:"et_tb_item/([^/]+)(?:/([0-9]+))?/?$";s:64:"index.php?post_type=et_tb_item&name=$matches[1]&page=$matches[2]";s:27:"et_tb_item/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"et_tb_item/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"et_tb_item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"et_tb_item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"et_tb_item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"et_tb_item/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"project/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"project/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"project/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"project/([^/]+)/embed/?$";s:40:"index.php?project=$matches[1]&embed=true";s:28:"project/([^/]+)/trackback/?$";s:34:"index.php?project=$matches[1]&tb=1";s:48:"project/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?project=$matches[1]&feed=$matches[2]";s:43:"project/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?project=$matches[1]&feed=$matches[2]";s:36:"project/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?project=$matches[1]&paged=$matches[2]";s:43:"project/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?project=$matches[1]&cpage=$matches[2]";s:32:"project/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?project=$matches[1]&page=$matches[2]";s:24:"project/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"project/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"project/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:57:"project_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?project_category=$matches[1]&feed=$matches[2]";s:52:"project_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?project_category=$matches[1]&feed=$matches[2]";s:33:"project_category/([^/]+)/embed/?$";s:49:"index.php?project_category=$matches[1]&embed=true";s:45:"project_category/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?project_category=$matches[1]&paged=$matches[2]";s:27:"project_category/([^/]+)/?$";s:38:"index.php?project_category=$matches[1]";s:52:"project_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?project_tag=$matches[1]&feed=$matches[2]";s:47:"project_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?project_tag=$matches[1]&feed=$matches[2]";s:28:"project_tag/([^/]+)/embed/?$";s:44:"index.php?project_tag=$matches[1]&embed=true";s:40:"project_tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?project_tag=$matches[1]&paged=$matches[2]";s:22:"project_tag/([^/]+)/?$";s:33:"index.php?project_tag=$matches[1]";s:44:"et_theme_options/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"et_theme_options/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"et_theme_options/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"et_theme_options/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"et_theme_options/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"et_theme_options/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"et_theme_options/([^/]+)/embed/?$";s:64:"index.php?post_type=et_theme_options&name=$matches[1]&embed=true";s:37:"et_theme_options/([^/]+)/trackback/?$";s:58:"index.php?post_type=et_theme_options&name=$matches[1]&tb=1";s:45:"et_theme_options/([^/]+)/page/?([0-9]{1,})/?$";s:71:"index.php?post_type=et_theme_options&name=$matches[1]&paged=$matches[2]";s:52:"et_theme_options/([^/]+)/comment-page-([0-9]{1,})/?$";s:71:"index.php?post_type=et_theme_options&name=$matches[1]&cpage=$matches[2]";s:41:"et_theme_options/([^/]+)(?:/([0-9]+))?/?$";s:70:"index.php?post_type=et_theme_options&name=$matches[1]&page=$matches[2]";s:33:"et_theme_options/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"et_theme_options/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"et_theme_options/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"et_theme_options/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"et_theme_options/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"et_theme_options/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:61:"et_code_snippet_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?et_code_snippet_type=$matches[1]&feed=$matches[2]";s:56:"et_code_snippet_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?et_code_snippet_type=$matches[1]&feed=$matches[2]";s:37:"et_code_snippet_type/([^/]+)/embed/?$";s:53:"index.php?et_code_snippet_type=$matches[1]&embed=true";s:49:"et_code_snippet_type/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?et_code_snippet_type=$matches[1]&paged=$matches[2]";s:31:"et_code_snippet_type/([^/]+)/?$";s:42:"index.php?et_code_snippet_type=$matches[1]";s:43:"et_code_snippet/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"et_code_snippet/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"et_code_snippet/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"et_code_snippet/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"et_code_snippet/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:49:"et_code_snippet/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"et_code_snippet/([^/]+)/embed/?$";s:63:"index.php?post_type=et_code_snippet&name=$matches[1]&embed=true";s:36:"et_code_snippet/([^/]+)/trackback/?$";s:57:"index.php?post_type=et_code_snippet&name=$matches[1]&tb=1";s:44:"et_code_snippet/([^/]+)/page/?([0-9]{1,})/?$";s:70:"index.php?post_type=et_code_snippet&name=$matches[1]&paged=$matches[2]";s:51:"et_code_snippet/([^/]+)/comment-page-([0-9]{1,})/?$";s:70:"index.php?post_type=et_code_snippet&name=$matches[1]&cpage=$matches[2]";s:40:"et_code_snippet/([^/]+)(?:/([0-9]+))?/?$";s:69:"index.php?post_type=et_code_snippet&name=$matches[1]&page=$matches[2]";s:32:"et_code_snippet/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"et_code_snippet/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"et_code_snippet/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"et_code_snippet/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"et_code_snippet/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"et_code_snippet/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:44:"et_theme_builder/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"et_theme_builder/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"et_theme_builder/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"et_theme_builder/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"et_theme_builder/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"et_theme_builder/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"et_theme_builder/([^/]+)/embed/?$";s:64:"index.php?post_type=et_theme_builder&name=$matches[1]&embed=true";s:37:"et_theme_builder/([^/]+)/trackback/?$";s:58:"index.php?post_type=et_theme_builder&name=$matches[1]&tb=1";s:45:"et_theme_builder/([^/]+)/page/?([0-9]{1,})/?$";s:71:"index.php?post_type=et_theme_builder&name=$matches[1]&paged=$matches[2]";s:52:"et_theme_builder/([^/]+)/comment-page-([0-9]{1,})/?$";s:71:"index.php?post_type=et_theme_builder&name=$matches[1]&cpage=$matches[2]";s:41:"et_theme_builder/([^/]+)(?:/([0-9]+))?/?$";s:70:"index.php?post_type=et_theme_builder&name=$matches[1]&page=$matches[2]";s:33:"et_theme_builder/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"et_theme_builder/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"et_theme_builder/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"et_theme_builder/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"et_theme_builder/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"et_theme_builder/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"et_template/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"et_template/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"et_template/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"et_template/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"et_template/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"et_template/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"et_template/([^/]+)/embed/?$";s:59:"index.php?post_type=et_template&name=$matches[1]&embed=true";s:32:"et_template/([^/]+)/trackback/?$";s:53:"index.php?post_type=et_template&name=$matches[1]&tb=1";s:40:"et_template/([^/]+)/page/?([0-9]{1,})/?$";s:66:"index.php?post_type=et_template&name=$matches[1]&paged=$matches[2]";s:47:"et_template/([^/]+)/comment-page-([0-9]{1,})/?$";s:66:"index.php?post_type=et_template&name=$matches[1]&cpage=$matches[2]";s:36:"et_template/([^/]+)(?:/([0-9]+))?/?$";s:65:"index.php?post_type=et_template&name=$matches[1]&page=$matches[2]";s:28:"et_template/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"et_template/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"et_template/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"et_template/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"et_template/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"et_template/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:44:"et_header_layout/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"et_header_layout/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"et_header_layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"et_header_layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"et_header_layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"et_header_layout/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"et_header_layout/([^/]+)/embed/?$";s:64:"index.php?post_type=et_header_layout&name=$matches[1]&embed=true";s:37:"et_header_layout/([^/]+)/trackback/?$";s:58:"index.php?post_type=et_header_layout&name=$matches[1]&tb=1";s:45:"et_header_layout/([^/]+)/page/?([0-9]{1,})/?$";s:71:"index.php?post_type=et_header_layout&name=$matches[1]&paged=$matches[2]";s:52:"et_header_layout/([^/]+)/comment-page-([0-9]{1,})/?$";s:71:"index.php?post_type=et_header_layout&name=$matches[1]&cpage=$matches[2]";s:41:"et_header_layout/([^/]+)(?:/([0-9]+))?/?$";s:70:"index.php?post_type=et_header_layout&name=$matches[1]&page=$matches[2]";s:33:"et_header_layout/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"et_header_layout/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"et_header_layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"et_header_layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"et_header_layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"et_header_layout/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:42:"et_body_layout/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"et_body_layout/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"et_body_layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"et_body_layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"et_body_layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"et_body_layout/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"et_body_layout/([^/]+)/embed/?$";s:62:"index.php?post_type=et_body_layout&name=$matches[1]&embed=true";s:35:"et_body_layout/([^/]+)/trackback/?$";s:56:"index.php?post_type=et_body_layout&name=$matches[1]&tb=1";s:43:"et_body_layout/([^/]+)/page/?([0-9]{1,})/?$";s:69:"index.php?post_type=et_body_layout&name=$matches[1]&paged=$matches[2]";s:50:"et_body_layout/([^/]+)/comment-page-([0-9]{1,})/?$";s:69:"index.php?post_type=et_body_layout&name=$matches[1]&cpage=$matches[2]";s:39:"et_body_layout/([^/]+)(?:/([0-9]+))?/?$";s:68:"index.php?post_type=et_body_layout&name=$matches[1]&page=$matches[2]";s:31:"et_body_layout/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"et_body_layout/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"et_body_layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"et_body_layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"et_body_layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"et_body_layout/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:44:"et_footer_layout/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"et_footer_layout/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"et_footer_layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"et_footer_layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"et_footer_layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"et_footer_layout/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"et_footer_layout/([^/]+)/embed/?$";s:64:"index.php?post_type=et_footer_layout&name=$matches[1]&embed=true";s:37:"et_footer_layout/([^/]+)/trackback/?$";s:58:"index.php?post_type=et_footer_layout&name=$matches[1]&tb=1";s:45:"et_footer_layout/([^/]+)/page/?([0-9]{1,})/?$";s:71:"index.php?post_type=et_footer_layout&name=$matches[1]&paged=$matches[2]";s:52:"et_footer_layout/([^/]+)/comment-page-([0-9]{1,})/?$";s:71:"index.php?post_type=et_footer_layout&name=$matches[1]&cpage=$matches[2]";s:41:"et_footer_layout/([^/]+)(?:/([0-9]+))?/?$";s:70:"index.php?post_type=et_footer_layout&name=$matches[1]&page=$matches[2]";s:33:"et_footer_layout/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"et_footer_layout/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"et_footer_layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"et_footer_layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"et_footer_layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"et_footer_layout/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:39:"app_service_email/app_service_email.php";i:1;s:33:"w3-total-cache/w3-total-cache.php";i:2;s:31:"wp-migrate-db/wp-migrate-db.php";i:3;s:23:"wp-smushit/wp-smush.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Extra', 'yes'),
(41, 'stylesheet', 'Extra', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '57155', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'layout', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '1', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1731678686', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'disabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'disabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '56657', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:67:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:17:"et_support_center";b:1;s:24:"et_support_center_system";b:1;s:31:"et_support_center_remote_access";b:1;s:31:"et_support_center_documentation";b:1;s:27:"et_support_center_safe_mode";b:1;s:22:"et_support_center_logs";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(102, 'fresh_site', '1', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:154:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:227:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:150:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}s:13:"array_version";i:3;}', 'yes'),
(106, 'cron', 'a:12:{i:1716135502;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"686c8315be36c96dc00d0d7ed3656b43";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:6;}}}}i:1716137492;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1716163200;a:1:{s:22:"wdev_logger_clear_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1716169892;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1716170786;a:1:{s:21:"wp_update_user_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1716213091;a:2:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1716213569;a:1:{s:31:"custom_daily_email_logs_cleanup";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1716214007;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1716214008;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1716731496;a:1:{s:30:"wp_delete_temp_updater_backups";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1718720342;a:1:{s:32:"et_core_page_resource_auto_clear";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2592000;}}}s:7:"version";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(122, 'nonce_key', 'H+HHw%{0j3cv<IGd~)&emp.WsI{Cr=Irrjb,3!{qavU1,&ST8F_C9u>A||V%G:4T', 'no'),
(123, 'nonce_salt', ';xMxOjgb2(H<cA0g-v@C`Jp~u82eqw[|`yDf{iT786aCoW1U?V{)/)b+-?;E2-JC', 'no'),
(133, 'rss_user_excerpt', '1', 'yes'),
(134, 'wp-smush-settings', 'a:25:{s:4:"auto";i:1;s:5:"lossy";i:0;s:10:"strip_exif";i:1;s:6:"resize";b:0;s:9:"detection";b:0;s:8:"original";i:1;s:6:"backup";b:0;s:8:"no_scale";b:0;s:10:"png_to_jpg";b:0;s:7:"nextgen";b:0;s:2:"s3";b:0;s:9:"gutenberg";b:0;s:10:"js_builder";b:0;s:5:"gform";b:0;s:3:"cdn";b:0;s:11:"auto_resize";b:0;s:4:"webp";b:1;s:5:"usage";i:0;s:17:"accessible_colors";b:0;s:9:"keep_data";b:1;s:9:"lazy_load";i:0;s:17:"background_images";b:1;s:16:"rest_api_support";b:0;s:8:"webp_mod";b:0;s:16:"background_email";b:0;}', 'yes'),
(135, 'wp-smush-install-type', 'existing', 'no'),
(136, 'wp-smush-version', '3.16.2', 'no'),
(138, 'custom_email_logs_retention_days', '30', 'yes'),
(139, 'skip-smush-setup', '1', 'yes'),
(140, 'wp_smush_global_stats', 'a:1:{s:25:"rescan_required_timestamp";i:1716132987;}', 'no'),
(141, 'recovery_keys', 'a:0:{}', 'yes'),
(142, 'theme_mods_twentytwentyfour', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1716128337;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}}}s:18:"nav_menu_locations";a:0:{}}', 'no'),
(147, 'wpmudev_recommended_plugins_registered', 'a:1:{s:23:"wp-smushit/wp-smush.php";a:1:{s:13:"registered_at";i:1716127586;}}', 'no'),
(148, 'w3tc_state', '{"common.install":1716127586,"common.install_version":"2.6.1","license.status":"no_key","license.next_check":1716559586,"license.terms":"","common.show_note.nginx_restart_required":true,"common.show_note.plugins_updated":true,"common.show_note.plugins_updated.timestamp":1716134703}', 'no'),
(149, 'wp_smush_pre_3_12_6_site', '0', 'no'),
(150, 'wp_smush_image_sizes_state', 'a:2:{s:5:"sizes";a:17:{s:9:"thumbnail";a:3:{s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:4:"crop";b:1;}s:6:"medium";a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";b:0;}s:5:"large";a:3:{s:5:"width";s:4:"1024";s:6:"height";s:4:"1024";s:4:"crop";b:0;}s:9:"1536x1536";a:3:{s:5:"width";i:1536;s:6:"height";i:1536;s:4:"crop";b:0;}s:9:"2048x2048";a:3:{s:5:"width";i:2048;s:6:"height";i:2048;s:4:"crop";b:0;}s:26:"et-builder-post-main-image";a:3:{s:5:"width";i:400;s:6:"height";i:250;s:4:"crop";b:1;}s:36:"et-builder-post-main-image-fullwidth";a:3:{s:5:"width";i:1080;s:6:"height";i:675;s:4:"crop";b:1;}s:26:"et-builder-portfolio-image";a:3:{s:5:"width";i:400;s:6:"height";i:284;s:4:"crop";b:1;}s:33:"et-builder-portfolio-image-single";a:3:{s:5:"width";i:1080;s:6:"height";i:9999;s:4:"crop";b:0;}s:33:"et-builder-gallery-image-portrait";a:3:{s:5:"width";i:400;s:6:"height";i:516;s:4:"crop";b:1;}s:16:"extra-image-huge";a:3:{s:5:"width";i:1280;s:6:"height";i:768;s:4:"crop";b:1;}s:23:"extra-image-single-post";a:3:{s:5:"width";i:1280;s:6:"height";i:640;s:4:"crop";b:1;}s:18:"extra-image-medium";a:3:{s:5:"width";i:627;s:6:"height";i:376;s:4:"crop";b:1;}s:17:"extra-image-small";a:3:{s:5:"width";i:440;s:6:"height";i:264;s:4:"crop";b:1;}s:25:"extra-image-square-medium";a:3:{s:5:"width";i:440;s:6:"height";i:440;s:4:"crop";b:1;}s:24:"extra-image-square-small";a:3:{s:5:"width";i:150;s:6:"height";i:150;s:4:"crop";b:1;}s:12:"medium_large";a:2:{s:5:"width";i:768;s:6:"height";i:0;}}s:4:"hash";i:117310334545;}', 'yes'),
(160, 'wpmudev_notices', 'a:3:{s:7:"plugins";a:1:{s:5:"smush";i:1716127608;}s:5:"queue";a:1:{s:5:"smush";a:3:{s:5:"email";i:1716127607;s:4:"rate";i:1716127607;s:8:"giveaway";i:1716127607;}}s:4:"done";a:0:{}}', 'no'),
(177, 'db_upgraded', '', 'yes'),
(182, 'finished_updating_comment_type', '1', 'yes'),
(183, 'can_compress_scripts', '1', 'yes'),
(185, 'recently_activated', 'a:0:{}', 'yes'),
(189, 'wp-smush-show_upgrade_modal', '1', 'no'),
(199, 'current_theme', 'Extra', 'yes'),
(200, 'theme_mods_Extra', 'a:6:{i:0;b:0;s:18:"custom_css_post_id";i:17;s:16:"et_pb_css_synced";s:3:"yes";s:36:"et_pb_extra_predefined_layouts_added";s:2:"on";s:40:"et_pb_extra_predefined_layouts_version_1";s:2:"on";s:39:"et_updated_layouts_built_for_post_types";s:3:"yes";}', 'yes'),
(201, 'theme_switched', '', 'yes'),
(206, 'et_core_version', '4.25.1', 'yes'),
(208, 'et_extra', 'a:149:{s:39:"static_css_custom_css_safety_check_done";b:1;s:29:"presets_storage_migrated_flag";b:1;s:39:"builder_global_presets_history_migrated";b:1;s:23:"2_5_flush_rewrite_rules";s:4:"done";s:30:"et_flush_rewrite_rules_library";s:6:"4.25.1";s:23:"builder_custom_defaults";O:8:"stdClass":0:{}s:33:"customizer_settings_migrated_flag";b:1;s:34:"builder_custom_defaults_unmigrated";b:0;s:27:"et_pb_clear_templates_cache";b:1;s:40:"divi_email_provider_credentials_migrated";b:1;s:29:"custom_defaults_migrated_flag";b:1;s:32:"extra_previous_installed_version";s:6:"4.24.1";s:30:"extra_latest_installed_version";s:6:"4.25.1";s:21:"et_pb_layouts_updated";b:1;s:30:"library_removed_legacy_layouts";b:1;s:31:"extra_update_woocommerce_images";b:1;s:27:"extra_documentation_message";s:9:"triggered";s:10:"extra_logo";s:0:"";s:13:"extra_favicon";s:0:"";s:12:"accent_color";s:7:"#00a8ff";s:15:"extra_fixed_nav";s:2:"on";s:16:"sidebar_location";s:5:"right";s:28:"woocommerce_sidebar_location";s:5:"right";s:7:"sidebar";s:12:"sidebar-main";s:19:"woocommerce_sidebar";s:12:"sidebar-main";s:37:"social_followers_transient_expiration";s:4:"3600";s:34:"extra_gf_enable_all_character_sets";s:5:"false";s:18:"show_facebook_icon";s:2:"on";s:17:"show_twitter_icon";s:2:"on";s:20:"show_googleplus_icon";s:2:"on";s:19:"show_pinterest_icon";s:2:"on";s:16:"show_tumblr_icon";s:2:"on";s:21:"show_stumbleupon_icon";s:2:"on";s:19:"show_instagram_icon";s:2:"on";s:17:"show_youtube_icon";s:2:"on";s:18:"show_dribbble_icon";s:2:"on";s:13:"show_rss_icon";s:2:"on";s:12:"facebook_url";s:0:"";s:11:"twitter_url";s:0:"";s:14:"googleplus_url";s:0:"";s:13:"pinterest_url";s:0:"";s:10:"tumblr_url";s:0:"";s:15:"stumbleupon_url";s:0:"";s:13:"instagram_url";s:0:"";s:11:"youtube_url";s:0:"";s:12:"dribbble_url";s:0:"";s:7:"rss_url";s:0:"";s:22:"extra_archivenum_posts";i:5;s:35:"extra_woocommerce_archive_num_posts";i:9;s:18:"extra_catnum_posts";i:5;s:21:"extra_searchnum_posts";i:5;s:18:"extra_tagnum_posts";i:5;s:17:"extra_date_format";s:6:"M j, Y";s:17:"extra_use_excerpt";s:5:"false";s:17:"extra_back_to_top";s:5:"false";s:19:"extra_smooth_scroll";s:5:"false";s:16:"extra_custom_css";s:0:"";s:30:"extra_dynamic_module_framework";s:2:"on";s:17:"extra_dynamic_css";s:2:"on";s:19:"extra_dynamic_icons";s:2:"on";s:23:"extra_inline_stylesheet";s:5:"false";s:18:"extra_critical_css";s:2:"on";s:31:"extra_critical_threshold_height";s:6:"Medium";s:26:"extra_dynamic_js_libraries";s:2:"on";s:20:"extra_disable_emojis";s:2:"on";s:21:"extra_defer_block_css";s:2:"on";s:25:"extra_google_fonts_inline";s:5:"false";s:52:"extra_limit_google_fonts_support_for_legacy_browsers";s:2:"on";s:24:"extra_enable_jquery_body";s:2:"on";s:33:"extra_enable_jquery_compatibility";s:2:"on";s:30:"extra_enable_jquery_body_super";s:5:"false";s:22:"extra_enable_dropdowns";s:2:"on";s:15:"extra_home_link";s:2:"on";s:16:"extra_sort_pages";s:10:"post_title";s:16:"extra_order_page";s:3:"asc";s:23:"extra_tiers_shown_pages";i:3;s:33:"extra_enable_dropdowns_categories";s:2:"on";s:22:"extra_categories_empty";s:2:"on";s:28:"extra_tiers_shown_categories";i:3;s:14:"extra_sort_cat";s:4:"name";s:15:"extra_order_cat";s:3:"asc";s:21:"extra_disable_toptier";s:5:"false";s:27:"et_pb_post_type_integration";a:3:{s:4:"post";s:2:"on";s:4:"page";s:2:"on";s:7:"project";s:2:"on";}s:21:"et_pb_static_css_file";s:2:"on";s:19:"et_pb_css_in_footer";s:3:"off";s:25:"et_pb_product_tour_global";s:2:"on";s:24:"et_enable_classic_editor";s:3:"off";s:15:"extra_postinfo2";a:5:{i:0;s:6:"author";i:1;s:4:"date";i:2;s:10:"categories";i:3;s:8:"comments";i:4;s:12:"rating_stars";}s:23:"extra_show_postcomments";s:2:"on";s:21:"extra_show_author_box";s:2:"on";s:24:"extra_show_related_posts";s:2:"on";s:24:"extra_show_pagescomments";s:5:"false";s:15:"extra_postinfo1";a:4:{i:0;s:6:"author";i:1;s:4:"date";i:2;s:10:"categories";i:3;s:12:"rating_stars";}s:18:"archive_list_style";s:8:"Standard";s:20:"extra_seo_home_title";s:5:"false";s:26:"extra_seo_home_description";s:5:"false";s:23:"extra_seo_home_keywords";s:5:"false";s:24:"extra_seo_home_canonical";s:5:"false";s:24:"extra_seo_home_titletext";s:0:"";s:30:"extra_seo_home_descriptiontext";s:0:"";s:27:"extra_seo_home_keywordstext";s:0:"";s:19:"extra_seo_home_type";s:27:"BlogName | Blog description";s:23:"extra_seo_home_separate";s:3:" | ";s:22:"extra_seo_single_title";s:5:"false";s:28:"extra_seo_single_description";s:5:"false";s:25:"extra_seo_single_keywords";s:5:"false";s:26:"extra_seo_single_canonical";s:5:"false";s:28:"extra_seo_single_field_title";s:9:"seo_title";s:34:"extra_seo_single_field_description";s:15:"seo_description";s:31:"extra_seo_single_field_keywords";s:12:"seo_keywords";s:21:"extra_seo_single_type";s:21:"Post title | BlogName";s:25:"extra_seo_single_separate";s:3:" | ";s:25:"extra_seo_index_canonical";s:5:"false";s:27:"extra_seo_index_description";s:5:"false";s:20:"extra_seo_index_type";s:24:"Category name | BlogName";s:24:"extra_seo_index_separate";s:3:" | ";s:29:"extra_integrate_header_enable";s:2:"on";s:27:"extra_integrate_body_enable";s:2:"on";s:32:"extra_integrate_singletop_enable";s:2:"on";s:35:"extra_integrate_singlebottom_enable";s:2:"on";s:22:"extra_integration_head";s:0:"";s:22:"extra_integration_body";s:0:"";s:28:"extra_integration_single_top";s:0:"";s:31:"extra_integration_single_bottom";s:0:"";s:16:"header_ad_enable";s:5:"false";s:15:"header_ad_image";s:0:"";s:13:"header_ad_url";s:0:"";s:17:"header_ad_adsense";s:0:"";s:35:"header_responsive_adsense_ad_enable";s:5:"false";s:22:"header_below_ad_enable";s:5:"false";s:21:"header_below_ad_image";s:0:"";s:19:"header_below_ad_url";s:0:"";s:23:"header_below_ad_adsense";s:0:"";s:41:"header_below_responsive_adsense_ad_enable";s:5:"false";s:22:"footer_above_ad_enable";s:5:"false";s:21:"footer_above_ad_image";s:0:"";s:19:"footer_above_ad_url";s:0:"";s:23:"footer_above_ad_adsense";s:0:"";s:41:"footer_above_responsive_adsense_ad_enable";s:5:"false";s:20:"post_below_ad_enable";s:5:"false";s:19:"post_below_ad_image";s:0:"";s:17:"post_below_ad_url";s:0:"";s:21:"post_below_ad_adsense";s:0:"";s:39:"post_below_responsive_adsense_ad_enable";s:5:"false";s:20:"post_above_ad_enable";s:5:"false";s:19:"post_above_ad_image";s:0:"";s:17:"post_above_ad_url";s:0:"";s:21:"post_above_ad_adsense";s:0:"";s:39:"post_above_responsive_adsense_ad_enable";s:5:"false";}', 'yes'),
(209, 'widget_et_social_followers', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(210, 'widget_et_recent_tweets', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(211, 'widget_et_authors', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(212, 'widget_et_login', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(213, 'widget_et_ads', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(214, 'widget_et-recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(215, 'widget_et-recent-videos', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(216, 'widget_et-recent-reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(217, 'widget_et-recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(218, 'et_taxonomy_meta', 'a:0:{}', 'yes'),
(219, 'et_safe_mode_plugins_allowlist', 'a:8:{i:0;s:15:"etdev/etdev.php";i:1;s:15:"bloom/bloom.php";i:2;s:19:"monarch/monarch.php";i:3;s:29:"divi-builder/divi-builder.php";i:4;s:27:"ari-adminer/ari-adminer.php";i:5;s:31:"query-monitor/query-monitor.php";i:6;s:27:"woocommerce/woocommerce.php";i:7;s:47:"really-simple-ssl/rlrsssl-really-simple-ssl.php";}', 'yes'),
(220, 'et_support_center_installed', 'true', 'yes'),
(221, 'et_images_temp_folder', '/var/www/wordpress/wp-content/uploads/et_temp', 'yes'),
(222, 'et_schedule_clean_images_last_time', '1716128348', 'yes'),
(223, 'et_pb_builder_options', 'a:2:{i:0;b:0;s:35:"email_provider_credentials_migrated";b:1;}', 'yes'),
(224, 'et_extra_builder_global_presets_ng', 'O:8:"stdClass":0:{}', 'no'),
(225, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"440";s:6:"height";s:3:"440";s:4:"crop";i:1;}', 'yes'),
(226, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"627";s:6:"height";s:4:"9999";s:4:"crop";i:0;}', 'yes'),
(227, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"192";s:6:"height";s:3:"192";s:4:"crop";i:1;}', 'yes'),
(228, 'et_support_center_setup_done', 'processed', 'yes'),
(237, 'et_google_api_settings', 'a:3:{s:7:"api_key";s:0:"";s:26:"enqueue_google_maps_script";s:2:"on";s:16:"use_google_fonts";s:2:"on";}', 'yes'),
(238, 'et_bfb_settings', 'a:2:{s:10:"enable_bfb";s:2:"on";s:10:"toggle_bfb";s:2:"on";}', 'yes'),
(239, 'et_automatic_updates_options', 'a:2:{s:8:"username";s:11:"carltonreid";s:7:"api_key";s:40:"4e865a723503d3b93137c40172103fb57c4c5d3c";}', 'no'),
(240, 'et_support_site_id', 'Xf+Ju12xOMl)yp=eEWzg', 'yes'),
(242, 'et_account_status', 'active', 'no'),
(270, 'using_application_passwords', '1', 'no'),
(301, 'w3tc_extensions_hooks', '{"actions":[],"filters":[],"next_check_date":1716221106}', 'yes'),
(313, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1716134735;}', 'no') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 7, '_et_pb_predefined_layout', 'on'),
(6, 7, '_et_pb_built_for_post_type', 'layout'),
(7, 8, '_et_pb_predefined_layout', 'on'),
(8, 8, '_et_pb_built_for_post_type', 'layout'),
(9, 9, '_et_pb_predefined_layout', 'on'),
(10, 9, '_et_pb_built_for_post_type', 'layout'),
(11, 10, '_et_pb_predefined_layout', 'on'),
(12, 10, '_et_pb_built_for_post_type', 'layout'),
(13, 11, '_et_pb_predefined_layout', 'on'),
(14, 11, '_et_pb_built_for_post_type', 'layout'),
(15, 12, '_et_pb_predefined_layout', 'on'),
(16, 12, '_et_pb_built_for_post_type', 'layout'),
(17, 13, '_et_pb_predefined_layout', 'on'),
(18, 13, '_et_pb_built_for_post_type', 'layout'),
(19, 14, '_et_pb_predefined_layout', 'on'),
(20, 14, '_et_pb_built_for_post_type', 'layout'),
(21, 15, '_et_pb_predefined_default_layout', 'on'),
(22, 15, '_et_pb_predefined_default_type', 'home'),
(23, 15, '_extra_layout_home', '1'),
(24, 16, '_et_pb_predefined_default_layout', 'on'),
(25, 16, '_et_pb_predefined_default_type', 'index'),
(26, 16, '_extra_layout_default', '1') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-05-19 13:51:27', '2024-05-19 13:51:27', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2024-05-19 13:51:27', '2024-05-19 13:51:27', '', 0, 'http://localhost:8888/?p=1', 0, 'post', '', 1),
(2, 1, '2024-05-19 13:51:27', '2024-05-19 13:51:27', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost:8888/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2024-05-19 13:51:27', '2024-05-19 13:51:27', '', 0, 'https://localhost:8888/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-05-19 13:51:27', '2024-05-19 13:51:27', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: http://localhost:8888.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2024-05-19 13:51:27', '2024-05-19 13:51:27', '', 0, 'http://localhost:8888/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-05-19 13:59:29', '2024-05-19 13:59:29', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-05-19 13:59:29', '2024-05-19 13:59:29', '', 0, 'http://localhost:8888/2024/05/19/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2024-05-19 14:06:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-19 14:06:48', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=5', 0, 'post', '', 0),
(7, 1, '2024-05-19 14:19:22', '2024-05-19 14:19:22', '[et_pb_section admin_label="section"][et_pb_row admin_label="row"][et_pb_column type="4_4"][et_pb_featured_posts_slider admin_label="Featured Posts Slider" category_id="0" display_featured_posts_only="on" orderby="comment_count" order="desc" enable_autoplay="1" show_thumbnails="1" show_author="1" show_categories="1" show_comments="1" show_rating="1" show_date="1" /][et_pb_posts_blog_feed_masonry admin_label="Blog Feed Masonry" show_pagination="1" show_author="1" show_categories="1" show_featured_image="1" content_length="excerpt" show_date="1" category_id="0" heading_style="category" orderby="date" order="desc" show_comments="1" show_rating="1" /][/et_pb_column][/et_pb_row][/et_pb_section]', 'Homepage Basic', '', 'publish', 'closed', 'closed', '', 'homepage-basic', '', '', '2024-05-19 14:19:22', '2024-05-19 14:19:22', '', 0, 'http://bikemap.azurewebsites.net/et_pb_layout/homepage-basic/', 0, 'et_pb_layout', '', 0),
(8, 1, '2024-05-19 14:19:23', '2024-05-19 14:19:23', '[et_pb_section admin_label="section"][et_pb_row admin_label="row"][et_pb_column type="4_4"][et_pb_featured_posts_slider admin_label="Featured Posts Slider" display_featured_posts_only="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" enable_autoplay="off" orderby="date" order="desc" remove_drop_shadow="off"] [/et_pb_featured_posts_slider][/et_pb_column][/et_pb_row][et_pb_row admin_label="Row"][et_pb_column type="1_2"][et_pb_posts admin_label="Posts" display_featured_posts_only="off" show_thumbnails="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" heading_style="category" orderby="comment_count" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" remove_drop_shadow="off"] [/et_pb_posts][/et_pb_column][et_pb_column type="1_2"][et_pb_posts admin_label="Posts" display_featured_posts_only="off" show_thumbnails="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" heading_style="category" orderby="rating" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" remove_drop_shadow="off"] [/et_pb_posts][/et_pb_column][/et_pb_row][et_pb_row admin_label="Row"][et_pb_column type="4_4"][et_pb_posts_blog_feed_standard admin_label="Blog Feed Standard" show_pagination="on" show_author="on" show_categories="on" show_featured_image="on" show_more="on" show_date="on" display_featured_posts_only="off" show_comments="on" show_rating="on" content_length="excerpt" heading_style="category" orderby="date" order="desc" custom_read_more="off" read_more_text_size="20" read_more_border_width="2" read_more_border_radius="3" read_more_letter_spacing="0" read_more_use_icon="default" read_more_icon_placement="right" read_more_on_hover="on" read_more_border_radius_hover="3" read_more_letter_spacing_hover="0" remove_drop_shadow="off" posts_per_page="4"] [/et_pb_posts_blog_feed_standard][/et_pb_column][/et_pb_row][/et_pb_section]', 'Standard Blog Homepage', '', 'publish', 'closed', 'closed', '', 'standard-blog-homepage', '', '', '2024-05-19 14:19:23', '2024-05-19 14:19:23', '', 0, 'http://localhost:8888/et_pb_layout/standard-blog-homepage/', 0, 'et_pb_layout', '', 0),
(9, 1, '2024-05-19 14:19:23', '2024-05-19 14:19:23', '[et_pb_section admin_label="section"][et_pb_row admin_label="row"][et_pb_column type="4_4"][et_pb_featured_posts_slider admin_label="Featured Posts Slider" display_featured_posts_only="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" enable_autoplay="off" orderby="date" order="desc" remove_drop_shadow="off"] [/et_pb_featured_posts_slider][/et_pb_column][/et_pb_row][et_pb_row admin_label="Row"][et_pb_column type="1_3"][et_pb_posts admin_label="Posts" display_featured_posts_only="off" show_thumbnails="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" heading_style="category" orderby="comment_count" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" remove_drop_shadow="off"] [/et_pb_posts][/et_pb_column][et_pb_column type="1_3"][et_pb_posts admin_label="Posts" display_featured_posts_only="off" show_thumbnails="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" heading_style="category" orderby="rating" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" remove_drop_shadow="off"] [/et_pb_posts][/et_pb_column][et_pb_column type="1_3"][et_pb_posts admin_label="Posts" display_featured_posts_only="off" show_thumbnails="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" heading_style="category" orderby="date" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" remove_drop_shadow="off"] [/et_pb_posts][/et_pb_column][/et_pb_row][et_pb_row admin_label="Row"][et_pb_column type="4_4"][et_pb_posts_blog_feed_masonry admin_label="Blog Feed Masonry" show_pagination="on" show_author="on" show_categories="on" show_featured_image="on" show_more="on" show_date="on" display_featured_posts_only="off" show_comments="on" show_rating="on" content_length="excerpt" heading_style="category" orderby="date" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" custom_read_more="off" read_more_text_size="20" read_more_border_width="2" read_more_border_radius="3" read_more_letter_spacing="0" read_more_use_icon="default" read_more_icon_placement="right" read_more_on_hover="on" read_more_border_radius_hover="3" read_more_letter_spacing_hover="0" remove_drop_shadow="off" posts_per_page="4"] [/et_pb_posts_blog_feed_masonry][/et_pb_column][/et_pb_row][/et_pb_section]', 'Masonry Blog Homepage', '', 'publish', 'closed', 'closed', '', 'masonry-blog-homepage', '', '', '2024-05-19 14:19:23', '2024-05-19 14:19:23', '', 0, 'http://localhost:8888/et_pb_layout/masonry-blog-homepage/', 0, 'et_pb_layout', '', 0),
(10, 1, '2024-05-19 14:19:24', '2024-05-19 14:19:24', '[et_pb_section admin_label="section"][et_pb_row admin_label="row"][et_pb_column type="4_4"][et_pb_featured_posts_slider admin_label="Featured Posts Slider" category_id="0" display_featured_posts_only="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" enable_autoplay="off" orderby="date" order="desc" remove_drop_shadow="off"] [/et_pb_featured_posts_slider][/et_pb_column][/et_pb_row][et_pb_row admin_label="Row"][et_pb_column type="1_2"][et_pb_posts admin_label="Posts" category_id="0" posts_per_page="4" display_featured_posts_only="off" show_thumbnails="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" heading_style="category" orderby="comment_count" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" remove_drop_shadow="off" /][/et_pb_column][et_pb_column type="1_2"][et_pb_posts admin_label="Posts" category_id="0" posts_per_page="4" display_featured_posts_only="off" show_thumbnails="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" heading_style="category" orderby="date" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" remove_drop_shadow="off" /][/et_pb_column][/et_pb_row][et_pb_row admin_label="Row"][et_pb_column type="4_4"][et_pb_posts_carousel admin_label="Posts Carousel" display_featured_posts_only="off" show_date="on" enable_autoplay="off" heading_style="category" orderby="date" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" remove_drop_shadow="off" /][/et_pb_column][/et_pb_row][et_pb_row admin_label="Row"][et_pb_column type="1_3"][et_pb_posts admin_label="Posts" category_id="0" posts_per_page="4" display_featured_posts_only="off" show_thumbnails="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" heading_style="category" orderby="comment_count" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" remove_drop_shadow="off"] [/et_pb_posts][/et_pb_column][et_pb_column type="1_3"][et_pb_posts admin_label="Posts" category_id="0" posts_per_page="4" display_featured_posts_only="off" show_thumbnails="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" heading_style="category" orderby="rating" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" remove_drop_shadow="off"] [/et_pb_posts][/et_pb_column][et_pb_column type="1_3"][et_pb_posts admin_label="Posts" category_id="0" posts_per_page="4" display_featured_posts_only="off" show_thumbnails="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" heading_style="category" orderby="date" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" remove_drop_shadow="off"] [/et_pb_posts][/et_pb_column][/et_pb_row][et_pb_row admin_label="Row"][et_pb_column type="4_4"][et_pb_tabbed_posts admin_label="Tabbed Posts" show_thumbnails="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" use_border_color="off" border_color="#ffffff" border_style="solid" remove_drop_shadow="off"] [et_pb_tabbed_posts_tab category_id="0" category_name="All" display_featured_posts_only="off" /][et_pb_tabbed_posts_tab category_id="0" category_name="All" display_featured_posts_only="off" /][et_pb_tabbed_posts_tab category_id="0" category_name="All" display_featured_posts_only="off" /][et_pb_tabbed_posts_tab category_id="0" category_name="All" display_featured_posts_only="off" /] [/et_pb_tabbed_posts][/et_pb_column][/et_pb_row][/et_pb_section]', 'Magazine Homepage', '', 'publish', 'closed', 'closed', '', 'magazine-homepage', '', '', '2024-05-19 14:19:24', '2024-05-19 14:19:24', '', 0, 'http://localhost:8888/et_pb_layout/magazine-homepage/', 0, 'et_pb_layout', '', 0),
(11, 1, '2024-05-19 14:19:25', '2024-05-19 14:19:25', '[et_pb_section admin_label="section"][et_pb_row admin_label="Row"][et_pb_column type="4_4"][et_pb_posts_blog_feed_standard admin_label="Blog Feed Standard" show_pagination="on" show_author="on" show_categories="on" show_featured_image="on" show_more="on" show_date="on" display_featured_posts_only="off" show_comments="on" show_rating="on" content_length="excerpt" heading_style="category" orderby="date" order="desc" custom_read_more="off" read_more_text_size="20" read_more_border_width="2" read_more_border_radius="3" read_more_letter_spacing="0" read_more_use_icon="default" read_more_icon_placement="right" read_more_on_hover="on" read_more_border_radius_hover="3" read_more_letter_spacing_hover="0" remove_drop_shadow="off" posts_per_page="8"] [/et_pb_posts_blog_feed_standard][/et_pb_column][/et_pb_row][/et_pb_section]', 'Standard Blog Category', '', 'publish', 'closed', 'closed', '', 'standard-blog-category', '', '', '2024-05-19 14:19:25', '2024-05-19 14:19:25', '', 0, 'http://localhost:8888/et_pb_layout/standard-blog-category/', 0, 'et_pb_layout', '', 0),
(12, 1, '2024-05-19 14:19:25', '2024-05-19 14:19:25', '[et_pb_section admin_label="section"][et_pb_row admin_label="Row"][et_pb_column type="4_4"][et_pb_posts_blog_feed_masonry admin_label="Blog Feed Masonry" show_pagination="on" show_author="on" show_categories="on" show_featured_image="on" show_more="on" show_date="on" display_featured_posts_only="off" show_comments="on" show_rating="on" content_length="excerpt" heading_style="category" orderby="date" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" custom_read_more="off" read_more_text_size="20" read_more_border_width="2" read_more_border_radius="3" read_more_letter_spacing="0" read_more_use_icon="default" read_more_icon_placement="right" read_more_on_hover="on" read_more_border_radius_hover="3" read_more_letter_spacing_hover="0" remove_drop_shadow="off" posts_per_page="10"] [/et_pb_posts_blog_feed_masonry][/et_pb_column][/et_pb_row][/et_pb_section]', 'Masonry Blog Category', '', 'publish', 'closed', 'closed', '', 'masonry-blog-category', '', '', '2024-05-19 14:19:25', '2024-05-19 14:19:25', '', 0, 'http://localhost:8888/et_pb_layout/masonry-blog-category/', 0, 'et_pb_layout', '', 0),
(13, 1, '2024-05-19 14:19:25', '2024-05-19 14:19:25', '[et_pb_section admin_label="section"][et_pb_row admin_label="row"][et_pb_column type="4_4"][et_pb_featured_posts_slider admin_label="Featured Posts Slider" display_featured_posts_only="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" enable_autoplay="off" orderby="date" order="desc" remove_drop_shadow="off"] [/et_pb_featured_posts_slider][/et_pb_column][/et_pb_row][et_pb_row admin_label="Row"][et_pb_column type="4_4"][et_pb_posts_blog_feed_standard admin_label="Blog Feed Standard" show_pagination="on" show_author="on" show_categories="on" show_featured_image="on" show_more="on" show_date="on" display_featured_posts_only="off" show_comments="on" show_rating="on" content_length="excerpt" heading_style="category" orderby="date" order="desc" custom_read_more="off" read_more_text_size="20" read_more_border_width="2" read_more_border_radius="3" read_more_letter_spacing="0" read_more_use_icon="default" read_more_icon_placement="right" read_more_on_hover="on" read_more_border_radius_hover="3" read_more_letter_spacing_hover="0" remove_drop_shadow="off" posts_per_page="6"] [/et_pb_posts_blog_feed_standard][/et_pb_column][/et_pb_row][/et_pb_section]', 'Standard Blog Category With Featured Posts', '', 'publish', 'closed', 'closed', '', 'standard-blog-category-with-featured-posts', '', '', '2024-05-19 14:19:25', '2024-05-19 14:19:25', '', 0, 'http://localhost:8888/et_pb_layout/standard-blog-category-with-featured-posts/', 0, 'et_pb_layout', '', 0),
(14, 1, '2024-05-19 14:19:25', '2024-05-19 14:19:25', '[et_pb_section admin_label="section"][et_pb_row admin_label="row"][et_pb_column type="4_4"][et_pb_featured_posts_slider admin_label="Featured Posts Slider" display_featured_posts_only="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" enable_autoplay="off" orderby="date" order="desc" remove_drop_shadow="off"] [/et_pb_featured_posts_slider][/et_pb_column][/et_pb_row][et_pb_row admin_label="Row"][et_pb_column type="4_4"][et_pb_posts_blog_feed_masonry admin_label="Blog Feed Masonry" show_pagination="on" show_author="on" show_categories="on" show_featured_image="on" show_more="on" show_date="on" display_featured_posts_only="off" show_comments="on" show_rating="on" content_length="excerpt" heading_style="category" orderby="date" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" custom_read_more="off" read_more_text_size="20" read_more_border_width="2" read_more_border_radius="3" read_more_letter_spacing="0" read_more_use_icon="default" read_more_icon_placement="right" read_more_on_hover="on" read_more_border_radius_hover="3" read_more_letter_spacing_hover="0" remove_drop_shadow="off" posts_per_page="6"] [/et_pb_posts_blog_feed_masonry][/et_pb_column][/et_pb_row][/et_pb_section]', 'Masonry Blog Category With Featured Posts', '', 'publish', 'closed', 'closed', '', 'masonry-blog-category-with-featured-posts', '', '', '2024-05-19 14:19:25', '2024-05-19 14:19:25', '', 0, 'http://localhost:8888/et_pb_layout/masonry-blog-category-with-featured-posts/', 0, 'et_pb_layout', '', 0),
(15, 1, '2024-05-19 14:19:26', '2024-05-19 14:19:26', '[et_pb_section admin_label="section"][et_pb_row admin_label="row"][et_pb_column type="4_4"][et_pb_featured_posts_slider admin_label="Featured Posts Slider" category_id="0" display_featured_posts_only="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" enable_autoplay="off" orderby="date" order="desc" remove_drop_shadow="off" /][/et_pb_column][/et_pb_row][et_pb_row admin_label="Row"][et_pb_column type="1_3"][et_pb_posts admin_label="Posts" category_id="0" posts_per_page="4" display_featured_posts_only="off" show_thumbnails="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" heading_style="category" orderby="comment_count" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" remove_drop_shadow="off" /][/et_pb_column][et_pb_column type="1_3"][et_pb_posts admin_label="Posts" category_id="0" posts_per_page="4" display_featured_posts_only="off" show_thumbnails="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" heading_style="category" orderby="rating" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" remove_drop_shadow="off" /][/et_pb_column][et_pb_column type="1_3"][et_pb_posts admin_label="Posts" category_id="0" posts_per_page="4" display_featured_posts_only="off" show_thumbnails="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" heading_style="category" orderby="date" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" remove_drop_shadow="off" /][/et_pb_column][/et_pb_row][et_pb_row admin_label="Row"][et_pb_column type="4_4"][et_pb_posts_blog_feed_masonry admin_label="Blog Feed Masonry" category_id="0" posts_per_page="6" show_pagination="on" show_author="on" show_categories="on" show_featured_image="on" show_more="on" show_date="on" display_featured_posts_only="off" show_comments="on" show_rating="on" content_length="excerpt" heading_style="category" orderby="date" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" custom_read_more="off" read_more_text_size="20" read_more_border_width="2" read_more_border_radius="3" read_more_letter_spacing="0" read_more_use_icon="default" read_more_icon_placement="right" read_more_on_hover="on" read_more_border_radius_hover="3" read_more_letter_spacing_hover="0" remove_drop_shadow="off" /][/et_pb_column][/et_pb_row][/et_pb_section]', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2024-05-19 14:19:26', '2024-05-19 14:19:26', '', 0, 'http://localhost:8888/layout/homepage/', 0, 'layout', '', 0),
(16, 1, '2024-05-19 14:19:26', '2024-05-19 14:19:26', '[et_pb_section admin_label="section"][et_pb_row admin_label="row"][et_pb_column type="4_4"][et_pb_featured_posts_slider admin_label="Featured Posts Slider" category_id="-1" display_featured_posts_only="on" show_author="on" show_categories="on" show_comments="on" show_rating="on" show_date="on" enable_autoplay="off" orderby="date" order="desc" remove_drop_shadow="off" /][et_pb_posts_blog_feed_masonry admin_label="Blog Feed Masonry" category_id="-1" posts_per_page="12" show_pagination="on" show_author="on" show_categories="on" show_featured_image="on" show_more="on" show_date="on" display_featured_posts_only="off" show_comments="on" show_rating="on" content_length="excerpt" heading_style="category" orderby="date" order="desc" use_border_color="off" border_color="#ffffff" border_style="solid" custom_read_more="off" read_more_text_size="20" read_more_border_width="2" read_more_border_radius="3" read_more_letter_spacing="0" read_more_use_icon="default" read_more_icon_placement="right" read_more_on_hover="on" read_more_border_radius_hover="3" read_more_letter_spacing_hover="0" remove_drop_shadow="off" /][/et_pb_column][/et_pb_row][/et_pb_section]', 'Default Category', '', 'publish', 'closed', 'closed', '', 'default-category', '', '', '2024-05-19 14:19:26', '2024-05-19 14:19:26', '', 0, 'http://localhost:8888/layout/default-category/', 0, 'layout', '', 0),
(17, 1, '2024-05-19 14:20:31', '2024-05-19 14:20:31', '', 'Extra', '', 'publish', 'closed', 'closed', '', 'extra', '', '', '2024-05-19 14:20:49', '2024-05-19 14:20:49', '', 0, 'http://localhost:8888/2024/05/19/extra/', 0, 'custom_css', '', 0),
(18, 1, '2024-05-19 14:20:31', '2024-05-19 14:20:31', '', 'Extra', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2024-05-19 14:20:31', '2024-05-19 14:20:31', '', 17, 'http://localhost:8888/?p=18', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_smush_dir_images`
#

DROP TABLE IF EXISTS `wp_smush_dir_images`;


#
# Table structure of table `wp_smush_dir_images`
#

CREATE TABLE `wp_smush_dir_images` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `path_hash` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resize` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lossy` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `error` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `image_size` int unsigned DEFAULT NULL,
  `orig_size` int unsigned DEFAULT NULL,
  `file_time` int unsigned DEFAULT NULL,
  `last_scan` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `meta` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path_hash` (`path_hash`),
  KEY `image_size` (`image_size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_smush_dir_images`
#

#
# End of data contents of table `wp_smush_dir_images`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0),
(13, 2, 0),
(14, 2, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'layout_type', '', 0, 8) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'layout', 'layout', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'james.houston'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'default_password_nag', ''),
(17, 1, 'session_tokens', 'a:2:{s:64:"c9cbe980e0d42c4b6f8d744c8b6a2b7d02a957d585460f9c8c7e991baaca8591";a:4:{s:10:"expiration";i:1716300405;s:2:"ip";s:13:"169.254.129.1";s:2:"ua";s:117:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";s:5:"login";i:1716127605;}s:64:"821c8f8cbcac61ad2928fb446bef2a998ad94cf8ba272b14e412d3c4d218c18c";a:4:{s:10:"expiration";i:1717342586;s:2:"ip";s:13:"169.254.129.1";s:2:"ua";s:117:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";s:5:"login";i:1716132986;}}'),
(18, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(19, 1, 'community-events-location', 'a:1:{s:2:"ip";s:10:"92.11.88.0";}'),
(20, 1, 'w3tc_features_seen', 'a:3:{i:1;s:13:"defer-scripts";i:2;s:16:"preload-requests";i:3;s:12:"remove-cssjs";}'),
(21, 1, '_application_passwords', 'a:1:{i:0;a:7:{s:4:"uuid";s:36:"741daf5d-a097-48f6-ac91-94ab35c4c633";s:6:"app_id";s:0:"";s:4:"name";s:11:"ridepostapi";s:8:"password";s:34:"$P$B4MehOqXGbPjyJWnU0seMiAYv2cNat.";s:7:"created";i:1716133791;s:9:"last_used";N;s:7:"last_ip";N;}}'),
(22, 1, 'facebook', ''),
(23, 1, 'twitter', ''),
(24, 1, 'googleplus', ''),
(25, 1, 'pinterest', ''),
(26, 1, 'tumblr', ''),
(27, 1, 'stumbleupon', ''),
(28, 1, 'wordpress', ''),
(29, 1, 'instagram', ''),
(30, 1, 'dribbble', ''),
(31, 1, 'vimeo', ''),
(32, 1, 'linkedin', ''),
(33, 1, 'rss', ''),
(34, 1, 'deviantart', ''),
(35, 1, 'myspace', ''),
(36, 1, 'skype', ''),
(37, 1, 'youtube', ''),
(38, 1, 'picassa', ''),
(39, 1, 'flickr', ''),
(40, 1, 'blogger', ''),
(41, 1, 'spotify', ''),
(42, 1, 'delicious', '') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'james.houston', '$P$BpmKBJFMv9x1Kvawd5nQmauDnbcKXF.', 'james-houston', 'mail@jameshouston.com', 'http://localhost:8888', '2024-05-19 13:51:27', '', 0, 'james.houston') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

