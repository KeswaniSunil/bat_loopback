-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2019 at 06:34 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `accesstoken`
--

CREATE TABLE IF NOT EXISTS `accesstoken` (
  `id` varchar(255) NOT NULL,
  `ttl` int(11) DEFAULT NULL,
  `scopes` text,
  `created` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accesstoken`
--

INSERT INTO `accesstoken` (`id`, `ttl`, `scopes`, `created`, `userId`) VALUES
('3lLiQOBp1nuDPGCRirHTefM1lcBHY7kds1T0Z4w0mX7zirGYpIFe2cYz2LtJMsbC', 1209600, NULL, '2019-02-07 14:11:12', 4),
('6fkj7KEka4Y06DgjYcN6nzfxsEnaZqDHrY9E55jGtseUOfLwjChrJJV6LnH0x1Ya', 1209600, NULL, '2019-02-08 10:37:50', 4),
('6ysHl3gTTxPl69HjBdkB5pYSTzh33X0JJOmaYEWGmccL73n03HLORzX6TrB6lwKO', 1209600, NULL, '2019-02-05 11:01:32', 1),
('7hziTXP71IipRiPrXdFIeyh5tPlAp1Z8Eg1GzzafIWP7Bg24OaPfduQL2815PdS9', 1209600, NULL, '2019-01-18 07:33:51', 1),
('7TxmjP28zQQtyx4HiaFDULjzg7j2lzuB6pe1jQmDjTco3zfeXz2mXE7lNdkrSqgX', 1209600, NULL, '2019-01-18 07:39:59', 1),
('BHhw1HoTA51doUnO2dqahwfNta3nFAhyqBDDTrS1oMlAdb8BADIPunSiyQ6ddyDH', 1209600, NULL, '2019-01-18 07:41:47', 1),
('boDopAk9hFbX238AtJuOgfNB6RdO75DKcy8SbrZqarED4R9tsr7YnHR38pRriBUS', 1209600, NULL, '2019-02-08 10:20:11', 4),
('cD88BjsHLRPdBmtE8k7vfI9w5vdiOuD5OTFZLA5MlVEyqBJ3VQjAty7Ep0HfRWlj', 1209600, NULL, '2019-01-18 07:14:44', 1),
('Cm4LwaaDb0GHWcG6A2bAyFlZJlPmUFjsbUnKwpwIYIatAWUCYBEpF79eMt3d4k7d', 1209600, NULL, '2019-01-18 08:14:50', 1),
('EE5TGkJItfyq5fM019gml6OsgH8e8kyMODuLjaFeRHbbVyziMYdu9UJpgOwof88w', 1209600, NULL, '2019-01-18 07:17:13', 1),
('EzZKvBFhmc08eNAGW3mgKmp7jGBrL7QtcJYtYXk30J6EEpr9SD6qWJDnfYRjxD2G', 1209600, NULL, '2019-02-11 06:16:27', 4),
('fS2BIMa6gkTCohiHZoP7UQGErET3YhBJitpjmHOlXSAm89R0BV6EL8hpRqKKC4YT', 1209600, NULL, '2019-02-06 05:45:39', 4),
('g46C2JyDkzZCD09eEqZ5TNOgubXPzZH2RsqjJqCIrFFOdm1hXTcB0EB4DHORIRtr', 1209600, NULL, '2019-01-18 07:14:17', 1),
('h6WhwASsgnuWXmvX0Dhgsi16EFLPRTgt61Ch85acCoL0OqQkogA1xjlpDiidGxsR', 1209600, NULL, '2019-02-11 12:50:27', 1),
('Jauef7m1Nz8HBfRlJ812nX6pGTYWeOWfCw6Tbjwmu4iVVKWKyiRTp4dnaFq1pipZ', 1209600, NULL, '2019-01-18 07:39:39', 1),
('KXAabUYt4Pu85TZHsqwEsP3EgWkR4gFxR9GYSAyr0LBh9WfW9j4PZUUUNLtVA44i', 1209600, NULL, '2019-01-18 07:14:46', 1),
('lFVwLB0ZK3lRdRUAEn8Z9lNW95zeSX3pA3pUrOV8jbTL90tUAn3dDhar4eOetBjb', 1209600, NULL, '2019-01-22 05:09:06', 1),
('liHy40KKx8RXqOMDiHNeVIXFGN9NRH02ZfKdG7zVaE2BzhhFFoD4YqEWVJC8JNq5', 1209600, NULL, '2019-02-06 05:58:06', 4),
('Pe9H0yAZY2b8LAGCdpdc6eQtkFADZAL9NPcSAUoOnlF0H6nHQgoe2AmgaigEdmki', 1209600, NULL, '2019-01-22 05:33:26', 1),
('pxGg2cajCcXzBqr3DE4x5b0TybMrwxpAJi06mwwXcq6AaUZkSfY5AfTZ4PmjvCHe', 1209600, NULL, '2019-01-18 07:56:42', 1),
('Q1ViZuaA3gqvgDNMqQX4x1u1evkGYCuHEWV7mEz4I10lhtDU661RlqeSApWjzj8Q', 1209600, NULL, '2019-01-18 07:16:39', 1),
('R3l0KCPFlXvOku3QE8xHCCKyF9txfEx4MxPX6KY1GqiHAFcsmHfxROD9SffMh0Qm', 1209600, NULL, '2019-01-18 07:20:04', 1),
('tzXSlMeLvSMnd1KJQJHjyEDFXumDwBiPaayew4EOJkUZTF31HoaMTe3jcHONilzj', 1209600, NULL, '2019-01-18 07:23:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `acl`
--

CREATE TABLE IF NOT EXISTS `acl` (
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
-- Table structure for table `billbook`
--

CREATE TABLE IF NOT EXISTS `billbook` (
  `id` varchar(35) NOT NULL,
  `title` varchar(50) NOT NULL,
  `prefix` varchar(5) NOT NULL,
  `series` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billbook`
--

INSERT INTO `billbook` (`id`, `title`, `prefix`, `series`) VALUES
('5ea27c4c-7922-4fe0-a38f-208cad71343', 'string2', 'ss', 100),
('e2845053-7f0e-43bc-b515-e24d9184c1e', 'string', 'strin', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE IF NOT EXISTS `configuration` (
  `id` varchar(35) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `value` tinyint(1) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` varchar(35) NOT NULL,
  `name` varchar(150) NOT NULL,
  `customerTypeId` varchar(35) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `gstin` varchar(60) DEFAULT NULL,
  `street` varchar(150) DEFAULT NULL,
  `area` varchar(150) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `stateCode` int(11) DEFAULT NULL,
  `totalAmount` double NOT NULL DEFAULT '0',
  `received` double NOT NULL DEFAULT '0',
  `isEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `customerTypeId`, `mobile`, `email`, `gstin`, `street`, `area`, `city`, `state`, `pincode`, `stateCode`, `totalAmount`, `received`, `isEnabled`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 'jayesh dukhneja', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', 'as32', 'test', 'area', 'bangalore', 'karnataka', 369456, 6, 284, 284, 1, '2019-02-08 06:53:45', '2019-02-08 06:53:45', 1, 1),
('06da5940-38ce-4483-87ba-fa3847a206a', 'jayesh dukhneja', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', 'as32', 'test', 'area', 'bangalore', 'karnataka', 369456, 6, 0, 0, 1, '2019-02-08 07:06:23', '2019-02-08 07:06:23', 1, 1),
('22c8244e-fb21-4e2b-913c-d5cc2770a08', 'vineet bajaj', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '123456789', 'jay@gmail.com', 'aa72', 'test', 'area', 'bangalore', 'karnataka', 390123, 24, 0, 0, 1, '2019-02-08 06:53:45', '2019-02-08 06:53:45', 1, 1),
('46556209-ddde-49f4-b8cf-93c0291cbe3', 'Mrs. bhavesh kt', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '233622', 'abc@gmailc.om', '12', 'ajs sjas jasha hsash sva jhsvhj vsdhsa vdsah dvsah dvhav dha vdsa', 'knj', 'jkj', 'hh', 122, 2123, 0, 0, 1, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('47584369-a4c1-4f68-a927-aa95ed5a70d', 'vineet bajaj', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '123456789', 'jay@gmail.com', 'aa72', 'test', 'area', 'bangalore', 'karnataka', 390123, 24, 0, 0, 1, '2019-02-08 07:04:01', '2019-02-08 07:04:01', 1, 1),
('494cb0da-4df4-4b1f-894b-08849cb65b1', 'sunil bhoot', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', '32', 'test', 'area', 'bangalore', 'karnataka', 369456, 6, 0, 0, 1, '2019-02-11 02:22:54', '2019-02-11 02:22:54', 1, 1),
('736ad816-2459-11e9-a14f-588a5a24e72', ' bhaveshpaglkt aa', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '1234567890', 'su@gmail.com', '', 'abc', 'ccd', 'bvcf', '1234567890', 36005, 2365, 0, 0, 1, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('745c46e4-09a9-41e2-b79a-5f94ccc21e0', 'falgun bhavesh', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '123456789', 'jay@gmail.com', '72', 'test', 'area', 'bangalore', 'karnataka', 390123, 24, 0, 0, 1, '2019-02-11 02:22:54', '2019-02-11 02:22:54', 1, 1),
('80d02228-d958-4776-af0b-a058583f883', 'vineet bajaj', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '123456789', 'jay@gmail.com', 'aa72', 'test', 'area', 'bangalore', 'karnataka', 390123, 24, 0, 0, 1, '2019-02-08 07:06:23', '2019-02-08 07:06:23', 1, 1),
('982f5a35-7bed-4f4d-8482-d2d2355e5aa', '  ', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '7898', 'ah', '12', 'ax', 'cs', 'aa', 'ac', 10, 1100, 0, 0, 1, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('9bad8b96-68c9-4571-9aae-fb3f946711d', ' sd ', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '232', '', '', '', '', '', '', NULL, NULL, 0, 0, 1, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('b2a0fcce-2c40-4fc2-8632-196a43121dd', 'Mr. jay somani', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '123456789', '', '', '', '', '', '', 0, 0, 610, 630, 1, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('b6978a56-728f-4753-9322-b2038c85245', 'Mr. adasx ', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '204', 'abc@gmail.com', '12', 'ukh', 'uhhi', 'hh', 'hj', 122, 123, 0, 0, 1, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('bc8502a1-c8db-49e0-acc7-7c9cdb47d71', ' mynew customer', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '1236547890', '', '', '', '', '', '', NULL, NULL, 0, 0, 1, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('c59a48d3-e98f-4d39-b1fe-767be4d8ea4', 'jayesh dukhneja', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', 'as32', 'test', 'area', 'bangalore', 'karnataka', 369456, 6, 0, 0, 1, '2019-02-08 06:54:25', '2019-02-08 06:54:25', 1, 1),
('c87608ce-c608-4904-b26c-c55a17a3f8e', 'Mr. adasx ', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '204', '', '', '', '', '', '', NULL, NULL, 0, 0, 1, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('dcf157cb-1eda-11e9-8b87-54e1ad6c800', 'Sammy', 'c4e926dd-1eda-11e9-8b87-54e1ad6c800', '1234567890', '', '', '', '', '', '', 0, 0, 0, 0, 1, '2019-01-23 06:48:17', '2019-01-23 06:48:17', 1, 1),
('ec4ebc82-6754-4280-aa6f-74ba19ab08a', 'jayesh dukhneja', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '9785469852', 'jayesh@gmail.com', 'as32', 'test', 'area', 'bangalore', 'karnataka', 369456, 6, 0, 0, 1, '2019-02-08 07:04:01', '2019-02-08 07:04:01', 1, 1),
('fd1780da-a26e-4c60-b482-09d298c9b8a', 'vineet bajaj', '0131ef88-91a1-4b63-9a5a-d5a36cd0252', '123456789', 'jay@gmail.com', 'aa72', 'test', 'area', 'bangalore', 'karnataka', 390123, 24, 0, 0, 1, '2019-02-08 06:54:25', '2019-02-08 06:54:25', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customeritemprices`
--

CREATE TABLE IF NOT EXISTS `customeritemprices` (
  `id` varchar(35) NOT NULL,
  `customerTypeId` varchar(35) NOT NULL,
  `itemId` varchar(35) NOT NULL,
  `itemPrice` double NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customertype`
--

CREATE TABLE IF NOT EXISTS `customertype` (
  `id` varchar(35) NOT NULL,
  `name` varchar(80) NOT NULL,
  `isEnabled` tinyint(1) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customertype`
--

INSERT INTO `customertype` (`id`, `name`, `isEnabled`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('0131ef88-91a1-4b63-9a5a-d5a36cd0252', 'Same', 1, '2019-02-05 02:29:14', '2019-02-05 02:29:14', 1, 1),
('c4e926dd-1eda-11e9-8b87-54e1ad6c800', 'mmm', 1, '2019-01-23 06:47:36', '2019-01-23 06:47:36', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE IF NOT EXISTS `details` (
  `id` varchar(35) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` longtext NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `stateCode` int(11) NOT NULL,
  `gstin` varchar(30) NOT NULL,
  `bankAccountNo` varchar(30) NOT NULL,
  `bankAccountName` longtext NOT NULL,
  `bankName` longtext NOT NULL,
  `bankIFSC` varchar(20) NOT NULL,
  `termsAndConditions` longtext NOT NULL,
  `logo` longtext NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE IF NOT EXISTS `document` (
  `id` varchar(35) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `Date` datetime NOT NULL,
  `path` varchar(200) NOT NULL,
  `isEnabled` tinyint(1) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemphotos`
--

CREATE TABLE IF NOT EXISTS `itemphotos` (
  `id` varchar(35) NOT NULL,
  `itemId` varchar(35) NOT NULL,
  `name` varchar(50) NOT NULL,
  `altText` varchar(50) NOT NULL,
  `fileDir` longtext NOT NULL,
  `fileName` varchar(120) NOT NULL,
  `link` longtext NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` varchar(35) NOT NULL,
  `name` longtext NOT NULL,
  `billName` longtext NOT NULL,
  `isEnabled` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  `unitId` varchar(35) NOT NULL,
  `subTypeId` varchar(35) NOT NULL,
  `price` double NOT NULL,
  `hsnCode` varchar(50) NOT NULL,
  `barCode` varchar(120) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `billName`, `isEnabled`, `content`, `unitId`, `subTypeId`, `price`, `hsnCode`, `barCode`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('3947d4f6-de4c-466e-9697-2cd90619a2d', 'string', 'string', 1, 'string', 'd7845da0-2459-11e9-a14f-588a5a24e72', '588da8eb-245a-11e9-a14f-588a5a24e72', 500, '12', '23', '2019-02-05 00:07:11', '2019-02-05 00:07:11', 1, 1),
('829771a2-245a-11e9-a14f-588a5a24e72', 'Mycloth', 'abc', 1, '', 'ba0bc770-7947-4a07-bcb7-de936d4545d', 'e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 300, '11', '', '2019-01-30 06:44:36', '2019-01-30 06:44:36', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE IF NOT EXISTS `orderitem` (
  `id` varchar(35) NOT NULL,
  `orderId` varchar(35) NOT NULL,
  `itemId` varchar(35) NOT NULL,
  `quantity` int(11) NOT NULL,
  `itemPrice` double NOT NULL,
  `taxPrice` double NOT NULL,
  `series` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`id`, `orderId`, `itemId`, `quantity`, `itemPrice`, `taxPrice`, `series`) VALUES
('04195ec5-82ca-44dc-aa14-ad041c9bb5e', 'b282a7d9-3a95-4ac2-beb5-d7ae9426889', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 1000, 50, 1),
('14457983-3af1-489f-8068-a76eb9b6337', '3085c84c-283a-4467-ab59-0de24f235ef', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('14987fd8-ba53-455f-a473-f22ddf862f8', '51214645-e43d-4fcb-b09f-34c18b67ba8', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 1),
('1c500974-e9e7-4054-ac51-56b33a994ef', 'ad4e120c-5dd9-417a-827f-96633df8d60', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('210080d4-f38e-4acb-ae00-b6eba00d5ad', 'bb82d038-1430-4090-b8d7-299c0e53b68', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 1),
('23ee908d-bfa9-4ef4-bff4-f246fcf65c0', 'bb82d038-1430-4090-b8d7-299c0e53b68', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('2699ef4b-31bf-4422-9eb4-c7a82b05b66', '9db20766-5b99-492f-9303-f0789c9b78b', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('28fbcaf8-f231-4bb4-9e79-25a5e488689', '9d60635a-0cd4-4625-9843-d9f865cb120', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('2f245500-7428-4d93-8664-c628dfb1140', 'b282a7d9-3a95-4ac2-beb5-d7ae9426889', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 5000, 250, 0),
('33099cdb-5f88-41e8-8dc4-f8a934f6d5d', '93e7ead4-2e62-49d4-b7ac-8b98ef22ecc', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 1),
('33107499-43f1-497d-9fcc-911b783e197', '62dee4e9-93dd-4a1e-a6f8-48892d9baa3', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('33f3920b-7243-4a7c-93c4-0931fdc715c', '51214645-e43d-4fcb-b09f-34c18b67ba8', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('3532a390-684b-4b41-afb8-dfdffb220cb', 'da3b1338-199f-42c9-b66c-82af631caa3', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('3ab2f262-cbfb-4c66-8548-eaf632db594', 'c3645da9-16f6-4326-a81d-a9db53e51c2', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 0, 0, 0),
('3e166056-8b6b-44a8-9f15-d33582aa007', 'e817a718-3ffd-41b5-84e1-29d32d70875', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 0, 0, 0),
('3f8c9b34-7e22-49bf-9421-590e95e32b0', '134105b0-67d9-4b0c-8a02-2366394084a', '829771a2-245a-11e9-a14f-588a5a24e72', 500, 0, 0, 0),
('4136ca7d-4bf6-487b-81a0-1f0a2a893b8', 'ebd8bafa-dd50-4827-bac8-05fd6d0db6d', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('514daa83-6704-43c0-9dce-818796c0a3c', '24fa2b31-ed7b-4365-9d1c-c7e23c74aea', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('51716102-7497-4e99-b04d-e435668b593', '645b8f57-6950-4601-91ae-eafe8b5615b', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('5990757f-7fe3-4544-a737-21937a6b484', 'd80bddfd-bb33-479d-b66a-86c9ec3ee5c', '829771a2-245a-11e9-a14f-588a5a24e72', 2, 0, 0, 0),
('5ea2cdfb-e640-4c96-a458-af9f3976309', 'd4051d97-bce8-46f4-9f1c-824094a67ee', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('69a95deb-a5b0-4837-9899-4f50fde7d3c', '5dcb00d7-4505-4af9-b3ad-7df2ade0cdc', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('70e749a7-09b2-4a42-bdca-ebf549d879c', '840e1e55-6236-4e8e-8b7a-3a7ee8a7c83', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('714446cc-0d59-43ff-a58e-63cd01c24cc', 'add9e743-6448-4e33-a68f-89289421e6d', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('73cabebd-8389-40ec-8dad-ceaca8a7821', '5e954f3f-f4d2-489b-9c09-ced660fc071', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('7d27cf64-2f62-4f2d-80d7-4f1788b96fb', '7def2548-b022-429b-93e8-3cac55888fc', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('7d61d2ab-ea8b-4780-93c6-d679b7ab44f', '8a6d7715-2e4c-49f2-ae19-61a37920975', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('7fab4a9d-5631-4add-ad12-f4edbc1a0df', '4f2fe493-dd8d-4ac3-b867-3a10699381d', '3947d4f6-de4c-466e-9697-2cd90619a2d', 41, 0, 0, 0),
('8903b688-c3b8-4fa3-9b10-24b060af4c0', '9bf7fb12-e608-4b2a-8210-05245cb1a6d', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('8be18dc7-3fcb-496a-8422-3fb77a8ab7a', '2ffe62ed-1e08-4cb7-8a13-442fc5540ea', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 0, 0, 0),
('8fa08d6e-1d99-4851-b5eb-d34899b41b5', 'ad4e120c-5dd9-417a-827f-96633df8d60', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 2),
('8ff9a16b-4edd-4ed1-a73f-3c20b0c1104', '46d7dfe6-e1f6-411c-a7b8-824577f1230', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('910ede1b-5adb-4b35-9125-6071a90da41', '515587f8-5728-474b-a27c-d61aae673a5', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 1),
('93799fd0-d3d3-4b46-9bc6-1d7bd9b60d3', '90362628-9e05-404c-b7b0-aa6aa866f74', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('9bf35af4-5252-4a3d-9948-2a83c60dc99', '62dee4e9-93dd-4a1e-a6f8-48892d9baa3', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 1),
('9e6ec6d7-e567-4fe2-8f4f-0f120c5d46d', 'ee462121-5624-44f2-b861-3074ec67f70', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 0, 0, 0),
('a24d9807-5738-41c4-998a-ad0fffde743', '13af9ee3-39eb-4307-96a9-344432ee33d', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('b3213e8a-63c6-4eaa-b862-087d86637c8', 'e486496e-4173-4aba-b861-35fa52aba62', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('b64af203-e39f-482b-bc83-75391aab550', 'd5754d68-f30f-4a01-8c60-a230e680116', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('baee5064-1173-4173-8f59-820e673d263', '515587f8-5728-474b-a27c-d61aae673a5', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('c8976cc0-c725-475d-81c0-2ba6943ca2d', '163f28ae-5e7d-41e0-b9bb-16245db66a9', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 0, 0, 0),
('ca0ade92-3894-4774-a61f-a4196b0ce27', '84ec6a22-a10d-406b-abe7-85e3677af46', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('cbdc7c14-6277-4489-bad5-280b3a42fbe', 'cb21bbc7-7118-4d80-888a-a26415bf2ec', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('d5fd2d2c-ecd0-47a7-b9a6-489c1f2afff', '3188ec17-7f6f-4ed7-aaa9-1c401627fef', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('dc97fb1c-af06-4ffa-87eb-196a25fad95', '28a34663-b04f-4fc3-9463-7d95dc0cc5e', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('dcf58d81-579c-47c2-b6aa-8dd0786864b', '0ab8e45e-0ec8-4e36-bb06-119197eeac1', '829771a2-245a-11e9-a14f-588a5a24e72', 500, 0, 0, 0),
('e6555f6c-280c-4809-9235-fea6c6cb764', '93e7ead4-2e62-49d4-b7ac-8b98ef22ecc', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('e81cb7d7-1cb5-44b7-89a8-3d8b635150f', 'd38f4cd0-3054-48b3-b7c6-bc1eebaa517', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 0),
('ecbfcc9a-bfa5-4c3b-950e-3e666aed8ea', 'bb82d038-1430-4090-b8d7-299c0e53b68', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 2),
('f0822315-a2da-4eba-928f-70cc1b2485f', '70703d6b-205a-41c7-9863-a17f8e976fb', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 0, 0, 0),
('f9f80739-db30-4ae9-a61d-7e5656e674c', '46d7dfe6-e1f6-411c-a7b8-824577f1230', '829771a2-245a-11e9-a14f-588a5a24e72', 1, 300, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderpayment`
--

CREATE TABLE IF NOT EXISTS `orderpayment` (
  `id` varchar(35) NOT NULL,
  `orderId` varchar(35) NOT NULL,
  `paymentMethod` varchar(30) NOT NULL COMMENT 'Cash, Credit, Card, Cheque, Wallet, Other',
  `pendingAmount` double NOT NULL,
  `recievedAmount` double NOT NULL,
  `paymentDate` date DEFAULT NULL,
  `Notes` longtext,
  `series` int(11) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderpayment`
--

INSERT INTO `orderpayment` (`id`, `orderId`, `paymentMethod`, `pendingAmount`, `recievedAmount`, `paymentDate`, `Notes`, `series`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('', 'e7958d58-42be-421f-9328-26fe2ebe9af', 'Cash', 10000, 100000, '2019-02-01', 'abc', 0, '2019-02-05 12:21:06', '2019-02-05 12:21:06', 1, 1),
('01553233-250c-499c-8f5f-a245e873c47', '24fa2b31-ed7b-4365-9d1c-c7e23c74aea', 'Cash', 215, 100, NULL, 'mn', 0, '2019-02-09 03:33:30', '2019-02-09 03:33:30', 1, 1),
('0e1edac2-33db-4c84-a689-c539a2788ef', 'e7958d58-42be-421f-9328-26fe2ebe9af', 'Credit', 10000, 100000, '2019-02-06', 'string', 0, '2019-02-06 00:55:12', '2019-02-06 00:55:12', 1, 1),
('12fd1bc1-3dfb-45e6-95b0-5b752831405', '9d60635a-0cd4-4625-9843-d9f865cb120', 'Cash', 0, 299, '2019-02-11', NULL, 0, '2019-02-11 08:26:40', '2019-02-11 08:26:40', 1, 1),
('13ca2844-f26b-4ec4-80be-de0866ed579', 'ebd8bafa-dd50-4827-bac8-05fd6d0db6d', 'Credit', 284, 0, '2019-02-11', NULL, 0, '2019-02-11 08:41:09', '2019-02-11 08:41:09', 1, 1),
('269f3f23-379d-4a27-8c4d-93e58c9284e', 'da3b1338-199f-42c9-b66c-82af631caa3', 'Wallet', 0, 0, '2019-02-05', 'sdf', 0, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('2eafd844-72b4-4a9a-a06d-9a043511abd', '0ab8e45e-0ec8-4e36-bb06-119197eeac1', 'Credit', 57200, 100000, '2019-02-06', 'string', 0, '2019-02-06 00:55:12', '2019-02-06 00:55:12', 1, 1),
('30b2204b-f252-40b3-8c3a-35152560742', 'add9e743-6448-4e33-a68f-89289421e6d', 'Wallet', 0, 0, '2019-02-05', 'd', 0, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('3157107d-4737-4214-9f74-c9e96e61517', 'd5754d68-f30f-4a01-8c60-a230e680116', 'Credit', 315, 0, '2019-02-09', NULL, 0, '2019-02-09 05:43:33', '2019-02-09 05:43:33', 1, 1),
('38e6b104-6478-4193-9a62-81098319e78', '24fa2b31-ed7b-4365-9d1c-c7e23c74aea', 'Cash', 15, 200, NULL, 'm', 0, '2019-02-09 03:33:30', '2019-02-09 03:33:30', 1, 1),
('432e3ba6-4e3a-4f76-925a-ae55abc1650', '3188ec17-7f6f-4ed7-aaa9-1c401627fef', 'Cash', 0, 315, '2019-02-09', NULL, 0, '2019-02-09 05:49:09', '2019-02-09 05:49:09', 1, 1),
('4727ed70-26f4-4791-b85c-7bbe6326c56', '163f28ae-5e7d-41e0-b9bb-16245db66a9', 'Cash', 0, 0, '2019-02-05', 'dsf', 0, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('4df1084d-3e66-4bd8-95cc-69a44e3a839', 'bb82d038-1430-4090-b8d7-299c0e53b68', 'Cash', 895, 50, '2019-02-09', '', 0, '2019-02-09 06:50:53', '2019-02-09 06:50:53', 1, 1),
('5d310e09-179e-46c7-a8bc-b98684ceb49', '90362628-9e05-404c-b7b0-aa6aa866f74', 'Cash', 0, 284, '2019-02-11', NULL, 0, '2019-02-11 08:17:16', '2019-02-11 08:17:16', 1, 1),
('65a536b7-8b70-4775-a5f7-ed85a5f82e9', '7def2548-b022-429b-93e8-3cac55888fc', 'Cash', 305, 315, '2019-02-11', NULL, 0, '2019-02-11 08:47:02', '2019-02-11 08:56:54', 1, 1),
('7215e49d-a257-43a7-9586-0848ea0fd52', '840e1e55-6236-4e8e-8b7a-3a7ee8a7c83', 'Credit', 315, 0, '2019-02-09', NULL, 0, '2019-02-09 05:45:29', '2019-02-09 05:45:29', 1, 1),
('775f78fb-efa8-410d-8ff8-ae869c14248', '5e954f3f-f4d2-489b-9c09-ced660fc071', 'Cash', 0, 315, '2019-02-09', NULL, 0, '2019-02-09 05:48:31', '2019-02-09 05:48:31', 1, 1),
('77d936fd-b3d9-4a5a-a403-0376b01d7a8', '515587f8-5728-474b-a27c-d61aae673a5', 'Credit', 630, 0, '2019-02-11', NULL, 0, '2019-02-11 07:24:32', '2019-02-11 07:27:14', 1, 1),
('7967316b-a344-4f6f-967c-062651b1c41', 'bb82d038-1430-4090-b8d7-299c0e53b68', 'Cheque', 695, 100, '2019-02-09', '', 0, '2019-02-09 06:50:53', '2019-02-09 06:50:53', 1, 1),
('88dee7f8-e410-4537-9e24-021be829d21', '3085c84c-283a-4467-ab59-0de24f235ef', 'Cash', 0, 315, '2019-02-09', NULL, 0, '2019-02-09 06:57:48', '2019-02-09 06:57:48', 1, 1),
('91aa9a6f-27e2-4990-8c36-62980125536', '9db20766-5b99-492f-9303-f0789c9b78b', 'Credit', 315, 0, '2019-02-09', NULL, 0, '2019-02-09 05:47:58', '2019-02-09 05:47:58', 1, 1),
('9203bec4-9d4f-43a0-836a-318fd2e68f1', '5dcb00d7-4505-4af9-b3ad-7df2ade0cdc', 'Cheque', 15, 200, '2019-02-09', 'dsfs', 0, '2019-02-09 03:37:13', '2019-02-09 03:37:13', 1, 1),
('923e5ddf-8503-4818-83ea-f95fae81677', '28a34663-b04f-4fc3-9463-7d95dc0cc5e', 'Cash', 0, 299, '2019-02-11', NULL, 0, '2019-02-11 08:08:29', '2019-02-11 08:08:29', 1, 1),
('a3715420-ea83-4485-8ebc-80724d3d019', 'ad4e120c-5dd9-417a-827f-96633df8d60', 'Cheque', 580, 50, '2019-02-09', ',mn', 0, '2019-02-09 06:55:49', '2019-02-11 06:45:57', 1, 1),
('a4995308-8e38-43f4-b9d2-2380adb4d16', '4f2fe493-dd8d-4ac3-b867-3a10699381d', 'Credit', 2750, 20000, '2019-02-06', 'string', 0, '2019-02-06 00:55:12', '2019-02-06 00:55:12', 1, 1),
('aca14f6d-8266-4912-b0c9-7a78b46359f', 'b282a7d9-3a95-4ac2-beb5-d7ae9426889', 'Wallet', 0, 0, '2019-02-05', 'zzzzzzzzzzzzzzzzzzzzzzzzzzzz', 0, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('b05c7c5a-ea58-4252-8c64-3c0c419d1e3', 'e486496e-4173-4aba-b861-35fa52aba62', 'Credit', 315, 0, '2019-02-09', NULL, 0, '2019-02-09 04:56:56', '2019-02-09 04:56:56', 1, 1),
('b0eb0eb5-acab-420e-b4f7-e5690a2d39e', '8a6d7715-2e4c-49f2-ae19-61a37920975', 'Cash', 0, 315, '2019-02-09', NULL, 0, '2019-02-09 07:07:36', '2019-02-09 07:07:36', 1, 1),
('b8786b1f-6f77-4a48-af68-efa666e6fe0', 'bb82d038-1430-4090-b8d7-299c0e53b68', 'Card', 206, 489, '2019-02-09', '', 0, '2019-02-09 06:50:53', '2019-02-09 06:50:53', 1, 1),
('bb2d3f9d-0b22-4723-9f7c-37e127785eb', 'ad4e120c-5dd9-417a-827f-96633df8d60', 'Cheque', 480, 100, '2019-02-09', 'n,mn', 1, '2019-02-09 06:55:49', '2019-02-11 06:45:57', 1, 1),
('c10a72a9-0e3b-4f97-8b6d-5fc7e17623d', 'bb82d038-1430-4090-b8d7-299c0e53b68', 'Card', 795, 100, '2019-02-09', '', 0, '2019-02-09 06:50:53', '2019-02-09 06:50:53', 1, 1),
('c40a5d16-5c9b-4f46-9543-90b182d416b', '13af9ee3-39eb-4307-96a9-344432ee33d', 'Cash', 0, 0, '2019-02-05', 's', 0, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('c752db47-3eed-48d2-aa6e-7816290e5bc', '5dcb00d7-4505-4af9-b3ad-7df2ade0cdc', 'Cash', 215, 100, '2019-02-09', 'ds', 0, '2019-02-09 03:37:13', '2019-02-09 03:37:13', 1, 1),
('cd953dba-9531-4e71-8d5f-18525f7be93', '645b8f57-6950-4601-91ae-eafe8b5615b', 'Cheque', 0, 0, '2019-02-07', 's', 0, '2019-02-07 06:13:22', '2019-02-07 06:13:22', 1, 1),
('d4c8a5d2-e0d9-4d25-b8c2-6317d1f2235', 'ad4e120c-5dd9-417a-827f-96633df8d60', 'Cash', 80, 300, '2019-02-11', '', 3, '2019-02-11 04:06:30', '2019-02-11 06:45:57', 1, 1),
('e2e167a9-50c4-4bff-813c-f6135c8a3cc', '84ec6a22-a10d-406b-abe7-85e3677af46', 'Credit', 315, 0, '2019-02-11', NULL, 0, '2019-02-11 08:37:46', '2019-02-11 08:37:46', 1, 1),
('e71adaf5-416f-4ff1-9f8f-222975e3692', 'ad4e120c-5dd9-417a-827f-96633df8d60', 'Cash', 62, 18, '2019-02-11', '', 3, '2019-02-11 06:31:50', '2019-02-11 06:45:57', 1, 1),
('e7760f67-5c45-4323-811f-2eb97ba8113', '9b74e623-96e1-4a03-a128-138e5b0f55b', 'Credit', 10490, 100000, '2019-02-06', 'string', 0, '2019-02-06 00:55:12', '2019-02-06 00:55:12', 1, 1),
('e9d92df8-5e97-4cc6-96c7-dc44741ef97', 'd4051d97-bce8-46f4-9f1c-824094a67ee', 'Cash', 0, 315, '2019-02-09', NULL, 0, '2019-02-09 04:28:36', '2019-02-09 04:28:36', 1, 1),
('ee7de8f6-9a5f-4365-bf07-5ecb2d8209f', '46d7dfe6-e1f6-411c-a7b8-824577f1230', 'Credit', 630, 0, '2019-02-09', NULL, 0, '2019-02-09 04:53:57', '2019-02-09 04:53:57', 1, 1),
('ffd703b2-cad0-4be2-9f2a-890e843eaff', '9bf7fb12-e608-4b2a-8210-05245cb1a6d', 'Credit', 305, 0, '2019-02-11', NULL, 0, '2019-02-11 06:16:03', '2019-02-11 06:16:03', 1, 1),
('j', '0b8a5a0b-2623-11e9-aa59-588a5a24e72', 'Cash', 500, 500, '2019-02-05', 'sdfsd', 0, '2019-02-04 08:09:05', '2019-02-04 08:09:05', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` varchar(35) NOT NULL,
  `customerId` varchar(35) NOT NULL,
  `itemTotal` double NOT NULL,
  `discount` varchar(15) NOT NULL,
  `charges` double NOT NULL,
  `taxAmount` double NOT NULL,
  `billNo` double NOT NULL,
  `billBookId` varchar(35) NOT NULL,
  `totalAmount` double NOT NULL,
  `gstin` varchar(50) NOT NULL,
  `billDate` date NOT NULL,
  `dueDate` date DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customerId`, `itemTotal`, `discount`, `charges`, `taxAmount`, `billNo`, `billBookId`, `totalAmount`, `gstin`, `billDate`, `dueDate`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('0ab8e45e-0ec8-4e36-bb06-119197eeac1', '736ad816-2459-11e9-a14f-588a5a24e72', 157200, '300', 0, 7500, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 157200, '123', '2019-01-22', NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('0b8a5a0b-2623-11e9-aa59-588a5a24e72', '736ad816-2459-11e9-a14f-588a5a24e72', 0, '0', 0, 0, 1004, 'e2845053-7f0e-43bc-b515-e24d9184c1e', 0, '2', '2019-01-22', NULL, '2019-02-01 01:43:02', '2019-02-01 01:43:02', 1, 1),
('134105b0-67d9-4b0c-8a02-2366394084a', '46556209-ddde-49f4-b8cf-93c0291cbe3', 157500, '0', 1994, 7500, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 159494, '123', '2019-01-22', NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('13af9ee3-39eb-4307-96a9-344432ee33d', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, 15, 1006, 'e2845053-7f0e-43bc-b515-e24d9184c1e', 315, '123', '2019-02-07', NULL, '2019-02-07 06:08:20', '2019-02-07 06:08:20', 1, 1),
('13bbf6d3-2623-11e9-aa59-588a5a24e72', '736ad816-2459-11e9-a14f-588a5a24e72', 0, '0', 0, 0, 1001, 'e2845053-7f0e-43bc-b515-e24d9184c1e', 0, '1', '2019-01-22', NULL, '2019-02-01 01:43:02', '2019-02-01 01:43:02', 1, 1),
('13f4878b-1edb-11e9-8b87-54e1ad6c800', 'dcf157cb-1eda-11e9-8b87-54e1ad6c800', 5000, '0', 0, 12, 1002, 'e2845053-7f0e-43bc-b515-e24d9184c1e', 5012, '11', '2019-01-22', NULL, '2019-01-23 06:49:49', '2019-01-23 06:49:49', 1, 1),
('163f28ae-5e7d-41e0-b9bb-16245db66a9', '46556209-ddde-49f4-b8cf-93c0291cbe3', 315, '0', 0, 15, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-01-22', NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('24fa2b31-ed7b-4365-9d1c-c7e23c74aea', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, 15, 106, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-02-09', NULL, '2019-02-09 03:33:30', '2019-02-09 03:33:30', 1, 1),
('28a34663-b04f-4fc3-9463-7d95dc0cc5e', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '10', 0, 15, 123, '5ea27c4c-7922-4fe0-a38f-208cad71343', 299, '123', '2019-02-11', NULL, '2019-02-11 08:08:28', '2019-02-11 08:08:28', 1, 1),
('2a1b34b2-26c9-11e9-9840-588a5a24e72', '736ad816-2459-11e9-a14f-588a5a24e72', 0, '0', 0, 0, 1003, 'e2845053-7f0e-43bc-b515-e24d9184c1e', 0, '123', '2019-01-22', NULL, '2019-02-01 01:43:02', '2019-02-01 01:43:02', 1, 1),
('2ffe62ed-1e08-4cb7-8a13-442fc5540ea', '46556209-ddde-49f4-b8cf-93c0291cbe3', 315, '0', 0, 15, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-01-22', NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('3085c84c-283a-4467-ab59-0de24f235ef', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315, '0', 0, 15, 119, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-02-09', NULL, '2019-02-09 06:57:48', '2019-02-09 06:57:48', 1, 1),
('3188ec17-7f6f-4ed7-aaa9-1c401627fef', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315, '0', 0, 15, 116, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-02-09', NULL, '2019-02-09 05:49:09', '2019-02-09 05:49:09', 1, 1),
('46d7dfe6-e1f6-411c-a7b8-824577f1230', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 630, '0', 0, 30, 110, '5ea27c4c-7922-4fe0-a38f-208cad71343', 630, '123', '2019-02-09', NULL, '2019-02-09 04:53:57', '2019-02-09 04:53:57', 1, 1),
('4f2fe493-dd8d-4ac3-b867-3a10699381d', '736ad816-2459-11e9-a14f-588a5a24e72', 22550, '0', 198, 2050, 101, 'e2845053-7f0e-43bc-b515-e24d9184c1e', 22750, '123', '2019-01-22', NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('505d65f9-9e5d-4c31-b2dd-7fc8b5caf7a', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 0, '0', 0, 0, 0, '5ea27c4c-7922-4fe0-a38f-208cad71343', 0, 'string', '2019-02-09', '2019-02-09', '2019-02-09 05:03:29', '2019-02-09 05:03:29', 1, 1),
('51214645-e43d-4fcb-b09f-34c18b67ba8', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 630, '0', 0, 30, 104, '5ea27c4c-7922-4fe0-a38f-208cad71343', 630, '123', '2019-02-09', NULL, '2019-02-09 03:29:48', '2019-02-09 03:29:48', 1, 1),
('515587f8-5728-474b-a27c-d61aae673a5', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 630, '0', 0, 30, 122, '5ea27c4c-7922-4fe0-a38f-208cad71343', 630, '123', '2019-02-11', NULL, '2019-02-11 07:24:31', '2019-02-11 07:27:14', 1, 1),
('5dcb00d7-4505-4af9-b3ad-7df2ade0cdc', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, 15, 1007, 'e2845053-7f0e-43bc-b515-e24d9184c1e', 300, '123', '2019-02-09', NULL, '2019-02-09 03:37:12', '2019-02-09 03:37:12', 1, 1),
('5e954f3f-f4d2-489b-9c09-ced660fc071', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315, '0', 0, 15, 115, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-02-09', '2019-02-28', '2019-02-09 05:48:31', '2019-02-09 05:48:31', 1, 1),
('62dee4e9-93dd-4a1e-a6f8-48892d9baa3', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 630, '0', 92, 30, 108, '5ea27c4c-7922-4fe0-a38f-208cad71343', 672, '123', '2019-02-09', NULL, '2019-02-09 04:49:38', '2019-02-09 04:49:38', 1, 1),
('645b8f57-6950-4601-91ae-eafe8b5615b', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, 15, 103, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-02-07', NULL, '2019-02-07 06:13:21', '2019-02-07 06:13:21', 1, 1),
('653cb44c-1edb-11e9-8b87-54e1ad6c800', 'dcf157cb-1eda-11e9-8b87-54e1ad6c800', 10000, '0', 0, 0, 1005, 'e2845053-7f0e-43bc-b515-e24d9184c1e', 10000, '23', '2019-01-22', NULL, '2019-01-23 06:52:05', '2019-01-23 06:52:05', 1, 1),
('70703d6b-205a-41c7-9863-a17f8e976fb', '46556209-ddde-49f4-b8cf-93c0291cbe3', 315, '0', 0, 15, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-01-22', NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('7def2548-b022-429b-93e8-3cac55888fc', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '10', 0, 15, 128, '5ea27c4c-7922-4fe0-a38f-208cad71343', 305, '123', '2019-02-11', NULL, '2019-02-11 08:47:02', '2019-02-11 08:56:53', 1, 1),
('840e1e55-6236-4e8e-8b7a-3a7ee8a7c83', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315, '0', 0, 15, 113, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-02-09', NULL, '2019-02-09 05:45:28', '2019-02-09 05:45:28', 1, 1),
('84ec6a22-a10d-406b-abe7-85e3677af46', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, 15, 125, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-02-11', NULL, '2019-02-11 08:26:18', '2019-02-11 08:37:46', 1, 1),
('8a6d7715-2e4c-49f2-ae19-61a37920975', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315, '0', 0, 15, 120, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-02-09', NULL, '2019-02-09 07:07:36', '2019-02-09 07:07:36', 1, 1),
('90362628-9e05-404c-b7b0-aa6aa866f74', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315, '10%', 0, 15, 124, '5ea27c4c-7922-4fe0-a38f-208cad71343', 284, '123', '2019-02-11', NULL, '2019-02-11 08:17:14', '2019-02-11 08:17:14', 1, 1),
('93e7ead4-2e62-49d4-b7ac-8b98ef22ecc', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 630, '0', 0, 30, 109, '5ea27c4c-7922-4fe0-a38f-208cad71343', 630, '123', '2019-02-09', NULL, '2019-02-09 04:51:50', '2019-02-09 04:51:50', 1, 1),
('996601ba-dce1-4c12-9823-78e027ef37b', '46556209-ddde-49f4-b8cf-93c0291cbe3', 315, '0', 0, 15, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-01-22', NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('9b74e623-96e1-4a03-a128-138e5b0f55b', 'dcf157cb-1eda-11e9-8b87-54e1ad6c800', 109990, '10', 500, 10000, 101, '', 110490, '123', '2019-01-22', NULL, '2019-02-01 01:43:02', '2019-02-01 01:43:02', 1, 1),
('9bf7fb12-e608-4b2a-8210-05245cb1a6d', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, 15, 121, '5ea27c4c-7922-4fe0-a38f-208cad71343', 305, '123', '2019-02-11', '2019-02-12', '2019-02-11 06:16:03', '2019-02-11 06:16:03', 1, 1),
('9d60635a-0cd4-4625-9843-d9f865cb120', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '5%', 0, 15, 126, '5ea27c4c-7922-4fe0-a38f-208cad71343', 299, '123', '2019-02-11', NULL, '2019-02-11 08:26:39', '2019-02-11 08:26:39', 1, 1),
('9db20766-5b99-492f-9303-f0789c9b78b', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315, '0', 0, 15, 114, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-02-09', '2019-02-28', '2019-02-09 05:47:58', '2019-02-09 05:47:58', 1, 1),
('a44ea2cd-8a6c-47fb-8f93-ac915333f6b', '46556209-ddde-49f4-b8cf-93c0291cbe3', 315, '0', 0, 15, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-01-22', NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('ad4e120c-5dd9-417a-827f-96633df8d60', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 630, '0', 0, 30, 118, '5ea27c4c-7922-4fe0-a38f-208cad71343', 630, '123', '2019-02-09', NULL, '2019-02-09 06:55:48', '2019-02-11 06:45:57', 1, 1),
('add9e743-6448-4e33-a68f-89289421e6d', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, 15, 102, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-02-07', NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('b282a7d9-3a95-4ac2-beb5-d7ae9426889', '736ad816-2459-11e9-a14f-588a5a24e72', 6300, '0', 5050, 300, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 11350, '123', '2019-01-22', NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('bb82d038-1430-4090-b8d7-299c0e53b68', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 945, '0', 0, 45, 117, '5ea27c4c-7922-4fe0-a38f-208cad71343', 945, '123', '2019-02-09', NULL, '2019-02-09 06:50:53', '2019-02-09 06:50:53', 1, 1),
('c3645da9-16f6-4326-a81d-a9db53e51c2', '46556209-ddde-49f4-b8cf-93c0291cbe3', 315, '0', 0, 15, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-01-22', NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('cb21bbc7-7118-4d80-888a-a26415bf2ec', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, 15, 102, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-02-07', NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('d38f4cd0-3054-48b3-b7c6-bc1eebaa517', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, 15, 105, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-02-09', NULL, '2019-02-09 03:31:08', '2019-02-09 03:31:08', 1, 1),
('d4051d97-bce8-46f4-9f1c-824094a67ee', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, 15, 107, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-02-09', NULL, '2019-02-09 04:28:36', '2019-02-09 04:28:36', 1, 1),
('d4cb3c61-2162-4be4-9182-40cccf7408c', '46556209-ddde-49f4-b8cf-93c0291cbe3', 2415, '0', 10, 115, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 2425, '123', '2019-01-22', NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('d5754d68-f30f-4a01-8c60-a230e680116', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315, '0', 0, 15, 112, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-02-09', NULL, '2019-02-09 05:43:33', '2019-02-09 05:43:33', 1, 1),
('d80bddfd-bb33-479d-b66a-86c9ec3ee5c', '46556209-ddde-49f4-b8cf-93c0291cbe3', 630, '0', 0, 30, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 630, '123', '2019-01-22', NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('da3b1338-199f-42c9-b66c-82af631caa3', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '0', 0, 15, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-02-07', NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('e486496e-4173-4aba-b861-35fa52aba62', '013d1ef3-6dd9-4f0b-977d-c5b36993ed7', 315, '0', 0, 15, 111, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-02-09', NULL, '2019-02-09 04:56:56', '2019-02-09 04:56:56', 1, 1),
('e7958d58-42be-421f-9328-26fe2ebe9af', 'dcf157cb-1eda-11e9-8b87-54e1ad6c800', 110000, '0', 0, 10000, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 110000, '123', '2019-01-22', NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('e817a718-3ffd-41b5-84e1-29d32d70875', '46556209-ddde-49f4-b8cf-93c0291cbe3', 315, '0', 0, 15, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-01-22', NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1),
('ebd8bafa-dd50-4827-bac8-05fd6d0db6d', 'b2a0fcce-2c40-4fc2-8632-196a43121dd', 315, '10%', 0, 15, 127, '5ea27c4c-7922-4fe0-a38f-208cad71343', 284, '123', '2019-02-11', NULL, '2019-02-11 08:38:29', '2019-02-11 08:41:09', 1, 1),
('ee462121-5624-44f2-b861-3074ec67f70', '46556209-ddde-49f4-b8cf-93c0291cbe3', 315, '0', 0, 15, 101, '5ea27c4c-7922-4fe0-a38f-208cad71343', 315, '123', '2019-01-22', NULL, '2019-01-01 01:43:02', '2019-01-01 01:43:02', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `id` varchar(35) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `type`) VALUES
('0b9d1d0d-2623-11e9-aa59-588a5a24e72', 'credit'),
('13c86e90-2623-11e9-aa59-588a5a24e72', 'credit'),
('202cfe32-26c3-11e9-9840-588a5a24e72', 'strin1123g'),
('25795b0a-2623-11e9-aa59-588a5a24e72', 'cash'),
('2a312655-26c9-11e9-9840-588a5a24e72', 'cash'),
('40144b56-2621-11e9-aa59-588a5a24e72', 'cash'),
('42bfa1e6-2620-11e9-aa59-588a5a24e72', 'credit'),
('4a7a9342-26bc-11e9-9840-588a5a24e72', 'strin21g'),
('502b6579-26ef-11e9-9840-588a5a24e72', 'string'),
('54fcf871-26ef-11e9-9840-588a5a24e72', 'stri3ng'),
('56f41c75-2623-11e9-aa59-588a5a24e72', 'cash'),
('6ca02632-26bc-11e9-9840-588a5a24e72', 'stri32ng'),
('6d8f0bf6-2623-11e9-aa59-588a5a24e72', 'cash'),
('6fa554b3-284d-11e9-a246-588a5a24e72', 'string112'),
('778aea5d-2620-11e9-aa59-588a5a24e72', 'cash'),
('8d320aa7-261f-11e9-aa59-588a5a24e72', 'cash'),
('9b4b491f-261f-11e9-aa59-588a5a24e72', 'cash'),
('9c0d4340-261f-11e9-aa59-588a5a24e72', 'cash'),
('9eacf1e3-2622-11e9-aa59-588a5a24e72', 'cash'),
('a21fa815-2620-11e9-aa59-588a5a24e72', 'cash'),
('aeaac3d2-2622-11e9-aa59-588a5a24e72', 'cash'),
('bab46028-26c3-11e9-9840-588a5a24e72', 'string'),
('bea4477e-2622-11e9-aa59-588a5a24e72', 'cash'),
('c8a93bee-26bb-11e9-9840-588a5a24e72', 'string'),
('f3a0323a-6a15-44ec-9690-9bbcc6f9c40', 'string1222');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `id` varchar(35) NOT NULL,
  `supplierId` varchar(35) NOT NULL,
  `itemTotal` double NOT NULL,
  `discount` double NOT NULL,
  `charges` double NOT NULL,
  `taxAmount` double NOT NULL,
  `billNo` double NOT NULL,
  `slipNo` int(11) NOT NULL,
  `totalAmount` double NOT NULL,
  `gstin` varchar(50) NOT NULL,
  `billDate` datetime NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchaseitem`
--

CREATE TABLE IF NOT EXISTS `purchaseitem` (
  `id` varchar(35) NOT NULL,
  `purchaseId` varchar(35) NOT NULL,
  `itemId` varchar(35) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchasepayment`
--

CREATE TABLE IF NOT EXISTS `purchasepayment` (
  `id` varchar(35) NOT NULL,
  `purchaseId` varchar(35) NOT NULL,
  `paymentId` varchar(35) NOT NULL,
  `pendingAmount` double NOT NULL,
  `recievedAmount` double NOT NULL,
  `paymentDate` datetime NOT NULL,
  `chequeNo` varchar(50) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rolemapping`
--

CREATE TABLE IF NOT EXISTS `rolemapping` (
  `id` int(11) NOT NULL,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` int(11) NOT NULL,
  `roleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stocklog`
--

CREATE TABLE IF NOT EXISTS `stocklog` (
  `id` varchar(35) NOT NULL,
  `itemId` varchar(35) NOT NULL,
  `quantity` double NOT NULL,
  `usedStock` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subtypes`
--

CREATE TABLE IF NOT EXISTS `subtypes` (
  `id` varchar(35) NOT NULL,
  `name` varchar(100) NOT NULL,
  `typeId` varchar(35) NOT NULL,
  `isEnabled` tinyint(1) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subtypes`
--

INSERT INTO `subtypes` (`id`, `name`, `typeId`, `isEnabled`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('588da8eb-245a-11e9-a14f-588a5a24e72', 'tshirt', '35968264-245a-11e9-a14f-588a5a24e72', 1, '2019-01-30 06:43:26', '2019-01-30 06:43:26', 1, 1),
('e43e4561-34a6-4a89-bcf1-3fa7f5cd192', 'jea', '10d048f3-a78d-4024-9b9d-0d75dd1c9b1', 1, '2019-02-05 02:29:15', '2019-02-05 02:29:15', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id` varchar(35) NOT NULL,
  `name` varchar(200) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `gstin` varchar(50) NOT NULL,
  `street` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `stateCode` int(11) NOT NULL,
  `isEnabled` tinyint(1) NOT NULL,
  `totalAmount` double NOT NULL DEFAULT '0',
  `paid` double NOT NULL DEFAULT '0',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE IF NOT EXISTS `taxes` (
  `id` varchar(35) NOT NULL,
  `name` varchar(80) NOT NULL,
  `percentage` int(11) NOT NULL,
  `isEnabled` tinyint(1) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `percentage`, `isEnabled`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('6c70c484-da22-43dd-9a46-da3f68f369f', 'gst10', 10, 1, '2019-02-05 02:29:16', '2019-02-05 02:29:16', 1, 1),
('990f49e1-32f8-4a85-8942-0ba9097af93', 'gst5', 5, 1, '2019-02-05 02:29:16', '2019-02-05 02:29:16', 1, 1),
('b9dbaa4c-3ff9-4967-8ed3-3efd134d6df', 'gst12', 10, 1, '2019-02-11 02:00:26', '2019-02-11 02:00:26', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `id` varchar(35) NOT NULL,
  `name` varchar(50) NOT NULL,
  `isEnabled` tinyint(1) NOT NULL,
  `taxID` varchar(35) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`, `isEnabled`, `taxID`, `createdOn`, `modifiedOn`, `createdById`, `modifiedById`) VALUES
('10d048f3-a78d-4024-9b9d-0d75dd1c9b1', 'jeans', 1, '990f49e1-32f8-4a85-8942-0ba9097af93', '2019-02-05 02:29:16', '2019-02-05 02:29:16', 1, 1),
('35968264-245a-11e9-a14f-588a5a24e72', 'cloth', 1, '6c70c484-da22-43dd-9a46-da3f68f369f', '2019-01-30 06:42:27', '2019-01-30 06:42:27', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE IF NOT EXISTS `unit` (
  `id` varchar(35) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `title`) VALUES
('ba0bc770-7947-4a07-bcb7-de936d4545d', 'mts'),
('d7845da0-2459-11e9-a14f-588a5a24e72', 'pcs');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `realm` varchar(512) DEFAULT NULL,
  `username` varchar(512) DEFAULT NULL,
  `password` varchar(512) NOT NULL,
  `email` varchar(512) NOT NULL,
  `emailVerified` tinyint(1) DEFAULT NULL,
  `verificationToken` varchar(512) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `realm`, `username`, `password`, `email`, `emailVerified`, `verificationToken`) VALUES
(1, NULL, NULL, '$2a$10$EsD1Obyxk9OJ.oOvniGZLu1QpaEx4vp7nvZE8asoB6EOwPQkSSg0G', 'somani@gmail.com', NULL, NULL),
(2, NULL, NULL, '$2a$10$oVqo0.O/kukmw5cnWKjwWeUtZyMeXfmRArRFvZ0ejD12Msu4USRVO', 'bha@gmail.com', NULL, NULL),
(3, NULL, NULL, '$2a$10$6ZGtpFgm3agocREOAdAWs.d3svv2qABxE5FY3Zbckth85dz0/XbbO', 'sunill@gmail.com', NULL, NULL),
(4, NULL, NULL, '$2a$10$5hmuERB65woVMgXwhad9t.ArQ9J3MPF68gsPAHMAKfbxq11JtLndm', 'somanijay@gmail.com', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesstoken`
--
ALTER TABLE `accesstoken`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `acl`
--
ALTER TABLE `acl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billbook`
--
ALTER TABLE `billbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerTypeId` (`customerTypeId`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `customeritemprices`
--
ALTER TABLE `customeritemprices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerTypeId` (`customerTypeId`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`),
  ADD KEY `itemId` (`itemId`);

--
-- Indexes for table `customertype`
--
ALTER TABLE `customertype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `itemphotos`
--
ALTER TABLE `itemphotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`),
  ADD KEY `itemId` (`itemId`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`),
  ADD KEY `unitId` (`unitId`),
  ADD KEY `subTypeId` (`subTypeId`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderId` (`orderId`),
  ADD KEY `itemId` (`itemId`);

--
-- Indexes for table `orderpayment`
--
ALTER TABLE `orderpayment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderId` (`orderId`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerId` (`customerId`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplierId` (`supplierId`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchaseId` (`purchaseId`),
  ADD KEY `itemId` (`itemId`);

--
-- Indexes for table `purchasepayment`
--
ALTER TABLE `purchasepayment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchaseId` (`purchaseId`),
  ADD KEY `paymentId` (`paymentId`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rolemapping`
--
ALTER TABLE `rolemapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `principalId` (`principalId`),
  ADD KEY `roleId` (`roleId`);

--
-- Indexes for table `stocklog`
--
ALTER TABLE `stocklog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemId` (`itemId`);

--
-- Indexes for table `subtypes`
--
ALTER TABLE `subtypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typeId` (`typeId`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `m` (`modifiedById`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdById`),
  ADD KEY `modifiedBy` (`modifiedById`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acl`
--
ALTER TABLE `acl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rolemapping`
--
ALTER TABLE `rolemapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `accesstoken`
--
ALTER TABLE `accesstoken`
  ADD CONSTRAINT `accesstoken_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`customerTypeId`) REFERENCES `customertype` (`id`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`createdById`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`modifiedById`) REFERENCES `user` (`id`);

--
-- Constraints for table `customeritemprices`
--
ALTER TABLE `customeritemprices`
  ADD CONSTRAINT `customeritemprices_ibfk_1` FOREIGN KEY (`customerTypeId`) REFERENCES `customertype` (`id`),
  ADD CONSTRAINT `customeritemprices_ibfk_2` FOREIGN KEY (`createdById`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `customeritemprices_ibfk_3` FOREIGN KEY (`modifiedById`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `customeritemprices_ibfk_4` FOREIGN KEY (`itemId`) REFERENCES `items` (`id`);

--
-- Constraints for table `customertype`
--
ALTER TABLE `customertype`
  ADD CONSTRAINT `customertype_ibfk_1` FOREIGN KEY (`createdById`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `customertype_ibfk_2` FOREIGN KEY (`modifiedById`) REFERENCES `user` (`id`);

--
-- Constraints for table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `document_ibfk_1` FOREIGN KEY (`createdById`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `document_ibfk_2` FOREIGN KEY (`modifiedById`) REFERENCES `user` (`id`);

--
-- Constraints for table `itemphotos`
--
ALTER TABLE `itemphotos`
  ADD CONSTRAINT `itemphotos_ibfk_1` FOREIGN KEY (`createdById`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `itemphotos_ibfk_2` FOREIGN KEY (`modifiedById`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `itemphotos_ibfk_3` FOREIGN KEY (`itemId`) REFERENCES `items` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`createdById`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`modifiedById`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `items_ibfk_3` FOREIGN KEY (`unitId`) REFERENCES `unit` (`id`),
  ADD CONSTRAINT `items_ibfk_4` FOREIGN KEY (`subTypeId`) REFERENCES `subtypes` (`id`);

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`itemId`) REFERENCES `items` (`id`);

--
-- Constraints for table `orderpayment`
--
ALTER TABLE `orderpayment`
  ADD CONSTRAINT `orderpayment_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `orderpayment_ibfk_3` FOREIGN KEY (`createdById`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `orderpayment_ibfk_4` FOREIGN KEY (`modifiedById`) REFERENCES `user` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`createdById`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`modifiedById`) REFERENCES `user` (`id`);

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`supplierId`) REFERENCES `supplier` (`id`),
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`createdById`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `purchase_ibfk_3` FOREIGN KEY (`modifiedById`) REFERENCES `user` (`id`);

--
-- Constraints for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  ADD CONSTRAINT `purchaseitem_ibfk_1` FOREIGN KEY (`purchaseId`) REFERENCES `purchase` (`id`),
  ADD CONSTRAINT `purchaseitem_ibfk_2` FOREIGN KEY (`itemId`) REFERENCES `items` (`id`);

--
-- Constraints for table `purchasepayment`
--
ALTER TABLE `purchasepayment`
  ADD CONSTRAINT `purchasepayment_ibfk_1` FOREIGN KEY (`purchaseId`) REFERENCES `purchase` (`id`),
  ADD CONSTRAINT `purchasepayment_ibfk_2` FOREIGN KEY (`paymentId`) REFERENCES `payment` (`id`),
  ADD CONSTRAINT `purchasepayment_ibfk_3` FOREIGN KEY (`createdById`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `purchasepayment_ibfk_4` FOREIGN KEY (`modifiedById`) REFERENCES `user` (`id`);

--
-- Constraints for table `rolemapping`
--
ALTER TABLE `rolemapping`
  ADD CONSTRAINT `rolemapping_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `rolemapping_ibfk_2` FOREIGN KEY (`principalId`) REFERENCES `user` (`id`);

--
-- Constraints for table `stocklog`
--
ALTER TABLE `stocklog`
  ADD CONSTRAINT `stocklog_ibfk_1` FOREIGN KEY (`itemId`) REFERENCES `items` (`id`);

--
-- Constraints for table `subtypes`
--
ALTER TABLE `subtypes`
  ADD CONSTRAINT `subtypes_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `type` (`id`),
  ADD CONSTRAINT `subtypes_ibfk_2` FOREIGN KEY (`createdById`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `subtypes_ibfk_3` FOREIGN KEY (`modifiedById`) REFERENCES `user` (`id`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`createdById`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `supplier_ibfk_2` FOREIGN KEY (`modifiedById`) REFERENCES `user` (`id`);

--
-- Constraints for table `taxes`
--
ALTER TABLE `taxes`
  ADD CONSTRAINT `taxes_ibfk_1` FOREIGN KEY (`createdById`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `taxes_ibfk_2` FOREIGN KEY (`modifiedById`) REFERENCES `user` (`id`);

--
-- Constraints for table `type`
--
ALTER TABLE `type`
  ADD CONSTRAINT `type_ibfk_1` FOREIGN KEY (`createdById`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `type_ibfk_2` FOREIGN KEY (`modifiedById`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
