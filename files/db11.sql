-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2019 at 04:26 PM
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
('1ppa135c-a1ba-4a86-b072-85fe00998b6', 'manage_sms', 0, 'Sms'),
('3aef735c-a1ba-4a86-b072-85fe34086b6', 'calculate_taxes_purchase', 0, 'Calculate Taxes of Purchase'),
('4aef735c-a1ba-4a86-b072-85fe34026b6', 'calculate_taxes_sales', 0, 'Calculate Taxes of Sales'),
('5aef735c-a1ba-4a86-b072-28fe34026b6', 'manage_transport', 0, 'Transport');

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `id` varchar(36) NOT NULL,
  `name` varchar(150) NOT NULL,
  `customerTypeId` varchar(36) NOT NULL,
  `mobile` varchar(10) NOT NULL,
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
-- Table structure for table `Supplier`
--

CREATE TABLE `Supplier` (
  `id` varchar(36) NOT NULL,
  `name` varchar(200) NOT NULL,
  `mobile` varchar(10) NOT NULL,
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
