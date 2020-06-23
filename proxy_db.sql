-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 23, 2020 at 11:05 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `proxy_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `proxy_list`
--

CREATE TABLE `proxy_list` (
  `id` int(100) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  `updated_at` varchar(50) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `port` int(10) NOT NULL,
  `country` varchar(50) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `load_time` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `provider` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proxy_list`
--

INSERT INTO `proxy_list` (`id`, `created_at`, `updated_at`, `ip`, `port`, `country`, `country_code`, `load_time`, `type`, `provider`) VALUES
(1, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '1.1.1.151', 80, 'United States', 'us', '0.12', '0', 'proxy11'),
(2, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '1.0.0.61', 80, 'United States', 'us', '0.08', '0', 'proxy11'),
(3, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '1.0.0.92', 80, 'United States', 'us', '0.15', '0', 'proxy11'),
(4, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '104.28.26.229', 80, 'United States', 'us', '0.07', '0', 'proxy11'),
(5, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '104.28.24.56', 80, 'United States', 'us', '0.08', '0', 'proxy11'),
(6, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '1.0.0.138', 80, 'United States', 'us', '0.03', '0', 'proxy11'),
(7, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '159.8.114.37', 8123, 'France', 'fr', '0.11', '1', 'proxy11'),
(8, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '1.1.1.74', 80, 'United States', 'us', '0.04', '0', 'proxy11'),
(9, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '1.0.0.67', 80, 'United States', 'us', '0.1', '0', 'proxy11'),
(10, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '1.0.0.116', 80, 'United States', 'us', '0.07', '0', 'proxy11'),
(11, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '104.28.5.128', 80, 'United States', 'us', '0.09', '0', 'proxy11'),
(12, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '1.1.1.167', 80, 'United States', 'us', '0.04', '0', 'proxy11'),
(13, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '80.241.251.54', 8080, 'Georgia', 'ge', '0.36', '0', 'proxy11'),
(14, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '194.79.56.6', 80, 'Italy', 'it', '0.1', '1', 'proxy11'),
(15, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '104.28.4.218', 80, 'United States', 'us', '0.06', '0', 'proxy11'),
(16, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '104.28.10.116', 80, 'United States', 'us', '0.06', '0', 'proxy11'),
(17, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '165.73.81.229', 80, 'South Africa', 'za', '0.8', '1', 'proxy11'),
(18, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '162.159.242.14', 80, 'United States', 'us', '0.03', '0', 'proxy11'),
(19, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '81.200.63.108', 60579, 'Czech Republic', 'cz', '1.93', '1', 'proxy11'),
(20, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '88.198.24.108', 3128, 'Germany', 'de', '0.07', '1', 'proxy11'),
(21, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '91.206.110.190', 8080, 'Ukraine', 'ua', '1.37', '0', 'proxy11'),
(22, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '1.1.1.217', 80, 'United States', 'us', '0.07', '0', 'proxy11'),
(23, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '104.28.6.175', 80, 'United States', 'us', '0.06', '0', 'proxy11'),
(24, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '1.1.1.243', 80, 'United States', 'us', '0.05', '0', 'proxy11'),
(25, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '1.0.0.253', 80, 'United States', 'us', '0.06', '0', 'proxy11'),
(26, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '104.28.28.56', 80, 'United States', 'us', '0.05', '0', 'proxy11'),
(27, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '1.0.0.47', 80, 'United States', 'us', '0.1', '0', 'proxy11'),
(28, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '104.28.10.51', 80, 'United States', 'us', '0.09', '0', 'proxy11'),
(29, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '104.28.30.178', 80, 'United States', 'us', '0.05', '0', 'proxy11'),
(30, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '104.28.24.29', 80, 'United States', 'us', '0.04', '0', 'proxy11'),
(31, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '190.93.247.2', 80, 'United States', 'us', '0.04', '0', 'proxy11'),
(32, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '104.28.7.75', 80, 'United States', 'us', '0.06', '0', 'proxy11'),
(33, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '210.103.3.169', 8080, 'Korea, Republic of', 'kr', '4.39', '0', 'proxy11'),
(34, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '197.231.196.44', 57280, 'South Africa', 'za', '1.57', '1', 'proxy11'),
(35, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '51.158.119.88', 8811, 'France', 'fr', '0.68', '1', 'proxy11'),
(36, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '95.215.48.93', 8080, 'Ukraine', 'ua', '4.42', '0', 'proxy11'),
(37, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '194.213.43.166', 60530, 'Czech Republic', 'cz', '1.14', '1', 'proxy11'),
(38, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '105.29.64.223', 80, 'South Africa', 'za', '0.96', '1', 'proxy11'),
(39, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '103.78.23.26', 8080, 'India', 'in', '3.7', '0', 'proxy11'),
(40, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '200.89.178.156', 8080, 'Argentina', 'ar', '1.26', '1', 'proxy11'),
(41, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '104.28.4.192', 80, 'United States', 'us', '0.13', '0', 'proxy11'),
(42, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '202.91.41.212', 80, 'Bangladesh', 'bd', '1.17', '0', 'proxy11'),
(43, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '195.138.82.198', 40301, 'Ukraine', 'ua', '6.04', '1', 'proxy11'),
(44, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '203.142.69.67', 8080, 'Indonesia', 'id', '2.23', '0', 'proxy11'),
(45, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '1.0.0.165', 80, 'United States', 'us', '0.03', '0', 'proxy11'),
(46, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '162.159.242.68', 80, 'United States', 'us', '0.03', '0', 'proxy11'),
(47, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '173.82.59.45', 5836, 'United States', 'us', '1.02', '0', 'proxy11'),
(48, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '113.196.140.162', 8888, 'Taiwan, Province of China', 'tw', '2.16', '0', 'proxy11'),
(49, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '103.89.233.193', 82, 'India', 'in', '3.66', '0', 'proxy11'),
(50, 'Tue, 23 Jun 2020 22:02:49 GMT', 'Tue, 23 Jun 2020 22:02:49 GMT', '124.158.183.196', 8080, 'Indonesia', 'id', '1.77', '1', 'proxy11'),
(51, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '104.28.15.115', 80, 'United States', 'us', '0.09', '0', 'proxy11'),
(52, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '162.159.242.126', 80, 'United States', 'us', '0.04', '0', 'proxy11'),
(53, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '104.28.4.192', 80, 'United States', 'us', '0.1', '0', 'proxy11'),
(54, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '104.28.10.88', 80, 'United States', 'us', '0.09', '0', 'proxy11'),
(55, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '104.27.142.28', 80, 'United States', 'us', '0.09', '0', 'proxy11'),
(56, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '104.28.2.51', 80, 'United States', 'us', '0.1', '0', 'proxy11'),
(57, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '1.0.0.116', 80, 'United States', 'us', '0.06', '0', 'proxy11'),
(58, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '1.0.0.89', 80, 'United States', 'us', '0.05', '0', 'proxy11'),
(59, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '1.1.1.74', 80, 'United States', 'us', '0.04', '0', 'proxy11'),
(60, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '104.28.10.116', 80, 'United States', 'us', '0.06', '0', 'proxy11'),
(61, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '1.1.1.122', 80, 'United States', 'us', '0.09', '0', 'proxy11'),
(62, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '1.1.1.167', 80, 'United States', 'us', '0.04', '0', 'proxy11'),
(63, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '1.1.1.215', 80, 'United States', 'us', '0.04', '0', 'proxy11'),
(64, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '216.155.152.229', 8080, 'United States', 'us', '0.41', '0', 'proxy11'),
(65, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '1.1.1.119', 80, 'United States', 'us', '0.03', '0', 'proxy11'),
(66, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '162.159.242.16', 80, 'United States', 'us', '0.04', '0', 'proxy11'),
(67, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '95.0.66.117', 8080, 'Turkey', 'tr', '1.73', '0', 'proxy11'),
(68, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '119.81.199.87', 8123, 'Singapore', 'sg', '1.71', '1', 'proxy11'),
(69, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '195.154.57.157', 5836, 'France', 'fr', '1.74', '0', 'proxy11'),
(70, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '195.154.251.194', 5836, 'France', 'fr', '1.38', '0', 'proxy11'),
(71, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '1.1.1.76', 80, 'United States', 'us', '0.04', '0', 'proxy11'),
(72, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '1.1.1.217', 80, 'United States', 'us', '0.03', '0', 'proxy11'),
(73, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '103.101.233.13', 8080, 'India', 'in', '2.11', '0', 'proxy11'),
(74, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '80.241.251.54', 8080, 'Georgia', 'ge', '0.36', '0', 'proxy11'),
(75, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '210.59.0.1', 8082, 'Taiwan, Province of China', 'tw', '2.99', '1', 'proxy11'),
(76, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '45.112.127.23', 8080, 'Indonesia', 'id', '3.2', '0', 'proxy11'),
(77, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '173.192.128.238', 8123, 'United States', 'us', '0.71', '1', 'proxy11'),
(78, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '190.242.98.61', 8083, 'Colombia', 'co', '2.61', '0', 'proxy11'),
(79, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '103.250.166.16', 48340, 'India', 'in', '2.91', '1', 'proxy11'),
(80, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '113.160.206.37', 55138, 'Viet Nam', 'vn', '3', '1', 'proxy11'),
(81, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '191.242.230.135', 8080, 'Brazil', 'br', '2.67', '0', 'proxy11'),
(82, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '93.117.226.42', 8080, 'Netherlands', 'nl', '3.12', '1', 'proxy11'),
(83, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '41.72.199.6', 8080, 'Kenya', 'ke', '1.42', '0', 'proxy11'),
(84, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '180.250.180.66', 8080, 'Indonesia', 'id', '2.97', '0', 'proxy11'),
(85, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '180.250.85.204', 8181, 'Indonesia', 'id', '3.13', '0', 'proxy11'),
(86, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '169.57.1.85', 80, 'Mexico', 'mx', '0.52', '1', 'proxy11'),
(87, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '1.0.0.38', 80, 'United States', 'us', '0.04', '0', 'proxy11'),
(88, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '103.216.147.37', 8080, 'India', 'in', '3.92', '0', 'proxy11'),
(89, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '117.218.237.249', 8080, 'India', 'in', '2.84', '0', 'proxy11'),
(90, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '114.7.165.186', 8080, 'Indonesia', 'id', '3.87', '0', 'proxy11'),
(91, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '1.0.0.253', 80, 'United States', 'us', '0.04', '0', 'proxy11'),
(92, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '104.28.26.229', 80, 'United States', 'us', '0.06', '0', 'proxy11'),
(93, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '201.55.160.133', 3128, 'Brazil', 'br', '4.16', '1', 'proxy11'),
(94, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '104.28.6.175', 80, 'United States', 'us', '0.06', '0', 'proxy11'),
(95, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '1.0.0.67', 80, 'United States', 'us', '0.08', '0', 'proxy11'),
(96, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '125.25.80.39', 42790, 'Thailand', 'th', '3.99', '1', 'proxy11'),
(97, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '109.170.96.26', 8080, 'Russian Federation', 'ru', '2.43', '0', 'proxy11'),
(98, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '104.28.7.209', 80, 'United States', 'us', '0.04', '0', 'proxy11'),
(99, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '78.47.150.43', 8123, 'Germany', 'de', '1.47', '0', 'proxy11'),
(100, 'Tue, 23 Jun 2020 23:02:45 GMT', 'Tue, 23 Jun 2020 23:02:45 GMT', '180.183.122.77', 8080, 'Thailand', 'th', '1.91', '0', 'proxy11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `proxy_list`
--
ALTER TABLE `proxy_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `proxy_list`
--
ALTER TABLE `proxy_list`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
