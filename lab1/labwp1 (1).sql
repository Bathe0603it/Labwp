-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2018 at 02:33 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labwp1`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-27 15:31:30', '2018-03-27 15:31:30', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Labwp/lab1', 'yes'),
(2, 'home', 'http://localhost/Labwp/lab1', 'yes'),
(3, 'blogname', 'Web của Bathepro', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress của Bathepro', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'bathepc@gmail.com', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=7&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:"title";s:16:"Tìm Chúng Tôi";s:4:"text";s:163:"<strong>Địa chỉ</strong>\n23 Hàng Mã\nHà Nội\n\n<strong>Giờ</strong>\nThứ hai - Thứ sáu: 9:00AM - 5:00PM\nThứ bảy và Chủ nhật: 11:00AM - 3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:27:"Giới thiệu về website";s:4:"text";s:155:"Đây là một nơi tốt để giới thiệu bản thân và trang web của bạn hoặc đưa ra các thông tin để người xem tin tưởng hơn.";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:16:"Tìm Chúng Tôi";s:4:"text";s:163:"<strong>Địa chỉ</strong>\n23 Hàng Mã\nHà Nội\n\n<strong>Giờ</strong>\nThứ hai - Thứ sáu: 9:00AM - 5:00PM\nThứ bảy và Chủ nhật: 11:00AM - 3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:27:"Giới thiệu về website";s:4:"text";s:155:"Đây là một nơi tốt để giới thiệu bản thân và trang web của bạn hoặc đưa ra các thông tin để người xem tin tưởng hơn.";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '10', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'vi', 'yes'),
(95, 'widget_search', 'a:4:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;i:3;a:1:{s:5:"title";s:11:"Tìm kiếm";}i:4;a:1:{s:5:"title";s:11:"Tìm kiếm";}}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:6:"text-2";i:1;s:8:"search-3";i:2;s:6:"text-3";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-4";}s:9:"sidebar-3";a:2:{i:0;s:6:"text-5";i:1;s:8:"search-4";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1522294292;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1522337610;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1522339031;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:6:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:3:"top";i:2;s:6:"social";i:3;}s:7:"panel_1";i:11;s:7:"panel_2";i:8;s:7:"panel_3";i:10;s:7:"panel_4";i:9;}', 'yes'),
(122, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:62:"https://downloads.wordpress.org/release/vi/wordpress-4.9.4.zip";s:6:"locale";s:2:"vi";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:62:"https://downloads.wordpress.org/release/vi/wordpress-4.9.4.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.4";s:7:"version";s:5:"4.9.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1522253540;s:15:"version_checked";s:5:"4.9.4";s:12:"translations";a:0:{}}', 'no'),
(123, '_site_transient_timeout_browser_efc56fe28520bcd166ef136f44025003', '1522769542', 'no'),
(124, '_site_transient_browser_efc56fe28520bcd166ef136f44025003', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"65.0.3325.181";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(125, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1522253546;s:7:"checked";a:3:{s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(127, 'can_compress_scripts', '1', 'no'),
(149, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(154, 'category_children', 'a:0:{}', 'yes'),
(167, '_site_transient_timeout_theme_roots', '1522255344', 'no'),
(168, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(169, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1522253548;s:7:"checked";a:2:{s:19:"akismet/akismet.php";s:5:"4.0.2";s:9:"hello.php";s:3:"1.6";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.4";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2018/03/espresso.jpg'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2018/03/espresso.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"espresso-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"espresso-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"espresso-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"espresso-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"espresso-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4, 4, '_starter_content_theme', 'twentyseventeen'),
(6, 5, '_wp_attached_file', '2018/03/sandwich.jpg'),
(7, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2018/03/sandwich.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"sandwich-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"sandwich-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"sandwich-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"sandwich-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"sandwich-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(8, 5, '_starter_content_theme', 'twentyseventeen'),
(10, 6, '_wp_attached_file', '2018/03/coffee.jpg'),
(11, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:18:"2018/03/coffee.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"coffee-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"coffee-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"coffee-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"coffee-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"coffee-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(12, 6, '_starter_content_theme', 'twentyseventeen'),
(15, 7, '_customize_changeset_uuid', 'f382dbd4-68c7-4621-ab9b-4bc1cf126b5a'),
(16, 8, '_thumbnail_id', '5'),
(18, 8, '_customize_changeset_uuid', 'f382dbd4-68c7-4621-ab9b-4bc1cf126b5a'),
(19, 9, '_thumbnail_id', '4'),
(21, 9, '_customize_changeset_uuid', 'f382dbd4-68c7-4621-ab9b-4bc1cf126b5a'),
(22, 10, '_thumbnail_id', '6'),
(24, 10, '_customize_changeset_uuid', 'f382dbd4-68c7-4621-ab9b-4bc1cf126b5a'),
(25, 11, '_thumbnail_id', '4'),
(27, 11, '_customize_changeset_uuid', 'f382dbd4-68c7-4621-ab9b-4bc1cf126b5a'),
(28, 18, '_menu_item_type', 'custom'),
(29, 18, '_menu_item_menu_item_parent', '0'),
(30, 18, '_menu_item_object_id', '18'),
(31, 18, '_menu_item_object', 'custom'),
(32, 18, '_menu_item_target', ''),
(33, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(34, 18, '_menu_item_xfn', ''),
(35, 18, '_menu_item_url', 'http://localhost/Labwp/lab1/'),
(36, 19, '_menu_item_type', 'post_type'),
(37, 19, '_menu_item_menu_item_parent', '0'),
(38, 19, '_menu_item_object_id', '8'),
(39, 19, '_menu_item_object', 'page'),
(40, 19, '_menu_item_target', ''),
(41, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 19, '_menu_item_xfn', ''),
(43, 19, '_menu_item_url', ''),
(44, 20, '_menu_item_type', 'post_type'),
(45, 20, '_menu_item_menu_item_parent', '0'),
(46, 20, '_menu_item_object_id', '10'),
(47, 20, '_menu_item_object', 'page'),
(48, 20, '_menu_item_target', ''),
(49, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 20, '_menu_item_xfn', ''),
(51, 20, '_menu_item_url', ''),
(52, 21, '_menu_item_type', 'post_type'),
(53, 21, '_menu_item_menu_item_parent', '0'),
(54, 21, '_menu_item_object_id', '9'),
(55, 21, '_menu_item_object', 'page'),
(56, 21, '_menu_item_target', ''),
(57, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(58, 21, '_menu_item_xfn', ''),
(59, 21, '_menu_item_url', ''),
(60, 22, '_menu_item_type', 'custom'),
(61, 22, '_menu_item_menu_item_parent', '0'),
(62, 22, '_menu_item_object_id', '22'),
(63, 22, '_menu_item_object', 'custom'),
(64, 22, '_menu_item_target', ''),
(65, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(66, 22, '_menu_item_xfn', ''),
(67, 22, '_menu_item_url', 'https://www.yelp.com'),
(68, 23, '_menu_item_type', 'custom'),
(69, 23, '_menu_item_menu_item_parent', '0'),
(70, 23, '_menu_item_object_id', '23'),
(71, 23, '_menu_item_object', 'custom'),
(72, 23, '_menu_item_target', ''),
(73, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 23, '_menu_item_xfn', ''),
(75, 23, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(76, 24, '_menu_item_type', 'custom'),
(77, 24, '_menu_item_menu_item_parent', '0'),
(78, 24, '_menu_item_object_id', '24'),
(79, 24, '_menu_item_object', 'custom'),
(80, 24, '_menu_item_target', ''),
(81, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(82, 24, '_menu_item_xfn', ''),
(83, 24, '_menu_item_url', 'https://twitter.com/wordpress'),
(84, 25, '_menu_item_type', 'custom'),
(85, 25, '_menu_item_menu_item_parent', '0'),
(86, 25, '_menu_item_object_id', '25'),
(87, 25, '_menu_item_object', 'custom'),
(88, 25, '_menu_item_target', ''),
(89, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(90, 25, '_menu_item_xfn', ''),
(91, 25, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(92, 26, '_menu_item_type', 'custom'),
(93, 26, '_menu_item_menu_item_parent', '0'),
(94, 26, '_menu_item_object_id', '26'),
(95, 26, '_menu_item_object', 'custom'),
(96, 26, '_menu_item_target', ''),
(97, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(98, 26, '_menu_item_xfn', ''),
(99, 26, '_menu_item_url', 'mailto:wordpress@example.com'),
(100, 12, '_wp_trash_meta_status', 'publish'),
(101, 12, '_wp_trash_meta_time', '1522164846'),
(102, 27, '_wp_attached_file', '2018/03/astronauta.jpg'),
(103, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:22:"2018/03/astronauta.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"astronauta-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"astronauta-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"astronauta-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"astronauta-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:22:"astronauta-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(104, 28, '_wp_attached_file', '2018/03/cropped-astronauta.jpg'),
(105, 28, '_wp_attachment_context', 'site-icon'),
(106, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:30:"2018/03/cropped-astronauta.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"cropped-astronauta-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"cropped-astronauta-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:30:"cropped-astronauta-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-270";a:4:{s:4:"file";s:30:"cropped-astronauta-270x270.jpg";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-192";a:4:{s:4:"file";s:30:"cropped-astronauta-192x192.jpg";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-180";a:4:{s:4:"file";s:30:"cropped-astronauta-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"site_icon-32";a:4:{s:4:"file";s:28:"cropped-astronauta-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(107, 29, '_wp_trash_meta_status', 'publish'),
(108, 29, '_wp_trash_meta_time', '1522165207'),
(109, 31, '_edit_last', '1'),
(110, 31, '_edit_lock', '1522283445:1'),
(113, 31, '_wp_old_date', '2018-03-27'),
(116, 34, '_wp_attached_file', '2018/03/Stars404.png'),
(117, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:20:"2018/03/Stars404.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Stars404-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"Stars404-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"Stars404-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(118, 35, '_wp_attached_file', '2018/03/Stars404-1.png'),
(119, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:22:"2018/03/Stars404-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Stars404-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"Stars404-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:22:"Stars404-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(120, 36, '_wp_attached_file', '2018/03/astronauta-1.jpg'),
(121, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:24:"2018/03/astronauta-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"astronauta-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"astronauta-1-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"astronauta-1-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"astronauta-1-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:24:"astronauta-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(122, 37, '_wp_attached_file', '2018/03/astronauta-2.jpg'),
(123, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:24:"2018/03/astronauta-2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"astronauta-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"astronauta-2-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"astronauta-2-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"astronauta-2-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:24:"astronauta-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(124, 38, '_edit_last', '1'),
(125, 38, '_edit_lock', '1522283384:1'),
(126, 1, '_edit_lock', '1522283419:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-27 15:31:30', '2018-03-27 15:31:30', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2018-03-27 15:31:30', '2018-03-27 15:31:30', '', 0, 'http://localhost/Labwp/lab1/?p=1', 0, 'post', '', 1),
(2, 1, '2018-03-27 15:31:30', '2018-03-27 15:31:30', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href="http://localhost/Labwp/lab1/wp-admin/">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2018-03-27 15:31:30', '2018-03-27 15:31:30', '', 0, 'http://localhost/Labwp/lab1/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-03-27 15:32:23', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-27 15:32:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/Labwp/lab1/?p=3', 0, 'post', '', 0),
(4, 1, '2018-03-27 15:33:56', '2018-03-27 15:33:56', '', 'Espresso', '', 'inherit', 'open', 'closed', '', 'espresso', '', '', '2018-03-27 15:33:56', '2018-03-27 15:33:56', '', 0, 'http://localhost/Labwp/lab1/wp-content/uploads/2018/03/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, '2018-03-27 15:33:56', '2018-03-27 15:33:56', '', 'Bánh kẹp', '', 'inherit', 'open', 'closed', '', 'banh-kep', '', '', '2018-03-27 15:33:56', '2018-03-27 15:33:56', '', 0, 'http://localhost/Labwp/lab1/wp-content/uploads/2018/03/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2018-03-27 15:33:56', '2018-03-27 15:33:56', '', 'Coffee', '', 'inherit', 'open', 'closed', '', 'coffee', '', '', '2018-03-27 15:33:56', '2018-03-27 15:33:56', '', 0, 'http://localhost/Labwp/lab1/wp-content/uploads/2018/03/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2018-03-27 15:33:56', '2018-03-27 15:33:56', 'Chào mừng đến với trang web của bạn! Đây là trang chủ của bạn, nơi mà hầu hết người truy cập sẽ nhìn thấy khi lần đầu họ đến trang web của bạn.', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2018-03-27 15:33:56', '2018-03-27 15:33:56', '', 0, 'http://localhost/Labwp/lab1/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-03-27 15:33:57', '2018-03-27 15:33:57', 'Bạn có thể là một nghệ sĩ muốn giới thiệu bản thân và công việc của bạn ở đây hoặc có thể bạn là một doanh nghiệp viết ra sứ mệnh của mình.', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2018-03-27 15:33:57', '2018-03-27 15:33:57', '', 0, 'http://localhost/Labwp/lab1/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-03-27 15:33:57', '2018-03-27 15:33:57', 'Trang này có các thông tin liên lạc, ví dụ như địa chỉ và điện thoại. Bạn có thể thử cài ứng dụng để thêm phần liên lạc', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2018-03-27 15:33:57', '2018-03-27 15:33:57', '', 0, 'http://localhost/Labwp/lab1/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-03-27 15:33:57', '2018-03-27 15:33:57', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-03-27 15:33:57', '2018-03-27 15:33:57', '', 0, 'http://localhost/Labwp/lab1/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-03-27 15:33:57', '2018-03-27 15:33:57', 'Đây là trang chủ mẫu. Trang chủ có thể chứa bất kỳ cái gì, bao gồm các bài blog gần nhất', 'Mục trên trang chủ', '', 'publish', 'closed', 'closed', '', 'muc-tren-trang-chu', '', '', '2018-03-27 15:33:57', '2018-03-27 15:33:57', '', 0, 'http://localhost/Labwp/lab1/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-03-27 15:33:55', '2018-03-27 15:33:55', '{\n    "widget_text[2]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjE2OiJUw6xtIENow7puZyBUw7RpIjtzOjQ6InRleHQiO3M6MTYzOiI8c3Ryb25nPsSQ4buLYSBjaOG7iTwvc3Ryb25nPgoyMyBIw6BuZyBNw6MKSMOgIE7hu5lpCgo8c3Ryb25nPkdp4budPC9zdHJvbmc+ClRo4bupIGhhaSAtIFRo4bupIHPDoXU6IDk6MDBBTSAtIDU6MDBQTQpUaOG7qSBi4bqjeSB2w6AgQ2jhu6cgbmjhuq10OiAxMTowMEFNIC0gMzowMFBNIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==",\n            "title": "T\\u00ecm Ch\\u00fang T\\u00f4i",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "fb7d3afaca68a8a39432ee427715e5f2"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    },\n    "widget_search[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjExOiJUw6xtIGtp4bq/bSI7fQ==",\n            "title": "T\\u00ecm ki\\u1ebfm",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "166238942afcbcd724df831a1bc3858a"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    },\n    "widget_text[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjI3OiJHaeG7m2kgdGhp4buHdSB24buBIHdlYnNpdGUiO3M6NDoidGV4dCI7czoxNTU6IsSQw6J5IGzDoCBt4buZdCBuxqFpIHThu5F0IMSR4buDIGdp4bubaSB0aGnhu4d1IGLhuqNuIHRow6JuIHbDoCB0cmFuZyB3ZWIgY+G7p2EgYuG6oW4gaG/hurdjIMSRxrBhIHJhIGPDoWMgdGjDtG5nIHRpbiDEkeG7gyBuZ8aw4budaSB4ZW0gdGluIHTGsOG7n25nIGjGoW4uIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==",\n            "title": "Gi\\u1edbi thi\\u1ec7u v\\u1ec1 website",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "09dcd34f2995fabd693f9154afaed0ca"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "starter_content": true,\n        "value": [\n            "text-2",\n            "search-3",\n            "text-3"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    },\n    "widget_text[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjE2OiJUw6xtIENow7puZyBUw7RpIjtzOjQ6InRleHQiO3M6MTYzOiI8c3Ryb25nPsSQ4buLYSBjaOG7iTwvc3Ryb25nPgoyMyBIw6BuZyBNw6MKSMOgIE7hu5lpCgo8c3Ryb25nPkdp4budPC9zdHJvbmc+ClRo4bupIGhhaSAtIFRo4bupIHPDoXU6IDk6MDBBTSAtIDU6MDBQTQpUaOG7qSBi4bqjeSB2w6AgQ2jhu6cgbmjhuq10OiAxMTowMEFNIC0gMzowMFBNIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==",\n            "title": "T\\u00ecm Ch\\u00fang T\\u00f4i",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "fb7d3afaca68a8a39432ee427715e5f2"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    },\n    "sidebars_widgets[sidebar-2]": {\n        "starter_content": true,\n        "value": [\n            "text-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    },\n    "widget_text[5]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjI3OiJHaeG7m2kgdGhp4buHdSB24buBIHdlYnNpdGUiO3M6NDoidGV4dCI7czoxNTU6IsSQw6J5IGzDoCBt4buZdCBuxqFpIHThu5F0IMSR4buDIGdp4bubaSB0aGnhu4d1IGLhuqNuIHRow6JuIHbDoCB0cmFuZyB3ZWIgY+G7p2EgYuG6oW4gaG/hurdjIMSRxrBhIHJhIGPDoWMgdGjDtG5nIHRpbiDEkeG7gyBuZ8aw4budaSB4ZW0gdGluIHTGsOG7n25nIGjGoW4uIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==",\n            "title": "Gi\\u1edbi thi\\u1ec7u v\\u1ec1 website",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "09dcd34f2995fabd693f9154afaed0ca"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    },\n    "widget_search[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjExOiJUw6xtIGtp4bq/bSI7fQ==",\n            "title": "T\\u00ecm ki\\u1ebfm",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "166238942afcbcd724df831a1bc3858a"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    },\n    "sidebars_widgets[sidebar-3]": {\n        "starter_content": true,\n        "value": [\n            "text-5",\n            "search-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    },\n    "nav_menus_created_posts": {\n        "starter_content": true,\n        "value": [\n            4,\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    },\n    "nav_menu[-1]": {\n        "value": {\n            "name": "Menu tr\\u00ean c\\u00f9ng",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:55"\n    },\n    "nav_menu_item[-1]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 0,\n            "type": "custom",\n            "title": "Trang ch\\u1ee7",\n            "url": "http://localhost/Labwp/lab1/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "Link t\\u00f9y ch\\u1ecdn"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:55"\n    },\n    "nav_menu_item[-2]": {\n        "value": {\n            "object_id": 8,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "post_type",\n            "title": "Gi\\u1edbi thi\\u1ec7u",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Gi\\u1edbi thi\\u1ec7u",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "Trang"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:55"\n    },\n    "nav_menu_item[-3]": {\n        "value": {\n            "object_id": 10,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "post_type",\n            "title": "Blog",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Blog",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "Trang"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:55"\n    },\n    "nav_menu_item[-4]": {\n        "value": {\n            "object_id": 9,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 3,\n            "type": "post_type",\n            "title": "Li\\u00ean h\\u1ec7",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Li\\u00ean h\\u1ec7",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "Trang"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:55"\n    },\n    "twentyseventeen::nav_menu_locations[top]": {\n        "starter_content": true,\n        "value": -1,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    },\n    "nav_menu[-5]": {\n        "value": {\n            "name": "Menu m\\u1ea1ng x\\u00e3 h\\u1ed9i",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:55"\n    },\n    "nav_menu_item[-5]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 0,\n            "type": "custom",\n            "title": "Yelp",\n            "url": "https://www.yelp.com",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Link t\\u00f9y ch\\u1ecdn"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:55"\n    },\n    "nav_menu_item[-6]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "custom",\n            "title": "Facebook",\n            "url": "https://www.facebook.com/wordpress",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Link t\\u00f9y ch\\u1ecdn"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:55"\n    },\n    "nav_menu_item[-7]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "custom",\n            "title": "Twitter",\n            "url": "https://twitter.com/wordpress",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Link t\\u00f9y ch\\u1ecdn"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:55"\n    },\n    "nav_menu_item[-8]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 3,\n            "type": "custom",\n            "title": "Instagram",\n            "url": "https://www.instagram.com/explore/tags/wordcamp/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Link t\\u00f9y ch\\u1ecdn"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:55"\n    },\n    "nav_menu_item[-9]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 4,\n            "type": "custom",\n            "title": "Email",\n            "url": "mailto:wordpress@example.com",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Link t\\u00f9y ch\\u1ecdn"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:55"\n    },\n    "twentyseventeen::nav_menu_locations[social]": {\n        "starter_content": true,\n        "value": -5,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    },\n    "show_on_front": {\n        "starter_content": true,\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    },\n    "page_on_front": {\n        "starter_content": true,\n        "value": 7,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    },\n    "page_for_posts": {\n        "starter_content": true,\n        "value": 10,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    },\n    "twentyseventeen::panel_1": {\n        "starter_content": true,\n        "value": 11,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    },\n    "twentyseventeen::panel_2": {\n        "starter_content": true,\n        "value": 8,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    },\n    "twentyseventeen::panel_3": {\n        "starter_content": true,\n        "value": 10,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    },\n    "twentyseventeen::panel_4": {\n        "starter_content": true,\n        "value": 9,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:33:29"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f382dbd4-68c7-4621-ab9b-4bc1cf126b5a', '', '', '2018-03-27 15:33:55', '2018-03-27 15:33:55', '', 0, 'http://localhost/Labwp/lab1/?p=12', 0, 'customize_changeset', '', 0),
(13, 1, '2018-03-27 15:33:56', '2018-03-27 15:33:56', 'Chào mừng đến với trang web của bạn! Đây là trang chủ của bạn, nơi mà hầu hết người truy cập sẽ nhìn thấy khi lần đầu họ đến trang web của bạn.', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-03-27 15:33:56', '2018-03-27 15:33:56', '', 7, 'http://localhost/Labwp/lab1/2018/03/27/7-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-03-27 15:33:57', '2018-03-27 15:33:57', 'Bạn có thể là một nghệ sĩ muốn giới thiệu bản thân và công việc của bạn ở đây hoặc có thể bạn là một doanh nghiệp viết ra sứ mệnh của mình.', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-03-27 15:33:57', '2018-03-27 15:33:57', '', 8, 'http://localhost/Labwp/lab1/2018/03/27/8-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-03-27 15:33:57', '2018-03-27 15:33:57', 'Trang này có các thông tin liên lạc, ví dụ như địa chỉ và điện thoại. Bạn có thể thử cài ứng dụng để thêm phần liên lạc', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-27 15:33:57', '2018-03-27 15:33:57', '', 9, 'http://localhost/Labwp/lab1/2018/03/27/9-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-03-27 15:33:57', '2018-03-27 15:33:57', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-03-27 15:33:57', '2018-03-27 15:33:57', '', 10, 'http://localhost/Labwp/lab1/2018/03/27/10-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-03-27 15:33:57', '2018-03-27 15:33:57', 'Đây là trang chủ mẫu. Trang chủ có thể chứa bất kỳ cái gì, bao gồm các bài blog gần nhất', 'Mục trên trang chủ', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-27 15:33:57', '2018-03-27 15:33:57', '', 11, 'http://localhost/Labwp/lab1/2018/03/27/11-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-03-27 15:33:58', '2018-03-27 15:33:58', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2018-03-27 15:33:58', '2018-03-27 15:33:58', '', 0, 'http://localhost/Labwp/lab1/2018/03/27/trang-chu/', 0, 'nav_menu_item', '', 0),
(19, 1, '2018-03-27 15:33:59', '2018-03-27 15:33:59', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2018-03-27 15:33:59', '2018-03-27 15:33:59', '', 0, 'http://localhost/Labwp/lab1/2018/03/27/19/', 1, 'nav_menu_item', '', 0),
(20, 1, '2018-03-27 15:33:59', '2018-03-27 15:33:59', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2018-03-27 15:33:59', '2018-03-27 15:33:59', '', 0, 'http://localhost/Labwp/lab1/2018/03/27/20/', 2, 'nav_menu_item', '', 0),
(21, 1, '2018-03-27 15:34:00', '2018-03-27 15:34:00', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2018-03-27 15:34:00', '2018-03-27 15:34:00', '', 0, 'http://localhost/Labwp/lab1/2018/03/27/21/', 3, 'nav_menu_item', '', 0),
(22, 1, '2018-03-27 15:34:02', '2018-03-27 15:34:02', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2018-03-27 15:34:02', '2018-03-27 15:34:02', '', 0, 'http://localhost/Labwp/lab1/2018/03/27/yelp/', 0, 'nav_menu_item', '', 0),
(23, 1, '2018-03-27 15:34:03', '2018-03-27 15:34:03', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2018-03-27 15:34:03', '2018-03-27 15:34:03', '', 0, 'http://localhost/Labwp/lab1/2018/03/27/facebook/', 1, 'nav_menu_item', '', 0),
(24, 1, '2018-03-27 15:34:04', '2018-03-27 15:34:04', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2018-03-27 15:34:04', '2018-03-27 15:34:04', '', 0, 'http://localhost/Labwp/lab1/2018/03/27/twitter/', 2, 'nav_menu_item', '', 0),
(25, 1, '2018-03-27 15:34:05', '2018-03-27 15:34:05', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2018-03-27 15:34:05', '2018-03-27 15:34:05', '', 0, 'http://localhost/Labwp/lab1/2018/03/27/instagram/', 3, 'nav_menu_item', '', 0),
(26, 1, '2018-03-27 15:34:05', '2018-03-27 15:34:05', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2018-03-27 15:34:05', '2018-03-27 15:34:05', '', 0, 'http://localhost/Labwp/lab1/2018/03/27/email/', 4, 'nav_menu_item', '', 0),
(27, 1, '2018-03-27 15:39:03', '2018-03-27 15:39:03', '', 'astronauta', '', 'inherit', 'open', 'closed', '', 'astronauta', '', '', '2018-03-27 15:39:03', '2018-03-27 15:39:03', '', 0, 'http://localhost/Labwp/lab1/wp-content/uploads/2018/03/astronauta.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-03-27 15:39:12', '2018-03-27 15:39:12', 'http://localhost/Labwp/lab1/wp-content/uploads/2018/03/cropped-astronauta.jpg', 'cropped-astronauta.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-astronauta-jpg', '', '', '2018-03-27 15:39:12', '2018-03-27 15:39:12', '', 0, 'http://localhost/Labwp/lab1/wp-content/uploads/2018/03/cropped-astronauta.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2018-03-27 15:40:07', '2018-03-27 15:40:07', '{\n    "blogdescription": {\n        "value": "M\\u1ed9t trang web m\\u1edbi s\\u1eed d\\u1ee5ng WordPress c\\u1ee7a Bathepro",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-27 15:40:07"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ed8ba4cb-c698-4515-9d09-bd537813c28b', '', '', '2018-03-27 15:40:07', '2018-03-27 15:40:07', '', 0, 'http://localhost/Labwp/lab1/2018/03/27/ed8ba4cb-c698-4515-9d09-bd537813c28b/', 0, 'customize_changeset', '', 0),
(30, 1, '2018-03-27 15:57:11', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-27 15:57:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/Labwp/lab1/?p=30', 0, 'post', '', 0),
(31, 1, '2018-03-28 17:31:22', '2018-03-28 17:31:22', 'Nội dung bài viết first', 'Bài viết wp first', '', 'publish', 'open', 'open', '', 'bai-viet-wp-first', '', '', '2018-03-28 17:32:18', '2018-03-28 17:32:18', '', 0, 'http://localhost/Labwp/lab1/?p=31', 0, 'post', '', 0),
(32, 1, '2018-03-27 15:58:03', '2018-03-27 15:58:03', 'Nội dung bài viết first', 'Bài viết wp first', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-27 15:58:03', '2018-03-27 15:58:03', '', 31, 'http://localhost/Labwp/lab1/2018/03/27/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-03-28 17:32:31', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-28 17:32:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/Labwp/lab1/?p=33', 0, 'post', '', 0),
(34, 1, '2018-03-28 17:34:01', '2018-03-28 17:34:01', '', 'Stars404', '', 'inherit', 'open', 'closed', '', 'stars404', '', '', '2018-03-28 17:34:01', '2018-03-28 17:34:01', '', 0, 'http://localhost/Labwp/lab1/wp-content/uploads/2018/03/Stars404.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2018-03-28 17:34:08', '2018-03-28 17:34:08', '', 'Stars404', '', 'inherit', 'open', 'closed', '', 'stars404-2', '', '', '2018-03-28 17:34:08', '2018-03-28 17:34:08', '', 0, 'http://localhost/Labwp/lab1/wp-content/uploads/2018/03/Stars404-1.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2018-03-28 17:34:19', '2018-03-28 17:34:19', '', 'astronauta', '', 'inherit', 'open', 'closed', '', 'astronauta-2', '', '', '2018-03-28 17:34:19', '2018-03-28 17:34:19', '', 0, 'http://localhost/Labwp/lab1/wp-content/uploads/2018/03/astronauta-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-03-28 17:34:29', '2018-03-28 17:34:29', '', 'astronauta', '', 'inherit', 'open', 'closed', '', 'astronauta-3', '', '', '2018-03-28 17:34:29', '2018-03-28 17:34:29', '', 0, 'http://localhost/Labwp/lab1/wp-content/uploads/2018/03/astronauta-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2018-03-29 00:32:03', '2018-03-29 00:32:03', 'yes, i do', 'Trang of Bathepro', '', 'publish', 'closed', 'closed', '', 'trang-of-bathepro', '', '', '2018-03-29 00:32:03', '2018-03-29 00:32:03', '', 0, 'http://localhost/Labwp/lab1/?page_id=38', 0, 'page', '', 0),
(39, 1, '2018-03-28 17:43:52', '2018-03-28 17:43:52', 'yes, i do', 'Trang of Bathepro', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-03-28 17:43:52', '2018-03-28 17:43:52', '', 38, 'http://localhost/Labwp/lab1/2018/03/28/38-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'Menu trên cùng', 'menu-tren-cung', 0),
(3, 'Menu mạng xã hội', 'menu-mang-xa-hoi', 0),
(4, 'post-format-aside', 'post-format-aside', 0),
(5, 'post-format-image', 'post-format-image', 0),
(7, 'b', 'b', 0),
(8, 'v', 'v', 0),
(9, 'c', 'c', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 3, 0),
(23, 3, 0),
(24, 3, 0),
(25, 3, 0),
(26, 3, 0),
(31, 1, 0),
(31, 7, 0),
(31, 8, 0),
(31, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'post_format', '', 0, 0),
(5, 5, 'post_format', '', 0, 0),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'bathepc'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:"8f889b19c30e7b98eb3ffcb224f7acfc62a7b541d17a461c3c99f67ac58ac9e5";a:4:{s:10:"expiration";i:1523374341;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:5:"login";i:1522164741;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1522283584'),
(21, 1, 'wp_media_library_mode', 'grid');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'bathepc', '$P$B5wMiFsQlU8QDaf8US5LtRwwfit1Ba1', 'bathepc', 'bathepc@gmail.com', '', '2018-03-27 15:31:29', '', 0, 'bathepc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
