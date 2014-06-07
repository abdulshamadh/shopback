-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 06, 2014 at 08:38 PM
-- Server version: 5.5.29
-- PHP Version: 5.4.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopback`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(250) NOT NULL,
  `dob` date NOT NULL,
  `phone` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Admin ID',
  `firstname` varchar(30) NOT NULL COMMENT 'First Name',
  `middlename` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) NOT NULL COMMENT 'Last Name',
  `email` varchar(100) NOT NULL COMMENT 'Email',
  `dob` date DEFAULT NULL COMMENT 'Date of birth',
  `username` varchar(127) NOT NULL COMMENT 'Username',
  `password` varchar(127) NOT NULL COMMENT 'Password',
  `user_status` enum('active','inactive','deleted') NOT NULL DEFAULT 'active' COMMENT 'User status',
  `auth_key` varchar(32) NOT NULL COMMENT 'Auth key',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Time of creation',
  `modified_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'Time of modification',
  `rp_flag` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Reset password flag',
  `rp_token` text COMMENT 'Reset password token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset password token created date',
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `fk_admin_user_role_idx` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin User Master table' AUTO_INCREMENT=21 ;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`admin_id`, `firstname`, `middlename`, `lastname`, `email`, `dob`, `username`, `password`, `user_status`, `auth_key`, `role_id`, `created_at`, `modified_at`, `rp_flag`, `rp_token`, `rp_token_created_at`) VALUES
(1, 'Admin', NULL, 'Admin', 'abdulshamadhu@gmail.com', '1983-07-30', 'abdul', 'RGbMzFn6PQ2x0bYnFcrYrJIpuZDTrlZyYeMrLx2wMfQ=', 'active', '5afo1CBejEjmbmdmlE5iJiD4h01mDK5g', 1, '2014-06-07 05:06:44', '2014-06-06 17:09:37', 0, NULL, '2014-06-07 11:55:22'),
(10, 'satheesh perumal', NULL, '', 'satheesh@gmail.com', NULL, 'satheesh', '0g0As8Y0y+AYoDclu/EIya83Go282FpiLCVdnHmzrZ4=', 'active', '', 1, '2014-06-06 10:49:51', '2014-06-06 16:49:51', 0, NULL, NULL),
(11, 'Thiyagu', NULL, '', 'thiyagu@gmail.com', NULL, 'thiyagu', '0BjPtQCy9PY7w0cxF5jgFDUlz8FSwS+guGqqAEJLEzM=', 'deleted', '', 2, '2014-06-06 11:45:11', '2014-06-06 17:45:11', 0, NULL, NULL),
(20, 'Ram', NULL, '', 'ram@gmail.com', NULL, 'ram', '0BjPtQCy9PY7w0cxF5jgFDUlz8FSwS+guGqqAEJLEzM=', 'deleted', '', 1, '2014-06-06 11:44:35', '2014-06-06 17:44:51', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `name` varchar(32) NOT NULL COMMENT 'Role Name',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='User Role' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `name`) VALUES
(1, 'Admin'),
(2, 'Moderator');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
