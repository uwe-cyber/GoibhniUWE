-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 172.18.0.14
-- Generation Time: Jun 07, 2022 at 09:17 AM
-- Server version: 8.0.29
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE `joomla_db`;
USE `joomla_db`;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joomla_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_action_logs`
--

CREATE TABLE `xd5bf_action_logs` (
  `id` int UNSIGNED NOT NULL,
  `message_language_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL,
  `extension` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `ip_address` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_action_logs`
--

INSERT INTO `xd5bf_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-06-01 18:12:41', 'com_users', 551, 0, 'COM_ACTIONLOGS_DISABLED'),
(2, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-06-07 09:14:05', 'com_users', 551, 0, 'COM_ACTIONLOGS_DISABLED'),
(3, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TAG\",\"id\":2,\"title\":\"Millions\",\"itemlink\":\"index.php?option=com_tags&task=tag.edit&id=2\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_tags.tag', 551, 2, 'COM_ACTIONLOGS_DISABLED'),
(4, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TAG\",\"id\":3,\"title\":\"Worldwide\",\"itemlink\":\"index.php?option=com_tags&task=tag.edit&id=3\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_tags.tag', 551, 3, 'COM_ACTIONLOGS_DISABLED'),
(5, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TAG\",\"id\":4,\"title\":\"Love\",\"itemlink\":\"index.php?option=com_tags&task=tag.edit&id=4\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_tags.tag', 551, 4, 'COM_ACTIONLOGS_DISABLED'),
(6, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TAG\",\"id\":5,\"title\":\"Joomla 4\",\"itemlink\":\"index.php?option=com_tags&task=tag.edit&id=5\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_tags.tag', 551, 5, 'COM_ACTIONLOGS_DISABLED'),
(7, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":8,\"title\":\"Blog\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=8\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_categories.category', 551, 8, 'COM_ACTIONLOGS_DISABLED'),
(8, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":9,\"title\":\"Help\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=9\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_categories.category', 551, 9, 'COM_ACTIONLOGS_DISABLED'),
(9, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":10,\"title\":\"Joomla\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=10\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_categories.category', 551, 10, 'COM_ACTIONLOGS_DISABLED'),
(10, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":11,\"title\":\"Typography\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=11\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_categories.category', 551, 11, 'COM_ACTIONLOGS_DISABLED'),
(11, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"About\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_content.article', 551, 1, 'COM_ACTIONLOGS_DISABLED'),
(12, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"Working on Your Site\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_content.article', 551, 2, 'COM_ACTIONLOGS_DISABLED'),
(13, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":3,\"title\":\"Welcome to your blog\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_content.article', 551, 3, 'COM_ACTIONLOGS_DISABLED'),
(14, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":4,\"title\":\"About your home page\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_content.article', 551, 4, 'COM_ACTIONLOGS_DISABLED'),
(15, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":5,\"title\":\"Your Modules\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=5\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_content.article', 551, 5, 'COM_ACTIONLOGS_DISABLED'),
(16, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":6,\"title\":\"Your Template\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=6\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_content.article', 551, 6, 'COM_ACTIONLOGS_DISABLED'),
(17, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":7,\"title\":\"Millions\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=7\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_content.article', 551, 7, 'COM_ACTIONLOGS_DISABLED'),
(18, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":8,\"title\":\"Love\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=8\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_content.article', 551, 8, 'COM_ACTIONLOGS_DISABLED'),
(19, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":9,\"title\":\"Joomla\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=9\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_content.article', 551, 9, 'COM_ACTIONLOGS_DISABLED'),
(20, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":10,\"title\":\"New feature: Workflows\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=10\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_content.article', 551, 10, 'COM_ACTIONLOGS_DISABLED'),
(21, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":11,\"title\":\"Typography\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=11\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:21', 'com_content.article', 551, 11, 'COM_ACTIONLOGS_DISABLED'),
(22, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"Blog\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 102, 'COM_ACTIONLOGS_DISABLED'),
(23, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"Help\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 103, 'COM_ACTIONLOGS_DISABLED'),
(24, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":104,\"title\":\"Login\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=104\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 104, 'COM_ACTIONLOGS_DISABLED'),
(25, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":105,\"title\":\"Logout\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=105\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 105, 'COM_ACTIONLOGS_DISABLED'),
(26, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":106,\"title\":\"Sample Layouts\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=106\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 106, 'COM_ACTIONLOGS_DISABLED'),
(27, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"Typography\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 107, 'COM_ACTIONLOGS_DISABLED'),
(28, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"Create a Post\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 108, 'COM_ACTIONLOGS_DISABLED'),
(29, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":109,\"title\":\"Working on Your Site\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=109\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 109, 'COM_ACTIONLOGS_DISABLED'),
(30, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":110,\"title\":\"Site Administrator\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=110\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 110, 'COM_ACTIONLOGS_DISABLED'),
(31, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":111,\"title\":\"Change Password\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=111\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 111, 'COM_ACTIONLOGS_DISABLED'),
(32, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":112,\"title\":\"Log out\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=112\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 112, 'COM_ACTIONLOGS_DISABLED'),
(33, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":113,\"title\":\"Login\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=113\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 113, 'COM_ACTIONLOGS_DISABLED'),
(34, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":114,\"title\":\"Logout\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=114\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 114, 'COM_ACTIONLOGS_DISABLED'),
(35, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":115,\"title\":\"Search\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=115\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 115, 'COM_ACTIONLOGS_DISABLED'),
(36, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":116,\"title\":\"Site Settings\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=116\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 116, 'COM_ACTIONLOGS_DISABLED'),
(37, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":117,\"title\":\"Template Settings\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=117\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 117, 'COM_ACTIONLOGS_DISABLED'),
(38, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":118,\"title\":\"Blog\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=118\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 118, 'COM_ACTIONLOGS_DISABLED'),
(39, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":119,\"title\":\"Category List\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=119\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 119, 'COM_ACTIONLOGS_DISABLED'),
(40, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":120,\"title\":\"Articles\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=120\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 120, 'COM_ACTIONLOGS_DISABLED'),
(41, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":121,\"title\":\"About your home page\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=121\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 121, 'COM_ACTIONLOGS_DISABLED'),
(42, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":122,\"title\":\"New feature: Workflows\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=122\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 122, 'COM_ACTIONLOGS_DISABLED'),
(43, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":123,\"title\":\"Millions\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=123\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 123, 'COM_ACTIONLOGS_DISABLED'),
(44, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":124,\"title\":\"Love\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=124\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 124, 'COM_ACTIONLOGS_DISABLED'),
(45, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":125,\"title\":\"Joomla\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=125\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:30', 'com_menus.item', 551, 125, 'COM_ACTIONLOGS_DISABLED'),
(46, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":109,\"title\":\"Main Menu Blog\",\"extension_name\":\"Main Menu Blog\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=109\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:32', 'com_modules.module', 551, 109, 'COM_ACTIONLOGS_DISABLED'),
(47, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"Special Menu\",\"extension_name\":\"Special Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:32', 'com_modules.module', 551, 110, 'COM_ACTIONLOGS_DISABLED'),
(48, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"Syndication\",\"extension_name\":\"Syndication\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:32', 'com_modules.module', 551, 111, 'COM_ACTIONLOGS_DISABLED'),
(49, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":112,\"title\":\"Archived Articles\",\"extension_name\":\"Archived Articles\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=112\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:32', 'com_modules.module', 551, 112, 'COM_ACTIONLOGS_DISABLED'),
(50, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":113,\"title\":\"Latest Posts\",\"extension_name\":\"Latest Posts\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=113\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:32', 'com_modules.module', 551, 113, 'COM_ACTIONLOGS_DISABLED'),
(51, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":114,\"title\":\"Older Posts\",\"extension_name\":\"Older Posts\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=114\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:32', 'com_modules.module', 551, 114, 'COM_ACTIONLOGS_DISABLED'),
(52, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":115,\"title\":\"Bottom Menu\",\"extension_name\":\"Bottom Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=115\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:32', 'com_modules.module', 551, 115, 'COM_ACTIONLOGS_DISABLED'),
(53, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":116,\"title\":\"Search\",\"extension_name\":\"Search\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=116\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:32', 'com_modules.module', 551, 116, 'COM_ACTIONLOGS_DISABLED'),
(54, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":117,\"title\":\"Image\",\"extension_name\":\"Image\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=117\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:32', 'com_modules.module', 551, 117, 'COM_ACTIONLOGS_DISABLED'),
(55, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":118,\"title\":\"Popular Tags\",\"extension_name\":\"Popular Tags\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=118\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:32', 'com_modules.module', 551, 118, 'COM_ACTIONLOGS_DISABLED'),
(56, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"Similar Items\",\"extension_name\":\"Similar Items\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:32', 'com_modules.module', 551, 119, 'COM_ACTIONLOGS_DISABLED'),
(57, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":120,\"title\":\"Site Information\",\"extension_name\":\"Site Information\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=120\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:32', 'com_modules.module', 551, 120, 'COM_ACTIONLOGS_DISABLED'),
(58, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"extension_name\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:14:32', 'com_modules.module', 551, 16, 'COM_ACTIONLOGS_DISABLED'),
(59, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":552,\"title\":\"mysql_root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=552\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:15:41', 'com_users', 551, 552, 'COM_ACTIONLOGS_DISABLED'),
(60, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":552,\"title\":\"Joe Bloggs\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=552\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:16:18', 'com_users', 551, 552, 'COM_ACTIONLOGS_DISABLED'),
(61, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":553,\"title\":\"mysql_root\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=553\",\"userid\":551,\"username\":\"Count\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=551\"}', '2022-06-07 09:16:51', 'com_users', 551, 553, 'COM_ACTIONLOGS_DISABLED');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_action_logs_extensions`
--

CREATE TABLE `xd5bf_action_logs_extensions` (
  `id` int UNSIGNED NOT NULL,
  `extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_action_logs_extensions`
--

INSERT INTO `xd5bf_action_logs_extensions` (`id`, `extension`) VALUES
(1, 'com_banners'),
(2, 'com_cache'),
(3, 'com_categories'),
(4, 'com_config'),
(5, 'com_contact'),
(6, 'com_content'),
(7, 'com_installer'),
(8, 'com_media'),
(9, 'com_menus'),
(10, 'com_messages'),
(11, 'com_modules'),
(12, 'com_newsfeeds'),
(13, 'com_plugins'),
(14, 'com_redirect'),
(15, 'com_tags'),
(16, 'com_templates'),
(17, 'com_users'),
(18, 'com_checkin'),
(19, 'com_scheduler');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_action_logs_users`
--

CREATE TABLE `xd5bf_action_logs_users` (
  `user_id` int UNSIGNED NOT NULL,
  `notify` tinyint UNSIGNED NOT NULL,
  `extensions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_action_log_config`
--

CREATE TABLE `xd5bf_action_log_config` (
  `id` int UNSIGNED NOT NULL,
  `type_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_action_log_config`
--

INSERT INTO `xd5bf_action_log_config` (`id`, `type_title`, `type_alias`, `id_holder`, `title_holder`, `table_name`, `text_prefix`) VALUES
(1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA'),
(4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA'),
(5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA'),
(7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA'),
(8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA'),
(9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA'),
(10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA'),
(11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA'),
(12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA'),
(13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA'),
(14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA'),
(16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA'),
(17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA'),
(18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA'),
(19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(20, 'task', 'com_scheduler.task', 'id', 'title', '#__scheduler_tasks', 'PLG_ACTIONLOG_JOOMLA');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_assets`
--

CREATE TABLE `xd5bf_assets` (
  `id` int UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_assets`
--

INSERT INTO `xd5bf_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 281, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.api\":{\"8\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 116, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.execute.transition\":{\"6\":1,\"5\":1}}'),
(9, 1, 117, 118, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 119, 120, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 121, 122, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 123, 124, 1, 'com_login', 'com_login', '{}'),
(14, 1, 125, 126, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 127, 128, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 129, 138, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 139, 140, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 141, 238, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 239, 242, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 243, 244, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 245, 246, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(23, 1, 247, 248, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 253, 256, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 257, 258, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 240, 241, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 254, 255, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 259, 260, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 261, 262, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 263, 264, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 265, 266, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 267, 268, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 269, 270, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 142, 143, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 144, 145, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 146, 147, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 148, 149, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 150, 151, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 152, 153, 2, 'com_modules.module.9', 'Notifications', '{}'),
(45, 18, 154, 155, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 156, 157, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(48, 18, 162, 163, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 164, 165, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 166, 167, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 168, 169, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 170, 171, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 174, 175, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 130, 131, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 178, 179, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 8, 20, 37, 2, 'com_content.workflow.1', 'COM_WORKFLOW_BASIC_WORKFLOW', '{}'),
(57, 56, 21, 22, 3, 'com_content.stage.1', 'COM_WORKFLOW_BASIC_STAGE', '{}'),
(58, 56, 23, 24, 3, 'com_content.transition.1', 'Unpublish', '{}'),
(59, 56, 25, 26, 3, 'com_content.transition.2', 'Publish', '{}'),
(60, 56, 27, 28, 3, 'com_content.transition.3', 'Trash', '{}'),
(61, 56, 29, 30, 3, 'com_content.transition.4', 'Archive', '{}'),
(62, 56, 31, 32, 3, 'com_content.transition.5', 'Feature', '{}'),
(63, 56, 33, 34, 3, 'com_content.transition.6', 'Unfeature', '{}'),
(64, 56, 35, 36, 3, 'com_content.transition.7', 'Publish & Feature', '{}'),
(65, 1, 249, 250, 1, 'com_privacy', 'com_privacy', '{}'),
(66, 1, 251, 252, 1, 'com_actionlogs', 'com_actionlogs', '{}'),
(67, 18, 158, 159, 2, 'com_modules.module.88', 'Latest Actions', '{}'),
(68, 18, 160, 161, 2, 'com_modules.module.89', 'Privacy Dashboard', '{}'),
(70, 18, 172, 173, 2, 'com_modules.module.103', 'Site', '{}'),
(71, 18, 176, 177, 2, 'com_modules.module.104', 'System', '{}'),
(72, 18, 180, 181, 2, 'com_modules.module.91', 'System Dashboard', '{}'),
(73, 18, 182, 183, 2, 'com_modules.module.92', 'Content Dashboard', '{}'),
(74, 18, 184, 185, 2, 'com_modules.module.93', 'Menus Dashboard', '{}'),
(75, 18, 186, 187, 2, 'com_modules.module.94', 'Components Dashboard', '{}'),
(76, 18, 188, 189, 2, 'com_modules.module.95', 'Users Dashboard', '{}'),
(77, 18, 190, 191, 2, 'com_modules.module.99', 'Frontend Link', '{}'),
(78, 18, 192, 193, 2, 'com_modules.module.100', 'Messages', '{}'),
(79, 18, 194, 195, 2, 'com_modules.module.101', 'Post Install Messages', '{}'),
(80, 18, 196, 197, 2, 'com_modules.module.102', 'User Status', '{}'),
(82, 18, 198, 199, 2, 'com_modules.module.105', '3rd Party', '{}'),
(83, 18, 200, 201, 2, 'com_modules.module.106', 'Help Dashboard', '{}'),
(84, 18, 202, 203, 2, 'com_modules.module.107', 'Privacy Requests', '{}'),
(85, 18, 204, 205, 2, 'com_modules.module.108', 'Privacy Status', '{}'),
(86, 18, 206, 207, 2, 'com_modules.module.96', 'Popular Articles', '{}'),
(87, 18, 208, 209, 2, 'com_modules.module.97', 'Recently Added Articles', '{}'),
(88, 18, 210, 211, 2, 'com_modules.module.98', 'Logged-in Users', '{}'),
(89, 18, 212, 213, 2, 'com_modules.module.90', 'Login Support', '{}'),
(90, 1, 271, 272, 1, 'com_scheduler', 'com_scheduler', '{}'),
(91, 8, 38, 41, 2, 'com_content.fieldgroup.1', 'The Author', '{}'),
(92, 91, 39, 40, 3, 'com_content.field.1', 'About the Author', '{}'),
(93, 8, 42, 85, 2, 'com_content.workflow.2', 'Blog Workflow', '{}'),
(94, 93, 43, 44, 3, 'com_content.stage.2', 'Idea', '{}'),
(95, 93, 45, 46, 3, 'com_content.stage.3', 'Copywriting', '{}'),
(96, 93, 47, 48, 3, 'com_content.stage.4', 'Graphic Design', '{}'),
(97, 93, 49, 50, 3, 'com_content.stage.5', 'Fact Check', '{}'),
(98, 93, 51, 52, 3, 'com_content.stage.6', 'Content Review', '{}'),
(99, 93, 53, 54, 3, 'com_content.stage.7', 'Published', '{}'),
(100, 93, 55, 56, 3, 'com_content.stage.8', 'On Hold', '{}'),
(101, 93, 57, 58, 3, 'com_content.stage.9', 'Trashed', '{}'),
(102, 93, 59, 60, 3, 'com_content.stage.10', 'Unpublished', '{}'),
(103, 93, 61, 62, 3, 'com_content.transition.8', 'Write Article', '{}'),
(104, 93, 63, 64, 3, 'com_content.transition.9', 'Graphic Design', '{}'),
(105, 93, 65, 66, 3, 'com_content.transition.10', 'Check Facts', '{}'),
(106, 93, 67, 68, 3, 'com_content.transition.11', 'Review Content', '{}'),
(107, 93, 69, 70, 3, 'com_content.transition.12', 'Edit', '{}'),
(108, 93, 71, 72, 3, 'com_content.transition.13', 'Publish and Feature', '{}'),
(109, 93, 73, 74, 3, 'com_content.transition.14', 'Set on Hold', '{}'),
(110, 93, 75, 76, 3, 'com_content.transition.15', 'Trash', '{}'),
(111, 93, 77, 78, 3, 'com_content.transition.16', 'Resume Idea', '{}'),
(112, 93, 79, 80, 3, 'com_content.transition.17', 'Unpublish', '{}'),
(113, 93, 81, 82, 3, 'com_content.transition.18', 'Trash', '{}'),
(114, 93, 83, 84, 3, 'com_content.transition.19', 'Publish again', '{}'),
(115, 8, 86, 95, 2, 'com_content.category.8', 'Blog', '{}'),
(116, 8, 96, 103, 2, 'com_content.category.9', 'Help', '{}'),
(117, 8, 104, 111, 2, 'com_content.category.10', 'Joomla', '{}'),
(118, 8, 112, 115, 2, 'com_content.category.11', 'Typography', '{}'),
(119, 116, 97, 98, 3, 'com_content.article.1', 'About', '{}'),
(120, 116, 99, 100, 3, 'com_content.article.2', 'Working on Your Site', '{}'),
(121, 115, 87, 88, 3, 'com_content.article.3', 'Welcome to your blog', '{}'),
(122, 1, 273, 274, 1, '#__ucm_content.1', '#__ucm_content.1', '{}'),
(123, 115, 89, 90, 3, 'com_content.article.4', 'About your home page', '{}'),
(124, 1, 275, 276, 1, '#__ucm_content.2', '#__ucm_content.2', '{}'),
(125, 115, 91, 92, 3, 'com_content.article.5', 'Your Modules', '{}'),
(126, 1, 277, 278, 1, '#__ucm_content.3', '#__ucm_content.3', '{}'),
(127, 115, 93, 94, 3, 'com_content.article.6', 'Your Template', '{}'),
(128, 1, 279, 280, 1, '#__ucm_content.4', '#__ucm_content.4', '{}'),
(129, 117, 105, 106, 3, 'com_content.article.7', 'Millions', '{}'),
(130, 117, 107, 108, 3, 'com_content.article.8', 'Love', '{}'),
(131, 117, 109, 110, 3, 'com_content.article.9', 'Joomla', '{}'),
(132, 116, 101, 102, 3, 'com_content.article.10', 'New feature: Workflows', '{}'),
(133, 118, 113, 114, 3, 'com_content.article.11', 'Typography', '{}'),
(134, 16, 132, 133, 2, 'com_menus.menu.2', 'Main Menu Blog', '{}'),
(135, 16, 134, 135, 2, 'com_menus.menu.3', 'Special Menu', '{}'),
(136, 16, 136, 137, 2, 'com_menus.menu.4', 'Bottom Menu', '{}'),
(137, 18, 214, 215, 2, 'com_modules.module.109', 'Main Menu Blog', '{}'),
(138, 18, 216, 217, 2, 'com_modules.module.110', 'Special Menu', '{}'),
(139, 18, 218, 219, 2, 'com_modules.module.111', 'Syndication', '{}'),
(140, 18, 220, 221, 2, 'com_modules.module.112', 'Archived Articles', '{}'),
(141, 18, 222, 223, 2, 'com_modules.module.113', 'Latest Posts', '{}'),
(142, 18, 224, 225, 2, 'com_modules.module.114', 'Older Posts', '{}'),
(143, 18, 226, 227, 2, 'com_modules.module.115', 'Bottom Menu', '{}'),
(144, 18, 228, 229, 2, 'com_modules.module.116', 'Search', '{}'),
(145, 18, 230, 231, 2, 'com_modules.module.117', 'Image', '{}'),
(146, 18, 232, 233, 2, 'com_modules.module.118', 'Popular Tags', '{}'),
(147, 18, 234, 235, 2, 'com_modules.module.119', 'Similar Items', '{}'),
(148, 18, 236, 237, 2, 'com_modules.module.120', 'Site Information', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_associations`
--

CREATE TABLE `xd5bf_associations` (
  `id` int NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_banners`
--

CREATE TABLE `xd5bf_banners` (
  `id` int NOT NULL,
  `cid` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int NOT NULL DEFAULT '0',
  `impmade` int NOT NULL DEFAULT '0',
  `clicks` int NOT NULL DEFAULT '0',
  `clickurl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint NOT NULL DEFAULT '0',
  `catid` int UNSIGNED NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint NOT NULL DEFAULT '-1',
  `track_clicks` tinyint NOT NULL DEFAULT '-1',
  `track_impressions` tinyint NOT NULL DEFAULT '-1',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `version` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_banner_clients`
--

CREATE TABLE `xd5bf_banner_clients` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `own_prefix` tinyint NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint NOT NULL DEFAULT '-1',
  `track_clicks` tinyint NOT NULL DEFAULT '-1',
  `track_impressions` tinyint NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_banner_tracks`
--

CREATE TABLE `xd5bf_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int UNSIGNED NOT NULL,
  `banner_id` int UNSIGNED NOT NULL,
  `count` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_categories`
--

CREATE TABLE `xd5bf_categories` (
  `id` int NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `metadesc` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `modified_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `hits` int UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_categories`
--

INSERT INTO `xd5bf_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 19, 0, '', 'system', 'ROOT', 'root', '', '', 1, NULL, NULL, 1, '{}', '', '', '{}', 551, '2022-06-01 18:11:57', 551, '2022-06-01 18:11:57', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"workflow_id\":\"use_default\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 551, '2022-06-01 18:11:57', 551, '2022-06-01 18:11:57', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 551, '2022-06-01 18:11:57', 551, '2022-06-01 18:11:57', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 551, '2022-06-01 18:11:57', 551, '2022-06-01 18:11:57', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 551, '2022-06-01 18:11:57', 551, '2022-06-01 18:11:57', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 551, '2022-06-01 18:11:57', 551, '2022-06-01 18:11:57', 0, '*', 1),
(8, 115, 1, 11, 12, 1, 'blog', 'com_content', 'Blog', 'blog', '', '', 1, NULL, NULL, 1, '{\"workflow_id\":\"2\"}', '', '', '', 551, '2022-06-07 09:14:21', 551, '2022-06-07 09:14:21', 0, '*', 1),
(9, 116, 1, 13, 14, 1, 'help', 'com_content', 'Help', 'help', '', '', 1, NULL, NULL, 1, '{}', '', '', '', 551, '2022-06-07 09:14:21', 551, '2022-06-07 09:14:21', 0, '*', 1),
(10, 117, 1, 15, 16, 1, 'joomla', 'com_content', 'Joomla', 'joomla', '', '', 1, NULL, NULL, 1, '{}', '', '', '', 551, '2022-06-07 09:14:21', 551, '2022-06-07 09:14:21', 0, '*', 1),
(11, 118, 1, 17, 18, 1, 'typography', 'com_content', 'Typography', 'typography', '', '', 1, NULL, NULL, 1, '{}', '', '', '', 551, '2022-06-07 09:14:21', 551, '2022-06-07 09:14:21', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_contact_details`
--

CREATE TABLE `xd5bf_contact_details` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `catid` int NOT NULL DEFAULT '0',
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `metadesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `version` int UNSIGNED NOT NULL DEFAULT '1',
  `hits` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_content`
--

CREATE TABLE `xd5bf_content` (
  `id` int UNSIGNED NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `catid` int UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int NOT NULL DEFAULT '0',
  `metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `metadesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `hits` int UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_content`
--

INSERT INTO `xd5bf_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `note`) VALUES
(1, 119, 'About', 'about', '<p>This tells you a bit about this blog and the person who writes it. </p><p>When you are logged in you will be able to edit this page by selecting the edit icon.</p>', '', 1, 9, '2022-06-07 09:14:21', 551, 'Joomla', '2022-06-07 09:14:21', 551, NULL, NULL, '2022-06-07 09:14:21', NULL, '', '{}', '{}', 1, 2, '', '', 1, 0, '{}', 0, '*', ''),
(2, 120, 'Working on Your Site', 'working-on-your-site', '<p>Here are some basic tips for working on your site.</p><ul><li>Joomla! has a \'front end\' that you are looking at now and an \'administrator\' or \'back end\' which is where you do the more advanced work of creating your site such as setting up the menus and deciding what modules to show. You need to login to the administrator separately using the same user name and password that you used to login to this part of the site.</li><li>One of the first things you will probably want to do is change the site title and tag line and to add a logo. To do this select the Template Settings link in the menu which is visible if you log in. To change your site description, browser title, default email and other items, select Site Settings. More advanced configuration options are available in the administrator.</li><li>To totally change the look of your site you will probably want to install a new template. Go to System, select Install - Extensions from the list and the extension installer will open. There are many free and commercial templates available for Joomla.</li><li>As you have already seen, you can control who can see different parts of you site. When you work with modules and articles, setting the Access level to Registered will mean that only logged in users can see them.</li><li>When you create a new article or other kind of content you also can save it as Published or Unpublished. If it is Unpublished site visitors will not be able to see it but you will.</li><li>You can learn much more about working with Joomla from the <a href=\'https://docs.joomla.org/\'>Joomla documentation site</a> and get help from other users at the <a href=\'https://forum.joomla.org/\'>Joomla forums</a>. In the administrator there are help buttons on every page that provide detailed information about the functions on that page.</li></ul>', '', 1, 9, '2022-06-07 09:14:21', 551, 'Joomla', '2022-06-07 09:14:21', 551, NULL, NULL, '2022-06-07 09:14:21', NULL, '', '{}', '{}', 1, 1, '', '', 3, 0, '{}', 0, '*', ''),
(3, 121, 'Welcome to your blog', 'welcome-to-your-blog', '<p>This is a sample blog posting.</p><p>If you log in to the site (the Administrator Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.</p><p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.</p><p>Go ahead, you can\'t break it.</p>', '', 1, 8, '2022-06-07 09:14:21', 551, 'Joomla', '2022-06-07 09:14:21', 551, NULL, NULL, '2022-06-07 09:14:21', NULL, '{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa1-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa1-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"Amazing Andromeda Galaxy\",\"image_intro_alt_empty\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa1-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa1-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}', '{}', '{}', 1, 3, '', '', 1, 0, '{}', 1, '*', ''),
(4, 123, 'About your home page', 'about-your-home-page', '<p>Your home page is set to display the four most recent articles from the blog category in a column. Then there are links to the next two oldest articles. You can change those numbers by editing the content options settings in the blog tab in your site administrator. There is a link to your site administrator if you are logged in.</p><p>If you want to have your blog post broken into two parts, an introduction and then a full length separate page, use the Read More span to insert a break.</p>', '<p>On the full page you will see both the introductory content and the rest of the article. You can change the settings to hide the introduction if you want.</p>', 1, 8, '2022-06-07 09:14:21', 551, 'Joomla', '2022-06-07 09:14:21', 551, NULL, NULL, '2022-06-07 09:14:21', NULL, '{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa2-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa2-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa2-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa2-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}', '{}', '{}', 1, 2, '', '', 1, 0, '{}', 1, '*', ''),
(5, 125, 'Your Modules', 'your-modules', '<p>Your site has some commonly used modules already preconfigured. These include:</p><ul><li>Image (type: Custom), which holds the image beneath the menu. This is a Custom module that you can edit to change the image.</li><li>Popular Tags (type: Tags - Popular), which will appear if you use tagging on your articles. Enter a tag in the Tags field when editing.</li><li>Older Posts (type: Articles - Category), which lists out articles by categories.</li><li>Syndication (type: Syndication Feeds), which allows your readers to read your posts in a news reader.</li><li>Login Form (type: Login), which allows your users to access restricted areas of the website.</li></ul><p>Each of these modules has many options which you can experiment with in the Module Manager in your site Administrator. When you are logged in you can also select the edit icon in the top right corner which will take you to an edit screen for that module. Always be sure to save and close any module you edit.</p><p>Joomla! also includes many other modules you can incorporate in your site. As you develop your site you may want to add more modules that you can find at the <a href=https://extensions.joomla.org/>Joomla Extensions Directory.</a></p>', '', 1, 8, '2022-06-07 09:14:21', 551, 'Joomla', '2022-06-07 09:14:21', 551, NULL, NULL, '2022-06-07 09:14:21', NULL, '{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa3-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa3-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa3-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa3-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"Crab Nebula\",\"image_fulltext_alt_empty\":\"\",\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}', '{}', '{}', 1, 1, '', '', 1, 0, '{}', 1, '*', ''),
(6, 127, 'Your Template', 'your-template', '<p>Templates control the look and feel of your website.</p><p>This blog is installed with the Cassiopeia template.</p><p>You can edit the options by selecting the Working on Your Site, Template Settings link in the menu which is visible when you log in.</p><p>For example you can change the site background colour, highlights colour, site title, site description and title font used.</p><p>More options are available in the site administrator. You may also install a new template using the extension manager.</p>', '', 1, 8, '2022-06-07 09:14:21', 551, 'Joomla', '2022-06-07 09:14:21', 551, NULL, NULL, '2022-06-07 09:14:21', NULL, '{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa4-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa4-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}', '{}', '{}', 1, 0, '', '', 1, 0, '{}', 1, '*', ''),
(7, 129, 'Millions', 'millions', '<p><strong>Millions of Websites are built on Joomla!</strong></p><p>Learn more about beautiful blog presentation.</p>', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est</p>', 1, 10, '2022-06-07 09:14:21', 551, 'Joomla', '2022-06-07 09:14:21', 551, NULL, NULL, '2022-06-07 09:14:21', NULL, '{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa1-640.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa1-640.jpg?width=640&height=320\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\"}', '{}', '{}', 1, 2, '', '', 1, 0, '{}', 0, '*', ''),
(8, 130, 'Love', 'love', '<p><strong>We love Joomla to the moon and back!</strong></p><p>Thank you to all volunteers who have contributed!</p>', '<p>Uurnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.</p> ', 1, 10, '2022-06-07 09:14:21', 551, 'Joomla', '2022-06-07 09:14:21', 551, NULL, NULL, '2022-06-07 09:14:21', NULL, '{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa2-640.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa2-640.jpg?width=640&height=320\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\"}', '{}', '{}', 1, 1, '', '', 1, 0, '{}', 0, '*', ''),
(9, 131, 'Joomla', 'joomla', '<p><strong>We proudly present Joomla Version 4!</strong></p><p>Learn more about workflows in Joomla.</p>', '<p>Cupcake ipsum dolor. Sit amet cotton candy ice cream sesame snaps cake marshmallow powder. Ice cream chocolate cake marshmallow halvah bonbon. Dragée carrot cake danish candy muffin brownie. Candy sugar plum ice cream chupa chups macaroon tiramisu soufflé oat cake. Topping cheesecake lollipop gummi bears icing sweet roll donut liquorice. Pie jelly-o candy donut oat cake cotton candy. </p>', 1, 10, '2022-06-07 09:14:21', 551, 'Joomla', '2022-06-07 09:14:21', 551, NULL, NULL, '2022-06-07 09:14:21', NULL, '{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa3-640.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa3-640.jpg?width=640&height=320\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\"}', '{}', '{}', 1, 0, '', '', 1, 0, '{}', 0, '*', ''),
(10, 132, 'New feature: Workflows', 'new-feature-workflows', '<p>Workflows manage the stages your articles must go through until they are published.</p><p>The component to manage workflows is not enabled by default.</p><p>To see the workflow that we have provided with the sample data, you first need to enable this functionality.</p><ol><li>Access the administration area</li><li>From \'Content\' > \'Articles\' > \'Options\' > \'Integration\' tab set \'Enable workflow\' to \'Yes\'</li><li>Save changes</li></ol><p>Now when you access \'Content\' again you will see the section \'Workflows\'.</p><p>When you edit an article you will also see the new transitions for articles related to workflows.</p>', '', 1, 9, '2022-06-07 09:14:21', 551, 'Joomla', '2022-06-07 09:14:21', 551, NULL, NULL, '2022-06-07 09:14:21', NULL, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-end\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}', '{}', '{}', 1, 0, '', '', 1, 0, '{}', 0, '*', ''),
(11, 133, 'Typography', 'typography', '<h1>Colour Scheme</h1> <p> <span class=\"btn btn-secondary\">secondary</span>   <span class=\"btn btn-primary\">primary</span>   <span class=\"btn btn-info\">info</span>   <span class=\"btn btn-success\">success</span>   <span class=\"btn btn-warning\">warning</span>   <span class=\"btn btn-danger\">danger</span> </p> <p><span class=\"text text-secondary\">text-secondary</span>  <span class=\"text text-primary\">text-primary</span>  <span class=\"text text-info\">text-info</span>  <span class=\"text text-success\">text-success</span>  <span class=\"text text-warning\">text-warning</span>  <span class=\"text text-danger\">text-danger</span></p><h1>Typography (h1)</h1><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p><h2>Lorem Ipsum Dolor Sit Amet (h2)</h2><p><strong>Lorem ipsum dolor sit amet, consectetuer adipiscing elit </strong> (strong), sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p><h3>Lorem Ipsum Dolor Sit Amet (h3)</h3><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p><h4>Lorem Ipsum Dolor Sit Amet (h4)</h4><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p><h5>Lorem Ipsum Dolor Sit Amet (h5)</h5><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p> <p><a href=\"index.php\"> Lorem ipsum dolor (a)</a></p><h1>Lists</h1> <p>(ol)(li)</p> <ol> <li>Lorem ipsum dolor sit amet consectetur</li> <li>Lorem ipsum dolor sit amet consectetur</li> </ol> <p>(ul)(li)</p> <ul> <li>Lorem ipsum dolor sit amet consectetur</li> <li>Lorem ipsum dolor sit amet consectetur</li> </ul> <h1>Displays</h1><p class=\"display-1\">Lorem (display-1)</p><p class=\"display-2\">Lorem (display-2)</p><p class=\"display-3\">Lorem ipsum (display-3)</p><p class=\"display-4\">Lorem ipsum (display-4)</p><p class=\"lead\">Lorem ipsum arma virumque cano (lead)</p>', '', 1, 11, '2022-06-07 09:14:21', 551, 'Joomla', '2022-06-07 09:14:21', 551, NULL, NULL, '2022-06-07 09:14:21', NULL, '', '{}', '{}', 1, 0, '', '', 1, 0, '{}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_contentitem_tag_map`
--

CREATE TABLE `xd5bf_contentitem_tag_map` (
  `type_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

--
-- Dumping data for table `xd5bf_contentitem_tag_map`
--

INSERT INTO `xd5bf_contentitem_tag_map` (`type_alias`, `core_content_id`, `content_item_id`, `tag_id`, `tag_date`, `type_id`) VALUES
('com_content.article', 1, 3, 2, '2022-06-07 09:14:26', 1),
('com_content.article', 1, 3, 3, '2022-06-07 09:14:26', 1),
('com_content.article', 1, 3, 4, '2022-06-07 09:14:26', 1),
('com_content.article', 1, 3, 5, '2022-06-07 09:14:26', 1),
('com_content.article', 2, 4, 2, '2022-06-07 09:14:26', 1),
('com_content.article', 2, 4, 3, '2022-06-07 09:14:26', 1),
('com_content.article', 2, 4, 4, '2022-06-07 09:14:26', 1),
('com_content.article', 2, 4, 5, '2022-06-07 09:14:26', 1),
('com_content.article', 3, 5, 2, '2022-06-07 09:14:27', 1),
('com_content.article', 3, 5, 3, '2022-06-07 09:14:27', 1),
('com_content.article', 3, 5, 4, '2022-06-07 09:14:27', 1),
('com_content.article', 3, 5, 5, '2022-06-07 09:14:27', 1),
('com_content.article', 4, 6, 2, '2022-06-07 09:14:27', 1),
('com_content.article', 4, 6, 3, '2022-06-07 09:14:27', 1),
('com_content.article', 4, 6, 4, '2022-06-07 09:14:27', 1),
('com_content.article', 4, 6, 5, '2022-06-07 09:14:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_content_frontpage`
--

CREATE TABLE `xd5bf_content_frontpage` (
  `content_id` int NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `featured_up` datetime DEFAULT NULL,
  `featured_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_content_frontpage`
--

INSERT INTO `xd5bf_content_frontpage` (`content_id`, `ordering`, `featured_up`, `featured_down`) VALUES
(3, 4, NULL, NULL),
(4, 3, NULL, NULL),
(5, 2, NULL, NULL),
(6, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_content_rating`
--

CREATE TABLE `xd5bf_content_rating` (
  `content_id` int NOT NULL DEFAULT '0',
  `rating_sum` int UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_content_types`
--

CREATE TABLE `xd5bf_content_types` (
  `type_id` int UNSIGNED NOT NULL,
  `type_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_content_types`
--

INSERT INTO `xd5bf_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"ArticleTable\",\"prefix\":\"Joomla\\\\Component\\\\Content\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"ContactTable\",\"prefix\":\"Joomla\\\\Component\\\\Contact\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"NewsfeedTable\",\"prefix\":\"Joomla\\\\Component\\\\Newsfeeds\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerDate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', '', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"TagTable\",\"prefix\":\"Joomla\\\\Component\\\\Tags\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"BannerTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"ClientTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"NoteTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_extensions`
--

CREATE TABLE `xd5bf_extensions` (
  `extension_id` int NOT NULL,
  `package_id` int NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `changelogurl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `folder` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint NOT NULL,
  `enabled` tinyint NOT NULL DEFAULT '0',
  `access` int UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint NOT NULL DEFAULT '0' COMMENT 'Flag to indicate if the extension is protected. Protected extensions cannot be disabled.',
  `locked` tinyint NOT NULL DEFAULT '0' COMMENT 'Flag to indicate if the extension is locked. Locked extensions cannot be uninstalled.',
  `manifest_cache` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int DEFAULT '0',
  `state` int DEFAULT '0',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_extensions`
--

INSERT INTO `xd5bf_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(1, 0, 'com_wrapper', 'component', 'com_wrapper', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', NULL, NULL, 0, 0, NULL),
(2, 0, 'com_admin', 'component', 'com_admin', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(3, 0, 'com_banners', 'component', 'com_banners', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', NULL, NULL, 0, 0, NULL),
(4, 0, 'com_cache', 'component', 'com_cache', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(5, 0, 'com_categories', 'component', 'com_categories', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(6, 0, 'com_checkin', 'component', 'com_checkin', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(7, 0, 'com_contact', 'component', 'com_contact', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_ids\":1,\"custom_fields_enable\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(8, 0, 'com_cpanel', 'component', 'com_cpanel', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"Jun 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(9, 0, 'com_installer', 'component', 'com_installer', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', NULL, NULL, 0, 0, NULL),
(10, 0, 'com_languages', 'component', 'com_languages', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', NULL, NULL, 0, 0, NULL),
(11, 0, 'com_login', 'component', 'com_login', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(12, 0, 'com_media', 'component', 'com_media', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"restrict_uploads_extensions\":\"bmp,gif,jpg,jpeg,png,webp,ico,mp3,m4a,mp4a,ogg,mp4,mp4v,mpeg,mov,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,csv\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png,jpeg,webp\",\"audio_extensions\":\"mp3,m4a,mp4a,ogg\",\"video_extensions\":\"mp4,mp4v,mpeg,mov,webm\",\"doc_extensions\":\"odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,image\\/webp,audio\\/ogg,audio\\/mpeg,audio\\/mp4,video\\/mp4,video\\/webm,video\\/mpeg,video\\/quicktime,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\"}', '', NULL, NULL, 0, 0, NULL),
(13, 0, 'com_menus', 'component', 'com_menus', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menus\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(14, 0, 'com_messages', 'component', 'com_messages', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(15, 0, 'com_modules', 'component', 'com_modules', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"modules\"}', '', '', NULL, NULL, 0, 0, NULL),
(16, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"sef_ids\":1}', '', NULL, NULL, 0, 0, NULL),
(17, 0, 'com_plugins', 'component', 'com_plugins', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(18, 0, 'com_templates', 'component', 'com_templates', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png,webp\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass,json\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', NULL, NULL, 0, 0, NULL),
(19, 0, 'com_content', 'component', 'com_content', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":100,\"show_tags\":\"1\",\"record_hits\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":0,\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_configure_edit_options\":\"1\",\"show_permissions\":\"1\",\"show_associations_edit\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_category_heading_title_text\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":4,\"blog_class\":\"\",\"num_columns\":1,\"multi_column_order\":\"0\",\"num_links\":4,\"show_subcategory_content\":\"0\",\"link_intro_image\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"display_num\":\"10\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_ids\":1,\"custom_fields_enable\":\"1\",\"workflow_enabled\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(20, 0, 'com_config', 'component', 'com_config', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"config\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', NULL, NULL, 0, 0, NULL),
(21, 0, 'com_redirect', 'component', 'com_redirect', NULL, '', 1, 1, 0, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(22, 0, 'com_users', 'component', 'com_users', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"12\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(23, 0, 'com_finder', 'component', 'com_finder', NULL, '', 1, 1, 0, 0, 1, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(24, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"August 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.3\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(25, 0, 'com_tags', 'component', 'com_tags', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(26, 0, 'com_contenthistory', 'component', 'com_contenthistory', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', NULL, NULL, 0, 0, NULL),
(27, 0, 'com_ajax', 'component', 'com_ajax', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', NULL, NULL, 0, 0, NULL),
(28, 0, 'com_postinstall', 'component', 'com_postinstall', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(29, 0, 'com_fields', 'component', 'com_fields', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', NULL, NULL, 0, 0, NULL),
(30, 0, 'com_associations', 'component', 'com_associations', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(31, 0, 'com_privacy', 'component', 'com_privacy', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}', '', '', NULL, NULL, 0, 0, NULL),
(32, 0, 'com_actionlogs', 'component', 'com_actionlogs', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_scheduler\",\"com_tags\",\"com_templates\",\"com_users\"]}', '', NULL, NULL, 0, 0, NULL),
(33, 0, 'com_workflow', 'component', 'com_workflow', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_workflow\",\"type\":\"component\",\"creationDate\":\"June 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WORKFLOW_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(34, 0, 'com_mails', 'component', 'com_mails', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_mails\",\"type\":\"component\",\"creationDate\":\"January 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MAILS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(35, 0, 'com_scheduler', 'component', 'com_scheduler', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_scheduler\",\"type\":\"component\",\"creationDate\":\"July 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"COM_SCHEDULER_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(36, 0, 'lib_joomla', 'library', 'joomla', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"lib_joomla\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"2f5d972354fcb880247594f48980a0b1\"}', '', NULL, NULL, 0, 0, NULL),
(37, 0, 'lib_phpass', 'library', 'phpass', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"lib_phpass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"https:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', NULL, NULL, 0, 0, NULL),
(38, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', NULL, NULL, 0, 0, NULL),
(39, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(40, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', NULL, NULL, 0, 0, NULL),
(41, 0, 'mod_banners', 'module', 'mod_banners', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', NULL, NULL, 0, 0, NULL),
(42, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', NULL, NULL, 0, 0, NULL),
(43, 0, 'mod_custom', 'module', 'mod_custom', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', NULL, NULL, 0, 0, NULL),
(44, 0, 'mod_feed', 'module', 'mod_feed', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', NULL, NULL, 0, 0, NULL),
(45, 0, 'mod_footer', 'module', 'mod_footer', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', NULL, NULL, 0, 0, NULL),
(46, 0, 'mod_login', 'module', 'mod_login', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', NULL, NULL, 0, 0, NULL),
(47, 0, 'mod_menu', 'module', 'mod_menu', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', NULL, NULL, 0, 0, NULL),
(48, 0, 'mod_articles_news', 'module', 'mod_articles_news', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', NULL, NULL, 0, 0, NULL),
(49, 0, 'mod_random_image', 'module', 'mod_random_image', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', NULL, NULL, 0, 0, NULL),
(50, 0, 'mod_related_items', 'module', 'mod_related_items', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', NULL, NULL, 0, 0, NULL),
(51, 0, 'mod_stats', 'module', 'mod_stats', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', NULL, NULL, 0, 0, NULL),
(52, 0, 'mod_syndicate', 'module', 'mod_syndicate', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', NULL, NULL, 0, 0, NULL),
(53, 0, 'mod_users_latest', 'module', 'mod_users_latest', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(54, 0, 'mod_whosonline', 'module', 'mod_whosonline', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', NULL, NULL, 0, 0, NULL),
(55, 0, 'mod_wrapper', 'module', 'mod_wrapper', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', NULL, NULL, 0, 0, NULL),
(56, 0, 'mod_articles_category', 'module', 'mod_articles_category', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', NULL, NULL, 0, 0, NULL),
(57, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', NULL, NULL, 0, 0, NULL),
(58, 0, 'mod_languages', 'module', 'mod_languages', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', NULL, NULL, 0, 0, NULL),
(59, 0, 'mod_finder', 'module', 'mod_finder', NULL, '', 0, 1, 0, 0, 1, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', NULL, NULL, 0, 0, NULL),
(60, 0, 'mod_custom', 'module', 'mod_custom', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', NULL, NULL, 0, 0, NULL),
(61, 0, 'mod_feed', 'module', 'mod_feed', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', NULL, NULL, 0, 0, NULL),
(62, 0, 'mod_latest', 'module', 'mod_latest', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(63, 0, 'mod_logged', 'module', 'mod_logged', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', NULL, NULL, 0, 0, NULL),
(64, 0, 'mod_login', 'module', 'mod_login', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', NULL, NULL, 0, 0, NULL),
(65, 0, 'mod_loginsupport', 'module', 'mod_loginsupport', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_loginsupport\",\"type\":\"module\",\"creationDate\":\"June 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_LOGINSUPPORT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_loginsupport\"}', '', '', NULL, NULL, 0, 0, NULL),
(66, 0, 'mod_menu', 'module', 'mod_menu', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', NULL, NULL, 0, 0, NULL),
(67, 0, 'mod_popular', 'module', 'mod_popular', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', NULL, NULL, 0, 0, NULL),
(68, 0, 'mod_quickicon', 'module', 'mod_quickicon', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', NULL, NULL, 0, 0, NULL),
(69, 0, 'mod_frontend', 'module', 'mod_frontend', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_frontend\",\"type\":\"module\",\"creationDate\":\"July 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_FRONTEND_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_frontend\"}', '', '', NULL, NULL, 0, 0, NULL),
(70, 0, 'mod_messages', 'module', 'mod_messages', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_messages\",\"type\":\"module\",\"creationDate\":\"July 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(71, 0, 'mod_post_installation_messages', 'module', 'mod_post_installation_messages', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_post_installation_messages\",\"type\":\"module\",\"creationDate\":\"July2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_POST_INSTALLATION_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_post_installation_messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(72, 0, 'mod_user', 'module', 'mod_user', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_user\",\"type\":\"module\",\"creationDate\":\"July 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_user\"}', '', '', NULL, NULL, 0, 0, NULL),
(73, 0, 'mod_title', 'module', 'mod_title', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', NULL, NULL, 0, 0, NULL),
(74, 0, 'mod_toolbar', 'module', 'mod_toolbar', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', NULL, NULL, 0, 0, NULL),
(75, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(76, 0, 'mod_version', 'module', 'mod_version', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"cache\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(77, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', NULL, NULL, 0, 0, NULL),
(78, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(79, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(80, 0, 'mod_sampledata', 'module', 'mod_sampledata', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(81, 0, 'mod_latestactions', 'module', 'mod_latestactions', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latestactions\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(82, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_dashboard\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(83, 0, 'mod_submenu', 'module', 'mod_submenu', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(84, 0, 'mod_privacy_status', 'module', 'mod_privacy_status', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_privacy_status\",\"type\":\"module\",\"creationDate\":\"July 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_PRIVACY_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_status\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(85, 0, 'plg_actionlog_joomla', 'plugin', 'joomla', NULL, 'actionlog', 0, 1, 1, 0, 1, '{\"name\":\"plg_actionlog_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{}', '', NULL, NULL, 1, 0, NULL);
INSERT INTO `xd5bf_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(86, 0, 'plg_api-authentication_basic', 'plugin', 'basic', NULL, 'api-authentication', 0, 0, 1, 0, 1, '{\"name\":\"plg_api-authentication_basic\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_BASIC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"basic\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(87, 0, 'plg_api-authentication_token', 'plugin', 'token', NULL, 'api-authentication', 0, 1, 1, 0, 1, '{\"name\":\"plg_api-authentication_token\",\"type\":\"plugin\",\"creationDate\":\"November 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"token\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(88, 0, 'plg_authentication_cookie', 'plugin', 'cookie', NULL, 'authentication', 0, 1, 1, 0, 1, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', NULL, NULL, 1, 0, NULL),
(89, 0, 'plg_authentication_joomla', 'plugin', 'joomla', NULL, 'authentication', 0, 1, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 2, 0, NULL),
(90, 0, 'plg_authentication_ldap', 'plugin', 'ldap', NULL, 'authentication', 0, 0, 1, 0, 1, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', NULL, NULL, 3, 0, NULL),
(91, 0, 'plg_behaviour_taggable', 'plugin', 'taggable', NULL, 'behaviour', 0, 1, 1, 0, 1, '{\"name\":\"plg_behaviour_taggable\",\"type\":\"plugin\",\"creationDate\":\"August 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_TAGGABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"taggable\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(92, 0, 'plg_behaviour_versionable', 'plugin', 'versionable', NULL, 'behaviour', 0, 1, 1, 0, 1, '{\"name\":\"plg_behaviour_versionable\",\"type\":\"plugin\",\"creationDate\":\"August 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_VERSIONABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"versionable\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(93, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', NULL, 'captcha', 0, 0, 1, 0, 1, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', NULL, NULL, 1, 0, NULL),
(94, 0, 'plg_captcha_recaptcha_invisible', 'plugin', 'recaptcha_invisible', NULL, 'captcha', 0, 0, 1, 0, 1, '{\"name\":\"plg_captcha_recaptcha_invisible\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha_invisible\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', NULL, NULL, 2, 0, NULL),
(95, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', NULL, 'content', 0, 0, 1, 0, 1, '{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"confirmconsent\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(96, 0, 'plg_content_contact', 'plugin', 'contact', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', NULL, NULL, 2, 0, NULL),
(97, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', NULL, NULL, 3, 0, NULL),
(98, 0, 'plg_content_fields', 'plugin', 'fields', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', NULL, NULL, 4, 0, NULL),
(99, 0, 'plg_content_finder', 'plugin', 'finder', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', NULL, NULL, 5, 0, NULL),
(100, 0, 'plg_content_joomla', 'plugin', 'joomla', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 6, 0, NULL),
(101, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', NULL, NULL, 7, 0, NULL),
(102, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', NULL, NULL, 8, 0, NULL),
(103, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', NULL, NULL, 9, 0, NULL),
(104, 0, 'plg_content_vote', 'plugin', 'vote', NULL, 'content', 0, 0, 1, 0, 1, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', NULL, NULL, 10, 0, NULL),
(105, 0, 'plg_editors-xtd_article', 'plugin', 'article', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', NULL, NULL, 1, 0, NULL),
(106, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', NULL, NULL, 2, 0, NULL),
(107, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', NULL, NULL, 3, 0, NULL),
(108, 0, 'plg_editors-xtd_image', 'plugin', 'image', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', NULL, NULL, 4, 0, NULL),
(109, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', NULL, NULL, 5, 0, NULL),
(110, 0, 'plg_editors-xtd_module', 'plugin', 'module', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', NULL, NULL, 6, 0, NULL),
(111, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', NULL, NULL, 7, 0, NULL),
(112, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', NULL, NULL, 8, 0, NULL),
(113, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', NULL, 'editors', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"5.65.2\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', NULL, NULL, 1, 0, NULL),
(114, 0, 'plg_editors_none', 'plugin', 'none', NULL, 'editors', 0, 1, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', NULL, NULL, 2, 0, NULL),
(115, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', NULL, 'editors', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2021\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"5.10.3\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', NULL, NULL, 3, 0, NULL),
(116, 0, 'plg_extension_finder', 'plugin', 'finder', NULL, 'extension', 0, 1, 1, 0, 1, '{\"name\":\"plg_extension_finder\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', NULL, NULL, 1, 0, NULL),
(117, 0, 'plg_extension_joomla', 'plugin', 'joomla', NULL, 'extension', 0, 1, 1, 0, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 2, 0, NULL),
(118, 0, 'plg_extension_namespacemap', 'plugin', 'namespacemap', NULL, 'extension', 0, 1, 1, 1, 1, '{\"name\":\"plg_extension_namespacemap\",\"type\":\"plugin\",\"creationDate\":\"May 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_NAMESPACEMAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"namespacemap\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(119, 0, 'plg_fields_calendar', 'plugin', 'calendar', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', NULL, NULL, 1, 0, NULL),
(120, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', NULL, NULL, 2, 0, NULL),
(121, 0, 'plg_fields_color', 'plugin', 'color', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', NULL, NULL, 3, 0, NULL),
(122, 0, 'plg_fields_editor', 'plugin', 'editor', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', NULL, NULL, 4, 0, NULL),
(123, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', NULL, NULL, 5, 0, NULL),
(124, 0, 'plg_fields_integer', 'plugin', 'integer', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', NULL, NULL, 6, 0, NULL),
(125, 0, 'plg_fields_list', 'plugin', 'list', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', NULL, NULL, 7, 0, NULL),
(126, 0, 'plg_fields_media', 'plugin', 'media', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', NULL, NULL, 8, 0, NULL),
(127, 0, 'plg_fields_radio', 'plugin', 'radio', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', NULL, NULL, 9, 0, NULL),
(128, 0, 'plg_fields_sql', 'plugin', 'sql', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', NULL, NULL, 10, 0, NULL),
(129, 0, 'plg_fields_subform', 'plugin', 'subform', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_subform\",\"type\":\"plugin\",\"creationDate\":\"June 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FIELDS_SUBFORM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"subform\"}', '', '', NULL, NULL, 11, 0, NULL),
(130, 0, 'plg_fields_text', 'plugin', 'text', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', NULL, NULL, 12, 0, NULL),
(131, 0, 'plg_fields_textarea', 'plugin', 'textarea', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', NULL, NULL, 13, 0, NULL),
(132, 0, 'plg_fields_url', 'plugin', 'url', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', NULL, NULL, 14, 0, NULL),
(133, 0, 'plg_fields_user', 'plugin', 'user', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', NULL, NULL, 15, 0, NULL),
(134, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', NULL, NULL, 16, 0, NULL),
(135, 0, 'plg_filesystem_local', 'plugin', 'local', NULL, 'filesystem', 0, 1, 1, 0, 1, '{\"name\":\"plg_filesystem_local\",\"type\":\"plugin\",\"creationDate\":\"April 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FILESYSTEM_LOCAL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"local\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(136, 0, 'plg_finder_categories', 'plugin', 'categories', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', NULL, NULL, 1, 0, NULL),
(137, 0, 'plg_finder_contacts', 'plugin', 'contacts', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', NULL, NULL, 2, 0, NULL),
(138, 0, 'plg_finder_content', 'plugin', 'content', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', NULL, NULL, 3, 0, NULL),
(139, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', NULL, NULL, 4, 0, NULL),
(140, 0, 'plg_finder_tags', 'plugin', 'tags', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', NULL, NULL, 5, 0, NULL),
(141, 0, 'plg_installer_folderinstaller', 'plugin', 'folderinstaller', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_folderinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', NULL, NULL, 2, 0, NULL),
(142, 0, 'plg_installer_override', 'plugin', 'override', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_override\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_OVERRIDE_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"override\"}', '', '', NULL, NULL, 4, 0, NULL),
(143, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', NULL, NULL, 1, 0, NULL),
(144, 0, 'plg_installer_urlinstaller', 'plugin', 'urlinstaller', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_urlinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', NULL, NULL, 3, 0, NULL),
(145, 0, 'plg_installer_webinstaller', 'plugin', 'webinstaller', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"April 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"webinstaller\"}', '{\"tab_position\":\"1\"}', '', NULL, NULL, 5, 0, NULL),
(146, 0, 'plg_media-action_crop', 'plugin', 'crop', NULL, 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_crop\",\"type\":\"plugin\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_CROP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"crop\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(147, 0, 'plg_media-action_resize', 'plugin', 'resize', NULL, 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_resize\",\"type\":\"plugin\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_RESIZE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"resize\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(148, 0, 'plg_media-action_rotate', 'plugin', 'rotate', NULL, 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_rotate\",\"type\":\"plugin\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_ROTATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"rotate\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(149, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(150, 0, 'plg_privacy_consents', 'plugin', 'consents', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"consents\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(151, 0, 'plg_privacy_contact', 'plugin', 'contact', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(152, 0, 'plg_privacy_content', 'plugin', 'content', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(153, 0, 'plg_privacy_message', 'plugin', 'message', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"message\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(154, 0, 'plg_privacy_user', 'plugin', 'user', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(155, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', NULL, NULL, 1, 0, NULL),
(156, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', NULL, NULL, 2, 0, NULL),
(157, 0, 'plg_quickicon_overridecheck', 'plugin', 'overridecheck', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_overridecheck\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_OVERRIDECHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"overridecheck\"}', '', '', NULL, NULL, 3, 0, NULL),
(158, 0, 'plg_quickicon_downloadkey', 'plugin', 'downloadkey', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_downloadkey\",\"type\":\"plugin\",\"creationDate\":\"October 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_DOWNLOADKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"downloadkey\"}', '', '', NULL, NULL, 4, 0, NULL),
(159, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacycheck\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(160, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', NULL, NULL, 6, 0, NULL),
(161, 0, 'plg_sampledata_blog', 'plugin', 'blog', NULL, 'sampledata', 0, 1, 1, 0, 1, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', NULL, NULL, 1, 0, NULL),
(162, 0, 'plg_sampledata_multilang', 'plugin', 'multilang', NULL, 'sampledata', 0, 1, 1, 0, 1, '{\"name\":\"plg_sampledata_multilang\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SAMPLEDATA_MULTILANG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"multilang\"}', '', '', NULL, NULL, 2, 0, NULL),
(163, 0, 'plg_system_accessibility', 'plugin', 'accessibility', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_accessibility\",\"type\":\"plugin\",\"creationDate\":\"2020-02-15\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_ACCESSIBILITY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"accessibility\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(164, 0, 'plg_system_actionlogs', 'plugin', 'actionlogs', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(165, 0, 'plg_system_cache', 'plugin', 'cache', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', NULL, NULL, 3, 0, NULL),
(166, 0, 'plg_system_debug', 'plugin', 'debug', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', NULL, NULL, 4, 0, NULL),
(167, 0, 'plg_system_fields', 'plugin', 'fields', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', NULL, NULL, 5, 0, NULL),
(168, 0, 'plg_system_highlight', 'plugin', 'highlight', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', NULL, NULL, 6, 0, NULL),
(169, 0, 'plg_system_httpheaders', 'plugin', 'httpheaders', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_httpheaders\",\"type\":\"plugin\",\"creationDate\":\"October 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_HTTPHEADERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"httpheaders\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(170, 0, 'plg_system_jooa11y', 'plugin', 'jooa11y', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_jooa11y\",\"type\":\"plugin\",\"creationDate\":\"February 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_JOOA11Y_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jooa11y\"}', '', '', NULL, NULL, 8, 0, NULL),
(171, 0, 'plg_system_languagecode', 'plugin', 'languagecode', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', NULL, NULL, 9, 0, NULL),
(172, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', NULL, NULL, 10, 0, NULL),
(173, 0, 'plg_system_log', 'plugin', 'log', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', NULL, NULL, 11, 0, NULL),
(174, 0, 'plg_system_logout', 'plugin', 'logout', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', NULL, NULL, 12, 0, NULL),
(175, 0, 'plg_system_logrotation', 'plugin', 'logrotation', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_logrotation\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logrotation\"}', '{\"lastrun\":1654107149}', '', NULL, NULL, 13, 0, NULL),
(176, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacyconsent\"}', '{}', '', NULL, NULL, 14, 0, NULL),
(177, 0, 'plg_system_redirect', 'plugin', 'redirect', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', NULL, NULL, 15, 0, NULL);
INSERT INTO `xd5bf_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(178, 0, 'plg_system_remember', 'plugin', 'remember', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', NULL, NULL, 16, 0, NULL),
(179, 0, 'plg_system_schedulerunner', 'plugin', 'schedulerunner', NULL, 'system', 0, 1, 1, 0, 0, '{\"name\":\"plg_system_schedulerunner\",\"type\":\"plugin\",\"creationDate\":\"August 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"schedulerunner\"}', '{}', '', NULL, NULL, 17, 0, NULL),
(180, 0, 'plg_system_sef', 'plugin', 'sef', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', NULL, NULL, 18, 0, NULL),
(181, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', NULL, NULL, 19, 0, NULL),
(182, 0, 'plg_system_skipto', 'plugin', 'skipto', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_skipto\",\"type\":\"plugin\",\"creationDate\":\"February 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"skipto\"}', '{}', '', NULL, NULL, 20, 0, NULL),
(183, 0, 'plg_system_stats', 'plugin', 'stats', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":3,\"lastrun\":1654593308,\"unique_id\":\"173a6b2b4429731e7f3dae64f756628e64f0579e\",\"interval\":12}', '', NULL, NULL, 21, 0, NULL),
(184, 0, 'plg_system_task_notification', 'plugin', 'tasknotification', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_task_notification\",\"type\":\"plugin\",\"creationDate\":\"September 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tasknotification\"}', '', '', NULL, NULL, 22, 0, NULL),
(185, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1654593235}', '', NULL, NULL, 23, 0, NULL),
(186, 0, 'plg_system_webauthn', 'plugin', 'webauthn', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2019-07-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_WEBAUTHN_DESCRIPTION\",\"group\":\"\",\"filename\":\"webauthn\"}', '{}', '', NULL, NULL, 23, 0, NULL),
(187, 0, 'plg_task_check_files', 'plugin', 'checkfiles', NULL, 'task', 0, 1, 1, 0, 0, '{\"name\":\"plg_task_check_files\",\"type\":\"plugin\",\"creationDate\":\"August 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_CHECK_FILES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkfiles\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(188, 0, 'plg_task_demo_tasks', 'plugin', 'demotasks', NULL, 'task', 0, 1, 1, 0, 0, '{\"name\":\"plg_task_demo_tasks\",\"type\":\"plugin\",\"creationDate\":\"July 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_DEMO_TASKS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"demotasks\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(189, 0, 'plg_task_requests', 'plugin', 'requests', NULL, 'task', 0, 1, 1, 0, 0, '{\"name\":\"plg_task_requests\",\"type\":\"plugin\",\"creationDate\":\"August 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_REQUESTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"requests\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(190, 0, 'plg_task_site_status', 'plugin', 'sitestatus', NULL, 'task', 0, 1, 1, 0, 0, '{\"name\":\"plg_task_site_status\",\"type\":\"plugin\",\"creationDate\":\"August 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_SITE_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sitestatus\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(191, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', NULL, 'twofactorauth', 0, 0, 1, 0, 1, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', NULL, NULL, 1, 0, NULL),
(192, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', NULL, 'twofactorauth', 0, 0, 1, 0, 1, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', NULL, NULL, 2, 0, NULL),
(193, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', NULL, 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}', '', NULL, NULL, 1, 0, NULL),
(194, 0, 'plg_user_joomla', 'plugin', 'joomla', NULL, 'user', 0, 1, 1, 0, 1, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', NULL, NULL, 2, 0, NULL),
(195, 0, 'plg_user_profile', 'plugin', 'profile', NULL, 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', NULL, NULL, 3, 0, NULL),
(196, 0, 'plg_user_terms', 'plugin', 'terms', NULL, 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"terms\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(197, 0, 'plg_user_token', 'plugin', 'token', NULL, 'user', 0, 1, 1, 0, 1, '{\"name\":\"plg_user_token\",\"type\":\"plugin\",\"creationDate\":\"November 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"token\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(198, 0, 'plg_webservices_banners', 'plugin', 'banners', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_banners\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(199, 0, 'plg_webservices_config', 'plugin', 'config', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_config\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"config\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(200, 0, 'plg_webservices_contact', 'plugin', 'contact', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_contact\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(201, 0, 'plg_webservices_content', 'plugin', 'content', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_content\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(202, 0, 'plg_webservices_installer', 'plugin', 'installer', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_installer\",\"type\":\"plugin\",\"creationDate\":\"June 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"installer\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(203, 0, 'plg_webservices_languages', 'plugin', 'languages', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_languages\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languages\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(204, 0, 'plg_webservices_media', 'plugin', 'media', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_media\",\"type\":\"plugin\",\"creationDate\":\"May 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"PLG_WEBSERVICES_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(205, 0, 'plg_webservices_menus', 'plugin', 'menus', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_menus\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menus\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(206, 0, 'plg_webservices_messages', 'plugin', 'messages', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_messages\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"messages\"}', '{}', '', NULL, NULL, 8, 0, NULL),
(207, 0, 'plg_webservices_modules', 'plugin', 'modules', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_modules\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"modules\"}', '{}', '', NULL, NULL, 9, 0, NULL),
(208, 0, 'plg_webservices_newsfeeds', 'plugin', 'newsfeeds', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{}', '', NULL, NULL, 10, 0, NULL),
(209, 0, 'plg_webservices_plugins', 'plugin', 'plugins', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_plugins\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"plugins\"}', '{}', '', NULL, NULL, 11, 0, NULL),
(210, 0, 'plg_webservices_privacy', 'plugin', 'privacy', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_privacy\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}', '{}', '', NULL, NULL, 12, 0, NULL),
(211, 0, 'plg_webservices_redirect', 'plugin', 'redirect', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_redirect\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '{}', '', NULL, NULL, 13, 0, NULL),
(212, 0, 'plg_webservices_tags', 'plugin', 'tags', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_tags\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{}', '', NULL, NULL, 14, 0, NULL),
(213, 0, 'plg_webservices_templates', 'plugin', 'templates', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_templates\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templates\"}', '{}', '', NULL, NULL, 15, 0, NULL),
(214, 0, 'plg_webservices_users', 'plugin', 'users', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_users\",\"type\":\"plugin\",\"creationDate\":\"September 2019\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{}', '', NULL, NULL, 16, 0, NULL),
(215, 0, 'plg_workflow_featuring', 'plugin', 'featuring', NULL, 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_featuring\",\"type\":\"plugin\",\"creationDate\":\"March 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_FEATURING_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"featuring\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(216, 0, 'plg_workflow_notification', 'plugin', 'notification', NULL, 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_notification\",\"type\":\"plugin\",\"creationDate\":\"May 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"notification\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(217, 0, 'plg_workflow_publishing', 'plugin', 'publishing', NULL, 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_publishing\",\"type\":\"plugin\",\"creationDate\":\"March 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_PUBLISHING_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"publishing\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(218, 0, 'atum', 'template', 'atum', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"atum\",\"type\":\"template\",\"creationDate\":\"September 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ATUM_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}', '', '', NULL, NULL, 0, 0, NULL),
(219, 0, 'cassiopeia', 'template', 'cassiopeia', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"cassiopeia\",\"type\":\"template\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}', '{\"logoFile\":\"\",\"fluidContainer\":\"0\",\"sidebarLeftWidth\":\"3\",\"sidebarRightWidth\":\"3\"}', '', NULL, NULL, 0, 0, NULL),
(220, 0, 'files_joomla', 'file', 'joomla', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"May 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.4\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(221, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"May 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.4.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', NULL, NULL, 0, 0, NULL),
(222, 221, 'English (en-GB)', 'language', 'en-GB', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"May 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.4\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(223, 221, 'English (en-GB)', 'language', 'en-GB', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"May 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.4\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(224, 221, 'English (en-GB)', 'language', 'en-GB', NULL, '', 3, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"May 2022\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.4\",\"description\":\"en-GB api language\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_fields`
--

CREATE TABLE `xd5bf_fields` (
  `id` int UNSIGNED NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `required` tinyint NOT NULL DEFAULT '0',
  `only_use_in_subform` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL,
  `created_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_fields`
--

INSERT INTO `xd5bf_fields` (`id`, `asset_id`, `context`, `group_id`, `title`, `name`, `label`, `default_value`, `type`, `note`, `description`, `state`, `required`, `only_use_in_subform`, `checked_out`, `checked_out_time`, `ordering`, `params`, `fieldparams`, `language`, `created_time`, `created_user_id`, `modified_time`, `modified_by`, `access`) VALUES
(1, 92, 'com_content.article', 1, 'About the Author', 'about-the-author', 'About the Author', '', 'textarea', '', '', 1, 0, 0, NULL, NULL, 0, '{\"hint\":\"\",\"class\":\"\",\"label_class\":\"\",\"show_on\":\"\",\"render_class\":\"\",\"showlabel\":\"1\",\"label_render_class\":\"\",\"display\":\"3\",\"prefix\":\"\",\"suffix\":\"\",\"layout\":\"\",\"display_readonly\":\"2\"}', '{\"rows\":3,\"cols\":80,\"maxlength\":400,\"filter\":\"\"}', '*', '2022-06-07 09:14:21', 551, '2022-06-07 09:14:21', 551, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_fields_categories`
--

CREATE TABLE `xd5bf_fields_categories` (
  `field_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_fields_groups`
--

CREATE TABLE `xd5bf_fields_groups` (
  `id` int UNSIGNED NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_fields_groups`
--

INSERT INTO `xd5bf_fields_groups` (`id`, `asset_id`, `context`, `title`, `note`, `description`, `state`, `checked_out`, `checked_out_time`, `ordering`, `params`, `language`, `created`, `created_by`, `modified`, `modified_by`, `access`) VALUES
(1, 91, 'com_content.article', 'The Author', '', '', 1, NULL, NULL, 0, '{\"display_readonly\":\"1\"}', '*', '2022-06-07 09:14:21', 551, '2022-06-07 09:14:21', 551, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_fields_values`
--

CREATE TABLE `xd5bf_fields_values` (
  `field_id` int UNSIGNED NOT NULL,
  `item_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_fields_values`
--

INSERT INTO `xd5bf_fields_values` (`field_id`, `item_id`, `value`) VALUES
(1, '4', 'Uurnip greens yarrow ricebean endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale.'),
(1, '10', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_finder_filters`
--

CREATE TABLE `xd5bf_finder_filters` (
  `filter_id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `map_count` int UNSIGNED NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_finder_links`
--

CREATE TABLE `xd5bf_finder_links` (
  `link_id` int UNSIGNED NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `indexdate` datetime NOT NULL,
  `md5sum` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT '1',
  `state` int NOT NULL DEFAULT '1',
  `access` int NOT NULL DEFAULT '0',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `publish_start_date` datetime DEFAULT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int NOT NULL,
  `object` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_finder_links`
--

INSERT INTO `xd5bf_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(1, 'index.php?option=com_tags&view=tag&id=2', 'index.php?option=com_tags&view=tag&id=2:millions', 'Millions', '', '2022-06-07 09:14:21', '99775aefe97cc6cf7f96133bd3fd7c53', 1, 1, 1, '*', NULL, NULL, '2022-06-07 09:14:21', NULL, 0, 0, 5, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a303a22223b693a333b613a31343a7b733a323a226964223b693a323b733a353a22616c696173223b733a383a226d696c6c696f6e73223b733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3535313b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a33313a7b733a31303a227461675f6c61796f7574223b733a393a225f3a64656661756c74223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a353b733a31343a2273686f775f7461675f7469746c65223b733a313a2230223b733a32333a227461675f6c6973745f73686f775f7461675f696d616765223b733a313a2230223b733a32393a227461675f6c6973745f73686f775f7461675f6465736372697074696f6e223b733a313a2230223b733a31343a227461675f6c6973745f696d616765223b733a303a22223b733a31363a227461675f6c6973745f6f726465726279223b733a353a227469746c65223b733a32363a227461675f6c6973745f6f7264657262795f646972656374696f6e223b733a333a22415343223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31383a227461675f6c6973745f73686f775f64617465223b733a313a2230223b733a32343a227461675f6c6973745f73686f775f6974656d5f696d616765223b733a313a2230223b733a33303a227461675f6c6973745f73686f775f6974656d5f6465736372697074696f6e223b733a313a2230223b733a33323a227461675f6c6973745f6974656d5f6d6178696d756d5f63686172616374657273223b693a303b733a31373a2272657475726e5f616e795f6f725f616c6c223b733a313a2231223b733a31363a22696e636c7564655f6368696c6472656e223b733a313a2230223b733a373a226d6178696d756d223b693a3230303b733a32343a227461675f6c6973745f6c616e67756167655f66696c746572223b733a333a22616c6c223b733a31313a22746167735f6c61796f7574223b733a393a225f3a64656661756c74223b733a31363a22616c6c5f746167735f6f726465726279223b733a353a227469746c65223b733a32363a22616c6c5f746167735f6f7264657262795f646972656374696f6e223b733a333a22415343223b733a32333a22616c6c5f746167735f73686f775f7461675f696d616765223b733a313a2230223b733a32393a22616c6c5f746167735f73686f775f7461675f6465736372697074696f6e223b733a313a2230223b733a33313a22616c6c5f746167735f7461675f6d6178696d756d5f63686172616374657273223b693a32303b733a32323a22616c6c5f746167735f73686f775f7461675f68697473223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a313a2231223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31393a227461675f6669656c645f616a61785f6d6f6465223b733a313a2231223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a31303a22323a6d696c6c696f6e73223b733a363a22617574686f72223b733a363a2244616e746573223b733a363a226c61796f7574223b733a333a22746167223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a393a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f7461677326766965773d7461672669643d323a6d696c6c696f6e73223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a333a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a333a22546167223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a363a2244616e746573223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a383a224d696c6c696f6e73223b693a31373b693a353b693a31383b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7461677326766965773d7461672669643d32223b7d),
(2, 'index.php?option=com_tags&view=tag&id=3', 'index.php?option=com_tags&view=tag&id=3:worldwide', 'Worldwide', '', '2022-06-07 09:14:21', 'c2541920175aaf4792db151c78c6326d', 1, 1, 1, '*', NULL, NULL, '2022-06-07 09:14:21', NULL, 0, 0, 5, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a303a22223b693a333b613a31343a7b733a323a226964223b693a333b733a353a22616c696173223b733a393a22776f726c6477696465223b733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3535313b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a33313a7b733a31303a227461675f6c61796f7574223b733a393a225f3a64656661756c74223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a353b733a31343a2273686f775f7461675f7469746c65223b733a313a2230223b733a32333a227461675f6c6973745f73686f775f7461675f696d616765223b733a313a2230223b733a32393a227461675f6c6973745f73686f775f7461675f6465736372697074696f6e223b733a313a2230223b733a31343a227461675f6c6973745f696d616765223b733a303a22223b733a31363a227461675f6c6973745f6f726465726279223b733a353a227469746c65223b733a32363a227461675f6c6973745f6f7264657262795f646972656374696f6e223b733a333a22415343223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31383a227461675f6c6973745f73686f775f64617465223b733a313a2230223b733a32343a227461675f6c6973745f73686f775f6974656d5f696d616765223b733a313a2230223b733a33303a227461675f6c6973745f73686f775f6974656d5f6465736372697074696f6e223b733a313a2230223b733a33323a227461675f6c6973745f6974656d5f6d6178696d756d5f63686172616374657273223b693a303b733a31373a2272657475726e5f616e795f6f725f616c6c223b733a313a2231223b733a31363a22696e636c7564655f6368696c6472656e223b733a313a2230223b733a373a226d6178696d756d223b693a3230303b733a32343a227461675f6c6973745f6c616e67756167655f66696c746572223b733a333a22616c6c223b733a31313a22746167735f6c61796f7574223b733a393a225f3a64656661756c74223b733a31363a22616c6c5f746167735f6f726465726279223b733a353a227469746c65223b733a32363a22616c6c5f746167735f6f7264657262795f646972656374696f6e223b733a333a22415343223b733a32333a22616c6c5f746167735f73686f775f7461675f696d616765223b733a313a2230223b733a32393a22616c6c5f746167735f73686f775f7461675f6465736372697074696f6e223b733a313a2230223b733a33313a22616c6c5f746167735f7461675f6d6178696d756d5f63686172616374657273223b693a32303b733a32323a22616c6c5f746167735f73686f775f7461675f68697473223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a313a2231223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31393a227461675f6669656c645f616a61785f6d6f6465223b733a313a2231223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a31313a22333a776f726c6477696465223b733a363a22617574686f72223b733a363a2244616e746573223b733a363a226c61796f7574223b733a333a22746167223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a393a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7461677326766965773d7461672669643d333a776f726c6477696465223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a333a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a333a22546167223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a363a2244616e746573223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a393a22576f726c6477696465223b693a31373b693a353b693a31383b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7461677326766965773d7461672669643d33223b7d),
(3, 'index.php?option=com_tags&view=tag&id=4', 'index.php?option=com_tags&view=tag&id=4:love', 'Love', '', '2022-06-07 09:14:21', 'ba8151aef32d42135460bfc30ab8cf0d', 1, 1, 1, '*', NULL, NULL, '2022-06-07 09:14:21', NULL, 0, 0, 5, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a303a22223b693a333b613a31343a7b733a323a226964223b693a343b733a353a22616c696173223b733a343a226c6f7665223b733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3535313b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a33313a7b733a31303a227461675f6c61796f7574223b733a393a225f3a64656661756c74223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a353b733a31343a2273686f775f7461675f7469746c65223b733a313a2230223b733a32333a227461675f6c6973745f73686f775f7461675f696d616765223b733a313a2230223b733a32393a227461675f6c6973745f73686f775f7461675f6465736372697074696f6e223b733a313a2230223b733a31343a227461675f6c6973745f696d616765223b733a303a22223b733a31363a227461675f6c6973745f6f726465726279223b733a353a227469746c65223b733a32363a227461675f6c6973745f6f7264657262795f646972656374696f6e223b733a333a22415343223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31383a227461675f6c6973745f73686f775f64617465223b733a313a2230223b733a32343a227461675f6c6973745f73686f775f6974656d5f696d616765223b733a313a2230223b733a33303a227461675f6c6973745f73686f775f6974656d5f6465736372697074696f6e223b733a313a2230223b733a33323a227461675f6c6973745f6974656d5f6d6178696d756d5f63686172616374657273223b693a303b733a31373a2272657475726e5f616e795f6f725f616c6c223b733a313a2231223b733a31363a22696e636c7564655f6368696c6472656e223b733a313a2230223b733a373a226d6178696d756d223b693a3230303b733a32343a227461675f6c6973745f6c616e67756167655f66696c746572223b733a333a22616c6c223b733a31313a22746167735f6c61796f7574223b733a393a225f3a64656661756c74223b733a31363a22616c6c5f746167735f6f726465726279223b733a353a227469746c65223b733a32363a22616c6c5f746167735f6f7264657262795f646972656374696f6e223b733a333a22415343223b733a32333a22616c6c5f746167735f73686f775f7461675f696d616765223b733a313a2230223b733a32393a22616c6c5f746167735f73686f775f7461675f6465736372697074696f6e223b733a313a2230223b733a33313a22616c6c5f746167735f7461675f6d6178696d756d5f63686172616374657273223b693a32303b733a32323a22616c6c5f746167735f73686f775f7461675f68697473223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a313a2231223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31393a227461675f6669656c645f616a61785f6d6f6465223b733a313a2231223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a363a22343a6c6f7665223b733a363a22617574686f72223b733a363a2244616e746573223b733a363a226c61796f7574223b733a333a22746167223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a393a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34343a22696e6465782e7068703f6f7074696f6e3d636f6d5f7461677326766965773d7461672669643d343a6c6f7665223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a333a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a333a22546167223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a363a2244616e746573223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a343a224c6f7665223b693a31373b693a353b693a31383b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7461677326766965773d7461672669643d34223b7d),
(4, 'index.php?option=com_tags&view=tag&id=5', 'index.php?option=com_tags&view=tag&id=5:joomla-4', 'Joomla 4', '', '2022-06-07 09:14:21', '2299da1ed3eabe825e41da597f6b1ff0', 1, 1, 1, '*', NULL, NULL, '2022-06-07 09:14:21', NULL, 0, 0, 5, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a303a22223b693a333b613a31343a7b733a323a226964223b693a353b733a353a22616c696173223b733a383a226a6f6f6d6c612034223b733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3535313b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a33313a7b733a31303a227461675f6c61796f7574223b733a393a225f3a64656661756c74223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a353b733a31343a2273686f775f7461675f7469746c65223b733a313a2230223b733a32333a227461675f6c6973745f73686f775f7461675f696d616765223b733a313a2230223b733a32393a227461675f6c6973745f73686f775f7461675f6465736372697074696f6e223b733a313a2230223b733a31343a227461675f6c6973745f696d616765223b733a303a22223b733a31363a227461675f6c6973745f6f726465726279223b733a353a227469746c65223b733a32363a227461675f6c6973745f6f7264657262795f646972656374696f6e223b733a333a22415343223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31383a227461675f6c6973745f73686f775f64617465223b733a313a2230223b733a32343a227461675f6c6973745f73686f775f6974656d5f696d616765223b733a313a2230223b733a33303a227461675f6c6973745f73686f775f6974656d5f6465736372697074696f6e223b733a313a2230223b733a33323a227461675f6c6973745f6974656d5f6d6178696d756d5f63686172616374657273223b693a303b733a31373a2272657475726e5f616e795f6f725f616c6c223b733a313a2231223b733a31363a22696e636c7564655f6368696c6472656e223b733a313a2230223b733a373a226d6178696d756d223b693a3230303b733a32343a227461675f6c6973745f6c616e67756167655f66696c746572223b733a333a22616c6c223b733a31313a22746167735f6c61796f7574223b733a393a225f3a64656661756c74223b733a31363a22616c6c5f746167735f6f726465726279223b733a353a227469746c65223b733a32363a22616c6c5f746167735f6f7264657262795f646972656374696f6e223b733a333a22415343223b733a32333a22616c6c5f746167735f73686f775f7461675f696d616765223b733a313a2230223b733a32393a22616c6c5f746167735f73686f775f7461675f6465736372697074696f6e223b733a313a2230223b733a33313a22616c6c5f746167735f7461675f6d6178696d756d5f63686172616374657273223b693a32303b733a32323a22616c6c5f746167735f73686f775f7461675f68697473223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a313a2231223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31393a227461675f6669656c645f616a61785f6d6f6465223b733a313a2231223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a31303a22353a6a6f6f6d6c612d34223b733a363a22617574686f72223b733a363a2244616e746573223b733a363a226c61796f7574223b733a333a22746167223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a393a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f7461677326766965773d7461672669643d353a6a6f6f6d6c612d34223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a333a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a333a22546167223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a363a2244616e746573223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a383a224a6f6f6d6c612034223b693a31373b693a353b693a31383b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7461677326766965773d7461672669643d35223b7d),
(5, 'index.php?option=com_content&view=category&id=8', 'index.php?option=com_content&view=category&id=8', 'Blog', '', '2022-06-07 09:14:21', '6e691931e7b0a182405c975000ca1ccc', 1, 1, 1, '*', NULL, NULL, '2022-06-07 09:14:21', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a383b733a353a22616c696173223b733a343a22626c6f67223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a303b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a31313b733a393a22706172656e745f6964223b693a313b733a353a226c6576656c223b693a313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a313a7b733a31313a22776f726b666c6f775f6964223b733a313a2232223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3535313b733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a343a22736c7567223b733a363a22383a626c6f67223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d38223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a383b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a343a22426c6f67223b693a31373b693a313b693a31383b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d38223b7d),
(6, 'index.php?option=com_content&view=category&id=9', 'index.php?option=com_content&view=category&id=9', 'Help', '', '2022-06-07 09:14:21', '0e718825a3ec6ded4dc5ae2abf3ab68f', 1, 1, 1, '*', NULL, NULL, '2022-06-07 09:14:21', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a393b733a353a22616c696173223b733a343a2268656c70223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a303b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a31333b733a393a22706172656e745f6964223b693a313b733a353a226c6576656c223b693a313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3535313b733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a343a22736c7567223b733a363a22393a68656c70223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d39223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a383b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a343a2248656c70223b693a31373b693a313b693a31383b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d39223b7d),
(7, 'index.php?option=com_content&view=category&id=10', 'index.php?option=com_content&view=category&id=10', 'Joomla', '', '2022-06-07 09:14:21', '3d6cee2be273b112a60dbc4d3c0e56d3', 1, 1, 1, '*', NULL, NULL, '2022-06-07 09:14:21', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a31303b733a353a22616c696173223b733a363a226a6f6f6d6c61223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a303b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a31353b733a393a22706172656e745f6964223b693a313b733a353a226c6576656c223b693a313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3535313b733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a343a22736c7567223b733a393a2231303a6a6f6f6d6c61223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3130223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a383b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a363a224a6f6f6d6c61223b693a31373b693a313b693a31383b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3130223b7d),
(8, 'index.php?option=com_content&view=category&id=11', 'index.php?option=com_content&view=category&id=11', 'Typography', '', '2022-06-07 09:14:21', 'cb849599059da4c2c8dbb88e3e830db9', 1, 1, 1, '*', NULL, NULL, '2022-06-07 09:14:21', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a31313b733a353a22616c696173223b733a31303a227479706f677261706879223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a303b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a31373b733a393a22706172656e745f6964223b693a313b733a353a226c6576656c223b693a313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3535313b733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a343a22736c7567223b733a31333a2231313a7479706f677261706879223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3131223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a383b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a31303a225479706f677261706879223b693a31373b693a313b693a31383b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3131223b7d),
(9, 'index.php?option=com_content&view=article&id=1', 'index.php?option=com_content&view=article&id=1:about&catid=9', 'About', ' This tells you a bit about this blog and the person who writes it. When you are logged in you will be able to edit this page by selecting the edit icon. ', '2022-06-07 09:14:21', '12614398a9d65046632521ed20288c6e', 1, 1, 1, '*', '2022-06-07 09:14:21', NULL, '2022-06-07 09:14:21', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a3135343a2220546869732074656c6c7320796f752061206269742061626f7574207468697320626c6f6720616e642074686520706572736f6e2077686f207772697465732069742e205768656e20796f7520617265206c6f6767656420696e20796f752077696c6c2062652061626c6520746f2065646974207468697320706167652062792073656c656374696e672074686520656469742069636f6e2e20223b693a333b613a32353a7b733a323a226964223b693a313b733a353a22616c696173223b733a353a2261626f7574223b733a373a2273756d6d617279223b733a3136363a223c703e546869732074656c6c7320796f752061206269742061626f7574207468697320626c6f6720616e642074686520706572736f6e2077686f207772697465732069742e203c2f703e3c703e5768656e20796f7520617265206c6f6767656420696e20796f752077696c6c2062652061626c6520746f2065646974207468697320706167652062792073656c656374696e672074686520656469742069636f6e2e3c2f703e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a303a22223b733a353a226361746964223b693a393b733a31303a22637265617465645f6279223b693a3535313b733a31363a22637265617465645f62795f616c696173223b733a363a224a6f6f6d6c61223b733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a313b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a343a2248656c70223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a373a22313a61626f7574223b733a373a22636174736c7567223b733a363a22393a68656c70223b733a363a22617574686f72223b733a363a2244616e746573223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032322d30362d30372030393a31343a3231223b693a31303b4e3b693a31313b733a36303a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d313a61626f75742663617469643d39223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a363a224a6f6f6d6c61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31303b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a343a2248656c70223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31323b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a353a2241626f7574223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31223b7d);
INSERT INTO `xd5bf_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(10, 'index.php?option=com_content&view=article&id=2', 'index.php?option=com_content&view=article&id=2:working-on-your-site&catid=9', 'Working on Your Site', ' Here are some basic tips for working on your site. Joomla! has a \'front end\' that you are looking at now and an \'administrator\' or \'back end\' which is where you do the more advanced work of creating your site such as setting up the menus and deciding what modules to show. You need to login to the administrator separately using the same user name and password that you used to login to this part of the site. One of the first things you will probably want to do is change the site title and tag line and to add a logo. To do this select the Template Settings link in the menu which is visible if you log in. To change your site description, browser title, default email and other items, select Site Settings. More advanced configuration options are available in the administrator. To totally change the look of your site you will probably want to install a new template. Go to System, select Install - Extensions from the list and the extension installer will open. There are many free and commercial templates available for Joomla. As you have already seen, you can control who can see different parts of you site. When you work with modules and articles, setting the Access level to Registered will mean that only logged in users can see them. When you create a new article or other kind of content you also can save it as Published or Unpublished. If it is Unpublished site visitors will not be able to see it but you will. You can learn much more about working with Joomla from the Joomla documentation site and get help from other users at the Joomla forums. In the administrator there are help buttons on every page that provide detailed information about the functions on that page. ', '2022-06-07 09:14:21', '78ffda574a3865863dd92eee3ab0e7b7', 1, 1, 3, '*', '2022-06-07 09:14:21', NULL, '2022-06-07 09:14:21', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a333b693a313b733a353a22656e2d4742223b693a323b733a313639323a2220486572652061726520736f6d65206261736963207469707320666f7220776f726b696e67206f6e20796f757220736974652e204a6f6f6d6c6121206861732061202766726f6e7420656e6427207468617420796f7520617265206c6f6f6b696e67206174206e6f7720616e6420616e202761646d696e6973747261746f7227206f7220276261636b20656e642720776869636820697320776865726520796f7520646f20746865206d6f726520616476616e63656420776f726b206f66206372656174696e6720796f7572207369746520737563682061732073657474696e6720757020746865206d656e757320616e64206465636964696e672077686174206d6f64756c657320746f2073686f772e20596f75206e65656420746f206c6f67696e20746f207468652061646d696e6973747261746f722073657061726174656c79207573696e67207468652073616d652075736572206e616d6520616e642070617373776f7264207468617420796f75207573656420746f206c6f67696e20746f20746869732070617274206f662074686520736974652e204f6e65206f6620746865206669727374207468696e677320796f752077696c6c2070726f6261626c792077616e7420746f20646f206973206368616e6765207468652073697465207469746c6520616e6420746167206c696e6520616e6420746f206164642061206c6f676f2e20546f20646f20746869732073656c656374207468652054656d706c6174652053657474696e6773206c696e6b20696e20746865206d656e752077686963682069732076697369626c6520696620796f75206c6f6720696e2e20546f206368616e676520796f75722073697465206465736372697074696f6e2c2062726f77736572207469746c652c2064656661756c7420656d61696c20616e64206f74686572206974656d732c2073656c65637420536974652053657474696e67732e204d6f726520616476616e63656420636f6e66696775726174696f6e206f7074696f6e732061726520617661696c61626c6520696e207468652061646d696e6973747261746f722e20546f20746f74616c6c79206368616e676520746865206c6f6f6b206f6620796f7572207369746520796f752077696c6c2070726f6261626c792077616e7420746f20696e7374616c6c2061206e65772074656d706c6174652e20476f20746f2053797374656d2c2073656c65637420496e7374616c6c202d20457874656e73696f6e732066726f6d20746865206c69737420616e642074686520657874656e73696f6e20696e7374616c6c65722077696c6c206f70656e2e20546865726520617265206d616e79206672656520616e6420636f6d6d65726369616c2074656d706c6174657320617661696c61626c6520666f72204a6f6f6d6c612e20417320796f75206861766520616c7265616479207365656e2c20796f752063616e20636f6e74726f6c2077686f2063616e2073656520646966666572656e74207061727473206f6620796f7520736974652e205768656e20796f7520776f726b2077697468206d6f64756c657320616e642061727469636c65732c2073657474696e672074686520416363657373206c6576656c20746f20526567697374657265642077696c6c206d65616e2074686174206f6e6c79206c6f6767656420696e2075736572732063616e20736565207468656d2e205768656e20796f75206372656174652061206e65772061727469636c65206f72206f74686572206b696e64206f6620636f6e74656e7420796f7520616c736f2063616e2073617665206974206173205075626c6973686564206f7220556e7075626c69736865642e20496620697420697320556e7075626c697368656420736974652076697369746f72732077696c6c206e6f742062652061626c6520746f207365652069742062757420796f752077696c6c2e20596f752063616e206c6561726e206d756368206d6f72652061626f757420776f726b696e672077697468204a6f6f6d6c612066726f6d20746865204a6f6f6d6c6120646f63756d656e746174696f6e207369746520616e64206765742068656c702066726f6d206f7468657220757365727320617420746865204a6f6f6d6c6120666f72756d732e20496e207468652061646d696e6973747261746f72207468657265206172652068656c7020627574746f6e73206f6e206576657279207061676520746861742070726f766964652064657461696c656420696e666f726d6174696f6e2061626f7574207468652066756e6374696f6e73206f6e207468617420706167652e20223b693a333b613a32353a7b733a323a226964223b693a323b733a353a22616c696173223b733a32303a22776f726b696e67206f6e20796f75722073697465223b733a373a2273756d6d617279223b733a313833333a223c703e486572652061726520736f6d65206261736963207469707320666f7220776f726b696e67206f6e20796f757220736974652e3c2f703e3c756c3e3c6c693e4a6f6f6d6c6121206861732061202766726f6e7420656e6427207468617420796f7520617265206c6f6f6b696e67206174206e6f7720616e6420616e202761646d696e6973747261746f7227206f7220276261636b20656e642720776869636820697320776865726520796f7520646f20746865206d6f726520616476616e63656420776f726b206f66206372656174696e6720796f7572207369746520737563682061732073657474696e6720757020746865206d656e757320616e64206465636964696e672077686174206d6f64756c657320746f2073686f772e20596f75206e65656420746f206c6f67696e20746f207468652061646d696e6973747261746f722073657061726174656c79207573696e67207468652073616d652075736572206e616d6520616e642070617373776f7264207468617420796f75207573656420746f206c6f67696e20746f20746869732070617274206f662074686520736974652e3c2f6c693e3c6c693e4f6e65206f6620746865206669727374207468696e677320796f752077696c6c2070726f6261626c792077616e7420746f20646f206973206368616e6765207468652073697465207469746c6520616e6420746167206c696e6520616e6420746f206164642061206c6f676f2e20546f20646f20746869732073656c656374207468652054656d706c6174652053657474696e6773206c696e6b20696e20746865206d656e752077686963682069732076697369626c6520696620796f75206c6f6720696e2e20546f206368616e676520796f75722073697465206465736372697074696f6e2c2062726f77736572207469746c652c2064656661756c7420656d61696c20616e64206f74686572206974656d732c2073656c65637420536974652053657474696e67732e204d6f726520616476616e63656420636f6e66696775726174696f6e206f7074696f6e732061726520617661696c61626c6520696e207468652061646d696e6973747261746f722e3c2f6c693e3c6c693e546f20746f74616c6c79206368616e676520746865206c6f6f6b206f6620796f7572207369746520796f752077696c6c2070726f6261626c792077616e7420746f20696e7374616c6c2061206e65772074656d706c6174652e20476f20746f2053797374656d2c2073656c65637420496e7374616c6c202d20457874656e73696f6e732066726f6d20746865206c69737420616e642074686520657874656e73696f6e20696e7374616c6c65722077696c6c206f70656e2e20546865726520617265206d616e79206672656520616e6420636f6d6d65726369616c2074656d706c6174657320617661696c61626c6520666f72204a6f6f6d6c612e3c2f6c693e3c6c693e417320796f75206861766520616c7265616479207365656e2c20796f752063616e20636f6e74726f6c2077686f2063616e2073656520646966666572656e74207061727473206f6620796f7520736974652e205768656e20796f7520776f726b2077697468206d6f64756c657320616e642061727469636c65732c2073657474696e672074686520416363657373206c6576656c20746f20526567697374657265642077696c6c206d65616e2074686174206f6e6c79206c6f6767656420696e2075736572732063616e20736565207468656d2e3c2f6c693e3c6c693e5768656e20796f75206372656174652061206e65772061727469636c65206f72206f74686572206b696e64206f6620636f6e74656e7420796f7520616c736f2063616e2073617665206974206173205075626c6973686564206f7220556e7075626c69736865642e20496620697420697320556e7075626c697368656420736974652076697369746f72732077696c6c206e6f742062652061626c6520746f207365652069742062757420796f752077696c6c2e3c2f6c693e3c6c693e596f752063616e206c6561726e206d756368206d6f72652061626f757420776f726b696e672077697468204a6f6f6d6c612066726f6d20746865203c6120687265663d2768747470733a2f2f646f63732e6a6f6f6d6c612e6f72672f273e4a6f6f6d6c6120646f63756d656e746174696f6e20736974653c2f613e20616e64206765742068656c702066726f6d206f7468657220757365727320617420746865203c6120687265663d2768747470733a2f2f666f72756d2e6a6f6f6d6c612e6f72672f273e4a6f6f6d6c6120666f72756d733c2f613e2e20496e207468652061646d696e6973747261746f72207468657265206172652068656c7020627574746f6e73206f6e206576657279207061676520746861742070726f766964652064657461696c656420696e666f726d6174696f6e2061626f7574207468652066756e6374696f6e73206f6e207468617420706167652e3c2f6c693e3c2f756c3e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a303a22223b733a353a226361746964223b693a393b733a31303a22637265617465645f6279223b693a3535313b733a31363a22637265617465645f62795f616c696173223b733a363a224a6f6f6d6c61223b733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a313b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a343a2248656c70223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a32323a22323a776f726b696e672d6f6e2d796f75722d73697465223b733a373a22636174736c7567223b733a363a22393a68656c70223b733a363a22617574686f72223b733a363a2244616e746573223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032322d30362d30372030393a31343a3231223b693a31303b4e3b693a31313b733a37353a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d323a776f726b696e672d6f6e2d796f75722d736974652663617469643d39223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a363a224a6f6f6d6c61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31303b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a343a2248656c70223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31323b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a32303a22576f726b696e67206f6e20596f75722053697465223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d32223b7d),
(11, 'index.php?option=com_content&view=article&id=3', 'index.php?option=com_content&view=article&id=3:welcome-to-your-blog&catid=8', 'Welcome to your blog', ' This is a sample blog posting. If you log in to the site (the Administrator Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site. As you add and modify articles you will see how your site changes and also how you can customise it in various ways. Go ahead, you can\'t break it. ', '2022-06-07 09:14:21', 'ac3caa797b93920704aa59ac7690c6b5', 1, 1, 1, '*', '2022-06-07 09:14:21', NULL, '2022-06-07 09:14:21', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a3432313a22205468697320697320612073616d706c6520626c6f6720706f7374696e672e20496620796f75206c6f6720696e20746f20746865207369746520287468652041646d696e6973747261746f72204c6f67696e206c696e6b206973206f6e20746865207665727920626f74746f6d206f66207468697320706167652920796f752077696c6c2062652061626c6520746f206564697420697420616e6420616c6c206f6620746865206f74686572206578697374696e672061727469636c65732e20596f752077696c6c20616c736f2062652061626c6520746f206372656174652061206e65772061727469636c6520616e64206d616b65206f74686572206368616e67657320746f2074686520736974652e20417320796f752061646420616e64206d6f646966792061727469636c657320796f752077696c6c2073656520686f7720796f75722073697465206368616e67657320616e6420616c736f20686f7720796f752063616e20637573746f6d69736520697420696e20766172696f757320776179732e20476f2061686561642c20796f752063616e277420627265616b2069742e20223b693a333b613a32373a7b733a323a226964223b693a333b733a353a22616c696173223b733a32303a2277656c636f6d6520746f20796f757220626c6f67223b733a373a2273756d6d617279223b733a3434343a223c703e5468697320697320612073616d706c6520626c6f6720706f7374696e672e3c2f703e3c703e496620796f75206c6f6720696e20746f20746865207369746520287468652041646d696e6973747261746f72204c6f67696e206c696e6b206973206f6e20746865207665727920626f74746f6d206f66207468697320706167652920796f752077696c6c2062652061626c6520746f206564697420697420616e6420616c6c206f6620746865206f74686572206578697374696e672061727469636c65732e20596f752077696c6c20616c736f2062652061626c6520746f206372656174652061206e65772061727469636c6520616e64206d616b65206f74686572206368616e67657320746f2074686520736974652e3c2f703e3c703e417320796f752061646420616e64206d6f646966792061727469636c657320796f752077696c6c2073656520686f7720796f75722073697465206368616e67657320616e6420616c736f20686f7720796f752063616e20637573746f6d69736520697420696e20766172696f757320776179732e3c2f703e3c703e476f2061686561642c20796f752063616e277420627265616b2069742e3c2f703e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3537333a227b22696d6167655f696e74726f223a22696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361312d313230302e6a7067236a6f6f6d6c61496d6167653a5c2f5c2f6c6f63616c2d696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361312d313230302e6a70673f77696474683d31323030266865696768743d343030222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22416d617a696e6720416e64726f6d6564612047616c617879222c22696d6167655f696e74726f5f616c745f656d707479223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361312d3430302e6a7067236a6f6f6d6c61496d6167653a5c2f5c2f6c6f63616c2d696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361312d3430302e6a70673f77696474683d343030266865696768743d343030222c22666c6f61745f66756c6c74657874223a22666c6f61742d7374617274222c22696d6167655f66756c6c746578745f616c74223a22222c22696d6167655f66756c6c746578745f616c745f656d707479223a312c22696d6167655f66756c6c746578745f63617074696f6e223a227777772e6e6173612e676f765c2f6d756c74696d656469615c2f696d61676567616c6c657279227d223b733a353a226361746964223b693a383b733a31303a22637265617465645f6279223b693a3535313b733a31363a22637265617465645f62795f616c696173223b733a363a224a6f6f6d6c61223b733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a313b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a343a22426c6f67223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a32323a22333a77656c636f6d652d746f2d796f75722d626c6f67223b733a373a22636174736c7567223b733a363a22383a626c6f67223b733a363a22617574686f72223b733a363a2244616e746573223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a383a22696d61676555726c223b733a3132393a22696d616765732f73616d706c65646174612f63617373696f706569612f6e617361312d313230302e6a7067236a6f6f6d6c61496d6167653a2f2f6c6f63616c2d696d616765732f73616d706c65646174612f63617373696f706569612f6e617361312d313230302e6a70673f77696474683d31323030266865696768743d343030223b733a383a22696d616765416c74223b733a32343a22416d617a696e6720416e64726f6d6564612047616c617879223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032322d30362d30372030393a31343a3231223b693a31303b4e3b693a31313b733a37353a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d333a77656c636f6d652d746f2d796f75722d626c6f672663617469643d38223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a363a224a6f6f6d6c61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31303b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a343a22426c6f67223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a32303a2257656c636f6d6520746f20796f757220626c6f67223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d33223b7d),
(12, 'index.php?option=com_content&view=article&id=4', 'index.php?option=com_content&view=article&id=4:about-your-home-page&catid=8', 'About your home page', ' Your home page is set to display the four most recent articles from the blog category in a column. Then there are links to the next two oldest articles. You can change those numbers by editing the content options settings in the blog tab in your site administrator. There is a link to your site administrator if you are logged in. If you want to have your blog post broken into two parts, an introduction and then a full length separate page, use the Read More span to insert a break. ', '2022-06-07 09:14:21', '24600d1957e6eb4637c694be07c4155f', 1, 1, 1, '*', '2022-06-07 09:14:21', NULL, '2022-06-07 09:14:21', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a3438363a2220596f757220686f6d6520706167652069732073657420746f20646973706c61792074686520666f7572206d6f737420726563656e742061727469636c65732066726f6d2074686520626c6f672063617465676f727920696e206120636f6c756d6e2e205468656e20746865726520617265206c696e6b7320746f20746865206e6578742074776f206f6c646573742061727469636c65732e20596f752063616e206368616e67652074686f7365206e756d626572732062792065646974696e672074686520636f6e74656e74206f7074696f6e732073657474696e677320696e2074686520626c6f672074616220696e20796f757220736974652061646d696e6973747261746f722e2054686572652069732061206c696e6b20746f20796f757220736974652061646d696e6973747261746f7220696620796f7520617265206c6f6767656420696e2e20496620796f752077616e7420746f206861766520796f757220626c6f6720706f73742062726f6b656e20696e746f2074776f2070617274732c20616e20696e74726f64756374696f6e20616e64207468656e20612066756c6c206c656e67746820736570617261746520706167652c20757365207468652052656164204d6f7265207370616e20746f20696e73657274206120627265616b2e20223b693a333b613a32373a7b733a323a226964223b693a343b733a353a22616c696173223b733a32303a2261626f757420796f757220686f6d652070616765223b733a373a2273756d6d617279223b733a3439373a223c703e596f757220686f6d6520706167652069732073657420746f20646973706c61792074686520666f7572206d6f737420726563656e742061727469636c65732066726f6d2074686520626c6f672063617465676f727920696e206120636f6c756d6e2e205468656e20746865726520617265206c696e6b7320746f20746865206e6578742074776f206f6c646573742061727469636c65732e20596f752063616e206368616e67652074686f7365206e756d626572732062792065646974696e672074686520636f6e74656e74206f7074696f6e732073657474696e677320696e2074686520626c6f672074616220696e20796f757220736974652061646d696e6973747261746f722e2054686572652069732061206c696e6b20746f20796f757220736974652061646d696e6973747261746f7220696620796f7520617265206c6f6767656420696e2e3c2f703e3c703e496620796f752077616e7420746f206861766520796f757220626c6f6720706f73742062726f6b656e20696e746f2074776f2070617274732c20616e20696e74726f64756374696f6e20616e64207468656e20612066756c6c206c656e67746820736570617261746520706167652c20757365207468652052656164204d6f7265207370616e20746f20696e73657274206120627265616b2e3c2f703e223b733a343a22626f6479223b733a3136313a223c703e4f6e207468652066756c6c207061676520796f752077696c6c2073656520626f74682074686520696e74726f647563746f727920636f6e74656e7420616e64207468652072657374206f66207468652061727469636c652e20596f752063616e206368616e6765207468652073657474696e677320746f20686964652074686520696e74726f64756374696f6e20696620796f752077616e742e3c2f703e223b733a363a22696d61676573223b733a3534383a227b22696d6167655f696e74726f223a22696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361322d313230302e6a7067236a6f6f6d6c61496d6167653a5c2f5c2f6c6f63616c2d696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361322d313230302e6a70673f77696474683d31323030266865696768743d343030222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22696d6167655f696e74726f5f616c745f656d707479223a312c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361322d3430302e6a7067236a6f6f6d6c61496d6167653a5c2f5c2f6c6f63616c2d696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361322d3430302e6a70673f77696474683d343030266865696768743d343030222c22666c6f61745f66756c6c74657874223a22666c6f61742d7374617274222c22696d6167655f66756c6c746578745f616c74223a22222c22696d6167655f66756c6c746578745f616c745f656d707479223a312c22696d6167655f66756c6c746578745f63617074696f6e223a227777772e6e6173612e676f765c2f6d756c74696d656469615c2f696d61676567616c6c657279227d223b733a353a226361746964223b693a383b733a31303a22637265617465645f6279223b693a3535313b733a31363a22637265617465645f62795f616c696173223b733a363a224a6f6f6d6c61223b733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a313b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a343a22426c6f67223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a32323a22343a61626f75742d796f75722d686f6d652d70616765223b733a373a22636174736c7567223b733a363a22383a626c6f67223b733a363a22617574686f72223b733a363a2244616e746573223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a383a22696d61676555726c223b733a3132393a22696d616765732f73616d706c65646174612f63617373696f706569612f6e617361322d313230302e6a7067236a6f6f6d6c61496d6167653a2f2f6c6f63616c2d696d616765732f73616d706c65646174612f63617373696f706569612f6e617361322d313230302e6a70673f77696474683d31323030266865696768743d343030223b733a383a22696d616765416c74223b733a303a22223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032322d30362d30372030393a31343a3231223b693a31303b4e3b693a31313b733a37353a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d343a61626f75742d796f75722d686f6d652d706167652663617469643d38223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a363a224a6f6f6d6c61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31303b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a343a22426c6f67223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a32303a2241626f757420796f757220686f6d652070616765223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d34223b7d);
INSERT INTO `xd5bf_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(13, 'index.php?option=com_content&view=article&id=5', 'index.php?option=com_content&view=article&id=5:your-modules&catid=8', 'Your Modules', ' Your site has some commonly used modules already preconfigured. These include: Image (type: Custom), which holds the image beneath the menu. This is a Custom module that you can edit to change the image. Popular Tags (type: Tags - Popular), which will appear if you use tagging on your articles. Enter a tag in the Tags field when editing. Older Posts (type: Articles - Category), which lists out articles by categories. Syndication (type: Syndication Feeds), which allows your readers to read your posts in a news reader. Login Form (type: Login), which allows your users to access restricted areas of the website. Each of these modules has many options which you can experiment with in the Module Manager in your site Administrator. When you are logged in you can also select the edit icon in the top right corner which will take you to an edit screen for that module. Always be sure to save and close any module you edit. Joomla! also includes many other modules you can incorporate in your site. As you develop your site you may want to add more modules that you can find at the Joomla Extensions Directory. ', '2022-06-07 09:14:21', 'ec32a38bf612b816f715a2f5f7954bfa', 1, 1, 1, '*', '2022-06-07 09:14:21', NULL, '2022-06-07 09:14:21', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a313131333a2220596f757220736974652068617320736f6d6520636f6d6d6f6e6c792075736564206d6f64756c657320616c726561647920707265636f6e666967757265642e20546865736520696e636c7564653a20496d6167652028747970653a20437573746f6d292c20776869636820686f6c64732074686520696d6167652062656e6561746820746865206d656e752e2054686973206973206120437573746f6d206d6f64756c65207468617420796f752063616e206564697420746f206368616e67652074686520696d6167652e20506f70756c617220546167732028747970653a2054616773202d20506f70756c6172292c2077686963682077696c6c2061707065617220696620796f75207573652074616767696e67206f6e20796f75722061727469636c65732e20456e74657220612074616720696e207468652054616773206669656c64207768656e2065646974696e672e204f6c64657220506f7374732028747970653a2041727469636c6573202d2043617465676f7279292c207768696368206c69737473206f75742061727469636c65732062792063617465676f726965732e2053796e6469636174696f6e2028747970653a2053796e6469636174696f6e204665656473292c20776869636820616c6c6f777320796f7572207265616465727320746f207265616420796f757220706f73747320696e2061206e657773207265616465722e204c6f67696e20466f726d2028747970653a204c6f67696e292c20776869636820616c6c6f777320796f757220757365727320746f206163636573732072657374726963746564206172656173206f662074686520776562736974652e2045616368206f66207468657365206d6f64756c657320686173206d616e79206f7074696f6e7320776869636820796f752063616e206578706572696d656e74207769746820696e20746865204d6f64756c65204d616e6167657220696e20796f757220736974652041646d696e6973747261746f722e205768656e20796f7520617265206c6f6767656420696e20796f752063616e20616c736f2073656c6563742074686520656469742069636f6e20696e2074686520746f7020726967687420636f726e65722077686963682077696c6c2074616b6520796f7520746f20616e20656469742073637265656e20666f722074686174206d6f64756c652e20416c77617973206265207375726520746f207361766520616e6420636c6f736520616e79206d6f64756c6520796f7520656469742e204a6f6f6d6c612120616c736f20696e636c75646573206d616e79206f74686572206d6f64756c657320796f752063616e20696e636f72706f7261746520696e20796f757220736974652e20417320796f7520646576656c6f7020796f7572207369746520796f75206d61792077616e7420746f20616464206d6f7265206d6f64756c6573207468617420796f752063616e2066696e6420617420746865204a6f6f6d6c6120457874656e73696f6e73204469726563746f72792e20223b693a333b613a32373a7b733a323a226964223b693a353b733a353a22616c696173223b733a31323a22796f7572206d6f64756c6573223b733a373a2273756d6d617279223b733a313232323a223c703e596f757220736974652068617320736f6d6520636f6d6d6f6e6c792075736564206d6f64756c657320616c726561647920707265636f6e666967757265642e20546865736520696e636c7564653a3c2f703e3c756c3e3c6c693e496d6167652028747970653a20437573746f6d292c20776869636820686f6c64732074686520696d6167652062656e6561746820746865206d656e752e2054686973206973206120437573746f6d206d6f64756c65207468617420796f752063616e206564697420746f206368616e67652074686520696d6167652e3c2f6c693e3c6c693e506f70756c617220546167732028747970653a2054616773202d20506f70756c6172292c2077686963682077696c6c2061707065617220696620796f75207573652074616767696e67206f6e20796f75722061727469636c65732e20456e74657220612074616720696e207468652054616773206669656c64207768656e2065646974696e672e3c2f6c693e3c6c693e4f6c64657220506f7374732028747970653a2041727469636c6573202d2043617465676f7279292c207768696368206c69737473206f75742061727469636c65732062792063617465676f726965732e3c2f6c693e3c6c693e53796e6469636174696f6e2028747970653a2053796e6469636174696f6e204665656473292c20776869636820616c6c6f777320796f7572207265616465727320746f207265616420796f757220706f73747320696e2061206e657773207265616465722e3c2f6c693e3c6c693e4c6f67696e20466f726d2028747970653a204c6f67696e292c20776869636820616c6c6f777320796f757220757365727320746f206163636573732072657374726963746564206172656173206f662074686520776562736974652e3c2f6c693e3c2f756c3e3c703e45616368206f66207468657365206d6f64756c657320686173206d616e79206f7074696f6e7320776869636820796f752063616e206578706572696d656e74207769746820696e20746865204d6f64756c65204d616e6167657220696e20796f757220736974652041646d696e6973747261746f722e205768656e20796f7520617265206c6f6767656420696e20796f752063616e20616c736f2073656c6563742074686520656469742069636f6e20696e2074686520746f7020726967687420636f726e65722077686963682077696c6c2074616b6520796f7520746f20616e20656469742073637265656e20666f722074686174206d6f64756c652e20416c77617973206265207375726520746f207361766520616e6420636c6f736520616e79206d6f64756c6520796f7520656469742e3c2f703e3c703e4a6f6f6d6c612120616c736f20696e636c75646573206d616e79206f74686572206d6f64756c657320796f752063616e20696e636f72706f7261746520696e20796f757220736974652e20417320796f7520646576656c6f7020796f7572207369746520796f75206d61792077616e7420746f20616464206d6f7265206d6f64756c6573207468617420796f752063616e2066696e6420617420746865203c6120687265663d68747470733a2f2f657874656e73696f6e732e6a6f6f6d6c612e6f72672f3e4a6f6f6d6c6120457874656e73696f6e73204469726563746f72792e3c2f613e3c2f703e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3536303a227b22696d6167655f696e74726f223a22696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361332d313230302e6a7067236a6f6f6d6c61496d6167653a5c2f5c2f6c6f63616c2d696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361332d313230302e6a70673f77696474683d31323030266865696768743d343030222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22696d6167655f696e74726f5f616c745f656d707479223a312c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361332d3430302e6a7067236a6f6f6d6c61496d6167653a5c2f5c2f6c6f63616c2d696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361332d3430302e6a70673f77696474683d343030266865696768743d343030222c22666c6f61745f66756c6c74657874223a22666c6f61742d7374617274222c22696d6167655f66756c6c746578745f616c74223a2243726162204e6562756c61222c22696d6167655f66756c6c746578745f616c745f656d707479223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a227777772e6e6173612e676f765c2f6d756c74696d656469615c2f696d61676567616c6c657279227d223b733a353a226361746964223b693a383b733a31303a22637265617465645f6279223b693a3535313b733a31363a22637265617465645f62795f616c696173223b733a363a224a6f6f6d6c61223b733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a313b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a343a22426c6f67223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a31343a22353a796f75722d6d6f64756c6573223b733a373a22636174736c7567223b733a363a22383a626c6f67223b733a363a22617574686f72223b733a363a2244616e746573223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a383a22696d61676555726c223b733a3132393a22696d616765732f73616d706c65646174612f63617373696f706569612f6e617361332d313230302e6a7067236a6f6f6d6c61496d6167653a2f2f6c6f63616c2d696d616765732f73616d706c65646174612f63617373696f706569612f6e617361332d313230302e6a70673f77696474683d31323030266865696768743d343030223b733a383a22696d616765416c74223b733a303a22223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032322d30362d30372030393a31343a3231223b693a31303b4e3b693a31313b733a36373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d353a796f75722d6d6f64756c65732663617469643d38223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a363a224a6f6f6d6c61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31303b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a343a22426c6f67223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a31323a22596f7572204d6f64756c6573223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d35223b7d),
(14, 'index.php?option=com_content&view=article&id=6', 'index.php?option=com_content&view=article&id=6:your-template&catid=8', 'Your Template', ' Templates control the look and feel of your website. This blog is installed with the Cassiopeia template. You can edit the options by selecting the Working on Your Site, Template Settings link in the menu which is visible when you log in. For example you can change the site background colour, highlights colour, site title, site description and title font used. More options are available in the site administrator. You may also install a new template using the extension manager. ', '2022-06-07 09:14:21', 'c28af725284a0df4651f271338539a85', 1, 1, 1, '*', '2022-06-07 09:14:21', NULL, '2022-06-07 09:14:21', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a3438333a222054656d706c6174657320636f6e74726f6c20746865206c6f6f6b20616e64206665656c206f6620796f757220776562736974652e205468697320626c6f6720697320696e7374616c6c65642077697468207468652043617373696f706569612074656d706c6174652e20596f752063616e206564697420746865206f7074696f6e732062792073656c656374696e672074686520576f726b696e67206f6e20596f757220536974652c2054656d706c6174652053657474696e6773206c696e6b20696e20746865206d656e752077686963682069732076697369626c65207768656e20796f75206c6f6720696e2e20466f72206578616d706c6520796f752063616e206368616e6765207468652073697465206261636b67726f756e6420636f6c6f75722c20686967686c696768747320636f6c6f75722c2073697465207469746c652c2073697465206465736372697074696f6e20616e64207469746c6520666f6e7420757365642e204d6f7265206f7074696f6e732061726520617661696c61626c6520696e2074686520736974652061646d696e6973747261746f722e20596f75206d617920616c736f20696e7374616c6c2061206e65772074656d706c617465207573696e672074686520657874656e73696f6e206d616e616765722e20223b693a333b613a32373a7b733a323a226964223b693a363b733a353a22616c696173223b733a31333a22796f75722074656d706c617465223b733a373a2273756d6d617279223b733a3531323a223c703e54656d706c6174657320636f6e74726f6c20746865206c6f6f6b20616e64206665656c206f6620796f757220776562736974652e3c2f703e3c703e5468697320626c6f6720697320696e7374616c6c65642077697468207468652043617373696f706569612074656d706c6174652e3c2f703e3c703e596f752063616e206564697420746865206f7074696f6e732062792073656c656374696e672074686520576f726b696e67206f6e20596f757220536974652c2054656d706c6174652053657474696e6773206c696e6b20696e20746865206d656e752077686963682069732076697369626c65207768656e20796f75206c6f6720696e2e3c2f703e3c703e466f72206578616d706c6520796f752063616e206368616e6765207468652073697465206261636b67726f756e6420636f6c6f75722c20686967686c696768747320636f6c6f75722c2073697465207469746c652c2073697465206465736372697074696f6e20616e64207469746c6520666f6e7420757365642e3c2f703e3c703e4d6f7265206f7074696f6e732061726520617661696c61626c6520696e2074686520736974652061646d696e6973747261746f722e20596f75206d617920616c736f20696e7374616c6c2061206e65772074656d706c617465207573696e672074686520657874656e73696f6e206d616e616765722e3c2f703e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3534383a227b22696d6167655f696e74726f223a22696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361342d313230302e6a7067236a6f6f6d6c61496d6167653a5c2f5c2f6c6f63616c2d696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361342d313230302e6a70673f77696474683d31323030266865696768743d343030222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22696d6167655f696e74726f5f616c745f656d707479223a312c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361342d3430302e6a7067236a6f6f6d6c61496d6167653a5c2f5c2f6c6f63616c2d696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361342d3430302e6a70673f77696474683d343030266865696768743d343030222c22666c6f61745f66756c6c74657874223a22666c6f61742d7374617274222c22696d6167655f66756c6c746578745f616c74223a22222c22696d6167655f66756c6c746578745f616c745f656d707479223a312c22696d6167655f66756c6c746578745f63617074696f6e223a227777772e6e6173612e676f765c2f6d756c74696d656469615c2f696d61676567616c6c657279227d223b733a353a226361746964223b693a383b733a31303a22637265617465645f6279223b693a3535313b733a31363a22637265617465645f62795f616c696173223b733a363a224a6f6f6d6c61223b733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a313b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a343a22426c6f67223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a31353a22363a796f75722d74656d706c617465223b733a373a22636174736c7567223b733a363a22383a626c6f67223b733a363a22617574686f72223b733a363a2244616e746573223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a383a22696d61676555726c223b733a3132393a22696d616765732f73616d706c65646174612f63617373696f706569612f6e617361342d313230302e6a7067236a6f6f6d6c61496d6167653a2f2f6c6f63616c2d696d616765732f73616d706c65646174612f63617373696f706569612f6e617361342d313230302e6a70673f77696474683d31323030266865696768743d343030223b733a383a22696d616765416c74223b733a303a22223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032322d30362d30372030393a31343a3231223b693a31303b4e3b693a31313b733a36383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d363a796f75722d74656d706c6174652663617469643d38223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a363a224a6f6f6d6c61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31303b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a343a22426c6f67223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a31333a22596f75722054656d706c617465223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d36223b7d),
(15, 'index.php?option=com_content&view=article&id=7', 'index.php?option=com_content&view=article&id=7:millions&catid=10', 'Millions', ' Millions of Websites are built on Joomla! Learn more about beautiful blog presentation. ', '2022-06-07 09:14:21', 'c49bd185984d1032d770dc664130125f', 1, 1, 1, '*', '2022-06-07 09:14:21', NULL, '2022-06-07 09:14:21', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a38393a22204d696c6c696f6e73206f6620576562736974657320617265206275696c74206f6e204a6f6f6d6c6121204c6561726e206d6f72652061626f75742062656175746966756c20626c6f672070726573656e746174696f6e2e20223b693a333b613a32373a7b733a323a226964223b693a373b733a353a22616c696173223b733a383a226d696c6c696f6e73223b733a373a2273756d6d617279223b733a3131373a223c703e3c7374726f6e673e4d696c6c696f6e73206f6620576562736974657320617265206275696c74206f6e204a6f6f6d6c61213c2f7374726f6e673e3c2f703e3c703e4c6561726e206d6f72652061626f75742062656175746966756c20626c6f672070726573656e746174696f6e2e3c2f703e223b733a343a22626f6479223b733a3237343a223c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e63747573206573743c2f703e223b733a363a22696d61676573223b733a3234313a227b22696d6167655f696e74726f223a22696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361312d3634302e6a7067236a6f6f6d6c61496d6167653a5c2f5c2f6c6f63616c2d696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361312d3634302e6a70673f77696474683d363430266865696768743d333230222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22696d6167655f696e74726f5f616c745f656d707479223a312c22696d6167655f696e74726f5f63617074696f6e223a22227d223b733a353a226361746964223b693a31303b733a31303a22637265617465645f6279223b693a3535313b733a31363a22637265617465645f62795f616c696173223b733a363a224a6f6f6d6c61223b733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a313b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a363a224a6f6f6d6c61223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a31303a22373a6d696c6c696f6e73223b733a373a22636174736c7567223b733a393a2231303a6a6f6f6d6c61223b733a363a22617574686f72223b733a363a2244616e746573223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a383a22696d61676555726c223b733a3132363a22696d616765732f73616d706c65646174612f63617373696f706569612f6e617361312d3634302e6a7067236a6f6f6d6c61496d6167653a2f2f6c6f63616c2d696d616765732f73616d706c65646174612f63617373696f706569612f6e617361312d3634302e6a70673f77696474683d363430266865696768743d333230223b733a383a22696d616765416c74223b733a303a22223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032322d30362d30372030393a31343a3231223b693a31303b4e3b693a31313b733a36343a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d373a6d696c6c696f6e732663617469643d3130223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a363a224a6f6f6d6c61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31303b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a363a224a6f6f6d6c61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31343b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a383a224d696c6c696f6e73223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d37223b7d);
INSERT INTO `xd5bf_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(16, 'index.php?option=com_content&view=article&id=8', 'index.php?option=com_content&view=article&id=8:love&catid=10', 'Love', ' We love Joomla to the moon and back! Thank you to all volunteers who have contributed! ', '2022-06-07 09:14:21', 'b2c260a8793227d0cc95599eb9c6a4c1', 1, 1, 1, '*', '2022-06-07 09:14:21', NULL, '2022-06-07 09:14:21', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a38383a22205765206c6f7665204a6f6f6d6c6120746f20746865206d6f6f6e20616e64206261636b21205468616e6b20796f7520746f20616c6c20766f6c756e74656572732077686f206861766520636f6e74726962757465642120223b693a333b613a32373a7b733a323a226964223b693a383b733a353a22616c696173223b733a343a226c6f7665223b733a373a2273756d6d617279223b733a3131363a223c703e3c7374726f6e673e5765206c6f7665204a6f6f6d6c6120746f20746865206d6f6f6e20616e64206261636b213c2f7374726f6e673e3c2f703e3c703e5468616e6b20796f7520746f20616c6c20766f6c756e74656572732077686f206861766520636f6e7472696275746564213c2f703e223b733a343a22626f6479223b733a3535373a223c703e5575726e697020677265656e7320796172726f7720726963656265616e20727574616261676120656e64697665206361756c69666c6f77657220736561206c657474756365206b6f686c7261626920616d6172616e7468207761746572207370696e6163682061766f6361646f206461696b6f6e206e6170612063616262616765206173706172616775732077696e74657220707572736c616e65206b616c652e2043656c65727920706f7461746f207363616c6c696f6e206465736572742072616973696e20686f727365726164697368207370696e61636820636172726f7420736f6b6f2e204c6f74757320726f6f74207761746572207370696e6163682066656e6e656c206b6f6d6275206d61697a652062616d626f6f2073686f6f7420677265656e206265616e207377697373206368617264207365616b616c652070756d706b696e206f6e696f6e20636869636b706561206772616d20636f726e207065612e204272757373656c73207370726f757420636f7269616e6465722077617465722063686573746e757420676f7572642073776973732063686172642077616b616d65206b6f686c726162692062656574726f6f7420636172726f7420776174657263726573732e20436f726e20616d6172616e74682073616c736966792062756e7961206e757473206e6f726920617a756b69206265616e20636869636b7765656420706f7461746f2062656c6c20706570706572206172746963686f6b652e3c2f703e20223b733a363a22696d61676573223b733a3234313a227b22696d6167655f696e74726f223a22696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361322d3634302e6a7067236a6f6f6d6c61496d6167653a5c2f5c2f6c6f63616c2d696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361322d3634302e6a70673f77696474683d363430266865696768743d333230222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22696d6167655f696e74726f5f616c745f656d707479223a312c22696d6167655f696e74726f5f63617074696f6e223a22227d223b733a353a226361746964223b693a31303b733a31303a22637265617465645f6279223b693a3535313b733a31363a22637265617465645f62795f616c696173223b733a363a224a6f6f6d6c61223b733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a313b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a363a224a6f6f6d6c61223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a363a22383a6c6f7665223b733a373a22636174736c7567223b733a393a2231303a6a6f6f6d6c61223b733a363a22617574686f72223b733a363a2244616e746573223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a383a22696d61676555726c223b733a3132363a22696d616765732f73616d706c65646174612f63617373696f706569612f6e617361322d3634302e6a7067236a6f6f6d6c61496d6167653a2f2f6c6f63616c2d696d616765732f73616d706c65646174612f63617373696f706569612f6e617361322d3634302e6a70673f77696474683d363430266865696768743d333230223b733a383a22696d616765416c74223b733a303a22223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032322d30362d30372030393a31343a3231223b693a31303b4e3b693a31313b733a36303a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d383a6c6f76652663617469643d3130223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a363a224a6f6f6d6c61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31303b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a363a224a6f6f6d6c61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31343b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a343a224c6f7665223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d38223b7d),
(17, 'index.php?option=com_content&view=article&id=9', 'index.php?option=com_content&view=article&id=9:joomla&catid=10', 'Joomla', ' We proudly present Joomla Version 4! Learn more about workflows in Joomla. ', '2022-06-07 09:14:21', '53bbf7e81117365322003c6f3d445a57', 1, 1, 1, '*', '2022-06-07 09:14:21', NULL, '2022-06-07 09:14:21', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a37363a222057652070726f75646c792070726573656e74204a6f6f6d6c612056657273696f6e203421204c6561726e206d6f72652061626f757420776f726b666c6f777320696e204a6f6f6d6c612e20223b693a333b613a32373a7b733a323a226964223b693a393b733a353a22616c696173223b733a363a226a6f6f6d6c61223b733a373a2273756d6d617279223b733a3130343a223c703e3c7374726f6e673e57652070726f75646c792070726573656e74204a6f6f6d6c612056657273696f6e2034213c2f7374726f6e673e3c2f703e3c703e4c6561726e206d6f72652061626f757420776f726b666c6f777320696e204a6f6f6d6c612e3c2f703e223b733a343a22626f6479223b733a3339363a223c703e43757063616b6520697073756d20646f6c6f722e2053697420616d657420636f74746f6e2063616e64792069636520637265616d20736573616d6520736e6170732063616b65206d617273686d616c6c6f7720706f776465722e2049636520637265616d2063686f636f6c6174652063616b65206d617273686d616c6c6f772068616c76616820626f6e626f6e2e2044726167c3a96520636172726f742063616b652064616e6973682063616e6479206d756666696e2062726f776e69652e2043616e647920737567617220706c756d2069636520637265616d206368757061206368757073206d616361726f6f6e20746972616d69737520736f7566666cc3a9206f61742063616b652e20546f7070696e672063686565736563616b65206c6f6c6c69706f702067756d6d69206265617273206963696e6720737765657420726f6c6c20646f6e7574206c6971756f726963652e20506965206a656c6c792d6f2063616e647920646f6e7574206f61742063616b6520636f74746f6e2063616e64792e203c2f703e223b733a363a22696d61676573223b733a3234313a227b22696d6167655f696e74726f223a22696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361332d3634302e6a7067236a6f6f6d6c61496d6167653a5c2f5c2f6c6f63616c2d696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361332d3634302e6a70673f77696474683d363430266865696768743d333230222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22696d6167655f696e74726f5f616c745f656d707479223a312c22696d6167655f696e74726f5f63617074696f6e223a22227d223b733a353a226361746964223b693a31303b733a31303a22637265617465645f6279223b693a3535313b733a31363a22637265617465645f62795f616c696173223b733a363a224a6f6f6d6c61223b733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a313b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a363a224a6f6f6d6c61223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a383a22393a6a6f6f6d6c61223b733a373a22636174736c7567223b733a393a2231303a6a6f6f6d6c61223b733a363a22617574686f72223b733a363a2244616e746573223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a383a22696d61676555726c223b733a3132363a22696d616765732f73616d706c65646174612f63617373696f706569612f6e617361332d3634302e6a7067236a6f6f6d6c61496d6167653a2f2f6c6f63616c2d696d616765732f73616d706c65646174612f63617373696f706569612f6e617361332d3634302e6a70673f77696474683d363430266865696768743d333230223b733a383a22696d616765416c74223b733a303a22223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032322d30362d30372030393a31343a3231223b693a31303b4e3b693a31313b733a36323a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d393a6a6f6f6d6c612663617469643d3130223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a363a224a6f6f6d6c61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31303b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a363a224a6f6f6d6c61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31343b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a363a224a6f6f6d6c61223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d39223b7d),
(18, 'index.php?option=com_content&view=article&id=10', 'index.php?option=com_content&view=article&id=10:new-feature-workflows&catid=9', 'New feature: Workflows', ' Workflows manage the stages your articles must go through until they are published. The component to manage workflows is not enabled by default. To see the workflow that we have provided with the sample data, you first need to enable this functionality. Access the administration area From \'Content\' > \'Articles\' > \'Options\' > \'Integration\' tab set \'Enable workflow\' to \'Yes\' Save changes Now when you access \'Content\' again you will see the section \'Workflows\'. When you edit an article you will also see the new transitions for articles related to workflows. ', '2022-06-07 09:14:21', '365a9cb5d0c8ed97b78ae408c34172f4', 1, 1, 1, '*', '2022-06-07 09:14:21', NULL, '2022-06-07 09:14:21', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a3536323a2220576f726b666c6f7773206d616e616765207468652073746167657320796f75722061727469636c6573206d75737420676f207468726f75676820756e74696c207468657920617265207075626c69736865642e2054686520636f6d706f6e656e7420746f206d616e61676520776f726b666c6f7773206973206e6f7420656e61626c65642062792064656661756c742e20546f207365652074686520776f726b666c6f77207468617420776520686176652070726f76696465642077697468207468652073616d706c6520646174612c20796f75206669727374206e65656420746f20656e61626c6520746869732066756e6374696f6e616c6974792e20416363657373207468652061646d696e697374726174696f6e20617265612046726f6d2027436f6e74656e7427203e202741727469636c657327203e20274f7074696f6e7327203e2027496e746567726174696f6e2720746162207365742027456e61626c6520776f726b666c6f772720746f2027596573272053617665206368616e676573204e6f77207768656e20796f75206163636573732027436f6e74656e742720616761696e20796f752077696c6c20736565207468652073656374696f6e2027576f726b666c6f7773272e205768656e20796f75206564697420616e2061727469636c6520796f752077696c6c20616c736f2073656520746865206e6577207472616e736974696f6e7320666f722061727469636c65732072656c6174656420746f20776f726b666c6f77732e20223b693a333b613a32353a7b733a323a226964223b693a31303b733a353a22616c696173223b733a32313a226e6577206665617475726520776f726b666c6f7773223b733a373a2273756d6d617279223b733a3632343a223c703e576f726b666c6f7773206d616e616765207468652073746167657320796f75722061727469636c6573206d75737420676f207468726f75676820756e74696c207468657920617265207075626c69736865642e3c2f703e3c703e54686520636f6d706f6e656e7420746f206d616e61676520776f726b666c6f7773206973206e6f7420656e61626c65642062792064656661756c742e3c2f703e3c703e546f207365652074686520776f726b666c6f77207468617420776520686176652070726f76696465642077697468207468652073616d706c6520646174612c20796f75206669727374206e65656420746f20656e61626c6520746869732066756e6374696f6e616c6974792e3c2f703e3c6f6c3e3c6c693e416363657373207468652061646d696e697374726174696f6e20617265613c2f6c693e3c6c693e46726f6d2027436f6e74656e7427203e202741727469636c657327203e20274f7074696f6e7327203e2027496e746567726174696f6e2720746162207365742027456e61626c6520776f726b666c6f772720746f2027596573273c2f6c693e3c6c693e53617665206368616e6765733c2f6c693e3c2f6f6c3e3c703e4e6f77207768656e20796f75206163636573732027436f6e74656e742720616761696e20796f752077696c6c20736565207468652073656374696f6e2027576f726b666c6f7773272e3c2f703e3c703e5768656e20796f75206564697420616e2061727469636c6520796f752077696c6c20616c736f2073656520746865206e6577207472616e736974696f6e7320666f722061727469636c65732072656c6174656420746f20776f726b666c6f77732e3c2f703e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3431303a227b22696d6167655f696e74726f223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22696d6167655f696e74726f5f616c745f656d707479223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361342d3430302e6a7067236a6f6f6d6c61496d6167653a5c2f5c2f6c6f63616c2d696d616765735c2f73616d706c65646174615c2f63617373696f706569615c2f6e617361342d3430302e6a70673f77696474683d343030266865696768743d343030222c22666c6f61745f66756c6c74657874223a22666c6f61742d656e64222c22696d6167655f66756c6c746578745f616c74223a22222c22696d6167655f66756c6c746578745f616c745f656d707479223a312c22696d6167655f66756c6c746578745f63617074696f6e223a227777772e6e6173612e676f765c2f6d756c74696d656469615c2f696d61676567616c6c657279227d223b733a353a226361746964223b693a393b733a31303a22637265617465645f6279223b693a3535313b733a31363a22637265617465645f62795f616c696173223b733a363a224a6f6f6d6c61223b733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a313b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a343a2248656c70223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a32343a2231303a6e65772d666561747572652d776f726b666c6f7773223b733a373a22636174736c7567223b733a363a22393a68656c70223b733a363a22617574686f72223b733a363a2244616e746573223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032322d30362d30372030393a31343a3231223b693a31303b4e3b693a31313b733a37373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31303a6e65772d666561747572652d776f726b666c6f77732663617469643d39223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a363a224a6f6f6d6c61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31303b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a343a2248656c70223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31323b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a32323a224e657720666561747572653a20576f726b666c6f7773223b693a31373b693a333b693a31383b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3130223b7d);
INSERT INTO `xd5bf_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(19, 'index.php?option=com_content&view=article&id=11', 'index.php?option=com_content&view=article&id=11:typography&catid=11', 'Typography', ' Colour Scheme secondary primary info success warning danger text-secondary text-primary text-info text-success text-warning text-danger Typography (h1) Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem Ipsum Dolor Sit Amet (h2) Lorem ipsum dolor sit amet, consectetuer adipiscing elit (strong), sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem Ipsum Dolor Sit Amet (h3) Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem Ipsum Dolor Sit Amet (h4) Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem Ipsum Dolor Sit Amet (h5) Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem ipsum dolor (a) Lists (ol)(li) Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur (ul)(li) Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur Displays Lorem (display-1) Lorem (display-2) Lorem ipsum (display-3) Lorem ipsum (display-4) Lorem ipsum arma virumque cano (lead) ', '2022-06-07 09:14:21', '91fdb74a3416464a5032ae3ff932f5fe', 1, 1, 1, '*', '2022-06-07 09:14:21', NULL, '2022-06-07 09:14:21', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a313930333a2220436f6c6f757220536368656d65207365636f6e64617279207072696d61727920696e666f2073756363657373207761726e696e672064616e67657220746578742d7365636f6e6461727920746578742d7072696d61727920746578742d696e666f20746578742d7375636365737320746578742d7761726e696e6720746578742d64616e676572205479706f6772617068792028683129204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c69717569702065782e20287029204c6f72656d20497073756d20446f6c6f722053697420416d65742028683229204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c697420287374726f6e67292c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c69717569702065782e20287029204c6f72656d20497073756d20446f6c6f722053697420416d65742028683329204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c69717569702065782e20287029204c6f72656d20497073756d20446f6c6f722053697420416d65742028683429204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c69717569702065782e20287029204c6f72656d20497073756d20446f6c6f722053697420416d65742028683529204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c69717569702065782e20287029204c6f72656d20697073756d20646f6c6f7220286129204c6973747320286f6c29286c6929204c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e7365637465747572204c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e73656374657475722028756c29286c6929204c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e7365637465747572204c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736563746574757220446973706c617973204c6f72656d2028646973706c61792d3129204c6f72656d2028646973706c61792d3229204c6f72656d20697073756d2028646973706c61792d3329204c6f72656d20697073756d2028646973706c61792d3429204c6f72656d20697073756d2061726d6120766972756d7175652063616e6f20286c6561642920223b693a333b613a32353a7b733a323a226964223b693a31313b733a353a22616c696173223b733a31303a227479706f677261706879223b733a373a2273756d6d617279223b733a323731373a223c68313e436f6c6f757220536368656d653c2f68313e203c703e203c7370616e20636c6173733d2262746e2062746e2d7365636f6e64617279223e7365636f6e646172793c2f7370616e3e2020203c7370616e20636c6173733d2262746e2062746e2d7072696d617279223e7072696d6172793c2f7370616e3e2020203c7370616e20636c6173733d2262746e2062746e2d696e666f223e696e666f3c2f7370616e3e2020203c7370616e20636c6173733d2262746e2062746e2d73756363657373223e737563636573733c2f7370616e3e2020203c7370616e20636c6173733d2262746e2062746e2d7761726e696e67223e7761726e696e673c2f7370616e3e2020203c7370616e20636c6173733d2262746e2062746e2d64616e676572223e64616e6765723c2f7370616e3e203c2f703e203c703e3c7370616e20636c6173733d227465787420746578742d7365636f6e64617279223e746578742d7365636f6e646172793c2f7370616e3e20203c7370616e20636c6173733d227465787420746578742d7072696d617279223e746578742d7072696d6172793c2f7370616e3e20203c7370616e20636c6173733d227465787420746578742d696e666f223e746578742d696e666f3c2f7370616e3e20203c7370616e20636c6173733d227465787420746578742d73756363657373223e746578742d737563636573733c2f7370616e3e20203c7370616e20636c6173733d227465787420746578742d7761726e696e67223e746578742d7761726e696e673c2f7370616e3e20203c7370616e20636c6173733d227465787420746578742d64616e676572223e746578742d64616e6765723c2f7370616e3e3c2f703e3c68313e5479706f67726170687920286831293c2f68313e3c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c69717569702065782e202870293c2f703e3c68323e4c6f72656d20497073756d20446f6c6f722053697420416d657420286832293c2f68323e3c703e3c7374726f6e673e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c6974203c2f7374726f6e673e20287374726f6e67292c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c69717569702065782e202870293c2f703e3c68333e4c6f72656d20497073756d20446f6c6f722053697420416d657420286833293c2f68333e3c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c69717569702065782e202870293c2f703e3c68343e4c6f72656d20497073756d20446f6c6f722053697420416d657420286834293c2f68343e3c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c69717569702065782e202870293c2f703e3c68353e4c6f72656d20497073756d20446f6c6f722053697420416d657420286835293c2f68353e3c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c69717569702065782e202870293c2f703e203c703e3c6120687265663d22696e6465782e706870223e204c6f72656d20697073756d20646f6c6f72202861293c2f613e3c2f703e3c68313e4c697374733c2f68313e203c703e286f6c29286c69293c2f703e203c6f6c3e203c6c693e4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e73656374657475723c2f6c693e203c6c693e4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e73656374657475723c2f6c693e203c2f6f6c3e203c703e28756c29286c69293c2f703e203c756c3e203c6c693e4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e73656374657475723c2f6c693e203c6c693e4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e73656374657475723c2f6c693e203c2f756c3e203c68313e446973706c6179733c2f68313e3c7020636c6173733d22646973706c61792d31223e4c6f72656d2028646973706c61792d31293c2f703e3c7020636c6173733d22646973706c61792d32223e4c6f72656d2028646973706c61792d32293c2f703e3c7020636c6173733d22646973706c61792d33223e4c6f72656d20697073756d2028646973706c61792d33293c2f703e3c7020636c6173733d22646973706c61792d34223e4c6f72656d20697073756d2028646973706c61792d34293c2f703e3c7020636c6173733d226c656164223e4c6f72656d20697073756d2061726d6120766972756d7175652063616e6f20286c656164293c2f703e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a303a22223b733a353a226361746964223b693a31313b733a31303a22637265617465645f6279223b693a3535313b733a31363a22637265617465645f62795f616c696173223b733a363a224a6f6f6d6c61223b733a383a226d6f646966696564223b733a31393a22323032322d30362d30372030393a31343a3231223b733a31313a226d6f6469666965645f6279223b693a3535313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a313b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a31303a225479706f677261706879223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a31333a2231313a7479706f677261706879223b733a373a22636174736c7567223b733a31333a2231313a7479706f677261706879223b733a363a22617574686f72223b733a363a2244616e746573223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032322d30362d30372030393a31343a3231223b693a31303b4e3b693a31313b733a36373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31313a7479706f6772617068792663617469643d3131223b693a31323b4e3b693a31333b733a31393a22323032322d30362d30372030393a31343a3231223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a363a224a6f6f6d6c61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31303b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31303a225479706f677261706879223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31353b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a31303a225479706f677261706879223b693a31373b693a333b693a31383b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3131223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_finder_links_terms`
--

CREATE TABLE `xd5bf_finder_links_terms` (
  `link_id` int UNSIGNED NOT NULL,
  `term_id` int UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_finder_links_terms`
--

INSERT INTO `xd5bf_finder_links_terms` (`link_id`, `term_id`, `weight`) VALUES
(1, 1, 1.97321),
(15, 1, 2.34652),
(1, 2, 0.48),
(2, 2, 0.48),
(3, 2, 0.48),
(4, 2, 0.48),
(9, 2, 0.48),
(10, 2, 0.48),
(11, 2, 0.48),
(12, 2, 0.48),
(13, 2, 0.48),
(14, 2, 0.48),
(15, 2, 0.48),
(16, 2, 0.48),
(17, 2, 0.48),
(18, 2, 0.48),
(19, 2, 0.48),
(1, 3, 0.17),
(10, 3, 0.17),
(2, 4, 2.22),
(2, 5, 0.17),
(11, 5, 0.17),
(3, 7, 0.98679),
(16, 7, 1.17348),
(17, 8, 0.07),
(3, 8, 0.17),
(12, 8, 0.17),
(4, 8, 0.37),
(9, 10, 0.48),
(11, 10, 0.48),
(12, 10, 0.48),
(14, 10, 0.48),
(18, 10, 0.48),
(19, 10, 0.48),
(15, 10, 0.76),
(16, 10, 0.76),
(13, 10, 1.04),
(4, 10, 1.48),
(7, 10, 1.48),
(10, 10, 1.88),
(17, 10, 2.52),
(4, 11, 0.17),
(13, 11, 0.17),
(9, 13, 0.18669),
(14, 13, 0.18669),
(15, 13, 0.18669),
(12, 13, 0.56007),
(5, 13, 0.98679),
(11, 13, 1.17348),
(5, 14, 0.17),
(16, 14, 0.17),
(10, 16, 0.37338),
(6, 16, 0.98679),
(6, 17, 0.17),
(17, 17, 0.17),
(7, 19, 0.34),
(18, 19, 0.34),
(8, 20, 2.46679),
(19, 20, 2.93348),
(8, 21, 0.34),
(19, 21, 0.34),
(15, 23, 0.23331),
(17, 23, 0.23331),
(10, 23, 0.46662),
(12, 23, 1.23321),
(9, 23, 1.46652),
(9, 24, 0.04669),
(14, 24, 0.04669),
(19, 24, 0.04669),
(11, 24, 0.09338),
(13, 24, 0.14007),
(10, 24, 0.18676),
(12, 24, 0.18676),
(9, 25, 0.18669),
(10, 25, 0.18669),
(11, 25, 0.37338),
(9, 26, 0.14),
(13, 26, 0.14),
(16, 26, 0.14),
(12, 26, 0.28),
(14, 26, 0.28),
(11, 26, 0.56),
(10, 26, 1.4),
(9, 27, 0.14),
(13, 27, 0.14),
(14, 27, 0.14),
(15, 27, 0.14),
(18, 27, 0.14),
(12, 27, 0.28),
(10, 27, 0.7),
(9, 28, 0.09331),
(10, 28, 0.09331),
(13, 28, 0.09331),
(11, 28, 0.18662),
(9, 29, 0.14),
(9, 30, 0.09331),
(12, 30, 0.09331),
(13, 30, 0.09331),
(14, 30, 0.09331),
(18, 30, 0.09331),
(11, 31, 0.18669),
(14, 31, 0.18669),
(18, 31, 0.18669),
(9, 31, 0.37338),
(13, 31, 0.74676),
(9, 32, 0.18669),
(13, 32, 0.18669),
(9, 33, 0.09331),
(17, 33, 0.09331),
(11, 33, 0.18662),
(14, 33, 0.27993),
(12, 33, 0.37324),
(10, 33, 0.46655),
(13, 33, 0.65317),
(9, 34, 0.09331),
(10, 34, 0.27993),
(11, 34, 0.27993),
(9, 35, 0.28),
(10, 35, 0.28),
(12, 35, 0.28),
(13, 35, 0.28),
(9, 36, 0.18669),
(11, 36, 0.18669),
(10, 36, 0.37338),
(12, 36, 1.54686),
(9, 37, 0.28),
(9, 38, 0.42),
(14, 38, 0.42),
(9, 39, 0.23331),
(16, 40, 0.14),
(9, 40, 0.28),
(11, 40, 0.7),
(18, 40, 0.98),
(14, 40, 1.12),
(13, 40, 1.26),
(12, 40, 1.68),
(10, 40, 2.52),
(13, 41, 0.18669),
(14, 41, 0.18669),
(18, 41, 0.18669),
(10, 41, 0.37338),
(11, 41, 0.37338),
(9, 41, 0.56007),
(9, 42, 0.09331),
(16, 42, 0.18662),
(18, 42, 0.46655),
(12, 42, 0.55986),
(13, 42, 0.55986),
(11, 42, 0.86645),
(10, 42, 1.30634),
(9, 43, 0.18669),
(14, 43, 0.18669),
(10, 43, 0.37338),
(13, 43, 0.37338),
(18, 43, 0.37338),
(9, 44, 0.14),
(10, 44, 0.14),
(16, 44, 0.14),
(9, 45, 0.18669),
(12, 45, 0.18669),
(13, 45, 0.37338),
(18, 45, 0.37338),
(11, 45, 0.56007),
(10, 45, 1.12014),
(9, 46, 0.28),
(16, 47, 0.14),
(9, 47, 0.42),
(14, 47, 0.56),
(18, 47, 0.7),
(12, 47, 0.84),
(11, 47, 0.98),
(13, 47, 1.54),
(10, 47, 2.1),
(9, 48, 0.17),
(11, 54, 0.09331),
(12, 54, 0.09331),
(13, 54, 0.09331),
(14, 54, 0.09331),
(15, 54, 0.09331),
(10, 54, 0.77314),
(12, 55, 0.37338),
(11, 55, 0.56007),
(13, 55, 0.74676),
(14, 55, 0.93345),
(10, 55, 2.85369),
(14, 56, 0.32669),
(10, 56, 2.38017),
(18, 57, 0.18669),
(11, 57, 1.17348),
(14, 57, 1.36017),
(10, 57, 1.73355),
(12, 57, 1.73355),
(13, 57, 2.48031),
(10, 58, 0.7),
(10, 59, 0.23331),
(10, 60, 0.28),
(10, 61, 0.28),
(13, 61, 0.28),
(18, 61, 0.56),
(10, 62, 0.14),
(11, 62, 0.14),
(13, 62, 0.14),
(11, 63, 0.60669),
(13, 63, 0.60669),
(14, 63, 0.60669),
(12, 63, 1.21338),
(10, 63, 1.82007),
(10, 64, 0.74662),
(10, 65, 0.32669),
(13, 65, 0.32669),
(10, 66, 0.18669),
(14, 66, 0.18669),
(18, 66, 0.18669),
(11, 66, 0.37338),
(13, 66, 0.37338),
(10, 67, 0.09331),
(12, 67, 0.09331),
(13, 67, 0.09331),
(18, 67, 0.09331),
(10, 68, 0.32669),
(11, 68, 0.32669),
(12, 68, 0.32669),
(18, 68, 0.32669),
(10, 69, 0.37331),
(11, 69, 0.74662),
(12, 69, 0.74662),
(18, 69, 0.74662),
(13, 69, 1.11993),
(11, 70, 0.09331),
(13, 70, 0.09331),
(10, 70, 0.27993),
(13, 71, 0.09331),
(15, 71, 0.09331),
(10, 71, 0.18662),
(14, 72, 0.42),
(10, 72, 0.84),
(10, 73, 0.23331),
(10, 74, 0.32669),
(10, 75, 0.14),
(10, 76, 0.32669),
(11, 77, 0.14),
(12, 77, 0.28),
(14, 77, 0.28),
(10, 77, 0.7),
(13, 77, 0.7),
(13, 78, 0.28),
(14, 78, 0.28),
(12, 78, 0.56),
(10, 78, 0.84),
(10, 79, 0.46669),
(10, 80, 0.60669),
(10, 81, 0.32669),
(12, 81, 0.65338),
(10, 82, 0.32669),
(14, 82, 0.32669),
(10, 83, 0.28),
(11, 83, 0.28),
(10, 84, 0.37331),
(10, 85, 0.37331),
(10, 86, 0.32669),
(18, 86, 0.32669),
(10, 87, 0.51331),
(14, 87, 0.51331),
(10, 88, 0.37331),
(10, 89, 0.42),
(10, 90, 0.27993),
(10, 91, 0.60669),
(10, 92, 0.23331),
(10, 93, 0.37338),
(10, 94, 0.23331),
(10, 95, 0.42),
(14, 95, 0.42),
(10, 96, 0.46669),
(13, 96, 0.46669),
(10, 97, 0.23331),
(18, 97, 0.23331),
(13, 98, 0.14),
(14, 98, 0.14),
(18, 98, 0.14),
(10, 98, 0.28),
(10, 99, 0.28),
(10, 100, 0.18669),
(12, 101, 0.18669),
(18, 101, 0.18669),
(10, 101, 0.56007),
(10, 102, 0.42),
(10, 103, 0.14),
(10, 104, 0.09331),
(11, 104, 0.09331),
(18, 104, 0.09331),
(10, 105, 0.14),
(13, 105, 0.28),
(10, 106, 0.18669),
(12, 106, 0.18669),
(16, 106, 0.18669),
(18, 106, 0.18669),
(10, 107, 0.18669),
(11, 108, 0.09331),
(13, 108, 0.09331),
(10, 108, 0.18662),
(12, 108, 0.27993),
(10, 109, 0.51331),
(14, 110, 0.32669),
(10, 110, 0.65338),
(10, 111, 0.42),
(13, 112, 0.09331),
(18, 112, 0.09331),
(11, 112, 0.18662),
(12, 112, 0.18662),
(14, 112, 0.18662),
(10, 112, 0.37324),
(10, 113, 0.23331),
(10, 114, 0.18669),
(10, 115, 0.23331),
(15, 115, 0.23331),
(17, 115, 0.23331),
(10, 116, 0.23331),
(10, 117, 0.18669),
(10, 118, 0.18669),
(11, 118, 0.18669),
(12, 118, 0.18669),
(14, 118, 0.18669),
(10, 119, 0.18669),
(10, 120, 0.14),
(11, 120, 0.14),
(14, 120, 0.14),
(11, 121, 0.23331),
(10, 121, 0.46662),
(13, 121, 0.46662),
(10, 122, 0.18669),
(10, 123, 0.18669),
(14, 123, 0.18669),
(10, 124, 0.32669),
(10, 125, 0.18669),
(13, 125, 0.37338),
(10, 126, 0.18669),
(10, 127, 0.18669),
(13, 127, 0.18669),
(14, 127, 0.18669),
(10, 128, 0.23331),
(10, 129, 0.65338),
(13, 129, 3.03355),
(12, 130, 0.18669),
(13, 130, 0.18669),
(14, 130, 0.18669),
(15, 130, 0.18669),
(17, 130, 0.18669),
(10, 130, 0.56007),
(10, 131, 0.18669),
(10, 132, 0.18669),
(10, 133, 0.18669),
(18, 133, 0.18669),
(11, 134, 0.14),
(14, 134, 0.14),
(10, 134, 0.28),
(18, 134, 0.88),
(10, 135, 0.14),
(18, 135, 0.14),
(10, 136, 0.14),
(18, 136, 0.14),
(12, 137, 0.09331),
(14, 137, 0.09331),
(15, 137, 0.09331),
(11, 137, 0.18662),
(13, 137, 0.18662),
(10, 137, 0.55986),
(10, 138, 0.14),
(10, 139, 0.18669),
(10, 140, 0.18669),
(10, 141, 0.32669),
(12, 141, 0.32669),
(13, 141, 0.32669),
(14, 141, 0.65338),
(10, 142, 0.27993),
(13, 143, 0.23331),
(11, 143, 0.46662),
(10, 143, 0.69993),
(10, 144, 0.18669),
(10, 145, 0.23331),
(12, 145, 0.23331),
(10, 146, 0.37331),
(10, 147, 0.74662),
(10, 148, 0.32669),
(10, 149, 0.42),
(18, 149, 0.42),
(10, 150, 0.46669),
(10, 151, 0.18669),
(10, 152, 0.18669),
(13, 152, 0.18669),
(18, 152, 0.18669),
(11, 153, 0.14),
(12, 153, 0.14),
(10, 153, 0.42),
(18, 153, 0.42),
(10, 154, 0.18669),
(13, 155, 0.28),
(10, 155, 0.84),
(10, 156, 0.46669),
(10, 157, 0.65338),
(14, 158, 0.37331),
(10, 158, 0.74662),
(12, 158, 0.74662),
(10, 159, 0.18669),
(10, 160, 0.18669),
(13, 160, 0.18669),
(10, 161, 0.18669),
(10, 162, 0.28),
(10, 163, 0.14),
(13, 163, 0.14),
(10, 164, 0.74662),
(14, 164, 3.09314),
(10, 165, 0.42),
(14, 165, 0.42),
(18, 166, 0.18669),
(13, 166, 0.56007),
(10, 166, 0.93345),
(10, 167, 0.18669),
(10, 168, 0.46662),
(12, 168, 0.46662),
(10, 169, 0.28),
(10, 170, 0.18669),
(10, 171, 0.46662),
(14, 171, 0.46662),
(10, 172, 0.32669),
(10, 173, 1.02662),
(10, 174, 0.09331),
(10, 175, 0.18669),
(13, 175, 0.18669),
(14, 175, 0.18669),
(10, 176, 0.18669),
(13, 177, 0.23331),
(10, 177, 0.46662),
(10, 178, 0.23331),
(14, 178, 0.23331),
(10, 179, 0.32669),
(14, 179, 0.32669),
(10, 180, 0.37331),
(13, 181, 0.18669),
(10, 181, 0.37338),
(12, 181, 0.37338),
(10, 182, 0.18669),
(10, 183, 0.23331),
(14, 184, 0.23331),
(10, 184, 0.46662),
(13, 184, 1.63317),
(13, 185, 0.18669),
(14, 185, 0.18669),
(18, 185, 0.18669),
(10, 185, 0.37338),
(10, 186, 0.37338),
(11, 309, 1.72679),
(11, 310, 0.23331),
(11, 311, 0.14),
(16, 311, 0.14),
(11, 312, 0.28),
(11, 313, 0.23331),
(12, 313, 0.23331),
(11, 314, 0.23331),
(18, 315, 0.32669),
(11, 315, 0.65338),
(11, 316, 0.42),
(11, 317, 0.37331),
(11, 318, 0.28),
(11, 319, 0.18669),
(11, 320, 0.28),
(11, 321, 0.32669),
(11, 322, 0.28),
(18, 322, 0.28),
(11, 323, 0.32669),
(11, 324, 0.18669),
(11, 325, 0.18669),
(12, 340, 1.17348),
(12, 341, 0.18669),
(12, 342, 0.28),
(12, 343, 0.37331),
(13, 343, 0.37331),
(12, 344, 0.28),
(12, 345, 0.32669),
(12, 346, 0.32669),
(13, 346, 0.32669),
(12, 347, 0.18669),
(12, 348, 0.37338),
(12, 349, 0.18669),
(12, 350, 0.28),
(12, 351, 0.18669),
(12, 352, 1.12),
(12, 353, 0.56),
(12, 354, 0.28),
(12, 355, 0.23331),
(12, 356, 0.18669),
(12, 357, 0.18669),
(12, 358, 0.32669),
(12, 359, 0.28),
(12, 360, 0.18669),
(12, 361, 0.18669),
(13, 361, 0.18669),
(12, 362, 0.28),
(12, 363, 0.18669),
(12, 364, 0.37331),
(12, 365, 0.14),
(18, 365, 0.14),
(12, 366, 0.18669),
(12, 367, 0.14),
(18, 367, 0.14),
(12, 368, 0.37338),
(12, 369, 0.23331),
(12, 370, 0.28),
(12, 371, 0.14),
(13, 371, 0.14),
(13, 403, 0.56),
(13, 404, 0.28),
(13, 405, 0.14),
(13, 406, 0.28),
(13, 407, 0.23331),
(13, 408, 0.32669),
(13, 409, 0.46669),
(13, 410, 0.23331),
(13, 411, 0.37331),
(13, 412, 0.28),
(13, 413, 0.56),
(13, 414, 0.32669),
(13, 415, 0.42),
(13, 416, 0.18669),
(13, 417, 0.23331),
(13, 418, 0.46669),
(13, 419, 0.23331),
(13, 420, 0.23331),
(13, 421, 0.18669),
(13, 422, 0.18669),
(13, 423, 0.23331),
(13, 424, 0.69993),
(13, 425, 0.32669),
(13, 426, 0.37331),
(13, 427, 0.51331),
(13, 428, 0.23331),
(19, 428, 0.23331),
(13, 429, 0.32669),
(14, 429, 0.32669),
(13, 430, 0.14),
(14, 430, 0.14),
(13, 431, 1.12),
(13, 432, 0.18669),
(13, 433, 0.23331),
(13, 434, 0.14),
(13, 435, 0.65338),
(13, 436, 0.46662),
(13, 437, 0.60669),
(13, 438, 0.28),
(13, 439, 0.32669),
(13, 440, 0.46669),
(13, 441, 0.23331),
(13, 442, 0.28),
(13, 443, 0.18669),
(13, 444, 1.02662),
(13, 445, 0.32669),
(13, 446, 0.56007),
(13, 447, 0.18669),
(13, 448, 0.46662),
(13, 449, 0.14),
(13, 450, 0.93345),
(13, 451, 0.32669),
(14, 451, 0.32669),
(14, 466, 0.46669),
(14, 467, 0.46669),
(19, 468, 0.28),
(14, 468, 0.56),
(14, 469, 0.32669),
(14, 470, 0.18669),
(14, 471, 0.18669),
(14, 472, 0.46669),
(14, 473, 0.42),
(14, 474, 0.17),
(15, 481, 0.32669),
(15, 482, 0.37331),
(15, 483, 0.18669),
(17, 483, 0.18669),
(19, 483, 2.42697),
(15, 484, 0.42),
(15, 485, 0.23331),
(15, 486, 0.23331),
(15, 487, 0.46669),
(15, 488, 0.37338),
(19, 488, 0.93345),
(15, 489, 0.23331),
(17, 489, 0.23331),
(19, 489, 3.26634),
(15, 490, 0.28),
(19, 490, 1.4),
(15, 491, 0.32669),
(15, 492, 0.14),
(15, 493, 0.09331),
(15, 494, 0.28),
(15, 495, 0.23331),
(15, 496, 0.14),
(15, 497, 0.18669),
(19, 497, 0.93345),
(15, 498, 0.14),
(15, 499, 0.37324),
(15, 500, 0.42),
(15, 501, 0.37331),
(15, 502, 0.23331),
(17, 502, 0.23331),
(19, 502, 3.96627),
(15, 503, 0.23331),
(15, 504, 0.18669),
(15, 505, 0.28),
(15, 506, 0.23331),
(19, 506, 4.43289),
(15, 507, 0.23331),
(19, 507, 1.16655),
(15, 508, 0.09331),
(15, 509, 0.28),
(15, 510, 0.56),
(15, 511, 0.23331),
(15, 512, 0.46669),
(15, 513, 0.32669),
(15, 514, 0.14),
(16, 514, 0.14),
(15, 515, 0.28),
(19, 515, 0.7),
(15, 516, 0.14),
(17, 516, 0.14),
(19, 516, 1.82),
(15, 517, 0.18669),
(15, 518, 0.37331),
(15, 519, 0.28),
(15, 520, 0.09331),
(19, 520, 1.39965),
(15, 521, 0.18669),
(15, 522, 0.37331),
(15, 523, 0.37331),
(15, 524, 0.17),
(16, 544, 0.74662),
(16, 545, 0.42),
(16, 546, 0.42),
(16, 547, 0.32669),
(16, 548, 0.23331),
(16, 549, 0.18669),
(16, 550, 0.28),
(16, 551, 0.37338),
(16, 552, 0.37331),
(16, 553, 0.18669),
(16, 554, 0.37331),
(16, 555, 0.23331),
(16, 556, 0.32669),
(17, 557, 0.28),
(16, 557, 0.56),
(16, 558, 0.51331),
(16, 559, 0.28),
(16, 560, 0.46662),
(16, 561, 0.37331),
(16, 562, 0.37331),
(16, 563, 0.42),
(16, 564, 0.51331),
(16, 565, 0.42),
(16, 566, 0.37338),
(16, 567, 0.28),
(16, 568, 0.28),
(16, 569, 0.28),
(16, 570, 0.28),
(16, 571, 0.23331),
(16, 572, 0.18669),
(16, 573, 0.23331),
(16, 574, 0.28),
(16, 575, 0.51331),
(16, 576, 0.18669),
(16, 577, 0.74662),
(16, 578, 0.23331),
(16, 579, 0.32669),
(16, 580, 0.23331),
(16, 581, 0.23331),
(16, 582, 0.18669),
(16, 583, 0.18669),
(16, 584, 0.18669),
(16, 585, 0.18669),
(16, 586, 0.23331),
(16, 587, 0.14),
(16, 588, 0.28),
(16, 589, 0.56),
(16, 590, 0.32669),
(16, 591, 0.37331),
(16, 592, 0.28),
(16, 593, 0.37331),
(16, 594, 0.18669),
(16, 595, 0.37331),
(16, 596, 0.32669),
(16, 597, 0.37331),
(16, 598, 0.32669),
(16, 599, 0.23331),
(16, 600, 0.18669),
(16, 601, 0.98007),
(16, 602, 0.28),
(16, 603, 0.46662),
(16, 604, 0.23331),
(16, 605, 0.28),
(16, 606, 0.46669),
(16, 607, 0.28),
(16, 608, 0.69993),
(16, 609, 0.46669),
(16, 610, 0.09331),
(17, 610, 0.09331),
(18, 610, 0.09331),
(16, 611, 0.28),
(16, 612, 0.28),
(17, 671, 0.23331),
(17, 672, 0.28),
(17, 673, 0.32669),
(17, 674, 0.93345),
(17, 675, 1.16655),
(17, 676, 0.46669),
(17, 677, 0.42),
(17, 678, 0.23331),
(17, 679, 0.23331),
(17, 680, 0.56),
(17, 681, 0.69993),
(17, 682, 0.32669),
(17, 683, 0.28),
(17, 684, 0.46662),
(17, 685, 0.28),
(17, 686, 0.23331),
(17, 687, 0.28),
(17, 688, 0.42),
(17, 689, 0.23331),
(17, 690, 0.32669),
(17, 691, 0.42),
(17, 692, 0.37331),
(17, 693, 0.37331),
(17, 694, 1.02662),
(17, 695, 0.28),
(17, 696, 0.28),
(17, 697, 0.14),
(17, 698, 0.18669),
(17, 699, 0.28),
(17, 700, 0.32669),
(17, 701, 0.32669),
(17, 702, 0.18669),
(17, 703, 0.28),
(17, 704, 0.23331),
(17, 705, 0.32669),
(17, 706, 0.23331),
(17, 707, 0.23331),
(17, 708, 0.37331),
(17, 709, 0.32669),
(17, 710, 0.32669),
(17, 711, 0.42),
(18, 711, 3.48),
(18, 734, 1.72679),
(18, 735, 0.46669),
(18, 736, 0.84),
(18, 737, 0.32669),
(18, 738, 0.60669),
(18, 739, 0.42),
(18, 740, 0.56),
(18, 741, 0.23331),
(18, 742, 0.65331),
(18, 743, 0.23331),
(18, 744, 0.18669),
(18, 745, 0.42),
(18, 746, 0.18669),
(18, 747, 0.28),
(18, 748, 0.32669),
(18, 749, 0.60669),
(18, 750, 0.56),
(18, 751, 0.18669),
(18, 752, 0.37331),
(18, 753, 0.32669),
(18, 754, 0.32669),
(18, 755, 0.28),
(18, 756, 0.18669),
(18, 757, 0.32669),
(18, 758, 0.51331),
(18, 759, 0.23331),
(18, 760, 0.37331),
(18, 761, 0.42),
(19, 765, 0.46655),
(19, 766, 2.33345),
(19, 767, 1.63345),
(19, 768, 1.63345),
(19, 769, 0.18669),
(19, 770, 0.18669),
(19, 771, 2.8),
(19, 772, 2.05324),
(19, 773, 0.28),
(19, 774, 0.42),
(19, 775, 0.42),
(19, 776, 0.42),
(19, 777, 0.42),
(19, 778, 0.37331),
(19, 779, 0.93345),
(19, 780, 0.93345),
(19, 781, 1.63345),
(19, 782, 0.46655),
(19, 783, 1.4),
(19, 784, 0.09331),
(19, 785, 0.09331),
(19, 786, 0.09331),
(19, 787, 0.09331),
(19, 788, 0.09331),
(19, 789, 0.18669),
(19, 790, 1.63345),
(19, 791, 0.18669),
(19, 792, 0.18662),
(19, 793, 1.86655),
(19, 794, 1.16655),
(19, 795, 0.93345),
(19, 796, 0.93345),
(19, 797, 1.63345),
(19, 798, 1.63345),
(19, 799, 0.09331),
(19, 800, 0.23345),
(19, 801, 0.32669),
(19, 802, 0.93345),
(19, 803, 0.28),
(19, 804, 0.42),
(19, 805, 0.28),
(19, 806, 0.32669),
(19, 807, 1.86655),
(19, 808, 1.4),
(19, 809, 0.51331),
(19, 810, 0.42),
(19, 811, 0.56),
(19, 812, 0.65331),
(19, 813, 0.56),
(19, 814, 0.56),
(19, 815, 2.1),
(19, 816, 0.09331),
(19, 817, 2.56655),
(19, 818, 1.4),
(19, 819, 0.37331),
(19, 820, 1.86655),
(19, 821, 0.32669),
(19, 822, 0.93345);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_finder_logging`
--

CREATE TABLE `xd5bf_finder_logging` (
  `searchterm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5sum` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` blob NOT NULL,
  `hits` int NOT NULL DEFAULT '1',
  `results` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_finder_taxonomy`
--

CREATE TABLE `xd5bf_finder_taxonomy` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_finder_taxonomy`
--

INSERT INTO `xd5bf_finder_taxonomy` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `state`, `access`, `language`) VALUES
(1, 0, 0, 29, 0, '', 'ROOT', 'root', 1, 1, '*'),
(2, 1, 1, 8, 1, 'type', 'Type', 'type', 1, 1, ''),
(3, 2, 2, 3, 2, 'type/tag', 'Tag', 'tag', 1, 1, ''),
(4, 1, 9, 14, 1, 'author', 'Author', 'author', 1, 1, ''),
(5, 4, 10, 11, 2, 'author/dantes', 'Dantes', 'dantes', 1, 1, ''),
(6, 1, 15, 18, 1, 'language', 'Language', 'language', 1, 1, ''),
(7, 6, 16, 17, 2, 'language/779103c53079431d1af01ce15b36e61f', '*', '779103c53079431d1af01ce15b36e61f', 1, 1, ''),
(8, 2, 4, 5, 2, 'type/category', 'Category', 'category', 1, 1, ''),
(9, 2, 6, 7, 2, 'type/article', 'Article', 'article', 1, 1, ''),
(10, 4, 12, 13, 2, 'author/joomla', 'Joomla', 'joomla', 1, 1, ''),
(11, 1, 19, 28, 1, 'category', 'Category', 'category', 1, 1, ''),
(12, 11, 20, 21, 2, 'category/help', 'Help', 'help', 1, 1, '*'),
(13, 11, 22, 23, 2, 'category/blog', 'Blog', 'blog', 1, 1, '*'),
(14, 11, 24, 25, 2, 'category/joomla', 'Joomla', 'joomla', 1, 1, '*'),
(15, 11, 26, 27, 2, 'category/typography', 'Typography', 'typography', 1, 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_finder_taxonomy_map`
--

CREATE TABLE `xd5bf_finder_taxonomy_map` (
  `link_id` int UNSIGNED NOT NULL,
  `node_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_finder_taxonomy_map`
--

INSERT INTO `xd5bf_finder_taxonomy_map` (`link_id`, `node_id`) VALUES
(1, 3),
(1, 5),
(1, 7),
(2, 3),
(2, 5),
(2, 7),
(3, 3),
(3, 5),
(3, 7),
(4, 3),
(4, 5),
(4, 7),
(5, 7),
(5, 8),
(6, 7),
(6, 8),
(7, 7),
(7, 8),
(8, 7),
(8, 8),
(9, 7),
(9, 9),
(9, 10),
(9, 12),
(10, 7),
(10, 9),
(10, 10),
(10, 12),
(11, 7),
(11, 9),
(11, 10),
(11, 13),
(12, 7),
(12, 9),
(12, 10),
(12, 13),
(13, 7),
(13, 9),
(13, 10),
(13, 13),
(14, 7),
(14, 9),
(14, 10),
(14, 13),
(15, 7),
(15, 9),
(15, 10),
(15, 14),
(16, 7),
(16, 9),
(16, 10),
(16, 14),
(17, 7),
(17, 9),
(17, 10),
(17, 14),
(18, 7),
(18, 9),
(18, 10),
(18, 12),
(19, 7),
(19, 9),
(19, 10),
(19, 15);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_finder_terms`
--

CREATE TABLE `xd5bf_finder_terms` (
  `term_id` int UNSIGNED NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `links` int NOT NULL DEFAULT '0',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_finder_terms`
--

INSERT INTO `xd5bf_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`) VALUES
(1, 'millions', 'millions', 0, 0, 0.5333, 'M452', 2, '*'),
(2, 'dantes', 'dantes', 0, 0, 0.4, 'D532', 15, '*'),
(3, '2', '2', 0, 0, 0.1, '', 2, '*'),
(4, 'worldwide', 'worldwide', 0, 0, 0.6, 'W643', 1, '*'),
(5, '3', '3', 0, 0, 0.1, '', 2, '*'),
(7, 'love', 'love', 0, 0, 0.2667, 'L100', 2, '*'),
(8, '4', '4', 0, 0, 0.1, '', 4, '*'),
(10, 'joomla', 'joomla', 0, 0, 0.4, 'J540', 13, '*'),
(11, '5', '5', 0, 0, 0.1, '', 2, '*'),
(13, 'blog', 'blog', 0, 0, 0.2667, 'B420', 6, '*'),
(14, '8', '8', 0, 0, 0.1, '', 2, '*'),
(16, 'help', 'help', 0, 0, 0.2667, 'H410', 2, '*'),
(17, '9', '9', 0, 0, 0.1, '', 2, '*'),
(19, '10', '10', 0, 0, 0.2, '', 2, '*'),
(20, 'typography', 'typography', 0, 0, 0.6667, 'T1261', 2, '*'),
(21, '11', '11', 0, 0, 0.2, '', 2, '*'),
(23, 'about', 'about', 0, 0, 0.3333, 'A130', 5, '*'),
(24, 'a', 'a', 0, 0, 0.0667, 'A000', 7, '*'),
(25, 'able', 'able', 0, 0, 0.2667, 'A140', 3, '*'),
(26, 'and', 'and', 0, 0, 0.2, 'A530', 7, '*'),
(27, 'are', 'are', 0, 0, 0.2, 'A600', 7, '*'),
(28, 'be', 'be', 0, 0, 0.1333, 'B000', 4, '*'),
(29, 'bit', 'bit', 0, 0, 0.2, 'B300', 1, '*'),
(30, 'by', 'by', 0, 0, 0.1333, 'B000', 5, '*'),
(31, 'edit', 'edit', 0, 0, 0.2667, 'E300', 5, '*'),
(32, 'icon', 'icon', 0, 0, 0.2667, 'I250', 2, '*'),
(33, 'in', 'in', 0, 0, 0.1333, 'I500', 7, '*'),
(34, 'it', 'it', 0, 0, 0.1333, 'I300', 3, '*'),
(35, 'logged', 'logged', 0, 0, 0.4, 'L230', 4, '*'),
(36, 'page', 'page', 0, 0, 0.2667, 'P200', 4, '*'),
(37, 'person', 'person', 0, 0, 0.4, 'P625', 1, '*'),
(38, 'selecting', 'selecting', 0, 0, 0.6, 'S42352', 2, '*'),
(39, 'tells', 'tells', 0, 0, 0.3333, 'T420', 1, '*'),
(40, 'the', 'the', 0, 0, 0.2, 'T000', 8, '*'),
(41, 'this', 'this', 0, 0, 0.2667, 'T200', 6, '*'),
(42, 'to', 'to', 0, 0, 0.1333, 'T000', 7, '*'),
(43, 'when', 'when', 0, 0, 0.2667, 'W500', 5, '*'),
(44, 'who', 'who', 0, 0, 0.2, 'W000', 3, '*'),
(45, 'will', 'will', 0, 0, 0.2667, 'W400', 6, '*'),
(46, 'writes', 'writes', 0, 0, 0.4, 'W632', 1, '*'),
(47, 'you', 'you', 0, 0, 0.2, 'Y000', 8, '*'),
(48, '1', '1', 0, 0, 0.1, '', 1, '*'),
(54, 'on', 'on', 0, 0, 0.1333, 'O500', 6, '*'),
(55, 'site', 'site', 0, 0, 0.2667, 'S300', 5, '*'),
(56, 'working', 'working', 0, 0, 0.4667, 'W6252', 2, '*'),
(57, 'your', 'your', 0, 0, 0.2667, 'Y600', 6, '*'),
(58, '\'administrator\'', '\'administrator\'', 0, 0, 1, 'A3523636', 1, '*'),
(59, '\'back', '\'back', 0, 0, 0.3333, 'B200', 1, '*'),
(60, '\'front', '\'front', 0, 0, 0.4, 'F653', 1, '*'),
(61, 'access', 'access', 0, 0, 0.4, 'A200', 3, '*'),
(62, 'add', 'add', 0, 0, 0.2, 'A300', 3, '*'),
(63, 'administrator', 'administrator', 0, 0, 0.8667, 'A3523636', 5, '*'),
(64, 'advanced', 'advanced', 0, 0, 0.5333, 'A31523', 1, '*'),
(65, 'already', 'already', 0, 0, 0.4667, 'A463', 2, '*'),
(66, 'also', 'also', 0, 0, 0.2667, 'A420', 5, '*'),
(67, 'an', 'an', 0, 0, 0.1333, 'A500', 4, '*'),
(68, 'article', 'article', 0, 0, 0.4667, 'A6324', 4, '*'),
(69, 'articles', 'articles', 0, 0, 0.5333, 'A63242', 5, '*'),
(70, 'as', 'as', 0, 0, 0.1333, 'A200', 3, '*'),
(71, 'at', 'at', 0, 0, 0.1333, 'A300', 3, '*'),
(72, 'available', 'available', 0, 0, 0.6, 'A1414', 2, '*'),
(73, 'basic', 'basic', 0, 0, 0.3333, 'B200', 1, '*'),
(74, 'browser', 'browser', 0, 0, 0.4667, 'B626', 1, '*'),
(75, 'but', 'but', 0, 0, 0.2, 'B300', 1, '*'),
(76, 'buttons', 'buttons', 0, 0, 0.4667, 'B352', 1, '*'),
(77, 'can', 'can', 0, 0, 0.2, 'C500', 5, '*'),
(78, 'change', 'change', 0, 0, 0.4, 'C520', 4, '*'),
(79, 'commercial', 'commercial', 0, 0, 0.6667, 'C5624', 1, '*'),
(80, 'configuration', 'configuration', 0, 0, 0.8667, 'C512635', 1, '*'),
(81, 'content', 'content', 0, 0, 0.4667, 'C5353', 2, '*'),
(82, 'control', 'control', 0, 0, 0.4667, 'C5364', 2, '*'),
(83, 'create', 'create', 0, 0, 0.4, 'C630', 2, '*'),
(84, 'creating', 'creating', 0, 0, 0.5333, 'C6352', 1, '*'),
(85, 'deciding', 'deciding', 0, 0, 0.5333, 'D2352', 1, '*'),
(86, 'default', 'default', 0, 0, 0.4667, 'D143', 2, '*'),
(87, 'description', 'description', 0, 0, 0.7333, 'D26135', 2, '*'),
(88, 'detailed', 'detailed', 0, 0, 0.5333, 'D430', 1, '*'),
(89, 'different', 'different', 0, 0, 0.6, 'D1653', 1, '*'),
(90, 'do', 'do', 0, 0, 0.1333, 'D000', 1, '*'),
(91, 'documentation', 'documentation', 0, 0, 0.8667, 'D2535', 1, '*'),
(92, 'email', 'email', 0, 0, 0.3333, 'E540', 1, '*'),
(93, 'end\'', 'end\'', 0, 0, 0.2667, 'E530', 1, '*'),
(94, 'every', 'every', 0, 0, 0.3333, 'E160', 1, '*'),
(95, 'extension', 'extension', 0, 0, 0.6, 'E23525', 2, '*'),
(96, 'extensions', 'extensions', 0, 0, 0.6667, 'E235252', 2, '*'),
(97, 'first', 'first', 0, 0, 0.3333, 'F623', 2, '*'),
(98, 'for', 'for', 0, 0, 0.2, 'F600', 4, '*'),
(99, 'forums', 'forums', 0, 0, 0.4, 'F652', 1, '*'),
(100, 'free', 'free', 0, 0, 0.2667, 'F600', 1, '*'),
(101, 'from', 'from', 0, 0, 0.2667, 'F650', 3, '*'),
(102, 'functions', 'functions', 0, 0, 0.6, 'F52352', 1, '*'),
(103, 'get', 'get', 0, 0, 0.2, 'G300', 1, '*'),
(104, 'go', 'go', 0, 0, 0.1333, 'G000', 3, '*'),
(105, 'has', 'has', 0, 0, 0.2, 'H200', 2, '*'),
(106, 'have', 'have', 0, 0, 0.2667, 'H100', 4, '*'),
(107, 'here', 'here', 0, 0, 0.2667, 'H600', 1, '*'),
(108, 'if', 'if', 0, 0, 0.1333, 'I100', 4, '*'),
(109, 'information', 'information', 0, 0, 0.7333, 'I516535', 1, '*'),
(110, 'install', 'install', 0, 0, 0.4667, 'I5234', 2, '*'),
(111, 'installer', 'installer', 0, 0, 0.6, 'I52346', 1, '*'),
(112, 'is', 'is', 0, 0, 0.1333, 'I200', 6, '*'),
(113, 'items', 'items', 0, 0, 0.3333, 'I352', 1, '*'),
(114, 'kind', 'kind', 0, 0, 0.2667, 'K530', 1, '*'),
(115, 'learn', 'learn', 0, 0, 0.3333, 'L650', 3, '*'),
(116, 'level', 'level', 0, 0, 0.3333, 'L140', 1, '*'),
(117, 'line', 'line', 0, 0, 0.2667, 'L500', 1, '*'),
(118, 'link', 'link', 0, 0, 0.2667, 'L520', 4, '*'),
(119, 'list', 'list', 0, 0, 0.2667, 'L230', 1, '*'),
(120, 'log', 'log', 0, 0, 0.2, 'L200', 3, '*'),
(121, 'login', 'login', 0, 0, 0.3333, 'L250', 3, '*'),
(122, 'logo', 'logo', 0, 0, 0.2667, 'L200', 1, '*'),
(123, 'look', 'look', 0, 0, 0.2667, 'L200', 2, '*'),
(124, 'looking', 'looking', 0, 0, 0.4667, 'L252', 1, '*'),
(125, 'many', 'many', 0, 0, 0.2667, 'M000', 2, '*'),
(126, 'mean', 'mean', 0, 0, 0.2667, 'M000', 1, '*'),
(127, 'menu', 'menu', 0, 0, 0.2667, 'M000', 3, '*'),
(128, 'menus', 'menus', 0, 0, 0.3333, 'M200', 1, '*'),
(129, 'modules', 'modules', 0, 0, 0.4667, 'M342', 2, '*'),
(130, 'more', 'more', 0, 0, 0.2667, 'M600', 6, '*'),
(131, 'much', 'much', 0, 0, 0.2667, 'M200', 1, '*'),
(132, 'name', 'name', 0, 0, 0.2667, 'N000', 1, '*'),
(133, 'need', 'need', 0, 0, 0.2667, 'N300', 2, '*'),
(134, 'new', 'new', 0, 0, 0.2, 'N000', 4, '*'),
(135, 'not', 'not', 0, 0, 0.2, 'N300', 2, '*'),
(136, 'now', 'now', 0, 0, 0.2, 'N000', 2, '*'),
(137, 'of', 'of', 0, 0, 0.1333, 'O100', 6, '*'),
(138, 'one', 'one', 0, 0, 0.2, 'O500', 1, '*'),
(139, 'only', 'only', 0, 0, 0.2667, 'O540', 1, '*'),
(140, 'open', 'open', 0, 0, 0.2667, 'O150', 1, '*'),
(141, 'options', 'options', 0, 0, 0.4667, 'O1352', 4, '*'),
(142, 'or', 'or', 0, 0, 0.1333, 'O600', 1, '*'),
(143, 'other', 'other', 0, 0, 0.3333, 'O360', 3, '*'),
(144, 'part', 'part', 0, 0, 0.2667, 'P630', 1, '*'),
(145, 'parts', 'parts', 0, 0, 0.3333, 'P632', 2, '*'),
(146, 'password', 'password', 0, 0, 0.5333, 'P263', 1, '*'),
(147, 'probably', 'probably', 0, 0, 0.5333, 'P614', 1, '*'),
(148, 'provide', 'provide', 0, 0, 0.4667, 'P613', 1, '*'),
(149, 'published', 'published', 0, 0, 0.6, 'P423', 2, '*'),
(150, 'registered', 'registered', 0, 0, 0.6667, 'R2363', 1, '*'),
(151, 'same', 'same', 0, 0, 0.2667, 'S500', 1, '*'),
(152, 'save', 'save', 0, 0, 0.2667, 'S100', 3, '*'),
(153, 'see', 'see', 0, 0, 0.2, 'S000', 4, '*'),
(154, 'seen', 'seen', 0, 0, 0.2667, 'S500', 1, '*'),
(155, 'select', 'select', 0, 0, 0.4, 'S423', 2, '*'),
(156, 'separately', 'separately', 0, 0, 0.6667, 'S1634', 1, '*'),
(157, 'setting', 'setting', 0, 0, 0.4667, 'S352', 1, '*'),
(158, 'settings', 'settings', 0, 0, 0.5333, 'S352', 3, '*'),
(159, 'show', 'show', 0, 0, 0.2667, 'S000', 1, '*'),
(160, 'some', 'some', 0, 0, 0.2667, 'S500', 2, '*'),
(161, 'such', 'such', 0, 0, 0.2667, 'S000', 1, '*'),
(162, 'system', 'system', 0, 0, 0.4, 'S350', 1, '*'),
(163, 'tag', 'tag', 0, 0, 0.2, 'T200', 2, '*'),
(164, 'template', 'template', 0, 0, 0.5333, 'T5143', 2, '*'),
(165, 'templates', 'templates', 0, 0, 0.6, 'T51432', 2, '*'),
(166, 'that', 'that', 0, 0, 0.2667, 'T000', 3, '*'),
(167, 'them', 'them', 0, 0, 0.2667, 'T500', 1, '*'),
(168, 'there', 'there', 0, 0, 0.3333, 'T600', 2, '*'),
(169, 'things', 'things', 0, 0, 0.4, 'T520', 1, '*'),
(170, 'tips', 'tips', 0, 0, 0.2667, 'T120', 1, '*'),
(171, 'title', 'title', 0, 0, 0.3333, 'T400', 2, '*'),
(172, 'totally', 'totally', 0, 0, 0.4667, 'T400', 1, '*'),
(173, 'unpublished', 'unpublished', 0, 0, 0.7333, 'U51423', 1, '*'),
(174, 'up', 'up', 0, 0, 0.1333, 'U100', 1, '*'),
(175, 'used', 'used', 0, 0, 0.2667, 'U230', 3, '*'),
(176, 'user', 'user', 0, 0, 0.2667, 'U260', 1, '*'),
(177, 'users', 'users', 0, 0, 0.3333, 'U262', 2, '*'),
(178, 'using', 'using', 0, 0, 0.3333, 'U252', 2, '*'),
(179, 'visible', 'visible', 0, 0, 0.4667, 'V214', 2, '*'),
(180, 'visitors', 'visitors', 0, 0, 0.5333, 'V2362', 1, '*'),
(181, 'want', 'want', 0, 0, 0.2667, 'W530', 3, '*'),
(182, 'what', 'what', 0, 0, 0.2667, 'W300', 1, '*'),
(183, 'where', 'where', 0, 0, 0.3333, 'W600', 1, '*'),
(184, 'which', 'which', 0, 0, 0.3333, 'W200', 3, '*'),
(185, 'with', 'with', 0, 0, 0.2667, 'W300', 4, '*'),
(186, 'work', 'work', 0, 0, 0.2667, 'W620', 1, '*'),
(309, 'welcome', 'welcome', 0, 0, 0.4667, 'W425', 1, '*'),
(310, 'ahead', 'ahead', 0, 0, 0.3333, 'A300', 1, '*'),
(311, 'all', 'all', 0, 0, 0.2, 'A400', 2, '*'),
(312, 'bottom', 'bottom', 0, 0, 0.4, 'B350', 1, '*'),
(313, 'break', 'break', 0, 0, 0.3333, 'B620', 2, '*'),
(314, 'can\'t', 'can\'t', 0, 0, 0.3333, 'C530', 1, '*'),
(315, 'changes', 'changes', 0, 0, 0.4667, 'C520', 2, '*'),
(316, 'customise', 'customise', 0, 0, 0.6, 'C352', 1, '*'),
(317, 'existing', 'existing', 0, 0, 0.5333, 'E2352', 1, '*'),
(318, 'how', 'how', 0, 0, 0.2, 'H000', 1, '*'),
(319, 'make', 'make', 0, 0, 0.2667, 'M200', 1, '*'),
(320, 'modify', 'modify', 0, 0, 0.4, 'M310', 1, '*'),
(321, 'posting', 'posting', 0, 0, 0.4667, 'P2352', 1, '*'),
(322, 'sample', 'sample', 0, 0, 0.4, 'S514', 2, '*'),
(323, 'various', 'various', 0, 0, 0.4667, 'V620', 1, '*'),
(324, 'very', 'very', 0, 0, 0.2667, 'V600', 1, '*'),
(325, 'ways', 'ways', 0, 0, 0.2667, 'W200', 1, '*'),
(340, 'home', 'home', 0, 0, 0.2667, 'H500', 1, '*'),
(341, 'both', 'both', 0, 0, 0.2667, 'B300', 1, '*'),
(342, 'broken', 'broken', 0, 0, 0.4, 'B625', 1, '*'),
(343, 'category', 'category', 0, 0, 0.5333, 'C326', 2, '*'),
(344, 'column', 'column', 0, 0, 0.4, 'C450', 1, '*'),
(345, 'display', 'display', 0, 0, 0.4667, 'D214', 1, '*'),
(346, 'editing', 'editing', 0, 0, 0.4667, 'E352', 2, '*'),
(347, 'four', 'four', 0, 0, 0.2667, 'F600', 1, '*'),
(348, 'full', 'full', 0, 0, 0.2667, 'F400', 1, '*'),
(349, 'hide', 'hide', 0, 0, 0.2667, 'H300', 1, '*'),
(350, 'insert', 'insert', 0, 0, 0.4, 'I5263', 1, '*'),
(351, 'into', 'into', 0, 0, 0.2667, 'I530', 1, '*'),
(352, 'introduction', 'introduction', 0, 0, 0.8, 'I5363235', 1, '*'),
(353, 'introductory', 'introductory', 0, 0, 0.8, 'I5363236', 1, '*'),
(354, 'length', 'length', 0, 0, 0.4, 'L523', 1, '*'),
(355, 'links', 'links', 0, 0, 0.3333, 'L520', 1, '*'),
(356, 'most', 'most', 0, 0, 0.2667, 'M230', 1, '*'),
(357, 'next', 'next', 0, 0, 0.2667, 'N230', 1, '*'),
(358, 'numbers', 'numbers', 0, 0, 0.4667, 'N162', 1, '*'),
(359, 'oldest', 'oldest', 0, 0, 0.4, 'O4323', 1, '*'),
(360, 'post', 'post', 0, 0, 0.2667, 'P230', 1, '*'),
(361, 'read', 'read', 0, 0, 0.2667, 'R300', 2, '*'),
(362, 'recent', 'recent', 0, 0, 0.4, 'R253', 1, '*'),
(363, 'rest', 'rest', 0, 0, 0.2667, 'R230', 1, '*'),
(364, 'separate', 'separate', 0, 0, 0.5333, 'S163', 1, '*'),
(365, 'set', 'set', 0, 0, 0.2, 'S300', 2, '*'),
(366, 'span', 'span', 0, 0, 0.2667, 'S150', 1, '*'),
(367, 'tab', 'tab', 0, 0, 0.2, 'T100', 2, '*'),
(368, 'then', 'then', 0, 0, 0.2667, 'T500', 1, '*'),
(369, 'those', 'those', 0, 0, 0.3333, 'T200', 1, '*'),
(370, 'two', 'two', 0, 0, 0.2, 'T000', 1, '*'),
(371, 'use', 'use', 0, 0, 0.2, 'U200', 2, '*'),
(403, 'allows', 'allows', 0, 0, 0.4, 'A420', 1, '*'),
(404, 'always', 'always', 0, 0, 0.4, 'A420', 1, '*'),
(405, 'any', 'any', 0, 0, 0.2, 'A500', 1, '*'),
(406, 'appear', 'appear', 0, 0, 0.4, 'A160', 1, '*'),
(407, 'areas', 'areas', 0, 0, 0.3333, 'A620', 1, '*'),
(408, 'beneath', 'beneath', 0, 0, 0.4667, 'B530', 1, '*'),
(409, 'categories', 'categories', 0, 0, 0.6667, 'C3262', 1, '*'),
(410, 'close', 'close', 0, 0, 0.3333, 'C420', 1, '*'),
(411, 'commonly', 'commonly', 0, 0, 0.5333, 'C540', 1, '*'),
(412, 'corner', 'corner', 0, 0, 0.4, 'C656', 1, '*'),
(413, 'custom', 'custom', 0, 0, 0.4, 'C350', 1, '*'),
(414, 'develop', 'develop', 0, 0, 0.4667, 'D141', 1, '*'),
(415, 'directory', 'directory', 0, 0, 0.6, 'D6236', 1, '*'),
(416, 'each', 'each', 0, 0, 0.2667, 'E200', 1, '*'),
(417, 'enter', 'enter', 0, 0, 0.3333, 'E536', 1, '*'),
(418, 'experiment', 'experiment', 0, 0, 0.6667, 'E21653', 1, '*'),
(419, 'feeds', 'feeds', 0, 0, 0.3333, 'F320', 1, '*'),
(420, 'field', 'field', 0, 0, 0.3333, 'F430', 1, '*'),
(421, 'find', 'find', 0, 0, 0.2667, 'F530', 1, '*'),
(422, 'form', 'form', 0, 0, 0.2667, 'F650', 1, '*'),
(423, 'holds', 'holds', 0, 0, 0.3333, 'H432', 1, '*'),
(424, 'image', 'image', 0, 0, 0.3333, 'I520', 1, '*'),
(425, 'include', 'include', 0, 0, 0.4667, 'I5243', 1, '*'),
(426, 'includes', 'includes', 0, 0, 0.5333, 'I52432', 1, '*'),
(427, 'incorporate', 'incorporate', 0, 0, 0.7333, 'I526163', 1, '*'),
(428, 'lists', 'lists', 0, 0, 0.3333, 'L232', 2, '*'),
(429, 'manager', 'manager', 0, 0, 0.4667, 'M260', 2, '*'),
(430, 'may', 'may', 0, 0, 0.2, 'M000', 2, '*'),
(431, 'module', 'module', 0, 0, 0.4, 'M340', 1, '*'),
(432, 'news', 'news', 0, 0, 0.2667, 'N200', 1, '*'),
(433, 'older', 'older', 0, 0, 0.3333, 'O436', 1, '*'),
(434, 'out', 'out', 0, 0, 0.2, 'O300', 1, '*'),
(435, 'popular', 'popular', 0, 0, 0.4667, 'P460', 1, '*'),
(436, 'posts', 'posts', 0, 0, 0.3333, 'P232', 1, '*'),
(437, 'preconfigured', 'preconfigured', 0, 0, 0.8667, 'P6251263', 1, '*'),
(438, 'reader', 'reader', 0, 0, 0.4, 'R360', 1, '*'),
(439, 'readers', 'readers', 0, 0, 0.4667, 'R362', 1, '*'),
(440, 'restricted', 'restricted', 0, 0, 0.6667, 'R23623', 1, '*'),
(441, 'right', 'right', 0, 0, 0.3333, 'R230', 1, '*'),
(442, 'screen', 'screen', 0, 0, 0.4, 'S650', 1, '*'),
(443, 'sure', 'sure', 0, 0, 0.2667, 'S600', 1, '*'),
(444, 'syndication', 'syndication', 0, 0, 0.7333, 'S53235', 1, '*'),
(445, 'tagging', 'tagging', 0, 0, 0.4667, 'T252', 1, '*'),
(446, 'tags', 'tags', 0, 0, 0.2667, 'T200', 1, '*'),
(447, 'take', 'take', 0, 0, 0.2667, 'T200', 1, '*'),
(448, 'these', 'these', 0, 0, 0.3333, 'T200', 1, '*'),
(449, 'top', 'top', 0, 0, 0.2, 'T100', 1, '*'),
(450, 'type', 'type', 0, 0, 0.2667, 'T100', 1, '*'),
(451, 'website', 'website', 0, 0, 0.4667, 'W123', 2, '*'),
(466, 'background', 'background', 0, 0, 0.6667, 'B2653', 1, '*'),
(467, 'cassiopeia', 'cassiopeia', 0, 0, 0.6667, 'C100', 1, '*'),
(468, 'colour', 'colour', 0, 0, 0.4, 'C460', 2, '*'),
(469, 'example', 'example', 0, 0, 0.4667, 'E2514', 1, '*'),
(470, 'feel', 'feel', 0, 0, 0.2667, 'F400', 1, '*'),
(471, 'font', 'font', 0, 0, 0.2667, 'F530', 1, '*'),
(472, 'highlights', 'highlights', 0, 0, 0.6667, 'H24232', 1, '*'),
(473, 'installed', 'installed', 0, 0, 0.6, 'I52343', 1, '*'),
(474, '6', '6', 0, 0, 0.1, '', 1, '*'),
(481, 'accusam', 'accusam', 0, 0, 0.4667, 'A250', 1, '*'),
(482, 'aliquyam', 'aliquyam', 0, 0, 0.5333, 'A425', 1, '*'),
(483, 'amet', 'amet', 0, 0, 0.2667, 'A530', 3, '*'),
(484, 'beautiful', 'beautiful', 0, 0, 0.6, 'B314', 1, '*'),
(485, 'built', 'built', 0, 0, 0.3333, 'B430', 1, '*'),
(486, 'clita', 'clita', 0, 0, 0.3333, 'C430', 1, '*'),
(487, 'consetetur', 'consetetur', 0, 0, 0.6667, 'C5236', 1, '*'),
(488, 'diam', 'diam', 0, 0, 0.2667, 'D500', 2, '*'),
(489, 'dolor', 'dolor', 0, 0, 0.3333, 'D460', 3, '*'),
(490, 'dolore', 'dolore', 0, 0, 0.4, 'D460', 2, '*'),
(491, 'dolores', 'dolores', 0, 0, 0.4667, 'D462', 1, '*'),
(492, 'duo', 'duo', 0, 0, 0.2, 'D000', 1, '*'),
(493, 'ea', 'ea', 0, 0, 0.1333, 'E000', 1, '*'),
(494, 'eirmod', 'eirmod', 0, 0, 0.4, 'E653', 1, '*'),
(495, 'elitr', 'elitr', 0, 0, 0.3333, 'E436', 1, '*'),
(496, 'eos', 'eos', 0, 0, 0.2, 'E200', 1, '*'),
(497, 'erat', 'erat', 0, 0, 0.2667, 'E630', 2, '*'),
(498, 'est', 'est', 0, 0, 0.2, 'E230', 1, '*'),
(499, 'et', 'et', 0, 0, 0.1333, 'E300', 1, '*'),
(500, 'gubergren', 'gubergren', 0, 0, 0.6, 'G16265', 1, '*'),
(501, 'invidunt', 'invidunt', 0, 0, 0.5333, 'I51353', 1, '*'),
(502, 'ipsum', 'ipsum', 0, 0, 0.3333, 'I125', 3, '*'),
(503, 'justo', 'justo', 0, 0, 0.3333, 'J300', 1, '*'),
(504, 'kasd', 'kasd', 0, 0, 0.2667, 'K300', 1, '*'),
(505, 'labore', 'labore', 0, 0, 0.4, 'L160', 1, '*'),
(506, 'lorem', 'lorem', 0, 0, 0.3333, 'L650', 2, '*'),
(507, 'magna', 'magna', 0, 0, 0.3333, 'M250', 2, '*'),
(508, 'no', 'no', 0, 0, 0.1333, 'N000', 1, '*'),
(509, 'nonumy', 'nonumy', 0, 0, 0.4, 'N000', 1, '*'),
(510, 'presentation', 'presentation', 0, 0, 0.8, 'P62535', 1, '*'),
(511, 'rebum', 'rebum', 0, 0, 0.3333, 'R150', 1, '*'),
(512, 'sadipscing', 'sadipscing', 0, 0, 0.6667, 'S31252', 1, '*'),
(513, 'sanctus', 'sanctus', 0, 0, 0.4667, 'S5232', 1, '*'),
(514, 'sea', 'sea', 0, 0, 0.2, 'S000', 2, '*'),
(515, 'sed', 'sed', 0, 0, 0.2, 'S300', 2, '*'),
(516, 'sit', 'sit', 0, 0, 0.2, 'S300', 3, '*'),
(517, 'stet', 'stet', 0, 0, 0.2667, 'S300', 1, '*'),
(518, 'takimata', 'takimata', 0, 0, 0.5333, 'T253', 1, '*'),
(519, 'tempor', 'tempor', 0, 0, 0.4, 'T516', 1, '*'),
(520, 'ut', 'ut', 0, 0, 0.1333, 'U300', 2, '*'),
(521, 'vero', 'vero', 0, 0, 0.2667, 'V600', 1, '*'),
(522, 'voluptua', 'voluptua', 0, 0, 0.5333, 'V413', 1, '*'),
(523, 'websites', 'websites', 0, 0, 0.5333, 'W1232', 1, '*'),
(524, '7', '7', 0, 0, 0.1, '', 1, '*'),
(544, 'amaranth', 'amaranth', 0, 0, 0.5333, 'A5653', 1, '*'),
(545, 'artichoke', 'artichoke', 0, 0, 0.6, 'A632', 1, '*'),
(546, 'asparagus', 'asparagus', 0, 0, 0.6, 'A2162', 1, '*'),
(547, 'avocado', 'avocado', 0, 0, 0.4667, 'A123', 1, '*'),
(548, 'azuki', 'azuki', 0, 0, 0.3333, 'A200', 1, '*'),
(549, 'back', 'back', 0, 0, 0.2667, 'B200', 1, '*'),
(550, 'bamboo', 'bamboo', 0, 0, 0.4, 'B510', 1, '*'),
(551, 'bean', 'bean', 0, 0, 0.2667, 'B500', 1, '*'),
(552, 'beetroot', 'beetroot', 0, 0, 0.5333, 'B363', 1, '*'),
(553, 'bell', 'bell', 0, 0, 0.2667, 'B400', 1, '*'),
(554, 'brussels', 'brussels', 0, 0, 0.5333, 'B6242', 1, '*'),
(555, 'bunya', 'bunya', 0, 0, 0.3333, 'B500', 1, '*'),
(556, 'cabbage', 'cabbage', 0, 0, 0.4667, 'C120', 1, '*'),
(557, 'carrot', 'carrot', 0, 0, 0.4, 'C630', 2, '*'),
(558, 'cauliflower', 'cauliflower', 0, 0, 0.7333, 'C4146', 1, '*'),
(559, 'celery', 'celery', 0, 0, 0.4, 'C460', 1, '*'),
(560, 'chard', 'chard', 0, 0, 0.3333, 'C630', 1, '*'),
(561, 'chestnut', 'chestnut', 0, 0, 0.5333, 'C353', 1, '*'),
(562, 'chickpea', 'chickpea', 0, 0, 0.5333, 'C100', 1, '*'),
(563, 'chickweed', 'chickweed', 0, 0, 0.6, 'C300', 1, '*'),
(564, 'contributed', 'contributed', 0, 0, 0.7333, 'C53613', 1, '*'),
(565, 'coriander', 'coriander', 0, 0, 0.6, 'C6536', 1, '*'),
(566, 'corn', 'corn', 0, 0, 0.2667, 'C650', 1, '*'),
(567, 'daikon', 'daikon', 0, 0, 0.4, 'D250', 1, '*'),
(568, 'desert', 'desert', 0, 0, 0.4, 'D263', 1, '*'),
(569, 'endive', 'endive', 0, 0, 0.4, 'E531', 1, '*'),
(570, 'fennel', 'fennel', 0, 0, 0.4, 'F540', 1, '*'),
(571, 'gourd', 'gourd', 0, 0, 0.3333, 'G630', 1, '*'),
(572, 'gram', 'gram', 0, 0, 0.2667, 'G650', 1, '*'),
(573, 'green', 'green', 0, 0, 0.3333, 'G650', 1, '*'),
(574, 'greens', 'greens', 0, 0, 0.4, 'G652', 1, '*'),
(575, 'horseradish', 'horseradish', 0, 0, 0.7333, 'H62632', 1, '*'),
(576, 'kale', 'kale', 0, 0, 0.2667, 'K400', 1, '*'),
(577, 'kohlrabi', 'kohlrabi', 0, 0, 0.5333, 'K461', 1, '*'),
(578, 'kombu', 'kombu', 0, 0, 0.3333, 'K510', 1, '*'),
(579, 'lettuce', 'lettuce', 0, 0, 0.4667, 'L320', 1, '*'),
(580, 'lotus', 'lotus', 0, 0, 0.3333, 'L320', 1, '*'),
(581, 'maize', 'maize', 0, 0, 0.3333, 'M200', 1, '*'),
(582, 'moon', 'moon', 0, 0, 0.2667, 'M000', 1, '*'),
(583, 'napa', 'napa', 0, 0, 0.2667, 'N100', 1, '*'),
(584, 'nori', 'nori', 0, 0, 0.2667, 'N600', 1, '*'),
(585, 'nuts', 'nuts', 0, 0, 0.2667, 'N320', 1, '*'),
(586, 'onion', 'onion', 0, 0, 0.3333, 'O500', 1, '*'),
(587, 'pea', 'pea', 0, 0, 0.2, 'P000', 1, '*'),
(588, 'pepper', 'pepper', 0, 0, 0.4, 'P600', 1, '*'),
(589, 'potato', 'potato', 0, 0, 0.4, 'P300', 1, '*'),
(590, 'pumpkin', 'pumpkin', 0, 0, 0.4667, 'P5125', 1, '*'),
(591, 'purslane', 'purslane', 0, 0, 0.5333, 'P6245', 1, '*'),
(592, 'raisin', 'raisin', 0, 0, 0.4, 'R250', 1, '*'),
(593, 'ricebean', 'ricebean', 0, 0, 0.5333, 'R215', 1, '*'),
(594, 'root', 'root', 0, 0, 0.2667, 'R300', 1, '*'),
(595, 'rutabaga', 'rutabaga', 0, 0, 0.5333, 'R312', 1, '*'),
(596, 'salsify', 'salsify', 0, 0, 0.4667, 'S421', 1, '*'),
(597, 'scallion', 'scallion', 0, 0, 0.5333, 'S450', 1, '*'),
(598, 'seakale', 'seakale', 0, 0, 0.4667, 'S400', 1, '*'),
(599, 'shoot', 'shoot', 0, 0, 0.3333, 'S300', 1, '*'),
(600, 'soko', 'soko', 0, 0, 0.2667, 'S000', 1, '*'),
(601, 'spinach', 'spinach', 0, 0, 0.4667, 'S152', 1, '*'),
(602, 'sprout', 'sprout', 0, 0, 0.4, 'S163', 1, '*'),
(603, 'swiss', 'swiss', 0, 0, 0.3333, 'S000', 1, '*'),
(604, 'thank', 'thank', 0, 0, 0.3333, 'T520', 1, '*'),
(605, 'uurnip', 'uurnip', 0, 0, 0.4, 'U651', 1, '*'),
(606, 'volunteers', 'volunteers', 0, 0, 0.6667, 'V45362', 1, '*'),
(607, 'wakame', 'wakame', 0, 0, 0.4, 'W250', 1, '*'),
(608, 'water', 'water', 0, 0, 0.3333, 'W360', 1, '*'),
(609, 'watercress', 'watercress', 0, 0, 0.6667, 'W36262', 1, '*'),
(610, 'we', 'we', 0, 0, 0.1333, 'W000', 3, '*'),
(611, 'winter', 'winter', 0, 0, 0.4, 'W536', 1, '*'),
(612, 'yarrow', 'yarrow', 0, 0, 0.4, 'Y600', 1, '*'),
(671, 'bears', 'bears', 0, 0, 0.3333, 'B620', 1, '*'),
(672, 'bonbon', 'bonbon', 0, 0, 0.4, 'B515', 1, '*'),
(673, 'brownie', 'brownie', 0, 0, 0.4667, 'B650', 1, '*'),
(674, 'cake', 'cake', 0, 0, 0.2667, 'C000', 1, '*'),
(675, 'candy', 'candy', 0, 0, 0.3333, 'C530', 1, '*'),
(676, 'cheesecake', 'cheesecake', 0, 0, 0.6667, 'C000', 1, '*'),
(677, 'chocolate', 'chocolate', 0, 0, 0.6, 'C430', 1, '*'),
(678, 'chupa', 'chupa', 0, 0, 0.3333, 'C100', 1, '*'),
(679, 'chups', 'chups', 0, 0, 0.3333, 'C120', 1, '*'),
(680, 'cotton', 'cotton', 0, 0, 0.4, 'C350', 1, '*'),
(681, 'cream', 'cream', 0, 0, 0.3333, 'C650', 1, '*'),
(682, 'cupcake', 'cupcake', 0, 0, 0.4667, 'C120', 1, '*'),
(683, 'danish', 'danish', 0, 0, 0.4, 'D520', 1, '*'),
(684, 'donut', 'donut', 0, 0, 0.3333, 'D530', 1, '*'),
(685, 'dragée', 'dragée', 0, 0, 0.4, 'D620', 1, '*'),
(686, 'gummi', 'gummi', 0, 0, 0.3333, 'G500', 1, '*'),
(687, 'halvah', 'halvah', 0, 0, 0.4, 'H410', 1, '*'),
(688, 'ice', 'ice', 0, 0, 0.2, 'I200', 1, '*'),
(689, 'icing', 'icing', 0, 0, 0.3333, 'I252', 1, '*'),
(690, 'jelly-o', 'jelly-o', 0, 0, 0.4667, 'J400', 1, '*'),
(691, 'liquorice', 'liquorice', 0, 0, 0.6, 'L262', 1, '*'),
(692, 'lollipop', 'lollipop', 0, 0, 0.5333, 'L100', 1, '*'),
(693, 'macaroon', 'macaroon', 0, 0, 0.5333, 'M265', 1, '*'),
(694, 'marshmallow', 'marshmallow', 0, 0, 0.7333, 'M6254', 1, '*'),
(695, 'muffin', 'muffin', 0, 0, 0.4, 'M150', 1, '*'),
(696, 'oat', 'oat', 0, 0, 0.2, 'O300', 1, '*'),
(697, 'pie', 'pie', 0, 0, 0.2, 'P000', 1, '*'),
(698, 'plum', 'plum', 0, 0, 0.2667, 'P450', 1, '*'),
(699, 'powder', 'powder', 0, 0, 0.4, 'P360', 1, '*'),
(700, 'present', 'present', 0, 0, 0.4667, 'P6253', 1, '*'),
(701, 'proudly', 'proudly', 0, 0, 0.4667, 'P634', 1, '*'),
(702, 'roll', 'roll', 0, 0, 0.2667, 'R400', 1, '*'),
(703, 'sesame', 'sesame', 0, 0, 0.4, 'S500', 1, '*'),
(704, 'snaps', 'snaps', 0, 0, 0.3333, 'S512', 1, '*'),
(705, 'soufflé', 'soufflé', 0, 0, 0.4667, 'S140', 1, '*'),
(706, 'sugar', 'sugar', 0, 0, 0.3333, 'S600', 1, '*'),
(707, 'sweet', 'sweet', 0, 0, 0.3333, 'S300', 1, '*'),
(708, 'tiramisu', 'tiramisu', 0, 0, 0.5333, 'T652', 1, '*'),
(709, 'topping', 'topping', 0, 0, 0.4667, 'T152', 1, '*'),
(710, 'version', 'version', 0, 0, 0.4667, 'V625', 1, '*'),
(711, 'workflows', 'workflows', 0, 0, 0.6, 'W62142', 2, '*'),
(734, 'feature', 'feature', 0, 0, 0.4667, 'F360', 1, '*'),
(735, '\'articles\'', '\'articles\'', 0, 0, 0.6667, 'A63242', 1, '*'),
(736, '\'content\'', '\'content\'', 0, 0, 0.6, 'C5353', 1, '*'),
(737, '\'enable', '\'enable', 0, 0, 0.4667, 'E514', 1, '*'),
(738, '\'integration\'', '\'integration\'', 0, 0, 0.8667, 'I532635', 1, '*'),
(739, '\'options\'', '\'options\'', 0, 0, 0.6, 'O1352', 1, '*'),
(740, '\'workflows\'.', '\'workflows\'.', 0, 0, 0.8, 'W62142', 1, '*'),
(741, '\'yes\'', '\'yes\'', 0, 0, 0.3333, 'Y200', 1, '*'),
(742, 'administration', 'administration', 0, 0, 0.9333, 'A3523635', 1, '*'),
(743, 'again', 'again', 0, 0, 0.3333, 'A250', 1, '*'),
(744, 'area', 'area', 0, 0, 0.2667, 'A600', 1, '*'),
(745, 'component', 'component', 0, 0, 0.6, 'C5153', 1, '*'),
(746, 'data', 'data', 0, 0, 0.2667, 'D000', 1, '*'),
(747, 'enable', 'enable', 0, 0, 0.4, 'E514', 1, '*'),
(748, 'enabled', 'enabled', 0, 0, 0.4667, 'E5143', 1, '*'),
(749, 'functionality', 'functionality', 0, 0, 0.8667, 'F523543', 1, '*'),
(750, 'manage', 'manage', 0, 0, 0.4, 'M200', 1, '*'),
(751, 'must', 'must', 0, 0, 0.2667, 'M230', 1, '*'),
(752, 'provided', 'provided', 0, 0, 0.5333, 'P613', 1, '*'),
(753, 'related', 'related', 0, 0, 0.4667, 'R430', 1, '*'),
(754, 'section', 'section', 0, 0, 0.4667, 'S350', 1, '*'),
(755, 'stages', 'stages', 0, 0, 0.4, 'S320', 1, '*'),
(756, 'they', 'they', 0, 0, 0.2667, 'T000', 1, '*'),
(757, 'through', 'through', 0, 0, 0.4667, 'T620', 1, '*'),
(758, 'transitions', 'transitions', 0, 0, 0.7333, 'T652352', 1, '*'),
(759, 'until', 'until', 0, 0, 0.3333, 'U534', 1, '*'),
(760, 'workflow', 'workflow', 0, 0, 0.5333, 'W6214', 1, '*'),
(761, 'workflow\'', 'workflow\'', 0, 0, 0.6, 'W6214', 1, '*'),
(765, 'ad', 'ad', 0, 0, 0.1333, 'A300', 1, '*'),
(766, 'adipiscing', 'adipiscing', 0, 0, 0.6667, 'A31252', 1, '*'),
(767, 'aliquam', 'aliquam', 0, 0, 0.4667, 'A425', 1, '*'),
(768, 'aliquip', 'aliquip', 0, 0, 0.4667, 'A421', 1, '*'),
(769, 'arma', 'arma', 0, 0, 0.2667, 'A650', 1, '*'),
(770, 'cano', 'cano', 0, 0, 0.2667, 'C500', 1, '*'),
(771, 'consectetuer', 'consectetuer', 0, 0, 0.8, 'C5236', 1, '*'),
(772, 'consectetur', 'consectetur', 0, 0, 0.7333, 'C5236', 1, '*'),
(773, 'danger', 'danger', 0, 0, 0.4, 'D526', 1, '*'),
(774, 'display-1', 'display-1', 0, 0, 0.6, 'D214', 1, '*'),
(775, 'display-2', 'display-2', 0, 0, 0.6, 'D214', 1, '*'),
(776, 'display-3', 'display-3', 0, 0, 0.6, 'D214', 1, '*'),
(777, 'display-4', 'display-4', 0, 0, 0.6, 'D214', 1, '*'),
(778, 'displays', 'displays', 0, 0, 0.5333, 'D2142', 1, '*'),
(779, 'elit', 'elit', 0, 0, 0.2667, 'E430', 1, '*'),
(780, 'enim', 'enim', 0, 0, 0.2667, 'E500', 1, '*'),
(781, 'euismod', 'euismod', 0, 0, 0.4667, 'E253', 1, '*'),
(782, 'ex', 'ex', 0, 0, 0.1333, 'E200', 1, '*'),
(783, 'exerci', 'exerci', 0, 0, 0.4, 'E262', 1, '*'),
(784, 'h1', 'h1', 0, 0, 0.1333, 'H000', 1, '*'),
(785, 'h2', 'h2', 0, 0, 0.1333, 'H000', 1, '*'),
(786, 'h3', 'h3', 0, 0, 0.1333, 'H000', 1, '*'),
(787, 'h4', 'h4', 0, 0, 0.1333, 'H000', 1, '*'),
(788, 'h5', 'h5', 0, 0, 0.1333, 'H000', 1, '*'),
(789, 'info', 'info', 0, 0, 0.2667, 'I510', 1, '*'),
(790, 'laoreet', 'laoreet', 0, 0, 0.4667, 'L630', 1, '*'),
(791, 'lead', 'lead', 0, 0, 0.2667, 'L300', 1, '*'),
(792, 'li', 'li', 0, 0, 0.1333, 'L000', 1, '*'),
(793, 'lobortis', 'lobortis', 0, 0, 0.5333, 'L1632', 1, '*'),
(794, 'minim', 'minim', 0, 0, 0.3333, 'M000', 1, '*'),
(795, 'nibh', 'nibh', 0, 0, 0.2667, 'N100', 1, '*'),
(796, 'nisl', 'nisl', 0, 0, 0.2667, 'N240', 1, '*'),
(797, 'nonummy', 'nonummy', 0, 0, 0.4667, 'N000', 1, '*'),
(798, 'nostrud', 'nostrud', 0, 0, 0.4667, 'N2363', 1, '*'),
(799, 'ol', 'ol', 0, 0, 0.1333, 'O400', 1, '*'),
(800, 'p', 'p', 0, 0, 0.0667, 'P000', 1, '*'),
(801, 'primary', 'primary', 0, 0, 0.4667, 'P656', 1, '*'),
(802, 'quis', 'quis', 0, 0, 0.2667, 'Q000', 1, '*'),
(803, 'scheme', 'scheme', 0, 0, 0.4, 'S500', 1, '*'),
(804, 'secondary', 'secondary', 0, 0, 0.6, 'S536', 1, '*'),
(805, 'strong', 'strong', 0, 0, 0.4, 'S3652', 1, '*'),
(806, 'success', 'success', 0, 0, 0.4667, 'S000', 1, '*'),
(807, 'suscipit', 'suscipit', 0, 0, 0.5333, 'S130', 1, '*'),
(808, 'tation', 'tation', 0, 0, 0.4, 'T500', 1, '*'),
(809, 'text-danger', 'text-danger', 0, 0, 0.7333, 'T23526', 1, '*'),
(810, 'text-info', 'text-info', 0, 0, 0.6, 'T2351', 1, '*'),
(811, 'text-primary', 'text-primary', 0, 0, 0.8, 'T231656', 1, '*'),
(812, 'text-secondary', 'text-secondary', 0, 0, 0.9333, 'T232536', 1, '*'),
(813, 'text-success', 'text-success', 0, 0, 0.8, 'T232', 1, '*'),
(814, 'text-warning', 'text-warning', 0, 0, 0.8, 'T23652', 1, '*'),
(815, 'tincidunt', 'tincidunt', 0, 0, 0.6, 'T52353', 1, '*'),
(816, 'ul', 'ul', 0, 0, 0.1333, 'U400', 1, '*'),
(817, 'ullamcorper', 'ullamcorper', 0, 0, 0.7333, 'U452616', 1, '*'),
(818, 'veniam', 'veniam', 0, 0, 0.4, 'V500', 1, '*'),
(819, 'virumque', 'virumque', 0, 0, 0.5333, 'V652', 1, '*'),
(820, 'volutpat', 'volutpat', 0, 0, 0.5333, 'V4313', 1, '*'),
(821, 'warning', 'warning', 0, 0, 0.4667, 'W652', 1, '*'),
(822, 'wisi', 'wisi', 0, 0, 0.2667, 'W200', 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_finder_terms_common`
--

CREATE TABLE `xd5bf_finder_terms_common` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_finder_terms_common`
--

INSERT INTO `xd5bf_finder_terms_common` (`term`, `language`, `custom`) VALUES
('a', 'en', 0),
('about', 'en', 0),
('above', 'en', 0),
('after', 'en', 0),
('again', 'en', 0),
('against', 'en', 0),
('all', 'en', 0),
('am', 'en', 0),
('an', 'en', 0),
('and', 'en', 0),
('any', 'en', 0),
('are', 'en', 0),
('aren\'t', 'en', 0),
('as', 'en', 0),
('at', 'en', 0),
('be', 'en', 0),
('because', 'en', 0),
('been', 'en', 0),
('before', 'en', 0),
('being', 'en', 0),
('below', 'en', 0),
('between', 'en', 0),
('both', 'en', 0),
('but', 'en', 0),
('by', 'en', 0),
('can\'t', 'en', 0),
('cannot', 'en', 0),
('could', 'en', 0),
('couldn\'t', 'en', 0),
('did', 'en', 0),
('didn\'t', 'en', 0),
('do', 'en', 0),
('does', 'en', 0),
('doesn\'t', 'en', 0),
('doing', 'en', 0),
('don\'t', 'en', 0),
('down', 'en', 0),
('during', 'en', 0),
('each', 'en', 0),
('few', 'en', 0),
('for', 'en', 0),
('from', 'en', 0),
('further', 'en', 0),
('had', 'en', 0),
('hadn\'t', 'en', 0),
('has', 'en', 0),
('hasn\'t', 'en', 0),
('have', 'en', 0),
('haven\'t', 'en', 0),
('having', 'en', 0),
('he', 'en', 0),
('he\'d', 'en', 0),
('he\'ll', 'en', 0),
('he\'s', 'en', 0),
('her', 'en', 0),
('here', 'en', 0),
('here\'s', 'en', 0),
('hers', 'en', 0),
('herself', 'en', 0),
('him', 'en', 0),
('himself', 'en', 0),
('his', 'en', 0),
('how', 'en', 0),
('how\'s', 'en', 0),
('i', 'en', 0),
('i\'d', 'en', 0),
('i\'ll', 'en', 0),
('i\'m', 'en', 0),
('i\'ve', 'en', 0),
('if', 'en', 0),
('in', 'en', 0),
('into', 'en', 0),
('is', 'en', 0),
('isn\'t', 'en', 0),
('it', 'en', 0),
('it\'s', 'en', 0),
('its', 'en', 0),
('itself', 'en', 0),
('let\'s', 'en', 0),
('me', 'en', 0),
('more', 'en', 0),
('most', 'en', 0),
('mustn\'t', 'en', 0),
('my', 'en', 0),
('myself', 'en', 0),
('no', 'en', 0),
('nor', 'en', 0),
('not', 'en', 0),
('of', 'en', 0),
('off', 'en', 0),
('on', 'en', 0),
('once', 'en', 0),
('only', 'en', 0),
('or', 'en', 0),
('other', 'en', 0),
('ought', 'en', 0),
('our', 'en', 0),
('ours', 'en', 0),
('ourselves', 'en', 0),
('out', 'en', 0),
('over', 'en', 0),
('own', 'en', 0),
('same', 'en', 0),
('shan\'t', 'en', 0),
('she', 'en', 0),
('she\'d', 'en', 0),
('she\'ll', 'en', 0),
('she\'s', 'en', 0),
('should', 'en', 0),
('shouldn\'t', 'en', 0),
('so', 'en', 0),
('some', 'en', 0),
('such', 'en', 0),
('than', 'en', 0),
('that', 'en', 0),
('that\'s', 'en', 0),
('the', 'en', 0),
('their', 'en', 0),
('theirs', 'en', 0),
('them', 'en', 0),
('themselves', 'en', 0),
('then', 'en', 0),
('there', 'en', 0),
('there\'s', 'en', 0),
('these', 'en', 0),
('they', 'en', 0),
('they\'d', 'en', 0),
('they\'ll', 'en', 0),
('they\'re', 'en', 0),
('they\'ve', 'en', 0),
('this', 'en', 0),
('those', 'en', 0),
('through', 'en', 0),
('to', 'en', 0),
('too', 'en', 0),
('under', 'en', 0),
('until', 'en', 0),
('up', 'en', 0),
('very', 'en', 0),
('was', 'en', 0),
('wasn\'t', 'en', 0),
('we', 'en', 0),
('we\'d', 'en', 0),
('we\'ll', 'en', 0),
('we\'re', 'en', 0),
('we\'ve', 'en', 0),
('were', 'en', 0),
('weren\'t', 'en', 0),
('what', 'en', 0),
('what\'s', 'en', 0),
('when', 'en', 0),
('when\'s', 'en', 0),
('where', 'en', 0),
('where\'s', 'en', 0),
('which', 'en', 0),
('while', 'en', 0),
('who', 'en', 0),
('who\'s', 'en', 0),
('whom', 'en', 0),
('why', 'en', 0),
('why\'s', 'en', 0),
('with', 'en', 0),
('won\'t', 'en', 0),
('would', 'en', 0),
('wouldn\'t', 'en', 0),
('you', 'en', 0),
('you\'d', 'en', 0),
('you\'ll', 'en', 0),
('you\'re', 'en', 0),
('you\'ve', 'en', 0),
('your', 'en', 0),
('yours', 'en', 0),
('yourself', 'en', 0),
('yourselves', 'en', 0);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_finder_tokens`
--

CREATE TABLE `xd5bf_finder_tokens` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint UNSIGNED NOT NULL DEFAULT '2',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_finder_tokens_aggregate`
--

CREATE TABLE `xd5bf_finder_tokens_aggregate` (
  `term_id` int UNSIGNED NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL DEFAULT '0',
  `context` tinyint UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL DEFAULT '0',
  `total_weight` float UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_finder_types`
--

CREATE TABLE `xd5bf_finder_types` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_finder_types`
--

INSERT INTO `xd5bf_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Category', ''),
(2, 'Contact', ''),
(3, 'Article', ''),
(4, 'News Feed', ''),
(5, 'Tag', '');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_history`
--

CREATE TABLE `xd5bf_history` (
  `version_id` int UNSIGNED NOT NULL,
  `item_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL,
  `editor_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_history`
--

INSERT INTO `xd5bf_history` (`version_id`, `item_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 'com_tags.tag.2', '', '2022-06-07 09:14:21', 551, 494, '6db52c3eebdfd9d3ac84c3d51df737941a440c72', '{\"id\":2,\"parent_id\":1,\"lft\":1,\"rgt\":2,\"level\":1,\"path\":\"\",\"title\":\"Millions\",\"alias\":\"millions\",\"note\":null,\"description\":\"\",\"published\":1,\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{}\",\"created_user_id\":551,\"created_time\":\"2022-06-07 09:14:21\",\"created_by_alias\":null,\"modified_user_id\":551,\"modified_time\":\"2022-06-07 09:14:21\",\"images\":\"{}\",\"urls\":\"{}\",\"hits\":0,\"language\":\"*\",\"version\":1,\"publish_up\":null,\"publish_down\":null}', 0),
(2, 'com_tags.tag.3', '', '2022-06-07 09:14:21', 551, 500, 'fc9510a3226e5c0054fa48649a8593a24e3cf97f', '{\"id\":3,\"parent_id\":1,\"lft\":3,\"rgt\":4,\"level\":1,\"path\":\"millions\",\"title\":\"Worldwide\",\"alias\":\"worldwide\",\"note\":\"\",\"description\":\"\",\"published\":1,\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{}\",\"created_user_id\":551,\"created_time\":\"2022-06-07 09:14:21\",\"created_by_alias\":\"\",\"modified_user_id\":551,\"modified_time\":\"2022-06-07 09:14:21\",\"images\":\"{}\",\"urls\":\"{}\",\"hits\":0,\"language\":\"*\",\"version\":2,\"publish_up\":null,\"publish_down\":null}', 0),
(3, 'com_tags.tag.4', '', '2022-06-07 09:14:21', 551, 491, '7b598e2a1178bdb64c2265b20942b341d1cebb69', '{\"id\":4,\"parent_id\":1,\"lft\":5,\"rgt\":6,\"level\":1,\"path\":\"worldwide\",\"title\":\"Love\",\"alias\":\"love\",\"note\":\"\",\"description\":\"\",\"published\":1,\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{}\",\"created_user_id\":551,\"created_time\":\"2022-06-07 09:14:21\",\"created_by_alias\":\"\",\"modified_user_id\":551,\"modified_time\":\"2022-06-07 09:14:21\",\"images\":\"{}\",\"urls\":\"{}\",\"hits\":0,\"language\":\"*\",\"version\":3,\"publish_up\":null,\"publish_down\":null}', 0),
(4, 'com_tags.tag.5', '', '2022-06-07 09:14:21', 551, 494, '2f6ee42096713dc3591ec0ec945a7fa017c63f49', '{\"id\":5,\"parent_id\":4,\"lft\":6,\"rgt\":7,\"level\":2,\"path\":\"love\",\"title\":\"Joomla 4\",\"alias\":\"joomla-4\",\"note\":\"\",\"description\":\"\",\"published\":1,\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{}\",\"created_user_id\":551,\"created_time\":\"2022-06-07 09:14:21\",\"created_by_alias\":\"\",\"modified_user_id\":551,\"modified_time\":\"2022-06-07 09:14:21\",\"images\":\"{}\",\"urls\":\"{}\",\"hits\":0,\"language\":\"*\",\"version\":4,\"publish_up\":null,\"publish_down\":null}', 0),
(5, 'com_content.category.8', '', '2022-06-07 09:14:21', 551, 474, '85fd6af21b89009b270b192b8e361ac3abadb607', '{\"id\":8,\"asset_id\":115,\"parent_id\":1,\"lft\":11,\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Blog\",\"alias\":\"blog\",\"note\":null,\"description\":\"\",\"published\":1,\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"workflow_id\\\":\\\"2\\\"}\",\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":551,\"created_time\":\"2022-06-07 09:14:21\",\"modified_user_id\":551,\"modified_time\":\"2022-06-07 09:14:21\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(6, 'com_content.category.9', '', '2022-06-07 09:14:21', 551, 453, '086e746319698671f1c91fd3af2a2b5cca39320b', '{\"id\":9,\"asset_id\":116,\"parent_id\":1,\"lft\":13,\"rgt\":14,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Help\",\"alias\":\"help\",\"note\":null,\"description\":\"\",\"published\":1,\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{}\",\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":551,\"created_time\":\"2022-06-07 09:14:21\",\"modified_user_id\":551,\"modified_time\":\"2022-06-07 09:14:21\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(7, 'com_content.category.10', '', '2022-06-07 09:14:21', 551, 458, 'afd0c5bd49d94bd465e6457a377ee598e3f70820', '{\"id\":10,\"asset_id\":117,\"parent_id\":1,\"lft\":15,\"rgt\":16,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Joomla\",\"alias\":\"joomla\",\"note\":null,\"description\":\"\",\"published\":1,\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{}\",\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":551,\"created_time\":\"2022-06-07 09:14:21\",\"modified_user_id\":551,\"modified_time\":\"2022-06-07 09:14:21\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(8, 'com_content.category.11', '', '2022-06-07 09:14:21', 551, 466, '1d4be28f7973acab02e24b49b27b8fc37286ac9b', '{\"id\":11,\"asset_id\":118,\"parent_id\":1,\"lft\":17,\"rgt\":18,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Typography\",\"alias\":\"typography\",\"note\":null,\"description\":\"\",\"published\":1,\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{}\",\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":551,\"created_time\":\"2022-06-07 09:14:21\",\"modified_user_id\":551,\"modified_time\":\"2022-06-07 09:14:21\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(9, 'com_content.article.1', '', '2022-06-07 09:14:21', 551, 665, 'f45afa51241bfd64eda046c8f6b93f21423b4ca8', '{\"id\":1,\"asset_id\":119,\"title\":\"About\",\"alias\":\"about\",\"introtext\":\"<p>This tells you a bit about this blog and the person who writes it. <\\/p><p>When you are logged in you will be able to edit this page by selecting the edit icon.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":9,\"created\":\"2022-06-07 09:14:21\",\"created_by\":551,\"created_by_alias\":\"Joomla\",\"modified\":\"2022-06-07 09:14:21\",\"modified_by\":551,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-06-07 09:14:21\",\"publish_down\":null,\"images\":\"\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":0,\"language\":\"*\",\"note\":null}', 0),
(10, 'com_content.article.2', '', '2022-06-07 09:14:21', 551, 2376, '1ab442adf944758fe40764c7e3561a072fb49035', '{\"id\":2,\"asset_id\":120,\"title\":\"Working on Your Site\",\"alias\":\"working-on-your-site\",\"introtext\":\"<p>Here are some basic tips for working on your site.<\\/p><ul><li>Joomla! has a \'front end\' that you are looking at now and an \'administrator\' or \'back end\' which is where you do the more advanced work of creating your site such as setting up the menus and deciding what modules to show. You need to login to the administrator separately using the same user name and password that you used to login to this part of the site.<\\/li><li>One of the first things you will probably want to do is change the site title and tag line and to add a logo. To do this select the Template Settings link in the menu which is visible if you log in. To change your site description, browser title, default email and other items, select Site Settings. More advanced configuration options are available in the administrator.<\\/li><li>To totally change the look of your site you will probably want to install a new template. Go to System, select Install - Extensions from the list and the extension installer will open. There are many free and commercial templates available for Joomla.<\\/li><li>As you have already seen, you can control who can see different parts of you site. When you work with modules and articles, setting the Access level to Registered will mean that only logged in users can see them.<\\/li><li>When you create a new article or other kind of content you also can save it as Published or Unpublished. If it is Unpublished site visitors will not be able to see it but you will.<\\/li><li>You can learn much more about working with Joomla from the <a href=\'https:\\/\\/docs.joomla.org\\/\'>Joomla documentation site<\\/a> and get help from other users at the <a href=\'https:\\/\\/forum.joomla.org\\/\'>Joomla forums<\\/a>. In the administrator there are help buttons on every page that provide detailed information about the functions on that page.<\\/li><\\/ul>\",\"fulltext\":\"\",\"state\":1,\"catid\":9,\"created\":\"2022-06-07 09:14:21\",\"created_by\":551,\"created_by_alias\":\"Joomla\",\"modified\":\"2022-06-07 09:14:21\",\"modified_by\":551,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-06-07 09:14:21\",\"publish_down\":null,\"images\":\"\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":3,\"hits\":0,\"metadata\":\"{}\",\"featured\":0,\"language\":\"*\",\"note\":null}', 0),
(11, 'com_content.article.3', '', '2022-06-07 09:14:21', 551, 1622, '707bf37a88d4c96dd0b9a0250e8de155bab70fa4', '{\"id\":3,\"asset_id\":121,\"title\":\"Welcome to your blog\",\"alias\":\"welcome-to-your-blog\",\"introtext\":\"<p>This is a sample blog posting.<\\/p><p>If you log in to the site (the Administrator Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.<\\/p><p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.<\\/p><p>Go ahead, you can\'t break it.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":8,\"created\":\"2022-06-07 09:14:21\",\"created_by\":551,\"created_by_alias\":\"Joomla\",\"modified\":\"2022-06-07 09:14:21\",\"modified_by\":551,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-06-07 09:14:21\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa1-1200.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa1-1200.jpg?width=1200&height=400\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Amazing Andromeda Galaxy\\\",\\\"image_intro_alt_empty\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa1-400.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa1-400.jpg?width=400&height=400\\\",\\\"float_fulltext\\\":\\\"float-start\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_alt_empty\\\":1,\\\"image_fulltext_caption\\\":\\\"www.nasa.gov\\\\\\/multimedia\\\\\\/imagegallery\\\"}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":1,\"language\":\"*\",\"note\":null}', 0),
(12, 'com_content.article.4', '', '2022-06-07 09:14:21', 551, 1808, '2d10474e0d723e14834a9181e49651d7a4ec672a', '{\"id\":4,\"asset_id\":123,\"title\":\"About your home page\",\"alias\":\"about-your-home-page\",\"introtext\":\"<p>Your home page is set to display the four most recent articles from the blog category in a column. Then there are links to the next two oldest articles. You can change those numbers by editing the content options settings in the blog tab in your site administrator. There is a link to your site administrator if you are logged in.<\\/p><p>If you want to have your blog post broken into two parts, an introduction and then a full length separate page, use the Read More span to insert a break.<\\/p>\",\"fulltext\":\"<p>On the full page you will see both the introductory content and the rest of the article. You can change the settings to hide the introduction if you want.<\\/p>\",\"state\":1,\"catid\":8,\"created\":\"2022-06-07 09:14:21\",\"created_by\":551,\"created_by_alias\":\"Joomla\",\"modified\":\"2022-06-07 09:14:21\",\"modified_by\":551,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-06-07 09:14:21\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa2-1200.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa2-1200.jpg?width=1200&height=400\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":1,\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa2-400.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa2-400.jpg?width=400&height=400\\\",\\\"float_fulltext\\\":\\\"float-start\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_alt_empty\\\":1,\\\"image_fulltext_caption\\\":\\\"www.nasa.gov\\\\\\/multimedia\\\\\\/imagegallery\\\"}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":1,\"language\":\"*\",\"note\":null}', 0),
(13, 'com_content.article.5', '', '2022-06-07 09:14:21', 551, 2380, '38909d39262e77138d0503c3a1432e90927b3a0b', '{\"id\":5,\"asset_id\":125,\"title\":\"Your Modules\",\"alias\":\"your-modules\",\"introtext\":\"<p>Your site has some commonly used modules already preconfigured. These include:<\\/p><ul><li>Image (type: Custom), which holds the image beneath the menu. This is a Custom module that you can edit to change the image.<\\/li><li>Popular Tags (type: Tags - Popular), which will appear if you use tagging on your articles. Enter a tag in the Tags field when editing.<\\/li><li>Older Posts (type: Articles - Category), which lists out articles by categories.<\\/li><li>Syndication (type: Syndication Feeds), which allows your readers to read your posts in a news reader.<\\/li><li>Login Form (type: Login), which allows your users to access restricted areas of the website.<\\/li><\\/ul><p>Each of these modules has many options which you can experiment with in the Module Manager in your site Administrator. When you are logged in you can also select the edit icon in the top right corner which will take you to an edit screen for that module. Always be sure to save and close any module you edit.<\\/p><p>Joomla! also includes many other modules you can incorporate in your site. As you develop your site you may want to add more modules that you can find at the <a href=https:\\/\\/extensions.joomla.org\\/>Joomla Extensions Directory.<\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":8,\"created\":\"2022-06-07 09:14:21\",\"created_by\":551,\"created_by_alias\":\"Joomla\",\"modified\":\"2022-06-07 09:14:21\",\"modified_by\":551,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-06-07 09:14:21\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa3-1200.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa3-1200.jpg?width=1200&height=400\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":1,\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa3-400.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa3-400.jpg?width=400&height=400\\\",\\\"float_fulltext\\\":\\\"float-start\\\",\\\"image_fulltext_alt\\\":\\\"Crab Nebula\\\",\\\"image_fulltext_alt_empty\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"www.nasa.gov\\\\\\/multimedia\\\\\\/imagegallery\\\"}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":1,\"language\":\"*\",\"note\":null}', 0),
(14, 'com_content.article.6', '', '2022-06-07 09:14:21', 551, 1650, '4b144265d82a71f35b9c9b18b08751c89b187c3a', '{\"id\":6,\"asset_id\":127,\"title\":\"Your Template\",\"alias\":\"your-template\",\"introtext\":\"<p>Templates control the look and feel of your website.<\\/p><p>This blog is installed with the Cassiopeia template.<\\/p><p>You can edit the options by selecting the Working on Your Site, Template Settings link in the menu which is visible when you log in.<\\/p><p>For example you can change the site background colour, highlights colour, site title, site description and title font used.<\\/p><p>More options are available in the site administrator. You may also install a new template using the extension manager.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":8,\"created\":\"2022-06-07 09:14:21\",\"created_by\":551,\"created_by_alias\":\"Joomla\",\"modified\":\"2022-06-07 09:14:21\",\"modified_by\":551,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-06-07 09:14:21\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa4-1200.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa4-1200.jpg?width=1200&height=400\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":1,\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa4-400.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa4-400.jpg?width=400&height=400\\\",\\\"float_fulltext\\\":\\\"float-start\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_alt_empty\\\":1,\\\"image_fulltext_caption\\\":\\\"www.nasa.gov\\\\\\/multimedia\\\\\\/imagegallery\\\"}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":1,\"language\":\"*\",\"note\":null}', 0),
(15, 'com_content.article.7', '', '2022-06-07 09:14:21', 551, 1174, '81a9469f2e101ba0b92998a42319df773f33ea15', '{\"id\":7,\"asset_id\":129,\"title\":\"Millions\",\"alias\":\"millions\",\"introtext\":\"<p><strong>Millions of Websites are built on Joomla!<\\/strong><\\/p><p>Learn more about beautiful blog presentation.<\\/p>\",\"fulltext\":\"<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est<\\/p>\",\"state\":1,\"catid\":10,\"created\":\"2022-06-07 09:14:21\",\"created_by\":551,\"created_by_alias\":\"Joomla\",\"modified\":\"2022-06-07 09:14:21\",\"modified_by\":551,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-06-07 09:14:21\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa1-640.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa1-640.jpg?width=640&height=320\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":1,\\\"image_intro_caption\\\":\\\"\\\"}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":0,\"language\":\"*\",\"note\":null}', 0),
(16, 'com_content.article.8', '', '2022-06-07 09:14:21', 551, 1448, '52ba21844018ee3d64c6654e0a0ee23aecc50962', '{\"id\":8,\"asset_id\":130,\"title\":\"Love\",\"alias\":\"love\",\"introtext\":\"<p><strong>We love Joomla to the moon and back!<\\/strong><\\/p><p>Thank you to all volunteers who have contributed!<\\/p>\",\"fulltext\":\"<p>Uurnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.<\\/p> \",\"state\":1,\"catid\":10,\"created\":\"2022-06-07 09:14:21\",\"created_by\":551,\"created_by_alias\":\"Joomla\",\"modified\":\"2022-06-07 09:14:21\",\"modified_by\":551,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-06-07 09:14:21\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa2-640.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa2-640.jpg?width=640&height=320\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":1,\\\"image_intro_caption\\\":\\\"\\\"}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":0,\"language\":\"*\",\"note\":null}', 0),
(17, 'com_content.article.9', '', '2022-06-07 09:14:21', 551, 1287, '71cd8147bf390053e26335bbb96d3e6c74b2ccba', '{\"id\":9,\"asset_id\":131,\"title\":\"Joomla\",\"alias\":\"joomla\",\"introtext\":\"<p><strong>We proudly present Joomla Version 4!<\\/strong><\\/p><p>Learn more about workflows in Joomla.<\\/p>\",\"fulltext\":\"<p>Cupcake ipsum dolor. Sit amet cotton candy ice cream sesame snaps cake marshmallow powder. Ice cream chocolate cake marshmallow halvah bonbon. Drag\\u00e9e carrot cake danish candy muffin brownie. Candy sugar plum ice cream chupa chups macaroon tiramisu souffl\\u00e9 oat cake. Topping cheesecake lollipop gummi bears icing sweet roll donut liquorice. Pie jelly-o candy donut oat cake cotton candy. <\\/p>\",\"state\":1,\"catid\":10,\"created\":\"2022-06-07 09:14:21\",\"created_by\":551,\"created_by_alias\":\"Joomla\",\"modified\":\"2022-06-07 09:14:21\",\"modified_by\":551,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-06-07 09:14:21\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa3-640.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa3-640.jpg?width=640&height=320\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":1,\\\"image_intro_caption\\\":\\\"\\\"}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":0,\"language\":\"*\",\"note\":null}', 0),
(18, 'com_content.article.10', '', '2022-06-07 09:14:21', 551, 1632, 'ba116e8cef2fd16deb4f96b0c003b3dcb69bf113', '{\"id\":10,\"asset_id\":132,\"title\":\"New feature: Workflows\",\"alias\":\"new-feature-workflows\",\"introtext\":\"<p>Workflows manage the stages your articles must go through until they are published.<\\/p><p>The component to manage workflows is not enabled by default.<\\/p><p>To see the workflow that we have provided with the sample data, you first need to enable this functionality.<\\/p><ol><li>Access the administration area<\\/li><li>From \'Content\' > \'Articles\' > \'Options\' > \'Integration\' tab set \'Enable workflow\' to \'Yes\'<\\/li><li>Save changes<\\/li><\\/ol><p>Now when you access \'Content\' again you will see the section \'Workflows\'.<\\/p><p>When you edit an article you will also see the new transitions for articles related to workflows.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":9,\"created\":\"2022-06-07 09:14:21\",\"created_by\":551,\"created_by_alias\":\"Joomla\",\"modified\":\"2022-06-07 09:14:21\",\"modified_by\":551,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-06-07 09:14:21\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa4-400.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa4-400.jpg?width=400&height=400\\\",\\\"float_fulltext\\\":\\\"float-end\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_alt_empty\\\":1,\\\"image_fulltext_caption\\\":\\\"www.nasa.gov\\\\\\/multimedia\\\\\\/imagegallery\\\"}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":0,\"language\":\"*\",\"note\":null}', 0),
(19, 'com_content.article.11', '', '2022-06-07 09:14:21', 551, 3305, 'b047d3df81a1c1f8bd6ffc1d6fb18ae5481b01e2', '{\"id\":11,\"asset_id\":133,\"title\":\"Typography\",\"alias\":\"typography\",\"introtext\":\"<h1>Colour Scheme<\\/h1> <p> <span class=\\\"btn btn-secondary\\\">secondary<\\/span>   <span class=\\\"btn btn-primary\\\">primary<\\/span>   <span class=\\\"btn btn-info\\\">info<\\/span>   <span class=\\\"btn btn-success\\\">success<\\/span>   <span class=\\\"btn btn-warning\\\">warning<\\/span>   <span class=\\\"btn btn-danger\\\">danger<\\/span> <\\/p> <p><span class=\\\"text text-secondary\\\">text-secondary<\\/span>  <span class=\\\"text text-primary\\\">text-primary<\\/span>  <span class=\\\"text text-info\\\">text-info<\\/span>  <span class=\\\"text text-success\\\">text-success<\\/span>  <span class=\\\"text text-warning\\\">text-warning<\\/span>  <span class=\\\"text text-danger\\\">text-danger<\\/span><\\/p><h1>Typography (h1)<\\/h1><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)<\\/p><h2>Lorem Ipsum Dolor Sit Amet (h2)<\\/h2><p><strong>Lorem ipsum dolor sit amet, consectetuer adipiscing elit <\\/strong> (strong), sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)<\\/p><h3>Lorem Ipsum Dolor Sit Amet (h3)<\\/h3><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)<\\/p><h4>Lorem Ipsum Dolor Sit Amet (h4)<\\/h4><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)<\\/p><h5>Lorem Ipsum Dolor Sit Amet (h5)<\\/h5><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)<\\/p> <p><a href=\\\"index.php\\\"> Lorem ipsum dolor (a)<\\/a><\\/p><h1>Lists<\\/h1> <p>(ol)(li)<\\/p> <ol> <li>Lorem ipsum dolor sit amet consectetur<\\/li> <li>Lorem ipsum dolor sit amet consectetur<\\/li> <\\/ol> <p>(ul)(li)<\\/p> <ul> <li>Lorem ipsum dolor sit amet consectetur<\\/li> <li>Lorem ipsum dolor sit amet consectetur<\\/li> <\\/ul> <h1>Displays<\\/h1><p class=\\\"display-1\\\">Lorem (display-1)<\\/p><p class=\\\"display-2\\\">Lorem (display-2)<\\/p><p class=\\\"display-3\\\">Lorem ipsum (display-3)<\\/p><p class=\\\"display-4\\\">Lorem ipsum (display-4)<\\/p><p class=\\\"lead\\\">Lorem ipsum arma virumque cano (lead)<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":11,\"created\":\"2022-06-07 09:14:21\",\"created_by\":551,\"created_by_alias\":\"Joomla\",\"modified\":\"2022-06-07 09:14:21\",\"modified_by\":551,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-06-07 09:14:21\",\"publish_down\":null,\"images\":\"\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":0,\"language\":\"*\",\"note\":null}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_languages`
--

CREATE TABLE `xd5bf_languages` (
  `lang_id` int UNSIGNED NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `metadesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int NOT NULL DEFAULT '0',
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_languages`
--

INSERT INTO `xd5bf_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_mail_templates`
--

CREATE TABLE `xd5bf_mail_templates` (
  `template_id` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `htmlbody` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_mail_templates`
--

INSERT INTO `xd5bf_mail_templates` (`template_id`, `extension`, `language`, `subject`, `body`, `htmlbody`, `attachments`, `params`) VALUES
('com_actionlogs.notification', 'com_actionlogs', '', 'COM_ACTIONLOGS_EMAIL_SUBJECT', 'COM_ACTIONLOGS_EMAIL_BODY', 'COM_ACTIONLOGS_EMAIL_HTMLBODY', '', '{\"tags\":[\"message\",\"date\",\"extension\",\"username\"]}'),
('com_config.test_mail', 'com_config', '', 'COM_CONFIG_SENDMAIL_SUBJECT', 'COM_CONFIG_SENDMAIL_BODY', '', '', '{\"tags\":[\"sitename\",\"method\"]}'),
('com_contact.mail', 'com_contact', '', 'COM_CONTACT_ENQUIRY_SUBJECT', 'COM_CONTACT_ENQUIRY_TEXT', '', '', '{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),
('com_contact.mail.copy', 'com_contact', '', 'COM_CONTACT_COPYSUBJECT_OF', 'COM_CONTACT_COPYTEXT_OF', '', '', '{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\",\"contactname\"]}'),
('com_messages.new_message', 'com_messages', '', 'COM_MESSAGES_NEW_MESSAGE', 'COM_MESSAGES_NEW_MESSAGE_BODY', '', '', '{\"tags\":[\"subject\",\"message\",\"fromname\",\"sitename\",\"siteurl\",\"fromemail\",\"toname\",\"toemail\"]}'),
('com_privacy.notification.admin.export', 'com_privacy', '', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_EXPORT_REQUEST', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_EXPORT_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.admin.remove', 'com_privacy', '', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_REMOVE_REQUEST', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_REMOVE_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.export', 'com_privacy', '', 'COM_PRIVACY_EMAIL_REQUEST_SUBJECT_EXPORT_REQUEST', 'COM_PRIVACY_EMAIL_REQUEST_BODY_EXPORT_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.remove', 'com_privacy', '', 'COM_PRIVACY_EMAIL_REQUEST_SUBJECT_REMOVE_REQUEST', 'COM_PRIVACY_EMAIL_REQUEST_BODY_REMOVE_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.userdataexport', 'com_privacy', '', 'COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_SUBJECT', 'COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_BODY', '', '', '{\"tags\":[\"sitename\",\"url\"]}'),
('com_users.massmail.mail', 'com_users', '', 'COM_USERS_MASSMAIL_MAIL_SUBJECT', 'COM_USERS_MASSMAIL_MAIL_BODY', '', '', '{\"tags\":[\"subject\",\"body\",\"subjectprefix\",\"bodysuffix\"]}'),
('com_users.password_reset', 'com_users', '', 'COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT', 'COM_USERS_EMAIL_PASSWORD_RESET_BODY', '', '', '{\"tags\":[\"name\",\"email\",\"sitename\",\"link_text\",\"link_html\",\"token\"]}'),
('com_users.registration.admin.new_notification', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.admin.verification_request', 'com_users', '', 'COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT', 'COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"email\",\"username\",\"activate\"]}'),
('com_users.registration.user.admin_activated', 'com_users', '', 'COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT', 'COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.registration_mail', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.registration_mail_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.self_activation', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.self_activation_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.reminder', 'com_users', '', 'COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT', 'COM_USERS_EMAIL_USERNAME_REMINDER_BODY', '', '', '{\"tags\":[\"name\",\"username\",\"sitename\",\"email\",\"link_text\",\"link_html\"]}'),
('plg_system_privacyconsent.request.reminder', 'plg_system_privacyconsent', '', 'PLG_SYSTEM_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT', 'PLG_SYSTEM_PRIVACYCONSENT_EMAIL_REMIND_BODY', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('plg_system_tasknotification.failure_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\", \"exit_code\", \"exec_data_time\", \"task_output\"]}'),
('plg_system_tasknotification.fatal_recovery_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.orphan_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.success_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY', '', '', '{\"tags\":[\"task_id\", \"task_title\", \"exec_data_time\", \"task_output\"]}'),
('plg_system_updatenotification.mail', 'plg_system_updatenotification', '', 'PLG_SYSTEM_UPDATENOTIFICATION_EMAIL_SUBJECT', 'PLG_SYSTEM_UPDATENOTIFICATION_EMAIL_BODY', '', '', '{\"tags\":[\"newversion\",\"curversion\",\"sitename\",\"url\",\"link\",\"releasenews\"]}'),
('plg_user_joomla.mail', 'plg_user_joomla', '', 'PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT', 'PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"url\",\"username\",\"password\",\"email\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_menu`
--

CREATE TABLE `xd5bf_menu` (
  `id` int NOT NULL,
  `menutype` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int UNSIGNED DEFAULT NULL COMMENT 'FK to #__users.id',
  `checked_out_time` datetime DEFAULT NULL COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int UNSIGNED NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint NOT NULL DEFAULT '0',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_menu`
--

INSERT INTO `xd5bf_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`, `publish_up`, `publish_down`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, NULL, NULL, 0, 0, '', 0, '', 0, 91, 0, '*', 0, NULL, NULL),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 3, NULL, NULL, 0, 0, 'class:bookmark', 0, '', 1, 10, 0, '*', 1, NULL, NULL),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners&view=banners', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1, NULL, NULL),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&view=categories&extension=com_banners', 'component', 1, 2, 2, 5, NULL, NULL, 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1, NULL, NULL),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1, NULL, NULL),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1, NULL, NULL),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 7, NULL, NULL, 0, 0, 'class:address-book', 0, '', 11, 20, 0, '*', 1, NULL, NULL),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact&view=contacts', 'component', 1, 7, 2, 7, NULL, NULL, 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1, NULL, NULL),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&view=categories&extension=com_contact', 'component', 1, 7, 2, 5, NULL, NULL, 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1, NULL, NULL),
(10, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 16, NULL, NULL, 0, 0, 'class:rss', 0, '', 23, 28, 0, '*', 1, NULL, NULL),
(11, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds&view=newsfeeds', 'component', 1, 10, 2, 16, NULL, NULL, 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1, NULL, NULL),
(12, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&view=categories&extension=com_newsfeeds', 'component', 1, 10, 2, 5, NULL, NULL, 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1, NULL, NULL),
(13, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 23, NULL, NULL, 0, 0, 'class:search-plus', 0, '', 29, 38, 0, '*', 1, NULL, NULL),
(14, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags&view=tags', 'component', 1, 1, 1, 25, NULL, NULL, 0, 1, 'class:tags', 0, '', 39, 40, 0, '', 1, NULL, NULL),
(15, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations&view=associations', 'component', 1, 1, 1, 30, NULL, NULL, 0, 0, 'class:language', 0, '', 21, 22, 0, '*', 1, NULL, NULL),
(16, 'main', 'mod_menu_fields', 'Contact Custom Fields', '', 'contact/Custom Fields', 'index.php?option=com_fields&context=com_contact.contact', 'component', 1, 7, 2, 29, NULL, NULL, 0, 0, 'class:messages-add', 0, '', 16, 17, 0, '*', 1, NULL, NULL),
(17, 'main', 'mod_menu_fields_group', 'Contact Custom Fields Group', '', 'contact/Custom Fields Group', 'index.php?option=com_fields&view=groups&context=com_contact.contact', 'component', 1, 7, 2, 29, NULL, NULL, 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1, NULL, NULL),
(18, 'main', 'com_finder_index', 'Smart-Search-Index', '', 'Smart Search/Index', 'index.php?option=com_finder&view=index', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder', 0, '', 30, 31, 0, '*', 1, NULL, NULL),
(19, 'main', 'com_finder_maps', 'Smart-Search-Maps', '', 'Smart Search/Maps', 'index.php?option=com_finder&view=maps', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-maps', 0, '', 32, 33, 0, '*', 1, NULL, NULL),
(20, 'main', 'com_finder_filters', 'Smart-Search-Filters', '', 'Smart Search/Filters', 'index.php?option=com_finder&view=filters', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-filters', 0, '', 34, 35, 0, '*', 1, NULL, NULL),
(21, 'main', 'com_finder_searches', 'Smart-Search-Searches', '', 'Smart Search/Searches', 'index.php?option=com_finder&view=searches', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-searches', 0, '', 36, 37, 0, '*', 1, NULL, NULL),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 19, NULL, NULL, 0, 1, '', 0, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"blog_class_leading\":\"\",\"blog_class\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_links\":\"0\",\"link_intro_image\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 41, 42, 1, '*', 0, NULL, NULL),
(102, '0main-menu-blog', 'Blog', 'blog', '', 'blog', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 1, 1, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_title\":0,\"num_leading_articles\":4,\"num_intro_articles\":4,\"num_links\":0,\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"blog_class_leading\":\"boxed columns-2\",\"show_pagination\":2,\"secure\":0,\"show_page_heading\":1}', 43, 44, 0, '*', 0, NULL, NULL),
(103, '0main-menu-blog', 'Help', 'help', '', 'help', 'index.php?option=com_content&view=category&layout=blog&id=9', 'component', 1, 1, 1, 19, NULL, NULL, 0, 1, ' ', 0, '{\"blog_class_leading\":\"\",\"blog_class\":\"boxed\",\"num_leading_articles\":0,\"num_intro_articles\":4,\"num_links\":0,\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":4,\"show_pagination_results\":1,\"article_layout\":\"_:default\",\"link_titles\":0,\"info_block_show_title\":\"\",\"show_category\":0,\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":0,\"link_author\":\"\",\"show_create_date\":0,\"show_modify_date\":\"\",\"show_publish_date\":0,\"show_hits\":0,\"menu_text\":1,\"menu_show\":1,\"show_page_heading\":1,\"secure\":0}', 45, 50, 0, '*', 0, NULL, NULL),
(104, '0main-menu-blog', 'Login', 'login', '', 'login', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 22, NULL, NULL, 0, 5, ' ', 0, '{\"loginredirectchoice\":\"1\",\"login_redirect_url\":\"\",\"login_redirect_menuitem\":101,\"logoutredirectchoice\":\"1\",\"logout_redirect_url\":\"\",\"logout_redirect_menuitem\":101,\"secure\":0}', 51, 52, 0, '*', 0, NULL, NULL),
(105, '0main-menu-blog', 'Logout', 'logout', '', 'logout', 'index.php?option=com_users&view=login&layout=logout&task=user.menulogout', 'component', 1, 1, 1, 22, NULL, NULL, 0, 2, ' ', 0, '{\"logout\":101,\"secure\":0}', 53, 54, 0, '*', 0, NULL, NULL),
(106, '0main-menu-blog', 'Sample Layouts', 'sample-layouts', '', 'sample-layouts', '', 'heading', 1, 1, 1, 0, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"heading\",\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}', 55, 68, 0, '*', 0, NULL, NULL),
(107, '0main-menu-blog', 'Typography', 'typography', '', 'typography', 'index.php?option=com_content&view=article&id=11&catid=11', 'component', 1, 1, 1, 19, NULL, NULL, 0, 1, ' ', 0, '{\"show_title\":0,\"link_titles\":0,\"show_intro\":1,\"info_block_position\":\"\",\"info_block_show_title\":0,\"show_category\":0,\"show_author\":0,\"show_create_date\":0,\"show_modify_date\":0,\"show_publish_date\":0,\"show_item_navigation\":0,\"show_hits\":0,\"show_tags\":0,\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"secure\":0}', 69, 70, 0, '*', 0, NULL, NULL),
(108, '1special-menu', 'Create a Post', 'create-a-post', '', 'create-a-post', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 19, NULL, NULL, 0, 3, ' ', 0, '{\"enable_category\":1,\"catid\":8,\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}', 71, 76, 0, '*', 0, NULL, NULL),
(109, '1special-menu', 'Working on Your Site', 'working-on-your-site', '', 'working-on-your-site', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 19, NULL, NULL, 0, 1, ' ', 0, '{\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}', 77, 78, 0, '*', 0, NULL, NULL),
(110, '1special-menu', 'Site Administrator', 'site-administrator', '', 'site-administrator', 'administrator', 'url', 1, 1, 1, 0, NULL, NULL, 1, 3, ' ', 0, '{\"menu_text\":1,\"secure\":0}', 79, 80, 0, '*', 0, NULL, NULL),
(111, '1special-menu', 'Change Password', 'change-password', '', 'change-password', 'index.php?option=com_users&view=profile&layout=edit', 'component', 1, 1, 1, 22, NULL, NULL, 0, 2, ' ', 0, '{\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}', 81, 82, 0, '*', 0, NULL, NULL),
(112, '1special-menu', 'Log out', 'log-out', '', 'log-out', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 22, NULL, NULL, 0, 1, ' ', 0, '{\"logindescription_show\":1,\"logoutdescription_show\":1,\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}', 83, 84, 0, '*', 0, NULL, NULL),
(113, '2bottom-menu', 'Login', 'login-1', '', 'login-1', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, NULL, NULL, 0, 5, ' ', 0, '{\"aliasoptions\":104,\"alias_redirect\":0,\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"secure\":0}', 85, 86, 0, '*', 0, NULL, NULL),
(114, '2bottom-menu', 'Logout', 'logout-1', '', 'logout-1', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, NULL, NULL, 0, 2, ' ', 0, '{\"aliasoptions\":105,\"alias_redirect\":0,\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"secure\":0}', 87, 88, 0, '*', 0, NULL, NULL),
(115, '2bottom-menu', 'Search', 'search', '', 'search', 'index.php?option=com_finder&view=search', 'component', 1, 1, 1, 23, NULL, NULL, 0, 1, ' ', 0, '{\"show_date_filters\":\"1\",\"show_advanced\":\"\",\"expand_advanced\":\"1\",\"show_taxonomy\":\"1\",\"show_date\":\"1\",\"show_url\":\"1\",\"menu_text\":0,\"menu_show\":0,\"secure\":0}', 89, 90, 0, '*', 0, NULL, NULL),
(116, '1special-menu', 'Site Settings', 'site-settings', '', 'create-a-post/site-settings', 'index.php?option=com_config&view=config', 'component', 1, 108, 2, 20, NULL, NULL, 0, 6, ' ', 0, '{\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}', 72, 73, 0, '*', 0, NULL, NULL),
(117, '1special-menu', 'Template Settings', 'template-settings', '', 'create-a-post/template-settings', 'index.php?option=com_config&view=templates', 'component', 1, 108, 2, 20, NULL, NULL, 0, 6, ' ', 0, '{\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}', 74, 75, 0, '*', 0, NULL, NULL),
(118, '0main-menu-blog', 'Blog', 'blog', '', 'sample-layouts/blog', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 106, 2, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_title\":0,\"num_leading_articles\":1,\"num_intro_articles\":2,\"num_links\":2,\"orderby_sec\":\"front\",\"order_date\":\"published\",\"blog_class_leading\":\"boxed columns-1\",\"blog_class\":\"columns-2\",\"show_pagination\":2,\"show_pagination_results\":1,\"show_category\":0,\"info_bloc_position\":0,\"show_publish_date\":0,\"show_hits\":0,\"show_feed_link\":0,\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}', 56, 57, 0, '*', 0, NULL, NULL),
(119, '0main-menu-blog', 'Category List', 'category-list', '', 'sample-layouts/category-list', 'index.php?option=com_content&view=category&id=8', 'component', 1, 106, 2, 19, NULL, NULL, 0, 1, ' ', 0, '{\"menu_text\":1,\"show_page_heading\":1,\"secure\":0}', 58, 59, 0, '*', 0, NULL, NULL),
(120, '0main-menu-blog', 'Articles', 'articles', '', 'sample-layouts/articles', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', 1, 106, 2, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_title\":0,\"num_leading_articles\":3,\"num_intro_articles\":0,\"num_links\":2,\"orderby_sec\":\"front\",\"order_date\":\"published\",\"blog_class_leading\":\"boxed columns-3\",\"blog_class\":\"\",\"show_pagination\":2,\"show_pagination_results\":1,\"show_category\":0,\"info_bloc_position\":0,\"show_publish_date\":0,\"show_hits\":0,\"show_feed_link\":0,\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}', 60, 67, 0, '*', 0, NULL, NULL),
(121, '0main-menu-blog', 'About your home page', 'about-your-home-page', '', 'help/about-your-home-page', 'index.php?option=com_content&view=article&id=4', 'component', 1, 103, 2, 19, NULL, NULL, 0, 1, ' ', 0, '{\"menu_show\":1,\"show_page_heading\":0,\"secure\":0}', 46, 47, 0, '*', 0, NULL, NULL),
(122, '0main-menu-blog', 'New feature: Workflows', 'new-feature-workflows', '', 'help/new-feature-workflows', 'index.php?option=com_content&view=article&id=10', 'component', 1, 103, 2, 19, NULL, NULL, 0, 1, ' ', 0, '{\"menu_show\":1,\"show_page_heading\":0,\"secure\":0}', 48, 49, 0, '*', 0, NULL, NULL),
(123, '0main-menu-blog', 'Millions', 'millions', '', 'sample-layouts/articles/millions', 'index.php?option=com_content&view=article&id=7', 'component', 1, 120, 3, 19, NULL, NULL, 0, 1, ' ', 0, '{\"menu_show\":1,\"secure\":0}', 61, 62, 0, '*', 0, NULL, NULL),
(124, '0main-menu-blog', 'Love', 'love', '', 'sample-layouts/articles/love', 'index.php?option=com_content&view=article&id=8', 'component', 1, 120, 3, 19, NULL, NULL, 0, 1, ' ', 0, '{\"menu_show\":1,\"secure\":0}', 63, 64, 0, '*', 0, NULL, NULL),
(125, '0main-menu-blog', 'Joomla', 'joomla', '', 'sample-layouts/articles/joomla', 'index.php?option=com_content&view=article&id=9', 'component', 1, 120, 3, 19, NULL, NULL, 0, 1, ' ', 0, '{\"menu_show\":1,\"secure\":0}', 65, 66, 0, '*', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_menu_types`
--

CREATE TABLE `xd5bf_menu_types` (
  `id` int UNSIGNED NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_menu_types`
--

INSERT INTO `xd5bf_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0),
(2, 134, '0main-menu-blog', 'Main Menu Blog', 'The horizontal dropdown menu', 0),
(3, 135, '1special-menu', 'Special Menu', '', 0),
(4, 136, '2bottom-menu', 'Bottom Menu', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_messages`
--

CREATE TABLE `xd5bf_messages` (
  `message_id` int UNSIGNED NOT NULL,
  `user_id_from` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `priority` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_messages_cfg`
--

CREATE TABLE `xd5bf_messages_cfg` (
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_modules`
--

CREATE TABLE `xd5bf_modules` (
  `id` int NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ordering` int NOT NULL DEFAULT '0',
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint NOT NULL DEFAULT '0',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_modules`
--

INSERT INTO `xd5bf_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'sidebar-right', NULL, NULL, NULL, NULL, 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', NULL, NULL, NULL, NULL, 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', NULL, NULL, NULL, NULL, 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Notifications', '', '', 3, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 3, 1, '{\"context\":\"update_quickicon\",\"header_icon\":\"icon-sync\",\"show_jupdate\":\"1\",\"show_eupdate\":\"1\",\"show_oupdate\":\"1\",\"show_privacy\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', NULL, NULL, NULL, NULL, 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', NULL, NULL, NULL, NULL, 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'sidebar-right', NULL, NULL, NULL, NULL, 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'breadcrumbs', NULL, NULL, NULL, NULL, 1, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 2, 'status', NULL, NULL, NULL, NULL, 1, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'status', NULL, NULL, NULL, NULL, 1, 'mod_version', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_sampledata', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(88, 67, 'Latest Actions', '', '', 0, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_latestactions', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(89, 68, 'Privacy Dashboard', '', '', 0, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_privacy_dashboard', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(90, 89, 'Login Support', '', '', 1, 'sidebar', NULL, NULL, NULL, NULL, 1, 'mod_loginsupport', 1, 1, '{\"forum_url\":\"https://forum.joomla.org/\",\"documentation_url\":\"https://docs.joomla.org/\",\"news_url\":\"https://www.joomla.org/announcements.html\",\"automatic_title\":1,\"prepare_content\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(91, 72, 'System Dashboard', '', '', 1, 'cpanel-system', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"system\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(92, 73, 'Content Dashboard', '', '', 1, 'cpanel-content', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"content\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(93, 74, 'Menus Dashboard', '', '', 1, 'cpanel-menus', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"menus\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(94, 75, 'Components Dashboard', '', '', 1, 'cpanel-components', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"components\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(95, 76, 'Users Dashboard', '', '', 1, 'cpanel-users', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"users\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(96, 86, 'Popular Articles', '', '', 3, 'cpanel-content', NULL, NULL, NULL, NULL, 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(97, 87, 'Recently Added Articles', '', '', 4, 'cpanel-content', NULL, NULL, NULL, NULL, 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(98, 88, 'Logged-in Users', '', '', 2, 'cpanel-users', NULL, NULL, NULL, NULL, 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(99, 77, 'Frontend Link', '', '', 5, 'status', NULL, NULL, NULL, NULL, 1, 'mod_frontend', 1, 1, '', 1, '*'),
(100, 78, 'Messages', '', '', 4, 'status', NULL, NULL, NULL, NULL, 1, 'mod_messages', 3, 1, '', 1, '*'),
(101, 79, 'Post Install Messages', '', '', 3, 'status', NULL, NULL, NULL, NULL, 1, 'mod_post_installation_messages', 3, 1, '', 1, '*'),
(102, 80, 'User Status', '', '', 6, 'status', NULL, NULL, NULL, NULL, 1, 'mod_user', 3, 1, '', 1, '*'),
(103, 70, 'Site', '', '', 1, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"site_quickicon\",\"header_icon\":\"icon-desktop\",\"show_users\":\"1\",\"show_articles\":\"1\",\"show_categories\":\"1\",\"show_media\":\"1\",\"show_menuItems\":\"1\",\"show_modules\":\"1\",\"show_plugins\":\"1\",\"show_templates\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(104, 71, 'System', '', '', 2, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"system_quickicon\",\"header_icon\":\"icon-wrench\",\"show_global\":\"1\",\"show_checkin\":\"1\",\"show_cache\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(105, 82, '3rd Party', '', '', 4, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"mod_quickicon\",\"header_icon\":\"icon-boxes\",\"load_plugins\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(106, 83, 'Help Dashboard', '', '', 1, 'cpanel-help', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"help\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"style\":\"System-none\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(107, 84, 'Privacy Requests', '', '', 1, 'cpanel-privacy', NULL, NULL, NULL, NULL, 1, 'mod_privacy_dashboard', 1, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(108, 85, 'Privacy Status', '', '', 1, 'cpanel-privacy', NULL, NULL, NULL, NULL, 1, 'mod_privacy_status', 1, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(109, 137, 'Main Menu Blog', '', '', 1, 'menu', NULL, NULL, NULL, NULL, 1, 'mod_menu', 1, 0, '{\"menutype\":\"0main-menu-blog\",\"layout\":\"cassiopeia:collapse-metismenu\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"class_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"nav\",\"bootstrap_size\":0,\"header_tag\":\"h3\",\"style\":0}', 0, '*'),
(110, 138, 'Special Menu', '', '', 1, 'sidebar-right', NULL, NULL, NULL, NULL, 1, 'mod_menu', 3, 0, '{\"menutype\":\"1special-menu\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"class_sfx\":\"\",\"layout\":\"_:default\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"aside\",\"bootstrap_size\":0,\"header_tag\":\"h3\",\"style\":0}', 0, '*'),
(111, 139, 'Syndication', '', '', 6, 'sidebar-right', NULL, NULL, NULL, NULL, 1, 'mod_syndicate', 1, 0, '{\"display_text\":1,\"text\":\"My Blog\",\"format\":\"rss\",\"layout\":\"_:default\",\"cache\":0,\"module_tag\":\"section\"}', 0, '*'),
(112, 140, 'Archived Articles', '', '', 4, 'sidebar-right', NULL, NULL, NULL, NULL, 1, 'mod_articles_archive', 1, 1, '{\"count\":10,\"layout\":\"_:default\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"cachemode\":\"static\"}', 0, '*'),
(113, 141, 'Latest Posts', '', '', 6, 'top-a', NULL, NULL, NULL, NULL, 1, 'mod_articles_news', 1, 0, '{\"catid\":10,\"image\":1,\"img_intro_full\":\"intro\",\"item_title\":0,\"link_titles\":\"\",\"item_heading\":\"h4\",\"triggerevents\":1,\"showLastSeparator\":1,\"show_introtext\":1,\"readmore\":1,\"count\":3,\"show_featured\":\"\",\"exclude_current\":0,\"ordering\":\"a.publish_up\",\"direction\":1,\"layout\":\"_:horizontal\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"style\":\"Cassiopeia-noCard\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\"}', 0, '*'),
(114, 142, 'Older Posts', '', '', 2, 'bottom-b', NULL, NULL, NULL, NULL, 1, 'mod_articles_category', 1, 1, '{\"mode\":\"normal\",\"show_on_article_page\":0,\"show_front\":\"show\",\"count\":6,\"category_filtering_type\":1,\"catid\":8,\"show_child_category_articles\":0,\"levels\":1,\"author_filtering_type\":1,\"author_alias_filtering_type\":1,\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"relative_date\":30,\"article_ordering\":\"a.created\",\"article_ordering_direction\":\"DESC\",\"article_grouping\":\"none\",\"article_grouping_direction\":\"krsort\",\"month_year_format\":\"F Y\",\"item_heading\":5,\"link_titles\":1,\"show_date\":0,\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i\",\"show_category\":0,\"show_hits\":0,\"show_author\":0,\"show_introtext\":0,\"introtext_limit\":100,\"show_readmore\":0,\"show_readmore_title\":1,\"readmore_limit\":15,\"layout\":\"_:default\",\"owncache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":4,\"header_tag\":\"h3\",\"style\":0}', 0, '*'),
(115, 143, 'Bottom Menu', '', '', 1, 'footer', NULL, NULL, NULL, NULL, 1, 'mod_menu', 1, 0, '{\"menutype\":\"2bottom-menu\",\"class_sfx\":\"menu-horizontal\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":0,\"layout\":\"cassiopeia:dropdown-metismenu\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":0,\"header_tag\":\"h3\",\"style\":0}', 0, '*'),
(116, 144, 'Search', '', '', 1, 'search', NULL, NULL, NULL, NULL, 1, 'mod_finder', 1, 1, '{\"searchfilter\":\"\",\"show_autosuggest\":1,\"show_advanced\":0,\"show_label\":0,\"alt_label\":\"Search\",\"show_button\":1,\"opensearch\":1,\"opensearch_name\":\"\",\"set_itemid\":0,\"layout\":\"_:default\",\"module_tag\":\"search\"}', 0, '*'),
(117, 145, 'Image', '', '<p><h1 class=\"display-4 text-thin\">Welcome to Joomla on Cassiopeia!</h1><p class=\"lead\"><strong>You have chosen one of the most powerful CMS Systems in the world.</strong></p><p class=\"lead\">Cassiopeia is the multi-purpose frontend template for Joomla 4.</p><p><a class=\"btn btn-primary btn-lg\" href=\"index.php?option=com_content&view=article&id=11&catid=11\">Typography »</a></p></p>', 1, 'banner', NULL, NULL, NULL, NULL, 1, 'mod_custom', 1, 0, '{\"prepare_content\":0,\"backgroundimage\":\"images\\/banners\\/banner.jpg#joomlaImage:\\/\\/local-images\\/banners\\/banner.jpg?width=1140&height=600\",\"layout\":\"cassiopeia:banner\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\"}', 0, '*'),
(118, 146, 'Popular Tags', '', '', 1, 'bottom-b', NULL, NULL, NULL, NULL, 1, 'mod_tags_popular', 1, 1, '{\"maximum\":8,\"timeframe\":\"alltime\",\"order_value\":\"count\",\"order_direction\":1,\"display_count\":1,\"no_results_text\":0,\"minsize\":1,\"maxsize\":2,\"layout\":\"_:cloud\",\"owncache\":1,\"module_tag\":\"aside\",\"bootstrap_size\":4,\"header_tag\":\"h3\",\"style\":0}', 0, '*'),
(119, 147, 'Similar Items', '', '', 3, 'bottom-b', NULL, NULL, NULL, NULL, 1, 'mod_tags_similar', 1, 1, '{\"maximum\":5,\"matchtype\":\"any\",\"layout\":\"_:default\",\"owncache\":1,\"module_tag\":\"div\",\"bootstrap_size\":4,\"header_tag\":\"h3\",\"style\":0}', 0, '*'),
(120, 148, 'Site Information', '', '', 4, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_stats_admin', 6, 1, '{\"serverinfo\":1,\"siteinfo\":1,\"counter\":0,\"increase\":0,\"layout\":\"_:default\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":0,\"header_tag\":\"h3\",\"style\":0}', 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_modules_menu`
--

CREATE TABLE `xd5bf_modules_menu` (
  `moduleid` int NOT NULL DEFAULT '0',
  `menuid` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_modules_menu`
--

INSERT INTO `xd5bf_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(14, 0),
(15, 0),
(16, -104),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 0),
(112, 0),
(113, 101),
(114, 0),
(115, 0),
(116, 0),
(117, 101),
(118, 0),
(119, 0),
(120, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_newsfeeds`
--

CREATE TABLE `xd5bf_newsfeeds` (
  `catid` int NOT NULL DEFAULT '0',
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint NOT NULL DEFAULT '0',
  `numarticles` int UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `rtl` tinyint NOT NULL DEFAULT '0',
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `metadesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int UNSIGNED NOT NULL DEFAULT '1',
  `hits` int UNSIGNED NOT NULL DEFAULT '0',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_overrider`
--

CREATE TABLE `xd5bf_overrider` (
  `id` int NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_postinstall_messages`
--

CREATE TABLE `xd5bf_postinstall_messages` (
  `postinstall_message_id` bigint UNSIGNED NOT NULL,
  `extension_id` bigint NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint NOT NULL DEFAULT '1',
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_postinstall_messages`
--

INSERT INTO `xd5bf_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 220, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 220, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 220, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 220, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 220, 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_TITLE', 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_BODY', 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_ACTION', 'plg_system_httpheaders', 1, 'action', 'site://plugins/system/httpheaders/postinstall/introduction.php', 'httpheaders_postinstall_action', 'site://plugins/system/httpheaders/postinstall/introduction.php', 'httpheaders_postinstall_condition', '4.0.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_privacy_consents`
--

CREATE TABLE `xd5bf_privacy_consents` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `state` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint NOT NULL DEFAULT '0',
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_privacy_requests`
--

CREATE TABLE `xd5bf_privacy_requests` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `request_type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_redirect_links`
--

CREATE TABLE `xd5bf_redirect_links` (
  `id` int UNSIGNED NOT NULL,
  `old_url` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_scheduler_tasks`
--

CREATE TABLE `xd5bf_scheduler_tasks` (
  `id` int UNSIGNED NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `execution_rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Execution Rules, Unprocessed',
  `cron_rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Processed execution rules, crontab-like JSON form',
  `state` tinyint NOT NULL DEFAULT '0',
  `last_exit_code` int NOT NULL DEFAULT '0' COMMENT 'Exit code when job was last run',
  `last_execution` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `next_execution` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  `times_executed` int DEFAULT '0' COMMENT 'Count of successful triggers',
  `times_failed` int DEFAULT '0' COMMENT 'Count of failures',
  `locked` datetime DEFAULT NULL,
  `priority` smallint NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0' COMMENT 'Configurable list ordering',
  `cli_exclusive` smallint NOT NULL DEFAULT '0' COMMENT 'If 1, the task is only accessible via CLI',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_schemas`
--

CREATE TABLE `xd5bf_schemas` (
  `extension_id` int NOT NULL,
  `version_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_schemas`
--

INSERT INTO `xd5bf_schemas` (`extension_id`, `version_id`) VALUES
(220, '4.1.3-2022-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_session`
--

CREATE TABLE `xd5bf_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint UNSIGNED DEFAULT NULL,
  `guest` tinyint UNSIGNED DEFAULT '1',
  `time` int NOT NULL DEFAULT '0',
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `userid` int DEFAULT '0',
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_session`
--

INSERT INTO `xd5bf_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(0x3363366361333732613965616438343865303534383866393636376530376661, 0, 0, 1654107222, 'joomla|s:888:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjU7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNjU0MTA3MTQ5O3M6NDoibGFzdCI7aToxNjU0MTA3MjE5O3M6Mzoibm93IjtpOjE2NTQxMDcyMjI7fXM6NToidG9rZW4iO3M6MzI6ImY3NWMwYTEyYmZmNDBhMzBlMWQwMTJjMTQ0MTAwNmM1Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6NToidXNlcnMiO086ODoic3RkQ2xhc3MiOjE6e3M6NToibG9naW4iO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZm9ybSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo2OiJyZXR1cm4iO3M6MTk6Imh0dHA6Ly8xNzIuMTguMC4xNi8iO3M6NDoiZGF0YSI7YTowOnt9fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6NTUxO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 551, 'Count'),
(0x3663323639633861303662353861383632666230316532646666643836393763, 0, 1, 1654593277, 'joomla|s:688:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjI7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNjU0NTkzMjQ5O3M6NDoibGFzdCI7aToxNjU0NTkzMjQ5O3M6Mzoibm93IjtpOjE2NTQ1OTMyNzc7fXM6NToidG9rZW4iO3M6MzI6Ijk5ODY2YTYzN2NjYWE0ZGY1YmZhN2NjMTJmYWM1NThhIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
(0x6563653930323864363962653438343666626637323166383762626566376163, 1, 0, 1654593415, 'joomla|s:1600:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjI1O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1NDU5MzIzNTtzOjQ6Imxhc3QiO2k6MTY1NDU5MzQxNTtzOjM6Im5vdyI7aToxNjU0NTkzNDE1O31zOjU6InRva2VuIjtzOjMyOiI2YzBkZjEwYzE5YjBhY2EzZWY2ZjlhZDBhMGU2OTI3OCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoyOntzOjEwOiJzYW1wbGVkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImJsb2ciO086ODoic3RkQ2xhc3MiOjM6e3M6ODoiYXJ0aWNsZXMiO2E6MTI6e2k6MDtpOjE7aToxO2k6MjtpOjI7aTozO2k6MztpOjQ7aTo0O2k6NTtpOjU7aTo2O2k6NjtpOjc7aTo3O2k6ODtpOjg7aTo5O2k6OTtpOjEwO2k6MTA7aToxMTtzOjY6ImNhdElkcyI7YTo0OntpOjA7aTo4O2k6MTtpOjk7aToyO2k6MTA7aTozO2k6MTE7fX1zOjk6Im1lbnV0eXBlcyI7YTozOntpOjA7czoxNToiMG1haW4tbWVudS1ibG9nIjtpOjE7czoxMzoiMXNwZWNpYWwtbWVudSI7aToyO3M6MTI6IjJib3R0b20tbWVudSI7fXM6MTM6Im1lbnVJZHNMZXZlbDEiO2E6MTQ6e2k6MDtpOjEwMjtpOjE7aToxMDM7aToyO2k6MTA0O2k6MztpOjEwNTtpOjQ7aToxMDY7aTo1O2k6MTA3O2k6NjtpOjEwODtpOjc7aToxMDk7aTo4O2k6MTEwO2k6OTtpOjExMTtpOjEwO2k6MTEyO2k6MTE7aToxMTM7aToxMjtpOjExNDtpOjEzO2k6MTE1O319fXM6OToiY29tX3VzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoidXNlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJkYXRhIjtOO3M6MjoiaWQiO2E6MDp7fX19fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjU1MTt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO2E6MDp7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 551, 'Count');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_tags`
--

CREATE TABLE `xd5bf_tags` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_tags`
--

INSERT INTO `xd5bf_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 9, 0, '', 'ROOT', 'root', '', '', 1, NULL, NULL, 1, '', '', '', '', 551, '2022-06-01 18:11:56', '', 551, '2022-06-01 18:11:56', '', '', 0, '*', 1, NULL, NULL),
(2, 1, 1, 2, 1, 'millions', 'Millions', 'millions', '', '', 1, NULL, NULL, 1, '{}', '', '', '{}', 551, '2022-06-07 09:14:21', '', 551, '2022-06-07 09:14:21', '{}', '{}', 0, '*', 1, NULL, NULL),
(3, 1, 3, 4, 1, 'worldwide', 'Worldwide', 'worldwide', '', '', 1, NULL, NULL, 1, '{}', '', '', '{}', 551, '2022-06-07 09:14:21', '', 551, '2022-06-07 09:14:21', '{}', '{}', 0, '*', 2, NULL, NULL),
(4, 1, 5, 8, 1, 'love', 'Love', 'love', '', '', 1, NULL, NULL, 1, '{}', '', '', '{}', 551, '2022-06-07 09:14:21', '', 551, '2022-06-07 09:14:21', '{}', '{}', 0, '*', 3, NULL, NULL),
(5, 4, 6, 7, 2, 'love/joomla-4', 'Joomla 4', 'joomla-4', '', '', 1, NULL, NULL, 1, '{}', '', '', '{}', 551, '2022-06-07 09:14:21', '', 551, '2022-06-07 09:14:21', '{}', '{}', 0, '*', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_template_overrides`
--

CREATE TABLE `xd5bf_template_overrides` (
  `id` int UNSIGNED NOT NULL,
  `template` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hash_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension_id` int DEFAULT '0',
  `state` tinyint NOT NULL DEFAULT '0',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_template_styles`
--

CREATE TABLE `xd5bf_template_styles` (
  `id` int UNSIGNED NOT NULL,
  `template` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inheritable` tinyint NOT NULL DEFAULT '0',
  `parent` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_template_styles`
--

INSERT INTO `xd5bf_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `inheritable`, `parent`, `params`) VALUES
(10, 'atum', 1, '1', 'Atum - Default', 1, '', '{\"hue\":\"hsl(214, 63%, 20%)\",\"bg-light\":\"#f0f4fb\",\"text-dark\":\"#495057\",\"text-light\":\"#ffffff\",\"link-color\":\"#2a69b8\",\"special-color\":\"#001b4c\",\"monochrome\":\"0\",\"loginLogo\":\"\",\"loginLogoAlt\":\"\",\"logoBrandLarge\":\"\",\"logoBrandLargeAlt\":\"\",\"logoBrandSmall\":\"\",\"logoBrandSmallAlt\":\"\"}'),
(11, 'cassiopeia', 0, '1', 'Cassiopeia - Default', 1, '', '{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_ucm_base`
--

CREATE TABLE `xd5bf_ucm_base` (
  `ucm_id` int UNSIGNED NOT NULL,
  `ucm_item_id` int NOT NULL,
  `ucm_type_id` int NOT NULL,
  `ucm_language_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_ucm_base`
--

INSERT INTO `xd5bf_ucm_base` (`ucm_id`, `ucm_item_id`, `ucm_type_id`, `ucm_language_id`) VALUES
(1, 3, 1, 0),
(2, 4, 1, 0),
(3, 5, 1, 0),
(4, 6, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_ucm_content`
--

CREATE TABLE `xd5bf_ucm_content` (
  `core_content_id` int UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `core_state` tinyint NOT NULL DEFAULT '0',
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int UNSIGNED DEFAULT NULL,
  `core_access` int UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `core_featured` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `core_urls` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `core_hits` int UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int NOT NULL DEFAULT '0',
  `core_metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `core_metadesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `core_catid` int UNSIGNED NOT NULL DEFAULT '0',
  `core_type_id` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

--
-- Dumping data for table `xd5bf_ucm_content`
--

INSERT INTO `xd5bf_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_type_id`) VALUES
(1, 'com_content.article', 'Welcome to your blog', 'welcome-to-your-blog', '<p>This is a sample blog posting.</p><p>If you log in to the site (the Administrator Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.</p><p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.</p><p>Go ahead, you can\'t break it.</p>', 1, NULL, NULL, 1, '{}', 1, '{}', 551, '', '2022-06-07 09:14:21', 551, '2022-06-07 09:14:21', '*', '2022-06-07 09:14:21', NULL, 3, 122, '{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa1-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa1-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"Amazing Andromeda Galaxy\",\"image_intro_alt_empty\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa1-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa1-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}', '{}', 0, 1, 0, '', '', 8, 1),
(2, 'com_content.article', 'About your home page', 'about-your-home-page', '<p>Your home page is set to display the four most recent articles from the blog category in a column. Then there are links to the next two oldest articles. You can change those numbers by editing the content options settings in the blog tab in your site administrator. There is a link to your site administrator if you are logged in.</p><p>If you want to have your blog post broken into two parts, an introduction and then a full length separate page, use the Read More span to insert a break.</p>', 1, NULL, NULL, 1, '{}', 1, '{}', 551, '', '2022-06-07 09:14:21', 551, '2022-06-07 09:14:21', '*', '2022-06-07 09:14:21', NULL, 4, 124, '{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa2-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa2-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa2-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa2-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}', '{}', 0, 1, 0, '', '', 8, 1),
(3, 'com_content.article', 'Your Modules', 'your-modules', '<p>Your site has some commonly used modules already preconfigured. These include:</p><ul><li>Image (type: Custom), which holds the image beneath the menu. This is a Custom module that you can edit to change the image.</li><li>Popular Tags (type: Tags - Popular), which will appear if you use tagging on your articles. Enter a tag in the Tags field when editing.</li><li>Older Posts (type: Articles - Category), which lists out articles by categories.</li><li>Syndication (type: Syndication Feeds), which allows your readers to read your posts in a news reader.</li><li>Login Form (type: Login), which allows your users to access restricted areas of the website.</li></ul><p>Each of these modules has many options which you can experiment with in the Module Manager in your site Administrator. When you are logged in you can also select the edit icon in the top right corner which will take you to an edit screen for that module. Always be sure to save and close any module you edit.</p><p>Joomla! also includes many other modules you can incorporate in your site. As you develop your site you may want to add more modules that you can find at the <a href=https://extensions.joomla.org/>Joomla Extensions Directory.</a></p>', 1, NULL, NULL, 1, '{}', 1, '{}', 551, '', '2022-06-07 09:14:21', 551, '2022-06-07 09:14:21', '*', '2022-06-07 09:14:21', NULL, 5, 126, '{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa3-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa3-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa3-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa3-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"Crab Nebula\",\"image_fulltext_alt_empty\":\"\",\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}', '{}', 0, 1, 0, '', '', 8, 1),
(4, 'com_content.article', 'Your Template', 'your-template', '<p>Templates control the look and feel of your website.</p><p>This blog is installed with the Cassiopeia template.</p><p>You can edit the options by selecting the Working on Your Site, Template Settings link in the menu which is visible when you log in.</p><p>For example you can change the site background colour, highlights colour, site title, site description and title font used.</p><p>More options are available in the site administrator. You may also install a new template using the extension manager.</p>', 1, NULL, NULL, 1, '{}', 1, '{}', 551, '', '2022-06-07 09:14:21', 551, '2022-06-07 09:14:21', '*', '2022-06-07 09:14:21', NULL, 6, 128, '{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa4-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa4-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}', '{}', 0, 1, 0, '', '', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_updates`
--

CREATE TABLE `xd5bf_updates` (
  `update_id` int NOT NULL,
  `update_site_id` int DEFAULT '0',
  `extension_id` int DEFAULT '0',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint DEFAULT '0',
  `version` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `changelogurl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `extra_query` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `xd5bf_updates`
--

INSERT INTO `xd5bf_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `changelogurl`, `extra_query`) VALUES
(44, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '4.0.2.1', '', 'https://update.joomla.org/language/details4/ar-AA_details.xml', '', '', ''),
(45, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '4.0.4.2', '', 'https://update.joomla.org/language/details4/ca-ES_details.xml', '', '', ''),
(46, 2, 0, 'Chinese, Simplified', '', 'pkg_zh-CN', 'package', '', 0, '4.1.0.3', '', 'https://update.joomla.org/language/details4/zh-CN_details.xml', '', '', ''),
(47, 2, 0, 'Chinese, Traditional', '', 'pkg_zh-TW', 'package', '', 0, '4.1.4.2', '', 'https://update.joomla.org/language/details4/zh-TW_details.xml', '', '', ''),
(48, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '4.1.2.1', '', 'https://update.joomla.org/language/details4/cs-CZ_details.xml', '', '', ''),
(49, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/da-DK_details.xml', '', '', ''),
(50, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/nl-NL_details.xml', '', '', ''),
(51, 2, 0, 'English, Australia', '', 'pkg_en-AU', 'package', '', 0, '4.1.2.1', '', 'https://update.joomla.org/language/details4/en-AU_details.xml', '', '', ''),
(52, 2, 0, 'English, Canada', '', 'pkg_en-CA', 'package', '', 0, '4.1.2.1', '', 'https://update.joomla.org/language/details4/en-CA_details.xml', '', '', ''),
(53, 2, 0, 'English, New Zealand', '', 'pkg_en-NZ', 'package', '', 0, '4.1.2.1', '', 'https://update.joomla.org/language/details4/en-NZ_details.xml', '', '', ''),
(54, 2, 0, 'English, USA', '', 'pkg_en-US', 'package', '', 0, '4.1.2.1', '', 'https://update.joomla.org/language/details4/en-US_details.xml', '', '', ''),
(55, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '4.1.5.1', '', 'https://update.joomla.org/language/details4/et-EE_details.xml', '', '', ''),
(56, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '4.1.1.2', '', 'https://update.joomla.org/language/details4/fi-FI_details.xml', '', '', ''),
(57, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/nl-BE_details.xml', '', '', ''),
(58, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/fr-FR_details.xml', '', '', ''),
(59, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/ka-GE_details.xml', '', '', ''),
(60, 2, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/de-DE_details.xml', '', '', ''),
(61, 2, 0, 'German, Austria', '', 'pkg_de-AT', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/de-AT_details.xml', '', '', ''),
(62, 2, 0, 'German, Liechtenstein', '', 'pkg_de-LI', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/de-LI_details.xml', '', '', ''),
(63, 2, 0, 'German, Luxembourg', '', 'pkg_de-LU', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/de-LU_details.xml', '', '', ''),
(64, 2, 0, 'German, Switzerland', '', 'pkg_de-CH', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/de-CH_details.xml', '', '', ''),
(65, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '4.1.4.2', '', 'https://update.joomla.org/language/details4/el-GR_details.xml', '', '', ''),
(66, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '4.1.2.1', '', 'https://update.joomla.org/language/details4/hu-HU_details.xml', '', '', ''),
(67, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/it-IT_details.xml', '', '', ''),
(68, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/ja-JP_details.xml', '', '', ''),
(69, 2, 0, 'Kazakh', '', 'pkg_kk-KZ', 'package', '', 0, '4.1.2.1', '', 'https://update.joomla.org/language/details4/kk-KZ_details.xml', '', '', ''),
(70, 2, 0, 'Norwegian Bokmål', '', 'pkg_nb-NO', 'package', '', 0, '4.0.1.1', '', 'https://update.joomla.org/language/details4/nb-NO_details.xml', '', '', ''),
(71, 2, 0, 'Persian Farsi', '', 'pkg_fa-IR', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/fa-IR_details.xml', '', '', ''),
(72, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '4.1.0.5', '', 'https://update.joomla.org/language/details4/pl-PL_details.xml', '', '', ''),
(73, 2, 0, 'Portuguese, Brazil', '', 'pkg_pt-BR', 'package', '', 0, '4.0.3.1', '', 'https://update.joomla.org/language/details4/pt-BR_details.xml', '', '', ''),
(74, 2, 0, 'Portuguese, Portugal', '', 'pkg_pt-PT', 'package', '', 0, '4.0.0-rc4.2', '', 'https://update.joomla.org/language/details4/pt-PT_details.xml', '', '', ''),
(75, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '4.1.3.2', '', 'https://update.joomla.org/language/details4/ro-RO_details.xml', '', '', ''),
(76, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '4.1.3.1', '', 'https://update.joomla.org/language/details4/ru-RU_details.xml', '', '', ''),
(77, 2, 0, 'Serbian, Latin', '', 'pkg_sr-RS', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/sr-RS_details.xml', '', '', ''),
(78, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '4.0.6.1', '', 'https://update.joomla.org/language/details4/sk-SK_details.xml', '', '', ''),
(79, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/sl-SI_details.xml', '', '', ''),
(80, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '4.1.3.1', '', 'https://update.joomla.org/language/details4/es-ES_details.xml', '', '', ''),
(81, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/sv-SE_details.xml', '', '', ''),
(82, 2, 0, 'Tamil, India', '', 'pkg_ta-IN', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/ta-IN_details.xml', '', '', ''),
(83, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/th-TH_details.xml', '', '', ''),
(84, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '4.1.4.4', '', 'https://update.joomla.org/language/details4/tr-TR_details.xml', '', '', ''),
(85, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '4.0.3.2', '', 'https://update.joomla.org/language/details4/uk-UA_details.xml', '', '', ''),
(86, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '4.1.4.1', '', 'https://update.joomla.org/language/details4/cy-GB_details.xml', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_update_sites`
--

CREATE TABLE `xd5bf_update_sites` (
  `update_site_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int DEFAULT '0',
  `last_check_timestamp` bigint DEFAULT '0',
  `extra_query` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `xd5bf_update_sites`
--

INSERT INTO `xd5bf_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`, `checked_out`, `checked_out_time`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1654593235, '', NULL, NULL),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_4.xml', 1, 1654593227, '', NULL, NULL),
(3, 'Joomla! Update Component', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1654593246, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_update_sites_extensions`
--

CREATE TABLE `xd5bf_update_sites_extensions` (
  `update_site_id` int NOT NULL DEFAULT '0',
  `extension_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `xd5bf_update_sites_extensions`
--

INSERT INTO `xd5bf_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 220),
(2, 221),
(3, 24);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_usergroups`
--

CREATE TABLE `xd5bf_usergroups` (
  `id` int UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_usergroups`
--

INSERT INTO `xd5bf_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_users`
--

CREATE TABLE `xd5bf_users` (
  `id` int NOT NULL,
  `name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint NOT NULL DEFAULT '0',
  `sendEmail` tinyint DEFAULT '0',
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime DEFAULT NULL COMMENT 'Date of last password reset',
  `resetCount` int NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_users`
--

INSERT INTO `xd5bf_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`, `authProvider`) VALUES
(551, 'Dantes', 'Count', 'test@test.com', '$2y$10$dTMh6rXl9GbiTk9N1Nij6.bc8DSAbvi/A4zaOXho06GZefCZOzySy', 0, 1, '2022-06-01 18:12:04', '2022-06-07 09:14:05', '0', '', NULL, 0, '', '', 0, ''),
(552, 'Joe Bloggs', 'Joe Bloggs', 'joe@bloggs', '$2y$10$rR189/jzD6aihbe44.3IHOl92/u6EW38HuqQTqFX4b6vg4DlWHZxe', 0, 0, '2022-06-07 09:15:41', NULL, '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}', NULL, 0, '', '', 0, ''),
(553, 'mysql_root', 'mysql_root', 'mysql@root', '$2y$10$WTFkb0sYD6AGrr/sRWytI.yw8MUCeMkKMflZdoYiVHq6B4PcTsN0i', 0, 0, '2022-06-07 09:16:51', NULL, '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}', NULL, 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_user_keys`
--

CREATE TABLE `xd5bf_user_keys` (
  `id` int UNSIGNED NOT NULL,
  `user_id` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_user_notes`
--

CREATE TABLE `xd5bf_user_notes` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `catid` int UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `modified_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_user_profiles`
--

CREATE TABLE `xd5bf_user_profiles` (
  `user_id` int NOT NULL,
  `profile_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_user_usergroup_map`
--

CREATE TABLE `xd5bf_user_usergroup_map` (
  `user_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_user_usergroup_map`
--

INSERT INTO `xd5bf_user_usergroup_map` (`user_id`, `group_id`) VALUES
(551, 8),
(552, 2),
(552, 3),
(552, 4),
(552, 5),
(553, 2),
(553, 3),
(553, 4),
(553, 5),
(553, 6),
(553, 7);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_viewlevels`
--

CREATE TABLE `xd5bf_viewlevels` (
  `id` int UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `rules` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_viewlevels`
--

INSERT INTO `xd5bf_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_webauthn_credentials`
--

CREATE TABLE `xd5bf_webauthn_credentials` (
  `id` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credential ID',
  `user_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'User handle',
  `label` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Human readable label',
  `credential` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credential source data, JSON format'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_workflows`
--

CREATE TABLE `xd5bf_workflows` (
  `id` int NOT NULL,
  `asset_id` int DEFAULT '0',
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_workflows`
--

INSERT INTO `xd5bf_workflows` (`id`, `asset_id`, `published`, `title`, `description`, `extension`, `default`, `ordering`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`) VALUES
(1, 56, 1, 'COM_WORKFLOW_BASIC_WORKFLOW', '', 'com_content.article', 1, 1, '2022-06-01 18:11:57', 551, '2022-06-01 18:11:57', 551, NULL, NULL),
(2, 93, 1, 'Blog Workflow', 'Blog writing workflow from idea until published and online. Roles: Content Strategist, Copywriter, Graphic Designer, Subject Expert, Content Editor.', 'com_content.article', 0, 0, '2022-06-07 09:14:21', 551, '2022-06-07 09:14:21', 551, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_workflow_associations`
--

CREATE TABLE `xd5bf_workflow_associations` (
  `item_id` int NOT NULL DEFAULT '0' COMMENT 'Extension table id value',
  `stage_id` int NOT NULL COMMENT 'Foreign Key to #__workflow_stages.id',
  `extension` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_workflow_associations`
--

INSERT INTO `xd5bf_workflow_associations` (`item_id`, `stage_id`, `extension`) VALUES
(1, 1, 'com_content.article'),
(2, 1, 'com_content.article'),
(7, 1, 'com_content.article'),
(8, 1, 'com_content.article'),
(9, 1, 'com_content.article'),
(10, 1, 'com_content.article'),
(11, 1, 'com_content.article'),
(3, 7, 'com_content.article'),
(4, 7, 'com_content.article'),
(5, 7, 'com_content.article'),
(6, 7, 'com_content.article');

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_workflow_stages`
--

CREATE TABLE `xd5bf_workflow_stages` (
  `id` int NOT NULL,
  `asset_id` int DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `workflow_id` int NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_workflow_stages`
--

INSERT INTO `xd5bf_workflow_stages` (`id`, `asset_id`, `ordering`, `workflow_id`, `published`, `title`, `description`, `default`, `checked_out_time`, `checked_out`) VALUES
(1, 57, 1, 1, 1, 'COM_WORKFLOW_BASIC_STAGE', '', 1, NULL, NULL),
(2, 94, 0, 2, 1, 'Idea', 'Basic stage. Every newly submitted article for Blog.', 0, NULL, NULL),
(3, 95, 0, 2, 1, 'Copywriting', 'Copywriter is at work.', 0, NULL, NULL),
(4, 96, 0, 2, 1, 'Graphic Design', 'Graphic Designer is at work.', 0, NULL, NULL),
(5, 97, 0, 2, 1, 'Fact Check', 'Fact Checker is at work.', 0, NULL, NULL),
(6, 98, 0, 2, 1, 'Content Review', 'The article is reviewed, checked for text, illustration, HTML.', 0, NULL, NULL),
(7, 99, 0, 2, 1, 'Published', 'Online and Published.', 1, NULL, NULL),
(8, 100, 0, 2, 1, 'On Hold', 'On hold, waiting.', 0, NULL, NULL),
(9, 101, 0, 2, 1, 'Trashed', 'Not accepted', 0, NULL, NULL),
(10, 102, 0, 2, 1, 'Unpublished', 'A published article is unpublished and unfeatured', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xd5bf_workflow_transitions`
--

CREATE TABLE `xd5bf_workflow_transitions` (
  `id` int NOT NULL,
  `asset_id` int DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `workflow_id` int NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_stage_id` int NOT NULL,
  `to_stage_id` int NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xd5bf_workflow_transitions`
--

INSERT INTO `xd5bf_workflow_transitions` (`id`, `asset_id`, `ordering`, `workflow_id`, `published`, `title`, `description`, `from_stage_id`, `to_stage_id`, `options`, `checked_out_time`, `checked_out`) VALUES
(1, 58, 1, 1, 1, 'UNPUBLISH', '', -1, 1, '{\"publishing\":\"0\"}', NULL, NULL),
(2, 59, 2, 1, 1, 'PUBLISH', '', -1, 1, '{\"publishing\":\"1\"}', NULL, NULL),
(3, 60, 3, 1, 1, 'TRASH', '', -1, 1, '{\"publishing\":\"-2\"}', NULL, NULL),
(4, 61, 4, 1, 1, 'ARCHIVE', '', -1, 1, '{\"publishing\":\"2\"}', NULL, NULL),
(5, 62, 5, 1, 1, 'FEATURE', '', -1, 1, '{\"featuring\":\"1\"}', NULL, NULL),
(6, 63, 6, 1, 1, 'UNFEATURE', '', -1, 1, '{\"featuring\":\"0\"}', NULL, NULL),
(7, 64, 7, 1, 1, 'PUBLISH_AND_FEATURE', '', -1, 1, '{\"publishing\":\"1\",\"featuring\":\"1\"}', NULL, NULL),
(8, 103, 0, 2, 1, 'Write Article', 'The content strategist checks any idea which is submitted in category blog. ', 2, 3, '{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}', NULL, NULL),
(9, 104, 0, 2, 1, 'Graphic Design', 'The Graphic Designer can now add any illustrations.', 3, 4, '{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}', NULL, NULL),
(10, 105, 0, 2, 1, 'Check Facts', 'The article is complete and must be checked by a subject expert.', 4, 5, '{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}', NULL, NULL),
(11, 106, 0, 2, 1, 'Review Content', 'The complete article is reviewed.', 5, 6, '{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}', NULL, NULL),
(12, 107, 0, 2, 1, 'Edit', 'The article must be reviewed.', 6, 3, '{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}', NULL, NULL),
(13, 108, 0, 2, 1, 'Publish and Feature', '', 6, 7, '{\"publishing\":1,\"featuring\":1,\"notification_send_mail\":true,\"notification_text\":\"Article published!\",\"notification_groups\":[\"7\"]}', NULL, NULL),
(14, 109, 0, 2, 1, 'Set on Hold', '', -1, 8, '{\"publishing\":2,\"featuring\":0,\"notification_send_mail\":false}', NULL, NULL),
(15, 110, 0, 2, 1, 'Trash', '', 2, 9, '{\"publishing\":-2,\"featuring\":0,\"notification_send_mail\":false}', NULL, NULL),
(16, 111, 0, 2, 1, 'Resume Idea', 'An article on hold can be resumed as idea.', 8, 2, '{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}', NULL, NULL),
(17, 112, 0, 2, 1, 'Unpublish', 'A published article is unpublished.', 7, 10, '{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}', NULL, NULL),
(18, 113, 0, 2, 1, 'Trash', 'Trash a published article.', 7, 9, '{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}', NULL, NULL),
(19, 114, 0, 2, 1, 'Publish again', 'Re-activate an unpublished article.', 10, 7, '{\"publishing\":1,\"featuring\":0,\"notification_send_mail\":true,\"notification_text\":\"Article published!\",\"notification_groups\":[\"7\"]}', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `xd5bf_action_logs`
--
ALTER TABLE `xd5bf_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  ADD KEY `idx_user_id_extension` (`user_id`,`extension`),
  ADD KEY `idx_extension_item_id` (`extension`,`item_id`);

--
-- Indexes for table `xd5bf_action_logs_extensions`
--
ALTER TABLE `xd5bf_action_logs_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xd5bf_action_logs_users`
--
ALTER TABLE `xd5bf_action_logs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_notify` (`notify`);

--
-- Indexes for table `xd5bf_action_log_config`
--
ALTER TABLE `xd5bf_action_log_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xd5bf_assets`
--
ALTER TABLE `xd5bf_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `xd5bf_associations`
--
ALTER TABLE `xd5bf_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `xd5bf_banners`
--
ALTER TABLE `xd5bf_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xd5bf_banner_clients`
--
ALTER TABLE `xd5bf_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `xd5bf_banner_tracks`
--
ALTER TABLE `xd5bf_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `xd5bf_categories`
--
ALTER TABLE `xd5bf_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xd5bf_contact_details`
--
ALTER TABLE `xd5bf_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xd5bf_content`
--
ALTER TABLE `xd5bf_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indexes for table `xd5bf_contentitem_tag_map`
--
ALTER TABLE `xd5bf_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `xd5bf_content_frontpage`
--
ALTER TABLE `xd5bf_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `xd5bf_content_rating`
--
ALTER TABLE `xd5bf_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `xd5bf_content_types`
--
ALTER TABLE `xd5bf_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `xd5bf_extensions`
--
ALTER TABLE `xd5bf_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `xd5bf_fields`
--
ALTER TABLE `xd5bf_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xd5bf_fields_categories`
--
ALTER TABLE `xd5bf_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `xd5bf_fields_groups`
--
ALTER TABLE `xd5bf_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xd5bf_fields_values`
--
ALTER TABLE `xd5bf_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `xd5bf_finder_filters`
--
ALTER TABLE `xd5bf_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `xd5bf_finder_links`
--
ALTER TABLE `xd5bf_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `xd5bf_finder_links_terms`
--
ALTER TABLE `xd5bf_finder_links_terms`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `xd5bf_finder_logging`
--
ALTER TABLE `xd5bf_finder_logging`
  ADD PRIMARY KEY (`md5sum`),
  ADD KEY `searchterm` (`searchterm`(191));

--
-- Indexes for table `xd5bf_finder_taxonomy`
--
ALTER TABLE `xd5bf_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_level` (`level`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `xd5bf_finder_taxonomy_map`
--
ALTER TABLE `xd5bf_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `xd5bf_finder_terms`
--
ALTER TABLE `xd5bf_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term_language` (`term`,`language`),
  ADD KEY `idx_stem` (`stem`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xd5bf_finder_terms_common`
--
ALTER TABLE `xd5bf_finder_terms_common`
  ADD UNIQUE KEY `idx_term_language` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `xd5bf_finder_tokens`
--
ALTER TABLE `xd5bf_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_stem` (`stem`),
  ADD KEY `idx_context` (`context`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xd5bf_finder_tokens_aggregate`
--
ALTER TABLE `xd5bf_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `xd5bf_finder_types`
--
ALTER TABLE `xd5bf_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `xd5bf_history`
--
ALTER TABLE `xd5bf_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `xd5bf_languages`
--
ALTER TABLE `xd5bf_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `xd5bf_mail_templates`
--
ALTER TABLE `xd5bf_mail_templates`
  ADD PRIMARY KEY (`template_id`,`language`);

--
-- Indexes for table `xd5bf_menu`
--
ALTER TABLE `xd5bf_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xd5bf_menu_types`
--
ALTER TABLE `xd5bf_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `xd5bf_messages`
--
ALTER TABLE `xd5bf_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `xd5bf_messages_cfg`
--
ALTER TABLE `xd5bf_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `xd5bf_modules`
--
ALTER TABLE `xd5bf_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xd5bf_modules_menu`
--
ALTER TABLE `xd5bf_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `xd5bf_newsfeeds`
--
ALTER TABLE `xd5bf_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xd5bf_overrider`
--
ALTER TABLE `xd5bf_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xd5bf_postinstall_messages`
--
ALTER TABLE `xd5bf_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `xd5bf_privacy_consents`
--
ALTER TABLE `xd5bf_privacy_consents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `xd5bf_privacy_requests`
--
ALTER TABLE `xd5bf_privacy_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xd5bf_redirect_links`
--
ALTER TABLE `xd5bf_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modified` (`modified_date`);

--
-- Indexes for table `xd5bf_scheduler_tasks`
--
ALTER TABLE `xd5bf_scheduler_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_last_exit` (`last_exit_code`),
  ADD KEY `idx_next_exec` (`next_execution`),
  ADD KEY `idx_locked` (`locked`),
  ADD KEY `idx_priority` (`priority`),
  ADD KEY `idx_cli_exclusive` (`cli_exclusive`),
  ADD KEY `idx_checked_out` (`checked_out`);

--
-- Indexes for table `xd5bf_schemas`
--
ALTER TABLE `xd5bf_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `xd5bf_session`
--
ALTER TABLE `xd5bf_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `client_id_guest` (`client_id`,`guest`);

--
-- Indexes for table `xd5bf_tags`
--
ALTER TABLE `xd5bf_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `xd5bf_template_overrides`
--
ALTER TABLE `xd5bf_template_overrides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_extension_id` (`extension_id`);

--
-- Indexes for table `xd5bf_template_styles`
--
ALTER TABLE `xd5bf_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_client_id` (`client_id`),
  ADD KEY `idx_client_id_home` (`client_id`,`home`);

--
-- Indexes for table `xd5bf_ucm_base`
--
ALTER TABLE `xd5bf_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `xd5bf_ucm_content`
--
ALTER TABLE `xd5bf_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `xd5bf_updates`
--
ALTER TABLE `xd5bf_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `xd5bf_update_sites`
--
ALTER TABLE `xd5bf_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `xd5bf_update_sites_extensions`
--
ALTER TABLE `xd5bf_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `xd5bf_usergroups`
--
ALTER TABLE `xd5bf_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `xd5bf_users`
--
ALTER TABLE `xd5bf_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `xd5bf_user_keys`
--
ALTER TABLE `xd5bf_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `xd5bf_user_notes`
--
ALTER TABLE `xd5bf_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `xd5bf_user_profiles`
--
ALTER TABLE `xd5bf_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `xd5bf_user_usergroup_map`
--
ALTER TABLE `xd5bf_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `xd5bf_viewlevels`
--
ALTER TABLE `xd5bf_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `xd5bf_webauthn_credentials`
--
ALTER TABLE `xd5bf_webauthn_credentials`
  ADD PRIMARY KEY (`id`(100)),
  ADD KEY `user_id` (`user_id`(100));

--
-- Indexes for table `xd5bf_workflows`
--
ALTER TABLE `xd5bf_workflows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_extension` (`extension`),
  ADD KEY `idx_default` (`default`),
  ADD KEY `idx_created` (`created`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_modified` (`modified`),
  ADD KEY `idx_modified_by` (`modified_by`),
  ADD KEY `idx_checked_out` (`checked_out`);

--
-- Indexes for table `xd5bf_workflow_associations`
--
ALTER TABLE `xd5bf_workflow_associations`
  ADD PRIMARY KEY (`item_id`,`extension`),
  ADD KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  ADD KEY `idx_item_id` (`item_id`),
  ADD KEY `idx_stage_id` (`stage_id`),
  ADD KEY `idx_extension` (`extension`);

--
-- Indexes for table `xd5bf_workflow_stages`
--
ALTER TABLE `xd5bf_workflow_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_workflow_id` (`workflow_id`),
  ADD KEY `idx_checked_out` (`checked_out`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_default` (`default`);

--
-- Indexes for table `xd5bf_workflow_transitions`
--
ALTER TABLE `xd5bf_workflow_transitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_checked_out` (`checked_out`),
  ADD KEY `idx_from_stage_id` (`from_stage_id`),
  ADD KEY `idx_to_stage_id` (`to_stage_id`),
  ADD KEY `idx_workflow_id` (`workflow_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `xd5bf_action_logs`
--
ALTER TABLE `xd5bf_action_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `xd5bf_action_logs_extensions`
--
ALTER TABLE `xd5bf_action_logs_extensions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `xd5bf_action_log_config`
--
ALTER TABLE `xd5bf_action_log_config`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `xd5bf_assets`
--
ALTER TABLE `xd5bf_assets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `xd5bf_banners`
--
ALTER TABLE `xd5bf_banners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xd5bf_banner_clients`
--
ALTER TABLE `xd5bf_banner_clients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xd5bf_categories`
--
ALTER TABLE `xd5bf_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `xd5bf_contact_details`
--
ALTER TABLE `xd5bf_contact_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xd5bf_content`
--
ALTER TABLE `xd5bf_content`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `xd5bf_content_types`
--
ALTER TABLE `xd5bf_content_types`
  MODIFY `type_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT for table `xd5bf_extensions`
--
ALTER TABLE `xd5bf_extensions`
  MODIFY `extension_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `xd5bf_fields`
--
ALTER TABLE `xd5bf_fields`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `xd5bf_fields_groups`
--
ALTER TABLE `xd5bf_fields_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `xd5bf_finder_filters`
--
ALTER TABLE `xd5bf_finder_filters`
  MODIFY `filter_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xd5bf_finder_links`
--
ALTER TABLE `xd5bf_finder_links`
  MODIFY `link_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `xd5bf_finder_taxonomy`
--
ALTER TABLE `xd5bf_finder_taxonomy`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `xd5bf_finder_terms`
--
ALTER TABLE `xd5bf_finder_terms`
  MODIFY `term_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=828;

--
-- AUTO_INCREMENT for table `xd5bf_finder_types`
--
ALTER TABLE `xd5bf_finder_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `xd5bf_history`
--
ALTER TABLE `xd5bf_history`
  MODIFY `version_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `xd5bf_languages`
--
ALTER TABLE `xd5bf_languages`
  MODIFY `lang_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `xd5bf_menu`
--
ALTER TABLE `xd5bf_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `xd5bf_menu_types`
--
ALTER TABLE `xd5bf_menu_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `xd5bf_messages`
--
ALTER TABLE `xd5bf_messages`
  MODIFY `message_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xd5bf_modules`
--
ALTER TABLE `xd5bf_modules`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `xd5bf_newsfeeds`
--
ALTER TABLE `xd5bf_newsfeeds`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xd5bf_overrider`
--
ALTER TABLE `xd5bf_overrider`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `xd5bf_postinstall_messages`
--
ALTER TABLE `xd5bf_postinstall_messages`
  MODIFY `postinstall_message_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `xd5bf_privacy_consents`
--
ALTER TABLE `xd5bf_privacy_consents`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xd5bf_privacy_requests`
--
ALTER TABLE `xd5bf_privacy_requests`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xd5bf_redirect_links`
--
ALTER TABLE `xd5bf_redirect_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xd5bf_scheduler_tasks`
--
ALTER TABLE `xd5bf_scheduler_tasks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xd5bf_tags`
--
ALTER TABLE `xd5bf_tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `xd5bf_template_overrides`
--
ALTER TABLE `xd5bf_template_overrides`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xd5bf_template_styles`
--
ALTER TABLE `xd5bf_template_styles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `xd5bf_ucm_content`
--
ALTER TABLE `xd5bf_ucm_content`
  MODIFY `core_content_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `xd5bf_updates`
--
ALTER TABLE `xd5bf_updates`
  MODIFY `update_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `xd5bf_update_sites`
--
ALTER TABLE `xd5bf_update_sites`
  MODIFY `update_site_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `xd5bf_usergroups`
--
ALTER TABLE `xd5bf_usergroups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `xd5bf_users`
--
ALTER TABLE `xd5bf_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=554;

--
-- AUTO_INCREMENT for table `xd5bf_user_keys`
--
ALTER TABLE `xd5bf_user_keys`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xd5bf_user_notes`
--
ALTER TABLE `xd5bf_user_notes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xd5bf_viewlevels`
--
ALTER TABLE `xd5bf_viewlevels`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `xd5bf_workflows`
--
ALTER TABLE `xd5bf_workflows`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `xd5bf_workflow_stages`
--
ALTER TABLE `xd5bf_workflow_stages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `xd5bf_workflow_transitions`
--
ALTER TABLE `xd5bf_workflow_transitions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
