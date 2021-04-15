-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2021 at 11:55 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `create_account`
--

CREATE TABLE `create_account` (
  `user_id` int(11) NOT NULL,
  `first_name` text,
  `last_name` text,
  `cnic_no` text,
  `father_name` text,
  `email` text,
  `mobile` text,
  `address` text,
  `account_type` int(11) DEFAULT NULL,
  `password` text,
  `amount` mediumtext,
  `account_no` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `create_account`
--

INSERT INTO `create_account` (`user_id`, `first_name`, `last_name`, `cnic_no`, `father_name`, `email`, `mobile`, `address`, `account_type`, `password`, `amount`, `account_no`) VALUES
(1, 'ali', 'ali', '09876', 'haj', '@gmail.com', '98765', 'hyd', NULL, '12', NULL, NULL),
(2, 'jhk', 'kjj', '89', 'jk', 'jk', '98', 'kh', NULL, '1', NULL, NULL),
(3, 'd', 'dd', '12', 'sad', 'xc', '12', 'd', NULL, '12', NULL, NULL),
(4, 'Ali', 'aslkd', '0987', 'jkd', 'kjff', '0987', 'hyd', 0, '12', '1790', 'CS003'),
(5, 'sdg', 'h', '876', '78', 'b', '098', 'kjb', 0, NULL, '90', 'CS004'),
(6, 'Ahmed', 'muzfar', '09876', 'assjdh', 'sdsj', '9876', 'yd', 0, NULL, '1000', 'CS005'),
(7, 'ad', 'jkh', 'kjh', 'kj', 'kjj', '987', 'hyd', 0, NULL, NULL, 'CS006');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_fname` text,
  `cust_lname` text,
  `cnic` text,
  `father_name` text,
  `email` text,
  `mobile` text,
  `address` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(11) NOT NULL,
  `account_type` text,
  `amount` int(11) DEFAULT NULL,
  `get_date` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `account_type`, `amount`, `get_date`) VALUES
(1, 'CS003', 1790, '22/03/2021 03:25:30');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `account_type` text,
  `amount` int(11) DEFAULT NULL,
  `get_date` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `account_type`, `amount`, `get_date`) VALUES
(1, 'CS003 ', 500, NULL),
(2, 'CS003 ', 300, NULL),
(3, 'CS003 ', 290, NULL),
(4, 'CS004 ', 90, '22/03/2021 03:19:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `create_account`
--
ALTER TABLE `create_account`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `create_account`
--
ALTER TABLE `create_account`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
