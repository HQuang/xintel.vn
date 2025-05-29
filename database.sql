-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 27, 2025 at 12:44 PM
-- Server version: 10.6.21-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hf34b555f3_xintel`
--
CREATE DATABASE IF NOT EXISTS `hf34b555f3_xintel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hf34b555f3_xintel`;

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(120) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'G5iwh7uoAJy5GuNEdlyzz7VhxCYrVsOU', 1, '2024-03-11 00:04:06', '2024-03-11 00:04:06', '2024-03-11 00:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `action_label` varchar(255) DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(60) NOT NULL,
  `request` longtext DEFAULT NULL,
  `action` varchar(120) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `reference_user` bigint(20) UNSIGNED NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'menu', '{\"_method\":\"delete\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 3, 'Social', 'danger', '2025-05-20 07:11:25', '2025-05-20 07:11:25'),
(2, 1, 'menu', '{\"_method\":\"delete\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 2, 'Featured Categories', 'danger', '2025-05-20 07:11:28', '2025-05-20 07:11:28'),
(3, 1, 'form', '{\"data\":{\"menu_id\":\"1\",\"title\":\"L\\u1ed9 tr\\u00ecnh\",\"url\":\"#journey\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"position\":\"4\"}}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 15, 'Lộ trình', 'info', '2025-05-20 07:14:39', '2025-05-20 07:14:39'),
(4, 1, 'form', '{\"data\":{\"menu_id\":\"1\",\"title\":\"\\u0110\\u1ed9i ng\\u0169\",\"url\":\"#team\",\"icon_font\":null,\"css_class\":null,\"position\":\"5\"}}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 16, 'Đội ngũ', 'info', '2025-05-20 07:14:58', '2025-05-20 07:14:58'),
(5, 1, 'form', '{\"data\":{\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"position\":\"6\"}}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 17, 'Tải xuống', 'info', '2025-05-20 07:16:06', '2025-05-20 07:16:06'),
(6, 1, 'menu_location', '{\"name\":\"Main menu\",\"deleted_nodes\":\"3 4 5\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_blank\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[]},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":2,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":15,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":3,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":16,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":17,\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2025-05-20 07:16:08', '2025-05-20 07:16:08'),
(7, 1, 'form', '{\"name\":\"Main menu\",\"deleted_nodes\":\"3 4 5\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_blank\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[]},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":2,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":15,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":3,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":16,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":17,\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2025-05-20 07:16:08', '2025-05-20 07:16:08'),
(8, 1, 'form', '{\"name\":\"Main menu\",\"deleted_nodes\":\"3 4 5\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_blank\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[]},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":2,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":15,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":3,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":16,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":17,\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Trang chủ', 'primary', '2025-05-20 07:16:08', '2025-05-20 07:16:08'),
(9, 1, 'form', '{\"name\":\"Main menu\",\"deleted_nodes\":\"3 4 5\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_blank\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[]},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":2,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":15,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":3,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":16,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":17,\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 2, 'Giới thiệu', 'primary', '2025-05-20 07:16:08', '2025-05-20 07:16:08'),
(10, 1, 'form', '{\"name\":\"Main menu\",\"deleted_nodes\":\"3 4 5\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_blank\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[]},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":2,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":15,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":3,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":16,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":17,\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 15, 'Lộ trình', 'primary', '2025-05-20 07:16:08', '2025-05-20 07:16:08'),
(11, 1, 'form', '{\"name\":\"Main menu\",\"deleted_nodes\":\"3 4 5\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_blank\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[]},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":2,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":15,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":3,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":16,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":17,\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 16, 'Đội ngũ', 'primary', '2025-05-20 07:16:08', '2025-05-20 07:16:08'),
(12, 1, 'form', '{\"name\":\"Main menu\",\"deleted_nodes\":\"3 4 5\",\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":null,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_blank\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]},\\\"children\\\":[]},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":2,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":15,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":3,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":16,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":17,\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 17, 'Tải xuống', 'primary', '2025-05-20 07:16:08', '2025-05-20 07:16:08'),
(13, 1, 'menu_location', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_blank\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2025-05-20 07:53:27', '2025-05-20 07:53:27'),
(14, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_blank\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Main Navigation', 'primary', '2025-05-20 07:53:27', '2025-05-20 07:53:27'),
(15, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_blank\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Trang chủ', 'primary', '2025-05-20 07:53:27', '2025-05-20 07:53:27'),
(16, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_blank\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 2, 'Giới thiệu', 'primary', '2025-05-20 07:53:27', '2025-05-20 07:53:27'),
(17, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_blank\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 15, 'Lộ trình', 'primary', '2025-05-20 07:53:27', '2025-05-20 07:53:27'),
(18, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_blank\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 16, 'Đội ngũ', 'primary', '2025-05-20 07:53:27', '2025-05-20 07:53:27'),
(19, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_blank\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 17, 'Tải xuống', 'primary', '2025-05-20 07:53:27', '2025-05-20 07:53:27'),
(20, 1, 'menu_location', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2025-05-20 07:54:39', '2025-05-20 07:54:39'),
(21, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Main Navigation', 'primary', '2025-05-20 07:54:39', '2025-05-20 07:54:39'),
(22, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Trang chủ', 'primary', '2025-05-20 07:54:39', '2025-05-20 07:54:39'),
(23, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 2, 'Giới thiệu', 'primary', '2025-05-20 07:54:39', '2025-05-20 07:54:39'),
(24, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 15, 'Lộ trình', 'primary', '2025-05-20 07:54:39', '2025-05-20 07:54:39'),
(25, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 16, 'Đội ngũ', 'primary', '2025-05-20 07:54:39', '2025-05-20 07:54:39');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(26, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"\\/\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 17, 'Tải xuống', 'primary', '2025-05-20 07:54:39', '2025-05-20 07:54:39'),
(27, 1, 'menu_location', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2025-05-20 08:00:21', '2025-05-20 08:00:21'),
(28, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Main Navigation', 'primary', '2025-05-20 08:00:21', '2025-05-20 08:00:21'),
(29, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Trang chủ', 'primary', '2025-05-20 08:00:21', '2025-05-20 08:00:21'),
(30, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 2, 'Giới thiệu', 'primary', '2025-05-20 08:00:21', '2025-05-20 08:00:21'),
(31, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 15, 'Lộ trình', 'primary', '2025-05-20 08:00:21', '2025-05-20 08:00:21'),
(32, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 16, 'Đội ngũ', 'primary', '2025-05-20 08:00:21', '2025-05-20 08:00:21'),
(33, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 17, 'Tải xuống', 'primary', '2025-05-20 08:00:21', '2025-05-20 08:00:21'),
(34, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'Mattie Hickle', 'info', '2025-05-20 18:40:00', '2025-05-20 18:40:00'),
(35, 1, 'menu_location', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"footer-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2025-05-20 21:09:06', '2025-05-20 21:09:06'),
(36, 1, 'menu_location', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"footer-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 2, 'ID: 2', 'info', '2025-05-20 21:09:06', '2025-05-20 21:09:06'),
(37, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"footer-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Main Navigation', 'primary', '2025-05-20 21:09:06', '2025-05-20 21:09:06'),
(38, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"footer-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Trang chủ', 'primary', '2025-05-20 21:09:06', '2025-05-20 21:09:06'),
(39, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"footer-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 2, 'Giới thiệu', 'primary', '2025-05-20 21:09:06', '2025-05-20 21:09:06'),
(40, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"footer-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 15, 'Lộ trình', 'primary', '2025-05-20 21:09:06', '2025-05-20 21:09:06'),
(41, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"footer-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 16, 'Đội ngũ', 'primary', '2025-05-20 21:09:06', '2025-05-20 21:09:06'),
(42, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"footer-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 17, 'Tải xuống', 'primary', '2025-05-20 21:09:06', '2025-05-20 21:09:06'),
(43, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'Mattie Hickle', 'info', '2025-05-22 02:21:59', '2025-05-22 02:21:59'),
(44, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'Mattie Hickle', 'info', '2025-05-22 06:34:15', '2025-05-22 06:34:15'),
(45, 1, 'fieldgroup', '{\"_method\":\"delete\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'test', 'danger', '2025-05-22 06:46:30', '2025-05-22 06:46:30'),
(46, 1, 'language', '{\"lang_id\":\"0\",\"lang_name\":\"Ti\\u1ebfng Vi\\u1ec7t\",\"lang_locale\":\"vi\",\"lang_code\":\"vi\",\"lang_flag\":\"vn\",\"lang_order\":\"0\",\"lang_is_rtl\":\"0\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 2, '', 'info', '2025-05-22 07:33:24', '2025-05-22 07:33:24'),
(47, 1, 'menu_location', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"footer-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2025-05-22 07:51:18', '2025-05-22 07:51:18'),
(48, 1, 'menu_location', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"footer-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 2, 'ID: 2', 'info', '2025-05-22 07:51:18', '2025-05-22 07:51:18'),
(49, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"footer-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Main Navigation', 'primary', '2025-05-22 07:51:18', '2025-05-22 07:51:18');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(50, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"footer-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Trang chủ', 'primary', '2025-05-22 07:51:18', '2025-05-22 07:51:18'),
(51, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"footer-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 2, 'Giới thiệu', 'primary', '2025-05-22 07:51:18', '2025-05-22 07:51:18'),
(52, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"footer-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 15, 'Lộ trình', 'primary', '2025-05-22 07:51:18', '2025-05-22 07:51:18'),
(53, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"footer-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 16, 'Đội ngũ', 'primary', '2025-05-22 07:51:18', '2025-05-22 07:51:18'),
(54, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\",\"footer-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 17, 'Tải xuống', 'primary', '2025-05-22 07:51:18', '2025-05-22 07:51:18'),
(55, 1, 'menu_location', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2025-05-22 07:51:21', '2025-05-22 07:51:21'),
(56, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Main Navigation', 'primary', '2025-05-22 07:51:21', '2025-05-22 07:51:21'),
(57, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Trang chủ', 'primary', '2025-05-22 07:51:21', '2025-05-22 07:51:21'),
(58, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 2, 'Giới thiệu', 'primary', '2025-05-22 07:51:22', '2025-05-22 07:51:22'),
(59, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 15, 'Lộ trình', 'primary', '2025-05-22 07:51:22', '2025-05-22 07:51:22'),
(60, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 16, 'Đội ngũ', 'primary', '2025-05-22 07:51:22', '2025-05-22 07:51:22'),
(61, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 17, 'Tải xuống', 'primary', '2025-05-22 07:51:22', '2025-05-22 07:51:22'),
(62, 1, 'form', '{\"name\":\"Main Navigation\",\"submitter\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 4, 'Main Navigation', 'info', '2025-05-22 07:51:36', '2025-05-22 07:51:36'),
(63, 1, 'form', '{\"data\":{\"menu_id\":\"4\",\"title\":\"Home\",\"url\":\"#home\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"position\":\"2\"}}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 18, 'Home', 'info', '2025-05-22 07:55:05', '2025-05-22 07:55:05'),
(64, 1, 'form', '{\"data\":{\"menu_id\":\"4\",\"title\":\"Introduce\",\"url\":\"#introduce\",\"icon_font\":null,\"css_class\":null,\"position\":\"3\"}}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 19, 'Introduce', 'info', '2025-05-22 07:55:40', '2025-05-22 07:55:40'),
(65, 1, 'form', '{\"data\":{\"menu_id\":\"4\",\"title\":\"Roadmap\",\"url\":\"#roadmap\",\"icon_font\":null,\"css_class\":null,\"position\":\"4\"}}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 20, 'Roadmap', 'info', '2025-05-22 07:55:53', '2025-05-22 07:55:53'),
(66, 1, 'form', '{\"data\":{\"menu_id\":\"4\",\"title\":\"Core team\",\"url\":\"#team\",\"icon_font\":null,\"css_class\":null,\"position\":\"5\"}}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 21, 'Core team', 'info', '2025-05-22 07:56:17', '2025-05-22 07:56:17'),
(67, 1, 'form', '{\"data\":{\"menu_id\":\"4\",\"title\":\"Careers\",\"url\":\"#careers\",\"icon_font\":null,\"css_class\":null,\"position\":\"6\"}}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 22, 'Careers', 'info', '2025-05-22 07:56:27', '2025-05-22 07:56:27'),
(68, 1, 'form', '{\"data\":{\"menu_id\":\"4\",\"title\":\"Download\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"header-btn-download\",\"target\":\"_self\",\"position\":\"7\"}}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 23, 'Download', 'info', '2025-05-22 07:57:09', '2025-05-22 07:57:09'),
(69, 1, 'menu_location', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Home\\\",\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":18,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Introduce\\\",\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":19,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Roadmap\\\",\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":2,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":20,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Core team\\\",\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":3,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":21,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Careers\\\",\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":22,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Download\\\",\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"header-btn-download\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":5,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":23,\\\"children\\\":[]}}]\",\"menu_id\":\"4\",\"title\":\"Download\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"header-btn-download\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 3, 'ID: 3', 'info', '2025-05-22 07:57:27', '2025-05-22 07:57:27'),
(70, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Home\\\",\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":18,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Introduce\\\",\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":19,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Roadmap\\\",\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":2,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":20,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Core team\\\",\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":3,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":21,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Careers\\\",\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":22,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Download\\\",\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"header-btn-download\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":5,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":23,\\\"children\\\":[]}}]\",\"menu_id\":\"4\",\"title\":\"Download\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"header-btn-download\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 4, 'Main Navigation', 'primary', '2025-05-22 07:57:27', '2025-05-22 07:57:27'),
(71, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Home\\\",\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":18,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Introduce\\\",\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":19,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Roadmap\\\",\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":2,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":20,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Core team\\\",\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":3,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":21,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Careers\\\",\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":22,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Download\\\",\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"header-btn-download\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":5,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":23,\\\"children\\\":[]}}]\",\"menu_id\":\"4\",\"title\":\"Download\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"header-btn-download\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 18, 'Home', 'primary', '2025-05-22 07:57:27', '2025-05-22 07:57:27'),
(72, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Home\\\",\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":18,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Introduce\\\",\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":19,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Roadmap\\\",\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":2,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":20,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Core team\\\",\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":3,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":21,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Careers\\\",\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":22,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Download\\\",\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"header-btn-download\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":5,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":23,\\\"children\\\":[]}}]\",\"menu_id\":\"4\",\"title\":\"Download\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"header-btn-download\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 19, 'Introduce', 'primary', '2025-05-22 07:57:27', '2025-05-22 07:57:27'),
(73, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Home\\\",\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":18,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Introduce\\\",\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":19,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Roadmap\\\",\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":2,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":20,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Core team\\\",\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":3,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":21,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Careers\\\",\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":22,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Download\\\",\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"header-btn-download\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":5,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":23,\\\"children\\\":[]}}]\",\"menu_id\":\"4\",\"title\":\"Download\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"header-btn-download\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 20, 'Roadmap', 'primary', '2025-05-22 07:57:27', '2025-05-22 07:57:27'),
(74, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Home\\\",\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":18,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Introduce\\\",\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":19,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Roadmap\\\",\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":2,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":20,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Core team\\\",\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":3,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":21,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Careers\\\",\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":22,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Download\\\",\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"header-btn-download\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":5,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":23,\\\"children\\\":[]}}]\",\"menu_id\":\"4\",\"title\":\"Download\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"header-btn-download\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 21, 'Core team', 'primary', '2025-05-22 07:57:27', '2025-05-22 07:57:27'),
(75, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Home\\\",\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":18,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Introduce\\\",\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":19,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Roadmap\\\",\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":2,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":20,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Core team\\\",\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":3,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":21,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Careers\\\",\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":22,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Download\\\",\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"header-btn-download\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":5,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":23,\\\"children\\\":[]}}]\",\"menu_id\":\"4\",\"title\":\"Download\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"header-btn-download\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 22, 'Careers', 'primary', '2025-05-22 07:57:27', '2025-05-22 07:57:27');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(76, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Home\\\",\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":18,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Introduce\\\",\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":1,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":19,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Roadmap\\\",\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":2,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":20,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Core team\\\",\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":3,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":21,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Careers\\\",\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":22,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"4\\\",\\\"title\\\":\\\"Download\\\",\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"header-btn-download\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":5,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":23,\\\"children\\\":[]}}]\",\"menu_id\":\"4\",\"title\":\"Download\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"header-btn-download\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 23, 'Download', 'primary', '2025-05-22 07:57:27', '2025-05-22 07:57:27'),
(77, 1, 'menu_location', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":18,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":19,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Introduce\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":20,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Roadmap\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":21,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Core team\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":22,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Careers\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":23,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Download\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"4\",\"title\":\"Download\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 3, 'ID: 3', 'info', '2025-05-22 08:09:04', '2025-05-22 08:09:04'),
(78, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":18,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":19,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Introduce\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":20,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Roadmap\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":21,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Core team\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":22,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Careers\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":23,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Download\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"4\",\"title\":\"Download\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 4, 'Main Navigation', 'primary', '2025-05-22 08:09:04', '2025-05-22 08:09:04'),
(79, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":18,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":19,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Introduce\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":20,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Roadmap\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":21,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Core team\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":22,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Careers\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":23,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Download\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"4\",\"title\":\"Download\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 18, 'Home', 'primary', '2025-05-22 08:09:04', '2025-05-22 08:09:04'),
(80, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":18,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":19,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Introduce\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":20,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Roadmap\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":21,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Core team\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":22,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Careers\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":23,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Download\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"4\",\"title\":\"Download\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 19, 'Introduce', 'primary', '2025-05-22 08:09:04', '2025-05-22 08:09:04'),
(81, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":18,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":19,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Introduce\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":20,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Roadmap\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":21,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Core team\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":22,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Careers\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":23,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Download\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"4\",\"title\":\"Download\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 20, 'Roadmap', 'primary', '2025-05-22 08:09:04', '2025-05-22 08:09:04'),
(82, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":18,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":19,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Introduce\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":20,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Roadmap\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":21,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Core team\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":22,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Careers\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":23,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Download\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"4\",\"title\":\"Download\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 21, 'Core team', 'primary', '2025-05-22 08:09:04', '2025-05-22 08:09:04'),
(83, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":18,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":19,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Introduce\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":20,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Roadmap\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":21,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Core team\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":22,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Careers\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":23,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Download\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"4\",\"title\":\"Download\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 22, 'Careers', 'primary', '2025-05-22 08:09:04', '2025-05-22 08:09:04'),
(84, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":18,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Home\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":19,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Introduce\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":20,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"Roadmap\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":21,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"Core team\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":22,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"Careers\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":23,\\\"menu_id\\\":4,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"Download\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"4\",\"title\":\"Download\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 23, 'Download', 'primary', '2025-05-22 08:09:04', '2025-05-22 08:09:04'),
(85, 1, 'menu_location', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2025-05-22 08:24:59', '2025-05-22 08:24:59'),
(86, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Main Navigation', 'primary', '2025-05-22 08:24:59', '2025-05-22 08:24:59'),
(87, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Trang chủ', 'primary', '2025-05-22 08:24:59', '2025-05-22 08:24:59'),
(88, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 2, 'Giới thiệu', 'primary', '2025-05-22 08:24:59', '2025-05-22 08:24:59'),
(89, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 15, 'Lộ trình', 'primary', '2025-05-22 08:24:59', '2025-05-22 08:24:59'),
(90, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 16, 'Đội ngũ', 'primary', '2025-05-22 08:24:59', '2025-05-22 08:24:59'),
(91, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#about\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#journey\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 17, 'Tải xuống', 'primary', '2025-05-22 08:24:59', '2025-05-22 08:24:59'),
(92, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'Mattie Hickle', 'info', '2025-05-22 20:52:01', '2025-05-22 20:52:01'),
(93, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'Mattie Hickle', 'info', '2025-05-23 06:09:44', '2025-05-23 06:09:44'),
(94, 1, 'post', '{\"ids\":[\"20\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Breakthrough in Quantum Computing: Computing Power Reaches Milestone', 'danger', '2025-05-23 09:51:42', '2025-05-23 09:51:42'),
(95, 1, 'post', '{\"ids\":[\"20\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 2, '5G Rollout Accelerates: Next-Gen Connectivity Transforms Communication', 'danger', '2025-05-23 09:51:42', '2025-05-23 09:51:42'),
(96, 1, 'post', '{\"ids\":[\"20\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 3, 'Tech Giants Collaborate on Open-Source AI Framework', 'danger', '2025-05-23 09:51:42', '2025-05-23 09:51:42'),
(97, 1, 'post', '{\"ids\":[\"20\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 4, 'SpaceX Launches Mission to Establish First Human Colony on Mars', 'danger', '2025-05-23 09:51:42', '2025-05-23 09:51:42'),
(98, 1, 'post', '{\"ids\":[\"20\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 5, 'Cybersecurity Advances: New Protocols Bolster Digital Defense', 'danger', '2025-05-23 09:51:42', '2025-05-23 09:51:42'),
(99, 1, 'post', '{\"ids\":[\"20\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 6, 'Artificial Intelligence in Healthcare: Transformative Solutions for Patient Care', 'danger', '2025-05-23 09:51:42', '2025-05-23 09:51:42'),
(100, 1, 'post', '{\"ids\":[\"20\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 7, 'Robotic Innovations: Autonomous Systems Reshape Industries', 'danger', '2025-05-23 09:51:42', '2025-05-23 09:51:42'),
(101, 1, 'post', '{\"ids\":[\"20\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 8, 'Virtual Reality Breakthrough: Immersive Experiences Redefine Entertainment', 'danger', '2025-05-23 09:51:42', '2025-05-23 09:51:42'),
(102, 1, 'post', '{\"ids\":[\"20\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 9, 'Innovative Wearables Track Health Metrics and Enhance Well-Being', 'danger', '2025-05-23 09:51:42', '2025-05-23 09:51:42'),
(103, 1, 'post', '{\"ids\":[\"20\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 20, 'Humanoid Robots in Everyday Life: AI Companions and Assistants', 'danger', '2025-05-23 09:51:42', '2025-05-23 09:51:42'),
(104, 1, 'post', '{\"ids\":[\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 10, 'Tech for Good: Startups Develop Solutions for Social and Environmental Issues', 'danger', '2025-05-23 09:51:46', '2025-05-23 09:51:46'),
(105, 1, 'post', '{\"ids\":[\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 11, 'AI-Powered Personal Assistants Evolve: Enhancing Productivity and Convenience', 'danger', '2025-05-23 09:51:46', '2025-05-23 09:51:46'),
(106, 1, 'post', '{\"ids\":[\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 12, 'Blockchain Innovation: Decentralized Finance (DeFi) Reshapes Finance Industry', 'danger', '2025-05-23 09:51:46', '2025-05-23 09:51:46'),
(107, 1, 'post', '{\"ids\":[\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 13, 'Quantum Internet: Secure Communication Enters a New Era', 'danger', '2025-05-23 09:51:46', '2025-05-23 09:51:46');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(108, 1, 'post', '{\"ids\":[\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 14, 'Drone Technology Advances: Applications Expand Across Industries', 'danger', '2025-05-23 09:51:46', '2025-05-23 09:51:46'),
(109, 1, 'post', '{\"ids\":[\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 15, 'Biotechnology Breakthrough: CRISPR-Cas9 Enables Precision Gene Editing', 'danger', '2025-05-23 09:51:46', '2025-05-23 09:51:46'),
(110, 1, 'post', '{\"ids\":[\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 16, 'Augmented Reality in Education: Interactive Learning Experiences for Students', 'danger', '2025-05-23 09:51:46', '2025-05-23 09:51:46'),
(111, 1, 'post', '{\"ids\":[\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 17, 'AI in Autonomous Vehicles: Advancements in Self-Driving Car Technology', 'danger', '2025-05-23 09:51:46', '2025-05-23 09:51:46'),
(112, 1, 'post', '{\"ids\":[\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 18, 'Green Tech Innovations: Sustainable Solutions for a Greener Future', 'danger', '2025-05-23 09:51:46', '2025-05-23 09:51:46'),
(113, 1, 'post', '{\"ids\":[\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 19, 'Space Tourism Soars: Commercial Companies Make Strides in Space Travel', 'danger', '2025-05-23 09:51:46', '2025-05-23 09:51:46'),
(114, 1, 'form', '{\"name\":\"Glossy\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"glossy\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);border-style:none;box-sizing:border-box;color:rgb(255, 255, 255);font-family:&quot;Clash Display&quot;;font-size:18px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:28px;margin:0px 0px 15px;orphans:2;outline:none;padding:0px;position:relative;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">Introducin<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);border-style:none;box-sizing:border-box;color:rgb(255, 255, 255);font-family:&quot;Clash Display&quot;;font-size:18px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:28px;margin:0px 0px 15px;orphans:2;outline:none;padding:0px;position:relative;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">g \\\"Glossy\\\" \\u2013 a Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a lacutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);border-style:none;box-sizing:border-box;color:rgb(255, 255, 255);font-family:&quot;Clash Display&quot;;font-size:18px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:28px;margin:0px 0px 15px;orphans:2;outline:none;padding:0px;position:relative;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a lasting impression on your audience.<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"submitter\":\"apply\",\"status\":\"published\",\"image\":\"partner-6.png\",\"tag\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 21, 'Glossy', 'info', '2025-05-23 09:53:08', '2025-05-23 09:53:08'),
(115, 1, 'form', '{\"name\":\"Glossy\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"glossy\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);border-style:none;box-sizing:border-box;color:rgb(255, 255, 255);font-family:&quot;Clash Display&quot;;font-size:18px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:28px;margin:0px 0px 15px;orphans:2;outline:none;padding:0px;position:relative;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">Introducin<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);border-style:none;box-sizing:border-box;color:rgb(255, 255, 255);font-family:&quot;Clash Display&quot;;font-size:18px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:28px;margin:0px 0px 15px;orphans:2;outline:none;padding:0px;position:relative;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">g \\\"Glossy\\\" \\u2013 a Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a lacutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);border-style:none;box-sizing:border-box;color:rgb(255, 255, 255);font-family:&quot;Clash Display&quot;;font-size:18px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:28px;margin:0px 0px 15px;orphans:2;outline:none;padding:0px;position:relative;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a lasting impression on your audience.<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"submitter\":\"apply\",\"status\":\"published\",\"image\":\"partner-6.png\",\"tag\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 21, 'Glossy', 'info', '2025-05-23 09:53:08', '2025-05-23 09:53:08'),
(116, 1, 'form', '{\"name\":\"Glossy\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"glossy\",\"slug_id\":\"57\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a lasting impression on your audience.<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\",\"image\":\"partner-6.png\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 21, 'Glossy', 'primary', '2025-05-23 09:54:28', '2025-05-23 09:54:28'),
(117, 1, 'form', '{\"name\":\"Glossy\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"glossy\",\"slug_id\":\"57\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a lasting impression on your audience.<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\",\"image\":\"partner-6.png\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 21, 'Glossy', 'primary', '2025-05-23 09:54:28', '2025-05-23 09:54:28'),
(118, 1, 'form', '{\"name\":\"Glossy\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"glossy\",\"slug_id\":\"57\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a lasting impression on your audience.<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"language\":\"en_US\",\"status\":\"published\",\"categories\":[\"1\"],\"image\":\"partner-6.png\",\"tag\":\"[{\\\"value\\\":\\\"Riot\\\"},{\\\"value\\\":\\\"Hello\\\"}]\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 21, 'Glossy', 'primary', '2025-05-23 09:54:48', '2025-05-23 09:54:48'),
(119, 1, 'form', '{\"name\":\"Glossy\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"Riot\",\"slug_id\":\"57\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a lasting impression on your audience.<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"language\":\"en_US\",\"status\":\"published\",\"categories\":[\"1\"],\"image\":\"partner-6.png\",\"tag\":\"[{\\\"value\\\":\\\"Riot\\\"},{\\\"value\\\":\\\"Hello\\\"}]\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 9, 'Riot', 'info', '2025-05-23 09:54:48', '2025-05-23 09:54:48'),
(120, 1, 'form', '{\"name\":\"Glossy\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"Hello\",\"slug_id\":\"57\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a lasting impression on your audience.<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"language\":\"en_US\",\"status\":\"published\",\"categories\":[\"1\"],\"image\":\"partner-6.png\",\"tag\":\"[{\\\"value\\\":\\\"Riot\\\"},{\\\"value\\\":\\\"Hello\\\"}]\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 10, 'Hello', 'info', '2025-05-23 09:54:48', '2025-05-23 09:54:48'),
(121, 1, 'form', '{\"name\":\"Glossy\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"Hello\",\"slug_id\":\"57\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a lasting impression on your audience.<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"language\":\"en_US\",\"status\":\"published\",\"categories\":[\"1\"],\"image\":\"partner-6.png\",\"tag\":\"[{\\\"value\\\":\\\"Riot\\\"},{\\\"value\\\":\\\"Hello\\\"}]\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 21, 'Glossy', 'primary', '2025-05-23 09:54:48', '2025-05-23 09:54:48'),
(122, 1, 'form', '{\"name\":\"Boxkit\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"brand\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a la<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"submitter\":\"apply\",\"status\":\"published\",\"image\":null,\"tag\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 22, 'Boxkit', 'info', '2025-05-23 09:56:07', '2025-05-23 09:56:07'),
(123, 1, 'form', '{\"name\":\"Boxkit\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"brand\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a la<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"submitter\":\"apply\",\"status\":\"published\",\"image\":null,\"tag\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 22, 'Boxkit', 'info', '2025-05-23 09:56:07', '2025-05-23 09:56:07'),
(124, 1, 'form', '{\"name\":\"Landscape\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"landscape\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a la<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"status\":\"published\",\"categories\":[\"2\"],\"image\":\"partner-7.png\",\"tag\":\"[{\\\"value\\\":\\\"Brand\\\"}]\",\"submitter\":\"apply\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 23, 'Landscape', 'info', '2025-05-23 09:57:03', '2025-05-23 09:57:03'),
(125, 1, 'form', '{\"name\":\"Landscape\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"Brand\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a la<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"status\":\"published\",\"categories\":[\"2\"],\"image\":\"partner-7.png\",\"tag\":\"[{\\\"value\\\":\\\"Brand\\\"}]\",\"submitter\":\"apply\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 11, 'Brand', 'info', '2025-05-23 09:57:03', '2025-05-23 09:57:03'),
(126, 1, 'form', '{\"name\":\"Landscape\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"Brand\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a la<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"status\":\"published\",\"categories\":[\"2\"],\"image\":\"partner-7.png\",\"tag\":\"[{\\\"value\\\":\\\"Brand\\\"}]\",\"submitter\":\"apply\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 23, 'Landscape', 'info', '2025-05-23 09:57:03', '2025-05-23 09:57:03'),
(127, 1, 'form', '{\"name\":\"Boxkit\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"brand\",\"slug_id\":\"61\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a la<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"language\":\"en_US\",\"status\":\"published\",\"categories\":[\"6\"],\"image\":\"logo-w.png\",\"tag\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 22, 'Boxkit', 'primary', '2025-05-23 09:57:17', '2025-05-23 09:57:17'),
(128, 1, 'form', '{\"name\":\"Boxkit\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"brand\",\"slug_id\":\"61\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a la<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"language\":\"en_US\",\"status\":\"published\",\"categories\":[\"6\"],\"image\":\"logo-w.png\",\"tag\":null,\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 22, 'Boxkit', 'primary', '2025-05-23 09:57:17', '2025-05-23 09:57:17'),
(129, 1, 'form', '{\"name\":\"Landscape\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"landscape\",\"slug_id\":\"63\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a la<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"language\":\"en_US\",\"status\":\"published\",\"categories\":[\"2\"],\"image\":\"5.jpg\",\"tag\":\"[{\\\"value\\\":\\\"Brand\\\"}]\",\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 23, 'Landscape', 'primary', '2025-05-23 10:07:35', '2025-05-23 10:07:35'),
(130, 1, 'form', '{\"name\":\"Landscape\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"landscape\",\"slug_id\":\"63\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a la<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"language\":\"en_US\",\"status\":\"published\",\"categories\":[\"2\"],\"image\":\"5.jpg\",\"tag\":\"[{\\\"value\\\":\\\"Brand\\\"}]\",\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 1, 23, 'Landscape', 'primary', '2025-05-23 10:07:35', '2025-05-23 10:07:35'),
(131, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'Mattie Hickle', 'info', '2025-05-23 16:25:34', '2025-05-23 16:25:34'),
(132, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'Mattie Hickle', 'info', '2025-05-23 19:31:21', '2025-05-23 19:31:21'),
(133, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 0, 1, 'Admin Admin', 'info', '2025-05-26 06:53:44', '2025-05-26 06:53:44'),
(134, 1, 'form', '{\"name\":\"Boxkit\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"brand\",\"slug_id\":\"61\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a la<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"language\":\"en_US\",\"status\":\"published\",\"categories\":[\"6\"],\"image\":\"5.jpg\",\"tag\":\"[{\\\"value\\\":\\\"Boxkit\\\"}]\",\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 22, 'Boxkit', 'primary', '2025-05-26 06:56:25', '2025-05-26 06:56:25'),
(135, 1, 'form', '{\"name\":\"Boxkit\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"Boxkit\",\"slug_id\":\"61\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a la<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"language\":\"en_US\",\"status\":\"published\",\"categories\":[\"6\"],\"image\":\"5.jpg\",\"tag\":\"[{\\\"value\\\":\\\"Boxkit\\\"}]\",\"submitter\":\"apply\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 12, 'Boxkit', 'info', '2025-05-26 06:56:25', '2025-05-26 06:56:25'),
(136, 1, 'form', '{\"name\":\"Boxkit\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"Boxkit\",\"slug_id\":\"61\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a la<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"language\":\"en_US\",\"status\":\"published\",\"categories\":[\"6\"],\"image\":\"5.jpg\",\"tag\":\"[{\\\"value\\\":\\\"Boxkit\\\"}]\",\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 22, 'Boxkit', 'primary', '2025-05-26 06:56:25', '2025-05-26 06:56:25'),
(137, 1, 'form', '{\"name\":\"Glossy\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"glossy\",\"slug_id\":\"57\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a lasting impression on your audience.<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"language\":\"en_US\",\"status\":\"published\",\"categories\":[\"1\"],\"image\":\"5.jpg\",\"tag\":\"[{\\\"value\\\":\\\"Riot\\\"},{\\\"value\\\":\\\"Hello\\\"}]\",\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 21, 'Glossy', 'primary', '2025-05-26 06:56:37', '2025-05-26 06:56:37'),
(138, 1, 'form', '{\"name\":\"Glossy\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"glossy\",\"slug_id\":\"57\",\"is_slug_editable\":\"1\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Introducing \\\"Glossy\\\" \\u2013 a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.<\\/p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a lasting impression on your audience.<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"language\":\"en_US\",\"status\":\"published\",\"categories\":[\"1\"],\"image\":\"5.jpg\",\"tag\":\"[{\\\"value\\\":\\\"Riot\\\"},{\\\"value\\\":\\\"Hello\\\"}]\",\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 21, 'Glossy', 'primary', '2025-05-26 06:56:37', '2025-05-26 06:56:37'),
(139, 1, 'menu_location', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 1, 'ID: 1', 'info', '2025-05-26 06:58:45', '2025-05-26 06:58:45'),
(140, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 1, 'Main Navigation', 'primary', '2025-05-26 06:58:45', '2025-05-26 06:58:45'),
(141, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 1, 'Trang chủ', 'primary', '2025-05-26 06:58:45', '2025-05-26 06:58:45'),
(142, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 2, 'Giới thiệu', 'primary', '2025-05-26 06:58:45', '2025-05-26 06:58:45'),
(143, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 15, 'Lộ trình', 'primary', '2025-05-26 06:58:45', '2025-05-26 06:58:45'),
(144, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 16, 'Đội ngũ', 'primary', '2025-05-26 06:58:45', '2025-05-26 06:58:45');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(145, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":4,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 17, 'Tải xuống', 'primary', '2025-05-26 06:58:45', '2025-05-26 06:58:45'),
(146, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 0, 1, 'Admin Admin', 'info', '2025-05-26 07:07:35', '2025-05-26 07:07:35'),
(147, 1, 'form', '{\"data\":{\"menu_id\":\"1\",\"title\":\"Tuy\\u1ec3n d\\u1ee5ng\",\"url\":\"#careers\",\"icon_font\":null,\"css_class\":null,\"target\":\"_self\",\"position\":\"7\"}}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 24, 'Tuyển dụng', 'info', '2025-05-26 08:48:25', '2025-05-26 08:48:25'),
(148, 1, 'menu_location', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"Tuy\\u1ec3n d\\u1ee5ng\\\",\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":24,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 1, 'ID: 1', 'info', '2025-05-26 08:48:28', '2025-05-26 08:48:28'),
(149, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"Tuy\\u1ec3n d\\u1ee5ng\\\",\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":24,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 1, 'Main Navigation', 'primary', '2025-05-26 08:48:28', '2025-05-26 08:48:28'),
(150, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"Tuy\\u1ec3n d\\u1ee5ng\\\",\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":24,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 1, 'Trang chủ', 'primary', '2025-05-26 08:48:28', '2025-05-26 08:48:28'),
(151, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"Tuy\\u1ec3n d\\u1ee5ng\\\",\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":24,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 2, 'Giới thiệu', 'primary', '2025-05-26 08:48:28', '2025-05-26 08:48:28'),
(152, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"Tuy\\u1ec3n d\\u1ee5ng\\\",\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":24,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 15, 'Lộ trình', 'primary', '2025-05-26 08:48:28', '2025-05-26 08:48:28'),
(153, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"Tuy\\u1ec3n d\\u1ee5ng\\\",\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":24,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 16, 'Đội ngũ', 'primary', '2025-05-26 08:48:28', '2025-05-26 08:48:28'),
(154, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"Tuy\\u1ec3n d\\u1ee5ng\\\",\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":24,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 24, 'Tuyển dụng', 'primary', '2025-05-26 08:48:28', '2025-05-26 08:48:28'),
(155, 1, 'form', '{\"name\":\"Main Navigation\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"menuItem\\\":{\\\"id\\\":1,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#home\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":0,\\\"title\\\":\\\"Trang ch\\u1ee7\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":2,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#introduce\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":1,\\\"title\\\":\\\"Gi\\u1edbi thi\\u1ec7u\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":15,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#roadmap\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":2,\\\"title\\\":\\\"L\\u1ed9 tr\\u00ecnh\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":16,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#team\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":3,\\\"title\\\":\\\"\\u0110\\u1ed9i ng\\u0169\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"menu_id\\\":\\\"1\\\",\\\"title\\\":\\\"Tuy\\u1ec3n d\\u1ee5ng\\\",\\\"url\\\":\\\"#careers\\\",\\\"icon_font\\\":\\\"\\\",\\\"css_class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":4,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"id\\\":24,\\\"children\\\":[]}},{\\\"menuItem\\\":{\\\"id\\\":17,\\\"menu_id\\\":1,\\\"parent_id\\\":0,\\\"reference_id\\\":0,\\\"reference_type\\\":null,\\\"url\\\":\\\"#download\\\",\\\"icon_font\\\":\\\"\\\",\\\"position\\\":5,\\\"title\\\":\\\"T\\u1ea3i xu\\u1ed1ng\\\",\\\"css_class\\\":\\\"download-btn\\\",\\\"target\\\":\\\"_self\\\",\\\"has_child\\\":0,\\\"reference\\\":null,\\\"metadata\\\":[],\\\"children\\\":[]}}]\",\"menu_id\":\"1\",\"title\":\"T\\u1ea3i xu\\u1ed1ng\",\"url\":\"#download\",\"icon_font\":null,\"css_class\":\"download-btn\",\"target\":\"_self\",\"locations\":[\"main-menu\"],\"submitter\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '116.96.46.194', 1, 17, 'Tải xuống', 'primary', '2025-05-26 08:48:28', '2025-05-26 08:48:28'),
(156, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '14.182.97.11', 0, 1, 'Admin Admin', 'info', '2025-05-26 19:09:17', '2025-05-26 19:09:17'),
(157, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '14.226.21.151', 0, 1, 'Admin Admin', 'info', '2025-05-26 22:34:41', '2025-05-26 22:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
CREATE TABLE `blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `blocks_translations`
--

DROP TABLE IF EXISTS `blocks_translations`;
CREATE TABLE `blocks_translations` (
  `lang_code` varchar(20) NOT NULL,
  `blocks_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Artificial Intelligence', 0, 'Cum odit optio dicta optio. Qui alias sequi quis fuga explicabo saepe. Excepturi ipsam vitae aliquam voluptatem voluptatem.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2024-03-11 00:04:07', '2025-05-22 06:39:49'),
(2, 'Cybersecurity', 0, 'Cum rerum sint magni aut itaque minima voluptas. Exercitationem nemo autem inventore vel doloribus enim. Et necessitatibus dolorem incidunt non non. Cumque ea cumque et sed a tenetur dolores sint.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 1, 1, 0, '2024-03-11 00:04:07', '2025-05-22 06:39:49'),
(3, 'Blockchain Technology', 0, 'Voluptatum repellendus fugit quibusdam. Qui nostrum dolor consequuntur unde voluptatem. Facere in vel quibusdam totam et in consequatur. Qui iure enim iste id explicabo reiciendis labore.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 2, 1, 0, '2024-03-11 00:04:07', '2025-05-22 06:39:49'),
(4, '5G and Connectivity', 0, 'Ex quos dolorem est voluptatem unde tempora quia. Et ut ducimus eaque et nihil. Ut facere eligendi hic quaerat quidem. Provident temporibus omnis ratione nisi.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 3, 1, 0, '2024-03-11 00:04:07', '2025-05-22 06:39:49'),
(5, 'Augmented Reality (AR)', 0, 'Quas odio ducimus hic in accusamus soluta nobis. Architecto similique modi quis maxime voluptatem expedita eveniet cum. Quasi magnam ipsam repellendus aut.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 4, 1, 0, '2024-03-11 00:04:07', '2025-05-22 06:39:49'),
(6, 'Green Technology', 0, 'Aut dolorem quisquam cum non voluptatum id. Possimus officia asperiores deleniti aperiam nisi odio. Accusamus nobis voluptatem iure labore provident magni et.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 5, 1, 0, '2024-03-11 00:04:07', '2025-05-22 06:39:49'),
(7, 'Quantum Computing', 0, 'Quia ut vero nostrum exercitationem. Magnam omnis fuga quaerat rem. Aut fugiat alias nihil qui dolorem. Esse culpa quaerat sit rerum ad tempora. Et ex qui quam. Voluptate ut autem ut.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 6, 1, 0, '2024-03-11 00:04:07', '2025-05-22 06:39:49'),
(8, 'Edge Computing', 0, 'Commodi non aut minima vero consectetur aliquid dolorem. Earum et neque et sint amet. Porro assumenda odit omnis rerum hic accusantium.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 7, 1, 0, '2024-03-11 00:04:07', '2025-05-22 06:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `content` longtext NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `use_for` varchar(255) NOT NULL,
  `use_for_id` bigint(20) UNSIGNED NOT NULL,
  `field_item_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields_translations`
--

DROP TABLE IF EXISTS `custom_fields_translations`;
CREATE TABLE `custom_fields_translations` (
  `lang_code` varchar(20) NOT NULL,
  `custom_fields_id` bigint(20) UNSIGNED NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_themes', '2025-05-20 07:08:08', '2025-05-20 07:08:08'),
(2, 'widget_total_users', '2025-05-20 07:08:08', '2025-05-20 07:08:08'),
(3, 'widget_total_plugins', '2025-05-20 07:08:08', '2025-05-20 07:08:08'),
(4, 'widget_total_pages', '2025-05-20 07:08:08', '2025-05-20 07:08:08'),
(5, 'widget_analytics_general', '2025-05-20 07:08:08', '2025-05-20 07:08:08'),
(6, 'widget_analytics_page', '2025-05-20 07:08:08', '2025-05-20 07:08:08'),
(7, 'widget_analytics_browser', '2025-05-20 07:08:08', '2025-05-20 07:08:08'),
(8, 'widget_analytics_referrer', '2025-05-20 07:08:08', '2025-05-20 07:08:08'),
(9, 'widget_posts_recent', '2025-05-20 07:08:08', '2025-05-20 07:08:08'),
(10, 'widget_audit_logs', '2025-05-20 07:08:08', '2025-05-20 07:08:08'),
(11, 'widget_request_errors', '2025-05-20 07:08:08', '2025-05-20 07:08:08');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` bigint(20) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `field_groups`
--

DROP TABLE IF EXISTS `field_groups`;
CREATE TABLE `field_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `rules` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `field_items`
--

DROP TABLE IF EXISTS `field_items`;
CREATE TABLE `field_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_group_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order` int(11) DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `instructions` text DEFAULT NULL,
  `options` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` longtext NOT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) NOT NULL,
  `galleries_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
CREATE TABLE `gallery_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `images` text DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) NOT NULL,
  `gallery_meta_id` bigint(20) UNSIGNED NOT NULL,
  `images` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `lang_name` varchar(120) NOT NULL,
  `lang_locale` varchar(20) NOT NULL,
  `lang_code` varchar(20) NOT NULL,
  `lang_flag` varchar(20) DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0),
(2, 'Tiếng Việt', 'vi', 'vi', 'vn', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint(20) UNSIGNED NOT NULL,
  `lang_meta_code` varchar(20) DEFAULT NULL,
  `lang_meta_origin` varchar(32) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', '4c61c9dd1ce109f02979e365fa8d650d', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(2, 'vi', 'e85ad98d234fdab80aa247a9675d41d0', 1, 'Botble\\Menu\\Models\\Menu'),
(5, 'vi', 'e479f5b4e7d04e5e15d409ff42634a0f', 1, 'Botble\\Menu\\Models\\MenuNode'),
(6, 'vi', '5af8e85f20b2a3f1e21bad3d426f39fd', 2, 'Botble\\Menu\\Models\\MenuNode'),
(7, 'vi', '99a216853e223333eb1b6a805a4f669b', 15, 'Botble\\Menu\\Models\\MenuNode'),
(8, 'vi', 'd36e31d0572b933db5b51a92f05675db', 16, 'Botble\\Menu\\Models\\MenuNode'),
(9, 'vi', '0aa27a6111876ff1eb706159ab3e8c8d', 17, 'Botble\\Menu\\Models\\MenuNode'),
(10, 'en_US', 'd374034087e8137169b4bad61fa998c6', 4, 'Botble\\Menu\\Models\\Menu'),
(11, 'en_US', '990f89c922c6878044681720d67e47af', 18, 'Botble\\Menu\\Models\\MenuNode'),
(12, 'en_US', '4206bbffcbebf0ee691e46afa6c18504', 19, 'Botble\\Menu\\Models\\MenuNode'),
(13, 'en_US', 'd94c2b0bc5ad06c07a452b00a59b1903', 20, 'Botble\\Menu\\Models\\MenuNode'),
(14, 'en_US', '470ac9183f2750fc75449e4c59d87e5f', 21, 'Botble\\Menu\\Models\\MenuNode'),
(15, 'en_US', '1e46a84fff1c1549c5b3a0a4216abdbb', 22, 'Botble\\Menu\\Models\\MenuNode'),
(16, 'en_US', '861be2c6c2e7237f476fe3fef75e9f30', 23, 'Botble\\Menu\\Models\\MenuNode'),
(17, 'vi', '4f2c75de34f52871b9b98dfd771da72f', 24, 'Botble\\Menu\\Models\\MenuNode');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `folder_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `alt`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(34, 1, 'logo_w', 'logo_w', 1, 'image/png', 5203, 'logo-w.png', '[]', '2025-05-20 07:10:39', '2025-05-20 07:10:39', NULL),
(35, 1, 'icon-section-3-1', 'icon-section-3-1', 0, 'image/png', 981, 'icon-section-3-1.png', '[]', '2025-05-20 19:13:55', '2025-05-20 19:13:55', NULL),
(36, 1, 'icon-section-3-2', 'icon-section-3-2', 0, 'image/png', 2840, 'icon-section-3-2.png', '[]', '2025-05-20 19:14:48', '2025-05-20 19:14:48', NULL),
(37, 1, 'logo-section-3-3', 'logo-section-3-3', 0, 'image/png', 3042, 'logo-section-3-3.png', '[]', '2025-05-20 19:15:21', '2025-05-20 19:15:21', NULL),
(38, 1, 'logo-section-3-4', 'logo-section-3-4', 0, 'image/png', 1508, 'logo-section-3-4.png', '[]', '2025-05-20 19:15:48', '2025-05-20 19:15:48', NULL),
(39, 1, 'logo-section-3-5', 'logo-section-3-5', 0, 'image/png', 3959, 'logo-section-3-5.png', '[]', '2025-05-20 19:16:11', '2025-05-20 19:16:11', NULL),
(40, 1, 'Partner-3', 'Partner-3', 0, 'image/png', 18839, 'partner-3.png', '[]', '2025-05-23 08:57:21', '2025-05-23 08:57:21', NULL),
(41, 1, 'Partner-1', 'Partner-1', 0, 'image/png', 22182, 'partner-1.png', '[]', '2025-05-23 08:57:56', '2025-05-23 08:57:56', NULL),
(42, 1, 'Partner-2', 'Partner-2', 0, 'image/png', 27080, 'partner-2.png', '[]', '2025-05-23 09:12:18', '2025-05-23 09:12:18', NULL),
(43, 1, 'Partner-4', 'Partner-4', 0, 'image/png', 8238, 'partner-4.png', '[]', '2025-05-23 09:12:19', '2025-05-23 09:12:19', NULL),
(44, 1, 'Partner-5', 'Partner-5', 0, 'image/png', 14309, 'partner-5.png', '[]', '2025-05-23 09:12:19', '2025-05-23 09:12:19', NULL),
(45, 1, 'Partner-6', 'Partner-6', 0, 'image/png', 9894, 'partner-6.png', '[]', '2025-05-23 09:12:20', '2025-05-23 09:12:20', NULL),
(46, 1, 'Partner-7', 'Partner-7', 0, 'image/png', 10877, 'partner-7.png', '[]', '2025-05-23 09:12:20', '2025-05-23 09:12:20', NULL),
(47, 1, 'Partner-8', 'Partner-8', 0, 'image/png', 8992, 'partner-8.png', '[]', '2025-05-23 09:12:20', '2025-05-23 09:12:20', NULL),
(48, 1, '5', '5', 0, 'image/jpeg', 15213, '5.jpg', '[]', '2025-05-23 10:07:28', '2025-05-23 10:07:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) NOT NULL,
  `value` text DEFAULT NULL,
  `media_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(120) NOT NULL,
  `last_name` varchar(120) NOT NULL,
  `description` text DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `member_activity_logs`
--

DROP TABLE IF EXISTS `member_activity_logs`;
CREATE TABLE `member_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `reference_url` varchar(255) DEFAULT NULL,
  `reference_name` varchar(255) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `member_password_resets`
--

DROP TABLE IF EXISTS `member_password_resets`;
CREATE TABLE `member_password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main Navigation', 'main-navigation', 'published', '2024-03-11 00:04:11', '2025-05-26 08:48:28'),
(4, 'Main Navigation', 'main-navigation-1', 'published', '2025-05-22 07:51:36', '2025-05-22 08:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2024-03-11 00:04:11', '2024-03-11 00:04:11'),
(3, 4, 'main-menu', '2025-05-22 07:57:27', '2025-05-22 07:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) DEFAULT NULL,
  `url` varchar(120) DEFAULT NULL,
  `icon_font` varchar(50) DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(120) DEFAULT NULL,
  `css_class` varchar(120) DEFAULT NULL,
  `target` varchar(20) NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, NULL, '#home', '', 0, 'Trang chủ', '', '_self', 0, '2024-03-11 00:04:11', '2025-05-26 08:48:28'),
(2, 1, 0, 0, NULL, '#introduce', '', 1, 'Giới thiệu', '', '_self', 0, '2024-03-11 00:04:11', '2025-05-26 08:48:28'),
(15, 1, 0, 0, NULL, '#roadmap', '', 2, 'Lộ trình', '', '_self', 0, '2025-05-20 07:14:39', '2025-05-26 08:48:28'),
(16, 1, 0, 0, NULL, '#team', '', 3, 'Đội ngũ', '', '_self', 0, '2025-05-20 07:14:58', '2025-05-26 08:48:28'),
(17, 1, 0, 0, NULL, '#download', '', 5, 'Tải xuống', 'download-btn', '_self', 0, '2025-05-20 07:16:06', '2025-05-26 08:48:28'),
(18, 4, 0, 0, NULL, '#home', '', 0, 'Home', '', '_self', 0, '2025-05-22 07:55:05', '2025-05-22 08:09:04'),
(19, 4, 0, 0, NULL, '#introduce', '', 1, 'Introduce', '', '_self', 0, '2025-05-22 07:55:40', '2025-05-22 08:09:04'),
(20, 4, 0, 0, NULL, '#roadmap', '', 2, 'Roadmap', '', '_self', 0, '2025-05-22 07:55:53', '2025-05-22 08:09:04'),
(21, 4, 0, 0, NULL, '#team', '', 3, 'Core team', '', '_self', 0, '2025-05-22 07:56:17', '2025-05-22 08:09:04'),
(22, 4, 0, 0, NULL, '#careers', '', 4, 'Careers', '', '_self', 0, '2025-05-22 07:56:27', '2025-05-22 08:09:04'),
(23, 4, 0, 0, NULL, '#download', '', 5, 'Download', 'download-btn', '_self', 0, '2025-05-22 07:57:09', '2025-05-22 08:09:04'),
(24, 1, 0, 0, NULL, '#careers', '', 4, 'Tuyển dụng', '', '_self', 0, '2025-05-26 08:48:25', '2025-05-26 08:48:28');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'seo_meta', '[{\"index\":\"index\"}]', 21, 'Botble\\Blog\\Models\\Post', '2025-05-23 09:53:08', '2025-05-23 09:53:08'),
(2, 'seo_meta', '[{\"index\":\"index\"}]', 9, 'Botble\\Blog\\Models\\Tag', '2025-05-23 09:54:48', '2025-05-23 09:54:48'),
(3, 'seo_meta', '[{\"index\":\"index\"}]', 10, 'Botble\\Blog\\Models\\Tag', '2025-05-23 09:54:48', '2025-05-23 09:54:48'),
(4, 'seo_meta', '[{\"index\":\"index\"}]', 22, 'Botble\\Blog\\Models\\Post', '2025-05-23 09:56:07', '2025-05-23 09:56:07'),
(5, 'seo_meta', '[{\"index\":\"index\"}]', 23, 'Botble\\Blog\\Models\\Post', '2025-05-23 09:57:03', '2025-05-23 09:57:03'),
(6, 'seo_meta', '[{\"index\":\"index\"}]', 11, 'Botble\\Blog\\Models\\Tag', '2025-05-23 09:57:03', '2025-05-23 09:57:03'),
(7, 'seo_meta', '[{\"index\":\"index\"}]', 12, 'Botble\\Blog\\Models\\Tag', '2025-05-26 06:56:25', '2025-05-26 06:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(5, '2016_06_10_230148_create_acl_tables', 1),
(6, '2016_06_14_230857_create_menus_table', 1),
(7, '2016_06_28_221418_create_pages_table', 1),
(8, '2016_10_05_074239_create_setting_table', 1),
(9, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(10, '2016_12_16_084601_create_widgets_table', 1),
(11, '2017_05_09_070343_create_media_tables', 1),
(12, '2017_11_03_070450_create_slug_table', 1),
(13, '2019_01_05_053554_create_jobs_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(16, '2022_04_20_100851_add_index_to_media_table', 1),
(17, '2022_04_20_101046_add_index_to_menu_table', 1),
(18, '2022_07_10_034813_move_lang_folder_to_root', 1),
(19, '2022_08_04_051940_add_missing_column_expires_at', 1),
(20, '2022_09_01_000001_create_admin_notifications_tables', 1),
(21, '2022_10_14_024629_drop_column_is_featured', 1),
(22, '2022_11_18_063357_add_missing_timestamp_in_table_settings', 1),
(23, '2022_12_02_093615_update_slug_index_columns', 1),
(24, '2023_01_30_024431_add_alt_to_media_table', 1),
(25, '2023_02_16_042611_drop_table_password_resets', 1),
(26, '2023_04_23_005903_add_column_permissions_to_admin_notifications', 1),
(27, '2023_05_10_075124_drop_column_id_in_role_users_table', 1),
(28, '2023_08_21_090810_make_page_content_nullable', 1),
(29, '2023_09_14_021936_update_index_for_slugs_table', 1),
(30, '2023_12_06_100448_change_random_hash_for_media', 1),
(31, '2023_12_07_095130_add_color_column_to_media_folders_table', 1),
(32, '2023_12_17_162208_make_sure_column_color_in_media_folders_nullable', 1),
(33, '2015_06_29_025744_create_audit_history', 2),
(34, '2023_11_14_033417_change_request_column_in_table_audit_histories', 2),
(35, '2017_02_13_034601_create_blocks_table', 3),
(36, '2021_12_03_081327_create_blocks_translations', 3),
(37, '2015_06_18_033822_create_blog_table', 4),
(38, '2021_02_16_092633_remove_default_value_for_author_type', 4),
(39, '2021_12_03_030600_create_blog_translations', 4),
(40, '2022_04_19_113923_add_index_to_table_posts', 4),
(41, '2023_08_29_074620_make_column_author_id_nullable', 4),
(42, '2016_06_17_091537_create_contacts_table', 5),
(43, '2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core', 5),
(44, '2017_03_27_150646_re_create_custom_field_tables', 6),
(45, '2022_04_30_030807_table_custom_fields_translation_table', 6),
(46, '2016_10_13_150201_create_galleries_table', 7),
(47, '2021_12_03_082953_create_gallery_translations', 7),
(48, '2022_04_30_034048_create_gallery_meta_translations_table', 7),
(49, '2023_08_29_075308_make_column_user_id_nullable', 7),
(50, '2016_10_03_032336_create_languages_table', 8),
(51, '2023_09_14_022423_add_index_for_language_table', 8),
(52, '2021_10_25_021023_fix-priority-load-for-language-advanced', 9),
(53, '2021_12_03_075608_create_page_translations', 9),
(54, '2023_07_06_011444_create_slug_translations_table', 9),
(55, '2017_10_04_140938_create_member_table', 10),
(56, '2023_10_16_075332_add_status_column', 10),
(57, '2016_05_28_112028_create_system_request_logs_table', 11),
(58, '2016_10_07_193005_create_translations_table', 12),
(59, '2023_12_12_105220_drop_translations_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` longtext DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `template` varchar(60) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Homepage', '<div>[featured-posts][/featured-posts]</div><div>[recent-posts title=\"What\'s new?\"][/recent-posts]</div><div>[featured-categories-posts title=\"Best for you\" category_id=\"2\"][/featured-categories-posts]</div><div>[all-galleries limit=\"8\" title=\"Galleries\"][/all-galleries]</div>', 1, NULL, 'no-sidebar', NULL, 'published', '2024-03-11 00:04:06', '2024-03-11 00:04:06'),
(2, 'Blog', '---', 1, NULL, NULL, NULL, 'published', '2024-03-11 00:04:06', '2024-03-11 00:04:06'),
(3, 'Contact', '<p>Address: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Hotline: 18006268</p><p>Email: contact@botble.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>For the fastest reply, please use the contact form below.</p><p>[contact-form][/contact-form]</p>', 1, NULL, NULL, NULL, 'published', '2024-03-11 00:04:06', '2024-03-11 00:04:06'),
(4, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, NULL, NULL, 'published', '2024-03-11 00:04:06', '2024-03-11 00:04:06'),
(5, 'Galleries', '<div>[gallery title=\"Galleries\"][/gallery]</div>', 1, NULL, NULL, NULL, 'published', '2024-03-11 00:04:06', '2024-03-11 00:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) NOT NULL,
  `pages_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(21, 'Glossy', '', '<p>Introducing \"Glossy\" – a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.</p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a lasting impression on your audience.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, '5.jpg', 3, NULL, '2025-05-23 09:53:08', '2025-05-26 06:56:37'),
(22, 'Boxkit', '', '<p>Introducing \"Glossy\" – a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.</p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a la</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, '5.jpg', 5, NULL, '2025-05-23 09:56:07', '2025-05-26 06:56:25'),
(23, 'Landscape', '', '<p>Introducing \"Glossy\" – a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.</p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a la</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, '5.jpg', 4, NULL, '2025-05-23 09:57:03', '2025-05-23 10:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) NOT NULL,
  `posts_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts_translations`
--

INSERT INTO `posts_translations` (`lang_code`, `posts_id`, `name`, `description`, `content`) VALUES
('vi', 21, 'Glossy', '', '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);border-style:none;box-sizing:border-box;color:rgb(255, 255, 255);font-family:&quot;Clash Display&quot;;font-size:18px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:28px;margin:0px 0px 15px;orphans:2;outline:none;padding:0px;position:relative;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Introducin</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);border-style:none;box-sizing:border-box;color:rgb(255, 255, 255);font-family:&quot;Clash Display&quot;;font-size:18px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:28px;margin:0px 0px 15px;orphans:2;outline:none;padding:0px;position:relative;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">g \"Glossy\" – a Introducing \"Glossy\" – a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.</p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a lacutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);border-style:none;box-sizing:border-box;color:rgb(255, 255, 255);font-family:&quot;Clash Display&quot;;font-size:18px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;line-height:28px;margin:0px 0px 15px;orphans:2;outline:none;padding:0px;position:relative;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a lasting impression on your audience.</p>'),
('vi', 22, 'Boxkit', '', '<p>Introducing \"Glossy\" – a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.</p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a la</p>'),
('vi', 23, 'Landscape', '', '<p>Introducing \"Glossy\" – a cutting-edge branding design project that embodies sophistication and modernity. With sleek lines, vibrant colors, and a touch of elegance, Glossy redefines visual identity with its seamless blend of style and substance.</p><p>Whether you\'re launching a new product or revitalizing your brand, Glossy\'s dynamic design elements promise to elevate your brand presence and leave a la</p>');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
CREATE TABLE `post_categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`category_id`, `post_id`) VALUES
(1, 21),
(2, 23),
(6, 22);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE `post_tags` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES
(9, 21),
(10, 21),
(11, 23),
(12, 22);

-- --------------------------------------------------------

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
CREATE TABLE `request_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` varchar(255) DEFAULT NULL,
  `referrer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `request_logs`
--

INSERT INTO `request_logs` (`id`, `status_code`, `url`, `count`, `user_id`, `referrer`, `created_at`, `updated_at`) VALUES
(76, 404, 'http://127.0.0.1:8001/themes//images/resource/ecosystem.png', 1, NULL, NULL, '2025-05-23 00:50:49', '2025-05-23 00:50:49'),
(77, 404, 'http://127.0.0.1:8001/themes//images/background/ecosystem.webp', 1, NULL, NULL, '2025-05-23 01:01:20', '2025-05-23 01:01:20'),
(78, 404, 'http://127.0.0.1:8001/themes//images/icons/pin.png', 1, NULL, NULL, '2025-05-23 01:30:38', '2025-05-23 01:30:38'),
(79, 404, 'http://127.0.0.1:8001/v', 1, '[1]', NULL, '2025-05-23 02:10:56', '2025-05-23 02:10:56'),
(80, 404, 'http://127.0.0.1:8001/themes//images/resource/tokenomics-image.png', 5, NULL, NULL, '2025-05-23 02:19:43', '2025-05-23 02:23:36'),
(81, 404, 'http://127.0.0.1:8001/themes//images/icons/smart-contract.png', 6, NULL, NULL, '2025-05-23 02:19:44', '2025-05-23 02:24:44'),
(82, 404, 'http://127.0.0.1:8001/themes//images/icons/token-audit.png', 6, NULL, NULL, '2025-05-23 02:19:44', '2025-05-23 02:24:43'),
(83, 404, 'http://127.0.0.1:8001/themes//images/icons/p2p-exchange.png', 6, NULL, NULL, '2025-05-23 02:19:45', '2025-05-23 02:24:44'),
(84, 404, 'http://127.0.0.1:8001/themes//images/icons/cex.png', 6, NULL, NULL, '2025-05-23 02:19:45', '2025-05-23 02:24:45'),
(85, 404, 'http://127.0.0.1:8001/themes//images/icons/dex.png', 7, NULL, NULL, '2025-05-23 02:19:46', '2025-05-23 02:30:01'),
(86, 404, 'http://127.0.0.1:8001/assets/images/icons/icon-5.png', 2, NULL, NULL, '2025-05-23 08:03:09', '2025-05-23 08:03:16'),
(87, 404, 'http://127.0.0.1:8001/themes//images/clients/starbucks.png', 7, NULL, NULL, '2025-05-23 08:34:27', '2025-05-23 08:42:50'),
(88, 404, 'http://127.0.0.1:8001/themes//images/clients/highlands.png', 7, NULL, NULL, '2025-05-23 08:34:28', '2025-05-23 08:42:51'),
(89, 404, 'http://127.0.0.1:8001/themes//images/clients/kfc.png', 7, NULL, NULL, '2025-05-23 08:34:28', '2025-05-23 08:42:51'),
(90, 404, 'http://127.0.0.1:8001/themes//images/clients/lotteria.png', 7, NULL, NULL, '2025-05-23 08:34:29', '2025-05-23 08:42:51'),
(91, 404, 'http://127.0.0.1:8001/themes//images/clients/monster.png', 7, NULL, NULL, '2025-05-23 08:34:29', '2025-05-23 08:42:53'),
(92, 404, 'http://127.0.0.1:8001/themes//images/clients/riot.png', 7, NULL, NULL, '2025-05-23 08:34:29', '2025-05-23 08:42:53'),
(93, 404, 'http://127.0.0.1:8001/themes//images/clients/take2.png', 7, NULL, NULL, '2025-05-23 08:34:30', '2025-05-23 08:42:52'),
(94, 404, 'http://127.0.0.1:8001/themes//images/clients/marvel.png', 7, NULL, NULL, '2025-05-23 08:34:30', '2025-05-23 08:42:52'),
(95, 404, 'http://127.0.0.1:8001/themes//images/icons/arrow-left.png', 11, NULL, NULL, '2025-05-23 08:34:30', '2025-05-23 08:54:01'),
(96, 404, 'http://127.0.0.1:8001/themes//images/icons/arrow-right.png', 11, NULL, NULL, '2025-05-23 08:34:31', '2025-05-23 08:54:02'),
(97, 404, 'http://127.0.0.1:8001/themes//images/icons/Partner-1.png', 1, NULL, NULL, '2025-05-23 08:51:56', '2025-05-23 08:51:56'),
(98, 404, 'http://127.0.0.1:8001/themes//images/icons/Partner-2.png', 1, NULL, NULL, '2025-05-23 08:51:56', '2025-05-23 08:51:56'),
(99, 404, 'http://127.0.0.1:8001/themes//images/icons/Partner-3.png', 1, NULL, NULL, '2025-05-23 08:51:57', '2025-05-23 08:51:57'),
(100, 404, 'http://127.0.0.1:8001/themes//images/icons/Partner-7.png', 1, NULL, NULL, '2025-05-23 08:51:57', '2025-05-23 08:51:57'),
(101, 404, 'http://127.0.0.1:8001/themes//images/icons/Partner-5.png', 1, NULL, NULL, '2025-05-23 08:51:57', '2025-05-23 08:51:57'),
(102, 404, 'http://127.0.0.1:8001/themes//images/icons/Partner-8.png', 1, NULL, NULL, '2025-05-23 08:51:58', '2025-05-23 08:51:58'),
(103, 404, 'http://127.0.0.1:8001/themes//images/icons/Partner-4.png', 13, NULL, NULL, '2025-05-23 08:51:58', '2025-05-23 09:01:08'),
(104, 404, 'http://127.0.0.1:8001/themes//images/icons/Partner-6.png', 1, NULL, NULL, '2025-05-23 08:51:58', '2025-05-23 08:51:58'),
(105, 404, 'http://127.0.0.1:8001/assets/images/resource/work-1.jpg', 4, NULL, NULL, '2025-05-23 09:44:53', '2025-05-23 09:47:33'),
(106, 404, 'http://127.0.0.1:8001/assets/images/resource/work-2.jpg', 4, NULL, NULL, '2025-05-23 09:44:54', '2025-05-23 09:47:34'),
(107, 404, 'http://127.0.0.1:8001/assets/images/gallery/1.jpg', 13, NULL, NULL, '2025-05-23 09:59:18', '2025-05-23 10:03:52'),
(108, 404, 'http://127.0.0.1:8001/assets/images/gallery/2.jpg', 13, NULL, NULL, '2025-05-23 09:59:19', '2025-05-23 10:03:52'),
(109, 404, 'http://127.0.0.1:8001/assets/images/gallery/3.jpg', 13, NULL, NULL, '2025-05-23 09:59:19', '2025-05-23 10:03:53'),
(110, 404, 'http://127.0.0.1:8001/posts', 1, '[1]', NULL, '2025-05-23 10:14:08', '2025-05-23 10:14:08'),
(111, 404, 'http://127.0.0.1:8001/themes//images/app-store-badge.png', 1, NULL, NULL, '2025-05-23 10:45:16', '2025-05-23 10:45:16'),
(112, 404, 'http://127.0.0.1:8001/themes//images/google-play-badge.png', 1, NULL, NULL, '2025-05-23 10:45:16', '2025-05-23 10:45:16'),
(113, 404, 'http://127.0.0.1:8001/themes//images/glow-bg.png', 1, NULL, NULL, '2025-05-23 10:45:16', '2025-05-23 10:45:16'),
(114, 404, 'http://127.0.0.1:8001/themes//images/icons/app-store.png', 1, NULL, NULL, '2025-05-23 10:55:17', '2025-05-23 10:55:17'),
(115, 404, 'http://127.0.0.1:8001/themes//images/icons/google-play.png', 1, NULL, NULL, '2025-05-23 10:55:18', '2025-05-23 10:55:18'),
(116, 404, 'http://127.0.0.1:8001/themes//images/resource/app-screen-1.png', 1, NULL, NULL, '2025-05-23 10:55:18', '2025-05-23 10:55:18'),
(117, 404, 'http://127.0.0.1:8001/themes//images/resource/app-screen-2.png', 1, NULL, NULL, '2025-05-23 10:55:19', '2025-05-23 10:55:19'),
(118, 404, 'http://127.0.0.1:8001/themes//images/resource/app-screen-3.png', 1, NULL, NULL, '2025-05-23 10:55:19', '2025-05-23 10:55:19'),
(119, 404, 'http://127.0.0.1:8001/themes//images/icons/appstore.svg', 1, NULL, NULL, '2025-05-23 11:04:21', '2025-05-23 11:04:21'),
(120, 404, 'http://127.0.0.1:8001/themes//images/background.png', 1, NULL, NULL, '2025-05-23 11:04:21', '2025-05-23 11:04:21'),
(121, 404, 'http://127.0.0.1:8001/themes//images/background/background.png', 2, NULL, NULL, '2025-05-23 11:05:23', '2025-05-23 11:05:34'),
(122, 404, 'http://127.0.0.1:8001/themes//images/background/4.png', 1, NULL, NULL, '2025-05-23 11:10:52', '2025-05-23 11:10:52'),
(123, 404, 'http://127.0.0.1:8001/vi/blog', 2, '[1]', NULL, '2025-05-23 16:25:40', '2025-05-23 16:25:46'),
(124, 404, 'http://127.0.0.1:8001/vi/storage/logo-w.png', 2, NULL, NULL, '2025-05-23 16:25:41', '2025-05-23 16:25:47'),
(125, 404, 'http://127.0.0.1:8001/blog', 2, '[1]', NULL, '2025-05-23 16:25:49', '2025-05-23 16:26:00'),
(126, 404, 'http://127.0.0.1:8001/themes//images/resource/mission.png', 2, NULL, NULL, '2025-05-23 17:12:53', '2025-05-23 17:13:01'),
(127, 404, 'http://127.0.0.1:8001/themes//images/resource/goal.png', 1, NULL, NULL, '2025-05-23 17:12:53', '2025-05-23 17:12:53'),
(128, 404, 'http://127.0.0.1:8001/themes//images/resource/vision.png', 1, NULL, NULL, '2025-05-23 17:12:53', '2025-05-23 17:12:53'),
(129, 404, 'http://127.0.0.1:8001/journal-detail.html', 1, '[1]', NULL, '2025-05-23 17:17:00', '2025-05-23 17:17:00'),
(130, 404, 'http://127.0.0.1:8001/themes//images/icons/bluesky.png', 2, NULL, NULL, '2025-05-23 19:22:37', '2025-05-23 19:22:45'),
(131, 404, 'https://xintel.xemreviews.com/themes//images/gallery/Xin_token.png', 23, NULL, NULL, '2025-05-26 06:53:53', '2025-05-26 07:01:48'),
(132, 404, 'https://xintel.xemreviews.com/clear_cache', 1, '[1]', NULL, '2025-05-26 06:54:10', '2025-05-26 06:54:10'),
(133, 404, 'https://xintel.xemreviews.com/themes//images/gallery/storage/logo-w.png', 2, NULL, NULL, '2025-05-26 07:01:26', '2025-05-26 07:01:33'),
(134, 404, 'https://demo1.xemreviews.com/themes//images/gallery/Xin_token.png', 6, NULL, NULL, '2025-05-26 07:05:35', '2025-05-26 07:08:33'),
(135, 404, 'http://demo1.xemreviews.com/themes//images/gallery/Xin_token.png', 4, NULL, NULL, '2025-05-26 07:07:09', '2025-05-26 07:08:49'),
(136, 404, 'https://demo1.xemreviews.com/vi/storage/logo-w.png', 21, NULL, NULL, '2025-05-26 08:46:45', '2025-05-26 19:37:53'),
(137, 404, 'https://demo1.xemreviews.com/vi/storage/storage/logo-w.png', 2, NULL, NULL, '2025-05-26 08:49:06', '2025-05-26 08:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(255) NOT NULL,
  `revisionable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `key` varchar(120) NOT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Blog\\Models\\Post', 22, 1, 'image', NULL, 'logo-w.png', '2025-05-23 09:57:17', '2025-05-23 09:57:17'),
(2, 'Botble\\Blog\\Models\\Post', 23, 1, 'image', 'partner-7.png', '5.jpg', '2025-05-23 10:07:35', '2025-05-23 10:07:35'),
(3, 'Botble\\Blog\\Models\\Post', 22, 1, 'image', 'logo-w.png', '5.jpg', '2025-05-26 06:56:25', '2025-05-26 06:56:25'),
(4, 'Botble\\Blog\\Models\\Post', 21, 1, 'image', 'partner-6.png', '5.jpg', '2025-05-26 06:56:37', '2025-05-26 06:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `permissions` text DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"extensions.index\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"block.index\":true,\"block.create\":true,\"block.edit\":true,\"block.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"plugins.captcha\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"custom-fields.index\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.destroy\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}', 'Admin users role', 1, 1, 1, '2024-03-11 00:04:06', '2024-03-11 00:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'media_random_hash', 'cd736069b2d77a8b4ede4c8857bed860', NULL, '2025-05-26 22:40:59'),
(2, 'api_enabled', '0', NULL, '2025-05-26 22:40:59'),
(3, 'activated_plugins', '[\"language\",\"language-advanced\",\"analytics\",\"audit-log\",\"backup\",\"block\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"custom-field\",\"gallery\",\"member\",\"request-log\",\"social-login\",\"translation\"]', NULL, '2025-05-26 22:40:59'),
(4, 'theme', 'xintel', NULL, '2025-05-26 22:40:59'),
(5, 'show_admin_bar', '1', NULL, '2025-05-26 22:40:59'),
(6, 'language_hide_default', '1', NULL, '2025-05-26 22:40:59'),
(7, 'language_switcher_display', 'dropdown', NULL, '2025-05-26 22:40:59'),
(8, 'language_display', 'all', NULL, '2025-05-26 22:40:59'),
(9, 'language_hide_languages', '[]', NULL, '2025-05-26 22:40:59'),
(28, 'theme-xintel-copyright', '© 2024, XIN. All rights reserved. XINTEL CORPORATION LIMITED', NULL, '2025-05-26 22:40:59'),
(29, 'theme-xintel-primary_font', 'Manrope', NULL, '2025-05-26 22:40:59'),
(30, 'theme-xintel-primary_color', '#ff2b4a', NULL, '2025-05-26 22:40:59'),
(31, 'theme-xintel-site_title', 'XIN | XFactor Intelligence', NULL, '2025-05-26 22:40:59'),
(32, 'theme-xintel-show_site_name', '0', NULL, '2025-05-26 22:40:59'),
(33, 'theme-xintel-seo_title', 'XIN | XFactor Intelligence', NULL, '2025-05-26 22:40:59'),
(34, 'theme-xintel-seo_description', '', NULL, '2025-05-26 22:40:59'),
(35, 'theme-xintel-seo_og_image', 'logo-w.png', NULL, '2025-05-26 22:40:59'),
(36, 'theme-xintel-theme_breadcrumb_enabled', '0', NULL, '2025-05-26 22:40:59'),
(37, 'theme-xintel-homepage_id', '0', NULL, '2025-05-26 22:40:59'),
(38, 'theme-xintel-galleries_page_id', NULL, NULL, '2025-05-26 22:40:59'),
(39, 'theme-xintel-favicon', 'logo-w.png', NULL, '2025-05-26 22:40:59'),
(40, 'theme-xintel-logo', 'logo-w.png', NULL, '2025-05-26 22:40:59'),
(41, 'theme-xintel-blog_page_id', '2', NULL, '2025-05-26 22:40:59'),
(42, 'theme-xintel-number_of_posts_in_a_category', '12', NULL, '2025-05-26 22:40:59'),
(43, 'theme-xintel-number_of_posts_in_a_tag', '12', NULL, '2025-05-26 22:40:59'),
(44, 'theme-xintel-login_background', NULL, NULL, '2025-05-26 22:40:59'),
(45, 'theme-xintel-register_background', NULL, NULL, '2025-05-26 22:40:59'),
(46, 'theme-xintel-cookie_consent_enable', 'no', NULL, '2025-05-26 22:40:59'),
(47, 'theme-xintel-cookie_consent_style', 'full-width', NULL, '2025-05-26 22:40:59'),
(48, 'theme-xintel-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies.', NULL, '2025-05-26 22:40:59'),
(49, 'theme-xintel-cookie_consent_button_text', 'Allow cookies', NULL, '2025-05-26 22:40:59'),
(50, 'theme-xintel-cookie_consent_learn_more_url', '', NULL, '2025-05-26 22:40:59'),
(51, 'theme-xintel-cookie_consent_learn_more_text', '', NULL, '2025-05-26 22:40:59'),
(52, 'theme-xintel-cookie_consent_background_color', '#000', NULL, '2025-05-26 22:40:59'),
(53, 'theme-xintel-cookie_consent_text_color', '#fff', NULL, '2025-05-26 22:40:59'),
(54, 'theme-xintel-cookie_consent_max_width', '1170', NULL, '2025-05-26 22:40:59'),
(1863, 'theme-xintel-vi-copyright', '© 2024, XIN. All rights reserved. XINTEL CORPORATION LIMITED', NULL, '2025-05-26 22:40:59'),
(1864, 'theme-xintel-vi-primary_font', 'Manrope', NULL, '2025-05-26 22:40:59'),
(1865, 'theme-xintel-vi-site_title', 'XIN | XFactor Intelligence', NULL, '2025-05-26 22:40:59'),
(1866, 'theme-xintel-vi-show_site_name', '0', NULL, '2025-05-26 22:40:59'),
(1867, 'theme-xintel-vi-seo_title', 'XIN | XFactor Intelligence', NULL, '2025-05-26 22:40:59'),
(1868, 'theme-xintel-vi-seo_description', '', NULL, '2025-05-26 22:40:59'),
(1869, 'theme-xintel-vi-seo_og_image', 'logo-w.png', NULL, '2025-05-26 22:40:59'),
(1870, 'theme-xintel-vi-theme_breadcrumb_enabled', '1', NULL, '2025-05-26 22:40:59'),
(1871, 'theme-xintel-vi-banner_heading', 'XIN APP MANG LẠI GÌ CHO BẠN?', NULL, '2025-05-26 22:40:59'),
(1872, 'theme-xintel-vi-banner_text', 'XIN không chỉ là một nền tảng đơn giản về du lịch; nó còn là một không gian cho người dùng thể hiện niềm đam mê chia sẻ câu chuyện về khám phá và biểu đạt. Chia sẻ hình ảnh, video và trải nghiệm du lịch đã trở thành một phần không thể thiếu của cuộc sống trực tuyến và nhiều mạng nền tảng xã hội đang tận dụng xu hướng này để cung cấp các dịch vụ và trải nghiệm liên quan đến du lịch.', NULL, '2025-05-26 22:40:59'),
(1873, 'theme-xintel-vi-banner_text_two', 'XIN cung cấp một tính năng mạnh mẽ sẽ nâng cao trải nghiệm tổng thể của bạn khi du lịch và cũng có cơ hội lớn để nhận được phần thưởng tuyệt vời mỗi giây khi khám phá thế giới.', NULL, '2025-05-26 22:40:59'),
(1874, 'theme-xintel-vi-banner_image', '', NULL, '2025-05-26 22:40:59'),
(1875, 'theme-xintel-vi-gallery_heading', 'XIN LÀ GÌ?', NULL, '2025-05-26 22:40:59'),
(1876, 'theme-xintel-vi-gallery_sub_heading', 'XIN không chỉ là một nền tảng du lịch – đó là không gian chia sẻ cảm xúc, hình ảnh, video và trải nghiệm khám phá sống động. Tại đây, bạn không chỉ truyền cảm hứng cho cộng đồng mà còn kiếm được phần thưởng mỗi giây khi kết nối và tương tác cùng thế giới.', NULL, '2025-05-26 22:40:59'),
(1877, 'theme-xintel-vi-gallery_1_image', '', NULL, '2025-05-26 22:40:59'),
(1878, 'theme-xintel-vi-gallery_1_title', 'Phí giao dịch', NULL, '2025-05-26 22:40:59'),
(1879, 'theme-xintel-vi-gallery_1_content', 'Từ các hoạt động mua bán dịch vụ, sản phẩm, và tương tác tài chính giữa người dùng – merchant – doanh nghiệp trong hệ sinh thái.', NULL, '2025-05-26 22:40:59'),
(1880, 'theme-xintel-vi-gallery_2_image', '', NULL, '2025-05-26 22:40:59'),
(1881, 'theme-xintel-vi-gallery_2_title', 'Giao dịch trong App', NULL, '2025-05-26 22:40:59'),
(1882, 'theme-xintel-vi-gallery_2_content', 'Người dùng trả phí để sử dụng các tiện ích cao cấp: game, tính năng hiển thị nội dung nổi bật, mua sắm, sự kiện số…', NULL, '2025-05-26 22:40:59'),
(1883, 'theme-xintel-vi-gallery_3_image', '', NULL, '2025-05-26 22:40:59'),
(1884, 'theme-xintel-vi-gallery_3_title', 'Đăng ký &amp; thành viên', NULL, '2025-05-26 22:40:59'),
(1885, 'theme-xintel-vi-gallery_3_content', 'Gói thành viên nâng cao mở rộng quyền truy cập, lợi ích du lịch, tài chính và đặc quyền trong cộng đồng.', NULL, '2025-05-26 22:40:59'),
(1886, 'theme-xintel-vi-gallery_4_image', '', NULL, '2025-05-26 22:40:59'),
(1887, 'theme-xintel-vi-gallery_4_title', 'Hợp tác thương mại &amp; OTT Marketplace', NULL, '2025-05-26 22:40:59'),
(1888, 'theme-xintel-vi-gallery_4_content', 'Doanh nghiệp trả phí để đặt gian hàng, quảng bá hoặc tích hợp thanh toán XIN trên hệ thống của họ.', NULL, '2025-05-26 22:40:59'),
(1889, 'theme-xintel-vi-gallery_5_image', '', NULL, '2025-05-26 22:40:59'),
(1890, 'theme-xintel-vi-gallery_5_title', 'Thanh toán bằng XIN Token', NULL, '2025-05-26 22:40:59'),
(1891, 'theme-xintel-vi-gallery_5_content', 'Cho mọi dịch vụ: tour, vật phẩm game, OTT, gian hàng – liền mạch và an toàn.', NULL, '2025-05-26 22:40:59'),
(1892, 'theme-xintel-vi-gallery_6_image', '', NULL, '2025-05-26 22:40:59'),
(1893, 'theme-xintel-vi-gallery_6_title', 'Staking XIN Token', NULL, '2025-05-26 22:40:59'),
(1894, 'theme-xintel-vi-gallery_6_content', 'Để nhận thưởng định kỳ, mở khóa nội dung cao cấp, tham gia quyết sách cộng đồng.', NULL, '2025-05-26 22:40:59'),
(1895, 'theme-xintel-vi-growth_background_image', '', NULL, '2025-05-26 22:40:59'),
(1896, 'theme-xintel-vi-growth_title', 'CƠ CHẾ PHÁT TRIỂN', NULL, '2025-05-26 22:40:59'),
(1897, 'theme-xintel-vi-growth_description', '<b>XIN</b> là nền tảng kết hợp ba yếu tố cốt lõi: <b>Travel &amp; Earn, Social FI</b> và <b>Payment Gateway</b>, giúp du lịch trở nên dễ dàng hơn, kết nối cộng đồng và thanh toán an toàn qua blockchain.', NULL, '2025-05-26 22:40:59'),
(1898, 'theme-xintel-vi-growth_mission_title', 'Sứ mệnh', NULL, '2025-05-26 22:40:59'),
(1899, 'theme-xintel-vi-growth_mission_description', 'Giúp người dùng <b>kiếm tiền khi du lịch, kết nối cộng đồng toàn cầu</b>, và <b>đơn giản hóa thanh toán quốc tế</b> trên một nền tảng an toàn.', NULL, '2025-05-26 22:40:59'),
(1900, 'theme-xintel-vi-growth_mission_image', '', NULL, '2025-05-26 22:40:59'),
(1901, 'theme-xintel-vi-growth_mission_link', 'journal-detail.html', NULL, '2025-05-26 22:40:59'),
(1902, 'theme-xintel-vi-growth_mission_linkedin', 'https://www.linkedin.com', NULL, '2025-05-26 22:40:59'),
(1903, 'theme-xintel-vi-growth_mission_linkedin_icon', '', NULL, '2025-05-26 22:40:59'),
(1904, 'theme-xintel-vi-growth_mission_dribbble', 'https://www.dribbble.com', NULL, '2025-05-26 22:40:59'),
(1905, 'theme-xintel-vi-growth_mission_dribbble_icon', '', NULL, '2025-05-26 22:40:59'),
(1906, 'theme-xintel-vi-growth_mission_facebook', 'https://www.facebook.com', NULL, '2025-05-26 22:40:59'),
(1907, 'theme-xintel-vi-growth_mission_facebook_icon', '', NULL, '2025-05-26 22:40:59'),
(1908, 'theme-xintel-vi-growth_mission_instagram', 'https://www.instagram.com', NULL, '2025-05-26 22:40:59'),
(1909, 'theme-xintel-vi-growth_mission_instagram_icon', '', NULL, '2025-05-26 22:40:59'),
(1910, 'theme-xintel-vi-growth_goal_title', 'Mục tiêu', NULL, '2025-05-26 22:40:59'),
(1911, 'theme-xintel-vi-growth_goal_description', 'Đến năm 2028, <b>XIN</b> hướng đến <b>kết nối hàng triệu du khách</b>, thúc đẩy <b>trao đổi văn hoá</b> và trở thành nền tảng du lịch có <b>sức ảnh hưởng toàn cầu</b>.', NULL, '2025-05-26 22:40:59'),
(1912, 'theme-xintel-vi-growth_goal_image', '', NULL, '2025-05-26 22:40:59'),
(1913, 'theme-xintel-vi-growth_goal_link', 'journal-detail.html', NULL, '2025-05-26 22:40:59'),
(1914, 'theme-xintel-vi-growth_goal_linkedin', 'https://www.linkedin.com', NULL, '2025-05-26 22:40:59'),
(1915, 'theme-xintel-vi-growth_goal_linkedin_icon', '', NULL, '2025-05-26 22:40:59'),
(1916, 'theme-xintel-vi-growth_goal_dribbble', 'https://www.dribbble.com', NULL, '2025-05-26 22:40:59'),
(1917, 'theme-xintel-vi-growth_goal_dribbble_icon', '', NULL, '2025-05-26 22:40:59'),
(1918, 'theme-xintel-vi-growth_goal_facebook', 'https://www.facebook.com', NULL, '2025-05-26 22:40:59'),
(1919, 'theme-xintel-vi-growth_goal_facebook_icon', '', NULL, '2025-05-26 22:40:59'),
(1920, 'theme-xintel-vi-growth_goal_instagram', 'https://www.instagram.com', NULL, '2025-05-26 22:40:59'),
(1921, 'theme-xintel-vi-growth_goal_instagram_icon', '', NULL, '2025-05-26 22:40:59'),
(1922, 'theme-xintel-vi-growth_vision_title', 'Tầm nhìn', NULL, '2025-05-26 22:40:59'),
(1923, 'theme-xintel-vi-growth_vision_description', 'Trở thành nền tảng hàng đầu nơi du lịch không chỉ là trải nghiệm, mà còn là cơ hội <b>sáng tạo giá trị</b>, với dịch vụ linh hoạt, <b>phù hợp mọi nhu cầu người dùng</b>.', NULL, '2025-05-26 22:40:59'),
(1924, 'theme-xintel-vi-growth_vision_image', '', NULL, '2025-05-26 22:40:59'),
(1925, 'theme-xintel-vi-growth_vision_link', 'journal-detail.html', NULL, '2025-05-26 22:40:59'),
(1926, 'theme-xintel-vi-growth_vision_linkedin', 'https://www.linkedin.com', NULL, '2025-05-26 22:40:59'),
(1927, 'theme-xintel-vi-growth_vision_linkedin_icon', '', NULL, '2025-05-26 22:40:59'),
(1928, 'theme-xintel-vi-growth_vision_dribbble', 'https://www.dribbble.com', NULL, '2025-05-26 22:40:59'),
(1929, 'theme-xintel-vi-growth_vision_dribbble_icon', '', NULL, '2025-05-26 22:40:59'),
(1930, 'theme-xintel-vi-growth_vision_facebook', 'https://www.facebook.com', NULL, '2025-05-26 22:40:59'),
(1931, 'theme-xintel-vi-growth_vision_facebook_icon', '', NULL, '2025-05-26 22:40:59'),
(1932, 'theme-xintel-vi-growth_vision_instagram', 'https://www.instagram.com', NULL, '2025-05-26 22:40:59'),
(1933, 'theme-xintel-vi-growth_vision_instagram_icon', '', NULL, '2025-05-26 22:40:59'),
(1934, 'theme-xintel-vi-ecosystem_section_heading', 'Hệ sinh thái XIN', NULL, '2025-05-26 22:40:59'),
(1935, 'theme-xintel-vi-ecosystem_section_description', 'XIN là một hệ sinh thái toàn diện, nơi mỗi thành viên không chỉ kết nối mà còn phát triển bền vững trong một mạng lưới số an toàn, sáng tạo và đậm bản sắc văn hóa địa phương.', NULL, '2025-05-26 22:40:59'),
(1936, 'theme-xintel-vi-ecosystem_sub_section_1_pin_icon', '', NULL, '2025-05-26 22:40:59'),
(1937, 'theme-xintel-vi-ecosystem_sub_section_1_heading', 'Kết Nối Cộng Đồng Mạnh Mẽ', NULL, '2025-05-26 22:40:59'),
(1938, 'theme-xintel-vi-ecosystem_sub_section_1_content', 'Từ <b>XIN-Tel</b> – nền tảng kết nối toàn cầu, đến <b>XIN-Travel</b> – nơi gìn giữ và lan tỏa văn hóa bản địa, chúng tôi xây dựng các trung tâm cộng đồng. Với <b>XIN-Star</b>, người dùng kể câu chuyện quê hương qua video, lưu giữ trải nghiệm bằng công nghệ.', NULL, '2025-05-26 22:40:59'),
(1939, 'theme-xintel-vi-ecosystem_sub_section_2_pin_icon', '', NULL, '2025-05-26 22:40:59'),
(1940, 'theme-xintel-vi-ecosystem_sub_section_2_heading', 'Tạo Thu Nhập', NULL, '2025-05-26 22:40:59'),
(1941, 'theme-xintel-vi-ecosystem_sub_section_2_content', '<b>XIN-Shop</b> hỗ trợ các doanh nghiệp địa phương mở cửa hàng trực tuyến và tham gia thương mại P2P. <b>XIN-Game</b> mang đến không gian giải trí, nơi người chơi có thể tương tác, cùng sáng tạo và kiếm thu nhập từ nội dung của mình.', NULL, '2025-05-26 22:40:59'),
(1942, 'theme-xintel-vi-ecosystem_sub_section_3_pin_icon', '', NULL, '2025-05-26 22:40:59'),
(1943, 'theme-xintel-vi-ecosystem_sub_section_3_heading', 'Thanh Toán An Toàn', NULL, '2025-05-26 22:40:59'),
(1944, 'theme-xintel-vi-ecosystem_sub_section_3_content', '<b>XIN-Fintech</b> đảm bảo giao dịch an toàn, từ thanh toán, tiết kiệm đến tín dụng. Thông qua hệ thống <b>XIN Token</b>, người dùng toàn cầu được kết nối trên một nền tảng tài chính số minh bạch và đáng tin cậy.', NULL, '2025-05-26 22:40:59'),
(1945, 'theme-xintel-vi-services_heading', 'VÌ SAO CHỌN XIN?', NULL, '2025-05-26 22:40:59'),
(1946, 'theme-xintel-vi-services_sub_heading', 'XIN cần tồn tại vì nó giải quyết các vấn đề quan trọng trong ngành du lịch và kết nối các doanh nghiệp du lịch với công nghệ blockchain. Dưới đây là một số lý do tại sao XIN là cần thiết:', NULL, '2025-05-26 22:40:59'),
(1947, 'theme-xintel-vi-service_1_content', '<b>Tối ưu chi phí &amp; thanh toán toàn cầu</b> <br> XIN ứng dụng blockchain để giảm chi phí giao dịch và hỗ trợ thanh toán quốc tế nhanh chóng, minh bạch.', NULL, '2025-05-26 22:40:59'),
(1948, 'theme-xintel-vi-service_1_icon', '', NULL, '2025-05-26 22:40:59'),
(1949, 'theme-xintel-vi-service_2_content', '<b>Kết nối &amp; chia sẻ cộng đồng</b><br> Tạo cơ hội kết nối giữa du khách và người bản địa, đồng thời chia sẻ lợi nhuận từ hoạt động du lịch.', NULL, '2025-05-26 22:40:59'),
(1950, 'theme-xintel-vi-service_2_icon', '', NULL, '2025-05-26 22:40:59'),
(1951, 'theme-xintel-vi-service_3_content', '<b>Minh bạch &amp; tin cậy</b> <br>Blockchain giúp công khai giá trị thật của dịch vụ, xây dựng niềm tin giữa người dùng và nhà cung cấp.', NULL, '2025-05-26 22:40:59'),
(1952, 'theme-xintel-vi-service_3_icon', '', NULL, '2025-05-26 22:40:59'),
(1953, 'theme-xintel-vi-service_4_content', '<b>Công nghệ mới mẻ &amp; hấp dẫn</b> <br>NFT và hệ thống phần thưởng khiến trải nghiệm du lịch trở nên thú vị, cá nhân hóa và đáng nhớ hơn.', NULL, '2025-05-26 22:40:59'),
(1954, 'theme-xintel-vi-service_4_icon', '', NULL, '2025-05-26 22:40:59'),
(1955, 'theme-xintel-vi-tokenomics_main_heading', 'Tokenomics &amp; Tiện Ích', NULL, '2025-05-26 22:40:59'),
(1956, 'theme-xintel-vi-tokenomics_sub_heading', '100% Phân Phối Qua Cơ Chế Đào – Không Bán Trước:', NULL, '2025-05-26 22:40:59'),
(1957, 'theme-xintel-vi-tokenomics_description', 'XIN Token được phân phối hoàn toàn thông qua cơ chế khai thác minh bạch – <b>không có bán trước, không phân bổ cho quỹ hay đội ngũ phát triển.</b> Điều này tạo nền tảng cho một hệ sinh thái công bằng, mở và bền vững.', NULL, '2025-05-26 22:40:59'),
(1958, 'theme-xintel-vi-tokenomics_image', '', NULL, '2025-05-26 22:40:59'),
(1959, 'theme-xintel-vi-tokenomics_mining_volume', '121,995,104 / 12,000,000,000', NULL, '2025-05-26 22:40:59'),
(1960, 'theme-xintel-vi-tokenomics_utility_1_icon', '', NULL, '2025-05-26 22:40:59'),
(1961, 'theme-xintel-vi-tokenomics_utility_1_title', 'Hợp Đồng Thông Minh', NULL, '2025-05-26 22:40:59'),
(1962, 'theme-xintel-vi-tokenomics_utility_1_link', '#', NULL, '2025-05-26 22:40:59'),
(1963, 'theme-xintel-vi-tokenomics_utility_2_icon', '', NULL, '2025-05-26 22:40:59'),
(1964, 'theme-xintel-vi-tokenomics_utility_2_title', 'Kiểm Toán Token', NULL, '2025-05-26 22:40:59'),
(1965, 'theme-xintel-vi-tokenomics_utility_2_link', '#', NULL, '2025-05-26 22:40:59'),
(1966, 'theme-xintel-vi-tokenomics_utility_3_icon', '', NULL, '2025-05-26 22:40:59'),
(1967, 'theme-xintel-vi-tokenomics_utility_3_title', 'Sàn Giao Dịch P2P', NULL, '2025-05-26 22:40:59'),
(1968, 'theme-xintel-vi-tokenomics_utility_3_link', '#', NULL, '2025-05-26 22:40:59'),
(1969, 'theme-xintel-vi-tokenomics_utility_4_icon', '', NULL, '2025-05-26 22:40:59'),
(1970, 'theme-xintel-vi-tokenomics_utility_4_title', 'CEX', NULL, '2025-05-26 22:40:59'),
(1971, 'theme-xintel-vi-tokenomics_utility_5_icon', '', NULL, '2025-05-26 22:40:59'),
(1972, 'theme-xintel-vi-tokenomics_utility_5_title', 'DEX', NULL, '2025-05-26 22:40:59'),
(1973, 'theme-xintel-vi-team_heading', 'ĐỘI NGŨ CỐT LÕI', NULL, '2025-05-26 22:40:59'),
(1974, 'theme-xintel-vi-team_1_image', '', NULL, '2025-05-26 22:40:59'),
(1975, 'theme-xintel-vi-team_1_name', 'AlexTurner', NULL, '2025-05-26 22:40:59'),
(1976, 'theme-xintel-vi-team_1_position', 'CEO', NULL, '2025-05-26 22:40:59'),
(1977, 'theme-xintel-vi-team_1_number', '01', NULL, '2025-05-26 22:40:59'),
(1978, 'theme-xintel-vi-team_1_bio', '“Đổi mới là trọng tâm của tôi. Với XINTEL, tôi cam kết xây dựng một hệ sinh thái social toàn diện, định hình tương lai của tài chính phi tập trung.”', NULL, '2025-05-26 22:40:59'),
(1979, 'theme-xintel-vi-team_2_image', '', NULL, '2025-05-26 22:40:59'),
(1980, 'theme-xintel-vi-team_2_name', 'Kent Baktas', NULL, '2025-05-26 22:40:59'),
(1981, 'theme-xintel-vi-team_2_position', 'CTO', NULL, '2025-05-26 22:40:59'),
(1982, 'theme-xintel-vi-team_2_number', '02', NULL, '2025-05-26 22:40:59'),
(1983, 'theme-xintel-vi-team_2_bio', '“Tôi tin rằng công nghệ phải luôn tiến hóa. Với XIN, chúng tôi mang đến những giải pháp blockchain bền vững và sáng tạo.”', NULL, '2025-05-26 22:40:59'),
(1984, 'theme-xintel-vi-team_3_image', '', NULL, '2025-05-26 22:40:59'),
(1985, 'theme-xintel-vi-team_3_name', 'Dusan Zica', NULL, '2025-05-26 22:40:59'),
(1986, 'theme-xintel-vi-team_3_position', 'CMO', NULL, '2025-05-26 22:40:59'),
(1987, 'theme-xintel-vi-team_3_number', '03', NULL, '2025-05-26 22:40:59'),
(1988, 'theme-xintel-vi-team_3_bio', '“Tôi không chỉ kể câu chuyện, tôi xây dựng thế giới. XIN là nơi cộng đồng cùng nhau kiến tạo tương lai Web3.”', NULL, '2025-05-26 22:40:59'),
(1989, 'theme-xintel-vi-partner_1_image', '', NULL, '2025-05-26 22:40:59'),
(1990, 'theme-xintel-vi-partner_1_name', '[Tên Partner Web3]', NULL, '2025-05-26 22:40:59'),
(1991, 'theme-xintel-vi-partner_1_position', 'Blockchain integration &amp; smart contract security.', NULL, '2025-05-26 22:40:59'),
(1992, 'theme-xintel-vi-partner_2_image', '', NULL, '2025-05-26 22:40:59'),
(1993, 'theme-xintel-vi-partner_2_name', '[Tên Marketing Agency]', NULL, '2025-05-26 22:40:59'),
(1994, 'theme-xintel-vi-partner_2_position', 'Go-to-market chiến lược tại Đông Nam Á &amp; toàn cầu.', NULL, '2025-05-26 22:40:59'),
(1995, 'theme-xintel-vi-partner_3_image', '', NULL, '2025-05-26 22:40:59'),
(1996, 'theme-xintel-vi-partner_3_name', '[Tên Tech Partner]', NULL, '2025-05-26 22:40:59'),
(1997, 'theme-xintel-vi-partner_3_position', 'Hạ tầng kỹ thuật &amp; mở rộng đa nền tảng.', NULL, '2025-05-26 22:40:59'),
(1998, 'theme-xintel-vi-journey_heading', 'LỘ TRÌNH', NULL, '2025-05-26 22:40:59'),
(1999, 'theme-xintel-vi-journey_1_title', 'Q4, 2024', NULL, '2025-05-26 22:40:59'),
(2000, 'theme-xintel-vi-journey_1_content', '<ul>\n                                        <li>Ra mắt eSIM và gói dữ liệu cho XIN: Mở rộng các tùy chọn quốc gia và khu vực.</li>\n                                        <li>Giới thiệu tính năng hướng dẫn du lịch và cài đặt tour.</li>\n                                        <li>Kích hoạt tính năng check-in phần thưởng trong ứng dụng.</li>\n                                        <li>Setting 20-30 country country.</li>\n                                        <li>Kết nối với 100 thương hiệu và 5.000 đối tác địa phương.</li>\n                                        <li>Kết nối Xintel với 6 quốc gia: Thái Lan, Singapore, Malaysia, Indonesia, Philippines và Hàn Quốc.</li>\n                                        <li>Tổ chức sự kiện ứng dụng và trải nghiệm du lịch với XIN tại Thái Lan.</li>\n                                        <li>Mục tiêu 250.000 người dùng cho Quý 4.</li>\n                                    </ul>', NULL, '2025-05-26 22:40:59'),
(2001, 'theme-xintel-vi-journey_2_title', 'Q1, 2025', NULL, '2025-05-26 22:40:59'),
(2002, 'theme-xintel-vi-journey_2_content', '<ul>\n                                        <li>Tích hợp cổng thanh toán đa nền và thanh toán quốc tế.</li>\n                                        <li>Tích hợp đặt chỗ cho các chuyến đi vịnh, nhà hàng, khách sạn và quán cà phê toàn cầu.</li>\n                                        <li>Triển khai KOLs phát trực tiếp trên ứng dụng.</li>\n                                        <li>Set up for 20-30 countries</li>\n                                        <li>Kết nối với 200 thương hiệu và 10.000 đối tác địa phương.</li>\n                                        <li>Kết nối Xintel với 6 quốc gia.</li>\n                                        <li>Tổ chức sự kiện ứng dụng và trải nghiệm du lịch với XIN tại Singapore.</li>\n                                        <li>Mục tiêu 500.000 người dùng cho Quý 1.</li>\n                                    </ul>', NULL, '2025-05-26 22:40:59'),
(2003, 'theme-xintel-vi-journey_3_title', 'Q2, 2025', NULL, '2025-05-26 22:40:59'),
(2004, 'theme-xintel-vi-journey_3_content', '<ul>\n                                        <li>Ra mắt Game Fi Hub: Hỗ trợ các trò chơi blockchain và các hoạt động liên quan.</li>\n                                        <li>Setting 20-30 country country.</li>\n                                        <li>Kết nối với 300 thương hiệu và 15.000 đối tác địa phương.</li>\n                                        <li>Kết nối Xintel với 6 quốc gia.</li>\n                                        <li>Tổ chức sự kiện ứng dụng và trải nghiệm du lịch với XIN tại Indonesia.</li>\n                                        <li>Mục tiêu 1 triệu người dùng cho Quý 2.</li>\n                                    </ul>', NULL, '2025-05-26 22:40:59'),
(2005, 'theme-xintel-vi-journey_4_title', 'Q3, 2025', NULL, '2025-05-26 22:40:59'),
(2006, 'theme-xintel-vi-journey_4_content', '<ul>\n                                        <li>Ra mắt tính năng Only Fan.</li>\n                                        <li>Niêm đồng XIN trên sàn DEX và CEX.</li>\n                                        <li>Setting 20-30 country country.</li>\n                                        <li>Kết nối với 400 thương hiệu và 20.000 đối tác địa phương.</li>\n                                        <li>Kết nối Xintel với 6 quốc gia.</li>\n                                        <li>Tổ chức sự kiện ứng dụng và trải nghiệm du lịch với XIN tại Indonesia.</li>\n                                        <li>Mục tiêu 2 triệu người dùng cho Quý 3.</li>\n                                    </ul>', NULL, '2025-05-26 22:40:59'),
(2007, 'theme-xintel-vi-journey_5_title', 'Q4, 2025', NULL, '2025-05-26 22:40:59'),
(2008, 'theme-xintel-vi-journey_5_content', '<ul>\n                                        <li>Ra mắt Gateway Payment: Hỗ trợ các giao dịch quốc tế và nền tảng đa phương tiện.</li>\n                                        <li>Ra chuỗi XIN và các ứng dụng.</li>\n                                        <li>Setting 20-30 country country.</li>\n                                        <li>Kết nối với 500 thương hiệu và 25.000 đối tác địa phương.</li>\n                                        <li>Kết nối Xintel với 6 quốc gia.</li>\n                                        <li>Tổ chức sự kiện ứng dụng và trải nghiệm du lịch với XIN tại Hàn Quốc.</li>\n                                        <li>Mục tiêu 3 triệu người dùng cho Quý 4.</li>\n                                    </ul>', NULL, '2025-05-26 22:40:59'),
(2009, 'theme-xintel-vi-investor_docs_title', 'THÔNG TIN DÀNH CHO NHÀ ĐẦU TƯ', NULL, '2025-05-26 22:40:59'),
(2010, 'theme-xintel-vi-investor_docs_description', 'Chúng tôi cam kết mang đến một hệ sinh thái minh bạch, vững chắc và sẵn sàng cho sự mở rộng toàn cầu. Mọi thông tin dành cho nhà đầu tư đều được chuẩn bị đầy đủ, rõ ràng và có thể kiểm chứng.', NULL, '2025-05-26 22:40:59'),
(2011, 'theme-xintel-vi-investor_docs_item_1_number', '01', NULL, '2025-05-26 22:40:59'),
(2012, 'theme-xintel-vi-investor_docs_item_1_title', 'Pitch Deck', NULL, '2025-05-26 22:40:59'),
(2013, 'theme-xintel-vi-investor_docs_item_1_description', 'Tổng quan dự án, mô hình vận hành và tiềm năng tăng trưởng.', NULL, '2025-05-26 22:40:59'),
(2014, 'theme-xintel-vi-investor_docs_item_1_link', '#', NULL, '2025-05-26 22:40:59'),
(2015, 'theme-xintel-vi-investor_docs_item_2_number', '02', NULL, '2025-05-26 22:40:59'),
(2016, 'theme-xintel-vi-investor_docs_item_2_title', 'Whitepaper', NULL, '2025-05-26 22:40:59'),
(2017, 'theme-xintel-vi-investor_docs_item_2_description', 'Kiến trúc sản phẩm, lộ trình, và logic phát triển chi tiết.', NULL, '2025-05-26 22:40:59'),
(2018, 'theme-xintel-vi-investor_docs_item_2_link', '#', NULL, '2025-05-26 22:40:59'),
(2019, 'theme-xintel-vi-investor_docs_item_3_number', '03', NULL, '2025-05-26 22:40:59'),
(2020, 'theme-xintel-vi-investor_docs_item_3_title', 'Audit Report', NULL, '2025-05-26 22:40:59'),
(2021, 'theme-xintel-vi-investor_docs_item_3_description', 'Bảo mật hợp đồng thông minh được kiểm toán bởi bên thứ ba.', NULL, '2025-05-26 22:40:59'),
(2022, 'theme-xintel-vi-investor_docs_item_3_link', '#', NULL, '2025-05-26 22:40:59'),
(2023, 'theme-xintel-vi-investor_docs_item_4_number', '04', NULL, '2025-05-26 22:40:59'),
(2024, 'theme-xintel-vi-investor_docs_item_4_title', 'Tokenomics details', NULL, '2025-05-26 22:40:59'),
(2025, 'theme-xintel-vi-investor_docs_item_4_description', 'Cơ chế phân phối, tiện ích và chiến lược duy trì giá trị token.', NULL, '2025-05-26 22:40:59'),
(2026, 'theme-xintel-vi-investor_docs_item_4_link', '#', NULL, '2025-05-26 22:40:59'),
(2027, 'theme-xintel-vi-investor_docs_item_5_number', '05', NULL, '2025-05-26 22:40:59'),
(2028, 'theme-xintel-vi-investor_docs_item_5_title', 'Call with Founders / Investor Team.', NULL, '2025-05-26 22:40:59'),
(2029, 'theme-xintel-vi-investor_docs_item_5_description', '', NULL, '2025-05-26 22:40:59'),
(2030, 'theme-xintel-vi-investor_docs_item_5_link', '#', NULL, '2025-05-26 22:40:59'),
(2031, 'theme-xintel-vi-stats_heading', 'SỐ LIỆU THỰC TẾ', NULL, '2025-05-26 22:40:59'),
(2032, 'theme-xintel-vi-stats_sub_heading', 'Dự án không chỉ là ý tưởng – <b>XIN đang phát triển mạnh mẽ từng ngày</b> với cộng đồng người dùng toàn cầu tham gia, chia sẻ và kiếm thưởng.', NULL, '2025-05-26 22:40:59'),
(2033, 'theme-xintel-vi-stats_counter_1_number', '1245000', NULL, '2025-05-26 22:40:59'),
(2034, 'theme-xintel-vi-stats_counter_1_label', 'Người dùng đã đăng ký', NULL, '2025-05-26 22:40:59'),
(2035, 'theme-xintel-vi-stats_counter_2_number', '25', NULL, '2025-05-26 22:40:59'),
(2036, 'theme-xintel-vi-stats_counter_2_label', 'Lượt tải ứng dụng', NULL, '2025-05-26 22:40:59'),
(2037, 'theme-xintel-vi-stats_counter_3_number', '210000', NULL, '2025-05-26 22:40:59'),
(2038, 'theme-xintel-vi-stats_counter_3_label', 'Người dùng hoạt động hàng tháng (MAU)', NULL, '2025-05-26 22:40:59'),
(2039, 'theme-xintel-vi-stats_counter_4_number', '92400000', NULL, '2025-05-26 22:40:59'),
(2040, 'theme-xintel-vi-stats_counter_4_label', 'XIN Token đã được khai thác (mined)', NULL, '2025-05-26 22:40:59'),
(2041, 'theme-xintel-vi-stats_counter_5_number', '30', NULL, '2025-05-26 22:40:59'),
(2042, 'theme-xintel-vi-stats_counter_5_label', 'Quốc gia đang sử dụng', NULL, '2025-05-26 22:40:59'),
(2043, 'theme-xintel-vi-stats_counter_6_number', '12000', NULL, '2025-05-26 22:40:59'),
(2044, 'theme-xintel-vi-stats_counter_6_label', 'Hoạt động chia sẻ nội dung du lịch mỗi ngày', NULL, '2025-05-26 22:40:59'),
(2045, 'theme-xintel-vi-partner_heading', 'ĐỐI TÁC CHIẾN LƯỢC', NULL, '2025-05-26 22:40:59'),
(2046, 'theme-xintel-vi-partner_sub_heading', 'Chúng tôi xây dựng hệ sinh thái XIN cùng với những đối tác hàng đầu trong nhiều lĩnh vực — từ công nghệ, tài chính đến du lịch và truyền thông.  Niềm tin và sự hợp tác lâu dài là nền tảng cho mọi bước phát triển.', NULL, '2025-05-26 22:40:59'),
(2047, 'theme-xintel-vi-partners', '[]', NULL, '2025-05-26 22:40:59'),
(2048, 'theme-xintel-vi-download_background_image', '', NULL, '2025-05-26 22:40:59'),
(2049, 'theme-xintel-vi-download_title', 'TẢI NGAY!', NULL, '2025-05-26 22:40:59'),
(2050, 'theme-xintel-vi-download_appstore_link', '#', NULL, '2025-05-26 22:40:59'),
(2051, 'theme-xintel-vi-download_playstore_link', '#', NULL, '2025-05-26 22:40:59'),
(2052, 'theme-xintel-vi-footer_text', '<b>Hệ sinh thái XIN</b> <br> Khám phá thế giới và bắt đầu hành trình chuyển đổi theo cách công bằng và thuận tiện hơn với XIN.', NULL, '2025-05-26 22:40:59'),
(2053, 'theme-xintel-vi-footer_contact_heading', 'Liên hệ với chúng tôi', NULL, '2025-05-26 22:40:59'),
(2054, 'theme-xintel-vi-footer_contact_email', 'support@xintel.co', NULL, '2025-05-26 22:40:59'),
(2055, 'theme-xintel-vi-footer_telegram_link', '#', NULL, '2025-05-26 22:40:59'),
(2056, 'theme-xintel-vi-footer_facebook_link', 'https://www.facebook.com/profile.php?id=61561928653091&amp;mibextid=LQQJ4d', NULL, '2025-05-26 22:40:59'),
(2057, 'theme-xintel-vi-footer_youtube_link', 'https://www.youtube.com/channel/UC3dwgM2BCAcKXuzSsdw-1dQ', NULL, '2025-05-26 22:40:59'),
(2058, 'theme-xintel-vi-footer_tiktok_link', 'https://www.tiktok.com/@educhainglobal?is_from_webapp=1&amp;sender_device=pc', NULL, '2025-05-26 22:40:59'),
(2059, 'theme-xintel-vi-footer_twitter_link', 'https://x.com/Educhain_Global', NULL, '2025-05-26 22:40:59'),
(2060, 'theme-xintel-vi-footer_chat3_link', '#', NULL, '2025-05-26 22:40:59'),
(2061, 'theme-xintel-vi-homepage_id', '0', NULL, '2025-05-26 22:40:59'),
(2062, 'theme-xintel-vi-galleries_page_id', NULL, NULL, '2025-05-26 22:40:59'),
(2063, 'theme-xintel-vi-favicon', 'logo-w.png', NULL, '2025-05-26 22:40:59'),
(2064, 'theme-xintel-vi-logo', 'logo-w.png', NULL, '2025-05-26 22:40:59'),
(2065, 'theme-xintel-vi-blog_page_id', '2', NULL, '2025-05-26 22:40:59'),
(2066, 'theme-xintel-vi-number_of_posts_in_a_category', '12', NULL, '2025-05-26 22:40:59'),
(2067, 'theme-xintel-vi-number_of_posts_in_a_tag', '12', NULL, '2025-05-26 22:40:59'),
(2068, 'theme-xintel-vi-login_background', NULL, NULL, '2025-05-26 22:40:59'),
(2069, 'theme-xintel-vi-register_background', NULL, NULL, '2025-05-26 22:40:59'),
(2070, 'theme-xintel-vi-cookie_consent_enable', 'no', NULL, '2025-05-26 22:40:59'),
(2071, 'theme-xintel-vi-cookie_consent_style', 'full-width', NULL, '2025-05-26 22:40:59'),
(2072, 'theme-xintel-vi-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies.', NULL, '2025-05-26 22:40:59'),
(2073, 'theme-xintel-vi-cookie_consent_button_text', 'Allow cookies', NULL, '2025-05-26 22:40:59'),
(2074, 'theme-xintel-vi-cookie_consent_learn_more_url', '', NULL, '2025-05-26 22:40:59'),
(2075, 'theme-xintel-vi-cookie_consent_learn_more_text', '', NULL, '2025-05-26 22:40:59'),
(2076, 'theme-xintel-vi-cookie_consent_background_color', '#000', NULL, '2025-05-26 22:40:59'),
(2077, 'theme-xintel-vi-cookie_consent_text_color', '#fff', NULL, '2025-05-26 22:40:59'),
(2078, 'theme-xintel-vi-cookie_consent_max_width', '1170', NULL, '2025-05-26 22:40:59'),
(2079, 'membership_authorization_at', '2025-05-26 14:07:41', NULL, '2025-05-26 22:40:59'),
(2080, 'theme-xintel-vi-partner_quote', '“XIN thể hiện một cách tiếp cận độc đáo, kết nối giữa nội dung, du lịch và mô hình token kinh tế minh bạch. Đây là mô hình chúng tôi tin sẽ bùng nổ trong Web3.” — <b>[Tên VC/Investor]</b>, General Partner – <b>[Tên Quỹ]</b>.', NULL, '2025-05-26 22:40:59'),
(2081, 'theme-xintel-vi-investor_docs_item_1_button_text', 'Tải xuống PDF', NULL, '2025-05-26 22:40:59'),
(2082, 'theme-xintel-vi-investor_docs_item_2_button_text', 'Đọc ngay', NULL, '2025-05-26 22:40:59'),
(2083, 'theme-xintel-vi-investor_docs_item_3_button_text', 'Xem ngay', NULL, '2025-05-26 22:40:59'),
(2084, 'theme-xintel-vi-investor_docs_item_4_button_text', 'Khám phá thêm', NULL, '2025-05-26 22:40:59'),
(2085, 'theme-xintel-vi-investor_docs_item_5_button_text', 'Đặt lịch', NULL, '2025-05-26 22:40:59'),
(2086, 'theme-xintel-vi-partner_heading8', 'ĐỒNG HÀNH CÙNG ĐỐI TÁC TIN CẬY', NULL, '2025-05-26 22:40:59'),
(2087, 'theme-xintel-vi-partner_sub_heading8', 'XIN không chỉ là một ý tưởng – mà là một dự án được đồng hành bởi những cái tên hàng đầu trong Web3, marketing và công nghệ:', NULL, '2025-05-26 22:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(255) NOT NULL,
  `prefix` varchar(120) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'homepage', 1, 'Botble\\Page\\Models\\Page', '', '2024-03-11 00:04:06', '2024-03-11 00:04:06'),
(2, 'blog', 2, 'Botble\\Page\\Models\\Page', '', '2024-03-11 00:04:06', '2024-03-11 00:04:06'),
(3, 'contact', 3, 'Botble\\Page\\Models\\Page', '', '2024-03-11 00:04:06', '2024-03-11 00:04:06'),
(4, 'cookie-policy', 4, 'Botble\\Page\\Models\\Page', '', '2024-03-11 00:04:06', '2024-03-11 00:04:06'),
(5, 'galleries', 5, 'Botble\\Page\\Models\\Page', '', '2024-03-11 00:04:06', '2024-03-11 00:04:06'),
(6, 'artificial-intelligence', 1, 'Botble\\Blog\\Models\\Category', '', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(7, 'cybersecurity', 2, 'Botble\\Blog\\Models\\Category', '', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(8, 'blockchain-technology', 3, 'Botble\\Blog\\Models\\Category', '', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(9, '5g-and-connectivity', 4, 'Botble\\Blog\\Models\\Category', '', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(10, 'augmented-reality-ar', 5, 'Botble\\Blog\\Models\\Category', '', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(11, 'green-technology', 6, 'Botble\\Blog\\Models\\Category', '', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(12, 'quantum-computing', 7, 'Botble\\Blog\\Models\\Category', '', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(13, 'edge-computing', 8, 'Botble\\Blog\\Models\\Category', '', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(14, 'ai', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(15, 'machine-learning', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(16, 'neural-networks', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(17, 'data-security', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(18, 'blockchain', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(19, 'cryptocurrency', 6, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(20, 'iot', 7, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(21, 'ar-gaming', 8, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(42, 'sunset', 1, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-03-11 00:04:08', '2024-03-11 00:04:08'),
(43, 'ocean-views', 2, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-03-11 00:04:08', '2024-03-11 00:04:08'),
(44, 'adventure-time', 3, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-03-11 00:04:08', '2024-03-11 00:04:08'),
(45, 'city-lights', 4, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-03-11 00:04:08', '2024-03-11 00:04:08'),
(46, 'dreamscape', 5, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-03-11 00:04:08', '2024-03-11 00:04:08'),
(47, 'enchanted-forest', 6, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-03-11 00:04:08', '2024-03-11 00:04:08'),
(48, 'golden-hour', 7, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-03-11 00:04:08', '2024-03-11 00:04:08'),
(49, 'serenity', 8, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-03-11 00:04:08', '2024-03-11 00:04:08'),
(50, 'eternal-beauty', 9, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-03-11 00:04:08', '2024-03-11 00:04:08'),
(51, 'moonlight-magic', 10, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-03-11 00:04:08', '2024-03-11 00:04:08'),
(52, 'starry-night', 11, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-03-11 00:04:08', '2024-03-11 00:04:08'),
(53, 'hidden-gems', 12, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-03-11 00:04:08', '2024-03-11 00:04:08'),
(54, 'tranquil-waters', 13, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-03-11 00:04:08', '2024-03-11 00:04:08'),
(55, 'urban-escape', 14, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-03-11 00:04:08', '2024-03-11 00:04:08'),
(56, 'twilight-zone', 15, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-03-11 00:04:08', '2024-03-11 00:04:08'),
(57, 'glossy', 21, 'Botble\\Blog\\Models\\Post', '', '2025-05-23 09:53:08', '2025-05-23 09:53:08'),
(58, 'glossy-1', 21, 'Botble\\Blog\\Models\\Post', '', '2025-05-23 09:53:08', '2025-05-23 09:53:08'),
(59, 'riot', 9, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-05-23 09:54:48', '2025-05-23 09:54:48'),
(60, 'hello', 10, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-05-23 09:54:48', '2025-05-23 09:54:48'),
(61, 'brand', 22, 'Botble\\Blog\\Models\\Post', '', '2025-05-23 09:56:07', '2025-05-23 09:56:07'),
(62, 'brand-1', 22, 'Botble\\Blog\\Models\\Post', '', '2025-05-23 09:56:07', '2025-05-23 09:56:07'),
(63, 'landscape', 23, 'Botble\\Blog\\Models\\Post', '', '2025-05-23 09:57:03', '2025-05-23 09:57:03'),
(64, 'brand', 11, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-05-23 09:57:03', '2025-05-23 09:57:03'),
(65, 'brand-2', 23, 'Botble\\Blog\\Models\\Post', '', '2025-05-23 09:57:03', '2025-05-23 09:57:03'),
(66, 'boxkit', 12, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-05-26 06:56:25', '2025-05-26 06:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) NOT NULL,
  `slugs_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `prefix` varchar(120) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AI', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(2, 'Machine Learning', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(3, 'Neural Networks', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(4, 'Data Security', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(5, 'Blockchain', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(6, 'Cryptocurrency', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(7, 'IoT', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(8, 'AR Gaming', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-03-11 00:04:07', '2024-03-11 00:04:07'),
(9, 'Riot', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-05-23 09:54:48', '2025-05-23 09:54:48'),
(10, 'Hello', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-05-23 09:54:48', '2025-05-23 09:54:48'),
(11, 'Brand', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-05-23 09:57:03', '2025-05-23 09:57:03'),
(12, 'Boxkit', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-05-26 06:56:25', '2025-05-26 06:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) NOT NULL,
  `tags_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tags_translations`
--

INSERT INTO `tags_translations` (`lang_code`, `tags_id`, `name`, `description`) VALUES
('vi', 9, 'Riot', ''),
('vi', 10, 'Hello', ''),
('vi', 11, 'Brand', ''),
('vi', 12, 'Boxkit', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) DEFAULT NULL,
  `last_name` varchar(120) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `avatar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'admin@example.com', NULL, '$2y$12$5B6sWizh4pjM0sEHsjnDKed5jcTGtRsWGUepsUaJAVfjFyXm5Lb0u', 'lw6SoKiqYByvQLuF4gEPXtl7UBHtiSvB6QdZXCNaRQZ8WImW5GqfFtnJd7CL', '2025-05-26 06:53:44', '2025-05-26 06:53:44', 'Admin', 'Admin', 'admin', NULL, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) NOT NULL,
  `sidebar_id` varchar(120) NOT NULL,
  `theme` varchar(120) NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `activations_user_id_index` (`user_id`) USING BTREE;

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `audit_histories_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `audit_histories_module_index` (`module`) USING BTREE;

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `blocks_user_id_index` (`user_id`) USING BTREE;

--
-- Indexes for table `blocks_translations`
--
ALTER TABLE `blocks_translations`
  ADD PRIMARY KEY (`lang_code`,`blocks_id`) USING BTREE;

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `categories_parent_id_index` (`parent_id`) USING BTREE,
  ADD KEY `categories_status_index` (`status`) USING BTREE,
  ADD KEY `categories_created_at_index` (`created_at`) USING BTREE;

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`) USING BTREE;

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `custom_fields_field_item_id_index` (`field_item_id`) USING BTREE;

--
-- Indexes for table `custom_fields_translations`
--
ALTER TABLE `custom_fields_translations`
  ADD PRIMARY KEY (`lang_code`,`custom_fields_id`) USING BTREE;

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indexes for table `field_groups`
--
ALTER TABLE `field_groups`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `field_groups_created_by_index` (`created_by`) USING BTREE,
  ADD KEY `field_groups_updated_by_index` (`updated_by`) USING BTREE;

--
-- Indexes for table `field_items`
--
ALTER TABLE `field_items`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `field_items_field_group_id_index` (`field_group_id`) USING BTREE,
  ADD KEY `field_items_parent_id_index` (`parent_id`) USING BTREE;

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `galleries_user_id_index` (`user_id`) USING BTREE;

--
-- Indexes for table `galleries_translations`
--
ALTER TABLE `galleries_translations`
  ADD PRIMARY KEY (`lang_code`,`galleries_id`) USING BTREE;

--
-- Indexes for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `gallery_meta_reference_id_index` (`reference_id`) USING BTREE;

--
-- Indexes for table `gallery_meta_translations`
--
ALTER TABLE `gallery_meta_translations`
  ADD PRIMARY KEY (`lang_code`,`gallery_meta_id`) USING BTREE;

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `jobs_queue_index` (`queue`) USING BTREE;

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`) USING BTREE,
  ADD KEY `lang_locale_index` (`lang_locale`) USING BTREE,
  ADD KEY `lang_code_index` (`lang_code`) USING BTREE,
  ADD KEY `lang_is_default_index` (`lang_is_default`) USING BTREE;

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`) USING BTREE,
  ADD KEY `language_meta_reference_id_index` (`reference_id`) USING BTREE,
  ADD KEY `meta_code_index` (`lang_meta_code`) USING BTREE,
  ADD KEY `meta_origin_index` (`lang_meta_origin`) USING BTREE,
  ADD KEY `meta_reference_type_index` (`reference_type`) USING BTREE;

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `media_files_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `media_files_index` (`folder_id`,`user_id`,`created_at`) USING BTREE;

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `media_folders_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`) USING BTREE;

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `members_email_unique` (`email`) USING BTREE;

--
-- Indexes for table `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `member_activity_logs_member_id_index` (`member_id`) USING BTREE;

--
-- Indexes for table `member_password_resets`
--
ALTER TABLE `member_password_resets`
  ADD KEY `member_password_resets_email_index` (`email`) USING BTREE,
  ADD KEY `member_password_resets_token_index` (`token`) USING BTREE;

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `menus_slug_unique` (`slug`) USING BTREE;

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`) USING BTREE;

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`) USING BTREE,
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`) USING BTREE,
  ADD KEY `reference_id` (`reference_id`) USING BTREE,
  ADD KEY `reference_type` (`reference_type`) USING BTREE;

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `pages_user_id_index` (`user_id`) USING BTREE;

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`) USING BTREE;

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`) USING BTREE;

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `posts_status_index` (`status`) USING BTREE,
  ADD KEY `posts_author_id_index` (`author_id`) USING BTREE,
  ADD KEY `posts_author_type_index` (`author_type`) USING BTREE,
  ADD KEY `posts_created_at_index` (`created_at`) USING BTREE;

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`) USING BTREE;

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD KEY `post_categories_category_id_index` (`category_id`) USING BTREE,
  ADD KEY `post_categories_post_id_index` (`post_id`) USING BTREE;

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_tag_id_index` (`tag_id`) USING BTREE,
  ADD KEY `post_tags_post_id_index` (`post_id`) USING BTREE;

--
-- Indexes for table `request_logs`
--
ALTER TABLE `request_logs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_slug_unique` (`slug`) USING BTREE,
  ADD KEY `roles_created_by_index` (`created_by`) USING BTREE,
  ADD KEY `roles_updated_by_index` (`updated_by`) USING BTREE;

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  ADD KEY `role_users_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `role_users_role_id_index` (`role_id`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `settings_key_unique` (`key`) USING BTREE;

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `slugs_reference_id_index` (`reference_id`) USING BTREE,
  ADD KEY `slugs_key_index` (`key`) USING BTREE,
  ADD KEY `slugs_prefix_index` (`prefix`) USING BTREE,
  ADD KEY `slugs_reference_index` (`reference_id`,`reference_type`) USING BTREE;

--
-- Indexes for table `slugs_translations`
--
ALTER TABLE `slugs_translations`
  ADD PRIMARY KEY (`lang_code`,`slugs_id`) USING BTREE;

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  ADD UNIQUE KEY `users_username_unique` (`username`) USING BTREE;

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `user_meta_user_id_index` (`user_id`) USING BTREE;

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_groups`
--
ALTER TABLE `field_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `field_items`
--
ALTER TABLE `field_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `request_logs`
--
ALTER TABLE `request_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2088;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
