-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2019 at 12:56 PM
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
-- Database: `mymain`
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
-- Table structure for table `Companydetails`
--

CREATE TABLE `Companydetails` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` longtext NOT NULL,
  `address` longtext,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pinCode` int(11) DEFAULT NULL,
  `stateCode` int(11) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Companydetails`
--

INSERT INTO `Companydetails` (`id`, `name`, `mobile`, `address`, `state`, `city`, `pinCode`, `stateCode`, `logo`) VALUES
('2b782c58-72c0-4417-8dad-620a76feef99', 'Sunil Kewani', '7600948773', NULL, NULL, NULL, NULL, NULL, NULL),
('754c7c5c-2523-11e9-a707-588a5a24e72', 'Mobile Era', '9909099590', '4, Shree Sai Villa Complex, Old Padra Road', 'Gujarat', 'Vadodara', NULL, 24, 'aab');

-- --------------------------------------------------------

--
-- Table structure for table `Config`
--

CREATE TABLE `Config` (
  `id` varchar(36) NOT NULL,
  `db_name` varchar(50) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `companyId` varchar(36) DEFAULT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Config`
--

INSERT INTO `Config` (`id`, `db_name`, `userId`, `companyId`, `name`) VALUES
('20b940c5-bf10-4563-9712-26082a91e52c', 'db11', 1, '754c7c5c-2523-11e9-a707-588a5a24e72', 'jay'),
('5b0172e4-b1bd-47a9-bf6e-87ab2392520a', 'bat_sunil_kewani', 2, '2b782c58-72c0-4417-8dad-620a76feef99', 'sunil');

-- --------------------------------------------------------

--
-- Table structure for table `PendingAccounts`
--

CREATE TABLE `PendingAccounts` (
  `id` varchar(36) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `expiretime` datetime NOT NULL,
  `createdOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PendingAccounts`
--

INSERT INTO `PendingAccounts` (`id`, `companyname`, `email`, `mobile`, `otp`, `expiretime`, `createdOn`) VALUES
('da65a210-a67d-487f-8162-cb082db55748', 'JAY1', 'somanijay23@gmail.com', '1234567890', '122158', '2019-04-30 14:45:27', '2019-04-30 14:40:27');

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

-- --------------------------------------------------------

--
-- Table structure for table `RoleMapping`
--

CREATE TABLE `RoleMapping` (
  `id` int(11) NOT NULL,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, NULL, NULL, '$2a$10$XtEywk8nX3xX5S/3AcmrgeMF.E567n2jU/1XIRpNwLxSAwrAzWtlK', 'somani@gmail.com', NULL, NULL),
(2, NULL, NULL, '$2a$10$nV9lYFo7hdOjC00vH/cJAOw64PooLJH0qBTEHSVT3x9C6KHpZ49/2', 'sunilkeswani98@gmail.com', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AccessToken`
--
ALTER TABLE `AccessToken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ACL`
--
ALTER TABLE `ACL`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Companydetails`
--
ALTER TABLE `Companydetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Config`
--
ALTER TABLE `Config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PendingAccounts`
--
ALTER TABLE `PendingAccounts`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `principalId` (`principalId`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `RoleMapping`
--
ALTER TABLE `RoleMapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
