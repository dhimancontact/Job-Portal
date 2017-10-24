-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 06, 2017 at 12:37 AM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 5.6.30-7+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`, `group_code`) VALUES
('/*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('//*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('//controller', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('//crud', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('//extension', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('//form', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('//index', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('//model', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('//module', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/asset/*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/asset/compress', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/asset/template', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/cache/*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/cache/flush', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/cache/flush-all', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/cache/flush-schema', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/cache/index', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/fixture/*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/fixture/load', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/fixture/unload', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/gii/*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/gii/default/*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/gii/default/action', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/gii/default/diff', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/gii/default/index', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/gii/default/preview', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/gii/default/view', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/help/*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/help/index', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/message/*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/message/config', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/message/config-template', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/message/extract', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/migrate/*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/migrate/create', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/migrate/down', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/migrate/history', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/migrate/mark', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/migrate/new', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/migrate/redo', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/migrate/to', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/migrate/up', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/serve/*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/serve/index', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth-item-group/*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth-item-group/bulk-activate', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth-item-group/bulk-deactivate', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth-item-group/bulk-delete', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth-item-group/create', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth-item-group/delete', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth-item-group/grid-page-size', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth-item-group/grid-sort', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth-item-group/index', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth-item-group/toggle-attribute', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth-item-group/update', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth-item-group/view', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth/*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth/captcha', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth/change-own-password', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth/confirm-email', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth/confirm-email-receive', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth/confirm-registration-email', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth/login', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth/logout', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth/password-recovery', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth/password-recovery-receive', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/auth/registration', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/permission/*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/permission/bulk-activate', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/permission/bulk-deactivate', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/permission/bulk-delete', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/permission/create', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/permission/delete', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/permission/grid-page-size', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/permission/grid-sort', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/permission/index', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/permission/refresh-routes', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/permission/set-child-permissions', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/permission/set-child-routes', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/permission/toggle-attribute', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/permission/update', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/permission/view', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/role/*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/role/bulk-activate', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/role/bulk-deactivate', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/role/bulk-delete', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/role/create', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/role/delete', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/role/grid-page-size', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/role/grid-sort', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/role/index', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/role/set-child-permissions', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/role/set-child-roles', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/role/toggle-attribute', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/role/update', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/role/view', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user-permission/*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user-permission/set', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user-permission/set-roles', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user-visit-log/*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user-visit-log/bulk-activate', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user-visit-log/bulk-deactivate', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user-visit-log/bulk-delete', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user-visit-log/create', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user-visit-log/delete', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user-visit-log/grid-page-size', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user-visit-log/grid-sort', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user-visit-log/index', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user-visit-log/toggle-attribute', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user-visit-log/update', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user-visit-log/view', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user/*', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user/bulk-activate', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user/bulk-deactivate', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user/bulk-delete', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user/change-password', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user/create', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user/delete', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user/grid-page-size', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user/grid-sort', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user/index', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user/toggle-attribute', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user/update', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('/user-management/user/view', 3, NULL, NULL, NULL, 1479189748, 1479189748, NULL),
('Admin', 1, 'Admin', NULL, NULL, 1479189748, 1479189748, NULL),
('assignRolesToUsers', 2, 'Assign roles to users', NULL, NULL, 1479189748, 1479189748, 'userManagement'),
('bindUserToIp', 2, 'Bind user to IP', NULL, NULL, 1479189748, 1479189748, 'userManagement'),
('changeOwnPassword', 2, 'Change own password', NULL, NULL, 1479189748, 1479189748, 'userCommonPermissions'),
('changeUserPassword', 2, 'Change user password', NULL, NULL, 1479189748, 1479189748, 'userManagement'),
('commonPermission', 2, 'Common permission', NULL, NULL, 1479189745, 1479189745, NULL),
('createUsers', 2, 'Create users', NULL, NULL, 1479189748, 1479189748, 'userManagement'),
('deleteUsers', 2, 'Delete users', NULL, NULL, 1479189748, 1479189748, 'userManagement'),
('editUserEmail', 2, 'Edit user email', NULL, NULL, 1479189748, 1479189748, 'userManagement'),
('editUsers', 2, 'Edit users', NULL, NULL, 1479189748, 1479189748, 'userManagement'),
('viewRegistrationIp', 2, 'View registration IP', NULL, NULL, 1479189748, 1479189748, 'userManagement'),
('viewUserEmail', 2, 'View user email', NULL, NULL, 1479189748, 1479189748, 'userManagement'),
('viewUserRoles', 2, 'View user roles', NULL, NULL, 1479189748, 1479189748, 'userManagement'),
('viewUsers', 2, 'View users', NULL, NULL, 1479189748, 1479189748, 'userManagement'),
('viewVisitLog', 2, 'View visit log', NULL, NULL, 1479189748, 1479189748, 'userManagement');

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('changeOwnPassword', '/user-management/auth/change-own-password'),
('assignRolesToUsers', '/user-management/user-permission/set'),
('assignRolesToUsers', '/user-management/user-permission/set-roles'),
('viewVisitLog', '/user-management/user-visit-log/grid-page-size'),
('viewVisitLog', '/user-management/user-visit-log/index'),
('viewVisitLog', '/user-management/user-visit-log/view'),
('editUsers', '/user-management/user/bulk-activate'),
('editUsers', '/user-management/user/bulk-deactivate'),
('deleteUsers', '/user-management/user/bulk-delete'),
('changeUserPassword', '/user-management/user/change-password'),
('createUsers', '/user-management/user/create'),
('deleteUsers', '/user-management/user/delete'),
('viewUsers', '/user-management/user/grid-page-size'),
('viewUsers', '/user-management/user/index'),
('editUsers', '/user-management/user/update'),
('viewUsers', '/user-management/user/view'),
('Admin', 'assignRolesToUsers'),
('Admin', 'changeOwnPassword'),
('Admin', 'changeUserPassword'),
('Admin', 'createUsers'),
('Admin', 'deleteUsers'),
('Admin', 'editUsers'),
('editUserEmail', 'viewUserEmail'),
('assignRolesToUsers', 'viewUserRoles'),
('Admin', 'viewUsers'),
('assignRolesToUsers', 'viewUsers'),
('changeUserPassword', 'viewUsers'),
('createUsers', 'viewUsers'),
('deleteUsers', 'viewUsers'),
('editUsers', 'viewUsers');

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_group`
--

CREATE TABLE `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item_group`
--

INSERT INTO `auth_item_group` (`code`, `name`, `created_at`, `updated_at`) VALUES
('userCommonPermissions', 'User common permission', 1479189748, 1479189748),
('userManagement', 'User management', 1479189748, 1479189748);

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(55) NOT NULL,
  `subdomain` varchar(55) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `subdomain`, `description`, `image`) VALUES
(1, 'Accenture', 'accenture', 'Accenture PLC is a global professional services company and provides strategy, consulting, digital, technology and operations services. It has been incorporated in Dublin, Ireland, since 1 September 2009. ', 'http://empreferrals.in/image/company/1_download.png');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `job_description` text NOT NULL,
  `skill_set` varchar(255) NOT NULL,
  `speciality` varchar(100) NOT NULL,
  `year_of_experience` varchar(55) NOT NULL,
  `location_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `company_id`, `job_title`, `job_description`, `skill_set`, `speciality`, `year_of_experience`, `location_id`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 'Finance Technology Strategy', 'Digital Finance', 'Cognos-BI Reporting & Dashboards', 'Finance Technology Strategy', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(2, 1, 'AI eCommerce', 'Platform & Operations', 'Oracle Commerce (ATG)', 'AI eCommerce', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(3, 1, 'Tech Delivery Architecture', 'Tech Research/Innovation', 'Tech Delivery Architecture', 'Tech Delivery Architecture', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(4, 1, 'Technology-Database', 'Oracle', 'Oracle-Applications DBA', 'Technology-Database', '6-8 Yrs', 3, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(5, 1, 'SCM Applications', 'Function Applications', 'Sterling Commerce', 'SCM Applications', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(6, 1, 'Tech Arch', 'Oracle', 'Oracle-Technical Arch', 'Tech Arch', '8-10 Yrs', 3, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(7, 1, 'Tech Arch', 'Oracle', 'Oracle-Technical Arch', 'Tech Arch', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(8, 1, 'Tech Arch', 'Oracle', 'Oracle-Technical Arch', 'Tech Arch', '6-8 Yrs', 3, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(9, 1, 'SCM Applications', 'Function Applications', 'Sterling Commerce', 'SCM Applications', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(10, 1, 'SCM Applications', 'Function Applications', 'Sterling Commerce', 'SCM Applications', '6-8 Yrs', 4, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(11, 1, 'SCM Applications', 'Function Applications', 'Sterling Commerce', 'SCM Applications', '4-6 Yrs', 5, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(12, 1, 'SCM Applications', 'Function Applications', 'Sterling Commerce', 'SCM Applications', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(13, 1, 'SCM Applications', 'Function Applications', 'Sterling Commerce', 'SCM Applications', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(14, 1, 'F&EP Applications', 'Function Applications', 'Cognos', 'F&EP Applications', '4-6 Yrs', 7, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(15, 1, 'SCM Applications', 'Function Applications', 'MercuryGate', 'SCM Applications', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(16, 1, 'Technology-Database', 'Oracle', 'Oracle-Applications DBA', 'Technology-Database', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(17, 1, 'JDE-Technology', 'Oracle', 'JDE-Development Workbench', 'JDE-Technology', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(18, 1, 'EBS-SCM', 'Oracle', 'Oracle-SCM', 'EBS-SCM', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(19, 1, 'JDE-Technology', 'Oracle', 'JDE-Development Workbench', 'JDE-Technology', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(20, 1, 'Industry-Retail', 'Oracle', 'Oracle-Retail-Merchandising System', 'Industry-Retail', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(21, 1, 'Industry-Healthcare/Life Sci', 'Oracle', 'Oracle Argus', 'Industry-Healthcare/Life Sci', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(22, 1, 'SAP-Business Intelligence', 'SAP', 'SAP-Business Objects Design Studio', 'SAP-Business Intelligence', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:17', '2016-11-15 19:30:17'),
(23, 1, 'Fusion-Middleware', 'Oracle', 'Oracle-Fusion Middleware-Collaboration Suite', 'Fusion-Middleware', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(24, 1, 'Industry-Retail', 'Oracle', 'Oracle-Retail-Integration Bus', 'Industry-Retail', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(25, 1, 'JDE-SCM', 'Oracle', 'JDE-E1-Manufacturing', 'JDE-SCM', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(26, 1, 'JDE-SCM', 'Oracle', 'JDE-E1-Manufacturing', 'JDE-SCM', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(27, 1, 'SAP-Business Intelligence', 'SAP', 'SAP HANA Studios', 'SAP-Business Intelligence', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(28, 1, 'Oracle-Analytics', 'Oracle', 'Oracle-BI (OBIA)', 'Oracle-Analytics', '4-6 Yrs', 7, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(29, 1, 'Oracle-Analytics', 'Oracle', 'Oracle-BI (OBIA)', 'Oracle-Analytics', '2.5-4 Yrs', 7, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(30, 1, 'SAP/Ariba Sourcing & Procurmnt', 'SAP', 'SAP-Supplier Relationship Management (SRM)', 'SAP/Ariba Sourcing & Procurmnt', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(31, 1, 'Fusion-Middleware', 'Oracle', 'Oracle-SOA-BPEL', 'Fusion-Middleware', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(32, 1, 'Fusion-Middleware', 'Oracle', 'Oracle-SOA-OSB', 'Fusion-Middleware', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(33, 1, 'Fusion-Middleware', 'Oracle', 'Oracle-Application Server ADF (App Devl Framework)', 'Fusion-Middleware', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(34, 1, 'Fusion-Middleware', 'Oracle', 'Oracle-SOA-OSB', 'Fusion-Middleware', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(35, 1, 'SAP-CRM-Sales & Service', 'SAP', 'SAP-Hybris', 'SAP-CRM-Sales & Service', '4-6 Yrs', 5, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(36, 1, 'SAP-CRM-Sales & Service', 'SAP', 'SAP-Hybris', 'SAP-CRM-Sales & Service', '2.5-4 Yrs', 5, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(37, 1, 'Tech Arch', 'Oracle', 'Oracle-Apps Development', 'Tech Arch', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(38, 1, 'Tech Arch', 'Oracle', 'Oracle-Apps Development', 'Tech Arch', '2.5-4 Yrs', 6, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(39, 1, 'Fusion-Middleware', 'Oracle', 'Oracle-SOA-BPEL', 'Fusion-Middleware', '2.5-4 Yrs', 3, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(40, 1, 'Fusion-Middleware', 'Oracle', 'Oracle-SOA-BPEL', 'Fusion-Middleware', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(41, 1, 'Fusion-Middleware', 'Oracle', 'Oracle-Application Server ADF (App Devl Framework)', 'Fusion-Middleware', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(42, 1, 'Tech Arch', 'Oracle', 'Oracle Application-PLSQL', 'Tech Arch', '2.5-4 Yrs', 6, 1, 0, '2016-11-15 19:30:18', '2016-11-15 19:30:18'),
(43, 1, 'Hyperion-F&EP', 'Oracle', 'Oracle-Hyperion-Planning', 'Hyperion-F&EP', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(44, 1, 'Tech Arch', 'Oracle', 'Oracle-Apps Development', 'Tech Arch', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(45, 1, 'SAP-SCM-Fulfillment', 'SAP', 'SAP-LE-WM Warehouse Management', 'SAP-SCM-Fulfillment', '6-8 Yrs', 8, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(46, 1, 'SAP-SCM-Fulfillment', 'SAP', 'SAP-TM Transportation Management', 'SAP-SCM-Fulfillment', '2.5-4 Yrs', 6, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(47, 1, 'SAP-Arch & Infra & Cloud', 'SAP', 'SAP-Information Lifecycle Management', 'SAP-Arch & Infra & Cloud', '2.5-4 Yrs', 3, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(48, 1, 'SAP-SCM-Fulfillment', 'SAP', 'SAP-SCM-EWM Extended Warehouse Management', 'SAP-SCM-Fulfillment', '2.5-4 Yrs', 2, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(49, 1, 'SAP-Arch & Infra & Cloud', 'SAP', 'SAP-Information Lifecycle Management', 'SAP-Arch & Infra & Cloud', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(50, 1, 'SAP-SCM-Fulfillment', 'SAP', 'SAP-TM Transportation Management', 'SAP-SCM-Fulfillment', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(51, 1, 'SAP-Arch & Infra & Cloud', 'SAP', 'SAP-BASIS Administration', 'SAP-Arch & Infra & Cloud', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(52, 1, 'SAP-Product Lifecycle Mgmt', 'SAP', 'SAP-Product Lifecycle Management (PLM)', 'SAP-Product Lifecycle Mgmt', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(53, 1, 'SAP-SCM-Fulfillment', 'SAP', 'SAP-TM Transportation Management', 'SAP-SCM-Fulfillment', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(54, 1, 'SAP-SCM-Fulfillment', 'SAP', 'SAP-TM Transportation Management', 'SAP-SCM-Fulfillment', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(55, 1, 'SAP-SCM-Fulfillment', 'SAP', 'SAP-SCM-EWM Extended Warehouse Management', 'SAP-SCM-Fulfillment', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(56, 1, 'SAP-Product Lifecycle Mgmt', 'SAP', 'SAP - Variant Configuration (LO-VC)', 'SAP-Product Lifecycle Mgmt', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(57, 1, 'SAP-SCM-Fulfillment', 'SAP', 'SAP-SCM-EWM Extended Warehouse Management', 'SAP-SCM-Fulfillment', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(58, 1, 'SAP-SCM-Fulfillment', 'SAP', 'SAP-TM Transportation Management', 'SAP-SCM-Fulfillment', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(59, 1, 'SAP-Human Capital Management', 'SAP', 'SAP-SuccessFactors Integrations - Cloud', 'SAP-Human Capital Management', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(60, 1, 'SAP-Human Capital Management', 'SAP', 'SAP-SuccessFactors Integrations - Cloud', 'SAP-Human Capital Management', '2.5-4 Yrs', 2, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(61, 1, 'SAP-SCM-Fulfillment', 'SAP', 'SAP-SCM-EWM Extended Warehouse Management', 'SAP-SCM-Fulfillment', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(62, 1, 'SAP-SCM-Fulfillment', 'SAP', 'SAP-SCM-EWM Extended Warehouse Management', 'SAP-SCM-Fulfillment', '2.5-4 Yrs', 3, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(63, 1, 'SAP-Arch & Infra & Cloud', 'SAP', 'SAP-HANA Administration & Performance Engineering', 'SAP-Arch & Infra & Cloud', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:19', '2016-11-15 19:30:19'),
(64, 1, 'SAP-Arch & Infra & Cloud', 'SAP', 'SAP-HANA Administration & Performance Engineering', 'SAP-Arch & Infra & Cloud', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(65, 1, 'SAP-Arch & Infra & Cloud', 'SAP', 'SAP-BASIS Administration', 'SAP-Arch & Infra & Cloud', '2.5-4 Yrs', 6, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(66, 1, 'SAP-SCM-Fulfillment', 'SAP', 'SAP-LE-WM Warehouse Management', 'SAP-SCM-Fulfillment', '4-6 Yrs', 5, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(67, 1, 'Microsoft Dynamics AX', 'Microsoft Business Apps', 'AX Technical', 'Microsoft Dynamics AX', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(68, 1, 'SAP-Retail', 'SAP', 'SAP-Retail-Point of Sale (POS)', 'SAP-Retail', '6-8 Yrs', 2, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(69, 1, 'SAP-SCM-Fulfillment', 'SAP', 'SAP-SLL-GTS Global Trade Services', 'SAP-SCM-Fulfillment', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(70, 1, 'JDE-F&EP', 'Oracle', 'JDE-E1-Financials', 'JDE-F&EP', '6-8 Yrs', 8, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(71, 1, 'JDE-Technology', 'Oracle', 'JDE-E1-OMW Development', 'JDE-Technology', '6-8 Yrs', 8, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(72, 1, 'SAP-Arch & Infra & Cloud', 'SAP', 'SAP-GRC Suite', 'SAP-Arch & Infra & Cloud', '6-8 Yrs', 7, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(73, 1, 'Siebel-Technology', 'Oracle', 'Siebel-Configuration', 'Siebel-Technology', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(74, 1, 'SAP-SCM-Fulfillment', 'SAP', 'SAP-TM Transportation Management', 'SAP-SCM-Fulfillment', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(75, 1, 'Hyperion-Technology', 'Oracle', 'Oracle-Hyperion-Essbase', 'Hyperion-Technology', '6-8 Yrs', 8, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(76, 1, 'EBS-SCM', 'Oracle', 'Oracle-SCM-Order Management', 'EBS-SCM', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(77, 1, 'Fusion-Middleware', 'Oracle', 'Oracle-BPEL Process Manager', 'Fusion-Middleware', '8-10 Yrs', 1, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(78, 1, 'SAP-SCM-Fulfillment', 'SAP', 'SAP-OER Object Event Repository', 'SAP-SCM-Fulfillment', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(79, 1, 'Performance Engineering', 'Performance Engineering', 'Performance Engineering', 'Performance Engineering', '4-6 Yrs', 5, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(80, 1, 'SAP-SD-Sales Order Processing', 'SAP', 'SAP-SD-Sales Order Processing', 'SAP-SD-Sales Order Processing', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(81, 1, 'F&EP Applications', 'Function Applications', 'Infor', 'F&EP Applications', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(82, 1, 'F&EP Applications', 'Function Applications', 'Infor', 'F&EP Applications', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(83, 1, 'F&EP Applications', 'Function Applications', 'Infor', 'F&EP Applications', '6-8 Yrs', 8, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(84, 1, 'SAP-Business Intelligence', 'SAP', 'SAP-Business Intelligence', 'SAP-Business Intelligence', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(85, 1, 'SAP-SCM-Fulfillment', 'SAP', 'SAP-LE-WM Warehouse Management', 'SAP-SCM-Fulfillment', '2.5-4 Yrs', 9, 1, 0, '2016-11-15 19:30:20', '2016-11-15 19:30:20'),
(86, 1, 'SAP-SD-Sales Order Processing', 'SAP', 'SAP-SD-Sales Order Processing', 'SAP-SD-Sales Order Processing', '8-10 Yrs', 1, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(87, 1, 'Hyperion-Technology', 'Oracle', 'Oracle-Hyperion-Essbase', 'Hyperion-Technology', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(88, 1, 'SAP-CRM-Sales & Service', 'SAP', 'SAP-CRM-Service-Warranty Management', 'SAP-CRM-Sales & Service', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(89, 1, 'SAP-CRM-Sales & Service', 'SAP', 'SAP-CRM-Service-Warranty Management', 'SAP-CRM-Sales & Service', '6-8 Yrs', 2, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(90, 1, 'Service Tool Enablement', 'IT Service Excellence', 'Service Desk', 'Service Tool Enablement', '2.5-4 Yrs', 2, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(91, 1, 'SAP-Arch & Infra & Cloud', 'SAP', 'SAP-Security', 'SAP-Arch & Infra & Cloud', '6-8 Yrs', 3, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(92, 1, 'SAP-Arch & Infra & Cloud', 'SAP', 'SAP-Security', 'SAP-Arch & Infra & Cloud', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(93, 1, 'EBS-F&EP', 'Oracle', 'Oracle-Financials', 'EBS-F&EP', '6-8 Yrs', 3, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(94, 1, 'JDE-Technology', 'Oracle', 'JDE-E1-Configurable Network Computing (CNC)', 'JDE-Technology', '6-8 Yrs', 2, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(95, 1, 'PRD-Industry Applications', 'Industry Applications-PRD', 'TrackWise', 'PRD-Industry Applications', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(96, 1, 'PRD-Industry Applications', 'Industry Applications-PRD', 'Oracle-LSH', 'PRD-Industry Applications', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(97, 1, 'PRD-Industry Applications', 'Industry Applications-PRD', 'Oracle-LSH', 'PRD-Industry Applications', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(98, 1, 'SAP-SCM-APO Planning', 'SAP', 'SAP-SCM-APO-Supply Network Planning (SNP)', 'SAP-SCM-APO Planning', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(99, 1, 'PRD-PiaB (Pharma in a Box)', 'Industry Applications-PRD', 'SAP-PP-PI Process industries', 'PRD-PiaB (Pharma in a Box)', '2.5-4 Yrs', 2, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(100, 1, 'PRD-PiaB (Pharma in a Box)', 'Industry Applications-PRD', 'SAP-PP-PI Process industries', 'PRD-PiaB (Pharma in a Box)', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(101, 1, 'PRD-PiaB (Pharma in a Box)', 'Industry Applications-PRD', 'SAP-PP-PI Process industries', 'PRD-PiaB (Pharma in a Box)', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(102, 1, 'SAP-ERP-Procurement', 'SAP', 'SAP-Purchasing (MM-PO)', 'SAP-ERP-Procurement', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(103, 1, 'SAP-Manufacturing', 'SAP', 'SAP-Manufacturing-Production Planning (PP)', 'SAP-Manufacturing', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(104, 1, 'SAP-Data & Development', 'SAP', 'SAP-UI5 / Fiori development (HTML5 & Java)', 'SAP-Data & Development', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(105, 1, 'PRD-Industry Applications', 'Industry Applications-PRD', 'Oracle-eBus Suite Technical', 'PRD-Industry Applications', '2.5-4 Yrs', 3, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(106, 1, 'SAP-ERP-Sales', 'SAP', 'SAP-SD-AFS', 'SAP-ERP-Sales', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(107, 1, 'SAP-ERP-Sales', 'SAP', 'SAP-SD-AFS', 'SAP-ERP-Sales', '2.5-4 Yrs', 2, 1, 0, '2016-11-15 19:30:21', '2016-11-15 19:30:21'),
(108, 1, 'SAP-Data & Development', 'SAP', 'SAP-ABAP Development for HANA', 'SAP-Data & Development', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(109, 1, 'SAP-ERP-Sales', 'SAP', 'SAP-SD-Sales Order Management', 'SAP-ERP-Sales', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(110, 1, 'PRD-Industry Applications', 'Industry Applications-PRD', 'Labware', 'PRD-Industry Applications', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(111, 1, 'PRD-Industry Applications', 'Industry Applications-PRD', 'Werum', 'PRD-Industry Applications', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(112, 1, 'SAP-Data & Development', 'SAP', 'SAP-Master Data Migration', 'SAP-Data & Development', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(113, 1, 'SAP-ERP-Sales', 'SAP', 'SAP-CS-Customer Service', 'SAP-ERP-Sales', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(114, 1, 'SAP-SCM-APO Planning', 'SAP', 'SAP-SCM-IBP-Integrated Business Planning', 'SAP-SCM-APO Planning', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(115, 1, 'SAP-Manufacturing', 'SAP', 'SAP-Manufacturing-Production Planning (PP)', 'SAP-Manufacturing', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(116, 1, 'SAP-Entrprs Performance (EPM)', 'SAP', 'SAP-CO-Profitability Analyis (CO-PA)', 'SAP-Entrprs Performance (EPM)', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(117, 1, 'SAP-Entrprs Performance (EPM)', 'SAP', 'SAP-CO-Profitability Analyis (CO-PA)', 'SAP-Entrprs Performance (EPM)', '2.5-4 Yrs', 2, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(118, 1, 'SAP-Entrprs Performance (EPM)', 'SAP', 'SAP-CO-Profitability Analyis (CO-PA)', 'SAP-Entrprs Performance (EPM)', '2.5-4 Yrs', 3, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(119, 1, 'SAP-Entrprs Performance (EPM)', 'SAP', 'SAP-CO-Profitability Analyis (CO-PA)', 'SAP-Entrprs Performance (EPM)', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(120, 1, 'SAP-Financial Accntng & Oprtns', 'SAP', 'SAP-FSCM Treasury and Risk Management', 'SAP-Financial Accntng & Oprtns', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(121, 1, 'SAP-Financial Accntng & Oprtns', 'SAP', 'SAP-FSCM Treasury and Risk Management', 'SAP-Financial Accntng & Oprtns', '2.5-4 Yrs', 2, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(122, 1, 'SAP-Financial Accntng & Oprtns', 'SAP', 'SAP-FSCM Treasury and Risk Management', 'SAP-Financial Accntng & Oprtns', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(123, 1, 'SAP-Data & Development', 'SAP', 'SAP-ABAP Object Oriented Development', 'SAP-Data & Development', '4-6 Yrs', 5, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(124, 1, 'PRD-PiaB (Pharma in a Box)', 'Industry Applications-PRD', 'SAP-Financial Accounting', 'PRD-PiaB (Pharma in a Box)', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(125, 1, 'SAP-Data & Development', 'SAP', 'SAP-ABAP Development for HANA', 'SAP-Data & Development', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(126, 1, 'PRD-PiaB (Pharma in a Box)', 'Industry Applications-PRD', 'SAP-Financial Accounting', 'PRD-PiaB (Pharma in a Box)', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:22', '2016-11-15 19:30:22'),
(127, 1, 'SAP-Financial Accntng & Oprtns', 'SAP', 'SAP-FI-General Ledger (GL)', 'SAP-Financial Accntng & Oprtns', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(128, 1, 'SAP-Data & Development', 'SAP', 'SAP-ABAP Object Oriented Development', 'SAP-Data & Development', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(129, 1, 'SAP-Entrprs Performance (EPM)', 'SAP', 'SAP-CO-Product Cost Accounting', 'SAP-Entrprs Performance (EPM)', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(130, 1, 'SAP-SCM-APO Planning', 'SAP', 'SAP-SCM-APO-Supply Network Planning (SNP)', 'SAP-SCM-APO Planning', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(131, 1, 'SAP-Data & Development', 'SAP', 'SAP-PO/PI & APIs Development', 'SAP-Data & Development', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(132, 1, 'SAP-Data & Development', 'SAP', 'SAP-ABAP Development for HANA', 'SAP-Data & Development', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(133, 1, 'SAP-Data & Development', 'SAP', 'SAP-ABAP Object Oriented Development', 'SAP-Data & Development', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(134, 1, 'SAP-Data & Development', 'SAP', 'SAP-ABAP Web Dynpro Development', 'SAP-Data & Development', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(135, 1, 'SAP-Data & Development', 'SAP', 'SAP-PO/PI & APIs Development', 'SAP-Data & Development', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(136, 1, 'SAP-SCM-APO Planning', 'SAP', 'SAP-SCM-APO-Advanced Planning & Optimization', 'SAP-SCM-APO Planning', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(137, 1, 'SAP-Data & Development', 'SAP', 'SAP-PO/PI & APIs Development', 'SAP-Data & Development', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(138, 1, 'SAP-Financial Accntng & Oprtns', 'SAP', 'SAP-Financial Accntng & Oprtns', 'SAP-Financial Accntng & Oprtns', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(139, 1, 'SAP-Financial Accntng & Oprtns', 'SAP', 'SAP-Financial Accntng & Oprtns', 'SAP-Financial Accntng & Oprtns', '2.5-4 Yrs', 3, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(140, 1, 'Java Enterprise - Front End', 'Java Technology Platform', 'Play! Framework', 'Java Enterprise - Front End', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(141, 1, 'Java Enterprise - Front End', 'Java Technology Platform', 'JavaServer Pages (JSP)', 'Java Enterprise - Front End', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(142, 1, 'Java Enterprise - Front End', 'Java Technology Platform', 'JavaScript', 'Java Enterprise - Front End', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(143, 1, 'Business Intelligence', 'Data & Analytics', 'SAP Business Objects-BI Tools', 'Business Intelligence', '6-8 Yrs', 6, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(144, 1, 'Java Enterprise - Front End', 'Java Technology Platform', 'AngularJS', 'Java Enterprise - Front End', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(145, 1, 'Java Enterprise - Front End', 'Java Technology Platform', 'Spring-MVC', 'Java Enterprise - Front End', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(146, 1, 'Java Enterprise - Front End', 'Java Technology Platform', 'AngularJS', 'Java Enterprise - Front End', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(147, 1, 'Data Integration', 'Data & Analytics', 'Ab Initio-BI Tools', 'Data Integration', '2.5-4 Yrs', 5, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(148, 1, 'Java Enterprise - Front End', 'Java Technology Platform', 'AngularJS', 'Java Enterprise - Front End', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(149, 1, 'Data Integration', 'Data & Analytics', 'Informatica-BI Tools', 'Data Integration', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:23', '2016-11-15 19:30:23'),
(150, 1, 'Data Integration', 'Data & Analytics', 'Informatica-BI Tools', 'Data Integration', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(151, 1, 'Java and JVM Languages', 'Java Technology Platform', 'Scala', 'Java and JVM Languages', '4-6 Yrs', 5, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(152, 1, 'Java and JVM Languages', 'Java Technology Platform', 'Java 2D and 3D', 'Java and JVM Languages', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(153, 1, 'Java and JVM Languages', 'Java Technology Platform', 'Java 2D and 3D', 'Java and JVM Languages', '2.5-4 Yrs', 6, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(154, 1, 'Java and JVM Languages', 'Java Technology Platform', 'Java 2D and 3D', 'Java and JVM Languages', '2.5-4 Yrs', 2, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(155, 1, 'Java and JVM Languages', 'Java Technology Platform', 'Java 2D and 3D', 'Java and JVM Languages', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(156, 1, 'Java and JVM Languages', 'Java Technology Platform', 'Java Platform Language and Class Libraries', 'Java and JVM Languages', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(157, 1, 'Java and JVM Languages', 'Java Technology Platform', 'Scala', 'Java and JVM Languages', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(158, 1, 'Java Enterprise - Back End', 'Java Technology Platform', 'Hibernate', 'Java Enterprise - Back End', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(159, 1, 'Java and JVM Languages', 'Java Technology Platform', 'Java Standard Edition', 'Java and JVM Languages', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(160, 1, 'Java and JVM Languages', 'Java Technology Platform', 'Java Platform Language and Class Libraries', 'Java and JVM Languages', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(161, 1, 'Java and JVM Languages', 'Java Technology Platform', 'Java Platform Language and Class Libraries', 'Java and JVM Languages', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(162, 1, 'Java and JVM Languages', 'Java Technology Platform', 'Java Standard Edition', 'Java and JVM Languages', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(163, 1, 'Java and JVM Languages', 'Java Technology Platform', 'Java Platform Language and Class Libraries', 'Java and JVM Languages', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(164, 1, 'Application Design and Arch', 'Java Technology Platform', 'Core J2EE Design Patterns', 'Application Design and Arch', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(165, 1, 'Application Design and Arch', 'Java Technology Platform', 'J2EE Architecture', 'Application Design and Arch', '2.5-4 Yrs', 2, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(166, 1, 'Application Design and Arch', 'Java Technology Platform', 'Core J2EE Design Patterns', 'Application Design and Arch', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(167, 1, 'Application Design and Arch', 'Java Technology Platform', 'Core J2EE Design Patterns', 'Application Design and Arch', '2.5-4 Yrs', 2, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(168, 1, 'Application Design and Arch', 'Java Technology Platform', 'J2EE Architecture', 'Application Design and Arch', '4-6 Yrs', 7, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(169, 1, 'Application Design and Arch', 'Java Technology Platform', 'J2EE Architecture', 'Application Design and Arch', '2.5-4 Yrs', 7, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(170, 1, 'Java Enterprise - Back End', 'Java Technology Platform', 'Java Enterprise Edition', 'Java Enterprise - Back End', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(171, 1, 'Java Enterprise - Back End', 'Java Technology Platform', 'Java Enterprise Edition', 'Java Enterprise - Back End', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:24', '2016-11-15 19:30:24'),
(172, 1, 'Application Design and Arch', 'Java Technology Platform', 'J2EE Architecture', 'Application Design and Arch', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(173, 1, 'Java Enterprise - Back End', 'Java Technology Platform', 'Enterprise Java Beans (EJB) 3.x', 'Java Enterprise - Back End', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(174, 1, 'Application Design and Arch', 'Java Technology Platform', 'J2EE Architecture', 'Application Design and Arch', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(175, 1, 'Java Enterprise - Back End', 'Java Technology Platform', 'Hibernate', 'Java Enterprise - Back End', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(176, 1, 'Java Enterprise - Back End', 'Java Technology Platform', 'Java Enterprise Edition', 'Java Enterprise - Back End', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(177, 1, 'Application Design and Arch', 'Java Technology Platform', 'J2EE Architecture', 'Application Design and Arch', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(178, 1, 'Open Source Intgration & Proc', 'Open Source', 'JBoss Fuse Service Works', 'Open Source Intgration & Proc', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(179, 1, 'Open Source Intgration & Proc', 'Open Source', 'JBoss Fuse Service Works', 'Open Source Intgration & Proc', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(180, 1, 'Microsoft Web Development', 'Microsoft Platform', 'SiteCore', 'Microsoft Web Development', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(181, 1, 'Microsoft Web Development', 'Microsoft Platform', 'SiteCore', 'Microsoft Web Development', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(182, 1, 'Microsoft Web Development', 'Microsoft Platform', 'SiteCore', 'Microsoft Web Development', '6-8 Yrs', 8, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(183, 1, 'Microsoft Web Development', 'Microsoft Platform', 'SiteCore', 'Microsoft Web Development', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(184, 1, '.NET Framework', 'Microsoft Platform', 'Microsoft-Biztalk Server', '.NET Framework', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(185, 1, 'Microsoft Dynamics AX', 'Microsoft Business Apps', 'AX Technical', 'Microsoft Dynamics AX', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(186, 1, '.NET Framework', 'Microsoft Platform', 'Microsoft-Biztalk Server', '.NET Framework', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(187, 1, '.NET Framework', 'Microsoft Platform', 'Microsoft-Biztalk Server', '.NET Framework', '4-6 Yrs', 5, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(188, 1, 'MSFT Collaborative Tech', 'Microsoft Platform', 'Microsoft-Office 365 - SharePoint Online', 'MSFT Collaborative Tech', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(189, 1, 'Microsoft Dynamics CRM', 'Microsoft Business Apps', 'Microsoft-Dynamics CRM Technical', 'Microsoft Dynamics CRM', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(190, 1, 'SAP-Entrprs Performance (EPM)', 'SAP', 'SAP-CO-Overhead Cost Accounting (CCA)', 'SAP-Entrprs Performance (EPM)', '4-6 Yrs', 7, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(191, 1, 'Microsoft-Office-Project Server', 'Microsoft Platform', 'Microsoft-Office-Project Server', 'Microsoft-Office-Project Server', '2.5-4 Yrs', 3, 1, 0, '2016-11-15 19:30:25', '2016-11-15 19:30:25'),
(192, 1, 'MSFT Collaborative Tech', 'Microsoft Platform', 'K2.Net', 'MSFT Collaborative Tech', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(193, 1, '.NET Framework', 'Microsoft Platform', 'Microsoft- .NET Architecture', '.NET Framework', '8-10 Yrs', 2, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(194, 1, 'Microsoft Dynamics AX', 'Microsoft Business Apps', 'AX Technical', 'Microsoft Dynamics AX', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(195, 1, 'SAP-Entrprs Performance (EPM)', 'SAP', 'SAP-Management Accounting (CO)', 'SAP-Entrprs Performance (EPM)', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(196, 1, 'Java Enterprise - Back End', 'Java Technology Platform', 'Java Enterprise Edition', 'Java Enterprise - Back End', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(197, 1, 'Application Design and Arch', 'Java Technology Platform', 'J2EE Architecture', 'Application Design and Arch', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(198, 1, 'PRD-Industry Applications', 'Industry Applications-PRD', 'Labware', 'PRD-Industry Applications', '8-10 Yrs', 8, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(199, 1, 'MSFT Business Intelligence', 'Microsoft Platform', 'Microsoft-SQL Server-Analysis Services', 'MSFT Business Intelligence', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(200, 1, 'Microsoft Dynamics AX', 'Microsoft Business Apps', 'AX Technical', 'Microsoft Dynamics AX', '4-6 Yrs', 5, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(201, 1, 'H&PS-Industry Applications', 'Industry Applications-HPS', 'Empowered Benefits', 'H&PS-Industry Applications', '6-8 Yrs', 8, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(202, 1, 'Resources Industry Apps', 'Industry Applications-RES', 'TIBCO', 'Resources Industry Apps', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(203, 1, 'PRD-Industry Applications', 'Industry Applications-PRD', 'Labware', 'PRD-Industry Applications', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(204, 1, 'Resources Industry Apps', 'Industry Applications-RES', 'Rockwell', 'Resources Industry Apps', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(205, 1, 'Mainframe', 'Hostcentric Platform', 'ADABAS', 'Mainframe', '8-10 Yrs', 7, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(206, 1, 'Java and JVM Languages', 'Java Technology Platform', 'HtmlUnit', 'Java and JVM Languages', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(207, 1, 'Application Design and Arch', 'Java Technology Platform', 'Java Design Patterns', 'Application Design and Arch', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(208, 1, 'SAP-Manufacturing', 'SAP', 'SAP-Manufacturing-Production Planning (PP)', 'SAP-Manufacturing', '6-8 Yrs', 8, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(209, 1, 'Microsoft Dynamics AX', 'Microsoft Business Apps', 'AX Technical', 'Microsoft Dynamics AX', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(210, 1, 'MSFT Collaborative Tech', 'Microsoft Platform', 'Microsoft-SharePoint Server 2013', 'MSFT Collaborative Tech', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(211, 1, 'MSFT Collaborative Tech', 'Microsoft Platform', 'Microsoft-SharePoint Server 2013', 'MSFT Collaborative Tech', '6-8 Yrs', 2, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(212, 1, 'Microsoft Dynamics AX', 'Microsoft Business Apps', 'AX Technical', 'Microsoft Dynamics AX', '8-10 Yrs', 8, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(213, 1, 'Microsoft Dynamics AX', 'Microsoft Business Apps', 'AX Functional', 'Microsoft Dynamics AX', '8-10 Yrs', 8, 1, 0, '2016-11-15 19:30:26', '2016-11-15 19:30:26'),
(214, 1, 'SAP-Financial Accntng & Oprtns', 'SAP', 'SAP-FI-Accounts Payable (AP)', 'SAP-Financial Accntng & Oprtns', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:27', '2016-11-15 19:30:27'),
(215, 1, 'Business Intelligence', 'Data & Analytics', 'SAP Business Objects-BI Tools', 'Business Intelligence', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:27', '2016-11-15 19:30:27'),
(216, 1, 'Data Integration', 'Data & Analytics', 'IBM DataStage', 'Data Integration', '6-8 Yrs', 2, 1, 0, '2016-11-15 19:30:27', '2016-11-15 19:30:27'),
(217, 1, 'Java Enterprise - Back End', 'Java Technology Platform', 'Enterprise Java Beans (EJB) 2.x', 'Java Enterprise - Back End', '6-8 Yrs', 8, 1, 0, '2016-11-15 19:30:27', '2016-11-15 19:30:27'),
(218, 1, 'Mainframe', 'Hostcentric Platform', 'ADABAS', 'Mainframe', '2.5-4 Yrs', 7, 1, 0, '2016-11-15 19:30:27', '2016-11-15 19:30:27'),
(219, 1, 'SAP-Data & Development', 'SAP', 'SAP-ABAP Development', 'SAP-Data & Development', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:27', '2016-11-15 19:30:27'),
(220, 1, 'Business Intelligence', 'Data & Analytics', 'SAP Business Objects-BI Tools', 'Business Intelligence', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:27', '2016-11-15 19:30:27'),
(221, 1, 'Application Design and Arch', 'Java Technology Platform', 'J2EE Architecture', 'Application Design and Arch', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:27', '2016-11-15 19:30:27'),
(222, 1, 'Java Enterprise - Integration', 'Java Technology Platform', 'Java API for RESTful Web Services (JAX-RS)', 'Java Enterprise - Integration', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:27', '2016-11-15 19:30:27'),
(223, 1, 'Microsoft Dynamics AX', 'Microsoft Business Apps', 'AX Functional', 'Microsoft Dynamics AX', '6-8 Yrs', 8, 1, 0, '2016-11-15 19:30:27', '2016-11-15 19:30:27'),
(224, 1, 'Microsoft Dynamics AX', 'Microsoft Business Apps', 'AX Functional', 'Microsoft Dynamics AX', '8-10 Yrs', 2, 1, 0, '2016-11-15 19:30:27', '2016-11-15 19:30:27'),
(225, 1, 'Microsoft Web Development', 'Microsoft Platform', 'ASP.NET MVC', 'Microsoft Web Development', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:27', '2016-11-15 19:30:27'),
(226, 1, 'Microsoft Web Development', 'Microsoft Platform', 'ASP.NET MVC', 'Microsoft Web Development', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(227, 1, 'MSFT Collaborative Tech', 'Microsoft Platform', 'Microsoft-SharePoint Server 2013', 'MSFT Collaborative Tech', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(228, 1, 'MSFT Collaborative Tech', 'Microsoft Platform', 'Microsoft-SharePoint Server 2013', 'MSFT Collaborative Tech', '6-8 Yrs', 3, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(229, 1, 'Microsoft Web Development', 'Microsoft Platform', 'ASP.NET MVC', 'Microsoft Web Development', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(230, 1, 'Microsoft Web Development', 'Microsoft Platform', 'ASP.NET MVC', 'Microsoft Web Development', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(231, 1, 'Microsoft Web Development', 'Microsoft Platform', 'ASP.NET MVC', 'Microsoft Web Development', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(232, 1, 'Microsoft Web Development', 'Microsoft Platform', 'ASP.NET MVC', 'Microsoft Web Development', '6-8 Yrs', 5, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(233, 1, 'Microsoft Web Development', 'Microsoft Platform', 'ASP.NET MVC', 'Microsoft Web Development', '4-6 Yrs', 5, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(234, 1, 'MSFT Collaborative Tech', 'Microsoft Platform', 'Microsoft-Office 365 - SharePoint Online', 'MSFT Collaborative Tech', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(235, 1, 'MSFT Collaborative Tech', 'Microsoft Platform', 'Microsoft-SharePoint Server 2013', 'MSFT Collaborative Tech', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(236, 1, 'MSFT Collaborative Tech', 'Microsoft Platform', 'Microsoft-SharePoint Server 2013', 'MSFT Collaborative Tech', '2.5-4 Yrs', 2, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(237, 1, 'Microsoft Web Development', 'Microsoft Platform', 'SiteCore', 'Microsoft Web Development', '2.5-4 Yrs', 2, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(238, 1, 'Microsoft Web Development', 'Microsoft Platform', 'ASP.NET MVC', 'Microsoft Web Development', '6-8 Yrs', 6, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(239, 1, 'Cloud-Application and Platform', 'Cloud Computing', 'Amazon Web Services (AWS)', 'Cloud-Application and Platform', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(240, 1, 'LAMP', 'Open Source', 'Python', 'LAMP', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(241, 1, 'C++', 'C/C++', 'C++ (UNIX)', 'C++', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(242, 1, 'Integration Services', 'Execution Architectures', 'WebMethods-Fabric', 'Integration Services', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(243, 1, 'DevOps', 'DevOps', 'DevOps', 'DevOps', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(244, 1, 'Vendor Tools for Config & Release Management', 'DevOps', 'Vendor Tools for Config & Release Management', 'Vendor Tools for Config & Release Management', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(245, 1, 'Integration Services', 'Execution Architectures', 'WebMethods-Fabric', 'Integration Services', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(246, 1, 'Integration Services', 'Execution Architectures', 'Progress Apama', 'Integration Services', '2.5-4 Yrs', 6, 1, 0, '2016-11-15 19:30:28', '2016-11-15 19:30:28'),
(247, 1, 'Business Proc. Analysis (BPA)', 'BPM Solutions', 'ARIS Process Design Tools', 'Business Proc. Analysis (BPA)', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(248, 1, 'Analyze Solution', 'Delivery Lifecycle', 'Requirements Analysis', 'Analyze Solution', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(249, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(250, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(251, 1, 'Test Automation', 'Testing', 'Selenium', 'Test Automation', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(252, 1, 'Test Strategy and Management', 'Testing', 'Testing Assessments', 'Test Strategy and Management', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(253, 1, 'Analyze Solution', 'Delivery Lifecycle', 'Requirements Analysis', 'Analyze Solution', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(254, 1, 'Analyze Solution', 'Delivery Lifecycle', 'Requirements Analysis', 'Analyze Solution', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(255, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(256, 1, 'Integration Services', 'Execution Architectures', 'TIBCO-BusinessWorks', 'Integration Services', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(257, 1, 'Digital Front End Dev', 'Digital & Content', 'HTML 5', 'Digital Front End Dev', '8-10 Yrs', 3, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(258, 1, 'Digital Front End Dev', 'Digital & Content', 'HTML 5', 'Digital Front End Dev', '6-8 Yrs', 3, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(259, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '6-8 Yrs', 3, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(260, 1, 'Service Management', 'Service Management', 'Service Management', 'Service Management', '6-8 Yrs', 5, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(261, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '8-10 Yrs', 1, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(262, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '6-8 Yrs', 2, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(263, 1, 'Functional Testing', 'Testing', 'Functional Test Planning-Preparation-Execution', 'Functional Testing', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(264, 1, 'SaaS Implementation', 'Software as a Service', 'Veeva', 'SaaS Implementation', '2.5-4 Yrs', 3, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(265, 1, 'SaaS Implementation', 'Software as a Service', 'Veeva', 'SaaS Implementation', '8-10 Yrs', 3, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(266, 1, 'SaaS Implementation', 'Software as a Service', 'Veeva', 'SaaS Implementation', '6-8 Yrs', 3, 1, 0, '2016-11-15 19:30:29', '2016-11-15 19:30:29'),
(267, 1, 'SaaS Implementation', 'Software as a Service', 'Veeva', 'SaaS Implementation', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(268, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '6-8 Yrs', 8, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(269, 1, 'SaaS Implementation', 'Software as a Service', 'Veeva', 'SaaS Implementation', '6-8 Yrs', 8, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(270, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(271, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '8-10 Yrs', 3, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(272, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '6-8 Yrs', 7, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(273, 1, 'Cloud-Agile Infrastructure', 'Cloud Computing', 'HP Application Lifecycle Manager', 'Cloud-Agile Infrastructure', '2.5-4 Yrs', 3, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(274, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(275, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '4-6 Yrs', 7, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(276, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '8-10 Yrs', 6, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(277, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '8-10 Yrs', 7, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(278, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(279, 1, 'Enterprise & Integration Data', 'Data Architectures', 'EDI (Electronic Data Interchange)', 'Enterprise & Integration Data', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(280, 1, 'Integration Services', 'Execution Architectures', 'IBM-WebSphere-MessageBroker', 'Integration Services', '2.5-4 Yrs', 6, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(281, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '8-10 Yrs', 2, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(282, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(283, 1, 'Non Func. and Perf. Testing', 'Testing', 'HP Software (Mercury) - LoadRunner', 'Non Func. and Perf. Testing', '6-8 Yrs', 5, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(284, 1, 'Integration Services', 'Execution Architectures', 'Oracle-BEA-WebLogic-Integrator (WLI)', 'Integration Services', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(285, 1, '.NET Framework', 'Microsoft Platform', 'Microsoft-Biztalk Server', '.NET Framework', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(286, 1, 'MSFT Business Intelligence', 'Microsoft Platform', 'Microsoft-SQL Server Integration Services', 'MSFT Business Intelligence', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(287, 1, 'MSFT Business Intelligence', 'Microsoft Platform', 'Microsoft-SQL Server-Reporting Services', 'MSFT Business Intelligence', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(288, 1, 'MSFT Business Intelligence', 'Microsoft Platform', 'Microsoft-SQL Server-Analysis Services', 'MSFT Business Intelligence', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(289, 1, '.NET Framework', 'Microsoft Platform', 'Microsoft-Biztalk Server', '.NET Framework', '2.5-4 Yrs', 2, 1, 0, '2016-11-15 19:30:30', '2016-11-15 19:30:30'),
(290, 1, 'MSFT Business Intelligence', 'Microsoft Platform', 'Microsoft-SQL Server-Analysis Services', 'MSFT Business Intelligence', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(291, 1, 'Informatica - MDM', 'Informatica', 'Informatica - MDM', 'Informatica - MDM', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(292, 1, 'Informatica - MDM', 'Informatica', 'Informatica - MDM', 'Informatica - MDM', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(293, 1, 'Point of Sale (PoS)', 'PRD-Retail', 'Point of Sale (PoS)', 'Point of Sale (PoS)', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(294, 1, 'Point of Sale (PoS)', 'PRD-Retail', 'Point of Sale (PoS)', 'Point of Sale (PoS)', '2.5-4 Yrs', 3, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(295, 1, 'ABS-Accelerated R&D Svcs', 'PRD-Life Sciences', 'TrackWise', 'ABS-Accelerated R&D Svcs', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(296, 1, 'Point of Sale (PoS)', 'PRD-Retail', 'Point of Sale (PoS)', 'Point of Sale (PoS)', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31');
INSERT INTO `job` (`id`, `company_id`, `job_title`, `job_description`, `skill_set`, `speciality`, `year_of_experience`, `location_id`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(297, 1, 'Informatica-PowerExchange (Other)', 'Informatica', 'Informatica-PowerExchange (Other)', 'Informatica-PowerExchange (Other)', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(298, 1, 'Informatica-PowerExchange (Other)', 'Informatica', 'Informatica-PowerExchange (Other)', 'Informatica-PowerExchange (Other)', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(299, 1, 'Informatica - MDM', 'Informatica', 'Informatica - MDM', 'Informatica - MDM', '4-6 Yrs', 7, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(300, 1, 'Middleware and SOA', 'Compute Services', 'TIBCO Administration', 'Middleware and SOA', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(301, 1, 'Talend', 'Other IM Vendor Skills', 'Talend', 'Talend', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(302, 1, 'Cross-Life Sciences', 'PRD-Life Sciences', 'Regulatory Compliance and CSV', 'Cross-Life Sciences', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(303, 1, 'Cross-Life Sciences', 'PRD-Life Sciences', 'Regulatory Compliance and CSV', 'Cross-Life Sciences', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(304, 1, 'Talend', 'Other IM Vendor Skills', 'Talend', 'Talend', '6-8 Yrs', 8, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(305, 1, 'IBM-Datapower', 'IBM Skills', 'IBM-Datapower', 'IBM-Datapower', '2.5-4 Yrs', 6, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(306, 1, 'ABS-Accelerated R&D Svcs', 'PRD-Life Sciences', 'Laboratory Inf Mgmt Sys (LIMS)', 'ABS-Accelerated R&D Svcs', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(307, 1, 'UNIX Platform Management', 'Compute Services', 'AIX System Administration', 'UNIX Platform Management', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(308, 1, 'Business Objects (BOBJ)', 'F&PM Apps', 'Business Objects (BOBJ)', 'Business Objects (BOBJ)', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(309, 1, 'Middleware and SOA', 'Compute Services', 'JBOSS Administration', 'Middleware and SOA', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:31', '2016-11-15 19:30:31'),
(310, 1, 'ABS-Accelerated R&D Svcs', 'PRD-Life Sciences', 'TrackWise', 'ABS-Accelerated R&D Svcs', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(311, 1, 'Cross-Life Sciences', 'PRD-Life Sciences', 'Regulatory Compliance and CSV', 'Cross-Life Sciences', '2.5-4 Yrs', 3, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(312, 1, 'Manhattan Associates', 'SCM Apps', 'Manhattan Associates', 'Manhattan Associates', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(313, 1, 'Point of Sale (PoS)', 'PRD-Retail', 'Point of Sale (PoS)', 'Point of Sale (PoS)', '8-10 Yrs', 3, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(314, 1, 'Retail-Channel Experience', 'PRD-Retail', 'Sterling Order Management', 'Retail-Channel Experience', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(315, 1, 'Cross-Life Sciences', 'PRD-Life Sciences', 'Regulatory Compliance and CSV', 'Cross-Life Sciences', '8-10 Yrs', 1, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(316, 1, '.NET Framework', 'Microsoft Platform', 'Microsoft-Biztalk Server', '.NET Framework', '6-8 Yrs', 2, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(317, 1, 'Service Management', 'Service Management', 'Service Management', 'Service Management', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(318, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '2.5-4 Yrs', 3, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(319, 1, 'Salesforce.com', 'Software as a Service', 'Salesforce.com', 'Salesforce.com', '6-8 Yrs', 6, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(320, 1, 'Microsoft Dynamics CRM', 'Microsoft Business Apps', 'Microsoft-Dynamics CRM Functional', 'Microsoft Dynamics CRM', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(321, 1, 'Microsoft Dynamics AX', 'Microsoft Business Apps', 'AX Functional', 'Microsoft Dynamics AX', '6-8 Yrs', 2, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(322, 1, 'SAP-UI & Mobility Architecture', 'SAP', 'SAP-Fiori/UI5 & Responsive Design Architecture', 'SAP-UI & Mobility Architecture', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(323, 1, 'Midrange', 'Hostcentric Platform', 'IBM-AS/400 (System i)', 'Midrange', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(324, 1, 'Java Enterprise - Front End', 'Java Technology Platform', 'Spring-MVC', 'Java Enterprise - Front End', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(325, 1, 'Tech Arch', 'Oracle', 'Oracle-Apps Development', 'Tech Arch', '8-10 Yrs', 6, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(326, 1, 'SAP-Arch & Infra & Cloud', 'SAP', 'SAP-Security', 'SAP-Arch & Infra & Cloud', '4-6 Yrs', 7, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(327, 1, 'SAP-Retail', 'SAP', 'SAP-Retail-Point of Sale (POS)', 'SAP-Retail', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(328, 1, 'SAP-SCM-Fulfillment', 'SAP', 'SAP-SCM-EWM Extended Warehouse Management', 'SAP-SCM-Fulfillment', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(329, 1, 'AI eCommerce', 'Platform & Operations', 'Oracle Commerce (ATG)', 'AI eCommerce', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(330, 1, 'Test Strategy and Management', 'Testing', 'Performance Testing Strategy', 'Test Strategy and Management', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:32', '2016-11-15 19:30:32'),
(331, 1, 'Test Automation', 'Testing', 'SOAP-UI', 'Test Automation', '2.5-4 Yrs', 2, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(332, 1, 'Digital Front End Dev', 'Digital & Content', 'HTML 5', 'Digital Front End Dev', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(333, 1, 'SAP-Data & Development', 'SAP', 'SAP-ABAP-CRM', 'SAP-Data & Development', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(334, 1, 'Java and JVM Languages', 'Java Technology Platform', 'Spring-Application Framework', 'Java and JVM Languages', '4-6 Yrs', 5, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(335, 1, 'SAP-Data & Development', 'SAP', 'SAP-ABAP Development for HANA', 'SAP-Data & Development', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(336, 1, 'Java Enterprise - Front End', 'Java Technology Platform', 'JavaScript', 'Java Enterprise - Front End', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(337, 1, 'Java and JVM Languages', 'Java Technology Platform', 'Scala', 'Java and JVM Languages', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(338, 1, 'Application Design and Arch', 'Java Technology Platform', 'Core J2EE Design Patterns', 'Application Design and Arch', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(339, 1, 'Microsoft Dynamics AX', 'Microsoft Business Apps', 'AX Technical', 'Microsoft Dynamics AX', '6-8 Yrs', 2, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(340, 1, 'Cyber Security Strat & Transf', 'Security & Risk', 'Tableau Desktop - Cyber Security', 'Cyber Security Strat & Transf', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(341, 1, 'Integration Services', 'Execution Architectures', 'WebMethods-Fabric', 'Integration Services', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(342, 1, 'Data Integration', 'Data & Analytics', 'Informatica-BI Tools', 'Data Integration', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(343, 1, 'LS-Supply Chain Svcs', 'PRD-Life Sciences', 'Pharma Validation Testing', 'LS-Supply Chain Svcs', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(344, 1, 'Manhattan Associates', 'SCM Apps', 'Manhattan Associates', 'Manhattan Associates', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(345, 1, 'Informatica - MDM', 'Informatica', 'Informatica - MDM', 'Informatica - MDM', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(346, 1, '.NET Framework', 'Microsoft Platform', 'Microsoft-Biztalk Server', '.NET Framework', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(347, 1, 'MSFT Business Intelligence', 'Microsoft Platform', 'Microsoft-SQL Server-Analysis Services', 'MSFT Business Intelligence', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(348, 1, 'MSFT Collaborative Tech', 'Microsoft Platform', 'Microsoft-Office 365 - SharePoint Online', 'MSFT Collaborative Tech', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(349, 1, 'MSFT Collaborative Tech', 'Microsoft Platform', 'K2.Net', 'MSFT Collaborative Tech', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(350, 1, 'PRD-Industry Applications', 'Industry Applications-PRD', 'Oracle-eBus Suite Technical', 'PRD-Industry Applications', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:33', '2016-11-15 19:30:33'),
(351, 1, 'Java Enterprise - Front End', 'Java Technology Platform', 'Java Server Faces (JSF)-Unit', 'Java Enterprise - Front End', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(352, 1, 'Java Enterprise - Front End', 'Java Technology Platform', 'AngularJS', 'Java Enterprise - Front End', '2.5-4 Yrs', 2, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(353, 1, 'Data Integration', 'Data & Analytics', 'Informatica-BI Tools', 'Data Integration', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(354, 1, 'JDE-SCM', 'Oracle', 'JDE-E1-Manufacturing', 'JDE-SCM', '6-8 Yrs', 8, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(355, 1, 'Technology-Database', 'Oracle', 'Oracle-Applications DBA', 'Technology-Database', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(356, 1, 'SAP-Human Capital Management', 'SAP', 'SAP-SuccessFactors Integrations - Cloud', 'SAP-Human Capital Management', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(357, 1, 'SAP-Entrprs Performance (EPM)', 'SAP', 'SAP-Business Planning & Consolidation (BPC)', 'SAP-Entrprs Performance (EPM)', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(358, 1, 'SAP-Business Intelligence', 'SAP', 'SAP HANA Studios', 'SAP-Business Intelligence', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(359, 1, 'MSFT Collaborative Tech', 'Microsoft Platform', 'Microsoft-SharePoint Server 2013', 'MSFT Collaborative Tech', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(360, 1, 'Microsoft Web Development', 'Microsoft Platform', 'ASP.NET MVC', 'Microsoft Web Development', '6-8 Yrs', 8, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(361, 1, 'SAP-Financial Accntng & Oprtns', 'SAP', 'SAP-FSCM Treasury and Risk Management', 'SAP-Financial Accntng & Oprtns', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(362, 1, 'Hyperion-F&EP', 'Oracle', 'Oracle-Hyperion-Planning', 'Hyperion-F&EP', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(363, 1, 'SAP-SCM-Fulfillment', 'SAP', 'SAP-LE-WM Warehouse Management', 'SAP-SCM-Fulfillment', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(364, 1, 'Fusion-Middleware', 'Oracle', 'Oracle-SOA-BPEL', 'Fusion-Middleware', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(365, 1, 'SAP/Ariba Sourcing & Procurmnt', 'SAP', 'SAP-Ariba', 'SAP/Ariba Sourcing & Procurmnt', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(366, 1, 'JDE-Technology', 'Oracle', 'JDE-E1-Configurable Network Computing (CNC)', 'JDE-Technology', '8-10 Yrs', 8, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(367, 1, 'SAP-Retail', 'SAP', 'SAP-Retail-Point of Sale (POS)', 'SAP-Retail', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(368, 1, 'Java Enterprise - Front End', 'Java Technology Platform', 'Apache-Struts', 'Java Enterprise - Front End', '2.5-4 Yrs', 5, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(369, 1, 'DevOps', 'DevOps', 'DevOps', 'DevOps', '4-6 Yrs', 5, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(370, 1, 'ABS-Accelerated R&D Svcs', 'PRD-Life Sciences', 'TrackWise', 'ABS-Accelerated R&D Svcs', '6-8 Yrs', 8, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(371, 1, 'SaaS Implementation', 'Software as a Service', 'Veeva', 'SaaS Implementation', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(372, 1, 'Open Source Intgration & Proc', 'Open Source', 'Mulesoft Cloudhub', 'Open Source Intgration & Proc', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(373, 1, 'Business Intelligence', 'Data & Analytics', 'SAP Business Objects-BI Tools', 'Business Intelligence', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:34', '2016-11-15 19:30:34'),
(374, 1, 'Resources Industry Apps', 'Industry Applications-RES', 'Rockwell', 'Resources Industry Apps', '6-8 Yrs', 8, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(375, 1, 'Microsoft Dynamics CRM', 'Microsoft Business Apps', 'Microsoft-Dynamics CRM Technical', 'Microsoft Dynamics CRM', '6-8 Yrs', 2, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(376, 1, 'Application Design and Arch', 'Java Technology Platform', 'J2EE Architecture', 'Application Design and Arch', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(377, 1, 'Java Enterprise - Back End', 'Java Technology Platform', 'Java Persistence API (JPA)', 'Java Enterprise - Back End', '2.5-4 Yrs', 3, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(378, 1, 'SAP-Financial Accntng & Oprtns', 'SAP', 'SAP-FI-General Ledger (GL)', 'SAP-Financial Accntng & Oprtns', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(379, 1, 'Data Integration', 'Data & Analytics', 'Informatica-BI Tools', 'Data Integration', '2.5-4 Yrs', 5, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(380, 1, 'SAP-Arch & Infra & Cloud', 'SAP', 'SAP-BASIS Administration', 'SAP-Arch & Infra & Cloud', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(381, 1, 'Cyber Security Strat & Transf', 'Security & Risk', 'Tableau Desktop - Cyber Security', 'Cyber Security Strat & Transf', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(382, 1, 'MSFT Business Intelligence', 'Microsoft Platform', 'Microsoft-SQL Server-Reporting Services', 'MSFT Business Intelligence', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(383, 1, 'Oracle-BEA-Weblogic-Application Server Administration', 'DevOps', 'Oracle-BEA-Weblogic-Application Server Administration', 'Oracle-BEA-Weblogic-Application Server Administration', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(384, 1, 'Non Func. and Perf. Testing', 'Testing', 'HP Software (Mercury) - LoadRunner', 'Non Func. and Perf. Testing', '6-8 Yrs', 3, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(385, 1, 'SAP-Financial Accntng & Oprtns', 'SAP', 'SAP-FI-Accounts Payable (AP)', 'SAP-Financial Accntng & Oprtns', '6-8 Yrs', 7, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(386, 1, 'H&PS-Industry Applications', 'Industry Applications-HPS', 'Empowered Benefits', 'H&PS-Industry Applications', '8-10 Yrs', 8, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(387, 1, 'Fusion-Middleware', 'Oracle', 'Oracle-SOA-Admin', 'Fusion-Middleware', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(388, 1, 'Edge Apps-Val Chain Exec (VCE)', 'Oracle', 'Oracle-SCM-Transportation Management', 'Edge Apps-Val Chain Exec (VCE)', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(389, 1, 'Informatica - MDM', 'Informatica', 'Informatica - MDM', 'Informatica - MDM', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(390, 1, 'SAP-ERP-Procurement', 'SAP', 'SAP-Purchasing (MM-PO)', 'SAP-ERP-Procurement', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(391, 1, 'Business Intelligence', 'Data & Analytics', 'SAP Business Objects-BI Tools', 'Business Intelligence', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(392, 1, 'SAP-Financial Accntng & Oprtns', 'SAP', 'SAP-FI-Accounts Payable (AP)', 'SAP-Financial Accntng & Oprtns', '2.5-4 Yrs', 7, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(393, 1, 'SAP-Retail', 'SAP', 'SAP-Retail', 'SAP-Retail', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:35', '2016-11-15 19:30:35'),
(394, 1, 'EBS-F&EP', 'Oracle', 'Oracle-Financials', 'EBS-F&EP', '6-8 Yrs', 2, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(395, 1, 'ABS-Accelerated R&D Svcs', 'PRD-Life Sciences', 'TrackWise', 'ABS-Accelerated R&D Svcs', '8-10 Yrs', 8, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(396, 1, 'LS-Supply Chain Svcs', 'PRD-Life Sciences', 'Pharma Validation Testing', 'LS-Supply Chain Svcs', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(397, 1, 'Functional Testing', 'Testing', 'DW-BI-Database-Testing-Informatica', 'Functional Testing', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(398, 1, 'DevOps', 'DevOps', 'DevOps', 'DevOps', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(399, 1, 'LAMP', 'Open Source', 'Python', 'LAMP', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(400, 1, 'SAP-Financial Accntng & Oprtns', 'SAP', 'SAP-Financial Accntng & Oprtns', 'SAP-Financial Accntng & Oprtns', '8-10 Yrs', 8, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(401, 1, 'SAP-Data & Development', 'SAP', 'SAP-ABAP Development', 'SAP-Data & Development', '8-10 Yrs', 8, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(402, 1, 'SAP-Entrprs Performance (EPM)', 'SAP', 'SAP-CO-Profitability Analyis (CO-PA)', 'SAP-Entrprs Performance (EPM)', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(403, 1, 'Human Capital Management Apps', 'Function Applications', 'Plateau', 'Human Capital Management Apps', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(404, 1, 'Tech Arch', 'Oracle', 'Oracle-Apps Development', 'Tech Arch', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(405, 1, 'Database Technologies', 'Data Center', 'Database Administration', 'Database Technologies', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(406, 1, 'Technology-Database', 'Oracle', 'Oracle-Core DBA', 'Technology-Database', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(407, 1, 'Technology-Database', 'Oracle', 'Oracle-Applications DBA', 'Technology-Database', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(408, 1, 'SAP-Business Intelligence', 'SAP', 'SAP HANA Studios', 'SAP-Business Intelligence', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(409, 1, 'SAP-Business Intelligence', 'SAP', 'SAP-BW on HANA', 'SAP-Business Intelligence', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(410, 1, 'SAP-Business Intelligence', 'SAP', 'SAP-BW on HANA', 'SAP-Business Intelligence', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(411, 1, 'Tech Arch', 'Oracle', 'Oracle Application-PLSQL', 'Tech Arch', '2.5-4 Yrs', 2, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(412, 1, 'Tech Arch', 'Oracle', 'Oracle-Apps Development', 'Tech Arch', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(413, 1, 'Tech Arch', 'Oracle', 'Oracle-Apps Development', 'Tech Arch', '6-8 Yrs', 2, 1, 0, '2016-11-15 19:30:36', '2016-11-15 19:30:36'),
(414, 1, 'SAP-CRM-Sales & Service', 'SAP', 'SAP-CRM-Sales & Service', 'SAP-CRM-Sales & Service', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(415, 1, 'JDE-SCM', 'Oracle', 'JDE-E1-Manufacturing', 'JDE-SCM', '6-8 Yrs', 6, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(416, 1, 'Performance Engineering', 'Performance Engineering', 'Performance Engineering', 'Performance Engineering', '2.5-4 Yrs', 5, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(417, 1, 'SAP-Financial Accntng & Oprtns', 'SAP', 'SAP-FSCM Treasury and Risk Management', 'SAP-Financial Accntng & Oprtns', '2.5-4 Yrs', 3, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(418, 1, 'SAP-Manufacturing', 'SAP', 'SAP-Manufacturing-Production Planning (PP)', 'SAP-Manufacturing', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(419, 1, 'SAP-Manufacturing', 'SAP', 'SAP-Plant Maintenance (PM)', 'SAP-Manufacturing', '2.5-4 Yrs', 8, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(420, 1, 'SAP-Manufacturing', 'SAP', 'SAP-Manufacturing-Production Planning (PP)', 'SAP-Manufacturing', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(421, 1, 'SAP-Data & Development', 'SAP', 'SAP-ABAP Web Dynpro Development', 'SAP-Data & Development', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(422, 1, 'SAP-Manufacturing', 'SAP', 'SAP-Plant Maintenance (PM)', 'SAP-Manufacturing', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(423, 1, 'SAP-Data & Development', 'SAP', 'SAP-PO/PI & APIs Development', 'SAP-Data & Development', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(424, 1, 'SAP-Financial Accntng & Oprtns', 'SAP', 'SAP-Financial Accntng & Oprtns', 'SAP-Financial Accntng & Oprtns', '4-6 Yrs', 7, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(425, 1, 'SAP-Financial Accntng & Oprtns', 'SAP', 'SAP-Financial Accntng & Oprtns', 'SAP-Financial Accntng & Oprtns', '2.5-4 Yrs', 7, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(426, 1, 'SAP-Entrprs Performance (EPM)', 'SAP', 'SAP-Management Accounting (CO)', 'SAP-Entrprs Performance (EPM)', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(427, 1, 'SAP-Data Management', 'SAP', 'SAP-Master Data Governance', 'SAP-Data Management', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(428, 1, 'Java Enterprise - Front End', 'Java Technology Platform', 'JavaServer Pages (JSP)', 'Java Enterprise - Front End', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(429, 1, 'SAP-SCM-APO Planning', 'SAP', 'SAP-SCM-Supply Network Collaboration-Supplier', 'SAP-SCM-APO Planning', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(430, 1, 'MSFT Collaborative Tech', 'Microsoft Platform', 'Microsoft-Office 365 - SharePoint Online', 'MSFT Collaborative Tech', '2.5-4 Yrs', 6, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(431, 1, 'Test Strategy and Management', 'Testing', 'Testing Assessments', 'Test Strategy and Management', '2.5-4 Yrs', 3, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(432, 1, 'Test Automation', 'Testing', 'Selenium', 'Test Automation', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:37', '2016-11-15 19:30:37'),
(433, 1, 'SaaS Implementation', 'Software as a Service', 'Veeva', 'SaaS Implementation', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:38', '2016-11-15 19:30:38'),
(434, 1, 'DataStage ETL tool', 'Other Vendor Products', 'DataStage ETL tool', 'DataStage ETL tool', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:38', '2016-11-15 19:30:38'),
(435, 1, 'Database Platform Management', 'Compute Services', 'Oracle Database Administration', 'Database Platform Management', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:38', '2016-11-15 19:30:38'),
(436, 1, 'Cloud-Application and Platform', 'Cloud Computing', 'Google Apps (Mail & Collaboration/Docs)', 'Cloud-Application and Platform', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:38', '2016-11-15 19:30:38'),
(437, 1, 'Tech Arch', 'Oracle', 'Oracle Application-PLSQL', 'Tech Arch', '4-6 Yrs', 6, 1, 0, '2016-11-15 19:30:38', '2016-11-15 19:30:38'),
(438, 1, 'Finance Technology Strategy', 'Digital Finance', 'Master Data Management', 'Finance Technology Strategy', '4-6 Yrs', 5, 1, 0, '2016-11-15 19:30:38', '2016-11-15 19:30:38'),
(439, 1, 'MSFT Collaborative Tech', 'Microsoft Platform', 'Microsoft-Office 365 - SharePoint Online', 'MSFT Collaborative Tech', '2.5-4 Yrs', 2, 1, 0, '2016-11-15 19:30:38', '2016-11-15 19:30:38'),
(440, 1, 'Business Intelligence', 'Data & Analytics', 'SAP Business Objects-BI Tools', 'Business Intelligence', '8-10 Yrs', 1, 1, 0, '2016-11-15 19:30:38', '2016-11-15 19:30:38'),
(441, 1, 'Cloud-Application and Platform', 'Cloud Computing', 'Google Apps (Mail & Collaboration/Docs)', 'Cloud-Application and Platform', '4-6 Yrs', 1, 1, 0, '2016-11-15 19:30:38', '2016-11-15 19:30:38'),
(442, 1, 'Fusion-Middleware', 'Oracle', 'Oracle-SOA-OSB', 'Fusion-Middleware', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:38', '2016-11-15 19:30:38'),
(443, 1, 'Java Enterprise - Front End', 'Java Technology Platform', 'Jenkins', 'Java Enterprise - Front End', '2.5-4 Yrs', 1, 1, 0, '2016-11-15 19:30:38', '2016-11-15 19:30:38'),
(444, 1, 'SAP-SCM-APO Planning', 'SAP', 'SAP-SCM-APO-Advanced Planning & Optimization', 'SAP-SCM-APO Planning', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:38', '2016-11-15 19:30:38'),
(445, 1, 'Test Strategy and Management', 'Testing', 'Performance Testing Strategy', 'Test Strategy and Management', '4-6 Yrs', 3, 1, 0, '2016-11-15 19:30:38', '2016-11-15 19:30:38'),
(446, 1, 'MSFT Collaborative Tech', 'Microsoft Platform', 'Microsoft-SharePoint Server 2013', 'MSFT Collaborative Tech', '2.5-4 Yrs', 6, 1, 0, '2016-11-15 19:30:38', '2016-11-15 19:30:38'),
(447, 1, 'SAP-Data & Development', 'SAP', 'SAP-ABAP Web Dynpro Development', 'SAP-Data & Development', '4-6 Yrs', 2, 1, 0, '2016-11-15 19:30:39', '2016-11-15 19:30:39'),
(448, 1, 'Java Enterprise - Front End', 'Java Technology Platform', 'AngularJS', 'Java Enterprise - Front End', '2.5-4 Yrs', 6, 1, 0, '2016-11-15 19:30:39', '2016-11-15 19:30:39'),
(449, 1, 'SAP-Business Intelligence', 'SAP', 'SAP-Business Intelligence', 'SAP-Business Intelligence', '6-8 Yrs', 1, 1, 0, '2016-11-15 19:30:39', '2016-11-15 19:30:39'),
(450, 1, 'SAP-SCM-APO Planning', 'SAP', 'SAP-SCM-APO-Advanced Planning & Optimization', 'SAP-SCM-APO Planning', '4-6 Yrs', 8, 1, 0, '2016-11-15 19:30:39', '2016-11-15 19:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `job_skill`
--

CREATE TABLE `job_skill` (
  `job_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_skill`
--

INSERT INTO `job_skill` (`job_id`, `skill_id`) VALUES
(452, 1),
(452, 2),
(452, 4);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `country` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `location`, `country`, `state`) VALUES
(1, 'Bangalore', 'India', 'Karnataka'),
(2, 'Hyderabad', 'India', 'Telangana'),
(3, 'Pune', 'India', 'Maharashtra'),
(4, 'New Delhi', 'India', 'New Delhi'),
(5, 'Gurgaon', 'India', 'Haryana'),
(6, 'Mumbai', 'India', 'Maharashtra'),
(7, 'Kolkata', 'India', 'West Bengal'),
(8, 'Chennai', 'India', 'Tamil Nadu'),
(9, 'Noida', 'India', 'Uttar Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1479189734),
('m140608_173539_create_user_table', 1479189741),
('m140611_133903_init_rbac', 1479189743),
('m140808_073114_create_auth_item_group_table', 1479189743),
('m140809_072112_insert_superadmin_to_user', 1479189744),
('m140809_073114_insert_common_permisison_to_auth_item', 1479189745),
('m141023_141535_create_user_visit_log', 1479189745),
('m141116_115804_add_bind_to_ip_and_registration_ip_to_user', 1479189746),
('m141121_194858_split_browser_and_os_column', 1479189747),
('m141201_220516_add_email_and_email_confirmed_to_user', 1479189748),
('m141207_001649_create_basic_user_permissions', 1479189748);

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `skill` varchar(55) NOT NULL,
  `frequency` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `skill`, `frequency`) VALUES
(2, 'javascript', 5),
(4, 'HTML', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `superadmin` smallint(6) DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `registration_ip` varchar(15) DEFAULT NULL,
  `bind_to_ip` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `email_confirmed` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `confirmation_token`, `status`, `superadmin`, `created_at`, `updated_at`, `registration_ip`, `bind_to_ip`, `email`, `email_confirmed`) VALUES
(1, 'superadmin', 'bArsFGCzWSTE8yIwHqchrxxViQaLZGKb', '$2y$13$Iq8rTjWSKhuNM2uiTwvDM.y0ipputmQLDm93rdx4it2gEijMJy8e2', NULL, 1, 1, 1479189744, 1479189744, NULL, NULL, NULL, 0),
(6, 'kp.riyas4u@gmail.com', '3OrzClPUYdU0UgwqGh20ohcJsBz-JytE', '$2y$13$Iq8rTjWSKhuNM2uiTwvDM.y0ipputmQLDm93rdx4it2gEijMJy8e2', NULL, 1, 0, 1488450769, 1488450769, '::1', '', 'kp.riyas4u@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(15) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `location_preference_1` int(11) NOT NULL,
  `location_preference_2` int(11) NOT NULL,
  `year_of_experience` int(11) NOT NULL,
  `skill_set` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `user_id`, `full_name`, `email`, `mobile`, `resume`, `location_preference_1`, `location_preference_2`, `year_of_experience`, `skill_set`, `created_at`, `updated_at`) VALUES
(3, 6, 'Muhamed Riyas', NULL, '9747631743', 'http://localhost/uploads/1098378090MyResume (2).docx', 1, 3, 5, 'php,javascript', '2017-03-02 10:32:49', '2017-03-02 10:32:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_job`
--

CREATE TABLE `user_job` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_job`
--

INSERT INTO `user_job` (`id`, `user_id`, `job_id`, `created_at`, `updated_at`) VALUES
(1, 6, 448, NULL, '2017-03-02 10:32:50'),
(2, 6, 452, NULL, '2017-03-02 18:28:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_skill`
--

CREATE TABLE `user_skill` (
  `user_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_skill`
--

INSERT INTO `user_skill` (`user_id`, `skill_id`) VALUES
(6, 1),
(6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_visit_log`
--

CREATE TABLE `user_visit_log` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `language` char(2) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visit_time` int(11) NOT NULL,
  `browser` varchar(30) DEFAULT NULL,
  `os` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_visit_log`
--

INSERT INTO `user_visit_log` (`id`, `token`, `ip`, `language`, `user_agent`, `user_id`, `visit_time`, `browser`, `os`) VALUES
(1, '582aa6920e404', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/50.0.2661.102 Chrome/50.0.2661.102 Safari/537.36', 1, 1479190162, 'Chrome', 'Linux'),
(2, '582b506c19399', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/50.0.2661.102 Chrome/50.0.2661.102 Safari/537.36', 1, 1479233644, 'Chrome', 'Linux'),
(3, '58b7f4310ff13', '::1', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/55.0.2883.87 Chrome/55.0.2883.87 Safari/537.36', NULL, 1488450609, 'Chrome', 'Linux'),
(4, '58b7f4d247d60', '::1', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/55.0.2883.87 Chrome/55.0.2883.87 Safari/537.36', 6, 1488450770, 'Chrome', 'Linux'),
(5, '58b7f7ebb2d42', '::1', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/55.0.2883.87 Chrome/55.0.2883.87 Safari/537.36', 1, 1488451563, 'Chrome', 'Linux'),
(6, '58b7f8b347ada', '::1', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/55.0.2883.87 Chrome/55.0.2883.87 Safari/537.36', 1, 1488451763, 'Chrome', 'Linux'),
(7, '58b863ff94c2c', '::1', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/56.0.2924.76 Chrome/56.0.2924.76 Safari/537.36', 6, 1488479231, 'Chrome', 'Linux');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`),
  ADD KEY `fk_auth_item_group_code` (`group_code`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_item_group`
--
ALTER TABLE `auth_item_group`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_job`
--
ALTER TABLE `user_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_visit_log`
--
ALTER TABLE `user_visit_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_job`
--
ALTER TABLE `user_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_visit_log`
--
ALTER TABLE `user_visit_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_assignment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_auth_item_group_code` FOREIGN KEY (`group_code`) REFERENCES `auth_item_group` (`code`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_visit_log`
--
ALTER TABLE `user_visit_log`
  ADD CONSTRAINT `user_visit_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
