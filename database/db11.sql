-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2019 at 08:39 AM
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
  `series` double NOT NULL,
  `isEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billbook`
--


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

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`id`, `alias`, `value`, `description`) VALUES
('5aef735c-a1ba-4a86-b072-28fe34026b6', 'manage_transport', 1, 'transport');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` varchar(35) NOT NULL,
  `name` varchar(150) NOT NULL,
  `customerTypeId` varchar(35) NULL,
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
('0131ef88-91a1-4b63-9a5a-d5a36cd0252', 'Same', 1, '2019-02-05 02:29:14', '2019-02-05 02:29:14', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE IF NOT EXISTS `details` (
  `id` varchar(35) NOT NULL,
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
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `name`, `mobile`, `address`, `state`, `city`, `stateCode`, `gstin`, `bankAccountNo`, `bankAccountName`, `bankName`, `bankIFSC`, `termsAndConditions`, `billUpperText`, `logo`, `createdOn`, `modifiedOn`) VALUES
('997525ef-eb0b-43f6-8578-2eb311e12cc', 'Jay11', 'string', 'string,fds sdfsdf, dsfsdf, dfsdf, dsfsd, dsfdfsdsdfd', 'string', 'string', 0, 'string', '11111', 'string', 'string33', 'string', 'string', 'Tax Invoice', 'aab', '2019-03-08 01:30:34', '2019-03-08 01:30:34');

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
  `usedStock` double DEFAULT '0',
  `unitId` varchar(35) NOT NULL,
  `subTypeId` varchar(35) NOT NULL,
  `price` double NOT NULL,
  `hsnCode` varchar(50) DEFAULT NULL,
  `barCode` varchar(120) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `orderpayment`
--

CREATE TABLE IF NOT EXISTS `orderpayment` (
  `id` varchar(35) NOT NULL,
  `orderId` varchar(35) NOT NULL,
  `paymentMethod` varchar(30) NOT NULL COMMENT 'Cash, Credit, Card, Cheque, Wallet, Other',
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
  `roundoff` varchar(10) NOT NULL DEFAULT '0',
  `taxAmount` double NOT NULL,
  `billNo` double NOT NULL,
  `billBookId` varchar(35) NOT NULL,
  `totalAmount` double NOT NULL,
  `receivedAmount` double NOT NULL,
  `pendingAmount` double NOT NULL,
  `gstin` varchar(50) NOT NULL,
  `billDate` date NOT NULL,
  `dueDate` date DEFAULT NULL,
  `isEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `transportId` varchar(35) DEFAULT NULL,
  `dateOfSupply` date DEFAULT NULL,
  `placeOfSupply` varchar(500) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `id` varchar(35) NOT NULL,
  `supplierId` varchar(35) NOT NULL,
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
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

-- --------------------------------------------------------

--
-- Table structure for table `purchaseitem`
--

CREATE TABLE IF NOT EXISTS `purchaseitem` (
  `id` varchar(35) NOT NULL,
  `purchaseId` varchar(35) NOT NULL,
  `itemId` varchar(35) NOT NULL,
  `quantity` int(11) NOT NULL,
  `itemPrice` double NOT NULL,
  `taxPrice` double NOT NULL,
  `series` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchaseitem`
--

-- --------------------------------------------------------

--
-- Table structure for table `purchasepayment`
--

CREATE TABLE IF NOT EXISTS `purchasepayment` (
  `id` varchar(35) NOT NULL,
  `purchaseId` varchar(35) NOT NULL,
  `paymentMethod` varchar(30) NOT NULL,
  `paidAmount` double NOT NULL,
  `paymentDate` date DEFAULT NULL,
  `Notes` longtext,
  `series` int(11) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasepayment`
--


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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `description`, `created`, `modified`) VALUES
(2, 'admin', NULL, '2019-03-07 06:36:14', '2019-03-07 06:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `rolemapping`
--

CREATE TABLE IF NOT EXISTS `rolemapping` (
  `id` int(11) NOT NULL,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` int(11) NOT NULL,
  `roleId` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rolemapping`
--

INSERT INTO `rolemapping` (`id`, `principalType`, `principalId`, `roleId`) VALUES
(1, 'USER', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `stocklog`
--

CREATE TABLE IF NOT EXISTS `stocklog` (
  `id` varchar(35) NOT NULL,
  `itemId` varchar(35) NOT NULL,
  `purchaseId` varchar(35) DEFAULT NULL,
  `quantity` double NOT NULL,
  `isEnabled` tinyint(4) NOT NULL DEFAULT '1',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocklog`
--

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


-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id` varchar(35) NOT NULL,
  `name` varchar(200) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `gstin` varchar(50) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  `stateCode` int(11) DEFAULT NULL,
  `isEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `totalAmount` double NOT NULL DEFAULT '0',
  `paid` double NOT NULL DEFAULT '0',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--


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
('32967314-b019-47a8-813d-4f5fb3bc67c', 'gst18', 18, 1, '2019-02-28 01:27:56', '2019-02-28 01:27:56', 1, 1),
('4a1314e0-7024-49f2-ba19-74d75b8b647', 'gst0', 0, 1, '2019-02-28 01:27:56', '2019-02-28 01:27:56', 1, 1),
('643e8ae8-0bc2-42d4-84e2-d47a2281b3a', 'gst3', 3, 1, '2019-02-28 01:27:56', '2019-02-28 01:27:56', 1, 1),
('6c70c484-da22-43dd-9a46-da3f68f369f', 'gst10', 10, 1, '2019-02-05 02:29:16', '2019-02-05 02:29:16', 1, 1),
('990f49e1-32f8-4a85-8942-0ba9097af93', 'gst5', 5, 1, '2019-02-05 02:29:16', '2019-02-05 02:29:16', 1, 1),
('b9dbaa4c-3ff9-4967-8ed3-3efd134d6df', 'gst12', 12, 1, '2019-02-11 02:00:26', '2019-02-11 02:00:26', 1, 1),
('e955313f-d239-47f2-9528-c9ce4abdd41', 'gst28', 28, 1, '2019-02-28 01:27:56', '2019-02-28 01:27:56', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE IF NOT EXISTS `transport` (
  `id` varchar(35) NOT NULL,
  `name` varchar(150) NOT NULL,
  `vehicleNo` varchar(20) NOT NULL,
  `isEnabled` tinyint(4) NOT NULL,
  `createdOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdById` int(11) NOT NULL,
  `modifiedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport`
--


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
(1, NULL, NULL, '$2a$10$EsD1Obyxk9OJ.oOvniGZLu1QpaEx4vp7nvZE8asoB6EOwPQkSSg0G', 'somani@gmail.com', NULL, NULL);
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
  ADD KEY `paymentId` (`paymentMethod`),
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
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rolemapping`
--
ALTER TABLE `rolemapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
