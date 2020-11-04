-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2019 at 02:18 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db11`
--

-- --------------------------------------------------------

--
-- Table structure for table `AccessToken`
--

CREATE TABLE `AccessToken` (
  `id` varchar(255) NOT NULL,
  `ttl` int(11) DEFAULT NULL,
  `scopes` text,
  `created` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AccessToken`
--

INSERT INTO `AccessToken` (`id`, `ttl`, `scopes`, `created`, `userId`) VALUES
('3DpqdkBVdMVTGNQzN6A0WELRKYzJWLumH1SHOxNrKCfEtIZ30JRX6CK0kYabMolW', 1209600, NULL, '2019-04-26 13:22:29', 1),
('3lLiQOBp1nuDPGCRirHTefM1lcBHY7kds1T0Z4w0mX7zirGYpIFe2cYz2LtJMsbC', 1209600, NULL, '2019-02-07 14:11:12', 4),
('4aantwr9R5Q8qLrFIChc3JHSUwswkfDi8JK4inxqwV5nYOvl3bWNdYFTvXOapg7C', 1209600, NULL, '2019-04-27 14:18:11', 1),
('6fkj7KEka4Y06DgjYcN6nzfxsEnaZqDHrY9E55jGtseUOfLwjChrJJV6LnH0x1Ya', 1209600, NULL, '2019-02-08 10:37:50', 4),
('7fTNjhPBCXg0SNluNhxg9K5WA29qHUxJvEywpByllW0acGhd2oq3QMksiMgOwrJ3', 1209600, NULL, '2019-02-25 05:39:22', 4),
('8Qkqu5QoTh8gPUyaknfVjlCbI2yJSEKdqUNWmx8N3wWqWSjcWTcKQFysUAF8Jsa2', 1209600, NULL, '2019-02-22 08:23:54', 4),
('9o4KhyMwHh5XYsXokUS7QZ3kDlvpb2Eypl9yeQ5MB7H2IvJryvZXdj4OPI9uoFQk', 1209600, NULL, '2019-02-27 05:42:59', 4),
('9UWFKS7keanDscfrzjc2V4HfkcUfCrUBv95rlMU3NhIfgXXpYFdtMpGYDJUtJQ5n', 1209600, NULL, '2019-04-26 13:26:56', 1),
('aRFdx8kKHCe3hYwL1ipTOLpHaGBtcu7L9H0uUAWbLDBBJP8wxvXzlGIA5ovbpjlW', 1209600, NULL, '2019-02-18 06:16:44', 4),
('BEsDZnIPfZViYDywS0qiIXGuJNijo8Sic5c4WbFV1fnNwA3SvDodUaLjMSOHMapA', 1209600, NULL, '2019-03-07 12:59:32', 2),
('blb4nEABIjr5FBCYEmsk7mEGvk9FC9Hr2S5hS95VJ3AlViD2FFOuWcaBbQVQ6Pp0', 1209600, NULL, '2019-04-25 09:24:22', 1),
('boDopAk9hFbX238AtJuOgfNB6RdO75DKcy8SbrZqarED4R9tsr7YnHR38pRriBUS', 1209600, NULL, '2019-02-08 10:20:11', 4),
('bWsaVm3FLjsYZBEQBSs7JBtr40xlo8vweV8i2ZDS3cvJMMm8l1wvHoQq0ULZuWbK', 1209600, NULL, '2019-03-02 08:16:14', 4),
('cKB2OMSOMHy4KBVK9OMuntIt4LC3AQ7bOJfBo2zjzzmfzWHKqPRYBZF31afxPka4', 1209600, NULL, '2019-04-25 09:24:49', 1),
('cMrrJQxAHze77bB8SSIkzOUFIW0qyWJDwT3lZyWEdq2m0epLi9opTnFdSBtACjMt', 1209600, NULL, '2019-04-24 07:19:01', 1),
('Ctod6nEEtQeUW6NcREOzFc0I8OkTpzVOyN4QtXToyKrgs5KImiKV1T5ASd5FtN37', 1209600, NULL, '2019-04-27 11:48:36', 1),
('EzZKvBFhmc08eNAGW3mgKmp7jGBrL7QtcJYtYXk30J6EEpr9SD6qWJDnfYRjxD2G', 1209600, NULL, '2019-02-11 06:16:27', 4),
('fS2BIMa6gkTCohiHZoP7UQGErET3YhBJitpjmHOlXSAm89R0BV6EL8hpRqKKC4YT', 1209600, NULL, '2019-02-06 05:45:39', 4),
('h1wtC01HOjbPSGv3bZ3eyJsN4F3JQEEwhNzG16ixcLJFjZvtdrPneIi08qAUwF9P', 1209600, NULL, '2019-02-25 08:19:04', 4),
('hOZm1OqO2AIPtPXmQYEjJq1A1MLR7ZsBZEDPrs60xtDNpD9hOF2vCvcn73J2hSk7', 1209600, NULL, '2019-04-26 07:39:18', 1),
('IrtIRccu5BDx5CJOI90ZkX7UttBnWijWM6S3K5YDWe2w7Uqpf9iGGng2lCHQ1p2H', 1209600, NULL, '2019-04-26 06:56:30', 1),
('j1jYnOUr7157Zhg63ebpK0emQdBvAEzlKx025hIWxQ418CGcv8KRea489BDIb8Na', 1209600, NULL, '2019-02-27 05:44:37', 4),
('kX85dw1WGG9aN69GOlRdMZdvATXBZVwaQtGgC2NBPqddYRlhg1XULbXPaebwXZfV', 1209600, NULL, '2019-02-16 05:59:16', 4),
('liHy40KKx8RXqOMDiHNeVIXFGN9NRH02ZfKdG7zVaE2BzhhFFoD4YqEWVJC8JNq5', 1209600, NULL, '2019-02-06 05:58:06', 4),
('mRJmt7jUH9qzYHBinjqtCnG5AZQHCqOHq1DdWVA3iOJUcQNkr4b4sMn4oIDmRPQO', 1209600, NULL, '2019-04-22 10:41:01', 1),
('n4E8KqWKBzFJdj0EpWwP1oro9VWy734mdMiZCG3B4RpZ2FXZwCWzeGjmES76rr8o', 1209600, NULL, '2019-02-20 06:30:48', 4),
('OXDSfMbAcw5GrtUD3xIjes3LKkx4bCfMc78Oet2tU4KcxYn1EuCPGEXII0nTr6m4', 1209600, NULL, '2019-02-28 05:54:28', 4),
('ppbNfgAdlBX7ysoavjp9qOkhgpUHN0GOigvfHNhrVVavtVHBh4XaFXsAPwxC0Rek', 1209600, NULL, '2019-03-07 06:46:42', 3),
('Qh1RwufpMFyEaWKMl9xiAB7zoCWW8fcd10JmDQ0BsJMqSGqIkT2qyOY9zCZfUan6', 1209600, NULL, '2019-02-27 05:36:26', 4),
('RE7RWdD0Ww584gPK7NBaQROnwIf6X5ZTL9ZiW8zWwV9utB7DU8PtsNmInEge2DUf', 1209600, NULL, '2019-02-14 10:52:44', 4),
('RsJfw9hpzMaSDLKuxXpxc3KT5FpbdhBOFmzhBwB2Gs77YURIlsDKDIgytPLY6az2', 1209600, NULL, '2019-02-27 05:32:49', 4),
('ui7q30FgQlpSaPhN6bDsPiHvDSCLfQrHFvyGZts3FB3QDH8pwt5ZtrL2styi84E0', 1209600, NULL, '2019-02-16 05:54:41', 4),
('UnvqOja837TpI3EF3DqTAll9ivXMDsQwhJ8QJrGjw3pfTYvspVwf0B53QwWoBzHN', 1209600, NULL, '2019-04-22 09:24:44', 1),
('vdEwO3jmpTX8wkCwLDBzGyK0IVx4KjQbBdAFIUuNZDyfbGBV9Km2kvm6XBhy4YHE', 1209600, NULL, '2019-03-02 05:49:22', 4),
('Z46CuaxBJjMTQll9MClyk7tRTPjncmgN19aCv200nifbmXbExpqvlCIWp5ToqcvU', 1209600, NULL, '2019-02-26 08:09:58', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ACL`
--

CREATE TABLE `ACL` (
  `id` int(11) NOT NULL,
  `model` varchar(512) DEFAULT NULL,
  `property` varchar(512) DEFAULT NULL,
  `accessType` varchar(512) DEFAULT NULL,
  `permission` varchar(512) DEFAULT NULL,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Billbook`
--

CREATE TABLE `Billbook` (
  `id` varchar(36) NOT NULL,
  `title` varchar(50) NOT NULL,
  `prefix` varchar(5) NOT NULL,
  `series` double NOT NULL,
  `isEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Billbook`
--

INSERT INTO `Billbook` (`id`, `title`, `prefix`, `series`, `isEnabled`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('00344187-bbd8-4a06-a235-dbe170be28d', 'Cash Book', 'MOB', 10, 1, '2019-04-26 13:00:54', '2019-04-26 13:00:54', 1, 1),
('5ea27c4c-7922-4fe0-a38f-208cad71343', 'Credit Book', 'CDT', 100, 1, '2019-04-26 13:06:37', '2019-04-26 13:06:37', 1, 1),
('89cc3c3f-fce0-4311-8107-751fce6a2a8', 'AABBCC', 'ab', 0, 0, '2019-04-26 13:06:50', '2019-04-01 07:47:14', 1, 1),
('957566bc-fdc3-4a1d-8d98-4b58a1ac570', 'io', 'o', 0, 0, '2019-04-01 07:45:19', '2019-04-01 07:45:19', 1, 1),
('b1cc0db8-58fd-4caa-ba4a-0740d18d41d', 'oi', 'o', 10, 0, '2019-04-26 13:06:50', '2019-04-01 07:35:14', 1, 1),
('c01d0aba-08c4-4427-a36a-d6e1299bf78', 'm', 'm', 0, 0, '2019-04-01 07:48:36', '2019-04-01 07:48:36', 1, 1),
('c3496094-5088-4a29-8c27-8b22730b8a6', 'As', 'kk', 10, 0, '2019-04-26 13:06:50', '2019-03-12 05:39:57', 1, 1),
('e2845053-7f0e-43bc-b515-e24d9184c1e', 'string', 'strin', 1000, 0, '2019-04-26 13:06:50', '2019-02-27 07:05:32', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Configuration`
--

CREATE TABLE `Configuration` (
  `id` varchar(36) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `value` tinyint(1) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Configuration`
--

INSERT INTO `Configuration` (`id`, `alias`, `value`, `description`) VALUES
('0qqw735c-a1ba-4q86-a272-85fe34998i0', 'manage_billbook', 0, 'Bill Book'),
('1ppa135c-a1ba-4a86-b072-85fe00998b6', 'manage_sms', 1, 'Sms'),
('3aef735c-a1ba-4a86-b072-85fe34086b6', 'calculate_taxes_purchase', 0, 'Calculate Taxes of Purchase'),
('4aef735c-a1ba-4a86-b072-85fe34026b6', 'calculate_taxes_sales', 1, 'Calculate Taxes of Sales'),
('5aef735c-a1ba-4a86-b072-28fe34026b6', 'manage_transport', 1, 'Transport');

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `id` varchar(36) NOT NULL,
  `name` varchar(150) NOT NULL,
  `customerTypeId` varchar(36) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `gstin` varchar(60) DEFAULT NULL,
  `street` longtext,
  `area` varchar(150) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `stateCode` int(11) DEFAULT NULL,
  `balance` double NOT NULL DEFAULT '0',
  `closingbal` double NOT NULL DEFAULT '0',
  `totalAmount` double NOT NULL DEFAULT '0',
  `received` double NOT NULL DEFAULT '0',
  `noofdays` int(11) NOT NULL DEFAULT '-1',
  `isEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`id`, `name`, `customerTypeId`, `mobile`, `email`, `gstin`, `street`, `area`, `city`, `state`, `pincode`, `stateCode`, `balance`, `closingbal`, `totalAmount`, `received`, `noofdays`, `isEnabled`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('013d1ef3-6dd9-4f0b-977d-c5b36993ed7', ' nikhil dukhneja', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', 'as32', 'test', 'area', 'bangalore', '9785469852', 369456, 6, 0, 0, 481915, 0, -1, 1, '2019-04-26 12:01:34', '2019-04-26 12:01:34', 1, 1),
('06da5940-38ce-4483-87ba-fa3847a206a', ' jayes dukhneja', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', 'as323', 'test', 'area', 'bangalore', 'karnataka', 369456, 6, 0, 0, 100, 0, 2, 1, '2019-02-08 07:06:23', '2019-03-28 09:45:55', 1, 1),
('0768c21a-70b7-4441-b828-d58a45a43441', ' Nik keswani', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '7788778877', '', '', '', '', '', '', NULL, NULL, -10000, 91781, 1064050, 64050, -1, 1, '2019-04-26 11:59:08', '2019-04-26 11:59:07', 1, 1),
('10551bee-8263-4b8c-81b1-23780d9acd3', ' sachin sSsss', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', '32', 'test', 'area', 'bangalore', 'karnataka', 369456, 6, 0, 0, 792, 0, 3, 0, '2019-04-22 12:55:02', '2019-03-28 09:47:43', 1, 1),
('218cb984-00d8-4c3b-a88f-8639fff7051', ' M ssss', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', 369456, NULL, 0, 0, 0, 0, -1, 0, '2019-04-26 11:59:37', '2019-03-28 09:49:29', 1, 1),
('22659ceb-c08b-4a52-978f-29d2b7b7dc9', ' Jay surtyani', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'joy@gmail.com', '32', 'Hari Krupa ,Warasiya', 'area', 'bangalore', 'karnataka', 369456, 6, 0, 0, 250, 0, -1, 1, '2019-04-26 12:22:00', '2019-04-26 12:22:00', 1, 1),
('22c8244e-fb21-4e2b-913c-d5cc2770a08', 'prakash bajaj', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '7788995564', 'jay@gmail.com', 'aa72', 'Gayatri nagar,Warasiya', 'area', 'bangalore', 'karnataka', 390123, 24, 5000, 5200, 0, 0, -1, 1, '2019-04-26 13:26:57', '2019-04-26 13:26:56', 1, 1),
('275b42c8-c9cc-44f0-bca0-7c7d6b8c975', ' yash dukhneja', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', 369456, NULL, 0, 0, 0, 0, -1, 1, '2019-04-26 12:01:23', '2019-04-26 12:01:22', 1, 1),
('290f4de9-0187-454d-95fe-991dca8fbd9', ' ajay Kukreja', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '1234567890', 'jay@gmail.com', NULL, 'test', 'area', 'bangalore', 'karnataka', 390123, 72, 0, 0, 0, 0, -1, 1, '2019-04-26 11:58:44', '2019-04-26 11:58:43', 1, 1),
('3401ab62-452d-4e40-9c07-a156c6a73e9b', ' Mohit mulchandani', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', 369456, NULL, 0, 0, 0, 0, -1, 1, '2019-04-26 12:02:19', '2019-04-26 12:02:18', 1, 1),
('3d4bbaf9-7e9f-4df9-ac83-d2c4899020f9', ' avi motwani', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', 369456, NULL, 0, 0, 0, 0, -1, 1, '2019-04-26 12:02:35', '2019-04-26 12:02:35', 1, 1),
('46556209-ddde-49f4-b8cf-93c0291cbe3', 'Mr. bhavesh somani', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '2336221122', 'abc@gmailc.om', '12', 'Warasiya', 'knj', 'jkj', 'hh', 122, 2123, 0, 0, 220011, 0, 10, 1, '2019-04-26 12:02:00', '2019-04-26 12:01:59', 1, 1),
('47584369-a4c1-4f68-a927-aa95ed5a70d', 'vineet savlani', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '123456789', 'jay@gmail.com', 'aa72', 'test', 'area', 'bangalore', 'karnataka', 390123, 24, 0, 0, 0, 0, -1, 1, '2019-04-26 13:12:24', '2019-04-26 13:12:24', 1, 1),
('49398ab9-90e4-4236-a426-24557364d7f7', 'Google .com', NULL, '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', 369456, NULL, 0, 0, 0, 0, -1, 1, '2019-04-22 11:42:32', '2019-04-22 11:42:32', 1, 1),
('494cb0da-4df4-4b1f-894b-08849cb65b1', 'sunil bhoot', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', '32', 'test', 'area', 'bangalore', 'karnataka', 369456, 6, 0, 0, 1260, 0, -1, 1, '2019-02-11 02:22:54', '2019-02-11 02:22:54', 1, 1),
('4d039841-d7c0-482c-8156-19edb690468', 'aunsh', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '', 'jay@gmail.com', 'aa72', 'test', 'area', 'bangalore', 'karnataka', 390123, 24, 0, 0, 0, 0, -1, 0, '2019-04-26 12:31:02', '2019-04-22 10:23:42', 1, 1),
('51ee512a-1b72-4df4-bce1-88cb29444a5d', 'sachin ssss', NULL, '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', 369456, NULL, 0, 0, 0, 0, -1, 0, '2019-04-22 12:55:10', '2019-04-22 12:08:42', 1, 1),
('53254060-36a7-4d8e-ba62-c2723e56cfcb', 'M ssss', NULL, '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', 369456, NULL, 0, 0, 0, 0, -1, 1, '2019-04-22 12:05:36', '2019-04-22 12:05:36', 1, 1),
('533524e8-70bd-4e2d-b0f9-bae6f0d1838b', 'Mr. Sunil Keswani', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '1234567890', '', '', '', '', '', '', NULL, NULL, 0, 500, 2200, 1000, -1, 1, '2019-04-26 13:25:53', '2019-04-26 12:23:35', 1, 1),
('56227a98-68b4-44c7-890d-b6be86a4616', 'Bob Builder', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '123456789', 'bob@gmail.com', 'aa72', 'test', 'area', 'bangalore', 'karnataka', 390123, 24, 0, 0, 0, 0, -1, 0, '2019-03-15 09:52:32', '2019-03-15 09:52:32', 1, 1),
('5939f322-c246-45c1-9661-3797f910054', 'aunsh', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '123456789', 'jay@gmail.com', 'aa72', 'test', 'area', 'bangalore', 'karnataka', 390123, 24, 0, 0, 0, 0, -1, 0, '2019-04-22 12:54:33', '2019-04-22 12:09:10', 1, 1),
('5f02f8a6-39ed-4955-b8e8-fe637ace398c', 'Google .com1', NULL, '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', 369456, NULL, 0, 0, 0, 0, -1, 1, '2019-04-22 11:42:47', '2019-04-22 11:42:47', 1, 1),
('6159ddf0-ea12-439b-bfa4-e86b82dd5aaf', 'Google .com12', NULL, '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', 369456, NULL, 0, 0, 0, 0, -1, 1, '2019-04-22 12:04:49', '2019-04-22 12:04:49', 1, 1),
('65e3b132-ebbf-436d-8163-593c8bd9e66', 'Mr. Rishi Hirani', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', 369456, NULL, 0, 5600, 24283, 24283, -1, 1, '2019-04-26 13:01:33', '2019-03-14 11:03:30', 1, 1),
('6a863127-b1d6-4ee6-8a5f-90aed66cc16', 'sachin', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', '32', 'test', 'area', 'bangalore', 'karnataka', 369456, 6, 3000, 2874, 2252, 326, -1, 0, '2019-04-22 12:55:10', '2019-02-28 05:57:55', 1, 1),
('6facbc1e-1640-49a7-91f2-b614278288c8', 'sachin ssss1', NULL, '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', 369456, NULL, 0, 0, 0, 0, -1, 0, '2019-04-22 12:55:10', '2019-04-22 11:43:23', 1, 1),
('736ad816-2459-11e9-a14f-588a5a24e72', ' bhaveshpaglkt aa', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '1234567890', NULL, '123', 'abc', 'ccd', 'bvcf', '1234567890', 36005, 2365, 0, 0, 0, 0, -1, 1, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('74320317-a0d9-4509-a635-be139121965', ' ja aa', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '1234567891', '', '', '', '', '', '', NULL, NULL, 0, 0, 431, 200, -1, 1, '2019-03-08 01:42:29', '2019-03-08 01:42:29', 1, 1),
('745c46e4-09a9-41e2-b79a-5f94ccc21e0', 'falgun bhavesh', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '8469876088', 'jay@gmail.com', '72', 'test', 'area', 'bangalore', 'karnataka', 390123, 24, 0, 0, 13893, 625, 5, 1, '2019-04-18 11:17:45', '2019-04-18 11:17:45', 1, 1),
('79512691-db78-42cc-bfd7-94f75a1a574', ' QWZ ssss', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', 369456, NULL, 0, 0, 0, 0, -1, 0, '2019-04-22 12:53:20', '2019-03-28 09:48:08', 1, 1),
('7d3bdc47-2fc0-4695-a2ff-f52fcc69783c', 'Nikhil Nikhil', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '7788778877', '', '', '', '', '', '', NULL, NULL, -10000, -10000, 0, 0, -1, 1, '2019-04-12 06:56:03', '2019-04-12 06:56:03', 1, 1),
('80d02228-d958-4776-af0b-a058583f883', 'amit bajaj', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '123456789', 'jay@gmail.com', 'aa72', 'test', 'area', 'bangalore', 'karnataka', 390123, 24, 0, 0, 0, 0, -1, 1, '2019-04-26 13:13:08', '2019-04-26 13:13:08', 1, 1),
('887c0b19-2278-451e-aa76-7a89e7eb05d', 'hehe', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', '32', 'test', 'area', 'bangalore', 'karnataka', 369456, 6, 0, 0, 0, 0, -1, 1, '2019-02-18 04:54:21', '2019-02-18 04:54:21', 1, 1),
('8e0409da-b9b3-4c3d-9db4-b94d923ed5fb', 'qq', NULL, '', '', '', '', '', '', '', NULL, NULL, 0, 0, 0, 0, -1, 0, '2019-04-22 12:08:47', '2019-04-22 11:37:47', 1, 1),
('97042153-8e80-4d9f-b0be-45d88bed305', ' abc mnh', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', 369456, NULL, 0, 0, 0, 0, -1, 0, '2019-04-22 12:53:26', '2019-03-15 09:33:36', 1, 1),
('982f5a35-7bed-4f4d-8482-d2d2355e5aa', '  ', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '7898', 'ah', '12', 'ax', 'cs', 'aa', 'ac', 10, 1100, 0, 0, 0, 0, -1, 0, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('9bad8b96-68c9-4571-9aae-fb3f946711d', ' sd ', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '232', '', '', '', '', '', '', NULL, NULL, 0, 0, 0, 0, -1, 1, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('9c386e54-2268-4772-90b3-2c5da6691749', 'qwaa', NULL, '122112', '', '', '', '', '', '', NULL, NULL, 0, 0, 0, 0, -1, 0, '2019-04-22 12:34:34', '2019-04-22 12:34:30', 1, 1),
('a2c0ea56-53be-4082-bebb-1f9fe3bbd3e', ' GoogleBhai .com', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', 369456, NULL, 0, 0, 0, 0, -1, 1, '2019-03-15 10:04:17', '2019-03-15 10:04:17', 1, 1),
('a306b283-3bdb-4a5c-90ed-40907fa3d01', ' Bhavesh falgun', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '7777777777', '', '', '', '', '', '', NULL, NULL, 0, 0, 63, 0, -1, 1, '2019-04-22 13:03:50', '2019-04-22 13:03:51', 1, 1),
('b2a0fcce-2c40-4fc2-8632-196a43121dd', 'Mrrr. jay somani', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '8469876088', '', 'aghshs', '', '', '', '', 0, 0, 0, 0, 22024, 0, -1, 1, '2019-04-18 11:11:29', '2019-04-18 11:11:29', 1, 1),
('b6978a56-728f-4753-9322-b2038c85245', 'Mr. adasx ', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '204', 'abc@gmail.com', '12', 'ukh', 'uhhi', 'hh', 'hj', 122, 123, 0, 0, 0, 0, -1, 1, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('b74ca823-0316-4468-b0b2-86cd3bb79336', 'qq', NULL, '', '', '', '', '', '', '', NULL, NULL, 0, 0, 0, 0, -1, 0, '2019-04-22 12:08:47', '2019-04-22 11:41:36', 1, 1),
('bc4522b5-d50c-4b75-b9df-b3030d12fc6b', 'zxc ssss', NULL, '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', 369456, NULL, 0, 0, 0, 0, -1, 0, '2019-04-22 12:53:20', '2019-04-22 11:37:58', 1, 1),
('bc8502a1-c8db-49e0-acc7-7c9cdb47d71', ' mynew customer', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '1236547890', '', '', '', '', '', '', NULL, NULL, 0, 0, 9, 0, -1, 1, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('c027b955-0068-4fc7-9a08-776e32a74cb3', 'sachin', NULL, '9785469852', 'jayesh@gmail.com', '32', 'test', 'area', 'bangalore', 'karnataka', 369456, 6, 0, 0, 0, 0, -1, 0, '2019-04-22 12:55:10', '2019-04-22 07:24:18', 1, 1),
('c0de2543-78cd-4adc-b29d-a95e12999089', 'aq', NULL, '', '', '', '', '', '', '', NULL, NULL, 0, 0, 0, 0, -1, 0, '2019-04-22 12:08:47', '2019-04-22 12:08:40', 1, 1),
('c20d6b11-6202-455a-a3d8-8c46f23ab2e', 'bhavesh bhavesh', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', NULL, 'test', 'area', 'bangalore', 'karnataka', 369456, 32, 0, 0, 0, 0, -1, 1, '2019-02-18 06:10:27', '2019-02-18 06:10:27', 1, 1),
('c59a48d3-e98f-4d39-b1fe-767be4d8ea4', 'jayesh dukhneja', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', 'as32', 'test', 'area', 'bangalore', 'karnataka', 369456, 6, 0, 0, 0, 0, -1, 1, '2019-02-08 06:54:25', '2019-02-08 06:54:25', 1, 1),
('c87608ce-c608-4904-b26c-c55a17a3f8e', 'Mr. adasx ', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '204', '', '', '', '', '', '', NULL, NULL, 0, 0, 0, 0, -1, 1, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('cf1f428d-8c5b-4f10-9611-1d570de2750', ' Vivo v', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', 369456, NULL, 0, 0, 0, 0, -1, 1, '2019-03-15 09:37:26', '2019-03-15 09:37:26', 1, 1),
('d664d3a1-3646-41fd-a3ae-4b1c17fade58', 'M ssss', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', 369456, NULL, 0, 0, 0, 0, -1, 1, '2019-04-15 10:26:12', '2019-04-15 10:26:12', 1, 1),
('d76f7067-0de8-49e7-b2df-cd9953ccb91', 'Bhavesh Surtyani', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '123456789', 'jay@gmail.com', '72', 'test', 'area', 'bangalore', 'karnataka', 390123, 24, 0, 0, 0, 0, -1, 1, '2019-04-26 13:13:44', '2019-04-26 13:13:44', 1, 1),
('db878f20-b682-4860-8aac-9b64aec316e', 'cust2', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', '32', 'test', 'area', 'bangalore', 'karnataka', 369456, 6, 0, 0, 0, 0, -1, 0, '2019-04-26 12:48:12', '2019-02-18 04:51:40', 1, 1),
('dc8b1a9d-f55e-444b-b249-b6457a31dbb', 'Sammy Keswani', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '1234567890', 'sammy@gmail.com', 'ds', 'sdf', 'kl', 'sdf', 'df', 123456, 123, 0, 0, 0, 0, -1, 1, '2019-01-01 01:43:02', '2019-03-28 10:31:40', 1, 1),
('dcf157cb-1eda-11e9-8b87-54e1ad6c800', 'Sammy', 'c4e926dd-1eda-11e9-8b87-54e1ad6c800', '1234567890', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, -1, 1, '2019-01-23 06:48:17', '2019-01-23 06:48:17', 1, 1),
('dde74ec6-e4e6-42fc-94cd-c97408352a2', 'sachin', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', '32', 'test', 'area', 'bangalore', 'karnataka', 369456, 6, 0, 0, 0, 0, -1, 0, '2019-04-22 12:55:10', '2019-02-28 05:57:29', 1, 1),
('de89eb5e-e230-48c8-9437-5f4770dd338', 'Jay Vaswani', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '123456789', 'jay@gmail.com', '72', 'test', 'area', 'bangalore', 'karnataka', 390123, 24, 0, 0, 0, 0, -1, 1, '2019-04-26 13:13:59', '2019-04-26 13:13:59', 1, 1),
('e444ee02-ee1b-4d1f-81d9-4b2c9bdfb057', 'pa', NULL, '7788', '', '', '', '', '', '', NULL, NULL, 0, 0, 0, 0, -1, 0, '2019-04-22 12:20:12', '2019-04-22 12:20:04', 1, 1),
('ec4ebc82-6754-4280-aa6f-74ba19ab08a', 'jayesh dukhneja', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', 'as32', 'test', 'area', 'bangalore', 'karnataka', 369456, 6, 0, 0, 0, 0, -1, 1, '2019-02-08 07:04:01', '2019-02-08 07:04:01', 1, 1),
('f04c1a8f-32c4-424c-9afb-96efad3cfce6', 'aunsh', NULL, '123456789', 'jay@gmail.com', 'aa72', 'test', 'area', 'bangalore', 'karnataka', 390123, 24, 0, 0, 0, 0, -1, 0, '2019-04-22 12:54:33', '2019-04-22 07:24:18', 1, 1),
('f8971954-ed62-4f1c-9fe3-471273c74c86', 'ng', NULL, '', '', '', '', '', '', '', NULL, NULL, 0, 0, 0, 0, -1, 0, '2019-04-22 11:34:26', '2019-04-22 11:34:22', 1, 1),
('fa96453d-4ac3-4a88-84b8-3071f67f808', 'aunsh', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '123456789', 'jay@gmail.com', 'aa72', 'test', 'area', 'bangalore', 'karnataka', 390123, 24, 0, 0, 0, 0, -1, 0, '2019-04-22 12:54:33', '2019-02-28 05:57:29', 1, 1),
('fd1780da-a26e-4c60-b482-09d298c9b8a', 'vineet bajaj', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '123456789', 'jay@gmail.com', 'aa72', 'test', 'area', 'bangalore', 'karnataka', 390123, 24, 0, 0, 0, 0, -1, 1, '2019-02-08 06:54:25', '2019-02-08 06:54:25', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Customergroup`
--

CREATE TABLE `Customergroup` (
  `id` varchar(36) NOT NULL,
  `smsgroupId` varchar(36) DEFAULT NULL,
  `customerId` varchar(36) DEFAULT NULL,
  `isEnabled` tinyint(4) NOT NULL DEFAULT '1',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customergroup`
--

INSERT INTO `Customergroup` (`id`, `smsgroupId`, `customerId`, `isEnabled`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('2a57cb00-5adf-44e1-9fec-74bc923d895c', 'ab3d0a85-4187-4a71-asdd-q9287407784', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 0, '2019-04-10 10:32:54', '2019-04-10 10:43:35', 1, 1),
('3a58ecb1-4577-48b5-93eb-b56d2742f66d', 'ab3d0a85-4187-4a71-asdd-q9287407784', '10551bee-8263-4b8c-81b1-23780d9acd3', 1, '2019-04-10 13:42:10', '2019-04-10 13:42:10', 1, 1),
('3ff53209-2553-456e-8856-15e25682aa29', 'ee3q0a78-7487-4a63-bcdf-d928740a824', '745c46e4-09a9-41e2-b79a-5f94ccc21e0', 1, '2019-04-22 12:40:11', '2019-04-22 12:40:11', 1, 1),
('44406589-a5a4-4a85-aa60-2ce6fbc4a4eb', 'ab3d0a85-4187-4a71-asdd-q9287407784', '218cb984-00d8-4c3b-a88f-8639fff7051', 1, '2019-04-11 07:16:00', '2019-04-11 07:16:00', 1, 1),
('4afd70fe-2afa-432a-af99-4353c8d148d2', 'ab3d0a85-4187-4a71-asdd-q9287407784', '10551bee-8263-4b8c-81b1-23780d9acd3', 0, '2019-04-10 10:44:51', '2019-04-10 10:44:51', 1, 1),
('4d4ded04-3728-49c2-8b98-1ed9fd3c20e9', 'fe47671e-ccd7-4c39-ab41-a7855a509e88', '736ad816-2459-11e9-a14f-588a5a24e72', 1, '2019-04-24 07:26:02', '2019-04-24 07:26:02', 1, 1),
('8981e30c-d5da-40c2-b535-f9940238a99a', 'ee3q0a78-7487-4a63-bcdf-d928740a824', '290f4de9-0187-454d-95fe-991dca8fbd9', 1, '2019-04-11 09:25:25', '2019-04-11 09:25:25', 1, 1),
('ca305a9a-075f-4564-9865-f95e5fe1cb20', 'ab3d0a85-4187-4a71-asdd-q9287407784', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 1, '2019-04-10 13:41:48', '2019-04-10 13:41:48', 1, 1),
('eq9a9t55-4187-4a71-fffg-q9287401111', 'ab3d0a85-4187-4a71-asdd-q9287407784', '4d039841-d7c0-482c-8156-19edb690468', 1, '2019-04-09 11:15:11', '2019-04-09 11:15:11', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Customeritemprices`
--

CREATE TABLE `Customeritemprices` (
  `id` varchar(36) NOT NULL,
  `customerTypeId` varchar(36) NOT NULL,
  `itemId` varchar(36) NOT NULL,
  `itemPrice` double NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Customerlog`
--

CREATE TABLE `Customerlog` (
  `id` varchar(36) NOT NULL,
  `customerId` varchar(36) NOT NULL,
  `balance` double NOT NULL,
  `notes` longtext,
  `date` datetime NOT NULL,
  `isEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customerlog`
--

INSERT INTO `Customerlog` (`id`, `customerId`, `balance`, `notes`, `date`, `isEnabled`, `createdOn`, `modifiedOn`, `createdById`) VALUES
('059d5784-45fb-4575-94b9-95e78a3eb9ea', '51ee512a-1b72-4df4-bce1-88cb29444a5d', 0, 'Opening Balance', '2019-04-22 17:38:42', 1, '2019-04-22 12:08:42', '2019-04-22 12:08:42', 1),
('0823e225-53e8-47f5-a634-c367329a69d0', '533524e8-70bd-4e2d-b0f9-bae6f0d1838b', 500, 'Balance Added', '2019-04-26 00:00:00', 1, '2019-04-26 13:25:53', '2019-04-26 13:25:53', 1),
('0ba2d708-b05e-4bf6-a48c-ab85988d0540', '0768c21a-70b7-4441-b828-d58a45a43441', 100, 'Balance Added', '2019-04-12 13:29:28', 1, '2019-04-12 07:59:28', '2019-04-12 07:59:28', 1),
('10e44f62-ae3f-4767-bfbb-1ab804e1894d', '22c8244e-fb21-4e2b-913c-d5cc2770a08', 10, '', '2019-04-08 00:00:00', 1, '2019-04-08 08:32:07', '2019-04-08 08:32:07', 1),
('1be519ea-333e-4c9f-94c9-d2d9a39ea365', '5f02f8a6-39ed-4955-b8e8-fe637ace398c', 0, 'Opening Balance', '2019-04-22 17:12:47', 1, '2019-04-22 11:42:47', '2019-04-22 11:42:47', 1),
('2112be91-30ef-4a97-ba42-7c663518f211', '8e0409da-b9b3-4c3d-9db4-b94d923ed5fb', 0, 'Opening Balance', '2019-04-22 17:07:47', 1, '2019-04-22 11:37:47', '2019-04-22 11:37:47', 1),
('2cec2882-5cbf-402c-bce2-a5a8e8f16ad2', '0768c21a-70b7-4441-b828-d58a45a43441', 100000, 'Balance Added', '2019-04-12 00:00:00', 1, '2019-04-12 07:20:09', '2019-04-12 07:20:09', 1),
('40661745-57b0-4ea4-a8b8-75af17e6cd09', '0768c21a-70b7-4441-b828-d58a45a43441', 100, 'Balance Added', '2019-04-12 13:18:54', 1, '2019-04-12 07:48:54', '2019-04-12 07:48:54', 1),
('4073092d-7aad-4a55-bfa2-500ea81b664b', '22c8244e-fb21-4e2b-913c-d5cc2770a08', 55, 'aa', '2019-04-14 00:00:00', 1, '2019-04-08 08:39:20', '2019-04-08 08:39:20', 1),
('477b3511-0b79-4a80-a96a-d1b26afc6657', '22c8244e-fb21-4e2b-913c-d5cc2770a08', 11, 'auauau', '2019-04-08 00:00:00', 1, '2019-04-08 08:34:07', '2019-04-08 08:34:07', 1),
('491327ef-470f-4159-898e-2d944b986c7b', '6159ddf0-ea12-439b-bfa4-e86b82dd5aaf', 0, 'Opening Balance', '2019-04-22 17:34:49', 1, '2019-04-22 12:04:49', '2019-04-22 12:04:49', 1),
('49b95c76-07d9-40e6-b29a-d525df9f6f21', '22c8244e-fb21-4e2b-913c-d5cc2770a08', 0, '', '2019-04-09 00:00:00', 1, '2019-04-09 08:38:13', '2019-04-09 08:38:13', 1),
('6c7e56a9-e14a-4f15-8588-6da478cf7fbe', '22c8244e-fb21-4e2b-913c-d5cc2770a08', 21, 'aqa', '2019-04-08 00:00:00', 1, '2019-04-08 08:40:50', '2019-04-08 08:40:50', 1),
('7576859b-0ac1-4ac1-ac6f-75472e0f5af4', '49398ab9-90e4-4236-a426-24557364d7f7', 0, 'Opening Balance', '2019-04-22 17:12:32', 1, '2019-04-22 11:42:32', '2019-04-22 11:42:32', 1),
('78687757-b167-4974-ad5b-15d17a26038a', '6facbc1e-1640-49a7-91f2-b614278288c8', 0, 'Opening Balance', '2019-04-22 17:13:23', 1, '2019-04-22 11:43:23', '2019-04-22 11:43:23', 1),
('86f27cb8-7e76-4623-85fd-7d9580eec969', '3d4bbaf9-7e9f-4df9-ac83-d2c4899020f9', 0, 'Opening Balance', '2019-04-22 17:07:28', 1, '2019-04-22 11:37:28', '2019-04-22 11:37:28', 1),
('88b8ec1c-086f-4957-ad28-e6f4d465a232', 'f8971954-ed62-4f1c-9fe3-471273c74c86', 0, 'Opening Balance', '2019-04-22 17:04:22', 1, '2019-04-22 11:34:22', '2019-04-22 11:34:22', 1),
('8f74cac5-d8bd-46ab-a973-b6f8546f989f', 'b74ca823-0316-4468-b0b2-86cd3bb79336', 0, 'Opening Balance', '2019-04-22 17:11:36', 1, '2019-04-22 11:41:36', '2019-04-22 11:41:36', 1),
('93aa48b8-6e71-4a0d-8dd5-d4b556355b41', '3401ab62-452d-4e40-9c07-a156c6a73e9b', 0, 'Opening Balance', '2019-04-22 17:34:00', 1, '2019-04-22 12:04:00', '2019-04-22 12:04:00', 1),
('977a1cdb-5e31-46e4-82dd-1fed8b75a609', 'e444ee02-ee1b-4d1f-81d9-4b2c9bdfb057', 0, 'Opening Balance', '2019-04-22 17:50:04', 1, '2019-04-22 12:20:04', '2019-04-22 12:20:04', 1),
('996e79c0-ec56-4772-bf46-7179b97a7a55', '0768c21a-70b7-4441-b828-d58a45a43441', 50, 'Balance Added', '2019-04-12 13:12:20', 1, '2019-04-12 07:42:20', '2019-04-12 07:42:20', 1),
('9fb29723-57fe-4560-bb5a-63590635c0f1', 'c0de2543-78cd-4adc-b29d-a95e12999089', 0, 'Opening Balance', '2019-04-22 17:38:40', 1, '2019-04-22 12:08:40', '2019-04-22 12:08:40', 1),
('b97bd953-dc7c-4b4e-87fe-cc70642eabdd', 'd664d3a1-3646-41fd-a3ae-4b1c17fade58', 0, 'Opening Balance', '2019-04-15 15:56:12', 1, '2019-04-15 10:26:12', '2019-04-15 10:26:12', 1),
('c1446a7b-4932-429b-ab64-b991be9cc674', '22c8244e-fb21-4e2b-913c-d5cc2770a08', 10, '', '2019-04-08 00:00:00', 1, '2019-04-08 08:32:57', '2019-04-08 08:32:57', 1),
('c1dc11ea-047c-4121-9447-deab37abfbb2', '22c8244e-fb21-4e2b-913c-d5cc2770a08', 43, 'uua', '2019-04-08 00:00:00', 1, '2019-04-08 08:42:11', '2019-04-08 08:42:11', 1),
('c228c561-a93e-4226-9b81-48494e1529e9', '53254060-36a7-4d8e-ba62-c2723e56cfcb', 0, 'Opening Balance', '2019-04-22 17:35:36', 1, '2019-04-22 12:05:36', '2019-04-22 12:05:36', 1),
('c97eb732-89fc-4f3f-8669-116e195def32', '22c8244e-fb21-4e2b-913c-d5cc2770a08', 100, '100', '2019-04-08 00:00:00', 1, '2019-04-08 09:46:10', '2019-04-08 09:46:10', 1),
('ca19deca-3b16-418a-a80d-96d7a15b3476', '9c386e54-2268-4772-90b3-2c5da6691749', 0, 'Opening Balance', '2019-04-22 18:04:30', 1, '2019-04-22 12:34:30', '2019-04-22 12:34:30', 1),
('dae1f390-e506-4bc7-93e4-9d4dac33109c', '0768c21a-70b7-4441-b828-d58a45a43441', 1031, 'Balance Added', '2019-04-17 00:00:00', 1, '2019-04-12 12:29:44', '2019-04-12 12:29:44', 1),
('e27fd60d-4a81-4ed2-8adb-e3cb08dea762', '0768c21a-70b7-4441-b828-d58a45a43441', -10000, 'Opening Balance', '2019-04-12 12:27:12', 1, '2019-04-12 06:57:12', '2019-04-12 06:57:12', 1),
('e41254bc-d919-4a14-8cd0-3b29fc06907e', 'bc4522b5-d50c-4b75-b9df-b3030d12fc6b', 0, 'Opening Balance', '2019-04-22 17:07:58', 1, '2019-04-22 11:37:58', '2019-04-22 11:37:58', 1),
('e73d1d2b-659e-4338-86cb-1c530eeeb15c', '22c8244e-fb21-4e2b-913c-d5cc2770a08', 500, '', '2019-04-08 00:00:00', 1, '2019-04-08 07:57:20', '2019-04-08 07:57:20', 1),
('f43601ac-23de-48e4-b060-21b835a9d89c', '22c8244e-fb21-4e2b-913c-d5cc2770a08', 200, '200', '2019-04-08 00:00:00', 1, '2019-04-08 09:48:42', '2019-04-08 09:48:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Customertype`
--

CREATE TABLE `Customertype` (
  `id` varchar(36) NOT NULL,
  `name` varchar(80) NOT NULL,
  `isEnabled` tinyint(1) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customertype`
--

INSERT INTO `Customertype` (`id`, `name`, `isEnabled`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('0131ef88-91a1-4b63-9a5a-d5a36cd0252', 'Same', 1, '2019-02-05 02:29:14', '2019-02-05 02:29:14', 1, 1),
('c4e926dd-1eda-11e9-8b87-54e1ad6c800', 'mmm', 1, '2019-01-23 06:47:36', '2019-01-23 06:47:36', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Details`
--

CREATE TABLE `Details` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` longtext NOT NULL,
  `address` longtext,
  `state` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `stateCode` int(11) DEFAULT NULL,
  `gstin` varchar(30) DEFAULT NULL,
  `bankAccountNo` varchar(30) DEFAULT NULL,
  `bankAccountName` longtext,
  `bankName` longtext,
  `bankIFSC` varchar(20) DEFAULT NULL,
  `termsAndConditions` longtext,
  `billUpperText` longtext,
  `logo` longtext,
  `sms` tinyint(1) NOT NULL DEFAULT '0',
  `route` int(11) DEFAULT NULL,
  `senderid` varchar(6) DEFAULT NULL,
  `apikey` varchar(50) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Details`
--

INSERT INTO `Details` (`id`, `name`, `mobile`, `address`, `state`, `city`, `stateCode`, `gstin`, `bankAccountNo`, `bankAccountName`, `bankName`, `bankIFSC`, `termsAndConditions`, `billUpperText`, `logo`, `sms`, `route`, `senderid`, `apikey`, `createdOn`, `modifiedOn`) VALUES
('997525ef-eb0b-43f6-8578-2eb311e12cc', 'Mobile Era', '9909099590', '4, Shree Sai Villa Complex, Old Padra Road', 'Gujarat', 'Vadodara', 24, '24DSVPM2443D1ZN', '917020037314490', '', 'AXIS BANK, Old Padra Road, Vadodara', 'UTIB0002862', '<ul><li> Subject to Vadodara Jurisdiction</li>\n<li> Goods once sold will not be taken back.</li>\n<li> Please check goods when it is delivered to your shop. </li>\n<li>Payment term maximum 15 days from date of delivery</li>\n<li>Cheque Return Charges Rs. 354/-</li></ul>', 'Tax Invoice', 'aab', 1, 4, 'ASDCVF', '1234', '2019-04-26 14:02:52', '2019-04-26 14:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `Document`
--

CREATE TABLE `Document` (
  `id` varchar(36) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `Date` datetime NOT NULL,
  `path` varchar(200) NOT NULL,
  `isEnabled` tinyint(1) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Itemphotos`
--

CREATE TABLE `Itemphotos` (
  `id` varchar(36) NOT NULL,
  `itemId` varchar(36) NOT NULL,
  `name` varchar(50) NOT NULL,
  `altText` varchar(50) NOT NULL,
  `fileDir` longtext NOT NULL,
  `fileName` varchar(120) NOT NULL,
  `link` longtext NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Items`
--

CREATE TABLE `Items` (
  `id` varchar(36) NOT NULL,
  `name` longtext NOT NULL,
  `billName` longtext NOT NULL,
  `isEnabled` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  `usedStock` double DEFAULT '0',
  `totalStock` double NOT NULL DEFAULT '0',
  `unitId` varchar(36) NOT NULL,
  `subTypeId` varchar(36) NOT NULL,
  `price` double NOT NULL,
  `hsnCode` varchar(50) DEFAULT NULL,
  `barCode` varchar(120) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Items`
--

INSERT INTO `Items` (`id`, `name`, `billName`, `isEnabled`, `content`, `usedStock`, `totalStock`, `unitId`, `subTypeId`, `price`, `hsnCode`, `barCode`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('03e14e51-7a26-4495-b852-79031aa2e01a', 'shirt', 'Shirt', 1, 'abc', 1, 0, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 1000, '', '', '2019-04-27 10:12:18', '2019-04-27 10:12:18', 1, 1),
('11964231-6d2a-46e6-a833-79d1619d60e', 'watches', 'fal 2', 1, 'abc', 16, 37, 'd7845da0-2459-11e9-a14f-588a5a24e72', '588da8eb-245a-11e9-a14f-588a5a24e72', 10, '', '', '2019-04-27 11:03:57', '2019-04-27 11:03:57', 1, 1),
('3060ffcc-f1d3-4195-975a-acf6e12e1e2', 'diesel jeans', 'new', 1, 'abc', 26, 21, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 200, '', '', '2019-04-27 11:04:25', '2019-04-27 11:04:25', 1, 1),
('3637492e-dce5-45c3-aa7e-d195e7a33ab', 'kurta', 'KT', 1, 'abc', 200007, 0, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 1, 'hh', 'hh', '2019-04-27 11:04:33', '2019-04-27 11:04:33', 1, 1),
('3947d4f6-de4c-466e-9697-2cd90619a2d', 'saari', 'string', 1, 'abc', 933, 38, 'd7845da0-2459-11e9-a14f-588a5a24e72', '588da8eb-245a-11e9-a14f-588a5a24e72', 500, '23', '12', '2019-04-27 11:05:25', '2019-04-27 11:05:25', 1, 1),
('3f8aab71-fa01-4e74-919c-1d33140efe8', 'aunsh', 'aa', 0, 'abc', 1, 0, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 200, '11', '2', '2019-04-27 10:07:50', '2019-03-07 04:24:15', 1, 1),
('486bad3d-4afe-46f2-86b2-1dd9b850738', 'track suit', 'aaannn', 1, 'abc', 112, 17, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 1000, '', '', '2019-04-27 11:05:50', '2019-04-27 11:05:50', 1, 1),
('58ce829d-09b9-4ac8-b11b-135e5f646548', 'sunil item', 'aa', 0, 'abc', 0, 0, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 200, '11', '2', '2019-04-19 12:14:16', '2019-04-19 06:43:30', 1, 1),
('5b59d5e7-b92e-4f23-8297-ce76ecba8a6b', 'item2', 'ss', 1, 'abc', 0, 0, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 200, '13', '5', '2019-04-22 06:17:52', '2019-04-22 06:17:52', 1, 1),
('689cd1c8-27af-4173-a774-7b8273461cb', 'bhavesh', 'bhaveshKTwala', 1, 'abc', 143, 220, 'd7845da0-2459-11e9-a14f-588a5a24e72', '0a2484b4-b79c-4878-9b36-9f18fa1b755', 100, '', '', '2019-03-09 08:36:10', '2019-03-09 08:36:10', 1, 1),
('6bbbb841-db9a-4374-b7ed-d5eddb96e71f', 'sunil item', 'aa', 0, 'abc', 0, 0, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 200, '11', '2', '2019-04-19 12:16:52', '2019-04-19 06:44:43', 1, 1),
('6c0dd453-4478-4c9a-b94e-2c7f693b23de', 'sunil item', 'aa', 0, 'abc', 0, 0, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 200, '11', '2', '2019-04-19 12:19:40', '2019-04-19 06:47:03', 1, 1),
('75fda553-c375-476d-991b-52ce7af4666', 'Vivo V15', 'Vivo V15', 1, 'abc', 0, 0, 'd7845da0-2459-11e9-a14f-588a5a24e72', '8a67d644-449e-456d-a28b-786477ddab7', 10, '', '', '2019-03-15 11:06:29', '2019-03-15 11:06:29', 1, 1),
('77edcfc3-2891-4c64-91d2-c6b1d6bc8db1', 'item1', 'aa', 1, 'abc', 0, 0, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 200, '11', '2', '2019-04-22 06:17:52', '2019-04-22 06:17:52', 1, 1),
('7fa15757-e571-4387-b3b2-5a328a5f529', 'new falgun', 'New Falgun', 1, 'abc', 1, 0, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 1000, '', '', '2019-03-26 07:19:35', '2019-03-26 09:21:09', 1, 1),
('813b45b1-3d38-40c5-92c1-163bea0b378d', 'qql', 'qql', 0, 'abc', 0, 0, 'ba0bc770-7947-4a07-bcb7-de936d4545d', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 20, '', '', '2019-04-27 10:06:52', '2019-04-27 10:06:42', 1, 1),
('828dd1fd-d678-4cbe-9b00-a389b1e9e47', 'Long Tshirts', 'tshirt', 1, 'abc', 210, -6, 'ba0bc770-7947-4a07-bcb7-de936d4545d', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 10, '123', '123', '2019-04-26 13:30:27', '2019-04-26 13:30:26', 1, 1),
('829771a2-245a-11e9-a14f-588a5a24e72', 'Denim Cloth', 'Denim', 1, 'abc', 1, 0, 'ba0bc770-7947-4a07-bcb7-de936d4545d', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 300, '11', '', '2019-04-26 13:29:34', '2019-04-26 13:29:34', 1, 1),
('873dc4f4-7a86-417a-9158-bd543ee635a', 'jeans', 'jeans', 1, 'abc', 15, 3, 'ba0bc770-7947-4a07-bcb7-de936d4545d', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 120, '123', '123', '2019-04-26 12:29:03', '2019-02-15 06:09:43', 1, 1),
('8989189c-feff-449d-8aca-8aba3cd72d1', 'xc', 'xc', 0, 'abc', 9, 0, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 500, '123', '456', '2019-04-27 10:08:16', '2019-02-15 06:11:20', 1, 1),
('8aa3a96c-fa31-424e-940e-15020b1e564', 'Shoes', 'Shoe', 1, 'abc', 15, 184, 'ba0bc770-7947-4a07-bcb7-de936d4545d', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 100000, '', '', '2019-04-26 13:30:16', '2019-04-26 13:30:16', 1, 1),
('8cbbab78-f0bd-481c-bc40-230f35c3e6d', 'NEW ITEM 1', 'NEWITEM', 1, 'abc', 193, 40, 'd7845da0-2459-11e9-a14f-588a5a24e72', '588da8eb-245a-11e9-a14f-588a5a24e72', 20000, 'js89', 'm99', '2019-04-22 12:29:16', '2019-03-12 02:31:37', 1, 1),
('95ac0b7a-5809-41a3-abc5-bfcd1fc6dd01', 'sunil item', 'aa', 1, 'abc', 0, 0, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 200, '11', '2', '2019-04-19 06:51:45', '2019-04-19 06:51:45', 1, 1),
('98cca098-9adf-44b4-ae28-cc066f6c369', 'old falgun', 'Old Wala Falgun', 1, 'abc', 0, 0, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 10, '', '', '2019-03-26 07:23:56', '2019-03-26 09:20:44', 1, 1),
('aa78c2fe-1f1c-4ae4-8a8e-40cac3d7d29', 'sachin', 'ss', 1, 'abc', 3, 0, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 200, '13', '5', '2019-03-07 04:24:15', '2019-03-07 04:24:15', 1, 1),
('ab042a77-8226-41aa-883c-72907f0135e', 'Belts', 'Belt', 1, 'abc', 3, 0, 'ba0bc770-7947-4a07-bcb7-de936d4545d', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 150, '123', '123', '2019-04-26 13:30:36', '2019-04-26 13:30:36', 1, 1),
('ab3d0a85-4187-4a63-bcdf-d928740a824', 'fal fal', 'dd', 1, 'abc', 0, 0, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 23, '', '', '2019-03-26 07:26:59', '2019-03-26 07:26:59', 1, 1),
('bfdc7c00-5ed8-4118-87d2-2c6636086677', 'sunil item', 'aa', 0, 'abc', 0, 0, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 200, '11', '2', '2019-04-19 12:02:38', '2019-04-19 06:26:30', 1, 1),
('e028386b-f55f-41d2-b131-1ce3bdf91915', 'sunil item', 'aa', 0, 'abc', 0, 0, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 200, '11', '2', '2019-04-19 12:14:16', '2019-04-19 06:40:51', 1, 1),
('e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 'jay', 'JAY', 1, 'abc', 52, 14, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 1, '', '', '2019-04-26 11:55:00', '2019-02-28 01:49:15', 1, 1),
('f142d1ac-e2cc-4a5b-9264-d2385e04497', 'oppo', 'OPPO', 0, 'abc', 0, 0, 'ba0bc770-7947-4a07-bcb7-de936d4545d', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 100, '', '', '2019-03-15 10:33:27', '2019-03-15 10:33:27', 1, 1),
('ffb92995-05b4-4a59-b18b-e206abd95a5', 'as', 'sa', 1, 'abc', 3, 0, 'd7845da0-2459-11e9-a14f-588a5a24e72', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 1, '', '', '2019-02-28 02:35:34', '2019-02-28 02:35:34', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Orderitem`
--

CREATE TABLE `Orderitem` (
  `id` varchar(36) NOT NULL,
  `orderId` varchar(36) NOT NULL,
  `itemId` varchar(36) NOT NULL,
  `quantity` int(11) NOT NULL,
  `itemPrice` double NOT NULL,
  `taxPrice` double NOT NULL,
  `series` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Orderitem`
--

INSERT INTO `Orderitem` (`id`, `orderId`, `itemId`, `quantity`, `itemPrice`, `taxPrice`, `series`) VALUES
('013874bf-0eb7-4f83-be54-5c87c184a5aa', 'd856874a-61a5-4e46-9f68-4ed219a1e57a', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 120, 6, 1),
('015022ee-62b1-4656-8676-3e2156c82fc4', '33eac745-36aa-42c0-ae11-057e84bdb4de', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 120, 6, 0),
('022460e7-4ce1-4705-a91d-7c558d082f6', '442856ae-61f8-4aab-89a6-1322adb06bb', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0.5, 0),
('02d537dd-2675-4d9f-b0ed-00d1e1c747f', 'f830c199-5406-4337-94b5-1f0ebe25d87', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 2, 20000, 0, 1),
('034eac26-ff25-46c9-ae3b-32282921aefa', '50ca21ea-f096-49ca-9f97-56462a1121d3', '3947d4f6-de4c-466e-9697-2cd90619a2d', 1, 500, 50, 0),
('03e12006-9d56-4d6c-9d56-763c4349722', 'f35de53b-515d-49e3-8096-f5df335667b', '11964231-6d2a-46e6-a833-79d1619d60e', 1, 10, 0, 0),
('04195ec5-82ca-44dc-aa14-ad041c9bb5e', 'b282a7d9-3a95-4ac2-beb5-d7ae9426889', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 1000, 50, 1),
('046b533a-83b6-4d5e-8d4e-c1beec8b0d2', '36eed7c5-598a-402c-93a0-713fb61891e', '3f8aab71-fa01-4e74-919c-1d33140efe8', 1, 200, 0, 6),
('04970b18-c856-4a53-bb9c-0a4da387717', '30b66930-64fe-482a-ae50-bb0f0026396', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 1),
('0548f87e-b925-4f94-815c-d8d8cb758d4', 'f0c3f275-2fd1-4694-9139-d196c310216', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('05df5ced-77d0-4a7e-bcbd-94f8719848e', 'f4351323-c279-4175-8eb6-00e54741b80', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('061d9d4b-68d5-4103-8a98-a8f2ed865e0e', 'e093240e-1ac0-4e59-82d5-f72c0b3d56e5', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', 1, 200, 10, 0),
('06c4eaaf-d241-4f51-a6d9-7a452b24486', '79cb7eda-90c7-4271-a65c-b6ecc7fbadf', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 1, 20000, 2000, 1),
('091645c9-cfdf-4c15-9746-d8b3c0529bb', '4ac5c7a2-a6b7-4251-8ba3-5721dad4077', '8989189c-feff-449d-8aca-8aba3cd72d1', 4, 500, 100, 1),
('0975055d-45f8-4af4-8494-06b4e99a4f3', '839cfc92-aa60-418a-bb89-55be294cbc9', '3947d4f6-de4c-466e-9697-2cd90619a2d', 1, 500, 0, 1),
('0cf902c2-250e-4e40-982c-de3dbf04025', '33a4e5ea-a417-44a7-8210-1fb67bd6828', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('0d7bf5f8-5c45-4ebb-b346-bbcba5ab6a2e', 'e2f77a1d-2772-4412-9cbe-624c2b7cfb43', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 120, 6, 0),
('0e070d2e-ba7b-4911-b642-86c6ccddcee2', 'd856874a-61a5-4e46-9f68-4ed219a1e57a', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 10, 0.5, 0),
('0e1acae4-7ea8-41b4-bcde-ac34ef2187c', '97d1a7ac-6d9b-4e63-bb2e-f3b5688cdf5', '3947d4f6-de4c-466e-9697-2cd90619a2d', 1000, 500, 50000, 1),
('0f723d45-ca3e-4e50-b6c9-ea3499329f6', '39c03ec3-e00d-4080-b2a3-98fccbd2116', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0, 0),
('0fb7162d-7a34-432b-97a9-afb67a46180', '2d3c04e4-8174-44ba-987d-82855de3e18', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 1, 20000, 2000, 1),
('129a437d-88fc-4532-a5aa-286b2c9926b', '1f4c1de5-1ac9-4247-b061-76c081e30c1', 'ffb92995-05b4-4a59-b18b-e206abd95a5', 1, 1, 0.05, 0),
('12e2f56c-f43c-402d-8ff5-4dbd1bd83e3', 'f258d8db-da83-443b-ae22-35c6201b958', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', 1, 200, 0, 1),
('14457983-3af1-489f-8068-a76eb9b6337', '3085c84c-283a-4467-ab59-0de24f235ef', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('14987fd8-ba53-455f-a473-f22ddf862f8', '51214645-e43d-4fcb-b09f-34c18b67ba8', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 1),
('16ebc692-5f3a-48b4-b64c-4d88142e113', '712bf1a6-4933-4fa0-bbe3-0eb086e3903', '3947d4f6-de4c-466e-9697-2cd90619a2d', 10, 500, 500, 3),
('1706646d-c395-4917-8d82-f9e08bab51c', 'bda5894e-1d15-4fc8-8707-cf9f7ca6f20', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0.05, 4),
('17e1239c-afac-4a3c-b782-18eb85ad2fe', '6fd483c9-d61f-4e59-b258-acb36c27d5b', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 400, 20, 1),
('1ac1d4c0-a5a2-4279-a616-3eeac619a7c', 'b579f53c-0109-42db-90bf-b2078d992b4', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('1c500974-e9e7-4054-ac51-56b33a994ef', 'ad4e120c-5dd9-417a-827f-96633df8d60', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('1d973e6c-626a-4896-aa6f-5af3329298e', '39c03ec3-e00d-4080-b2a3-98fccbd2116', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 1, 20000, 0, 1),
('1eb82a82-cb97-435a-b325-f2a90f59fd3', '352bd8a0-0cf0-4753-92cd-f7a3bc6871d', 'aa78c2fe-1f1c-4ae4-8a8e-40cac3d7d29', 2, 200, 20, 0),
('210080d4-f38e-4acb-ae00-b6eba00d5ad', 'bb82d038-1430-4090-b8d7-299c0e53b68', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 1),
('2356f5f7-7fdb-4b18-b85e-410f40e7a0b', '33f82c0c-101f-4751-8b2f-7d047ef17cf', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 120, 6, 2),
('23ee908d-bfa9-4ef4-bff4-f246fcf65c0', 'bb82d038-1430-4090-b8d7-299c0e53b68', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('24181870-c1c1-4697-af34-39ca1019dee', '04ec4033-7f12-4904-a4c6-7042e749682', '3f8aab71-fa01-4e74-919c-1d33140efe8', 1, 200, 0, 1),
('2538619b-9a26-4e32-85b0-35d92a315db3', 'b7cd8448-3a74-4ba8-95cf-8703855e5aaf', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 120, 6, 0),
('2699ef4b-31bf-4422-9eb4-c7a82b05b66', '9db20766-5b99-492f-9303-f0789c9b78b', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('273f1057-1c9f-4f2f-aafc-a7d37a449a42', 'c48197de-760e-45ec-8344-41699b57f4c0', '8aa3a96c-fa31-424e-940e-15020b1e564', 2, 100000, 10000, 0),
('274779bf-d1ff-42e5-8fcc-485b2227378', '2dc05935-763f-4f8e-9038-fbae3af7298', '11964231-6d2a-46e6-a833-79d1619d60e', 3, 10, 0, 0),
('28fbcaf8-f231-4bb4-9e79-25a5e488689', '9d60635a-0cd4-4625-9843-d9f865cb120', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('2a173de5-f2b5-4565-9a8a-91e3194eda58', 'e29f8156-092b-4c41-95ad-a53f3d32c2ff', '8aa3a96c-fa31-424e-940e-15020b1e564', 10, 100000, 50000, 0),
('2b970085-1831-4842-9433-b473ecb40a7', '0b69d7a5-c0b0-4625-be6a-3061c7acd91', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0.5, 0),
('2bdfb2d4-c607-483b-a903-41f2f454799', '01cbc026-b319-43d4-8db1-cf3315714e4', '11964231-6d2a-46e6-a833-79d1619d60e', 3, 10, 0, 1),
('2d08cfe2-83ef-4765-b114-e491c3b0d38', '7abe2c6e-7521-4243-b314-329be287245', '8aa3a96c-fa31-424e-940e-15020b1e564', 1, 100000, 0, 0),
('2f245500-7428-4d93-8664-c628dfb1140', 'b282a7d9-3a95-4ac2-beb5-d7ae9426889', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 5000, 250, 0),
('30f04c9e-6a48-4fff-be6e-aaeb820d2acf', '670dfb4f-80bd-427c-bf8c-eaac87bcf576', '486bad3d-4afe-46f2-86b2-1dd9b850738', 2, 1000, 100, 0),
('315d17a7-b987-41cb-a3b3-95bfa2ebb3f', '12c44f75-c160-411c-8114-a2446c703c3', '8989189c-feff-449d-8aca-8aba3cd72d1', 2, 500, 50, 0),
('32f5fc98-7879-4a7b-8871-fe5395f91e47', 'c009288d-a22a-4fa1-88a4-95b8f8410e01', '486bad3d-4afe-46f2-86b2-1dd9b850738', 10, 1000, 500, 0),
('33099cdb-5f88-41e8-8dc4-f8a934f6d5d', '93e7ead4-2e62-49d4-b7ac-8b98ef22ecc', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 1),
('33107499-43f1-497d-9fcc-911b783e197', '62dee4e9-93dd-4a1e-a6f8-48892d9baa3', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('33f3920b-7243-4a7c-93c4-0931fdc715c', '51214645-e43d-4fcb-b09f-34c18b67ba8', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('35060425-983c-4553-92dd-4da369fae71', 'eed84f52-159f-4066-b355-70567127af2', '873dc4f4-7a86-417a-9158-bd543ee635a', 5, 120, 30, 0),
('3532a390-684b-4b41-afb8-dfdffb220cb', 'da3b1338-199f-42c9-b66c-82af631caa3', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('3642110e-1b43-4bfa-ab95-69257faf6b6', '36eed7c5-598a-402c-93a0-713fb61891e', '3f8aab71-fa01-4e74-919c-1d33140efe8', 1, 200, 0, 5),
('38f05d6d-2945-417b-a7e8-416212c218e', 'b6290ce2-cd90-4940-adba-1d61cbc6062', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 120, 0, 0),
('3ab2f262-cbfb-4c66-8548-eaf632db594', 'c3645da9-16f6-4326-a81d-a9db53e51c2', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 0, 0, 0),
('3e166056-8b6b-44a8-9f15-d33582aa007', 'e817a718-3ffd-41b5-84e1-29d32d70875', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 0, 0, 0),
('3f3f2d52-1217-45dd-847d-f74c589fb4d', 'e5a8d7c1-4522-4732-abf4-facad00b4fa', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 1),
('3f8c9b34-7e22-49bf-9421-590e95e32b0', '134105b0-67d9-4b0c-8a02-2366394084a', '829771a2-245a-11e9-a14f-588a5a24e72', 500, 0, 0, 0),
('40cadb57-3bb5-4ffc-bddb-b40a615c78b', 'afb8c6ca-ae76-4cbe-b4f3-198d6925deb', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0.5, 0),
('4136ca7d-4bf6-487b-81a0-1f0a2a893b8', 'ebd8bafa-dd50-4827-bac8-05fd6d0db6d', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('416d0ee8-1106-440a-9e7d-9294ad5d13bb', '16011328-52e4-4bc9-a419-10aeaa6b4b2f', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', 1, 200, 10, 1),
('426f0e7a-899c-4680-a02e-4654b489f8d', 'e718e5b5-05b5-4cd1-a157-96874c847fa', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 2, 1, 0.1, 0),
('44d3a616-2f1a-4092-b7d6-8dec5c4d40a', '6fd483c9-d61f-4e59-b258-acb36c27d5b', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('45055826-52f5-4fc7-a3ca-0f77a0ebe816', 'e6919ae6-4489-4d1a-b55a-0c25350e285b', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 120, 6, 0),
('456087bc-0c9f-4dba-9f26-e5c5ac92e05', 'e5a8d7c1-4522-4732-abf4-facad00b4fa', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 2),
('460e3a10-5e3a-415b-a1b6-136a9949195', 'df17ab74-e0c3-430f-9fc5-158a6bf9571', 'ab042a77-8226-41aa-883c-72907f0135e', 1, 150, 7.5, 0),
('467358ea-b829-4268-aa69-0e698f35f96', '90f2ca2d-5792-4492-8185-8802b23e6b1', '3f8aab71-fa01-4e74-919c-1d33140efe8', 1, 200, 0, 2),
('4944a4ba-77c3-4a76-8778-aa4c8d66957', 'f3b115fb-9bf6-446b-bcc1-d8925ee1b76', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0.05, 2),
('4999e869-ab75-4894-95ea-5b70106733e', '36eed7c5-598a-402c-93a0-713fb61891e', '3f8aab71-fa01-4e74-919c-1d33140efe8', 1, 200, 0, 2),
('4a595dc6-9133-49fd-8e55-f878c250dab', 'f258d8db-da83-443b-ae22-35c6201b958', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', 5, 200, 0, 0),
('4a7c8f65-d70d-489e-8a60-59985d70d5eb', 'a2337d6f-e469-4d18-9a67-c3a9bc11c7a9', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 1200, 0, 0),
('50219376-a29a-4c48-8e18-5403361e54b', 'f7cf5e41-8ec3-442b-a356-7fffa966696', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0.5, 0),
('514daa83-6704-43c0-9dce-818796c0a3c', '24fa2b31-ed7b-4365-9d1c-c7e23c74aea', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('51716102-7497-4e99-b04d-e435668b593', '645b8f57-6950-4601-91ae-eafe8b5615b', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('52ee46aa-a9b8-4434-9264-1c913e77d73', 'e577af1f-b0bb-458e-bea5-a29c8a5da1e', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('5372b960-1f5b-479b-9b4e-90c2d93ce51', 'df17ab74-e0c3-430f-9fc5-158a6bf9571', 'ab042a77-8226-41aa-883c-72907f0135e', 3, 150, 22.5, 1),
('53b0dd9f-219b-4c68-ad36-f39f404ba8d5', 'abe02a16-2f48-434a-b730-b827459b0c6a', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', 1, 200, 10, 0),
('54b135c2-0c64-44f3-9b5b-9718fd0bf9c', '0896fb06-5d63-4c7f-b00d-1b3530fb056', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('54c50fbb-a1ad-45fc-9036-e9991570765', '8b9292f3-db93-43f2-8ee7-caf62ad750f', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 1, 20000, 2000, 0),
('54e01a12-e81a-4253-bbd8-831a1a1114d', '7ad0f284-f630-438c-8600-71c743687e8', '829771a2-245a-11e9-a14f-588a5a24e72', 3, 3000000, 450000, 0),
('552686ea-432d-46c7-bf4e-dad54b19b8f', '90f2ca2d-5792-4492-8185-8802b23e6b1', '3f8aab71-fa01-4e74-919c-1d33140efe8', 1, 200, 0, 3),
('555af63a-5779-4f12-af49-8c33dd99128', '5740ce72-7403-4bad-8404-7d13fb58880', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 3, 10, 1.5, 1),
('577a2d4f-399c-457d-b033-e822fe33208', 'bda5894e-1d15-4fc8-8707-cf9f7ca6f20', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0.05, 2),
('5990757f-7fe3-4544-a737-21937a6b484', 'd80bddfd-bb33-479d-b66a-86c9ec3ee5c', '829771a2-245a-11e9-a14f-588a5a24e72', 2, 0, 0, 0),
('5bbebbb9-df5f-45a8-94c9-7aeae4ab40a', 'f5fd11f4-ce54-4189-8b69-cc1689958bf', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 186, 10, 0, 0),
('5bedd6a8-17ff-4e3d-b66f-3df524e88bc', '46deab67-cf33-494e-ae23-85c968e7f10', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 1, 20000, 2000, 0),
('5d64964e-1380-4255-b5c2-74344cd54f2', 'bc4fc6f8-0495-4f65-9d9a-66e5c006cd3', '3f8aab71-fa01-4e74-919c-1d33140efe8', 1, 200, 10, 0),
('5dfa58a4-12fc-4e51-827e-007e0be67e15', '37038848-60d5-43a7-b88a-72991d747dda', '689cd1c8-27af-4173-a774-7b8273461cb', 4, 100, 0, 0),
('5ea2cdfb-e640-4c96-a458-af9f3976309', 'd4051d97-bce8-46f4-9f1c-824094a67ee', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('60d3967e-ad88-47ed-a0eb-0d008f6a262', 'fe0d375a-e55d-44f7-a5f2-fc216557f30', '3947d4f6-de4c-466e-9697-2cd90619a2d', 1, 500, 0, 0),
('613448a9-6d06-4e33-a9a3-6a5a09adf96', '04ec4033-7f12-4904-a4c6-7042e749682', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', 1, 200, 0, 5),
('6168afbd-73ff-4c87-835e-4eba8bea312', '6a391b7c-2b26-4d84-af1e-9bbf9e7a8da', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 1, 20000, 2000, 0),
('6411ff25-1fa1-44ff-8067-c7095bf43ea', '90f2ca2d-5792-4492-8185-8802b23e6b1', '3f8aab71-fa01-4e74-919c-1d33140efe8', 1, 200, 0, 6),
('6419f157-e54d-487f-a4e9-e46135643ea', 'f3b115fb-9bf6-446b-bcc1-d8925ee1b76', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0.05, 0),
('644312e8-6278-4e5c-87b1-152baa2bea4', 'd88515d3-a5c1-4212-9957-31cb5c6b53a', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 1, 20000, 2000, 1),
('64e1554d-b4c9-47fb-b9ae-15a58075a1f9', 'c13a9ee3-43d0-41e3-97d6-cbdc0e3a3278', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 120, 6, 0),
('69a95deb-a5b0-4837-9899-4f50fde7d3c', '5dcb00d7-4505-4af9-b3ad-7df2ade0cdc', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('6be7c289-dd4f-4501-8e42-589f462398c', '5740ce72-7403-4bad-8404-7d13fb58880', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0.5, 0),
('6cecb948-d8ee-432d-b791-ee24f25bf54', '33f82c0c-101f-4751-8b2f-7d047ef17cf', '3947d4f6-de4c-466e-9697-2cd90619a2d', 1, 5000, 500, 1),
('6e5e9981-9cfc-43d7-9c42-bbabb47149d8', '5dab2a4a-0c2c-4541-af5f-a968358d7bca', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 120, 6, 1),
('6eccd8fe-ebd3-4d76-8b83-f659587f510', '4ac5c7a2-a6b7-4251-8ba3-5721dad4077', '8989189c-feff-449d-8aca-8aba3cd72d1', 2, 500, 50, 0),
('70c53cbc-db69-4b9f-8dd4-aad53f1df7c', 'bd337eb6-378e-4b07-b068-998b70a1ba7', '8aa3a96c-fa31-424e-940e-15020b1e564', 1, 100000, 0, 0),
('70e749a7-09b2-4a42-bdca-ebf549d879c', '840e1e55-6236-4e8e-8b7a-3a7ee8a7c83', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('714446cc-0d59-43ff-a58e-63cd01c24cc', 'add9e743-6448-4e33-a68f-89289421e6d', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('73cabebd-8389-40ec-8dad-ceaca8a7821', '5e954f3f-f4d2-489b-9c09-ced660fc071', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('756769a2-4102-4eda-8e02-b472e3c084b', 'fcd8f829-da91-4940-8778-36a6fbd5a8a', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('75be6734-742e-4f6d-bc83-d52172e5489', '712bf1a6-4933-4fa0-bbe3-0eb086e3903', '3947d4f6-de4c-466e-9697-2cd90619a2d', 20, 500, 1000, 1),
('76dc2309-e4c8-4140-ae47-acf4777d15bb', '2cc0b6b1-dbe6-4abf-bfe3-303d24f0c7df', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', 1, 200, 0, 0),
('79998c51-bce1-4f00-b8d6-cef275f12b9', 'bc162fe3-4c83-4a7e-9c64-71cb1c89457', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0.5, 0),
('7a393ddd-4730-4bb0-a0d0-336ddd51acc', 'af5ed148-3e06-4640-9ea3-c9ea54f2d4b', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 20, 20000, 40000, 0),
('7c8d6543-b4db-483c-9c5b-3dc26450bc9', '679b498a-23d7-413d-bb97-3c97875ab58', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0.5, 0),
('7cd7766c-9845-4a13-ae54-edb6eb6b28e', '2d3c04e4-8174-44ba-987d-82855de3e18', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 1, 20000, 2000, 0),
('7d27cf64-2f62-4f2d-80d7-4f1788b96fb', '7def2548-b022-429b-93e8-3cac55888fc', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('7d61d2ab-ea8b-4780-93c6-d679b7ab44f', '8a6d7715-2e4c-49f2-ae19-61a37920975', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('7d998e8e-585d-4f33-ab16-b9fba780e4c', '4ae3a2ad-f576-42c4-a505-cc5e9c0c073', '8989189c-feff-449d-8aca-8aba3cd72d1', 2, 500, 50, 0),
('7e30a9fc-57de-4e76-8135-7cc63bab9958', 'a6934cfa-6f34-4d85-8923-f56fea9d6262', '8aa3a96c-fa31-424e-940e-15020b1e564', 3, 100000, 15000, 0),
('7e8e72df-d5cc-4263-a793-9392c87c2763', '8180be8b-c7da-4af6-a7f7-bc4eb2796697', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 10, 0, 0),
('7f735579-113b-4206-8b9d-1372b35e336', 'd214321f-ff09-4866-be13-2cd62f2c22f', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 10, 20000, 20000, 0),
('7fab4a9d-5631-4add-ad12-f4edbc1a0df', '4f2fe493-dd8d-4ac3-b867-3a10699381d', '3947d4f6-de4c-466e-9697-2cd90619a2d', 41, 0, 0, 0),
('85d5e8f5-ddce-4a9d-b902-add3c74c7f1', '0eeeead6-c667-4eb6-8761-4df03155578', '3f8aab71-fa01-4e74-919c-1d33140efe8', 1, 200, 0, 0),
('870799d3-4120-455a-b5a0-aae0c87aefa', '839cfc92-aa60-418a-bb89-55be294cbc9', '3947d4f6-de4c-466e-9697-2cd90619a2d', 1, 500, 0, 0),
('87bcef2f-1700-4900-b357-98f118e67f43', 'af52694e-d46e-4cd9-ba7f-394fec8ab5fe', '98cca098-9adf-44b4-ae28-cc066f6c369', 1, 10, 0.5, 1),
('88c58526-c3b1-45d4-93a8-7c8f5ea51393', 'f9e4ccb9-4d78-4f06-8c48-b1a42d5d7f19', '7fa15757-e571-4387-b3b2-5a328a5f529', 1, 1000, 50, 0),
('8903b688-c3b8-4fa3-9b10-24b060af4c0', '9bf7fb12-e608-4b2a-8210-05245cb1a6d', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('8be18dc7-3fcb-496a-8422-3fb77a8ab7a', '2ffe62ed-1e08-4cb7-8a13-442fc5540ea', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 0, 0, 0),
('8c41c02f-c866-4237-bee5-6237ae880ec', '4ae3a2ad-f576-42c4-a505-cc5e9c0c073', '8989189c-feff-449d-8aca-8aba3cd72d1', 2, 500, 50, 1),
('8e17b991-4eea-400d-b633-6a98773e429', '51f8f610-54a3-4a9e-9404-1d280820343', 'ab042a77-8226-41aa-883c-72907f0135e', 1, 150, 7.5, 0),
('8ebd0c64-14ed-479f-92d5-4bcb78476c6', '689ec08f-aafe-4b27-a1b7-24b9b4242c9', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0.5, 0),
('8fa08d6e-1d99-4851-b5eb-d34899b41b5', 'ad4e120c-5dd9-417a-827f-96633df8d60', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 2),
('8ff9a16b-4edd-4ed1-a73f-3c20b0c1104', '46d7dfe6-e1f6-411c-a7b8-824577f1230', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('909a7a27-7935-42cc-ab7c-271d1bb8b8b', '712bf1a6-4933-4fa0-bbe3-0eb086e3903', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 10, 10, 5, 2),
('91008349-b4e6-4cd5-afe2-25b9b15d507', 'f6f01ead-d821-4358-be06-db752277252', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('910ede1b-5adb-4b35-9125-6071a90da41', '515587f8-5728-474b-a27c-d61aae673a5', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 1),
('911a04ee-c0a7-42c9-8447-67daaeaf2ff', '90f2ca2d-5792-4492-8185-8802b23e6b1', '3f8aab71-fa01-4e74-919c-1d33140efe8', 1, 200, 0, 5),
('92fa1c31-9f94-435e-a29e-a05160624e4', '5740ce72-7403-4bad-8404-7d13fb58880', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 2, 10, 1, 2),
('93799fd0-d3d3-4b46-9bc6-1d7bd9b60d3', '90362628-9e05-404c-b7b0-aa6aa866f74', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('93b42a9e-d26b-4ca1-b1f1-a4ca7a4d039', '899d49cf-7183-4dab-93ac-e07aa5446c7', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0.5, 0),
('94d8abd1-f263-4ab6-ba52-992473ad838', '00b3a6f9-a36f-4047-a217-051d04bad48', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0.5, 0),
('9506593a-a42c-4d3a-ba04-ca58f70043b', 'c31eb8d2-b754-4f18-b3a2-9a96504b25f', '3f8aab71-fa01-4e74-919c-1d33140efe8', 2, 200, 20, 0),
('96366441-137e-4ea9-b0e0-c3819590bd4', '97e3788c-224b-4621-85ae-2a82d243f94', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 1),
('97663f17-b480-4365-8f81-0b4f20a6540', '64cd41cf-b01f-48e0-8fd9-17cd7b9133f', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 120, 0, 0),
('97f95626-9b0f-4e9e-b61b-bf1614a21c7', 'bda5894e-1d15-4fc8-8707-cf9f7ca6f20', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0.05, 2),
('98dc9261-2b3e-4846-a292-cdac8fe7790', '41fb608c-3eb8-4f75-a92c-8d631f9e240', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('9917c227-81f3-4786-ba92-ebcd39f94bb', '366ec6ee-b05f-442f-a6db-4db2911bb10', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 1, 50, 5, 1),
('991bbf49-583d-4f02-ab00-e437017f268', 'f830c199-5406-4337-94b5-1f0ebe25d87', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0, 0),
('996696f2-7c68-4bdd-83c5-fd99224ae5c', 'd88515d3-a5c1-4212-9957-31cb5c6b53a', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 1, 20000, 2000, 0),
('99d5d257-fee5-4438-af4b-670e16525c8', '97e3788c-224b-4621-85ae-2a82d243f94', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('9bf35af4-5252-4a3d-9948-2a83c60dc99', '62dee4e9-93dd-4a1e-a6f8-48892d9baa3', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 1),
('9c3bb60d-1705-4f93-870b-437fe5938484', 'ae382098-7463-47f2-bda0-9a5fc37f45ae', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0.5, 0),
('9da0e787-a281-4cc6-ab20-38013ee3e33', 'bda5894e-1d15-4fc8-8707-cf9f7ca6f20', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0.05, 1),
('9dfd5c8d-0abb-43aa-9137-3e84a35c4154', '5dab2a4a-0c2c-4541-af5f-a968358d7bca', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', 1, 200, 10, 0),
('9e6ec6d7-e567-4fe2-8f4f-0f120c5d46d', 'ee462121-5624-44f2-b861-3074ec67f70', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 0, 0, 0),
('a0ba2c8c-b44c-4853-b0f0-9860ae11340', 'e9518cb2-3dbe-4e19-b06d-3fd6a243d6b', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('a2041768-5d2b-4f05-afdb-ca9db1fedb9', '36eed7c5-598a-402c-93a0-713fb61891e', '3637492e-dce5-45c3-aa7e-d195e7a33ab', 1, 1, 0, 0),
('a24d9807-5738-41c4-998a-ad0fffde743', '13af9ee3-39eb-4307-96a9-344432ee33d', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('a3541661-f7b8-47e3-9d97-5be6d9e3554', 'bda5894e-1d15-4fc8-8707-cf9f7ca6f20', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0.05, 3),
('a5fd6cc0-af3b-44f0-980c-54249167a4a', '97d1a7ac-6d9b-4e63-bb2e-f3b5688cdf5', '3637492e-dce5-45c3-aa7e-d195e7a33ab', 2, 0.00001, 0.000001, 0),
('a80d53bb-122c-43e9-8a51-20d95b8e379', '0c5bf6ca-2eb2-473d-afa1-f454bfaab6a', '689cd1c8-27af-4173-a774-7b8273461cb', 1, 100, 0, 0),
('ab4ee3ab-dc3a-49df-81eb-bc334c417839', '6b441e45-bf5f-4131-b9ce-c98201f1babf', '689cd1c8-27af-4173-a774-7b8273461cb', 3, 100, 0, 0),
('ae3ae7d0-e8a4-4d72-a6c1-38be35d9800', '01cbc026-b319-43d4-8db1-cf3315714e4', '11964231-6d2a-46e6-a833-79d1619d60e', 4, 10, 0, 0),
('aeb497c4-82e8-4434-bd53-794e42b0c01', 'e11f997c-f220-4f36-a4fc-dae7bbe8dbf', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0.5, 0),
('b22d22fe-bae7-4c37-947f-5149c07ffc8', '1f4c1de5-1ac9-4247-b061-76c081e30c1', 'ffb92995-05b4-4a59-b18b-e206abd95a5', 2, 1, 0.1, 1),
('b3213e8a-63c6-4eaa-b862-087d86637c8', 'e486496e-4173-4aba-b861-35fa52aba62', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('b64af203-e39f-482b-bc83-75391aab550', 'd5754d68-f30f-4a01-8c60-a230e680116', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('b834a9c5-e1c0-4805-90cb-50c5ea5d82ec', '86421482-d7e3-4c19-a046-077e32f0b9ff', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 10, 0.5, 1),
('b93b8bb3-d759-4cb9-9773-56d78d60ea7', '3a6b11bc-e60c-4676-95c1-05842f902d7', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 1, 20000, 2000, 0),
('b9f8af97-cf42-41ca-abff-4eb5c0d8e00', '36eed7c5-598a-402c-93a0-713fb61891e', '3f8aab71-fa01-4e74-919c-1d33140efe8', 1, 200, 0, 3),
('ba95e05b-102a-49a5-8249-ec55a7f0227', 'eb0a896d-ead9-4e6b-9277-986aa17d085', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('baee5064-1173-4173-8f59-820e673d263', '515587f8-5728-474b-a27c-d61aae673a5', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('bc83c9d7-dd6a-4a5e-9e9b-6519b58b81f', '90f2ca2d-5792-4492-8185-8802b23e6b1', '3f8aab71-fa01-4e74-919c-1d33140efe8', 1, 200, 0, 1),
('be20c590-810d-4b8c-8a34-277f08e73e6', '9f14e1b5-b5d4-4e2f-a138-58451889a4e', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0.5, 0),
('c0ec2148-60bf-4239-b15a-4d24768a9e8', '7bac97e2-f3eb-4518-bc3d-96e61c0195b', '11964231-6d2a-46e6-a833-79d1619d60e', 5, 10, 0, 0),
('c114f406-ecdc-4e53-823f-33f56775d01', '32fa7f88-024b-4f33-826d-2b7af15e1d4', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 120, 6, 0),
('c1ac7ca1-0c13-4a86-b3f1-6a59dba1354', 'e718e5b5-05b5-4cd1-a157-96874c847fa', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0.05, 2),
('c22bace7-3324-4f24-9193-d8110af2e28', 'f7cf5e41-8ec3-442b-a356-7fffa966696', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 1),
('c2cb0d51-e1e4-4576-ab12-7215a2c411b', 'ce117b72-7de1-4080-b108-a5b5611f851', 'ffb92995-05b4-4a59-b18b-e206abd95a5', 2, 10, 1, 1),
('c3d7789e-bd45-4c16-bab0-6514782445c', '442856ae-61f8-4aab-89a6-1322adb06bb', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 1200, 60, 1),
('c8976cc0-c725-475d-81c0-2ba6943ca2d', '163f28ae-5e7d-41e0-b9bb-16245db66a9', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 0, 0, 0),
('ca0ade92-3894-4774-a61f-a4196b0ce27', '84ec6a22-a10d-406b-abe7-85e3677af46', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('cbdc7c14-6277-4489-bad5-280b3a42fbe', 'cb21bbc7-7118-4d80-888a-a26415bf2ec', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('cc62abf1-665c-42d1-b031-a3022dbe72c', '839cfc92-aa60-418a-bb89-55be294cbc9', '3947d4f6-de4c-466e-9697-2cd90619a2d', 1, 500, 0, 2),
('cd4ee5a2-e52c-4f5b-bdaa-0541b79d3ee', '30b66930-64fe-482a-ae50-bb0f0026396', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('d00d7a67-2338-4251-9b07-eb7cbd3dc6cc', 'af52694e-d46e-4cd9-ba7f-394fec8ab5fe', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 120, 6, 0),
('d11cbc16-b1a9-487d-9d68-804bb4cb1bec', '16011328-52e4-4bc9-a419-10aeaa6b4b2f', '7fa15757-e571-4387-b3b2-5a328a5f529', 1, 1000, 50, 0),
('d16b886f-e546-4f71-866b-45107042181', '90f2ca2d-5792-4492-8185-8802b23e6b1', '3f8aab71-fa01-4e74-919c-1d33140efe8', 1, 200, 0, 0),
('d1c4164f-2766-4a4f-b053-1ef400d556e', '355655bd-8fbe-467e-8479-e46188b6e5c', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('d30884d5-0c0c-47b8-89e0-6445a873631', 'e718e5b5-05b5-4cd1-a157-96874c847fa', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0.05, 1),
('d35a2a2f-fd7c-4595-8df1-af3e7ffe6f9', 'ce117b72-7de1-4080-b108-a5b5611f851', 'ffb92995-05b4-4a59-b18b-e206abd95a5', 1, 10, 0.5, 0),
('d5fd2d2c-ecd0-47a7-b9a6-489c1f2afff', '3188ec17-7f6f-4ed7-aaa9-1c401627fef', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('d6bde27c-e8d3-4fe3-b996-1ad2ed583cd', '352bd8a0-0cf0-4753-92cd-f7a3bc6871d', 'aa78c2fe-1f1c-4ae4-8a8e-40cac3d7d29', 1, 200, 10, 1),
('d71182d4-099b-4e24-bff3-36f5d038463', '12c44f75-c160-411c-8114-a2446c703c3', '8989189c-feff-449d-8aca-8aba3cd72d1', 2, 500, 50, 1),
('d744303a-1a0e-45cb-a72e-d5ed1e5b9b1', '86795b03-0393-4a00-9d98-c6b9cae909c', 'aa78c2fe-1f1c-4ae4-8a8e-40cac3d7d29', 1, 200, 10, 0),
('d9fe347f-3344-4f60-ba0f-49751ec3ecee', 'a2337d6f-e469-4d18-9a67-c3a9bc11c7a9', '03e14e51-7a26-4495-b852-79031aa2e01a', 1, 1000, 0, 1),
('db2f4459-4bdc-4ff4-82a8-a499ae011fa8', 'd422b2de-1204-494d-876c-e2654fbc0b75', '486bad3d-4afe-46f2-86b2-1dd9b850738', 1, 1000, 50, 0),
('dc97fb1c-af06-4ffa-87eb-196a25fad95', '28a34663-b04f-4fc3-9463-7d95dc0cc5e', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('dcb46a6c-e726-42ab-907a-d0cbd502c16', '04ec4033-7f12-4904-a4c6-7042e749682', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', 1, 200, 0, 2),
('dcf58d81-579c-47c2-b6aa-8dd0786864b', '0ab8e45e-0ec8-4e36-bb06-119197eeac1', '829771a2-245a-11e9-a14f-588a5a24e72', 500, 0, 0, 0),
('ddbb4b89-9a1e-433c-b6a4-57019b8fa33', '36eed7c5-598a-402c-93a0-713fb61891e', '3637492e-dce5-45c3-aa7e-d195e7a33ab', 1, 1, 0, 1),
('e1e03b1b-a4ec-4688-98be-51bcb0048f28', 'c98aa049-2695-4c45-bbea-cb93e09c290a', '7fa15757-e571-4387-b3b2-5a328a5f529', 1, 1000, 50, 0),
('e43683c3-f7bc-451e-be54-53e7e500c596', 'e093240e-1ac0-4e59-82d5-f72c0b3d56e5', '7fa15757-e571-4387-b3b2-5a328a5f529', 1, 1000, 50, 1),
('e61ec53b-f394-4677-bd62-1df006d4336', 'f6619227-0e2b-4bdc-8da2-4e9195fdbe9', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('e6555f6c-280c-4809-9235-fea6c6cb764', '93e7ead4-2e62-49d4-b7ac-8b98ef22ecc', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('e77405fd-a93e-4889-8dbb-fbd33df2ddc', '04ec4033-7f12-4904-a4c6-7042e749682', '3f8aab71-fa01-4e74-919c-1d33140efe8', 1, 200, 0, 0),
('e81cb7d7-1cb5-44b7-89a8-3d8b635150f', 'd38f4cd0-3054-48b3-b7c6-bc1eebaa517', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('e8ddb3b4-e71a-4e27-bf41-d3f10166eed', '13b353aa-ad11-4e57-a1ce-837f371df52', '3f8aab71-fa01-4e74-919c-1d33140efe8', 1, 200, 10, 0),
('ea698013-8fc8-4d09-aff1-fc9fb14b8a2a', 'f01dedb4-046e-4dff-9a65-4e33c4e1417c', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0.5, 0),
('eaac9473-d9ed-4269-85b5-3ed583cf00d', '689ec08f-aafe-4b27-a1b7-24b9b4242c9', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 5, 20000, 10000, 2),
('ead66840-6176-4a35-9ca7-b55b8f1086c', 'b6290ce2-cd90-4940-adba-1d61cbc6062', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0, 1),
('eca3d240-d9cc-4fe6-a9ae-7ae105d1053', '32fa7f88-024b-4f33-826d-2b7af15e1d4', '3f8aab71-fa01-4e74-919c-1d33140efe8', 0, 200, 0, 1),
('ecbfcc9a-bfa5-4c3b-950e-3e666aed8ea', 'bb82d038-1430-4090-b8d7-299c0e53b68', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 2),
('ed3349ea-1baf-4ab8-b3e3-f76edc2e3cbc', 'f01dedb4-046e-4dff-9a65-4e33c4e1417c', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 1, 20000, 2000, 2),
('edd3992d-54e0-45eb-9e31-4e0028cf533e', '86421482-d7e3-4c19-a046-077e32f0b9ff', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 120, 6, 0),
('ee5b2155-c015-4714-800c-f1307770a8a', '04ec4033-7f12-4904-a4c6-7042e749682', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', 1, 200, 0, 4),
('f0822315-a2da-4eba-928f-70cc1b2485f', '70703d6b-205a-41c7-9863-a17f8e976fb', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 0, 0, 0),
('f19ac95b-8800-4c71-8d02-002689994ea', '51f8f610-54a3-4a9e-9404-1d280820343', 'ab042a77-8226-41aa-883c-72907f0135e', 1, 150, 7.5, 1),
('f1b473b0-d2a6-4e76-b740-666f84254e6', 'f3b115fb-9bf6-446b-bcc1-d8925ee1b76', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 10, 0.5, 1),
('f248c5ce-015e-4af5-bbf3-ac2f38949a4', '689ec08f-aafe-4b27-a1b7-24b9b4242c9', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 1),
('f30a1549-48a6-4a49-8d7a-9c57fdc4422', 'bd337eb6-378e-4b07-b068-998b70a1ba7', '8aa3a96c-fa31-424e-940e-15020b1e564', 1, 100000, 0, 1),
('f425b5fb-0356-4c49-ad83-e8fdbd3825c', '86795b03-0393-4a00-9d98-c6b9cae909c', 'aa78c2fe-1f1c-4ae4-8a8e-40cac3d7d29', 3, 200, 30, 1),
('f42b2852-f0f5-4005-82f9-0d2290b860e', '5152bf68-eea4-4259-afc3-c635bd92ab4', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('f506082e-249f-45ba-8d2b-243927e5e97', '79cb7eda-90c7-4271-a65c-b6ecc7fbadf', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0.5, 0),
('f6e08a46-a053-4256-9ccf-13fed43ae45d', '63936e8d-0250-4e0a-8875-62352596fd57', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 120, 6, 0),
('f7b9d72b-ced0-40da-a95f-19404e5d976e', 'ae382098-7463-47f2-bda0-9a5fc37f45ae', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', 1, 200, 10, 1),
('f7e4053a-4ea4-47a3-a887-2e23bc3a65d', 'd610448c-6e78-4c5c-bca5-3d11bc40004', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0, 0),
('f834019d-9cab-402e-8d85-74128c99723', '51f8f610-54a3-4a9e-9404-1d280820343', 'ab042a77-8226-41aa-883c-72907f0135e', 2, 150, 15, 2),
('f85e82da-4105-40bf-bd3e-8558e955862', 'e5a8d7c1-4522-4732-abf4-facad00b4fa', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('f8e6420c-e4ba-450d-9a58-b1f29c2b2c6', '90f2ca2d-5792-4492-8185-8802b23e6b1', '3f8aab71-fa01-4e74-919c-1d33140efe8', 1, 200, 0, 4),
('f9f80739-db30-4ae9-a61d-7e5656e674c', '46d7dfe6-e1f6-411c-a7b8-824577f1230', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 1),
('fc815a8c-a0b4-402c-9ee5-a80bc75d161', 'fa017c3b-4e84-4f28-83c8-ac6446c7ffd', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 1, 20000, 0, 0),
('fd7bf961-31dc-4742-835b-80ec9dd6582', '04ec4033-7f12-4904-a4c6-7042e749682', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', 1, 200, 0, 3),
('fe4b56be-74cb-4fba-9699-34159dd32d8b', 'f01dedb4-046e-4dff-9a65-4e33c4e1417c', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 120, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Orderpayment`
--

CREATE TABLE `Orderpayment` (
  `id` varchar(36) NOT NULL,
  `orderId` varchar(36) NOT NULL,
  `paymentMethod` varchar(30) NOT NULL COMMENT 'Cash, Credit, Card, Cheque, Wallet, Other, Balance',
  `recievedAmount` double NOT NULL,
  `paymentDate` date DEFAULT NULL,
  `Notes` longtext,
  `series` int(11) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Orderpayment`
--

INSERT INTO `Orderpayment` (`id`, `orderId`, `paymentMethod`, `recievedAmount`, `paymentDate`, `Notes`, `series`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('00b949b1-8d9c-4e5a-bb36-ad1ce2316d79', 'd856874a-61a5-4e46-9f68-4ed219a1e57a', 'Cheque', 37, '2019-04-10', '', 0, '2019-04-10 12:05:39', '2019-04-10 12:05:39', 1, 1),
('00b949b1-8d9c-4e5a-bb36-ad1ce2316s71', 'e7958d58-42be-421f-9328-26fe2ebe9af', 'Cash', 100000, '2019-02-01', 'abc', 0, '2019-02-05 12:21:06', '2019-02-05 12:21:06', 1, 1),
('01553233-250c-499c-8f5f-a245e873c47', '24fa2b31-ed7b-4365-9d1c-c7e23c74aea', 'Cash', 100, NULL, 'mn', 0, '2019-02-09 03:33:30', '2019-02-09 03:33:30', 1, 1),
('06cab148-3ceb-4823-980c-5919055852ea', '86421482-d7e3-4c19-a046-077e32f0b9ff', 'Cheque', 37, '2019-04-10', '', 0, '2019-04-10 11:14:35', '2019-04-10 11:14:35', 1, 1),
('0ea2e011-2b73-4ddb-87a4-19502c6a6f7c', 'f01dedb4-046e-4dff-9a65-4e33c4e1417c', 'Cash', 20800, '2019-04-10', '', 1, '2019-04-10 06:52:54', '2019-04-10 06:52:54', 1, 1),
('1056189f-0bf1-434b-9c88-51a08efa77c', '39c03ec3-e00d-4080-b2a3-98fccbd2116', 'Cash', 20000, '2019-03-11', '', 0, '2019-03-11 03:51:54', '2019-03-11 03:51:54', 1, 1),
('1334d559-bf7f-4e17-91ea-0c42f4ca7d6', '442856ae-61f8-4aab-89a6-1322adb06bb', 'Cash', 500, '2019-03-02', '', 0, '2019-03-02 00:26:40', '2019-03-02 00:26:40', 1, 1),
('14e50d42-6a6a-454b-ae7b-9f08cd9cc63d', 'abe02a16-2f48-434a-b730-b827459b0c6a', 'Cash', 200, '2019-04-10', '', 1, '2019-04-10 06:52:54', '2019-04-10 06:52:54', 1, 1),
('165965de-a420-4921-9054-dfa3a5ead69c', 'e29f8156-092b-4c41-95ad-a53f3d32c2ff', 'Cash', 50000, '2019-04-12', '', 0, '2019-04-12 12:07:29', '2019-04-12 12:07:29', 1, 1),
('188f7c5b-c3de-4a26-8f3c-dd362ef81821', 'c13a9ee3-43d0-41e3-97d6-cbdc0e3a3278', 'Cash', 100, '2019-04-10', '', 1, '2019-04-10 06:45:24', '2019-04-10 06:45:24', 1, 1),
('20d776d5-27de-47ab-a5fc-098ef78ebae2', 'f01dedb4-046e-4dff-9a65-4e33c4e1417c', 'Cash', 600, '2019-04-10', '', 5, '2019-04-10 07:07:38', '2019-04-10 07:07:38', 1, 1),
('269f3f23-379d-4a27-8c4d-93e58c9284e', 'da3b1338-199f-42c9-b66c-82af631caa3', 'Wallet', 0, '2019-02-05', 'sdf', 0, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('2a3943ae-c54d-49c8-94c8-f2bec664d7bd', '33eac745-36aa-42c0-ae11-057e84bdb4de', 'Balance', 126, '2019-04-08', '', 0, '2019-04-08 08:56:38', '2019-04-08 08:56:38', 1, 1),
('2d492399-bd04-460a-b8ca-0bfefb445b3', 'e5a8d7c1-4522-4732-abf4-facad00b4fa', 'Cheque', 150, '2019-02-12', '', 2, '2019-02-12 01:37:26', '2019-02-12 01:37:26', 1, 1),
('30b2204b-f252-40b3-8c3a-35152560742', 'add9e743-6448-4e33-a68f-89289421e6d', 'Wallet', 0, '2019-02-05', 'd', 0, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('38e6b104-6478-4193-9a62-81098319e78', '24fa2b31-ed7b-4365-9d1c-c7e23c74aea', 'Cash', 200, NULL, 'm', 0, '2019-02-09 03:33:30', '2019-02-09 03:33:30', 1, 1),
('38f8043b-7461-49d7-aa6f-7f9784833a7', '97e3788c-224b-4621-85ae-2a82d243f94', 'Cash', 100, '2019-02-12', '', 0, '2019-02-12 02:17:26', '2019-02-12 02:17:42', 1, 1),
('3ea80658-a5b3-4c69-a879-8718a8db778a', 'ae382098-7463-47f2-bda0-9a5fc37f45ae', 'Cheque', 100, '2019-04-10', '', 0, '2019-04-10 11:15:30', '2019-04-10 11:15:30', 1, 1),
('3f62fdf7-1515-4e9d-87b0-ce6c443b3fc0', '37038848-60d5-43a7-b88a-72991d747dda', 'Cash', 400, '2019-04-12', '', 0, '2019-04-12 07:59:28', '2019-04-12 07:59:28', 1, 1),
('41c4e61f-1607-4fe3-ae04-ed49572d377', '355655bd-8fbe-467e-8479-e46188b6e5c', 'Cash', 100, '2019-02-15', '', 0, '2019-02-15 01:12:49', '2019-02-15 01:13:33', 1, 1),
('432e3ba6-4e3a-4f76-925a-ae55abc1650', '3188ec17-7f6f-4ed7-aaa9-1c401627fef', 'Cash', 315, '2019-02-09', NULL, 0, '2019-02-09 05:49:09', '2019-02-09 05:49:09', 1, 1),
('4727ed70-26f4-4791-b85c-7bbe6326c56', '163f28ae-5e7d-41e0-b9bb-16245db66a9', 'Cash', 0, '2019-02-05', 'dsf', 0, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('4d786ab6-f92a-4081-8e1a-f6a9739d688', '30b66930-64fe-482a-ae50-bb0f0026396', 'Cash', 500, '2019-02-12', '', 0, '2019-02-12 00:26:06', '2019-02-12 00:41:14', 1, 1),
('4df1084d-3e66-4bd8-95cc-69a44e3a839', 'bb82d038-1430-4090-b8d7-299c0e53b68', 'Cash', 50, '2019-02-09', '', 0, '2019-02-09 06:50:53', '2019-02-09 06:50:53', 1, 1),
('5a0ed14c-df85-4821-ad99-7184bde38717', 'f01dedb4-046e-4dff-9a65-4e33c4e1417c', 'Cheque', 137, '2019-04-10', '', 0, '2019-04-10 12:22:33', '2019-04-10 12:22:33', 1, 1),
('5c459a7a-d365-48ff-8c19-3d5ad4cd2e9b', 'e6919ae6-4489-4d1a-b55a-0c25350e285b', 'Cash', 126, '2019-04-10', '', 0, '2019-04-10 06:32:57', '2019-04-10 06:32:57', 1, 1),
('5d0d90e2-1fe3-4a4c-8f82-b843fea7c8f', '352bd8a0-0cf0-4753-92cd-f7a3bc6871d', 'Cash', 130, '2019-03-13', '', 0, '2019-03-13 08:34:40', '2019-03-13 08:34:40', 1, 1),
('5d12f7e3-e6fd-4d12-a0fe-01644b85ba90', '16011328-52e4-4bc9-a419-10aeaa6b4b2f', 'Cheque', 260, '2019-04-10', '', 0, '2019-04-10 12:44:57', '2019-04-10 12:44:57', 1, 1),
('5d310e09-179e-46c7-a8bc-b98684ceb49', '90362628-9e05-404c-b7b0-aa6aa866f74', 'Cash', 284, '2019-02-11', NULL, 0, '2019-02-11 08:17:16', '2019-02-11 08:17:16', 1, 1),
('5d891f86-2d2f-4acf-8909-92c952e0022', 'f4351323-c279-4175-8eb6-00e54741b80', 'Cash', 315, '2019-02-12', NULL, 0, '2019-02-12 01:51:51', '2019-02-12 01:51:51', 1, 1),
('65a536b7-8b70-4775-a5f7-ed85a5f82e9', '7def2548-b022-429b-93e8-3cac55888fc', 'Cash', 315, '2019-02-11', NULL, 0, '2019-02-11 08:47:02', '2019-02-11 08:56:54', 1, 1),
('6611befa-fa2d-4565-a67f-177910c1a9a8', '50ca21ea-f096-49ca-9f97-56462a1121d3', 'Cash', 300, '2019-04-10', '', 2, '2019-04-10 07:16:36', '2019-04-10 07:16:36', 1, 1),
('6c2e7246-bcda-4c9a-ada0-fc7c99842b1', 'af5ed148-3e06-4640-9ea3-c9ea54f2d4b', 'Cash', 440228, '2019-02-16', '', 0, '2019-02-16 00:42:59', '2019-02-16 00:42:59', 1, 1),
('6ef88f26-e526-4c0e-802e-6d4a8095ac0', 'ce117b72-7de1-4080-b108-a5b5611f851', 'Cash', 12, '2019-03-13', '', 0, '2019-03-13 08:41:06', '2019-03-13 08:41:06', 1, 1),
('6f048bcf-28cc-470a-9880-79a558e6639', 'df17ab74-e0c3-430f-9fc5-158a6bf9571', 'Cash', 130, '2019-03-13', '', 0, '2019-03-13 07:45:14', '2019-03-13 07:45:14', 1, 1),
('76b7a966-9734-492e-9c69-24cc265651d1', 'af52694e-d46e-4cd9-ba7f-394fec8ab5fe', 'Cheque', 37, '2019-04-10', '', 0, '2019-04-10 12:11:54', '2019-04-10 12:11:54', 1, 1),
('775f78fb-efa8-410d-8ff8-ae869c14248', '5e954f3f-f4d2-489b-9c09-ced660fc071', 'Cash', 315, '2019-02-09', NULL, 0, '2019-02-09 05:48:31', '2019-02-09 05:48:31', 1, 1),
('7839f45d-024a-4f95-bc35-49aa2b93590', 'e5a8d7c1-4522-4732-abf4-facad00b4fa', 'Cash', 150, '2019-02-12', '', 1, '2019-02-12 00:47:26', '2019-02-12 01:37:26', 1, 1),
('7967316b-a344-4f6f-967c-062651b1c41', 'bb82d038-1430-4090-b8d7-299c0e53b68', 'Cheque', 100, '2019-02-09', '', 0, '2019-02-09 06:50:53', '2019-02-09 06:50:53', 1, 1),
('79b88ee5-6a3d-4eb9-bfa7-3479249d908', 'e5a8d7c1-4522-4732-abf4-facad00b4fa', 'Cash', 150, '2019-02-12', '', 0, '2019-02-12 00:47:26', '2019-02-12 01:37:26', 1, 1),
('810baa6e-afaf-49b1-a160-6641c40adb38', 'a2337d6f-e469-4d18-9a67-c3a9bc11c7a9', 'Cheque', 1000, '2019-04-26', 'cheque no is 0123456789', 0, '2019-04-26 12:29:03', '2019-04-26 12:29:03', 1, 1),
('82f16a18-46c0-4385-891c-ff85eb7438b', 'c31eb8d2-b754-4f18-b3a2-9a96504b25f', 'Cash', 200, '2019-03-12', '', 0, '2019-03-12 13:50:24', '2019-03-12 13:50:24', 1, 1),
('8314e36a-a40e-49de-a84c-50315627fda2', 'abe02a16-2f48-434a-b730-b827459b0c6a', 'Cheque', 10, '2019-04-10', '', 0, '2019-04-10 12:20:02', '2019-04-10 12:20:02', 1, 1),
('88dee7f8-e410-4537-9e24-021be829d21', '3085c84c-283a-4467-ab59-0de24f235ef', 'Cash', 315, '2019-02-09', NULL, 0, '2019-02-09 06:57:48', '2019-02-20 03:16:24', 1, 1),
('8c398a0e-748e-4e0a-830e-25546efc2fb0', 'f9e4ccb9-4d78-4f06-8c48-b1a42d5d7f19', 'Cheque', 50, '2019-04-10', '', 0, '2019-04-10 12:14:52', '2019-04-10 12:14:52', 1, 1),
('8dfa912f-23fb-41f8-8662-24b81e04050', 'e9518cb2-3dbe-4e19-b06d-3fd6a243d6b', 'Cash', 315, '2019-02-12', NULL, 0, '2019-02-12 02:34:28', '2019-02-12 02:34:28', 1, 1),
('914830cf-ecda-4c21-bd6f-1b5c48835ef6', 'f9e4ccb9-4d78-4f06-8c48-b1a42d5d7f19', 'Cash', 100, '2019-04-10', '', 2, '2019-04-10 06:47:24', '2019-04-10 06:47:24', 1, 1),
('9203bec4-9d4f-43a0-836a-318fd2e68f1', '5dcb00d7-4505-4af9-b3ad-7df2ade0cdc', 'Cheque', 200, '2019-02-09', 'dsfs', 0, '2019-02-09 03:37:13', '2019-02-09 03:37:13', 1, 1),
('923e5ddf-8503-4818-83ea-f95fae81677', '28a34663-b04f-4fc3-9463-7d95dc0cc5e', 'Cash', 299, '2019-02-11', NULL, 0, '2019-02-11 08:08:29', '2019-03-01 05:07:31', 1, 1),
('93856166-ed48-4b21-beaa-59212f2330a3', '16011328-52e4-4bc9-a419-10aeaa6b4b2f', 'Cash', 1000, '2019-04-10', '', 1, '2019-04-10 07:15:46', '2019-04-10 07:15:46', 1, 1),
('9897feda-6ed7-46ea-8a52-23ae460618c5', 'f9e4ccb9-4d78-4f06-8c48-b1a42d5d7f19', 'Cash', 900, '2019-04-10', '', 1, '2019-04-10 06:45:24', '2019-04-10 06:45:24', 1, 1),
('9d2a7232-f27c-4ca2-8b99-459ee95ce6e', '899d49cf-7183-4dab-93ac-e07aa5446c7', 'Cash', 11, '2019-02-16', '', 0, '2019-02-16 01:59:53', '2019-02-16 01:59:53', 1, 1),
('a20619e0-44c1-492d-9a95-928e0fbb5763', 'e093240e-1ac0-4e59-82d5-f72c0b3d56e5', 'Wallet', 260, '2019-04-10', '', 0, '2019-04-10 12:12:20', '2019-04-10 12:12:20', 1, 1),
('a3715420-ea83-4485-8ebc-80724d3d019', 'ad4e120c-5dd9-417a-827f-96633df8d60', 'Cheque', 50, '2019-02-09', ',mn', 0, '2019-02-09 06:55:49', '2019-02-11 06:45:57', 1, 1),
('a4995308-8e38-43f4-b9d2-2380adb4d16', '4f2fe493-dd8d-4ac3-b867-3a10699381d', 'Credit', 20000, '2019-02-06', 'string', 0, '2019-02-06 00:55:12', '2019-02-06 00:55:12', 1, 1),
('aaa3fd56-2424-415c-958a-8ce8fdfa10b', '33a4e5ea-a417-44a7-8210-1fb67bd6828', 'Cash', 320, '2019-02-15', '', 0, '2019-02-15 00:59:17', '2019-02-15 00:59:17', 1, 1),
('ac5c0bc3-ee29-4b0d-a9c0-a9993e5d428', 'f6619227-0e2b-4bdc-8da2-4e9195fdbe9', 'Cash', 100, '2019-02-14', '', 0, '2019-02-14 02:58:01', '2019-02-14 04:31:09', 1, 1),
('b05c7c5a-ea58-4252-8c64-3c0c419d1e3', 'e486496e-4173-4aba-b861-35fa52aba62', 'Credit', 0, '2019-02-09', NULL, 0, '2019-02-09 04:56:56', '2019-02-09 04:56:56', 1, 1),
('b0eb0eb5-acab-420e-b4f7-e5690a2d39e', '8a6d7715-2e4c-49f2-ae19-61a37920975', 'Cash', 315, '2019-02-09', NULL, 0, '2019-02-09 07:07:36', '2019-02-09 07:07:36', 1, 1),
('b341a029-8b81-47df-baea-242404b9d55d', 'f01dedb4-046e-4dff-9a65-4e33c4e1417c', 'Cash', 200, '2019-04-10', '', 3, '2019-04-10 07:01:43', '2019-04-10 07:01:43', 1, 1),
('b83ff71a-21b2-46b6-a1e6-df54f97766f4', 'b7cd8448-3a74-4ba8-95cf-8703855e5aaf', 'Cash', 100, '2019-04-08', '', 0, '2019-04-08 08:33:00', '2019-04-08 08:33:00', 1, 1),
('b8786b1f-6f77-4a48-af68-efa666e6fe0', 'bb82d038-1430-4090-b8d7-299c0e53b68', 'Card', 489, '2019-02-09', '', 0, '2019-02-09 06:50:53', '2019-02-09 06:50:53', 1, 1),
('b92ab5f1-db6f-4b09-8337-6fec1d1ce1f8', '50ca21ea-f096-49ca-9f97-56462a1121d3', 'Cheque', 50, '2019-04-10', '', 0, '2019-04-10 12:45:15', '2019-04-10 12:45:15', 1, 1),
('ba3b824a-b8cd-4be8-829f-3443a4b796b', 'b282a7d9-3a95-4ac2-beb5-d7ae9426889', 'Cash', 350, '2019-02-18', '', 0, '2019-02-18 00:04:38', '2019-02-18 03:06:04', 1, 1),
('bb2d3f9d-0b22-4723-9f7c-37e127785eb', 'ad4e120c-5dd9-417a-827f-96633df8d60', 'Cheque', 100, '2019-02-09', 'n,mn', 1, '2019-02-09 06:55:49', '2019-02-11 06:45:57', 1, 1),
('c10a72a9-0e3b-4f97-8b6d-5fc7e17623d', 'bb82d038-1430-4090-b8d7-299c0e53b68', 'Card', 100, '2019-02-09', '', 0, '2019-02-09 06:50:53', '2019-02-09 06:50:53', 1, 1),
('c30bd7da-7776-4d64-905e-d502563ca61b', '5dab2a4a-0c2c-4541-af5f-a968358d7bca', 'Cash', 300, '2019-04-10', '', 1, '2019-04-10 07:23:32', '2019-04-10 07:23:32', 1, 1),
('c752db47-3eed-48d2-aa6e-7816290e5bc', '5dcb00d7-4505-4af9-b3ad-7df2ade0cdc', 'Cash', 100, '2019-02-09', 'ds', 0, '2019-02-09 03:37:13', '2019-02-09 03:37:13', 1, 1),
('c81ec9fb-8176-46dd-929e-79200e028186', 'c98aa049-2695-4c45-bbea-cb93e09c290a', 'Wallet', 50, '2019-04-10', '', 0, '2019-04-10 12:06:02', '2019-04-10 12:06:02', 1, 1),
('cd953dba-9531-4e71-8d5f-18525f7be93', '645b8f57-6950-4601-91ae-eafe8b5615b', 'Cheque', 0, '2019-02-07', 's', 0, '2019-02-07 06:13:22', '2019-02-07 06:13:22', 1, 1),
('d4c8a5d2-e0d9-4d25-b8c2-6317d1f2235', 'ad4e120c-5dd9-417a-827f-96633df8d60', 'Cash', 300, '2019-02-11', '', 3, '2019-02-11 04:06:30', '2019-02-11 06:45:57', 1, 1),
('db73577b-b8ae-43c3-af96-e15971dbeb5', '7abe2c6e-7521-4243-b314-329be287245', 'Cash', 100000, '2019-03-14', '', 0, '2019-03-14 11:10:41', '2019-03-14 11:19:34', 1, 1),
('dc14bc26-a121-4335-b40a-29039515e341', 'f01dedb4-046e-4dff-9a65-4e33c4e1417c', 'Cash', 200, '2019-04-10', '', 4, '2019-04-10 07:04:17', '2019-04-10 07:04:17', 1, 1),
('e1347042-d84f-4e44-a122-90a60d525d2f', '5dab2a4a-0c2c-4541-af5f-a968358d7bca', 'Cheque', 36, '2019-04-10', '', 0, '2019-04-10 12:53:11', '2019-04-10 12:53:11', 1, 1),
('e2e167a9-50c4-4bff-813c-f6135c8a3cc', '84ec6a22-a10d-406b-abe7-85e3677af46', 'Credit', 0, '2019-02-11', NULL, 0, '2019-02-11 08:37:46', '2019-02-11 08:37:46', 1, 1),
('e6dc134a-0b62-45a8-911c-fe190194b961', '50ca21ea-f096-49ca-9f97-56462a1121d3', 'Cash', 200, '2019-04-10', '', 1, '2019-04-10 07:15:46', '2019-04-10 07:15:46', 1, 1),
('e71adaf5-416f-4ff1-9f8f-222975e3692', 'ad4e120c-5dd9-417a-827f-96633df8d60', 'Cash', 18, '2019-02-11', '', 3, '2019-02-11 06:31:50', '2019-02-11 06:45:57', 1, 1),
('e7760f67-5c45-4323-811f-2eb97ba8113', '9b74e623-96e1-4a03-a128-138e5b0f55b', 'Credit', 100000, '2019-02-06', 'string', 0, '2019-02-06 00:55:12', '2019-02-06 00:55:12', 1, 1),
('e9d92df8-5e97-4cc6-96c7-dc44741ef97', 'd4051d97-bce8-46f4-9f1c-824094a67ee', 'Cash', 315, '2019-02-09', NULL, 0, '2019-02-09 04:28:36', '2019-02-09 04:28:36', 1, 1),
('eab8844a-7e9f-4c23-9116-97ca8cf2dd5', '9adf6bee-5f55-4c9e-994b-34ed6c72a6a', 'Cash', 625, '2019-03-13', '', 0, '2019-03-13 06:53:41', '2019-03-31 12:06:09', 1, 1),
('eb965e54-2667-4d9c-b55d-59a90d8a2659', 'f01dedb4-046e-4dff-9a65-4e33c4e1417c', 'Cash', 200, '2019-04-10', '', 2, '2019-04-10 06:59:43', '2019-04-10 06:59:43', 1, 1),
('ee7de8f6-9a5f-4365-bf07-5ecb2d8209f', '46d7dfe6-e1f6-411c-a7b8-824577f1230', 'Credit', 0, '2019-02-09', NULL, 0, '2019-02-09 04:53:57', '2019-02-09 04:53:57', 1, 1),
('ef7815fa-2c94-4a81-90b2-be7f4c3cdab', '689ec08f-aafe-4b27-a1b7-24b9b4242c9', 'Cash', 10426, '2019-02-18', '', 0, '2019-02-18 06:46:32', '2019-02-18 06:46:32', 1, 1),
('f0a375c7-fd26-4144-837b-dc9ba86eb7d', '33f82c0c-101f-4751-8b2f-7d047ef17cf', 'Cheque', 300, '2019-02-25', '', 0, '2019-02-25 07:17:58', '2019-02-26 00:33:59', 1, 1),
('f1608724-bfda-4981-beda-98f82a553b8', 'f7cf5e41-8ec3-442b-a356-7fffa966696', 'Card', 12, '2019-03-02', '', 0, '2019-03-02 03:06:21', '2019-03-02 03:06:21', 1, 1),
('f2397bec-23e0-42d8-bf1a-75b25efe062', '28a34663-b04f-4fc3-9463-7d95dc0cc5e', 'Cheque', 3, '2019-03-01', '', 1, '2019-03-01 05:07:31', '2019-03-01 05:07:31', 1, 1),
('f3bbd95c-60a4-43e2-99c7-be901119525a', 'c13a9ee3-43d0-41e3-97d6-cbdc0e3a3278', 'Wallet', 26, '2019-04-10', '', 0, '2019-04-10 12:15:13', '2019-04-10 12:15:13', 1, 1),
('fbea15b5-d1e6-4ff6-9001-9b7ca12c3bac', 'af52694e-d46e-4cd9-ba7f-394fec8ab5fe', 'Cash', 100, '2019-04-10', '', 1, '2019-04-10 06:42:38', '2019-04-10 06:42:38', 1, 1),
('ffd703b2-cad0-4be2-9f2a-890e843eaff', '9bf7fb12-e608-4b2a-8210-05245cb1a6d', 'Credit', 0, '2019-02-11', NULL, 0, '2019-02-11 06:16:03', '2019-02-11 06:16:03', 1, 1),
('j', '0b8a5a0b-2623-11e9-aa59-588a5a24e72', 'Cash', 500, '2019-02-05', 'sdfsd', 0, '2019-02-04 08:09:05', '2019-02-04 08:09:05', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `id` varchar(36) NOT NULL,
  `customerId` varchar(36) NOT NULL,
  `itemTotal` double NOT NULL,
  `discount` varchar(15) NOT NULL,
  `charges` double NOT NULL,
  `roundoff` varchar(10) NOT NULL DEFAULT '0',
  `taxAmount` double NOT NULL,
  `billNo` double NOT NULL,
  `billBookId` varchar(36) NOT NULL,
  `totalAmount` double NOT NULL,
  `receivedAmount` double NOT NULL,
  `pendingAmount` double NOT NULL,
  `gstin` varchar(50) NOT NULL,
  `billDate` date NOT NULL,
  `dueDate` date DEFAULT NULL,
  `isEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `transportId` varchar(36) DEFAULT NULL,
  `dateOfSupply` date DEFAULT NULL,
  `placeOfSupply` varchar(500) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`id`, `customerId`, `itemTotal`, `discount`, `charges`, `roundoff`, `taxAmount`, `billNo`, `billBookId`, `totalAmount`, `receivedAmount`, `pendingAmount`, `gstin`, `billDate`, `dueDate`, `isEnabled`, `transportId`, `dateOfSupply`, `placeOfSupply`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('00b3a6f9-a36f-4047-a217-051d04bad48', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 10.5, '0', 0, '0.50', 0.5, 18, '00344187-bbd8-4a06-a235-dbe170be28d', 11, 0, 11, '123', '2019-03-08', '2019-03-08', 0, NULL, '2019-03-08', NULL, '2019-03-08 03:21:55', '2019-03-08 03:21:55', 1, 1),
('01cbc026-b319-43d4-8db1-cf3315714e4', 'a306b283-3bdb-4a5c-90ed-40907fa3d01', 70, '10%', 0, '0.00', 0, 67, '00344187-bbd8-4a06-a235-dbe170be28d', 63, 0, 63, '123', '2019-04-02', '2019-04-02', 1, '9d7ced7e-7249-42da-820f-d49e1d16660', '2019-04-04', NULL, '2019-04-22 09:54:45', '2019-04-22 09:54:45', 1, 1),
('04ec4033-7f12-4904-a4c6-7042e749682', '745c46e4-09a9-41e2-b79a-5f94ccc21e0', 1200, '0', 0, '0.00', 0, 45, '00344187-bbd8-4a06-a235-dbe170be28d', 1200, 0, 1200, '123', '2019-03-13', '2019-03-13', 1, NULL, '2019-03-18', NULL, '2019-03-13 07:37:22', '2019-03-18 08:32:26', 1, 1),
('0896fb06-5d63-4c7f-b00d-1b3530fb056', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 140, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2020-02-12', '2019-02-14', 1, NULL, NULL, NULL, '2019-02-12 02:34:53', '2019-02-12 02:34:53', 1, 1),
('0ab8e45e-0ec8-4e36-bb06-119197eeac1', '736ad816-2459-11e9-a14f-588a5a24e72', 157200, '300', 0, '', 7500, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 157200, 0, 0, '123', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('0b69d7a5-c0b0-4625-be6a-3061c7acd91', '74320317-a0d9-4509-a635-be139121965', 10.5, '0', 0, '0.50', 0.5, 33, '00344187-bbd8-4a06-a235-dbe170be28d', 11, 0, 11, '123', '2019-03-12', '2019-03-12', 1, NULL, '2019-03-12', NULL, '2019-03-12 14:25:05', '2019-03-12 14:25:05', 1, 1),
('0b8a5a0b-2623-11e9-aa59-588a5a24e72', '736ad816-2459-11e9-a14f-588a5a24e72', 0, '0', 0, '', 0, 1004, 'e2845053-7f0e-43bc-b515-e24d9184c1e', 0, 0, 0, '2', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-02-01 01:43:02', '2019-02-01 01:43:02', 1, 1),
('0c5bf6ca-2eb2-473d-afa1-f454bfaab6a', '06da5940-38ce-4483-87ba-fa3847a206a', 100, '0', 0, '0.00', 0, 157, '5ea27c4c-7922-4fe0-a38f-208cad71343', 100, 0, 100, '123', '2019-03-12', '2019-03-12', 1, NULL, '2019-03-12', NULL, '2019-03-12 01:03:04', '2019-03-12 04:56:59', 1, 1),
('0eeeead6-c667-4eb6-8761-4df03155578', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 200, '0', 0, '0.00', 0, 22, '00344187-bbd8-4a06-a235-dbe170be28d', 200, 0, 200, '123', '2019-03-11', '2019-03-11', 0, NULL, '2019-03-11', NULL, '2019-03-11 02:00:38', '2019-03-11 02:00:38', 1, 1),
('121c8588-f272-4591-b6b2-59c7e0eeae9', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 1.05, '0', 0, '-0.05', 0.05, 151, '5ea27c4c-7922-4fe0-a38f-208cad71343', 1, 0, 1, '123', '2019-02-28', '2019-02-28', 1, NULL, '2019-02-28', NULL, '2019-02-28 01:30:06', '2019-02-28 01:30:06', 1, 1),
('12c44f75-c160-411c-8114-a2446c703c3', '745c46e4-09a9-41e2-b79a-5f94ccc21e0', 2100, '0', 0, '0.00', 100, 38, '00344187-bbd8-4a06-a235-dbe170be28d', 2100, 0, 2100, '123', '2019-03-13', '2019-03-13', 0, NULL, '2019-03-13', NULL, '2019-03-13 06:58:53', '2019-03-14 09:51:03', 1, 1),
('134105b0-67d9-4b0c-8a02-2366394084a', '46556209-ddde-49f4-b8cf-93c0291cbe3', 157500, '0', 1994, '', 7500, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 159494, 0, 0, '123', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('13af9ee3-39eb-4307-96a9-344432ee33d', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '0.00', 15, 1006, 'e2845053-7f0e-43bc-b515-e24d9184c1e', 315, 0, 315, '123', '2019-02-07', '1970-01-01', 0, NULL, '2019-02-26', NULL, '2019-02-07 06:08:20', '2019-02-26 01:27:09', 1, 1),
('13b353aa-ad11-4e57-a1ce-837f371df52', '74320317-a0d9-4509-a635-be139121965', 210, '0', 0, '0.00', 10, 31, '00344187-bbd8-4a06-a235-dbe170be28d', 210, 0, 210, '123', '2019-03-12', '2019-03-12', 0, NULL, '2019-03-12', NULL, '2019-03-12 13:50:58', '2019-03-12 13:50:58', 1, 1),
('13bbf6d3-2623-11e9-aa59-588a5a24e72', '736ad816-2459-11e9-a14f-588a5a24e72', 0, '0', 0, '', 0, 1001, 'e2845053-7f0e-43bc-b515-e24d9184c1e', 0, 0, 0, '1', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-02-01 01:43:02', '2019-02-01 01:43:02', 1, 1),
('13f4878b-1edb-11e9-8b87-54e1ad6c800', 'dcf157cb-1eda-11e9-8b87-54e1ad6c800', 5000, '0', 0, '', 12, 1002, 'e2845053-7f0e-43bc-b515-e24d9184c1e', 5012, 0, 0, '11', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-01-23 06:49:49', '2019-01-23 06:49:49', 1, 1),
('16011328-52e4-4bc9-a419-10aeaa6b4b2f', '65e3b132-ebbf-436d-8163-593c8bd9e66', 1260, '0', 0, '0.00', 60, 85, '00344187-bbd8-4a06-a235-dbe170be28d', 1260, 1260, 0, '123', '2019-04-10', '2019-04-10', 1, NULL, '2019-04-10', NULL, '2019-04-10 12:44:56', '2019-04-10 12:44:56', 1, 1),
('163f28ae-5e7d-41e0-b9bb-16245db66a9', '46556209-ddde-49f4-b8cf-93c0291cbe3', 315, '0', 0, '', 15, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('1f4c1de5-1ac9-4247-b061-76c081e30c1', 'de89eb5e-e230-48c8-9437-5f4770dd338', 3.1500000000000004, '0', 0, '-0.15', 0.15000000000000002, 52, '00344187-bbd8-4a06-a235-dbe170be28d', 3, 0, 3, '123', '2019-03-13', '2019-03-13', 0, NULL, '2019-03-13', NULL, '2019-03-13 08:41:33', '2019-03-13 08:41:33', 1, 1),
('24fa2b31-ed7b-4365-9d1c-c7e23c74aea', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 106, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-09', NULL, 1, NULL, NULL, NULL, '2019-02-09 03:33:30', '2019-02-09 03:33:30', 1, 1),
('28a34663-b04f-4fc3-9463-7d95dc0cc5e', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '10', 0, '0.00', 15, 123, '5ea27c4c-7922-4fe0-a38f-208cad71343', 305, 302, 3, '123', '2019-02-11', '1970-01-01', 1, NULL, '2019-03-01', NULL, '2019-02-11 08:08:28', '2019-03-01 05:07:31', 1, 1),
('2a1b34b2-26c9-11e9-9840-588a5a24e72', '736ad816-2459-11e9-a14f-588a5a24e72', 0, '0', 0, '', 0, 1003, 'e2845053-7f0e-43bc-b515-e24d9184c1e', 0, 0, 0, '123', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-02-01 01:43:02', '2019-02-01 01:43:02', 1, 1),
('2cc0b6b1-dbe6-4abf-bfe3-303d24f0c7df', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 200, '0', 0, '0.00', 0, 68, '00344187-bbd8-4a06-a235-dbe170be28d', 200, 0, 200, '123', '2019-04-02', '2019-04-02', 1, NULL, '2019-04-02', NULL, '2019-04-02 10:51:23', '2019-04-02 10:51:23', 1, 1),
('2d3c04e4-8174-44ba-987d-82855de3e18', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 44000, '0', 0, '0.00', 4000, 15, '00344187-bbd8-4a06-a235-dbe170be28d', 44000, 0, 44000, '123', '2019-03-08', '2019-03-08', 1, NULL, '2019-03-08', NULL, '2019-03-08 00:42:06', '2019-03-08 01:40:16', 2, 1),
('2dc05935-763f-4f8e-9038-fbae3af7298', '745c46e4-09a9-41e2-b79a-5f94ccc21e0', 30, '0', 0, '0.00', 0, 66, '00344187-bbd8-4a06-a235-dbe170be28d', 30, 0, 30, '123', '2019-04-03', '2019-04-02', 1, NULL, '2019-04-02', NULL, '2019-04-02 10:21:23', '2019-04-02 10:21:23', 1, 1),
('2ffe62ed-1e08-4cb7-8a13-442fc5540ea', '46556209-ddde-49f4-b8cf-93c0291cbe3', 315, '0', 0, '', 15, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('3085c84c-283a-4467-ab59-0de24f235ef', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315, '10%', 0, '0.50', 15, 119, '5ea27c4c-7922-4fe0-a38f-208cad71343', 284, 315, -31, '123', '2019-02-09', '1970-01-01', 1, NULL, '2019-02-20', NULL, '2019-02-09 06:57:48', '2019-02-20 03:16:24', 1, 1),
('30b66930-64fe-482a-ae50-bb0f0026396', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 630, '0', 0, '', 30, 129, '5ea27c4c-7922-4fe0-a38f-208cad71343', 630, 0, 0, '123', '2019-02-12', NULL, 1, NULL, NULL, NULL, '2019-02-12 00:26:06', '2019-02-12 00:41:13', 1, 1),
('3188ec17-7f6f-4ed7-aaa9-1c401627fef', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315, '0', 0, '', 15, 116, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-09', NULL, 1, NULL, NULL, NULL, '2019-02-09 05:49:09', '2019-02-09 05:49:09', 1, 1),
('32fa7f88-024b-4f33-826d-2b7af15e1d4', '06da5940-38ce-4483-87ba-fa3847a206a', 126, '0', 0, '0.00', 6, 12, '00344187-bbd8-4a06-a235-dbe170be28d', 126, 0, 126, '123', '2019-04-07', '2019-03-07', 1, NULL, '2019-03-07', NULL, '2019-03-07 06:04:32', '2019-03-07 06:04:32', 1, 1),
('33a4e5ea-a417-44a7-8210-1fb67bd6828', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 142, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 320, -5, '123', '2019-02-15', NULL, 1, NULL, '2019-02-15', NULL, '2019-02-15 00:52:36', '2019-02-15 00:59:17', 1, 1),
('33eac745-36aa-42c0-ae11-057e84bdb4de', '6a863127-b1d6-4ee6-8a5f-90aed66cc16', 126, '0', 0, '0.00', 6, 70, '00344187-bbd8-4a06-a235-dbe170be28d', 126, 126, 0, '123', '2019-04-08', '2019-04-08', 0, NULL, '2019-04-08', NULL, '2019-04-22 12:55:11', '2019-04-08 08:56:38', 1, 1),
('33f82c0c-101f-4751-8b2f-7d047ef17cf', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 5626, '0', 0, '0.00', 506, 148, '5ea27c4c-7922-4fe0-a38f-208cad71343', 5626, 300, 5326, '123', '2019-02-25', '2019-02-25', 1, NULL, '2019-02-26', NULL, '2019-02-25 03:33:04', '2019-02-26 00:33:58', 1, 1),
('35223108-2341-477a-a4b5-65ac3f42028', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 1.05, '0', 0, '-0.05', 0.05, 149, '5ea27c4c-7922-4fe0-a38f-208cad71343', 1, 0, 1, '123', '2019-02-28', '2019-02-28', 1, NULL, '2019-02-28', NULL, '2019-02-28 01:27:05', '2019-02-28 01:27:05', 1, 1),
('352bd8a0-0cf0-4753-92cd-f7a3bc6871d', 'd76f7067-0de8-49e7-b2df-cd9953ccb91', 630, '0', 0, '0.00', 30, 49, '00344187-bbd8-4a06-a235-dbe170be28d', 630, 130, 500, '123', '2019-03-13', '2019-03-13', 0, NULL, '2019-03-13', NULL, '2019-03-13 08:34:39', '2019-03-13 08:34:39', 1, 1),
('355655bd-8fbe-467e-8479-e46188b6e5c', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 143, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 100, 215, '123', '2019-02-15', NULL, 1, NULL, '2019-02-15', NULL, '2019-02-15 01:12:48', '2019-02-15 01:13:33', 1, 1),
('366ec6ee-b05f-442f-a6db-4db2911bb10', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 55, '0', 0, '0.00', 5, 29, '00344187-bbd8-4a06-a235-dbe170be28d', 55, 0, 55, '123', '2019-03-12', '2019-03-12', 0, NULL, '2019-03-12', NULL, '2019-03-12 13:26:50', '2019-03-18 08:35:13', 1, 1),
('36eed7c5-598a-402c-93a0-713fb61891e', '10551bee-8263-4b8c-81b1-23780d9acd3', 802, '0', 0, '0.00', 0, 56, '00344187-bbd8-4a06-a235-dbe170be28d', 802, 0, 802, '123', '2019-03-14', '2019-03-14', 0, NULL, '2019-03-14', NULL, '2019-04-22 12:55:02', '2019-03-14 09:54:25', 1, 1),
('37038848-60d5-43a7-b88a-72991d747dda', '0768c21a-70b7-4441-b828-d58a45a43441', 400, '0', 0, '0.00', 0, 91, '00344187-bbd8-4a06-a235-dbe170be28d', 400, 400, 0, '123', '2019-04-12', '2019-04-12', 1, NULL, '2019-04-12', NULL, '2019-04-12 07:53:00', '2019-04-12 07:53:00', 1, 1),
('39c03ec3-e00d-4080-b2a3-98fccbd2116', '10551bee-8263-4b8c-81b1-23780d9acd3', 20010, '0', 0, '0.00', 0, 23, '00344187-bbd8-4a06-a235-dbe170be28d', 20010, 20000, 10, '123', '2019-03-11', '2019-03-11', 0, NULL, '2019-03-11', NULL, '2019-03-11 03:31:42', '2019-03-11 03:51:54', 1, 1),
('3a6b11bc-e60c-4676-95c1-05842f902d7', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 22000, '0', 0, '0.00', 2000, 17, '00344187-bbd8-4a06-a235-dbe170be28d', 22000, 0, 22000, '123', '2019-03-08', '2019-03-08', 0, NULL, '2019-03-08', NULL, '2019-03-08 01:31:38', '2019-03-18 08:36:49', 1, 1),
('41fb608c-3eb8-4f75-a92c-8d631f9e240', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 134, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-12', '2019-02-13', 1, NULL, NULL, NULL, '2019-02-12 02:03:09', '2019-02-12 02:03:09', 1, 1),
('442856ae-61f8-4aab-89a6-1322adb06bb', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 1270.5, '0', 0, '0.50', 60.5, 153, '5ea27c4c-7922-4fe0-a38f-208cad71343', 1271, 500, 771, '123', '2019-03-02', '2019-03-02', 0, NULL, '2019-03-02', NULL, '2019-03-02 00:26:39', '2019-03-02 00:26:39', 1, 1),
('46d7dfe6-e1f6-411c-a7b8-824577f1230', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 630, '0', 0, '', 30, 110, '5ea27c4c-7922-4fe0-a38f-208cad71343', 630, 0, 0, '123', '2019-02-09', NULL, 1, NULL, NULL, NULL, '2019-02-09 04:53:57', '2019-02-09 04:53:57', 1, 1),
('46deab67-cf33-494e-ae23-85c968e7f10', '22c8244e-fb21-4e2b-913c-d5cc2770a08', 22000, '0', 0, '0.00', 2000, 16, '00344187-bbd8-4a06-a235-dbe170be28d', 22000, 0, 22000, '123', '2019-03-08', '2019-03-08', 1, NULL, '2019-03-08', NULL, '2019-03-08 01:30:59', '2019-03-08 01:30:59', 1, 1),
('4ac5c7a2-a6b7-4251-8ba3-5721dad4077', '745c46e4-09a9-41e2-b79a-5f94ccc21e0', 3150, '0', 0, '0.00', 150, 40, '00344187-bbd8-4a06-a235-dbe170be28d', 3150, 0, 3150, '123', '2019-03-13', '2019-03-13', 1, NULL, '2019-03-13', NULL, '2019-03-13 07:11:02', '2019-03-13 07:11:02', 1, 1),
('4ae3a2ad-f576-42c4-a505-cc5e9c0c073', '745c46e4-09a9-41e2-b79a-5f94ccc21e0', 2100, '0', 0, '0.00', 100, 37, '00344187-bbd8-4a06-a235-dbe170be28d', 2100, 0, 2100, '123', '2019-03-13', '2019-03-13', 0, NULL, '2019-03-13', NULL, '2019-03-13 06:54:13', '2019-03-13 06:54:13', 1, 1),
('4f2fe493-dd8d-4ac3-b867-3a10699381d', '736ad816-2459-11e9-a14f-588a5a24e72', 22550, '0', 198, '', 2050, 101, 'e2845053-7f0e-43bc-b515-e24d9184c1e', 22750, 0, 0, '123', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('505d65f9-9e5d-4c31-b2dd-7fc8b5caf7a', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 0, '0', 0, '', 0, 0, '5ea27c4c-7922-4fe0-a38f-208cad71343', 0, 0, 0, 'string', '2019-02-09', '2019-02-09', 1, NULL, NULL, NULL, '2019-02-09 05:03:29', '2019-02-09 05:03:29', 1, 1),
('50ca21ea-f096-49ca-9f97-56462a1121d3', '65e3b132-ebbf-436d-8163-593c8bd9e66', 550, '0', 0, '0.00', 50, 86, '00344187-bbd8-4a06-a235-dbe170be28d', 550, 550, 0, '123', '2019-04-10', '2019-04-10', 1, NULL, '2019-04-10', NULL, '2019-04-10 12:45:14', '2019-04-10 12:45:14', 1, 1),
('51214645-e43d-4fcb-b09f-34c18b67ba8', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 630, '0', 0, '', 30, 104, '5ea27c4c-7922-4fe0-a38f-208cad71343', 630, 0, 0, '123', '2019-02-09', NULL, 1, NULL, NULL, NULL, '2019-02-09 03:29:48', '2019-02-09 03:29:48', 1, 1),
('5152bf68-eea4-4259-afc3-c635bd92ab4', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 133, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-12', '2019-02-13', 1, NULL, NULL, NULL, '2019-02-12 02:01:10', '2019-02-12 02:01:10', 1, 1),
('515587f8-5728-474b-a27c-d61aae673a5', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 630, '0', 0, '', 30, 122, '5ea27c4c-7922-4fe0-a38f-208cad71343', 630, 0, 0, '123', '2019-02-11', NULL, 1, NULL, NULL, NULL, '2019-02-11 07:24:31', '2019-02-11 07:27:14', 1, 1),
('51f8f610-54a3-4a9e-9404-1d280820343', '9bad8b96-68c9-4571-9aae-fb3f946711d', 630, '0', 0, '0.00', 30, 48, '00344187-bbd8-4a06-a235-dbe170be28d', 630, 0, 630, '123', '2019-03-13', '2019-03-13', 0, NULL, '2019-03-13', NULL, '2019-03-13 08:20:52', '2019-03-13 08:20:52', 1, 1),
('5740ce72-7403-4bad-8404-7d13fb58880', '745c46e4-09a9-41e2-b79a-5f94ccc21e0', 63, '0', 0, '0.00', 3, 46, '00344187-bbd8-4a06-a235-dbe170be28d', 63, 0, 63, '123', '2019-03-13', '2019-03-13', 1, NULL, '2019-03-13', NULL, '2019-03-13 07:39:00', '2019-03-13 07:39:00', 1, 1),
('5dab2a4a-0c2c-4541-af5f-a968358d7bca', '65e3b132-ebbf-436d-8163-593c8bd9e66', 336, '0', 0, '0.00', 16, 87, '00344187-bbd8-4a06-a235-dbe170be28d', 336, 336, 0, '123', '2019-04-10', '2019-04-10', 1, NULL, '2019-04-10', NULL, '2019-04-10 12:53:10', '2019-04-10 12:53:10', 1, 1),
('5dcb00d7-4505-4af9-b3ad-7df2ade0cdc', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 1007, 'e2845053-7f0e-43bc-b515-e24d9184c1e', 300, 0, 0, '123', '2019-02-09', NULL, 1, NULL, NULL, NULL, '2019-02-09 03:37:12', '2019-02-09 03:37:12', 1, 1),
('5e954f3f-f4d2-489b-9c09-ced660fc071', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315, '0', 0, '', 15, 115, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-09', '2019-02-28', 1, NULL, NULL, NULL, '2019-02-09 05:48:31', '2019-02-09 05:48:31', 1, 1),
('62dee4e9-93dd-4a1e-a6f8-48892d9baa3', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 630, '0', 92, '', 30, 108, '5ea27c4c-7922-4fe0-a38f-208cad71343', 672, 0, 0, '123', '2019-02-09', NULL, 1, NULL, NULL, NULL, '2019-02-09 04:49:38', '2019-02-09 04:49:38', 1, 1),
('63936e8d-0250-4e0a-8875-62352596fd57', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 126, '0', 0, '0.00', 6, 74, '00344187-bbd8-4a06-a235-dbe170be28d', 126, 0, 126, '123', '2019-04-10', '2019-04-10', 0, NULL, '2019-04-10', NULL, '2019-04-10 06:44:49', '2019-04-10 07:45:38', 1, 1),
('645b8f57-6950-4601-91ae-eafe8b5615b', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 103, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-07', NULL, 1, NULL, NULL, NULL, '2019-02-07 06:13:21', '2019-02-07 06:13:21', 1, 1),
('64cd41cf-b01f-48e0-8fd9-17cd7b9133f', '22659ceb-c08b-4a52-978f-29d2b7b7dc9', 120, '0', 0, '0.00', 0, 62, '00344187-bbd8-4a06-a235-dbe170be28d', 120, 0, 120, '123', '2019-03-24', '2019-03-24', 1, NULL, '2019-03-24', NULL, '2019-03-24 13:02:01', '2019-03-24 13:02:01', 1, 1),
('653cb44c-1edb-11e9-8b87-54e1ad6c800', 'dcf157cb-1eda-11e9-8b87-54e1ad6c800', 10000, '0', 0, '', 0, 1005, 'e2845053-7f0e-43bc-b515-e24d9184c1e', 10000, 0, 0, '23', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-01-23 06:52:05', '2019-01-23 06:52:05', 1, 1),
('670dfb4f-80bd-427c-bf8c-eaac87bcf576', '0768c21a-70b7-4441-b828-d58a45a43441', 2100, '0', 0, '0.00', 100, 90, '00344187-bbd8-4a06-a235-dbe170be28d', 2100, 2100, 0, '123', '2019-04-12', '2019-04-12', 1, NULL, '2019-04-12', NULL, '2019-04-12 07:48:09', '2019-04-12 07:48:09', 1, 1),
('6776ef65-44c9-47da-850f-6a01a69b396b', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 0, '0', 0, '0', 0, 73, '00344187-bbd8-4a06-a235-dbe170be28d', 0, 0, 0, '123', '2019-04-10', '2019-04-10', 0, NULL, '2019-04-10', NULL, '2019-04-10 06:42:00', '2019-04-10 07:47:03', 1, 1),
('679b498a-23d7-413d-bb97-3c97875ab58', '74320317-a0d9-4509-a635-be139121965', 10.5, '0', 0, '0.50', 0.5, 34, '00344187-bbd8-4a06-a235-dbe170be28d', 11, 0, 11, '123', '2019-03-12', '2019-03-12', 0, NULL, '2019-03-12', NULL, '2019-03-12 14:27:44', '2019-03-12 14:27:44', 1, 1),
('689ec08f-aafe-4b27-a1b7-24b9b4242c9', '494cb0da-4df4-4b1f-894b-08849cb65b1', 110325.5, '0', 100, '0.50', 10015.5, 146, '5ea27c4c-7922-4fe0-a38f-208cad71343', 110426, 10426, 100000, '123', '2019-02-18', '2019-02-18', 1, '484fb5c6-59f9-4408-a112-22e88e23092', '2019-02-18', 'vadodara', '2019-02-18 06:06:32', '2019-02-18 06:46:32', 1, 1),
('6a391b7c-2b26-4d84-af1e-9bbf9e7a8da', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 22000, '0', 0, '0.00', 2000, 14, '00344187-bbd8-4a06-a235-dbe170be28d', 22000, 0, 22000, '123', '2019-03-08', '2019-03-08', 1, NULL, '2019-03-08', NULL, '2019-03-08 00:40:35', '2019-03-08 00:40:35', 2, 2),
('6b441e45-bf5f-4131-b9ce-c98201f1babf', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 300, '0', 0, '0.00', 0, 92, '00344187-bbd8-4a06-a235-dbe170be28d', 300, 0, 300, '123', '2019-01-02', '2019-04-12', 1, NULL, '2019-04-16', NULL, '2019-04-16 09:39:53', '2019-04-16 09:39:53', 1, 1),
('6fd483c9-d61f-4e59-b258-acb36c27d5b', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 735, '6%', 0, '0.10', 35, 131, '5ea27c4c-7922-4fe0-a38f-208cad71343', 691, 0, 691, '123', '2019-02-12', '1970-01-01', 1, NULL, '2019-02-18', NULL, '2019-02-12 01:50:09', '2019-02-18 04:24:02', 1, 1),
('70703d6b-205a-41c7-9863-a17f8e976fb', '46556209-ddde-49f4-b8cf-93c0291cbe3', 315, '0', 0, '', 15, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('712bf1a6-4933-4fa0-bbe3-0eb086e3903', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 16605, '0', 0, '0.00', 1505, 152, '5ea27c4c-7922-4fe0-a38f-208cad71343', 16605, 0, 16605, '123', '2019-02-28', '2019-02-28', 1, NULL, '2019-02-28', NULL, '2019-02-28 01:49:50', '2019-02-28 04:22:21', 1, 1),
('770f2b1b-5d9b-432a-9f3a-d4ccbeec881', '745c46e4-09a9-41e2-b79a-5f94ccc21e0', 1575, '0', 0, '0.00', 75, 44, '00344187-bbd8-4a06-a235-dbe170be28d', 1575, 0, 1575, '123', '2019-03-13', '2019-03-13', 1, NULL, '2019-03-13', NULL, '2019-03-13 07:35:18', '2019-03-13 07:35:18', 1, 1),
('79cb7eda-90c7-4271-a65c-b6ecc7fbadf', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 22010.5, '0', 0, '0.50', 2000.5, 27, '00344187-bbd8-4a06-a235-dbe170be28d', 22011, 0, 22011, '123', '2019-03-12', '2019-03-12', 1, NULL, '2019-03-12', NULL, '2019-03-12 02:12:07', '2019-03-12 02:12:47', 1, 1),
('7abe2c6e-7521-4243-b314-329be287245', '65e3b132-ebbf-436d-8163-593c8bd9e66', 100000, '0', 0, '0.00', 0, 58, '00344187-bbd8-4a06-a235-dbe170be28d', 100000, 100000, 0, '123', '2019-03-14', '2019-03-14', 0, NULL, '2019-03-14', NULL, '2019-03-14 11:10:40', '2019-03-14 11:20:21', 1, 1),
('7ad0f284-f630-438c-8600-71c743687e8', '494cb0da-4df4-4b1f-894b-08849cb65b1', 9450000, '0', 100000, '0.00', 450000, 11, '00344187-bbd8-4a06-a235-dbe170be28d', 9550000, 0, 9550000, '123', '2019-02-27', '2019-02-27', 1, NULL, '2019-02-27', NULL, '2019-02-27 02:55:28', '2019-02-27 02:55:28', 1, 1),
('7bac97e2-f3eb-4518-bc3d-96e61c0195b', '494cb0da-4df4-4b1f-894b-08849cb65b1', 50, '0', 0, '0.00', 0, 64, '00344187-bbd8-4a06-a235-dbe170be28d', 50, 0, 50, '123', '2019-04-02', '2019-04-02', 1, NULL, '2019-04-02', NULL, '2019-04-02 10:20:04', '2019-04-02 10:20:04', 1, 1),
('7def2548-b022-429b-93e8-3cac55888fc', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '10', 0, '', 15, 128, '5ea27c4c-7922-4fe0-a38f-208cad71343', 305, 0, 0, '123', '2019-02-11', NULL, 1, NULL, NULL, NULL, '2019-02-11 08:47:02', '2019-02-11 08:56:53', 1, 1),
('808619aa-5e83-44a6-947b-92f2ff4aaa7', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 1.05, '0', 0, '-0.05', 0.05, 150, '5ea27c4c-7922-4fe0-a38f-208cad71343', 1, 0, 1, '123', '2019-02-28', '2019-02-28', 1, NULL, '2019-02-28', NULL, '2019-02-28 01:29:13', '2019-02-28 01:29:13', 1, 1),
('8180be8b-c7da-4af6-a7f7-bc4eb2796697', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 10, '0', 0, '0.00', 0, 96, '00344187-bbd8-4a06-a235-dbe170be28d', 10, 0, 10, '123', '2019-04-26', '2019-04-26', 1, NULL, '2019-04-26', NULL, '2019-04-26 11:54:59', '2019-04-26 11:54:59', 1, 1),
('839cfc92-aa60-418a-bb89-55be294cbc9', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 1500, '0', 0, '0.00', 0, 61, '00344187-bbd8-4a06-a235-dbe170be28d', 1500, 0, 1500, '123', '2019-03-16', '2019-03-16', 0, NULL, '2019-03-16', NULL, '2019-03-16 08:38:51', '2019-03-18 08:37:57', 1, 1),
('840e1e55-6236-4e8e-8b7a-3a7ee8a7c83', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315, '0', 0, '', 15, 113, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-09', NULL, 1, NULL, NULL, NULL, '2019-02-09 05:45:28', '2019-02-09 05:45:28', 1, 1),
('84ec6a22-a10d-406b-abe7-85e3677af46', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 125, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-11', NULL, 1, NULL, NULL, NULL, '2019-02-11 08:26:18', '2019-02-11 08:37:46', 1, 1),
('86421482-d7e3-4c19-a046-077e32f0b9ff', '65e3b132-ebbf-436d-8163-593c8bd9e66', 136.5, '0', 0, '0.50', 6.5, 75, '00344187-bbd8-4a06-a235-dbe170be28d', 137, 137, 0, '123', '2019-04-10', '2019-04-10', 0, NULL, '2019-04-10', NULL, '2019-04-10 11:14:34', '2019-04-10 12:04:30', 1, 1),
('86795b03-0393-4a00-9d98-c6b9cae909c', 'd76f7067-0de8-49e7-b2df-cd9953ccb91', 840, '0', 0, '0.00', 40, 50, '00344187-bbd8-4a06-a235-dbe170be28d', 840, 0, 840, '123', '2019-03-13', '2019-03-13', 0, NULL, '2019-03-13', NULL, '2019-03-13 08:35:15', '2019-03-13 08:35:15', 1, 1),
('889afdf4-34ff-4f27-ba51-428dbe3e78a', '745c46e4-09a9-41e2-b79a-5f94ccc21e0', 1575, '0', 0, '0.00', 75, 43, '00344187-bbd8-4a06-a235-dbe170be28d', 1575, 0, 1575, '123', '2019-03-13', '2019-03-13', 1, NULL, '2019-03-13', NULL, '2019-03-13 07:20:13', '2019-03-13 07:20:13', 1, 1),
('899d49cf-7183-4dab-93ac-e07aa5446c7', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 10.5, '0', 0, '', 0.5, 145, '5ea27c4c-7922-4fe0-a38f-208cad71343', 11, 11, 0, '123', '2019-02-16', '2019-02-27', 1, '484fb5c6-59f9-4408-a112-22e88e23092', '2019-02-16', 'vadodara', '2019-02-16 01:53:30', '2019-02-16 01:59:52', 1, 1),
('8a6d7715-2e4c-49f2-ae19-61a37920975', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315, '0', 0, '', 15, 120, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-09', NULL, 1, NULL, NULL, NULL, '2019-02-09 07:07:36', '2019-02-09 07:07:36', 1, 1),
('8b9292f3-db93-43f2-8ee7-caf62ad750f', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 22000, '0', 0, '0.00', 2000, 13, '00344187-bbd8-4a06-a235-dbe170be28d', 22000, 0, 22000, '123', '2019-03-08', '2019-03-08', 0, NULL, '2019-03-08', NULL, '2019-03-08 00:37:29', '2019-03-18 08:38:35', 2, 1),
('8f540d57-04d6-4646-882d-fcf04fe1cdf', '745c46e4-09a9-41e2-b79a-5f94ccc21e0', 1575, '0', 0, '0.00', 75, 41, '00344187-bbd8-4a06-a235-dbe170be28d', 1575, 0, 1575, '123', '2019-03-13', '2019-03-13', 1, NULL, '2019-03-13', NULL, '2019-03-13 07:17:50', '2019-03-13 07:17:50', 1, 1),
('90362628-9e05-404c-b7b0-aa6aa866f74', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315, '10%', 0, '', 15, 124, '5ea27c4c-7922-4fe0-a38f-208cad71343', 284, 0, 0, '123', '2019-02-11', NULL, 1, NULL, NULL, NULL, '2019-02-11 08:17:14', '2019-02-11 08:17:14', 1, 1),
('90f2ca2d-5792-4492-8185-8802b23e6b1', '10551bee-8263-4b8c-81b1-23780d9acd3', 1400, '0', 0, '0.00', 0, 57, '00344187-bbd8-4a06-a235-dbe170be28d', 1400, 0, 1400, '123', '2019-03-14', '2019-03-14', 0, NULL, '2019-03-14', NULL, '2019-03-14 07:44:38', '2019-03-14 08:10:11', 1, 1),
('93e7ead4-2e62-49d4-b7ac-8b98ef22ecc', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 630, '0', 0, '', 30, 109, '5ea27c4c-7922-4fe0-a38f-208cad71343', 630, 0, 0, '123', '2019-02-09', NULL, 1, NULL, NULL, NULL, '2019-02-09 04:51:50', '2019-02-09 04:51:50', 1, 1),
('97d1a7ac-6d9b-4e63-bb2e-f3b5688cdf5', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 550000, '0', 0, '0.00', 50000.000001, 1, '89cc3c3f-fce0-4311-8107-751fce6a2a8', 550000, 0, 550000, '123', '2019-02-28', '2019-02-28', 0, NULL, '2019-02-28', NULL, '2019-04-26 13:06:50', '2019-02-28 01:32:19', 1, 1),
('97e3788c-224b-4621-85ae-2a82d243f94', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 630, '0', 0, '', 30, 136, '5ea27c4c-7922-4fe0-a38f-208cad71343', 630, 0, 0, '123', '2019-02-12', NULL, 1, NULL, NULL, NULL, '2019-02-12 02:05:04', '2019-02-12 02:17:42', 1, 1),
('996601ba-dce1-4c12-9823-78e027ef37b', '46556209-ddde-49f4-b8cf-93c0291cbe3', 315, '0', 0, '', 15, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('9adf6bee-5f55-4c9e-994b-34ed6c72a6a', '745c46e4-09a9-41e2-b79a-5f94ccc21e0', 0, '0', 0, '0', 0, 36, '00344187-bbd8-4a06-a235-dbe170be28d', 0, 625, -625, '123', '2019-03-13', '2019-03-13', 1, NULL, '2019-03-31', NULL, '2019-03-13 06:53:40', '2019-03-31 12:06:09', 1, 1),
('9b74e623-96e1-4a03-a128-138e5b0f55b', 'dcf157cb-1eda-11e9-8b87-54e1ad6c800', 109990, '10', 500, '', 10000, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 110490, 0, 0, '123', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-02-01 01:43:02', '2019-02-01 01:43:02', 1, 1),
('9bf7fb12-e608-4b2a-8210-05245cb1a6d', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 121, '5ea27c4c-7922-4fe0-a38f-208cad71343', 305, 0, 0, '123', '2019-02-11', '2019-02-12', 1, NULL, NULL, NULL, '2019-02-11 06:16:03', '2019-02-11 06:16:03', 1, 1),
('9d60635a-0cd4-4625-9843-d9f865cb120', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '5%', 0, '-0.25', 15, 126, '5ea27c4c-7922-4fe0-a38f-208cad71343', 299, 0, 299, '123', '2019-02-11', '1970-01-01', 1, NULL, '2019-02-18', NULL, '2019-02-11 08:26:39', '2019-02-18 04:33:05', 1, 1),
('9d8e5568-fb32-4ccd-9c65-074ab2c27e6', '745c46e4-09a9-41e2-b79a-5f94ccc21e0', 1575, '0', 0, '0.00', 75, 42, '00344187-bbd8-4a06-a235-dbe170be28d', 1575, 0, 1575, '123', '2019-03-30', '2019-03-13', 1, NULL, '2019-03-13', NULL, '2019-03-13 07:18:40', '2019-03-13 07:18:40', 1, 1),
('9db20766-5b99-492f-9303-f0789c9b78b', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315, '0', 0, '', 15, 114, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-09', '2019-02-28', 1, NULL, NULL, NULL, '2019-02-09 05:47:58', '2019-02-09 05:47:58', 1, 1),
('9f14e1b5-b5d4-4e2f-a138-58451889a4e', '494cb0da-4df4-4b1f-894b-08849cb65b1', 10.5, '0', 0, '0.50', 0.5, 147, '5ea27c4c-7922-4fe0-a38f-208cad71343', 11, 0, 11, '123', '2019-02-18', '2019-02-18', 1, '484fb5c6-59f9-4408-a112-22e88e23092', '2019-02-18', 'mere ghr', '2019-02-18 06:25:35', '2019-02-18 06:25:35', 1, 1),
('a2337d6f-e469-4d18-9a67-c3a9bc11c7a9', '533524e8-70bd-4e2d-b0f9-bae6f0d1838b', 2200, '0', 0, '0.00', 0, 97, '00344187-bbd8-4a06-a235-dbe170be28d', 2200, 1000, 1200, '123', '2019-04-26', '2019-04-30', 1, 'c6c56ac5-1603-4130-8ed6-a976056ece9d', '2019-04-26', 'Surat', '2019-04-26 12:29:03', '2019-04-26 12:29:03', 1, 1),
('a44ea2cd-8a6c-47fb-8f93-ac915333f6b', '46556209-ddde-49f4-b8cf-93c0291cbe3', 315, '0', 0, '', 15, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('a6934cfa-6f34-4d85-8923-f56fea9d6262', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315000, '0', 0, '0.00', 15000, 94, '00344187-bbd8-4a06-a235-dbe170be28d', 315000, 0, 315000, '123', '2019-04-12', '2019-04-12', 1, NULL, '2019-04-12', NULL, '2019-04-12 07:57:43', '2019-04-12 07:57:43', 1, 1),
('abe02a16-2f48-434a-b730-b827459b0c6a', '65e3b132-ebbf-436d-8163-593c8bd9e66', 210, '0', 0, '0.00', 10, 83, '00344187-bbd8-4a06-a235-dbe170be28d', 210, 210, 0, '123', '2019-04-10', '2019-04-10', 0, NULL, '2019-04-10', NULL, '2019-04-10 12:20:02', '2019-04-10 13:20:18', 1, 1),
('ad4e120c-5dd9-417a-827f-96633df8d60', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 630, '0', 0, '', 30, 118, '5ea27c4c-7922-4fe0-a38f-208cad71343', 630, 0, 0, '123', '2019-02-09', NULL, 1, NULL, NULL, NULL, '2019-02-09 06:55:48', '2019-02-11 06:45:57', 1, 1),
('add9e743-6448-4e33-a68f-89289421e6d', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 102, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-07', NULL, 1, NULL, NULL, NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('ae382098-7463-47f2-bda0-9a5fc37f45ae', '65e3b132-ebbf-436d-8163-593c8bd9e66', 220.5, '21', 0, '0.50', 10.5, 76, '00344187-bbd8-4a06-a235-dbe170be28d', 200, 135, 65, '123', '2019-04-10', '2019-04-10', 0, NULL, '2019-04-10', NULL, '2019-04-10 11:15:29', '2019-04-10 12:04:31', 1, 1),
('af52694e-d46e-4cd9-ba7f-394fec8ab5fe', '65e3b132-ebbf-436d-8163-593c8bd9e66', 136.5, '0', 0, '0.50', 6.5, 79, '00344187-bbd8-4a06-a235-dbe170be28d', 137, 137, 0, '123', '2019-04-10', '2019-04-10', 0, NULL, '2019-04-10', NULL, '2019-04-10 12:11:54', '2019-04-10 12:14:25', 1, 1),
('af5ed148-3e06-4640-9ea3-c9ea54f2d4b', '494cb0da-4df4-4b1f-894b-08849cb65b1', 440000, '0', 228, '', 40000, 144, '5ea27c4c-7922-4fe0-a38f-208cad71343', 440228, 440228, 0, '123', '2019-02-16', NULL, 1, NULL, '2019-02-16', NULL, '2019-02-16 00:42:59', '2019-02-16 00:42:59', 1, 1),
('afb8c6ca-ae76-4cbe-b4f3-198d6925deb', '74320317-a0d9-4509-a635-be139121965', 10.5, '0', 0, '0.50', 0.5, 35, '00344187-bbd8-4a06-a235-dbe170be28d', 11, 0, 11, '123', '2019-03-12', '2019-03-12', 0, NULL, '2019-03-12', NULL, '2019-03-12 14:34:53', '2019-03-12 14:34:53', 1, 1),
('b282a7d9-3a95-4ac2-beb5-d7ae9426889', '736ad816-2459-11e9-a14f-588a5a24e72', 6300, '0', 5050, '', 300, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 11350, 350, 11000, '123', '2019-01-22', '1970-01-01', 1, NULL, '2019-02-18', NULL, '2019-01-01 01:43:02', '2019-02-18 03:06:04', 1, 1),
('b579f53c-0109-42db-90bf-b2078d992b4', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 138, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-12', NULL, 1, NULL, NULL, NULL, '2019-02-12 02:32:06', '2019-02-12 02:32:06', 1, 1),
('b6290ce2-cd90-4940-adba-1d61cbc6062', '22659ceb-c08b-4a52-978f-29d2b7b7dc9', 130, '0', 0, '0.00', 0, 63, '00344187-bbd8-4a06-a235-dbe170be28d', 130, 0, 130, '123', '2019-03-24', '2019-03-24', 1, NULL, '2019-03-24', NULL, '2019-03-24 13:04:54', '2019-03-24 13:04:54', 1, 1),
('b7cd8448-3a74-4ba8-95cf-8703855e5aaf', '6a863127-b1d6-4ee6-8a5f-90aed66cc16', 126, '0', 0, '0.00', 6, 69, '00344187-bbd8-4a06-a235-dbe170be28d', 126, 100, 26, '123', '2019-04-08', '2019-04-08', 0, NULL, '2019-04-08', NULL, '2019-04-22 12:55:11', '2019-04-08 08:33:00', 1, 1),
('bb82d038-1430-4090-b8d7-299c0e53b68', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 945, '0', 0, '', 45, 117, '5ea27c4c-7922-4fe0-a38f-208cad71343', 945, 0, 0, '123', '2019-02-09', NULL, 1, NULL, NULL, NULL, '2019-02-09 06:50:53', '2019-02-09 06:50:53', 1, 1),
('bc162fe3-4c83-4a7e-9c64-71cb1c89457', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 10.5, '0', 0, '0.50', 0.5, 154, '5ea27c4c-7922-4fe0-a38f-208cad71343', 11, 0, 11, '123', '2019-03-02', '2019-03-02', 1, NULL, '2019-03-02', NULL, '2019-03-02 00:27:28', '2019-03-02 00:27:28', 1, 1),
('bc4fc6f8-0495-4f65-9d9a-66e5c006cd3', '74320317-a0d9-4509-a635-be139121965', 210, '0', 0, '0.00', 10, 32, '00344187-bbd8-4a06-a235-dbe170be28d', 210, 0, 210, '123', '2019-03-12', '2019-03-12', 0, NULL, '2019-03-12', NULL, '2019-03-12 14:04:23', '2019-03-12 14:04:23', 1, 1),
('bd337eb6-378e-4b07-b068-998b70a1ba7', '65e3b132-ebbf-436d-8163-593c8bd9e66', 200000, '0', 0, '0.00', 0, 59, '00344187-bbd8-4a06-a235-dbe170be28d', 200000, 0, 200000, '123', '2019-03-14', '2019-03-14', 0, NULL, '2019-03-14', NULL, '2019-03-14 11:12:15', '2019-03-14 11:20:21', 1, 1),
('bda5894e-1d15-4fc8-8707-cf9f7ca6f20', 'bc8502a1-c8db-49e0-acc7-7c9cdb47d71', 5.25, '0', 0, '-0.25', 0.25, 53, '00344187-bbd8-4a06-a235-dbe170be28d', 5, 0, 5, '123', '2019-03-13', '2019-03-13', 1, NULL, '2019-03-13', NULL, '2019-03-13 10:21:26', '2019-03-13 13:10:09', 1, 1),
('c009288d-a22a-4fa1-88a4-95b8f8410e01', '0768c21a-70b7-4441-b828-d58a45a43441', 10500, '0', 0, '0.00', 500, 88, '00344187-bbd8-4a06-a235-dbe170be28d', 10500, 1050, 9450, '123', '2019-04-12', '2019-04-12', 1, NULL, '2019-04-12', NULL, '2019-04-12 07:37:38', '2019-04-12 07:37:38', 1, 1),
('c13a9ee3-43d0-41e3-97d6-cbdc0e3a3278', '65e3b132-ebbf-436d-8163-593c8bd9e66', 126, '0', 0, '0.00', 6, 82, '00344187-bbd8-4a06-a235-dbe170be28d', 126, 126, 0, '123', '2019-04-10', '2019-04-10', 0, NULL, '2019-04-10', NULL, '2019-04-10 12:15:12', '2019-04-10 12:19:11', 1, 1),
('c31eb8d2-b754-4f18-b3a2-9a96504b25f', '74320317-a0d9-4509-a635-be139121965', 420, '0', 0, '0.00', 20, 30, '00344187-bbd8-4a06-a235-dbe170be28d', 420, 200, 220, '123', '2019-03-12', '2019-03-12', 0, NULL, '2019-03-12', NULL, '2019-03-12 13:50:23', '2019-03-12 13:50:23', 1, 1),
('c3645da9-16f6-4326-a81d-a9db53e51c2', '46556209-ddde-49f4-b8cf-93c0291cbe3', 315, '0', 0, '', 15, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('c48197de-760e-45ec-8344-41699b57f4c0', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 210000, '0', 0, '0.00', 10000, 93, '00344187-bbd8-4a06-a235-dbe170be28d', 210000, 0, 210000, '123', '2019-04-12', '2019-04-12', 1, NULL, '2019-04-12', NULL, '2019-04-12 07:57:24', '2019-04-12 07:57:24', 1, 1),
('c98aa049-2695-4c45-bbea-cb93e09c290a', '65e3b132-ebbf-436d-8163-593c8bd9e66', 1050, '0', 0, '0.00', 50, 78, '00344187-bbd8-4a06-a235-dbe170be28d', 1050, 1050, 0, '123', '2019-04-10', '2019-04-10', 0, NULL, '2019-04-10', NULL, '2019-04-10 12:06:02', '2019-04-10 12:11:24', 1, 1),
('cb21bbc7-7118-4d80-888a-a26415bf2ec', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 102, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-07', NULL, 1, NULL, NULL, NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('ce117b72-7de1-4080-b108-a5b5611f851', 'de89eb5e-e230-48c8-9437-5f4770dd338', 31.5, '0', 0, '0.50', 1.5, 51, '00344187-bbd8-4a06-a235-dbe170be28d', 32, 12, 20, '123', '2019-03-13', '2019-03-13', 0, NULL, '2019-03-13', NULL, '2019-03-13 08:41:05', '2019-03-13 08:41:05', 1, 1),
('d214321f-ff09-4866-be13-2cd62f2c22f', '46556209-ddde-49f4-b8cf-93c0291cbe3', 220000, '0', 0, '0.00', 20000, 26, '00344187-bbd8-4a06-a235-dbe170be28d', 220000, 0, 220000, '123', '2019-03-12', '2019-03-12', 1, NULL, '2019-03-12', NULL, '2019-03-12 01:41:10', '2019-03-12 01:41:10', 1, 1),
('d38f4cd0-3054-48b3-b7c6-bc1eebaa517', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 105, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-09', NULL, 1, NULL, NULL, NULL, '2019-02-09 03:31:08', '2019-02-09 03:31:08', 1, 1),
('d4051d97-bce8-46f4-9f1c-824094a67ee', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 107, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-09', NULL, 1, NULL, NULL, NULL, '2019-02-09 04:28:36', '2019-02-09 04:28:36', 1, 1),
('d422b2de-1204-494d-876c-e2654fbc0b75', '0768c21a-70b7-4441-b828-d58a45a43441', 1050, '0', 0, '0.00', 50, 89, '00344187-bbd8-4a06-a235-dbe170be28d', 1050, 0, 1050, '123', '2019-04-12', '2019-04-12', 1, NULL, '2019-04-12', NULL, '2019-04-12 07:41:54', '2019-04-12 07:41:54', 1, 1),
('d4cb3c61-2162-4be4-9182-40cccf7408c', '46556209-ddde-49f4-b8cf-93c0291cbe3', 2415, '0', 10, '', 115, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 2425, 0, 0, '123', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('d5754d68-f30f-4a01-8c60-a230e680116', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315, '0', 0, '', 15, 112, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-09', NULL, 1, NULL, NULL, NULL, '2019-02-09 05:43:33', '2019-02-09 05:43:33', 1, 1),
('d588ad7f-dfdb-46ac-8885-30d616d908d', '745c46e4-09a9-41e2-b79a-5f94ccc21e0', 3150, '0', 0, '0.00', 150, 39, '00344187-bbd8-4a06-a235-dbe170be28d', 3150, 0, 3150, '123', '2019-03-13', '2019-03-13', 1, NULL, '2019-03-13', NULL, '2019-03-13 07:09:44', '2019-03-13 07:09:44', 1, 1),
('d610448c-6e78-4c5c-bca5-3d11bc40004', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 10, '0', 0, '0.00', 0, 20, '00344187-bbd8-4a06-a235-dbe170be28d', 10, 0, 10, '123', '2019-03-11', '2019-03-11', 0, NULL, '2019-03-11', NULL, '2019-03-11 01:27:59', '2019-03-18 08:38:36', 1, 1),
('d80bddfd-bb33-479d-b66a-86c9ec3ee5c', '46556209-ddde-49f4-b8cf-93c0291cbe3', 630, '0', 0, '', 30, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 630, 0, 0, '123', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('d856874a-61a5-4e46-9f68-4ed219a1e57a', '65e3b132-ebbf-436d-8163-593c8bd9e66', 136.5, '0', 0, '0.50', 6.5, 77, '00344187-bbd8-4a06-a235-dbe170be28d', 137, 37, 100, '123', '2019-04-10', '2019-04-10', 0, NULL, '2019-04-10', NULL, '2019-04-10 12:05:38', '2019-04-10 12:11:24', 1, 1),
('d88515d3-a5c1-4212-9957-31cb5c6b53a', '46556209-ddde-49f4-b8cf-93c0291cbe3', 44000, '0', 0, '0.00', 4000, 25, '00344187-bbd8-4a06-a235-dbe170be28d', 44000, 0, 44000, '123', '2019-03-12', '2019-03-12', 0, NULL, '2019-03-12', NULL, '2019-03-12 01:38:41', '2019-03-14 09:48:54', 1, 1),
('da3b1338-199f-42c9-b66c-82af631caa3', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-07', NULL, 1, NULL, NULL, NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('df17ab74-e0c3-430f-9fc5-158a6bf9571', '9bad8b96-68c9-4571-9aae-fb3f946711d', 630, '0', 0, '0.00', 30, 47, '00344187-bbd8-4a06-a235-dbe170be28d', 630, 130, 500, '123', '2019-03-13', '2019-03-13', 0, NULL, '2019-03-13', NULL, '2019-03-13 07:45:13', '2019-03-13 07:45:13', 1, 1),
('e093240e-1ac0-4e59-82d5-f72c0b3d56e5', '65e3b132-ebbf-436d-8163-593c8bd9e66', 1260, '0', 0, '0.00', 60, 80, '00344187-bbd8-4a06-a235-dbe170be28d', 1260, 1160, 100, '123', '2019-04-10', '2019-04-10', 0, NULL, '2019-04-10', NULL, '2019-04-10 12:12:20', '2019-04-10 12:14:26', 1, 1),
('e11f997c-f220-4f36-a4fc-dae7bbe8dbf', '46556209-ddde-49f4-b8cf-93c0291cbe3', 10.5, '0', 0, '0.50', 0.5, 28, '00344187-bbd8-4a06-a235-dbe170be28d', 11, 0, 11, '123', '2019-03-12', '2019-03-12', 1, NULL, '2019-03-12', NULL, '2019-03-12 05:02:27', '2019-03-12 05:02:27', 1, 1),
('e29f8156-092b-4c41-95ad-a53f3d32c2ff', '0768c21a-70b7-4441-b828-d58a45a43441', 1050000, '0', 0, '0.00', 50000, 95, '00344187-bbd8-4a06-a235-dbe170be28d', 1050000, 50000, 1000000, '123', '2019-04-12', '2019-04-12', 1, NULL, '2019-04-12', NULL, '2019-04-12 12:07:28', '2019-04-12 12:07:28', 1, 1),
('e2f77a1d-2772-4412-9cbe-624c2b7cfb43', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 126, '0', 0, '0.00', 6, 71, '00344187-bbd8-4a06-a235-dbe170be28d', 126, 0, 126, '123', '2019-04-10', '2019-04-10', 1, NULL, '2019-04-10', NULL, '2019-04-10 06:22:44', '2019-04-10 06:23:00', 1, 1),
('e486496e-4173-4aba-b861-35fa52aba62', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315, '0', 0, '', 15, 111, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-09', NULL, 1, NULL, NULL, NULL, '2019-02-09 04:56:56', '2019-02-09 04:56:56', 1, 1),
('e577af1f-b0bb-458e-bea5-a29c8a5da1e', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 138, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-12', NULL, 1, NULL, NULL, NULL, '2019-02-12 02:32:00', '2019-02-12 02:32:00', 1, 1),
('e5a8d7c1-4522-4732-abf4-facad00b4fa', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 945, '0', 0, '', 45, 130, '5ea27c4c-7922-4fe0-a38f-208cad71343', 945, 0, 0, '123', '2019-02-12', NULL, 1, NULL, NULL, NULL, '2019-02-12 00:46:14', '2019-02-12 01:37:26', 1, 1),
('e6919ae6-4489-4d1a-b55a-0c25350e285b', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 126, '0', 0, '0.00', 6, 72, '00344187-bbd8-4a06-a235-dbe170be28d', 126, 126, 0, '123', '2019-04-10', '2019-04-10', 0, NULL, '2019-04-10', NULL, '2019-04-10 06:32:56', '2019-04-10 07:48:01', 1, 1),
('e718e5b5-05b5-4cd1-a157-96874c847fa', 'bc8502a1-c8db-49e0-acc7-7c9cdb47d71', 4.2, '0', 0, '-0.20', 0.2, 54, '00344187-bbd8-4a06-a235-dbe170be28d', 4, 0, 4, '123', '2019-03-13', '2019-03-13', 1, NULL, '2019-03-13', NULL, '2019-03-13 10:22:08', '2019-03-13 10:22:08', 1, 1),
('e7958d58-42be-421f-9328-26fe2ebe9af', 'dcf157cb-1eda-11e9-8b87-54e1ad6c800', 110000, '0', 0, '', 10000, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 110000, 0, 0, '123', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('e817a718-3ffd-41b5-84e1-29d32d70875', '46556209-ddde-49f4-b8cf-93c0291cbe3', 315, '0', 0, '', 15, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('e9518cb2-3dbe-4e19-b06d-3fd6a243d6b', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 139, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-12', NULL, 1, NULL, NULL, NULL, '2019-02-12 02:34:28', '2019-02-12 02:34:28', 1, 1),
('eb0a896d-ead9-4e6b-9277-986aa17d085', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 134, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-12', '2019-02-13', 1, NULL, NULL, NULL, '2019-02-12 02:03:03', '2019-02-12 02:03:03', 1, 1),
('ebd8bafa-dd50-4827-bac8-05fd6d0db6d', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '10%', 0, '', 15, 127, '5ea27c4c-7922-4fe0-a38f-208cad71343', 284, 0, 0, '123', '2019-02-11', NULL, 1, NULL, NULL, NULL, '2019-02-11 08:38:29', '2019-02-11 08:41:09', 1, 1),
('ee462121-5624-44f2-b861-3074ec67f70', '46556209-ddde-49f4-b8cf-93c0291cbe3', 315, '0', 0, '', 15, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-01-22', NULL, 1, NULL, NULL, NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('eed84f52-159f-4066-b355-70567127af2', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 630, '0', 0, '0.00', 30, 156, '5ea27c4c-7922-4fe0-a38f-208cad71343', 630, 0, 630, '123', '2019-03-09', '2019-03-09', 1, NULL, '2019-03-09', NULL, '2019-03-09 09:09:51', '2019-03-09 09:09:51', 1, 1),
('f01dedb4-046e-4dff-9a65-4e33c4e1417c', '65e3b132-ebbf-436d-8163-593c8bd9e66', 22136.5, '0', 0, '0.50', 2006.5, 84, '00344187-bbd8-4a06-a235-dbe170be28d', 22137, 22137, 0, '123', '2019-04-10', '2019-04-10', 1, NULL, '2019-04-10', NULL, '2019-04-10 12:22:33', '2019-04-10 12:22:33', 1, 1),
('f0c3f275-2fd1-4694-9139-d196c310216', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 135, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-12', '2019-02-14', 1, NULL, NULL, NULL, '2019-02-12 02:03:52', '2019-02-12 02:03:52', 1, 1),
('f258d8db-da83-443b-ae22-35c6201b958', '494cb0da-4df4-4b1f-894b-08849cb65b1', 1200, '0', 0, '0.00', 0, 60, '00344187-bbd8-4a06-a235-dbe170be28d', 1200, 0, 1200, '123', '2019-03-15', '2019-03-15', 1, NULL, '2019-03-16', NULL, '2019-03-15 11:44:35', '2019-03-16 08:52:11', 1, 1),
('f35de53b-515d-49e3-8096-f5df335667b', '494cb0da-4df4-4b1f-894b-08849cb65b1', 10, '0', 0, '0.00', 0, 65, '00344187-bbd8-4a06-a235-dbe170be28d', 10, 0, 10, '123', '2019-04-02', '2019-04-02', 1, NULL, '2019-04-02', NULL, '2019-04-02 10:20:45', '2019-04-02 10:20:45', 1, 1),
('f3b115fb-9bf6-446b-bcc1-d8925ee1b76', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 12.600000000000001, '0', 0, '0.40', 0.6000000000000001, 55, '00344187-bbd8-4a06-a235-dbe170be28d', 13, 0, 13, '123', '2019-03-13', '2019-03-13', 1, NULL, '2019-03-13', NULL, '2019-03-13 13:11:21', '2019-03-13 13:28:03', 1, 1),
('f4351323-c279-4175-8eb6-00e54741b80', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 132, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-12', '2019-02-13', 1, NULL, NULL, NULL, '2019-02-12 01:51:51', '2019-02-12 01:51:51', 1, 1),
('f5fd11f4-ce54-4189-8b69-cc1689958bf', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 1860, '0', 0, '0.00', 0, 21, '00344187-bbd8-4a06-a235-dbe170be28d', 1860, 0, 1860, '123', '2019-03-11', '2019-03-11', 1, NULL, '2019-03-11', NULL, '2019-03-11 01:40:38', '2019-03-11 01:40:38', 1, 1),
('f6619227-0e2b-4bdc-8da2-4e9195fdbe9', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 141, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-14', NULL, 1, '484fb5c6-59f9-4408-a112-22e88e23092', '2019-02-14', 'vadodara', '2019-02-14 02:34:25', '2019-02-14 04:31:09', 1, 1),
('f6f01ead-d821-4358-be06-db752277252', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 135, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-12', '2019-02-14', 1, NULL, NULL, NULL, '2019-02-12 02:03:55', '2019-02-12 02:03:55', 1, 1),
('f7cf5e41-8ec3-442b-a356-7fffa966696', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 325.5, '44%', 0, '-0.28', 15.5, 155, '5ea27c4c-7922-4fe0-a38f-208cad71343', 182, 12, 170, '123', '2019-03-02', '2019-03-02', 1, NULL, '2019-03-02', NULL, '2019-03-02 03:06:20', '2019-03-02 03:06:20', 1, 1),
('f830c199-5406-4337-94b5-1f0ebe25d87', '10551bee-8263-4b8c-81b1-23780d9acd3', 40010, '0', 0, '0.00', 0, 24, '00344187-bbd8-4a06-a235-dbe170be28d', 40010, 0, 40010, '123', '2019-03-11', '2019-03-11', 0, NULL, '2019-03-11', NULL, '2019-03-11 05:31:59', '2019-03-11 05:31:59', 1, 1),
('f9e4ccb9-4d78-4f06-8c48-b1a42d5d7f19', '65e3b132-ebbf-436d-8163-593c8bd9e66', 1050, '0', 0, '0.00', 50, 81, '00344187-bbd8-4a06-a235-dbe170be28d', 1050, 1050, 0, '123', '2019-04-10', '2019-04-10', 0, NULL, '2019-04-10', NULL, '2019-04-10 12:14:52', '2019-04-10 12:19:12', 1, 1),
('fa017c3b-4e84-4f28-83c8-ac6446c7ffd', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 20000, '0', 0, '0.00', 0, 19, '00344187-bbd8-4a06-a235-dbe170be28d', 20000, 0, 20000, '123', '2019-03-11', '2019-03-11', 1, NULL, '2019-03-11', NULL, '2019-03-11 01:10:33', '2019-03-11 01:10:33', 1, 1),
('fcd8f829-da91-4940-8778-36a6fbd5a8a', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, '', 15, 137, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, 0, 0, '123', '2019-02-12', '2019-02-13', 1, NULL, NULL, NULL, '2019-02-12 02:18:50', '2019-02-12 02:18:50', 1, 1),
('fe0d375a-e55d-44f7-a5f2-fc216557f30', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 500, '0', 0, '0.00', 0, 2, '89cc3c3f-fce0-4311-8107-751fce6a2a8', 500, 0, 500, '123', '2019-03-11', '2019-03-11', 0, NULL, '2019-03-11', NULL, '2019-04-26 13:06:50', '2019-03-11 08:37:30', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Purchase`
--

CREATE TABLE `Purchase` (
  `id` varchar(36) NOT NULL,
  `supplierId` varchar(36) NOT NULL,
  `itemTotal` double NOT NULL,
  `discount` varchar(15) NOT NULL,
  `charges` double NOT NULL,
  `roundoff` varchar(10) NOT NULL,
  `taxAmount` double NOT NULL,
  `billNo` double NOT NULL,
  `totalAmount` double NOT NULL,
  `paidAmount` double NOT NULL,
  `pendingAmount` double NOT NULL,
  `gstin` varchar(50) NOT NULL,
  `billDate` datetime NOT NULL,
  `dueDate` date DEFAULT NULL,
  `isEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Purchase`
--

INSERT INTO `Purchase` (`id`, `supplierId`, `itemTotal`, `discount`, `charges`, `roundoff`, `taxAmount`, `billNo`, `totalAmount`, `paidAmount`, `pendingAmount`, `gstin`, `billDate`, `dueDate`, `isEnabled`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('00c02716-4cc4-498e-a514-245ad127aa6', 'dd1e7eb7-dab2-42fd-b963-e53cb8adfd6', 31, '0', 0, '0.00', 0, 658, 31, 1, 30, '123', '2019-03-13 00:00:00', '2019-03-13', 0, '2019-03-13 13:49:22', '2019-03-13 13:49:22', 1, 1),
('031e6d6d-bd4f-4bff-9e31-70791953bcde', '87f4d936-4c79-4bdd-afb5-1060bb81bb48', 10000, '0', 0, '0.00', 0, 326, 10000, 10000, 0, '123', '2019-04-12 00:00:00', '2019-04-12', 1, '2019-04-12 12:50:10', '2019-04-12 12:50:10', 1, 1),
('039bf2bf-1059-40aa-9de5-a925cb4aa32', '9bb150f4-fbf1-4d55-9ed8-d0cd4a2577c', 31, '0', 0, '0.00', 0, 12348, 31, 1, 30, '123', '2019-03-13 00:00:00', '2019-03-13', 0, '2019-03-13 13:59:40', '2019-03-13 13:59:40', 1, 1),
('0cbb646d-01c4-4875-8cf8-1f4b5a8cb3f', '05185471-0bae-4883-bb56-be1ed5cb3ae', 200000, '0', 0, '0.00', 0, 85, 200000, 100000, 100000, '123', '2019-03-14 00:00:00', '2019-03-14', 0, '2019-03-14 11:09:32', '2019-03-14 11:18:32', 1, 1),
('1383208f-6e29-4e0c-a65e-ded8af083b3', 'cb9657bd-e9f3-47e2-af65-0e7d05a522f', 2210, '0', 0, '0.00', 0, 10001, 2210, 200, 2010, '123', '2019-03-12 00:00:00', '2019-03-12', 0, '2019-03-12 01:27:10', '2019-03-25 11:23:41', 1, 1),
('189354e0-5b9b-4aa4-8cd0-4dac0e0ff85', '4c59756d-c6b0-4ef1-8a4d-6b24d1d257c', 130, '0', 0, '0.00', 0, 125, 130, 0, 130, '123', '2019-03-28 00:00:00', '2019-03-28', 1, '2019-03-28 10:53:13', '2019-03-28 10:53:13', 1, 1),
('1d47561b-ac72-4546-87c3-d004e6badad', 'dd1e7eb7-dab2-42fd-b963-e53cb8adfd6', 4, '0', 0, '0.00', 0, 25, 4, 0, 4, '123', '2019-03-13 00:00:00', '2019-03-13', 0, '2019-03-13 14:06:21', '2019-03-13 14:06:21', 1, 1),
('1f3c1582-8b5b-4deb-9750-3d16ecf3f6f', '8730d1e5-c30e-4d62-8c5d-3b27cffb24d', 357, '100', 100, '0.00', 17, 102, 357, 100, 257, '123', '2019-02-20 00:00:00', '2019-02-20', 1, '2019-02-20 02:53:06', '2019-02-20 02:53:06', 1, 1),
('236eed38-98b8-409b-987c-2b19dfae08d', '49e9f880-beed-494d-be48-9f4d6694d0c', 132252, '0', 0, '0.00', 12012, 1, 132252, 0, 132252, '123', '2019-03-07 00:00:00', '2019-03-07', 0, '2019-03-07 02:54:40', '2019-03-07 03:34:12', 1, 1),
('391a4487-c209-44e9-aa80-65703ba43b4', 'd0dfc058-4ce4-4677-861c-bcb16058b96', 4, '0', 0, '0.00', 0, 85, 4, 2, 2, '123', '2019-03-13 00:00:00', '2019-03-13', 0, '2019-03-13 14:08:05', '2019-03-13 14:08:05', 1, 1),
('443ed865-803b-408f-af1f-24db164eccb3', '4c59756d-c6b0-4ef1-8a4d-6b24d1d257c', 1, '0', 0, '0.00', 0, 1239, 1, 0, 1, '123', '2019-04-02 00:00:00', '2019-04-02', 1, '2019-04-02 10:54:03', '2019-04-02 10:54:03', 1, 1),
('4b0994ec-bdeb-476d-9aa6-10e22cbe72d', 'dd1e7eb7-dab2-42fd-b963-e53cb8adfd6', 6, '0', 0, '0.00', 0, 321, 6, 0, 6, '123', '2019-03-13 00:00:00', '2019-03-13', 0, '2019-03-13 13:51:15', '2019-03-13 13:51:15', 1, 1),
('4be976f6-077c-42bf-8710-b03a38deccd', '4c59756d-c6b0-4ef1-8a4d-6b24d1d257c', 510, '0', 0, '0.00', 0, 987, 510, 0, 510, '123', '2019-03-12 00:00:00', '2019-03-12', 0, '2019-03-12 05:48:05', '2019-03-12 06:49:56', 1, 1),
('4ee3aa58-58ec-483f-9926-b5fd85e1b53', '4c59756d-c6b0-4ef1-8a4d-6b24d1d257c', 10, '0', 0, '0.00', 0, 123, 10, 10, 0, '123', '2019-03-07 00:00:00', '2019-03-07', 1, '2019-04-22 12:20:05', '2019-03-12 06:51:08', 1, 1),
('60675907-26c7-446a-8400-d1bc5932037', '4c59756d-c6b0-4ef1-8a4d-6b24d1d257c', 130, '0', 0, '0.00', 0, 1258, 130, 0, 130, '123', '2019-03-25 00:00:00', '2019-03-25', 1, '2019-03-25 10:58:22', '2019-03-28 10:56:21', 1, 1),
('68435801-261a-4a5b-8bdc-b6551174bebc', '87f4d936-4c79-4bdd-afb5-1060bb81bb48', 5000, '0', 0, '0.00', 0, 1123, 5000, 5000, 0, '123', '2019-04-12 00:00:00', '2019-04-12', 1, '2019-04-12 08:11:43', '2019-04-12 08:11:43', 1, 1),
('68e5986c-a054-4a0f-8ff6-e7632ba8b24', '4c59756d-c6b0-4ef1-8a4d-6b24d1d257c', 13, '0', 0, '0.00', 0, 52, 13, 0, 13, '123', '2019-03-14 00:00:00', '2019-03-14', 0, '2019-03-14 07:38:57', '2019-03-14 07:43:14', 1, 1),
('9c9de4d2-007f-4803-92b7-a224df16f7e', '8730d1e5-c30e-4d62-8c5d-3b27cffb24d', 236, '0', 0, '0.00', 0, 98, 236, 0, 236, '123', '2019-03-12 00:00:00', '2019-03-12', 0, '2019-03-12 06:57:46', '2019-03-12 12:46:42', 1, 1),
('9da5ef9e-d9c9-44a4-9bce-8bbac90980d6', 'b0860fe9-bdf4-4a4a-979f-e319410f346', 130, '0', 0, '0.00', 0, 101, 130, 130, 0, '123', '2019-04-10 00:00:00', '2019-04-10', 1, '2019-04-10 13:07:15', '2019-04-10 13:07:15', 1, 1),
('a6cd35c4-00d7-4227-ba77-9798e6b51b1', '4c59756d-c6b0-4ef1-8a4d-6b24d1d257c', 10, '0', 0, '0.00', 0, 12345, 10, 0, 10, '123', '2019-03-12 00:00:00', '2019-03-12', 0, '2019-03-12 14:39:03', '2019-03-12 14:39:03', 1, 1),
('a85ca8e6-20c1-4c1f-8dec-611b189dd3d', '4c59756d-c6b0-4ef1-8a4d-6b24d1d257c', 500, '0', 0, '0.00', 0, 1003, 500, 190, 310, '123', '2019-03-12 00:00:00', '2019-03-12', 1, '2019-04-22 12:20:05', '2019-03-12 06:52:47', 1, 1),
('ab7fee76-e330-45b5-9846-06e2e18983f', '9bb150f4-fbf1-4d55-9ed8-d0cd4a2577c', 4, '0', 0, '0.00', 0, 4587, 4, 0, 4, '123', '2019-03-13 00:00:00', '2019-03-13', 0, '2019-04-26 12:28:02', '2019-03-13 14:00:27', 1, 1),
('ac009fa0-b3f5-40eb-a4fc-fbdfa9acbe9', '8730d1e5-c30e-4d62-8c5d-3b27cffb24d', 1000, '0', 0, '0.00', 0, 11111, 1000, 0, 1000, '123', '2019-03-12 00:00:00', '2019-03-12', 0, '2019-03-12 02:15:02', '2019-03-12 02:15:21', 1, 1),
('b618d9b3-760f-4612-b33a-299a470b0d3', 'd0dfc058-4ce4-4677-861c-bcb16058b96', 3, '0', 0, '0.00', 0, 52, 3, 0, 3, '123', '2019-03-13 00:00:00', '2019-03-13', 0, '2019-03-13 14:08:32', '2019-03-13 14:08:32', 1, 1),
('bbaf1bfd-108d-4fa9-92e0-b9a81a7444d', '8730d1e5-c30e-4d62-8c5d-3b27cffb24d', 325.5, '10%', 0, '0.05', 15.5, 120, 293, 100, 193, '123', '2019-01-08 00:00:00', '2019-02-21', 1, '2019-02-20 02:55:34', '2019-02-21 02:38:59', 1, 1),
('bf31dc4b-81e1-4f3f-a9b8-99103f3dbb25', 'b0860fe9-bdf4-4a4a-979f-e319410f346', 1200, '0', 0, '0.00', 0, 102, 1200, 1103, 97, '123', '2019-04-10 00:00:00', '2019-04-10', 1, '2019-04-10 13:08:02', '2019-04-10 13:08:02', 1, 1),
('c3e2afd6-1dde-43b4-9e5b-7c2ea5d500e2', '05185471-0bae-4883-bb56-be1ed5cb3ae', 200, '0', 0, '0.00', 0, 102, 200, 200, 0, '123', '2019-04-08 00:00:00', '2019-04-08', 0, '2019-04-26 12:25:09', '2019-04-08 10:36:31', 1, 1),
('cd6d2af1-fb60-4259-a23e-1285922cef9', 'cb9657bd-e9f3-47e2-af65-0e7d05a522f', 4000, '0', 0, '0.00', 0, 10002, 4000, 1000, 3000, '123', '2019-03-12 00:00:00', '2019-03-12', 0, '2019-03-12 01:28:58', '2019-03-12 01:28:58', 1, 1),
('ce1bd15f-b29d-47be-9cf2-2ec1814aff4', '49e9f880-beed-494d-be48-9f4d6694d0c', 3150, '0', 0, '0.00', 150, 12, 3150, 0, 3150, '123', '2019-03-07 00:00:00', '2019-03-07', 1, '2019-03-07 02:39:06', '2019-03-07 02:39:06', 1, 1),
('d5f678c5-e800-4908-9c40-4cabac4f101', '4c59756d-c6b0-4ef1-8a4d-6b24d1d257c', 22000, '0', 0, '0.00', 2000, 56, 22000, 22000, 0, '123', '2019-02-26 00:00:00', '2019-02-26', 1, '2019-04-22 12:20:05', '2019-02-26 01:21:28', 1, 1),
('db7a47f7-c0cb-476d-8926-b7b7da52114', '8730d1e5-c30e-4d62-8c5d-3b27cffb24d', 800, '0', 0, '0.00', 0, 223, 800, 0, 800, '123', '2019-03-15 00:00:00', '2019-03-15', 0, '2019-03-15 09:50:27', '2019-03-15 09:50:27', 1, 1),
('ed0a487d-e5f3-49c1-8a8a-0c37758819d', 'cb9657bd-e9f3-47e2-af65-0e7d05a522f', 6, '0', 0, '0.00', 0, 325, 6, 0, 6, '123', '2019-03-13 00:00:00', '2019-03-13', 0, '2019-03-13 13:50:24', '2019-03-13 13:50:24', 1, 1),
('f6fba322-2b60-47c0-afdc-99cb78ea7d1', '05185471-0bae-4883-bb56-be1ed5cb3ae', 200000, '0', 0, '0.00', 0, 86, 200000, 0, 200000, '123', '2019-03-14 00:00:00', '2019-03-14', 0, '2019-03-14 11:11:34', '2019-03-14 11:11:34', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Purchaseitem`
--

CREATE TABLE `Purchaseitem` (
  `id` varchar(36) NOT NULL,
  `purchaseId` varchar(36) NOT NULL,
  `itemId` varchar(36) NOT NULL,
  `quantity` int(11) NOT NULL,
  `itemPrice` double NOT NULL,
  `taxPrice` double NOT NULL,
  `series` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Purchaseitem`
--

INSERT INTO `Purchaseitem` (`id`, `purchaseId`, `itemId`, `quantity`, `itemPrice`, `taxPrice`, `series`) VALUES
('0244a4a7-624d-4032-9608-b97dee97189', '00c02716-4cc4-498e-a514-245ad127aa6', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 3, 10, 0, 0),
('041e515e-f204-4901-bbb6-3ac9b195c0f', '1383208f-6e29-4e0c-a65e-ded8af083b3', '873dc4f4-7a86-417a-9158-bd543ee635a', 10, 120, 0, 0),
('0910c3d9-64ca-46e4-b2a2-b6cd799cac9', 'a85ca8e6-20c1-4c1f-8dec-611b189dd3d', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 3123, 0, 0),
('0b4ef106-3fa7-4348-8bfd-cc4bdebbed0', '236eed38-98b8-409b-987c-2b19dfae08d', '873dc4f4-7a86-417a-9158-bd543ee635a', 2, 120, 12, 1),
('12a989fb-f85e-4216-875e-1cc8d00c978', '236eed38-98b8-409b-987c-2b19dfae08d', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 6, 20000, 12000, 2),
('16ee1d7d-7322-4e51-a043-4549850481c7', '9da5ef9e-d9c9-44a4-9bce-8bbac90980d6', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 120, 0, 0),
('1c166894-1e7b-458e-86aa-a444acdbbec', '60675907-26c7-446a-8400-d1bc5932037', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 120, 0, 0),
('1d53aee8-82c9-464c-a7e5-f18630f473b', '1d47561b-ac72-4546-87c3-d004e6badad', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0, 1),
('20b06982-c730-4001-9d00-50251008a119', 'bf31dc4b-81e1-4f3f-a9b8-99103f3dbb25', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 1200, 0, 0),
('2b71330e-a0a3-42bf-8396-8d3556c0470', '1d47561b-ac72-4546-87c3-d004e6badad', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 3, 1, 0, 0),
('2cad4227-b812-48f0-a448-27f19a79087', '9c9de4d2-007f-4803-92b7-a224df16f7e', '3947d4f6-de4c-466e-9697-2cd90619a2d', 1, 125, 0, 2),
('2ce2dccd-0ea9-4b1a-ad57-f0c1f8be773c', 'c3e2afd6-1dde-43b4-9e5b-7c2ea5d500e2', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 1, 200, 0, 0),
('2e21178a-6279-47e6-aef7-be30ba96a57', '4be976f6-077c-42bf-8710-b03a38deccd', '8989189c-feff-449d-8aca-8aba3cd72d1', 1, 500, 0, 1),
('3eeae447-3788-4be8-a821-e8172930ef4', 'ab7fee76-e330-45b5-9846-06e2e18983f', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0, 1),
('4befa483-1b5a-48b7-a491-3fa38b96818', '1383208f-6e29-4e0c-a65e-ded8af083b3', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0, 2),
('51ab9666-512c-4901-b6f4-2983fb34793', '1f3c1582-8b5b-4deb-9750-3d16ecf3f6f', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 320, 16, 1),
('5731ea71-7ae5-4d41-8bce-c3eee13d90a', 'db7a47f7-c0cb-476d-8926-b7b7da52114', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', 2, 200, 0, 0),
('57e95b5d-624e-4c05-bfaf-62a7dd6f976', '039bf2bf-1059-40aa-9de5-a925cb4aa32', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0, 1),
('5a19c787-c43e-444e-bc73-03d72a8b31f', '4be976f6-077c-42bf-8710-b03a38deccd', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0, 0),
('5af4788c-c760-49ba-b90c-44675903676', '391a4487-c209-44e9-aa80-65703ba43b4', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 3, 1, 0, 0),
('61435be2-940d-4e9f-8f50-3f12eeddb5e', 'ab7fee76-e330-45b5-9846-06e2e18983f', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 3, 1, 0, 0),
('63c3cc6f-bc2f-4479-bb69-a834f4a7b9f', 'bbaf1bfd-108d-4fa9-92e0-b9a81a7444d', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 310, 15.5, 1),
('66016eaa-8a3f-47c5-91b7-3d7ac574d6c1', '68435801-261a-4a5b-8bdc-b6551174bebc', '689cd1c8-27af-4173-a774-7b8273461cb', 50, 100, 0, 0),
('66221661-ef12-4b47-a4e6-45b75a25198e', '031e6d6d-bd4f-4bff-9e31-70791953bcde', '689cd1c8-27af-4173-a774-7b8273461cb', 100, 100, 0, 0),
('67bbb2bd-d17e-46c8-94bf-3cc4557b581', 'ac009fa0-b3f5-40eb-a4fc-fbdfa9acbe9', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 10, 100, 0, 0),
('75224b4a-b66d-4e08-acc1-7b87a06e185', '9c9de4d2-007f-4803-92b7-a224df16f7e', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 1, 89, 0, 3),
('763dceac-ca92-4fab-832b-078379d2752', '1f3c1582-8b5b-4deb-9750-3d16ecf3f6f', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 20, 1, 0),
('76858468-dd0f-4b0b-b99e-574a2e8fdf4', '9c9de4d2-007f-4803-92b7-a224df16f7e', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 1, 12, 0, 1),
('796cae2b-3616-4534-a3ac-52e17fd35d5', '60675907-26c7-446a-8400-d1bc5932037', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0, 1),
('7cc91ea1-fe0c-4106-a2f0-2ab1afeb1f5', 'b618d9b3-760f-4612-b33a-299a470b0d3', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0, 0),
('8187ef71-c96b-413c-967d-92aa2570dc0', '4b0994ec-bdeb-476d-9aa6-10e22cbe72d', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0, 1),
('84157f43-70f1-40f9-8192-122cc3d48ad', '0cbb646d-01c4-4875-8cf8-1f4b5a8cb3f', '8aa3a96c-fa31-424e-940e-15020b1e564', 1, 100000, 0, 0),
('880117b8-4572-417a-a385-ed4c3df8ec5', '4ee3aa58-58ec-483f-9926-b5fd85e1b53', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 10, 10, 5, 0),
('8d13e634-ce74-4a3d-a25d-bee9adcc977', '00c02716-4cc4-498e-a514-245ad127aa6', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0, 1),
('93008af7-204e-40bd-81cd-12be27259b7', 'b618d9b3-760f-4612-b33a-299a470b0d3', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 2, 1, 0, 1),
('95bd7a43-8869-417d-8b2d-2886f69bb97', 'db7a47f7-c0cb-476d-8926-b7b7da52114', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', 2, 200, 0, 1),
('9849c3ad-90b9-4dff-868b-a6eb37905d7', '0cbb646d-01c4-4875-8cf8-1f4b5a8cb3f', '8aa3a96c-fa31-424e-940e-15020b1e564', 1, 100000, 0, 2),
('9bc599a2-dfdf-4606-be84-e3167fec31c', '4b0994ec-bdeb-476d-9aa6-10e22cbe72d', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 5, 1, 0, 0),
('a5ab08f7-c908-4bb6-a5ff-06687f0f38a', 'a6cd35c4-00d7-4227-ba77-9798e6b51b1', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0, 0),
('a7882d9b-0485-4f03-b052-a843d266a6f', 'ed0a487d-e5f3-49c1-8a8a-0c37758819d', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0, 1),
('aac641b3-3fa4-4081-bf8f-169032988d8', '189354e0-5b9b-4aa4-8cd0-4dac0e0ff85', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0, 1),
('af640d85-1f1b-4ce9-ae01-70bce3c6c8c', 'f6fba322-2b60-47c0-afdc-99cb78ea7d1', '8aa3a96c-fa31-424e-940e-15020b1e564', 1, 100000, 0, 0),
('b0e9682a-cc0d-4f8c-b5c1-017238c829f', 'cd6d2af1-fb60-4259-a23e-1285922cef9', 'aa78c2fe-1f1c-4ae4-8a8e-40cac3d7d29', 10, 200, 0, 0),
('b282eeb6-17c7-494f-92d6-8792b5e9676', 'ed0a487d-e5f3-49c1-8a8a-0c37758819d', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 5, 1, 0, 0),
('baa35e4c-c809-42fd-8ae2-8648a2d6e46', '189354e0-5b9b-4aa4-8cd0-4dac0e0ff85', '873dc4f4-7a86-417a-9158-bd543ee635a', 1, 120, 0, 0),
('bce51428-5d42-42e6-8091-9fdb87768ad', 'ce1bd15f-b29d-47be-9cf2-2ec1814aff4', '829771a2-245a-11e9-a14f-588a5a24e72', 10, 300, 150, 0),
('bfcc827a-00ac-40de-9bc4-121953855eb', '1383208f-6e29-4e0c-a65e-ded8af083b3', '3f8aab71-fa01-4e74-919c-1d33140efe8', 5, 200, 0, 1),
('d5d094da-3447-4d79-a03c-0415a2c192e', '68e5986c-a054-4a0f-8ff6-e7632ba8b24', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0, 2),
('d740849e-352d-4080-8497-45da09ef549', 'f6fba322-2b60-47c0-afdc-99cb78ea7d1', '8aa3a96c-fa31-424e-940e-15020b1e564', 1, 100000, 0, 1),
('d7947454-f22f-4bf1-b756-d67b856026a9', '9da5ef9e-d9c9-44a4-9bce-8bbac90980d6', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0, 1),
('db7f45ec-77bd-4387-9fbb-4be1b092734', '9c9de4d2-007f-4803-92b7-a224df16f7e', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0, 0),
('df62386f-5341-4c64-8c7c-9dc060ff868', '68e5986c-a054-4a0f-8ff6-e7632ba8b24', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 12, 1, 0, 0),
('e76cf645-8628-4f8f-94f4-ccb7cfa03c9', 'cd6d2af1-fb60-4259-a23e-1285922cef9', '3f8aab71-fa01-4e74-919c-1d33140efe8', 10, 200, 0, 1),
('e89cf7c3-77c5-4d70-ba75-77a63e9bea1', '039bf2bf-1059-40aa-9de5-a925cb4aa32', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 3, 10, 0, 0),
('e916667b-9b4f-4be5-ab08-15f3e392be9f', '443ed865-803b-408f-af1f-24db164eccb3', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0, 0),
('f87a5b19-af66-44f1-9a99-942bb2ae525', '4ee3aa58-58ec-483f-9926-b5fd85e1b53', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 1, 10, 0, 0),
('fc2e136d-fe7d-4ca3-a4be-cf2dcdd18cb', '391a4487-c209-44e9-aa80-65703ba43b4', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 1, 1, 0, 1),
('fd8fbefd-f9cb-472d-b401-548967bd648', 'a85ca8e6-20c1-4c1f-8dec-611b189dd3d', '3947d4f6-de4c-466e-9697-2cd90619a2d', 1, 500, 0, 1),
('ffdaabc8-3a73-4310-8e2d-b772433ceb6', 'd5f678c5-e800-4908-9c40-4cabac4f101', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 1, 20000, 2000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Purchasepayment`
--

CREATE TABLE `Purchasepayment` (
  `id` varchar(36) NOT NULL,
  `purchaseId` varchar(36) NOT NULL,
  `paymentMethod` varchar(30) NOT NULL,
  `paidAmount` double NOT NULL,
  `paymentDate` date DEFAULT NULL,
  `Notes` longtext,
  `series` int(11) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Purchasepayment`
--

INSERT INTO `Purchasepayment` (`id`, `purchaseId`, `paymentMethod`, `paidAmount`, `paymentDate`, `Notes`, `series`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('0508d383-6688-4eb4-af69-46cd4670dbb', 'd5f678c5-e800-4908-9c40-4cabac4f101', 'Cash', 8000, '2019-02-26', '', 0, '2019-02-26 01:21:29', '2019-02-26 01:21:29', 1, 1),
('1fce2d44-f454-4e08-87af-869c28d296f2', 'c3e2afd6-1dde-43b4-9e5b-7c2ea5d500e2', 'Balance', 200, '2019-04-08', '', 0, '2019-04-08 10:36:31', '2019-04-08 10:36:31', 1, 1),
('25dfb76f-4b38-49fb-8875-c2a66782244', 'bbaf1bfd-108d-4fa9-92e0-b9a81a7444d', 'Cheque', 100, '2019-02-20', '', 0, '2019-02-20 03:25:03', '2019-02-21 02:38:59', 1, 1),
('2e67e9aa-51b4-4245-b859-35664de3a38', 'cd6d2af1-fb60-4259-a23e-1285922cef9', 'Cash', 1000, '2019-03-12', '', 0, '2019-03-12 01:28:58', '2019-03-12 01:28:58', 1, 1),
('2f2965e7-f18a-4c42-acf4-7ccee45b9ab', '0cbb646d-01c4-4875-8cf8-1f4b5a8cb3f', 'Cash', 100000, '2019-03-14', '', 0, '2019-03-14 11:09:33', '2019-03-14 11:18:33', 1, 1),
('46883c90-480b-4828-a15f-7b0e6518413', '1383208f-6e29-4e0c-a65e-ded8af083b3', 'Cash', 200, '2019-03-12', '', 0, '2019-03-12 01:27:11', '2019-03-25 11:23:44', 1, 1),
('4958e178-224c-4cd8-bd77-f4119951ac3', '039bf2bf-1059-40aa-9de5-a925cb4aa32', 'Cash', 1, '2019-03-13', '', 0, '2019-03-13 13:59:41', '2019-03-13 13:59:41', 1, 1),
('5d5cf89c-f43c-470c-a09c-35cce44733b5', 'a85ca8e6-20c1-4c1f-8dec-611b189dd3d', 'Cash', 190, '2019-04-22', '', 0, '2019-04-22 12:20:05', '2019-04-22 12:20:05', 1, 1),
('60a53eaa-e6fb-4651-8157-272a894e639c', '68435801-261a-4a5b-8bdc-b6551174bebc', 'Cash', 5000, '2019-04-12', '', 0, '2019-04-12 08:12:04', '2019-04-12 08:12:04', 1, 1),
('6b514827-ef00-43f6-a273-5b3160fe4498', '9da5ef9e-d9c9-44a4-9bce-8bbac90980d6', 'Cash', 100, '2019-04-10', '', 1, '2019-04-10 07:41:50', '2019-04-10 07:41:50', 1, 1),
('6ec6fa09-1d56-4416-b444-d9472885b5f7', 'd5f678c5-e800-4908-9c40-4cabac4f101', 'Cash', 13800, '2019-04-22', '', 2, '2019-04-22 12:20:05', '2019-04-22 12:20:05', 1, 1),
('819bc56a-0e59-4027-86b2-3469776a9e6', '00c02716-4cc4-498e-a514-245ad127aa6', 'Cash', 1, '2019-03-13', '', 0, '2019-03-13 13:49:23', '2019-03-13 13:49:23', 1, 1),
('92a55943-56f6-4f32-a7b7-725857d60a2', '391a4487-c209-44e9-aa80-65703ba43b4', 'Cash', 2, '2019-03-13', '', 0, '2019-03-13 14:08:06', '2019-03-13 14:08:06', 1, 1),
('9bdeeec6-2b2d-48ab-961d-658d7d16b6d1', '4ee3aa58-58ec-483f-9926-b5fd85e1b53', 'Cash', 10, '2019-04-22', '', 0, '2019-04-22 12:20:05', '2019-04-22 12:20:05', 1, 1),
('d214296b-b779-42c9-94d5-bf1f93332caa', '9da5ef9e-d9c9-44a4-9bce-8bbac90980d6', 'Cash', 30, '2019-04-10', '', 0, '2019-04-10 13:07:16', '2019-04-10 13:07:16', 1, 1),
('d3798742-06cf-4cbf-a3ab-a397dadfd033', '031e6d6d-bd4f-4bff-9e31-70791953bcde', 'Cash', 10000, '2019-04-12', '', 0, '2019-04-12 12:51:18', '2019-04-12 12:51:18', 1, 1),
('d492a6cf-d9d9-4d12-bd38-0635bc5dbf3d', 'bf31dc4b-81e1-4f3f-a9b8-99103f3dbb25', 'Cash', 2, '2019-04-10', '', 2, '2019-04-10 07:44:39', '2019-04-10 07:44:39', 1, 1),
('e0f51332-8e24-488b-abe2-39e41fb7e2b', 'd5f678c5-e800-4908-9c40-4cabac4f101', 'Cheque', 200, '2019-02-26', '', 1, '2019-02-26 01:21:29', '2019-02-26 01:21:29', 1, 1),
('e1838719-223e-4255-977f-5b9c2c5a8001', 'bf31dc4b-81e1-4f3f-a9b8-99103f3dbb25', 'Cheque', 200, '2019-04-10', '', 0, '2019-04-10 13:08:02', '2019-04-10 13:08:02', 1, 1),
('e82a32ea-7b3a-416e-996c-dd156443d940', 'bf31dc4b-81e1-4f3f-a9b8-99103f3dbb25', 'Cash', 901, '2019-04-10', '', 1, '2019-04-10 07:41:50', '2019-04-10 07:41:50', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE `Role` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Role`
--

INSERT INTO `Role` (`id`, `name`, `description`, `created`, `modified`) VALUES
(2, 'admin', NULL, '2019-03-07 06:36:14', '2019-03-07 06:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `RoleMapping`
--

CREATE TABLE `RoleMapping` (
  `id` int(11) NOT NULL,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` int(11) NOT NULL,
  `roleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RoleMapping`
--

INSERT INTO `RoleMapping` (`id`, `principalType`, `principalId`, `roleId`) VALUES
(1, 'USER', 1, 2),
(2, 'USER', 2, 2),
(3, 'USER', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Smsgroup`
--

CREATE TABLE `Smsgroup` (
  `id` varchar(36) NOT NULL,
  `name` varchar(150) NOT NULL,
  `isenabled` tinyint(4) NOT NULL DEFAULT '1',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Smsgroup`
--

INSERT INTO `Smsgroup` (`id`, `name`, `isenabled`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('ab3d0a85-4187-4a71-asdd-q9287407784', 'Group 1', 1, '2019-04-09 10:18:18', '2019-04-09 10:18:18', 1, 1),
('ee3q0a78-7487-4a63-bcdf-d928740a824', 'Group 2', 1, '2019-04-09 10:18:54', '2019-04-09 10:18:54', 1, 1),
('fe47671e-ccd7-4c39-ab41-a7855a509e88', 'Group 3', 1, '2019-04-09 12:08:21', '2019-04-09 12:08:21', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Smslog`
--

CREATE TABLE `Smslog` (
  `id` varchar(36) NOT NULL,
  `smstemplateId` varchar(36) NOT NULL,
  `content` longtext,
  `smsgroupId` varchar(36) DEFAULT NULL,
  `customerId` varchar(36) DEFAULT NULL,
  `datetime` datetime NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdById` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Smslog`
--

INSERT INTO `Smslog` (`id`, `smstemplateId`, `content`, `smsgroupId`, `customerId`, `datetime`, `createdOn`, `createdById`) VALUES
('10f7926c-016f-4fb5-b849-e508bf44dbc0', '2dc05935-763f-4f8e-9038-fbae3af7285', 'd', NULL, '06da5940-38ce-4483-87ba-fa3847a206a', '2019-04-09 12:08:20', '2019-04-09 06:38:20', NULL),
('175ffb94-84e1-4585-8d86-06867c814b6b', '2dc05935-763f-4f8e-9038-fbae3af7285', 'Hello MRRR. JAY SOMANI, your pending amount is  22024', NULL, 'b2a0fcce-2c40-4fc2-8632-196a43121dd', '2019-04-18 16:41:45', '2019-04-18 11:11:45', 1),
('1c7d17d5-0e23-4d8f-aec7-231c351c8968', 'c60cbba8-312f-4b52-a0c2-5910e5a646d2', 'hey  JAYES DUKHNEJAAA, {new line}have a nice day', NULL, '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', '2019-04-12 19:13:02', '2019-04-12 13:43:02', 1),
('289bd160-f9aa-4ee3-bf40-621aab1063f0', '2dc05935-763f-4f8e-9038-fbae3af7285', 'Hello  SACHIN SSSSS, your pending amount is  792', 'ab3d0a85-4187-4a71-asdd-q9287407784', '10551bee-8263-4b8c-81b1-23780d9acd3', '2019-04-12 18:46:17', '2019-04-12 13:16:17', 1),
('29e292a3-6b8d-49ca-b7b7-a486f670f77d', '2dc05935-763f-4f8e-9038-fbae3af7285', 'Hello  JAYES DUKHNEJAAA, your pending amount is  481905', NULL, '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', '2019-04-12 19:10:47', '2019-04-12 13:40:47', 1),
('2e5462ef-fd01-4a93-8e01-7ad53116ba04', '2dc05935-763f-4f8e-9038-fbae3af7285', 'Hello FALGUN BHAVESH, your pending amount is  13268', NULL, '745c46e4-09a9-41e2-b79a-5f94ccc21e0', '2019-04-18 11:24:22', '2019-04-18 05:54:22', NULL),
('326630b8-bee3-4876-95ad-cefd4c47d84d', '2dc05935-763f-4f8e-9038-fbae3af7285', 'Hello FALGUN BHAVESH, your pending amount is  13268', NULL, '745c46e4-09a9-41e2-b79a-5f94ccc21e0', '2019-04-18 11:17:53', '2019-04-18 05:47:53', NULL),
('58fe210d-bb22-4cd6-bdff-6a98efad1422', '2dc05935-763f-4f8e-9038-fbae3af7285', 'Hello  JAYES DUKHNEJAAA, your pending amount is  481905', NULL, '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', '2019-04-12 18:58:16', '2019-04-12 13:28:16', 1),
('599ebdef-9c7f-4ea2-8c9a-c47bbfd41d93', '2dc05935-763f-4f8e-9038-fbae3af7285', 'Hello  JAYES DUKHNEJA, your pending amount is  100', 'ab3d0a85-4187-4a71-asdd-q9287407784', '06da5940-38ce-4483-87ba-fa3847a206a', '2019-04-12 18:46:17', '2019-04-12 13:16:17', 1),
('78e92513-69e1-462d-8d8b-9eb97a4170f7', 'c60cbba8-312f-4b52-a0c2-5910e5a646d2', 'hey  JAYES DUKHNEJAAA, have a nice day', NULL, '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', '2019-04-12 18:53:10', '2019-04-12 13:23:10', 1),
('a5501f25-1f29-4fec-b971-edcdf1afdbb3', '2dc05935-763f-4f8e-9038-fbae3af7285', 'c', NULL, '745c46e4-09a9-41e2-b79a-5f94ccc21e0', '2019-04-09 12:10:16', '2019-04-09 06:40:16', NULL),
('b61fda68-21e3-4e1d-af59-9de5ef75024c', '2dc05935-763f-4f8e-9038-fbae3af7285', 'Hello  JAYES DUKHNEJA, your pending amount is  100', NULL, '06da5940-38ce-4483-87ba-fa3847a206a', '2019-04-11 11:53:15', '2019-04-11 06:23:15', NULL),
('be4678a5-ac60-48a0-a641-2a722232fa5a', '2dc05935-763f-4f8e-9038-fbae3af7285', 'Hello FALGUN BHAVESH, your pending amount is  13268', NULL, '745c46e4-09a9-41e2-b79a-5f94ccc21e0', '2019-04-18 11:17:04', '2019-04-18 05:47:04', NULL),
('d62609ac-4664-416f-964c-a6a4222a12c9', '2dc05935-763f-4f8e-9038-fbae3af7285', 'Hello  M SSSS, your pending amount is  0', 'ab3d0a85-4187-4a71-asdd-q9287407784', '218cb984-00d8-4c3b-a88f-8639fff7051', '2019-04-12 18:46:17', '2019-04-12 13:16:17', 1),
('e7f2948e-82e2-4477-bf19-bfd731de01b2', '2dc05935-763f-4f8e-9038-fbae3af7285', 'Hello AUNSH, your pending amount is  0', 'ab3d0a85-4187-4a71-asdd-q9287407784', '4d039841-d7c0-482c-8156-19edb690468', '2019-04-12 18:46:17', '2019-04-12 13:16:17', 1),
('f50e587b-fd2d-4e7a-96e8-e8b64210ecbc', '2dc05935-763f-4f8e-9038-fbae3af7285', 'Hello  JAYES DUKHNEJAAA, your pending amount is  481905', 'ab3d0a85-4187-4a71-asdd-q9287407784', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', '2019-04-12 18:46:17', '2019-04-12 13:16:17', 1),
('fbb0d575-01cf-4d5f-84f5-4791b1db1b23', '2dc05935-763f-4f8e-9038-fbae3af7285', 'e', NULL, '745c46e4-09a9-41e2-b79a-5f94ccc21e0', '2019-04-09 12:08:20', '2019-04-09 06:38:20', NULL),
('fc96b814-4406-4b94-a064-18c1fd57e47e', '2dc05935-763f-4f8e-9038-fbae3af7285', 'Hello MRS. BHAVESH KT, your pending amount is  220011', NULL, '46556209-ddde-49f4-b8cf-93c0291cbe3', '2019-04-11 11:53:15', '2019-04-11 06:23:15', NULL),
('fcc668f4-6f32-41ee-b137-27c3f63ed7c7', '2dc05935-763f-4f8e-9038-fbae3af7285', 't', NULL, '06da5940-38ce-4483-87ba-fa3847a206a', '2019-04-09 12:10:16', '2019-04-09 06:40:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Smstemplate`
--

CREATE TABLE `Smstemplate` (
  `id` varchar(36) NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` longtext NOT NULL,
  `isEnabled` tinyint(4) NOT NULL DEFAULT '1',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Smstemplate`
--

INSERT INTO `Smstemplate` (`id`, `title`, `content`, `isEnabled`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('2dc05935-763f-4f8e-9038-fbae3af7285', 'Pending Amount', 'Hello {name}, your pending amount is  {pending} .', 1, '2019-04-20 10:22:35', '2019-04-20 10:22:35', 1, 1),
('c60cbba8-312f-4b52-a0c2-5910e5a646d2', 'New 11', 'hey {name}, {new line}have a nice day', 1, '2019-04-11 11:55:59', '2019-04-12 06:47:21', 1, 1),
('e17e1a14-c565-411a-9bd6-3af2d822fa24', 'Offer Reminder', 'hey {{name}},today we have kept 50% off on all items', 1, '2019-04-22 13:09:28', '2019-04-22 13:09:28', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Stocklog`
--

CREATE TABLE `Stocklog` (
  `id` varchar(36) NOT NULL,
  `itemId` varchar(36) NOT NULL,
  `purchaseId` varchar(36) DEFAULT NULL,
  `orderId` varchar(36) DEFAULT NULL,
  `price` double NOT NULL,
  `notes` longtext,
  `date` datetime NOT NULL,
  `quantity` double NOT NULL,
  `isEnabled` tinyint(4) NOT NULL DEFAULT '1',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Stocklog`
--

INSERT INTO `Stocklog` (`id`, `itemId`, `purchaseId`, `orderId`, `price`, `notes`, `date`, `quantity`, `isEnabled`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('00e4523c-1b87-4f2f-b802-03d4af28950', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', NULL, '8b9292f3-db93-43f2-8ee7-caf62ad750f', 20000, 'Sales Return', '2019-03-18 08:38:35', -1, 1, '2019-03-18 08:38:35', '2019-03-18 08:38:35', 1, 1),
('02221d21-ebea-46c5-bcd5-56d58603baa', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', '4ee3aa58-58ec-483f-9926-b5fd85e1b53', NULL, 10, NULL, '2019-03-07 00:00:00', 1, 1, '2019-03-12 06:51:08', '2019-03-12 06:51:08', 1, 1),
('0297fd65-0cf5-423f-92f0-3300779b979', '689cd1c8-27af-4173-a774-7b8273461cb', NULL, NULL, 100, '', '2019-03-30 00:00:00', 10, 1, '2019-03-30 12:36:19', '2019-03-30 12:36:19', 1, 1),
('02cac326-7455-4d48-b948-3c7b8ee67d6', '8989189c-feff-449d-8aca-8aba3cd72d1', NULL, '4ae3a2ad-f576-42c4-a505-cc5e9c0c073', 500, NULL, '2019-03-13 00:00:00', 2, 0, '2019-03-13 06:54:14', '2019-03-13 06:54:14', 1, 1),
('0439b451-94b4-48d3-ae8a-9814fe41f2d', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, 'Sales Return of Bill No 57', '2019-03-14 08:10:12', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:10:11', 1, 0),
('047ed6c5-057e-43a9-a21e-de815607ab1', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, NULL, 10000, '', '2019-03-14 00:00:00', 5, 1, '2019-03-14 11:34:13', '2019-03-14 11:34:13', 1, 1),
('04f45fb7-a52c-489b-a269-029becbad1d', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, NULL, 10, '', '2019-03-15 00:00:00', 19, 1, '2019-03-15 11:59:43', '2019-03-15 11:59:43', 1, 1),
('05d486c6-8a0b-497e-b26e-3943f4e4ab93', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', NULL, 'f01dedb4-046e-4dff-9a65-4e33c4e1417c', 10, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 12:22:33', '2019-04-10 12:22:33', 1, 1),
('064faab3-7b48-4dca-b7fb-34bc1b1ec4c', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 'b618d9b3-760f-4612-b33a-299a470b0d3', NULL, 1, NULL, '2019-03-13 00:00:00', 2, 0, '2019-03-13 14:08:32', '2019-03-13 14:08:32', 1, 1),
('0729d235-380e-40bf-88b2-7995bc99747a', '486bad3d-4afe-46f2-86b2-1dd9b850738', NULL, '670dfb4f-80bd-427c-bf8c-eaac87bcf576', 1000, NULL, '2019-04-12 00:00:00', 2, 1, '2019-04-12 07:48:10', '2019-04-12 07:48:10', 1, 1),
('07508337-b369-448c-9e3b-2dc4ac8eeec', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', NULL, NULL, 0, NULL, '0000-00-00 00:00:00', 100, 1, '2019-02-24 09:15:37', '2019-02-24 09:15:37', 1, 1),
('07768799-a905-4889-8b4b-dc137fcb0251', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, 'af52694e-d46e-4cd9-ba7f-394fec8ab5fe', 120, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 12:11:54', '2019-04-10 12:11:54', 1, 1),
('08554bd6-d946-4a56-9be5-c629ecbb4c7', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', '4be976f6-077c-42bf-8710-b03a38deccd', NULL, 10, NULL, '2019-03-12 00:00:00', 1, 1, '2019-03-12 06:48:16', '2019-03-12 06:49:56', 1, 1),
('0864eb97-1221-4933-8d0f-4831a3b95b6c', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, 'e093240e-1ac0-4e59-82d5-f72c0b3d56e5', 200, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 12:12:20', '2019-04-10 12:12:20', 1, 1),
('089b6603-5e82-47a5-9db3-f907d96183e', 'ffb92995-05b4-4a59-b18b-e206abd95a5', NULL, NULL, 10, 'Sales Return of Bill No 51', '2019-03-13 00:00:00', 1, 1, '2019-03-13 08:41:06', '2019-03-13 08:41:06', 1, 1),
('09f77515-fd3b-4d80-8af3-c2c0b27243be', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, 'd856874a-61a5-4e46-9f68-4ed219a1e57a', 10, 'Sales Return', '2019-04-10 12:11:24', -1, 1, '2019-04-10 12:11:24', '2019-04-10 12:11:24', 1, 1),
('0be498c3-7989-417b-8693-ebe423e3e187', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', NULL, 'ae382098-7463-47f2-bda0-9a5fc37f45ae', 10, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 11:15:30', '2019-04-10 11:15:30', 1, 1),
('0cef9209-0431-4a91-9c57-364bd9bbe505', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, 'e29f8156-092b-4c41-95ad-a53f3d32c2ff', 100000, NULL, '2019-04-12 00:00:00', 10, 1, '2019-04-12 12:07:29', '2019-04-12 12:07:29', 1, 1),
('0d420acc-a2b3-4d52-829d-983fbc68e70', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, 'bda5894e-1d15-4fc8-8707-cf9f7ca6f20', 1, NULL, '2019-03-13 00:00:00', 1, 1, '2019-03-13 12:51:58', '2019-03-13 13:10:09', 1, 1),
('0d607f6a-900e-40b7-b47d-3aff9611c215', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, '8180be8b-c7da-4af6-a7f7-bc4eb2796697', 10, NULL, '2019-04-26 00:00:00', 1, 1, '2019-04-26 11:55:00', '2019-04-26 11:55:00', 1, 1),
('0d72c921-9d46-40cb-9a1f-f8dc26771cd8', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, '63936e8d-0250-4e0a-8875-62352596fd57', 120, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 06:44:50', '2019-04-10 06:44:50', 1, 1),
('0de4e6e4-5fc6-4689-9718-670d374d4d7', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', '68e5986c-a054-4a0f-8ff6-e7632ba8b24', NULL, 1, NULL, '2019-03-14 00:00:00', 12, 1, '2019-03-14 07:38:58', '2019-03-14 07:43:16', 1, 1),
('0dfc42a2-1e7f-4fcd-8acd-6a042eafa5f', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, 'e718e5b5-05b5-4cd1-a157-96874c847fa', 1, 'Sales Return of Bill No 54', '2019-03-13 00:00:00', 1, 1, '2019-03-13 10:22:08', '2019-03-13 10:22:08', 1, 1),
('0e0e7667-7a63-4a98-8af2-16652d31930', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, '04ec4033-7f12-4904-a4c6-7042e749682', 200, NULL, '2019-03-13 00:00:00', 1, 1, '2019-03-18 08:30:30', '2019-03-18 08:32:27', 1, 1),
('0e4a216a-eede-4c90-b3c5-feabc74482f', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 'ab7fee76-e330-45b5-9846-06e2e18983f', NULL, 1, NULL, '2019-03-13 00:00:00', 1, 1, '2019-03-13 14:00:28', '2019-03-13 14:00:28', 1, 1),
('0ea2cf8c-211e-4c0b-bd48-0b6638f9e6ef', '7fa15757-e571-4387-b3b2-5a328a5f529', NULL, 'e093240e-1ac0-4e59-82d5-f72c0b3d56e5', 1000, 'Sales Return', '2019-04-10 12:14:26', -1, 1, '2019-04-10 12:14:26', '2019-04-10 12:14:26', 1, 1),
('1001e188-329f-4125-9a51-a018ba17d6d', '689cd1c8-27af-4173-a774-7b8273461cb', NULL, NULL, 5, '', '2019-03-30 00:00:00', 5, 1, '2019-03-30 12:31:18', '2019-03-30 12:31:18', 1, 1),
('115f3146-3294-46f1-b39c-25ce0d739ee0', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, '63936e8d-0250-4e0a-8875-62352596fd57', 120, 'Sales Return', '2019-04-10 07:45:38', -1, 1, '2019-04-10 07:45:38', '2019-04-10 07:45:38', 1, 1),
('11ab7a8f-76b3-4195-a34c-9755183ffc9', '873dc4f4-7a86-417a-9158-bd543ee635a', '1383208f-6e29-4e0c-a65e-ded8af083b3', NULL, 120, NULL, '0000-00-00 00:00:00', 10, 1, '2019-03-12 01:27:11', '2019-03-25 11:23:43', 1, 1),
('123e0991-52c2-48f0-90c6-7878b7107d47', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, NULL, 10, 'aaaaa', '2019-04-08 00:00:00', 5, 1, '2019-04-08 07:28:36', '2019-04-08 07:28:36', 1, 1),
('12bf7448-4769-474e-8a73-b98a1723f32', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, 'bda5894e-1d15-4fc8-8707-cf9f7ca6f20', 1, NULL, '2019-03-13 00:00:00', 1, 1, '2019-03-13 13:09:45', '2019-03-13 13:09:45', 1, 1),
('14da3b06-ef9a-45c7-b637-d827dd3d643', 'ab042a77-8226-41aa-883c-72907f0135e', NULL, NULL, 150, 'Sales Return of Bill No 47', '2019-03-13 00:00:00', 1, 1, '2019-03-13 07:45:13', '2019-03-13 07:45:13', 1, 1),
('159da3b1-b580-497b-9bbb-d6377b6ea86', '873dc4f4-7a86-417a-9158-bd543ee635a', '189354e0-5b9b-4aa4-8cd0-4dac0e0ff85', NULL, 120, NULL, '2019-03-28 00:00:00', 1, 1, '2019-03-28 10:53:14', '2019-03-28 10:53:14', 1, 1),
('15b0231e-cf0c-400e-ab50-f5b18586eae', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, NULL, 10, '', '2019-03-12 00:00:00', 5, 0, '2019-04-27 10:07:50', '2019-03-12 13:49:48', 1, 1),
('16da96f8-47dd-4477-ac3f-68e03707559', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, NULL, 100, '', '2019-03-15 00:00:00', 11, 1, '2019-03-15 11:49:35', '2019-03-15 11:49:35', 1, 1),
('18945cd5-bc13-4503-a70b-7fb7f532c5f', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', '236eed38-98b8-409b-987c-2b19dfae08d', NULL, 0, NULL, '0000-00-00 00:00:00', 6, 1, '2019-03-07 03:34:13', '2019-03-07 03:34:13', 1, 1),
('18e0b918-294e-45a3-a3cc-7a28948874d', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', NULL, '0b69d7a5-c0b0-4625-be6a-3061c7acd91', 10, NULL, '2019-03-12 00:00:00', 1, 1, '2019-03-12 14:25:05', '2019-03-12 14:25:05', 1, 1),
('1a6ae334-1b48-47c1-abbb-006a764f587c', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, 'ae382098-7463-47f2-bda0-9a5fc37f45ae', 200, 'Sales Return', '2019-04-10 12:04:31', -1, 1, '2019-04-10 12:04:31', '2019-04-10 12:04:31', 1, 1),
('1a85da8d-3372-488a-a3df-7a2d0af112e', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', '391a4487-c209-44e9-aa80-65703ba43b4', NULL, 1, NULL, '2019-03-13 00:00:00', 3, 0, '2019-03-13 14:08:05', '2019-03-13 14:08:05', 1, 1),
('1b7c70fd-c5b1-42d8-9a6f-1c613af54fd7', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, 'ae382098-7463-47f2-bda0-9a5fc37f45ae', 200, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 11:15:30', '2019-04-10 11:15:30', 1, 1),
('1c13de42-b31f-4f94-9853-c493d26ce5f', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, 'Sales Return of Bill No 57', '2019-03-14 08:10:12', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:10:11', 1, 0),
('1cafdb2e-77be-4d90-b28c-a8f8c0f6833', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, 'e718e5b5-05b5-4cd1-a157-96874c847fa', 1, 'Sales Return of Bill No 54', '2019-03-13 00:00:00', 2, 1, '2019-03-13 10:22:08', '2019-03-13 10:22:08', 1, 1),
('1d7757b8-6f6c-47ac-8b5f-2f1d4d375c2', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '04ec4033-7f12-4904-a4c6-7042e749682', 200, NULL, '2019-03-13 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-18 08:32:27', 1, 1),
('1e0e5cb7-f46a-4713-a0c9-f52febce8f5', '3f8aab71-fa01-4e74-919c-1d33140efe8', '1383208f-6e29-4e0c-a65e-ded8af083b3', NULL, 200, NULL, '0000-00-00 00:00:00', 5, 0, '2019-04-27 10:07:50', '2019-03-25 11:23:43', 1, 1),
('1e574187-b93b-4717-8e7c-d91f3aceb523', '689cd1c8-27af-4173-a774-7b8273461cb', NULL, '6b441e45-bf5f-4131-b9ce-c98201f1babf', 100, NULL, '2019-04-12 00:00:00', 3, 1, '2019-04-16 09:39:54', '2019-04-16 09:39:54', 1, 1),
('1e82d29e-3192-4490-a7ae-9165edddf03', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 'ab7fee76-e330-45b5-9846-06e2e18983f', NULL, 1, NULL, '2019-03-13 00:00:00', 3, 1, '2019-03-13 14:00:28', '2019-03-13 14:00:28', 1, 1),
('1ebdcbab-d40c-4f05-9666-d663a3fbb68', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, 'f258d8db-da83-443b-ae22-35c6201b958', 200, NULL, '2019-03-15 00:00:00', 1, 1, '2019-03-16 08:52:11', '2019-03-16 08:52:11', 1, 1),
('1f55be62-73af-421e-b6a2-7b4e9395cf0', '8989189c-feff-449d-8aca-8aba3cd72d1', NULL, '4ae3a2ad-f576-42c4-a505-cc5e9c0c073', 500, NULL, '2019-03-13 00:00:00', 2, 0, '2019-03-13 06:54:14', '2019-03-13 06:54:14', 1, 1),
('1f91e260-6552-45e2-bc90-920fe172982', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, '7abe2c6e-7521-4243-b314-329be287245', 100000, NULL, '2019-03-14 00:00:00', 1, 1, '2019-03-14 11:10:40', '2019-03-14 11:19:34', 1, 1),
('222ac2a0-96ec-4817-82e4-53f78ec4795', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', NULL, '679b498a-23d7-413d-bb97-3c97875ab58', 10, NULL, '2019-03-12 00:00:00', 1, 0, '2019-03-12 14:27:44', '2019-03-12 14:27:44', 1, 1),
('227a7cd3-f603-4db2-a3b7-91c3115a9ac', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, 'f3b115fb-9bf6-446b-bcc1-d8925ee1b76', 10, NULL, '2019-03-13 00:00:00', 1, 1, '2019-03-13 13:11:21', '2019-03-13 13:28:04', 1, 1),
('237a2a74-d0cd-4a65-99db-3281b7d3386e', '98cca098-9adf-44b4-ae28-cc066f6c369', NULL, 'af52694e-d46e-4cd9-ba7f-394fec8ab5fe', 10, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 12:11:54', '2019-04-10 12:11:54', 1, 1),
('25530753-e1e1-48d7-b0be-ec04fc93e76', '3947d4f6-de4c-466e-9697-2cd90619a2d', NULL, NULL, 5, 'new1', '2019-03-30 00:00:00', 5, 1, '2019-03-30 12:25:14', '2019-03-30 12:25:14', 1, 1),
('256bf6d3-739f-45cc-a6eb-f1af15bce42', '3f8aab71-fa01-4e74-919c-1d33140efe8', 'cd6d2af1-fb60-4259-a23e-1285922cef9', NULL, 0, NULL, '0000-00-00 00:00:00', 10, 0, '2019-03-12 01:28:58', '2019-03-12 01:28:58', 1, 1),
('29397148-2e80-4ad1-b783-4586954cd97c', '873dc4f4-7a86-417a-9158-bd543ee635a', '9da5ef9e-d9c9-44a4-9bce-8bbac90980d6', NULL, 120, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 13:07:16', '2019-04-10 13:07:16', 1, 1),
('2bf01440-5dc2-404d-9515-7b1ba1eb2de7', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, 'a2337d6f-e469-4d18-9a67-c3a9bc11c7a9', 1200, NULL, '2019-04-26 00:00:00', 1, 1, '2019-04-26 12:29:03', '2019-04-26 12:29:03', 1, 1),
('2c237eb0-e7e7-4200-a7a3-337bfb2f2a1', '689cd1c8-27af-4173-a774-7b8273461cb', NULL, NULL, 100, '', '2019-03-30 00:00:00', 10, 1, '2019-03-30 12:34:51', '2019-03-30 12:34:51', 1, 1),
('2d650cb1-ca31-437e-91ac-cb672049f45', '11964231-6d2a-46e6-a833-79d1619d60e', NULL, '2dc05935-763f-4f8e-9038-fbae3af7298', 10, NULL, '2019-04-02 00:00:00', 3, 1, '2019-04-02 10:21:23', '2019-04-02 10:21:23', 1, 1),
('3012ada6-51e5-42bf-856f-4d90405ac68a', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', NULL, 'ae382098-7463-47f2-bda0-9a5fc37f45ae', 10, 'Sales Return', '2019-04-10 12:04:31', -1, 1, '2019-04-10 12:04:31', '2019-04-10 12:04:31', 1, 1),
('3049f605-4ebc-4215-a525-29ed3bd4696', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', NULL, NULL, 0, NULL, '0000-00-00 00:00:00', 100, 1, '2019-03-07 03:15:04', '2019-03-07 03:15:04', 1, 1),
('3050e1ea-7f99-44ac-90e1-25bc1b539f6', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, NULL, 10000, '', '2019-03-14 00:00:00', 3, 1, '2019-03-14 11:35:20', '2019-03-14 11:35:20', 1, 1),
('30607551-b32c-4577-98bd-e92073ccf9e', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', '9c9de4d2-007f-4803-92b7-a224df16f7e', NULL, 12, NULL, '2019-03-12 00:00:00', 1, 1, '2019-03-12 06:58:01', '2019-03-12 12:46:42', 1, 1),
('3335c397-fab1-40f9-83e8-bf9c97d02e6', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, NULL, '2019-03-14 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:09:53', 1, 1),
('33831f2f-101a-46be-9636-0f9d79483710', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', '443ed865-803b-408f-af1f-24db164eccb3', NULL, 1, NULL, '2019-04-02 00:00:00', 1, 1, '2019-04-02 10:54:04', '2019-04-02 10:54:04', 1, 1),
('33ce292a-9189-4347-868c-bc377c5d5d0', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, 'b6290ce2-cd90-4940-adba-1d61cbc6062', 120, NULL, '2019-03-24 00:00:00', 1, 1, '2019-03-24 13:04:55', '2019-03-24 13:04:55', 1, 1),
('344492ec-6785-40f6-874a-c60f0c7b87f', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 'ed0a487d-e5f3-49c1-8a8a-0c37758819d', NULL, 1, NULL, '2019-03-13 00:00:00', 5, 0, '2019-03-13 13:50:25', '2019-03-13 13:50:25', 1, 1),
('3608ef24-bc3e-434d-b2c4-5c4346fa147', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', NULL, 'afb8c6ca-ae76-4cbe-b4f3-198d6925deb', 10, NULL, '2019-03-12 00:00:00', 1, 0, '2019-03-12 14:34:53', '2019-03-12 14:34:53', 1, 1),
('3686cac0-0cc8-451c-9710-22162785bf2', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', 'db7a47f7-c0cb-476d-8926-b7b7da52114', NULL, 200, NULL, '2019-03-15 00:00:00', 2, 1, '2019-03-15 09:50:27', '2019-03-15 09:50:27', 1, 1),
('374a8d03-f478-4823-827e-d957bc501568', '11964231-6d2a-46e6-a833-79d1619d60e', NULL, NULL, 10, '', '2019-04-22 00:00:00', 11, 1, '2019-04-22 12:29:13', '2019-04-22 12:29:13', 1, 1),
('38fa4c10-766c-47d5-b1b1-8033bbe8b68', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, '7abe2c6e-7521-4243-b314-329be287245', 100000, 'Sales Return', '2019-03-14 11:20:21', -1, 1, '2019-03-14 11:20:21', '2019-03-14 11:20:21', 1, 1),
('38ffbd3e-265c-4e1d-8306-8b3ec0465d3', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', '039bf2bf-1059-40aa-9de5-a925cb4aa32', NULL, 10, NULL, '2019-03-13 00:00:00', 3, 0, '2019-03-13 13:59:41', '2019-03-13 13:59:41', 1, 1),
('390213d3-e7c3-4bd9-ae91-df65f89149f', '11964231-6d2a-46e6-a833-79d1619d60e', NULL, '01cbc026-b319-43d4-8db1-cf3315714e4', 10, NULL, '2019-04-02 00:00:00', 3, 1, '2019-04-22 09:54:46', '2019-04-22 09:54:46', 1, 1),
('3b1016dc-be58-440a-a9b7-18595451823', '689cd1c8-27af-4173-a774-7b8273461cb', NULL, NULL, 100, '', '2019-03-30 00:00:00', 10, 1, '2019-03-30 12:34:56', '2019-03-30 12:34:56', 1, 1),
('3b701fab-8768-409f-a8ca-c5d531f25d8', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', NULL, NULL, 0, NULL, '0000-00-00 00:00:00', 5050, 1, '2019-03-07 03:35:55', '2019-03-07 03:35:55', 1, 1),
('3ba85dbb-22db-4396-b85b-a86a19109eb', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, 'bda5894e-1d15-4fc8-8707-cf9f7ca6f20', 1, NULL, '2019-03-13 00:00:00', 1, 1, '2019-03-13 13:01:24', '2019-03-13 13:01:24', 1, 1),
('3bfe9a7d-967d-4e7b-bca8-5d8ff95aab6', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, 'Sales Return of Bill No 57', '2019-03-14 08:10:12', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:10:11', 1, 0),
('3c96e986-720e-4ffe-99b4-514090c6bfb', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', '68e5986c-a054-4a0f-8ff6-e7632ba8b24', NULL, 1, NULL, '2019-03-14 00:00:00', 1, 1, '2019-03-14 07:43:16', '2019-03-14 07:43:16', 1, 1),
('3cb755e4-37ac-4e63-b501-f527346f6f9', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', NULL, '5740ce72-7403-4bad-8404-7d13fb58880', 10, NULL, '2019-03-13 00:00:00', 2, 1, '2019-03-13 07:39:00', '2019-03-13 07:39:00', 1, 1),
('3d8b53b2-90fd-407d-a85d-ffd9c89e205', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, 'f258d8db-da83-443b-ae22-35c6201b958', 200, NULL, '2019-03-15 00:00:00', 5, 1, '2019-03-15 11:44:36', '2019-03-16 08:52:11', 1, 1),
('3da1c933-86be-4dc2-9cc3-e961cdb0d91', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', '9c9de4d2-007f-4803-92b7-a224df16f7e', NULL, 10, NULL, '2019-03-14 10:01:43', -1, 1, '2019-03-14 10:01:43', '2019-03-14 10:01:43', 1, 1),
('3f226b6c-7f7a-4fa9-8a54-12c46b37ad0', '8989189c-feff-449d-8aca-8aba3cd72d1', NULL, '12c44f75-c160-411c-8114-a2446c703c3', 500, NULL, '2019-03-13 00:00:00', 2, 0, '2019-04-27 10:08:16', '2019-03-13 06:58:54', 1, 1),
('3fed48e8-60a0-4409-92ce-bfe0f9a377d0', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, '5dab2a4a-0c2c-4541-af5f-a968358d7bca', 200, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 12:53:11', '2019-04-10 12:53:11', 1, 1),
('3ff16f17-8dde-45aa-8581-186e797e66c2', '7fa15757-e571-4387-b3b2-5a328a5f529', NULL, 'c98aa049-2695-4c45-bbea-cb93e09c290a', 1000, 'Sales Return', '2019-04-10 12:11:24', -1, 1, '2019-04-10 12:11:24', '2019-04-10 12:11:24', 1, 1),
('41170428-1d2e-42d0-831e-659bf439bbd', '689cd1c8-27af-4173-a774-7b8273461cb', NULL, NULL, 100, '', '2019-03-30 00:00:00', 10, 1, '2019-03-30 12:36:46', '2019-03-30 12:36:46', 1, 1),
('43238043-783d-48fb-a42b-239ff67f051', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, 'bd337eb6-378e-4b07-b068-998b70a1ba7', 100000, 'Sales Return', '2019-03-14 11:20:21', -1, 1, '2019-03-14 11:20:21', '2019-03-14 11:20:21', 1, 1),
('43449e64-e74f-4621-93b5-621909e8c5a1', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, 'd856874a-61a5-4e46-9f68-4ed219a1e57a', 120, 'Sales Return', '2019-04-10 12:11:24', -1, 1, '2019-04-10 12:11:24', '2019-04-10 12:11:24', 1, 1),
('439f527d-0e99-449a-8037-c487e560ae0', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, 'c31eb8d2-b754-4f18-b3a2-9a96504b25f', 200, NULL, '2019-03-12 00:00:00', 2, 0, '2019-04-27 10:07:50', '2019-03-12 13:50:24', 1, 1),
('44740245-76d7-4057-b644-74d761f331f', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, NULL, '2019-03-14 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 07:44:38', 1, 1),
('448b48b4-c2bf-4a05-ab11-2adf7e0682c', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', NULL, NULL, 0, NULL, '0000-00-00 00:00:00', 100, 1, '2019-03-07 03:16:25', '2019-03-07 03:16:25', 1, 1),
('46aba1f8-f8fd-4052-92e1-798f7d10f68', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, '7abe2c6e-7521-4243-b314-329be287245', 100000, 'Sales Return', '2019-03-14 11:19:36', -1, 1, '2019-03-14 11:19:36', '2019-03-14 11:19:36', 1, 1),
('471d4326-0710-4c54-8b4d-924b708991c', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', NULL, NULL, 5, 'new1', '2019-03-30 00:00:00', 5, 1, '2019-03-30 12:25:14', '2019-03-30 12:25:14', 1, 1),
('475b575e-ea00-43ac-a857-2d0aefdc2cf', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', NULL, NULL, 0, NULL, '0000-00-00 00:00:00', 500, 1, '2019-02-24 03:52:19', '2019-02-24 03:52:19', 1, 1),
('483efd9f-22df-4842-a6cc-e8150be0f92', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, '7abe2c6e-7521-4243-b314-329be287245', 100000, NULL, '2019-03-14 00:00:00', 1, 1, '2019-03-14 11:10:40', '2019-03-14 11:10:40', 1, 1),
('4b2aa6b4-69b5-4626-ab0f-6bb6a3d3547', '829771a2-245a-11e9-a14f-588a5a24e72', NULL, NULL, 0, NULL, '0000-00-00 00:00:00', 10, 1, '2019-03-07 02:39:06', '2019-03-07 02:39:06', 1, 1),
('4bb66a09-53f7-4a90-a4db-1ff250b6335', '3947d4f6-de4c-466e-9697-2cd90619a2d', NULL, '839cfc92-aa60-418a-bb89-55be294cbc9', 500, NULL, '2019-03-16 00:00:00', 1, 1, '2019-03-16 08:54:11', '2019-03-16 08:55:21', 1, 1),
('4bcd1a17-ddb7-44ca-ade3-b436c483304', '689cd1c8-27af-4173-a774-7b8273461cb', NULL, NULL, 100, '', '2019-03-30 00:00:00', 10, 1, '2019-03-30 12:34:21', '2019-03-30 12:34:21', 1, 1),
('4bcf99a4-0f59-4f7a-97be-d7736c116f01', '689cd1c8-27af-4173-a774-7b8273461cb', '031e6d6d-bd4f-4bff-9e31-70791953bcde', NULL, 100, NULL, '2019-04-12 00:00:00', 100, 1, '2019-04-12 12:50:11', '2019-04-12 12:50:11', 1, 1),
('4e996123-2283-4bd9-a7fc-e8060e52e1b', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, NULL, 10, '', '2019-03-15 00:00:00', 21, 1, '2019-03-15 12:02:52', '2019-03-15 12:02:52', 1, 1),
('4ee1b5fd-846a-47c9-a178-c5f8168927c3', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, '5dab2a4a-0c2c-4541-af5f-a968358d7bca', 120, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 12:53:11', '2019-04-10 12:53:11', 1, 1),
('4f69fe7b-651c-4e60-943b-7817bcfc0be', '3637492e-dce5-45c3-aa7e-d195e7a33ab', NULL, '36eed7c5-598a-402c-93a0-713fb61891e', 1, NULL, '2019-03-14 00:00:00', 1, 0, '2019-03-14 07:34:23', '2019-03-14 09:54:26', 1, 1),
('4faacc08-bcf2-4e64-ad08-7a01202907a6', '7fa15757-e571-4387-b3b2-5a328a5f529', NULL, 'f9e4ccb9-4d78-4f06-8c48-b1a42d5d7f19', 1000, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 12:14:52', '2019-04-10 12:14:52', 1, 1),
('50a674fe-8b25-4993-a0fc-03bbb164e59', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', '1d47561b-ac72-4546-87c3-d004e6badad', NULL, 1, NULL, '2019-03-13 00:00:00', 1, 0, '2019-03-13 14:06:22', '2019-03-13 14:06:22', 1, 1),
('50ecd09d-1afc-4c72-b34a-47e8e8d777c9', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, 'c13a9ee3-43d0-41e3-97d6-cbdc0e3a3278', 120, 'Sales Return', '2019-04-10 12:19:12', -1, 1, '2019-04-10 12:19:12', '2019-04-10 12:19:12', 1, 1),
('512d2dd0-c0f2-4cad-b118-ae40801e92d3', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', 'c3e2afd6-1dde-43b4-9e5b-7c2ea5d500e2', NULL, 200, NULL, '2019-04-08 00:00:00', 1, 1, '2019-04-08 10:07:18', '2019-04-08 10:36:31', 1, 1),
('5156398b-bde7-45ba-bb45-7c1831889f0', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', 'db7a47f7-c0cb-476d-8926-b7b7da52114', NULL, 200, 'Purchase Return', '2019-03-18 08:41:46', -2, 1, '2019-03-18 08:41:46', '2019-03-18 08:41:46', 1, 1),
('51772ae5-6786-4b39-a10f-163cd9880bd', 'ab042a77-8226-41aa-883c-72907f0135e', NULL, NULL, 150, 'Sales Return of Bill No 48', '2019-03-13 00:00:00', 1, 1, '2019-03-13 08:20:53', '2019-03-13 08:20:53', 1, 1),
('5192a2e3-629c-4db2-aff5-4249eccdd0f', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, 'Sales Return of Bill No 57', '2019-03-14 08:10:12', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:10:11', 1, 0),
('51a6c58f-d268-4d0c-91db-b60b89e505b', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, NULL, 1000, '', '2019-03-15 00:00:00', 5, 1, '2019-03-15 10:29:26', '2019-03-15 10:29:26', 1, 1),
('52ef3916-f05d-494d-a582-15be2857f12', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 'ac009fa0-b3f5-40eb-a4fc-fbdfa9acbe9', NULL, 0, NULL, '0000-00-00 00:00:00', 10, 1, '2019-03-12 02:15:02', '2019-03-12 02:15:21', 1, 1),
('52ffb611-a228-47eb-aef9-4aa4dd2cd990', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, '86421482-d7e3-4c19-a046-077e32f0b9ff', 120, 'Sales Return', '2019-04-10 12:04:31', -1, 1, '2019-04-10 12:04:31', '2019-04-10 12:04:31', 1, 1),
('53d4b8b0-cb8a-4aaf-959c-e3ebefc32d5', '8aa3a96c-fa31-424e-940e-15020b1e564', '0cbb646d-01c4-4875-8cf8-1f4b5a8cb3f', NULL, 100000, NULL, '2019-03-14 00:00:00', 2, 1, '2019-03-14 11:15:49', '2019-03-14 11:15:49', 1, 1),
('54bc38d6-8b67-4161-b0c5-096aea36f31', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '04ec4033-7f12-4904-a4c6-7042e749682', 200, NULL, '2019-03-13 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:11:36', 1, 1),
('54ce7289-4d3b-4744-b993-6c754e1f8d6', '8aa3a96c-fa31-424e-940e-15020b1e564', '0cbb646d-01c4-4875-8cf8-1f4b5a8cb3f', NULL, 100000, NULL, '2019-03-14 00:00:00', 1, 1, '2019-03-14 11:18:33', '2019-03-14 11:18:33', 1, 1),
('55a491ca-45a7-4d80-bbbc-aa6877ecae72', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, 'abe02a16-2f48-434a-b730-b827459b0c6a', 200, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 12:20:02', '2019-04-10 12:20:02', 1, 1),
('560f03ff-4a18-49ec-b1a0-143396693fed', '689cd1c8-27af-4173-a774-7b8273461cb', '68435801-261a-4a5b-8bdc-b6551174bebc', NULL, 100, NULL, '2019-04-12 00:00:00', 50, 1, '2019-04-12 08:11:44', '2019-04-12 08:11:44', 1, 1),
('56bc6920-d3c9-4ef5-b136-653ce540facc', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, '86421482-d7e3-4c19-a046-077e32f0b9ff', 10, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 11:14:35', '2019-04-10 11:14:35', 1, 1),
('56fa2040-c386-434e-ab3d-f01ebf2d10c', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, 'Sales Return of Bill No 57', '2019-03-14 08:10:12', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:10:11', 1, 0),
('578ea543-3556-47fa-bf13-3830d0692dae', '3947d4f6-de4c-466e-9697-2cd90619a2d', NULL, '50ca21ea-f096-49ca-9f97-56462a1121d3', 500, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 12:45:15', '2019-04-10 12:45:15', 1, 1),
('589498d9-d293-47a2-84ff-6db0143c324', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', '9c9de4d2-007f-4803-92b7-a224df16f7e', NULL, 89, NULL, '2019-03-14 10:01:43', -1, 1, '2019-03-14 10:01:43', '2019-03-14 10:01:43', 1, 1),
('59aa78f9-256f-4823-a4b3-8c19826a012a', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, 'd856874a-61a5-4e46-9f68-4ed219a1e57a', 120, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 12:05:39', '2019-04-10 12:05:39', 1, 1),
('5a054852-5150-4499-8e5d-0c42b7c0cf4', '11964231-6d2a-46e6-a833-79d1619d60e', NULL, 'f35de53b-515d-49e3-8096-f5df335667b', 10, NULL, '2019-04-02 00:00:00', 1, 1, '2019-04-02 10:20:45', '2019-04-02 10:20:45', 1, 1),
('5b701114-f2c1-4356-9ce9-c77c450adb2', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, 'bda5894e-1d15-4fc8-8707-cf9f7ca6f20', 1, NULL, '2019-03-13 00:00:00', 1, 1, '2019-03-13 13:04:31', '2019-03-13 13:04:31', 1, 1),
('5c93950a-ac13-4f25-8941-a51e290c9d0', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', '4b0994ec-bdeb-476d-9aa6-10e22cbe72d', NULL, 1, NULL, '2019-03-13 00:00:00', 5, 0, '2019-03-13 13:51:16', '2019-03-13 13:51:16', 1, 1),
('5d892069-ce8e-458d-a57a-f1d896b43e4', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', NULL, '366ec6ee-b05f-442f-a6db-4db2911bb10', 50, 'Sales Return', '2019-03-18 08:35:13', -1, 1, '2019-03-18 08:35:13', '2019-03-18 08:35:13', 1, 1),
('5d97f275-6064-4810-8510-515ff8681b5', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, 'Sales Return of Bill No 57', '2019-03-14 08:10:12', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:10:11', 1, 0),
('5e1f4981-4429-46e4-bf14-ccdc45cfcc5', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '36eed7c5-598a-402c-93a0-713fb61891e', 200, NULL, '2019-03-14 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 09:52:40', 1, 1),
('6038d5fd-5c1b-476a-ba16-5c4883889aa9', '486bad3d-4afe-46f2-86b2-1dd9b850738', NULL, 'c009288d-a22a-4fa1-88a4-95b8f8410e01', 1000, NULL, '2019-04-12 00:00:00', 10, 1, '2019-04-12 07:37:39', '2019-04-12 07:37:39', 1, 1),
('60396fae-acde-4095-b2c5-0e6590c244a', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 'b618d9b3-760f-4612-b33a-299a470b0d3', NULL, 1, NULL, '2019-03-13 00:00:00', 1, 0, '2019-03-13 14:08:32', '2019-03-13 14:08:32', 1, 1),
('61670169-b91b-4bd6-9bab-7adf9fd9ba8', '689cd1c8-27af-4173-a774-7b8273461cb', NULL, NULL, 0, NULL, '0000-00-00 00:00:00', 100, 1, '2019-03-09 08:36:37', '2019-03-09 08:36:37', 1, 1),
('649e1e8d-b4f7-4cd7-9947-c429846ce09', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '04ec4033-7f12-4904-a4c6-7042e749682', 200, NULL, '2019-03-13 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:11:36', 1, 1),
('666ca302-2c7a-473a-bf68-f3f5b5900f9', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '13b353aa-ad11-4e57-a1ce-837f371df52', 200, NULL, '2019-03-12 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-12 13:50:59', 1, 1),
('667b335f-ad64-47bf-8d42-2d782c201e0', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 'a6cd35c4-00d7-4227-ba77-9798e6b51b1', NULL, 10, NULL, '2019-03-12 00:00:00', 1, 0, '2019-03-12 14:39:04', '2019-03-12 14:39:04', 1, 1),
('66f488fe-7c46-493f-bd2c-d6bf2882049', '3947d4f6-de4c-466e-9697-2cd90619a2d', NULL, '839cfc92-aa60-418a-bb89-55be294cbc9', 500, NULL, '2019-03-16 00:00:00', 1, 1, '2019-03-16 08:38:52', '2019-03-16 08:54:11', 1, 1),
('673b65ac-530d-48d8-82b8-b5b68170100', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, NULL, '2019-03-14 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 07:50:39', 1, 1),
('675e3a3b-ee64-4a24-bf35-878555f051c', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', '60675907-26c7-446a-8400-d1bc5932037', NULL, 10, NULL, '2019-03-25 00:00:00', 1, 1, '2019-03-25 10:58:23', '2019-03-28 10:56:22', 1, 1),
('6846a1d4-0ac5-45f4-a8a4-a3aac98475f', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, NULL, '2019-03-14 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 07:44:38', 1, 1),
('69405e1a-177a-405d-adae-c88e0543bfb', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', '00c02716-4cc4-498e-a514-245ad127aa6', NULL, 1, NULL, '2019-03-13 00:00:00', 1, 0, '2019-03-13 13:49:23', '2019-03-13 13:49:23', 1, 1),
('6b9185ff-24fb-4f4e-9b97-1bcb471221c3', '98cca098-9adf-44b4-ae28-cc066f6c369', NULL, 'af52694e-d46e-4cd9-ba7f-394fec8ab5fe', 10, 'Sales Return', '2019-04-10 12:14:26', -1, 1, '2019-04-10 12:14:26', '2019-04-10 12:14:26', 1, 1),
('6bffe6a0-db25-4644-87d9-5d4f0e7bb29', '689cd1c8-27af-4173-a774-7b8273461cb', NULL, NULL, 100, '', '2019-03-30 00:00:00', 10, 1, '2019-03-30 12:41:08', '2019-03-30 12:41:08', 1, 1),
('6c6be072-7579-4d48-a031-f598e1ac5f3', '486bad3d-4afe-46f2-86b2-1dd9b850738', NULL, NULL, 500, '', '2019-03-28 00:00:00', 12, 1, '2019-03-28 09:44:41', '2019-03-28 09:44:41', 1, 1),
('6d49dbe6-ca9f-4d16-a67a-dd113316a3e', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', '4ee3aa58-58ec-483f-9926-b5fd85e1b53', NULL, 10, NULL, '2019-03-14 10:53:42', -1, 1, '2019-03-14 10:53:42', '2019-03-14 10:53:42', 1, 1),
('6db923eb-2334-4286-b5ec-b1e2e902030', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, 'e718e5b5-05b5-4cd1-a157-96874c847fa', 1, 'Sales Return of Bill No 54', '2019-03-13 00:00:00', 1, 1, '2019-03-13 10:22:08', '2019-03-13 10:22:08', 1, 1),
('6f226aa9-b713-48cd-8c5b-2cd6845ebe33', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, 'f01dedb4-046e-4dff-9a65-4e33c4e1417c', 120, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 12:22:33', '2019-04-10 12:22:33', 1, 1),
('6f4e0b2d-df21-4bb7-aa7a-4368afe18789', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, 'e2f77a1d-2772-4412-9cbe-624c2b7cfb43', 120, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 06:22:45', '2019-04-10 06:23:00', 1, 1),
('70567fb0-c3c0-4ef9-886d-69202bb7d21', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', NULL, NULL, 15, 'aaa', '2019-03-07 00:00:00', 15, 1, '2019-03-12 13:27:46', '2019-03-12 13:27:46', 1, 1),
('70e1e700-3f83-44fc-9a20-7028b126faa', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, 'bda5894e-1d15-4fc8-8707-cf9f7ca6f20', 1, NULL, '2019-03-13 00:00:00', 2, 1, '2019-03-13 12:42:14', '2019-03-13 12:42:14', 1, 1),
('71217d1b-fbb5-4b6d-9230-9d277688190', '8989189c-feff-449d-8aca-8aba3cd72d1', NULL, '4ac5c7a2-a6b7-4251-8ba3-5721dad4077', 500, NULL, '2019-03-13 00:00:00', 2, 0, '2019-04-27 10:08:16', '2019-03-13 07:11:03', 1, 1),
('71b8f42c-502a-4887-bf5e-8228d228e0d', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, NULL, 300, '', '2019-03-16 00:00:00', 8, 1, '2019-03-16 07:26:40', '2019-03-16 07:26:40', 1, 1),
('722ed830-acbd-4e15-b05e-7a3e0db0624', 'ffb92995-05b4-4a59-b18b-e206abd95a5', NULL, NULL, 1, 'Sales Return of Bill No 52', '2019-03-13 00:00:00', 1, 1, '2019-03-13 08:41:33', '2019-03-13 08:41:33', 1, 1),
('752c6a4f-93e2-445e-bc1b-1a1b2051757', '8aa3a96c-fa31-424e-940e-15020b1e564', '0cbb646d-01c4-4875-8cf8-1f4b5a8cb3f', NULL, 100000, 'Purchase Return', '2019-03-14 11:21:52', -1, 1, '2019-03-14 11:21:52', '2019-03-14 11:21:52', 1, 1),
('7558ed74-4c84-4f43-98f5-ab836267937', '873dc4f4-7a86-417a-9158-bd543ee635a', '236eed38-98b8-409b-987c-2b19dfae08d', NULL, 0, NULL, '0000-00-00 00:00:00', 2, 1, '2019-03-07 03:29:05', '2019-03-07 03:34:13', 1, 1),
('75768397-fa9e-4507-a2db-a57611b033d', 'aa78c2fe-1f1c-4ae4-8a8e-40cac3d7d29', NULL, NULL, 200, 'Sales Return of Bill No 49', '2019-03-13 00:00:00', 2, 1, '2019-03-13 08:34:39', '2019-03-13 08:34:39', 1, 1),
('76a1be55-919f-48fc-bfb6-e5e3456827c', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', '039bf2bf-1059-40aa-9de5-a925cb4aa32', NULL, 1, NULL, '2019-03-13 00:00:00', 1, 0, '2019-03-13 13:59:41', '2019-03-13 13:59:41', 1, 1),
('773742f2-e0bd-4dfe-9e59-c1f744d03f4', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', '1d47561b-ac72-4546-87c3-d004e6badad', NULL, 1, NULL, '2019-03-13 00:00:00', 3, 0, '2019-03-13 14:06:22', '2019-03-13 14:06:22', 1, 1),
('77546250-315f-48b7-83c0-822e6993fa4', 'ab042a77-8226-41aa-883c-72907f0135e', NULL, NULL, 150, 'Sales Return of Bill No 48', '2019-03-13 00:00:00', 1, 1, '2019-03-13 08:20:53', '2019-03-13 08:20:53', 1, 1),
('7801f848-cc68-4f32-a432-bee4c0fb621', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '36eed7c5-598a-402c-93a0-713fb61891e', 200, NULL, '2019-03-14 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 09:52:40', 1, 1),
('7818dc10-0290-4979-8933-8d0cd55c755', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', NULL, '3a6b11bc-e60c-4676-95c1-05842f902d7', 20000, 'Sales Return', '2019-03-18 08:36:50', -1, 1, '2019-03-18 08:36:50', '2019-03-18 08:36:50', 1, 1),
('78d64dbc-95c9-44b8-a3bf-d98cde70520', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, 'bda5894e-1d15-4fc8-8707-cf9f7ca6f20', 1, NULL, '2019-03-13 00:00:00', 2, 1, '2019-03-13 12:35:01', '2019-03-13 12:35:01', 1, 1),
('7a8f9424-0b80-43e0-bc18-6d71f627837', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', NULL, '5740ce72-7403-4bad-8404-7d13fb58880', 10, NULL, '2019-03-13 00:00:00', 3, 1, '2019-03-13 07:39:00', '2019-03-13 07:39:00', 1, 1),
('7b2985e9-7061-4154-8814-23794aff2969', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, '2cc0b6b1-dbe6-4abf-bfe3-303d24f0c7df', 200, NULL, '2019-04-02 00:00:00', 1, 1, '2019-04-02 10:51:24', '2019-04-02 10:51:24', 1, 1),
('7bf36b0b-dac9-4aca-801a-7306f3cec7cc', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, 'd856874a-61a5-4e46-9f68-4ed219a1e57a', 10, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 12:05:39', '2019-04-10 12:05:39', 1, 1),
('7db15d90-23b3-402e-9260-55e7553c3d3', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, 'bd337eb6-378e-4b07-b068-998b70a1ba7', 100000, 'Sales Return', '2019-03-14 11:20:21', -1, 1, '2019-03-14 11:20:21', '2019-03-14 11:20:21', 1, 1),
('7e5c6ab7-6e83-4baa-b972-5bd78c45925', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, NULL, '2019-03-14 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 07:44:38', 1, 1),
('7f97fab0-c54e-46f0-b1ab-1df741f87e0', '11964231-6d2a-46e6-a833-79d1619d60e', NULL, NULL, 5, '', '2019-03-30 00:00:00', 5, 1, '2019-03-30 12:32:10', '2019-03-30 12:32:10', 1, 1),
('8417e3ef-3019-4593-acff-deecd10991c6', '3947d4f6-de4c-466e-9697-2cd90619a2d', NULL, NULL, 500, '', '2019-04-22 00:00:00', 12, 1, '2019-04-22 12:26:34', '2019-04-22 12:26:34', 1, 1),
('84c27982-6404-4774-9112-94d30e7fa25', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, NULL, '2019-03-14 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 07:50:39', 1, 1),
('853ccdc0-ea69-4caf-ba53-ee94405d133', '3947d4f6-de4c-466e-9697-2cd90619a2d', NULL, '839cfc92-aa60-418a-bb89-55be294cbc9', 500, 'Sales Return', '2019-03-18 08:37:58', -1, 1, '2019-03-18 08:37:58', '2019-03-18 08:37:58', 1, 1),
('86274464-b88e-4ed4-becb-946ebb844ef', '8aa3a96c-fa31-424e-940e-15020b1e564', '0cbb646d-01c4-4875-8cf8-1f4b5a8cb3f', NULL, 100000, 'Purchase Return', '2019-03-14 11:21:52', -1, 1, '2019-03-14 11:21:52', '2019-03-14 11:21:52', 1, 1),
('8701e0e6-7439-476e-a6b1-fc7ab5d0085', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, NULL, '2019-03-14 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 07:50:39', 1, 1),
('8a470e05-b6ea-443b-bfd0-0e46952653b', '8aa3a96c-fa31-424e-940e-15020b1e564', 'f6fba322-2b60-47c0-afdc-99cb78ea7d1', NULL, 100000, 'Purchase Return', '2019-03-14 11:21:52', -1, 1, '2019-03-14 11:21:52', '2019-03-14 11:21:52', 1, 1),
('8a56be9c-47a7-4995-b8fe-f6577ce8dc4', '689cd1c8-27af-4173-a774-7b8273461cb', NULL, NULL, 5, '', '2019-03-30 00:00:00', 5, 1, '2019-03-30 12:31:16', '2019-03-30 12:31:16', 1, 1),
('8ae701fc-9a37-43eb-acf2-15c99c2a78c', '11964231-6d2a-46e6-a833-79d1619d60e', NULL, NULL, 10, '', '2019-03-30 00:00:00', 10, 1, '2019-03-30 12:41:59', '2019-03-30 12:41:59', 1, 1),
('8b60131e-36bb-43bf-ba2c-16bcc0eaf1f', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', NULL, '366ec6ee-b05f-442f-a6db-4db2911bb10', 50, NULL, '2019-03-12 00:00:00', 1, 1, '2019-03-12 13:27:56', '2019-03-12 13:28:57', 1, 1),
('8c46faff-8862-46a6-91b4-656d4ac7ad38', '7fa15757-e571-4387-b3b2-5a328a5f529', NULL, 'c98aa049-2695-4c45-bbea-cb93e09c290a', 1000, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 12:06:02', '2019-04-10 12:06:02', 1, 1),
('8dad2726-0379-43d3-8a3a-45d2e56d92e6', '3947d4f6-de4c-466e-9697-2cd90619a2d', NULL, NULL, 500, '', '2019-04-22 00:00:00', 12, 1, '2019-04-22 12:29:13', '2019-04-22 12:29:13', 1, 1),
('8f275d0f-3fe8-47ee-99bf-153edcca9d8c', '11964231-6d2a-46e6-a833-79d1619d60e', NULL, NULL, 10, '', '2019-04-22 00:00:00', 11, 1, '2019-04-22 12:26:34', '2019-04-22 12:26:34', 1, 1),
('8fef76bd-b6f9-4a76-9eb5-d9a5941df61', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', NULL, NULL, 0, NULL, '0000-00-00 00:00:00', 1, 1, '2019-03-07 03:18:42', '2019-03-07 03:18:42', 1, 1),
('909043cd-b4cd-4cbd-8b74-1a56bdc945c', '8aa3a96c-fa31-424e-940e-15020b1e564', 'f6fba322-2b60-47c0-afdc-99cb78ea7d1', NULL, 100000, 'Purchase Return', '2019-03-14 11:21:52', -1, 1, '2019-03-14 11:21:52', '2019-03-14 11:21:52', 1, 1),
('914f9e63-5b39-4b2b-94d5-d06d82b99bb', '3947d4f6-de4c-466e-9697-2cd90619a2d', NULL, NULL, 500, '', '2019-03-30 00:00:00', 10, 1, '2019-03-30 12:41:59', '2019-03-30 12:41:59', 1, 1),
('91954bde-f475-4061-b2b8-da8bddcf603a', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, '86421482-d7e3-4c19-a046-077e32f0b9ff', 120, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 11:14:35', '2019-04-10 11:14:35', 1, 1),
('91f894bb-09e1-44b4-ad2a-a454382fefc2', '7fa15757-e571-4387-b3b2-5a328a5f529', NULL, '16011328-52e4-4bc9-a419-10aeaa6b4b2f', 1000, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 12:44:56', '2019-04-10 12:44:56', 1, 1),
('923d52df-cc32-4697-b944-f2133f3da52', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, NULL, 10, '', '2019-03-15 00:00:00', 12, 1, '2019-03-15 11:50:49', '2019-03-15 11:50:49', 1, 1),
('92612d6b-a326-4aa8-b470-b54a549c505', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', NULL, 'd610448c-6e78-4c5c-bca5-3d11bc40004', 10, 'Sales Return', '2019-03-18 08:38:36', -1, 1, '2019-03-18 08:38:36', '2019-03-18 08:38:36', 1, 1),
('93f091cf-a13b-4001-b0d8-f73da15f5d7', 'ab042a77-8226-41aa-883c-72907f0135e', NULL, NULL, 150, 'Sales Return of Bill No 48', '2019-03-13 00:00:00', 2, 1, '2019-03-13 08:20:53', '2019-03-13 08:20:53', 1, 1),
('95ca2c43-d500-41f7-ae5c-a22f4e4a307', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, '04ec4033-7f12-4904-a4c6-7042e749682', 200, NULL, '2019-03-13 00:00:00', 1, 1, '2019-03-18 08:30:30', '2019-03-18 08:30:30', 1, 1),
('96617ef6-d0ee-4386-86f7-1b524473ca8', '8aa3a96c-fa31-424e-940e-15020b1e564', 'f6fba322-2b60-47c0-afdc-99cb78ea7d1', NULL, 100000, NULL, '2019-03-14 00:00:00', 1, 1, '2019-03-14 11:11:34', '2019-03-14 11:11:34', 1, 1),
('968385e4-4bc3-4f02-815d-1d51a01c5b8', '8989189c-feff-449d-8aca-8aba3cd72d1', NULL, '4ac5c7a2-a6b7-4251-8ba3-5721dad4077', 500, NULL, '2019-03-13 00:00:00', 4, 0, '2019-04-27 10:08:16', '2019-03-13 07:11:03', 1, 1),
('96e9e555-6518-4e73-a37e-16abec40ecf', '8989189c-feff-449d-8aca-8aba3cd72d1', NULL, '9adf6bee-5f55-4c9e-994b-34ed6c72a6a', 500, NULL, '2019-03-13 00:00:00', 3, 0, '2019-04-27 10:08:16', '2019-03-13 06:53:40', 1, 1),
('97b59c23-cd78-4867-9575-919d6e8e102', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, 'Sales Return of Bill No 57', '2019-03-14 08:10:12', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:10:11', 1, 0),
('98a4b5aa-0d66-4be4-8866-2374a10a13e', 'aa78c2fe-1f1c-4ae4-8a8e-40cac3d7d29', 'cd6d2af1-fb60-4259-a23e-1285922cef9', NULL, 0, NULL, '0000-00-00 00:00:00', 10, 0, '2019-03-12 01:28:58', '2019-03-12 01:28:58', 1, 1),
('9a7f1d80-cad9-4e6d-bf47-0562cbab8dd', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, 'bda5894e-1d15-4fc8-8707-cf9f7ca6f20', 1, NULL, '2019-03-13 00:00:00', 2, 1, '2019-03-13 12:47:48', '2019-03-13 12:47:48', 1, 1),
('9ab28b41-b030-450f-ab1f-e1f308439b9', '3947d4f6-de4c-466e-9697-2cd90619a2d', NULL, NULL, 5, '', '2019-03-30 00:00:00', 5, 1, '2019-03-30 12:32:10', '2019-03-30 12:32:10', 1, 1),
('9bdcd02c-8a4f-4346-b0d2-af6c9b3b6ff', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', '4ee3aa58-58ec-483f-9926-b5fd85e1b53', NULL, 10, NULL, '2019-03-14 10:46:07', -1, 1, '2019-03-14 10:46:07', '2019-03-14 10:46:07', 1, 1),
('9d0c096b-96f2-4943-a1f3-84ed68f4b48', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, NULL, 100000, '', '2019-03-14 00:00:00', 10, 1, '2019-03-14 11:32:59', '2019-03-14 11:32:59', 1, 1),
('9e316f35-1205-4166-9d5e-eea1f58b5c64', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', NULL, NULL, 20000, '', '2019-04-22 00:00:00', 13, 1, '2019-04-22 12:26:34', '2019-04-22 12:26:34', 1, 1),
('a00f0b0f-8dd2-4546-a347-5f7d2052830d', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', NULL, NULL, 20000, '', '2019-04-22 00:00:00', 13, 1, '2019-04-22 12:29:13', '2019-04-22 12:29:13', 1, 1),
('a151f9bb-f0e4-4135-9b15-33d6af7f9b5e', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, 'c48197de-760e-45ec-8344-41699b57f4c0', 100000, NULL, '2019-04-12 00:00:00', 2, 1, '2019-04-12 07:57:25', '2019-04-12 07:57:25', 1, 1),
('a37e04c1-81c8-4f29-810c-ba8e274e7ee', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, NULL, 10, '', '2019-03-15 00:00:00', 16, 1, '2019-03-15 11:57:34', '2019-03-15 11:57:34', 1, 1),
('a4a153ec-c7cf-47eb-9e90-8f9ea2eeaaa', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, NULL, 10, '', '2019-03-15 00:00:00', 15, 1, '2019-03-15 11:56:05', '2019-03-15 11:56:05', 1, 1),
('a643e728-4ecb-4344-a5b1-bc7c026b3fb', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, 'bda5894e-1d15-4fc8-8707-cf9f7ca6f20', 1, NULL, '2019-03-13 00:00:00', 1, 1, '2019-03-13 13:10:09', '2019-03-13 13:10:09', 1, 1),
('a761a0c9-6175-41b7-9087-7e160de0512', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', NULL, NULL, 5, '', '2019-03-30 00:00:00', 5, 1, '2019-03-30 12:32:10', '2019-03-30 12:32:10', 1, 1),
('a7b3feaf-750f-4521-8126-469eefc1fab', '8989189c-feff-449d-8aca-8aba3cd72d1', NULL, '9adf6bee-5f55-4c9e-994b-34ed6c72a6a', 500, NULL, '2019-03-13 00:00:00', 2, 0, '2019-04-27 10:08:16', '2019-03-13 06:53:40', 1, 1),
('a7c7371a-eb1f-4d7a-9d2e-3417a5cbac4', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, NULL, 293, '', '2019-03-16 00:00:00', 1, 1, '2019-03-16 07:24:46', '2019-03-16 07:24:46', 1, 1),
('a83da700-3ee4-49c8-b75b-e4725bdcdbc7', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, 'a6934cfa-6f34-4d85-8923-f56fea9d6262', 100000, NULL, '2019-04-12 00:00:00', 3, 1, '2019-04-12 07:57:43', '2019-04-12 07:57:43', 1, 1),
('a900c866-9268-4fc3-ae22-99d2dad3275', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', '4be976f6-077c-42bf-8710-b03a38deccd', NULL, 12, NULL, '2019-03-12 00:00:00', 1, 1, '2019-02-10 23:40:25', '2019-03-12 06:42:40', 1, 1),
('aa991414-640d-4e2b-933c-28d9d7cffa1', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, NULL, '2019-03-14 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 07:44:38', 1, 1),
('aaa530c6-2ede-4ee6-adef-5a674a5425c', '8989189c-feff-449d-8aca-8aba3cd72d1', NULL, '9adf6bee-5f55-4c9e-994b-34ed6c72a6a', 500, 'Sales Return', '2019-03-28 11:08:57', -3, 0, '2019-04-27 10:08:16', '2019-03-28 11:08:57', 1, 1),
('aba6c41b-d151-4dc5-ad8e-3d8a55bb4da7', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, 'af52694e-d46e-4cd9-ba7f-394fec8ab5fe', 120, 'Sales Return', '2019-04-10 12:14:26', -1, 1, '2019-04-10 12:14:26', '2019-04-10 12:14:26', 1, 1),
('abe1cccc-ddfd-4b80-9610-c848b8c30c4', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', '9c9de4d2-007f-4803-92b7-a224df16f7e', NULL, 89, NULL, '2019-03-12 00:00:00', 1, 1, '2019-03-12 12:46:42', '2019-03-12 12:46:42', 1, 1),
('ac1bb9d4-ea4d-43b3-959f-5e25548e603', 'ab042a77-8226-41aa-883c-72907f0135e', NULL, NULL, 10, '', '2019-03-13 00:00:00', 10, 1, '2019-03-13 07:43:11', '2019-03-13 07:43:11', 1, 1),
('aca6b634-f75f-4fd5-9458-8c7adf7a746', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '04ec4033-7f12-4904-a4c6-7042e749682', 200, NULL, '2019-03-13 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:11:36', 1, 1),
('af0037c7-31af-466a-ba1f-6b9f373a0e3c', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', '9da5ef9e-d9c9-44a4-9bce-8bbac90980d6', NULL, 10, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 13:07:16', '2019-04-10 13:07:16', 1, 1),
('b11d0165-4293-4803-9843-0c1ba3792ae2', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, '16011328-52e4-4bc9-a419-10aeaa6b4b2f', 200, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 12:44:56', '2019-04-10 12:44:56', 1, 1),
('b1800cfb-f712-41de-8684-c8fb611bf403', '03e14e51-7a26-4495-b852-79031aa2e01a', NULL, 'a2337d6f-e469-4d18-9a67-c3a9bc11c7a9', 1000, NULL, '2019-04-26 00:00:00', 1, 1, '2019-04-26 12:29:03', '2019-04-26 12:29:03', 1, 1),
('b251dd1e-2c1d-4904-a6a1-285fea83fd2', 'aa78c2fe-1f1c-4ae4-8a8e-40cac3d7d29', NULL, NULL, 200, 'Sales Return of Bill No 50', '2019-03-13 00:00:00', 1, 1, '2019-03-13 08:35:16', '2019-03-13 08:35:16', 1, 1),
('b342ae71-288f-42e5-a676-658dc75e134', 'aa78c2fe-1f1c-4ae4-8a8e-40cac3d7d29', NULL, NULL, 200, 'Sales Return of Bill No 50', '2019-03-13 00:00:00', 3, 1, '2019-03-13 08:35:16', '2019-03-13 08:35:16', 1, 1),
('b3d5a962-f28a-44b4-97fb-7f1fb591c3d', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', '9c9de4d2-007f-4803-92b7-a224df16f7e', NULL, 12, NULL, '2019-03-14 10:01:43', -1, 1, '2019-03-14 10:01:43', '2019-03-14 10:01:43', 1, 1),
('b48c16c4-4557-4cf3-badb-4c0d82dabb4', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 'ac009fa0-b3f5-40eb-a4fc-fbdfa9acbe9', NULL, 100, 'Purchase Return', '2019-03-18 08:41:46', -10, 1, '2019-03-18 08:41:46', '2019-03-18 08:41:46', 1, 1),
('b4fd2b14-d73d-44c0-84df-3f5995702ce8', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', 'bf31dc4b-81e1-4f3f-a9b8-99103f3dbb25', NULL, 1200, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 13:08:02', '2019-04-10 13:08:02', 1, 1),
('b7492899-0b30-4c19-b2f8-45968d9c27e', '3947d4f6-de4c-466e-9697-2cd90619a2d', NULL, '839cfc92-aa60-418a-bb89-55be294cbc9', 500, 'Sales Return', '2019-03-18 08:37:58', -1, 1, '2019-03-18 08:37:58', '2019-03-18 08:37:58', 1, 1),
('b74fa0bc-8b61-4c0c-b40a-6735582b213', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, 'Sales Return of Bill No 57', '2019-03-14 08:10:12', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:10:11', 1, 0),
('b82f1501-d6c1-437a-9d15-90289d965fc', '829771a2-245a-11e9-a14f-588a5a24e72', NULL, NULL, 0, NULL, '0000-00-00 00:00:00', 74, 1, '2019-02-24 03:52:00', '2019-02-24 03:52:00', 1, 1),
('b8958565-6f8b-4bc2-ae48-19c305e64bf', '11964231-6d2a-46e6-a833-79d1619d60e', NULL, '01cbc026-b319-43d4-8db1-cf3315714e4', 10, NULL, '2019-04-02 00:00:00', 4, 1, '2019-04-22 09:54:46', '2019-04-22 09:54:46', 1, 1),
('b8ab4eb0-21b5-4562-9283-3793ff24959', 'ffb92995-05b4-4a59-b18b-e206abd95a5', NULL, NULL, 10, 'Sales Return of Bill No 51', '2019-03-13 00:00:00', 2, 1, '2019-03-13 08:41:06', '2019-03-13 08:41:06', 1, 1),
('bbf664f6-6d20-4d7f-9008-40ae424b65b', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, NULL, '2019-03-14 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 07:44:38', 1, 1),
('bc428af9-42c1-47d1-85db-8394405a5df', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', '4be976f6-077c-42bf-8710-b03a38deccd', NULL, 25, NULL, '2019-03-12 00:00:00', 1, 1, '2019-03-12 06:36:13', '2019-03-12 06:36:13', 1, 1),
('bca64331-1343-4f6a-acb1-ce5169722b6', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', NULL, NULL, 20000, '', '2019-03-30 00:00:00', 10, 1, '2019-03-30 12:41:59', '2019-03-30 12:41:59', 1, 1),
('be9529b0-8308-4b4f-a9ea-c8bfce00213', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, NULL, 10, '', '2019-03-16 00:00:00', 23, 1, '2019-03-16 06:09:44', '2019-03-16 06:09:44', 1, 1),
('bead6e56-7e5e-4fa0-98c6-4e563a5c02ed', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, '33eac745-36aa-42c0-ae11-057e84bdb4de', 120, NULL, '2019-04-08 00:00:00', 1, 1, '2019-04-08 08:36:31', '2019-04-08 08:56:38', 1, 1),
('beba31c7-3362-477a-99f2-09085e64ecc', '8aa3a96c-fa31-424e-940e-15020b1e564', 'f6fba322-2b60-47c0-afdc-99cb78ea7d1', NULL, 100000, NULL, '2019-03-14 00:00:00', 1, 1, '2019-03-14 11:11:34', '2019-03-14 11:11:34', 1, 1),
('bef1d987-95f1-4934-b7f3-f50fcd19907', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', '00c02716-4cc4-498e-a514-245ad127aa6', NULL, 10, NULL, '2019-03-13 00:00:00', 3, 0, '2019-03-13 13:49:23', '2019-03-13 13:49:23', 1, 1),
('bf35b41f-b638-499c-a482-87ba60ce7ad', '689cd1c8-27af-4173-a774-7b8273461cb', NULL, NULL, 100, '', '2019-03-30 00:00:00', 10, 1, '2019-03-30 12:34:20', '2019-03-30 12:34:20', 1, 1),
('bfc83347-ef7c-4762-a6d3-a0c3f0c3a57', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '04ec4033-7f12-4904-a4c6-7042e749682', 200, NULL, '2019-03-14 10:55:15', -1, 0, '2019-04-27 10:07:50', '2019-03-14 10:55:15', 1, 1),
('c094ad25-59b4-4d6a-87e9-ded68fe1cdd', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '04ec4033-7f12-4904-a4c6-7042e749682', 200, NULL, '2019-03-13 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:11:36', 1, 1),
('c18ce4b9-8cb6-469e-a09a-3bc76be66d8', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', '189354e0-5b9b-4aa4-8cd0-4dac0e0ff85', NULL, 10, NULL, '2019-03-28 00:00:00', 1, 1, '2019-03-28 10:53:14', '2019-03-28 10:53:14', 1, 1),
('c21b9318-5cd7-4813-a4fd-87ae80508b6', '829771a2-245a-11e9-a14f-588a5a24e72', NULL, NULL, 0, NULL, '0000-00-00 00:00:00', 500, 1, '2019-02-28 06:09:31', '2019-02-28 06:09:31', 1, 1),
('c26905ef-93c8-4205-aa30-b8a406830120', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, '86421482-d7e3-4c19-a046-077e32f0b9ff', 10, 'Sales Return', '2019-04-10 12:04:31', -1, 1, '2019-04-10 12:04:31', '2019-04-10 12:04:31', 1, 1);
INSERT INTO `Stocklog` (`id`, `itemId`, `purchaseId`, `orderId`, `price`, `notes`, `date`, `quantity`, `isEnabled`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('c26c3ee4-d130-4a17-9955-81422009bdd', '486bad3d-4afe-46f2-86b2-1dd9b850738', NULL, NULL, 5, '', '2019-03-28 00:00:00', 5, 1, '2019-03-28 09:54:18', '2019-03-28 09:54:18', 1, 1),
('c3294901-25dd-48b1-a0a8-bc732b2b7d0', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', '9c9de4d2-007f-4803-92b7-a224df16f7e', NULL, 10, NULL, '2019-03-12 00:00:00', 1, 1, '2019-03-12 06:57:46', '2019-03-12 12:46:42', 1, 1),
('c382b354-f6bd-4394-8a03-cba626a8183', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, 'bda5894e-1d15-4fc8-8707-cf9f7ca6f20', 1, NULL, '2019-03-13 00:00:00', 2, 1, '2019-03-13 12:30:57', '2019-03-13 12:30:57', 1, 1),
('c48d4d29-10a6-4dd6-8213-345aba33ee8', '829771a2-245a-11e9-a14f-588a5a24e72', NULL, NULL, 0, NULL, '0000-00-00 00:00:00', 0, 1, '2019-03-07 05:14:42', '2019-03-07 05:14:42', 1, 1),
('c5cfa3ca-3db7-46cb-b9c4-80c66dedd7e', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, NULL, 10, '', '2019-03-15 00:00:00', 10, 1, '2019-03-15 11:44:25', '2019-03-15 11:44:25', 1, 1),
('c6bf991c-43bf-476c-ad4c-6387c4cb79e', '8989189c-feff-449d-8aca-8aba3cd72d1', NULL, '12c44f75-c160-411c-8114-a2446c703c3', 500, NULL, '2019-03-14 09:51:03', -2, 0, '2019-04-27 10:08:16', '2019-03-14 09:51:03', 1, 1),
('c8252b7c-a408-4561-b024-7059d5164502', '689cd1c8-27af-4173-a774-7b8273461cb', NULL, '37038848-60d5-43a7-b88a-72991d747dda', 100, NULL, '2019-04-12 00:00:00', 4, 1, '2019-04-12 07:53:00', '2019-04-12 07:53:00', 1, 1),
('c88752d3-a857-46ef-925c-05935262679', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, 'bd337eb6-378e-4b07-b068-998b70a1ba7', 100000, NULL, '2019-03-14 00:00:00', 1, 1, '2019-03-14 11:12:16', '2019-03-14 11:12:16', 1, 1),
('c892c919-1bc6-41f9-9e67-94d9182bf08', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', '1383208f-6e29-4e0c-a65e-ded8af083b3', NULL, 10, NULL, '2019-03-12 00:00:00', 1, 1, '2019-03-25 11:23:43', '2019-03-25 11:23:43', 1, 1),
('ca80c922-1907-49a3-9ccd-76057df6d05', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, 'f3b115fb-9bf6-446b-bcc1-d8925ee1b76', 1, NULL, '2019-03-13 00:00:00', 1, 1, '2019-03-13 13:28:04', '2019-03-13 13:28:04', 1, 1),
('ce280125-1f31-4b82-811f-32db6515dadd', '7fa15757-e571-4387-b3b2-5a328a5f529', NULL, 'e093240e-1ac0-4e59-82d5-f72c0b3d56e5', 1000, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 12:12:20', '2019-04-10 12:12:20', 1, 1),
('cef28c6a-d62c-4f98-8971-dda4d2ee7c4', '8989189c-feff-449d-8aca-8aba3cd72d1', NULL, NULL, 10, '', '2019-03-13 00:00:00', 10, 0, '2019-04-27 10:08:16', '2019-03-13 06:52:42', 1, 1),
('cf37a1bf-e124-4547-b26d-9d6926fd882', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, 'Sales Return of Bill No 57', '2019-03-14 08:10:12', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:10:11', 1, 0),
('d1627afc-ac84-44d3-b617-e5dbe0bbb5a', 'ffb92995-05b4-4a59-b18b-e206abd95a5', NULL, NULL, 1, 'Sales Return of Bill No 52', '2019-03-13 00:00:00', 2, 1, '2019-03-13 08:41:33', '2019-03-13 08:41:33', 1, 1),
('d1dd324e-2f2f-47db-beef-7a6362135d2', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', 'ed0a487d-e5f3-49c1-8a8a-0c37758819d', NULL, 1, NULL, '2019-03-13 00:00:00', 1, 0, '2019-03-13 13:50:25', '2019-03-13 13:50:25', 1, 1),
('d2497297-88dd-4dea-b8d8-65193fc09ec', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, 'Sales Return of Bill No 57', '2019-03-14 08:10:12', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:10:11', 1, 0),
('d45566cc-6c58-4ace-a9a2-cde57eac404', '3947d4f6-de4c-466e-9697-2cd90619a2d', 'a85ca8e6-20c1-4c1f-8dec-611b189dd3d', NULL, 500, NULL, '2019-03-12 00:00:00', 1, 1, '2019-03-12 06:52:47', '2019-03-12 06:52:47', 1, 1),
('d4c4fcf3-b851-4d6f-b03a-3a1b1880b12', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, NULL, '2019-03-14 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 07:50:39', 1, 1),
('d73d4b70-6c65-44d9-acc4-79da949db15', '8989189c-feff-449d-8aca-8aba3cd72d1', NULL, '12c44f75-c160-411c-8114-a2446c703c3', 500, NULL, '2019-03-14 09:51:03', -2, 0, '2019-04-27 10:08:16', '2019-03-14 09:51:03', 1, 1),
('da55d881-2d8d-4dc7-9dc4-78664279ca55', '486bad3d-4afe-46f2-86b2-1dd9b850738', NULL, 'd422b2de-1204-494d-876c-e2654fbc0b75', 1000, NULL, '2019-04-12 00:00:00', 1, 1, '2019-04-12 07:41:54', '2019-04-12 07:41:54', 1, 1),
('db2a5bdb-d876-4482-b387-902e2a1cde8', '873dc4f4-7a86-417a-9158-bd543ee635a', '60675907-26c7-446a-8400-d1bc5932037', NULL, 120, NULL, '2019-03-25 00:00:00', 1, 1, '2019-03-25 10:58:23', '2019-03-28 10:56:22', 1, 1),
('db385e01-15c1-4329-ae25-008a4ded77c', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, 'bd337eb6-378e-4b07-b068-998b70a1ba7', 100000, NULL, '2019-03-14 00:00:00', 1, 1, '2019-03-14 11:12:16', '2019-03-14 11:12:16', 1, 1),
('db4bcc65-c0b5-43e7-bf06-051e0115be4d', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, 'c13a9ee3-43d0-41e3-97d6-cbdc0e3a3278', 120, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 12:15:13', '2019-04-10 12:15:13', 1, 1),
('dc666d5f-ef74-44f4-92a3-fa3c6ccd6d7', '11964231-6d2a-46e6-a833-79d1619d60e', NULL, '7bac97e2-f3eb-4518-bc3d-96e61c0195b', 10, NULL, '2019-04-02 00:00:00', 5, 1, '2019-04-02 10:20:04', '2019-04-02 10:20:04', 1, 1),
('dd568337-cbd5-4fce-a09f-fb3fbc1f919e', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', NULL, 'f01dedb4-046e-4dff-9a65-4e33c4e1417c', 20000, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 12:22:33', '2019-04-10 12:22:33', 1, 1),
('de123384-7d23-493b-b648-e0a47d82489', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, NULL, '2019-03-14 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 07:44:38', 1, 1),
('de6b1c15-ef85-4a68-9b32-2974f276e2d', '3947d4f6-de4c-466e-9697-2cd90619a2d', NULL, '839cfc92-aa60-418a-bb89-55be294cbc9', 500, NULL, '2019-03-16 00:00:00', 1, 1, '2019-03-16 08:38:52', '2019-03-16 08:38:52', 1, 1),
('df0a9f33-62fb-4357-a7ed-3dc89d50ab8b', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, 'e093240e-1ac0-4e59-82d5-f72c0b3d56e5', 200, 'Sales Return', '2019-04-10 12:14:26', -1, 1, '2019-04-10 12:14:26', '2019-04-10 12:14:26', 1, 1),
('e1a2eee8-a9a7-478f-b713-0bd2717654b', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, NULL, '2019-03-14 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 07:50:39', 1, 1),
('e23238bb-ca1c-47ed-8403-d55af8137e3', '3947d4f6-de4c-466e-9697-2cd90619a2d', '9c9de4d2-007f-4803-92b7-a224df16f7e', NULL, 125, NULL, '2019-03-12 00:00:00', 1, 1, '2019-03-12 12:34:29', '2019-03-12 12:46:42', 1, 1),
('e2cd35f7-8fb2-4441-87c8-c2554a9088f', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', NULL, 'b6290ce2-cd90-4940-adba-1d61cbc6062', 10, NULL, '2019-03-24 00:00:00', 1, 1, '2019-03-24 13:04:55', '2019-03-24 13:04:55', 1, 1),
('e425930d-ec17-4742-8088-21bf6f51a424', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, 'e6919ae6-4489-4d1a-b55a-0c25350e285b', 120, 'Sales Return', '2019-04-10 07:48:02', -1, 1, '2019-04-10 07:48:02', '2019-04-10 07:48:02', 1, 1),
('e631755b-3c6c-4fbc-8346-f9aa538ab42', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', NULL, '5740ce72-7403-4bad-8404-7d13fb58880', 10, NULL, '2019-03-13 00:00:00', 1, 1, '2019-03-13 07:39:00', '2019-03-13 07:39:00', 1, 1),
('e778ae63-c702-4417-81f5-5504d32c4b7', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '36eed7c5-598a-402c-93a0-713fb61891e', 200, NULL, '2019-03-14 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 09:52:40', 1, 1),
('e8c3378c-24d6-47b9-b117-bf4ce9ee882', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '04ec4033-7f12-4904-a4c6-7042e749682', 200, NULL, '2019-03-13 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:11:36', 1, 1),
('e90064d5-5d1d-4e02-ac53-da5b39eec25', 'ab042a77-8226-41aa-883c-72907f0135e', NULL, NULL, 150, 'Sales Return of Bill No 47', '2019-03-13 00:00:00', 3, 1, '2019-03-13 07:45:13', '2019-03-13 07:45:13', 1, 1),
('e97e10b4-9021-463f-808c-1cd49be3dc4d', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, 'abe02a16-2f48-434a-b730-b827459b0c6a', 200, 'Sales Return', '2019-04-10 13:20:18', -1, 1, '2019-04-10 13:20:18', '2019-04-10 13:20:18', 1, 1),
('ea227cfa-564a-4ac6-bc53-524c20ba341', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', 'db7a47f7-c0cb-476d-8926-b7b7da52114', NULL, 200, NULL, '2019-03-15 00:00:00', 2, 1, '2019-03-15 09:50:27', '2019-03-15 09:50:27', 1, 1),
('ea8cb325-525f-4e2f-9a19-dd2c5114945', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', '391a4487-c209-44e9-aa80-65703ba43b4', NULL, 1, NULL, '2019-03-13 00:00:00', 1, 0, '2019-03-13 14:08:05', '2019-03-13 14:08:05', 1, 1),
('eb08988f-8e89-4fe1-829d-a7e70409a81', '8989189c-feff-449d-8aca-8aba3cd72d1', NULL, '9adf6bee-5f55-4c9e-994b-34ed6c72a6a', 500, 'Sales Return', '2019-03-28 11:08:57', -2, 0, '2019-04-27 10:08:16', '2019-03-28 11:08:57', 1, 1),
('eb462609-dbe3-4fcb-8c29-94079d5795c', '8aa3a96c-fa31-424e-940e-15020b1e564', '0cbb646d-01c4-4875-8cf8-1f4b5a8cb3f', NULL, 100000, NULL, '2019-03-14 00:00:00', 1, 1, '2019-03-14 11:09:33', '2019-03-14 11:18:33', 1, 1),
('ebfb7209-3dbb-4c4e-a885-e2aa00f0cd2', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', '4b0994ec-bdeb-476d-9aa6-10e22cbe72d', NULL, 1, NULL, '2019-03-13 00:00:00', 1, 0, '2019-03-13 13:51:16', '2019-03-13 13:51:16', 1, 1),
('ecaa1c3c-ce3b-48ec-b1cf-73b2fe47626', '3947d4f6-de4c-466e-9697-2cd90619a2d', NULL, '839cfc92-aa60-418a-bb89-55be294cbc9', 500, 'Sales Return', '2019-03-18 08:37:58', -1, 1, '2019-03-18 08:37:58', '2019-03-18 08:37:58', 1, 1),
('ecf2fcaf-1af4-405c-9bab-0e985589899', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', NULL, NULL, 0, NULL, '0000-00-00 00:00:00', 1, 1, '2019-03-07 03:21:35', '2019-03-07 03:21:35', 1, 1),
('ee419743-f003-4c7e-b2f9-a7350624877', '8989189c-feff-449d-8aca-8aba3cd72d1', NULL, '12c44f75-c160-411c-8114-a2446c703c3', 500, NULL, '2019-03-13 00:00:00', 2, 0, '2019-04-27 10:08:16', '2019-03-13 06:58:54', 1, 1),
('eeaa5e52-4911-4a98-b88c-b0455ad1263', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', '4be976f6-077c-42bf-8710-b03a38deccd', NULL, 10, NULL, '2019-03-12 00:00:00', 1, 1, '2019-03-12 06:47:24', '2019-03-12 06:47:24', 1, 1),
('ef631deb-6232-4e65-8eb1-f78a9007042', '8aa3a96c-fa31-424e-940e-15020b1e564', '0cbb646d-01c4-4875-8cf8-1f4b5a8cb3f', NULL, 100000, NULL, '2019-03-14 00:00:00', 2, 1, '2019-03-14 11:09:33', '2019-03-14 11:09:33', 1, 1),
('f0955b9a-2056-4273-b4af-3922347a07ff', '7fa15757-e571-4387-b3b2-5a328a5f529', NULL, 'f9e4ccb9-4d78-4f06-8c48-b1a42d5d7f19', 1000, 'Sales Return', '2019-04-10 12:19:12', -1, 1, '2019-04-10 12:19:12', '2019-04-10 12:19:12', 1, 1),
('f11b363a-1b78-4b34-86c9-13a2d79c5ec', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, 'Sales Return of Bill No 57', '2019-03-14 08:10:12', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:10:11', 1, 0),
('f1e50362-d925-4405-bccf-7e4f9ad2ce1', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, 'bc4fc6f8-0495-4f65-9d9a-66e5c006cd3', 200, NULL, '2019-03-12 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-12 14:04:24', 1, 1),
('f2c7fdd8-9274-4728-9eef-daab1a3bc85', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, NULL, 10, '', '2019-03-16 00:00:00', 19, 1, '2019-03-16 06:12:39', '2019-03-16 06:12:39', 1, 1),
('f340c5aa-87d2-401c-8a16-7ac0abcf47b', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, 'f3b115fb-9bf6-446b-bcc1-d8925ee1b76', 1, NULL, '2019-03-13 00:00:00', 1, 1, '2019-03-13 13:11:21', '2019-03-13 13:11:21', 1, 1),
('f3ade8f1-4661-4336-a402-2f4d0f99559', '8aa3a96c-fa31-424e-940e-15020b1e564', '0cbb646d-01c4-4875-8cf8-1f4b5a8cb3f', NULL, 100000, 'Purchase Return', '2019-03-14 11:15:51', -2, 1, '2019-03-14 11:15:51', '2019-03-14 11:15:51', 1, 1),
('f3df5f15-d27a-4d48-abb1-bb16ab58489', '828dd1fd-d678-4cbe-9b00-a389b1e9e47', NULL, NULL, 0, NULL, '0000-00-00 00:00:00', 1, 1, '2019-03-07 03:19:48', '2019-03-07 03:19:48', 1, 1),
('f4151652-5cb3-4df7-9bff-315b1388aabc', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, 'e6919ae6-4489-4d1a-b55a-0c25350e285b', 120, NULL, '2019-04-10 00:00:00', 1, 1, '2019-04-10 06:32:56', '2019-04-10 06:32:56', 1, 1),
('f4c8579c-9277-49b5-a03f-8ca2dfc7386', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, NULL, 5, '', '2019-03-16 00:00:00', 2, 1, '2019-03-16 07:26:07', '2019-03-16 07:26:07', 1, 1),
('f514c612-b0df-4e86-9611-20e44162c69', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '90f2ca2d-5792-4492-8185-8802b23e6b1', 200, 'Sales Return of Bill No 57', '2019-03-14 08:10:12', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:10:11', 1, 0),
('f51e8c34-9f1a-4db8-a1e7-f0fe3b15ebc', '3947d4f6-de4c-466e-9697-2cd90619a2d', '9c9de4d2-007f-4803-92b7-a224df16f7e', NULL, 125, NULL, '2019-03-14 10:01:43', -1, 1, '2019-03-14 10:01:43', '2019-03-14 10:01:43', 1, 1),
('f54efdfc-6e88-4ad3-9d5f-a4bc6f08620', '3637492e-dce5-45c3-aa7e-d195e7a33ab', NULL, '36eed7c5-598a-402c-93a0-713fb61891e', 1, NULL, '2019-03-14 00:00:00', 1, 0, '2019-03-14 09:52:40', '2019-03-14 09:52:40', 1, 1),
('f5ebfae0-e493-4134-ab71-daef04244a5', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, NULL, 10, '', '2019-03-15 00:00:00', 10, 1, '2019-03-15 11:47:04', '2019-03-15 11:47:04', 1, 1),
('f5fb68f3-c625-40b6-b815-0d3eff960b3', '8989189c-feff-449d-8aca-8aba3cd72d1', NULL, NULL, 10, '', '2019-03-13 00:00:00', 10, 0, '2019-04-27 10:08:16', '2019-03-13 07:08:57', 1, 1),
('f72bdec8-7298-4c93-8b03-16b675ddfdf', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, '04ec4033-7f12-4904-a4c6-7042e749682', 200, NULL, '2019-03-13 00:00:00', 1, 1, '2019-03-18 08:30:30', '2019-03-18 08:30:30', 1, 1),
('f731eee3-2fd1-467b-9b7f-12a41d6d6f27', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, 'b7cd8448-3a74-4ba8-95cf-8703855e5aaf', 120, NULL, '2019-04-08 00:00:00', 1, 1, '2019-04-08 08:33:00', '2019-04-08 08:33:00', 1, 1),
('f87b37b8-28c8-46a2-b647-1a3f56bf7b4', '8aa3a96c-fa31-424e-940e-15020b1e564', '0cbb646d-01c4-4875-8cf8-1f4b5a8cb3f', NULL, 100000, 'Purchase Return', '2019-03-14 11:18:35', -2, 1, '2019-03-14 11:18:35', '2019-03-14 11:18:35', 1, 1),
('f8da4d98-5b91-4d90-ba3e-34b4f71a6c9', '8aa3a96c-fa31-424e-940e-15020b1e564', NULL, NULL, 100, '', '2019-03-15 00:00:00', 10, 1, '2019-03-15 11:36:28', '2019-03-15 11:36:28', 1, 1),
('f924783d-68d4-4161-acfe-dae530c7d45', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '04ec4033-7f12-4904-a4c6-7042e749682', 200, NULL, '2019-03-13 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 08:11:36', 1, 1),
('f944e53a-3d06-4043-9773-9792d413230', 'e5e0e690-993f-47b9-94a0-7ae97b9c0f1', NULL, 'bda5894e-1d15-4fc8-8707-cf9f7ca6f20', 1, 'Sales Return of Bill No 53', '2019-03-13 00:00:00', 1, 1, '2019-03-13 10:21:27', '2019-03-13 12:51:58', 1, 1),
('fab445c1-22f9-49d6-8006-c6c5c3f0a12', '873dc4f4-7a86-417a-9158-bd543ee635a', NULL, '64cd41cf-b01f-48e0-8fd9-17cd7b9133f', 120, NULL, '2019-03-24 00:00:00', 1, 1, '2019-03-24 13:02:02', '2019-03-24 13:02:02', 1, 1),
('fb06baba-da5c-46c2-97fd-584a95e0092', '8cbbab78-f0bd-481c-bc40-230f35c3e6d', NULL, NULL, 15, 'abababa', '2019-03-08 00:00:00', 10, 1, '2019-03-12 13:26:01', '2019-03-12 13:26:01', 1, 1),
('fc423446-0196-4428-a2cc-7d260c4f748', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', 'db7a47f7-c0cb-476d-8926-b7b7da52114', NULL, 200, 'Purchase Return', '2019-03-18 08:41:46', -2, 1, '2019-03-18 08:41:46', '2019-03-18 08:41:46', 1, 1),
('fcc724bf-1b64-40ad-87bc-f755ca93fa1', 'aa78c2fe-1f1c-4ae4-8a8e-40cac3d7d29', NULL, NULL, 200, 'Sales Return of Bill No 49', '2019-03-13 00:00:00', 1, 1, '2019-03-13 08:34:39', '2019-03-13 08:34:39', 1, 1),
('fe3ba8ef-125d-4cb3-9333-0c8f5022730', '3f8aab71-fa01-4e74-919c-1d33140efe8', NULL, '36eed7c5-598a-402c-93a0-713fb61891e', 200, NULL, '2019-03-14 00:00:00', 1, 0, '2019-04-27 10:07:50', '2019-03-14 09:52:40', 1, 1),
('fff6d5ec-f5b7-41e4-9853-3c4e1a1060e', '3060ffcc-f1d3-4195-975a-acf6e12e1e2', NULL, '04ec4033-7f12-4904-a4c6-7042e749682', 200, NULL, '2019-03-13 00:00:00', 1, 1, '2019-03-18 08:30:30', '2019-03-18 08:30:30', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Subtypes`
--

CREATE TABLE `Subtypes` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `typeId` varchar(36) NOT NULL,
  `isEnabled` tinyint(1) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Subtypes`
--

INSERT INTO `Subtypes` (`id`, `name`, `typeId`, `isEnabled`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('03d9cb25-f324-476a-ba16-373ace4d0579', 'qqqw', '10d048f3-a78d-4024-9b9d-0d75dd1c9b1', 0, '2019-04-27 10:11:32', '2019-04-27 10:11:26', 1, 1),
('0a2484b4-b79c-4878-9b36-9f18fa1b755', 'Half-sleeve tshirt', '41bee519-ec5e-45f5-a5a9-3d2d1834019', 1, '2019-04-26 13:40:54', '2019-04-26 08:10:53', 1, 1),
('109fd266-a493-4d4d-bb4f-e4bdb5a6245', 'Regular', 'b4f909c7-677b-457a-8b06-7a7bc35f671', 1, '2019-04-27 10:11:18', '2019-04-27 04:41:18', 1, 1),
('52cfb6d7-0ae7-4715-b917-f2039438331', 'aannbb', '35968264-245a-11e9-a14f-588a5a24e72', 0, '2019-02-24 04:41:41', '2019-02-24 04:41:41', 1, 1),
('588da8eb-245a-11e9-a14f-588a5a24e72', 'tshirt', '35968264-245a-11e9-a14f-588a5a24e72', 1, '2019-01-30 06:43:26', '2019-01-30 06:43:26', 1, 1),
('650c6e9a-2c44-4ad5-a4cb-4e376f7cef2', 'Full-sleeve Tshirts', '35968264-245a-11e9-a14f-588a5a24e72', 1, '2019-04-26 13:41:25', '2019-04-26 08:11:25', 1, 1),
('79db59ad-a6ac-44ee-91d4-0c6f5ce54aa', 'z', '41bee519-ec5e-45f5-a5a9-3d2d1834019', 1, '2019-04-26 13:43:21', '2019-04-26 08:13:21', 1, 1),
('82798985-0f0a-4fde-ac2a-2081bf03616', 'servani', '41bee519-ec5e-45f5-a5a9-3d2d1834019', 1, '2019-04-27 11:10:02', '2019-04-27 05:40:02', 1, 1),
('8a67d644-449e-456d-a28b-786477ddab7', 'Vivo', 'b4f909c7-677b-457a-8b06-7a7bc35f671', 1, '2019-03-15 11:05:21', '2019-03-15 11:05:21', 1, 1),
('9442f339-7443-42a0-8c93-6995cd42b524', 'newne', '34a14416-54fd-4e20-bab2-9975853d29b', 0, '2019-04-22 12:45:46', '2019-04-22 07:15:20', 1, 1),
('954889ce-9f18-4c46-8d44-5be8e3cb7e3', 'Denim', '10d048f3-a78d-4024-9b9d-0d75dd1c9b1', 1, '2019-04-26 13:41:02', '2019-04-26 08:11:01', 1, 1),
('e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 'Kids', '10d048f3-a78d-4024-9b9d-0d75dd1c9b1', 1, '2019-04-26 13:42:08', '2019-04-26 08:12:08', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Supplier`
--

CREATE TABLE `Supplier` (
  `id` varchar(36) NOT NULL,
  `name` varchar(200) NOT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `gstin` varchar(50) DEFAULT NULL,
  `street` longtext,
  `area` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  `stateCode` int(11) DEFAULT NULL,
  `isEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `balance` double NOT NULL DEFAULT '0',
  `closingbal` double DEFAULT '0',
  `totalAmount` double NOT NULL DEFAULT '0',
  `paid` double NOT NULL DEFAULT '0',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Supplier`
--

INSERT INTO `Supplier` (`id`, `name`, `mobile`, `email`, `gstin`, `street`, `area`, `city`, `state`, `pincode`, `stateCode`, `isEnabled`, `balance`, `closingbal`, `totalAmount`, `paid`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('05185471-0bae-4883-bb56-be1ed5cb3ae', ' mr Rohit Tilokani', '9785469852', 'jayesh@gmail.com', '11', 'test', '', 'bangalore', 'karnataka', '369456', NULL, 0, 1000, 800, 200, 200, '2019-04-26 12:58:18', '2019-04-04 12:35:08', 1, 1),
('21ce38e6-1b11-4f4c-98fa-fee9d28fa71b', ' Sunil Keswani', '1122336665', '', '', '', '', '', '', NULL, NULL, 1, 0, 0, 0, 0, '2019-04-26 12:25:35', '2019-04-26 12:25:34', 1, 1),
('49e9f880-beed-494d-be48-9f4d6694d0c', ' deepak savlani', '9785469852', 'jayesh@gmail.com', '32', 'warasiya', 'area', 'bangalore', '9785469852', '369456', 6, 1, 0, 0, 3139, 0, '2019-04-26 12:33:58', '2019-04-26 12:33:58', 1, 1),
('4c59756d-c6b0-4ef1-8a4d-6b24d1d257c', ' ajay haswani', '1234567897', 'jay@gmail.com', 'aa72', 'test', 'area', 'bhoot', '123456789', '390123', 24, 1, 0, 5000, 22761, 22200, '2019-04-26 12:26:17', '2019-04-26 12:26:16', 1, 1),
('65e88699-202c-47dd-94c0-8f44338825f', 'sunil', '123456789', 'jay@gmail.com', 'aa72', 'test', 'area', 'bangalore', 'karnataka', '390123', 24, 0, 0, 0, 0, 0, '2019-03-07 05:12:20', '2019-03-07 05:12:20', 1, 1),
('8730d1e5-c30e-4d62-8c5d-3b27cffb24d', 'Mr. Nikhil Keswani', '9999999911', 'abc@g.com', 'sad', 'sd', 'cxz', 'ss', 'sa', '112', 22, 1, 0, 0, 650, 200, '2019-04-26 12:34:56', '2019-04-26 12:34:56', 1, 1),
('87f4d936-4c79-4bdd-afb5-1060bb81bb48', 'manish', '', '', '', '', '', '', '', NULL, NULL, 1, 10000, 12000, 15000, 15000, '2019-04-22 12:19:21', '2019-04-22 12:19:21', 1, 1),
('9bb150f4-fbf1-4d55-9ed8-d0cd4a2577c', 'Mr. sachin markande', '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', '369456', NULL, 0, 0, 0, -27, -1, '2019-04-26 12:28:02', '2019-04-26 12:27:08', 1, 1),
('b0860fe9-bdf4-4a4a-979f-e319410f346', ' Vivek rajani', '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', '369456', NULL, 1, 0, 0, 1330, 1233, '2019-04-26 12:28:22', '2019-04-26 12:28:21', 1, 1),
('bd54909f-fd28-44ba-9e2d-bb866705b6c', ' Ashish rojani', '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', '369456', NULL, 0, 0, 0, 0, 0, '2019-04-26 12:30:13', '2019-04-26 12:28:34', 1, 1),
('cb9657bd-e9f3-47e2-af65-0e7d05a522f', ' hy hy', '1122336655', '', '', '', '', '', '', NULL, NULL, 0, 0, 0, 10, 0, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('d0dfc058-4ce4-4677-861c-bcb16058b96', 'Mrs. adi purani', '9785469852', 'jayesh@gmail.com', '', 'test', '', 'bangalore', 'karnataka', '369456', NULL, 1, 0, 0, -4, -2, '2019-04-26 12:28:48', '2019-04-26 12:28:47', 1, 1),
('dd1e7eb7-dab2-42fd-b963-e53cb8adfd6', ' Lucky Dulani', '1144778899', '', 'string', 'string', 'string', 'string', 'string', NULL, 0, 1, 0, 0, -6, 0, '2019-04-26 12:29:15', '2019-04-26 12:29:14', 1, 1),
('e4934f4b-f7ec-4283-8cbb-d9979e756c3', 'sunil', '123456789', 'jay@gmail.com', 'aa72', 'test', 'area', 'bangalore', 'karnataka', '390123', 24, 0, 0, 0, 0, 0, '2019-03-07 05:13:35', '2019-03-07 05:13:35', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Supplierlog`
--

CREATE TABLE `Supplierlog` (
  `id` varchar(36) NOT NULL,
  `supplierId` varchar(36) NOT NULL,
  `balance` double NOT NULL,
  `notes` longtext,
  `date` datetime NOT NULL,
  `isEnabled` tinyint(4) NOT NULL DEFAULT '1',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Supplierlog`
--

INSERT INTO `Supplierlog` (`id`, `supplierId`, `balance`, `notes`, `date`, `isEnabled`, `createdOn`, `modifiedOn`, `createdById`) VALUES
('4ab4ec12-12ed-460c-a55b-4ddf0085c8dc', '4c59756d-c6b0-4ef1-8a4d-6b24d1d257c', 5000, '5000', '2019-04-08 00:00:00', 1, '2019-04-08 10:07:21', '2019-04-08 10:07:21', 1),
('8ea7e40a-d774-41e5-a408-496713219786', '87f4d936-4c79-4bdd-afb5-1060bb81bb48', 10000, 'Opening Balance', '2019-04-12 13:41:12', 1, '2019-04-12 08:11:12', '2019-04-12 08:11:12', 1),
('c8dbd85d-e4af-49bd-b71e-68e224335acb', '87f4d936-4c79-4bdd-afb5-1060bb81bb48', 1000, 'Balance Added', '2019-04-12 13:42:03', 1, '2019-04-12 08:12:03', '2019-04-12 08:12:03', 1),
('e89f669b-6903-4ea4-b811-dff71f868574', '87f4d936-4c79-4bdd-afb5-1060bb81bb48', 1000, 'Balance Added', '2019-04-12 18:21:18', 1, '2019-04-12 12:51:18', '2019-04-12 12:51:18', 1),
('f36b2238-9c8b-438b-ac02-433324ec8b4e', '21ce38e6-1b11-4f4c-98fa-fee9d28fa71b', 0, 'Opening Balance', '2019-04-22 17:13:50', 1, '2019-04-22 11:43:50', '2019-04-22 11:43:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Taxes`
--

CREATE TABLE `Taxes` (
  `id` varchar(36) NOT NULL,
  `name` varchar(80) NOT NULL,
  `percentage` int(11) NOT NULL,
  `isEnabled` tinyint(1) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Taxes`
--

INSERT INTO `Taxes` (`id`, `name`, `percentage`, `isEnabled`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('32967314-b019-47a8-813d-4f5fb3bc67c', 'gst18', 18, 1, '2019-02-28 01:27:56', '2019-02-28 01:27:56', 1, 1),
('4a1314e0-7024-49f2-ba19-74d75b8b647', 'gst0', 0, 1, '2019-04-15 10:50:37', '2019-04-15 10:50:41', 1, 1),
('643e8ae8-0bc2-42d4-84e2-d47a2281b3a', 'gst03', 3, 1, '2019-02-28 01:27:56', '2019-03-30 09:03:02', 1, 1),
('6c70c484-da22-43dd-9a46-da3f68f369f', 'gst10', 10, 1, '2019-02-05 02:29:16', '2019-02-05 02:29:16', 1, 1),
('990f49e1-32f8-4a85-8942-0ba9097af93', 'gst05', 5, 1, '2019-02-05 02:29:16', '2019-03-30 09:03:08', 1, 1),
('b9dbaa4c-3ff9-4967-8ed3-3efd134d6df', 'gst12', 12, 1, '2019-02-11 02:00:26', '2019-02-11 02:00:26', 1, 1),
('e955313f-d239-47f2-9528-c9ce4abdd41', 'gst28', 28, 1, '2019-02-28 01:27:56', '2019-02-28 01:27:56', 1, 1),
('e964316f-3f59-4887-ac04-6350edca661', 'GST35', 35, 0, '2019-03-30 09:03:45', '2019-03-30 09:03:45', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Transport`
--

CREATE TABLE `Transport` (
  `id` varchar(36) NOT NULL,
  `name` varchar(150) NOT NULL,
  `vehicleNo` varchar(20) NOT NULL,
  `isEnabled` tinyint(4) NOT NULL,
  `createdOn` datetime NOT NULL,
  `modifiedOn` datetime NOT NULL,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Transport`
--

INSERT INTO `Transport` (`id`, `name`, `vehicleNo`, `isEnabled`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('04e2dc1b-9bca-4744-bf87-278a3138be2', 'Transport 2', 'GJ06AB9876', 1, '2019-03-15 16:59:59', '2019-04-26 18:44:22', 1, 1),
('17380ce2-6509-4ecd-9714-bf0f66e1dc4', 'Transport 3', 'GJ30AE0125', 1, '2019-03-07 12:59:47', '2019-04-26 18:44:45', 2, 1),
('3457d170-8754-4692-a0c8-5195d5d3e57', 'nananm', '156', 0, '2019-03-07 12:56:35', '2019-03-30 14:15:03', 1, 1),
('484fb5c6-59f9-4408-a112-22e88e23092', 'string', 'string', 0, '2019-02-14 06:49:28', '2019-02-14 06:49:28', 1, 1),
('7cf247e5-067d-47d6-b204-70fe15ba305', 'p', '1', 0, '2019-03-15 17:00:11', '2019-03-15 17:00:11', 1, 1),
('9d7ced7e-7249-42da-820f-d49e1d16660', 'n', '12', 0, '2019-03-15 16:59:15', '2019-03-15 16:59:15', 1, 1),
('c6c56ac5-1603-4130-8ed6-a976056ece9d', 'Transport 1', 'GJ06AC1234', 1, '2019-04-26 17:56:44', '2019-04-26 17:56:44', 1, 1),
('cb182b04-b133-471c-9c93-c995d27db838', 'n', '1', 0, '2019-04-15 16:02:36', '2019-04-15 16:02:36', 1, 1),
('f3cdff02-7cd8-458f-ae63-715594fc0e1', 'qww', '125', 0, '2019-03-30 14:15:20', '2019-03-30 14:15:20', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Type`
--

CREATE TABLE `Type` (
  `id` varchar(36) NOT NULL,
  `name` varchar(50) NOT NULL,
  `isEnabled` tinyint(1) NOT NULL,
  `taxId` varchar(36) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Type`
--

INSERT INTO `Type` (`id`, `name`, `isEnabled`, `taxId`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('0f108de7-031c-4368-8595-cfc981388f44', 'aazn', 0, '', '2019-04-27 10:28:56', '2019-04-27 09:52:10', 1, 1),
('10d048f3-a78d-4024-9b9d-0d75dd1c9b1', 'jeans', 1, '990f49e1-32f8-4a85-8942-0ba9097af93', '2019-04-27 10:53:49', '2019-04-27 10:53:49', 1, 1),
('30faa735-60a1-4a12-8207-e7d315f910d', 'aaala', 0, '32967314-b019-47a8-813d-4f5fb3bc67c', '2019-03-13 13:10:38', '2019-03-28 10:18:11', 1, 1),
('34a14416-54fd-4e20-bab2-9975853d29b', 'Loafers', 1, '', '2019-04-26 13:38:15', '2019-04-26 13:38:15', 1, 1),
('35968264-245a-11e9-a14f-588a5a24e72', 'high-range cloth', 1, '6c70c484-da22-43dd-9a46-da3f68f369f', '2019-04-26 13:39:10', '2019-04-26 13:39:09', 1, 1),
('41bee519-ec5e-45f5-a5a9-3d2d1834019', 'Mid-range Cloth', 1, '4a1314e0-7024-49f2-ba19-74d75b8b647', '2019-04-27 10:54:22', '2019-04-27 10:54:22', 1, 1),
('7430eb10-54a5-4e8c-a203-71f3a608d54', 's', 1, '643e8ae8-0bc2-42d4-84e2-d47a2281b3a', '2019-04-27 11:01:29', '2019-04-27 11:01:29', 1, 1),
('76a3f5dd-a49e-4f61-867d-6c0dc7dff70', 'qw', 1, '6c70c484-da22-43dd-9a46-da3f68f369f', '2019-04-27 09:49:16', '2019-04-27 09:49:16', 1, 1),
('8976a5bb-72ee-4c20-a570-c8c1407dd9b6', 'kutta', 0, '32967314-b019-47a8-813d-4f5fb3bc67c', '2019-04-27 10:28:56', '2019-04-27 10:28:36', 1, 1),
('947294ca-fd9e-4251-bd07-06f057d18d1d', 'poi', 1, '32967314-b019-47a8-813d-4f5fb3bc67c', '2019-04-15 12:06:44', '2019-04-15 12:06:44', 1, 1),
('986264b0-ee5f-4d71-969f-3ffcb6d0990', 'apap', 0, '4a1314e0-7024-49f2-ba19-74d75b8b647', '2019-03-13 12:15:33', '2019-03-13 12:15:33', 1, 1),
('9a99ca8a-4e39-4db1-a7cc-d94dc82fadf', 'ssssss', 1, '4a1314e0-7024-49f2-ba19-74d75b8b647', '2019-03-07 07:34:45', '2019-03-09 08:34:42', 1, 1),
('9ccdb706-c158-4049-91bd-007945dae9b', 'po', 1, '', '2019-03-15 11:09:33', '2019-03-15 11:09:33', 1, 1),
('a3c81028-5ed0-4376-9104-938c35c1e1d', 'll', 0, '4a1314e0-7024-49f2-ba19-74d75b8b647', '2019-03-12 12:50:38', '2019-03-12 12:50:38', 1, 1),
('b4f909c7-677b-457a-8b06-7a7bc35f671', 'low-range Cloth', 1, '643e8ae8-0bc2-42d4-84e2-d47a2281b3a', '2019-04-26 13:39:38', '2019-04-26 13:39:37', 1, 1),
('ca4162f3-8bd5-4c4b-a721-5fb143f5673', 'Men\'s Wear', 1, '990f49e1-32f8-4a85-8942-0ba9097af93', '2019-04-27 11:08:03', '2019-04-27 11:08:03', 1, 1),
('fe2729eb-ec3e-43a8-9e48-dd3c74262a8', 'hhaahhaa', 0, '', '2019-03-30 09:01:48', '2019-03-30 09:01:48', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Unit`
--

CREATE TABLE `Unit` (
  `id` varchar(36) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Unit`
--

INSERT INTO `Unit` (`id`, `title`) VALUES
('1a963530-f7bf-49ec-859f-84c3c70f7ec', 'liter'),
('ba0bc770-7947-4a07-bcb7-de936d4545d', 'mts'),
('d7845da0-2459-11e9-a14f-588a5a24e72', 'pcs'),
('daab3984-9e36-4908-b17f-06f38671c7be', 'cms');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `realm` varchar(512) DEFAULT NULL,
  `username` varchar(512) DEFAULT NULL,
  `password` varchar(512) NOT NULL,
  `email` varchar(512) NOT NULL,
  `emailVerified` tinyint(1) DEFAULT NULL,
  `verificationToken` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`id`, `realm`, `username`, `password`, `email`, `emailVerified`, `verificationToken`) VALUES
(1, NULL, 'jay', '$2a$10$XtEywk8nX3xX5S/3AcmrgeMF.E567n2jU/1XIRpNwLxSAwrAzWtlK', 'somani@gmail.com', NULL, NULL),
(2, NULL, NULL, '$2a$10$oVqo0.O/kukmw5cnWKjwWeUtZyMeXfmRArRFvZ0ejD12Msu4USRVO', 'bha@gmail.com', NULL, NULL),
(3, NULL, NULL, '$2a$10$6ZGtpFgm3agocREOAdAWs.d3svv2qABxE5FY3Zbckth85dz0/XbbO', 'sunill@gmail.com', NULL, NULL),
(4, NULL, NULL, '$2a$10$5hmuERB65woVMgXwhad9t.ArQ9J3MPF68gsPAHMAKfbxq11JtLndm', 'somanijay@gmail.com', NULL, NULL),
(5, NULL, NULL, '$2a$10$DeklPzpiKNwTxM.wHQaiGOwsvCRdNoEbuBaUj0QGOw.omnivi9pzi', 'jay@gmail.com', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AccessToken`
--
ALTER TABLE `AccessToken`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `ACL`
--
ALTER TABLE `ACL`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Billbook`
--
ALTER TABLE `Billbook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdById` (`createdById`),
  ADD KEY `modifiedById` (`modifiedById`);

--
-- Indexes for table `Configuration`
--
ALTER TABLE `Configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerTypeId` (`customerTypeId`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `Customergroup`
--
ALTER TABLE `Customergroup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerId` (`customerId`),
  ADD KEY `smsgroupId` (`smsgroupId`),
  ADD KEY `createdById` (`createdById`),
  ADD KEY `modifiedById` (`modifiedById`);

--
-- Indexes for table `Customeritemprices`
--
ALTER TABLE `Customeritemprices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerTypeId` (`customerTypeId`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`),
  ADD KEY `itemId` (`itemId`);

--
-- Indexes for table `Customerlog`
--
ALTER TABLE `Customerlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerId` (`customerId`),
  ADD KEY `createdById` (`createdById`);

--
-- Indexes for table `Customertype`
--
ALTER TABLE `Customertype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `Details`
--
ALTER TABLE `Details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Document`
--
ALTER TABLE `Document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `Itemphotos`
--
ALTER TABLE `Itemphotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`),
  ADD KEY `itemId` (`itemId`);

--
-- Indexes for table `Items`
--
ALTER TABLE `Items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`),
  ADD KEY `unitId` (`unitId`),
  ADD KEY `subTypeId` (`subTypeId`);

--
-- Indexes for table `Orderitem`
--
ALTER TABLE `Orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderId` (`orderId`),
  ADD KEY `itemId` (`itemId`);

--
-- Indexes for table `Orderpayment`
--
ALTER TABLE `Orderpayment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderId` (`orderId`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerId` (`customerId`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`),
  ADD KEY `billBookId` (`billBookId`),
  ADD KEY `transportId` (`transportId`);

--
-- Indexes for table `Purchase`
--
ALTER TABLE `Purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplierId` (`supplierId`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `Purchaseitem`
--
ALTER TABLE `Purchaseitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchaseId` (`purchaseId`),
  ADD KEY `itemId` (`itemId`);

--
-- Indexes for table `Purchasepayment`
--
ALTER TABLE `Purchasepayment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchaseId` (`purchaseId`),
  ADD KEY `paymentId` (`paymentMethod`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RoleMapping`
--
ALTER TABLE `RoleMapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `principalId` (`principalId`),
  ADD KEY `roleId` (`roleId`);

--
-- Indexes for table `Smsgroup`
--
ALTER TABLE `Smsgroup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdById` (`createdById`),
  ADD KEY `modifiedById` (`modifiedById`);

--
-- Indexes for table `Smslog`
--
ALTER TABLE `Smslog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerId` (`customerId`),
  ADD KEY `smsgroupId` (`smsgroupId`),
  ADD KEY `createdById` (`createdById`),
  ADD KEY `smstemplateId` (`smstemplateId`);

--
-- Indexes for table `Smstemplate`
--
ALTER TABLE `Smstemplate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdById` (`createdById`),
  ADD KEY `modifiedById` (`modifiedById`);

--
-- Indexes for table `Stocklog`
--
ALTER TABLE `Stocklog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemId` (`itemId`);

--
-- Indexes for table `Subtypes`
--
ALTER TABLE `Subtypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typeId` (`typeId`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `Supplier`
--
ALTER TABLE `Supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `m` (`modifiedById`);

--
-- Indexes for table `Supplierlog`
--
ALTER TABLE `Supplierlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplierId` (`supplierId`),
  ADD KEY `createdById` (`createdById`);

--
-- Indexes for table `Taxes`
--
ALTER TABLE `Taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `Transport`
--
ALTER TABLE `Transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Type`
--
ALTER TABLE `Type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `Unit`
--
ALTER TABLE `Unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ACL`
--
ALTER TABLE `ACL`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Role`
--
ALTER TABLE `Role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `RoleMapping`
--
ALTER TABLE `RoleMapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AccessToken`
--
ALTER TABLE `AccessToken`
  ADD CONSTRAINT `accesstoken_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `User` (`id`);

--
-- Constraints for table `Billbook`
--
ALTER TABLE `Billbook`
  ADD CONSTRAINT `billbook_ibfk_1` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `billbook_ibfk_2` FOREIGN KEY (`modifiedById`) REFERENCES `User` (`id`);

--
-- Constraints for table `Customer`
--
ALTER TABLE `Customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`customerTypeId`) REFERENCES `Customertype` (`id`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`modifiedById`) REFERENCES `User` (`id`);

--
-- Constraints for table `Customergroup`
--
ALTER TABLE `Customergroup`
  ADD CONSTRAINT `customergroup_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `Customer` (`id`),
  ADD CONSTRAINT `customergroup_ibfk_2` FOREIGN KEY (`smsgroupId`) REFERENCES `Smsgroup` (`id`),
  ADD CONSTRAINT `customergroup_ibfk_3` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `customergroup_ibfk_4` FOREIGN KEY (`modifiedById`) REFERENCES `User` (`id`);

--
-- Constraints for table `Customeritemprices`
--
ALTER TABLE `Customeritemprices`
  ADD CONSTRAINT `customeritemprices_ibfk_1` FOREIGN KEY (`customerTypeId`) REFERENCES `Customertype` (`id`),
  ADD CONSTRAINT `customeritemprices_ibfk_2` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `customeritemprices_ibfk_3` FOREIGN KEY (`modifiedById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `customeritemprices_ibfk_4` FOREIGN KEY (`itemId`) REFERENCES `Items` (`id`);

--
-- Constraints for table `Customerlog`
--
ALTER TABLE `Customerlog`
  ADD CONSTRAINT `customerlog_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `Customer` (`id`),
  ADD CONSTRAINT `customerlog_ibfk_2` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`);

--
-- Constraints for table `Customertype`
--
ALTER TABLE `Customertype`
  ADD CONSTRAINT `customertype_ibfk_1` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `customertype_ibfk_2` FOREIGN KEY (`modifiedById`) REFERENCES `User` (`id`);

--
-- Constraints for table `Document`
--
ALTER TABLE `Document`
  ADD CONSTRAINT `document_ibfk_1` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `document_ibfk_2` FOREIGN KEY (`modifiedById`) REFERENCES `User` (`id`);

--
-- Constraints for table `Itemphotos`
--
ALTER TABLE `Itemphotos`
  ADD CONSTRAINT `itemphotos_ibfk_1` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `itemphotos_ibfk_2` FOREIGN KEY (`modifiedById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `itemphotos_ibfk_3` FOREIGN KEY (`itemId`) REFERENCES `Items` (`id`);

--
-- Constraints for table `Items`
--
ALTER TABLE `Items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`modifiedById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `items_ibfk_3` FOREIGN KEY (`unitId`) REFERENCES `Unit` (`id`),
  ADD CONSTRAINT `items_ibfk_4` FOREIGN KEY (`subTypeId`) REFERENCES `Subtypes` (`id`);

--
-- Constraints for table `Orderitem`
--
ALTER TABLE `Orderitem`
  ADD CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `Orders` (`id`),
  ADD CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`itemId`) REFERENCES `Items` (`id`);

--
-- Constraints for table `Orderpayment`
--
ALTER TABLE `Orderpayment`
  ADD CONSTRAINT `orderpayment_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `Orders` (`id`),
  ADD CONSTRAINT `orderpayment_ibfk_3` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `orderpayment_ibfk_4` FOREIGN KEY (`modifiedById`) REFERENCES `User` (`id`);

--
-- Constraints for table `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `Customer` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`modifiedById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`billBookId`) REFERENCES `Billbook` (`id`),
  ADD CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`transportId`) REFERENCES `Transport` (`id`);

--
-- Constraints for table `Purchase`
--
ALTER TABLE `Purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`supplierId`) REFERENCES `Supplier` (`id`),
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `purchase_ibfk_3` FOREIGN KEY (`modifiedById`) REFERENCES `User` (`id`);

--
-- Constraints for table `Purchaseitem`
--
ALTER TABLE `Purchaseitem`
  ADD CONSTRAINT `purchaseitem_ibfk_1` FOREIGN KEY (`purchaseId`) REFERENCES `Purchase` (`id`),
  ADD CONSTRAINT `purchaseitem_ibfk_2` FOREIGN KEY (`itemId`) REFERENCES `Items` (`id`);

--
-- Constraints for table `Purchasepayment`
--
ALTER TABLE `Purchasepayment`
  ADD CONSTRAINT `purchasepayment_ibfk_1` FOREIGN KEY (`purchaseId`) REFERENCES `Purchase` (`id`),
  ADD CONSTRAINT `purchasepayment_ibfk_3` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `purchasepayment_ibfk_4` FOREIGN KEY (`modifiedById`) REFERENCES `User` (`id`);

--
-- Constraints for table `RoleMapping`
--
ALTER TABLE `RoleMapping`
  ADD CONSTRAINT `rolemapping_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `Role` (`id`),
  ADD CONSTRAINT `rolemapping_ibfk_2` FOREIGN KEY (`principalId`) REFERENCES `User` (`id`);

--
-- Constraints for table `Smsgroup`
--
ALTER TABLE `Smsgroup`
  ADD CONSTRAINT `smsgroup_ibfk_1` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `smsgroup_ibfk_2` FOREIGN KEY (`modifiedById`) REFERENCES `User` (`id`);

--
-- Constraints for table `Smslog`
--
ALTER TABLE `Smslog`
  ADD CONSTRAINT `smslog_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `Customer` (`id`),
  ADD CONSTRAINT `smslog_ibfk_3` FOREIGN KEY (`smsgroupId`) REFERENCES `Smsgroup` (`id`),
  ADD CONSTRAINT `smslog_ibfk_4` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `smslog_ibfk_5` FOREIGN KEY (`smstemplateId`) REFERENCES `Smstemplate` (`id`);

--
-- Constraints for table `Smstemplate`
--
ALTER TABLE `Smstemplate`
  ADD CONSTRAINT `smstemplate_ibfk_1` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `smstemplate_ibfk_2` FOREIGN KEY (`modifiedById`) REFERENCES `User` (`id`);

--
-- Constraints for table `Stocklog`
--
ALTER TABLE `Stocklog`
  ADD CONSTRAINT `stocklog_ibfk_1` FOREIGN KEY (`itemId`) REFERENCES `Items` (`id`);

--
-- Constraints for table `Subtypes`
--
ALTER TABLE `Subtypes`
  ADD CONSTRAINT `subtypes_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `Type` (`id`),
  ADD CONSTRAINT `subtypes_ibfk_2` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `subtypes_ibfk_3` FOREIGN KEY (`modifiedById`) REFERENCES `User` (`id`);

--
-- Constraints for table `Supplier`
--
ALTER TABLE `Supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `supplier_ibfk_2` FOREIGN KEY (`modifiedById`) REFERENCES `User` (`id`);

--
-- Constraints for table `Supplierlog`
--
ALTER TABLE `Supplierlog`
  ADD CONSTRAINT `supplierlog_ibfk_1` FOREIGN KEY (`supplierId`) REFERENCES `Supplier` (`id`),
  ADD CONSTRAINT `supplierlog_ibfk_2` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`);

--
-- Constraints for table `Taxes`
--
ALTER TABLE `Taxes`
  ADD CONSTRAINT `taxes_ibfk_1` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `taxes_ibfk_2` FOREIGN KEY (`modifiedById`) REFERENCES `User` (`id`);

--
-- Constraints for table `Type`
--
ALTER TABLE `Type`
  ADD CONSTRAINT `type_ibfk_1` FOREIGN KEY (`createdById`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `type_ibfk_2` FOREIGN KEY (`modifiedById`) REFERENCES `User` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
